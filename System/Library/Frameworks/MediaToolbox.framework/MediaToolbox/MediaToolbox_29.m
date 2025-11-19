uint64_t FigCaptionRendererOutputNodeSetOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v8 = *(result + 16);
    result += 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 184);
      if (v9)
      {

        return v9(a1, a2, a3);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererOutputNodeSetSeparated(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 192);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

void onRegionInputDo(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*(v2 + 73))
  {
    value = 0;
    if (FigCaptionRendererCALayerOutputNodeCreate(&value))
    {
      onRegionInputDo_cold_1();
      goto LABEL_47;
    }

    CFDictionarySetValue(*(v2 + 73), v3, value);
    if (value)
    {
      CFRelease(value);
    }
  }

  __s1 = 0;
  v4 = *(v2 + 31);
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v6 = *(ProtocolVTable + 16)) != 0 && (v7 = *(v6 + 8)) != 0 && !v7(v4, &__s1))
  {
    v8 = *(MEMORY[0x1E695F050] + 16);
    v45.origin = *MEMORY[0x1E695F050];
    v45.size = v8;
    if (!strcmp(__s1, "FigCaptionRendererAVFLayoutRegion"))
    {
      v45.origin.x = FCRGetVideoPresentationBounds(*(v2 + 83), *(v2 + 84), *(v2 + 79), *(v2 + 80), *(v2 + 81), *(v2 + 82));
      v45.origin.y = v14;
      v45.size.width = v15;
      v45.size.height = v16;
    }

    else
    {
      v9 = *(v2 + 31);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v10 = CMBaseObjectGetProtocolVTable();
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v11 + 152);
          if (v12)
          {
            v12(v9, &v45);
          }
        }
      }

      if (*(v2 + 67) == 2 && CGRectEqualToRect(v45, *MEMORY[0x1E695F058]))
      {
        v13 = *(v2 + 792);
        v45.origin = *(v2 + 776);
        v45.size = v13;
      }
    }

    v44 = 0;
    v17 = *(v2 + 31);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v18 = CMBaseObjectGetProtocolVTable();
    if (v18)
    {
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = *(v19 + 32);
        if (v20)
        {
          v20(v17, v3, &v44);
        }
      }
    }

    if (!v44)
    {
      origin = v45.origin;
      size = v45.size;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v23 = CMBaseObjectGetProtocolVTable();
      if (v23)
      {
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = *(v24 + 64);
          if (v25)
          {
            v25(v3, origin.x, origin.y, size.width, size.height);
          }
        }
      }

      v26 = *(v2 + 31);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v27 = CMBaseObjectGetProtocolVTable();
      if (v27)
      {
        v28 = *(v27 + 16);
        if (v28)
        {
          v29 = *(v28 + 40);
          if (v29)
          {
            v29(v26, v3);
          }
        }
      }

      v30 = *(v2 + 31);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v31 = CMBaseObjectGetProtocolVTable();
      if (v31)
      {
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = *(v32 + 8);
          if (v33)
          {
            v33(v3, v30);
          }
        }
      }

      v34 = *(v2 + 73);
      if (v34 && (v35 = CFDictionaryGetValue(v34, *(v2 + 31)), v36 = CFDictionaryGetValue(*(v2 + 73), v3), v35) && (v37 = v36) != 0 && ((FigCaptionRendererOutputNodeProtocolGetProtocolID(), (v38 = CMBaseObjectGetProtocolVTable()) == 0) || (v39 = *(v38 + 16)) == 0 || (v40 = *(v39 + 24)) == 0 || v40(v35, v37)))
      {
        onRegionInputDo_cold_2();
      }

      else
      {
        *(v2 + 38) = 0u;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v41 = CMBaseObjectGetProtocolVTable();
        if (v41)
        {
          v42 = *(v41 + 16);
          if (v42)
          {
            v43 = *(v42 + 288);
            if (v43)
            {
              v43(v3, v2 + 288);
            }
          }
        }
      }
    }
  }

  else
  {
    onRegionInputDo_cold_3();
  }

LABEL_47:
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(v2);
  free(a1);
}

void onTextHighlightArrayDo(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3[175];
  v3[175] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  theArray = 0;
  v6 = v3[31];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v24 = -12788;
LABEL_36:
    v28 = v24;
LABEL_37:
    onTextHighlightArrayDo_cold_2();
LABEL_41:
    CFRelease(v3);
    goto LABEL_42;
  }

  v9 = *(v8 + 24);
  if (!v9)
  {
    v24 = -12782;
    goto LABEL_36;
  }

  v28 = v9(v6, &theArray);
  if (v28)
  {
    goto LABEL_37;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (v10 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
    __s1[0] = 0;
    FigCaptionRendererBaseProtocolGetProtocolID();
    v14 = CMBaseObjectGetProtocolVTable();
    if (!v14 || (v15 = *(v14 + 16)) == 0)
    {
      v25 = -12788;
LABEL_39:
      v28 = v25;
LABEL_40:
      onTextHighlightArrayDo_cold_1();
      if (!v3)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v16 = *(v15 + 8);
    if (!v16)
    {
      v25 = -12782;
      goto LABEL_39;
    }

    v28 = v16(ValueAtIndex, __s1);
    if (v28)
    {
      goto LABEL_40;
    }

    if (__s1[0] && !strcmp(__s1[0], "FigCaptionRendererCaption"))
    {
      v17 = v3[175];
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v18 = CMBaseObjectGetProtocolVTable();
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = *(v19 + 72);
          if (v20)
          {
            v20(ValueAtIndex, v17);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (v21 && (v22 = *(v21 + 16)) != 0 && (v23 = *(v22 + 216)) != 0)
      {
        v11 = 1;
        v23(ValueAtIndex, 1);
      }

      else
      {
        v11 = 1;
      }
    }

    ++v10;
  }

  if (v11)
  {
    __s1[0] = &v28;
    __s1[1] = v3;
    fcrSessionUpdateOutputDo(__s1);
  }

  if (v3)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void updateDisplayPortDoAsync(CFTypeRef *a1)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v3)
    {
      v3(v2);
    }

    v4 = *(*a1 + 8);
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    v7 = *(a1 + 3);
    v8 = *(a1 + 4);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(v4, v5, v6, v7, v8);
    }

    v10 = *(*a1 + 8);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v11)
    {
      v11(v10);
    }

    v12 = *(*a1 + 8);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v13(v12);
    }

    v14 = *(*a1 + 8);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      v15(v14);
    }

    v16 = *(*a1 + 8);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v17(v16);
    }
  }

  CFRelease(*a1);

  free(a1);
}

CGColorRef overridesCreateCGColorFromCFArray(const __CFDictionary *a1, void *key, void *a3)
{
  v3 = 0;
  components[4] = *MEMORY[0x1E69E9840];
  if (!a1 || !key)
  {
    return v3;
  }

  if (!CFDictionaryContainsKey(a1, key))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, key);
  v8 = CFGetTypeID(Value);
  if (v8 != CGColorGetTypeID())
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFArrayGetTypeID())
    {
      for (i = 0; i != 4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
        v16 = 0.0;
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 != CFNumberGetTypeID())
        {
          break;
        }

        CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &v16);
        components[(i - 1) & 3] = v16;
      }
    }

    goto LABEL_12;
  }

  v3 = CGColorRetain(Value);
  if (!v3)
  {
LABEL_12:
    v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!v13)
    {
      v3 = 0;
      if (!a3)
      {
        return v3;
      }

      goto LABEL_15;
    }

    v14 = v13;
    v3 = CGColorCreate(v13, components);
    CGColorSpaceRelease(v14);
  }

  if (a3)
  {
LABEL_15:
    *a3 = 0x3FF0000000000000;
  }

  return v3;
}

void *OUTLINED_FUNCTION_2_47()
{

  return malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
}

void OUTLINED_FUNCTION_13_9(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  bzero(va, 0xA0uLL);
}

void *OUTLINED_FUNCTION_18_6(uint64_t a1)
{
  v3 = 8 * a1;

  return malloc_type_malloc(v3, v1);
}

void OUTLINED_FUNCTION_20_6()
{
  v4 = *(v2 + 584);

  CFDictionaryGetKeysAndValues(v4, v0, v1);
}

void *OUTLINED_FUNCTION_21_7()
{

  return malloc_type_calloc(1uLL, 0x10uLL, 0xC0040D1025EB5uLL);
}

void *OUTLINED_FUNCTION_26_10()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDBD220](v2, a2, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_28_8()
{

  return CMBaseObjectGetProtocolVTable();
}

uint64_t OUTLINED_FUNCTION_38_5()
{

  return CMBaseObjectGetProtocolVTable();
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return CMBaseObjectGetProtocolVTable();
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return FigGeometryDimensionMake();
}

CFTypeRef OUTLINED_FUNCTION_41_4()
{

  return CFRetain(v0);
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return FigGeometryDimensionMake();
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return FigSimpleMutexLock();
}

uint64_t FigCreateSubtitleRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, __int128 *a9, uint64_t a10, CFTypeRef *a11)
{
  v44 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *__str = 0u;
  v37 = 0u;
  if (a3)
  {
    v11 = a2 != 0;
  }

  else
  {
    v11 = 0;
  }

  if ((a2 != 0) != (a3 != 0))
  {
    FigCreateSubtitleRenderPipeline_cold_7(&v33);
LABEL_40:
    v27 = v33;
    goto LABEL_26;
  }

  if (a5)
  {
    v13 = a4 != 0;
  }

  else
  {
    v13 = 0;
  }

  if ((a4 != 0) != (a5 != 0))
  {
    FigCreateSubtitleRenderPipeline_cold_6(&v33);
    goto LABEL_40;
  }

  if (a7)
  {
    v15 = a6 != 0;
  }

  else
  {
    v15 = 0;
  }

  if ((a6 != 0) != (a7 != 0))
  {
    FigCreateSubtitleRenderPipeline_cold_5(&v33);
    goto LABEL_40;
  }

  v17 = *MEMORY[0x1E695E480];
  FigRenderPipelineGetClassID();
  v18 = CMDerivedObjectCreate();
  if (v18)
  {
LABEL_25:
    v27 = v18;
    goto LABEL_26;
  }

  v19 = v17;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  snprintf(__str, 0x80uLL, "com.apple.coremedia.figsubtitlerenderpipeline(%p).callbackqueue", v35);
  v21 = dispatch_queue_create(__str, 0);
  *(DerivedStorage + 8) = v21;
  if (!v21)
  {
    FigCreateSubtitleRenderPipeline_cold_4(&v33);
    goto LABEL_40;
  }

  if (v11)
  {
    *(DerivedStorage + 144) = a2;
    v22 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(DerivedStorage + 152) = v22;
    if (!v22)
    {
      FigCreateSubtitleRenderPipeline_cold_3(&v33);
      goto LABEL_40;
    }
  }

  if (v13)
  {
    *(DerivedStorage + 160) = a4;
    v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(DerivedStorage + 168) = v23;
    if (!v23)
    {
      FigCreateSubtitleRenderPipeline_cold_2(&v33);
      goto LABEL_40;
    }
  }

  if (v15)
  {
    *(DerivedStorage + 192) = a6;
    v24 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(DerivedStorage + 200) = v24;
    if (!v24)
    {
      FigCreateSubtitleRenderPipeline_cold_1(&v33);
      goto LABEL_40;
    }
  }

  v25 = a8;
  if (a8)
  {
    v25 = CFRetain(a8);
  }

  v26 = v19;
  *(DerivedStorage + 176) = v25;
  *(DerivedStorage + 184) = 0;
  v18 = FigTextSampleBufferSetUpState(DerivedStorage + 40, v19, a1);
  if (v18)
  {
    goto LABEL_25;
  }

  v33 = *a9;
  v34 = *(a9 + 2);
  v18 = FigSimpleRenderPipelineCreateWithCallback(v19, subrp_sendSubtitleSampleForSampleBuffer, 0, v35, &v33, 0, (DerivedStorage + 24));
  if (v18)
  {
    goto LABEL_25;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 24));
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v27 = v30(FigBaseObject, @"SourceSampleBufferQueue", v26, DerivedStorage + 32);
    if (!v27)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      *a11 = v35;
      return v27;
    }
  }

  else
  {
    v27 = 4294954514;
  }

LABEL_26:
  if (v35)
  {
    CFRelease(v35);
  }

  return v27;
}

uint64_t subrp_sendSubtitleSampleForSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return FigSimpleMutexUnlock();
  }

  if (!a2)
  {
    return FigSimpleMutexUnlock();
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v8 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
  memset(&v45, 0, sizeof(v45));
  CMSampleBufferGetOutputPresentationTimeStamp(&v45, a2);
  memset(&v44, 0, sizeof(v44));
  CMSampleBufferGetOutputDuration(&v44, a2);
  v39 = *MEMORY[0x1E695F050];
  v40 = *(MEMORY[0x1E695F050] + 16);
  v42 = *MEMORY[0x1E695F050];
  v43 = v40;
  if (MediaSubType)
  {
    *(DerivedStorage + 184) = MediaSubType;
  }

  else
  {
    MediaSubType = *(DerivedStorage + 184);
  }

  if (!WebVTTIsFormatDescriptionForWebVTT(FormatDescription))
  {
    if (v8)
    {
      v10 = 0;
      v9 = 0;
      v42 = v39;
      v43 = v40;
      v11 = 1;
      LOBYTE(v12) = 1;
    }

    else
    {
      v19 = *(DerivedStorage + 136);
      v49[0] = 0;
      *numValues = v39;
      v48 = v40;
      aStr = 0;
      v20 = *MEMORY[0x1E695E480];
      if (FigTextSampleBufferCopyAttributedString(DerivedStorage + 40, *MEMORY[0x1E695E480], a2, &aStr, v49 + 1, v49, numValues))
      {
        goto LABEL_88;
      }

      if (aStr)
      {
        String = CFAttributedStringGetString(aStr);
        if (!CFStringGetLength(String))
        {
          CFRelease(aStr);
          aStr = 0;
        }
      }

      Mutable = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
LABEL_88:
        v9 = 0;
        v12 = 0;
        v10 = 0;
        v11 = 0;
        v24 = 0;
        v41 = 0;
      }

      else
      {
        v23 = Mutable;
        if (aStr)
        {
          CFArrayAppendValue(Mutable, aStr);
        }

        v24 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v24 || FigCFDictionarySetInt32())
        {
          v9 = 0;
          v12 = 0;
          v10 = 0;
          v11 = 0;
          v41 = 0;
        }

        else
        {
          if (v19)
          {
            CFDictionarySetValue(v24, @"SubtitleExtendedLanguageTag", v19);
          }

          if (subrp_isSubtitleOverHDRVideo())
          {
            CFDictionarySetValue(v24, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
          }

          CFDictionarySetValue(v24, @"SubtitleContent", v23);
          v11 = aStr == 0;
          v9 = CFRetain(v24);
          v12 = HIBYTE(v49[0]);
          v10 = v49[0];
          v42 = *numValues;
          v43 = v48;
          v41 = 1;
        }

        CFRelease(v23);
      }

      if (aStr)
      {
        CFRelease(aStr);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!v41)
      {
        goto LABEL_83;
      }

      if (!v12)
      {
        if (*(DerivedStorage + 106))
        {
          if (v11)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            *numValues = *&v45.value;
            *&v48 = v45.epoch;
            subrp_sendEmptySubtitleSample(a1, MediaSubType, numValues, 1);
            LOBYTE(v12) = 0;
          }

          *(DerivedStorage + 106) = 0;
        }

        else
        {
          LOBYTE(v12) = 0;
        }

        goto LABEL_58;
      }
    }

    *(DerivedStorage + 106) = !v11;
    goto LABEL_58;
  }

  if (v8)
  {
    goto LABEL_10;
  }

  v13 = *(DerivedStorage + 112);
  if (!v13)
  {
    if (WebVTTSampleBufferParserCreate((DerivedStorage + 112)))
    {
      return FigSimpleMutexUnlock();
    }

    v13 = *(DerivedStorage + 112);
  }

  v14 = *(DerivedStorage + 120);
  v15 = *(DerivedStorage + 136);
  v16 = *(DerivedStorage + 88);
  numValues[0] = 0;
  if (!subrp_SampleBufferShouldBeDisplayed(a2))
  {
LABEL_10:
    v9 = 0;
  }

  else
  {
    if (WebVTTCreateAttributedStringArrayFromSampleBuffer(v13, a2, v14, numValues))
    {
      v9 = 0;
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v25 = *MEMORY[0x1E695E480];
      v18 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v18 || FigCFDictionarySetInt32())
      {
        v9 = 0;
        v17 = 0;
      }

      else
      {
        if (v15)
        {
          CFDictionarySetValue(v18, @"SubtitleExtendedLanguageTag", v15);
        }

        if (subrp_isSubtitleOverHDRVideo())
        {
          CFDictionarySetValue(v18, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
        }

        v26 = numValues[0];
        if (!numValues[0])
        {
          v26 = CFArrayCreate(v25, 0, 0, MEMORY[0x1E695E9C0]);
          numValues[0] = v26;
        }

        CFDictionarySetValue(v18, @"SubtitleContent", v26);
        if (v16)
        {
          CFDictionarySetValue(v18, @"SubtitleContentMetadata", v16);
        }

        v9 = CFRetain(v18);
        v17 = 1;
      }
    }

    if (numValues[0])
    {
      CFRelease(numValues[0]);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (!v17)
    {
      goto LABEL_83;
    }
  }

  v10 = 0;
  v42 = v39;
  v43 = v40;
  LOBYTE(v12) = 1;
LABEL_58:
  if (!subrp_SampleBufferShouldBeDisplayed(a2))
  {
    goto LABEL_83;
  }

  if (subrp_isSubTypeFourCCToBeRepresentedNatively(*(DerivedStorage + 176), MediaSubType))
  {
    if (*(DerivedStorage + 160))
    {
      v27 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v27)
      {
        v28 = v27;
        v29 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00400775FAF6uLL);
        if (v29)
        {
          v30 = v29;
          if (a1)
          {
            v31 = CFRetain(a1);
          }

          else
          {
            v31 = 0;
          }

          *v30 = v31;
          *(v30 + 1) = *(DerivedStorage + 160);
          *(v30 + 2) = CFRetain(v28);
          *(v30 + 3) = CFRetain(a2);
          *(v30 + 32) = v45;
          v30[56] = v12;
          dispatch_async_f(*(DerivedStorage + 8), v30, subrpNativeCallback);
        }

        else
        {
          subrp_sendSubtitleSampleForSampleBuffer_cold_1();
        }

        v37 = v28;
LABEL_82:
        CFRelease(v37);
      }
    }
  }

  else if (*(DerivedStorage + 144))
  {
    v32 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v32)
    {
      v33 = v32;
      v34 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040556ECBE3uLL);
      if (v34)
      {
        v35 = v34;
        if (a1)
        {
          v36 = CFRetain(a1);
        }

        else
        {
          v36 = 0;
        }

        *v35 = v36;
        *(v35 + 1) = *(DerivedStorage + 144);
        *(v35 + 2) = CFRetain(v33);
        if (v9)
        {
          v38 = CFRetain(v9);
        }

        else
        {
          v38 = 0;
        }

        *(v35 + 3) = v38;
        *(v35 + 32) = v45;
        v35[80] = v12;
        v35[81] = v10;
        *(v35 + 88) = v42;
        *(v35 + 104) = v43;
        dispatch_async_f(*(DerivedStorage + 8), v35, subrpCommonCallback);
      }

      else
      {
        subrp_sendSubtitleSampleForSampleBuffer_cold_2();
      }

      v37 = v33;
      goto LABEL_82;
    }
  }

LABEL_83:
  if (v9)
  {
    CFRelease(v9);
  }

  return FigSimpleMutexUnlock();
}

uint64_t subrp_resetOutput(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  else if (*(DerivedStorage + 192))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xE004023458D36uLL);
      if (v6)
      {
        v7 = v6;
        if (a2)
        {
          v8 = CFRetain(a2);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(DerivedStorage + 192);
        *v7 = v8;
        v7[1] = v9;
        v7[2] = CFRetain(v5);
        dispatch_async_f(*(DerivedStorage + 8), v7, subrpFlushCallback);
      }

      else
      {
        subrp_resetOutput_cold_1();
      }

      CFRelease(v5);
    }
  }

  else
  {
    v11 = *(DerivedStorage + 184);
    figSubtitleRenderPipelineGetCurrentTimeFromTimebase(DerivedStorage, &v12);
    subrp_sendEmptySubtitleSample(a2, v11, &v12, *(DerivedStorage + 106));
    *(DerivedStorage + 106) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t figSubtitleRenderPipelineFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figSubtitleRenderPipelineInvalidate_Internal(a1, 0);
  FigTextSampleBufferTearDownState(DerivedStorage + 40);
  v3 = *(DerivedStorage + 152);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 152) = 0;
  }

  v4 = *(DerivedStorage + 168);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 168) = 0;
  }

  v5 = *(DerivedStorage + 200);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 200) = 0;
  }

  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 8) = 0;
  }

  v7 = *(DerivedStorage + 120);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 120) = 0;
  }

  v8 = *(DerivedStorage + 128);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 128) = 0;
  }

  v9 = *(DerivedStorage + 136);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 136) = 0;
  }

  v10 = *(DerivedStorage + 208);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 208) = 0;
  }

  v11 = *(DerivedStorage + 176);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 176) = 0;
  }

  WebVTTSampleBufferParserDestroy(*(DerivedStorage + 112));
  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 16) = 0;
  return result;
}

__CFString *figSubtitleRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSubtitleRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t figSubtitleRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"SRPP_TextMarkupArray"))
  {
    v10 = v8[15];
    if (!v10)
    {
      return 4294954513;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"SRPP_TextHighlightArray"))
  {
    v10 = v8[16];
    if (!v10)
    {
      return 4294954513;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"SRPP_ExtendedLanguageTagString"))
  {
    v10 = v8[17];
    if (v10)
    {
LABEL_14:
      v11 = CFRetain(v10);
LABEL_15:
      result = 0;
      *a4 = v11;
      return result;
    }

LABEL_18:
    v11 = 0;
    goto LABEL_15;
  }

  if (CFEqual(@"HDRCrossTalker", a2))
  {
    v10 = v8[26];
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(v8[3]);

  return CMBaseObjectCopyProperty(FigBaseObject, a2, a3, a4);
}

uint64_t figSubtitleRenderPipelineSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v6 = DerivedStorage, *DerivedStorage))
  {
LABEL_3:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"SRPP_TextMarkupArray"))
  {
    v8 = v6[15];
    if (v8)
    {
      CFRelease(v8);
      v6[15] = 0;
    }

    if (a3)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        goto LABEL_3;
      }

      v6[15] = CFRetain(a3);
    }

    return 0;
  }

  if (CFEqual(a2, @"SRPP_TextHighlightArray"))
  {
    if (!a3)
    {
      v11 = v6[16];
      v6[16] = 0;
      goto LABEL_34;
    }

    v10 = CFArrayGetTypeID();
    if (v10 != CFGetTypeID(a3))
    {
      goto LABEL_3;
    }

    v11 = v6[16];
    v6[16] = a3;
    goto LABEL_27;
  }

  if (CFEqual(a2, @"SRPP_ExtendedLanguageTagString"))
  {
    if (a3)
    {
      v12 = CFStringGetTypeID();
      if (v12 != CFGetTypeID(a3))
      {
        goto LABEL_3;
      }

      v11 = v6[17];
      v6[17] = a3;
      goto LABEL_27;
    }

    v11 = v6[17];
    v6[17] = 0;
    goto LABEL_34;
  }

  if (CFEqual(a2, @"HDRCrossTalker"))
  {
    if (a3)
    {
      v13 = FigCrossTalkerGetTypeID();
      if (v13 != CFGetTypeID(a3))
      {
        goto LABEL_3;
      }

      v11 = v6[26];
      v6[26] = a3;
LABEL_27:
      CFRetain(a3);
      goto LABEL_34;
    }

    v11 = v6[26];
    v6[26] = 0;
LABEL_34:
    if (v11)
    {
      CFRelease(v11);
    }

    return 0;
  }

  v14 = v6[3];

  return FigRenderPipelineSetProperty(v14, a2, a3);
}

