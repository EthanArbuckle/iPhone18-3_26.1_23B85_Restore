uint64_t FigAlternateMatchesAnyClientPredicateFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreTextSubtitleRendererCreate(uint64_t a1, const void **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_21;
  }

  FigSubtitleRendererGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    goto LABEL_6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 28) = 0;
  *(DerivedStorage + 360) = 256;
  v3 = FigCaptionRendererSessionCreate(0, 0, *a2, (DerivedStorage + 368));
  if (v3)
  {
    goto LABEL_6;
  }

  v5 = *(DerivedStorage + 368);
  if (!v5)
  {
    return 0;
  }

  v3 = FigCaptionRendererSessionSetCGContextDevice(v5);
  if (!v3)
  {
    snprintf(__str, 0x100uLL, "com.apple.coremedia.subtitlerenderer.notificationqueue<%p>", *a2);
    v7 = dispatch_queue_create(__str, 0);
    *(DerivedStorage + 16) = v7;
    if (!v7 || (snprintf(label, 0x100uLL, "com.apple.coremedia.subtitlerenderer.messagequeue<%p>", *a2), v8 = dispatch_queue_create(label, 0), (*(DerivedStorage + 8) = v8) == 0))
    {
LABEL_20:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
LABEL_21:
      v6 = FigSignalErrorAtGM();
      if (!v6)
      {
        return v6;
      }

      goto LABEL_7;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForMediaAccessibilityChanged();
    FigNotificationCenterAddWeakListener();
    clearMediaAccessibilityParams(DerivedStorage + 88);
    *DerivedStorage = 1;
    if (*(DerivedStorage + 8))
    {
      v9 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      if (v9)
      {
        v10 = v9;
        if (*a2)
        {
          CFRetain(*a2);
          v11 = *a2;
        }

        else
        {
          v11 = 0;
        }

        *v10 = v11;
        dispatch_async_f(*(DerivedStorage + 8), v10, mediaAccessibilityDidChangeDoAsync_0);
        return 0;
      }

      goto LABEL_20;
    }

    return 0;
  }

LABEL_6:
  v6 = v3;
LABEL_7:
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v6;
}

uint64_t FigSubtitleRendererDrawSubtitleAttributedStringDirect(uint64_t a1, CGContext *a2, const void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  if (!a1 || !a2 || CGRectEqualToRect(*&a4, *MEMORY[0x1E695F050]) || (a6 > 1.0 ? (v14 = a7 <= 1.0) : (v14 = 1), v14))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v18 = FigSignalErrorAtGM();
    SubtitleSampleFromAttributedString = 0;
  }

  else
  {
    SubtitleSampleFromAttributedString = FigSubtitleRendererCreateSubtitleSampleFromAttributedString(a3);
    if (SubtitleSampleFromAttributedString)
    {
      transform.a = a4;
      transform.b = a5;
      transform.c = a6;
      transform.d = a7;
      transform.tx = a6;
      transform.ty = a7;
      v16 = *(MEMORY[0x1E695EFD0] + 16);
      v21 = *MEMORY[0x1E695EFD0];
      v22 = v16;
      v23 = *(MEMORY[0x1E695EFD0] + 32);
      v24 = 0;
      v25 = 0xBFF0000000000000;
      v26 = 1;
      v17 = subtitleRendererLayout(a1, SubtitleSampleFromAttributedString, &transform, v28, &v27);
      if (!v17)
      {
        transform.b = 0.0;
        transform.c = 0.0;
        transform.a = 1.0;
        *&transform.d = xmmword_196E77200;
        transform.ty = a7;
        CGContextConcatCTM(a2, &transform);
        *&transform.a = a2;
        transform.b = 1.0;
        transform.c = 0.0;
        transform.d = 0.0;
        *&transform.tx = xmmword_196E77200;
        *&v21 = a7;
        v17 = subtitleRendererDrawSubtitleText(a1, v27, &transform);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      v17 = FigSignalErrorAtGM();
    }

    v18 = v17;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (SubtitleSampleFromAttributedString)
  {
    CFRelease(SubtitleSampleFromAttributedString);
  }

  return v18;
}

const __CFDictionary *FigSubtitleRendererDetachRegionInfo(const __CFDictionary *result, CFDictionaryRef *a2, BOOL *a3)
{
  *a2 = 0;
  if (!result || (v5 = result, (result = CFDictionaryGetValue(result, @"SubtitleContent")) == 0))
  {
    Count = 0;
    goto LABEL_18;
  }

  Count = CFArrayGetCount(result);
  result = CFDictionaryGetValue(v5, @"SubtitleContentMetadata");
  if (!result || (allocator = *MEMORY[0x1E695E480], result = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, result), (*a2 = result) == 0))
  {
LABEL_18:
    if (a3)
    {
      goto LABEL_19;
    }

    return result;
  }

  CFDictionaryRemoveValue(v5, @"SubtitleContentMetadata");
  if (Count < 1)
  {
LABEL_15:
    result = 0;
    if (a3)
    {
      goto LABEL_19;
    }

    return result;
  }

  v7 = 0;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  v8 = *MEMORY[0x1E6960908];
  v9 = *MEMORY[0x1E6960968];
  while (1)
  {
    v10 = OUTLINED_FUNCTION_195_0();
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
    if (!ValueAtIndex)
    {
      goto LABEL_14;
    }

    v13 = ValueAtIndex;
    if (!CFAttributedStringGetLength(ValueAtIndex) || !CFAttributedStringGetAttribute(v13, 0, v8, &effectiveRange))
    {
      goto LABEL_14;
    }

    Value = CFDictionaryGetValue(*a2, @"kFigSubtitleRenderer_RegionCues");
    if (!Value)
    {
      break;
    }

LABEL_13:
    Attribute = CFAttributedStringGetAttribute(v13, 0, v9, &effectiveRange);
    CFDictionaryAddValue(Value, Attribute, v13);
    v17 = OUTLINED_FUNCTION_195_0();
    CFArrayRemoveValueAtIndex(v17, v18);
    --Count;
    --v7;
LABEL_14:
    if (++v7 >= Count)
    {
      goto LABEL_15;
    }
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    Value = Mutable;
    CFDictionaryAddValue(*a2, @"kFigSubtitleRenderer_RegionCues", Mutable);
    CFRelease(Value);
    goto LABEL_13;
  }

  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  if (!a3)
  {
    return result;
  }

LABEL_19:
  *a3 = Count > 0;
  return result;
}

uint64_t FigSubtitleRendererPatchRegionInfo(int a1, CFDictionaryRef theDict)
{
  v2 = theDict;
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960A90]);
  v4 = OUTLINED_FUNCTION_195_0();
  v6 = CFDictionaryGetValue(v4, v5);
  if (!v6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      v56 = FigSignalErrorAtGM();
      goto LABEL_55;
    }

    v6 = Mutable;
    v8 = OUTLINED_FUNCTION_195_0();
    CFDictionaryAddValue(v8, v9, v6);
    CFRelease(v6);
  }

  OUTLINED_FUNCTION_5_106();
  Count = FigCFDictionaryGetCount();
  if (!Count)
  {
    v56 = 0;
    goto LABEL_19;
  }

  v11 = Count;
  key = v2;
  v12 = OUTLINED_FUNCTION_7_82(Count);
  v13 = OUTLINED_FUNCTION_7_82(v11);
  CFDictionaryGetKeysAndValues(Value, v12, v13);
  if (v11 < 1)
  {
LABEL_14:
    v21 = 0;
    v22 = 0;
    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = v13;
  v16 = v12;
  while (1)
  {
    if (!*v15)
    {
      goto LABEL_13;
    }

    v17 = CFGetTypeID(*v15);
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_13;
    }

    if (!*v16)
    {
      goto LABEL_13;
    }

    v18 = CFGetTypeID(*v16);
    if (v18 != CFStringGetTypeID())
    {
      goto LABEL_13;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, *v15);
    if (!MutableCopy)
    {
      break;
    }

    v20 = MutableCopy;
    CFDictionaryAddValue(v6, *v16, MutableCopy);
    CFRelease(v20);
LABEL_13:
    ++v16;
    ++v15;
    if (!--v11)
    {
      goto LABEL_14;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  v21 = FigSignalErrorAtGM();
LABEL_15:
  free(v12);
  v22 = v21;
LABEL_16:
  v56 = v22;
  v2 = key;
  if (v13)
  {
    free(v13);
  }

  OUTLINED_FUNCTION_5_106();
LABEL_19:
  v23 = CFDictionaryGetValue(v2, @"kFigSubtitleRenderer_RegionCues");
  v24 = OUTLINED_FUNCTION_195_0();
  v26 = CFDictionaryGetValue(v24, v25);
  v27 = CFDictionaryGetCount(v26);
  if (!v27)
  {
    goto LABEL_59;
  }

  v28 = v27;
  Attribute = OUTLINED_FUNCTION_7_82(v27);
  v30 = OUTLINED_FUNCTION_7_82(v28);
  theDicta = v26;
  v55 = Attribute;
  CFDictionaryGetKeysAndValues(v26, Attribute, v30);
  if (v28 >= 1)
  {
    v31 = 0;
    allocator = *MEMORY[0x1E695E480];
    v32 = *MEMORY[0x1E6960968];
    v59 = v30;
    do
    {
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      v33 = CFDictionaryGetValue(v30[v31], @"kFigSubtitleRenderer_RegionCues");
      if (!v33)
      {
        v34 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v34)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          v56 = FigSignalErrorAtGM();
          v27 = v55;
          goto LABEL_56;
        }

        v33 = v34;
        CFDictionaryAddValue(v30[v31], @"kFigSubtitleRenderer_RegionCues", v34);
        CFRelease(v33);
      }

      v35 = v28;
      v36 = CFDictionaryGetCount(v33);
      OUTLINED_FUNCTION_6_95();
      v39 = malloc_type_calloc(v37, v38, Attribute);
      v40 = malloc_type_calloc(v36, 8uLL, Attribute);
      CFDictionaryGetKeysAndValues(v33, v39, v40);
      if (v36 >= 1)
      {
        v41 = v40;
        do
        {
          Attribute = CFAttributedStringGetAttribute(*v41, 0, v32, &effectiveRange);
          v42 = v33;
          if (v23)
          {
            if (CFDictionaryGetValue(v23, Attribute))
            {
              v42 = v23;
            }

            else
            {
              v42 = v33;
            }
          }

          CFDictionaryRemoveValue(v42, Attribute);
          ++v41;
          --v36;
        }

        while (v36);
      }

      v28 = v35;
      if (v39)
      {
        free(v39);
      }

      v30 = v59;
      if (v40)
      {
        free(v40);
      }

      ++v31;
    }

    while (v31 != v28);
  }

  if (v55)
  {
    free(v55);
  }

  if (v30)
  {
    free(v30);
  }

  OUTLINED_FUNCTION_6_95();
  if (v23)
  {
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    v27 = CFDictionaryGetCount(v23);
    if (v27)
    {
      v43 = v27;
      v44 = malloc_type_calloc(v27, 8uLL, Attribute);
      v45 = malloc_type_calloc(v43, 8uLL, Attribute);
      CFDictionaryGetKeysAndValues(v23, v44, v45);
      if (v43 >= 1)
      {
        v46 = *MEMORY[0x1E6960908];
        v47 = *MEMORY[0x1E6960968];
        v48 = v45;
        do
        {
          v49 = CFAttributedStringGetAttribute(*v48, 0, v46, &effectiveRange);
          if (v49)
          {
            v50 = CFDictionaryGetValue(theDicta, v49);
            if (v50)
            {
              v51 = CFDictionaryGetValue(v50, @"kFigSubtitleRenderer_RegionCues");
              if (v51)
              {
                v52 = v51;
                v53 = CFAttributedStringGetAttribute(*v48, 0, v47, &effectiveRange);
                if (v53)
                {
                  CFDictionaryAddValue(v52, v53, *v48);
                }
              }
            }
          }

          ++v48;
          --v43;
        }

        while (v43);
      }

      if (v44)
      {
        free(v44);
      }

      if (v45)
      {
        free(v45);
      }

      goto LABEL_55;
    }

LABEL_59:
    v30 = 0;
    goto LABEL_56;
  }

LABEL_55:
  v30 = 0;
  v27 = 0;
LABEL_56:
  free(v27);
  free(v30);
  return v56;
}

double FigSubtitleRendererGetRegionBounds(const __CFDictionary *a1, double a2, double a3, double a4)
{
  v7 = *MEMORY[0x1E695F058];
  v13 = 0.0;
  valuePtr = 0;
  if (FigCFDictionaryGetCGFloatIfPresent())
  {
    v8 = a4 * v13 / 100.0;
    Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6960B00]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (CFDictionaryGetValue(a1, *MEMORY[0x1E6960B18]))
      {
        if (FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent() && CFDictionaryGetValue(a1, *MEMORY[0x1E6960B08]) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
        {
          v10 = a2 + a4 * 0.0 / 100.0 - v8 * 0.0 / 100.0;
          if (v10 < a2)
          {
            v10 = a2;
          }

          if (v8 + v10 <= a2 + a4)
          {
            return v10;
          }

          else
          {
            return a2 + a4 - v8;
          }
        }
      }
    }
  }

  return v7;
}

void calculateStrokeAttributes(double a1, uint64_t a2, void *a3, CFNumberRef *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 > 0.0)
  {
    v8 = DerivedStorage;
    components[0] = *(DerivedStorage + 152);
    CopyWithAlpha = MACaptionAppearanceCopyStrokeColor();
    if (!CopyWithAlpha)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      if (DeviceRGB)
      {
        v11 = DeviceRGB;
        *components = xmmword_196E78F38;
        v19 = unk_196E78F48;
        v12 = CGColorCreate(DeviceRGB, components);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(v12, *(v8 + 248));
        CGColorRelease(v12);
        CGColorSpaceRelease(v11);
      }

      else
      {
        CopyWithAlpha = 0;
      }
    }

    MACaptionAppearanceGetStrokeWidth();
    v14 = v13 + v13;
    if (*(v8 + 361))
    {
      v14 = v14 * 100.0 / a1;
    }

    components[0] = v14;
    v15 = *MEMORY[0x1E695E480];
    v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, components);
    if (v16)
    {
      if (a3)
      {
LABEL_10:
        *a3 = CopyWithAlpha;
LABEL_16:
        if (a4)
        {
          *a4 = v16;
        }

        else if (v16)
        {
          CFRelease(v16);
        }

        return;
      }
    }

    else
    {
      v17 = a1 * 0.147058824;
      if (a1 > 60.0)
      {
        v17 = a1 * 0.147058824 * 0.5;
      }

      components[0] = v17;
      v16 = CFNumberCreate(v15, kCFNumberCGFloatType, components);
      if (a3)
      {
        goto LABEL_10;
      }
    }

    if (CopyWithAlpha)
    {
      CFRelease(CopyWithAlpha);
    }

    goto LABEL_16;
  }
}

void resetOverlaps(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v13 = _Q0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          v12 = ValueAtIndex[4];
          if (v12)
          {
            CFArrayRemoveAllValues(v12);
          }

          *(v11 + 5) = v13;
          *(v11 + 7) = v13;
          v11[22] = 0;
          v11[23] = 0;
          v11[21] = 0;
          *(v11 + 9) = 0u;
          *(v11 + 11) = 0u;
          *(v11 + 13) = 0u;
          *(v11 + 15) = 0u;
          *(v11 + 17) = 0u;
          *(v11 + 19) = 0u;
        }

        ++v4;
      }

      while (v3 != v4);
    }
  }
}

uint64_t surveyOverlaps(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), v3 = Count - 2, Count >= 2))
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex;
        v9 = v6 + 1;
        do
        {
          v10 = CFArrayGetValueAtIndex(a1, v9);
          if (v10)
          {
            v11 = v10;
            if (vabdd_f64(*v8 + v8[2] * 0.5, *v10 + v10[2] * 0.5) < v8[2] * 0.5 + v10[2] * 0.5 + -3.0 && vabdd_f64(v8[1] + v8[3] * 0.5, v10[1] + v10[3] * 0.5) < v10[3] * 0.5 + v8[3] * 0.5 + -3.0)
            {
              CFArrayAppendValue(*(v8 + 4), v10);
              CFArrayAppendValue(*(v11 + 4), v8);
              v5 = 1;
            }
          }

          ++v9;
        }

        while (v4 != v9);
      }
    }

    while (v6++ != v3);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t mediaAccessibilityDidChange_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t mediaAccessibilityDidChangeDoAsync_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigSubtitleRendererDrawSubtitleTextDirect_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleRendererDrawSubtitleTextDirect_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleRendererDrawSubtitleTextDirect_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleRendererDrawSubtitleTextDirect_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleRendererDrawSubtitleTextDirect_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleRendererDrawSubtitleTextDirect_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleRendererDrawSubtitleTextDirect_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleRendererDrawSubtitleTextDirect_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleRendererGetAttributedStringFromSubtitleSample_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigSubtitleRendererGetAttributedStringFromSubtitleSample_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t CreateSubtitleSample_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t CreateSubtitleSample_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

void CreateSubtitleSample_cold_3(const void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t CreateSubtitleSample_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t CreateSubtitleSample_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t subtitleRendererDrawSubtitleTextDo_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t subtitleRendererSetupText_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t setupRubyAnnotation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t subtitleRendererLayoutDo_cold_1(const __CFArray *a1, CFIndex a2, const __CFData *a3, uint64_t a4, void *a5)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (ValueAtIndex)
  {
    *ValueAtIndex = vaddq_f64(*(ValueAtIndex + 168), *ValueAtIndex);
    ++*(ValueAtIndex + 48);
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    goto LABEL_19;
  }

  v11 = Count;
  v22 = a4;
  v23 = a5;
  v12 = CFDataGetLength(a3) / (200 * Count);
  if (v12 < 1)
  {
LABEL_16:
    a4 = v22;
    a5 = v23;
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v20 = CFArrayGetValueAtIndex(a1, i);
        CFDataAppendBytes(a3, v20, 200);
      }
    }

LABEL_19:
    *a5 = a4;
    return 1;
  }

  BytePtr = CFDataGetBytePtr(a3);
  v14 = 0;
  while (1)
  {
    if (v11 < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      LODWORD(v16) = 0;
      v17 = BytePtr;
      do
      {
        v18 = CFArrayGetValueAtIndex(a1, v15);
        if (!memcmp(v17, v18, 0xC8uLL))
        {
          v16 = (v16 + 1);
        }

        else
        {
          v16 = v16;
        }

        ++v15;
        v17 += 200;
      }

      while (v11 != v15);
    }

    if (v11 == v16)
    {
      return 0;
    }

    ++v14;
    BytePtr += 200 * v11;
    if (v14 >= v12)
    {
      goto LABEL_16;
    }
  }
}

