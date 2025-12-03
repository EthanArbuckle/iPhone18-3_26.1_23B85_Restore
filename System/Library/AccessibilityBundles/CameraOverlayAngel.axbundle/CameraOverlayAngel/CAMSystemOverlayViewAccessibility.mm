@interface CAMSystemOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axAdjustValue:(BOOL)value;
- (void)_updateValueLabelText;
@end

@implementation CAMSystemOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"selectedIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"indexCount" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"setSelectedIndex:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlayView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlayView" hasInstanceMethod:@"_valueLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlayView" hasInstanceMethod:@"sliderIfLoaded" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlayView" hasInstanceMethod:@"_menuVisibility" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlayVisibility" hasInstanceMethod:@"_activeReasons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlayVisibility" hasInstanceMethod:@"_delayedHidingTimer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlayView" hasInstanceMethod:@"menu" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlayView" hasInstanceMethod:@"_updateValueLabelText" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"selectedIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlaySlider" hasInstanceMethod:@"_currentSlider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlaySlider" hasInstanceMethod:@"_discreteSlider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlaySlider" hasInstanceMethod:@"_continuousSlider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"_setSelectedIndex:shouldDelegate:wantsFeedbackEmitted:shouldScroll:scrollDuration:scrollCurve:scrollCompletion:" withFullSignature:{"v", "Q", "B", "B", "B", "d", "@", "@?", 0}];
  [validationsCopy validateClass:@"CAMSystemOverlaySlider"];
  [validationsCopy validateClass:@"CAMSystemOverlaySlider" hasInstanceMethod:@"_handleContinuousSliderValueChanged:" withFullSignature:{"v", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMSystemOverlayViewAccessibility;
  return *MEMORY[0x29EDC7F60] | [(CAMSystemOverlayViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(CAMSystemOverlayViewAccessibility *)self safeValueForKey:@"_valueLabel"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];

  return text;
}

- (CGRect)accessibilityFrame
{
  v3 = [(CAMSystemOverlayViewAccessibility *)self safeValueForKey:@"sliderIfLoaded"];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityFrame];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CAMSystemOverlayViewAccessibility;
    [(CAMSystemOverlayViewAccessibility *)&v17 accessibilityFrame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_axAdjustValue:(BOOL)value
{
  valueCopy = value;
  v5 = [(CAMSystemOverlayViewAccessibility *)self safeValueForKey:@"menuVisibility"];
  v21 = [v5 safeSetForKey:@"_activeReasons"];

  v6 = [(CAMSystemOverlayViewAccessibility *)self safeValueForKey:@"menuVisibility"];
  v7 = [v6 safeValueForKey:@"_delayedHidingTimer"];

  if ([v21 count] || v7)
  {
    v8 = [(CAMSystemOverlayViewAccessibility *)self safeValueForKey:@"menu"];
    v17 = [v8 safeSwiftValueForKey:@"discreteSlider"];
    v9 = v17;
    if (v17)
    {
      v18 = [v17 safeIntForKey:@"selectedIndex"];
      if (valueCopy)
      {
        v19 = v18 + 1;
      }

      else
      {
        v19 = v18 - 1;
      }

      [v8 setSelectedControlIndex:v19 animated:1];
    }
  }

  else
  {
    v8 = [(CAMSystemOverlayViewAccessibility *)self safeValueForKey:@"sliderIfLoaded"];
    v9 = [v8 safeValueForKey:@"currentSlider"];
    MEMORY[0x29C2CEF20](@"CEKDiscreteSlider");
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 safeValueForKey:@"discreteSlider"];
      v11 = [v10 safeIntForKey:@"selectedIndex"];
      v12 = [v10 safeIntForKey:@"indexCount"];
      if (v11 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v11;
      }

      v14 = v13 - 1;
      v15 = v12 - 1;
      if (v11 + 1 < v15)
      {
        v15 = v11 + 1;
      }

      if (valueCopy)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      [v10 _setSelectedIndex:v16 shouldDelegate:1 wantsFeedbackEmitted:1 shouldScroll:1 scrollDuration:0 scrollCurve:0 scrollCompletion:0.0];
    }

    else
    {
      v20 = [v8 safeValueForKey:@"continuousSlider"];
      v10 = v20;
      if (valueCopy)
      {
        [v20 accessibilityIncrement];
      }

      else
      {
        [v20 accessibilityDecrement];
      }
    }
  }
}

- (void)_updateValueLabelText
{
  v6.receiver = self;
  v6.super_class = CAMSystemOverlayViewAccessibility;
  [(CAMSystemOverlayViewAccessibility *)&v6 _updateValueLabelText];
  objc_opt_class();
  v3 = [(CAMSystemOverlayViewAccessibility *)self safeValueForKey:@"_valueLabel"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];
  UIAccessibilitySpeak();
}

@end