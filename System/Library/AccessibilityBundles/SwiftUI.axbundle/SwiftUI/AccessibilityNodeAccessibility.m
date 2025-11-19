@interface AccessibilityNodeAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHitTestShouldFallbackToNearestChild;
- (BOOL)_accessibilityIsSoftwareKeyboardMimic;
- (BOOL)_accessibilityPrefersNonAttributedAttributeWithOverrideSelector:(SEL)a3 nonAttributedSelector:(SEL)a4 attributedSelector:(SEL)a5;
- (BOOL)_accessibilityShouldExpandMathEquation;
- (BOOL)_accessibilityShouldIncludeMediaDescriptionsRotor;
- (BOOL)_accessibilityShouldSpeakMathEquationTrait;
- (BOOL)_accessibilityUseElementAtPositionAfterActivation;
- (BOOL)_prefersFocusContainment;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)canBecomeFocused;
- (BOOL)conformsToProtocol:(id)a3;
- (CGRect)frame;
- (NSString)description;
- (NSString)focusGroupIdentifier;
- (double)_accessibilityDelayBeforeUpdatingOnActivation;
- (id)_accessibilityAXAttributedLabel;
- (id)_accessibilitySoftwareMimicKeyboard;
- (id)_accessibilitySwipeIslandIdentifier;
- (id)_preferredFocusRegionCoordinateSpace;
- (id)accessibilityMathEquation;
- (id)automationElements;
- (id)focusItemsInRect:(CGRect)a3;
- (unsigned)_accessibilityEffectiveMediaAnalysisOptions;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation AccessibilityNodeAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SwiftUI.AccessibilityNode" hasSwiftField:@"children" withSwiftType:"Array<AccessibilityNode>"];
  [v3 validateClass:@"SwiftUI.AccessibilityNode" hasInstanceMethod:@"_accessibilityNodeRepresentedElement" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SwiftUI.AccessibilityNode" hasInstanceMethod:@"accessibilityCustomAttribute:" withFullSignature:{"@", "@", 0}];
}

- (id)automationElements
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __52__AccessibilityNodeAccessibility_automationElements__block_invoke;
  v10 = &unk_29F305C28;
  v11 = self;
  v12 = &v13;
  AXPerformSafeBlock();
  v3 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AccessibilityNodeAccessibility;
    v4 = [(AccessibilityNodeAccessibility *)&v6 automationElements];
  }

  return v4;
}

void __52__AccessibilityNodeAccessibility_automationElements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"IgnoreAutomationChildren"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)_accessibilityPrefersNonAttributedAttributeWithOverrideSelector:(SEL)a3 nonAttributedSelector:(SEL)a4 attributedSelector:(SEL)a5
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 1;
  }

  v10.receiver = self;
  v10.super_class = AccessibilityNodeAccessibility;
  return [(AccessibilityNodeAccessibility *)&v10 _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:a3 nonAttributedSelector:a4 attributedSelector:a5];
}

- (NSString)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v8.receiver = self;
  v8.super_class = AccessibilityNodeAccessibility;
  v4 = [(AccessibilityNodeAccessibility *)&v8 description];
  v5 = [(AccessibilityNodeAccessibility *)self accessibilityLabel];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (BOOL)_accessibilityHitTestShouldFallbackToNearestChild
{
  v20 = 0;
  objc_opt_class();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __83__AccessibilityNodeAccessibility__accessibilityHitTestShouldFallbackToNearestChild__block_invoke;
  v11 = &unk_29F305C28;
  v12 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  v4 = __UIAccessibilityCastAsClass();

  if (v20 == 1)
  {
    abort();
  }

  v5 = [v4 BOOLValue];

  if (v5)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = AccessibilityNodeAccessibility;
  return [(AccessibilityNodeAccessibility *)&v7 _accessibilityHitTestShouldFallbackToNearestChild];
}

uint64_t __83__AccessibilityNodeAccessibility__accessibilityHitTestShouldFallbackToNearestChild__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXHitTestShouldFallbackToNearestChild"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityShouldIncludeMediaDescriptionsRotor
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __83__AccessibilityNodeAccessibility__accessibilityShouldIncludeMediaDescriptionsRotor__block_invoke;
  v10 = &unk_29F305C28;
  v11 = self;
  v12 = &v13;
  AXPerformSafeBlock();
  v3 = v14[5];
  _Block_object_dispose(&v13, 8);

  v4 = [v3 BOOLValue];
  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = AccessibilityNodeAccessibility;
  return [(AccessibilityNodeAccessibility *)&v6 _accessibilityShouldIncludeMediaDescriptionsRotor];
}

