uint64_t removeDataItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 88), a2);
  if (!Value)
  {
    removeDataItem_cold_1(&v22);
    return v22;
  }

  v5 = Value;
  CFRetain(Value);
  v6 = CFDictionaryGetValue(v5, @"DataItemDescriptorCategory");
  v7 = CFDictionaryGetValue(*(DerivedStorage + 96), v6);
  CFDictionaryRemoveValue(v7, a2);
  CFDictionaryRemoveValue(*(DerivedStorage + 88), a2);
  v8 = *(DerivedStorage + 48);
  FigXMLNodeGetTag(v8);
  v9 = FigCFEqual();
  if (v8 && v9 && (v10 = FigXMLNodeGetChild(v8, @"DataItems")) != 0)
  {
    v11 = v10;
    if (FigXMLNodeGetCountOfChildren(v10) >= 1)
    {
      v12 = 0;
      do
      {
        ChildAtIndex = FigXMLNodeGetChildAtIndex(v11, v12);
        FigXMLNodeGetTag(ChildAtIndex);
        if (FigCFEqual())
        {
          Child = FigXMLNodeGetChild(ChildAtIndex, @"ID");
          if (Child)
          {
            if (FigXMLNodeGetContentAsCFString(Child) && FigCFEqual())
            {
              break;
            }
          }
        }

        ++v12;
      }

      while (v12 < FigXMLNodeGetCountOfChildren(v11));
      v21 = ChildAtIndex;
      if (ChildAtIndex)
      {
        FigXMLNodeRemoveAndClearChild(v11, &v21);
      }
    }
  }

  else
  {
    v15 = FigSignalErrorAtGM();
    if (v15)
    {
      goto LABEL_22;
    }
  }

  v15 = writeBoot();
  if (!v15)
  {
    v16 = CFDictionaryGetValue(v5, @"DataItemURL");
    v17 = CFDictionaryGetValue(v5, @"DataItemDescriptorURL");
    v18 = v17;
    if (v16)
    {
      v15 = FigFileDeleteRecursive();
      if (v15 == -17913)
      {
        goto LABEL_26;
      }

      v19 = v15;
      if (v15 || !v18)
      {
        goto LABEL_24;
      }
    }

    else if (!v17)
    {
      v19 = 0;
      goto LABEL_24;
    }

    v15 = FigFileDeleteRecursive();
    if (v15 != -17913)
    {
      goto LABEL_22;
    }

LABEL_26:
    FigBytePumpGetFigBaseObject(v15);
    v19 = 4294949383;
    goto LABEL_24;
  }

LABEL_22:
  v19 = v15;
LABEL_24:
  CFRelease(v5);
  return v19;
}

void retrieveDataIDsForKey(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, *(a3 + 8));
  if (Value)
  {
    v6 = Value;
    v7 = *a3;

    CFDictionarySetValue(v7, v6, a1);
  }
}

CFIndex reportIfError(__CFError *a1)
{
  if (!a1)
  {
    return 0;
  }

  Code = CFErrorGetCode(a1);
  v3 = CFErrorCopyFailureReason(a1);
  if (v3)
  {
    CFRelease(v3);
  }

  return Code;
}

const void *xmlFindStreamNode(uint64_t a1)
{
  StreamList = xmlGetStreamList(a1);
  if (!StreamList)
  {
    return 0;
  }

  v2 = StreamList;
  if (FigXMLNodeGetCountOfChildren(StreamList) < 1)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    ChildAtIndex = FigXMLNodeGetChildAtIndex(v2, v3);
    FigXMLNodeGetAttribute();
    if (FigCFEqual())
    {
      break;
    }

    ++v3;
  }

  while (v3 < FigXMLNodeGetCountOfChildren(v2));
  return ChildAtIndex;
}

CFStringRef *xmlGetStreamList(uint64_t a1)
{
  FigXMLNodeGetTag(a1);
  v2 = FigCFEqual();
  if (!a1 || !v2)
  {
    return 0;
  }

  return FigXMLNodeGetChild(a1, @"Streams");
}

uint64_t xmlRemoveStream(uint64_t a1)
{
  StreamList = xmlGetStreamList(a1);
  if (StreamList)
  {
    v3 = StreamList;
    StreamNode = xmlFindStreamNode(a1);
    if (StreamNode)
    {
      FigXMLNodeRemoveAndClearChild(v3, &StreamNode);
      return 0;
    }

    else
    {
      xmlRemoveStream_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    xmlRemoveStream_cold_2(&StreamNode);
    return StreamNode;
  }
}

uint64_t addStreamToStreamList(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, const void *a7)
{
  v12 = a2;
  v13 = a1;
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (Value && (v15 = CFRetain(Value)) != 0)
  {
    v16 = v15;
    AllocatorForMedia = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, v16);
    v19 = 0;
  }

  else
  {
    v20 = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16 = 0;
    v19 = 1;
  }

  if (!MutableCopy)
  {
    addStreamToStreamList_cold_1(&v35);
    v31 = v35;
    if (v19)
    {
      return v31;
    }

    goto LABEL_22;
  }

  v21 = FigCFDictionaryGetValue();
  if (v21)
  {
    v33 = v13;
    v34 = 0;
    v22 = v12;
    v23 = a4;
    v24 = a5;
    v25 = a7;
    v26 = a6;
    v27 = v19;
    FigBaseObject = FigHLSPersistentStreamInfoGetFigBaseObject(v21);
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29 && v29(FigBaseObject, &stru_1F0B1AFB8, 0, &v34) == -12785)
    {
      CFDictionaryRemoveValue(MutableCopy, @"StreamInformationRef");
    }

    v19 = v27;
    a6 = v26;
    a7 = v25;
    a5 = v24;
    a4 = v23;
    v12 = v22;
    v13 = v33;
  }

  if (a3)
  {
    CFDictionarySetValue(MutableCopy, @"StreamInformationURL", a3);
  }

  v30 = MEMORY[0x1E695E4D0];
  if (a6 != 1)
  {
    v30 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(MutableCopy, @"StreamInformationComplete", *v30);
  if (a4)
  {
    CFDictionarySetValue(MutableCopy, @"StreamInformationNetworkURL", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(MutableCopy, @"StreamInformationUniqueTag", a5);
  }

  if (a7)
  {
    CFDictionarySetValue(MutableCopy, @"StreamInformationRef", a7);
  }

  CFDictionarySetValue(*(v13 + 56), v12, MutableCopy);
  CFRelease(MutableCopy);
  v31 = 0;
  if ((v19 & 1) == 0)
  {
LABEL_22:
    CFRelease(v16);
  }

  return v31;
}

uint64_t primeInterstitialAssetFolder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 200))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    *(DerivedStorage + 200) = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 8), @"InterstitialAssets", 1u);
  }

  if (FigCFURLDoesDirectoryExist())
  {
    return 0;
  }

  return makeDirectoryAtURL();
}

uint64_t OUTLINED_FUNCTION_13_46()
{
  v2 = *(v0 + 48);

  return FigXMLNodeGetTag(v2);
}

uint64_t FigPlayerInterstitialPreloadeCreateFromDictionary(const __CFDictionary *a1, uint64_t *a2)
{
  value = 0;
  if (!a1)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_9();
    return 0;
  }

  if (!a2)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_8();
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigPlayerInterstitialPreloadGetTypeID_sFigPlayerInterstitialPreloadRegisterOnce, figPlayerInterstitialPreload_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_7(&at);
    return LODWORD(at);
  }

  v6 = Instance;
  if (!CFDictionaryGetValueIfPresent(a1, @"identifier", (Instance + 16)))
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_6();
    return 0;
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    CFRetain(v7);
  }

  at = 0.0;
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_5();
    return 0;
  }

  *(v6 + 24) = CFDateCreate(v4, at);
  CFDictionaryGetValueIfPresent(a1, @"URL", &value);
  if (!value)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_4(&v12);
    return v12;
  }

  *(v6 + 40) = CFURLCreateWithString(v4, value, 0);
  if (!CFDictionaryGetValueIfPresent(a1, @"TargetID", (v6 + 48)))
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_3();
    return 0;
  }

  v8 = *(v6 + 48);
  if (v8)
  {
    CFRetain(v8);
  }

  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_2();
    return 0;
  }

  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_1();
    return 0;
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *(v6 + 72) = CFDateCreate(v4, at);
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *(v6 + 80) = CFDateCreate(v4, at);
  }

  result = 0;
  *a2 = v6;
  return result;
}

__CFDictionary *FigPlayerInterstitialPreloadCopyAsDictionary(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"identifier", *(a1 + 16));
    if (*(a1 + 24))
    {
      MEMORY[0x19A8CCD90]();
      FigCFDictionarySetDouble();
    }

    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = CFURLCopyAbsoluteURL(v4);
      if (v5)
      {
        v6 = v5;
        v7 = CFURLGetString(v5);
        CFDictionarySetValue(v3, @"URL", v7);
        CFRelease(v6);
      }
    }

    CFDictionarySetValue(v3, @"TargetID", *(a1 + 48));
    if (*(a1 + 72))
    {
      MEMORY[0x19A8CCD90]();
      FigCFDictionarySetDouble();
    }

    if (*(a1 + 80))
    {
      MEMORY[0x19A8CCD90]();
      FigCFDictionarySetDouble();
    }
  }

  return v3;
}

CFTypeRef FigPlayerInterstitialPreloadCopyIdentifier(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef FigPlayerInterstitialPreloadCopyTargetID(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef FigPlayerInterstitialPreloadCopyStartDate(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

double FigPlayerInterstitialPreloadGetTriggerOffset(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 64);
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef FigPlayerInterstitialPreloadCopyURL(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef FigPlayerInterstitialPreloadCopyEffectiveStartDate(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 72);
  if (v2 || (v2 = *(a1 + 24)) != 0)
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

void FigPlayerInterstitialPreloadSetEffectiveStartDate(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x19A8CCD90](a2);
    v5 = MEMORY[0x19A8CCD90](*(a1 + 24));
    if (v4 < v5 || v4 >= v5 + *(a1 + 32))
    {
      return;
    }
  }

  else
  {
    MEMORY[0x19A8CCD90](*(a1 + 24));
  }

  FigSimpleMutexLock();
  v7 = *(a1 + 72);
  *(a1 + 72) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  figPlayerInterstitialPreload_recalculateTriggerOffset(a1, 0);

  FigSimpleMutexUnlock();
}

void figPlayerInterstitialPreload_recalculateTriggerOffset(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v4 = *(a1 + 24);
  }

  v5 = MEMORY[0x19A8CCD90](v4);
  v6 = figPlayerInterstitialPreload_effectiveEndAbsTime(a1);
  if (a2)
  {
    v7 = v6 - v5;
  }

  else
  {
    v7 = v6 - v5;
    if (*(a1 + 64) <= v7)
    {
      return;
    }
  }

  bytes = 0;
  SecRandomCopyBytes(*MEMORY[0x1E697B308], 2uLL, &bytes);
  LOWORD(v8) = bytes;
  *(a1 + 64) = v7 * v8 / 65535.0;
}

CFDateRef FigPlayerInterstitialPreloadCopyEffectiveEndDate(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *MEMORY[0x1E695E480];
  v3 = figPlayerInterstitialPreload_effectiveEndAbsTime(a1);
  v4 = CFDateCreate(v2, v3);
  FigSimpleMutexUnlock();
  return v4;
}

double figPlayerInterstitialPreload_effectiveEndAbsTime(uint64_t a1)
{
  if (*(a1 + 80))
  {

    JUMPOUT(0x19A8CCD90);
  }

  return MEMORY[0x19A8CCD90](*(a1 + 24)) + *(a1 + 32);
}

uint64_t FigPlayerInterstitialPreloadSetEffectiveEndDate(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x19A8CCD90](a2);
  }

  else
  {
    v4 = 0.0;
  }

  result = MEMORY[0x19A8CCD90](*(a1 + 24));
  if (!a2 || v4 > v6)
  {
    if (v4 >= v6 + *(a1 + 32))
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    FigSimpleMutexLock();
    v8 = *(a1 + 80);
    *(a1 + 80) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    figPlayerInterstitialPreload_recalculateTriggerOffset(a1, 0);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata(const __CFArray *a1, CFMutableArrayRef *a2)
{
  v2 = a1;
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    Mutable = 0;
    v6 = 0;
    v7 = @"TaggedRangeMetadataKey_Class";
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
      CFDictionaryGetValue(ValueAtIndex, v7);
      fpip_GetFirstMetadataValueForKey(ValueAtIndex);
      if (FigCFEqual() && FigCFEqual())
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_ID");
        if (!Value || (v10 = Value, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v10)))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_8(&v37);
          goto LABEL_39;
        }

        FirstMetadataValueForKey = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
        if (!FirstMetadataValueForKey || (v13 = FirstMetadataValueForKey, v14 = CFStringGetTypeID(), v14 != CFGetTypeID(v13)))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_7(&v37);
LABEL_39:
          v32 = v37;
LABEL_44:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return v32;
        }

        theArray = Mutable;
        v15 = v4;
        v16 = v2;
        v17 = v7;
        v18 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
        if (!v18 || (v19 = v18, v20 = CFStringGetTypeID(), v20 != CFGetTypeID(v19)))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_6(&v37);
          goto LABEL_43;
        }

        v21 = CFURLCreateWithString(allocator, v19, 0);
        if (!v21)
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_5(&v37);
          goto LABEL_43;
        }

        v22 = v21;
        v23 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_StartDate");
        if (!v23 || (v24 = v23, v25 = CFDateGetTypeID(), v25 != CFGetTypeID(v24)))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_4(&v37);
          goto LABEL_43;
        }

        if (FigCFDictionaryGetDoubleIfPresent())
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_1(&v37);
LABEL_43:
          v32 = v37;
          Mutable = theArray;
          goto LABEL_44;
        }

        v26 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_EndDate");
        if (!v26 || (v27 = v26, v28 = CFDateGetTypeID(), v28 != CFGetTypeID(v27)) || (v29 = MEMORY[0x19A8CCD90](v27), v30 = v29 - MEMORY[0x19A8CCD90](v24), v30 <= 0.0))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_3(&v37);
          goto LABEL_43;
        }

        MEMORY[0x19A8D3660](&FigPlayerInterstitialPreloadGetTypeID_sFigPlayerInterstitialPreloadRegisterOnce, figPlayerInterstitialPreload_initOnce);
        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          *(Instance + 56) = FigSimpleMutexCreate();
          *(Instance + 16) = CFRetain(v10);
          *(Instance + 24) = CFRetain(v24);
          *(Instance + 32) = v30;
          *(Instance + 40) = CFRetain(v22);
          *(Instance + 48) = CFRetain(v13);
          figPlayerInterstitialPreload_recalculateTriggerOffset(Instance, 1);
          CFRelease(v22);
        }

        else if (!FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_2(v22, &v37))
        {
          goto LABEL_43;
        }

        v7 = v17;
        Mutable = theArray;
        if (!theArray)
        {
          Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (!Mutable)
          {
            if (Instance)
            {
              CFRelease(Instance);
            }

            return FigSignalErrorAtGM();
          }
        }

        CFArrayAppendValue(Mutable, Instance);
        if (Instance)
        {
          CFRelease(Instance);
        }

        v2 = v16;
        v4 = v15;
      }

      if (v4 == ++v6)
      {
        goto LABEL_31;
      }
    }
  }

  Mutable = 0;
LABEL_31:
  v32 = 0;
  *a2 = Mutable;
  return v32;
}

const __CFArray *fpip_GetFirstMetadataValueForKey(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"TaggedRangeMetadataKey_MetadataArray");
  if (result)
  {
    v2 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v4 = Count;
      v5 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v5 - 1);
        CFDictionaryGetValue(ValueAtIndex, @"key");
        if (FigCFEqual())
        {
          result = CFDictionaryGetValue(ValueAtIndex, @"value");
        }

        else
        {
          result = 0;
        }

        if (v5 >= v4)
        {
          break;
        }

        ++v5;
      }

      while (!result);
    }
  }

  return result;
}

uint64_t figPlayerInterstitialPreload_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerInterstitialPreloadTypeID = result;
  return result;
}

double figPlayerInterstitialPreload_init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figPlayerInterstitialPreload_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  return FigSimpleMutexDestroy();
}

BOOL figPlayerInterstitialPreload_equal(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = FigCFEqual();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v7 != 0;
}

void figNSURLSessionAssertionFinalize(void *a1)
{
  [sFigNSURLSessionRegistry releaseSession:a1];
}

void sub_196798F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _FigHTTPRequestSessionNoteNativeConnectionForNSURLSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___FigHTTPRequestSessionNoteNativeConnectionForNSURLSession_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a2;
  v5[5] = DerivedStorage;
  dispatch_sync(v4, v5);
}

uint64_t _FigHTTPRequestSessionCreateForNSURLSession()
{
  if (figNSURLSessionRegistryEnsureGlobalInit_sFigNSURLSessionInit != -1)
  {
    _FigHTTPRequestSessionCreateForNSURLSession_cold_1();
  }

  if (sFigNSURLSessionRegistry)
  {
    if (FigHTTPRequestSessionNSGetClassID_sRegisterFigHTTPRequestSessionNSTypeOnce != -1)
    {
      _FigHTTPRequestSessionCreateForNSURLSession_cold_2();
    }

    v0 = CMDerivedObjectCreate();
    _FigHTTPRequestSessionCreateForNSURLSession_cold_7(v0, &v2);
  }

  else
  {
    _FigHTTPRequestSessionCreateForNSURLSession_cold_8(&v2);
  }

  return v2;
}

FigNSURLSessionRegistry *__figNSURLSessionRegistryEnsureGlobalInit_block_invoke()
{
  result = objc_alloc_init(FigNSURLSessionRegistry);
  sFigNSURLSessionRegistry = result;
  return result;
}

void figHTTPRequestSessionNSFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  FigTestSupportUnregisterNSHTTPRequestSession(a1);
  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 32);

  dispatch_release(v6);
}

uint64_t figHTTPRequestSessionNSCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"FHRSP_MultiPathServiceType"))
  {
    return 4294954512;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  *a4 = v7;
  if (*(DerivedStorage + 24))
  {
    return 0;
  }

  else
  {
    return 4294954513;
  }
}

uint64_t figHTTPRequestSessionNSSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __figHTTPRequestSessionNSSetProperty_block_invoke;
  v9[3] = &unk_1E748B8C8;
  v9[6] = DerivedStorage;
  v9[7] = a3;
  v9[4] = &v10;
  v9[5] = a2;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_196799A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __figHTTPRequestSessionNSSetProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), @"FHRSP_EnablePingReporting"))
  {
    *(*(a1 + 48) + 48) = FigCFEqual();
  }

  else if (CFEqual(*(a1 + 40), @"FHRSP_CMCDHeaderVendor"))
  {
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12784;
  }
}

