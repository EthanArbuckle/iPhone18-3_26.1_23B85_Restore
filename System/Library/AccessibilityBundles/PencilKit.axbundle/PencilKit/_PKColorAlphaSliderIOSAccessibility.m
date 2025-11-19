@interface _PKColorAlphaSliderIOSAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (double)_accessibilityColorAlpha;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetColorAlpha:(double)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)didPanSliderKnob:(id)a3;
@end

@implementation _PKColorAlphaSliderIOSAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_PKColorAlphaSliderIOS" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_PKColorAlphaSliderIOS" hasInstanceMethod:@"sliderKnobView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_PKColorAlphaSliderIOS" hasInstanceMethod:@"setColor:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_PKColorAlphaSliderIOS" hasInstanceMethod:@"didPanSliderKnob:" withFullSignature:{"v", "@", 0}];
}

- (double)_accessibilityColorAlpha
{
  objc_opt_class();
  v3 = [(_PKColorAlphaSliderIOSAccessibility *)self safeValueForKey:@"color"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 alphaComponent];
  v6 = v5;

  return v6;
}

- (void)_accessibilitySetColorAlpha:(double)a3
{
  objc_opt_class();
  v5 = [(_PKColorAlphaSliderIOSAccessibility *)self safeValueForKey:@"color"];
  v6 = __UIAccessibilityCastAsClass();

  v8 = [v6 colorWithAlphaComponent:a3];
  v7 = v8;
  AXPerformSafeBlock();
}

- (id)accessibilityValue
{
  [(_PKColorAlphaSliderIOSAccessibility *)self _accessibilityColorAlpha];

  return AXFormatFloatWithPercentage();
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _PKColorAlphaSliderIOSAccessibility;
  return *MEMORY[0x29EDC7F60] | [(_PKColorAlphaSliderIOSAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityIncrement
{
  [(_PKColorAlphaSliderIOSAccessibility *)self _accessibilityColorAlpha];
  v4 = fmin(v3 + 0.1, 1.0);

  [(_PKColorAlphaSliderIOSAccessibility *)self _accessibilitySetColorAlpha:v4];
}

- (void)accessibilityDecrement
{
  [(_PKColorAlphaSliderIOSAccessibility *)self _accessibilityColorAlpha];
  v4 = v3 + -0.1;
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  [(_PKColorAlphaSliderIOSAccessibility *)self _accessibilitySetColorAlpha:v4];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(_PKColorAlphaSliderIOSAccessibility *)self safeUIViewForKey:@"sliderKnobView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)didPanSliderKnob:(id)a3
{
  v6.receiver = self;
  v6.super_class = _PKColorAlphaSliderIOSAccessibility;
  [(_PKColorAlphaSliderIOSAccessibility *)&v6 didPanSliderKnob:a3];
  if (CFAbsoluteTimeGetCurrent() - *&didPanSliderKnob__LastOutput > 1.0)
  {
    v4 = *MEMORY[0x29EDC7EA8];
    v5 = [(_PKColorAlphaSliderIOSAccessibility *)self accessibilityValue];
    UIAccessibilityPostNotification(v4, v5);

    didPanSliderKnob__LastOutput = CFAbsoluteTimeGetCurrent();
  }
}

@end