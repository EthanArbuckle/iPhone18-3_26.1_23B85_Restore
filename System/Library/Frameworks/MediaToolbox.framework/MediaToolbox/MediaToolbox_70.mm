uint64_t FigTTMLSerializerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTTMLSerializerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigTTMLSerializerInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLSerializerStartElement(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLSerializerSetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTTMLSerializerEndElement(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLSerializerAddText(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLSerializerFlush(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigDisplayModes_ExtractDimensionsFromTimingMode(const __CFArray *a1, int a2, double *a3)
{
  if (!a1)
  {
    FigDisplayModes_ExtractDimensionsFromTimingMode_cold_2();
    return 4294954516;
  }

  v4 = lookupTimingModeByID(a1, a2);
  if (!v4)
  {
    FigDisplayModes_ExtractDimensionsFromTimingMode_cold_1();
    return 4294954516;
  }

  return getTimingModeDimensions(v4, a3);
}

const __CFDictionary *lookupTimingModeByID(const __CFArray *a1, int a2)
{
  Count = CFArrayGetCount(a1);
  v5 = Count;
  if (!Count)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    result = CFArrayGetValueAtIndex(a1, v6);
    if (result)
    {
      v8 = result;
      result = CFDictionaryGetValue(result, @"ID");
      valuePtr = -1;
      if (result)
      {
        CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr == a2)
        {
          result = v8;
        }

        else
        {
          result = 0;
        }
      }
    }

    ++v6;
  }

  while (v6 < v5 && !result);
  return result;
}

uint64_t getTimingModeDimensions(const __CFDictionary *a1, double *a2)
{
  valuePtr = 0;
  if (!a1)
  {
    getTimingModeDimensions_cold_5();
    return 4294954516;
  }

  if (!a2)
  {
    getTimingModeDimensions_cold_4();
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"HorizontalAttributes");
  if (!Value)
  {
    getTimingModeDimensions_cold_3();
    return 4294954516;
  }

  v5 = Value;
  v6 = CFDictionaryGetValue(a1, @"VerticalAttributes");
  if (!v6)
  {
    getTimingModeDimensions_cold_2();
    return 4294954516;
  }

  v7 = v6;
  v8 = CFDictionaryGetValue(v5, @"Active");
  v9 = CFDictionaryGetValue(v7, @"Active");
  if (!v8 || (v10 = v9) == 0)
  {
    getTimingModeDimensions_cold_1();
    return 4294954516;
  }

  CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr + 4);
  CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
  result = 0;
  v12 = valuePtr;
  *a2 = SHIDWORD(valuePtr);
  a2[1] = v12;
  return result;
}

uint64_t FigDisplayModes_ExtractOverscanInfoFromTimingMode(const __CFArray *a1, int a2, BOOL *a3)
{
  if (!a1)
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode_cold_2();
    return 4294954516;
  }

  v4 = lookupTimingModeByID(a1, a2);
  if (!v4)
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode_cold_1();
    return 4294954516;
  }

  result = CFDictionaryGetValue(v4, @"IsOverscanned");
  if (result)
  {
    v6 = result;
    result = 0;
    *a3 = v6 == *MEMORY[0x1E695E4D0];
  }

  return result;
}

uint64_t FigDisplayModes_LookupTimingModeIDByIndex(const __CFArray *a1, unsigned int a2, int *a3)
{
  if (CFArrayGetCount(a1) <= a2)
  {
    FigDisplayModes_LookupTimingModeIDByIndex_cold_1();
    return 4294954516;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex)
  {
    FigDisplayModes_LookupTimingModeIDByIndex_cold_3();
    return 4294954516;
  }

  Value = CFDictionaryGetValue(ValueAtIndex, @"ID");
  if (!Value)
  {
    FigDisplayModes_LookupTimingModeIDByIndex_cold_2();
    return 4294954516;
  }

  valuePtr = -1;
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  result = 0;
  *a3 = valuePtr;
  return result;
}

uint64_t FigDisplayModes_DetermineSenderSurfaceDimensionsFromDisplayModeAndCurrentSenderDisplaySize(int a1, float64x2_t *a2, double a3, double a4, float64x2_t a5, float64_t a6, double a7)
{
  v7 = a3 / a5.f64[0];
  v8 = a4 / a6;
  if (v7 >= v8)
  {
    v7 = v8;
  }

  if (a1)
  {
    v7 = (1.0 - a7) * v7;
  }

  a5.f64[1] = a6;
  v9 = vadd_s32(vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(a5, v7))), 0x100000001);
  v10.i64[0] = (v9.i32[0] & 0xFFFFFFFE);
  v10.i64[1] = (v9.i32[1] & 0xFFFFFFFE);
  *a2 = vcvtq_f64_s64(v10);
  return 0;
}

uint64_t FigDisplayModes_ConvertSquarePixelSizeToNonSquarePixelSize(unsigned int a1, double *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = a1 % 0xB4;
  if (a1 % 0xB4 == 90)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  if (v9 == 90)
  {
    a3 = a4;
  }

  v11 = a5 / a6;
  if (a9 <= 0.0 || a9 == 1.0)
  {
    v13 = v10;
    v14 = v11 * (a8 / a7);
    if (v14 <= 1.01)
    {
      v12 = a3;
      if (v14 < 0.99)
      {
        v13 = ((v10 * v14) + 1) & 0xFFFFFFFE;
      }
    }

    else
    {
      v12 = ((a3 / v14) + 1) & 0xFFFFFFFE;
    }
  }

  else
  {
    v12 = ((a7 * (a3 / (a8 * a9) / v11)) + 1) & 0xFFFFFFFE;
    v13 = ((a8 * (v10 / (a8 * a9))) + 1) & 0xFFFFFFFE;
  }

  v15 = v9 == 90;
  if (v9 == 90)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16;
  if (v15)
  {
    v18 = v13;
  }

  else
  {
    v18 = v12;
  }

  *a2 = v18;
  a2[1] = v17;
  return 0;
}

uint64_t FigDisplayModes_ConvertSquarePixelRectToNonSquarePixelRect(unsigned int a1, double *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v17 = a5;
  v18 = a3;
  v19 = a1 % 0xB4;
  if (a1 % 0xB4 == 90)
  {
    v20 = a3;
  }

  else
  {
    v20 = a4;
  }

  if (v19 == 90)
  {
    v18 = a4;
    v21 = a5;
  }

  else
  {
    v21 = a6;
  }

  if (v19 == 90)
  {
    v17 = a6;
  }

  v22 = a7 / a8;
  if (a11 <= 0.0 || a11 == 1.0)
  {
    v23 = v22 * (a10 / a9);
    if (v23 <= 1.01)
    {
      if (v23 < 0.99)
      {
        v20 = (v23 * v20);
        v21 = ((v23 * v21) + 1) & 0xFFFFFFFE;
      }
    }

    else
    {
      v18 = (v18 / v23);
      v17 = ((v17 / v23) + 1) & 0xFFFFFFFE;
    }
  }

  else
  {
    v18 = (a9 * (v18 / (a10 * a11) / v22));
    v17 = ((a9 * (v17 / (a10 * a11) / v22)) + 1) & 0xFFFFFFFE;
    v20 = (a10 * (v20 / (a10 * a11)));
    v21 = ((a10 * (v21 / (a10 * a11))) + 1) & 0xFFFFFFFE;
  }

  v24 = v19 == 90;
  if (v19 == 90)
  {
    v25 = v20;
  }

  else
  {
    v25 = v18;
  }

  if (v24)
  {
    v20 = v18;
    v26 = v21;
  }

  else
  {
    v26 = v17;
  }

  if (v24)
  {
    v21 = v17;
  }

  *a2 = v25;
  a2[1] = v20;
  a2[2] = v26;
  a2[3] = v21;
  return 0;
}

uint64_t FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a4 / a5;
  if (a8 <= 0.0 || a8 == 1.0)
  {
    v10 = a3;
    v11 = v8 * a7 / a6;
    if (v11 <= 1.01)
    {
      v9 = a2;
      if (v11 < 0.99)
      {
        v10 = ((a3 / v11) + 1) & 0xFFFFFFFE;
      }
    }

    else
    {
      v9 = ((a2 * v11) + 1) & 0xFFFFFFFE;
    }
  }

  else
  {
    v9 = ((v8 * (a3 * a8)) + 1) & 0xFFFFFFFE;
    v10 = (a3 * a8);
  }

  *a1 = v9;
  a1[1] = v10;
  return 0;
}

void FigDisplayModes_BuildColorAndTimingModes(int a1, int a2, int a3, int a4, unsigned int a5, int a6, int a7, __CFDictionary **a8, __CFDictionary **a9)
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v29 = a6;
  v28 = a1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v16 = MEMORY[0x1E695E480];
  if (a8)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    setNumberInCFDictionary(Mutable, @"ID", a7);
    setNumberInCFDictionary(Mutable, @"Score", a5);
    *a8 = Mutable;
  }

  if (a9)
  {
    v18 = *v16;
    v19 = MEMORY[0x1E695E9D8];
    v20 = MEMORY[0x1E695E9E8];
    v21 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = CFDictionaryCreateMutable(v18, 0, v19, v20);
    v23 = CFDictionaryCreateMutable(v18, 0, v19, v20);
    setNumberInCFDictionary(v21, @"ID", a7);
    setNumberInCFDictionary(v21, @"Score", a5);
    v24 = *MEMORY[0x1E695E4C0];
    CFDictionarySetValue(v21, @"IsInterlaced", *MEMORY[0x1E695E4C0]);
    v25 = *MEMORY[0x1E695E4D0];
    if (a3)
    {
      v26 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v26 = v24;
    }

    CFDictionarySetValue(v21, @"IsOverscanned", v26);
    setNumberInCFDictionary(v22, @"Active", v28);
    CFDictionarySetValue(v21, @"HorizontalAttributes", v22);
    CFRelease(v22);
    setNumberInCFDictionary(v23, @"Active", a2);
    setNumberInCFDictionary(v23, @"SyncRate", a4 << 16);
    CFDictionarySetValue(v21, @"VerticalAttributes", v23);
    CFRelease(v23);
    if (v29)
    {
      v27 = v25;
    }

    else
    {
      v27 = v24;
    }

    CFDictionarySetValue(v21, @"MirroringOnlyMode", v27);
    *a9 = v21;
  }
}

void setNumberInCFDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode(const void *a1, const void *a2, __CFArray **a3, __CFArray **a4)
{
  if (a1 && a2)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v11 = CFArrayCreateMutable(v8, 0, v9);
    if (Mutable)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode_cold_1();
      return 4294954510;
    }

    else
    {
      v13 = v11;
      CFArrayAppendValue(Mutable, a1);
      CFArrayAppendValue(v13, a2);
      result = 0;
      *a3 = Mutable;
      *a4 = v13;
    }
  }

  else
  {
    FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode_cold_2();
    return 4294954516;
  }

  return result;
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModeForTimingMode(const __CFDictionary *a1, CFMutableDictionaryRef *a2, double a3, double a4, double a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = *MEMORY[0x1E695F060];
  v28 = v27;
  if (!a1)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_6();
    return 4294954516;
  }

  TimingModeDimensions = getTimingModeDimensions(a1, &v28);
  if (TimingModeDimensions)
  {
    v24 = TimingModeDimensions;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v24;
  }

  Value = CFDictionaryGetValue(a1, @"HorizontalAttributes");
  if (!Value)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_5();
    return 4294954516;
  }

  v12 = Value;
  v13 = CFDictionaryGetValue(a1, @"VerticalAttributes");
  if (!v13)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_4();
    return 4294954516;
  }

  v14 = v13;
  v15 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_3();
    return 4294954510;
  }

  v17 = MutableCopy;
  v18 = v28;
  FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize(&v27, *&v28, *(&v28 + 1), a3, a4, *&v28, *(&v28 + 1), a5);
  v19 = v27;
  if (*&v18 == *&v27 && *(&v18 + 1) == *(&v27 + 1))
  {
    goto LABEL_11;
  }

  v20 = CFDictionaryCreateMutableCopy(v15, 0, v12);
  if (!v20)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_2();
LABEL_21:
    CFRelease(v17);
    return 4294954510;
  }

  v21 = v20;
  setNumberInCFDictionary(v20, @"Active", *&v19);
  CFDictionarySetValue(v17, @"HorizontalAttributes", v21);
  CFRelease(v21);
  v22 = CFDictionaryCreateMutableCopy(v15, 0, v14);
  if (!v22)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_1();
    goto LABEL_21;
  }

  v23 = v22;
  setNumberInCFDictionary(v22, @"Active", *(&v19 + 1));
  CFDictionarySetValue(v17, @"VerticalAttributes", v23);
  CFRelease(v23);
LABEL_11:
  v24 = 0;
  *a2 = v17;
  return v24;
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize(const __CFArray *a1, __CFArray **a2, double a3, double a4, double a5)
{
  value[20] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v11 = Mutable;
      Count = CFArrayGetCount(a1);
      v13 = Count;
      if (Count)
      {
        v14 = 0;
        while (1)
        {
          value[0] = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v14);
          if (!ValueAtIndex)
          {
            FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_1();
            v18 = 4294954516;
            goto LABEL_14;
          }

          SquarePixelTimingModeForTimingMode = FigDisplayModes_CreateSquarePixelTimingModeForTimingMode(ValueAtIndex, value, a3, a4, a5);
          if (SquarePixelTimingModeForTimingMode)
          {
            break;
          }

          v17 = value[0];
          CFArrayAppendValue(v11, value[0]);
          if (v17)
          {
            CFRelease(v17);
          }

          if (v13 == ++v14)
          {
            goto LABEL_10;
          }
        }

        v18 = SquarePixelTimingModeForTimingMode;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_14:
        CFRelease(v11);
      }

      else
      {
LABEL_10:
        v18 = 0;
        *a2 = v11;
      }
    }

    else
    {
      FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_2();
      return 4294954510;
    }
  }

  else
  {
    FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_3();
    return 4294954516;
  }

  return v18;
}

uint64_t FigDisplayModes_CopyTimingModeAppendingPreferredUIScale(CFDictionaryRef theDict, int a2, CFMutableDictionaryRef *a3)
{
  if (!theDict)
  {
    FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_4();
    return 4294954516;
  }

  if (!a2)
  {
    FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_3();
    return 4294954516;
  }

  if (!a3)
  {
    FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_2();
    return 4294954516;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (MutableCopy)
  {
    v5 = MutableCopy;
    FigCFDictionarySetInt();
    result = 0;
    *a3 = v5;
  }

  else
  {
    FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_1();
    return 4294954510;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_194()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_9_72()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_12_66(uint64_t a1, const void *a2)
{

  return CFDictionaryGetValueIfPresent(v2, a2, 0);
}

uint64_t MTGetCGAffineTransformFrom3x3MatrixArray(const void *a1, void *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFArrayGetTypeID()))
  {
    MTGetCGAffineTransformFrom3x3MatrixArray_cold_5(&valuePtr);
    return valuePtr;
  }

  if (CFArrayGetCount(a1) != 9)
  {
    MTGetCGAffineTransformFrom3x3MatrixArray_cold_1(&valuePtr);
    return valuePtr;
  }

  valuePtr = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  FigCFArrayGetCGFloatAtIndex();
  FigCFArrayGetCGFloatAtIndex();
  FigCFArrayGetCGFloatAtIndex();
  if (1.0 == 0.0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
    v6 = CFArrayGetValueAtIndex(a1, 1);
    CFNumberGetValue(v6, kCFNumberCGFloatType, &v21);
    v7 = CFArrayGetValueAtIndex(a1, 3);
    CFNumberGetValue(v7, kCFNumberCGFloatType, &v20);
    v8 = CFArrayGetValueAtIndex(a1, 4);
    CFNumberGetValue(v8, kCFNumberCGFloatType, &v19);
    v9 = CFArrayGetValueAtIndex(a1, 6);
    CFNumberGetValue(v9, kCFNumberCGFloatType, &v18);
    v10 = CFArrayGetValueAtIndex(a1, 7);
    CFNumberGetValue(v10, kCFNumberCGFloatType, &v17);
    result = 0;
    if (a2)
    {
      v12 = v17;
      v13 = v18;
      v14 = v19;
      v15 = v20;
      v16 = v21;
      *a2 = valuePtr;
      a2[1] = v16;
      a2[2] = v15;
      a2[3] = v14;
      a2[4] = v13;
      a2[5] = v12;
    }
  }

  else
  {
    MTGetCGAffineTransformFrom3x3MatrixArray_cold_2(&v23);
    return v23;
  }

  return result;
}

uint64_t MTCreate3x3MatrixArrayFromCGAffineTransform(const __CFAllocator *a1, double *a2, __CFArray **a3)
{
  if (!a3)
  {
    MTCreate3x3MatrixArrayFromCGAffineTransform_cold_2(&v11);
    return v11;
  }

  Mutable = CFArrayCreateMutable(a1, 9, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    MTCreate3x3MatrixArrayFromCGAffineTransform_cold_1(&v10);
    return v10;
  }

  v6 = Mutable;
  v7 = fcgs_AddCGFloatToArray(Mutable, *a2);
  if (v7 || (v7 = fcgs_AddCGFloatToArray(v6, a2[1]), v7) || (v7 = fcgs_AddCGFloatToArray(v6, 0.0), v7) || (v7 = fcgs_AddCGFloatToArray(v6, a2[2]), v7) || (v7 = fcgs_AddCGFloatToArray(v6, a2[3]), v7) || (v7 = fcgs_AddCGFloatToArray(v6, 0.0), v7) || (v7 = fcgs_AddCGFloatToArray(v6, a2[4]), v7) || (v7 = fcgs_AddCGFloatToArray(v6, a2[5]), v7))
  {
    v8 = v7;
    goto LABEL_15;
  }

  v8 = fcgs_AddCGFloatToArray(v6, 1.0);
  if (v8)
  {
LABEL_15:
    CFRelease(v6);
    return v8;
  }

  *a3 = v6;
  return v8;
}

uint64_t fcgs_AddCGFloatToArray(__CFArray *a1, double a2)
{
  v6 = a2;
  if (!a1)
  {
    fcgs_AddCGFloatToArray_cold_2(&v7);
    return v7;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &v6);
  if (!v3)
  {
    fcgs_AddCGFloatToArray_cold_1(&v7);
    return v7;
  }

  v4 = v3;
  CFArrayAppendValue(a1, v3);
  CFRelease(v4);
  return 0;
}

uint64_t FigGetCGAffineTransformFrom3x3MatrixArray@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v3 + 32);
  return MTGetCGAffineTransformFrom3x3MatrixArray(a1, a2);
}

__CFArray *FigCreate3x3MatrixArrayFromCGAffineTransform(const __CFAllocator *a1, _OWORD *a2)
{
  v5 = 0;
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  MTCreate3x3MatrixArrayFromCGAffineTransform(a1, v4, &v5);
  return v5;
}

double FigGetCGAffineTransformFrom3x2MatrixArray@<D0>(const __CFArray *a1@<X0>, double *a2@<X8>)
{
  valuePtr = 0.0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
  v5 = CFArrayGetValueAtIndex(a1, 1);
  CFNumberGetValue(v5, kCFNumberCGFloatType, &v20);
  v6 = CFArrayGetValueAtIndex(a1, 2);
  CFNumberGetValue(v6, kCFNumberCGFloatType, &v19);
  v7 = CFArrayGetValueAtIndex(a1, 3);
  CFNumberGetValue(v7, kCFNumberCGFloatType, &v18);
  v8 = CFArrayGetValueAtIndex(a1, 4);
  CFNumberGetValue(v8, kCFNumberCGFloatType, &v17);
  v9 = CFArrayGetValueAtIndex(a1, 5);
  CFNumberGetValue(v9, kCFNumberCGFloatType, &v16);
  result = valuePtr;
  v12 = v19;
  v11 = v20;
  v14 = v17;
  v13 = v18;
  v15 = v16;
  *a2 = valuePtr;
  *(a2 + 1) = v11;
  *(a2 + 2) = v12;
  *(a2 + 3) = v13;
  *(a2 + 4) = v14;
  *(a2 + 5) = v15;
  return result;
}