uint64_t __83__AccessibilityNodeAccessibility__accessibilityShouldIncludeMediaDescriptionsRotor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXShouldIncludeMediaDescriptionsRotor"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (unsigned)_accessibilityEffectiveMediaAnalysisOptions
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __77__AccessibilityNodeAccessibility__accessibilityEffectiveMediaAnalysisOptions__block_invoke;
  v10 = &unk_29F305C28;
  v11 = self;
  v12 = &v13;
  AXPerformSafeBlock();
  v3 = v14[5];
  _Block_object_dispose(&v13, 8);

  v4 = [v3 BOOLValue];
  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = AccessibilityNodeAccessibility;
  return [(AccessibilityNodeAccessibility *)&v6 _accessibilityEffectiveMediaAnalysisOptions];
}

uint64_t __77__AccessibilityNodeAccessibility__accessibilityEffectiveMediaAnalysisOptions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXIgnoreMediaAnalysis"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityUseElementAtPositionAfterActivation
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __83__AccessibilityNodeAccessibility__accessibilityUseElementAtPositionAfterActivation__block_invoke;
  v10 = &unk_29F305C28;
  v11 = self;
  v12 = &v13;
  AXPerformSafeBlock();
  v3 = v14[5];
  _Block_object_dispose(&v13, 8);

  v4 = [v3 BOOLValue];
  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = AccessibilityNodeAccessibility;
  return [(AccessibilityNodeAccessibility *)&v6 _accessibilityUseElementAtPositionAfterActivation];
}

uint64_t __83__AccessibilityNodeAccessibility__accessibilityUseElementAtPositionAfterActivation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXUseElementAtPositionAfterActivationAttribute"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v6.receiver = self;
  v6.super_class = AccessibilityNodeAccessibility;
  if ([(AccessibilityNodeAccessibility *)&v6 accessibilityRespondsToUserInteraction])
  {
    return 1;
  }

  v4 = [(AccessibilityNodeAccessibility *)self accessibilityCustomAttribute:@"HardwareGestureActions"];
  v3 = v4 != 0;

  return v3;
}

- (id)_accessibilityAXAttributedLabel
{
  v16.receiver = self;
  v16.super_class = AccessibilityNodeAccessibility;
  v3 = [(AccessibilityNodeAccessibility *)&v16 _accessibilityAXAttributedLabel];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = self;
  AXPerformSafeBlock();
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  if ([v3 isAXAttributedString] && objc_msgSend(v4, "length"))
  {
    v5 = v3;
    [v5 addAttribute:v4 forKey:*MEMORY[0x29EDBD880] withRange:{0, objc_msgSend(v5, "length")}];
  }

  else
  {
    v6 = v3;
  }

  return v3;
}

uint64_t __65__AccessibilityNodeAccessibility__accessibilityAXAttributedLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXLabelUIAccessibilityTokenBrailleOverride"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)accessibilityMathEquation
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __59__AccessibilityNodeAccessibility_accessibilityMathEquation__block_invoke;
  v11 = &unk_29F305C28;
  v12 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNodeAccessibility;
    v4 = [(AccessibilityNodeAccessibility *)&v7 accessibilityMathEquation];
  }

  v5 = v4;

  return v5;
}

uint64_t __59__AccessibilityNodeAccessibility_accessibilityMathEquation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXMathEquation"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityShouldSpeakMathEquationTrait
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __76__AccessibilityNodeAccessibility__accessibilityShouldSpeakMathEquationTrait__block_invoke;
  v11 = &unk_29F305C28;
  v12 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNodeAccessibility;
    v4 = [(AccessibilityNodeAccessibility *)&v7 _accessibilityShouldSpeakMathEquationTrait];
  }

  v5 = v4;

  return v5;
}

