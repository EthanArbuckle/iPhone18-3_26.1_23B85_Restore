uint64_t fcd_ttml_addParentDirectionAndUnicodeBidiRecursively(uint64_t a1, const void *a2, __CFArray *a3, __CFArray *a4)
{
  value = 0;
  cf = 0;
  v21 = 0;
  NodeType = FigTTMLNodeGetNodeType(a2, &v21);
  if (NodeType)
  {
    goto LABEL_23;
  }

  if ((v21 - 6) < 0xFFFFFFFE)
  {
LABEL_3:
    v9 = 0;
    goto LABEL_4;
  }

  ParentNode = FigTTMLNodeGetParentNode();
  NodeType = fcd_ttml_addParentDirectionAndUnicodeBidiRecursively(a1, ParentNode, a3, a4);
  if (NodeType || (NodeType = FigTTMLSynchronicTreeCopySSS(a1, a2, &cf), NodeType))
  {
LABEL_23:
    v9 = NodeType;
  }

  else
  {
    v12 = v21;
    v13 = CFDictionaryGetValue(cf, @"http://www.w3.org/ns/ttml#styling direction");
    v14 = v13;
    if (v12 == 4)
    {
      if (v13)
      {
        CFArrayAppendValue(a3, v13);
      }

      v15 = CFDictionaryGetValue(cf, @"http://www.w3.org/ns/ttml#styling unicodeBidi");
      if (v15)
      {
        v16 = v15;
        v17 = a4;
LABEL_17:
        CFArrayAppendValue(v17, v16);
        goto LABEL_3;
      }

      if (!v14)
      {
        goto LABEL_3;
      }

      v9 = FigCaptionDynamicStyleCreate();
      v20 = value;
      if (!v9)
      {
        CFArrayAppendValue(a4, value);
        v20 = value;
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    else
    {
      v18 = CFDictionaryGetValue(cf, @"http://www.w3.org/ns/ttml#styling unicodeBidi");
      v9 = 0;
      if (v14)
      {
        v19 = v18;
        if (v18)
        {
          CFArrayAppendValue(a3, v14);
          v17 = a4;
          v16 = v19;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textEmphasis(const void *a1)
{
  if (a1 && (v2 = OUTLINED_FUNCTION_3_75(a1), v2 == CFStringGetTypeID()))
  {
    v3 = OUTLINED_FUNCTION_104_0();
    result = FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis(v3, v4);
    if (!result)
    {
      *v1 = *MEMORY[0x1E6961528];
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textShear(const __CFString *a1, void *a2, uint64_t *a3)
{
  v9 = 0;
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    result = FigTTMLParseLength(a1, &v9 + 1, &v9);
    if (!result)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_1_19();
        return FigSignalErrorAtGM();
      }

      else
      {
        FigGeometryDimensionMake();
        *a2 = *MEMORY[0x1E6961540];
        v8 = FigGeometryDimensionCopyAsDictionary();
        result = 0;
        *a3 = v8;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textShadow(const void *a1)
{
  if (a1 && (v2 = OUTLINED_FUNCTION_3_75(a1), v2 == CFStringGetTypeID()))
  {
    v3 = OUTLINED_FUNCTION_104_0();
    result = FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList(v3, v4);
    if (!result)
    {
      *v1 = *MEMORY[0x1E6961538];
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_rubyReserve(const void *a1, void *a2, void *a3)
{
  v8 = 0;
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    result = FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve(a1, &v8);
    if (!result)
    {
      *a2 = *MEMORY[0x1E6961258];
      *a3 = v8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fcd_ttml_setDimensionProperty()
{
  v0 = FigGeometryDimensionCopyAsDictionary();
  v1 = FigCaptionDynamicStyleCreate();
  if (v1)
  {
    goto LABEL_4;
  }

  FigCaptionRegionGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v2 = OUTLINED_FUNCTION_104_0();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (v0)
  {
    CFRelease(v0);
  }

  return v4;
}

uint64_t fcd_ttml_createRegionFromNode(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7)
{
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v14 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionRegionCreateMutable();
  if (Mutable)
  {
    goto LABEL_23;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v17)
  {
    goto LABEL_17;
  }

  Mutable = v17(CMBaseObject, *MEMORY[0x1E6961300], a4);
  if (Mutable)
  {
    goto LABEL_23;
  }

  v18 = FigCaptionRegionGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v19)
  {
LABEL_17:
    v24 = 4294954514;
    goto LABEL_18;
  }

  Mutable = v19(v18, *MEMORY[0x1E6961338], a3);
  if (Mutable)
  {
    goto LABEL_23;
  }

  Mutable = FigTTMLNodeGetNodeType(a2, &v37);
  if (Mutable)
  {
    goto LABEL_23;
  }

  if (v37 == 10)
  {
    v20 = FigCaptionRegionGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v21)
    {
      Mutable = v21(v20, *MEMORY[0x1E6961318], *MEMORY[0x1E695E4D0]);
      if (!Mutable)
      {
        goto LABEL_10;
      }

LABEL_23:
      v24 = Mutable;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_10:
  Mutable = FigTTMLSynchronicTreeCopySSS(a1, a2, &v38);
  if (Mutable)
  {
    goto LABEL_23;
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  Mutable = FigTTMLNodeGetActiveTimeRange(a2, &v34);
  if (Mutable)
  {
    goto LABEL_23;
  }

  v22 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v27[0] = 0;
  MEMORY[0x19A8D3660](&fcd_ttml_getRegionPropertyMappingDictionary_sInitializeRegionPropertyMappingOnce, fcd_ttml_initializeRegionPropertyMappingDictionary);
  v28 = v34;
  v23 = a5[1];
  v30 = *a5;
  v27[1] = sRegionPropertyMappingDictionary;
  v29 = v35;
  v31 = v23;
  v32 = a5[2];
  v33 = v22;
  CFDictionaryApplyFunction(v38, fcd_ttml_convertTTMLStyleToRegionPropertyAndAddToDictionary, v27);
  v24 = LODWORD(v27[0]);
  if (!LODWORD(v27[0]))
  {
    CellResolutionProperty = fcd_ttml_createCellResolutionProperty(a6);
    CFDictionaryAddValue(v22, *MEMORY[0x1E69612F0], CellResolutionProperty);
    CFDictionaryApplyFunction(v22, fcd_ttml_setPropertyToObject, v39);
    *a7 = v39;
    v39 = 0;
    if (CellResolutionProperty)
    {
      CFRelease(CellResolutionProperty);
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_18:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v24;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_position(const void *a1)
{
  if (a1 && (v2 = OUTLINED_FUNCTION_3_75(a1), v2 == CFStringGetTypeID()))
  {
    v3 = OUTLINED_FUNCTION_104_0();
    result = FigTTMLParsePositionSyntaxAndCreateCaptionPosition(v3, v4);
    if (!result)
    {
      *v1 = *MEMORY[0x1E69612C8];
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_19();

    return FigSignalErrorAtGM();
  }

  return result;
}

__CFString *fcd_ttml_GetCaptionText(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  LODWORD(a1) = fcd_ttml_ensureStyledTextIsLoaded(a1);
  FigSimpleMutexUnlock();
  if (a1)
  {
    return &stru_1F0B1AFB8;
  }

  v3 = *(DerivedStorage + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return &stru_1F0B1AFB8;
  }

  return v4(v3);
}

uint64_t fcd_ttml_CopyStylePropertyAtIndex(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, _OWORD *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v18 = 0uLL;
  FigSimpleMutexLock();
  IsLoaded = fcd_ttml_ensureStyledTextIsLoaded(a1);
  FigSimpleMutexUnlock();
  if (!IsLoaded)
  {
    v14 = *(DerivedStorage + 16);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v16 = v15(v14, a2, a3, a4, &cf, &v18);
      if (v16)
      {
        IsLoaded = v16;
      }

      else
      {
        if (a5)
        {
          *a5 = cf;
          cf = 0;
        }

        IsLoaded = 0;
        if (a6)
        {
          *a6 = v18;
        }
      }
    }

    else
    {
      IsLoaded = 4294954514;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return IsLoaded;
}

uint64_t FigCaptionDataCreateForTTML_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_ensureStyledTextIsLoaded_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_ensureStyledTextIsLoaded_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertiesFromTTMLStyleSet_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_color_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_backgroundColor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_display_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_1(uint64_t a1, CGColor *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_1_103();
  *a3 = FigSignalErrorAtGM();

  CGColorRelease(a2);
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  *a1 = FigSignalErrorAtGM();

  CGColorRelease(0);
}

void fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM();
  if (a1)
  {
    CFRelease(a1);
  }

  *a2 = 0;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_forcedDisplay_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontSize_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_lineHeight_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_wrapOption_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontFamily_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_visibility_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_direction_and_unicodeBidi_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textCombine_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createDynamicStyleFromTTML_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_backgroundColor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_fillLineGap_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_textAlign_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_lineHeight_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_multiRowAlign_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_display_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_overflow_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_showBackground_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_backgroundColor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_opacity_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_forcedDisplay_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_displayAlign_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_display_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_visibility_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_writingMode_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_zIndex_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_luminanceGain_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_stereoDisparity_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_103();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaProcessorCreateForAudioCompressionCommon(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, size_t a4, AudioChannelLayout *a5, const __CFDictionary *a6, const void *a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, int a16, uint64_t *a17)
{
  v34 = 0;
  v35 = 0;
  cf = 0;
  v33 = 0;
  v20 = *MEMORY[0x1E695E480];
  v21 = FigSampleBufferProcessorCreateWithAudioCompression(a1, a2, a3, a4, a5, a6, *MEMORY[0x1E695E480], &v35);
  if (!v21)
  {
    v21 = FigSampleBufferProviderCreateForBufferQueue(v20, a7, &v34);
    if (!v21)
    {
      if (a8)
      {
        OUTLINED_FUNCTION_0_114();
        v21 = FigSampleBufferConsumerCreateForFormatWriter(a8, v24, v31, v26, v30, v25, &v33);
        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_114();
        v21 = FigSampleBufferConsumerCreateForBufferQueue2(v27, v31, v29, v30, v28, &v33);
        if (v21)
        {
          goto LABEL_3;
        }
      }

      if (a15)
      {
        v21 = FigActivitySchedulerCreateForCFRunLoop(a1, a15, &cf);
        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v21 = FigActivitySchedulerCreateForNewThread(a1, a16, @"com.apple.coremedia.mediaprocessor.audiocompression", &cf);
        if (v21)
        {
          goto LABEL_3;
        }
      }

      v21 = FigMediaProcessorCreate(a1, v35, v34, v33, cf, a17);
    }
  }

LABEL_3:
  v22 = v21;
  if (v34)
  {
    CFRelease(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v22;
}

uint64_t FigMediaProcessorCreateForAudioCompression(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, size_t a4, AudioChannelLayout *a5, const __CFDictionary *a6, const void *a7, uint64_t a8, __int128 *a9, uint64_t a10, __int128 *a11, uint64_t a12, const void *a13, int a14, uint64_t *a15)
{
  v19 = *a9;
  v20 = *(a9 + 2);
  v17 = *a11;
  v18 = *(a11 + 2);
  LODWORD(v16) = 0;
  return FigMediaProcessorCreateForAudioCompressionCommon(a1, a2, a3, a4, a5, a6, a7, 0, v16, a8, &v19, a10, &v17, a12, a13, a14, a15);
}

uint64_t FigMediaProcessorCreateForAudioDecompressionWithBufferQueue(const void *a1, uint64_t a2, size_t a3, const AudioChannelLayout *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, int a11, uint64_t *a12)
{
  v25 = 0;
  v26 = 0;
  cf = 0;
  v24 = 0;
  v16 = FigSampleBufferProcessorCreateWithAudioDecompression(a1, a2, a3, a4, a5, &v26);
  if (!v16)
  {
    v16 = FigSampleBufferProviderCreateForBufferQueue(*MEMORY[0x1E695E480], a6, &v25);
    if (!v16)
    {
      v21 = *a8;
      v22 = *(a8 + 16);
      v19 = *a9;
      v20 = *(a9 + 16);
      v16 = FigSampleBufferConsumerCreateForBufferQueue(a7, &v21, &v19, &v24);
      if (!v16)
      {
        if (a10)
        {
          v16 = FigActivitySchedulerCreateForCFRunLoop(a1, a10, &cf);
          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v16 = FigActivitySchedulerCreateForNewThread(a1, a11, @"com.apple.coremedia.mediaprocessor.audiodecompression", &cf);
          if (v16)
          {
            goto LABEL_4;
          }
        }

        v16 = FigMediaProcessorCreate(a1, v26, v25, v24, cf, a12);
      }
    }
  }

LABEL_4:
  v17 = v16;
  if (v25)
  {
    CFRelease(v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v17;
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithFormatWriter2_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaProcessorCreateForVideoCompression_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithFrameSilo_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateBaseWithURLs(const __CFAllocator *a1, uint64_t a2, const void *a3, const __CFURL *a4, uint64_t a5, const __CFDictionary *a6, const __CFDictionary *a7, void *a8)
{
  v10 = a3;
  v24 = a3;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_12_34();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_12_34();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  FigCFDictionaryGetBooleanIfPresent();
  if (!(a2 | v10) || a2 && !FigCFURLIsLocalResource() || !a8)
  {
    OUTLINED_FUNCTION_3_12();
    v15 = FigSignalErrorAtGM();
    goto LABEL_37;
  }

  v13 = 0;
  if (a2 && !v10)
  {
    FigGetDefaultManagedFilePool();
    ByteStreamForFile = FigManagedFilePoolCreateByteStreamForFile();
    if (ByteStreamForFile)
    {
      v19 = ByteStreamForFile;
      OUTLINED_FUNCTION_3_12();
      FigSignalErrorAtGM();
      goto LABEL_38;
    }

    v15 = FigFormatReaderCreateForStream(0, a1, 0, &v24);
    if (!v15)
    {
      v13 = 1;
      v10 = v24;
      goto LABEL_10;
    }

LABEL_37:
    v19 = v15;
LABEL_38:
    v13 = 0;
    goto LABEL_23;
  }

LABEL_10:
  cf = 0;
  v26 = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_11_40();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_11_40();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  if (!v10)
  {
    OUTLINED_FUNCTION_3_12();
    v18 = FigSignalErrorAtGM();
LABEL_30:
    v19 = v18;
    goto LABEL_35;
  }

  if (a7)
  {
    v16 = *MEMORY[0x1E695E4D0];
    if (v16 == CFDictionaryGetValue(a7, @"Remaker_SecurityPolicyForbidLocalToLocal"))
    {
      v17 = 33;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  v18 = FigAssetCreateWithFormatReader(a1, v10, v17, 0, &cf);
  if (v18)
  {
    goto LABEL_30;
  }

  v19 = FigRemakerCreateWithAsset(a1, cf, a4, a6, a7, &v26);
  v20 = v26;
  if (v19)
  {
    if (!v26)
    {
      goto LABEL_19;
    }

    CFRelease(v26);
LABEL_35:
    v20 = 0;
    goto LABEL_19;
  }

  v26 = 0;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    if (v20)
    {
      CFRelease(v20);
    }
  }

  else
  {
    *a8 = v20;
  }

LABEL_23:
  if (v13 && v24)
  {
    CFRelease(v24);
  }

  return v19;
}

uint64_t FigRemakerCreateWithURLs(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _OWORD *a14, uint64_t a15, const __CFURL *a16, const __CFDictionary *a17, const __CFDictionary *a18, _DWORD *a19, _DWORD *a20, void *a21)
{
  v49 = 0;
  v50 = 0;
  if (a19)
  {
    *a19 = 0;
  }

  if (a20)
  {
    *a20 = 0;
  }

  v26 = FigRemakerCreateBaseWithURLs(a1, a2, 0, a16, a5, a17, a18, &v50);
  if (v26)
  {
    goto LABEL_36;
  }

  v27 = v50;
  v28 = a14[1];
  *&range.start.value = *a14;
  *&range.start.epoch = v28;
  *&range.duration.timescale = a14[2];
  CMTimeRangeGetEnd(&v48, &range);
  v45 = *a14;
  v46 = *(a14 + 2);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v29)
  {
    goto LABEL_31;
  }

  *&range.start.value = v45;
  range.start.epoch = v46;
  v51 = v48;
  v26 = v29(v27, &range, &v51);
  if (v26)
  {
    goto LABEL_36;
  }

  v30 = v50;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v31)
  {
    goto LABEL_31;
  }

  v26 = v31(v30, &v49);
  if (v26)
  {
    goto LABEL_36;
  }

  v32 = v50;
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v33)
  {
    goto LABEL_31;
  }

  v26 = v33(v32, &v49 + 4);
  if (v26)
  {
    goto LABEL_36;
  }

  v35 = v49;
  v34 = HIDWORD(v49);
  if (!v49)
  {
    v26 = FigSignalErrorAtGM();
    goto LABEL_36;
  }

  if (!v49)
  {
    goto LABEL_17;
  }

  v36 = v50;
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v37)
  {
    goto LABEL_31;
  }

  v26 = v37(v36, v35, a3, a4, a19);
  if (v26)
  {
LABEL_36:
    v34 = v26;
    goto LABEL_32;
  }

  v34 = HIDWORD(v49);
LABEL_17:
  if (!v34)
  {
LABEL_30:
    *a21 = v50;
    return v34;
  }

  LODWORD(v48.value) = 0;
  if (!a8)
  {
    v38 = v50;
    v39 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v39)
    {
      v40 = v39(v38, v34, &v48);
      goto LABEL_26;
    }

LABEL_31:
    v34 = 4294954514;
    goto LABEL_32;
  }

  if (a8 == 1851876449)
  {
    if (!a20)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v41 = v50;
  *&v51.value = *a13;
  v51.epoch = *(a13 + 16);
  v42 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v42)
  {
    goto LABEL_31;
  }

  range.start = v51;
  v40 = v42(v41, v34, a5, a6, a7, a8, a9, a10, a11, a12, &range, &v48);
LABEL_26:
  v34 = v40;
  if (a20 && !v40)
  {
LABEL_28:
    *a20 = v48.value;
LABEL_29:
    v34 = 0;
    goto LABEL_30;
  }

  if (!(4 * (v40 != 0)))
  {
    goto LABEL_30;
  }

LABEL_32:
  if (v50)
  {
    CFRelease(v50);
  }

  return v34;
}

uint64_t remaker_AddAudioTrack(const void *a1, unsigned int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = a2;
  v15 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  cf = CFDictionaryCreate(v15, &kFigRemakerAudioMixdown_SourceTrackID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = CFArrayCreate(v15, &cf, 1, MEMORY[0x1E695E9C0]);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  if (!a3)
  {
    SourceASBDForTrackID = FigSignalErrorAtGM();
    goto LABEL_6;
  }

  SourceASBDForTrackID = remakerFamily_getSourceASBDForTrackID(a1, valuePtr, &v25);
  if (SourceASBDForTrackID)
  {
    goto LABEL_6;
  }

  SourceASBDForTrackID = remaker_createSanitizedDestinationASBDAndAudioOptions(HIDWORD(v26), a3, a5 != 0, *&v25, a6, v23, &v22);
  if (SourceASBDForTrackID)
  {
    goto LABEL_6;
  }

  v18 = v22;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v19)
  {
    SourceASBDForTrackID = v19(a1, v16, v23, a4, a5, v18, a7, a8);
LABEL_6:
    v20 = SourceASBDForTrackID;
    goto LABEL_8;
  }

  v20 = 4294954514;
LABEL_8:
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v20;
}

uint64_t remaker_StartOutput(const void *a1)
{
  v2 = a1;
  v143 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  BYTE2(v121) = 0;
  if (dword_1EAF173A8)
  {
    LODWORD(v125.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (*Storage != 1 || (remakerFamily_SetRemakerState(v2, 2, 0), *Storage >= 7u))
  {
    OUTLINED_FUNCTION_2_40();
LABEL_172:
    MultiPassPlaybackBossForTrack = FigSignalErrorAtGM();
    goto LABEL_173;
  }

  v120 = v2;
  if (*(Storage + 144) >= 1)
  {
    v5 = remakerFamily_getStorage(v2);
    HIDWORD(v126) = 0;
    v125 = **&MEMORY[0x1E6960C70];
    cf = 0;
    *type = 0;
    number = 0;
    Count = CFArrayGetCount(*(v5 + 80));
    if (remakerFamily_getExpectedDuration(v2, &v125))
    {
      goto LABEL_80;
    }

    time = v125;
    Seconds = CMTimeGetSeconds(&time);
    if (dword_1EAF173A8)
    {
      HIDWORD(v121) = 0;
      BYTE3(v121) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Count >= 1)
    {
      v9 = 0;
      v10 = 0;
      v117 = @"UneditedSampleCount";
      allocator = *MEMORY[0x1E695E480];
      v11 = (Seconds * 16.0 * 0.5);
      v12 = 2000;
      OUTLINED_FUNCTION_7_49();
      LODWORD(v13) = 1986618469;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 80), v9);
        if (ValueAtIndex[48] || !*(ValueAtIndex + 75))
        {
          goto LABEL_14;
        }

        v23 = *(ValueAtIndex + 8);
        if (v23 == CMBaseObject)
        {
          time.value = 0;
          CMBaseObject = *(v5 + 72);
          v24 = *(ValueAtIndex + 7);
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v25 || v25(CMBaseObject, v24, type))
          {
            goto LABEL_80;
          }

          CMBaseObject = FigAssetTrackGetCMBaseObject(*type);
          v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          v22 = (Seconds * 16.0 * 0.5);
          LODWORD(v13) = 1986618469;
          if (v26)
          {
            if (v26(CMBaseObject, v117, allocator, &number) || !number)
            {
              v22 = (Seconds * 16.0 * 0.5);
            }

            else
            {
              CFNumberGetValue(number, kCFNumberSInt64Type, &time);
              v22 = (Seconds * 16.0 * 0.5) + 12 * time.value;
            }
          }

          OUTLINED_FUNCTION_7_49();
          if (v27)
          {
            CFRelease(v27);
            number = 0;
          }

          if (*type)
          {
            CFRelease(*type);
            *type = 0;
          }

          goto LABEL_15;
        }

        if (v23 == 1986618469)
        {
          v22 = (Seconds * 4.0 + (Seconds / OUTLINED_FUNCTION_6_65(ValueAtIndex, v15, v16, v17, v18, v19, v20, v21, v111, v112, v113, v114, v115, key, v117, v118, allocator, v120, v121, number, cf, *type, v125.value, *&v125.timescale, v125.epoch, v126, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v128, *&time.value, time.epoch) + 1.0) * 21.0 + v11);
          ++v10;
          goto LABEL_15;
        }

        if (v23 == 1936684398 && ValueAtIndex[324])
        {
          v22 = (v11 + (Seconds / OUTLINED_FUNCTION_6_65(ValueAtIndex, v15, v16, v17, v18, v19, v20, v21, v111, v112, v113, v114, v115, key, v117, v118, allocator, v120, v121, number, cf, *type, v125.value, *&v125.timescale, v125.epoch, v126, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v128, *&time.value, time.epoch) + 1.0) * 4.0);
        }

        else
        {
LABEL_14:
          v22 = (Seconds * 16.0 * 0.5);
        }

LABEL_15:
        v12 += v22;
        if (Count == ++v9)
        {
          v28 = 0;
          v29 = 0;
          v30 = v10;
          key = @"EstimatedDataRate";
          v117 = @"SampleBufferProcessor_OutputBitRate";
          OUTLINED_FUNCTION_7_49();
          OUTLINED_FUNCTION_9_39();
          while (1)
          {
            v31 = CFArrayGetValueAtIndex(*(v5 + 80), v28);
            if (*(v31 + 48) || !v31[75])
            {
              goto LABEL_36;
            }

            v33 = v31[8];
            if (v33 == CMBaseObject)
            {
              break;
            }

            if (v33 != v13)
            {
              goto LABEL_36;
            }

            v34 = *(v31 + 36);
            if (!v34)
            {
              goto LABEL_36;
            }

            time.value = 0;
            valuePtr.value = 0;
            SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v34);
            if (!SampleBufferProcessor)
            {
              OUTLINED_FUNCTION_2_40();
              FigSignalErrorAtGM();
              goto LABEL_80;
            }

            v36 = SampleBufferProcessor;
            v13 = CFGetAllocator(v120);
            FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(v36);
            v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v38 || v38(FigBaseObject, @"SampleBufferProcessor_OutputBitRate", v13, &time))
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_9_39();
            if (v39)
            {
              CFNumberGetValue(v39, kCFNumberDoubleType, &valuePtr);
              CFRelease(time.value);
            }

            v32 = (Seconds * *&valuePtr.value * 0.125);
LABEL_37:
            v29 += v32;
            if (Count == ++v28)
            {
              v46 = v29 + v12;
              goto LABEL_63;
            }
          }

          if (*(v31 + 36))
          {
            LODWORD(time.value) = 0;
            v40 = *(v5 + 72);
            v41 = v31[7];
            v42 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (!v42 || v42(v40, v41, type))
            {
              goto LABEL_80;
            }

            v13 = FigAssetTrackGetCMBaseObject(*type);
            v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v43)
            {
              v43(v13, @"EstimatedDataRate", allocator, &cf);
              v32 = 0;
              OUTLINED_FUNCTION_9_39();
              if (!v45 && v44)
              {
                CFNumberGetValue(v44, kCFNumberFloat32Type, &time);
                v32 = (Seconds * *&time.value);
                goto LABEL_57;
              }
            }

            else
            {
              v32 = 0;
              OUTLINED_FUNCTION_9_39();
LABEL_57:
              v44 = cf;
            }

            if (v44)
            {
              CFRelease(v44);
              cf = 0;
            }

            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            goto LABEL_37;
          }

LABEL_36:
          v32 = 0;
          goto LABEL_37;
        }
      }
    }

    v30 = 0.0;
    v46 = 2000;
LABEL_63:
    v47 = vcvtd_n_s64_f64((*(v5 + 144) - v46) / Seconds / v30 * 0.95, 3uLL);
    if (v47 <= 64000)
    {
      v47 = 64000;
    }

    HIDWORD(v126) = v47;
    if (Count >= 1)
    {
      v48 = 0;
      v49 = *MEMORY[0x1E695E480];
      v50 = *MEMORY[0x1E6983558];
      do
      {
        v51 = CFArrayGetValueAtIndex(*(v5 + 80), v48);
        if (!*(v51 + 48))
        {
          CMBaseObject = v51;
          if (v51[75])
          {
            if (v51[8] == 1986618469)
            {
              v52 = v51[88];
              if (!v52 || v52 > SHIDWORD(v126))
              {
                v54 = CFNumberCreate(v49, kCFNumberSInt32Type, &v126 + 4);
                VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(CMBaseObject + 288));
                VTSessionSetProperty(VTCompressionSession, v50, v54);
                CFRelease(v54);
              }
            }
          }
        }

        ++v48;
      }

      while (Count != v48);
    }

LABEL_80:
    if (number)
    {
      CFRelease(number);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v2 = v120;
    if (*type)
    {
      CFRelease(*type);
    }
  }

  v56 = CFArrayGetCount(*(Storage + 80));
  if (!v56)
  {
    OUTLINED_FUNCTION_2_40();
    goto LABEL_172;
  }

  v57 = v56;
  v58 = remakerFamily_getStorage(v2);
  v59 = CFArrayGetCount(*(v58 + 80));
  if (v59 >= 1)
  {
    v60 = v59;
    v61 = 0;
    v62 = *MEMORY[0x1E695E480];
    CMBaseObject = *MEMORY[0x1E6983630];
    do
    {
      v63 = CFArrayGetValueAtIndex(*(v58 + 80), v61);
      if (!*(v63 + 48))
      {
        v64 = v63;
        if (*(v63 + 8) == 1986618469)
        {
          if (v63[36])
          {
            time = **&MEMORY[0x1E6960C70];
            v125.value = 0;
            if (remakerFamily_getExpectedDuration(v120, &time))
            {
              break;
            }

            valuePtr = time;
            v125.value = CMTimeGetSeconds(&valuePtr);
            v65 = CFNumberCreate(v62, kCFNumberDoubleType, &v125);
            v66 = FigMediaProcessorGetVTCompressionSession(v64[36]);
            VTSessionSetProperty(v66, CMBaseObject, v65);
            CFRelease(v65);
          }
        }
      }

      ++v61;
    }

    while (v60 != v61);
  }

  v2 = v120;
  v67 = remakerFamily_getStorage(v120);
  v68 = CFArrayGetCount(*(v67 + 80));
  if (v68 >= 1)
  {
    v69 = v68;
    v70 = 0;
    v117 = @"assetProperty_TrackReferences";
    allocator = *MEMORY[0x1E695E480];
    key = @"cdep";
    v115 = @"SampleBufferProcessor_TransferMetadataDenyListIdentifiers";
    v114 = @"SampleBufferProcessor_TransferMetadataKeepValidIdentifiers";
    OUTLINED_FUNCTION_7_49();
    do
    {
      while (1)
      {
        v71 = CFArrayGetValueAtIndex(*(v67 + 80), v70);
        if (*(v71 + 8) == CMBaseObject)
        {
          v72 = v71;
          if (v71[36])
          {
            break;
          }
        }

        if (++v70 == v69)
        {
          goto LABEL_146;
        }
      }

      v73 = remakerFamily_getStorage(v2);
      valuePtr.value = 0;
      v74 = v72[36];
      if (v74)
      {
        v75 = FigMediaProcessorGetSampleBufferProcessor(v74);
      }

      else
      {
        v75 = 0;
      }

      v76 = *(v73 + 72);
      if (v76)
      {
        v77 = *(v72 + 7);
        v78 = FigAssetGetCMBaseObject(v76);
        v79 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v79 || v79(v78, @"assetProperty_TrackReferences", allocator, &valuePtr))
        {
LABEL_132:
          Mutable = 0;
          v92 = 0;
LABEL_133:
          value = 0;
LABEL_134:
          LODWORD(CMBaseObject) = 1;
          goto LABEL_135;
        }

        value = valuePtr.value;
        time.value = 0;
        if (!valuePtr.value)
        {
          Mutable = 0;
          v92 = 0;
          goto LABEL_134;
        }

        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          if (CFDictionaryGetValueIfPresent(value, @"cdep", &time))
          {
            v82 = CFArrayGetCount(time.value);
            if (v82 >= 2)
            {
              v83 = 1;
              v84 = v82 / 2;
              do
              {
                v85 = CFArrayGetValueAtIndex(time.value, v83 - 1);
                LODWORD(v125.value) = 0;
                CFNumberGetValue(v85, kCFNumberSInt32Type, &v125);
                if (LODWORD(v125.value) == v77)
                {
                  v86 = CFArrayGetValueAtIndex(time.value, v83);
                  CFArrayAppendValue(Mutable, v86);
                }

                v83 += 2;
                --v84;
              }

              while (v84);
            }
          }

          v2 = v120;
        }

        else
        {
          OUTLINED_FUNCTION_2_40();
          if (FigSignalErrorAtGM())
          {
            goto LABEL_132;
          }
        }

        v87 = CFArrayGetCount(Mutable);
        if (v87 < 1)
        {
LABEL_121:
          v92 = 0;
          value = 0;
        }

        else
        {
          v88 = v87;
          v89 = 0;
          while (1)
          {
            LODWORD(time.value) = 0;
            v90 = CFArrayGetValueAtIndex(Mutable, v89);
            CFNumberGetValue(v90, kCFNumberSInt32Type, &time);
            ChannelBySourceTrackID = remakerFamily_getChannelBySourceTrackID(v2, time.value);
            if (ChannelBySourceTrackID)
            {
              if (ChannelBySourceTrackID[80] > 1u)
              {
                break;
              }
            }

            if (v88 == ++v89)
            {
              goto LABEL_121;
            }
          }

          if (!v75)
          {
            OUTLINED_FUNCTION_2_40();
            v92 = 0;
            value = 0;
            LODWORD(CMBaseObject) = FigSignalErrorAtGM() != 0;
            goto LABEL_135;
          }

          v92 = CFArrayCreate(allocator, 0, 0, MEMORY[0x1E695E9C0]);
          v93 = FigSampleBufferProcessorGetFigBaseObject(v75);
          v94 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v94 || v94(v93, @"SampleBufferProcessor_TransferMetadataDenyListIdentifiers", v92))
          {
            goto LABEL_133;
          }

          value = CFArrayCreate(allocator, 0, 0, MEMORY[0x1E695E9C0]);
          v95 = FigSampleBufferProcessorGetFigBaseObject(v75);
          v96 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v96 || v96(v95, @"SampleBufferProcessor_TransferMetadataKeepValidIdentifiers", value))
          {
            goto LABEL_134;
          }
        }

        LODWORD(CMBaseObject) = 0;
      }

      else
      {
        Mutable = 0;
        LODWORD(CMBaseObject) = 0;
        v92 = 0;
        value = 0;
      }

LABEL_135:
      if (valuePtr.value)
      {
        CFRelease(valuePtr.value);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (v92)
      {
        CFRelease(v92);
      }

      ++v70;
      OUTLINED_FUNCTION_7_49();
    }

    while ((v97 & 1) == 0);
  }

LABEL_146:
  if (v57 >= 1)
  {
    v98 = 0;
    do
    {
      v99 = CFArrayGetValueAtIndex(*(Storage + 80), v98);
      if (*(v99 + 356))
      {
        MultiPassPlaybackBossForTrack = remakerFamily_createMultiPassPlaybackBossForTrack(v99, v99 + 52);
        if (MultiPassPlaybackBossForTrack)
        {
          goto LABEL_173;
        }
      }
    }

    while (v57 != ++v98);
  }

  MultiPassPlaybackBossForTrack = remakerFamily_createSinglePassPlaybackBoss(v2, (Storage + 376));
  if (MultiPassPlaybackBossForTrack)
  {
    goto LABEL_173;
  }

  if (!*(Storage + 376))
  {
    *(Storage + 384) = 1;
  }

  v101 = *(Storage + 184);
  valuePtr = *(Storage + 88);
  v102 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v102)
  {
    v109 = 4294954514;
    goto LABEL_170;
  }

  time = valuePtr;
  MultiPassPlaybackBossForTrack = v102(v101, &time);
  if (MultiPassPlaybackBossForTrack || (remakerFamily_transferMetadata(v2), MultiPassPlaybackBossForTrack = remakerfamily_updateClientPID(), MultiPassPlaybackBossForTrack) || (MultiPassPlaybackBossForTrack = remakerfamily_updateThrottleForBackground(v2), MultiPassPlaybackBossForTrack) || (MultiPassPlaybackBossForTrack = remakerFamily_startAllMultiPassTracks(v2, &v121 + 2), MultiPassPlaybackBossForTrack) || !BYTE2(v121) && (MultiPassPlaybackBossForTrack = remakerFamily_startAllSinglePassTracks(v2), MultiPassPlaybackBossForTrack))
  {
LABEL_173:
    v109 = MultiPassPlaybackBossForTrack;
    goto LABEL_170;
  }

  *(Storage + 472) = mach_absolute_time();
  remakerFamily_SetRemakerState(v2, 3, 0);
  if (dword_1EAF173A8)
  {
    LODWORD(v125.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v106 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v107 = v125.value;
    if (os_log_type_enabled(v106, type[0]))
    {
      v108 = v107;
    }

    else
    {
      v108 = v107 & 0xFFFFFFFE;
    }

    if (v108)
    {
      LODWORD(valuePtr.value) = 136315394;
      OUTLINED_FUNCTION_3_76();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  remakerFamily_safelyPostNotification(v2, 0, @"Remaker_Started", 0, v2, v103, v104, v105, v111, v112, v113, v114, SBYTE2(v114), BYTE3(v114), SHIDWORD(v114), v115, SHIDWORD(v115), key, SWORD2(key), v117, v118, allocator, v120, v121, number, cf, *type, v125.value, *&v125.timescale, v125.epoch, v126, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v128, time.value, *&time.timescale, time.epoch, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v109 = 0;
LABEL_170:
  remakerFamily_PostFailureNotificationIfError(v2, 0, v109, 1u, 0);
  return v109;
}

uint64_t remaker_AddAudioTrackWithPreset(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, _DWORD *a5)
{
  v22[16] = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (*remakerFamily_getStorage(a1) >= 7u)
  {
    OUTLINED_FUNCTION_429();

    return FigSignalErrorAtGM();
  }

  if (dword_1EAF173A8)
  {
    LODWORD(v19) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (CFEqual(a3, @"Preset_NoAudio"))
  {
    goto LABEL_6;
  }

  if (CFEqual(a3, @"Preset_Passthru"))
  {
LABEL_9:
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      result = v12(a1, a2, &v20);
      if (a5 && !result)
      {
LABEL_12:
        result = 0;
        *a5 = v20;
        return result;
      }

      return result;
    }

    return 4294954514;
  }

  v22[0] = 0;
  v21 = 0;
  *type = 0;
  v19 = 0;
  result = FigAudioCompressionOptionsGetPreset(a3, v22, &v21, &v19, type);
  if (result)
  {
    return result;
  }

  v13 = v22[0];
  v14 = v21;
  v16 = *type;
  v15 = v19;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    return 4294954514;
  }

  result = v17(a1, a2, v13, v14, v15, v16, a4, &v20);
  if (!result)
  {
LABEL_6:
    if (!a5)
    {
      return 0;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t remaker_AddAudioMixdownTrackWithPreset(const void *a1, const __CFArray *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v48 = 0;
  *v46 = 0u;
  v47 = 0u;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  cf = 0;
  if (*remakerFamily_getStorage(a1) >= 7u || !a3)
  {
    OUTLINED_FUNCTION_429();
    Preset = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  Preset = FigAudioCompressionOptionsGetPreset(a3, &v45, &v44, &v43, &v42);
  if (Preset)
  {
LABEL_26:
    v18 = Preset;
    goto LABEL_28;
  }

  if (OUTLINED_FUNCTION_13_30(0, v11, v12, v13, v14, v15, v16, v17, v39, cf, v42, v43, v44, v45, v46[0], v46[1], v47, *(&v47 + 1), v48, v49, v50, v51, v52) >= 1)
  {
    LODWORD(v18) = 0;
    v19 = 0;
    do
    {
      CFArrayGetValueAtIndex(a2, v19);
      HIDWORD(v49) = 0;
      LODWORD(Count) = FigCFDictionaryGetInt32IfPresent();
      if (!Count)
      {
        LODWORD(v18) = 0;
        goto LABEL_14;
      }

      SourceASBDForTrackID = remakerFamily_getSourceASBDForTrackID(a1, HIDWORD(v49), &v50);
      v29 = HIDWORD(v51);
      if (HIDWORD(v51) <= v18)
      {
        v29 = v18;
      }

      if (!SourceASBDForTrackID)
      {
        LODWORD(v18) = v29;
      }

      ++v19;
      Count = CFArrayGetCount(a2);
    }

    while (v19 < Count);
    if (v18 >= 1)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_429();
  Count = FigSignalErrorAtGM();
  v18 = Count;
  if (!Count)
  {
LABEL_14:
    v30 = OUTLINED_FUNCTION_13_30(Count, v21, v22, v23, v24, v25, v26, v27, v40, cf, v42, v43, v44, v45, v46[0], v46[1], v47, *(&v47 + 1), v48, v49, v50, v51, v52);
    if (v30 < 1)
    {
      v33 = 0.0;
    }

    else
    {
      v31 = v30;
      v32 = 0;
      v33 = 0.0;
      do
      {
        CFArrayGetValueAtIndex(a2, v32);
        HIDWORD(v49) = 0;
        if (!FigCFDictionaryGetInt32IfPresent() || remakerFamily_getSourceASBDForTrackID(a1, HIDWORD(v49), &v50))
        {
          break;
        }

        if (*&v50 > v33)
        {
          v33 = *&v50;
        }

        ++v32;
      }

      while (v31 != v32);
    }

    Preset = remaker_createSanitizedDestinationASBDAndAudioOptions(v18, v45, v43 != 0, v33, v42, v46, &cf);
    if (Preset)
    {
      goto LABEL_26;
    }

    v35 = v43;
    v34 = v44;
    v36 = cf;
    v37 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v37)
    {
      Preset = v37(a1, a2, v46, v34, v35, v36, a4, a5);
      goto LABEL_26;
    }

    v18 = 4294954514;
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t remaker_AddPassthroughTrackWithOptions(const void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  cf = 0;
  v37 = 0;
  v35 = 0;
  desc = 0;
  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*Storage != 1)
  {
    OUTLINED_FUNCTION_5_71();
    v13 = FigSignalErrorAtGM();
    goto LABEL_50;
  }

  v11 = *(Storage + 72);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12(v11, a2, &cf);
  if (v13)
  {
LABEL_50:
    v26 = v13;
    Mutable = 0;
    goto LABEL_31;
  }

  v14 = cf;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    goto LABEL_30;
  }

  v13 = v15(v14, 0, &v35);
  if (v13)
  {
    goto LABEL_50;
  }

  v13 = remakerFamily_createChannel(a1, a2, v35, &v37);
  if (v13)
  {
    goto LABEL_50;
  }

  v16 = CFGetTypeID(a1);
  v13 = remakerFamily_copyFormatDescription(v16, cf, &desc);
  if (v13)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_9_39();
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v18 = v35;
  if (v35 == 1986618469)
  {
    v33 = 629145600;
  }

  else if (v35 == v4)
  {
    v19 = desc;
    if (desc)
    {
      v19 = CFRetain(desc);
      v18 = v35;
    }

    else
    {
      v18 = 1936684398;
    }

    v33 = 0;
    *(v37 + 40) = v19;
  }

  else
  {
    v33 = 0;
  }

  v20 = v37;
  *(v37 + 48) = 1;
  v21 = *(Storage + 208) && v18 == v4;
  v22 = v21;
  *(v20 + 50) = v22;
  v23 = *(Storage + 184);
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v24)
  {
LABEL_30:
    Mutable = 0;
    v26 = 4294954514;
    goto LABEL_31;
  }

  v13 = v24(v23, v18, 0, v20 + 300);
  if (v13)
  {
    goto LABEL_50;
  }

  if (a3 && (LOBYTE(v39.value) = 0, FigCFDictionaryGetBooleanIfPresent()))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_14_33(@"InterleaveTrack", MEMORY[0x1E695E4D0]);
  }

  else
  {
    Mutable = 0;
  }

  v28 = remakerFamily_setFormatWriterTrackProperties(a1, *(v37 + 300), MediaSubType, Mutable);
  if (v28)
  {
    goto LABEL_52;
  }

  v28 = remakerFamily_setFormatWriterProperties(a1, MediaSubType);
  if (v28)
  {
    goto LABEL_52;
  }

  v28 = remaker_transferTrackSettingsForPassthrough(a1, v35, cf, *(Storage + 184), *(v37 + 300));
  if (v28)
  {
    goto LABEL_52;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (FigCFDictionaryGetCMTimeIfPresent())
  {
    if (v35 == 1986618469)
    {
      *(v37 + 49) = 1;
      goto LABEL_45;
    }

LABEL_51:
    OUTLINED_FUNCTION_5_71();
    v28 = FigSignalErrorAtGM();
    goto LABEL_52;
  }

LABEL_45:
  v29 = CFGetAllocator(a1);
  v30 = *(Storage + 184);
  v31 = *(v37 + 300);
  CMTimeMake(&v39, 2, 1);
  CMTimeMake(&v38, 1, 1);
  v28 = FigRenderPipelineCreateForWritingTrack(v29, v30, v31, &v39.value, v33, &v38.value, v33 >> 1, (v37 + 56));
  if (v28)
  {
LABEL_52:
    v26 = v28;
    goto LABEL_31;
  }

  v32 = v37;
  if (a4)
  {
    *a4 = *(v37 + 300);
  }

  remakerFamily_commitChannel(a1, v32);
  v26 = 0;
  v37 = 0;
LABEL_31:
  remakerFamily_discardChannel(a1, v37);
  if (desc)
  {
    CFRelease(desc);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v26;
}

uint64_t remaker_AddTemporalMetadataTrackWithOptions(const void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = a1;
  v92 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  v88 = 0;
  v89 = 0;
  v87 = 1835365473;
  cf = 0;
  desc = 0;
  v84 = 0;
  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*Storage != 1)
  {
    goto LABEL_87;
  }

  v9 = *(Storage + 72);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
    goto LABEL_58;
  }

  v11 = v10(v9, a2, &v88);
  if (v11)
  {
    goto LABEL_88;
  }

  v12 = v88;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v13)
  {
LABEL_58:
    v50 = 0;
    v31 = 4294954514;
    goto LABEL_59;
  }

  v11 = v13(v12, 0, &v87);
  if (v11)
  {
    goto LABEL_88;
  }

  if (v87 != 1835365473)
  {
    goto LABEL_87;
  }

  v14 = CFGetTypeID(v6);
  v11 = remakerFamily_copyFormatDescription(v14, v88, &desc);
  if (v11)
  {
    goto LABEL_88;
  }

  v79 = a2;
  v80 = Storage;
  if (CMFormatDescriptionGetMediaSubType(desc) != 1835360888)
  {
LABEL_87:
    v11 = FigSignalErrorAtGM();
    goto LABEL_88;
  }

  v15 = v88;
  v16 = remakerFamily_getStorage(v6);
  theArray[0].value = 0;
  v17 = *(v16 + 416);
  if (v17)
  {
    CFRelease(v17);
    *(v16 + 416) = 0;
  }

  v18 = *(v16 + 408);
  v19 = MEMORY[0x1E695E480];
  if (!v18)
  {
    v30 = 0;
    v31 = 0;
    goto LABEL_47;
  }

  v81 = v15;
  v77 = a4;
  v78 = v6;
  Count = CFDictionaryGetCount(v18);
  v21 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v22 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(*(v16 + 408), v21, v22);
  v23 = *v19;
  Mutable = CFArrayCreateMutable(*v19, 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v26 = CFArrayGetCount(v22[i]);
      if (v26 >= 1)
      {
        v27 = v26;
        for (j = 0; j != v27; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v22[i], j);
          identifierOut.value = 0;
          if (!CMMetadataCreateIdentifierForKeyAndKeySpace(v23, ValueAtIndex, v21[i], &identifierOut))
          {
            CFArrayAppendValue(Mutable, identifierOut.value);
            if (identifierOut.value)
            {
              CFRelease(identifierOut.value);
            }
          }
        }
      }
    }
  }

  free(v21);
  free(v22);
  if (Mutable)
  {
    *(v16 + 416) = CFRetain(Mutable);
    CFRelease(Mutable);
  }

  else
  {
    *(v16 + 416) = 0;
  }

  CMBaseObject = FigAssetTrackGetCMBaseObject(v81);
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v33)
  {
    v31 = 4294954514;
LABEL_45:
    v30 = 1;
LABEL_46:
    a4 = v77;
    v6 = v78;
    goto LABEL_47;
  }

  v34 = v33(CMBaseObject, @"FormatDescriptionArray", v23, theArray);
  if (v34)
  {
    v31 = v34;
    goto LABEL_45;
  }

  if (!theArray[0].value)
  {
    v50 = 0;
    v31 = 4294955173;
    v6 = v78;
    goto LABEL_59;
  }

  v35 = CFArrayGetCount(theArray[0].value);
  a4 = v77;
  v6 = v78;
  if (v35)
  {
    v36 = v35;
    if (v35 >= 1)
    {
      v37 = 0;
      v76 = 0;
      v38 = *MEMORY[0x1E695FFE0];
      v82 = v35;
      do
      {
        v39 = CFArrayGetValueAtIndex(theArray[0].value, v37);
        Extensions = CMFormatDescriptionGetExtensions(v39);
        Value = CFDictionaryGetValue(Extensions, v38);
        if (Value)
        {
          v42 = Value;
          v43 = CFDictionaryGetCount(Value);
          v44 = malloc_type_calloc(v43, 8uLL, 0x6004044C4A2DFuLL);
          v45 = malloc_type_calloc(v43, 8uLL, 0x6004044C4A2DFuLL);
          CFDictionaryGetKeysAndValues(v42, v44, v45);
          if (v43 >= 1)
          {
            v46 = v38;
            v47 = v45;
            while (1)
            {
              FigMetadataKeyGetLocalIDUInt32();
              IdentifierForLocalID = FigMetadataFormatDescriptionGetIdentifierForLocalID();
              v49 = *(v16 + 416);
              v93.length = CFArrayGetCount(v49);
              v93.location = 0;
              if (CFArrayContainsValue(v49, v93, IdentifierForLocalID))
              {
                break;
              }

              ++v47;
              if (!--v43)
              {
                goto LABEL_40;
              }
            }

            v76 = 1;
LABEL_40:
            v38 = v46;
            v36 = v82;
          }

          free(v44);
          free(v45);
        }

        ++v37;
      }

      while (v37 != v36);
      v31 = 0;
      v30 = v76 == 0;
      goto LABEL_46;
    }

    v31 = 0;
  }

  else
  {
    v31 = 4294955173;
  }

  v30 = 1;
LABEL_47:
  if (theArray[0].value)
  {
    CFRelease(theArray[0].value);
  }

  if (v31 != 0 || v30)
  {
    goto LABEL_50;
  }

  v11 = remakerFamily_createChannel(v6, v79, v87, &v89);
  if (v11)
  {
LABEL_88:
    v31 = v11;
LABEL_50:
    v50 = 0;
    goto LABEL_59;
  }

  v51 = v89;
  *(v89 + 48) = 0;
  *(v51 + 50) = 1;
  v52 = *(v80 + 184);
  v53 = v87;
  v54 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v54)
  {
    goto LABEL_58;
  }

  v11 = v54(v52, v53, 0, v51 + 300);
  if (v11)
  {
    goto LABEL_88;
  }

  v55 = MEMORY[0x1E695E480];
  if (a3 && (LOBYTE(theArray[0].value) = 0, FigCFDictionaryGetBooleanIfPresent()))
  {
    v50 = CFDictionaryCreateMutable(*v55, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v50)
    {
      OUTLINED_FUNCTION_2_40();
      RenderPipelineOptions = FigSignalErrorAtGM();
LABEL_94:
      v31 = RenderPipelineOptions;
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_14_33(@"InterleaveTrack", MEMORY[0x1E695E4D0]);
  }

  else
  {
    v50 = 0;
  }

  v57 = *(v89 + 300);
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  RenderPipelineOptions = remakerFamily_setFormatWriterTrackProperties(v6, v57, MediaSubType, v50);
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v60 = CMFormatDescriptionGetMediaSubType(desc);
  RenderPipelineOptions = remakerFamily_setFormatWriterProperties(v6, v60);
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v61 = CFGetAllocator(v6);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  RenderPipelineOptions = CMBufferQueueCreate(v61, 0, CallbacksForUnsortedSampleBuffers, (v89 + 312));
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v63 = *(v80 + 184);
  v64 = *(v89 + 300);
  v65 = CFGetAllocator(v6);
  v66 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v66)
  {
    v66(v63, v64, @"SourceSampleBufferQueue", v65, &v84);
  }

  v67 = CFGetAllocator(v6);
  v68 = *(v89 + 312);
  v69 = v84;
  CMTimeMake(theArray, 1, 10);
  CMTimeMake(&identifierOut, 1, 30);
  v70 = *(v80 + 32) ? 0 : 31;
  RenderPipelineOptions = FigMediaProcessorCreateForTemporalMetadataFilter(v67, v68, v69, theArray, &identifierOut, *(v80 + 416), 0, v70, (v89 + 288));
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  RenderPipelineOptions = FigNotificationCenterAddWeakListeners();
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v71 = CFGetAllocator(v6);
  v72 = desc;
  remakerFamily_getLowWaterLevel(*(v80 + 32), theArray);
  remakerFamily_getHighWaterLevel(*(v80 + 32), &identifierOut);
  RenderPipelineOptions = remakerFamily_createRenderPipelineOptions(v71, v72, &theArray[0].value, &identifierOut.value, 0, 0, *(v80 + 424), 0, 0, *(v80 + 32), 0, 0, 0, v80 + 41, v79, &cf);
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v73 = CFGetAllocator(v6);
  RenderPipelineOptions = FigRenderPipelineCreateForBufferQueue(v73, *(v89 + 312), 0, (v89 + 56));
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v74 = *(v89 + 300);
  if (a4)
  {
    *a4 = v74;
  }

  v31 = remaker_transferTrackSettingsForPassthrough(v6, 1835365473, v88, *(v80 + 184), v74);
  if (!v31)
  {
    v75 = (v89 + 328);
    CMTimeMake(theArray, 1, 30);
    *v75 = theArray[0];
    remakerFamily_commitChannel(v6, v89);
    v89 = 0;
  }

LABEL_59:
  remakerFamily_discardChannel(v6, v89);
  if (desc)
  {
    CFRelease(desc);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  FigBufferQueueRelease();
  return v31;
}

uint64_t remaker_AddCaptionTrack(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  cf = 0;
  v35 = 0;
  v33 = 0;
  if (*Storage != 1)
  {
    OUTLINED_FUNCTION_429();
    v15 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  v12 = Storage;
  v13 = *(Storage + 72);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14)
  {
LABEL_24:
    v31 = 4294954514;
    goto LABEL_25;
  }

  v15 = v14(v13, a2, &cf);
  if (v15)
  {
LABEL_30:
    v31 = v15;
    goto LABEL_25;
  }

  v16 = cf;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v17)
  {
    goto LABEL_24;
  }

  v15 = v17(v16, 0, &v33);
  if (v15)
  {
    goto LABEL_30;
  }

  v15 = remakerFamily_createChannel(a1, a2, a3, &v35);
  if (v15)
  {
    goto LABEL_30;
  }

  v18 = *(v12 + 184);
  v19 = v35;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v20)
  {
    goto LABEL_24;
  }

  v15 = v20(v18, a3, 0, v19 + 300);
  if (v15)
  {
    goto LABEL_30;
  }

  v15 = remakerFamily_setFormatWriterTrackProperties(a1, *(v35 + 300), a4, 0);
  if (v15)
  {
    goto LABEL_30;
  }

  v15 = remakerFamily_setFormatWriterProperties(a1, a4);
  if (v15)
  {
    goto LABEL_30;
  }

  v15 = remaker_transferTrackSettingsForPassthrough(a1, a3, cf, *(v12 + 184), *(v35 + 300));
  if (v15)
  {
    goto LABEL_30;
  }

  v21 = CFGetAllocator(a1);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v15 = CMBufferQueueCreate(v21, 0, CallbacksForUnsortedSampleBuffers, (v35 + 248));
  if (v15)
  {
    goto LABEL_30;
  }

  v23 = CFGetAllocator(a1);
  v15 = FigRenderPipelineCreateForBufferQueue(v23, *(v35 + 248), 0, (v35 + 56));
  if (v15)
  {
    goto LABEL_30;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v15 = FigNotificationCenterAddWeakListeners();
  if (v15)
  {
    goto LABEL_30;
  }

  v24 = *MEMORY[0x1E695E480];
  v25 = *(v35 + 248);
  v26 = *(v12 + 184);
  v27 = *(v35 + 300);
  CMTimeMake(&v37, 2, 1);
  CMTimeMake(&v36, 1, 1);
  v28 = *(v12 + 32) ? 0 : 31;
  v15 = FigMediaProcessorCreateForCaptionConversionWithFormatWriter(v24, a3, a4, v25, v26, v27, &v37.value, 0, &v36, 0, v28, (v35 + 288));
  if (v15)
  {
    goto LABEL_30;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v15 = FigNotificationCenterAddWeakListeners();
  if (v15)
  {
    goto LABEL_30;
  }

  v29 = v35;
  *(v35 + 52) = 1;
  if (a6)
  {
    *a6 = *(v29 + 300);
  }

  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v29 = v35;
  }

  remakerFamily_commitChannel(a1, v29);
  v31 = 0;
  v35 = 0;
LABEL_25:
  remakerFamily_discardChannel(a1, v35);
  if (cf)
  {
    CFRelease(cf);
  }

  return v31;
}

void spatialFormatDescriptionExtensionApplierFunction(const void *a1, const void *a2, __CFDictionary *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFStringGetTypeID())
    {
      v7 = &qword_1E748C768;
      v8 = 13;
      while (!CFEqual(a1, **(v7 - 1)))
      {
        v7 += 2;
        if (!--v8)
        {
          return;
        }
      }

      v9 = **v7;

      CFDictionarySetValue(a3, v9, a2);
    }
  }
}

void remaker_CanPerformFastFrameRateConversionWork(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(*(a1 + 32));
  v3 = MEMORY[0x1E6960C70];
  HIDWORD(v72) = -1;
  *v70 = *MEMORY[0x1E6960C70];
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v71 = epoch;
  *v61 = *MEMORY[0x1E6960CC0];
  *&v68.value = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  v68.epoch = v5;
  HIBYTE(v67) = 0;
  v65 = 0;
  sbuf = 0;
  v76 = *MEMORY[0x1E6960C70];
  LODWORD(v77) = *(MEMORY[0x1E6960C70] + 8);
  value = *MEMORY[0x1E695E4C0];
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (FigAssetReaderCreateWithAsset(v6, *(Storage + 72), 0, &v65))
  {
    v8 = 0;
LABEL_62:
    v49 = 0;
LABEL_63:
    CFDictionarySetValue(Mutable, @"Remaker_CFBoolean", value);
    goto LABEL_64;
  }

  v8 = CFDictionaryCreateMutable(v6, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  time1 = *a1;
  FigCFDictionarySetCMTime();
  v9 = v65;
  v10 = *(a1 + 24);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v11(v9, v10, v8, &v72 + 4))
  {
    goto LABEL_62;
  }

  v12 = v65;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v13)
  {
    goto LABEL_62;
  }

  *&time1.value = *v61;
  time1.epoch = v5;
  time = **&MEMORY[0x1E6960C88];
  if (v13(v12, &time1, &time))
  {
    goto LABEL_62;
  }

  cf = 0;
  v61[0] = 0;
  v14 = 0;
  v15 = 0;
  flags = *(v3 + 12);
  key = *MEMORY[0x1E6960450];
  v58 = 0xFFFFFFFFLL;
  v17 = sbuf;
  do
  {
    if (!v17 || CMSampleBufferGetNumSamples(v17) < 1)
    {
      v18 = v15;
      goto LABEL_44;
    }

    if (flags)
    {
      memset(&time1, 0, sizeof(time1));
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, sbuf);
      lhs = time1;
      rhs.value = v76;
      rhs.timescale = v77;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeSubtract(&time, &lhs, &rhs);
      lhs = v68;
      CMTimeAdd(&v68, &lhs, &time);
    }

    else
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, sbuf);
    }

    v76 = time1.value;
    flags = time1.flags;
    LODWORD(v77) = time1.timescale;
    epoch = time1.epoch;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
    if (!SampleAttachmentsArray)
    {
      goto LABEL_55;
    }

    v20 = SampleAttachmentsArray;
    if (CFArrayGetCount(SampleAttachmentsArray) < 1)
    {
      goto LABEL_55;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_55;
    }

    v18 = v15 + 1;
    v22 = CFDictionaryGetValue(ValueAtIndex, key);
    v23 = v22 == value;
    v24 = v14;
    v25 = v22 != value;
    v26 = v61[0];
    if (v22 == value)
    {
      v26 = v61[0] + 1;
    }

    v61[0] = v26;
    if (v24)
    {
      v14 = 1;
      goto LABEL_44;
    }

    v27 = v22;
    LODWORD(time.value) = 0;
    time1.value = 0;
    if (!CMSampleBufferGetDataBuffer(sbuf))
    {
      HIDWORD(v57) = v23;
      if (remakerFamily_resolveByteReferenceSampleBufferAndCopyByteStream(sbuf, cf, &time1))
      {
        goto LABEL_55;
      }

      v28 = time1.value;
      if (time1.value)
      {
        CFRetain(time1.value);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (time1.value)
      {
        CFRelease(time1.value);
      }

      cf = v28;
      v23 = HIDWORD(v57);
    }

    if (FigH264Bridge_GetSliceInformationFromSampleBuffer())
    {
LABEL_55:
      v49 = cf;
      goto LABEL_63;
    }

    if (v15 <= 0)
    {
      v14 = 0;
      v29 = time.value;
    }

    else
    {
      if (v27 == value && BYTE4(v58))
      {
        v29 = time.value;
LABEL_39:
        if (v58 != v29)
        {
          goto LABEL_55;
        }

        v14 = v61[0] > 10;
        goto LABEL_43;
      }

      if (BYTE4(v58))
      {
        v30 = v25;
      }

      else
      {
        v30 = 0;
      }

      v29 = time.value;
      if (v30)
      {
        goto LABEL_39;
      }

      v14 = 0;
    }

    LODWORD(v58) = v29;
LABEL_43:
    HIDWORD(v58) = v23;
LABEL_44:
    if (sbuf)
    {
      CFRelease(sbuf);
      sbuf = 0;
    }

    v31 = v65;
    v32 = HIDWORD(v72);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v33 || v33(v31, v32, 1, &v67 + 7, &sbuf))
    {
      goto LABEL_55;
    }

    if (HIBYTE(v67))
    {
      break;
    }

    v17 = sbuf;
    v15 = v18;
  }

  while (sbuf);
  FigBaseObject = FigAssetReaderGetFigBaseObject(v65);
  if (FigBaseObject)
  {
    v42 = FigBaseObject;
    VTable = CMBaseObjectGetVTable();
    v44 = *(VTable + 8);
    FigBaseObject = VTable + 8;
    v45 = *(v44 + 24);
    if (v45)
    {
      FigBaseObject = v45(v42);
    }
  }

  *&time1.value = *&v68.value;
  v46 = OUTLINED_FUNCTION_10_39(FigBaseObject, v35, v36, v37, v38, v39, v40, v41, v57, v58, cf, key, *v61, *&v61[2], value, rhs.value, *&rhs.timescale, rhs.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v65, sbuf, v67, v68.value, *&v68.timescale, v68.epoch);
  if (v18 > 0x7FFFFFFF)
  {
    CMTimeMultiplyByFloat64(v47, v46, v48);
  }

  else
  {
    CMTimeMultiplyByRatio(v47, v46, 1, v18);
  }

  time = v68;
  CMTimeMultiplyByRatio(&time1, &time, 9, 10);
  *a1 = time1;
  v49 = cf;
  if (!v14)
  {
    goto LABEL_63;
  }

  *&time1.value = *v70;
  time1.epoch = v71;
  time = *a1;
  v50 = CMTimeCompare(&time1, &time);
  v51 = value;
  if (v50 >= 0)
  {
    v51 = *MEMORY[0x1E695E4D0];
  }

  value = v51;
  CFDictionarySetValue(Mutable, @"Remaker_CFBoolean", v51);
LABEL_64:
  remakerFamily_safelyPostNotification(*(a1 + 32), 0, @"Remaker_CanPerformFastFrameRateConversion", Mutable, *(a1 + 32), v52, v53, v54, v57, v58, cf, key, SBYTE2(key), BYTE3(key), SHIDWORD(key), v61[0], v61[1], v61[2], v61[3], value, rhs.value, rhs.timescale, rhs.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v65, sbuf, v67, v68.value, *&v68.timescale, v68.epoch, v69, v70[0], v70[1], v71, v72, time.value, *&time.timescale, time.epoch, v74, time1.value, *&time1.timescale, time1.epoch, v76, v77, v78, v79, v80, v81, v82);
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  v55 = *(a1 + 32);
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(a1 + 40);
  if (v56)
  {
    dispatch_release(v56);
  }

  free(a1);
}

uint64_t FigRemakerCreateWithAsset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateWithAsset_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateWithAsset_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateWithAsset_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateWithAsset_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateWithAsset_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateWithAsset_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateWithAsset_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateWithAsset_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_CopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_CopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_CopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetProperty_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoTrack_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetTimeRange_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetTimeRange_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_SetTimeRange_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_EstimateMaxSegmentDurationForFileSize_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddAudioMixdownTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddAudioMixdownTrack_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddAudioMixdownTrack_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddAudioMixdownTrack_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddAudioMixdownTrack_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddAudioMixdownTrack_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void remaker_AddVideoCompositionTrack_cold_4(const __CFArray *a1, uint64_t a2, void *a3)
{
  if (CFArrayGetCount(a1) >= 1)
  {
    FirstValue = FigCFArrayGetFirstValue();
    CFDictionaryApplyFunction(FirstValue, spatialFormatDescriptionExtensionApplierFunction, a3);
  }
}

uint64_t remaker_AddVideoCompositionTrack_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_AddVideoCompositionTrack_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_CopyTrackProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_CopyTrackProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_createSanitizedDestinationASBDAndAudioOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_createSanitizedDestinationASBDAndAudioOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_createSanitizedDestinationASBDAndAudioOptions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remaker_createSanitizedDestinationASBDAndAudioOptions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapOverlapMapper_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF173C8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 32))
  {
    *(DerivedStorage + 32) = 1;
    v2 = *(DerivedStorage + 40);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 40) = 0;
    }

    v3 = *(DerivedStorage + 48);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 48) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fbapOverlapMapper_finalize()
{
  CMBaseObjectGetDerivedStorage();
  fbapOverlapMapper_invalidate();
  result = FigSimpleMutexDestroy();
  if (dword_1EAF173C8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t fbapOverlapMapper_recordflushWithinTimeRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (*(a3 + 12) & 1) != 0 && (*(a3 + 36) & 1) != 0 && !*(a3 + 40) && (*(a3 + 24) & 0x8000000000000000) == 0)
  {
    v7 = *(DerivedStorage + 56);
    if ((v7 + 1) <= 9u)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
    }

    *(DerivedStorage + 56) = v8;
    fbapOverlapMapper_debugPrintWithFlushInfo(a1);
  }

  return 0;
}

uint64_t fbapOverlapMapper_debugPrintWithFlushInfo(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(*(DerivedStorage + 48));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(CMBaseObject, @"LastSbufEndOPTS", *MEMORY[0x1E695E480], &dictionaryRepresentation);
    if (!v5)
    {
      CMTimeMakeFromDictionary(&time, dictionaryRepresentation);
      *(DerivedStorage + 60) = time;
      FigSimpleMutexLock();
      if (!*(DerivedStorage + 32))
      {
        v6 = CMBaseObjectGetDerivedStorage();
        v26 = 0;
        v27 = &v26;
        v28 = 0x3000000000;
        v30 = *(MEMORY[0x1E6960C70] + 16);
        v29 = *MEMORY[0x1E6960C70];
        v21 = MEMORY[0x1E69E9820];
        v22 = 0x40000000;
        v23 = __fbapOverlapMapper_debugPrintSystemTime_block_invoke;
        v24 = &unk_1E748C858;
        v25 = &v26;
        FigCFDictionaryApplyBlock();
        v7 = v27;
        if ((*(v27 + 36) & 1) == 0)
        {
          v8 = MEMORY[0x1E6960CC0];
          *(v27 + 3) = *MEMORY[0x1E6960CC0];
          *(v7 + 40) = *(v8 + 16);
        }

        if (dword_1EAF173C8)
        {
          v20 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v10 = v20;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v11 = v10;
          }

          else
          {
            v11 = v10 & 0xFFFFFFFE;
          }

          if (v11)
          {
            if (a1)
            {
              v17 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v17 = "";
            }

            OUTLINED_FUNCTION_6_66(v27);
            Seconds = CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_6_66(v27);
            v31 = *(v6 + 60);
            v15 = fbapOverlapMapper_debugPrintTimeIntervalGraph(MEMORY[0x1E6960C70], &time, &v31, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v14, 2u);
            time = *(v6 + 60);
            v16 = CMTimeGetSeconds(&time);
            LODWORD(v31.value) = 136317186;
            *(&v31.value + 4) = "fbapOverlapMapper_debugPrintSystemTime";
            LOWORD(v31.flags) = 2048;
            *(&v31.flags + 2) = a1;
            HIWORD(v31.epoch) = 2082;
            v32 = v17;
            v33 = 1024;
            v34 = 25;
            v35 = 2080;
            v36 = "";
            v37 = 2048;
            v38 = Seconds;
            v39 = 1024;
            v40 = 70;
            v41 = 2080;
            v42 = v15;
            v43 = 2048;
            v44 = v16;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        _Block_object_dispose(&v26, 8);
        OUTLINED_FUNCTION_1_104();
        fbapOverlapMapper_debugPrintType();
        OUTLINED_FUNCTION_1_104();
        fbapOverlapMapper_debugPrintType();
        OUTLINED_FUNCTION_1_104();
        fbapOverlapMapper_debugPrintType();
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 4294954514;
  }

  FigSimpleMutexUnlock();
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  return v5;
}

double __fbapOverlapMapper_debugPrintSystemTime_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v3 = *MEMORY[0x1E6960C70];
  v22 = **&MEMORY[0x1E6960C70];
  if (*(a3 + 56))
  {
    if (*(a3 + 64))
    {
      CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(a3 + 48));
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        if (!v6(CMBaseObject, @"MixStartMediaTime", *MEMORY[0x1E695E480], &v23))
        {
          CMTimeMakeFromDictionary(&lhs, v23);
          value = lhs.value;
          flags = lhs.flags;
          timescale = lhs.timescale;
          epoch = lhs.epoch;
          if (v23)
          {
            CFRelease(v23);
            v23 = 0;
          }

          CMTimebaseGetTime(&v22, *(a3 + 56));
          if ((flags & 1) == 0)
          {
            value = *MEMORY[0x1E6960CC0];
            flags = *(MEMORY[0x1E6960CC0] + 12);
            timescale = *(MEMORY[0x1E6960CC0] + 8);
            epoch = *(MEMORY[0x1E6960CC0] + 16);
          }

          OUTLINED_FUNCTION_2_4();
          if (*(v9 + 36))
          {
            rhs = v22;
            v17.value = value;
            v17.timescale = timescale;
            v17.flags = flags;
            v17.epoch = epoch;
            CMTimeAdd(&lhs, &rhs, &v17);
            OUTLINED_FUNCTION_2_4();
            rhs = v11[1];
            v10 = &v18;
            CMTimeMinimum(&v18, &lhs, &rhs);
          }

          else
          {
            lhs = v22;
            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = flags;
            rhs.epoch = epoch;
            v10 = &v20;
            CMTimeAdd(&v20, &lhs, &rhs);
          }

          OUTLINED_FUNCTION_2_4();
          v3 = *&v10->value;
          *(v12 + 24) = *&v10->value;
          *(v12 + 40) = v10->epoch;
          if (*(a3 + 92))
          {
            OUTLINED_FUNCTION_2_4();
            lhs = v13[1];
            rhs = *(a3 + 80);
            CMTimeAdd(&v16, &lhs, &rhs);
            OUTLINED_FUNCTION_2_4();
            *&v3 = v16.value;
            v14[1] = v16;
          }
        }
      }
    }
  }

  return *&v3;
}

void __fbapOverlapMapper_debugPrintType_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  *&v92.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v92.epoch = v3;
  *&v90.value = *&v92.value;
  v90.epoch = v3;
  *&v88.value = *&v92.value;
  v88.epoch = v3;
  *&v86.value = *&v92.value;
  v86.epoch = v3;
  v95 = *MEMORY[0x1E6960C70];
  v96 = *(MEMORY[0x1E6960C70] + 8);
  v83 = *&v92.value;
  v84 = v3;
  *&v81.value = *&v92.value;
  v81.epoch = v3;
  v59 = *&v92.value;
  *&v79.value = *&v92.value;
  v79.epoch = v3;
  cf1 = 0;
  dictionaryRepresentation = 0;
  BOOLean = 0;
  if (!*(a3 + 48))
  {
    goto LABEL_62;
  }

  v6 = *(MEMORY[0x1E6960C70] + 12);
  if (*(a3 + 68))
  {
    BooleanValue = FigCFDictionaryGetBooleanValue();
    v8 = *(a3 + 68);
    if (BooleanValue)
    {
      if (v8)
      {
        FigCFDictionaryGetNumberValue();
        if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
        {
          DictionaryValue = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&v86, DictionaryValue);
        }

        else
        {
          v9 = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&lhs, v9);
          v86 = lhs;
        }

        v11 = FigCFDictionaryGetDictionaryValue();
        v12 = CMTimeMakeFromDictionary(&lhs, v11);
        OUTLINED_FUNCTION_4_82(v12, v13, v14, v15, v16, v17, v18, v19, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75.value, *&v75.timescale, v75.epoch, BOOLean, cf1, dictionaryRepresentation, v79.value, *&v79.timescale, v79.epoch, v80, v81.value, *&v81.timescale, v81.epoch, v82, v83, *(&v83 + 1), v84, v85, v86.value, *&v86.timescale, v86.epoch, v87, v88.value, *&v88.timescale, v88.epoch, v89, v90.value, *&v90.timescale, v90.epoch, v91, v92.value, *&v92.timescale, v92.epoch);
      }

      goto LABEL_12;
    }

    if (v8)
    {
      goto LABEL_62;
    }
  }

  if (*(a1 + 40))
  {
    goto LABEL_62;
  }

