BOOL AXColorsProbablyEqual(void *a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v11 = 0.0;
    v12 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v4 = a2;
    [a1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
    [v4 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];

    return vabdd_f64(v12, v8) < 0.001 && vabdd_f64(v11, v7) < 0.001 && vabdd_f64(v10, v6) < 0.001 && vabdd_f64(v9, v5) < 0.001;
  }

  return result;
}

uint64_t sub_1C0DFDF24()
{
  v1 = sub_1C0E507F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C0DFDFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0E509C4();
  *a1 = result;
  return result;
}

uint64_t sub_1C0DFE008()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0DFE040()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0DFE078@<X0>(void *a1@<X8>)
{
  result = sub_1C0E509A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C0DFE0D4()
{
  sub_1C0E50994();
  sub_1C0E4C6C8();
  return swift_getWitnessTable();
}

uint64_t sub_1C0DFE12C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0DFE16C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0DFE1B8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C0DFE238()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C0E50A54();
  return swift_getWitnessTable();
}

uint64_t sub_1C0DFE2D4(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for GlassWrapperView(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1C0DFE358()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C0E50A54();
  return swift_getWitnessTable();
}

id getBFFStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBFFStyleClass_softClass;
  v7 = getBFFStyleClass_softClass;
  if (!getBFFStyleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBFFStyleClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getBFFStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0DFFC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E812DCF0;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSBSIsReachabilityEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E812DD08;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBSIsReachabilityEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSIsReachabilityEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

BOOL AXInvertColorsIsSystemWideDarkModeEnabled()
{
  v0 = [objc_alloc(MEMORY[0x1E69DEC80]) initWithDelegate:0];
  [v0 modeValue];
  if (UISUserInterfaceStyleModeValueIsAutomatic())
  {
    v1 = [v0 override];
  }

  else
  {
    v1 = [v0 modeValue];
  }

  v2 = v1 == 2;

  return v2;
}

void AXInvertColorsSetSystemWideDarkModeEnabled(int a1)
{
  if (AXInvertColorsIsSystemWideDarkModeEnabled() != a1)
  {
    v1 = [MEMORY[0x1E69DD240] sharedInstance];
    [v1 toggleCurrentStyle];
  }
}

__CFString *AXInvertColorsUserInterfaceStyleDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"?";
  }

  else
  {
    return off_1E812DD48[a1];
  }
}

void sub_1C0E02364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return NSRequestConcreteImplementation();
}

id sharedBFFStyle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getBFFStyleClass_softClass_0;
  v8 = getBFFStyleClass_softClass_0;
  if (!getBFFStyleClass_softClass_0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getBFFStyleClass_block_invoke_0;
    v4[3] = &unk_1E812DCD0;
    v4[4] = &v5;
    __getBFFStyleClass_block_invoke_0(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedStyle];

  return v2;
}

void sub_1C0E02D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E812DDB8;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

id AccessibilityReaderObjc_Soft()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAccessibilityReaderObjcSymbolLoc_ptr;
  v8 = getAccessibilityReaderObjcSymbolLoc_ptr;
  if (!getAccessibilityReaderObjcSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getAccessibilityReaderObjcSymbolLoc_block_invoke;
    v4[3] = &unk_1E812DCD0;
    v4[4] = &v5;
    __getAccessibilityReaderObjcSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = [AXUISettingsInstructionsView textView:primaryActionForTextItem:defaultAction:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = v0();

  return v1;
}

void *__getAccessibilityReaderObjcSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityReaderServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityReaderServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E812DF38;
    v7 = 0;
    AccessibilityReaderServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AccessibilityReaderServicesLibraryCore_frameworkLibrary;
    if (AccessibilityReaderServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = AccessibilityReaderServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AccessibilityReaderObjc");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAccessibilityReaderObjcSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityReaderServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityReaderServicesLibraryCore_frameworkLibrary = result;
  return result;
}

CGFloat AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside()
{
  v0 = AXUIKeyboardScreenFrame();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  remainder.origin.x = v0;
  remainder.origin.y = v1;
  remainder.size.width = v3;
  remainder.size.height = v5;
  v7 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v8 = [v7 firstResponder];

  v9 = [v8 inputAccessoryView];
  if (v9)
  {
    v34.origin.x = v0;
    v34.origin.y = v2;
    v34.size.width = v4;
    v34.size.height = v6;
    if (!CGRectIsEmpty(v34))
    {
      [v9 accessibilityFrame];
      v38.origin.x = v10;
      v38.origin.y = v11;
      v38.size.width = v12;
      v38.size.height = v13;
      v35.origin.x = v0;
      v35.origin.y = v2;
      v35.size.width = v4;
      v35.size.height = v6;
      v14 = CGRectContainsRect(v35, v38);
      LOBYTE(slice.origin.x) = 0;
      objc_opt_class();
      v15 = __UIAccessibilityCastAsClass();
      v16 = v15;
      v17 = v15;
      if (v15 != 0 && !v14)
      {
        v18 = v15;
        do
        {
          v14 = v18 == v9;
          v17 = [v18 superview];

          if (!v17)
          {
            break;
          }

          v19 = v18 == v9;
          v18 = v17;
        }

        while (!v19);
      }

      if (v14)
      {
        v20 = [v9 window];
        [v9 frame];
        [v9 convertRect:0 toView:?];
        [v20 convertRect:0 toWindow:?];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v36.origin.x = v22;
        v36.origin.y = v24;
        v36.size.width = v26;
        v36.size.height = v28;
        v39.origin.x = v0;
        v39.origin.y = v2;
        v39.size.width = v4;
        v39.size.height = v6;
        if (CGRectIntersectsRect(v36, v39))
        {
          v29 = v28 + v24 - v2;
          if (v29 < 0.0)
          {
            _AXAssert();
          }

          memset(&slice, 0, sizeof(slice));
          if (v29 >= 0.0)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0.0;
          }

          v37.origin.x = v0;
          v37.origin.y = v2;
          v37.size.width = v4;
          v37.size.height = v6;
          CGRectDivide(v37, &slice, &remainder, v30, CGRectMinYEdge);
        }

        else
        {
          _AXLogWithFacility();
        }
      }
    }
  }

  return remainder.origin.x;
}

double AXUIKeyboardScreenFrame()
{
  v0 = AXUIKeyboardWindow();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 rootViewController];
    NSClassFromString(&cfstr_Uiinputwindowc.isa);
    if (objc_opt_isKindOfClass())
    {
      [v2 safeCGRectForKey:@"visibleFrame"];
      v4 = v3;
    }

    else
    {
      v5 = [MEMORY[0x1E69DCBB8] activeKeyboard];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [MEMORY[0x1E69DCBB8] activeKeyboard];
      v16.origin.x = v7;
      v16.origin.y = v9;
      v16.size.width = v11;
      v16.size.height = v13;
      *&v4 = UIAccessibilityConvertFrameToScreenCoordinates(v16, v14);
    }
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
  }

  return v4;
}

id AXUIKeyboardWindow()
{
  if (AXUIKeyboardIsOOP())
  {
    v0 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v1 = [v0 window];

    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 isExtensionInputMode];

  v5 = [NSClassFromString(&cfstr_Uiremotekeyboa.isa) safeBoolForKey:@"enabled"];
  if ((v4 & 1) == 0 && !v5)
  {
LABEL_6:
    v1 = AXUIFirstTextEffectsWindow();
    goto LABEL_13;
  }

  v6 = [NSClassFromString(&cfstr_Uiremotekeyboa.isa) safeValueForKey:@"sharedRemoteKeyboards"];
  v7 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v8 = [v7 safeValueForKey:@"inputViews"];
  v9 = __UIAccessibilitySafeClass();

  v10 = [v9 safeValueForKey:@"inputView"];
  v1 = 0;
  if ([v6 safeBoolForKey:@"keyboardVisible"] && v10)
  {
    if ([v9 safeBoolForKey:@"isInputViewPlaceholder"])
    {
      v1 = 0;
    }

    else
    {
      v1 = [v6 safeValueForKey:@"keyboardWindow"];
    }
  }

LABEL_13:

  return v1;
}

double AXUIKeyboardVisibleInputScreenFrame()
{
  v0 = AXUIKeyboardWindow();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 rootViewController];
    [v2 safeCGRectForKey:@"visibleInputViewFrame"];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
  }

  return v4;
}

id AXUIFirstTextEffectsWindow()
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v0 = [*MEMORY[0x1E69DDA98] connectedScenes];
  v1 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [MEMORY[0x1E69DD0A8] activeTextEffectsWindowForWindowScene:v5];
          if (v6)
          {
            v7 = v6;
            goto LABEL_12;
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

uint64_t AXUIKeyboardIsOOP()
{
  if ([MEMORY[0x1E69DCBB8] safeBoolForKey:@"usesInputSystemUI"])
  {
    return 1;
  }

  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6988718]];

  return v3;
}

id AXUIAllKeyboardWindows()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = [*MEMORY[0x1E69DDA98] connectedScenes];
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [MEMORY[0x1E69DD0A8] activeTextEffectsWindowForWindowScene:v6];
          [v0 axSafelyAddObject:v7];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v8 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v9 = [v8 currentInputMode];
  v10 = [v9 isExtensionInputMode];

  v11 = [NSClassFromString(&cfstr_Uiremotekeyboa.isa) safeBoolForKey:@"enabled"];
  if ((v10 & 1) != 0 || v11)
  {
    v12 = [NSClassFromString(&cfstr_Uiremotekeyboa.isa) safeValueForKey:@"sharedRemoteKeyboards"];
    v13 = [v12 safeValueForKey:@"keyboardWindow"];
    [v0 axSafelyAddObject:v13];
  }

  v14 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v15 = [v14 window];

  if (v15 && ([v0 containsObject:v15] & 1) == 0)
  {
    [v0 addObject:v15];
  }

  return v0;
}

id AXUISentenceTextRangeForInput(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = v5;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 start];
      v10 = [v8 rangeEnclosingPosition:v9 withGranularity:2 inDirection:2];
LABEL_6:

      goto LABEL_26;
    }

    v9 = [v5 beginningOfDocument];
    v11 = [v5 endOfDocument];
    v12 = [v5 textRangeFromPosition:v9 toPosition:v11];

    v13 = [v5 textInRange:v12];
    v14 = [MEMORY[0x1E69887E0] sharedInstance];
    v15 = [v14 ignoreLogging];

    if ((v15 & 1) == 0)
    {
      v16 = [MEMORY[0x1E69887E0] identifier];
      v17 = AXLoggerForFacility();

      v18 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = AXColorizeFormatLog();
        v38 = v12;
        v40 = v13;
        v20 = _AXStringForArgs();
        if (os_log_type_enabled(v17, v18))
        {
          *buf = 138543362;
          v45 = v20;
          _os_log_impl(&dword_1C0DFB000, v17, v18, "%{public}@", buf, 0xCu);
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v6 start];
      v22 = [v5 offsetFromPosition:v9 toPosition:v21];

      v23 = [v13 ax_sentenceFromPosition:v22 inDirection:{v22 != 0, v38, v40}];
      v25 = v24;
      v43 = v12;
      if (v23 + v24 <= v22)
      {
        v26 = [v13 ax_sentenceFromPosition:v22 inDirection:0];
        if (v23 != 0x7FFFFFFF)
        {
          v25 = v27;
          v23 = v26;
        }
      }

      v28 = [MEMORY[0x1E69887E0] sharedInstance];
      v29 = [v28 ignoreLogging];

      if ((v29 & 1) == 0)
      {
        v30 = [MEMORY[0x1E69887E0] identifier];
        v31 = AXLoggerForFacility();

        v32 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v31, v32))
        {
          AXColorizeFormatLog();
          v33 = type = v32;
          v48.location = v23;
          v48.length = v25;
          v39 = NSStringFromRange(v48);
          v42 = v33;
          v34 = _AXStringForArgs();

          if (os_log_type_enabled(v31, type))
          {
            *buf = 138543362;
            v45 = v34;
            _os_log_impl(&dword_1C0DFB000, v31, type, "%{public}@", buf, 0xCu);
          }
        }
      }

      v12 = v43;
      if (v23 != 0x7FFFFFFF)
      {
        v36 = [v5 positionFromPosition:v9 offset:v23];
        v37 = [v5 positionFromPosition:v9 offset:v23 + v25];
        v10 = [v5 textRangeFromPosition:v36 toPosition:v37];

        goto LABEL_6;
      }
    }
  }

  v10 = 0;
LABEL_26:

  return v10;
}

id AXUIRepresentedKeyboardElement()
{
  if (AXUIRepresentedKeyboardElement_onceToken != -1)
  {
    AXUIRepresentedKeyboardElement_cold_1();
  }

  v1 = AXUIRepresentedKeyboardElement_RepresentedKeyboardElement;

  return v1;
}

uint64_t __AXUIRepresentedKeyboardElement_block_invoke()
{
  AXUIRepresentedKeyboardElement_RepresentedKeyboardElement = [objc_alloc(MEMORY[0x1E6988D80]) initWithUUID:@"KeyboardSingleton" andRemotePid:2147483637 andContextId:0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AXUIKeyboardIsOnScreen()
{
  v40 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  if (!AXUIKeyboardIsOOP() || ![MEMORY[0x1E69DCBB8] serviceRole] || !-[UIView isAutomatic](v0, "isAutomatic"))
  {
    v34 = v0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v3 = AXUIAllKeyboardWindows();
    v4 = [v3 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v36;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v36 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v35 + 1) + 8 * i);
          NSClassFromString(&cfstr_Uiremotekeyboa_0.isa);
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 rootViewController];
            v10 = [v9 safeValueForKey:@"inputViewSet"];
            v11 = [v10 safeValueForKey:@"inputView"];

            if (v11)
            {

              v2 = 1;
              v0 = v34;
              goto LABEL_27;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    v13 = [v12 currentInputMode];
    v14 = [v13 isExtensionInputMode];

    v15 = [NSClassFromString(&cfstr_Uiremotekeyboa.isa) safeBoolForKey:@"enabled"];
    x = AXUIKeyboardScreenFrame();
    y = v17;
    width = v19;
    height = v21;
    v0 = v34;
    v23 = [(UIView *)v34 window];
    if (v23)
    {
      v24 = v23;
      v25 = AXUIKeyboardWindow();
      if (v25)
      {
      }

      else
      {
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        IsEmpty = CGRectIsEmpty(v41);

        if (IsEmpty)
        {
          [(UIView *)v34 bounds];
          v43 = UIAccessibilityConvertFrameToScreenCoordinates(v42, v34);
          x = v43.origin.x;
          y = v43.origin.y;
          width = v43.size.width;
          height = v43.size.height;
        }
      }
    }

    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v27 = CGRectIsEmpty(v44);
    if (v34)
    {
      v28 = v27;
      if ([(UIView *)v34 isActive])
      {
        v29 = [(UIView *)v34 window];
        v30 = v29;
        if (v28 || ((v29 != 0) | (v14 | v15) & 1) == 0)
        {
        }

        else
        {
          v31 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v31 bounds];
          v46.origin.x = x;
          v46.origin.y = y;
          v46.size.width = width;
          v46.size.height = height;
          v32 = CGRectIntersectsRect(v45, v46);

          if (v32)
          {
            v2 = [(UIView *)v34 isMinimized]^ 1;
            goto LABEL_27;
          }
        }
      }
    }

    v2 = 0;
    goto LABEL_27;
  }

  v1 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v2 = [v1 keyboardVisible];

LABEL_27:
  return v2;
}

uint64_t UIKeyboardCacheVersion()
{
  if (UIKeyboardCacheVersion_onceToken != -1)
  {
    UIKeyboardCacheVersion_cold_1();
  }

  return UIKeyboardCacheVersion_buildVersion;
}

void __UIKeyboardCacheVersion_block_invoke()
{
  v0 = MGCopyAnswerWithError();
  UIKeyboardCacheVersion_buildVersion = [v0 hash];
}

id UIKeyboardCachePath()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Caches", @"com.apple.keyboards", 0}];
  v1 = [MEMORY[0x1E696AEC0] pathWithComponents:v0];

  return v1;
}

void AXUIPurgeKeyboardCache()
{
  v0 = objc_alloc(MEMORY[0x1E698B680]);
  v1 = UIKeyboardCachePath();
  if (UIKeyboardCacheVersion_onceToken != -1)
  {
    UIKeyboardCacheVersion_cold_1();
  }

  v2 = [v0 initWithPath:v1 version:UIKeyboardCacheVersion_buildVersion];

  [v2 purge];
}

id AXColorStringForColor(void *a1, char a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 CGColor])
    {
      v4 = AXNameFromColor([v3 CGColor]);
      v5 = [v4 mutableCopy];

      if (a2)
      {
        if (AXColorStringForColor_onceToken != -1)
        {
          AXColorStringForColor_cold_2();
        }

        Luma = AXColorGetLuma(v3);
        v7 = AXColorStringForColor__lumaNumberFormatter;
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtad_u64_f64(Luma * 100.0)];
        v9 = [v7 stringFromNumber:v8];

        [v5 appendFormat:@" %@", v9];
      }

      if (v5)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithString:v5];
        goto LABEL_17;
      }

      v23 = AXLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        AXColorStringForColor_cold_3(v3, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    else
    {
      v5 = AXLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        AXColorStringForColor_cold_4(v3, v5, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  else
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AXColorStringForColor_cold_1(v3, v5, v11, v12, v13, v14, v15, v16);
    }
  }

  v10 = 0;
LABEL_17:

  return v10;
}

