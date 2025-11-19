@interface UIKeyboardAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityKeyboardIsContinuousPathAvailable;
- (BOOL)_accessibilityKeyboardIsContinuousPathTracking;
- (BOOL)_accessibilityTriggerDictationFromPath:(id)a3;
- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5;
- (BOOL)canBecomeFocused;
- (CGRect)_accessibilityDirectInteractionFrame;
- (CGRect)accessibilityFrame;
- (id)_accessibilityNativeFocusPreferredElement;
- (uint64_t)_accessibilitySwitchToGestureMode:(void *)a1;
- (uint64_t)_axDeleteByCharacter;
- (uint64_t)_axDeleteByWord;
- (uint64_t)_axEnterTextValue:(uint64_t)a1;
- (uint64_t)_axShift;
- (uint64_t)_axShiftLock;
- (void)_voiceOverStatus:(id)a3;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)dictationRecognitionFailed;
- (void)insertDictationResult:(id)a3;
@end

@implementation UIKeyboardAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v14 = location;
  v13 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateProtocol:@"UITextInput_Internal" hasRequiredInstanceMethod:@"_deleteByWord"];
  v9 = "B";
  v7 = @"UIKeyboardImpl";
  [location[0] validateClass:"B" hasInstanceMethod:0 withFullSignature:?];
  v8 = @"UIKeyboardLayoutStar";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v12 = "@";
  [location[0] validateClass:@"UIKBKeyplaneView" hasInstanceMethod:@"viewForKey:" withFullSignature:{"@", 0}];
  [location[0] validateClass:@"UIKBRecentInputsView" hasInstanceMethod:@"collectionView" withFullSignature:{v12, 0}];
  v3 = @"UIKeyboard";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"UIKBLinearCandidateView"];
  [location[0] validateClass:v7 hasInstanceMethod:@"candidateController" withFullSignature:{v12, 0}];
  [location[0] validateClass:@"UIKeyboardCandidateController" hasInstanceMethod:@"activeViews" withFullSignature:{v12, 0}];
  v4 = @"_UIRemoteKeyboards";
  [location[0] validateClass:?];
  [location[0] validateClass:v3 hasClassMethod:@"usesInputSystemUI" withFullSignature:{v9, 0}];
  [location[0] validateClass:v4 hasClassMethod:@"sharedRemoteKeyboards" withFullSignature:{v12, 0}];
  [location[0] validateClass:v4 hasClassMethod:@"enabled" withFullSignature:{v9, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"keyboardWindow" withFullSignature:{v12, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"keyboardVisible" withFullSignature:{v9, 0}];
  v6 = @"UIInputWindowController";
  v5 = "{CGRect={CGPoint=dd}{CGSize=dd}}";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"visibleInputViewFrame" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UIRemoteKeyboardWindow"];
  [location[0] validateClass:v6 hasInstanceMethod:@"inputViewSet" withFullSignature:{v12, 0}];
  v10 = @"UIInputViewSet";
  v11 = @"inputView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceVariable:@"m_layout" withType:"UIKeyboardLayout"];
  [location[0] validateClass:v8 hasInstanceVariable:@"_typingStyleEstimator" withType:"UIKeyboardTypingStyleEstimator"];
  [location[0] validateClass:v8 hasInstanceMethod:@"_allowContinuousPathUI" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"UIKeyboardSceneDelegate" hasInstanceMethod:@"inputViews" withFullSignature:{v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"isInputViewPlaceholder" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:v11 withFullSignature:{v12, 0}];
  objc_storeStrong(v14, v13);
}

- (BOOL)_accessibilityKeyboardIsContinuousPathTracking
{
  v5 = [MEMORY[0x29EDC7B08] activeInstance];
  v4 = [v5 safeValueForKey:@"m_layout"];
  v3 = [v4 safeValueForKey:@"_typingStyleEstimator"];
  v6 = [v3 _accessibilityKeyboardIsContinuousPathTracking];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  return v6;
}

- (BOOL)_accessibilityKeyboardIsContinuousPathAvailable
{
  v4 = [MEMORY[0x29EDC7B08] activeInstance];
  v3 = [v4 safeValueForKey:@"m_layout"];
  v5 = [v3 safeBoolForKey:@"_allowContinuousPathUI"];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  return v5;
}

- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v10 = a5;
  if (v12 == 2600)
  {
    v15 = [(UIKeyboardAccessibility *)v14 _axDeleteByCharacter]& 1;
    v9 = 1;
  }

  else if (v12 == 2601)
  {
    v15 = [(UIKeyboardAccessibility *)v14 _axDeleteByWord]& 1;
    v9 = 1;
  }

  else if (v12 == 2602 || v12 == 2603)
  {
    v15 = [UIKeyboardAccessibility _axAdvanceKeyboardPlane:v14];
    v9 = 1;
  }

  else if (v12 == 2604)
  {
    v15 = [(UIKeyboardAccessibility *)v14 _axCommitWord];
    v9 = 1;
  }

  else if (v12 == 2605)
  {
    v15 = [(UIKeyboardAccessibility *)v14 _axEnterTextValue:?]& 1;
    v9 = 1;
  }

  else if (v12 == 2606 || v12 == 2607)
  {
    v15 = [UIKeyboardAccessibility _axAdvanceKeyboardSuggestion:v14];
    v9 = 1;
  }

  else if (v12 == 2608)
  {
    v15 = [UIKeyboardAccessibility _axAdvanceInternationalKeyboard:v14];
    v9 = 1;
  }

  else if (v12 == 2609)
  {
    v15 = [(UIKeyboardAccessibility *)v14 _axShift]& 1;
    v9 = 1;
  }

  else if (v12 == 2610)
  {
    v15 = [(UIKeyboardAccessibility *)v14 _axShiftLock]& 1;
    v9 = 1;
  }

  else
  {
    if (v12 == 2611)
    {
      v6 = v14;
      [location BOOLValue];
      v15 = [UIKeyboardAccessibility _accessibilitySwitchToGestureMode:v6]& 1;
    }

    else
    {
      v8.receiver = v14;
      v8.super_class = UIKeyboardAccessibility;
      v15 = [(UIKeyboardAccessibility *)&v8 _iosAccessibilityPerformAction:v12 withValue:location fencePort:v10];
    }

    v9 = 1;
  }

  objc_storeStrong(&location, 0);
  return v15 & 1;
}

- (uint64_t)_axDeleteByCharacter
{
  v3[1] = a1;
  if (a1)
  {
    v3[0] = [MEMORY[0x29EDC7B08] activeInstance];
    v2 = MEMORY[0x29EDC9748](v3[0]);
    AXPerformSafeBlock();
    v4 = 1;
    objc_storeStrong(&v2, 0);
    objc_storeStrong(v3, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)_axDeleteByWord
{
  v4[1] = a1;
  if (a1)
  {
    v4[0] = [MEMORY[0x29EDC7B08] activeInstance];
    v3 = [v4[0] inputDelegate];
    v1 = [v3 safeValueForKey:@"_deleteByWord"];
    MEMORY[0x29EDC9740](v3);
    v5 = 1;
    objc_storeStrong(v4, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (uint64_t)_axEnterTextValue:(uint64_t)a1
{
  v6 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [MEMORY[0x29EDC7B08] activeInstance];
      [v3 addInputString:location];
      v7 = 1;
      v4 = 1;
      objc_storeStrong(&v3, 0);
    }

    else
    {
      v7 = 0;
      v4 = 1;
    }
  }

  else
  {
    v7 = 0;
    v4 = 1;
  }

  objc_storeStrong(&location, 0);
  return v7 & 1;
}

- (uint64_t)_axShift
{
  v2[1] = a1;
  if (a1)
  {
    v2[0] = [MEMORY[0x29EDC7B08] activeInstance];
    [v2[0] setShift:{objc_msgSend(v2[0], "isShifted") ^ 1}];
    v3 = 1;
    objc_storeStrong(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_axShiftLock
{
  v2[1] = a1;
  if (a1)
  {
    v2[0] = [MEMORY[0x29EDC7B08] activeInstance];
    [v2[0] setShiftLocked:{objc_msgSend(v2[0], "isShiftLocked") ^ 1}];
    v3 = 1;
    objc_storeStrong(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_accessibilitySwitchToGestureMode:(void *)a1
{
  if (a1)
  {
    if (([a1 _accessibilityBoolValueForKey:@"VORegistered"] & 1) == 0)
    {
      v2 = [MEMORY[0x29EDBA068] defaultCenter];
      [v2 addObserver:a1 selector:sel__voiceOverStatus_ name:*MEMORY[0x29EDC8000] object:0];
      [a1 _accessibilitySetBoolValue:1 forKey:{@"VORegistered", MEMORY[0x29EDC9740](v2).n128_f64[0]}];
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:v6 name:*MEMORY[0x29EDC8000] object:0];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = UIKeyboardAccessibility;
  [(UIKeyboardAccessibility *)&v4 dealloc];
}

- (void)deactivate
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardAccessibility;
  [(UIKeyboardAccessibility *)&v2 deactivate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)activate
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardAccessibility;
  [(UIKeyboardAccessibility *)&v2 activate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)_accessibilityTriggerDictationFromPath:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  v10 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  if (v10)
  {
    [v10 setDelegate:v13];
    v6 = [v10 currentInputMode];
    v9 = [v6 primaryLanguage];
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v7 = v10;
    v8 = [MEMORY[0x29EDB8E70] fileURLWithPath:location[0] isDirectory:{0, v3}];
    [v7 startDictationConnectionForFileAtURL:? forInputModeIdentifier:?];
    MEMORY[0x29EDC9740](v8);
    v11 = 1;
    objc_storeStrong(&v9, 0);
  }

  v5 = v11;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)insertDictationResult:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  [v3 setDelegate:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7420], 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)dictationRecognitionFailed
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  [v4[0] setDelegate:?];
  notification = *MEMORY[0x29EDC7420];
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:0];
  UIAccessibilityPostNotification(notification, v3);
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(v4, 0);
}

- (CGRect)accessibilityFrame
{
  v55 = self;
  v54 = a2;
  v30 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v29 = [v30 currentInputMode];
  v31 = [v29 isExtensionInputMode];
  MEMORY[0x29EDC9740](v29);
  MEMORY[0x29EDC9740](v30);
  v53 = v31;
  v52 = [NSClassFromString(&cfstr_Uiremotekeyboa_5.isa) safeBoolForKey:@"enabled"];
  v51 = 1;
  v34 = [MEMORY[0x29EDC7BB8] sharedInstance];
  v33 = [v34 safeValueForKey:@"containerRootController"];
  v32 = [v33 safeValueForKey:@"inputViewSet"];
  v50 = [v32 safeUIViewForKey:@"inputView"];
  MEMORY[0x29EDC9740](v32);
  MEMORY[0x29EDC9740](v33);
  MEMORY[0x29EDC9740](v34);
  if ((v52 & 1) == 0 || (NSClassFromString(&cfstr_Uiremotekeyboa_2.isa), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!v50)
    {
      v51 = 0;
    }

    goto LABEL_17;
  }

  v49 = [v50 safeUIViewForKey:@"placeheldView"];
  NSClassFromString(&cfstr_Uikbcompatinpu.isa);
  if (objc_opt_isKindOfClass())
  {
    location = [v49 safeUIViewForKey:@"touchableView"];
    v27 = [MEMORY[0x29EDC7AF8] activeKeyboard];
    v46 = 0;
    v28 = 1;
    if (location == v27)
    {
      v47 = [MEMORY[0x29EDC7AF8] activeKeyboard];
      v46 = 1;
      v28 = v47 == 0;
    }

    v51 = v28;
    if (v46)
    {
      MEMORY[0x29EDC9740](v47);
    }

    MEMORY[0x29EDC9740](v27);
    objc_storeStrong(&location, 0);
  }

  [v50 frame];
  v42 = v3;
  v43 = v4;
  v44 = v2;
  v45 = v5;
  v6 = v2;
  if (v2 > 1.0 && ([v50 frame], v38 = v7, v39 = v8, v40 = v9, v41 = v10, v6 = v10, v10 > 1.0))
  {
    v36 = 0;
  }

  else
  {
    v37.receiver = v55;
    v37.super_class = UIKeyboardAccessibility;
    [(UIKeyboardAccessibility *)&v37 accessibilityFrame];
    v56 = v11;
    v57 = v12;
    v58 = v13;
    v59 = v14;
    v36 = 1;
  }

  objc_storeStrong(&v49, 0);
  if (!v36)
  {
LABEL_17:
    if (v53 & 1) != 0 || (v52 & 1) != 0 && (v51)
    {
      AXUIKeyboardScreenFrame();
      v56 = v15;
      v57 = v16;
      v58 = v17;
      v59 = v18;
      v36 = 1;
    }

    else
    {
      v35.receiver = v55;
      v35.super_class = UIKeyboardAccessibility;
      [(UIKeyboardAccessibility *)&v35 accessibilityFrame];
      v56 = v19;
      v57 = v20;
      v58 = v21;
      v59 = v22;
      v36 = 1;
    }
  }

  objc_storeStrong(&v50, 0);
  v23 = v56;
  v24 = v57;
  v25 = v58;
  v26 = v59;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)_accessibilityDirectInteractionFrame
{
  v11 = [MEMORY[0x29EDC7B08] activeInstance];
  v10 = [v11 safeValueForKey:@"m_layout"];
  [v10 accessibilityFrame];
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_voiceOverStatus:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    [UIKeyboardAccessibility _accessibilitySwitchToGestureMode:v4];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)canBecomeFocused
{
  v5 = self;
  v4 = a2;
  if (([(UIKeyboardAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = UIKeyboardAccessibility;
  return [(UIKeyboardAccessibility *)&v3 canBecomeFocused];
}

- (id)_accessibilityNativeFocusPreferredElement
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIKeyboardAccessibility;
  return [(UIKeyboardAccessibility *)&v3 _accessibilityNativeFocusPreferredElement];
}

@end