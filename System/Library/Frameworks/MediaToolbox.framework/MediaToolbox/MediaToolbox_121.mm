uint64_t MPEG2PSProcessVideoSearch(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  if (!a5)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v23 = 0;
  PesPacketListSaveChunk(v8, a2, a3, a4, a5, a6);
  v9 = *(v8 + 8);
  *(v8 + 16) += a5;
  DataLength = CMBlockBufferGetDataLength(*(v9 + 8));
  if (DataLength == a5)
  {
    LOBYTE(destination) = 0;
    result = CMBlockBufferCopyDataBytes(*(v9 + 8), 0, 1uLL, &destination);
    if (result)
    {
      return result;
    }

    v12 = destination | (*(v8 + 24) << 8);
    *(v8 + 24) = v12;
    MPEG2PSVideoSearchProcessHeader(v8, v12);
    v13 = 0;
  }

  else
  {
    v13 = DataLength - a5 - 3;
  }

  if (DataLength >= 4 && v13 < DataLength)
  {
    destination = 0;
    do
    {
      if (!FindStartCode(*(v9 + 8), v13, &destination, &v23, &v25))
      {
        break;
      }

      MPEG2PSVideoSearchProcessHeader(v8, v23);
      v13 = destination + 1;
    }

    while (destination + 1 < DataLength);
  }

  if (DataLength > 2)
  {
    result = CMBlockBufferCopyDataBytes(*(v9 + 8), DataLength - 3, 3uLL, &v23);
    v15 = bswap32(v23) >> 8;
  }

  else
  {
    result = CMBlockBufferCopyDataBytes(*(v9 + 8), 0, DataLength, v22);
    if (!DataLength)
    {
      goto LABEL_20;
    }

    v15 = *(v8 + 24);
    v16 = v22;
    do
    {
      v17 = *v16++;
      v15 = v17 | (v15 << 8);
      --DataLength;
    }

    while (DataLength);
  }

  *(v8 + 24) = v15;
LABEL_20:
  v18 = *(v8 + 32);
  if (v18 >= 0xA)
  {
    if (*(v8 + 56) && !*(v8 + 48))
    {
      v21 = 1836476772;
    }

    else
    {
      if (!*(v8 + 64) || *(v8 + 40))
      {
        goto LABEL_25;
      }

      v21 = 1748121140;
    }

    v19 = a1;
    v20 = v8;
    return MPEG2PSVideoSearchSetType(v19, v20, v21);
  }

LABEL_25:
  if (*(v8 + 16) <= 0x40000uLL)
  {
    return result;
  }

  if (v18 && *(v8 + 56))
  {
    v19 = a1;
    v20 = v8;
    v21 = 1836476772;
  }

  else
  {
    v19 = a1;
    v20 = v8;
    v21 = 1970170734;
  }

  return MPEG2PSVideoSearchSetType(v19, v20, v21);
}

uint64_t FindStartCode(OpaqueCMBlockBuffer *a1, size_t a2, size_t *a3, int *a4, OSStatus *a5)
{
  v8 = a2;
  destination = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v10 = CMBlockBufferCopyDataBytes(a1, a2, 4uLL, &destination);
  *a5 = v10;
  if (v10)
  {
    return 0;
  }

  v11 = bswap32(destination);
  destination = v11;
  if ((v11 & 0xFFFFFF00) == 0x100)
  {
LABEL_15:
    *a3 = v8;
    *a4 = v11;
    return 1;
  }

  v12 = v8 + 4;
  DataLength = CMBlockBufferGetDataLength(a1);
  if (v8 + 4 >= DataLength)
  {
    return 0;
  }

  v14 = DataLength;
  while (2)
  {
    DataPointer = CMBlockBufferGetDataPointer(a1, v12, &lengthAtOffsetOut, 0, &dataPointerOut);
    *a5 = DataPointer;
    if (DataPointer)
    {
      return 0;
    }

    v16 = lengthAtOffsetOut + v12;
    lengthAtOffsetOut = v16;
    v11 = destination;
    if (v16 <= v12 + 1)
    {
      v16 = v12 + 1;
    }

    v17 = dataPointerOut + 1;
    v18 = 3 - v12;
    v19 = v16 - v12;
    do
    {
      v20 = v11 << 8;
      destination = v11 << 8;
      dataPointerOut = v17;
      v11 = *(v17 - 1) | (v11 << 8);
      destination = v11;
      if (v20 == 256)
      {
        v8 = -v18;
        goto LABEL_15;
      }

      ++v17;
      --v18;
      --v19;
    }

    while (v19);
    result = 0;
    v12 = v16;
    if (v16 < v14)
    {
      continue;
    }

    return result;
  }
}

uint64_t FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewStateIfNecessary(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (a5 == a4)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_0_106(a1, a4, a2, a5, a3);
  }
}

uint64_t FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewFilterIfNecessary(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (a4 == a5)
  {
    return OUTLINED_FUNCTION_0_106(a1, a4, a2, a4, a3);
  }

  else
  {
    return 0;
  }
}

BOOL famen_handleTriggerInvocationForExpensiveNetwork(uint64_t a1, uint64_t a2, const void *a3)
{
  value = 0;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a3) && CFDictionaryGetValueIfPresent(a3, @"NetworkIsExpensive", &value) && (v5 = CFBooleanGetTypeID(), v5 == CFGetTypeID(value)))
  {
    return CFBooleanGetValue(value) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t famen_didSetPropertyCallbackForExpensiveNetwork(uint64_t a1, uint64_t a2, const __CFNumber *a3)
{
  if (FigCFEqual())
  {
    if (!a3)
    {
      v20.width = 0.0;
      v6 = 0x7FFFFFFF;
      LODWORD(valuePtr) = 0x7FFFFFFF;
LABEL_18:
      v15 = FigAlternatePeakBitRateCapFilterForExpensiveNetworksCreate(*MEMORY[0x1E695E480], v6, &v20);
      if (!v15)
      {
        width = v20.width;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v17)
        {
          v14 = 4294954514;
LABEL_23:
          v18 = v20.width;
          if (!*&v20.width)
          {
            return v14;
          }

          goto LABEL_28;
        }

        v15 = v17(a1, *&width, 1);
      }

      v14 = v15;
      goto LABEL_23;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a3))
    {
      v20.width = 0.0;
      LODWORD(valuePtr) = 0x7FFFFFFF;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      v6 = LODWORD(valuePtr);
      goto LABEL_18;
    }

    return 4294951683;
  }

  if (!FigCFEqual())
  {
    return 4294951681;
  }

  v7 = MEMORY[0x1E695F060];
  v20 = *MEMORY[0x1E695F060];
  if (a3)
  {
    v8 = CFDictionaryGetTypeID();
    if (v8 != CFGetTypeID(a3) || !CGSizeMakeWithDictionaryRepresentation(a3, &v20))
    {
      return 4294951683;
    }
  }

  v9 = v20.width;
  if (v20.width < 0.0)
  {
    return FigSignalErrorAtGM();
  }

  height = v20.height;
  if (v20.height < 0.0)
  {
    return FigSignalErrorAtGM();
  }

  valuePtr = 0.0;
  if (v20.width == *v7 && v20.height == v7[1])
  {
    v9 = 1.0e10;
    height = 1.0e10;
  }

  v11 = FigAlternateResolutionCapFilterCreate(*MEMORY[0x1E695E480], @"ResolutionCapForExpensiveNetworks", 699, &valuePtr, v9, height);
  if (v11)
  {
    goto LABEL_16;
  }

  v12 = valuePtr;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v13)
  {
    v11 = v13(a1, *&v12, 1);
LABEL_16:
    v14 = v11;
    goto LABEL_27;
  }

  v14 = 4294954514;
LABEL_27:
  v18 = valuePtr;
  if (valuePtr != 0.0)
  {
LABEL_28:
    CFRelease(*&v18);
  }

  return v14;
}

BOOL famu_handleTriggerInvocationForStreamingRestrictions(uint64_t a1, int a2, int a3, CFDataRef theData)
{
  CFDataGetBytePtr(theData);
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexLock();
  FilterIfNecessary = famu_getNewStateAndCreateFilterIfNecessary(a1, 0, 0, 0);
  BytePtr = CFDataGetBytePtr(theData);
  cf = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_8:
    v10 = cf;
    goto LABEL_9;
  }

  v9 = v8(a1, @"AlternateFilterMonitorProperty_ReportingAgent", *MEMORY[0x1E695E480], &cf);
  v10 = cf;
  if (!v9 && cf)
  {
    if (FilterIfNecessary && !*(BytePtr + 1))
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v11)
      {
        v11(v10, @"playerStats", 0x1F0B43978, 1);
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  *(BytePtr + 1) = FilterIfNecessary;
  if (v10)
  {
    CFRelease(v10);
  }

  FigSimpleMutexUnlock();
  return FilterIfNecessary;
}

void famu_finalize(int a1, CFDataRef theData)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    if (*BytePtr)
    {
      FigSimpleMutexDestroy();
      *BytePtr = 0;
    }
  }
}

uint64_t famfon_setFilterForState(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a2)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    v8 = famfon_copyFilterForCurrentState(a1, &cf);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v7 + 80);
      CFDictionarySetValue(*(v7 + 64), a3, a2);
    }

    FigSimpleMutexUnlock();
    v10 = cf;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = FigSignalErrorAtGM();
    v10 = 0;
    v9 = 0;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  if (v9 == a3)
  {
    v8 = fam_postStateChangedNotification(a1, a3, v10, a3, a2);
    v10 = cf;
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  if (v10)
  {
    CFRelease(v10);
  }

  return v8;
}

uint64_t famfon_setState(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = a2;
  v6 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v6 + 64), v5);
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = CFDictionaryGetValue(*(v9 + 64), a2);
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  FigSimpleMutexUnlock();
  if (v5 != a2)
  {
    v12 = fam_postStateChangedNotification(a1, v5, v8, a2, v11);
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (v8)
  {
LABEL_7:
    CFRelease(v8);
  }

LABEL_8:
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t fam_postStateChangedNotification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForNotification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForNotification_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fampvr_didSetPropertyCallbackForPreferredVideoFormat_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fampfr_didSetPropertyCallbackForSupportedFramerateBucketCap_cold_1(const void *a1, int *a2)
{
  cf = 0;
  v4 = CFGetAllocator(a1);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5(a1, @"AlternateFilterMonitorProperty_DisplayList", v4, &cf);
  if (v6)
  {
    goto LABEL_6;
  }

  v7 = cf;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v6 = v8(a1, v7);
  }

  else
  {
LABEL_5:
    v6 = -12782;
  }

LABEL_6:
  *a2 = v6;
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigAlternateFilterMonitorCreateForVideoRangeFramerateCap_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForRenditionDenyList_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForStreamingRestrictions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForStreamingRestrictions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famfon_copyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famfon_copyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famfon_setProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famfon_copyFilterForCurrentState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famrbl_setProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famrbl_copyFilterForCurrentState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMLBandwidthPredictorCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMLBandwidthPredictorCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMLBandwidthPredictorCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMLBandwidthPredictorCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fmlbp_setProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fmlbp_setProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fmlbp_setProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fmlbp_setProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fmlbp_makePrediction_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fmlbp_timerCallback_cold_1(BOOL *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result == 0;
  return result;
}

void __getMLServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getMLServiceClass(void)_block_invoke") description:{@"FigMLBandwidthPredictor.m", 134, @"Unable to find class %s", "MLService"}];
  __break(1u);
}

void __getMLServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *MediaMLServicesLibrary(void)") description:{@"FigMLBandwidthPredictor.m", 133, @"%s", *a1}];
  __break(1u);
}

uint64_t FigCaptionRendererOutputNodeCreate(uint64_t a1, void *a2)
{
  *a2 = 0;
  v4 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererOutputNodeGetClassID_sRegisterFigCaptionRendererOutputNodeBaseTypeOnce, RegisterFigCaptionRendererOutputNodeBaseType);
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = DerivedStorage;
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    *DerivedStorage = v8;
    DerivedStorage[1] = 0;
    DerivedStorage[2] = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    __asm { FMOV            V0.2D, #-1.0 }

    *(v7 + 3) = _Q0;
    *(v7 + 5) = *MEMORY[0x1E695F060];
    v7[10] = 0;
    v7[7] = 0;
    v7[8] = 0;
    *(v7 + 72) = 0;
    *a2 = 0;
  }

  return v5;
}

uint64_t FigCaptionRendererCALayerOutputCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCALayerOutputCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCALayerOutputCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMPEG2SampleGeneratorCreate(CFAllocatorRef Default, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t *a7)
{
  if (a2 && a3)
  {
    if (a5 != 1633891104 && a5 != 1633973363 && a5 != 1635017571 && a5 != 1700880739 && a5 != 1700881203 && a5 != 1700886115 && a5 != 1700998451 && a5 != 1701143347 && a5 != 1748121140 && a5 != 1819304813 && a5 != 1835103588 && a5 != 1836476772 && a5 != 2053207651 && a5 != 1886612592)
    {
      return 4294954321;
    }

    *a7 = 0;
    v27 = malloc_type_calloc(1uLL, 0x78uLL, 0x10F0040528BEE7EuLL);
    if (!v27)
    {
      return 12;
    }

    v28 = v27;
    if (!Default)
    {
      Default = CFAllocatorGetDefault();
    }

    *(v28 + 8) = CFRetain(Default);
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    *(v28 + 32) = a4;
    *v28 = a5;
    *(v28 + 4) = a6;
    if (a5 != 1633891104)
    {
      switch(a5)
      {
        case 1633973363:
          goto LABEL_65;
        case 1635017571:
          SampleGeneratorForClosedCaptions = CreateSampleGeneratorForClosedCaptions(v28);
          goto LABEL_70;
        case 1700880739:
LABEL_65:
          SampleGeneratorForClosedCaptions = CreateSampleGeneratorForADTS(v28);
          goto LABEL_70;
      }

      if (a5 != 1700881203)
      {
        if (a5 == 1700886115)
        {
          goto LABEL_63;
        }

        if (a5 != 1700998451 && a5 != 1701143347)
        {
          if (a5 != 2053207651)
          {
            switch(a5)
            {
              case 1819304813:
LABEL_66:
                SampleGeneratorForClosedCaptions = CreateSampleGeneratorForLPCM(v28);
                break;
              case 1835103588:
                SampleGeneratorForClosedCaptions = CreateSampleGeneratorForMP3(v28);
                break;
              case 1836476772:
                SampleGeneratorForClosedCaptions = CreateSampleGeneratorForMpeg2Video(v28);
                break;
              case 1886612592:
                goto LABEL_66;
              case 1748121140:
                goto LABEL_63;
              default:
                goto LABEL_72;
            }

LABEL_70:
            v31 = SampleGeneratorForClosedCaptions;
            if (SampleGeneratorForClosedCaptions)
            {
              FigMPEG2SampleGeneratorDestroy(v28);
              return v31;
            }

LABEL_72:
            v31 = 0;
            *a7 = v28;
            return v31;
          }

LABEL_63:
          SampleGeneratorForClosedCaptions = CreateSampleGeneratorForH264(v28);
          goto LABEL_70;
        }
      }
    }

    SampleGeneratorForClosedCaptions = CreateSampleGeneratorForDolby(v28);
    goto LABEL_70;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t MPEG2SampleGeneratorCreateFormatDescriptionFromAudioConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, const AudioChannelLayout *a4, UInt32 a5, AudioFormatID *a6)
{
  v8 = a4;
  keys[1] = *MEMORY[0x1E69E9840];
  values = 0;
  memset(&outPropertyData, 0, sizeof(outPropertyData));
  *outPropertyDataSize = 0;
  v46 = 0;
  v45 = 0;
  v48 = 0;
  v47 = 0;
  keys[0] = 0;
  mChannelLayoutTag = a4->mChannelLayoutTag;
  ioPropertyDataSize = 0;
  v44 = mChannelLayoutTag;
  PropertyInfo = AudioFormatGetPropertyInfo(0x78686173u, *(a1 + 112), *(a1 + 104), &outPropertyDataSize[1]);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  if (outPropertyDataSize[1] != 40)
  {
    return 4294954325;
  }

  OUTLINED_FUNCTION_0_108();
  PropertyInfo = AudioFormatGetProperty(0x78686173u, v12, v13, &outPropertyDataSize[1], &outPropertyData);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  mFormatID = outPropertyData.mFormatID;
  if (outPropertyData.mFormatID - 2053202739 <= 0x3D && ((1 << (LOBYTE(outPropertyData.mFormatID) - 51)) & 0x2020000000000001) != 0 || (outPropertyData.mFormatID != 1667331683 ? (v15 = outPropertyData.mFormatID == 1700886115) : (v15 = 1), !v15 ? (v16 = outPropertyData.mFormatID == 1902212707) : (v16 = 1), !v16 ? (v17 = outPropertyData.mFormatID == 2053202275) : (v17 = 1), !v17 ? (v18 = outPropertyData.mFormatID == 2053464883) : (v18 = 1), !v18 ? (v19 = outPropertyData.mFormatID == 2053207651) : (v19 = 1), v19))
  {
    inited = PKDCreateTransportStreamEncryptionInitData(1936684398, outPropertyData.mFormatID);
    if (!inited)
    {
      return 4294954510;
    }

    v21 = inited;
    v24 = *MEMORY[0x1E69627C8];
    values = inited;
    keys[0] = v24;
    mFormatID = outPropertyData.mFormatID;
    v20 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v25 = 1633889587;
  v26 = *a1 == 1633891104 && mFormatID == 2053202739;
  if (v26 || ((v25 = 1700998451, *a1 == 1700998451) ? (v27 = mFormatID == 2053464883) : (v27 = 0), v27))
  {
    outPropertyData.mFormatID = v25;
  }

  OUTLINED_FUNCTION_0_108();
  v30 = AudioFormatGetPropertyInfo(0x78686D63u, v28, v29, outPropertyDataSize);
  if (v30)
  {
    v22 = v30;
    goto LABEL_50;
  }

  v31 = OUTLINED_FUNCTION_1_96(outPropertyDataSize[0]);
  if (!v31)
  {
    v22 = 4294954510;
    goto LABEL_50;
  }

  v32 = v31;
  OUTLINED_FUNCTION_0_108();
  Property = AudioFormatGetProperty(0x78686D63u, v33, v34, outPropertyDataSize, v32);
  if (Property)
  {
    goto LABEL_41;
  }

  if (outPropertyData.mChannelsPerFrame < 3)
  {
    ioPropertyDataSize = a5;
    goto LABEL_43;
  }

  ioPropertyDataSize = 32;
  OUTLINED_FUNCTION_0_108();
  v8 = &v44;
  Property = AudioFormatGetProperty(0x7868636Cu, v36, v37, &ioPropertyDataSize, &v44);
  if (!Property)
  {
LABEL_43:
    v38 = CFDictionaryCreate(*(a1 + 8), keys, &values, v20, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (v38)
    {
      v39 = v38;
      v40 = *(a1 + 40);
      if (v40)
      {
        CFRelease(v40);
        *(a1 + 40) = 0;
      }

      v41 = CMAudioFormatDescriptionCreate(*(a1 + 8), &outPropertyData, ioPropertyDataSize, v8, outPropertyDataSize[0], v32, v39, (a1 + 40));
      v22 = v41;
      if (a6 && !v41)
      {
        *a6 = outPropertyData.mFormatID;
      }

      free(v32);
      CFRelease(v39);
      goto LABEL_50;
    }

    v22 = 4294954510;
    goto LABEL_57;
  }

LABEL_41:
  v22 = Property;
LABEL_57:
  free(v32);
LABEL_50:
  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

uint64_t CreateSampleGeneratorForADTS(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xBA8uLL, 0x1020040313AC271uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = ADTSPushForType;
  a1[8] = ADTSResyncForType;
  a1[7] = ADTSFlushForType;
  a1[9] = ADTSDestroyForType;
  a1[10] = ADTSReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t ADTSPushForType(uint64_t a1, OpaqueCMBlockBuffer *cf, __int128 *a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(a1 + 88);
  v35 = 0;
  v34 = 0;
  offsetToData = 7;
  if (!*(a1 + 40) && *a1 != 1700880739)
  {
    goto LABEL_3;
  }

  if (a5)
  {
    appended = ADTSFlushForType(a1);
    if (appended)
    {
      goto LABEL_36;
    }
  }

  appended = ADTSGetHeaderInfo(cf, &v35 + 1, &v35, &v34, &offsetToData);
  if (appended)
  {
    goto LABEL_36;
  }

  if (!v35)
  {
    v13 = 0;
    goto LABEL_38;
  }

  if (*a1 != 1700880739)
  {
    goto LABEL_24;
  }

  if (!*(a1 + 40))
  {
    memset(&v32.mChannelBitmap, 0, 28);
    v32.mChannelLayoutTag = v34;
    if (!*(a1 + 104))
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    appended = MPEG2SampleGeneratorCreateFormatDescriptionFromAudioConfiguration(a1, v16, v17, &v32, 0x20u, (v11 + 12));
    if (appended)
    {
      goto LABEL_36;
    }

    v18 = v35 >> 11;
    if (v35 >> 11 > 0x18)
    {
      v18 = 24;
    }

    v19 = *(v11 + 12) == 1633772396 ? 1 : v18;
    *v11 = v35;
    *(v11 + 4) = v19;
    *(v11 + 8) = v34;
    v20 = *(a1 + 16);
    if (v20)
    {
      appended = v20(a1, *(a1 + 32), *(a1 + 40));
      if (appended)
      {
LABEL_36:
        v13 = appended;
LABEL_38:
        ADTSResyncForType(a1);
        return v13;
      }
    }

    if (*a1 != 1700880739)
    {
LABEL_24:
      if (HIDWORD(v35) != *(v11 + 12) || *(v11 + 8) != v34 || v35 != *v11)
      {
        ADTSFlushForType(a1);
        FigFormatDescriptionRelease();
        *(a1 + 40) = 0;
LABEL_3:
        *&v32.mChannelLayoutTag = *a3;
        *&v32.mChannelDescriptions[0].mChannelFlags = *(a3 + 2);
        return ADTSAddFrameToStartup(a1, cf, &v32, a5, a6);
      }
    }
  }

  DataLength = CMBlockBufferGetDataLength(cf);
  v22 = offsetToData;
  v23 = *(v11 + 16);
  if (v23)
  {
    v24 = offsetToData;
  }

  else
  {
    Empty = CMBlockBufferCreateEmpty(*(a1 + 8), *(v11 + 4), 0, (v11 + 16));
    if (Empty)
    {
      return Empty;
    }

    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    v25 = *a3;
    *(v11 + 56) = *(a3 + 2);
    *(v11 + 40) = v25;
    *(v11 + 456) = a5;
    *(v11 + 448) = a6;
    v23 = *(v11 + 16);
    v24 = offsetToData;
  }

  v26 = DataLength - v22;
  appended = CMBlockBufferAppendBufferReference(v23, cf, v24, DataLength - v22, 0);
  if (appended)
  {
    goto LABEL_36;
  }

  v27 = *(v11 + 24);
  v28 = v11 + 16 * v27;
  v29 = *(v11 + 32);
  *(v28 + 64) = v29;
  *(v28 + 72) = 1;
  *(v28 + 76) = v26;
  v30 = v27 + 1;
  *(v11 + 24) = v30;
  *(v11 + 32) = v29 + v26;
  *(v11 + 2968) += offsetToData + v26;
  ++*(v11 + 2976);
  v31 = *(a1 + 96);
  if (!v31)
  {
    v31 = *(v11 + 4);
  }

  if (v31 > v30)
  {
    return 0;
  }

  return ADTSFlushForType(a1);
}

uint64_t ADTSFlushForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(v1 + 24);
  presentationTimeStamp = *(v1 + 40);
  target = 0;
  v7 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, v2, 1u, 0, 0, v5, v6, &presentationTimeStamp, (v1 + 64), &target);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = *(v1 + 456);
    if (v8)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604D0], *MEMORY[0x1E695E4D0], 1u);
      v8 = *(v1 + 456);
    }

    v9 = (*(a1 + 24))(a1, *(a1 + 32), target, *(v1 + 448), v8);
    if (target)
    {
      CFRelease(target);
    }
  }

  *(v1 + 456) = 0;
  v10 = *(v1 + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  ADTSFlushStartupQueue(v1);
  return v9;
}