uint64_t __AXColorStringForColor_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = AXColorStringForColor__lumaNumberFormatter;
  AXColorStringForColor__lumaNumberFormatter = v0;

  v2 = AXColorStringForColor__lumaNumberFormatter;

  return [v2 setNumberStyle:1];
}

double AXColorGetLuma(void *a1)
{
  v5 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v2 = 0.0;
  [a1 getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  result = fmax(v2 * (v4 * 0.715200007 + v5 * 0.212599993 + v3 * 0.0722000003), 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

id AXSlightlyDarkerColorForColor(void *a1)
{
  v1 = a1;
  v2 = [v1 CGColor];
  ColorSpace = CGColorGetColorSpace(v2);
  Model = CGColorSpaceGetModel(ColorSpace);
  v5 = v1;
  v6 = v5;
  if (Model == kCGColorSpaceModelRGB)
  {
    Components = CGColorGetComponents(v2);
    v6 = [MEMORY[0x1E69DC888] colorWithRed:*Components + -0.25 green:Components[1] + -0.25 blue:Components[2] + -0.25 alpha:Components[3]];
  }

  return v6;
}

id AXSlightlyBrighterColorForColor(void *a1)
{
  v1 = a1;
  v13 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v10 = 0.0;
  if ([v1 getRed:&v13 green:&v12 blue:&v11 alpha:&v10])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithRed:v13 green:v12 blue:v11 alpha:v10];
    v8 = 0.0;
    v9 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if ([v2 getHue:&v9 saturation:&v8 brightness:&v7 alpha:&v6])
    {
      v3 = [MEMORY[0x1E69DC888] colorWithHue:v9 saturation:v8 brightness:v7 * 1.5 alpha:v6];
    }

    else
    {
      v3 = v1;
    }

    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

id _AXInvertColorForColor(void *a1, int a2)
{
  v3 = a1;
  ColorSpace = CGColorGetColorSpace([v3 CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  v6 = [MEMORY[0x1E69DC888] blackColor];
  if (Model == kCGColorSpaceModelRGB)
  {
    Components = CGColorGetComponents([v3 CGColor]);
    v10 = Components[3];
    if (!a2)
    {
      v10 = 1.0;
    }

    v8 = [MEMORY[0x1E69DC888] colorWithRed:1.0 - *Components green:1.0 - Components[1] blue:1.0 - Components[2] alpha:v10];
  }

  else
  {
    if (Model)
    {
      goto LABEL_10;
    }

    v13 = 1.0;
    v14 = 1.0;
    [v3 getWhite:&v14 alpha:&v13];
    v7 = 1.0;
    if (a2)
    {
      v7 = v13;
    }

    v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 - v14 alpha:v7];
  }

  v11 = v8;

  v6 = v11;
LABEL_10:

  return v6;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

AXUISettingsSetupPreferencesController *AXUISettingsCreatePreferencesController(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[AXUISettingsSetupPreferencesController alloc] initWithController:v4 title:v3];

  return v5;
}

AXUISettingsWelcomeController *AXUISettingsCreateWelcomeController(void *a1, void *a2, void *a3)
{
  v55[4] = *MEMORY[0x1E69E9840];
  v51 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [[AXUISettingsWelcomeController alloc] initWithTitle:v6 detailText:0 icon:0 contentLayout:3];

  v49 = v5;
  v8 = [v5 view];
  [(AXUISettingsWelcomeController *)v7 addChildViewController:v5];
  v9 = [(AXUISettingsWelcomeController *)v7 contentView];
  [v9 addSubview:v8];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(AXUISettingsWelcomeController *)v7 contentView];
  v52 = v7;
  v11 = [(AXUISettingsWelcomeController *)v7 view];
  [v11 frame];
  [v8 setFrame:?];

  v12 = [MEMORY[0x1E695DF70] array];
  v47 = [v8 topAnchor];
  v46 = [v10 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v55[0] = v45;
  v44 = [v8 bottomAnchor];
  v13 = [v10 bottomAnchor];
  v14 = [v44 constraintEqualToAnchor:v13];
  v55[1] = v14;
  v15 = [v8 leadingAnchor];
  v16 = [v10 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v55[2] = v17;
  v50 = v8;
  v18 = [v8 trailingAnchor];
  v53 = v10;
  v19 = [v10 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v55[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
  [v12 addObjectsFromArray:v21];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v49 ax_handlesOwnScrollingInSetup])
  {
    v22 = [v53 superview];
    v23 = [v22 superview];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = AXLogSettings();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        AXUISettingsCreateWelcomeController_cold_1(v52, v24);
      }
    }

    v48 = [v22 heightAnchor];
    v25 = [v23 heightAnchor];
    v26 = [v48 constraintEqualToAnchor:v25];
    v54[0] = v26;
    v27 = [v53 bottomAnchor];
    v28 = [v22 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v54[1] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v31 = v12;
    [v12 addObjectsFromArray:v30];

    v32 = v52;
    [(AXUISettingsWelcomeController *)v52 setScrollingDisabled:1];
    v34 = v50;
    v33 = v51;
  }

  else
  {
    v22 = [v49 table];
    v34 = v50;
    v35 = [v50 heightAnchor];
    [v22 contentSize];
    v23 = [v35 constraintGreaterThanOrEqualToConstant:v36];

    v33 = v51;
    v31 = v12;
    if (v22 && v23)
    {
      v37 = [v51 ax_buddyObservedTableViews];

      if (!v37)
      {
        v38 = [MEMORY[0x1E695DF70] array];
        [v51 ax_setBuddyObservedTableViews:v38];

        v39 = [MEMORY[0x1E695DF70] array];
        [v51 ax_setBuddyDynamicHeightConstraints:v39];
      }

      v40 = [v51 ax_buddyObservedTableViews];
      [v40 addObject:v22];

      v41 = [v51 ax_buddyDynamicHeightConstraints];
      [v41 addObject:v23];

      v42 = NSStringFromSelector(sel_contentSize);
      [v22 addObserver:v51 forKeyPath:v42 options:0 context:0];

      [v22 setScrollEnabled:0];
    }

    [v12 addObject:v23];
    v32 = v52;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v31];
  [v49 didMoveToParentViewController:v32];

  return v32;
}

uint64_t AXUISettingsHandleWelcomeControllerTableViewUpdate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = NSStringFromSelector(sel_contentSize);
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = v6;
    v11 = [v5 ax_buddyObservedTableViews];
    v12 = [v11 indexOfObject:v8];

    v9 = v12 != 0x7FFFFFFFFFFFFFFFLL;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v5 ax_buddyDynamicHeightConstraints];
      v14 = [v13 objectAtIndexedSubscript:v12];

      [v8 contentSize];
      [v14 setConstant:v15];

      v9 = 1;
    }
  }

LABEL_7:
  return v9;
}

void AXUISettingsCleanUpWelcomeControllerTableViewObservations(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 ax_buddyObservedTableViews];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = NSStringFromSelector(sel_contentSize);
        [v7 removeObserver:v1 forKeyPath:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1C0E092EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C0E0B684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C0E11474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id location)
{
  objc_destroyWeak(&a45);
  objc_destroyWeak(&a50);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a60);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C0E11960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void AXIteratePixelDataDeviceRGBWithBlock(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 CGImage];
  Width = CGImageGetWidth(v4);
  Height = CGImageGetHeight(v4);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = malloc_type_calloc(4 * Width * Height, 1uLL, 0x100004077774924uLL);
  v9 = CGBitmapContextCreate(v8, Width, Height, 8uLL, 4 * Width, DeviceRGB, 0x4001u);
  CGColorSpaceRelease(DeviceRGB);
  v20.size.width = Width;
  v20.size.height = Height;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  CGContextDrawImage(v9, v20, v4);
  CGContextRelease(v9);
  v19 = 0;
  if (Height)
  {
    v13 = 0;
    v14 = v8 + 3;
    while (!Width)
    {
LABEL_7:
      ++v13;
      v14 += 4 * Width;
      if (v13 == Height)
      {
        goto LABEL_8;
      }
    }

    v15 = 0;
    v16 = v14;
    while (1)
    {
      LOBYTE(v10) = *v16;
      *&v17 = v10;
      v18 = *&v17 / 255.0;
      LOBYTE(v17) = *(v16 - 3);
      LOBYTE(v11) = *(v16 - 2);
      LOBYTE(v12) = *(v16 - 1);
      v3[2](v3, v13, v15, &v19, v17 / 255.0, v11 / 255.0, v12 / 255.0, v18);
      if (v19)
      {
        break;
      }

      v16 += 4;
      if (Width == ++v15)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  free(v8);
}

id AXResizeImageWithSize(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a2, a3}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __AXResizeImageWithSize_block_invoke;
  v11[3] = &unk_1E812E168;
  v12 = v5;
  v13 = a2;
  v14 = a3;
  v7 = v5;
  v8 = [v6 imageWithActions:v11];
  v9 = [v8 imageWithRenderingMode:{objc_msgSend(v7, "renderingMode")}];

  return v9;
}

id _AXUIMakeTouch(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    v8 = [v6 window];
    v9 = v8;
    if (v8)
    {
      [v8 convertPoint:v7 fromView:{a1, a2}];
      v12 = v9;
      v13 = v7;
      AXPerformSafeBlock();
      v10 = v15[5];
    }

    else
    {
      _AXLogWithFacility();
      v10 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AXUIMakeTouchForTouchesBegan(void *a1)
{
  v1 = a1;
  [v1 bounds];
  MidX = CGRectGetMidX(v7);
  [v1 bounds];
  MidY = CGRectGetMidY(v8);
  v4 = _AXUIMakeTouch(MidX, MidY, 0, v1);

  return v4;
}

id AXUIMakeTouchForTouchesMoved(void *a1)
{
  v1 = a1;
  [v1 bounds];
  MidX = CGRectGetMidX(v7);
  [v1 bounds];
  MidY = CGRectGetMidY(v8);
  v4 = _AXUIMakeTouch(MidX, MidY, 1, v1);

  return v4;
}

id AXUIMakeTouchForTouchesEnded(void *a1)
{
  v1 = a1;
  [v1 bounds];
  MidX = CGRectGetMidX(v7);
  [v1 bounds];
  MidY = CGRectGetMidY(v8);
  v4 = _AXUIMakeTouch(MidX, MidY, 3, v1);

  return v4;
}

id AXUIMakeTouchForTouchesCancelled(void *a1)
{
  v1 = a1;
  [v1 bounds];
  MidX = CGRectGetMidX(v7);
  [v1 bounds];
  MidY = CGRectGetMidY(v8);
  v4 = _AXUIMakeTouch(MidX, MidY, 4, v1);

  return v4;
}

id getAXUIDisplayManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXUIDisplayManagerClass_softClass;
  v7 = getAXUIDisplayManagerClass_softClass;
  if (!getAXUIDisplayManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXUIDisplayManagerClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getAXUIDisplayManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0E13B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXUIDisplayManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AccessibilityUIServiceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUIServiceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E812E1B0;
    v6 = 0;
    AccessibilityUIServiceLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccessibilityUIServiceLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("AXUIDisplayManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIDisplayManagerClass_block_invoke_cold_1();
  }

  getAXUIDisplayManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUIServiceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUIServiceLibraryCore_frameworkLibrary = result;
  return result;
}

id AXLanguagesAvailableForPronuncationEditor()
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF70] array];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = [MEMORY[0x1E6989878] sharedInstance];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [MEMORY[0x1E69D9E90] sharedInstance];
  v3 = [v2 resourcesWithType:1 subType:1];

  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * i) primaryLanguage];
        v9 = AXCLanguageConvertToCanonicalForm();

        if (([v0 containsObject:v9] & 1) == 0)
        {
          v10 = [v1 dialectForLanguageID:v9];
          v11 = [v10 languageNameAndLocaleInCurrentLocale];
          v12 = v11;
          if (v11)
          {
            v13 = v9 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v21[0] = v9;
            v21[1] = v11;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
            [v16 addObject:v14];

            [v0 addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [v16 sortUsingComparator:&__block_literal_global_5];

  return v16;
}

uint64_t __AXLanguagesAvailableForPronuncationEditor_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:1];
  v6 = [v4 objectAtIndexedSubscript:1];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

id getAVTAnimojiClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTAnimojiClass_softClass;
  v7 = getAVTAnimojiClass_softClass;
  if (!getAVTAnimojiClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTAnimojiClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getAVTAnimojiClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0E17114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTPresetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTPresetClass_softClass;
  v7 = getAVTPresetClass_softClass;
  if (!getAVTPresetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTPresetClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getAVTPresetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0E171F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTColorPresetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTColorPresetClass_softClass;
  v7 = getAVTColorPresetClass_softClass;
  if (!getAVTColorPresetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTColorPresetClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getAVTColorPresetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0E172D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTMemojiClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTMemojiClass_softClass;
  v7 = getAVTMemojiClass_softClass;
  if (!getAVTMemojiClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTMemojiClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getAVTMemojiClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0E17770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AvatarKitLibraryCore()
{
  if (!AvatarKitLibraryCore_frameworkLibrary)
  {
    AvatarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AvatarKitLibraryCore_frameworkLibrary;
}

uint64_t __AvatarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t AvatarUILibraryCore()
{
  if (!AvatarUILibraryCore_frameworkLibrary)
  {
    AvatarUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AvatarUILibraryCore_frameworkLibrary;
}

uint64_t __AvatarUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getAVTAnimojiClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAnimoji");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAnimojiClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVTAnimojiClass_block_invoke_cold_1();
    AvatarKitLibrary();
  }
}

void AvatarKitLibrary()
{
  if (!AvatarKitLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getAVTPresetClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary();
  result = objc_getClass("AVTPreset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTPresetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTPresetClass_block_invoke_cold_1();
    return __getAVTColorPresetClass_block_invoke(v3);
  }

  return result;
}

Class __getAVTColorPresetClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary();
  result = objc_getClass("AVTColorPreset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTColorPresetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTColorPresetClass_block_invoke_cold_1();
    return __getAVTAvatarPuppetRecordClass_block_invoke(v3);
  }

  return result;
}

Class __getAVTAvatarPuppetRecordClass_block_invoke(uint64_t a1)
{
  if (!AvatarUILibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("AVTAvatarPuppetRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarPuppetRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getAVTAvatarPuppetRecordClass_block_invoke_cold_1();
    return __getAVTMemojiClass_block_invoke(v4);
  }

  return result;
}

void __getAVTMemojiClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTMemoji");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTMemojiClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getAVTMemojiClass_block_invoke_cold_1();
    [(AXDynamicTypeImageView *)v2 _commonInit];
  }
}

void sub_1C0E18704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getIKListItemLockupElementClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIKListItemLockupElementClass_softClass;
  v7 = getIKListItemLockupElementClass_softClass;
  if (!getIKListItemLockupElementClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIKListItemLockupElementClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getIKListItemLockupElementClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0E19204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E194A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIKListItemLockupElementClass_block_invoke(uint64_t a1)
{
  ITMLKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IKListItemLockupElement");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIKListItemLockupElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIKListItemLockupElementClass_block_invoke_cold_1();
    ITMLKitLibrary();
  }
}

void ITMLKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ITMLKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ITMLKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E812E3C8;
    v3 = 0;
    ITMLKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ITMLKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ITMLKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ITMLKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getIKViewElementClass_block_invoke(uint64_t a1)
{
  ITMLKitLibrary();
  result = objc_getClass("IKViewElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIKViewElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIKViewElementClass_block_invoke_cold_1();
    return __getIKListTemplateClass_block_invoke(v3);
  }

  return result;
}

Class __getIKListTemplateClass_block_invoke(uint64_t a1)
{
  ITMLKitLibrary();
  result = objc_getClass("IKListTemplate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIKListTemplateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIKListTemplateClass_block_invoke_cold_1();
    return AXUIIconImageWithBackgroundForImage(v3);
  }

  return result;
}

id AXUIIconImageWithBackgroundForImage(void *a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E69DC888];
  v8 = a2;
  v9 = a1;
  v10 = [v7 systemWhiteColor];
  v11 = [v9 imageWithTintColor:v10 renderingMode:1];

  v28 = 0.0;
  [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:0 scale:&v28];
  v12 = LICreateDefaultIcon();
  v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v12];
  v14 = [v13 imageWithTintColor:v8 renderingMode:1];

  CFRelease(v12);
  v15 = [MEMORY[0x1E69DCA80] preferredFormat];
  v16 = [v15 copy];

  [v16 setScale:v28];
  v17 = objc_alloc(MEMORY[0x1E69DCA78]);
  [v14 size];
  v18 = [v17 initWithSize:v16 format:?];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __AXUIIconImageWithBackgroundForImage_block_invoke;
  v23[3] = &unk_1E812E3E8;
  v24 = v14;
  v25 = v11;
  v26 = a3;
  v27 = a4;
  v19 = v11;
  v20 = v14;
  v21 = [v18 imageWithActions:v23];

  return v21;
}

uint64_t __AXUIIconImageWithBackgroundForImage_block_invoke(uint64_t a1)
{
  [*(a1 + 32) size];
  v3 = v2;
  [*(a1 + 40) size];
  v5 = *(a1 + 48) + (v3 - v4) * 0.5;
  [*(a1 + 32) size];
  v7 = v6;
  [*(a1 + 40) size];
  v9 = *(a1 + 56) + (v7 - v8) * 0.5;
  v10 = *(a1 + 32);
  [v10 size];
  v12 = v11;
  [*(a1 + 32) size];
  [v10 drawInRect:{0.0, 0.0, v12, v13}];
  v14 = *(a1 + 40);
  [v14 size];
  v16 = v15;
  [*(a1 + 40) size];

  return [v14 drawInRect:{v5, v9, v16, v17}];
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_1F4041FC0 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AXLocalizedTimeSummary(int a1, double a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v5 = [MEMORY[0x1E6989878] sharedInstance];
  v6 = [v5 dialectForCurrentLocale];
  v7 = [v6 specificLanguageID];
  v8 = [v7 hasPrefix:@"ja"];

  v9 = 5;
  if (!v8)
  {
    v9 = 1;
  }

  if (a1)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  [v4 setUnitsStyle:v10];
  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v11 setSecond:a2];
  [v11 setNanosecond:{((a2 - objc_msgSend(v11, "second")) * 1000000000.0)}];
  v12 = [v4 stringFromDateComponents:v11];
  if (!a1)
  {
    v13 = [v11 second];
    v14 = MEMORY[0x1E696AEC0];
    v15 = accessibilityLocalizedString(@"SUB_SECOND_ABBREVIATION");
    if (v13 >= a2)
    {
      AXFormatInteger();
    }

    else
    {
      AXFormatFloat();
    }
    v16 = ;
    v17 = [v14 stringWithFormat:v15, v16];

    v12 = v17;
  }

  return v12;
}

double AXUINormalizedSafeAreaInsetsForOrientation(uint64_t a1)
{
  objc_opt_class();
  v2 = [MEMORY[0x1E69DEBC0] safeValueForKey:@"defaultDisplayEdgeInfo"];
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v3 safeAreaInsetsPortrait];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  v6 = v5;

  v7 = [v3 homeAffordanceOverlayAllowance];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    goto LABEL_2;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      if (v9 > 0.0)
      {
        goto LABEL_11;
      }

      v14 = v3;
      v15 = [v14 safeAreaInsetsLandscapeRight];

      v16 = v14;
      if (v15)
      {
        goto LABEL_22;
      }

      v17 = [v14 safeAreaInsetsLandscapeLeft];

      v16 = v14;
      if (v17)
      {
LABEL_18:
        v21 = [v16 safeAreaInsetsLandscapeLeft];
LABEL_24:
        v25 = v21;
        UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
        v6 = v26;

        goto LABEL_2;
      }
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_2;
      }

      if (v9 > 0.0)
      {
LABEL_11:
        UIEdgeInsetsRotate();
        v6 = v13;
        goto LABEL_2;
      }

      v14 = v3;
      v20 = [v14 safeAreaInsetsLandscapeLeft];

      v16 = v14;
      if (v20)
      {
        goto LABEL_18;
      }

      v24 = [v14 safeAreaInsetsLandscapeRight];

      v16 = v14;
      if (v24)
      {
LABEL_22:
        v21 = [v16 safeAreaInsetsLandscapeRight];
        goto LABEL_24;
      }
    }

    v21 = [v16 safeAreaInsetsPortrait];
    goto LABEL_24;
  }

  if (v9 > 0.0)
  {
    goto LABEL_11;
  }

  v18 = v3;
  v19 = [v18 safeAreaInsetsPortraitUpsideDown];

  if (v19)
  {
    [v18 safeAreaInsetsPortraitUpsideDown];
  }

  else
  {
    [v18 safeAreaInsetsPortrait];
  }
  v22 = ;

  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  v6 = v23;

