uint64_t OUTLINED_FUNCTION_2_143()
{

  return CMNotificationCenterAddListener();
}

void TrackFragmentBuilderRelease(const __CFAllocator **ptr)
{
  if (ptr)
  {
    v2 = *ptr;
    v3 = ptr[11];
    if (v3)
    {
      tfbTrackFragmentRelease(*ptr, v3);
      ptr[11] = 0;
    }

    v4 = ptr[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = ptr[3];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = ptr[4];
    if (v6)
    {
      CFRelease(v6);
    }

    CFAllocatorDeallocate(v2, ptr);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void TrackFragmentBuilderSampleTableRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      tfbTrackFragmentRelease(*a1, v2);
      *(a1 + 88) = 0;
    }
  }
}

uint64_t TrackFragmentBuilderGetMinDecodeToDisplay(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 84);
    }

    else
    {
      TrackFragmentBuilderGetMinDecodeToDisplay_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    TrackFragmentBuilderGetMinDecodeToDisplay_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t TrackFragmentBuilderGetMaxDecodeToDisplay(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 80);
    }

    else
    {
      TrackFragmentBuilderGetMaxDecodeToDisplay_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    TrackFragmentBuilderGetMaxDecodeToDisplay_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_1(&v8);
    return v8;
  }

  v5 = *(a1 + 88);
  v8 = 0;
  if (v5)
  {
    LOBYTE(v5) = FigCFDictionaryGetInt32IfPresent();
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_1(&v8);
    return v8;
  }

  v5 = *(a1 + 88);
  v8 = 0;
  if (v5)
  {
    LOBYTE(v5) = FigCFDictionaryGetInt32IfPresent();
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_1(&v8);
    return v8;
  }

  v5 = *(a1 + 88);
  v8 = 0;
  if (v5)
  {
    LOBYTE(v5) = FigCFDictionaryGetInt32IfPresent();
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_1(&v8);
    return v8;
  }

  v5 = *(a1 + 88);
  v8 = 0;
  if (v5)
  {
    LOBYTE(v5) = FigCFDictionaryGetInt32IfPresent();
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleAuxInformation(uint64_t a1, _BYTE *a2, _DWORD *a3, CMBlockBufferRef *a4, CMBlockBufferRef *a5, _BYTE *a6)
{
  if (!a1)
  {
    TrackFragmentBuilderGetSampleAuxInformation_cold_1(&v18);
    return v18;
  }

  v11 = *(a1 + 88);
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = *(v11 + 48);
  if (!v12 || !CMBlockBufferGetDataLength(v12[3]))
  {
    LODWORD(v11) = 0;
LABEL_7:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v13 = *v12;
  LODWORD(v11) = *(v12 + 1);
  v14 = v12[1];
  v15 = v12[3];
  v16 = *(v12 + 41);
LABEL_8:
  result = 0;
  *a2 = v13;
  *a3 = v11;
  *a4 = v14;
  *a5 = v15;
  *a6 = v16;
  return result;
}

uint64_t TrackFragmentBuilderCopySampleGroupDescriptionArrays(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = v3[8];
        if (v4)
        {
          v3 = CFRetain(v4);
        }

        else
        {
          v3 = 0;
        }
      }

      result = 0;
      *a2 = v3;
    }

    else
    {
      TrackFragmentBuilderCopySampleGroupDescriptionArrays_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderCopySampleGroupDescriptionArrays_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t TrackFragmentBuilderCopySampleGroupArray(const __CFAllocator **a1, CFArrayRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = a1[11];
      if (v3)
      {
        v4 = *(v3 + 7);
        if (v4)
        {
          v3 = MovieSampleGroupCollectionCopySampleGroupArray(*a1, v4);
        }

        else
        {
          v3 = 0;
        }
      }

      result = 0;
      *a2 = v3;
    }

    else
    {
      TrackFragmentBuilderCopySampleGroupArray_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderCopySampleGroupArray_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  if (!a1)
  {
    TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue_cold_2(&v8);
    return v8;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v7);
  if (!v3)
  {
    TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue_cold_1(&v8);
    return v8;
  }

  v4 = v3;
  v5 = *(a1 + 24);
  *(a1 + 24) = v3;
  CFRetain(v3);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v4);
  return 0;
}

uint64_t TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue(void *a1, void *a2, char *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_3(&valuePtr);
    return valuePtr;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_2(&valuePtr);
    return valuePtr;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_1(&valuePtr);
    return valuePtr;
  }

  v6 = a1[11];
  if (v6)
  {
    v7 = a1[3];
    if (v7)
    {
      valuePtr = 0;
      CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr);
      v8 = *(v6 + 16) - a1[5] + valuePtr;
    }

    else
    {
      v8 = *(v6 + 16);
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  result = 0;
  *a2 = v8;
  *a3 = v9;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue(void *a1, void *a2)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue_cold_2(&valuePtr);
    return valuePtr;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue_cold_1(&valuePtr);
    return valuePtr;
  }

  v4 = a1[11];
  if (v4)
  {
    v5 = a1[3];
    if (v5)
    {
      valuePtr = 0;
      CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
      v6 = *(v4 + 32) - a1[5] + valuePtr;
    }

    else
    {
      v6 = *(v4 + 32);
    }
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 88);
      if (v2)
      {
        v2 = *(v2 + 24);
      }

      result = 0;
      *a2 = v2;
    }

    else
    {
      TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t TrackFragmentBuilderNumTrackRuns(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = *(v3 + 40);
        if (v4)
        {
          LODWORD(v3) = CFArrayGetCount(v4);
        }

        else
        {
          LODWORD(v3) = 0;
        }
      }

      result = 0;
      *a2 = v3;
    }

    else
    {
      TrackFragmentBuilderNumTrackRuns_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderNumTrackRuns_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t tfbGetTrackRunAtIndex(uint64_t a1, CFIndex idx, void *a3)
{
  v4 = idx;
  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      LODWORD(v7) = CFArrayGetCount(v7);
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v4 < 0 || v7 <= v4)
  {
    tfbGetTrackRunAtIndex_cold_1(&v10);
    return v10;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 88) + 40), v4);
    result = 0;
    *a3 = ValueAtIndex;
  }

  return result;
}

uint64_t TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        tfbGetSampleValueArrayBbufAtTrackRunIndex(a1, a2, @"SampleDurationKey", a3, a4);
        return 0;
      }

      else
      {
        TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_3(&v7);
    return v7;
  }
}

uint64_t TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        tfbGetSampleValueArrayBbufAtTrackRunIndex(a1, a2, @"SampleSizeKey", a3, a4);
        return 0;
      }

      else
      {
        TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_3(&v7);
    return v7;
  }
}

uint64_t TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        tfbGetSampleValueArrayBbufAtTrackRunIndex(a1, a2, @"SampleFlagsKey", a3, a4);
        return 0;
      }

      else
      {
        TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_3(&v7);
    return v7;
  }
}

uint64_t TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        tfbGetSampleValueArrayBbufAtTrackRunIndex(a1, a2, @"SampleCompositionTimeOffsetKey", a3, a4);
        return 0;
      }

      else
      {
        TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_3(&v7);
    return v7;
  }
}

uint64_t tfbGetSampleDurationAtIndexFunc(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    tfbGetSampleDurationAtIndexFunc_cold_2();
    return 0;
  }

  if (a1 == 1)
  {
    return *a2;
  }

  if (a3 >= a1)
  {
    tfbGetSampleDurationAtIndexFunc_cold_1();
    return 0;
  }

  return *(a2 + 72 * a3);
}

uint64_t tfbGetSampleSizeAtIndexFunc(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    tfbGetSampleSizeAtIndexFunc_cold_2();
    return 0;
  }

  if (a1 == 1)
  {
    return *a2;
  }

  if (a3 >= a1)
  {
    tfbGetSampleSizeAtIndexFunc_cold_1();
    return 0;
  }

  return *(a2 + 8 * a3);
}

const void *tfbGetSampleFlagsAtIndexFunc(uint64_t a1, CFArrayRef theArray, int a3)
{
  if (!theArray)
  {
    return 0;
  }

  if (a3 >= a1)
  {
    tfbGetSampleFlagsAtIndexFunc_cold_1();
    return 0;
  }

  else
  {
    result = CFArrayGetValueAtIndex(theArray, a3);
    if (result)
    {
      v4 = 0;
      FigMovieGetSampleDependencyFlagsFromSampleAttachments(result, &v4 + 1, &v4, 0);
      return ((HIBYTE(v4) << 20) | ((v4 != 0) << 16));
    }
  }

  return result;
}

uint64_t tfbGetSampleCompositionTimeOffsetAtIndexFunc(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    tfbGetSampleCompositionTimeOffsetAtIndexFunc_cold_2();
    return 0;
  }

  if (a1 != 1)
  {
    if (a3 < a1)
    {
      a2 += 72 * a3;
      return (*(a2 + 24) - *(a2 + 48));
    }

    tfbGetSampleCompositionTimeOffsetAtIndexFunc_cold_1();
    return 0;
  }

  return (*(a2 + 24) - *(a2 + 48));
}

void tfbTrackFragmentRelease(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    v4 = *(ptr + 5);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(ptr + 5), i);
          tfbTrackRunRelease(allocator, ValueAtIndex);
        }
      }
    }

    v9 = *(ptr + 6);
    if (v9)
    {
      v10 = v9[1];
      if (v10)
      {
        CFRelease(v10);
        v9 = *(ptr + 6);
      }

      v11 = v9[2];
      if (v11)
      {
        CFRelease(v11);
        v9 = *(ptr + 6);
      }

      v12 = v9[3];
      if (v12)
      {
        CFRelease(v12);
        v9 = *(ptr + 6);
      }

      v13 = v9[4];
      if (v13)
      {
        CFRelease(v13);
        v9 = *(ptr + 6);
      }

      CFAllocatorDeallocate(allocator, v9);
    }

    v14 = *(ptr + 5);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(ptr + 1);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(ptr + 7);
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = *(ptr + 8);
    if (v17)
    {
      CFRelease(v17);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

uint64_t tfbSetTrackFragmentHeaderDefaultValueIfNeeded(uint64_t a1, const void *a2, int a3)
{
  if (FigCFEqual())
  {
    return 0;
  }

  CFDictionaryRemoveValue(*(*(a1 + 88) + 8), a2);
  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  result = 0;
  if (Int32IfPresent)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    if (*(a1 + 88))
    {
      return FigCFDictionarySetInt32();
    }

    else
    {
      tfbSetTrackFragmentHeaderDefaultValueIfNeeded_cold_1(&v9);
      return v9;
    }
  }

  return result;
}

void tfbTrackRunRelease(const __CFAllocator *a1, CFDictionaryRef *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  Count = CFDictionaryGetCount(a2[3]);
  memset(v11, 0, sizeof(v11));
  if (Count >= 5)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    CFDictionaryGetKeysAndValues(a2[3], 0, v11);
    goto LABEL_5;
  }

  CFDictionaryGetKeysAndValues(a2[3], 0, v11);
  if (Count >= 1)
  {
LABEL_5:
    v5 = v11;
    do
    {
      v6 = *v5;
      v7 = **v5;
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = v6[2];
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = v6[3];
      if (v9)
      {
        CFRelease(v9);
      }

      CFAllocatorDeallocate(a1, v6);
      ++v5;
      --Count;
    }

    while (Count);
  }

  v10 = a2[3];
  if (v10)
  {
    CFRelease(v10);
  }

  CFAllocatorDeallocate(a1, a2);
}

uint64_t tfbGetCurrentTrackRun(uint64_t a1, void *a2)
{
  v4 = *(a1 + 88);
  if (v4 && (v5 = *(v4 + 40)) != 0)
  {
    v6 = CFArrayGetCount(v5) - 1;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return tfbGetTrackRunAtIndex(a1, v6, a2);
}

uint64_t tfbGetTrackFragmentGlobalDefaultValue(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 88))
  {
    if (!FigCFEqual() && !FigCFDictionaryGetInt32IfPresent())
    {
      FigCFDictionaryGetInt32IfPresent();
    }

    result = 0;
    *a3 = 0;
  }

  else
  {
    tfbGetTrackFragmentGlobalDefaultValue_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t tfbCreateBlockBufferByteStream(const __CFAllocator *a1, CMBlockBufferRef *a2, void *a3)
{
  blockBufferOut = 0;
  v5 = CMBlockBufferCreateEmpty(a1, 0x10u, 0, &blockBufferOut);
  if (v5)
  {
    WritableForBlockBuffer = v5;
  }

  else
  {
    WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
    if (!WritableForBlockBuffer)
    {
      *a2 = blockBufferOut;
      *a3 = 0;
      return WritableForBlockBuffer;
    }
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return WritableForBlockBuffer;
}

uint64_t OUTLINED_FUNCTION_4_115(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{

  return tfbAddSampleGroupForGroupType(a1, a2, a3, a4, v4, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_11_57(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{

  return tfbAddSampleGroupForGroupType(a1, a2, a3, 1, 1u, a6, 0, 0);
}

uint64_t FigTTMLStyleCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v7 = CMDerivedObjectCreate();
    if (!v7)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
      if (v9)
      {
        return v9;
      }

      else
      {
        v7 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
        if (!v7)
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          FigTTMLParseNode(a2, figTTMLStyle_ConsumeChildNode, a3);
          v7 = v10;
          if (!v10)
          {
            *a4 = 0;
          }
        }
      }
    }
  }

  else
  {
    FigTTMLStyleCreate_cold_1(&v12);
    return v12;
  }

  return v7;
}

uint64_t figTTMLStyle_ConsumeChildNode(uint64_t a1, uint64_t *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (a3)
  {
    if (!result)
    {
      *a3 = 0;
    }
  }

  return result;
}

void figTTMLStyle_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLStyle_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"style: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLStyle_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    *a2 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    figTTMLStyle_CopyChildNodeArray_cold_1();
  }

  return 0;
}

uint64_t figTTMLStyle_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 13;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLExtension_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

void MovieHeaderMakerRelease(const __CFAllocator **ptr)
{
  if (ptr)
  {
    v2 = *ptr;
    v3 = ptr[11];
    if (v3)
    {
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ptr[11], i);
          releaseTrack_0(v2, ValueAtIndex);
        }
      }

      v8 = ptr[11];
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = ptr[1];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = ptr[3];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = ptr[4];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = ptr[5];
    if (v12)
    {
      CFRelease(v12);
    }

    CFAllocatorDeallocate(v2, ptr);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void releaseTrack_0(CFAllocatorRef allocator, CFTypeRef *ptr)
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

  v6 = ptr[3];
  if (v6)
  {
    CFRelease(v6);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t MovieHeaderMakerAddTrack(uint64_t a1, const void *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v6 = *(a1 + 88);
      if (v6 && (Count = CFArrayGetCount(v6), Count >= 1))
      {
        v8 = Count;
        v9 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(*(a1 + 88), v9);
          if (FigCFEqual())
          {
            break;
          }

          if (v8 == ++v9)
          {
            goto LABEL_8;
          }
        }

        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }

      else
      {
LABEL_8:
        if ((*(a1 + 16) & 2) != 0)
        {
          MovieHeaderMakerAddTrack_cold_1(&v11);
          return v11;
        }

        else
        {

          return addTrack(a1, a2, a3);
        }
      }
    }

    else
    {
      MovieHeaderMakerAddTrack_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    MovieHeaderMakerAddTrack_cold_3(&v13);
    return v13;
  }
}

uint64_t isMovieHeaderMakerSupportedFileType()
{
  if (FigFileTypeIsQTMovieFileType())
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

uint64_t MovieHeaderMakerSetShouldWriteMovieExtendsAtom(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 48) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerSetShouldWriteMovieExtendsAtom_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerSetShouldAllow64BitDataOffsetInTrackRunAtom(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 49) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerSetShouldAllow64BitDataOffsetInTrackRunAtom_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerSetMovieMetadataBlockBuffer(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    *(a1 + 40) = cf;
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
    MovieHeaderMakerSetMovieMetadataBlockBuffer_cold_1(&v4);
    return v4;
  }
}

uint64_t MovieHeaderMakerTrackSetTrackMetadataBlockBuffer(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 16);
      *(a2 + 16) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      return 0;
    }

    else
    {
      MovieHeaderMakerTrackSetTrackMetadataBlockBuffer_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetTrackMetadataBlockBuffer_cold_2(&v6);
    return v6;
  }
}

uint64_t MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 32) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 33) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 34) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetSampleReferenceBaseURL(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 24);
      *(a2 + 24) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      return 0;
    }

    else
    {
      MovieHeaderMakerTrackSetSampleReferenceBaseURL_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetSampleReferenceBaseURL_cold_2(&v6);
    return v6;
  }
}

uint64_t MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 35) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 36) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 44) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        *a3 = *(a2 + 44);
      }

      else
      {
        MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 40) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerAddByteCountToTrackRunDataOffsets(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 128) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerAddByteCountToTrackRunDataOffsets_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEditAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    result = 0;
    *(a2 + 37) = a3;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    MovieHeaderMakerTrackSetShouldWriteEditAtom_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 38) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 39) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerSetShouldWriteBaseMediaDecodeTimeAtomInTrackFragment(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 136) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerSetShouldWriteBaseMediaDecodeTimeAtomInTrackFragment_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerSetShouldWriteBaseDataOffsetIsMovieFragmentAtomFlagInTrackFragment(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 137) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerSetShouldWriteBaseDataOffsetIsMovieFragmentAtomFlagInTrackFragment_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerAddByteCountToChunkOffsets(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 80) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerAddByteCountToChunkOffsets_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackDidWriteEditAtom(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        *a3 = *(a2 + 41);
      }

      else
      {
        MovieHeaderMakerTrackDidWriteEditAtom_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MovieHeaderMakerTrackDidWriteEditAtom_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MovieHeaderMakerTrackDidWriteEditAtom_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration(uint64_t a1, CMTime *a2)
{
  if (!a1)
  {
    MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration_cold_2(&time1);
    return LODWORD(time1.value);
  }

  if (a2->flags)
  {
    if ((a2->flags & 0x1D) != 1 || (time1 = **&MEMORY[0x1E6960CC0], v6 = *a2, CMTimeCompare(&time1, &v6) >= 1))
    {
      MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration_cold_1(&time1);
      return LODWORD(time1.value);
    }
  }

  result = 0;
  v5 = *&a2->value;
  *(a1 + 68) = a2->epoch;
  *(a1 + 52) = v5;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeMajorBrand(uint64_t a1, uint64_t a2, uint64_t a3, char a4, CFNumberRef *a5)
{
  if (!isMovieHeaderMakerSupportedFileType())
  {
    MovieHeaderMakerCopyFileTypeMajorBrand_cold_2(&v13);
    return v13;
  }

  if (!a5)
  {
    MovieHeaderMakerCopyFileTypeMajorBrand_cold_1(&v12);
    return v12;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v7 = 1769172789;
    }

    else
    {
      v7 = 1836069938;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      v8 = 22048;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          v7 = 862416949;
          if (a4)
          {
            v7 = 862416950;
          }
        }

        else if (FigCFEqual())
        {
          v7 = 1835623985;
        }

        else if (FigCFEqual())
        {
          v7 = 1768780148;
        }

        else
        {
          v7 = 1903435808;
        }

        goto LABEL_12;
      }

      v8 = 16672;
    }

    v7 = v8 | 0x4D340000;
  }

LABEL_12:
  valuePtr = v7;
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  result = 0;
  *a5 = v9;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeMinorVersion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFNumberRef *a5)
{
  if (!isMovieHeaderMakerSupportedFileType())
  {
    MovieHeaderMakerCopyFileTypeMinorVersion_cold_2(&v11);
    return v11;
  }

  if (!a5)
  {
    MovieHeaderMakerCopyFileTypeMinorVersion_cold_1(&v10);
    return v10;
  }

  if (!FigCFEqual() && !FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v6 = 256;
        goto LABEL_6;
      }

      FigCFEqual();
    }

    valuePtr = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_6:
  valuePtr = v6;