void figSubtitleRenderPipelineInvalidate_Internal(const void *a1, int a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {

      FigSimpleMutexUnlock();
    }

    else
    {
      if (a2)
      {
        if (*(DerivedStorage + 192))
        {
          v5 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v5)
          {
            v6 = v5;
            (*(DerivedStorage + 192))(a1, v5);
            CFRelease(v6);
          }
        }

        else
        {
          memset(&v11, 0, sizeof(v11));
          figSubtitleRenderPipelineGetCurrentTimeFromTimebase(DerivedStorage, &v11);
          subrp_sendEmptySubtitleSample(a1, *(DerivedStorage + 184), &v11, *(DerivedStorage + 106));
          *(DerivedStorage + 106) = 0;
        }
      }

      *DerivedStorage = 1;
      FigSimpleMutexUnlock();
      if (*(DerivedStorage + 32))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CFRelease(*(DerivedStorage + 32));
        *(DerivedStorage + 32) = 0;
      }

      v7 = *(DerivedStorage + 24);
      if (v7)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v7);
        if (FigBaseObject)
        {
          v9 = FigBaseObject;
          v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v10)
          {
            v10(v9);
          }
        }

        CFRelease(*(DerivedStorage + 24));
        *(DerivedStorage + 24) = 0;
      }
    }
  }
}

void subrp_sendEmptySubtitleSample(const void *a1, int a2, uint64_t a3, char a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (subrp_isSubTypeFourCCToBeRepresentedNatively(*(DerivedStorage + 176), a2))
  {
    if (!*(DerivedStorage + 160))
    {
      return;
    }

    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00400775FAF6uLL);
    if (!v11)
    {
      subrp_sendEmptySubtitleSample_cold_1();
      goto LABEL_18;
    }

    v12 = v11;
    if (a1)
    {
      v13 = CFRetain(a1);
    }

    else
    {
      v13 = 0;
    }

    v17 = *(DerivedStorage + 160);
    *v12 = v13;
    *(v12 + 1) = v17;
    *(v12 + 2) = CFRetain(v10);
    *(v12 + 3) = 0;
    v18 = *(a3 + 16);
    *(v12 + 2) = *a3;
    *(v12 + 6) = v18;
    v12[56] = a4;
    v19 = *(DerivedStorage + 8);
    v20 = subrpNativeCallback;
  }

  else
  {
    if (!*(DerivedStorage + 144))
    {
      return;
    }

    v14 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v14)
    {
      return;
    }

    v10 = v14;
    v15 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040556ECBE3uLL);
    if (!v15)
    {
      subrp_sendEmptySubtitleSample_cold_2();
      goto LABEL_18;
    }

    v12 = v15;
    if (a1)
    {
      v16 = CFRetain(a1);
    }

    else
    {
      v16 = 0;
    }

    v21 = *(DerivedStorage + 144);
    *v12 = v16;
    *(v12 + 1) = v21;
    *(v12 + 2) = CFRetain(v10);
    *(v12 + 3) = 0;
    v22 = *(a3 + 16);
    *(v12 + 2) = *a3;
    v23 = *(MEMORY[0x1E695F050] + 16);
    *(v12 + 88) = *MEMORY[0x1E695F050];
    *(v12 + 6) = v22;
    v12[80] = a4;
    v12[81] = 0;
    *(v12 + 104) = v23;
    v19 = *(DerivedStorage + 8);
    v20 = subrpCommonCallback;
  }

  dispatch_async_f(v19, v12, v20);
LABEL_18:

  CFRelease(v10);
}

const __CFArray *subrp_isSubTypeFourCCToBeRepresentedNatively(const __CFArray *a1, int a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v6.length = CFArrayGetCount(v2);
    v6.location = 0;
    v2 = CFArrayContainsValue(v2, v6, v3);
    CFRelease(v3);
  }

  return v2;
}

void subrpNativeCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 56);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v3(v2, v6, &v10, v5, v7);
  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void subrpCommonCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 80);
  v6 = *(a1 + 81);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v3(v2, v7, &v11, v5, v6, v8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigRenderPipelineSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(FigBaseObject, a2, a3);
}

BOOL subrp_SampleBufferShouldBeDisplayed(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  result = 1;
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      if (*MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t subrp_isSubtitleOverHDRVideo()
{
  cf = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 208);
  if (!v0)
  {
    return 0;
  }

  FigBaseObject = FigBytePumpGetFigBaseObject(v0);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  if (v2(FigBaseObject, 0x1F0B4C778, *MEMORY[0x1E695E480], &cf))
  {
    v3 = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E4D0] == cf;
  }

  v4 = v3;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void subrpFlushCallback(CFTypeRef *a1)
{
  (a1[1])(*a1, a1[2]);
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

CFStringRef fpSupport_AcquireVideoDisplayAssertion(unsigned int a1, const void *a2)
{
  MEMORY[0x19A8D3660](&sCreatedisplayAssertionDictMutexOnce, fpSupport_createDisplayAssertionMutexAndDict);
  v4 = &sAssertionParameters[4 * a1];
  FigSimpleMutexLock();
  if (a2)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%p", a2);
    if (v6)
    {
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr = 1;
      v8 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      if (Mutable)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        fpSupport_AcquireVideoDisplayAssertion_cold_1();
      }

      else
      {
        v10 = v8;
        CFDictionarySetValue(Mutable, @"Assertion", v6);
        CFDictionarySetValue(Mutable, @"OwnerCount", v10);
        CFRelease(v10);
      }

      CFDictionarySetValue(v4[1], a2, Mutable);
      CFRelease(Mutable);
    }
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FPSupport_ReleaseVideoDisplayAssertion(unsigned int a1, const void *a2, const void *a3)
{
  MEMORY[0x19A8D3660](&sCreatedisplayAssertionDictMutexOnce, fpSupport_createDisplayAssertionMutexAndDict);
  v6 = &sAssertionParameters[4 * a1];
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(v6[1], a2);
  if (Value)
  {
    v8 = Value;
    CFDictionaryGetValue(Value, @"OwnerCount");
    valuePtr = FigCFNumberGetSInt32() - 1;
    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v8, @"OwnerCount", v9);
    CFRelease(v9);
    CFDictionaryGetValue(v8, @"OwnerCount");
    if (!FigCFNumberGetSInt32())
    {
      CFDictionaryRemoveValue(v6[1], a2);
      if (a2)
      {
        CFRetain(a2);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDeferNotificationToDispatchQueue();
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }

  return FigSimpleMutexUnlock();
}

void fpSupport_SetupRuntimeMediaValidatorPlist()
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  Mutable = CFDictionaryCreateMutable(AllocatorForPermanentAllocations, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    if (fpSupport_SetupRuntimeMediaValidatorPlist_cold_7())
    {
      goto LABEL_43;
    }

LABEL_49:
    Mutable = 0;
    goto LABEL_50;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    if (fpSupport_SetupRuntimeMediaValidatorPlist_cold_6())
    {
      goto LABEL_43;
    }

    goto LABEL_48;
  }

  v4 = v3;
  v5 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  if (v5)
  {
    v6 = v5;
    v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    if (!v7)
    {
      fpSupport_SetupRuntimeMediaValidatorPlist_cold_4();
      goto LABEL_40;
    }

    v8 = VTCopyVP9DecoderCapabilitiesDictionary();
    if (!v8)
    {
LABEL_32:
      if (FigCFDictionaryGetCount() >= 1)
      {
        CFDictionarySetValue(Mutable, @"VideoCodecProfiles", v4);
        if (!FigCFArrayContainsValue())
        {
          CFArrayAppendValue(v7, @"vide");
        }
      }

      if (CFArrayGetCount(v6) >= 1)
      {
        CFDictionarySetValue(Mutable, @"vide", v6);
        if (!FigCFArrayContainsValue())
        {
          CFArrayAppendValue(v7, @"vide");
        }
      }

      if (CFArrayGetCount(v7) >= 1)
      {
        CFDictionarySetValue(Mutable, @"TrackTypes", v7);
      }

LABEL_40:
      CFRelease(v4);
      CFRelease(v6);
      v4 = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v9 = v8;
    Value = CFDictionaryGetValue(v8, *MEMORY[0x1E6983CD0]);
    if (Value)
    {
      v11 = Value;
      theDict = CFDictionaryGetValue(v9, *MEMORY[0x1E6983CC8]);
      theArray = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
      if (theArray)
      {
        v12 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v12)
        {
          v39 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v39)
          {
            v33 = v9;
            v36 = Mutable;
            v37 = v12;
            v34 = v6;
            v35 = v4;
            if (CFArrayGetCount(v11) >= 1)
            {
              v13 = 0;
              v14 = *MEMORY[0x1E695E4C0];
              v15 = *MEMORY[0x1E6983CE0];
              while (1)
              {
                valuePtr = 0;
                ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
                CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr + 4);
                v17 = CFStringCreateWithFormat(v2, 0, @"0%d", HIDWORD(valuePtr));
                CFArrayAppendValue(theArray, v17);
                CFRelease(v17);
                v18 = CFStringCreateWithFormat(v2, 0, @"%d", HIDWORD(valuePtr));
                v19 = CFDictionaryGetValue(theDict, v18);
                v20 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v20 || (v21 = v20, CFDictionarySetValue(v39, v18, v20), CFRelease(v18), FigCFDictionaryGetBooleanIfPresent(), CFDictionarySetValue(v21, @"VideoIsHardwareAccelerated", v14), v22 = CFDictionaryGetValue(v19, v15), CFNumberGetValue(v22, kCFNumberIntType, &valuePtr), CFDictionarySetValue(v21, @"MaxLevel", v22), (v23 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0])) == 0))
                {
                  v30 = FigSignalErrorAtGM();
                  v4 = v35;
                  Mutable = v36;
                  v6 = v34;
                  v31 = v33;
                  v12 = v37;
                  goto LABEL_25;
                }

                v24 = v23;
                if (!HIDWORD(valuePtr))
                {
                  break;
                }

                if (HIDWORD(valuePtr) == 2)
                {
                  CFArrayAppendValue(v23, @"10");
                  v25 = @"12";
LABEL_18:
                  CFArrayAppendValue(v24, v25);
                  CFDictionarySetValue(v21, @"ColorDepth", v24);
                }

                CFRelease(v24);
                CFRelease(v21);
                if (++v13 >= CFArrayGetCount(v11))
                {
                  goto LABEL_20;
                }
              }

              v25 = @"08";
              goto LABEL_18;
            }

LABEL_20:
            v12 = v37;
            CFDictionarySetValue(v37, @"SupportedProfiles", theArray);
            CFDictionarySetValue(v37, @"PerProfileConstraints", v39);
            v26 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
            if (v26)
            {
              v27 = v26;
              for (i = 0; i != 14; ++i)
              {
                v29 = CFStringCreateWithFormat(v2, 0, @"%d", dword_196E76598[i]);
                CFArrayAppendValue(v27, v29);
                CFRelease(v29);
              }

              CFDictionarySetValue(v37, @"SupportedLevels", v27);
              CFRelease(v27);
              v30 = 0;
              v4 = v35;
              Mutable = v36;
              v6 = v34;
            }

            else
            {
              fpSupport_SetupRuntimeMediaValidatorPlist_cold_1(&valuePtr + 1);
              v30 = HIDWORD(valuePtr);
              v4 = v35;
              Mutable = v36;
              v6 = v34;
            }

            v31 = v33;
LABEL_25:
            CFRelease(v39);
            CFRelease(v31);
            goto LABEL_26;
          }

          v32 = 2166;
        }

        else
        {
          v32 = 2163;
        }

        fpSupport_SetupRuntimeMediaValidatorPlist_cold_2(v32, v9, &valuePtr + 1);
        v30 = HIDWORD(valuePtr);
LABEL_26:
        CFRelease(theArray);
        if (!v12 || !v30)
        {
          if (!v12)
          {
            goto LABEL_32;
          }

          CFDictionarySetValue(v4, @"vp09", v12);
          CFArrayAppendValue(v6, @"vp09");
        }

        v9 = v12;
        goto LABEL_31;
      }

      fpSupport_SetupRuntimeMediaValidatorPlist_cold_3();
    }

LABEL_31:
    CFRelease(v9);
    goto LABEL_32;
  }

  fpSupport_SetupRuntimeMediaValidatorPlist_cold_5();
LABEL_41:
  CFRelease(v4);
LABEL_42:
  if (FigCFDictionaryGetCount() <= 0)
  {
LABEL_48:
    CFRelease(Mutable);
    goto LABEL_49;
  }

LABEL_43:
  CFDictionarySetValue(Mutable, @"ValidationType", @"IgnoreUnrecognized");
LABEL_50:
  sFigRuntimeMediaValidatorPList = Mutable;
}

uint64_t FPSupport_CreateCASlot(uint64_t a1, unsigned int *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FPSupport_CreateCASlot_cold_2(v13);
    return v13[0];
  }

  if (!a2)
  {
    FPSupport_CreateCASlot_cold_1(v13);
    return v13[0];
  }

  v4 = objc_autoreleasePoolPush();
  Context = fpSupport_getContext();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  if (*a2)
  {
    goto LABEL_7;
  }

  v6 = [Context createSlot];
  *a2 = v6;
  if (v6)
  {
    goto LABEL_7;
  }

  if ([Context valid])
  {
    if (!*a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Context = fpSupport_getContext();
    v10 = [Context createSlot];
    *a2 = v10;
    if (!v10)
    {
LABEL_16:
      v7 = FigSignalErrorAtGM();
      goto LABEL_8;
    }
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  if (dword_1ED4CBD70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [Context setObject:a1 forSlot:{*a2, v11, v12}];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] synchronize];
  objc_autoreleasePoolPop(v4);
  return v7;
}

void FPSupport_DeleteCASlotsInArray(const __CFArray *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    Count = CFArrayGetCount(a1);
  }

  else
  {
    Count = 0;
  }

  Context = fpSupport_getContext();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        [Context deleteSlot:?];
      }
    }
  }

  [MEMORY[0x1E6979518] commit];
  objc_autoreleasePoolPop(v2);
}

const void *FPSupport_CopyCAContext()
{
  v0 = objc_autoreleasePoolPush();
  Context = fpSupport_getContext();
  v2 = Context;
  if (Context)
  {
    CFRetain(Context);
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t FPSupport_CreateLayerSynchronizerConfiguration(const __CFAllocator *a1, int a2, CFArrayRef theArray, const __CFArray *a4, const __CFArray *a5, CFTypeRef *a6)
{
  cf = 0;
  if (theArray)
  {
    v11 = CFArrayGetCount(theArray) > 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
LABEL_3:
      Count = CFArrayGetCount(a4);
      if (a5)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  Count = 0;
  if (a5)
  {
LABEL_4:
    v13 = CFArrayGetCount(a5) > 0;
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_25:
    FPSupport_CreateLayerSynchronizerConfiguration_cold_1(&v24);
    v21 = v24;
    goto LABEL_20;
  }

LABEL_24:
  v13 = 0;
  if (!a6)
  {
    goto LABEL_25;
  }

LABEL_5:
  v14 = Count > 0 || v11;
  if (((v14 | v13) & 1) == 0)
  {
    v21 = 0;
    *a6 = 0;
    goto LABEL_20;
  }

  v15 = FigLayerSynchronizerConfigurationCreate(a1, &cf);
  if (v15)
  {
    goto LABEL_32;
  }

  if (!a2)
  {
    goto LABEL_28;
  }

  if (FigUseVideoReceiverForCALayer())
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
        v18 = cf;
        v19 = *(CMBaseObjectGetVTable() + 24);
        if (v19)
        {
          v20 = *(v19 + 8);
          if (v20)
          {
            v20(ValueAtIndex, v18);
          }
        }
      }
    }

LABEL_28:
    if (!v13 || (v15 = FigLayerSynchronizerConfigurationAddLayersNotSubjectToImageQueueTiming(cf), !v15))
    {
      v21 = 0;
      *a6 = cf;
      return v21;
    }

    goto LABEL_32;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  v15 = FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming(cf);
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_32:
  v21 = v15;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

uint64_t FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(CFDictionaryRef theDict, int a2, CFDictionaryRef *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0;
  valuePtr = 0;
  *a3 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    if (MutableCopy)
    {
      v7 = MutableCopy;
      FigGetAlignmentForIOSurfaceOutput();
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6966020]);
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
        }
      }

      v11 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6966140]);
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v12, kCFNumberIntType, &v30);
        }
      }

      if (valuePtr >= 1)
      {
        if (valuePtr >= 0)
        {
          v14 = HIDWORD(valuePtr);
        }

        else
        {
          v14 = -HIDWORD(valuePtr);
        }

        if (v14 <= valuePtr)
        {
          v15 = valuePtr;
        }

        else
        {
          v15 = v14;
        }

        if (v14 < 1)
        {
          v17 = v15;
        }

        else
        {
          if (v14 >= valuePtr)
          {
            v16 = valuePtr;
          }

          else
          {
            v16 = v14;
          }

          do
          {
            v17 = v16;
            v16 = v15 % v16;
            v15 = v17;
          }

          while (v16);
        }

        HIDWORD(valuePtr) = (SHIDWORD(valuePtr) * valuePtr) / v17;
      }

      if (v30 >= 1)
      {
        if (v30 >= 0)
        {
          v24 = HIDWORD(v30);
        }

        else
        {
          v24 = -HIDWORD(v30);
        }

        if (v24 <= v30)
        {
          v25 = v30;
        }

        else
        {
          v25 = v24;
        }

        if (v24 < 1)
        {
          v27 = v25;
        }

        else
        {
          if (v24 >= v30)
          {
            v26 = v30;
          }

          else
          {
            v26 = v24;
          }

          do
          {
            v27 = v26;
            v26 = v25 % v26;
            v25 = v27;
          }

          while (v26);
        }

        HIDWORD(v30) = (SHIDWORD(v30) * v30) / v27;
      }

      PixelBufferAttributesWithIOSurfaceSupport = FigCFDictionarySetInt32();
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        PixelBufferAttributesWithIOSurfaceSupport = FigCFDictionarySetInt32();
        if (!PixelBufferAttributesWithIOSurfaceSupport)
        {
          CFDictionarySetValue(v7, *MEMORY[0x1E69660F0], *MEMORY[0x1E695E4D0]);
          PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
        }
      }

      DestinationPixelBufferAttributes = PixelBufferAttributesWithIOSurfaceSupport;
      CFRelease(v7);
    }

    else
    {
      FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport_cold_1(v33);
      return *v33;
    }
  }

  else
  {
    *v33 = *"ARGB";
    v32 = 0;
    FigGetAlignmentForIOSurfaceOutput();
    v18 = getenv("figvideooutputformat");
    if (v18 && (v19 = v18, strlen(v18) == 4))
    {
      *v33 = bswap32(*v19);
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    DestinationPixelBufferAttributes = FPSupport_CreateDestinationPixelBufferAttributes(0, 0, v33, v20, 0, 1, SHIDWORD(v32), v32, a2 != 0, a3);
    v22 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *a3);
    if (v22)
    {
      v23 = v22;
      CFDictionarySetValue(v22, *MEMORY[0x1E69660D0], *MEMORY[0x1E695E4D0]);
      if (*a3)
      {
        CFRelease(*a3);
      }

      *a3 = v23;
    }

    else
    {
      return FigSignalErrorAtGM();
    }
  }

  return DestinationPixelBufferAttributes;
}

uint64_t FPSupport_GetFirstEnabledTrackIDForMediaType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v13 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v6)
  {
    v7 = 0;
    while (!v6(a1, v7, a2, &cf, &v13))
    {
      isTrackEnabled = fpSupport_isTrackEnabled(cf);
      v9 = cf;
      if (isTrackEnabled)
      {
        if (!cf)
        {
          return 4294954453;
        }

        CFRetain(cf);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v12)
        {
          v12(v9, a3, 0);
        }

        CFRelease(v9);
        v10 = 0;
        goto LABEL_9;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v7;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v6)
      {
        break;
      }
    }
  }

  v10 = 4294954453;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void fpSupport_pickPreferredVideoTrack(const void *a1, const void **a2, int *a3, _BYTE *a4, char a5)
{
  desc = 0;
  fpSupport_copyFormatDescription(a1, &desc);
  v10 = desc;
  if (desc)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
    v12 = MediaSubType;
    if (fpSupport_isVideoCodecTypeSupported(MediaSubType, a5) || CVPixelFormatDescriptionGetDescriptionWithPixelFormatType())
    {
      v13 = *a2;
      if (v12 == 1635148593 && (Extension = CMFormatDescriptionGetExtension(v10, *MEMORY[0x1E69600A0])) != 0 && (v15 = Extension, TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v15)) && (Value = CFDictionaryGetValue(v15, @"avcC")) != 0 && ((ValueAtIndex = Value, v19 = CFArrayGetTypeID(), v19 != CFGetTypeID(ValueAtIndex)) || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0) && (v20 = CFDataGetTypeID(), v20 == CFGetTypeID(ValueAtIndex)) && (BytePtr = CFDataGetBytePtr(ValueAtIndex), CFDataGetLength(ValueAtIndex) >= 7) && *BytePtr == 1)
      {
        v22 = BytePtr[1];
      }

      else
      {
        v22 = 0;
      }

      v23 = *a3;
      v26 = (v12 == 1785750887 || v23 != 1785750887) && v13 != 0;
      if (v12 == 1635148593 && v23 == 1635148593)
      {
        v28 = *a4 != 77 || v22 == 77;
        v26 &= v28;
      }

      if ((v26 & 1) == 0)
      {
        v29 = *a2;
        *a2 = a1;
        if (a1)
        {
          CFRetain(a1);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        *a3 = v12;
        *a4 = v22;
      }
    }

    CFRelease(v10);
  }
}

uint64_t FPSupport_GetClosestCommonRefreshIntervalForRate(uint64_t a1, double a2)
{
  v2 = MEMORY[0x1E6960C70];
  v3 = *MEMORY[0x1E6960C70];
  *a1 = *MEMORY[0x1E6960C70];
  v4 = *(v2 + 16);
  *(a1 + 16) = v4;
  if (a2 == 0.0)
  {
    FPSupport_GetClosestCommonRefreshIntervalForRate_cold_1(&time1);
    return LODWORD(time1.value);
  }

  else
  {
    v9 = v3;
    memset(&v17, 0, sizeof(v17));
    CMTimeMake(&v17, vcvtad_u64_f64(1000000000.0 / a2), 1000000000);
    v6 = 0;
    *&v16.value = v9;
    v16.epoch = v4;
    v15 = **&MEMORY[0x1E6960C88];
    do
    {
      memset(&time1, 0, sizeof(time1));
      v7 = FPSupport_GetClosestCommonRefreshIntervalForRate_commonFrequencies[v6];
      CMTimeMake(&time1, 1, v7);
      memset(&time2, 0, sizeof(time2));
      lhs = v17;
      rhs = time1;
      CMTimeSubtract(&time, &lhs, &rhs);
      CMTimeAbsoluteValue(&time2, &time);
      time = time2;
      lhs = v15;
      if (CMTimeCompare(&time, &lhs) < 0)
      {
        v16 = time1;
        v15 = time2;
      }

      CMTimeMake(&time, 1001, 1000 * v7);
      time1 = time;
      time = v17;
      rhs = time1;
      CMTimeSubtract(&lhs, &time, &rhs);
      CMTimeAbsoluteValue(&time, &lhs);
      time2 = time;
      lhs = v15;
      if (CMTimeCompare(&time, &lhs) < 0)
      {
        v16 = time1;
        v15 = time2;
      }

      v6 += 2;
    }

    while (v6 != 22);
    time2 = v15;
    CMTimeMultiply(&time1, &time2, 100);
    time2 = v16;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      *&v16.value = v9;
      v16.epoch = v4;
    }

    result = 0;
    *a1 = v16;
  }

  return result;
}