LABEL_12:
  v20 = *(a1 + 48);
  if (v20 && (*(a1 + 76) & 1) != 0 && (*(a1 + 100) & 1) != 0 && !*(a1 + 104) && (*(a1 + 88) & 0x8000000000000000) == 0 && CFEqual(v20, a3))
  {
    v83 = *(a1 + 64);
    v84 = *(a1 + 80);
    lhs = *(a1 + 64);
    rhs = *(a1 + 88);
    CMTimeAdd(&v81, &lhs, &rhs);
  }

  v21 = *MEMORY[0x1E695E480];
  CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(a3 + 48));
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v23)
  {
    v24 = v23(CMBaseObject, @"ProcessingState", v21, &cf1);
  }

  else
  {
    v24 = 4294954514;
  }

  OUTLINED_FUNCTION_0_115(v24);
  if (!v25)
  {
    if (!CFEqual(cf1, @"Idle") && !CFEqual(cf1, @"Processing") && !CFEqual(cf1, @"WaitingForMixStart") && !CFEqual(cf1, @"Mixing"))
    {
      CFEqual(cf1, @"StopMixing");
    }

    if ((v6 & 1) == 0)
    {
      FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(a3 + 48));
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v26 = OUTLINED_FUNCTION_3_77();
        v28 = v27(v26);
      }

      else
      {
        v28 = 4294954514;
      }

      OUTLINED_FUNCTION_0_115(v28);
      if (v29)
      {
        goto LABEL_62;
      }

      v30 = CMTimeMakeFromDictionary(&lhs, dictionaryRepresentation);
      OUTLINED_FUNCTION_4_82(v30, v31, v32, v33, v34, v35, v36, v37, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75.value, *&v75.timescale, v75.epoch, BOOLean, cf1, dictionaryRepresentation, v79.value, *&v79.timescale, v79.epoch, v80, v81.value, *&v81.timescale, v81.epoch, v82, v83, *(&v83 + 1), v84, v85, v86.value, *&v86.timescale, v86.epoch, v87, v88.value, *&v88.timescale, v88.epoch, v89, v90.value, *&v90.timescale, v90.epoch, v91, v92.value, *&v92.timescale, v92.epoch);
      if (dictionaryRepresentation)
      {
        CFRelease(dictionaryRepresentation);
        dictionaryRepresentation = 0;
      }
    }

    v38 = *(a3 + 56);
    if (v38)
    {
      CMTimebaseGetTime(&v92, v38);
    }

    else
    {
      *&v92.value = v59;
      v92.epoch = v3;
    }

    FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(a3 + 48));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v39 = OUTLINED_FUNCTION_3_77();
      v41 = v40(v39);
    }

    else
    {
      v41 = 4294954514;
    }

    OUTLINED_FUNCTION_0_115(v41);
    if (!v42)
    {
      CMTimeMakeFromDictionary(&v90, dictionaryRepresentation);
      if (dictionaryRepresentation)
      {
        CFRelease(dictionaryRepresentation);
        dictionaryRepresentation = 0;
      }

      FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(a3 + 48));
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v43 = OUTLINED_FUNCTION_3_77();
        v45 = v44(v43);
      }

      else
      {
        v45 = 4294954514;
      }

      OUTLINED_FUNCTION_0_115(v45);
      if (!v46)
      {
        CMTimeMakeFromDictionary(&v88, dictionaryRepresentation);
        if (dictionaryRepresentation)
        {
          CFRelease(dictionaryRepresentation);
          dictionaryRepresentation = 0;
        }

        FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(a3 + 48));
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v47 = OUTLINED_FUNCTION_3_77();
          v49 = v48(v47);
        }

        else
        {
          v49 = 4294954514;
        }

        OUTLINED_FUNCTION_0_115(v49);
        if (!v50)
        {
          CMTimeMakeFromDictionary(&v79, dictionaryRepresentation);
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
            dictionaryRepresentation = 0;
          }

          v51 = FigBufferedAirPlaySubPipeManagerCopyProperty(*(a3 + 48), @"MilestoneSet", v21, &BOOLean);
          OUTLINED_FUNCTION_0_115(v51);
          if (!v52)
          {
            if (*(a3 + 92))
            {
              v90 = *(a3 + 80);
              rhs = v92;
              v75 = *(a3 + 80);
              CMTimeAdd(&lhs, &rhs, &v75);
              v92 = lhs;
            }

            if (dword_1EAF173C8)
            {
              HIDWORD(v74) = 0;
              BYTE3(v74) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }

LABEL_62:
  if (cf1)
  {
    CFRelease(cf1);
    cf1 = 0;
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
    dictionaryRepresentation = 0;
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

uint64_t AssetPALoggingHelperCreateAccessInterval(uint64_t a1, _OWORD *a2)
{
  if (qword_1ED4CAD10 != -1)
  {
    dispatch_once(&qword_1ED4CAD10, &__block_literal_global_47);
  }

  if (!_MergedGlobals_72)
  {
    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [AssetPAAccessInterval alloc];
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = [(AssetPAAccessInterval *)v5 initWithClientPid:a1 auditToken:v9];
  objc_autoreleasePoolPop(v4);
  return v7;
}

void __getPAAccessLoggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPAAccessLoggerClass(void)_block_invoke") description:{@"AssetPALoggingHelper.m", 47, @"Unable to find class %s", "PAAccessLogger"}];
  __break(1u);
}

void PrivacyAccountingLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *PrivacyAccountingLibrary(void)") description:{@"AssetPALoggingHelper.m", 42, @"%s", *a1}];
  __break(1u);
}

void __getPATCCAccessClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPATCCAccessClass(void)_block_invoke") description:{@"AssetPALoggingHelper.m", 44, @"Unable to find class %s", "PATCCAccess"}];
  __break(1u);
}