LABEL_2:
  return v6;
}

double AXUIConvertPointFromScreenToContextSpace(void *a1, double a2, double a3)
{
  v5 = a1;
  objc_opt_class();
  v6 = [v5 safeValueForKey:@"_transformLayer"];
  v7 = __UIAccessibilityCastAsClass();

  [v7 convertPoint:0 toLayer:{a2, a3}];
  v9 = v8;

  return v9;
}

double AXUIConvertRectFromScreenToContextSpace(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  objc_opt_class();
  v10 = [v9 safeValueForKey:@"_transformLayer"];
  v11 = __UIAccessibilityCastAsClass();

  [v11 convertRect:0 toLayer:{a2, a3, a4, a5}];
  v13 = v12;

  return v13;
}

double AXUIConvertPointFromContextToScreenSpace(void *a1, double a2, double a3)
{
  v5 = a1;
  objc_opt_class();
  v6 = [v5 safeValueForKey:@"_transformLayer"];
  v7 = __UIAccessibilityCastAsClass();

  [v7 convertPoint:0 fromLayer:{a2, a3}];
  v9 = v8;

  return v9;
}

double AXUIConvertRectFromContextToScreenSpace(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  objc_opt_class();
  v10 = [v9 safeValueForKey:@"_transformLayer"];
  v11 = __UIAccessibilityCastAsClass();

  [v11 convertRect:0 fromLayer:{a2, a3, a4, a5}];
  v13 = v12;

  return v13;
}

id AXUIApplicationWindows()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = MEMORY[0x1E69DDA98];
  v2 = [*MEMORY[0x1E69DDA98] connectedScenes];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 windows];
          [v0 axSafelyAddObjectsFromArray:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  if (![v0 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [*v1 _accessibilityAllWindowsOnlyVisibleWindows:0];
    [v0 axSafelyAddObjectsFromArray:v9];
  }

  return v0;
}

void sub_1C0E1C294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0E24F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C0E2D8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXUICreateFloatingShadowImageWithRadius(void *a1, double a2)
{
  v3 = a2 + 10.0;
  v4 = MEMORY[0x1E69DCEB0];
  v5 = a1;
  v6 = [v4 mainScreen];
  [v6 scale];
  v8 = v7;
  v16.width = v3 + v3;
  v16.height = v3 + v3;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v8);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v10 = [v5 CGColor];
  CGContextSetShadowWithColor(CurrentContext, *MEMORY[0x1E695F060], 10.0, v10);
  v11 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{10.0, 10.0, a2 + a2, a2 + a2}];
  [v5 set];

  [v11 fill];
  CGContextRestoreGState(CurrentContext);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceOut);
  [v11 fill];
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  v13 = [v12 resizableImageWithCapInsets:{v3, v3, v3, v3}];

  UIGraphicsEndImageContext();

  return v13;
}

void sub_1C0E30D90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C0E339F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXNamesForDrags(void *a1)
{
  v1 = a1;
  v2 = AXUILocalizedStringForKey(@"UNNAMED_DRAG");
  v3 = AXUILocalizedStringForKey(@"UNNAMED_DRAG_ORDINAL");
  v4 = _AXNamesForDragAndDropItems(v1, v2, v3);

  return v4;
}

id _AXNamesForDragAndDropItems(void *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v34 = a2;
  v33 = a3;
  v36 = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
  v8 = MEMORY[0x1E6988CB8];
  v9 = MEMORY[0x1E6988CD0];
  if (v7)
  {
    v10 = v7;
    v11 = 0;
    v12 = *v42;
    v13 = *MEMORY[0x1E6988CB8];
    v14 = *MEMORY[0x1E6988CD0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v16 = [*(*(&v41 + 1) + 8 * i) objectForKeyedSubscript:v13];
        v17 = [v16 isEqual:v14];

        v11 += v17;
      }

      v10 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v10);
    v35 = v11 == 1;
    v8 = MEMORY[0x1E6988CB8];
  }

  else
  {
    v35 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v38;
    v23 = v9;
    v24 = *v8;
    v25 = *v23;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v27 = [*(*(&v37 + 1) + 8 * j) objectForKeyedSubscript:v24];
        if ([v27 isEqualToString:v25])
        {
          ++v21;
          if (v35)
          {
            v28 = v34;
          }

          else
          {
            v29 = MEMORY[0x1E696AEC0];
            AXFormatInteger();
            v31 = v30 = v18;
            v28 = [v29 localizedStringWithFormat:v33, v31];

            v27 = v31;
            v18 = v30;
          }

          v27 = v28;
        }

        [v36 addObject:v27];
      }

      v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v20);
  }

  return v36;
}

id AXNamesForDrops(void *a1)
{
  v1 = a1;
  v2 = AXUILocalizedStringForKey(@"UNNAMED_DROP");
  v3 = AXUILocalizedStringForKey(@"UNNAMED_DROP_ORDINAL");
  v4 = _AXNamesForDragAndDropItems(v1, v2, v3);

  return v4;
}

id AXUIContentSizeCategoryMin(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E69DDC90];
  v6 = [v3 isEqual:*MEMORY[0x1E69DDC90]];
  v7 = v4;
  if ((v6 & 1) == 0)
  {
    v8 = [v4 isEqual:v5];
    v7 = v3;
    if ((v8 & 1) == 0)
    {
      v9 = UIContentSizeCategoryCompareToCategory(v3, v4);
      v7 = v3;
      if ((v9 + 1) >= 2)
      {
        if (v9 != NSOrderedDescending)
        {
          goto LABEL_7;
        }

        v7 = v4;
      }
    }
  }

  v5 = v7;
LABEL_7:

  return v5;
}

id AXUIContentSizeCategoryMax(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E69DDC90];
  v6 = [v3 isEqual:*MEMORY[0x1E69DDC90]];
  v7 = v4;
  if (v6 & 1) != 0 || (v8 = [v4 isEqual:v5], v7 = v3, (v8) || (v10 = UIContentSizeCategoryCompareToCategory(v3, v4), v7 = v4, v10 == NSOrderedAscending) || (v7 = v3, v10 < 2))
  {
    v5 = v7;
  }

  return v5;
}

id getPAHMSManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPAHMSManagerClass_softClass;
  v7 = getPAHMSManagerClass_softClass;
  if (!getPAHMSManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPAHMSManagerClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getPAHMSManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0E3B9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHUAccessoryHearingSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHUAccessoryHearingSettingsClass_softClass;
  v7 = getHUAccessoryHearingSettingsClass_softClass;
  if (!getHUAccessoryHearingSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHUAccessoryHearingSettingsClass_block_invoke;
    v3[3] = &unk_1E812DCD0;
    v3[4] = &v4;
    __getHUAccessoryHearingSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0E3D700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id accessibilityHearingAidSupportBundle_Soft()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getaccessibilityHearingAidSupportBundleSymbolLoc_ptr;
  v8 = getaccessibilityHearingAidSupportBundleSymbolLoc_ptr;
  if (!getaccessibilityHearingAidSupportBundleSymbolLoc_ptr)
  {
    v1 = HearingUtilitiesLibrary();
    v6[3] = dlsym(v1, "accessibilityHearingAidSupportBundle");
    getaccessibilityHearingAidSupportBundleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [AXUISettingsInstructionsView textView:primaryActionForTextItem:defaultAction:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = v0();

  return v2;
}

Class __getPAHMSManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PersonalAudioLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PersonalAudioLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E812E738;
    v6 = 0;
    PersonalAudioLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PersonalAudioLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("PAHMSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPAHMSManagerClass_block_invoke_cold_1();
  }

  getPAHMSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PersonalAudioLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PersonalAudioLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getHUAccessoryHearingSettingsClass_block_invoke(uint64_t a1)
{
  HearingUtilitiesLibrary();
  result = objc_getClass("HUAccessoryHearingSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHUAccessoryHearingSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHUAccessoryHearingSettingsClass_block_invoke_cold_1();
    return HearingUtilitiesLibrary();
  }

  return result;
}

uint64_t HearingUtilitiesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!HearingUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __HearingUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E812E750;
    v5 = 0;
    HearingUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HearingUtilitiesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!HearingUtilitiesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __HearingUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HearingUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getaccessibilityHearingAidSupportBundleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary();
  result = dlsym(v2, "accessibilityHearingAidSupportBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getaccessibilityHearingAidSupportBundleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void QSInstallSharedSafeCategoriesIfNeeded()
{
  if (QSInstallSharedSafeCategoriesIfNeeded_onceToken != -1)
  {
    QSInstallSharedSafeCategoriesIfNeeded_cold_1();
  }
}

void __QSInstallSharedSafeCategoriesIfNeeded_block_invoke()
{
  v0 = [MEMORY[0x1E6988808] sharedInstance];
  [v0 installSafeCategory:@"NSObject_QSSupport" canInteractWithTargetClass:1];

  v1 = [MEMORY[0x1E6988808] sharedInstance];
  [v1 installSafeCategory:@"UIPasteboard_QSExtras" canInteractWithTargetClass:1];
}

void QSUnionRectsWithRect(void *a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        [v16 rectValue];
        if (vabdd_f64(a3, v17) < 0.001)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v18 = v16;
      v19 = MEMORY[0x1E696B098];
      [v18 rectValue];
      v33.origin.x = v20;
      v33.origin.y = v21;
      v33.size.width = v22;
      v33.size.height = v23;
      v31.origin.x = a2;
      v31.origin.y = a3;
      v31.size.width = a4;
      v31.size.height = a5;
      v32 = CGRectUnion(v31, v33);
      v24 = [v19 valueWithRect:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];

      if (!v24)
      {
        goto LABEL_13;
      }

      [v11 replaceObjectAtIndex:objc_msgSend(v11 withObject:{"indexOfObject:", v18), v24}];
    }

    else
    {
LABEL_10:

      v18 = 0;
LABEL_13:
      v24 = [MEMORY[0x1E696B098] valueWithRect:{a2, a3, a4, a5, v25}];
      [v11 addObject:v24];
    }
  }
}

void sub_1C0E3FCE0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    [*(v3 + 3408) _accessibilitySetUseQuickSpeakPasteBoard:v2];

    objc_end_catch();
    JUMPOUT(0x1C0E3FC80);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C0E40D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIKViewElementClass_block_invoke_0(uint64_t a1)
{
  ITMLKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IKViewElement");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIKViewElementClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIKViewElementClass_block_invoke_cold_1();
    ITMLKitLibrary_0();
  }
}

void ITMLKitLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ITMLKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ITMLKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E812E7D8;
    v3 = 0;
    ITMLKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ITMLKitLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ITMLKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ITMLKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getIKImageElementClass_block_invoke(uint64_t a1)
{
  ITMLKitLibrary_0();
  result = objc_getClass("IKImageElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIKImageElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIKImageElementClass_block_invoke_cold_1();
    return __getIKTextElementClass_block_invoke(v3);
  }

  return result;
}

Class __getIKTextElementClass_block_invoke(uint64_t a1)
{
  ITMLKitLibrary_0();
  result = objc_getClass("IKTextElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIKTextElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIKTextElementClass_block_invoke_cold_1();
    return AXUIToggleIncomingCall(v3);
  }

  return result;
}

uint64_t AXUIToggleIncomingCall()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  AXPerformBlockSynchronouslyOnMainThread();
  v0 = *(v3 + 24);
  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1C0E41344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AXUIToggleIncomingCall_block_invoke(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D8A58] sharedInstance];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [v2 incomingCall];
  [v3 axSafelyAddObject:v4];

  v5 = [v2 incomingVideoCall];
  [v3 axSafelyAddObject:v5];

  v6 = [v3 firstObject];
  LOBYTE(v89) = 1;
  _AXLogWithFacility();
  v7 = [MEMORY[0x1E69887D8] sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = [MEMORY[0x1E69887D8] identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v90 = NSStringFromBOOL();
      v13 = _AXStringForArgs();

      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v96 = v13;
        _os_log_impl(&dword_1C0DFB000, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (!v6)
  {
    v35 = [MEMORY[0x1E695DF70] array];
    v36 = [v2 currentCalls];
    [v35 axSafelyAddObjectsFromArray:v36];

    v37 = [v2 currentVideoCalls];
    [v35 axSafelyAddObjectsFromArray:v37];

    LOBYTE(v90) = 1;
    _AXLogWithFacility();
    v38 = [MEMORY[0x1E69887D8] sharedInstance];
    v39 = [v38 ignoreLogging];

    if ((v39 & 1) == 0)
    {
      v40 = [MEMORY[0x1E69887D8] identifier];
      v41 = AXLoggerForFacility();

      v42 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = AXColorizeFormatLog();
        v91 = [v35 count];
        v44 = _AXStringForArgs();
        if (os_log_type_enabled(v41, v42))
        {
          *buf = 138543362;
          v96 = v44;
          _os_log_impl(&dword_1C0DFB000, v41, v42, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (![v35 count])
    {
      goto LABEL_67;
    }

    v94 = a1;
    v45 = [v35 firstObject];
    v46 = [v45 status];
    if ([v45 status] == 1)
    {
      v47 = [v45 smartHoldingSession];
      if ([v47 state] == 3)
      {

LABEL_39:
        v52 = [MEMORY[0x1E69887D8] sharedInstance];
        v53 = [v52 ignoreLogging];

        if ((v53 & 1) == 0)
        {
          v54 = [MEMORY[0x1E69887D8] identifier];
          v55 = AXLoggerForFacility();

          v56 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = v45;
            v58 = AXColorizeFormatLog();
            v59 = _AXStringForArgs();
            if (os_log_type_enabled(v55, v56))
            {
              *buf = 138543362;
              v96 = v59;
              _os_log_impl(&dword_1C0DFB000, v55, v56, "%{public}@", buf, 0xCu);
            }

            v45 = v57;
          }
        }

        v60 = objc_alloc(MEMORY[0x1E696AFB0]);
        v61 = [v45 callUUID];
        v62 = [v60 initWithUUIDString:v61];
        [v2 performSmartHoldingRequestWithType:4 forCallWithUUID:v62 completion:&__block_literal_global_13];

        v63 = *(v94 + 32);
LABEL_66:
        *(*(v63 + 8) + 24) = 1;

LABEL_67:
        goto LABEL_68;
      }

      v48 = [v45 smartHoldingSession];
      [v48 events];
      v50 = v49 = v45;
      v51 = [v50 count];

      v45 = v49;
      if (v51)
      {
        goto LABEL_39;
      }
    }

    v64 = [MEMORY[0x1E69887D8] sharedInstance];
    v65 = [v64 ignoreLogging];

    if ((v65 & 1) == 0)
    {
      v93 = v45;
      v66 = [MEMORY[0x1E69887D8] identifier];
      v67 = AXLoggerForFacility();

      v68 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = AXColorizeFormatLog();
        v92 = v46;
        v70 = _AXStringForArgs();
        if (os_log_type_enabled(v67, v68))
        {
          *buf = 138543362;
          v96 = v70;
          _os_log_impl(&dword_1C0DFB000, v67, v68, "%{public}@", buf, 0xCu);
        }
      }

      v45 = v93;
    }

    if (v46 <= 3)
    {
      v71 = [MEMORY[0x1E69887D8] sharedInstance];
      v72 = [v71 ignoreLogging];

      if ((v72 & 1) == 0)
      {
        v73 = [MEMORY[0x1E69887D8] identifier];
        v74 = AXLoggerForFacility();

        v75 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = v45;
          v77 = AXColorizeFormatLog();
          v78 = _AXStringForArgs();
          if (os_log_type_enabled(v74, v75))
          {
            *buf = 138543362;
            v96 = v78;
            _os_log_impl(&dword_1C0DFB000, v74, v75, "%{public}@", buf, 0xCu);
          }

          v45 = v76;
        }
      }

      [v2 disconnectCall:v45 withReason:{2, v92}];
      v79 = [MEMORY[0x1E69887D8] sharedInstance];
      v80 = [v79 ignoreLogging];

      if ((v80 & 1) == 0)
      {
        v81 = [MEMORY[0x1E69887D8] identifier];
        v82 = AXLoggerForFacility();

        v83 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = AXColorizeFormatLog();
          v85 = v45;
          v86 = v84;
          v87 = v85;
          [v85 status];
          v88 = _AXStringForArgs();
          if (os_log_type_enabled(v82, v83))
          {
            *buf = 138543362;
            v96 = v88;
            _os_log_impl(&dword_1C0DFB000, v82, v83, "%{public}@", buf, 0xCu);
          }

          v45 = v87;
        }
      }
    }

    v63 = *(v94 + 32);
    goto LABEL_66;
  }

  v14 = [MEMORY[0x1E69887D8] sharedInstance];
  v15 = [v14 ignoreLogging];

  if ((v15 & 1) == 0)
  {
    v16 = [MEMORY[0x1E69887D8] identifier];
    v17 = AXLoggerForFacility();

    v18 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = AXColorizeFormatLog();
      v90 = [v6 status];
      v20 = _AXStringForArgs();
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 138543362;
        v96 = v20;
        _os_log_impl(&dword_1C0DFB000, v17, v18, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([v6 status] == 4)
  {
    v21 = [MEMORY[0x1E69887D8] sharedInstance];
    v22 = [v21 ignoreLogging];

    if ((v22 & 1) == 0)
    {
      v23 = [MEMORY[0x1E69887D8] identifier];
      v24 = AXLoggerForFacility();

      v25 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = AXColorizeFormatLog();
        v27 = _AXStringForArgs();
        if (os_log_type_enabled(v24, v25))
        {
          *buf = 138543362;
          v96 = v27;
          _os_log_impl(&dword_1C0DFB000, v24, v25, "%{public}@", buf, 0xCu);
        }
      }
    }

    [v2 answerCall:v6];
    v28 = [MEMORY[0x1E69887D8] sharedInstance];
    v29 = [v28 ignoreLogging];

    if ((v29 & 1) == 0)
    {
      v30 = [MEMORY[0x1E69887D8] identifier];
      v31 = AXLoggerForFacility();

      v32 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = AXColorizeFormatLog();
        [v6 status];
        v34 = _AXStringForArgs();
        if (os_log_type_enabled(v31, v32))
        {
          *buf = 138543362;
          v96 = v34;
          _os_log_impl(&dword_1C0DFB000, v31, v32, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_68:
}

void __AXUIToggleIncomingCall_block_invoke_331(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E69887D8] sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E69887D8] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v11 = v9;
        _os_log_impl(&dword_1C0DFB000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }
}

void sub_1C0E43CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _AXUISettingsAccessibilityBundle()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = AXSystemRootDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"/System/Library/PreferenceBundles/AccessibilitySettings.bundle"];
  v3 = [v0 bundleWithPath:v2];

  return v3;
}

id AXUILocalizedStringForKeyWithTable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = AXUILocalizedStringForKeyWithTable_Bundle;
  if (!AXUILocalizedStringForKeyWithTable_Bundle)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AccessibilityUIUtilities"];
    v7 = AXUILocalizedStringForKeyWithTable_Bundle;
    AXUILocalizedStringForKeyWithTable_Bundle = v6;

    v5 = AXUILocalizedStringForKeyWithTable_Bundle;
  }

  v8 = [v5 localizedStringForKey:v3 value:v3 table:v4];

  return v8;
}