uint64_t figHTTPRequestSessionNSCreateHTTPRequest(uint64_t a1, const __CFAllocator *a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFDictionary *a6, const void *a7, int a8, _OWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    v25 = a8 | 0x2000;
  }

  else
  {
    v25 = a8;
  }

  v26 = *(DerivedStorage + 56);
  if (!v26)
  {
    MutableCopy = 0;
LABEL_19:
    v33 = FigTestSupportHTTPRequestUseFakeFromDisk(a7);
    v34 = *(v24 + 8);
    if (v33)
    {
      LODWORD(v37) = v25;
      FakeFromDisk = FigTestSupportHTTPRequestCreateFakeFromDisk(a2, a3, a1, a4, a5, a6, [v34 dispatchQueue], a7, v37, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      LODWORD(v38) = v25;
      FakeFromDisk = _FigHTTPRequestCreateWithNSURLSession(a2, a3, a4, a5, a6, a1, [v34 session], *v24, objc_msgSend(*(v24 + 8), "dataDelegate"), objc_msgSend(*(v24 + 8), "dispatchQueue"), a7, v38, a10, a11, a12, a13, a14, a15);
    }

    v32 = FakeFromDisk;
    goto LABEL_23;
  }

  v27 = a9[5];
  v40[4] = a9[4];
  v40[5] = v27;
  v40[6] = a9[6];
  v28 = a9[1];
  v40[0] = *a9;
  v40[1] = v28;
  v29 = a9[3];
  v40[2] = a9[2];
  v40[3] = v29;
  v41 = 0;
  v30 = FigCMCDHeaderVendorCopyHeaders(v26, v40, &v41);
  if (v30)
  {
    v32 = v30;
    MutableCopy = 0;
    goto LABEL_16;
  }

  if (!FigCFDictionaryGetCount())
  {
    if (a6)
    {
      MutableCopy = CFRetain(a6);
    }

    else
    {
      MutableCopy = 0;
    }

    goto LABEL_15;
  }

  if (!FigCFDictionaryGetCount())
  {
    MutableCopy = v41;
    a6 = v41;
    goto LABEL_19;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(a2, 0, a6);
  if (MutableCopy)
  {
    FigCFDictionarySetAllValuesFromDictionary();
LABEL_15:
    v32 = 0;
    goto LABEL_16;
  }

  figHTTPRequestSessionNSCreateHTTPRequest_cold_1(v40);
  v32 = LODWORD(v40[0]);
LABEL_16:
  if (v41)
  {
    CFRelease(v41);
  }

  a6 = MutableCopy;
  if (!v32)
  {
    goto LABEL_19;
  }

LABEL_23:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v32;
}

uint64_t figHTTPRequestSessionNSSendPingWithPongHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v14 = *(DerivedStorage + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __figHTTPRequestSessionNSSendPingWithPongHandler_block_invoke;
  v21[3] = &unk_1E7482510;
  v21[4] = &v22;
  v21[5] = DerivedStorage;
  dispatch_sync(v14, v21);
  if (v23[3])
  {
    v15 = FigTestSupportHTTPRequestUseFakeFromDisk(a3);
    v16 = v23[3];
    if (!v15)
    {
      if (v16 && [v23[3] isValid])
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __figHTTPRequestSessionNativeConnectionSendPingForNSURLSession_block_invoke;
        v26[3] = &unk_1E7494920;
        v26[4] = a5;
        v26[5] = a7;
        v26[6] = a4;
        v26[7] = a6;
        [v16 sendPingWithReceiveHandler:v26];
        v18 = 0;
      }

      else
      {
        v18 = 4294954511;
      }

      goto LABEL_9;
    }

    v17 = FigTestSupportHTTPRequestSessionNativeConnectionSendPingFakeFromDisk(v23[3], a2, a3, a4, a5, a6, a7);
  }

  else
  {
    fig_log_get_emitter();
    v17 = FigSignalErrorAtGM();
  }

  v18 = v17;
LABEL_9:
  v19 = v23[3];
  if (v19)
  {
    CFRelease(v19);
  }

  _Block_object_dispose(&v22, 8);
  return v18;
}

void sub_196799EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__figHTTPRequestSessionNSSendPingWithPongHandler_block_invoke(void *result)
{
  v1 = result[5];
  if (*(v1 + 48))
  {
    v2 = result;
    result = *(v1 + 40);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(v2[4] + 8) + 24) = result;
  }

  return result;
}

void __figHTTPRequestSessionNativeConnectionSendPingForNSURLSession_block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __figHTTPRequestSessionNativeConnectionSendPingForNSURLSession_block_invoke_2;
  block[3] = &unk_1E74948F8;
  block[4] = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = a3;
  dispatch_async(v3, block);
}

uint64_t __figHTTPRequestSessionNativeConnectionSendPingForNSURLSession_block_invoke_2(void *a1, __n128 a2)
{
  v3 = a1[4];
  if (v3)
  {
    v4 = [v3 code];
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  a2.n128_u64[0] = a1[8];

  return v6(v5, v7, v4, a2);
}

uint64_t __FigHTTPRequestSessionNSGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoQueueServerStart()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (FigServer_IsMediaparserd())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (FigServer_IsMediaplaybackd())
    {
      v1 = "com.apple.coremedia.mediaplaybackd.videoqueue";
    }

    else
    {
      v1 = "com.apple.coremedia.videoqueue";
    }

    if (FigServer_IsMediaparserd())
    {

      return MEMORY[0x1EEDBDA58](v1, 600, figvideoqueue_server, FigVideoQueueRemoteServer_Destroy, &_MergedGlobals_122);
    }

    else
    {
      FigServer_IsMediaplaybackd();
      if (FigServer_IsMediaparserd())
      {
        v2 = 0;
      }

      else
      {
        v2 = FigServer_IsMediaplaybackd() != 0;
      }

      return MEMORY[0x1EEDBDA60](v1, 600, v2, &FigVideoQueueServerStart_subsystems, 1, FigVideoQueueRemoteServer_Destroy, 0, &_MergedGlobals_122);
    }
  }
}

uint64_t FigVideoQueueRemoteServer_GetNextPendingNotification(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, vm_address_t *a5, unsigned int *a6)
{
  v16 = 0;
  v17 = 0;
  v9 = videoQueueServerCopyClientFromCommandPort(a1, &v16);
  if (!v17)
  {
    return v9;
  }

  theString = 0;
  cf = 0;
  theData = 0;
  PendingNotification = FigRPCFetchNextPendingNotification();
  if (PendingNotification)
  {
    v12 = PendingNotification;
  }

  else
  {
    MEMORY[0x19A8D2A70](cf, *MEMORY[0x1E695E480], &theData);
    CFStringGetCString(theString, a4, 512, 0);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (theString)
    {
      CFRelease(theString);
      theString = 0;
    }

    if (theData && CFDataGetLength(theData))
    {
      Length = CFDataGetLength(theData);
      *a6 = Length;
      v12 = vm_allocate(*MEMORY[0x1E69E9A60], a5, Length, 1560281089);
      if (!v12)
      {
        v13 = *a5;
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v13, BytePtr, *a6);
      }
    }

    else
    {
      v12 = 0;
      *a5 = 0;
      *a6 = 0;
    }
  }

  if (theData)
  {
    CFRelease(theData);
  }

  CFRelease(v17);
  return v12;
}

CFTypeRef videoQueueServer_copySubVideoQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v1 = CFRetain(*DerivedStorage);
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

void __videoQueueServer_makeWrapperForVideoQueueInternal_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  context = dispatch_get_context(v1);
  dispatch_set_context(v1, 0);
  if (context)
  {

    CFRelease(context);
  }
}

void __videoQueueServer_makeWrapperForVideoQueueInternal_block_invoke_2(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  if (dispatch_get_context(*(a1 + 32)))
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v2 = v1;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = videoQueueServer_copySubVideoQueue();
      if (v4)
      {
        v5 = v4;
        cf[0] = 0;
        CMBaseObject = FigVideoQueueGetCMBaseObject(v4);
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7)
        {
          v8 = v7(CMBaseObject, @"IsImageQueueBeingServiced", *MEMORY[0x1E695E480], cf);
          v9 = cf[0];
          if (v8)
          {
            v10 = 0;
          }

          else
          {
            v10 = *MEMORY[0x1E695E4C0] == cf[0];
          }

          if (v10)
          {
            if (dword_1EAF17830)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            videoQueueServer_invalidateSubVideoQueue(v2, v5);
            dispatch_source_set_timer(*(DerivedStorage + 96), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
            FigSimpleMutexLock();
            if (*DerivedStorage)
            {
              CFRelease(*DerivedStorage);
              *DerivedStorage = 0;
            }

            FigSimpleMutexUnlock();
            v9 = cf[0];
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }

        CFRelease(v5);
      }

      else if (DerivedStorage)
      {
        dispatch_source_set_timer(*(DerivedStorage + 96), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
      }

      CFRelease(v2);
    }
  }
}

void videoQueueServer_invalidateSubVideoQueue(uint64_t a1, uint64_t a2)
{
  values[16] = *MEMORY[0x1E69E9840];
  valuePtr = -12084;
  if (dword_1EAF17830)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v5 = CFDictionaryCreate(v4, kFigVideoQueueNotificationParameter_OSStatus, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CMBaseObject = FigVideoQueueGetCMBaseObject(a2);
  if (CMBaseObject)
  {
    v7 = CMBaseObject;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v8)
    {
      v8(v7);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (values[0])
  {
    CFRelease(values[0]);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t videoQueueServer_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17830)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v4 = *(DerivedStorage + 96);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(DerivedStorage + 96);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 96) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  FigSimpleMutexDestroy();
  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    os_release(v6);
    *(DerivedStorage + 32) = 0;
  }

  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v7 = *(DerivedStorage + 24);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 24) = 0;
    }
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 40) = 0;
  }

  v9 = *(DerivedStorage + 48);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 48) = 0;
  }

  FigServer_RememberProcessInfoForAFewSeconds();
  v10 = *(DerivedStorage + 88);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 88) = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *videoQueueServer_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = videoQueueServer_copySubVideoQueue();
  CFStringAppendFormat(Mutable, 0, @"videoQueueClientObj %p [%@]", a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

void videoQueueServer_mediaServicesProcessDeathNotification()
{
  v0 = videoQueueServer_copySubVideoQueue();
  if (v0)
  {
    v1 = v0;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();

    CFRelease(v1);
  }
}

void videoQueueServer_appStateChangeListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = videoQueueServer_copySubVideoQueue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AFA50]);
  if (Value)
  {
    valuePtr[0] = 0;
    if (CFNumberGetValue(Value, kCFNumberSInt32Type, valuePtr))
    {
      v10 = valuePtr[0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (dword_1EAF17830)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v10 == 4)
  {
    if (dword_1EAF17830)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = *(DerivedStorage + 96);
    v14 = dispatch_time(0, 1000000000);
    v13 = v16;
    v15 = 1000000000;
    goto LABEL_20;
  }

  if (v10 != 2)
  {
    v13 = *(DerivedStorage + 96);
    v14 = -1;
    v15 = 0;
LABEL_20:
    dispatch_source_set_timer(v13, v14, v15, 0x1DCD6500uLL);
    goto LABEL_21;
  }

  if (v7)
  {
    videoQueueServer_invalidateSubVideoQueue(a2, v7);
  }

  dispatch_source_set_timer(*(DerivedStorage + 96), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  FigSimpleMutexUnlock();
LABEL_21:
  if (v7)
  {
    CFRelease(v7);
  }
}

dispatch_queue_t __videoQueueServer_getCommonTimerSourceQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.videoqueue.timer", 0);
  qword_1ED4CB920 = result;
  return result;
}

void videoQueueServer_blockDeallocate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    JUMPOUT(0x19A8D6C70);
  }
}

uint64_t OUTLINED_FUNCTION_4_129()
{

  return FigMachPortReleaseSendRight_();
}

uint64_t OUTLINED_FUNCTION_8_72(uint64_t a1)
{

  return videoQueueServerCopyClientFromCommandPort(a1, 0);
}

uint64_t OUTLINED_FUNCTION_9_65(uint64_t a1)
{

  return videoQueueServerCopyClientFromCommandPort(a1, 0);
}

uint64_t OUTLINED_FUNCTION_14_54(CFAllocatorRef blockAllocator, void *a2, size_t dataLength, uint64_t a4, const CMBlockBufferCustomBlockSource *a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return CMBlockBufferCreateWithMemoryBlock(blockAllocator, a2, dataLength, blockAllocator, a5, 0, dataLength, 0, a9);
}

uint64_t FigFastStartRemakerCreateWithURLs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    FigFastStartRemakerCreateWithURLs_cold_8(&v11);
    return v11;
  }

  if (!FigCFURLIsLocalResource())
  {
    FigFastStartRemakerCreateWithURLs_cold_7(&v11);
    return v11;
  }

  if (!a3)
  {
    FigFastStartRemakerCreateWithURLs_cold_6(&v11);
    return v11;
  }

  if (!FigCFURLIsLocalResource())
  {
    FigFastStartRemakerCreateWithURLs_cold_5(&v11);
    return v11;
  }

  if (FigFileDoesFileExist())
  {
    FigFastStartRemakerCreateWithURLs_cold_1(&v11);
    return v11;
  }

  if (!a5)
  {
    FigFastStartRemakerCreateWithURLs_cold_4(&v11);
    return v11;
  }

  FigRemakerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CMByteStreamCreateForFileURL())
  {
    FigFastStartRemakerCreateWithURLs_cold_2(&v11);
    return v11;
  }

  if (CMByteStreamCreateForFileURL())
  {
    FigFastStartRemakerCreateWithURLs_cold_3(&v11);
    return v11;
  }

  *DerivedStorage = 0;
  *(DerivedStorage + 40) = 512;
  v9 = 0;
  *(DerivedStorage + 16) = dispatch_queue_create("com.apple.coremedia.faststartremaker", 0);
  *a5 = 0;
  return v9;
}

const void *fastStartRemaker_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      return 0;
    }

    else
    {
      *(DerivedStorage + 8) = 1;
      v3 = *(DerivedStorage + 16);
      if (v3)
      {
        *(v1 + 9) = 1;
        dispatch_sync_f(v3, 0, doNothingDispatchFunction);
        dispatch_release(*(v1 + 16));
        *(v1 + 16) = 0;
      }

      v4 = *(v1 + 32);
      if (v4)
      {
        CFRelease(v4);
        *(v1 + 32) = 0;
      }

      result = *(v1 + 24);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(v1 + 24) = 0;
      }
    }
  }

  else
  {
    fastStartRemaker_Invalidate_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t fastStartRemaker_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v7 = DerivedStorage, *(DerivedStorage + 8)))
  {
    fastStartRemaker_CopyProperty_cold_3(&v11);
    return v11;
  }

  if (CFEqual(a2, @"Remaker_Progress"))
  {
    valuePtr[0] = 0.0;
    if (*(v7 + 10))
    {
      fastStartRemaker_CopyProperty_cold_2(v7, valuePtr);
    }

    else if (!fastStartRemaker_CopyProperty_cold_1())
    {
      return LODWORD(valuePtr[1]);
    }

    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
    result = 0;
    *a4 = v9;
    return result;
  }

  return 4294954512;
}

uint64_t fastStartRemaker_StartOutput(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || *(DerivedStorage + 8))
  {
    fastStartRemaker_StartOutput_cold_2(&v5);
    return v5;
  }

  else if (*(DerivedStorage + 10))
  {
    fastStartRemaker_StartOutput_cold_1(&v4);
    return v4;
  }

  else
  {
    *(DerivedStorage + 10) = 1;
    dispatch_async_f(*(DerivedStorage + 16), a1, writeFirstStartMovieDispatchFunction);
    return 0;
  }
}