__CFArray *FigCreate3x2MatrixArrayFromCGAffineTransform(const __CFAllocator *a1, double *a2)
{
  Mutable = CFArrayCreateMutable(a1, 6, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (Mutable)
  {
    if (fcgs_AddCGFloatToArray(Mutable, *a2) || fcgs_AddCGFloatToArray(v4, a2[1]) || fcgs_AddCGFloatToArray(v4, a2[2]) || fcgs_AddCGFloatToArray(v4, a2[3]) || fcgs_AddCGFloatToArray(v4, a2[4]) || fcgs_AddCGFloatToArray(v4, a2[5]))
    {
      CFRelease(v4);
      return 0;
    }
  }

  else
  {
    FigCreate3x2MatrixArrayFromCGAffineTransform_cold_1();
  }

  return v4;
}

uint64_t FigGetRotationAngleAndFlipsFromCGAffineTransform(double *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = *a1 * 65536.0;
  if (v3 >= -2147483650.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (v3 <= 2147483650.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  v6 = a1[1] * 65536.0;
  if (v6 >= -2147483650.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x80000000;
  }

  if (v6 > 2147483650.0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = a1[3];
  v9 = a1[2] * 65536.0;
  if (v9 >= -2147483650.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x80000000;
  }

  if (v9 > 2147483650.0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = v8 * 65536.0;
  if (v8 * 65536.0 <= 2147483650.0)
  {
    if (v11 >= -2147483650.0)
    {
      v12 = v11;
      if (v5)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = 0x80000000;
      if (v5)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v12 = 0x7FFFFFFF;
    if (v5)
    {
      goto LABEL_30;
    }
  }

  if (v12 || !v7 || !v10)
  {
LABEL_30:
    LOBYTE(v14) = 0;
    if (!v5 || v7 || v10)
    {
      LOBYTE(v13) = 0;
      result = 0;
    }

    else
    {
      LOBYTE(v13) = 0;
      result = 0;
      if (v12)
      {
        if ((v5 & 0x80000000) == 0)
        {
          LOBYTE(v14) = 0;
          result = 0;
          v13 = v12 >> 31;
          if (!a2)
          {
            goto LABEL_42;
          }

LABEL_41:
          *a2 = v13;
          goto LABEL_42;
        }

        LOBYTE(v13) = 0;
        LOBYTE(v14) = v12 > 0;
        if (v12 <= 0)
        {
          result = 180;
        }

        else
        {
          result = 0;
        }

        if (a2)
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }
    }

    if (!a2)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v7 >= 1)
  {
    LOBYTE(v13) = 0;
    LOBYTE(v14) = v10 > 0;
    result = 90;
    if (!a2)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  LOBYTE(v13) = 0;
  v14 = v10 >> 31;
  result = 270;
  if (a2)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (a3)
  {
    *a3 = v14;
  }

  return result;
}

uint64_t FigAssetTableAddAsset()
{
  if (PerformOneTimeAssetTableInitialization_sAssetTableInit != -1)
  {
    FigAssetTableAddAsset_cold_1();
  }

  return FigCFWeakReferenceTableAddValueAndGetKey();
}

uint64_t FigAssetTableRemoveAsset()
{
  if (PerformOneTimeAssetTableInitialization_sAssetTableInit != -1)
  {
    FigAssetTableAddAsset_cold_1();
  }

  return FigCFWeakReferenceTableRemoveValue();
}

uint64_t FigAssetTableCopyAsset(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
      if (PerformOneTimeAssetTableInitialization_sAssetTableInit != -1)
      {
        FigAssetTableAddAsset_cold_1();
      }

      v3 = FigCFWeakReferenceTableCopyValue();
      result = 0;
      *a2 = v3;
    }

    else
    {
      FigAssetTableCopyAsset_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigAssetTableCopyAsset_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t FigAssetCopyAssetWithDownloadToken(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = FigAssetTableCopyAsset(a1, a2);
      if (!*a2)
      {
        FigAssetCopyAssetWithDownloadToken_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      FigAssetCopyAssetWithDownloadToken_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigAssetCopyAssetWithDownloadToken_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared()
{
  if (FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_onceToken != -1)
  {
    FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_cold_1();
  }

  return FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_sGlobalRegistry;
}

void __FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_block_invoke()
{
  FigBufferedAirPlayGlobalRoutingRegistryGetClassID();
  if (!CMDerivedObjectCreate())
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = FigBufferedAirPlayClientRoutingRegistryGetSharedInstance();
    v1 = dispatch_queue_create("com.apple.coremedia.globalroutingregistry.notification", 0);
    DerivedStorage[1] = v1;
    if (v1)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_sGlobalRegistry = 0;
    }
  }
}

uint64_t localGlobalRoutingRegistry_bufferedClientUpdateNotificationCallback()
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17918)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return FigDispatchAsyncPostNotification();
}

void localGlobalRoutingRegistry_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 8) = 0;
  }

  FigBytePumpRelease(*DerivedStorage);
  __break(1u);
}

CFStringRef localGlobalRoutingRegistry_CopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<LocalGlobalRoutingRegistry: %p retainCount: %ld>", a1, v3);
}

uint64_t localGlobalRoutingRegistry_registerClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC280](v5, a2, a3, 0);
}

uint64_t localGlobalRoutingRegistry_unRegisterClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC288](v5, a2, a3, 0);
}

uint64_t localGlobalRoutingRegistry_registerClientWithRemoteID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC280](v7, a2, a4, a3);
}

uint64_t localGlobalRoutingRegistry_unRegisterClientWithRemoteID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC288](v7, a2, a4, a3);
}

uint64_t localGlobalRoutingRegistry_getCountOfRunningClientsForRoutingContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC270](v5, a2, a3);
}

uint64_t localGlobalRoutingRegistry_clearAllClientWithRemoteID(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC268](v3, a2);
}

uint64_t FigMediaparserdUtilities_StartMediaparserdUtilitiesServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigMediaparserdUtilities_StartMediaparserdUtilitiesServer_block_invoke;
  block[3] = &unk_1E7495868;
  block[4] = &v3;
  if (FigMediaparserdUtilities_StartMediaparserdUtilitiesServer_sFigMediaparserdUtilitiesServerSetupOnce != -1)
  {
    dispatch_once(&FigMediaparserdUtilities_StartMediaparserdUtilitiesServer_sFigMediaparserdUtilitiesServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t oobtcontroller_initOnce(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void FigOutOfBandTrackControllerInvalidate(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_sync(v2, &__block_literal_global_112);
    }

    v3 = *(a1 + 168);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v4)
      {
        v4(v3, 0);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigBaseObject = FigPlayerGetFigBaseObject(*(a1 + 168));
      v6 = *(CMBaseObjectGetVTable() + 8);
      if (*v6 >= 2uLL)
      {
        v7 = v6[8];
        if (v7)
        {
          v7(FigBaseObject);
        }
      }
    }

    *(a1 + 16) = 1;
    if (*(a1 + 176))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      dispatch_sync(v8, &__block_literal_global_42_0);
      dispatch_release(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    v9 = FigPlaybackItemGetFigBaseObject(*(a1 + 176));
    if (v9)
    {
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v11)
      {
        v11(v10);
      }
    }

    v12 = *(a1 + 176);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 176) = 0;
    }

    v13 = FigPlayerGetFigBaseObject(*(a1 + 168));
    if (v13)
    {
      v14 = v13;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v15)
      {
        v15(v14);
      }
    }

    v16 = *(a1 + 168);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 168) = 0;
    }

    v17 = *(a1 + 160);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 160) = 0;
    }

    v18 = *(a1 + 152);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 152) = 0;
    }

    v19 = *(a1 + 144);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 144) = 0;
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 40) = 0;
    }

    v21 = *(a1 + 48);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 48) = 0;
    }

    v22 = *(a1 + 104);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 104) = 0;
    }

    v23 = *(a1 + 120);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 120) = 0;
    }

    v24 = *(a1 + 128);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + 128) = 0;
    }

    v25 = *(a1 + 136);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 136) = 0;
    }
  }
}

void oobtcontroller_handlePlayerNotification(int a1, uint64_t a2, CFTypeRef cf1)
{
  if (a2 && !*(a2 + 16) && CFEqual(cf1, @"SubtitleChanged"))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }
}

void oobtcontroller_handlePlaybackItemNotification(int a1, uint64_t a2, CFTypeRef cf1)
{
  if (a2 && !*(a2 + 16) && (CFEqual(cf1, @"FailedToBecomeReadyForInspection") || CFEqual(cf1, @"FailedToBecomeReadyForPlayback") || CFEqual(cf1, @"FailedToPlayToEnd")))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }
}

uint64_t FigOutOfBandTrackControllerSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (!a1)
  {
    FigOutOfBandTrackControllerSetProperty_cold_5(&v34);
    return v34;
  }

  if (CFEqual(cf1, @"UsingNeroVideo"))
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFDictionaryGetTypeID())
      {
        result = CFDictionaryGetValue(a3, @"Visuals");
        if (!result)
        {
          return result;
        }

        v8 = result;
        v9 = *(a1 + 112);
        if (v9 != CFBooleanGetValue(result))
        {
          Value = CFBooleanGetValue(v8);
          *(a1 + 112) = Value;
          if (Value)
          {
            v11 = CFDictionaryGetValue(a3, @"NeroTransport");
            if (v11)
            {
              v12 = *(a1 + 240);
              *(a1 + 240) = v11;
              CFRetain(v11);
              if (v12)
              {
                CFRelease(v12);
              }
            }

            else
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM();
            }
          }

          else
          {
            v27 = *(a1 + 240);
            if (v27)
            {
              CFRelease(v27);
              *(a1 + 240) = 0;
            }
          }

          oobtcontroller_updateNeroVideoMode(a1);
        }

        return 0;
      }
    }

    goto LABEL_58;
  }

  if (CFEqual(cf1, @"NeroVideoDimensions"))
  {
    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 == CFDictionaryGetTypeID())
      {
        v14 = *(a1 + 120);
        *(a1 + 120) = a3;
        CFRetain(a3);
        if (v14)
        {
          CFRelease(v14);
        }

        if (!*(a1 + 16) && FigAtomicCompareAndSwap32())
        {
          CFRetain(a1);
          v25 = *(a1 + 24);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __FigOutOfBandTrackControllerSetProperty_block_invoke;
          block[3] = &__block_descriptor_tmp_43_1;
          block[4] = a1;
          v26 = block;
LABEL_41:
          dispatch_async(v25, v26);
          return 0;
        }

        result = *(a1 + 176);
        if (!result)
        {
          return result;
        }

        v15 = *(a1 + 120);
        FigBaseObject = FigPlaybackItemGetFigBaseObject(result);
        result = CMBaseObjectSetProperty(FigBaseObject, @"OutOfBandTextRenderingVideoDimensions", v15);
        if (!result)
        {
          return result;
        }

        FigOutOfBandTrackControllerSetProperty_cold_1();
        return v34;
      }
    }

    goto LABEL_58;
  }

  if (CFEqual(cf1, @"NeroDisplaySize"))
  {
    if (!a3)
    {
      goto LABEL_58;
    }

    v17 = CFGetTypeID(a3);
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_58;
    }

    v18 = *(a1 + 128);
    *(a1 + 128) = a3;
    CFRetain(a3);
    if (v18)
    {
      CFRelease(v18);
    }

    result = *(a1 + 168);
    if (result)
    {
      v19 = *(a1 + 128);
      v20 = FigPlayerGetFigBaseObject(result);
      result = CMBaseObjectSetProperty(v20, @"NeroDisplaySize", v19);
      if (result)
      {
        FigOutOfBandTrackControllerSetProperty_cold_2();
        return v34;
      }
    }
  }

  else
  {
    if (!CFEqual(cf1, @"NeroVideoGravity"))
    {
      if (!CFEqual(cf1, @"TextMarkupArray"))
      {
        return 4294954436;
      }

      if (a3)
      {
        v28 = CFGetTypeID(a3);
        if (v28 == CFArrayGetTypeID())
        {
          v29 = *(a1 + 104);
          *(a1 + 104) = a3;
          CFRetain(a3);
          if (v29)
          {
            CFRelease(v29);
          }

          if (!*(a1 + 16) && FigAtomicCompareAndSwap32())
          {
            CFRetain(a1);
            v25 = *(a1 + 24);
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 0x40000000;
            v32[2] = __FigOutOfBandTrackControllerSetProperty_block_invoke_2;
            v32[3] = &__block_descriptor_tmp_44_1;
            v32[4] = a1;
            v26 = v32;
            goto LABEL_41;
          }

          result = *(a1 + 176);
          if (!result)
          {
            return result;
          }

          v30 = *(a1 + 104);
          v31 = FigPlaybackItemGetFigBaseObject(result);
          result = CMBaseObjectSetProperty(v31, @"TextMarkupArray", v30);
          if (!result)
          {
            return result;
          }

          FigOutOfBandTrackControllerSetProperty_cold_4();
          return v34;
        }
      }

LABEL_58:
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    if (!a3)
    {
      goto LABEL_58;
    }

    v21 = CFGetTypeID(a3);
    if (v21 != CFStringGetTypeID())
    {
      goto LABEL_58;
    }

    v22 = *(a1 + 136);
    *(a1 + 136) = a3;
    CFRetain(a3);
    if (v22)
    {
      CFRelease(v22);
    }

    result = *(a1 + 168);
    if (result)
    {
      v23 = *(a1 + 136);
      v24 = FigPlayerGetFigBaseObject(result);
      result = CMBaseObjectSetProperty(v24, @"NeroVideoGravity", v23);
      if (result)
      {
        FigOutOfBandTrackControllerSetProperty_cold_3();
        return v34;
      }
    }
  }

  return result;
}

uint64_t oobtcontroller_updateNeroVideoMode(uint64_t result)
{
  if (!*(result + 168))
  {
    return result;
  }

  v1 = result;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return oobtcontroller_updateNeroVideoMode_cold_3();
  }

  v3 = Mutable;
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  if (*(v1 + 112))
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"Visuals", v6);
  if (*(v1 + 112))
  {
    CFDictionarySetValue(v3, @"NeroTransport", *(v1 + 168));
  }

  FigBaseObject = FigPlayerGetFigBaseObject(*(v1 + 168));
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v8)
  {
    CFRelease(v3);
    return oobtcontroller_updateNeroVideoMode_cold_2();
  }

  v9 = v8(FigBaseObject, @"SendToNero", v3);
  CFRelease(v3);
  if (v9)
  {
    return oobtcontroller_updateNeroVideoMode_cold_2();
  }

  v10 = *(v1 + 168);
  if (*(v1 + 112))
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  v12 = FigPlayerGetFigBaseObject(v10);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v13)
  {
    return oobtcontroller_updateNeroVideoMode_cold_1();
  }

  result = v13(v12, @"OutOfBandTextRenderingForNeroVideo", v11);
  if (result)
  {
    return oobtcontroller_updateNeroVideoMode_cold_1();
  }

  return result;
}

void __FigOutOfBandTrackControllerSetProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v4 = *(v2 + 176);
    if (v4)
    {
      if (*(v2 + 112))
      {
        v5 = *(v2 + 120);
        FigBaseObject = FigPlaybackItemGetFigBaseObject(v4);
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v7)
        {
          v7(FigBaseObject, @"OutOfBandTextRenderingVideoDimensions", v5);
        }
      }
    }
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

void __FigOutOfBandTrackControllerSetProperty_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v4 = *(v2 + 176);
    if (v4)
    {
      v5 = *(v2 + 104);
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v4);
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v7(FigBaseObject, @"TextMarkupArray", v5);
      }
    }
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t FigOutOfBandTrackControllerPrepare(uint64_t a1)
{
  v2 = (a1 + 168);
  if (!*(a1 + 168))
  {
    if (FigPlayerFileCreate(*MEMORY[0x1E695E480], v2))
    {
      FigOutOfBandTrackControllerPrepare_cold_1();
      return v21;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    FigBaseObject = FigPlayerGetFigBaseObject(*(a1 + 168));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(FigBaseObject, @"ActionAtEnd", @"None");
    }

    v15 = *MEMORY[0x1E695E4D0];
    v16 = FigPlayerGetFigBaseObject(*v2);
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v17(v16, @"DisplayNonForcedSubtitles", v15);
    }

    v18 = FigPlayerGetFigBaseObject(*v2);
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v19)
    {
      v19(v18, @"PrepareItemOnDispatchQueue", v15);
    }
  }

  v3 = *v2;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v4(v3, 0);
  }

  oobtcontroller_updateNeroVideoMode(a1);
  if (!*(a1 + 112))
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 128);
  if (v5 && ((v6 = FigPlayerGetFigBaseObject(*v2), (v7 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v7(v6, @"NeroDisplaySize", v5)))
  {
    FigOutOfBandTrackControllerPrepare_cold_2();
  }

  else
  {
    v8 = *(a1 + 136);
    if (!v8 || (v9 = FigPlayerGetFigBaseObject(*v2), (v10 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v10(v9, @"NeroVideoGravity", v8))
    {
LABEL_11:
      CFRetain(a1);
      v11 = *(a1 + 24);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = __FigOutOfBandTrackControllerPrepare_block_invoke;
      v20[3] = &__block_descriptor_tmp_45_1;
      v20[4] = a1;
      dispatch_async(v11, v20);
      return 0;
    }

    FigOutOfBandTrackControllerPrepare_cold_3();
  }

  return v21;
}

void __FigOutOfBandTrackControllerPrepare_block_invoke(uint64_t a1)
{
  cf = 0;
  if (*(*(a1 + 32) + 16))
  {
    goto LABEL_45;
  }

  FigAtomicCompareAndSwap32();
  v2 = *(a1 + 32);
  if (!*(v2 + 144))
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"ReferenceSecurityPolicyFlag");
      if (Value)
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        v5 = valuePtr;
        v6 = FigByteStreamFactoryTranslateReferenceSecurityOptions(valuePtr);
      }

      else
      {
        v5 = 0;
        v6 = 0;
      }

      v8 = CFDictionaryGetValue(*(*(a1 + 32) + 48), @"ReferenceSecurityPolicyFlagBaseURL");
      v7 = 0;
      v2 = *(a1 + 32);
      if (v5 && v8)
      {
        if (!FigIsReferenceAllowedBySecurityPolicy())
        {
          __FigOutOfBandTrackControllerPrepare_block_invoke_cold_1(&valuePtr);
          goto LABEL_52;
        }

        v2 = *(a1 + 32);
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    if (FigByteStreamFactoryCreateStreamFromURLWithOptions(*(v2 + 40), v6, 0, (v2 + 144), &cf, 0, 0, 0))
    {
      __FigOutOfBandTrackControllerPrepare_block_invoke_cold_2();
      goto LABEL_52;
    }

    if (cf)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1 && !FigIsReferenceAllowedBySecurityPolicy())
    {
      __FigOutOfBandTrackControllerPrepare_block_invoke_cold_8(&valuePtr);
      goto LABEL_52;
    }
  }

  v10 = *(a1 + 32);
  if (!*(v10 + 152))
  {
    if (FigWebVTTFormatReaderCreateFromStream(*(v10 + 144), *MEMORY[0x1E695E480], (v10 + 152)))
    {
      __FigOutOfBandTrackControllerPrepare_block_invoke_cold_3();
      goto LABEL_52;
    }

    v10 = *(a1 + 32);
  }

  if (!*(v10 + 160))
  {
    if (FigAssetCreateWithFormatReader(*MEMORY[0x1E695E480], *(v10 + 152), 0, 0, (v10 + 160)))
    {
      __FigOutOfBandTrackControllerPrepare_block_invoke_cold_4();
      goto LABEL_52;
    }

    v10 = *(a1 + 32);
  }

  v12 = v10 + 176;
  v11 = *(v10 + 176);
  if (!v11)
  {
    v15 = *(v10 + 160);
    v14 = *(v10 + 168);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v16 && !v16(v14, v15, 0, 0, v12))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      v11 = *(*(a1 + 32) + 176);
      v13 = 1;
      goto LABEL_29;
    }

    __FigOutOfBandTrackControllerPrepare_block_invoke_cold_7();
LABEL_52:
    v13 = 0;
    goto LABEL_54;
  }

  v13 = 0;