uint64_t fpSupport_addTrackInfoToArray(uint64_t a1, int a2, int a3, __CFArray *a4)
{
  valuePtr = a2;
  cf = 0;
  value = 0;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v9, @"TrackID", v10);
      CFRelease(v11);
    }

    FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(FigBaseObject, @"TrackLanguageCode", v7, &value);
      if (value)
      {
        CFDictionarySetValue(v9, @"Language", value);
        CFRelease(value);
        value = 0;
      }
    }

    v14 = FigTrackReaderGetFigBaseObject(a1);
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, @"ExtendedLanguageTagString", v7, &value);
    }

    if (value)
    {
      CFDictionarySetValue(v9, @"ExtendedLanguage", value);
      CFRelease(value);
      value = 0;
    }

    if (a3 == 1936684398)
    {
      desc = 0;
      fpSupport_copyFormatDescription(a1, &desc);
      v16 = desc;
      if (desc)
      {
        *bytes = bswap32(CMFormatDescriptionGetMediaSubType(desc));
        v17 = CFStringCreateWithBytes(v7, bytes, 4, 0, 0);
        CFDictionarySetValue(v9, @"AudioFormat", v17);
        if (v17)
        {
          CFRelease(v17);
        }

        CFRelease(v16);
      }
    }

    v18 = FigTrackReaderGetFigBaseObject(a1);
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v18, @"TrackExcludeFromAutoSelection", v7, &cf);
      if (cf)
      {
        CFDictionarySetValue(v9, @"ExcludeFromAutoSelection", cf);
        CFRelease(cf);
      }
    }

    CFArrayAppendValue(a4, v9);
    CFRelease(v9);
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_resetClosedCaptionLayer(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 8);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*(a1 + 8) i)];
      }

      [MEMORY[0x1E6979518] commit];
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t FPSupport_updateClosedCaptionLayerBounds(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, CFIndex a7, _OWORD *a8, __int128 *a9)
{
  rect.origin.x = a2;
  rect.origin.y = a3;
  rect.size.width = a4;
  rect.size.height = a5;
  if (a7 < 0)
  {
    FPSupport_updateClosedCaptionLayerBounds_cold_3(cf);
    return LODWORD(cf[0]);
  }

  v17 = *MEMORY[0x1E695F050];
  v18 = *(MEMORY[0x1E695F050] + 8);
  v19 = *(MEMORY[0x1E695F050] + 16);
  v20 = *(MEMORY[0x1E695F050] + 24);
  v41.origin.x = *MEMORY[0x1E695F050];
  v41.origin.y = v18;
  v41.size.width = v19;
  v41.size.height = v20;
  if (CGRectEqualToRect(*&a2, v41) || (v21 = 0, a4 > 0.0) && a5 > 0.0)
  {
    if (a8)
    {
      v22 = a8[1];
      *(a1 + 64) = *a8;
      *(a1 + 80) = v22;
    }

    if (a9)
    {
      v23 = *a9;
      v24 = a9[1];
      v25 = a9[3];
      *(a1 + 128) = a9[2];
      *(a1 + 144) = v25;
      *(a1 + 96) = v23;
      *(a1 + 112) = v24;
    }

    FigSimpleMutexLock();
    if (*(a1 + 8))
    {
      v40.origin.x = a2;
      v40.origin.y = a3;
      v40.size.width = a4;
      v40.size.height = a5;
      v42.origin.x = v17;
      v42.origin.y = v18;
      v42.size.width = v19;
      v42.size.height = v20;
      if (CGRectEqualToRect(v40, v42))
      {
        cf[0] = 0;
        if (*(a1 + 40))
        {
          SInt32 = FigCFNumberCreateSInt32();
          if (SInt32)
          {
            v27 = SInt32;
            if (CFDictionaryGetValueIfPresent(*(a1 + 40), SInt32, cf))
            {
              TypeID = CFDictionaryGetTypeID();
              if (TypeID == CFGetTypeID(cf[0]) && !CGRectMakeWithDictionaryRepresentation(cf[0], &rect))
              {
                FPSupport_updateClosedCaptionLayerBounds_cold_1();
              }
            }

            CFRelease(v27);
          }

          else
          {
            FPSupport_updateClosedCaptionLayerBounds_cold_2();
          }
        }
      }

      else
      {
        storeClosedCaptionLayerBoundsInCacheForLayerIndex(a1, a2, a3, a4, a5);
      }

      Count = *(a1 + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= a7)
      {
        v21 = 4294954436;
        goto LABEL_28;
      }

      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:{1, cf[0]}];
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), a7);
      MidX = CGRectGetMidX(rect);
      [ValueAtIndex setPosition:{MidX, CGRectGetMidY(rect)}];
      [ValueAtIndex setBounds:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
      [ValueAtIndex setVideoRelativeToViewport:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
      v32 = *(a1 + 112);
      *cf = *(a1 + 96);
      v36 = v32;
      v33 = *(a1 + 144);
      v37 = *(a1 + 128);
      v38 = v33;
      [ValueAtIndex setCaptionsAvoidanceMargins:cf];
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      storeClosedCaptionLayerBoundsInCacheForLayerIndex(a1, a2, a3, a4, a5);
    }

    v21 = 0;
LABEL_28:
    FigSimpleMutexUnlock();
  }

  return v21;
}

void storeClosedCaptionLayerBoundsInCacheForLayerIndex(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (*(a1 + 40) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 40) = Mutable) != 0))
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v12 = SInt32;
      v16.origin.x = a2;
      v16.origin.y = a3;
      v16.size.width = a4;
      v16.size.height = a5;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v16);
      if (DictionaryRepresentation)
      {
        v14 = DictionaryRepresentation;
        CFDictionarySetValue(*(a1 + 40), v12, DictionaryRepresentation);
        CFRelease(v12);

        CFRelease(v14);
      }

      else
      {
        storeClosedCaptionLayerBoundsInCacheForLayerIndex_cold_1(v12);
      }
    }

    else
    {
      storeClosedCaptionLayerBoundsInCacheForLayerIndex_cold_2();
    }
  }

  else
  {
    storeClosedCaptionLayerBoundsInCacheForLayerIndex_cold_3();
  }
}

uint64_t FPSupport_setClosedCaptionLayerOptions(uint64_t a1, uint64_t a2, CFIndex a3, const void *a4, const void *a5)
{
  if (a3 < 0)
  {
    FPSupport_setClosedCaptionLayerOptions_cold_2(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  v9 = *(a1 + 8);
  if (!v9)
  {
    *(a1 + 56) = 1;
LABEL_8:
    Mutable = *(a1 + 48);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 48) = Mutable) != 0))
    {
      CFDictionarySetValue(Mutable, a4, a5);
      v11 = 0;
    }

    else
    {
      FPSupport_setClosedCaptionLayerOptions_cold_1(&v13);
      v11 = v13;
    }

    goto LABEL_12;
  }

  if (CFArrayGetCount(v9) > a3)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [CFArrayGetValueAtIndex(*(a1 + 8) a3)];
    [MEMORY[0x1E6979518] commit];
    goto LABEL_8;
  }

  v11 = 4294954436;
LABEL_12:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t FPSupport_setClosedCaptionLayerSeparated(uint64_t a1, uint64_t a2, CFIndex a3, int a4)
{
  if (a3 < 0)
  {
    FPSupport_setClosedCaptionLayerSeparated_cold_2(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  v7 = *(a1 + 8);
  if (!v7)
  {
    *(a1 + 56) = 1;
LABEL_8:
    Mutable = *(a1 + 48);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 48) = Mutable) != 0))
    {
      v9 = MEMORY[0x1E695E4D0];
      if (!a4)
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"setSeparated", *v9);
      v10 = 0;
    }

    else
    {
      FPSupport_setClosedCaptionLayerSeparated_cold_1(&v12);
      v10 = v12;
    }

    goto LABEL_14;
  }

  if (CFArrayGetCount(v7) > a3)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [CFArrayGetValueAtIndex(*(a1 + 8) a3)];
    [MEMORY[0x1E6979518] commit];
    goto LABEL_8;
  }

  v10 = 4294954436;
LABEL_14:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FPSupport_updateClosedCaptionLayer(uint64_t a1, const __CFArray *a2)
{
  v4 = objc_autoreleasePoolPush();
  FigSimpleMutexLock();
  if (!*(a1 + 2) || (!a2 ? (Count = 0) : (Count = CFArrayGetCount(a2)), *(a1 + 24) <= 0 ? (v6 = Count) : (v6 = *(a1 + 24)), v6 < 1))
  {
    cleanupClosedCaptionLayer(a1);
LABEL_63:
    v22 = 0;
    goto LABEL_64;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v7 = CFArrayGetCount(v7);
  }

  if (v7 == v6)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), i);
      [ValueAtIndex resetCaptions];
      [ValueAtIndex removeFromSuperlayer];
    }

    [MEMORY[0x1E6979518] commit];
LABEL_24:
    v12 = *(a1 + 24);
    if (v12 < 1)
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      if (v6 >= 1)
      {
        v15 = 0;
        v16 = *MEMORY[0x1E695F050];
        v17 = *(MEMORY[0x1E695F050] + 8);
        v18 = *(MEMORY[0x1E695F050] + 16);
        v19 = *(MEMORY[0x1E695F050] + 24);
        do
        {
          v20 = CFArrayGetValueAtIndex(*(a1 + 8), v15);
          [CFArrayGetValueAtIndex(a2 v15)];
          FPSupport_updateClosedCaptionLayerBounds(a1, v16, v17, v18, v19, v21, v15++, 0, 0);
        }

        while (v6 != v15);
      }

      [MEMORY[0x1E6979518] commit];
      FPSupport_cleanupClosedCaptionHostLayerArraySupport(a1);
    }

    else
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = CFArrayGetCount(v13);
        v12 = *(a1 + 24);
      }

      if (v13 <= v12)
      {
        v23 = *(a1 + 32);
        if (v23)
        {
          v23 = CFArrayGetCount(v23);
          v24 = *(a1 + 24);
        }

        else
        {
          v24 = v12;
        }

        if (v23 < v24)
        {
          Mutable = *(a1 + 32);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v24, MEMORY[0x1E695E9C0]);
            *(a1 + 32) = Mutable;
          }

          v26 = *MEMORY[0x1E69796A0];
          v27 = *MEMORY[0x1E695E4D0];
          v28 = *MEMORY[0x1E69796C0];
          if (Mutable)
          {
LABEL_52:
            Mutable = CFArrayGetCount(Mutable);
          }

          while (Mutable < *(a1 + 24))
          {
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"FigPlayer_CC_CAContext", v26, v27, v28, 0}];
            v30 = [MEMORY[0x1E6979550] contextWithOptions:v29];
            if (!v30)
            {
              goto LABEL_42;
            }

            CFArrayAppendValue(*(a1 + 32), v30);
            Mutable = *(a1 + 32);
            if (Mutable)
            {
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setDisableActions:1];
        while (1)
        {
          v14 = *(a1 + 32);
          if (v14)
          {
            v14 = CFArrayGetCount(v14);
          }

          if (v14 <= *(a1 + 24))
          {
            break;
          }

          CFArrayRemoveValueAtIndex(*(a1 + 32), 0);
        }

        [MEMORY[0x1E6979518] commit];
      }

      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      if (*(a1 + 24) >= 1)
      {
        v31 = 0;
        v32 = *MEMORY[0x1E695F050];
        v33 = *(MEMORY[0x1E695F050] + 8);
        v34 = *(MEMORY[0x1E695F050] + 16);
        v35 = *(MEMORY[0x1E695F050] + 24);
        do
        {
          v36 = CFArrayGetValueAtIndex(*(a1 + 8), v31);
          [CFArrayGetValueAtIndex(*(a1 + 32) v31)];
          FPSupport_updateClosedCaptionLayerBounds(a1, v32, v33, v34, v35, v37, v31++, 0, 0);
        }

        while (v31 < *(a1 + 24));
      }

      [MEMORY[0x1E6979518] commit];
    }

    goto LABEL_63;
  }

  cleanupClosedCaptionLayer(a1);
  *(a1 + 8) = CFArrayCreateMutable(*MEMORY[0x1E695E480], v6, MEMORY[0x1E695E9C0]);
  while (1)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    v10 = +[FigCaptionLayer layer];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    CFArrayAppendValue(*(a1 + 8), v10);
    [v11 setFontName:"Courier New"];
    [MEMORY[0x1E6979518] commit];
    if (!--v6)
    {
      v6 = CFArrayGetCount(*(a1 + 8));
      goto LABEL_24;
    }
  }

  [MEMORY[0x1E6979518] commit];
LABEL_42:
  v22 = FigSignalErrorAtGM();
  if (v22)
  {
    cleanupClosedCaptionLayer(a1);
  }

LABEL_64:
  FigSimpleMutexUnlock();
  objc_autoreleasePoolPop(v4);
  return v22;
}

uint64_t cleanupClosedCaptionLayer(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 8);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      [CFArrayGetValueAtIndex(*(a1 + 8) i)];
    }
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 8) = 0;
  }

  [MEMORY[0x1E6979518] commit];
  FPSupport_cleanupClosedCaptionHostLayerArraySupport(a1);
  v6 = *(a1 + 40);
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
  }

  return FigSimpleMutexUnlock();
}

void FPSupport_cleanupClosedCaptionHostLayerArraySupport(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  [MEMORY[0x1E6979518] commit];

  objc_autoreleasePoolPop(v2);
}

uint64_t FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers(const void *a1, const __CFArray *a2, CFArrayRef theArray, const __CFArray *a4, uint64_t a5)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a4)
    {
LABEL_3:
      v10 = CFArrayGetCount(a4);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  if (v10 == Count)
  {
    if (a2)
    {
      v11 = CFArrayGetCount(a2);
    }

    else
    {
      v11 = 0;
    }

    if (v11 == Count)
    {
      v12 = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
      if (v12)
      {
        v13 = v12;
        *v12 = FigCFArrayCreateCopy();
        *(v13 + 8) = FigCFArrayCreateCopy();
        *(v13 + 16) = FigCFArrayCreateCopy();

        return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a5, v13, fps_disposeCallUpdateHostLayersInLayers, fps_copyDescriptionForCallUpdateHostLayersInLayers, fps_callUpdateHostLayersInLayers);
      }

      else
      {
        FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_3(&v17);
        return v17;
      }
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_1(&v15);
    return v15;
  }
}

void fps_disposeCallUpdateHostLayersInLayers(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
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

__CFString *fps_copyDescriptionForCallUpdateHostLayersInLayers()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = FigCFCopyCompactDescription();
  v2 = FigCFCopyCompactDescription();
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Update Host Layer Array %@ with ContextID Array %@ and insert in Client Layer Array %@", v2, v1, v3);
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_callUpdateHostLayersInLayers(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 8);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        FigCFArrayGetInt32AtIndex();
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), i);
        [ValueAtIndex setContextId:0];
        [CFArrayGetValueAtIndex(*(a1 + 16) i)];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
  if (v5)
  {
    v6 = v5;
    *v5 = FigCFArrayCreateCopy();

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a3, v6, fps_disposeCallRemoveEachLayerInArrayFromItsSuperLayer, fps_copyDescriptionForCallRemoveEachLayerInArrayFromItsSuperLayer, fps_callRemoveEachLayerInArrayFromItsSuperLayer);
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer_cold_1(&v8);
    return v8;
  }
}

void fps_disposeCallRemoveEachLayerInArrayFromItsSuperLayer(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForCallRemoveEachLayerInArrayFromItsSuperLayer()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Remove Layers From Their Superlayers: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t fps_callRemoveEachLayerInArrayFromItsSuperLayer(CFArrayRef *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*a1)
  {
    Count = CFArrayGetCount(*a1);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*a1 i)];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t FPSupport_createRenderPipelineOptions(const __CFAllocator *a1, const void *a2, int a3, uint64_t a4, uint64_t a5, const void *a6, int a7, int a8, char a9, char a10, const void *a11, char a12, char a13, char a14, void *value, int a16, char a17, void *a18, char a19, uint64_t a20, char a21, void *a22, __CFDictionary **a23)
{
  Mutable = CFDictionaryCreateMutable(a1, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = Mutable;
  v32 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    goto LABEL_15;
  }

  CFDictionarySetValue(Mutable, @"FormatDescription", a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a2);
  if (MediaSubType <= 1634743415)
  {
    if (MediaSubType != 1634742376 && MediaSubType != 1634742888)
    {
      v34 = 13416;
LABEL_10:
      if (MediaSubType != (v34 | 0x61700000))
      {
        goto LABEL_15;
      }
    }
  }

  else if (((MediaSubType - 1634755432) > 0xB || ((1 << (MediaSubType - 104)) & 0x8C1) == 0) && ((MediaSubType - 1634759272) > 6 || ((1 << (MediaSubType - 104)) & 0x51) == 0))
  {
    v34 = 13432;
    goto LABEL_10;
  }

  if (FigVideoFormatDescriptionContainsAlphaChannel())
  {
    CFDictionarySetValue(v31, @"InhibitCompressedBufferUse", *v32);
  }

LABEL_15:
  if ((*(a4 + 12) & 0x1D) == 1)
  {
    FigCFDictionarySetCMTime();
  }

  if ((*(a5 + 12) & 0x1D) == 1)
  {
    FigCFDictionarySetCMTime();
  }

  if (a3)
  {
    FigCFDictionarySetInt32();
  }

  if (a7)
  {
    CFDictionarySetValue(v31, @"AllowAudibleContent", *v32);
  }

  if (a8)
  {
    CFDictionarySetValue(v31, @"AllowAMRDecode", *v32);
  }

  if (value)
  {
    CFDictionarySetValue(v31, @"AudioRenderingPreferences", value);
  }

  v35 = *v32;
  if (a12)
  {
    CFDictionarySetValue(v31, @"AllowAtmosDecode", *v32);
  }

  if (a13)
  {
    CFDictionarySetValue(v31, @"EnableSpatialization", v35);
  }

  if (a14)
  {
    CFDictionarySetValue(v31, @"AudioOnly", v35);
  }

  v36 = *MEMORY[0x1E695E4C0];
  if (a9)
  {
    v37 = v35;
  }

  else
  {
    v37 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v31, @"HardwarePassthrough", v37);
  if (a10)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  CFDictionarySetValue(v31, @"DisallowMultiplePlayResources", v38);
  if (a17)
  {
    v39 = v35;
  }

  else
  {
    v39 = v36;
  }

  CFDictionarySetValue(v31, @"AutomaticallyRestartsAfterConfigurationChange", v39);
  if (a6)
  {
    CFDictionarySetValue(v31, @"AudioDeviceUID", a6);
  }

  if (a11)
  {
    CFDictionarySetValue(v31, @"SharePixelBufferPool", a11);
  }

  if (a18)
  {
    CFDictionarySetValue(v31, @"AudioSession", a18);
  }

  if (a22)
  {
    CFDictionarySetValue(v31, @"LoggingID", a22);
  }

  if (a16)
  {
    FigCFDictionarySetInt32();
  }

  if (a19)
  {
    FigCFDictionarySetBoolean();
  }

  if (a20)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetBoolean();
  }

  *a23 = v31;
  if (v31)
  {
    return 0;
  }

  else
  {
    return FigSignalErrorAtGM();
  }
}

double FPSupport_getVideoDecodeWaterLevels(CMTime *a1, CMTime *a2, int a3)
{
  v9 = **&MEMORY[0x1E6960C70];
  v8 = v9;
  if (a3)
  {
    CMTimeMake(&v8, 3, 30);
    v5 = 5;
    v6 = 30;
  }

  else
  {
    CMTimeMake(&v8, 5, 300);
    v5 = 25;
    v6 = 300;
  }

  CMTimeMake(&v9, v5, v6);
  CelestialCustomizePlaybackImageQueueLevels();
  *a1 = v8;
  result = *&v9.value;
  *a2 = v9;
  return result;
}

double FPSupport_getDataQueueWaterLevels(CMTime *a1, CMTime *a2)
{
  memset(&v6, 0, sizeof(v6));
  CMTimeMake(&v6, 100, 1000);
  memset(&v5, 0, sizeof(v5));
  CMTimeMake(&v5, 200, 1000);
  if (a1)
  {
    result = *&v6.value;
    *a1 = v6;
  }

  if (a2)
  {
    result = *&v5.value;
    *a2 = v5;
  }

  return result;
}

uint64_t FPSupport_initializeClosedCaptions(uint64_t a1)
{
  result = FigReentrantMutexCreate();
  *(a1 + 16) = result;
  return result;
}

void FPSupport_releaseClosedCaptions(void *a1)
{
  cleanupClosedCaptionLayer(a1);
  if (a1[2])
  {
    FigSimpleMutexDestroy();
    a1[2] = 0;
  }

  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }
}

id FPSupport_CopyDictionaryDescriptionAsCFString(id result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_autoreleasePoolPush();
    v3 = [v1 description];
    objc_autoreleasePoolPop(v2);
    return v3;
  }

  return result;
}

uint64_t FPSupport_GetMaxDisplaySizeFromImageQueues(const __CFArray *a1, double *a2)
{
  v3 = MEMORY[0x1E695F060];
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    dict = 0;
    if (a2)
    {
      v8 = Count;
      if (Count >= 1)
      {
        v9 = 0;
        v10 = *MEMORY[0x1E695E480];
        v18 = *v3;
        while (1)
        {
          size = v18;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
          FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v14 = v13(FigBaseObject, @"FigImageQueueProperty_DisplaySize", v10, &dict);
            v15 = dict;
            if (v14)
            {
              v16 = 1;
            }

            else
            {
              v16 = dict == 0;
            }

            if (v16)
            {
              goto LABEL_14;
            }

            if (CGSizeMakeWithDictionaryRepresentation(dict, &size) && size.width * size.height > height * width)
            {
              height = size.height;
              width = size.width;
            }
          }

          v15 = dict;
LABEL_14:
          if (v15)
          {
            CFRelease(v15);
            dict = 0;
          }

          if (v8 == ++v9)
          {
            goto LABEL_19;
          }
        }
      }

      goto LABEL_19;
    }
  }

  else if (a2)
  {
LABEL_19:
    result = 0;
    *a2 = width;
    a2[1] = height;
    return result;
  }

  FPSupport_GetMaxDisplaySizeFromImageQueues_cold_1(&size);
  return LODWORD(size.width);
}

uint64_t FPSupport_CreateSetRateOptions(const __CFAllocator *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (a3)
  {
    if (Mutable)
    {
      FigCFDictionarySetInt32();
      v6 = 0;
      *a3 = v5;
    }

    else
    {
      FPSupport_CreateSetRateOptions_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    v6 = FigSignalErrorAtGM();
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v6;
}

uint64_t FPSupport_ConfigSnapRateForLQZL(float *a1, float *a2, float a3)
{
  v3 = 0;
  v4 = fabsf(a3);
  v5 = 1.0;
  if (a3 != 0.0)
  {
    v5 = v4;
    v6 = v4;
    if (v4 <= 2.1)
    {
      v5 = 2.0;
      if (v4 <= 1.75)
      {
        v5 = 1.5;
        if (v4 <= 1.375)
        {
          v5 = 1.25;
          if (v4 <= 1.125)
          {
            v5 = 1.0;
            if (v6 <= 0.9)
            {
              if (v6 <= 0.733)
              {
                v5 = 0.66667;
                if (v6 <= 0.583)
                {
                  v5 = 0.5;
                }
              }

              else
              {
                v5 = 0.8;
              }
            }
          }
        }
      }

      if (a3 < 0.0)
      {
        a3 = -v5;
      }

      else
      {
        a3 = v5;
      }

      v3 = 1;
    }
  }

  if (a1)
  {
    *a1 = v5;
  }

  if (a2)
  {
    *a2 = a3;
  }

  return v3;
}

const char *FPSupport_GetModeString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E7482630[a1 - 1];
  }
}

void FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate(const __CFArray *a1, _DWORD *a2, double *a3, double *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a1)
  {
    v6 = CFArrayGetCount(a1) > 0;
  }

  else
  {
    v6 = 0;
  }

  context = objc_autoreleasePoolPush();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [MEMORY[0x1E6979328] displays];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v31;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if (v6)
        {
          Count = CFArrayGetCount(a1);
          v18 = [v16 name];
          v36.location = 0;
          v36.length = Count;
          if (!CFArrayContainsValue(a1, v36, v18))
          {
            continue;
          }
        }

        v19 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v16);
        VideoRangeForMode = FPSupport_GetVideoRangeForMode([v16 currentMode], v19);
        if (VideoRangeForMode <= v10)
        {
          if (VideoRangeForMode == v10)
          {
            v23 = [objc_msgSend(v16 "currentMode")];
            v24 = [objc_msgSend(v16 "currentMode")];
            [objc_msgSend(v16 "currentMode")];
            if (v14 >= v23)
            {
              if (v12 < v25 && v14 == v23)
              {
                v12 = v25;
              }
            }

            else
            {
              v13 = v24;
              v12 = v25;
              v14 = v23;
            }
          }
        }

        else
        {
          v21 = VideoRangeForMode;
          v14 = [objc_msgSend(v16 "currentMode")];
          v13 = [objc_msgSend(v16 "currentMode")];
          [objc_msgSend(v16 "currentMode")];
          v12 = v22;
          v10 = v21;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  objc_autoreleasePoolPop(context);
  if (a2)
  {
    *a2 = v10;
  }

  if (a3)
  {
    *a3 = v14;
    a3[1] = v13;
  }

  if (a4)
  {
    *a4 = v12;
  }
}

const __CFArray *FPSupport_CreateAllVideoRangesSupportedByDisplays()
{
  v32 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (Mutable)
  {
    context = objc_autoreleasePoolPush();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [MEMORY[0x1E6979328] displays];
    v2 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v2)
    {
      v3 = v2;
      v20 = *v27;
      do
      {
        v4 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v26 + 1) + 8 * v4);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v6 = [v5 availableModes];
          v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v23;
            do
            {
              v10 = 0;
              do
              {
                if (*v23 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v22 + 1) + 8 * v10);
                v12 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v5);
                valuePtr = FPSupport_GetVideoRangeForMode(v11, v12);
                v13 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
                if (v13)
                {
                  v14 = v13;
                  v33.length = CFArrayGetCount(Mutable);
                  v33.location = 0;
                  if (!CFArrayContainsValue(Mutable, v33, v14))
                  {
                    CFArrayAppendValue(Mutable, v14);
                  }

                  CFRelease(v14);
                }

                ++v10;
              }

              while (v8 != v10);
              v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v8);
          }

          ++v4;
        }

        while (v4 != v3);
        v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v3);
    }

    objc_autoreleasePoolPop(context);
    if (!CFArrayGetCount(Mutable))
    {
      valuePtr = 1;
      v15 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
      if (v15)
      {
        v16 = v15;
        v34.length = CFArrayGetCount(Mutable);
        v34.location = 0;
        if (!CFArrayContainsValue(Mutable, v34, v16))
        {
          CFArrayAppendValue(Mutable, v16);
        }

        CFRelease(v16);
      }
    }
  }

  return Mutable;
}

uint64_t fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(void *a1)
{
  v2 = FPSupport_CopyMainDisplayCAName();
  [a1 name];
  v3 = FigCFEqual();
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t FPSupport_GetVideoRangeForMode(void *a1, int a2)
{
  v4 = [a1 hdrMode];
  if ([v4 isEqualToString:*MEMORY[0x1E6979730]])
  {
    if (a2)
    {
      v5 = [a1 colorGamut];
      if ([v5 isEqual:*MEMORY[0x1E6979718]])
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6979710]])
  {
    v6 = 4;
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6979720]])
  {
    v6 = 3;
  }

  else
  {
    result = [v4 isEqualToString:*MEMORY[0x1E6979728]];
    if (!result)
    {
      return result;
    }

    v6 = 2;
  }

  if (FigIsHDRAllowedOnDevice())
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void FPSupport_GetDisplayInfoForCADisplay(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    if (a1)
    {
      v3 = objc_autoreleasePoolPush();
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v4 = [MEMORY[0x1E6979328] displays];
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            [v9 name];
            if (FigCFEqual())
            {
              v10 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v9);
              *a2 = FPSupport_GetVideoRangeForMode([v9 currentMode], v10);
              v11 = [objc_msgSend(v9 "currentMode")];
              v12 = [objc_msgSend(v9 "currentMode")];
              *(a2 + 8) = v11;
              *(a2 + 16) = v12;
              [objc_msgSend(v9 "currentMode")];
              *(a2 + 24) = v13;
              goto LABEL_13;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
      objc_autoreleasePoolPop(v3);
    }
  }
}

void FPSupport_GetBestDisplayInfoForDisplay(const void *a1, uint64_t a2, float a3)
{
  v86 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a2)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    if (a1)
    {
      v6 = CFGetTypeID(a1);
      if (v6 == CFStringGetTypeID())
      {
        v7 = objc_autoreleasePoolPush();
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v8 = [MEMORY[0x1E6979328] displays];
        v9 = [v8 countByEnumeratingWithState:&v66 objects:v82 count:16];
        if (!v9)
        {
          goto LABEL_72;
        }

        v10 = v9;
        v11 = *v67;
        while (1)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v67 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v66 + 1) + 8 * i);
            [v13 name];
            if (FigCFEqual())
            {
              if (a3 <= 60.0)
              {
                v14 = a3 > 30.0;
              }

              else
              {
                v14 = 2;
              }

              if (![v13 allowedHDRModes])
              {
                goto LABEL_70;
              }

              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              obj = [v13 allowedHDRModes];
              v15 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
              if (!v15)
              {
                goto LABEL_70;
              }

              v16 = v15;
              v54 = v7;
              v55 = a2;
              v17 = 0;
              v18 = *v79;
              v64 = *MEMORY[0x1E6979730];
              v59 = *MEMORY[0x1E6979710];
              v57 = *MEMORY[0x1E6979720];
              v56 = *MEMORY[0x1E6979728];
              v19 = 0.0;
              v20 = 0.0;
              v21 = 0.0;
              v62 = v13;
              v58 = *v79;
              do
              {
                v22 = 0;
                v60 = v16;
                do
                {
                  if (*v79 != v18)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v65 = v22;
                  v23 = *(*(&v78 + 1) + 8 * v22);
                  if ([v23 isEqualToString:{v64, v54}])
                  {
                    v24 = 1;
                  }

                  else if ([v23 isEqualToString:v59])
                  {
                    v24 = 4;
                  }

                  else if ([v23 isEqualToString:v57])
                  {
                    v24 = 3;
                  }

                  else if ([v23 isEqualToString:v56])
                  {
                    v24 = 2;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  if (v24 > v17)
                  {
                    v63 = v24;
                    v76 = 0u;
                    v77 = 0u;
                    v74 = 0u;
                    v75 = 0u;
                    v25 = [v13 availableModes];
                    v26 = [v25 countByEnumeratingWithState:&v74 objects:v84 count:16];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = *v75;
                      while (2)
                      {
                        for (j = 0; j != v27; ++j)
                        {
                          if (*v75 != v28)
                          {
                            objc_enumerationMutation(v25);
                          }

                          v30 = *(*(&v74 + 1) + 8 * j);
                          [v30 refreshRate];
                          v32 = v31;
                          v33 = [v23 isEqual:{objc_msgSend(v30, "hdrMode")}];
                          v34 = v14 == v32 > 30.0;
                          if (v32 > 60.0)
                          {
                            v34 = a3 > 60.0;
                          }

                          if (v33 && v34)
                          {
                            v35 = 0;
                            goto LABEL_45;
                          }
                        }

                        v27 = [v25 countByEnumeratingWithState:&v74 objects:v84 count:16];
                        if (v27)
                        {
                          continue;
                        }

                        break;
                      }

                      v35 = 1;
LABEL_45:
                      v13 = v62;
                    }

                    else
                    {
                      v35 = 1;
                    }

                    v72 = 0u;
                    v73 = 0u;
                    v70 = 0u;
                    v71 = 0u;
                    v36 = [v13 availableModes];
                    v37 = [v36 countByEnumeratingWithState:&v70 objects:v83 count:16];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = *v71;
                      v20 = 0.0;
                      v19 = 0.0;
                      v21 = 0.0;
                      while (1)
                      {
                        for (k = 0; k != v38; ++k)
                        {
                          if (*v71 != v39)
                          {
                            objc_enumerationMutation(v36);
                          }

                          v41 = *(*(&v70 + 1) + 8 * k);
                          [v41 refreshRate];
                          v43 = v42;
                          if ([v23 isEqual:{objc_msgSend(v41, "hdrMode")}])
                          {
                            v44 = a3 > 60.0;
                            v45 = v43;
                            if (v45 <= 60.0)
                            {
                              v44 = v14 == v45 > 30.0;
                            }

                            if (v35 | v44)
                            {
                              [v41 refreshRate];
                              if (v46 >= v21)
                              {
                                [v41 refreshRate];
                                if (v47 <= v21)
                                {
                                  v49 = [v41 width];
                                  if (v20 * v19 >= ([v41 height] * v49))
                                  {
                                    continue;
                                  }
                                }

                                else
                                {
                                  [v41 refreshRate];
                                  v21 = v48;
                                }

                                v20 = [v41 width];
                                v19 = [v41 height];
                              }
                            }
                          }
                        }

                        v38 = [v36 countByEnumeratingWithState:&v70 objects:v83 count:16];
                        if (!v38)
                        {
                          v17 = v63;
                          v13 = v62;
                          goto LABEL_65;
                        }
                      }
                    }

                    v19 = 0.0;
                    v20 = 0.0;
                    v21 = 0.0;
                    v17 = v63;
LABEL_65:
                    v18 = v58;
                    v16 = v60;
                  }

                  v22 = v65 + 1;
                }

                while (v65 + 1 != v16);
                v16 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
              }

              while (v16);
              v7 = v54;
              a2 = v55;
              if (v17)
              {
                *v55 = v17;
                *(v55 + 4) = 0;
                *(v55 + 8) = v20;
                *(v55 + 16) = v19;
              }

              else
              {
LABEL_70:
                v50 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v13);
                *a2 = FPSupport_GetVideoRangeForMode([v13 currentMode], v50);
                v51 = [objc_msgSend(v13 "currentMode")];
                v52 = [objc_msgSend(v13 "currentMode")];
                *(a2 + 8) = v51;
                *(a2 + 16) = v52;
                [objc_msgSend(v13 "currentMode")];
                v21 = v53;
              }

              *(a2 + 24) = v21;
              goto LABEL_72;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v66 objects:v82 count:16];
          if (!v10)
          {
LABEL_72:
            objc_autoreleasePoolPop(v7);
            return;
          }
        }
      }
    }
  }
}

uint64_t FPSupport_IsExternalDisplay(const void *a1)
{
  v1 = CFGetTypeID(a1);
  if (v1 != CFStringGetTypeID())
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x1E6979328] "TVOutDisplay")];
  v3 = FigCFEqual();
  objc_autoreleasePoolPop(v2);
  return v3;
}

CFStringRef FPSupport_CopyMainDisplayCAName()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E6979328] mainDisplay];
  if (v1 && (v2 = [v1 name]) != 0)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    Copy = 0;
  }

  objc_autoreleasePoolPop(v0);
  return Copy;
}

void FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(_DWORD *a1, double *a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    *a2 = 0.0;
    a2[1] = 0.0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E6979328] mainDisplay];
  v8 = v7;
  if (a1)
  {
    v9 = fpSupport_shouldCheckColorGamutToDecideVideoRangeForMode(v7);
    *a1 = FPSupport_GetVideoRangeForMode([v8 currentMode], v9);
  }

  if (a2)
  {
    v10 = [objc_msgSend(v8 "currentMode")];
    v11 = [objc_msgSend(v8 "currentMode")];
    *a2 = v10;
    a2[1] = v11;
  }

  if (a3)
  {
    [objc_msgSend(v8 "currentMode")];
    *a3 = v12;
  }

  objc_autoreleasePoolPop(v6);
}

void fps_disposeClearVideoLayerContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForClearVideoLayerContext(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  v4 = v3;
  if (*(a1 + 8))
  {
    v5 = " and remove them from their superlayer";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"Clear video layers %@%s", v3, v5);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t fps_clearFigVideoLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        v7 = [ValueAtIndex superlayer];
        [ValueAtIndex setContents:0];
        if (*(a1 + 8))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ValueAtIndex == [v7 videoLayer])
          {
            [v7 setVideoLayer:0];
          }

          [ValueAtIndex removeFromSuperlayer];
        }

        [ValueAtIndex setFilters:0];
      }
    }
  }

  return 0;
}

void fps_disposeAttachFigVideoLayerContext(CFTypeRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForAttachFigVideoLayerContext()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Attach fig video layers: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\nto client layers: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t fps_attachFigVideoLayersToClientLayers(CFArrayRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v4 = CFArrayGetCount(v4);
  }

  if (Count == v4)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[1], i);
        v7 = CFArrayGetValueAtIndex(*a1, i);
        [v7 addSublayer:ValueAtIndex];
        [v7 setVideoLayer:ValueAtIndex];
      }
    }

    return 0;
  }

  else
  {
    fps_attachFigVideoLayersToClientLayers_cold_1(&v9);
    return v9;
  }
}

void fps_disposeSetCAImageQueuesOnVideoLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetCAImageQueuesOnVideoLayersContext(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Set CA image queues: %@", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  time = *(a1 + 16);
  v5 = CMTimeCopyDescription(v2, &time);
  CFStringAppendFormat(Mutable, 0, @"\nand new duration: %@", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non video layers: %@", v6);
  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

uint64_t fps_setCAImageQueuesOnVideoLayers(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v4 = CFArrayGetCount(v4);
  }

  if (Count >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = Count;
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E69797E0];
    v8 = MEMORY[0x1E6960CC0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v6);
      v10 = CFArrayGetValueAtIndex(*a1, v6);
      [v10 setContents:ValueAtIndex];
      [v10 setFillMode:v7];
      if ((*(a1 + 28) & 0x11) == 1)
      {
        time1 = *(a1 + 16);
        v14 = *v8;
        if (CMTimeCompare(&time1, &v14) >= 1)
        {
          time1 = *(a1 + 16);
          Seconds = CMTimeGetSeconds(&time1);
          [v10 setDuration:?];
          [v10 timeOffset];
          if (v12 >= Seconds)
          {
            [v10 setTimeOffset:Seconds + -0.000001];
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  if (a3)
  {
    v8 = malloc_type_malloc(0x10uLL, 0x600405C6656D0uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      *(v9 + 8) = a3;
      CFRetain(a3);

      return FigDeferredTransactionAppendChangeWithCallback(a1, 0, a4, v9, fps_disposeSetFigImageQueuesOnCompositionContext, fps_copyDescriptionForSetFigImageQueuesOnCompositionContext, fps_setFigImageQueuesOnComposition);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition_cold_2(&v12);
    return v12;
  }
}

void fps_disposeSetFigImageQueuesOnCompositionContext(CFTypeRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetFigImageQueuesOnCompositionContext(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Update fig image queues: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  CFStringAppendFormat(Mutable, 0, @"\non composition processor: %@", *(a1 + 8));
  return Mutable;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  if (a3)
  {
    v8 = malloc_type_malloc(0x10uLL, 0x600405C6656D0uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      *(v9 + 8) = a3;
      CFRetain(a3);

      return FigDeferredTransactionAppendChangeWithCallback(a1, 0, a4, v9, fps_disposeSetFigImageQueuesOnRenderPipelineContext, fps_copyDescriptionForSetFigImageQueuesOnRenderPipelineContext, fps_setFigImageQueuesOnRenderPipeline);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline_cold_2(&v12);
    return v12;
  }
}

void fps_disposeSetFigImageQueuesOnRenderPipelineContext(CFTypeRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetFigImageQueuesOnRenderPipelineContext(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Set fig image queues: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  CFStringAppendFormat(Mutable, 0, @"\non render pipeline: %@", *(a1 + 8));
  return Mutable;
}

uint64_t fps_setFigImageQueuesOnRenderPipeline(uint64_t *a1)
{
  v1 = *a1;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1[1]);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(FigBaseObject, @"FigImageQueueArray", v1);
}

void fps_disposeSetDurationOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetDurationOnLayersContext(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  time = *(a1 + 8);
  v4 = CMTimeCopyDescription(v2, &time);
  CFStringAppendFormat(Mutable, 0, @"Set duration %@", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

uint64_t fps_setDurationOnLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = *MEMORY[0x1E69797E0];
      v7 = MEMORY[0x1E6960CC0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v5);
        if ((*(a1 + 20) & 0x11) == 1)
        {
          time1 = *(a1 + 8);
          v12 = *v7;
          if (CMTimeCompare(&time1, &v12) >= 1)
          {
            time1 = *(a1 + 8);
            Seconds = CMTimeGetSeconds(&time1);
            [ValueAtIndex setDuration:?];
            [ValueAtIndex timeOffset];
            if (v10 >= Seconds)
            {
              [ValueAtIndex setTimeOffset:Seconds + -0.000001];
            }
          }
        }

        [ValueAtIndex setFillMode:v6];
        ++v5;
      }

      while (v4 != v5);
    }
  }

  return 0;
}

void fps_disposeSetBoundsOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetBoundsOnLayersContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Set bounds: [%G, %G, %G, %G]", a1[1], a1[2], a1[3], a1[4]);
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_setBoundsOnLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*a1 i)];
      }
    }
  }

  return 0;
}

void fps_disposeSetTransformOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetTransformOnLayersContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Set position: [%G, %G], transform: [%G, %G, %G, %G, %G, %G]", a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_setTransformOnLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        v7 = ValueAtIndex;
        if (*(a1 + 8))
        {
          [ValueAtIndex setPosition:{*(a1 + 16), *(a1 + 24)}];
        }

        v8 = *(a1 + 48);
        v10[0] = *(a1 + 32);
        v10[1] = v8;
        v10[2] = *(a1 + 64);
        [v7 setAffineTransform:v10];
      }
    }
  }

  return 0;
}

void fps_disposeSetAntialiasingMaskOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetAntialiasingMaskOnLayersContext(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Set edge antialiasing mask %d", *(a1 + 8));
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_setAntialiasingMaskOnLayers(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*a1 i)];
      }
    }
  }

  return 0;
}

void fps_disposeCallSetContentsChangedOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForCallSetContentsChangedOnLayersContext()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call setContentsChanged");
  v1 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t fps_callSetContentsChangedOnLayers(CFArrayRef *a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*a1 i)];
      }
    }
  }

  return 0;
}

void fps_disposeReleaseContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForReleaseContext()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call FigCFReleaseAndClear");
  v1 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t fps_callRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return 0;
}

void fps_disposeReleaseOSTransactionContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

__CFString *fps_copyDescriptionForReleaseOSTransactionContext()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call FigOSReleaseAndClear");
  v1 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t fps_callReleaseOSTransaction(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }

  return 0;
}

void fps_disposeClearContentsAndRemoveFromSuperLayerContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

__CFString *fps_copyDescriptionForClearContentsAndRemoveFromSuperLayerContext(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call setContents:nil and removeFromSuperLayerContext");
  CFStringAppendFormat(Mutable, 0, @"\non: %@", [*a1 description]);
  return Mutable;
}

uint64_t fps_callClearContentsAndRemoveFromSuperLayer(id *a1)
{
  [*a1 setContents:0];
  [*a1 removeFromSuperlayer];

  *a1 = 0;
  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForUpdatingLayerTransform(const void *a1, void *a2, void *a3, int a4, char a5, char a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v37 = malloc_type_malloc(0xA8uLL, 0x1080040CAC251C5uLL);
  if (v37)
  {
    v38 = v37;
    *v37 = a2;
    v39 = a2;
    *(v38 + 8) = a3;
    v40 = a3;
    *(v38 + 16) = a9;
    *(v38 + 24) = a10;
    *(v38 + 32) = a11;
    *(v38 + 40) = a12;
    *(v38 + 48) = a13;
    *(v38 + 56) = a14;
    *(v38 + 64) = a15;
    *(v38 + 72) = a16;
    *(v38 + 80) = a4;
    *(v38 + 88) = a17;
    *(v38 + 96) = a18;
    *(v38 + 104) = a19;
    *(v38 + 112) = a20;
    *(v38 + 120) = a21;
    *(v38 + 128) = a22;
    *(v38 + 136) = a23;
    *(v38 + 144) = a24;
    *(v38 + 152) = a5;
    *(v38 + 153) = a6;
    *(v38 + 154) = a7;
    *(v38 + 160) = a25;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a8, v38, fps_disposeCallUpdateLayerTransform, fps_copyDescriptionForCallUpdateLayerTransform, fps_callUpdateLayerTransform);
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForUpdatingLayerTransform_cold_1(&v46);
    return v46;
  }
}

void fps_disposeCallUpdateLayerTransform(id *a1)
{

  free(a1);
}