void writeFirstStartMovieDispatchFunction()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v1 = DerivedStorage, *(DerivedStorage + 8)))
  {
    if (!writeFirstStartMovieDispatchFunction_cold_19())
    {
      v10 = theBuffer[0];
      goto LABEL_230;
    }

    goto LABEL_239;
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  *theBuffer = 0u;
  started = FigAtomStreamInitWithByteStream();
  if (started || (started = fastStartRemaker_parseChildAtoms(theBuffer, 3, &fastStartRemaker_parseMovieFile_atomDispatch, v1)) != 0)
  {
LABEL_257:
    v10 = started;
    goto LABEL_230;
  }

  if (*(v1 + 96))
  {
    if (*(v1 + 104))
    {
      goto LABEL_7;
    }

    writeFirstStartMovieDispatchFunction_cold_1(&blockBufferOut);
  }

  else
  {
    writeFirstStartMovieDispatchFunction_cold_2(&blockBufferOut);
  }

  v10 = blockBufferOut;
  if (blockBufferOut)
  {
    goto LABEL_230;
  }

LABEL_7:
  theBuffer[0] = 0;
  v3 = *(v1 + 88);
  if (!v3)
  {
    goto LABEL_15;
  }

  blockBufferOut = 0;
  if (v3 < 0)
  {
    started = FigSignalErrorAtGM();
    if (started)
    {
      goto LABEL_257;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v4 = *(v1 + 24);
  v5 = *(v1 + 64);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    v10 = -12782;
    goto LABEL_230;
  }

  v7 = v6(v4, v3, v5, theBuffer, &blockBufferOut);
  if (v7)
  {
    v10 = v7;
    if (theBuffer[0])
    {
      CFRelease(theBuffer[0]);
    }

    goto LABEL_230;
  }

  v8 = theBuffer[0];
  if (theBuffer[0])
  {
    CMBlockBufferGetDataLength(theBuffer[0]);
    appended = CMByteStreamAppendBlockBuffer();
    if (appended)
    {
      v10 = appended;
      goto LABEL_201;
    }
  }

LABEL_16:
  v147 = 0;
  destinationBuffer = 0;
  sourceBytes = 0;
  v11 = *(v1 + 96);
  if (v11 < 0)
  {
    writeFirstStartMovieDispatchFunction_cold_17(theBuffer);
    v30 = 0;
    v31 = 0;
    v10 = theBuffer[0];
    goto LABEL_183;
  }

  v12 = *(v1 + 24);
  v13 = *(v1 + 72);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v14)
  {
    v30 = 0;
    v31 = 0;
    v10 = -12782;
    goto LABEL_183;
  }

  v134 = v8;
  v15 = v14(v12, v11, v13, &destinationBuffer, &v147);
  if (v15)
  {
LABEL_265:
    v10 = v15;
    goto LABEL_262;
  }

  v16 = CFGetAllocator(*v1);
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  *theBuffer = 0u;
  Mutable = CFArrayCreateMutable(v16, 0, 0);
  if (!Mutable)
  {
    v15 = FigSignalErrorAtGM();
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_265;
  }

  v18 = FigAtomStreamInitWithBBuf();
  if (v18 || (v18 = fastStartRemaker_parseChildAtoms(theBuffer, 2, parseMoovAtomAndCreateTrackAtomInfoArray_atomDispatch, Mutable)) != 0)
  {
    v10 = v18;
    CFRelease(Mutable);
LABEL_262:
    v30 = 0;
    v31 = 0;
    v8 = v134;
    goto LABEL_183;
  }

LABEL_22:
  Count = CFArrayGetCount(Mutable);
  v20 = destinationBuffer;
  if (!Count)
  {
    v136 = 0;
LABEL_159:
    DataLength = CMBlockBufferGetDataLength(v20);
    if (DataLength == DataLength)
    {
      sourceBytes = bswap32(DataLength);
      v94 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL);
      if (v94)
      {
        v10 = v94;
LABEL_273:
        v30 = 0;
        v31 = 0;
        cf = 0;
        v92 = 0;
        v142 = 0;
        v77 = 0;
        goto LABEL_170;
      }

      if (v136)
      {
        theBuffer[0] = 0;
        blockBufferOut = 0;
        if (v136 < 8 || (v136 & 0x8000000000000000) != 0)
        {
          v133 = FigSignalErrorAtGM();
          v30 = 0;
          if (v133)
          {
            v10 = v133;
            v31 = 0;
            cf = 0;
            v92 = 0;
            v142 = 0;
            v77 = 0;
            goto LABEL_170;
          }
        }

        else
        {
          v95 = CFGetAllocator(*v1);
          v96 = CMBlockBufferCreateWithMemoryBlock(v95, 0, v136, v95, 0, 0, v136, 1u, theBuffer);
          v30 = theBuffer[0];
          if (v96)
          {
            goto LABEL_167;
          }

          v97 = CMBlockBufferFillDataBytes(0, theBuffer[0], 0, 0);
          if (v97)
          {
            v10 = v97;
            v30 = theBuffer[0];
LABEL_271:
            if (v30)
            {
              CFRelease(v30);
            }

            goto LABEL_273;
          }

          blockBufferOut = (bswap32(v136) | 0x6565726600000000);
          v96 = CMBlockBufferReplaceDataBytes(&blockBufferOut, theBuffer[0], 0, 8uLL);
          v30 = theBuffer[0];
          if (v96)
          {
LABEL_167:
            v10 = v96;
            goto LABEL_271;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      cf = 0;
      v92 = 0;
      v142 = 0;
      v77 = 0;
      v10 = 0;
      v31 = v30;
      v30 = destinationBuffer;
      destinationBuffer = 0;
      goto LABEL_170;
    }

    writeFirstStartMovieDispatchFunction_cold_16(theBuffer);
LABEL_243:
    v30 = 0;
    v31 = 0;
    cf = 0;
    v92 = 0;
    v142 = 0;
    v77 = 0;
    v10 = theBuffer[0];
    goto LABEL_170;
  }

  v144 = Count;
  v21 = v1;
  v22 = *(v1 + 40);
  v23 = CFArrayGetCount(Mutable);
  if (v23 < 1)
  {
    v27 = 0;
  }

  else
  {
    v24 = v23;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v25);
      if (*(ValueAtIndex + 22))
      {
        if (v27 >= ValueAtIndex[12])
        {
          v29 = ValueAtIndex[12];
        }

        else
        {
          v29 = v27;
        }

        if (v26)
        {
          v27 = v29;
        }

        else
        {
          v27 = ValueAtIndex[12];
        }

        v26 = 1;
      }

      ++v25;
    }

    while (v24 != v25);
  }

  v140 = v20;
  v32 = 0;
  if (v22 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v22;
  }

  v34 = v33;
  v138 = v33 - 1;
  v35 = 1;
  v1 = v21;
  do
  {
    v36 = v1;
    v37 = CMBlockBufferGetDataLength(v140);
    v38 = CFArrayGetCount(Mutable);
    if (v38 >= 1)
    {
      v39 = v38;
      for (i = 0; i != v39; ++i)
      {
        v41 = CFArrayGetValueAtIndex(Mutable, i);
        v42 = v41[22];
        if (*(v41 + 64))
        {
          v43 = 8;
        }

        else if (v42)
        {
          if ((*(v41 + 13) + v32) >> 32)
          {
            v43 = 8;
          }

          else
          {
            v43 = 4;
          }
        }

        else
        {
          v43 = 4;
        }

        v37 = v37 - *(v41 + 10) + v43 * v42 + 16;
      }
    }

    v1 = v36;
    v44 = *(v36 + 88) + v37 + 8 * (*(v36 + 11) != 0) + v27 - *(v36 + 80);
    if (v44 % v34)
    {
      v45 = (v34 - v44 % v34);
    }

    else
    {
      v45 = 0;
    }

    if (v45 - 1 <= 6)
    {
      v45 += (v138 - v45 + 8) / v34 * v34;
    }

    v46 = v45 + *(v36 + 88) + v37 + 8 * (*(v36 + 11) != 0) - *(v36 + 80);
    if (v46 == v32)
    {
      goto LABEL_63;
    }

    if (v46 != v46)
    {
      break;
    }

    v32 = v45 + v44 - v27;
    v125 = CFArrayGetCount(Mutable) + 2 <= v35++;
  }

  while (!v125);
  if (!writeFirstStartMovieDispatchFunction_cold_3())
  {
    goto LABEL_243;
  }

  v45 = 0;
  v32 = 0;
LABEL_63:
  v47 = v144;
  v136 = v45;
  if (v144 <= 0)
  {
    v20 = destinationBuffer;
    goto LABEL_159;
  }

  v137 = v32;
  v48 = v32;
  v143 = v36;
  while (1)
  {
    v49 = CFArrayGetValueAtIndex(Mutable, v47 - 1);
    if ((v49[10] & 0x8000000000000000) != 0)
    {
      writeFirstStartMovieDispatchFunction_cold_15(theBuffer);
      goto LABEL_243;
    }

    v50 = v49;
    v139 = v47 - 1;
    v145 = v47;
    v51 = CFGetAllocator(*v1);
    v52 = destinationBuffer;
    v53 = v50[9];
    v54 = v50[10];
    v55 = CMBlockBufferGetDataLength(destinationBuffer);
    theBuffer[0] = 0;
    v157 = 0;
    blockBufferOut = 0;
    if ((v53 & 0x8000000000000000) != 0)
    {
      v91 = 859;
    }

    else
    {
      v56 = v55;
      v57 = CMBlockBufferCreateWithBufferReference(v51, v52, 0, v53, 0, theBuffer);
      if (v57)
      {
        goto LABEL_131;
      }

      v57 = CMBlockBufferCreateWithBufferReference(v51, v52, v53, v54, 0, &blockBufferOut);
      if (v57)
      {
        goto LABEL_131;
      }

      v58 = v54 + v53;
      if ((v54 + v53) >= 0)
      {
        if (v56 == v58)
        {
          v59 = 0;
LABEL_74:
          v1 = v143;
          v60 = theBuffer[0];
          v61 = blockBufferOut;
          goto LABEL_75;
        }

        v57 = CMBlockBufferCreateWithBufferReference(v51, v52, v58, v56 - v58, 0, &v157);
        if (!v57)
        {
          v59 = v157;
          goto LABEL_74;
        }

LABEL_131:
        v10 = v57;
        goto LABEL_140;
      }

      v91 = 870;
    }

    writeFirstStartMovieDispatchFunction_cold_4(v91, &dataPointerOut);
    v10 = dataPointerOut;
LABEL_140:
    v1 = v143;
    if (theBuffer[0])
    {
      CFRelease(theBuffer[0]);
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    if (v157)
    {
      CFRelease(v157);
    }

    v59 = 0;
    v61 = 0;
    v60 = 0;
    v30 = 0;
    v31 = 0;
    cf = 0;
    v92 = 0;
    v142 = 0;
    v77 = 0;
    if (v10)
    {
      goto LABEL_170;
    }

LABEL_75:
    v141 = v59;
    v62 = CFGetAllocator(*v1);
    v63 = *(v50 + 22);
    v64 = *(v50 + 64);
    v65 = v50[13];
    v157 = 0;
    blockBufferOut = 0;
    dataPointerOut = 0;
    theBuffer[0] = 0;
    theBuffer[1] = 0;
    LODWORD(v150) = 0;
    v66 = (v65 + v48) >> 32 == 0;
    v67 = v66;
    if (v66)
    {
      v68 = 4;
    }

    else
    {
      v68 = 8;
    }

    if (!v63)
    {
      v68 = 4;
      v67 = 1;
    }

    if (v64)
    {
      v68 = 8;
      v69 = 0;
    }

    else
    {
      v69 = v67;
    }

    if ((v68 * v63) > -17)
    {
      v70 = (v68 * v63) + 16;
      DataPointer = CMBlockBufferCreateWithMemoryBlock(v62, 0, v70, v62, 0, 0, v70, 1u, &blockBufferOut);
      if (!DataPointer)
      {
        if (!v63)
        {
LABEL_98:
          v75 = bswap32(v70);
          if (v69)
          {
            v76 = 1868788851;
          }

          else
          {
            v76 = 875982691;
          }

          theBuffer[0] = __PAIR64__(v76, v75);
          LODWORD(theBuffer[1]) = 0;
          HIDWORD(theBuffer[1]) = bswap32(v63);
          DataPointer = CMBlockBufferReplaceDataBytes(theBuffer, blockBufferOut, 0, 0x10uLL);
          if (!DataPointer)
          {
            v77 = blockBufferOut;
            v20 = v60;
            v78 = v141;
            goto LABEL_103;
          }

          goto LABEL_130;
        }

        DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0x10uLL, 0, 0, &v157);
        if (!DataPointer)
        {
          DataPointer = CMBlockBufferGetDataPointer(v61, 0x10uLL, 0, 0, &dataPointerOut);
          if (!DataPointer)
          {
            v72 = dataPointerOut;
            v73 = v63;
            v74 = v63;
            if (v64)
            {
              if (v69)
              {
                do
                {
                  *v157 = bswap32(v137 + bswap64(*v72));
                  v72 = dataPointerOut + 8;
                  dataPointerOut += 8;
                  v157 = (v157 + 4);
                  --v74;
                }

                while (v74);
              }

              else
              {
                do
                {
                  *v157 = bswap64(bswap64(*v72) + v48);
                  v72 = dataPointerOut + 8;
                  dataPointerOut += 8;
                  v157 = (v157 + 8);
                  --v73;
                }

                while (v73);
              }
            }

            else if (v69)
            {
              do
              {
                *v157 = bswap32(bswap32(*v72) + v137);
                v72 = dataPointerOut + 4;
                dataPointerOut += 4;
                v157 = (v157 + 4);
                --v74;
              }

              while (v74);
            }

            else
            {
              do
              {
                *v157 = bswap64(bswap32(*v72) + v48);
                v72 = dataPointerOut + 4;
                dataPointerOut += 4;
                v157 = (v157 + 8);
                --v73;
              }

              while (v73);
            }

            goto LABEL_98;
          }
        }
      }

LABEL_130:
      v10 = DataPointer;
      goto LABEL_134;
    }

    writeFirstStartMovieDispatchFunction_cold_5(v159);
    v10 = v159[0];
LABEL_134:
    v20 = v60;
    v78 = v141;
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    v77 = 0;
    if (v10)
    {
      v31 = 0;
      cf = v20;
      v30 = 0;
      goto LABEL_246;
    }

LABEL_103:
    v79 = CMBlockBufferAppendBufferReference(v20, v77, 0, 0, 0);
    v10 = v79;
    if (v78 && !v79)
    {
      v10 = CMBlockBufferAppendBufferReference(v20, v78, 0, 0, 0);
    }

    if (v10)
    {
      goto LABEL_241;
    }

    v80 = CMBlockBufferGetDataLength(v77);
    v81 = v80 - CMBlockBufferGetDataLength(v61);
    if (v81 < 0)
    {
      break;
    }

    v82 = v50[3];
    if ((v82 & 0x8000000000000000) != 0)
    {
      writeFirstStartMovieDispatchFunction_cold_13(theBuffer);
    }

    else
    {
      v83 = v50[7] + v81;
      if (HIDWORD(v83))
      {
        writeFirstStartMovieDispatchFunction_cold_12(theBuffer);
      }

      else
      {
        LODWORD(blockBufferOut) = bswap32(v83);
        v84 = CMBlockBufferReplaceDataBytes(&blockBufferOut, v20, v82, 4uLL);
        if (v84)
        {
          goto LABEL_240;
        }

        v85 = v50[2];
        if ((v85 & 0x8000000000000000) != 0)
        {
          writeFirstStartMovieDispatchFunction_cold_11(theBuffer);
        }

        else
        {
          v86 = v50[6] + v81;
          if (HIDWORD(v86))
          {
            writeFirstStartMovieDispatchFunction_cold_10(theBuffer);
          }

          else
          {
            LODWORD(blockBufferOut) = bswap32(v86);
            v84 = CMBlockBufferReplaceDataBytes(&blockBufferOut, v20, v85, 4uLL);
            if (v84)
            {
              goto LABEL_240;
            }

            v87 = v50[1];
            if ((v87 & 0x8000000000000000) != 0)
            {
              writeFirstStartMovieDispatchFunction_cold_9(theBuffer);
            }

            else
            {
              v88 = v50[5] + v81;
              if (HIDWORD(v88))
              {
                writeFirstStartMovieDispatchFunction_cold_8(theBuffer);
              }

              else
              {
                LODWORD(blockBufferOut) = bswap32(v88);
                v84 = CMBlockBufferReplaceDataBytes(&blockBufferOut, v20, v87, 4uLL);
                if (v84)
                {
LABEL_240:
                  v10 = v84;
LABEL_241:
                  v31 = 0;
                  goto LABEL_245;
                }

                v89 = *v50;
                if ((*v50 & 0x8000000000000000) != 0)
                {
                  writeFirstStartMovieDispatchFunction_cold_7(theBuffer);
                }

                else
                {
                  v90 = v50[4] + v81;
                  if (!HIDWORD(v90))
                  {
                    LODWORD(blockBufferOut) = bswap32(v90);
                    v10 = CMBlockBufferReplaceDataBytes(&blockBufferOut, v20, v89, 4uLL);
                    if (v10)
                    {
                      goto LABEL_241;
                    }

                    goto LABEL_120;
                  }

                  writeFirstStartMovieDispatchFunction_cold_6(theBuffer);
                }
              }
            }
          }
        }
      }
    }

    v10 = theBuffer[0];
    if (LODWORD(theBuffer[0]))
    {
      goto LABEL_241;
    }

LABEL_120:
    if (v61)
    {
      CFRelease(v61);
    }

    if (v77)
    {
      CFRelease(v77);
    }

    v1 = v143;
    if (v78)
    {
      CFRelease(v78);
    }

    v47 = v139;
    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    destinationBuffer = v20;
    if (v145 <= 1)
    {
      goto LABEL_159;
    }
  }

  writeFirstStartMovieDispatchFunction_cold_14(theBuffer);
  v31 = 0;
  v10 = theBuffer[0];
LABEL_245:
  cf = v20;
  v30 = 0;
LABEL_246:
  v92 = v61;
  v142 = v78;
  v1 = v143;
LABEL_170:
  if (Mutable)
  {
    v98 = v92;
    v99 = v31;
    v100 = CFArrayGetCount(Mutable);
    if (v100 >= 1)
    {
      v101 = v100;
      for (j = 0; j != v101; ++j)
      {
        v103 = CFArrayGetValueAtIndex(Mutable, j);
        v104 = CFGetAllocator(Mutable);
        CFAllocatorDeallocate(v104, v103);
      }
    }

    CFRelease(Mutable);
    v31 = v99;
    v92 = v98;
  }

  if (v92)
  {
    CFRelease(v92);
  }

  v8 = v134;
  if (v77)
  {
    CFRelease(v77);
  }

  if (v142)
  {
    CFRelease(v142);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_183:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  if (v10)
  {
    goto LABEL_196;
  }

  CMBlockBufferGetDataLength(v30);
  v105 = CMByteStreamAppendBlockBuffer();
  if (v105)
  {
    v10 = v105;
    goto LABEL_196;
  }

  if (v31)
  {
    CMBlockBufferGetDataLength(v31);
    v106 = CMByteStreamAppendBlockBuffer();
    if (v106)
    {
      v10 = v106;
      goto LABEL_197;
    }
  }

  if (*(v1 + 11))
  {
    theBuffer[0] = 0;
    blockBufferOut = 0;
    v107 = CFGetAllocator(*v1);
    v108 = CMBlockBufferCreateWithMemoryBlock(v107, 0, 8uLL, v107, 0, 0, 8uLL, 1u, theBuffer);
    if (v108 || (blockBufferOut = 0x6564697708000000, (v108 = CMBlockBufferReplaceDataBytes(&blockBufferOut, theBuffer[0], 0, 8uLL)) != 0))
    {
      v10 = v108;
      v110 = theBuffer[0];
      if (theBuffer[0])
      {
LABEL_194:
        CFRelease(v110);
      }
    }

    else
    {
      v109 = theBuffer[0];
      CMBlockBufferGetDataLength(theBuffer[0]);
      v10 = CMByteStreamAppendBlockBuffer();
      if (v109)
      {
        v110 = v109;
        goto LABEL_194;
      }
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_196:
  if (v31)
  {
LABEL_197:
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v8)
  {
LABEL_201:
    CFRelease(v8);
  }

  if (!v10)
  {
    v111 = *(v1 + 80);
    blockBufferOut = 0;
    v112 = malloc_type_malloc(0x100000uLL, 0x71C13146uLL);
    if (!v112)
    {
      writeFirstStartMovieDispatchFunction_cold_18(theBuffer);
      v10 = theBuffer[0];
      goto LABEL_226;
    }

    v113 = CFGetAllocator(*v1);
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v115 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v115)
    {
      goto LABEL_225;
    }

    v116 = v115(CMBaseObject, *MEMORY[0x1E695FF78], v113, &blockBufferOut);
    if (v116)
    {
LABEL_255:
      v10 = v116;
      goto LABEL_226;
    }

    CFNumberGetValue(blockBufferOut, kCFNumberSInt64Type, (v1 + 56));
    if (*(v1 + 9))
    {
LABEL_207:
      v117 = 0;
      v10 = 0;
      goto LABEL_227;
    }

    v118 = *(v1 + 48);
    v119 = 0x100000;
    while (1)
    {
      v120 = *(v1 + 104);
      if (v120 <= v118)
      {
        break;
      }

      theBuffer[0] = 0;
      v157 = 0;
      if (v120 < &v118[v119])
      {
        v119 = v120 - v118;
      }

      v121 = *(v1 + 24);
      v122 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v122)
      {
        goto LABEL_225;
      }

      v116 = v122(v121, v119, v111, v112, theBuffer);
      if (v116)
      {
        goto LABEL_255;
      }

      v116 = CMByteStreamAppend();
      if (v116)
      {
        goto LABEL_255;
      }

      v111 += v157;
      v118 = v157 + *(v1 + 48);
      *(v1 + 48) = v118;
      if (*(v1 + 9))
      {
        goto LABEL_207;
      }
    }

    v123 = *(v1 + 72);
    v124 = *(v1 + 80);
    v125 = v124 < v123 && v123 < v124 + v120;
    if (!v125)
    {
      v10 = 0;
      goto LABEL_226;
    }

    LODWORD(v157) = 1701147238;
    theBuffer[0] = 0;
    v126 = v1;
    v127 = *(v1 + 56);
    v128 = v126;
    v129 = *(v126 + 32);
    v130 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v130)
    {
      v10 = v130(v129, 4, v123 - v124 + v127 + 4, &v157, theBuffer);
      if (!v10)
      {
        v117 = *(v128 + 9) == 0;
        goto LABEL_227;
      }
    }

    else
    {
LABEL_225:
      v10 = -12782;
    }

LABEL_226:
    v117 = 1;
LABEL_227:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    free(v112);
    if (!v10)
    {
      if (!v117)
      {
        return;
      }

LABEL_239:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      return;
    }
  }

LABEL_230:
  LODWORD(blockBufferOut) = v10;
  v131 = *MEMORY[0x1E695E480];
  theBuffer[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &blockBufferOut);
  if (theBuffer[0])
  {
    v132 = CFDictionaryCreate(v131, &kFigRemakerNotificationParameter_OSStatus, theBuffer, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v132 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v132)
  {
    CFRelease(v132);
  }

  if (theBuffer[0])
  {
    CFRelease(theBuffer[0]);
  }
}

uint64_t OUTLINED_FUNCTION_3_131()
{

  return FigAtomStreamInitWithParent();
}

uint64_t RegisterFigReportingAgentBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigReportingAgentGetTypeID()
{
  MEMORY[0x19A8D3660](&_MergedGlobals_10, RegisterFigReportingAgentBaseType);

  return CMBaseClassGetCFTypeID();
}

CFArrayRef fra_createStaticKeyArrayForTCPIStats()
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], kFigReportingTCPInfoKeyForTimeWeightedStats, 8, 0);
  kFigReportingEventKeyArray_TCPInfoKeyForTimeWeightedStats = result;
  return result;
}

void fra_handlePeriodicTimerCancelCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigReportingAgentSetStatsForAllKeys(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = FigCFDictionaryCopyArrayOfKeys();
  v5 = 0;
  while (1)
  {
    v6 = v4 ? CFArrayGetCount(v4) : 0;
    if (v5 >= v6)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
    Value = FigCFDictionaryGetValue();
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v9)
    {
      v11 = 4294954514;
      if (!v4)
      {
        return v11;
      }

      goto LABEL_13;
    }

    v10 = v9(a1, a2, ValueAtIndex, Value, 0);
    ++v5;
    if (v10)
    {
      v11 = v10;
      if (!v4)
      {
        return v11;
      }

      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v4)
  {
LABEL_13:
    CFRelease(v4);
  }

  return v11;
}

uint64_t reportingAgentInvalidate(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  reportingAgentInvalidateGuts(a1);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t reportingAgentFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  reportingAgentInvalidateGuts(a1);
  v3 = *(DerivedStorage + 112);
  if (v3)
  {
    dispatch_release(v3);
  }

  return FigSimpleMutexDestroy();
}

__CFString *reportingAgentCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigReportingAgent : ");
  return Mutable;
}

uint64_t fra_issueDeferredRTCReportingEventApplierFunc(__CFDictionary *a1, uint64_t a2)
{
  result = FigCFDictionaryGetIntIfPresent();
  if (result)
  {
    CFDictionaryRemoveValue(a1, @"deferredEventID");
    return fra_issueRTCReportingEvent(a2, 0, a1, 0);
  }

  return result;
}

void fra_mergeDictApplier(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key && value)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void fra_issuePowerlogEvent(uint64_t *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  v4 = 0;
  if (a1 && Mutable)
  {
    fra_issuePowerlogEvent_cold_1(a1, &v4, Mutable);
LABEL_4:
    CFRelease(v3);
    return;
  }

  if (Mutable)
  {
    goto LABEL_4;
  }
}

uint64_t OUTLINED_FUNCTION_6_103()
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_7_87()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_14_55()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_15_48()
{

  return fra_updatePercentValue();
}