void __getPAApplicationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPAApplicationClass(void)_block_invoke") description:{@"AssetPALoggingHelper.m", 50, @"Unable to find class %s", "PAApplication"}];
  __break(1u);
}

uint64_t getGDRCountForFormatID(OpaqueAudioConverter *a1, CMAudioFormatDescriptionRef desc, char *a3)
{
  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(desc);
  if (!MostCompatibleFormat)
  {
    goto LABEL_18;
  }

  v6 = MostCompatibleFormat;
  v28 = 2;
  v29 = 0;
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  v7 = OUTLINED_FUNCTION_2_100();
  if (AudioConverterGetProperty(v7, v8, v9, v10) || (v11 = OUTLINED_FUNCTION_2_100(), AudioConverterSetProperty(v11, v12, v13, v14)) || AudioConverterGetProperty(a1, 0x7072696Du, &ioPropertyDataSize, &outPropertyData) || (v15 = OUTLINED_FUNCTION_2_100(), AudioConverterSetProperty(v15, v16, v17, v18)) || (mFramesPerPacket = v6->mASBD.mFramesPerPacket) == 0)
  {
    mFormatID = v6->mASBD.mFormatID;
    if (mFormatID - 1633772389 <= 0xE && ((1 << (mFormatID - 101)) & 0x4889) != 0 || mFormatID == 1633772320)
    {
      v20 = 0;
      LOWORD(v21) = 1;
      goto LABEL_8;
    }

LABEL_18:
    LOWORD(v21) = 0;
    v20 = 0;
    goto LABEL_8;
  }

  v20 = 1;
  v21 = outPropertyData / mFramesPerPacket;
LABEL_8:
  *a3 = v20;
  return v21;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_5()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_6()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_7()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_8()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_16()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_17()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_20()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t facCopyMixMapForInputs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t RunConverter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t RunConverter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t RunConverter_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(uint64_t a1, CGRect *a2)
{
  v12 = 0u;
  v13 = 0;
  memset(&v11, 0, sizeof(v11));
  v3 = *(a1 + 32);
  SpecifiedCropRect = FigVCLayerDefinitionGetSpecifiedCropRect(a1, &v12);
  if (SpecifiedCropRect)
  {
    return SpecifiedCropRect;
  }

  v5 = CVBufferCopyAttachment(v3, *MEMORY[0x1E6965D70], 0);
  Width = CVPixelBufferGetWidth(v3);
  Height = CVPixelBufferGetHeight(v3);
  fvc_layerDefinition_getCleanAperture(v5, Width, Height, &v11.origin.x);
  v9 = v8;
  if (!v8)
  {
    v14.origin.x = *&v12 + v11.origin.x;
    v14.origin.y = *(&v12 + 1) + v11.origin.y;
    v14.size = v13;
    *a2 = CGRectIntersection(v11, v14);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

uint64_t FigVCLayerDefinitionGetAffineTransform(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    memset(&v29, 0, sizeof(v29));
    SpecifiedAffineTransform = FigVCLayerDefinitionGetSpecifiedAffineTransform(a1, &v29);
    if (SpecifiedAffineTransform)
    {
      return SpecifiedAffineTransform;
    }

    v5 = CVBufferCopyAttachment(v3, *MEMORY[0x1E6965D70], 0);
    memset(v28, 0, sizeof(v28));
    Width = CVPixelBufferGetWidth(v3);
    Height = CVPixelBufferGetHeight(v3);
    fvc_layerDefinition_getCleanAperture(v5, Width, Height, v28);
    v9 = v8;
    if (v8)
    {
      v10 = 0;
      if (!v5)
      {
LABEL_6:
        if (v10)
        {
          CFRelease(v10);
        }

        return v9;
      }
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
      CGAffineTransformMakeTranslation(&v27, -*v28, -*(v28 + 1));
      v10 = CVBufferCopyAttachment(v3, *MEMORY[0x1E6965EF8], 0);
      v26 = 0;
      FigVideoCompositorUtilityGetPixelAspectRatio(v10, &v26 + 1, &v26);
      memset(&v25, 0, sizeof(v25));
      CGAffineTransformMakeScale(&v25, SHIDWORD(v26) / v26, 1.0);
      t1 = v27;
      v22 = v25;
      v11 = CGAffineTransformConcat(&v23, &t1, &v22);
      OUTLINED_FUNCTION_3_78(v11, v12, v13, v14, v15, v16, v17, v18, *&v29.tx, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.c, *&v22.tx, *&v22.ty, *&v23.a, *&v23.b, *&v23.c, *&v23.d, *&v23.tx);
      v20 = *&t1.c;
      v19 = *&t1.tx;
      v29 = t1;
      *a2 = *&t1.a;
      a2[1] = v20;
      a2[2] = v19;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    CFRelease(v5);
    goto LABEL_6;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigVCLayerDefinitionCreateLayerDefinitionArray(int a1, _DWORD *a2, const void **a3, const __CFDictionary *a4, CGFloat a5, CGFloat a6, uint64_t a7, __CFArray **a8)
{
  v35 = 0;
  cf = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Value = CFDictionaryGetValue(a4, @"LayerStack");
  if (!Value)
  {
    goto LABEL_17;
  }

  v16 = Value;
  v17 = CFGetTypeID(Value);
  if (v17 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v16);
    if (Count >= 1)
    {
      v19 = Count;
      v20 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v20);
        if (!ValueAtIndex)
        {
          goto LABEL_19;
        }

        v22 = ValueAtIndex;
        v23 = CFGetTypeID(ValueAtIndex);
        if (v23 != CFDictionaryGetTypeID() || !FigCFDictionaryGetInt32IfPresent() || a1 < 1)
        {
          goto LABEL_19;
        }

        v24 = a1;
        v26 = a2;
        v25 = a3;
        while (*v26++)
        {
          ++v25;
          if (!--v24)
          {
            goto LABEL_19;
          }
        }

        v28 = *v25;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v29 = FigVCLayerDefinitionCreate(0.0, v13, v28, v22, v35, &cf);
        if (v29)
        {
          goto LABEL_20;
        }

        CFArrayAppendValue(Mutable, cf);
      }

      while (++v20 != v19);
    }

LABEL_17:
    v30 = FigVCLayerDefinitionOptimizeLayerDefinitionArray(Mutable, a5, a6);
    if (!v30)
    {
      *a8 = Mutable;
      Mutable = 0;
    }

    goto LABEL_21;
  }

LABEL_19:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  v29 = FigSignalErrorAtGM();
LABEL_20:
  v30 = v29;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v30;
}

uint64_t FigVCLayerDefinitionCopyDestinationPixelBufferWithoutComposingIfPossible(CFArrayRef theArray, _DWORD *a2, __n128 *a3, const void *a4, const void *a5, void *a6)
{
  UInt32 = theArray;
  if (!theArray)
  {
    v18 = 0;
    goto LABEL_23;
  }

  if (CFArrayGetCount(theArray) != 1)
  {
    goto LABEL_36;
  }

  v12 = OUTLINED_FUNCTION_265();
  ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
  v46[0] = 1.0;
  Opacity = FigVCLayerDefinitionGetOpacity(ValueAtIndex, v46);
  if (Opacity)
  {
    return Opacity;
  }

  if (v46[0] <= 0.9999)
  {
LABEL_36:
    UInt32 = 0;
LABEL_37:
    v18 = 0;
    goto LABEL_38;
  }

  v16 = *(ValueAtIndex + 4);
  if (a5)
  {
    CVPixelBufferGetPixelFormatType(*(ValueAtIndex + 4));
    UInt32 = FigCFNumberCreateUInt32();
    v17 = CFGetTypeID(a5);
    if (v17 == CFNumberGetTypeID())
    {
      if (FigCFEqual())
      {
        goto LABEL_37;
      }
    }

    else
    {
      v19 = CFGetTypeID(a5);
      if (v19 != CFArrayGetTypeID())
      {
        fig_log_get_emitter();
        AffineTransform = FigSignalErrorAtGM();
        v18 = 0;
        theArray = 0;
        if (a6)
        {
LABEL_25:
          *a6 = theArray;
          if (!UInt32)
          {
            goto LABEL_32;
          }

LABEL_31:
          CFRelease(UInt32);
          goto LABEL_32;
        }

        goto LABEL_28;
      }

      if (FigCFArrayContainsValue())
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    UInt32 = 0;
  }

  if (!FigVideoCompositorIsPixelBufferOpaque(v16))
  {
    goto LABEL_37;
  }

  Width = CVPixelBufferGetWidth(v16);
  Height = CVPixelBufferGetHeight(v16);
  if (*a2 != Width)
  {
    goto LABEL_37;
  }

  v22 = Height;
  if (a2[1] != Height)
  {
    goto LABEL_37;
  }

  v18 = CVBufferCopyAttachment(v16, *MEMORY[0x1E6965D70], 0);
  if (!FigVideoCompositorUtilityAreCleanAperturesEqual(v18, Width, v22, a4))
  {
LABEL_38:
    theArray = 0;
    goto LABEL_23;
  }

  v23 = *(MEMORY[0x1E695F040] + 16);
  v45.origin = *MEMORY[0x1E695F040];
  v45.size = v23;
  SpecifiedCropRect = FigVCLayerDefinitionGetSpecifiedCropRect(ValueAtIndex, &v45);
  if (!SpecifiedCropRect)
  {
    if (CGRectIsInfinite(v45))
    {
      v25 = *(MEMORY[0x1E695EFD0] + 16);
      v42 = *MEMORY[0x1E695EFD0];
      v43 = v25;
      v44 = *(MEMORY[0x1E695EFD0] + 32);
      AffineTransform = FigVCLayerDefinitionGetAffineTransform(ValueAtIndex, &v42);
      if (AffineTransform)
      {
        goto LABEL_30;
      }

      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      OUTLINED_FUNCTION_3_78(0, v26, v27, v28, v29, v30, v31, v32, a3[2], a3->n128_u64[0], a3->n128_i64[1], a3[1].n128_i64[0], a3[1].n128_i64[1], a3[1], v36, v37, v42, *(&v42 + 1), v43, *(&v43 + 1), v44);
      memset(&v38, 0, sizeof(v38));
      IsIdentity = CGAffineTransformIsIdentity(&v38);
      theArray = 0;
      if (!IsIdentity || !v16)
      {
        goto LABEL_24;
      }

      theArray = CFRetain(v16);
LABEL_23:
      AffineTransform = 0;
LABEL_24:
      if (a6)
      {
        goto LABEL_25;
      }

LABEL_28:
      if (theArray)
      {
        CFRelease(theArray);
      }

LABEL_30:
      if (!UInt32)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_38;
  }

  AffineTransform = SpecifiedCropRect;
  if (UInt32)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v18)
  {
    CFRelease(v18);
  }

  return AffineTransform;
}

CFMutableStringRef fvc_layerDefinition_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v37 = NAN;
  v3 = *(MEMORY[0x1E695F050] + 16);
  v36.origin = *MEMORY[0x1E695F050];
  v36.size = v3;
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v33 = *MEMORY[0x1E695EFD0];
  v34 = v4;
  v35 = *(MEMORY[0x1E695EFD0] + 32);
  FigVCLayerDefinitionGetOpacity(a1, &v37);
  FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(a1, &v36);
  FigVCLayerDefinitionGetAffineTransform(a1, &v33);
  v5 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v5, v6, v7, a1);
  v24 = *(a1 + 40);
  v8 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v8, v9, v10, *&v24);
  v25 = v37;
  v11 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v11, v12, v13, *&v25);
  width = v36.size.width;
  height = v36.size.height;
  x = v36.origin.x;
  y = v36.origin.y;
  v14 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v14, v15, v16, x, y, width, height);
  v32 = v35;
  v31 = v34;
  v27 = v33;
  v17 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v17, v18, v19, v27, 0, v31, 0, v32, 0x3FF0000000000000);
  v20 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v20, v21, v22, a1);
  return Mutable;
}

