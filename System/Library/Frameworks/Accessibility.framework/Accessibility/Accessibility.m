BOOL AXAnimatedImagesEnabled(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr;
  v7 = get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr;
  if (!get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr)
  {
    v1 = libAccessibilityLibrary();
    v5[3] = dlsym(v1, "_AXSReduceMotionAutoplayAnimatedImagesEnabled");
    get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0() != 0;
}

BOOL AXPrefersNonBlinkingTextInsertionIndicator()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr;
  v7 = get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr;
  if (!get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr)
  {
    v1 = libAccessibilityLibrary();
    v5[3] = dlsym(v1, "_AXSPrefersNonBlinkingCursorIndicator");
    get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0() != 0;
}

uint64_t libAccessibilityLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = libAccessibilityLibraryCore_frameworkLibrary;
  v10 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __libAccessibilityLibraryCore_block_invoke;
    v4[4] = &unk_1E7B2CFB8;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E7B2CF98;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  v1 = v4[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1B25D3D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1B25D3DBC()
{
  result = qword_1ED6BC8A8;
  if (!qword_1ED6BC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8A8);
  }

  return result;
}

uint64_t sub_1B25D3E28(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }

  return sub_1B25E9474();
}

unint64_t sub_1B25D3E8C()
{
  result = qword_1ED6BC8A0;
  if (!qword_1ED6BC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8A0);
  }

  return result;
}

uint64_t sub_1B25D3F14()
{
  result = sub_1B25E9464();
  qword_1ED6BD3F0 = result;
  return result;
}

unint64_t sub_1B25D3F9C()
{
  result = qword_1ED6BC8E0;
  if (!qword_1ED6BC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8E0);
  }

  return result;
}

uint64_t sub_1B25D4000()
{
  result = sub_1B25E9464();
  qword_1ED6BD400 = result;
  return result;
}

unint64_t sub_1B25D409C()
{
  result = qword_1ED6BC8F0;
  if (!qword_1ED6BC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8F0);
  }

  return result;
}

uint64_t sub_1B25D4100()
{
  result = sub_1B25E9464();
  qword_1ED6BD3E0 = result;
  return result;
}

unint64_t sub_1B25D4138()
{
  result = qword_1ED6BC8D0;
  if (!qword_1ED6BC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8D0);
  }

  return result;
}

uint64_t sub_1B25D41EC()
{
  result = sub_1B25E9464();
  qword_1ED6BD3D0 = result;
  return result;
}

unint64_t sub_1B25D4224()
{
  result = qword_1ED6BC8C0;
  if (!qword_1ED6BC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8C0);
  }

  return result;
}

uint64_t sub_1B25D42A4()
{
  result = sub_1B25E9464();
  qword_1ED6BD3D8 = result;
  return result;
}

uint64_t sub_1B25D4324()
{
  result = sub_1B25E9464();
  qword_1ED6BD3F8 = result;
  return result;
}

unint64_t sub_1B25D43F0()
{
  result = qword_1ED6BC8C8;
  if (!qword_1ED6BC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8C8);
  }

  return result;
}

unint64_t sub_1B25D4460()
{
  result = qword_1ED6BC8D8;
  if (!qword_1ED6BC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8D8);
  }

  return result;
}

uint64_t sub_1B25D4534()
{
  result = sub_1B25E9464();
  qword_1ED6BD3E8 = result;
  return result;
}

unint64_t sub_1B25D456C()
{
  result = qword_1ED6BC8B0;
  if (!qword_1ED6BC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8B0);
  }

  return result;
}

uint64_t sub_1B25D45D0()
{
  result = sub_1B25E9464();
  qword_1ED6BD3C8 = result;
  return result;
}

uint64_t sub_1B25D4618()
{
  result = sub_1B25E9464();
  qword_1ED6BD3C0 = result;
  return result;
}

unint64_t sub_1B25D4650()
{
  result = qword_1ED6BC8E8;
  if (!qword_1ED6BC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8E8);
  }

  return result;
}

unint64_t sub_1B25D46A4()
{
  result = qword_1ED6BC8B8;
  if (!qword_1ED6BC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BC8B8);
  }

  return result;
}

id sub_1B25D4718@<X0>(id *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  [*a1 lowerBound];
  v5 = v4;
  result = [v3 upperBound];
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

id sub_1B25D4778(double *a1, id *a2)
{
  v2 = a1[1];
  v3 = *a2;
  [*a2 setLowerBound_];

  return [v3 setUpperBound_];
}

char *sub_1B25D47D4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = AXNumericDataAxisDescriptor.gridlinePositions.getter();
  *a2 = result;
  return result;
}

void sub_1B25D4800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  AXNumericDataAxisDescriptor.gridlinePositions.setter(v4);
}

id sub_1B25D482C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 xAxis];
  *a2 = result;
  return result;
}

id sub_1B25D48D4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1B25D48FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE498, &qword_1B25EC480);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

BOOL AXPrefersHorizontalTextLayout(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_AXSPrefersHorizontalTextLayoutSymbolLoc_ptr;
  v7 = get_AXSPrefersHorizontalTextLayoutSymbolLoc_ptr;
  if (!get_AXSPrefersHorizontalTextLayoutSymbolLoc_ptr)
  {
    v1 = libAccessibilityLibrary();
    v5[3] = dlsym(v1, "_AXSPrefersHorizontalTextLayout");
    get_AXSPrefersHorizontalTextLayoutSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0() != 0;
}

BOOL AXAssistiveAccessEnabled()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_AXSClarityBoardEnabledSymbolLoc_ptr;
  v7 = get_AXSClarityBoardEnabledSymbolLoc_ptr;
  if (!get_AXSClarityBoardEnabledSymbolLoc_ptr)
  {
    v1 = libAccessibilityLibrary();
    v5[3] = dlsym(v1, "_AXSClarityBoardEnabled");
    get_AXSClarityBoardEnabledSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0() != 0;
}

void AXOpenSettingsFeature(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((a1 - 1) >= 5)
  {
    v4 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v5 = AXLocalizedString(@"ERROR_OPEN_SETTINGS_UNSUPPPORTED_TYPE");
    v28[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v7 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:1 userInfo:v6];

    if (v7)
    {
      if (!v3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v8 = getAXUIClientClass_softClass;
  v24 = getAXUIClientClass_softClass;
  if (!getAXUIClientClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getAXUIClientClass_block_invoke;
    v20[3] = &unk_1E7B2CF78;
    v20[4] = &v21;
    __getAXUIClientClass_block_invoke(v20);
    v8 = v22[3];
  }

  v9 = v8;
  _Block_object_dispose(&v21, 8);
  v10 = [v8 alloc];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];
  v14 = [v11 stringWithFormat:@"OpenPrefClient-%@", v13];
  v15 = [v10 initWithIdentifier:v14 serviceBundleName:@"AXAssetAndDataServer"];

  v25 = @"feature";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v26 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v18 = [MEMORY[0x1E6988748] mainAccessQueue];
  [v15 sendAsynchronousMessage:v17 withIdentifier:14 targetAccessQueue:v18 completion:0];

  v7 = 0;
  if (v3)
  {
LABEL_8:
    v3[2](v3, v7);
  }

LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B25D5BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXPrefersActionSliderAlternative()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getAXSettingsClass_softClass;
  v9 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getAXSettingsClass_block_invoke;
    v5[3] = &unk_1E7B2CF78;
    v5[4] = &v6;
    __getAXSettingsClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedInstance];
  v3 = [v2 preferActionSliderAlternative];

  return v3;
}

void sub_1B25D5C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL AXShowBordersEnabled()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_AXSButtonShapesEnabledSymbolLoc_ptr;
  v7 = get_AXSButtonShapesEnabledSymbolLoc_ptr;
  if (!get_AXSButtonShapesEnabledSymbolLoc_ptr)
  {
    v1 = libAccessibilityLibrary();
    v5[3] = dlsym(v1, "_AXSButtonShapesEnabled");
    get_AXSButtonShapesEnabledSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0() != 0;
}

uint64_t __libAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAXUIClientClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B2CFD8;
    v7 = 0;
    AccessibilityUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXUIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIClientClass_block_invoke_cold_1();
  }

  getAXUIClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B2D010;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class initBRLTTable()
{
  if (BrailleTranslationLibrary_sOnce != -1)
  {
    initBRLTTable_cold_1();
  }

  result = objc_getClass("BRLTTable");
  classBRLTTable = result;
  getBRLTTableClass = BRLTTableFunction;
  return result;
}

void *__BrailleTranslationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BrailleTranslation.framework/BrailleTranslation", 2);
  BrailleTranslationLibrary_sLib = result;
  return result;
}