uint64_t __76__AccessibilityNodeAccessibility__accessibilityShouldSpeakMathEquationTrait__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXShouldSpeakMathEquationTrait"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityShouldExpandMathEquation
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __72__AccessibilityNodeAccessibility__accessibilityShouldExpandMathEquation__block_invoke;
  v11 = &unk_29F305C28;
  v12 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNodeAccessibility;
    v4 = [(AccessibilityNodeAccessibility *)&v7 _accessibilityShouldExpandMathEquation];
  }

  v5 = v4;

  return v5;
}

uint64_t __72__AccessibilityNodeAccessibility__accessibilityShouldExpandMathEquation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXShouldExpandMathEquation"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilitySoftwareMimicKeyboard
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __69__AccessibilityNodeAccessibility__accessibilitySoftwareMimicKeyboard__block_invoke;
  v11 = &unk_29F305C28;
  v12 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (v3 && [v3 BOOLValue])
  {
    v4 = self;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNodeAccessibility;
    v4 = [(AccessibilityNodeAccessibility *)&v7 _accessibilitySoftwareMimicKeyboard];
  }

  v5 = v4;

  return v5;
}

uint64_t __69__AccessibilityNodeAccessibility__accessibilitySoftwareMimicKeyboard__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXIsSoftwareMimicKeyboardAttribute"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityIsSoftwareKeyboardMimic
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __71__AccessibilityNodeAccessibility__accessibilityIsSoftwareKeyboardMimic__block_invoke;
  v11 = &unk_29F305C28;
  v12 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNodeAccessibility;
    v4 = [(AccessibilityNodeAccessibility *)&v7 _accessibilityIsSoftwareKeyboardMimic];
  }

  v5 = v4;

  return v5;
}

uint64_t __71__AccessibilityNodeAccessibility__accessibilityIsSoftwareKeyboardMimic__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXIsSoftwareMimicKeyboardAttribute"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilitySwipeIslandIdentifier
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __69__AccessibilityNodeAccessibility__accessibilitySwipeIslandIdentifier__block_invoke;
  v11 = &unk_29F305C28;
  v12 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNodeAccessibility;
    v4 = [(AccessibilityNodeAccessibility *)&v7 _accessibilitySwipeIslandIdentifier];
  }

  v5 = v4;

  return v5;
}

uint64_t __69__AccessibilityNodeAccessibility__accessibilitySwipeIslandIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXSwipeIslandIdentifier"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (double)_accessibilityDelayBeforeUpdatingOnActivation
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __79__AccessibilityNodeAccessibility__accessibilityDelayBeforeUpdatingOnActivation__block_invoke;
  v10 = &unk_29F305C28;
  v11 = self;
  v12 = &v13;
  AXPerformSafeBlock();
  v3 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  if (v3 == 1)
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    result = 0.1;
    if (IsVoiceOverRunning)
    {
      return 0.5;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AccessibilityNodeAccessibility;
    [(AccessibilityNodeAccessibility *)&v6 _accessibilityDelayBeforeUpdatingOnActivation];
  }

  return result;
}

