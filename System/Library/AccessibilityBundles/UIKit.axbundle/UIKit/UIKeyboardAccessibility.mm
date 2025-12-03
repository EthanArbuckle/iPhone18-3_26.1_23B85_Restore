@interface UIKeyboardAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityKeyboardIsContinuousPathAvailable;
- (BOOL)_accessibilityKeyboardIsContinuousPathTracking;
- (BOOL)_accessibilityTriggerDictationFromPath:(id)path;
- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port;
- (BOOL)canBecomeFocused;
- (CGRect)_accessibilityDirectInteractionFrame;
- (CGRect)accessibilityFrame;
- (id)_accessibilityNativeFocusPreferredElement;
- (uint64_t)_accessibilitySwitchToGestureMode:(void *)mode;
- (uint64_t)_axDeleteByCharacter;
- (uint64_t)_axDeleteByWord;
- (uint64_t)_axEnterTextValue:(uint64_t)value;
- (uint64_t)_axShift;
- (uint64_t)_axShiftLock;
- (void)_voiceOverStatus:(id)status;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)dictationRecognitionFailed;
- (void)insertDictationResult:(id)result;
@end

@implementation UIKeyboardAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v14 = location;
  v13 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
  v4 = [activeInstance safeValueForKey:@"m_layout"];
  v3 = [v4 safeValueForKey:@"_typingStyleEstimator"];
  _accessibilityKeyboardIsContinuousPathTracking = [v3 _accessibilityKeyboardIsContinuousPathTracking];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](activeInstance);
  return _accessibilityKeyboardIsContinuousPathTracking;
}

- (BOOL)_accessibilityKeyboardIsContinuousPathAvailable
{
  activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
  v3 = [activeInstance safeValueForKey:@"m_layout"];
  v5 = [v3 safeBoolForKey:@"_allowContinuousPathUI"];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](activeInstance);
  return v5;
}

- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port
{
  selfCopy = self;
  v13 = a2;
  actionCopy = action;
  location = 0;
  objc_storeStrong(&location, value);
  portCopy = port;
  if (actionCopy == 2600)
  {
    _axCommitWord = [(UIKeyboardAccessibility *)selfCopy _axDeleteByCharacter]& 1;
    v9 = 1;
  }

  else if (actionCopy == 2601)
  {
    _axCommitWord = [(UIKeyboardAccessibility *)selfCopy _axDeleteByWord]& 1;
    v9 = 1;
  }

  else if (actionCopy == 2602 || actionCopy == 2603)
  {
    _axCommitWord = [UIKeyboardAccessibility _axAdvanceKeyboardPlane:selfCopy];
    v9 = 1;
  }

  else if (actionCopy == 2604)
  {
    _axCommitWord = [(UIKeyboardAccessibility *)selfCopy _axCommitWord];
    v9 = 1;
  }

  else if (actionCopy == 2605)
  {
    _axCommitWord = [(UIKeyboardAccessibility *)selfCopy _axEnterTextValue:?]& 1;
    v9 = 1;
  }

  else if (actionCopy == 2606 || actionCopy == 2607)
  {
    _axCommitWord = [UIKeyboardAccessibility _axAdvanceKeyboardSuggestion:selfCopy];
    v9 = 1;
  }

  else if (actionCopy == 2608)
  {
    _axCommitWord = [UIKeyboardAccessibility _axAdvanceInternationalKeyboard:selfCopy];
    v9 = 1;
  }

  else if (actionCopy == 2609)
  {
    _axCommitWord = [(UIKeyboardAccessibility *)selfCopy _axShift]& 1;
    v9 = 1;
  }

  else if (actionCopy == 2610)
  {
    _axCommitWord = [(UIKeyboardAccessibility *)selfCopy _axShiftLock]& 1;
    v9 = 1;
  }

  else
  {
    if (actionCopy == 2611)
    {
      v6 = selfCopy;
      [location BOOLValue];
      _axCommitWord = [UIKeyboardAccessibility _accessibilitySwitchToGestureMode:v6]& 1;
    }

    else
    {
      v8.receiver = selfCopy;
      v8.super_class = UIKeyboardAccessibility;
      _axCommitWord = [(UIKeyboardAccessibility *)&v8 _iosAccessibilityPerformAction:actionCopy withValue:location fencePort:portCopy];
    }

    v9 = 1;
  }

  objc_storeStrong(&location, 0);
  return _axCommitWord & 1;
}