Class initBRLTTableEnumerator()
{
  if (BrailleTranslationLibrary_sOnce != -1)
  {
    initBRLTTable_cold_1();
  }

  result = objc_getClass("BRLTTableEnumerator");
  classBRLTTableEnumerator = result;
  getBRLTTableEnumeratorClass = BRLTTableEnumeratorFunction;
  return result;
}

Class initBRLTServiceTranslator()
{
  if (BrailleTranslationLibrary_sOnce != -1)
  {
    initBRLTTable_cold_1();
  }

  result = objc_getClass("BRLTServiceTranslator");
  classBRLTServiceTranslator = result;
  getBRLTServiceTranslatorClass = BRLTServiceTranslatorFunction;
  return result;
}

NSString *__cdecl AXNameFromColor(CGColorRef color)
{
  v74 = *MEMORY[0x1E69E9840];
  Components = CGColorGetComponents(color);
  Alpha = CGColorGetAlpha(color);
  ColorSpace = CGColorGetColorSpace(color);
  if (Components)
  {
    v5 = ColorSpace;
    v72 = 0u;
    v73 = 0u;
    if (_AXSRGBColorSpace_onceToken != -1)
    {
      AXNameFromColor_cold_1();
    }

    if (_AXSRGBColorSpace_RGBColorSpace == v5)
    {
      goto LABEL_12;
    }

    if (_AXExtendedSRGBColorSpace_onceToken != -1)
    {
      AXNameFromColor_cold_2();
    }

    if (_AXExtendedSRGBColorSpace_ExtendedSRGBColorSpace == v5)
    {
      goto LABEL_12;
    }

    if (AXRGBColorTransform_onceToken != -1)
    {
      AXNameFromColor_cold_3();
    }

    if (CGColorTransformConvertColorComponents())
    {
      *(&v73 + 1) = Alpha;
      Components = &v72;
LABEL_12:
      v6 = *Components;
      v7 = Components[1];
      v8 = 1;
      v10 = Components[2];
      v9 = Components[3];
      goto LABEL_14;
    }
  }

  v8 = 0;
  v6 = -1.0;
  v7 = -1.0;
  v10 = -1.0;
  v9 = -1.0;
LABEL_14:
  if (v6 < v7 || v6 < v10)
  {
    if (v7 < v6 || v7 < v10)
    {
      if (v7 >= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v7;
      }

      v14 = v10;
    }

    else
    {
      if (v6 >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v6;
      }

      v14 = v7;
    }
  }

  else
  {
    if (v7 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v7;
    }

    v14 = v6;
  }

  v15 = 0.0;
  v16 = 0.0;
  if (v14 > 0.0)
  {
    v15 = (v14 - v13) / v14;
    v17 = (v14 - v6) / (v14 - v13);
    v18 = (v14 - v7) / (v14 - v13);
    v19 = (v14 - v10) / (v14 - v13);
    v20 = 5.0 - v17;
    if (v13 == v6)
    {
      v20 = v18 + 3.0;
    }

    v21 = v17 + 1.0;
    if (v13 != v10)
    {
      v21 = 3.0 - v19;
    }

    if (v14 != v7)
    {
      v21 = v20;
    }

    v22 = v13 == v7;
    v23 = 1.0 - v18;
    v24 = v19 + 5.0;
    if (v22)
    {
      v23 = v24;
    }

    if (v14 != v6)
    {
      v23 = v21;
    }

    if (v15 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v23;
    }
  }

  v70[0] = @"red";
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v71[0] = v25;
  v70[1] = @"green";
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v71[1] = v26;
  v70[2] = @"blue";
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v71[2] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:3];
  v29 = [v28 mutableCopy];

  if (v8)
  {
    *v30.i64 = v16 / 6.0;
    *v31.i64 = v16 / 6.0 - trunc(v16 / 6.0);
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:{*vbslq_s8(vnegq_f64(v32), v31, v30).i64, @"hue"}];
    *&v72 = v33;
    v69[1] = @"saturation";
    v34 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    *(&v72 + 1) = v34;
    v69[2] = @"brightness";
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    *&v73 = v35;
    v69[3] = @"alpha";
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    *(&v73 + 1) = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:v69 count:4];
    [v29 setValuesForKeysWithDictionary:v37];
  }

  v38 = [v29 objectForKeyedSubscript:@"hue"];

  v39 = [v29 objectForKeyedSubscript:@"hue"];
  [v39 doubleValue];
  v41 = v40;

  v42 = [v29 objectForKeyedSubscript:@"saturation"];
  [v42 doubleValue];
  v44 = v43;

  v45 = [v29 objectForKeyedSubscript:@"alpha"];
  [v45 doubleValue];
  v47 = v46;

  v48 = [v29 objectForKeyedSubscript:@"red"];
  [v48 doubleValue];
  v50 = v49;

  v51 = [v29 objectForKeyedSubscript:@"green"];
  [v51 doubleValue];
  v53 = v52;

  v54 = [v29 objectForKeyedSubscript:@"blue"];
  [v54 doubleValue];
  v56 = v55;

  v57 = fmax(v47 * (v53 * 0.715200007 + v50 * 0.212599993 + v56 * 0.0722000003), 0.0);
  if (v57 <= 1.0)
  {
    v58 = v57;
  }

  else
  {
    v58 = 1.0;
  }

  if (!v38)
  {
    v60 = 0;
    goto LABEL_65;
  }

  if (v47 == 0.0)
  {
    v59 = @"transparent";
LABEL_64:
    v60 = AXLocalizedString(v59);
    goto LABEL_65;
  }

  if (v58 > 0.99000001)
  {
    v59 = @"white";
    goto LABEL_64;
  }

  if (v58 < 0.00999999978)
  {
    v59 = @"black";
    goto LABEL_64;
  }

  if (v44 >= 0.0500000007)
  {
    v65 = v41 < 0.111000001;
    if (v58 >= 0.540000021)
    {
      v65 = 0;
    }

    v66 = v41 > 0.0560000017 && v65;
    v63 = AXColorGetLightnessDescription(v58);
    if (v44 >= 0.200000003)
    {
      v64 = 0;
      if (v44 <= 0.899999976 || v58 <= 0.699999988)
      {
LABEL_81:
        if (v66)
        {
          AXLocalizedString(@"brown");
        }

        else
        {
          AXColorGetNameForHue(v41);
        }
        v68 = ;
        v60 = AXColorDescriptionFromAttributeDescriptions(v63, v64, v68);

        goto LABEL_85;
      }

      v67 = @"vibrant";
    }

    else
    {
      v67 = @"grayish";
    }

    v64 = AXLocalizedString(v67);
    goto LABEL_81;
  }

  v63 = AXColorGetLightnessDescription(v58);
  v64 = AXLocalizedString(@"gray");
  v60 = AXColorDescriptionFromAttributeDescriptions(v63, 0, v64);
LABEL_85:

LABEL_65:
  v61 = *MEMORY[0x1E69E9840];

  return v60;
}

id AXColorDescriptionFromAttributeDescriptions(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 length];
  v9 = [v6 length];
  if (v8)
  {
    if (v9)
    {
      v10 = AXLocalizedString(@"color.attributes.format.all");
      v11 = MEMORY[0x1E696AEC0];
      v14 = v6;
      v15 = v7;
    }

    else
    {
      v10 = AXLocalizedString(@"color.attributes.format.lightness.hue");
      v11 = MEMORY[0x1E696AEC0];
      v14 = v7;
    }

    [v11 localizedStringWithFormat:v10, v5, v14, v15];
    goto LABEL_8;
  }

  if (v9)
  {
    v10 = AXLocalizedString(@"color.attributes.format.saturation.hue");
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v10, v6, v7, v15];
    v12 = LABEL_8:;

    goto LABEL_9;
  }

  v12 = v7;
LABEL_9:

  return v12;
}

id AXColorGetLightnessDescription(double a1)
{
  if (a1 < 0.349999994)
  {
    v2 = @"dark";
    goto LABEL_5;
  }

  if (a1 > 0.850000024)
  {
    v2 = @"light";
LABEL_5:
    v3 = AXLocalizedString(v2);

    return v3;
  }

  v3 = 0;

  return v3;
}

