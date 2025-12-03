@interface CAMZoomControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation CAMZoomControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"zoomFactor" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_displayMaximumZoomFactor" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_displayMinimumZoomFactor" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"displayZoomValue" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_setZoomFactor:interactionType:shouldNotifyDelegate:animated:" withFullSignature:{"v", "d", "q", "B", "B", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"continueTrackingWithTouch: withEvent:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_zoomFactorForDisplayZoomValue:" withFullSignature:{"d", "d", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_handleButtonTapped:forAccessoryTap:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_zoomButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_displayZoomFactors" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_isButtonPlatterSupportedForConfiguration" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_buttonPlatter" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomButtonPlatter" hasInstanceMethod:@"_allButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomButtonPlatter" hasInstanceMethod:@"zoomFactorButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomButtonPlatter" hasInstanceMethod:@"isCollapsed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"zoomButtonContentType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"zoomButtonSymbol" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_zoomControlMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"orientation" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMZoomPoint"];
  [validationsCopy validateClass:@"CAMZoomPoint" hasClassMethod:@"significantIndexesInZoomPoints:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_zoomPoints" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_zoomFactors" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"zoomFactor" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMZoomPoint" hasInstanceMethod:@"displayZoomFactor" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMZoomButton" hasInstanceMethod:@"_focalLengthLabel" withFullSignature:{"@", 0}];
}

uint64_t __63__CAMZoomControlAccessibility__axSetZoomFactorForDisplayValue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 _axRoundedZoomFactor:*(a1 + 40)];
  [v2 _zoomFactorForDisplayZoomValue:?];
  v3 = *(a1 + 32);

  return [v3 _setZoomFactor:1 interactionType:1 shouldNotifyDelegate:0 animated:?];
}

- (id)accessibilityLabel
{
  v3 = [(CAMZoomControlAccessibility *)self safeIntegerForKey:@"zoomButtonContentType"];
  if (!v3)
  {
    v4 = @"bravo.zoomcontrol";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"ffc.zoomcontrol";
LABEL_5:
    accessibilityLabel = accessibilityCameraUILocalizedString(v4);
    goto LABEL_7;
  }

  v7.receiver = self;
  v7.super_class = CAMZoomControlAccessibility;
  accessibilityLabel = [(CAMZoomControlAccessibility *)&v7 accessibilityLabel];
LABEL_7:

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(CAMZoomControlAccessibility *)self safeIntegerForKey:@"zoomButtonContentType"]!= 1)
  {
    [(CAMZoomControlAccessibility *)self _axDisplayZoomValue];
    accessibilityValue = AXFormatMagnificationFactor();
    goto LABEL_9;
  }

  v3 = [(CAMZoomControlAccessibility *)self safeIntegerForKey:@"zoomButtonSymbol"];
  if (v3 == 1)
  {
    v4 = @"zoomed.in";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = @"zoomed.out";
LABEL_7:
    accessibilityValue = accessibilityCameraUILocalizedString(v4);
    goto LABEL_9;
  }

  v7.receiver = self;
  v7.super_class = CAMZoomControlAccessibility;
  accessibilityValue = [(CAMZoomControlAccessibility *)&v7 accessibilityValue];
LABEL_9:

  return accessibilityValue;
}

- (void)accessibilityIncrement
{
  [(CAMZoomControlAccessibility *)self _axMaximumZoomFactor];
  v4 = v3;
  [(CAMZoomControlAccessibility *)self _axDisplayZoomValue];
  if (v5 + 0.1 <= v4)
  {

    [(CAMZoomControlAccessibility *)self _axSetZoomFactorForDisplayValue:?];
  }
}