LABEL_29:
  FigBaseObject = FigPlaybackItemGetFigBaseObject(v11);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v18)
  {
    v18(FigBaseObject, @"DisplayNonForcedSubtitlesChanged", *MEMORY[0x1E695E4D0]);
  }

  v19 = *(a1 + 32);
  if (*(v19 + 196))
  {
    v20 = *(v19 + 176);
    v32 = *(v19 + 184);
    v33 = *(v19 + 200);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v21)
    {
      valuePtr = v32;
      v36 = v33;
      v21(v20, &valuePtr, 5);
    }

    v19 = *(a1 + 32);
  }

  v22 = *(v19 + 104);
  if (v22)
  {
    v23 = FigPlaybackItemGetFigBaseObject(*(v19 + 176));
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v24)
    {
      v24(v23, @"TextMarkupArray", v22);
    }
  }

  v25 = *(a1 + 32);
  if (!*(v25 + 112))
  {
    goto LABEL_43;
  }

  v26 = *(v25 + 120);
  if (!v26)
  {
    goto LABEL_43;
  }

  v27 = FigPlaybackItemGetFigBaseObject(*(v25 + 176));
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v28 && !v28(v27, @"OutOfBandTextRenderingVideoDimensions", v26))
  {
    v25 = *(a1 + 32);
LABEL_43:
    v29 = *(v25 + 168);
    v30 = *(v25 + 176);
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v31 && !v31(v29, v30, 0))
    {
      goto LABEL_45;
    }

    __FigOutOfBandTrackControllerPrepare_block_invoke_cold_6();
    goto LABEL_54;
  }

  __FigOutOfBandTrackControllerPrepare_block_invoke_cold_5();
LABEL_54:
  if (valuePtr)
  {
    if (v13)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

LABEL_45:
  if (!*(*(a1 + 32) + 16))
  {
    FigAtomicCompareAndSwap32();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(*(a1 + 32));
}

__n128 FigOutOfBandTrackControllerSetCurrentTime(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 16) || !FigAtomicCompareAndSwap32())
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v5)
      {
        v15 = v10;
        v16 = v11;
        v5(v4, &v15, 0);
      }
    }

    else
    {
      v8 = *a2;
      *(a1 + 200) = *(a2 + 2);
      *(a1 + 184) = v8;
      v9 = MEMORY[0x1E6960C70];
      result = *MEMORY[0x1E6960C70];
      *(a1 + 208) = *MEMORY[0x1E6960C70];
      *(a1 + 224) = *(v9 + 16);
    }
  }

  else
  {
    CFRetain(a1);
    v7 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigOutOfBandTrackControllerSetCurrentTime_block_invoke;
    block[3] = &__block_descriptor_tmp_46_2;
    block[4] = a1;
    v13 = *a2;
    v14 = *(a2 + 2);
    dispatch_async(v7, block);
  }

  return result;
}

void __FigOutOfBandTrackControllerSetCurrentTime_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = *(v2 + 176);
    if (v3)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 56);
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v4)
      {
        v7 = v5;
        v8 = v6;
        v4(v3, &v7, 0);
      }

      v2 = *(a1 + 32);
    }
  }

  CFRelease(v2);
}

uint64_t FigOutOfBandTrackControllerSetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  if (*(a1 + 16) || !FigAtomicCompareAndSwap32())
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      v16 = *a2;
      v17 = *(a2 + 2);
      v14 = *a3;
      v15 = *(a3 + 2);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v9)
      {
        v26 = v16;
        v27 = v17;
        v24 = v14;
        v25 = v15;
        return v9(v8, &v26, &v24, 0, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      result = 0;
      *(a1 + 232) = a4;
      v12 = *a2;
      *(a1 + 200) = *(a2 + 2);
      *(a1 + 184) = v12;
      v13 = *a3;
      *(a1 + 224) = *(a3 + 2);
      *(a1 + 208) = v13;
    }
  }

  else
  {
    CFRetain(a1);
    v11 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigOutOfBandTrackControllerSetRateAndAnchorTime_block_invoke;
    block[3] = &__block_descriptor_tmp_47_3;
    block[4] = a1;
    v19 = a4;
    v20 = *a2;
    v21 = *(a2 + 2);
    v22 = *a3;
    v23 = *(a3 + 2);
    dispatch_async(v11, block);
    return 0;
  }

  return result;
}

void __FigOutOfBandTrackControllerSetRateAndAnchorTime_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = *(v2 + 168);
    if (v3)
    {
      v4 = *(a1 + 40);
      v8 = *(a1 + 44);
      v9 = *(a1 + 60);
      v6 = *(a1 + 68);
      v7 = *(a1 + 84);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v5)
      {
        v12 = v8;
        v13 = v9;
        v10 = v6;
        v11 = v7;
        v5(v3, &v12, &v10, 0, v4);
      }

      v2 = *(a1 + 32);
    }
  }

  CFRelease(v2);
}

double oobtcontroller_init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
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

uint64_t oobtcontroller_finalize(uint64_t a1)
{
  FigOutOfBandTrackControllerInvalidate(a1);
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterUnregisterForBarrierSupport();
}

__CFString *oobtcontroller_copyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigOutOfBandTrackController: %p", a1);
  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @" SourceURL: %@", *(a1 + 40));
  }

  if (*(a1 + 168))
  {
    CFStringAppendFormat(Mutable, 0, @" Player: %p", *(a1 + 168));
  }

  if (*(a1 + 176))
  {
    CFStringAppendFormat(Mutable, 0, @" Item: %p", *(a1 + 176));
  }

  if (*(a1 + 112))
  {
    v3 = "ACTIVE";
  }

  else
  {
    v3 = "Inactive";
  }

  CFStringAppendFormat(Mutable, 0, @" NeroVideo is %s", v3);
  CFStringAppendFormat(Mutable, 0, @">\n");
  return Mutable;
}

uint64_t RegisterFigPropertyStorageIDType()
{
  result = _CFRuntimeRegisterClass();
  sFigPropertyStorageID = result;
  return result;
}

uint64_t FigPropertyStorageCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterFigPropertyStorageTypeOnce != -1)
  {
    FigPropertyStorageCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v4 + 24) = dispatch_queue_create("com.apple.coremedia.figplayerstoragequeue", MEMORY[0x1E69E96A8]);
    *a2 = v4;
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigPropertyStorageCopyValue(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = 0;
  v5[1] = a1;
  v5[2] = a2;
  v6 = 0;
  dispatch_sync_f(*(a1 + 24), v5, _figPropertyStorageCopyValue);
  *a3 = v6;
  return LODWORD(v5[0]);
}

const void **_figPropertyStorageCopyValue(const void **result)
{
  v1 = result;
  v2 = result[1];
  if (*(v2 + 32))
  {
    v3 = -12785;
LABEL_3:
    *v1 = v3;
    return result;
  }

  result = CFDictionaryGetValueIfPresent(*(v2 + 2), result[2], result + 3);
  if (!result)
  {
    v3 = -12784;
    goto LABEL_3;
  }

  result = v1[3];
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void FigPropertyStorageSetValue(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v8[0] = 0;
  v8[1] = a1;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      v8[2] = CFRetain(cf);
      if (a3)
      {
        v7 = CFRetain(a3);
      }

      else
      {
        v7 = 0;
      }

      v8[3] = v7;
      dispatch_barrier_sync_f(*(a1 + 24), v8, _figPropertyStorageSetValue);
    }
  }
}

void _figPropertyStorageSetValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    CFDictionarySetValue(*(v2 + 16), *(a1 + 16), v3);
  }

  else
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(*(v2 + 16), *(a1 + 16), &value))
    {
      if (value)
      {
        CFRetain(value);
        v4 = value;
      }

      else
      {
        v4 = 0;
      }

      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_async_f(global_queue, v4, _figPropertyStorageReleaseAsync);
    }

    CFDictionaryRemoveValue(*(v2 + 16), *(a1 + 16));
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    CFRelease(v7);
  }
}

void *figPropertyStorageInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figPropertyStorageFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  dispatch_release(*(a1 + 24));
  *(a1 + 24) = 0;
}

__CFString *figPropertyStorageCopyDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = FigCFCopyCompactDescription();
  v5 = v4;
  if (a1[2])
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<No property values stored>";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPropertyStorageRef %p>\n\tProperties:\n\t\t%@", a1, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

void _figPropertyStorageReleaseAsync(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void figCachePrimer_PerformCacheTransfer(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return;
  }

  *(a1 + 16) = 1;
  v2 = *(a1 + 32);
  v3 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v3)
  {
    valuePtr = v3(v2, a1, 0, figCachePrimer_WriteBytes);
    if (!valuePtr)
    {
      *(a1 + 16) = 2;
      CMNotificationCenterGetDefaultLocalCenter();

      CMNotificationCenterPostNotification();
      return;
    }
  }

  else
  {
    valuePtr = -12782;
  }

  v4 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v5 = CFDictionaryCreate(v4, &kFigCRABSCachePrimerParameter_Result, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 3;
  }
}

uint64_t RegisterFigCRABSCachePrimerType()
{
  result = _CFRuntimeRegisterClass();
  sFigCRABSCachePrimerID = result;
  return result;
}

uint64_t FigCRABSCachePrimerCreate(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (sRegisterFigCRABSCachePrimerTypeOnce != -1)
        {
          FigCRABSCachePrimerCreate_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v8 = Instance;
          v9 = dispatch_queue_create("CRABSCachePrimerWorkQueue", 0);
          *(v8 + 24) = v9;
          if (v9)
          {
            *(v8 + 32) = CFRetain(a2);
            v10 = CFRetain(a3);
            result = 0;
            *(v8 + 40) = v10;
            *(v8 + 16) = 0;
            *a4 = v8;
            return result;
          }

          FigCRABSCachePrimerCreate_cold_2(v8, &v12);
        }

        else
        {
          FigCRABSCachePrimerCreate_cold_3(&v12);
        }
      }

      else
      {
        FigCRABSCachePrimerCreate_cold_4(&v12);
      }
    }

    else
    {
      FigCRABSCachePrimerCreate_cold_5(&v12);
    }
  }

  else
  {
    FigCRABSCachePrimerCreate_cold_6(&v12);
  }

  return v12;
}

uint64_t figCachePrimer_WriteBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 20))
  {
    *(a1 + 16) = 4;
    return 4294955234;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {

      return v9(v8, a2, a3, a4, 0);
    }

    else
    {
      return 4294954514;
    }
  }
}

double figCRABSCachePrimerInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCRABSCachePrimerFinalize(void *context)
{
  if (!*(context + 20))
  {
    v2 = context[3];
    if (v2)
    {
      *(context + 20) = 1;
      dispatch_sync_f(v2, context, figCachePrimer_EmptyBlock);
    }
  }

  v3 = context[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = context[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = context[3];
  if (v5)
  {

    dispatch_release(v5);
  }
}

__CFString *figCRABSCachePrimerCopyDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCRABSCachePrimer %p status %d>", a1, a1[4]);
  return Mutable;
}

uint64_t __FigNeroPlayServerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBA30 = result;
  return result;
}

uint64_t _FigNeroPlayServerSetDeviceUID(uint64_t a1, const void *a2)
{
  if (FigCFEqual())
  {
    return 0;
  }

  v4 = *(a1 + 256);
  *(a1 + 256) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
    *(a1 + 208) = v5;
    if (v5)
    {
      *v5 = 0x40E7700000000000;
      *(v5 + 8) = xmmword_196E78B20;
      *(v5 + 24) = xmmword_196E78B30;
      *(v5 + 40) = vdupq_n_s64(0x40E7700000000000uLL);
      *(a1 + 216) = 1;
    }

    if (!*(a1 + 220))
    {
      goto LABEL_14;
    }

    v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
    *(a1 + 224) = v6;
    if (!v6)
    {
      goto LABEL_14;
    }

    *v6 = 0x40E7700000000000;
    *(v6 + 8) = xmmword_196E78B20;
    *(v6 + 24) = xmmword_196E78B30;
    *(v6 + 40) = vdupq_n_s64(0x40E7700000000000uLL);
    v7 = 1;
  }

  else
  {
    free(*(a1 + 208));
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    free(*(a1 + 224));
    v7 = 0;
    *(a1 + 224) = 0;
  }

  *(a1 + 232) = v7;
LABEL_14:
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  if (*(a1 + 24))
  {
    _FigNeroTellOctaviaSinkAttachedStateChanged(a1);
  }

  return 0;
}

void __FigNeroPlayServerCreate_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  v3 = *(a1 + 32);
  if (a2 <= 1700885536)
  {
    if (a2 == 1651470958)
    {
LABEL_8:
      v5 = MEMORY[0x1E6960C70];
      *(v3 + 272) = *MEMORY[0x1E6960C70];
      *(v3 + 288) = *(v5 + 16);
      return;
    }

    v4 = 1684628836;
LABEL_6:
    if (a2 != v4)
    {
      return;
    }

    _FigNeroPlayServerStopAudio(*(a1 + 32));
    *(v3 + 24) = 0;
    goto LABEL_8;
  }

  if (a2 != 1700885537)
  {
    v4 = 1919249523;
    goto LABEL_6;
  }

  v6 = cf;
  if (*(v3 + 32))
  {
    sampleBufferOut = 0;
    v41 = 0;
    v39 = **&MEMORY[0x1E6960CC0];
    memset(&timingArrayOut, 0, sizeof(timingArrayOut));
    memset(&v37, 0, sizeof(v37));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v37, HostTimeClock);
    v8 = mach_absolute_time();
    if (v6)
    {
      CFRetain(v6);
    }

    v9 = *MEMORY[0x1E695E480];
    if (!FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer() && !CMSampleBufferGetSampleTimingInfoArray(v41, 1, &timingArrayOut, 0))
    {
      memset(&v36, 0, sizeof(v36));
      CMSampleBufferGetPresentationTimeStamp(&v36, v41);
      time = v37;
      CMTimeConvertScale(&v27, &time, v36.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v37 = v27;
      CMSampleBufferGetDuration(&time, v41);
      value = time.value;
      v11 = *(v3 + 76);
      if ((*(v3 + 284) & 1) == 0)
      {
        epoch = v37.epoch;
        *(v3 + 312) = v37.epoch;
        v13 = *&v37.value;
        *(v3 + 296) = *&v37.value;
        *&lhs.value = v13;
        lhs.epoch = epoch;
        rhs = v36;
        CMTimeSubtract(&v27, &lhs, &rhs);
        *(v3 + 272) = v27;
        memset(&v27, 0, sizeof(v27));
        CMTimeMake(&v27, 20, 1000);
        rhs = v27;
        CMTimeConvertScale(&lhs, &rhs, v36.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v27 = lhs;
        rhs = *(v3 + 272);
        v32 = lhs;
        CMTimeSubtract(&lhs, &rhs, &v32);
        *(v3 + 272) = lhs;
      }

      v14 = v11 * value;
      v27 = v37;
      rhs = *(v3 + 296);
      CMTimeSubtract(&lhs, &v27, &rhs);
      v15 = lhs.value;
      if (lhs.value > v36.timescale)
      {
        *(v3 + 128) = v8;
        *(v3 + 136) = v15;
      }

      v16 = v36.value + v14;
      *(v3 + 144) = v8;
      *(v3 + 152) = v16;
      _FigNeroPlayServerUpdateDesiredOctaviaSampleRate(v3);
      v27 = v36;
      rhs = *(v3 + 272);
      CMTimeAdd(&v39, &v27, &rhs);
      timingArrayOut.presentationTimeStamp = v39;
      timingArrayOut.decodeTimeStamp = **&MEMORY[0x1E6960C70];
      if (!CMSampleBufferCreateCopyWithNewTiming(v9, v41, 1, &timingArrayOut, &sampleBufferOut))
      {
        v17 = *(v3 + 32);
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v18)
        {
          v19 = v18(v17);
        }

        else
        {
          v19 = MEMORY[0x1E69E96A0];
        }

        v27.value = MEMORY[0x1E69E9820];
        *&v27.timescale = 0x40000000;
        v27.epoch = ___FigNeroPlayServerEnqueueAudioBufferOnValeria_block_invoke;
        v28 = &__block_descriptor_tmp_49_0;
        v29 = v3;
        v30 = sampleBufferOut;
        v31 = v6;
        dispatch_async(v19, &v27);
        v6 = 0;
        sampleBufferOut = 0;
      }
    }

    if (v41)
    {
      CFRelease(v41);
    }

    v26 = sampleBufferOut;
    if (!sampleBufferOut)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v37.value = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    v20 = mach_absolute_time();
    if (*(v3 + 248))
    {
      v21 = v20;
      if (!FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer())
      {
        CMSampleBufferGetPresentationTimeStamp(&timingArrayOut.duration, v37.value);
        v22 = timingArrayOut.duration.value;
        CMSampleBufferGetDuration(&v27, v37.value);
        v23 = v27.value;
        v24 = *(v3 + 76);
        if (!CMSimpleQueueEnqueue(*(v3 + 96), v37.value))
        {
          v25 = v24 * v23;
          v37.value = 0;
          v39.value = 0;
          *&v39.timescale = 0;
          if (_FigNeroPlayServerDrainQueue(*(v3 + 104), &v39.value))
          {
            *(v3 + 128) = *&v39.value;
          }

          *(v3 + 144) = v21;
          *(v3 + 152) = v22 + v25;
          _FigNeroPlayServerUpdateDesiredOctaviaSampleRate(v3);
        }
      }
    }

    v26 = v37.value;
    if (!v37.value)
    {
      goto LABEL_38;
    }
  }

  CFRelease(v26);
LABEL_38:
  if (v6)
  {
    CFRelease(v6);
  }
}

void __FigNeroPlayServerCreate_block_invoke_2(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2 <= 1936418166)
  {
    if (a2 != 1634102644)
    {
      if (a2 != 1735336224)
      {
        goto LABEL_39;
      }

      destination = 0;
      v7 = dispatch_time(0, 2000000000);
      if (!*(v5 + 64))
      {
        goto LABEL_39;
      }

      v8 = v7;
      CMSimpleQueueGetCount(*(v5 + 96));
      CMSimpleQueueGetCount(*(v5 + 104));
      if (a3)
      {
        if (CMBlockBufferGetDataLength(a3) != 4)
        {
          __FigNeroPlayServerCreate_block_invoke_2_cold_3(&__s1);
          goto LABEL_49;
        }

        if (CMBlockBufferCopyDataBytes(a3, 0, 4uLL, &destination))
        {
LABEL_37:
          _FigNeroPlayServerStopAudio(v5);
          goto LABEL_39;
        }

        v9 = (destination & 1) == 0;
      }

      else
      {
        v9 = 1;
      }

      v16 = *(v5 + 56);
      *(v5 + 200) = -((*(v5 + 320) + 0.033) * v16);
      *(v5 + 144) = 0;
      *(v5 + 152) = 0;
      *(v5 + 128) = 0;
      *(v5 + 136) = 0;
      *(v5 + 160) = 0;
      *(v5 + 168) = 0;
      v17 = MEMORY[0x1E6960C70];
      *(v5 + 176) = v16;
      *(v5 + 272) = *v17;
      *(v5 + 288) = *(v17 + 16);
      *(v5 + 248) = 1;
      if (!v9)
      {
        *(v5 + 221) = 1;
      }

      v18 = *(v5 + 32);
      if (v18)
      {
        if (*(v5 + 221))
        {
          v19 = *(v5 + 224);
          v20 = *(CMBaseObjectGetVTable() + 16);
          if (*v20 == 2)
          {
            v21 = v20[7];
            if (v21)
            {
              v21(v18, v19);
            }
          }
        }
      }

      v22 = *(v5 + 48);
      if (!v22)
      {
        goto LABEL_39;
      }

      *(v5 + 184) = 1;
      if (AudioUnitInitialize(v22) || AudioOutputUnitStart(*(v5 + 48)))
      {
        goto LABEL_37;
      }

      if (!dispatch_semaphore_wait(*(v5 + 192), v8))
      {
        goto LABEL_39;
      }

      __FigNeroPlayServerCreate_block_invoke_2_cold_4(&__s1);
LABEL_49:
      if (!__s1)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v29 = 0;
    __s1 = 0u;
    v28 = 0u;
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_40;
    }

    v12 = Mutable;
    if (!a3)
    {
      __FigNeroPlayServerCreate_block_invoke_2_cold_2(&destination);
      goto LABEL_22;
    }

    if (CMBlockBufferGetDataLength(a3) != 40)
    {
      __FigNeroPlayServerCreate_block_invoke_2_cold_1(&destination);
      goto LABEL_22;
    }

    destination = CMBlockBufferCopyDataBytes(a3, 0, 0x28uLL, &__s1);
    if (destination)
    {
      goto LABEL_22;
    }

    if (memcmp(&__s1, (v5 + 56), 0x28uLL))
    {
      v13 = *(v5 + 48);
      if (v13)
      {
        destination = AudioUnitSetProperty(v13, 8u, 1u, 0, &__s1, 0x28u);
        if (destination)
        {
          goto LABEL_22;
        }
      }

      v14 = v28;
      *(v5 + 56) = __s1;
      *(v5 + 72) = v14;
      *(v5 + 88) = v29;
    }

    *(v5 + 176) = *(v5 + 56);
    if (*(v5 + 48))
    {
      v23 = _FigNeroPlayServerCopyAudioProperty();
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(v12, @"PreferredAudioChannelLayout", v23);
        CFRelease(v24);
      }

      v25 = _FigNeroPlayServerCopyAudioProperty();
      if (v25)
      {
        v26 = v25;
        CFDictionarySetValue(v12, @"DefaultAudioChannelLayout", v25);
        CFRelease(v26);
      }
    }