LABEL_7:
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  result = 0;
  *a5 = v7;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeCompatibleBrands(const __CFAllocator *a1, uint64_t a2, uint64_t a3, char a4, CFMutableArrayRef *a5)
{
  if (!isMovieHeaderMakerSupportedFileType())
  {
    MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_3(&v13);
    return v13;
  }

  if (!a5)
  {
    MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_2(&v12);
    return v12;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_1(&v11);
    return v11;
  }

  v9 = Mutable;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      FigCFArrayAppendInt32();
    }

    else if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        FigCFArrayAppendInt32();
        if (a4)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual() || !FigCFEqual())
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    FigCFArrayAppendInt32();
    FigCFArrayAppendInt32();
    goto LABEL_13;
  }

  FigCFArrayAppendInt32();
  if ((a4 & 1) == 0)
  {
LABEL_6:
    FigCFArrayAppendInt32();
LABEL_13:
    FigCFArrayAppendInt32();
    goto LABEL_14;
  }

  FigCFArrayAppendInt32();
  FigCFArrayAppendInt32();
  if (FigCFEqual())
  {
    goto LABEL_13;
  }

LABEL_14:
  result = 0;
  *a5 = v9;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer(const __CFAllocator *a1, const __CFNumber *a2, const __CFNumber *a3, CFArrayRef theArray, CMBlockBufferRef *a5)
{
  valuePtr = 0;
  v20 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  dataPointerOut = 0;
  theBuffer = 0;
  if (!a2)
  {
    MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_4(&v22);
    return v22;
  }

  if (!a3)
  {
    MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_3(&v22);
    return v22;
  }

  if (!theArray)
  {
    MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_2(&v22);
    return v22;
  }

  if (!a5)
  {
    MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_1(&v22);
    return v22;
  }

  v11 = CMBlockBufferCreateWithMemoryBlock(a1, 0, 4 * Count + 16, a1, 0, 0, 4 * Count + 16, 1u, &theBuffer);
  v12 = theBuffer;
  if (!v11)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (!DataPointer)
    {
      *dataPointerOut = bswap32(4 * Count + 16);
      v14 = dataPointerOut;
      dataPointerOut += 4;
      *(v14 + 1) = 1887007846;
      dataPointerOut += 4;
      CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
      valuePtr = bswap32(valuePtr);
      *dataPointerOut = valuePtr;
      dataPointerOut += 4;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &v20 + 4);
      HIDWORD(v20) = bswap32(HIDWORD(v20));
      *dataPointerOut = HIDWORD(v20);
      dataPointerOut += 4;
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &v20);
          LODWORD(v20) = bswap32(v20);
          *dataPointerOut = v20;
          dataPointerOut += 4;
        }
      }

      v11 = 0;
      *a5 = theBuffer;
      return v11;
    }

    v11 = DataPointer;
    v12 = theBuffer;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer(CFAllocatorRef blockAllocator, int a2, unint64_t a3, CMBlockBufferRef *a4)
{
  destinationBuffer = 0;
  sourceBytes = 0;
  if (a2)
  {
    v5 = 16;
  }

  else
  {
    v5 = 8;
  }

  if (a4)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_2(&v15);
    }

    else
    {
      v8 = CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, v5, blockAllocator, 0, 0, v5, 1u, &destinationBuffer);
      if (v8)
      {
        goto LABEL_18;
      }

      if (!HIDWORD(a3))
      {
        if (a2)
        {
          sourceBytes = 0x6564697708000000;
          v9 = 8;
          v8 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 8uLL);
          if (v8)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v9 = 0;
        }

        sourceBytes = bswap32(a3) | 0x7461646D00000000;
        v10 = destinationBuffer;
        p_sourceBytes = &sourceBytes;
        v12 = v9;
LABEL_16:
        v8 = CMBlockBufferReplaceDataBytes(p_sourceBytes, v10, v12, 8uLL);
        if (!v8)
        {
          v13 = 0;
          *a4 = destinationBuffer;
          return v13;
        }

        goto LABEL_18;
      }

      if (a2 == 1)
      {
        sourceBytes = 0x7461646D01000000;
        v8 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 8uLL);
        if (!v8)
        {
          v15 = bswap64(a3 + 8);
          v10 = destinationBuffer;
          p_sourceBytes = &v15;
          v12 = 8;
          goto LABEL_16;
        }

LABEL_18:
        v13 = v8;
        goto LABEL_19;
      }

      MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_1(&v15);
    }
  }

  else
  {
    MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_3(&v15);
  }

  v13 = v15;
LABEL_19:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v13;
}

uint64_t MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer(uint64_t a1, const __CFAllocator *a2, uint64_t a3, int a4, CMBlockBufferRef *a5)
{
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  blockBufferOut = 0;
  *(a1 + 124) = a4;
  *(a1 + 112) = a3;
  *(a1 + 120) = FigFileTypeIsISOFileType();
  v8 = CMBlockBufferCreateEmpty(a2, 0x40u, 0, &blockBufferOut);
  if (v8 || (v8 = FigAtomWriterInitWithBlockBuffer(), v8))
  {
    appended = v8;
  }

  else
  {
    v62 = a5;
    v9 = *(a1 + 88);
    if (!v9 || (Count = CFArrayGetCount(v9), Count < 1))
    {
LABEL_204:
      FigAtomWriterEndAtom();
      appended = 0;
      *v62 = blockBufferOut;
      *(a1 + 124) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      return appended;
    }

    v11 = Count;
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v12);
      LODWORD(v81) = 0;
      v14 = MovieTrackFragmentNumTrackRuns(*ValueAtIndex, &v81);
      if (v14)
      {
        goto LABEL_212;
      }

      v15 = *(ValueAtIndex + 37);
      if (v15)
      {
        v15 = *(ValueAtIndex + 38) != 0;
      }

      if (v81 || (v15 & 1) != 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_204;
      }
    }

    v16 = *(a1 + 88);
    if (v16)
    {
      v17 = CFArrayGetCount(v16);
    }

    else
    {
      v17 = 0;
    }

    v14 = FigAtomWriterBeginAtom();
    if (v14)
    {
LABEL_212:
      appended = v14;
    }

    else
    {
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      LODWORD(v71) = bswap32(*(a1 + 124));
      v18 = FigAtomWriterInitWithParent();
      if (v18 || (v18 = FigAtomWriterBeginAtom(), v18) || (v18 = FigAtomWriterAppendVersionAndFlags(), v18))
      {
        appended = v18;
LABEL_208:
        FigAtomWriterEndAtom();
      }

      else
      {
        appended = FigAtomWriterAppendData();
        FigAtomWriterEndAtom();
        if (!appended)
        {
          if (v17 >= 1)
          {
            v20 = 0;
            structureAllocator = *MEMORY[0x1E695E480];
            while (1)
            {
              v21 = CFArrayGetValueAtIndex(*(a1 + 88), v20);
              v22 = v21;
              v74 = 0;
              v72 = 0u;
              v73 = 0u;
              v71 = 0u;
              v70 = 0;
              v23 = v21[37] && v21[38] && FigCFEqual() == 0;
              v24 = MovieTrackFragmentNumTrackRuns(*v22, &v70);
              if (v24)
              {
LABEL_213:
                appended = v24;
                goto LABEL_208;
              }

              v64 = v20;
              if (v70 != 0 || v23)
              {
                v24 = FigAtomWriterInitWithParent();
                if (v24)
                {
                  goto LABEL_213;
                }

                v24 = FigAtomWriterBeginAtom();
                if (v24)
                {
                  goto LABEL_213;
                }

                v84 = 0;
                v82 = 0u;
                v83 = 0u;
                v81 = 0u;
                v25 = *v22;
                LODWORD(v94) = 0;
                LODWORD(v90) = 0;
                BYTE4(v93) = 0;
                LODWORD(v89) = 0;
                LODWORD(v88) = 0;
                LODWORD(v87) = 0;
                LODWORD(v86) = 0;
                BasicInfo = MovieTrackGetBasicInfo(v25, 0, &v94);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v27 = *(a1 + 137);
                BasicInfo = MovieTrackFragmentGetTrackFragmentHeaderSampleDescriptionIndex(v25, &v89, &v93 + 4);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v28 = BYTE4(v93);
                BasicInfo = MovieTrackFragmentGetTrackFragmentHeaderDefaultSampleDuration(v25, &v88, &v93 + 4);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v29 = BYTE4(v93);
                BasicInfo = MovieTrackFragmentGetTrackFragmentHeaderDefaultSampleSize(v25, &v87, &v93 + 4);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v30 = v17;
                v31 = BYTE4(v93);
                BasicInfo = MovieTrackFragmentGetTrackFragmentHeaderDefaultSampleFlags(v25, &v86, &v93 + 4);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v32 = v27 == 0;
                if (v28)
                {
                  v32 |= 2u;
                }

                if (v29)
                {
                  v32 |= 8u;
                }

                if (v31)
                {
                  v32 |= 0x10u;
                }

                v33 = BYTE4(v93) ? v32 | 0x20 : v32;
                BasicInfo = FigAtomWriterInitWithParent();
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                BasicInfo = FigAtomWriterBeginAtom();
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                BasicInfo = FigAtomWriterAppendVersionAndFlags();
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                LODWORD(v90) = bswap32(v94);
                BasicInfo = FigAtomWriterAppendData();
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v17 = v30;
                if (v33)
                {
                  LODWORD(v79) = 0;
                  v95[0] = 0;
                  BasicInfo = MovieTrackFragmentNumTrackRuns(v25, &v79);
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  if (v79)
                  {
                    BasicInfo = MovieTrackFragmentGetDataOffsetAtTrackRunIndex(v25, 0, (v22 + 80));
                    if (BasicInfo)
                    {
                      goto LABEL_206;
                    }

                    v34 = *(v22 + 80);
                  }

                  else
                  {
                    v34 = 0;
                    *(v22 + 80) = 0;
                  }

                  v95[0] = bswap64(v34);
                  BasicInfo = FigAtomWriterAppendData();
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }
                }

                if ((v33 & 2) != 0 && (LODWORD(v95[0]) = bswap32(v89), BasicInfo = FigAtomWriterAppendData(), BasicInfo) || (v33 & 8) != 0 && (LODWORD(v95[0]) = bswap32(v88), BasicInfo = FigAtomWriterAppendData(), BasicInfo) || (v33 & 0x10) != 0 && (LODWORD(v95[0]) = bswap32(v87), BasicInfo = FigAtomWriterAppendData(), BasicInfo))
                {
LABEL_206:
                  appended = BasicInfo;
LABEL_207:
                  FigAtomWriterEndAtom();
                  goto LABEL_208;
                }

                if ((v33 & 0x20) != 0)
                {
                  LODWORD(v95[0]) = bswap32(v86);
                  appended = FigAtomWriterAppendData();
                  FigAtomWriterEndAtom();
                  if (appended)
                  {
                    goto LABEL_208;
                  }
                }

                else
                {
                  FigAtomWriterEndAtom();
                }

                if (v23)
                {
                  appended = appendEditAtom(a1, v22, 0);
                  if (appended || !v70)
                  {
                    FigAtomWriterEndAtom();
                    if (appended)
                    {
                      goto LABEL_209;
                    }

                    goto LABEL_200;
                  }
                }

                else if (!v70)
                {
                  goto LABEL_199;
                }

                if (*(a1 + 136))
                {
                  v84 = 0;
                  v82 = 0u;
                  v83 = 0u;
                  v81 = 0u;
                  LOBYTE(v90) = 0;
                  v94 = 0;
                  v95[0] = 0;
                  BasicInfo = MovieTrackFragmentGetTrackFragmentBaseMediaDecodeTimeValue(*v22, v95, &v90);
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  if (v90 != 1)
                  {
                    appended = 4294950954;
                    goto LABEL_207;
                  }

                  BasicInfo = FigAtomWriterInitWithParent();
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  BasicInfo = FigAtomWriterBeginAtom();
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  BasicInfo = FigAtomWriterAppendVersionAndFlags();
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  v94 = bswap64(v95[0]);
                  appended = FigAtomWriterAppendData();
                  FigAtomWriterEndAtom();
                  if (appended)
                  {
                    goto LABEL_208;
                  }
                }

                if (*(v22 + 40))
                {
                  LOBYTE(v87) = 0;
                  LODWORD(v88) = 0;
                  v94 = 0;
                  v90 = 0;
                  LOBYTE(v86) = 0;
                  if (*(a1 + 137) == 1)
                  {
                    appended = MovieTrackFragmentGetSampleAuxInformation(*v22, &v87, &v88, &v94, &v90, &v86);
                    if (!appended)
                    {
                      v35 = v88;
                      if (v88)
                      {
                        v36 = v90;
                        LODWORD(v89) = v88;
                        v84 = 0;
                        v82 = 0u;
                        v83 = 0u;
                        v81 = 0u;
                        v95[0] = 0;
                        BasicInfo = FigAtomWriterInitWithParent();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterBeginAtom();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterAppendVersionAndFlags();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        LODWORD(v89) = bswap32(v35);
                        BasicInfo = FigAtomWriterAppendData();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        CMBlockBufferGetDataLength(v36);
                        BasicInfo = FigAtomWriterAppendBlockBufferData();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterGetAtomGlobalDataOffset();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        v37 = v95[0];
                        FigAtomWriterEndAtom();
                        v38 = v88;
                        v39 = v94;
                        LOBYTE(v89) = v87;
                        v84 = 0;
                        v82 = 0u;
                        v83 = 0u;
                        v81 = 0u;
                        BasicInfo = FigAtomWriterInitWithParent();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterBeginAtom();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterAppendVersionAndFlags();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterAppendData();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        LODWORD(v95[0]) = bswap32(v38);
                        v40 = FigAtomWriterAppendData();
                        appended = v40;
                        if (v39 && !v40)
                        {
                          CMBlockBufferGetDataLength(v39);
                          appended = FigAtomWriterAppendBlockBufferData();
                        }

                        FigAtomWriterEndAtom();
                        if (appended)
                        {
                          goto LABEL_208;
                        }

                        v41 = v37 + 4;
                        v84 = 0;
                        v82 = 0u;
                        v83 = 0u;
                        v81 = 0u;
                        LODWORD(v89) = 1;
                        v42 = FigAtomWriterInitWithParent();
                        if (!v42)
                        {
                          v42 = FigAtomWriterBeginAtom();
                          if (!v42)
                          {
                            v42 = FigAtomWriterAppendVersionAndFlags();
                            if (!v42)
                            {
                              LODWORD(v89) = 0x1000000;
                              v42 = FigAtomWriterAppendData();
                              if (!v42)
                              {
                                if (v41 <= 0xFFFFFFFFLL)
                                {
                                  LODWORD(v95[0]) = bswap32(v41);
                                }

                                else
                                {
                                  v95[0] = bswap64(v41);
                                }

                                v42 = FigAtomWriterAppendData();
                              }
                            }
                          }
                        }

                        appended = v42;
                        FigAtomWriterEndAtom();
                      }
                    }

                    if (appended)
                    {
                      goto LABEL_208;
                    }
                  }

                  else
                  {
                    MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_1(&v81);
                    appended = v81;
                    if (v81)
                    {
                      goto LABEL_208;
                    }
                  }
                }

                v24 = appendSampleGroupDescriptionAtoms(v22, MovieTrackFragmentCopySampleGroupDescriptionArrays);
                if (v24)
                {
                  goto LABEL_213;
                }

                v24 = appendSampleToGroupAtoms(a1, v22, MovieTrackFragmentCopySampleGroupArray);
                if (v24)
                {
                  goto LABEL_213;
                }

                if (v70 >= 1)
                {
                  v43 = 0;
                  do
                  {
                    v84 = 0;
                    v82 = 0u;
                    v83 = 0u;
                    v81 = 0u;
                    v44 = *v22;
                    v79 = 0;
                    v80 = 0;
                    v78 = 0;
                    v77 = 0;
                    v76 = 0;
                    v75 = 0;
                    DataOffsetAtTrackRunIndex = MovieTrackFragmentNumSamplesAtTrackRunIndex(v44, v43, &v80 + 1);
                    if (DataOffsetAtTrackRunIndex || (DataOffsetAtTrackRunIndex = MovieTrackFragmentGetDataOffsetAtTrackRunIndex(v44, v43, &v79), DataOffsetAtTrackRunIndex) || (DataOffsetAtTrackRunIndex = MovieTrackFragmentGetFirstSampleFlagsAtTrackRunIndex(v44, v43, &v78, &v77), DataOffsetAtTrackRunIndex) || (DataOffsetAtTrackRunIndex = getTimeValueToAddToCompositionOffsets(a1, v22, 0, &v76, &v75, &v75 + 1), DataOffsetAtTrackRunIndex))
                    {
                      appended = DataOffsetAtTrackRunIndex;
                      goto LABEL_195;
                    }

                    if (HIBYTE(v75))
                    {
                      MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_3(v95);
                      appended = LODWORD(v95[0]);
                      goto LABEL_195;
                    }

                    v46 = v76;
                    v94 = 0;
                    v95[0] = 0;
                    v92 = 0;
                    v93 = 0;
                    v91 = 0;
                    v89 = 0;
                    v90 = 0;
                    v87 = 0;
                    v88 = 0;
                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentNumSamplesAtTrackRunIndex(v44, v43, &v93 + 1);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentGetSampleDurationArrayBbufAtTrackRunIndex(v44, v43, &v93, &v90);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentGetSampleSizeArrayBbufAtTrackRunIndex(v44, v43, &v92 + 1, &v89);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentGetSampleFlagsArrayBbufAtTrackRunIndex(v44, v43, &v92, &v88);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex(v44, v43, &v91, &v87);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    v48 = v93 != 0;
                    v49 = v90;
                    if (!v93)
                    {
                      v49 = 0;
                    }

                    v50 = v48 << 8;
                    if (v93)
                    {
                      v51 = 2;
                    }

                    else
                    {
                      v51 = 1;
                    }

                    if (HIDWORD(v92))
                    {
                      v49 = v89;
                      v50 = ((v93 != 0) << 8) | 0x200;
                      v48 = v51;
                    }

                    if (v92)
                    {
                      v49 = v88;
                      v50 |= 0x400u;
                      ++v48;
                    }

                    if (v91)
                    {
                      v52 = v87;
                    }

                    else
                    {
                      v52 = v49;
                    }

                    if (v91)
                    {
                      v53 = v50 | 0x800;
                    }

                    else
                    {
                      v53 = v50;
                    }

                    if (v91)
                    {
                      ++v48;
                    }

                    if (v48)
                    {
                      if (v48 == 1)
                      {
                        if (v52)
                        {
                          v52 = CFRetain(v52);
                        }

                        v95[0] = v52;
                      }

                      else
                      {
                        SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCreateEmpty(structureAllocator, 0x10u, 0, v95);
                        if (SampleDurationArrayBbufAtTrackRunIndex)
                        {
                          goto LABEL_190;
                        }

                        SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamCreateWritableForBlockBuffer();
                        if (SampleDurationArrayBbufAtTrackRunIndex)
                        {
                          goto LABEL_190;
                        }

                        if (HIDWORD(v93))
                        {
                          v54 = 0;
                          v55 = 0;
                          while (1)
                          {
                            v86 = 0;
                            if ((v53 & 0x100) != 0)
                            {
                              destination = 0;
                              SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCopyDataBytes(v90, v54, 4uLL, &destination);
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }

                              SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamAppend();
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }
                            }

                            if ((v53 & 0x200) != 0)
                            {
                              destination = 0;
                              SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCopyDataBytes(v89, v54, 4uLL, &destination);
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }

                              SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamAppend();
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }
                            }

                            if ((v53 & 0x400) != 0)
                            {
                              destination = 0;
                              SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCopyDataBytes(v88, v54, 4uLL, &destination);
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }

                              SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamAppend();
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }
                            }

                            if ((v53 & 0x800) != 0)
                            {
                              destination = 0;
                              SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCopyDataBytes(v87, v54, 4uLL, &destination);
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }

                              destination = bswap32(bswap32(destination) + v46);
                              SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamAppend();
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }
                            }

                            ++v55;
                            v54 += 4;
                            if (v55 >= HIDWORD(v93))
                            {
                              goto LABEL_159;
                            }
                          }

LABEL_190:
                          appended = SampleDurationArrayBbufAtTrackRunIndex;
                          if (v95[0])
                          {
                            CFRelease(v95[0]);
                          }

                          v53 = 0;
                          v56 = 0;
                          goto LABEL_160;
                        }
                      }
                    }