uint64_t subtitleRendererLayoutDo_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t subtitleRendererLayoutDo_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL subtitleRendererLayoutDo_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t FigCaptionRendererAVFLayoutRegionCreate(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (!a2)
  {
    return 4294950096;
  }

  v18 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererAVFLayoutRegionGetClassID_sRegisterFigCaptionRendererAVFLayoutRegionBaseTypeOnce, RegisterFigCaptionRendererAVFLayoutRegionBaseType);
  result = CMDerivedObjectCreate();
  if (!result)
  {
    v7 = v18;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a1;
    *(DerivedStorage + 40) = 1;
    v17 = 0;
    FigCaptionRendererFreeLayoutRegionCreate(a1, a2, &v17);
    v9 = v17;
    *DerivedStorage = v17;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v11 = *(ProtocolVTable + 16);
      if (v11)
      {
        v12 = *(v11 + 216);
        if (v12)
        {
          v12(v9, 1);
        }
      }
    }

    v13 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v14 = CMBaseObjectGetProtocolVTable();
    if (v14)
    {
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = *(v15 + 232);
        if (v16)
        {
          v16(v13, 1);
        }
      }
    }

    result = 0;
    *a3 = v7;
  }

  return result;
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCreateCaptionRenderPipeline(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, __int128 *a9, uint64_t a10, CFTypeRef *a11)
{
  v55 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *__str = 0u;
  v48 = 0u;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_4_124();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_4_124();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    v16 = a2 != 0;
  }

  else
  {
    v16 = 0;
  }

  if ((a2 != 0) != (a3 != 0) || (a5 ? (v17 = a4 != 0) : (v17 = 0), (a4 != 0) != (a5 != 0) || (a7 ? (v18 = a6 != 0) : (v18 = 0), (a6 != 0) != (a7 != 0))))
  {
    OUTLINED_FUNCTION_43_1();
LABEL_49:
    v20 = FigSignalErrorAtGM();
LABEL_33:
    v23 = v20;
    goto LABEL_34;
  }

  v19 = *MEMORY[0x1E695E480];
  FigRenderPipelineGetClassID();
  v20 = CMDerivedObjectCreate();
  if (v20)
  {
    goto LABEL_33;
  }

  v38 = v18;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2) = 1;
  *(DerivedStorage + 1) = FigSubtitleRendererUseCoreTextRendererByDefault() == 0;
  v20 = FigCaptionSerializerCreate();
  if (v20)
  {
    goto LABEL_33;
  }

  *(DerivedStorage + 256) = 0;
  *(DerivedStorage + 264) = v19;
  *&v45 = caprp_FigCaptionGroupConverterOutputCallbackTX3G;
  *(&v45 + 1) = DerivedStorage + 256;
  if (_os_feature_enabled_impl())
  {
    v22 = FigTX3GCaptionGroupConverterFromSampleBufferCreateRemote(&v45, v19, (DerivedStorage + 288));
  }

  else
  {
    v22 = FigTX3GCaptionGroupConverterFromSampleBufferCreate(&v45, v19, (DerivedStorage + 288));
  }

  v23 = v22;
  if (v22)
  {
    goto LABEL_34;
  }

  *(DerivedStorage + 272) = 0;
  *(DerivedStorage + 280) = v19;
  *&v44 = caprp_FigCaptionGroupConverterOutputCallbackWebVTT;
  *(&v44 + 1) = DerivedStorage + 272;
  v24 = _os_feature_enabled_impl() ? FigWebVTTCaptionGroupConverterFromSampleBufferCreateRemote(&v44, v19, (DerivedStorage + 296)) : FigWebVTTCaptionGroupConverterFromSampleBufferCreate(&v44, v19, (DerivedStorage + 296));
  v23 = v24;
  if (v24)
  {
    goto LABEL_34;
  }

  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  *(DerivedStorage + 128) = FigSimpleMutexCreate();
  snprintf(__str, 0x80uLL, "com.apple.coremedia.figcaptionrenderpipeline(%p).refcon(%p).callbackqueue", v46, a3);
  v25 = dispatch_queue_create(__str, 0);
  *(DerivedStorage + 8) = v25;
  if (!v25 || v16 && (*(DerivedStorage + 152) = a2, v26 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 160) = v26) == 0) || v17 && (*(DerivedStorage + 168) = a4, v27 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 176) = v27) == 0) || v38 && (*(DerivedStorage + 200) = a6, v28 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 208) = v28) == 0))
  {
    OUTLINED_FUNCTION_43_1();
    goto LABEL_49;
  }

  v29 = a8;
  if (a8)
  {
    v29 = CFRetain(a8);
  }

  *(DerivedStorage + 184) = v29;
  *(DerivedStorage + 192) = 0;
  v20 = FigTextSampleBufferSetUpState(DerivedStorage + 40, v19, a1);
  if (v20)
  {
    goto LABEL_33;
  }

  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v32 = Mutable;
    CFDictionarySetValue(Mutable, @"AllowCaptionGroupSampleBuffers", *MEMORY[0x1E695E4D0]);
    v42 = *a9;
    v43 = *(a9 + 2);
    v33 = FigSimpleRenderPipelineCreateWithCallback(v19, caprp_sendSubtitleSampleForSampleBuffer, 0, v46, &v42, v32, (DerivedStorage + 24));
    if (!v33)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 24));
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v35)
      {
        v23 = 4294954514;
        goto LABEL_46;
      }

      v33 = v35(FigBaseObject, @"SourceSampleBufferQueue", v19, DerivedStorage + 32);
      if (!v33)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        v33 = CMBufferQueueCreate(v19, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 224));
        if (!v33)
        {
          v37 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
          v23 = CMBufferQueueCreate(v19, 0, v37, (DerivedStorage + 240));
          if (!v23)
          {
            *a11 = v46;
            v46 = 0;
          }

          goto LABEL_46;
        }
      }
    }

    v23 = v33;
LABEL_46:
    CFRelease(v32);
    goto LABEL_34;
  }

  v23 = 4294954510;
LABEL_34:
  if (v46)
  {
    CFRelease(v46);
  }

  return v23;
}

uint64_t caprp_createSubtitleSampleForCaptionGroupSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, const void *a3, void *a4, void *a5)
{
  v62 = 0;
  v63 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!subrp_SampleBufferShouldBeDisplayed(a2))
  {
    v24 = 0;
    Mutable = 0;
    v27 = 0;
    v32 = 0;
    v25 = 0;
    goto LABEL_43;
  }

  v50 = DerivedStorage;
  v49 = a4;
  CaptionGroup = FigSampleBufferGetCaptionGroup();
  v10 = MEMORY[0x1E695E480];
  if (!CaptionGroup)
  {
    v27 = 0;
    Mutable = 0;
    v24 = 0;
    v14 = *MEMORY[0x1E695E480];
    goto LABEL_18;
  }

  SliceCount = FigCaptionGroupGetSliceCount();
  v12 = OUTLINED_FUNCTION_5_107();
  CMSampleBufferGetPresentationTimeStamp(v13, v12);
  OUTLINED_FUNCTION_6_96();
  v14 = *v10;
  v15 = OUTLINED_FUNCTION_2_155();
  Mutable = CFDictionaryCreateMutable(v15, v16, v17, v18);
  if (!Mutable)
  {
    v24 = 0;
    goto LABEL_59;
  }

  v20 = OUTLINED_FUNCTION_2_155();
  v24 = CFDictionaryCreateMutable(v20, v21, v22, v23);
  if (!v24)
  {
LABEL_59:
    v27 = 0;
    v32 = 0;
    goto LABEL_60;
  }

  if (SliceCount < 1)
  {
    v27 = 0;
  }

  else
  {
    v48 = a5;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      CaptionData = FigCaptionGroupGetCaptionData();
      if (CaptionData)
      {
        v29 = CaptionData;
        memset(&time, 0, sizeof(time));
        FigCaptionGroupGetDurationBeforeSlice();
        v57 = 0uLL;
        v58 = 0;
        FigCaptionGroupGetDurationAfterSlice();
        v56 = v61;
        v55 = v60;
        v54 = time;
        v52 = v57;
        v53 = v58;
        v25 = FigCaptionDataToMarkupBasedAttributedString(v14, v29, &v56, &v55, &v54, &v52, &v63, Mutable, v24);
        if (!v27)
        {
          v30 = OUTLINED_FUNCTION_2_155();
          v27 = CFArrayCreateMutable(v30, v31, MEMORY[0x1E695E9C0]);
          if (!v27)
          {
            goto LABEL_59;
          }
        }

        CFArrayAppendValue(v27, v63);
        if (v63)
        {
          CFRelease(v63);
          v63 = 0;
        }
      }

      ++v26;
    }

    while (SliceCount != v26);
    if (v25)
    {
      v32 = 0;
      v33 = 0;
      a5 = v48;
LABEL_42:
      *a5 = v33;
      goto LABEL_43;
    }

    a5 = v48;
  }

LABEL_18:
  v34 = OUTLINED_FUNCTION_2_155();
  v32 = CFDictionaryCreateMutable(v34, v35, v36, v37);
  if (!v32)
  {
LABEL_60:
    v25 = 4294954510;
    goto LABEL_43;
  }

  CFDataFromCaptionGroup = FigCFDictionarySetInt32();
  if (!CFDataFromCaptionGroup)
  {
    CFDataFromCaptionGroup = FigCFDictionarySetInt32();
    if (!CFDataFromCaptionGroup)
    {
      v39 = OUTLINED_FUNCTION_5_107();
      CMSampleBufferGetOutputPresentationTimeStamp(v40, v39);
      OUTLINED_FUNCTION_6_96();
      time = v61;
      v41 = CMTimeCopyAsDictionary(&time, v14);
      time = v60;
      v42 = CMTimeCopyAsDictionary(&time, v14);
      v43 = CFArrayCreateMutable(v14, 2, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v43, v41);
      CFArrayAppendValue(v43, v42);
      CFDictionarySetValue(v32, @"SubtitleTimeRange", v43);
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

      if (a3)
      {
        CFDictionarySetValue(v32, @"SubtitleExtendedLanguageTag", a3);
      }

      if (caprp_isSubtitleOverHDRVideo())
      {
        CFDictionarySetValue(v32, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
      }

      if (!v27)
      {
        v44 = OUTLINED_FUNCTION_2_155();
        v27 = CFArrayCreateMutable(v44, v45, v46);
      }

      CFDictionarySetValue(v32, @"SubtitleContent", v27);
      if (!CaptionGroup || !*(v50 + 1))
      {
        goto LABEL_37;
      }

      CFDataFromCaptionGroup = FigCaptionSerializerCreateCFDataFromCaptionGroup();
      if (!CFDataFromCaptionGroup)
      {
        CFDictionarySetValue(v32, @"SubtitleSerializedCaptionGroup", v62);
LABEL_37:
        if (v49)
        {
          CFDictionarySetValue(v32, @"SubtitleContentMetadata", v49);
        }

        if (Mutable)
        {
          CFDictionarySetValue(v32, @"SubtitleContentMetadata", Mutable);
        }

        v33 = CFRetain(v32);
        v25 = 0;
        goto LABEL_42;
      }
    }
  }

  v25 = CFDataFromCaptionGroup;
LABEL_43:
  if (v63)
  {
    CFRelease(v63);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return v25;
}

uint64_t caprp_createSubtitleSampleForMPEG4Part30SampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, const void *a3, void *a4, void *a5)
{
  theDict = 0;
  v29 = **&MEMORY[0x1E6960C70];
  if (!subrp_SampleBufferShouldBeDisplayed(a2))
  {
    return 0;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v12 = Mutable;
    CMSampleBufferGetPresentationTimeStamp(&v29, a2);
    v27 = v29;
    v13 = CMTimeCopyDescription(v10, &v27);
    cf[1] = v10;
    v31 = 0;
    cf[0] = 0;
    v27.value = caprp_FigCaptionGroupConverterOutputCallbackMPEG4Part30;
    *&v27.timescale = cf;
    v14 = FigTTMLCaptionGroupConverterFromSampleBufferCreate(&v27, v10, &v31);
    if (!v14)
    {
      v15 = v31;
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v16)
      {
        goto LABEL_10;
      }

      v14 = v16(v15, a2);
      if (v14)
      {
        goto LABEL_40;
      }

      v17 = v31;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v18)
      {
LABEL_10:
        v19 = 0;
        v20 = 4294954514;
        goto LABEL_11;
      }

      v14 = v18(v17);
      if (!v14)
      {
        if (!cf[0])
        {
          v20 = 0;
          v19 = 0;
          goto LABEL_13;
        }

        v19 = CFRetain(cf[0]);
        v20 = 0;
LABEL_11:
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }

LABEL_13:
        if (v31)
        {
          CFRelease(v31);
        }

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          if (v19)
          {
            if (CFArrayGetCount(v19) >= 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
              v26 = caprp_createSubtitleSampleForCaptionGroupSampleBuffer(a1, ValueAtIndex, a3, a4, &theDict);
              if (v26)
              {
                v21 = 0;
                v20 = v26;
                if (!v13)
                {
LABEL_27:
                  CFRelease(v12);
                  if (v21)
                  {
                    CFRelease(v21);
                  }

                  goto LABEL_29;
                }

LABEL_26:
                CFRelease(v13);
                goto LABEL_27;
              }
            }
          }

          if (theDict)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, theDict);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v21 = MutableCopy;
          if (MutableCopy)
          {
            v22 = CFRetain(MutableCopy);
LABEL_25:
            *a5 = v22;
            if (!v13)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        v22 = 0;
        goto LABEL_25;
      }
    }

LABEL_40:
    v20 = v14;
    v19 = 0;
    goto LABEL_11;
  }

  v19 = 0;
  v20 = 4294954510;
LABEL_29:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v20;
}

uint64_t caprp_createSubtitleSampleForWebVTTSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, const __CFArray *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v54 = 0;
  v55 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!subrp_SampleBufferShouldBeDisplayed(a3))
  {
    Mutable = 0;
    CFDataFromCaptionGroup = 0;
    goto LABEL_41;
  }

  v42 = a2;
  v13 = *MEMORY[0x1E695E480];
  v14 = OUTLINED_FUNCTION_165_0();
  Mutable = CFDictionaryCreateMutable(v14, v15, v16, v17);
  if (!Mutable)
  {
    CFDataFromCaptionGroup = 4294954510;
    goto LABEL_39;
  }

  v19 = FigCFDictionarySetInt32();
  if (!v19)
  {
    memset(&v53, 0, sizeof(v53));
    CMSampleBufferGetOutputPresentationTimeStamp(&v53, a3);
    memset(&v52, 0, sizeof(v52));
    CMSampleBufferGetOutputDuration(&v52, a3);
    v20 = OUTLINED_FUNCTION_1_163(v53.epoch, v40, v42, a7, a6, v53.value, *&v53.timescale, v50);
    v21 = OUTLINED_FUNCTION_1_163(v52.epoch, v41, v43, v45, v48, v52.value, *&v52.timescale, v51);
    v22 = CFArrayCreateMutable(v13, 2, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v22, v20);
    CFArrayAppendValue(v22, v21);
    CFDictionarySetValue(Mutable, @"SubtitleTimeRange", v22);
    if (v20)
    {
      CFRelease(v20);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (a5)
    {
      CFDictionarySetValue(Mutable, @"SubtitleExtendedLanguageTag", a5);
    }

    if (caprp_isSubtitleOverHDRVideo())
    {
      CFDictionarySetValue(Mutable, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
    }

    if (!*(DerivedStorage + 1))
    {
      CFDataFromCaptionGroup = WebVTTCreateAttributedStringArrayFromSampleBuffer(v44, a3, a4, &v55);
      v33 = v55;
      v34 = v49;
      if (!v55)
      {
        v35 = OUTLINED_FUNCTION_165_0();
        v33 = CFArrayCreate(v35, v36, v37, v38);
        v55 = v33;
      }

      CFDictionarySetValue(Mutable, @"SubtitleContent", v33);
      v30 = 0;
      if (!v49)
      {
LABEL_37:
        *v46 = CFRetain(Mutable);
        if (!v30)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_36:
      CFDictionarySetValue(Mutable, @"SubtitleContentMetadata", v34);
      goto LABEL_37;
    }

    if (!CMSampleBufferGetDataBuffer(a3) || !CMSampleBufferGetNumSamples(a3))
    {
      goto LABEL_46;
    }

    CMBaseObject = FigCaptionGroupConverterFromSampleBufferGetCMBaseObject(*(DerivedStorage + 296));
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v24)
    {
      goto LABEL_32;
    }

    v19 = v24(CMBaseObject, 0x1F0B3C618, a4);
    if (!v19)
    {
      v25 = *(DerivedStorage + 296);
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v26)
      {
        goto LABEL_32;
      }

      v19 = v26(v25, a3);
      if (!v19)
      {
        if (!_os_feature_enabled_impl())
        {
          goto LABEL_24;
        }

        v27 = *(DerivedStorage + 296);
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v28)
        {
          v19 = v28(v27);
          if (!v19)
          {
LABEL_24:
            v29 = *(DerivedStorage + 272);
            if (v29)
            {
              v30 = CFRetain(v29);
              v31 = *(DerivedStorage + 272);
              if (v31)
              {
                CFRelease(v31);
                *(DerivedStorage + 272) = 0;
              }

              if (v30)
              {
                if (CFArrayGetCount(v30) >= 1)
                {
                  CFArrayGetValueAtIndex(v30, 0);
                  if (FigSampleBufferGetCaptionGroup())
                  {
                    CFDataFromCaptionGroup = FigCaptionSerializerCreateCFDataFromCaptionGroup();
                    if (CFDataFromCaptionGroup)
                    {
LABEL_38:
                      CFRelease(v30);
                      goto LABEL_39;
                    }

                    CFDictionarySetValue(Mutable, @"SubtitleSerializedCaptionGroup", v54);
LABEL_48:
                    v34 = v49;
                    if (!v49)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_36;
                  }
                }
              }

LABEL_47:
              CFDataFromCaptionGroup = 0;
              goto LABEL_48;
            }

LABEL_46:
            v30 = 0;
            goto LABEL_47;
          }

          goto LABEL_52;
        }

LABEL_32:
        CFDataFromCaptionGroup = 4294954514;
        goto LABEL_39;
      }
    }
  }

LABEL_52:
  CFDataFromCaptionGroup = v19;
LABEL_39:
  if (v54)
  {
    CFRelease(v54);
  }

LABEL_41:
  if (v55)
  {
    CFRelease(v55);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return CFDataFromCaptionGroup;
}

uint64_t caprp_createSubtitleSampleForTX3GSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v63[0] = 0;
  v14 = *(MEMORY[0x1E695F050] + 16);
  v61 = *MEMORY[0x1E695F050];
  v62 = v14;
  aStr = 0;
  value = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *MEMORY[0x1E695E480];
  v17 = OUTLINED_FUNCTION_165_0();
  Mutable = CFDictionaryCreateMutable(v17, v18, v19, v20);
  if (Mutable)
  {
    v22 = FigCFDictionarySetInt32();
    if (v22)
    {
      goto LABEL_59;
    }

    memset(&v57, 0, sizeof(v57));
    CMSampleBufferGetOutputPresentationTimeStamp(&v57, a2);
    memset(&v56, 0, sizeof(v56));
    CMSampleBufferGetOutputDuration(&v56, a2);
    v23 = OUTLINED_FUNCTION_1_163(v57.epoch, a6, a7, a5, a4, v57.value, *&v57.timescale, v54);
    v24 = OUTLINED_FUNCTION_1_163(v56.epoch, v45, v47, v49, v52, v56.value, *&v56.timescale, v55);
    v25 = CFArrayCreateMutable(v16, 2, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v25, v23);
    CFArrayAppendValue(v25, v24);
    CFDictionarySetValue(Mutable, @"SubtitleTimeRange", v25);
    if (v23)
    {
      CFRelease(v23);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (a3)
    {
      CFDictionarySetValue(Mutable, @"SubtitleExtendedLanguageTag", a3);
    }

    if (caprp_isSubtitleOverHDRVideo())
    {
      CFDictionarySetValue(Mutable, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
    }

    v22 = FigTextSampleBufferDecryptSample(DerivedStorage + 40, a2, &cf);
    if (v22)
    {
      goto LABEL_59;
    }

    v26 = cf ? cf : a2;
    v22 = FigTextSampleBufferCopyAttributedString(DerivedStorage + 40, v16, v26, &aStr, v63 + 1, v63, &v61);
    if (v22)
    {
      goto LABEL_59;
    }

    if (*(DerivedStorage + 1))
    {
      if (!CMSampleBufferGetDataBuffer(v26) || !CMSampleBufferGetNumSamples(v26))
      {
        goto LABEL_44;
      }

      v27 = *(DerivedStorage + 288);
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v28)
      {
        goto LABEL_35;
      }

      v22 = v28(v27, v26);
      if (!v22)
      {
        if (!_os_feature_enabled_impl())
        {
          goto LABEL_26;
        }

        v29 = *(DerivedStorage + 288);
        v30 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v30)
        {
          v22 = v30(v29);
          if (!v22)
          {
LABEL_26:
            v31 = *(DerivedStorage + 256);
            if (v31)
            {
              v32 = CFRetain(v31);
              v33 = *(DerivedStorage + 256);
              if (v33)
              {
                CFRelease(v33);
                *(DerivedStorage + 256) = 0;
              }

              if (v32 && CFArrayGetCount(v32) >= 1)
              {
                CFArrayGetValueAtIndex(v32, 0);
                if (FigSampleBufferGetCaptionGroup())
                {
                  CFDataFromCaptionGroup = FigCaptionSerializerCreateCFDataFromCaptionGroup();
                  if (CFDataFromCaptionGroup)
                  {
                    v42 = CFDataFromCaptionGroup;
                    v35 = 0;
LABEL_47:
                    CFRelease(v32);
                    v37 = v42;
                    goto LABEL_48;
                  }

                  CFDictionarySetValue(Mutable, @"SubtitleSerializedCaptionGroup", value);
                }

                v35 = 0;
                v36 = FigCaptionGroupGetSliceCount() == 0;
LABEL_46:
                v42 = 0;
                v37 = 0;
                *v53 = CFRetain(Mutable);
                *v50 = v36;
                *v46 = HIBYTE(v63[0]);
                *v48 = v63[0];
                v43 = v62;
                *a8 = v61;
                a8[1] = v43;
                if (!v32)
                {
                  goto LABEL_48;
                }

                goto LABEL_47;
              }

LABEL_45:
              v35 = 0;
              v36 = 0;
              goto LABEL_46;
            }

LABEL_44:
            v32 = 0;
            goto LABEL_45;
          }

          goto LABEL_59;
        }

LABEL_35:
        v35 = 0;
        v37 = 4294954514;
        goto LABEL_48;
      }

LABEL_59:
      v37 = v22;
      v35 = 0;
      goto LABEL_48;
    }

    v38 = OUTLINED_FUNCTION_165_0();
    v35 = CFArrayCreateMutable(v38, v39, v40);
    if (v35)
    {
      if (aStr)
      {
        String = CFAttributedStringGetString(aStr);
        if (CFStringGetLength(String))
        {
          if (aStr)
          {
            CFArrayAppendValue(v35, aStr);
            v36 = aStr == 0;
LABEL_43:
            CFDictionarySetValue(Mutable, @"SubtitleContent", v35);
            v32 = 0;
            goto LABEL_46;
          }
        }

        else
        {
          CFRelease(aStr);
          aStr = 0;
        }
      }

      v36 = 1;
      goto LABEL_43;
    }
  }

  else
  {
    v35 = 0;
  }

  v37 = 4294954510;