uint64_t FigPlayerSurrogateCreateWithOptions(const __CFAllocator *a1, const void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    FigPlayerGetClassID();
    v6 = CMDerivedObjectCreate();
    if (v6)
    {
      return v6;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    *DerivedStorage = 0;
    if (a2)
    {
      v9 = CFRetain(a2);
      *(v8 + 128) = 0;
      *(v8 + 8) = v9;
      if (FigCFDictionaryGetStringIfPresent())
      {
        CFStringGetCString(0, (v8 + 128), 16, 0x600u);
      }

      FigCFDictionaryGetBooleanIfPresent();
    }

    else
    {
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 128) = 0;
    }

    if (dword_1EAF17870)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (FigCFDictionaryGetValue())
    {
      DispatchQueue = FigDispatchQueueHolderGetDispatchQueue();
    }

    else
    {
      FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
      DispatchQueue = 0;
    }

    if (FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue() && DispatchQueue)
    {
      if (qword_1ED4CB938 != -1)
      {
        FigPlayerSurrogateCreateWithOptions_cold_1();
      }

      *(v8 + 16) = DispatchQueue;
      dispatch_retain(DispatchQueue);
      snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer.outboundNotifications[%p.%s]", 0, "");
      if (_MergedGlobals_123)
      {
        v14 = dispatch_queue_create_with_target_V2(__str, 0, *(v8 + 16));
      }

      else
      {
        v14 = FigDispatchQueueCreateWithPriority();
      }

      *(v8 + 24) = v14;
      snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer.inboundNotifications[%p.%s]", 0, "");
      *(v8 + 72) = dispatch_queue_create_with_target_V2(__str, 0, *(v8 + 16));
      snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer[%p.%s]", 0, "");
      v13 = dispatch_queue_create(__str, 0);
    }

    else
    {
      snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer.outboundNotifications[%p.%s]", 0, "");
      *(v8 + 24) = FigDispatchQueueCreateWithPriority();
      snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer.inboundNotifications[%p.%s]", 0, "");
      *(v8 + 72) = FigDispatchQueueCreateWithPriority();
      snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer[%p.%s]", 0, "");
      v13 = FigDispatchQueueCreateWithPriority();
    }

    *(v8 + 64) = v13;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    v15 = FigCFWeakReferenceTableCreate();
    if (!v15)
    {
      *(v8 + 56) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"ActionAtEnd", @"Advance");
      *(v8 + 80) = Mutable;
      *(v8 + 97) = 1;
      *(v8 + 144) = 0;
      *a3 = 0;
    }

    return v15;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t surrogatePlaybackItem_initUseAsyncControlQueueForOutboundNotificationsOnce(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault();
  *a1 = result;
  return result;
}

void surrogatePlayer_realPlayerNotificationWeakCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11[0] = a2;
  v11[1] = a4;
  v11[2] = a3;
  v11[3] = a5;
  dispatch_sync_f(*(DerivedStorage + 64), v11, surrogatePlayer_realPlayerNotificationWeakCallbackInternal);
  v10 = CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ(a2, *(v10 + 16), *(v10 + 64));
}

void replaceNextCurrentItemDidChangeNotification(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(DerivedStorage + 112) = 2;
}

uint64_t surrogatePlayer_deferPostNotification(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDeferNotificationToDispatchQueue();
}

void surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(const void *a1, int a2, const void *a3, void *a4)
{
  values[22] = *MEMORY[0x1E69E9840];
  values[0] = a4;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    FigCFDictionarySetInt32();
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, @"CFError", a3);
  }

  if (a4)
  {
    v10 = CFArrayCreate(v8, values, 1, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(Mutable, @"Properties", v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  if (dword_1EAF17870)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  surrogatePlaybackItem_deferPostNotification(a1);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

_BYTE *surrogatePlaybackItem_deferPostNotification(const void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CFRetain(a1);
    CMNotificationCenterGetDefaultLocalCenter();

    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

uint64_t surrogatePlaybackItem_copyOwningPlayer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 96))
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

void surrogatePlaybackItem_deferReleaseToSafeQ(void *a1)
{
  if (a1)
  {
    v2 = *(CMBaseObjectGetDerivedStorage() + 8);

    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(a1, v2, 0);
  }
}

void surrogatePlayer_deferReleaseToSafeQ(void *a1)
{
  if (a1)
  {
    v2 = *(CMBaseObjectGetDerivedStorage() + 16);

    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(a1, v2, 0);
  }
}

void surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(void *context, dispatch_queue_t queue, dispatch_queue_t a3)
{
  if (context)
  {
    v3 = queue;
    if (!queue)
    {
      if (qword_1ED4CB948 != -1)
      {
        v5 = a3;
        surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal_cold_1();
        a3 = v5;
      }

      v3 = qword_1ED4CB940;
    }

    if (a3)
    {
      dispatch_sync_f(a3, 0, a_noop);
    }

    dispatch_async_f(v3, context, _releaseCFType);
  }
}

dispatch_queue_t _initDeferredReleaseQ(dispatch_queue_t *a1)
{
  result = dispatch_queue_create("com.apple.coremedia.surrogatePlayer.deferredRelease", 0);
  *a1 = result;
  return result;
}

void surrogatePlayer_deferPostCurrentItemDidChangeNotification(const void *a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"ReasonForCurrentItemDidChange", a2);
  surrogatePlayer_deferPostNotification(a1);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

CFDictionaryRef *surrogatePlayer_copyPropertyFromCacheInternal(uint64_t *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    v6 = -12785;
    goto LABEL_9;
  }

  v3 = result;
  v4 = *a1;
  cf = 0;
  v9 = 0;
  v7 = v4;
  surrogatePlayer_currentRealPlayerInternal(&v7);
  v5 = cf;
  if (!cf)
  {
    result = CFDictionaryGetValue(v3[10], a1[1]);
    if (result)
    {
      if (result != *MEMORY[0x1E695E738])
      {
        result = CFRetain(result);
        v6 = 0;
        a1[2] = result;
        a1[3] = 0;
        goto LABEL_10;
      }

      v6 = 0;
    }

    else
    {
      v6 = -12784;
    }

LABEL_9:
    a1[2] = 0;
    a1[3] = 0;
    goto LABEL_10;
  }

  a1[2] = 0;
  a1[3] = v5;
  result = CFRetain(v5);
  v6 = 0;
LABEL_10:
  *(a1 + 8) = v6;
  return result;
}

void *surrogatePlayer_currentRealPlayerInternal(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result[11];
  v4 = result[4];
  if (!v3)
  {
    if (v4)
    {
      *(a1 + 8) = v4;
LABEL_6:
      v4 = result[5];
      goto LABEL_7;
    }

    v3 = result[5];
  }

  *(a1 + 8) = v3;
  if (v3 == v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(a1 + 16) = v4;
  return result;
}

uint64_t surrogatePlayer_resetIsEnqueuedWithRealPlayerForArrayPlaybackItem()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 162) = 0;
  return result;
}

uint64_t surrogatePlayer_resetIsWaitingForVideoTargetForArrayPlaybackItem()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 161) = 0;
  return result;
}

void surrogatePlayer_deferCancelPendingPrerollForArrayPlaybackItem(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_malloc(0x10uLL, 0x1020040FFEA222EuLL);
  if (v3)
  {
    v4 = v3;
    *v3 = CFRetain(a1);
    *(v4 + 4) = 257;
    v5 = *(DerivedStorage + 8);
    v6 = *(DerivedStorage + 144);

    surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueue_f(v5, v6, v4, surrogatePlayerItem_cancelPendingPrerollInternal);
  }

  else
  {
    surrogatePlayer_deferCancelPendingPrerollForArrayPlaybackItem_cold_1();
  }
}

void surrogatePlaybackItem_deferItemWasRemovedFromPlayQueueNotification(const void *a1, int a2)
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  values = *v3;
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_AsRequested, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  surrogatePlaybackItem_deferPostNotification(a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t surrogatePlayer_setCachedActionAtEndOnRealPlayerOnQ(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, __int16 a16, uint64_t a17, uint64_t a18, __int16 a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 80), @"ActionAtEnd");

  return surrogatePlayer_setActionAtEndOnRealPlayerOnQ(a1, Value, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

void surrogatePlayer_deferItemWasRemovedFromPlayQueueNotificationForArrayPlaybackItem(const void *a1, uint64_t a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 162))
  {
    v4 = *(a2 + 16);

    surrogatePlaybackItem_deferItemWasRemovedFromPlayQueueNotification(a1, v4);
  }
}

__CFString *surrogatePlayer_copyPlayQueueDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFArrayGetCount(*(DerivedStorage + 56));
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v4);
      if (ValueAtIndex)
      {
        v6 = (CMBaseObjectGetDerivedStorage() + 175);
      }

      else
      {
        v6 = "";
      }

      if (++v4 >= v3)
      {
        v7 = "";
      }

      else
      {
        v7 = ", ";
      }

      CFStringAppendFormat(Mutable, 0, @"item %p %s%s", ValueAtIndex, v6, v7);
    }

    while (v3 != v4);
  }

  return Mutable;
}

void surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueue_f(NSObject *a1, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (a1)
  {
    v8 = malloc_type_malloc(0x18uLL, 0xA0040114AFA65uLL);
    v8[1] = work;
    v8[2] = queue;
    *v8 = context;
    v9 = surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueueInternal;
    v10 = a1;
  }

  else
  {
    v10 = queue;
    v8 = context;
    v9 = work;
  }

  dispatch_async_f(v10, v8, v9);
}

void surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueueInternal(uint64_t a1)
{
  dispatch_sync_f(*(a1 + 16), *a1, *(a1 + 8));

  free(a1);
}

uint64_t surrogatePlaybackItem_copyAssetTypeInternal(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 48);
  if (result)
  {
    CMBaseObject = FigAssetGetCMBaseObject(result);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      result = v4(CMBaseObject, @"assetProperty_AssetType", *MEMORY[0x1E695E480], a1 + 8);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t surrogatePlayer_applyCachedPanItemPropertyToRealPlayer(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(a2, @"Active");
    v6 = CFBooleanGetValue(Value);
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 24);
    result = VTable + 24;
    v9 = v10;
    if (v10)
    {
      v11 = *(v9 + 24);
      if (v11)
      {
        v12 = a3;
        v13 = v6;

        return v11(v12, v13);
      }
    }
  }

  else if (FigCFEqual())
  {
    v14 = CFDictionaryGetValue(a2, @"DuckDown");
    v15 = CFBooleanGetValue(v14);
    valuePtr = 0;
    v16 = CFDictionaryGetValue(a2, @"DuckVolume");
    CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr + 4);
    v17 = CFDictionaryGetValue(a2, @"RampDuration");
    CFNumberGetValue(v17, kCFNumberFloat32Type, &valuePtr);
    v18 = valuePtr;
    v19 = CMBaseObjectGetVTable();
    v21 = *(v19 + 32);
    result = v19 + 32;
    v20 = v21;
    if (v21)
    {
      v22 = *(v20 + 8);
      if (v22)
      {
        return v22(a3, v15, *(&v18 + 1), *&v18);
      }
    }
  }

  else if (FigCFEqual())
  {
    v23 = CFBooleanGetValue(a2);
    v24 = CMBaseObjectGetVTable();
    v26 = *(v24 + 32);
    result = v24 + 32;
    v25 = v26;
    if (v26)
    {
      v11 = *(v25 + 16);
      if (v11)
      {
        v12 = a3;
        v13 = v23;

        return v11(v12, v13);
      }
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v27 = 0;
      if (!a2)
      {
        goto LABEL_20;
      }

LABEL_19:
      for (result = CFArrayGetCount(a2); v27 < result; result = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v27);
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v29)
        {
          v29(a3, ValueAtIndex);
        }

        ++v27;
        if (a2)
        {
          goto LABEL_19;
        }

LABEL_20:
        ;
      }
    }
  }

  return result;
}

const void *surrogatePlaybackItem_applyCachedItemPropertyToRealPlaybackItem(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  if (FigCFEqual())
  {
    return surrogatePlaybackItem_applyCachedItemPropertyToRealPlaybackItem_cold_1();
  }

  result = FigCFEqual();
  if (result)
  {
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    result = FigCFDictionaryGetCMTimeIfPresent();
    if (result)
    {
      Value = CFDictionaryGetValue(a2, @"Options");
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 16);
      result = (VTable + 16);
      v9 = *(v8 + 176);
      if (v9)
      {
        v12 = v10;
        v13 = v11;
        return v9(a3, &v12, Value);
      }
    }
  }

  return result;
}

void surrogatePlaybackItem_applyCachedTrackPropertiesToRealPlaybackItem(unsigned int a1, CFDictionaryRef theDict, uint64_t a3)
{
  v4[0] = a3;
  v4[1] = a1;
  CFDictionaryApplyFunction(theDict, surrogatePlaybackItem_applyCachedTrackPropertyToRealPlaybackItemTrack, v4);
  CFDictionaryRemoveAllValues(theDict);
}

void surrogatePlaybackItem_retainReleaseOnSafeQ(void *a1)
{
  v2 = surrogatePlaybackItem_copyOwningPlayer();
  CFRetain(a1);
  if (v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ(a1, *(DerivedStorage + 16), *(DerivedStorage + 64));
    v4 = *(DerivedStorage + 16);
    v5 = *(DerivedStorage + 64);

    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ(v2, v4, v5);
  }

  else
  {

    surrogatePlaybackItem_deferReleaseToSafeQ(a1);
  }
}

void surrogatePlaybackItem_applyPropertiesToBeAppliedOnceWhenRealItemBecomesCurrentInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryApplyFunction(*(DerivedStorage + 120), surrogatePlaybackItem_applyPropertyWhenRealItemBecomesCurrentToItem, a1);
  v3 = *(DerivedStorage + 120);

  CFDictionaryRemoveAllValues(v3);
}

uint64_t surrogatePlaybackItem_applyPropertyWhenRealItemBecomesCurrentToItem()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCFEqual();
  if (result)
  {
    result = CFDictionaryGetValue(*(DerivedStorage + 120), @"StartPreroll");
    if (result)
    {
      FigCFDictionaryGetFloat32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      v2 = *(DerivedStorage + 72);
      VTable = CMBaseObjectGetVTable();
      v4 = *(VTable + 16);
      result = VTable + 16;
      v5 = *(v4 + 64);
      if (v5)
      {
        return v5(v2, 0, 0.0);
      }
    }
  }

  return result;
}

void surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ(void *context, dispatch_queue_t queue, NSObject *a3)
{
  if (a3)
  {
    v6 = malloc_type_malloc(0x18uLL, 0xE00407A161445uLL);
    v7 = v6;
    *v6 = context;
    v6[1] = queue;
    if (queue)
    {
      dispatch_retain(queue);
      v7[2] = a3;
      dispatch_retain(a3);
      v8 = queue;
    }

    else
    {
      v6[2] = 0;
      v8 = a3;
    }

    dispatch_async_f(v8, v7, surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ_f);
  }

  else
  {

    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(context, queue, 0);
  }
}

void surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ_f(uint64_t a1)
{
  if (a1)
  {
    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(*a1, *(a1 + 8), *(a1 + 16));
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }

    free(a1);
  }
}

uint64_t surrogatePlaybackItem_applyCachedTrackPropertyToRealPlaybackItemTrack(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 112);
  if (v10)
  {

    return v10(v5, v6, a1, a2);
  }

  return result;
}

uint64_t surrogatePlaybackItem_callMakeReadyForInspectionOnRealItemForProperty(const void *a1, uint64_t a2, void *a3, int a4, _BYTE *a5)
{
  values = a3;
  v13 = 0;
  if (a3)
  {
    v9 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v10)
  {
    v11 = v10(a2, v9, &v13);
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 4294954514;
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  if (v11)
  {
    surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(a1, v11, 0, values);
    goto LABEL_14;
  }

  if (v13)
  {
    surrogatePlaybackItem_deferReadyForInspectionNotification(a1, values);
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (!a5)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!v11)
  {
    *a5 = v13;
  }

LABEL_14:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

CFArrayRef surrogatePlaybackItem_initPropertiesWithSpecialHandlingWhenMakingReadyForInspection(CFArrayRef *a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"CPEProtector";
  v3[1] = @"InitialSamples";
  v3[2] = @"AccurateDuration";
  v3[3] = @"iTunesGaplessInfo";
  v3[4] = @"Lyrics";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 5, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

const void *surrogatePlayer_setRealPlayerPropertyFromCache(uint64_t a1, uint64_t a2, void *key)
{
  result = CFDictionaryGetValue(*(a1 + 80), key);
  if (result)
  {
    v6 = result == *MEMORY[0x1E695E738] ? 0 : result;
    FigBaseObject = FigPlayerGetFigBaseObject(a2);
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 8);
    result = (VTable + 8);
    v10 = *(v9 + 56);
    if (v10)
    {

      return v10(FigBaseObject, key, v6);
    }
  }

  return result;
}

void surrogatePlayer_postDeferredNotification(uint64_t a1, void *a2)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  surrogatePlayer_deferReleaseToSafeQ(a2);
}

uint64_t surrogatePlayer_copyPropertyFromCache(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = a2;
  v12 = 0;
  v13 = 0;
  cf = 0;
  dispatch_sync_f(*(DerivedStorage + 64), context, surrogatePlayer_copyPropertyFromCacheInternal);
  if (a3)
  {
    *a3 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = v12;
  }

  else if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t surrogatePlayer_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFArray *a4, _BYTE *a5, __CFString **a6, CFArrayRef *a7)
{
  v10 = a4;
  v32 = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v14 = CFRetain(a3);
    if (v10)
    {
LABEL_3:
      v15 = CFRetain(v10);
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  if (*DerivedStorage)
  {
    v20 = 4294954511;
    goto LABEL_58;
  }

  if (FigCFEqual())
  {
    if (v10)
    {
      v10 = CFArrayCreate(*MEMORY[0x1E695E480], &v32, 1, MEMORY[0x1E695E9C0]);
    }

    v16 = @"VideoLayerArray";
    if (@"VideoLayerArray")
    {
      CFRetain(@"VideoLayerArray");
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v10)
    {
      CFRetain(v10);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v17 = v10;
    goto LABEL_24;
  }

  if (FigCFEqual())
  {
    if (!FigCFEqual() && !FigCFEqual())
    {
      v20 = 0;
      goto LABEL_58;
    }

    RealPlayer = surrogatePlayer_createRealPlayer(a1, v10, 0);
    if (!RealPlayer)
    {
LABEL_23:
      v17 = 0;
      v10 = v15;
      v16 = v14;
LABEL_24:
      *a5 = 0;
      v19 = CMBaseObjectGetDerivedStorage();
      context[0] = a1;
      context[1] = v16;
      context[3] = 0;
      context[4] = 0;
      context[2] = v10;
      dispatch_sync_f(*(v19 + 64), context, surrogatePlayer_setPropertyInCacheInternal);
      *a6 = v16;
      *a7 = v10;
      if (v17)
      {
        CFRelease(v17);
      }

      return 0;
    }

    goto LABEL_69;
  }

  if (FigCFEqual())
  {
    surrogatePlayer_handleSetProperty_cold_10(v10 == 0, v10, DerivedStorage, a1);
    goto LABEL_57;
  }

  if (FigCFEqual())
  {
    if (v10)
    {
      v22 = CFGetTypeID(v10);
      if (v22 != CFArrayGetTypeID())
      {
        goto LABEL_23;
      }

      Count = CFArrayGetCount(v10);
    }

    else
    {
      Count = 0;
    }

    if (*(DerivedStorage + 100) != Count)
    {
      surrogatePlayer_handleWaitForVideoTargetConditionChange(a1, 2, 0, Count);
    }

    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    if (v10 && (v24 = CFGetTypeID(v10), v24 == FigDispatchQueueHolderGetTypeID()))
    {
      if (*(DerivedStorage + 32))
      {
        surrogatePlayer_handleSetProperty_cold_1(context);
      }

      else if (*(DerivedStorage + 40))
      {
        surrogatePlayer_handleSetProperty_cold_2(context);
      }

      else
      {
        v25 = *(DerivedStorage + 56);
        if (!v25 || !CFArrayGetCount(v25))
        {
          DispatchQueue = FigDispatchQueueHolderGetDispatchQueue();
          v27 = *(DerivedStorage + 72);
          if (v27)
          {
            dispatch_release(v27);
          }

          *(DerivedStorage + 72) = DispatchQueue;
LABEL_56:
          dispatch_retain(DispatchQueue);
          goto LABEL_57;
        }

        surrogatePlayer_handleSetProperty_cold_3(context);
      }
    }

    else
    {
      surrogatePlayer_handleSetProperty_cold_4(context);
    }

    goto LABEL_80;
  }

  if (FigCFEqual())
  {
    if (v10 && (v28 = CFGetTypeID(v10), v28 == FigDispatchQueueHolderGetTypeID()))
    {
      if (*(DerivedStorage + 32))
      {
        surrogatePlayer_handleSetProperty_cold_5(context);
      }

      else if (*(DerivedStorage + 40))
      {
        surrogatePlayer_handleSetProperty_cold_6(context);
      }

      else
      {
        v29 = *(DerivedStorage + 56);
        if (!v29 || !CFArrayGetCount(v29))
        {
          DispatchQueue = FigDispatchQueueHolderGetDispatchQueue();
          v30 = *(DerivedStorage + 64);
          if (v30)
          {
            dispatch_release(v30);
          }

          *(DerivedStorage + 64) = DispatchQueue;
          goto LABEL_56;
        }

        surrogatePlayer_handleSetProperty_cold_7(context);
      }
    }

    else
    {
      surrogatePlayer_handleSetProperty_cold_8(context);
    }

LABEL_80:
    v20 = LODWORD(context[0]);
    goto LABEL_58;
  }

  if (FigCFEqual())
  {
    surrogatePlayer_setActionAtEndOnRealPlayer(a1, v10);
    goto LABEL_57;
  }

  if (!CFEqual(a3, @"ItemsToPrebuffer"))
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v31 = CFGetTypeID(v10);
    if (v31 != CFArrayGetTypeID())
    {
      surrogatePlayer_handleSetProperty_cold_9(context);
      goto LABEL_80;
    }
  }

  RealPlayer = surrogatePlayer_setItemsToPrebuffer(a1, v10);
  if (RealPlayer)
  {
LABEL_69:
    v20 = RealPlayer;
    goto LABEL_58;
  }

LABEL_57:
  v20 = 0;
  *a5 = 1;
LABEL_58:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v20;
}

uint64_t surrogatePlayer_createRealPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17870 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return FigSignalErrorAtGM();
  }

  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  v10 = 0;
  dispatch_sync_f(*(DerivedStorage + 64), context, surrogatePlayer_createRealPlayer_internal);
  return v10;
}