LABEL_159:
                    appended = 0;
                    v56 = v95[0];
                    v95[0] = 0;
LABEL_160:
                    if (v94)
                    {
                      CFRelease(v94);
                    }

                    if (appended)
                    {
                      goto LABEL_180;
                    }

                    if (v77)
                    {
                      v57 = 5;
                    }

                    else
                    {
                      v57 = 1;
                    }

                    v79 = *(a1 + 128) + v79 - *(v22 + 80);
                    if (v79 == v79)
                    {
                      if ((v53 & 0x800) == 0)
                      {
                        LOBYTE(v75) = 0;
                      }
                    }

                    else
                    {
                      if (!*(a1 + 49))
                      {
                        MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_2(v95);
                        appended = LODWORD(v95[0]);
LABEL_180:
                        FigAtomWriterEndAtom();
                        if (v56)
                        {
LABEL_186:
                          CFRelease(v56);
                        }

                        if (appended)
                        {
                          goto LABEL_208;
                        }

                        goto LABEL_188;
                      }

                      LOBYTE(v75) = 2;
                    }

                    v58 = FigAtomWriterInitWithParent();
                    if (v58 || (v58 = FigAtomWriterBeginAtom(), v58) || (v59 = v57 | v53, v58 = FigAtomWriterAppendVersionAndFlags(), v58) || (LODWORD(v80) = bswap32(HIDWORD(v80)), v58 = FigAtomWriterAppendData(), v58) || (v75 > 1u ? (v95[0] = bswap64(v79)) : (LODWORD(v95[0]) = bswap32(v79)), (v58 = FigAtomWriterAppendData(), v58) || (v59 & 4) != 0 && (LODWORD(v95[0]) = bswap32(v78), v58 = FigAtomWriterAppendData(), v58)))
                    {
                      appended = v58;
                      goto LABEL_180;
                    }

                    if (v56)
                    {
                      CMBlockBufferGetDataLength(v56);
                      appended = FigAtomWriterAppendBlockBufferData();
                      FigAtomWriterEndAtom();
                      goto LABEL_186;
                    }

                    appended = 0;
LABEL_195:
                    FigAtomWriterEndAtom();
                    if (appended)
                    {
                      goto LABEL_208;
                    }

LABEL_188:
                    v43 = (v43 + 1);
                  }

                  while (v43 < v70);
                }
              }

LABEL_199:
              FigAtomWriterEndAtom();
LABEL_200:
              v20 = v64 + 1;
              if (v64 + 1 == v17)
              {
                goto LABEL_204;
              }
            }
          }

          goto LABEL_204;
        }
      }
    }

LABEL_209:
    FigAtomWriterEndAtom();
  }

  v61 = blockBufferOut;
  *(a1 + 124) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (v61)
  {
    CFRelease(v61);
  }

  return appended;
}

const __CFArray *hasFormatDescriptionAndNonZeroMediaTimeScale(uint64_t a1)
{
  result = MovieTrackGetNumFormatDescriptions(a1);
  if (result)
  {
    return (MovieTrackGetMediaTimeScale(a1) != 0);
  }

  return result;
}

uint64_t appendSampleToGroupAtoms(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, CFArrayRef *))
{
  theArray = 0;
  Info = a3(*a2, &theArray);
  if (Info)
  {
LABEL_74:
    appended = Info;
  }

  else
  {
    if (!theArray)
    {
      return 0;
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v28 = 0;
        v27 = 0;
        v26 = 0;
        Info = MovieSampleGroupGetInfo(ValueAtIndex, &v27, 0, 0, &v26);
        if (Info)
        {
          goto LABEL_74;
        }

        if (*(a2 + 36) || v27 != 1919904876)
        {
          break;
        }

LABEL_64:
        if (v7 == ++v8)
        {
          goto LABEL_69;
        }
      }

      v11 = *(a1 + 120);
      v12 = v27;
      v13 = v28;
      cf = 0;
      v31 = 0;
      if (v26 && v11)
      {
        v14 = MovieSampleGroupCreateNonCompactCopy(ValueAtIndex, &v31);
        if (!v14)
        {
          ValueAtIndex = v31;
          goto LABEL_24;
        }

        goto LABEL_67;
      }

      if (!v26)
      {
LABEL_24:
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        NumSampleToGroupTableEntries = MovieSampleGroupGetNumSampleToGroupTableEntries(ValueAtIndex);
        LODWORD(theBuffer) = 0;
        if (NumSampleToGroupTableEntries)
        {
          v20 = NumSampleToGroupTableEntries;
          v21 = FigAtomWriterInitWithParent();
          if (v21 || (v21 = FigAtomWriterBeginAtom(), v21) || (v21 = FigAtomWriterAppendVersionAndFlags(), v21) || (LODWORD(theBuffer) = bswap32(v12), v21 = FigAtomWriterAppendData(), v21) || v13 && (LODWORD(v36) = bswap32(HIDWORD(v12)), v21 = FigAtomWriterAppendData(), v21) || (LODWORD(v36) = bswap32(v20), v21 = FigAtomWriterAppendData(), v21))
          {
            appended = v21;
          }

          else
          {
            SampleToGroupTable = MovieSampleGroupGetSampleToGroupTable(ValueAtIndex);
            appended = SampleToGroupTable;
            if (SampleToGroupTable)
            {
              CMBlockBufferGetDataLength(SampleToGroupTable);
              appended = FigAtomWriterAppendBlockBufferData();
            }
          }
        }

        else
        {
          appended = 0;
        }

LABEL_58:
        FigAtomWriterEndAtom();
        goto LABEL_59;
      }

      v14 = MovieSampleGroupCreateOptimizedCopy(ValueAtIndex, &cf);
      if (v14)
      {
LABEL_67:
        appended = v14;
LABEL_59:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (appended)
        {
          goto LABEL_70;
        }

        goto LABEL_64;
      }

      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v34 = 0;
      theBuffer = 0;
      v33 = 0;
      appended = MovieSampleGroupCopyCompactAtomComponents(cf, &v36, &theBuffer, &v34);
      if (appended || !HIDWORD(v36))
      {
LABEL_54:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        goto LABEL_58;
      }

      v16 = FigAtomWriterInitWithParent();
      if (!v16)
      {
        v16 = FigAtomWriterBeginAtom();
        if (!v16)
        {
          HIDWORD(v18) = HIDWORD(v37) - 4;
          LODWORD(v18) = HIDWORD(v37) - 4;
          v17 = v18 >> 2;
          if (v17 <= 7 && ((1 << v17) & 0x8B) != 0)
          {
            if (v11)
            {
              v23 = FigAtomWriterAppendVersionAndFlags();
              if (v23)
              {
                goto LABEL_68;
              }

              v33 = bswap32(v12);
              v23 = FigAtomWriterAppendData();
              if (v23)
              {
                goto LABEL_68;
              }

              if (!v13)
              {
LABEL_47:
                v39 = bswap32(v36);
                v16 = FigAtomWriterAppendData();
                if (!v16)
                {
                  if (!theBuffer || (CMBlockBufferGetDataLength(theBuffer), v16 = FigAtomWriterAppendBlockBufferData(), !v16))
                  {
                    if (!v34)
                    {
                      appended = 0;
                      goto LABEL_54;
                    }

                    CMBlockBufferGetDataLength(v34);
                    v16 = FigAtomWriterAppendBlockBufferData();
                  }
                }

                goto LABEL_53;
              }

              v39 = bswap32(HIDWORD(v12));
            }

            else
            {
              v23 = FigAtomWriterAppendVersionAndFlags();
              if (v23)
              {
                goto LABEL_68;
              }

              v33 = bswap32(v12);
              v23 = FigAtomWriterAppendData();
              if (v23)
              {
                goto LABEL_68;
              }

              v24 = bswap32(HIDWORD(v12));
              if (!v13)
              {
                v24 = 0;
              }

              v39 = v24;
              v23 = FigAtomWriterAppendData();
              if (v23)
              {
                goto LABEL_68;
              }

              v32 = bswap32(BYTE4(v37) | ((v38 != 0) << 8));
            }

            v23 = FigAtomWriterAppendData();
            if (!v23)
            {
              goto LABEL_47;
            }

LABEL_68:
            appended = v23;
            goto LABEL_54;
          }

          fig_log_get_emitter();
          v16 = FigSignalErrorAtGM();
        }
      }

LABEL_53:
      appended = v16;
      goto LABEL_54;
    }

LABEL_69:
    appended = 0;
  }

LABEL_70:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return appended;
}

uint64_t createMetadataSerializerDictionaryWithMetadata(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, const __CFDictionary *a7, CFAllocatorRef allocator, CFMutableDictionaryRef *a9)
{
  v89 = *MEMORY[0x1E69E9840];
  value = 0;
  v76 = 0;
  v12 = *(MEMORY[0x1E695E9F8] + 16);
  *&callBacks.version = *MEMORY[0x1E695E9F8];
  *&callBacks.release = v12;
  *&callBacks.equal = *(MEMORY[0x1E695E9F8] + 32);
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    createMetadataSerializerDictionaryWithMetadata_cold_2(bytes);
LABEL_125:
    v30 = 0;
    v22 = *bytes;
    goto LABEL_113;
  }

  callBacks.equal = 0;
  alloc = *MEMORY[0x1E695E480];
  theSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
  if (!theSet)
  {
    createMetadataSerializerDictionaryWithMetadata_cold_1(bytes);
    goto LABEL_125;
  }

  theDict = Mutable;
  if (a6)
  {
    keys[0] = @"dataType";
    keys[1] = @"dataTypeNamespace";
    values[0] = 0;
    values[1] = @"com.apple.itunes";
    valuePtr = 1;
    cf = 0;
    v79 = 0;
    v80 = 0;
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt64IfPresent();
    *&v14 = 0x3030303030303030;
    *(&v14 + 1) = 0x3030303030303030;
    *&bytes[1] = v14;
    *&bytes[17] = v14;
    v84 = v14;
    v85 = v14;
    v86 = v14;
    v87 = v14;
    *v88 = v14;
    *&v88[15] = 808464432;
    bytes[0] = 32;
    snprintf(&bytes[9], 0x24uLL, " %08X %08X %016llX", HIDWORD(v80), v80, v79);
    v15 = 44;
    do
    {
      bytes[v15] = 32;
      v15 += 9;
    }

    while (v15 != 116);
    v16 = CFStringCreateWithBytes(alloc, bytes, 116, 0x600u, 0);
    v17 = CFNumberCreate(alloc, kCFNumberSInt32Type, &valuePtr);
    values[0] = v17;
    v18 = CFDictionaryCreate(alloc, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v19 = createMetadataSerializerForFormat(@"com.apple.itunes", allocator, &cf);
    if (v19)
    {
      v22 = v19;
    }

    else
    {
      FigMetadataWriter = FigMetadataSerializerGetFigMetadataWriter(cf);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v21)
      {
        v22 = v21(FigMetadataWriter, @"itlk", @"com.apple.iTunes.iTunSMPB", v16, v18);
        if (!v22)
        {
          v23 = cf;
          cf = 0;
          if (!v18)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v22 = 4294954514;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v23 = 0;
    if (!v18)
    {
      goto LABEL_16;
    }

LABEL_15:
    CFRelease(v18);
LABEL_16:
    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v22)
    {
      v30 = 0;
      goto LABEL_112;
    }

    CFDictionaryAddValue(Mutable, @"com.apple.itunes", v23);
    if (v23)
    {
      CFRelease(v23);
    }
  }

  if (a1 < 1)
  {
LABEL_111:
    v30 = 0;
    v22 = 0;
    *a9 = theDict;
    Mutable = 0;
    goto LABEL_112;
  }

  v24 = 0;
  v60 = a1;
  while (1)
  {
    v25 = *(a2 + 8 * v24);
    v26 = *(a3 + 8 * v24);
    memset(bytes, 0, 24);
    if (FigCFEqual() || FigCFEqual())
    {
      if (a5)
      {
        v27 = 0;
      }

      else
      {
        *bytes = @"com.apple.itunes";
        v27 = 1;
      }

      v28 = v27 + 1;
      *&bytes[8 * v27] = @"org.mp4ra";
    }

    else
    {
      if (FigCFEqual() || FigCFEqual())
      {
        *bytes = @"org.mp4ra";
LABEL_98:
        v28 = 1;
        goto LABEL_31;
      }

      if (!FigFileTypeIsQTMovieFileType())
      {
        goto LABEL_108;
      }

      if (FigCFEqual() || FigCFEqual())
      {
        *bytes = v25;
        goto LABEL_98;
      }

      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          *bytes = @"com.apple.quicktime.mdta";
          *&bytes[8] = @"com.apple.quicktime.udta";
          v28 = 2;
          goto LABEL_31;
        }

LABEL_108:
        v28 = 0;
        goto LABEL_31;
      }

      if (a5)
      {
        v56 = 0;
      }

      else
      {
        *bytes = @"com.apple.itunes";
        v56 = 1;
      }

      v57 = &bytes[8 * v56];
      v28 = v56 | 2;
      *v57 = @"com.apple.quicktime.mdta";
      *(v57 + 1) = @"com.apple.quicktime.udta";
    }

LABEL_31:
    v29 = CFArrayCreate(alloc, bytes, v28, MEMORY[0x1E695E9C0]);
    if (v29)
    {
      break;
    }

LABEL_93:
    if (++v24 == v60)
    {
      goto LABEL_111;
    }
  }

  v30 = v29;
  v63 = v24;
  Count = CFArrayGetCount(v29);
  Mutable = theDict;
  if (Count < 1)
  {
LABEL_92:
    CFRelease(v30);
    v24 = v63;
    goto LABEL_93;
  }

  v31 = 0;
  v64 = v30;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v30, v31);
    if (FigCFEqual())
    {
      break;
    }

    v35 = FigCFEqual();
    v36 = kFigMetadataConverterDestFileFormat_ISO_3GP;
    if (v35 || (v37 = FigCFEqual(), v36 = kFigMetadataConverterDestFileFormat_ISO_MP4, v37))
    {
      v38 = CFDictionaryCreate(alloc, kFigMetadataConverterCreateOption_DestFileFormat, v36, 1, 0, 0);
      v39 = FigMetadataCreateConverter(v25, ValueAtIndex, v38, alloc, &v76);
      if (v38)
      {
        CFRelease(v38);
      }

      if (v39)
      {
        goto LABEL_87;
      }

      break;
    }

    if (!FigMetadataCreateConverter(v25, ValueAtIndex, 0, alloc, &v76))
    {
      break;
    }

LABEL_87:
    if (++v31 == Count)
    {
      goto LABEL_92;
    }
  }

  v33 = CFDictionaryGetValue(Mutable, ValueAtIndex);
  value = v33;
  if (v33)
  {
    v34 = CFRetain(v33);
    value = v34;
LABEL_45:
    v70 = FigMetadataSerializerGetFigMetadataWriter(v34);
    v41 = (FigCFEqual() || FigCFEqual()) && FigCFEqual() != 0;
    v42 = FigCFEqual();
    v73 = v76;
    if (a7)
    {
      v68 = CFDictionaryContainsKey(a7, @"comn");
      if (!v26)
      {
        goto LABEL_83;
      }

LABEL_52:
      v43 = CFArrayGetCount(v26);
      if (v43 >= 1)
      {
        v44 = v43;
        v45 = 0;
        v72 = v42 != 0 || v41;
        do
        {
          v46 = CFArrayGetValueAtIndex(v26, v45);
          v47 = CFDictionaryGetValue(v46, @"keyspace");
          v48 = CFDictionaryGetValue(v46, @"key");
          v49 = CFDictionaryGetValue(v46, @"value");
          *bytes = 0;
          if (!v48)
          {
            goto LABEL_80;
          }

          if (!v47)
          {
            goto LABEL_80;
          }

          v50 = v49;
          if (!v49)
          {
            goto LABEL_80;
          }

          if (!FigCFEqual() && !FigCFEqual())
          {
            goto LABEL_64;
          }

          if (FigCFEqual())
          {
            if (FigCFEqual())
            {
              FigCFEqual();
            }

            goto LABEL_80;
          }

          v51 = CFGetTypeID(v48);
          if (v51 == CFNumberGetTypeID())
          {
            LODWORD(keys[0]) = 0;
            CFNumberGetValue(v48, kCFNumberSInt32Type, keys);
            v52 = LODWORD(keys[0]) != 1835365473;
          }

          else
          {
LABEL_64:
            v52 = 1;
          }

          if (FigCFEqual())
          {
            if (FigCFEqual() != 0 || !v52)
            {
              goto LABEL_80;
            }
          }

          else if (!v52)
          {
            goto LABEL_80;
          }

          if (v72 || !CFSetContainsValue(theSet, v46))
          {
            v53 = v46;
            if (!v73)
            {
              goto LABEL_75;
            }

            v54 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v54)
            {
              if (!v54(v73, v46, alloc, bytes))
              {
                v48 = CFDictionaryGetValue(*bytes, @"key");
                v47 = CFDictionaryGetValue(*bytes, @"keyspace");
                v50 = CFDictionaryGetValue(*bytes, @"value");
                v53 = *bytes;
LABEL_75:
                if (!a7 || doesAllowListContainKeyspaceAndKey(a7, v68, v47, v48))
                {
                  v55 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (v55)
                  {
                    if (!v55(v70, v47, v48, v50, v53))
                    {
                      CFSetAddValue(theSet, v46);
                    }
                  }
                }
              }
            }
          }

LABEL_80:
          if (*bytes)
          {
            CFRelease(*bytes);
          }

          ++v45;
        }

        while (v44 != v45);
      }
    }

    else
    {
      v68 = 0;
      if (v26)
      {
        goto LABEL_52;
      }
    }

LABEL_83:
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    v30 = v64;
    Mutable = theDict;
    if (v76)
    {
      CFRelease(v76);
      v76 = 0;
    }

    goto LABEL_87;
  }

  v40 = createMetadataSerializerForFormat(ValueAtIndex, alloc, &value);
  if (!v40)
  {
    CFDictionaryAddValue(Mutable, ValueAtIndex, value);
    v34 = value;
    goto LABEL_45;
  }

  v22 = v40;
LABEL_112:
  CFRelease(theSet);
LABEL_113:
  if (value)
  {
    CFRelease(value);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v22;
}

uint64_t createMetadataSerializerForFormat(uint64_t a1, uint64_t a2, void *a3)
{
  if (FigCFEqual())
  {

    return FigMetadataSerializerCreateForQuickTimeMetadata(a2, a3);
  }

  else if (FigCFEqual())
  {

    return FigMetadataSerializerCreateForQuickTimeUserData(a2, a3);
  }

  else if (FigCFEqual())
  {

    return FigMetadataSerializerCreateForISOUserData(a2, a3);
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {

      return FigMetadataSerializerCreateForiTunes(a2, a3);
    }
  }

  return result;
}