uint64_t ADTSGetHeaderInfo(OpaqueCMBlockBuffer *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t *a5)
{
  v11 = 0;
  v9 = CMBlockBufferAccessDataBytes(a1, 0, 7uLL, temporaryBlock, &v11);
  if (!v9)
  {
    if (a2)
    {
      *a2 = ADTSGetFormatID(v11);
    }

    if (a4)
    {
      *a4 = ADTSGetChannelLayout(v11);
    }

    if (a3)
    {
      *a3 = ADTSGetSampleFrequency(v11);
    }

    if (a5)
    {
      *a5 = ADTSGetADTSHeaderSize(v11);
    }
  }

  return v9;
}

uint64_t ADTSCreateFormatDescriptionAndSend(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (*(v2 + 2872) == 1633973363 && *(v2 + 2960))
  {
    memset(&outPropertyData, 0, 32);
    ioPropertyDataSize.mChannelLayoutTag = 32;
    *outPropertyDataSize = 0;
    outWritable = 0;
    v27 = 0;
    v25 = 0;
    Property = AudioFileStreamGetProperty(*(v2 + 2880), 0x636D6170u, &ioPropertyDataSize.mChannelLayoutTag, &outPropertyData);
    v4 = 0;
    if (!AudioFileStreamGetPropertyInfo(*(v2 + 2880), 0x6D676963u, &outPropertyDataSize[1], &outWritable))
    {
      if (outPropertyDataSize[1])
      {
        v4 = OUTLINED_FUNCTION_1_96(outPropertyDataSize[1]);
        if (v4)
        {
          if (AudioFileStreamGetProperty(*(v2 + 2880), 0x6D676963u, &outPropertyDataSize[1], v4))
          {
            outPropertyDataSize[1] = 0;
            free(v4);
            v4 = 0;
          }
        }
      }
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    if (Property)
    {
      p_outPropertyData = 0;
    }

    else
    {
      p_outPropertyData = &outPropertyData;
    }

    v7 = CMAudioFormatDescriptionCreate(*(a1 + 8), (v2 + 2920), 32 * (Property == 0), p_outPropertyData, outPropertyDataSize[1], v4, 0, (a1 + 40));
    if (v4)
    {
      free(v4);
    }

    if (!v7)
    {
      v7 = ADTSGetHeaderInfo(*(v2 + 464), outPropertyDataSize, &v25, &v27, 0);
      if (!v7)
      {
        v8 = outPropertyDataSize[0];
        *v2 = v25;
        v9 = (v2 + 2948);
        if (!Property)
        {
          v9 = &outPropertyData;
        }

        v10 = *v9;
        if (v27 != v10)
        {
          v10 = v27;
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    v21 = *(v2 + 464);
    memset(&ioPropertyDataSize.mChannelBitmap, 0, 28);
    memset(&outPropertyData.mFormatID, 0, 32);
    *outPropertyDataSize = 0;
    v27 = 0;
    v22 = ADTSGetHeaderInfo(v21, &outPropertyDataSize[1], &v27, outPropertyDataSize, 0);
    if (v22)
    {
      v7 = v22;
    }

    else
    {
      ioPropertyDataSize.mChannelLayoutTag = outPropertyDataSize[0];
      LODWORD(v23) = v27;
      outPropertyData.mSampleRate = v23;
      outPropertyData.mFormatID = outPropertyDataSize[1];
      outPropertyData.mFramesPerPacket = 1024;
      outPropertyData.mChannelsPerFrame = LOWORD(outPropertyDataSize[0]);
      v24 = *(a1 + 40);
      if (v24)
      {
        CFRelease(v24);
        *(a1 + 40) = 0;
      }

      v7 = CMAudioFormatDescriptionCreate(*(a1 + 8), &outPropertyData, 0x20uLL, &ioPropertyDataSize, 0, 0, 0, (a1 + 40));
      if (!v7)
      {
        v8 = outPropertyDataSize[1];
        *v2 = v27;
        v10 = outPropertyDataSize[0];
LABEL_21:
        *(v2 + 8) = v10;
        *(v2 + 12) = v8;
      }
    }
  }

  if (!v7)
  {
    v11 = *(a1 + 16);
    if (v11 && (v12 = v11(a1, *(a1 + 32), *(a1 + 40)), v12))
    {
      v7 = v12;
    }

    else
    {
      if (*(v2 + 12) == 1633772396)
      {
        v13 = 1;
      }

      else
      {
        v13 = *v2 >> 11;
        if (v13 > 0x18)
        {
          v13 = 24;
        }
      }

      *(v2 + 4) = v13;
      v14 = *(a1 + 88);
      v15 = *(v14 + 2864);
      *(v14 + 2864) = 0;
      if (v15 < 1)
      {
        v7 = 0;
      }

      else
      {
        LODWORD(v7) = 0;
        v16 = 0;
        v17 = v14 + 464;
        do
        {
          if (!v7)
          {
            v18 = *v17;
            *&outPropertyData.mSampleRate = *(v17 + 8);
            *&outPropertyData.mBytesPerPacket = *(v17 + 24);
            v16 = ADTSPushForType(a1, v18);
          }

          if (*v17)
          {
            CFRelease(*v17);
          }

          if (v16)
          {
            v7 = v16;
          }

          else
          {
            v7 = v7;
          }

          v17 += 48;
          --v15;
        }

        while (v15);
      }
    }
  }

  v19 = *(v2 + 2880);
  if (v19)
  {
    AudioFileStreamClose(v19);
    *(v2 + 2880) = 0;
  }

  return v7;
}

uint64_t CreateSampleGeneratorForDolby(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x1E0uLL, 0x102004048EB5213uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = DolbyPushForType;
  a1[8] = DolbyResyncForType;
  a1[7] = DolbyFlushForType;
  a1[9] = DolbyDestroyForType;
  a1[10] = DolbyReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t DolbyFlushForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 40);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(v1 + 48);
  presentationTimeStamp = *(v1 + 64);
  target = 0;
  v7 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, v2, 1u, 0, 0, v5, v6, &presentationTimeStamp, (v1 + 96), &target);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = *(v1 + 36);
    if (v8)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604D0], *MEMORY[0x1E695E4D0], 1u);
      v8 = *(v1 + 36);
    }

    v9 = (*(a1 + 24))(a1, *(a1 + 32), target, *(v1 + 88), v8);
    if (target)
    {
      CFRelease(target);
    }
  }

  v10 = *(v1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 56) = 0;
  *(v1 + 44) = 0;
  *(v1 + 36) = 0;
  return v9;
}

uint64_t H264ParamSetAddSPS(uint64_t a1, CMBlockBufferRef theBuffer, size_t offset, size_t a4, void *a5, _BYTE *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v23 = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    return DataPointer;
  }

  v13 = lengthAtOffsetOut;
  if (lengthAtOffsetOut < a4)
  {
    dataPointerOut = malloc_type_malloc(a4, 0xF908CF31uLL);
    DataPointer = CMBlockBufferCopyDataBytes(theBuffer, offset, a4, dataPointerOut);
    if (DataPointer)
    {
      return DataPointer;
    }
  }

  SPSSequenceID = FigH264Bridge_GetSPSSequenceID();
  if (SPSSequenceID)
  {
    v17 = SPSSequenceID;
    goto LABEL_18;
  }

  v15 = a1;
  do
  {
    v15 = *v15;
    if (!v15)
    {
      v15 = H264AddParamSetToList(a1, dataPointerOut, a4, v23, 0);
      if (v15)
      {
        if (a6)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

LABEL_29:
      v17 = 4294954510;
      goto LABEL_18;
    }
  }

  while (*(v15 + 6) != v23);
  if (v15[2] == a4)
  {
    v16 = v15[1];
    if (!memcmp(dataPointerOut, v16, a4))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = v15[1];
  }

  if (v15 + 4 != v16)
  {
    free(v16);
    v15[1] = 0;
  }

  OUTLINED_FUNCTION_9_5();
  v20 = malloc_type_malloc(a4, v19);
  v15[1] = v20;
  if (!v20)
  {
    goto LABEL_29;
  }

  memcpy(v20, dataPointerOut, a4);
  v15[2] = a4;
  if (!a6)
  {
    goto LABEL_16;
  }

LABEL_15:
  *a6 = 1;
LABEL_16:
  v17 = 0;
  if (a5)
  {
    *a5 = v15;
  }

LABEL_18:
  if (v13 < a4)
  {
    free(dataPointerOut);
  }

  return v17;
}

uint64_t H264ParamSetAddPPS(uint64_t a1, CMBlockBufferRef theBuffer, size_t offset, size_t a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  dataPointerOut = 0;
  v25 = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    return DataPointer;
  }

  v11 = lengthAtOffsetOut;
  if (lengthAtOffsetOut >= a4)
  {
    goto LABEL_7;
  }

  v12 = malloc_type_malloc(a4, 0xD3A72E7CuLL);
  dataPointerOut = v12;
  if (!v12)
  {
    return 4294954510;
  }

  DataPointer = CMBlockBufferCopyDataBytes(theBuffer, offset, a4, v12);
  if (DataPointer)
  {
    return DataPointer;
  }

LABEL_7:
  PPSSequenceID = FigH264Bridge_GetPPSSequenceID();
  if (PPSSequenceID)
  {
    v19 = PPSSequenceID;
  }

  else
  {
    v14 = a1 + 16;
    v15 = (a1 + 16);
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (*(v15 + 6) == v25)
      {
        if (*(v15 + 7) == HIDWORD(v25) && v15[2] == a4 && !memcmp(v15[1], dataPointerOut, a4))
        {
          v19 = 0;
          goto LABEL_25;
        }

        v16 = v15[1];
        if (v15 + 4 != v16)
        {
          free(v16);
        }

        OUTLINED_FUNCTION_9_5();
        v18 = malloc_type_malloc(a4, v17);
        v15[1] = v18;
        if (!v18)
        {
          v19 = 4294954510;
          goto LABEL_25;
        }

        memcpy(v18, dataPointerOut, a4);
        v19 = 0;
        v15[2] = a4;
        v20 = 1;
        if (!a5)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    v21 = H264AddParamSetToList(v14, dataPointerOut, a4, v25, SHIDWORD(v25));
    v20 = v21 != 0;
    if (v21)
    {
      v19 = 0;
    }

    else
    {
      v19 = 4294954510;
    }

    if (!a5)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (v20)
    {
      *a5 = 1;
    }
  }

LABEL_25:
  if (v11 < a4)
  {
    free(dataPointerOut);
  }

  return v19;
}

uint64_t CreateSampleGeneratorForH264(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10E0040FC223A1CuLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  *(v3 + 1) = v3;
  *(v3 + 3) = v3 + 16;
  v5 = MEMORY[0x1E6960CC0];
  *(v3 + 164) = *MEMORY[0x1E6960CC0];
  *(v3 + 180) = *(v5 + 16);
  a1[6] = H264PushForType;
  a1[8] = H264ResyncForType;
  a1[7] = H264FlushForType;
  a1[9] = H264DestroyForType;
  a1[10] = H264ReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t H264PushForType(unsigned int *a1, OpaqueCMBlockBuffer *cf, __int128 *a3, __int128 *a4, unsigned int a5, uint64_t a6, uint64_t a7, CFDictionaryRef a8, uint64_t a9, unsigned __int8 *a10)
{
  v16 = cf;
  v17 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 11);
  if (cf)
  {
    CFRetain(cf);
  }

  v93 = 0;
  v19 = (*(v18 + 136) & 0x600);
  v90 = a6;
  if ((a5 & 2) == 0 && (*(v18 + 136) & 0x600) == (a5 & 0x600))
  {
LABEL_24:
    inited = OUTLINED_FUNCTION_1_97();
    v36 = 1;
    goto LABEL_25;
  }

  v93 = 0;
  v82 = a4;
  if (a7 < 1)
  {
    a8 = (v17 + 10);
    v10 = *(v17 + 5);
    if (!v10)
    {
      v41 = 0;
      goto LABEL_43;
    }

    v85 = a5 & 0x600;
    v33 = 0;
LABEL_21:
    v34 = 0;
    if (!v33 && !v93 && v19 == v85)
    {
      goto LABEL_24;
    }

LABEL_51:
    v99 = 0;
    *keys = 0u;
    v98 = 0u;
    v96 = 0;
    *values = 0u;
    v95 = 0u;
    v91 = 24;
    valuePtr = 1;
    v48 = *v17;
    if (v48 != 2053207651)
    {
      if (v48 == 1748121140)
      {
        v48 = 1635148593;
      }

      else if (v48 != 1700886115)
      {
        inited = OUTLINED_FUNCTION_1_97();
        v41 = 4294954326;
        goto LABEL_37;
      }
    }

    if ((v34 & 1) == 0)
    {
      CFRelease(v10);
      *a8 = 0;
    }

    v50 = v48 == 1700886115 || v48 == 1902212707 || v48 == 2053207651;
    v51 = v17;
    if (v50 || v48 == 2053202739)
    {
      inited = PKDCreateTransportStreamEncryptionInitData(1986618469, v48);
      v10 = inited;
      if (!inited)
      {
        goto LABEL_115;
      }

      keys[0] = *MEMORY[0x1E69627C8];
      values[0] = inited;
      v75 = 1;
    }

    else
    {
      v10 = 0;
      v75 = 0;
    }

    if (v85)
    {
      v53 = MEMORY[0x1E6965E68];
      *(keys | (8 * v75)) = *MEMORY[0x1E6965E58];
      v54 = MEMORY[0x1E6965E60];
      if ((a5 & 0x200) == 0)
      {
        v54 = v53;
      }

      *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v75++ & 1))) = *v54;
      valuePtr = 2;
    }

    inited = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (inited)
    {
      keys[v75] = *MEMORY[0x1E6965E50];
      v55 = v75 + 1;
      values[v75] = inited;
      cfc = inited;
      if (valuePtr == 2)
      {
        keys[v55] = *MEMORY[0x1E6962770];
        values[v55] = inited;
        v55 = v75 + 2;
      }

      v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v91);
      v19 = v56;
      if (v56)
      {
        keys[v55] = *MEMORY[0x1E6960028];
        values[v55] = v56;
        a8 = CFDictionaryCreate(v51[1], keys, values, v55 + 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        if (a8)
        {
          v57 = *v18;
          inited = cfc;
          if (*v18)
          {
            v58 = 0;
            v59 = 0;
            do
            {
              v60 = v57[2];
              v58 += v60;
              if (v60)
              {
                ++v59;
              }

              v57 = *v57;
            }

            while (v57);
          }

          else
          {
            v59 = 0;
            v58 = 0;
          }

          v61 = *(v18 + 16);
          if (v61)
          {
            v84 = v51;
            v62 = 0;
            v63 = 0;
            do
            {
              v64 = v61[2];
              v62 += v64;
              if (v64)
              {
                ++v63;
              }

              v61 = *v61;
            }

            while (v61);
            v41 = 4294954510;
            if (!v58 || !v62)
            {
              goto LABEL_37;
            }

            v81 = a5;
            v65 = v16;
            v66 = (v58 + v62 + 2 * (v63 + v59) + 7);
            OUTLINED_FUNCTION_9_5();
            v68 = malloc_type_malloc(v66, v67);
            if (v68)
            {
              v69 = v68;
              v70 = *v18;
              *v68 = 1;
              v68[1] = *(v70[1] + 1);
              v68[2] = *(v70[1] + 2);
              v68[3] = *(v70[1] + 3);
              v68[4] = -1;
              v68[5] = v59 | 0xE0;
              v71 = *v18;
              if (*v18)
              {
                v72 = 6;
                do
                {
                  v73 = v71[2];
                  if (v73)
                  {
                    v74 = &v69[v72];
                    *v74 = BYTE1(v73);
                    v69[v72 + 1] = v71[2];
                    memcpy(v74 + 2, v71[1], v71[2]);
                    v72 += *(v71 + 4) + 2;
                  }

                  v71 = *v71;
                }

                while (v71);
              }

              else
              {
                v72 = 6;
              }

              v69[v72] = v63;
              v76 = *(v18 + 16);
              if (v76)
              {
                v77 = v72 + 1;
                do
                {
                  v78 = v76[2];
                  if (v78)
                  {
                    v79 = &v69[v77];
                    *v79 = BYTE1(v78);
                    v69[v77 + 1] = v76[2];
                    memcpy(v79 + 2, v76[1], v76[2]);
                    v77 += *(v76 + 4) + 2;
                  }

                  v76 = *v76;
                }

                while (v76);
              }

              v17 = v84;
              v41 = FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom();
              free(v69);
              if (!v41)
              {
                v36 = 0;
                v16 = v65;
                a4 = v82;
                a5 = v81;
                inited = cfc;
LABEL_25:
                if (!*(v17 + 5))
                {
                  v41 = 0;
                  goto LABEL_37;
                }

                cfb = v10;
                v37 = v19;
                v38 = a8;
                v39 = inited;
                if (((a5 >> 1) & 1) == 0)
                {
                  a5 &= ~0x10u;
                }

                *keys = *a4;
                *&v98 = *(a4 + 2);
                v40 = PushH264Frame(v17, keys, 1);
                if (v36)
                {
                  v41 = v40;
                  v42 = v17;
                }

                else
                {
                  v42 = v17;
                  v41 = (*(v17 + 2))(v17, *(v17 + 4), *(v17 + 5));
                  if (v41)
                  {
LABEL_36:
                    inited = v39;
                    a8 = v38;
                    v19 = v37;
                    v10 = cfb;
LABEL_37:
                    if (inited)
                    {
                      CFRelease(inited);
                    }

                    if (v19)
                    {
                      CFRelease(v19);
                    }

                    if (a8)
                    {
                      CFRelease(a8);
                    }

                    goto LABEL_43;
                  }
                }

                v43 = v16;
                if (v16)
                {
                  v43 = CFRetain(v16);
                }

                *(v18 + 48) = v43;
                v44 = *(v42 + 5);
                if (v44)
                {
                  v44 = CFRetain(v44);
                }

                *(v18 + 56) = v44;
                v45 = *a3;
                *(v18 + 80) = *(a3 + 2);
                *(v18 + 64) = v45;
                v46 = *a4;
                *(v18 + 104) = *(a4 + 2);
                *(v18 + 88) = v46;
                *(v18 + 136) = a5;
                *(v18 + 144) = v90;
                goto LABEL_36;
              }
            }

            else
            {
              v41 = 4294954510;
            }

            v16 = v65;
LABEL_111:
            inited = cfc;
            goto LABEL_37;
          }

LABEL_116:
          v41 = 4294954510;
          goto LABEL_37;
        }
      }

      else
      {
        a8 = 0;
      }

      v41 = 4294954510;
      goto LABEL_111;
    }

LABEL_115:
    a8 = 0;
    v19 = 0;
    goto LABEL_116;
  }

  v85 = a5 & 0x600;
  v80 = a5;
  v83 = v17;
  v20 = v16;
  cfa = 0;
  v21 = 0;
  v22 = 0;
  do
  {
    v26 = *a10++;
    v25 = v26;
    if (v26 == 8)
    {
      OUTLINED_FUNCTION_2_94();
      SPSWidthAndHeight = H264ParamSetAddPPS(v18, v20, v31, v32, &v93);
      if (SPSWidthAndHeight)
      {
        goto LABEL_113;
      }

      cfa = 1;
    }

    else if (v25 == 7)
    {
      keys[0] = 0;
      LOBYTE(values[0]) = 0;
      OUTLINED_FUNCTION_2_94();
      SPSWidthAndHeight = H264ParamSetAddSPS(v18, v20, v27, v28, keys, values);
      if (SPSWidthAndHeight || (v30 = LOBYTE(values[0]), LOBYTE(values[0])) && (SPSWidthAndHeight = FigH264Bridge_GetSPSWidthAndHeight(), SPSWidthAndHeight))
      {
LABEL_113:
        v41 = SPSWidthAndHeight;
        v10 = 0;
        v16 = v20;
        goto LABEL_43;
      }

      v22 |= v30;
      v21 = 1;
    }

    a9 += 8;
    a8 = (a8 + 8);
    --a7;
  }

  while (a7);
  v33 = v22 != 0;
  v17 = v83;
  a8 = (v83 + 10);
  v10 = *(v83 + 5);
  if (v10)
  {
    v16 = v20;
    a4 = v82;
    a5 = v80;
    goto LABEL_21;
  }

  v41 = 0;
  v16 = v20;
  if (cfa)
  {
    a5 = v80;
    if (v21)
    {
      v34 = 1;
      goto LABEL_51;
    }
  }

LABEL_43:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v41;
}