void surrogatePlayer_handleWaitForVideoTargetConditionChange(uint64_t a1, int a2, unsigned __int8 a3, unsigned int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  dispatch_sync_f(*(DerivedStorage + 64), &context, surrogatePlayer_handleWaitForVideoTargetConditionChangeInternal);
}

void surrogatePlayer_setActionAtEndOnRealPlayer(uint64_t a1, uint64_t a2)
{
  context[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAF17870 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 64), context, &surrogatePlayer_setActionAtEndOnRealPlayer_internal);
  }
}

uint64_t surrogatePlayer_setItemsToPrebuffer(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17870 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return FigSignalErrorAtGM();
  }

  context[1] = a2;
  v8 = 0;
  context[0] = a1;
  dispatch_sync_f(*(DerivedStorage + 64), context, surrogatePlayer_setItemsToPrebuffer_internal);
  return v8;
}

uint64_t surrogatePlayer_handleWaitForVideoTargetConditionChangeInternal(uint64_t a1)
{
  v2 = *a1;
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  v5 = *(a1 + 8);
  if (v5 == 2)
  {
    v8 = *(result + 100);
    if (dword_1EAF17870)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v4 + 100) = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else if (v5 == 1)
  {
    v6 = *(a1 + 12);
    *(result + 98) = v6;
    if (dword_1EAF17870)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v4 + 98);
    }

    if (!v6)
    {
LABEL_10:
      result = *(v4 + 56);
      if (result)
      {
        result = CFArrayGetCount(result);
        v10 = result;
      }

      else
      {
        v10 = 0;
      }

      if (dword_1EAF17870)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 56), i);
          result = CMBaseObjectGetDerivedStorage();
          if (*(result + 161))
          {
            *(result + 161) = 0;
            result = surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ(v2, ValueAtIndex);
          }
        }
      }
    }
  }

  return result;
}

uint64_t surrogatePlayer_deferInitiateLoadingOfItemAssetType(const void *a1, const void *a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = malloc_type_malloc(0x18uLL, 0x1020040A95220FAuLL);
  if (v7)
  {
    v8 = v7;
    *v7 = CFRetain(a1);
    v8[1] = CFRetain(a2);
    *(v8 + 16) = a3;
    surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueue_f(*(DerivedStorage + 16), *(DerivedStorage + 64), v8, surrogatePlayer_initiateLoadingOfItemAssetTypeAsync);
    return 0;
  }

  else
  {
    surrogatePlayer_deferInitiateLoadingOfItemAssetType_cold_1(&v10);
    return v10;
  }
}

__CFString *surrogatePlaybackItem_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (a1)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 175);
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"FigPlaybackItemSurrogate <%p|%s> realItem %p", a1, v5, *(DerivedStorage + 64));
  return Mutable;
}

CFTypeRef surrogatePlaybackItem_copyRealItemAndRealPlayerInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 64);
  *(a1 + 8) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  result = *(DerivedStorage + 72);
  *(a1 + 16) = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t surrogatePlaybackItem_SetCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  return surrogatePlaybackItem_SetCurrentTimeWithRangeAndID(a1, &v4, a3, MEMORY[0x1E6960C80], MEMORY[0x1E6960C88]);
}

uint64_t surrogatePlaybackItem_SetCurrentTimeWithRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = *(a2 + 16);
  v8 = *a4;
  v9 = *(a4 + 16);
  v6 = *a5;
  v7 = *(a5 + 16);
  return surrogatePlaybackItem_SetCurrentTimeWithRangeAndID(a1, &v10, a3, &v8, &v6);
}

uint64_t surrogatePlaybackItem_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v15 = *a4;
  v16 = *(a4 + 2);
  FigCFDictionarySetCMTime();
  v15 = *a5;
  v16 = *(a5 + 2);
  FigCFDictionarySetCMTime();
  v13 = *a2;
  v14 = *(a2 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (v10)
  {
    v15 = v13;
    v16 = v14;
    v11 = v10(a1, &v15, Mutable);
    if (!Mutable)
    {
      return v11;
    }

    goto LABEL_5;
  }

  v11 = 4294954514;
  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v11;
}

const void *surrogatePlaybackItem_copyPropertyFromCacheInternal(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 1) || *result)
  {
    goto LABEL_9;
  }

  v3 = *(result + 8);
  if (!v3)
  {
    result = CFDictionaryGetValue(*(result + 16), *(a1 + 8));
    if (!result)
    {
      v4 = -12784;
LABEL_10:
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_11;
    }

    if (result != *MEMORY[0x1E695E738])
    {
      result = CFRetain(result);
      v4 = 0;
      *(a1 + 16) = result;
      *(a1 + 24) = 0;
      goto LABEL_11;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  result = CFRetain(v3);
  v4 = 0;
LABEL_11:
  *(a1 + 32) = v4;
  return result;
}

void surrogatePlaybackItem_MakeReadyForInspectionInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(a1 + 16) = v3;
  }

  else
  {
    v6 = DerivedStorage;
    Mutable = *(DerivedStorage + 112);
    if (Mutable || (v8 = CFGetAllocator(*a1), Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]), (*(v6 + 112) = Mutable) != 0))
    {
      v9 = *(a1 + 8);
      if (v9)
      {
        v12.length = CFArrayGetCount(*(a1 + 8));
        v12.location = 0;
        CFArrayAppendArray(Mutable, v9, v12);
      }
    }

    v10 = surrogatePlaybackItem_copyOwningPlayer();
    v5 = v10;
    if (v10)
    {
      v11 = surrogatePlayer_deferInitiateLoadingOfItemAssetType(v10, *a1, 0);
    }

    else
    {
      v11 = FigSignalErrorAtGM();
    }

    v4 = v11;
  }

  surrogatePlayer_deferReleaseToSafeQ(v5);
  *(a1 + 24) = v4;
}

uint64_t surrogatePlayer_SetRateWithFade(uint64_t a1, float a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v5)
  {
    v6 = v5(a1, Mutable, a2);
    if (!Mutable)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = 4294954514;
  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v6;
}

CFIndex surrogatePlayer_initiateEnqueueingOfCurrentItemIfNeeded_internal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 56));
  if (result >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), 0);
    result = CMBaseObjectGetDerivedStorage();
    if (!*(result + 162) && !*(result + 160))
    {
      if (dword_1EAF17870)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      result = surrogatePlayer_deferInitiateLoadingOfItemAssetType(v2, ValueAtIndex, 1);
    }
  }

  *(a1 + 8) = 0;
  return result;
}

void surrogatePlayer_startPrerollInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    surrogatePlayer_startPrerollInternal_cold_1(context);
    goto LABEL_10;
  }

  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 56);
  if (!v4 || CFArrayGetCount(v4) <= 0)
  {
    surrogatePlayer_startPrerollInternal_cold_3(context);
LABEL_10:
    v8 = context[0];
    goto LABEL_8;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 56), 0);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    surrogatePlayer_startPrerollInternal_cold_2(context);
    goto LABEL_10;
  }

  v7 = Mutable;
  v8 = FigCFDictionarySetFloat32();
  if (!v8)
  {
    FigCFDictionarySetInt32();
    v9 = CMBaseObjectGetDerivedStorage();
    context[0] = ValueAtIndex;
    context[1] = @"StartPreroll";
    context[2] = v7;
    dispatch_sync_f(*(v9 + 144), context, surrogatePlaybackItem_setPropertyToBeAppliedOnceWhenRealItemBecomesReadyInternal);
  }

  CFRelease(v7);
LABEL_8:
  *(a1 + 16) = v8;
}

void surrogatePlaybackItem_setPropertyToBeAppliedOnceWhenRealItemBecomesReadyInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionarySetValue(*(DerivedStorage + 120), *(a1 + 8), *(a1 + 16));
  if (*(DerivedStorage + 64) && *(DerivedStorage + 162))
  {
    v3 = *a1;

    surrogatePlaybackItem_applyPropertiesToBeAppliedOnceWhenRealItemBecomesCurrentInternal(v3);
  }
}

uint64_t surrogatePlaybackItem_reportAttemptToWriteToReadOnlyTimebase()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

CFTypeRef surrogatePlaybackItem_updateOwningPlayer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3[2];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(DerivedStorage + 24);
  v3[2] = v5;
  dispatch_retain(v5);
  v6 = v3[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(DerivedStorage + 72);
  v3[3] = v7;
  dispatch_retain(v7);
  v8 = v3[9];
  result = *(a1 + 8);
  v3[9] = result;
  v3[10] = v8;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void OUTLINED_FUNCTION_2_163(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char context)
{
  v11 = *(a1 + 64);

  dispatch_sync_f(v11, &context, surrogatePlayer_setPropertyInCacheInternal);
}

uint64_t OUTLINED_FUNCTION_11_64()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_20_34()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_21_35()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_33_27()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_35_23()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_38_20(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, os_log_type_t type, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_49_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char context)
{

  dispatch_sync_f(a1, &context, v10);
}

uint64_t OUTLINED_FUNCTION_63_13()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_76_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = v13;
  a10 = v12;
  a12 = v14;

  return surrogatePlayer_removeItemFromPlayQueueInternal(&a10);
}

BOOL OUTLINED_FUNCTION_94_6(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_type_t type, int a13, int a14)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_96_5(uint64_t a1, CFRange a2)
{
  a2.location = 0;

  CFArrayApplyFunction(v3, a2, v2, 0);
}

uint64_t OUTLINED_FUNCTION_97_8()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FigMetricItemInitialLikelyToKeepUpEventCreate(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, double a9, const void *a10, void *a11)
{
  ensureMetricEventTrace();
  if (a11)
  {
    FigMetricEventGetClassID();
    v20 = CMDerivedObjectCreate();
    if (!v20)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v22 = FigSimpleMutexCreate();
      *(DerivedStorage + 104) = v22;
      if (v22)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 5;
        if (a3)
        {
          v23 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v23 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v23;
        v25 = *a2;
        *(DerivedStorage + 40) = *(a2 + 2);
        *(DerivedStorage + 24) = v25;
        if (a4)
        {
          v26 = CFRetain(a4);
        }

        else
        {
          v26 = 0;
        }

        *(DerivedStorage + 48) = v26;
        if (a5)
        {
          v27 = CFRetain(a5);
        }

        else
        {
          v27 = 0;
        }

        *(DerivedStorage + 56) = v27;
        *(DerivedStorage + 64) = a9;
        if (a6)
        {
          v28 = CFRetain(a6);
        }

        else
        {
          v28 = 0;
        }

        *(DerivedStorage + 72) = v28;
        if (a7)
        {
          v29 = CFRetain(a7);
        }

        else
        {
          v29 = 0;
        }

        *(DerivedStorage + 80) = v29;
        if (a8)
        {
          v30 = CFRetain(a8);
        }

        else
        {
          v30 = 0;
        }

        *(DerivedStorage + 88) = v30;
        if (a10)
        {
          v31 = CFRetain(a10);
        }

        else
        {
          v31 = 0;
        }

        v20 = 0;
        *(DerivedStorage + 96) = v31;
        *a11 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemInitialLikelyToKeepUpEventCreate_cold_1(&v33);
    return v33;
  }

  return v20;
}

uint64_t FigMetricItemLikelyToKeepUpEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, void *a7, double a8)
{
  ensureMetricEventTrace();
  if (a7)
  {
    FigMetricEventGetClassID();
    v16 = CMDerivedObjectCreate();
    if (!v16)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v18 = FigSimpleMutexCreate();
      *(DerivedStorage + 104) = v18;
      if (v18)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 6;
        if (a3)
        {
          v19 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v19 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v19;
        v21 = *a2;
        *(DerivedStorage + 40) = *(a2 + 2);
        *(DerivedStorage + 24) = v21;
        if (a4)
        {
          v22 = CFRetain(a4);
        }

        else
        {
          v22 = 0;
        }

        *(DerivedStorage + 48) = v22;
        if (a5)
        {
          v23 = CFRetain(a5);
        }

        else
        {
          v23 = 0;
        }

        *(DerivedStorage + 56) = v23;
        *(DerivedStorage + 64) = a8;
        if (a6)
        {
          v24 = CFRetain(a6);
        }

        else
        {
          v24 = 0;
        }

        v16 = 0;
        *(DerivedStorage + 72) = v24;
        *a7 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemLikelyToKeepUpEventCreateInternal_cold_1(&v26);
    return v26;
  }

  return v16;
}

uint64_t FigMetricItemInternalInitialLikelyToKeepUpEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, void *a7, double a8)
{
  ensureMetricEventTrace();
  if (a7)
  {
    FigMetricEventGetClassID();
    v16 = CMDerivedObjectCreate();
    if (!v16)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v18 = FigSimpleMutexCreate();
      *(DerivedStorage + 104) = v18;
      if (v18)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 4;
        if (a3)
        {
          v19 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v19 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v19;
        v21 = *a2;
        *(DerivedStorage + 40) = *(a2 + 2);
        *(DerivedStorage + 24) = v21;
        if (a4)
        {
          v22 = CFRetain(a4);
        }

        else
        {
          v22 = 0;
        }

        *(DerivedStorage + 48) = v22;
        if (a5)
        {
          v23 = CFRetain(a5);
        }

        else
        {
          v23 = 0;
        }

        *(DerivedStorage + 56) = v23;
        *(DerivedStorage + 64) = a8;
        if (a6)
        {
          v24 = CFRetain(a6);
        }

        else
        {
          v24 = 0;
        }

        v16 = 0;
        *(DerivedStorage + 72) = v24;
        *a7 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemInternalInitialLikelyToKeepUpEventCreateInternal_cold_1(&v26);
    return v26;
  }

  return v16;
}

uint64_t meiltku_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[7];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[9];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[10];
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

  v6 = DerivedStorage[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[6];
  if (v7)
  {
    CFRelease(v7);
  }

  return FigSimpleMutexDestroy();
}

uint64_t meiltku_setImmutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t meiltku_isMutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

CFTypeRef meiltku_copySessionID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 48);
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

uint64_t meiltku_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 48);
    *(DerivedStorage + 48) = a2;
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
    meiltku_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t meiltku_getMediaTime@<X0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a1 = *(DerivedStorage + 24);
  *(a1 + 16) = *(DerivedStorage + 40);

  return FigSimpleMutexUnlock();
}

uint64_t meiltku_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 40) = *(a2 + 2);
    *(DerivedStorage + 24) = v5;
  }

  else
  {
    meiltku_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t meiltku_serialize(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    v49 = 315;
LABEL_79:
    meiltku_serialize_cold_4(v49, &v51);
    v36 = v51;
    goto LABEL_53;
  }

  if (!a2)
  {
    v49 = 316;
    goto LABEL_79;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 40) + 24);
  if (v4 && (v5 = v4(a1)) != 0)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 40) + 32);
  if (v7 && (v8 = v7(a1)) != 0)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 40) + 40);
  if (v10 && (v11 = v10(a1)) != 0)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  empty = xpc_array_create_empty();
  v14 = xpc_array_create_empty();
  v15 = xpc_array_create_empty();
  v16 = v15;
  if (!empty)
  {
    meiltku_serialize_cold_3();
LABEL_83:
    v36 = 0;
    goto LABEL_47;
  }

  if (!v14)
  {
    meiltku_serialize_cold_2();
    goto LABEL_83;
  }

  if (!v15)
  {
    meiltku_serialize_cold_1();
    goto LABEL_83;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 40) + 8);
  if (v17)
  {
    v18 = v17(a1);
  }

  else
  {
    v18 = 0;
  }

  v19 = FigAlternateCopyAsXPCObject(v18, &value);
  if (v19)
  {
    goto LABEL_76;
  }

  v50 = a2;
  v20 = 0;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_23:
  for (i = CFArrayGetCount(v6); v20 < i; i = 0)
  {
    v22 = xpc_dictionary_create_empty();
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v24 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v24)
    {
LABEL_46:
      v36 = 4294954514;
      goto LABEL_47;
    }

    v25 = v24(ValueAtIndex, v22);
    if (v25)
    {
LABEL_86:
      v36 = v25;
      goto LABEL_47;
    }

    xpc_array_append_value(empty, v22);
    FigXPCRelease();
    ++v20;
    if (v6)
    {
      goto LABEL_23;
    }

LABEL_24:
    ;
  }

  v26 = 0;
  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_31:
  for (j = CFArrayGetCount(v9); v26 < j; j = 0)
  {
    v28 = xpc_dictionary_create_empty();
    v29 = FigCFArrayGetValueAtIndex();
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v30)
    {
      goto LABEL_46;
    }

    v25 = v30(v29, v28);
    if (v25)
    {
      goto LABEL_86;
    }

    xpc_array_append_value(v14, v28);
    FigXPCRelease();
    ++v26;
    if (v9)
    {
      goto LABEL_31;
    }

LABEL_32:
    ;
  }

  v31 = 0;
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_39:
  for (k = CFArrayGetCount(v12); v31 < k; k = 0)
  {
    v33 = xpc_dictionary_create_empty();
    v34 = FigCFArrayGetValueAtIndex();
    v35 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v35)
    {
      goto LABEL_46;
    }

    v25 = v35(v34, v33);
    if (v25)
    {
      goto LABEL_86;
    }

    xpc_array_append_value(v16, v33);
    FigXPCRelease();
    ++v31;
    if (v12)
    {
      goto LABEL_39;
    }

LABEL_40:
    ;
  }

  v38 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v38)
  {
    v39 = v50;
    v40 = v38(a1);
  }

  else
  {
    v40 = -12782;
    v39 = v50;
  }

  xpc_dictionary_set_int64(v39, "EventID", v40);
  v41 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v41)
  {
    v41(&v51, a1);
  }

  else
  {
    v51 = *MEMORY[0x1E6960C70];
    v52 = *(MEMORY[0x1E6960C70] + 16);
  }

  v19 = FigXPCMessageSetCMTime();
  if (v19)
  {
    goto LABEL_76;
  }

  v42 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v42)
  {
    v42(a1);
  }

  v19 = FigXPCMessageSetCFDate();
  if (v19)
  {
LABEL_76:
    v36 = v19;
    goto LABEL_47;
  }

  v43 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v43)
  {
    v44 = v43(a1);
  }

  else
  {
    v44 = 0;
  }

  v45 = FigXPCMessageSetCFString();
  if (v45)
  {
    v36 = v45;
    if (v44)
    {
LABEL_75:
      CFRelease(v44);
    }
  }

  else
  {
    v46 = *(*(CMBaseObjectGetVTable() + 40) + 48);
    v47.n128_u64[0] = 0;
    if (v46)
    {
      v47.n128_f64[0] = v46(a1, v47);
    }

    xpc_dictionary_set_double(v39, "TimeTaken", v47.n128_f64[0]);
    v48 = *(*(CMBaseObjectGetVTable() + 40) + 16);
    if (v48)
    {
      v48(a1);
    }

    v36 = FigXPCMessageSetCFArray();
    if (!v36)
    {
      xpc_dictionary_set_value(v39, "Variant", value);
      xpc_dictionary_set_value(v39, "MediaPlaylistRequestEvents", empty);
      xpc_dictionary_set_value(v39, "MediaSegmentRequestEvents", v14);
      xpc_dictionary_set_value(v39, "ContentKeyRequestEvents", v16);
    }

    if (v44)
    {
      goto LABEL_75;
    }
  }