uint64_t doesAllowListContainKeyspaceAndKey(const __CFDictionary *a1, uint64_t a2, const void *a3, const __CFNumber *a4)
{
  Value = CFDictionaryGetValue(a1, a3);
  if (Value)
  {
    v9 = Value;
    if (a4 && (v10 = CFGetTypeID(a4), v10 == CFNumberGetTypeID()))
    {
      v11 = *MEMORY[0x1E695E480];
      valuePtr = 0;
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      valuePtr = bswap32(valuePtr);
      *cStr = valuePtr;
      v16 = 0;
      v12 = CFStringCreateWithCString(v11, cStr, 0);
      a4 = v12;
    }

    else
    {
      v12 = 0;
    }

    v18.length = CFArrayGetCount(v9);
    v18.location = 0;
    if (CFArrayContainsValue(v9, v18, a4))
    {
      a2 = 1;
      if (!v12)
      {
        return a2;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    if (!FigCFEqual())
    {
      CommonKey = FigMetadataGetCommonKey(a3, a4);
      if (CommonKey)
      {
        a2 = doesAllowListContainKeyspaceAndKey(a1, a2, @"comn", CommonKey);
        if (!v12)
        {
          return a2;
        }

        goto LABEL_14;
      }
    }

    a2 = 0;
  }

  if (v12)
  {
LABEL_14:
    CFRelease(v12);
  }

  return a2;
}

double OUTLINED_FUNCTION_2_145()
{
  STACK[0x350] = 0;
  result = 0.0;
  *&STACK[0x330] = 0u;
  *&STACK[0x340] = 0u;
  *&STACK[0x320] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_100()
{
  v1.i32[0] = STACK[0x240];
  v1.i32[1] = STACK[0x220];
  STACK[0x2E0] = vrev32_s8(vmovn_s64(vcvtq_n_s64_f64(vcvtq_f64_f32(v1), 0x10uLL)));

  return FigAtomWriterInitWithParent();
}

uint64_t OUTLINED_FUNCTION_6_87()
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_7_76(int a1, int a2, size_t dataLength, int a4, int a5, int a6, int a7, int a8, CMBlockBufferRef *blockBufferOut, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, CFAllocatorRef blockAllocator, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMBlockBufferRef a43)
{

  return CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, dataLength, blockAllocator, 0, 0, dataLength, 1u, &a43);
}

double OUTLINED_FUNCTION_9_57()
{
  STACK[0x2A0] = 0;
  result = 0.0;
  *&STACK[0x280] = 0u;
  *&STACK[0x290] = 0u;
  *&STACK[0x270] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_54()
{
  LODWORD(STACK[0x240]) = 0;
  LODWORD(STACK[0x220]) = 0;
  return *v0;
}

double OUTLINED_FUNCTION_17_38()
{
  STACK[0x310] = 0;
  result = 0.0;
  *&STACK[0x2F0] = 0u;
  *&STACK[0x300] = 0u;
  *&STACK[0x2E0] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_37(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *returnedPointerOut, uint64_t a60, uint64_t a61, char temporaryBlock)
{

  return CMBlockBufferAccessDataBytes(v62, v63, 4uLL, &temporaryBlock, &returnedPointerOut);
}

uint64_t OUTLINED_FUNCTION_27_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *returnedPointerOut)
{

  return CMBlockBufferAccessDataBytes(v60, v61, v59, v62, &returnedPointerOut);
}

uint64_t OUTLINED_FUNCTION_28_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *returnedPointerOut)
{

  return CMBlockBufferAccessDataBytes(v60, v62, v59, v61, &returnedPointerOut);
}

int16x4_t OUTLINED_FUNCTION_31_26(int8x8_t a1, int8x8_t a2)
{
  v2 = vand_s8(a1, a2);
  v3 = vuzp1_s16(v2, v2);
  return vzip1_s16(v3, vdup_lane_s16(v3, 1));
}

uint64_t OUTLINED_FUNCTION_37_24@<X0>(int a1@<W8>)
{
  *(v1 - 92) = a1;

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_38_18()
{

  return __memcpy_chk();
}

uint64_t OUTLINED_FUNCTION_39_19()
{

  return __memcpy_chk();
}

void OUTLINED_FUNCTION_40_20()
{

  JUMPOUT(0x19A8CC720);
}

uint64_t OUTLINED_FUNCTION_41_22()
{

  return FigCFEqual();
}

uint64_t FigCFAppendStringWithSmartComma(CFTypeRef *a1, const __CFString *a2)
{
  if (a2)
  {
    if (a1)
    {
      v3 = *MEMORY[0x1E695E480];
      if (*a1)
      {
        v4 = CFStringCreateWithFormat(v3, 0, @"%@, %@", *a1, a2);
        CFRelease(*a1);
        result = 0;
        *a1 = v4;
      }

      else
      {
        Copy = CFStringCreateCopy(v3, a2);
        result = 0;
        *a1 = Copy;
      }
    }

    else
    {
      FigCFAppendStringWithSmartComma_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigCFAppendStringWithSmartComma_cold_2(&v8);
    return v8;
  }

  return result;
}

CFStringRef FigCopyGMLoggingDescriptionForOption(const __CFDictionary *a1)
{
  if (!a1)
  {
    return CFRetain(@"NULL");
  }

  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    Value = FigCFDictionaryGetValue();
  }

  if (Value)
  {
    v3 = Value;
  }

  else
  {
    v3 = @"unspecified";
  }

  v4 = FigCFDictionaryGetValue();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"none";
  }

  cf = 0;
  v6 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsTaggedMediaCharacteristics");
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  if (CFArrayGetCount(v6) < 1)
  {
    goto LABEL_15;
  }

  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    FigCFAppendStringWithSmartComma(&cf, ValueAtIndex);
    ++v8;
  }

  while (v8 < CFArrayGetCount(v7));
  v10 = cf;
  if (!cf)
  {
LABEL_15:
    v10 = CFRetain(&stru_1F0B1AFB8);
    cf = v10;
  }

  v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Option: ID=%@, Language=%@, Characteristics=%@", v5, v3, v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v11)
  {
    return CFRetain(@"NULL");
  }

  return v11;
}

uint64_t FigMediaCharacteristicsGetTaggedMediaCharacteristicsForEnhancedSpeechIntelligibility()
{
  if (_MergedGlobals_103 != -1)
  {
    FigMediaCharacteristicsGetTaggedMediaCharacteristicsForEnhancedSpeechIntelligibility_cold_1();
  }

  return qword_1ED4CB680;
}

CFArrayRef figMediaCharacteristicsCreateTaggedMediaCharacteristicsForEnhancedSpeechIntelligibilityOnce(CFArrayRef *a1)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"com.apple.amp.fitness.trainer.focus";
  values[1] = @"public.accessibility.enhances-speech-intelligibility";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

void MatchAnyCharacteristic(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    FigCFDictionaryGetValue();
    if (FigCFArrayContainsAnyValueInArray())
    {
      *(a2 + 8) = FigCFDictionaryGetValue();
    }
  }
}

uint64_t FigPWDKeyExchangeReceiverCreateForAOCP(uint64_t a1, uint64_t a2, void *a3)
{
  if (FigPWDKeyExchangeReceiverAOCP_initOnce_initOnce != -1)
  {
    FigPWDKeyExchangeReceiverCreateForAOCP_cold_1();
  }

  if (a3)
  {
    FigPWDKeyExchangeReceiverGetClassID();
    v4 = CMDerivedObjectCreate();
    if (!v4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        *(DerivedStorage + 24) = 0;
        *(DerivedStorage + 32) = 0;
        *(DerivedStorage + 104) = 0;
        *(DerivedStorage + 112) = 0;
        *(DerivedStorage + 64) = kFigPWDKeyExchangeAOCP_AssetID_None;
        *(DerivedStorage + 40) = 0x100000004;
        v4 = 0;
        *(DerivedStorage + 16) = FigSimpleMutexCreate();
        *a3 = 0;
      }

      else
      {
        return 4294947746;
      }
    }
  }

  else
  {
    FigPWDKeyExchangeReceiverCreateForAOCP_cold_2(&v7);
    return v7;
  }

  return v4;
}

uint64_t pwdKeyExchangeReceiverAOCP_Finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v1 = result;
    if (*(result + 32))
    {
      MzdSdcDIXg8COV();
      *(v1 + 32) = 0;
    }

    if (*(v1 + 96))
    {
      JE2f6WCx();
      *(v1 + 96) = 0;
    }

    if (*(v1 + 88))
    {
      N8pdwAfn();
      *(v1 + 88) = 0;
    }

    v2 = *(v1 + 80);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }

      v4 = *(v1 + 80);
      if (v4)
      {
        CFRelease(v4);
        *(v1 + 80) = 0;
      }
    }

    v5 = *(v1 + 72);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 72) = 0;
    }

    *(v1 + 24) = 0;
    *(v1 + 112) = 0;

    return FigSimpleMutexDestroy();
  }

  return result;
}

__CFString *pwdKeyExchangeReceiverAOCP_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPWDKeyExchangeReceiverAOCP %p>", a1);
  return Mutable;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply(uint64_t a1, const __CFData *a2)
{
  if (!a1)
  {
    pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_17(&v6);
    return v6;
  }

  if (!a2)
  {
    pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_16(&v6);
    return v6;
  }

  v2 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 0, 0, 0);
  if (!v2)
  {
    pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_15(&v6);
    return v6;
  }

  v3 = v2;
  FigCFDictionaryGetInt32IfPresent();
  pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_14(&v6);
  v5 = v6;
  CFRelease(v3);
  return v5;
}

uint64_t pwdKeyExchangeReceiverAOCP_SetCryptorOnSampleBuffer(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    FigPWDKeyExchangeReceiverGetCMBaseObject(a1);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v3 = pwdKeyExchangeReceiverAOCP_EnsureAndCopyCryptorWrappingDecryptor(DerivedStorage, &v6);
    v4 = v6;
    if (!v3)
    {
      FigSampleBufferSetDecryptor();
    }

    FigSimpleMutexUnlock();
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    pwdKeyExchangeReceiverAOCP_SetCryptorOnSampleBuffer_cold_1(&v7);
    return v7;
  }

  return v3;
}

uint64_t pwdKeyExchangeReceiverAOCP_SetExternalProtectionMethods(uint64_t a1, char a2)
{
  FigPWDKeyExchangeReceiverGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = a2 & 7;
  v5 = v4 - 3;
  if ((v4 - 3) > 4)
  {
    v6 = 0;
    v8 = 1;
    v7 = &kFigPWDKeyExchangeAOCP_AssetID_None;
  }

  else
  {
    v6 = dword_196E78CE8[v5];
    v7 = off_1E74915D8[v5];
    v8 = dword_196E78CFC[v5];
  }

  *(DerivedStorage + 112) = v6;
  *(DerivedStorage + 64) = *v7;
  *(DerivedStorage + 40) = 4;
  *(DerivedStorage + 44) = v8;
  *(DerivedStorage + 104) = v4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigTTMLParseFontFamilySyntaxAndCreateFontFamilyNameList(const __CFString *a1)
{
  v2 = 0;
  FigTTMLParseFontFamilyAndCreateFontFamilyNameList(a1, &v2);
  return v2;
}

void figTTML_initInheritableStyleAttributeNames()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling color");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling direction");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontFamily");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontSize");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontStyle");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontWeight");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling lineHeight");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling shear");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textAlign");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textCombine");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textDecoration");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textEmphasis");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textOutline");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textShadow");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling visibility");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling wrapOption");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby internalRubyID");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling ruby");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling internalRubyID");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling rubyAlign");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling position");
  sInheritableStyleAttributeNames = Mutable;
}

uint64_t FigVideoReceiverDataChannelSettingsCopySerializable(const __CFArray *a1, CFMutableArrayRef *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigVideoReceiverDataChannelSettingsCopySerializable_cold_5(&v23);
    return v23;
  }

  v6 = Mutable;
  v22 = a2;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        CFArrayGetValueAtIndex(a1, i);
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          FigVideoReceiverDataChannelSettingsCopySerializable_cold_4(&v23);
          v19 = v23;
          goto LABEL_16;
        }

        v11 = MutableCopy;
        Value = CFDictionaryGetValue(MutableCopy, @"ChannelDescription");
        if (!Value)
        {
          FigVideoReceiverDataChannelSettingsCopySerializable_cold_3(&v23);
          v13 = 0;
          goto LABEL_23;
        }

        v13 = MEMORY[0x19A8D3280](Value, v4);
        if (!v13)
        {
          FigVideoReceiverDataChannelSettingsCopySerializable_cold_2(&v23);
          goto LABEL_23;
        }

        CFDictionarySetValue(v11, @"ChannelDescriptionDict", v13);
        CFDictionaryRemoveValue(v11, @"ChannelDescription");
        v14 = CFDictionaryGetValue(v11, @"ChannelSpecificSettings");
        if (v14)
        {
          v15 = v14;
          if (CFDictionaryContainsKey(v14, @"VideoColorProperties"))
          {
            v16 = CFDictionaryGetCount(v15);
            v17 = CFDictionaryCreateMutableCopy(v4, v16, v15);
            if (!v17)
            {
              FigVideoReceiverDataChannelSettingsCopySerializable_cold_1(&v23);
LABEL_23:
              v19 = v23;
              CFRelease(v11);
              CFRelease(v6);
              if (v13)
              {
                v20 = v13;
                goto LABEL_17;
              }

              return v19;
            }

            v18 = v17;
            CFDictionaryRemoveValue(v17, @"DestinationPixelBufferAttributes");
            CFDictionaryRemoveValue(v18, @"VideoColorProperties");
            CFDictionaryRemoveValue(v18, @"AllowWideColor");
            CFDictionarySetValue(v11, @"ChannelSpecificSettings", v18);
            CFRelease(v18);
          }
        }

        CFRelease(v13);
        CFArrayAppendValue(v6, v11);
        CFRelease(v11);
      }
    }
  }

  if (v22)
  {
    v19 = 0;
    *v22 = v6;
  }

  else
  {
    v19 = 0;
LABEL_16:
    v20 = v6;
LABEL_17:
    CFRelease(v20);
  }

  return v19;
}

uint64_t FigVideoReceiverDataChannelSettingsCopyDeserialized(const __CFArray *a1, __CFArray **a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_3(&value);
    return value;
  }

  v6 = Mutable;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(a1, v9);
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_2(&value);
          v14 = value;
          goto LABEL_17;
        }

        v11 = MutableCopy;
        v12 = CFDictionaryGetValue(MutableCopy, @"ChannelDescriptionDict");
        if (!v12)
        {
          FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_1(&value);
          v14 = value;
          goto LABEL_16;
        }

        value = 0;
        v13 = MEMORY[0x19A8D32E0](v12, v4, &value);
        if (v13)
        {
          break;
        }

        CFDictionarySetValue(v11, @"ChannelDescription", value);
        CFDictionaryRemoveValue(v11, @"ChannelDescriptionDict");
        if (value)
        {
          CFRelease(value);
        }

        CFArrayAppendValue(v6, v11);
        CFRelease(v11);
        if (v8 == ++v9)
        {
          goto LABEL_11;
        }
      }

      v14 = v13;
LABEL_16:
      CFRelease(v11);
      goto LABEL_17;
    }
  }

LABEL_11:
  v14 = 0;
  if (!a2)
  {
LABEL_17:
    CFRelease(v6);
    return v14;
  }

  *a2 = v6;
  return v14;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue(const void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_5(&v14);
    return v14;
  }

  if (!a3)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_4(&v14);
    return v14;
  }

  FigCFDictionaryGetInt32IfPresent();
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    atomic_fetch_add(&FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_sUniqueCounter, 1uLL);
  }

  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_3(&v14);
    return v14;
  }

  v7 = Mutable;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v8)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_2(&v14);
    v12 = v14;
    goto LABEL_9;
  }

  v9 = v8;
  v10 = CAXPCImageQueueCreate();
  if (!v10)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_1(v7, v9, &v14);
    return v14;
  }

  v11 = v10;
  CAImageQueueSetFlags();
  v12 = 0;
  *a3 = v11;
LABEL_9:
  CFRelease(v7);
  return v12;
}

uint64_t FigVideoReceiverCommonCopyImageQueuesFromConfiguration(uint64_t a1, __CFArray **a2)
{
  if (a2)
  {
    ChannelCount = FigDataChannelConfigurationGetChannelCount(a1);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], ChannelCount, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      if (ChannelCount >= 1)
      {
        for (i = 0; i != ChannelCount; ++i)
        {
          if (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(a1, i) == 1)
          {
            FigImageQueueAtIndex = FigDataChannelConfigurationGetFigImageQueueAtIndex(a1, i);
            if (FigImageQueueAtIndex)
            {
              CFArrayAppendValue(v6, FigImageQueueAtIndex);
            }
          }
        }
      }

      result = 0;
      *a2 = v6;
    }

    else
    {
      FigVideoReceiverCommonCopyImageQueuesFromConfiguration_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FigVideoReceiverCommonCopyImageQueuesFromConfiguration_cold_2(&v11);
    return v11;
  }

  return result;
}

uint64_t FigVideoReceiverCommonCopyLastSampledPixelBufferFromConfiguration(uint64_t a1, const __CFAllocator *a2, CVPixelBufferRef *a3)
{
  pixelBufferOut = 0;
  cf = 0;
  ChannelCount = FigDataChannelConfigurationGetChannelCount(a1);
  if (ChannelCount < 1)
  {
    return 0;
  }

  v7 = ChannelCount;
  v8 = 0;
  while (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(a1, v8) != 1)
  {
LABEL_10:
    if (v7 == ++v8)
    {
      v14 = 0;
LABEL_12:
      v15 = 0;
      goto LABEL_18;
    }
  }

  FigImageQueueAtIndex = FigDataChannelConfigurationGetFigImageQueueAtIndex(a1, v8);
  if (!FigImageQueueAtIndex)
  {
    FigVideoReceiverCommonCopyLastSampledPixelBufferFromConfiguration_cold_1(&v19);
    v15 = 0;
    v14 = v19;
    goto LABEL_18;
  }

  FigBaseObject = FigImageQueueGetFigBaseObject(FigImageQueueAtIndex);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v15 = 0;
    v14 = 4294954514;
    goto LABEL_18;
  }

  v12 = v11(FigBaseObject, @"CAImageQueue", a2, &cf);
  if (v12)
  {
    v14 = v12;
    goto LABEL_12;
  }

  v13 = CAImageQueueCopyDisplayedIOSurface();
  if (!v13)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_10;
  }

  v15 = v13;
  if (IOSurfaceGetProtectionOptions())
  {
    v14 = 0;
  }

  else
  {
    v14 = CVPixelBufferCreateWithIOSurface(a2, v15, 0, &pixelBufferOut);
    if (v14)
    {
      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
      }
    }

    else
    {
      *a3 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

uint64_t FigVideoReceiverGetClassID()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigVideoReceiverGetClassID_sRegisterFigVideoReceiverTypeOnce, RegisterFigVideoReceiverTypeOnce);
  return sFigVideoReceiverClassID;
}