LABEL_22:
    v15 = CFNumberCreate(v10, kCFNumberSInt32Type, &destination);
    CFDictionarySetValue(v12, @"Error", v15);
    CFRelease(v15);
    destination = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
    CFRelease(v12);
    if (!destination)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (a2 != 1936418167)
  {
    if (a2 == 1937010544)
    {
      _FigNeroPlayServerStopAudio(v5);
    }

    goto LABEL_39;
  }

  if (!FigCreateBlockBufferCopyingMemoryBlock())
  {
LABEL_39:
    FigCreateBlockBufferCopyingMemoryBlock();
  }

LABEL_40:
  (*(a4 + 16))(a4);
}

uint64_t FigNeroPlayServerSetOctaviaSender(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != a2)
  {
    *(a1 + 24) = a2;
    if (a2)
    {
      block[5] = v2;
      block[6] = v3;
      v4 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigNeroPlayServerSetOctaviaSender_block_invoke;
      block[3] = &__block_descriptor_tmp_5_4;
      block[4] = a1;
      dispatch_async(v4, block);
    }
  }

  return 0;
}

double _FigNeroPlayServerInit(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
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

void _FigNeroPlayServerFinalize(uint64_t a1)
{
  NeroTransportUnregisterObject();
  v2 = *(a1 + 48);
  if (v2)
  {
    AudioOutputUnitStop(v2);
    AudioUnitUninitialize(*(a1 + 48));
    AudioComponentInstanceDispose(*(a1 + 48));
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    CFRelease(v3);
  }

  free(*(a1 + 224));
  v4 = *(a1 + 264);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 256);
  if (v5)
  {
    CFRelease(v5);
  }

  free(*(a1 + 208));
  v6 = *(a1 + 112);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 112) = 0;
  }

  _FigNeroPlayServerDrainQueue(*(a1 + 96), 0);
  v7 = *(a1 + 96);
  if (v7)
  {
    CFRelease(v7);
  }

  _FigNeroPlayServerDrainQueue(*(a1 + 104), 0);
  v8 = *(a1 + 104);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 16) = 0;
  }
}

uint64_t _FigNeroPlayServerDrainQueue(opaqueCMSimpleQueue *a1, CMTimeValue *a2)
{
  if (!a1 || (v4 = CMSimpleQueueDequeue(a1)) == 0)
  {
    value = 0;
    v11 = 0;
    v6 = 0;
    if (!a2)
    {
      return v6;
    }

LABEL_8:
    *a2 = value;
    a2[1] = v11;
    return v6;
  }

  v5 = v4;
  v6 = 0;
  do
  {
    DataBuffer = CMSampleBufferGetDataBuffer(v5);
    v6 += CMBlockBufferGetDataLength(DataBuffer);
    CMSampleBufferGetOutputPresentationTimeStamp(&v15, v5);
    value = v15.value;
    CMSampleBufferGetPresentationTimeStamp(&v14, v5);
    v9 = v14.value;
    CMSampleBufferGetDuration(&v13, v5);
    v10 = v13.value;
    CFRelease(v5);
    v5 = CMSimpleQueueDequeue(a1);
  }

  while (v5);
  v11 = v10 + v9;
  if (a2)
  {
    goto LABEL_8;
  }

  return v6;
}

uint64_t _FigNeroPlayServerRenderProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v7) = *(a1 + 80) * a5;
  v8 = *(a6 + 16);
  if (*(a1 + 184))
  {
    dispatch_semaphore_signal(*(a1 + 192));
    bzero(v8, v7);
    *(a1 + 184) = 0;
  }

  else if (v7 >= 1)
  {
    v11 = (a1 + 112);
    v10 = *(a1 + 112);
    do
    {
      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      v12 = *(a1 + 80);
      if (v10 && (DataBuffer = CMSampleBufferGetDataBuffer(v10)) != 0 && !CMBlockBufferGetDataPointer(DataBuffer, *(a1 + 120), &lengthAtOffsetOut, 0, &dataPointerOut))
      {
        CMSampleBufferGetPresentationTimeStamp(&v30, *(a1 + 112));
        v17 = *(a1 + 120);
        v18 = v17 / v12 + v30.value;
        v19 = *(a1 + 200);
        if (v19 >= v18)
        {
          if (v19 <= v18)
          {
            LODWORD(v14) = 0;
          }

          else if (*(a1 + 64) == 1667326771)
          {
            LODWORD(v14) = 0;
            *(a1 + 200) = v18;
          }

          else
          {
            LODWORD(v14) = 0;
            v23 = (v12 * (v19 - v18));
            v24 = lengthAtOffsetOut;
            if (lengthAtOffsetOut >= v23)
            {
              v23 = v23;
            }

            else
            {
              v23 = lengthAtOffsetOut;
            }

            v25 = &dataPointerOut[v23];
            *(a1 + 120) = v17 + v23;
            lengthAtOffsetOut = v24 - v23;
            dataPointerOut = v25;
          }

          v22 = v7;
          v21 = v8;
        }

        else
        {
          v20 = v12 * (v18 - v19);
          if (v20 >= v7)
          {
            v14 = v7;
          }

          else
          {
            v14 = v20;
          }

          bzero(v8, v14);
          v21 = &v8[v14];
          v22 = v7 - v14;
          *(a1 + 200) += v14 / v12;
        }

        LODWORD(v15) = 0;
        v26 = lengthAtOffsetOut;
        if (v22 >= 1 && lengthAtOffsetOut)
        {
          if (lengthAtOffsetOut <= v22)
          {
            v15 = lengthAtOffsetOut;
          }

          else
          {
            v15 = v22;
          }

          memcpy(v21, dataPointerOut, v15);
          *(a1 + 120) += v15;
          v26 -= v15;
          lengthAtOffsetOut = v26;
          *(a1 + 200) += v15 / v12;
        }

        if (!v26)
        {
          v27 = *(a1 + 112);
          v28 = mach_absolute_time();
          CMTimeMake(&v29, v28, 1);
          CMSampleBufferSetOutputPresentationTimeStamp(v27, &v29);
          if (CMSimpleQueueEnqueue(*(a1 + 104), *(a1 + 112)) && *v11)
          {
            CFRelease(*v11);
          }

          *v11 = 0;
          *(a1 + 120) = 0;
        }
      }

      else
      {
        LODWORD(v14) = 0;
        LODWORD(v15) = 0;
      }

      v16 = (v15 + v14);
      v7 = (v7 - v16);
      if (!v7)
      {
        break;
      }

      v8 += v16;
      v10 = *v11;
      if (!*v11)
      {
        v10 = CMSimpleQueueDequeue(*(a1 + 96));
        *(a1 + 112) = v10;
        if (!v10)
        {
          if (v7 >= 1)
          {
            bzero(v8, v7);
            *(a1 + 200) += v7 / *(a1 + 80);
          }

          return 0;
        }

        *(a1 + 120) = 0;
      }
    }

    while (v7 > 0);
  }

  return 0;
}

uint64_t _FigNeroPlayServerStopAudio(uint64_t result)
{
  if (*(result + 248))
  {
    v1 = result;
    *(result + 248) = 0;
    result = *(result + 48);
    if (result)
    {
      result = AudioOutputUnitStop(result);
      if (!result)
      {
        result = AudioUnitUninitialize(*(v1 + 48));
        if (!result)
        {
          DataBuffer = CMSampleBufferGetDataBuffer(*(v1 + 112));
          CMBlockBufferGetDataLength(DataBuffer);
          v3 = *(v1 + 112);
          if (v3)
          {
            CFRelease(v3);
            *(v1 + 112) = 0;
          }

          *(v1 + 120) = 0;
          *(v1 + 200) = 0;
          _FigNeroPlayServerDrainQueue(*(v1 + 104), 0);
          v4 = *(v1 + 96);

          return _FigNeroPlayServerDrainQueue(v4, 0);
        }
      }
    }
  }

  return result;
}

uint64_t _FigNeroPlayServerUpdateDesiredOctaviaSampleRate(uint64_t result)
{
  if (*(result + 128) >= 1)
  {
    v1 = result;
    v2 = *(result + 136);
    result = FigHostTimeToNanoseconds();
    v3 = *(v1 + 56);
    v4 = *(v1 + 152) - v2 + (result * v3) / -1000000000;
    v5 = *(v1 + 164) - v4;
    if (v5 < 0)
    {
      v5 = v4 - *(v1 + 164);
    }

    if (v5 < 0x3E9)
    {
      *(v1 + 172) = 0;
      v7 = *(v1 + 168) - v4;
      if (v7 < 0)
      {
        v7 = v4 - *(v1 + 168);
      }

      if (v7 >= 0x12D)
      {
        *(v1 + 176) = v3 + (*(v1 + 160) - v4) / 300.0;
        *(v1 + 168) = v4;
      }

      *(v1 + 164) = v4;
    }

    else
    {
      v6 = *(v1 + 172);
      *(v1 + 172) = v6 + 1;
      if (v6 >= 10)
      {
        *(v1 + 160) = v4;
        *(v1 + 164) = v4;
        *(v1 + 168) = v4;
        *(v1 + 172) = 0;
        if (v4 <= 1999)
        {
          *(v1 + 160) = 2000;
        }
      }
    }
  }

  return result;
}

uint64_t wvmHeaderCallback(void *a1, char *a2, unsigned __int8 *a3, double *a4)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a3 = 0;
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v9 = *a2;
    if ((v9 & 0x80000000) != 0)
    {
      if (!__maskrune(v9, 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(v8 + 4 * v9 + 60) & 0x4000) == 0)
    {
      break;
    }

    if (!*a2)
    {
      break;
    }

    v45 = ++a2;
  }

  if (strncasecmp("X-TIMESTAMP-MAP", a2, 0xFuLL))
  {
    return 0;
  }

  v11 = (a2 + 15);
  do
  {
    v45 = v11;
    v12 = *v11;
    if ((v12 & 0x80000000) != 0)
    {
      v13 = __maskrune(v12, 0x4000uLL);
    }

    else
    {
      v13 = *(v8 + 4 * v12 + 60) & 0x4000;
    }

    ++v11;
  }

  while (v13);
  v14 = *(v11 - 1);
  if (v14 != 61 && v14 != 58)
  {
    return 0;
  }

  v44 = 0.0;
  v15 = *(v11 - 1) == 61 ? 58 : 61;
  v45 = v11;
  LOBYTE(v16) = *v11;
  if (!*v11)
  {
    return 0;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_23:
  while (1)
  {
    v20 = (v16 & 0x80) != 0 ? __maskrune(v16, 0x4000uLL) : *(v8 + 4 * v16 + 60) & 0x4000;
    v21 = v45;
    if (!v20)
    {
      break;
    }

    ++v45;
    LOBYTE(v16) = v21[1];
  }

  if (!strncasecmp(v45, "LOCAL", 5uLL))
  {
    v28 = (v21 + 5);
    do
    {
      v45 = v28;
      v29 = *v28;
      if ((v29 & 0x80000000) != 0)
      {
        v30 = __maskrune(v29, 0x4000uLL);
      }

      else
      {
        v30 = *(v8 + 4 * v29 + 60) & 0x4000;
      }

      v28 = (v45 + 1);
    }

    while (v30);
    if (*v45 == v15)
    {
      v43.value = 0;
      do
      {
        while (1)
        {
          v31 = *++v45;
          if ((v31 & 0x80000000) != 0)
          {
            break;
          }

          if ((*(v8 + 4 * v31 + 60) & 0x4000) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      while (__maskrune(v31, 0x4000uLL));
LABEL_52:
      v43.value = strlen(v45);
      result = FigWebVTTReadTime(&v45, &v43, &v44, 0, 0);
      if (result)
      {
        return result;
      }

      v19 = 1;
    }
  }

  else if (!strncasecmp(v21, "MPEGTS", 6uLL))
  {
    v22 = (v21 + 6);
    do
    {
      v45 = v22;
      v23 = *v22;
      if ((v23 & 0x80000000) != 0)
      {
        v24 = __maskrune(v23, 0x4000uLL);
      }

      else
      {
        v24 = *(v8 + 4 * v23 + 60) & 0x4000;
      }

      v25 = v45;
      v22 = (v45 + 1);
    }

    while (v24);
    if (*v45 == v15)
    {
      do
      {
        v45 = v25 + 1;
        v26 = v25[1];
        if ((v26 & 0x80000000) != 0)
        {
          v27 = __maskrune(v26, 0x4000uLL);
        }

        else
        {
          v27 = *(v8 + 4 * v26 + 60) & 0x4000;
        }

        v25 = v45;
      }

      while (v27);
      v17 = strtoull(v45, 0, 10);
      v18 = 1;
    }
  }

  for (i = v45; *i++; v45 = i)
  {
    if (*(i - 1) == 44)
    {
      v45 = i;
      v16 = *i;
      if (v16)
      {
        goto LABEL_23;
      }

      break;
    }
  }

  result = 0;
  if (v19 && v18)
  {
    Seconds = v17 / 90000.0 - v44;
    memset(&v43, 0, sizeof(v43));
    if (Seconds >= 0.0)
    {
      v34 = 0.00000555555556;
    }

    else
    {
      v34 = -0.00000555555556;
    }

    CMTimeMakeWithSeconds(&v43, Seconds + v34, 90000);
    memset(&v42, 0, sizeof(v42));
    v35 = *(DerivedStorage + 112);
    if (v35 >= 0.0)
    {
      v36 = 0.00000555555556;
    }

    else
    {
      v36 = -0.00000555555556;
    }

    CMTimeMakeWithSeconds(&v42, v35 + v36, 90000);
    memset(&v41, 0, sizeof(v41));
    time1 = v42;
    time2 = v43;
    fmi_CalculateMPEG2WrapForTime(&time1, &time2, &v41);
    time1 = v41;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      time2 = v43;
      v38 = v41;
      CMTimeAdd(&time1, &time2, &v38);
      v43 = time1;
      if (Seconds != *(DerivedStorage + 120))
      {
        *(DerivedStorage + 120) = Seconds;
      }

      time1 = v43;
      Seconds = CMTimeGetSeconds(&time1);
    }

    if (Seconds != *(DerivedStorage + 112))
    {
      *a3 = 1;
      *a4 = Seconds;
      *(DerivedStorage + 112) = Seconds;
      if ((*(DerivedStorage + 156) & 0x1D) == 1)
      {
        v37 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 168) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 184) = *(v37 + 16);
      }
    }

    return 0;
  }

  return result;
}

uint64_t wvmSampleCallback(uint64_t a1, uint64_t a2)
{
  sbuf = 0;
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960CC0];
  v32 = **&MEMORY[0x1E6960CC0];
  v31 = v32;
  if (!a2)
  {
    goto LABEL_43;
  }

  v6 = DerivedStorage;
  FormatCallback = WebVTTGetSamplePTS(a2, &v32);
  if (FormatCallback)
  {
    goto LABEL_48;
  }

  if ((v32.flags & 0x1D) == 1)
  {
    if ((*(v6 + 180) & 0x1D) != 1)
    {
      if ((*(v6 + 156) & 0x1D) == 1)
      {
        lhs = *(v6 + 144);
        rhs = v32;
        fmi_CalculateMPEG2WrapForTime(&lhs, &rhs, &v36);
        *(v6 + 168) = *&v36.value;
        epoch = v36.epoch;
      }

      else
      {
        *(v6 + 168) = *v5;
        epoch = *(v5 + 16);
      }

      *(v6 + 184) = epoch;
    }

    lhs = v32;
    rhs = *(v6 + 168);
    CMTimeAdd(&v36, &lhs, &rhs);
    v32 = v36;
    v9 = v36.epoch;
    *(v6 + 144) = *&v36.value;
    *(v6 + 160) = v9;
    v31 = *(v6 + 168);
  }

  v10 = *(v6 + 104);
  v36 = v31;
  v11 = WebVTTCreateSampleBufferFromSample(v10, a2, &v36, &sbuf);
  v12 = sbuf;
  if (!v11 && sbuf)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    if (!FormatDescription)
    {
      v11 = 4294951255;
      goto LABEL_44;
    }

    v14 = FormatDescription;
    if (!FigCFEqual())
    {
      v15 = *(v6 + 72);
      *(v6 + 72) = v14;
      CFRetain(v14);
      if (v15)
      {
        CFRelease(v15);
        FormatCallback = wvmMakeFormatCallback(a1, v6);
        if (FormatCallback)
        {
          goto LABEL_48;
        }
      }

      else
      {
        FormatCallback = wvmMakeFormatCallback(a1, v6);
        if (FormatCallback)
        {
          goto LABEL_48;
        }

        v22 = *(v6 + 88);
        if (v22)
        {
          v23 = *(v6 + 24);
          *(v6 + 24) = 0;
          if (v23 >= 1)
          {
            v24 = v23;
            do
            {
              FigSimpleMutexUnlock();
              --v24;
            }

            while (v24);
            v22 = *(v6 + 88);
          }

          v22(a1, *(v6 + 96));
          do
          {
            FigSimpleMutexLock();
            v25 = *(v6 + 24) + 1;
            *(v6 + 24) = v25;
          }

          while (v25 < v23);
          if (*(v6 + 8) || *(v6 + 11))
          {
LABEL_42:
            v11 = 4294951251;
LABEL_44:
            v12 = sbuf;
            goto LABEL_45;
          }
        }
      }
    }

    v16 = sbuf;
    FigManifoldGetFigBaseObject(a1);
    v17 = CMBaseObjectGetDerivedStorage();
    if (*(v17 + 8))
    {
      v11 = 4294954511;
      goto LABEL_44;
    }

    v18 = v17;
    v20 = (v17 + 40);
    v19 = *(v17 + 40);
    if (!v19)
    {
      goto LABEL_43;
    }

    if (!*(v17 + 128))
    {
      goto LABEL_21;
    }

    FormatCallback = wvmMakeFormatCallback(a1, v17);
    if (!FormatCallback)
    {
      v19 = *v20;
      if (!*v20)
      {
        v21 = 0;
LABEL_34:
        v26 = *(v18 + 56);
        v27 = *(v18 + 24);
        *(v18 + 24) = 0;
        if (v27 >= 1)
        {
          v28 = v27;
          do
          {
            FigSimpleMutexUnlock();
            --v28;
          }

          while (v28);
        }

        v11 = v21(a1, *(v18 + 64), v26, 0, 0, v16);
        do
        {
          FigSimpleMutexLock();
          v29 = *(v18 + 24) + 1;
          *(v18 + 24) = v29;
        }

        while (v29 < v27);
        if (v11)
        {
          goto LABEL_44;
        }

        if (*(v18 + 8) || *(v18 + 11))
        {
          goto LABEL_42;
        }

LABEL_43:
        v11 = 0;
        goto LABEL_44;
      }

LABEL_21:
      v21 = v19;
      goto LABEL_34;
    }

LABEL_48:
    v11 = FormatCallback;
    goto LABEL_44;
  }

LABEL_45:
  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t wvmInvalidate(const void *a1)
{
  CFRetain(a1);
  wvmInvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t wvmFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  wvmInvalidateGuts(a1);
  WebVTTParserDestroy(*(DerivedStorage + 104));
  *(DerivedStorage + 104) = 0;
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 136) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 72);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 72) = 0;
  }

  result = *(DerivedStorage + 16);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  return result;
}

__CFString *wvmCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"FigWebVTTManifold :");
  }

  return v1;
}

uint64_t wvmSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 8))
  {
    wvmSetProperty(&v12);
    goto LABEL_12;
  }

  if (!CFEqual(a2, @"FMFD_HintForStartTime"))
  {
    value_low = 4294954512;
    goto LABEL_8;
  }

  if (!a3 || (v6 = CFGetTypeID(a3), v6 != CFDictionaryGetTypeID()))
  {
    wvmSetProperty(&v12);
LABEL_12:
    value_low = LODWORD(v12.value);
    goto LABEL_8;
  }

  CMTimeMakeFromDictionary(&v12, a3);
  value = v12.value;
  flags = v12.flags;
  timescale = v12.timescale;
  if ((v12.flags & 0x1D) != 1)
  {
    wvmSetProperty(&v12);
    goto LABEL_12;
  }

  value_low = 0;
  epoch = v12.epoch;
  *(DerivedStorage + 144) = value;
  *(DerivedStorage + 152) = timescale;
  *(DerivedStorage + 156) = flags;
  *(DerivedStorage + 160) = epoch;
  v10 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 168) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 184) = *(v10 + 16);