id AXUILocalizedTitleForZoomLensEffect(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69886D0]])
  {
    v2 = @"ZOOM_LENS_EFFECT_NONE";
LABEL_13:
    v3 = AXUILocalizedStringForKeyWithTable(v2, @"AXUILocalizedStrings");
    goto LABEL_14;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69886A8]])
  {
    v2 = @"ZOOM_LENS_EFFECT_BLACK_AND_WHITE";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69886C8]])
  {
    v2 = @"ZOOM_LENS_EFFECT_LOW_LIGHT";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69886B0]])
  {
    v2 = @"ZOOM_LENS_EFFECT_BLACK_AND_WHITE_INVERTED";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69886C0]])
  {
    v2 = @"ZOOM_LENS_EFFECT_INVERTED";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69886B8]])
  {
    v2 = @"ZOOM_LENS_EFFECT_HUE_ADJUST";
    goto LABEL_13;
  }

  _AXAssert();
  v3 = 0;
LABEL_14:

  return v3;
}

id AXUILocalizedTitleForZoomLensMode(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69886D8]])
  {
    v2 = @"ZOOM_LENS_MODE_FULLSCREEN";
LABEL_7:
    v3 = AXUILocalizedStringForKeyWithTable(v2, @"AXUILocalizedStrings");
    goto LABEL_8;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69886E0]])
  {
    v2 = @"ZOOM_LENS_MODE_WINDOW";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69886E8]])
  {
    v2 = @"ZOOM_LENS_MODE_DOCKED";
    goto LABEL_7;
  }

  _AXAssert();
  v3 = 0;
LABEL_8:

  return v3;
}

id AXUILocalizedTitleForDockPosition(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69886A0]])
  {
    v2 = @"DOCK_POSITION_TOP";
LABEL_9:
    v3 = AXUILocalizedStringForKeyWithTable(v2, @"AXUILocalizedStrings");
    goto LABEL_10;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E6988690]])
  {
    v2 = @"DOCK_POSITION_LEFT";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E6988698]])
  {
    v2 = @"DOCK_POSITION_RIGHT";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E6988688]])
  {
    v2 = @"DOCK_POSITION_BOTTOM";
    goto LABEL_9;
  }

  _AXAssert();
  v3 = 0;
LABEL_10:

  return v3;
}

id AXAssistiveTouchBundle()
{
  if (AXAssistiveTouchBundle_onceToken != -1)
  {
    AXAssistiveTouchBundle_cold_1();
  }

  v1 = AXAssistiveTouchBundle_ASTBundle;

  return v1;
}

void __AXAssistiveTouchBundle_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v4 = AXSystemRootDirectory();
  v1 = [v4 stringByAppendingPathComponent:@"System/Library/CoreServices/AssistiveTouch.app"];
  v2 = [v0 bundleWithPath:v1];
  v3 = AXAssistiveTouchBundle_ASTBundle;
  AXAssistiveTouchBundle_ASTBundle = v2;
}

id AXUIAssistiveTouchStringForName(void *a1, int a2)
{
  v3 = a1;
  if (AXUIAssistiveTouchStringForName_onceToken != -1)
  {
    AXUIAssistiveTouchStringForName_cold_1();
  }

  if ([v3 hasPrefix:@"CustomGesture-"])
  {
    v4 = [v3 rangeOfString:@"CustomGesture-"];
    v6 = [v3 substringFromIndex:v4 + v5];
    goto LABEL_46;
  }

  v7 = *MEMORY[0x1E6989460];
  if (![v3 hasPrefix:*MEMORY[0x1E6989460]] || (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "rangeOfString:", v8), objc_msgSend(v3, "substringFromIndex:", v9 + v10), v11 = objc_claimAutoreleasedReturnValue(), v8, !v11))
  {
    if ([v3 isEqualToString:*MEMORY[0x1E69895E8]])
    {
      v14 = _AXUISettingsAccessibilityBundle();
      v6 = [v14 localizedStringForKey:@"FORCE_TOUCH" value:0 table:@"Accessibility"];

      goto LABEL_46;
    }

    if (a2)
    {
      v15 = [AXUIAssistiveTouchStringForName_ASTMapping objectForKeyedSubscript:v3];
      v11 = [v15 stringByAppendingFormat:@"_FULL_WIDTH"];

      if (AXDeviceHasStaccato() && ([v3 isEqualToString:*MEMORY[0x1E69894C0]] & 1) != 0)
      {
        v16 = @"LocalizedStrings-Staccato";
      }

      else if (AXDeviceSupportsCameraButton() && (([v3 isEqualToString:*MEMORY[0x1E6989500]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E6989510]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E6989508]) & 1) != 0) || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69897A8]) && AXDeviceIsPhone() && (AXDeviceHasGreyMatterEnabled() & 1) != 0)
      {
        v16 = @"LocalizedStrings-D94";
      }

      else
      {
        v16 = @"LocalizedStrings";
      }

      v17 = AXAssistiveTouchBundle();
      v6 = [v17 localizedStringForKey:v11 value:v11 table:v16];

      if (v6 && ![v6 isEqualToString:v11])
      {
        goto LABEL_45;
      }
    }

    v11 = [AXUIAssistiveTouchStringForName_ASTMapping objectForKeyedSubscript:v3];
    if (AXDeviceHasStaccato() && ([v3 isEqualToString:*MEMORY[0x1E69894C0]] & 1) != 0)
    {
      v18 = @"LocalizedStrings-Staccato";
    }

    else if (AXDeviceSupportsCameraButton() && (([v3 isEqualToString:*MEMORY[0x1E6989500]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E6989510]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E6989508]) & 1) != 0) || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69897A8]) && AXDeviceIsPhone() && (AXDeviceHasGreyMatterEnabled() & 1) != 0)
    {
      v18 = @"LocalizedStrings-D94";
    }

    else
    {
      v18 = @"LocalizedStrings";
    }

    v19 = AXAssistiveTouchBundle();
    v6 = [v19 localizedStringForKey:v11 value:v11 table:v18];

    if ([v11 isEqualToString:v6])
    {
      v20 = [MEMORY[0x1E6989890] sharedInstance];
      v21 = [v20 laserEnabled];

      if (v21)
      {
        v22 = AXAssistiveTouchBundle();
        v23 = [v22 localizedStringForKey:v11 value:v11 table:@"LocalizedStrings-hello"];

        v6 = v23;
      }

      if ([v11 isEqualToString:v6])
      {
        if (a2)
        {
          v24 = [v11 stringByAppendingFormat:@"_FULL_WIDTH"];

          v11 = v24;
        }

        v25 = AXAssistiveTouchBundle();
        v26 = [v25 localizedStringForKey:v11 value:v11 table:@"LocalizedStrings-DetectionMode"];

        v6 = v26;
      }
    }

    goto LABEL_45;
  }

  v12 = [MEMORY[0x1E6989898] sharedManager];
  v13 = [v12 shortcutForIdentifier:v11];
  v6 = [v13 shortcutName];

LABEL_45:
LABEL_46:

  return v6;
}