uint64_t RegisterFigVideoReceiverTypeOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoReceiverGetTypeID()
{
  FigVideoReceiverGetClassID();

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAudioQueueOfflineMixerInvalidate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (dword_1EAF17670)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (*(v1 + 16))
    {
      return FigSimpleMutexUnlock();
    }

    else
    {
      FigAudioQueueOfflineMixerStop(v1);
      FigAudioQueueOfflineMixerWaitUntilCompletelyStopped(v1);
      v3 = *(v1 + 32);
      if (v3 && *(v1 + 56))
      {
        v4 = *(v1 + 48);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v5)
        {
          v5(v3, v4);
        }

        *(v1 + 48) = 0;
        *(v1 + 56) = 0;
      }

      v6 = *(v1 + 296);
      if (v6)
      {
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v8 = 0;
          v9 = Count & 0x7FFFFFFF;
          do
          {
            CFArrayGetValueAtIndex(*(v1 + 296), v8);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListeners();
            ++v8;
          }

          while (v9 != v8);
        }

        v10 = *(v1 + 296);
        if (v10)
        {
          v11 = CFArrayGetCount(v10);
          do
          {
            if (v11 < 1)
            {
              break;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 296), 0);
            FigAudioQueueSetProperty(ValueAtIndex, @"OfflineMixer", 0);
            v13 = CFArrayGetCount(*(v1 + 296));
            v14 = v13 < v11;
            v11 = v13;
          }

          while (v14);
        }
      }

      *(v1 + 16) = 1;
      result = FigSimpleMutexUnlock();
      v15 = *(v1 + 64);
      if (v15)
      {
        if (!*(v1 + 72))
        {
          goto LABEL_23;
        }

        VTable = CMBaseObjectGetVTable();
        v17 = *(VTable + 16);
        result = VTable + 16;
        v18 = *(v17 + 8);
        if (v18)
        {
          result = v18(v15, 0, 0);
        }

        *(v1 + 72) = 0;
        v15 = *(v1 + 64);
        if (v15)
        {
LABEL_23:
          result = FigActivitySchedulerGetFigBaseObject(v15);
          if (result)
          {
            v19 = result;
            v20 = CMBaseObjectGetVTable();
            v21 = *(v20 + 8);
            result = v20 + 8;
            v22 = *(v21 + 24);
            if (v22)
            {
              return v22(v19);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigAudioQueueOfflineMixerStop(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (a1[16])
  {
    FigAudioQueueOfflineMixerStop_cold_1(v5);
    v3 = v5[0];
  }

  else
  {
    FigSimpleMutexLock();
    a1[75] = 0;
    a1[322] = 0;
    FigSimpleMutexUnlock();
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAudioQueueOfflineMixerWaitUntilCompletelyStopped(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueOfflineMixerWaitUntilCompletelyStopped_cold_1(v5);
    v3 = v5[0];
  }

  else
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t RegisterFigAudioQueueOfflineMixerType()
{
  result = _CFRuntimeRegisterClass();
  sFigAudioQueueOfflineMixerTypeID = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate(const __CFAllocator *a1, __int128 *a2, size_t a3, const AudioChannelLayout *a4, const __CFDictionary *a5, const void *a6, const void *a7, uint64_t *a8)
{
  v79 = *MEMORY[0x1E69E9840];
  size = 0;
  valuePtr = 0;
  theString = 0;
  v73 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigAudioQueueOfflineMixerCreate_cold_11(&v78);
LABEL_96:
    v51 = 0;
    value_low = LODWORD(v78.value);
LABEL_88:
    free(v51);
    return value_low;
  }

  if (!a6)
  {
    FigAudioQueueOfflineMixerCreate_cold_10(&v78);
    goto LABEL_96;
  }

  if (!a7)
  {
    FigAudioQueueOfflineMixerCreate_cold_9(&v78);
    goto LABEL_96;
  }

  if (!a8)
  {
    FigAudioQueueOfflineMixerCreate_cold_8(&v78);
    goto LABEL_96;
  }

  MEMORY[0x19A8D3660](&sRegisterAudioQueueOfflineMixerTypeOnce, RegisterFigAudioQueueOfflineMixerType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAudioQueueOfflineMixerCreate_cold_7(&v78);
    goto LABEL_96;
  }

  v14 = Instance;
  *(Instance + 456) = 0;
  v15 = FigReentrantMutexCreate();
  *(v14 + 24) = v15;
  if (!v15)
  {
    FigAudioQueueOfflineMixerCreate_cold_6(&v78);
LABEL_103:
    v51 = 0;
    value_low = LODWORD(v78.value);
    goto LABEL_85;
  }

  v16 = FigSimpleMutexCreate();
  *(v14 + 88) = v16;
  if (!v16)
  {
    FigAudioQueueOfflineMixerCreate_cold_5(&v78);
    goto LABEL_103;
  }

  v17 = FigSimpleMutexCreate();
  *(v14 + 80) = v17;
  if (!v17)
  {
    FigAudioQueueOfflineMixerCreate_cold_4(&v78);
    goto LABEL_103;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v14 + 296) = Mutable;
  if (!Mutable)
  {
    FigAudioQueueOfflineMixerCreate_cold_3(&v78);
    goto LABEL_103;
  }

  v19 = CFArrayCreateMutable(a1, 0, 0);
  *(v14 + 304) = v19;
  if (!v19)
  {
    FigAudioQueueOfflineMixerCreate_cold_2(&v78);
    goto LABEL_103;
  }

  v20 = CFArrayCreateMutable(a1, 0, 0);
  *(v14 + 312) = v20;
  if (!v20)
  {
    FigAudioQueueOfflineMixerCreate_cold_1(&v78);
    goto LABEL_103;
  }

  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"AudioQueueOfflineMixer_MaxPacketsPerRender");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
    }

    v22 = *(a2 + 2);
    if (v22 == 1634754915 || v22 == 1902211171 || v22 == 1667330147)
    {
      v23 = CFDictionaryGetValue(a5, @"AudioQueueOfflineMixer_DynamicRangeControlConfig");
      if (v23)
      {
        CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
        v24 = 1;
      }

      else
      {
        v24 = 0;
      }

      v26 = CFDictionaryGetValue(a5, @"AudioQueueOfflineMixerOption_SceneDescriptionPreset");
      if (v26)
      {
        CFNumberGetValue(v26, kCFNumberIntType, &v73);
        v25 = 1;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    if (FigCFDictionaryGetValueIfPresent())
    {
      CFStringGetCString(theString, (v14 + 456), 10, 0x600u);
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  if (*(a2 + 2) == 1819304813)
  {
    v27 = (*(a2 + 12) >> 5) & 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = HIDWORD(valuePtr);
  LODWORD(v78.value) = 0;
  Property = AQOfflineMixerNew();
  if (Property)
  {
    goto LABEL_89;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0x2000;
  }

  v31 = *a2;
  v32 = a2[1];
  *(v14 + 240) = *(a2 + 4);
  *(v14 + 208) = v31;
  *(v14 + 224) = v32;
  v33 = *(v14 + 224);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  *(v14 + 276) = v33 * v30;
  size_4 = 4;
  Property = AQOfflineMixerGetProperty();
  if (Property)
  {
    goto LABEL_89;
  }

  v34 = *(v14 + 276);
  if (v34 >= LODWORD(v78.value))
  {
    v35 = v34 / LODWORD(v78.value);
  }

  else
  {
    *(v14 + 276) = v78.value;
    v35 = 1;
  }

  *(v14 + 272) = v35;
  if (v27)
  {
    v36 = *(v14 + 236);
  }

  else
  {
    v36 = 1;
  }

  v37 = malloc_type_malloc(16 * (v36 - 1) + 24, 0x10800404ACF7207uLL);
  *(v14 + 280) = v37;
  *v37 = v36;
  if (v36)
  {
    v38 = 0;
    v39 = 16 * v36;
    do
    {
      if (v27)
      {
        v40 = 1;
      }

      else
      {
        v40 = *(v14 + 236);
      }

      v41 = &v37[v38 / 4];
      v41[2] = v40;
      v42 = *(v14 + 276);
      v41[3] = v42;
      v43 = malloc_type_malloc(v42, 0xD69FE707uLL);
      v37 = *(v14 + 280);
      *&v37[v38 / 4 + 4] = v43;
      v38 += 16;
    }

    while (v39 != v38);
  }

  v44 = *(v14 + 228);
  if (v44)
  {
    v45 = 72;
  }

  else
  {
    v45 = 72 * *(v14 + 272);
  }

  *(v14 + 256) = malloc_type_malloc(v45, 0x1000040FF89C88EuLL);
  if (!*(v14 + 224))
  {
    *(v14 + 264) = malloc_type_malloc(8 * *(v14 + 272), 0x100004000313F17uLL);
LABEL_59:
    v46 = malloc_type_malloc(16 * *(v14 + 272), 0x1000040451B5BE8uLL);
    goto LABEL_60;
  }

  if ((v27 & 1) == 0)
  {
    *(v14 + 264) = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  }

  if (!v44)
  {
    goto LABEL_59;
  }

  v46 = 0;
LABEL_60:
  *(v14 + 248) = v46;
  *(v14 + 96) = (*(v14 + 208) + 0.5);
  size = 8;
  v47 = (v14 + 356);
  if (AQOfflineMixerGetProperty() || !size)
  {
    v48 = MEMORY[0x1E6960CC0];
    v49 = *MEMORY[0x1E6960CC0];
    *v47 = *MEMORY[0x1E6960CC0];
    v50 = *(v48 + 16);
    *(v14 + 372) = v50;
    *(v14 + 380) = v49;
    *(v14 + 396) = v50;
    if (!v24)
    {
      goto LABEL_66;
    }
  }

  else
  {
    CMTimeMake(&v78, 0, *(v14 + 96));
    *v47 = *&v78.value;
    *(v14 + 372) = v78.epoch;
    *(v14 + 380) = *v47;
    *(v14 + 396) = *(v14 + 372);
    if (!v24)
    {
      goto LABEL_66;
    }
  }

  Property = AQOfflineMixerSetProperty();
  if (Property)
  {
LABEL_89:
    value_low = Property;
    v51 = 0;
    goto LABEL_85;
  }

LABEL_66:
  if (v25)
  {
    Property = AQOfflineMixerSetProperty();
    if (Property)
    {
      goto LABEL_89;
    }
  }

  v51 = 0;
  if (AQOfflineMixerGetPropertySize())
  {
    v52 = 0;
  }

  else
  {
    v52 = 0;
    if (size)
    {
      v51 = malloc_type_calloc(1uLL, size, 0x723CE7C3uLL);
      v53 = AQOfflineMixerGetProperty();
      if (v53)
      {
        goto LABEL_90;
      }

      v52 = size;
    }
  }

  v53 = CMAudioFormatDescriptionCreate(a1, a2, a3, a4, v52, v51, 0, (v14 + 200));
  if (v53)
  {
    goto LABEL_90;
  }

  *(v14 + 64) = a7;
  CFRetain(a7);
  v54 = *(v14 + 64);
  v55 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v55)
  {
    v53 = v55(v54, aqOfflineMixer_processUntilHighWaterMet, v14);
    if (!v53)
    {
      *(v14 + 72) = 1;
      LODWORD(v78.value) = 0;
      v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v78);
      FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(v14 + 64));
      v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v58)
      {
        v58(FigBaseObject, @"ClientPID", v56);
      }

      CFRelease(v56);
      v59 = FigActivitySchedulerGetFigBaseObject(*(v14 + 64));
      v60 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v60)
      {
        v60(v59, @"ThrottleForBackground", *MEMORY[0x1E695E4C0]);
      }

      v61 = MEMORY[0x1E6960C70];
      v72 = *MEMORY[0x1E6960C70];
      *(v14 + 324) = *MEMORY[0x1E6960C70];
      v62 = *(v61 + 16);
      *(v14 + 340) = v62;
      *(v14 + 32) = a6;
      CFRetain(a6);
      v63 = *(v14 + 32);
      v64 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v64)
      {
        v53 = v64(v63, aqOfflineMixer_outputBelowLowWater, v14, v14 + 48);
        if (!v53)
        {
          *(v14 + 56) = 1;
          *(v14 + 148) = v72;
          *(v14 + 164) = v62;
          *(v14 + 352) = -50;
          *(v14 + 476) = 0;
          *(v14 + 480) = v72;
          *(v14 + 496) = v62;
          *(v14 + 504) = v72;
          *(v14 + 520) = v62;
          v65 = MEMORY[0x1E6960CC0];
          *(v14 + 544) = *(MEMORY[0x1E6960CC0] + 16);
          *(v14 + 528) = *v65;
          *(v14 + 448) = v62;
          *(v14 + 432) = v72;
          *(v14 + 408) = v72;
          *(v14 + 424) = v62;
          *(v14 + 172) = v72;
          *(v14 + 188) = v62;
          if (dword_1EAF17670)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          value_low = 0;
          *a8 = v14;
          goto LABEL_88;
        }

        goto LABEL_90;
      }

      goto LABEL_84;
    }

LABEL_90:
    value_low = v53;
    goto LABEL_85;
  }

LABEL_84:
  value_low = 4294954514;
LABEL_85:
  free(v51);
  CFRelease(v14);
  return value_low;
}

uint64_t FigActivitySchedulerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigActivitySchedulerGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(FigBaseObject, a2, a3);
}

uint64_t aqOfflineMixer_outputBelowLowWater(uint64_t a1)
{
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(a1 + 16))
  {
    return aqOfflineMixer_triggerSchedulingIfOutputIsLow(a1);
  }

  v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t FigAudioQueueOfflineMixerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigAudioQueueOfflineMixerCopyProperty_cold_1(&v12);
      v11 = v12;
      goto LABEL_18;
    }

    if (CFEqual(a2, @"AudioQueueOfflineMixer_ThrottleForBackground"))
    {
      if (*(a1 + 73))
      {
        v7 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v7 = MEMORY[0x1E695E4C0];
      }

      SInt32 = *v7;
      if (*v7)
      {
        SInt32 = CFRetain(SInt32);
      }
    }

    else
    {
      if (!CFEqual(a2, @"AudioQueueOfflineMixer_ConnectedAudioQueueCount"))
      {
        v11 = 4294954512;
LABEL_18:
        FigSimpleMutexUnlock();
        return v11;
      }

      v9 = *(a1 + 296);
      if (v9)
      {
        CFArrayGetCount(v9);
      }

      SInt32 = FigCFNumberCreateSInt32();
    }

    v11 = 0;
    *a4 = SInt32;
    goto LABEL_18;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigAudioQueueOfflineMixerSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigAudioQueueOfflineMixerSetProperty_cold_1(&valuePtr);
      value_low = LODWORD(valuePtr.value);
      goto LABEL_54;
    }

    if (CFEqual(a2, @"AudioQueueOfflineMixer_ClientPID"))
    {
      FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(a1 + 64));
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v8 = kFigActivitySchedulerProperty_ClientPID;
LABEL_6:
        v9 = v7(FigBaseObject, *v8, a3);
LABEL_53:
        value_low = v9;
        goto LABEL_54;
      }

LABEL_18:
      value_low = 4294954514;
LABEL_54:
      FigSimpleMutexUnlock();
      return value_low;
    }

    if (CFEqual(a2, @"AudioQueueOfflineMixer_SampleBufferAllocator"))
    {
      if (!a3)
      {
        v12 = *(a1 + 40);
        *(a1 + 40) = 0;
LABEL_20:
        if (v12)
        {
          CFRelease(v12);
        }

        goto LABEL_22;
      }

      TypeID = CFAllocatorGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v12 = *(a1 + 40);
        *(a1 + 40) = a3;
        CFRetain(a3);
        goto LABEL_20;
      }
    }

    else
    {
      if (CFEqual(a2, @"AudioQueueOfflineMixer_ThrottleForBackground"))
      {
        v13 = CFBooleanGetTypeID();
        if (v13 == CFGetTypeID(a3))
        {
          *(a1 + 73) = CFBooleanGetValue(a3);
          FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(a1 + 64));
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v7)
          {
            v8 = kFigActivitySchedulerProperty_ThrottleForBackground;
            goto LABEL_6;
          }

          goto LABEL_18;
        }

        goto LABEL_52;
      }

      if (CFEqual(a2, @"AudioQueueOfflineMixer_TimelineMilestone"))
      {
        v15 = CFDictionaryGetTypeID();
        if (v15 == CFGetTypeID(a3))
        {
          memset(&valuePtr, 0, sizeof(valuePtr));
          CMTimeMakeFromDictionary(&valuePtr, a3);
          if ((*(a1 + 160) & 1) == 0 || (valuePtr.flags & 1) == 0)
          {
            v19 = *&valuePtr.value;
            *(a1 + 148) = *&valuePtr.value;
            epoch = valuePtr.epoch;
            *(a1 + 164) = valuePtr.epoch;
            v24 = v19;
            v25 = epoch;
            v22 = *(a1 + 100);
            v23 = *(a1 + 116);
            if (aqOfflineMixer_passedTimelineMilestone(a1, &v24, &v22))
            {
              aqOfflineMixer_postMilestoneNotification(a1);
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
        if (!CFEqual(a2, @"AudioQueueOfflineMixer_TimelineMilestoneAllowance"))
        {
          if (CFEqual(a2, @"AudioQueueOfflineMixer_CodecQuality"))
          {
            if (!a3)
            {
              goto LABEL_52;
            }

            v17 = CFNumberGetTypeID();
            if (v17 != CFGetTypeID(a3))
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (!CFEqual(a2, @"AudioQueueOfflineMixer_BitRateForVBR"))
            {
              if (!CFEqual(a2, @"AudioQueueOfflineMixer_ThreadPriority"))
              {
                if (!CFEqual(a2, @"AudioQueueOfflineMixer_ApplyTrimAtEndAfterPTS"))
                {
                  value_low = 4294954512;
                  goto LABEL_54;
                }

                memset(&valuePtr, 0, sizeof(valuePtr));
                CMTimeMakeFromDictionary(&valuePtr, a3);
                FigSimpleMutexLock();
                *(a1 + 172) = valuePtr;
                FigSimpleMutexUnlock();
                goto LABEL_22;
              }

              if (a3)
              {
                v21 = CFNumberGetTypeID();
                if (v21 == CFGetTypeID(a3))
                {
                  v9 = FigActivitySchedulerSetProperty(*(a1 + 64), @"ThreadPriority", a3);
                  goto LABEL_53;
                }
              }

              goto LABEL_52;
            }

            if (!a3)
            {
              goto LABEL_52;
            }

            v18 = CFNumberGetTypeID();
            if (v18 != CFGetTypeID(a3))
            {
              goto LABEL_52;
            }
          }

          LODWORD(valuePtr.value) = 0;
          CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
          v9 = AQOfflineMixerSetProperty();
          goto LABEL_53;
        }

        if (a3)
        {
          v16 = CFNumberGetTypeID();
          if (v16 == CFGetTypeID(a3))
          {
            CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 352));
LABEL_22:
            value_low = 0;
            goto LABEL_54;
          }
        }
      }
    }

LABEL_52:
    v9 = FigSignalErrorAtGM();
    goto LABEL_53;
  }

  return FigSignalErrorAtGM();
}

__n128 aqOfflineMixer_postMilestoneNotification(uint64_t a1)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v3 = MutableCopy;
    FigCFDictionarySetCMTime();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v4 = MEMORY[0x1E6960C70];
    *(a1 + 148) = *MEMORY[0x1E6960C70];
    *(a1 + 164) = *(v4 + 16);
    CFRelease(v3);
  }

  else
  {
    v6 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *(a1 + 148) = *MEMORY[0x1E6960C70];
    *(a1 + 164) = *(v6 + 16);
  }

  return result;
}

__n128 FigAudioQueueOfflineMixerGetOutputASBD@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 208);
  v3 = *(a1 + 224);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 240);
  return result;
}

uint64_t FigAudioQueueOfflineMixerGo(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueOfflineMixerGo_cold_1(v7);
    v5 = v7[0];
  }

  else
  {
    FigSimpleMutexLock();
    *(a1 + 75) = 1;
    FigSimpleMutexUnlock();
    v3 = *(a1 + 64);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3);
    }

    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime(uint64_t a1, CMTime *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime_cold_1(&time1);
LABEL_19:
    value_low = LODWORD(time1.value);
    goto LABEL_14;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime_cold_2(&time1);
    goto LABEL_19;
  }

  v4 = (a1 + 324);
  if ((*(a1 + 336) & 0x1D) == 1)
  {
    time1 = *a2;
    *&time2.value = *v4;
    time2.epoch = *(a1 + 340);
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      if (dword_1EAF17670)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_11;
    }

    if (dword_1EAF17670)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
LABEL_9:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (dword_1EAF17670)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    goto LABEL_9;
  }

  v7 = *&a2->value;
  *(a1 + 340) = a2->epoch;
  *v4 = v7;
LABEL_11:
  v8 = *(a1 + 64);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v9)
  {
    v9(v8);
  }

  value_low = 0;
LABEL_14:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigAudioQueueOfflineMixerInterruptAndStop(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EAF17670)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (a1[16])
    {
      FigAudioQueueOfflineMixerInterruptAndStop_cold_1(v5);
      v3 = v5[0];
    }

    else
    {
      a1[74] = 1;
      FigSimpleMutexLock();
      a1[75] = 0;
      a1[74] = 0;
      FigSimpleMutexUnlock();
      v3 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigAudioQueueOfflineMixerInterruptAndStop_cold_2(v5);
    return v5[0];
  }

  return v3;
}

