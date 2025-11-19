void FigCaptionSerializerFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *FigCaptionSerializerCopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Value = CFDictionaryGetValue(*(a1 + 16), @"FigCaptionSerializerVersion");
  v4 = CFDictionaryGetValue(*(a1 + 16), @"FigCaptionSerializerFormat");
  CFStringAppendFormat(Mutable, 0, @"FigCaptionSerializer (version=%@, format=%@)\n", Value, v4);
  return Mutable;
}

uint64_t fcs_copyCaptionStyleAsDictionary(const void *a1, uint64_t a2, const __CFDictionary *a3, CFMutableDictionaryRef *a4)
{
  if (!a1)
  {
    fcs_copyCaptionStyleAsDictionary_cold_6(&v13);
    return v13;
  }

  if (!a2)
  {
    fcs_copyCaptionStyleAsDictionary_cold_5(&v13);
    return v13;
  }

  if (!a3)
  {
    fcs_copyCaptionStyleAsDictionary_cold_4(&v13);
    return v13;
  }

  if (!a4)
  {
    fcs_copyCaptionStyleAsDictionary_cold_3(&v13);
    return v13;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fcs_copyCaptionStyleAsDictionary_cold_2(&v13);
    return v13;
  }

  v9 = Mutable;
  Value = CFDictionaryGetValue(a3, a1);
  if (!Value)
  {
    fcs_copyCaptionStyleAsDictionary_cold_1(&v13);
    v11 = v13;
    goto LABEL_11;
  }

  v11 = Value(v9, @"PropertyValue", a2);
  if (v11)
  {
LABEL_11:
    CFRelease(v9);
    return v11;
  }

  *a4 = v9;
  return v11;
}

uint64_t fcs_setDictionaryFromPropertyCFType(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        CFDictionarySetValue(a1, a2, a3);
        return 0;
      }

      else
      {
        fcs_setDictionaryFromPropertyCFType_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      fcs_setDictionaryFromPropertyCFType_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    fcs_setDictionaryFromPropertyCFType_cold_3(&v6);
    return v6;
  }
}

uint64_t fcs_setDictionaryFromPropertyFontFamily(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    fcs_setDictionaryFromPropertyFontFamily_cold_5(&v24);
LABEL_20:
    Mutable = 0;
    goto LABEL_16;
  }

  if (!a2)
  {
    fcs_setDictionaryFromPropertyFontFamily_cold_4(&v24);
    goto LABEL_20;
  }

  if (!a3)
  {
    fcs_setDictionaryFromPropertyFontFamily_cold_3(&v24);
    goto LABEL_20;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v23 = a1;
    Count = FigCaptionFontFamilyNameListGetCount(a3);
    if (!Count)
    {
LABEL_10:
      CFDictionarySetValue(v23, a2, Mutable);
      v21 = 0;
      goto LABEL_11;
    }

    v9 = Count;
    v10 = 0;
    v11 = MEMORY[0x1E695E9D8];
    v12 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v13 = FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex(a3, v10);
      if (v13)
      {
        v21 = v13;
        goto LABEL_11;
      }

      v14 = CFDictionaryCreateMutable(v6, 0, v11, v12);
      if (!v14)
      {
        break;
      }

      v20 = v14;
      FigCFDictionarySetInt32(v14, @"FontFamilyKind", 0, v15, v16, v17, v18, v19);
      FigCFDictionarySetValue(v20, @"FontFamilyName", 0);
      CFArrayAppendValue(Mutable, v20);
      CFRelease(v20);
      if (v9 == ++v10)
      {
        goto LABEL_10;
      }
    }

    fcs_setDictionaryFromPropertyFontFamily_cold_1(&v24);
  }

  else
  {
    fcs_setDictionaryFromPropertyFontFamily_cold_2(&v24);
  }

LABEL_16:
  v21 = v24;
LABEL_11:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v21;
}

uint64_t fcs_setDictionaryFromPropertyTextOutline(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    fcs_setDictionaryFromPropertyTextOutline_cold_4(&v17);
    return v17;
  }

  if (!a2)
  {
    fcs_setDictionaryFromPropertyTextOutline_cold_3(&v17);
    return v17;
  }

  if (!a3)
  {
    fcs_setDictionaryFromPropertyTextOutline_cold_2(&v17);
    return v17;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fcs_setDictionaryFromPropertyTextOutline_cold_1(&v17);
    return v17;
  }

  v8 = Mutable;
  Color = FigCaptionTextOutlineGetColor(a3);
  v10 = FigCopyCGColorSRGBAsCFArray(Color);
  if (v10)
  {
    v11 = v10;
    Thickness = FigCaptionTextOutlineGetThickness(a3);
    v14 = FigGeometryDimensionCopyAsDictionary(Thickness, v13, v6);
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(v8, @"TextOutlineColor", v11);
      CFDictionarySetValue(v8, @"TextOutlineThickness", v15);
      CFDictionarySetValue(a1, a2, v8);
      CFRelease(v15);
    }

    CFRelease(v11);
  }

  CFRelease(v8);
  return 0;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis(__CFDictionary *a1, const void *a2, CFTypeRef cf)
{
  if (!a1)
  {
    fcs_setDictionaryFromPropertyTextEmphasis_cold_5(&v27);
    return v27;
  }

  if (!a2)
  {
    fcs_setDictionaryFromPropertyTextEmphasis_cold_4(&v27);
    return v27;
  }

  if (!cf)
  {
    fcs_setDictionaryFromPropertyTextEmphasis_cold_3(&v27);
    return v27;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != FigCaptionTextEmphasisGetTypeID())
  {
    fcs_setDictionaryFromPropertyTextEmphasis_cold_1(&v27);
    return v27;
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fcs_setDictionaryFromPropertyTextEmphasis_cold_2(&v27);
    return v27;
  }

  v10 = Mutable;
  EmphasisStyle = FigCaptionTextEmphasisGetEmphasisStyle(cf);
  if (EmphasisStyle <= 3)
  {
    v12 = EmphasisStyle;
    UInt32 = FigCFNumberCreateUInt32(v8, EmphasisStyle);
    CFDictionarySetValue(v10, @"TextEmphasisStyle", UInt32);
    if (v12 == 2)
    {
      MarkingStyle = FigCaptionTextEmphasisGetMarkingStyle(cf);
      PredefinedMark = FigCaptionTextEmphasisGetPredefinedMark(cf);
      v16 = FigCFNumberCreateUInt32(v8, MarkingStyle);
      v15 = FigCFNumberCreateUInt32(v8, PredefinedMark);
      if (v16)
      {
        CFDictionarySetValue(v10, @"TextEmphasisCustomMarkingStyle", v16);
      }

      if (v15)
      {
        CFDictionarySetValue(v10, @"TextEmphasisPredefinedMark", v15);
      }
    }

    else
    {
      if (v12 == 3)
      {
        CustomMark = FigCaptionTextEmphasisGetCustomMark(cf);
        if (CustomMark)
        {
          CFDictionarySetValue(v10, @"TextEmphasisCustomMark", CustomMark);
        }
      }

      v15 = 0;
      v16 = 0;
    }

    Color = FigCaptionTextEmphasisGetColor(cf);
    if (Color)
    {
      v24 = FigCopyCGColorSRGBAsCFArray(Color);
      if (!v24)
      {
LABEL_24:
        if (UInt32)
        {
          CFRelease(UInt32);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        v20 = 0;
        goto LABEL_33;
      }

      CFDictionarySetValue(v10, @"TextEmphasisColor", v24);
    }

    else
    {
      v24 = 0;
    }

    RubyPosition = FigCaptionTextEmphasisGetRubyPosition(cf);
    if (RubyPosition)
    {
      CFDictionarySetValue(v10, @"TextEmphasisRubyPosition", RubyPosition);
    }

    CFDictionarySetValue(a1, a2, v10);
    goto LABEL_24;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x1A2, v3, v18, v19);
LABEL_33:
  CFRelease(v10);
  return v20;
}

uint64_t fcs_setDictionaryFromPropertyTextShadow(__CFDictionary *a1, const void *a2, CFTypeRef cf)
{
  if (!a1)
  {
    fcs_setDictionaryFromPropertyTextShadow_cold_8(&v41);
    return v41;
  }

  if (!a2)
  {
    fcs_setDictionaryFromPropertyTextShadow_cold_7(&v41);
    return v41;
  }

  if (!cf)
  {
    fcs_setDictionaryFromPropertyTextShadow_cold_6(&v41);
    return v41;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != FigCaptionTextShadowListGetTypeID())
  {
    fcs_setDictionaryFromPropertyTextShadow_cold_1(&v41);
    return v41;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fcs_setDictionaryFromPropertyTextShadow_cold_5(&v41);
    return v41;
  }

  theDict = Mutable;
  v37 = a1;
  v38 = a2;
  TextShadowArray = FigCaptionTextShadowListGetTextShadowArray(cf);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v39 = TextShadowArray;
  if (TextShadowArray)
  {
    goto LABEL_32;
  }

LABEL_33:
  for (i = 0; v16 < i; i = CFArrayGetCount(TextShadowArray))
  {
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(TextShadowArray, v16);
    if (!ValueAtIndex || (v18 = ValueAtIndex, v19 = CFGetTypeID(ValueAtIndex), v19 != FigCaptionTextShadowGetTypeID()))
    {
      fcs_setDictionaryFromPropertyTextShadow_cold_4(&v41);
      v34 = v41;
      if (!v10)
      {
        goto LABEL_48;
      }

LABEL_47:
      CFRelease(v10);
      goto LABEL_48;
    }

    v20 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v20)
    {
      fcs_setDictionaryFromPropertyTextShadow_cold_3(&v41);
      v34 = v41;
      goto LABEL_48;
    }

    v10 = v20;
    v40 = v16;
    v21 = v11;
    HorizontalAxisOffset = FigCaptionTextShadowGetHorizontalAxisOffset(v18);
    v24 = v23;
    VerticalAxisOffset = FigCaptionTextShadowGetVerticalAxisOffset(v18);
    v27 = v26;
    BlurRadius = FigCaptionTextShadowGetBlurRadius(v18);
    v30 = v29;
    v12 = FigGeometryDimensionCopyAsDictionary(HorizontalAxisOffset, v24, v7);
    v13 = FigGeometryDimensionCopyAsDictionary(VerticalAxisOffset, v27, v7);
    v14 = FigGeometryDimensionCopyAsDictionary(BlurRadius, v30, v7);
    if (v12)
    {
      CFDictionarySetValue(v10, @"TextShadowHorizontalAxisOffset", v12);
    }

    if (v13)
    {
      CFDictionarySetValue(v10, @"TextShadowVerticalAxisOffset", v13);
    }

    v11 = v21;
    if (v14)
    {
      CFDictionarySetValue(v10, @"TextShadowBlurRadius", v14);
    }

    Color = FigCaptionTextShadowGetColor(v18);
    TextShadowArray = v39;
    if (Color)
    {
      v15 = FigCopyCGColorSRGBAsCFArray(Color);
      if (!v15)
      {
        goto LABEL_38;
      }

      CFDictionarySetValue(v10, @"TextShadowColor", v15);
      if (v11)
      {
LABEL_28:
        v32 = v11;
        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
      if (v11)
      {
        goto LABEL_28;
      }
    }

    v32 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
    if (!v32)
    {
      fcs_setDictionaryFromPropertyTextShadow_cold_2(&v41);
      v34 = v41;
      if (!v12)
      {
        goto LABEL_40;
      }

LABEL_39:
      CFRelease(v12);
      goto LABEL_40;
    }

LABEL_31:
    CFArrayAppendValue(v32, v10);
    v16 = v40 + 1;
    v11 = v32;
    if (!v39)
    {
      goto LABEL_33;
    }

LABEL_32:
    ;
  }

  if (v11)
  {
    CFDictionarySetValue(theDict, @"TextShadowList", v11);
  }

  CFDictionarySetValue(v37, v38, theDict);
LABEL_38:
  v34 = 0;
  if (v12)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v10)
  {
    goto LABEL_47;
  }

LABEL_48:
  if (v11)
  {
    CFRelease(v11);
  }

  return v34;
}

uint64_t fcs_setDictionaryFromPropertyRubyReserve(__CFDictionary *a1, const void *a2, CFTypeRef cf)
{
  if (!a1)
  {
    fcs_setDictionaryFromPropertyRubyReserve_cold_6(&v17);
    return v17;
  }

  if (!a2)
  {
    fcs_setDictionaryFromPropertyRubyReserve_cold_5(&v17);
    return v17;
  }

  if (!cf)
  {
    fcs_setDictionaryFromPropertyRubyReserve_cold_4(&v17);
    return v17;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != FigCaptionRubyReserveGetTypeID())
  {
    fcs_setDictionaryFromPropertyRubyReserve_cold_1(&v17);
    return v17;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fcs_setDictionaryFromPropertyRubyReserve_cold_3(&v17);
    return v17;
  }

  v9 = Mutable;
  RubyPosition = FigCaptionRubyReserveGetRubyPosition(cf);
  Length = FigCaptionRubyReserveGetLength(cf);
  v13 = FigGeometryDimensionCopyAsDictionary(Length, v12, v7);
  if (v13)
  {
    v14 = v13;
    if (RubyPosition)
    {
      CFDictionarySetValue(v9, @"RubyReserveRubyPosition", RubyPosition);
    }

    CFDictionarySetValue(v9, @"RubyReserveLength", v14);
    CFDictionarySetValue(a1, a2, v9);
    CFRelease(v14);
    v15 = 0;
  }

  else
  {
    fcs_setDictionaryFromPropertyRubyReserve_cold_2(&v17);
    v15 = v17;
  }

  CFRelease(v9);
  return v15;
}

uint64_t fcs_setDictionaryFromPropertyCaptionPosition(__CFDictionary *a1, const void *a2, CFTypeRef cf)
{
  if (!a1)
  {
    fcs_setDictionaryFromPropertyCaptionPosition_cold_7(&v57);
    return v57;
  }

  if (!a2)
  {
    fcs_setDictionaryFromPropertyCaptionPosition_cold_6(&v57);
    return v57;
  }

  if (!cf)
  {
    fcs_setDictionaryFromPropertyCaptionPosition_cold_5(&v57);
    return v57;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != FigCaptionRubyReserveGetTypeID())
  {
    fcs_setDictionaryFromPropertyCaptionPosition_cold_1(&v57);
    return v57;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fcs_setDictionaryFromPropertyCaptionPosition_cold_4(&v57);
    return v57;
  }

  v16 = Mutable;
  HorizontalEdgeReference = FigCaptionPositionGetHorizontalEdgeReference(cf, v9, v10, v11, v12, v13, v14, v15);
  VerticalEdgeReference = FigCaptionPositionGetVerticalEdgeReference(cf, v18, v19, v20, v21, v22, v23, v24);
  HorizontalEdgeOffset = FigCaptionPositionGetHorizontalEdgeOffset(cf, v26, v27, v28, v29, v30, v31, v32);
  v35 = v34;
  VerticalEdgeOffset = FigCaptionPositionGetVerticalEdgeOffset(cf, v34, v36, v37, v38, v39, v40, v41);
  if (HorizontalEdgeReference <= 1818584691)
  {
    if (HorizontalEdgeReference == 1651471476)
    {
      v56 = 0;
      v44 = @"Bottom";
      goto LABEL_18;
    }

    if (HorizontalEdgeReference == 1667591796)
    {
      v56 = 0;
      v44 = @"Center";
      goto LABEL_18;
    }
  }

  else
  {
    switch(HorizontalEdgeReference)
    {
      case 1818584692:
        v56 = 0;
        v44 = @"Left";
        goto LABEL_18;
      case 1919510376:
        v56 = 0;
        v44 = @"Right";
        goto LABEL_18;
      case 1953460256:
        v56 = 0;
        v44 = @"Top";
        goto LABEL_18;
    }
  }

  v44 = 0;
  v56 = 1;
LABEL_18:
  if (VerticalEdgeReference <= 1818584691)
  {
    if (VerticalEdgeReference == 1651471476)
    {
      v45 = 0;
      v46 = @"Bottom";
      goto LABEL_30;
    }

    if (VerticalEdgeReference == 1667591796)
    {
      v45 = 0;
      v46 = @"Center";
      goto LABEL_30;
    }
  }

  else
  {
    switch(VerticalEdgeReference)
    {
      case 1818584692:
        v45 = 0;
        v46 = @"Left";
        goto LABEL_30;
      case 1919510376:
        v45 = 0;
        v46 = @"Right";
        goto LABEL_30;
      case 1953460256:
        v45 = 0;
        v46 = @"Top";
        goto LABEL_30;
    }
  }

  v46 = 0;
  v45 = 1;
LABEL_30:
  if ((v35 & 0x1D00000000) != 0x100000000)
  {
    v52 = 0;
LABEL_34:
    if ((v43 & 0x1D00000000) == 0x100000000)
    {
      v54 = FigGeometryDimensionCopyAsDictionary(VerticalEdgeOffset, v43, v7);
      if (!v54)
      {
        fcs_setDictionaryFromPropertyCaptionPosition_cold_2(&v57);
        v53 = v57;
LABEL_45:
        if (v52)
        {
          CFRelease(v52);
        }

        if (v54)
        {
          CFRelease(v54);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v54 = 0;
    }

    if (v56)
    {
      if (v45)
      {
        goto LABEL_40;
      }
    }

    else
    {
      CFDictionarySetValue(v16, @"HorizontalEdge", v44);
      if (v45)
      {
LABEL_40:
        if (!v52)
        {
LABEL_42:
          if (v54)
          {
            CFDictionarySetValue(v16, @"VerticalOffset", v54);
          }

          CFDictionarySetValue(a1, a2, v16);
          v53 = 0;
          goto LABEL_45;
        }

LABEL_41:
        CFDictionarySetValue(v16, @"HorizontalOffset", v52);
        goto LABEL_42;
      }
    }

    CFDictionarySetValue(v16, @"VerticalEdge", v46);
    if (!v52)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v47 = v44;
  v48 = VerticalEdgeOffset;
  v49 = HorizontalEdgeOffset;
  v50 = v43;
  v51 = FigGeometryDimensionCopyAsDictionary(v49, v35, v7);
  v43 = v50;
  v52 = v51;
  VerticalEdgeOffset = v48;
  v44 = v47;
  if (v52)
  {
    goto LABEL_34;
  }

  fcs_setDictionaryFromPropertyCaptionPosition_cold_3(&v57);
  v53 = v57;
LABEL_49:
  CFRelease(v16);
  return v53;
}

void fcs_deserializeCaptionStyleApplier(__CFString *a1, CFArrayRef theArray, uint64_t a3)
{
  v37 = 0;
  cf = 0;
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    *a3 = 0;
    return;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    Value = CFDictionaryGetValue(ValueAtIndex, @"PropertyRange");
    v39 = 0;
    v40 = 0;
    if (Value && (v11 = Value, v12 = CFGetTypeID(Value), v12 == CFDictionaryGetTypeID()))
    {
      FigCFDictionaryGetCFIndexIfPresent(v11, @"RangeLocation", &v39, v13, v14, v15, v16, v17, v37, cf, v39, v40, v41, v42, v43, v44, v45, v46);
      if (v23)
      {
        FigCFDictionaryGetCFIndexIfPresent(v11, @"RangeLength", &v40, v18, v19, v20, v21, v22, v37, cf, v39, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    else
    {
      fcs_deserializeCaptionStyleApplier_cold_1();
    }

    v25 = v39;
    v24 = v40;
    v26 = CFDictionaryGetValue(ValueAtIndex, @"DynamicStyleValue");
    if (!CFEqual(a1, @"Ruby"))
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v27 = CFArrayGetValueAtIndex(v26, 0);
    v28 = fcs_deserializeAndCreateFigCaptionData(v27, &cf);
    if (v28)
    {
      goto LABEL_25;
    }

    v29 = *(a3 + 8);
    v30 = cf;
    v31 = *(*(CMBaseObjectGetVTable(v29) + 16) + 32);
    if (!v31)
    {
LABEL_24:
      v28 = -12782;
      goto LABEL_25;
    }

    v32 = v29;
    v33 = @"Ruby";
LABEL_19:
    v28 = v31(v32, v33, v30, v25, v24);
    if (v28)
    {
      goto LABEL_25;
    }

    if (v7 == ++v8)
    {
      v28 = 0;
      goto LABEL_25;
    }
  }

  if (v37)
  {
    CFRelease(v37);
    v37 = 0;
  }

  FigThreadRunOnce(&fcs_getPListableToCaptionInfoMappingDictionary_sInitializePListableToCaptionPropertyMappingOnce, fcs_initializePListableToCaptionPropertyMappingDictionary);
  v34 = CFDictionaryGetValue(sPListableToCaptionInfoMappingDictionary, @"StyleProperty");
  if (v34)
  {
    v28 = fcs_createDynamicStyleFromPListable(a1, v26, v34, &v37);
    if (v28)
    {
      goto LABEL_25;
    }

    v35 = *(a3 + 8);
    v30 = v37;
    v31 = *(*(CMBaseObjectGetVTable(v35) + 16) + 32);
    if (!v31)
    {
      goto LABEL_24;
    }

    v32 = v35;
    v33 = a1;
    goto LABEL_19;
  }

  fcs_deserializeCaptionStyleApplier_cold_2(&v39);
  v28 = v39;
LABEL_25:
  v36 = cf;
  *a3 = v28;
  if (v36)
  {
    CFRelease(v36);
  }

  if (v37)
  {
    CFRelease(v37);
  }
}

size_t fcs_deserializeAndSetRegionProperty(const __CFDictionary *a1, CFTypeRef *a2)
{
  cf = 0;
  if (!a1)
  {
    fcs_deserializeAndSetRegionProperty_cold_2(&v9);
    return v9;
  }

  if (!a2)
  {
    fcs_deserializeAndSetRegionProperty_cold_1(&v9);
    return v9;
  }

  v4 = FigCaptionRegionCreateMutable(*MEMORY[0x1E695E480], &cf);
  v5 = cf;
  if (v4 || (v7[0] = 0, v7[1] = cf, CFDictionaryApplyFunction(a1, fcs_deserializeRegionPropertyApplier, v7), v4 = LODWORD(v7[0]), v5 = cf, LODWORD(v7[0])))
  {
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v4;
}

uint64_t fcs_createDynamicStyleFromPListable(const void *a1, CFArrayRef theArray, const __CFDictionary *a3, void *a4)
{
  v25 = 0;
  cf = 0;
  if (!a1)
  {
    fcs_createDynamicStyleFromPListable_cold_6(v27 + 1);
    goto LABEL_17;
  }

  if (!theArray)
  {
    fcs_createDynamicStyleFromPListable_cold_5(v27 + 1);
    goto LABEL_17;
  }

  if (!a3)
  {
    fcs_createDynamicStyleFromPListable_cold_4(v27 + 1);
    goto LABEL_17;
  }

  if (!a4)
  {
    fcs_createDynamicStyleFromPListable_cold_3(v27 + 1);
    goto LABEL_17;
  }

  Count = CFArrayGetCount(theArray);
  Value = CFDictionaryGetValue(a3, a1);
  if (!Value)
  {
    fcs_createDynamicStyleFromPListable_cold_7(v27 + 1);
LABEL_17:
    v22 = HIDWORD(v27[0]);
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
    }

    return v22;
  }

  if (Count)
  {
    v10 = Value;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      FigCFDictionaryGetDoubleIfPresent(ValueAtIndex, @"RelativeTime", &v25, v13, v14, v15, v16, v17, v24, v25, cf, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6]);
      if (!v18)
      {
        fcs_createDynamicStyleFromPListable_cold_2(v27 + 1);
        goto LABEL_17;
      }

      v19 = CFDictionaryGetValue(ValueAtIndex, @"PropertyValue");
      if (!v19)
      {
        fcs_createDynamicStyleFromPListable_cold_1(v27 + 1);
        goto LABEL_17;
      }

      v20 = v10(v19, &cf, *&v25);
      if (v20)
      {
        break;
      }

      if (Count == ++v11)
      {
        v21 = cf;
        goto LABEL_14;
      }
    }

    v22 = v20;
    goto LABEL_18;
  }

  v21 = 0;
LABEL_14:
  v22 = 0;
  *a4 = v21;
  return v22;
}

uint64_t fcs_createDynamicStyleFromPListCFType(const void *a1, uint64_t *a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = *a2;
      if (*a2)
      {

        return FigCaptionDynamicStyleAddKeyFrameValue(v5, a1, a3);
      }

      else
      {
        v7 = *MEMORY[0x1E695E480];

        return FigCaptionDynamicStyleCreateMutable(v7, a1, a2);
      }
    }

    else
    {
      fcs_createDynamicStyleFromPListCFType_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    fcs_createDynamicStyleFromPListCFType_cold_2(&v9);
    return v9;
  }
}

uint64_t fcs_getCaptionPositionEdgeReferenceForEdgeReferenceSerializedValue(const void *a1)
{
  if (CFEqual(a1, @"Bottom"))
  {
    return 1651471476;
  }

  if (CFEqual(a1, @"Center"))
  {
    return 1667591796;
  }

  if (CFEqual(a1, @"Left"))
  {
    return 1818584692;
  }

  if (CFEqual(a1, @"Right"))
  {
    return 1919510376;
  }

  if (CFEqual(a1, @"Top"))
  {
    return 1953460256;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_4_28(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, fcs_initializeCaptionPropertyToPListableMappingDictionary);
}

uint64_t OUTLINED_FUNCTION_6_27(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, fcs_initializePListableToCaptionPropertyMappingDictionary);
}

void OUTLINED_FUNCTION_13_12(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v2, a2, v3);
}

void OUTLINED_FUNCTION_14_13(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v2, a2, v3);
}