LABEL_47:
  FigXPCRelease();
  if (v6)
  {
    CFRelease(v6);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_53:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  return v36;
}

uint64_t FigCLCPCaptionGroupConverterFromSampleBufferCreate(_OWORD *a1, const void *a2, void *a3)
{
  v10 = 0;
  if (!a1)
  {
    FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_2(&v11);
    return v11;
  }

  FigCaptionGroupConverterFromSampleBufferGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_1(v6, &v10, &v11);
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *DerivedStorage = v8;
  *(DerivedStorage + 72) = *a1;
  *(DerivedStorage + 88) = 1;
  *a3 = v10;
  return result;
}

void clcpcgcfsb_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  clcpcgcfsbCaptionSlicerRelease(*DerivedStorage, *(DerivedStorage + 120));
  v1 = *(DerivedStorage + 152);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 152) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *clcpcgcfsb_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCLCPCaptionGroupConverterFromSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t clcpcgcfsb_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(@"FCGCFS_ShouldGenerateSpacingAttributeSpaceCharacters", a2))
      {
        v8 = MEMORY[0x1E695E4D0];
        if (!*(v7 + 88))
        {
          v8 = MEMORY[0x1E695E4C0];
        }

        v9 = CFRetain(*v8);
        result = 0;
        *a4 = v9;
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      clcpcgcfsb_CopyProperty_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    clcpcgcfsb_CopyProperty_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t clcpcgcfsb_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    if (CFEqual(@"FCGCFS_ShouldGenerateSpacingAttributeSpaceCharacters", a2))
    {
      if (a3 && (v7 = CFGetTypeID(a3), v7 == CFBooleanGetTypeID()))
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(v6 + 88) = Value;
      }

      else
      {
        clcpcgcfsb_SetProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      return 4294954512;
    }
  }

  else
  {
    clcpcgcfsb_SetProperty_cold_2(&v11);
    return v11;
  }

  return result;
}

void clcpcgcfsbCaptionSlicerRelease(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (ptr)
  {
    if (*ptr)
    {
      CFRelease(*ptr);
    }

    v4 = ptr[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = ptr[2];
    if (v5)
    {
      CFRelease(v5);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

__n128 clcpcgcfsbCaptionDecoderCallback(int a1, const __CFDictionary *a2, __n128 *a3)
{
  if (a1 == 7)
  {
    v13 = v3;
    v14 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(a2, @"C");
    v11 = *a3;
    v12 = a3[1].n128_u64[0];
    clcpcgcfsbOutputLastCaptionElements(DerivedStorage, &v11, Value);
    v9 = DerivedStorage[2].n128_u64[1];
    DerivedStorage[2].n128_u64[1] = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    result = *a3;
    DerivedStorage[2].n128_u64[0] = a3[1].n128_u64[0];
    DerivedStorage[1] = result;
  }

  return result;
}

uint64_t clcpcgcfsbGetCaptionMode(const __CFArray *a1, _DWORD *a2)
{
  if (a1 && CFArrayGetCount(a1) && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0), (Value = CFDictionaryGetValue(ValueAtIndex, @"R")) != 0) && (v6 = Value, CFArrayGetCount(Value)) && (v7 = CFArrayGetValueAtIndex(v6, 0)) != 0 && (v8 = v7, CFArrayGetCount(v7)) && (CFArrayGetValueAtIndex(v8, 0), !FigCFDictionaryGetInt32IfPresent()))
  {
    clcpcgcfsbGetCaptionMode_cold_1(&v10);
    return v10;
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataArray(const __CFArray *a1, int a2, CFAllocatorRef allocator, __CFArray **a4)
{
  if (!a1)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_28;
    }

LABEL_25:
    clcpcgcfsbCreateCaptionDataArray_cold_2(&value);
    return value;
  }

  v7 = a1;
  Count = CFArrayGetCount(a1);
  v9 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v9)
  {
    goto LABEL_25;
  }

  Mutable = v9;
  if (Count < 1)
  {
LABEL_28:
    v27 = 0;
    *a4 = Mutable;
    return v27;
  }

  v11 = 0;
  v31 = v7;
  v32 = v9;
  v30 = Count;
  v29 = a4;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
    v13 = CFDictionaryGetValue(ValueAtIndex, @"R");
    if (v13)
    {
      break;
    }

    v17 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (v17)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (clcpcgcfsbCreateCaptionDataArray_cold_1(Mutable, &value))
    {
      v27 = value;
      goto LABEL_27;
    }

LABEL_20:
    if (++v11 == Count)
    {
      a4 = v29;
      goto LABEL_28;
    }
  }

  v14 = v13;
  v15 = CFArrayGetCount(v13);
  v16 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  if (v15 < 1)
  {
LABEL_19:
    v35.length = CFArrayGetCount(v17);
    v35.location = 0;
    CFArrayAppendArray(Mutable, v17, v35);
    CFRelease(v17);
    goto LABEL_20;
  }

  v33 = v11;
  v18 = 0;
  while (1)
  {
    v19 = CFArrayGetValueAtIndex(v14, v18);
    if (v19)
    {
      v20 = v19;
      v21 = CFArrayGetCount(v19);
      if (v21 >= 1)
      {
        break;
      }
    }

LABEL_16:
    if (++v18 == v15)
    {
      v7 = v31;
      Mutable = v32;
      Count = v30;
      v11 = v33;
      goto LABEL_19;
    }
  }

  v22 = v21;
  v23 = 0;
  while (1)
  {
    v24 = CFArrayGetValueAtIndex(v20, v23);
    value = 0;
    v25 = clcpcgcfsbCreateCaptionDataFromCommandData(v24, a2, 0, allocator, &value);
    if (v25)
    {
      break;
    }

    v26 = value;
    if (value)
    {
      CFArrayAppendValue(v17, value);
      CFRelease(v26);
    }

    if (v22 == ++v23)
    {
      goto LABEL_16;
    }
  }

  v27 = v25;
  CFRelease(v17);
  Mutable = v32;
LABEL_27:
  CFRelease(Mutable);
  return v27;
}

uint64_t clcpcgcfsbCreateCaptionDataFromCommandData(const __CFDictionary *a1, int a2, int a3, const __CFAllocator *a4, void *a5)
{
  Value = CFDictionaryGetValue(a1, @"S");
  if (!Value || (v11 = Value, !CFAttributedStringGetLength(Value)))
  {
    v12 = 0;
    goto LABEL_48;
  }

  if (a2)
  {
    v12 = 0;
  }

  else
  {
    Length = CFAttributedStringGetLength(v11);
    MutableCopy = CFAttributedStringCreateMutableCopy(a4, Length, v11);
    v12 = MutableCopy;
    if (MutableCopy)
    {
      clcpcgcfsbCreateCaptionDataFromCommandData_cold_2(MutableCopy, &v86, 0, Length, v11);
    }

    else if (!clcpcgcfsbCreateCaptionDataFromCommandData_cold_1(&v86, &longestEffectiveRange))
    {
      location_low = LODWORD(longestEffectiveRange.location);
      goto LABEL_115;
    }

    v11 = v12;
  }

  Mutable = FigCaptionDataCreateMutable();
  if (Mutable)
  {
    location_low = Mutable;
    goto LABEL_115;
  }

  String = CFAttributedStringGetString(v11);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v15)
  {
    location_low = 4294954514;
    goto LABEL_115;
  }

  v85 = a5;
  v16 = v15(0, String);
  if (v16)
  {
    location_low = v16;
    goto LABEL_115;
  }

  v17 = CFAttributedStringGetLength(v11);
  v93 = 0;
  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  Limit = FigCFRangeGetLimit();
  if (Limit < FigCFRangeGetLimit())
  {
    v19 = *MEMORY[0x1E69614E8];
    while (1)
    {
      v20 = FigCFRangeGetLimit();
      v94.location = 0;
      v94.length = v17;
      if (CFAttributedStringGetAttributeAndLongestEffectiveRange(v11, v20, @"t", v94, &longestEffectiveRange))
      {
        if (v93)
        {
          CFRelease(v93);
          v93 = 0;
        }

        v21 = FigCaptionDynamicStyleCreate();
        if (v21)
        {
          break;
        }

        v22 = v93;
        location = longestEffectiveRange.location;
        v24 = longestEffectiveRange.length;
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v25)
        {
LABEL_50:
          location_low = 4294954514;
          goto LABEL_51;
        }

        v21 = v25(0, v19, v22, location, v24);
        if (v21)
        {
          break;
        }
      }

      v26 = FigCFRangeGetLimit();
      if (v26 >= FigCFRangeGetLimit())
      {
        goto LABEL_17;
      }
    }

LABEL_124:
    location_low = v21;
    goto LABEL_51;
  }

LABEL_17:
  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  v27 = FigCFRangeGetLimit();
  if (v27 < FigCFRangeGetLimit())
  {
    v28 = *MEMORY[0x1E6961458];
    do
    {
      v29 = FigCFRangeGetLimit();
      v95.location = 0;
      v95.length = v17;
      if (CFAttributedStringGetAttributeAndLongestEffectiveRange(v11, v29, @"b", v95, &longestEffectiveRange))
      {
        if (v93)
        {
          CFRelease(v93);
          v93 = 0;
        }

        v21 = FigCaptionDynamicStyleCreate();
        if (v21)
        {
          goto LABEL_124;
        }

        v30 = v93;
        v31 = longestEffectiveRange.location;
        v32 = longestEffectiveRange.length;
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v33)
        {
          goto LABEL_50;
        }

        v21 = v33(0, v28, v30, v31, v32);
        if (v21)
        {
          goto LABEL_124;
        }
      }

      v34 = FigCFRangeGetLimit();
    }

    while (v34 < FigCFRangeGetLimit());
  }

  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  v35 = FigCFRangeGetLimit();
  if (v35 < FigCFRangeGetLimit())
  {
    v83 = *MEMORY[0x1E6961480];
    do
    {
      v36 = FigCFRangeGetLimit();
      v96.location = 0;
      v96.length = v17;
      if (CFAttributedStringGetAttributeAndLongestEffectiveRange(v11, v36, @"i", v96, &longestEffectiveRange))
      {
        FigCFEqual();
        if (v93)
        {
          CFRelease(v93);
          v93 = 0;
        }

        v21 = FigCaptionDynamicStyleCreate();
        if (v21)
        {
          goto LABEL_124;
        }

        v37 = v93;
        v39 = longestEffectiveRange.location;
        v38 = longestEffectiveRange.length;
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v40)
        {
          goto LABEL_50;
        }

        v21 = v40(0, v83, v37, v39, v38);
        if (v21)
        {
          goto LABEL_124;
        }
      }

      v41 = FigCFRangeGetLimit();
    }

    while (v41 < FigCFRangeGetLimit());
  }

  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  v42 = FigCFRangeGetLimit();
  if (v42 >= FigCFRangeGetLimit())
  {
LABEL_46:
    location_low = 0;
    goto LABEL_51;
  }

  v84 = *MEMORY[0x1E6961460];
  while (1)
  {
    v43 = FigCFRangeGetLimit();
    v97.location = 0;
    v97.length = v17;
    if (!CFAttributedStringGetAttributeAndLongestEffectiveRange(v11, v43, @"u", v97, &longestEffectiveRange))
    {
      goto LABEL_45;
    }

    FigCFEqual();
    SInt32 = FigCFNumberCreateSInt32();
    if (!SInt32)
    {
      break;
    }

    v45 = SInt32;
    if (v93)
    {
      CFRelease(v93);
      v93 = 0;
    }

    v46 = FigCaptionDynamicStyleCreate();
    if (v46)
    {
LABEL_128:
      location_low = v46;
      goto LABEL_123;
    }

    v47 = v93;
    v49 = longestEffectiveRange.location;
    v48 = longestEffectiveRange.length;
    v50 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v50)
    {
      location_low = 4294954514;
LABEL_123:
      CFRelease(v45);
      goto LABEL_51;
    }

    v46 = v50(0, v84, v47, v49, v48);
    if (v46)
    {
      goto LABEL_128;
    }

    CFRelease(v45);
LABEL_45:
    v51 = FigCFRangeGetLimit();
    if (v51 >= FigCFRangeGetLimit())
    {
      goto LABEL_46;
    }
  }

  clcpcgcfsbCreateCaptionDataFromCommandData_cold_3(&v92);
  location_low = v92;
LABEL_51:
  a5 = v85;
  if (v93)
  {
    CFRelease(v93);
  }

  if (location_low)
  {
    goto LABEL_115;
  }

  v90 = 0;
  v89 = 0;
  v88 = 0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    clcpcgcfsbCreateCaptionDataFromCommandData_cold_8(&longestEffectiveRange);
    goto LABEL_133;
  }

  if (!CFDictionaryGetValue(a1, @"L"))
  {
    clcpcgcfsbCreateCaptionDataFromCommandData_cold_7(&longestEffectiveRange);
    goto LABEL_133;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    clcpcgcfsbCreateCaptionDataFromCommandData_cold_6(&longestEffectiveRange);
    goto LABEL_133;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    clcpcgcfsbCreateCaptionDataFromCommandData_cold_5(&longestEffectiveRange);
    goto LABEL_133;
  }

  if (v90 > 1)
  {
    if (v90 == 3)
    {
      LODWORD(v88) = 1;
      v53 = MEMORY[0x1E6961160];
      goto LABEL_70;
    }

    if (v90 != 2)
    {
      goto LABEL_66;
    }

LABEL_65:
    LODWORD(v88) = 1;
    v53 = MEMORY[0x1E6961168];
LABEL_70:
    v54 = MEMORY[0x1E6961280];
LABEL_71:
    v55 = *v53;
    v56 = *v54;
    if (a3)
    {
      ++v89;
    }

    CFGetAllocator(0);
    longestEffectiveRange.location = 0;
    v92 = 0;
    v93 = 0;
    v91 = 0;
    v57 = FigCaptionGeometryCopyCellBasedPointAsDictionary();
    if (v57)
    {
      v58 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary();
      if (v58)
      {
        v59 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary();
        if (v59)
        {
          v60 = v59;
          v61 = FigCaptionDynamicStyleCreate();
          if (v61 || (v61 = FigCaptionDynamicStyleCreate(), v61) || (v61 = FigCaptionDynamicStyleCreate(), v61))
          {
            location_low = v61;
            goto LABEL_90;
          }

          v62 = FigCaptionRegionCreateMutable();
          if (!v62)
          {
            v63 = longestEffectiveRange.location;
            CMBaseObject = FigCaptionRegionGetCMBaseObject();
            v65 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v65)
            {
              goto LABEL_89;
            }

            v62 = v65(CMBaseObject, *MEMORY[0x1E6961390], v63);
            if (!v62)
            {
              v66 = v93;
              v67 = FigCaptionRegionGetCMBaseObject();
              v68 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v68)
              {
                goto LABEL_89;
              }

              v62 = v68(v67, *MEMORY[0x1E6961328], v66);
              if (!v62)
              {
                v69 = v92;
                v70 = FigCaptionRegionGetCMBaseObject();
                v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v71)
                {
                  goto LABEL_89;
                }

                v62 = v71(v70, *MEMORY[0x1E69613B0], v69);
                if (!v62)
                {
                  v72 = FigCaptionRegionGetCMBaseObject();
                  v73 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v73)
                  {
                    location_low = v73(v72, *MEMORY[0x1E69612E0], v56);
                    if (!location_low)
                    {
                      v74 = v91;
                      v91 = 0;
                      goto LABEL_93;
                    }

LABEL_90:
                    if (v91)
                    {
                      CFRelease(v91);
                    }

                    v74 = 0;
LABEL_93:
                    if (v92)
                    {
                      CFRelease(v92);
                    }

                    if (v93)
                    {
                      CFRelease(v93);
                    }

                    if (longestEffectiveRange.location)
                    {
                      CFRelease(longestEffectiveRange.location);
                    }

                    if (v60)
                    {
                      CFRelease(v60);
                    }

                    if (v58)
                    {
                      CFRelease(v58);
                    }

                    if (v57)
                    {
                      CFRelease(v57);
                    }

                    a5 = v85;
                    if (!location_low)
                    {
                      v75 = FigCaptionDataGetCMBaseObject();
                      v76 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v76)
                      {
                        v77 = v76(v75, *MEMORY[0x1E6961240], v74);
                        if (v77)
                        {
LABEL_110:
                          location_low = v77;
                          goto LABEL_112;
                        }

                        v78 = FigCaptionDataGetCMBaseObject();
                        v79 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                        if (v79)
                        {
                          v77 = v79(v78, *MEMORY[0x1E6961200], v55);
                          goto LABEL_110;
                        }
                      }

                      location_low = 4294954514;
                    }

LABEL_112:
                    if (v74)
                    {
                      CFRelease(v74);
                    }

                    if (!location_low)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_115;
                  }

LABEL_89:
                  location_low = 4294954514;
                  goto LABEL_90;
                }
              }
            }
          }

          location_low = v62;
          goto LABEL_90;
        }
      }
    }

    else
    {
      v58 = 0;
    }

    fig_log_get_emitter();
    location_low = FigSignalErrorAtGM();
    v60 = 0;
    goto LABEL_90;
  }

  if (!v90)
  {
    goto LABEL_65;
  }

  if (v90 != 1)
  {
LABEL_66:
    fig_log_get_emitter();
    location_low = FigSignalErrorAtGM();
    goto LABEL_67;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    v53 = MEMORY[0x1E6961160];
    v54 = MEMORY[0x1E6961288];
    goto LABEL_71;
  }

  clcpcgcfsbCreateCaptionDataFromCommandData_cold_4(&longestEffectiveRange);
LABEL_133:
  location_low = LODWORD(longestEffectiveRange.location);
LABEL_67:
  if (!location_low)
  {
LABEL_48:
    location_low = 0;
    *a5 = 0;
  }

LABEL_115:
  if (v12)
  {
    CFRelease(v12);
  }

  return location_low;
}

uint64_t clcpcgcfsbCaptionSlicerCreate(const __CFAllocator *a1, CFTypeRef **a2)
{
  v4 = MEMORY[0x19A8CC720](a1, 24, 0x20040960023A9, 0);
  v5 = v4;
  if (!v4)
  {
    clcpcgcfsbCaptionSlicerCreate_cold_4(&v11);
LABEL_11:
    v9 = v11;
    goto LABEL_6;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *v5 = Mutable;
  if (!Mutable)
  {
    clcpcgcfsbCaptionSlicerCreate_cold_3(&v11);
    goto LABEL_11;
  }

  v7 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v5[1] = v7;
  if (!v7)
  {
    clcpcgcfsbCaptionSlicerCreate_cold_2(&v11);
    goto LABEL_11;
  }

  v8 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v5[2] = v8;
  if (!v8)
  {
    clcpcgcfsbCaptionSlicerCreate_cold_1(&v11);
    goto LABEL_11;
  }

  v9 = 0;
  *a2 = v5;
  v5 = 0;
LABEL_6:
  clcpcgcfsbCaptionSlicerRelease(a1, v5);
  return v9;
}

uint64_t clcpcgcfsbCreateCaptionDataRowNumberArray(const __CFArray *a1, CFAllocatorRef allocator, CFMutableArrayRef *a3)
{
  if (!a1)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_9;
    }

LABEL_12:
    clcpcgcfsbCreateCaptionDataRowNumberArray_cold_1(&v15);
    return v15;
  }

  Count = CFArrayGetCount(a1);
  v7 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
  if (!v7)
  {
    goto LABEL_12;
  }

  Mutable = v7;
  if (Count < 1)
  {
LABEL_9:
    v12 = 0;
    *a3 = Mutable;
    return v12;
  }

  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    v14 = 0;
    PositionFromCaptionData = clcpcgcfsbGetPositionFromCaptionData(ValueAtIndex, &v14);
    if (PositionFromCaptionData)
    {
      break;
    }

    FigCFArrayAppendInt32();
    if (Count == ++v9)
    {
      goto LABEL_9;
    }
  }

  v12 = PositionFromCaptionData;
  CFRelease(Mutable);
  return v12;
}