uint64_t aqOfflineMixer_faqDidEnqueueData(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  FigSimpleMutexLock();
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a2 + 16))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v8 = *(a2 + 312);
    if (v8)
    {
      Count = CFArrayGetCount(v8);
      if (a4)
      {
        v10.length = Count;
        if (Count >= 1)
        {
          v10.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a2 + 312), v10, a4);
          if (FirstIndexOfValue != -1)
          {
            CFArrayRemoveValueAtIndex(*(a2 + 312), FirstIndexOfValue);
          }
        }
      }
    }

    aqOfflineMixer_triggerSchedulingIfOutputIsLow(a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t aqOfflineMixer_faqDidStart(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  FigSimpleMutexLock();
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a2 + 16))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v8 = *(a2 + 304);
    v15.length = CFArrayGetCount(v8);
    v15.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v15, a4);
    if (FirstIndexOfValue != -1)
    {
      for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(v11, v16, a4))
      {
        CFArrayRemoveValueAtIndex(*(a2 + 304), i);
        v11 = *(a2 + 304);
        v16.length = CFArrayGetCount(v11);
        v16.location = 0;
      }
    }

    *(a2 + 321) = CFArrayGetCount(*(a2 + 304)) == 0;
    if (*(a2 + 75))
    {
      if (*(a2 + 321))
      {
        v12 = *(a2 + 64);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v13)
        {
          v13(v12);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t aqOfflineMixer_triggerSchedulingIfOutputIsLow(uint64_t a1)
{
  v2 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 24);
  if (v6)
  {
    result = v6(v2);
    if (result)
    {
      v7 = *(a1 + 64);
      v8 = CMBaseObjectGetVTable();
      v9 = *(v8 + 16);
      result = v8 + 16;
      v10 = *(v9 + 16);
      if (v10)
      {

        return v10(v7);
      }
    }
  }

  return result;
}

uint64_t aqOfflineMixer_Finalize(uint64_t a1)
{
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigAudioQueueOfflineMixerInvalidate(a1);
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  if (*(a1 + 288))
  {
    AQOfflineMixerDispose();
    *(a1 + 288) = 0;
  }

  v4 = *(a1 + 280);
  if (v4)
  {
    if (*v4)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        free(*&v4[v6]);
        ++v5;
        v4 = *(a1 + 280);
        v6 += 4;
      }

      while (v5 < *v4);
    }

    free(v4);
    *(a1 + 280) = 0;
  }

  free(*(a1 + 248));
  *(a1 + 248) = 0;
  free(*(a1 + 256));
  *(a1 + 256) = 0;
  free(*(a1 + 264));
  *(a1 + 264) = 0;
  v7 = *(a1 + 200);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 200) = 0;
  }

  v8 = *(a1 + 296);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 296) = 0;
  }

  v9 = *(a1 + 304);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 304) = 0;
  }

  v10 = *(a1 + 312);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 312) = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 40) = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 80))
  {
    FigSimpleMutexDestroy();
    *(a1 + 80) = 0;
  }

  FigSimpleMutexDestroy();
  result = *(a1 + 24);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
  }

  return result;
}

CFStringRef aqOfflineMixer_CopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = " (invalidated)";
  }

  else
  {
    v1 = "";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAudioQueueOfflineMixer %p%s]", a1, v1);
}

__CFString *aqOfflineMixer_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  if (*(a1 + 16))
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigAudioQueueOfflineMixer %p retainCount: %d%s allocator: %p, ", a1, v4, v5, v6);
  CFStringAppendFormat(Mutable, 0, @"sampleBufferConsumer %@, activityScheduler %@", *(a1 + 32), *(a1 + 64));
  CFStringAppendFormat(Mutable, 0, @", numberOfSampleBuffersOutput %d", *(a1 + 476));
  if (*(a1 + 348))
  {
    v7 = " (didSendReachedEndOfOutputData)";
  }

  else
  {
    v7 = "";
  }

  if (*(a1 + 349))
  {
    v8 = " (didFinishPendingProcessingAtEndOfInput)";
  }

  else
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"%s%s", v7, v8);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

__n128 OUTLINED_FUNCTION_1_152()
{
  result = *(v0 + 100);
  *&STACK[0x390] = result;
  STACK[0x3A0] = *(v0 + 116);
  return result;
}

void OUTLINED_FUNCTION_2_146(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, int a38)
{
  STACK[0x390] = STACK[0x380];
  LODWORD(STACK[0x398]) = STACK[0x388];
  LODWORD(STACK[0x39C]) = a38;
  STACK[0x3A0] = a37;
}

uint64_t OUTLINED_FUNCTION_6_88()
{
  *(v0 - 176) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_8_62()
{
  result = *&STACK[0x2F0];
  *&STACK[0x2D0] = *&STACK[0x2F0];
  STACK[0x2E0] = STACK[0x300];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_42()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_50()
{
  *(v0 - 176) = 0;
  LOBYTE(STACK[0x2F0]) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_16_44@<Q0>(unint64_t a1@<X8>)
{
  STACK[0x2A0] = a1;
  result = *(v1 - 176);
  *&STACK[0x270] = result;
  STACK[0x280] = *(v1 - 160);
  return result;
}

__n128 OUTLINED_FUNCTION_18_40@<Q0>(unint64_t a1@<X8>)
{
  STACK[0x3A0] = a1;
  result = *&STACK[0x230];
  *&STACK[0x310] = *&STACK[0x230];
  STACK[0x320] = STACK[0x240];
  return result;
}

void OUTLINED_FUNCTION_19_38()
{
  STACK[0x290] = *(v1 - 256);
  LODWORD(STACK[0x298]) = *(v1 - 248);
  LODWORD(STACK[0x29C]) = v0;
}

CMTime *OUTLINED_FUNCTION_21_33()
{

  return CMTimeSubtract(&STACK[0x290], &STACK[0x270], &STACK[0x250]);
}

__n128 OUTLINED_FUNCTION_25_30()
{
  result = *&STACK[0x390];
  *v0 = *&STACK[0x390];
  *(v0 + 16) = STACK[0x3A0];
  return result;
}

__n128 OUTLINED_FUNCTION_26_31@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *&STACK[0x310] = *a1;
  STACK[0x320] = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_28_28()
{
  result = *(v0 + 100);
  *&STACK[0x310] = result;
  STACK[0x320] = *(v0 + 116);
  return result;
}

__n128 OUTLINED_FUNCTION_29_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  result = *v32;
  *(v31 + 100) = *v32;
  *(v31 + 116) = a31;
  return result;
}

void OUTLINED_FUNCTION_30_25()
{
  STACK[0x398] = 0;
  STACK[0x390] = 0;
  STACK[0x3A0] = 0;
}

__n128 OUTLINED_FUNCTION_32_26()
{
  result = *v0;
  *v1 = *v0;
  return result;
}

__n128 OUTLINED_FUNCTION_33_25()
{
  result = *v0;
  *v1 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_21()
{

  return CMBaseObjectGetVTable();
}

void FigCoreAnimationRendererInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    v2 = objc_autoreleasePoolPush();
    *(a1 + 16) = 1;
    [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 104)];
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [*(a1 + 96) setLayer:0];
    [MEMORY[0x1E6979518] commit];
    v3 = *(a1 + 96);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 96) = 0;
    glDeleteTextures(1, (a1 + 112));
    if (*(a1 + 104))
    {
      v4 = [MEMORY[0x1E6977FE8] currentContext];
      v5 = *(a1 + 104);
      if (v4 == v5)
      {
        [MEMORY[0x1E6977FE8] setCurrentContext:0];
        v5 = *(a1 + 104);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      *(a1 + 104) = 0;
    }

    CGColorSpaceRelease(*(a1 + 72));
    *(a1 + 72) = 0;
    v6 = *(a1 + 80);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 80) = 0;
    }

    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    CFRelease(*(a1 + 24));
    *(a1 + 24) = 0;
    v7 = *(a1 + 48);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          [CFArrayGetValueAtIndex(*(a1 + 48) i)];
        }
      }

      CFRelease(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = CFArrayGetCount(v11);
      if (v12 >= 1)
      {
        v13 = v12;
        for (j = 0; j != v13; ++j)
        {
          CFArrayGetValueAtIndex(*(a1 + 56), j);
          CAImageQueueFlush();
          CAImageQueueCollect();
        }
      }

      CFRelease(*(a1 + 56));
      *(a1 + 56) = 0;
    }

    [*(a1 + 88) setLayer:0];
    v15 = *(a1 + 88);
    if (v15)
    {
      CFRelease(v15);
    }

    *(a1 + 88) = 0;
    [MEMORY[0x1E6979518] commit];
    v16 = *(a1 + 64);
    if (v16)
    {
      CVPixelBufferPoolRelease(v16);
      *(a1 + 64) = 0;
    }

    v17 = *(a1 + 120);
    if (v17)
    {
      CFRelease(v17);
    }

    *(a1 + 120) = 0;
    v18 = *(a1 + 128);
    if (v18)
    {
      CFRelease(v18);
    }

    *(a1 + 128) = 0;
    v19 = *(a1 + 40);
    if (v19)
    {
      CFRelease(v19);
    }

    *(a1 + 40) = 0;

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t RegisterFCARType()
{
  result = _CFRuntimeRegisterClass();
  sFCARID = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate(const __CFAllocator *a1, const __CFDictionary *a2, uint64_t a3, const __CFArray *a4, const __CFDictionary *a5, uint64_t *a6)
{
  valuePtr[0] = 1111970369;
  v12 = objc_autoreleasePoolPush();
  v53 = 0;
  if (!a6 || !a2 || !a3 || (MEMORY[0x19A8D3660](&sRegisterFCARTypeOnce, RegisterFCARType), (Instance = _CFRuntimeCreateInstance()) == 0))
  {
    fig_log_get_emitter();
    m11_low = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  v14 = Instance;
  *(Instance + 144) = 0x7FFFFFFFLL;
  *(Instance + 176) = 0x7FFFFFFFLL;
  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, a2);
  if (!MutableCopy)
  {
    FigCoreAnimationRendererCreate_cold_13(&v52);
    goto LABEL_66;
  }

  allocator = *MEMORY[0x1E695E480];
  v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6966130], v16);
  CFRelease(v16);
  Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6966208]);
  if (!Value)
  {
    FigCoreAnimationRendererCreate_cold_12(&v52);
    goto LABEL_66;
  }

  CFNumberGetValue(Value, kCFNumberIntType, (v14 + 32));
  v18 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69660B8]);
  if (!v18)
  {
    FigCoreAnimationRendererCreate_cold_11(&v52);
    goto LABEL_66;
  }

  CFNumberGetValue(v18, kCFNumberIntType, (v14 + 36));
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  v19 = *MEMORY[0x1E695E4D0];
  v50 = *MEMORY[0x1E697A020];
  [MEMORY[0x1E6979518] setValue:? forKey:?];
  v20 = CFRetain([MEMORY[0x1E6979398] layer]);
  *(v14 + 24) = v20;
  [v20 addSublayer:a3];
  [*(v14 + 24) setFrame:{0.0, 0.0, *(v14 + 32), *(v14 + 36)}];
  v21 = *(v14 + 24);
  CATransform3DMakeScale(&v52, 1.0, -1.0, 1.0);
  [v21 setSublayerTransform:&v52];
  [MEMORY[0x1E6979518] commit];
  v22 = fcar_ensureBufferAttributesCompatibleWithHWProcessing(MutableCopy);
  if (v22)
  {
    goto LABEL_71;
  }

  if (!a4)
  {
    goto LABEL_22;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
  if (!ValueAtIndex)
  {
    goto LABEL_22;
  }

  v24 = CFGetTypeID(ValueAtIndex);
  if (v24 == CAImageQueueGetTypeID())
  {
    v25 = 56;
LABEL_21:
    *(v14 + v25) = CFRetain(a4);
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = 48;
    goto LABEL_21;
  }

LABEL_22:
  v28 = allocator;
  if (*(v14 + 48))
  {
    v29 = CFGetAllocator(v14);
    Mutable = CFArrayCreateMutable(v29, 0, MEMORY[0x1E695E9C0]);
    *(v14 + 56) = Mutable;
    if (Mutable)
    {
      Count = CFArrayGetCount(*(v14 + 48));
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setValue:v19 forKey:v50];
      if (Count < 1)
      {
LABEL_30:
        m11_low = 0;
      }

      else
      {
        v32 = 0;
        while (1)
        {
          v33 = CAImageQueueCreate();
          if (!v33)
          {
            break;
          }

          v34 = v33;
          CAImageQueueSetFlags();
          [CFArrayGetValueAtIndex(*(v14 + 48) v32)];
          CFArrayAppendValue(*(v14 + 56), v34);
          CFRelease(v34);
          if (Count == ++v32)
          {
            goto LABEL_30;
          }
        }

        FigCoreAnimationRendererCreate_cold_1(&v52);
        m11_low = LODWORD(v52.m11);
      }

      [MEMORY[0x1E6979518] commit];
      [MEMORY[0x1E6979518] synchronize];
    }

    else
    {
      FigCoreAnimationRendererCreate_cold_2(&v52);
      m11_low = LODWORD(v52.m11);
    }

    v28 = allocator;
    if (m11_low)
    {
      goto LABEL_67;
    }
  }

  if (!*(v14 + 56) && !*(v14 + 48))
  {
    goto LABEL_37;
  }

  v22 = VTPixelTransferSessionCreate(v28, (v14 + 120));
  if (v22)
  {
LABEL_71:
    m11_low = v22;
    goto LABEL_67;
  }

  v35 = CFArrayCreateMutable(v28, 0, MEMORY[0x1E695E9C0]);
  *(v14 + 128) = v35;
  if (!v35)
  {
    FigCoreAnimationRendererCreate_cold_3(&v52);
    goto LABEL_66;
  }

LABEL_37:
  v36 = MEMORY[0x1E6965CE8];
  if (!a5 || (*(v14 + 88) = CFDictionaryGetValue(a5, @"RenderCAContext"), (v37 = CFDictionaryGetValue(a5, @"DestinationColorAttachments")) == 0))
  {
    v43 = (v14 + 72);
    if (*(v14 + 72))
    {
LABEL_48:
      v44 = CFDictionaryCreateMutable(v28, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v14 + 80) = v44;
      if (!v44)
      {
        FigCoreAnimationRendererCreate_cold_7(&v52);
        goto LABEL_66;
      }

      goto LABEL_49;
    }

LABEL_47:
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *v43 = DeviceRGB;
    if (!DeviceRGB)
    {
      FigCoreAnimationRendererCreate_cold_10(&v52);
      goto LABEL_66;
    }

    goto LABEL_48;
  }

  v38 = v37;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v38))
  {
    FigCoreAnimationRendererCreate_cold_4(&v52);
    goto LABEL_66;
  }

  v40 = CFDictionaryGetValue(v38, *v36);
  if (v40)
  {
    v41 = v40;
    v42 = CGColorSpaceGetTypeID();
    if (v42 != CFGetTypeID(v41))
    {
      FigCoreAnimationRendererCreate_cold_5(&v52);
      goto LABEL_66;
    }

    *(v14 + 72) = CFRetain(v41);
    v28 = allocator;
  }

  v43 = (v14 + 72);
  if (!*(v14 + 72))
  {
    goto LABEL_47;
  }

  v44 = CFDictionaryCreateMutableCopy(v28, 0, v38);
  *(v14 + 80) = v44;
  if (!v44)
  {
    FigCoreAnimationRendererCreate_cold_6(&v52);
LABEL_66:
    m11_low = LODWORD(v52.m11);
    goto LABEL_67;
  }

LABEL_49:
  CFDictionarySetValue(v44, *v36, *(v14 + 72));
  CFGetAllocator(v14);
  v22 = VTCreatePixelBufferPoolAttributesWithName();
  if (v22)
  {
    goto LABEL_71;
  }

  v46 = CFGetAllocator(v14);
  v47 = CVPixelBufferPoolCreate(v46, v53, *(v14 + 40), (v14 + 64));
  if (v47)
  {
    FigCoreAnimationRendererCreate_cold_9(v47, &v52);
    goto LABEL_66;
  }

  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:v19 forKey:v50];
  v48 = *(v14 + 88);
  if (v48)
  {
    CFRetain(v48);
    v49 = *(v14 + 88);
    if (v49)
    {
      goto LABEL_55;
    }

LABEL_60:
    FigCoreAnimationRendererCreate_cold_8(&v52);
    goto LABEL_66;
  }

  v49 = [MEMORY[0x1E6979320] localContext];
  if (v49)
  {
    v49 = CFRetain(v49);
  }

  *(v14 + 88) = v49;
  if (!v49)
  {
    goto LABEL_60;
  }

LABEL_55:
  [v49 setColorSpace:*(v14 + 72)];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  m11_low = fcar_setupGLESRenderer(v14);
  if (!m11_low)
  {
    *a6 = v14;
    goto LABEL_68;
  }

LABEL_67:
  CFRelease(v14);
LABEL_68:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_16:
  if (v53)
  {
    CFRelease(v53);
  }

  objc_autoreleasePoolPop(v12);
  return m11_low;
}

uint64_t fcar_ensureBufferAttributesCompatibleWithHWProcessing(CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (MutableCopy)
  {
    v2 = MutableCopy;
    FigGetAlignmentForIOSurfaceOutput();
    v3 = *MEMORY[0x1E6966140];
    if (!CFDictionaryGetValue(v2, *MEMORY[0x1E6966140]))
    {
      fcar_addNumberToDictionary(v2, v3, 0);
    }

    v4 = *MEMORY[0x1E6966020];
    if (!CFDictionaryGetValue(v2, *MEMORY[0x1E6966020]))
    {
      fcar_addNumberToDictionary(v2, v4, 0);
    }

    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    CFRelease(v2);
  }

  else
  {
    fcar_ensureBufferAttributesCompatibleWithHWProcessing_cold_1(&v7);
    return v7;
  }

  return PixelBufferAttributesWithIOSurfaceSupport;
}

uint64_t fcar_setupGLESRenderer(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:3];
  *(a1 + 104) = v2;
  if (v2)
  {
    CFRetain(v2);
    v3 = *(a1 + 104);
  }

  else
  {
    v3 = 0;
  }

  framebuffers = 0;

  if (*(a1 + 104))
  {
    [MEMORY[0x1E6977FE8] setCurrentContext:?];
    v4 = *(a1 + 104);
    v11 = 2;
    if ([v4 setParameter:608 to:&v11])
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    glGenTextures(1, (a1 + 112));
    glBindTexture(0xDE1u, *(a1 + 112));
    glTexParameteri(0xDE1u, 0x2801u, 9728);
    glTexParameteri(0xDE1u, 0x2800u, 9728);
    glTexParameteri(0xDE1u, 0x2802u, 33071);
    glTexParameteri(0xDE1u, 0x2803u, 33071);
    glGenFramebuffers(1, &framebuffers);
    glBindFramebuffer(0x8D40u, framebuffers);
    glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 112), 0);
    glViewport(0, 0, v5, v6);
    v7 = [MEMORY[0x1E6979428] rendererWithEAGLContext:*(a1 + 104) options:0];
    *(a1 + 96) = v7;
    if (v7)
    {
      CFRetain(v7);
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
      [*(a1 + 96) setLayer:*(a1 + 24)];
      [*(a1 + 96) setBounds:{0.0, 0.0, v5, v6}];
      [MEMORY[0x1E6979518] commit];
      v8 = 0;
    }

    else
    {
      v8 = 4294954973;
    }
  }

  else
  {
    v8 = 4294954974;
  }

  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  return v8;
}

uint64_t FigCoreAnimationRendererCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, CFDictionaryRef *a4)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else if (CFEqual(cf1, @"FCARPerformanceDictionary"))
  {
    fcar_copyPerformanceDictionary(a1, a4);
    return 0;
  }

  else
  {
    return 4294954971;
  }
}

void fcar_copyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *keys = 0u;
    v24 = 0u;
    *values = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = (a1 + 160);
    v4 = *(a1 + 160);
    valuePtr = 0.0;
    v6 = *MEMORY[0x1E695E480];
    if (v4 < 1)
    {
      v7 = 0;
    }

    else
    {
      valuePtr = (*(a1 + 152) / (v4 * 1000000.0));
      keys[0] = @"AverageCoreAnimationRendererConversionTime";
      values[0] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 136) / 1000000.0);
      keys[1] = @"MaxCoreAnimationRendererConversionTime";
      values[1] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 144) / 1000000.0);
      *&v24 = @"MinCoreAnimationRendererConversionTime";
      *&v14 = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      v7 = 3;
    }

    keys[v7] = @"NumberOfCoreAnimationRendererConversions";
    values[v7] = CFNumberCreate(v6, kCFNumberIntType, v5);
    v8 = v7 + 1;
    v9 = *(a1 + 192);
    if (v9 >= 1)
    {
      valuePtr = (*(a1 + 184) / (v9 * 1000000.0));
      keys[v8] = @"AverageCoreAnimationRendererRenderingTime";
      values[v8] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 168) / 1000000.0);
      keys[v7 + 2] = @"MaxCoreAnimationRendererRenderingTime";
      values[v7 + 2] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 176) / 1000000.0);
      keys[v7 + 3] = @"MinCoreAnimationRendererRenderingTime";
      values[v7 + 3] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      v8 = v7 | 4;
    }

    v10 = v8;
    v11 = values;
    *a2 = CFDictionaryCreate(v6, keys, values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      if (*v11)
      {
        CFRelease(*v11);
      }

      ++v11;
      --v10;
    }

    while (v10);
  }
}