- (uint64_t)_axDeleteByCharacter
{
  v3[1] = self;
  if (self)
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
  v4[1] = self;
  if (self)
  {
    v4[0] = [MEMORY[0x29EDC7B08] activeInstance];
    inputDelegate = [v4[0] inputDelegate];
    v1 = [inputDelegate safeValueForKey:@"_deleteByWord"];
    MEMORY[0x29EDC9740](inputDelegate);
    v5 = 1;
    objc_storeStrong(v4, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (uint64_t)_axEnterTextValue:(uint64_t)value
{
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, a2);
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
      [activeInstance addInputString:location];
      v7 = 1;
      v4 = 1;
      objc_storeStrong(&activeInstance, 0);
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
  v2[1] = self;
  if (self)
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
  v2[1] = self;
  if (self)
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

- (uint64_t)_accessibilitySwitchToGestureMode:(void *)mode
{
  if (mode)
  {
    if (([mode _accessibilityBoolValueForKey:@"VORegistered"] & 1) == 0)
    {
      defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
      [defaultCenter addObserver:mode selector:sel__voiceOverStatus_ name:*MEMORY[0x29EDC8000] object:0];
      [mode _accessibilitySetBoolValue:1 forKey:{@"VORegistered", MEMORY[0x29EDC9740](defaultCenter).n128_f64[0]}];
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
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x29EDC8000] object:0];
  *&v2 = MEMORY[0x29EDC9740](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = UIKeyboardAccessibility;
  [(UIKeyboardAccessibility *)&v4 dealloc];
}

- (void)deactivate
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardAccessibility;
  [(UIKeyboardAccessibility *)&v2 deactivate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)activate
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardAccessibility;
  [(UIKeyboardAccessibility *)&v2 activate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)_accessibilityTriggerDictationFromPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v11 = 0;
  mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  if (mEMORY[0x29EDC7B18])
  {
    [mEMORY[0x29EDC7B18] setDelegate:selfCopy];
    currentInputMode = [mEMORY[0x29EDC7B18] currentInputMode];
    primaryLanguage = [currentInputMode primaryLanguage];
    *&v3 = MEMORY[0x29EDC9740](currentInputMode).n128_u64[0];
    v7 = mEMORY[0x29EDC7B18];
    v8 = [MEMORY[0x29EDB8E70] fileURLWithPath:location[0] isDirectory:{0, v3}];
    [v7 startDictationConnectionForFileAtURL:? forInputModeIdentifier:?];
    MEMORY[0x29EDC9740](v8);
    v11 = 1;
    objc_storeStrong(&primaryLanguage, 0);
  }

  v5 = v11;
  objc_storeStrong(&mEMORY[0x29EDC7B18], 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)insertDictationResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  [mEMORY[0x29EDC7B18] setDelegate:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7420], 0);
  objc_storeStrong(&mEMORY[0x29EDC7B18], 0);
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
  selfCopy = self;
  v54 = a2;
  mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  currentInputMode = [mEMORY[0x29EDC7B18] currentInputMode];
  isExtensionInputMode = [currentInputMode isExtensionInputMode];
  MEMORY[0x29EDC9740](currentInputMode);
  MEMORY[0x29EDC9740](mEMORY[0x29EDC7B18]);
  v53 = isExtensionInputMode;
  v52 = [NSClassFromString(&cfstr_Uiremotekeyboa_5.isa) safeBoolForKey:@"enabled"];
  v51 = 1;
  mEMORY[0x29EDC7BB8] = [MEMORY[0x29EDC7BB8] sharedInstance];
  v33 = [mEMORY[0x29EDC7BB8] safeValueForKey:@"containerRootController"];
  v32 = [v33 safeValueForKey:@"inputViewSet"];
  v50 = [v32 safeUIViewForKey:@"inputView"];
  MEMORY[0x29EDC9740](v32);
  MEMORY[0x29EDC9740](v33);
  MEMORY[0x29EDC9740](mEMORY[0x29EDC7BB8]);
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
    activeKeyboard = [MEMORY[0x29EDC7AF8] activeKeyboard];
    v46 = 0;
    v28 = 1;
    if (location == activeKeyboard)
    {
      activeKeyboard2 = [MEMORY[0x29EDC7AF8] activeKeyboard];
      v46 = 1;
      v28 = activeKeyboard2 == 0;
    }

    v51 = v28;
    if (v46)
    {
      MEMORY[0x29EDC9740](activeKeyboard2);
    }

    MEMORY[0x29EDC9740](activeKeyboard);
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
    v37.receiver = selfCopy;
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
      v35.receiver = selfCopy;
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
  activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
  v10 = [activeInstance safeValueForKey:@"m_layout"];
  [v10 accessibilityFrame];
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](activeInstance);
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

- (void)_voiceOverStatus:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    [UIKeyboardAccessibility _accessibilitySwitchToGestureMode:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v4 = a2;
  if (([(UIKeyboardAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = UIKeyboardAccessibility;
  return [(UIKeyboardAccessibility *)&v3 canBecomeFocused];
}

- (id)_accessibilityNativeFocusPreferredElement
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIKeyboardAccessibility;
  return [(UIKeyboardAccessibility *)&v3 _accessibilityNativeFocusPreferredElement];
}

@end