void OUTLINED_FUNCTION_15_13(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v2, a2, v3);
}

void OUTLINED_FUNCTION_17_9(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v3, a2, v2);
}

uint64_t FigCPECryptorStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigCPECryptorStartServer_block_invoke;
  block[3] = &unk_1E74A5180;
  block[4] = &v3;
  if (FigCPECryptorStartServer_sFigCPECryptorServerSetupOnce != -1)
  {
    dispatch_once(&FigCPECryptorStartServer_sFigCPECryptorServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

size_t __FigCPECryptorStartServer_block_invoke(uint64_t a1)
{
  v7[0] = 2;
  v7[1] = cryptorServer_HandleRemoteSyncMessage;
  v7[2] = cryptorServer_HandleRemoteAsyncMessage;
  v7[3] = 0;
  v7[4] = cryptorServer_NoteEnqueueDecisionFunction;
  v7[5] = 0;
  if (FigServer_IsMediaparserd())
  {
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFC0E9uLL, "<<< FigCPECryptorServer >>>", 0x2B7, v1, v3, v4);
  }

  else
  {
    if (FigServer_IsMediaplaybackd())
    {
      v6 = "com.apple.coremedia.mediaplaybackd.figcpecryptor.xpc";
    }

    else
    {
      v6 = "com.apple.coremedia.figcpecryptor";
    }

    result = FigXPCServerStart(v6, v7, 0, &gFigCPECryptorServer);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t cryptorServer_NoteEnqueueDecisionFunction(const void *a1)
{
  if (CFEqual(a1, @"264E32A6-4322-4670-8D0F-96A237DA6D06"))
  {
    return 3;
  }

  if (CFEqual(a1, @"KeyResponseErrorOccurred"))
  {
    return 3;
  }

  result = CFEqual(a1, @"KeyRequestErrorOccurred");
  if (result)
  {
    return 3;
  }

  return result;
}

uint64_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v10 = gFigCPECryptorServer;

        return FigXPCServerAssociateCopiedObjectWithNeighborProcessByPID(v10, a2, a1, 0, 0, cryptorServer_NotificationFilter, a3);
      }

      else
      {
        FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_1(&v12, a2, 0, a4, a5, a6, 0, a8);
        return v12;
      }
    }

    else
    {
      FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_2(&v13, a2, a3, a4, a5, a6, a7, a8);
      return v13;
    }
  }

  else
  {
    FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_3(&v14, a2, a3, a4, a5, a6, a7, a8);
    return v14;
  }
}

size_t FigCPECryptorServerDisassociateCryptorWithClientPID(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      v9 = gFigCPECryptorServer;

      return FigXPCServerDisassociateObjectWithNeighborClientPID(v9, a2, a1);
    }

    else
    {
      FigCPECryptorServerDisassociateCryptorWithClientPID_cold_1(&v11, a2, a3, a4, a5, a6, a7, a8);
      return v11;
    }
  }

  else
  {
    FigCPECryptorServerDisassociateCryptorWithClientPID_cold_2(&v12, a2, a3, a4, a5, a6, a7, a8);
    return v12;
  }
}

size_t FigCPECryptorServerDisassociateCryptorWithClientConnection(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      v9 = gFigCPECryptorServer;

      return FigXPCServerDisassociateObjectWithNeighborClientConnection(v9, a2, a1);
    }

    else
    {
      FigCPECryptorServerDisassociateCryptorWithClientConnection_cold_1(&v11, 0, a3, a4, a5, a6, a7, a8);
      return v11;
    }
  }

  else
  {
    FigCPECryptorServerDisassociateCryptorWithClientConnection_cold_2(&v12, a2, a3, a4, a5, a6, a7, a8);
    return v12;
  }
}

uint64_t FigCPECryptorServerCopyCryptorForID(void *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (gFigCPECryptorServer)
  {
    v9 = FigXPCServerRetainNeighborObjectFromID(gFigCPECryptorServer, a1, a2);
    if (v9)
    {
      v18 = v9;
    }

    else
    {
      if (*a2)
      {
        v17 = CFGetTypeID(*a2);
        if (v17 == FigCPECryptorGetTypeID())
        {
          return 0;
        }
      }

      FigCPECryptorServerCopyCryptorForID_cold_1(&v20, v10, v11, v12, v13, v14, v15, v16);
      v18 = v20;
    }
  }

  else
  {
    FigCPECryptorServerCopyCryptorForID_cold_2(&v21, a1, a3, a4, a5, a6, a7, a8);
    v18 = v21;
  }

  if (a2 && v18 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v18;
}

size_t OUTLINED_FUNCTION_0_75(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a18 = 0;
  a15 = 0;
  a13 = 0;

  return cryptorServer_CopyCryptorByObjectIDForConnection(v19, v18, &a13);
}

uint64_t OUTLINED_FUNCTION_5_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return CMBaseObjectGetVTable(a15);
}

void fsbxpc_sandboxClientReset(int a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fsbxpc_sandboxClientReset_block_invoke;
  block[3] = &__block_descriptor_tmp_61;
  v2 = a1;
  dispatch_async(qword_1ED4CCEC8, block);
}

void __fsbxpc_sandboxClientReset_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = &qword_1ED4CCEE8;
  if (v1 != 2)
  {
    v2 = 0;
  }

  if (v1 == 1)
  {
    v3 = &qword_1ED4CCED0;
  }

  else
  {
    v3 = v2;
  }

  if (byte_1ED4CCF00)
  {
    v4 = &qword_1ED4CCED0;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    CFDictionaryRemoveAllValues(*v4);
    CFDictionaryRemoveAllValues(v4[1]);
    v5 = v4[2];

    CFSetRemoveAllValues(v5);
  }
}

uint64_t FigSandboxRegisterURLWithProcessAndCopyRegistration(const __CFURL *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (FigFileIsFileOnExternalStorageDevice(a1) || (result = fsbxpc_sandboxRegisterURLWithProcessCommon(a1, 1, 1, a2, a3, a4), result))
  {

    return fsbxpc_sandboxRegisterURLWithProcessCommon(a1, 1, 0, a2, a3, a4);
  }

  return result;
}

uint64_t FigSandboxAssertionGetTypeID()
{
  if (sRegisterFigSandboxAssertionTypeOnce != -1)
  {
    FigSandboxAssertionGetTypeID_cold_1();
  }

  return sFigSandboxAssertionID;
}

uint64_t RegisterFigSandboxAssertionType()
{
  result = _CFRuntimeRegisterClass();
  sFigSandboxAssertionID = result;
  return result;
}

size_t FigSandboxAssertionCreateForPID(int a1, uint64_t a2, uint64_t *a3)
{
  if (sRegisterFigSandboxAssertionTypeOnce != -1)
  {
    FigSandboxAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    *(Instance + 24) = a2;
    FigSandboxServerXPC_AddAssertionForPID(a1, a2);
    result = 0;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "<<<< FIGSANDBOX >>>>", 0x332, v3, v11, v12);
  }

  *a3 = v8;
  return result;
}

void __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  if (*(a1 + 65))
  {
    v4 = *(a1 + 66) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a1 + 56);
  v5 = *(a1 + 60);
  v7 = *(a1 + 48);
  value = 0;
  v39 = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v2, kCFURLPOSIXPathStyle, v3);
  if (v9)
  {
    v10 = v9;
    v11 = &qword_1ED4CCEE8;
    if (v5 != 2)
    {
      v11 = 0;
    }

    if (v5 == 1)
    {
      v12 = &qword_1ED4CCED0;
    }

    else
    {
      v12 = v11;
    }

    if (byte_1ED4CCF00)
    {
      v13 = &qword_1ED4CCED0;
    }

    else
    {
      v13 = v12;
    }

    if (!v13 || (v14 = v13[v6 != 0]) == 0)
    {
      __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_7(v43);
      goto LABEL_65;
    }

    v37 = v12;
    if (CFDictionaryGetValueIfPresent(v14, v2, &value))
    {
      v15 = FigCFWeakReferenceHolderCopyReferencedObject(value);
      if (v15)
      {
        v16 = v15;
        if (v7)
        {
          v17 = 0;
          v18 = 0;
          *v7 = v15;
        }

        else
        {
          v28 = v37;
          if (byte_1ED4CCF00)
          {
            v28 = &qword_1ED4CCED0;
          }

          if (v28)
          {
            CFSetSetValue(v28[2], v15);
          }

          CFRelease(v16);
          v17 = 0;
          v18 = 0;
        }

        goto LABEL_67;
      }

      CFDictionaryRemoveValue(v14, v2);
    }

    if (CFStringGetFileSystemRepresentation(v2, buffer, 1024) != 1)
    {
      __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_1(v43);
      goto LABEL_65;
    }

    if (!v4 && access(buffer, 4))
    {
      v17 = 0;
      v18 = -17509;
LABEL_67:
      CFRelease(v10);
      goto LABEL_68;
    }

    v36 = v7;
    if (!FigFileIsFileOnExternalStorageDevice(v10))
    {
      if (fsbxpc_open(buffer, 0, v41))
      {
        goto LABEL_50;
      }

LABEL_49:
      if (realpath_DARWIN_EXTSN(buffer, v41))
      {
        goto LABEL_50;
      }

      __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_6(v43);
LABEL_65:
      v17 = 0;
      goto LABEL_66;
    }

    bzero(v43, 0x400uLL);
    v40 = 0;
    v35 = v10;
    v19 = CFURLCopyAbsoluteURL(v10);
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(v8, v19);
    v21 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
    if (CFStringGetFileSystemRepresentation(v21, v43, 1024) == 1)
    {
      v22 = fsbxpc_open(v43, 1074790400, v41);
      if (v22)
      {
        v23 = CFURLCopyLastPathComponent(v19);
        v24 = v23;
        if (v23)
        {
          cf = v21;
          CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(v23, 0x8000100u, &v40);
          if (CStringPtrAndBufferToFree)
          {
            v26 = CStringPtrAndBufferToFree;
            *&v22[strlen(v22)] = 47;
            v27 = strlen(v26);
            strncat(v22, v26, v27);
          }

          v21 = cf;
          if (!v19)
          {
LABEL_42:
            if (PathComponent)
            {
              CFRelease(PathComponent);
            }

            v10 = v35;
            if (v21)
            {
              CFRelease(v21);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            free(v40);
            if (v22)
            {
LABEL_50:
              v17 = sandbox_extension_issue_file();
              if (v17)
              {
                v29 = FigSandboxRegistrationRemoteCreate(v5, v17, v2, v14, qword_1ED4CCEC8, &v39);
                if (v29)
                {
                  v18 = v29;
                  __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_2(v29);
                  goto LABEL_67;
                }

                if (v39)
                {
                  v30 = FigCFWeakReferenceHolderCreateWithReferencedObject(v39);
                  if (v30)
                  {
                    v31 = v30;
                    CFDictionarySetValue(v14, v2, v30);
                    v32 = v39;
                    if (v36)
                    {
                      *v36 = v39;
                    }

                    else
                    {
                      v33 = v37;
                      if (byte_1ED4CCF00)
                      {
                        v33 = &qword_1ED4CCED0;
                      }

                      if (v33)
                      {
                        CFSetSetValue(v33[2], v39);
                        v32 = v39;
                      }

                      if (!v32)
                      {
                        goto LABEL_63;
                      }

                      CFRelease(v32);
                    }

                    v39 = 0;
LABEL_63:
                    CFRelease(v10);
                    CFRelease(v31);
                    v18 = 0;
                    goto LABEL_68;
                  }

                  __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_3(v43);
                }

                else
                {
                  __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_4(v43);
                }
              }

              else
              {
                __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_5(v43);
              }

LABEL_66:
              v18 = *v43;
              goto LABEL_67;
            }

            goto LABEL_49;
          }

LABEL_41:
          CFRelease(v19);
          goto LABEL_42;
        }
      }

      else
      {
        v24 = 0;
      }

      if (!v19)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v24 = 0;
    v22 = 0;
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_8(v43);
  v17 = 0;
  v18 = *v43;
LABEL_68:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v17)
  {
    free(v17);
  }

  *(*(*(a1 + 32) + 8) + 24) = v18;
}

uint64_t __fsbxpc_sandboxClientOneTimeInitialization_block_invoke()
{
  qword_1ED4CCEC8 = dispatch_queue_create("FigSandboxRemoteClientQueue", 0);
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  qword_1ED4CCED8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4CCED0 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  qword_1ED4CCEE0 = CFSetCreateMutable(v0, 0, MEMORY[0x1E695E9F8]);
  result = FigRemote_ShouldConnectToMediaplaybackd();
  if (result)
  {
    qword_1ED4CCEF0 = CFDictionaryCreateMutable(v0, 0, v1, v2);
    qword_1ED4CCEE8 = CFDictionaryCreateMutable(v0, 0, v1, v2);
    result = CFSetCreateMutable(v0, 0, MEMORY[0x1E695E9F8]);
    v4 = 0;
    qword_1ED4CCEF8 = result;
  }

  else
  {
    v4 = 1;
  }

  byte_1ED4CCF00 = v4;
  return result;
}

uint64_t fsbxpc_open(const char *a1, int a2, uint64_t a3)
{
  v4 = open(a1, a2);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  if (fcntl(v4, 50, a3) == -1)
  {
    a3 = 0;
  }

  close(v5);
  return a3;
}

uint64_t figSandboxAssertionInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

__CFString *figSandboxAssertionCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSandboxAssertion %p pid: %d server: %s>", a1, *(a1 + 16), *(a1 + 24));
  return Mutable;
}

uint64_t CM8021ASClockGetTypeID()
{
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  return qword_1ED4CCF18;
}

uint64_t RegisterFig8021ASClockIDType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCF18 = result;
  return result;
}

uint64_t _CM8021ASClock_ExchangeTimeSyncFunctions(uint64_t a1)
{
  if (!qword_1ED4CD068)
  {
    result = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  result = qword_1ED4CD068;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = a1;
LABEL_6:
  qword_1ED4CD068 = v3;
  return result;
}

size_t CM8021ASClockCreate(const __CFAllocator *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v66 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CCF20 != -1)
  {
    CM8021ASClockCreate_cold_1();
  }

  if (dword_1EAF1CF48)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v56, &type);
    v12 = v56;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v57 = 136315138;
      v58 = "CM8021ASClockCreate";
      v15 = _os_log_send_and_compose_impl();
      LOBYTE(v12) = v56;
    }

    else
    {
      v15 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v15, v15 != v65, v12, 0, v13);
  }

  if (!a2)
  {
    v16 = qword_1EAF1CF40;
    v17 = v8;
    v18 = 4294951233;
    v19 = 593;
    goto LABEL_13;
  }

  if (CM8021ASClockEnsureTimeSyncServices())
  {
    v16 = qword_1EAF1CF40;
    v17 = v8;
    v18 = 4294951236;
    v19 = 602;
LABEL_13:
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v18, "<<<< 8021ASClock >>>>", v19, v17, a7, a8);
    Instance = 0;
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v24 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    *(Instance + 112) = v24;
    if (!v24)
    {
      goto LABEL_58;
    }

    v25 = FigSimpleMutexCreate();
    *(Instance + 64) = v25;
    if (!v25 || (*(Instance + 96) = 0, v26 = FigSimpleMutexCreate(), (*(Instance + 32) = v26) == 0))
    {
      v20 = 4294951231;
      goto LABEL_15;
    }

    *(Instance + 24) = FigCFWeakReferenceHolderCreateWithReferencedObject(Instance);
    v27 = FigReadWriteLockCreate(0);
    *(Instance + 16) = v27;
    v29 = (*(qword_1ED4CD068 + 88))(v27, v28);
    if (v29 == **qword_1ED4CD068)
    {
      v31 = qword_1EAF1CF40;
      v32 = v8;
      v33 = 4294951236;
      v34 = 630;
      goto LABEL_31;
    }

    v35 = (*(qword_1ED4CD068 + 32))(v29, v30);
    *(Instance + 48) = v35;
    if (v35)
    {
      FigSimpleMutexLock(*(Instance + 32));
      (*(qword_1ED4CD068 + 104))(*(Instance + 48), fig8021ASClock_GrandmasterDidChange, *(Instance + 24));
      (*(qword_1ED4CD068 + 96))(*(Instance + 48), fig8021ASClock_LockStateDidChange, *(Instance + 24));
      v36 = (*(qword_1ED4CD068 + 72))(*(Instance + 48));
      *(Instance + 40) = v36;
      if (v36 == 2)
      {
        v37 = (*(qword_1ED4CD068 + 80))(*(Instance + 48));
      }

      else
      {
        v37 = **(qword_1ED4CD068 + 8);
      }

      *(Instance + 56) = v37;
      FigSimpleMutexUnlock(*(Instance + 32));
      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(Instance + 72) = Mutable;
      if (Mutable)
      {
        v39 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], &sFig8021ASClockPortsDictionaryValueCallBacks);
        *(Instance + 80) = v39;
        if (v39)
        {
          v40 = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
          *(Instance + 88) = v40;
          if (v40)
          {
            v41 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(Instance + 104) = v41;
            if (v41)
            {
              if (!dword_1EAF1CF48)
              {
LABEL_56:
                v20 = 0;
                *a2 = Instance;
                return v20;
              }

              v56 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v56, &type);
              v43 = v56;
              if (os_log_type_enabled(v42, type))
              {
                v45 = v43;
              }

              else
              {
                v45 = v43 & 0xFFFFFFFE;
              }

              if (v45)
              {
                v46 = "not locked";
                v47 = *(Instance + 56);
                if (*(Instance + 40) == 2)
                {
                  v46 = "locked";
                }

                v57 = 136315906;
                v58 = "CM8021ASClockCreate";
                v59 = 2048;
                v60 = Instance;
                v61 = 2080;
                v62 = v46;
                v63 = 2048;
                v64 = v47;
                v48 = _os_log_send_and_compose_impl();
                LOBYTE(v43) = v56;
              }

              else
              {
                v48 = 0;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v48, v48 != v65, v43, 0, v44);
LABEL_48:
              if (dword_1EAF1CF48)
              {
                v56 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v56, &type);
                v50 = v56;
                if (os_log_type_enabled(v49, type))
                {
                  v52 = v50;
                }

                else
                {
                  v52 = v50 & 0xFFFFFFFE;
                }

                if (v52)
                {
                  v57 = 136315394;
                  v58 = "CM8021ASClockCreate";
                  v59 = 2048;
                  v60 = Instance;
                  v53 = _os_log_send_and_compose_impl();
                  LOBYTE(v50) = v56;
                }

                else
                {
                  v53 = 0;
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v53, v53 != v65, v50, 0, v51);
              }

              goto LABEL_56;
            }
          }
        }
      }

LABEL_58:
      v20 = 4294954549;
      goto LABEL_15;
    }

    v31 = qword_1EAF1CF40;
    v32 = v8;
    v33 = 4294951236;
    v34 = 636;
  }

  else
  {
    v31 = qword_1EAF1CF40;
    v32 = v8;
    v33 = 4294951233;
    v34 = 608;
  }

LABEL_31:
  v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v33, "<<<< 8021ASClock >>>>", v34, v32, v22, v23);
  if (!v20)
  {
    goto LABEL_48;
  }

LABEL_14:
  if (Instance)
  {
LABEL_15:
    CFRelease(Instance);
  }

  return v20;
}