uint64_t FigCoreAnimationRendererSetProperty(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 4294954971;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigCoreAnimationRendererCopyPixelBufferAtTime(uint64_t a1, CMTime *a2, const __CFArray *a3, CVPixelBufferRef *a4, CMTime *a5)
{
  pixelBufferOut = 0;
  v10 = objc_autoreleasePoolPush();
  if (!a4)
  {
    FigCoreAnimationRendererCopyPixelBufferAtTime_cold_5(&poolOut);
LABEL_117:
    v15 = 0;
    goto LABEL_118;
  }

  v11 = CFGetAllocator(a1);
  value_low = CVPixelBufferPoolCreatePixelBuffer(v11, *(a1 + 64), &pixelBufferOut);
  v13 = pixelBufferOut;
  if (value_low)
  {
    v14 = 1;
  }

  else
  {
    v14 = pixelBufferOut == 0;
  }

  if (v14)
  {
    v15 = 0;
    if (pixelBufferOut)
    {
      goto LABEL_120;
    }

    goto LABEL_122;
  }

  CVPixelBufferGetPixelFormatType(pixelBufferOut);
  Width = CVPixelBufferGetWidth(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  CVBufferSetAttachments(pixelBufferOut, *(a1 + 80), kCVAttachmentMode_ShouldPropagate);
  v96 = a5;
  if (!a3)
  {
    v91 = Height;
    v92 = Width;
    v93 = a2;
    v15 = 0;
    goto LABEL_87;
  }

  Count = CFArrayGetCount(a3);
  v19 = *(a1 + 56);
  if (!v19)
  {
    FigCoreAnimationRendererCopyPixelBufferAtTime_cold_4(&poolOut);
    goto LABEL_117;
  }

  if (Count > CFArrayGetCount(v19))
  {
    FigCoreAnimationRendererCopyPixelBufferAtTime_cold_3(&poolOut);
    goto LABEL_117;
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v15 = 0;
    value_low = 4294954974;
    goto LABEL_119;
  }

  v21 = Mutable;
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  v91 = Height;
  v92 = Width;
  v93 = a2;
  v98 = v21;
  v84 = a4;
  v85 = v10;
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v22 = *(a1 + 56);
  v23 = *(a1 + 120);
  v95 = *(a1 + 128);
  v24 = CFArrayGetCount(a3);
  theArray = v22;
  v25 = CFArrayGetCount(v22);
  if (v24 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  if (v26 < 1)
  {
LABEL_82:
    v30 = 0;
    value_low = 0;
    goto LABEL_86;
  }

  session = v23;
  v27 = 0;
  key = *MEMORY[0x1E6966208];
  v97 = *MEMORY[0x1E69660B8];
  v86 = *MEMORY[0x1E6966130];
  v87 = v26;
  v88 = v25 - 1;
  v89 = v24 - 1;
  v94 = a3;
  v28 = v95;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v27);
    if (!ValueAtIndex)
    {
      goto LABEL_73;
    }

    v30 = ValueAtIndex;
    v31 = CFGetTypeID(ValueAtIndex);
    if (v31 != CVPixelBufferGetTypeID())
    {
      goto LABEL_73;
    }

    ID = 0;
    CVPixelBufferGetWidth(v30);
    CVPixelBufferGetHeight(v30);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v30);
    v33 = PixelFormatType;
    if (PixelFormatType == 32 || PixelFormatType == 1111970369 || (PixelFormatType & 0xFFFFFFEF) == 0x34323066 && (v34 = PixelFormatType, IOSurface = CVPixelBufferGetIOSurface(v30), v33 = v34, IOSurface))
    {
      v100 = v33;
      CVPixelBufferRetain(v30);
      goto LABEL_59;
    }

    v100 = 1111970369;
    v105 = 0;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    poolOut.value = 0;
    v36 = CVPixelBufferGetWidth(v30);
    v90 = CVPixelBufferGetHeight(v30);
    v107 = 0;
    v108 = 0;
    v37 = CFArrayGetCount(v28);
    if (v37 < 1)
    {
      goto LABEL_131;
    }

    v38 = v37;
    v39 = 0;
    while (1)
    {
      valuePtr[0] = 0;
      v40 = CFArrayGetValueAtIndex(v28, v39);
      poolOut.value = v40;
      PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v40);
      valuePtr[0] = 0;
      Value = CFDictionaryGetValue(PixelBufferAttributes, key);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
        if (valuePtr[0] == v36)
        {
          valuePtr[0] = 0;
          v43 = CFDictionaryGetValue(PixelBufferAttributes, v97);
          if (v43)
          {
            CFNumberGetValue(v43, kCFNumberIntType, valuePtr);
            if (valuePtr[0] == v90)
            {
              valuePtr[0] = 0;
              v44 = CFDictionaryGetValue(PixelBufferAttributes, v86);
              if (v44)
              {
                v45 = v44;
                v46 = CFGetTypeID(v44);
                if (v46 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v45, kCFNumberIntType, valuePtr);
                  if (valuePtr[0] == 1111970369)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      poolOut.value = 0;
      if (v38 == ++v39)
      {
        goto LABEL_37;
      }
    }

    if (v40)
    {
      CVPixelBufferPoolRetain(v40);
      a3 = v94;
      v47 = allocator;
    }

    else
    {
LABEL_131:
    {
LABEL_37:
      v47 = allocator;
      v48 = VTCreatePixelBufferPoolAttributesWithName();
      if (v48)
      {
        value_low = v48;
        a3 = v94;
        goto LABEL_47;
      }

      v49 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v49)
      {
        v50 = v49;
        fcar_addNumberToDictionary(v49, v86, 1111970369);
        fcar_addNumberToDictionary(v50, key, v36);
        fcar_addNumberToDictionary(v50, v97, v90);
        value_low = fcar_ensureBufferAttributesCompatibleWithHWProcessing(v50);
        CFRelease(v50);
      }

      else
      {
        FigCoreAnimationRendererCopyPixelBufferAtTime_cold_1(valuePtr);
        value_low = valuePtr[0];
      }

      a3 = v94;
      if (value_low)
      {
        goto LABEL_47;
      }

      v51 = CVPixelBufferPoolCreate(allocator, 0, v108, &poolOut);
      if (v51)
      {
        goto LABEL_46;
      }
    }

      CFArrayAppendValue(v28, poolOut.value);
      v40 = poolOut.value;
    }

    v51 = CVPixelBufferPoolCreatePixelBuffer(v47, v40, &v105);
    if (!v51)
    {
      if (!v105)
      {
        value_low = 0;
        goto LABEL_47;
      }

      v51 = VTPixelTransferSessionTransferImage(session, v30, v105);
    }

LABEL_46:
    value_low = v51;
LABEL_47:
    CVPixelBufferPoolRelease(poolOut.value);
    if (v108)
    {
      CFRelease(v108);
    }

    if (v107)
    {
      CFRelease(v107);
    }

    if (value_low)
    {
      CVPixelBufferRelease(v105);
      v105 = 0;
    }

    v52 = (FigGetUpTimeNanoseconds() - UpTimeNanoseconds) / 1000;
    ++*(a1 + 160);
    *(a1 + 152) += v52;
    v53 = *(a1 + 144);
    if (v53 >= v52)
    {
      v53 = v52;
    }

    if (*(a1 + 136) > v52)
    {
      v52 = *(a1 + 136);
    }

    *(a1 + 136) = v52;
    *(a1 + 144) = v53;
    if (value_low)
    {
      v30 = 0;
      goto LABEL_86;
    }

    v30 = v105;
LABEL_59:
    v54 = v88;
    if (v27 != v89)
    {
      v54 = v27;
    }

    if (v27 <= v54)
    {
      break;
    }

LABEL_72:
    CVPixelBufferRelease(v30);
    a3 = v94;
    v28 = v95;
    v26 = v87;
LABEL_73:
    if (++v27 == v26)
    {
      goto LABEL_82;
    }
  }

  v55 = v54 + 1;
  v56 = v27;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v56);
    CAImageQueueSetSize();
    v57 = CVPixelBufferGetIOSurface(v30);
    if (!v57)
    {
      break;
    }

    ID = IOSurfaceGetID(v57);
LABEL_69:
    CVPixelBufferRetain(v30);
    if ((CAImageQueueInsertImage() & 1) == 0)
    {
      CVPixelBufferRelease(v30);
    }

    if (v55 == ++v56)
    {
      goto LABEL_72;
    }
  }

  if (v100 != 1111970369 && v100 != 32)
  {
    goto LABEL_85;
  }

  CVPixelBufferLockBaseAddress(v30, 0);
  CVPixelBufferGetBaseAddress(v30);
  CVPixelBufferGetBytesPerRow(v30);
  ID = CAImageQueueRegisterBuffer();
  if (ID)
  {
    v58 = CFNumberCreate(allocator, kCFNumberSInt64Type, &ID);
    CFArrayAppendValue(v98, v58);
    CFRelease(v58);
    goto LABEL_69;
  }

  CVPixelBufferUnlockBaseAddress(v30, 0);
LABEL_85:
  value_low = 4294954975;
  a3 = v94;
LABEL_86:
  CVPixelBufferRelease(v30);
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] synchronize];
  a4 = v84;
  v10 = v85;
  v15 = v98;
  if (value_low)
  {
    goto LABEL_119;
  }

LABEL_87:
  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 104)];
  v59 = CVPixelBufferGetIOSurface(pixelBufferOut);
  if (v59)
  {
    v60 = v59;
    PixelFormat = IOSurfaceGetPixelFormat(v59);
    WidthOfPlane = IOSurfaceGetWidthOfPlane(v60, 0);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v60, 0);
    if (PixelFormat == 1111970369)
    {
      v64 = HeightOfPlane;
      glBindTexture(0xDE1u, *(a1 + 112));
      BYTE4(v81) = 0;
      LODWORD(v81) = 0;
      if ([*(a1 + 104) texImageIOSurface:v60 target:3553 internalFormat:6408 width:WidthOfPlane height:v64 format:32993 type:33639 plane:v81 invert:?])
      {
        v65 = *(a1 + 112);
        glTexParameteri(0xDE1u, 0x2801u, 9728);
        glTexParameteri(0xDE1u, 0x2800u, 9728);
        glTexParameteri(0xDE1u, 0x2802u, 33071);
        glTexParameteri(0xDE1u, 0x2803u, 33071);
        goto LABEL_91;
      }

      value_low = 4294954973;
LABEL_119:
      v13 = pixelBufferOut;
      if (pixelBufferOut)
      {
LABEL_120:
        CVPixelBufferRelease(v13);
        goto LABEL_121;
      }

      goto LABEL_122;
    }

    v78 = 1844;
  }

  else
  {
    v78 = 1829;
  }

  if (!FigCoreAnimationRendererCopyPixelBufferAtTime_cold_2(v78, &poolOut))
  {
LABEL_118:
    value_low = LODWORD(poolOut.value);
    goto LABEL_119;
  }

  v65 = 0;
LABEL_91:
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, v65, 0);
  v66 = FigGetUpTimeNanoseconds();
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4000u);
  v67 = *(a1 + 96);
  poolOut = *v93;
  [v67 beginFrameAtTime:0 timeStamp:CMTimeGetSeconds(&poolOut)];
  [*(a1 + 96) addUpdateRect:{0.0, 0.0, v92, v91}];
  [*(a1 + 96) render];
  glFlush();
  glFinish();
  v68 = FigGetUpTimeNanoseconds();
  v69 = (v68 - v66) / 1000;
  ++*(a1 + 192);
  *(a1 + 184) += v69;
  v70 = *(a1 + 176);
  if (v70 >= v69)
  {
    v70 = (v68 - v66) / 1000;
  }

  if (*(a1 + 168) > v69)
  {
    v69 = *(a1 + 168);
  }

  *(a1 + 168) = v69;
  *(a1 + 176) = v70;
  if (v96)
  {
    [*(a1 + 96) nextFrameTime];
    CMTimeMakeWithSeconds(&poolOut, v71, 1000);
    *v96 = poolOut;
  }

  [*(a1 + 96) endFrame];
  if (a3)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    v72 = *(a1 + 56);
    if (v72)
    {
      v73 = CFArrayGetCount(v72);
      if (v73 >= 1)
      {
        v74 = v73;
        for (i = 0; i != v74; ++i)
        {
          v76 = CFArrayGetValueAtIndex(*(a1 + 56), i);
          CAImageQueueFlush();
          CAImageQueueCollect();
          if (v15)
          {
            if (i < CFArrayGetCount(v15))
            {
              v77 = CFArrayGetValueAtIndex(v15, i);
              if (v77)
              {
                poolOut.value = 0;
                CFNumberGetValue(v77, kCFNumberSInt64Type, &poolOut);
                if (poolOut.value)
                {
                  MEMORY[0x19A8CC3C0](v76);
                }
              }
            }
          }
        }
      }
    }

    [MEMORY[0x1E6979518] commit];
    [MEMORY[0x1E6979518] synchronize];
  }

  value_low = 0;
  *a4 = pixelBufferOut;
LABEL_121:
  pixelBufferOut = 0;
LABEL_122:
  if (v15)
  {
    CFRelease(v15);
  }

  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  v79 = *(a1 + 128);
  if (v79)
  {
    v110.length = CFArrayGetCount(*(a1 + 128));
    v110.location = 0;
    CFArrayApplyFunction(v79, v110, fcar_flushConversionPool, 0);
  }

  CVPixelBufferPoolFlush(*(a1 + 64), 0);
  objc_autoreleasePoolPop(v10);
  return value_low;
}

double fcarInit(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

CFTypeRef fcarCopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return CFRetain(@"[FCAR (invalidated)]");
  }

  else
  {
    return CFRetain(@"[FCAR]");
  }
}

__CFString *fcarCopyDebugDesc(_BYTE *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  cf = 0;
  v4 = CFGetRetainCount(a1);
  if (a1[16])
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"FCAR %p retainCount: %ld%s allocator: %p\n", a1, v4, v5, v6);
  fcar_copyPerformanceDictionary(a1, &cf);
  if (cf)
  {
    CFStringAppendFormat(Mutable, 0, @", performanceDictionary %@", cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return Mutable;
}

void fcar_addNumberToDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void fcar_releaseCVPixelBufferCallback(int a1, int a2, CVPixelBufferRef texture)
{
  if (texture)
  {
    CVPixelBufferRelease(texture);
  }
}

uint64_t FigRemote_StartCARenderServerAndReturnPort(_DWORD *a1)
{
  if (!a1)
  {
    return 1;
  }

  FigAtomicIncrement32();
  if (CARenderServerIsRunning() & 1) != 0 || (MEMORY[0x19A8CC550]())
  {
    v2 = MEMORY[0x19A8CC520]();
    result = 0;
    *a1 = v2;
  }

  else
  {
    if (FigAtomicDecrement32() <= 0)
    {
      MEMORY[0x19A8CC540]();
    }

    return 1;
  }

  return result;
}

uint64_t FigRemote_CreateLocalCAContext(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E6979320] localContext];
  if (v3)
  {
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 1;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t FigRemote_CreateCAImageQueuesAndSlotIDs(int a1, void *a2, __CFArray **a3, __CFArray **a4)
{
  valuePtr = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = 1;
  if (a2 && a3 && a4)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v13 = CFArrayCreateMutable(v10, 0, v11);
    v14 = v13;
    if (Mutable)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
      if (a1 < 1)
      {
LABEL_13:
        v9 = 0;
        *a3 = Mutable;
        *a4 = v14;
        Mutable = 0;
        v14 = 0;
      }

      else
      {
        while (1)
        {
          v9 = 1;
          v16 = CAImageQueueCreate();
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CAImageQueueSetFlags();
          v18 = [a2 createSlot];
          valuePtr = v18;
          [a2 setObject:v17 forSlot:v18];
          CFArrayAppendValue(Mutable, v17);
          CFRelease(v17);
          v19 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v14, v19);
          CFRelease(v19);
          if (!--a1)
          {
            goto LABEL_13;
          }
        }
      }

      [MEMORY[0x1E6979518] commit];
      [MEMORY[0x1E6979518] flush];
      [MEMORY[0x1E6979518] synchronize];
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

uint64_t FigRemote_CreateLayerHostForRemoteContext(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = objc_autoreleasePoolPush();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v5 = [MEMORY[0x1E69793A8] layer];
  [v5 setContextId:a1];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] synchronize];
  *a2 = v5;
  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t FigRemote_RemoveReleaseAndClearLayerHost(id *a1)
{
  if (a1 && *a1)
  {
    v2 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    [*a1 removeFromSuperlayer];

    *a1 = 0;
    [MEMORY[0x1E6979518] commit];
    objc_autoreleasePoolPop(v2);
  }

  return 0;
}

uint64_t FigRemote_RemoveReleaseAndClearCAImageQueuesAndSlotIDs(void *a1, CFTypeRef *a2, CFArrayRef *a3)
{
  valuePtr = 0;
  v6 = objc_autoreleasePoolPush();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  Count = CFArrayGetCount(*a3);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a3, i);
      if (ValueAtIndex)
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        [a1 deleteSlot:valuePtr];
      }

      valuePtr = 0;
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  [MEMORY[0x1E6979518] commit];
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t FigRemote_ReleaseAndClearLocalCAContextAndShutDownCAServer(id *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1 && *a1)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRemote_ReleaseAndClearLocalCAContextAndShutDownCAServer_block_invoke;
    v6[3] = &unk_1E7482608;
    v6[4] = a2;
    [MEMORY[0x1E6979518] addCommitHandler:v6 forPhase:5];
    [*a1 invalidate];

    [MEMORY[0x1E6979518] commit];
    *a1 = 0;
  }

  else if (FigAtomicDecrement32() <= 0)
  {
    MEMORY[0x19A8CC540]();
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t FigRemote_CreateRemoteCAContextAndAttachLayer(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 1;
  if (a1 && a2 && a3 && a4)
  {
    v9 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    v10 = MEMORY[0x1E695DF20];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
    v12 = [v10 dictionaryWithObjectsAndKeys:{v11, *MEMORY[0x1E69796C8], 0}];
    v13 = [MEMORY[0x1E6979320] remoteContextWithOptions:v12];
    [v13 setLayer:a2];
    *a4 = [v13 contextId];
    [MEMORY[0x1E6979518] commit];
    [MEMORY[0x1E6979518] flush];
    [MEMORY[0x1E6979518] synchronize];
    *a3 = v13;
    objc_autoreleasePoolPop(v9);
    return 0;
  }

  return result;
}

uint64_t FigRemote_InstallSlotIDsInVideoLayers(const __CFArray *a1, const __CFArray *a2)
{
  valuePtr = 0;
  v4 = objc_autoreleasePoolPush();
  Count = CFArrayGetCount(a1);
  v6 = CFArrayGetCount(a2);
  v7 = 1;
  if (Count && v6 && Count == v6)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v10 = CFArrayGetValueAtIndex(a2, i);
        if (!v10)
        {
          break;
        }

        if (!ValueAtIndex)
        {
          break;
        }

        v11 = v10;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        [v11 setContents:{objc_msgSend(MEMORY[0x1E6979320], "objectForSlot:", valuePtr)}];
      }
    }

    [MEMORY[0x1E6979518] commit];
    [MEMORY[0x1E6979518] flush];
    [MEMORY[0x1E6979518] synchronize];
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t FigRemote_RemoveSlotIDsFromVideoLayers(const __CFArray *a1)
{
  v2 = objc_autoreleasePoolPush();
  Count = CFArrayGetCount(a1);
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      [CFArrayGetValueAtIndex(a1 i)];
    }
  }

  [MEMORY[0x1E6979518] commit];
  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t FigRemote_RemoveReleaseAndClearRemoteCAContext(id *a1, void *a2)
{
  if (a1 && *a1)
  {
    v4 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    [a2 removeFromSuperlayer];
    [*a1 setLayer:0];
    [*a1 invalidate];

    *a1 = 0;
    [MEMORY[0x1E6979518] commit];
    objc_autoreleasePoolPop(v4);
  }

  return 0;
}

uint64_t FigRemote_DestroyCARenderServerPort(int a1)
{
  if (a1)
  {
    FigMachPortReleaseSendRight_();
  }

  return 0;
}