void __AXUIAssistiveTouchStringForName_block_invoke()
{
  v35[101] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6989688];
  v34[0] = *MEMORY[0x1E6989618];
  v34[1] = v0;
  v35[0] = @"HOME";
  v35[1] = @"NOTIFICATION_CENTER";
  v1 = *MEMORY[0x1E6989560];
  v34[2] = *MEMORY[0x1E6989550];
  v34[3] = v1;
  v35[2] = @"CUSTOM";
  v35[3] = @"DEVICE";
  v2 = *MEMORY[0x1E69897A0];
  v34[4] = *MEMORY[0x1E6989738];
  v34[5] = v2;
  v35[4] = @"SIRI";
  v35[5] = @"TYPE_TO_SIRI";
  v3 = *MEMORY[0x1E6989638];
  v34[6] = *MEMORY[0x1E6989548];
  v34[7] = v3;
  v35[6] = @"CONTROL_CENTER";
  v35[7] = @"LOCK";
  v4 = *MEMORY[0x1E69897C8];
  v34[8] = *MEMORY[0x1E69896E0];
  v34[9] = v4;
  v35[8] = @"ORIENTATION";
  v35[9] = @"VOLUME_UP_ASSISTIVE_TOUCH";
  v5 = *MEMORY[0x1E6989678];
  v34[10] = *MEMORY[0x1E69897C0];
  v34[11] = v5;
  v35[10] = @"VOLUME_DOWN_ASSISTIVE_TOUCH";
  v35[11] = @"MUTE";
  v6 = *MEMORY[0x1E6989798];
  v34[12] = *MEMORY[0x1E6989600];
  v34[13] = v6;
  v35[12] = @"GESTURES";
  v35[13] = @"TRIPLE_CLICK";
  v7 = *MEMORY[0x1E69894C8];
  v34[14] = *MEMORY[0x1E6989730];
  v34[15] = v7;
  v35[14] = @"SHAKE";
  v35[15] = @"APP_SWITCHER";
  v8 = *MEMORY[0x1E69896A8];
  v34[16] = *MEMORY[0x1E69896F0];
  v34[17] = v8;
  v35[16] = @"SCREENSHOT";
  v35[17] = @"ORIENTATION_LOCKED";
  v9 = *MEMORY[0x1E6989528];
  v34[18] = *MEMORY[0x1E69897B0];
  v34[19] = v9;
  v35[18] = @"VOICE_CONTROL";
  v35[19] = @"COMMAND_AND_CONTROL";
  v10 = *MEMORY[0x1E69896D8];
  v34[20] = *MEMORY[0x1E69896B8];
  v34[21] = v10;
  v35[20] = @"PINCH";
  v35[21] = @"ROTATE";
  v11 = *MEMORY[0x1E69895E8];
  v34[22] = *MEMORY[0x1E69896C0];
  v34[23] = v11;
  v35[22] = @"PINCH_ROTATE";
  v35[23] = @"FORCE_TAP";
  v12 = *MEMORY[0x1E6989778];
  v34[24] = *MEMORY[0x1E6989588];
  v34[25] = v12;
  v35[24] = @"TAP";
  v35[25] = @"TAP";
  v13 = *MEMORY[0x1E6989640];
  v34[26] = *MEMORY[0x1E6989570];
  v34[27] = v13;
  v35[26] = @"DOUBLE_TAP";
  v35[27] = @"LONG_PRESS";
  v14 = *MEMORY[0x1E6989670];
  v34[28] = *MEMORY[0x1E6989578];
  v34[29] = v14;
  v35[28] = @"HOLD_AND_DRAG";
  v35[29] = @"MOVE_MENU";
  v15 = *MEMORY[0x1E69896E8];
  v34[30] = *MEMORY[0x1E6989760];
  v34[31] = v15;
  v35[30] = @"SPOTLIGHT";
  v35[31] = @"SOS";
  v16 = *MEMORY[0x1E69896C8];
  v34[32] = *MEMORY[0x1E6989770];
  v34[33] = v16;
  v35[32] = @"SYSDIAGNOSE";
  v35[33] = @"REACHABILITY";
  v17 = *MEMORY[0x1E6989780];
  v34[34] = *MEMORY[0x1E69896D0];
  v34[35] = v17;
  v35[34] = @"REBOOT_DEVICE";
  v35[35] = @"DOCK";
  v18 = *MEMORY[0x1E6989620];
  v34[36] = *MEMORY[0x1E69894D0];
  v34[37] = v18;
  v35[36] = @"APPLE_PAY";
  v35[37] = @"HOVERTEXT_TYPING";
  v19 = *MEMORY[0x1E6989530];
  v34[38] = *MEMORY[0x1E6989790];
  v34[39] = v19;
  v35[38] = @"VIRTUAL_TRACKPAD";
  v35[39] = @"APPLE_PAY_CONFIRM";
  v20 = *MEMORY[0x1E69896A0];
  v34[40] = *MEMORY[0x1E6989758];
  v34[41] = v20;
  v35[40] = @"SPEAK_SCREEN";
  v35[41] = @"OPEN_MENU";
  v21 = *MEMORY[0x1E6989660];
  v34[42] = *MEMORY[0x1E69896B0];
  v34[43] = v21;
  v35[42] = @"PASS_THROUGH";
  v35[43] = @"MOUSE_PRIMARY_CLICK";
  v22 = *MEMORY[0x1E6989580];
  v34[44] = *MEMORY[0x1E6989668];
  v34[45] = v22;
  v35[44] = @"MOUSE_SECONDARY_CLICK";
  v35[45] = @"DWELL";
  v23 = *MEMORY[0x1E69895B0];
  v34[46] = *MEMORY[0x1E69895C0];
  v34[47] = v23;
  v35[46] = @"DWELL_RESUME";
  v35[47] = @"DWELL_PAUSE";
  v24 = *MEMORY[0x1E69895A0];
  v34[48] = *MEMORY[0x1E69895B8];
  v34[49] = v24;
  v35[48] = @"DWELL_PAUSE_TOGGLE";
  v35[49] = @"DWELL_LOCK";
  v25 = *MEMORY[0x1E69895A8];
  v34[50] = *MEMORY[0x1E69895D0];
  v34[51] = v25;
  v35[50] = @"DWELL_UNLOCK";
  v35[51] = @"DWELL_LOCK_TOGGLE";
  v26 = *MEMORY[0x1E6989590];
  v34[52] = *MEMORY[0x1E6989598];
  v34[53] = v26;
  v35[52] = @"DWELL_TIME_INCREASE";
  v35[53] = @"DWELL_TIME_DECREASE";
  v27 = *MEMORY[0x1E69896F8];
  v34[54] = *MEMORY[0x1E69895C8];
  v34[55] = v27;
  v35[54] = @"DWELL_KEYBOARD_CONTINUOUS_PATH";
  v35[55] = @"SCROLL";
  v28 = *MEMORY[0x1E6989700];
  v34[56] = *MEMORY[0x1E6989728];
  v34[57] = v28;
  v35[56] = @"Scroll-Up";
  v35[57] = @"Scroll-Down";
  v29 = *MEMORY[0x1E6989710];
  v34[58] = *MEMORY[0x1E6989708];
  v34[59] = v29;
  v35[58] = @"Scroll-Left";
  v35[59] = @"Scroll-Right";
  v30 = *MEMORY[0x1E6989718];
  v34[60] = *MEMORY[0x1E6989720];
  v34[61] = v30;
  v35[60] = @"SCROLL_TO_TOP";
  v35[61] = @"SCROLL_TO_BOTTOM";
  v31 = *MEMORY[0x1E6989540];
  v34[62] = *MEMORY[0x1E6989538];
  v34[63] = v31;
  v35[62] = @"SCROLL_CONTINUOUS_HORIZONTAL";
  v35[63] = @"SCROLL_CONTINUOUS_VERTICAL";
  v34[64] = *MEMORY[0x1E69894F8];
  v35[64] = @"CAMERA";
  v34[65] = *MEMORY[0x1E69895F0];
  v35[65] = @"CAMERA_FRONT";
  v34[66] = *MEMORY[0x1E6989788];
  v35[66] = @"TORCH";
  v34[67] = *MEMORY[0x1E69895E0];
  v35[67] = @"EYE_TRACKING_BUBBLE_MODE_TOGGLE";
  v34[68] = *MEMORY[0x1E69895D8];
  v35[68] = @"EYE_TRACKING_AUTO_HIDE_TOGGLE";
  v34[69] = *MEMORY[0x1E6989610];
  v35[69] = @"HEAD_TRACKING_BUBBLE_MODE_TOGGLE";
  v34[70] = *MEMORY[0x1E69894E0];
  v35[70] = @"ASSSISTIVETOUCH";
  v34[71] = *MEMORY[0x1E69897B8];
  v35[71] = @"VOICEOVER";
  v34[72] = *MEMORY[0x1E6989518];
  v35[72] = @"CLASSIC_INVERT";
  v34[73] = *MEMORY[0x1E6989520];
  v35[73] = @"COLOR_FILTERS";
  v34[74] = *MEMORY[0x1E6989750];
  v35[74] = @"SMART_INVERT";
  v34[75] = *MEMORY[0x1E69897D8];
  v35[75] = @"ZOOM";
  v34[76] = *MEMORY[0x1E69897E0];
  v35[76] = @"ZOOM_CONTROLLER";
  v34[77] = *MEMORY[0x1E6989648];
  v35[77] = @"MAGNIFIER";
  v34[78] = *MEMORY[0x1E6989768];
  v35[78] = @"SWITCH_CONTROL";
  v34[79] = *MEMORY[0x1E6989558];
  v35[79] = @"DETECTION_MODE";
  v34[80] = *MEMORY[0x1E69894E8];
  v35[80] = @"BACKGROUND_SOUNDS";
  v34[81] = *MEMORY[0x1E6989680];
  v35[81] = @"NEARBY_DEVICE_CONTROL";
  v34[82] = *MEMORY[0x1E69897D0];
  v35[82] = @"REMOTE_SCREEN";
  v34[83] = *MEMORY[0x1E6989608];
  v35[83] = @"HAPTIC_MUSIC";
  v34[84] = *MEMORY[0x1E6989658];
  v35[84] = @"MOTION_CUES";
  v34[85] = *MEMORY[0x1E6989628];
  v35[85] = @"LIVE_TRANSCRIPTIONS";
  v34[86] = *MEMORY[0x1E6989630];
  v35[86] = @"LIVE_SPEECH";
  v34[87] = *MEMORY[0x1E69895F8];
  v35[87] = @"FULL_KEYBOARD_ACCESS";
  v34[88] = *MEMORY[0x1E6989748];
  v35[88] = @"SIRI_SHORTCUTS";
  v34[89] = *MEMORY[0x1E6989568];
  v35[89] = @"DIM_FLASHING_LIGHTS";
  v34[90] = *MEMORY[0x1E69894C0];
  v35[90] = @"ACTION_BUTTON";
  v34[91] = *MEMORY[0x1E6989500];
  v35[91] = @"CAMERA_BUTTON";
  v34[92] = *MEMORY[0x1E6989510];
  v35[92] = @"CAMERA_BUTTON_LIGHT_PRESS";
  v34[93] = *MEMORY[0x1E6989508];
  v35[93] = @"CAMERA_BUTTON_DOUBLE_LIGHT_PRESS";
  v34[94] = *MEMORY[0x1E69897A8];
  v35[94] = @"CAMERA_BUTTON_VISUAL_INTELLIGENCE";
  v34[95] = *MEMORY[0x1E69894F0];
  v35[95] = @"CALIBRATE_ON_DEVICE_EYE_TRACKING";
  v34[96] = *MEMORY[0x1E6989698];
  v35[96] = @"ZOOM_SCREEN_ON_DEVICE_EYE_TRACKING";
  v34[97] = *MEMORY[0x1E6989690];
  v35[97] = @"EYE_TRACKING";
  v34[98] = *MEMORY[0x1E69894D8];
  v35[98] = @"ASSISTIVE_ACCESS";
  v34[99] = *MEMORY[0x1E69894B8];
  v35[99] = @"ACCESSIBILITY_READER";
  v34[100] = *MEMORY[0x1E6989650];
  v35[100] = @"MENU_BAR";
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:101];
  v33 = AXUIAssistiveTouchStringForName_ASTMapping;
  AXUIAssistiveTouchStringForName_ASTMapping = v32;
}

id AXUIAssistiveTouchDeviceImageNameForImageName(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AEC0];
  if (AXDeviceHasJindo())
  {
    v3 = @"_DI";
  }

  else if (AXDeviceHasHomeButton())
  {
    v3 = &stru_1F4041FC0;
  }

  else
  {
    IsPad = AXDeviceIsPad();
    v3 = @"_NHB";
    if (IsPad)
    {
      v3 = @"_NHB_IPAD";
    }
  }

  v5 = [v2 stringWithFormat:@"%@%@", v1, v3];

  return v5;
}

uint64_t AXUIAssistiveTouchIconRequiresRTLFlipping(void *a1)
{
  v1 = AXUIAssistiveTouchIconRequiresRTLFlipping_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXUIAssistiveTouchIconRequiresRTLFlipping_cold_1();
  }

  v3 = [AXUIAssistiveTouchIconRequiresRTLFlipping_ImageNamesToFlip containsObject:v2];

  return v3;
}

void __AXUIAssistiveTouchIconRequiresRTLFlipping_block_invoke()
{
  v7[22] = *MEMORY[0x1E69E9840];
  v7[0] = @"BackArrow";
  v0 = AXUIAssistiveTouchImageNameForName(*MEMORY[0x1E6989688]);
  v7[1] = v0;
  v1 = AXUIAssistiveTouchImageNameForName(*MEMORY[0x1E6989548]);
  v7[2] = v1;
  v2 = AXUIAssistiveTouchImageNameForName(*MEMORY[0x1E6989780]);
  v7[3] = v2;
  v7[4] = @"AT_LaunchFloatFromDock";
  v7[5] = @"AT_pinned_narrow";
  v7[6] = @"AT_pinned_narrow_for_flipping";
  v7[7] = @"AT_promote_sideapp_half";
  v7[8] = @"AT_dismiss_pinned_half";
  v7[9] = @"AT_PinFloatAppLeft";
  v7[10] = @"AT_PinFloatAppRight";
  v7[11] = @"AT_UnpinAppLeft";
  v7[12] = @"AT_UnpinAppRight";
  v7[13] = @"AT_SlideOpenFloatApp";
  v7[14] = @"AT_dismiss_overlay";
  v7[15] = @"AT_MoveFloatAppLeft";
  v7[16] = @"AT_MoveFloatAppRight";
  v7[17] = @"AT_Multitask";
  v3 = AXUIAssistiveTouchImageNameForName(*MEMORY[0x1E69897C0]);
  v7[18] = v3;
  v4 = AXUIAssistiveTouchImageNameForName(*MEMORY[0x1E69897C8]);
  v7[19] = v4;
  v7[20] = @"SCATIcon_device_volumeDown";
  v7[21] = @"SCATIcon_device_volumeUp";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:22];
  v6 = AXUIAssistiveTouchIconRequiresRTLFlipping_ImageNamesToFlip;
  AXUIAssistiveTouchIconRequiresRTLFlipping_ImageNamesToFlip = v5;
}

id AXUIAssistiveTouchImageNameForName(void *a1)
{
  v1 = a1;
  if (AXUIAssistiveTouchImageNameForName_onceToken[0] != -1)
  {
    AXUIAssistiveTouchImageNameForName_cold_1();
  }

  v2 = [AXUIAssistiveTouchImageNameForName_ASTMapping objectForKeyedSubscript:v1];
  if ([v1 hasPrefix:@"CustomGesture-"])
  {
    v3 = [AXUIAssistiveTouchImageNameForName_ASTMapping objectForKeyedSubscript:*MEMORY[0x1E6989550]];

    v2 = v3;
  }

  if ([v1 hasPrefix:*MEMORY[0x1E6989460]])
  {
    v4 = [AXUIAssistiveTouchImageNameForName_ASTMapping objectForKeyedSubscript:*MEMORY[0x1E6989740]];

    v2 = v4;
  }

  return v2;
}

