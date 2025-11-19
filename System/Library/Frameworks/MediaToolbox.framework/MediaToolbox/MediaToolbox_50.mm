uint64_t FigFileStarByteStreamReadAndCreateBlockBuffer(const void *a1)
{
  CFGetAllocator(a1);

  return CMCreateContiguousBlockBufferFromStream();
}

uint64_t EstimateMaximumTrimTimeForFileSize(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v6)
  {
    v6(a1, 0, 1986618469, &v33, &v31 + 4);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v7(a1, 0, 1936684398, &v32, &v31);
  }

  v8 = a2 - (a2 * 0.004);
  v10 = v32;
  v9 = v33;
  if (!v33)
  {
    if (!v32)
    {
      fig_log_get_emitter();
      v15 = FigSignalErrorAtGM();
LABEL_36:
      v27 = v15;
      goto LABEL_37;
    }

    v9 = v32;
    v28 = v8;
    v29 = 0;
LABEL_35:
    v15 = EstimateByteTimingForTrack(v9, v28, v29, a3);
    goto LABEL_36;
  }

  if (!v32)
  {
LABEL_34:
    v28 = v8;
    v29 = v10;
    goto LABEL_35;
  }

  v38 = 0;
  v39 = 0;
  cf = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(v32);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = v12(FigBaseObject, @"UneditedTrackDuration", *MEMORY[0x1E695E480], &v39);
  if (v13)
  {
    goto LABEL_45;
  }

  if (v39)
  {
    CMTimeMakeFromDictionary(&time, v39);
    Seconds = CMTimeGetSeconds(&time);
    CFRelease(v39);
  }

  else
  {
    Seconds = 1.0;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v16)
  {
    goto LABEL_27;
  }

  v13 = v16(v10, &v38);
  if (v13)
  {
    goto LABEL_45;
  }

  v17 = v38;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v18)
  {
LABEL_27:
    LODWORD(v10) = 0;
    v27 = 4294954514;
    goto LABEL_28;
  }

  v13 = v18(v17, &cf);
  if (!v13)
  {
    v19 = 0;
    while (1)
    {
      v35 = 0;
      time.value = 0;
      v34 = 0;
      v20 = cf;
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (!v21)
      {
        break;
      }

      v13 = v21(v20, 0, 0, 0, &time, &v35, 0, 0, 0, 0);
      if (v13)
      {
        goto LABEL_45;
      }

      v22 = v35;
      value = time.value;
      v24 = cf;
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v25)
      {
        v26 = v25(v24, v22, &v34) != 0;
      }

      else
      {
        v26 = 1;
      }

      v19 += value;
      if (v35 != v34 || v26)
      {
        v27 = 0;
        LODWORD(v10) = (v19 / Seconds);
        goto LABEL_28;
      }
    }

    v27 = 4294954514;
    goto LABEL_43;
  }

LABEL_45:
  v27 = v13;
LABEL_43:
  LODWORD(v10) = 0;
LABEL_28:
  if (v38)
  {
    CFRelease(v38);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v27)
  {
    v9 = v33;
    goto LABEL_34;
  }

LABEL_37:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return v27;
}

uint64_t checkFigVideoDecoderMaxSpeedTrace()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t FigGetEstimatedMaxFullFramePlaybackSpeedForTrackReader(uint64_t a1, float *a2)
{
  if (sVDMSTCheckLogOnce != -1)
  {
    FigGetEstimatedMaxFullFramePlaybackSpeedForTrackReader_cold_1();
  }

  valuePtr = 0.0;
  theArray = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *MEMORY[0x1E695E480];
  EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate = v5(FigBaseObject, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  v8 = theArray;
  if (EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate)
  {
    v11 = 0;
    if (!theArray)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!theArray)
    {
      return 4294948176;
    }

    Count = CFArrayGetCount(theArray);
    v8 = theArray;
    if (Count)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      if (ValueAtIndex)
      {
        v11 = CFRetain(ValueAtIndex);
      }

      else
      {
        v11 = 0;
      }

      EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate = 0;
      v8 = theArray;
      if (!theArray)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
      EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate = 4294948176;
      if (!theArray)
      {
        goto LABEL_16;
      }
    }
  }

  CFRelease(v8);
LABEL_16:
  if (!EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate)
  {
    theArray = 0;
    v12 = FigTrackReaderGetFigBaseObject(a1);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate = v13(v12, @"NominalFrameRate", v6, &theArray);
      if (!EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate && theArray)
      {
        CFNumberGetValue(theArray, kCFNumberFloat32Type, &valuePtr);
        CFRelease(theArray);
        if (valuePtr < 1.0)
        {
LABEL_21:
          FigGetEstimatedMaxFullFramePlaybackSpeedForTrackReader_cold_2(&theArray);
          EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate = theArray;
          if (!v11)
          {
            return EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate;
          }

          goto LABEL_25;
        }

        EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate = FigGetEstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate(v11, a2, valuePtr);
        if (!v11)
        {
          return EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate;
        }

LABEL_25:
        CFRelease(v11);
        return EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate;
      }

      if (!EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate)
      {
        goto LABEL_21;
      }
    }

    else
    {
      EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate = 4294954514;
    }
  }

  if (v11)
  {
    goto LABEL_25;
  }

  return EstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate;
}

const void *vdmst_getCodecProperty(const __CFDictionary *a1, const void *a2, void *key, const void *a4, uint64_t a5, const void **a6)
{
  if (!a6)
  {
    vdmst_getCodecProperty_cold_3(&v20);
    return v20;
  }

  *a6 = 0;
  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    goto LABEL_8;
  }

  v12 = Value;
  v13 = CFGetTypeID(Value);
  if (v13 != CFDictionaryGetTypeID())
  {
    vdmst_getCodecProperty_cold_1(&v18);
    return v18;
  }

  v14 = CFDictionaryGetValue(v12, a2);
  if (v14)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 != CFDictionaryGetTypeID())
    {
      vdmst_getCodecProperty_cold_2(&v19);
      return v19;
    }

    result = CFDictionaryGetValue(v15, a4);
    *a6 = result;
    if (!result)
    {
LABEL_9:
      result = CFDictionaryGetValue(a1, a4);
      *a6 = result;
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
LABEL_8:
    result = *a6;
    if (!*a6)
    {
      goto LABEL_9;
    }
  }

  if (CFGetTypeID(result) == a5)
  {
    return 0;
  }

  *a6 = 0;

  return FigSignalErrorAtGM();
}

const void *OUTLINED_FUNCTION_3_92(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{

  return vdmst_getCodecProperty(v7, v6, v8, v9, a5, a6);
}

const void *OUTLINED_FUNCTION_4_95()
{

  return CFArrayGetValueAtIndex(v0, 0);
}

uint64_t figTTMLDocumentWriterElement_Register()
{
  result = _CFRuntimeRegisterClass();
  sElementTypeID = result;
  return result;
}

uint64_t FigTTMLDocumentWriterElementCreate(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v7 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigTTMLDocumentWriterElementGetTypeID_sRegisterElementOnce, figTTMLDocumentWriterElement_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigTTMLDocumentWriterElementCreate_cold_3(&v17);
    return v17;
  }

  v9 = Instance;
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigTTMLDocumentWriterElementCreate_cold_2(&v16);
    v13 = v16;
LABEL_9:
    CFRelease(v9);
    return v13;
  }

  v11 = Mutable;
  v12 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    FigTTMLDocumentWriterElementCreate_cold_1(v11, &v15);
    v13 = v15;
    goto LABEL_9;
  }

  v13 = 0;
  *(v9 + 16) = a2;
  *(v9 + 32) = v12;
  *(v9 + 40) = v11;
  *(v9 + 24) = a3;
  *a4 = v9;
  return v13;
}

uint64_t FigTTMLDocumentWriterElementWalkTree(CFArrayRef *a1, uint64_t (*a2)(CFArrayRef *, uint64_t), uint64_t (*a3)(CFArrayRef *, uint64_t), uint64_t (*a4)(void, void), uint64_t a5)
{
  if (a1)
  {
    v16 = a4;
    v8 = CFGetTypeID(a1);
    MEMORY[0x19A8D3660](&FigTTMLDocumentWriterElementGetTypeID_sRegisterElementOnce, figTTMLDocumentWriterElement_Register);
    a4 = v16;
    if (v8 == sElementTypeID)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      result = a2(a1, a5);
      if (result == 2)
      {
        return result;
      }

      if (!result)
      {
LABEL_6:
        v10 = a1[4];
        if (v10)
        {
          Count = CFArrayGetCount(v10);
          if (Count >= 1)
          {
            v12 = Count;
            for (i = 0; i != v12; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a1[4], i);
              result = FigTTMLDocumentWriterElementWalkTree(ValueAtIndex, a2, a3, v16, a5);
              if (result == 1)
              {
                break;
              }

              if (result == 2)
              {
                return result;
              }
            }
          }
        }
      }

      if (a3)
      {

        return a3(a1, a5);
      }

      return 0;
    }
  }

  if (!a4)
  {
    return 0;
  }

  return a4(a1, a5);
}

uint64_t FigTTMLDocumentWriterElementInsertBeforeIfNotExist(CFArrayRef *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = 0;
    v7 = 0;
    FigTTMLDocumentWriterElementWalkTree(a1, insertBeforeIfNotExist, 0, 0, v6);
    result = 0;
    if (a4)
    {
      *a4 = v7;
    }
  }

  else
  {
    FigTTMLDocumentWriterElementInsertBeforeIfNotExist_cold_1(&v8);
    return v8;
  }

  return result;
}

void FigTTMLDocumentWriterElementInsertChildNodeBeforeNode(uint64_t a1, void *a2, const void *a3)
{
  if (a3)
  {
    v6 = *(a1 + 32);
    v9.length = CFArrayGetCount(v6);
    v9.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v9, a3);
    if (FirstIndexOfValue < 0)
    {
      return;
    }
  }

  else
  {
    FirstIndexOfValue = 0;
  }

  CFArrayInsertValueAtIndex(*(a1 + 32), FirstIndexOfValue, a2);
  if (a2)
  {
    v8 = CFGetTypeID(a2);
    MEMORY[0x19A8D3660](&FigTTMLDocumentWriterElementGetTypeID_sRegisterElementOnce, figTTMLDocumentWriterElement_Register);
    if (v8 == sElementTypeID)
    {
      a2[3] = a1;
    }
  }
}

const void *FigTTMLDocumentWriterElementGetChildAtIndex(uint64_t a1, CFIndex a2)
{
  if (CFArrayGetCount(*(a1 + 32)) <= a2)
  {
    FigTTMLDocumentWriterElementGetChildAtIndex_cold_1();
    return 0;
  }

  else
  {
    v4 = *(a1 + 32);

    return CFArrayGetValueAtIndex(v4, a2);
  }
}

uint64_t FigTTMLDocumentWriterElementCopyElementsAtPath(CFArrayRef *a1, uint64_t a2, uint64_t a3, CFMutableArrayRef *a4)
{
  v8 = 0;
  if (!a3)
  {
    FigTTMLDocumentWriterElementCopyElementsAtPath_cold_2(&v10);
    return v10;
  }

  if (!a4)
  {
    FigTTMLDocumentWriterElementCopyElementsAtPath_cold_1(&v10);
    return v10;
  }

  v7[0] = a2;
  v7[1] = a3;
  LODWORD(v8) = -1;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigTTMLDocumentWriterElementWalkTree(a1, getElementsAtPathPreOrder, getElementsAtPathPostOrder, 0, v7);
  result = 0;
  *a4 = Mutable;
  return result;
}

uint64_t getElementsAtPathPreOrder(_DWORD *value, uint64_t a2)
{
  v2 = *(a2 + 16) + 1;
  *(a2 + 16) = v2;
  if (value[4] != *(*a2 + 4 * v2))
  {
    return 1;
  }

  if (*(a2 + 8) - 1 != v2)
  {
    return 0;
  }

  CFArrayAppendValue(*(a2 + 24), value);
  return 1;
}

uint64_t FigTTMLDocumentWriterElementWriteTree(CFArrayRef *a1, uint64_t a2)
{
  v3 = a2;
  v4 = 0;
  FigTTMLDocumentWriterElementWalkTree(a1, writeStartElement, writeEndElement, writeCaptionData, &v3);
  return v4;
}

double figTTMLDocumentWriterElement_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figTTMLDocumentWriterElement_Finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

__CFString *figTTMLDocumentWriterElement_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFDictionaryGetCount(*(a1 + 40));
  v4 = CFArrayGetCount(*(a1 + 32));
  CFStringAppendFormat(Mutable, 0, @"[FigTTMLDocumentWriter_Element %p] nodeType=%d parent=%p attributes(%ld)={ ", a1, *(a1 + 16), *(a1 + 24), Count);
  CFDictionaryApplyFunction(*(a1 + 40), appendAttributeDebugDesc, Mutable);
  CFStringAppendFormat(Mutable, 0, @"} children(%ld)=[ ", v4);
  v6.location = 0;
  v6.length = v4;
  CFArrayApplyFunction(*(a1 + 32), v6, appendChildNodeDebugDesc, Mutable);
  CFStringAppendFormat(Mutable, 0, @"]");
  return Mutable;
}

uint64_t RegisterFigDiskCacheProviderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigDiskCacheProviderGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigDiskCacheProviderGetClassID_sRegisterFigDiskCacheProviderBaseTypeOnce, RegisterFigDiskCacheProviderBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigDiskCacheProviderRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigDiskCacheProviderRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _figHTTPRequestCreateErrorComment(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v10 = CFStringCreateWithFormatAndArguments(0, 0, a3, &a9);
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 520);
      if (v12)
      {
        CFRelease(v12);
      }

      *(a1 + 520) = v11;
    }
  }
}

BOOL figHTTPShouldReportNetworkHistory(uint64_t a1)
{
  if (*(a1 + 488) && !*(a1 + 173))
  {
    v3 = CFURLCopyScheme(*(a1 + 72));
    if (FigCFEqual())
    {
      v1 = 0;
      if (!v3)
      {
        return v1;
      }
    }

    else
    {
      v1 = FigCFEqual() == 0;
      if (!v3)
      {
        return v1;
      }
    }

    CFRelease(v3);
    return v1;
  }

  return 0;
}

uint64_t figHTTPSetIsDormant(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 176) != a2)
  {
    v4 = result;
    *(result + 176) = a2;
    if (a2)
    {
      result = FigGetUpTimeNanoseconds();
      if (*(v4 + 496))
      {
        figHTTPCapUptimeToResponseEndTime(v4, result);
        result = FigNetworkHistoryRequestBecameInactive();
        *(v4 + 496) = 0;
        *(v4 + 177) = 0;
      }
    }

    else
    {
      if (*(result + 216) <= 0)
      {
        result = FigGetUpTimeNanoseconds();
      }

      if (!*(v4 + 496))
      {
        FigNetworkHistoryRequestBecameActive();
        figHTTPRequestProjectedResponseSize(v4);

        return FigNetworkHistorySetRequestLatency();
      }
    }
  }

  return result;
}

uint64_t figHTTPRequestProjectedResponseSize(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v3 = 0;
  FigCFHTTPGetContentLengthFromHeaderString([*(a1 + 144) valueForKey:@"Content-Length"], &v5);
  result = v5;
  if (!v5)
  {
    if (FigCFHTTPGetContentRangeFromHeaderString([*(a1 + 144) valueForKey:@"Content-Range"], &v4, &v3, 0, 0))
    {
      return v3 - v4 + 1;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t figHTTPRequestPerformReadCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (!a1)
  {
    figHTTPRequestPerformReadCallback_cold_3(&v28);
    return v28;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 172))
  {
    figHTTPRequestPerformReadCallback_cold_1(&v26);
    return v26;
  }

  v13 = DerivedStorage;
  if (!*(DerivedStorage + 24))
  {
    figHTTPRequestPerformReadCallback_cold_2(&v27);
    return v27;
  }

  v25 = a3;
  v14 = *DerivedStorage;
  if (*DerivedStorage)
  {
    CFRetain(*DerivedStorage);
  }

  if (*(v13 + 376))
  {
    v15 = a5 | 4;
  }

  else
  {
    v15 = a5;
  }

  if (*(v13 + 377))
  {
    v16 = v15 | 8;
  }

  else
  {
    v16 = v15;
  }

  if ((v16 & 2) != 0)
  {
    *(v13 + 172) = 1;
    v24 = objc_autoreleasePoolPush();
    figHTTPSetActivelyUsingNetwork(a1, 0);
    objc_autoreleasePoolPop(v24);
  }

  v17 = *(v13 + 136);
  v19 = *(v13 + 24);
  v18 = *(v13 + 32);
  if (v18)
  {
    v20 = CFRetain(v18);
  }

  else
  {
    v20 = 0;
  }

  CFRetain(a1);
  FigRetainProxyUnlockAll();
  v19(a1, v17, v20, a2, v25, a4, v16, a6);
  FigRetainProxyRelock();
  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(a1);
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    v22 = 4294954511;
  }

  else
  {
    v22 = 0;
  }

  if ((v16 & 2) != 0 && !IsInvalidated)
  {
    if (!*(v13 + 363))
    {
      v22 = 0;
      if (!v14)
      {
        return v22;
      }

      goto LABEL_27;
    }

    FigHTTPRequestCommonMandatoryRequestFinish();
    v22 = 0;
    *(v13 + 363) = 0;
  }

  if (v14)
  {
LABEL_27:
    CFRelease(v14);
  }

  return v22;
}

void sub_196697548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t figHTTPCapUptimeToResponseEndTime(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  if (!v4)
  {
    v4 = [*(a1 + 504) _incompleteTaskMetrics];
  }

  v5 = [objc_msgSend(v4 "transactionMetrics")];
  if (!v5)
  {
    return a2;
  }

  v6 = [v5 responseEndDate];
  if (!v6)
  {
    return a2;
  }

  [v6 timeIntervalSinceReferenceDate];
  v8 = (v7 - *(a1 + 184)) * 1000000000.0;
  if (*(a1 + 192) + v8 >= a2)
  {
    return a2;
  }

  else
  {
    return *(a1 + 192) + v8;
  }
}

uint64_t figHttpRequestEnsureNotTooManyBytes(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  if (!*(DerivedStorage + 168))
  {
    return 0;
  }

  v10 = *(DerivedStorage + 416);
  if (v10 < 1)
  {
    return 0;
  }

  v11 = *(DerivedStorage + 424);
  if (v11 + a2 <= v10)
  {
    return 0;
  }

  _figHTTPRequestCreateErrorComment(DerivedStorage, v4, @"received more bytes  %lld + %zu = (%lld) than promised (%lld)", v5, v6, v7, v8, v9, v11);

  return FigSignalErrorAtGM();
}

uint64_t FigHTTPRequestNSURLSessionGetClassID()
{
  if (FigHTTPRequestNSURLSessionGetClassID_sRegisterFigHTTPRequestNSURLSessionTypeOnce != -1)
  {
    FigHTTPRequestNSURLSessionGetClassID_cold_1();
  }

  return sFigHTTPRequestNSURLSessionID;
}

uint64_t __FigHTTPRequestNSURLSessionGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t _FigHTTPRequestCreateWithNSURLSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8D3660](&sFigHTTPInit, figHTTPRequestRunOnce);
  if (a2)
  {
    if (FigHTTPRequestNSURLSessionGetClassID_sRegisterFigHTTPRequestNSURLSessionTypeOnce != -1)
    {
      FigHTTPRequestNSURLSessionGetClassID_cold_1();
    }

    v20 = sFigHTTPRequestNSURLSessionID;
    if (v20 != CMBaseObjectGetClassID())
    {
      _FigHTTPRequestCreateWithNSURLSession_cold_2(valuePtr);
      goto LABEL_8;
    }

    if (!*CMBaseObjectGetDerivedStorage() || FigRetainProxyIsInvalidated())
    {
      _FigHTTPRequestCreateWithNSURLSession_cold_3(valuePtr);
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    _FigHTTPRequestCreateWithNSURLSession_cold_28(valuePtr);
    goto LABEL_8;
  }

  if (a11)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(a11))
    {
      _FigHTTPRequestCreateWithNSURLSession_cold_4(valuePtr);
      goto LABEL_8;
    }

    CFDictionaryGetValue(a11, @"FHRP_InterfaceName");
    FigCFDictionaryGetBooleanIfPresent();
    CFDictionaryGetValue(a11, @"FHRP_ClientAuditToken");
    CFDictionaryGetValue(a11, @"FHRP_ClientBundleIdentifier");
    CFDictionaryGetValue(a11, @"FHRP_CustomURLLoader");
    if (CFDictionaryGetValue(a11, @"FHRP_DependentPipelinePrecursor"))
    {
      if (FigHTTPRequestNSURLSessionGetClassID_sRegisterFigHTTPRequestNSURLSessionTypeOnce != -1)
      {
        _FigHTTPRequestCreateWithNSURLSession_cold_5();
      }

      if (!CMBaseObjectIsMemberOfClass())
      {
        _FigHTTPRequestCreateWithNSURLSession_cold_6(valuePtr);
        goto LABEL_8;
      }
    }

    FigCFDictionaryGetDoubleIfPresent();
    CFDictionaryGetValue(a11, @"FHRP_NetworkHistory");
    CFDictionaryGetValue(a11, @"FHRP_CreateExpectedProgressTarget");
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetDataValue();
    CFDictionaryGetValue(a11, @"FHRP_URLRequestAttribution");
    CFDictionaryGetValue(a11, @"FHRP_NetworkActivity");
  }

  if (FigHTTPRequestNSURLSessionGetClassID_sRegisterFigHTTPRequestNSURLSessionTypeOnce != -1)
  {
    _FigHTTPRequestCreateWithNSURLSession_cold_5();
  }

  if (CMDerivedObjectCreate())
  {
    _FigHTTPRequestCreateWithNSURLSession_cold_8(valuePtr);
  }

  else
  {
    _FigHTTPRequestCreateWithNSURLSession_cold_27(valuePtr);
  }

LABEL_8:
  v21 = valuePtr[0];
  if (!valuePtr[0])
  {
    v21 = 0;
  }

  *a18 = 0;
  return v21;
}