id AXColorGetNameForHue(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    if (a1 >= 0.0280000009)
    {
      if (a1 < 0.0560000017)
      {
        v5 = @"red orange";
        goto LABEL_41;
      }

      if (a1 < 0.111000001)
      {
        v5 = @"orange";
        goto LABEL_41;
      }

      if (a1 < 0.128999993)
      {
        v5 = @"orange yellow";
        goto LABEL_41;
      }

      if (a1 < 0.166999996)
      {
        v5 = @"yellow";
        goto LABEL_41;
      }

      if (a1 < 0.222000003)
      {
        v5 = @"yellow green";
        goto LABEL_41;
      }

      if (a1 < 0.388999999)
      {
        v5 = @"green";
        goto LABEL_41;
      }

      if (a1 < 0.469000012)
      {
        v5 = @"green cyan";
        goto LABEL_41;
      }

      if (a1 < 0.540000021)
      {
        v5 = @"cyan";
        goto LABEL_41;
      }

      if (a1 < 0.611000001)
      {
        v5 = @"cyan blue";
        goto LABEL_41;
      }

      if (a1 < 0.666999996)
      {
        v5 = @"blue";
        goto LABEL_41;
      }

      if (a1 < 0.800000012)
      {
        v5 = @"blue magenta";
        goto LABEL_41;
      }

      if (a1 < 0.888999999)
      {
        v5 = @"magenta";
        goto LABEL_41;
      }

      if (a1 < 0.916999996)
      {
        v5 = @"magenta pink";
        goto LABEL_41;
      }

      if (a1 < 0.958000004)
      {
        v5 = @"pink";
        goto LABEL_41;
      }

      if (a1 < 0.986000001)
      {
        v5 = @"pink red";
        goto LABEL_41;
      }
    }

    v5 = @"red";
LABEL_41:
    v4 = AXLocalizedString(v5);
    goto LABEL_42;
  }

  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    AXColorGetNameForHue_cold_1(v3, a1);
  }

  v4 = 0;
LABEL_42:

  return v4;
}

uint64_t __AXRGBColorTransform_block_invoke()
{
  if (_AXSRGBColorSpace_onceToken != -1)
  {
    AXNameFromColor_cold_1();
  }

  result = MEMORY[0x1B274C6B0](_AXSRGBColorSpace_RGBColorSpace, 0);
  AXRGBColorTransform_ColorTransform = result;
  return result;
}