void __AXUIAssistiveTouchImageNameForName_block_invoke()
{
  v82[83] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6989688];
  v81[0] = *MEMORY[0x1E6989618];
  v81[1] = v0;
  v82[0] = @"IconHome";
  v82[1] = @"IconNotificationCenter";
  v1 = *MEMORY[0x1E6989740];
  v81[2] = *MEMORY[0x1E6989550];
  v81[3] = v1;
  v82[2] = @"IconFavorites";
  v82[3] = @"SCATIcon_siri_shortcuts";
  v81[4] = *MEMORY[0x1E6989560];
  v80 = AXUIAssistiveTouchDeviceImageNameForImageName(@"IconDevice");
  v2 = *MEMORY[0x1E6989738];
  v82[4] = v80;
  v82[5] = @"IconSiri";
  v3 = *MEMORY[0x1E69897A0];
  v81[5] = v2;
  v81[6] = v3;
  v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@siri", AXAssistiveTouchSystemImagePrefix];
  v4 = *MEMORY[0x1E6989548];
  v82[6] = v79;
  v82[7] = @"IconControlCenter";
  v5 = *MEMORY[0x1E6989638];
  v81[7] = v4;
  v81[8] = v5;
  v6 = *MEMORY[0x1E69896E0];
  v82[8] = @"IconLock";
  v82[9] = @"IconRotate";
  v7 = *MEMORY[0x1E69897C8];
  v81[9] = v6;
  v81[10] = v7;
  v8 = *MEMORY[0x1E69897C0];
  v82[10] = @"IconVolumeUp";
  v82[11] = @"IconVolumeDown";
  v9 = *MEMORY[0x1E6989678];
  v81[11] = v8;
  v81[12] = v9;
  v10 = *MEMORY[0x1E6989798];
  v82[12] = @"IconMuted";
  v82[13] = @"IconTripleClick";
  v11 = *MEMORY[0x1E6989600];
  v81[13] = v10;
  v81[14] = v11;
  v82[14] = @"IconGestures";
  v81[15] = *MEMORY[0x1E6989730];
  v78 = AXUIAssistiveTouchDeviceImageNameForImageName(@"IconShake");
  v82[15] = v78;
  v81[16] = *MEMORY[0x1E69894C8];
  v77 = AXUIAssistiveTouchDeviceImageNameForImageName(@"IconAppSwitcher");
  v82[16] = v77;
  v81[17] = *MEMORY[0x1E69896F0];
  v76 = AXUIAssistiveTouchDeviceImageNameForImageName(@"IconScreenshot");
  v12 = *MEMORY[0x1E69896A8];
  v82[17] = v76;
  v82[18] = @"IconRotationLock";
  v13 = *MEMORY[0x1E69897B0];
  v81[18] = v12;
  v81[19] = v13;
  v14 = *MEMORY[0x1E6989528];
  v82[19] = @"IconVoiceControl";
  v82[20] = @"IconCommandAndControl";
  v15 = *MEMORY[0x1E69896B8];
  v81[20] = v14;
  v81[21] = v15;
  v16 = *MEMORY[0x1E69896D8];
  v82[21] = @"IconPinch";
  v82[22] = @"SCATIcon_gestures_rotateClockwise";
  v17 = *MEMORY[0x1E69896C0];
  v81[22] = v16;
  v81[23] = v17;
  v18 = *MEMORY[0x1E69895E8];
  v82[23] = @"IconPinch";
  v82[24] = @"IconOrb";
  v19 = *MEMORY[0x1E6989588];
  v81[24] = v18;
  v81[25] = v19;
  v20 = *MEMORY[0x1E6989570];
  v82[25] = @"SCATIcon_gestures_tap";
  v82[26] = @"IconDoubleTap";
  v21 = *MEMORY[0x1E6989640];
  v81[26] = v20;
  v81[27] = v21;
  v22 = *MEMORY[0x1E6989578];
  v82[27] = @"IconOrb";
  v82[28] = @"SCATIcon_gestures_holdAndDrag";
  v23 = *MEMORY[0x1E6989670];
  v81[28] = v22;
  v81[29] = v23;
  v24 = *MEMORY[0x1E6989760];
  v82[29] = @"SCATIcon_gestures_holdAndDrag";
  v82[30] = @"SCATIcon_device_spotlightSearch";
  v25 = *MEMORY[0x1E69896E8];
  v81[30] = v24;
  v81[31] = v25;
  v26 = *MEMORY[0x1E6989770];
  v82[31] = @"IconSOS";
  v82[32] = @"IconDiagnostics";
  v27 = *MEMORY[0x1E69896C8];
  v81[32] = v26;
  v81[33] = v27;
  v75 = AXUIAssistiveTouchDeviceImageNameForImageName(@"IconReachability");
  v28 = *MEMORY[0x1E69896D0];
  v82[33] = v75;
  v82[34] = @"IconRebootDevice";
  v29 = *MEMORY[0x1E6989780];
  v81[34] = v28;
  v81[35] = v29;
  v74 = AXUIAssistiveTouchDeviceImageNameForImageName(@"IconDock");
  v30 = *MEMORY[0x1E69894D0];
  v82[35] = v74;
  v82[36] = @"IconApplePay";
  v31 = *MEMORY[0x1E6989620];
  v81[36] = v30;
  v81[37] = v31;
  v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@keyboard", AXAssistiveTouchSystemImagePrefix];
  v82[37] = v73;
  v81[38] = *MEMORY[0x1E6989790];
  v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@rectangle.and.hand.point.up.left.filled", AXAssistiveTouchSystemImagePrefix];
  v32 = *MEMORY[0x1E6989530];
  v82[38] = v72;
  v82[39] = @"SCATIcon_device_faceID";
  v33 = *MEMORY[0x1E6989758];
  v81[39] = v32;
  v81[40] = v33;
  v34 = *MEMORY[0x1E6989580];
  v82[40] = @"IconSpeakScreen";
  v82[41] = @"IconDwell";
  v35 = *MEMORY[0x1E69895C0];
  v81[41] = v34;
  v81[42] = v35;
  v36 = *MEMORY[0x1E69895B0];
  v82[42] = @"SCATIcon_mediacontrols_play";
  v82[43] = @"IconDwellPause";
  v37 = *MEMORY[0x1E69895B8];
  v81[43] = v36;
  v81[44] = v37;
  v38 = *MEMORY[0x1E69895A0];
  v82[44] = @"IconDwellPause";
  v82[45] = @"IconDwellFallbackDisable";
  v39 = *MEMORY[0x1E69895D0];
  v81[45] = v38;
  v81[46] = v39;
  v40 = *MEMORY[0x1E69895A8];
  v82[46] = @"IconDwellFallbackEnable";
  v82[47] = @"IconDwellFallbackEnable";
  v41 = *MEMORY[0x1E6989598];
  v81[47] = v40;
  v81[48] = v41;
  v82[48] = @"SCATIcon_settings_increaseScanSpeed";
  v82[49] = @"SCATIcon_settings_decreaseScanSpeed";
  v42 = *MEMORY[0x1E69895C8];
  v81[49] = *MEMORY[0x1E6989590];
  v81[50] = v42;
  v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@keyboard", AXAssistiveTouchSystemImagePrefix];
  v43 = *MEMORY[0x1E69896F8];
  v82[50] = v71;
  v82[51] = @"SCATIcon_action_scroll";
  v44 = *MEMORY[0x1E6989728];
  v81[51] = v43;
  v81[52] = v44;
  v45 = *MEMORY[0x1E6989700];
  v82[52] = @"SCATIcon_action_scrollUp";
  v82[53] = @"SCATIcon_action_scrollDown";
  v46 = *MEMORY[0x1E6989708];
  v81[53] = v45;
  v81[54] = v46;
  v47 = *MEMORY[0x1E6989710];
  v82[54] = @"SCATIcon_action_scrollLeft";
  v82[55] = @"SCATIcon_action_scrollRight";
  v48 = *MEMORY[0x1E6989720];
  v81[55] = v47;
  v81[56] = v48;
  v49 = *MEMORY[0x1E6989718];
  v82[56] = @"SCATIcon_action_scrollToTop";
  v82[57] = @"SCATIcon_action_scrollToBottom";
  v50 = *MEMORY[0x1E6989538];
  v81[57] = v49;
  v81[58] = v50;
  v82[58] = @"SCATIcon_action_continuousScrollHorizontal";
  v82[59] = @"SCATIcon_action_continuousScrollVertical";
  v51 = *MEMORY[0x1E6989558];
  v81[59] = *MEMORY[0x1E6989540];
  v81[60] = v51;
  v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@viewfinder", AXAssistiveTouchSystemImagePrefix];
  v82[60] = v70;
  v81[61] = *MEMORY[0x1E69897D0];
  v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@rectangle.on.rectangle", AXAssistiveTouchSystemImagePrefix];
  v82[61] = v69;
  v81[62] = *MEMORY[0x1E69894E8];
  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ear.and.waveform", AXAssistiveTouchSystemImagePrefix];
  v82[62] = v68;
  v81[63] = *MEMORY[0x1E6989680];
  v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@wave.3.forward", AXAssistiveTouchSystemImagePrefix];
  v82[63] = v67;
  v81[64] = *MEMORY[0x1E6989628];
  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@waveform", AXAssistiveTouchSystemImagePrefix];
  v82[64] = v66;
  v81[65] = *MEMORY[0x1E6989630];
  v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@keyboard.badge.waveform", AXAssistiveTouchInternalSystemImagePrefix];
  v82[65] = v65;
  v81[66] = *MEMORY[0x1E6989568];
  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@sun.lefthalf.filled", AXAssistiveTouchSystemImagePrefix];
  v82[66] = v64;
  v81[67] = *MEMORY[0x1E69894F8];
  v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@camera.fill", AXAssistiveTouchSystemImagePrefix];
  v82[67] = v63;
  v81[68] = *MEMORY[0x1E69895F0];
  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@person.crop.square.badge.camera.fill", AXAssistiveTouchSystemImagePrefix];
  v82[68] = v52;
  v81[69] = *MEMORY[0x1E6989748];
  v82[69] = @"SCATIcon_siri_shortcuts";
  v81[70] = *MEMORY[0x1E69894C0];
  v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@iphone.action.button.arrow.right", AXAssistiveTouchInternalSystemImagePrefix];
  v82[70] = v53;
  v81[71] = *MEMORY[0x1E6989500];
  v82[71] = @"SCATIcon_device_cameraButton";
  v81[72] = *MEMORY[0x1E6989510];
  v82[72] = @"SCATIcon_device_cameraButton";
  v81[73] = *MEMORY[0x1E6989508];
  v82[73] = @"SCATIcon_device_cameraButton";
  v81[74] = *MEMORY[0x1E69897A8];
  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@apple.intelligence", AXAssistiveTouchSystemImagePrefix];
  v82[74] = v54;
  v81[75] = *MEMORY[0x1E69894F0];
  v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@dot.scope", AXAssistiveTouchSystemImagePrefix];
  v82[75] = v55;
  v81[76] = *MEMORY[0x1E6989698];
  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@square.arrowtriangle.4.outward", AXAssistiveTouchSystemImagePrefix];
  v82[76] = v56;
  v81[77] = *MEMORY[0x1E6989690];
  v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@eye.tracking", AXAssistiveTouchInternalSystemImagePrefix];
  v82[77] = v57;
  v81[78] = *MEMORY[0x1E6989608];
  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@apple.haptics.and.music.note", AXAssistiveTouchSystemImagePrefix];
  v82[78] = v58;
  v81[79] = *MEMORY[0x1E6989658];
  v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@motion.cues", AXAssistiveTouchInternalSystemImagePrefix];
  v82[79] = v59;
  v81[80] = *MEMORY[0x1E69894D8];
  v82[80] = @"IconAssistiveAccess";
  v81[81] = *MEMORY[0x1E69894B8];
  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@accessibility.page", AXAssistiveTouchInternalSystemImagePrefix];
  v82[81] = v60;
  v81[82] = *MEMORY[0x1E6989650];
  v82[82] = @"IconMenuBar";
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:83];
  v62 = AXUIAssistiveTouchImageNameForName_ASTMapping;
  AXUIAssistiveTouchImageNameForName_ASTMapping = v61;
}

id AXUIAssistiveTouchImageForName(void *a1)
{
  v1 = a1;
  v2 = AXUIAssistiveTouchImageNameForName(v1);
  if (v2 && AXDeviceIsPhone() && ([MEMORY[0x1E69DCEB0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), v5 = v4, v3, v5 > 480.0))
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [v2 stringByAppendingString:@"-tall"];
    v8 = AXAssistiveTouchBundle();
    v9 = [v6 _deviceSpecificImageNamed:v7 inBundle:v8];
  }

  else
  {
    v9 = 0;
  }

  if (([v2 hasPrefix:AXAssistiveTouchSystemImagePrefix] & 1) != 0 || objc_msgSend(v1, "hasPrefix:", AXAssistiveTouchSystemImagePrefix))
  {
    if (v2)
    {
      v10 = v2;
    }

    else
    {
      v10 = v1;
    }

    v11 = MEMORY[0x1E69DCAB8];
    v12 = [v10 stringByReplacingOccurrencesOfString:AXAssistiveTouchSystemImagePrefix withString:&stru_1F4041FC0];
    v13 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:30.0];
    v14 = [v11 systemImageNamed:v12 withConfiguration:v13];

    v9 = v14;
  }

  if (([v2 hasPrefix:AXAssistiveTouchInternalSystemImagePrefix] & 1) != 0 || objc_msgSend(v1, "hasPrefix:", AXAssistiveTouchInternalSystemImagePrefix))
  {
    if (v2)
    {
      v15 = v2;
    }

    else
    {
      v15 = v1;
    }

    v16 = MEMORY[0x1E69DCAB8];
    v17 = [v15 stringByReplacingOccurrencesOfString:AXAssistiveTouchInternalSystemImagePrefix withString:&stru_1F4041FC0];
    v18 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:30.0];
    v19 = [v16 _systemImageNamed:v17 withConfiguration:v18];

    v9 = v19;
  }

  if (!v9)
  {
    v20 = MEMORY[0x1E69DCAB8];
    v21 = AXAssistiveTouchBundle();
    v22 = [v20 _deviceSpecificImageNamed:v2 inBundle:v21];

    v23 = [v22 imageByPreparingThumbnailOfSize:{60.0, 60.0}];
    v24 = v23;
    if (v23)
    {
      v9 = v23;
    }

    else
    {
      v25 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:30.0];
      v9 = [v22 imageByApplyingSymbolConfiguration:v25];

      v22 = v25;
    }
  }

  return v9;
}

BOOL AXPreferredContentSizeCategoryIsAccessibilityCategory()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = ([v1 isEqualToString:*MEMORY[0x1E69DDC40]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC38]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC28]) & 1) != 0 || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC20]);
  return v2;
}

uint64_t AXUIZoomControllerColor(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 == 2)
    {
      v1 = [MEMORY[0x1E69DC888] systemBlueColor];
      goto LABEL_13;
    }

    if (a1 == 3)
    {
      v1 = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_13;
    }

LABEL_12:
    v1 = [MEMORY[0x1E69DC888] systemWhiteColor];
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v1 = [MEMORY[0x1E69DC888] systemGreenColor];
    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v1 = [MEMORY[0x1E69DC888] systemYellowColor];
    goto LABEL_13;
  }

  if (a1 != 6)
  {
    goto LABEL_12;
  }

  v1 = [MEMORY[0x1E69DC888] systemOrangeColor];
LABEL_13:
  v2 = v1;
  v3 = [v1 CGColor];

  return v3;
}

double AXUIRectForZoomFocusChangeNotification(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:@"frame"];
  v17 = NSRectFromString(v3);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;

  v8 = [v1 userInfo];

  v9 = [v8 objectForKey:@"window"];

  if (v9)
  {
    v10 = [MEMORY[0x1E6989890] sharedInstance];
    v11 = [v10 zoomShouldFollowFocus];

    if (v11)
    {
      [v9 convertRect:0 toWindow:{x, y, width, height}];
      x = AXUIConvertRectFromScreenToContextSpace(v9, v12, v13, v14, v15);
    }
  }

  return x;
}

id AXAppNameForBundleId(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E6988738]])
  {
    v2 = @"HOME_SCREEN";
LABEL_7:
    v3 = AXUILocalizedStringForKeyWithTable(v2, @"AXUILocalizedStrings");
    goto LABEL_8;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E6988720]])
  {
    v2 = @"LIVE_TRANSCRIPTION_TITLE";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E6988728]])
  {
    v2 = @"WALLET_TITLE";
    goto LABEL_7;
  }

  v8 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v8];
  v6 = v8;
  if (v6)
  {
    v7 = AXLogSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      AXAppNameForBundleId_cold_1(v6, v7);
    }
  }

  v3 = [v5 localizedName];

LABEL_8:

  return v3;
}

float AXTextSizePercentage(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DD1B8];
  v2 = *MEMORY[0x1E69DDC70];
  v3 = a1;
  v4 = [v1 traitCollectionWithPreferredContentSizeCategory:v2];
  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v3];

  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v4];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6 compatibleWithTraitCollection:v5];
  [v8 pointSize];
  v10 = v9;
  [v7 pointSize];
  v12 = v10 / v11 * 100.0;
  v13 = (5 * (v12 / 5));
  v14 = AXLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = MEMORY[0x1E696AD98];
    [v8 pointSize];
    v16 = [v15 numberWithDouble:?];
    v17 = MEMORY[0x1E696AD98];
    [v7 pointSize];
    v18 = [v17 numberWithDouble:?];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v20 = [MEMORY[0x1E696AD98] numberWithInt:v13];
    v22 = 138413058;
    v23 = v16;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v19;
    v28 = 2112;
    v29 = v20;
    _os_log_impl(&dword_1C0DFB000, v14, OS_LOG_TYPE_INFO, "Text size: %@/%@=%@ => %@", &v22, 0x2Au);
  }

  return v13 / 100.0;
}

double AXCornerRadiusForBackgroundWithSize(double a1, double a2)
{
  v2 = fmin(a1, a2) * 0.5;
  v3 = fmin(fmin(v2 * 0.34, 34.0), v2);
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    AXCornerRadiusForBackgroundWithSize_cold_1(v4);
  }

  return v3;
}

BOOL AXCornerRadiusForIntersection(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  v14 = CGRectIntersection(v13, v15);
  return CGRectIsNull(v14);
}

double AXCornerRadiiForFrameInContainer@<D0>(double *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D6>, double a7@<D7>, double a8)
{
  v14 = fmax(AXCornerRadiusForBackgroundWithSize(a4, a5), a8);
  v23 = a7 - v14;
  AXCornerRadiusForIntersection(a2, a3, a4, a5, 0.0, 0.0, v14, v14);
  v25 = v15;
  v21 = a2;
  AXCornerRadiusForIntersection(a2, a3, a4, a5, a6 - v14, 0.0, v14, v14);
  v22 = v16;
  AXCornerRadiusForIntersection(a2, a3, a4, a5, 0.0, v23, v14, v14);
  v18 = v17;
  AXCornerRadiusForIntersection(v21, a3, a4, a5, a6 - v14, v23, v14, v14);
  *a1 = v18;
  *(a1 + 1) = v18;
  *(a1 + 2) = v19;
  *(a1 + 3) = v19;
  *(a1 + 4) = v22;
  *(a1 + 5) = v22;
  result = v25;
  a1[6] = v25;
  a1[7] = v25;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C0E47BF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0E47C10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C0E47CF0()
{
  sub_1C0E50E34();
  swift_getWitnessTable();
  sub_1C0E507A4();
  return sub_1C0E50E44();
}

uint64_t sub_1C0E47D58()
{
  swift_getWitnessTable();

  return sub_1C0E50794();
}

void sub_1C0E47DD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C0E47E8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AccessibilityShortcutOptionsList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_1C0E50834();
  sub_1C0E48610(&qword_1EBE75C20, MEMORY[0x1E6989458]);
  sub_1C0E50904();
  sub_1C0E50804();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75C30);
  sub_1C0E491B0(&qword_1EBE75C38, &qword_1EBE75C28);
  sub_1C0E48558();
  sub_1C0E48610(&qword_1EBE75C60, MEMORY[0x1E6989440]);
  sub_1C0E50C24();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75C68) + 36));
  sub_1C0E50984();
  sub_1C0E48B0C();
  result = sub_1C0E50D44();
  *v7 = &unk_1C0E58610;
  v7[1] = v6;
  return result;
}

uint64_t sub_1C0E48108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_1C0E507F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = sub_1C0E507E4();
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75C50);
  v7 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = v18 - v8;
  (*(v4 + 16))(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v18[4] = a1;
  v19 = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75C90);
  sub_1C0E491B0(&qword_1EBE75C98, &qword_1EBE75C90);
  sub_1C0E50BB4();
  v12 = sub_1C0E50A24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00]();
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    sub_1C0E50A14();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C0E491F8(&qword_1EBE75CA0, MEMORY[0x1EEE7F940]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75CA8);
    sub_1C0E491B0(&qword_1EBE75CB0, &qword_1EBE75CA8);
    sub_1C0E50E14();
  }

  sub_1C0E491B0(&qword_1EBE75C48, &qword_1EBE75C50);
  v16 = v18[0];
  sub_1C0E50AE4();
  (*(v13 + 8))(v15, v12);
  return (*(v7 + 8))(v9, v16);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C0E48558()
{
  result = qword_1EBE75C40;
  if (!qword_1EBE75C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE75C30);
    sub_1C0E491B0(&qword_1EBE75C48, &qword_1EBE75C50);
    sub_1C0E491F8(&qword_1EBE75C58, MEMORY[0x1EEE7C5E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75C40);
  }

  return result;
}