void __79__AccessibilityNodeAccessibility__accessibilityDelayBeforeUpdatingOnActivation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"UpdatesOnActivationAfterDelay"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)dealloc
{
  [(AccessibilityNodeAccessibility *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = AccessibilityNodeAccessibility;
  [(AccessibilityNodeAccessibility *)&v3 dealloc];
}

- (NSString)focusGroupIdentifier
{
  v9.receiver = self;
  v9.super_class = AccessibilityNodeAccessibility;
  v3 = [(AccessibilityNodeAccessibility *)&v9 focusGroupIdentifier];
  if (v3 || (-[AccessibilityNodeAccessibility _accessibilityParentView](self, "_accessibilityParentView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 safeValueForKey:@"_containingScrollView"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = v3;
  }

  else
  {
    v6 = [(AccessibilityNodeAccessibility *)self _accessibilityDefaultFocusGroupIdentifier];
  }

  v7 = v6;

  return v7;
}

- (void)setNeedsFocusUpdate
{
  v3 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
  [(AccessibilityNodeAccessibility *)self _updateFocusLayerFrame];
}

- (void)updateFocusIfNeeded
{
  v3 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:self];
  [v3 updateFocusIfNeeded];
  [(AccessibilityNodeAccessibility *)self _updateFocusLayerFrame];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __103__AccessibilityNodeAccessibility_UIFocusConformance__didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v8[3] = &unk_29F305C70;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [a4 addCoordinatedAnimations:v8 completion:0];
}

uint64_t __103__AccessibilityNodeAccessibility_UIFocusConformance__didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextFocusedItem];
  v3 = *(a1 + 40);
  if (v2 != v3)
  {

LABEL_7:
    v9 = MEMORY[0x29EDC7A98];
    v10 = *(a1 + 40);

    return [v9 removeRingFromFocusItem:v10];
  }

  v4 = [v3 _accessibilityParentView];
  v5 = [v4 _accessibilityIsFKARunningForFocusItem];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = MEMORY[0x29EDC7A98];
  v7 = *(a1 + 40);

  return [v6 moveRingToFocusItem:v7];
}

- (BOOL)canBecomeFocused
{
  v3 = [(AccessibilityNodeAccessibility *)self isAccessibilityElement];
  if (v3)
  {

    LOBYTE(v3) = [(AccessibilityNodeAccessibility *)self accessibilityRespondsToUserInteraction];
  }

  return v3;
}

- (id)_preferredFocusRegionCoordinateSpace
{
  v2 = [(AccessibilityNodeAccessibility *)self _accessibilityParentView];
  v3 = [v2 _screen];
  v4 = [v3 coordinateSpace];

  return v4;
}

- (id)focusItemsInRect:(CGRect)a3
{
  v4 = [(AccessibilityNodeAccessibility *)self accessibilityElements:a3.origin.x];
  if (v4)
  {
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __71__AccessibilityNodeAccessibility_UIFocusConformance__focusItemsInRect___block_invoke;
    v12[3] = &unk_29F305C98;
    v12[4] = self;
    v5 = [MEMORY[0x29EDBA0A8] predicateWithBlock:v12];
    v6 = [v4 filteredArrayUsingPredicate:v5];
  }

  else if ([(AccessibilityNodeAccessibility *)self accessibilityElementCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[AccessibilityNodeAccessibility accessibilityElementCount](self, "accessibilityElementCount")}];
    if ([(AccessibilityNodeAccessibility *)self accessibilityElementCount])
    {
      v7 = 0;
      do
      {
        v8 = [(AccessibilityNodeAccessibility *)self accessibilityElementAtIndex:v7];
        if ([v8 conformsToProtocol:&unk_2A2333300])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [(AccessibilityNodeAccessibility *)self _accessibilityFKAShouldIncludeViewsAsElements])
          {
            [v6 axSafelyAddObject:v8];
          }
        }

        ++v7;
      }

      while (v7 < [(AccessibilityNodeAccessibility *)self accessibilityElementCount]);
    }
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x29EDB8E90];
  }

  v10 = v9;

  return v9;
}

uint64_t __71__AccessibilityNodeAccessibility_UIFocusConformance__focusItemsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2A2333300])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(a1 + 32) _accessibilityFKAShouldIncludeViewsAsElements];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_prefersFocusContainment
{
  if ([(AccessibilityNodeAccessibility *)self conformsToProtocol:&unk_2A23346A0]|| ([(AccessibilityNodeAccessibility *)self _accessibilityIsTouchContainer]& 1) != 0)
  {
    return 1;
  }

  return [(AccessibilityNodeAccessibility *)self shouldGroupAccessibilityChildren];
}

- (BOOL)conformsToProtocol:(id)a3
{
  if (&unk_2A2333300 == a3 || &unk_2A2332FE8 == a3 || &unk_2A2333458 == a3 || &unk_2A2333880 == a3)
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  v9.receiver = self;
  v9.super_class = AccessibilityNodeAccessibility;
  return [(AccessibilityNodeAccessibility *)&v9 conformsToProtocol:?];
}

- (CGRect)frame
{
  [(AccessibilityNodeAccessibility *)self accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AccessibilityNodeAccessibility *)self _accessibilityWindow];
  v12 = [(AccessibilityNodeAccessibility *)self coordinateSpace];
  v13 = [v11 coordinateSpace];
  if (v13)
  {
    [v11 convertRect:0 fromWindow:{v4, v6, v8, v10}];
    [v12 convertRect:v13 fromCoordinateSpace:?];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end