void *LoadTimeSyncFunctions_2()
{
  v0 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFig8021ASClockTrace[1], @"8021as_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v0, 0, gFig8021ASClockTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CF48, @"8021as_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CF40);
  qword_1ED4CD048 = timesyncLogMeanIntervalApplier_doesTimeDomainConformToSyncInterval;
  qword_1ED4CD068 = &qword_1ED4CCF58;
  qword_1ED4CCF28 = FigSimpleMutexCreate();
  v8 = dlopen("/System/Library/PrivateFrameworks/TimeSync.framework/TimeSync", 4);
  v9 = 430;
  if (v8 && qword_1ED4CCF28)
  {
    qword_1ED4CCF58 = dlsym(v8, "TSNullClockIdentifier");
    if (qword_1ED4CCF58)
    {
      qword_1ED4CCF60 = dlsym(v8, "TSNullgPTPClockIdentity");
      if (qword_1ED4CCF60)
      {
        v10 = dlsym(v8, "TimeSyncAddgPTPServicesSync");
        v11 = &qword_1ED4CCF68;
        if (v10)
        {
          qword_1ED4CCF68 = v10;
          v12 = dlsym(v8, "TimeSyncRemovegPTPServices");
          v11 = &qword_1ED4CCF70;
          if (v12)
          {
            qword_1ED4CCF70 = v12;
            v13 = dlsym(v8, "TimeSyncClockCreateWithClockIdentifer");
            v11 = &qword_1ED4CCF78;
            if (v13)
            {
              qword_1ED4CCF78 = v13;
              v14 = dlsym(v8, "TimeSyncClockDispose");
              v11 = &qword_1ED4CCF80;
              if (v14)
              {
                qword_1ED4CCF80 = v14;
                v15 = dlsym(v8, "TimeSyncClockGetHostTimeAndGrandmasterIdentityForClockTime");
                v11 = &qword_1ED4CCF88;
                if (v15)
                {
                  qword_1ED4CCF88 = v15;
                  v16 = dlsym(v8, "TimeSyncClockGetClockTimeAndGrandmasterIdentityForHostTime");
                  v11 = &qword_1ED4CCF90;
                  if (v16)
                  {
                    qword_1ED4CCF90 = v16;
                    v17 = dlsym(v8, "TimeSyncClockGetClockRate");
                    v11 = &qword_1ED4CCF98;
                    if (v17)
                    {
                      qword_1ED4CCF98 = v17;
                      v18 = dlsym(v8, "TimeSyncClockGetLockState");
                      v11 = &qword_1ED4CCFA0;
                      if (v18)
                      {
                        qword_1ED4CCFA0 = v18;
                        v19 = dlsym(v8, "TimeSyncClockGetgPTPGrandmasterIdentity");
                        v11 = &qword_1ED4CCFA8;
                        if (v19)
                        {
                          qword_1ED4CCFA8 = v19;
                          v20 = dlsym(v8, "TimeSyncSystemDomainClockIdentifier");
                          v11 = &qword_1ED4CCFB0;
                          if (v20)
                          {
                            qword_1ED4CCFB0 = v20;
                            v21 = dlsym(v8, "TimeSyncClockSetLockStateChangeCallback");
                            v11 = &qword_1ED4CCFB8;
                            if (v21)
                            {
                              qword_1ED4CCFB8 = v21;
                              v22 = dlsym(v8, "TimeSyncClockSetgPTPGrandmasterChangeCallback");
                              v11 = &qword_1ED4CCFC0;
                              if (v22)
                              {
                                qword_1ED4CCFC0 = v22;
                                v23 = dlsym(v8, "TimeSyncClockAddUDPv4EndToEndPort");
                                v11 = &qword_1ED4CCFC8;
                                if (v23)
                                {
                                  qword_1ED4CCFC8 = v23;
                                  v24 = dlsym(v8, "TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity");
                                  v11 = &qword_1ED4CCFD0;
                                  if (v24)
                                  {
                                    qword_1ED4CCFD0 = v24;
                                    v25 = dlsym(v8, "TimeSyncClockRemoveUDPv4EndToEndPort");
                                    v11 = &qword_1ED4CCFD8;
                                    if (v25)
                                    {
                                      qword_1ED4CCFD8 = v25;
                                      v26 = dlsym(v8, "TimeSyncClockAddUDPv6EndToEndPort");
                                      v11 = &qword_1ED4CCFE0;
                                      if (v26)
                                      {
                                        qword_1ED4CCFE0 = v26;
                                        v27 = dlsym(v8, "TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity");
                                        v11 = &qword_1ED4CCFE8;
                                        if (v27)
                                        {
                                          qword_1ED4CCFE8 = v27;
                                          v28 = dlsym(v8, "TimeSyncClockRemoveUDPv6EndToEndPort");
                                          v11 = &qword_1ED4CCFF0;
                                          if (v28)
                                          {
                                            qword_1ED4CCFF0 = v28;
                                            v29 = dlsym(v8, "TimeSyncClockAddAWDLPort");
                                            v11 = &qword_1ED4CCFF8;
                                            if (v29)
                                            {
                                              qword_1ED4CCFF8 = v29;
                                              v30 = dlsym(v8, "TimeSyncClockRemoveAWDLPort");
                                              v11 = &qword_1ED4CD000;
                                              if (v30)
                                              {
                                                qword_1ED4CD000 = v30;
                                                v31 = dlsym(v8, "TimeSyncClockOverridePortReceiveMatching");
                                                v11 = &qword_1ED4CD008;
                                                if (v31)
                                                {
                                                  qword_1ED4CD008 = v31;
                                                  v32 = dlsym(v8, "TimeSyncClockRestorePortReceiveMatching");
                                                  v11 = &qword_1ED4CD010;
                                                  if (v32)
                                                  {
                                                    qword_1ED4CD010 = v32;
                                                    v33 = dlsym(v8, "TimeSyncPortCreateFromClock");
                                                    v11 = &qword_1ED4CD018;
                                                    if (v33)
                                                    {
                                                      qword_1ED4CD018 = v33;
                                                      v34 = dlsym(v8, "TimeSyncPortDispose");
                                                      v11 = &qword_1ED4CD020;
                                                      if (v34)
                                                      {
                                                        qword_1ED4CD020 = v34;
                                                        v35 = dlsym(v8, "TimeSyncPortEnable");
                                                        v11 = &qword_1ED4CD028;
                                                        if (v35)
                                                        {
                                                          qword_1ED4CD028 = v35;
                                                          v36 = dlsym(v8, "TimeSyncPortDisable");
                                                          v11 = &qword_1ED4CD030;
                                                          if (v36)
                                                          {
                                                            qword_1ED4CD030 = v36;
                                                            v37 = dlsym(v8, "TimeSyncPortSetRemoteSyncMessageIntervals");
                                                            v11 = &qword_1ED4CD050;
                                                            if (v37)
                                                            {
                                                              qword_1ED4CD050 = v37;
                                                              v38 = dlsym(v8, "TimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity");
                                                              v11 = &qword_1ED4CD038;
                                                              if (v38)
                                                              {
                                                                qword_1ED4CD038 = v38;
                                                                v39 = dlsym(v8, "TimeSyncClockSetAllPortRemoteSyncMessageIntervals");
                                                                v11 = &qword_1ED4CD040;
                                                                if (v39)
                                                                {
                                                                  qword_1ED4CD040 = v39;
                                                                  v40 = dlsym(v8, "TimeSyncGetClockMetricsWithSize");
                                                                  v11 = &qword_1ED4CD058;
                                                                  if (v40)
                                                                  {
                                                                    qword_1ED4CD058 = v40;
                                                                    result = dlsym(v8, "TimeSyncGetPortMetricsWithSize");
                                                                    v11 = &qword_1ED4CD060;
                                                                    if (result)
                                                                    {
                                                                      qword_1ED4CD060 = result;
                                                                      return result;
                                                                    }

                                                                    v9 = 424;
                                                                  }

                                                                  else
                                                                  {
                                                                    v9 = 423;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v9 = 420;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v9 = 418;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v9 = 415;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v9 = 414;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v9 = 413;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v9 = 412;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v9 = 411;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v9 = 408;
                                                  }
                                                }

                                                else
                                                {
                                                  v9 = 407;
                                                }
                                              }

                                              else
                                              {
                                                v9 = 405;
                                              }
                                            }

                                            else
                                            {
                                              v9 = 404;
                                            }
                                          }

                                          else
                                          {
                                            v9 = 403;
                                          }
                                        }

                                        else
                                        {
                                          v9 = 402;
                                        }
                                      }

                                      else
                                      {
                                        v9 = 401;
                                      }
                                    }

                                    else
                                    {
                                      v9 = 400;
                                    }
                                  }

                                  else
                                  {
                                    v9 = 399;
                                  }
                                }

                                else
                                {
                                  v9 = 398;
                                }
                              }

                              else
                              {
                                v9 = 396;
                              }
                            }

                            else
                            {
                              v9 = 395;
                            }
                          }

                          else
                          {
                            v9 = 393;
                          }
                        }

                        else
                        {
                          v9 = 392;
                        }
                      }

                      else
                      {
                        v9 = 391;
                      }
                    }

                    else
                    {
                      v9 = 390;
                    }
                  }

                  else
                  {
                    v9 = 389;
                  }
                }

                else
                {
                  v9 = 388;
                }
              }

              else
              {
                v9 = 387;
              }
            }

            else
            {
              v9 = 386;
            }
          }

          else
          {
            v9 = 385;
          }
        }

        else
        {
          v9 = 384;
        }

        *v11 = 0;
      }

      else
      {
        v9 = 383;
      }
    }

    else
    {
      v9 = 382;
    }
  }

  return LoadTimeSyncFunctions_cold_1_2(v9, v1, v2, v3, v4, v5, v6, v7);
}

void fig8021ASClock_GrandmasterDidChange(uint64_t a1, id *a2)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(a2);
  v3 = v2;
  if (v2)
  {
    FigReadWriteLockLockForRead(v2[2]);
    global_queue = dispatch_get_global_queue(0, 0);
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification(global_queue, DefaultLocalCenter, @"CM8021ASClockGrandmasterDidChange", v3, 0, 0, v6, v7);
    FigReadWriteLockUnlockForRead(v3[2]);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fig8021ASClock_GrandmasterDidChange_block_invoke;
  block[3] = &__block_descriptor_tmp_120;
  block[4] = v3;
  dispatch_async(global_queue, block);
}

uint64_t CM8021ASClockAddIPv4Port(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v11 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v11 == qword_1ED4CCF18)
  {
    if (a3 == 2130706433)
    {
      return 0;
    }

    else
    {
      v13 = *(qword_1ED4CD068 + 112);
      v14 = a1[6];

      return v13(v14, a2, a3);
    }
  }

  else
  {
LABEL_10:
    CM8021ASClockAddIPv4Port_cold_2(&v15, a2, a3, a4, a5, a6, a7, a8);
    return v15;
  }
}

uint64_t CM8021ASClockAddIPv6Port(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v13 = a3;
  v14 = a4;
  if (!a1)
  {
    goto LABEL_11;
  }

  v10 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v10 == qword_1ED4CCF18)
  {
    if (v13 == *MEMORY[0x1E69E99D0] && v14 == *(MEMORY[0x1E69E99D0] + 8))
    {
      return 0;
    }

    else
    {
      return (*(qword_1ED4CD068 + 136))(a1[6], a2, &v13);
    }
  }

  else
  {
LABEL_11:
    CM8021ASClockAddIPv6Port_cold_2(&v15, a2, a3, a4, a5, a6, a7, a8);
    return v15;
  }
}

uint64_t CM8021ASClockAddAWDLPort(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v11 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v11 == qword_1ED4CCF18)
  {
    (*(qword_1ED4CD068 + 160))(a1[6], a2, a3);
    return 0;
  }

  else
  {
LABEL_6:
    CM8021ASClockAddAWDLPort_cold_2(&v13, a2, a3, a4, a5, a6, a7, a8);
    return v13;
  }
}

uint64_t CM8021ASClockRemoveAWDLPort(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v11 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v11 == qword_1ED4CCF18)
  {
    (*(qword_1ED4CD068 + 168))(a1[6], a2, a3);
    return 0;
  }

  else
  {
LABEL_6:
    CM8021ASClockRemoveAWDLPort_cold_2(&v13, a2, a3, a4, a5, a6, a7, a8);
    return v13;
  }
}

uint64_t CM8021ASClockOverridePortReceiveMatching(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v12 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v12 == qword_1ED4CCF18)
  {
    v13 = *(qword_1ED4CD068 + 176);
    v14 = a1[6];

    return v13(v14, a2, a3, a4);
  }

  else
  {
LABEL_8:
    CM8021ASClockOverridePortReceiveMatching_cold_2(&v16, a2, a3, a4, a5, a6, a7, a8);
    return v16;
  }
}

uint64_t CM8021ASClockRestorePortReceiveMatching(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v10 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v10 == qword_1ED4CCF18)
  {
    v11 = *(qword_1ED4CD068 + 184);
    v12 = a1[6];

    return v11(v12, a2);
  }

  else
  {
LABEL_8:
    CM8021ASClockRestorePortReceiveMatching_cold_2(&v14, a2, a3, a4, a5, a6, a7, a8);
    return v14;
  }
}

uint64_t CM8021ASClockEnablePort(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  UInt16 = FigCFNumberCreateUInt16(*MEMORY[0x1E695E480], a2);
  v4 = (a1 + 64);
  FigSimpleMutexLock(*(a1 + 64));
  v10 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v10 == qword_1ED4CCF18)
  {
    if (!UInt16)
    {
      FigSimpleMutexUnlock(*v4);
      return 4294954549;
    }

    if (CFSetContainsValue(*(a1 + 88), UInt16))
    {
      Value = CFDictionaryGetValue(*(a1 + 80), UInt16);
      if (Value)
      {
        v19 = Value;
        if (dword_1EAF1CF48)
        {
          v29[0] = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, v29, &type);
          v21 = v29[0];
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v23 = v21;
          }

          else
          {
            v23 = v21 & 0xFFFFFFFE;
          }

          if (v23)
          {
            v29[1] = 136315138;
            v30 = "CM8021ASClockEnablePort";
            v24 = _os_log_send_and_compose_impl();
            LOBYTE(v21) = v29[0];
          }

          else
          {
            v24 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v24, v24 != v31, v21, 0, v22);
        }

        v25 = (*(qword_1ED4CD068 + 208))(v19);
        if (!v25)
        {
          CFSetRemoveValue(*(a1 + 88), UInt16);
        }
      }

      else
      {
        CM8021ASClockEnablePort_cold_3(v31, v12, v13, v14, v15, v16, v17, v18);
        v25 = v31[0];
      }
    }

    else
    {
      v25 = 0;
    }

    FigSimpleMutexUnlock(*v4);
  }

  else
  {
    v27 = CM8021ASClockEnablePort_cold_2((a1 + 64), UInt16, v31, v5, v6, v7, v8, v9);
    v25 = v31[0];
    if (v27)
    {
      return v25;
    }
  }

  CFRelease(UInt16);
  return v25;
}

uint64_t CM8021ASClockDisablePort(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  UInt16 = FigCFNumberCreateUInt16(*MEMORY[0x1E695E480], a2);
  v4 = (a1 + 64);
  FigSimpleMutexLock(*(a1 + 64));
  v10 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v10 == qword_1ED4CCF18)
  {
    if (!UInt16)
    {
      FigSimpleMutexUnlock(*v4);
      return 4294954549;
    }

    if (CFSetContainsValue(*(a1 + 88), UInt16))
    {
      v25 = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 80), UInt16);
      if (Value)
      {
        v19 = Value;
        CFSetAddValue(*(a1 + 88), UInt16);
        if (dword_1EAF1CF48)
        {
          v29[0] = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, v29, &type);
          v21 = v29[0];
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v23 = v21;
          }

          else
          {
            v23 = v21 & 0xFFFFFFFE;
          }

          if (v23)
          {
            v29[1] = 136315138;
            v30 = "CM8021ASClockDisablePort";
            v24 = _os_log_send_and_compose_impl();
            LOBYTE(v21) = v29[0];
          }

          else
          {
            v24 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v24, v24 != v31, v21, 0, v22);
        }

        v25 = (*(qword_1ED4CD068 + 216))(v19);
        if (v25)
        {
          CFSetRemoveValue(*(a1 + 88), UInt16);
        }
      }

      else
      {
        CM8021ASClockDisablePort_cold_3(v31, v12, v13, v14, v15, v16, v17, v18);
        v25 = v31[0];
      }
    }

    FigSimpleMutexUnlock(*v4);
  }

  else
  {
    v27 = CM8021ASClockDisablePort_cold_2((a1 + 64), UInt16, v31, v5, v6, v7, v8, v9);
    v25 = v31[0];
    if (v27)
    {
      return v25;
    }
  }

  CFRelease(UInt16);
  return v25;
}

uint64_t CM8021ASClockSetAllPortRemoteSyncMessageIntervals(uint64_t a1, CMTime *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  v12 = log10(Seconds);
  if (!a1)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockCreate_cold_2();
  }

  if (v14 != qword_1ED4CCF18)
  {
LABEL_20:
    CM8021ASClockSetAllPortRemoteSyncMessageIntervals_cold_4(&time, v5, v6, v7, v8, v9, v10, v11);
    return LODWORD(time.value);
  }

  if ((a2->flags & 0x1D) != 1 || (CMTimeMakeWithSeconds(&time, 0.125, 1000), time1 = *a2, CMTimeCompare(&time1, &time) < 0))
  {
    CM8021ASClockSetAllPortRemoteSyncMessageIntervals_cold_3(&time, v5, v6, v7, v8, v9, v10, v11);
    return LODWORD(time.value);
  }

  if (dword_1EAF1CF48)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v22, &type);
    v16 = v22;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      LODWORD(time1.value) = 136315650;
      *(&time1.value + 4) = "CM8021ASClockSetAllPortRemoteSyncMessageIntervals";
      LOWORD(time1.flags) = 2048;
      *(&time1.flags + 2) = a1;
      HIWORD(time1.epoch) = 1024;
      v24 = (v13 / 0.301029996);
      v19 = _os_log_send_and_compose_impl();
      LOBYTE(v16) = v22;
    }

    else
    {
      v19 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v19, v19 != &time, v16, 0, v17);
  }

  FigSimpleMutexLock(*(a1 + 64));
  if (!*(a1 + 96))
  {
    if (timesyncLogMeanIntervalApplier_registerClientAndEnsureClockStarted_onceToken != -1)
    {
      CM8021ASClockSetAllPortRemoteSyncMessageIntervals_cold_2();
    }

    dispatch_async_f(qword_1ED4CCF30, 0, timesyncLogMeanIntervalApplier_registerClientAndEnsureClockStartedInternal);
    *(a1 + 96) = 1;
  }

  FigSimpleMutexUnlock(*(a1 + 64));
  time.value = MEMORY[0x1E69E9820];
  *&time.timescale = 0x40000000;
  time.epoch = __timesyncLogMeanIntervalApplier_setIntervalAndApplyIfDifferent_block_invoke;
  v26 = &__block_descriptor_tmp_138;
  v27 = (v13 / 0.301029996);
  dispatch_async(qword_1ED4CCF30, &time);
  return 0;
}

uint64_t CM8021ASClockSetPortRemoteSyncMessageIntervals(uint64_t a1, int a2, CMTime *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  v7 = log10(Seconds);
  UInt16 = FigCFNumberCreateUInt16(*MEMORY[0x1E695E480], a2);
  v9 = (a1 + 64);
  FigSimpleMutexLock(*(a1 + 64));
  v17 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockCreate_cold_2();
  }

  if (v17 != qword_1ED4CCF18)
  {
    v39 = CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_2((a1 + 64), UInt16, &time, v12, v13, v14, v15, v16);
    value_low = LODWORD(time.value);
    if (v39)
    {
      return value_low;
    }

    goto LABEL_27;
  }

  if (!UInt16)
  {
    FigSimpleMutexUnlock(*v9);
    return 4294954549;
  }

  if ((a3->flags & 0x1D) != 1 || (CMTimeMakeWithSeconds(&time, 0.125, 1000), time1 = *a3, CMTimeCompare(&time1, &time) < 0))
  {
    CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_5(&time, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    if (dword_1EAF1CF48)
    {
      v41 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v41, &type);
      v19 = v41;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v21 = v19;
      }

      else
      {
        v21 = v19 & 0xFFFFFFFE;
      }

      if (v21)
      {
        LODWORD(time1.value) = 136315906;
        *(&time1.value + 4) = "CM8021ASClockSetPortRemoteSyncMessageIntervals";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = a1;
        HIWORD(time1.epoch) = 1024;
        v43 = a2;
        v44 = 1024;
        v45 = (v7 / 0.301029996);
        v22 = _os_log_send_and_compose_impl();
        LOBYTE(v19) = v41;
      }

      else
      {
        v22 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v22, v22 != &time, v19, 0, v20);
    }

    if (*(a1 + 96))
    {
      CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_3(&time, v10, v11, v12, v13, v14, v15, v16);
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 80), UInt16);
      if (Value)
      {
        v31 = Value;
        if (dword_1EAF1CF48)
        {
          v41 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v41, &type);
          v33 = v41;
          if (os_log_type_enabled(v32, type))
          {
            v35 = v33;
          }

          else
          {
            v35 = v33 & 0xFFFFFFFE;
          }

          if (v35)
          {
            LODWORD(time1.value) = 136315138;
            *(&time1.value + 4) = "CM8021ASClockSetPortRemoteSyncMessageIntervals";
            v36 = _os_log_send_and_compose_impl();
            LOBYTE(v33) = v41;
          }

          else
          {
            v36 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v36, v36 != &time, v33, 0, v34);
        }

        value_low = (*(qword_1ED4CD068 + 248))(v31, (v7 / 0.301029996));
        goto LABEL_26;
      }

      CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_4(&time, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  value_low = LODWORD(time.value);
LABEL_26:
  FigSimpleMutexUnlock(*v9);
LABEL_27:
  CFRelease(UInt16);
  return value_low;
}

void CM8021ASClockGetClockTimeForHostTime(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, CMBlockBufferFlags a7@<W6>, CMBlockBufferRef *a8@<X7>, CMTime *a9@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = **(qword_1ED4CD068 + 8);
  *&a9->value = *&kCMTimeInvalid.value;
  a9->epoch = 0;
  if (!a1)
  {
    goto LABEL_19;
  }

  v12 = a1;
  a1 = CFGetTypeID(a1);
  v13 = a1;
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v13 == qword_1ED4CCF18)
  {
    if (*(a2 + 12))
    {
      v14 = *(qword_1ED4CD068 + 56);
      v15 = *(v12 + 6);
      hostTime = *a2;
      v16 = CMClockConvertHostTimeToSystemUnits(&hostTime);
      v17 = v14(v15, v16, &v29);
      FigSimpleMutexLock(*(v12 + 4));
      v18 = v29;
      v19 = *(v12 + 7);
      FigSimpleMutexUnlock(*(v12 + 4));
      if (v18 == v19 && v17 != -1)
      {
        CMTimeMake(a9, v17, 1000000000);
        if (a3)
        {
          *a3 = v29;
        }
      }

      if (dword_1EAF1CF48 >= 2)
      {
        v28 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v28, &type);
        v21 = v28;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v23 = v21;
        }

        else
        {
          v23 = v21 & 0xFFFFFFFE;
        }

        if (v23)
        {
          hostTime = *a2;
          Seconds = CMTimeGetSeconds(&hostTime);
          hostTime = *a9;
          v25 = CMTimeGetSeconds(&hostTime);
          v30 = 136316162;
          v31 = "CM8021ASClockGetClockTimeForHostTime";
          v32 = 2048;
          v33 = v12;
          v34 = 2048;
          v35 = Seconds;
          v36 = 2048;
          v37 = v25;
          v38 = 2048;
          v39 = v29;
          v26 = _os_log_send_and_compose_impl();
          LOBYTE(v21) = v28;
        }

        else
        {
          v26 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v26, v26 != &hostTime, v21, 0, v22);
      }
    }

    else
    {
      CM8021ASClockGetClockTimeForHostTime_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
LABEL_19:
    CM8021ASClockGetClockTimeForHostTime_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

size_t CM8021ASClockGetHostTimeForClockTime@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, CMBlockBufferFlags a7@<W6>, CMBlockBufferRef *a8@<X7>, CMTime *a9@<X8>)
{
  v22 = **(qword_1ED4CD068 + 8);
  *&a9->value = *&kCMTimeInvalid.value;
  a9->epoch = 0;
  if (!a1)
  {
    return CM8021ASClockGetHostTimeForClockTime_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = a1;
  a1 = CFGetTypeID(a1);
  v13 = a1;
  if (qword_1ED4CCF10 != -1)
  {
    CM8021ASClockGetTypeID_cold_1();
  }

  if (v13 != qword_1ED4CCF18)
  {
    return CM8021ASClockGetHostTimeForClockTime_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    return CM8021ASClockGetHostTimeForClockTime_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v14 = *(qword_1ED4CD068 + 48);
  v15 = *(v12 + 6);
  v21 = *a2;
  Seconds = CMTimeGetSeconds(&v21);
  v17 = v14(v15, (Seconds * 1000000000.0), &v22);
  FigSimpleMutexLock(*(v12 + 4));
  v18 = v22;
  v19 = *(v12 + 7);
  result = FigSimpleMutexUnlock(*(v12 + 4));
  if (v18 == v19 && v17 != -1)
  {
    result = CMClockMakeHostTimeFromSystemUnits(a9, v17);
    if (a3)
    {
      *a3 = v22;
    }
  }

  return result;
}

CFStringRef CM8021ASClockCopySystemClockIdentifier()
{
  if (qword_1ED4CCF20 != -1)
  {
    CM8021ASClockCreate_cold_1();
  }

  v0 = (*(qword_1ED4CD068 + 88))();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"ATSAC:%016llx", v0);
}

double fig8021ASClock_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

const __CFAllocator *fig8021ASClock_Finalize(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CF48)
  {
    v19[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, v19, &type);
    v3 = v19[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v19[1] = 136315394;
      v20 = "fig8021ASClock_Finalize";
      v21 = 2048;
      v22 = a1;
      v6 = _os_log_send_and_compose_impl();
      LOBYTE(v3) = v19[0];
    }

    else
    {
      v6 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v6, v6 != &v23, v3, 0, v4);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(qword_1ED4CD068 + 104))(v7, 0, 0);
    (*(qword_1ED4CD068 + 96))(*(a1 + 48), 0, 0);
    (*(qword_1ED4CD068 + 40))(*(a1 + 48));
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    FigSimpleMutexLock(v8);
  }

  if (*(a1 + 96))
  {
    dispatch_async(qword_1ED4CCF30, &__block_literal_global_52);
    *(a1 + 96) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    FigSimpleMutexUnlock(v9);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  FigSimpleMutexDestroy(*(a1 + 64));
  v11 = *(a1 + 72);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 104);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 112);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    FigSimpleMutexLock(*(a1 + 32));
    *(a1 + 32) = 0;
    FigSimpleMutexUnlock(v16);
  }

  result = *(a1 + 16);
  if (result)
  {
    result = FigReadWriteLockDestroy(result);
    *(a1 + 16) = 0;
  }

  if (v16)
  {
    return FigSimpleMutexDestroy(v16);
  }

  return result;
}

CFStringRef fig8021ASClock_CopyDesc(uint64_t a1)
{
  FigSimpleMutexLock(*(a1 + 32));
  v2 = *(a1 + 56);
  v3 = **(qword_1ED4CD068 + 8);
  v4 = CFGetAllocator(a1);
  if (v2 == v3)
  {
    v5 = 0;
    v6 = "not locked";
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = "locked";
  }

  v7 = CFStringCreateWithFormat(v4, 0, @"CM8021ASClock %s, GM=0x%016llx"), v6, v5);
  FigSimpleMutexUnlock(*(a1 + 32));
  return v7;
}