LABEL_8:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t wvmInvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v3 + 1;
  if (!*(DerivedStorage + 8))
  {
    *(DerivedStorage + 8) = 1;
    wvmEndAllTracks(a1, 4294954511);
    v3 = *(DerivedStorage + 24) - 1;
  }

  *(DerivedStorage + 24) = v3;

  return FigSimpleMutexUnlock();
}

void *wvmEndAllTracks(uint64_t a1, uint64_t a2)
{
  FigManifoldGetFigBaseObject(a1);
  result = CMBaseObjectGetDerivedStorage();
  v5 = result[6];
  if (v5)
  {
    v6 = result;
    result[6] = 0;
    v7 = result[7];
    v8 = result[3];
    result[3] = 0;
    if (v8 >= 1)
    {
      v9 = v8;
      do
      {
        FigSimpleMutexUnlock();
        --v9;
      }

      while (v9);
    }

    v5(a1, *(v6 + 16), v7, a2);
    do
    {
      result = FigSimpleMutexLock();
      v10 = v6[3] + 1;
      v6[3] = v10;
    }

    while (v10 < v8);
  }

  return result;
}

uint64_t wvmManifoldInjectData(const void *a1, uint64_t a2, char a3, void *a4)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a4)
  {
    wvmManifoldInjectData(&v20);
    return v20;
  }

  v8 = DerivedStorage;
  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  v9 = *(v8 + 24);
  *(v8 + 24) = v9 + 1;
  if (*(v8 + 8))
  {
    wvmManifoldInjectData(&v20);
LABEL_36:
    v12 = v20;
    goto LABEL_31;
  }

  if (*(v8 + 10))
  {
    wvmManifoldInjectData(&v20);
    goto LABEL_36;
  }

  if (!*(v8 + 9))
  {
    v10 = *(v8 + 80);
    if (v10)
    {
      *(v8 + 24) = 0;
      if ((v9 & 0x8000000000000000) == 0)
      {
        v11 = v9 + 1;
        do
        {
          FigSimpleMutexUnlock();
          --v11;
        }

        while (v11);
        v10 = *(v8 + 80);
      }

      v12 = v10(a1, *(v8 + 96), 1935832172, *(v8 + 64));
      do
      {
        FigSimpleMutexLock();
        v13 = *(v8 + 24);
        *(v8 + 24) = v13 + 1;
      }

      while (v13 < v9);
      if (v12)
      {
        goto LABEL_30;
      }

      if (*(v8 + 8) || *(v8 + 11))
      {
        v12 = 4294951251;
        goto LABEL_30;
      }

      *(v8 + 9) = 1;
    }
  }

  v14 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
  if (!FigCFEqual())
  {
    wvmManifoldInjectData(a1, v8, v14, (v8 + 136));
  }

  if (!CMBlockBufferGetDataLength(a4))
  {
    LODWORD(v12) = 0;
    if ((a3 & 2) != 0)
    {
LABEL_23:
      if (!v12)
      {
        WebVTTParserFlush(*(v8 + 104), 0, 1);
      }
    }

LABEL_25:
    if (v12 == -16045)
    {
      v12 = 0;
    }

    else
    {
      v12 = v12;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_30;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(a4, 0, 0);
  v16 = a4;
  if (IsRangeContiguous)
  {
LABEL_22:
    *(v8 + 10) = 1;
    LODWORD(v12) = WebVTTParserParseBlockBuffer(*(v8 + 104), v16);
    if ((a3 & 2) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a4, *MEMORY[0x1E695E480], 0, 0, 0, 0, &cf);
  if (!Contiguous)
  {
    v16 = cf;
    goto LABEL_22;
  }

  v12 = Contiguous;
LABEL_30:
  *(v8 + 10) = 0;
LABEL_31:
  --*(v8 + 24);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return v12;
}

uint64_t wvmNoteStreamEnd(const void *a1, uint64_t a2)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 8))
  {
    wvmNoteStreamEnd(&v7);
    v5 = v7;
  }

  else
  {
    if (!*(DerivedStorage + 10))
    {
      WebVTTParserFlush(*(DerivedStorage + 104), 1, 0);
    }

    *(DerivedStorage + 11) = 1;
    wvmEndAllTracks(a1, a2);
    v5 = 0;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v5;
}

uint64_t wvmMakeFormatCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (!v2)
  {
    return 0;
  }

  v5 = *(a2 + 56);
  *(a2 + 128) = 0;
  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v6 >= 1)
  {
    v7 = v6;
    do
    {
      FigSimpleMutexUnlock();
      --v7;
    }

    while (v7);
  }

  v8 = v2(a1, *(a2 + 64), v5, *(a2 + 72), 0);
  do
  {
    FigSimpleMutexLock();
    v9 = *(a2 + 24) + 1;
    *(a2 + 24) = v9;
  }

  while (v9 < v6);
  if (!v8)
  {
    if (*(a2 + 8) || *(a2 + 11))
    {
      return 4294951251;
    }

    return 0;
  }

  return v8;
}

uint64_t FigStreamingPlayerCombinedVideoDestination_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamingPlayerCombinedVideoDestinationID = result;
  return result;
}

const __CFArray *FigStreamingPlayerCombinedVideoDestinationReevaluateCanSendMetadataToFVT(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    result = *(a1 + 24);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    result = FPSupport_fvtSupportsMetadataTrack(ValueAtIndex);
    if (result)
    {
      *(a1 + 32) = 1;
      return result;
    }
  }

  return result;
}

const __CFArray *FigStreamingPlayerCombinedVideoDestinationGetFVTCount(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

CFTypeRef FigStreamingPlayerCombinedVideoDestinationCopyFVTs(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationContainsBufferDeliveryFVR(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v2++);
    if (fscpd_isFVTForBufferDelivery(ValueAtIndex))
    {
      return 1;
    }
  }

  return 0;
}

CFTypeRef fscpd_isFVTForBufferDelivery(uint64_t a1)
{
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  CMBaseObject = FigVideoTargetGetCMBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  v4(CMBaseObject, @"VideoReceiver", AllocatorForMedia, &cf);
  v5 = cf;
  if (cf)
  {
    v8 = 0;
    v6 = *(*(CMBaseObjectGetVTable() + 24) + 136);
    if (v6)
    {
      v6(v5, &v8);
      v5 = ((v8 >> 1) & 1);
    }

    else
    {
      v5 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v5;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationCreateCombinedCapability(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  v5 = 0;
  if (!v2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v2); v5 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    if (fscpd_isFVTForBufferDelivery(ValueAtIndex))
    {
      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v5;
    if (v2)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v8 = 0;
  v9 = 0;
  v10 = *MEMORY[0x1E6963150];
  v11 = *(MEMORY[0x1E6963150] + 8);
  v33 = Mutable;
  if (!Mutable)
  {
    goto LABEL_11;
  }

LABEL_10:
  for (j = CFArrayGetCount(Mutable); v9 < j; j = 0)
  {
    v13 = CFArrayGetValueAtIndex(Mutable, v9);
    theArray = 0;
    v14 = FigGetAllocatorForMedia();
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v15)
    {
      v29 = 0;
      v31 = 4294954514;
      goto LABEL_47;
    }

    v16 = v15(v13, v14, &theArray);
    if (v16)
    {
      v31 = v16;
      v29 = 0;
      goto LABEL_47;
    }

    if (theArray)
    {
      if (CFArrayGetCount(theArray))
      {
        v17 = theArray;
        v34 = v9;
        v35 = v8;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        else
        {
          Count = 0;
        }

        v19 = FigGetAllocatorForMedia();
        v20 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
        if (v20 && Count >= 1)
        {
          for (k = 0; k != Count; ++k)
          {
            v22 = CFArrayGetValueAtIndex(v17, k);
            CountOfDataChannels = FigDataChannelGroupGetCountOfDataChannels(v22);
            if (CountOfDataChannels >= 1)
            {
              v24 = CountOfDataChannels;
              v25 = 0;
              while (1)
              {
                DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v22, v25);
                *&v38.category = v10;
                v38.value = v11;
                if (CMTagCollectionContainsTag(DataChannelByIndex, v38))
                {
                  break;
                }

                if (v24 == ++v25)
                {
                  goto LABEL_31;
                }
              }

              if (DataChannelByIndex)
              {
                v27 = CFRetain(DataChannelByIndex);
                if (v27)
                {
                  v28 = v27;
                  CFArrayAppendValue(v20, v27);
                  CFRelease(v28);
                }
              }
            }

LABEL_31:
            ;
          }
        }

        if (v20)
        {
          v29 = v20;
          CFArrayGetCount(v20);
          Mutable = v33;
          v9 = v34;
          v8 = v35;
          if (v35)
          {
            if (CFArrayGetCount(v29) && !FigCFEqual())
            {
              FigStreamingPlayerCombinedVideoDestinationCreateCombinedCapability_cold_1(&v37);
              v31 = v37;
              goto LABEL_47;
            }
          }

          else
          {
            v8 = CFRetain(v29);
          }

          CFRelease(v29);
        }

        else
        {
          Mutable = v33;
          v9 = v34;
          v8 = v35;
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    ++v9;
    if (Mutable)
    {
      goto LABEL_10;
    }

LABEL_11:
    ;
  }

  v29 = 0;
  v31 = 0;
  if (a2)
  {
    *a2 = v8;
    v8 = 0;
  }

LABEL_47:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v31;
}

double FigStreamingPlayerCombinedVideoDestinationGetMaxRefreshRate(uint64_t a1)
{
  v2 = 0;
  v20 = **&MEMORY[0x1E6960C88];
  v3 = 0.0;
  v4 = MEMORY[0x1E6960CC0];
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      return v3;
    }

    v15 = *v4;
    *&v19.value = *v4;
    v6 = *(v4 + 2);
    v19.epoch = v6;
    cf = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v2);
    AllocatorForMedia = FigGetAllocatorForMedia();
    CMBaseObject = FigVideoTargetGetCMBaseObject(ValueAtIndex);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v11 = v10(CMBaseObject, @"RefreshRate", AllocatorForMedia, &cf);
      v12 = cf;
      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = cf == 0;
      }

      if (v13)
      {
        goto LABEL_14;
      }

      FigCFDictionaryGetCMTimeIfPresent();
      time1 = v19;
      *&time2.value = v15;
      time2.epoch = v6;
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        goto LABEL_16;
      }

      time1 = v19;
      time2 = v20;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v20 = v19;
        time1 = v19;
        v3 = 1.0 / CMTimeGetSeconds(&time1);
      }
    }

    v12 = cf;
LABEL_14:
    if (v12)
    {
      CFRelease(v12);
    }

LABEL_16:
    ++v2;
  }
}

uint64_t FigStreamingPlayerCombinedVideoDestinationMaxDesiredPixelCountFromFVTs(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      return v3;
    }

    number = 0;
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v2);
    AllocatorForMedia = FigGetAllocatorForMedia();
    CMBaseObject = FigVideoTargetGetCMBaseObject(ValueAtIndex);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8(CMBaseObject, @"DesiredPixelCount", AllocatorForMedia, &number);
    v10 = number;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = number == 0;
    }

    if (!v11)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr <= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = valuePtr;
      }

LABEL_13:
      v10 = number;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    ++v2;
  }
}

uint64_t FigStreamingPlayerCombinedVideoDestinationSendFVTConfigAtHostTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    v34[0] = 0;
    cf[0] = 0;
    FigDataChannelConfigurationCopyLoggingIdentifier(a5, cf);
    AllocatorForMedia = FigGetAllocatorForMedia();
    Copy = FigDataChannelConfigurationCreateCopy(AllocatorForMedia, a5, v34);
    if (!Copy)
    {
      if (!a4)
      {
        goto LABEL_9;
      }

      v17 = v34[0];
      v18 = cf[0];
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v19)
      {
        goto LABEL_16;
      }

      Copy = v19(a4, ValueAtIndex, v17, v18, 100);
      if (!Copy)
      {
LABEL_9:
        if (!a3)
        {
          goto LABEL_12;
        }

        v20 = v34[0];
        v21 = cf[0];
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v22)
        {
          goto LABEL_16;
        }

        Copy = v22(a3, ValueAtIndex, 101, v20, v21);
        if (!Copy)
        {
LABEL_12:
          if (!a2)
          {
            goto LABEL_15;
          }

          v23 = v34[0];
          v24 = cf[0];
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v25)
          {
LABEL_16:
            v27 = 0;
            v26 = 4294954514;
            goto LABEL_17;
          }

          Copy = v25(a2, ValueAtIndex, 1, v23, v24);
          if (!Copy)
          {
LABEL_15:
            v26 = 0;
            v27 = v34[0];
            v34[0] = 0;
            goto LABEL_17;
          }
        }
      }
    }

    v26 = Copy;
    v27 = 0;
LABEL_17:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v34[0])
    {
      CFRelease(v34[0]);
    }

    if (v26)
    {
      goto LABEL_33;
    }

    if (*(a6 + 12))
    {
      *cf = *a6;
      v33 = *(a6 + 16);
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v30)
      {
LABEL_32:
        v26 = 4294954514;
LABEL_33:
        if (!v27)
        {
          return v26;
        }

        goto LABEL_34;
      }

      *v34 = *cf;
      v35 = v33;
      v29 = v30(ValueAtIndex, v27, v34);
      if (v29)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v28)
      {
        goto LABEL_32;
      }

      v29 = v28(ValueAtIndex, v27);
      if (v29)
      {
LABEL_37:
        v26 = v29;
        if (!v27)
        {
          return v26;
        }

LABEL_34:
        CFRelease(v27);
        return v26;
      }
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

  return 0;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 24), i);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  return 0;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationAddFVTNotificationListeners(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 24), i);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  return 0;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigStreamingPlayerCombinedVideoDestinationGetTypeID_sFigStreamingPlayerCombinedVideoDestinationRegisterOnce, FigStreamingPlayerCombinedVideoDestination_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    result = 0;
    *(v6 + 16) = v7;
    *a3 = v6;
  }

  else
  {
    FigStreamingPlayerCombinedVideoDestinationCreate_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t FigStreamingItemCombinedVideoDestination_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamingItemCombinedVideoDestinationID = result;
  return result;
}

uint64_t FigStreamingItemCombinedVideoDestinationSetVisualContexts(uint64_t a1, const void *a2)
{
  if (FigCFEqual())
  {
    return 0;
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

CFTypeRef FigStreamingItemCombinedVideoDestinationCopyVisualContexts(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

const __CFArray *FigStreamingItemCombinedVideoDestinationExpectCPUToReadVideo(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (CFArrayGetCount(result) > 0);
  }

  return result;
}

const __CFArray *FigStreamingItemCombinedVideoDestinationGetCountOfVisualContexts(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t FigStreamingItemCombinedVideoDestinationCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigStreamingItemCombinedVideoDestinationGetTypeID_sFigStreamingItemCombinedVideoDestinationRegisterOnce, FigStreamingItemCombinedVideoDestination_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    result = 0;
    *(v6 + 16) = v7;
    *a3 = v6;
  }

  else
  {
    FigStreamingItemCombinedVideoDestinationCreate_cold_1(&v9);
    return v9;
  }

  return result;
}

void *fscpd_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fscpd_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

CFStringRef fscpd_copyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v4 = *(a1 + 16);
  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return CFStringCreateWithFormat(v2, 0, @"[%p:%@] FVTs:%d", a1, v4, Count);
}

uint64_t fscid_init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void fscid_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

CFStringRef fscid_copyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v4 = *(a1 + 16);
  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return CFStringCreateWithFormat(v2, 0, @"[%p:%@] FVCs:%d", a1, v4, Count);
}

void FigAudioSessionTriggerAVAudioSessionReset(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x1E698D718] "defaultManager")];

  objc_autoreleasePoolPop(v2);
}

uint64_t FigAudioSessionCreateWithAVAudioSession(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = objc_autoreleasePoolPush();
  cf = 0;
  FigKTraceInit();
  if (!a2)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_6(v19);
LABEL_19:
    v16 = LODWORD(v19[0]);
    goto LABEL_22;
  }

  FigAudioSessionGetClassID();
  Key = CMDerivedObjectCreate();
  if (Key)
  {
    goto LABEL_16;
  }

  if (qword_1ED4CBA40 != -1)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_1();
  }

  Key = FigCFWeakReferenceTableAddValueAndGetKey();
  if (Key)
  {
LABEL_16:
    v16 = Key;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[16] = 0;
  v8 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[17] = v8;
  if (!v8)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_5(v19);
    goto LABEL_19;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = CMBaseObjectGetDerivedStorage();
  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_2();
  }

  if (audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    v11 = [*v10 getMXSessionProperty:*MEMORY[0x1E69AFD90] error:0];
    if (v11)
    {
      CFStringGetCString(v11, (v10 + 8), 96, 0x600u);
    }
  }

  objc_autoreleasePoolPop(v9);
  v12 = objc_autoreleasePoolPush();
  v13 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v15 = Mutable;
    FigAudioSessionGetMXNotificationTranslationInternal();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __audioSessionAVAudioSession_registerMXNotificationTranslationCallbacks_block_invoke;
    v19[3] = &__block_descriptor_48_e15_v24__0r_v8r_v16l;
    v19[4] = cf;
    v19[5] = v15;
    FigCFDictionaryApplyBlock();
    *(v13 + 104) = v15;
    objc_autoreleasePoolPop(v12);
LABEL_14:
    FigAudioSessionCreateWithAVAudioSession_cold_4(&cf, a3);
    v16 = 0;
    goto LABEL_15;
  }

  if (FigAudioSessionCreateWithAVAudioSession_cold_3(v12, v19, &v20))
  {
    goto LABEL_14;
  }

  v16 = v20;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_15:
  objc_autoreleasePoolPop(v5);
  return v16;
}

uint64_t FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  if (!a5)
  {
    FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_4(v15);
LABEL_10:
    a4 = 0;
    goto LABEL_12;
  }

  if (!a4)
  {
    FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_3(v15);
LABEL_12:
    v13 = LODWORD(v15[0]);
    goto LABEL_6;
  }

  if (!a2)
  {
    FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_2(v15);
    goto LABEL_10;
  }

  v11 = objc_alloc(MEMORY[0x1E698D710]);
  v12 = a3[1];
  v15[0] = *a3;
  v15[1] = v12;
  a4 = [v11 initSiblingSession:a2 auditToken:v15 clientIdentifier:a4];
  if (!a4)
  {
    FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_1(v15);
    goto LABEL_12;
  }

  v13 = FigAudioSessionCreateWithAVAudioSession(a1, a4, a5);
LABEL_6:

  objc_autoreleasePoolPop(v10);
  return v13;
}

uint64_t FigAudioSessionCreateWithAVAudioSessionSiblingForFigAudioSession(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  cf = 0;
  if (a2 && (v11 = *(CMBaseObjectGetVTable() + 16)) != 0)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = v12(a2, @"FAS_CoreSessionID", a1, &cf);
      v14 = cf;
      if (!v13)
      {
        UInt32 = FigCFNumberGetUInt32();
        v16 = a3[1];
        v18[0] = *a3;
        v18[1] = v16;
        v13 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(a1, UInt32, v18, a4, a5);
        v14 = cf;
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      v13 = 4294948071;
    }
  }

  else
  {
    v13 = 4294948075;
  }

  objc_autoreleasePoolPop(v10);
  return v13;
}

uint64_t FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(uint64_t a1, _OWORD *a2, void *a3, uint64_t *a4)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(a1, 0xFFFFFFFFLL, v6, a3, a4);
}