uint64_t FigRemote_CreatePixelBufferAndPoolAttributesDictionary(const __CFAllocator *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    FigRemote_CreatePixelBufferAndPoolAttributesDictionary_cold_2(keys);
    return LODWORD(keys[0]);
  }

  keys[0] = 0;
  keys[1] = 0;
  values[0] = 0;
  values[1] = 0;
  if (a2)
  {
    keys[0] = @"PixelBufferPoolAtttributes";
    values[0] = a2;
    v5 = 1;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = 0;
  if (a3)
  {
LABEL_4:
    keys[v5] = @"PixelBufferAttributes";
    values[v5++] = a3;
  }

LABEL_5:
  v6 = CFDictionaryCreate(a1, keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a4 = v7;
  }

  else
  {
    FigRemote_CreatePixelBufferAndPoolAttributesDictionary_cold_1(&v9);
    return v9;
  }

  return result;
}

const void *FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary(const __CFDictionary *a1, void *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        Value = CFDictionaryGetValue(a1, @"PixelBufferPoolAtttributes");
        *a2 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        result = CFDictionaryGetValue(a1, @"PixelBufferAttributes");
        *a3 = result;
        if (result)
        {
          CFRetain(result);
          return 0;
        }
      }

      else
      {
        FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_1(&v8);
        return v8;
      }
    }

    else
    {
      FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_3(&v10);
    return v10;
  }

  return result;
}

CFMutableDictionaryRef InitSharedContextPool()
{
  qword_1ED4CB698 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4CB6A0 = result;
  return result;
}

void FigFairPlaySharedContextLoad_EnsureFairPlayContext(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  EnsureFairPlayContext(DerivedStorage);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigFairPlaySharedContextEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !v5)
  {
    return a1 == a2;
  }

  v6 = *(v5 + 24);
  v7 = *(DerivedStorage + 24);

  return CFEqual(v7, v6);
}

uint64_t FigFairPlaySharedContextInvalidate()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v1 = result;
    FigSimpleMutexLock();
    v2 = v1[2];
    if (v2 && !CFSetGetCount(v2))
    {
      v3 = v1[2];
      if (v3)
      {
        CFRelease(v3);
        v1[2] = 0;
      }

      FigSimpleMutexUnlock();
      dispatch_sync_f(v1[4], v1, FigFairPlaySharedContextInvalidate_FairPlay);
      if (*v1)
      {
        CFRelease(*v1);
        *v1 = 0;
      }

      result = v1[3];
      if (result)
      {
        CFRelease(result);
        result = 0;
        v1[3] = 0;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
      return 4294955138;
    }
  }

  return result;
}

void FigFairPlaySharedContextFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigFairPlaySharedContextInvalidate();
  FigSimpleMutexDestroy();
  v1 = *(DerivedStorage + 32);

  dispatch_release(v1);
}

__CFString *FigFairPlaySharedContextCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  Mutable = CFStringCreateMutable(*DerivedStorage, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFPSharedContext: context<0x%x>", *(v1 + 11));
  }

  return v3;
}

uint64_t FigFairPlaySharedContextInvalidate_FairPlay(uint64_t result)
{
  v1 = result;
  if (*(result + 40))
  {
    result = *(result + 44);
    if (result)
    {
      v2 = VLxCLgDpiF(result);
      result = FAIRPLAY_CALL_LOG(v2);
      *(v1 + 44) = 0;
    }
  }

  *(v1 + 41) = 1;
  return result;
}

void EnsureFairPlayContext(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40) || (df35957c4e0(), FAIRPLAY_CALL_LOG(v2) == -42032))
  {
    if (!*(a1 + 41))
    {
      memset(v14, 0, 24);
      maxBufLen = 0;
      v13 = 0;
      *(a1 + 44) = 0;
      v3 = MGCopyAnswer();
      if (v3)
      {
        v4 = v3;
        Length = CFStringGetLength(v3);
        CFStringGetSystemEncoding();
        CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        zxcm2Qme0x(CStringPtrAndBufferToFree, Length, v14);
        LODWORD(Length) = FAIRPLAY_CALL_LOG(v7);
        free(v13);
        CFRelease(v4);
        if (!Length)
        {
          v8 = CFStringGetLength(*(a1 + 24));
          v15.location = 0;
          v15.length = v8;
          if (CFStringGetBytes(*(a1 + 24), v15, 0x8000100u, 0, 0, 0, 0, &maxBufLen) >= 1)
          {
            v9 = malloc_type_malloc(maxBufLen + 2, 0xAFAB4281uLL);
            if (v9)
            {
              v10 = v9;
              v16.location = 0;
              v16.length = v8;
              CFStringGetBytes(*(a1 + 24), v16, 0x8000100u, 0, 0, v9, maxBufLen, &maxBufLen);
              v10[maxBufLen] = 0;
              v11 = XtCqEf5X(0, v14, v10, a1 + 44);
              if (FAIRPLAY_CALL_LOG(v11))
              {
                *(a1 + 44) = 0;
              }

              free(v10);
            }
          }
        }
      }

      *(a1 + 40) = 1;
    }
  }
}

uint64_t RegisterFigFairPlaySharedContextType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void OUTLINED_FUNCTION_0_163(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, InitSharedContextPool);
}

uint64_t FigTTMLFeatureCreate(const __CFAllocator *a1, uint64_t a2, __int128 *a3, void *a4)
{
  v8 = FigTTMLGetLibXMLAccess();
  if (!v8)
  {
    FigTTMLFeatureCreate_cold_4(&v16);
LABEL_15:
    v11 = 0;
LABEL_17:
    v14 = v16;
    goto LABEL_20;
  }

  if (!a4)
  {
    FigTTMLFeatureCreate_cold_3(&v16);
    goto LABEL_15;
  }

  FigTTMLNodeGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3), v9) || (v9 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24)), v9))
  {
    v14 = v9;
    v11 = 0;
    goto LABEL_20;
  }

  v11 = (*(v8 + 104))(a2);
  v12 = CFStringCreateWithCString(a1, v11, 0x8000100u);
  if (!v12)
  {
    FigTTMLFeatureCreate_cold_1(&v16);
    goto LABEL_17;
  }

  v13 = v12;
  if (!CFStringGetLength(v12))
  {
    FigTTMLFeatureCreate_cold_1(&v16);
    v14 = v16;
    goto LABEL_19;
  }

  v14 = FigTTMLSkipNode(a2, a3, *(DerivedStorage + 128));
  if (v14)
  {
LABEL_19:
    CFRelease(v13);
LABEL_20:
    if (!v8)
    {
      return v14;
    }

    goto LABEL_10;
  }

  *(DerivedStorage + 144) = v13;
  *a4 = 0;
LABEL_10:
  (*(v8 + 112))(v11);
  return v14;
}

void figTTMLFeature_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLFeature_CopyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"feature[%@] : %@(%@)", v1, *(DerivedStorage + 144), *(DerivedStorage + 136));
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLFeature_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    result = 0;
    *a2 = Mutable;
  }

  else
  {
    figTTMLExtension_CopyChildNodeArray_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t figTTMLFeature_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 18;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    copyElementLocalName_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigTTMLBodyCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    FigTTMLBodyCreate_cold_2(&v16);
    return v16;
  }

  FigTTMLNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  FigBytePumpGetFigBaseObject(0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v8)
  {
    return v8;
  }

  v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v8)
  {
    return v8;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v15 = 203;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 206;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLBodyConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

void figTTMLBody_Finalize(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  v3 = *(DerivedStorage + 144);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLBody_CopyDebugDesc(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"body: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLBody_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  FigBytePumpGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    result = 0;
    *a2 = ConcatenationOfTwoArrays;
  }

  else
  {
    figTTMLBody_CopyChildNodeArray_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figTTMLBody_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLBody_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

const __CFDictionary *FigCPEFairPlaySupportsFormatDescription(const opaqueCMFormatDescription *a1)
{
  v5 = 0;
  result = FigFairPlayCopySinfExtensionsFromFormatDescription(a1);
  if (result)
  {
    v2 = result;
    SchemeFromSinf = FigFairPlayGetSchemeFromSinf(result, &v5);
    CFRelease(v2);
    return (!SchemeFromSinf && v5 == 1769239918);
  }

  return result;
}

uint64_t FigCPEFairPlayInitializeWithOptions(const __CFDictionary *a1, __CFString **a2)
{
  Value = CFDictionaryGetValue(a1, @"StorageURL");
  FigBytePumpGetFigBaseObject(Value);
  if (Value)
  {
    CFRetain(Value);
  }

  else
  {
    Value = FigFairPlayCopyDefaultKeybagFolderURL();
  }

  v5 = FigFairPlaySharedContextLoad(*MEMORY[0x1E695E480], Value, a1);
  if (!v5)
  {
    *a2 = FigFairPlayCopyAbsolutePathFromURL(Value);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  return v5;
}

uint64_t FigCPEFairPlayUninitialize(CFStringRef URLString)
{
  v1 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
  v2 = FigFairPlaySharedContextUnload(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void FormatDescriptionFilter(const void *a1, const opaqueCMFormatDescription *a2, uint64_t a3)
{
  v6 = FigFairPlayCopySinfExtensionsFromFormatDescription(a2);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    if (!FigFairPlayGetSchemeFromSinf(v6, &v8) && v8 == 1769239918)
    {
      if (!*(a3 + 8))
      {
        *(a3 + 8) = CFRetain(a1);
      }

      CFDictionaryAddValue(*a3, a1, a2);
    }

    CFRelease(v7);
  }
}

uint64_t FigCPEFairPlayProtectorCheckInCryptRef(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = malloc_type_malloc(0x18uLL, 0x6004082687C62uLL);
  *v6 = DerivedStorage;
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  v6[1] = v7;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  v6[2] = v8;
  dispatch_async_f(*(DerivedStorage + 128), v6, CheckInCryptRef);
  return 0;
}

void CheckInCryptRef(const void **a1)
{
  v2 = *(*a1 + 15);
  if (v2)
  {
    CFDictionarySetValue(v2, a1[1], a1[2]);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t FigCPEFairPlayProtectorCheckOutCryptRef(uint64_t a1, uint64_t a2)
{
  context[0] = CMBaseObjectGetDerivedStorage();
  context[1] = a2;
  v5 = 0;
  dispatch_sync_f(*(context[0] + 128), context, CheckOutCryptRef);
  return v5;
}

void CheckOutCryptRef(uint64_t a1)
{
  v2 = *(*a1 + 120);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, *(a1 + 8));
    *(a1 + 16) = Value;
    if (Value)
    {
      CFRetain(Value);
      v4 = *(a1 + 8);
      v5 = *(*a1 + 120);

      CFDictionaryRemoveValue(v5, v4);
    }
  }
}

uint64_t FigFairPlayCPEProtectorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 16);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 16) = 0;
    }

    v5 = *(v3 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 24) = 0;
    }

    v6 = *(v3 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 32) = 0;
    }

    v7 = *(v3 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 40) = 0;
    }

    v8 = *(v3 + 48);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 48) = 0;
    }

    v9 = *(v3 + 8);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        v10(v9, a1);
      }

      v11 = *(v3 + 8);
      if (v11)
      {
        CFRelease(v11);
        *(v3 + 8) = 0;
      }
    }

    if (*v3)
    {
      CFRelease(*v3);
      *v3 = 0;
    }

    v12 = *(v3 + 64);
    if (v12)
    {
      if (*(v3 + 72))
      {
        FigCPEExternalProtectionMonitorEndMonitoring(v12);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*(v3 + 73))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      v13 = *(v3 + 64);
      if (v13)
      {
        CFRelease(v13);
        *(v3 + 64) = 0;
      }
    }

    v14 = *(v3 + 104);
    if (v14)
    {
      CFRelease(v14);
      *(v3 + 104) = 0;
    }

    v15 = *(v3 + 112);
    if (v15)
    {
      CFRelease(v15);
      *(v3 + 112) = 0;
    }

    if (*(v3 + 96))
    {
      FigSimpleMutexDestroy();
      *(v3 + 96) = 0;
    }

    v16 = *(v3 + 88);
    if (v16)
    {
      FigFairPlayAirPlaySessionDestroy(v16);
      *(v3 + 88) = 0;
    }

    v17 = *(v3 + 128);
    if (v17)
    {
      dispatch_sync_f(v17, v3, DisposePersistentCryptRefRepository);
    }

    v18 = *(v3 + 136);
    if (v18)
    {
      CFRelease(v18);
      *(v3 + 136) = 0;
    }
  }

  return 0;
}

void FigFairPlayCPEProtectorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigFairPlayCPEProtectorInvalidate(a1);
  if (DerivedStorage)
  {
    v3 = *(DerivedStorage + 128);
    if (v3)
    {
      dispatch_sync_f(v3, 0, NoOp);
      v4 = *(DerivedStorage + 128);

      dispatch_release(v4);
    }
  }
}

__CFString *FigFairPlayCPEProtectorCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*DerivedStorage, 0);
  v2 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFairPlayCPEProtector: sharedContext<%@>", *(DerivedStorage + 8));
  }

  return v2;
}

uint64_t ExternalProtectionStatusChangedCallback_0()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t ExternalProtectionStateChangedCallback()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void DisposePersistentCryptRefRepository(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 120) = 0;
  }
}

uint64_t IsRental(uint64_t a1, Boolean *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 104);
  if (!v4)
  {
    v10 = 0;
    Value = CFDictionaryGetValue(*(a1 + 32), *(a1 + 24));
    IsRentalSinf = FigFairPlayIsRentalSinf(Value, &v10);
    if (IsRentalSinf)
    {
      v8 = IsRentalSinf;
      goto LABEL_12;
    }

    if (v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    v4 = *v7;
    if (*v7)
    {
      v4 = CFRetain(v4);
    }

    *(a1 + 104) = v4;
  }

  v8 = 0;
  if (a2 && v4)
  {
    v8 = 0;
    *a2 = CFBooleanGetValue(v4);
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigFairPlayCPEProtectorBeginAirPlaySessionAsync(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[11])
  {
    v11 = 4294955138;
    goto LABEL_7;
  }

  v8 = DerivedStorage;
  FairPlayContext = GetFairPlayContext(DerivedStorage);
  v10 = FigFairPlayAirPlaySessionCreateWithProtectionInfo(FairPlayContext, v8[4], a2);
  v8[11] = v10;
  if (!v10)
  {
    v11 = 4294955145;
    goto LABEL_7;
  }

  v11 = FigFairPlayAirPlaySessionBeginAsync(v10, a3, a4);
  if (v11)
  {
LABEL_7:
    FigFairPlayCPEProtectorEndAirPlaySession();
  }

  return v11;
}

uint64_t RegisterFigFairPlayCPEProtectorType()
{
  FigCPEProtectorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t SetProtectionInfoValidateEntry(uint64_t key, const opaqueCMFormatDescription *a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    key = CFDictionaryGetValue(*a3, key);
    *(a3 + 8) = key != 0;
    if (key)
    {
      v6 = *(a3 + 9);
      v5 = (a3 + 9);
      if (!v6)
      {
        v7 = key;
        key = CMFormatDescriptionGetMediaType(a2);
        if (key == 1986618469)
        {

          return FigFairPlayIsHDCPRequiredSinf(v7, v5);
        }
      }
    }
  }

  return key;
}

void *OUTLINED_FUNCTION_3_123()
{

  return malloc_type_calloc(v0, 8uLL, v1);
}

CFDateRef OUTLINED_FUNCTION_5_102(const __CFAllocator *a1, double a2, double a3)
{
  v5 = *&a2 + *&a3 - v4;

  return CFDateCreate(a1, v5);
}

uint64_t figCSSStyleSheetRegisterFigCSSStyleSheet()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSStyleSheetID = result;
  return result;
}

uint64_t FigCSSStyleSheetCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigCSSStyleSheetGetTypeID_sRegisterFigCSSStyleSheetOnce, figCSSStyleSheetRegisterFigCSSStyleSheet);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCSSStyleSheetCreate_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCSSStyleSheetCreate_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigCSSStyleSheetCopyRuleList(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
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

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCSSStyleSheetCopyRuleList_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCSSStyleSheetCopyRuleList_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigCSSStyleSheetSetRuleList(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v2 = *(a1 + 16);
      *(a1 + 16) = cf;
      CFRetain(cf);
      if (v2)
      {
        CFRelease(v2);
      }

      return 0;
    }

    else
    {
      FigCSSStyleSheetSetRuleList_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigCSSStyleSheetSetRuleList_cold_2(&v5);
    return v5;
  }
}

uint64_t figCSSRuleListRegisterFigCSSRuleList()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSRuleListID = result;
  return result;
}

uint64_t FigCSSRuleListCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigCSSRuleListGetTypeID_sRegisterFigCSSRuleListOnce, figCSSRuleListRegisterFigCSSRuleList);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCSSRuleListCreate_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCSSRuleListCreate_cold_2(&v7);
    return v7;
  }

  return result;
}

CFIndex FigCSSRuleListGetLength(uint64_t a1)
{
  if (!a1)
  {
    FigCSSRuleListGetLength_cold_1();
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  return CFArrayGetCount(v2);
}

uint64_t FigCSSRuleListCopyRuleAtIndex(uint64_t a1, CFIndex idx, CFTypeRef *a3, _DWORD *a4)
{
  if (a1)
  {
    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (idx < 0 || Count <= idx)
    {
      FigCSSRuleListCopyRuleAtIndex_cold_2(&v13);
      return v13;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), idx);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        if (a3)
        {
          *a3 = CFRetain(ValueAtIndex);
        }

        result = 0;
        if (a4)
        {
          *a4 = v10[4];
        }
      }

      else
      {
        FigCSSRuleListCopyRuleAtIndex_cold_1(&v12);
        return v12;
      }
    }
  }

  else
  {
    FigCSSRuleListCopyRuleAtIndex_cold_3(&v14);
    return v14;
  }

  return result;
}

uint64_t FigCSSRuleListAppendRule(void *cf, void *value)
{
  if (cf)
  {
    if (value)
    {
      Mutable = cf[2];
      if (Mutable || (v5 = CFGetAllocator(cf), Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]), (cf[2] = Mutable) != 0))
      {
        CFArrayAppendValue(Mutable, value);
        return 0;
      }

      else
      {
        FigCSSRuleListAppendRule_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigCSSAtRuleParserNodeSetPrelude_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigCSSRuleListAppendRule_cold_3(&v9);
    return v9;
  }
}

uint64_t figCSSRuleRegisterFigCSSRule()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSRuleID = result;
  return result;
}

uint64_t FigCSSRuleCreate(uint64_t a1, int a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigCSSRuleGetTypeID_sRegisterFigCSSRuleOnce, figCSSRuleRegisterFigCSSRule);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      result = 0;
      *(v6 + 16) = a2;
      *a3 = v6;
    }

    else
    {
      FigCSSRuleCreate_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigCSSRuleCreate_cold_2(&v9);
    return v9;
  }

  return result;
}

uint64_t FigCSSStyleRuleCopySelector(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16) == 1)
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
        FigCSSStyleRuleCopySelector_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigCSSStyleRuleCopySelector_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigCSSStyleRuleCopySelector_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigCSSStyleRuleCopyDeclaration(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16) == 1)
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
        FigCSSStyleRuleCopyDeclaration_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigCSSStyleRuleCopyDeclaration_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigCSSStyleRuleCopyDeclaration_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigCSSStyleRuleSetSelector(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
    {
      if (*(a1 + 16) == 1)
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
        FigCSSStyleRuleSetSelector_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigCSSStyleRuleSetSelector_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigCSSStyleRuleSetSelector_cold_3(&v9);
    return v9;
  }
}

uint64_t FigCSSStyleRuleSetDeclaration(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf && (v4 = CFGetTypeID(cf), MEMORY[0x19A8D3660](&FigCSSStyleDeclarationGetTypeID_sRegisterFigCSSStyleDeclarationOnce, figCSSStyleDeclarationRegisterFigCSSStyleDeclaration), v4 == sFigCSSStyleDeclarationID))
    {
      if (*(a1 + 16) == 1)
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
        FigCSSStyleRuleSetDeclaration_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigCSSStyleRuleSetDeclaration_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigCSSStyleRuleSetDeclaration_cold_3(&v9);
    return v9;
  }
}