uint64_t timesyncLogMeanIntervalApplier_doesTimeDomainConformToSyncInterval(uint64_t a1, int a2)
{
  v3 = v2;
  v55 = *MEMORY[0x1E69E9840];
  iterator = 0;
  MEMORY[0x19A8D8680](a1, "IOService", &iterator);
  if (iterator)
  {
    v6 = IOIteratorNext(iterator);
    if (v6)
    {
      v7 = v6;
      v8 = 1;
      v9 = *MEMORY[0x1E695E480];
      while (1)
      {
        if (!IOObjectConformsTo(v7, "IOTimeSyncUnicastUDPv4EtEPort") && !IOObjectConformsTo(v7, "IOTimeSyncUnicastUDPv6EtEPort"))
        {
          goto LABEL_60;
        }

        valuePtr = 0;
        CFProperty = IORegistryEntryCreateCFProperty(v7, @"PortRole", v9, 0);
        if (CFProperty)
        {
          break;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE2CuLL, "<<<< 8021ASClock >>>>", 0x503, v3, v11, v12);
        v8 = 0;
LABEL_61:
        v7 = IOIteratorNext(iterator);
        if (!v7)
        {
          goto LABEL_65;
        }
      }

      v13 = CFProperty;
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      if ((valuePtr - 1) > 1)
      {
        if (valuePtr == 3 || !valuePtr)
        {
          if (dword_1EAF1CF48)
          {
            v42 = 0;
            v43 = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v42, &v43);
            v21 = v42;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v43))
            {
              v23 = v21;
            }

            else
            {
              v23 = v21 & 0xFFFFFFFE;
            }

            if (v23)
            {
              v24 = "disabled";
              if (valuePtr == 3)
              {
                v24 = "master";
              }

              v46 = 136315650;
              v47 = "timesyncLogMeanIntervalApplier_doesTimeDomainConformToSyncInterval";
              v48 = 2048;
              v49 = qword_1ED4CCF48;
              v50 = 2080;
              *v51 = v24;
              v25 = _os_log_send_and_compose_impl();
              LOBYTE(v21) = v42;
            }

            else
            {
              v25 = 0;
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v25, v25 != v54, v21, 0, v22);
          }

          goto LABEL_59;
        }
      }

      else
      {
        v14 = IORegistryEntryCreateCFProperty(v7, @"RemoteSyncLogMeanInterval", v9, 0);
        if (v14)
        {
          v15 = v14;
          v43 = OS_LOG_TYPE_DEFAULT;
          CFNumberGetValue(v14, kCFNumberCharType, &v43);
          if (v43 == a2)
          {
            if (dword_1EAF1CF48)
            {
              v42 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v42, &type);
              v17 = v42;
              if (os_log_type_enabled(v16, type))
              {
                v19 = v17;
              }

              else
              {
                v19 = v17 & 0xFFFFFFFE;
              }

              if (v19)
              {
                v46 = 136316162;
                v47 = "timesyncLogMeanIntervalApplier_doesTimeDomainConformToSyncInterval";
                v48 = 2048;
                v49 = qword_1ED4CCF48;
                v50 = 1024;
                *v51 = v7;
                *&v51[4] = 1024;
                *&v51[6] = valuePtr;
                v52 = 1024;
                v53 = a2;
LABEL_42:
                v33 = _os_log_send_and_compose_impl();
                LOBYTE(v17) = v42;
LABEL_52:
                v3 = v2;
                fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v33, v33 != v54, v17, 0, v18);
                goto LABEL_58;
              }

              goto LABEL_51;
            }
          }

          else
          {
            if (v43 > a2 || v43 <= OS_LOG_TYPE_DEBUG)
            {
              if (dword_1EAF1CF48)
              {
                v42 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v42, &type);
                v35 = v42;
                if (os_log_type_enabled(v34, type))
                {
                  v37 = v35;
                }

                else
                {
                  v37 = v35 & 0xFFFFFFFE;
                }

                if (v37)
                {
                  v46 = 136315906;
                  v47 = "timesyncLogMeanIntervalApplier_doesTimeDomainConformToSyncInterval";
                  v48 = 2048;
                  v49 = qword_1ED4CCF48;
                  v50 = 1024;
                  *v51 = v43;
                  *&v51[4] = 1024;
                  *&v51[6] = a2;
                  v38 = _os_log_send_and_compose_impl();
                  LOBYTE(v35) = v42;
                }

                else
                {
                  v38 = 0;
                }

                v3 = v2;
                fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v38, v38 != v54, v35, 0, v36);
                v8 = 0;
              }

              else
              {
                v8 = 0;
              }

              goto LABEL_58;
            }

            if (dword_1EAF1CF48)
            {
              v42 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v42, &type);
              v17 = v42;
              if (os_log_type_enabled(v31, type))
              {
                v32 = v17;
              }

              else
              {
                v32 = v17 & 0xFFFFFFFE;
              }

              if (v32)
              {
                v46 = 136316162;
                v47 = "timesyncLogMeanIntervalApplier_doesTimeDomainConformToSyncInterval";
                v48 = 2048;
                v49 = qword_1ED4CCF48;
                v50 = 1024;
                *v51 = v7;
                *&v51[4] = 1024;
                *&v51[6] = valuePtr;
                v52 = 1024;
                v53 = 3;
                goto LABEL_42;
              }

LABEL_51:
              v33 = 0;
              goto LABEL_52;
            }
          }

LABEL_58:
          CFRelease(v15);
          goto LABEL_59;
        }

        if (dword_1EAF1CF48)
        {
          v42 = 0;
          v43 = OS_LOG_TYPE_DEFAULT;
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, &v42, &v43);
          v27 = v42;
          if (os_log_type_enabled(v26, v43))
          {
            v29 = v27;
          }

          else
          {
            v29 = v27 & 0xFFFFFFFE;
          }

          if (v29)
          {
            v46 = 136316162;
            v47 = "timesyncLogMeanIntervalApplier_doesTimeDomainConformToSyncInterval";
            v48 = 2048;
            v49 = qword_1ED4CCF48;
            v50 = 1024;
            *v51 = v7;
            *&v51[4] = 1024;
            *&v51[6] = valuePtr;
            v52 = 1024;
            v53 = a2;
            v30 = _os_log_send_and_compose_impl();
            LOBYTE(v27) = v42;
          }

          else
          {
            v30 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v30, v30 != v54, v27, 0, v28);
          v8 = 0;
          goto LABEL_59;
        }
      }

      v8 = 0;
LABEL_59:
      CFRelease(v13);
LABEL_60:
      IOObjectRelease(v7);
      goto LABEL_61;
    }

    v8 = 1;
LABEL_65:
    IOObjectRelease(iterator);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE2CuLL, "<<<< 8021ASClock >>>>", 0x537, v2, v4, v5);
    return 0;
  }

  return v8;
}

void timesyncLogMeanIntervalApplier_lockStateChangedCallback(uint64_t a1, uint64_t a2, int a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __timesyncLogMeanIntervalApplier_lockStateChangedCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_126;
  block[4] = a2;
  block[5] = a1;
  v4 = a3;
  dispatch_async(qword_1ED4CCF30, block);
}

void timesyncLogMeanIntervalApplier_restartIntervalApplierInternal()
{
  v9 = *MEMORY[0x1E69E9840];
  if (word_1ED4CCF50 <= 0)
  {
    if (dword_1EAF1CF48 >= 2)
    {
      v6[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF40, 1, v6, &type);
      v1 = v6[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v3 = v1;
      }

      else
      {
        v3 = v1 & 0xFFFFFFFE;
      }

      if (v3)
      {
        v6[1] = 136315138;
        v7 = "timesyncLogMeanIntervalApplier_restartIntervalApplierInternal";
        v4 = _os_log_send_and_compose_impl();
        LOBYTE(v1) = v6[0];
      }

      else
      {
        v4 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF40, 1u, 1, v4, v4 != &v8, v1, 0, v2);
    }

    dispatch_async_f(qword_1ED4CCF30, 0, timesyncLogMeanIntervalApplier_applyIntervalInternal);
  }

  word_1ED4CCF50 = 100;
}

uint64_t OUTLINED_FUNCTION_11_15(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{
  a15 = 0;
  a14 = 0;
  v17 = *(v15 + 3904);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v17, 1, &a15, &a14);
}

uint64_t OUTLINED_FUNCTION_15_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19)
{
  a19 = 0;
  a18 = 0;
  v21 = *(v19 + 3904);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v21, 1, &a19, &a18);
}

BOOL OUTLINED_FUNCTION_17_10(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_20_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{
  a19 = 0;
  a18 = 0;
  v20 = qword_1EAF1CF40;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v20, 1, &a19, &a18);
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  a20 = 0;
  a29 = 0;
  v31 = *(v29 + 3904);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v31, 1, &a20, &a29);
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int a17)
{
  a17 = 0;
  a16 = 0;
  v19 = *(v17 + 3904);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v19, 1, &a17, &a16);
}

uint64_t OUTLINED_FUNCTION_26_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17)
{
  a17 = 0;
  a16 = 0;
  v19 = *(v17 + 3904);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v19, 1, &a17, &a16);
}

void OUTLINED_FUNCTION_27_8(uint64_t *a1, unsigned __int16 a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose(a1, a2, a3, a4, a5, v8, 0, a8);
}

uint64_t OUTLINED_FUNCTION_28_8@<X0>(UInt8 *bytes@<X1>, int a2@<W8>, uint64_t a3, CFDataRef a4)
{

  return fig8021ASClock_copyCFTypeRepresentationOfAddress(bytes, a2, &a4);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_33_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, int a26)
{
  v28 = *(v26 + 3904);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v28, 1, &a26, &a25);
}

void OUTLINED_FUNCTION_34_4(uint64_t *a1, unsigned __int16 a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose(a1, a2, a3, a4, a5, v8, 0, a8);
}

uint64_t FigTransportDiscoveryGetTypeID()
{
  if (FigTransportDiscoveryGetTypeID_sFigTransportDiscoveryInitOnce != -1)
  {
    FigTransportDiscoveryGetTypeID_cold_1();
  }

  return FigTransportDiscoveryGetTypeID_sFigTransportDiscoveryTypeID;
}

uint64_t __FigTransportDiscoveryGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigTransportDiscoveryGetTypeID_sFigTransportDiscoveryTypeID = result;
  return result;
}

uint64_t FigTransportDiscoveryGetSharedDiscovery()
{
  if (FigTransportDiscoveryGetSharedDiscovery_sCreateSharedDiscoveryOnce != -1)
  {
    FigTransportDiscoveryGetSharedDiscovery_cold_1();
  }

  return FigTransportDiscoveryGetSharedDiscovery_sSharedDiscovery;
}

CFMutableArrayRef __FigTransportDiscoveryGetSharedDiscovery_block_invoke()
{
  if (FigTransportDiscoveryGetTypeID_sFigTransportDiscoveryInitOnce != -1)
  {
    FigTransportDiscoveryGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = dispatch_queue_create("com.apple.coremedia.transportdiscovery", 0);
  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  *(Instance + 32) = result;
  FigTransportDiscoveryGetSharedDiscovery_sSharedDiscovery = Instance;
  return result;
}

void *FigTransportDiscoveryAddEventHandler(void *a1, NSObject *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A0040FC6C5850uLL);
  if (!a2)
  {
    a2 = MEMORY[0x1E69E96A0];
  }

  *v6 = FigAtomicIncrement32(ftd_MakeHandler_sIdentifier);
  v6[1] = a2;
  dispatch_retain(a2);
  v6[2] = _Block_copy(a3);
  CFRetain(a1);
  v7 = a1[2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __FigTransportDiscoveryAddEventHandler_block_invoke;
  v9[3] = &__block_descriptor_tmp_12_5;
  v9[4] = a1;
  v9[5] = v6;
  dispatch_async(v7, v9);
  return v6;
}

void __FigTransportDiscoveryAddEventHandler_block_invoke(uint64_t a1)
{
  CFArrayAppendValue(*(*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3)
  {
    do
    {
      ftd_PostEvent(*(a1 + 32), *(a1 + 40), 1, v3);
      v3 = *v3;
    }

    while (v3);
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

void FigTransportDiscoveryRemoveEventHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __FigTransportDiscoveryRemoveEventHandler_block_invoke;
  v3[3] = &__block_descriptor_tmp_13_5;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void __FigTransportDiscoveryRemoveEventHandler_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v7.length = CFArrayGetCount(v2);
  v7.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v7, *(a1 + 40));
  if (FirstIndexOfValue != -1)
  {
    v4 = FirstIndexOfValue;
    ftd_FreeHandler(*(a1 + 40));
    v5 = *(*(a1 + 32) + 32);

    CFArrayRemoveValueAtIndex(v5, v4);
  }
}

void ftd_FreeHandler(void *a1)
{
  if (a1)
  {
    *a1 = 0;
    dispatch_release(*(a1 + 1));
    _Block_release(*(a1 + 2));

    free(a1);
  }
}

void FigTransportDiscoveryStart(void *a1)
{
  CFRetain(a1);
  v2 = a1[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigTransportDiscoveryStart_block_invoke;
  block[3] = &__block_descriptor_tmp_14_4;
  block[4] = a1;
  dispatch_async(v2, block);
}

void __FigTransportDiscoveryStart_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3 < 1)
  {
    v15[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v15, &type);
    v5 = v15[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v15[1] = 136315138;
      v16 = "ftd_Start";
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(v5) = v15[0];
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v8, v8 != &v17, v5, 0, v6);
    v9 = IOServiceMatching("IOUSBInterface");
    if (v9)
    {
      v10 = v9;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable && (v12 = Mutable, CFDictionarySetInt64(Mutable, @"idVendor", 1452), CFDictionarySetInt64(v12, @"bInterfaceClass", 255), CFDictionarySetInt64(v12, @"bInterfaceSubClass", 42), CFDictionarySetInt64(v12, @"bInterfaceProtocol", 255), CFDictionarySetValue(v10, @"IOPropertyMatch", v12), CFRelease(v12), v13 = IONotificationPortCreate(*MEMORY[0x1E696CD60]), (*(v2 + 40) = v13) != 0))
      {
        IONotificationPortSetDispatchQueue(v13, *(v2 + 16));
        if (!IOServiceAddMatchingNotification(*(v2 + 40), "IOServiceFirstMatch", v10, ftd_Attached, v2, (v2 + 48)))
        {
          CFRetain(v2);
          ++*(v2 + 24);
          ftd_Attached(v2, *(v2 + 48));
          goto LABEL_14;
        }
      }

      else
      {
        CFRelease(v10);
      }
    }

    ftd_Stop(v2);
    goto LABEL_14;
  }

  *(v2 + 24) = v3 + 1;
LABEL_14:
  CFRelease(*(a1 + 32));
}

void FigTransportDiscoveryStop(void *a1)
{
  CFRetain(a1);
  v2 = a1[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigTransportDiscoveryStop_block_invoke;
  block[3] = &__block_descriptor_tmp_15_5;
  block[4] = a1;
  dispatch_async(v2, block);
}

void __FigTransportDiscoveryStop_block_invoke(uint64_t a1)
{
  ftd_Stop(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void ftd_Stop(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v13, &type);
  v3 = v13[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v5 = v3;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFE;
  }

  if (v5)
  {
    v13[1] = 136315138;
    v14 = "ftd_Stop";
    v6 = _os_log_send_and_compose_impl();
    LOBYTE(v3) = v13[0];
  }

  else
  {
    v6 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v6, v6 != &v15, v3, 0, v4);
  v7 = *(a1 + 24);
  v8 = __OFSUB__(v7--, 1);
  *(a1 + 24) = v7;
  if ((v7 < 0) ^ v8 | (v7 == 0))
  {
    while (1)
    {
      v9 = *(a1 + 56);
      if (!v9)
      {
        break;
      }

      *(a1 + 56) = *v9;
      ftd_FreeDevice(v9);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      IOObjectRelease(v10);
      *(a1 + 48) = 0;
      CFRelease(a1);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      IONotificationPortDestroy(v11);
      *(a1 + 40) = 0;
    }

    ftd_PostEventOnAllHandlers(a1, 3, 0);
  }
}

double ftd_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void ftd_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (CFArrayGetCount(*(a1 + 32)) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v3);
      ftd_FreeHandler(ValueAtIndex);
      ++v3;
    }

    while (CFArrayGetCount(*(a1 + 32)) > v3);
  }

  CFArrayRemoveAllValues(*(a1 + 32));
  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t ftd_Attached(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    while (1)
    {
      valuePtr = 0;
      CFProperty = IORegistryEntryCreateCFProperty(v5, @"idProduct", 0, 0);
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      if (CFProperty)
      {
        CFRelease(CFProperty);
      }

      if ((valuePtr & 0xFFF0u) - 4752 > 0x20 || ((1 << ((valuePtr & 0xF0u) + 112)) & 0x100010001) == 0)
      {
        goto LABEL_16;
      }

      parent = 0;
      if (IORegistryEntryGetParentEntry(v5, "IOService", &parent))
      {
        break;
      }

      v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x1060040EFD7669EuLL);
      v9 = v8;
      if (!v8)
      {
        goto LABEL_19;
      }

      if (FigCFIOKitObjectCreate(v8 + 2, v5))
      {
        goto LABEL_19;
      }

      *(v9 + 4) = IORegistryEntryCreateCFProperty(parent, @"kUSBSerialNumberString", 0, 0);
      IOObjectRelease(parent);
      v10 = *(v9 + 4);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = CFGetTypeID(v10);
      if (v11 != CFStringGetTypeID() || IOServiceAddInterestNotification(*(a1 + 40), v5, "IOGeneralInterest", ftd_Detached, v9, v9 + 6))
      {
        goto LABEL_19;
      }

      CFRetain(a1);
      *v9 = *(a1 + 56);
      *(v9 + 1) = a1;
      *(a1 + 56) = v9;
      ftd_FreeDevice(0);
      ftd_PostEventOnAllHandlers(a1, 1, v9);
LABEL_16:
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    v9 = 0;
LABEL_19:
    ftd_FreeDevice(v9);
    goto LABEL_16;
  }

  return result;
}

CFIndex ftd_PostEventOnAllHandlers(CFArrayRef *a1, int a2, uint64_t a3)
{
  v6 = a1 + 4;
  result = CFArrayGetCount(a1[4]);
  if (result >= 1)
  {
    return ftd_PostEventOnAllHandlers_cold_1(v6, a1, a2, a3);
  }

  return result;
}

void ftd_Detached(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v4 = (*(a1 + 8) + 56);
    while (1)
    {
      v5 = v4;
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == a1)
      {
        *v5 = *v4;
        ftd_PostEventOnAllHandlers(*(a1 + 8), 2, a1);

        ftd_FreeDevice(a1);
        return;
      }
    }
  }
}

void ftd_FreeDevice(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
      a1[4] = 0;
    }

    v3 = *(a1 + 6);
    if (v3)
    {
      IOObjectRelease(v3);
      *(a1 + 6) = 0;
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
      a1[2] = 0;
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t FigEndpointStreamGetClassID()
{
  if (_MergedGlobals_60 != -1)
  {
    FigEndpointStreamGetClassID_cold_1();
  }

  return qword_1ED4CD078;
}

size_t stream_getClassID_0(void *a1)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&stream_getClassID_sFigEndpointStreamClassDesc, ClassID, 1, a1, v3, v4, v5, v6);
}

uint64_t FigEndpointStreamGetTypeID()
{
  if (_MergedGlobals_60 != -1)
  {
    FigEndpointStreamGetClassID_cold_1();
  }

  v1 = qword_1ED4CD078;

  return CMBaseClassGetCFTypeID(v1);
}

size_t RegisterFigFairPlayCPECryptorType()
{
  ClassID = FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass(&sFigCPEFairPlayCryptorClassDesc, ClassID, 0, &sFigCPEFairPlayCryptorClassID, v1, v2, v3, v4);
}

void FigIOSurfaceByteStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    IOSurfaceUnlock(*DerivedStorage, *(DerivedStorage + 16) == 0, 0);
    IOSurfaceDecrementUseCount(*DerivedStorage);
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
    }
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

size_t FigIOSurfaceByteStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"FBS_EntireLength") || CFEqual(a2, @"FBS_AvailableLength"))
  {
    SInt64 = FigCFNumberCreateSInt64(*MEMORY[0x1E695E480], *(DerivedStorage + 8));
LABEL_4:
    v9 = SInt64;
LABEL_5:
    result = 0;
    *a4 = v9;
    return result;
  }

  if (CFEqual(a2, @"FBS_EntireLengthAvailableOnDemand"))
  {
    v11 = *MEMORY[0x1E695E4D0];
LABEL_8:
    SInt64 = CFRetain(v11);
    goto LABEL_4;
  }

  if (CFEqual(a2, @"FBS_URL"))
  {
    v11 = *(DerivedStorage + 24);
    if (v11)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_FileType"))
  {
    v11 = *(DerivedStorage + 40);
    if (v11)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_MIMEType"))
  {
    v11 = *(DerivedStorage + 32);
    if (v11)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_ReadSupported"))
  {
    v12 = MEMORY[0x1E695E4D0];
    goto LABEL_23;
  }

  if (CFEqual(a2, @"FBS_WriteSupported"))
  {
    v12 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 16))
    {
      v12 = MEMORY[0x1E695E4C0];
    }

LABEL_23:
    v11 = *v12;
    if (!*v12)
    {
      v9 = 0;
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE10uLL, "(Fig)", 0xD2, v4, v13, v14);
}

size_t FigIOSurfaceByteStreamSetProperty(const void *a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"FBS_URL"))
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFURLGetTypeID())
      {
        v9 = DerivedStorage[3];
        DerivedStorage[3] = a3;
        goto LABEL_9;
      }

      FigIOSurfaceByteStreamSetProperty_cold_1(&v18);
      return v18;
    }

    v9 = DerivedStorage[3];
    DerivedStorage[3] = 0;
    if (!v9)
    {
      return 0;
    }

LABEL_21:
    CFRelease(v9);
    return 0;
  }

  if (!CFEqual(a2, @"FBS_FileType"))
  {
    if (CFEqual(a2, @"FBS_MIMEType"))
    {
      if (!a3 || (v13 = CFGetTypeID(a3), v13 == CFStringGetTypeID()))
      {
        v14 = DerivedStorage[4];
        if (v14)
        {
          CFRelease(v14);
          DerivedStorage[4] = 0;
        }

        if (a3)
        {
          v15 = CFGetAllocator(a1);
          Copy = CFStringCreateCopy(v15, a3);
          result = 0;
          DerivedStorage[4] = Copy;
          return result;
        }

        return 0;
      }

      FigIOSurfaceByteStreamSetProperty_cold_3(&v20);
      return v20;
    }

    else
    {

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE10uLL, "(Fig)", 0xEF, v3, v11, v12);
    }
  }

  if (!a3)
  {
    v9 = DerivedStorage[5];
    DerivedStorage[5] = 0;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v10 = CFGetTypeID(a3);
  if (v10 == CFNumberGetTypeID())
  {
    v9 = DerivedStorage[5];
    DerivedStorage[5] = a3;
LABEL_9:
    CFRetain(a3);
    if (!v9)
    {
      return 0;
    }

    goto LABEL_21;
  }

  FigIOSurfaceByteStreamSetProperty_cold_2(&v19);
  return v19;
}

uint64_t FigIOSurfaceByteStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(CMBaseObject);
  if (a3)
  {
    v7 = DerivedStorage;
    result = 0;
    *a3 = (*(v7 + 8) - a2) & ~((*(v7 + 8) - a2) >> 63);
  }

  else
  {
    FigIOSurfaceByteStreamGetAvailableLengthAtOffset_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t FigIOSurfaceByteStreamReadAndCreateBlockBuffer(const void *a1, size_t a2, uint64_t a3, CMBlockBufferRef *a4, size_t *a5)
{
  v10 = CFGetAllocator(a1);

  return CMCreateContiguousBlockBufferFromStream(a1, v10, a2, a3, a4, a5);
}

uint64_t FigHALAudioPluginGetClassID()
{
  if (FigHALAudioPluginGetClassID_sRegisterFigHALAudioPluginClassOnce != -1)
  {
    FigHALAudioPluginGetClassID_cold_1();
  }

  return FigHALAudioPluginGetClassID_sFigHALAudioPluginClassID;
}

size_t __FigHALAudioPluginGetClassID_block_invoke()
{
  ClassID = FigHALAudioObjectGetClassID();

  return FigBaseClassRegisterClass(&FigHALAudioPluginGetClassID_sFigHALAudioPluginClassDesc, ClassID, 0, &FigHALAudioPluginGetClassID_sFigHALAudioPluginClassID, v1, v2, v3, v4);
}

uint64_t RegisterFigCaptionPositionType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionPositionID = result;
  return result;
}

uint64_t FigCaptionPositionGetHorizontalEdgeReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  FigCaptionPositionGetHorizontalEdgeReference_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  return 1701999215;
}

uint64_t FigCaptionPositionGetHorizontalEdgeOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v8 = (a1 + 24);
  }

  else
  {
    FigCaptionPositionGetHorizontalEdgeOffset_cold_1(0, a2, a3, a4, a5, a6, a7, a8);
    v8 = &kFigGeometryDimensionInvalid;
  }

  return *v8;
}

uint64_t FigCaptionPositionGetVerticalEdgeReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    return *(a1 + 20);
  }

  FigCaptionPositionGetVerticalEdgeReference_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  return 1701999215;
}

uint64_t FigCaptionPositionGetVerticalEdgeOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v8 = (a1 + 40);
  }

  else
  {
    FigCaptionPositionGetVerticalEdgeOffset_cold_1(0, a2, a3, a4, a5, a6, a7, a8);
    v8 = &kFigGeometryDimensionInvalid;
  }

  return *v8;
}

uint64_t FigCaptionPositionGetEffectiveHorizontalEdgeReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  FigCaptionPositionGetEffectiveHorizontalEdgeReference_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  return 1701999215;
}

uint64_t FigCaptionPositionGetEffectiveHorizontalEdgeOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v8 = (a1 + 64);
  }

  else
  {
    FigCaptionPositionGetEffectiveHorizontalEdgeOffset_cold_1(0, a2, a3, a4, a5, a6, a7, a8);
    v8 = &kFigGeometryDimensionInvalid;
  }

  return *v8;
}

uint64_t FigCaptionPositionGetEffectiveVerticalEdgeReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    return *(a1 + 60);
  }

  FigCaptionPositionGetEffectiveVerticalEdgeReference_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  return 1701999215;
}

uint64_t FigCaptionPositionGetEffectiveVerticalEdgeOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v8 = (a1 + 80);
  }

  else
  {
    FigCaptionPositionGetEffectiveVerticalEdgeOffset_cold_1(0, a2, a3, a4, a5, a6, a7, a8);
    v8 = &kFigGeometryDimensionInvalid;
  }

  return *v8;
}