AXRequest *accessibilityAXRuntimeRequestingClient()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXRequestingClientSymbolLoc_ptr;
  v9 = getAXRequestingClientSymbolLoc_ptr;
  if (!getAXRequestingClientSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getAXRequestingClientSymbolLoc_block_invoke;
    v5[3] = &unk_1E7B2CF78;
    v5[4] = &v6;
    __getAXRequestingClientSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v1 = v0() - 1;
  if (v1 <= 0x11 && ((0x2461Fu >> v1) & 1) != 0)
  {
    v2 = [[AXRequest alloc] initWithTechnology:*(&off_1E7B2D060)[v1]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *__getAXRequestingClientSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AXRuntimeLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B2D048;
    v8 = 0;
    AXRuntimeLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = AXRuntimeLibraryCore_frameworkLibrary;
    if (AXRuntimeLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AXRuntimeLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXRequestingClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXRequestingClientSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AXRuntimeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXRuntimeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getCIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCIImageClass_softClass;
  v7 = getCIImageClass_softClass;
  if (!getCIImageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCIImageClass_block_invoke;
    v3[3] = &unk_1E7B2CF78;
    v3[4] = &v4;
    __getCIImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B25D8A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCIImageClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreImageLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B2D0F0;
    v7 = 0;
    CoreImageLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreImageLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIImageClass_block_invoke_cold_1();
  }

  getCIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreImageLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreImageLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void _AXPostPlatformNotification(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getUIAccessibilityPostNotificationSymbolLoc_ptr;
  v10 = getUIAccessibilityPostNotificationSymbolLoc_ptr;
  if (!getUIAccessibilityPostNotificationSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getUIAccessibilityPostNotificationSymbolLoc_block_invoke;
    v6[3] = &unk_1E7B2CF78;
    v6[4] = &v7;
    __getUIAccessibilityPostNotificationSymbolLoc_block_invoke(v6);
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    v5 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v4(a1, v3);
}

void *__getUIAccessibilityPostNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __UIKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B2D108;
    v8 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = UIKitLibraryCore_frameworkLibrary;
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = UIKitLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "UIAccessibilityPostNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIAccessibilityPostNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id AXTextPreferredFontForTextStyle(void *a1)
{
  v1 = a1;
  _contentSizeCategoryToUse();
  v2 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getNSFontClass_softClass;
  v11 = getNSFontClass_softClass;
  if (!getNSFontClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getNSFontClass_block_invoke;
    v7[3] = &unk_1E7B2CF78;
    v7[4] = &v8;
    __getNSFontClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [v3 fontWithDescriptor:v2 size:0.0];

  return v5;
}

void sub_1B25D9F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _contentSizeCategoryToUse()
{
  result = _contentSizeCategoryOverrideForPreviews;
  if (!_contentSizeCategoryOverrideForPreviews)
  {
    if ((_observingNotification & 1) == 0)
    {
      _RefreshContentSizePreferences();
      _BeginObservingPreferredContentSizeChangedNotification();
    }

    return _cachedPreferredContentSizeCategory;
  }

  return result;
}

double AXTextPreferredUserFontSizeForSize(double a1)
{
  v2 = *MEMORY[0x1E6965AB0];
  _contentSizeCategoryToUse();
  v3 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v4 = CTFontDescriptorCopyAttribute(v3, *MEMORY[0x1E6965848]);
  [v4 doubleValue];
  v6 = v5;

  CFRelease(v3);
  if (a1 > 0.0)
  {
    return fmin(fmax(round(v6 * a1 / 13.0), 8.0), 120.0);
  }

  return v6;
}

uint64_t AXTextGetAppUsesCustomContentSize()
{
  if ((_observingNotification & 1) == 0)
  {
    _RefreshContentSizePreferences();
    _BeginObservingPreferredContentSizeChangedNotification();
  }

  return _cachedUsesCustomContentSize;
}

void _RefreshContentSizePreferences()
{
  Copy = _AXSCopyPreferredContentSizeCategoryName();
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v1 BOOLForKey:@"UIContentSizeIsCustom"];

  if (!Copy)
  {
    Copy = CFStringCreateCopy(0, *MEMORY[0x1E69656B0]);
  }

  if (!_cachedPreferredContentSizeCategory)
  {
LABEL_7:
    _cachedPreferredContentSizeCategory = Copy;
    if (_cachedUsesCustomContentSize == v2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFStringCompare(Copy, _cachedPreferredContentSizeCategory, 0))
  {
    if (_cachedPreferredContentSizeCategory)
    {
      CFRelease(_cachedPreferredContentSizeCategory);
    }

    goto LABEL_7;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (_cachedUsesCustomContentSize != v2)
  {
LABEL_12:
    _cachedUsesCustomContentSize = v2;
LABEL_13:
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"UIContentSizeCategoryDidChangeNotification" object:0];
  }
}

void _BeginObservingPreferredContentSizeChangedNotification()
{
  if ((_observingNotification & 1) == 0)
  {
    _observingNotification = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v2 = *MEMORY[0x1E69E4C48];

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _PreferredContentSizeChangedCallback, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void AXTextSetAppUsesCustomContentSize(int a1)
{
  if ((_observingNotification & 1) == 0)
  {
    _BeginObservingPreferredContentSizeChangedNotification();
  }

  if (_cachedUsesCustomContentSize != a1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = v2;
    if (a1)
    {
      [v2 setBool:1 forKey:@"UIContentSizeIsCustom"];
    }

    else
    {
      [v2 removeObjectForKey:@"UIContentSizeIsCustom"];
    }

    _cachedUsesCustomContentSize = a1;
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    v5 = *MEMORY[0x1E69E4C48];

    CFNotificationCenterPostNotification(DistributedCenter, v5, 0, 0, 1u);
  }
}

uint64_t _PreferredContentSizeCategory()
{
  if ((_observingNotification & 1) == 0)
  {
    _RefreshContentSizePreferences();
    _BeginObservingPreferredContentSizeChangedNotification();
  }

  return _cachedPreferredContentSizeCategory;
}

Class __getNSFontClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B2D128;
    v7 = 0;
    AppKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AppKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NSFont");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNSFontClass_block_invoke_cold_1();
  }

  getNSFontClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getkAXMChartAxisTitleKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartAxisTitleKeySymbolLoc_ptr;
  v8 = getkAXMChartAxisTitleKeySymbolLoc_ptr;
  if (!getkAXMChartAxisTitleKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartAxisTitleKey");
    getkAXMChartAxisTitleKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartNumericAxisScaleTypeKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartNumericAxisScaleTypeKeySymbolLoc_ptr;
  v8 = getkAXMChartNumericAxisScaleTypeKeySymbolLoc_ptr;
  if (!getkAXMChartNumericAxisScaleTypeKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartNumericAxisScaleTypeKey");
    getkAXMChartNumericAxisScaleTypeKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartNumericAxisLowerBoundKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartNumericAxisLowerBoundKeySymbolLoc_ptr;
  v8 = getkAXMChartNumericAxisLowerBoundKeySymbolLoc_ptr;
  if (!getkAXMChartNumericAxisLowerBoundKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartNumericAxisLowerBoundKey");
    getkAXMChartNumericAxisLowerBoundKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartNumericAxisUpperBoundKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartNumericAxisUpperBoundKeySymbolLoc_ptr;
  v8 = getkAXMChartNumericAxisUpperBoundKeySymbolLoc_ptr;
  if (!getkAXMChartNumericAxisUpperBoundKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartNumericAxisUpperBoundKey");
    getkAXMChartNumericAxisUpperBoundKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartNumericAxisGridlinePositionsKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartNumericAxisGridlinePositionsKeySymbolLoc_ptr;
  v8 = getkAXMChartNumericAxisGridlinePositionsKeySymbolLoc_ptr;
  if (!getkAXMChartNumericAxisGridlinePositionsKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartNumericAxisGridlinePositionsKey");
    getkAXMChartNumericAxisGridlinePositionsKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartAxisTypeNumeric()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartAxisTypeNumericSymbolLoc_ptr;
  v8 = getkAXMChartAxisTypeNumericSymbolLoc_ptr;
  if (!getkAXMChartAxisTypeNumericSymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartAxisTypeNumeric");
    getkAXMChartAxisTypeNumericSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartAxisTypeKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartAxisTypeKeySymbolLoc_ptr;
  v8 = getkAXMChartAxisTypeKeySymbolLoc_ptr;
  if (!getkAXMChartAxisTypeKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartAxisTypeKey");
    getkAXMChartAxisTypeKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartCategoryAxisCategoriesKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartCategoryAxisCategoriesKeySymbolLoc_ptr;
  v8 = getkAXMChartCategoryAxisCategoriesKeySymbolLoc_ptr;
  if (!getkAXMChartCategoryAxisCategoriesKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartCategoryAxisCategoriesKey");
    getkAXMChartCategoryAxisCategoriesKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartAxisTypeCategorical()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartAxisTypeCategoricalSymbolLoc_ptr;
  v8 = getkAXMChartAxisTypeCategoricalSymbolLoc_ptr;
  if (!getkAXMChartAxisTypeCategoricalSymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartAxisTypeCategorical");
    getkAXMChartAxisTypeCategoricalSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSeriesNameKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesNameKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesNameKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesNameKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesNameKey");
    getkAXMChartSeriesNameKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSeriesContinuousKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesContinuousKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesContinuousKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesContinuousKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesContinuousKey");
    getkAXMChartSeriesContinuousKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSeriesXDataKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesXDataKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesXDataKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesXDataKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesXDataKey");
    getkAXMChartSeriesXDataKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSeriesYDataKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesYDataKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesYDataKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesYDataKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesYDataKey");
    getkAXMChartSeriesYDataKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSeriesZNumericDataKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesZNumericDataKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesZNumericDataKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesZNumericDataKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesZNumericDataKey");
    getkAXMChartSeriesZNumericDataKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSeriesZCategoricalDataKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesZCategoricalDataKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesZCategoricalDataKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesZCategoricalDataKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesZCategoricalDataKey");
    getkAXMChartSeriesZCategoricalDataKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSeriesValueDescriptionsKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesValueDescriptionsKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesValueDescriptionsKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesValueDescriptionsKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesValueDescriptionsKey");
    getkAXMChartSeriesValueDescriptionsKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id AXAudioGraphLog()
{
  if (AXAudioGraphLog_onceToken != -1)
  {
    AXAudioGraphLog_cold_1();
  }

  v1 = AXAudioGraphLog_Log;

  return v1;
}

id getkAXMChartSeriesMeanValueDescriptionKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesMeanValueDescriptionKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesMeanValueDescriptionKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesMeanValueDescriptionKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesMeanValueDescriptionKey");
    getkAXMChartSeriesMeanValueDescriptionKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartTitleKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartTitleKeySymbolLoc_ptr;
  v8 = getkAXMChartTitleKeySymbolLoc_ptr;
  if (!getkAXMChartTitleKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartTitleKey");
    getkAXMChartTitleKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSummaryKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSummaryKeySymbolLoc_ptr;
  v8 = getkAXMChartSummaryKeySymbolLoc_ptr;
  if (!getkAXMChartSummaryKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSummaryKey");
    getkAXMChartSummaryKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartContentDirectionKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartContentDirectionKeySymbolLoc_ptr;
  v8 = getkAXMChartContentDirectionKeySymbolLoc_ptr;
  if (!getkAXMChartContentDirectionKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartContentDirectionKey");
    getkAXMChartContentDirectionKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartXAxisKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartXAxisKeySymbolLoc_ptr;
  v8 = getkAXMChartXAxisKeySymbolLoc_ptr;
  if (!getkAXMChartXAxisKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartXAxisKey");
    getkAXMChartXAxisKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartYAxisKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartYAxisKeySymbolLoc_ptr;
  v8 = getkAXMChartYAxisKeySymbolLoc_ptr;
  if (!getkAXMChartYAxisKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartYAxisKey");
    getkAXMChartYAxisKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartAdditionalAxesKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartAdditionalAxesKeySymbolLoc_ptr;
  v8 = getkAXMChartAdditionalAxesKeySymbolLoc_ptr;
  if (!getkAXMChartAdditionalAxesKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartAdditionalAxesKey");
    getkAXMChartAdditionalAxesKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAXMChartSeriesKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMChartSeriesKeySymbolLoc_ptr;
  v8 = getkAXMChartSeriesKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesKeySymbolLoc_ptr)
  {
    v1 = AXMediaUtilitiesLibrary();
    v6[3] = dlsym(v1, "kAXMChartSeriesKey");
    getkAXMChartSeriesKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAXMDataSonificationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXMDataSonificationManagerClass_softClass;
  v7 = getAXMDataSonificationManagerClass_softClass;
  if (!getAXMDataSonificationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXMDataSonificationManagerClass_block_invoke;
    v3[3] = &unk_1E7B2CF78;
    v3[4] = &v4;
    __getAXMDataSonificationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B25E04B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkAXMChartAxisTitleKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartAxisTitleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartAxisTitleKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXMediaUtilitiesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AXMediaUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AXMediaUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B2D180;
    v6 = 0;
    AXMediaUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXMediaUtilitiesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!AXMediaUtilitiesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AXMediaUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXMediaUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkAXMChartNumericAxisScaleTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartNumericAxisScaleTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartNumericAxisScaleTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartNumericAxisLowerBoundKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartNumericAxisLowerBoundKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartNumericAxisLowerBoundKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartNumericAxisUpperBoundKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartNumericAxisUpperBoundKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartNumericAxisUpperBoundKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartNumericAxisGridlinePositionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartNumericAxisGridlinePositionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartNumericAxisGridlinePositionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartAxisTypeNumericSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartAxisTypeNumeric");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartAxisTypeNumericSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartAxisTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartAxisTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartAxisTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartCategoryAxisCategoriesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartCategoryAxisCategoriesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartCategoryAxisCategoriesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartAxisTypeCategoricalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartAxisTypeCategorical");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartAxisTypeCategoricalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesContinuousKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesContinuousKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesContinuousKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesXDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesXDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesXDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesYDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesYDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesYDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesZNumericDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesZNumericDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesZNumericDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesZCategoricalDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesZCategoricalDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesZCategoricalDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesLabelDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesLabelDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesLabelDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesValueDescriptionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesValueDescriptionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesValueDescriptionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXAudioGraphLog_block_invoke()
{
  AXAudioGraphLog_Log = os_log_create("com.apple.Accessibility", "AudioGraph");

  return MEMORY[0x1EEE66BB8]();
}

void *__getkAXMChartSeriesMeanValueDescriptionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesMeanValueDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesMeanValueDescriptionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartTitleKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartTitleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartTitleKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSummaryKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSummaryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSummaryKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartContentDirectionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartContentDirectionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartContentDirectionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartContentFrameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartContentFrameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartContentFrameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartXAxisKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartXAxisKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartXAxisKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartYAxisKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartYAxisKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartYAxisKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartAdditionalAxesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartAdditionalAxesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartAdditionalAxesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXMChartSeriesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "kAXMChartSeriesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMChartSeriesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXMDataSonificationManagerClass_block_invoke(uint64_t a1)
{
  AXMediaUtilitiesLibrary();
  result = objc_getClass("AXMDataSonificationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXMDataSonificationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAXMDataSonificationManagerClass_block_invoke_cold_1();
    return AXApplicationFocusDidChange(v3);
  }

  return result;
}

void AXApplicationFocusDidChange(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v3 = getUIAccessibilityPostNotificationSymbolLoc_ptr_0;
    v9 = getUIAccessibilityPostNotificationSymbolLoc_ptr_0;
    if (!getUIAccessibilityPostNotificationSymbolLoc_ptr_0)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __getUIAccessibilityPostNotificationSymbolLoc_block_invoke_0;
      v5[3] = &unk_1E7B2CF78;
      v5[4] = &v6;
      __getUIAccessibilityPostNotificationSymbolLoc_block_invoke_0(v5);
      v3 = v7[3];
    }

    _Block_object_dispose(&v6, 8);
    if (!v3)
    {
      v4 = AXAnimatedImagesEnabled_cold_1();
      _Block_object_dispose(&v6, 8);
      _Unwind_Resume(v4);
    }

    v3(1053, v2);
  }
}

void *__getUIAccessibilityPostNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __UIKitLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B2D1E8;
    v8 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v6[0];
    v2 = UIKitLibraryCore_frameworkLibrary_0;
    if (UIKitLibraryCore_frameworkLibrary_0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = UIKitLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "UIAccessibilityPostNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIAccessibilityPostNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AXSupportsBidirectionalAXMFiHearingDeviceStreaming(void)
{
  if (AXSupportsBidirectionalAXMFiHearingDeviceStreaming_onceToken != -1)
  {
    AXSupportsBidirectionalAXMFiHearingDeviceStreaming_cold_1();
  }

  return AXSupportsBidirectionalAXMFiHearingDeviceStreaming_SupportsLEA2;
}

uint64_t __AXSupportsBidirectionalAXMFiHearingDeviceStreaming_block_invoke()
{
  result = MGGetBoolAnswer();
  AXSupportsBidirectionalAXMFiHearingDeviceStreaming_SupportsLEA2 = result;
  return result;
}

NSArray *AXMFiHearingDevicePairedUUIDs(void)
{
  v0 = _AXSHearingDevicePairedUUIDs();
  v1 = [MEMORY[0x1E695DF70] array];
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.developer.hearing-aid-app", 0);
    if (!v4)
    {
LABEL_12:
      CFRelease(v3);
      goto LABEL_13;
    }

    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
      if ([v7 length])
      {
        if ([v7 isEqualToString:@"com.apple.hearing.internal"])
        {
          v8 = [v0 allValues];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __AXMFiHearingDevicePairedUUIDs_block_invoke;
          v19[3] = &unk_1E7B2D218;
          v1 = v1;
          v20 = v1;
          [v8 enumerateObjectsUsingBlock:v19];
        }

        else
        {
          v10 = [v0 valueForKey:v7];

          v1 = v10;
        }
      }
    }

    else
    {
      v9 = CFGetTypeID(v5);
      if (v9 != CFArrayGetTypeID())
      {
LABEL_11:
        CFRelease(v5);
        goto LABEL_12;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __AXMFiHearingDevicePairedUUIDs_block_invoke_2;
      v16[3] = &unk_1E7B2D240;
      v17 = v0;
      v1 = v1;
      v18 = v1;
      [v5 enumerateObjectsUsingBlock:v16];

      v7 = v17;
    }

    goto LABEL_11;
  }

LABEL_13:
  v11 = [MEMORY[0x1E695DF70] array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __AXMFiHearingDevicePairedUUIDs_block_invoke_3;
  v14[3] = &unk_1E7B2D268;
  v12 = v11;
  v15 = v12;
  [v1 enumerateObjectsUsingBlock:v14];

  return v12;
}

void __AXMFiHearingDevicePairedUUIDs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }
}

void __AXMFiHearingDevicePairedUUIDs_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  if ([v3 count])
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

void __AXMFiHearingDevicePairedUUIDs_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a2;
  v6 = [[v3 alloc] initWithUUIDString:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

Class __getAXUIClientClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUILibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUILibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B2D290;
    v7 = 0;
    AccessibilityUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUILibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXUIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIClientClass_block_invoke_cold_1();
  }

  getAXUIClientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id AXLocalizedString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F29D6BC8 table:@"Accessibility"];

  return v4;
}

id sub_1B25E26E8@<X0>(id *a1@<X0>, double *a2@<X1>, _DWORD *a3@<X8>)
{
  result = [*a1 heightAtPoint_];
  *a3 = v5;
  return result;
}

id (*AXBrailleMap.subscript.modify(uint64_t a1, double a2, double a3))(uint64_t a1, double a2)
{
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 8) = a3;
  [v3 heightAtPoint_];
  *(a1 + 24) = v5;
  return sub_1B25E27A0;
}

id AXNumericDataAxisDescriptor.range.getter()
{
  [v0 lowerBound];
  v2 = v1;
  result = [v0 upperBound];
  if (v2 > v4)
  {
    __break(1u);
  }

  return result;
}

id AXNumericDataAxisDescriptor.range.setter(double a1, double a2)
{
  [v2 setLowerBound_];

  return [v2 setUpperBound_];
}

id (*AXNumericDataAxisDescriptor.range.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  [v1 lowerBound];
  v4 = v3;
  result = [v1 upperBound];
  if (v4 > v6)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = v6;
    return sub_1B25E28DC;
  }

  return result;
}

id sub_1B25E28DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  [v1 setLowerBound_];

  return [v1 setUpperBound_];
}

char *AXNumericDataAxisDescriptor.gridlinePositions.getter()
{
  v1 = [v0 gridlinePositions];
  sub_1B25E4010(0, &qword_1ED6BC7F0, 0x1E696AD98);
  v2 = sub_1B25E9594();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1B25E9684();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B25E3F80(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B274C490](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      [v7 doubleValue];
      v10 = v9;

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B25E3F80((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v12 + 1;
      *(v13 + 8 * v12 + 32) = v10;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

void AXNumericDataAxisDescriptor.gridlinePositions.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1B25E9654();
    v4 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1B25E9634();
      v5 = *(v7 + 16);
      sub_1B25E9664();
      sub_1B25E9674();
      sub_1B25E9644();
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  sub_1B25E4010(0, &qword_1ED6BC7F0, 0x1E696AD98);
  v6 = sub_1B25E9584();

  [v1 setGridlinePositions_];
}

void (*AXNumericDataAxisDescriptor.gridlinePositions.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = AXNumericDataAxisDescriptor.gridlinePositions.getter();
  return sub_1B25E2C68;
}

void sub_1B25E2C68(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    AXNumericDataAxisDescriptor.gridlinePositions.setter(v5);
  }

  else
  {
    AXNumericDataAxisDescriptor.gridlinePositions.setter(*a1);
  }
}

id AXNumericDataAxisDescriptor.init(title:range:gridlinePositions:valueDescriptionProvider:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1B25E9464();

  v13 = *(a5 + 16);
  if (v13)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B25E9654();
    v14 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1B25E9634();
      v15 = *(aBlock[0] + 16);
      sub_1B25E9664();
      sub_1B25E9674();
      sub_1B25E9644();
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B25E4010(0, &qword_1ED6BC7F0, 0x1E696AD98);
  v17 = sub_1B25E9584();

  aBlock[4] = a6;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B25E2EDC;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  v19 = [v16 initWithTitle:v12 lowerBound:v17 upperBound:v18 gridlinePositions:a1 valueDescriptionProvider:a2];

  _Block_release(v18);

  return v19;
}

id sub_1B25E2EDC(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v5, a2);

  v6 = sub_1B25E9464();

  return v6;
}

id AXNumericDataAxisDescriptor.init(attributedTitle:range:gridlinePositions:valueDescriptionProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = a3;
  v11 = a1;
  v12 = *(a2 + 16);
  if (v12)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B25E9654();
    v13 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1B25E9634();
      v14 = *(aBlock[0] + 16);
      sub_1B25E9664();
      sub_1B25E9674();
      sub_1B25E9644();
      v13 += 8;
      --v12;
    }

    while (v12);

    v11 = a1;
    v7 = a3;
  }

  else
  {
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B25E4010(0, &qword_1ED6BC7F0, 0x1E696AD98);
  v16 = sub_1B25E9584();

  aBlock[4] = v7;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B25E2EDC;
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  v18 = [v15 initWithAttributedTitle:v11 lowerBound:v16 upperBound:v17 gridlinePositions:a5 valueDescriptionProvider:a6];

  _Block_release(v17);

  return v18;
}

id AXChartDescriptor.xAxis.getter()
{
  v1 = [v0 xAxis];

  return v1;
}

uint64_t AXChartDescriptor.xAxis.setter(uint64_t a1)
{
  [v1 setXAxis_];

  return swift_unknownObjectRelease();
}

uint64_t (*AXChartDescriptor.xAxis.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 xAxis];
  return sub_1B25E3724;
}

uint64_t sub_1B25E3724(uint64_t a1)
{
  [*(a1 + 8) setXAxis_];

  return swift_unknownObjectRelease();
}

uint64_t AXChartDescriptor.additionalAxes.getter()
{
  v1 = [v0 additionalAxes];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
  v3 = sub_1B25E9594();

  return v3;
}

void sub_1B25E37E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 additionalAxes];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
    v5 = sub_1B25E9594();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
}

void sub_1B25E3860(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 >> 62)
  {
    if (v2 < 0)
    {
      v4 = *a1;
    }

    if (sub_1B25E9684())
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
    v5 = sub_1B25E9584();
    [v3 setAdditionalAxes_];

    return;
  }

  [v3 setAdditionalAxes_];
}

void AXChartDescriptor.additionalAxes.setter(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_1B25E9684())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
    v2 = sub_1B25E9584();

    [v1 setAdditionalAxes_];

    return;
  }

  [v1 setAdditionalAxes_];
}

void (*AXChartDescriptor.additionalAxes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 additionalAxes];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
    v5 = sub_1B25E9594();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v5;
  return sub_1B25E3ABC;
}

void sub_1B25E3ABC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 >> 62;
  if (a2)
  {
    if (v3)
    {
      if (v2 < 0)
      {
        v7 = *a1;
      }

      v9 = sub_1B25E9684();
      v4 = a1[1];
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = a1[1];
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_4:

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
        v5 = sub_1B25E9584();

        [v4 setAdditionalAxes_];

LABEL_14:

        return;
      }
    }

    [v4 setAdditionalAxes_];
    goto LABEL_14;
  }

  if (v3)
  {
    if (v2 < 0)
    {
      v10 = *a1;
    }

    v12 = sub_1B25E9684();
    v6 = a1[1];
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = a1[1];
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
      v13 = sub_1B25E9584();

      [v6 setAdditionalAxes_];

      return;
    }
  }

  [v6 setAdditionalAxes_];
}

id AXChartDescriptor.init(title:summary:xAxis:yAxis:additionalAxes:series:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7)
{
  if (a2)
  {
    v11 = sub_1B25E9464();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = 0;
    if (!(a7 >> 62))
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v11 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_3:
  v12 = sub_1B25E9464();

  if (!(a7 >> 62))
  {
LABEL_4:
    v13 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_10:
  v13 = sub_1B25E9684();
LABEL_5:
  v14 = a6;
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
    v13 = sub_1B25E9584();
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B25E4010(0, &unk_1ED6BC7F8, off_1E7B2CD78);
  v16 = sub_1B25E9584();

  v17 = [v15 initWithTitle:v11 summary:v12 xAxisDescriptor:a5 yAxisDescriptor:v14 additionalAxes:v13 series:v16];

  swift_unknownObjectRelease();
  return v17;
}

id AXChartDescriptor.init(attributedTitle:summary:xAxis:yAxis:additionalAxes:series:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  if (a3)
  {
    v10 = sub_1B25E9464();

    if (!(a6 >> 62))
    {
LABEL_3:
      v11 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v10 = 0;
    if (!(a6 >> 62))
    {
      goto LABEL_3;
    }
  }

  v11 = sub_1B25E9684();
LABEL_4:
  v12 = a5;
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3A0, &qword_1B25EB350);
    v11 = sub_1B25E9584();
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B25E4010(0, &unk_1ED6BC7F8, off_1E7B2CD78);
  v14 = sub_1B25E9584();

  v15 = [v13 initWithAttributedTitle:a1 summary:v10 xAxisDescriptor:a4 yAxisDescriptor:v12 additionalAxes:v11 series:v14];

  swift_unknownObjectRelease();
  return v15;
}

char *sub_1B25E3F80(char *a1, int64_t a2, char a3)
{
  result = sub_1B25E4124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B25E3FB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B25E4010(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B25E4078(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B25E40C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

char *sub_1B25E4124(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7EE3B0, &qword_1B25EB3E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B25E4264()
{
  sub_1B25E78D0();

  return sub_1B25E93B4();
}

uint64_t sub_1B25E42B0()
{
  sub_1B25E78D0();

  return sub_1B25E93B4();
}

uint64_t static AttributeScopes.AccessibilityAttributes.HeadingLevelAttribute.decodeMarkdown(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B25E9734();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_1B25E96D4();
    AttributeScopes.AccessibilityAttributes.HeadingLevelAttribute.HeadingLevel.init(rawValue:)(v6, &v9);
    v7 = v9;
    if (v9 == 7)
    {
      v7 = 0;
    }

    *a2 = v7;
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

unint64_t AttributeScopes.AccessibilityAttributes.HeadingLevelAttribute.HeadingLevel.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t static AttributeScopes.AccessibilityAttributes.HeadingLevelAttribute.value(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = AttributeScopes.AccessibilityAttributes.HeadingLevelAttribute.HeadingLevel.init(rawValue:)([a1 integerValue], &v5);
  v4 = v5;
  if (v5 == 7)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B25E4500(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6873646165727073;
    v10 = 0xEB00000000746565;
    if (a1 != 6)
    {
      v9 = 0x636F725064726F77;
      v10 = 0xEE00676E69737365;
    }

    v11 = 0x766974617272616ELL;
    v12 = 0xE900000000000065;
    if (a1 != 4)
    {
      v11 = 0x6F43656372756F73;
      v12 = 0xEA00000000006564;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x74737953656C6966;
    v5 = 0xEA00000000006D65;
    if (a1 != 2)
    {
      v4 = 0x6E6967617373656DLL;
      v5 = 0xE900000000000067;
    }

    v6 = 0x656C6F736E6F63;
    if (a1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x6E69616C70;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEB00000000746565;
        if (v7 != 0x6873646165727073)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xEE00676E69737365;
        if (v7 != 0x636F725064726F77)
        {
LABEL_47:
          v14 = sub_1B25E96B4();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000065;
      if (v7 != 0x766974617272616ELL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEA00000000006564;
      if (v7 != 0x6F43656372756F73)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA00000000006D65;
      if (v7 != 0x74737953656C6966)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE900000000000067;
      if (v7 != 0x6E6967617373656DLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x656C6F736E6F63)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x6E69616C70)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_1B25E47D4()
{
  v1 = *v0;
  sub_1B25E9704();
  MEMORY[0x1B274C580](v1);
  return sub_1B25E9724();
}

uint64_t sub_1B25E4848()
{
  sub_1B25E9494();
}

uint64_t sub_1B25E4994()
{
  v1 = *v0;
  sub_1B25E9704();
  MEMORY[0x1B274C580](v1);
  return sub_1B25E9724();
}

uint64_t sub_1B25E49D8()
{
  sub_1B25E9704();
  sub_1B25E9494();

  return sub_1B25E9724();
}

unint64_t sub_1B25E4D18@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = AttributeScopes.AccessibilityAttributes.HeadingLevelAttribute.HeadingLevel.init(rawValue:)([a1 integerValue], &v5);
  v4 = v5;
  if (v5 == 7)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t static AttributeScopes.AccessibilityAttributes.TextualContextAttribute.decodeMarkdown(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B25E9734();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_1B25E96C4();
    AttributeScopes.AccessibilityAttributes.TextualContextAttribute.TextualContext.init(rawValue:)(&v8);
    v6 = v8;
    if (v8 == 8)
    {
      v6 = 0;
    }

    *a2 = v6;
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

uint64_t AttributeScopes.AccessibilityAttributes.TextualContextAttribute.TextualContext.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B25E9694();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1B25E5094(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *v4;
  v6 = 0xE500000000000000;
  v7 = 0x6873646165727073;
  v8 = 0xEB00000000746565;
  if (v5 != 6)
  {
    v7 = 0x636F725064726F77;
    v8 = 0xEE00676E69737365;
  }

  v9 = 0x766974617272616ELL;
  if (v5 == 4)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x6F43656372756F73;
    v10 = 0xEA00000000006564;
  }

  if (*v4 <= 5u)
  {
    v7 = v9;
    v8 = v10;
  }

  v11 = 0x74737953656C6966;
  v12 = 0xE900000000000067;
  if (v5 == 2)
  {
    v12 = 0xEA00000000006D65;
  }

  else
  {
    v11 = 0x6E6967617373656DLL;
  }

  v13 = 0x656C6F736E6F63;
  if (*v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v13 = 0x6E69616C70;
  }

  if (*v4 > 1u)
  {
    v6 = v12;
  }

  else
  {
    v11 = v13;
  }

  if (*v4 <= 3u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (*v4 <= 3u)
  {
    v15 = v6;
  }

  else
  {
    v15 = v8;
  }

  sub_1B25E7924(1, v14, v15, a4);

  sub_1B25E7A70();
  sub_1B25E9604();

  v17 = 0xE500000000000000;
  v18 = 0x6873646165727073;
  v19 = 0xEB00000000746565;
  if (v5 != 6)
  {
    v18 = 0x636F725064726F77;
    v19 = 0xEE00676E69737365;
  }

  v20 = 0x766974617272616ELL;
  if (v5 == 4)
  {
    v21 = 0xE900000000000065;
  }

  else
  {
    v20 = 0x6F43656372756F73;
    v21 = 0xEA00000000006564;
  }

  if (v5 <= 5)
  {
    v18 = v20;
    v19 = v21;
  }

  v22 = 0x74737953656C6966;
  v23 = 0xE900000000000067;
  if (v5 == 2)
  {
    v23 = 0xEA00000000006D65;
  }

  else
  {
    v22 = 0x6E6967617373656DLL;
  }

  v24 = 0x656C6F736E6F63;
  if (v5)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v24 = 0x6E69616C70;
  }

  if (v5 > 1)
  {
    v17 = v23;
  }

  else
  {
    v22 = v24;
  }

  if (v5 <= 3)
  {
    v25 = v22;
  }

  else
  {
    v25 = v18;
  }

  if (v5 <= 3)
  {
    v26 = v17;
  }

  else
  {
    v26 = v19;
  }

  v27 = sub_1B25E79C0(1uLL, v25, v26, v16);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = MEMORY[0x1B274C2F0](v27, v29, v31, v33);
  v36 = v35;

  MEMORY[0x1B274C350](v34, v36);

  v38 = sub_1B25E9524();
  sub_1B25E94D4();

  return v38;
}

unint64_t static AttributeScopes.AccessibilityAttributes.TextualContextAttribute.value(for:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B25E9474();
  result = sub_1B25E546C(v2, v3, &v6);
  v5 = v6;
  if (v6 == 8)
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

unint64_t sub_1B25E546C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if ((sub_1B25E9514() & 1) == 0)
  {

    v28 = 8;
    goto LABEL_11;
  }

  v6 = sub_1B25E94B4();
  v8 = sub_1B25E79C0(v6, a1, a2, v7);
  v10 = v9;

  result = sub_1B25E95E4();
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = result;
  }

  if (v13 >> 14 < v8 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1B25E95F4();
    v14 = sub_1B25E95D4();
    v16 = v15;

    result = sub_1B25E95E4();
    if (v17)
    {
      result = v10;
    }

    if (v10 >> 14 >= result >> 14)
    {
      v18 = sub_1B25E95F4();
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = MEMORY[0x1B274C2F0](v18, v20, v22, v24);
      v27 = v26;

      v29[0] = v14;
      v29[1] = v16;

      MEMORY[0x1B274C350](v25, v27);

      result = AttributeScopes.AccessibilityAttributes.TextualContextAttribute.TextualContext.init(rawValue:)(v29);
      v28 = v29[0];
LABEL_11:
      *a3 = v28;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t AttributeScopes.AccessibilityAttributes.TextualContextAttribute.TextualContext.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E69616C70;
  v3 = 0x6873646165727073;
  if (v1 != 6)
  {
    v3 = 0x636F725064726F77;
  }

  v4 = 0x766974617272616ELL;
  if (v1 != 4)
  {
    v4 = 0x6F43656372756F73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74737953656C6966;
  if (v1 != 2)
  {
    v5 = 0x6E6967617373656DLL;
  }

  if (*v0)
  {
    v2 = 0x656C6F736E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B25E5794@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AttributeScopes.AccessibilityAttributes.TextualContextAttribute.TextualContext.init(rawValue:)(a1);
}

void sub_1B25E57A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E69616C70;
  v5 = 0xEB00000000746565;
  v6 = 0x6873646165727073;
  if (v2 != 6)
  {
    v6 = 0x636F725064726F77;
    v5 = 0xEE00676E69737365;
  }

  v7 = 0x766974617272616ELL;
  if (v2 == 4)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x6F43656372756F73;
    v8 = 0xEA00000000006564;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEA00000000006D65;
  v10 = 0x74737953656C6966;
  if (v2 != 2)
  {
    v10 = 0x6E6967617373656DLL;
    v9 = 0xE900000000000067;
  }

  if (*v1)
  {
    v4 = 0x656C6F736E6F63;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1B25E5A70@<X0>(char *a1@<X8>)
{
  v2 = sub_1B25E9474();
  result = sub_1B25E546C(v2, v3, &v6);
  v5 = v6;
  if (v6 == 8)
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

double sub_1B25E5D18@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  [a1 doubleValue];
  result = v3 + -1.0;
  *a2 = result;
  return result;
}

uint64_t sub_1B25E5F9C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }

  return sub_1B25E9474();
}

uint64_t sub_1B25E6044(char *a1, void (*a2)(void))
{
  v4 = *a1;
  a2();
  v2 = sub_1B25E9464();

  return v2;
}

uint64_t sub_1B25E609C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *v4;
  v6 = 0xE700000000000000;
  v7 = 0x746C7561666564;
  if (v5 != 1)
  {
    v7 = 1751607656;
    v6 = 0xE400000000000000;
  }

  if (*v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 7827308;
  }

  if (*v4)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  sub_1B25E7924(1, v8, v9, a4);

  sub_1B25E7A70();
  sub_1B25E9604();

  v11 = 0xE700000000000000;
  v12 = 0x746C7561666564;
  if (v5 != 1)
  {
    v12 = 1751607656;
    v11 = 0xE400000000000000;
  }

  if (v5)
  {
    v13 = v12;
  }

  else
  {
    v13 = 7827308;
  }

  if (v5)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  v15 = sub_1B25E79C0(1uLL, v13, v14, v10);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = MEMORY[0x1B274C2F0](v15, v17, v19, v21);
  v24 = v23;

  MEMORY[0x1B274C350](v22, v24);

  v26 = sub_1B25E9524();
  sub_1B25E94D4();

  return v26;
}

unint64_t static AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.value(for:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B25E9474();
  result = sub_1B25E62E0(v2, v3, &v6);
  v5 = v6;
  if (v6 == 3)
  {
    v5 = 1;
  }

  *a1 = v5;
  return result;
}

unint64_t sub_1B25E62E0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if ((sub_1B25E9514() & 1) == 0)
  {

    v26 = 3;
LABEL_13:
    *a3 = v26;
    return result;
  }

  v6 = sub_1B25E94B4();
  v8 = sub_1B25E79C0(v6, a1, a2, v7);
  v10 = v9;

  result = sub_1B25E95E4();
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = result;
  }

  if (v13 >> 14 < v8 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1B25E95F4();
    sub_1B25E95D4();

    result = sub_1B25E95E4();
    if (v14)
    {
      result = v10;
    }

    if (v10 >> 14 >= result >> 14)
    {
      v15 = sub_1B25E95F4();
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = MEMORY[0x1B274C2F0](v15, v17, v19, v21);
      v24 = v23;

      MEMORY[0x1B274C350](v22, v24);

      v25 = sub_1B25E9694();

      v26 = 3;
      if (v25 < 3)
      {
        v26 = v25;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B25E9694();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.rawValue.getter()
{
  v1 = 0x746C7561666564;
  if (*v0 != 1)
  {
    v1 = 1751607656;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_1B25E658C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  if (v2 != 1)
  {
    v4 = 1751607656;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7827308;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746C7561666564;
  if (*a2 != 1)
  {
    v8 = 1751607656;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7827308;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B25E96B4();
  }

  return v11 & 1;
}

uint64_t sub_1B25E6678()
{
  v1 = *v0;
  sub_1B25E9704();
  sub_1B25E9494();

  return sub_1B25E9724();
}

uint64_t sub_1B25E670C()
{
  *v0;
  *v0;
  sub_1B25E9494();
}

uint64_t sub_1B25E678C()
{
  v1 = *v0;
  sub_1B25E9704();
  sub_1B25E9494();

  return sub_1B25E9724();
}

uint64_t sub_1B25E681C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.init(rawValue:)(a1);
}

void sub_1B25E6828(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  if (v2 != 1)
  {
    v5 = 1751607656;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7827308;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B25E6A74(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *a1;
  a4();
  v4 = sub_1B25E9464();

  return v4;
}

unint64_t sub_1B25E6ACC@<X0>(char *a1@<X8>)
{
  v2 = sub_1B25E9474();
  result = sub_1B25E62E0(v2, v3, &v6);
  v5 = v6;
  if (v6 == 3)
  {
    v5 = 1;
  }

  *a1 = v5;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1B25E6BAC()
{
  result = qword_1EB7EE3C0;
  if (!qword_1EB7EE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE3C0);
  }

  return result;
}

unint64_t sub_1B25E6C04()
{
  result = qword_1EB7EE3C8;
  if (!qword_1EB7EE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE3C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B25E6CE0()
{
  result = qword_1EB7EE3E0;
  if (!qword_1EB7EE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE3E0);
  }

  return result;
}

unint64_t sub_1B25E6D38()
{
  result = qword_1EB7EE3E8;
  if (!qword_1EB7EE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE3E8);
  }

  return result;
}

unint64_t sub_1B25E6DA8()
{
  result = qword_1EB7EE150;
  if (!qword_1EB7EE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE150);
  }

  return result;
}

unint64_t sub_1B25E6E00()
{
  result = qword_1EB7EE158;
  if (!qword_1EB7EE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE158);
  }

  return result;
}

uint64_t _s23AccessibilityAttributesVwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s23AccessibilityAttributesVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t _s23AccessibilityAttributesV21HeadingLevelAttributeO12HeadingLevelOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s23AccessibilityAttributesV21HeadingLevelAttributeO12HeadingLevelOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s23AccessibilityAttributesV23TextualContextAttributeO14TextualContextOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s23AccessibilityAttributesV23TextualContextAttributeO14TextualContextOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s23AccessibilityAttributesV29AnnouncementPriorityAttributeO20AnnouncementPriorityOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s23AccessibilityAttributesV29AnnouncementPriorityAttributeO20AnnouncementPriorityOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B25E7324()
{
  result = qword_1EB7EE3F0;
  if (!qword_1EB7EE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE3F0);
  }

  return result;
}

unint64_t sub_1B25E7378()
{
  result = qword_1EB7EE3F8;
  if (!qword_1EB7EE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE3F8);
  }

  return result;
}

unint64_t sub_1B25E73CC()
{
  result = qword_1EB7EE400;
  if (!qword_1EB7EE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE400);
  }

  return result;
}

unint64_t sub_1B25E7420()
{
  result = qword_1EB7EE408;
  if (!qword_1EB7EE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE408);
  }

  return result;
}

unint64_t sub_1B25E7474()
{
  result = qword_1EB7EE410;
  if (!qword_1EB7EE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE410);
  }

  return result;
}

unint64_t sub_1B25E74C8()
{
  result = qword_1EB7EE418;
  if (!qword_1EB7EE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE418);
  }

  return result;
}

unint64_t sub_1B25E751C()
{
  result = qword_1EB7EE420;
  if (!qword_1EB7EE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE420);
  }

  return result;
}

unint64_t sub_1B25E7570()
{
  result = qword_1EB7EE428;
  if (!qword_1EB7EE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE428);
  }

  return result;
}

unint64_t sub_1B25E75C4()
{
  result = qword_1EB7EE430;
  if (!qword_1EB7EE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE430);
  }

  return result;
}

unint64_t sub_1B25E7618()
{
  result = qword_1EB7EE438;
  if (!qword_1EB7EE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE438);
  }

  return result;
}

unint64_t sub_1B25E766C()
{
  result = qword_1EB7EE440;
  if (!qword_1EB7EE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE440);
  }

  return result;
}

unint64_t sub_1B25E76C0()
{
  result = qword_1EB7EE448;
  if (!qword_1EB7EE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE448);
  }

  return result;
}

unint64_t sub_1B25E7714()
{
  result = qword_1EB7EE450;
  if (!qword_1EB7EE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE450);
  }

  return result;
}

uint64_t sub_1B25E7768(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7EE3D8, &qword_1B25EB740);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B25E77D4()
{
  result = qword_1EB7EE468;
  if (!qword_1EB7EE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE468);
  }

  return result;
}

unint64_t sub_1B25E7828()
{
  result = qword_1EB7EE470;
  if (!qword_1EB7EE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE470);
  }

  return result;
}

unint64_t sub_1B25E787C()
{
  result = qword_1EB7EE478;
  if (!qword_1EB7EE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE478);
  }

  return result;
}

unint64_t sub_1B25E78D0()
{
  result = qword_1EB7EE480;
  if (!qword_1EB7EE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE480);
  }

  return result;
}

uint64_t sub_1B25E7924(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_1B25E94C4();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

uint64_t sub_1B25E79C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE69100](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_1B25E94C4();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

unint64_t sub_1B25E7A70()
{
  result = qword_1EB7EE148;
  if (!qword_1EB7EE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE148);
  }

  return result;
}

uint64_t AXBrailleTable.language.getter()
{
  v1 = [v0 language];
  v2 = sub_1B25E9474();
  v4 = v3;

  return MEMORY[0x1EEDC5280](v2, v4);
}

void AXBrailleTranslationResult.inputIndex(forResultIndex:)(unint64_t a1)
{
  v3 = sub_1B25E9464();
  v4 = [v1 valueForKey_];

  if (v4)
  {
    sub_1B25E9614();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1B25E7E2C(v20);
  }

  v5 = [v1 resultString];
  v6 = sub_1B25E9474();
  v8 = v7;

  v9 = sub_1B25E7E94(v6, v8, a1);
  LOBYTE(v5) = v10;

  if ((v5 & 1) != 0 || v9 < 0 || ((v11 = [v1 locationMap], sub_1B25E7EF8(), v12 = sub_1B25E9594(), v11, v12 >> 62) ? (v13 = sub_1B25E9684()) : (v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v9 >= v13))
  {
  }

  else
  {
    v14 = [v1 locationMap];
    v15 = sub_1B25E9594();

    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B274C490](v9, v15);
      goto LABEL_15;
    }

    if (v9 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * v9 + 32);
LABEL_15:
      v17 = v16;

      [v17 integerValue];

      sub_1B25E7F44();

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1B25E7E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE488, &qword_1B25EC290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B25E7E94(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= a3 >> 14)
  {
    return sub_1B25E9504();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B25E7EF8()
{
  result = qword_1ED6BC7F0;
  if (!qword_1ED6BC7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6BC7F0);
  }

  return result;
}

uint64_t sub_1B25E7F44()
{
  result = sub_1B25E94F4();
  if ((v1 & 1) == 0)
  {

    return sub_1B25E94A4();
  }

  return result;
}

uint64_t AccessibilityNotification.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1B25E9704();
  MEMORY[0x1B274C580](v1);
  return sub_1B25E9724();
}

unint64_t sub_1B25E80C4()
{
  result = qword_1EB7EE140;
  if (!qword_1EB7EE140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7EE140);
  }

  return result;
}

Swift::Void __swiftcall _AccessibilityNotifications.post()()
{
  v2 = v1;
  v3 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v11 - v7;
  (*(v2 + 16))(&v12, v3, v2);
  v9 = dword_1B25EC460[v12];
  (*(v2 + 24))(v3, v2);
  v10 = sub_1B25E96A4();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  _AXPostPlatformNotification(v9, v10);
  swift_unknownObjectRelease();
}

uint64_t AccessibilityNotification.LayoutChanged.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  return sub_1B25E85D8(a1, a2);
}

uint64_t sub_1B25E8334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B25E8568(v3, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE488, &qword_1B25EC290);
  v5 = sub_1B25E96F4();
  _AXPostPlatformNotification(a3, v5);
  return swift_unknownObjectRelease();
}