uint64_t figHTTPRequestRunOnce()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  result = FigGetCFPreferenceBooleanWithDefault();
  sFigDisableIncreasedNetworkQOS = result;
  if (result)
  {
    if (dword_1EAF17510)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

dispatch_queue_t figHTTPNotifyNetworkActivitySetupOnce()
{
  gApplicationNetworkActivityDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = dispatch_queue_create("com.apple.coremedia.networkactivitydict", 0);
  gApplicationNetworkActivityQueue = result;
  return result;
}

void __figHTTPSetActivelyUsingNetwork_block_invoke(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v4 = dispatch_time(0, 100000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __figHTTPSetActivelyUsingNetwork_block_invoke_2;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = *(a1 + 32);
    dispatch_after(v4, gApplicationNetworkActivityQueue, v7);
    return;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(gApplicationNetworkActivityDict, *(a1 + 32));
  if (!Value)
  {
    valuePtr = 1;
    goto LABEL_7;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  if (!valuePtr++)
  {
LABEL_7:
    if (*(a1 + 32))
    {
      SBSSetStatusBarShowsActivityForApplication();
    }
  }

  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(gApplicationNetworkActivityDict, *(a1 + 32), v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }
}

void __figHTTPSetActivelyUsingNetwork_block_invoke_2(uint64_t a1)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(gApplicationNetworkActivityDict, *(a1 + 32));
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (--valuePtr)
    {
      v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(gApplicationNetworkActivityDict, *(a1 + 32), v3);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        SBSSetStatusBarShowsActivityForApplication();
        v4 = *(a1 + 32);
      }

      CFDictionaryRemoveValue(gApplicationNetworkActivityDict, v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t __figHTTPGetConnectionRTT_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = v5 > a4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *(v4 + 24) = a4;
  }

  return 1;
}

uint64_t figHTTPRequestNSURLSessionCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v8 = 4294954511;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"FHRP_HTTPFinalURL"))
  {
    v9 = *(DerivedStorage + 80);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"FHRP_HTTPResponseHeaders"))
  {
    v9 = *(DerivedStorage + 152);
    if (v9)
    {
LABEL_8:
      v10 = CFRetain(v9);
LABEL_9:
      v8 = 0;
      *a4 = v10;
      goto LABEL_22;
    }

LABEL_21:
    v8 = 4294954513;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"FHRP_PayloadLength"))
  {
    if (*(DerivedStorage + 144))
    {
      v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (DerivedStorage + 416));
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"FHRP_ErrorReturned"))
  {
    v11 = *(DerivedStorage + 512);
    if (v11)
    {
      v10 = v11;
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"FHRP_ErrorComment"))
  {
    v9 = *(DerivedStorage + 520);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"FHRP_RemoteIPAddress"))
  {
    v9 = *(DerivedStorage + 368);
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  if (!CFEqual(a2, @"FHRP_CFNetworkTimingData"))
  {
    if (CFEqual(a2, @"FHRP_CFNetworkTransactionMetrics"))
    {
      v19 = 0;
      v18 = figHTTPRequestNSURLSessionCopyTaskMetrics(a1, &v19);
    }

    else
    {
      if (!CFEqual(a2, @"FHRP_ByteRange"))
      {
        if (CFEqual(a2, @"FHRP_HandlesNetworkTransitions"))
        {
          v15 = MEMORY[0x1E695E4D0];
          if (!*(DerivedStorage + 536))
          {
            v15 = MEMORY[0x1E695E4C0];
          }

          v9 = *v15;
          goto LABEL_8;
        }

        if (!CFEqual(a2, @"FHRP_IsExpensive"))
        {
          v8 = 4294954512;
          goto LABEL_22;
        }

        v8 = 0;
        if (*(DerivedStorage + 537))
        {
          v16 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v16 = MEMORY[0x1E695E4C0];
        }

        v17 = *v16;
LABEL_43:
        *a4 = v17;
        goto LABEL_22;
      }

      v19 = 0;
      v18 = figHTTPRequestNSURLSessionCopyByteRangeAsCFDictionary(a1, &v19);
    }

    v8 = v18;
    v17 = v19;
    goto LABEL_43;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [*(DerivedStorage + 504) _timingData];
  if (v14)
  {
    v8 = 0;
    *a4 = v14;
  }

  else
  {
    v8 = 4294954513;
  }

  objc_autoreleasePoolPop(v13);
LABEL_22:
  FigRetainProxyUnlockMutex();
  return v8;
}

uint64_t figHTTPAddHeaderFields(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {

      return [a3 setValue:a2 forHTTPHeaderField:a1];
    }
  }

  return result;
}

void __figHttpRequestSetupNSURLSessionTask_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    _FigHTTPRequestSessionNoteNativeConnectionForNSURLSession(v3, a2);

    CFRelease(v4);
  }
}

uint64_t OUTLINED_FUNCTION_2_117(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char valuePtr)
{

  return CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr);
}

uint64_t FigEndpointStreamAudioEngineResumeSync(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = 0;
  if (a3)
  {
    v5 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v5 = -1;
  }

  SyncContext = inEndpointStreamUtil_createSyncContext();
  if (!SyncContext)
  {
    FigEndpointStreamAudioEngineResumeSync_cold_1();
    return valuePtr;
  }

  v7 = SyncContext;
  v8 = SyncContext[1];
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *v7;
  dispatch_retain(*v7);
  VTable = CMBaseObjectGetVTable();
  v13 = *(VTable + 16);
  v12 = VTable + 16;
  v14 = *(v13 + 8);
  if (v14)
  {
    v14(a1, a2, inEndpointStreamAudioEngineUtil_completionCallback, v7);
  }

  else
  {
    inEndpointStreamAudioEngineUtil_completionCallback(v12, -12782, v7);
  }

  if (!dispatch_semaphore_wait(v10, v5))
  {
    if (CFArrayGetCount(v9) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    }

    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  valuePtr = -15486;
  if (v9)
  {
LABEL_15:
    CFRelease(v9);
  }

LABEL_16:
  if (v10)
  {
    dispatch_release(v10);
  }

  return valuePtr;
}

void *inEndpointStreamUtil_createSyncContext()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v0)
  {
    v3 = 58;
LABEL_7:
    inEndpointStreamUtil_createSyncContext_cold_1(v0, v3, &v4);
    return v4;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v0[1] = Mutable;
  if (!Mutable)
  {
    v3 = 61;
    goto LABEL_7;
  }

  *v0 = dispatch_semaphore_create(0);
  return v0;
}

void inEndpointStreamAudioEngineUtil_completionCallback(uint64_t a1, int a2, uint64_t a3)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(*(a3 + 8), v4);
  dispatch_semaphore_signal(*a3);
  if (*a3)
  {
    dispatch_release(*a3);
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a3);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t FigEndpointStreamAudioEngineSuspendSync(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = 0;
  if (a3)
  {
    v5 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v5 = -1;
  }

  SyncContext = inEndpointStreamUtil_createSyncContext();
  if (!SyncContext)
  {
    FigEndpointStreamAudioEngineSuspendSync_cold_1();
    return valuePtr;
  }

  v7 = SyncContext;
  v8 = SyncContext[1];
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *v7;
  dispatch_retain(*v7);
  VTable = CMBaseObjectGetVTable();
  v13 = *(VTable + 16);
  v12 = VTable + 16;
  v14 = *(v13 + 16);
  if (v14)
  {
    v14(a1, a2, inEndpointStreamAudioEngineUtil_completionCallback, v7);
  }

  else
  {
    inEndpointStreamAudioEngineUtil_completionCallback(v12, -12782, v7);
  }

  if (!dispatch_semaphore_wait(v10, v5))
  {
    if (CFArrayGetCount(v9) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    }

    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  valuePtr = -15486;
  if (v9)
  {
LABEL_15:
    CFRelease(v9);
  }

LABEL_16:
  if (v10)
  {
    dispatch_release(v10);
  }

  return valuePtr;
}

uint64_t FigEndpointStreamAudioEngineSetEndpointStreamSync(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = 0;
  if (a3)
  {
    v5 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v5 = -1;
  }

  SyncContext = inEndpointStreamUtil_createSyncContext();
  if (!SyncContext)
  {
    FigEndpointStreamAudioEngineSetEndpointStreamSync_cold_1();
    return valuePtr;
  }

  v7 = SyncContext;
  v8 = SyncContext[1];
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *v7;
  dispatch_retain(*v7);
  VTable = CMBaseObjectGetVTable();
  v13 = *(VTable + 16);
  v12 = VTable + 16;
  v14 = *(v13 + 24);
  if (v14)
  {
    v14(a1, a2, inEndpointStreamAudioEngineUtil_completionCallback, v7);
  }

  else
  {
    inEndpointStreamAudioEngineUtil_completionCallback(v12, -12782, v7);
  }

  if (!dispatch_semaphore_wait(v10, v5))
  {
    if (CFArrayGetCount(v9) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    }

    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  valuePtr = -15486;
  if (v9)
  {
LABEL_15:
    CFRelease(v9);
  }

LABEL_16:
  if (v10)
  {
    dispatch_release(v10);
  }

  return valuePtr;
}

uint64_t MTSidebandVideoPropertiesGetTypeID()
{
  if (_MergedGlobals_85 != -1)
  {
    MTSidebandVideoPropertiesGetTypeID_cold_1();
  }

  if (sFormatDescriptionToSidebandVideoPropertiesMappngCreateOnce != -1)
  {
    MTSidebandVideoPropertiesGetTypeID_cold_2();
  }

  return qword_1ED4CAFA8;
}

uint64_t registerSidebandVideoPropertiesClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void formatDescriptionToSidebandVideoPropertiesMappingCreateOnce()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = 14;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = CFSetCreateMutable(v0, 14, MEMORY[0x1E695E9F8]);
  v4 = &off_1E748EFD0;
  do
  {
    v5 = *v4;
    CFDictionarySetValue(Mutable, **(v4 - 1), **v4);
    CFSetAddValue(v3, *v5);
    v4 += 2;
    --v1;
  }

  while (v1);
  sFormatDescriptionToSidebandVideoPropertiesMapping = Mutable;
  sRecognizedSidebandVideoPropertiesKeys = v3;
}

uint64_t MTSidebandVideoPropertiesCreateMutable(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MTSidebandVideoPropertiesGetTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v4 + 24) = Mutable;
      if (Mutable)
      {
        result = 0;
        *(v4 + 16) = 1;
        *a2 = v4;
      }

      else
      {
        MTSidebandVideoPropertiesCreateMutable_cold_1(v4, &v7);
        return v7;
      }
    }

    else
    {
      MTSidebandVideoPropertiesCreateMutable_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MTSidebandVideoPropertiesCreateMutable_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t MTSidebandVideoPropertiesCreateMutableFromFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2, void *a3)
{
  context = 0;
  Mutable = MTSidebandVideoPropertiesCreateMutable(a1, &context);
  if (Mutable)
  {
    if (context)
    {
      CFRelease(context);
    }
  }

  else
  {
    if (a2)
    {
      Extensions = CMFormatDescriptionGetExtensions(a2);
      if (Extensions)
      {
        CFDictionaryApplyFunction(Extensions, sidebandVideoPropertiesApplier_applyRelevantKeysFromFormatDescriptionExtensions, context);
      }
    }

    v7 = context;
    *(context + 16) = 1;
    *a3 = v7;
  }

  return Mutable;
}

void sidebandVideoPropertiesApplier_applyRelevantKeysFromFormatDescriptionExtensions(void *key, const void *a2, uint64_t a3)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(sFormatDescriptionToSidebandVideoPropertiesMapping, key, &value))
  {
    CFDictionarySetValue(*(a3 + 24), value, a2);
  }
}

uint64_t MTSidebandVideoPropertiesCreateFromFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2, void *a3)
{
  cf = 0;
  v4 = MTSidebandVideoPropertiesCreateMutableFromFormatDescription(a1, a2, &cf);
  v5 = cf;
  if (v4)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *(cf + 16) = 0;
    *a3 = v5;
  }

  return v4;
}

uint64_t MTSidebandVideoPropertiesCopyAsDictionary(uint64_t a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  if (a1)
  {
    if (a3)
    {
      Count = FigCFDictionaryGetCount();
      MutableCopy = CFDictionaryCreateMutableCopy(a2, Count + 1, *(a1 + 24));
      if (MutableCopy)
      {
        v8 = MutableCopy;
        FigCFDictionarySetInt16();
        result = 0;
        *a3 = v8;
      }

      else
      {
        MTSidebandVideoPropertiesCopyAsDictionary_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      MTSidebandVideoPropertiesCopyAsDictionary_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    MTSidebandVideoPropertiesCopyAsDictionary_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t MTSidebandVideoPropertiesCreateFromDictionary(uint64_t a1, const __CFDictionary *a2, void **a3)
{
  context = 0;
  if (!a2)
  {
    MTSidebandVideoPropertiesCreateFromDictionary_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    MTSidebandVideoPropertiesCreateFromDictionary_cold_1(&v8);
    return v8;
  }

  Mutable = MTSidebandVideoPropertiesCreateMutable(a1, &context);
  if (Mutable)
  {
    if (context)
    {
      CFRelease(context);
    }
  }

  else
  {
    CFDictionaryApplyFunction(a2, sidebandVideoPropertiesApplier_addKnownKeysFromExtensionsDictionary, context);
    *a3 = context;
  }

  return Mutable;
}

void sidebandVideoPropertiesApplier_addKnownKeysFromExtensionsDictionary(void *value, const void *a2, uint64_t a3)
{
  if (CFSetContainsValue(sRecognizedSidebandVideoPropertiesKeys, value))
  {
    v6 = *(a3 + 24);

    CFDictionarySetValue(v6, value, a2);
  }

  else if (CFEqual(value, @"LookupID"))
  {
    *(a3 + 18) = FigCFNumberGetSInt16();
  }
}

uint64_t MTSidebandVideoPropertiesSetValue(uint64_t a1, void *value, const void *a3)
{
  if (!a1)
  {
    MTSidebandVideoPropertiesSetValue_cold_4(&v7);
    return v7;
  }

  if (!value)
  {
    MTSidebandVideoPropertiesSetValue_cold_3(&v7);
    return v7;
  }

  if (!*(a1 + 16))
  {
    MTSidebandVideoPropertiesSetValue_cold_2(&v7);
    return v7;
  }

  if (!CFSetContainsValue(sRecognizedSidebandVideoPropertiesKeys, value))
  {
    MTSidebandVideoPropertiesSetValue_cold_1(&v7);
    return v7;
  }

  CFDictionarySetValue(*(a1 + 24), value, a3);
  return 0;
}

uint64_t MTSidebandVideoPropertiesRemoveValue(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16))
      {
        CFDictionaryRemoveValue(*(a1 + 24), a2);
        return 0;
      }

      else
      {
        MTSidebandVideoPropertiesRemoveValue_cold_1(&v3);
        return v3;
      }
    }

    else
    {
      MTSidebandVideoPropertiesRemoveValue_cold_2(&v4);
      return v4;
    }
  }

  else
  {
    MTSidebandVideoPropertiesRemoveValue_cold_3(&v5);
    return v5;
  }
}

uint64_t FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions(uint64_t a1, __CFDictionary **a2)
{
  if (!a1)
  {
    FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_4(&v15);
    return v15;
  }

  if (!a2)
  {
    FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_3(&v15);
    return v15;
  }

  v3 = *MEMORY[0x1E695E480];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24));
  if (!Copy)
  {
    FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_2(&v15);
    return v15;
  }

  v5 = Copy;
  Count = CFDictionaryGetCount(Copy);
  Mutable = CFDictionaryCreateMutable(v3, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = &off_1E748EFD0;
    v10 = 14;
    do
    {
      v11 = *(v9 - 1);
      Value = CFDictionaryGetValue(v5, **v9);
      if (Value)
      {
        CFDictionarySetValue(v8, *v11, Value);
      }

      v9 += 2;
      --v10;
    }

    while (v10);
    v13 = 0;
    *a2 = v8;
  }

  else
  {
    FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_1(&v15);
    v13 = v15;
  }

  CFRelease(v5);
  return v13;
}

uint64_t MTSidebandVideoPropertiesSetLookupID(uint64_t result, __int16 a2)
{
  if (!result)
  {
    return MTSidebandVideoPropertiesSetLookupID_cold_1();
  }

  *(result + 18) = a2;
  return result;
}

uint64_t MTSidebandVideoPropertiesAcquireNextAvailableSidebandVideoPropertiesLookupID()
{
  do
  {
    result = atomic_fetch_add(MTSidebandVideoPropertiesAcquireNextAvailableSidebandVideoPropertiesLookupID_sCurrentSidebandVideoPropertiesLookupID, 1u);
  }

  while (!result);
  return result;
}

uint64_t sidebandVideoProperties_init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sidebandVideoProperties_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t sidebandVideoProperties_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return CFEqual(*(a1 + 24), *(a2 + 24));
    }
  }

  return result;
}

CFStringRef sidebandVideoProperties_copyFormattingDesc(unsigned __int16 *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<MTSidebandVideoProperties %p | retainCount %d | identifier %d>", a1, v3, a1[9]);
}

CFStringRef sidebandVideoProperties_copyDebugDesc(unsigned __int16 *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<MTSidebandVideoProperties %p | retainCount %d | identifier %d>", a1, v3, a1[9]);
}

uint64_t createErrorLogEntry(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
    v5 = *(a1 + 16);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 16) = FigErrorLogCreateEntry(v3, 0, *a1, 0, -16670, @"CoreMediaErrorDomain", v4, 0, 0, 0, 4, 0, *(a1 + 8));
    if (v4)
    {
      CFRelease(v4);
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigSessionDataParseJSONChapter(uint64_t a1, const __CFArray *cf, const void *a3, __CFArray **a4, double a5)
{
  v8 = cf;
  v88 = 0;
  v89 = 0;
  v86 = 0.0;
  v87 = 0;
  v9 = CFGetTypeID(cf);
  if (v9 != CFArrayGetTypeID())
  {
    ErrorLogEntry = createErrorLogEntry(a1, "Chapter JSON is not an array");
    goto LABEL_74;
  }

  Count = CFArrayGetCount(v8);
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  v12 = Mutable;
  if (!Mutable)
  {
    FigSessionDataParseJSONChapter_cold_2(&v84);
    goto LABEL_102;
  }

  v74 = a4;
  v75 = Count - 1;
  if (Count < 1)
  {
    ErrorLogEntry = 0;
LABEL_72:
    if (!v74)
    {
      goto LABEL_93;
    }

    *v74 = v12;
LABEL_74:
    v12 = 0;
    goto LABEL_93;
  }

  v81 = 0;
  v13 = 0;
  v79 = Mutable;
  v14 = 0.0;
  v76 = a3;
  v77 = Count;
  v78 = v8;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
    seconds = 0.0;
    v16 = CFGetTypeID(ValueAtIndex);
    if (v16 != CFDictionaryGetTypeID())
    {
      v71 = "chapter entry is not a dictionary";
LABEL_88:
      v22 = createErrorLogEntry(a1, v71);
LABEL_89:
      ErrorLogEntry = v22;
      goto LABEL_93;
    }

    v17 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v17)
    {
      FigSessionDataParseJSONChapter_cold_1(&v84);
LABEL_102:
      ErrorLogEntry = LODWORD(v84.value);
      goto LABEL_93;
    }

    v18 = v17;
    v82 = v13;
    CFArraySetValueAtIndex(v12, v13, v17);
    CFRelease(v18);
    DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
    v20 = FigCFDictionaryGetDoubleIfPresent();
    if (!(DoubleIfPresent | v20))
    {
      v71 = "chapter dictionary must have start time or duration";
      goto LABEL_88;
    }

    v21 = v20;
    if (DoubleIfPresent && v86 < 0.0)
    {
      v71 = "chapter start time must be positive";
      goto LABEL_88;
    }

    if (v20 && seconds < 0.0)
    {
      v71 = "chapter duration must be positive";
      goto LABEL_88;
    }

    CMTimeMakeWithSeconds(&v84, v86, 100000);
    v22 = FigCFDictionarySetCMTime();
    if (v22)
    {
      goto LABEL_89;
    }

    if (!v81)
    {
      goto LABEL_16;
    }

    if (!DoubleIfPresent)
    {
      v71 = "cannot determine chapter duration.  chapter has just duration, but previous chapter has just start time";
      goto LABEL_88;
    }

    CFArrayGetValueAtIndex(v12, v82 - 1);
    CMTimeMakeWithSeconds(&v84, v86 - v14, 100000);
    v22 = FigCFDictionarySetCMTime();
    if (v22)
    {
      goto LABEL_89;
    }

LABEL_16:
    if (v21)
    {
      CMTimeMakeWithSeconds(&v84, seconds, 100000);
      ErrorLogEntry = FigCFDictionarySetCMTime();
      v24 = v82;
      if (ErrorLogEntry)
      {
        goto LABEL_93;
      }

      v81 = 0;
      v14 = v86;
      v86 = v86 + seconds;
    }

    else
    {
      v24 = v82;
      if (v82 == v75)
      {
        if (v86 >= a5)
        {
          v71 = "chapter start time is at or after the end of presentation";
          goto LABEL_88;
        }

        CMTimeMakeWithSeconds(&v84, a5 - v86, 100000);
        ErrorLogEntry = FigCFDictionarySetCMTime();
      }

      else
      {
        ErrorLogEntry = 0;
        v81 = 1;
      }

      v14 = v86;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"metadata");
    if (Value)
    {
      v26 = Value;
      v27 = CFGetTypeID(Value);
      if (v27 != CFArrayGetTypeID())
      {
        v72 = "metadata is not an array";
        goto LABEL_91;
      }

      v28 = CFArrayGetCount(v26);
      if (v28 >= 1)
      {
        v29 = v28;
        v30 = 0;
        while (1)
        {
          v31 = CFArrayGetValueAtIndex(v26, v30);
          v32 = CFGetTypeID(v31);
          if (v32 != CFDictionaryGetTypeID())
          {
            v72 = "metadata-list array element is not a dictionary";
            goto LABEL_91;
          }

          v33 = CFDictionaryGetValue(v31, @"key");
          v34 = CFGetTypeID(v33);
          if (v34 != CFStringGetTypeID())
          {
            v72 = "metadata-list key is not a string";
            goto LABEL_91;
          }

          v35 = CFDictionaryGetValue(v31, @"value");
          if (!v35)
          {
            v72 = "metadata list entry does not have a value";
            goto LABEL_91;
          }

          v36 = v35;
          v37 = CFDictionaryGetValue(v31, @"language");
          v38 = v37;
          if (v37)
          {
            v39 = CFGetTypeID(v37);
            if (v39 != CFStringGetTypeID())
            {
              v72 = "metadata-list language is not a string";
              goto LABEL_91;
            }
          }

          v40 = createMetadataItem(v33, v36, v38, @"mdta", &v87);
          v41 = v87;
          if (v40)
          {
            break;
          }

          v40 = sdpp_AddMetadataItemToChapterDictionary(v18, v87);
          if (v40)
          {
            break;
          }

          if (v41)
          {
            CFRelease(v41);
            v87 = 0;
          }

          if (v29 == ++v30)
          {
            ErrorLogEntry = 0;
            a3 = v76;
            v24 = v82;
            goto LABEL_39;
          }
        }

        ErrorLogEntry = v40;
        v12 = v79;
        if (v41)
        {
          CFRelease(v41);
        }

        goto LABEL_93;
      }
    }

LABEL_39:
    v42 = CFDictionaryGetValue(ValueAtIndex, @"titles");
    if (v42)
    {
      v43 = v42;
      v44 = CFGetTypeID(v42);
      if (v44 != CFArrayGetTypeID())
      {
        v72 = "titles is not an array";
        goto LABEL_91;
      }

      v45 = CFArrayGetCount(v43);
      if (v45 >= 1)
      {
        break;
      }
    }

LABEL_54:
    v58 = CFDictionaryGetValue(ValueAtIndex, @"images");
    if (v58)
    {
      v59 = v58;
      v60 = CFGetTypeID(v58);
      v12 = v79;
      if (v60 != CFArrayGetTypeID())
      {
        v71 = "images is not an array";
        goto LABEL_88;
      }

      v61 = CFArrayGetCount(v59);
      if (v61 >= 1)
      {
        v62 = v61;
        v63 = 0;
        while (1)
        {
          v64 = CFArrayGetValueAtIndex(v59, v63);
          if (!v64 || (v65 = v64, v66 = CFGetTypeID(v64), v66 != CFDictionaryGetTypeID()))
          {
            v71 = "images entry is not a dictionary";
            goto LABEL_88;
          }

          v67 = CFDictionaryGetValue(v65, @"image-category");
          if (!v67)
          {
            v71 = "Missing image-category in images entry";
            goto LABEL_88;
          }

          v68 = v67;
          v69 = CFGetTypeID(v67);
          if (v69 != CFStringGetTypeID())
          {
            break;
          }

          v22 = createChapterMetadataArtworkItem(a1, v68, v65, a3, &v89);
          if (v22)
          {
            goto LABEL_89;
          }

          v70 = v89;
          v22 = sdpp_AddMetadataItemToChapterDictionary(v18, v89);
          if (v22)
          {
            goto LABEL_89;
          }

          if (v70)
          {
            CFRelease(v70);
            v89 = 0;
          }

          if (v62 == ++v63)
          {
            ErrorLogEntry = 0;
            v24 = v82;
            goto LABEL_69;
          }
        }

        v71 = "image-category is not a string";
        goto LABEL_88;
      }
    }

    else
    {
      v12 = v79;
    }

LABEL_69:
    v13 = v24 + 1;
    v8 = v78;
    if (v13 == v77)
    {
      goto LABEL_72;
    }
  }

  v46 = v45;
  v47 = 0;
  while (1)
  {
    v48 = CFArrayGetValueAtIndex(v43, v47);
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v48))
    {
      v72 = "titles entry is not a dictionary";
      goto LABEL_91;
    }

    v50 = CFDictionaryGetValue(v48, @"language");
    if (!v50)
    {
      v72 = "Missing language in titles entry";
      goto LABEL_91;
    }

    v51 = v50;
    v52 = CFGetTypeID(v50);
    if (v52 != CFStringGetTypeID())
    {
      v72 = "title entry language is not a string";
      goto LABEL_91;
    }

    v53 = CFDictionaryGetValue(v48, @"title");
    if (!v53)
    {
      v72 = "Missing title value in titles entry";
      goto LABEL_91;
    }

    v54 = v53;
    v55 = CFGetTypeID(v53);
    if (v55 != CFStringGetTypeID())
    {
      break;
    }

    v56 = createMetadataItem(@"title", v54, v51, @"comn", &v88);
    if (v56)
    {
      goto LABEL_92;
    }

    v57 = v88;
    v56 = sdpp_AddMetadataItemToChapterDictionary(v18, v88);
    if (v56)
    {
      goto LABEL_92;
    }

    if (v57)
    {
      CFRelease(v57);
      v88 = 0;
    }

    if (v46 == ++v47)
    {
      ErrorLogEntry = 0;
      a3 = v76;
      v24 = v82;
      goto LABEL_54;
    }
  }

  v72 = "title value is not a string";