LABEL_48:
  if (value)
  {
    CFRelease(value);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (aStr)
  {
    CFRelease(aStr);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v37;
}

uint64_t caprp_FigCaptionGroupConverterOutputCallbackMPEG4Part30(uint64_t a1, uint64_t a2, CFMutableArrayRef *a3)
{
  if (!*a3)
  {
    Mutable = CFArrayCreateMutable(a3[1], 0, MEMORY[0x1E695E9C0]);
    *a3 = Mutable;
    if (!Mutable)
    {
      return 4294954516;
    }
  }

  if (!FigCaptionGroupGetSliceCount())
  {
    return 0;
  }

  v5 = FigSampleBufferCreateForCaptionGroup();
  if (!v5)
  {
    CFArrayAppendValue(*a3, 0);
  }

  return v5;
}

uint64_t CreateSampleGeneratorForLPCM(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x10200406925D324uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = LPCMPushForType;
  a1[8] = LPCMResyncForType;
  a1[7] = LPCMFlushForType;
  a1[9] = LPCMDestroyForType;
  a1[10] = LPCMReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t LPCMPushForType(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(a1 + 88);
  v44 = 0;
  v43 = 0;
  returnedPointerOut = 0;
  if (*a1 == 1886612592)
  {
    v12 = 7;
  }

  else
  {
    v12 = 4;
  }

  if (a5)
  {
    appended = LPCMFlushForType(a1);
    if (appended)
    {
      goto LABEL_60;
    }
  }

  appended = CMBlockBufferAccessDataBytes(theBuffer, 0, v12, temporaryBlock, &returnedPointerOut);
  if (appended)
  {
    goto LABEL_60;
  }

  v39 = a3;
  v40 = a6;
  if (*a1 == 1886612592)
  {
    appended = PSLPCMGetSampleFrequency(returnedPointerOut, &v43);
    if (appended)
    {
      goto LABEL_60;
    }

    v14 = PSLPCMGetChannelLayout(returnedPointerOut);
    v15 = PSLPCMGetQuantization(returnedPointerOut);
    appended = PSLPCMGetSamplesPerFrame(returnedPointerOut, &v44);
    if (appended)
    {
      goto LABEL_60;
    }

    v16 = v44;
    v17 = PSLPCMGetFrameCountOfPacket(returnedPointerOut) * v16;
  }

  else
  {
    v43 = LPCMGetSampleFrequency(returnedPointerOut);
    if (!v43)
    {
      v23 = 0;
      goto LABEL_61;
    }

    v14 = LPCMGetChannelLayout(returnedPointerOut);
    v15 = LPCMGetBitsPerChannelSample(returnedPointerOut);
    v17 = LPCMGetSamplesPerFrame(returnedPointerOut);
  }

  v18 = (a1 + 40);
  if (*(a1 + 40) && *(v11 + 16) == v14 && v17 == *(v11 + 4) && v43 == *v11)
  {
    goto LABEL_16;
  }

  LPCMFlushForType(a1);
  v38 = v43;
  memset(&asbd.mFormatID, 0, 32);
  v25 = malloc_type_calloc(1uLL, 20 * v14 + 12, 0xE7EF478BuLL);
  if (!v25)
  {
    return 12;
  }

  v26 = v25;
  v27 = v14;
  if (v14 == 720904)
  {
    goto LABEL_40;
  }

  if (v14 != 262148 && v14 != 327684)
  {
    switch(v14)
    {
      case 393220:
        v33 = 7536644;
        break;
      case 458756:
        v33 = 8650756;
        break;
      case 524294:
      case 589830:
        OUTLINED_FUNCTION_0_172();
        LODWORD(v26[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
        v26[2].mNumberChannelDescriptions = 5;
        LODWORD(v26[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
        v26[3].mChannelDescriptions[0].mChannelFlags = 4 * (v14 != v30);
        goto LABEL_50;
      case 655368:
LABEL_40:
        v25->mChannelLayoutTag = 0;
        v25->mNumberChannelDescriptions = v14;
        v25->mChannelDescriptions[0].mChannelLabel = 1;
        v25[1].mChannelLayoutTag = 2;
        LODWORD(v25[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
        v25[2].mNumberChannelDescriptions = 5;
        LODWORD(v25[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
        v25[3].mChannelDescriptions[0].mChannelFlags = 34;
        v25[4].mChannelBitmap = 6;
        LODWORD(v25[4].mChannelDescriptions[0].mCoordinates[1]) = 4 * (v14 != 655368);
        goto LABEL_50;
      case 65538:
        v25->mChannelLayoutTag = 0;
        v25->mNumberChannelDescriptions = v14;
        v25->mChannelDescriptions[0].mChannelLabel = 42;
        v25[1].mChannelLayoutTag = 0;
        goto LABEL_50;
      default:
        v33 = 6619138;
        break;
    }

    v25->mChannelLayoutTag = v33;
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_0_172();
  if (v14 == v31)
  {
    v32 = 3;
  }

  else
  {
    v32 = 9;
  }

  LODWORD(v26[1].mChannelDescriptions[0].mCoordinates[0]) = v32;
  v26[2].mNumberChannelDescriptions = 0;
LABEL_50:
  asbd.mSampleRate = v38;
  asbd.mFormatID = 1819304813;
  asbd.mFramesPerPacket = v17;
  asbd.mChannelsPerFrame = v27;
  asbd.mBitsPerChannel = v15;
  if ((v15 & 0xFFFFFFF7) == 0x10)
  {
    asbd.mFormatFlags = 14;
    asbd.mFramesPerPacket = 1;
    v34 = (v15 >> 3) * v27;
  }

  else
  {
    if (v15 != 20)
    {
      goto LABEL_55;
    }

    asbd.mFormatFlags = 22;
    asbd.mFramesPerPacket = 1;
    v34 = 3 * v27;
  }

  asbd.mBytesPerFrame = v34;
  asbd.mBytesPerPacket = v34;
LABEL_55:
  if (*v18)
  {
    CFRelease(*v18);
    *v18 = 0;
  }

  v23 = CMAudioFormatDescriptionCreate(*(a1 + 8), &asbd, 0x20uLL, v26, 0, 0, 0, (a1 + 40));
  free(v26);
  if (!v23)
  {
    *(v11 + 16) = v14;
    *v11 = v43;
    *(v11 + 4) = v17;
    *(v11 + 8) = v15;
    v35 = *(a1 + 16);
    if (!v35 || (appended = v35(a1, *(a1 + 32), *(a1 + 40)), !appended))
    {
LABEL_16:
      v19 = CMBlockBufferGetDataLength(theBuffer) - v12;
      v20 = *(v11 + 24);
      if (!v20)
      {
        Empty = CMBlockBufferCreateEmpty(*(a1 + 8), 1u, 0, (v11 + 24));
        if (Empty)
        {
          return Empty;
        }

        *(v11 + 32) = v17;
        *(v11 + 40) = v19;
        v22 = *(v39 + 16);
        *(v11 + 48) = *v39;
        *(v11 + 20) = a5;
        *(v11 + 64) = v22;
        *(v11 + 72) = v40;
        v20 = *(v11 + 24);
      }

      appended = CMBlockBufferAppendBufferReference(v20, theBuffer, v12, v19, 0);
      if (!appended)
      {
        *(v11 + 32) = v17;
        *(v11 + 40) = v19;
        return LPCMFlushForType(a1);
      }
    }

LABEL_60:
    v23 = appended;
LABEL_61:
    v36 = *(a1 + 88);
    v37 = *(v36 + 24);
    if (v37)
    {
      CFRelease(v37);
    }

    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    *(v36 + 40) = 0;
  }

  return v23;
}

uint64_t LPCMFlushForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(v1 + 32);
  presentationTimeStamp = *(v1 + 48);
  target = 0;
  v7 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, v2, 1u, 0, 0, v5, v6, &presentationTimeStamp, 0, &target);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = *(v1 + 20);
    if (v8)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604D0], *MEMORY[0x1E695E4D0], 1u);
      v8 = *(v1 + 20);
    }

    v9 = (*(a1 + 24))(a1, *(a1 + 32), target, *(v1 + 72), v8);
    if (target)
    {
      CFRelease(target);
    }
  }

  v10 = *(v1 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 40) = 0;
  *(v1 + 28) = 0;
  *(v1 + 20) = 0;
  return v9;
}

uint64_t FigTTMLSpanCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLSpan_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PSLPCMGetSamplesPerFrame(uint64_t a1, void *a2)
{
  v4 = 0;
  *a2 = 0;
  result = PSLPCMGetSampleFrequency(a1, &v4);
  if (!result)
  {
    *a2 = v4 / 0x258;
  }

  return result;
}

uint64_t FigPlaybackItemSegmentCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackItemSegmentCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackItemSegmentCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererNodeCreate(void *a1)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererNodeGetClassID_sRegisterFigCaptionRendererNodeBaseTypeOnce, RegisterFigCaptionRendererNodeBaseType);
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = MEMORY[0x1E695E9C0];
    *(DerivedStorage + 8) = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    *(DerivedStorage + 320) = CFArrayCreateMutable(v2, 0, v5);
    *(DerivedStorage + 312) = 257;
    *(DerivedStorage + 48) = FCRRectNull;
    *(DerivedStorage + 64) = *&byte_196E76830;
    *(DerivedStorage + 80) = xmmword_196E76840;
    *(DerivedStorage + 96) = *&byte_196E76850;
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 16);
    *(DerivedStorage + 112) = *MEMORY[0x1E695F050];
    *(DerivedStorage + 128) = v7;
    *(DerivedStorage + 16) = v6;
    *(DerivedStorage + 32) = v7;
    __asm { FMOV            V0.2D, #-1.0 }

    v13 = *MEMORY[0x1E695F060];
    *(DerivedStorage + 240) = _Q0;
    *(DerivedStorage + 256) = v13;
    *(DerivedStorage + 272) = 0;
    *(DerivedStorage + 280) = 0;
    *(DerivedStorage + 288) = 0;
    *(DerivedStorage + 296) = 0;
    *a1 = 0;
  }

  return v3;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_Compose()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 8));
    if (Count >= 1)
    {
      v3 = Count;
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v1);
      if (MutableCopy)
      {
        v5 = MutableCopy;
        v7.location = 0;
        v7.length = v3;
        CFArraySortValues(MutableCopy, v7, nodeComparatorZIndex, 0);
        FigCFArrayApplyFunction();
        CFRelease(v5);
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHLSSessionDataCopyMetadataEntryRemote()
{
  v0 = fsd_ensureClientEstablished();
  if (!v0)
  {
    v0 = FigXPCCreateBasicMessage();
    if (!v0)
    {
      v0 = FigXPCMessageSetCFString();
      if (!v0)
      {
        v0 = FigXPCMessageSetCFObject();
        if (!v0)
        {
          v0 = FigXPCMessageSetCFString();
          if (!v0)
          {
            v0 = FigXPCMessageSetCFURL();
            if (!v0)
            {
              v0 = FigXPCRemoteClientSendSyncMessageCreatingReply();
              if (!v0)
              {
                v0 = FigXPCMessageCopyCFDictionary();
              }
            }
          }
        }
      }
    }
  }

  v1 = v0;
  FigXPCRelease();
  FigXPCRelease();
  return v1;
}

uint64_t FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryRemote_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterCreate(const void *a1, uint64_t *a2)
{
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    DataBuffer = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v4 = MEMORY[0x19A8CC720](a1, 80, 0x10700402A6EFBECLL, 0);
  v5 = v4;
  if (!v4)
  {
    DataBuffer = 4294949686;
    goto LABEL_12;
  }

  v4[3] = 0u;
  v4[4] = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v6 = 0;
  }

  *v5 = v6;
  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v7, v8, v9);
  *(v5 + 8) = Mutable;
  if (!Mutable)
  {
    goto LABEL_15;
  }

  Empty = CMBlockBufferCreateEmpty(a1, 0x40u, 0, (v5 + 24));
  if (Empty)
  {
LABEL_16:
    DataBuffer = Empty;
    goto LABEL_12;
  }

  *(v5 + 36) = 10;
  v12 = CMMemoryPoolCreate(0);
  *(v5 + 40) = v12;
  if (!v12)
  {
LABEL_15:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    Empty = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  DataBuffer = allocateDataBuffer(v5);
  if (!DataBuffer)
  {
    *a2 = v5;
LABEL_11:
    v5 = 0;
  }

LABEL_12:
  MediaDataChunkWriterRelease(v5);
  return DataBuffer;
}

uint64_t allocateDataBuffer(uint64_t a1)
{
  result = FigMemoryPoolCreateBlockBuffer();
  if (!result)
  {
    result = CMBlockBufferGetDataPointer(*(a1 + 48), 0, (a1 + 64), 0, (a1 + 56));
    if (!result)
    {
      *(a1 + 72) = 0;
    }
  }

  return result;
}

uint64_t appendSampleDataOrSampleReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, size_t *a11, const __CFArray *a12, uint64_t a13)
{
  v14 = MEMORY[0x1EEE9AC00]();
  v18 = v17;
  v20 = v19;
  v297 = v21;
  v23 = v22;
  v24 = v15;
  v26 = v25;
  v27 = v14;
  v414 = *MEMORY[0x1E69E9840];
  v397 = 0;
  if (v15)
  {
    EndOffset = getEndOffset(v14, v15, &v397);
    if (EndOffset)
    {
      return EndOffset;
    }

    v16 = v397;
  }

  else
  {
    v397 = v16;
  }

  if (v16 == *(v26 + 32) && *(v26 + 24) == v297 && !*(v26 + 105))
  {
    v28 = 0;
  }

  else
  {
    *(v26 + 105) = 0;
    v28 = 1;
  }

  if (v20 < 1)
  {
    return 0;
  }

  v358 = v16;
  v334 = v27;
  cf = v23;
  v281 = v13;
  v29 = 0;
  v30 = 0;
  v289 = a13;
  v321 = v297;
  v31 = a11;
  theArray = a12;
  v354 = a9;
  v362 = a10;
  v305 = *MEMORY[0x1E6960CC0];
  HIDWORD(v293) = *(MEMORY[0x1E6960CC0] + 8);
  v285 = *MEMORY[0x1E695E480];
  v350 = *(MEMORY[0x1E6960CC0] + 12);
  HIDWORD(v346) = *(MEMORY[0x1E6960CC0] + 20);
  v313 = a11;
  v317 = v18;
  otherRange_8 = v20;
  v338 = v26;
  v342 = v24;
  while (1)
  {
    offset = v30;
    v406 = v350;
    LODWORD(v407) = HIDWORD(v346);
    v404 = v350;
    LODWORD(v405) = HIDWORD(v346);
    otherRange = v29;
    LODWORD(v371) = v28;
    if (v28)
    {
      if (v24)
      {
        v32 = *(v26 + 100);
        if (v32 < 2)
        {
          v35 = 0;
        }

        else
        {
          v33 = v358 % v32;
          v34 = v32 - v358 % v32;
          if (v33)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          if (v35)
          {
            bzero(&customBlockSource, 0x4000uLL);
            v36 = v35;
            while (v36 > 0)
            {
              if (v36 >= 0x4000)
              {
                v37 = 0x4000;
              }

              else
              {
                v37 = v36;
              }

              EndOffset = appendDataViaDataBuffer(v334, v24, v37);
              v36 -= v37;
              if (EndOffset)
              {
                return EndOffset;
              }
            }

            v29 = otherRange;
          }
        }

        v358 += v35;
        v397 = v358;
      }

      v39 = 0;
      *(v26 + 24) = v321;
      *(v26 + 40) = 0;
      v40 = MEMORY[0x1E6960CC0];
      *(v26 + 48) = *MEMORY[0x1E6960CC0];
      *(v26 + 64) = *(v40 + 16);
      v334[2] = v26;
    }

    else
    {
      v39 = *(v26 + 40);
    }

    v41 = *(v26 + 72);
    v42 = v41 >= v39;
    v43 = v41 - v39;
    if (v42)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    v45 = v20 - v29;
    OUTLINED_FUNCTION_3_127(MEMORY[0x1E6960C70]);
    LODWORD(v346) = v54;
    if (v362 != 1)
    {
      v55 = 0;
      v58 = v31[v29];
      v59 = v29 + 1;
      v60 = 1;
      do
      {
        v57 = v60;
        v55 += v58;
        if (v59 >= v20)
        {
          break;
        }

        v58 = v31[v59++];
        ++v60;
      }

      while (v58 + v55 < v44);
      goto LABEL_48;
    }

    v55 = *v31;
    if (*v31 <= v44 && v45 != 1)
    {
      break;
    }

    if (v18 == 1)
    {
      v57 = 1;
LABEL_49:
      *memoryBlock = *v354;
      *&memoryBlock[16] = *(v354 + 16);
      v61 = OUTLINED_FUNCTION_4_125(v46, v47, v48, v49, v50, v51, v52, v53, blockBufferOut, v264, v268, v272, v277, v281, v285, v289, v293, v297, cf, v305, theArray, v313, v317, v321, v325, v329, v334, v338, v342, v346, v350, v354, v358, v362, offset, v371, otherRange, otherRange_8, v386, v390, v393, v397, memoryBlock[0]);
      CMTimeMultiply(v62, v61, v57);
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_3_127(MEMORY[0x1E6960CC0]);
    v63 = v29;
    v64 = v29 + 1;
    v57 = 1;
LABEL_53:
    v65 = v354 + 72 * v63;
    do
    {
      *memoryBlock = *&customBlockSource.version;
      *&memoryBlock[16] = *(&customBlockSource.FreeBlock + 4);
      *&rhs.value = *v65;
      OUTLINED_FUNCTION_1_164(*(v65 + 16));
      CMTimeAdd(v68, v66, v67);
      ++v63;
      v65 += 72;
    }

    while (v63 < v64);
    v26 = v338;
    v24 = v342;
    v29 = otherRange;
LABEL_56:
    v69 = *&customBlockSource.version;
    AllocateBlock_high = HIDWORD(customBlockSource.AllocateBlock);
    FreeBlock = customBlockSource.FreeBlock;
    LODWORD(v409) = customBlockSource.refCon;
    if (v371 || v44 >= v55)
    {
      goto LABEL_62;
    }

    v28 = 1;
LABEL_84:
    v30 = offset;
LABEL_165:
    if (v29 >= v20)
    {
      return 0;
    }
  }

  if (v55)
  {
    if (v45 >= (v44 / v55))
    {
      v57 = v44 / v55;
    }

    else
    {
      v57 = v20 - v29;
    }

    v55 *= v57;
LABEL_48:
    if (v18 == 1)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_3_127(MEMORY[0x1E6960CC0]);
    if (v57 < 1)
    {
      goto LABEL_56;
    }

    v63 = v29;
    v64 = v57 + v29;
    goto LABEL_53;
  }

  if (v18 == 1)
  {
    v57 = 0;
    v55 = 0;
    goto LABEL_49;
  }

  v55 = 0;
  v57 = 0;
  *&customBlockSource.version = *MEMORY[0x1E6960CC0];
  v69 = *&customBlockSource.version;
  AllocateBlock_high = HIDWORD(customBlockSource.AllocateBlock);
  FreeBlock = v350;
  LODWORD(v409) = HIDWORD(v346);
LABEL_62:
  LODWORD(v325) = AllocateBlock_high;
  v330 = v69;
  *&customBlockSource.version = *(v26 + 76);
  *(&customBlockSource.FreeBlock + 4) = *(v26 + 92);
  OUTLINED_FUNCTION_8_66();
  if ((OUTLINED_FUNCTION_12_57(v71, v72, v73, v74, v75, v76, v77, v78, blockBufferOut, v264, v268, v272, v277, v281, v285, v289, v293, v297, cf, v305, theArray, v313, v317, v321, v325, v330, v334, v338, v342, v346, v350, v354, v358, v362, offset, v371, otherRange, otherRange_8, v386, v390, v393, v397, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v399, v400, v401, v402, v403, v404, v405, v406, v407, FreeBlock, v409, *&customBlockSource.version) & 0x80000000) != 0)
  {
    v387 = *(MEMORY[0x1E6960CC0] + 8);
    v82 = v306;
  }

  else
  {
    *memoryBlock = *(v26 + 76);
    *&memoryBlock[16] = *(v26 + 92);
    *&rhs.value = *(v26 + 48);
    OUTLINED_FUNCTION_1_164(*(v26 + 64));
    CMTimeSubtract(v81, v79, v80);
    v82 = *&customBlockSource.version;
    v387 = *(&customBlockSource.AllocateBlock + 4);
  }

  if (v18 == 1)
  {
    v83 = *v355;
    v84 = *(v355 + 8);
    rhs.value = *(v355 + 12);
    rhs.timescale = *(v355 + 20);
    *&customBlockSource.version = v82;
    *(&customBlockSource.AllocateBlock + 4) = v387;
    OUTLINED_FUNCTION_7_83();
    *&memoryBlock[12] = *(v85 + 12);
    *&memoryBlock[20] = *(v85 + 20);
    v94 = OUTLINED_FUNCTION_12_57(v86, v87, v88, v89, v90, v91, v92, v93, blockBufferOuta, v265, v269, v273, v278, v282, v286, v290, v294, v298, cfa, v306, theArraya, v314, v318, v322, v326, v331, v335, v339, v343, v347, v351, v355, v359, v363, offseta, v372, otherRangea, otherRange_8a, v387, *(&v387 + 1), v394, v397, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v399, v400, v401, v402, v403, v404, v405, v406, v407, FreeBlock, v409, *&customBlockSource.version);
    if ((v94 & 0x80000000) != 0 || v45 == 1)
    {
      value = rhs.value;
      timescale = rhs.timescale;
      v45 = 1;
    }

    else
    {
      *&memoryBlock[8] = v387;
      v102 = OUTLINED_FUNCTION_4_125(v94, v95, v96, v97, v98, v99, v100, v101, blockBufferOuta, v265, v269, v273, v278, v282, v286, v290, v294, v298, cfa, v306, theArraya, v314, v318, v322, v326, v331, v335, v339, v343, v347, v351, v355, v359, v363, offseta, v372, otherRangea, otherRange_8a, v387, *(&v387 + 1), v394, v397, v82);
      CMTimeConvertScale(v103, v102, v84, kCMTimeRoundingMethod_RoundTowardZero);
      if (v45 >= *&customBlockSource.version / v83)
      {
        v45 = *&customBlockSource.version / v83;
      }

      OUTLINED_FUNCTION_7_83();
      *&memoryBlock[12] = rhs.value;
      *&memoryBlock[20] = rhs.timescale;
      v112 = OUTLINED_FUNCTION_4_125(v104, v105, v106, v107, v108, v109, v110, v111, blockBufferOutb, v266, v270, v274, v279, v283, v287, v291, v295, v299, cfb, v307, theArrayb, v315, v319, v323, v327, v332, v336, v340, v344, v348, v352, v356, v360, v364, offsetb, v373, otherRangeb, otherRange_8b, v388, v391, v395, v397, memoryBlock[0]);
      v114 = CMTimeMultiply(v113, v112, v45);
      OUTLINED_FUNCTION_5_108(v114, v115, v116, v117, v118, v119, v120, v121, blockBufferOute, v267, v271, v275, v280, v284, v288, v292, v296, v300, cfc, v308, theArrayc, v316, v320, v324, v328, v333, v337, v341, v345, v349, v353, v357, v361, v365, offsetc, v374, otherRanged, otherRange_8c, v389, v392, v396, v397, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v399, v400, v401, v402, v403, v404, v405, v406, v407, FreeBlock, v409, *&customBlockSource.version, *(&customBlockSource.AllocateBlock + 4));
    }
  }

  else
  {
    v122 = v355 + 72 * otherRangea;
    value = v351;
    timescale = HIDWORD(v347);
    v123 = otherRangea + 1;
    v124 = 1;
    v83 = v306;
    v84 = HIDWORD(v294);
    do
    {
      v45 = v124;
      OUTLINED_FUNCTION_7_83();
      *&memoryBlock[12] = value;
      *&memoryBlock[20] = timescale;
      *&rhs.value = *v122;
      OUTLINED_FUNCTION_1_164(*(v122 + 16));
      v128 = CMTimeAdd(v127, v125, v126);
      OUTLINED_FUNCTION_5_108(v128, v129, v130, v131, v132, v133, v134, v135, blockBufferOuta, v265, v269, v273, v278, v282, v286, v290, v294, v298, cfa, v306, theArraya, v314, v318, v322, v326, v331, v335, v339, v343, v347, v351, v355, v359, v363, offseta, v372, otherRangea, otherRange_8a, v387, *(&v387 + 1), v394, v397, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v399, v400, v401, v402, v403, v404, v405, v406, v407, FreeBlock, v409, *&customBlockSource.version, *(&customBlockSource.AllocateBlock + 4));
      if (v123 >= otherRange_8a)
      {
        break;
      }

      OUTLINED_FUNCTION_7_83();
      *&memoryBlock[12] = value;
      *&memoryBlock[20] = *(v136 + 32);
      *&rhs.value = *(v122 + 72);
      OUTLINED_FUNCTION_1_164(*(v122 + 88));
      v140 = CMTimeAdd(v139, v137, v138);
      v148 = OUTLINED_FUNCTION_12_57(v140, v141, v142, v143, v144, v145, v146, v147, blockBufferOuta, v265, v269, v273, v278, v282, v286, v290, v294, v298, cfa, v306, theArraya, v314, v318, v322, v326, v331, v335, v339, v343, v347, v351, v355, v359, v363, offseta, v372, otherRangea, otherRange_8a, v387, *(&v387 + 1), v394, v397, v82, v387, *(&v387 + 1), v399, v400, v401, v402, v403, v404, v405, v406, v407, FreeBlock, v409, *&customBlockSource.version);
      ++v123;
      v124 = v45 + 1;
      v122 += 72;
    }

    while (v148 < 0);
  }

  if (v363 == 1)
  {
    v31 = v314;
    v18 = v318;
    v149 = *v314 * v45;
    v20 = otherRange_8a;
  }

  else
  {
    v31 = v314;
    v18 = v318;
    v20 = otherRange_8a;
    v149 = 0;
    if (v45 >= 1)
    {
      v150 = otherRangea;
      do
      {
        v149 += v314[v150++];
      }

      while (v150 < v45 + otherRangea);
    }
  }

  v406 = value;
  LODWORD(v407) = timescale;
  *&customBlockSource.version = v82;
  *(&customBlockSource.AllocateBlock + 4) = v387;
  OUTLINED_FUNCTION_7_83();
  *&memoryBlock[12] = v151;
  *&memoryBlock[20] = v152;
  v161 = OUTLINED_FUNCTION_12_57(v153, v154, v155, v156, v157, v158, v159, v160, blockBufferOuta, v265, v269, v273, v278, v282, v286, v290, v294, v298, cfa, v306, theArraya, v314, v318, v322, v326, v331, v335, v339, v343, v347, v351, v355, v359, v363, offseta, v372, otherRangea, otherRange_8a, v387, *(&v387 + 1), v394, v397, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v399, v400, v401, v402, v403, v404, v405, v406, v407, FreeBlock, v409, *&customBlockSource.version);
  if (!v371 && v161 < 0)
  {
    v28 = 1;
    v26 = v338;
    v24 = v342;
    v29 = otherRangec;
    goto LABEL_84;
  }

  p_FreeBlock = &FreeBlock;
  if (v45 < v57)
  {
    p_FreeBlock = &v406;
  }

  v163 = v329;
  if (v45 < v57)
  {
    v163 = v83;
  }

  v375 = v163;
  v164 = v325;
  if (v45 < v57)
  {
    v164 = v84;
  }

  LODWORD(v329) = v164;
  if (v45 >= v57)
  {
    v165 = v57;
  }

  else
  {
    v165 = v45;
  }

  if (v45 >= v57)
  {
    v166 = v55;
  }

  else
  {
    v166 = v149;
  }

  v404 = *p_FreeBlock;
  LODWORD(v405) = *(p_FreeBlock + 2);
  v167 = otherRangec;
  if (!v342)
  {
    goto LABEL_143;
  }

  v168 = CFGetTypeID(cf);
  if (*(v338 + 104))
  {
    v169 = 0;
  }

  else
  {
    v170 = *v338;
    v169 = 0;
    if (*v338 != 1986618469)
    {
      v171 = v170 == 1668047728 || v170 == 1835365473;
      v172 = v171 || v170 == 1935832172;
      v173 = v172 || v170 == 1936684398;
      v174 = v173 || v170 == 1952807028;
      if (v174 || v170 == 1953325924)
      {
        v169 = 1;
      }
    }
  }

  if (CMBlockBufferGetTypeID() != v168)
  {
    if (CVPixelBufferGetTypeID() == v168)
    {
      EndOffset = CVPixelBufferLockBaseAddress(cf, 0);
      if (EndOffset)
      {
        return EndOffset;
      }

      CVPixelBufferGetBaseAddress(cf);
      if (v169)
      {
        appended = appendDataViaDataBuffer(v334, v342, v166);
      }

      else
      {
        appended = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(v334, v342, 0);
        if (!appended)
        {
          appended = appendAggregateBBufToByteStream(v334);
          if (!appended)
          {
            appended = CMByteStreamAppend();
          }
        }
      }

      v202 = appended;
      CVPixelBufferUnlockBaseAddress(cf, 0);
      goto LABEL_141;
    }

    goto LABEL_143;
  }

  v176 = cf;
  IsMemoryPoolBlockBuffer = FigIsMemoryPoolBlockBuffer();
  if (!IsMemoryPoolBlockBuffer || (OUTLINED_FUNCTION_613(), IsMemoryPoolBlockBuffer = CMBlockBufferIsRangeContiguous(v185, v186, v187), !IsMemoryPoolBlockBuffer))
  {
    v204 = OUTLINED_FUNCTION_2_156(IsMemoryPoolBlockBuffer, v178, v179, v180, v181, v182, v183, v184, blockBufferOut, v264, v268, v272, v277, v281, v285, v289, v293, v297, cf, v305, theArray, v313, v317, v321, v325, v329, v334);
    v207 = v176;
    v208 = offset;
    v209 = v166;
    goto LABEL_135;
  }

  DataLength = CMBlockBufferGetDataLength(cf);
  v401 = 0;
  v402 = 0;
  v400 = 0;
  v189 = *(v338 + 100);
  v190 = FigMemoryPoolBlockBufferGetPaddedWriteInfo();
  if (v190)
  {
    goto LABEL_129;
  }

  if (v189 < 2 || (offset + v166) != DataLength)
  {
    v198 = OUTLINED_FUNCTION_2_156(v190, v191, v192, v193, offset, v194, v195, v196, blockBufferOut, v264, v268, v272, v277, v281, v285, v289, v293, v297, cf, v305, theArray, v313, v317, v321, v325, v329, v334);
    v190 = appendBlockBufferToSampleDataDestination(v198, v199, v200, cf, v201, v166);
    goto LABEL_129;
  }

  v325 = v400;
  v233 = *v334;
  *memoryBlock = 0;
  rhs.value = 0;
  value = 0;
  v403 = 0;
  OUTLINED_FUNCTION_613();
  if (CMBlockBufferIsRangeContiguous(v234, v235, v236) != 1)
  {
    fig_log_get_emitter();
    v210 = FigSignalErrorAtGM();
    v167 = otherRangec;
    if (v210)
    {
      goto LABEL_136;
    }

    v204 = OUTLINED_FUNCTION_2_156(v210, v251, v252, v253, v254, v325 + v166, v255, v256, blockBufferOut, v264, v268, v272, v277, v281, v285, v289, v293, v297, cf, v305, theArray, v313, v317, v321, v325, v329, v334);
    v207 = 0;
    v208 = offset;
LABEL_135:
    v210 = appendBlockBufferToSampleDataDestination(v204, v205, v206, v207, v208, v209);
LABEL_136:
    v202 = v210;
    goto LABEL_142;
  }

  v190 = FigMemoryPoolBlockBufferGetPaddedWriteInfo();
  if (v190)
  {
LABEL_129:
    v202 = v190;
  }

  else
  {
    customBlockSource.version = 0;
    if (cf)
    {
      v237 = CFRetain(cf);
    }

    else
    {
      v237 = 0;
    }

    customBlockSource.refCon = v237;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = mdcwMemPoolBBufSourceRelease;
    v238 = CMBlockBufferCreateWithMemoryBlock(v233, *memoryBlock, rhs.value, 0, &customBlockSource, 0, rhs.value, 0, &v403);
    v245 = v403;
    if (v238)
    {
      v202 = v238;
      if (v403)
      {
        CFRelease(v403);
      }

      if (cf)
      {
        v250 = cf;
LABEL_175:
        CFRelease(v250);
      }
    }

    else
    {
      v246 = OUTLINED_FUNCTION_2_156(v238, v239, v240, v241, v242, v325 + v166, v243, v244, blockBufferOutd, v264, v268, v272, v277, v281, v285, v289, v293, v297, cf, v305, theArray, v313, v317, v321, v325, v329, v334);
      v202 = appendBlockBufferToSampleDataDestination(v246, v247, v248, v245, offset, v249);
      if (v245)
      {
        v250 = v245;
        goto LABEL_175;
      }
    }
  }

LABEL_141:
  v167 = otherRangec;
LABEL_142:
  if (v202)
  {
    return v202;
  }

LABEL_143:
  if (v18 == 1)
  {
    v211 = 1;
  }

  else
  {
    v211 = v165;
  }

  if (v18 == 1)
  {
    v212 = 0;
  }

  else
  {
    v212 = v167;
  }

  if (v362 == 1)
  {
    v213 = 1;
  }

  else
  {
    v213 = v165;
  }

  if (v362 == 1)
  {
    v214 = 0;
  }

  else
  {
    v214 = v167;
  }

  if (theArray)
  {
    if (v167 || CFArrayGetCount(theArray) != v165)
    {
      OUTLINED_FUNCTION_613();
      Mutable = CFArrayCreateMutable(v216, v217, v218);
      v415.location = otherRangec;
      v415.length = v165;
      CFArrayAppendArray(Mutable, theArray, v415);
    }

    else
    {
      Mutable = CFRetain(theArray);
    }
  }

  else
  {
    Mutable = 0;
  }

  v219 = &v31[v214];
  v26 = v338;
  v276 = *(v338 + 16);
  blockBufferOutc = v219;
  v220 = (*(v338 + 8))(v346, v358, v166, v297, v165, v211, v354 + 72 * v212, v213);
  if (!v220)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v221 = v358 + v166;
    v222 = *(v338 + 40) + v166;
    *(v338 + 32) = v358 + v166;
    *(v338 + 40) = v222;
    OUTLINED_FUNCTION_8_66();
    rhs.value = v375;
    rhs.timescale = v329;
    *&rhs.flags = v404;
    HIDWORD(rhs.epoch) = v405;
    v231 = OUTLINED_FUNCTION_4_125(v223, v224, v225, v226, v227, v228, v229, v230, blockBufferOutc, Mutable, v289, v276, v277, v281, v285, v289, v293, v297, cf, v305, theArray, v313, v317, v321, v325, v329, v334, v338, v342, v346, v350, v354, v358, v362, offset, v375, otherRangec, otherRange_8, v386, v390, v393, v397, memoryBlock[0]);
    CMTimeAdd(v232, v231, &rhs);
    v28 = 0;
    *(v26 + 48) = *&customBlockSource.version;
    *(v26 + 64) = *(&customBlockSource.FreeBlock + 4);
    v358 = v221;
    v397 = v221;
    v30 = (v166 + offsetd);
    v29 = v165 + otherRangee;
    v24 = v342;
    goto LABEL_165;
  }

  v202 = v220;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v202;
}