uint64_t _s13Accessibility0A12NotificationO12AnnouncementVyAE10Foundation16AttributedStringVcfC_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B25E93D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B25E80C4();
  (*(v5 + 16))(v8, a1, v4);
  v9 = sub_1B25E95C4();
  result = (*(v5 + 8))(a1, v4);
  *a2 = v9;
  return result;
}

void _s13Accessibility0A12NotificationO12AnnouncementVyAESScfC_0(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v3 = sub_1B25E9464();

  v4 = [v2 initWithString_];

  *a1 = v4;
}

uint64_t sub_1B25E8568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE488, &qword_1B25EC290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B25E85D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE488, &qword_1B25EC290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B25E864C()
{
  result = qword_1EB7EE490;
  if (!qword_1EB7EE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7EE490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityNotification.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityNotification.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B25E8858(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B25E88B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1B25E8918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B25E8960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B25E8A70()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1B25E8B64;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B25E8B64()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1B25E8C98;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B25E8C80;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B25E8C98()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void sub_1B25E8CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE498, &qword_1B25EC480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1B25E8FCC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B25E8F20;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  AXOpenSettingsFeature(a2, v11);
  _Block_release(v11);
}

uint64_t sub_1B25E8EAC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE498, &qword_1B25EC480);
    return sub_1B25E95A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE498, &qword_1B25EC480);
    return sub_1B25E95B4();
  }
}

void sub_1B25E8F20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1B25E8FCC(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7EE498, &qword_1B25EC480) - 8) + 80);

  return sub_1B25E8EAC(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AXAnimatedImagesEnabled_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getAXUIClientClass_block_invoke_cold_1(v0);
}

void AXColorGetNameForHue_cold_1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a2;
  _os_log_error_impl(&dword_1B25D2000, log, OS_LOG_TYPE_ERROR, "Hue value should be in range [0..1f], got %f", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

NSSize NSSizeFromString(NSString *aString)
{
  MEMORY[0x1EEDC7108](aString);
  result.height = v2;
  result.width = v1;
  return result;
}