LABEL_91:
  v56 = createErrorLogEntry(a1, v72);
LABEL_92:
  ErrorLogEntry = v56;
  v12 = v79;
LABEL_93:
  if (v88)
  {
    CFRelease(v88);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return ErrorLogEntry;
}

uint64_t createMetadataItem(void *value, const void *a2, const void *a3, const void *a4, CFMutableDictionaryRef *a5)
{
  Mutable = *a5;
  if (*a5 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*a5 = Mutable) != 0))
  {
    CFDictionaryAddValue(Mutable, @"key", value);
    CFDictionaryAddValue(*a5, @"keyspace", a4);
    if (a3)
    {
      CFDictionaryAddValue(*a5, @"extendedLanguageTag", a3);
    }

    if (a2)
    {
      CFDictionaryAddValue(*a5, @"value", a2);
    }

    return 0;
  }

  else
  {
    createMetadataItem_cold_1(&v12);
    return v12;
  }
}

uint64_t createChapterMetadataArtworkItem(uint64_t a1, const void *a2, const __CFDictionary *a3, const void *a4, __CFDictionary **a5)
{
  v28 = 0;
  v10 = createMetadataItem(@"artwork", 0, 0, @"comn", &v28);
  v11 = v28;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v28 == 0;
  }

  if (v12)
  {
    ErrorLogEntry = v10;
    v17 = v28;
    if (!v28)
    {
      return ErrorLogEntry;
    }

    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(a3, @"url");
  if (!Value)
  {
    v26 = "missing chapter artwork url";
LABEL_23:
    ErrorLogEntry = createErrorLogEntry(a1, v26);
LABEL_25:
    v17 = v11;
    goto LABEL_17;
  }

  v14 = Value;
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v14))
  {
    v26 = "Chapter artwork URL is not a string";
    goto LABEL_23;
  }

  CFDictionaryAddValue(v11, @"URL", v14);
  if (a4)
  {
    CFDictionaryAddValue(v11, @"baseURL", a4);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    createChapterMetadataArtworkItem_cold_1(&v29);
    ErrorLogEntry = v29;
    goto LABEL_25;
  }

  v17 = Mutable;
  CFDictionaryAddValue(Mutable, @"resolutionKey", a2);
  v18 = CFDictionaryGetValue(a3, @"pixel-height");
  if (v18)
  {
    v19 = v18;
    v20 = CFNumberGetTypeID();
    if (v20 != CFGetTypeID(v19))
    {
      v27 = "image height is not a number";
      goto LABEL_28;
    }

    CFDictionaryAddValue(v17, @"pixelHeight", v19);
  }

  v21 = CFDictionaryGetValue(a3, @"pixel-width");
  if (v21)
  {
    v22 = v21;
    v23 = CFNumberGetTypeID();
    if (v23 == CFGetTypeID(v22))
    {
      CFDictionaryAddValue(v17, @"pixelWidth", v22);
      goto LABEL_16;
    }

    v27 = "image width is not a number";
LABEL_28:
    ErrorLogEntry = createErrorLogEntry(a1, v27);
    CFRelease(v11);
    goto LABEL_17;
  }

LABEL_16:
  CFDictionaryAddValue(v11, @"iTunesImageResolution", v17);
  ErrorLogEntry = 0;
  *a5 = v11;
LABEL_17:
  CFRelease(v17);
  return ErrorLogEntry;
}

uint64_t FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntry(const void *a1, const void *a2, const __CFURL *a3, uint64_t a4, __CFArray **a5, void *a6, double a7)
{
  if (_os_feature_enabled_impl())
  {

    return FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryRemote(a7);
  }

  else
  {

    return FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryInProcess(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t FigHLSSessionDataCopyMetadataEntryInProcess(void *a1, const void *a2, const void *a3, CFURLRef url, CFMutableDictionaryRef *a5)
{
  theDict = 0;
  if (url)
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], url);
    if (!PathComponent)
    {
      FigHLSSessionDataCopyMetadataEntryInProcess_cold_1(&v16);
      return v16;
    }

    v10 = PathComponent;
    v11 = CFURLGetString(PathComponent);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = createMetadataItem(a1, a2, a3, @"mdta", &theDict);
  if (v12)
  {
    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  else
  {
    v13 = theDict;
    if (v11)
    {
      CFDictionarySetValue(theDict, @"baseURL", v11);
    }

    *a5 = v13;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

uint64_t FigHLSSessionDataCopyMetadataEntry(void *a1, const void *a2, const void *a3, const __CFURL *a4, CFMutableDictionaryRef *a5)
{
  if (_os_feature_enabled_impl())
  {

    return FigHLSSessionDataCopyMetadataEntryRemote();
  }

  else
  {

    return FigHLSSessionDataCopyMetadataEntryInProcess(a1, a2, a3, a4, a5);
  }
}

uint64_t sdpp_AddMetadataItemToChapterDictionary(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, @"ChapterMetadataItems");
  if (Value)
  {
    CFArrayAppendValue(Value, a2);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      sdpp_AddMetadataItemToChapterDictionary_cold_1(&v8);
      return v8;
    }

    v6 = Mutable;
    CFDictionarySetValue(a1, @"ChapterMetadataItems", Mutable);
    CFArrayAppendValue(v6, a2);
    CFRelease(v6);
  }

  return 0;
}

CFDictionaryRef OUTLINED_FUNCTION_1_120@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CMTime *time, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeCopyAsDictionary(&time, v18);
}

uint64_t FigNeroidGetClassID()
{
  if (FigNeroidGetClassID_sRegisterFigNeroidTypeOnce != -1)
  {
    FigNeroidGetClassID_cold_1();
  }

  return FigNeroidGetClassID_sFigNeroidClassID;
}

uint64_t __FigNeroidGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigNeroidGetTypeID()
{
  if (FigNeroidGetClassID_sRegisterFigNeroidTypeOnce != -1)
  {
    FigNeroidGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigDCP_TruncateFile(uint64_t a1, off_t a2)
{
  DarwinFileDesc = FigFileGetDarwinFileDesc();
  result = ftruncate(DarwinFileDesc, a2);
  if (result)
  {
    fig_log_get_emitter();
    __error();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigLimitedDiskCacheProviderCreate(uint64_t a1, const void *a2, const void *a3, int a4, void *a5)
{
  if (!a2)
  {
    FigLimitedDiskCacheProviderCreate_cold_2(&v16);
    return v16;
  }

  if (!a5)
  {
    FigLimitedDiskCacheProviderCreate_cold_1(&v16);
    return v16;
  }

  *a5 = 0;
  FigDiskCacheProviderGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    return v9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[7] = 0x100000;
  *DerivedStorage = CFRetain(a2);
  if (!a3)
  {
    v13 = 0;
    v14 = 2;
    goto LABEL_8;
  }

  v11 = CFRetain(a3);
  DerivedStorage[2] = v11;
  if (v11)
  {
    v12 = CFURLGetString(v11);
    v13 = CFRetain(v12);
    v14 = 1;
LABEL_8:
    DerivedStorage[v14] = v13;
  }

  DerivedStorage[9] = 0x200000000002;
  if (!a4)
  {
    FigDCP_InitializeDiskCache();
  }

  v9 = 0;
  *a5 = 0;
  return v9;
}

uint64_t FigLimitedDiskCacheProvider_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    return 0;
  }

  v2 = DerivedStorage;
  *(DerivedStorage + 88) = 1;
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  if (*(DerivedStorage + 91))
  {
    FigFileForkClose();
    *(v2 + 40) = 0;
    FigFileDeleteFile();
    v4 = *v2;
    v3 = *(v2 + 8);

    return FigShared_DeleteFromDiskCache(v3, v4);
  }

  else
  {
    v5 = FigShared_CheckIntoDiskCache(*(DerivedStorage + 8));
    FigFileForkClose();
    *(v2 + 40) = 0;
    return v5;
  }
}

void FigLimitedDiskCacheProvider_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *FigLimitedDiskCacheProvider_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    v2 = "No";
  }

  else
  {
    v2 = "Yes";
  }

  CFStringAppendFormat(Mutable, 0, @"FigLimitedDiskCacheProvider <%p>\n\tValid: <%s>\n\tcacheFileKey: <%@>\n\tcacheFolder: <%@>\n\tcacheFileURL: <%@>", DerivedStorage, v2, *DerivedStorage, *(DerivedStorage + 8), *(DerivedStorage + 32));
  return Mutable;
}

uint64_t FigLimitedDiskCacheProvider_CopyProperty(const void *a1, const void *a2, uint64_t a3, __CFData **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigLimitedDiskCacheProvider_CopyProperty_cold_2(&v19);
    return v19;
  }

  if (!a4)
  {
    FigLimitedDiskCacheProvider_CopyProperty_cold_1(&v19);
    return v19;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, @"CacheIdentifier"))
  {
    CFGetAllocator(a1);
    FigDCP_InitializeDiskCache();
    v17 = *(v8 + 64);
    if (v17)
    {
      v15 = CFRetain(v17);
      goto LABEL_11;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"CacheBlockSize"))
  {
    v10 = *(v8 + 80);
    v9 = (v8 + 80);
    if (!v10)
    {
      return 4294954513;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"CacheMapEntrySize"))
  {
    v11 = *(v8 + 84);
    v9 = (v8 + 84);
    if (v11)
    {
LABEL_9:
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberSInt32Type;
      v14 = v9;
LABEL_10:
      v15 = CFNumberCreate(v12, v13, v14);
LABEL_11:
      v16 = 0;
      *a4 = v15;
      return v16;
    }

    return 4294954513;
  }

  if (!CFEqual(a2, @"CacheMap"))
  {
    if (!CFEqual(a2, @"CacheSize"))
    {
      return 4294954512;
    }

    v19 = 0;
    if (!FigDCP_GetCacheSizeLimit(v8, &v19))
    {
      v12 = *MEMORY[0x1E695E480];
      v14 = &v19;
      v13 = kCFNumberSInt64Type;
      goto LABEL_10;
    }

    return 4294954513;
  }

  CFGetAllocator(a1);
  v16 = 4294954513;
  if (!FigDCP_InitializeDiskCache())
  {
    if (FigDCP_CopyAtomDataFromCacheFile(*(v8 + 48), 0, 1937011572, a4))
    {
      return 4294954513;
    }

    else
    {
      return 0;
    }
  }

  return v16;
}

uint64_t FigDCP_NewDiskCacheFile(const __CFURL *a1, uint64_t a2, CFURLRef *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    __strlcat_chk();
    v4 = mkstemp(buffer);
    v5 = __error();
    if (v4 == -1)
    {
      FigDCP_NewDiskCacheFile_cold_2(v5, &v9);
    }

    else
    {
      close(v4);
      v6 = strlen(buffer);
      v7 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], buffer, v6, 0);
      *a3 = v7;
      if (v7)
      {
        return FigFileForkOpenMainByCFURL();
      }

      FigDCP_NewDiskCacheFile_cold_1(&v9);
    }

    return v9;
  }

  else
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }
}

uint64_t OUTLINED_FUNCTION_4_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;

  return FigDCP_FindAtomData(a1, a2, 1986359930, &a12, &a11);
}

uint64_t FigVTTStyleGetStyleName(uint64_t a1)
{
  if (a1)
  {
    return *(CMBaseObjectGetDerivedStorage() + 16);
  }

  FigVTTStyleGetStyleName_cold_1();
  return 0;
}

uint64_t FigVTTStyleCreate(uint64_t a1, const void *a2, void *a3)
{
  if (a3)
  {
    FigVTTNodeGetClassID();
    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (v7)
      {
        return v7;
      }

      else
      {
        if (a2)
        {
          v8 = CFRetain(a2);
        }

        else
        {
          v8 = 0;
        }

        v5 = 0;
        *(DerivedStorage + 16) = v8;
        *a3 = 0;
      }
    }
  }

  else
  {
    FigVTTStyleCreate_cold_1(&v10);
    return v10;
  }

  return v5;
}

void figVTTStyle_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTStyle_CopyDebugDesc()
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

uint64_t figVTTStyle_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 6;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTStyle_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTStyle_copyNodeDocumentSerialization(const void *a1, CFStringRef *a2)
{
  theDict = 0;
  if (!a2)
  {
    figVTTStyle_copyNodeDocumentSerialization_cold_4(&v15);
    return v15;
  }

  *a2 = 0;
  MEMORY[0x19A8D3660](&getCaptionVTTAttributeToCSSPropertyMapping_once, initCaptionVTTAttributeToCSSPropertyMapping);
  v4 = sCaptionVTTAttributeToCSSPropertyMapping;
  if (!sCaptionVTTAttributeToCSSPropertyMapping)
  {
    figVTTStyle_copyNodeDocumentSerialization_cold_3(&v15);
    v8 = 0;
    goto LABEL_18;
  }

  v5 = FigVTTNodeCopyAttributes(a1, &theDict);
  if (v5)
  {
    v9 = v5;
    v8 = 0;
    goto LABEL_8;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v6, 0);
  v8 = Mutable;
  if (!Mutable)
  {
    figVTTStyle_copyNodeDocumentSerialization_cold_2(&v15);
    goto LABEL_18;
  }

  context[1] = Mutable;
  v13 = 0;
  context[0] = v4;
  CFDictionaryApplyFunction(theDict, serializeOneAttributeToCSSProperty, context);
  v9 = v13;
  if (!v13)
  {
    StyleName = FigVTTStyleGetStyleName(a1);
    if (StyleName)
    {
      v9 = 0;
      *a2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @".%@ {\n%@}", StyleName, v8);
      goto LABEL_8;
    }

    figVTTStyle_copyNodeDocumentSerialization_cold_1(&v15);
LABEL_18:
    v9 = v15;
  }

LABEL_8:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void initCaptionVTTAttributeToCSSPropertyMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ background-color", FigVTTDocumentWriterMapAttributeToCSS_BackgroundColor);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ writing-mode", FigVTTDocumentWriterMapAttributeToCSS_WritingMode);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ color", FigVTTDocumentWriterMapAttributeToCSS_TextColor);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-weight", FigVTTDocumentWriterMapAttributeToCSS_FontWeight);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-style", FigVTTDocumentWriterMapAttributeToCSS_FontStyle);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ text-decoration", FigVTTDocumentWriterMapAttributeToCSS_Decoration);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ text-align", FigVTTDocumentWriterMapAttributeToCSS_TextAlign);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-family", FigVTTDocumentWriterMapAttributeToCSS_FontFamily);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-size", FigVTTDocumentWriterMapAttributeToCSS_FontSize);
  sCaptionVTTAttributeToCSSPropertyMapping = Mutable;
}

uint64_t FigFullDownloadDiskCacheProviderCreate(uint64_t a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v21 = 0;
  cf = 0;
  v20 = 0;
  MEMORY[0x19A8D3660](&FigFullDownloadDiskCacheProviderCreate_sCreateBusyCacheFileMappingOnce, FigDCP_SetupBusyCacheFileMapping);
  if (!_MergedGlobals_86)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_6(&v23);
LABEL_58:
    v9 = v23;
    goto LABEL_40;
  }

  if (!gFigFDCPBusyCacheFileToCacheIDDict)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_5(&v23);
    goto LABEL_58;
  }

  if (!qword_1ED4CAFB8)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_4(&v23);
    goto LABEL_58;
  }

  if (!a2)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_3(&v23);
    goto LABEL_58;
  }

  if (!a3)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_2(&v23);
    goto LABEL_58;
  }

  if (!a4)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_1(&v23);
    goto LABEL_58;
  }

  FigDiskCacheProviderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v9 = v7;
    goto LABEL_40;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  *(DerivedStorage + 8) = CFRetain(a3);
  if (FigFileDoesFileExist() && FigFileForkOpenMainByCFURL())
  {
    v9 = 4294954754;
  }

  else
  {
    v10 = (DerivedStorage + 24);
    if (*(DerivedStorage + 24))
    {
      DarwinFileDesc = FigFileGetDarwinFileDesc();
      if (fgetxattr(DarwinFileDesc, "com.apple.coremedia.cachemap.offset", 0, 0, 0, 0) == -1)
      {
        if (!FigDCP_IsFileEmpty(*v10, 0))
        {
          v9 = 4294954756;
          goto LABEL_40;
        }
      }

      else
      {
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(_MergedGlobals_86, *(DerivedStorage + 8));
        v13 = *MEMORY[0x1E695E738];
        if (Value == *MEMORY[0x1E695E738])
        {
          Value = 0;
        }

        *(DerivedStorage + 32) = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        v14 = CFDictionaryGetValue(gFigFDCPBusyCacheFileToCacheIDDict, *(DerivedStorage + 8));
        if (v14 == v13)
        {
          v14 = 0;
        }

        *(DerivedStorage + 40) = v14;
        v15 = (DerivedStorage + 40);
        if (v14)
        {
          CFRetain(v14);
        }

        FigSimpleMutexUnlock();
        if (*(DerivedStorage + 32))
        {
          *(DerivedStorage + 50) = 1;
        }

        else if (FigByteStreamCreateFromOpenFile() || *v10 && (v16 = FigFileGetDarwinFileDesc(), fgetxattr(v16, "com.apple.coremedia.cachemap.offset", &v20, 8uLL, 0, 0) == -1) && (fig_log_get_emitter(), __error(), FigSignalErrorAtGM()) || FigDCP_CheckCacheFileVersion(v21, v20) || FigDCP_CopyIDFromCacheFile(v21, v20, (DerivedStorage + 40)) || FigDCP_CopyAtomDataFromCacheFile(v21, v20, 1937011572, (DerivedStorage + 32)))
        {
          if (*v15)
          {
            CFRelease(*v15);
            *v15 = 0;
          }
        }
      }
    }

    if (*(DerivedStorage + 40))
    {
      goto LABEL_30;
    }

    if (*v10)
    {
      FigFileForkClose();
      *v10 = 0;
    }

    v17 = FigFileForkOpenMainByCFURL();
    if (!v17)
    {
LABEL_30:
      v9 = 0;
      *a4 = cf;
      goto LABEL_42;
    }

    if (v17 == 69 || v17 == 28)
    {
      v9 = 4294954755;
    }

    else
    {
      v9 = 4294954756;
    }
  }

LABEL_40:
  if (!cf)
  {
    goto LABEL_43;
  }

  CFRelease(cf);
LABEL_42:
  cf = 0;
LABEL_43:
  if (v21)
  {
    CFRelease(v21);
  }

  return v9;
}

uint64_t FigDCP_SetupBusyCacheFileMapping()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  _MergedGlobals_86 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gFigFDCPBusyCacheFileToCacheIDDict = CFDictionaryCreateMutable(v0, 0, v1, v2);
  result = FigSimpleMutexCreate();
  qword_1ED4CAFB8 = result;
  return result;
}

uint64_t FigFullDownloadDiskCacheProvider_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 48))
  {
    *(DerivedStorage + 48) = 1;
  }

  return 0;
}

void FigFullDownloadDiskCacheProvider_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  if (*(DerivedStorage + 24))
  {
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(_MergedGlobals_86, *(DerivedStorage + 8)))
    {
      FigSimpleMutexUnlock();
      FigFileForkClose();
      *(DerivedStorage + 24) = 0;
    }

    else
    {
      v4 = *MEMORY[0x1E695E738];
      if (*(DerivedStorage + 32))
      {
        v5 = *(DerivedStorage + 32);
      }

      else
      {
        v5 = *MEMORY[0x1E695E738];
      }

      CFDictionaryAddValue(_MergedGlobals_86, *(DerivedStorage + 8), v5);
      if (*(DerivedStorage + 40))
      {
        v6 = *(DerivedStorage + 40);
      }

      else
      {
        v6 = v4;
      }

      CFDictionaryAddValue(gFigFDCPBusyCacheFileToCacheIDDict, *(DerivedStorage + 8), v6);
      FigSimpleMutexUnlock();
      FigFileForkClose();
      *(DerivedStorage + 24) = 0;
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(_MergedGlobals_86, *(DerivedStorage + 8));
      CFDictionaryRemoveValue(gFigFDCPBusyCacheFileToCacheIDDict, *(DerivedStorage + 8));
      FigSimpleMutexUnlock();
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 8) = 0;
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 40) = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }
}

__CFString *FigFullDownloadDiskCacheProvider_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = "No";
  if (*(DerivedStorage + 48))
  {
    v3 = "No";
  }

  else
  {
    v3 = "Yes";
  }

  if (*(DerivedStorage + 49))
  {
    v2 = "Yes";
  }

  CFStringAppendFormat(Mutable, 0, @"FigFullDownloadDiskCacheProvider <%p>\n\tValid: <%s>\n\tsourceURL: <%@>\n\tcacheFileURL: <%@>\n\tcacheFileSize: <%lld>\n\tcacheComplete: <%s>", DerivedStorage, v3, *DerivedStorage, *(DerivedStorage + 16), v2);
  return Mutable;
}

uint64_t FigFullDownloadDiskCacheProvider_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"CacheIdentifier"))
      {
        v8 = *(v7 + 40);
        if (v8)
        {
LABEL_5:
          v9 = CFRetain(v8);
LABEL_8:
          v10 = v9;
          result = 0;
          *a4 = v10;
          return result;
        }
      }

      else
      {
        if (CFEqual(a2, @"CacheSize"))
        {
          v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v7 + 16));
          goto LABEL_8;
        }

        if (!CFEqual(a2, @"CacheMap"))
        {
          if (CFEqual(a2, @"CacheIsComplete"))
          {
            v12 = MEMORY[0x1E695E4D0];
            v13 = *(v7 + 49);
          }

          else
          {
            if (!CFEqual(a2, @"CacheIsBusy"))
            {
              return 4294954512;
            }

            v12 = MEMORY[0x1E695E4D0];
            v13 = *(v7 + 50);
          }

          if (!v13)
          {
            v12 = MEMORY[0x1E695E4C0];
          }

          v8 = *v12;
          goto LABEL_5;
        }

        v8 = *(v7 + 32);
        if (v8)
        {
          goto LABEL_5;
        }
      }

      return 4294954513;
    }

    else
    {
      FigFullDownloadDiskCacheProvider_CopyProperty_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    FigFullDownloadDiskCacheProvider_CopyProperty_cold_2(&v15);
    return v15;
  }
}