uint64_t clcpcgcfsbGetFirstNewRowNumber(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v4 = *MEMORY[0x1E695E480];
  if (a2)
  {
    v5 = CFArrayGetCount(a2);
  }

  else
  {
    v5 = 0;
  }

  MutableCopy = CFArrayCreateMutableCopy(v4, v5, a2);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        FigCFArrayGetInt32AtIndex();
        if (CFArrayGetCount(v7) >= 1)
        {
          FigCFArrayGetInt32AtIndex();
          CFArrayRemoveValueAtIndex(v7, 0);
        }
      }
    }

    FigCFArrayGetInt32AtIndex();
    CFRelease(v7);
    return 0;
  }

  else
  {
    clcpcgcfsbGetFirstNewRowNumber_cold_1(&v10);
    return v10;
  }
}

uint64_t clcpcgcfsbCopyCaptionDataOnRowNumber(const __CFArray *a1, int a2, void *a3)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      v12 = 0;
      result = clcpcgcfsbGetPositionFromCaptionData(ValueAtIndex, &v12);
      if (result)
      {
        break;
      }

      if (v12 == a2)
      {
        goto LABEL_8;
      }

      if (v7 == ++v8)
      {
        ValueAtIndex = 0;
LABEL_8:
        if (!ValueAtIndex)
        {
          goto LABEL_10;
        }

        v11 = CFRetain(ValueAtIndex);
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
LABEL_11:
    result = 0;
    *a3 = v11;
  }

  return result;
}

const __CFArray *clcpcgcfsbCaptionSlicerGetNumCaptionDataWithStartAndEndTime(const __CFArray **a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = CFArrayGetCount(v4);
  }

  else
  {
    v5 = 0;
  }

  result = a1[2];
  if (result)
  {
    result = CFArrayGetCount(result);
  }

  if (v5 >= Count)
  {
    v7 = Count;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < result)
  {
    return v7;
  }

  return result;
}

uint64_t clcpcgcfsbCaptionSlicerCompareSliceTime(const __CFDictionary *a1, const __CFDictionary *a2)
{
  memset(&v7, 0, sizeof(v7));
  CMTimeMakeFromDictionary(&v7, a1);
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeFromDictionary(&v6, a2);
  time1 = v7;
  v4 = v6;
  return CMTimeCompare(&time1, &v4);
}

uint64_t clcpcgcfsbCreateBottomLineCaptionData(const __CFArray *a1, int a2, int a3, const __CFAllocator *a4, void *a5)
{
  if (a1 && (Count = CFArrayGetCount(a1), v21 = 0, Count) && (v11 = CFArrayGetValueAtIndex(a1, Count - 1), (Value = CFDictionaryGetValue(v11, @"R")) != 0) && (v13 = Value, (v14 = CFArrayGetCount(Value)) != 0) && (v15 = CFArrayGetValueAtIndex(v13, v14 - 1)) != 0 && (v16 = v15, (v17 = CFArrayGetCount(v15)) != 0))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v16, v17 - 1);
    result = clcpcgcfsbCreateCaptionDataFromCommandData(ValueAtIndex, a2, a3, a4, &v21);
    if (result)
    {
      return result;
    }

    v20 = v21;
  }

  else
  {
    v20 = 0;
  }

  result = 0;
  *a5 = v20;
  return result;
}

CMTimeRange *OUTLINED_FUNCTION_4_131(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *duration, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 durationa, uint64_t duration_16, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v24 - 176) = a19;
  *(v24 - 160) = a20;
  durationa = *(v24 - 112);
  duration_16 = *(v24 - 96);

  return CMTimeRangeMake(&a24, (v24 - 176), &durationa);
}

uint64_t OUTLINED_FUNCTION_6_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, __int128 time2a, uint64_t time2_16, uint64_t a28, CMTime *time1, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int128 time1a, uint64_t time1_16)
{
  time1a = *(v39 - 144);
  time1_16 = *(v39 - 128);
  time2a = a31;
  time2_16 = a32;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_7_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 time2a, uint64_t time2_16, uint64_t a29, CMTime *time1, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, uint64_t a37, uint64_t a38, __int128 time1a, uint64_t time1_16)
{
  time1a = a36;
  time1_16 = a37;
  time2a = *(v40 - 144);
  time2_16 = *(v40 - 128);

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_11_65()
{
  result = v0[1];
  v0[8] = result;
  v0[9].n128_u64[0] = v0[2].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_12_62()
{
  result = *v0;
  *(v1 - 120) = 0;
  return result;
}

const void *OUTLINED_FUNCTION_13_48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29)
{

  return CFArrayGetValueAtIndex(v30, v29);
}

uint64_t OUTLINED_FUNCTION_14_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  a27 = 0;

  return clcpcgcfsbGetCaptionMode(v27, &a27);
}

CMTime *OUTLINED_FUNCTION_15_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CMTime *lhs, uint64_t a14, uint64_t a15, uint64_t a16, CMTime *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a24, CMTime *rhs, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t rhsa)
{

  return CMTimeSubtract(&a27, &lhsa, &rhsa);
}

__n128 OUTLINED_FUNCTION_17_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a27, unint64_t a28)
{
  result = a27;
  v28[1].n128_u64[0] = a28;
  *v28 = a27;
  return result;
}

__n128 OUTLINED_FUNCTION_18_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a27, uint64_t a28)
{
  result = a27;
  *(v28 - 176) = a27;
  *(v28 - 160) = a28;
  return result;
}

CMTime *OUTLINED_FUNCTION_21_36@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *lhs, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t lhsa)
{
  *(v20 - 160) = a1;

  return CMTimeSubtract((v20 - 112), &lhsa, (v20 - 176));
}

uint64_t OUTLINED_FUNCTION_22_34()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 88);
  v5 = *v0;

  return clcpcgcfsbCreateCaptionGroupWithoutSlice(v3, v4, v5, (v1 - 120));
}

uint64_t OUTLINED_FUNCTION_23_41()
{
  v5 = *(v0 + 40);

  return clcpcgcfsbCreateCaptionDataArray(v5, v1, v2, (v3 - 176));
}

uint64_t FigTTMLDocumentWriterCreateLineBreaker(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateLineBreaker_cold_2(&v7);
    return v7;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateLineBreaker_cold_1(&v7);
    return v7;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    *CMBaseObjectGetDerivedStorage() = a2;
    CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterLineBreaker_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterLineBreaker_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterLineBreaker_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterLineBreaker_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a2);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v5);
  lineEndIndex = 0;
  lineBeginIndex = 0;
  v17 = 0;
  if (Length < 1)
  {
    return 0;
  }

  v7 = Length;
  v8 = 0;
  v9.location = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  while (1)
  {
    v9.length = 1;
    CFStringGetLineBounds(v5, v9, &lineBeginIndex, &lineEndIndex, &v17);
    v12 = lineBeginIndex;
    v13 = v17;
    if (v10)
    {
      CFRelease(v10);
    }

    v21.length = v13 - v12;
    v21.location = v12;
    v10 = CFStringCreateWithSubstring(v11, v5, v21);
    if (v8)
    {
      started = FigTTMLDocumentWriterStartElement(*DerivedStorage, 6);
      if (started)
      {
        break;
      }

      started = FigTTMLDocumentWriterEndElement(*DerivedStorage);
      if (started)
      {
        break;
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (CFStringGetLength(v10))
    {
      started = FigCaptionDataCreate();
      if (started)
      {
        break;
      }

      started = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, cf);
      if (started)
      {
        break;
      }
    }

    v9.location = lineEndIndex;
    v8 = 1;
    if (v17 >= v7)
    {
      v15 = 0;
      goto LABEL_18;
    }
  }

  v15 = started;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v15;
}

uint64_t figTTMLDocumentWriterLineBreaker_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterLineBreaker_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

uint64_t surrogateAIG_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v1 = *DerivedStorage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __surrogateAIG_Invalidate_block_invoke;
  v8[3] = &unk_1E74949D0;
  v8[4] = &v9;
  v8[5] = DerivedStorage;
  dispatch_sync(v1, v8);
  v2 = v10[3];
  if (v2)
  {
    FigBaseObject = FigAssetImageGeneratorGetFigBaseObject(v2);
    if (FigBaseObject)
    {
      v4 = FigBaseObject;
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v6 = v5(v4);
      }

      else
      {
        v6 = 4294954514;
      }
    }

    else
    {
      v6 = 4294954516;
    }

    CFRelease(v10[3]);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

void surrogateAIG_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
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

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef surrogateAIG_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v3 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __surrogateAIG_CopyDebugDescription_block_invoke;
  block[3] = &unk_1E74949F8;
  block[4] = &v11;
  block[5] = DerivedStorage;
  dispatch_sync(v3, block);
  v4 = v12[3];
  if (v4)
  {
    v5 = CFCopyDescription(v4);
    if (*(DerivedStorage + 40))
    {
      v6 = " INVALIDATED";
    }

    else
    {
      v6 = "";
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SurrogateAIG %p for asset %@ wrapping AIG {%@}%s", a1, *(DerivedStorage + 8), v5, v6);
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v12[3]);
  }

  else
  {
    if (*(DerivedStorage + 40))
    {
      v8 = " INVALIDATED";
    }

    else
    {
      v8 = "";
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SurrogateAIG %p for asset %@ (has no subGenerator)%s", a1, *(DerivedStorage + 8), v8);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t surrogateAIG_CopyCGImageAtTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x2000000000;
  v28 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    surrogateAIG_CopyCGImageAtTime_cold_1(v27);
  }

  else
  {
    v13 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __surrogateAIG_CopyCGImageAtTime_block_invoke;
    block[3] = &unk_1E7494A48;
    block[4] = &v26;
    block[5] = &v22;
    block[6] = a1;
    block[7] = DerivedStorage;
    dispatch_sync(v13, block);
    v14 = v23[3];
    if (v14)
    {
      v19 = *a2;
      v20 = *(a2 + 2);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v15)
      {
        v29 = v19;
        v30 = v20;
        v16 = v15(v14, &v29, a3, a4, a5, a6);
      }

      else
      {
        v16 = -12782;
      }

      *(v27[0] + 24) = v16;
      CFRelease(v23[3]);
    }
  }

  v17 = *(v27[0] + 24);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v17;
}

uint64_t surrogateAIG_RequestCGImageAtTimeAsync(const void *a1, __int128 *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (*(DerivedStorage + 40))
  {
    surrogateAIG_RequestCGImageAtTimeAsync_cold_1(&v26);
    v13 = v26;
  }

  else
  {
    v9 = DerivedStorage;
    v10 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __surrogateAIG_RequestCGImageAtTimeAsync_block_invoke;
    block[3] = &unk_1E7494A70;
    block[4] = &v22;
    block[5] = v9;
    dispatch_sync(v10, block);
    v11 = v23[3];
    if (v11)
    {
      v19 = *a2;
      v20 = *(a2 + 2);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v12)
      {
        v26 = v19;
        v27 = v20;
        v13 = v12(v11, &v26, a3, a4);
      }

      else
      {
        v13 = 4294954514;
      }

      CFRelease(v23[3]);
    }

    else
    {
      CFRetain(a1);
      if (a3)
      {
        CFRetain(a3);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v14 = *v9;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __surrogateAIG_RequestCGImageAtTimeAsync_block_invoke_2;
      v16[3] = &__block_descriptor_tmp_15_6;
      v17 = *a2;
      v18 = *(a2 + 2);
      v16[4] = a1;
      v16[5] = a3;
      v16[6] = a4;
      dispatch_async(v14, v16);
      v13 = 0;
    }
  }

  _Block_object_dispose(&v22, 8);
  return v13;
}

uint64_t surrogateAIG_CancelAllCGImageAsyncRequests()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (*(DerivedStorage + 40))
  {
    surrogateAIG_CancelAllCGImageAsyncRequests_cold_1(&v10);
    v2 = v10;
  }

  else
  {
    v1 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __surrogateAIG_CancelAllCGImageAsyncRequests_block_invoke;
    block[3] = &unk_1E7494AB8;
    block[4] = &v6;
    block[5] = DerivedStorage;
    dispatch_sync(v1, block);
    v2 = v7[3];
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v3)
      {
        v2 = v3(v2);
      }

      else
      {
        v2 = 4294954514;
      }

      CFRelease(v7[3]);
    }
  }

  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t surrogateAIG_SetSavedPropertyOnSubGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigAssetImageGeneratorGetFigBaseObject(a3);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(FigBaseObject, a1, a2);
  }

  return result;
}

uint64_t FigVirtualFramebufferGetMaxCount()
{
  if (qword_1ED4CB980 != -1)
  {
    FigVirtualFramebufferGetMaxCount_cold_1();
  }

  if (_MergedGlobals_124 != 1)
  {
    return 1;
  }

  if (qword_1ED4CB988 != -1)
  {
    FigVirtualFramebufferGetMaxCount_cold_2();
  }

  return fvfbserv_getVirtualFramebufMaxCount_maxCount;
}

uint64_t FigVirtualFramebufferGetFramebufs(void *__dst, unint64_t a2)
{
  if (qword_1ED4CB980 != -1)
  {
    FigVirtualFramebufferGetMaxCount_cold_1();
  }

  if (_MergedGlobals_124 == 1)
  {
    if (qword_1ED4CB988 != -1)
    {
      FigVirtualFramebufferGetMaxCount_cold_2();
    }

    v4 = fvfbserv_getVirtualFramebufMaxCount_maxCount;
    if (fvfbserv_getVirtualFramebufMaxCount_maxCount > a2)
    {
      FigVirtualFramebufferGetFramebufs_cold_8();
    }

    else
    {
      if (fvfbserv_getVirtualFramebufs_once != -1)
      {
        FigVirtualFramebufferGetFramebufs_cold_6();
      }

      v4 = qword_1ED4CB998;
      if (qword_1ED4CB998)
      {
        memcpy(__dst, qword_1ED4CB990, 8 * qword_1ED4CB998);
      }

      else
      {
        FigVirtualFramebufferGetFramebufs_cold_7();
      }
    }
  }

  else
  {
    if (a2)
    {
      if (fvfbintern_getVirtualFramebuf_once != -1)
      {
        FigVirtualFramebufferGetFramebufs_cold_2();
      }

      v5 = fvfbintern_getVirtualFramebuf_framebuf;
      *__dst = fvfbintern_getVirtualFramebuf_framebuf;
      if (!v5)
      {
        FigVirtualFramebufferGetFramebufs_cold_3();
        return 0;
      }
    }

    else
    {
      FigVirtualFramebufferGetFramebufs_cold_4();
    }

    return 1;
  }

  return v4;
}

uint64_t FigVirtualFramebufferClientSourceScreenCreateIOS(uint64_t a1, uint64_t a2, void *a3)
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigVirtualDisplaySourceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (qword_1ED4CB9C0 != -1)
    {
      FigVirtualFramebufferClientSourceScreenCreateIOS_cold_1();
    }

    *(DerivedStorage + 8) = qword_1ED4CB9C8;
    *DerivedStorage = 0;
    *(DerivedStorage + 32) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 40) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *a3 = 0;
  }

  return v4;
}

uint64_t __fvfb_getProcessType_block_invoke()
{
  buffer[128] = *MEMORY[0x1E69E9840];
  v0 = getpid();
  result = proc_pidpath(v0, buffer, 0x400u);
  if (result >= 1 && buffer[0] == 0x62696C2F7273752FLL && buffer[1] == 0x6361622F63657865 && buffer[2] == 0x646472616F626BLL)
  {
    _MergedGlobals_124 = 1;
  }

  return result;
}

uint64_t __fvfbserv_getVirtualFramebufMaxCount_block_invoke()
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  fvfbserv_getVirtualFramebufMaxCount_maxCount = CFPreferenceNumberWithDefault;
  if (CFPreferenceNumberWithDefault >= 9)
  {
    fvfbserv_getVirtualFramebufMaxCount_maxCount = 8;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t fvfbserv_hotplugSourceSchedule(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    fvfbserv_hotplugSourceSchedule_cold_1();
  }

  *(DerivedStorage + 104) = a2;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbserv_hotplugSourceCancel(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104) != a2)
  {
    fvfbserv_hotplugSourceCancel_cold_1();
  }

  *(DerivedStorage + 104) = 0;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbserv_hotplugSourcePerform()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 120);
  v1 = *(DerivedStorage + 128);
  v3 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v2)
  {
    return v2(v3 != 0, v1);
  }

  return result;
}

void __fvfbserv_objCreateVirtualFramebuf_block_invoke()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  data = dispatch_source_get_data(*(DerivedStorage + 144));
  if (data >= 1)
  {
    v2.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v2.i64[1] = *(DerivedStorage + 200) * (data & 0x7FFFFFFF);
    *(DerivedStorage + 184) = vaddq_s64(*(DerivedStorage + 184), v2);
    if (dword_1ED4CBED0 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(DerivedStorage + 152))
    {
      CFRunLoopSourceSignal(*(DerivedStorage + 160));
      CFRunLoopWakeUp(*(DerivedStorage + 152));
    }
  }
}

void fvfbserv_vsyncSourceSchedule(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_vsyncSourceSchedule_block_invoke;
  block[3] = &__block_descriptor_tmp_80_2;
  block[4] = DerivedStorage;
  block[5] = a2;
  dispatch_sync(v5, block);
}

void fvfbserv_vsyncSourceCancel(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_vsyncSourceCancel_block_invoke;
  block[3] = &__block_descriptor_tmp_81_1;
  block[4] = DerivedStorage;
  block[5] = a2;
  dispatch_sync(v5, block);
}

void fvfbserv_vsyncSourcePerform()
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (dword_1ED4CBED0 >= 2)
  {
    v6 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_vsyncSourcePerform_block_invoke;
  block[3] = &unk_1E7494C20;
  block[4] = &v23;
  block[5] = &v19;
  block[6] = &v15;
  block[7] = &v11;
  block[8] = &v7;
  block[9] = DerivedStorage;
  dispatch_sync(v2, block);
  v3 = v24[3];
  if (v3)
  {
    v3(v16[3], v12[3], v8[3], v20[3]);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

uint64_t fvfbserv_hdcpSourceSchedule(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 224))
  {
    fvfbserv_hdcpSourceSchedule_cold_1();
  }

  *(DerivedStorage + 224) = a2;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbserv_hdcpSourceCancel(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (DerivedStorage[28] != a2)
  {
    fvfbserv_hdcpSourceCancel_cold_1();
  }

  DerivedStorage[28] = 0;
  DerivedStorage[30] = 0;
  DerivedStorage[31] = 0;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbserv_hdcpSourcePerform()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 248);
  v3 = *(DerivedStorage + 240);
  *(DerivedStorage + 240) = 0;
  *(DerivedStorage + 248) = 0;
  result = FigSimpleMutexUnlock();
  if (v3)
  {

    return v3(v1, 1);
  }

  return result;
}

void fvfbserv_objFinalize()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  __break(1u);
}

uint64_t fvfbserv_objSetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    v2 = 4294954512;
  }

  else
  {
    v2 = 3758097111;
  }

  FigSimpleMutexUnlock();
  return v2;
}

__CFString *fvfbserv_objCopyDescription(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (fvfbserv_objCopyDescription_once == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_31:
    CFStringAppendFormat(Mutable, 0, @"<VirtualFramebuffer %d state: %d>", *(DerivedStorage + 12), *(DerivedStorage + 8));
    return Mutable;
  }

  fvfbserv_objCopyDescription_cold_1();
  if (!a2)
  {
    goto LABEL_31;
  }

LABEL_3:
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 8);
  v7 = *(DerivedStorage + 12);
  v8 = *(DerivedStorage + 16);
  v9 = *(DerivedStorage + 264);
  v10 = *(DerivedStorage + 48);
  v11 = *(DerivedStorage + 56);
  v12 = *(DerivedStorage + 24);
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(DerivedStorage + 32);
  if (v14)
  {
    v15 = CFRetain(v14);
  }

  else
  {
    v15 = 0;
  }

  FigSimpleMutexUnlock();
  if (v6 > 2)
  {
    v16 = "unknown";
  }

  else
  {
    v16 = FVFBStateNameForState[v6];
  }

  CFStringAppendFormat(Mutable, 0, @"vfb %d: state: %s", v7, v16);
  if (v9)
  {
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v4, fvfbserv_objCopyDescription_dateFormatter, v8);
    v18 = StringWithAbsoluteTime;
    v19 = "activated";
    if (!v6)
    {
      v19 = "reserved";
    }

    CFStringAppendFormat(Mutable, 0, @", %s at %@", v19, StringWithAbsoluteTime);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v11 >= 1)
    {
      FigServer_CopyProcessName();
      CFStringAppendFormat(Mutable, 0, @" by process %@ (pid %d)", 0, v11);
    }

    if (v15)
    {
      CFStringAppendFormat(Mutable, 0, @", client: %@", v15);
    }

    v20 = "yes";
    if (!v10)
    {
      v20 = "no";
    }

    CFStringAppendFormat(Mutable, 0, @", protected: %s", v20);
    if (!v13)
    {
      goto LABEL_27;
    }

    CFStringAppendFormat(Mutable, 0, @", display mode: %@", v13);
  }

  else if (!v13)
  {
    goto LABEL_27;
  }

  CFRelease(v13);
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }

  return Mutable;
}