uint64_t CreateSampleGeneratorForMP3(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x1D8uLL, 0x102004091A1CF87uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = MP3PushForType;
  a1[8] = MP3ResyncForType;
  a1[7] = MP3FlushForType;
  a1[9] = MP3DestroyForType;
  a1[10] = MP3ReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t MP3PushForType(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(a1 + 88);
  returnedPointerOut = 0;
  if ((a5 & 1) == 0 || (appended = MP3FlushForType(a1), !appended))
  {
    appended = CMBlockBufferAccessDataBytes(theBuffer, 0, 4uLL, temporaryBlock, &returnedPointerOut);
    if (!appended)
    {
      FormatID = MP3GetFormatID(returnedPointerOut);
      ChannelLayout = MP3GetChannelLayout(returnedPointerOut);
      SampleFrequency = MP3GetSampleFrequency(returnedPointerOut);
      if (!SampleFrequency)
      {
        v32 = 0;
        goto LABEL_36;
      }

      v16 = SampleFrequency;
      if (*(a1 + 40))
      {
        if (FormatID == *(v11 + 20) && ChannelLayout == *(v11 + 16) && SampleFrequency == *v11)
        {
          goto LABEL_8;
        }
      }

      v36 = a6;
      MP3FlushForType(a1);
      SamplesPerFrame = MP3GetSamplesPerFrame(returnedPointerOut);
      *(v11 + 12) = MP3GetBitRate(returnedPointerOut);
      memset(&layout.mChannelBitmap, 0, 28);
      memset(&asbd.mFormatID, 0, 32);
      layout.mChannelLayoutTag = ChannelLayout;
      asbd.mSampleRate = v16;
      asbd.mFormatID = FormatID;
      asbd.mFramesPerPacket = SamplesPerFrame;
      asbd.mChannelsPerFrame = ChannelLayout;
      v26 = *(a1 + 40);
      if (v26)
      {
        CFRelease(v26);
        *(a1 + 40) = 0;
      }

      Empty = CMAudioFormatDescriptionCreate(*(a1 + 8), &asbd, 0x20uLL, &layout, 0, 0, 0, (a1 + 40));
      if (Empty)
      {
        return Empty;
      }

      *(v11 + 16) = ChannelLayout;
      *(v11 + 20) = FormatID;
      *v11 = v16;
      v27 = (v16 >> 1) / SamplesPerFrame;
      if (v27 >= 0x18)
      {
        v27 = 24;
      }

      *(v11 + 8) = v27;
      v28 = *(a1 + 16);
      a6 = v36;
      if (!v28 || (appended = v28(a1, *(a1 + 32), *(a1 + 40)), !appended))
      {
LABEL_8:
        DataLength = CMBlockBufferGetDataLength(theBuffer);
        v18 = *(a1 + 96);
        if (!v18)
        {
          v18 = *(v11 + 8);
        }

        if (v18 == 1)
        {
          if (theBuffer)
          {
            v19 = CFRetain(theBuffer);
          }

          else
          {
            v19 = 0;
          }

          v24 = 0;
          v23 = 0;
          *(v11 + 32) = v19;
          *(v11 + 40) = 0;
          *(v11 + 48) = 0;
          v29 = *(a3 + 16);
          *(v11 + 56) = *a3;
          *(v11 + 24) = a5;
          *(v11 + 72) = v29;
          *(v11 + 80) = a6;
        }

        else
        {
          v20 = *(v11 + 32);
          if (!v20)
          {
            Empty = CMBlockBufferCreateEmpty(*(a1 + 8), *(v11 + 8), 0, (v11 + 32));
            if (Empty)
            {
              return Empty;
            }

            *(v11 + 40) = 0;
            *(v11 + 48) = 0;
            v22 = *(a3 + 16);
            *(v11 + 56) = *a3;
            *(v11 + 24) = a5;
            *(v11 + 72) = v22;
            *(v11 + 80) = a6;
            v20 = *(v11 + 32);
          }

          appended = CMBlockBufferAppendBufferReference(v20, theBuffer, 0, DataLength, 0);
          if (appended)
          {
            goto LABEL_32;
          }

          v23 = *(v11 + 40);
          v24 = *(v11 + 48);
        }

        v30 = v11 + 16 * v23;
        *(v30 + 88) = v24;
        *(v30 + 96) = 1;
        *(v30 + 100) = DataLength;
        v31 = v23 + 1;
        *(v11 + 40) = v31;
        *(v11 + 48) = v24 + DataLength;
        if (v18 > v31)
        {
          return 0;
        }

        return MP3FlushForType(a1);
      }
    }
  }

LABEL_32:
  v32 = appended;
LABEL_36:
  v34 = *(a1 + 88);
  v35 = *(v34 + 32);
  if (v35)
  {
    CFRelease(v35);
  }

  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  return v32;
}

uint64_t MP3FlushForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(v1 + 40);
  presentationTimeStamp = *(v1 + 56);
  target = 0;
  v7 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, v2, 1u, 0, 0, v5, v6, &presentationTimeStamp, (v1 + 88), &target);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = *(v1 + 24);
    if (v8)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604D0], *MEMORY[0x1E695E4D0], 1u);
      v8 = *(v1 + 24);
    }

    v9 = (*(a1 + 24))(a1, *(a1 + 32), target, *(v1 + 80), v8);
    if (target)
    {
      CFRelease(target);
    }
  }

  v10 = *(v1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return v9;
}

uint64_t FigAirPlayURLProcessorUtilHandleStreamingKeyResponse(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (!*DerivedStorage)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    v5 = *(DerivedStorage + 120);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigAirPlayURLProcessorUtilHandleStreamingKeyResponse_block_invoke;
    block[3] = &__block_descriptor_tmp_57;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a1;
    dispatch_async(v5, block);
  }

  return FigReadWriteLockUnlockForRead();
}

void __FigAirPlayURLProcessorUtilHandleStreamingKeyResponse_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (!**(a1 + 32))
  {
    FigCFDictionaryGetValueIfPresent();
    if (FigCFEqual())
    {
      FigCFDictionaryGetValueIfPresent();
      if (dword_1EAF17368)
      {
        OUTLINED_FUNCTION_147();
        v2 = OUTLINED_FUNCTION_126();
        if (os_log_type_enabled(v2, type))
        {
          v3 = v7;
        }

        else
        {
          v3 = v7 & 0xFFFFFFFE;
        }

        if (v3)
        {
          CMBaseObjectGetDerivedStorage();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      FigSimpleMutexLock();
      FigCFDictionaryGetValueIfPresent();
      FigCFDictionaryGetValueIfPresent();
      FigSimpleMutexUnlock();
    }
  }

  FigReadWriteLockUnlockForRead();
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t urlProcessor_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    FigReadWriteLockLockForWrite();
    FigReadWriteLockUnlockForWrite();
  }

  return 0;
}

void urlProcessor_Finalize(int a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17368 >= 2)
  {
    OUTLINED_FUNCTION_147();
    v3 = OUTLINED_FUNCTION_126();
    if (os_log_type_enabled(v3, type))
    {
      v4 = v19;
    }

    else
    {
      v4 = v19 & 0xFFFFFFFE;
    }

    if (v4)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_39();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  urlProcessor_Invalidate();
  FigCFDictionaryApplyBlock();
  v5 = DerivedStorage[11];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[11] = 0;
  }

  v6 = DerivedStorage[13];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[13] = 0;
  }

  FigCFDictionaryRemoveAllValues();
  v7 = DerivedStorage[8];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[8] = 0;
  }

  FigCFDictionaryRemoveAllValues();
  v8 = DerivedStorage[9];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[9] = 0;
  }

  v9 = DerivedStorage[18];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[18] = 0;
  }

  v10 = DerivedStorage[1];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[1] = 0;
  }

  while (1)
  {
    v11 = DerivedStorage[6];
    if (!v11)
    {
      break;
    }

    DerivedStorage[6] = *v11;
    urlProcessor_freeCustomURLRequestListEntry(a1, v11);
  }

  while (1)
  {
    v12 = DerivedStorage[7];
    if (!v12)
    {
      break;
    }

    DerivedStorage[7] = *v12;
    urlProcessor_freeContentKeyRequestListEntry(a1, v12);
  }

  if (DerivedStorage[5])
  {
    FigReadWriteLockDestroy();
    DerivedStorage[5] = 0;
  }

  v13 = DerivedStorage[15];
  if (v13)
  {
    dispatch_release(v13);
    DerivedStorage[15] = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v14 = DerivedStorage[4];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[4] = 0;
  }

  v15 = DerivedStorage[3];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[3] = 0;
  }

  v16 = DerivedStorage[19];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[19] = 0;
  }

  v17 = DerivedStorage[20];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[20] = 0;
  }
}

uint64_t urlProcessor_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2)
    {
      v8 = DerivedStorage;
      if (!*DerivedStorage)
      {
        if (CFEqual(a2, @"shouldProvideFPSSecureStop"))
        {
          v9 = MEMORY[0x1E695E4D0];
          if (!v8[96])
          {
            v9 = MEMORY[0x1E695E4C0];
          }

          v10 = *v9;
          if (*v9)
          {
            v10 = CFRetain(v10);
          }

          *a4 = v10;
        }
      }
    }
  }

  return 0;
}

void urlProcessor_handleCreateKeyRequest(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetValueIfPresent();
    FigReadWriteLockLockForRead();
    if (!*DerivedStorage)
    {
      Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
      if (Int64IfPresent | FigCFDictionaryGetInt64IfPresent())
      {
        if (*(DerivedStorage + 24))
        {
          v10 = (CMBaseObjectGetDerivedStorage() + 56);
          while (1)
          {
            v10 = *v10;
            if (!v10)
            {
              break;
            }

            if (!v10[1])
            {
              OUTLINED_FUNCTION_496();
              APCustomURLResponseFromContentKeyResponse = urlProcessor_createAPCustomURLResponseFromContentKeyResponse(v11, v12, v13, v14);
              goto LABEL_13;
            }
          }
        }

        else
        {
          v16 = (CMBaseObjectGetDerivedStorage() + 48);
          while (1)
          {
            v16 = *v16;
            if (!v16)
            {
              break;
            }

            if (!v16[1])
            {
              OUTLINED_FUNCTION_496();
              APCustomURLResponseFromContentKeyResponse = urlProcessor_createAPCustomURLResponseFromLocalCustomURLResponse(v17, v18, v19, v20);
LABEL_13:
              v21 = APCustomURLResponseFromContentKeyResponse;
              if (!APCustomURLResponseFromContentKeyResponse)
              {
                v27 = 0;
                v25 = 0;
                goto LABEL_20;
              }

              v22 = *MEMORY[0x1E695E480];
              v23 = 1;
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v25 = Mutable;
              if (Mutable)
              {
                CFDictionaryAddValue(Mutable, @"CSKRO_RemoteContext", 0);
                FigCFDictionarySetValueFromKeyInDict();
                v26 = MEMORY[0x1E695E4D0];
                v27 = CFDictionaryCreateMutable(v22, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v27)
                {
                  goto LABEL_20;
                }

                FigCFDictionarySetValueFromKeyInDict();
                FigCFDictionarySetValueFromKeyInDict();
                CFDictionaryAddValue(v27, *MEMORY[0x1E6961CB8], v21);
                CFDictionaryAddValue(v27, *MEMORY[0x1E6961C60], v25);
                CFDictionaryAddValue(v27, @"IsContentKeyRequest", *v26);
                FigSimpleMutexLock();
                ++*(DerivedStorage + 112);
                UInt64 = FigCFNumberCreateUInt64();
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                if (UInt64)
                {
                  CFRelease(UInt64);
                }

                FigSimpleMutexUnlock();
                urlProcessor_postNotification(a2);
                v23 = 0;
              }

              else
              {
                v27 = 0;
              }

              goto LABEL_21;
            }
          }
        }
      }
    }
  }

  v27 = 0;
  v25 = 0;
  v21 = 0;
LABEL_20:
  v23 = 1;
LABEL_21:
  FigReadWriteLockUnlockForRead();
  if (a4 && v23)
  {
    FigAirPlayCryptorUtilHandleStreamingKeyResponse(a4, 0);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

CFMutableDictionaryRef urlProcessor_createAPCustomURLResponseFromContentKeyResponse(uint64_t a1, uint64_t a2, uint64_t a3, __CFError *a4)
{
  CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v22 = 0;
  v8 = FigCFHTTPCreateURLString(*(a2 + 24));
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (a4)
    {
      CFErrorGetCode(a4);
    }

    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
    FigCFDictionarySetCFIndex();
    if (a3)
    {
      v20 = 0;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(a3, *MEMORY[0x1E6961138], v10, &v21);
      }

      if (!FigCFEqual())
      {
        cf[0] = 0;
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v14 = OUTLINED_FUNCTION_797();
          v15(v14);
        }

        FigCFDictionarySetValue();
        v13 = 0;
LABEL_14:
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v16 = OUTLINED_FUNCTION_797();
          v17(v16);
        }

        FigCFDictionarySetValue();
        CFRelease(v9);
        if (!v13)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay(a1, Mutable, a3, &v22);
      v13 = v22;
      if (v22)
      {
        FigCFDictionarySetValue();
        goto LABEL_14;
      }

      FigSignalErrorAtGM();
    }
  }

  v13 = v9;
LABEL_21:
  CFRelease(v13);
LABEL_22:
  if (v21)
  {
    CFRelease(v21);
  }

  return Mutable;
}

CFMutableDictionaryRef urlProcessor_createAPCustomURLResponseFromLocalCustomURLResponse(uint64_t a1, uint64_t a2, uint64_t a3, __CFError *a4)
{
  v31 = 0;
  cf = 0;
  Code = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  blockBufferOut = 0;
  v24 = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (!FigCustomURLRequestInfoCopyURL())
    {
      v10 = FigCFHTTPCreateURLString(cf);
      if (v10)
      {
        v11 = v10;
        if (a3)
        {
          FigCustomURLResponseInfoCopyHTTPHeaders();
          FigCustomURLResponseInfoCopyContentRenewalDate();
          v12 = FigCustomURLResponseInfoCopyUniversalTypeIdentifier();
          if (v12 != -17360 && v12)
          {
            OUTLINED_FUNCTION_243();
            goto LABEL_27;
          }

          if (!a4)
          {
            FigCustomURLResponseInfoGetHTTPStatusCode();
            goto LABEL_11;
          }
        }

        else if (!a4)
        {
          goto LABEL_11;
        }

        Code = CFErrorGetCode(a4);
LABEL_11:
        v13 = *(a2 + 40);
        if (v13)
        {
          if (CMBlockBufferCreateContiguous(v8, v13, v8, 0, 0, 0, 0, &blockBufferOut))
          {
            goto LABEL_28;
          }

          OUTLINED_FUNCTION_496();
          if (FigCreateCFDataWithBlockBufferNoCopy())
          {
            goto LABEL_28;
          }
        }

        FigCFDictionarySetInt64();
        FigCFDictionarySetValue();
        FigCFDictionarySetCFIndex();
        if (!FigCFEqual())
        {
          FigCFDictionarySetValue();
          v16 = 0;
          goto LABEL_22;
        }

        v14 = *(a2 + 48);
        if (v14)
        {
          v15 = CFRetain(v14);
          if (v15)
          {
            v16 = v15;
            v17 = v31;
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v18)
            {
              v18(v16, *MEMORY[0x1E69610F0], v17);
            }

            urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay(a1, Mutable, v16, &v24);
            if (v24)
            {
              FigCFDictionarySetValue();
LABEL_22:
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
              if (v27)
              {
                v19 = MEMORY[0x19A8CCD90]();
                Current = CFAbsoluteTimeGetCurrent();
                memset(&v23, 0, sizeof(v23));
                CMTimeMakeWithSeconds(&v23, v19 - Current, 1000);
                FigCFDictionarySetCMTime();
              }

              v21 = Mutable;
              Mutable = 0;
              goto LABEL_29;
            }

            OUTLINED_FUNCTION_243();
            FigSignalErrorAtGM();
            v21 = 0;
LABEL_29:
            CFRelease(v11);
            goto LABEL_30;
          }
        }

        OUTLINED_FUNCTION_243();
LABEL_27:
        FigSignalErrorAtGM();
LABEL_28:
        v21 = 0;
        v16 = 0;
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
  v21 = 0;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v21;
}

_BYTE *urlProcessor_postNotification(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = result;
    if (!*result)
    {
      FigReadWriteLockLockForRead();
      if (!*v3)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      return FigReadWriteLockUnlockForRead();
    }
  }

  return result;
}

uint64_t urlp_FigCFDictionaryGetBooleanIfPresent(uint64_t result, const void *a2, _BYTE *a3)
{
  value = 0;
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFDictionaryGetTypeID() && a2 && a3)
    {
      result = CFDictionaryGetValueIfPresent(v5, a2, &value);
      if (!result)
      {
        return result;
      }

      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(value))
      {
        *a3 = CFBooleanGetValue(value);
        return 1;
      }

      v8 = CFNumberGetTypeID();
      if (v8 == CFGetTypeID(value) && !CFNumberIsFloatType(value))
      {
        v9 = 0;
        CFNumberGetValue(value, kCFNumberSInt64Type, &v9);
        *a3 = v9 != 0;
        return 1;
      }
    }

    else
    {
      FigSignalErrorAtGM();
    }

    return 0;
  }

  return result;
}

uint64_t urlProcessor_customURLLoaderDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char a5, __CFError *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = (CMBaseObjectGetDerivedStorage() + 48);
  do
  {
    v13 = *v13;
    if (!v13)
    {
      if (dword_1EAF17368)
      {
        OUTLINED_FUNCTION_147();
        v18 = OUTLINED_FUNCTION_126();
        os_log_type_enabled(v18, type);
        OUTLINED_FUNCTION_46();
        if (a6)
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_30();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      valuePtr[0] = -17227;
      v19 = CMBaseObjectGetDerivedStorage();
      v20 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v22 = CFNumberCreate(v20, kCFNumberSInt32Type, valuePtr);
      if (v19)
      {
        CFDictionarySetValue(Mutable, @"ResultIsFatal", *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(Mutable, @"Result", v22);
        urlProcessor_postNotification(a1);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v22)
      {
        goto LABEL_17;
      }

      return FigReadWriteLockUnlockForRead();
    }
  }

  while (v13[1] != a2);
  FigReadWriteLockLockForRead();
  if (!*DerivedStorage)
  {
    if (a4)
    {
      if (v13[5])
      {
        OUTLINED_FUNCTION_496();
        CMBlockBufferAppendBufferReference(v14, v15, v16, v17, 0);
      }

      else
      {
        v13[5] = CFRetain(a4);
      }
    }

    if ((a5 & 3) != 0)
    {
      APCustomURLResponseFromLocalCustomURLResponse = urlProcessor_createAPCustomURLResponseFromLocalCustomURLResponse(a1, v13, a3, a6);
      if (APCustomURLResponseFromLocalCustomURLResponse)
      {
        v22 = APCustomURLResponseFromLocalCustomURLResponse;
        v25 = CMBaseObjectGetDerivedStorage();
        LOBYTE(valuePtr[0]) = 0;
        if (!v25 || (v26 = v25, *v25))
        {
          FigSignalErrorAtGM();
        }

        else
        {
          FigCFDictionaryGetBooleanIfPresent();
          FigCFDictionarySetUInt64();
          FigCFDictionarySetBoolean();
          v28 = v26 + 48;
          for (i = *(v26 + 6); i != v13; i = *i)
          {
            v28 = i;
          }

          *v28 = *i;
          if (LOBYTE(valuePtr[0]) && v26[96])
          {
            FigAirPlaySecureStopRouterCommitToDisk(*(v26 + 13));
          }

          urlProcessor_postNotification(a1);
        }

        urlProcessor_freeCustomURLRequestListEntry(a1, v13);
LABEL_17:
        CFRelease(v22);
      }
    }
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t FigAirPlayURLProcessorCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAirPlayURLProcessorCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAirPlayURLProcessorCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAirPlayURLProcessorCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_HandleRequest_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_HandleRequest_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_HandleRequest_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_HandleRequest_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_HandleRequest_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t urlProcessor_HandleRequest_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void urlProcessor_contentKeyDataCallback_cold_1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 56);
  v6 = (a1 + 56);
  for (i = v8; i != a2; i = *i)
  {
    v6 = i;
  }

  *v6 = *i;
  FigCFDictionarySetUInt64();
  urlProcessor_postNotification(a4);

  urlProcessor_freeContentKeyRequestListEntry(a4, a2);
}

void urlProcessor_contentKeyDataCallback_cold_2(int a1, void *a2)
{
  FigSignalErrorAtGM();

  urlProcessor_freeContentKeyRequestListEntry(a1, a2);
}

__CFString *FigVTTCopyNodeTypeName(int a1)
{
  valuePtr = a1;
  MEMORY[0x19A8D3660](&FigVTTCopyNodeTypeName_once, figVTT_initNodeVTTTypeNameMapping);
  if (sVTTNodeTypeNameMapping && (v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr)) != 0 && (v2 = v1, Value = CFDictionaryGetValue(sVTTNodeTypeNameMapping, v1), CFRelease(v2), Value))
  {
    return CFRetain(Value);
  }

  else
  {
    return @"<node-type-name-failure>";
  }
}

__CFString *FigVTTCopySectionTypeName(int a1)
{
  valuePtr = a1;
  MEMORY[0x19A8D3660](&FigVTTCopySectionTypeName_once, figVTT_initVTTSectionTypeNameMapping);
  if (sVTTSectionTypeNameMapping && (v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr)) != 0 && (v2 = v1, Value = CFDictionaryGetValue(sVTTSectionTypeNameMapping, v1), CFRelease(v2), Value))
  {
    return CFRetain(Value);
  }

  else
  {
    return @"<section-type-name-failure>";
  }
}

uint64_t CreateSampleGeneratorForMpeg2Video(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x98uLL, 0x10600405E1F1638uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = M2VPushForType;
  a1[8] = M2VResyncForType;
  a1[7] = M2VFlushForType;
  a1[9] = M2VDestroyForType;
  a1[10] = M2VGetBitRateForType;
  a1[11] = v3;
  return result;
}