uint64_t FigFullDownloadDiskCacheProvider_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigFullDownloadDiskCacheProvider_SetProperty_cold_3(&v13);
    return v13;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    FigFullDownloadDiskCacheProvider_SetProperty_cold_1(&v12);
    return v12;
  }

  if (CFEqual(a2, @"CacheIdentifier"))
  {
    v7 = *(v6 + 40);
    *(v6 + 40) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (!v7)
    {
      return 0;
    }

LABEL_7:
    CFRelease(v7);
    return 0;
  }

  if (CFEqual(a2, @"CacheSize"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFNumberGetTypeID())
      {
        FigFullDownloadDiskCacheProvider_SetProperty_cold_2(v6, a3);
        return 0;
      }
    }

    goto LABEL_13;
  }

  if (!CFEqual(a2, @"CacheMap"))
  {
    if (!CFEqual(a2, @"CacheIsComplete"))
    {
      return 4294954512;
    }

    if (a3)
    {
      v11 = CFEqual(a3, *MEMORY[0x1E695E4D0]);
      result = 0;
      *(v6 + 49) = v11;
      return result;
    }

    goto LABEL_13;
  }

  if (!a3)
  {

    return FigDCP_RemoveCacheMap(v6, 0);
  }

  v10 = CFGetTypeID(a3);
  if (v10 != CFDataGetTypeID())
  {
LABEL_13:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (*(v6 + 48))
  {
    return 0;
  }

  result = FigDCP_WriteOutCacheFile(v6, a3);
  if (!result)
  {
    v7 = *(v6 + 32);
    *(v6 + 32) = a3;
    CFRetain(a3);
    if (!v7)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t FigDCP_WriteOutCacheFile(uint64_t a1, const __CFData *a2)
{
  cf = 0;
  v38 = 0x1000000;
  err = 0;
  v37 = 0;
  if (!*(a1 + 49))
  {
    v39 = 0;
    FigDCP_IsFileEmpty(*(a1 + 24), &v37);
    v4 = v37;
    v5 = *MEMORY[0x1E695E480];
    v6 = FigByteStreamCreateFromOpenFile();
    if (v6)
    {
      Code = v6;
      goto LABEL_29;
    }

    v7 = CFPropertyListCreateData(v5, *(a1 + 40), kCFPropertyListXMLFormat_v1_0, 0, &err);
    if (err)
    {
      v8 = CFErrorCopyFailureReason(err);
      Code = CFErrorGetCode(err);
      if (v8)
      {
        CFRelease(v8);
      }

      if (!v7)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (!v7)
    {
      FigDCP_WriteOutCacheFile_cold_1(&value);
      Code = value;
      goto LABEL_29;
    }

    HIDWORD(v39) = 1684632691;
    LODWORD(v39) = bswap32(CFDataGetLength(v7) + 8);
    v12 = cf;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v13)
    {
      goto LABEL_27;
    }

    v14 = v13(v12, 8, v4, &v39, 0);
    if (!v14)
    {
      v15 = cf;
      Length = CFDataGetLength(v7);
      BytePtr = CFDataGetBytePtr(v7);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v18)
      {
        goto LABEL_27;
      }

      v19 = v4 + 8;
      v14 = v18(v15, Length, v19, BytePtr, 0);
      if (!v14)
      {
        v20 = CFDataGetLength(v7);
        HIDWORD(v39) = 1953723507;
        LODWORD(v39) = bswap32(CFDataGetLength(a2) + 8);
        v21 = cf;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v22)
        {
          goto LABEL_27;
        }

        v23 = v20 + v19;
        v14 = v22(v21, 8, v23, &v39, 0);
        if (!v14)
        {
          v24 = cf;
          v25 = CFDataGetLength(a2);
          v26 = CFDataGetBytePtr(a2);
          v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v27)
          {
            goto LABEL_27;
          }

          v28 = v23 + 8;
          v14 = v27(v24, v25, v28, v26, 0);
          if (!v14)
          {
            v29 = CFDataGetLength(a2);
            v39 = 0x7A7265760C000000;
            v30 = cf;
            v31 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v31)
            {
              goto LABEL_27;
            }

            v32 = v29 + v28;
            v14 = v31(v30, 8, v32, &v39, 0);
            if (!v14)
            {
              v33 = cf;
              v34 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v34)
              {
                v14 = v34(v33, 4, v32 + 8, &v38, 0);
                if (!v14)
                {
                  value = v37;
                  if (*(a1 + 24) && (DarwinFileDesc = FigFileGetDarwinFileDesc(), fsetxattr(DarwinFileDesc, "com.apple.coremedia.cachemap.offset", &value, 8uLL, 0, 0) == -1))
                  {
                    fig_log_get_emitter();
                    __error();
                    Code = FigSignalErrorAtGM();
                  }

                  else
                  {
                    Code = 0;
                  }

                  FigFileForkTruncate();
                  goto LABEL_28;
                }

                goto LABEL_38;
              }

LABEL_27:
              Code = 4294954514;
LABEL_28:
              CFRelease(v7);
LABEL_29:
              if (cf)
              {
                CFRelease(cf);
              }

              if (err)
              {
                CFRelease(err);
              }

              return Code;
            }
          }
        }
      }
    }

LABEL_38:
    Code = v14;
    goto LABEL_28;
  }

  v10 = *(a1 + 16);

  return FigDCP_RemoveCacheMap(a1, v10);
}

uint64_t FigFullDownloadDiskCacheProvider_GetBacking(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    FigFullDownloadDiskCacheProvider_GetBacking_cold_1();
    return 0;
  }

  if (!(a4 | a5))
  {
    FigFullDownloadDiskCacheProvider_GetBacking_cold_2();
    return 0;
  }

  v9 = DerivedStorage;
  if (*(DerivedStorage + 50))
  {
    FigSimpleMutexLock();
    if (!CFDictionaryContainsKey(_MergedGlobals_86, *(v9 + 8)))
    {
      *(v9 + 50) = 0;
    }

    FigSimpleMutexUnlock();
    if (*(v9 + 50))
    {
      if (a4)
      {
        *a4 = *(v9 + 24);
      }

      if (a5)
      {
        result = 0;
        *a5 = -1;
        return result;
      }

      return 0;
    }
  }

  if (a4)
  {
    *a4 = *(v9 + 24);
  }

  if (a5)
  {
    *a5 = a3;
  }

  return 1;
}

uint64_t FigByteStreamFactorySetCachedFileByteStreamEnable(char a1)
{
  gUseCachedFileByteStream = a1;
  result = FigGetCFPreferenceBooleanWithDefault();
  gUseCachedFileByteStream = result;
  return result;
}

uint64_t FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync(const __CFURL *a1, __int16 a2, const __CFDictionary *a3, void (*a4)(uint64_t, CFMutableDictionaryRef, void, void, void, void), uint64_t a5)
{
  v10 = CFURLCopyScheme(a1);
  if (!FigCFURLIsLocalResource())
  {
    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    if (!v14)
    {
      FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_9(&v98);
      v40 = v98;
      if (!v10)
      {
        return v40;
      }

      goto LABEL_36;
    }

    v15 = v14;
    *v14 = a4;
    v14[1] = a5;
    v86 = FigCFHTTPIsHTTPBasedURL(a1);
    LOBYTE(v99) = 0;
    v98 = 0;
    if (a3)
    {
      v85 = v15;
      v16 = CFURLGetTypeID();
      ValueOfType = FigCFDictionaryGetValueOfType(a3, @"factoryOption_NetworkCacheURL", v16);
      v17 = CFURLGetTypeID();
      v18 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_DownloadDestinationURL", v17);
      TypeID = CFDictionaryGetTypeID();
      v95 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_HTTPHeaders", TypeID);
      CFTypeID = FigCustomURLLoaderGetCFTypeID();
      cf = FigCFDictionaryGetValueOfType(a3, @"factoryOption_CustomURLLoader", CFTypeID);
      v21 = CFBooleanGetTypeID();
      v22 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_UseAWDL", v21);
      v23 = *MEMORY[0x1E695E4D0];
      v94 = v22 == *MEMORY[0x1E695E4D0];
      v24 = CFStringGetTypeID();
      FigCFDictionaryGetValueOfType(a3, @"factoryOption_Backing", v24);
      v25 = CFBooleanGetTypeID();
      v26 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_NoPersistentCache", v25) != v23;
      v27 = CFNumberGetTypeID();
      number = FigCFDictionaryGetValueOfType(a3, @"factoryOption_NonPurgeableMemoryLimit", v27);
      v28 = CFBooleanGetTypeID();
      v91 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_DisableNetworkLargeDownload", v28) == v23;
      v29 = CFBooleanGetTypeID();
      v90 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_DisableNetworkProbeRequest", v29) == v23;
      v30 = CFNumberGetTypeID();
      v89 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_MaxSizeAllowedForCellularAccess", v30);
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      v31 = CFDictionaryGetTypeID();
      v32 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_HTTPRequestOptions", v31);
      v33 = CFDictionaryGetTypeID();
      v34 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_AlternativeConfigurationOptions", v33);
      v35 = CFBooleanGetTypeID();
      BYTE4(v88) = FigCFDictionaryGetValueOfType(a3, @"factoryOption_RequiresCustomURLLoading", v35) == v23;
      v36 = CFBooleanGetTypeID();
      v92 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_DelayReadAheadUntilExplicitlyHinted", v36) != v23;
      v37 = CFBooleanGetTypeID();
      LOBYTE(v88) = FigCFDictionaryGetValueOfType(a3, @"factoryOption_AlwaysFollowRedirects", v37) == v23;
      v38 = CFBooleanGetTypeID();
      v87 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_EnableMultiPath", v38) == v23;
      Value = CFDictionaryGetValue(a3, @"factoryOption_StoreBagSessionConfiguration");
      v98 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      a3 = CFDictionaryGetValue(a3, @"factoryOption_ParentNetworkActivity");
      if (v98)
      {
LABEL_10:
        v15 = v85;
        if (!v18)
        {
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v32)
      {
        v45 = CFDictionaryGetValue(v32, @"FHRP_ClientAuditToken");
        v46 = FigCFHTTPCopyClientProcessName(v45);
        FigRCLCreateConfiguration(v46, @"kFigRemoteConfigurationLoaderStoreBagType_CRABS", 0, &v98);
        if (v46)
        {
          CFRelease(v46);
        }

        goto LABEL_10;
      }

      v15 = v85;
    }

    else
    {
      v94 = 0;
      v90 = 0;
      v91 = 0;
      number = 0;
      ValueOfType = 0;
      v18 = 0;
      v95 = 0;
      cf = 0;
      v88 = 0;
      v89 = 0;
      v34 = 0;
      v87 = 0;
      v26 = 1;
      v92 = 1;
    }

    FigRCLCreateConfiguration(0, @"kFigRemoteConfigurationLoaderStoreBagType_CRABS", 0, &v98);
    v32 = 0;
    if (!v18)
    {
      goto LABEL_43;
    }

LABEL_30:
    if (!v26 || FigCFEqual())
    {
      fig_log_get_emitter();
      v40 = FigSignalErrorAtGM();
      goto LABEL_33;
    }

    v26 = 1;
LABEL_43:
    v47 = malloc_type_calloc(1uLL, 0x98uLL, 0x10E0040B55CB63AuLL);
    if (!v47)
    {
      FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_8(&valuePtr);
      v40 = valuePtr;
      goto LABEL_33;
    }

    v48 = v47;
    *v47 = fbfs_createHHTPURLStreamCallback;
    v47[1] = v15;
    v49 = cf;
    if (cf)
    {
      v49 = CFRetain(cf);
    }

    *(v48 + 40) = v49;
    v50 = v95;
    if (v95)
    {
      v50 = CFRetain(v95);
    }

    *(v48 + 24) = v50;
    *(v48 + 93) = v94;
    *(v48 + 100) = v91;
    *(v48 + 101) = v90;
    v51 = v89;
    if (v89)
    {
      v51 = CFRetain(v89);
    }

    *(v48 + 104) = v51;
    *(v48 + 112) = 0;
    *(v48 + 113) = v99;
    if (v32)
    {
      v52 = CFRetain(v32);
    }

    else
    {
      v52 = 0;
    }

    *(v48 + 120) = v52;
    if (v34)
    {
      v53 = CFRetain(v34);
    }

    else
    {
      v53 = 0;
    }

    *(v48 + 80) = v53;
    *(v48 + 114) = BYTE4(v88);
    *(v48 + 115) = v88;
    *(v48 + 116) = v87;
    v54 = v98;
    if (v98)
    {
      v54 = CFRetain(v98);
    }

    *(v48 + 128) = v54;
    if (a3)
    {
      v55 = CFRetain(a3);
    }

    else
    {
      v55 = 0;
    }

    *(v48 + 136) = v55;
    if (v26 && (v18 || FigCFEqual()))
    {
      v56 = 1;
      v57 = v92;
    }

    else
    {
      if (FigCFEqual())
      {
        *(v48 + 72) |= 2u;
      }

      v57 = v92;
      if (v26)
      {
        if (!v92)
        {
          goto LABEL_93;
        }

        goto LABEL_69;
      }

      v56 = 4;
    }

    *(v48 + 72) |= v56;
    if (!v57)
    {
LABEL_93:
      *(v48 + 72) |= 8u;
      if ((a2 & 0x1000) != 0)
      {
LABEL_94:
        *(v48 + 72) |= 0x10u;
        if ((a2 & 8) != 0)
        {
LABEL_95:
          *(v48 + 88) |= 1u;
          if ((a2 & 0x20) == 0)
          {
LABEL_73:
            v58 = CFURLCopyAbsoluteURL(a1);
            if (!v58)
            {
              FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_7(&valuePtr);
              v40 = valuePtr;
LABEL_154:
              fbfs_FreeFigHTTPOpenCompletion(v48);
LABEL_33:
              v43 = v98;
              if (!v98)
              {
                if (!v40)
                {
                  goto LABEL_35;
                }

                goto LABEL_134;
              }

LABEL_133:
              CFRelease(v43);
              if (!v40)
              {
                goto LABEL_35;
              }

LABEL_134:
              free(v15);
              if (!v10)
              {
                return v40;
              }

              goto LABEL_36;
            }

            v59 = v58;
            *(v48 + 16) = CFRetain(v58);
            v60 = FigCFURLCreateCacheKey();
            if (!v60)
            {
              FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_6(&valuePtr);
              v40 = valuePtr;
LABEL_153:
              CFRelease(v59);
              goto LABEL_154;
            }

            v61 = v60;
            if ((a2 & 0x400) != 0)
            {
              GlobalNetworkBufferingLowPriorityQueue = FigThreadGetGlobalNetworkBufferingLowPriorityQueue();
              if (GlobalNetworkBufferingLowPriorityQueue)
              {
                *(v48 + 144) = FigHTTPSchedulerRetain(GlobalNetworkBufferingLowPriorityQueue);
              }
            }

            if (v18)
            {
              v40 = FigFullDownloadDiskCacheProviderCreate(*MEMORY[0x1E695E480], v59, v18, (v48 + 32));
              goto LABEL_80;
            }

            v68 = (*(v48 + 72) & 1) == 0 || FigCFHTTPIsDataURL(a1);
            v69 = *MEMORY[0x1E695E480];
            v70 = FigLimitedDiskCacheProviderCreate(*MEMORY[0x1E695E480], v61, ValueOfType, v68, (v48 + 32));
            v40 = v70;
            if ((v68 & 1) != 0 || v70)
            {
              if (!v68)
              {
                goto LABEL_80;
              }
            }

            else
            {
              valuePtr = 0;
              *keyExistsAndHasValidFormat = 0;
              FigBaseObject = FigDiskCacheProviderGetFigBaseObject(*(v48 + 32));
              v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v72 && !v72(FigBaseObject, @"CacheSize", v69, &valuePtr))
              {
                CFNumberGetValue(valuePtr, kCFNumberSInt64Type, keyExistsAndHasValidFormat);
              }

              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              if (*keyExistsAndHasValidFormat >= 0x2000000)
              {
                goto LABEL_81;
              }
            }

            *(v48 + 72) = *(v48 + 72) & 0xFFFFFFFC | 2;
            v73 = *(v48 + 32);
            if (v73)
            {
              v74 = FigDiskCacheProviderGetFigBaseObject(v73);
              v75 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v75)
              {
                v75(v74, @"NoPersistentCache", *MEMORY[0x1E695E4D0]);
              }
            }

LABEL_80:
            if (v40)
            {
LABEL_152:
              CFRelease(v61);
              goto LABEL_153;
            }

LABEL_81:
            v63 = *(v48 + 72);
            if (v63)
            {
              if (qword_1ED4CAFD0 != -1)
              {
                FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_3();
              }

              v67 = qword_1ED4CAFD8;
            }

            else
            {
              valuePtr = 0;
              keyExistsAndHasValidFormat[0] = 0;
              if ((v63 & 2) != 0)
              {
                v64 = v15;
                if (number)
                {
                  CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
                  v66 = 0;
                }

                else
                {
                  v66 = 1;
                }

                v65 = 0x2000000;
              }

              else
              {
                v64 = v15;
                if (qword_1ED4CAFE0 != -1)
                {
                  FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_4();
                }

                v65 = qword_1ED4CAFE8;
                v66 = 1;
              }

              AppIntegerValue = CFPreferencesGetAppIntegerValue(@"crabs_cache_max_mb", @"com.apple.coremedia", keyExistsAndHasValidFormat);
              if (keyExistsAndHasValidFormat[0])
              {
                v77 = AppIntegerValue << 20;
              }

              else
              {
                v77 = valuePtr;
              }

              if (keyExistsAndHasValidFormat[0])
              {
                v78 = 0;
              }

              else
              {
                v78 = v66;
              }

              if (v77 <= 0x100000)
              {
                v78 = 1;
              }

              if (v78)
              {
                v67 = v65;
              }

              else
              {
                v67 = v77;
              }

              v15 = v64;
            }

            if (v67 < 0)
            {
              FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_5(&valuePtr);
              v40 = valuePtr;
            }

            else
            {
              CacheMemoryAllocatorForCRABS = FigCreateCacheMemoryAllocatorForCRABS(v67, (v48 + 56));
              if (CacheMemoryAllocatorForCRABS)
              {
                v40 = CacheMemoryAllocatorForCRABS;
              }

              else
              {
                FlumeAsync = fbfs_CreateFlumeAsync(v48, v86);
                if (!FlumeAsync)
                {
                  CFRelease(v61);
                  CFRelease(v59);
                  v43 = v98;
                  if (!v98)
                  {
                    v40 = 0;
                    if (!v10)
                    {
                      return v40;
                    }

                    goto LABEL_36;
                  }

                  v40 = 0;
                  goto LABEL_133;
                }

                v40 = FlumeAsync;
                v82 = *(v48 + 56);
                if (v82)
                {
                  CFRelease(v82);
                  *(v48 + 56) = 0;
                }
              }
            }

            goto LABEL_152;
          }

LABEL_72:
          *(v48 + 88) |= 2u;
          goto LABEL_73;
        }

LABEL_71:
        if ((a2 & 0x20) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

LABEL_70:
      if ((a2 & 8) != 0)
      {
        goto LABEL_95;
      }

      goto LABEL_71;
    }

LABEL_69:
    if ((a2 & 0x1000) != 0)
    {
      goto LABEL_94;
    }

    goto LABEL_70;
  }

  v98 = 0;
  v11 = CFURLCopyAbsoluteURL(a1);
  v12 = v11;
  if (!v11)
  {
    FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_2(&valuePtr);
    v40 = valuePtr;
    goto LABEL_23;
  }

  if ((a2 & 0x802) != 0 || !gUseCachedFileByteStream)
  {
    FigGetDefaultManagedFilePool();
    ByteStreamForFile = FigManagedFilePoolCreateByteStreamForFile();
  }

  else
  {
    ByteStreamForFile = FigCachedFileByteStreamCreate(v11, 0, *MEMORY[0x1E695E480], &v98);
  }

  v40 = ByteStreamForFile;
  if (!ByteStreamForFile)
  {
    if (!a3 || (valuePtr = 0, *keyExistsAndHasValidFormat = 0, !CFDictionaryGetValue(a3, @"factoryOption_ByteRangeInFile")))
    {
LABEL_22:
      a4(a5, v98, 0, 0, 0, 0);
      v40 = 0;
      goto LABEL_23;
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      if (FigCFDictionaryGetInt64IfPresent())
      {
        v41 = CMByteStreamCreateCompositeForRead();
        if (!v41)
        {
          v42 = v98;
          v98 = valuePtr;
          if (v42)
          {
            CFRelease(v42);
          }

          goto LABEL_22;
        }

        v40 = v41;
        goto LABEL_23;
      }

      v81 = 2126;
    }

    else
    {
      v81 = 2125;
    }

    FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_1(v81, &v99);
    v40 = v99;
  }

LABEL_23:
  if (v98)
  {
    CFRelease(v98);
  }

  if (v12)
  {
    CFRelease(v12);
    if (!v10)
    {
      return v40;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (v10)
  {
LABEL_36:
    CFRelease(v10);
  }

  return v40;
}

uint64_t FigByteStreamFactoryCreateStreamFromURL(const __CFURL *a1, unsigned int a2, const void *a3, const void *a4, uint64_t a5, const void *a6, void *a7, void *a8, void *a9, void *a10)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v18 = Mutable;
    if (a3)
    {
      CFDictionaryAddValue(Mutable, @"factoryOption_NetworkCacheURL", a3);
    }

    if (a4)
    {
      CFDictionaryAddValue(v18, @"factoryOption_DownloadDestinationURL", a4);
    }

    if (a6)
    {
      CFDictionaryAddValue(v18, @"factoryOption_HTTPHeaders", a6);
    }

    StreamFromURLWithOptions = FigByteStreamFactoryCreateStreamFromURLWithOptions(a1, a2, v18, a7, a8, a9, 0, a10);
    CFRelease(v18);
    return StreamFromURLWithOptions;
  }

  else
  {
    FigByteStreamFactoryCreateStreamFromURL_cold_1(&v21);
    return v21;
  }
}

void fbfs_createHHTPURLStreamCallback(void *a1)
{
  (*a1)(a1[1]);

  free(a1);
}

uint64_t FigByteStreamFactoryCreateStreamFromURLAsync(const __CFURL *a1, __int16 a2, const void *a3, const void *a4, const void *a5, void (*a6)(uint64_t, CFMutableDictionaryRef, void, void, void, void), uint64_t a7)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v15 = Mutable;
    if (a3)
    {
      CFDictionaryAddValue(Mutable, @"factoryOption_NetworkCacheURL", a3);
    }

    if (a4)
    {
      CFDictionaryAddValue(v15, @"factoryOption_DownloadDestinationURL", a4);
    }

    if (a5)
    {
      CFDictionaryAddValue(v15, @"factoryOption_HTTPHeaders", a5);
    }

    StreamFromURLWithOptionsAsync = FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync(a1, a2, v15, a6, a7);
    CFRelease(v15);
    return StreamFromURLWithOptionsAsync;
  }

  else
  {
    FigByteStreamFactoryCreateStreamFromURLAsync_cold_1(&v18);
    return v18;
  }
}

uint64_t fbsfCompletionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAFC8 = result;
  return result;
}

double fbsfCompletion_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t fbsfCompletion_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
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

  return FigSemaphoreDestroy();
}

const void *FigCFDictionaryGetValueOfType(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  if (CFGetTypeID(Value) != a3)
  {
    return 0;
  }

  return v5;
}

uint64_t fbfs_CreateFlumeAsync(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  cf = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *keys = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *values = 0u;
  v33 = 0u;
  v4 = MEMORY[0x1E695E480];
  if ((*(a1 + 72) & 4) == 0)
  {
    FigBaseObject = FigDiskCacheProviderGetFigBaseObject(*(a1 + 32));
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(FigBaseObject, @"CacheIdentifier", *v4, &cf);
    }
  }

  v7 = MEMORY[0x1E695E4D0];
  if (*(a1 + 93))
  {
    v8 = &values[1];
    v9 = &keys[1];
    keys[0] = @"FBFCreateOption_UseAWDL";
    values[0] = *MEMORY[0x1E695E4D0];
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = keys;
    v8 = values;
  }

  if (*(a1 + 100))
  {
    *v9 = @"FBFCreateOption_DisableLargeDownload";
    *v8 = *v7;
    ++v10;
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    keys[v10] = @"FBFCreateOption_MaxSizeAllowedForCellularAccess";
    values[v10++] = v11;
  }

  if (*(a1 + 112))
  {
    keys[v10] = @"FBFCreateOption_DisallowsExpensiveNetworkAccess";
    values[v10++] = *v7;
  }

  if (*(a1 + 113))
  {
    keys[v10] = @"FBFCreateOption_DisallowsConstrainedNetworkAccess";
    values[v10++] = *v7;
  }

  v12 = *(a1 + 120);
  if (v12)
  {
    keys[v10] = @"FBFCreateOption_HTTPRequestOptions";
    values[v10++] = v12;
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    keys[v10] = @"FBFCreateOption_AlternativeConfigurationOptions";
    values[v10++] = v13;
  }

  if (*(a1 + 114))
  {
    keys[v10] = @"FBFCreateOption_DisableNativeHTTPReads";
    values[v10++] = *v7;
  }

  if (*(a1 + 115))
  {
    keys[v10] = @"FBFCreateOption_AlwaysFollowRedirects";
    values[v10++] = *v7;
  }

  if (*(a1 + 116))
  {
    keys[v10] = @"FBFCreateOption_EnableMultiPath";
    values[v10++] = *v7;
  }

  v14 = *(a1 + 128);
  if (v14)
  {
    keys[v10] = @"FBFCreateOption_StoreBagConfiguration";
    values[v10++] = v14;
  }

  if ((*(a1 + 72) & 0x10) != 0)
  {
    keys[v10] = @"FBFCreateOption_DoNotLogURLs";
    values[v10++] = *v7;
  }

  v15 = *(a1 + 136);
  if (v15)
  {
    keys[v10] = @"FBFCreateOption_ParentNetworkActivity";
    values[v10++] = v15;
  }

  else if (!v10)
  {
    v16 = 0;
    if (a2)
    {
      goto LABEL_34;
    }

LABEL_37:
    v17 = *v4;
    goto LABEL_38;
  }

  v16 = CFDictionaryCreate(*v4, keys, values, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v16)
  {
    fbfs_CreateFlumeAsync_cold_1(&valuePtr);
    v21 = valuePtr;
    goto LABEL_55;
  }

  if (!a2)
  {
    goto LABEL_37;
  }