__CFString *fps_copyDescriptionForCallUpdateLayerTransform(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call updateLayerTransform");
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\n video layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if ((v4 & 4) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    CFStringAppendFormat(Mutable, 0, @" flip_X ");
    v4 = *(a1 + 80);
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  CFStringAppendFormat(Mutable, 0, @" rotate 90 degree ");
  v4 = *(a1 + 80);
  if ((v4 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
LABEL_6:
    CFStringAppendFormat(Mutable, 0, @" flip_Y ");
    v4 = *(a1 + 80);
  }

LABEL_7:
  CFStringAppendFormat(Mutable, 0, @"\n UpdateLayer to sourceRect : [%f, %f, %f, %f]; destRect : [%f, %f, %f, %f]; symmetricTransform : %x; avcRect : [%f, %f, %f, %f]; avcPresentationRect : [%f, %f, %f, %f]; maskingLayerHidden : NO", *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), v4, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
  return Mutable;
}

uint64_t fps_callUpdateLayerTransform(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v25 = *(a1 + 48);
  v23 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v9 = *(a1 + 136);
  v8 = *(a1 + 144);
  if ((v7 & 4) != 0)
  {
    v10 = *(a1 + 72);
  }

  else
  {
    v10 = *(a1 + 64);
  }

  v27 = *(a1 + 64);
  if ((v7 & 4) != 0)
  {
    v11 = *(a1 + 64);
  }

  else
  {
    v11 = *(a1 + 72);
  }

  if (!*(a1 + 154))
  {
    v12 = MEMORY[0x1E6979518];
    tya = v10;
    v13 = v11;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 160)];
    [v12 setValue:v14 forKey:*MEMORY[0x1E697A018]];
    v11 = v13;
    v10 = tya;
  }

  if (*(a1 + 153))
  {
    ty = v11;
    v15 = v8 * (v11 / v5);
    [*(a1 + 8) setAnchorPoint:{v2 / v9, v3 / v8}];
    [*(a1 + 8) setBounds:{0.0, 0.0, v9 * (v10 / v4), v15}];
    [*a1 setFrame:{v25, v23, v27, v6}];
    v16 = *MEMORY[0x1E695EFD0];
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&v31.a = *MEMORY[0x1E695EFD0];
    *&v31.c = v17;
    v18 = *(MEMORY[0x1E695EFD0] + 32);
    *&v31.tx = v18;
    if (v7)
    {
      v24 = v17;
      v26 = v16;
      v20 = v18;
      CGAffineTransformMakeScale(&v30, -1.0, 1.0);
      *&t2.a = v26;
      *&t2.c = v24;
      *&t2.tx = v20;
      CGAffineTransformConcat(&v31, &t2, &v30);
      CGAffineTransformMakeTranslation(&t2, v10, 0.0);
      t1 = v31;
      CGAffineTransformConcat(&v30, &t1, &t2);
      v31 = v30;
      if ((v7 & 2) == 0)
      {
LABEL_12:
        if ((v7 & 4) == 0)
        {
LABEL_14:
          [*(a1 + 8) setAffineTransform:{&v31, v20}];
          goto LABEL_15;
        }

LABEL_13:
        CGAffineTransformMakeRotation(&t2, 1.57079633);
        t1 = v31;
        CGAffineTransformConcat(&v30, &t1, &t2);
        v31 = v30;
        CGAffineTransformMakeTranslation(&t2, v27, 0.0);
        t1 = v31;
        CGAffineTransformConcat(&v30, &t1, &t2);
        v31 = v30;
        goto LABEL_14;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_12;
    }

    CGAffineTransformMakeScale(&t2, 1.0, -1.0);
    t1 = v31;
    CGAffineTransformConcat(&v30, &t1, &t2);
    v31 = v30;
    CGAffineTransformMakeTranslation(&t2, 0.0, ty);
    t1 = v31;
    CGAffineTransformConcat(&v30, &t1, &t2);
    v31 = v30;
    if ((v7 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if (*(a1 + 152))
  {
    [*a1 setHidden:0];
  }

  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForHidingLayer(const void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = a2;
      v8 = a2;

      return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a3, v7, fps_disposeCallHideMaskingLayer, fps_copyDescriptionForCallHideMaskingLayer, fps_callHideMaskingLayer);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForHidingLayer_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForHidingLayer_cold_2(&v11);
    return v11;
  }
}

void fps_disposeCallHideMaskingLayer(id *a1)
{

  free(a1);
}

__CFString *fps_copyDescriptionForCallHideMaskingLayer(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call hideMaskingLayer");
  CFStringAppendFormat(Mutable, 0, @"\n maksking layer : %@", [*a1 description]);
  return Mutable;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer(const void *a1, void *a2, void *a3, uint64_t a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
    if (v8)
    {
      v9 = v8;
      v8[1] = a3;
      v10 = a3;
      *(v9 + 16) = [*(v9 + 8) superlayer];
      FigObjectRecordMethodCallsForObject();
      *v9 = a2;
      v11 = a2;

      return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v9, fps_disposeTargetMirroringObserverAtDisplayOfCALayer, fps_copyDescriptionForTargetMirroringObserverAtDisplayOfCALayer, fps_targetMirroringObserverAtDisplayOfCALayer);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer_cold_1(&v13);
      return v13;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer_cold_2(&v14);
    return v14;
  }
}

void fps_disposeTargetMirroringObserverAtDisplayOfCALayer(id *a1)
{
  FigObjectRecordMethodCallsForObject();
  FigSurfaceObjectMethodCallsBeforeCrash();

  free(a1);
}

__CFString *fps_copyDescriptionForTargetMirroringObserverAtDisplayOfCALayer(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"TargetMirroringObserverAtDisplayOfCALayer");
  CFStringAppendFormat(Mutable, 0, @"\n observer : %@", [*a1 description]);
  CFStringAppendFormat(Mutable, 0, @"\n videoLayer : %@", [a1[1] description]);
  CFStringAppendFormat(Mutable, 0, @"\n videoLayerParent : %@", [a1[2] description]);
  return Mutable;
}

uint64_t fps_targetMirroringObserverAtDisplayOfCALayer(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a1;
  context = objc_autoreleasePoolPush();
  v1 = *(v18 + 8);
  if (v1)
  {
    v2 = *MEMORY[0x1E6979698];
    v3 = *MEMORY[0x1E69796A0];
    while (1)
    {
      v4 = [objc_msgSend(v1 context];
      v5 = [v4 objectForKey:v2];
      if (v5)
      {
        v6 = [v5 unsignedIntValue];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [MEMORY[0x1E6979328] displays];
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
LABEL_6:
          v11 = 0;
          while (1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            if (v6 == [v12 displayId])
            {
              break;
            }

            if (v9 == ++v11)
            {
              v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v9)
              {
                goto LABEL_6;
              }

              goto LABEL_14;
            }
          }

          v13 = [v12 name];
          if (v13)
          {
            break;
          }
        }
      }

LABEL_14:
      v13 = [v4 objectForKey:v3];
      if (v13)
      {
        break;
      }

      v1 = [v1 superlayer];
      if (!v1)
      {
        goto LABEL_16;
      }
    }

    v14 = v13;
    v15 = context;
  }

  else
  {
LABEL_16:
    v14 = [objc_msgSend(MEMORY[0x1E6979328] mainDisplay];
    v15 = context;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  v16 = [MEMORY[0x1E695DEC8] arrayWithObject:v14];
  if (*v18)
  {
    [*v18 setBaseDisplayList:v16];
  }

LABEL_21:
  objc_autoreleasePoolPop(v15);
  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification(const void *a1, void *a2, void *a3, int a4, const void *a5, const void *a6, uint64_t a7)
{
  if (a2)
  {
    if (a3)
    {
      v14 = malloc_type_malloc(0x28uLL, 0x10E004019DEF5ECuLL);
      if (v14)
      {
        v15 = v14;
        *v14 = a2;
        v16 = a2;
        *(v15 + 8) = a3;
        v17 = a3;
        *(v15 + 16) = a5;
        if (a5)
        {
          CFRetain(a5);
        }

        *(v15 + 32) = a6;
        if (a6)
        {
          CFRetain(a6);
        }

        *(v15 + 24) = a4;

        return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a7, v15, fps_disposeConfigureFigVideoQueueHostLayerAndPostNotification, fps_copyDescriptionForConfigureFigVideoQueueHostLayerAndPostNotification, fps_configureFigVideoQueueHostLayerAndPostNotification);
      }

      else
      {
        FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_1(&v19);
        return v19;
      }
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_2(&v20);
      return v20;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_3(&v21);
    return v21;
  }
}

void fps_disposeConfigureFigVideoQueueHostLayerAndPostNotification(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForConfigureFigVideoQueueHostLayerAndPostNotification(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call FVQClientSetupHostLayer");
  CFStringAppendFormat(Mutable, 0, @"\n clientVideoLayer : %@; hostLayer : %@ ", [a1[1] description], objc_msgSend(*a1, "description"));
  return Mutable;
}

uint64_t fps_configureFigVideoQueueHostLayerAndPostNotification(void *a1)
{
  [*a1 removeFromSuperlayer];
  [*a1 setContextId:*(a1 + 6)];
  [*a1 setEdgeAntialiasingMask:0];
  [*a1 setFillMode:*MEMORY[0x1E69797E0]];
  [a1[1] addSublayer:*a1];
  if (a1[4])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer(const void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (a2)
  {
    if (a3)
    {
      v16 = malloc_type_malloc(0x30uLL, 0x1080040DAA165ECuLL);
      if (v16)
      {
        v17 = v16;
        *v16 = a2;
        v18 = a2;
        *(v17 + 8) = a3;
        v19 = a3;
        *(v17 + 16) = a5;
        *(v17 + 24) = a6;
        *(v17 + 32) = a7;
        *(v17 + 40) = a8;

        return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v17, fps_disposeResizeClientVideoLayerWithinHostLayer, fps_copyDescriptionForResizeClientVideoLayerWithinHostLayer, fps_resizeClientVideoLayerWithinHostLayer);
      }

      else
      {
        FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_1(&v21);
        return v21;
      }
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_2(&v22);
      return v22;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_3(&v23);
    return v23;
  }
}

void fps_disposeResizeClientVideoLayerWithinHostLayer(id *a1)
{

  free(a1);
}

__CFString *fps_copyDescriptionForResizeClientVideoLayerWithinHostLayer(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"ResizeClientVideoLayerWithinHostLayer");
  CFStringAppendFormat(Mutable, 0, @"\n clientVideoLayer : %@; hostLayer : %@ ", [a1[1] description], objc_msgSend(*a1, "description"));
  return Mutable;
}

uint64_t fps_resizeClientVideoLayerWithinHostLayer(uint64_t a1)
{
  v2 = *a1;
  [*(a1 + 8) bounds];
  [v2 setFrame:?];
  if (*(a1 + 32) > 0.0 && *(a1 + 40) > 0.0)
  {
    [*(a1 + 8) bounds];
    v4 = v3;
    v6 = v5;
    memset(&v12, 0, sizeof(v12));
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    CGAffineTransformMakeScale(&v12, v3 / v7, v5 / v8);
    v10 = v12;
    CGAffineTransformTranslate(&v11, &v10, (v4 - v7) * 0.5, (v6 - v8) * 0.5);
    v12 = v11;
    [*a1 setAffineTransform:&v11];
  }

  return 0;
}

void fps_disposeReleasePlayerResourcesOnQueueContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForReleasePlayerResourcesOnQueueContext()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Release player resources");
  v1 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\nof: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t fps_releasePlayerResources(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v3 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fps_releasePlayerResources_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_async(v3, block);
  return 0;
}

void fps_disposeSetCAImageQueueSlotsOnVideoLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetImageQueueSlotsOnVideoLayersContext()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Set image queue slots: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non video layers: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t fps_setCAImageQueueSlotsOnVideoLayers(CFArrayRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v4 = CFArrayGetCount(v4);
  }

  if (Count >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = Count;
  }

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
      v8 = CFArrayGetValueAtIndex(a1[1], i);
      CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      [ValueAtIndex setContentsSlotID:valuePtr];
    }
  }

  return 0;
}

uint64_t FPSupport_HandlePlayerSetPropertiesAndCopyModification(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, BOOL *a5, const __CFDictionary **a6, void *a7)
{
  v13[0] = 0;
  v13[1] = a1;
  v13[2] = a3;
  v13[3] = a4;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    return fpSupport_handlePlayerOrItemSetPropertiesAndCopyModification(v13, a2, a5, a6, a7);
  }

  FPSupport_HandlePlayerSetPropertiesAndCopyModification_cold_1(&v14);
  return v14;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, BOOL *a5, const __CFDictionary **a6, void *a7)
{
  v13[1] = a1;
  v13[0] = 1;
  v13[2] = a3;
  v13[3] = a4;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    return fpSupport_handlePlayerOrItemSetPropertiesAndCopyModification(v13, a2, a5, a6, a7);
  }

  FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification_cold_1(&v14);
  return v14;
}

uint64_t FPSupport_HandlePlayerSetPropertyAndCopyModification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, CFTypeRef *a7, CFTypeRef *a8)
{
  v15[0] = 1;
  v15[1] = a1;
  v15[2] = a4;
  v15[3] = a5;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    return fpSupport_handlePlayerOrItemSetPropertyAndCopyModification(v15, a2, a3, a6, a7, a8);
  }

  FPSupport_HandlePlayerSetPropertyAndCopyModification_cold_1(&v16);
  return v16;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, CFTypeRef *a7, CFTypeRef *a8)
{
  v15[0] = 1;
  v15[1] = a1;
  v15[2] = a4;
  v15[3] = a5;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    return fpSupport_handlePlayerOrItemSetPropertyAndCopyModification(v15, a2, a3, a6, a7, a8);
  }

  FPSupport_HandlePlaybackItemSetPropertyAndCopyModification_cold_1(&v16);
  return v16;
}

uint64_t FPSupport_HasTrackOfType(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v11 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v4(a1, v6, a2, &cf, &v11))
      {
        break;
      }

      if (a2 == 1986618469)
      {
        desc = 0;
        if (fpSupport_copyFormatDescription(cf, &desc))
        {
          break;
        }

        v7 = desc;
        if (desc)
        {
          MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
          if (fpSupport_isVideoCodecTypeSupported(MediaSubType, 0) || CVPixelFormatDescriptionGetDescriptionWithPixelFormatType())
          {
            v5 = 1;
          }

          CFRelease(v7);
        }
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v6;
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

BOOL fpSupport_isVideoCodecTypeSupported(uint64_t a1, char a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  v5 = MEMORY[0x1E695E4D0];
  v6 = MEMORY[0x1E695E4D0];
  if ((a2 & 1) == 0)
  {
    if ((a2 & 4) == 0)
    {
      if ((a2 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    v6 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984200], *v6);
  if ((a2 & 2) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  CFDictionarySetValue(v4, *MEMORY[0x1E69841E0], *v5);
  if ((a2 & 8) == 0)
  {
LABEL_5:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  CFDictionarySetValue(v4, *MEMORY[0x1E69841F0], *v5);
  if ((a2 & 0x10) == 0)
  {
LABEL_6:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  CFDictionarySetValue(v4, *MEMORY[0x1E6984218], *v5);
  if ((a2 & 0x20) != 0)
  {
LABEL_7:
    CFDictionarySetValue(v4, *MEMORY[0x1E69841F8], *v5);
  }

LABEL_8:
  VideoDecoderInstance = VTSelectAndCreateVideoDecoderInstance();
  if (v4)
  {
    CFRelease(v4);
  }

  return VideoDecoderInstance == 0;
}

uint64_t FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray(const __CFArray *a1, CFAllocatorRef allocator, __CFArray **a3, CFMutableArrayRef *a4)
{
  theArray = 0;
  if (!a1)
  {
    FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_3(&v29);
LABEL_33:
    v22 = v29;
    goto LABEL_28;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_2(&v29);
    goto LABEL_33;
  }

  v9 = Mutable;
  v10 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v10)
  {
    v26 = a3;
    v27 = a4;
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      v14 = *MEMORY[0x1E6963150];
      v15 = *(MEMORY[0x1E6963150] + 8);
      v24 = *(MEMORY[0x1E69631B0] + 8);
      v25 = *MEMORY[0x1E69631B0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v17)
        {
          v17(ValueAtIndex, allocator, &theArray);
        }

        v18 = v10;
        if (theArray)
        {
          if (CFArrayGetCount(theArray) == 1 && (v19 = CFArrayGetValueAtIndex(theArray, 0), FigDataChannelGroupGetCountOfDataChannels(v19) == 1) && ((DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v19, 0), MEMORY[0x19A8D3320]() == 1) && (v30.value = *"vyna", *&v30.category = 0x40000005706C7972, CMTagCollectionContainsTag(DataChannelByIndex, v30)) || (*&v31.category = v14, v31.value = v15, CMTagCollectionContainsTag(DataChannelByIndex, v31)) && (v32.value = v24, *&v32.category = v25, CMTagCollectionContainsTag(DataChannelByIndex, v32))))
          {
            v18 = v9;
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
              v18 = v9;
            }
          }

          else
          {
            v18 = v10;
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
              v18 = v10;
            }
          }
        }

        CFArrayAppendValue(v18, ValueAtIndex);
        ++v13;
      }

      while (v12 != v13);
    }

    if (v26)
    {
      *v26 = v9;
      v9 = 0;
    }

    if (v27)
    {
      *v27 = v10;
      v10 = 0;
    }

    v21 = 0;
    v22 = 0;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_1(&v29);
    v21 = v29;
  }

  CFRelease(v9);
  v22 = v21;
LABEL_26:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_28:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v22;
}

uint64_t FPSupport_CreateDefaultTagCollectionForVideo(CMTagCollectionRef *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  newCollectionOut = 0;
  v2 = *MEMORY[0x1E6960648];
  tags = *MEMORY[0x1E69631B0];
  v7 = v2;
  v8 = *MEMORY[0x1E6960680];
  v3 = CMTagCollectionCreate(*MEMORY[0x1E695E480], &tags, 3, &newCollectionOut);
  if (!a1 || v3)
  {
    if (newCollectionOut)
    {
      CFRelease(newCollectionOut);
    }
  }

  else
  {
    *a1 = newCollectionOut;
  }

  return v3;
}

uint64_t FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(const opaqueCMFormatDescription *a1, void *a2)
{
  if (!a2)
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_6(&v35);
    return v35;
  }

  Mutable = FigTagCollectionCreateMutable();
  if (Mutable)
  {
    return Mutable;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6962788]);
  v6 = MEMORY[0x1E695E4D0];
  if (Extension)
  {
    v7 = Extension;
    v8 = CFGetTypeID(Extension);
    if (v8 == CFBooleanGetTypeID())
    {
      v9 = v7 == *v6;
      goto LABEL_7;
    }

    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_1(&v35);
    return v35;
  }

  v9 = 0;
LABEL_7:
  v10 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6962790]);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 != CFBooleanGetTypeID())
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_2(&v35);
    return v35;
  }

  if (v11 == *v6)
  {
    v9 |= 2u;
  }

LABEL_11:
  v34 = *MEMORY[0x1E6963130];
  v13 = HIDWORD(*MEMORY[0x1E6963130]);
  if (v9 == 3)
  {
    v16 = MEMORY[0x1E69631A0];
  }

  else if (v9 == 2)
  {
    v16 = MEMORY[0x1E69631B8];
  }

  else
  {
    v14 = DWORD1(v34);
    v15 = *MEMORY[0x1E6963130];
    if (v9 != 1)
    {
      goto LABEL_18;
    }

    v16 = MEMORY[0x1E69631A8];
  }

  v15 = *v16;
  v14 = HIDWORD(*v16);
LABEL_18:
  v33 = v15;
  v17 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69627D0]);
  LODWORD(v18) = v13;
  v19 = v34;
  if (!v17)
  {
    goto LABEL_25;
  }

  v20 = v17;
  v21 = CFGetTypeID(v17);
  if (v21 != CFStringGetTypeID())
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_3(&v35);
    return v35;
  }

  if (CFEqual(*MEMORY[0x1E69627F8], v20))
  {
    v22 = MEMORY[0x1E6963168];
  }

  else
  {
    v23 = CFEqual(*MEMORY[0x1E69627F0], v20);
    LODWORD(v18) = v13;
    v19 = v34;
    if (!v23)
    {
      goto LABEL_25;
    }

    v22 = MEMORY[0x1E6963160];
  }

  v19 = *v22;
  v18 = HIDWORD(*v22);
LABEL_25:
  v32 = v19;
  v24 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960090]);
  if (!v24)
  {
    goto LABEL_31;
  }

  v25 = v24;
  v26 = CFGetTypeID(v24);
  if (v26 != CFStringGetTypeID())
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_4(&v35);
    return v35;
  }

  if (CFEqual(*MEMORY[0x1E69627E0], v25) || CFEqual(*MEMORY[0x1E6960118], v25))
  {
    v27 = MEMORY[0x1E6960668];
LABEL_30:
    v34 = *v27;
    v13 = HIDWORD(*v27);
    goto LABEL_31;
  }

  if (CFEqual(*MEMORY[0x1E6960138], v25))
  {
    v27 = MEMORY[0x1E6960680];
    goto LABEL_30;
  }

  if (_os_feature_enabled_impl())
  {
    if (CFEqual(*MEMORY[0x1E6960120], v25))
    {
      v27 = MEMORY[0x1E6960660];
      goto LABEL_30;
    }

    if (CFEqual(*MEMORY[0x1E6960128], v25))
    {
      v27 = MEMORY[0x1E6960670];
      goto LABEL_30;
    }

    if (CFEqual(*MEMORY[0x1E6960130], v25))
    {
      v27 = MEMORY[0x1E6960678];
      goto LABEL_30;
    }
  }

LABEL_31:
  v28 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69627C0]);
  if (!v28)
  {
    goto LABEL_34;
  }

  v29 = CFGetTypeID(v28);
  if (v29 != CFNumberGetTypeID())
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_5(&v35);
    return v35;
  }

  FigCFNumberGetSInt32();
LABEL_34:
  if (v14)
  {
    v36.category = v33;
    v36.dataType = v14;
    v36.value = *(&v33 + 1);
    Mutable = CMTagCollectionAddTag(0, v36);
    if (Mutable)
    {
      return Mutable;
    }
  }

  if (v18)
  {
    v37.category = v32;
    v37.dataType = v18;
    v37.value = *(&v32 + 1);
    Mutable = CMTagCollectionAddTag(0, v37);
    if (Mutable)
    {
      return Mutable;
    }
  }

  if (v13)
  {
    v38.category = v34;
    v38.dataType = v13;
    v38.value = *(&v34 + 1);
    Mutable = CMTagCollectionAddTag(0, v38);
    if (Mutable)
    {
      return Mutable;
    }
  }

  v30 = 0;
  if (!FigTagCollectionIsEmpty())
  {
    *a2 = 0;
  }

  return v30;
}

CFTypeRef FPSupport_CreateVideoChannelSettingsForTrackWithID(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, CFMutableDictionaryRef *a8)
{
  cf = 0;
  if (!a8)
  {
    FPSupport_CreateVideoChannelSettingsForTrackWithID_cold_2(&v18);
    return v18;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FPSupport_CreateVideoChannelSettingsForTrackWithID_cold_1(&v18);
    return v18;
  }

  v14 = Mutable;
  FigCFDictionarySetInt32();
  FigCFDictionarySetBoolean();
  if (a7)
  {
    FigCFDictionarySetCGRect();
  }

  FigCFDictionarySetCGSize();
  if (a4 && FPSupport_ShouldApplyVideoTrackMatrix(a2, a3))
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v16)
    {
      v16(a3, a4, @"Matrix", *MEMORY[0x1E695E480], &cf);
    }

    FigCFDictionarySetValue();
    result = cf;
    *a8 = v14;
    if (result)
    {
      CFRelease(result);
      return 0;
    }
  }

  else
  {
    result = 0;
    *a8 = v14;
  }

  return result;
}

BOOL FPSupport_CanFormatsShareVideoRenderPipeline(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2)
{
  theArray = 0;
  tagCollectionsOut = 0;
  v8 = 0uLL;
  CMVideoFormatDescriptionCopyTagCollectionArray(a1, &tagCollectionsOut);
  CMVideoFormatDescriptionCopyTagCollectionArray(a2, &theArray);
  if (tagCollectionsOut)
  {
    Count = CFArrayGetCount(tagCollectionsOut);
  }

  else
  {
    Count = 0;
  }

  v5 = theArray;
  if (theArray)
  {
    v5 = CFArrayGetCount(theArray);
  }

  if (Count != v5)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &v8 + 1);
  FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a2, &v8);
  if (v8 != 0)
  {
    if (fps_verifyTagsOfCategoryAreEqual(*(&v8 + 1), v8) && fps_verifyTagsOfCategoryAreEqual(*(&v8 + 1), v8))
    {
      v6 = fps_verifyTagsOfCategoryAreEqual(*(&v8 + 1), v8);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = 1;
LABEL_13:
  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (*(&v8 + 1))
  {
    CFRelease(*(&v8 + 1));
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

BOOL fps_verifyTagsOfCategoryAreEqual(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    FigTagCollectionGetTagsWithCategory();
  }

  if (a2)
  {
    FigTagCollectionGetTagsWithCategory();
  }

  return FigTagEqualToTag() != 0;
}

uint64_t FPSupport_CanVideoRenderPipelineSupportChangingFigImageQueues(const opaqueCMFormatDescription *a1)
{
  cf = 0;
  FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &cf);
  if (!cf)
  {
    return 1;
  }

  FigTagCollectionGetTagsWithCategory();
  v1 = FigTagEqualToTag() == 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

uint64_t FPSupport_RenderPipelineSupportsGaplessTransitionWithFormats(uint64_t a1, CMAudioFormatDescriptionRef formatDescription, CMAudioFormatDescriptionRef otherFormatDescription)
{
  if (!a1 || (v6 = *(*(CMBaseObjectGetVTable() + 16) + 96)) == 0 || (result = v6(a1, otherFormatDescription), result != 1))
  {

    return CMAudioFormatDescriptionEqual(formatDescription, otherFormatDescription, 1u, 0);
  }

  return result;
}

uint64_t FPSupport_IncrementSeekID(int a1)
{
  v1 = (a1 % 100000000 + 1) % 100000000;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while (!v2);
  return (a1 - a1 % 100000000 + v2);
}

uint64_t FPSupport_fvtSupportsMetadataTrack(uint64_t a1)
{
  theArray = 0;
  if (a1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v2 && !v2(a1, *MEMORY[0x1E695E480], &theArray))
    {
      if (!theArray)
      {
        return 0;
      }

      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v4 = Count;
        v5 = 0;
        v6 = *MEMORY[0x1E6963148];
        v7 = *(MEMORY[0x1E6963148] + 8);
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
          CountOfDataChannels = FigDataChannelGroupGetCountOfDataChannels(ValueAtIndex);
          if (CountOfDataChannels >= 1)
          {
            break;
          }

LABEL_13:
          v17 = 0;
          if (++v5 >= v4)
          {
            goto LABEL_20;
          }
        }

        v10 = CountOfDataChannels;
        v11 = 0;
        while (1)
        {
          DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(ValueAtIndex, v11);
          *&v20.category = v6;
          v20.value = v7;
          if (CMTagCollectionContainsTag(DataChannelByIndex, v20))
          {
            if (!CMTagCollectionContainsCategory(DataChannelByIndex, kCMTagCategory_MediaSubType))
            {
              v17 = 1;
              goto LABEL_20;
            }

            v13 = FigTagMakeWithOSTypeValue();
            v15 = v14;
            *&v21.category = v13;
            v21.value = v15;
            v16 = CMTagCollectionContainsTag(DataChannelByIndex, v21);
            if (v16)
            {
              break;
            }
          }

          if (v10 == ++v11)
          {
            goto LABEL_13;
          }
        }

        v17 = v16;
        goto LABEL_20;
      }
    }
  }

  else
  {
    FPSupport_fvtSupportsMetadataTrack_cold_1();
  }

  v17 = 0;
LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v17;
}

uint64_t FPSupport_SetCurrentTimeWithRangeIDAndReason(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = Mutable;
  if (a1)
  {
    if (!Mutable)
    {
      FPSupport_SetCurrentTimeWithRangeIDAndReason_cold_1(&v16);
      return v16;
    }

    FigCFDictionarySetInt32();
    v16 = *a4;
    v17 = *(a4 + 2);
    FigCFDictionarySetCMTime();
    v16 = *a5;
    v17 = *(a5 + 2);
    FigCFDictionarySetCMTime();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v14 = *a2;
    v15 = *(a2 + 2);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v11)
    {
      v16 = v14;
      v17 = v15;
      v12 = v11(a1, &v16, v10);
    }

    else
    {
      v12 = 4294954514;
    }
  }

  else
  {
    v12 = FigSignalErrorAtGM();
    if (!v10)
    {
      return v12;
    }
  }

  CFRelease(v10);
  return v12;
}

BOOL FPSupport_IsRunningInAppleVirtualMachine()
{
  if (FPSupport_IsRunningInAppleVirtualMachine_sCheckOnce != -1)
  {
    FPSupport_IsRunningInAppleVirtualMachine_cold_1();
  }

  return FPSupport_IsRunningInAppleVirtualMachine_isAppleVirtualMachine != 0;
}

uint64_t FPSupport_GetAssetDoNotLogURLs(uint64_t a1)
{
  number = 0;
  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(CMBaseObject, @"assetProperty_CreationFlags", *MEMORY[0x1E695E480], &number);
  v4 = number;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = number == 0;
  }

  if (v5)
  {
    v6 = 0;
    if (!number)
    {
      return v6;
    }

    goto LABEL_11;
  }

  v8 = 0;
  CFNumberGetValue(number, kCFNumberSInt64Type, &v8);
  v6 = (v8 >> 9) & 1;
  v4 = number;
  if (number)
  {
LABEL_11:
    CFRelease(v4);
  }

  return v6;
}

void FPSupport_ProcessPayloadForLastPlayedDateNotification(uint64_t a1)
{
  if (a1)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetValue();
    FigCFDictionaryGetValue();
    MainBundle = CFBundleGetMainBundle();
    CFBundleGetIdentifier(MainBundle);
    FigAssetDownloadStorageManagementSetLastPlayedDateForAssetAtURL();
  }

  else
  {
    FPSupport_ProcessPayloadForLastPlayedDateNotification_cold_1(&v2);
  }
}

uint64_t FPSupport_CreatePlayerTopology(CFAllocatorRef allocator, const void *a2, uint64_t a3, __CFArray **a4)
{
  cf = 0;
  if (a4)
  {
    if (a2)
    {
      if (a3)
      {
        FigBaseObject = FigPlayerGetFigBaseObject(a3);
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v8(FigBaseObject, @"Topology", allocator, &cf);
        }
      }

      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = Mutable;
        CFArrayAppendValue(Mutable, a2);
        FigCFArrayAppendArray();
        v11 = 0;
        *a4 = v10;
        goto LABEL_8;
      }

      FPSupport_CreatePlayerTopology_cold_1(&v14);
    }

    else
    {
      FPSupport_CreatePlayerTopology_cold_2(&v14);
    }
  }

  else
  {
    FPSupport_CreatePlayerTopology_cold_3(&v14);
  }

  v11 = v14;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

dispatch_queue_t fpSupport_createDisplayAssertionMutexAndDict()
{
  sAssertionParameters = FigSimpleMutexCreate();
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  qword_1EAF18F68 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1EAF18F70 = dispatch_queue_create("com.apple.coremedia.fpsupport.HDRBatonAvailableNotificationQueue", 0);
  unk_1EAF18F78 = @"HDRBatonAvailable";
  qword_1EAF18F80 = FigSimpleMutexCreate();
  qword_1EAF18F88 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  result = dispatch_queue_create("com.apple.coremedia.fpsupport.4kBatonAvailableNotificationQueue", 0);
  qword_1EAF18F90 = result;
  unk_1EAF18F98 = @"4kBatonAvailable";
  return result;
}

void fpSupport_PostDeferredBatonAvailableNotification(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  CMNotificationCenterPostNotification();
  if (a4)
  {

    CFRelease(a4);
  }
}

uint64_t __fpSupport_getContext_block_invoke()
{
  result = FigSimpleMutexCreate();
  fpSupport_getContext_contextMutex = result;
  return result;
}

void __fps_releasePlayerResources_block_invoke(uint64_t a1)
{
  FigBaseObject = FigPlayerGetFigBaseObject(*(a1 + 32));
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(FigBaseObject, @"ImageQueueSlotTransitionFinished", *MEMORY[0x1E695E4D0]);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void fpSupport_handleSetPropertiesApplier(void *cf, CFTypeRef a2, uint64_t a3)
{
  v20 = 0;
  v4 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738] == a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v18 = 0;
  cfa = 0;
  if (*(a3 + 32))
  {
LABEL_37:
    v17 = 0;
    goto LABEL_38;
  }

  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID())
    {
      v9 = fpSupport_handleSetPropertiesInternal(*a3, cf, v5, &v20, &cfa, &v18);
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v20 == 0;
      }

      if (v10)
      {
        if (cfa)
        {
          v11 = CFGetTypeID(cfa);
          if (v11 == CFStringGetTypeID())
          {
            goto LABEL_20;
          }
        }

        v9 = FigSignalErrorAtGM();
      }

      if (v9)
      {
        v12 = *MEMORY[0x1E695E480];
        SInt64 = FigCFNumberCreateSInt64();
        v20 = 1;
        Mutable = *(a3 + 24);
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(a3 + 24) = Mutable;
        }

        CFDictionarySetValue(Mutable, cf, SInt64);
        if (SInt64)
        {
          CFRelease(SInt64);
        }
      }

LABEL_20:
      v15 = v18;
      if (!v18)
      {
        if (v4)
        {
          v15 = CFRetain(v4);
        }

        else
        {
          v15 = 0;
        }

        v18 = v15;
      }

      if (v20)
      {
        fpSupport_handleSetPropertiesApplier_cold_3(a3, cf);
      }

      else
      {
        v16 = cfa;
        if (cfa == cf && v15 == a2)
        {
          v17 = 0;
          if (!cfa)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        fpSupport_handleSetPropertiesApplier_cold_2(a3, cf, &cfa, &v18);
      }

      goto LABEL_37;
    }
  }

  fpSupport_handleSetPropertiesApplier_cold_1(&v21);
  v17 = v21;
LABEL_38:
  v16 = cfa;
  if (cfa)
  {
LABEL_29:
    CFRelease(v16);
  }

LABEL_30:
  if (v18)
  {
    CFRelease(v18);
  }

  if (!*(a3 + 32))
  {
    *(a3 + 32) = v17;
  }
}

uint64_t fpSupport_handleSetPropertiesInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 > 1u)
  {
    return FigSignalErrorAtGM();
  }

  else
  {
    return (*(a1 + 24))(*(a1 + 8), *(a1 + 16), a2, a3, a4, a5, a6);
  }
}

CMTime *OUTLINED_FUNCTION_6_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, CMTime *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = llround(a10 / a9);

  return CMTimeMake(&a34, 1, v35);
}

void *OUTLINED_FUNCTION_13_10()
{

  return malloc_type_malloc(0x10uLL, 0x600405BB7FD7CuLL);
}

void *OUTLINED_FUNCTION_14_14()
{

  return malloc_type_malloc(8uLL, 0x80040B8603338uLL);
}

CFTypeRef OUTLINED_FUNCTION_19_11(void *a1)
{
  *a1 = v1;

  return CFRetain(v1);
}

uint64_t RegisterFigPictureReaderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPictureReaderGetClassID_sRegisterFigPictureReaderBaseTypeOnce, RegisterFigPictureReaderBaseType);

  return CMBaseClassGetCFTypeID();
}

dispatch_queue_t saig_createNotificationQueueOnce()
{
  result = dispatch_queue_create("com.apple.coremedia.streamassetimagegenerator.notifications", 0);
  sSAIGNotificationQueue = result;
  return result;
}

uint64_t saig_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *DerivedStorage;
  if (*DerivedStorage)
  {
    CFRetain(*DerivedStorage);
  }

  FigRetainProxyLockMutex();
  if (!*(v3 + 8))
  {
    FigRetainProxyInvalidate();
    *(v3 + 8) = 1;
    saig_CancelAllRequests(v3);
    if (*(v3 + 624))
    {
      FigSemaphoreSignal();
    }

    if (*(v3 + 80))
    {
      FigSemaphoreSignal();
      v5 = *(v3 + 80);
      *(v3 + 80) = 0;
      FigRetainProxyUnlockMutex();
      if (v5)
      {
        FigThreadAbort();
        FigThreadJoin();
      }
    }

    else
    {
      FigRetainProxyUnlockMutex();
    }

    FigRetainProxyLockMutex();
    v6 = *(v3 + 96);
    if (v6)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      *(v3 + 96) = 0;
      FigBytePumpGetFigBaseObject(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v9)
        {
          v9(v8);
        }
      }

      FigBytePumpRelease(v6);
    }

    FigSimpleMutexLock();
    v10 = *(v3 + 560);
    if (v10)
    {
      CFRelease(v10);
      *(v3 + 560) = 0;
    }

    FigSimpleMutexUnlock();
    saig_tearDownManifoldsAndDeleteTracks(a1);
    FigCFWeakReferenceStore();
    if (*(v3 + 64))
    {
      FigSemaphoreDestroy();
      *(v3 + 64) = 0;
    }

    if (*(v3 + 72))
    {
      FigSemaphoreDestroy();
      *(v3 + 72) = 0;
    }

    v11 = *(v3 + 648);
    if (v11)
    {
      CFRelease(v11);
      *(v3 + 648) = 0;
    }

    v12 = *(v3 + 616);
    if (v12)
    {
      CFRelease(v12);
      *(v3 + 616) = 0;
    }

    v13 = *(v3 + 144);
    if (v13)
    {
      CFRelease(v13);
      *(v3 + 144) = 0;
    }

    v14 = *(v3 + 112);
    if (v14)
    {
      CFRelease(v14);
      *(v3 + 112) = 0;
    }

    v15 = *(v3 + 120);
    if (v15)
    {
      CFRelease(v15);
      *(v3 + 120) = 0;
    }

    v16 = *(v3 + 128);
    if (v16)
    {
      CFRelease(v16);
      *(v3 + 128) = 0;
    }

    v17 = *(v3 + 136);
    if (v17)
    {
      CFRelease(v17);
      *(v3 + 136) = 0;
    }

    v18 = *(v3 + 24);
    if (v18)
    {
      CFRelease(v18);
      *(v3 + 24) = 0;
    }

    v19 = *(v3 + 16);
    if (v19)
    {
      CFRelease(v19);
      *(v3 + 16) = 0;
    }
  }

  FigRetainProxyUnlockMutex();
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t saig_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  saig_Invalidate(a1);
  if (*(DerivedStorage + 32))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 32) = 0;
  }

  if (*(DerivedStorage + 568))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 568) = 0;
  }

  return FigRetainProxyRelease();
}

__CFString *saig_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigStreamAssetImageGenerator %p url: ", a1);
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    v5 = CFURLGetString(v4);
  }

  else
  {
    v5 = @"<INVALIDATED>";
  }

  CFStringAppend(Mutable, v5);
  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t saig_CancelAllRequests(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 556);
    do
    {
      *(v2 + 8) = 1;
      v4 = *(v2 + 14);
      if (v3 < v4)
      {
        *(a1 + 556) = v4;
        v3 = v4;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return FigSimpleMutexUnlock();
}

void saig_tearDownManifoldsAndDeleteTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 320);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 8);
      saig_deleteTrack(a1, v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = 0;
  v6 = DerivedStorage + 176;
  do
  {
    if (*(v6 + v5))
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      FigBaseObject = FigManifoldGetFigBaseObject(*(v6 + v5));
      if (FigBaseObject)
      {
        v8 = FigBaseObject;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v9)
        {
          v9(v8);
        }
      }

      v10 = *(v6 + v5);
      if (v10)
      {
        CFRelease(v10);
        *(v6 + v5) = 0;
      }
    }

    v5 += 8;
  }

  while (v5 != 24);
}

uint64_t saig_HandleError(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *(DerivedStorage + 88) = a2;
    FigSemaphoreSignal();
  }

  return a2;
}

uint64_t saig_AlternatesComparator(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  v5 = 1;
  v6 = -1;
  v7 = 1;
  if (PeakBitRate <= v4)
  {
    v7 = -1;
  }

  if (v4)
  {
    v6 = v7;
  }

  if (PeakBitRate)
  {
    v5 = v6;
  }

  if (PeakBitRate == v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t saig_SetAlternate(uint64_t a1, const void *a2, __int128 *a3, __int128 *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v30 = *a4;
  v31 = *(a4 + 2);
  v32 = *MEMORY[0x1E6960C70];
  v33 = *(MEMORY[0x1E6960C70] + 16);
  v34 = v32;
  v35 = v33;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 96);
  if (!v8)
  {
    return 0;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 136);
  v23 = *a3;
  v24 = *(a3 + 2);
  v21 = *a4;
  v22 = *(a4 + 2);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11)
  {
    return 4294954514;
  }

  v28 = v23;
  v29 = v24;
  v26 = v21;
  v27 = v22;
  result = v11(v8, a2, v10, 0, 0, 1, &v28, &v26, &v30, &v25 + 4, &v25, v9 + 536);
  if (result)
  {
    return result;
  }

  if ((BYTE4(v25) & 3u) > 1)
  {
    if ((BYTE4(v25) & 3) == 3)
    {
      v13 = 0;
      v14 = 2;
    }

    else
    {
      v14 = 1;
      v13 = 1;
    }
  }

  else
  {
    if ((v25 & 0x300000000) == 0)
    {
      goto LABEL_12;
    }

    v13 = 0;
    v14 = 1;
  }

  *(v9 + 344) = v14;
  *(v9 + 360) = v13;
LABEL_12:
  v15 = *(v9 + 144);
  *(v9 + 144) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (HIDWORD(v25) == *(v9 + 352))
  {
    return 0;
  }

  v16 = 0;
  v17 = v9 + 176;
  do
  {
    if (((HIDWORD(v25) >> v16) & 1) == 0)
    {
      v18 = *(v17 + 8 * v16);
      if (v18)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v19)
        {
          v19(v18, 0);
        }

        FigStopForwardingMediaServicesProcessDeathNotification();
        v20 = *(v17 + 8 * v16);
        if (v20)
        {
          CFRelease(v20);
          *(v17 + 8 * v16) = 0;
        }
      }
    }

    ++v16;
  }

  while (v16 != 3);
  result = 0;
  *(v9 + 352) = HIDWORD(v25);
  return result;
}

void saig_deleteTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(a2 + 144))
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = *(a2 + 24);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v6)
      {
        v6(v4, v5, 0, 0);
      }
    }

    *(a2 + 144) = 1;
  }

  saig_ReleaseRenderPipelineForTrack(a2);
  v7 = *(DerivedStorage + 320);
  if (v7 == a2)
  {
    v10 = DerivedStorage + 320;
    v16 = *(v7 + 8);
    *(DerivedStorage + 320) = v16;
    if (!v16)
    {
LABEL_9:
      *(DerivedStorage + 328) = v10;
    }
  }

  else
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 8);
    }

    while (v7 != a2);
    v9 = *(v7 + 8);
    *(v8 + 8) = v9;
    v10 = v8 + 8;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    *(a2 + 40) = 0;
    CFRelease(v11);
  }

  v12 = *(a2 + 56);
  if (v12)
  {
    CFRelease(v12);
    *(a2 + 56) = 0;
  }

  v13 = *(a2 + 152);
  if (v13)
  {
    CFRelease(v13);
    *(a2 + 152) = 0;
  }

  v14 = *(a2 + 208);
  if (v14)
  {
    CFRelease(v14);
    *(a2 + 208) = 0;
  }

  v15 = *(a2 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  free(a2);
}

void saig_ReleaseRenderPipelineForTrack(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (*(a1 + 192))
  {
    FigBufferQueueRelease();
    *(a1 + 192) = 0;
  }

  if (*(a1 + 184))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(a1 + 184));
    v3 = *(CMBaseObjectGetVTable() + 8);
    if (*v3 >= 2uLL)
    {
      v4 = v3[8];
      if (v4)
      {
        v4(FigBaseObject);
      }
    }

    v5 = FigRenderPipelineGetFigBaseObject(*(a1 + 184));
    if (v5)
    {
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    CFRelease(*(a1 + 184));
    *(a1 + 184) = 0;
  }

  v8 = *(a1 + 216);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 216) = 0;
  }

  v9 = *(a1 + 224);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 224) = 0;
  }
}

uint64_t saig_handleRenderPipelineDecodeErrorNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FAIGCommon_handleRenderPipelineDecodeErrorNotification(a1, a2, a3, a4, a5);

  return FigSemaphoreSignal();
}

uint64_t saig_CancelAllCGImageAsyncRequests()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    saig_CancelAllCGImageAsyncRequests_cold_1(&v3);
    v1 = v3;
  }

  else
  {
    saig_CancelAllRequests(DerivedStorage);
    if (*(DerivedStorage + 624))
    {
      FigSemaphoreSignal();
    }

    v1 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v1;
}

uint64_t saig_processImageRequestThread(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v44 = *MEMORY[0x1E6960C70];
  v48 = *MEMORY[0x1E6960C70];
  v43 = *(MEMORY[0x1E6960C70] + 16);
  v49 = v43;
  valuePtr = -1;
  if (FigSemaphoreWaitRelative() != -12792)
  {
    v4 = *MEMORY[0x1E695E480];
    v45 = a1;
    while (1)
    {
      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_2;
      }

      FigSimpleMutexLock();
      valuePtr = 9000000000;
      v5 = *(DerivedStorage + 40);
      if (!v5)
      {
        *(DerivedStorage + 56) = 0;
        FigSimpleMutexUnlock();
        return 0;
      }

      FigSimpleMutexUnlock();
      v6 = *(v5 + 40);
      if (v6)
      {
        Value = CFDictionaryGetValue(v6, @"TimeoutInterval");
        if (Value)
        {
          v8 = Value;
          v9 = CFGetTypeID(Value);
          if (v9 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v8, kCFNumberSInt64Type, &valuePtr);
          }
        }

        v10 = CFDictionaryGetValue(*(v5 + 40), @"RequestID");
        v11 = v10;
        if (v10)
        {
          CFRetain(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      if (!*(v5 + 8) && !FigRetainProxyIsInvalidated())
      {
        break;
      }

      v12 = 0;
      v13 = -12432;
LABEL_17:
      FigSimpleMutexLock();
      v14 = **(DerivedStorage + 40);
      *(DerivedStorage + 40) = v14;
      if (!v14)
      {
        *(DerivedStorage + 48) = DerivedStorage + 40;
      }

      FigSimpleMutexUnlock();
      FAIGCommon_releaseImageRequest(v5);
      *&v46.value = v48;
      v46.epoch = v49;
      v51 = v13;
      keys[0] = 0;
      keys[1] = 0;
      v55 = 0;
      values = 0;
      v53[0] = 0;
      v53[1] = 0;
      v15 = CMBaseObjectGetDerivedStorage();
      if (v13)
      {
        keys[0] = @"Result";
        values = CFNumberCreate(v4, kCFNumberSInt32Type, &v51);
        v16 = 1;
        v17 = kFigAssetImageGeneratorNotification_FailedToGenerateCGImage;
      }

      else
      {
        if (v12)
        {
          keys[0] = @"CGImage";
          values = CFRetain(v12);
          v18 = &keys[1];
          p_values = v53;
          v16 = 2;
        }

        else
        {
          v18 = keys;
          p_values = &values;
          v16 = 1;
        }

        *v18 = @"FigTime";
        time = v46;
        *p_values = CMTimeCopyAsDictionary(&time, v4);
        v17 = kFigAssetImageGeneratorNotification_DidGenerateCGImage;
      }

      v24 = *v17;
      if (v11)
      {
        keys[v16] = @"RequestID";
        v53[v16++ - 1] = CFRetain(v11);
      }

      v25 = CFDictionaryCreate(v4, keys, &values, v16, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v25)
      {
        v26 = v25;
        v27 = MEMORY[0x19A8D0E00](v15 + 640);
        if (v27)
        {
          v28 = v27;
          v29 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00406B48E91AuLL);
          if (v29)
          {
            v30 = v29;
            if (v24)
            {
              v31 = CFRetain(v24);
            }

            else
            {
              v31 = 0;
            }

            v30[1] = v31;
            v30[2] = CFRetain(v26);
            *v30 = v28;
            dispatch_async_f(sSAIGNotificationQueue, v30, saig_postNotificationAsynchronously);
          }

          else
          {
            CFRelease(v28);
          }
        }

        CFRelease(v26);
      }

      v32 = 0;
      v33 = 8 * v16;
      do
      {
        v34 = v53[v32 / 8 - 1];
        if (v34)
        {
          CFRelease(v34);
          v53[v32 / 8 - 1] = 0;
        }

        v32 += 8;
      }

      while (v33 != v32);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v48 = v44;
      v49 = v43;
      if (FigSemaphoreWaitRelative() == -12792)
      {
        goto LABEL_2;
      }
    }

    CMBaseObjectGetDerivedStorage();
    v20 = CMBaseObjectGetDerivedStorage();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      v23 = -12785;
      goto LABEL_76;
    }

    if (*(v20 + 624))
    {
      saig_processImageRequestThread_cold_1(keys);
      v23 = keys[0];
      if (LODWORD(keys[0]))
      {
        goto LABEL_76;
      }

      goto LABEL_61;
    }

    *(v20 + 88) = 0;
    *(v20 + 624) = v5;
    v21 = CMBaseObjectGetDerivedStorage();
    if (*(v21 + 9))
    {
      if (*(v21 + 9) != 1)
      {
        goto LABEL_61;
      }

      PumpReady = saig_RequestAnImageFromPump(v45, *(v20 + 624));
    }

    else
    {
      v22 = v21;
      if (!*(v21 + 108))
      {
        FigRetainProxyRetain();
        v36 = *(v22 + 24);
        v42 = *v22;
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v37)
        {
          v23 = v37(v36, saig_PumpTransferCallback, v42);
          if (!v23)
          {
            *(v22 + 104) = 0;
            *(v22 + 108) = 1;
            goto LABEL_61;
          }
        }

        else
        {
          v23 = -12782;
        }

        FigRetainProxyRelease();
        goto LABEL_76;
      }

      if (*(v21 + 104))
      {
        if (!*(v21 + 144))
        {
          v23 = -12436;
LABEL_76:
          *(v20 + 624) = 0;
          FigRetainProxyUnlockMutex();
          v12 = 0;
LABEL_77:
          if (FigRetainProxyIsInvalidated())
          {
            v13 = 0;
          }

          else if (*(v5 + 8))
          {
            v13 = -12432;
          }

          else
          {
            v13 = v23;
          }

          goto LABEL_17;
        }

LABEL_61:
        FigRetainProxyUnlockMutex();
        v23 = FigSemaphoreWaitRelative();
        v38 = CMBaseObjectGetDerivedStorage();
        values = 0;
        time.value = 0;
        FigRetainProxyLockMutex();
        if (FigRetainProxyIsInvalidated())
        {
          v12 = 0;
          v23 = -12785;
          goto LABEL_72;
        }

        if (v23)
        {
          saig_CleanVideoRendersAndVisualContext();
          if (!*(v38 + 9))
          {
            saig_tearDownManifoldsAndDeleteTracks(v45);
            v39 = *(v38 + 144);
            if (v39)
            {
              CFRelease(v39);
              *(v38 + 144) = 0;
            }

            v12 = 0;
            *(v38 + 104) = 0;
            goto LABEL_72;
          }

          goto LABEL_64;
        }

        if (*(v5 + 8))
        {
          if (*(v38 + 9))
          {
            saig_CleanVideoRendersAndVisualContext();
          }

          v12 = 0;
          v23 = -12432;
          goto LABEL_72;
        }

        v23 = *(v38 + 608);
        if (!v23)
        {
          v23 = *(v38 + 88);
          if (!v23)
          {
            FigSimpleMutexLock();
            v40 = *(v38 + 560);
            if (v40)
            {
              v55 = *(v38 + 600);
              *keys = *(v38 + 584);
              v23 = FigVisualContextCopyImageForTime(v40, v4, keys, &values);
              FigSimpleMutexUnlock();
              if (v23)
              {
                goto LABEL_64;
              }

              if (values)
              {
                CGImageFromPixelBufferWithDynamicRangeConversion = FigCreateCGImageFromPixelBufferWithDynamicRangeConversion(values, 0, 0, &time);
                if (!CGImageFromPixelBufferWithDynamicRangeConversion)
                {
                  v12 = time.value;
                  if (time.value)
                  {
                    v23 = 0;
                    v48 = *(v38 + 584);
                    v49 = *(v38 + 600);
                    time.value = 0;
                  }

                  else
                  {
                    v23 = -12434;
                  }

LABEL_72:
                  *(v38 + 624) = 0;
                  *(v38 + 88) = 0;
                  FigRetainProxyUnlockMutex();
                  if (values)
                  {
                    CFRelease(values);
                  }

                  goto LABEL_77;
                }

                v23 = CGImageFromPixelBufferWithDynamicRangeConversion;
                goto LABEL_64;
              }
            }

            else
            {
              FigSimpleMutexUnlock();
            }

            v12 = 0;
            v23 = -12431;
            goto LABEL_72;
          }
        }

LABEL_64:
        v12 = 0;
        goto LABEL_72;
      }

      if (!*(v21 + 96))
      {
        goto LABEL_61;
      }

      PumpReady = saig_GetPumpReady();
    }

    v23 = PumpReady;
    if (PumpReady)
    {
      goto LABEL_76;
    }

    goto LABEL_61;
  }