uint64_t FigAudioSessionCreateUsingAuxiliaryAVAudioSession(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  cf = 0;
  if (!a4)
  {
    FigAudioSessionCreateUsingAuxiliaryAVAudioSession_cold_2(v20);
LABEL_29:
    v16 = LODWORD(v20[0]);
    goto LABEL_21;
  }

  if (!a3)
  {
    FigAudioSessionCreateUsingAuxiliaryAVAudioSession_cold_1(v20);
    goto LABEL_29;
  }

  v9 = FigAudioSessionCreateWithAVAudioSession(a1, [MEMORY[0x1E698D710] auxiliarySession], &cf);
  if (v9)
  {
    v16 = v9;
    goto LABEL_21;
  }

  if (a2)
  {
    v10 = a2[1];
    v20[0] = *a2;
    v20[1] = v10;
    FigServer_GetClientPIDFromAuditToken();
    SInt32 = FigCFNumberCreateSInt32();
    v12 = cf;
    if (!cf)
    {
      goto LABEL_18;
    }

    v13 = *(CMBaseObjectGetVTable() + 16);
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = *(v13 + 56);
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v14(v12, *MEMORY[0x1E69AFDA8], SInt32);
    if (v15)
    {
      v16 = v15;
      if (!SInt32)
      {
        goto LABEL_21;
      }

LABEL_20:
      CFRelease(SInt32);
      goto LABEL_21;
    }
  }

  else
  {
    v12 = cf;
    if (!cf)
    {
      v16 = 4294948075;
      goto LABEL_26;
    }

    SInt32 = 0;
  }

  v17 = *(CMBaseObjectGetVTable() + 16);
  if (!v17)
  {
LABEL_18:
    v16 = 4294948075;
LABEL_19:
    if (!SInt32)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = *(v17 + 56);
  if (!v18)
  {
LABEL_23:
    v16 = 4294948071;
    if (SInt32)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v16 = v18(v12, *MEMORY[0x1E69AFD90], a3);
  if (v16)
  {
    goto LABEL_19;
  }

  *a4 = v12;
  cf = 0;
  if (SInt32)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  objc_autoreleasePoolPop(v8);
  return v16;
}

void audioSessionAVAudioSession_Finalize()
{
  v0 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryApplyBlock();
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:DerivedStorage[14] name:*MEMORY[0x1E698D6E8] object:*DerivedStorage];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:DerivedStorage[15] name:*MEMORY[0x1E698D5B0] object:*DerivedStorage];
  if (qword_1ED4CBA40 != -1)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_1();
  }

  FigCFWeakReferenceTableRemoveValue();
  v4 = DerivedStorage[18];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[18] = 0;
  }

  v5 = DerivedStorage[13];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[13] = 0;
  }

  DerivedStorage[14] = 0;
  DerivedStorage[15] = 0;
  v6 = DerivedStorage[17];
  if (v6)
  {
    dispatch_release(v6);
  }

  *DerivedStorage = 0;
  objc_autoreleasePoolPop(v0);
}

uint64_t audioSessionAVAudioSession_CopyResolvedConfigurationForProperty(uint64_t a1, void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  v8 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForResolvedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal(a2);
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForResolvedFigAudioSessionPropertyInternal && !audioSessionAVAudioSession_propertyIsInDenyList(MXSessionPropertyForResolvedFigAudioSessionPropertyInternal))
  {
    if (a1 && (v15 = *(CMBaseObjectGetVTable() + 16)) != 0)
    {
      v16 = *(v15 + 48);
      if (v16)
      {
        IsAvailable = v16(a1, MXSessionPropertyForResolvedFigAudioSessionPropertyInternal, a3, a4);
        goto LABEL_13;
      }

      v13 = 4294948071;
    }

    else
    {
      v13 = 4294948075;
    }
  }

  else if (FigCFEqual())
  {
    audioSessionAVAudioSession_CopyResolvedConfigurationForProperty_cold_1(a1, a4);
    v13 = 0;
  }

  else
  {
    if (FigCFEqual())
    {
      [*DerivedStorage sourceSessionID];
      UInt32 = FigCFNumberCreateUInt32();
LABEL_10:
      v13 = 0;
      *a4 = UInt32;
      goto LABEL_26;
    }

    if (FigCFEqual())
    {
      IsAvailable = audioSessionAVAudioSession_copyRoutingContext();
LABEL_13:
      v13 = IsAvailable;
      goto LABEL_26;
    }

    if (FigCFEqual())
    {
      v17 = [*DerivedStorage inputTimeObserver];
LABEL_24:
      UInt32 = v17;
      goto LABEL_10;
    }

    if (FigCFEqual())
    {
      v17 = [*DerivedStorage outputTimeObserver];
      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      v19 = a1;
      v20 = a3;
      v21 = 1836019574;
LABEL_35:
      IsAvailable = audioSessionAVAudioSession_copySpatializationCapabilities(v19, v20, v21, a4);
      goto LABEL_13;
    }

    if (FigCFEqual())
    {
      v19 = a1;
      v20 = a3;
      v21 = 1936684398;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
      IsAvailable = audioSessionAVAudioSession_copyNeroInformationDictionary(a1, a3, a4);
      goto LABEL_13;
    }

    if (FigCFEqual())
    {
      IsAvailable = audioSessionAVAudioSession_copyAudioDeviceIsAvailable(a1, a4);
      goto LABEL_13;
    }

    v13 = 4294948074;
  }

LABEL_26:
  if (*v11 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  objc_autoreleasePoolPop(v8);
  return v13;
}

uint64_t audioSessionAVAudioSession_CopyRequestedConfigurationForProperty(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForRequestedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(a2);
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForRequestedFigAudioSessionPropertyInternal && !audioSessionAVAudioSession_propertyIsInDenyList(MXSessionPropertyForRequestedFigAudioSessionPropertyInternal))
  {
    if (a1 && (v14 = *(CMBaseObjectGetVTable() + 16)) != 0)
    {
      v15 = *(v14 + 48);
      if (v15)
      {
        v13 = v15(a1, MXSessionPropertyForRequestedFigAudioSessionPropertyInternal, a3, a4);
      }

      else
      {
        v13 = 4294948071;
      }
    }

    else
    {
      v13 = 4294948075;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      [*DerivedStorage opaqueSessionID];
      UInt32 = FigCFNumberCreateUInt32();
LABEL_9:
      v13 = 0;
      *a4 = UInt32;
      goto LABEL_20;
    }

    if (FigCFEqual())
    {
      UInt32 = [*DerivedStorage category];
      if (UInt32)
      {
        UInt32 = CFRetain(UInt32);
      }

      goto LABEL_9;
    }

    v13 = 4294948074;
  }

LABEL_20:
  if (*v11 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  objc_autoreleasePoolPop(v8);
  return v13;
}

uint64_t audioSessionAVAudioSession_RequestConfigurationForProperty(uint64_t a1, void *key, uint64_t a3)
{
  MXSessionPropertyForRequestedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(key);
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (key)
    {
      CFHash(key);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForRequestedFigAudioSessionPropertyInternal)
  {
    if (a1 && (v8 = *(CMBaseObjectGetVTable() + 16)) != 0)
    {
      v9 = *(v8 + 56);
      if (v9)
      {
        v10 = v9(a1, MXSessionPropertyForRequestedFigAudioSessionPropertyInternal, a3);
      }

      else
      {
        v10 = 4294948071;
      }
    }

    else
    {
      v10 = 4294948075;
    }
  }

  else
  {
    v10 = 4294948074;
  }

  if (*v7 == 1)
  {
    if (key)
    {
      CFHash(key);
    }

    kdebug_trace();
  }

  return v10;
}

uint64_t audioSessionAVAudioSession_CopyCMSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294948075;
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    return 4294948075;
  }

  v9 = *(v8 + 48);
  if (!v9)
  {
    return 4294948071;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t audioSessionAVAudioSession_SetCMSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294948075;
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    return 4294948075;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    return 4294948071;
  }

  return v7(a1, a2, a3);
}

uint64_t audioSessionAVAudioSession_CopyMXSessionProperty(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = objc_autoreleasePoolPush();
  v12 = 0;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (audioSessionAVAudioSession_propertyIsInDenyList(a2))
  {
    fig_log_get_emitter();
LABEL_14:
    v10 = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_1();
  }

  if (!audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_2(&v13);
    v10 = v13;
    goto LABEL_19;
  }

  v9 = [*DerivedStorage getMXSessionProperty:a2 error:&v12];
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *a4 = v9;
  if (v12)
  {
    fig_log_get_emitter();
    [v12 code];
    goto LABEL_14;
  }

  v10 = 0;
LABEL_15:
  if (*v7 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

LABEL_19:
  objc_autoreleasePoolPop(v6);
  return v10;
}

uint64_t audioSessionAVAudioSession_SetMXSessionProperty(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (audioSessionAVAudioSession_propertyIsInDenyList(a2))
  {
    fig_log_get_emitter();
LABEL_12:
    v8 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_1();
  }

  if (!audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    audioSessionAVAudioSession_SetMXSessionProperty_cold_2(&v11);
    v8 = v11;
    goto LABEL_17;
  }

  [*DerivedStorage setMXSessionProperty:a2 value:a3 error:&v10];
  if (v10)
  {
    fig_log_get_emitter();
    [v10 code];
    goto LABEL_12;
  }

  v8 = 0;
LABEL_13:
  if (*v7 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

LABEL_17:
  objc_autoreleasePoolPop(v5);
  return v8;
}

uint64_t audioSessionAVAudioSession_Activate()
{
  v0 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  [*DerivedStorage setActive:1 withOptions:0x20000000 error:&v5];
  v3 = [v5 code];
  if (*v2 == 1)
  {
    kdebug_trace();
  }

  objc_autoreleasePoolPop(v0);
  return v3;
}

uint64_t audioSessionAVAudioSession_Deactivate()
{
  v0 = objc_autoreleasePoolPush();
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v5 = 0;
  if (FigCFDictionaryGetBooleanIfPresent())
  {
    [*DerivedStorage handleRemoteInterruption:0 postInterruptionNotification:v6 != 0 error:&v5];
  }

  else
  {
    [*DerivedStorage setActive:0 error:&v5];
  }

  v3 = [v5 code];
  if (*v2 == 1)
  {
    kdebug_trace();
  }

  objc_autoreleasePoolPop(v0);
  return v3;
}

uint64_t audioSessionAVAudioSession_IsRelatedSessionID(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = [*CMBaseObjectGetDerivedStorage() isRelatedSessionID:a2];
  objc_autoreleasePoolPop(v3);
  return v4;
}

uint64_t audioSessionAVAudioSession_SetMXSessionPropertiesAndCopyErrors(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  CFDictionaryGetKeysAndValues(a2, 0, 0);
  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_1();
  }

  v7 = audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe != 0;
  if (!audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    audioSessionAVAudioSession_SetMXSessionPropertiesAndCopyErrors_cold_2();
    v9 = 0;
    goto LABEL_57;
  }

  Count = FigCFDictionaryGetCount();
  v9 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(a2, v9, 0);
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
  if (!MutableCopy)
  {
LABEL_57:
    free(v9);
    goto LABEL_54;
  }

  v11 = MutableCopy;
  if (Count >= 1)
  {
    v12 = v9;
    do
    {
      v13 = *v12;
      if (audioSessionAVAudioSession_propertyIsInDenyList(*v12))
      {
        CFDictionaryRemoveValue(v11, v13);
      }

      ++v12;
      --Count;
    }

    while (Count);
  }

  v14 = FigCFDictionaryGetCount();
  if (v14 < 1)
  {
    v7 = 1;
  }

  else
  {
    v15 = v14;
    v16 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (*v9)
      {
        CFHash(*v9);
      }

      if (v15 != 1)
      {
        v17 = v9[1];
        if (v17)
        {
          CFHash(v17);
        }

        if (v15 >= 3)
        {
          v18 = v9[2];
          if (v18)
          {
            CFHash(v18);
          }
        }
      }

      kdebug_trace();
    }

    if (a3)
    {
      v19 = &v48;
    }

    else
    {
      v19 = 0;
    }

    v7 = [*DerivedStorage setMXProperties:v11 propertyErrors:v19];
    if (*v16 == 1)
    {
      if (v15 >= 4)
      {
        v20 = v9[3];
        if (v20)
        {
          CFHash(v20);
        }

        if (v15 != 4)
        {
          v21 = v9[4];
          if (v21)
          {
            CFHash(v21);
          }

          if (v15 >= 6)
          {
            v22 = v9[5];
            if (v22)
            {
              CFHash(v22);
            }
          }
        }
      }

      kdebug_trace();
    }

    if (a3)
    {
      v35 = v7;
      v36 = v11;
      v37 = v9;
      v38 = a3;
      v39 = v5;
      v23 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v24 = v48;
      v25 = [v48 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v45;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v45 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v44 + 1) + 8 * i);
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v30 = [v29 countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v41;
              do
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v41 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  [v23 setObject:objc_msgSend(v29 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v40 + 1) + 8 * j)), *(*(&v40 + 1) + 8 * j)}];
                }

                v31 = [v29 countByEnumeratingWithState:&v40 objects:v49 count:16];
              }

              while (v31);
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v26);
      }

      v5 = v39;
      *v38 = v23;
      v11 = v36;
      v9 = v37;
      v7 = v35;
    }
  }

  free(v9);
  CFRelease(v11);
LABEL_54:
  objc_autoreleasePoolPop(v5);
  return v7;
}

uint64_t audioSessionAVAudioSession_CopyMXSessionPropertiesAndErrors(uint64_t a1, const __CFArray *a2, void *a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_1();
  }

  if (audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    v10 = 0;
    if (MutableCopy)
    {
      goto LABEL_9;
    }

    while (v10 < 0)
    {
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v10);
        if (audioSessionAVAudioSession_propertyIsInDenyList(ValueAtIndex))
        {
          CFArrayRemoveValueAtIndex(MutableCopy, v10--);
        }

        ++v10;
        if (!MutableCopy)
        {
          break;
        }

LABEL_9:
        if (v10 >= CFArrayGetCount(MutableCopy))
        {
          Count = CFArrayGetCount(MutableCopy);
          v14 = Count;
          if (*MEMORY[0x1E695FF58] != 1)
          {
            goto LABEL_19;
          }

          if (Count >= 1)
          {
            v15 = CFArrayGetValueAtIndex(a2, 0);
            if (v15)
            {
              CFHash(v15);
            }

            if (v14 != 1)
            {
              v18 = CFArrayGetValueAtIndex(a2, 1);
              if (v18)
              {
                CFHash(v18);
              }

              if (v14 < 3)
              {
                v14 = 2;
              }

              else
              {
                v23 = CFArrayGetValueAtIndex(a2, 2);
                if (v23)
                {
                  CFHash(v23);
                }
              }
            }
          }

          goto LABEL_18;
        }
      }
    }

    v14 = 0;
    v13 = 0;
    if (*MEMORY[0x1E695FF58] == 1)
    {
LABEL_18:
      kdebug_trace();
    }

LABEL_19:
    v16 = [*DerivedStorage getMXProperties:a2 propertyErrors:{0, v13}];
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *a3 = v16;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (v14 >= 4)
      {
        v17 = CFArrayGetValueAtIndex(a2, 3);
        if (v17)
        {
          CFHash(v17);
        }

        if (v14 != 4)
        {
          v19 = CFArrayGetValueAtIndex(a2, 4);
          if (v19)
          {
            CFHash(v19);
          }

          if (v14 >= 6)
          {
            v20 = CFArrayGetValueAtIndex(a2, 5);
            if (v20)
            {
              CFHash(v20);
            }
          }
        }
      }

      kdebug_trace();
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    v21 = 0;
  }

  else
  {
    audioSessionAVAudioSession_CopyMXSessionPropertiesAndErrors_cold_2(&v24);
    v21 = v24;
  }

  objc_autoreleasePoolPop(v7);
  return v21;
}

uint64_t audioSessionAVAudioSession_propertyIsInDenyList(void *value)
{
  if (audioSessionAVAudioSession_propertyIsInDenyList_onceToken != -1)
  {
    audioSessionAVAudioSession_propertyIsInDenyList_cold_1();
  }

  v2 = audioSessionAVAudioSession_propertyIsInDenyList_denyList;

  return CFSetContainsValue(v2, value);
}

uint64_t audioSessionAVAudioSession_copyRoutingContext()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v1 = [*CMBaseObjectGetDerivedStorage() routingContextUID];
  if (v1)
  {
    v5 = *MEMORY[0x1E69AF350];
    v6[0] = v1;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    v2 = FigRoutingContextRemoteCopyContextForUUID();
  }

  else
  {
    audioSessionAVAudioSession_copyRoutingContext_cold_1(&v4);
    v2 = v4;
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t audioSessionAVAudioSession_copySpatializationCapabilities(uint64_t a1, const __CFAllocator *a2, uint64_t a3, __CFDictionary **a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = [*CMBaseObjectGetDerivedStorage() spatialPreferences:a3];
  if (!v8)
  {
    audioSessionAVAudioSession_copySpatializationCapabilities_cold_3(v30);
LABEL_26:
    v24 = v30[0];
    goto LABEL_23;
  }

  v9 = v8;
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    audioSessionAVAudioSession_copySpatializationCapabilities_cold_2(v30);
    goto LABEL_26;
  }

  v11 = Mutable;
  v12 = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    audioSessionAVAudioSession_copySpatializationCapabilities_cold_1(v30);
    v24 = v30[0];
    goto LABEL_29;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [v9 spatialAudioSources];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v26 + 1) + 8 * i) intValue];
        FigCFArrayAppendInt32();
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  if ([objc_msgSend(v9 "spatialAudioSources")] && objc_msgSend(v9, "prefersHeadTrackedSpatialization"))
  {
    FigCFArrayAppendInt32();
  }

  CFDictionarySetValue(v11, @"SpatialCapabilitiesKey_spatialAudioSources", v12);
  [v9 maximumSpatializableChannels];
  v18 = FigCFDictionarySetInt32();
  if (v18)
  {
    v24 = v18;
LABEL_29:
    CFRelease(v11);
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v19 = [v9 prefersLossyAudioSources];
  v20 = *MEMORY[0x1E695E4D0];
  v21 = *MEMORY[0x1E695E4C0];
  if (v19)
  {
    v22 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v22 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v11, @"SpatialCapabilitiesKey_prefersLossyAudioSources", v22);
  if ([v9 alwaysSpatialize])
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  CFDictionarySetValue(v11, @"SpatialCapabilitiesKey_alwaysSpatialize", v23);
  v24 = 0;
  *a4 = v11;
LABEL_22:
  CFRelease(v12);
LABEL_23:
  objc_autoreleasePoolPop(v7);
  return v24;
}

CFSetRef __audioSessionAVAudioSession_propertyIsInDenyList_block_invoke()
{
  values[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69AFDC0];
  values[0] = *MEMORY[0x1E69B03B8];
  values[1] = v0;
  result = CFSetCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9F8]);
  audioSessionAVAudioSession_propertyIsInDenyList_denyList = result;
  return result;
}

void __audioSessionAVAudioSession_canUseGenericPipe_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.coreaudio.mxsessionPropertyPipe", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v3);
      }

      else
      {
        Value = 0;
      }

      CFRelease(v3);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v1);
  }

  else
  {
    Value = 0;
  }

  audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe = Value;
}

void __audioSessionAVAudioSession_registerMXNotificationTranslationCallbacks_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = 0;
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __audioSessionAVAudioSession_registerMXNotificationTranslationCallbacks_block_invoke_2;
  v6[3] = &__block_descriptor_40_e51_v24__0__OpaqueFigAudioSession__8__NSNotification_16l;
  v6[4] = a3;
  audioSessionAVAudioSession_addAVAudioSessionObserverForNotification(v5, 2, a2, v6, &v7);
  if (v7)
  {
    CFDictionarySetValue(*(a1 + 40), a2, v7);
  }
}

void audioSessionAVAudioSession_addAVAudioSessionObserverForNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 128);
  v12 = *DerivedStorage;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __audioSessionAVAudioSession_addAVAudioSessionObserverForNotification_block_invoke;
  v14[3] = &unk_1E7495B00;
  v14[4] = a4;
  v14[5] = v11;
  v13 = [v12 addObserverForType:a2 name:a3 block:v14];
  if (a5)
  {
    *a5 = v13;
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t __audioSessionAVAudioSession_registerMXNotificationTranslationCallbacks_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  [a3 userInfo];

  return FigDispatchAsyncPostNotification();
}

uint64_t __audioSessionAVAudioSession_registerSpatialNotificationTranslationCallbacks_block_invoke()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void __audioSessionAVAudioSession_registerLossNotificationCallbacks_block_invoke()
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  FigServer_IsServerProcess();
  FigCFDictionarySetValue();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t FigCGRectEqualToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v8 = fabs(a2) != INFINITY;
  if (fabs(a1) == INFINITY || !v8)
  {
    v12 = fabs(a5) == INFINITY;
    return fabs(a6) == INFINITY || v12;
  }

  else
  {
    v9 = fabs(a6) != INFINITY;
    v10 = fabs(a5) == INFINITY || !v9;
    if (!v10 && (__figCGRectStandardize(&v17), __figCGRectStandardize(&v13), v17 == v13) && v18 == v14 && v19 == v15)
    {
      return v20 == v16;
    }

    else
    {
      return 0;
    }
  }
}