LABEL_34:
  v17 = *v4;
  if (!*(a1 + 114))
  {
    v18 = cf;
    goto LABEL_39;
  }

LABEL_38:
  v19 = FigCFHTTPIsDataURL(*(a1 + 16));
  v18 = cf;
  if (!v19)
  {
    v20 = FigByteFlumeCustomURLCreateWithURL(v17, *(a1 + 16), 0, cf, *(a1 + 24), *(a1 + 144), *(a1 + 88), *(a1 + 40), v16, (a1 + 48));
    goto LABEL_41;
  }

LABEL_39:
  v20 = FigByteFlumeCreateWithHTTP(v17, *(a1 + 16), 0, v18, *(a1 + 24), *(a1 + 144), *(a1 + 88), v16, (a1 + 48));
LABEL_41:
  v21 = v20;
  if (v20)
  {
    goto LABEL_53;
  }

  *(a1 + 64) = 0;
  v22 = FigThreadRegisterAbortAction();
  if (v22)
  {
    v21 = v22;
    goto LABEL_51;
  }

  valuePtr = 32;
  v23 = CFNumberCreate(v17, kCFNumberSInt32Type, &valuePtr);
  v24 = FigByteFlumeGetFigBaseObject(*(a1 + 48));
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v25)
  {
    v25(v24, @"FBF_BandwidthSampleCount", v23);
  }

  CFRelease(v23);
  if (!*(a1 + 101))
  {
    v26 = *(a1 + 48);
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v27)
    {
      v21 = v27(v26, fbfs_FigHTTPOpenCallback, a1);
      if (!v21)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v21 = 4294954514;
    }

    FigThreadUnregisterAbortAction();
LABEL_51:
    v28 = *(a1 + 48);
    if (v28)
    {
      CFRelease(v28);
      *(a1 + 48) = 0;
    }

LABEL_53:
    if (!v16)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  fbfs_FigHTTPOpenCallback(a1, 0, 0);
  v21 = 0;
  if (v16)
  {
LABEL_54:
    CFRelease(v16);
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

void fbfs_FreeFigHTTPOpenCompletion(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 48) = 0;
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 16) = 0;
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 24) = 0;
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 32) = 0;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 56) = 0;
    }

    v8 = *(a1 + 104);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 104) = 0;
    }

    v9 = *(a1 + 120);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 120) = 0;
    }

    v10 = *(a1 + 128);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 128) = 0;
    }

    v11 = *(a1 + 136);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 136) = 0;
    }

    v12 = *(a1 + 80);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 80) = 0;
    }

    FigHTTPSchedulerRelease(*(a1 + 144));

    free(a1);
  }
}

uint64_t fbfs_GetCacheMemForDiskBackedMaxSizeOnce(uint64_t *a1)
{
  v5 = 8;
  v6 = 0;
  result = sysctlbyname("hw.memsize", &v6, &v5, 0, 0);
  v3 = 0x1000000;
  v4 = 0x2000000;
  if (v6 <= 0x10000000)
  {
    v4 = 0x1000000;
  }

  if (result != -1)
  {
    v3 = v4;
  }

  *a1 = v3;
  return result;
}

uint64_t fbfs_GetCacheMemMaxSizeOnce(uint64_t *a1)
{
  v7 = 8;
  v8 = 0;
  CelestialGetModelSpecificName();
  v2 = sysctlbyname("hw.memsize", &v8, &v7, 0, 0);
  result = FigCFEqual();
  v5 = (v8 >> 20) <= 2000 || v2 == -1 || result == 0;
  v6 = 0x2000000;
  if (!v5)
  {
    v6 = 0x8000000;
  }

  *a1 = v6;
  return result;
}

uint64_t fbfs_OpenAbortAction(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    v3 = *(v1 + 48);
    GlobalNetworkBufferingRunloop = FigThreadGetGlobalNetworkBufferingRunloop();
    v5 = *MEMORY[0x1E695E480];

    return MEMORY[0x1EEDBCE58](fbfs_DeferInvalidate, DefaultLocalCenter, 0, 0, 0, v3, GlobalNetworkBufferingRunloop, v5);
  }

  return result;
}

uint64_t fbfs_DeferInvalidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = FigByteFlumeGetFigBaseObject(a5);
  if (result)
  {
    v6 = result;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    result = VTable + 8;
    v9 = *(v8 + 24);
    if (v9)
    {

      return v9(v6);
    }
  }

  return result;
}

BOOL FigVideoCompositionTimeWindowDurationIsZero(uint64_t a1)
{
  if (*(a1 + 12))
  {
    time1 = *a1;
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if (*(a1 + 36))
  {
    time1 = *(a1 + 24);
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if (*(a1 + 60))
  {
    time1 = *(a1 + 48);
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    return 1;
  }

  time1 = *(a1 + 72);
  v3 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v3) == 0;
}

BOOL FigVideoCompositionTimeWindowDurationIsZeroWhenSeeking(uint64_t a1)
{
  if (*(a1 + 60))
  {
    time1 = *(a1 + 48);
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    return 1;
  }

  time1 = *(a1 + 72);
  v3 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v3) == 0;
}

BOOL FigVideoCompositionTimeWindowDurationIsZeroWhenNotSeeking(uint64_t a1)
{
  if (*(a1 + 12))
  {
    time1 = *a1;
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    return 1;
  }

  time1 = *(a1 + 24);
  v3 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v3) == 0;
}

BOOL FigVideoCompositionTimeWindowDurationsEqual(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6960CC0];
  if ((*(a1 + 12) & 1) == 0)
  {
    *a1 = *MEMORY[0x1E6960CC0];
    *(a1 + 16) = *(v4 + 16);
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    *(a1 + 24) = *v4;
    *(a1 + 40) = *(v4 + 16);
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    *(a1 + 48) = *v4;
    *(a1 + 64) = *(v4 + 16);
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    *(a1 + 72) = *v4;
    *(a1 + 88) = *(v4 + 16);
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    *a2 = *v4;
    *(a2 + 16) = *(v4 + 16);
  }

  if ((*(a2 + 36) & 1) == 0)
  {
    *(a2 + 24) = *v4;
    *(a2 + 40) = *(v4 + 16);
  }

  if ((*(a2 + 60) & 1) == 0)
  {
    *(a2 + 48) = *v4;
    *(a2 + 64) = *(v4 + 16);
  }

  if ((*(a2 + 84) & 1) == 0)
  {
    *(a2 + 72) = *v4;
    *(a2 + 88) = *(v4 + 16);
  }

  time1 = *a1;
  v6 = *a2;
  if (CMTimeCompare(&time1, &v6))
  {
    return 0;
  }

  time1 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (CMTimeCompare(&time1, &v6))
  {
    return 0;
  }

  time1 = *(a1 + 48);
  v6 = *(a2 + 48);
  if (CMTimeCompare(&time1, &v6))
  {
    return 0;
  }

  time1 = *(a1 + 72);
  v6 = *(a2 + 72);
  return CMTimeCompare(&time1, &v6) == 0;
}

uint64_t FigVideoCompositionWindowSerializedConfigurationContainsTrack(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; v6 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          if (!ValueAtIndex)
          {
            break;
          }

          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 != CFDictionaryGetTypeID() || !FigCFDictionaryGetInt32IfPresent())
          {
            break;
          }

          if (!a2)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL FigVideoCompositionWindowSerializedConfigurationForTracksEqual(CFTypeRef cf, CFTypeRef a2)
{
  if (cf == a2)
  {
    return 1;
  }

  v27 = v2;
  v28 = v3;
  result = 0;
  if (cf && a2)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFArrayGetTypeID())
    {
      v8 = CFGetTypeID(a2);
      if (v8 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(cf);
        if (Count == CFArrayGetCount(a2))
        {
          if (Count < 1)
          {
            return 1;
          }

          v10 = 0;
          v11 = *MEMORY[0x1E6960CC0];
          v12 = *(MEMORY[0x1E6960CC0] + 16);
          v15 = *MEMORY[0x1E6960CC0];
          while (1)
          {
            v26 = 0;
            v22 = v11;
            *&v23[0] = v12;
            *(v23 + 8) = v11;
            *(&v23[1] + 1) = v12;
            v24 = v11;
            *&v25[0] = v12;
            *(&v25[1] + 1) = v12;
            *(v25 + 8) = v11;
            __dst = v11;
            *v19 = v12;
            *&v19[8] = v11;
            *&v19[24] = v12;
            v20 = v11;
            *v21 = v12;
            *&v21[24] = v12;
            *&v21[8] = v11;
            ValueAtIndex = CFArrayGetValueAtIndex(cf, v10);
            if (!ValueAtIndex)
            {
              break;
            }

            v14 = CFGetTypeID(ValueAtIndex);
            if (v14 != CFDictionaryGetTypeID() || !FigCFDictionaryGetInt32IfPresent() || FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(cf, v26, &v22) || !FigVideoCompositionWindowSerializedConfigurationContainsTrack(a2, v26) || FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(a2, v26, &__dst))
            {
              break;
            }

            v17[2] = v23[1];
            v17[3] = v24;
            v17[4] = v25[0];
            v17[5] = v25[1];
            v17[0] = v22;
            v17[1] = v23[0];
            v16[2] = *&v19[16];
            v16[3] = v20;
            v16[4] = *v21;
            v16[5] = *&v21[16];
            v16[0] = __dst;
            v16[1] = *v19;
            result = FigVideoCompositionTimeWindowDurationsEqual(v17, v16);
            if (result)
            {
              ++v10;
              result = 1;
              v11 = v15;
              if (Count != v10)
              {
                continue;
              }
            }

            return result;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_135@<X0>(__int128 a1@<0:X2, 8:X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, __int128 a5, __int128 time2a, uint64_t time2_16, uint64_t a8, uint64_t time1a, uint64_t time1_8, uint64_t time1_16)
{
  time1_16 = a2;
  time2a = a5;
  time2_16 = v13;

  return CMTimeCompare(&time1a, &time2a);
}

double FigBufferedAirPlayOutputProxyRPStateCreate()
{
  if (FigBufferedAirPlayOutputProxyRPStateGetTypeID_onceToken != -1)
  {
    FigBufferedAirPlayOutputProxyRPStateCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0.0;
    Instance[14] = 0u;
    Instance[15] = 0u;
    Instance[12] = 0u;
    Instance[13] = 0u;
    Instance[10] = 0u;
    Instance[11] = 0u;
    Instance[8] = 0u;
    Instance[9] = 0u;
    Instance[6] = 0u;
    Instance[7] = 0u;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
  }

  return result;
}

uint64_t __FigBufferedAirPlayOutputProxyRPStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gFigBufferedAirPlayOutputProxyRPStateTypeID = result;
  return result;
}

void FigBufferedAirPlayOutputProxyRPStateFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(v2, @"DownstreamConsumer", 0);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 68);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[21];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[22];
  if (v11)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], v11);
    a1[22] = 0;
  }
}

uint64_t FigAlternatePlaybackBitrateMonitorReportStall()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 112) == 1)
  {
    FigAlternatePlaybackBitrateMonitorReportStall_cold_1(DerivedStorage);
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigAlternatePlaybackBitrateMonitorSubmitABRHistory(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  fampb_submitNetworkHistory();
  fampb_releaseRecordingData(a1);
  FigSimpleMutexUnlock();
  return 0;
}

void fampb_releaseRecordingData(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 208))
  {
    FigNetworkHistoryDisableRecord();
  }

  *(DerivedStorage + 112) = 0;
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 136) = 0;
  }

  v4 = *(DerivedStorage + 208);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 208) = 0;
  }

  v5 = CFGetAllocator(a1);
  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    v7 = v5;
    do
    {
      v8 = v6[3];
      v9 = v6[4];
      v10 = (v8 + 32);
      if (!v8)
      {
        v10 = (DerivedStorage + 168);
      }

      *v10 = v9;
      *v9 = v8;
      v11 = v6[1];
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = v6[2];
      if (v12)
      {
        CFRelease(v12);
      }

      CFAllocatorDeallocate(v7, v6);
      v6 = *(DerivedStorage + 160);
    }

    while (v6);
  }

  v13 = CFGetAllocator(a1);
  v14 = *(DerivedStorage + 184);
  if (v14)
  {
    v15 = v13;
    do
    {
      v16 = *(v14 + 40);
      v17 = *(v14 + 48);
      v18 = (v16 + 48);
      if (!v16)
      {
        v18 = (DerivedStorage + 192);
      }

      *v18 = v17;
      *v17 = v16;
      v19 = *(v14 + 8);
      if ((v19 - 13) < 3 || v19 == 12)
      {
        v20 = *(v14 + 16);
        if (v20)
        {
          CFRelease(v20);
        }
      }

      CFAllocatorDeallocate(v15, v14);
      v14 = *(DerivedStorage + 184);
    }

    while (v14);
  }
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, _OWORD *a6, _OWORD *a7, const void *a8, uint64_t a9, char a10, CFTypeRef *a11)
{
  v61 = 0;
  cf = 0;
  if (!a11)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_7(&v60);
LABEL_43:
    value_low = LODWORD(v60.value);
    goto LABEL_30;
  }

  if (!a5)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_6(&v60);
    goto LABEL_43;
  }

  FigAlternateFilterMonitorGetClassID();
  inserted = CMDerivedObjectCreate();
  if (inserted)
  {
LABEL_35:
    value_low = inserted;
    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = FigReentrantMutexCreate();
  *DerivedStorage = v20;
  if (!v20)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_5(&v60);
    goto LABEL_43;
  }

  v21 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 32) = v21;
  if (!v21)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_4(&v60);
    goto LABEL_43;
  }

  *(DerivedStorage + 40) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v22 = a6[1];
  *(DerivedStorage + 776) = *a6;
  *(DerivedStorage + 792) = v22;
  v23 = a6[5];
  v25 = a6[2];
  v24 = a6[3];
  *(DerivedStorage + 840) = a6[4];
  *(DerivedStorage + 856) = v23;
  *(DerivedStorage + 808) = v25;
  *(DerivedStorage + 824) = v24;
  v26 = a6[9];
  v28 = a6[6];
  v27 = a6[7];
  *(DerivedStorage + 904) = a6[8];
  *(DerivedStorage + 920) = v26;
  *(DerivedStorage + 872) = v28;
  *(DerivedStorage + 888) = v27;
  v29 = a6[13];
  v31 = a6[10];
  v30 = a6[11];
  *(DerivedStorage + 968) = a6[12];
  *(DerivedStorage + 984) = v29;
  *(DerivedStorage + 936) = v31;
  *(DerivedStorage + 952) = v30;
  v32 = a7[1];
  *(DerivedStorage + 1000) = *a7;
  *(DerivedStorage + 1016) = v32;
  v33 = a7[2];
  v34 = a7[3];
  v35 = a7[5];
  *(DerivedStorage + 1064) = a7[4];
  *(DerivedStorage + 1080) = v35;
  *(DerivedStorage + 1032) = v33;
  *(DerivedStorage + 1048) = v34;
  v36 = a7[6];
  v37 = a7[7];
  v38 = a7[9];
  *(DerivedStorage + 1128) = a7[8];
  *(DerivedStorage + 1144) = v38;
  *(DerivedStorage + 1096) = v36;
  *(DerivedStorage + 1112) = v37;
  v39 = a7[10];
  v40 = a7[11];
  v41 = a7[13];
  *(DerivedStorage + 1192) = a7[12];
  *(DerivedStorage + 1208) = v41;
  *(DerivedStorage + 1160) = v39;
  *(DerivedStorage + 1176) = v40;
  CMTimeMakeWithSeconds(&v60, 10.0, 1000);
  *(DerivedStorage + 364) = v60;
  *(DerivedStorage + 8) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 24) = a4;
  *(DerivedStorage + 416) = 0x7FFFFFFF;
  v42 = MEMORY[0x1E6960C70];
  v43 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 600) = *MEMORY[0x1E6960C70];
  v44 = *(v42 + 16);
  *(DerivedStorage + 616) = v44;
  v59 = v43;
  *(DerivedStorage + 728) = v43;
  *(DerivedStorage + 744) = v44;
  *(DerivedStorage + 760) = -1;
  if (a8)
  {
    v45 = CFRetain(a8);
  }

  else
  {
    v45 = 0;
  }

  *(DerivedStorage + 752) = v45;
  *(DerivedStorage + 767) = 1;
  *(DerivedStorage + 336) = &stru_1F0B1AFB8;
  *(DerivedStorage + 80) = &stru_1F0B1AFB8;
  *(DerivedStorage + 520) = 0;
  *(DerivedStorage + 1240) = 1000000000 * FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 432) = 0x3FF0000000000000;
  *(DerivedStorage + 346) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"useStartupScoreForInitialAlternate");
  *(DerivedStorage + 346) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 352) = 0x4008000000000000;
  *(DerivedStorage + 360) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"switchUpStallRiskFilterChoice");
  *(DerivedStorage + 360) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 345) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"enablePairedLLABR");
  *(DerivedStorage + 345) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 516) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"budgetSwitchBackDownWhenCurveKnown");
  FigGetCFPreferenceDoubleWithDefault();
  *(DerivedStorage + 516) = v46;
  v47 = FigRCLGetDoubleWithDefault(*(DerivedStorage + 752), @"averageBWSwitchUpSafetyMargin");
  *(DerivedStorage + 488) = v47;
  v48 = 0.0;
  if (v47 < 0.0 || (v48 = 5.0, v47 > 5.0))
  {
    *(DerivedStorage + 488) = v48;
  }

  *(DerivedStorage + 504) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 752), @"extraTargetDurationsReqToSwitchSecsAhead");
  FigGetCFPreferenceDoubleWithDefault();
  *(DerivedStorage + 504) = v49;
  *(DerivedStorage + 496) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"increaseBitsRequiredToSwitchVODSecsBackMargin");
  *(DerivedStorage + 512) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"switchUpWalkBackMode");
  FigGetCFPreferenceDoubleWithDefault();
  *(DerivedStorage + 512) = v50;
  *(DerivedStorage + 518) = FigIsItOKToLogURLs();
  *(DerivedStorage + 480) = 0x10000000000000;
  *(DerivedStorage + 112) = a10;
  *(DerivedStorage + 116) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"maxABRRecordSize");
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (CFPreferenceNumberWithDefault >= 0xA0000)
  {
    v52 = 655360;
  }

  else
  {
    v52 = CFPreferenceNumberWithDefault;
  }

  *(DerivedStorage + 116) = v52;
  if (*(DerivedStorage + 112))
  {
    *(DerivedStorage + 120) = FigGetUpTimeNanoseconds();
    Current = CFAbsoluteTimeGetCurrent();
    *(DerivedStorage + 160) = 0;
    *(DerivedStorage + 128) = Current;
    *(DerivedStorage + 240) = v59;
    *(DerivedStorage + 256) = v44;
    *(DerivedStorage + 216) = v59;
    *(DerivedStorage + 232) = v44;
    *(DerivedStorage + 184) = 0;
    *(DerivedStorage + 192) = DerivedStorage + 184;
    *(DerivedStorage + 168) = DerivedStorage + 160;
    v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v54)
    {
      v55 = v54(a5, *MEMORY[0x1E6962A18], a1, DerivedStorage + 208);
      if (!v55)
      {
        FigNetworkHistoryEnableRecord();
        goto LABEL_19;
      }

      value_low = v55;
    }

    else
    {
      value_low = 4294954514;
    }

    *(DerivedStorage + 112) = 0;
    goto LABEL_30;
  }

LABEL_19:
  *(DerivedStorage + 48) = CFRetain(a5);
  inserted = FigNetworkHistoryObserverCreate();
  if (inserted)
  {
    goto LABEL_35;
  }

  if (!*(DerivedStorage + 56))
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_3(&v60);
    goto LABEL_43;
  }

  inserted = FigAlternatePassthroughFilterCreate(a1, @"MonitorPassThoughFilter", 601, (DerivedStorage + 264));
  if (inserted)
  {
    goto LABEL_35;
  }

  if (!*(DerivedStorage + 264))
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_2(&v60);
    goto LABEL_43;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  AllocatorForMedia = FigGetAllocatorForMedia();
  inserted = FigAlternateFilterTreeCreate(AllocatorForMedia, &v61);
  if (inserted)
  {
    goto LABEL_35;
  }

  if (!v61)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_1(&v60);
    goto LABEL_43;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(v61, *(DerivedStorage + 264), 500);
  if (inserted)
  {
    goto LABEL_35;
  }

  value_low = FigAlternateFilterTreeCreateFilter(v61, @"BitrateFilterTree", 600, (DerivedStorage + 64));
  if (!value_low)
  {
    fampb_setupDryTimer(cf);
    *a11 = cf;
    cf = 0;
    goto LABEL_32;
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_32:
  if (v61)
  {
    CFRelease(v61);
  }

  return value_low;
}

uint64_t fampb_validAlternateHasChanged(uint64_t a1, const void *a2)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fampb_setBandwidthConditions(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray[0] = 0;
  v13 = 0;
  if (*(DerivedStorage + 112))
  {
    v5 = DerivedStorage;
    if (!fampb_copyValidAlternateList(*(DerivedStorage + 264), theArray))
    {
      if (!theArray[0])
      {
        goto LABEL_18;
      }

      if (CFArrayGetCount(theArray[0]) >= 1)
      {
        if (*(v5 + 136))
        {
          v8 = theArray[0];
          if (theArray[0])
          {
            v9.length = CFArrayGetCount(theArray[0]);
          }

          else
          {
            v9.length = 0;
          }

          v9.location = 0;
          CFArrayApplyFunction(v8, v9, fampb_recordAddNewAlternates, (v5 + 136));
LABEL_14:
          fampb_createRecordABREventEntryForNowAndInsertQ(a2, &v13);
          if (v13)
          {
            v10 = CFRetain(theArray[0]);
            v11 = v13;
            v13[2] = v10;
            *(v11 + 2) = 12;
            ++*(v5 + 180);
          }

          goto LABEL_16;
        }

        CFGetAllocator(a2);
        MutableCopy = FigCFArrayCreateMutableCopy();
        *(v5 + 136) = MutableCopy;
        if (MutableCopy)
        {
          v7 = MutableCopy;
          v15.length = CFArrayGetCount(MutableCopy);
          v15.location = 0;
          CFArraySortValues(v7, v15, fampb_AlternateZeroIndexComparator, 0);
          goto LABEL_14;
        }
      }
    }
  }

LABEL_16:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

LABEL_18:
  fampb_updateNetworkSpecifierOnArbiter();
  return FigSimpleMutexUnlock();
}