size_t MediaDataChunkWriterFlush(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v3 = *(a1 + 16);
    if (v3 && *(v3 + 100) == 0x4000)
    {
      v4 = *(a1 + 72) % 0x4000;
      if (v4)
      {
        v5 = 0x4000 - v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    result = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(a1, a2, v5);
    if (!result)
    {
      result = appendAggregateBBufToByteStream(a1);
      if (!result)
      {
        *(a1 + 16) = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

size_t appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(uint64_t a1, int a2, size_t a3)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  if (a3)
  {
    if (*(a1 + 64) - v3 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = *(a1 + 64) - v3;
    }

    bzero((*(a1 + 56) + v3), v6);
    v3 = *(a1 + 72) + v6;
    *(a1 + 72) = v3;
  }

  result = appendBlockBufferReferenceToAggregateBBuf(a1, a2, *(a1 + 48), 0, v3);
  if (!result)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 48) = 0;
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;

    return allocateDataBuffer(a1);
  }

  return result;
}

size_t appendAggregateBBufToByteStream(uint64_t a1)
{
  v2 = (a1 + 24);
  result = CMBlockBufferGetDataLength(*(a1 + 24));
  if (result)
  {
    result = appendBlockBufferToByteStream();
    if (!result)
    {
      if (*v2)
      {
        CFRelease(*v2);
        *v2 = 0;
      }

      result = CMBlockBufferCreateEmpty(*a1, 0x40u, 0, v2);
      if (!result)
      {
        *(a1 + 32) = 0;
      }
    }
  }

  return result;
}

uint64_t getEndOffset(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  result = v6(a2, 0, &v9);
  if (!result)
  {
    DataLength = CMBlockBufferGetDataLength(*(a1 + 24));
    result = 0;
    *a3 = *(a1 + 72) + v9 + DataLength;
  }

  return result;
}

size_t appendDataViaDataBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_349();
  while (1)
  {
    v7 = v6[9];
    v8 = v4 >= v6[8] - v7 ? v6[8] - v7 : v4;
    memcpy((v6[7] + v7), v3, v8);
    v9 = v6[8];
    v10 = v6[9] + v8;
    v6[9] = v10;
    if (v10 == v9)
    {
      result = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(v6, v5, 0);
      if (result)
      {
        break;
      }
    }

    v3 += v8;
    v4 -= v8;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t appendBlockBufferToByteStream()
{
  OUTLINED_FUNCTION_349();
  v6 = 0;
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v1)
  {
    return 4294954514;
  }

  result = v1(v0, 0, &v6);
  if (!result)
  {
    v3 = *(CMBaseObjectGetVTable() + 16);
    if (*v3 < 4uLL || !v3[7] || (v4 = OUTLINED_FUNCTION_1_49(), result = v5(v4), result == -12782))
    {
      OUTLINED_FUNCTION_1_49();
      return CMByteStreamAppendBlockBuffer();
    }
  }

  return result;
}

size_t appendBlockBufferReferenceToAggregateBBuf(uint64_t a1, int a2, CMBlockBufferRef targetBBuf, size_t offsetToData, size_t dataLength)
{
  result = CMBlockBufferAppendBufferReference(*(a1 + 24), targetBBuf, offsetToData, dataLength, 0);
  if (!result)
  {
    v7 = *(a1 + 36);
    v8 = *(a1 + 32) + 1;
    *(a1 + 32) = v8;
    if (v8 == v7)
    {

      return appendAggregateBBufToByteStream(a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MediaDataChunkWriterAddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterAddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterAddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterAddTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleReference_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleReference_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleReference_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleReference_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleReference_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleReference_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleReference_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackStartNewChunk_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackStartNewChunk_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterGetEntireLength_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterGetEntireLength_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterGetEntireLength_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCaptionRendererTimerCreate_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t HandleSampleGeneratorMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v6 = 0;
  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t HandleNoReplyFigSampleGeneratorMessage(uint64_t a1, void *a2)
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

  else
  {
    return 4294951138;
  }
}

void __sampleBufferGenerator_bufferQueue_dataReadyCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  value = 0;
  if (v1)
  {
    v2 = CMBufferQueueDequeueIfDataReadyAndRetain(*v1);
    if (v2)
    {
      v3 = v2;
      while (1)
      {
        FigSimpleMutexLock();
        v4 = v1[2];
        if (!v4)
        {
          break;
        }

        if (CFDictionaryGetValueIfPresent(v4, v3, &value))
        {
          v7 = 0;
          CFNumberGetValue(value, kCFNumberSInt64Type, &v7);
          v5 = v1[5];
          v6 = v7;
          cf = 0;
          xdict = 0;
          if (!FigXPCCreateBasicMessage())
          {
            xpc_dictionary_set_int64(xdict, "RequestID", v6);
            xpc_dictionary_set_int64(xdict, "SampleBufferErrorReturn", 0);
            if (!FigXPCServerCopyMemoryOrigin() && !FigXPCMessageAddDataBufferFromCMSampleBuffer())
            {
              xpc_connection_send_message(v5, xdict);
            }
          }

          FigXPCRelease();
          if (cf)
          {
            CFRelease(cf);
          }

          CFDictionaryRemoveValue(v1[2], v3);
        }

        FigSimpleMutexUnlock();
        CFRelease(v3);
        v3 = CMBufferQueueDequeueIfDataReadyAndRetain(*v1);
        if (!v3)
        {
          return;
        }
      }

      FigSimpleMutexUnlock();
      CFRelease(v3);
    }
  }
}

uint64_t sampleBufferGeneratorServer_createSampleBufferAtCursor(CFTypeRef cf, int a2, uint64_t a3, void *a4, void *a5)
{
  v9 = cf;
  v41 = 0;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  if (a2)
  {
    if (cf)
    {
      v10 = CFGetTypeID(cf);
      if (v10 == FigSampleGeneratorBatchGetTypeID())
      {
        v11 = v9;
        v9 = 0;
        if (a3)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_31:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    goto LABEL_32;
  }

  if (!cf)
  {
    goto LABEL_31;
  }

  v26 = CFGetTypeID(cf);
  if (v26 != FigSampleGeneratorGetTypeID())
  {
    goto LABEL_31;
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_31;
  }

LABEL_5:
  length = 0;
  data = xpc_dictionary_get_data(a4, "SampleBufferGenerationRequest", &length);
  if (!data || length != 48 || (v13 = *(a3 + 32)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
LABEL_32:
    v35 = FigSignalErrorAtGM();
    CallbackParameters = 0;
    goto LABEL_25;
  }

  v14 = data;
  CallbackParameters = sampleBufferGeneratorServer_createCallbackParameters(*(a3 + 32), 1, v11);
  if (!CallbackParameters)
  {
    goto LABEL_33;
  }

  v16 = (*(a3 + 40) + 1);
  *(a3 + 40) = v16;
  SampleBufferGeneratorRequestFromXPCMessage = sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage(v16 << 32, v14, a3, v39);
  if (!SampleBufferGeneratorRequestFromXPCMessage)
  {
    if (a2)
    {
      v18 = v39[0];
      v19 = *&v39[1];
      v20 = DWORD2(v39[1]);
      v21 = *(&v39[1] + 12);
      v23 = DWORD1(v39[2]);
      v22 = DWORD2(v39[2]);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v24)
      {
        v25 = v24(v11, v18, *(&v18 + 1), v19, v20, v21, v23, v22, 0, 0, 0, &v41);
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    v27 = *(v13 + 48);
    if (!v27 || !CFArrayGetCount(v27))
    {
      v28 = v39[0];
      v29 = *&v39[1];
      v30 = DWORD2(v39[1]);
      v31 = *(&v39[1] + 12);
      v32 = DWORD1(v39[2]);
      v33 = DWORD2(v39[2]);
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v34)
      {
        v25 = v34(v9, v28, *(&v28 + 1), v29, v30, v31, v32, v33, 0, 0, 0, &v41);
LABEL_21:
        v35 = v25;
        if (v25)
        {
          goto LABEL_25;
        }

        sampleBufferGeneratorServer_requestCallback(CallbackParameters, v39, 0, v41);
        if (xpc_array_get_count(CallbackParameters[2]) == 1)
        {
          dictionary = xpc_array_get_dictionary(CallbackParameters[2], 0);
          xpc_dictionary_set_value(a5, "SampleBufferResponse", dictionary);
          v35 = 0;
          goto LABEL_25;
        }

        goto LABEL_33;
      }

LABEL_24:
      v35 = 4294954514;
      goto LABEL_25;
    }

LABEL_33:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    SampleBufferGeneratorRequestFromXPCMessage = FigSignalErrorAtGM();
  }

  v35 = SampleBufferGeneratorRequestFromXPCMessage;
LABEL_25:
  if (v41)
  {
    CFRelease(v41);
  }

  sampleBufferGeneratorServer_destroySampleBufferGeneratorRequest(v39);
  sampleBufferGeneratorServer_destroyCallbackParameters(CallbackParameters);
  return v35;
}

void *sampleBufferGeneratorServer_createCallbackParameters(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040C95B7C1FuLL);
  if (v6 && a1)
  {
    v7 = xpc_array_create(0, 0);
    v6[2] = v7;
    if (v7)
    {
      v6[3] = a1;
      *v6 = a2;
      if (a3)
      {
        v8 = CFRetain(a3);
      }

      else
      {
        v8 = 0;
      }

      v6[1] = v8;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    if (FigSignalErrorAtGM())
    {
      sampleBufferGeneratorServer_destroyCallbackParameters(v6);
      return 0;
    }
  }

  return v6;
}

void sampleBufferGeneratorServer_requestCallback(uint64_t *a1, uint64_t a2, int a3, opaqueCMSampleBuffer *a4)
{
  if (!a1)
  {
    return;
  }

  v5 = a1[3];
  if (!v5)
  {
    return;
  }

  v6 = *(a2 + 60);
  if (v6)
  {
    v15 = 0;
    CFNumberGetValue(v6, kCFNumberSInt64Type, &v15);
    if (v15 < *a1)
    {
      if (!a4 || CMSampleBufferDataIsReady(a4))
      {
        v9 = 1;
LABEL_13:
        v11 = v15;
        v12 = a1[2];
        cf = 0;
        v13 = xpc_dictionary_create(0, 0, 0);
        v14 = v13;
        if (v13)
        {
          xpc_dictionary_set_int64(v13, "SampleBufferErrorReturn", a3);
          xpc_dictionary_set_int64(v14, "RequestID", v11);
          xpc_dictionary_set_BOOL(v14, "SampleBufferDataReady", v9);
          if (!a4 || !FigXPCServerCopyMemoryOrigin() && !FigXPCMessageAddCMSampleBuffer())
          {
            xpc_array_append_value(v12, v14);
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          FigSignalErrorAtGM();
        }

        FigXPCRelease();
        if (cf)
        {
          CFRelease(cf);
        }

        return;
      }

      FigSimpleMutexLock();
      CFDictionarySetValue(*(v5 + 16), a4, v6);
      FigSimpleMutexUnlock();
      cf = 0;
      if (!a1[1])
      {
        v10 = *(v5 + 48);
        cf = v10;
        goto LABEL_12;
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        v10 = cf;
LABEL_12:
        CFArrayAppendValue(v10, a4);
        v9 = 0;
        goto LABEL_13;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
    return;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  FigSignalErrorAtGM();
}

uint64_t sampleBufferGenerator_sendDataFailedMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sampleBufferGenerator_sendDataFailedMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sampleBufferGenerator_bufferQueue_dataReadyCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sampleBufferGeneratorServer_enqueuePendingSampleBuffers_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigCFCaptionRendererProcessCaptionCommandData(uint64_t a1, int a2, const __CFDictionary *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v6 = result;
    switch(a2)
    {
      case 1:
        goto LABEL_23;
      case 6:
        FigSimpleMutexLock();
        FigCFDictionaryGetBooleanIfPresent();
        Value = CFDictionaryGetValue(a3, @"W");
        v8 = v6[38];
        v6[38] = Value;
        if (!Value)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      case 7:
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(a3, @"C");
        v8 = v6[37];
        v6[37] = Value;
        if (Value)
        {
LABEL_7:
          CFRetain(Value);
        }

LABEL_8:
        if (v8)
        {
          CFRelease(v8);
        }

        return FigSimpleMutexUnlock();
      case 8:
        FigSimpleMutexLock();
        if (a3)
        {
          v9 = CFDictionaryGetValue(a3, @"V");
          a3 = v9;
          v10 = v6[41];
          v6[41] = v9;
          if (v9)
          {
            CFRetain(v9);
            v11 = 0;
            if (!v10)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v10 = v6[41];
          v6[41] = 0;
        }

        v11 = 1;
        if (!v10)
        {
          goto LABEL_20;
        }

LABEL_19:
        CFRelease(v10);
LABEL_20:
        if ((v11 & 1) == 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
          CFDictionaryGetValue(ValueAtIndex, @"CMTextHighlightAttributeKey_StringToHighlight");
        }

        FigSimpleMutexUnlock();
LABEL_23:
        CMNotificationCenterGetDefaultLocalCenter();

        result = CMNotificationCenterPostNotification();
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t FigCFCaptionRendererResetCaptions()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v1 = result;
    FigSimpleMutexLock();
    v2 = *(v1 + 296);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 296) = 0;
    }

    v3 = *(v1 + 304);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 304) = 0;
    }

    FigCaptionLayoutReleaseCaptionElementArray(*(v1 + 312));
    *(v1 + 312) = 0;

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigCFCaptionRendererSetFontName(uint64_t a1, const __CFString *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    FigSimpleMutexLock();
    v5 = *(v4 + 24);
    if (v5)
    {
      CFRelease(v5);
    }

    *(v4 + 24) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigCFCaptionRendererSetStyleOptions(uint64_t a1, const __CFDictionary *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    FigSimpleMutexLock();
    v5 = *(v4 + 344);
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 344) = 0;
    }

    if (a2 && (Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2), (*(v4 + 344) = Copy) == 0))
    {

      return FigSignalErrorAtGM();
    }

    else
    {

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t FigSteeringManifest_replyingMessageHandler()
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

uint64_t FPSupport_SetMetadataOutputCallbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    *(result + 24) = a2;
    *(result + 32) = a3;
    result = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v3 + 40) = result;
  }

  return result;
}

uint64_t fpsupport_forEachMetadataOutput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    context[0] = a2;
    context[1] = a3;
    v3 = *(a1 + 48);
    if (v3)
    {
      v6 = 0;
      v8.length = CFArrayGetCount(v3);
      v8.location = 0;
      CFArrayApplyFunction(v3, v8, fpsupport_forEachMetadataOutputApplierFn, context);
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }
}

uint64_t fpsupport_addRenderPipelineToMetadataOutputApplierFn(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  cf = 0;
  key = 0;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"MetadataOutput", *(a1 + 16));
    FigCFDictionarySetInt32();
    CMTimeMakeWithSeconds(&v13, *(a1 + 40), 1000000000);
    v7 = FigSimpleRenderPipelineCreateWithCallback(v4, fpsupport_simpleRenderPipelineCallback, 0, v6, &v13, 0, &key);
    if (!v7)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(key);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v9)
      {
        v11 = 0;
        v10 = 4294954514;
        goto LABEL_8;
      }

      v7 = v9(FigBaseObject, @"SourceSampleBufferQueue", v4, &cf);
      if (!v7)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v10 = FigNotificationCenterAddWeakListener();
        if (!v10)
        {
          CFDictionarySetValue(*(a1 + 56), key, v6);
          v11 = key;
          goto LABEL_8;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    v7 = FigSignalErrorAtGM();
  }

  v10 = v7;
LABEL_19:
  v11 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (key)
  {
    CFRelease(key);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (!v10)
  {
    CFArrayAppendValue(*(a2 + 8), v11);
  }

  return v10;
}

void FigMetadataOutputReactToNewBufferFromTemporalMetadataFilter(uint64_t a1, void *target, uint64_t a3)
{
  values = target;
  if (target && !CMGetAttachment(target, *MEMORY[0x1E69604B0], 0))
  {
    v5 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    v9 = v8;
    v10 = *(v7 + 24);
    if (v10 && v8)
    {
      v10(v6, a3, v5, v8);
    }

    else if (!v8)
    {
      goto LABEL_8;
    }

    CFRelease(v9);
LABEL_8:
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t FigMetadataStorageCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataStorageCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataStorageCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataStorageCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FPSupport_UpdateMetadataOutputs_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t FPSupport_UpdateMetadataOutputs_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_UpdateMetadataOutputs_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_UpdateMetadataOutputs_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpsupport_simpleRenderPipelineCallback_cold_2(BOOL *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result == 0;
  return result;
}

uint64_t HandleAudioEngineRemoteMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  value[0] = 0;
  v4 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v4)
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
  }

  v6 = v4;
  if (!v4)
  {
    return 4294951815;
  }

  return v6;
}

uint64_t SimpleCompletionCallback(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 && !FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(0, "CompletionID", *a3);
    xpc_dictionary_set_int64(0, "CompletionStatus", a2);
    xpc_connection_send_message(*(a3 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a3);
  return FigXPCRelease();
}

uint64_t SetRateAndAnchorTimeCallback(double a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 && !FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(0, "CompletionID", *a7);
    xpc_dictionary_set_int64(0, "CompletionStatus", a3);
    xpc_dictionary_set_double(0, "Rate", a1);
    FigXPCMessageSetCMTime();
    FigXPCMessageSetCMTime();
    FigXPCMessageSetCFDictionary();
    xpc_connection_send_message(*(a7 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a7);
  return FigXPCRelease();
}

uint64_t CreateCompletionCallbackParametersFromMessageAndConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferConsumerInputForBufferedAirPlayOutputCreate(const __CFAllocator *a1, const void *a2, const char *a3, void *a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  v8 = 4294954535;
  if (a2)
  {
    if (a4)
    {
      FigSampleBufferConsumerGetClassID();
      v8 = CMDerivedObjectCreate();
      if (!v8)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = FigReentrantMutexCreate();
        *DerivedStorage = v10;
        if (v10)
        {
          *(DerivedStorage + 8) = CFRetain(a2);
          *(DerivedStorage + 16) = FigDispatchQueueCreateWithPriority();
          v11 = MEMORY[0x1E6960C70];
          v12 = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
          v13 = *(v11 + 16);
          *(DerivedStorage + 40) = v13;
          *(DerivedStorage + 48) = 0;
          *(DerivedStorage + 56) = v12;
          *(DerivedStorage + 72) = v13;
          *(DerivedStorage + 80) = 0;
          if (a3)
          {
            v14 = a3;
          }

          else
          {
            v14 = "-";
          }

          v8 = 0;
          *(DerivedStorage + 88) = CFStringCreateWithCString(a1, v14, 0x8000100u);
          *a4 = 0;
        }

        else
        {
          return 4294954536;
        }
      }
    }
  }

  return v8;
}

void FigVirtualDisplayScreenRecordingPostState()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CB810 != -1)
  {
    dispatch_once(&qword_1ED4CB810, &__block_literal_global_91);
  }

  OUTLINED_FUNCTION_11_61();
  if (v0)
  {
    FigSimpleMutexLock();
    Count = CFSetGetCount(qword_1ED4CB7F8);
    v6 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigVirtualDisplayScreenRecordingPostState_block_invoke;
    block[3] = &__block_descriptor_tmp_105;
    v4 = Count > 0;
    dispatch_async(qword_1ED4CB808, block);
    FigSimpleMutexUnlock();
  }
}

void recordingSessionRegister(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_1ED4CB810 != -1)
  {
    dispatch_once(&qword_1ED4CB810, &__block_literal_global_91);
  }

  OUTLINED_FUNCTION_11_61();
  if (v3)
  {
    if (*(DerivedStorage + 101))
    {
      if (*(DerivedStorage + 102))
      {
        if (*DerivedStorage == 2)
        {
          FigSimpleMutexLock();
          Count = CFSetGetCount(qword_1ED4CB7F8);
          CFSetAddValue(qword_1ED4CB7F8, a1);
          if (!Count)
          {
            OUTLINED_FUNCTION_0_174();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v13 = OUTLINED_FUNCTION_88_4(os_log_and_send_and_compose_flags_and_os_log_type, v6, v7, v8, v9, v10, v11, v12, v32, v33, v34, v35, SBYTE2(v35), BYTE3(v35), SHIDWORD(v35));
            if (OUTLINED_FUNCTION_77_0(v13))
            {
              OUTLINED_FUNCTION_9_62();
              OUTLINED_FUNCTION_26_22();
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_2_157();
              OUTLINED_FUNCTION_10_59();
            }

            OUTLINED_FUNCTION_1_166();
            OUTLINED_FUNCTION_8_68();
            dispatch_async(qword_1ED4CB808, &__block_literal_global_80);
          }

          FigSimpleMutexUnlock();
        }

        return;
      }

      OUTLINED_FUNCTION_0_174();
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v31 = OUTLINED_FUNCTION_88_4(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, SBYTE2(v35), BYTE3(v35), SHIDWORD(v35));
      if (OUTLINED_FUNCTION_77_0(v31))
      {
        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_174();
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = OUTLINED_FUNCTION_88_4(v14, v15, v16, v17, v18, v19, v20, v21, v32, v33, v34, v35, SBYTE2(v35), BYTE3(v35), SHIDWORD(v35));
      if (OUTLINED_FUNCTION_77_0(v22))
      {
LABEL_16:
        OUTLINED_FUNCTION_9_62();
        OUTLINED_FUNCTION_26_22();
        OUTLINED_FUNCTION_23_29();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_2_157();
        OUTLINED_FUNCTION_10_59();
      }
    }

    OUTLINED_FUNCTION_1_166();
    OUTLINED_FUNCTION_8_68();
  }
}

void recordingSessionUnregister(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_1ED4CB810 != -1)
  {
    dispatch_once(&qword_1ED4CB810, &__block_literal_global_91);
  }

  OUTLINED_FUNCTION_11_61();
  if (v3)
  {
    if (*(DerivedStorage + 101))
    {
      FigSimpleMutexLock();
      Count = CFSetGetCount(qword_1ED4CB7F8);
      CFSetRemoveValue(qword_1ED4CB7F8, a1);
      if (Count >= 1 && !CFSetGetCount(qword_1ED4CB7F8))
      {
        OUTLINED_FUNCTION_0_174();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v13 = OUTLINED_FUNCTION_88_4(os_log_and_send_and_compose_flags_and_os_log_type, v6, v7, v8, v9, v10, v11, v12, v23, v24, v25, v26, SBYTE2(v26), BYTE3(v26), SHIDWORD(v26));
        if (OUTLINED_FUNCTION_77_0(v13))
        {
          OUTLINED_FUNCTION_9_62();
          OUTLINED_FUNCTION_26_22();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_2_157();
          OUTLINED_FUNCTION_10_59();
        }

        OUTLINED_FUNCTION_1_166();
        OUTLINED_FUNCTION_8_68();
        dispatch_async(qword_1ED4CB808, &__block_literal_global_83_0);
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      OUTLINED_FUNCTION_0_174();
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = OUTLINED_FUNCTION_88_4(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25, v26, SBYTE2(v26), BYTE3(v26), SHIDWORD(v26));
      if (OUTLINED_FUNCTION_77_0(v22))
      {
        OUTLINED_FUNCTION_9_62();
        OUTLINED_FUNCTION_26_22();
        OUTLINED_FUNCTION_23_29();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_2_157();
        OUTLINED_FUNCTION_10_59();
      }

      OUTLINED_FUNCTION_1_166();
      OUTLINED_FUNCTION_8_68();
    }
  }
}

void fvds_stop(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 100))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 100) = 0;
  }

  switch(*(DerivedStorage + 4))
  {
    case 1:
      goto LABEL_14;
    case 2:
      goto LABEL_10;
    case 3:
      goto LABEL_8;
    case 4:
      goto LABEL_6;
    case 5:
      v3 = *(DerivedStorage + 32);
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v4)
      {
        v4(v3);
      }