uint64_t FigCaptionAbstractPositionEqualToAbstractPosition(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 27;
  }

  if ((v6 & 1) == 0)
  {
    v4 = 1;
    if ((v6 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (*(a1 + 20) == *(a2 + 20))
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 16) == *(a2 + 16);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  if ((v6 & 8) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      return v4;
    }

    goto LABEL_17;
  }

  if (FigGeometryDimensionEqualToDimension(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  if ((v6 & 0x10) != 0)
  {
LABEL_17:
    if (FigGeometryDimensionEqualToDimension(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48)))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t FigCaptionPositionCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (a8)
  {
    v11 = a5;
    v14 = a2;
    FigThreadRunOnce(&sRegisterFigCaptionPositionTypeOnce, RegisterFigCaptionPositionType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v23 = Instance;
      *(Instance + 24) = a3;
      *(Instance + 32) = a4;
      v24 = (Instance + 24);
      *(Instance + 40) = a6;
      v25 = (Instance + 40);
      *(Instance + 16) = v14;
      *(Instance + 20) = v11;
      *(Instance + 48) = a7;
      *(Instance + 64) = *(Instance + 24);
      *(Instance + 56) = v14;
      *(Instance + 60) = v11;
      *(Instance + 80) = *(Instance + 40);
      v26 = v14 != 0;
      if (v14)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      if ((a4 & 0x1D00000000) == 0x100000000)
      {
        v26 = v27;
      }

      if (v11)
      {
        ++v26;
      }

      if ((a7 & 0x1D00000000) == 0x100000000)
      {
        ++v26;
      }

      *(Instance + 96) = v26;
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          FigGeometryDimensionMake();
          v29 = v42;
          v31 = v43;
          FigGeometryDimensionMake();
          v33 = v44;
          v35 = v45;
          FigGeometryDimensionMake();
          *(v23 + 56) = 0x746F70206C656674;
          v46 = *(v23 + 16);
          if (v46 > 1818584691)
          {
            if (v46 != 1919510376)
            {
              if (v46 != 1818584692)
              {
                goto LABEL_107;
              }

              v49 = *(v23 + 20);
              if (v49 > 1667591795)
              {
                if (v49 != 1667591796)
                {
                  if (v49 != 1953460256)
                  {
                    goto LABEL_107;
                  }

                  *(v23 + 64) = v29;
                  *(v23 + 72) = v31;
                  goto LABEL_73;
                }

                *(v23 + 64) = v29;
                *(v23 + 72) = v31;
                goto LABEL_106;
              }

              if (v49)
              {
                if (v49 == 1651471476)
                {
                  *(v23 + 64) = v29;
                  *(v23 + 72) = v31;
                  goto LABEL_100;
                }

                goto LABEL_107;
              }

              goto LABEL_79;
            }

            v52 = *(v23 + 20);
            if (v52 > 1667591795)
            {
              if (v52 != 1667591796)
              {
                if (v52 != 1953460256)
                {
                  goto LABEL_107;
                }

                *(v23 + 64) = v36;
                *(v23 + 72) = v37;
                goto LABEL_73;
              }

              goto LABEL_97;
            }

            if (v52)
            {
              if (v52 != 1651471476)
              {
                goto LABEL_107;
              }

              goto LABEL_99;
            }

LABEL_76:
            *(v23 + 64) = v36;
            *(v23 + 72) = v37;
            goto LABEL_104;
          }

          if (v46)
          {
            if (v46 != 1667591796)
            {
              goto LABEL_107;
            }

            v47 = *(v23 + 20);
            if (v47 > 1667591795)
            {
              if (v47 != 1667591796)
              {
                if (v47 != 1953460256)
                {
                  goto LABEL_107;
                }

                *(v23 + 64) = v33;
                *(v23 + 72) = v35;
                goto LABEL_73;
              }

              goto LABEL_97;
            }

            if (v47)
            {
              if (v47 == 1651471476)
              {
                *(v23 + 64) = v33;
                *(v23 + 72) = v35;
                goto LABEL_100;
              }

              goto LABEL_107;
            }

            *(v23 + 64) = v33;
            *(v23 + 72) = v35;
LABEL_104:
            *(v24 + 56) = *v25;
            goto LABEL_107;
          }

          v39 = *(v23 + 20);
          if (v39 > 1667591795)
          {
LABEL_60:
            if (v39 != 1667591796)
            {
              v51 = 1953460256;
LABEL_62:
              if (v39 != v51)
              {
                goto LABEL_107;
              }

              goto LABEL_72;
            }

            *(v24 + 40) = *v24;
LABEL_106:
            *(v23 + 80) = v33;
            *(v23 + 88) = v35;
            goto LABEL_107;
          }

          if (v39)
          {
            v51 = 1651471476;
            goto LABEL_62;
          }
        }

        else
        {
          if (v26 == 3)
          {
            FigGeometryDimensionMake();
            v29 = v28;
            v31 = v30;
            FigGeometryDimensionMake();
            v33 = v32;
            v35 = v34;
            FigGeometryDimensionMake();
            *(v23 + 56) = 0x746F70206C656674;
            v38 = *(v23 + 16);
            if ((*(v23 + 36) & 0x1D) == 1)
            {
              if (v38 != 1919510376)
              {
                if (v38 == 1818584692)
                {
                  v39 = *(v23 + 20);
                  if (v39 == 1651471476)
                  {
                    *(v24 + 40) = *v24;
LABEL_100:
                    *(v23 + 80) = v36;
                    *(v23 + 88) = v37;
                    goto LABEL_107;
                  }

                  goto LABEL_60;
                }

LABEL_107:
                result = 0;
                *a8 = v23;
                return result;
              }

              v53 = *(v23 + 20);
              if (v53 != 1651471476)
              {
                if (v53 != 1667591796)
                {
                  if (v53 == 1953460256)
                  {
                    *(v23 + 56) = 1919510376;
LABEL_72:
                    *(v24 + 40) = *v24;
LABEL_73:
                    *(v23 + 80) = v29;
                    *(v23 + 88) = v31;
                    goto LABEL_107;
                  }

                  goto LABEL_107;
                }

                *(v23 + 56) = 1919510376;
LABEL_97:
                *(v23 + 64) = v33;
                *(v23 + 72) = v35;
                goto LABEL_106;
              }

              *(v23 + 56) = 1919510376;
LABEL_99:
              *(v23 + 64) = v36;
              *(v23 + 72) = v37;
              goto LABEL_100;
            }

            if (v38 == 1667591796)
            {
              v50 = *(v23 + 20);
              if (v50 == 1651471476)
              {
                *(v23 + 64) = v29;
                *(v23 + 72) = v31;
                goto LABEL_102;
              }

LABEL_78:
              if (v50 != 1953460256)
              {
                goto LABEL_107;
              }

LABEL_79:
              *(v23 + 64) = v29;
              *(v23 + 72) = v31;
              goto LABEL_104;
            }

            if (v38 != 1919510376)
            {
              if (v38 != 1818584692)
              {
                goto LABEL_107;
              }

              v50 = *(v23 + 20);
              if (v50 == 1651471476)
              {
                goto LABEL_92;
              }

              goto LABEL_78;
            }

            v54 = *(v23 + 20);
            if (v54 == 1651471476)
            {
LABEL_92:
              *(v23 + 64) = v36;
              *(v23 + 72) = v37;
LABEL_102:
              *(v23 + 60) = 1651471476;
              goto LABEL_104;
            }

            if (v54 != 1953460256)
            {
              goto LABEL_107;
            }

            goto LABEL_76;
          }

          *(Instance + 56) = 0x746F70206C656674;
          if (v14 != 1919510376)
          {
            if (v14 != 1818584692)
            {
              goto LABEL_107;
            }

            if (v11 == 1651471476)
            {
              goto LABEL_52;
            }

            v48 = 1953460256;
            goto LABEL_51;
          }

          if (v11 != 1953460256)
          {
            v48 = 1651471476;
LABEL_51:
            if (v11 != v48)
            {
              goto LABEL_107;
            }
          }
        }

LABEL_52:
        *(v24 + 40) = *v24;
        goto LABEL_104;
      }

      if (!v26)
      {
        goto LABEL_107;
      }

      if (v14)
      {
        v40 = 1919510376;
        if (v14 != 1919510376)
        {
          v40 = 1818584692;
          if (v14 != 1818584692)
          {
            goto LABEL_107;
          }
        }

        *(Instance + 56) = v40;
      }

      else
      {
        if (v11 > 1667591795)
        {
          v41 = 1667591796;
          if (v11 == 1667591796)
          {
            *(Instance + 56) = 1667591796;
          }

          else
          {
            if (v11 != 1953460256)
            {
              goto LABEL_107;
            }

            *(Instance + 56) = 1667591796;
            v41 = 1953460256;
          }

          goto LABEL_26;
        }

        if (v11)
        {
          if (v11 != 1651471476)
          {
            goto LABEL_107;
          }

          *(Instance + 56) = 1667591796;
          v41 = 1651471476;
          goto LABEL_26;
        }

        *(Instance + 64) = *(Instance + 24);
      }

      v41 = 1667591796;
LABEL_26:
      *(Instance + 60) = v41;
      goto LABEL_107;
    }

    FigCaptionPositionCreate_cold_1(0, v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  else
  {
    FigCaptionPositionCreate_cold_2(&v56, a2, a3, a4, a5, a6, a7, 0);
    return v56;
  }
}

double fcpos_Init(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

CFStringRef fcpos_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = fcpos_CopyEdgeReferenceDescription(v2, *(a1 + 16));
  v4 = fcpos_CopyEdgeReferenceDescription(v2, *(a1 + 20));
  if ((*(a1 + 36) & 0x1D) == 1)
  {
    v5 = FigGeometryDimensionCopyDescription(v2, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v5 = 0;
  }

  if ((*(a1 + 52) & 0x1D) == 1)
  {
    v6 = FigGeometryDimensionCopyDescription(v2, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = 0;
  }

  v7 = @"N/A";
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = @"N/A";
  }

  if (v6)
  {
    v7 = v6;
  }

  v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCaptionPosition %p] < horizontal:(%@, %@) vertical:(%@, %@) >", a1, v3, v8, v4, v7);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v9;
}

CFStringRef fcpos_CopyEdgeReferenceDescription(const __CFAllocator *a1, signed int a2)
{
  if (a2 <= 1701999214)
  {
    switch(a2)
    {
      case 0:
        v4 = @"<N/A>";

        return CFRetain(v4);
      case 1651471476:
        v4 = @"bottom";

        return CFRetain(v4);
      case 1667591796:
        v4 = @"center";

        return CFRetain(v4);
    }
  }

  else if (a2 > 1919510375)
  {
    if (a2 == 1919510376)
    {
      v4 = @"right";

      return CFRetain(v4);
    }

    if (a2 == 1953460256)
    {
      v4 = @"top";

      return CFRetain(v4);
    }
  }

  else
  {
    if (a2 == 1701999215)
    {
      v4 = @"<error>";

      return CFRetain(v4);
    }

    if (a2 == 1818584692)
    {
      v4 = @"left";

      return CFRetain(v4);
    }
  }

  v8 = v2;
  v9 = v3;
  v6 = bswap32(a2);
  v7 = 0;
  return CFStringCreateWithFormat(a1, 0, @"unknown(%.4s)", &v6);
}

uint64_t OUTLINED_FUNCTION_0_78(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, RegisterFigCaptionPositionType);
}

uint64_t remoteXPCEndpointPlaybackSessionClient_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCEndpointPlaybackSessionClient_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E74A5708;
  block[4] = &v3;
  if (remoteXPCEndpointPlaybackSessionClient_EnsureClientEstablished_sFigEndpointPlaybackSessionRemoteClientSetupOnce != -1)
  {
    dispatch_once(&remoteXPCEndpointPlaybackSessionClient_EnsureClientEstablished_sFigEndpointPlaybackSessionRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void remoteXPCEndpointPlaybackSessionClient_DeadConnectionCallback(uint64_t a1)
{
  *(CMBaseObjectGetDerivedStorage(a1) + 1) = 1;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  context = -16722;
  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigEndpointPlaybackSessionRemoteXPC_runAllCallbacks_block_invoke;
  block[3] = &unk_1E74A5730;
  block[4] = &v8;
  block[5] = DerivedStorage;
  dispatch_sync(v3, block);
  v4 = v9[3];
  if (v4)
  {
    CFDictionaryApplyFunction(v4, FigEndpointPlaybackSessionRemoteXPC_runOneCallback, &context);
    v5 = v9[3];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_runOneCallback(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a2;
  if (*a2 <= 1886545248)
  {
    if (v3 <= 1735422065)
    {
      if (v3 != 1635018857)
      {
        v4 = 1735421033;
LABEL_19:
        if (v3 != v4)
        {
          return result;
        }

        return (*(a2 + 16))(0, *a3, *(a2 + 8));
      }
    }

    else if (v3 != 1735422066)
    {
      v5 = v3 == 1768976745;
      v6 = 1886151033;
      goto LABEL_11;
    }

    return (*(a2 + 16))(0, 0, *a3, *(a2 + 8));
  }

  if (v3 > 1936028776)
  {
    if (v3 == 1936028777)
    {
      return (*(a2 + 16))(0, *a3, *(a2 + 8));
    }

    v5 = v3 == 1936875892;
    v6 = 1937010544;
LABEL_11:
    if (v5 || v3 == v6)
    {
      return (*(a2 + 16))(*a3, *(a2 + 8));
    }

    return result;
  }

  if (v3 != 1886545249)
  {
    if (v3 != 1919971689)
    {
      v4 = 1936024673;
      goto LABEL_19;
    }

    return (*(a2 + 16))(*a3, *(a2 + 8));
  }

  return (*(a2 + 16))(*a3, 0, *(a2 + 8));
}

void __remoteXPCEndpointPlaybackSessionClient_handleCompletionCallback_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 24);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, *(a1 + 48));
    if (Value)
    {
      v4 = *(*(a1 + 32) + 8);
      v5 = *Value;
      *(v4 + 40) = Value[2];
      *(v4 + 24) = v5;
    }

    v6 = *(a1 + 48);
    v7 = *(*(a1 + 40) + 24);

    CFDictionaryRemoveValue(v7, v6);
  }
}

void __remoteXPCEndpointPlaybackSessionClient_eventHandlerCallback_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    cf = 0;
    FigXPCMessageCopyCFDictionary(*(a1 + 40), "EventInfo", &cf);
    (*(*(a1 + 32) + 40))(*(a1 + 48), cf, *(*(a1 + 32) + 32), *(*(a1 + 32) + 48));
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

__n128 remoteXPCEndpointPlaybackSession_cloneCompletionCallback(uint64_t a1, __n128 *a2)
{
  v3 = MEMORY[0x19A8D7200](a1, 24, 0x1080040D2F62047, 0);
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *v3 = *a2;
  *(v3 + 16) = v4;
  return result;
}

uint64_t remoteXPCEndpointPlaybackSession_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    remoteXPCEndpointPlaybackSession_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      remoteXPCEndpointPlaybackSession_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_AuthorizeItem(uint64_t a1, const void *a2, const void *a3, void (*a4)(void, void, uint64_t, uint64_t), uint64_t a5)
{
  v14 = 0;
  *v15 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x61746869u, v14, v15), ObjectID))
  {
    v12 = ObjectID;
    if (a4)
    {
      a4(0, 0, ObjectID, a5);
    }

    v11 = 0;
  }

  else
  {
    FigXPCMessageSetCFData(*v15, "PicRequest", a2);
    FigXPCMessageSetCFString(*v15, "ItemUUID", a3);
    if (a4)
    {
      v11 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v11[1] = a5;
      v11[2] = a4;
      *v11 = 1635018857;
    }

    else
    {
      v11 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, *v15, v11);
    v12 = 0;
  }

  FigXPCRelease(*v15);
  free(v11);
  return v12;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_Play(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v12 = 0;
  *v13 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v12);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x706C6179u, v12, v13), ObjectID))
  {
    v10 = ObjectID;
    if (a3)
    {
      a3(ObjectID, a4);
    }

    v9 = 0;
  }

  else
  {
    FigXPCMessageSetCFDictionary(*v13, "Params", a2);
    remoteXPCEndpointPlaybackSession_generateSandboxTokenForFilePath(*v13, a2);
    if (a3)
    {
      v9 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v9[1] = a4;
      v9[2] = a3;
      *v9 = 1886151033;
    }

    else
    {
      v9 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, *v13, v9);
    v10 = 0;
  }

  FigXPCRelease(*v13);
  free(v9);
  return v10;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_InsertPlayQueueItem(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v14 = 0;
  *v15 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x69707169u, v14, v15), ObjectID))
  {
    v12 = ObjectID;
    if (a4)
    {
      a4(ObjectID, a5);
    }

    v11 = 0;
  }

  else
  {
    FigXPCMessageSetCFDictionary(*v15, "Item", a2);
    FigXPCMessageSetCFDictionary(*v15, "AfterItem", a3);
    remoteXPCEndpointPlaybackSession_generateSandboxTokenForFilePath(*v15, a2);
    if (a4)
    {
      v11 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v11[1] = a5;
      v11[2] = a4;
      *v11 = 1768976745;
    }

    else
    {
      v11 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, *v15, v11);
    v12 = 0;
  }

  FigXPCRelease(*v15);
  free(v11);
  return v12;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_RemovePlayQueueItem(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v12 = 0;
  *v13 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v12);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x72707169u, v12, v13), ObjectID))
  {
    v10 = ObjectID;
    if (a3)
    {
      a3(ObjectID, a4);
    }

    v9 = 0;
  }

  else
  {
    FigXPCMessageSetCFDictionary(*v13, "Item", a2);
    if (a3)
    {
      v9 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v9[1] = a4;
      v9[2] = a3;
      *v9 = 1919971689;
    }

    else
    {
      v9 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, *v13, v9);
    v10 = 0;
  }

  FigXPCRelease(*v13);
  free(v9);
  return v10;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_Stop(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v10);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x73746F70u, v10, &v11), ObjectID))
  {
    v8 = ObjectID;
    if (a2)
    {
      a2(ObjectID, a3);
    }

    v7 = 0;
  }

  else
  {
    if (a2)
    {
      v7 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v7[1] = a3;
      v7[2] = a2;
      *v7 = 1937010544;
    }

    else
    {
      v7 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, v11, v7);
    v8 = 0;
  }

  FigXPCRelease(v11);
  free(v7);
  return v8;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_GetPlaybackInfo(uint64_t a1, void (*a2)(void, uint64_t, uint64_t), uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v10);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x67706C69u, v10, &v11), ObjectID))
  {
    v8 = ObjectID;
    if (a2)
    {
      a2(0, ObjectID, a3);
    }

    v7 = 0;
  }

  else
  {
    if (a2)
    {
      v7 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v7[1] = a3;
      v7[2] = a2;
      *v7 = 1735421033;
    }

    else
    {
      v7 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, v11, v7);
    v8 = 0;
  }

  FigXPCRelease(v11);
  free(v7);
  return v8;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SeekToTime(uint64_t a1, __int128 *a2, void *a3, void (*a4)(void, uint64_t, uint64_t), uint64_t a5)
{
  v16 = 0;
  *v17 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v16);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x73657469u, v16, v17), ObjectID))
  {
    v12 = ObjectID;
    if (a4)
    {
      a4(0, ObjectID, a5);
    }

    v11 = 0;
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    FigXPCMessageSetCMTime(*v17, "Time", &v14);
    FigXPCMessageSetCFDictionary(*v17, "Options", a3);
    if (a4)
    {
      v11 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v11[1] = a5;
      v11[2] = a4;
      *v11 = 1936028777;
    }

    else
    {
      v11 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, *v17, v11);
    v12 = 0;
  }

  FigXPCRelease(*v17);
  free(v11);
  return v12;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SeekToDate(uint64_t a1, const void *a2, void *a3, void (*a4)(void, uint64_t, uint64_t), uint64_t a5)
{
  v14 = 0;
  *v15 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x73656461u, v14, v15), ObjectID))
  {
    v12 = ObjectID;
    if (a4)
    {
      a4(0, ObjectID, a5);
    }

    v11 = 0;
  }

  else
  {
    FigXPCMessageSetCFDate(*v15, "Date", a2);
    FigXPCMessageSetCFDictionary(*v15, "Options", a3);
    if (a4)
    {
      v11 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v11[1] = a5;
      v11[2] = a4;
      *v11 = 1936024673;
    }

    else
    {
      v11 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, *v15, v11);
    v12 = 0;
  }

  FigXPCRelease(*v15);
  free(v11);
  return v12;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SetRate(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, float a5)
{
  v14 = 0;
  xdict = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x73726174u, v14, &xdict), ObjectID))
  {
    v12 = ObjectID;
    if (a3)
    {
      a3(ObjectID, a4);
    }

    v11 = 0;
  }

  else
  {
    xpc_dictionary_set_double(xdict, "Rate", a5);
    FigXPCMessageSetCFDictionary(xdict, "Params", a2);
    if (a3)
    {
      v11 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v11[1] = a4;
      v11[2] = a3;
      *v11 = 1936875892;
    }

    else
    {
      v11 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, xdict, v11);
    v12 = 0;
  }

  FigXPCRelease(xdict);
  free(v11);
  return v12;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_GetProxiedProperty(uint64_t a1, const void *a2, void *a3, void (*a4)(void, void, uint64_t, uint64_t), uint64_t a5)
{
  v14 = 0;
  *v15 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x67707072u, v14, v15), ObjectID))
  {
    v12 = ObjectID;
    if (a4)
    {
      a4(0, 0, ObjectID, a5);
    }

    v11 = 0;
  }

  else
  {
    FigXPCMessageSetCFString(*v15, "PropertyKey", a2);
    FigXPCMessageSetCFDictionary(*v15, "Params", a3);
    if (a4)
    {
      v11 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v11[1] = a5;
      v11[2] = a4;
      *v11 = 1735422066;
    }

    else
    {
      v11 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, *v15, v11);
    v12 = 0;
  }

  FigXPCRelease(*v15);
  free(v11);
  return v12;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_PerformRemoteAction(uint64_t a1, const void *a2, void *a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  v14 = 0;
  *v15 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x70726561u, v14, v15), ObjectID))
  {
    v12 = ObjectID;
    if (a4)
    {
      a4(ObjectID, 0, a5);
    }

    v11 = 0;
  }

  else
  {
    FigXPCMessageSetCFString(*v15, "Type", a2);
    FigXPCMessageSetCFObject(*v15, "Params", a3);
    if (a4)
    {
      v11 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
      v11[1] = a5;
      v11[2] = a4;
      *v11 = 1886545249;
    }

    else
    {
      v11 = 0;
    }

    FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, *v15, v11);
    v12 = 0;
  }

  FigXPCRelease(*v15);
  free(v11);
  return v12;
}

void FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(uint64_t a1, void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v7 = DerivedStorage;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (a3)
  {
    v8 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
    block[3] = &unk_1E74A57A0;
    block[4] = &v20;
    block[5] = a1;
    block[6] = v7;
    block[7] = a3;
    dispatch_sync(v8, block);
    xpc_dictionary_set_uint64(a2, "CompletionID", v21[3]);
  }

  v9 = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, a2);
  v10 = v9;
  if (a3)
  {
    if (v9)
    {
      v11 = *(v7 + 16);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2;
      v14[3] = &unk_1E74A57C8;
      v14[4] = &v20;
      v14[5] = &v16;
      v14[6] = v7;
      dispatch_sync(v11, v14);
      if (*(v17 + 24))
      {
        v13 = v10;
        FigEndpointPlaybackSessionRemoteXPC_runOneCallback(v12, a3, &v13);
      }
    }
  }

  FigXPCRemoteClientKillServerOnTimeout(gFigEndpointPlaybackSessionRemoteClient, v10, "FigEndpointPlaybackSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback", 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

uint64_t figHALDriver_QueryInterface(uint64_t a1, CFUUIDBytes a2, void *a3)
{
  if (a3)
  {
    v5 = CFUUIDCreateFromUUIDBytes(0, a2);
    if (v5)
    {
      v6 = v5;
      v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
      if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u), CFEqual(v6, v8)))
      {
        FigAtomicIncrement32((a1 + 8));
        v9 = 0;
        *a3 = a1;
      }

      else
      {
        v9 = 2147483652;
      }

      CFRelease(v6);
    }

    else
    {
      figHALDriver_QueryInterface_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    figHALDriver_QueryInterface_cold_2(&v12);
    return v12;
  }

  return v9;
}