uint64_t M2VPushForType(uint64_t a1, OpaqueCMBlockBuffer *cf, uint64_t a3, CMTime *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v144 = a3;
  v145 = a4;
  DataPointer = 0;
  v168 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 88);
  v164 = 24;
  v165 = 1;
  blockBufferOut = 0;
  v147 = (a1 + 40);
  v13 = (a5 >> 1) & 1;
  if (*(a1 + 40))
  {
    v13 = 1;
  }

  if ((a5 & 0x800) != 0 || !v13)
  {
    return DataPointer;
  }

  v16 = a5;
  v17 = v10;
  DataLength = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  returnedPointerOut = 0;
  memset(temporaryBlock, 0, sizeof(temporaryBlock));
  Mutable = CFDictionaryCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  targetBBuf = DataLength;
  if (!Mutable)
  {
    fig_log_get_emitter();
    Contiguous = FigSignalErrorAtGM();
LABEL_224:
    DataPointer = Contiguous;
    goto LABEL_225;
  }

  v146 = a1;
  HIDWORD(v141) = v16;
  v22 = CMGetAttachment(DataLength, @"ByteOffsetToSecondField", 0);
  cfa = v22;
  v30 = v22 != 0;
  v140 = a6;
  if ((v16 & 2) == 0 && *(v12 + 16) == v30)
  {
    v31 = Mutable;
    LODWORD(DataPointer) = 0;
    v153 = 0;
    v155 = 0;
    OUTLINED_FUNCTION_1_98();
    v149 = 0;
    goto LABEL_170;
  }

  HIDWORD(v138) = v16;
  v151 = v12;
  if (a7 < 1)
  {
    v42 = 0;
    v156 = 0;
    v75 = 0;
    LODWORD(v39) = 0;
    v76 = 0;
    LODWORD(DataPointer) = 0;
    v40 = 0;
LABEL_85:
    if (*v147)
    {
LABEL_86:
      if (*(v12 + 16) != v30)
      {
        v154 = v75;
        v150 = v76;
        v77 = v30;
        v78 = FigFormatDescriptionRelease();
        *v147 = 0;
        v79 = v77;
        if (!DataPointer)
        {
LABEL_99:
          *(v12 + 16) = v79;
          LODWORD(valuePtr.value) = 0;
          LODWORD(dataPointerOut) = 0;
          DataLength = MEMORY[0x1E695E480];
          v16 = HIDWORD(v138);
          if (v40)
          {
            v87 = *(v12 + 12);
            if ((v87 - 2) > 2)
            {
              goto LABEL_148;
            }

            v88 = v12[1];
            if (v88 != 720)
            {
              goto LABEL_115;
            }

            v89 = *v12;
            if (*v12 == 480)
            {
LABEL_105:
              if (v87 != 3)
              {
                if (v87 != 2)
                {
                  goto LABEL_125;
                }

LABEL_114:
                v92 = 10;
                LODWORD(valuePtr.value) = 10;
                v93 = 11;
                goto LABEL_143;
              }

              v92 = 40;
              LODWORD(valuePtr.value) = 40;
              v93 = 33;
LABEL_143:
              LODWORD(dataPointerOut) = v93;
              if (v92 >= 1 && v93 >= 1)
              {
                v104 = OUTLINED_FUNCTION_2_95(v78, v23, v24, v25, v26, v27, v28, v29, v126, v127, v128, v129, value, v131, key, v133, v134, v135, v136, v137, v138, theDict, v140, v141, cfa, v143, v144, v145, v146);
                v105 = CFDictionaryCreateMutable(v104, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v102 = v105;
                if (v105)
                {
                  v106 = *DataLength;
                  v103 = CFNumberCreate(*DataLength, kCFNumberSInt32Type, &valuePtr);
                  if (v103)
                  {
                    v107 = CFNumberCreate(v106, kCFNumberSInt32Type, &dataPointerOut);
                    if (v107)
                    {
                      v108 = v107;
                      CFDictionarySetValue(v102, *MEMORY[0x1E6965EF0], v103);
                      v149 = v108;
                      CFDictionarySetValue(v102, *MEMORY[0x1E6965F00], v108);
                      CFDictionarySetValue(Mutable, *MEMORY[0x1E6965EF8], v102);
LABEL_153:
                      v155 = v102;
                      if (!cfa)
                      {
                        v109 = a7;
                        if ((v16 & 0x600) != 0)
                        {
                          v165 = 2;
                        }

                        goto LABEL_161;
                      }

                      v165 = 2;
                      v109 = a7;
                      if ((v16 & 0x200) != 0)
                      {
                        v110 = *MEMORY[0x1E6965E58];
                        v111 = MEMORY[0x1E6965E60];
                      }

                      else
                      {
                        if ((v16 & 0x400) == 0)
                        {
LABEL_161:
                          v112 = *DataLength;
                          v17 = CFNumberCreate(*DataLength, kCFNumberIntType, &v165);
                          CFDictionarySetValue(Mutable, *MEMORY[0x1E6965E50], v17);
                          DataLength = CFNumberCreate(v112, kCFNumberSInt32Type, &v164);
                          CFDictionarySetValue(Mutable, *MEMORY[0x1E6960028], DataLength);
                          v153 = v103;
                          if (!CFDictionaryGetCount(Mutable))
                          {
                            CFRelease(Mutable);
                            Mutable = 0;
                          }

                          if (*(v151 + 128))
                          {
                            v113 = 1836069494;
                          }

                          else
                          {
                            v113 = 1836069238;
                          }

                          v31 = Mutable;
                          appended = CMVideoFormatDescriptionCreate(*(v146 + 8), v113, v151[1], *v151, Mutable, v147);
                          if (appended)
                          {
                            goto LABEL_168;
                          }

                          appended = (*(v146 + 16))(v146, *(v146 + 32), *(v146 + 40));
                          if (appended)
                          {
                            goto LABEL_168;
                          }

                          a7 = v109;
                          v12 = v151;
LABEL_170:
                          v114 = targetBBuf;
                          if ((v141 & 0x1000000000) == 0 || (v114 = targetBBuf, DataPointer) || (v115 = *(v12 + 17), v114 = targetBBuf, !v115))
                          {
LABEL_176:
                            if (*v147)
                            {
                              if ((*(v144 + 12) & 1) == 0)
                              {
                                puts("mpeg2 video pts is invalid");
                              }

                              valuePtr = *v145;
                              DataPointer = PushM2VFrame(v146, &valuePtr, 1);
                              v118 = cfa;
                              if (cfa)
                              {
                                v118 = CFRetain(cfa);
                              }

                              *(v12 + 15) = v118;
                              if (v114)
                              {
                                v119 = CFRetain(v114);
                              }

                              else
                              {
                                v119 = 0;
                              }

                              *(v12 + 3) = v119;
                              v120 = *v144;
                              *(v12 + 6) = *(v144 + 16);
                              *(v12 + 2) = v120;
                              v121 = *&v145->value;
                              *(v12 + 9) = v145->epoch;
                              *(v12 + 14) = v121;
                              v12[26] = v16;
                              *(v12 + 14) = v140;
                              *(v12 + 15) = 0;
                              if ((v16 & 0x20) != 0)
                              {
                                *(v12 + 14) = 1;
                                if (a7 < 1)
                                {
                                  v122 = v149;
                                }

                                else
                                {
                                  v123 = 0;
                                  while (*(a10 + v123) != 184)
                                  {
                                    if (++v123 >= a7)
                                    {
                                      v122 = v149;
                                      goto LABEL_198;
                                    }
                                  }

                                  LOBYTE(valuePtr.value) = 0;
                                  appended = CMBlockBufferCopyDataBytes(v114, *(a8 + 8 * v123) + 7, 1uLL, &valuePtr);
                                  if (appended)
                                  {
                                    goto LABEL_168;
                                  }

                                  v124 = valuePtr.value;
                                  v122 = v149;
                                  if ((valuePtr.value & 0x40) == 0)
                                  {
                                    *(v12 + 14) = 0;
                                  }

                                  if ((v124 & 0x20) != 0)
                                  {
                                    *(v12 + 15) = 1;
                                  }

                                  DataPointer = 0;
LABEL_198:
                                  if (!*(v12 + 14))
                                  {
                                    v12[26] |= 0x40u;
                                  }
                                }

                                if (*(v12 + 15))
                                {
                                  v12[26] |= 0x80u;
                                }

                                Mutable = v31;
                                v103 = v153;
                                v102 = v155;
                                goto LABEL_203;
                              }
                            }

                            else
                            {
                              DataPointer = 0;
                            }

LABEL_185:
                            Mutable = v31;
                            v103 = v153;
                            v102 = v155;
                            v122 = v149;
                            goto LABEL_203;
                          }

                          v116 = OUTLINED_FUNCTION_2_95(appended, v115, v33, v34, v35, v36, v37, v38, v126, v127, v128, v129, value, v131, key, v133, v134, v135, v136, v137, v138, theDict, v140, v141, cfa, v143, v144, v145, v146);
                          appended = CMBlockBufferCreateWithBufferReference(v116, v117, 0, 0, 0, &blockBufferOut);
                          if (!appended)
                          {
                            appended = CMBlockBufferAppendBufferReference(blockBufferOut, targetBBuf, 0, 0, 0);
                            if (!appended)
                            {
                              v114 = blockBufferOut;
                              goto LABEL_176;
                            }
                          }

LABEL_168:
                          DataPointer = appended;
                          goto LABEL_185;
                        }

                        v110 = *MEMORY[0x1E6965E58];
                        v111 = MEMORY[0x1E6965E68];
                      }

                      CFDictionarySetValue(Mutable, v110, *v111);
                      goto LABEL_161;
                    }
                  }
                }

                else
                {
                  v103 = 0;
                }

                fig_log_get_emitter();
                DataPointer = FigSignalErrorAtGM();
                OUTLINED_FUNCTION_1_98();
                goto LABEL_226;
              }

LABEL_148:
              v102 = 0;
              v103 = 0;
              v149 = 0;
              goto LABEL_153;
            }

            if (v89 != 576)
            {
              if (v89 == 486)
              {
                goto LABEL_105;
              }

LABEL_115:
              v94 = 4 * v87 - 8;
              v95 = *(&unk_196E77838 + v94);
              v96 = *(&unk_196E77844 + v94);
LABEL_116:
              v92 = *v12 * v96;
              LODWORD(valuePtr.value) = v92;
              v93 = v88 * v95;
              goto LABEL_143;
            }

            if (v87 == 3)
            {
              v92 = 118;
              LODWORD(valuePtr.value) = 118;
              v93 = 81;
              goto LABEL_143;
            }

            if (v87 != 2)
            {
LABEL_125:
              v96 = 221;
              v95 = 100;
              goto LABEL_116;
            }

LABEL_124:
            v92 = 59;
            LODWORD(valuePtr.value) = 59;
            v93 = 54;
            goto LABEL_143;
          }

          v90 = *(v12 + 13);
          if (v90 != 4)
          {
            if (v90 == 3)
            {
              v97 = *v12;
              if (*v12 == 208)
              {
                if (v12[1] != 368)
                {
                  goto LABEL_141;
                }

                v92 = 65;
              }

              else
              {
                if (v97 != 272)
                {
                  if (v97 == 288 && v12[1] == 352)
                  {
                    goto LABEL_124;
                  }

LABEL_141:
                  if (*(v12 + 12) - 1 > 0xD)
                  {
                    goto LABEL_148;
                  }

                  v100 = &sM1VPixelAspectRatios + 4 * v39;
                  v92 = *(v100 - 2);
                  LODWORD(valuePtr.value) = v92;
                  v93 = *(v100 - 1);
                  goto LABEL_143;
                }

                if (v12[1] != 368)
                {
                  goto LABEL_141;
                }

                v92 = 68;
              }

              LODWORD(valuePtr.value) = v92;
              v93 = 69;
              goto LABEL_143;
            }

            if (v90 != 1)
            {
              goto LABEL_141;
            }
          }

          if (*v12 == 240)
          {
            v91 = v12[1];
            if (v91 == 384)
            {
              v99 = *(v12 + 12);
              if (v99 == 14 || v99 == 1)
              {
                v92 = 5;
                LODWORD(valuePtr.value) = 5;
                v93 = 6;
                goto LABEL_143;
              }
            }

            else if (v91 == 352)
            {
              goto LABEL_114;
            }
          }

          goto LABEL_141;
        }

LABEL_98:
        *v12 = v42;
        v12[1] = v156;
        v12[2] = v154;
        *(v12 + 12) = v39;
        *(v12 + 13) = v150;
        *(v12 + 128) = v40;
        goto LABEL_99;
      }
    }

    v31 = Mutable;
    v153 = 0;
    v155 = 0;
    OUTLINED_FUNCTION_1_98();
    v149 = 0;
    v16 = HIDWORD(v138);
    goto LABEL_170;
  }

  HIDWORD(v134) = v22 != 0;
  v135 = v10;
  theDict = Mutable;
  v143 = 0;
  LODWORD(v39) = 0;
  v40 = 0;
  v41 = 0;
  v17 = 0;
  v148 = 0;
  v150 = 0;
  v154 = 0;
  v156 = 0;
  v42 = 0;
  key = *MEMORY[0x1E6965D88];
  value = *MEMORY[0x1E6965DD8];
  v137 = *MEMORY[0x1E6965DB8];
  v131 = *MEMORY[0x1E6965F30];
  v129 = *MEMORY[0x1E6965F68];
  v136 = *MEMORY[0x1E6965F50];
  v133 = *MEMORY[0x1E6965F98];
  v128 = *MEMORY[0x1E6965FF0];
  v126 = *MEMORY[0x1E6965FD0];
  v127 = *MEMORY[0x1E6965FC8];
  do
  {
    v43 = *(a10 + v17);
    if (*(a10 + v17) && v43 != 184)
    {
      if (!v39)
      {
        v143 += *(a9 + 8 * v17);
      }
    }

    else
    {
      LODWORD(v39) = 1;
    }

    if (v43 != 179)
    {
      if (v43 != 181)
      {
        if (!*(a10 + v17))
        {
          break;
        }

        goto LABEL_52;
      }

      if (*(a9 + 8 * v17) <= 7uLL)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_4_76();
        v22 = FigSignalErrorAtGM();
LABEL_222:
        DataPointer = v22;
        v102 = 0;
        OUTLINED_FUNCTION_1_98();
        v103 = 0;
        v122 = 0;
        goto LABEL_203;
      }

      v44 = a7;
      v45 = a10;
      v46 = v41;
      if (v41)
      {
        v40 = 1;
      }

      v22 = CMBlockBufferAccessDataBytes(DataLength, *(a8 + 8 * v17) + 4, 4uLL, temporaryBlock, &returnedPointerOut);
      if (v22)
      {
        goto LABEL_222;
      }

      v47 = *returnedPointerOut;
      if (v47 >> 4 != 2)
      {
        v41 = v46;
        if (v47 >> 4 == 1)
        {
          v48 = returnedPointerOut[2];
          v156 |= (32 * (v48 & 0x80)) & 0xDFFF | ((returnedPointerOut[1] & 1) << 13);
          v42 |= (v48 & 0x60) << 7;
          v154 |= (returnedPointerOut[3] << 17) & 0x1FC0000 | ((v48 & 0x1F) << 25);
        }

        goto LABEL_51;
      }

      if ((v47 & 1) == 0)
      {
        goto LABEL_50;
      }

      v52 = returnedPointerOut[1];
      v53 = returnedPointerOut[2];
      LODWORD(DataPointer) = returnedPointerOut[3];
      v54 = v137;
      if (v52 != 1)
      {
        if (v52 != 6)
        {
          goto LABEL_38;
        }

        v54 = value;
      }

      CFDictionarySetValue(Mutable, key, v54);
LABEL_38:
      v24 = v136;
      if (v53 != 1)
      {
        v55 = v53 == 7;
        DataLength = targetBBuf;
        if (!v55)
        {
          goto LABEL_43;
        }

        v24 = v129;
      }

      CFDictionarySetValue(Mutable, v131, v24);
      DataLength = targetBBuf;
LABEL_43:
      switch(DataPointer)
      {
        case 7:
          v56 = Mutable;
          v57 = v133;
          v58 = v128;
          goto LABEL_49;
        case 6:
          v56 = Mutable;
          v57 = v133;
          v58 = v127;
          goto LABEL_49;
        case 1:
          v56 = Mutable;
          v57 = v133;
          v58 = v126;
LABEL_49:
          CFDictionarySetValue(v56, v57, v58);
          break;
      }

LABEL_50:
      v41 = v46;
LABEL_51:
      a10 = v45;
      a7 = v44;
      v12 = v151;
      goto LABEL_52;
    }

    if (*(a9 + 8 * v17) < 0xBuLL)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_76();
      v22 = FigSignalErrorAtGM();
      if (v22)
      {
        goto LABEL_222;
      }
    }

    else
    {
      v49 = *(a8 + 8 * v17);
      valuePtr.value = 0;
      v22 = CMBlockBufferAccessDataBytes(DataLength, v49 + 4, 7uLL, &dataPointerOut, &valuePtr);
      if (v22)
      {
        goto LABEL_222;
      }

      v50 = *(valuePtr.value + 1);
      v156 = (v50 >> 4) | (16 * *valuePtr.value);
      v42 = *(valuePtr.value + 2) | ((v50 & 0xF) << 8);
      v51 = *(valuePtr.value + 3);
      v148 = v51 >> 4;
      v150 = v51 & 0xF;
      v154 = (*(valuePtr.value + 4) << 10) | (4 * *(valuePtr.value + 5)) | (*(valuePtr.value + 6) >> 6);
    }

    v41 = 1;
LABEL_52:
    ++v17;
  }

  while (v17 < a7);
  LODWORD(v137) = v41;
  if ((v141 & 0x1000000000) == 0 || !v41)
  {
    v17 = v10;
    if (!v41)
    {
      OUTLINED_FUNCTION_3_70();
      goto LABEL_85;
    }

    goto LABEL_91;
  }

  v39 = (v12 + 34);
  v17 = v10;
  if (!*(v12 + 17))
  {
    OUTLINED_FUNCTION_2_95(v22, v23, v24, v25, v26, v27, v28, v29, v126, v127, v128, v129, value, v131, key, v133, v134, v10, v136, v137, v138, Mutable, v140, v141, cfa, v143, v144, v145, v146);
    OUTLINED_FUNCTION_0_110();
    Contiguous = CMBlockBufferCreateContiguous(v80, v81, v82, v83, v84, v85, v86, v12 + 17);
    if (Contiguous)
    {
      goto LABEL_224;
    }

    goto LABEL_91;
  }

  valuePtr.value = 0;
  OUTLINED_FUNCTION_2_95(v22, v23, v24, v25, v26, v27, v28, v29, v126, v127, v128, v129, value, v131, key, v133, v134, v10, v136, v137, v138, Mutable, v140, v141, cfa, v143, v144, v145, v146);
  OUTLINED_FUNCTION_0_110();
  Contiguous = CMBlockBufferCreateContiguous(v59, v60, v61, v62, v63, v64, v65, v66);
  if (Contiguous)
  {
    goto LABEL_224;
  }

  LODWORD(DataPointer) = v12 + 136;
  if (!FigBlockBufferCompare())
  {
LABEL_80:
    if (valuePtr.value)
    {
      CFRelease(valuePtr.value);
    }

LABEL_91:
    v78 = *v147;
    if (*v147)
    {
      if (v42 == *v12 && v156 == v12[1] && v148 == *(v12 + 12))
      {
        OUTLINED_FUNCTION_3_70();
        goto LABEL_86;
      }

      v78 = FigFormatDescriptionRelease();
      *v147 = 0;
    }

    LODWORD(DataPointer) = v137;
    LODWORD(v39) = v148;
    v79 = BYTE4(v134);
    goto LABEL_98;
  }

  v161 = 0;
  dataPointerOut = 0;
  DataLength = CMBlockBufferGetDataLength(*v39);
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(*v39, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v68 = valuePtr.value;
  if (!DataPointer)
  {
    v69 = CMBlockBufferGetDataPointer(valuePtr.value, 0, &lengthAtOffsetOut, &totalLengthOut, &v161);
    if (!v69)
    {
      v70 = 0;
      if (DataLength)
      {
        v71 = dataPointerOut - 1;
        while (!*(DataLength + v71))
        {
          --v71;
          v70 = (v70 + 1);
          if (DataLength == v70)
          {
            v70 = DataLength;
            break;
          }
        }
      }

      v72 = 0;
      if (v143)
      {
        v73 = v161 - 1;
        while (!v73[v143])
        {
          --v73;
          if (v143 == ++v72)
          {
            v72 = v143;
            break;
          }
        }
      }

      v24 = (DataLength - v70);
      if (DataLength - v70 == v143 - v72 && !memcmp(dataPointerOut, v161, v24))
      {
        if (v143 < DataLength)
        {
          if (*v39)
          {
            CFRelease(*v39);
          }

          v98 = valuePtr.value;
          if (valuePtr.value)
          {
            v98 = CFRetain(valuePtr.value);
          }

          *v39 = v98;
        }
      }

      else
      {
        if (*v39)
        {
          CFRelease(*v39);
        }

        v74 = valuePtr.value;
        if (valuePtr.value)
        {
          v74 = CFRetain(valuePtr.value);
        }

        *(v12 + 17) = v74;
        *(v12 + 144) = 1;
      }

      goto LABEL_80;
    }

    DataPointer = v69;
    v68 = valuePtr.value;
  }

  if (v68)
  {
    CFRelease(v68);
  }

  Mutable = theDict;
LABEL_225:
  v102 = 0;
  OUTLINED_FUNCTION_1_98();
  v103 = 0;
LABEL_226:
  v122 = 0;
LABEL_203:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (DataLength)
  {
    CFRelease(DataLength);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  return DataPointer;
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  theArray.start.value = 0;
  v54 = *MEMORY[0x1E6961268];
  v3 = *MEMORY[0x1E695E480];
  v59 = a2;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    Mutable = 0;
    v10 = 4294954514;
    goto LABEL_20;
  }

  v6 = v5(CMBaseObject, v54, v3, &theArray);
  if (v6)
  {
    v10 = v6;
LABEL_19:
    Mutable = 0;
    goto LABEL_20;
  }

  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v9 = v8(v59);
    }

    else
    {
      v9 = &stru_1F0B1AFB8;
    }

    Length = CFStringGetLength(v9);
    Count = CFArrayGetCount(theArray.start.value);
    if (!Count)
    {
LABEL_16:
      v76.length = CFArrayGetCount(Mutable);
      v76.location = 0;
      CFArraySortValues(Mutable, v76, MEMORY[0x1E695D7A0], 0);
      v10 = 0;
      goto LABEL_20;
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

LABEL_15:
      if (++v14 == v13)
      {
        goto LABEL_16;
      }
    }

    v16 = ValueAtIndex;
    v17 = 0;
    while (1)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v18)
      {
        v10 = 4294954514;
        goto LABEL_18;
      }

      v19 = v18(v59, v17, v16, v3, 0, start);
      if (v19)
      {
        break;
      }

      v17 = *&start[8] + *start;
      FigCFArrayAppendCFIndex();
      if (v17 == Length)
      {
        goto LABEL_15;
      }
    }

    v10 = v19;
LABEL_18:
    CFRelease(Mutable);
    goto LABEL_19;
  }

  v10 = FigSignalErrorAtGM();