LABEL_6:
      v5 = *(DerivedStorage + 40);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v6)
      {
        v6(v5);
      }

LABEL_8:
      v7 = *(DerivedStorage + 48);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v8)
      {
        v8(v7, 0);
      }

LABEL_10:
      v9 = *(DerivedStorage + 48);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v10)
      {
        v10(v9, 0);
      }

      v11 = *(DerivedStorage + 40);
      v12 = *(DerivedStorage + 48);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        v13(v11, v12);
      }

LABEL_14:
      v14 = *(DerivedStorage + 32);
      v15 = *(DerivedStorage + 40);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v16)
      {
        v16(v14, v15);
      }

      break;
    default:
      break;
  }

  *DerivedStorage = 0;
  if (*(DerivedStorage + 101))
  {
    if (qword_1ED4CB830 != -1)
    {
      dispatch_once(&qword_1ED4CB830, &__block_literal_global_88);
    }

    if (byte_1ED4CB7F0)
    {
      FigSimpleMutexLock();
      if (qword_1ED4CB818 == a1)
      {
        qword_1ED4CB818 = 0;
      }

      CFSetRemoveValue(qword_1ED4CB820, a1);
      FigSimpleMutexUnlock();
    }
  }

  if (*(DerivedStorage + 102))
  {

    recordingSessionUnregister(a1);
  }
}

uint64_t figTTMLDocumentWriterRegionBuilder_EndElement(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  if (v3 != *(DerivedStorage + 8))
  {
LABEL_36:
    timescale = 0;
    *(DerivedStorage + 16) = FigTTMLDocumentWriterElementGetParentElement(v3);
    return timescale;
  }

  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = Mutable;
  v7 = *(MEMORY[0x1E6960C98] + 16);
  v24 = *MEMORY[0x1E6960C98];
  v25 = v7;
  v26 = *(MEMORY[0x1E6960C98] + 32);
  FigTTMLDocumentWriterElementWalkTree(*(v4 + 8), updateContextTimeRange, 0, addExplicitCaptionRegionToDictionary, &v23);
  if (!FigCFDictionaryGetCount() || (v32 = 9, v30 = 0, v31 = 0x800000007, FigTTMLDocumentWriterElementInsertBeforeIfNotExist(*(v4 + 8), &v31, 3, &v30), !v30))
  {
    timescale = 0;
    if (!Mutable)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *&context.value = v30;
  CFDictionaryApplyFunction(Mutable, addRegionElement, &context);
  timescale = context.timescale;
  if (Mutable)
  {
LABEL_7:
    CFRelease(Mutable);
  }

LABEL_8:
  if (timescale)
  {
    return timescale;
  }

  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v9 = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = 0;
  v29 = 0;
  cf = 0;
  FigTTMLDocumentWriterElementWalkTree(*(v9 + 8), 0, 0, copyRootContainerRegion, &v31);
  if (!v31)
  {
    timescale = 0;
    goto LABEL_24;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v12 = v11(CMBaseObject, *MEMORY[0x1E6961398], v5, &v30);
    if (v12)
    {
LABEL_23:
      timescale = v12;
      goto LABEL_24;
    }

    v13 = v30;
    v14 = *(v9 + 8);
    v23 = v31;
    v24 = v14;
    v34.length = CFArrayGetCount(v30);
    v34.location = 0;
    CFArrayApplyFunction(v13, v34, mapAndAddRootContainerRegionAttribute, &v23);
    timescale = DWORD2(v24);
    if (!DWORD2(v24))
    {
      v15 = FigCaptionRegionGetCMBaseObject();
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v16)
      {
        v16(v15, *MEMORY[0x1E69613B0], v5, &v29);
      }

      v17 = FigCaptionRegionGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, *MEMORY[0x1E6961328], v5, &cf);
        v19 = cf;
      }

      else
      {
        v19 = 0;
      }

      if (!(v29 | v19))
      {
        timescale = 0;
        goto LABEL_29;
      }

      if (v29 && v19)
      {
        v20 = *(v9 + 8);
        context = **&MEMORY[0x1E6960C70];
        v12 = FigTTMLDocumentWriterMapWidthAndHeightPropertiesToExtentAttributeAndSet(v29, v19, &context, v20);
      }

      else
      {
        v12 = FigSignalErrorAtGM();
      }

      goto LABEL_23;
    }
  }

  else
  {
    timescale = 4294954514;
  }