double fampb_setupDryTimer(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 764))
  {
    v4 = DerivedStorage;
    v7 = *(DerivedStorage + 600);
    rhs = *(DerivedStorage + 364);
    CMTimeSubtract(&time2, &v7, &rhs);
    rhs.value = time2.value;
    flags = time2.flags;
    rhs.timescale = time2.timescale;
    if (time2.flags)
    {
      epoch = time2.epoch;
      if (*(v4 + 740))
      {
        time2 = *(v4 + 728);
      }

      else
      {
        CMTimebaseGetTimeClampedAboveAnchorTime();
      }

      v7.value = rhs.value;
      v7.timescale = rhs.timescale;
      v7.flags = flags;
      v7.epoch = epoch;
      if ((CMTimeCompare(&v7, &time2) & 0x80000000) == 0)
      {
        time2.value = rhs.value;
        time2.timescale = rhs.timescale;
        time2.flags = flags;
        time2.epoch = epoch;
        *&result = fampb_primeTimeTillDryTimer(a1, &time2).n128_u64[0];
      }
    }
  }

  return result;
}

void FigCFRelease_8(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigAlternatePlaybackBitrateMonitorSetStreamDuration(const void *a1, CMTime *a2, uint64_t a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MainSegmentBytesInTransitUnlocked = fampb_getMainSegmentBytesInTransitUnlocked();
  FigSimpleMutexLock();
  memset(&v26, 0, sizeof(v26));
  v10 = (DerivedStorage + 600);
  lhs = *a2;
  rhs = *(DerivedStorage + 600);
  CMTimeSubtract(&v26, &lhs, &rhs);
  if (*(DerivedStorage + 766) != a4)
  {
    *(DerivedStorage + 766) = a4;
    lhs.value = 0;
    fampb_createRecordABREventEntryForNowAndInsertQ(a1, &lhs);
    value = lhs.value;
    if (lhs.value)
    {
      *(lhs.value + 16) = a4;
      *(value + 8) = 9;
    }
  }

  *&lhs.value = *v10;
  lhs.epoch = *(DerivedStorage + 616);
  rhs = *a2;
  if (CMTimeCompare(&lhs, &rhs))
  {
    v16 = *&a2->value;
    *(DerivedStorage + 616) = a2->epoch;
    *v10 = v16;
    v17 = *(DerivedStorage + 480);
    if (v17 <= 2.22507386e-308)
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    }

    else
    {
      UpTimeNanoseconds = ((*(DerivedStorage + 472) - v17) * 1000000000.0);
    }

    *(DerivedStorage + 696) = UpTimeNanoseconds;
    lhs = *a2;
    rhs.value = 0;
    fampb_createRecordABREventEntryForNowAndInsertQ(a1, &rhs);
    v19 = rhs.value;
    if (rhs.value)
    {
      *(rhs.value + 16) = *&lhs.value;
      *(v19 + 32) = lhs.epoch;
      *(v19 + 8) = 2;
    }

    if ((*(DerivedStorage + 252) & 0x1D) != 1 || (lhs = *a2, rhs = *(DerivedStorage + 240), CMTimeCompare(&lhs, &rhs) >= 1))
    {
      v20 = *&a2->value;
      *(DerivedStorage + 256) = a2->epoch;
      *(DerivedStorage + 240) = v20;
    }

    if (*(DerivedStorage + 420) != 0.0)
    {
      memset(&lhs, 0, sizeof(lhs));
      CMTimebaseGetTime(&lhs, *(DerivedStorage + 592));
      if ((lhs.flags & 0x1D) == 1)
      {
        if ((*(DerivedStorage + 228) & 0x1D) != 1 || (rhs = lhs, v23 = *(DerivedStorage + 216), CMTimeCompare(&rhs, &v23) < 0))
        {
          *(DerivedStorage + 216) = lhs;
        }

        if ((*(DerivedStorage + 252) & 0x1D) != 1 || (rhs = lhs, v23 = *(DerivedStorage + 240), CMTimeCompare(&rhs, &v23) >= 1))
        {
          *(DerivedStorage + 240) = lhs;
        }

        rhs = lhs;
        v23.value = 0;
        if (!fampb_createRecordABREventEntryForNowAndInsertQ(a1, &v23) && v23.value)
        {
          v21 = FigGetUpTimeNanoseconds();
          v22 = v23.value;
          *v23.value = v21;
          *(v22 + 16) = rhs;
          *(v22 + 8) = 1;
        }
      }
    }
  }

  if (a3)
  {
    for (i = 0; i != 72; i += 24)
    {
      v12 = DerivedStorage + 624 + i;
      v13 = *(a3 + i);
      *(v12 + 16) = *(a3 + i + 16);
      *v12 = v13;
    }
  }

  *(DerivedStorage + 392) = MainSegmentBytesInTransitUnlocked;
  fampb_setupDryTimer(a1);
  if (*(DerivedStorage + 344))
  {
    fampb_attemptToSwitch(a1, 0, 0);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternatePlaybackBitrateMonitorCanSwitchDownConcurrentlyWithoutStall(uint64_t a1, CMTime *a2)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 344) || (*(DerivedStorage + 1248) <= 0 ? (v4 = 100000) : (v4 = *(DerivedStorage + 1248)), fampb_getPredictionBandwidth(DerivedStorage, &v13, (DerivedStorage + 408))))
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    if (*(DerivedStorage + 345))
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.9;
    }

    v6 = fampb_copyLowerSwitchCandidate((DerivedStorage + 264), *(DerivedStorage + 280), *(DerivedStorage + 345) == 0);
    v7 = *(DerivedStorage + 592);
    if (v7)
    {
      Rate = CMTimebaseGetRate(v7);
    }

    else
    {
      Rate = 0.0;
    }

    *(DerivedStorage + 424) = Rate;
    v9 = *(DerivedStorage + 280);
    v12 = *a2;
    canSwitchDownConcurrentlyToAlternateWithoutStall = fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(v6, DerivedStorage + 264, &v12, v4, v13, v9, 0, v5);
    FigSimpleMutexUnlock();
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return canSwitchDownConcurrentlyToAlternateWithoutStall;
}

uint64_t fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7, float a8)
{
  v11 = *MEMORY[0x1E6960C70];
  *&v18.value = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  v18.epoch = v12;
  result = 1;
  if (a1 != a6 && *(a2 + 160) != 0.0 && *(a2 + 16) != a1)
  {
    *&v17.value = v11;
    v17.epoch = v12;
    *&v16.value = v11;
    v16.epoch = v12;
    v15 = *a3;
    v14 = fampb_concurrentSwitchDownSafetyFactor(a2, a1, a6, &v15, a4, a5, &v17, &v16);
    if (v14 <= a8)
    {
      result = 0;
    }

    else
    {
      v15 = v16;
      fampb_nextTimeToCheckConcurrentSwitchDown(&v15, &v18, v14, a8);
      result = 1;
    }
  }

  if (a7)
  {
    *a7 = v18;
  }

  return result;
}

uint64_t fampb_copyValidAlternateList(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *MEMORY[0x1E695E480];

  return v4(a1, @"FAFProperty_AlternateList", v5, a2);
}

BOOL FigAlternateFilterMonitorSubStreamHasCriticalStall(double a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 765))
  {
    goto LABEL_13;
  }

  if (*(DerivedStorage + 766))
  {
    goto LABEL_13;
  }

  if ((*(DerivedStorage + 612) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(DerivedStorage + 696);
  if (v6 < 1 || *(DerivedStorage + 420) == 0.0)
  {
    goto LABEL_13;
  }

  v7 = *(DerivedStorage + 480);
  if (v7 <= 2.22507386e-308)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v6 = *(DerivedStorage + 696);
  }

  else
  {
    UpTimeNanoseconds = ((*(DerivedStorage + 472) - v7) * 1000000000.0);
  }

  v9 = UpTimeNanoseconds - v6;
  time = *(DerivedStorage + 364);
  v10 = (CMTimeGetSeconds(&time) * 0.5 * 1000000000.0);
  if (v10 >= (a1 * 1000000000.0))
  {
    v10 = (a1 * 1000000000.0);
  }

  if (v9 < v10 || (fampb_calculateDuration(DerivedStorage, &time), v15 = *(DerivedStorage + 364), (CMTimeCompare(&time, &v15) & 0x80000000) == 0))
  {
LABEL_13:
    v11 = 0;
  }

  else
  {
    v13 = DerivedStorage + 24 * a3;
    v14 = *(v13 + 624);
    time.epoch = *(v13 + 640);
    *&time.value = v14;
    v15 = *(DerivedStorage + 600);
    v11 = CMTimeCompare(&time, &v15) < 1;
  }

  FigSimpleMutexUnlock();
  return v11;
}

CMTime *fampb_calculateDuration@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  if (*(a1 + 420) >= 0.0)
  {
    v4 = (a1 + 600);
    if (*(a1 + 740))
    {
      rhs = *(a1 + 728);
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    v8 = *v4;
    v9 = *(a1 + 616);
    v5 = &v8;
    p_rhs = &rhs;
  }

  else
  {
    if (*(a1 + 740))
    {
      rhs = *(a1 + 728);
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    v9 = *(a1 + 616);
    v8 = *(a1 + 600);
    v5 = &rhs;
    p_rhs = &v8;
  }

  CMTimeSubtract(&time1, v5, p_rhs);
  rhs = **&MEMORY[0x1E6960CC0];
  return CMTimeMaximum(a2, &time1, &rhs);
}

uint64_t FigAlternatePlaybackBitrateMonitorSetTimeForUnitTest(double a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 480) == 2.22507386e-308)
  {
    *(DerivedStorage + 480) = a1 + -1.0;
    v3 = *(DerivedStorage + 48);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, 0x1F0B63558, *MEMORY[0x1E695E4C0]);
    }
  }

  FigNetworkHistoryObserverSetTimeForUnitTest();
  *(DerivedStorage + 472) = a1;

  return FigSimpleMutexUnlock();
}

uint64_t FigAlternatePlaybackBitrateMonitorSetLocalPeakBitrateFactorForUnitTest(double a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 432) = a1;

  return FigSimpleMutexUnlock();
}

uint64_t fampb_recordDataGetTotalBitrateCurvePointCount(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  *(a1 + 144) = 0;
  while (1)
  {
    Count = *(a1 + 136);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), v2);
    v6 = FigAlternateCopyStreamBitrateCurve(ValueAtIndex, 0);
    v7 = FigAlternateCopyStreamBitrateCurve(ValueAtIndex, 1uLL);
    v8 = v7;
    if (v6)
    {
      ++*(a1 + 144);
    }

    if (v7)
    {
      ++*(a1 + 144);
    }

    BitrateCurveDataPointCount = FigMediaPlaylistUtilityGetBitrateCurveDataPointCount(v6);
    v10 = FigMediaPlaylistUtilityGetBitrateCurveDataPointCount(v8);
    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v3 = v3 + BitrateCurveDataPointCount + v10;
    ++v2;
  }

  return v3;
}

uint64_t fampb_serializedRecordDataGetMonitorDataSize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    v2 = 60 * CFArrayGetCount(v1) + 496;
  }

  else
  {
    v2 = 496;
  }

  return (v2 + 8 * (*(DerivedStorage + 144) + *(DerivedStorage + 148)) + 12 * *(DerivedStorage + 176) + 24 * (*(DerivedStorage + 180) + *(DerivedStorage + 152)));
}

uint64_t __fampb_submitNetworkHistory_block_invoke(uint64_t a1, void *a2)
{
  v2 = 32;
  if (!*(a1 + 48))
  {
    v2 = 40;
  }

  return [a2 writeData:*(a1 + v2)];
}

uint64_t fampb_finalize(const void *a1)
{
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fampb_releaseRecordingData(a1);
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 592);
  if (v4)
  {
    CMTimebaseRemoveTimerDispatchSource(v4, *(v3 + 528));
  }

  if (*(v3 + 528))
  {
    StopAndReleaseTimer((v3 + 528));
    v5 = MEMORY[0x1E6960C70];
    v6 = *MEMORY[0x1E6960C70];
    *(v3 + 536) = *MEMORY[0x1E6960C70];
    v7 = *(v5 + 16);
    *(v3 + 552) = v7;
    *(v3 + 560) = v6;
    *(v3 + 576) = v7;
  }

  StopAndReleaseTimer((DerivedStorage + 584));
  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (*(DerivedStorage + 592))
  {
    fampb_removeTimebaseListeners();
    v9 = *(DerivedStorage + 592);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  FigSimpleMutexDestroy();
  v10 = *(DerivedStorage + 8);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 64);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 72);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 752);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 40);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 104);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 80);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 96);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 88);
  if (v20)
  {
    CFRelease(v20);
  }

  FigPlayerResourceArbiterGetGlobalSingleton(&v22);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  fampb_releaseAndClearPlaybackFilterConfig(DerivedStorage + 264);
  CMNotificationCenterGetDefaultLocalCenter();
  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

CFStringRef fampb_copyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForPlaybackBitrate lastMeasuredBitrate:%lld ]", *(DerivedStorage + 400));
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t fampb_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a4)
  {
    fampb_copyProperty_cold_1(&theArray);
    valid = theArray;
    goto LABEL_19;
  }

  if (CFEqual(a2, @"AfmfpbProperty_QualityGear"))
  {
    v8 = DerivedStorage[34];
    theArray = 0;
    v9 = *MEMORY[0x1E695E480];
    if (v8)
    {
      if (fampb_copyAlternateListSortedByQuality(DerivedStorage + 33, *MEMORY[0x1E695E480], 0, &theArray))
      {
        goto LABEL_12;
      }

      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          v28.length = Count;
          v28.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v28, v8);
          goto LABEL_13;
        }

LABEL_12:
        FirstIndexOfValue = -1;
LABEL_13:
        if (theArray)
        {
          CFRelease(theArray);
        }

        goto LABEL_15;
      }
    }

    FirstIndexOfValue = -1;
LABEL_15:
    theArray = FirstIndexOfValue;
    p_theArray = &theArray;
    v14 = v9;
    v15 = kCFNumberCFIndexType;
LABEL_16:
    v12 = CFNumberCreate(v14, v15, p_theArray);
LABEL_17:
    valid = 0;
LABEL_18:
    *a4 = v12;
    goto LABEL_19;
  }

  if (CFEqual(a2, @"AfmfpbProperty_TrialAlternate"))
  {
    v12 = DerivedStorage[35];
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"AfmfpbProperty_CandidateAlternatesForAdaptiveBitrateSwitching"))
  {
    valid = fampb_copyValidAlternateList(DerivedStorage[33], a4);
    goto LABEL_19;
  }

  if (CFEqual(a2, @"AfmfpbProperty_HighestValidPeakBitrate"))
  {
    theArray = 0;
    PeakBitRate = 0;
    if (!fampb_copyValidAlternateList(DerivedStorage[33], &theArray))
    {
      for (i = 0; ; ++i)
      {
        v20 = theArray;
        if (theArray)
        {
          v20 = CFArrayGetCount(theArray);
        }

        if (i >= v20)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (FigAlternateGetPeakBitRate(ValueAtIndex) > PeakBitRate)
        {
          v22 = CFArrayGetValueAtIndex(theArray, i);
          PeakBitRate = FigAlternateGetPeakBitRate(v22);
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    LODWORD(theArray) = PeakBitRate;
    v14 = *MEMORY[0x1E695E480];
    p_theArray = &theArray;
    v15 = kCFNumberSInt32Type;
    goto LABEL_16;
  }

  if (CFEqual(a2, @"AfmfpbProperty_HighestValidDeclaredSampleRate"))
  {
    theArray = COERCE_CFARRAYREF(fampb_highestValidDeclaredSampleRate(DerivedStorage));
    v14 = *MEMORY[0x1E695E480];
    p_theArray = &theArray;
    v15 = kCFNumberDoubleType;
    goto LABEL_16;
  }

  if (!CFEqual(a2, @"AfmfpbProperty_HasAudioOnlyAlternates"))
  {
    if (CFEqual(a2, @"AfmfpbProperty_RTT"))
    {
      v25 = DerivedStorage[156];
      if (v25 <= 0)
      {
        v25 = 100000;
      }

      theArray = v25;
      v14 = *MEMORY[0x1E695E480];
      p_theArray = &theArray;
    }

    else
    {
      if (!CFEqual(a2, @"AfmfpbProperty_PredictedBitrate"))
      {
        if (!CFEqual(a2, @"AfmfpbProperty_MinimumBandwidthToSwitchUp"))
        {
          valid = 4294954512;
          goto LABEL_19;
        }

        theArray = 0;
        valuePtr = 0;
        if (DerivedStorage[34])
        {
          valid = fampb_copyValidAlternateList(DerivedStorage[33], &theArray);
          if (!valid)
          {
            valuePtr = fampb_minimumBandwidthRequiredToSwitchUp(a1, theArray);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }
        }

        else
        {
          valid = 0;
        }

        v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        goto LABEL_18;
      }

      v14 = *MEMORY[0x1E695E480];
      p_theArray = (DerivedStorage + 50);
    }

    v15 = kCFNumberSInt64Type;
    goto LABEL_16;
  }

  hasOnlyAudioInValidAlternateList = fampb_hasOnlyAudioInValidAlternateList(DerivedStorage);
  valid = 0;
  v24 = MEMORY[0x1E695E4D0];
  if (!hasOnlyAudioInValidAlternateList)
  {
    v24 = MEMORY[0x1E695E4C0];
  }

  *a4 = *v24;
LABEL_19:
  FigSimpleMutexUnlock();
  return valid;
}

uint64_t fampb_removeTimebaseListeners()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t fampb_groupBandwidthWeightChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDeferNotificationToDispatchQueue();
}

void fampb_releaseAndClearPlaybackFilterConfig(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 24) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 40) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t fampb_TimebaseListener(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDeferNotificationToDispatchQueue();
}

void fampb_DeferredTimebaseListener(uint64_t a1, const void *a2)
{
  fampb_UpdateLocalBitrate(a2);

  CFRelease(a2);
}