uint64_t sub_1C0E48610(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1C0E48658@<D0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_1C0E50A04();
  v15 = 1;
  sub_1C0E48748(a1, &v10);
  v18 = v12;
  v19[0] = v13[0];
  *(v19 + 12) = *(v13 + 12);
  v16 = v10;
  v17 = v11;
  v20[2] = v12;
  v21[0] = v13[0];
  *(v21 + 12) = *(v13 + 12);
  v20[0] = v10;
  v20[1] = v11;
  sub_1C0E49240(&v16, &v9);
  sub_1C0E492B0(v20);
  *&v14[7] = v16;
  *&v14[67] = *(v19 + 12);
  *&v14[55] = v19[0];
  *&v14[39] = v18;
  *&v14[23] = v17;
  v5 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v14[64];
  result = *v14;
  v7 = *&v14[16];
  *(a2 + 17) = *v14;
  v8 = v15;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v14[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_1C0E48748@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_1C0E507C4();
  sub_1C0E49318();
  v4 = sub_1C0E50A84();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (a1)
  {
    v11 = sub_1C0E50B54();
    v12 = sub_1C0E50B34();
    KeyPath = swift_getKeyPath();
    v14 = sub_1C0E50A64();

    v15 = 1;
  }

  else
  {
    v15 = 0;
    v11 = 0;
    KeyPath = 0;
    v12 = 0;
    v14 = 0;
  }

  sub_1C0E4936C(v4, v6, v8 & 1);

  sub_1C0E4937C(0, v15, v11);
  sub_1C0E493CC(0, v15, v11);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = v11;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v12;
  *(a2 + 72) = v14;
  sub_1C0E493CC(0, v15, v11);
  sub_1C0E4941C(v4, v6, v8 & 1);
}

uint64_t sub_1C0E488E8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1C0E50D34();
  *(v3 + 32) = sub_1C0E50D24();
  v5 = sub_1C0E50D14();

  return MEMORY[0x1EEE6DFA0](sub_1C0E48984, v5, v4);
}

uint64_t sub_1C0E48984()
{

  sub_1C0E50834();
  sub_1C0E48610(&qword_1EBE75C20, MEMORY[0x1E6989458]);
  sub_1C0E50904();
  sub_1C0E50814();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0E48A64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C0E4942C;

  return sub_1C0E488E8(v2, v3, v4);
}

void AccessibilityShortcutOptionsList.init()(uint64_t a1@<X8>)
{
  *a1 = sub_1C0E47ED0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1C0E48B98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_1C0E50834();
  sub_1C0E48610(&qword_1EBE75C20, MEMORY[0x1E6989458]);
  sub_1C0E50904();
  sub_1C0E50804();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75C30);
  sub_1C0E491B0(&qword_1EBE75C38, &qword_1EBE75C28);
  sub_1C0E48558();
  sub_1C0E48610(&qword_1EBE75C60, MEMORY[0x1E6989440]);
  sub_1C0E50C24();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75C68) + 36));
  sub_1C0E50984();
  sub_1C0E48B0C();
  result = sub_1C0E50D44();
  *v7 = &unk_1C0E58740;
  v7[1] = v6;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0E48DC4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C0E48E0C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0E48E60()
{
  result = qword_1EBE75C70;
  if (!qword_1EBE75C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE75C68);
    sub_1C0E48EF8();
    sub_1C0E491F8(&qword_1EBE75C88, MEMORY[0x1EEE7B780]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75C70);
  }

  return result;
}

unint64_t sub_1C0E48EF8()
{
  result = qword_1EBE75C78;
  if (!qword_1EBE75C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE75C80);
    sub_1C0E48558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75C78);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  sub_1C0E48A5C();

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C0E48FAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C0E49054;

  return sub_1C0E488E8(v2, v3, v4);
}

uint64_t sub_1C0E49054()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C0E491B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0E491F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0E49240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75CB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0E492B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C0E49318()
{
  result = qword_1EBE75CC0;
  if (!qword_1EBE75CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75CC0);
  }

  return result;
}

uint64_t sub_1C0E4936C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C0E4937C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C0E493CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C0E4941C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1C0E49430()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6987110]) init];
  v2 = OBJC_IVAR___AXCameraManager_session;
  v3 = *(v0 + OBJC_IVAR___AXCameraManager_session);
  *(v0 + OBJC_IVAR___AXCameraManager_session) = v1;
  v4 = v1;

  [v4 beginConfiguration];
  v5 = *(v0 + v2);
  if (v5)
  {
    [v5 setSessionPreset_];
  }

  v6 = AXLogCommon();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C0E50DA4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = *(v0 + v2);
      *(v9 + 4) = v11;
      *v10 = v11;
      v12 = v11;
      _os_log_impl(&dword_1C0DFB000, v7, v8, "Initialize camera capture session %@", v9, 0xCu);
      sub_1C0E4A5D4(v10);
      MEMORY[0x1C68E8CD0](v10, -1, -1);
      MEMORY[0x1C68E8CD0](v9, -1, -1);
    }

    v13 = *(v0 + v2);
    if (v13)
    {
      v14 = objc_opt_self();
      v15 = v13;
      v16 = [v14 systemPreferredCamera];
      v17 = sub_1C0E4A1C8(v16, v15);

      v18 = [objc_allocWithZone(MEMORY[0x1E6987178]) init];
      [v18 setSampleBufferDelegate:v0 queue:*(v0 + OBJC_IVAR___AXCameraManager_queue)];
      if ([v15 canAddOutput_])
      {
        [v15 addOutput_];
      }

      [v15 commitConfiguration];
      [v15 startRunning];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C0E49694()
{
  v1 = sub_1C0E50CA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0E50CC4();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR___AXCameraManager_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1C0E4A650;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0E49A60;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_1C0E50CB4();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1C0E4A670(&qword_1EBE75D88, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75D90);
  sub_1C0E4A6B8(&qword_1EBE75D98, &qword_1EBE75D90);
  sub_1C0E50E14();
  MEMORY[0x1C68E7A20](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_1C0E49950(_BYTE *a1)
{
  v1 = OBJC_IVAR___AXCameraManager_shouldPublish;
  if ((a1[OBJC_IVAR___AXCameraManager_shouldPublish] & 1) == 0)
  {
    a1[OBJC_IVAR___AXCameraManager_shouldPublish] = 1;
    sub_1C0E49430();
    v3 = sub_1C0E50D74();
    v4 = AXLogCommon();
    if (v4)
    {
      log = v4;
      if (os_log_type_enabled(v4, v3))
      {
        v5 = a1;
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = a1[v1];

        _os_log_impl(&dword_1C0DFB000, log, v3, "Roya: Started capture %{BOOL}d", v6, 8u);
        MEMORY[0x1C68E8CD0](v6, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C0E49A60(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C0E49AA4()
{
  v1 = OBJC_IVAR___AXCameraManager_shouldPublish;
  if (v0[OBJC_IVAR___AXCameraManager_shouldPublish] == 1)
  {
    v0[OBJC_IVAR___AXCameraManager_shouldPublish] = 0;
    [*&v0[OBJC_IVAR___AXCameraManager_session] stopRunning];
    v2 = sub_1C0E50D74();
    v3 = AXLogCommon();
    if (v3)
    {
      log = v3;
      if (os_log_type_enabled(v3, v2))
      {
        v4 = v0;
        v5 = swift_slowAlloc();
        *v5 = 67109120;
        *(v5 + 4) = v0[v1];

        _os_log_impl(&dword_1C0DFB000, log, v2, "Roya: Stopped capture %{BOOL}d", v5, 8u);
        MEMORY[0x1C68E8CD0](v5, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id AccessibilityCameraManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessibilityCameraManager.init()()
{
  v10 = sub_1C0E50DC4();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0E50DB4();
  MEMORY[0x1EEE9AC00]();
  sub_1C0E50CC4();
  MEMORY[0x1EEE9AC00]();
  v9 = OBJC_IVAR___AXCameraManager_queue;
  v4 = sub_1C0E49EA4();
  v8[1] = "N_TITLE";
  v8[2] = v4;
  sub_1C0E50CB4();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C0E4A670(&qword_1EBE75CE0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75CE8);
  sub_1C0E4A6B8(&qword_1EBE75CF0, &qword_1EBE75CE8);
  sub_1C0E50E14();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  *&v0[v9] = sub_1C0E50DE4();
  v0[OBJC_IVAR___AXCameraManager_shouldPublish] = 0;
  v0[OBJC_IVAR___AXCameraManager_isInitialized] = 0;
  v5 = &v0[OBJC_IVAR___AXCameraManager_frameHandler];
  *v5 = 0;
  v5[1] = 0;
  *&v0[OBJC_IVAR___AXCameraManager_session] = 0;
  v6 = type metadata accessor for AccessibilityCameraManager();
  v11.receiver = v0;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1C0E49EA4()
{
  result = qword_1EBE75CD8;
  if (!qword_1EBE75CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE75CD8);
  }

  return result;
}

uint64_t sub_1C0E49F38(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___AXCameraManager_frameHandler);
  v4 = *(v2 + OBJC_IVAR___AXCameraManager_frameHandler);
  *v3 = a1;
  v3[1] = a2;

  sub_1C0E49F94(v4);

  return sub_1C0E49694();
}

uint64_t sub_1C0E49F94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id AccessibilityCameraManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilityCameraManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0E4A0F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccessibilityCameraManager();
  result = sub_1C0E508C4();
  *a1 = result;
  return result;
}

NSObject *sub_1C0E4A1C8(NSObject *a1, void *a2)
{
  v2 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69870B0]);
  v16[0] = 0;
  v5 = v2;
  v6 = [v4 initWithDevice:v5 error:v16];
  if (v6)
  {
    v2 = v6;
    v7 = v16[0];

    if ([a2 canAddInput_])
    {
      [a2 addInput_];
      return v2;
    }

    goto LABEL_8;
  }

  v8 = v16[0];
  v9 = sub_1C0E50784();

  swift_willThrow();
  result = AXLogCommon();
  if (result)
  {
    v2 = result;
    v11 = sub_1C0E50DA4();
    if (!os_log_type_enabled(v2, v11))
    {

      return 0;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1C0DFB000, v2, v11, "Couldn't get input device: %@", v12, 0xCu);
    sub_1C0E4A5D4(v13);
    MEMORY[0x1C68E8CD0](v13, -1, -1);
    MEMORY[0x1C68E8CD0](v12, -1, -1);

LABEL_8:
    return 0;
  }

  __break(1u);
  return result;
}

void sub_1C0E4A3B4(opaqueCMSampleBuffer *a1)
{
  v3 = AXLogCommon();
  if (!v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  v5 = v1;
  v6 = sub_1C0E50DA4();
  if (os_log_type_enabled(v4, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(&v5->isa + OBJC_IVAR___AXCameraManager_shouldPublish);

    _os_log_impl(&dword_1C0DFB000, v4, v6, "Video capture session didProduce %{BOOL}d", v7, 8u);
    MEMORY[0x1C68E8CD0](v7, -1, -1);
  }

  else
  {

    v4 = v5;
  }

  if (*(&v5->isa + OBJC_IVAR___AXCameraManager_shouldPublish) == 1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = CMSampleBufferGetImageBuffer(a1);
    if (v9)
    {
      v10 = v9;
      sub_1C0E49AA4();
      v11 = *(&v5->isa + OBJC_IVAR___AXCameraManager_frameHandler);
      if (v11)
      {

        v11(v10);

        sub_1C0E49F94(v11);
        goto LABEL_13;
      }

LABEL_12:

LABEL_13:
      v3 = v8;

      goto __objc_autoreleasePoolPop;
    }

    sub_1C0E50D84();
    v3 = AXLogCommon();
    if (v3)
    {
      v10 = v3;
      sub_1C0E50844();
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
__objc_autoreleasePoolPop:
    MEMORY[0x1EEE667C8](v3);
  }
}

uint64_t sub_1C0E4A5D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0E4A670(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0E4A6B8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0E4A70C()
{
  type metadata accessor for CaptionLayoutPreferenceObserver();
  swift_allocObject();
  return sub_1C0E4B87C();
}

double AXCaptionRendererView.init(caption:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  sub_1C0E4C2AC();
  sub_1C0E50B84();
  *(a5 + 16) = v11;
  type metadata accessor for CGSize(0);
  sub_1C0E50B84();
  result = *&v11;
  *(a5 + 32) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = sub_1C0E4A70C;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = a1;
  *(a5 + 88) = a2;
  *(a5 + 96) = a3;
  *(a5 + 104) = a4;
  return result;
}

uint64_t AXCaptionRendererView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v74 = v1[4];
  v75 = v3;
  v76 = v1[6];
  v4 = v1[1];
  v70 = *v1;
  v71 = v4;
  v5 = v1[3];
  v72 = v1[2];
  v73 = v5;
  if (_AXSClosedCaptionsEnabled())
  {
    v54 = a1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E08);
    v55 = &v47;
    v48 = *(v53 - 8);
    MEMORY[0x1EEE9AC00](v53, v6);
    v50 = &v47 - v7;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E10);
    v52 = &v47;
    v51 = *(v49 - 8);
    MEMORY[0x1EEE9AC00](v49, v8);
    v56 = &v47 - v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E18);
    v47 = &v47;
    MEMORY[0x1EEE9AC00](v10, v11);
    v13 = &v47 - v12;
    v14 = sub_1C0E50A34();
    LOBYTE(v57) = 0;
    sub_1C0E4AF0C(&v70, v63);
    *(&v62[3] + 7) = v63[3];
    *(&v62[2] + 7) = v63[2];
    *(&v62[1] + 7) = v63[1];
    *(v62 + 7) = v63[0];
    *(&v58[1] + 1) = v62[1];
    *(&v58[2] + 1) = v62[2];
    *(&v62[4] + 7) = v64;
    *(&v58[3] + 1) = v62[3];
    v58[4] = *(&v62[3] + 15);
    v15 = v57;
    v57 = v14;
    LOBYTE(v58[0]) = v15;
    *(v58 + 1) = v62[0];
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E20);
    sub_1C0E4C2F8();
    sub_1C0E50AD4();
    v65[4] = v58[3];
    v65[5] = v58[4];
    v66 = v59;
    v65[0] = v57;
    v65[1] = v58[0];
    v65[2] = v58[1];
    v65[3] = v58[2];
    sub_1C0E4CF18(v65, &qword_1EBE75E20);
    sub_1C0E50C94();
    sub_1C0E50944();
    v16 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E40) + 36)];
    v17 = v68;
    *v16 = v67;
    *(v16 + 1) = v17;
    *(v16 + 2) = v69;
    type metadata accessor for CaptionLayoutPreferenceObserver();
    sub_1C0E4CF78(&qword_1EBE75E48, type metadata accessor for CaptionLayoutPreferenceObserver);
    v18 = *(sub_1C0E50904() + 16);

    v19 = swift_allocObject();
    v20 = v75;
    *(v19 + 5) = v74;
    *(v19 + 6) = v20;
    *(v19 + 7) = v76;
    v21 = v71;
    *(v19 + 1) = v70;
    *(v19 + 2) = v21;
    v22 = v73;
    *(v19 + 3) = v72;
    *(v19 + 4) = v22;
    *&v13[*(v10 + 52)] = v18;
    v23 = &v13[*(v10 + 56)];
    *v23 = sub_1C0E4C3C8;
    v23[1] = v19;
    v60 = v72;
    v61 = v73;
    sub_1C0E4C3D0(&v70, &v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E50);
    sub_1C0E50B94();
    v60 = v57;
    v24 = swift_allocObject();
    v25 = v75;
    v24[5] = v74;
    v24[6] = v25;
    v24[7] = v76;
    v26 = v71;
    v24[1] = v70;
    v24[2] = v26;
    v27 = v73;
    v24[3] = v72;
    v24[4] = v27;
    sub_1C0E4C3D0(&v70, &v57);
    type metadata accessor for CGSize(0);
    v29 = v28;
    v30 = sub_1C0E491B0(&qword_1EBE75E58, &qword_1EBE75E18);
    v31 = sub_1C0E4C410();
    sub_1C0E50B14();

    sub_1C0E4CF18(v13, &qword_1EBE75E18);
    v57 = v75;
    v58[0] = v76;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E68);
    MEMORY[0x1C68E7850](&v60, v32);
    v33 = swift_allocObject();
    v34 = v75;
    v33[5] = v74;
    v33[6] = v34;
    v33[7] = v76;
    v35 = v71;
    v33[1] = v70;
    v33[2] = v35;
    v36 = v73;
    v33[3] = v72;
    v33[4] = v36;
    sub_1C0E4C3D0(&v70, &v57);
    *&v57 = v10;
    *(&v57 + 1) = v29;
    *&v58[0] = v30;
    *(&v58[0] + 1) = v31;
    swift_getOpaqueTypeConformance2();
    v38 = v49;
    v37 = v50;
    v39 = v56;
    sub_1C0E50B04();

    (*(v51 + 8))(v39, v38);
    v40 = v48;
    v41 = v54;
    v42 = v37;
    v43 = v53;
    (*(v48 + 32))(v54, v42, v53);
    return (*(v40 + 56))(v41, 0, 1, v43);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E08);
    v46 = *(*(v45 - 8) + 56);

    return v46(a1, 1, 1, v45);
  }
}

uint64_t sub_1C0E4AF0C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EA8);
  sub_1C0E50B94();
  sub_1C0E50B44();
  v4 = sub_1C0E50B64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E6981638], v4);
  v9 = sub_1C0E50B74();

  (*(v5 + 8))(v8, v4);
  v10 = sub_1C0E50C94();
  v12 = v11;
  v13 = swift_allocObject();
  v14 = a1[5];
  v13[5] = a1[4];
  v13[6] = v14;
  v13[7] = a1[6];
  v15 = a1[1];
  v13[1] = *a1;
  v13[2] = v15;
  v16 = a1[3];
  v13[3] = a1[2];
  v13[4] = v16;
  LOBYTE(v19) = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v9;
  *(a2 + 24) = sub_1C0E4B0F0;
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_1C0E4D038;
  *(a2 + 48) = v13;
  *(a2 + 56) = v10;
  *(a2 + 64) = v12;
  return sub_1C0E4C3D0(a1, v18);
}