uint64_t FigVCLayerDefinitionGetOpacity_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCLayerDefinitionGetOpacity_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCLayerDefinitionGetSpecifiedCropRect_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCLayerDefinitionGetSpecifiedCropRect_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCLayerDefinitionGetSpecifiedAffineTransform_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCLayerDefinitionGetSpecifiedAffineTransform_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCLayerDefinitionCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCLayerDefinitionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCLayerDefinitionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPersonaCopyCurrentID(CFStringRef *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v4, 0x158uLL);
    voucher_get_current_persona();
    result = kpersona_info();
    if (!result)
    {
      v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
      result = 0;
      *a1 = v3;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigRTCReportingCreate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, const __CFDictionary *a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t *a12)
{
  v27 = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_2_102();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_2_102();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_0_117();
  if ((_MergedGlobals_73 & 1) == 0)
  {
    v18 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v17 = 4294955284;
  if (!a5 || !a12)
  {
    goto LABEL_13;
  }

  v18 = frr_createUserInfoDict(a5, a2, a3, a8, a6, a9, a11, &v27);
  if (v18)
  {
    goto LABEL_19;
  }

  if (!v27)
  {
    v17 = 4294955285;
    goto LABEL_13;
  }

  v18 = frr_createSessionDict(a4, a1, a7, a8, a10, a5, 0, a3, &cf);
  if (v18)
  {
LABEL_19:
    v17 = v18;
    goto LABEL_13;
  }

  if (!cf)
  {
    v17 = 4294955285;
    goto LABEL_15;
  }

  v19 = qword_1ED4CAD20(cf, v27, qword_1ED4CAD28, &__block_literal_global_48);
  off_1ED4CAD30(v19, &__block_literal_global_11_0);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __FigRTCReportingCreate_block_invoke_3;
  v25[3] = &__block_descriptor_33_e20_v16__0____CFArray__8l;
  v26 = a11;
  off_1ED4CAD38(v19, v25);
  *a12 = v19;
  frr_logRTCReportingSession(@"Create", a5, a2, a6, a4, v27, a11);
  if (off_1ED4CAD40)
  {
    if (FigCFEqual())
    {
      (off_1ED4CAD40)(7);
    }

    else
    {
      CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
      (off_1ED4CAD40)(CFPreferenceNumberWithDefault);
    }
  }

  v17 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_15:
  if (v27)
  {
    CFRelease(v27);
  }

  return v17;
}

uint64_t frr_createUserInfoDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, int a7, CFTypeRef *a8)
{
  if (!a8)
  {
    return 4294955284;
  }

  if (a6 && [MEMORY[0x1E696ACB0] isValidJSONObject:a6])
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a6);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v12 = MutableCopy;
  if (!MutableCopy)
  {
    return 4294955285;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  if (a7 && IsItOKToLogURLs)
  {
    v14 = CFPreferencesCopyAppValue(@"SessionTag", @"com.apple.coremedia");
    FigCFDictionarySetValue();
    if (v14)
    {
      CFRelease(v14);
    }
  }

  *a8 = CFRetain(v12);
  CFRelease(v12);
  return 0;
}