LABEL_20:
  if (theArray.start.value)
  {
    CFRelease(theArray.start.value);
  }

  if (v10)
  {
LABEL_87:
    if (!Mutable)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v20 = CFArrayGetCount(Mutable);
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = 0;
    v24 = *MEMORY[0x1E69614E0];
    v56 = *MEMORY[0x1E69614E0];
    v57 = v20;
    v55 = Mutable;
    while (1)
    {
      v65 = 0;
      FigCFArrayGetCFIndexAtIndex();
      if (v65 == v23)
      {
        goto LABEL_77;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v25 = FigCaptionDataCopySubrange();
      if (v25)
      {
        goto LABEL_93;
      }

      v61 = *DerivedStorage;
      v26 = cf;
      v27 = *(DerivedStorage + 8);
      *&start[16] = *(DerivedStorage + 24);
      *start = v27;
      *&theArray.start.value = *(DerivedStorage + 32);
      theArray.start.epoch = *(DerivedStorage + 48);
      CMTimeRangeFromTimeToTime(&v64, start, &theArray.start);
      *start = 0;
      v63 = v26;
      v28 = FigCaptionDataGetCMBaseObject();
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v29)
      {
        v30 = v29(v28, v54, v3, start);
        if (!v30)
        {
          v31 = CFArrayGetCount(*start);
          v32 = CFArrayCreateMutable(v3, v31, MEMORY[0x1E695E9C0]);
          if (v32)
          {
            v33 = v32;
            v34 = CFArrayGetCount(*start);
            v62 = v33;
            if (v34)
            {
              v35 = v34;
              for (i = 0; i != v35; ++i)
              {
                v37 = CFArrayGetValueAtIndex(*start, i);
                if (!CFEqual(v37, v24))
                {
                  CFArrayAppendValue(v33, v37);
                }
              }
            }

            v10 = 0;
            goto LABEL_39;
          }

          v30 = FigSignalErrorAtGM();
        }

        v10 = v30;
        v62 = 0;
      }

      else
      {
        v62 = 0;
        v10 = 4294954514;
      }

LABEL_39:
      if (*start)
      {
        CFRelease(*start);
      }

      if (v10)
      {
        goto LABEL_73;
      }

      theArray = v64;
      v74 = 0;
      v75 = 0;
      MEMORY[0x19A8D3660](&getCaptionStylePropertyToAttributesMapping_once, initCaptionStylePropertyToAttributesMapping);
      v38 = sCaptionStylePropertyToAttributesMapping;
      v39 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *&start[8] = theArray;
      *start = v63;
      v71 = v39;
      v72 = v38;
      v73 = 0;
      v77.length = CFArrayGetCount(v62);
      v77.location = 0;
      CFArrayApplyFunction(v62, v77, buildTimeToAttributesMap, start);
      if (v73 || (v40 = CFDictionaryGetCount(v39), v40 < 1))
      {
        v52 = 0;
        v45 = 0;
        v42 = 0;
        v10 = 0;
        if (v39)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      v41 = v40;
      v60 = v22;
      if (v40 >> 61)
      {
        v42 = 0;
      }

      else
      {
        v42 = malloc_type_malloc(8 * v40, 0x6004044C4A2DFuLL);
      }

      CFDictionaryGetKeysAndValues(v39, v42, 0);
      qsort_r(v42, v41, 8uLL, 0, compareCFNumber);
      v43 = FigTTMLDocumentWriterElementCreate(v3, 5, 0, &v75);
      if (v43)
      {
        v10 = v43;
        v52 = 0;
        v45 = 0;
        goto LABEL_60;
      }

      v44 = 0;
      v45 = 0;
      while (1)
      {
        v46 = v42[v44];
        Value = CFDictionaryGetValue(v39, v46);
        if (v44)
        {
          break;
        }

        OUTLINED_FUNCTION_0_111(Value, v48, v75);
LABEL_57:
        if (v41 == ++v44)
        {
          FigTTMLDocumentWriterElementAddChildElement(v75, v63);
          v10 = 0;
          v52 = v75;
          v75 = 0;
          goto LABEL_59;
        }
      }

      if (v74)
      {
        CFRelease(v74);
        v74 = 0;
      }

      v49 = FigTTMLDocumentWriterElementCreate(v3, 1, v75, &v74);
      if (!v49)
      {
        valuePtr = 0;
        CFNumberGetValue(v46, kCFNumberSInt32Type, &valuePtr);
        if (v45)
        {
          CFRelease(v45);
        }

        CMTimeMake(&time, valuePtr, 1000);
        v45 = CMTimeCopyAsDictionary(&time, v3);
        FigTTMLDocumentWriterElementSetAttribute(v74, @"begin", v45);
        OUTLINED_FUNCTION_0_111(v50, v51, v74);
        FigTTMLDocumentWriterElementAddChildElement(v75, v74);
        goto LABEL_57;
      }

      v10 = v49;
      v52 = 0;
LABEL_59:
      Mutable = v55;
LABEL_60:
      v22 = v60;
      if (v39)
      {
LABEL_61:
        CFRelease(v39);
      }

LABEL_62:
      if (v45)
      {
        CFRelease(v45);
      }

      free(v42);
      v24 = v56;
      if (v74)
      {
        CFRelease(v74);
      }

      v21 = v57;
      if (v75)
      {
        CFRelease(v75);
      }

      if (v10)
      {
        if (v52)
        {
LABEL_71:
          CFRelease(v52);
        }
      }

      else
      {
        if (v52)
        {
          v10 = FigTTMLDocumentWriterElementWriteTree(v52, v61);
          goto LABEL_71;
        }

        v10 = FigTTMLDocumentWriterAddCaptionData(v61, v63);
      }

LABEL_73:
      if (v62)
      {
        CFRelease(v62);
      }

      if (v10)
      {
        goto LABEL_87;
      }

      v23 = v65;
LABEL_77:
      if (++v22 == v21)
      {
        v10 = 0;
        goto LABEL_87;
      }
    }
  }

  v25 = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, v59);
LABEL_93:
  v10 = v25;
  if (Mutable)
  {
LABEL_88:
    CFRelease(Mutable);
  }

LABEL_89:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_SetAttribute(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
  if (!v6)
  {
    if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      v7 = *&v9.value;
      *(DerivedStorage + 24) = v9.epoch;
      *(DerivedStorage + 8) = v7;
    }

    else if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      *(DerivedStorage + 32) = v9;
    }
  }

  return v6;
}

void buildTimeToAttributesMap(void *key, uint64_t *a2)
{
  v17 = 0;
  cf = 0;
  if (*(a2 + 18))
  {
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(a2[8], key);
  if (Value)
  {
    v5 = Value;
    v6 = *a2;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v8 = v7(v6, 0, key, *MEMORY[0x1E695E480], &cf, 0);
      if (!v8)
      {
        if (!cf)
        {
          goto LABEL_20;
        }

        v9 = CFGetTypeID(cf);
        if (v9 == FigCaptionDynamicStyleGetTypeID())
        {
          KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
          if (KeyFrameCount < 1)
          {
            goto LABEL_23;
          }

          v11 = KeyFrameCount;
          v12 = 0;
          while (1)
          {
            v16 = 0;
            if (v17)
            {
              CFRelease(v17);
              v17 = 0;
            }

            v8 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
            if (v8)
            {
              goto LABEL_22;
            }

            if ((*(a2 + 11) & 0x1D) == 1)
            {
              v15 = *(a2 + 4);
              CMTimeGetSeconds(&v15);
            }

            AttributeDictionaryForAnimationTime = insertOrGetAttributeDictionaryForAnimationTime(a2[7]);
            v8 = v5(v17, AttributeDictionaryForAnimationTime);
            if (v8)
            {
              goto LABEL_22;
            }

            if (v11 == ++v12)
            {
              goto LABEL_23;
            }
          }
        }

        if (cf)
        {
          v14 = insertOrGetAttributeDictionaryForAnimationTime(a2[7]);
          v8 = v5(cf, v14);
        }

        else
        {
LABEL_20:
          v8 = FigSignalErrorAtGM();
        }

        if (!v8)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v8 = -12782;
    }

LABEL_22:
    *(a2 + 18) = v8;
  }

LABEL_23:
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigTTMLDocumentWriterCreateStyleSpanBuilder_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateStyleSpanBuilder_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTNodeSetAttribute_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTNodeSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTNodeCopyValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTInitializeNodeBaseStorage_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MPEG2TSSniff(OpaqueCMBlockBuffer *a1, char a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  v14 = 0;
  if ((a2 & 3) == 0)
  {
    return 0;
  }

  v5 = DataLength;
  result = FindTSHeader(a1, 0, DataLength, &v14);
  if (result)
  {
    while (1)
    {
      v7 = v14;
      v8 = OUTLINED_FUNCTION_5_66();
      if (SniffRestOfBuffer(v8, v9, v10, 188, v11, v12, 0))
      {
        break;
      }

      v14 = v7 + 1;
      TSHeader = FindTSHeader(a1, v7 + 1, v5, &v14);
      result = 0;
      if (!TSHeader)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t FindTSHeader(CMBlockBufferRef theBuffer, size_t offset, size_t a3, size_t *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v13 = 0;
  dataPointerOut = 0;
  while (1)
  {
    if (CMBlockBufferGetDataPointer(theBuffer, offset, &v13, 0, &dataPointerOut))
    {
      return 0;
    }

    v8 = v13;
    if (v13 > v5)
    {
      break;
    }

    if (v13)
    {
      goto LABEL_7;
    }

LABEL_10:
    offset += v8;
    v5 -= v8;
    if (!v5)
    {
      return 0;
    }
  }

  v13 = v5;
  v8 = v5;
LABEL_7:
  v9 = dataPointerOut + 1;
  v10 = v8;
  v11 = offset;
  while (*(v9 - 1) != 71)
  {
    dataPointerOut = v9;
    ++v11;
    ++v9;
    if (!--v10)
    {
      goto LABEL_10;
    }
  }

  *a4 = v11;
  return 1;
}

uint64_t SniffRestOfBuffer(CMBlockBufferRef theBuffer, size_t offset, size_t a3, uint64_t a4, _BYTE *a5, BOOL *a6, _DWORD *a7)
{
  v14 = 0;
  dataPointerOut = 0;
  *a5 = 0;
  *a6 = 0;
  while (1)
  {
    result = CMBlockBufferGetDataPointer(theBuffer, offset, 0, 0, &dataPointerOut);
    if (result || *dataPointerOut != 71)
    {
      break;
    }

    *a5 = 1;
    offset += a4;
    ++v14;
    if (offset >= a3)
    {
      *a6 = v14 != 1;
      break;
    }
  }

  if (a7)
  {
    *a7 = v14;
  }

  return result;
}

uint64_t MPEG2TSInitialize(uint64_t a1)
{
  *(a1 + 168) = MPEG2TSInject;
  *(a1 + 176) = MPEG2TSReset;
  v1 = 192;
  if (*(a1 + 48) == 1)
  {
    v1 = 188;
  }

  v11 = 0;
  *(a1 + 392) = v1;
  *(a1 + 400) = v1 - 188;
  OUTLINED_FUNCTION_0_112();
  result = AddPes(v2, v3, v4, v5, v6, v7, v8, 0, 0, &v11);
  if (!result)
  {
    *(v11 + 440) = PatProcessPak;
    v10 = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
    *(v11 + 48) = v10;
    if (v10)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t MPEG2TSInject(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v2 = theBuffer;
  v57 = *MEMORY[0x1E69E9840];
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v5 = DataLength;
  v54 = 0;
  blockBufferOut = 0;
  v53 = 0;
  v6 = *(a1 + 384);
  if (v6)
  {
    if (DataLength >= *(a1 + 392) - v6)
    {
      v7 = *(a1 + 392) - v6;
    }

    else
    {
      v7 = DataLength;
    }

    v8 = CMBlockBufferCopyDataBytes(v2, 0, v7, (a1 + 192 + v6));
    v9 = *(a1 + 384);
    v10 = *(a1 + 392);
    *(a1 + 384) = v9 + v7;
    if (v9 + v7 != v10)
    {
      goto LABEL_81;
    }

    v11 = (a1 + 192 + *(a1 + 400));
    if (*v11 == 71)
    {
      v12 = v11[2] | ((v11[1] & 0x1F) << 8);
      if (v12 != 0x1FFF)
      {
        for (i = *(a1 + 24); i; i = *(i + 32))
        {
          v14 = *(i + 448);
          if (v14 > v12)
          {
            break;
          }

          if (v14 == v12)
          {
            v8 = (*(i + 440))();
            if (v8)
            {
              goto LABEL_81;
            }

            break;
          }
        }
      }

      v5 -= v7;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 384) = 0;
    goto LABEL_31;
  }

  v15 = *(a1 + 456);
  if (v15)
  {
    v16 = CMBlockBufferGetDataLength(v15);
    appended = CMBlockBufferCreateWithBufferReference(*(a1 + 40), *(a1 + 456), 0, 0, 0, &blockBufferOut);
    if (appended)
    {
      goto LABEL_80;
    }

    appended = CMBlockBufferAppendBufferReference(blockBufferOut, v2, 0, v5, 0);
    if (appended)
    {
      goto LABEL_80;
    }

    v5 += v16;
    v2 = blockBufferOut;
    v18 = *(a1 + 456);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 456) = 0;
    }

LABEL_18:
    v19 = 0;
    v7 = 0;
    v8 = 0;
    v20 = 3 * *(a1 + 392);
    goto LABEL_32;
  }

  if (*(a1 + 450))
  {
    v21 = *(a1 + 392);
    if (!v21 || v5 >= 3 * v21)
    {
      goto LABEL_18;
    }

    LOBYTE(v52) = 0;
    v56[0] = 0;
    appended = SniffRestOfBuffer(v2, 0, v5, v21, &v52, &offset, v56);
    if (appended)
    {
LABEL_80:
      v8 = appended;
      goto LABEL_81;
    }

    if (!v52 || v56[0] < (v5 / v21))
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    *(a1 + 450) = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_31:
  v20 = *(a1 + 392);
  v19 = 1;
LABEL_32:
  if (v5 >= v20)
  {
    v22 = v7;
    do
    {
      v52 = 0;
      v23 = v53;
      if (v53 + v7 < *(a1 + 392) + v22)
      {
        v24 = OUTLINED_FUNCTION_622();
        if (CMBlockBufferGetDataPointer(v24, v25, v26, 0, v27))
        {
          v23 = 0;
          v53 = 0;
        }

        else
        {
          v23 = v53;
          v7 = v22;
        }
      }

      if (v23 + v7 >= *(a1 + 392) + v22)
      {
        v52 = v54 + v22 - v7;
        if (!v54)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v28 = OUTLINED_FUNCTION_622();
        v8 = CMBlockBufferAccessDataBytes(v28, v29, v30, v31, v32);
        if (v8)
        {
          goto LABEL_81;
        }
      }

      if (v19 && (v33 = (v52 + *(a1 + 400)), *v33 == 71))
      {
        v34 = v33[2] | ((v33[1] & 0x1F) << 8);
        if (v34 != 0x1FFF)
        {
          for (j = *(a1 + 24); j; j = *(j + 32))
          {
            v36 = *(j + 448);
            if (v36 > v34)
            {
              break;
            }

            if (v36 == v34)
            {
              appended = (*(j + 440))();
              if (appended)
              {
                goto LABEL_80;
              }

              if (!*(a1 + 8))
              {
                v8 = 0;
                break;
              }

              v8 = 4294954511;
              goto LABEL_81;
            }
          }
        }

        v45 = *(a1 + 392);
        v22 += v45;
        v5 -= v45;
      }

      else
      {
        v20 = 3 * *(a1 + 392);
        if (v5 >= v20)
        {
          do
          {
            offset = 0;
            v50 = 0;
            v37 = OUTLINED_FUNCTION_622();
            if (FindTSHeader(v37, v38, v5, v39))
            {
              v49 = 0;
              v40 = offset;
              v41 = *(a1 + 400);
              v42 = offset - v41;
              if (offset >= v41)
              {
                offset -= v41;
                v5 += v22 - v42;
                appended = SniffRestOfBuffer(v2, v40, v5, *(a1 + 392), &v50 + 1, &v50, &v49);
                if (appended)
                {
                  goto LABEL_80;
                }

                if (v49 > 2)
                {
                  *(a1 + 450) = 0;
                  v19 = 1;
                  v22 = v42;
                }

                else
                {
                  v19 = 0;
                  v44 = *(a1 + 400) + 1;
                  v22 = v44 + v42;
                  v5 -= v44;
                }

                v8 = 0;
              }

              else
              {
                v19 = 0;
                v5 += v22 + ~offset;
                v22 = offset + 1;
              }
            }

            else
            {
              v5 = 0;
              v19 = 0;
            }

            v43 = *(a1 + 392);
          }

          while (!v19 && v5 >= 3 * v43);
          if (v19)
          {
            v20 = *(a1 + 392);
          }

          else
          {
            v20 = 3 * v43;
          }
        }

        else
        {
          v19 = 0;
        }
      }
    }

    while (v5 >= v20);
  }

  else
  {
    v22 = v7;
  }

  if (!v19)
  {
    if (!v5)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  if (v5)
  {
    v46 = OUTLINED_FUNCTION_622();
    if (!CMBlockBufferCopyDataBytes(v46, v47, v5, (a1 + 192)))
    {
      if (*(a1 + 192 + *(a1 + 400)) == 71)
      {
        *(a1 + 384) = v5;
        goto LABEL_81;
      }

LABEL_79:
      appended = CMBlockBufferCreateContiguous(*(a1 + 40), v2, *(a1 + 40), 0, v22, v5, 2u, (a1 + 456));
      goto LABEL_80;
    }
  }

LABEL_81:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v8;
}

uint64_t PatProcessPak(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 449))
  {
    return 0;
  }

  if (a2[1] < 0)
  {
    return 4294954320;
  }

  v5 = *(a1 + 48);
  if ((a2[3] & 0x30) == 0x10)
  {
    v6 = 4;
  }

  else
  {
    if ((a2[3] & 0x10) == 0 || (v7 = a2[4], v7 > 0xB3))
    {
LABEL_7:
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    v6 = v7 + 5;
  }

  if (a2[1] < 0x40u)
  {
    return 4294954325;
  }

  v8 = a2[v6];
  if (188 - v6 < (v8 + 4))
  {
    goto LABEL_7;
  }

  v9 = v8 + 1;
  v10 = &a2[v6 + 1 + v8];
  if (*v10)
  {
    return 4294954325;
  }

  v11 = v10[1];
  if ((v11 & 0xC0) != 0x80)
  {
    return 4294954325;
  }

  v12 = v10[2] | ((v11 & 3) << 8);
  v13 = 185 - (v6 + v9);
  if (v12 < 9 || v13 < v12)
  {
    return 4294954325;
  }

  *v5 = 1;
  v5[1] = (v10[5] >> 1) & 0x1F;
  for (i = *(v2 + 16); i; i = *(i + 8))
  {
    *(i + 58) = 0;
  }

  if (v12 - 9 < 4)
  {
    return 0;
  }

  v16 = 0;
  v17 = (v10 + 8);
  if ((v12 - 9) >> 2 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = (v12 - 9) >> 2;
  }

  do
  {
    v19 = __rev16(*v17);
    if (v19)
    {
      v20 = *(v17 + 3) | ((v17[1] & 0x1F) << 8);
      if (v20 >= 0x10 && v20 != 0x1FFF)
      {
        v22 = *(a1 + 8);
        v23 = *(v22 + 16);
        if (!v23)
        {
          goto LABEL_39;
        }

        while (*(v23 + 40) != v19)
        {
          v23 = *(v23 + 8);
          if (!v23)
          {
            goto LABEL_39;
          }
        }

        v24 = *(v23 + 48);
        if (v24 && *(v24 + 448) == v20)
        {
          *(v23 + 58) = 1;
        }

        else
        {
LABEL_39:
          v34 = 0;
          v35 = 0;
          if (!AddProgram(v22, v19, &v34))
          {
            v25 = v34;
            OUTLINED_FUNCTION_0_112();
            if (!AddPes(v26, v27, v28, v29, v30, v31, v32, v20, 0, &v35))
            {
              v33 = v35;
              *(v35 + 440) = PmapProcessPak;
              *(v25 + 58) = 1;
              *(v25 + 48) = v33;
            }
          }
        }
      }
    }

    result = 0;
    v17 += 2;
    ++v16;
  }

  while (v16 != v18);
  return result;
}

uint64_t MPEG2TSAddTrack(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return 4294954326;
  }

  v19[7] = v4;
  v19[8] = v5;
  v9 = off_1F0AE8FB8[a4];
  for (i = *(a1 + 24); i; i = *(i + 32))
  {
    v11 = *(i + 448);
    if (v11 > a2)
    {
      break;
    }

    if (v11 == a2)
    {
      return 4294954513;
    }
  }

  v18 = 0;
  v19[0] = 0;
  result = AddProgram(a1, 0x10000, &v18);
  if (!result)
  {
    result = AddPes(a1, v18, 0, a3, 1, a2, 0, a2, 1, v19);
    v16 = a3 == 1700886115 || a3 == 1748121140 || a3 == 1836070006 || a3 == 1836476772 || a3 == 2053207651;
    v17 = v19[0];
    if (v16)
    {
      *(v19[0] + 120) = 1;
    }

    *(v17 + 440) = v9;
  }

  return result;
}

uint64_t PesEmitTsPak(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 84))
  {
    return 0;
  }

  if (a2[1] < 0)
  {
    PesErrorHandling(a1, 4294954320);
    return 0;
  }

  v4 = *(a1 + 450);
  if ((a2[3] & 0x10) != 0)
  {
    v4 = (v4 + 1) & 0xF;
  }

  v5 = a2[3] & 0xF;
  if (*(a1 + 451) && v5 != v4)
  {
    PesErrorHandling(a1, 4294954320);
  }

  *(a1 + 451) = 1;
  *(a1 + 450) = v5;
  if ((a2[3] & 0x30) == 0x10)
  {
    v6 = 4;
    goto LABEL_16;
  }

  if ((a2[3] & 0x10) == 0)
  {
    v6 = 188;
    goto LABEL_16;
  }

  v8 = a2[4];
  if (v8 < 0xB8)
  {
    v6 = v8 + 5;
LABEL_16:
    blockBufferOut = 0;
    v9 = CMBlockBufferCreateWithMemoryBlock(*(*(a1 + 8) + 40), 0, 188 - v6, *(*(a1 + 8) + 40), 0, 0, 188 - v6, 1u, &blockBufferOut);
    if (v9)
    {
      return v9;
    }

    v7 = CMBlockBufferReplaceDataBytes(&a2[v6], blockBufferOut, 0, 188 - v6);
    if (!v7)
    {
      OUTLINED_FUNCTION_3_71();
      v10 = OUTLINED_FUNCTION_1_99();
      v7 = v11(v10);
    }

    CFRelease(blockBufferOut);
    return v7;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t PesProcessAdaptationPrivate(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 84))
  {
    return 0;
  }

  if (a2[1] < 0)
  {
    PesErrorHandling(a1, 4294954320);
    return 0;
  }

  if ((a2[3] & 0x20) == 0)
  {
    return 0;
  }

  v2 = a2[5];
  if ((v2 & 2) == 0)
  {
    return 0;
  }

  v3 = 12;
  if ((v2 & 0x10) == 0)
  {
    v3 = 6;
  }

  if ((v2 & 8) != 0)
  {
    v3 += 6;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFFELL | (v2 >> 2) & 1;
  v6 = &a2[v4 + 1];
  v5 = a2[v4];
  if (v4 + v5 > 0xBC)
  {
    return 4294954325;
  }

  blockBufferOut = 0;
  v7 = CMBlockBufferCreateWithMemoryBlock(*(*(a1 + 8) + 40), 0, v5, *(*(a1 + 8) + 40), 0, 0, v5, 1u, &blockBufferOut);
  if (v7)
  {
    return v7;
  }

  v8 = CMBlockBufferReplaceDataBytes(v6, blockBufferOut, 0, v5);
  if (!v8)
  {
    OUTLINED_FUNCTION_3_71();
    v9 = OUTLINED_FUNCTION_1_99();
    v8 = v10(v9);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v8;
}

uint64_t PmapProcessPak(uint64_t *a1, _BYTE *a2)
{
  if (a2[1] < 0)
  {
    return 4294954320;
  }

  v3 = *a1;
  if ((a2[3] & 0x30) == 0x10)
  {
    v4 = 4;
  }

  else
  {
    if ((a2[3] & 0x10) == 0)
    {
      goto LABEL_12;
    }

    v6 = a2[4];
    if (v6 > 0xB3)
    {
      goto LABEL_12;
    }

    v4 = v6 + 5;
  }

  if (a2[1] < 0x40u)
  {
    return 0;
  }

  v7 = 188 - v4;
  v8 = &a2[v4];
  v9 = a2[v4];
  if (v7 < v9 + 4)
  {
    goto LABEL_12;
  }

  v10 = v9 + 1;
  v11 = &v8[v9 + 1];
  if (*v11 != 2)
  {
    return 4294954325;
  }

  v12 = v11[1];
  if ((v12 & 0xC0) != 0x80)
  {
    return 4294954325;
  }

  v13 = v11[2] | ((v12 & 3) << 8);
  if (v13 < 0xD || v13 + 3 > v7 - v10)
  {
LABEL_12:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  *(v3 + 56) = v11[9] | ((v11[8] & 0x1F) << 8);
  v14 = v11[11] | ((v11[10] & 0xF) << 8);
  v15 = v13 - 13;
  v16 = v15 - v14;
  if (v15 < v14)
  {
    return 4294954325;
  }

  v17 = &v11[v14 + 12];
  if (v16 >= 5)
  {
    v18 = v17;
    v19 = v16;
    do
    {
      v20 = v18[4] | ((v18[3] & 0xF) << 8);
      v21 = v19 - 5;
      v22 = v21 >= v20;
      v19 = v21 - v20;
      if (!v22)
      {
        return 4294954325;
      }

      v18 += v20 + 5;
    }

    while (v19 > 4);
  }

  for (i = *(v3 + 24); i; i = *(i + 16))
  {
    *(i + 452) = 0;
  }

  if (v16 >= 5)
  {
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = v17[4] | ((v17[3] & 0xF) << 8);
      v22 = v16 - 5 >= v26;
      v16 = v16 - 5 - v26;
      if (!v22)
      {
        return 4294954325;
      }

      v27 = v17[2] | ((v17[1] & 0x1F) << 8);
      if (!v27)
      {
        goto LABEL_12;
      }

      v28 = *v17;
      v29 = v17 + 5;
      if (v27 == *(v3 + 56))
      {
        v25 = 1;
      }

      for (j = *(a1[1] + 24); j; j = j[4])
      {
        v31 = *(j + 224);
        if (v31 > v27)
        {
          break;
        }

        if (v31 == v27)
        {
          v55 = j;
          v32 = *j;
          if (*(*j + 40) == 0x10000)
          {
            *(j + 16) = v28;
            v33 = j + 2;
            v34 = j[2];
            v35 = j[3];
            v36 = (v32 + 32);
            if (v34)
            {
              v36 = (v34 + 24);
            }

            *v36 = v35;
            *v35 = v34;
            *v33 = 0;
            v37 = *(v3 + 32);
            j[3] = v37;
            *v37 = j;
            *(v3 + 32) = v33;
            *j = v3;
            goto LABEL_51;
          }

          if (*(j + 16) == v28 && v32 == v3)
          {
            goto LABEL_51;
          }

          return 4294954325;
        }
      }

      v55 = 0;
      result = PmapAddPes(v3, v27, v28, v29, v26);
      if (result)
      {
        return result;
      }

      v24 = 1;
LABEL_51:
      v17 = &v29[v26];
      if (v16 <= 4)
      {
        v39 = v24 == 0;
        if (!v25)
        {
          goto LABEL_56;
        }

        if (v24)
        {
          goto LABEL_64;
        }

        return 0;
      }
    }
  }

  v39 = 1;
LABEL_56:
  v40 = *(v3 + 56);
  for (k = *(a1[1] + 24); k; k = k[4])
  {
    v42 = *(k + 224);
    if (v42 > v40)
    {
      break;
    }

    if (v42 == v40)
    {
      v55 = k;
      if (v39)
      {
        return 0;
      }

      goto LABEL_64;
    }
  }

  v55 = 0;
  OUTLINED_FUNCTION_0_112();
  result = AddPes(v43, v44, v45, v46, v47, v48, v49, v50, 0, &v55);
  if (!result)
  {
    v51 = v55;
    *(v55 + 452) = 1;
    v51[55] = PCRPidProcessTsPak;
    if (v39)
    {
      return 0;
    }

LABEL_64:
    v52 = a1[1];
    v53 = v52[3];
    if (!v53)
    {
      return 0;
    }

    do
    {
      if (!*(v53 + 657))
      {
        v54 = v52[7];
        if (v54)
        {
          v54(*v52, v52[9], *(v3 + 40), *(v53 + 60), *(v53 + 56));
        }
      }

      result = 0;
      v53 = *(v53 + 32);
    }

    while (v53);
  }

  return result;
}

uint64_t PmapAddPes(uint64_t *a1, int a2, int a3, unsigned __int8 *a4, unsigned int a5)
{
  v9 = 0;
  v10 = *a1;
  v36 = 0;
  if ((a3 - 1) < 2)
  {
    v12 = 1836476772;
LABEL_45:
    LOBYTE(v5) = 1;
    goto LABEL_54;
  }

  if ((a3 - 3) < 2)
  {
    OUTLINED_FUNCTION_4_77();
    v12 = 1835103588;
    goto LABEL_54;
  }

  switch(a3)
  {
    case 15:
      OUTLINED_FUNCTION_4_77();
      v12 = 1633973363;
      goto LABEL_54;
    case 16:
      v9 = 0;
      v12 = 1836070006;
      goto LABEL_45;
    case 234:
      LOBYTE(v9) = 1;
      goto LABEL_47;
    case 27:
      v9 = 0;
      v12 = 1748121140;
      goto LABEL_45;
    case 128:
LABEL_47:
      LOBYTE(v5) = v9;
      v12 = 1819304813;
      v9 = 0;
      goto LABEL_54;
    case 129:
      OUTLINED_FUNCTION_4_77();
      v12 = 1633891104;
      goto LABEL_54;
    case 135:
      OUTLINED_FUNCTION_4_77();
      v12 = 1700998451;
      goto LABEL_54;
  }

  v5 = a5;
  v11 = a4;
  switch(a3)
  {
    case 193:
      v27 = OUTLINED_FUNCTION_2_96();
      v32 = CheckDescriptorsForStreamEncryptData(v27, v28, v29, v30, v31);
      LOBYTE(v5) = 0;
      v9 = v32 ^ 1;
      v20 = 1700881203;
      v19 = v32 == 0;
LABEL_40:
      if (v19)
      {
        v12 = 1970170734;
      }

      else
      {
        v12 = v20;
      }

      break;
    case 194:
      v21 = OUTLINED_FUNCTION_2_96();
      v26 = CheckDescriptorsForStreamEncryptData(v21, v22, v23, v24, v25);
      LOBYTE(v5) = 0;
      v9 = v26 ^ 1;
      v19 = v26 == 0;
      v20 = 1701143347;
      goto LABEL_40;
    case 207:
      v15 = OUTLINED_FUNCTION_2_96();
      LOBYTE(v5) = 0;
      if (CheckDescriptorsForStreamEncryptData(v15, v16, 1633772388, v17, v18))
      {
        v19 = 1;
      }

      else
      {
        v19 = 1;
      }

      v9 = 1;
      v20 = 1700880739;
      goto LABEL_40;
    case 219:
      if (!CheckDescriptorsForStreamEncryptData(a4, a5, 1635148644, 0, 0))
      {
        v33 = CheckDescriptorsForStreamEncryptData(v11, v5, 2053207651, 0, 0);
        LOBYTE(v5) = v33;
        v9 = v33 ^ 1;
        if (v33)
        {
          v12 = 2053207651;
        }

        else
        {
          v12 = 1970170734;
        }

        break;
      }

      v9 = 0;
      v12 = 1700886115;
      goto LABEL_45;
    case 21:
      v12 = 1970170734;
      if (a5 < 2)
      {
        v9 = 1;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = v11[1];
          if (v5 - 2 < v14)
          {
LABEL_58:
            fig_log_get_emitter();

            return FigSignalErrorAtGM();
          }

          if (*v11 == 38)
          {
            if (v14 <= 4)
            {
              goto LABEL_58;
            }

            if (v14 >= 0xD && !memcmp(&kFigMPEG2MetadataDescriptor, v11 + 2, 0xBuLL))
            {
              v12 = 1768174368;
              v9 = v5 < 2u;
              goto LABEL_50;
            }

            v13 = 1;
          }

          LOWORD(v5) = v5 - (v14 + 2);
          v11 += v14 + 2;
        }

        while (v5 > 1u);
        v9 = 1;
        if (!v5 && v13)
        {
          OUTLINED_FUNCTION_4_77();
          v12 = 1768174368;
          break;
        }
      }

LABEL_50:
      LOBYTE(v5) = 0;
      break;
    default:
      LOBYTE(v5) = 0;
      v9 = 1;
      v12 = 1970170734;
      break;
  }

LABEL_54:
  result = AddPes(v10, a1, v9, v12, 1, a2, a3, a2, 0, &v36);
  if (!result)
  {
    v35 = v36;
    result = 0;
    *(v36 + 452) = 1;
    *(v35 + 440) = PesProcessTsPak;
    *(v35 + 120) = v5;
  }

  return result;
}

uint64_t PesProcessTsPak_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigManifoldCreateForMPEG2(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  cf = 0;
  v25 = 0;
  if (a2 && FigMPEG2ParserSniff(a2, 1, &v25))
  {
    return 4294951252;
  }

  FigManifoldGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    return v13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Default = a1;
  if (!a1)
  {
    Default = CFAllocatorGetDefault();
  }

  *DerivedStorage = CFRetain(Default);
  *(DerivedStorage + 64) = a3;
  *(DerivedStorage + 72) = a4;
  *(DerivedStorage + 80) = a5;
  *(DerivedStorage + 88) = a6;
  *(DerivedStorage + 24) = cf;
  *(DerivedStorage + 32) = 1;
  v16 = MEMORY[0x1E6960C70];
  v17 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 120) = *MEMORY[0x1E6960C70];
  v18 = *(v16 + 16);
  *(DerivedStorage + 136) = v18;
  *(DerivedStorage + 144) = v17;
  *(DerivedStorage + 160) = v18;
  *(DerivedStorage + 184) = v18;
  *(DerivedStorage + 168) = v17;
  *(DerivedStorage + 192) = 0;
  *(DerivedStorage + 40) = 0;
  CMTimeMake(&v24, 30, 1);
  v23 = v24;
  v19 = FigMPEG2ParserCreate(a1, 2, &v23, 0, 1, mmNewTrackCallback, mmErrorCallback, DerivedStorage, (DerivedStorage + 48));
  if (v19)
  {
LABEL_12:
    v21 = v19;
    CFRelease(cf);
    return v21;
  }

  v20 = FigReentrantMutexCreate();
  *(DerivedStorage + 16) = v20;
  if (!v20)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v19 = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  v21 = 0;
  *a7 = cf;
  return v21;
}

uint64_t mmNewTrackCallback(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = a2 + 40;
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (*(v9 + 20) == a4)
    {
      return 0;
    }
  }

  v12 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10E0040A8C83A82uLL);
  if (v12)
  {
    v13 = v12;
    v12[1] = a2;
    *(v12 + 4) = a3;
    *(v12 + 5) = a4;
    *(v12 + 6) = a5;
    *(v12 + 7) = a5;
    v12[22] = 0;
    v12[23] = v12 + 22;
    mmUpdateTrackType(v12, a5);
    *(v13 + 44) = *(a2 + 32);
    v14 = MEMORY[0x1E6960C70];
    *(v13 + 104) = *(MEMORY[0x1E6960C70] + 16);
    *(v13 + 88) = *v14;
    ++*(a2 + 32);
    *(a2 + 11) = 1;
    if (a5 != 1768174368)
    {
      v15 = mmSampleGeneratorCreate(v13);
      if (v15)
      {
        return v15;
      }

      if (*(v13 + 112) == 1936684398)
      {
        v16 = 0;
        v17 = 0;
        v15 = FigMPEG2ParserCopyAudioConfigurationForTrack(*(a2 + 48), *(v13 + 20), &v17, &v16);
        if (!v15)
        {
          if (v17)
          {
            if (v16)
            {
              v10 = FigMPEG2SampleGeneratorSetAudioConfiguration(*(v13 + 32), v17, v16);
              free(v17);
              if (v10)
              {
                return v10;
              }
            }
          }

          goto LABEL_17;
        }

        return v15;
      }
    }

LABEL_17:
    *v13 = *(a2 + 40);
    *(a2 + 40) = v13;
    return mmInvokeNewTrackCallback(a2, v13);
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMPEG2ManifoldIsEveryTrackIDUnique(uint64_t a1)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 1;
  }

  v3 = DerivedStorage;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = *(v3 + 40);
  if (!v5)
  {
LABEL_10:
    v9 = 1;
    if (!Mutable)
    {
      return v9;
    }

LABEL_11:
    CFRelease(Mutable);
    return v9;
  }

  while (1)
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (CFArrayGetCount(Mutable) >= 1)
    {
      break;
    }

LABEL_7:
    CFArrayAppendValue(Mutable, SInt32);
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    v5 = *v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v7);
    if (CFEqual(SInt32, ValueAtIndex))
    {
      break;
    }

    if (++v7 >= CFArrayGetCount(Mutable))
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
  if (Mutable)
  {
    goto LABEL_11;
  }

  return v9;
}

