@interface CEKExpandingSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGRect)accessibilityFrame;
- (double)_axCurrentSliderValue;
- (double)_axMaximumValue;
- (double)_axMinimumValue;
- (id)_axSemanticStyle;
- (id)accessibilityLabel;
- (int64_t)_accessibilityExpandedStatus;
- (unint64_t)accessibilityTraits;
- (void)_axChangeValueInDirection:(int64_t)direction withLargeStep:(BOOL)step;
- (void)_handleExpansionAnimationTimerFired:(id)fired;
@end

@implementation CEKExpandingSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CEKExpandingSlider" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKExpandingSlider" hasInstanceMethod:@"_valueLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKExpandingSlider" hasInstanceMethod:@"_levelIndicatorView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKExpandingSlider" hasInstanceMethod:@"_handleExpansionAnimationTimerFired:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CEKExpandingSlider" hasInstanceMethod:@"_setExpanded:animated:shouldNotify:" withFullSignature:{"v", "B", "B", "B", 0}];
  [validationsCopy validateClass:@"CEKExpandingSlider" hasInstanceMethod:@"setValue:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"CEKExpandingSlider" hasInstanceMethod:@"expanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CEKExpandingSlider" hasInstanceMethod:@"_slider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"value" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"maximumValue" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"minimumValue" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CEKExpandingSliderAccessibility *)self _accessibilityStringForLabelKeyValues:@"_titleLabel"];
  localizedLowercaseString = [v2 localizedLowercaseString];

  return localizedLowercaseString;
}

- (CGRect)accessibilityFrame
{
  v24.receiver = self;
  v24.super_class = CEKExpandingSliderAccessibility;
  [(CEKExpandingSliderAccessibility *)&v24 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(CEKExpandingSliderAccessibility *)self _axIsSliderExpanded])
  {
    v11 = MEMORY[0x29EDB8D80];
    v12 = [(CEKExpandingSliderAccessibility *)self safeValueForKey:@"_titleLabel"];
    v13 = [(CEKExpandingSliderAccessibility *)self safeValueForKey:@"_valueLabel"];
    v14 = [(CEKExpandingSliderAccessibility *)self safeUIViewForKey:@"_levelIndicatorView"];
    v15 = [v11 axArrayByIgnoringNilElementsWithCount:{3, v12, v13, v14}];

    UIAXFrameForElements();
    v4 = v16;
    v6 = v17;
    v8 = v18;
    v10 = v19;
  }

  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)accessibilityActivate
{
  if ([(CEKExpandingSliderAccessibility *)self _axIsSliderExpanded])
  {
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = __56__CEKExpandingSliderAccessibility_accessibilityActivate__block_invoke;
    v8 = &unk_29F2AB728;
    selfCopy = self;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CEKExpandingSliderAccessibility;
    return [(CEKExpandingSliderAccessibility *)&v4 accessibilityActivate];
  }
}

void __56__CEKExpandingSliderAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setExpanded:0 animated:1 shouldNotify:1];
  v2 = *MEMORY[0x29EDC7ED8];
  v3 = *(a1 + 32);

  UIAccessibilityPostNotification(v2, v3);
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CEKExpandingSliderAccessibility;
  accessibilityTraits = [(CEKExpandingSliderAccessibility *)&v7 accessibilityTraits];
  _axIsSliderExpanded = [(CEKExpandingSliderAccessibility *)self _axIsSliderExpanded];
  v5 = *MEMORY[0x29EDC7F60];
  if (!_axIsSliderExpanded)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v3 = scroll - 1;
  if ((scroll - 1) <= 1)
  {
    [CEKExpandingSliderAccessibility _axChangeValueInDirection:"_axChangeValueInDirection:withLargeStep:" withLargeStep:?];
  }

  return v3 < 2;
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(CEKExpandingSliderAccessibility *)self _axIsSliderExpanded])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_handleExpansionAnimationTimerFired:(id)fired
{
  firedCopy = fired;
  if (![(CEKExpandingSliderAccessibility *)self _axIsSliderExpanded]|| !UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
    v5.receiver = self;
    v5.super_class = CEKExpandingSliderAccessibility;
    [(CEKExpandingSliderAccessibility *)&v5 _handleExpansionAnimationTimerFired:firedCopy];
  }
}

- (void)_axChangeValueInDirection:(int64_t)direction withLargeStep:(BOOL)step
{
  stepCopy = step;
  _axSemanticStyle = [(CEKExpandingSliderAccessibility *)self _axSemanticStyle];
  v8 = [_axSemanticStyle safeStringForKey:@"displayName"];

  v9 = 1.0;
  if (stepCopy)
  {
    v9 = 10.0;
  }

  if (direction == 1)
  {
    v10 = &v14;
    v14 = MEMORY[0x29EDCA5F8];
    v15 = 3221225472;
    v11 = __75__CEKExpandingSliderAccessibility__axChangeValueInDirection_withLargeStep___block_invoke_2;
  }

  else
  {
    if (direction != 2)
    {
      goto LABEL_8;
    }

    v10 = v16;
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v11 = __75__CEKExpandingSliderAccessibility__axChangeValueInDirection_withLargeStep___block_invoke;
  }

  *(v10 + 2) = v11;
  *(v10 + 3) = &unk_29F2AB750;
  *(v10 + 4) = self;
  v10[5] = v9;
  AXPerformSafeBlock();
LABEL_8:
  v12 = [(CEKExpandingSliderAccessibility *)self _axSemanticStyle:v14];
  v13 = [v12 safeStringForKey:@"displayName"];

  if (([v8 isEqualToString:v13] & 1) == 0)
  {
    UIAccessibilitySpeakOrQueueIfNeeded();
  }
}

uint64_t __75__CEKExpandingSliderAccessibility__axChangeValueInDirection_withLargeStep___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _axCurrentSliderValue];
  v3 = v2;
  [*(a1 + 32) _axMaximumValue];
  if (v3 < v4)
  {
    v3 = v3 + *(a1 + 40) * 0.01;
  }

  [*(a1 + 32) setValue:v3];
  v5 = *(a1 + 32);

  return [v5 sendActionsForControlEvents:4096];
}

uint64_t __75__CEKExpandingSliderAccessibility__axChangeValueInDirection_withLargeStep___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _axCurrentSliderValue];
  v3 = v2;
  [*(a1 + 32) _axMinimumValue];
  if (v3 > v4)
  {
    v3 = v3 + *(a1 + 40) * -0.01;
  }

  [*(a1 + 32) setValue:v3];
  v5 = *(a1 + 32);

  return [v5 sendActionsForControlEvents:4096];
}

- (double)_axCurrentSliderValue
{
  v2 = [(CEKExpandingSliderAccessibility *)self safeValueForKey:@"_slider"];
  [v2 safeCGFloatForKey:@"value"];
  v4 = v3;

  return v4;
}

- (double)_axMinimumValue
{
  v2 = [(CEKExpandingSliderAccessibility *)self safeValueForKey:@"_slider"];
  [v2 safeCGFloatForKey:@"minimumValue"];
  v4 = v3;

  return v4;
}

- (double)_axMaximumValue
{
  v2 = [(CEKExpandingSliderAccessibility *)self safeValueForKey:@"_slider"];
  [v2 safeCGFloatForKey:@"maximumValue"];
  v4 = v3;

  return v4;
}

- (id)_axSemanticStyle
{
  v2 = [(CEKExpandingSliderAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CE830](@"CAMSemanticStyleControl", a2)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeValueForKey:@"semanticStyle"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end