double *__figCGRectStandardize(double *result)
{
  v1 = result[2];
  if (v1 < 0.0 || result[3] < 0.0)
  {
    v2 = result[1];
    v3 = INFINITY;
    v4 = fabs(v2) != INFINITY;
    if (fabs(*result) == INFINITY || !v4)
    {
      v6 = 0.0;
      v1 = 0.0;
      v7 = INFINITY;
    }

    else
    {
      v8 = result[3];
      v9 = v1 + *result;
      if (v1 >= 0.0)
      {
        v7 = *result;
      }

      else
      {
        v1 = -v1;
        v7 = v9;
      }

      v6 = -v8;
      if (v8 < 0.0)
      {
        v3 = v2 + v8;
      }

      else
      {
        v6 = result[3];
        v3 = result[1];
      }
    }

    *result = v7;
    result[1] = v3;
    result[2] = v1;
    result[3] = v6;
  }

  return result;
}

__CFDictionary *FigCGSizeCreateDictionaryRepresentation(double a1, double a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  figCGAddSizeToDictionary(Mutable, a1, a2);
  v7.width = a1;
  v7.height = a2;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v7);
  if (!FigCFEqual())
  {
    FigCGSizeCreateDictionaryRepresentation_cold_1();
    if (!DictionaryRepresentation)
    {
      return Mutable;
    }

    goto LABEL_3;
  }

  if (DictionaryRepresentation)
  {
LABEL_3:
    CFRelease(DictionaryRepresentation);
  }

  return Mutable;
}

void figCGAddSizeToDictionary(__CFDictionary *a1, double a2, double a3)
{
  v7 = a2;
  v8 = a3;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &v7);
  v6 = CFNumberCreate(v4, kCFNumberCGFloatType, &v8);
  CFDictionaryAddValue(a1, @"Width", v5);
  CFDictionaryAddValue(a1, @"Height", v6);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t FigCGSizeMakeWithDictionaryRepresentation(CFDictionaryRef theDict, _OWORD *a2)
{
  v4 = 0;
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0uLL;
  v5 = &v9;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    result = CFDictionaryGetValue(theDict, *(&off_1E7495B60 + v4));
    if (!result)
    {
      break;
    }

    result = CFNumberGetValue(result, kCFNumberCGFloatType, v5);
    if (!result)
    {
      break;
    }

    v6 = 0;
    v5 = &v9 + 8;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      *a2 = v9;
      return 1;
    }
  }

  return result;
}

uint64_t FigCGRectMakeWithDictionaryRepresentation(CFDictionaryRef theDict, _OWORD *a2)
{
  v4 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  while (1)
  {
    result = CFDictionaryGetValue(theDict, *(&off_1E7495B70 + v4));
    if (!result)
    {
      break;
    }

    result = CFNumberGetValue(result, kCFNumberCGFloatType, &v7 + v4);
    if (!result)
    {
      break;
    }

    v4 += 8;
    if (v4 == 32)
    {
      v6 = v8;
      *a2 = v7;
      a2[1] = v6;
      return 1;
    }
  }

  return result;
}

uint64_t FigToolViewStart(uint64_t a1)
{
  if (*(a1 + 40))
  {
    FigToolViewStart_cold_1(&v6);
    return v6;
  }

  else
  {
    v5 = @"figtoolview.display";
    v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &v5, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = FigThreadCreate();
    if (!v3)
    {
      dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  return v3;
}

uint64_t ftvFramebufferThread(uint64_t a1)
{
  cf = 0;
  *(a1 + 48) = CFRunLoopGetCurrent();
  if (IOMobileFramebufferGetSecondaryDisplay())
  {
    goto LABEL_10;
  }

  VSyncRunLoopSource = IOMobileFramebufferGetVSyncRunLoopSource();
  if (VSyncRunLoopSource)
  {
    v3 = *MEMORY[0x1E695E8E0];
    CFRunLoopAddSource(*(a1 + 48), VSyncRunLoopSource, *MEMORY[0x1E695E8E0]);
    HotPlugRunLoopSource = IOMobileFramebufferGetHotPlugRunLoopSource();
    if (HotPlugRunLoopSource)
    {
      CFRunLoopAddSource(*(a1 + 48), HotPlugRunLoopSource, v3);
      if (!IOMobileFramebufferEnableHotPlugDetectNotifications())
      {
        v6 = 0;
        if (!IOMobileFramebufferGetDigitalOutState())
        {
          ftvFramebufferThread_cold_2(&v6, a1, &cf);
          goto LABEL_7;
        }
      }

LABEL_10:
      ftvFramebufferThread_cold_1(&cf, a1);
      return 0;
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t FigToolViewCopyPixelBufferAttributes(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0x3432306634323076;
  v4 = v13;
  FigGetAlignmentForIOSurfaceOutputToDisplayService();
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = CFNumberCreate(v5, kCFNumberSInt32Type, v4);
    CFArrayAppendValue(v7, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v8 = 0;
    v4 = v13 + 4;
  }

  while ((v9 & 1) != 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], v7);
  if (v7)
  {
    CFRelease(v7);
  }

  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  *a3 = Mutable;
  return 0;
}

uint64_t FigToolViewSetVideoGravity(uint64_t a1, unsigned int a2)
{
  if (a2 < 3)
  {
    if (*(a1 + 224) != a2)
    {
      FigSimpleMutexLock();
      *(a1 + 224) = a2;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigToolViewAddVisualContext(CFMutableArrayRef *a1, const void *a2)
{
  FigSimpleMutexLock();
  CFArrayAppendValue(*a1, a2);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigToolViewMarkNeedsClear(uint64_t a1)
{
  *(a1 + 25) = 1;
  FigSimpleMutexLock();
  v2 = 0;
  v3 = a1 + 192;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = a1 + 160 + 16 * v2;
    if (*v6)
    {
      CFRelease(*v6);
      *v6 = 0;
    }

    *(v6 + 8) = 1;
    v7 = *(v3 + 8 * v2);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 8 * v2) = 0;
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);

  return FigSimpleMutexUnlock();
}

void FigToolViewWaitUntilDoneThenDispose(uint64_t a1)
{
  FigThreadJoin();
  *(a1 + 8) = 0;
  CFArrayRemoveAllValues(*a1);
  if (*a1)
  {
    CFRelease(*a1);
  }

  FigSimpleMutexDestroy();
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 152))
  {
    FigSimpleMutexDestroy();
    *(a1 + 152) = 0;
  }

  if (*(a1 + 208))
  {
    FigSimpleMutexDestroy();
    *(a1 + 208) = 0;
  }

  v3 = 0;
  v4 = a1 + 192;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (a1 + 160 + 16 * v3);
    if (*v7)
    {
      CFRelease(*v7);
      *v7 = 0;
    }

    v8 = *(v4 + 8 * v3);
    if (v8)
    {
      CFRelease(v8);
      *(v4 + 8 * v3) = 0;
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  v9 = *(a1 + 248);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 248) = 0;
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 232) = 0;
  }

  v11 = *(a1 + 240);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 240) = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
  }

  free(a1);
}

uint64_t FigToolViewSetOverlayImage(uint64_t result, unsigned int a2, const void *a3)
{
  if (a2 <= 1)
  {
    v6 = result;
    FigSimpleMutexLock();
    v7 = v6 + 16 * a2;
    v10 = *(v7 + 160);
    v9 = v7 + 160;
    v8 = v10;
    *v9 = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    *(v9 + 8) = 1;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void ftvIOMFHotPlugNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 64))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_3;
  }

  v22[0] = 0;
  IOMobileFramebufferDisableVSyncNotifications();
  if (!ftvClearIOMFLayers(a1, v22))
  {
    IOMobileFramebufferSwapWait();
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = a3 + 72 + 32 * v11;
    *v14 = 0;
    v15 = *(v14 + 8);
    if (v15)
    {
      CFRelease(v15);
      *(v14 + 8) = 0;
    }

    v16 = 0;
    v17 = v14 + 16;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(v17 + 8 * v16);
      if (v20)
      {
        CFRelease(v20);
        *(v17 + 8 * v16) = 0;
      }

      v18 = 0;
      v16 = 1;
    }

    while ((v19 & 1) != 0);
    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  *(a3 + 68) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 64) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (a2)
  {
LABEL_3:
    v21 = 0;
    if (!IOMobileFramebufferSetDisplayDevice() && !FigIOMFSelectBestDigitalOutMode() && !IOMobileFramebufferGetID() && !IOMobileFramebufferGetDisplaySize() && !ftvClearIOMFLayers(a1, &v21))
    {
      *(a3 + 72) = v21;
      if (!IOMobileFramebufferEnableVSyncNotifications())
      {
        *(a3 + 64) = 1;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v7 = Mutable;
          DictionaryRepresentation = FigCGSizeCreateDictionaryRepresentation(*(a3 + 136), *(a3 + 144));
          if (DictionaryRepresentation)
          {
            v9 = DictionaryRepresentation;
            CFDictionarySetValue(v7, @"DisplaySize", DictionaryRepresentation);
            CFDictionarySetValue(v7, @"IsOverscanned", *MEMORY[0x1E695E4C0]);
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            CFRelease(v9);
          }

          CFRelease(v7);
        }
      }
    }
  }
}

void ftvCFDictionarySetSInt32Value(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t OUTLINED_FUNCTION_3_145(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, uint64_t a40)
{
  *(v40 - 176) = a39;
  *(v40 - 160) = a40;

  return CMBaseObjectGetVTable();
}

uint64_t FigSampleBufferRenderSynchronizerServerStart()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();

    return FigXPCServerStart();
  }
}

uint64_t synchronizerServer_lookupAndRetainSBRSByObjectIDForConnection()
{
  v0 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v0)
  {
    return v0;
  }

  synchronizerServer_lookupAndRetainSBRSByObjectIDForConnection_cold_1(&v3);
  return v3;
}

void synchronizerServer_disposeFSBRSServer(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    FigSimpleMutexUnlock();

    CFRelease(a1);
  }
}

void synchronizerServer_Finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    FigSyncMomentSourceDestroy(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
    a1[6] = 0;
  }

  FigSimpleMutexDestroy();
  v5 = a1[10];
  if (v5)
  {
    os_release(v5);
    a1[10] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
    a1[3] = 0;
  }
}

uint64_t __FigSBRSServerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_131 = result;
  return result;
}

void synchronizerServer_syncMomentDestructor(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void synchronizerServer_timebaseSyncUpdateCallback_Async(const void **a1)
{
  v6 = 0;
  v3 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      FigSimpleMutexLock();
      if (v4[64] || FigXPCCreateBasicMessage() || (v5 = CFDataCreate(0, v2, 120)) == 0)
      {
        FigSimpleMutexUnlock();
      }

      else
      {
        synchronizerServer_timebaseSyncUpdateCallback_Async_cold_1(&v6, v5, v4);
      }
    }

    FigXPCRelease();
    CFRelease(v3);
  }

  else
  {
    FigXPCRelease();
    v4 = 0;
  }

  free(v2);
  free(a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t FigPlayerCelesteOneTimeInitialization()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigPlayerCelesteOneTimeInitialization_block_invoke;
  block[3] = &unk_1E7486A28;
  block[4] = &v3;
  if (FigPlayerCelesteOneTimeInitialization_onceToken != -1)
  {
    dispatch_once(&FigPlayerCelesteOneTimeInitialization_onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigPlayerCelesteOneTimeInitialization_block_invoke_2()
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  v1 = qword_1ED4CBA68;

  dispatch_sync(v1, &__block_literal_global_18_3);
}

void playerceleste_dumpPlayers(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v5 = *(DerivedStorage + 200);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __playerceleste_dumpPlayers_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = DerivedStorage;
  if (v4 && v5)
  {
    dispatch_async_and_wait(v5, v6);
  }

  else
  {
    __playerceleste_dumpPlayers_block_invoke(v6);
  }
}

uint64_t FigPlayerCelesteCreateWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  theString = 0;
  v14 = 0;
  memset(&v15[8], 0, 80);
  cf = 0;
  v12 = 0;
  v6 = FigPlayerCelesteOneTimeInitialization();
  if (v6)
  {
    v10 = v6;
    v7 = 0;
    goto LABEL_7;
  }

  if (!a2)
  {
    FigPlayerCelesteCreateWithOptions_cold_11(v15);
LABEL_12:
    v7 = 0;
    goto LABEL_14;
  }

  if (!a4)
  {
    FigPlayerCelesteCreateWithOptions_cold_10(v15);
    goto LABEL_12;
  }

  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (!v7)
  {
    FigPlayerCelesteCreateWithOptions_cold_9(v15);
    goto LABEL_14;
  }

  FigPlayerGetClassID();
  v8 = CMDerivedObjectCreate();
  if (!v8)
  {
    FigPlayerCelesteCreateWithOptions_cold_8(v15);
LABEL_14:
    v10 = LODWORD(v15[0]);
    goto LABEL_7;
  }

  v10 = v8;
LABEL_7:
  free(v7);
  return v10;
}

uint64_t playerceleste_callSetConnectionActive(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 80);
  if (v4)
  {
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 24);
    result = VTable + 24;
    v6 = v7;
    if (v7)
    {
      v8 = *(v6 + 24);
      if (v8)
      {

        return v8(v4, a2);
      }
    }
  }

  return result;
}

uint64_t playerceleste_createFigAudioSessionUsingAudioSessionID(const __CFAllocator *a1, uint64_t a2, const __CFNumber *a3, CFTypeRef *a4)
{
  valuePtr = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
  if (FPSupport_CanUseCMSession())
  {
    v9 = AudioSessionCopyCMSessionForSessionID();
    if (v9)
    {
      v10 = v9;
      v11 = FigAudioSessionCreateWithCMSession(a1, v9, &cf);
      SInt32 = 0;
      if (v11)
      {
        v21 = v11;
        v13 = 0;
        goto LABEL_18;
      }

      v13 = 0;
LABEL_10:
      SInt32 = FigCFNumberCreateSInt32();
      v18 = cf;
      if (cf && (v19 = *(CMBaseObjectGetVTable() + 16)) != 0)
      {
        v20 = *(v19 + 56);
        if (!v20)
        {
          v21 = 4294948071;
          if (!v10)
          {
LABEL_19:
            if (!v13)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

LABEL_18:
          CFRelease(v10);
          goto LABEL_19;
        }

        v21 = v20(v18, *MEMORY[0x1E69AFDC8], SInt32);
        if (!v21)
        {
          *a4 = cf;
          cf = 0;
          if (!v10)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v21 = 4294948075;
      }

      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    playerceleste_createFigAudioSessionUsingAudioSessionID_cold_1(v23);
LABEL_31:
    v21 = LODWORD(v23[0]);
    goto LABEL_23;
  }

  if (a2)
  {
    v14 = (CMBaseObjectGetDerivedStorage() + 165);
  }

  else
  {
    v14 = "";
  }

  v15 = CFStringCreateWithFormat(a1, 0, @"FigPlayer %s", v14);
  if (!v15)
  {
    playerceleste_createFigAudioSessionUsingAudioSessionID_cold_2(v23);
    goto LABEL_31;
  }

  v13 = v15;
  v16 = *(DerivedStorage + 36);
  v23[0] = *(DerivedStorage + 20);
  v23[1] = v16;
  v17 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(a1, valuePtr, v23, v15, &cf);
  v10 = 0;
  if (!v17)
  {
    goto LABEL_10;
  }

  v21 = v17;
  SInt32 = 0;
LABEL_20:
  CFRelease(v13);
LABEL_21:
  if (SInt32)
  {
    CFRelease(SInt32);
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

void playerceleste_reflectSubPlayerNotificationToClient(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFEqual(a3, @"RenderingStoppedForConfigurationChange"))
    {
      v9 = CMBaseObjectGetDerivedStorage();
      if (!FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue() || (v10 = *(v9 + 200)) == 0)
      {
        if (qword_1ED4CBA70 != -1)
        {
          __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
        }

        v10 = qword_1ED4CBA68;
      }

      CFRetain(a2);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerceleste_handleSubPlayerConfigurationChange_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a2;
      dispatch_async(v10, block);
    }

    else
    {
      if (*(DerivedStorage + 120) && CFEqual(a3, @"UserVolumeDidChange"))
      {
        v11 = playerceleste_copyUniqueClientID();
        if (a5 && (Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AED70])) != 0)
        {
          v13 = CFEqual(v11, Value);
          CFRelease(v11);
          if (v13)
          {
            return;
          }
        }

        else
        {
          CFRelease(v11);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();

      CMNotificationCenterPostNotification();
    }
  }
}

uint64_t __playerceleste_getSharedQueue_block_invoke()
{
  result = FigDispatchQueueCreateWithPriority();
  qword_1ED4CBA68 = result;
  if (!result)
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

void __playerceleste_dumpPlayers_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  number = 0;
  cf = 0;
  v23 = 0;
  valuePtr = 0;
  v22 = 0;
  theArray = 0;
  v21 = 0;
  memset(__str, 0, sizeof(__str));
  memset(v29, 0, sizeof(v29));
  v2 = *MEMORY[0x1E695E480];
  FigBaseObject = FigPlayerGetFigBaseObject(*(a1 + 32));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(FigBaseObject, @"RequiresNumVideoSlots", v2, &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberCFIndexType, &valuePtr);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v6)
  {
    v6(v5, 0, &v28);
  }

  if (v28)
  {
    v7 = FigPlaybackItemGetFigBaseObject(v28);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(v7, @"HasEnabledAudio", v2, &cf);
    }

    v9 = FigPlaybackItemGetFigBaseObject(v28);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, @"HasEnabledVideo", v2, &v27);
    }

    v11 = FigPlaybackItemGetFigBaseObject(v28);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, @"VisualContextArray", v2, &theArray);
    }
  }

  v13 = *(*(a1 + 40) + 88);
  if (v13)
  {
    v14 = *(CMBaseObjectGetVTable() + 16);
    if (v14)
    {
      v15 = *(v14 + 16);
      if (v15)
      {
        v15(v13, @"FAS_AudioSessionID", v2, &v23);
        if (v23)
        {
          CFNumberGetValue(v23, kCFNumberSInt32Type, &v22);
        }
      }
    }
  }

  FigServer_CopyProcessName();
  if (valuePtr < 1)
  {
    strcpy(__str, ", has no attached video layers");
  }

  else
  {
    if (valuePtr == 1)
    {
      v16 = "";
    }

    else
    {
      v16 = "s";
    }

    snprintf(__str, 0x100uLL, ", has %d attached video layer%s", valuePtr, v16);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      if (Count == 1)
      {
        v18 = "";
      }

      else
      {
        v18 = "s";
      }

      snprintf(v29, 0x100uLL, " with %d visual context%s", Count, v18);
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

uint64_t FigAudioSessionCopyRequestedConfigurationForProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294948075;
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    return 4294948075;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    return 4294948071;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t FigServer_SleepCallBack(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  MEMORY[0x19A8D3680](qword_1ED4CBA80);
  if (a3 == -536870112)
  {
    FigPlayerCMSession_SystemWillPowerOn();
  }

  else
  {
    if (a3 == -536870272)
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v14 = 0;
      FigSimpleMutexLock();
      v6 = qword_1ED4CBA90;
      if (qword_1ED4CBA90)
      {
        do
        {
          v7 = FigCFWeakReferenceTableCopyValue();
          if (v7)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (*(DerivedStorage + 128))
            {
              goto LABEL_11;
            }

            CFRelease(v7);
          }

          v6 = *v6;
        }

        while (v6);
      }

      DerivedStorage = 0;
      v7 = 0;
LABEL_11:
      FigSimpleMutexUnlock();
      if (v7)
      {
        v9 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
        v10 = *(DerivedStorage + 200);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __fmpServer_systemWillSleep_block_invoke;
        block[3] = &unk_1E747EC60;
        block[5] = DerivedStorage;
        block[6] = v7;
        block[4] = v13;
        if (v9 && v10)
        {
          dispatch_async_and_wait(v10, block);
        }

        else
        {
          __fmpServer_systemWillSleep_block_invoke(block);
        }

        CFRelease(v7);
      }

      _Block_object_dispose(v13, 8);
      FigPlayerCMSession_SystemWillSleep();
    }

    else if (a3 != -536870288)
    {
      return MEMORY[0x19A8D3680](qword_1ED4CBA80, 0);
    }

    IOAllowPowerChange(dword_1ED4CBA5C, a4);
  }

  return MEMORY[0x19A8D3680](qword_1ED4CBA80, 0);
}