uint64_t FigMPEG2ManifoldInstallDuplicateTrack(uint64_t a1)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 40);
  v3 = *(v2 + 16);
  v4 = *(v2 + 20);

  return mmNewTrackCallback(DerivedStorage, DerivedStorage, v3, v4, 1768174368);
}

uint64_t MPEG2ManifoldCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_1_100();
  if (*(v4 + 8))
  {
    v10 = 4294954511;
    goto LABEL_12;
  }

  if (CFEqual(a2, @"FMFD_ParserState"))
  {
    valuePtr = 0;
    if (*(v4 + 12))
    {
      if (*(v4 + 40))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      valuePtr = v8;
    }

    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    if (!CFEqual(a2, @"FMFD_Type"))
    {
      v10 = 4294954512;
      goto LABEL_12;
    }

    v9 = CFStringCreateWithCString(a3, "MPEG2", 0x8000100u);
  }

  v10 = 0;
  *a4 = v9;
LABEL_12:
  OUTLINED_FUNCTION_2_97();
  return v10;
}

uint64_t MPEG2ManifoldSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_1_100();
  if (!a2)
  {
    goto LABEL_14;
  }

  if (*(v3 + 8))
  {
    v6 = 4294954511;
    goto LABEL_5;
  }

  if (!CFEqual(a2, @"FMFD_MaxSamplesPerBuffer"))
  {
    if (!CFEqual(a2, @"FMFD_HintForStartTime"))
    {
      v6 = 4294954512;
      goto LABEL_5;
    }

    if ((*(v3 + 156) & 0x1D) == 1)
    {
      v6 = 4294951253;
      goto LABEL_5;
    }

    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v11, a3);
        value = v11.value;
        flags = v11.flags;
        timescale = v11.timescale;
        if ((v11.flags & 0x1D) == 1)
        {
          v6 = 0;
          epoch = v11.epoch;
          *(v3 + 120) = value;
          *(v3 + 128) = timescale;
          *(v3 + 132) = flags;
          *(v3 + 136) = epoch;
          goto LABEL_5;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
LABEL_15:
        v6 = FigSignalErrorAtGM();
        goto LABEL_5;
      }
    }

LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_15;
  }

  LODWORD(v11.value) = 0;
  CFNumberGetValue(a3, kCFNumberIntType, &v11);
  v6 = 0;
  *(v3 + 56) = SLODWORD(v11.value);
LABEL_5:
  OUTLINED_FUNCTION_2_97();
  return v6;
}

uint64_t MPEG2ManifoldCopyCurrentFormatDescriptionForTrack(uint64_t a1, int a2, uint64_t *a3)
{
  FigManifoldGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_6_62();
  if (v7)
  {
    v9 = 4294954511;
  }

  else
  {
    v8 = (v3 + 40);
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (*(v8 + 11) == a2)
      {
        v9 = 0;
        *a3 = FigFormatDescriptionRetain();
        v6 = *(v3 + 112) - 1;
        goto LABEL_7;
      }
    }

    v9 = 4294951254;
  }

LABEL_7:
  *(v3 + 112) = v6;
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t MPEG2ManifoldInstallCallbacksForTrack(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  FigManifoldGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_1_100();
  if (a3 && *(v4 + 8))
  {
    v12 = 4294954511;
  }

  else
  {
    v8 = v4 + 40;
    do
    {
      v8 = *v8;
      if (!v8)
      {
        v12 = 4294951254;
        if (!a3)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

    while (*(v8 + 44) != a2);
    if (a3)
    {
      *(v8 + 56) = *a3;
      *(v8 + 64) = a3[1];
      *(v8 + 72) = a3[2];
      v9 = *(v4 + 48);
      if (v9)
      {
        if (*(v8 + 40))
        {
          v12 = 0;
        }

        else
        {
          *(&v14 + 1) = mmMPEG2ParserNoteCommandCallback;
          v10 = *(v8 + 28) == 1768174368;
          v11 = mmMPEG2ParserEmitSampleDataCallback;
          if (*(v8 + 28) == 1768174368)
          {
            v11 = mmMPEG2ParserEmitMetadataDataCallback;
          }

          *&v14 = v11;
          v12 = FigMPEG2ParserInstallCallbacksForTrack(v9, *(v8 + 20), &v14, v8, v10);
          if (!v12)
          {
            *(v8 + 40) = 1;
          }
        }
      }

      else
      {
        v12 = 4294951254;
      }
    }

    else
    {
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      v12 = 4294951254;
      *(v8 + 72) = 0;
    }

    *(v8 + 80) = a4;
    if (a3)
    {
LABEL_18:
      if (v12)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        v12 = FigSignalErrorAtGM();
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_2_97();
  return v12;
}

uint64_t MPEG2ManifoldFlush(const void *a1)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 112);
  if (*(DerivedStorage + 8))
  {
    v3 = 4294954511;
  }

  else if (*(DerivedStorage + 48))
  {
    if (*(DerivedStorage + 9))
    {
      fig_log_get_emitter();
      v3 = FigSignalErrorAtGM();
    }

    else
    {
      v3 = mmDoFlush(DerivedStorage);
      *(DerivedStorage + 10) = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  --*(DerivedStorage + 112);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v3;
}

uint64_t MPEG2ManifoldCopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, CFNumberRef *a5)
{
  FigManifoldGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_1_100();
  if (*(v5 + 8))
  {
    v12 = 4294954511;
  }

  else if (*(v5 + 48))
  {
    v9 = (v5 + 40);
    do
    {
      v9 = *v9;
      if (!v9)
      {
        v12 = 4294951254;
        goto LABEL_13;
      }
    }

    while (*(v9 + 11) != a2);
    if (CFEqual(a3, @"FMFD_TrackEstimatedDataRate"))
    {
      valuePtr = 0;
      TrackBitRate = FigMPEG2SampleGeneratorGetTrackBitRate(v9[4]);
      if (TrackBitRate)
      {
        v12 = TrackBitRate;
      }

      else
      {
        valuePtr /= 8;
        v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
        *a5 = v11;
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = 4294954510;
        }
      }
    }

    else
    {
      v12 = 4294954512;
    }
  }

  else
  {
    v12 = 4294954513;
  }

LABEL_13:
  OUTLINED_FUNCTION_2_97();
  return v12;
}

uint64_t MPEG2ManifoldReannounceUnregisteredTracks(uint64_t a1)
{
  FigManifoldGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_6_62();
  if (v3)
  {
    v6 = 4294954511;
  }

  else if (*(v1 + 48))
  {
    *(v1 + 10) = 0;
    v4 = *(v1 + 40);
    if (v4)
    {
      while (1)
      {
        if (!v4[7] && !v4[8])
        {
          FormatCallback = mmInvokeNewTrackCallback(v1, v4);
          if (FormatCallback)
          {
            break;
          }

          if (v4[7])
          {
            FormatCallback = mmMPEG2MakeFormatCallback(v4);
            if (FormatCallback)
            {
              break;
            }
          }
        }

        v4 = *v4;
        if (!v4)
        {
          v6 = 0;
          goto LABEL_12;
        }
      }

      v6 = FormatCallback;
LABEL_12:
      v2 = *(v1 + 112) - 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 4294954513;
  }

  *(v1 + 112) = v2;
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t mmDoFlush(uint64_t a1)
{
  v2 = FigMPEG2ParserIssueCommands(*(a1 + 48), 1);
  if (v2)
  {
    return v2;
  }

  v3 = (a1 + 40);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = mmFlushStream(v3);
    mmEmitBufferClear(v3);
    if (v4)
    {
      return v4;
    }
  }

  return 0;
}

uint64_t mmMPEG2ParserEmitMetadataDataCallback(int a1, int a2, uint64_t a3, CMBlockBufferRef targetBBuf, CMTime *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  if (*(v5 + 8))
  {
    return 4294954511;
  }

  if (a5->flags)
  {
    returnedPointerOut.value = 0;
    mmAdjustPTSDTS(v5, a5, 0);
    Empty = CMBlockBufferAccessDataBytes(targetBBuf, 0, 0xAuLL, &temporaryBlock, &returnedPointerOut);
    if (Empty)
    {
      return Empty;
    }

    if (*returnedPointerOut.value == 73 && *(returnedPointerOut.value + 1) == 68 && *(returnedPointerOut.value + 2) == 51)
    {
      v10 = *(a3 + 120);
      *(a3 + 128) = ((*(returnedPointerOut.value + 6) & 0x7F) << 21) | ((*(returnedPointerOut.value + 7) & 0x7F) << 14) | ((*(returnedPointerOut.value + 8) & 0x7F) << 7) | *(returnedPointerOut.value + 9) & 0x7F;
      if (v10)
      {
        CFRelease(v10);
        *(a3 + 120) = 0;
      }

      Empty = CMBlockBufferCreateEmpty(*v5, 0, 0, (a3 + 120));
      if (Empty)
      {
        return Empty;
      }

      v11 = *&a5->value;
      *(a3 + 152) = a5->epoch;
      *(a3 + 136) = v11;
    }
  }

  v12 = *(a3 + 120);
  if (!v12)
  {
    return 0;
  }

  CMBlockBufferAppendBufferReference(v12, targetBBuf, 0, 0, 0);
  if (CMBlockBufferGetDataLength(*(a3 + 120)) < *(a3 + 128))
  {
    return 0;
  }

  if (!*(a3 + 48))
  {
    temporaryBlock.duration.value = 0;
    Empty = CMFormatDescriptionCreate(*v5, 0x6D657461u, 0x69643320u, 0, &temporaryBlock);
    if (!Empty)
    {
      v21 = FigManifoldRetain(*(v5 + 24));
      v17 = mmMPEG2NewFormatCallback(v21, a3);
      v22 = *(v5 + 8);
      FigFormatDescriptionRelease();
      CFRelease(*(v5 + 24));
      if (v17)
      {
        return v17;
      }

      if (!v22)
      {
        goto LABEL_14;
      }

      return 4294954511;
    }

    return Empty;
  }

LABEL_14:
  cf = 0;
  sampleSizeArray = CMBlockBufferGetDataLength(*(a3 + 120));
  if (*(a3 + 100))
  {
    *&temporaryBlock.duration.value = *(a3 + 136);
    temporaryBlock.duration.epoch = *(a3 + 152);
    OUTLINED_FUNCTION_5_67();
    if (CMTimeCompare(&temporaryBlock.duration, &returnedPointerOut) <= 0)
    {
      OUTLINED_FUNCTION_5_67();
      CMTimeMake(&rhs, 1, 90000);
      CMTimeAdd(&temporaryBlock.duration, &returnedPointerOut, &rhs);
      *(a3 + 136) = *&temporaryBlock.duration.value;
      *(a3 + 152) = temporaryBlock.duration.epoch;
    }
  }

  temporaryBlock.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  temporaryBlock.presentationTimeStamp = *(a3 + 136);
  CMTimeMake(&temporaryBlock.duration, 1, 90000);
  *(a3 + 88) = *(a3 + 136);
  *(a3 + 104) = *(a3 + 152);
  Empty = CMSampleBufferCreate(*v5, *(a3 + 120), 1u, 0, 0, *(a3 + 48), 1, 1, &temporaryBlock, 1, &sampleSizeArray, &cf);
  if (Empty)
  {
    return Empty;
  }

  v13 = *(a3 + 64);
  if (!v13)
  {
LABEL_28:
    v19 = *(a3 + 120);
    if (v19)
    {
      CFRelease(v19);
      *(a3 + 120) = 0;
    }

    *(a3 + 128) = 0;
    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  v14 = *(a3 + 80);
  ++*(a3 + 160);
  v15 = *(v5 + 112);
  *(v5 + 112) = 0;
  if (v15 >= 1)
  {
    v16 = v15;
    do
    {
      FigSimpleMutexUnlock();
      --v16;
    }

    while (v16);
  }

  v17 = v13(*(v5 + 24), *(a3 + 44), v14, 0, 0, cf);
  do
  {
    FigSimpleMutexLock();
    v18 = *(v5 + 112) + 1;
    *(v5 + 112) = v18;
  }

  while (v18 < v15);
  if (!v17)
  {
    if (*(v5 + 8) || *(v5 + 10))
    {
      return 4294951251;
    }

    goto LABEL_28;
  }

  return v17;
}

uint64_t mmMPEG2ParserEmitSampleDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, CMTime *a5, CMTime *a6, uint64_t a7)
{
  v7 = *(a3 + 8);
  if (*(v7 + 8) || !*(a3 + 32))
  {
    return 4294954511;
  }

  mmAdjustPTSDTS(*(a3 + 8), a5, a6);
  if ((a5->flags & 0x1D) == 1 && (*(v7 + 180) & 1) == 0)
  {
    v15 = *(a3 + 24);
    v16 = v15 == 1700886115 || v15 == 2053207651;
    v17 = v16 || v15 == 1748121140;
    if (v17 && !*(v7 + 192))
    {
      v18 = *&a5->value;
      *(v7 + 184) = a5->epoch;
      *(v7 + 168) = v18;
    }
  }

  if (*(a3 + 168))
  {
    *(a3 + 168) = 0;
    mmUpdateTrackType(a3, *(a3 + 24));
    if (*(a3 + 28) != 1768174368)
    {
      v26 = mmSampleGeneratorCreate(a3);
      if (v26)
      {
        return v26;
      }
    }
  }

  v29 = *&a5->value;
  epoch = a5->epoch;
  v27 = *&a6->value;
  v28 = a6->epoch;
  DecryptionTypeFromTrackType = getDecryptionTypeFromTrackType(*(a3 + 24));
  v35 = 0;
  v20 = *(a3 + 8);
  v21 = MEMORY[0x1E695E4D0];
  if (*(v20 + 96))
  {
    FigBasicAESCPECryptorGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v22 = *(v20 + 96);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v23)
      {
        return 4294954514;
      }

      v8 = v23(v22, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &v35);
      v24 = v35;
      if (v8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v24 = CFRetain(*v21);
      v35 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 == *v21;
  v33 = v29;
  v34 = epoch;
  v31 = v27;
  v32 = v28;
  v8 = mmPushFrame(a3, DecryptionTypeFromTrackType, v25, a4, &v33, &v31, a7);
  v24 = v35;
LABEL_28:
  if (v24)
  {
    CFRelease(v24);
  }

  return v8;
}

uint64_t mmMPEG2MakeFormatCallback(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 96);
  if (!v3 && !*(v2 + 104))
  {
    goto LABEL_20;
  }

  v4 = *(a1 + 112);
  if (v4 != 1936684398)
  {
    if (v4 == 1986618469)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_21;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 48));
  v7 = MediaSubType - 2053202739 > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0;
  v8 = !v7 || MediaSubType == 2053464883;
  if (!v8 && MediaSubType != 2053202275)
  {
LABEL_20:
    v5 = 0;
    goto LABEL_21;
  }

  v10 = *(a1 + 8);
  v5 = *(v10 + 104);
  if (!v5)
  {
    v5 = *(v10 + 96);
  }

LABEL_21:
  v11 = *(a1 + 56);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 80);
  v14 = *(v12 + 112);
  *(v12 + 112) = 0;
  v15 = v12;
  if (v14 >= 1)
  {
    v16 = v14;
    do
    {
      FigSimpleMutexUnlock();
      --v16;
    }

    while (v16);
    v15 = *(a1 + 8);
  }

  v17 = v11(*(v15 + 24), *(a1 + 44), v13, *(a1 + 48), v5);
  do
  {
    FigSimpleMutexLock();
    v18 = *(v12 + 112) + 1;
    *(v12 + 112) = v18;
  }

  while (v18 < v14);
  if (!v17)
  {
    if (*(v12 + 8) || *(v12 + 10))
    {
      return 4294951251;
    }

    else
    {
      v17 = 0;
      *(a1 + 41) = 0;
    }
  }

  return v17;
}

uint64_t mmSampleGeneratorCreate(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 32);
  FigMPEG2SampleGeneratorDestroy(*(a1 + 32));
  *v3 = 0;
  v4 = FigMPEG2SampleGeneratorCreate(*v2, mmMPEG2NewFormatCallback, mmMPEG2NewSampleCallback, a1, *(a1 + 28), 0, v3);
  if (!v4)
  {
    v5 = *(v2 + 56);
    if (v5 >= 1)
    {
      FigMPEG2SampleGeneratorSetMaxFramesPerSampleBuffer(*v3, v5);
    }
  }

  return v4;
}