uint64_t figHALDriver_Initialize(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 20);
  v4 = *(*(CMBaseObjectGetVTable(v3) + 24) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t figHALDriver_DoIOOperation(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  cf = 0;
  v13 = driver_CopyObjectForID(a1, a3, &cf);
  if (v13 == 560947818)
  {
    v14 = 561214578;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    v16 = cf;
  }

  else
  {
    ClassID = FigHALAudioStreamGetClassID();
    v16 = cf;
    if (ClassID == CMBaseObjectGetClassID(cf))
    {
      goto LABEL_6;
    }

    figHALDriver_DoIOOperation_cold_1(&v20);
    v14 = v20;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    return v14;
  }

  v16 = 0;
LABEL_6:
  v17 = *(*(CMBaseObjectGetVTable(v16) + 32) + 8);
  if (v17)
  {
    v14 = v17(v16, a5, a6, a7, a8, a9);
    if (!v16)
    {
      return v14;
    }

    goto LABEL_10;
  }

  v14 = 4294954514;
  if (v16)
  {
LABEL_10:
    CFRelease(v16);
  }

  return v14;
}

uint64_t driver_CopyDeviceForID(uint64_t a1, unsigned int a2, void *a3)
{
  cf = 0;
  v4 = driver_CopyObjectForID(a1, a2, &cf);
  if (v4 == 560947818)
  {
    v5 = 560227702;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    v7 = cf;
  }

  else
  {
    ClassID = FigHALAudioDeviceGetClassID();
    v7 = cf;
    if (ClassID == CMBaseObjectGetClassID(cf))
    {
      v5 = 0;
      *a3 = v7;
      return v5;
    }

    driver_CopyDeviceForID_cold_1(&v10);
    v5 = v10;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

CFArrayRef FigCopyProcessNamesForGatheringDiagnosticsWithCoreMediaDiagnosticExtension()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1E74A5810;
  v1[1] = *&off_1E74A5820;
  v1[2] = xmmword_1E74A5830;
  return CFArrayCreate(*MEMORY[0x1E695E480], v1, 6, MEMORY[0x1E695E9C0]);
}

uint64_t FigTimeRangeSetGetTypeID(uint64_t a1)
{
  if (qword_1ED4CD088 != -1)
  {
    FigTimeRangeSetGetTypeID_cold_1(a1);
  }

  return _MergedGlobals_61;
}

uint64_t timeRangeSet_RegisterClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigTimeRangeSetCreateMutable(const __CFAllocator *a1, uint64_t *a2)
{
  if (a2)
  {
    if (qword_1ED4CD088 != -1)
    {
      FigTimeRangeSetGetTypeID_cold_1(a1);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v12 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      Mutable = CFArrayCreateMutable(a1, 0, &kFigTimeRangeSetTimeRangeArrayCallbacks);
      *(v12 + 16) = Mutable;
      if (Mutable)
      {
        result = 0;
        *(v12 + 24) = *&kCMTimeZero.value;
        *(v12 + 40) = 0;
        *a2 = v12;
      }

      else
      {
        FigTimeRangeSetCreateMutable_cold_2(v12, &v21, v14, v15, v16, v17, v18, v19);
        return v21;
      }
    }

    else
    {
      FigTimeRangeSetCreateMutable_cold_3(&v22, v5, v6, v7, v8, v9, v10, v11);
      return v22;
    }
  }

  else
  {
    FigTimeRangeSetCreateMutable_cold_4(&v23);
    return v23;
  }

  return result;
}

CFIndex FigTimeRangeSetGetCount(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 16));
  }

  return result;
}

double FigTimeRangeSetGetDuration@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    *a2 = v2;
    *(a2 + 16) = *(a1 + 40);
  }

  else
  {
    *&v2 = kCMTimeZero.value;
    *a2 = *&kCMTimeZero.value;
    *(a2 + 16) = 0;
  }

  return *&v2;
}

uint64_t timeRangeSet_blockApplier(_OWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(a2, v5);
}

void timeRangeSet_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef timeRangeSet_TimeRangeCopyDescription(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *&v4.start.value = *a1;
  *&v4.start.epoch = v2;
  *&v4.duration.timescale = a1[2];
  return CMTimeRangeCopyDescription(v1, &v4);
}

uint64_t timeRangeSet_TimeRangeIsEqual(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *&range1.start.value = *a1;
  *&range1.start.epoch = v2;
  *&range1.duration.timescale = a1[2];
  v3 = a2[1];
  *&v5.start.value = *a2;
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a2[2];
  return CMTimeRangeEqual(&range1, &v5);
}

CMTime *OUTLINED_FUNCTION_2_40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, CMTime *a12, uint64_t a13, uint64_t a14, uint64_t a15, CMTime *lhs, uint64_t a17, __int128 lhsa, uint64_t lhs_16)
{
  lhsa = *(v19 + 24);
  lhs_16 = *(v19 + 40);
  a9 = *(v20 + 24);
  a10 = *(v20 + 40);

  return CMTimeAdd(&a12, &lhsa, &a9);
}

uint64_t OUTLINED_FUNCTION_4_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTimeRange *otherRange, CMTimeRange *range, double a7, __n128 a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 otherRangea, __int128 otherRange_16, __int128 otherRange_32, __n128 rangea, __n128 range_16, __n128 range_32)
{
  range_16 = a8;
  range_32 = a9;
  v24 = v22[1];
  otherRangea = *v22;
  otherRange_16 = v24;
  otherRange_32 = v22[2];
  rangea = a10;

  return CMTimeRangeContainsTimeRange(&rangea, &otherRangea);
}

__n128 OUTLINED_FUNCTION_5_32()
{
  result = *(v1 - 160);
  *(v0 + 24) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_8_20@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_10_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14)
{
  result = a13;
  *(v14 + 24) = a13;
  *(v14 + 40) = a14;
  return result;
}

__n128 OUTLINED_FUNCTION_11_16@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 time2a, uint64_t time2_16)
{
  *(v30 - 160) = *(v29 + 24);
  *(v30 - 144) = *(v29 + 40);
  time2a = *(v28 + 24);
  time2_16 = *(v28 + 40);

  return CMTimeCompare((v30 - 160), &time2a);
}

__n128 OUTLINED_FUNCTION_14_14()
{
  *(v2 - 96) = *(v0 + 24);
  *(v2 - 80) = *(v0 + 40);
  return *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_18_13@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time1)
{
  a4 = a1;

  return CMTimeCompare(&time1, &a2);
}

__n128 OUTLINED_FUNCTION_21_12(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34, __n128 a35)
{
  *v35 = a33;
  v35[1] = a34;
  result = a35;
  v35[2] = a35;
  return result;
}

__n128 OUTLINED_FUNCTION_23_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, uint64_t a18)
{
  result = a17;
  *(v18 + 24) = a17;
  *(v18 + 40) = a18;
  return result;
}

__n128 OUTLINED_FUNCTION_27_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  result = a9;
  *(v10 + 24) = a9;
  *(v10 + 40) = a10;
  return result;
}

uint64_t FigEndpointStreamAudioFormatDescriptionGetTypeID()
{
  if (_MergedGlobals_62 != -1)
  {
    FigEndpointStreamAudioFormatDescriptionGetTypeID_cold_1();
  }

  return qword_1ED4CD098;
}

uint64_t _FigEndpointStreamAudioFormatDescriptionRegisterClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigEndpointStreamAudioFormatDescriptionCreate(uint64_t a1, __int128 *a2, int a3, uint64_t *a4)
{
  if (a2)
  {
    if (a4)
    {
      if (_MergedGlobals_62 != -1)
      {
        FigEndpointStreamAudioFormatDescriptionGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v15 = Instance;
        result = 0;
        v17 = *a2;
        v18 = a2[1];
        *(v15 + 48) = *(a2 + 4);
        *(v15 + 16) = v17;
        *(v15 + 32) = v18;
        *(v15 + 56) = a3;
        *a4 = v15;
      }

      else
      {
        FigEndpointStreamAudioFormatDescriptionCreate_cold_2(&v19, v8, v9, v10, v11, v12, v13, v14);
        return v19;
      }
    }

    else
    {
      FigEndpointStreamAudioFormatDescriptionCreate_cold_3(&v20);
      return v20;
    }
  }

  else
  {
    FigEndpointStreamAudioFormatDescriptionCreate_cold_4(&v21);
    return v21;
  }

  return result;
}

uint64_t FigEndpointStreamAudioFormatDescriptionGetASBD(uint64_t a1)
{
  if (a1)
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription(uint64_t a1, CMFormatDescriptionRef desc, uint64_t *a3)
{
  v12 = 0;
  StreamBasicDescription = 0;
  sizeOut = 0;
  v9 = 4;
  v10 = -65536;
  if (!desc)
  {
    FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_3(&v14);
    return v14;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_1(&v14);
    return v14;
  }

  if (!a3)
  {
    FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_2(&v14);
    return v14;
  }

  CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout(desc, &StreamBasicDescription, &sizeOut, &v12);
  if (StreamBasicDescription)
  {
    ChannelLayout = v12;
  }

  else
  {
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
    ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(desc, &sizeOut);
    v12 = ChannelLayout;
  }

  if (AudioToolbox_AudioFormatGetProperty(1668116596, sizeOut, ChannelLayout, &v9, &v10))
  {
    v7 = -65536;
    v10 = -65536;
  }

  else
  {
    v7 = v10;
  }

  return FigEndpointStreamAudioFormatDescriptionCreate(a1, StreamBasicDescription, v7, a3);
}

uint64_t remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E74A5850;
  block[4] = &v3;
  if (remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished_sFigEndpointRemoteControlSessionRemoteClientSetupOnce != -1)
  {
    dispatch_once(&remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished_sFigEndpointRemoteControlSessionRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void remoteXPCEndpointRemoteControlSessionClient_DeadConnectionCallback(uint64_t a1)
{
  *(CMBaseObjectGetDerivedStorage(a1) + 1) = 1;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  LODWORD(context) = -16722;
  v3 = *(DerivedStorage + 16);
  block = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __FigEndpointRemoteControlSessionRemoteXPC_runAllCallbacks_block_invoke;
  v14 = &unk_1E74A5878;
  v15 = &v22;
  v16 = DerivedStorage;
  dispatch_sync(v3, &block);
  v4 = v23[3];
  if (v4)
  {
    CFDictionaryApplyFunction(v4, FigEndpointRemoteControlSessionRemoteXPC_runOneCallback, &context);
    v5 = v23[3];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  _Block_object_dispose(&v22, 8);
  v6 = CMBaseObjectGetDerivedStorage(a1);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  context = 0;
  p_context = &context;
  v20 = 0x2000000000;
  v21 = 0;
  v7 = *(v6 + 16);
  block = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __FigEndpointRemoteControlSessionRemoteXPC_postInvalidated_block_invoke;
  v14 = &unk_1E74A58A0;
  v16 = &v22;
  v17 = v6;
  v15 = &context;
  dispatch_sync(v7, &block);
  v8 = v23[3];
  v9 = p_context;
  if (v8 && p_context[3])
  {
    v8(a1, @"Invalidated", 0);
    v9 = p_context;
  }

  v10 = v9[3];
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&context, 8);
  _Block_object_dispose(&v22, 8);
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_runOneCallback(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*a2 == 1936614509)
  {
    return (*(a2 + 16))(*a3, 0, *(a2 + 8));
  }

  return result;
}

void __remoteXPCEndpointRemoteControlSessionClient_handleCompletionCallback_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 24);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, *(a1 + 48));
    if (Value)
    {
      v4 = *(*(a1 + 32) + 8);
      v5 = *Value;
      *(v4 + 40) = Value[2];
      *(v4 + 24) = v5;
    }

    v6 = *(a1 + 48);
    v7 = *(*(a1 + 40) + 24);

    CFDictionaryRemoveValue(v7, v6);
  }
}

void *__remoteXPCEndpointRemoteControlSessionClient_eventHandlerCallback_block_invoke(void *result)
{
  v1 = result[6];
  if (*(v1 + 32))
  {
    v2 = result;
    result = FigCFWeakReferenceLoadAndRetain((v1 + 40));
    *(*(v2[4] + 8) + 24) = result;
    *(*(v2[5] + 8) + 24) = *(v2[6] + 32);
  }

  return result;
}

__n128 remoteXPCEndpointRemoteControlSession_cloneCompletionCallback(uint64_t a1, __n128 *a2)
{
  v3 = MEMORY[0x19A8D7200](a1, 24, 0x1080040D2F62047, 0);
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *v3 = *a2;
  *(v3 + 16) = v4;
  return result;
}

uint64_t remoteXPCEndpointRemoteControlSession_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    remoteXPCEndpointRemoteControlSession_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      remoteXPCEndpointRemoteControlSession_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

size_t FigTransportConnectionTCPCreate(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  if (!a2)
  {
    FigTransportConnectionTCPCreate_cold_1(&v18);
    v9 = v18;
LABEL_3:
    if (cf)
    {
      CFRelease(cf);
    }

    return v9;
  }

  ClassID = NeroTransportConnectionGetClassID();
  v9 = CMDerivedObjectCreate(a1, &kFigTransportConnectionUSBVTable_0, ClassID, &cf, v5, v6, v7, v8);
  if (v9)
  {
    goto LABEL_3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  *(DerivedStorage + 88) = -1;
  *(DerivedStorage + 96) = -1;
  *(DerivedStorage + 104) = -1;
  v11 = FigDispatchQueueCreateWithPriority("FigTransportConnectionTCP", 0, 28);
  *(DerivedStorage + 8) = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = FigDispatchQueueCreateWithPriority("FigTransportConnectionTCP.data", 0, 28);
  *(DerivedStorage + 16) = v12;
  if (!v12)
  {
    goto LABEL_14;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"FigMemoryPool_LoggingName", @"TransportConnectionTCP");
  v14 = CMMemoryPoolCreate(Mutable);
  *(DerivedStorage + 72) = v14;
  if (Mutable)
  {
    CFRelease(Mutable);
    v14 = *(DerivedStorage + 72);
  }

  if (!v14)
  {
LABEL_14:
    v9 = 4294955245;
    goto LABEL_3;
  }

  Allocator = CMMemoryPoolGetAllocator(v14);
  *(DerivedStorage + 80) = Allocator;
  if (Allocator)
  {
    CFRetain(Allocator);
  }

  v9 = 0;
  *(DerivedStorage + 40) = 29888;
  *a2 = cf;
  return v9;
}

__CFString *tcp_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTransportConnectionUSB %p>", a1);
  return Mutable;
}

uint64_t tcp_CleanupFileDescriptors(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = DerivedStorage[22];
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    DerivedStorage[22] = -1;
  }

  v3 = DerivedStorage[23];
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
    DerivedStorage[23] = -1;
  }

  v4 = DerivedStorage[24];
  if ((v4 & 0x80000000) == 0)
  {
    close(v4);
    DerivedStorage[24] = -1;
  }

  result = DerivedStorage[26];
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    DerivedStorage[26] = -1;
  }

  return result;
}

uint64_t tcp_Start(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    v4 = 4294955241;
    *(v8 + 6) = -12055;
  }

  else
  {
    v3 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __tcp_Start_block_invoke;
    block[3] = &unk_1E74A5998;
    block[4] = &v7;
    block[5] = DerivedStorage;
    block[6] = a1;
    dispatch_sync(v3, block);
    v4 = *(v8 + 6);
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t tcp_clientThreadMain(const void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(DerivedStorage + 120))
  {
    v4 = DerivedStorage;
    do
    {
      v5 = CMBaseObjectGetDerivedStorage(a1);
      v6 = socket(2, 1, 6);
      *(v5 + 88) = v6;
      if ((v6 & 0x80000000) == 0)
      {
        *&v16.sa_data[10] = 0;
        *&v16.sa_data[2] = 0;
        *&v16.sa_len = 528;
        *v16.sa_data = bswap32(*(v5 + 40)) >> 16;
        v7 = *(v5 + 32);
        if (v7)
        {
          v13 = 0;
          CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(v7, 0x600u, &v13);
          v9 = inet_addr(CStringPtrAndBufferToFree);
          if (v9 == -1)
          {
            v14 = 0;
            memset(&v15, 0, sizeof(v15));
            *&v15.ai_family = 0x100000002;
            if (getaddrinfo(CStringPtrAndBufferToFree, 0, &v15, &v14) || !v14)
            {
              v10 = -1;
            }

            else
            {
              v10 = *&v14->ai_addr->sa_data[2];
              freeaddrinfo(v14);
            }
          }

          else
          {
            v10 = v9;
          }

          *&v16.sa_data[2] = v10;
          free(v13);
          v6 = *(v5 + 88);
        }

        if (!connect(v6, &v16, 0x10u))
        {
          *(v5 + 96) = *(v5 + 88);
          *(v5 + 88) = -1;
          tcp_sendAndReceiveData(a1);
        }
      }

      v11 = *(v5 + 96);
      if ((v11 & 0x80000000) == 0)
      {
        close(v11);
        *(v5 + 96) = -1;
      }

      v12 = *(v5 + 88);
      if ((v12 & 0x80000000) == 0)
      {
        close(v12);
        *(v5 + 88) = -1;
      }

      sleep(5u);
    }

    while (!*(v4 + 120));
  }

  return 0;
}

void __tcp_sendAndReceiveData_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 0;
  *(*(a1 + 32) + 160) = *(a1 + 32) + 152;
  v2 = *(a1 + 32);
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(*(a1 + 32) + 184) = *(a1 + 32) + 176;
  v3 = *(a1 + 32);
  *(v3 + 216) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  v4 = *(a1 + 32);
  *(v4 + 121) = 1;
  if (*(v4 + 56))
  {
    CFRetain(*(a1 + 40));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __tcp_sendAndReceiveData_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_21_3;
    v6 = *(a1 + 32);
    dispatch_async(*(v6 + 64), v5);
  }

  CFRelease(*(a1 + 40));
}

void __tcp_sendAndReceiveData_block_invoke_2(uint64_t a1)
{
  (*(*(*(a1 + 32) + 56) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void tcp_sendDataToSocket(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __tcp_sendDataToSocket_block_invoke;
  block[3] = &__block_descriptor_tmp_28_3;
  block[4] = DerivedStorage;
  block[5] = a1;
  v7 = a2;
  dispatch_sync(v5, block);
}

uint64_t __tcp_sendAndReceiveData_block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 100) = 1;
  *(v1 + 108) = 1;
  if (*(v1 + 152) || *(v1 + 176))
  {
    *(v1 + 100) = 5;
  }

  return result;
}

void __tcp_sendAndReceiveData_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 121) = 0;
  if (*(v2 + 56))
  {
    CFRetain(*(a1 + 40));
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __tcp_sendAndReceiveData_block_invoke_5;
    v10[3] = &__block_descriptor_tmp_24_1;
    v11 = *(a1 + 32);
    dispatch_async(*(v11 + 64), v10);
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 216);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 216) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 208) = 0;
  *(v2 + 200) = 0;
  for (i = 1; i != 3; ++i)
  {
    while (1)
    {
      v5 = v2 + 24 * i;
      v8 = *(v5 + 128);
      v6 = (v5 + 128);
      v7 = v8;
      if (!v8)
      {
        break;
      }

      v9 = *v7;
      *v6 = *v7;
      if (!v9)
      {
        *(*(a1 + 32) + 24 * i + 136) = *(a1 + 32) + 24 * i + 128;
      }

      CFRelease(v7[1]);
      free(v7);
      v2 = *(a1 + 32);
    }
  }

  CFRelease(*(a1 + 40));
}

void __tcp_sendAndReceiveData_block_invoke_5(uint64_t a1)
{
  (*(*(*(a1 + 32) + 56) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void tcp_destroyPackageRecord(CFTypeRef *a1)
{
  if (a1)
  {
    CFRelease(a1[1]);

    free(a1);
  }
}

uint64_t __tcp_readDataFromSocket_block_invoke(void *a1)
{
  v2 = *(a1[5] + 8);
  result = CMBaseObjectGetDerivedStorage(a1[6]);
  v4 = result;
  v5 = *(result + 200);
  if (v5 <= 3)
  {
    v6 = result + 208;
    while (1)
    {
      v7 = (v6 + v5);
      v8 = 4 - v5;
      result = read(*(v4 + 96), (v6 + v5), 4 - v5);
      if (result < 1)
      {
        break;
      }

      v5 = *(v4 + 200) + result;
      *(v4 + 200) = v5;
      if (v5 >= 4)
      {
        goto LABEL_7;
      }
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v8 = 0;
  v7 = 0;
LABEL_7:
  lengthAtOffsetOut = v8;
  dataPointerOut = v7;
  v9 = (v4 + 216);
  if (*(v4 + 216))
  {
    goto LABEL_8;
  }

  result = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, *(v4 + 208), *(v4 + 80), 0, 0, *(v4 + 208), 1u, (v4 + 216));
  if (result)
  {
    goto LABEL_15;
  }

  result = CMBlockBufferReplaceDataBytes((v4 + 208), *v9, 0, 4uLL);
  if (result)
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 200);
LABEL_8:
  while (v5 < *(v4 + 208))
  {
    result = CMBlockBufferGetDataPointer(*v9, v5, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (result)
    {
      goto LABEL_15;
    }

    result = read(*(v4 + 96), dataPointerOut, lengthAtOffsetOut);
    if (result < 1)
    {
      goto LABEL_15;
    }

    v5 = *(v4 + 200) + result;
    *(v4 + 200) = v5;
  }

  *(v2 + 24) = *(v4 + 216);
  *(v4 + 216) = 0;
  *(v4 + 208) = 0;
  *(v4 + 200) = 0;
  v10 = 1;
LABEL_16:
  *(*(a1[4] + 8) + 24) = v10;
  return result;
}

void __tcp_didReceivePackage_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 56) + 16))();
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

void __tcp_sendDataToSocket_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  for (i = 152; i != 200; i += 24)
  {
    v4 = *(v2 + i + 16);
    if (v4)
    {
      v5 = *(v2 + i);
      v6 = tcp_sendPackageToSocket(*(a1 + 40), *(v5 + 8), v4);
      v7 = *(a1 + 32) + i;
      v8 = *(v7 + 16) + v6;
      *(v7 + 16) = v8;
      if (v8 < CMBlockBufferGetDataLength(*(v5 + 8)))
      {
        return;
      }

      v9 = *(a1 + 32);
      v10 = **(v9 + i);
      *(v9 + i) = v10;
      if (!v10)
      {
        *(*(a1 + 32) + i + 8) = *(a1 + 32) + i;
      }

      tcp_destroyPackageRecord(v5);
      v2 = *(a1 + 32);
      *(v2 + i + 16) = 0;
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(v2 + 24 * v11 + 128);
    if (!v12)
    {
      return;
    }

    while (1)
    {
      v13 = tcp_sendPackageToSocket(*(a1 + 40), v12[1], 0);
      DataLength = CMBlockBufferGetDataLength(v12[1]);
      v15 = *(a1 + 32) + 128;
      v16 = *(a1 + 48);
      if (v13 < DataLength)
      {
        break;
      }

      v17 = 24 * v16;
      v18 = **(v15 + v17);
      *(v15 + v17) = v18;
      if (!v18)
      {
        v19 = *(a1 + 32) + 24 * v16;
        *(v19 + 136) = v19 + 128;
      }

      CFRelease(v12[1]);
      free(v12);
      v12 = *(*(a1 + 32) + 24 * *(a1 + 48) + 128);
      if (!v12)
      {
        return;
      }
    }

    v25 = v15 + 24 * v16;
  }

  else
  {
    v20 = 1;
    while (1)
    {
      while (1)
      {
        v21 = *(v2 + 24 * v20 + 128);
        if (v21)
        {
          break;
        }

        if (++v20 == 3)
        {
          return;
        }
      }

      v13 = tcp_sendPackageToSocket(*(a1 + 40), v21[1], 0);
      v22 = CMBlockBufferGetDataLength(v21[1]);
      v23 = *(a1 + 32) + 128;
      if (v13 < v22)
      {
        break;
      }

      v24 = **(v23 + 24 * v20);
      *(v23 + 24 * v20) = v24;
      if (!v24)
      {
        *(*(a1 + 32) + 24 * v20 + 136) = *(a1 + 32) + 24 * v20 + 128;
      }

      CFRelease(v21[1]);
      free(v21);
      v2 = *(a1 + 32);
    }

    v25 = v23 + 24 * v20;
  }

  *(v25 + 16) = v13;
}

uint64_t tcp_sendPackageToSocket(uint64_t a1, CMBlockBufferRef theBuffer, size_t a3)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v7 = 0;
  while (a3 < DataLength)
  {
    v15 = 0;
    lengthAtOffsetOut = 0;
    if (CMBlockBufferGetDataPointer(theBuffer, a3, &lengthAtOffsetOut, 0, &v15))
    {
      break;
    }

    v8 = v15;
    v9 = lengthAtOffsetOut;
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
    v11 = 0;
    do
    {
      v12 = v11;
      if (v9 <= v11)
      {
        break;
      }

      v13 = write(*(DerivedStorage + 96), &v8[v11], v9 - v11);
      v11 = v13 + v12;
    }

    while (v13 > 0);
    v7 += v12;
    if (v12 != lengthAtOffsetOut)
    {
      break;
    }

    a3 += v12;
  }

  return v7;
}

uint64_t tcp_serverThreadMain(const void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(DerivedStorage + 120))
  {
    v4 = DerivedStorage;
    do
    {
      v5 = CMBaseObjectGetDerivedStorage(a1);
      v6 = socket(2, 1, 6);
      *(v5 + 88) = v6;
      if ((v6 & 0x80000000) == 0)
      {
        v12 = 1;
        if (!setsockopt(v6, 0xFFFF, 4, &v12, 4u))
        {
          *&v13.sa_data[10] = 0;
          *&v13.sa_data[2] = 0;
          *&v13.sa_len = 528;
          *v13.sa_data = bswap32(*(v5 + 40)) >> 16;
          v7 = *(v5 + 32);
          if (v7)
          {
            *v11 = 0;
            CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(v7, 0x600u, v11);
            *&v13.sa_data[2] = inet_addr(CStringPtrAndBufferToFree);
            free(*v11);
          }

          if (!bind(*(v5 + 88), &v13, 0x10u) && !listen(*(v5 + 88), 5))
          {
            v11[0] = 16;
            *(v5 + 96) = accept(*(v5 + 88), &v13, v11);
            tcp_sendAndReceiveData(a1);
          }
        }
      }

      v9 = *(v5 + 96);
      if ((v9 & 0x80000000) == 0)
      {
        close(v9);
        *(v5 + 96) = -1;
      }

      v10 = *(v5 + 88);
      if ((v10 & 0x80000000) == 0)
      {
        close(v10);
        *(v5 + 88) = -1;
      }
    }

    while (!*(v4 + 120));
  }

  return 0;
}