LABEL_24:
  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_29:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (!timescale)
  {
    v21 = FigTTMLDocumentWriterElementWriteTree(*(DerivedStorage + 8), *DerivedStorage);
    if (v21)
    {
      return v21;
    }

    v3 = *(DerivedStorage + 16);
    goto LABEL_36;
  }

  return timescale;
}

uint64_t updateContextTimeRange(uint64_t a1, uint64_t a2)
{
  Attribute = FigTTMLDocumentWriterElementGetAttribute(a1, @"begin");
  v5 = FigTTMLDocumentWriterElementGetAttribute(a1, @"end");
  if (Attribute)
  {
    v6 = v5;
    v7 = CFGetTypeID(Attribute);
    if (v7 == CFDictionaryGetTypeID() && v6 != 0)
    {
      v9 = CFGetTypeID(v6);
      if (v9 == CFDictionaryGetTypeID())
      {
        memset(&v16, 0, sizeof(v16));
        CMTimeMakeFromDictionary(&v16, Attribute);
        memset(&v15, 0, sizeof(v15));
        CMTimeMakeFromDictionary(&v15, v6);
        if ((v16.flags & 0x1D) == 1 && (v15.flags & 0x1D) == 1)
        {
          memset(&v14, 0, sizeof(v14));
          start = v16;
          v12 = v15;
          CMTimeRangeFromTimeToTime(&v14, &start, &v12);
          v10 = *&v14.start.epoch;
          *(a2 + 8) = *&v14.start.value;
          *(a2 + 24) = v10;
          *(a2 + 40) = *&v14.duration.timescale;
        }
      }
    }
  }

  return 0;
}

uint64_t addExplicitCaptionRegionToDictionary(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  cf = 0;
  v21 = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = *MEMORY[0x1E695E480];
    v4(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v23);
    if (v23)
    {
      v6 = *MEMORY[0x1E6961318];
      v7 = *MEMORY[0x1E6961338];
      v8 = *MEMORY[0x1E6961300];
      while (1)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v9 = FigCaptionRegionGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(v9, v6, v5, &cf);
        }

        if (FigCFEqual())
        {
          if (v22)
          {
            CFRelease(v22);
            v22 = 0;
          }

          v11 = FigCaptionRegionGetCMBaseObject();
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v12)
          {
            v12(v11, v7, v5, &v22);
          }

          if (v22)
          {
            break;
          }
        }

        *&v19[0] = 0;
        v13 = FigCaptionRegionGetCMBaseObject();
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          v14(v13, v8, v5, v19);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        v23 = *&v19[0];
        if (!*&v19[0])
        {
          goto LABEL_28;
        }
      }

      if (v23)
      {
        Value = CFDictionaryGetValue(*a2, v22);
        if (Value)
        {
          v16 = CFRetain(Value);
          v21 = v16;
          if (v16)
          {
LABEL_27:
            v17 = *(a2 + 24);
            v19[0] = *(a2 + 8);
            v19[1] = v17;
            v19[2] = *(a2 + 40);
            FigTTMLDocumentWriterRegionTimelineAddRegionSlice(v16, v19, v23);
            goto LABEL_28;
          }
        }

        else
        {
          v21 = 0;
        }

        if (FigTTMLDocumentWriterRegionTimelineCreate(&v21))
        {
          goto LABEL_28;
        }

        CFDictionarySetValue(*a2, v22, v21);
        v16 = v21;
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return 0;
}

void mapAndAddRootContainerRegionAttribute(const void *a1, uint64_t a2)
{
  cf = 0;
  if (!*(a2 + 16))
  {
    CMBaseObject = FigCaptionRegionGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = *MEMORY[0x1E695E480];
      v7 = v5(CMBaseObject, a1, *MEMORY[0x1E695E480], &cf);
      v8 = cf;
      if (v7 || !cf)
      {
        if (!v7)
        {
LABEL_13:
          if (v8)
          {
            CFRelease(v8);
          }

          return;
        }

        Mutable = 0;
      }

      else
      {
        MEMORY[0x19A8D3660](&initRegionPropertyToAttributeMapOnce, initRegionPropertyToAttributeMap);
        Value = CFDictionaryGetValue(sRootContainerRegionPropertyToAttributeMap, a1);
        if (!Value)
        {
          goto LABEL_12;
        }

        v10 = Value;
        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v7 = v10(cf, Mutable);
        if (!v7)
        {
          CFDictionaryApplyFunction(Mutable, setAttributeToElement, *(a2 + 8));
          if (!Mutable)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
      Mutable = 0;
      v7 = -12782;
    }

    *(a2 + 16) = v7;
    if (Mutable)
    {
LABEL_11:
      CFRelease(Mutable);
    }

LABEL_12:
    v8 = cf;
    goto LABEL_13;
  }
}

uint64_t FigTTMLDocumentWriterCreateRegionBuilder_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateRegionBuilder_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

const void *PerformInitializeProperty(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_158(a1);
  result = AccessPropertyInfo(v2, *(v1 + 8), &v7);
  v4 = result;
  if (!result)
  {
    v5 = v7;
    *v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v6)
    {
      v6 = CFRetain(v6);
      v5 = v7;
    }

    v5[1] = v6;
    result = *(v1 + 32);
    if (result)
    {
      result = CFRetain(result);
      v5 = v7;
    }

    v5[2] = result;
  }

  *(v1 + 40) = v4;
  return result;
}

const void *PerformQueryProperty(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_158(a1);
  result = AccessPropertyInfo(v2, *(v1 + 8), &v7);
  v4 = result;
  if (!result)
  {
    v5 = v7;
    *(v1 + 20) = v7[1];
    v6 = *(v5 + 1);
    if (v6)
    {
      v6 = CFRetain(v6);
      v5 = v7;
    }

    *(v1 + 24) = v6;
    *(v1 + 16) = *v5;
    result = *(v5 + 2);
    if (result)
    {
      result = CFRetain(result);
      v5 = v7;
    }

    *(v1 + 32) = result;
    *(v1 + 40) = *(v5 + 32);
  }

  *(v1 + 44) = v4;
  return result;
}

uint64_t ObtainPropertySync(uint64_t a1, uint64_t a2, void *a3, CFStringRef *a4)
{
  *cf = 0u;
  context[0] = a1;
  context[1] = a2;
  group[0] = 0;
  v15 = 0u;
  LOBYTE(cf[1]) = 0;
  group[1] = 1;
  v8 = OUTLINED_FUNCTION_1_167(a1);
  dispatch_sync_f(v8, context, v9);
  v10 = HIDWORD(cf[1]);
  if (!HIDWORD(cf[1]))
  {
    v11 = v15;
    if (v15 == 1)
    {
      if (a4 && *(a1 + 136))
      {
        *a4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Potential blockage due to synchronous property query on not-yet-loaded property (%@) for HTTP(S) asset. This could have been a problem if this asset were being read from a slow network.", a2);
      }

      dispatch_group_wait(group[0], 0xFFFFFFFFFFFFFFFFLL);
      dispatch_sync_f(*(a1 + 16), context, PerformQueryProperty);
      if (HIDWORD(cf[1]))
      {
        v10 = 0;
        goto LABEL_12;
      }

      v11 = v15;
    }

    v10 = DWORD1(v15);
    if (v11 == 2)
    {
      v12 = cf[0];
      if (cf[0])
      {
        v12 = CFRetain(cf[0]);
      }

      *a3 = v12;
    }
  }

LABEL_12:
  TearDownFetchPropertyContext(context);
  return v10;
}

uint64_t PerformObtainProperty(uint64_t a1)
{
  v14 = 0;
  result = AccessPropertyInfo(*a1, *(a1 + 8), &v14);
  if (result)
  {
    goto LABEL_20;
  }

  v3 = v14;
  if (v14[32])
  {
    if (*(a1 + 56) == 1)
    {
      result = 4294951201;
      goto LABEL_20;
    }

    if (*v14)
    {
      goto LABEL_11;
    }

    v5 = *a1;
    v4 = *(a1 + 8);
    v15[2] = 0;
    v16 = 0;
    v17 = 0;
    Value = CFDictionaryGetValue(v5[15], v4);
    if (CFArrayGetCount(Value))
    {
      *v3 = 1;
      v16 = 0;
      v15[0] = v5;
      v15[1] = Value;
      PerformMultiplePropertyRequest(v15);
      goto LABEL_11;
    }

    v3 = v14;
  }

  else if (*v14)
  {
    goto LABEL_11;
  }

  *v3 = 1;
  v7 = dispatch_group_create();
  *(v14 + 3) = v7;
  dispatch_group_enter(v7);
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040CC7F86E7uLL);
  *v8 = CFRetain(*a1);
  v8[1] = CFRetain(*(a1 + 8));
  v8[5] = CFRetain(*(*a1 + 112));
  *(v8 + 48) = v14[32];
  dispatch_group_async_f(*(*a1 + 96), *(*a1 + 88), v8, *(*a1 + 104));
LABEL_11:
  v9 = v14;
  if (*v14 == 1 && *(a1 + 56) == 1)
  {
    v10 = *(v14 + 3);
    *(a1 + 48) = v10;
    dispatch_retain(v10);
    v9 = v14;
  }

  *(a1 + 20) = *(v9 + 1);
  v11 = *(v9 + 1);
  if (v11)
  {
    v11 = CFRetain(v11);
    v9 = v14;
  }

  *(a1 + 24) = v11;
  *(a1 + 16) = *v9;
  v12 = *(v9 + 2);
  if (v12)
  {
    v13 = CFRetain(v12);
    v9 = v14;
  }

  else
  {
    v13 = 0;
  }

  result = 0;
  *(a1 + 32) = v13;
  *(a1 + 40) = v9[32];
LABEL_20:
  *(a1 + 44) = result;
  return result;
}

uint64_t RequestPropertyAsync(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v9 = 0u;
  v10[8] = 0;
  v11 = 0;
  v4 = OUTLINED_FUNCTION_1_167(a1);
  dispatch_sync_f(v4, v8, v5);
  v6 = *&v10[12];
  if (!*&v10[12])
  {
    *a3 = v9;
  }

  TearDownFetchPropertyContext(v8);
  return v6;
}

void PerformReviseProperty(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_158(a1);
  v3 = (v1 + 8);
  if (!AccessPropertyInfo(v2, *(v1 + 8), &v8) && *v8 == 2)
  {
    v4 = v8[2];
    v5 = *(v1 + 32);
    v8[2] = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigAssetPayloadKey_Property, (v1 + 8), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v6);
  }

  if (*v3)
  {
    CFRelease(*v3);
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v1);
}

uint64_t RequestValidationAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  context[0] = a1;
  context[1] = a2;
  v9 = 0;
  v10 = 0;
  context[2] = a3;
  dispatch_sync_f(*(a1 + 16), context, PerformRequestValidation);
  result = HIDWORD(v10);
  if (!HIDWORD(v10))
  {
    *a4 = v9;
    if (a5)
    {
      *a5 = v10;
    }
  }

  return result;
}

void PerformRequestValidation(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_158(a1);
  v3 = AccessValidationInfo(v2, *(v1 + 8), *(v1 + 16), &v9);
  if (!v3)
  {
    v4 = v9;
    v5 = *v9;
    if (!*v9)
    {
      *v9 = 1;
      v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E004058B5FA3BuLL);
      *v6 = CFRetain(*v1);
      v7 = *(v1 + 8);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      v6[1] = v7;
      v8 = *(v1 + 16);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      v6[2] = v8;
      v6[4] = CFRetain(*(*v1 + 72));
      dispatch_group_async_f(*(*v1 + 56), *(*v1 + 48), v6, *(*v1 + 64));
      v4 = v9;
      v5 = *v9;
    }

    *(v1 + 32) = *(v4 + 2);
    *(v1 + 24) = v5;
  }

  *(v1 + 36) = v3;
}

