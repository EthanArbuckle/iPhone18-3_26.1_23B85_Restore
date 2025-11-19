@interface CAMExposureSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)_axAdjustValue:(BOOL)a3;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation CAMExposureSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"valueText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"selectedIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"indexCount" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CAMExposureSlider" isKindOfClass:@"CEKDiscreteSlider"];
  [v3 validateClass:@"CAMViewfinderViewController"];
  [v3 validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_handleExposureSliderDidChangeValue:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CAMExposureSlider" hasInstanceMethod:@"exposureValue" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v3 = accessibilityCameraUILocalizedString(@"exposure.slider");
  v6 = [(CAMExposureSliderAccessibility *)self safeValueForKey:@"titleText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (void)_axAdjustValue:(BOOL)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [(CAMExposureSliderAccessibility *)self safeUnsignedIntegerForKey:@"selectedIndex"];
  v5 = [(CAMExposureSliderAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_9 startWithSelf:1];
  v6 = v10[3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v3)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 - 1;
    }

    v10[3] = v7;
    if (v7 < [(CAMExposureSliderAccessibility *)self safeUnsignedIntegerForKey:@"indexCount"])
    {
      v8 = v5;
      AXPerformSafeBlock();
    }
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __49__CAMExposureSliderAccessibility__axAdjustValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF1C0](@"CAMViewfinderViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __49__CAMExposureSliderAccessibility__axAdjustValue___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSelectedIndex:*(*(*(a1 + 48) + 8) + 24)];
  v2 = [*(a1 + 40) _accessibilityViewController];
  [v2 _handleExposureSliderDidChangeValue:*(a1 + 32)];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [(CAMExposureSliderAccessibility *)self safeDoubleForKey:@"exposureValue"];
  v6 = v5;
  v9.receiver = self;
  v9.super_class = CAMExposureSliderAccessibility;
  [(CAMExposureSliderAccessibility *)&v9 scrollViewDidScroll:v4];

  [(CAMExposureSliderAccessibility *)self safeDoubleForKey:@"exposureValue"];
  if (v6 != v7)
  {
    v8 = [(CAMExposureSliderAccessibility *)self safeValueForKey:@"valueText"];
    UIAccessibilitySpeak();
  }
}

@end