uint64_t mmMPEG2NewSampleCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, unsigned int a5)
{
  v5 = *(a2 + 8);
  if (*(v5 + 8))
  {
    return 4294954511;
  }

  v7 = (a2 + 64);
  if (!*(a2 + 64))
  {
    return 0;
  }

  if (*(a2 + 41))
  {
    mmMPEG2MakeFormatCallback(a2);
  }

  if (*(v5 + 180))
  {
    v11 = *(a2 + 24);
    v12 = v11 == 1700886115 || v11 == 2053207651;
    if (v12 || v11 == 1748121140)
    {
      v25 = *(v5 + 168);
      v14 = CMTimeCopyAsDictionary(&v25, *MEMORY[0x1E695E480]);
      if (v14)
      {
        v15 = v14;
        CMSetAttachment(a3, *MEMORY[0x1E6962E18], v14, 1u);
        CFRelease(v15);
      }

      v16 = MEMORY[0x1E6960C70];
      *(v5 + 168) = *MEMORY[0x1E6960C70];
      *(v5 + 184) = *(v16 + 16);
      *(v5 + 192) = 1;
    }
  }

  v17 = (a5 >> 4) & 1;
  if (*v7)
  {
    v18 = *v7;
  }

  else
  {
    v18 = 0;
  }

  v20 = *(a2 + 80);
  v21 = *(v5 + 112);
  *(v5 + 112) = 0;
  if (v21 >= 1)
  {
    v22 = v21;
    do
    {
      FigSimpleMutexUnlock();
      --v22;
    }

    while (v22);
  }

  v19 = v18(*(v5 + 24), *(a2 + 44), v20, v17, a4, a3);
  do
  {
    FigSimpleMutexLock();
    v23 = *(v5 + 112) + 1;
    *(v5 + 112) = v23;
  }

  while (v23 < v21);
  if (!v19)
  {
    v19 = 4294951251;
    if (!*(v5 + 8))
    {
      if (*(v5 + 10))
      {
        return 4294951251;
      }

      else
      {
        return 0;
      }
    }
  }

  return v19;
}

uint64_t mmInvokeNewTrackCallback(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(a2 + 44);
  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5 >= 1)
  {
    v6 = v5;
    do
    {
      FigSimpleMutexUnlock();
      --v6;
    }

    while (v6);
  }

  v7 = (*(a1 + 64))(*(a1 + 24), *(a1 + 88), v3, v4);
  do
  {
    FigSimpleMutexLock();
    OUTLINED_FUNCTION_1_100();
  }

  while (v8 < v5);
  if (!v7)
  {
    if (*(a1 + 8))
    {
      return 4294951251;
    }

    else if (*(a1 + 10))
    {
      return 4294951251;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t MPEG2ManifoldInjectData(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MPEG2ManifoldNoteStreamEnd(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mmPushFrame(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLServiceReadAndCopyParsedXML(uint64_t a1, CFTypeRef *a2)
{
  v13 = 0;
  xdict = 0;
  number = 0;
  cf = 0;
  valuePtr = -1;
  v9 = 0;
  if (qword_1ED4CACF0 != -1)
  {
    dispatch_once(&qword_1ED4CACF0, &__block_literal_global_44);
  }

  v3 = _MergedGlobals_70;
  if (!_MergedGlobals_70)
  {
    v4 = FigXPCCreateBasicMessage();
    if (v4)
    {
      goto LABEL_20;
    }

    v5 = *MEMORY[0x1E695E480];
    v4 = CMByteStreamCreateForFileURL();
    if (v4)
    {
      goto LABEL_20;
    }

    CMBaseObject = CMByteStreamGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7)
    {
      v3 = 4294954514;
      goto LABEL_13;
    }

    v4 = v7(CMBaseObject, *MEMORY[0x1E6960DC0], v5, &number);
    if (v4 || (CFNumberGetValue(number, kCFNumberIntType, &valuePtr), xpc_dictionary_set_fd(xdict, "fd", valuePtr), v4 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v4))
    {
LABEL_20:
      v3 = v4;
    }

    else
    {
      v3 = fxs_deserializeFigXMLNode(v13, 0, &v9);
      if (!a2 || v3)
      {
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        *a2 = v9;
      }
    }
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (number)
  {
    CFRelease(number);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

uint64_t fxs_deserializeFigXMLNode(void *a1, uint64_t a2, CFTypeRef *a3)
{
  value = a1;
  v16 = 0;
  if (!a2)
  {
    value = xpc_dictionary_get_value(a1, "root");
  }

  if (!value)
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    goto LABEL_22;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    goto LABEL_22;
  }

  v6 = FigXPCMessageCopyCFDictionary();
  if (v6)
  {
    goto LABEL_22;
  }

  v7 = *MEMORY[0x1E695E480];
  if (!a2)
  {
    v6 = FigXMLNodeCreateNode(v7, 0, &v16);
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_22:
    v14 = v6;
    goto LABEL_18;
  }

  v6 = FigXMLNodeCreateChildNode(v7, a2, 0, &v16);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_11:
  v8 = xpc_dictionary_get_value(value, "children");
  if (v8)
  {
    v9 = v8;
    count = xpc_array_get_count(v8);
    if (count)
    {
      v11 = count;
      v12 = 0;
      do
      {
        v13 = xpc_array_get_value(v9, v12);
        v6 = fxs_deserializeFigXMLNode(v13, v16, a3);
        if (v6)
        {
          goto LABEL_22;
        }
      }

      while (v11 != ++v12);
    }
  }

  v14 = 0;
  if (!a2)
  {
    *a3 = v16;
    v16 = 0;
  }

LABEL_18:
  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t FigXMLServiceReadFromMemoryAndCopyParsedXML(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v9 = 0;
  v10 = 0;
  cf = 0;
  if (qword_1ED4CACF0 != -1)
  {
    dispatch_once(&qword_1ED4CACF0, &__block_literal_global_44);
  }

  v5 = _MergedGlobals_70;
  if (!_MergedGlobals_70)
  {
    v6 = FigXPCCreateBasicMessage();
    if (v6 || (v6 = FigXPCMessageSetBlockBuffer(), v6) || (v6 = FigXPCMessageSetCFURL(), v6) || (v6 = FigXPCMessageSetCFString(), v6) || (v6 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v6))
    {
      v5 = v6;
    }

    else
    {
      v5 = fxs_deserializeFigXMLNode(v9, 0, &cf);
      if (!a4 || v5)
      {
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *a4 = cf;
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v5;
}

CMSampleBufferRef sbp_vc_getAndRetainNextSampleBufferIfReady(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  sampleBufferOut = 0;
  if (*(DerivedStorage + 176) || (result = sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady(a1, 0), (*(DerivedStorage + 176) = result) != 0))
  {
    v4 = sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady(a1, &v35);
    if (v4)
    {
      v5 = v4;
      result = *(DerivedStorage + 176);
      *(DerivedStorage + 176) = v5;
      return result;
    }

    if (v35)
    {
      memset(&v33, 0, sizeof(v33));
      CMSampleBufferGetPresentationTimeStamp(&v33, *(DerivedStorage + 176));
      memset(&v32, 0, sizeof(v32));
      v6 = *(DerivedStorage + 144);
      *&v26.duration.value = *(DerivedStorage + 128);
      *&v26.duration.epoch = v6;
      *&v26.presentationTimeStamp.timescale = *(DerivedStorage + 160);
      CMTimeRangeGetEnd(&v32, &v26);
      memset(&v31, 0, sizeof(v31));
      Duration = CMSampleBufferGetDuration(&v31, *(DerivedStorage + 176));
      if ((v32.flags & 0x1D) != 1 || OUTLINED_FUNCTION_1_101(Duration, v8, v9, v10, v11, v12, v13, v14, v33.value, *&v33.timescale, v33.epoch, v26.presentationTimeStamp.value, *&v26.presentationTimeStamp.timescale, v26.presentationTimeStamp.epoch, v26.decodeTimeStamp.value, *&v26.decodeTimeStamp.timescale, v26.decodeTimeStamp.epoch, v27, rhs.value, *&rhs.timescale, rhs.epoch, v29, *&lhs.value, lhs.epoch) > 0 || (v31.flags & 1) != 0 && (lhs = v33, rhs = v31, v15 = CMTimeAdd(&v26.duration, &lhs, &rhs), OUTLINED_FUNCTION_1_101(v15, v16, v17, v18, v19, v20, v21, v22, v26.duration.value, *&v26.duration.timescale, v26.duration.epoch, v26.presentationTimeStamp.value, *&v26.presentationTimeStamp.timescale, v26.presentationTimeStamp.epoch, v26.decodeTimeStamp.value, *&v26.decodeTimeStamp.timescale, v26.decodeTimeStamp.epoch, v27, rhs.value, *&rhs.timescale, rhs.epoch, v29, *&lhs.value, lhs.epoch) > 0))
      {
        sampleBufferOut = *(DerivedStorage + 176);
      }

      else
      {
        v26.presentationTimeStamp = v33;
        v23 = *MEMORY[0x1E6960C70];
        v26.decodeTimeStamp.epoch = *(MEMORY[0x1E6960C70] + 16);
        lhs = v32;
        memset(&v26, 0, 24);
        *&v26.decodeTimeStamp.value = v23;
        rhs = v33;
        CMTimeSubtract(&v26.duration, &lhs, &rhs);
        v24 = CFGetAllocator(*(DerivedStorage + 176));
        if (CMSampleBufferCreateCopyWithNewTiming(v24, *(DerivedStorage + 176), 1, &v26, &sampleBufferOut))
        {
          return sampleBufferOut;
        }

        v25 = *(DerivedStorage + 176);
        if (!v25)
        {
          return sampleBufferOut;
        }

        CFRelease(v25);
      }

      *(DerivedStorage + 176) = 0;
      return sampleBufferOut;
    }

    return 0;
  }

  return result;
}

uint64_t FigSampleBufferProviderCreateForVisualContext_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProviderCreateForVisualContext_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProviderCreateForVisualContextGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigPlaybackMemoryReportMemoryStatus()
{
  buffer[58] = *MEMORY[0x1E69E9840];
  v0 = getpid();
  bzero(buffer, 0x1D0uLL);
  if (!proc_pid_rusage(v0, 6, buffer) && dword_1EAF17388)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t __FigPlaybackMemoryReporterStart_block_invoke()
{
  FigPlaybackMemoryReportMemoryStatus();

  return FigPlaybackMemoryReportCurrentTransactions();
}

uint64_t FigPictureCollectionCreateBrandsFromByteStream()
{
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  v1 = 0u;
  result = FigAtomStreamInitWithByteStream();
  if (!result)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t CreateGroupsListDescriptor()
{
  cf = 0;
  GroupsList = IFFInformationGetGroupsList();
  if (GroupsList)
  {
    return GroupsList;
  }

  else
  {
    return 4294954513;
  }
}

uint64_t IFFPictureCollectionCopyPictureByIndex(uint64_t a1, CFIndex a2, CFTypeRef *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v14 = 0;
  cf = 0;
  PictureByIndex = IFFInformationGetPictureByIndex(*DerivedStorage, a2, &v15, &v14);
  v9 = 4294950136;
  if (!PictureByIndex && v15)
  {
    v10 = CFGetAllocator(*DerivedStorage);
    v11 = CreatePictureReader(v10, *DerivedStorage, v15, &cf);
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      if (a3)
      {
        *a3 = cf;
        cf = 0;
      }

      v9 = 0;
      if (a4)
      {
        *a4 = v14;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t IFFPictureCollectionCopyPictureByID(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v6 = 0;
  IFFInformationGetPictureByID(*DerivedStorage, a2);
  return 4294950136;
}

uint64_t PictureReaderCopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, uint64_t *a4)
{
  UInt32 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v7 = DerivedStorage;
    if (FigCFEqual())
    {
      IsDisplayable = IFFPictureIsDisplayable(*(v7 + 8));
      v9 = MEMORY[0x1E695E4D0];
      if (!IsDisplayable)
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      OUTLINED_FUNCTION_4_79();
      IsPrimary = IFFPictureIsPrimary();
      if (!IsPrimary)
      {
        if (LOBYTE(cf[0]))
        {
          v9 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v9 = MEMORY[0x1E695E4C0];
        }

LABEL_11:
        v11 = *v9;
        UInt32 = v11;
        if (v11)
        {
LABEL_12:
          CFRetain(v11);
        }

LABEL_13:
        v12 = 0;
        *a4 = UInt32;
        return v12;
      }

      return IsPrimary;
    }

    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v26 = OUTLINED_FUNCTION_3_72();
        IsPrimary = IFFPictureCopyCodecType(v26, v27);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v29 = OUTLINED_FUNCTION_3_72();
        IsPrimary = IFFPictureCopyItemType(v29);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v30 = OUTLINED_FUNCTION_3_72();
        IsPrimary = IFFPictureCopyPictureDimensionsDictionary(v30);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v31 = OUTLINED_FUNCTION_3_72();
        IFFPictureCopyCleanApertureDictionary(v31, v32);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v33 = OUTLINED_FUNCTION_3_72();
        IFFPictureCopyRotationDegreesCCW(v33);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v34 = OUTLINED_FUNCTION_3_72();
        IsPrimary = IFFPictureCopyPixelAspectRatioDictionary(v34);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v35 = OUTLINED_FUNCTION_3_72();
        IFFPictureCopyPixelInformationArray(v35, v36);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v37 = OUTLINED_FUNCTION_3_72();
        IFFPictureCopyMirroringDirection(v37);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v38 = OUTLINED_FUNCTION_3_72();
        IsPrimary = IFFPictureCopyFormatDescription(v38, v39);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual())
      {
        v40 = OUTLINED_FUNCTION_3_72();
        IsPrimary = IFFPictureCopyAuxiliaryType(v40, v41, 0);
        if (!IsPrimary)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!FigCFEqual())
        {
          if (FigCFEqual())
          {
            v42 = OUTLINED_FUNCTION_4_79();
            IFFPictureTilesHaveSameBaseProperties(v42);
            if (IsPrimary)
            {
              return IsPrimary;
            }
          }

          else
          {
            if (!FigCFEqual())
            {
              if (FigCFEqual())
              {
                UInt32 = FigCFNumberCreateUInt32();
                goto LABEL_13;
              }

              if (FigCFEqual())
              {
                v52 = OUTLINED_FUNCTION_3_72();
                IsPrimary = IFFPictureCopyLayerSelector(v52);
                if (!IsPrimary)
                {
                  goto LABEL_13;
                }
              }

              else if (FigCFEqual())
              {
                v53 = OUTLINED_FUNCTION_3_72();
                IsPrimary = IFFPictureCopyOperatingPointSelector(v53);
                if (!IsPrimary)
                {
                  goto LABEL_13;
                }
              }

              else if (FigCFEqual())
              {
                v54 = OUTLINED_FUNCTION_3_72();
                IsPrimary = IFFPictureCopyLayerSizes(v54);
                if (!IsPrimary)
                {
                  goto LABEL_13;
                }
              }

              else
              {
                if (!FigCFEqual())
                {
                  return 4294954512;
                }

                v55 = OUTLINED_FUNCTION_3_72();
                IFFPictureCopyStereoMetadataProperties(v55, v56);
                if (!IsPrimary)
                {
                  goto LABEL_13;
                }
              }

              return IsPrimary;
            }

            v43 = OUTLINED_FUNCTION_4_79();
            IFFPictureTilesHaveTransformativeProperties(v43, v44, v45, v46, v47, v48, v49, v50, v57, UInt32, value, v60, theArray, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6]);
            if (IsPrimary)
            {
              return IsPrimary;
            }
          }

          if (LOBYTE(cf[0]))
          {
            v51 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v51 = MEMORY[0x1E695E4C0];
          }

          v11 = *v51;
          UInt32 = *v51;
          goto LABEL_12;
        }

        IsPrimary = IFFPictureCopyAuxiliaryType(*(v7 + 8), 0, &UInt32);
        if (!IsPrimary)
        {
          if (!UInt32)
          {
            return 4294954513;
          }

          goto LABEL_13;
        }
      }

      return IsPrimary;
    }

    v15 = *v7;
    v14 = *(v7 + 8);
    theArray = 0;
    cf[0] = 0;
    v60 = 0;
    v16 = *(*(v14 + 8) + 44);
    if (v16 != 1768187246 && v16 != 1953325424 && v16 != 1768912492)
    {
      Mutable = 0;
      v12 = 4294954513;
      goto LABEL_39;
    }

    v19 = IFFPictureCopyDerivation(v14, cf, &theArray, &v60);
    if (v19)
    {
      v12 = v19;
      Mutable = 0;
      goto LABEL_39;
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (CFArrayGetCount(theArray) >= 1)
      {
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
          value = 0;
          v22 = CreatePictureReader(a3, v15, ValueAtIndex, &value);
          if (v22)
          {
            goto LABEL_77;
          }

          v23 = value;
          CFArrayAppendValue(Mutable, value);
          if (v23)
          {
            CFRelease(v23);
          }
        }

        while (++v20 < CFArrayGetCount(theArray));
      }

      v24 = CFDictionaryCreateMutable(a3, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v24)
      {
        v25 = v24;
        CFDictionarySetValue(v24, @"DerivationType", cf[0]);
        CFDictionarySetValue(v25, @"DerivationParents", Mutable);
        if (v60)
        {
          CFDictionarySetValue(v25, @"DerivationDetail", v60);
        }

        v12 = 0;
        UInt32 = v25;
LABEL_39:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v60)
        {
          CFRelease(v60);
        }

        if (v12)
        {
          return v12;
        }

        goto LABEL_13;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
    }

    v22 = FigSignalErrorAtGM();
LABEL_77:
    v12 = v22;
    goto LABEL_39;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t PictureReaderGetThumbnailCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureThumbnailCount = IFFPictureGetPictureThumbnailCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureThumbnailCount);
}

uint64_t PictureReaderCopyThumbnailByIndex(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294950134;
  }

  v6 = OUTLINED_FUNCTION_5_68(DerivedStorage);
  result = IFFPictureGetPictureThumbnailByIndex(v6, v7);
  if (!result)
  {
    return CreatePictureReader(*MEMORY[0x1E695E480], *v3, v9, a3);
  }

  return result;
}

uint64_t PictureReaderGetAuxiliaryImageCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureAuxiliaryImageCount = IFFPictureGetPictureAuxiliaryImageCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureAuxiliaryImageCount);
}

uint64_t PictureReaderCopyAuxiliaryImageByIndex(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294950134;
  }

  v6 = OUTLINED_FUNCTION_5_68(DerivedStorage);
  result = IFFPictureGetPictureAuxiliaryImageByIndex(v6, v7);
  if (!result)
  {
    return CreatePictureReader(*MEMORY[0x1E695E480], *v3, v9, a3);
  }

  return result;
}

uint64_t PictureReaderGetExifCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureExifCount = IFFPictureGetPictureExifCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureExifCount);
}

uint64_t PictureReaderGetXMPCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureXMPCount = IFFPictureGetPictureXMPCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureXMPCount);
}

uint64_t PictureReaderGetDebugMetadataCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureDebugMetadataCount = IFFPictureGetPictureDebugMetadataCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureDebugMetadataCount);
}

uint64_t PictureReaderGetCustomMetadataCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950134;
  }

  PictureCustomMetadataCount = IFFPictureGetPictureCustomMetadataCount(*(DerivedStorage + 8));
  return OUTLINED_FUNCTION_2_98(PictureCustomMetadataCount);
}

uint64_t PictureTileCursorServiceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (FigCFEqual())
    {
      v5 = OUTLINED_FUNCTION_3_72();
      result = IFFPictureCopyTileDimensionsDictionary(v5, v6);
      if (result)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (!FigCFEqual())
    {
      return 4294954512;
    }

    v8 = OUTLINED_FUNCTION_3_72();
    result = IFFPictureCopyTileGridDimensionsDictionary(v8, v9);
    if (!result)
    {
LABEL_7:
      result = 0;
      *a4 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t PictureTileCursorServiceCreateCursorAtPosition(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = CFGetAllocator(a1);
    PictureTileCursor = CreatePictureTileCursor(v9, *DerivedStorage, *(DerivedStorage + 8), a4);
    if (PictureTileCursor)
    {
      return PictureTileCursor;
    }

    v11 = *a4;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v12)
    {
      v13 = 4294954514;
LABEL_7:
      if (*a4)
      {
        CFRelease(*a4);
      }

      *a4 = 0;
      return v13;
    }

    v13 = v12(v11, a2, a3);
    if (v13)
    {
      goto LABEL_7;
    }

    return v13;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t PictureTileCursorCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UInt32 = 0;
  if (!a4)
  {
    goto LABEL_20;
  }

  v7 = DerivedStorage;
  if (FigCFEqual())
  {
    result = IFFPictureTileAccessorCopyFormatDescription(v7[1], &UInt32);
    if (result)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    result = IFFPictureTileAccessorCopyCleanApertureDictionary(v7[1], &UInt32);
    if (result)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    result = IFFPictureTileAccessorCopySpatialRelationDictionary(v7[1], &UInt32);
    if (result)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    LODWORD(v9) = 0;
    result = IFFPictureTileAccessorGetItemIdentifier(v7[1], &v9);
    if (result)
    {
      return result;
    }

    UInt32 = FigCFNumberCreateUInt32();
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    v10 = 0;
    v9 = 0;
    result = IFFPictureTileAccessorGetItemIdentifier(v7[1], &v10);
    if (!result)
    {
      result = IFFInformationGetPictureByID(*v7, v10);
      if (!result)
      {
        result = CreatePictureReader(a3, *v7, v9, &UInt32);
        if (!result)
        {
LABEL_18:
          result = 0;
          *a4 = UInt32;
        }
      }
    }
  }

  else
  {
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t PictureTileCursorStepAndReportPosition(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v7 = 0;
  v8 = 0;
  result = IFFPictureTileAccessorStepCursor(*(DerivedStorage + 8), &v9);
  if (!result)
  {
    result = IFFPictureTileAccessorGetTileLocation(*(DerivedStorage + 8), &v8, &v7);
    if (!result)
    {
      if (a2)
      {
        *a2 = v8;
      }

      if (a3)
      {
        *a3 = v7;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return 4294950125;
      }
    }
  }

  return result;
}

uint64_t PictureTileCursorGetPosition(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = 0;
  result = IFFPictureTileAccessorGetTileLocation(*(DerivedStorage + 8), &v8, &v7);
  if (!result)
  {
    if (a2)
    {
      *a2 = v8;
    }

    if (a3)
    {
      *a3 = v7;
    }
  }

  return result;
}

uint64_t FigPictureCollectionCreateFromByteStreamWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPictureCollectionCreateFromByteStreamWithOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPictureCollectionCreateFromIFFItemInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPictureCollectionCreateFromIFFItemInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t IFFPictureCollectionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createGroupDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void _createGroupDescription_cold_2(void *value, CFMutableDictionaryRef theDict)
{
  if (value)
  {
    CFDictionarySetValue(theDict, @"StereoAggressors", value);
    CFRelease(value);
  }
}

void CreatePictureReader_cold_1(uint64_t a1, CFTypeRef *a2, void *a3)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = 0;
}

void PictureReaderCopyPictureTileCursorService_cold_1(uint64_t a1, CFTypeRef *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t CreatePictureTileCursor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ckbserver_replyingMessageHandler()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t ckbserver_copyBossAndCompanion(int a1, xpc_object_t xdict, void *a3, void *a4)
{
  if (!xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]))
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v6 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v6)
  {
    return v6;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  return v7;
}

uint64_t ckbserver_requestDidSucceedRequestStatusCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v5)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_3_73();
        v6 = FigXPCCreateBasicMessage();
        v14 = OUTLINED_FUNCTION_582(v6, v7, v8, v9, v10, v11, v12, v13, 0, 0);
        if (!v15)
        {
          v16 = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(v14, v4);
          v24 = OUTLINED_FUNCTION_582(v16, v17, v18, v19, v20, v21, v22, v23, value, message);
          if (!v25)
          {
            xpc_dictionary_set_int64(v24, ".requestID", v3);
            if (!v2)
            {
LABEL_9:
              xpc_connection_send_message(*(v1 + 16), messagea);
              return FigXPCRelease();
            }

            IDForCryptorByAssociatingWithClientConnection = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientConnection();
            v34 = OUTLINED_FUNCTION_582(IDForCryptorByAssociatingWithClientConnection, v27, v28, v29, v30, v31, v32, v33, valuea, messagea);
            if (!v35)
            {
              xpc_dictionary_set_uint64(v34, ".cryptorID", valueb);
              goto LABEL_9;
            }
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_requestDidFailRequestStatusCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v4)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_3_73();
        if (!FigXPCCreateBasicMessage() && !FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v3))
        {
          xpc_dictionary_set_int64(0, ".requestID", v2);
          if (!FigXPCMessageSetCFError())
          {
            OUTLINED_FUNCTION_17_26(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_requestDidUpdateContentKeyBossToNewBossStatusCallback(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 24) && *(a2 + 16) && !FigXPCCreateBasicMessage())
  {
    xpc_connection_send_message(*(a2 + 16), 0);
  }

  return FigXPCRelease();
}

uint64_t ckbserver_requestDidSucceedRequestHandlingCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v5)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_3_73();
        v6 = FigXPCCreateBasicMessage();
        v14 = OUTLINED_FUNCTION_582(v6, v7, v8, v9, v10, v11, v12, v13, 0, 0);
        if (!v15)
        {
          v16 = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(v14, v4);
          v24 = OUTLINED_FUNCTION_582(v16, v17, v18, v19, v20, v21, v22, v23, value, message);
          if (!v25)
          {
            xpc_dictionary_set_int64(v24, ".requestID", v3);
            if (!v2)
            {
LABEL_9:
              xpc_connection_send_message(*(v1 + 16), messagea);
              return FigXPCRelease();
            }

            IDForCryptorByAssociatingWithClientConnection = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientConnection();
            v34 = OUTLINED_FUNCTION_582(IDForCryptorByAssociatingWithClientConnection, v27, v28, v29, v30, v31, v32, v33, valuea, messagea);
            if (!v35)
            {
              xpc_dictionary_set_uint64(v34, ".cryptorID", valueb);
              goto LABEL_9;
            }
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_requestDidFailRequestHandlingCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v4)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_3_73();
        if (!FigXPCCreateBasicMessage() && !FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v3))
        {
          xpc_dictionary_set_int64(0, ".requestID", v2);
          if (!FigXPCMessageSetCFError())
          {
            OUTLINED_FUNCTION_17_26(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_didProvideRequest(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v5)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_12_33();
        if (!FigXPCCreateBasicMessage() && !FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v4))
        {
          xpc_dictionary_set_int64(0, ".requestID", v3);
          xpc_dictionary_set_BOOL(0, ".supportsOfflineKey", v2 != 0);
          if (!FigXPCMessageSetCFString())
          {
            OUTLINED_FUNCTION_17_26(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_didProvideRenewingRequest(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v5)
    {
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_12_33();
        if (!FigXPCCreateBasicMessage() && !FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v4))
        {
          xpc_dictionary_set_int64(0, ".requestID", v3);
          xpc_dictionary_set_BOOL(0, ".supportsOfflineKey", v2 != 0);
          if (!FigXPCMessageSetCFString())
          {
            OUTLINED_FUNCTION_17_26(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_didUpdatePersistableKey(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v3)
    {
      if (*(v1 + 16))
      {
        v4 = v2;
        v5 = FigXPCCreateBasicMessage();
        v13 = OUTLINED_FUNCTION_582(v5, v6, v7, v8, v9, v10, v11, v12, v25, 0);
        if (!v14)
        {
          v15 = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(v13, v4);
          OUTLINED_FUNCTION_582(v15, v16, v17, v18, v19, v20, v21, v22, v26, message);
          if (!v23)
          {
            FigXPCMessageSetCFData();
            xpc_connection_send_message(*(v1 + 16), messagea);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t ckbserver_didExternalProtectionStatusChange(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_38();
    if (v3)
    {
      if (*(v1 + 16))
      {
        v4 = v2;
        if (!FigXPCCreateBasicMessage() && !FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, v4))
        {
          xpc_connection_send_message(*(v1 + 16), 0);
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t __FigContentKeyBossStartServer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleVisualContextMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  v4 = CFGetTypeID(0);
  if (v4 != FigVisualContextGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    return FigSignalErrorAtGM();
  }

  return 4294951138;
}

uint64_t HandleVisualContextNoReplyMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  v4 = CFGetTypeID(0);
  if (v4 != FigVisualContextGetTypeID())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  return 4294951138;
}

uint64_t vcs_SendCallback(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a3)
  {
    if (!FigXPCCreateBasicMessage())
    {
      if (a4 == 1229017957 || a4 == 1229015405)
      {
        FigXPCMessageSetCMTime();
        xpc_dictionary_set_uint64(0, "Flags", a2);
      }

      xpc_connection_send_message(*(a3 + 8), 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
  }

  return FigXPCRelease();
}

uint64_t vcs_ImageAvailableSequentialCallback(uint64_t a1, __int128 *a2, unsigned int a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  return vcs_SendCallback(&v5, a3, a4, 1229017957);
}

uint64_t FigVisualContextServerRetainVisualContextForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaProcessorSetWaterLevels_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigMediaProcessorSetWaterLevels_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigMediaProcessorSetWaterLevels_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigMediaProcessorSetWaterLevels_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  return FigSimpleMutexUnlock();
}

uint64_t fcd_ttml_flushRubyNodesToStyledTextArray(const void *a1, __CFArray *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = 0;
    v4 = 0;
  }

  v43 = 0;
  v44[0] = 0;
  cf[0] = 0;
  v53[0] = 0;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  theArray = a2;
  if (Mutable)
  {
    Count = CFArrayGetCount(*(v4 + 24));
    if (Count)
    {
      v7 = Count;
      theString = Mutable;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 24), v8);
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }

        v10 = FigTTMLSynchronicTreeCopySSS(*(v4 + 8), ValueAtIndex, cf);
        if (v10)
        {
          break;
        }

        if (!CFDictionaryGetValue(cf[0], @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind"))
        {
          CFDictionaryGetValue(cf[0], @"http://www.w3.org/ns/ttml#styling ruby");
        }

        InitialValue = FigCaptionDynamicStyleGetInitialValue();
        v12 = CFEqual(InitialValue, @"rt");
        v13 = FigCaptionDynamicStyleGetInitialValue();
        if (v12 | CFEqual(v13, @"text"))
        {
          v10 = FigCaptionDataCreateMutable();
          if (v10)
          {
            break;
          }

          if (v12)
          {
            v10 = fcd_ttml_setRubyTextPropertyFromDictionary(cf[0], @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position");
            if (v10)
            {
              break;
            }

            v14 = cf[0];
            v15 = @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align";
          }

          else
          {
            v10 = fcd_ttml_setRubyTextPropertyFromDictionary(cf[0], @"http://www.w3.org/ns/ttml#styling position");
            if (v10)
            {
              break;
            }

            v14 = cf[0];
            v15 = @"http://www.w3.org/ns/ttml#styling rubyAlign";
          }

          v10 = fcd_ttml_setRubyTextPropertyFromDictionary(v14, v15);
          if (v10)
          {
            break;
          }

          if (v53[0])
          {
            CFRelease(v53[0]);
            v53[0] = 0;
          }

          v10 = FigTTMLTextCopyContent(ValueAtIndex, v53);
          if (v10)
          {
            break;
          }

          CFStringAppend(theString, v53[0]);
        }

        if (v7 == ++v8)
        {
          Mutable = theString;
          goto LABEL_26;
        }
      }

      v16 = v10;
      Mutable = theString;
    }

    else
    {
LABEL_26:
      v16 = 0;
      v44[0] = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_27();
    v16 = FigSignalErrorAtGM();
  }

  if (v53[0])
  {
    CFRelease(v53[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v16)
  {
    v30 = 0;
  }

  else
  {
    if (a1)
    {
      v17 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v17 = 0;
    }

    v52 = 0;
    v53[0] = 0;
    v50 = 0;
    v51 = 0;
    v18 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    v19 = CFArrayGetCount(*(v17 + 24));
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = CFArrayGetValueAtIndex(*(v17 + 24), v22);
        if (v53[0])
        {
          CFRelease(v53[0]);
          v53[0] = 0;
        }

        ActiveTimeRange = FigTTMLSynchronicTreeCopySSS(*(v17 + 8), v23, v53);
        if (ActiveTimeRange)
        {
          break;
        }

        if (!CFDictionaryGetValue(v53[0], @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind"))
        {
          CFDictionaryGetValue(v53[0], @"http://www.w3.org/ns/ttml#styling ruby");
        }

        v25 = FigCaptionDynamicStyleGetInitialValue();
        if (CFEqual(v25, @"rb") || (v26 = FigCaptionDynamicStyleGetInitialValue(), CFEqual(v26, @"base")))
        {
          v48 = 0u;
          v49 = 0u;
          *cf = 0u;
          ActiveTimeRange = FigTTMLNodeGetActiveTimeRange(v23, cf);
          if (ActiveTimeRange)
          {
            break;
          }

          if (v21)
          {
            CFRelease(v21);
            v52 = 0;
          }

          *v44 = *cf;
          v45 = v48;
          v46 = v49;
          ActiveTimeRange = fcd_ttml_createStylePropertiesFromTTMLStyleSet(v53[0], v44, &v52);
          if (ActiveTimeRange)
          {
            break;
          }

          if (v50)
          {
            CFRelease(v50);
            v50 = 0;
          }

          ActiveTimeRange = FigTTMLTextCopyContent(v23, &v50);
          if (ActiveTimeRange)
          {
            break;
          }

          if (v51)
          {
            CFRelease(v51);
            v51 = 0;
          }

          ActiveTimeRange = FigCaptionDataCreateMutable();
          if (ActiveTimeRange)
          {
            break;
          }

          v28 = v50;
          v27 = v51;
          v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v29)
          {
            v16 = 4294954514;
            goto LABEL_62;
          }

          ActiveTimeRange = v29(v27, v28);
          if (ActiveTimeRange)
          {
            break;
          }

          v21 = v52;
          CFDictionaryApplyFunction(v52, fcd_ttml_setStylePropertyToWholeStyledText, v51);
          CFArrayAppendValue(v18, v51);
        }

        if (v20 == ++v22)
        {
          v16 = 0;
          v30 = v18;
          v18 = 0;
          goto LABEL_64;
        }
      }

      v16 = ActiveTimeRange;
LABEL_62:
      v30 = 0;
    }

    else
    {
      v16 = 0;
      v30 = v18;
      v18 = 0;
    }

LABEL_64:
    if (v50)
    {
      CFRelease(v50);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (v53[0])
    {
      CFRelease(v53[0]);
    }

    if (!v16)
    {
      if (!CFArrayGetCount(v30))
      {
LABEL_76:
        CFArrayRemoveAllValues(*(DerivedStorage + 24));
        v16 = 0;
        goto LABEL_77;
      }

      v32 = CFGetAllocator(a1);
      v33 = fcd_ttml_concatenateStyledTextArray(v30, v32, &v43);
      if (!v33)
      {
        v34 = v43;
        if (!v43)
        {
          OUTLINED_FUNCTION_1_103();
          v16 = FigSignalErrorAtGM();
          if (!v30)
          {
            return v16;
          }

          goto LABEL_80;
        }

        v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v35)
        {
          v36 = v35(v34);
        }

        else
        {
          v36 = &stru_1F0B1AFB8;
        }

        Length = CFStringGetLength(v36);
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v38)
        {
          v16 = 4294954514;
          goto LABEL_77;
        }

        v33 = v38(v34, *MEMORY[0x1E69614E0], 0, 0, Length);
        if (!v33)
        {
          CFArrayAppendValue(theArray, v43);
          goto LABEL_76;
        }
      }

      v16 = v33;
    }
  }

LABEL_77:
  if (v43)
  {
    CFRelease(v43);
  }

  if (v30)
  {
LABEL_80:
    CFRelease(v30);
  }

  return v16;
}

uint64_t fcd_ttml_concatenateStyledTextArray(const __CFArray *a1, const __CFAllocator *a2, void *a3)
{
  v50 = 0;
  v48 = 0;
  cf = 0;
  Mutable = FigCaptionDataCreateMutable();
  if (Mutable)
  {
    v36 = Mutable;
    v7 = 0;
  }

  else
  {
    v7 = CFStringCreateMutable(a2, 0);
    if (v7)
    {
      Count = CFArrayGetCount(a1);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v11)
          {
            v12 = v11(ValueAtIndex);
          }

          else
          {
            v12 = &stru_1F0B1AFB8;
          }

          CFStringAppend(v7, v12);
        }
      }

      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        v14 = v13(v50, v7);
        if (v14)
        {
          v36 = v14;
        }

        else
        {
          if (Count)
          {
            v44 = 0;
            v15 = 0;
            v16 = *MEMORY[0x1E6961268];
            v17 = *MEMORY[0x1E695E480];
            v38 = *MEMORY[0x1E6961268];
            v39 = a3;
            v42 = v7;
            while (1)
            {
              v18 = CFArrayGetValueAtIndex(a1, v15);
              v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v19)
              {
                v20 = v19(v18);
              }

              else
              {
                v20 = &stru_1F0B1AFB8;
              }

              Length = CFStringGetLength(v20);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              CMBaseObject = FigCaptionDataGetCMBaseObject();
              v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v22)
              {
                goto LABEL_36;
              }

              v40 = v15;
              v23 = v22(CMBaseObject, v16, v17, &cf);
              if (v23)
              {
                break;
              }

              v41 = CFArrayGetCount(cf);
              if (v41)
              {
                v24 = 0;
                while (1)
                {
                  v43 = v24;
                  v25 = CFArrayGetValueAtIndex(cf, v24);
                  if (Length)
                  {
                    break;
                  }

LABEL_33:
                  v24 = v43 + 1;
                  if (v43 + 1 == v41)
                  {
                    goto LABEL_34;
                  }
                }

                v26 = v25;
                v27 = 0;
                while (1)
                {
                  v46 = 0;
                  v47 = 0;
                  if (v48)
                  {
                    CFRelease(v48);
                    v48 = 0;
                  }

                  v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (!v28)
                  {
                    break;
                  }

                  v23 = v28(v18, v27, v26, v17, &v48, &v46);
                  if (v23)
                  {
                    goto LABEL_50;
                  }

                  v29 = v47;
                  v30 = v48;
                  if (v48)
                  {
                    v31 = v18;
                    v32 = v17;
                    v33 = v46;
                    v34 = v50;
                    v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                    if (!v35)
                    {
                      break;
                    }

                    v23 = v35(v34, v26, v30, v33 + v44, v29);
                    if (v23)
                    {
                      goto LABEL_50;
                    }

                    v29 = v47;
                    v17 = v32;
                    v18 = v31;
                  }

                  v27 += v29;
                  if (v27 == Length)
                  {
                    goto LABEL_33;
                  }
                }

                v36 = 4294954514;
                goto LABEL_38;
              }

LABEL_34:
              v44 += Length;
              a3 = v39;
              v15 = v40 + 1;
              v16 = v38;
              v7 = v42;
              if (v40 + 1 == Count)
              {
                goto LABEL_35;
              }
            }

LABEL_50:
            v36 = v23;
LABEL_38:
            v7 = v42;
            goto LABEL_39;
          }

LABEL_35:
          v36 = 0;
          *a3 = v50;
          v50 = 0;
        }
      }

      else
      {
LABEL_36:
        v36 = 4294954514;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_27();
      FigSignalErrorAtGM();
      v36 = 0;
    }
  }

LABEL_39:
  if (v48)
  {
    CFRelease(v48);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  return v36;
}