uint64_t fampb_UpdateLocalBitrate(const void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&start, 0, sizeof(start));
  memset(&v16, 0, sizeof(v16));
  v3 = CMBaseObjectGetDerivedStorage();
  v22 = 0x3FF0000000000000;
  rhs = **&MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C98];
  flags = *(MEMORY[0x1E6960C98] + 12);
  timescale = *(MEMORY[0x1E6960C98] + 8);
  epoch = *(MEMORY[0x1E6960C98] + 16);
  v6 = *(MEMORY[0x1E6960C98] + 24);
  v15 = *(MEMORY[0x1E6960C98] + 32);
  v7 = *(MEMORY[0x1E6960C98] + 40);
  FigSimpleMutexLock();
  if (*(v3 + 344) || FigAlternateIsIFrameOnly(*(v3 + 272)) || !*(v3 + 40))
  {
    v8 = 0;
    v9 = -15612;
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    if (*(v3 + 740))
    {
      v25 = *(v3 + 728);
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    memset(&v24, 0, sizeof(v24));
    *&lhs.start.value = *(v3 + 364);
    lhs.start.epoch = *(v3 + 380);
    CMTimeMultiply(&v24, &lhs.start, 2);
    memset(&v20, 0, sizeof(v20));
    fampb_calculateDuration(v3, &v20);
    lhs.start = v24;
    time2 = v20;
    CMTimeMaximum(&duration, &lhs.start, &time2);
    time2 = v25;
    CMTimeRangeMake(&lhs, &time2, &duration);
    value = lhs.start.value;
    flags = lhs.start.flags;
    timescale = lhs.start.timescale;
    epoch = lhs.start.epoch;
    v6 = lhs.duration.value;
    v15 = *&lhs.duration.timescale;
    v7 = lhs.duration.epoch;
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    v9 = 0;
  }

  FigSimpleMutexUnlock();
  if (v8 && (flags & 1) != 0)
  {
    v10 = 1.0;
    if ((v15 & 0x100000000) != 0 && !v7 && (v6 & 0x8000000000000000) == 0)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v11)
      {
        lhs.start.value = value;
        lhs.start.timescale = timescale;
        lhs.start.flags = flags;
        lhs.start.epoch = epoch;
        lhs.duration.value = v6;
        *&lhs.duration.timescale = v15;
        lhs.duration.epoch = 0;
        v9 = v11(v8, &lhs, &v22, &rhs);
        v10 = *&v22;
      }

      else
      {
        v9 = -12782;
      }
    }

    v24.value = rhs.value;
    v12 = rhs.flags;
    v24.timescale = rhs.timescale;
    v14 = rhs.epoch;
    v25.value = value;
    v25.timescale = timescale;
    goto LABEL_15;
  }

  v24.value = rhs.value;
  v12 = rhs.flags;
  v24.timescale = rhs.timescale;
  v14 = rhs.epoch;
  v25.value = value;
  v25.timescale = timescale;
  v10 = 1.0;
  if (v8)
  {
LABEL_15:
    CFRelease(v8);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 740))
  {
    lhs.start.epoch = *(DerivedStorage + 744);
    *&lhs.start.value = *(DerivedStorage + 728);
  }

  else
  {
    CMTimebaseGetTimeClampedAboveAnchorTime();
  }

  start = lhs.start;
  lhs.start.value = v25.value;
  lhs.start.timescale = v25.timescale;
  lhs.start.flags = flags;
  lhs.start.epoch = epoch;
  rhs.value = v6;
  *&rhs.timescale = v15;
  rhs.epoch = v7;
  CMTimeAdd(&v16, &lhs.start, &rhs);
  if (!v9)
  {
    lhs.start.value = v25.value;
    lhs.start.timescale = v25.timescale;
    lhs.start.flags = flags;
    lhs.start.epoch = epoch;
    rhs = start;
    if (CMTimeCompare(&lhs.start, &rhs) <= 0)
    {
      lhs.start = start;
      rhs = v16;
      if (CMTimeCompare(&lhs.start, &rhs) < 0)
      {
        if (vabdd_f64(v10, *(DerivedStorage + 432)) <= 2.22044605e-16 || FigAlternateIsIFrameOnly(*(DerivedStorage + 272)) || FigAlternateIsAudioOnly(*(DerivedStorage + 272)))
        {
          if ((v12 & 1) == 0)
          {
            return FigSimpleMutexUnlock();
          }
        }

        else
        {
          fampb_UpdateLocalBitrate_cold_1((DerivedStorage + 432), a1, v10);
          if ((v12 & 1) == 0)
          {
            return FigSimpleMutexUnlock();
          }
        }

        CMTimebaseGetTime(&lhs.start, *(DerivedStorage + 592));
        rhs.value = v24.value;
        rhs.timescale = v24.timescale;
        rhs.flags = v12;
        rhs.epoch = v14;
        if (CMTimeCompare(&rhs, &lhs.start) >= 1)
        {
          StopAndReleaseTimer((DerivedStorage + 584));
          lhs.start.value = v24.value;
          lhs.start.timescale = v24.timescale;
          lhs.start.flags = v12;
          lhs.start.epoch = v14;
          fampb_CreateAndPrimeTimebaseTimer(a1, &lhs.start, (DerivedStorage + 584));
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void fampb_CreateAndPrimeTimebaseTimer(uint64_t a1, CMTime *a2, NSObject **a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = fampb_timerDispatchSourceCreate(*(DerivedStorage + 32), a1, fampb_TimebaseTimerListener);
  if (v7)
  {
    v8 = v7;
    if (CMTimebaseAddTimerDispatchSource(*(DerivedStorage + 592), v7) || (v9 = *(DerivedStorage + 592), fireTime = *a2, CMTimebaseSetTimerDispatchSourceNextFireTime(v9, v8, &fireTime, 1u)))
    {
      CFRelease(v8);
    }

    else
    {
      if (dword_1EAF17490)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *a3 = v8;
    }
  }

  else
  {
    fampb_CreateAndPrimeTimebaseTimer_cold_1();
  }
}

uint64_t fampb_createRecordABREventEntry(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 56, 0x10E204061408F10, 0);
  if (v3)
  {
    v4 = v3;
    result = 0;
    *(v4 + 48) = 0;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    *a2 = v4;
  }

  else
  {
    fampb_createRecordABREventEntry_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t fampb_minimumBandwidthRequiredToSwitchUp(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 272);
  PeakBitRate = FigAlternateGetPeakBitRate(v4);
  v6 = 0;
  v7 = -1;
  v8 = 1.0;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a2); v6 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
    v11 = FigAlternateGetPeakBitRate(ValueAtIndex);
    if (v11 > PeakBitRate)
    {
      v12 = v11;
      if (v7 == -1 || v7 > v11)
      {
        FigAlternateScaleBitrateFractionToNewAlternate(v4, ValueAtIndex);
        v8 = v13;
        v7 = v12;
      }
    }

    ++v6;
    if (a2)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v7 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(DerivedStorage + 344))
  {
    return ((v8 * v7) * 1.1);
  }

  v15 = fampb_copyLowerSwitchCandidate((DerivedStorage + 264), *(DerivedStorage + 272), 1);
  LODWORD(DerivedStorage) = FigAlternateGetPeakBitRate(*(DerivedStorage + 272)) + v7;
  if (!v15)
  {
    return DerivedStorage & ~(DerivedStorage >> 31);
  }

  v16 = (FigAlternateGetExpectedAverageBitrate(v15) + v7 * 1.5);
  if (DerivedStorage <= v16)
  {
    DerivedStorage = v16;
  }

  else
  {
    DerivedStorage = DerivedStorage;
  }

  CFRelease(v15);
  return DerivedStorage;
}

NSObject *fampb_timerDispatchSourceCreate(dispatch_queue_t queue, uint64_t a2, void (__cdecl *a3)(void *))
{
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
  if (v4)
  {
    v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_set_context(v4, v5);
    dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(v4, a3);
    dispatch_source_set_cancel_handler_f(v4, 0);
    dispatch_set_finalizer_f(v4, FigCFRelease_8);
    dispatch_resume(v4);
  }

  return v4;
}

void fampb_deferredGroupBandwidthWeightChanged(uint64_t a1, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  updated = fampb_updateGroupBandwidthWeightOnPredictor();
  fampb_calculateDuration(DerivedStorage, &time2);
  value = time2.value;
  flags = time2.flags;
  timescale = time2.timescale;
  if (((time2.flags & 1) == 0 || (epoch = time2.epoch, CMTimeMake(&time2, 100, 1000), time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, CMTimeCompare(&time1, &time2) < 0)) && (v7 = *(DerivedStorage + 592)) != 0 && CMTimebaseGetRate(v7) == 0.0)
  {
    v8 = *(DerivedStorage + 764) | updated;
    FigSimpleMutexUnlock();
    if (!v8)
    {
      FigAlternateFilterMonitorForPlaybackBitrateStartup(a2);
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  CFRelease(a2);
}

BOOL fampb_hasOnlyAudioInValidAlternateList(uint64_t a1)
{
  theArray = 0;
  fampb_copyValidAlternateList(*(a1 + 264), &theArray);
  if (!theArray)
  {
    return 0;
  }

  v1 = CFArrayGetCount(theArray) >= 1 && FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v1;
}

uint64_t fampb_updateSmoothRTT(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  *(DerivedStorage + 1248) = (a2 + 2 * *(DerivedStorage + 1248)) / 3;
  v5 = *(DerivedStorage + 480);
  if (v5 <= 2.22507386e-308)
  {
    result = FigGetUpTimeNanoseconds();
  }

  else
  {
    result = ((*(DerivedStorage + 472) - v5) * 1000000000.0);
  }

  *(v4 + 1256) = result;
  return result;
}

uint64_t fampb_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 64);
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
    fampb_copyFilterForCurrentState_cold_1(&v7);
    return v7;
  }
}

unint64_t fampb_AlternateZeroIndexComparator(uint64_t a1, uint64_t a2)
{
  ZeroIndexedAlternateIndex = FigAlternateGetZeroIndexedAlternateIndex(a1);
  v4 = FigAlternateGetZeroIndexedAlternateIndex(a2);
  return (ZeroIndexedAlternateIndex > v4) - (ZeroIndexedAlternateIndex < v4);
}

__n128 fampb_primeTimeTillDryTimer(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = MEMORY[0x1E6960C70];
  if (!*(DerivedStorage + 528))
  {
    v7 = fampb_timerDispatchSourceCreate(*(DerivedStorage + 32), a1, fampb_switchLowTimerProcUnlocked);
    *(v5 + 528) = v7;
    if (v7)
    {
      CMTimebaseAddTimerDispatchSource(*(v5 + 592), v7);
    }

    v8 = *v6;
    *(v5 + 536) = *v6;
    v9 = v6[1].n128_u64[0];
    *(v5 + 552) = v9;
    *(v5 + 560) = v8;
    *(v5 + 576) = v9;
  }

  v10 = (v5 + 536);
  if ((*(v5 + 548) & 1) == 0 || (lhs = *a2, *&rhs.value = xmmword_196E78100, rhs.epoch = 0, CMTimeAdd(&time1, &lhs, &rhs), *&lhs.value = *v10, lhs.epoch = *(v5 + 552), CMTimeCompare(&time1, &lhs) < 0))
  {
    v13 = *(v5 + 592);
    v14 = *(v5 + 528);
    lhs = *a2;
    CMTimebaseSetTimerDispatchSourceNextFireTime(v13, v14, &lhs, 1u);
    v15 = *&a2->value;
    *(v5 + 552) = a2->epoch;
    *v10 = v15;
    result = *v6;
    *(v5 + 560) = *v6;
    *(v5 + 576) = v6[1].n128_u64[0];
  }

  else
  {
    *&lhs.value = *v10;
    lhs.epoch = *(v5 + 552);
    *&rhs.value = xmmword_196E78100;
    rhs.epoch = 0;
    CMTimeAdd(&time1, &lhs, &rhs);
    lhs = *a2;
    if (CMTimeCompare(&lhs, &time1) >= 1)
    {
      v12 = (v5 + 560);
      if ((*(v5 + 572) & 1) == 0 || (lhs = *a2, *&rhs.value = *v12, rhs.epoch = *(v5 + 576), CMTimeCompare(&lhs, &rhs) >= 1))
      {
        result = *&a2->value;
        *(v5 + 576) = a2->epoch;
        *v12 = result;
      }
    }
  }

  return result;
}

BOOL fampb_ConcurrentSwitchUpValidForLongEnough(uint64_t a1)
{
  v2 = *(a1 + 200);
  if ((v2 < 1 || ((v3 = *(a1 + 216), v3 <= 2.22507386e-308) ? (UpTimeNanoseconds = FigGetUpTimeNanoseconds(), v2 = *(a1 + 200)) : (UpTimeNanoseconds = ((*(a1 + 208) - v3) * 1000000000.0)), UpTimeNanoseconds - v2 < (*(a1 + 184) * 0.95 * 1000000000.0))) && *(a1 + 81))
  {
    return *(a1 + 84) != 0;
  }

  else
  {
    return 1;
  }
}

float fampb_proportionOfFullBufferForConcurrentSwitching(uint64_t a1, CMTime *a2)
{
  v7 = *a2;
  Seconds = CMTimeGetSeconds(&v7);
  v4 = *(a1 + 184);
  if (v4 <= 0.0)
  {
    v7 = *(a1 + 100);
    v5 = CMTimeGetSeconds(&v7);
  }

  else
  {
    v5 = v4 + v4;
  }

  return Seconds / v5;
}

uint64_t fampb_trialSwitchDownInProgress(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(result);
    return PeakBitRate < FigAlternateGetPeakBitRate(*(a1 + 8));
  }

  return result;
}

CMTime *fampb_nextTimeToCheckConcurrentSwitchDown@<X0>(CMTime *a1@<X0>, CMTime *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  time = *a1;
  Seconds = CMTimeGetSeconds(&time);
  CMTimeMakeWithSeconds(&time, Seconds / a3 * a4, 90000);
  v10 = *a1;
  return CMTimeSubtract(a2, &v10, &time);
}

uint64_t fampb_AlternateRankingScoreComparator(uint64_t a1, uint64_t a2)
{
  RankingScore = FigAlternateGetRankingScore(a1);
  v4 = FigAlternateGetRankingScore(a2);
  return (__PAIR128__(RankingScore > v4, *&RankingScore) - *&v4) >> 64;
}

unint64_t fampb_AlternatePeakBitrateComparator(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  return (PeakBitRate > v4) - (PeakBitRate < v4);
}

CFDataRef fampb_serializeBitrateCurve(_DWORD *a1, uint64_t a2, const __CFData *a3, float a4, float a5)
{
  BitrateCurveDataPointCount = FigMediaPlaylistUtilityGetBitrateCurveDataPointCount(a3);
  result = FigMediaPlaylistUtilityGetBitrateCurveDataPoints(a3);
  *a1 = 0;
  if (BitrateCurveDataPointCount >= 1 && a5 >= 0.0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0.0;
    v15 = 1;
    do
    {
      if (v14 >= a4)
      {
        if (!v12)
        {
          a1[1] = (v14 * 1000.0);
        }

        v17 = (a2 + 8 * v13);
        *v17 = *(result + 1);
        v16 = *result;
        v17[1] = *result;
        ++v13;
        *a1 = ++v12;
      }

      else
      {
        v16 = *result;
      }

      if (v15 >= BitrateCurveDataPointCount)
      {
        break;
      }

      v14 = v14 + v16;
      result = (result + 8);
      ++v15;
    }

    while (v14 <= a5);
  }

  return result;
}

uint64_t fampb_serializeRecordedAlternateListToBitMap(CFArrayRef theArray, uint64_t a2, void *a3)
{
  v6 = 0;
  *a3 = 0;
  a3[1] = 0;
  v7 = 5227;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); ; i = 0)
  {
    if (v6 >= i)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    ZeroIndexedAlternateIndex = FigAlternateGetZeroIndexedAlternateIndex(ValueAtIndex);
    if (ZeroIndexedAlternateIndex > 1023)
    {
      break;
    }

    v11 = *(a2 + 2 * ZeroIndexedAlternateIndex);
    if (v11 > 0x7F)
    {
      v7 = 5229;
      break;
    }

    *(a3 + (v11 >> 3)) |= 1 << (v11 & 7);
    ++v6;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  fampb_serializeRecordedAlternateListToBitMap_cold_1(v7, &v13);
  return v13;
}

void OUTLINED_FUNCTION_0_136(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  *(v18 + 44) = v17;
  *(v18 + 54) = v19;
  *(v18 + 66) = a17;
  *(v18 + 82) = v20;
  *(v18 + 92) = v21;
  *(v18 + 102) = v22;
}

void OUTLINED_FUNCTION_1_121(int a1@<W8>, double a2@<D0>)
{
  *(v2 + 124) = a2;
  *(v2 + 134) = a1;
  *(v2 + 146) = v3;
}

Float64 OUTLINED_FUNCTION_5_82(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *time, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 timea, uint64_t time_16)
{
  timea = *(v36 + 600);
  time_16 = *(v36 + 616);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_6_76()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_8_44()
{
  result = *v0;
  *(v1 - 80) = *v0;
  *(v1 - 64) = v0[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_10_43(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v9 + 214) = a1;
  *(v9 + 216) = a6;
  *(v9 + 220) = a1;
  *(v9 + 222) = v8;
  *(v9 + 226) = a1;
  *(v9 + 228) = a5;
  *(v9 + 232) = v7;
  *(v9 + 234) = v6;
}

Float64 OUTLINED_FUNCTION_11_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *time, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 timea, uint64_t time_16)
{
  timea = *(v36 + 364);
  time_16 = *(v36 + 380);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_12_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  a17 = 0;

  return fampb_createRecordABREventEntryForNowAndInsertQ(v17, &a17);
}

double OUTLINED_FUNCTION_13_34(double a1)
{
  v3 = fabsf(*(v1 + 420));
  if (v3 <= 1.0)
  {
    v3 = 1.0;
  }

  result = a1 * ceilf(v3);
  *(v2 + 176) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  *(v16 - 80) = a15;
  *(v16 - 64) = a16;
  return v16 - 80;
}

void OUTLINED_FUNCTION_18_26(uint64_t a1@<X8>)
{
  *(v3 + 180) = a1;
  *(v3 + 188) = 2048;
  *(v3 + 190) = v1;
  *(v3 + 198) = 2112;
  *(v3 + 200) = v2;
  *(v3 + 208) = 1024;
}

void OUTLINED_FUNCTION_20_21(uint64_t a1@<X8>)
{
  *(v3 + 180) = v1;
  *(v3 + 188) = 2048;
  *(v3 + 190) = v2;
  *(v3 + 198) = 2112;
  *(v3 + 200) = a1;
  *(v3 + 208) = 1024;
}

uint64_t OUTLINED_FUNCTION_23_28@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v2 + 214) = a2;
  *(v2 + 216) = result;
  return result;
}

CMTime *OUTLINED_FUNCTION_25_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = *(v35 + 592);

  return CMTimebaseGetTime(&a35, v37);
}

uint64_t OUTLINED_FUNCTION_26_21()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFTypeID OUTLINED_FUNCTION_27_18()
{

  return CFGetTypeID(v0);
}

uint64_t OUTLINED_FUNCTION_32_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time1, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 time1a, uint64_t time1_16)
{
  time1a = *v20;
  time1_16 = *(v20 + 2);

  return CMTimeCompare(&time1a, (v21 - 80));
}

__n128 OUTLINED_FUNCTION_33_17()
{
  *(v1 - 64) = *(v0 + 744);
  result = *(v0 + 728);
  *(v1 - 80) = result;
  return result;
}

double OUTLINED_FUNCTION_38_13()
{
  *v0 = *(v1 + 216);
  *(v2 - 128) = *(v1 + 232);

  return CMTimeGetSeconds((v2 - 144));
}

__n128 OUTLINED_FUNCTION_42_13@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 + 544) = *a1;
  *(v1 + 560) = v2;
  result = *(a1 + 32);
  *(v1 + 576) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_43_12@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 - 144) = *a1;
  *(v1 - 128) = v2;
  result = *(a1 + 32);
  *(v1 - 112) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_44_14@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v2;
  result = *(a1 + 32);
  *(v1 + 288) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v17, kCFNumberDoubleType, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_54_13(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return fampb_canSwitchDownConcurrentlyWithoutStall(v8, a1, a3, v9, v6, a6, v7);
}

double OUTLINED_FUNCTION_56_11()
{
  v2 = *(v0 + 592);

  return CMTimebaseGetRate(v2);
}

uint64_t MTAudioProcessingTapXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (CMBaseObjectGetVTable() == &aptapR_VTable)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        result = 0;
        *a2 = *(DerivedStorage + 8);
      }

      else
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      MTAudioProcessingTapXPCRemoteGetObjectID_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    MTAudioProcessingTapXPCRemoteGetObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t aptapR_EnsureClientEstablished(int a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x6802000000;
  v10[3] = __Block_byref_object_copy__9;
  v10[4] = __Block_byref_object_dispose__9;
  v10[5] = 1;
  v10[6] = aptapR_HandleDeadServerConnection;
  v10[7] = aptapR_ProcessNotification;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  if ((a1 & 0x1000000) != 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __aptapR_EnsureClientEstablished_block_invoke;
    block[3] = &unk_1E748F420;
    block[4] = v10;
    if (aptapR_EnsureClientEstablished_gAudioProcessingTapRemoteClientForAirplaydSetupOnce == -1)
    {
      goto LABEL_5;
    }

    v6 = &aptapR_EnsureClientEstablished_gAudioProcessingTapRemoteClientForAirplaydSetupOnce;
    v7 = block;
    goto LABEL_13;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __aptapR_EnsureClientEstablished_block_invoke_2;
  v8[3] = &unk_1E748F448;
  v8[4] = v10;
  if (aptapR_EnsureClientEstablished_gAudioProcessingTapRemoteClientForMediaplaybackdSetupOnce != -1)
  {
    v6 = &aptapR_EnsureClientEstablished_gAudioProcessingTapRemoteClientForMediaplaybackdSetupOnce;
    v7 = v8;
LABEL_13:
    dispatch_once(v6, v7);
  }

LABEL_5:
  v2 = &gAudioProcessingTapRemoteClientForAirplayd;
  if ((a1 & 0x1000000) == 0)
  {
    v2 = &gAudioProcessingTapRemoteClientForMediaplaybackd;
  }

  v3 = *v2;
  if (aptapR_EnsureClientEstablished_err)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  _Block_object_dispose(v10, 8);
  return v4;
}

OSStatus MTAudioProcessingTapGetSourceAudio(MTAudioProcessingTapRef tap, CMItemCount numberFrames, AudioBufferList *bufferListInOut, MTAudioProcessingTapFlags *flagsOut, CMTimeRange *timeRangeOut, CMItemCount *numberFramesOut)
{
  v10 = numberFrames;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    MTAudioProcessingTapGetSourceAudio_cold_1(&v15);
    return v15;
  }

  else
  {
    v13 = DerivedStorage + 24;
    do
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    while (*(v13 + 98) != 1);
    if (!*(v13 + 8))
    {
LABEL_9:
      MTAudioProcessingTapGetSourceAudio_cold_2(&v16);
      return v16;
    }

    return aptapR_GetSourceAudio(tap, v13, v10, bufferListInOut, flagsOut, timeRangeOut, numberFramesOut);
  }
}

uint64_t MTAudioProcessingTapGetMediaTimeRange(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    MTAudioProcessingTapGetMediaTimeRange_cold_1(v8);
  }

  else
  {
    v5 = DerivedStorage + 24;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (*(v5 + 98) == 1)
      {
        if (*(v5 + 8))
        {
          aptapR_GetMediaTimeRange(v5, v8);
          result = 0;
          v7 = v8[1];
          *a3 = v8[0];
          a3[1] = v7;
          a3[2] = v8[2];
          return result;
        }

        break;
      }
    }

    MTAudioProcessingTapGetMediaTimeRange_cold_2(v8);
  }

  return LODWORD(v8[0]);
}

double aptapR_GetMediaTimeRange@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v5;
  a2[2] = *(v4 + 32);
  if (*(a1 + 96))
  {
    if (ATSubmixTapGetTime())
    {
      return result;
    }
  }

  else if (AudioQueueProcessingTapGetQueueTime_CM2())
  {
    return result;
  }

  return MTAudioProcessingTapConvertStreamTimeToMediaTime(0, (*(a1 + 56) + 0.5), 0, 0, a2, 0.0, 0.0, 0.0);
}

uint64_t MTAudioProcessingTapGetTrackSourceAudio(uint64_t a1, int a2, UInt32 a3, AudioBufferList *a4, AudioQueueProcessingTapFlags *a5, _OWORD *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 32))
    {
      MTAudioProcessingTapGetTrackSourceAudio_cold_1(&v17);
      return v17;
    }

    else
    {
      v15 = *(DerivedStorage + 24);
      if (!v15)
      {
        goto LABEL_7;
      }

      while (!*(v15 + 98) || *(v15 + 40) != a2)
      {
        v15 = *v15;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      if (*(v15 + 8))
      {

        return aptapR_GetSourceAudio(a1, v15, a3, a4, a5, a6, a7);
      }

      else
      {
LABEL_7:
        MTAudioProcessingTapGetTrackSourceAudio_cold_2(&v18);
        return v18;
      }
    }
  }

  else
  {
    MTAudioProcessingTapGetTrackSourceAudio_cold_3(&v19);
    return v19;
  }
}

uint64_t MTAudioProcessingTapGetStreamSourceAudio(uint64_t a1, int a2, UInt32 a3, AudioBufferList *a4, AudioQueueProcessingTapFlags *a5, _OWORD *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 32) == 1)
    {
      v15 = *(DerivedStorage + 24);
      if (!v15)
      {
        goto LABEL_7;
      }

      while (!*(v15 + 98) || *(v15 + 44) != a2)
      {
        v15 = *v15;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      if (*(v15 + 8))
      {

        return aptapR_GetSourceAudio(a1, v15, a3, a4, a5, a6, a7);
      }

      else
      {
LABEL_7:
        MTAudioProcessingTapGetStreamSourceAudio_cold_2(&v18);
        return v18;
      }
    }

    else
    {
      MTAudioProcessingTapGetStreamSourceAudio_cold_1(&v17);
      return v17;
    }
  }

  else
  {
    MTAudioProcessingTapGetStreamSourceAudio_cold_3(&v19);
    return v19;
  }
}

double MTAudioProcessingTapGetTrackMediaTimeRange(uint64_t a1, int a2, uint64_t a3, _OWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 32))
    {
      MTAudioProcessingTapGetTrackMediaTimeRange_cold_1(v10);
    }

    else
    {
      v7 = *(DerivedStorage + 24);
      if (!v7)
      {
        goto LABEL_7;
      }

      while (!*(v7 + 98) || *(v7 + 40) != a2)
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      if (*(v7 + 8))
      {
        aptapR_GetMediaTimeRange(v7, v10);
        v9 = v10[1];
        *a4 = v10[0];
        a4[1] = v9;
        result = *&v11;
        a4[2] = v11;
      }

      else
      {
LABEL_7:
        MTAudioProcessingTapGetTrackMediaTimeRange_cold_2(v10);
      }
    }
  }

  else
  {
    MTAudioProcessingTapGetTrackMediaTimeRange_cold_3(v10);
  }

  return result;
}

double MTAudioProcessingTapGetStreamMediaTimeRange(uint64_t a1, int a2, uint64_t a3, _OWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 32) == 1)
    {
      v7 = *(DerivedStorage + 24);
      if (!v7)
      {
        goto LABEL_7;
      }

      while (!*(v7 + 98) || *(v7 + 44) != a2)
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      if (*(v7 + 8))
      {
        aptapR_GetMediaTimeRange(v7, v10);
        v9 = v10[1];
        *a4 = v10[0];
        a4[1] = v9;
        result = *&v11;
        a4[2] = v11;
      }

      else
      {
LABEL_7:
        MTAudioProcessingTapGetStreamMediaTimeRange_cold_2(v10);
      }
    }

    else
    {
      MTAudioProcessingTapGetStreamMediaTimeRange_cold_1(v10);
    }
  }

  else
  {
    MTAudioProcessingTapGetStreamMediaTimeRange_cold_3(v10);
  }

  return result;
}

__CFString *aptapR_BaseClass_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (*(DerivedStorage + 128))
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(DerivedStorage + 8);
    v6 = CFGetRetainCount(a1);
    if (v4 == 1)
    {
      v16 = *(DerivedStorage + 104);
      v17 = *(DerivedStorage + 112);
      v15 = *(DerivedStorage + 88);
      v13 = *(DerivedStorage + 72);
      v14 = *(DerivedStorage + 80);
      v11 = *(DerivedStorage + 56);
      v12 = *(DerivedStorage + 64);
      v7 = @"<MTMultitrackAudioProcessingTap(XPC) V1 %p> ObjectID %lld Retain count %d Created with i/f/p/u/t/p2/u2/t2 callbacks = {%p/%p/%p/%p/%p/%p/%p/%p} flags = 0x%x";
    }

    else
    {
      v14 = *(DerivedStorage + 80);
      *&v15 = *(DerivedStorage + 112);
      v12 = *(DerivedStorage + 64);
      v13 = *(DerivedStorage + 72);
      v11 = *(DerivedStorage + 56);
      v7 = @"<MTMultitrackAudioProcessingTap(XPC) V0 %p> ObjectID %lld Retain count %d Created with i/f/p/u/t callbacks = {%p/%p/%p/%p/%p} flags = 0x%x";
    }

    CFStringAppendFormat(Mutable, 0, v7, a1, v5, v6, *(DerivedStorage + 48), v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v8 = *(DerivedStorage + 8);
    v9 = CFGetRetainCount(a1);
    CFStringAppendFormat(Mutable, 0, @"<MTAudioProcessingTapRemote(XPC) %p> ObjectID %lld Retain count %d Created with i/f/p/u/t callbacks = {%p/%p/%p/%p/%p} flags = 0x%x", a1, v8, v9, *(DerivedStorage + 44), *(DerivedStorage + 52), *(DerivedStorage + 60), *(DerivedStorage + 68), *(DerivedStorage + 76), *(DerivedStorage + 112));
  }

  return Mutable;
}