size_t OUTLINED_FUNCTION_1_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{

  return FigThreadCreate(v8, v9, 0x1Cu, 1, v11, v10, a7, a8);
}

dispatch_queue_t FigDispatchQueueCreateWithPriority(const char *a1, NSObject *a2, int a3)
{
  if (FigGetQualityOfServiceClassForFigThreadPriority(a3))
  {
    if (a2 != MEMORY[0x1E69E96A8])
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (a3 <= 43)
  {
    if ((a3 - 41) < 2)
    {
      if (qword_1ED4CDA08 != -1)
      {
        FigDispatchQueueCreateWithPriority_cold_1();
      }

      IsServerProcess = _MergedGlobals_63;
      goto LABEL_17;
    }

    if (a3 == 4)
    {
      IsServerProcess = 1;
      goto LABEL_17;
    }

LABEL_16:
    IsServerProcess = 0;
    goto LABEL_17;
  }

  if (a3 != 45)
  {
    if (a3 == 44)
    {
      IsServerProcess = FigServer_IsServerProcess();
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  IsServerProcess = _os_feature_enabled_impl();
  if (IsServerProcess)
  {
    getpid();
    IsServerProcess = sandbox_check() == 0;
  }

LABEL_17:
  if (a2 == MEMORY[0x1E69E96A8])
  {
LABEL_22:
    FigDebugIsInternalBuild();
LABEL_23:
    if (a3 == 39)
    {

      return FigDispatchQueueCreateStandardDispatchQueue(a1, a2, 9, QOS_CLASS_BACKGROUND);
    }

    else
    {

      return FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority(a1, a2, a3);
    }
  }

  if (!IsServerProcess)
  {
    goto LABEL_23;
  }

  return FigDispatchQueueCreateTargetingWorkloopWithPriority(a1, a2, a3);
}

uint64_t FigGetQualityOfServiceClassForFigThreadPriority(int a1)
{
  result = 0;
  if (a1 > 30)
  {
    if (a1 <= 45)
    {
      if (a1 != 31)
      {
        if (a1 == 38)
        {
          return 33;
        }

        else
        {
          return 0;
        }
      }

      return 17;
    }

    if (a1 != 46)
    {
      if (a1 != 49)
      {
        return result;
      }

      return 17;
    }

    return 25;
  }

  switch(a1)
  {
    case 8:
      return 17;
    case 25:
      return 9;
    case 30:
      return 25;
  }

  return result;
}

NSObject *FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority(const char *a1, NSObject *a2, unsigned int a3)
{
  RootQueueWithPriority = figDispatch_getRootQueueWithPriority(a3);
  v7 = dispatch_queue_create(a1, a2);
  if (gGMFigKTraceEnabled == 1)
  {
    FigThreadGetMachThreadPriorityValue(a3);
    kdebug_trace();
  }

  if (v7 && RootQueueWithPriority)
  {
    dispatch_set_target_queue(v7, RootQueueWithPriority);
  }

  return v7;
}

NSObject *FigDispatchQueueCreateStandardDispatchQueue(const char *a1, dispatch_queue_attr_t attr, int a3, dispatch_qos_class_t a4)
{
  initially_inactive = dispatch_queue_attr_make_initially_inactive(attr);
  v8 = dispatch_queue_create(a1, initially_inactive);
  if (v8)
  {
    if (a3)
    {
      dispatch_set_qos_class_fallback();
    }

    if (a4)
    {
      dispatch_set_qos_class_floor(v8, a4, 0);
    }

    dispatch_activate(v8);
    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    FigDispatchQueueCreateStandardDispatchQueue_cold_1();
  }

  return v8;
}

NSObject *figDispatch_copyRootQueueWithPriorityAndClientPID(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (figDispatch_copyRootQueueWithPriorityAndClientPID_initQueuesDictOnce != -1)
  {
    figDispatch_copyRootQueueWithPriorityAndClientPID_cold_1();
  }

  v4 = CFStringCreateWithFormat(0, 0, @"%d_%02d", a2, a1);
  FigSimpleMutexLock(sFigDispatchQueuesForPID_1);
  Value = CFDictionaryGetValue(sFigDispatchQueuesForPID_0, v4);
  if (Value)
  {
    v6 = Value;
    RootQueueWithMachPriority = FigCFWeakReferenceLoadAndRetain(Value);
    if (RootQueueWithMachPriority)
    {
      goto LABEL_8;
    }

    FigCFWeakReferenceStore(v6, 0);
    CFDictionaryRemoveValue(sFigDispatchQueuesForPID_0, v4);
    free(v6);
  }

  v8 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v8)
  {
    v10 = v8;
    QualityOfServiceClassForFigThreadPriority = FigGetQualityOfServiceClassForFigThreadPriority(a1);
    MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue(a1);
    snprintf(__str, 0x40uLL, "com.apple.coremedia.rootQueueForPID.%d_%02d", a2, a1);
    RootQueueWithMachPriority = figDispatch_createRootQueueWithMachPriority(__str, MachThreadPriorityValue, QualityOfServiceClassForFigThreadPriority);
    if (RootQueueWithMachPriority)
    {
      CFRetain(v4);
      dispatch_queue_set_specific(RootQueueWithMachPriority, &figDispatch_copyRootQueueWithPriorityAndClientPID_sFigDispatchRootQueueContextKey, v4, figDispatch_rootQueueDestructor);
      FigCFWeakReferenceStore(v10, RootQueueWithMachPriority);
      CFDictionarySetValue(sFigDispatchQueuesForPID_0, v4, v10);
    }

    else
    {
      free(v10);
    }
  }

  else
  {
    RootQueueWithMachPriority = 0;
  }

LABEL_8:
  FigSimpleMutexUnlock(sFigDispatchQueuesForPID_1);
  CFRelease(v4);
  return RootQueueWithMachPriority;
}

uint64_t figDispatch_getRootQueueWithPriority(unsigned int a1)
{
  v1 = &sRootQueuesIndexedByFigThreadPriority[2 * a1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figDispatch_getRootQueueWithPriority_block_invoke;
  block[3] = &__block_descriptor_tmp_17_7;
  v4 = a1;
  if (*v1 != -1)
  {
    dispatch_once(&sRootQueuesIndexedByFigThreadPriority[2 * a1], block);
  }

  return v1[1];
}

NSObject *FigDispatchCreateWorkloopWithPriority(const char *a1, unsigned int a2)
{
  inactive = dispatch_workloop_create_inactive(a1);
  FigThreadGetMachThreadPriorityValue(a2);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  return inactive;
}

uint64_t FigDispatchQueueSetPriorityAndClientPID(NSObject *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigDispatchQueueSetPriorityAndClientPID_cold_3(&v10);
    return v10;
  }

  if (a3)
  {
    v4 = figDispatch_copyRootQueueWithPriorityAndClientPID(a2, a3);
    if (!v4)
    {
      FigDispatchQueueSetPriorityAndClientPID_cold_1(&v8);
      return v8;
    }

    v5 = v4;
    dispatch_set_target_queue(a1, v4);
    dispatch_release(v5);
  }

  else
  {
    RootQueueWithPriority = figDispatch_getRootQueueWithPriority(a2);
    if (!RootQueueWithPriority)
    {
      FigDispatchQueueSetPriorityAndClientPID_cold_2(&v9);
      return v9;
    }

    dispatch_set_target_queue(a1, RootQueueWithPriority);
  }

  return 0;
}

void FigDeferCFRelease(void *context)
{
  if (context)
  {
    if (qword_1ED4CDA00 != -1)
    {
      FigDeferCFRelease_cold_1();
    }

    v2 = qword_1ED4CD9F8;

    dispatch_async_f(v2, context, figDispatch_releaseResourceOnQueue);
  }
}

uint64_t figDispatch_initDeferredReleaseQueue(dispatch_queue_t *a1)
{
  v2 = dispatch_queue_create("com.apple.coremedia.dispatchUtil.serialReleaseQueue", 0);
  *a1 = v2;

  return FigWatchdogMonitorDispatchQueue(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t FigDispatchSyncCopyPropertyImplementation(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 0;
  if (a1 && a2 && a3 && a4 && a6)
  {
    context[0] = &v8;
    context[1] = a3;
    context[2] = a4;
    context[3] = a2;
    context[4] = a6;
    context[5] = a5;
    dispatch_sync_f(a1, context, figPropertyCopyCallback);
    return v8;
  }

  else
  {
    FigDispatchSyncCopyPropertyImplementation_cold_1(context);
    return LODWORD(context[0]);
  }
}

uint64_t figPropertyCopyCallback(uint64_t a1)
{
  result = (*(a1 + 24))(*(a1 + 8), *(a1 + 16), *(a1 + 40), *(a1 + 32));
  **a1 = result;
  return result;
}

uint64_t FigDispatchAsyncSetPropertyImplementation(NSObject *a1, uint64_t a2, const void *a3, const void *a4, const void *a5)
{
  if (a1 && a2 && a3 && a4)
  {
    v10 = malloc_type_malloc(0x30uLL, 0xF20408A8E6B83uLL);
    if (v10)
    {
      v11 = v10;
      v10[1] = CFRetain(a3);
      v11[2] = CFRetain(a4);
      if (a5)
      {
        v12 = CFRetain(a5);
      }

      else
      {
        v12 = 0;
      }

      v11[3] = a2;
      v11[4] = v12;
      dispatch_async_f(a1, v11, figPropertySetCallback);
      return 0;
    }

    else
    {
      FigDispatchAsyncSetPropertyImplementation_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    FigDispatchAsyncSetPropertyImplementation_cold_2(&v15);
    return v15;
  }
}

void figPropertySetCallback(uint64_t a1)
{
  (*(a1 + 24))(*(a1 + 8), *(a1 + 16), *(a1 + 32));
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

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

intptr_t FigDispatchAsyncAndWaitWithTimeout_f(NSObject *a1, uint64_t a2, uint64_t a3, dispatch_time_t a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __FigDispatchAsyncAndWaitWithTimeout_f_block_invoke;
  v9[3] = &__block_descriptor_tmp_68;
  v9[4] = a3;
  v9[5] = a2;
  v6 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_async(a1, v6);
  v7 = dispatch_block_wait(v6, a4);
  _Block_release(v6);
  return v7;
}

uint64_t FigDispatchQueueHolderGetTypeID()
{
  if (FigDispatchQueueHolderGetTypeID_sRegisterFigDispatchQueueHolderTypeOnce != -1)
  {
    FigDispatchQueueHolderGetTypeID_cold_1();
  }

  return sFigDispatchQueueHolderID;
}

uint64_t registerFigDispatchQueueHolderType()
{
  result = _CFRuntimeRegisterClass();
  sFigDispatchQueueHolderID = result;
  return result;
}

uint64_t FigDispatchQueueHolderCreateWithDispatchQueue(uint64_t a1, NSObject *a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (FigDispatchQueueHolderGetTypeID_sRegisterFigDispatchQueueHolderTypeOnce != -1)
      {
        FigDispatchQueueHolderGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v6 = Instance;
        *(Instance + 16) = a2;
        dispatch_retain(a2);
        result = 0;
        *a3 = v6;
      }

      else
      {
        FigDispatchQueueHolderCreateWithDispatchQueue_cold_2(&v8);
        return v8;
      }
    }

    else
    {
      FigDispatchQueueHolderCreateWithDispatchQueue_cold_3(&v9);
      return v9;
    }
  }

  else
  {
    FigDispatchQueueHolderCreateWithDispatchQueue_cold_4(&v10);
    return v10;
  }

  return result;
}

uint64_t __figDispatch_copyRootQueueWithPriorityAndClientPID_block_invoke()
{
  sFigDispatchQueuesForPID_0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = FigSimpleMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  sFigDispatchQueuesForPID_1 = result;
  return result;
}

void figDispatch_rootQueueDestructor(const void *a1)
{
  FigSimpleMutexLock(sFigDispatchQueuesForPID_1);
  Value = CFDictionaryGetValue(sFigDispatchQueuesForPID_0, a1);
  if (Value)
  {
    v3 = Value;
    v4 = FigCFWeakReferenceLoadAndRetain(Value);
    if (v4)
    {
      CFRelease(v4);
    }

    else
    {
      FigCFWeakReferenceStore(v3, 0);
      CFDictionaryRemoveValue(sFigDispatchQueuesForPID_0, a1);
      free(v3);
    }
  }

  FigSimpleMutexUnlock(sFigDispatchQueuesForPID_1);

  CFRelease(a1);
}

void __figDispatch_getRootQueueWithPriority_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2 - 45 < 4)
  {
    __figDispatch_getRootQueueWithPriority_block_invoke_cold_1(*(a1 + 32), v1, &v6);
  }

  else
  {
    QualityOfServiceClassForFigThreadPriority = FigGetQualityOfServiceClassForFigThreadPriority(*(a1 + 32));
    MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue(v2);
    v5 = &sRootQueuesIndexedByMachPriority[2 * MachThreadPriorityValue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __figDispatch_getSharedPerMachPriorityRootQueueWithPriority_block_invoke;
    block[3] = &__block_descriptor_tmp_20_2;
    v8 = MachThreadPriorityValue;
    v9 = QualityOfServiceClassForFigThreadPriority;
    if (*v5 != -1)
    {
      dispatch_once(&sRootQueuesIndexedByMachPriority[2 * MachThreadPriorityValue], block);
    }

    sRootQueuesIndexedByFigThreadPriority[2 * *v1 + 1] = v5[1];
  }
}

size_t __figDispatch_getRootQueueWithPriority_block_invoke_2(uint64_t a1)
{
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  v4 = *(a1 + 32);

  return figSetMachThreadPriority(v3, v4);
}

size_t __figDispatch_getSharedPerMachPriorityRootQueueWithPriority_block_invoke_2(uint64_t a1)
{
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  v4 = *(a1 + 32);

  return figSetMachThreadPriority(v3, v4);
}

void FigDispatchQueueHolder_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *FigDispatchQueueHolder_CopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = a1[2];
  label = dispatch_queue_get_label(v4);
  CFStringAppendFormat(Mutable, 0, @"<FigDispatchQueueHolder %p> %p (%s)", a1, v4, label);
  return Mutable;
}

uint64_t FigProcessStateMonitorRemoteResetPurgeEvents()
{
  FigReentrantMutexLock(qword_1ED4CDA20);
  qword_1ED4CDA28 = 0;
  if ([qword_1ED4CDA30 count])
  {
    v0 = 0;
    do
    {
      v1 = [qword_1ED4CDA30 pointerAtIndex:v0];
      if (v1)
      {
        v2 = v1;
        CFRetain(v1);
        if (v2[24] == 1 || *(v2 + 10))
        {
          [qword_1ED4CDA30 replacePointerAtIndex:v0 withPointer:0];
        }

        CFRelease(v2);
      }

      ++v0;
    }

    while (v0 < [qword_1ED4CDA30 count]);
  }

  [qword_1ED4CDA30 compact];
  v3 = qword_1ED4CDA20;

  return FigReentrantMutexUnlock(v3);
}

uint64_t remoteFigProcessStateMonitor_EnsureInternalStateSetup()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __remoteFigProcessStateMonitor_EnsureInternalStateSetup_block_invoke;
  block[3] = &unk_1E749E610;
  block[4] = &v3;
  if (remoteFigProcessStateMonitor_EnsureInternalStateSetup_gFigProcessStateMonitorRemoteSetupOnce != -1)
  {
    dispatch_once(&remoteFigProcessStateMonitor_EnsureInternalStateSetup_gFigProcessStateMonitorRemoteSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t figProcessStateMonitor_updateLastPurgeEventIfNecessary(uint64_t a1)
{
  FigReentrantMutexLock(qword_1ED4CDA20);
  if (qword_1ED4CDA28 < a1)
  {
    qword_1ED4CDA28 = a1;
  }

  v2 = qword_1ED4CDA20;

  return FigReentrantMutexUnlock(v2);
}

uint64_t FigProcessStateMonitorRemoteAssociateObject(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigProcessStateMonitorRemoteAssociateObject_cold_2(v23, a2, a3, a4, a5, a6, a7, a8);
    return v23[0];
  }

  if (!a2)
  {
    FigProcessStateMonitorRemoteAssociateObject_cold_1(v23, 0, a3, a4, a5, a6, a7, a8);
    return v23[0];
  }

  FigReentrantMutexLock(qword_1ED4CDA20);
  if (*(a1 + 40) != a2)
  {
    *(a1 + 104) = 1;
    CFSetAddValue(*(a1 + 96), a2);
    if (dword_1ED4CC380 >= 2)
    {
      v17[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC378, 1, v17, &type);
      v11 = v17[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v17[1] = 136315650;
        v18 = "FigProcessStateMonitorRemoteAssociateObject";
        v19 = 2114;
        v20 = a1;
        v21 = 2048;
        v22 = a2;
        v14 = _os_log_send_and_compose_impl();
        LOBYTE(v11) = v17[0];
      }

      else
      {
        v14 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC378, 1u, 1, v14, v14 != v23, v11, 0, v12);
    }
  }

  FigReentrantMutexUnlock(qword_1ED4CDA20);
  return 0;
}

uint64_t FigProcessStateMonitorRemoteDisassociateObject(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return FigProcessStateMonitorRemoteDisassociateObject_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!a2)
  {
    return FigProcessStateMonitorRemoteDisassociateObject_cold_1(a1, 0, a3, a4, a5, a6, a7, a8);
  }

  FigReentrantMutexLock(qword_1ED4CDA20);
  if (*(a1 + 40) != a2)
  {
    v10 = *(a1 + 96);
    if (!v10)
    {
      CFGetRetainCount(a1);
      FigUserCrashWithMessage("monitor->associatedObjects == NULL! Monitor = %p; RC = %zu; serverObjectID = %llu; targetObjectID = %llu", v11, v12, v13, v14, v15, v16, v17, a1);
    }

    if (CFSetContainsValue(v10, a2))
    {
      CFSetRemoveValue(*(a1 + 96), a2);
      if (dword_1ED4CC380 >= 2)
      {
        v25[0] = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC378, 1, v25, &type);
        v19 = v25[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v21 = v19;
        }

        else
        {
          v21 = v19 & 0xFFFFFFFE;
        }

        if (v21)
        {
          v25[1] = 136315650;
          v26 = "FigProcessStateMonitorRemoteDisassociateObject";
          v27 = 2114;
          v28 = a1;
          v29 = 2048;
          v30 = a2;
          v22 = _os_log_send_and_compose_impl();
          LOBYTE(v19) = v25[0];
        }

        else
        {
          v22 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC378, 1u, 1, v22, v22 != &v31, v19, 0, v20);
      }
    }
  }

  return FigReentrantMutexUnlock(qword_1ED4CDA20);
}

void figProcessStateMonitorRemote_deadConnectionCallback(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 1;
  if (dword_1ED4CC380)
  {
    v8[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC378, 1, v8, &type);
    v3 = v8[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v8[1] = 136315394;
      v9 = "figProcessStateMonitorRemote_deadConnectionCallback";
      v10 = 2114;
      v11 = a1;
      v6 = _os_log_send_and_compose_impl();
      LOBYTE(v3) = v8[0];
    }

    else
    {
      v6 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC378, 1u, 1, v6, v6 != &v12, v3, 0, v4);
  }
}

uint64_t figProcessStateMonitorRemote_propagateMediaServicesDeathNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  FigReentrantMutexLock(qword_1ED4CDA20);
  FigStopMonitoringMediaServicesProcessDeath(a2, v7, v8, v9, v10, v11, v12, v13);
  if (!*(a2 + 104) || CFSetGetCount(*(a2 + 96)) >= 1)
  {
    if (dword_1ED4CC380 >= 2)
    {
      v21[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC378, 1, v21, &type);
      v15 = v21[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v21[1] = 136315650;
        v22 = "figProcessStateMonitorRemote_propagateMediaServicesDeathNotificationCallback";
        v23 = 2112;
        v24 = a2;
        v25 = 2112;
        v26 = a5;
        v18 = _os_log_send_and_compose_impl();
        LOBYTE(v15) = v21[0];
      }

      else
      {
        v18 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC378, 1u, 1, v18, v18 != &v27, v15, 0, v16);
    }

    FigProcessStateMonitorInformRemotesOfIndirectDependencyDeath(a5);
  }

  return FigReentrantMutexUnlock(qword_1ED4CDA20);
}

double figProcessStateMonitorRemote_Init(_OWORD *a1)
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

__CFString *figProcessStateMonitorRemote_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  v4 = "YES";
  if (*(a1 + 24))
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  if (!*(a1 + 88))
  {
    v4 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigProcessStateMonitorRemoteRef %p %@ %d OID: %016llx, serverDied: %s, enrolledInPurge: %s, lastPurgeID: %lld>", a1, *(a1 + 16), *(a1 + 48), *(a1 + 40), v5, v4, *(a1 + 80));
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16)
{
  a16 = 0;
  a14 = 0;
  v18 = *(v16 + 888);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v18, 1, &a16, &a14);
}

uint64_t OUTLINED_FUNCTION_9_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, char a17, int a18)
{
  a18 = 0;
  a17 = 0;
  v20 = *(v18 + 888);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v20, 1, &a18, &a17);
}

uint64_t OUTLINED_FUNCTION_14_15(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return FigXPCCreateBasicMessage(0x63726574u, 0, va);
}

BOOL OUTLINED_FUNCTION_18_14(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_19_12(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_20_12(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_log_type_t type, int a15, int a16)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_21_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{

  FigXPCRelease(a16);
}

uint64_t FigEndpointManagerGetClassID()
{
  if (_MergedGlobals_65 != -1)
  {
    FigEndpointManagerGetClassID_cold_1();
  }

  return qword_1ED4CDA58;
}

size_t manager_getClassID(void *a1)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&manager_getClassID_sFigEndpointManagerClassDesc, ClassID, 1, a1, v3, v4, v5, v6);
}

uint64_t FigEndpointManagerGetTypeID()
{
  if (_MergedGlobals_65 != -1)
  {
    FigEndpointManagerGetClassID_cold_1();
  }

  v1 = qword_1ED4CDA58;

  return CMBaseClassGetCFTypeID(v1);
}

uint64_t NeroTransportConnectionGetClassID()
{
  if (NeroTransportConnectionGetClassID_sRegisterFigTransportConnectionBaseTypeOnce != -1)
  {
    NeroTransportConnectionGetClassID_cold_1();
  }

  return NeroTransportConnectionGetClassID_sFigTransportConnectionClassID;
}

size_t __NeroTransportConnectionGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&NeroTransportConnectionGetClassID_sFigTransportConnectionClassDesc, ClassID, 1, &NeroTransportConnectionGetClassID_sFigTransportConnectionClassID, v1, v2, v3, v4);
}

uint64_t NeroTransportConnectionGetTypeID()
{
  if (NeroTransportConnectionGetClassID_sRegisterFigTransportConnectionBaseTypeOnce != -1)
  {
    NeroTransportConnectionGetClassID_cold_1();
  }

  v1 = NeroTransportConnectionGetClassID_sFigTransportConnectionClassID;

  return CMBaseClassGetCFTypeID(v1);
}

uint64_t flipSceneDescriptionData(int8x8_t *a1, unint64_t a2)
{
  if (a2 <= 0xF)
  {
    v9 = v2;
    v10 = v3;
    flipSceneDescriptionData_cold_1(&v8);
    return v8;
  }

  else
  {
    result = 0;
    v6 = a1[1].u16[2];
    a1[1].i32[0] = bswap32(a1[1].u32[0]);
    v7 = bswap32(a1[1].u16[3]) >> 16;
    *a1 = vrev32_s8(*a1);
    a1[1].i16[2] = bswap32(v6) >> 16;
    a1[1].i16[3] = v7;
  }

  return result;
}