uint64_t frr_createSessionDict(int a1, uint64_t a2, const void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, CFTypeRef *a9)
{
  if (_MergedGlobals_73)
  {
    if (!a9)
    {
      return 4294955284;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294955285;
    }

    v13 = Mutable;
    v14 = 4294955284;
    switch(a1)
    {
      case 1:
      case 2:
      case 5:
        FigCFDictionarySetInt32();
        goto LABEL_7;
      case 3:
        FigCFDictionarySetInt32();
        FigCFDictionarySetDouble();
LABEL_7:
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetValue();
        if (!a5)
        {
          FigCFEqual();
        }

        FigCFDictionarySetInt32();
        FigCFDictionarySetValue();
        if (a3)
        {
          CFDictionarySetValue(v13, qword_1ED4CAD90, a3);
        }

        v14 = 0;
        *a9 = CFRetain(v13);
        break;
      default:
        break;
    }

    CFRelease(v13);
    return v14;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t FigRTCReportingSetUserInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  cf = 0;
  OUTLINED_FUNCTION_1_105();
  if (!v17)
  {
    return 4294955286;
  }

  v18 = v9;
  if (!v9)
  {
    return 4294955283;
  }

  v19 = v16;
  v20 = v14;
  v21 = v12;
  v22 = v10;
  v24 = frr_createUserInfoDict(v12, v10, v11, v13, v14, v15, v16, &cf);
  if (!v24)
  {
    if (!cf)
    {
      return 4294955285;
    }

    off_1ED4CAD48(v18, cf, &__block_literal_global_23);
    frr_logRTCReportingSession(@"SetUserInfo", v21, v22, v20, a9, cf, v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t FigRTCReportingSendOneMessageWithDictionary(unsigned int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, const __CFDictionary *a9, unsigned __int16 a10, __int16 a11, unsigned __int16 a12, __int16 a13, unsigned __int8 a14, uint64_t a15)
{
  v27 = 0;
  v28 = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_80();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_80();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_0_117();
  if ((_MergedGlobals_73 & 1) == 0)
  {
    v20 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v20 = frr_createUserInfoDict(a5, a2, a3, a8, a6, a9, a14, &v27);
  if (v20)
  {
    goto LABEL_17;
  }

  if (!v27)
  {
    v21 = 4294955285;
    goto LABEL_11;
  }

  v20 = frr_createSessionDict(a4, a1, a7, a8, 0, a5, 1, 0, &v28);
  if (v20)
  {
LABEL_17:
    v21 = v20;
    goto LABEL_11;
  }

  if (!v28)
  {
    v21 = 4294955285;
    goto LABEL_13;
  }

  frr_logRTCReportingSession(@"SendOneMessage", a5, a2, a6, a4, v27, a14);
  if (off_1ED4CAD50(v28, v27, a10, a12, a15, &cf))
  {
    v21 = 0;
  }

  else
  {
    if (cf)
    {
      CFRelease(cf);
    }

    v21 = 4294955282;
  }

LABEL_11:
  if (v28)
  {
    CFRelease(v28);
  }

LABEL_13:
  if (v27)
  {
    CFRelease(v27);
  }

  return v21;
}

uint64_t FigRTCReportingSendMsgWithErrors(uint64_t a1)
{
  if (!a1)
  {
    return 4294955283;
  }

  OUTLINED_FUNCTION_1_105();
  if (!v2)
  {
    return 4294955286;
  }

  if (!v1)
  {
    return 4294955296;
  }

  if (off_1ED4CAD58())
  {
    return 0;
  }

  return 4294955282;
}

uint64_t FigRTCReportingSendMsgRealTime(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 4294955283;
  }

  OUTLINED_FUNCTION_1_105();
  if (!v3)
  {
    return 4294955286;
  }

  v4 = v2;
  if (!v2)
  {
    return 4294955296;
  }

  v5 = v1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294955295;
  }

  v7 = Mutable;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  CFDictionarySetValue(v7, qword_1ED4CADD0, v4);
  if (off_1ED4CADE0(v5, v7, &cf))
  {
    v9 = 0;
  }

  else
  {
    if (cf)
    {
      CFRelease(cf);
    }

    v9 = 4294955282;
  }

  CFRelease(v7);
  return v9;
}

uint64_t FigImageQueueDisplayCountHistory_StartTracingDisplayCount(uint64_t a1, unsigned int a2, const char *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_106();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_1_106();
  fig_note_initialize_category_with_default_work_cf();
  v43 = 0;
  memset(&v42, 0, sizeof(v42));
  string = 0;
  time(&v43);
  localtime_r(&v43, &v42);
  if (!a2)
  {
    keyExistsAndHasValidFormat[0] = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"iq_trace_cadence", @"com.apple.coremedia", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      a2 = AppIntegerValue;
      if (AppIntegerValue - 1 < 0xA)
      {
        goto LABEL_2;
      }

      v44 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = v44;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v46 = 136315394;
        v47 = "FigImageQueueDisplayCountHistory_StartTracingDisplayCount";
        v48 = 1024;
        v49 = a2;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = 0;
    goto LABEL_54;
  }

LABEL_2:
  v6 = CFPreferencesCopyAppValue(@"iq_trace_cadence_dir", @"com.apple.coremedia");
  v7 = MEMORY[0x1E695E480];
  if (v6)
  {
    v8 = v6;
    v9 = CFGetTypeID(v6);
    if (v9 == CFStringGetTypeID())
    {
      CFStringGetCString(v8, buffer, 1024, 0);
      CFRelease(v8);
LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }
  }

  v10 = getenv("CFFIXED_USER_HOME");
  if (v10)
  {
    snprintf(buffer, 0x400uLL, "%s/Library/Logs", v10);
    goto LABEL_7;
  }

  v11 = FigCFURLCreateFromSystemTemporaryDirectory();
  if (!v11 || FigCFURLCopyCanonicalPath() || !CFStringGetFileSystemRepresentation(string, buffer, 1024))
  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

LABEL_8:
  v37 = a2;
  cf = v11;
  if (_MergedGlobals_74 != -1)
  {
    dispatch_once_f(&_MergedGlobals_74, 0, FigImageQueueDisplayCountHistory_initCadencePathMutexOnce);
  }

  *(a1 + 24) = 0;
  FigSimpleMutexLock();
  strcpy(&v46, "-A");
  v36 = a2 & 0xFFFFFFFD;
  if ((a2 & 0xFFFFFFFD) == 8)
  {
    v12 = "csv";
  }

  else
  {
    v12 = "txt";
  }

  v13 = 65;
  BYTE1(v46) = 65;
  v14 = *v7;
  while (1)
  {
    if (v13 <= 65)
    {
      v15 = "";
    }

    else
    {
      v15 = &v46;
    }

    asprintf((a1 + 16), "%s/coremedia-%s-cadence-%04d-%02d-%02d-%02d-%02d-%02d%s.%s", buffer, a3, v42.tm_year + 1900, v42.tm_mon + 1, v42.tm_mday, v42.tm_hour, v42.tm_min, v42.tm_sec, v15, v12);
    v16 = strlen(*(a1 + 16));
    v17 = CFURLCreateFromFileSystemRepresentation(v14, *(a1 + 16), v16, 0);
    DoesFileExist = FigFileDoesFileExist();
    if (v17)
    {
      CFRelease(v17);
    }

    v19 = *(a1 + 16);
    if (!DoesFileExist)
    {
      break;
    }

    free(v19);
    *(a1 + 16) = 0;
    v13 = ++BYTE1(v46);
    if (SBYTE1(v46) >= 91)
    {
      goto LABEL_30;
    }
  }

  *(a1 + 24) = fopen(v19, "w");
LABEL_30:
  FigSimpleMutexUnlock();
  v24 = __error();
  v25 = *(a1 + 24);
  if (v25)
  {
    v26 = v37;
    if ((v37 & 2) != 0)
    {
      setvbuf(v25, 0, 1, 0);
      v26 = v36;
    }

    if (v26 == 8)
    {
      fwrite("imageTime, localTime, renderCount, displayCount", 0x2FuLL, 1uLL, *(a1 + 24));
    }

    *(a1 + 32) = v26;
    bzero((a1 + 40), 0x780uLL);
    *(a1 + 36) = 1;
    *(a1 + 1960) = 0u;
    v27 = OUTLINED_FUNCTION_2_103();
    v28 = *keyExistsAndHasValidFormat;
    if (os_log_type_enabled(v27, type))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v44 = 136315650;
      OUTLINED_FUNCTION_3_81();
      v45 = v26;
      OUTLINED_FUNCTION_4_84();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_5_72();
    v34 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(a1 + 2232) = 0;
    *(a1 + 2240) = 0;
  }

  else
  {
    v30 = *v24;
    v31 = OUTLINED_FUNCTION_2_103();
    v32 = *keyExistsAndHasValidFormat;
    if (os_log_type_enabled(v31, type))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFE;
    }

    if (v33)
    {
      v44 = 136315650;
      OUTLINED_FUNCTION_3_81();
      v45 = v30;
      OUTLINED_FUNCTION_4_84();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_5_72();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    free(*(a1 + 16));
    v34 = 0;
    *(a1 + 16) = 0;
  }

  v11 = cf;
LABEL_55:
  if (string)
  {
    CFRelease(string);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v34;
}

uint64_t FigImageQueueDisplayCountHistory_Create_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

__CFString *FigCSSTokenMapTokenTypeToName(int a1)
{
  cf = 0;
  MEMORY[0x19A8D3660](&_MergedGlobals_6, figcss_BuildCSSTokenInfo);
  if (_MergedGlobals_97 != 1)
  {
    return @"<invalid-token>";
  }

  v2 = (qword_1EAF19898 + 8);
  v3 = 33;
  v4 = @"<invalid-token>";
  while (*v2 != a1)
  {
    v2 += 6;
    if (!--v3)
    {
      return v4;
    }
  }

  valuePtr = *(v2 - 1);
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  if (!v5)
  {
    return @"<invalid-token>";
  }

  v6 = v5;
  OUTLINED_FUNCTION_0_119();
  if (qword_1EAF198A0)
  {
    v4 = @"<invalid-token>";
    if (CFDictionaryGetValueIfPresent(qword_1EAF198A0, v6, &cf))
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        v4 = cf;
      }
    }
  }

  else
  {
    v4 = @"<invalid-token>";
  }

  CFRelease(v6);
  return v4;
}

uint64_t FigCaptionRendererIntervalCreate(void *a1)
{
  *a1 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererIntervalGetClassID_sRegisterFigCaptionRendererIntervalBaseTypeOnce, RegisterFigCaptionRendererIntervalBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = FigBytePumpGetFigBaseObject(DerivedStorage);
    *(DerivedStorage + 8) = v4;
    *a1 = 0;
  }

  return v2;
}

uint64_t FigCaptionRendererParentIntervalCreate(void *a1)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererParentIntervalGetClassID_sRegisterFigCaptionRendererParentIntervalBaseTypeOnce, RegisterFigCaptionRendererParentIntervalBaseType);
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  DerivedStorage[2] = 0;
  DerivedStorage[3] = 0x4018000000000000;
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage[2] = Mutable;
  if (Mutable)
  {
    FigCaptionRendererIntervalCreate(DerivedStorage);
    v6 = 0;
    *a1 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM();
  }

  return v6;
}

void FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval_cold_1(const void *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_RemoveChildInterval_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t findAndSaveCoveringIntervalsApplier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t findAndSaveOverlappingIntervalsApplier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t DeMoofMovieFile(const void *a1)
{
  v76[2] = *MEMORY[0x1E69E9840];
  v64 = 0;
  CurrentAtomGlobalOffset = MovieUsesFragments(a1, &v64 + 1, &v64);
  if (CurrentAtomGlobalOffset)
  {
    return CurrentAtomGlobalOffset;
  }

  if (!HIBYTE(v64))
  {
    if (!v64)
    {
      return 0;
    }

    OUTLINED_FUNCTION_4_85();
    v76[0] = 0x6D7665786D6F6F76;
    CurrentAtomGlobalOffset = OUTLINED_FUNCTION_8_36();
    if (!CurrentAtomGlobalOffset)
    {
      if (FigAtomStreamPositionViaAtomPath())
      {
        return 0;
      }

      url = 0;
      cf = 0;
      LODWORD(number) = 1701147238;
      CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
      if (!CurrentAtomGlobalOffset)
      {
        if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          return 4294954514;
        }

        v39 = OUTLINED_FUNCTION_2_104();
        CurrentAtomGlobalOffset = v40(v39, 4);
        if (!CurrentAtomGlobalOffset)
        {
          if (url == 4)
          {
            if (shouldSyncByteStreamWhenComplete())
            {
              v41 = *(CMBaseObjectGetVTable() + 16);
              if (*v41 >= 2uLL)
              {
                v42 = v41[5];
                if (v42)
                {
                  v42(a1, 1);
                }
              }
            }

            return 0;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_9();
          return FigSignalErrorAtGM();
        }
      }
    }

    return CurrentAtomGlobalOffset;
  }

  cf = 0;
  v75[0] = 0;
  v76[0] = 0;
  url = 0;
  v3 = *MEMORY[0x1E695E480];
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, *MEMORY[0x1E695FFA0], v3, &url);
    if (!v6)
    {
      if (url)
      {
        v7 = @"com.apple.quicktime-movie";
        v8 = CFURLCopyPathExtension(url);
        v9 = v8;
        if (v8)
        {
          FileTypeForMovieFamilyExtension = FigGetFileTypeForMovieFamilyExtension(v8);
          if (FileTypeForMovieFamilyExtension)
          {
            v7 = FileTypeForMovieFamilyExtension;
          }
        }

        v11 = MovieInformationCreate(v3, 0, v75);
        if (v11 || (v11 = MoovParseByteStream(v75[0], 10, a1, 0), v11) || (v11 = MovieHeaderMakerCreateWithMovieInformation(v3, v75[0], 2, v76), v11))
        {
          v12 = v11;
        }

        else
        {
          v12 = MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(v76[0], v3, v7, url, &cf);
          if (!v12)
          {
            v13 = cf;
            cf = 0;
            goto LABEL_14;
          }
        }

        v13 = 0;
LABEL_14:
        MovieHeaderMakerRelease(v76[0]);
        if (v9)
        {
          CFRelease(v9);
        }

        goto LABEL_18;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_9();
      v6 = FigSignalErrorAtGM();
    }

    v12 = v6;
  }

  else
  {
    v12 = 4294954514;
  }

  MovieHeaderMakerRelease(0);
  v13 = 0;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (url)
  {
    CFRelease(url);
  }

  if (v75[0])
  {
    CFRelease(v75[0]);
  }

  if (v12)
  {
LABEL_124:
    if (!v13)
    {
      return v12;
    }

LABEL_125:
    CFRelease(v13);
    return v12;
  }

  OUTLINED_FUNCTION_4_85();
  v14 = CMByteStreamGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
LABEL_123:
    v12 = 4294954514;
    goto LABEL_124;
  }

  v16 = *MEMORY[0x1E695FF78];
  v72 = 0;
  url = 0;
  cf = 0;
  valuePtr = 0;
  number = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  appended = v15(v14, v16, v3, &number);
  if (appended)
  {
    goto LABEL_129;
  }

  if (!number)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
LABEL_128:
    appended = FigSignalErrorAtGM();
    goto LABEL_129;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  CFRelease(number);
  number = 0;
  appended = OUTLINED_FUNCTION_8_36();
  if (appended)
  {
    goto LABEL_129;
  }

  v61 = 0;
  v63 = 0;
  v62 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_134;
    }

    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomGlobalOffset();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_134;
    }

    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomHeaderSize();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_134;
    }

    if (v72 == 1835295092)
    {
      if (v18)
      {
        v18 = 1;
      }

      else
      {
        v18 = 1;
        v61 = cf;
        v62 = v69;
      }

      goto LABEL_48;
    }

    if (v72 != 1836019574)
    {
      if (v72 == 2003395685)
      {
        v22 = v63;
        if (!v20)
        {
          v22 = v69;
        }

        v63 = v22;
        v20 = 1;
      }

      goto LABEL_48;
    }

    if (!v19)
    {
      v19 = 1;
      goto LABEL_48;
    }

    LODWORD(v76[0]) = 1701147238;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      v12 = 4294954514;
      goto LABEL_105;
    }

    v23 = OUTLINED_FUNCTION_2_104();
    CurrentAtomTypeAndDataLength = v24(v23, 4);
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_134;
    }

    if (url != 4)
    {
      break;
    }

    v19 = 1;