LABEL_2:
  *(DerivedStorage + 56) = 0;
  return 0;
}

uint64_t saig_NewTrackNote(const void *a1, uint64_t a2, int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  v10 = 0;
  while (*(DerivedStorage + 176 + 8 * v10) != a1)
  {
    if (++v10 == 3)
    {
      v11 = 3;
      goto LABEL_6;
    }
  }

  v11 = v10;
LABEL_6:
  v12 = 1;
  if (a3 <= 1935832171)
  {
    if (a3 != 1668047728 && a3 != 1835365473)
    {
LABEL_13:
      v12 = 0;
    }
  }

  else
  {
    if (a3 != 1935832172)
    {
      if (a3 == 1986618469)
      {
        goto LABEL_15;
      }

      if (a3 == 1936684398)
      {
        v12 = 2;
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v12 = 4;
  }

LABEL_15:
  v13 = *(DerivedStorage + 320);
  v14 = 1;
  if (!v13)
  {
    goto LABEL_30;
  }

  while (1)
  {
    while (1)
    {
      v15 = v13;
      v13 = *(v13 + 8);
      if (*(v15 + 28) != a3)
      {
        goto LABEL_24;
      }

      if (*(v15 + 40) == a1)
      {
        goto LABEL_29;
      }

      if (*(v15 + 48) != *(v9 + 296 + 8 * v11))
      {
        goto LABEL_24;
      }

      v16 = *(v15 + 92);
      if (v16 == v11)
      {
        goto LABEL_24;
      }

      v17 = 1 << v16;
      if (*(v15 + 88) == 6)
      {
        break;
      }

      if (v17 == v12)
      {
        goto LABEL_29;
      }

      saig_deleteTrack(a2, v15);
      if (!v13)
      {
LABEL_28:
        v14 = 1;
        goto LABEL_30;
      }
    }

    if (v17 == v12)
    {
      v18 = *(v9 + 352);
      if ((v18 & v17) != 0 && (v18 & v12) != 0)
      {
        break;
      }
    }

LABEL_24:
    if (!v13)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v14 = 0;
LABEL_30:
  if (a3 != 1986618469 && (v19 = *(v9 + 144)) != 0 && FigAlternateIsIFrameOnly(v19) || !v14)
  {
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v33)
    {
      v33(a1, a4, 0, 0);
    }

    return 0;
  }

  v20 = CMBaseObjectGetDerivedStorage();
  v21 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1060040B7CBE5F1uLL);
  if (!v21)
  {
LABEL_56:
    saig_NewTrackNote_cold_1(&v37);
    return v37;
  }

  v22 = v21;
  v23 = *MEMORY[0x1E695E480];
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  if (CMBufferQueueCreate(v23, 0, CallbacksForUnsortedSampleBuffers, v22 + 7))
  {
    free(v22);
    goto LABEL_56;
  }

  v25 = *(v20 + 336) + 1;
  *(v20 + 336) = v25;
  *v22 = a2;
  v22[2] = v25;
  *(v22 + 6) = a4;
  v26 = MEMORY[0x1E6960C70];
  v36 = *MEMORY[0x1E6960C70];
  *(v22 + 4) = *MEMORY[0x1E6960C70];
  v27 = *(v26 + 16);
  v22[10] = v27;
  v28 = CFRetain(a1);
  *(v22 + 92) = v11;
  v29 = *(v20 + 8 * v11 + 296);
  v22[5] = v28;
  v22[6] = v29;
  v22[17] = v27;
  *(v22 + 15) = v36;
  *(v22 + 58) = 1065353216;
  *(v22 + 7) = a3;
  v30 = MEMORY[0x1E6960CC0];
  v22[22] = *(MEMORY[0x1E6960CC0] + 16);
  *(v22 + 10) = *v30;
  v22[25] = -1;
  v22[1] = 0;
  **(v20 + 328) = v22;
  *(v20 + 328) = v22 + 1;
  v31 = 1;
  if (a3 <= 1935832171)
  {
    if (a3 == 1668047728 || a3 == 1835365473)
    {
      goto LABEL_49;
    }
  }

  else
  {
    switch(a3)
    {
      case 1935832172:
        goto LABEL_49;
      case 1936684398:
        goto LABEL_48;
      case 1986618469:
        v32 = *(v20 + 144);
        if (v32)
        {
          v31 = FigAlternateIsIFrameOnly(v32) != 0;
          goto LABEL_49;
        }

LABEL_48:
        v31 = 0;
LABEL_49:
        *(v22 + 93) = v31;
        break;
    }
  }

  v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v35)
  {
    return 4294954514;
  }

  return v35(a1, a4, kManifoldOutputCallbacks_0, v22);
}

uint64_t saig_TrackEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 144))
  {
    v6 = *(a3 + 40);
    if (v6)
    {
      v7 = *(a3 + 24);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v8)
      {
        v8(v6, v7, 0, 0);
      }
    }

    *(a3 + 144) = 1;
  }

  return a4;
}

uint64_t saig_ensureDecryptorIsReady(uint64_t a1)
{
  v7 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2 || (v3 = v2(a1, &v7), v3 == -12782))
  {
    cf = 0;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v3 = v4(a1, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &cf);
      if (!v3)
      {
        if (*MEMORY[0x1E695E4C0] == cf)
        {
          v3 = 4294954431;
        }

        else
        {
          v3 = 0;
        }

        CFRelease(cf);
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return v3;
}

uint64_t saig_AdjustTime(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetPresentationTimeStamp(&lhs, a1);
  rhs = *(a2 + 64);
  CMTimeAdd(&v9, &lhs, &rhs);
  lhs = v9;
  memset(&rhs, 0, sizeof(rhs));
  CMSampleBufferGetOutputDuration(&rhs, a1);
  if ((rhs.flags & 0x1D) == 1)
  {
    time1 = lhs;
    v5 = rhs;
    CMTimeAdd(&lhs, &time1, &v5);
  }

  time1 = *(a2 + 120);
  v5 = lhs;
  if (CMTimeCompare(&time1, &v5) < 0)
  {
    *(a2 + 120) = lhs;
  }

  time1 = v9;
  return CMSampleBufferSetOutputPresentationTimeStamp(a1, &time1);
}

uint64_t saig_decodedImageBecameAvailable(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  FAIGCommon_decodedImageBecameAvailable(a1, &v5, a3, a4);
  return FigSemaphoreSignal();
}

uint64_t saig_CleanVideoRendersAndVisualContext()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 320);
  if (v1)
  {
    v2 = MEMORY[0x1E6960C70];
    do
    {
      if (*(v1 + 28) == 1986618469 && *(v1 + 93))
      {
        saig_ReleaseRenderPipelineForTrack(v1);
        *(v1 + 120) = *v2;
        *(v1 + 136) = *(v2 + 16);
        *(v1 + 232) = 1065353216;
      }

      v1 = *(v1 + 8);
    }

    while (v1);
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 560);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 560) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigVisualContextCopyImageForTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  return v8(a1, a2, &v10, 3, a4, 0, 0);
}

void saig_postNotificationAsynchronously(uint64_t a1)
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

__n128 OUTLINED_FUNCTION_1_47()
{
  result = v0[6];
  *(v1 - 144) = result;
  *(v1 - 128) = v0[7].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_4_40()
{
  result = *(v0 + 120);
  *(v1 - 112) = result;
  *(v1 - 96) = *(v0 + 136);
  return result;
}

__n128 OUTLINED_FUNCTION_9_19()
{
  result = *(v0 - 112);
  *(v0 - 208) = result;
  *(v0 - 192) = *(v0 - 96);
  return result;
}

__n128 OUTLINED_FUNCTION_10_19()
{
  *(v0 - 240) = *(v0 - 112);
  *(v0 - 224) = *(v0 - 96);
  return *(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_14_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30)
{
  v31 = *a30;

  return FigRenderPipelineGetFigBaseObject(v31);
}

__n128 OUTLINED_FUNCTION_17_9()
{
  result = *(v1 - 112);
  v0[4] = result;
  v0[5].n128_u64[0] = *(v1 - 96);
  return result;
}

__n128 OUTLINED_FUNCTION_18_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a33, uint64_t a34)
{
  result = a33;
  *(v34 - 144) = a33;
  *(v34 - 128) = a34;
  return result;
}

__n128 OUTLINED_FUNCTION_20_7()
{
  result = v0[4];
  *(v1 - 144) = result;
  *(v1 - 128) = v0[5].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_21_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __n128 a61, uint64_t a62)
{
  result = a61;
  *(v62 - 112) = a61;
  *(v62 - 96) = a62;
  return result;
}

__n128 OUTLINED_FUNCTION_23_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __n128 a47, uint64_t a48)
{
  result = a47;
  *(v48 - 112) = a47;
  *(v48 - 96) = a48;
  return result;
}

__n128 OUTLINED_FUNCTION_25_9()
{
  result = *(v0 + 12);
  *(v1 - 144) = result;
  *(v1 - 128) = *(v0 + 28);
  return result;
}

__n128 OUTLINED_FUNCTION_28_9()
{
  result = *(v0 - 144);
  *(v0 - 176) = result;
  *(v0 - 160) = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_8()
{

  return CMNotificationCenterAddListener();
}

uint64_t FigBufferedAirPlaySubPipeManagerGetClassID()
{
  if (qword_1ED4CA7E8 != -1)
  {
    FigBufferedAirPlaySubPipeManagerGetClassID_cold_1();
  }

  return qword_1ED4CA7F0;
}

uint64_t __FigBufferedAirPlaySubPipeManagerGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlaySubPipeManagerGetTypeID()
{
  if (qword_1ED4CA7E8 != -1)
  {
    FigBufferedAirPlaySubPipeManagerGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t __FigBufferedAirPlaySubPipeManagerCreate_block_invoke()
{
  dword_1ED4CA7E4 = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceBooleanWithDefault();
  _MergedGlobals_39 = result;
  return result;
}

__CFString *fbapspManager_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlaySubPipeManagert %p>", a1);
  return Mutable;
}

uint64_t fbapspManager_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_setProperty_block_invoke;
  block[3] = &unk_1E7482C18;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void __fbapspManager_invalidate_block_invoke_3(uint64_t a1)
{
  v2 = fbapspManager_clearCurrentSubPipe(*(a1 + 40), 0, 1);
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  *(*(*(a1 + 32) + 8) + 24) = 0;

  fbapspManager_setProcessingState(v3, 1);
}

void fbapspManager_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_180;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

uint64_t fbapspManager_setSubPipeTerminationInFlight(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 152) != a2)
  {
    *(result + 152) = a2;
    CMBaseObjectGetDerivedStorage();

    return fbapspManager_dataFlowIsAllowed();
  }

  return result;
}

void fbapspManager_scheduleProcessingDataIfPossible(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (fbapspManager_dataFlowIsAllowed())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    v3 = *(DerivedStorage + 88);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __fbapspManager_dequeueInspectSendSampleBuffer_block_invoke;
    v4[3] = &__block_descriptor_tmp_184;
    v4[4] = DerivedStorage;
    v4[5] = a1;
    dispatch_async(v3, v4);
  }
}

uint64_t fbapspManager_dataFlowIsAllowed()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 120);
  if (v2)
  {
    v3 = *(DerivedStorage + 104);
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v2)
    {
      LODWORD(v2) = v2(v3) != 0;
    }
  }

  v4 = *(v1 + 56) != -999999.875 && *(v1 + 152) == 0;
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((*(v1 + 268) & 1) != 0 && *(v1 + 156) == 3)
  {
    v5 = 0;
  }

  if (*(v1 + 72) == 3)
  {
    v5 = 0;
  }

  if (*(v1 + 576))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (*(v1 + 577))
  {
    v5 = v6;
  }

  return *(v1 + 576) || v5;
}