void sub_1967F74FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __fmpServer_systemWillSleep_block_invoke(void *a1)
{
  cf = 0;
  if (*(a1[5] + 130))
  {
    FigSimpleMutexLock();
    playerceleste_notifyImminentRateChange();
    if (*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 11, &cf);
      v2 = *(a1[5] + 80);
      v3 = cf;
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v4)
      {
        v5 = v4(v2, v3, 0.0);
LABEL_8:
        *(*(a1[4] + 8) + 24) = v5;
        *(CMBaseObjectGetDerivedStorage() + 130) = 0;
        FigSimpleMutexUnlock();
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *(a1[5] + 80);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v7)
      {
        v5 = v7(v6, 0.0);
        goto LABEL_8;
      }
    }

    v5 = -12782;
    goto LABEL_8;
  }

LABEL_9:
  if (playerceleste_canCallSetConnectionActive())
  {
    playerceleste_callSetConnectionActive(a1[6], 0);
  }

  *(a1[5] + 128) = 0;
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playerceleste_canCallSetConnectionActive()
{
  result = *(CMBaseObjectGetDerivedStorage() + 80);
  if (result)
  {
    v1 = *(CMBaseObjectGetVTable() + 24);
    return v1 && *(v1 + 24);
  }

  return result;
}

void playerceleste_notifyImminentRateChange()
{
  if (*(CMBaseObjectGetDerivedStorage() + 80))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v1 = Mutable;
      FigCFDictionarySetFloat32();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();

      CFRelease(v1);
    }
  }
}

uint64_t FigAudioSessionSetMXSessionProperty_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 56);
      if (v9)
      {

        return v9(v5, a2, a3);
      }
    }
  }

  return result;
}

__CFString *playerceleste_copyUniqueClientID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"%u-%lld", *(DerivedStorage + 16), *(DerivedStorage + 8));
  return Mutable;
}

void __playerceleste_handleSubPlayerConfigurationChange_block_invoke(uint64_t a1)
{
  FigPlayerReevaluateRouteConfigurationForReason(*(a1 + 32), 0, @"SubPlayerConfigurationChanged from celeste player");
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void playerceleste_updatePlayerBasedOnAppState(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 176);
  voucher_adopt();
  FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
  if (a2 <= 3)
  {
    if ((a2 - 1) >= 2 && !a2)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  if (a2 != 4)
  {
    if (a2 == 8)
    {
LABEL_8:
      v5 = *(DerivedStorage + 80);
      v6 = MEMORY[0x1E695E4C0];
LABEL_9:
      v7 = *v6;
      FigBaseObject = FigPlayerGetFigBaseObject(v5);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(FigBaseObject, @"ClientSuspended", v7);
      }

      v10 = FigPlayerGetFigBaseObject(*(DerivedStorage + 80));
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v12 = v10;
        v13 = v7;
LABEL_13:
        v11(v12, 0x1F0B29EF8, v13);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

LABEL_3:
    v5 = *(DerivedStorage + 80);
    v6 = MEMORY[0x1E695E4D0];
    goto LABEL_9;
  }

  v14 = FigPlayerGetFigBaseObject(*(DerivedStorage + 80));
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v15)
  {
    v15(v14, @"ClientSuspended", *MEMORY[0x1E695E4C0]);
  }

  v16 = FigPlayerGetFigBaseObject(*(DerivedStorage + 80));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v13 = *MEMORY[0x1E695E4D0];
    v12 = v16;
    goto LABEL_13;
  }

LABEL_14:
}

void playerceleste_InterruptionNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_InterruptionNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a5;
  block[5] = a2;
  block[6] = DerivedStorage;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    __playerceleste_InterruptionNotification_block_invoke(block);
  }
}

void playerceleste_availableFormatsChangedNotification(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v5 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_availableFormatsChangedNotification_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (v4 && v5)
  {
    dispatch_async_and_wait(v5, block);
  }

  else
  {
    FigPlayerReevaluateRouteConfigurationForReason(a2, 0, @"CelestePlayerInitiated_AvailableFormatsChanged");
  }
}

void playerceleste_ApplicationStateDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_ApplicationStateDidChangeNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a5;
  block[5] = DerivedStorage;
  block[6] = a2;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    __playerceleste_ApplicationStateDidChangeNotification_block_invoke(block);
  }
}

void playerceleste_PiPIsPossibleDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __playerceleste_PiPIsPossibleDidChangeNotification_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a2;
  v10[5] = a5;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, v10);
  }

  else
  {
    __playerceleste_PiPIsPossibleDidChangeNotification_block_invoke(v10);
  }
}

void playerceleste_DisplayLayoutDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_DisplayLayoutDidChangeNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a2;
  block[5] = a5;
  block[6] = DerivedStorage;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    __playerceleste_DisplayLayoutDidChangeNotification_block_invoke(block);
  }
}

void playerceleste_ActiveAudioRouteDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFCopyCompactDescription();
  v9 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (dword_1EAF17958)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v12 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_ActiveAudioRouteDidChangeNotification_block_invoke;
  block[3] = &__block_descriptor_64_e5_v8__0l;
  block[4] = a2;
  block[5] = v9;
  block[6] = DerivedStorage;
  block[7] = a5;
  if (!v11 || !v12)
  {
    __playerceleste_ActiveAudioRouteDidChangeNotification_block_invoke(block);
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

  dispatch_async_and_wait(v12, block);
  if (v9)
  {
LABEL_12:
    CFRelease(v9);
  }
}

void playerceleste_PickableRoutesDidChangeNotification(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v5 = *(DerivedStorage + 200);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __playerceleste_PickableRoutesDidChangeNotification_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = DerivedStorage;
  if (v4 && v5)
  {
    dispatch_async_and_wait(v5, v6);
  }

  else
  {
    __playerceleste_PickableRoutesDidChangeNotification_block_invoke(v6);
  }
}

void playerceleste_AudioSessionIsActiveDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_AudioSessionIsActiveDidChangeNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a5;
  block[5] = DerivedStorage;
  block[6] = a2;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    __playerceleste_AudioSessionIsActiveDidChangeNotification_block_invoke(block);
  }
}

void playerceleste_notifyInterruptionWithInterruptorNameAndStatus(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  keys = @"InterruptorName";
  v9 = 0;
  values = a3;
  v7 = 0;
  if (a4)
  {
    v9 = @"InterruptionStatus";
    v7 = a4;
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t playerceleste_setRateInternal(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v50 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigCFDictionaryGetInt32IfPresent();
  if (a8 == 0.0)
  {
    if (a2)
    {
      goto LABEL_3;
    }

    goto LABEL_25;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v26 = FigCFCopyCompactDescription();
  if (dword_1EAF17958)
  {
    allocatora = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(allocatora, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v26)
  {
    CFRelease(v26);
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v24 = playerceleste_beginInterruptionInternal(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v24)
  {
    *(CMBaseObjectGetDerivedStorage() + 130) = 1;
    if (a2)
    {
LABEL_3:
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      v18 = MEMORY[0x1E6960C70];
      if (v17)
      {
        v19 = *(DerivedStorage + 80);
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (!v20)
        {
LABEL_11:
          v49 = *v18;
          FigCFDictionaryGetCMTimeIfPresent();
          v48 = v49;
          v25 = &v48;
LABEL_12:
          playerceleste_setRateWithManualFade(a8, a1, v25);
          v24 = 0;
          goto LABEL_45;
        }

        v21 = v20(v19, a2, a8);
      }

      else
      {
        v48 = **&MEMORY[0x1E6960C70];
        FigCFDictionaryGetCMTimeIfPresent();
        v22 = *(DerivedStorage + 80);
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v23)
        {
          v24 = 4294954514;
LABEL_10:
          if (v24 != -12782)
          {
LABEL_45:
            if (a8 == 0.0 && !v24)
            {
              *(CMBaseObjectGetDerivedStorage() + 130) = 0;
            }

            goto LABEL_48;
          }

          goto LABEL_11;
        }

        v49 = v48;
        v21 = v23(v22, &v49, a8);
      }

      v24 = v21;
      goto LABEL_10;
    }

LABEL_25:
    if (a8 != 0.0 || *(DerivedStorage + 116) == 0.0)
    {
      v34 = *(DerivedStorage + 80);
      if (a4)
      {
        *&v46.value = *a5;
        v46.epoch = *(a5 + 16);
        *&v45.value = *a6;
        v45.epoch = *(a6 + 16);
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (!v35)
        {
          v24 = 4294954514;
          goto LABEL_45;
        }

        v49 = v46;
        v48 = v45;
        v36 = v35(v34, &v49, &v48, a7, a8);
      }

      else if (*(*(CMBaseObjectGetVTable() + 16) + 104))
      {
        FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], a3, &cf);
        v39 = *(DerivedStorage + 80);
        v40 = cf;
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (!v41)
        {
          v24 = 4294954514;
          goto LABEL_48;
        }

        v36 = v41(v39, v40, a8);
      }

      else
      {
        v36 = FigPlayerSetRate(*(DerivedStorage + 80), a8);
      }

      v24 = v36;
      goto LABEL_45;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], a3, &cf);
      CMTimeMakeWithSeconds(&v49, *(DerivedStorage + 116), 1000);
      FigCFDictionarySetCMTime();
      v30 = *(DerivedStorage + 80);
      v31 = cf;
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v32)
      {
LABEL_42:
        CMTimeMakeWithSeconds(&v49, *(DerivedStorage + 116), 1000);
        v25 = &v49;
        goto LABEL_12;
      }

      v33 = v32(v30, v31, a8);
    }

    else
    {
      v37 = *(DerivedStorage + 80);
      CMTimeMakeWithSeconds(&v48, *(DerivedStorage + 116), 1000);
      v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v38)
      {
        v24 = 4294954514;
LABEL_41:
        if (v24 != -12782)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v49 = v48;
      v33 = v38(v37, &v49, a8);
    }

    v24 = v33;
    goto LABEL_41;
  }

  v28 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(v28, @"CurrentRate");
  CFArrayAppendValue(v28, @"CurrentPlaybackState");
  NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(a1, 0, v28);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  if (v28)
  {
    CFRelease(v28);
  }

LABEL_48:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t playerceleste_revokePurgeAssertionIfNecessary()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 192);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 192) = 0;
  }

  return FigSimpleMutexUnlock();
}

void playerceleste_setRateWithManualFade(float a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  number = 0;
  valuePtr = 0.0;
  v18 = *a3;
  if (CMTimeGetSeconds(&v18) >= 5.0)
  {
    v6 = 500000;
  }

  else
  {
    v18 = *a3;
    v6 = (CMTimeGetSeconds(&v18) * 100000.0);
  }

  FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 80));
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v9 = 0.0;
  if (v8)
  {
    v8(FigBaseObject, @"UserVolume", *MEMORY[0x1E695E480], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
      CFRelease(number);
      v9 = valuePtr;
    }
  }

  v10 = v9 / 10.0;
  if (a1 == 0.0)
  {
    while (v9 > 0.0)
    {
      v9 = v9 - v10;
      if (v9 <= 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v9;
      }

      fpcel_setMovieVolumeOnSubPlayer(*(DerivedStorage + 80), v15);
      usleep(v6);
    }

    v16 = *(DerivedStorage + 80);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v17)
    {
      v17(v16, a1);
    }
  }

  else
  {
    fpcel_setMovieVolumeOnSubPlayer(*(DerivedStorage + 80), 0.0);
    v11 = *(DerivedStorage + 80);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v12)
    {
      v12(v11, a1);
    }

    v13 = valuePtr;
    if (valuePtr > 0.0)
    {
      v14 = 0.0;
      do
      {
        if ((v10 + v14) >= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v10 + v14;
        }

        fpcel_setMovieVolumeOnSubPlayer(*(DerivedStorage + 80), v14);
        usleep(v6);
        v13 = valuePtr;
      }

      while (v14 < valuePtr);
    }
  }

  fpcel_setMovieVolumeOnSubPlayer(*(DerivedStorage + 80), valuePtr);
  *(DerivedStorage + 124) = a1;
}

void fpcel_setMovieVolumeOnSubPlayer(uint64_t a1, float a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  FigBaseObject = FigPlayerGetFigBaseObject(a1);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(FigBaseObject, @"UserVolume", v3);
  }

  CFRelease(v3);
}

uint64_t playerceleste_pauseCurrentlyPlayingMovie(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playerceleste_notifyImminentRateChange();
  result = playerceleste_setRateInternal(a1, 0, a2, 0, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, 0.0);
  *(DerivedStorage + 124) = 0;
  return result;
}

void __playerceleste_deferItemRelease_block_invoke(uint64_t a1)
{
  v2 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_deferItemRelease_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  v3 = *(a1 + 32);
  block[4] = *(a1 + 40);
  if (v2 && v3)
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    __playerceleste_deferItemRelease_block_invoke_2(block);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_release(v4);
  }
}

void __playerceleste_deferItemRelease_block_invoke_2(uint64_t a1)
{
  MEMORY[0x19A8D3680](qword_1ED4CBA80, &qword_1ED4CBA80);
  CFRelease(*(a1 + 32));

  JUMPOUT(0x19A8D3680);
}

uint64_t playerceleste_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v4 = DerivedStorage;
  *DerivedStorage = 1;
  if (*(DerivedStorage + 88))
  {
    v5 = &sFigAudioSessionNotifications;
    v6 = &off_1EE59EF58;
    v7 = 8;
    do
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v6 += 2;
      FigNotificationCenterRemoveWeakListener();
      v5 += 2;
      --v7;
    }

    while (v7);
    FigStopForwardingMediaServicesProcessDeathNotification();
  }

  if (*(v4 + 128) && *(v4 + 130) && *(v4 + 80))
  {
    FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 22, &cf);
    FigSimpleMutexLock();
    v8 = *(v4 + 80);
    v9 = cf;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v10)
    {
      v10(v8, v9, 0.0);
    }

    FigSimpleMutexUnlock();
    *(v4 + 124) = 0;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  *(CMBaseObjectGetDerivedStorage() + 130) = 0;
  if (*(v4 + 128))
  {
    if (playerceleste_canCallSetConnectionActive())
    {
      playerceleste_callSetConnectionActive(a1, 0);
    }

    *(v4 + 128) = 0;
  }

  if (*(v4 + 80))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  playerceleste_revokePurgeAssertionIfNecessary();
  if (*(v4 + 136))
  {
    FigCFWeakReferenceTableApplyFunction();
  }

  FigCFWeakReferenceTableRemoveValue();
  FigSimpleMutexLock();
  v11 = *(v4 + 80);
  if (v11)
  {
    FigBaseObject = FigPlayerGetFigBaseObject(v11);
    if (FigBaseObject)
    {
      v13 = FigBaseObject;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v14)
      {
        v14(v13);
      }
    }
  }

  FigSimpleMutexUnlock();
  v15 = &qword_1ED4CBA90;
  FigSimpleMutexLock();
  v16 = &qword_1ED4CBA90;
  do
  {
    v16 = *v16;
    if (!v16)
    {
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  while (v16[1] != *(v4 + 8));
  for (i = qword_1ED4CBA90; i != v16; i = *i)
  {
    v15 = i;
  }

  *v15 = *i;
  --qword_1ED4CBA88;
  FigSimpleMutexUnlock();
  free(v16);
  return 0;
}

void playerceleste_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    playerceleste_Invalidate(a1);
  }

  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 136) = 0;
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 88) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 80);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 80) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 144) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 152) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 184) = 0;
  v9 = *(DerivedStorage + 104);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 104) = 0;
  }

  v10 = *(DerivedStorage + 200);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 200) = 0;
  }

  v11 = *(DerivedStorage + 176);
  if (v11)
  {

    *(DerivedStorage + 176) = 0;
  }

  v12 = *(DerivedStorage + 208);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 208) = 0;
  }
}

__CFString *playerceleste_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (a1)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 165);
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPlayerCeleste %p %{public}s celestePlayerID %lld subPlayer %p>", a1, v5, *(DerivedStorage + 8), *(DerivedStorage + 80));
  return Mutable;
}

void fpcel_destroyPlaybackItemFromPlayer()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFWeakReferenceTableCopyValue();
  if (v0)
  {
    v1 = v0;
    if (!FigCFWeakReferenceTableRemoveValue())
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v1);
      if (FigBaseObject)
      {
        v3 = FigBaseObject;
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v4)
        {
          v4(v3);
        }
      }
    }

    CFRelease(v1);
  }
}

uint64_t FigAudioSessionCopyMXSessionProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294948075;
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    return 4294948075;
  }

  v9 = *(v8 + 48);
  if (!v9)
  {
    return 4294948071;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t FigAudioSessionCopyCMSessionProperty(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 16);
    result = VTable + 16;
    v9 = v10;
    if (v10)
    {
      v11 = *(v9 + 32);
      if (v11)
      {

        return v11(v7, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t FigAudioSessionIsRelatedToAudioSessionID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 96);
  if (!v5)
  {
    return 0;
  }

  return v5(a1, a2);
}

uint64_t itemceleste_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v2 = DerivedStorage;
  *DerivedStorage = 1;
  if (*(DerivedStorage + 40))
  {
    *(DerivedStorage + 40) = 0;
  }

  result = *(DerivedStorage + 24);
  if (result)
  {
    if (*(v2 + 41))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      *(v2 + 41) = 0;
      result = *(v2 + 24);
    }

    result = FigPlaybackItemGetFigBaseObject(result);
    if (result)
    {
      v3 = result;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }

      return 0;
    }
  }

  return result;
}

void itemceleste_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    itemceleste_Invalidate();
  }

  v1 = FigCFWeakReferenceTableCopyValue();
  if (v1)
  {
    v2 = v1;
    CMBaseObjectGetDerivedStorage();
    FigCFWeakReferenceTableRemoveValue();
    playerceleste_deferPlayerRelease(v2);
  }

  FigCFWeakReferenceTableRemoveValue();
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

  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 16) = 0;
}

__CFString *itemceleste_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (a1)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 42);
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigCelestePlaybackItem %p %s celesteItemID %lld subItem %p>", a1, v5, *(DerivedStorage + 16), *(DerivedStorage + 24));
  return Mutable;
}

uint64_t itemceleste_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 24));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(FigBaseObject, a2, a3, a4);
}

void itemceleste_reflectSubItemNotificationToClient(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!a2)
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a3, @"ReadyForInspection"))
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    v9 = *(DerivedStorage + 40);
    v8 = (DerivedStorage + 40);
    if (!v9)
    {
      goto LABEL_12;
    }

    Value = CFDictionaryGetValue(a5, @"Properties");
    if (!Value)
    {
      goto LABEL_12;
    }

    v11 = Value;
    v14.length = CFArrayGetCount(Value);
    v14.location = 0;
    if (!CFArrayContainsValue(v11, v14, @"InitialSamples"))
    {
      goto LABEL_12;
    }

LABEL_11:
    *v8 = 0;
    goto LABEL_12;
  }

  if (CFEqual(a3, @"FailedToBecomeReadyForInspection"))
  {
    v12 = *(DerivedStorage + 40);
    v8 = (DerivedStorage + 40);
    if (v12)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
}

void playerceleste_deferPlayerRelease(uint64_t a1)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_deferPlayerRelease_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(qword_1ED4CBA68, block);
}

void __playerceleste_deferPlayerRelease_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v4 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_deferPlayerRelease_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (v3 && v4)
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    __playerceleste_deferPlayerRelease_block_invoke_2(block);
  }
}

void __playerceleste_deferPlayerRelease_block_invoke_2(uint64_t a1)
{
  MEMORY[0x19A8D3680](qword_1ED4CBA80, &qword_1ED4CBA80);
  CFRelease(*(a1 + 32));

  JUMPOUT(0x19A8D3680);
}

uint64_t itemceleste_handleSetProperty(int a1, int a2, CFTypeRef cf, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  *a5 = 0;
  if (cf)
  {
    v10 = CFRetain(cf);
  }

  else
  {
    v10 = 0;
  }

  *a6 = v10;
  if (a4)
  {
    v11 = CFRetain(a4);
  }

  else
  {
    v11 = 0;
  }

  *a7 = v11;
  return 0;
}

uint64_t itemceleste_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 24);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t itemceleste_GetDuration(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t itemceleste_SetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking();
  v6 = *(DerivedStorage + 24);
  v9 = *a2;
  v10 = *(a2 + 2);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  v11 = v9;
  v12 = v10;
  return v7(v6, &v11, a3);
}