void PerformValidationJobCompletion(uint64_t a1)
{
  keys[3] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_126();
  if (!AccessValidationInfo(*v2, *(a1 + 8), *(a1 + 16), &v14))
  {
    v3 = *(a1 + 24);
    v4 = v14;
    v5 = 2;
    if (v3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    *v14 = v6;
    *(v4 + 2) = v3;
    v7 = *MEMORY[0x1E695E480];
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v4 + 1);
    keys[0] = @"assetPayload_ValidationCriteria";
    keys[1] = @"assetPayload_Result";
    v9 = *(a1 + 16);
    values[0] = *(a1 + 8);
    values[1] = v8;
    if (v9)
    {
      keys[2] = @"assetPayload_CustomPlist";
      values[2] = v9;
      v5 = 3;
    }

    v10 = CFDictionaryCreate(v7, keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v10);
    CFRelease(v8);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

void StoreProperty(uint64_t a1, void *a2, int a3, const void *a4, const void *a5)
{
  keys[3] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_126();
  if (!AccessPropertyInfo(v10, v11, &v40))
  {
    v12 = v40;
    if (*v40 <= 1u)
    {
      *(v40 + 1) = a3;
      v13 = MEMORY[0x1E695E480];
      if (a3)
      {
        *v12 = 3;
        v14 = *(v12 + 1);
        *(v12 + 1) = a4;
        if (a4)
        {
          CFRetain(a4);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        v15 = *v13;
        v16 = CFNumberCreate(*v13, kCFNumberSInt32Type, v40 + 4);
        keys[0] = @"assetPayload_Property";
        keys[1] = @"assetPayload_Result";
        values[0] = a2;
        values[1] = v16;
        if (a4)
        {
          keys[2] = @"assetPayload_CFError";
          values[2] = a4;
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v18 = CFDictionaryCreate(v15, keys, values, v17, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v18);
      }

      else
      {
        *v12 = 2;
        *(v12 + 2) = a5;
        if (a5)
        {
          CFRetain(a5);
        }

        keys[0] = @"assetPayload_Property";
        values[0] = a2;
        v15 = *v13;
        v16 = CFDictionaryCreate(*v13, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      CFRelease(v16);
      v19 = *(v40 + 3);
      if (v19)
      {
        dispatch_group_leave(v19);
        dispatch_release(*(v40 + 3));
        *(v40 + 3) = 0;
      }

      Count = CFArrayGetCount(*(a1 + 80));
      if (Count >= 1)
      {
        v21 = Count;
        for (i = 0; i < v21; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
          if (CFSetContainsValue(ValueAtIndex[1], a2))
          {
            CFSetRemoveValue(ValueAtIndex[1], a2);
            if (!CFSetGetCount(ValueAtIndex[1]))
            {
              v24 = *ValueAtIndex;
              CFArrayRemoveValueAtIndex(*(a1 + 80), i);
              v25 = ValueAtIndex[1];
              if (v25)
              {
                CFRelease(v25);
              }

              --v21;
              --i;
              free(ValueAtIndex);
              NotifyCompletedBatch(a1, v24);
            }
          }
        }
      }

      v26 = *(a1 + 128);
      if (v26)
      {
        v27 = v40;
        v28 = CFArrayGetCount(v26);
        if (v28 >= 1)
        {
          v29 = v28;
          v30 = 0;
          Mutable = 0;
          v32 = MEMORY[0x1E695E9C0];
          do
          {
            v33 = CFArrayGetValueAtIndex(*(a1 + 128), v30);
            if (CFSetContainsValue(*(v33 + 1), a2))
            {
              v34 = *(v33 + 1);
              if (*v27 == 2)
              {
                CFSetRemoveValue(v34, a2);
              }

              else
              {
                CFSetRemoveAllValues(v34);
              }

              if (!CFSetGetCount(*(v33 + 1)))
              {
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(v15, 0, v32);
                }

                CFArrayAppendValue(Mutable, *v33);
                CFArrayRemoveValueAtIndex(*(a1 + 128), v30);
                v35 = *(v33 + 1);
                if (v35)
                {
                  CFRelease(v35);
                  *(v33 + 1) = 0;
                }

                if (*v33)
                {
                  CFRelease(*v33);
                }

                --v29;
                --v30;
                free(v33);
              }
            }

            ++v30;
          }

          while (v30 < v29);
          if (Mutable)
          {
            v36 = CFArrayGetCount(Mutable);
            if (v36)
            {
              v37 = v36;
              if (v36 >= 1)
              {
                for (j = 0; j != v37; ++j)
                {
                  v39 = CFArrayGetValueAtIndex(Mutable, j);
                  StoreProperty(a1, v39, *(v27 + 1), *(v27 + 1), 0);
                }
              }

              CFRelease(Mutable);
            }
          }
        }
      }
    }
  }
}

void CreatePropertyStore_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t CreatePropertyStore_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PerformMultiplePropertyRequest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PerformMultiplePropertyRequest_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PerformDefineMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PerformDefineMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateValidationStore_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AccessPropertyInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AccessValidationInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AccessValidationInfo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorRestoreBufferedAirPlayStates(uint64_t a1, __int128 *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    return 4294954516;
  }

  v6 = DerivedStorage;
  if (*(a2 + 12))
  {
    v8 = *a2;
    *(DerivedStorage + 60) = *(a2 + 2);
    *(DerivedStorage + 44) = v8;
    FigSimpleMutexLock();
    lhs = *a3;
    v14 = *a2;
    CMTimeSubtract(&v16, &lhs, &v14);
    *(v6 + 192) = v16;
    FigSimpleMutexUnlock();
  }

  else
  {
    v7 = *&a3->value;
    *(DerivedStorage + 60) = a3->epoch;
    *(DerivedStorage + 44) = v7;
  }

  *(v6 + 40) = 1;
  *(v6 + 92) = 0;
  FigSimpleMutexLock();
  v9 = MEMORY[0x1E6960C70];
  *(v6 + 144) = *MEMORY[0x1E6960C70];
  *(v6 + 160) = *(v9 + 16);
  FigSimpleMutexUnlock();
  v10 = *(v6 + 104);
  if (v10)
  {
    CFRelease(v10);
    *(v6 + 104) = 0;
  }

  v11 = *(v6 + 96);
  if (v11)
  {
    CFRelease(v11);
    *(v6 + 96) = 0;
  }

  FigSimpleMutexLock();
  v12 = *(v6 + 112);
  if (v12)
  {
    CFRelease(v12);
    *(v6 + 112) = 0;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigSampleBufferProcessorForBufferedAirPlayCreate(const void *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  value = 0;
  v26 = 0;
  if (a4)
  {
    FigSampleBufferProcessorGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      return v8;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = dispatch_queue_create("com.apple.coremedia.FigSampleBufferProcessor_BufferedAirPlay.notificationqueue", 0);
    *(DerivedStorage + 336) = v10;
    if (!v10)
    {
      return 4294954510;
    }

    v11 = a2 ? CFRetain(a2) : 0;
    *(DerivedStorage + 24) = v11;
    v13 = a1 ? CFRetain(a1) : 0;
    *(DerivedStorage + 32) = v13;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v14 = FigNotificationCenterAddWeakListener();
    *(DerivedStorage + 40) = 1;
    v15 = MEMORY[0x1E6960CC0];
    v16 = *MEMORY[0x1E6960CC0];
    *(DerivedStorage + 44) = *MEMORY[0x1E6960CC0];
    v17 = *(v15 + 16);
    *(DerivedStorage + 60) = v17;
    *(DerivedStorage + 92) = 0;
    *(DerivedStorage + 68) = v16;
    *(DerivedStorage + 84) = v17;
    v24 = v16;
    *(DerivedStorage + 168) = v16;
    *(DerivedStorage + 184) = v17;
    v18 = FigSimpleMutexCreate();
    *(DerivedStorage + 120) = v18;
    if (!v18)
    {
      return 4294954510;
    }

    v19 = FigSimpleMutexCreate();
    *(DerivedStorage + 136) = v19;
    if (!v19)
    {
      return 4294954510;
    }

    v20 = MEMORY[0x1E6960C70];
    v21 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 216) = *MEMORY[0x1E6960C70];
    v22 = *(v20 + 16);
    *(DerivedStorage + 232) = v22;
    *(DerivedStorage + 240) = v21;
    *(DerivedStorage + 256) = v22;
    *(DerivedStorage + 264) = v21;
    *(DerivedStorage + 280) = v22;
    *(DerivedStorage + 288) = v21;
    *(DerivedStorage + 304) = v22;
    *(DerivedStorage + 312) = v24;
    *(DerivedStorage + 328) = v17;
    *(DerivedStorage + 208) = v17;
    *(DerivedStorage + 192) = v24;
    *(DerivedStorage + 344) = 0;
    if (a3 && CFDictionaryGetValueIfPresent(a3, @"LoggingID", &value))
    {
      v23 = value;
      if (value)
      {
        v23 = CFRetain(value);
      }

      *(DerivedStorage + 344) = v23;
    }

    *a4 = v26;
    return v14;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t fbarpCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = **&MEMORY[0x1E6960CC0];
  result = 4294954516;
  if (a2 && a4)
  {
    if (*DerivedStorage)
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    else
    {
      if (CFEqual(a2, @"CurrentOutputTime"))
      {
        lhs = *(DerivedStorage + 44);
        v13 = *(DerivedStorage + 192);
        CMTimeAdd(&v15, &lhs, &v13);
        lhs = v15;
        v9 = CMTimeCopyAsDictionary(&lhs, a3);
        goto LABEL_6;
      }

      if (CFEqual(a2, @"CumulativeEndTime"))
      {
        FigSimpleMutexLock();
        *&lhs.value = *(DerivedStorage + 192);
        v11 = *(DerivedStorage + 208);
      }

      else
      {
        if (CFEqual(a2, @"TransitionIDContext"))
        {
          v12 = *(DerivedStorage + 104);
          if (!v12)
          {
            v10 = 0;
            goto LABEL_7;
          }

          v9 = CFRetain(v12);
LABEL_6:
          v10 = v9;
LABEL_7:
          result = 0;
          *a4 = v10;
          return result;
        }

        if (CFEqual(a2, @"Last\x10InputSbufPresentationEndTime"))
        {
          FigSimpleMutexLock();
          *&lhs.value = *(DerivedStorage + 144);
          v11 = *(DerivedStorage + 160);
        }

        else
        {
          if (!CFEqual(a2, @"ProcessedSingleSessionAudioDuration"))
          {
            return 4294954512;
          }

          FigSimpleMutexLock();
          *&lhs.value = *(DerivedStorage + 168);
          v11 = *(DerivedStorage + 184);
        }
      }

      lhs.epoch = v11;
      *a4 = CMTimeCopyAsDictionary(&lhs, a3);
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  return result;
}

void FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary_cold_1(uint64_t a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a4 = FigSignalErrorAtGM();
  FigSimpleMutexUnlock();
  CFRelease(a3);
}

uint64_t FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbarp_processSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbarp_processSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbarp_processSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbarp_processSampleBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererActionCreate(void *a1)
{
  *a1 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererActionGetClassID_sRegisterFigCaptionRendererActionBaseTypeOnce, RegisterFigCaptionRendererActionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    *CMBaseObjectGetDerivedStorage() = 0;
    *a1 = 0;
  }

  return v2;
}

uint64_t FigCaptionRendererMoveToActionCreate(void *a1)
{
  *a1 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererMoveToActionGetClassID_sRegisterFigCaptionRendererMoveToActionBaseTypeOnce, RegisterFigCaptionRendererMoveToActionBaseType);
  v2 = CMDerivedObjectCreate();
  if (v2)
  {
    return v2;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = *MEMORY[0x1E695EFF8];
  v4 = FigCaptionRendererActionCreate(DerivedStorage);
  if (v4)
  {
    FigSignalErrorAtGM();
  }

  else
  {
    *a1 = 0;
  }

  return v4;
}

uint64_t FigCaptionClientCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&sRegisterFigCaptionClientTypeOnce, RegisterFigCaptionClientType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = FigCaptionRendererSessionCreate(0, 0, 0, (Instance + 16));
      if (!result)
      {
        *a2 = v4;
      }
    }

    else
    {
      FigSignalErrorAtGM();
      return 0;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigCaptionClientSetCGContextDevice(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetCGContextDevice(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetMasterClock(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    CMClockGetHostTimeClock();

    return FigCaptionRendererSessionSetMasterClock(v1);
  }

  return result;
}

uint64_t FigCaptionClientSynchronizeDefaults(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSynchronizeDefaults(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetBounds(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetBounds(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetCaptionCacheRange(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetCaptionCacheRange(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientStart(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionStart(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientStop(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionStop(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetTime(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetTime(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientUpdateCGContext(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return FigCaptionRendererSessionUpdateCGContext(*(result + 16), a2);
  }

  return result;
}

uint64_t FigCaptionClientSetCaptionArray(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetCaptionArray(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetDefaultTextStyle(uint64_t a1, const void *a2)
{
  if (a1)
  {
    FigCaptionRendererSessionSetDefaultTextStyle(*(a1 + 16), a2);
  }

  return 0;
}

void fcc_Finalize(uint64_t a1)
{
  if (a1)
  {
    FigCaptionRendererSessionStop(*(a1 + 16));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigAssetCreateWithBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, int a3, const __CFString *a4, uint64_t a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  v29 = 0;
  if (!theBuffer || a3 == -1)
  {
    goto LABEL_31;
  }

  v8 = a4;
  if (!a4)
  {
    goto LABEL_43;
  }

  if (!a7 || !CMBlockBufferGetDataLength(theBuffer))
  {
    goto LABEL_31;
  }

  v13 = CMByteStreamCreateForBlockBuffer();
  if (v13)
  {
LABEL_32:
    v27 = v13;
    v8 = 0;
LABEL_33:
    v22 = 0;
    goto LABEL_34;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        v14 = CFGetTypeID(v8);
        if (v14 == CFStringGetTypeID())
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v16)
          {
            v17 = MEMORY[0x1E6960E38];
            goto LABEL_21;
          }

          goto LABEL_28;
        }
      }

LABEL_31:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v13 = FigSignalErrorAtGM();
      goto LABEL_32;
    }

    v18 = CFGetTypeID(v8);
    if (v18 != CFStringGetTypeID())
    {
      goto LABEL_31;
    }

    v8 = CFURLCreateWithFileSystemPath(a1, v8, kCFURLPOSIXPathStyle, 0);
    if (v8)
    {
      v19 = CMByteStreamGetCMBaseObject();
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v20)
      {
        v21 = v20(v19, *MEMORY[0x1E695FFA0], v8);
        v22 = 0;
        if (!v21)
        {
          goto LABEL_26;
        }

LABEL_51:
        v27 = v21;
        goto LABEL_34;
      }

      goto LABEL_29;
    }

LABEL_43:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v27 = FigSignalErrorAtGM();
    goto LABEL_33;
  }

  v23 = CFGetTypeID(v8);
  if (v23 != CFStringGetTypeID())
  {
    goto LABEL_31;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v16)
  {
LABEL_28:
    v8 = 0;
LABEL_29:
    v22 = 0;
    goto LABEL_30;
  }

  v17 = MEMORY[0x1E6960DE0];
LABEL_21:
  v13 = v16(CMBaseObject, *v17, v8);
  if (v13)
  {
    goto LABEL_32;
  }

  v24 = FigAtomicIncrement32();
  v22 = CFStringCreateWithFormat(a1, 0, @"DataAsset_%d", v24);
  if (!v22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v27 = FigSignalErrorAtGM();
    v8 = 0;
    goto LABEL_34;
  }

  v8 = CFURLCreateWithFileSystemPath(a1, v22, kCFURLPOSIXPathStyle, 0);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v21 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  v25 = CMByteStreamGetCMBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v26)
  {
LABEL_30:
    v27 = 4294954514;
    goto LABEL_34;
  }

  v21 = v26(v25, *MEMORY[0x1E695FFA0], v8);
  if (v21)
  {
    goto LABEL_51;
  }

LABEL_26:
  v27 = FigAssetCreateWithByteStream(a1, 0, a5, a6, &v29);
  if (!v27)
  {
    *a7 = v29;
    v29 = 0;
  }

LABEL_34:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v27;
}

uint64_t URLAssetTrackLoadValueAsyncForProperty(uint64_t a1, uint64_t a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  if (a2)
  {
    result = RequestPropertyAsync(*(DerivedStorage + 8), a2, &v8);
    if (!result)
    {
      v7 = (v8 & 0xFFFFFFFE) == 2;
      if (!a3)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    result = FigSignalErrorAtGM();
  }

  v7 = 0;
  if (!a3)
  {
    return result;
  }

LABEL_4:
  *a3 = v7;
  return result;
}

uint64_t URLAssetCopyPropertyAndBlockageWarning(uint64_t a1, const void *a2, uint64_t a3, void *a4, CFStringRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a4)
  {
    v9 = DerivedStorage;
    *a4 = 0;
    if (CFEqual(a2, @"assetProperty_CreationURL"))
    {
      if (*(*v9 + 64) == 1431456810)
      {
        v10 = *(*v9 + 72);
        if (!v10)
        {
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      return 0;
    }

    if (CFEqual(a2, @"assetProperty_CreationFlags"))
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = (*v9 + 80);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"assetProperty_CreationOptionsDictionary"))
    {
      v10 = *(*v9 + 88);
      if (!v10)
      {
        goto LABEL_31;
      }

      goto LABEL_19;
    }

    if (CFEqual(a2, @"assetProperty_MakeReadAheadAssertionWhenCreatingByteStream"))
    {
      v14 = MEMORY[0x1E695E4D0];
      v15 = *(*v9 + 216);
      goto LABEL_15;
    }

    if (CFEqual(a2, @"assetProperty_OriginalReadAheadAssertion"))
    {
      v18 = *v9;

      return CopyOutReadAheadAssertion(v18, a4);
    }

    if (CFEqual(a2, @"assetProperty_DownloadToken"))
    {
      InternalURLAssetEnsureDownloadTokenEstablished(*v9);
      v12 = (*v9 + 24);
      if (!*v12)
      {
        return 0;
      }

      v11 = *MEMORY[0x1E695E480];
LABEL_9:
      v13 = CFNumberCreate(v11, kCFNumberSInt64Type, v12);
LABEL_20:
      v17 = v13;
LABEL_32:
      result = 0;
      *a4 = v17;
      return result;
    }

    if (CFEqual(a2, @"assetProperty_InstanceUUID"))
    {
      v10 = *(*v9 + 336);
      if (!v10)
      {
LABEL_31:
        v17 = 0;
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (CFEqual(a2, @"assetProperty_ABRHistoryRecordingEnabled"))
    {
      v14 = MEMORY[0x1E695E4D0];
      v15 = *(*v9 + 469);
LABEL_15:
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = MEMORY[0x1E695E4C0];
      }

      v10 = *v16;
      if (!*v16)
      {
        goto LABEL_31;
      }

      goto LABEL_19;
    }

    if (CFEqual(a2, @"assetProperty_DefaultContentKeySession"))
    {
      result = InternalURLAssetEnsureContentKeySessionCreated(*v9);
      if (result)
      {
        return result;
      }

      v10 = *(*v9 + 520);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"assetProperty_ContentKeyBoss"))
    {
      result = InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate(*v9);
      if (result)
      {
        return result;
      }

      v10 = *(*v9 + 528);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"assetProperty_CustomURLLoader"))
    {
      result = InternalURLAssetEnsureCustomURLLoaderCreated(*v9);
      if (result)
      {
        return result;
      }

      v10 = *(*v9 + 496);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"assetProperty_DiskBackedStreamingCache"))
    {
      result = InternalURLAssetEnsurePersistentStreamingCacheCreated(*v9);
      if (result)
      {
        return result;
      }

      v10 = *(*v9 + 408);
LABEL_19:
      v13 = CFRetain(v10);
      goto LABEL_20;
    }

    if (CFEqual(a2, @"LoggingIdentifier"))
    {
      v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (*v9 + 592), 0x600u);
      goto LABEL_20;
    }

    v20 = v9[1];
    if (*(*v9 + 616))
    {
      v21 = a5;
    }

    else
    {
      v21 = 0;
    }

    return ObtainPropertySync(v20, a2, a4, v21);
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

BOOL URLAssetCreateAssetTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t URLAssetCreateAssetTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCreateAssetTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCreateAssetTrack_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateWithURL_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t CreateInternalURLAsset_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateWithByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigAssetCreateWithByteStream_cold_4()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *v0 = FigSignalErrorAtGM();
  return v1 == 0;
}

void FigAssetCreateWithMovieProxyData_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *v0 = FigSignalErrorAtGM();
  CFRelease(v1);
}

uint64_t FigAssetCreateWithMovieProxyData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateWithMovieProxyData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateWithMovieProxyData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateWithMovieProxyData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateWithMovieProxyData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreatePListFromOptionsDict_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreatePListFromOptionsDict_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateOptionsDictFromPList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateOptionsDictFromPList_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateOptionsDictFromPList_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackCopyPropertyAndBlockageWarning_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackCopyPropertyAndBlockageWarning_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackGetStatusOfValueForProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackGetStatusOfValueForProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackLoadValuesAsyncForProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackLoadValuesAsyncForProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackValidateAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackValidateAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetTrackValidateAsync_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetGetStatusOfValueForProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetGetStatusOfValueForProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetLoadValuesAsyncForProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetLoadValuesAsyncForProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetLoadValueAsyncForProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetValidateAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetValidateAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetValidateAsync_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCopyTrackByID_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t URLAssetCopyTrackByID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCopyTrackByID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCopyTracksWithMediaType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCopyTracksWithMediaType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCopyTracksWithMediaType_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCopyChapterData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCopyChapterData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetCopyChapterData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetFetchChapterDataAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetFetchChapterDataAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetLoadValuesAsyncForTrackProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetLoadValuesAsyncForTrackProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetLoadValuesAsyncForTrackProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetLoadValuesAsyncForTrackProperties_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineMacroProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineTrackMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineTrackMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineTrackMacroProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineCrossTrackMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineCrossTrackMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t URLAssetDefineCrossTrackMacroProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DefineCrossTrackMacroProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  FigSimpleMutexLock();
  Mutable = *(a1 + 40);
  v9 = MEMORY[0x1E695E480];
  if (!Mutable && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 40) = Mutable) == 0) || CFDictionaryContainsKey(Mutable, a3) || (v10 = *(a1 + 32)) != 0 && CFDictionaryContainsKey(v10, a3))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v11 = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  v11 = DefineTrackMacroProperty(a1, a3, a4);
  if (v11)
  {
LABEL_16:
    v15 = v11;
    goto LABEL_14;
  }

  v12 = *v9;
  v13 = CFSetCreateMutable(*v9, 0, MEMORY[0x1E695E9F8]);
  CFDictionarySetValue(*(a1 + 40), a3, v13);
  v14 = CFArrayCreate(v12, 0, 0, MEMORY[0x1E695E9C0]);
  v15 = DefineMacroProperty(a2, a3, v14);
  if (!v15)
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      ConnectCrossTrackMacroProperties(a1, v16);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return v15;
}

void CreateTrackMacroPropertyState_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t CreateTrackMacroPropertyState_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DefineTrackMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DefineTrackMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigAssetDownloadStorageManagementSetContentTypeForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v3 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v4)
  {
    if (URLString && (v5 = CFGetTypeID(URLString), v5 == CFURLGetTypeID()) && v1 && (v6 = CFGetTypeID(v1), v6 == CFStringGetTypeID()) && v0 && (v7 = CFGetTypeID(v0), v7 == CFStringGetTypeID()) && FigFileDoesFileExist())
    {
      URLString = figStorageManagementCreateURLString(URLString);
      if (URLString && OUTLINED_FUNCTION_5_111())
      {
        OUTLINED_FUNCTION_11_62();
        [v8 setContentType:?];
        [v1 commit];
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_7_85();
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_69();
  }

  objc_autoreleasePoolPop(v3);
  OUTLINED_FUNCTION_4_16();
}

CFStringRef figStorageManagementCreateURLString(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyAbsoluteURL(a1);
  if (!v1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    return 0;
  }

  v2 = v1;
  v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  if (!v3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
  }

  CFRelease(v2);
  return v3;
}

void FigAssetDownloadStorageManagementSetDownloadStartDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v2 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v3)
  {
    if (URLString && (v4 = CFGetTypeID(URLString), v4 == CFURLGetTypeID()) && v0 && (v5 = CFGetTypeID(v0), v5 == CFStringGetTypeID()) && FigFileDoesFileExist())
    {
      URLString = figStorageManagementCreateURLString(URLString);
      if (URLString && OUTLINED_FUNCTION_5_111())
      {
        OUTLINED_FUNCTION_11_62();
        [v6 setDownloadStartDate:?];
        [v0 commit];
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_7_85();
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_69();
  }

  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementCopyDownloadStartDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v2 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v3)
  {
    if (v1 && (v4 = CFGetTypeID(v1), v4 == CFURLGetTypeID()) && v0 && (v5 = CFGetTypeID(v0), v5 == CFStringGetTypeID()) && FigFileDoesFileExist() && (v6 = figStorageManagementCreateURLString(v1)) != 0 && (v7 = OUTLINED_FUNCTION_4_127(v6)) != 0)
    {
      v8 = [v7 downloadStartDate];
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      OUTLINED_FUNCTION_6_99(v8);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementSetDownloadCompletionDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v2 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v3)
  {
    if (URLString && (v4 = CFGetTypeID(URLString), v4 == CFURLGetTypeID()) && v0 && (v5 = CFGetTypeID(v0), v5 == CFStringGetTypeID()) && FigFileDoesFileExist())
    {
      URLString = figStorageManagementCreateURLString(URLString);
      if (URLString && OUTLINED_FUNCTION_5_111())
      {
        OUTLINED_FUNCTION_11_62();
        [v6 setDownloadCompletionDate:?];
        [v0 commit];
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_7_85();
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_69();
  }

  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementCopyDownloadCompletionDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v3 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v4)
  {
    if (v2 && (v5 = CFGetTypeID(v2), v5 == CFURLGetTypeID()) && v1 && (v6 = CFGetTypeID(v1), v6 == CFStringGetTypeID()) && v0 && FigFileDoesFileExist() && (v7 = figStorageManagementCreateURLString(v2)) != 0 && (v8 = OUTLINED_FUNCTION_4_127(v7)) != 0)
    {
      v9 = [v8 downloadCompletionDate];
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      OUTLINED_FUNCTION_6_99(v9);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

  objc_autoreleasePoolPop(v3);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementCopyLastPlayedOutDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v2 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v3)
  {
    if (v1 && (v4 = CFGetTypeID(v1), v4 == CFURLGetTypeID()) && v0 && (v5 = CFGetTypeID(v0), v5 == CFStringGetTypeID()) && FigFileDoesFileExist() && (v6 = figStorageManagementCreateURLString(v1)) != 0 && (v7 = OUTLINED_FUNCTION_4_127(v6)) != 0)
    {
      v8 = [v7 consumedDate];
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      OUTLINED_FUNCTION_6_99(v8);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementSetLastPlayedDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  URLString = v6;
  v8 = objc_autoreleasePoolPush();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  if (_MergedGlobals_117)
  {
    if (URLString && (v9 = CFGetTypeID(URLString), v9 == CFURLGetTypeID()) && v5 && (v10 = CFGetTypeID(v5), v10 == CFStringGetTypeID()) && FigFileDoesFileExist())
    {
      URLString = figStorageManagementCreateURLString(URLString);
      if (URLString && (v11 = [_MergedGlobals_117 assetFromFile:URLString withIdentifier:v5]) != 0)
      {
        v12 = v11;
        [v11 setLastViewedDate:v3];
        if (v1)
        {
          [v12 setConsumedDate:v3];
        }

        [v12 commit];
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_7_85();
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_69();
  }

  objc_autoreleasePoolPop(v8);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementCopyLastPlayedDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v2 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v3)
  {
    if (v1 && (v4 = CFGetTypeID(v1), v4 == CFURLGetTypeID()) && v0 && (v5 = CFGetTypeID(v0), v5 == CFStringGetTypeID()) && FigFileDoesFileExist() && (v6 = figStorageManagementCreateURLString(v1)) != 0 && (v7 = OUTLINED_FUNCTION_4_127(v6)) != 0)
    {
      v8 = [v7 lastViewedDate];
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      OUTLINED_FUNCTION_6_99(v8);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementSetExpirationDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v2 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v3)
  {
    if (URLString && (v4 = CFGetTypeID(URLString), v4 == CFURLGetTypeID()) && v0 && (v5 = CFGetTypeID(v0), v5 == CFStringGetTypeID()) && FigFileDoesFileExist())
    {
      URLString = figStorageManagementCreateURLString(URLString);
      if (URLString && OUTLINED_FUNCTION_5_111())
      {
        OUTLINED_FUNCTION_11_62();
        [v6 setExpirationDate:?];
        [v0 commit];
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_7_85();
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_69();
  }

  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementCopyExpirationDateForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v2 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v3)
  {
    if (v1 && (v4 = CFGetTypeID(v1), v4 == CFURLGetTypeID()) && v0 && (v5 = CFGetTypeID(v0), v5 == CFStringGetTypeID()) && FigFileDoesFileExist() && (v6 = figStorageManagementCreateURLString(v1)) != 0 && (v7 = OUTLINED_FUNCTION_4_127(v6)) != 0)
    {
      v8 = [v7 expirationDate];
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      OUTLINED_FUNCTION_6_99(v8);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementSetPriorityForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (!v8)
  {
    URLString = 0;
    goto LABEL_17;
  }

  if (!v6 || (v9 = CFGetTypeID(v6), v9 != CFURLGetTypeID()) || !v4 || (v10 = CFGetTypeID(v4), v10 != CFStringGetTypeID()) || !FigFileDoesFileExist())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
    URLString = 0;
    goto LABEL_17;
  }

  URLString = figStorageManagementCreateURLString(v6);
  if (!URLString)
  {
    goto LABEL_16;
  }

  v12 = [*(v0 + 2200) assetFromFile:URLString withIdentifier:v4];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  if (v2 == 1)
  {
    v14 = 3;
    goto LABEL_15;
  }

  if (v2)
  {
LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v14 = 1;
LABEL_15:
  [v12 setPriority:v14];
  [v13 commit];
LABEL_17:

  objc_autoreleasePoolPop(v7);
  OUTLINED_FUNCTION_4_16();
}

void FigAssetDownloadStorageManagementCopyPriorityForAssetAtURL()
{
  OUTLINED_FUNCTION_10_60();
  v3 = OUTLINED_FUNCTION_2_159();
  if (qword_1ED4CB8A0 != -1)
  {
    dispatch_once(&qword_1ED4CB8A0, &__block_literal_global_94);
  }

  OUTLINED_FUNCTION_3_129();
  if (v4)
  {
    if (v2 && (v5 = CFGetTypeID(v2), v5 == CFURLGetTypeID()) && v1 && (v6 = CFGetTypeID(v1), v6 == CFStringGetTypeID()) && FigFileDoesFileExist() && (v7 = figStorageManagementCreateURLString(v2)) != 0 && (v8 = OUTLINED_FUNCTION_4_127(v7)) != 0)
    {
      *v0 = [v8 priority] == 3;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

  objc_autoreleasePoolPop(v3);
  OUTLINED_FUNCTION_4_16();
}

CFDataRef MTCopyImageDataForAssetAtURL(const __CFURL *a1)
{
  v8 = 0;
  v9 = 0;
  ExtendedAttributeData = figGetExtendedAttributeData(a1, "com.apple.coremedia.asset.image", &v9, &v8);
  v2 = v9;
  if (ExtendedAttributeData)
  {
    v6 = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = v8;
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc();
    v6 = CFDataCreateWithBytesNoCopy(v3, v2, v4, GlobalCFAllocatorFigMalloc);
    if (v6)
    {
      v2 = 0;
      v9 = 0;
    }

    else
    {
      v2 = v9;
    }
  }

  free(v2);
  return v6;
}

CFStringRef MTCopyNameForAssetAtURL(const __CFURL *a1)
{
  v8 = 0;
  v9 = 0;
  ExtendedAttributeData = figGetExtendedAttributeData(a1, "com.apple.coremedia.asset.name", &v9, &v8);
  v2 = v9;
  if (ExtendedAttributeData)
  {
    v6 = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = v8;
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc();
    v6 = CFStringCreateWithBytesNoCopy(v3, v2, v4, 0x8000100u, 0, GlobalCFAllocatorFigMalloc);
    if (v6)
    {
      v2 = 0;
      v9 = 0;
    }

    else
    {
      v2 = v9;
    }
  }

  free(v2);
  return v6;
}

void *__figStorageManagerEnsureCacheDeleteIsLoaded_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CacheDelete.framework/CacheDelete", 1);
  if (result)
  {
    result = dlsym(result, "OBJC_CLASS_$_CacheManagementAsset");
    _MergedGlobals_117 = result;
  }

  return result;
}

uint64_t FigSetImageDataForAssetAtURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSetImageDataForAssetAtURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSetExtendedAttributeData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figSetExtendedAttributeData_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t figSetExtendedAttributeData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSetExtendedAttributeData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSetExtendedAttributeData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSetExtendedAttributeData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSetExtendedAttributeData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSetNameForAssetAtURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSetNameForAssetAtURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSetNameForAssetAtURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figGetExtendedAttributeData_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t figGetExtendedAttributeData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figGetExtendedAttributeData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figGetExtendedAttributeData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figGetExtendedAttributeData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figGetExtendedAttributeData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void URLAssetReadErrorCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  number = 0;
  valuePtr = 0;
  values = 0;
  if (!*(a2 + 112) && *(a2 + 160) == a4)
  {
    if (a5)
    {
      CFDictionaryGetTypeID();
      if (v5 == OUTLINED_FUNCTION_68_6())
      {
        Value = CFDictionaryGetValue(a5, @"CRABS_ReadCFError");
        values = Value;
        v9 = CFDictionaryGetValue(a5, @"CRABS_ReadErrorCode");
        number = v9;
        if (Value)
        {
          TypeID = CFErrorGetTypeID();
          if (TypeID == CFGetTypeID(Value))
          {
            v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigAssetPayloadKey_CFError, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            Code = CFErrorGetCode(values);
            valuePtr = Code;
            goto LABEL_12;
          }
        }

        if (v9)
        {
          CFNumberGetTypeID();
          if (Value == OUTLINED_FUNCTION_68_6())
          {
            v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigAssetPayloadKey_Result, &number, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
            Code = valuePtr;
          }

          else
          {
            Code = 0;
            v11 = 0;
          }

          goto LABEL_12;
        }
      }
    }

    Code = 0;
    v11 = 0;
LABEL_12:
    ReviseDownloadToDestinationResultProperty(a2, Code);
    CFRetain(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_176();
    FigDeferNotificationToDispatchQueue();
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void URLAssetDoneBufferingCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  cf = 0;
  if (!*(a2 + 112) && *(a2 + 160) == a4)
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      if (!v6(CMBaseObject, *MEMORY[0x1E695FF78], 0, &v9))
      {
        CMByteStreamGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v7 = OUTLINED_FUNCTION_26_23();
          if (!v8(v7) && !*(a2 + 194) && CFEqual(cf, v9))
          {
            ReviseDownloadToDestinationResultProperty(a2, 0);
            CFRetain(a2);
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_0_176();
            FigDeferNotificationToDispatchQueue();
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t EnsureStreamingCache(uint64_t a1, int a2)
{
  cf = 0;
  v24 = 0;
  cf2 = 0;
  v22 = 0;
  if (*(a1 + 408))
  {
    Mutable = 0;
    v17 = 0;
LABEL_36:
    v19 = 0;
    goto LABEL_40;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_53:
    v6 = FigSignalErrorAtGM();
    goto LABEL_54;
  }

  if (!*(a1 + 88))
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_24;
  }

  v6 = FigAssetDownloadCoordinatorCopyDestinationURLForDownloadToken(*(a1 + 24), &cf2);
  if (v6)
  {
LABEL_54:
    v19 = v6;
    v17 = 0;
    goto LABEL_40;
  }

  Value = CFDictionaryGetValue(*(a1 + 88), @"assetOption_DownloadDestinationURL");
  v8 = Value;
  v9 = cf2;
  if (!Value || !cf2)
  {
    goto LABEL_9;
  }

  if (!CFEqual(Value, cf2))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_53;
  }

  v9 = cf2;
LABEL_9:
  v10 = 0;
  v11 = 0;
  if (v9)
  {
    v8 = v9;
  }

  if (a2 && v8)
  {
    FigAssetDownloadCoordinatorRequestImmediateAccessToURL(v8, &v22, (a1 + 40));
    v11 = v22 != 0;
    if (v22)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  URLValue = FigCFDictionaryGetURLValue();
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (v24 && URLValue)
  {
    OUTLINED_FUNCTION_43_19(BooleanIfPresent, @"FSC_DiskCacheRepositoryURL");
    v14 = CFDictionaryGetValue(*(a1 + 88), @"assetOption_NetworkCacheUsePathAsKey");
    v15 = *MEMORY[0x1E695E4D0];
    if (v14 == *MEMORY[0x1E695E4D0])
    {
      OUTLINED_FUNCTION_43_19(v14, @"FSC_UseURLPathAsCacheKey");
    }

    v16 = CFDictionaryGetValue(*(a1 + 88), @"assetOption_NetworkCacheUseURLWithoutQueryStringAsKey");
    if (v16 == v15)
    {
      OUTLINED_FUNCTION_43_19(v16, @"FSC_UseURLWithoutQueryStringAsCacheKey");
    }

    v11 = 1;
  }

LABEL_24:
  if (FigCFURLIsLocalResource() && !v10)
  {
    v10 = *(a1 + 176);
    v11 = 1;
  }

  if (v10)
  {
    CFDictionarySetValue(Mutable, @"FSC_DownloadDestinationURL", v10);
  }

  if (v11)
  {
    CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_DiskBacking");
  }

  v17 = CFURLCopyAbsoluteURL(*(a1 + 440));
  if (v17)
  {
    if (CFDictionaryGetCount(Mutable))
    {
      v18 = 0;
    }

    else
    {
      CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_MemoryBacking");
      v18 = 1;
    }

    if (FigStreamingCacheCreate(v4, v17, Mutable, &cf))
    {
      goto LABEL_36;
    }

    v20 = cf;
    if (cf)
    {
      v20 = CFRetain(cf);
    }

    v19 = 0;
    *(a1 + 408) = v20;
    *(a1 + 416) = v18;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v19 = FigSignalErrorAtGM();
  }

LABEL_40:
  if (cf2)
  {
    CFRelease(cf2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v19;
}

void PerformTransferBytePumpAsync(void *a1)
{
  v3 = a1[2];
  cf = 0;
  if (*(v3 + 112))
  {
    *a1 = -12785;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_104_0();
  v4 = EnsureBytePump();
  *a1 = v4;
  v5 = MEMORY[0x1E695E480];
  if (v4)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33_26();
  if (v6)
  {
    v59 = 0;
    v32 = OUTLINED_FUNCTION_104_0();
    Options = CreateBytePumpCreateOptions(v32, v33, 0, v34);
    *a1 = Options;
    if (!Options)
    {
      v39 = OUTLINED_FUNCTION_30_26(Options, v36, v37, v38);
      *a1 = v39;
      if (!v39)
      {
        FigBytePumpCreateForICY(v1, *(v3 + 176), v59, cf, 0, 0, 0, a1 + 4);
        *a1 = v40;
        if (v59)
        {
          CFRelease(v59);
        }
      }
    }
  }

  else if (*(v3 + 376))
  {
    v59 = 0;
    v41 = OUTLINED_FUNCTION_104_0();
    v44 = CreateBytePumpCreateOptions(v41, v42, 0, v43);
    *a1 = v44;
    if (!v44)
    {
      v48 = OUTLINED_FUNCTION_30_26(v44, v45, v46, v47);
      *a1 = v48;
      if (!v48)
      {
        v49 = OUTLINED_FUNCTION_104_0();
        CreateSegmentBytePump(v49, v50, v51, v52, v53);
        *a1 = v54;
        if (v59)
        {
          CFRelease(v59);
        }

        v55 = a1[4];
        if (v55)
        {
          FigBytePumpGetFigBaseObject(v55);
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v56 = OUTLINED_FUNCTION_188();
            v57(v56);
          }
        }
      }
    }
  }

  else
  {
    v7 = *(v3 + 384);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    a1[4] = v7;
  }

  FigSimpleMutexLock();
  v8 = a1[4];
  if (v8)
  {
    if (*(v3 + 408))
    {
      if (*(v3 + 416))
      {
        FigBytePumpGetFigBaseObject(v8);
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v9 = OUTLINED_FUNCTION_188();
          v10(v9);
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  if (*a1)
  {
LABEL_14:
    v11 = *(v3 + 400);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    a1[1] = v11;
  }

  if (!*(v3 + 376))
  {
    v59 = 0;
    v17 = *(v3 + 384);
    if (v17)
    {
      FigBytePumpGetFigBaseObject(v17);
      v19 = v18;
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v20)
      {
        v20(v19, 0x1F0B1F518, *v5, &v59);
      }

      if (FigIsItOKToLogURLs())
      {
        v21 = (*(v3 + 81) >> 1) & 1;
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = (v3 + 424);
      v58 = v21;
      OUTLINED_FUNCTION_16_46();
      if (!FigReportingAgentCreate(v23, v24, v25, v26, 0, 0, 1, 0, v58, (v3 + 424)))
      {
        v28 = *v22;
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v29)
        {
          v29(v28, 0x1F0B644D8, *MEMORY[0x1E695E4C0]);
        }

        v30 = *v22;
        v27 = v59;
        if (!v30 || !v59)
        {
          goto LABEL_35;
        }

        v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v31)
        {
          v31(v30, v27, 0x1F0B64678);
        }
      }

      v27 = v59;
LABEL_35:
      if (v27)
      {
        CFRelease(v27);
      }
    }
  }

  *(v3 + 376) = 1;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_20:
  v12 = a1[4];
  if (v12)
  {
    FigBytePumpGetFigBaseObject(v12);
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v14, 0x1F0B1F098, 0);
    }
  }

  v16 = *(v3 + 40);
  if (v16 && !FigAssetDownloadCoordinatorRelinquishAccessToURL(v16))
  {
    *(v3 + 40) = 0;
  }

  dispatch_async_f(*(v3 + 480), a1, PerformCompleteTransferBytePump);
}

uint64_t RemoveBytePumpListenersAndDoBarrier(uint64_t result)
{
  if (*(result + 377))
  {
    v1 = result;
    if (*(result + 384))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_160();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigBaseObject = FigBytePumpGetFigBaseObject(*(v1 + 384));
      v3 = *(CMBaseObjectGetVTable() + 8);
      if (*v3 >= 2uLL)
      {
        v4 = v3[8];
        if (v4)
        {
          v4(FigBaseObject);
        }
      }

      result = FigStopForwardingMediaServicesProcessDeathNotification();
      *(v1 + 377) = 0;
    }
  }

  return result;
}

void PerformSetShouldPrefetchCryptKeys(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = OUTLINED_FUNCTION_171();
  if (!EnsureAssetTypeEstablished(v4, v5))
  {
    if (*(v2 + 192))
    {
      if (v3)
      {
        if (*(v2 + 379) != v3)
        {
          OUTLINED_FUNCTION_171();
          if (!EnsureBytePump())
          {
            v6 = v2[48];
            if (v6)
            {
              FigBytePumpGetFigBaseObject(v6);
              v8 = v7;
              v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v9)
              {
                v9(v8, 0x1F0B1F398, *MEMORY[0x1E695E4D0]);
              }
            }
          }
        }
      }
    }
  }

  *(v2 + 379) = v3;
  CFRelease(*a1);
  CFRelease(*(a1 + 8));

  free(a1);
}

void ProduceAssetValidationResult(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  cf = 0;
  if (*(a2 + 112) || EnsureAssetTypeEstablished())
  {
    goto LABEL_5;
  }

  if (*(a2 + 192))
  {
    CFEqual(a3, @"validationCriteria_CameraRoll");
LABEL_5:
    OUTLINED_FUNCTION_652();
    return;
  }

  if (CFEqual(a3, @"validationCriteria_Custom"))
  {
    if (a4)
    {
      v7 = CFRetain(a4);
    }

    else
    {
      v7 = 0;
    }

    cf = v7;
LABEL_20:
    if (!v7)
    {
      goto LABEL_5;
    }

    v10 = OUTLINED_FUNCTION_177();
    v12 = EnsureFormatReaderCreated(v10, v11);
    v7 = cf;
    if (!v12)
    {
      FigMediaValidatorValidateByteStream(*(a2 + 160), *(a2 + 240));
      v7 = cf;
      if (!cf)
      {
        goto LABEL_5;
      }

LABEL_23:
      CFRelease(v7);
      goto LABEL_5;
    }

LABEL_30:
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  if (CFEqual(a3, @"validationCriteria_CameraRoll"))
  {
    v8 = @"CameraRollValidator.plist";
    goto LABEL_19;
  }

  if (CFEqual(a3, @"validationCriteria_MediaPlayback"))
  {
    v8 = @"MediaValidator.plist";
    goto LABEL_19;
  }

  if (CFEqual(a3, @"validationCriteria_AirPlayVideo"))
  {
    v8 = @"AirPlayVideoMediaValidator.plist";
    goto LABEL_19;
  }

  if (CFEqual(a3, @"validationCriteria_PhotosTranscodingService"))
  {
    v8 = @"CloudTranscodeValidator.plist";
LABEL_19:
    MediaValidatorPropertyList = FigMediaValidatorCreateMediaValidatorPropertyList(v8, &cf);
    v7 = cf;
    if (MediaValidatorPropertyList)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_652();

  FigSignalErrorAtGM();
}

void PerformCopyChapterData(uint64_t a1)
{
  values = 0;
  valuePtr = 0;
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_43;
  }

  v3 = *(a1 + 16);
  if (!v3 || (*(a1 + 24) & 0x80000000) != 0 || (*(a1 + 28) & 0x80000000) != 0 || *(a1 + 32) <= 0)
  {
    goto LABEL_43;
  }

  if (!*(v2 + 112))
  {
    v4 = EnsureChapterGroupInfoCreated(v3, v2);
    if (v4)
    {
LABEL_51:
      v31 = v4;
      goto LABEL_35;
    }

    v5 = *(v2 + 328);
    if (!v5)
    {
      Mutable = 0;
      v31 = -12175;
LABEL_34:
      *(a1 + 40) = Mutable;
LABEL_35:
      Mutable = 0;
      goto LABEL_36;
    }

    Count = CFArrayGetCount(v5);
    v7 = *(a1 + 24);
    if (Count > v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 328), v7);
      Value = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_Type");
      v10 = CFEqual(Value, @"artwork");
      v11 = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_TrackID");
      CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
      v12 = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_PerChapterInfo");
      if (!v12)
      {
        Mutable = 0;
LABEL_33:
        v31 = 0;
        goto LABEL_34;
      }

      v13 = v12;
      if (CFArrayGetCount(v12) >= *(a1 + 32) + *(a1 + 28))
      {
        v14 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (*(a1 + 32) >= 1)
        {
          v16 = *(a1 + 28);
          v17 = MEMORY[0x1E695E9E8];
          while (1)
          {
            v18 = CFArrayGetValueAtIndex(v13, v16);
            if (*(v2 + 112))
            {
              goto LABEL_47;
            }

            v19 = v18;
            if (v10)
            {
              v20 = FCSupport_CopyChapterImageData(*(v2 + 240), *(v2 + 488), valuePtr, v18, &values, 0);
              if (v20)
              {
                goto LABEL_42;
              }

              v21 = CFDictionaryCreate(v14, kFigChapterArtworkDataKey_ImageData, &values, 1, MEMORY[0x1E695E9D8], v17);
              if (!v21)
              {
LABEL_41:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_6_3();
                v20 = FigSignalErrorAtGM();
LABEL_42:
                v31 = v20;
                goto LABEL_36;
              }

              v22 = v21;
              v23 = OUTLINED_FUNCTION_171();
              CFArrayAppendValue(v23, v24);
              CFRelease(v22);
              if (values)
              {
                CFRelease(values);
                values = 0;
              }
            }

            else
            {
              if (!FCSupport_HasChapterDetails(v18))
              {
                v20 = FCSupport_PopulateChapterTitleDetail(*(v2 + 240), valuePtr, *(v2 + 488), v19);
                if (v20)
                {
                  goto LABEL_42;
                }
              }

              v25 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], v17);
              if (!v25)
              {
                goto LABEL_41;
              }

              v26 = v25;
              v27 = CFDictionaryGetValue(v19, @"ChapterName");
              if (v27 || (v27 = CFDictionaryGetValue(v19, @"ChapterHREFText")) != 0)
              {
                CFDictionaryAddValue(v26, @"ChapterTitleText", v27);
              }

              v28 = CFDictionaryGetValue(v19, @"ChapterHREFURL");
              if (v28)
              {
                CFDictionaryAddValue(v26, @"ChapterTitleHREF", v28);
              }

              v29 = OUTLINED_FUNCTION_171();
              CFArrayAppendValue(v29, v30);
              CFRelease(v26);
            }

            if (++v16 >= *(a1 + 32) + *(a1 + 28))
            {
              goto LABEL_33;
            }
          }
        }

        goto LABEL_33;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_2();
      goto LABEL_50;
    }

LABEL_43:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
LABEL_50:
    v4 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  Mutable = 0;
LABEL_47:
  v31 = -12785;
LABEL_36:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  *a1 = v31;
}

void PerformFetchChapterData(void *a1)
{
  PerformCopyChapterData(a1);
  v2 = *(a1[1] + 480);

  dispatch_async_f(v2, a1, PerformCompleteChapterJob);
}

const __CFArray *InternalURLAssetLoadValuesAsyncForTrackProperties(const void *a1, dispatch_queue_t *a2, const __CFArray *a3, const __CFArray *a4, _BYTE *a5, _DWORD *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x1060040E9991D62uLL);
  if (v12)
  {
    *v12 = CFRetain(a2);
    *(v12 + 1) = CFRetain(a1);
    v13 = *MEMORY[0x1E695E480];
    *(v12 + 3) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a4);
    if (a6)
    {
      v14 = NewPropertyStoreBatchID();
      *(v12 + 9) = v14;
      *a6 = v14;
      *(v12 + 33) = 1;
    }

    if (!a3)
    {
      *(v12 + 34) = 1;
      dispatch_async_f(a2[12], v12, PerformMultiTrackBatchLoad);
      goto LABEL_9;
    }

    *(v12 + 2) = CFArrayCreateCopy(v13, a3);
    v15 = RequestMultiTrackBatches(v12);
    if (!v15)
    {
      v16 = *(v12 + 32);
      if (*(v12 + 33))
      {
        v17 = *(v12 + 5);
        dispatch_retain(v17);
        dispatch_group_enter(v17);
        dispatch_group_notify_f(v17, a2[60], v12, FinalizeMultiTrackBatchLoadJob);
        dispatch_group_leave(v17);
        dispatch_release(v17);
      }

      else
      {
        FinalizeMultiTrackBatchLoadJob(v12);
      }

      a3 = 0;
      if (!a5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    v15 = FigSignalErrorAtGM();
  }

  a3 = v15;
LABEL_9:
  v16 = 0;
  if (a5)
  {
LABEL_13:
    *a5 = v16;
  }

LABEL_14:
  if (a3)
  {
    FinalizeMultiTrackBatchLoadJob(v12);
  }

  return a3;
}