LABEL_48:
    v25 = v68;
    v26 = v69;
    v27 = cf;
    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom)
    {
      if (Atom == -12890)
      {
        if (v72 == 1835295092)
        {
          if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
          {
            goto LABEL_123;
          }

          v29 = OUTLINED_FUNCTION_5_73();
          appended = v30(v29);
          if (appended)
          {
            goto LABEL_129;
          }

          if (v67 != 8)
          {
            goto LABEL_127;
          }

          if (!v66)
          {
            if (!*(*(OUTLINED_FUNCTION_7_51() + 16) + 16))
            {
              goto LABEL_123;
            }

            v31 = OUTLINED_FUNCTION_1_107();
            appended = v32(v31);
            if (appended)
            {
              goto LABEL_129;
            }

            OUTLINED_FUNCTION_6_68();
            if (!v36)
            {
LABEL_127:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              goto LABEL_128;
            }
          }
        }

        goto LABEL_88;
      }

      v33 = &v27[v25 + v26];
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v34 = OUTLINED_FUNCTION_5_73();
        if (!v35(v34))
        {
          v36 = v67 == 8 && HIDWORD(v66) == 1952539757;
          if (v36)
          {
            if (!*(*(OUTLINED_FUNCTION_7_51() + 16) + 16))
            {
              goto LABEL_123;
            }

            v37 = OUTLINED_FUNCTION_1_107();
            appended = v38(v37);
            if (appended)
            {
              goto LABEL_129;
            }

            OUTLINED_FUNCTION_6_68();
            if (!v36)
            {
              goto LABEL_127;
            }

LABEL_88:
            CMBlockBufferGetDataLength(v13);
            OUTLINED_FUNCTION_2_104();
            appended = CMByteStreamAppendBlockBuffer();
            if (appended)
            {
              goto LABEL_129;
            }

            v46 = url;
            if (v46 != CMBlockBufferGetDataLength(v13))
            {
              goto LABEL_127;
            }

            v47 = *(CMBaseObjectGetVTable() + 16);
            if (*v47 >= 2uLL)
            {
              v48 = v47[5];
              if (v48)
              {
                v48(a1, 1);
              }
            }

            if (!v19)
            {
LABEL_121:
              v12 = 0;
              if (v13)
              {
                goto LABEL_125;
              }

              return v12;
            }

            if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
            {
              goto LABEL_123;
            }

            v49 = OUTLINED_FUNCTION_2_104();
            appended = v50(v49, 1);
            if (appended)
            {
              goto LABEL_129;
            }

            if (url != 1)
            {
              goto LABEL_127;
            }

            if (v18)
            {
              v51 = valuePtr - v62;
              if (valuePtr - v62 <= 0xFFFFFFFFLL)
              {
                LODWORD(v76[0]) = bswap32(v51);
                if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                {
                  goto LABEL_123;
                }

                v52 = OUTLINED_FUNCTION_2_104();
                appended = v53(v52, 4, v62);
                if (!appended)
                {
                  if (url != 4)
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_117;
                }

                goto LABEL_129;
              }

              if (v61 >= 0x100000000)
              {
                v65 = bswap64(v51);
                if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                {
                  goto LABEL_123;
                }

                v54 = OUTLINED_FUNCTION_2_104();
                appended = v55(v54, 8);
                if (!appended)
                {
                  OUTLINED_FUNCTION_6_68();
                  if (!v36)
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_117;
                }

LABEL_129:
                v12 = appended;
                if (!v13)
                {
                  return v12;
                }

                goto LABEL_125;
              }

              if (!v20 || v63 != v62 - 8)
              {
                goto LABEL_127;
              }

              v76[0] = 0x7461646D01000000;
              v76[1] = bswap64(v51 + 8);
              if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
              {
                goto LABEL_123;
              }

              v56 = OUTLINED_FUNCTION_2_104();
              appended = v57(v56, 16, v63);
              if (appended)
              {
                goto LABEL_129;
              }

              if (url != 16)
              {
                goto LABEL_127;
              }
            }

LABEL_117:
            if (shouldSyncByteStreamWhenComplete())
            {
              v58 = *(CMBaseObjectGetVTable() + 16);
              if (*v58 >= 2uLL)
              {
                v59 = v58[5];
                if (v59)
                {
                  v59(a1, 1);
                }
              }
            }

            goto LABEL_121;
          }
        }
      }

      v43 = valuePtr - v33;
      if (((valuePtr - v33) & 0xFFFFFFF8) == 0)
      {
        v43 = 8;
      }

      v66 = bswap32(v43) | 0x6565726600000000;
      if (*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        v44 = OUTLINED_FUNCTION_1_107();
        appended = v45(v44);
        if (appended)
        {
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_6_68();
        if (!v36)
        {
          goto LABEL_127;
        }

        goto LABEL_88;
      }

      goto LABEL_123;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
LABEL_134:
  v12 = CurrentAtomTypeAndDataLength;
LABEL_105:
  if (v13)
  {
    goto LABEL_125;
  }

  return v12;
}

uint64_t MovieUsesFragments(uint64_t a1, _BYTE *a2, char *a3)
{
  *a2 = 0;
  result = FigAtomStreamInitWithByteStream();
  if (result || (result = FigAtomStreamGetCurrentAtomTypeAndDataLength(), result) || (result = FigAtomStreamAdvanceToNextAtomWithType(), result) || (result = FigAtomStreamInitWithParent(), result))
  {
LABEL_7:
    v6 = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (FigAtomStreamAdvanceToNextAtomWithType())
  {
    result = 0;
    goto LABEL_7;
  }

  result = FigAtomStreamAdvanceToNextAtomWithType();
  v6 = 1;
  if (result)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    *a2 = 1;
    if (!a3)
    {
      return result;
    }
  }

LABEL_11:
  *a3 = v6;
  return result;
}

BOOL shouldSyncByteStreamWhenComplete()
{
  relativeURL = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v1 && !v1(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &relativeURL))
  {
    if (relativeURL)
    {
      v2 = CFURLCopyAbsoluteURL(relativeURL);
      if (v2)
      {
        v3 = v2;
        IsFileOnExternalStorageDevice = FigFileIsFileOnExternalStorageDevice();
        CFRelease(v3);
        v5 = IsFileOnExternalStorageDevice != 0;
        goto LABEL_8;
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  v5 = 0;
LABEL_8:
  if (relativeURL)
  {
    CFRelease(relativeURL);
  }

  return v5;
}

uint64_t figTTMLDocumentWriterDivBuilder_StartElement(uint64_t a1, int a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], a2, *(DerivedStorage + 24), &cf);
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v5 = *(DerivedStorage + 24);
    if (v5)
    {
      FigTTMLDocumentWriterElementAddChildElement(v5, cf);
    }

    else
    {
      if (cf)
      {
        v6 = CFRetain(cf);
      }

      else
      {
        v6 = 0;
      }

      *(DerivedStorage + 16) = v6;
    }

    if (a2 != 3)
    {
      v8 = 0;
LABEL_12:
      v9 = 0;
      *(DerivedStorage + 24) = cf;
      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v7 = FigTTMLDocumentWriterRegionTimelineCreate(&value);
    v8 = value;
    if (!v7)
    {
      CFDictionaryAddValue(*(DerivedStorage + 8), cf, value);
      v8 = value;
      goto LABEL_12;
    }

    v9 = v7;
    if (value)
    {
LABEL_13:
      CFRelease(v8);
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t figTTMLDocumentWriterDivBuilder_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 24);
  if (v3 != *(DerivedStorage + 16))
  {
    goto LABEL_5;
  }

  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v4 = CMBaseObjectGetDerivedStorage();
  v8 = a1;
  v9 = 0;
  CFDictionaryApplyFunction(*(v4 + 8), synthesizeDivAttributes, &v8);
  result = v9;
  if (!v9)
  {
    FigTTMLDocumentWriterGetCMBaseObject(a1);
    v6 = CMBaseObjectGetDerivedStorage();
    FigTTMLDocumentWriterElementWalkTree(*(v6 + 16), removeUnnecessaryChildDivElements, 0, 0, 0);
    result = FigTTMLDocumentWriterElementWriteTree(*(DerivedStorage + 16), *DerivedStorage);
    if (!result)
    {
      v3 = *(DerivedStorage + 24);
LABEL_5:
      ParentElement = FigTTMLDocumentWriterElementGetParentElement(v3);
      result = 0;
      *(DerivedStorage + 24) = ParentElement;
    }
  }

  return result;
}

uint64_t figTTMLDocumentWriterDivBuilder_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v5 = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = 0;
  cf = 0;
  ParentElement = *(v5 + 24);
  if (FigTTMLDocumentWriterElementGetElementType(ParentElement) != 4)
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_120();
LABEL_37:
    v22 = FigSignalErrorAtGM();
LABEL_38:
    v17 = v22;
    goto LABEL_40;
  }

  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&v28.start.value = *MEMORY[0x1E6960C98];
  *&v28.start.epoch = v7;
  *&v28.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  Attribute = FigTTMLDocumentWriterElementGetAttribute(ParentElement, @"begin");
  v9 = FigTTMLDocumentWriterElementGetAttribute(ParentElement, @"end");
  if (Attribute)
  {
    v10 = v9;
    v11 = CFGetTypeID(Attribute);
    if (v11 == CFDictionaryGetTypeID() && v10 != 0)
    {
      v13 = CFGetTypeID(v10);
      if (v13 == CFDictionaryGetTypeID())
      {
        memset(&v27, 0, 24);
        CMTimeMakeFromDictionary(&v27.start, Attribute);
        memset(&v34, 0, sizeof(v34));
        CMTimeMakeFromDictionary(&v34, v10);
        if ((v27.start.flags & 0x1D) == 1 && (v34.flags & 0x1D) == 1)
        {
          start = v27.start;
          end = v34;
          CMTimeRangeFromTimeToTime(&v28, &start, &end);
        }
      }
    }
  }

  if ((v28.start.flags & 1) == 0 || (v28.duration.flags & 1) == 0 || v28.duration.epoch || v28.duration.value < 0)
  {
LABEL_36:
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_120();
    goto LABEL_37;
  }

  for (; ParentElement; ParentElement = FigTTMLDocumentWriterElementGetParentElement(ParentElement))
  {
    if (FigTTMLDocumentWriterElementGetElementType(ParentElement) == 3)
    {
      break;
    }
  }

  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
LABEL_39:
    v17 = 4294954514;
    goto LABEL_40;
  }

  v16 = *MEMORY[0x1E695E480];
  v17 = v15(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v30);
  if (!v17 && v30)
  {
    v18 = *MEMORY[0x1E6961318];
    v19 = *MEMORY[0x1E6961300];
    while (ParentElement && FigTTMLDocumentWriterElementGetElementType(ParentElement) == 3)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v20 = FigCaptionRegionGetCMBaseObject();
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v21)
      {
        goto LABEL_39;
      }

      v22 = v21(v20, v18, v16, &cf);
      if (v22)
      {
        goto LABEL_38;
      }

      if (FigCFEqual())
      {
        v17 = 0;
        goto LABEL_40;
      }

      Value = CFDictionaryGetValue(*(v5 + 8), ParentElement);
      v27 = v28;
      v22 = FigTTMLDocumentWriterRegionTimelineAddRegionSlice(Value, &v27.start.value, v30);
      if (v22)
      {
        goto LABEL_38;
      }

      v24 = FigCaptionRegionGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v25)
      {
        goto LABEL_39;
      }

      v22 = v25(v24, v19, v16, &v31);
      if (v22)
      {
        goto LABEL_38;
      }

      if (v30)
      {
        CFRelease(v30);
      }

      v30 = v31;
      ParentElement = FigTTMLDocumentWriterElementGetParentElement(ParentElement);
      v17 = 0;
      if (!v30)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_36;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (!v17)
  {
    FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 24), a2);
  }

  return v17;
}

uint64_t FigTTMLDocumentWriterCreateDivBuilder_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateDivBuilder_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLLayoutCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  value = 0;
  cf = 0;
  if (!a4)
  {
    OUTLINED_FUNCTION_1_19();
LABEL_17:
    v8 = FigSignalErrorAtGM();
    goto LABEL_18;
  }

  FigTTMLNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v8)
  {
    goto LABEL_18;
  }

  v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v8)
  {
    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    goto LABEL_17;
  }

  v11 = cf;
  *a3 = cf;
  *(a3 + 8) = v11;
  FigTTMLParseNode(a2, figTTMLLayoutConsumeChildNode, a3);
  if (v8)
  {
LABEL_18:
    v14 = v8;
    goto LABEL_13;
  }

  if (CFArrayGetCount(*(DerivedStorage + 136)))
  {
    v12 = 0;
    goto LABEL_11;
  }

  v13 = FigTTMLRegionCreateDefault(a1, a3, &value);
  v12 = value;
  if (!v13)
  {
    CFArrayAppendValue(*(DerivedStorage + 136), value);
    v12 = value;
LABEL_11:
    v14 = 0;
    *a4 = cf;
    cf = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = v13;
  if (value)
  {
LABEL_12:
    CFRelease(v12);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t figTTMLLayoutConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v13, &cf);
    if (v8)
    {
      goto LABEL_19;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLRegionCreate(v9, a1, a2, &value);
      if (!v8)
      {
        CFArrayAppendValue(*(DerivedStorage + 136), value);
        goto LABEL_9;
      }

LABEL_19:
      v10 = v8;
      goto LABEL_11;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_9:
  v10 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v10;
}

uint64_t FigTTMLLayoutCreateDefault(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  value = 0;
  cf = 0;
  if (!a3)
  {
    OUTLINED_FUNCTION_1_19();
    goto LABEL_13;
  }

  FigTTMLNodeGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    goto LABEL_14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a2);
  if (v6)
  {
    goto LABEL_14;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
LABEL_13:
    v6 = FigSignalErrorAtGM();
LABEL_14:
    v10 = v6;
    goto LABEL_9;
  }

  v9 = cf;
  *a2 = cf;
  *(a2 + 8) = v9;
  v10 = FigTTMLRegionCreateDefault(a1, a2, &value);
  v11 = value;
  if (!v10)
  {
    CFArrayAppendValue(*(DerivedStorage + 136), value);
    v11 = value;
    *a3 = cf;
    cf = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t figTTMLLayout_CopyChildNodeArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLLayout_GetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaRequestSchedulerStart(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 144))
  {
    NextResource = 0;
  }

  else
  {
    *(a1 + 144) = 1;
    NextResource = mrs_readNextResource(a1);
  }

  FigSimpleMutexUnlock();
  return NextResource;
}

uint64_t mrs_readNextResource(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    *(a1 + 72) = FigCopyCommonMemoryPool();
  }

  Count = *(a1 + 128);
  v3 = *(a1 + 136);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (v3 < Count)
  {
    v4 = *(a1 + 128);
    v5 = *(a1 + 136);
    *(a1 + 136) = v5 + 1;
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
    v7 = ValueAtIndex;
    v8 = *(a1 + 160);
    *(a1 + 160) = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v10 = (a1 + 152);
    v9 = *(a1 + 152);
    if (v9)
    {
      CFRelease(v9);
      *v10 = 0;
    }

    v11 = CFGetTypeID(v7);
    if (v11 == FigSessionDataSpecifierGetTypeID())
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      if (*(a1 + 120))
      {
        v13 = 0;
      }

      else
      {
        v13 = 3;
      }

      v14 = FigMediaRequestCreateForSessionData(AllocatorForMedia, v7, *(a1 + 80), v13, *(a1 + 24), *(a1 + 32), *(a1 + 40), 0, *(a1 + 48), *(a1 + 56), 0, *(a1 + 64), *(a1 + 72), a1, *(a1 + 112), mrs_readNextResource_outputCallbacks, *(a1 + 104), (a1 + 152));
      if (v14)
      {
        return v14;
      }
    }

    else
    {
      v14 = FigSignalErrorAtGM();
    }

    v20 = *v10;
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v21)
    {
      v21(v20);
    }

    return v14;
  }

  if (!*(*(a1 + 96) + 16))
  {
    return 0;
  }

  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  MallocZoneForMedia = FigGetMallocZoneForMedia();
  v17 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x18uLL, 0xE004018F04884uLL);
  if (!v17)
  {
    v14 = FigSignalErrorAtGM();
    if (!v15)
    {
      return v14;
    }

    goto LABEL_28;
  }

  v18 = v17;
  v17[2] = *(a1 + 96);
  *v17 = CFRetain(a1);
  if (v15)
  {
    v19 = CFRetain(v15);
  }

  else
  {
    v19 = 0;
  }

  v18[1] = v19;
  dispatch_async_f(*(a1 + 104), v18, mrs_issueDidFinishReadQueueCallbackOnCallbackQueue);
  v14 = 0;
  if (v15)
  {
LABEL_28:
    CFRelease(v15);
  }

  return v14;
}

uint64_t FigMediaRequestSchedulerAddResourceToReadQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaRequestSchedulerCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaRequestSchedulerCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mrs_resourceLoadDidProduceDataOutput_cold_1()
{
  FigSignalErrorAtGM();

  return FigSimpleMutexUnlock();
}

void mrs_resourceLoadDidFail_cold_1(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  FigSimpleMutexUnlock();
  (*(*(a2 + 96) + 8))(a2, *(a2 + 160), a3, a4);
  FigSimpleMutexLock();
  mrs_readNextResource(a2);
  FigSimpleMutexUnlock();

  CFRelease(a3);
}

uint64_t mrs_resourceLoadDidFail_cold_2()
{
  FigSignalErrorAtGM();

  return FigSimpleMutexUnlock();
}