uint64_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData(CFAllocatorRef alloc, unsigned int *a2, unint64_t a3, int a4, CMFormatDescriptionRef *formatDescriptionOut)
{
  if (!a2)
  {
    CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_10(&theDict);
    return theDict;
  }

  if (a3 <= 0xF)
  {
    CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_9(&theDict);
    return theDict;
  }

  v5 = formatDescriptionOut;
  if (!formatDescriptionOut)
  {
    CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_7(&theDict);
    return theDict;
  }

  v6 = bswap32(*a2);
  if (v6 < 0x10 || v6 > a3)
  {
    CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_6(&theDict);
    return theDict;
  }

  v9 = a2[1];
  v10 = v6 - 16;
  theDict = 0;
  if (v10 < 8)
  {
    v23 = 0;
    goto LABEL_36;
  }

  v25 = v9;
  Mutable = 0;
  v12 = a2 + 4;
  v13 = MEMORY[0x1E695E9D8];
  v14 = MEMORY[0x1E695E9E8];
  do
  {
    v16 = *v12;
    v15 = v12[1];
    *bytes = v15;
    v17 = bswap32(v16);
    v18 = v17;
    if (v17 < 8 || v10 < v17)
    {
      CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_5(&v29);
      v23 = 0;
      v24 = 0;
LABEL_41:
      v20 = 0;
      goto LABEL_45;
    }

    if (v15 != 1701147238)
    {
      v24 = CFStringCreateWithBytes(alloc, bytes, 4, 0, 0);
      if (!v24)
      {
        CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_3(&v29);
        v23 = 0;
        goto LABEL_41;
      }

      v20 = CFDataCreate(alloc, v12 + 8, v18 - 8);
      if (!v20)
      {
        CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_2(&v29);
        goto LABEL_44;
      }

      Mutable = theDict;
      if (!theDict)
      {
        Mutable = CFDictionaryCreateMutable(alloc, 0, v13, v14);
        theDict = Mutable;
        if (!Mutable)
        {
          CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_1(&v29);
LABEL_44:
          v23 = 0;
LABEL_45:
          v21 = v29;
LABEL_28:
          v5 = formatDescriptionOut;
          v9 = v25;
          goto LABEL_29;
        }
      }

      CFDictionarySetValue(Mutable, v24, v20);
      CFRelease(v20);
      CFRelease(v24);
    }

    v12 = (v12 + v18);
    v10 -= v18;
  }

  while (v10 > 7);
  if (!Mutable)
  {
    v23 = 0;
    v21 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_28;
  }

  v23 = CFDictionaryCreate(alloc, &kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, &theDict, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = v25;
  if (v23)
  {
    v21 = 0;
    v24 = 0;
    v20 = 0;
  }

  else
  {
    CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_4(&v29);
    v24 = 0;
    v20 = 0;
    v21 = v29;
  }

  v5 = formatDescriptionOut;
LABEL_29:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (!v21)
  {
LABEL_36:
    v21 = CMFormatDescriptionCreate(alloc, 0x7363656Eu, bswap32(v9), v23, v5);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v21;
}

uint64_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer(const __CFAllocator *a1, CFTypeRef cf, uint64_t a3, CMBlockBufferRef *a4)
{
  sourceBytes = 0;
  v18 = 0;
  destinationBuffer = 0;
  if (!cf)
  {
    CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_5(context);
LABEL_27:
    Value = 0;
    goto LABEL_28;
  }

  if (!a4)
  {
    CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_4(context);
    goto LABEL_27;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CMFormatDescriptionGetTypeID())
  {
    CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_1(context);
    goto LABEL_27;
  }

  if (CMFormatDescriptionGetMediaType(cf) != 1935893870)
  {
    CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_2(context);
    goto LABEL_27;
  }

  Extensions = CMFormatDescriptionGetExtensions(cf);
  if (Extensions)
  {
    blockBufferOut = 0;
    Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
    if (Value)
    {
      v20 = 0;
      memset(context, 0, sizeof(context));
      v10 = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
      if (v10 || (v10 = FigAtomWriterInitWithBlockBuffer(blockBufferOut, context), v10))
      {
        v14 = v10;
        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        Value = 0;
        goto LABEL_29;
      }

      CFDictionaryApplyFunction(Value, sceneBridgeAppendExtensionsFunc, context);
      Value = blockBufferOut;
    }

    DataLength = CMBlockBufferGetDataLength(Value);
    if (DataLength < 0x7FFFFFF0)
    {
      v12 = DataLength;
      goto LABEL_13;
    }

    CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_3(context);
LABEL_28:
    v14 = LODWORD(context[0]);
    goto LABEL_29;
  }

  Value = 0;
  v12 = 0;
LABEL_13:
  sourceBytes = _byteswap_uint64(__PAIR64__(v12 + 16, CMFormatDescriptionGetMediaSubType(cf)));
  v18 = 0xFFFF000000000000;
  DataPointer = CMBlockBufferCreateWithMemoryBlock(a1, 0, (v12 + 16), a1, 0, 0, (v12 + 16), 1u, &destinationBuffer);
  if (!DataPointer)
  {
    DataPointer = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 0x10uLL);
    if (!DataPointer)
    {
      if (!Value || (*&context[0] = 0, DataPointer = CMBlockBufferGetDataPointer(destinationBuffer, 0x10uLL, 0, 0, context), !DataPointer) && (DataPointer = CMBlockBufferCopyDataBytes(Value, 0, v12, *&context[0]), !DataPointer))
      {
        v14 = 0;
        *a4 = destinationBuffer;
        destinationBuffer = 0;
        goto LABEL_19;
      }
    }
  }

  v14 = DataPointer;
LABEL_29:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

LABEL_19:
  if (Value)
  {
    CFRelease(Value);
  }

  return v14;
}

uint64_t FigBridgeGetCommonEncryptionScheme(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v11 = 1935894637;
      v9 = 0;
      v10 = 0;
      figBridge_GetSinfChildDataWithPath(a1, a2, &v11, 1, &v10, &v9);
      v5 = v4;
      result = 0;
      if (!v5 && v9 >= 0xC)
      {
        v6 = *(v10 + 4);
        v7 = *(v10 + 8);
        if (v6 == 1668179299 && v7 == 256)
        {
          return 1667591779;
        }

        else
        {
          result = 1667392306;
          if (v6 != 845374051 || v7 != 256)
          {
            if (v7 == 256 && v6 == 1935893091)
            {
              return 1667392371;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void figBridge_GetSinfChildDataWithPath(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, void *a5, void *a6)
{
  memset(v14, 0, sizeof(v14));
  if (a1)
  {
    if (a3)
    {
      if (!FigAtomStreamInitWithMemoryBlock(a1, a2, 0, 1, v14))
      {
        FigAtomStreamPositionViaAtomPath(v14, a4, a3);
        if (!v11)
        {
          v12 = 0;
          v13 = 0;
          if (!FigAtomStreamGetCurrentAtomTypeAndDataLength(v14, 0, &v12) && !FigAtomStreamGetCurrentAtomDataGlobalOffset(v14, 0, &v13))
          {
            if (a5)
            {
              *a5 = a1 + v13;
            }

            if (a6)
            {
              *a6 = v12;
            }
          }
        }
      }
    }
  }
}

uint64_t FigBridgeGetOriginalFormatFromSinf(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v8 = 1718775137;
      v6 = 0;
      v7 = 0;
      figBridge_GetSinfChildDataWithPath(a1, a2, &v8, 1, &v7, &v6);
      v5 = v4;
      result = 0;
      if (!v5 && v6 == 4)
      {
        return bswap32(*v7);
      }
    }
  }

  return result;
}

size_t FigBridgeExtractCommonEncryptionTrackEncryptionExtension(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20[0] = 0x74656E6373636869;
  v18 = 0;
  figBridge_GetSinfChildDataWithPath(a5, a6, v20, 2, &v19, &v18);
  if (v11)
  {
    return 0;
  }

  if (!v19 || v18 < 0x18)
  {
    return 0;
  }

  if (a2)
  {
    *(a2 + 8 * *a4) = CFRetain(@"CommonEncryptionTrackEncryptionBox");
  }

  if (a3 && (v14 = CFDataCreate(a1, v19, v18), (*(a3 + 8 * *a4) = v14) == 0))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<< FormatDescriptionBridge_Common >>>", 0xAE, v6, v16, v17);
  }

  else
  {
    result = 0;
  }

  ++*a4;
  return result;
}

void *FigTransportConnectionUSBCopyEventHandler(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage(a1) + 96);
  if (result)
  {

    return _Block_copy(result);
  }

  return result;
}

uint64_t FigTransportConnectionUSBSetAsConnected(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(a1);
  *(result + 25) = 1;
  return result;
}

__CFString *usb_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTransportConnectionUSB %p>", a1);
  return Mutable;
}

_opaque_pthread_t *usb_stopMessageSendingAndReceivingThreads(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = DerivedStorage;
  *(DerivedStorage + 24) = 1;
  v3 = (DerivedStorage + 192);
  if (*(DerivedStorage + 192))
  {
    dispatch_semaphore_signal(*(DerivedStorage + 200));
    FigThreadJoin(*(v2 + 192), 0);
    dispatch_sync(*(v2 + 16), &__block_literal_global_58);
    dispatch_release(*(v2 + 200));
    *v3 = 0;
    v3[1] = 0;
  }

  result = *(v2 + 128);
  if (result)
  {
    if (*(v2 + 136))
    {
      CFRunLoopStop(*(v2 + 136));
      result = *(v2 + 128);
    }

    result = FigThreadJoin(result, 0);
    *(v2 + 128) = 0;
  }

  return result;
}

uint64_t usb_Start(uint64_t a1)
{
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    v7 = 4294955241;
    *(v10[0] + 24) = -12055;
  }

  else
  {
    v3 = DerivedStorage;
    if (CFEqual(*(DerivedStorage + 72), @"Server"))
    {
      v4 = sInstanceCount == 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v5 = *(v3 + 8);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = __usb_Start_block_invoke;
      v8[3] = &unk_1E74A5D80;
      v8[4] = &v9;
      v8[5] = v3;
      v8[6] = a1;
      dispatch_sync(v5, v8);
      v7 = *(v10[0] + 24);
    }

    else
    {
      usb_Start_cold_1(v10, &v12);
      v7 = v12;
    }
  }

  _Block_object_dispose(&v9, 8);
  return v7;
}

uint64_t usb_messageSendingThreadMain(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(DerivedStorage + 24))
  {
    v3 = DerivedStorage;
    do
    {
      dispatch_semaphore_wait(*(v3 + 200), 0xFFFFFFFFFFFFFFFFLL);
      usb_sendDataViaUSB(a1, 0);
    }

    while (!*(v3 + 24));
  }

  return 0;
}

uint64_t usb_clientThreadMain(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  theScore = 0;
  v23 = 0;
  theInterface = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  Current = CFRunLoopGetCurrent();
  *(DerivedStorage + 136) = Current;
  if (Current)
  {
    *(DerivedStorage + 288) = a1;
    *(DerivedStorage + 296) = 0;
    *(DerivedStorage + 304) = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
    v4 = *(DerivedStorage + 80);
    if (v4)
    {
      IOKitObject = FigCFIOKitObjectGetIOKitObject(v4);
      v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
      v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      if (!IOCreatePlugInInterfaceForService(IOKitObject, v6, v7, &theInterface, &theScore))
      {
        v8 = theInterface;
        *(DerivedStorage + 256) = theInterface;
        QueryInterface = (*v8)->QueryInterface;
        v10 = CFUUIDGetConstantUUIDWithBytes(0, 0x8Fu, 0xDBu, 0x84u, 0x55u, 0x74u, 0xA6u, 0x11u, 0xD6u, 0x97u, 0xB1u, 0, 0x30u, 0x65u, 0xD3u, 0x60u, 0x8Eu);
        v11 = CFUUIDGetUUIDBytes(v10);
        if (!(QueryInterface)(v8, *&v11.byte0, *&v11.byte8, &v23))
        {
          v12 = v23;
          *(DerivedStorage + 264) = v23;
          if (!(*(*v12 + 64))(v12))
          {
            *(DerivedStorage + 272) = 1;
            if (!(*(*v23 + 152))(v23, &v22 + 1))
            {
              if (HIBYTE(v22))
              {
                v14 = 1;
                while (!(*(*v23 + 208))(v23, v14, &v22, &v21 + 1, &v21, &v19, &v20) && !(*(*v23 + 360))(v23, v14))
                {
                  if (v21 == 2 && v22 == 1)
                  {
                    if (!*(DerivedStorage + 273))
                    {
                      *(DerivedStorage + 273) = v14;
                    }
                  }

                  else
                  {
                    v16 = v21 == 2 && v22 == 0;
                    if (v16 && !*(DerivedStorage + 274))
                    {
                      *(DerivedStorage + 274) = v14;
                      *(DerivedStorage + 248) = v19;
                    }
                  }

                  if (HIBYTE(v22) < ++v14)
                  {
                    goto LABEL_27;
                  }
                }
              }

              else
              {
LABEL_27:
                if (*(DerivedStorage + 273))
                {
                  if (*(DerivedStorage + 274))
                  {
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 0x40000000;
                    aBlock[2] = __usb_clientThreadSetup_block_invoke;
                    aBlock[3] = &__block_descriptor_tmp_40_1;
                    aBlock[4] = v23;
                    aBlock[5] = DerivedStorage;
                    *(DerivedStorage + 232) = _Block_copy(aBlock);
                    v17[0] = MEMORY[0x1E69E9820];
                    v17[1] = 0x40000000;
                    v17[2] = __usb_clientThreadSetup_block_invoke_2;
                    v17[3] = &__block_descriptor_tmp_42_1;
                    v17[4] = DerivedStorage;
                    *(DerivedStorage + 240) = _Block_copy(v17);
                    if (!(*(*v23 + 32))(v23, DerivedStorage + 280))
                    {
                      CFRunLoopAddSource(*(DerivedStorage + 136), *(DerivedStorage + 280), *MEMORY[0x1E695E8E0]);
                      if (!(*(*(DerivedStorage + 232) + 16))())
                      {
                        usb_clientSendStartupPing(a1);
                        goto LABEL_8;
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

  usb_clientThreadTearDown(a1);
LABEL_8:
  CFRunLoopRun();
  usb_setDisconnected(a1);
  usb_clientThreadTearDown(a1);
  return 0;
}

void usb_sendDataViaUSB(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*(DerivedStorage + 208));
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v6 = (DerivedStorage + 216);
  v5 = *(DerivedStorage + 216);
  if (v5)
  {
    CMBlockBufferGetDataPointer(v5, *(DerivedStorage + 224), &lengthAtOffsetOut, 0, &dataPointerOut);
    v9 = usb_sendMemoryBlockViaUSB(a1);
    *(DerivedStorage + 224) += v9;
    if (v9 != lengthAtOffsetOut)
    {
      goto LABEL_3;
    }

    if (!(v9 % *(DerivedStorage + 248)))
    {
      v14 = 0;
      (*(*(DerivedStorage + 240) + 16))();
    }

    if (*v6)
    {
      CFRelease(*v6);
      *v6 = 0;
    }

    *(DerivedStorage + 224) = 0;
  }

  v7 = *(DerivedStorage + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __usb_sendDataViaUSB_block_invoke;
  v12[3] = &unk_1E74A5DA8;
  v13 = a2;
  v12[4] = &v15;
  v12[5] = DerivedStorage;
  dispatch_sync(v7, v12);
  v8 = v16[3];
  if (v8)
  {
    CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v8, *(DerivedStorage + 120), 0, 0, 0, 0, (DerivedStorage + 216));
    v10 = v16[3];
    if (v10)
    {
      CFRelease(v10);
      v16[3] = 0;
    }

    CMBlockBufferGetDataPointer(*v6, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
    v11 = usb_sendMemoryBlockViaUSB(a1);
    if (v11 == lengthAtOffsetOut)
    {
      if (!(v11 % *(DerivedStorage + 248)))
      {
        v14 = 0;
        (*(*(DerivedStorage + 240) + 16))();
      }

      v11 = *v6;
      if (*v6)
      {
        CFRelease(v11);
        v11 = 0;
        *v6 = 0;
      }
    }

    *(DerivedStorage + 224) = v11;
  }

LABEL_3:
  FigSimpleMutexUnlock(*(DerivedStorage + 208));
  _Block_object_dispose(&v15, 8);
}

void __usb_sendDataViaUSB_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((v2 - 1) >= 2)
  {
    v3 = 56;
    while (1)
    {
      v4 = *(*(a1 + 40) + v3);
      if (v4)
      {
        v5 = *(*(a1 + 32) + 8);
        v6 = *(v5 + 24);
        if (!v6)
        {
          *(v5 + 24) = v4;
          goto LABEL_9;
        }

        CMBlockBufferAppendBufferReference(v6, v4, 0, 0, 0);
        v7 = *(*(a1 + 40) + v3);
        if (v7)
        {
          CFRelease(v7);
LABEL_9:
          *(*(a1 + 40) + v3) = 0;
        }
      }

      v3 += 8;
      if (v3 == 72)
      {
        return;
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = *(*(a1 + 40) + 8 * v2 + 48);
  *(*(a1 + 40) + 8 * v2 + 48) = 0;
}

void __usb_sendMemoryBlockViaUSB_block_invoke(uint64_t a1)
{
  usb_setDisconnected(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t usb_setDisconnected(const void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v12[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v12, &type);
  v4 = v12[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v12[1] = 136315138;
    v13 = "usb_setDisconnected";
    v7 = _os_log_send_and_compose_impl();
    LOBYTE(v4) = v12[0];
  }

  else
  {
    v7 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v7, v7 != &v14, v4, 0, v5);
  *(DerivedStorage + 25) = 0;
  if (!*DerivedStorage)
  {
    CFRetain(a1);
    v8 = *(DerivedStorage + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __usb_setDisconnected_block_invoke;
    block[3] = &__block_descriptor_tmp_37_1;
    block[4] = DerivedStorage;
    block[5] = a1;
    dispatch_async(v8, block);
  }

  return usb_connectionReset(a1);
}

void __usb_setDisconnected_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      (*(v3 + 16))(v3, 2, 0);
    }
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

uint64_t usb_connectionReset(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  usb_resetMessageReceiptState(a1);
  CFRetain(a1);
  v3 = *(DerivedStorage + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __usb_connectionReset_block_invoke;
  v6[3] = &__block_descriptor_tmp_38_1;
  v6[4] = DerivedStorage;
  v6[5] = a1;
  dispatch_async(v3, v6);
  FigSimpleMutexLock(*(DerivedStorage + 208));
  v4 = *(DerivedStorage + 216);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 216) = 0;
  }

  *(DerivedStorage + 224) = 0;
  return FigSimpleMutexUnlock(*(DerivedStorage + 208));
}

uint64_t usb_resetMessageReceiptState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*(DerivedStorage + 160));
  v2 = *(DerivedStorage + 184);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 184) = 0;
  }

  *(DerivedStorage + 176) = 0;
  *(DerivedStorage + 168) = 0;
  v3 = *(DerivedStorage + 160);

  return FigSimpleMutexUnlock(v3);
}

void __usb_connectionReset_block_invoke(uint64_t a1)
{
  for (i = 56; i != 72; i += 8)
  {
    v3 = *(*(a1 + 32) + i);
    if (v3)
    {
      CFRelease(v3);
      *(*(a1 + 32) + i) = 0;
    }
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

void usb_clientThreadTearDown(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = DerivedStorage;
  if (*(DerivedStorage + 273))
  {
    (*(**(DerivedStorage + 264) + 224))(*(DerivedStorage + 264));
    *(v2 + 273) = 0;
  }

  if (*(v2 + 274))
  {
    (*(**(v2 + 264) + 224))(*(v2 + 264));
    *(v2 + 274) = 0;
  }

  v3 = *(v2 + 280);
  if (v3)
  {
    CFRunLoopRemoveSource(*(v2 + 136), v3, *MEMORY[0x1E695E8E0]);
    v4 = *(v2 + 280);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 280) = 0;
    }
  }

  if (*(v2 + 272))
  {
    (*(**(v2 + 264) + 72))(*(v2 + 264));
    *(v2 + 272) = 0;
  }

  v5 = *(v2 + 264);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(v2 + 264) = 0;
  }

  v6 = *(v2 + 256);
  if (v6)
  {
    IODestroyPlugInInterface(v6);
    *(v2 + 256) = 0;
  }

  *(v2 + 136) = 0;
  free(*(v2 + 304));
  *(v2 + 304) = 0;
  v7 = *(v2 + 232);
  if (v7)
  {
    _Block_release(v7);
    *(v2 + 232) = 0;
  }

  v8 = *(v2 + 240);
  if (v8)
  {
    _Block_release(v8);
    *(v2 + 240) = 0;
  }
}

uint64_t usb_readCompleted(uint64_t *a1, int a2, size_t a3)
{
  v5 = a1;
  v6 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  v8 = DerivedStorage;
  v9 = v5[2];
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (a2)
  {
    usb_resetMessageReceiptState(v6);
    v10 = 1;
    goto LABEL_50;
  }

  v11 = (DerivedStorage + 176);
  v12 = (DerivedStorage + 184);
  structureAllocator = *MEMORY[0x1E695E480];
  while (1)
  {
    FigSimpleMutexLock(*(v8 + 160));
    v13 = *(v8 + 168);
    if (v13 > 3)
    {
      goto LABEL_10;
    }

    v14 = 4 - v13 >= a3 ? a3 : 4 - v13;
    lengthAtOffsetOut = v14;
    dataPointerOut = v11 + v13;
    memcpy(v11 + v13, v9, v14);
    v13 = *(v8 + 168) + v14;
    *(v8 + 168) = v13;
    if (v13 < 4)
    {
      break;
    }

    v9 += v14;
    a3 -= v14;
LABEL_10:
    if (!*v12)
    {
      LODWORD(v15) = 1;
      if (CMBlockBufferCreateWithMemoryBlock(structureAllocator, 0, *(v8 + 176), *(v8 + 120), 0, 0, *(v8 + 176), 1u, (v8 + 184)) || CMBlockBufferReplaceDataBytes((v8 + 176), *v12, 0, 4uLL))
      {
        goto LABEL_49;
      }

      v13 = *(v8 + 168);
    }

    v16 = *v11;
    if (v13 < v16)
    {
      if (!a3 || CMBlockBufferGetDataPointer(*v12, v13, &lengthAtOffsetOut, 0, &dataPointerOut))
      {
        break;
      }

      if (lengthAtOffsetOut >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = lengthAtOffsetOut;
      }

      lengthAtOffsetOut = v17;
      memcpy(dataPointerOut, v9, v17);
      v9 += lengthAtOffsetOut;
      a3 -= lengthAtOffsetOut;
      v13 = *(v8 + 168) + lengthAtOffsetOut;
      *(v8 + 168) = v13;
      v16 = *(v8 + 176);
    }

    if (v13 == v16)
    {
      v15 = *(v8 + 184);
      *(v8 + 184) = 0;
      *(v8 + 176) = 0;
      *(v8 + 168) = 0;
      FigSimpleMutexUnlock(*(v8 + 160));
      v18 = CMBaseObjectGetDerivedStorage(v6);
      v34 = 0;
      if (CMBlockBufferGetDataLength(v15) >= 8)
      {
        DataLength = CMBlockBufferGetDataLength(v15);
        if (CMBlockBufferIsRangeContiguous(v15, 0, DataLength))
        {
          if (!CMBlockBufferGetDataPointer(v15, 0, 0, 0, &v34))
          {
            v20 = CMBlockBufferGetDataLength(v15);
            v21 = v34;
            if (v20 == *v34)
            {
              if (*(v34 + 1) == 1885957735)
              {
                v22 = v5;
                v23 = CMBaseObjectGetDerivedStorage(v6);
                v24 = CMBlockBufferGetDataLength(v15);
                v35 = 0;
                if (v24 < 0xD)
                {
                  goto LABEL_31;
                }

                if (!CMBlockBufferCreateWithBufferReference(structureAllocator, v15, 0xCuLL, v24 - 12, 0, &v35))
                {
                  if (*(v21 + 2))
                  {
                    usb_deviceSendStartupPing(v6);
                  }

LABEL_31:
                  if (*(v23 + 40))
                  {
                    usb_setDisconnected(v6);
                  }

                  else
                  {
                    *(v23 + 40) = 1;
                  }

                  cf = v35;
                  v26 = CMBaseObjectGetDerivedStorage(v6);
                  usb_connectionReset(v6);
                  *(v26 + 25) = 1;
                  if (!*v26)
                  {
                    if (cf)
                    {
                      CFRetain(cf);
                    }

                    CFRetain(v6);
                    v27 = *(v26 + 104);
                    v36[0] = MEMORY[0x1E69E9820];
                    v36[1] = 0x40000000;
                    v36[2] = __usb_setConnected_block_invoke;
                    v36[3] = &__block_descriptor_tmp_44_1;
                    v36[4] = v26;
                    v36[5] = cf;
                    v36[6] = v6;
                    dispatch_async(v27, v36);
                  }
                }

                if (v35)
                {
                  CFRelease(v35);
                }

                v5 = v22;
              }

              else if (!*v18)
              {
                CFRetain(v15);
                CFRetain(v6);
                v25 = *(v18 + 104);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 0x40000000;
                block[2] = __usb_didReceivePackage_block_invoke;
                block[3] = &__block_descriptor_tmp_43_0;
                block[4] = v18;
                block[5] = v15;
                block[6] = v6;
                dispatch_async(v25, block);
              }
            }
          }
        }
      }

      if (v15)
      {
        CFRelease(v15);
        LODWORD(v15) = 0;
      }

      goto LABEL_46;
    }

    LODWORD(v15) = 1;
LABEL_46:
    if (!a3)
    {
      goto LABEL_49;
    }
  }

  LODWORD(v15) = 1;
LABEL_49:
  v10 = v15 == 0;
LABEL_50:
  result = *(v8 + 232);
  if (result)
  {
    result = (*(result + 16))(result, v5);
  }

  if (!v10)
  {
    return FigSimpleMutexUnlock(*(v8 + 160));
  }

  return result;
}