uint64_t sub_1C0E4B0F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C0E50B24();
  result = sub_1C0E50954();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C0E4B18C(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v15 = a2[4];
  v16 = v3;
  v17 = a2[6];
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  v5 = a2[3];
  v13 = a2[2];
  v14 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E50);
  sub_1C0E50B94();
  v6 = *v10;
  v7 = *&v10[1];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E68);
  MEMORY[0x1C68E7850](v10, v8);
  sub_1C0E4B294(v6, v7);

  v11 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EA8);
  return sub_1C0E50BA4();
}

UIImage *sub_1C0E4B294(CGFloat a1, CGFloat a2)
{
  v5 = *v2;
  if (*(v2 + 8) == 1)
  {
    v6 = *v2;
  }

  else
  {

    sub_1C0E50D94();
    v7 = sub_1C0E50A74();
    sub_1C0E50844();

    v8 = sub_1C0E509F4();
    v9 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v8, v10);
    v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1C0E509E4();
    swift_getAtKeyPath();
    sub_1C0E4C3BC(v5, 0);
    (*(v9 + 8))(v12, v8);
    v6 = *&v21[1];
  }

  v22.width = a1;
  v22.height = a2;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v6);
  v13 = UIGraphicsGetCurrentContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0E58840;
  v15 = *MEMORY[0x1E6960978];
  *(inited + 32) = *MEMORY[0x1E6960978];
  *(inited + 40) = 0x4049000000000000;
  v16 = v15;
  sub_1C0E4CE28(inited);
  swift_setDeallocating();
  sub_1C0E4CF18(inited + 32, &qword_1EBE75EB8);
  if (qword_1EBE75BF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = sub_1C0E50CE4();
  type metadata accessor for CFString(0);
  sub_1C0E4CF78(&qword_1EBE75C10, type metadata accessor for CFString);
  v18 = sub_1C0E50CD4();

  FigSubtitleRendererDrawSubtitleTextDirect();

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!v19)
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  return v19;
}

uint64_t sub_1C0E4B5E8(__int128 *a1)
{
  v2 = a1[5];
  v14 = a1[4];
  v15 = v2;
  v16 = a1[6];
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v4 = a1[3];
  v12 = a1[2];
  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E50);
  sub_1C0E50B94();
  v5 = *v9;
  v6 = *&v9[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E68);
  MEMORY[0x1C68E7850](v9, v7);
  sub_1C0E4B294(v5, v6);

  v10 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EA8);
  return sub_1C0E50BA4();
}

uint64_t sub_1C0E4B6F0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a3[5];
  v16 = a3[4];
  v17 = v4;
  v18 = a3[6];
  v5 = a3[1];
  v12 = *a3;
  v13 = v5;
  v6 = a3[3];
  v14 = a3[2];
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E50);
  sub_1C0E50B94();
  v7 = *v11;
  v8 = *&v11[1];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E68);
  MEMORY[0x1C68E7850](v11, v9);
  sub_1C0E4B294(v7, v8);

  v12 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EA8);
  return sub_1C0E50BA4();
}

double sub_1C0E4B804(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1C0E4B87C()
{
  v1 = v0;
  sub_1C0E508F4();
  swift_allocObject();
  *(v0 + 16) = sub_1C0E508E4();
  v2 = [objc_opt_self() defaultCenter];
  result = *MEMORY[0x1E6973998];
  if (*MEMORY[0x1E6973998])
  {
    sub_1C0E50CF4();
    v4 = sub_1C0E50CE4();

    [v2 addObserver:v1 selector:sel_captionAppearanceChanged name:v4 object:0];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0E4B950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C0E50D34();
  *(v4 + 24) = sub_1C0E50D24();
  v6 = sub_1C0E50D14();

  return MEMORY[0x1EEE6DFA0](sub_1C0E4B9E8, v6, v5);
}

uint64_t sub_1C0E4B9E8()
{

  sub_1C0E508D4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0E4BA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EA0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1C0E4C8A0(a3, v26 - v11, &qword_1EBE75EA0);
  v13 = sub_1C0E50D64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C0E4CF18(v12, &qword_1EBE75EA0);
  }

  else
  {
    sub_1C0E50D54();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C0E50D14();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C0E50D04() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1C0E4CF18(a3, &qword_1EBE75EA0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C0E4CF18(a3, &qword_1EBE75EA0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C0E4BE90()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t View.axCaptionRendererOverlay(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return MEMORY[0x1C68E7740](v7, a5, &type metadata for AXCaptionRendererOverlayOverlayModifier, a6);
}

uint64_t sub_1C0E4BF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_1C0E50C94();
  v24 = v12;
  v25 = v11;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E68);
  sub_1C0E50C14();
  v13 = v30;
  v21 = *(&v30 + 1);
  v22 = v30;
  v14 = v31;
  KeyPath = swift_getKeyPath();
  v27 = 0;
  [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  sub_1C0E4C2AC();
  sub_1C0E50B84();
  type metadata accessor for CGSize(0);
  sub_1C0E50B84();
  LOBYTE(v38) = 0;
  *&v30 = KeyPath;
  BYTE8(v30) = 0;
  *(&v30 + 9) = *v29;
  HIDWORD(v30) = *&v29[3];
  *&v31 = a2;
  *(&v31 + 1) = a3;
  v32 = __PAIR128__(a3, a2);
  *&v33 = a4;
  *(&v33 + 1) = sub_1C0E4A70C;
  *&v34 = 0;
  BYTE8(v34) = 0;
  HIDWORD(v34) = *&v28[3];
  *(&v34 + 9) = *v28;
  v35 = v13;
  v36 = v14;
  *&v37 = v25;
  *(&v37 + 1) = v24;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E88);
  (*(*(v15 - 8) + 16))(a6, a1, v15);
  v16 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75E90) + 36));
  v16[4] = v34;
  v16[5] = v13;
  v17 = v37;
  v16[6] = v36;
  v16[7] = v17;
  v18 = v31;
  *v16 = v30;
  v16[1] = v18;
  v19 = v33;
  v16[2] = v32;
  v16[3] = v19;
  v38 = KeyPath;
  LOBYTE(v39) = 0;
  HIDWORD(v39) = *&v29[3];
  *(&v39 + 1) = *v29;
  v40 = a2;
  v41 = a3;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = sub_1C0E4A70C;
  v46 = 0;
  v47 = 0;
  *v48 = *v28;
  *&v48[3] = *&v28[3];
  v49 = v22;
  v50 = v21;
  v51 = v14;
  v52 = v25;
  v53 = v24;
  sub_1C0E4C8A0(&v30, &v27, &qword_1EBE75E98);
  return sub_1C0E4CF18(&v38, &qword_1EBE75E98);
}

uint64_t sub_1C0E4C224()
{
  type metadata accessor for RendererHost();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_beginAccess();
  FigCoreTextSubtitleRendererCreate();
  result = swift_endAccess();
  qword_1EBE766A0 = v0;
  return result;
}

unint64_t sub_1C0E4C2AC()
{
  result = qword_1EBE75E00;
  if (!qword_1EBE75E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE75E00);
  }

  return result;
}

unint64_t sub_1C0E4C2F8()
{
  result = qword_1EBE75E28;
  if (!qword_1EBE75E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE75E20);
    sub_1C0E491B0(&qword_1EBE75E30, &qword_1EBE75E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75E28);
  }

  return result;
}

uint64_t sub_1C0E4C3BC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C0E4C410()
{
  result = qword_1EBE75E60;
  if (!qword_1EBE75E60)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75E60);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1C0E4C4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0E4C504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C0E4C594()
{
  result = qword_1EBE75E70;
  if (!qword_1EBE75E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE75E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE75E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE75E18);
    type metadata accessor for CGSize(255);
    sub_1C0E491B0(&qword_1EBE75E58, &qword_1EBE75E18);
    sub_1C0E4C410();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75E70);
  }

  return result;
}

unint64_t sub_1C0E4C6C8()
{
  result = qword_1EBE75E80;
  if (!qword_1EBE75E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75E80);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0E4C728(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0E4C770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0E4C7EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0E49054;

  return sub_1C0E4B950(a1, v4, v5, v6);
}

uint64_t sub_1C0E4C8A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0E4C908(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C0E4CA00;

  return v6(a1);
}

uint64_t sub_1C0E4CA00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C0E4CAF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0E4942C;

  return sub_1C0E4C908(a1, v4);
}

uint64_t sub_1C0E4CBB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0E49054;

  return sub_1C0E4C908(a1, v4);
}

unint64_t sub_1C0E4CC68(uint64_t a1)
{
  sub_1C0E50E34();
  type metadata accessor for CFString(0);
  sub_1C0E4CF78(&qword_1EBE75EC8, type metadata accessor for CFString);
  sub_1C0E507A4();
  v2 = sub_1C0E50E44();

  return sub_1C0E4CD1C(a1, v2);
}

unint64_t sub_1C0E4CD1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1C0E4CF78(&qword_1EBE75EC8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C0E50794();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C0E4CE28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EC0);
    v3 = sub_1C0E50E24();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1C0E4CC68(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0E4CF18(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0E4CF78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  sub_1C0E4C3BC(*(v0 + 16), *(v0 + 24));

  sub_1C0E48A5C();

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

unint64_t sub_1C0E4D040()
{
  result = qword_1EBE75ED0;
  if (!qword_1EBE75ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE75E90);
    sub_1C0E491B0(&qword_1EBE75ED8, &qword_1EBE75E88);
    sub_1C0E491B0(qword_1EBE75EE0, &qword_1EBE75E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE75ED0);
  }

  return result;
}

Swift::Void __swiftcall UIView.ax_setWantsGlassAppearance(_:)(Swift::Bool a1)
{
  v2 = sub_1C0E50884();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v14 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  if (_UISolariumEnabled())
  {
    if (a1)
    {
      sub_1C0E50864();
      sub_1C0E50854();
      v13 = *(v3 + 8);
      v13(v7, v2);
      sub_1C0E50874();
      v13(v11, v2);
      *(&v15 + 1) = sub_1C0E508A4();
      v16 = MEMORY[0x1E69DC388];
      __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1C0E508B4();
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    sub_1C0E50DF4();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1C0E4D308(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIView.ax_setWantsGlassAppearance(_:)(a3);
}

Swift::Void __swiftcall UIView.ax_setWantsFlexibleGlassAppearance(_:)(Swift::Bool a1)
{
  v3 = sub_1C0E50884();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v20 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = sub_1C0E508A4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    if (a1)
    {
      sub_1C0E50864();
      v20[1] = v1;
      sub_1C0E50854();
      v19 = *(v4 + 8);
      v19(v8, v3);
      sub_1C0E50874();
      v19(v12, v3);
      sub_1C0E508B4();
      *(&v22 + 1) = v14;
      v23 = MEMORY[0x1E69DC388];
      __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_1C0E50894();
      (*(v15 + 8))(v18, v14);
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }

    sub_1C0E50DF4();
  }
}

void sub_1C0E4D5A0(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIView.ax_setWantsFlexibleGlassAppearance(_:)(a3);
}

uint64_t Shape.accessibilityGlass()()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return sub_1C0E50A44();
}

uint64_t sub_1C0E4D6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v46 = a3;
  v47 = a1;
  v49 = a4;
  v50 = a2;
  v4 = *(a3 + 16);
  v44 = a2;
  v45 = v4;
  v51 = a2;
  v52 = v4;
  v53 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = *(OpaqueTypeMetadata2 - 8);
  v7 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v43 = &v38 - v10;
  v42 = sub_1C0E50BF4();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1C0E50C84();
  v14 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C0E50C64();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v38 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v38 - v29;
  sub_1C0E50C44();
  sub_1C0E50C34();
  v31 = *(v19 + 8);
  v31(v30, v18);
  sub_1C0E50C54();
  v31(v27, v18);
  sub_1C0E50C74();
  v31(v23, v18);
  sub_1C0E50BD4();
  (*(v14 + 8))(v17, v39);
  v32 = v41;
  sub_1C0E50AB4();
  (*(v40 + 8))(v13, v42);
  v33 = *(v5 + 16);
  v34 = v43;
  v35 = OpaqueTypeMetadata2;
  v33(v43, v32, OpaqueTypeMetadata2);
  v36 = *(v5 + 8);
  v36(v32, v35);
  v33(v49, v34, v35);
  return (v36)(v34, v35);
}

uint64_t sub_1C0E4DAAC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  swift_getOpaqueTypeMetadata2();
  v25 = v2;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  swift_getOpaqueTypeConformance2();
  v6 = sub_1C0E50A54();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v18 - v13;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v18;
  sub_1C0E50A44();
  swift_getWitnessTable();
  v15 = *(v7 + 16);
  v15(v11, v14, v6);
  v16 = *(v7 + 8);
  v16(v14, v6);
  v15(v19, v11, v6);
  return (v16)(v11, v6);
}

uint64_t sub_1C0E4DC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a1;
  v63 = a3;
  v62 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v5;
  v64 = v5;
  v65 = v6;
  v7 = v5;
  v8 = v6;
  v56 = v6;
  v57 = v9;
  v66 = v9;
  v67 = v10;
  v11 = v9;
  v12 = v10;
  v58 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v14);
  v59 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v60 = &v50 - v18;
  v64 = v7;
  v65 = v8;
  v66 = v11;
  v67 = v12;
  v19 = type metadata accessor for GlassWrapperView(0, &v64);
  (*(a1 + *(v19 + 56)))();
  v20 = sub_1C0E50BF4();
  v51 = *(v20 - 8);
  v52 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C0E50C84();
  v24 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C0E50C64();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v50 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v50 - v39;
  sub_1C0E50C44();
  sub_1C0E50C34();
  v41 = *(v29 + 8);
  v41(v40, v28);
  sub_1C0E50C54();
  v41(v37, v28);
  sub_1C0E50C74();
  v41(v33, v28);
  sub_1C0E50BD4();
  (*(v24 + 8))(v27, v50);
  v42 = v59;
  v43 = v54;
  v44 = v55;
  sub_1C0E50AB4();
  (*(v51 + 8))(v23, v52);
  (*(v62 + 8))(v43, v44);
  v45 = *(v13 + 16);
  v47 = v60;
  v46 = OpaqueTypeMetadata2;
  v45(v60, v42, OpaqueTypeMetadata2);
  v48 = *(v13 + 8);
  v48(v42, v46);
  v45(v63, v47, v46);
  return (v48)(v47, v46);
}

uint64_t View.accessibilityGlass<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a6;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a1);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v12, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18);
  (*(v10 + 16))(v13, v6, a2);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  v21 = v25;
  *(v20 + 4) = a4;
  *(v20 + 5) = v21;
  (*(v10 + 32))(&v20[v19], v13, a2);
  v22 = v26;
  (*(v15 + 32))(v26, v18, a3);
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = v21;
  result = type metadata accessor for GlassWrapperView(0, v27);
  *(v22 + *(result + 52)) = 0;
  v24 = (v22 + *(result + 56));
  *v24 = sub_1C0E4E354;
  v24[1] = v20;
  return result;
}

uint64_t View.accessibilityGlass<A>(tint:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a6;
  v6 = sub_1C0E50BF4();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v17 - v13;
  sub_1C0E50BC4();
  sub_1C0E50BE4();
  v15 = *(v7 + 8);
  v15(v14, v6);
  sub_1C0E50AB4();
  return (v15)(v11, v6);
}

void sub_1C0E4E510()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C0E4E8D0();
    if (v1 <= 0x3F)
    {
      sub_1C0E4E920();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C0E4E5B0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1C0E4E6FC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1C0E4E8D0()
{
  if (!qword_1EBE75F68)
  {
    v0 = sub_1C0E50E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE75F68);
    }
  }
}

unint64_t sub_1C0E4E920()
{
  result = qword_1EBE75F70;
  if (!qword_1EBE75F70)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EBE75F70);
  }

  return result;
}

void AXUISettingsCreateWelcomeController_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1C0DFB000, a2, OS_LOG_TYPE_FAULT, "Unexpected view hierarchy for welcome controller: %@", &v2, 0xCu);
}

void AXAppNameForBundleId_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1C0DFB000, a2, OS_LOG_TYPE_ERROR, "Error in getting app name: %@", &v4, 0xCu);
}

void AXCornerRadiusForBackgroundWithSize_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1C0DFB000, a1, OS_LOG_TYPE_DEBUG, "AXCornerRadiusForBackgroundWithSize: %@", &v3, 0xCu);
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x1EEE4DB28](string);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x1EEE4DB90](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}