uint64_t FigMediaPlaylistRemoveContentKeySpecifierRemote(_BYTE *XPCClientObject)
{
  if (!XPCClientObject || (XPCClientObject = FigMediaPlaylistGetXPCClientObject(XPCClientObject)) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v1 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v1 = FigXPCCreateBasicMessage();
  if (v1)
  {
LABEL_9:
    v4 = v1;
    XPCClientObject = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_82();
  v2 = OUTLINED_FUNCTION_2_105();
  CryptKeyParsedIndex = FigContentKeySpecifierGetCryptKeyParsedIndex(v2);
  OUTLINED_FUNCTION_4_86(CryptKeyParsedIndex);
  v4 = FigXPCRemoteClientSendSyncMessage();
  XPCClientObject = 0;
LABEL_6:
  free(XPCClientObject);
  FigXPCRelease();
  return v4;
}

uint64_t FigMediaPlaylistRemoveMediaSegmentSpecifierRemote(_BYTE *XPCClientObject)
{
  if (!XPCClientObject || (XPCClientObject = FigMediaPlaylistGetXPCClientObject(XPCClientObject)) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v1 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v1 = FigXPCCreateBasicMessage();
  if (v1)
  {
LABEL_9:
    v4 = v1;
    XPCClientObject = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_82();
  v2 = OUTLINED_FUNCTION_2_105();
  MediaParsedIndex = FigMediaSegmentSpecifierGetMediaParsedIndex(v2);
  OUTLINED_FUNCTION_4_86(MediaParsedIndex);
  v4 = FigXPCRemoteClientSendSyncMessage();
  XPCClientObject = 0;
LABEL_6:
  free(XPCClientObject);
  FigXPCRelease();
  return v4;
}

uint64_t FigMediaPlaylistRemovePartSegmentSpecifierRemote(_BYTE *XPCClientObject, uint64_t a2, uint64_t a3)
{
  if (!XPCClientObject || (XPCClientObject = FigMediaPlaylistGetXPCClientObject(XPCClientObject)) == 0)
  {
    v10 = 0;
    goto LABEL_6;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
LABEL_9:
    v10 = v5;
    XPCClientObject = 0;
    goto LABEL_6;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v7 = FigCFStringGetCStringPtrAndBufferToFree();
  MediaParsedIndex = FigMediaSegmentSpecifierGetMediaParsedIndex(a2);
  xpc_dictionary_set_uint64(0, CStringPtrAndBufferToFree, MediaParsedIndex);
  v9 = FigMediaSegmentSpecifierGetMediaParsedIndex(a3);
  xpc_dictionary_set_uint64(0, v7, v9);
  v10 = FigXPCRemoteClientSendSyncMessage();
  XPCClientObject = 0;
LABEL_6:
  free(XPCClientObject);
  free(0);
  FigXPCRelease();
  return v10;
}

uint64_t FigMediaPlaylistRemoveMapSegmentSpecifierRemote(_BYTE *XPCClientObject)
{
  if (!XPCClientObject || (XPCClientObject = FigMediaPlaylistGetXPCClientObject(XPCClientObject)) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v1 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v1 = FigXPCCreateBasicMessage();
  if (v1)
  {
LABEL_9:
    v4 = v1;
    XPCClientObject = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_82();
  v2 = OUTLINED_FUNCTION_2_105();
  MediaParsedIndex = FigMediaSegmentSpecifierGetMediaParsedIndex(v2);
  OUTLINED_FUNCTION_4_86(MediaParsedIndex);
  v4 = FigXPCRemoteClientSendSyncMessage();
  XPCClientObject = 0;
LABEL_6:
  free(XPCClientObject);
  FigXPCRelease();
  return v4;
}

uint64_t FigStreamPlaylistParseRemote(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5, int a6, int a7, int a8, CFMutableArrayRef *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, CFTypeRef *a14)
{
  v64 = 0;
  xdict = 0;
  cf = 0;
  theArray = 0;
  v60 = 0;
  v61 = 0;
  if (!a14)
  {
    XPCClientObject = 0;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  XPCClientObject = *a14;
  if (!*a14)
  {
    goto LABEL_7;
  }

  v60 = CFRetain(XPCClientObject);
  XPCClientObject = FigMediaPlaylistGetXPCClientObject(v60);
  if (!XPCClientObject)
  {
    goto LABEL_7;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_78;
  }

  v19 = 0;
LABEL_8:
  v67 = 0;
  v68 = &v67;
  v69 = 0x2000000000;
  v70 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __streamPlaylistParserRemote_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E748D118;
  block[4] = &v67;
  v58 = XPCClientObject;
  if (qword_1ED4CAE18 != -1)
  {
    dispatch_once(&qword_1ED4CAE18, block);
  }

  OSStatus = *(v68 + 6);
  _Block_object_dispose(&v67, 8);
  if (!OSStatus)
  {
    v21 = FigXPCCreateBasicMessage();
    if (v21)
    {
      goto LABEL_79;
    }

    v21 = FigXPCMessageSetBlockBuffer();
    if (v21)
    {
      goto LABEL_79;
    }

    v21 = FigXPCMessageSetCFURL();
    if (v21)
    {
      goto LABEL_79;
    }

    v21 = FigXPCMessageSetCFURL();
    if (v21)
    {
      goto LABEL_79;
    }

    xpc_dictionary_set_BOOL(xdict, "ContinueParsingAfterError", a5 != 0);
    xpc_dictionary_set_BOOL(xdict, "AddWarningsToErrorLog", a6 != 0);
    xpc_dictionary_set_BOOL(xdict, "AllowAverageBandwidth", a7 != 0);
    xpc_dictionary_set_BOOL(xdict, "OKToLogURLs", a8 != 0);
    v21 = FigXPCMessageSetCFArray();
    if (v21)
    {
      goto LABEL_79;
    }

    v21 = FigXPCMessageSetCFDictionary();
    if (v21)
    {
      goto LABEL_79;
    }

    v21 = FigXPCMessageSetCFDictionary();
    if (v21)
    {
      goto LABEL_79;
    }

    v22 = v60 ? v19 : 0;
    if (v22 == 1)
    {
      DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(v60);
      if (DateRangeSpecifiers)
      {
        if (CFArrayGetCount(DateRangeSpecifiers) >= 1)
        {
          v21 = FigStreamPlaylistParserSerializeDateRangeSpecifiers(v60, &cf);
          if (v21)
          {
            goto LABEL_79;
          }

          v21 = FigXPCMessageSetCFArray();
          if (v21)
          {
            goto LABEL_79;
          }
        }
      }
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v21 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (v21)
    {
      goto LABEL_79;
    }

    v21 = FigXPCMessageCopyCFArray();
    if (v21)
    {
      goto LABEL_79;
    }

    OSStatus = FigXPCMessageGetOSStatus();
    if (OSStatus)
    {
      goto LABEL_51;
    }

    if (xpc_dictionary_get_BOOL(v64, "IsMultivariantPlaylist"))
    {
      v21 = FigStreamPlaylistParserDeserializeMultivariantPlaylist(v64, &v61);
      if (v21)
      {
        goto LABEL_79;
      }

LABEL_51:
      if (a13 && !*a13)
      {
        *a13 = v61;
        v61 = 0;
      }

      if (a14 && !*a14)
      {
        *a14 = v60;
        v60 = 0;
        if (a9)
        {
LABEL_57:
          v48 = theArray;
          if (theArray)
          {
            if (*a9 || (v49 = FigGetAllocatorForMedia(), *a9 = CFArrayCreateMutable(v49, 0, MEMORY[0x1E695E9C0]), (v48 = theArray) != 0))
            {
              Count = CFArrayGetCount(v48);
              if (Count >= 1)
              {
                v51 = Count;
                v52 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(theArray, v52);
                  AllocatorForMedia = FigGetAllocatorForMedia();
                  MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, ValueAtIndex);
                  if (!MutableCopy)
                  {
                    goto LABEL_77;
                  }

                  v56 = MutableCopy;
                  CFArrayAppendValue(*a9, MutableCopy);
                  CFRelease(v56);
                }

                while (v51 != ++v52);
              }
            }
          }
        }
      }

      else if (a9)
      {
        goto LABEL_57;
      }

      if (a4)
      {
        *a4 = FigXPCMessageGetInt32();
      }

      goto LABEL_66;
    }

    if (!v60)
    {
      v25 = FigGetAllocatorForMedia();
      v21 = FigMediaPlaylistCreateEmpty(v25, &v60);
      if (v21)
      {
        goto LABEL_79;
      }
    }

    if (a13 && *a13)
    {
      v26 = v60;
      FigMultivariantPlaylistHasIndependentSegments(*a13);
      v27 = OUTLINED_FUNCTION_201_0();
      FigMediaPlaylistSetHasIndependentSegments(v27, v28);
      v29 = OUTLINED_FUNCTION_6_69();
      StartTimeValue = FigMultivariantPlaylistGetStartTimeValue(v29);
      FigMediaPlaylistSetStartTimeValue(v26, StartTimeValue);
      v31 = OUTLINED_FUNCTION_6_69();
      FigMultivariantPlaylistIsStartTimePrecise(v31);
      v32 = OUTLINED_FUNCTION_201_0();
      FigMediaPlaylistSetIsStartTimePrecise(v32, v33);
      v34 = OUTLINED_FUNCTION_6_69();
      FigMultivariantPlaylistHasStartTime(v34);
      v35 = OUTLINED_FUNCTION_201_0();
      FigMediaPlaylistSetHasStartTime(v35, v36);
      v37 = OUTLINED_FUNCTION_6_69();
      FigMultivariantPlaylistGetVersion(v37);
      v38 = OUTLINED_FUNCTION_201_0();
      FigMediaPlaylistSetVersion(v38, v39);
    }

    v21 = FigStreamPlaylistParserDeserializeMediaPlaylist(v64, &v60);
    if (v21)
    {
      goto LABEL_79;
    }

    if (v19)
    {
      uint64 = xpc_dictionary_get_uint64(v64, *MEMORY[0x1E69615A0]);
      if (!uint64)
      {
LABEL_77:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
LABEL_78:
        v21 = FigSignalErrorAtGM();
LABEL_79:
        OSStatus = v21;
        goto LABEL_66;
      }

      v41 = uint64;
      FigGetAllocatorForMedia();
      if (qword_1ED4CAE20 != -1)
      {
        dispatch_once(&qword_1ED4CAE20, &__block_literal_global_49);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v43 = Instance;
        started = FigXPCRemoteClientAssociateObject();
        if (started || (v43[2] = v41, started = FigStartMonitoringMediaServicesProcessDeath(), started))
        {
          OSStatus = started;
          CFRelease(v43);
          goto LABEL_66;
        }

        FigMediaPlaylistSetXPCClientObject(v60, v43);
        v45 = v43;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        v21 = FigSignalErrorAtGM();
        if (v21)
        {
          goto LABEL_79;
        }

        FigMediaPlaylistSetXPCClientObject(v60, v58);
        v45 = v58;
        if (!v58)
        {
          goto LABEL_47;
        }
      }

      CFRelease(v45);
    }

LABEL_47:
    if (!FigStreamPlaylistParserHTTPServerMayMutatePlaylist(v60) || FigMediaPlaylistHasEndTag(v60))
    {
      FigMediaPlaylistSetXPCClientObject(v60, 0);
    }

    v46 = v60;
    int64 = xpc_dictionary_get_int64(v64, "ParserMessageReceiveTime");
    FigMediaPlaylistSetMessagingDelayTime(v46, int64 - UpTimeNanoseconds);
    goto LABEL_51;
  }

LABEL_66:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return OSStatus;
}

uint64_t streamPlaylistParserRemote_finalize(uint64_t a1)
{
  FigStopMonitoringMediaServicesProcessDeath();
  FigXPCRemoteClientDisassociateObject();
  if (!*(a1 + 24) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  return FigXPCRelease();
}

uint64_t fxs_replyingMessageHandler()
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

uint64_t fxs_serializeXMLNode(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (!v6)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v8 = FigSignalErrorAtGM();
LABEL_20:
      v15 = v8;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v6 = a2;
  }

  FigXMLNodeGetTag(a1);
  OUTLINED_FUNCTION_1_108();
  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    goto LABEL_20;
  }

  FigXMLNodeGetContentAsCFString(a1);
  OUTLINED_FUNCTION_1_108();
  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    goto LABEL_20;
  }

  FigXMLNodeGetAllAttributes(a1);
  OUTLINED_FUNCTION_1_108();
  v8 = FigXPCMessageSetCFDictionary();
  if (v8)
  {
    goto LABEL_20;
  }

  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    if (FigXMLNodeGetCountOfChildren(a1) < 1)
    {
LABEL_14:
      xpc_dictionary_set_value(v6, "children", v9);
      if (a3)
      {
        xpc_dictionary_set_value(a2, "root", v7);
      }

      v15 = 0;
      goto LABEL_17;
    }

    v10 = 0;
    while (1)
    {
      ChildAtIndex = FigXMLNodeGetChildAtIndex(a1, v10);
      v12 = xpc_dictionary_create(0, 0, 0);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = fxs_serializeXMLNode(ChildAtIndex, v12, 0);
      if (v14)
      {
        goto LABEL_19;
      }

      xpc_array_append_value(v9, v13);
      xpc_release(v13);
      if (++v10 >= FigXMLNodeGetCountOfChildren(a1))
      {
        goto LABEL_14;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  v14 = FigSignalErrorAtGM();
LABEL_19:
  v15 = v14;
LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  return v15;
}

uint64_t FigAudioProcessingUnitPackedCurveCreate(int a1, const __CFArray *cf)
{
  if (cf && (v3 = CFGetTypeID(cf), v3 == CFArrayGetTypeID()) && CFArrayGetCount(cf) >= 1)
  {
    cfa[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
    if (ValueAtIndex)
    {
      v5 = CFGetTypeID(ValueAtIndex);
      if (v5 == CFDictionaryGetTypeID())
      {
        FigCFDictionaryGetValueIfPresent();
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_121();
    return FigSignalErrorAtGM();
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t fapu_sortParamIDArray()
{
  v28[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = (v28 - v1);
  v3 = 0;
  *v2 = 0;
  v2[1] = v4 - 1;
  while (1)
  {
    v5 = &v2[2 * v3];
    v7 = *v5;
    v6 = v5[1];
    v8 = *v5 - 1;
    v9 = v6 - *v5;
    if (v6 > *v5)
    {
      break;
    }

LABEL_12:
    v20 = v0 + 12 + 12 * v8;
    v21 = *(v20 + 8);
    v22 = *v20;
    v23 = v0 + 12 * v6;
    v24 = *(v23 + 8);
    *v20 = *v23;
    *(v20 + 8) = v24;
    *v23 = v22;
    *(v23 + 8) = v21;
    if (v8 <= v7)
    {
      --v3;
    }

    else
    {
      v5[1] = v8;
    }

    v25 = v8 + 2;
    if (v25 < v6)
    {
      ++v3;
      v26 = &v2[2 * v3];
      *v26 = v25;
      v26[1] = v6;
    }

    if (v3 < 0)
    {
      return 0;
    }
  }

  v10 = v0 + 12 * v6;
  v11 = v0 + 12 * v7;
  while (1)
  {
    v12 = *(v11 + 8);
    v13 = *(v10 + 8);
    v14 = HIDWORD(*v11);
    v15 = *v11 - *v10;
    if (v12 != v13)
    {
      v15 = v12 - v13;
    }

    if (v14 != HIDWORD(*v10))
    {
      v15 = v14 - HIDWORD(*v10);
    }

    if (!v15)
    {
      return 4294947515;
    }

    if (v15 < 0)
    {
      ++v8;
      v16 = v0 + 12 * v8;
      v17 = *(v16 + 8);
      v18 = *v16;
      v19 = *(v11 + 8);
      *v16 = *v11;
      *(v16 + 8) = v19;
      *v11 = v18;
      *(v11 + 8) = v17;
    }

    v11 += 12;
    if (!--v9)
    {
      goto LABEL_12;
    }
  }
}

uint64_t fapupc_sortParamIndicesAndValuesArray()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = &v21[-2 * v2];
  v4 = 0;
  *v3 = 0;
  v3[1] = v5 - 1;
  while (1)
  {
    v6 = &v3[2 * v4];
    v8 = *v6;
    v7 = v6[1];
    v9 = *v6 - 1;
    v10 = v7 - *v6;
    if (v7 > *v6)
    {
      break;
    }

LABEL_8:
    v16 = *(v0 + 8 * (v9 + 1));
    v17 = *(v1 + 4 * (v9 + 1));
    *(v0 + 8 * (v9 + 1)) = *(v0 + 8 * v7);
    *(v0 + 8 * v7) = v16;
    *(v1 + 4 * (v9 + 1)) = *(v1 + 4 * v7);
    *(v1 + 4 * v7) = v17;
    if (v9 <= v8)
    {
      --v4;
    }

    else
    {
      v6[1] = v9;
    }

    v18 = v9 + 2;
    if (v18 < v7)
    {
      ++v4;
      v19 = &v3[2 * v4];
      *v19 = v18;
      v19[1] = v7;
    }

    if (v4 < 0)
    {
      return 0;
    }
  }

  v11 = (v1 + 4 * v8);
  v12 = (v0 + 8 * v8);
  while (1)
  {
    v13 = *(v0 + 8 * v7);
    if (*v12 == v13)
    {
      return 4294947515;
    }

    if (*v12 < v13)
    {
      ++v9;
      v14 = *(v0 + 8 * v9);
      v15 = *(v1 + 4 * v9);
      *(v0 + 8 * v9) = *v12;
      *v12 = v14;
      *(v1 + 4 * v9) = *v11;
      *v11 = v15;
    }

    ++v11;
    ++v12;
    if (!--v10)
    {
      goto LABEL_8;
    }
  }
}

uint64_t FigAudioProcessingUnitPackedCurveIteratorSeekTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 12);
  if ((v8 & 0x1D) == 1)
  {
    v10 = a1;
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = v11 + 40;
      if (v11 + 40 >= (*(*(a1 + 16) + 48) + 40 * *(*(a1 + 16) + 16)))
      {
        v357 = *v11;
        v105 = *(v11 + 12);
        v361 = *(v11 + 8);
        v106 = *(v11 + 16);
        OUTLINED_FUNCTION_8_37();
        v107 = *(a2 + 16);
        if (v108 == 3 || (v105 & 0x1F) == 3)
        {
          OUTLINED_FUNCTION_5_74();
          LODWORD(v258) = *(a2 + 8);
          HIDWORD(v258) = v8;
          v118 = OUTLINED_FUNCTION_3_83(v110, v111, v112, v113, v114, v115, v116, v117, v199, v212, v226, *a2, v258, v107, v357, __SPAIR64__(v105, v361), v106, v315, v328);
          v126 = OUTLINED_FUNCTION_6_70(v118, v119, v120, v121, v122, v123, v124, v125, v206, v219, v231, v243, v259, v272, v285, v297, v309, v322, v335, v341, v346, v351);
          v134 = OUTLINED_FUNCTION_2_106(v126, v127, v128, v129, v130, v131, v132, v133, v207, v220, v232, v244, v260, v273, v286, v298, v310, v323, v336);
          if (OUTLINED_FUNCTION_1_109(v134, v135, v136, v137, v138, v139, v140, v141, v208, v221, v245, v261, v274, v287, v311, v324, v337, v344, v349, v351, v352) <= 0)
          {
            return 0;
          }
        }

        DWORD2(v351) = v361;
        HIDWORD(v351) = v105;
        v352 = v106;
        OUTLINED_FUNCTION_4_87();
        a1 = OUTLINED_FUNCTION_7_52(v142, v143, v144, v145, v146, v147, v148, v149, v199, v212, v226, v236, v249, v265, v278, v291, v302, v315, v328, __SPAIR64__(v8, v150), v107, v357);
        if (a1 < 1)
        {
          return 0;
        }
      }

      else
      {
        v355 = *v11;
        v13 = *(v11 + 12);
        v359 = *(v11 + 8);
        v14 = *(v11 + 16);
        OUTLINED_FUNCTION_8_37();
        v15 = *(a2 + 16);
        v17 = v16 == 3 || (v13 & 0x1F) == 3;
        if (v17 && (OUTLINED_FUNCTION_5_74(), LODWORD(v250) = *(a2 + 8), HIDWORD(v250) = v8, v26 = OUTLINED_FUNCTION_3_83(v18, v19, v20, v21, v22, v23, v24, v25, v199, v212, v226, *a2, v250, v15, v355, __SPAIR64__(v13, v359), v14, v315, v328), v34 = OUTLINED_FUNCTION_6_70(v26, v27, v28, v29, v30, v31, v32, v33, v200, v213, v227, v237, v251, v266, v279, v292, v303, v316, v329, v341, v346, v351), v42 = OUTLINED_FUNCTION_2_106(v34, v35, v36, v37, v38, v39, v40, v41, v201, v214, v228, v238, v252, v267, v280, v293, v304, v317, v330), OUTLINED_FUNCTION_1_109(v42, v43, v44, v45, v46, v47, v48, v49, v202, v215, v239, v253, v268, v281, v305, v318, v331, v342, v347, v351, v352) <= 0) || (DWORD2(v351) = v359, HIDWORD(v351) = v13, v352 = v14, OUTLINED_FUNCTION_4_87(), a1 = OUTLINED_FUNCTION_7_52(v50, v51, v52, v53, v54, v55, v56, v57, v199, v212, v226, v236, v249, v265, v278, v291, v302, v315, v328, __SPAIR64__(v8, v58), v15, v355), a1 <= 0))
        {
          v356 = *a2;
          v59 = *(a2 + 12);
          v360 = *(a2 + 8);
          v60 = *(a2 + 16);
          v61 = *(v11 + 52);
          v62 = *(v11 + 56);
          v63 = (v59 & 0x1F) == 3 || (v61 & 0x1F) == 3;
          if (!v63 || (OUTLINED_FUNCTION_5_74(), LODWORD(v294) = *(a2 + 8), HIDWORD(v294) = v59, LODWORD(v254) = *(v12 + 8), HIDWORD(v254) = v61, v72 = OUTLINED_FUNCTION_3_83(v64, v65, v66, v67, v68, v69, v70, v71, v199, v212, v226, *v12, v254, v62, *a2, v294, v60, v315, v328), v80 = OUTLINED_FUNCTION_6_70(v72, v73, v74, v75, v76, v77, v78, v79, v203, v216, v229, v240, v255, v269, v282, v295, v306, v319, v332, v341, v346, v351), v88 = OUTLINED_FUNCTION_2_106(v80, v81, v82, v83, v84, v85, v86, v87, v204, v217, v230, v241, v256, v270, v283, v296, v307, v320, v333), a1 = OUTLINED_FUNCTION_1_109(v88, v89, v90, v91, v92, v93, v94, v95, v205, v218, v242, v257, v271, v284, v308, v321, v334, v343, v348, v351, v352), a1 > 0))
          {
            DWORD2(v351) = v360;
            HIDWORD(v351) = v59;
            v352 = v60;
            OUTLINED_FUNCTION_4_87();
            a1 = OUTLINED_FUNCTION_7_52(v96, v97, v98, v99, v100, v101, v102, v103, v199, v212, v226, v236, v249, v265, v278, v291, v302, v315, v328, __SPAIR64__(v61, v104), v62, v356);
            if ((a1 & 0x80000000) != 0)
            {
              return 0;
            }
          }
        }
      }
    }

    v152 = *(v10 + 16);
    v233 = *(v152 + 48);
    v153 = *(v152 + 16);
    v353 = *a2;
    v154 = *(a2 + 12);
    v354 = *(a2 + 8);
    v155 = v153 - 1;
    if (v153 < 1 || (*(a2 + 12) & 0x1D) != 1)
    {
      return 4294947513;
    }

    v157 = 0;
    v222 = 0;
    v158 = *(a2 + 16);
    while (1)
    {
      v159 = (v155 - v157) / 2 + v157;
      v160 = v233 + 40 * v159;
      v358 = *v160;
      v161 = *(v160 + 3);
      v362 = *(v160 + 2);
      v162 = *(v160 + 2);
      if ((v161 & 0x1F) == 3 || (v154 & 3) == 3)
      {
        OUTLINED_FUNCTION_5_74();
        LODWORD(v299) = *(v160 + 2);
        HIDWORD(v299) = v161;
        v172 = OUTLINED_FUNCTION_3_83(v164, v165, v166, v167, v168, v169, v170, v171, v199, v222, v233, v353, __SPAIR64__(v154, v354), v158, *v160, v299, v162, v315, v328);
        v180 = OUTLINED_FUNCTION_6_70(v172, v173, v174, v175, v176, v177, v178, v179, v209, v223, v234, v246, v262, v275, v288, v300, v312, v325, v338, v341, v346, v351);
        v188 = OUTLINED_FUNCTION_2_106(v180, v181, v182, v183, v184, v185, v186, v187, v210, v224, v235, v247, v263, v276, v289, v301, v313, v326, v339);
        a1 = OUTLINED_FUNCTION_1_109(v188, v189, v190, v191, v192, v193, v194, v195, v211, v225, v248, v264, v277, v290, v314, v327, v340, v345, v350, v351, v352);
        if (a1 <= 0)
        {
          break;
        }
      }

      DWORD2(v351) = v362;
      HIDWORD(v351) = v161;
      v352 = v162;
      a1 = OUTLINED_FUNCTION_7_52(a1, a2, a3, a4, a5, a6, a7, a8, v199, v222, v233, v236, v249, v265, v278, v291, v302, v315, v353, __SPAIR64__(v154, v354), v158, v358);
      if ((a1 & 0x80000000) != 0)
      {
        v157 = v159 + 1;
        v222 = v160;
      }

      else
      {
        if (!a1)
        {
          break;
        }

        v155 = v159 - 1;
      }

      if (v157 > v155)
      {
        v160 = v222;
        if (!v222)
        {
          return 4294947513;
        }

        break;
      }
    }

    v196 = *(v10 + 24);
    if (!v196)
    {
      goto LABEL_48;
    }

    if (v196 < v160)
    {
      v198 = v196 + 40;
      v197 = *(*(v10 + 16) + 48);
      goto LABEL_50;
    }

    if (v196 != v160)
    {
LABEL_48:
      v197 = *(*(v10 + 16) + 48);
      v198 = v197;
LABEL_50:
      fapu_iteratorApplySchedulesToSnapshot(v10, (v198 - v197) / 40, (v160 - v198) / 40 + 1);
      result = 0;
      *(v10 + 24) = v160;
      return result;
    }

    return 0;
  }

  return 4294947516;
}

uint64_t fapu_iteratorApplySchedulesToSnapshot(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    v3 = a2 + a3;
    v4 = *(result + 16);
    if (a2 + a3 <= v4[2])
    {
      v5 = v4[7];
      v6 = v4[6] + 40 * a2;
      v7 = v4[8];
      do
      {
        v8 = *(v6 + 24);
        if (v8 >= 1)
        {
          v9 = *(v6 + 32);
          v10 = (v5 + 8 * v9);
          v11 = (v7 + 4 * v9);
          v12 = *(result + 32);
          do
          {
            v13 = *v11++;
            v14 = v13;
            v15 = *v10++;
            *(v12 + 4 * v15) = v14;
            --v8;
          }

          while (v8);
        }

        ++a2;
        v6 += 40;
      }

      while (a2 < v3);
    }
  }

  return result;
}

uint64_t FigAudioProcessingUnitPackedCurveIteratorNext(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = (v9 + 40);
  v11 = (v9 + 40 - *(v8 + 48)) / 40;
  if (v11 >= *(v8 + 16))
  {
    return 4294947514;
  }

  v13 = a1;
  v64 = a5;
  v68 = a6;
  v112 = *v10;
  v15 = *(v9 + 52);
  v16 = *(v9 + 56);
  v110 = *a2;
  v17 = *(a2 + 12);
  v111 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = (v15 & 0x1F) == 3 || (*(a2 + 12) & 0x1F) == 3;
  if (!v19 || (OUTLINED_FUNCTION_5_74(), LODWORD(v89) = *(v9 + 48), HIDWORD(v89) = v15, LODWORD(v76) = *(v20 + 8), HIDWORD(v76) = v17, v28 = OUTLINED_FUNCTION_3_83(v21, v20, v22, v23, v24, v25, v26, v27, v60, v64, v68, *v20, v76, v18, *v10, v89, v16, v96, v100), v36 = OUTLINED_FUNCTION_6_70(v28, v29, v30, v31, v32, v33, v34, v35, v61, v65, v69, v72, v77, v81, v85, v90, v93, v97, v101, v104, v106, v108), v44 = OUTLINED_FUNCTION_2_106(v36, v37, v38, v39, v40, v41, v42, v43, v62, v66, v70, v73, v78, v82, v86, v91, v94, v98, v102), a1 = OUTLINED_FUNCTION_1_109(v44, v45, v46, v47, v48, v49, v50, v51, v63, v67, v74, v79, v83, v87, v95, v99, v103, v105, v107, v108, v109), a1 > 0))
  {
    if (OUTLINED_FUNCTION_7_52(a1, a2, a3, a4, a5, a6, a7, a8, v60, v64, v68, v71, v75, v80, v84, v88, v92, v96, v110, __SPAIR64__(v17, v111), v18, v112) > 0)
    {
      return 4294947514;
    }
  }

  fapu_iteratorApplySchedulesToSnapshot(v13, v11, 1);
  if (*(v9 + 64) >= 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = *(v13[2] + 56) + 8 * *(v9 + 72);
    do
    {
      v55 = v13[5] + v52;
      v56 = *(v13[2] + 40) + 12 * *(v54 + 8 * v53);
      v57 = *v56;
      *(v55 + 8) = *(v56 + 8);
      *v55 = v57;
      ++v53;
      v52 += 12;
    }

    while (v53 < *(v9 + 64));
  }

  result = 0;
  v13[3] = v10;
  v59 = *v10;
  *(a3 + 16) = *(v9 + 56);
  *a3 = v59;
  *a4 = v13[5];
  *v64 = *(v13[2] + 64) + 4 * *(v9 + 72);
  v68->value = *(v9 + 64);
  return result;
}

uint64_t FigAudioProcessingUnitPackedCurveIteratorCreate(uint64_t a1, void *a2, __int128 *a3, void *a4)
{
  if (qword_1ED4CAE40 != -1)
  {
    dispatch_once(&qword_1ED4CAE40, &__block_literal_global_16_0);
  }

  Instance = _CFRuntimeCreateInstance();
  Instance[2] = CFRetain(a2);
  Instance[3] = 0;
  v8 = Instance + 4 * a2[3] + 48;
  Instance[4] = Instance + 6;
  Instance[5] = v8;
  v17 = *a3;
  v18 = *(a3 + 2);
  v15 = FigAudioProcessingUnitPackedCurveIteratorSeekTo(Instance, &v17, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    CFRelease(Instance);
  }

  else
  {
    *a4 = Instance;
  }

  return v15;
}

uint64_t FigTTMLExtensionCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLExtensionCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLExtensionCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLExtension_CopyChildNodeArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLExtension_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    return 0;
  }

  if (CFURLHasDirectoryPath(a1))
  {
    v6 = FigSandboxRegisterDirectoryURLWithProcessAndCopyRegistration();
  }

  else
  {
    v6 = FigSandboxRegisterURLWithProcessAndCopyRegistration();
  }

  v7 = v6;
  if (!v6)
  {
    v7 = 0;
    *a5 = 0;
  }

  return v7;
}

uint64_t FigRemakerRemoteCreateWithAsset(uint64_t a1, const void *a2, const __CFURL *a3, uint64_t a4, const __CFDictionary *a5, void *a6)
{
  cf = 0;
  v25 = 0;
  value = 0;
  v22 = 0;
  v20 = 0;
  xdict = 0;
  v18 = 0;
  v19 = 0;
  OUTLINED_FUNCTION_2_107();
  if (gRemakerRemoteClient)
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (a2)
    {
      CMBaseObject = FigAssetGetCMBaseObject(a2);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v11)
      {
        v15 = 0;
        v14 = 4294954514;
        goto LABEL_23;
      }

      ObjectID = v11(CMBaseObject, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &cf);
      if (ObjectID)
      {
        goto LABEL_33;
      }

      if ((!cf || FigCFURLIsLocalResource() | v22) && a3 && remakerFamily_CFURLSchemeIsFile(a3) && a6)
      {
        ObjectID = FigXPCCreateBasicMessage();
        if (!ObjectID)
        {
          ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value);
          if (!ObjectID)
          {
            xpc_dictionary_set_uint64(xdict, "AssetToken", value);
            ObjectID = FigXPCMessageSetCFURL();
            if (!ObjectID)
            {
              ObjectID = FigXPCMessageSetCFDictionary();
              if (!ObjectID)
              {
                ObjectID = FigXPCMessageSetCFDictionary();
                if (!ObjectID)
                {
                  FigSandboxRegisterURLWithProcessAndCopyRegistration();
                  ObjectID = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a3, 0, xdict, 0x196EFB1E5, &v19);
                  if (!ObjectID)
                  {
                    if (!CFDictionaryContainsKey(a5, @"Remaker_TemporaryDirectoryURL") || (v17 = CFDictionaryGetValue(a5, @"Remaker_TemporaryDirectoryURL"), ObjectID = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(v17, 0, xdict, 0x196EFB203, &v18), !ObjectID))
                    {
                      ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
                      if (!ObjectID)
                      {
                        uint64 = xpc_dictionary_get_uint64(v20, *MEMORY[0x1E69615A0]);
                        if (uint64)
                        {
                          v14 = frr_CreateEmptyWrapper(1, uint64, &v25);
                          v15 = v25;
                          if (v14)
                          {
                            goto LABEL_23;
                          }

                          remoteRemakerFamily_storeSandboxRegistration(v25, 0);
                          remoteRemakerFamily_storeSandboxRegistration(v15, v19);
                          remoteRemakerFamily_storeSandboxRegistration(v15, v18);
                          *a6 = v15;
                          goto LABEL_21;
                        }

                        OUTLINED_FUNCTION_303();
                        ObjectID = FigSignalErrorAtGM();
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_33:
        v14 = ObjectID;
LABEL_21:
        v15 = 0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_303();
    }

    else
    {
      OUTLINED_FUNCTION_303();
    }

    FigSignalErrorAtGM();
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v15 = 0;
    v14 = 4294955196;
  }

LABEL_23:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v14;
}

uint64_t FigAssetReaderRemoteCreateWithAsset(const __CFAllocator *a1, const void *a2, uint64_t a3, void *a4)
{
  cf = 0;
  v18 = 0;
  value = 0;
  OUTLINED_FUNCTION_2_107();
  if (!gRemakerRemoteClient)
  {
    v14 = 0;
    Mutable = 0;
    v13 = 4294955196;
    goto LABEL_18;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (!a2)
  {
    OUTLINED_FUNCTION_303();
LABEL_29:
    ObjectID = FigSignalErrorAtGM();
LABEL_30:
    v13 = ObjectID;
    v14 = 0;
LABEL_31:
    Mutable = 0;
    goto LABEL_18;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_30;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v14 = 0;
    Mutable = 0;
    v13 = 4294954514;
    goto LABEL_18;
  }

  ObjectID = v9(CMBaseObject, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &cf);
  if (ObjectID)
  {
    goto LABEL_30;
  }

  if (cf && !FigCFURLIsLocalResource())
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    v14 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_303();
    goto LABEL_29;
  }

  ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value);
  if (ObjectID)
  {
    goto LABEL_30;
  }

  xpc_dictionary_set_uint64(0, "AssetToken", value);
  ObjectID = FigXPCMessageSetCFDictionary();
  if (ObjectID)
  {
    goto LABEL_30;
  }

  FigSandboxRegisterURLWithProcessAndCopyRegistration();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_30;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    OUTLINED_FUNCTION_303();
    goto LABEL_29;
  }

  v11 = uint64;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v13 = frr_CreateEmptyWrapper(2, v11, &v18);
    v14 = v18;
    if (v13)
    {
      goto LABEL_18;
    }

    *(CMBaseObjectGetDerivedStorage() + 88) = Mutable;
    remoteRemakerFamily_storeSandboxRegistration(v14, 0);
    Mutable = 0;
    *a4 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_303();
    v13 = FigSignalErrorAtGM();
  }

  v14 = 0;
LABEL_18:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

uint64_t frr_HandleServerMessage()
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

uint64_t remoteRemakerFamily_CreateXPCMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  ObjectID = remoteRemakerFamily_GetObjectID(a1, &v7);
  if (ObjectID)
  {
    v5 = ObjectID;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage();
    if (!v5)
    {
      *a3 = 0;
    }
  }

  FigXPCRelease();
  return v5;
}

uint64_t remoteRemakerFamily_copySerializableVideoCompositionProcessorProperties()
{
  OUTLINED_FUNCTION_257_0();
  v3 = CFGetAllocator(v2);
  if (!v0)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v0, @"VideoCompositionProcessor_OutputBufferDescription");
  if (!Value)
  {
    v9 = CFRetain(v0);
    if (v1)
    {
LABEL_10:
      *v1 = v9;
      return 0;
    }

LABEL_12:
    if (v9)
    {
      CFRelease(v9);
    }

    return 0;
  }

  v6 = Value;
  Count = CFDictionaryGetCount(v0);
  MutableCopy = CFDictionaryCreateMutableCopy(v4, Count, v0);
  if (MutableCopy)
  {
    v9 = MutableCopy;
    v10 = CFArrayGetCount(v6);
    Mutable = CFArrayCreateMutable(v4, v10, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      v18 = FigSignalErrorAtGM();
      v19 = v9;
LABEL_16:
      CFRelease(v19);
      return v18;
    }

    v12 = Mutable;
    if (v10 >= 1)
    {
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v13);
        v15 = CMTagCollectionCopyAsData(ValueAtIndex, v4);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        CFArrayAppendValue(v12, v15);
        CFRelease(v16);
        if (v10 == ++v13)
        {
          goto LABEL_9;
        }
      }

      v18 = FigSignalErrorAtGM();
      CFRelease(v9);
      v19 = v12;
      goto LABEL_16;
    }

LABEL_9:
    CFDictionarySetValue(v9, @"VideoCompositionProcessor_OutputBufferDescription", v12);
    CFRelease(v12);
    if (v1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  return FigSignalErrorAtGM();
}

uint64_t remoteReader_EnableVideoCompositionExtraction3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, int a9, const __CFArray *a10, const __CFArray *a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, int a17, int a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const __CFDictionary *a26, _DWORD *a27)
{
  v46 = 0;
  v47 = 0;
  v35 = remoteRemakerFamily_CreateXPCMessage(a1, 1920361317, &v46);
  if (v35)
  {
    v40 = v35;
  }

  else
  {
    v42 = a2;
    v43 = a3;
    v36 = a8;
    if (a26)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a26))
      {
        CFDictionaryGetValue(a26, @"AssetReader_CopyDataBuffers");
        FigCFEqual();
      }
    }

    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    v39 = v46;
    if (!PixelBufferAttributesWithIOSurfaceSupport)
    {
      PixelBufferAttributesWithIOSurfaceSupport = FigXPCMessageSetCFDictionary();
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        PixelBufferAttributesWithIOSurfaceSupport = FigXPCMessageSetCFDictionary();
        if (!PixelBufferAttributesWithIOSurfaceSupport)
        {
          v44 = *a13;
          v45 = *(a13 + 16);
          PixelBufferAttributesWithIOSurfaceSupport = remoteRemakerFamily_AddVideoCompositionTrackCommon(a1, v39, v42, v43, a4, a5, a6, a7, v36, a9, a10, a11, a12, &v44, a14, a15, a16, a17, a18, a20, a21, a22, a23, a24, a25, a27);
        }
      }
    }

    v40 = PixelBufferAttributesWithIOSurfaceSupport;
  }

  FigXPCRelease();
  if (v47)
  {
    CFRelease(v47);
  }

  return v40;
}

uint64_t FigRemakerRemoteCreateWithURLs_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerRemoteCreateBaseWithURLs_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetReaderRemoteCreateWithURLAndFormatReader_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetReaderRemoteCreateWithURLAndFormatReader_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetWriterRemoteCreateWithURL_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetWriterRemoteCreateWithURL_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetWriterRemoteCreateForWritingFragmentedData_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetWriterRemoteCreateForWritingFragmentedData_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemakerFamily_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemakerFamily_GetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemaker_AddAudioTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemaker_AddVideoTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemaker_StartOutput_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  remoteRemakerFamily_CreateXPCMessage(v1, 1836217199, v0);
  OUTLINED_FUNCTION_4_88();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_1_110(v2);
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteRemaker_AddAudioTrackWithPreset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemaker_AddAudioMixdownTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemaker_AddAudioMixdownTrackWithPreset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemaker_AddPassthroughTrackWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteReader_EnableOriginalSampleExtractionFromTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteReader_EnableOriginalSampleReferenceExtractionFromTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteReader_EnableDecodedVideoExtractionFromTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteReader_EnableAudioMixdownExtraction_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteReader_ExtractAndRetainNextSampleBuffer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteReader_ExtractAndRetainNextSampleBuffer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteReader_EnableDecodedAudioExtractionFromTrackWithAudioOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteReader_EnableCaptionExtractionFromTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL frr_CopyTrackInfo_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t frr_CopyTrackInfo_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteWriter_AddNativeTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteWriter_AddAudioTrackWithCompression_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_257_0();
  v8 = v7;
  if (CFDictionaryGetValue(v7, @"AssetWriterAudioTrackProcessingOption_SourceAudioFormatDescriptionHint"))
  {
    v9 = *MEMORY[0x1E695E480];
    SerializableDictionaryForFormatDescription = FigRemote_CreateSerializableDictionaryForFormatDescription();
    if (!SerializableDictionaryForFormatDescription)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, v8);
      CFDictionarySetValue(MutableCopy, @"AssetWriterAudioTrackProcessingOption_SourceAudioFormatDescriptionHint", *v4);
      Copy = CFDictionaryCreateCopy(v9, MutableCopy);
      goto LABEL_6;
    }

    Copy = 0;
  }

  else
  {
    Copy = CFRetain(v8);
    SerializableDictionaryForFormatDescription = 0;
  }

  MutableCopy = 0;