opaqueCMSampleBuffer *fbapspManager_dequeueInspectSendSampleBufferInternal(const void *a1)
{
  v205 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  p_epoch = &rhs.epoch;
  v161 = &time1.epoch;
  v3 = 5;
  v165 = @"SubPipeTypePassthrough";
  v169 = @"SBUFForAutoOrder";
  v168 = *MEMORY[0x1E695E4D0];
  allocator = *MEMORY[0x1E695E480];
  key = *MEMORY[0x1E6960558];
  *&v4 = 136316162;
  *v159 = v4;
  *&v4 = 136315650;
  v155 = v4;
  *&v4 = 136315906;
  *v158 = v4;
  v157 = *MEMORY[0x1E6960560];
  v163 = @"SubPipeType";
  v166 = *MEMORY[0x1E6962E00];
  v167 = *MEMORY[0x1E6962DF8];
  v162 = @"SubPipeTypeTranscode";
  v5 = MEMORY[0x1E6960C70];
  while (1)
  {
    result = fbapspManager_dataFlowIsAllowed();
    if (!result)
    {
      return result;
    }

    v7 = *(DerivedStorage + 608);
    result = (v7 ? CFRetain(v7) : CMBufferQueueCopyHead(*(DerivedStorage + 128)));
    v8 = result;
    if (!result)
    {
      return result;
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&time1, result);
    v9 = CMBaseObjectGetDerivedStorage();
    v10 = *v5;
    *&v177.value = v10;
    v11 = *(v5 + 2);
    v177.epoch = v11;
    *&v175.value = v10;
    v175.epoch = v11;
    HIBYTE(v174) = 0;
    cf = 0;
    v185 = *v5;
    v186 = *(v5 + 2);
    *&v171.value = v10;
    v171.epoch = v11;
    if (*(v9 + 456))
    {
      goto LABEL_39;
    }

    v12 = v9;
    if (*(v9 + 56) == -999999.875)
    {
      fbapspManager_dequeueInspectSendSampleBufferInternal_cold_1();
      goto LABEL_39;
    }

    *v170 = v10;
    CMSampleBufferGetOutputPresentationTimeStamp(&v177, v8);
    v13 = CMBaseObjectGetDerivedStorage();
    *&time1.value = *v170;
    time1.epoch = v11;
    if (CMGetAttachment(v8, @"FlushRangeEnd", 0))
    {
      if (!*(v13 + 576))
      {
        v18 = 2;
        v17 = 1;
        goto LABEL_22;
      }

      v14 = *(v13 + 120);
      if (*(v13 + 156) == 4)
      {
        if (v14)
        {
          if (*(v13 + 556))
          {
            CMTimeMake(&rhs, 1, 480000);
            lhs = *(v13 + 544);
            CMTimeAdd(&time1, &lhs, &rhs);
          }

          rhs = time1;
          if (!CMSampleBufferSetOutputPresentationTimeStamp(v8, &rhs))
          {
            CMSetAttachment(v8, v169, v168, 0);
            goto LABEL_17;
          }

LABEL_37:
          v18 = 3;
          goto LABEL_23;
        }

LABEL_17:
        v15 = *(v13 + 112);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v16)
        {
          v16(v15, v8);
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_17;
        }

        CMBufferQueueEnqueue(*(v13 + 208), v8);
      }

      *(v13 + 153) = 0;
      if (!fbapspManager_prepareSubPipeToStop(a1, v8, 1))
      {
        v17 = 0;
        *(v13 + 576) = 0;
        v18 = 3;
LABEL_22:
        *(v13 + 577) = v17;
        goto LABEL_23;
      }

      goto LABEL_37;
    }

    v23 = CMBaseObjectGetDerivedStorage();
    *&v182.value = *v170;
    v182.epoch = v11;
    memset(&v181, 0, sizeof(v181));
    CMTimeMake(&v181, 10, 1000000);
    memset(&v180, 0, sizeof(v180));
    CMTimeMake(&v180, 1000, 1000000);
    v179 = 0;
    v178 = 0;
    v154 = v23;
    if (*(v23 + 576))
    {
      goto LABEL_164;
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&time1, v8);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    *&v153 = time1.epoch;
    CMSampleBufferGetOutputDuration(&time1, v8);
    v195 = time1.value;
    v196 = time1.timescale;
    v18 = 1;
    DWORD2(v153) = flags;
    if ((flags & 1) == 0)
    {
      goto LABEL_165;
    }

    v25 = time1.flags;
    epoch = time1.epoch;
    time1.value = value;
    time1.timescale = timescale;
    time1.flags = flags;
    time1.epoch = v153;
    rhs.value = v195;
    rhs.timescale = v196;
    rhs.flags = v25;
    rhs.epoch = epoch;
    CMTimeAdd(&v182, &time1, &rhs);
    v27 = v154;
    if (*(v154 + 384) == 2 && (*(v154 + 292) & 1) != 0)
    {
      time1 = v182;
      lhs = *(v154 + 280);
      CMTimeSubtract(&rhs, &time1, &lhs);
      CMTimeAbsoluteValue(&time1, &rhs);
      rhs = v180;
      if (CMTimeCompare(&time1, &rhs) <= 0)
      {
        if (dword_1EAF16F18)
        {
          LODWORD(lhs.value) = 0;
          LOBYTE(time2.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v29 = lhs.value;
          v152 = os_log_and_send_and_compose_flags_and_os_log_type;
          LODWORD(v151) = LOBYTE(time2.value);
          v30 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value);
          v31 = v29 & 0xFFFFFFFE;
          if (v30)
          {
            v31 = v29;
          }

          if (v31)
          {
            HIDWORD(v150) = v31;
            if (a1)
            {
              v32 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v32 = "";
            }

            time1 = v182;
            Seconds = CMTimeGetSeconds(&time1);
            time1 = *(v154 + 280);
            v34 = CMTimeGetSeconds(&time1);
            LODWORD(rhs.value) = v159[0];
            *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = a1;
            HIWORD(rhs.epoch) = 2082;
            v188 = v32;
            *v189 = 2048;
            *&v189[2] = Seconds;
            v190 = 2048;
            v191 = v34;
            LODWORD(v149) = 52;
            p_rhs = &rhs;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v27 = v154;
        }
      }
    }

    if ((*(v27 + 268) & 1) == 0)
    {
      goto LABEL_75;
    }

    v35 = *(v27 + 384);
    if (v35 == 2)
    {
      time1 = *(v27 + 256);
      rhs = v182;
      if (CMTimeCompare(&time1, &rhs) > 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v35 != 1)
      {
        goto LABEL_75;
      }

      time1 = *(v27 + 256);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = DWORD2(v153);
      lhs.epoch = v153;
      CMTimeSubtract(&rhs, &time1, &lhs);
      CMTimeAbsoluteValue(&time1, &rhs);
      rhs = v181;
      if (CMTimeCompare(&time1, &rhs) >= 1)
      {
        if (*(v27 + 156) == 1)
        {
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = DWORD2(v153);
          time1.epoch = v153;
          rhs = *(v27 + 256);
          if (CMTimeCompare(&time1, &rhs) < 0)
          {
            if (dword_1EAF16F18)
            {
              LODWORD(lhs.value) = 0;
              LOBYTE(time2.value) = 0;
              v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v37 = lhs.value;
              LODWORD(v154) = LOBYTE(time2.value);
              v38 = os_log_type_enabled(v36, time2.value);
              v39 = v37 & 0xFFFFFFFE;
              if (v38)
              {
                v39 = v37;
              }

              LODWORD(v152) = v39;
              if (v39)
              {
                if (a1)
                {
                  v40 = CMBaseObjectGetDerivedStorage();
                }

                else
                {
                  v40 = "";
                }

                time1.value = value;
                time1.timescale = timescale;
                time1.flags = DWORD2(v153);
                time1.epoch = v153;
                v83 = CMTimeGetSeconds(&time1);
                LODWORD(rhs.value) = v158[0];
                *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = a1;
                HIWORD(rhs.epoch) = 2082;
                v188 = v40;
                *v189 = 2048;
                *&v189[2] = v83;
                LODWORD(v149) = 42;
                p_rhs = &rhs;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

LABEL_153:
            v18 = 2;
            goto LABEL_165;
          }
        }

LABEL_75:
        if (*(v27 + 156) == 5)
        {
          if (dword_1EAF16F18)
          {
            LODWORD(lhs.value) = 0;
            LOBYTE(time2.value) = 0;
            v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v52 = lhs.value;
            DWORD2(v153) = LOBYTE(time2.value);
            v53 = os_log_type_enabled(v51, time2.value);
            v54 = v52 & 0xFFFFFFFE;
            if (v53)
            {
              v54 = v52;
            }

            if (v54)
            {
              LODWORD(v153) = v54;
              v55 = "";
              if (a1)
              {
                v55 = CMBaseObjectGetDerivedStorage();
              }

              time1 = v182;
              v56 = CMTimeGetSeconds(&time1);
              LODWORD(rhs.value) = v158[0];
              *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = a1;
              HIWORD(rhs.epoch) = 2082;
              v188 = v55;
              *v189 = 2048;
              *&v189[2] = v56;
              LODWORD(v149) = 42;
              p_rhs = &rhs;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v27 = v154;
          }

          fbapspManager_findSubPipeTypeForSbuf(a1, v8, &v178);
          if (v178 || *(v27 + 384) == 2 || !FigGetCFPreferenceNumberWithDefault())
          {
            v57 = *(v27 + 616);
            if (v57)
            {
              CFRelease(v57);
              *(v27 + 616) = 0;
            }

            v58 = bapspManager_copyDePrimingSampleBufferWithFullTrim(v8);
            *(v27 + 616) = v58;
            if (!v58 || !fbapspManager_retimeSampleBufferIfNeeded(a1, v58))
            {
              v18 = 1;
              if (fbapspManager_prepareSubPipeToStop(a1, v8, 1))
              {
                goto LABEL_165;
              }

              fbapspManager_setProcessingState(a1, 1);
              goto LABEL_153;
            }
          }

          else
          {
            if (dword_1EAF16F18)
            {
              LODWORD(lhs.value) = 0;
              LOBYTE(time2.value) = 0;
              v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v76 = lhs.value;
              LODWORD(v154) = LOBYTE(time2.value);
              v77 = os_log_type_enabled(v75, time2.value);
              v78 = v76 & 0xFFFFFFFE;
              if (v77)
              {
                v78 = v76;
              }

              DWORD2(v153) = v78;
              if (v78)
              {
                v84 = "";
                if (a1)
                {
                  v84 = CMBaseObjectGetDerivedStorage();
                }

                LODWORD(rhs.value) = v155;
                *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = a1;
                HIWORD(rhs.epoch) = 2082;
                v188 = v84;
                LODWORD(v149) = 32;
                p_rhs = &rhs;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            fbapspManager_setProcessingState(a1, 2);
          }
        }

        else if (*(v27 + 292))
        {
          v46 = (v27 + 280);
          time1 = v182;
          rhs = *(v27 + 280);
          if ((CMTimeCompare(&time1, &rhs) & 0x80000000) == 0 && *(v27 + 156) == 4 && *(v27 + 384) == 2 && *(v27 + 120) && !*(v27 + 153))
          {
            if (dword_1EAF16F18)
            {
              LODWORD(lhs.value) = 0;
              LOBYTE(time2.value) = 0;
              v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v48 = lhs.value;
              v154 = v47;
              DWORD2(v153) = LOBYTE(time2.value);
              v49 = os_log_type_enabled(v47, time2.value);
              v50 = v48 & 0xFFFFFFFE;
              if (v49)
              {
                v50 = v48;
              }

              LODWORD(v153) = v50;
              if (v50)
              {
                v85 = "";
                if (a1)
                {
                  v85 = CMBaseObjectGetDerivedStorage();
                }

                time1 = v182;
                v86 = CMTimeGetSeconds(&time1);
                time1 = *v46;
                v87 = CMTimeGetSeconds(&time1);
                LODWORD(rhs.value) = v159[0];
                *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = a1;
                HIWORD(rhs.epoch) = 2082;
                v188 = v85;
                *v189 = 2048;
                *&v189[2] = v86;
                v190 = 2048;
                v191 = v87;
                LODWORD(v149) = 52;
                p_rhs = &rhs;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            fbapspManager_setTimelineMilestoneOnSubPipeWithOverlapEndTime(a1);
          }
        }

LABEL_164:
        v18 = 1;
        goto LABEL_165;
      }
    }

    if ((*(v27 + 156) - 1) > 1)
    {
      goto LABEL_75;
    }

    if (dword_1EAF16F18)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(time2.value) = 0;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = lhs.value;
      v43 = os_log_type_enabled(v41, time2.value);
      v44 = v42 & 0xFFFFFFFE;
      if (v43)
      {
        v44 = v42;
      }

      if (v44)
      {
        if (a1)
        {
          v45 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v45 = "";
        }

        time1 = v182;
        v59 = CMTimeGetSeconds(&time1);
        LODWORD(rhs.value) = v158[0];
        *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = a1;
        HIWORD(rhs.epoch) = 2082;
        v188 = v45;
        *v189 = 2048;
        *&v189[2] = v59;
        LODWORD(v149) = 42;
        p_rhs = &rhs;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v60 = CMBaseObjectGetDerivedStorage();
    v61 = *(v60 + 616);
    if (v61)
    {
      CFRelease(v61);
      *(v60 + 616) = 0;
    }

    v62 = *(v60 + 608);
    if (v62)
    {
      CFRelease(v62);
      *(v60 + 608) = 0;
    }

    *(&v153 + 1) = v60;
    v63 = CMBaseObjectGetDerivedStorage();
    *&time1.value = *v170;
    time1.epoch = v11;
    *&rhs.value = *v170;
    rhs.epoch = v11;
    sampleBufferOut = 0;
    *&v153 = v63;
    if (*(v63 + 268))
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v8);
      v203 = lhs.value;
      v64 = lhs.flags;
      v204 = lhs.timescale;
      v65 = lhs.epoch;
      CMSampleBufferGetOutputDuration(&time1, v8);
      time2.value = v203;
      time2.timescale = v204;
      time2.flags = v64;
      time2.epoch = v65;
      v199 = time1;
      CMTimeAdd(&lhs, &time2, &v199);
      v199.value = lhs.value;
      v199.timescale = lhs.timescale;
      if (v64)
      {
        LODWORD(v152) = lhs.flags;
        v151 = lhs.epoch;
        lhs.value = v203;
        lhs.timescale = v204;
        lhs.flags = v64;
        lhs.epoch = v65;
        time2 = *(v153 + 256);
        if (CMTimeCompare(&lhs, &time2) < 0)
        {
          lhs = *(v153 + 256);
          time2.value = v199.value;
          time2.timescale = v199.timescale;
          time2.flags = v152;
          time2.epoch = v151;
          if (CMTimeCompare(&lhs, &time2) < 0)
          {
            lhs.value = v199.value;
            lhs.timescale = v199.timescale;
            lhs.flags = v152;
            lhs.epoch = v151;
            time2 = *(v153 + 256);
            CMTimeSubtract(&rhs, &lhs, &time2);
            lhs = rhs;
            time2 = **&MEMORY[0x1E6960CC0];
            if (CMTimeCompare(&lhs, &time2) >= 1)
            {
              v79 = CFGetAllocator(v8);
              if (!CMSampleBufferCreateCopy(v79, v8, &sampleBufferOut))
              {
                lhs = rhs;
                v80 = CMTimeCopyAsDictionary(&lhs, allocator);
                CMSetAttachment(sampleBufferOut, key, v80, 1u);
                CMSampleBufferGetPresentationTimeStamp(&lhs, sampleBufferOut);
                CMSampleBufferGetOutputPresentationTimeStamp(&lhs, sampleBufferOut);
                CMSampleBufferGetOutputDuration(&lhs, sampleBufferOut);
                time1 = lhs;
                if (v80)
                {
                  CFRelease(v80);
                }
              }
            }
          }
        }
      }
    }

    v66 = sampleBufferOut;
    *(*(&v153 + 1) + 616) = sampleBufferOut;
    if (!v66 || !fbapspManager_retimeSampleBufferIfNeeded(a1, v66))
    {
      v67 = CMBaseObjectGetDerivedStorage();
      *&time1.value = *v170;
      time1.epoch = v11;
      *&rhs.value = *v170;
      rhs.epoch = v11;
      sbuf = 0;
      *&v153 = v67;
      if (*(v67 + 268))
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v8);
        v203 = lhs.value;
        v68 = lhs.flags;
        v204 = lhs.timescale;
        v69 = lhs.epoch;
        CMSampleBufferGetOutputDuration(&time1, v8);
        time2.value = v203;
        time2.timescale = v204;
        time2.flags = v68;
        v152 = v69;
        time2.epoch = v69;
        v199 = time1;
        CMTimeAdd(&lhs, &time2, &v199);
        sampleBufferOut = lhs.value;
        v202 = lhs.timescale;
        if (v68)
        {
          v70 = lhs.flags;
          v151 = lhs.epoch;
          lhs.value = v203;
          lhs.timescale = v204;
          lhs.flags = v68;
          lhs.epoch = v152;
          time2 = *(v153 + 256);
          if (CMTimeCompare(&lhs, &time2) < 0)
          {
            lhs = *(v153 + 256);
            time2.value = sampleBufferOut;
            time2.timescale = v202;
            time2.flags = v70;
            time2.epoch = v151;
            if (CMTimeCompare(&lhs, &time2) < 0)
            {
              lhs = *(v153 + 256);
              time2.value = v203;
              time2.timescale = v204;
              time2.flags = v68;
              time2.epoch = v152;
              CMTimeSubtract(&rhs, &lhs, &time2);
              lhs = rhs;
              time2 = **&MEMORY[0x1E6960CC0];
              if (CMTimeCompare(&lhs, &time2) >= 1)
              {
                v81 = CFGetAllocator(v8);
                if (!CMSampleBufferCreateCopy(v81, v8, &sbuf))
                {
                  lhs = rhs;
                  v82 = CMTimeCopyAsDictionary(&lhs, allocator);
                  CMSetAttachment(sbuf, v157, v82, 1u);
                  CMSampleBufferGetOutputPresentationTimeStamp(&time2, v8);
                  v199 = rhs;
                  CMTimeAdd(&lhs, &time2, &v199);
                  v204 = lhs.timescale;
                  v203 = lhs.value;
                  CMSampleBufferSetOutputPresentationTimeStamp(sbuf, &lhs);
                  CMSampleBufferGetPresentationTimeStamp(&lhs, sbuf);
                  CMSampleBufferGetOutputDuration(&lhs, sbuf);
                  time1 = lhs;
                  if (v82)
                  {
                    CFRelease(v82);
                  }
                }
              }
            }
          }
        }
      }

      *(*(&v153 + 1) + 608) = sbuf;
    }

    v71 = *(v154 + 120);
    if (v71)
    {
      CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v71);
      v73 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v73)
      {
        goto LABEL_164;
      }

      if (v73(CMBaseObject, v163, allocator, &v179))
      {
        goto LABEL_164;
      }

      v74 = FigCFEqual() != 0;
      if (fbapspManager_prepareSubPipeToStop(a1, v8, v74))
      {
        goto LABEL_164;
      }
    }

    else
    {
      v74 = 0;
    }

    fbapspManager_setProcessingState(a1, 3);
    if (!v74 || !*(v154 + 120))
    {
      fbapspManager_postNotification(a1, @"OverlapStartTimeReached", 0);
    }

    if (*(v154 + 608))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

LABEL_165:
    if (v179)
    {
      CFRelease(v179);
    }

    if (v18 != 1)
    {
      goto LABEL_23;
    }

    v88 = CMBaseObjectGetDerivedStorage();
    if ((*(v88 + 532) & 1) == 0)
    {
      v89 = v88;
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v8);
      time2.value = time1.value;
      v90 = time1.flags;
      time2.timescale = time1.timescale;
      if (time1.flags)
      {
        v91 = time1.epoch;
        *(v89 + 520) = time2.value;
        *(v89 + 528) = time2.timescale;
        *(v89 + 532) = v90;
        *(v89 + 536) = v91;
        if ((*(v89 + 340) & 1) != 0 && (*(v89 + 364) & 1) == 0)
        {
          rhs = *(v89 + 328);
          lhs.value = time2.value;
          lhs.timescale = time2.timescale;
          lhs.flags = v90;
          lhs.epoch = v91;
          CMTimeSubtract(&time1, &rhs, &lhs);
          *(v89 + 352) = time1;
        }
      }
    }

    if (fbapspManager_retimeSampleBufferIfNeeded(a1, v8))
    {
      goto LABEL_39;
    }

    v92 = *(v12 + 120);
    if (v92)
    {
      v93 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v92);
      v94 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v94 || v94(v93, v163, allocator, &cf))
      {
        goto LABEL_39;
      }
    }

    v95 = CMBaseObjectGetDerivedStorage();
    CMSampleBufferGetOutputPresentationTimeStamp(&time1, v8);
    v96 = CMGetAttachment(v8, v167, 0);
    v97 = CMGetAttachment(v8, v166, 0);
    if (v96)
    {
      v98 = v97;
      fbapspManager_setSubPipeTerminationInFlight(a1, 1);
      v97 = v98;
      if (*(v95 + 156) == 4 && *(v95 + 384) == 2 && *(v95 + 120) && !*(v95 + 153))
      {
        time1 = *(v95 + 544);
        v147 = fbapspManager_clearAndSetTimelineMilestoneOnSubPipe(a1, &time1);
        if (v147 || !v98)
        {
          if (v147)
          {
            goto LABEL_39;
          }

          goto LABEL_184;
        }

LABEL_183:
        fbapspManager_setSubPipeTerminationInFlight(a1, 1);
        goto LABEL_184;
      }
    }

    if (v97)
    {
      goto LABEL_183;
    }

LABEL_184:
    if (*(v12 + 496))
    {
      v100 = CMBaseObjectGetDerivedStorage();
      v199.value = 0;
      LOBYTE(v182.value) = 0;
      if (*(v100 + 496))
      {
        v101 = v100;
        v102 = *(v100 + 120);
        if (v102)
        {
          v103 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v102);
          v104 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v104)
          {
            v104(v103, v163, allocator, &v199);
          }
        }

        CMSampleBufferGetOutputDuration(&time1, v8);
        time2.value = time1.value;
        v105 = time1.flags;
        time2.timescale = time1.timescale;
        if (time1.flags)
        {
          time1.value = time2.value;
          time1.timescale = time2.timescale;
          *(&v153 + 1) = time1.epoch;
          rhs = **&MEMORY[0x1E6960CC0];
          if (CMTimeCompare(&time1, &rhs) >= 1)
          {
            v154 = v101;
            v106 = (v101 + 460);
            rhs = *v106;
            lhs.value = time2.value;
            lhs.timescale = time2.timescale;
            lhs.flags = v105;
            lhs.epoch = *(&v153 + 1);
            CMTimeAdd(&time1, &rhs, &lhs);
            *v106 = time1;
            v101 = v154;
          }
        }

        if (*(v101 + 120) && ((*(v101 + 472) & 1) == 0 || (time1 = *(v101 + 460), rhs = *(v101 + 484), CMTimeCompare(&time1, &rhs) < 1)))
        {
          v109 = v101;
          v110 = 0;
        }

        else
        {
          v107 = MEMORY[0x1E6960CC0];
          *(v101 + 460) = *MEMORY[0x1E6960CC0];
          *(v101 + 476) = *(v107 + 16);
          if (*(v101 + 508) == 2)
          {
            if (FigCFEqual())
            {
              v108 = 4;
            }

            else
            {
              v108 = 3;
            }

            v109 = v101;
            *(v101 + 508) = v108;
          }

          else
          {
            v109 = v101;
          }

          v110 = 1;
        }

        v111 = *(v109 + 508);
        switch(v111)
        {
          case 3:
            v112 = 0;
            SubPipeTypeForSbuf = v162;
            break;
          case 4:
            v112 = 0;
            SubPipeTypeForSbuf = v165;
            break;
          case 1:
            SubPipeTypeForSbuf = fbapspManager_findSubPipeTypeForSbuf(a1, v8, &v182);
            v112 = LOBYTE(v182.value) != 0;
            break;
          default:
            v112 = 0;
            SubPipeTypeForSbuf = 0;
            break;
        }

        HIBYTE(v174) = (v110 | v112) & 1;
        if (v199.value)
        {
          CFRelease(v199.value);
        }
      }

      else
      {
        SubPipeTypeForSbuf = 0;
      }
    }

    else if (*(v12 + 156) == 4)
    {
      SubPipeTypeForSbuf = v165;
      if (!*(v12 + 120))
      {
        HIBYTE(v174) = 1;
        SubPipeTypeForSbuf = v162;
LABEL_237:
        CMSampleBufferGetOutputPresentationTimeStamp(&v175, v8);
        if (!fbapspManager_createAndInitializeSubPipe(a1, v8, SubPipeTypeForSbuf))
        {
          if (!fbapspManager_setPropertiesOnSubPipe(a1))
          {
            fbapspManager_setLoudnessInfoOnSubPipe();
            fbapspManager_setProcessingState(a1, 2);
            fbapspManager_connectSbufBridge(a1, v129, v130, v131, v132, v133, v134, v135, p_rhs, v149, v150, SBYTE2(v150), BYTE3(v150), SHIDWORD(v150), v151, v152, v153, v154, v155, key, v157, v158[0], v158[1], v159[0], v159[1], p_epoch, v161, v162, v163, allocator, v165, v166, v167, v168, v169, v170[0], v170[1], v171.value, *&v171.timescale, v171.epoch, v172, cf, v174, v175.value, *&v175.timescale, v175.epoch, v176, v177.value, *&v177.timescale);
            if (!v136)
            {
              fbapspManager_enqueueMarkerSampleBuffer();
              v137 = *(v12 + 56);
              time1 = v175;
              if (!fbapspManager_startAudioChainForSubPipe(v137, a1, &time1.value))
              {
LABEL_215:
                v113 = CMBaseObjectGetDerivedStorage();
                v114 = CMGetAttachment(v8, v167, 0);
                v115 = CMGetAttachment(v8, v166, 0);
                if (v114 && !v113[15])
                {
                  if (a1)
                  {
                    CFRetain(a1);
                  }

                  v116 = v113[4];
                  time1.value = MEMORY[0x1E69E9820];
                  *&time1.timescale = 0x40000000;
                  time1.epoch = __fbapspManager_PostInspectSampleBuffer_block_invoke;
                  v193 = &__block_descriptor_tmp_189;
                  v194 = a1;
                  dispatch_async(v116, &time1);
                }

                if (v115 && !v113[15])
                {
                  fbapspManager_postNotification(a1, @"PlayResourceReleased", 0);
                  if (a1)
                  {
                    CFRetain(a1);
                  }

                  v117 = v113[4];
                  rhs.value = MEMORY[0x1E69E9820];
                  *&rhs.timescale = 0x40000000;
                  rhs.epoch = __fbapspManager_PostInspectSampleBuffer_block_invoke_2;
                  v188 = &__block_descriptor_tmp_190;
                  *v189 = a1;
                  dispatch_async(v117, &rhs);
                }

                v118 = CMBaseObjectGetDerivedStorage();
                isMarkerSbuf = fbapspManager_isMarkerSbuf(v8);
                v120 = *(v118 + 200);
                if (isMarkerSbuf)
                {
                  CMBufferQueueEnqueue(v120, v8);
                }

                else
                {
                  CMBufferQueueReset(v120);
                }

                FormatDescription = CMSampleBufferGetFormatDescription(v8);
                if (FormatDescription)
                {
                  v122 = FormatDescription;
                  v123 = v113[21];
                  if (v123)
                  {
                    if (!CMAudioFormatDescriptionEqual(FormatDescription, v123, 0xFu, 0))
                    {
                      v124 = v113[21];
                      v113[21] = v122;
                      CFRetain(v122);
                      if (v124)
                      {
                        CFRelease(v124);
                      }
                    }
                  }

                  else
                  {
                    v113[21] = FormatDescription;
                    CFRetain(FormatDescription);
                  }
                }

                v125 = CMBaseObjectGetDerivedStorage();
                CMSampleBufferGetOutputPresentationTimeStamp(&time1, v8);
                time2.value = time1.value;
                v126 = time1.flags;
                time2.timescale = time1.timescale;
                v127 = time1.epoch;
                CMSampleBufferGetOutputDuration(&time1, v8);
                v199.value = time1.value;
                v199.timescale = time1.timescale;
                if (v126)
                {
                  rhs.value = time2.value;
                  rhs.timescale = time2.timescale;
                  rhs.flags = v126;
                  rhs.epoch = v127;
                  lhs.value = v199.value;
                  lhs.timescale = v199.timescale;
                  lhs.flags = time1.flags;
                  lhs.epoch = time1.epoch;
                  CMTimeAdd(&time1, &rhs, &lhs);
                  *(v125 + 544) = time1;
                  v128 = *(v125 + 568);
                  *(v125 + 568) = v8;
                  CFRetain(v8);
                  if (v128)
                  {
                    CFRelease(v128);
                  }
                }
              }
            }
          }

LABEL_39:
          v18 = 1;
          goto LABEL_23;
        }

LABEL_259:
        fbapspManager_restoreRetimeSampleBufferIfNeeded(a1, v8);
        v18 = 2;
        goto LABEL_23;
      }
    }

    else
    {
      SubPipeTypeForSbuf = fbapspManager_findSubPipeTypeForSbuf(a1, v8, &v174 + 7);
    }

    if (!HIBYTE(v174))
    {
      goto LABEL_215;
    }

    if (!*(v12 + 120))
    {
      goto LABEL_237;
    }

    v138 = *(v12 + 616);
    if (v138)
    {
      CFRelease(v138);
      *(v12 + 616) = 0;
    }

    *(v12 + 616) = bapspManager_copyDePrimingSampleBufferWithFullTrim(v8);
    v18 = 1;
    if (!fbapspManager_prepareSubPipeToStop(a1, v8, 1))
    {
      v139 = *(v12 + 608);
      if (v139)
      {
        CFRelease(v139);
        *(v12 + 608) = 0;
      }

      v140 = *(v12 + 568);
      lhs.value = 0;
      *&time1.value = *v170;
      time1.epoch = v11;
      if (v140)
      {
        if (!CMSampleBufferCallForEachSample(v140, bapspManager_copyLastSingleCompressedSBufCallback, &lhs))
        {
          if (lhs.value)
          {
            CMSampleBufferGetOutputDuration(&time1, lhs.value);
            rhs = time1;
            v141 = CMTimeCopyAsDictionary(&rhs, allocator);
            CMSetAttachment(lhs.value, v157, v141, 1u);
            if (v141)
            {
              CFRelease(v141);
            }
          }
        }
      }

      *(v12 + 608) = lhs.value;
      v142 = CMGetAttachment(*(v12 + 568), @"OriginalSbufOPTS", 0);
      if (*(v12 + 608))
      {
        v143 = v142;
        if (v142)
        {
          CMSampleBufferGetOutputDuration(&time1, *(v12 + 568));
          v185 = time1.value;
          v144 = time1.flags;
          v186 = time1.timescale;
          v145 = time1.epoch;
          CMTimeMakeFromDictionary(&time1, v143);
          v177 = time1;
          if (v144)
          {
            time1 = v177;
            rhs.value = v185;
            rhs.timescale = v186;
            rhs.flags = v144;
            rhs.epoch = v145;
            CMTimeAdd(&v171, &time1, &rhs);
          }

          else
          {
            v171 = v177;
          }

          v146 = *(v12 + 608);
          time1 = v171;
          if (CMSampleBufferSetOutputPresentationTimeStamp(v146, &time1))
          {
            goto LABEL_39;
          }
        }
      }

      goto LABEL_259;
    }

LABEL_23:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v18 == 3)
    {
      goto LABEL_29;
    }

    if (v18 == 1)
    {
      v19 = *(DerivedStorage + 104);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v20)
      {
        v20(v19, v8);
      }

LABEL_29:
      v21 = *(DerivedStorage + 608);
      if (v8 == v21)
      {
        CFRelease(v21);
        *(DerivedStorage + 608) = 0;
      }

      else
      {
        v22 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 128));
        if (v22)
        {
          CFRelease(v22);
        }
      }
    }

    CFRelease(v8);
    if (!--v3)
    {
      return fbapspManager_scheduleProcessingDataIfPossible(a1);
    }
  }
}