CFDateFormatterRef __fvfbserv_objCopyDescription_block_invoke()
{
  result = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0xFF3uLL);
  fvfbserv_objCopyDescription_dateFormatter = result;
  return result;
}

uint64_t fvfb_sendMessageCreatingReply(_xpc_connection_s *a1, void *a2, void *a3)
{
  v4 = xpc_connection_send_message_with_reply_sync(a1, a2);
  if (MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E80])
  {
    if (MEMORY[0x19A8D7060](v4) == MEMORY[0x1E69E9E98])
    {
      xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = 4294951141;
LABEL_7:
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  int64 = xpc_dictionary_get_int64(v4, *MEMORY[0x1E6961590]);
  v7 = int64;
  if (int64)
  {
    if (int64 == -536870187)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *a3 = v4;
LABEL_8:
  FigXPCRelease();
  return v7;
}

uint64_t fvfbserv_objGetSupportedDigitalOutModes(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 8))
  {
    if (dword_1ED4CBED0)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = *(DerivedStorage + 72);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 72) = 0;
    }

    v9 = *(DerivedStorage + 80);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 80) = 0;
    }
  }

  if (a2)
  {
    *a2 = *(DerivedStorage + 72);
  }

  if (a3)
  {
    *a3 = *(DerivedStorage + 80);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbserv_objSetDigitalOutMode(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  xdict = 0;
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
    {
      fvfbserv_objSetDigitalOutMode_cold_1();
      v8 = 3758097097;
      goto LABEL_9;
    }

    v7 = FigXPCCreateBasicMessage();
    if (v7)
    {
      v8 = v7;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      xpc_dictionary_set_uint64(xdict, "ColorModeID", a2);
      xpc_dictionary_set_uint64(xdict, "TimingModeID", a3);
      v8 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v13);
      if (!v8)
      {
        FigDisplayModes_ExtractVSyncRateFromTimingMode(*(DerivedStorage + 80), a3, (DerivedStorage + 216));
        goto LABEL_9;
      }

      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  if (dword_1ED4CBED0)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t fvfbserv_objSubmitSurface(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, int a14)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  xdict = 0;
  bytes[0] = a13;
  *&bytes[1] = a1;
  *&bytes[2] = a2;
  *&bytes[3] = a3;
  *&bytes[4] = a4;
  *&bytes[5] = a5;
  *&bytes[6] = a6;
  *&bytes[7] = a7;
  *&bytes[8] = a8;
  v38 = a11;
  v39 = a10;
  v40 = a12;
  v41 = a14;
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    if (a10)
    {
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v30 = 4294955226;
      goto LABEL_9;
    }

    if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
    {
      fvfbserv_objSubmitSurface_cold_1();
      v30 = 3758097097;
      goto LABEL_9;
    }

    v29 = FigXPCCreateBasicMessage();
    if (v29)
    {
      v30 = v29;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      xpc_dictionary_set_data(xdict, "SurfaceData", bytes, 0x58uLL);
      v30 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v42);
      if (!v30)
      {
        goto LABEL_9;
      }

      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  if (dword_1ED4CBED0)
  {
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v30 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v30;
}

uint64_t fvfbserv_objSwapWaitWithTimeout()
{
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t fvfbserv_objSwapWaitSurfaceTimeout()
{
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t fvfbserv_objGetVSyncRunLoopSource()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *(DerivedStorage + 160);
}

uint64_t fvfbserv_objEnableVSyncNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    v7 = *(DerivedStorage + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvfbserv_objEnableVSyncNotifications_block_invoke;
    block[3] = &unk_1E7494B98;
    block[6] = a2;
    block[7] = a3;
    block[4] = &v14;
    block[5] = DerivedStorage;
    dispatch_sync(v7, block);
  }

  else
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(v15 + 6) = -536870185;
  }

  FigSimpleMutexUnlock();
  v8 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t fvfbserv_objDisableVSyncNotifications()
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    v6 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_objDisableVSyncNotifications_block_invoke;
  block[3] = &__block_descriptor_tmp_72_0;
  block[4] = DerivedStorage;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t fvfbserv_objGetHotPlugRunLoopSource()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *(DerivedStorage + 112);
}

uint64_t fvfbserv_objEnableHotPlugDetectNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = 4294955219;
  }

  else
  {
    *(DerivedStorage + 120) = a2;
    *(DerivedStorage + 128) = a3;
    if (*(DerivedStorage + 104))
    {
      CFRunLoopSourceSignal(*(DerivedStorage + 112));
      CFRunLoopWakeUp(*(DerivedStorage + 104));
    }

    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t fvfbserv_objDisableHotPlugDetectNotifications()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 120) = 0;
  *(DerivedStorage + 128) = 0;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbserv_objGetHDCPDownstreamState(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  fvfb_getHDCPDownstreamState(*(DerivedStorage + 8) != 0, *(DerivedStorage + 48), a2);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbserv_objAcquireWritebackSurface(double a1, double a2, uint64_t a3, int a4, uint64_t a5, int a6, IOSurfaceID *a7, uint64_t *a8)
{
  v40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  xdict = 0;
  if (a7)
  {
    v16 = a8 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  bytes[0] = a5;
  *&bytes[1] = a1;
  *&bytes[2] = a2;
  v35 = a4;
  v36 = a6;
  v37 = v17;
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v19 = *(DerivedStorage + 8);
  if (v19 != 2)
  {
    if (v19)
    {
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v28 = 3758097112;
    }

    else
    {
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v28 = 3758097111;
    }

    goto LABEL_22;
  }

  if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
  {
    v28 = 3758097097;
    fvfbserv_objAcquireWritebackSurface_cold_4();
    goto LABEL_22;
  }

  v20 = FigXPCCreateBasicMessage();
  if (v20)
  {
    v28 = v20;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    goto LABEL_32;
  }

  xpc_dictionary_set_data(xdict, "SurfaceData", bytes, 0x28uLL);
  v21 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v38);
  if (v21)
  {
    v28 = v21;
    if (v21 == -536870187)
    {
      goto LABEL_22;
    }

    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
LABEL_32:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  if (!v17)
  {
    v28 = 0;
LABEL_22:
    FigSimpleMutexUnlock();
    goto LABEL_24;
  }

  v22 = v38;
  value = xpc_dictionary_get_value(v38, "Surface");
  if (!value)
  {
    v28 = 3758097097;
    fvfbserv_objAcquireWritebackSurface_cold_3();
    goto LABEL_22;
  }

  v24 = IOSurfaceLookupFromXPCObject(value);
  if (!v24)
  {
    v28 = 3758097097;
    fvfbserv_objAcquireWritebackSurface_cold_2();
    goto LABEL_22;
  }

  v25 = v24;
  ID = IOSurfaceGetID(v24);
  if (ID != xpc_dictionary_get_uint64(v22, "SurfaceID"))
  {
    fvfbserv_objAcquireWritebackSurface_cold_1();
  }

  CFDictionarySetValue(*(DerivedStorage + 64), ID, v25);
  *a7 = ID;
  *a8 = xpc_dictionary_get_uint64(v22, "SurfaceRefCon");
  if (dword_1ED4CBED0 >= 2)
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  CFRelease(v25);
  v28 = 0;
LABEL_24:
  FigXPCRelease();
  FigXPCRelease();
  return v28;
}

uint64_t fvfbserv_objRelinquishWritebackSurface(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  xdict = 0;
  bytes = a3;
  v16 = a2;
  v17 = a4;
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    if (!a2 || !a3)
    {
      fvfbserv_objRelinquishWritebackSurface_cold_2();
      v10 = 4294955226;
      goto LABEL_10;
    }

    if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
    {
      fvfbserv_objRelinquishWritebackSurface_cold_1();
      v10 = 3758097097;
      goto LABEL_10;
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 64), a2);
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v10 = v9;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      xpc_dictionary_set_data(xdict, "SurfaceData", &bytes, 0x10uLL);
      v10 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v18);
      if (!v10)
      {
        goto LABEL_10;
      }

      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_10;
  }

  if (dword_1ED4CBED0)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t fvfbserv_objGetHDCPRunLoopSource()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *(DerivedStorage + 232);
}

uint64_t fvfbserv_objHDCPSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 240) = a4;
  *(DerivedStorage + 248) = a5;
  if (*(DerivedStorage + 224))
  {
    CFRunLoopSourceSignal(*(DerivedStorage + 232));
    CFRunLoopWakeUp(*(DerivedStorage + 224));
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbserv_objHDCPGetReply(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*a3 <= 0xFuLL)
  {
    fvfbserv_objHDCPGetReply_cold_1();
    return 4294955226;
  }

  else
  {
    FigSimpleMutexLock();
    fvfb_getHDCPDownstreamState(*(DerivedStorage + 8) != 0, *(DerivedStorage + 48), a2);
    FigSimpleMutexUnlock();
    result = 0;
    *a3 = 16;
  }

  return result;
}

uint64_t fvfbserv_objGetProtectionOptions(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 8))
    {
      v5 = *(DerivedStorage + 48);
    }

    else
    {
      v5 = 7;
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    fvfbserv_objGetProtectionOptions_cold_1();
    return 4294955226;
  }
}

void __fvfbserv_objEnableVSyncNotifications_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 168))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(a1[4] + 8) + 24) = -12077;
  }

  else
  {
    *(v2 + 168) = a1[6];
    *(a1[5] + 176) = a1[7];
    *(a1[5] + 208) = 0x3B9ACA00uLL / *(a1[5] + 216);
    *(a1[5] + 200) = FigNanosecondsToHostTime();
    v4 = mach_absolute_time();
    v5 = a1[5];
    v6 = v5[26];
    v5[24] = v5[25] + v4;
    v7 = v5[18];
    v8 = dispatch_time(0, v6);
    v9 = *(a1[5] + 208);

    dispatch_source_set_timer(v7, v8, v9, 0xF4240uLL);
  }
}

void __fvfbserv_objDisableVSyncNotifications_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 176) = 0;
  dispatch_source_set_timer(*(*(a1 + 32) + 144), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

uint64_t fvfb_getHDCPDownstreamState(uint64_t result, char a2, uint64_t a3)
{
  if (result)
  {
    v3 = (a2 & 7) - 1;
    if (v3 <= 6)
    {
      v4 = dword_196E79118[v3];
      if (!a3)
      {
        goto LABEL_9;
      }

LABEL_6:
      *(a3 + 8) = 0;
      *a3 = 0x1000150434448;
      *(a3 + 8) = bswap32(v4);
      *(a3 + 12) = 0;
      *(a3 + 14) = 0;
      if (!dword_1ED4CBED0)
      {
        return result;
      }

      goto LABEL_9;
    }

    v4 = 8;
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t __fvfbserv_vsyncSourceSchedule_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 152))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(v1 + 32);
  }

  *(v2 + 152) = *(v1 + 40);
  return result;
}

uint64_t __fvfbserv_vsyncSourceCancel_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 152) != *(result + 40))
  {
    v2 = result;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v1 = *(v2 + 32);
  }

  *(v1 + 152) = 0;
  return result;
}

void *__fvfbserv_vsyncSourcePerform_block_invoke(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[9] + 168);
  *(*(result[5] + 8) + 24) = *(result[9] + 176);
  v1 = result[9];
  *(*(result[6] + 8) + 24) = v1[23];
  *(*(result[7] + 8) + 24) = v1[24];
  *(*(result[8] + 8) + 24) = v1[25];
  return result;
}

uint64_t __srmonitor_getShared_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1ED4CB974 = result != 0;
  if (result)
  {
    qword_1ED4CB9A0 = FigSimpleMutexCreate();
    result = dispatch_queue_create("ScreenRecordingMonitorNotifications", 0);
    qword_1ED4CB9A8 = result;
    dword_1ED4CB978 = 0;
  }

  return result;
}

uint64_t fvfbserv_handleClientMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v3 = OpCode;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_6;
  }

  if (dword_1ED4CBED0 >= 3)
  {
    v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v3 = 4294955226;
  if (dword_1ED4CBED0 >= 3)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
LABEL_6:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

uint64_t fvfbserv_getAndRetainFramebufFromMessage(int a1, xpc_object_t xdict)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v2 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v2)
  {
    v4 = v2;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    fvfbserv_getAndRetainFramebufFromMessage_cold_1();
    return 4294954516;
  }

  return v4;
}

uint64_t fvfbserv_startVirtualFramebuf(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    fvfbserv_startVirtualFramebuf_cold_1();
    goto LABEL_20;
  }

  if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
  {
    fvfbserv_startVirtualFramebuf_cold_8();
LABEL_20:
    v10 = 4294955226;
    goto LABEL_16;
  }

  v5 = FigXPCMessageCopyCFArray();
  if (v5 || (v5 = FigXPCMessageCopyCFArray(), v5))
  {
    v10 = v5;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    FigXPCMessageCopyCFDictionary();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    if (xpc_dictionary_get_BOOL(a3, "SuspendOnStart"))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(DerivedStorage + 8) = v6;
    *(DerivedStorage + 16) = CFAbsoluteTimeGetCurrent();
    *(DerivedStorage + 60) = xpc_dictionary_get_BOOL(a3, "Rotation");
    *(DerivedStorage + 48) = xpc_dictionary_get_uint64(a3, "ProtFlags");
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetInt32IfPresent();
    *(DerivedStorage + 24) = 0;
    FigXPCMessageCopyCFString();
    FigXPCMessageCopyCFData();
    v7 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(DerivedStorage + 80);
    *(DerivedStorage + 80) = 0;
    if (v8)
    {
      CFRelease(v8);
    }

    *(DerivedStorage + 88) = -1;
    FigCFDictionaryGetInt32IfPresent();
    *(DerivedStorage + 61) = 0;
    if (*(DerivedStorage + 104))
    {
      CFRunLoopSourceSignal(*(DerivedStorage + 112));
      CFRunLoopWakeUp(*(DerivedStorage + 104));
    }

    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = 0;
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fvfbserv_suspendVirtualFramebuf()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    *(DerivedStorage + 8) = 1;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = 0;
  }

  else
  {
    fvfbserv_suspendVirtualFramebuf_cold_1();
    v2 = 4294955226;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t fvfbserv_resumeVirtualFramebuf()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8) == 1)
  {
    *(DerivedStorage + 8) = 2;
    *(DerivedStorage + 88) = -1;
    if (*(DerivedStorage + 104))
    {
      CFRunLoopSourceSignal(*(DerivedStorage + 112));
      CFRunLoopWakeUp(*(DerivedStorage + 104));
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = 0;
  }

  else
  {
    fvfbserv_resumeVirtualFramebuf_cold_1();
    v2 = 4294955226;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t fvfbserv_clearVirtualFramebuf()
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 56) = 0;
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 24) = 0;
  }

  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 64));
  *(DerivedStorage + 88) = -1;
  *(DerivedStorage + 264) = 0;
  v4 = *(DerivedStorage + 256);
  if (v4)
  {
    *(DerivedStorage + 256) = 0;
    xpc_release(v4);
  }

  *(DerivedStorage + 8) = 0;
  if (*(DerivedStorage + 61))
  {
    if (qword_1ED4CB9B0 != -1)
    {
      fvfbserv_clearVirtualFramebuf_cold_1();
    }

    if (byte_1ED4CB974)
    {
      if (dword_1ED4CBED0)
      {
        v16 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      v6 = dword_1ED4CB978 == 1;
      if (dword_1ED4CB978 >= 1)
      {
        --dword_1ED4CB978;
        if (v6)
        {
          v16 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          dispatch_async(qword_1ED4CB9A8, &__block_literal_global_96);
        }
      }

      FigSimpleMutexUnlock();
    }

    *(DerivedStorage + 61) = 0;
  }

  v8 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_clearVirtualFramebuf_block_invoke;
  block[3] = &__block_descriptor_tmp_93;
  block[4] = DerivedStorage;
  dispatch_sync(v8, block);
  if (*(DerivedStorage + 104))
  {
    CFRunLoopSourceSignal(*(DerivedStorage + 112));
    CFRunLoopWakeUp(*(DerivedStorage + 104));
  }

  v16 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v10 = v16;
  if (os_log_type_enabled(v9, type))
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 & 0xFFFFFFFE;
  }

  if (v11)
  {
    v12 = *(DerivedStorage + 12);
    v17 = 136315394;
    v18 = "fvfbserv_clearVirtualFramebuf";
    v19 = 1024;
    v20 = v12;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return FigSimpleMutexUnlock();
}

void __fvfbserv_clearVirtualFramebuf_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 176) = 0;
  dispatch_source_set_timer(*(*(a1 + 32) + 144), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

uint64_t __fvfb_isInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  fvfb_isInternalBuild_isInternalBuild = result;
  return result;
}

void __fvfb_demoModeEnabled_block_invoke()
{
  if (fvfb_isInternalBuild_once != -1)
  {
    __fvfb_demoModeEnabled_block_invoke_cold_1();
  }

  if (fvfb_isInternalBuild_isInternalBuild)
  {
    fvfb_demoModeEnabled_isDemoModeEnabled = CFPreferencesGetAppBooleanValue(@"EnableTetheredDisplayPortMode", *MEMORY[0x1E695E890], 0);
  }

  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __fvfbintern_getVirtualFramebuf_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v0 = *MEMORY[0x1E695E480];
  FigVirtualFramebufferGetClassID();
  if (CMDerivedObjectCreate())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = FigSimpleMutexCreate();
    memset(&context, 0, 56);
    context.schedule = fvfbintern_hdcpSourceSchedule;
    context.cancel = fvfbintern_hdcpSourceCancel;
    context.perform = fvfbintern_hdcpSourcePerform;
    DerivedStorage[2] = CFRunLoopSourceCreate(v0, 0, &context);
    fvfbintern_getVirtualFramebuf_framebuf = 0;
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  }

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t fvfbintern_hdcpSourceSchedule(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    fvfbintern_hdcpSourceSchedule_cold_1();
  }

  *(DerivedStorage + 8) = a2;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbintern_hdcpSourceCancel(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage[1] != a2)
  {
    fvfbintern_hdcpSourceCancel_cold_1();
  }

  DerivedStorage[1] = 0;
  DerivedStorage[3] = 0;
  DerivedStorage[4] = 0;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbintern_hdcpSourcePerform()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 32);
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  result = FigSimpleMutexUnlock();
  if (v3)
  {

    return v3(v1, 1);
  }

  return result;
}

void fvfbintern_objFinalize()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  __break(1u);
}

CFStringRef fvfbintern_objCopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVirtualFramebufferInternal %p retainCount: %ld>", a1, v3);
}

uint64_t fvfbintern_objGetHDCPDownstreamState(uint64_t a1, uint64_t a2)
{
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_13;
  }

  if (qword_1ED4CB9C0 != -1)
  {
    FigVirtualFramebufferClientSourceScreenCreateIOS_cold_1();
  }

  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
LABEL_13:
    v9 = v4;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(0, "ProtOptions");
    v6 = xpc_dictionary_get_BOOL(0, "IsAnyActive");
    if (dword_1ED4CBED0)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v6)
      {
        if (dword_1ED4CBED0)
        {
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    fvfb_getHDCPDownstreamState(v6, uint64, a2);
    v9 = 0;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t fvfbintern_objGetHDCPRunLoopSource()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *(DerivedStorage + 16);
}

uint64_t fvfbintern_objHDCPSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 24) = a4;
  *(DerivedStorage + 32) = a5;
  if (*(DerivedStorage + 8))
  {
    CFRunLoopSourceSignal(*(DerivedStorage + 16));
    CFRunLoopWakeUp(*(DerivedStorage + 8));
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbintern_objHDCPGetReply(uint64_t a1, uint64_t a2, void *a3)
{
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    a1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    fvfbintern_objHDCPGetReply_cold_2();
    return 4294955226;
  }

  if (!a3 || *a3 <= 0xFuLL)
  {
    fvfbintern_objHDCPGetReply_cold_1();
    return 4294955226;
  }

  HDCPDownstreamState = fvfbintern_objGetHDCPDownstreamState(a1, a2);
  if (HDCPDownstreamState)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    *a3 = 16;
  }

  return HDCPDownstreamState;
}