LABEL_6:
  *a4 = SerializableDictionaryForFormatDescription;
  *v5 = Copy;
  if (*v4)
  {
    CFRelease(*v4);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (!SerializableDictionaryForFormatDescription)
  {
    return 1;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return 0;
}

uint64_t remoteWriter_AddAudioTrackWithCompression_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteWriter_AddAudioTrackWithPresetCompression_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteWriter_MarkEndOfDataForTrack_cold_1(uint64_t a1, void **a2, int a3, _DWORD *a4)
{
  XPCMessage = remoteRemakerFamily_CreateXPCMessage(a1, 2003136356, a2);
  v8 = *a2;
  if (!XPCMessage)
  {
    xpc_dictionary_set_int64(v8, "TrackID", a3);
    XPCMessage = FigXPCRemoteClientSendSyncMessage();
  }

  *a4 = XPCMessage;
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_Finish_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  remoteRemakerFamily_CreateXPCMessage(v1, 2003986025, v0);
  OUTLINED_FUNCTION_4_88();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_1_110(v2);
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_FinishAsync_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  remoteRemakerFamily_CreateXPCMessage(v1, 2003986017, v0);
  OUTLINED_FUNCTION_4_88();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_1_110(v2);
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_EndPass_cold_1(uint64_t a1, void **a2, int a3, _DWORD *a4)
{
  XPCMessage = remoteRemakerFamily_CreateXPCMessage(a1, 2003985776, a2);
  v8 = *a2;
  if (!XPCMessage)
  {
    xpc_dictionary_set_int64(v8, "TrackID", a3);
    XPCMessage = FigXPCRemoteClientSendSyncMessage();
  }

  *a4 = XPCMessage;
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_AddCaptionTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteWriter_Flush_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  remoteRemakerFamily_CreateXPCMessage(v1, 2003202920, v0);
  OUTLINED_FUNCTION_4_88();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_1_110(v2);
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_AddVideoTrackWithCompressionAndMediaType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureAndCopyLowValueKeyAndIVForEntryInternal(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 104) || *(a2 + 112))
  {
    goto LABEL_10;
  }

  if (!*(a2 + 64) || !*(a2 + 56))
  {
    v7 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  if (!*(a2 + 80))
  {
    v7 = keyManager_processOnlineKeyInternal(a1, a2, 3);
    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_22:
    v9 = v7;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = keyManager_processOfflineKeyInternal(a1, a2, 6);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_7:
  JE2f6WCx();
  *(a2 + 64) = 0;
  v8 = *(a2 + 56);
  if (v8)
  {
    CFRelease(v8);
    v9 = 0;
    *(a2 + 56) = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = *(a2 + 104);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  *a3 = v10;
LABEL_14:
  if (a4)
  {
    v11 = *(a2 + 112);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    *a4 = v11;
  }

  return v9;
}

uint64_t KeyManagerCreateStopSPC(uint64_t a1, const __CFData *a2, const __CFArray *a3, const void *a4, CFStringRef theString, void *a6)
{
  v35[15] = *MEMORY[0x1E69E9840];
  *buffer = 0;
  v35[0] = 0;
  *(v35 + 5) = 0;
  v18 = 0;
  *usedBufLen = 0;
  if (theString && (v36.length = CFStringGetLength(theString), v36.location = 0, CFStringGetBytes(theString, v36, 0x600u, 0, 0, buffer, 21, usedBufLen) >= 1))
  {
    buffer[*usedBufLen] = 0;
    sscanf(buffer, "%llu", &v18);
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (a1 && a2 && a3 && a6)
  {
    *a6 = 0;
    FigSimpleMutexLock();
    *(a1 + 24) = 1;
    *(a1 + 40) = v12;
    KeyRequestForEntryInternal = keyManager_createKeyRequestForEntryInternal(a1, 0, a2, a3, a4, 0, 0, 0, 0, 0, a6);
    FigSimpleMutexUnlock();
  }

  else
  {
    OUTLINED_FUNCTION_3_84();
    KeyRequestForEntryInternal = FigSignalErrorAtGM();
  }

  if (dword_1EAF17448)
  {
    LODWORD(v18) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v18;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      *usedBufLen = 136316930;
      *&usedBufLen[4] = "KeyManagerCreateStopSPC";
      v20 = 2048;
      v21 = a1;
      v22 = 2112;
      v23 = a2;
      v24 = 2112;
      v25 = a3;
      v26 = 2112;
      v27 = a4;
      v28 = 2112;
      v29 = theString;
      v30 = 2048;
      v31 = a6;
      v32 = 1024;
      v33 = KeyRequestForEntryInternal;
      OUTLINED_FUNCTION_32();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return KeyRequestForEntryInternal;
}

uint64_t keyManager_invalidateInternal(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (*(a1 + 24))
  {
    return 0;
  }

  if (CFDictionaryGetCount(*(a1 + 88)))
  {
    v24 = 4294955138;
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      if (dword_1EAF17448)
      {
        v4 = OUTLINED_FUNCTION_7_53();
        if (OUTLINED_FUNCTION_9_40(v4, v5, v6, v7, v8, v9, v10, v11, v34, v36, v38, v40, v41, SBYTE2(v41), BYTE3(v41), SHIDWORD(v41)))
        {
          v12 = v1;
        }

        else
        {
          v12 = v1 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v43 = 136315394;
          v44 = "keyManager_invalidateInternal";
          v45 = 2048;
          v46 = a1;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_9_13();
          _os_log_send_and_compose_impl();
          v1 = HIDWORD(v41);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v3 = *(a1 + 40);
      }

      v13 = **(a1 + 32);
      if (v13 == 3)
      {
        WuLaQ4nIoKwZC7KxU(v3);
      }

      else if (v13 == 2)
      {
        MzdSdcDIXg8COV();
      }
    }

    *(a1 + 24) = 1;
    if (!*(a1 + 112) || !*(a1 + 120))
    {
      v24 = 0;
      goto LABEL_30;
    }

    v14 = keyManager_createKeyRequestForEntryInternal(a1, 0, *(a1 + 48), *(a1 + 56), *(a1 + 64), 0, 0, 0, 0, 0, &cf);
    if (v14)
    {
      goto LABEL_28;
    }

    if (dword_1EAF17448)
    {
      v15 = OUTLINED_FUNCTION_7_53();
      if (OUTLINED_FUNCTION_9_40(v15, v16, v17, v18, v19, v20, v21, v22, v35, v37, v39, v40, v41, SBYTE2(v41), BYTE3(v41), SHIDWORD(v41)))
      {
        v23 = v1;
      }

      else
      {
        v23 = v1 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v43 = 136315394;
        v44 = "keyManager_invalidateInternal";
        v45 = 2048;
        v46 = a1;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_9_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v25 = *(a1 + 120);
    v26 = *(a1 + 48);
    v27 = *(a1 + 96);
    v28 = *(a1 + 80);
    ID = PKDAPIProviderGetID(*(a1 + 32));
    v30 = *(a1 + 72);
    v31 = cf;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v32)
    {
      v14 = v32(v25, v26, v27, v28, ID, v30, v31);
LABEL_28:
      v24 = v14;
      goto LABEL_30;
    }

    v24 = 4294954514;
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}