- (void)accessibilityDecrement
{
  [(CAMZoomControlAccessibility *)self _axMinimumZoomFactor];
  v4 = v3;
  [(CAMZoomControlAccessibility *)self _axDisplayZoomValue];
  if (v5 + -0.1 >= v4)
  {

    [(CAMZoomControlAccessibility *)self _axSetZoomFactorForDisplayValue:?];
  }
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CAMZoomControlAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(CAMZoomControlAccessibility *)&v7 accessibilityTraits];
  v4 = [(CAMZoomControlAccessibility *)self safeBoolForKey:@"_zoomDialEnabled"];
  v5 = *MEMORY[0x29EDC7F60];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (id)accessibilityHint
{
  v3 = @"zoom.toggle.hint";
  if ([(CAMZoomControlAccessibility *)self safeIntegerForKey:@"zoomButtonContentType"]== 1)
  {
    v4 = [(CAMZoomControlAccessibility *)self safeIntegerForKey:@"zoomButtonSymbol"];
    v5 = @"zoomed.in.hint";
    if (v4)
    {
      v5 = @"zoom.toggle.hint";
    }

    if (v4 == 1)
    {
      v3 = @"zoomed.out.hint";
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = accessibilityCameraUILocalizedString(v3);

  return v6;
}

- (BOOL)accessibilityActivate
{
  v3 = [(CAMZoomControlAccessibility *)self safeIntegerForKey:@"zoomButtonContentType"];
  if ([(CAMZoomControlAccessibility *)self safeBoolForKey:@"_isButtonPlatterSupportedForConfiguration"])
  {
    v4 = [(CAMZoomControlAccessibility *)self safeValueForKey:@"_buttonPlatter"];
    v5 = [v4 safeArrayForKey:@"_allButtons"];
    v6 = [v4 safeValueForKey:@"zoomFactorButton"];
    v7 = [(CAMZoomControlAccessibility *)self safeValueForKey:@"_zoomPoints"];
    v8 = [(CAMZoomControlAccessibility *)self safeValueForKey:@"_zoomFactors"];
    [(CAMZoomControlAccessibility *)self safeCGFloatForKey:@"zoomFactor"];
    if (v5)
    {
      v9 = [MEMORY[0x29EDBA070] numberWithDouble:?];
      v10 = [v8 indexOfObject:v9 inSortedRange:0 options:objc_msgSend(v8 usingComparator:{"count"), 1280, &__block_literal_global_18}];

      v11 = [v5 indexOfObject:v6];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v11;
        v13 = [v8 objectAtIndexedSubscript:v10];
        if ([v8 count] <= (v10 + 1))
        {
          v14 = v10;
        }

        else
        {
          v14 = v10 + 1;
        }

        v15 = [v8 objectAtIndexedSubscript:v14];
        [v13 doubleValue];
        v17 = v16;
        [v15 doubleValue];
        v19 = v18;
        LODWORD(v20) = floor(v18) > floor(v17);
        if (v18 == v17)
        {
          v20 = 1;
        }

        else
        {
          v20 = v20;
        }

        v21 = v12 + v20;
        if (v21 == [v5 count])
        {
          v21 = 0;
        }

        v22 = [v5 objectAtIndexedSubscript:v21];
        v30 = MEMORY[0x29EDCA5F8];
        v31 = 3221225472;
        v32 = __52__CAMZoomControlAccessibility_accessibilityActivate__block_invoke_2;
        v33 = &unk_29F2AD570;
        v38 = v21;
        v34 = v8;
        v39 = v19;
        v40 = v17;
        v35 = v7;
        v36 = v4;
        selfCopy = self;
        v23 = v22;
        AXPerformSafeBlock();
      }
    }

    return 1;
  }

  if (v3 == 1)
  {
    v29.receiver = self;
    v29.super_class = CAMZoomControlAccessibility;
    accessibilityActivate = [(CAMZoomControlAccessibility *)&v29 accessibilityActivate];
    v25 = [(CAMZoomControlAccessibility *)self safeIntegerForKey:@"zoomButtonSymbol"];
    if (v25)
    {
      if (v25 != 1)
      {
        v28 = 0;
        goto LABEL_24;
      }

      v26 = @"zoomed.out";
    }

    else
    {
      v26 = @"zoomed.in";
    }

    v28 = accessibilityCameraUILocalizedString(v26);
LABEL_24:
    UIAccessibilitySpeakAndDoNotBeInterrupted();

    return accessibilityActivate;
  }

  return [(CAMZoomControlAccessibility *)self _axHandleZoomControlActivate];
}

void __52__CAMZoomControlAccessibility_accessibilityActivate__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72) + 1;
  v3 = *(a1 + 32);
  if ([v3 count] <= v2)
  {
    v2 = *(a1 + 72);
  }

  v18 = [v3 objectAtIndexedSubscript:v2];
  [v18 doubleValue];
  v4 = floor(*(a1 + 80));
  v6 = floor(v5);
  if (v4 > floor(*(a1 + 88)) && v4 == v6)
  {
    v9 = *(a1 + 72);
    v8 = v9 < [*(a1 + 40) count];
  }

  else
  {
    v8 = 0;
  }

  v10 = [*(a1 + 48) safeBoolForKey:@"isCollapsed"];
  if (v8 || v10)
  {
    v11 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 72)];
    v12 = *(a1 + 56);
    [v11 safeCGFloatForKey:@"displayZoomFactor"];
    [v12 _axSetZoomFactorForDisplayValue:?];
  }

  else
  {
    [*(a1 + 56) _handleButtonTapped:*(a1 + 64) forAccessoryTap:0];
  }

  [*(a1 + 56) _axDisplayZoomValue];
  v13 = [*(a1 + 48) safeValueForKey:@"zoomFactorButton"];
  v14 = [v13 safeValueForKey:@"_focalLengthLabel"];
  v15 = [v14 accessibilityLabel];
  v17 = AXFormatMagnificationFactor();
  v16 = __UIAXStringForVariables();
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

void __59__CAMZoomControlAccessibility__axHandleZoomControlActivate__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safeValueForKey:@"_zoomButton"];
  [*(a1 + 32) _handleButtonTapped:v3 forAccessoryTap:0];
  [*(a1 + 32) _axDisplayZoomValue];
  v2 = AXFormatMagnificationFactor();
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(CAMZoomControlAccessibility *)self safeBoolForKey:@"_isButtonPlatterSupportedForConfiguration"])
  {
    v3 = @"_buttonPlatter";
  }

  else
  {
    v3 = @"_zoomButton";
  }

  v4 = [(CAMZoomControlAccessibility *)self safeValueForKey:v3];
  [v4 accessibilityActivationPoint];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CAMZoomControlAccessibility;
  v5 = [(CAMZoomControlAccessibility *)&v7 continueTrackingWithTouch:touch withEvent:event];
  [(CAMZoomControlAccessibility *)self _axDisplayZoomValue];
  AXPerformSafeBlock();
  return v5;
}

void __67__CAMZoomControlAccessibility_continueTrackingWithTouch_withEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _axRoundedZoomFactor:*(a1 + 40)];
  v3 = v2;
  [*(a1 + 32) _axZoomFactor];
  if (v3 != v4)
  {
    [*(a1 + 32) _setAXZoomFactor:v3];
    v5 = AXFormatMagnificationFactor();
    UIAccessibilitySpeak();
  }
}

- (id)automationElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(CAMZoomControlAccessibility *)self safeValueForKey:@"_buttonPlatter"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end