uint64_t aptapR_UnprepareTapIfPrepared(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(a2 + 97))
  {
    if (!*(result + 128))
    {
      v8 = *(result + 68);
      if (v8)
      {
        result = v8(a1);
      }

      goto LABEL_12;
    }

    v5 = *(result + 32);
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_12;
      }

      v6 = *(result + 96);
      if (!v6)
      {
        goto LABEL_12;
      }

      v7 = *(a2 + 44);
    }

    else
    {
      v6 = *(result + 72);
      if (!v6)
      {
LABEL_12:
        *(a2 + 97) = 0;
        return result;
      }

      v7 = *(a2 + 40);
    }

    result = v6(a1, v7);
    goto LABEL_12;
  }

  return result;
}

void *__move_constructor_8_8_t0w8_pa0_17755_8_pa0_43205_16_pa0_2991_24_pa0_32134_32_pa0_55249_40_pa0_13544_48_pa0_52014_56(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  return result;
}

uint64_t aptapR_HandleDeadServerConnection(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1) = 1;
  FigSimpleMutexLock();
  for (i = *(DerivedStorage + 24); i; i = *i)
  {
    if (i[1])
    {
      aptapR_UnprepareTapIfPrepared(a1, i);
      i[1] = 0;
      if (a1)
      {
        CFRelease(a1);
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t aptapR_ProcessNotification(const void *a1, const void *a2, uint64_t a3, const __CFDictionary *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    return 1;
  }

  PointerFromCFDictionary = MTAudioProcessingTapGetPointerFromCFDictionary(@"AQTapServerPointer", a4);
  v8 = MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixTapServerPointer", a4);
  if (!CFEqual(a2, @"MTAudioProcessingTapServerToRemote_InitializeTap"))
  {
    if (CFEqual(a2, @"MTAudioProcessingTapServerToRemote_CreateAQTap"))
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!AudioQueueProcessingTapNew_CMClient())
      {
        FigSimpleMutexLock();
        v13 = (DerivedStorage + 24);
        v14 = (DerivedStorage + 24);
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          if (FigAtomicCompareAndSwapPtr())
          {
            v15 = v14;
            goto LABEL_32;
          }
        }

        v20 = malloc_type_calloc(1uLL, 0x70uLL, 0x10E0040AD315C60uLL);
        if (!v20)
        {
          FigSimpleMutexUnlock();
          goto LABEL_64;
        }

        v15 = v20;
        v20[1] = 0;
LABEL_32:
        v15[2] = PointerFromCFDictionary;
        v15[3] = 0;
        *(v15 + 7) = 0u;
        v15[4] = 0;
        *(v15 + 10) = 0;
        *(v15 + 11) = 0;
        *(v15 + 12) = 0;
        *(v15 + 9) = 0u;
        v15[11] = 0;
        *(v15 + 48) = 0;
        *(v15 + 98) = 0;
        if (v14)
        {
          FigMemoryBarrier();
          if (!a1)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *v15 = *v13;
          FigMemoryBarrier();
          *v13 = v15;
          if (!a1)
          {
LABEL_35:
            FigSimpleMutexUnlock();
            if (!FigXPCCreateBasicMessage())
            {
              xpc_dictionary_set_uint64(0, "AQTapServerToken", PointerFromCFDictionary);
              FigXPCRemoteClientSendSyncMessage();
            }

            goto LABEL_64;
          }
        }

        CFRetain(a1);
        goto LABEL_35;
      }
    }

    else
    {
      if (CFEqual(a2, @"MTAudioProcessingTapServerToRemote_DisposeAQTap"))
      {
        v16 = CMBaseObjectGetDerivedStorage();
        v17 = (CMBaseObjectGetDerivedStorage() + 24);
        while (1)
        {
          v17 = *v17;
          if (!v17)
          {
            return 1;
          }

          if (v17[2] == PointerFromCFDictionary)
          {
            v18 = v17[1];
            if (v18)
            {
              FigSimpleMutexLock();
              v19 = (v16 + 24);
              while (1)
              {
                v19 = *v19;
                if (!v19)
                {
                  break;
                }

                if (FigAtomicCompareAndSwapPtr())
                {
                  aptapR_UnprepareTapIfPrepared(a1, v19);
                  AudioQueueProcessingTapDispose(v18);
                  if (a1)
                  {
                    CFRelease(a1);
                  }

                  break;
                }
              }

              FigSimpleMutexUnlock();
            }

            return 1;
          }
        }
      }

      if (!CFEqual(a2, @"MTAudioProcessingTapServerToRemoteNotification_CreateSubmixTap"))
      {
        if (CFEqual(a2, @"MTAudioProcessingTapServerToRemote_DisposeSubmixTap"))
        {
          aptapR_DisposeSubmixTap(a1, v8);
        }

        return 1;
      }

      MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixDestinationTapServerPointer", a4);
      v26 = MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixID", a4);
      v27 = CMBaseObjectGetDerivedStorage();
      if (!ATSubmixTapNew_CMClient())
      {
        FigSimpleMutexLock();
        v28 = (v27 + 24);
        v29 = (v27 + 24);
        while (1)
        {
          v29 = *v29;
          if (!v29)
          {
            break;
          }

          if (FigAtomicCompareAndSwapPtr())
          {
            v30 = v29;
            goto LABEL_70;
          }
        }

        v32 = malloc_type_calloc(1uLL, 0x70uLL, 0x10E0040AD315C60uLL);
        if (!v32)
        {
          FigSimpleMutexUnlock();
          goto LABEL_64;
        }

        v30 = v32;
        v32[1] = 0;
LABEL_70:
        v30[2] = 0;
        v30[3] = v8;
        *(v30 + 7) = 0u;
        v30[4] = v26;
        v30[5] = 0;
        *(v30 + 12) = 0;
        *(v30 + 9) = 0u;
        v30[11] = 0;
        *(v30 + 48) = 1;
        *(v30 + 98) = 0;
        if (v29)
        {
          FigMemoryBarrier();
        }

        else
        {
          *v30 = *v28;
          FigMemoryBarrier();
          *v28 = v30;
        }

        if (a1)
        {
          CFRetain(a1);
        }

        FigSimpleMutexUnlock();
        if (!FigXPCCreateBasicMessage())
        {
          xpc_dictionary_set_uint64(0, "SubmixID", v26);
          FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

LABEL_64:
    FigXPCRelease();
    return 1;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  if (PointerFromCFDictionary)
  {
    v10 = CMBaseObjectGetDerivedStorage() + 24;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_38;
      }

      if (*(v10 + 16) == PointerFromCFDictionary)
      {
        v11 = 0;
        v10 = *(v10 + 8);
        goto LABEL_42;
      }
    }
  }

  if (!v8)
  {
    v10 = 0;
LABEL_38:
    v11 = 0;
    goto LABEL_42;
  }

  v11 = CMBaseObjectGetDerivedStorage() + 24;
  while (1)
  {
    v11 = *v11;
    if (!v11)
    {
      break;
    }

    if (*(v11 + 24) == v8)
    {
      v10 = 0;
      v11 = *(v11 + 8);
      goto LABEL_42;
    }
  }

  v10 = 0;
LABEL_42:
  if (v10 | v11)
  {
    v21 = (v9 + 24);
    do
    {
      v21 = *v21;
      if (!v21)
      {
        return 1;
      }

      v22 = v21[1];
    }

    while (v22 != v10 && v22 != v11);
    if (!aptapR_PrepareTapIfNeeded(a1, v21, 0, 0))
    {
      return 1;
    }

    if (!FigXPCCreateBasicMessage())
    {
      if (PointerFromCFDictionary)
      {
        v24 = "AQTapServerToken";
        v25 = PointerFromCFDictionary;
      }

      else
      {
        if (!v8)
        {
LABEL_63:
          FigXPCRemoteClientSendSyncMessage();
          goto LABEL_64;
        }

        v24 = "SubmixID";
        v25 = v21[4];
      }

      xpc_dictionary_set_uint64(0, v24, v25);
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  return 1;
}

uint64_t aptapR_DisposeSubmixTap(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  v6 = (result + 24);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      return result;
    }

    if (v6[3] == a2)
    {
      if (v6[1])
      {
        FigSimpleMutexLock();
        v7 = DerivedStorage + 24;
        while (1)
        {
          v7 = *v7;
          if (!v7)
          {
            break;
          }

          if (FigAtomicCompareAndSwapPtr())
          {
            aptapR_UnprepareTapIfPrepared(a1, v7);
            ATSubmixTapDispose();
            *(v7 + 96) = 0;
            *(v7 + 24) = 0;
            *(v7 + 32) = 0;
            if (a1)
            {
              CFRelease(a1);
            }

            break;
          }
        }

        return FigSimpleMutexUnlock();
      }

      return result;
    }
  }
}

uint64_t aptapR_PrepareTapIfNeeded(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (!*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 60))
    {
      goto LABEL_9;
    }

    return 1;
  }

  v10 = *(DerivedStorage + 32);
  if (!v10)
  {
    if (*(DerivedStorage + 64))
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (v10 == 1 && !*(DerivedStorage + 88))
  {
    return 1;
  }

LABEL_9:
  v11 = *(a2 + 8);
  v12 = CMBaseObjectGetDerivedStorage() + 24;
  do
  {
    v12 = *v12;
    if (!v12)
    {
      return 0;
    }
  }

  while (*(v12 + 8) != v11);
  v13 = *(v12 + 48);
  v14 = *(v12 + 72);
  v18[0] = *(v12 + 56);
  v18[1] = v14;
  v19 = *(v12 + 88);
  if (!a4)
  {
    a4 = v18;
  }

  if (!a3)
  {
    a3 = v13;
  }

  if (*(a2 + 97) && *(a2 + 48) == a3 && !memcmp((a2 + 56), a4, 0x28uLL))
  {
    return 1;
  }

  *(a2 + 48) = a3;
  v15 = *a4;
  v16 = a4[1];
  *(a2 + 88) = *(a4 + 4);
  *(a2 + 72) = v16;
  *(a2 + 56) = v15;
  aptapR_UnprepareTapIfPrepared(a1, a2);
  if (*(v9 + 128))
  {
    if (*(v9 + 32) == 1)
    {
      (*(v9 + 88))(a1, *(a2 + 44), v13, a4);
    }

    else
    {
      (*(v9 + 64))(a1, *(a2 + 40), v13, a4);
    }
  }

  else
  {
    (*(v9 + 60))(a1, v13, a4);
  }

  result = 1;
  *(a2 + 97) = 1;
  return result;
}

uint64_t aptapR_ProcessingTapCallback(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  result = CMBaseObjectGetDerivedStorage();
  v15 = result;
  v19 = 0;
  v18 = 0;
  v16 = result + 24;
  while (1)
  {
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    if (*(v16 + 8) == a2)
    {
      result = aptapR_PrepareTapIfNeeded(a1, v16, 0, 0);
      if (result)
      {
        *(v16 + 98) = 1;
        *(v16 + 104) = a4;
        if (*(v15 + 128))
        {
          v17 = *a5;
          if (*(v15 + 32) == 1)
          {
            result = (*(v15 + 104))(a1, *(v16 + 44), a3, v17, a7, &v19, &v18);
          }

          else
          {
            result = (*(v15 + 80))(a1, *(v16 + 40), a3, v17, a7, &v19, &v18);
          }
        }

        else
        {
          result = (*(v15 + 76))(a1, a3, *a5, a7, &v19, &v18);
        }

        *a6 = v19;
        *a5 = v18;
        *(v16 + 98) = 0;
      }

      return result;
    }
  }

  return result;
}

uint64_t submixTap_TapFormatChangeCallback(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  result = CMBaseObjectGetDerivedStorage();
  v9 = (result + 24);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (v9[1] == a2)
    {

      return aptapR_PrepareTapIfNeeded(a1, v9, a3, a4);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_118(uint64_t a1)
{
  *(v1 + 8) = a1;

  return FigXPCRemoteClientAssociateObject();
}

uint64_t OUTLINED_FUNCTION_3_97()
{

  return FigXPCCreateBasicMessage();
}

uint64_t FigPathwayValidateStableVariantAndRenditionIDs(const __CFArray *a1)
{
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = 0;
    v4 = MEMORY[0x1E695E9F8];
    v5 = 200;
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(a1); ; i = 0)
    {
      if (v3 >= i)
      {
        goto LABEL_16;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      PathwayID = FigAlternateGetPathwayID(ValueAtIndex);
      StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(ValueAtIndex);
      if (CFDictionaryContainsKey(Mutable, PathwayID))
      {
        break;
      }

      v11 = CFSetCreateMutable(allocator, 0, v4);
      if (!v11)
      {
        goto LABEL_15;
      }

      v10 = v11;
      CFDictionarySetValue(Mutable, PathwayID, v11);
      CFRelease(v10);
      if (StableStreamIdentifier)
      {
        goto LABEL_8;
      }

LABEL_9:
      ++v3;
      if (a1)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    v10 = CFDictionaryGetValue(Mutable, PathwayID);
    if (!StableStreamIdentifier)
    {
      goto LABEL_9;
    }

LABEL_8:
    CFSetSetValue(v10, StableStreamIdentifier);
    goto LABEL_9;
  }

  v5 = 189;
LABEL_15:
  if (!FigPathwayValidateStableVariantAndRenditionIDs_cold_1(v5, &v59))
  {
    v13 = 0;
    goto LABEL_80;
  }

LABEL_16:
  Count = CFDictionaryGetCount(Mutable);
  v13 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!v13)
  {
    FigPathwayValidateStableVariantAndRenditionIDs_cold_5(&v59);
    goto LABEL_80;
  }

  CFDictionaryGetKeysAndValues(Mutable, v13, 0);
  v14 = CFArrayCreate(allocator, v13, Count, MEMORY[0x1E695E9C0]);
  if (!v14)
  {
    FigPathwayValidateStableVariantAndRenditionIDs_cold_4(&v59);
LABEL_80:
    v46 = v59;
    free(v13);
    v18 = 0;
    if (Mutable)
    {
      goto LABEL_66;
    }

    goto LABEL_67;
  }

  v15 = v14;
  if (!figSteering_validatePathwayToStableVariantOrRenditionIDDictionary(Mutable, v14))
  {
    FigPathwayValidateStableVariantAndRenditionIDs_cold_3(v13, &v59);
    v18 = 0;
    v46 = v59;
    goto LABEL_65;
  }

  v49 = v13;
  v50 = v15;
  v16 = MEMORY[0x1E695E9D8];
  v17 = MEMORY[0x1E695E9E8];
  v18 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = CFDictionaryCreateMutable(allocator, 0, v16, v17);
  v52 = CFDictionaryCreateMutable(allocator, 0, v16, v17);
  cf = CFDictionaryCreateMutable(allocator, 0, v16, v17);
  if (!v18)
  {
    v48 = 276;
    v20 = v49;
    v21 = v19;
LABEL_87:
    v22 = v52;
LABEL_76:
    FigPathwayValidateStableVariantAndRenditionIDs_cold_2(v48, &v59);
    v46 = v59;
    goto LABEL_54;
  }

  v20 = v49;
  v21 = v19;
  if (!v19)
  {
    v48 = 277;
    goto LABEL_87;
  }

  v22 = v52;
  if (!v52)
  {
    v48 = 278;
    goto LABEL_76;
  }

  if (!cf)
  {
    v48 = 279;
    goto LABEL_76;
  }

  v23 = 0;
  v51 = Mutable;
  while (1)
  {
    if (a1)
    {
      v24 = CFArrayGetCount(a1);
    }

    else
    {
      v24 = 0;
    }

    if (v23 >= v24)
    {
      v46 = 0;
      v20 = v49;
      goto LABEL_54;
    }

    v55 = v23;
    v25 = CFArrayGetValueAtIndex(a1, v23);
    v26 = FigAlternateGetPathwayID(v25);
    value = FigAlternateGetAudioGroupIDString(v25);
    VideoGroupIDString = FigAlternateGetVideoGroupIDString(v25);
    SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(v25);
    if (!CFDictionaryContainsKey(v18, v26))
    {
      v27 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      if (!v27)
      {
        v20 = v49;
        v48 = 292;
        goto LABEL_76;
      }

      v28 = v27;
      CFDictionarySetValue(v18, v26, v27);
      CFRelease(v28);
    }

    if (!CFDictionaryContainsKey(v21, v26))
    {
      v29 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      if (!v29)
      {
        v48 = 301;
        goto LABEL_75;
      }

      v30 = v29;
      CFDictionarySetValue(v21, v26, v29);
      CFRelease(v30);
    }

    if (!CFDictionaryContainsKey(v22, v26))
    {
      v31 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      if (!v31)
      {
        v48 = 309;
        goto LABEL_75;
      }

      v32 = v31;
      CFDictionarySetValue(v22, v26, v31);
      CFRelease(v32);
    }

    if (!CFDictionaryContainsKey(cf, v26))
    {
      v33 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      if (v33)
      {
        v34 = v33;
        CFDictionarySetValue(cf, v26, v33);
        CFRelease(v34);
        goto LABEL_40;
      }

      v48 = 317;
LABEL_75:
      v20 = v49;
      goto LABEL_76;
    }

LABEL_40:
    v35 = a1;
    v36 = v21;
    v37 = v18;
    v38 = CFDictionaryGetValue(v18, v26);
    v39 = v22;
    v40 = v36;
    v41 = CFDictionaryGetValue(v36, v26);
    v42 = CFDictionaryGetValue(v39, v26);
    v43 = CFDictionaryGetValue(cf, v26);
    if (value && !CFSetContainsValue(v41, value))
    {
      v44 = figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet(v38, 1936684398, v25);
      if (v44)
      {
        goto LABEL_70;
      }

      CFSetSetValue(v41, value);
    }

    if (VideoGroupIDString && !CFSetContainsValue(v42, VideoGroupIDString))
    {
      v44 = figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet(v38, 1986618469, v25);
      if (v44)
      {
LABEL_70:
        v46 = v44;
        Mutable = v51;
        v20 = v49;
        v18 = v37;
        goto LABEL_78;
      }

      CFSetSetValue(v42, VideoGroupIDString);
    }

    v18 = v37;
    if (SubtitleGroupIDString)
    {
      if (!CFSetContainsValue(v43, SubtitleGroupIDString))
      {
        break;
      }
    }

LABEL_52:
    v23 = v55 + 1;
    a1 = v35;
    v21 = v40;
    Mutable = v51;
    v22 = v52;
  }

  v45 = figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet(v38, 1935832172, v25);
  if (!v45)
  {
    CFSetSetValue(v43, SubtitleGroupIDString);
    goto LABEL_52;
  }

  v46 = v45;
  Mutable = v51;
  v20 = v49;
LABEL_78:
  v21 = v40;
  v22 = v52;
LABEL_54:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v46)
  {
    if (figSteering_validatePathwayToStableVariantOrRenditionIDDictionary(v18, v50))
    {
      v46 = 0;
    }

    else
    {
      v46 = FigSignalErrorAtGM();
    }
  }

  free(v20);
  v15 = v50;
LABEL_65:
  CFRelease(v15);
  if (Mutable)
  {
LABEL_66:
    CFRelease(Mutable);
  }

LABEL_67:
  if (v18)
  {
    CFRelease(v18);
  }

  return v46;
}

uint64_t figSteering_validatePathwayToStableVariantOrRenditionIDDictionary(const __CFDictionary *a1, CFArrayRef theArray)
{
  v4 = 0;
  v5 = 1;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v4 < i && v5; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    CFDictionaryGetValue(a1, ValueAtIndex);
    if (v4)
    {
      v5 = FigCFEqual();
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v5;
}

uint64_t figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet(__CFSet *a1, int a2, uint64_t a3)
{
  MediaGroupLocatorMap = FigAlternateGetMediaGroupLocatorMap(a3, a2);
  if (MediaGroupLocatorMap)
  {
    v7 = MediaGroupLocatorMap;
    Count = CFDictionaryGetCount(MediaGroupLocatorMap);
    v9 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v9)
    {
      CFDictionaryGetKeysAndValues(v7, v9, 0);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          StableStreamIdentifierForMediaSubstream = FigAlternateGetStableStreamIdentifierForMediaSubstream(a3, a2, v9[i]);
          if (StableStreamIdentifierForMediaSubstream)
          {
            CFSetSetValue(a1, StableStreamIdentifierForMediaSubstream);
          }
        }
      }

      v12 = 0;
    }

    else
    {
      figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet_cold_1(&v14);
      v12 = v14;
    }
  }

  else
  {
    figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet_cold_2(&v15);
    v9 = 0;
    v12 = v15;
  }

  free(v9);
  return v12;
}

void figSteeringClonePathwayMediaGroup(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  value = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (MutableCopy)
  {
    v8 = MutableCopy;
    v9 = *MEMORY[0x1E6962BB0];
    v10 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6962BB0]);
    v11 = CFDictionaryGetValue(v8, *MEMORY[0x1E6962BA8]);
    v12 = FigPathwayCloningApplyURIReplacement(v10, 1, v11, v5, &value);
    *v4 = v12;
    v13 = value;
    if (!v12)
    {
      if (value)
      {
        CFDictionarySetValue(v8, v9, value);
        CFDictionarySetValue(v8, *MEMORY[0x1E6962BB8], value);
      }

      CFDictionarySetValue(*v6, a1, v8);
      v13 = value;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v8);
  }

  else
  {
    figSteeringClonePathwayMediaGroup_cold_1(v4);
  }
}

uint64_t FigCaptionRendererSRTRegionSetAlignment(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 60) = a2;
  *(DerivedStorage + 64) = a3;
  return 0;
}

void FigCaptionRendererSRTRegionFinalize()
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

__CFString *FigCaptionRendererSRTRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererSRTRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererSRTRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererSRTRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererSRTRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_44:
    FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_HasChildNode_cold_1();
    return v16;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    v16 = 4294954514;
    goto LABEL_44;
  }

  v10 = v9(a2, &__s1);
  if (v10)
  {
    v16 = v10;
    goto LABEL_44;
  }

  v11 = __s1;
  if (__s1 && (!strcmp(__s1, "FigCaptionRendererStackLayoutRegion") || !strcmp(v11, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v11, "FigCaptionRendererSRTRegion")))
  {
    theString1 = 0;
    FigCaptionRendererRegionProtocolGetProtocolID();
    v17 = CMBaseObjectGetProtocolVTable();
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          v19(a2, &theString1);
        }
      }
    }

    v20 = theString1;
    if (theString1)
    {
      theArray = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (v21)
      {
        v22 = *(v21 + 2);
        if (v22 && (v23 = *(v22 + 24)) != 0)
        {
          v23(a1, &theArray);
          v21 = theArray;
        }

        else
        {
          v21 = 0;
        }
      }

      if (CFArrayGetCount(v21) < 1)
      {
LABEL_41:
        v20 = 0;
        goto LABEL_42;
      }

      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v24);
        v36 = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        v26 = CMBaseObjectGetProtocolVTable();
        if (!v26)
        {
          break;
        }

        v27 = *(v26 + 16);
        if (!v27)
        {
          break;
        }

        v28 = *(v27 + 8);
        if (!v28)
        {
          v16 = 4294954514;
          goto LABEL_48;
        }

        v29 = v28(ValueAtIndex, &v36);
        if (v29)
        {
          v16 = v29;
          goto LABEL_48;
        }

        v30 = v36;
        if (v36 && (!strcmp(v36, "FigCaptionRendererStackLayoutRegion") || !strcmp(v30, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(__s1, "FigCaptionRendererSRTRegion")))
        {
          theString2 = 0;
          FigCaptionRendererRegionProtocolGetProtocolID();
          v31 = CMBaseObjectGetProtocolVTable();
          if (v31)
          {
            v32 = *(v31 + 16);
            if (v32)
            {
              v33 = *(v32 + 16);
              if (v33)
              {
                v33(ValueAtIndex, &theString2);
              }
            }
          }

          if (CFStringCompare(theString1, theString2, 1uLL) == kCFCompareEqualTo)
          {
            v20 = 1;
            goto LABEL_42;
          }
        }

        if (CFArrayGetCount(theArray) <= ++v24)
        {
          goto LABEL_41;
        }
      }

      v16 = 4294954508;
LABEL_48:
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return v16;
    }

LABEL_42:
    v16 = 0;
    *a3 = v20;
  }

  else
  {
    v12 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13 && (v14 = *(v13 + 16)) != 0)
    {
      v15 = *(v14 + 32);
      if (v15)
      {
        return v15(v12, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 4294954508;
    }
  }

  return v16;
}