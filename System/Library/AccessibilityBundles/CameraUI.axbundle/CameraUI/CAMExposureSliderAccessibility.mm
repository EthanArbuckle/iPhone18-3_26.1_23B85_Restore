@interface CAMExposureSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_axAdjustValue:(BOOL)value;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation CAMExposureSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"valueText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"selectedIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"indexCount" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CAMExposureSlider" isKindOfClass:@"CEKDiscreteSlider"];
  [validationsCopy validateClass:@"CAMViewfinderViewController"];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_handleExposureSliderDidChangeValue:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CAMExposureSlider" hasInstanceMethod:@"exposureValue" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v3 = accessibilityCameraUILocalizedString(@"exposure.slider");
  v6 = [(CAMExposureSliderAccessibility *)self safeValueForKey:@"titleText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (void)_axAdjustValue:(BOOL)value
{
  valueCopy = value;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [(CAMExposureSliderAccessibility *)self safeUnsignedIntegerForKey:@"selectedIndex"];
  v5 = [(CAMExposureSliderAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_9 startWithSelf:1];
  v6 = v10[3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (valueCopy)
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(CAMExposureSliderAccessibility *)self safeDoubleForKey:@"exposureValue"];
  v6 = v5;
  v9.receiver = self;
  v9.super_class = CAMExposureSliderAccessibility;
  [(CAMExposureSliderAccessibility *)&v9 scrollViewDidScroll:scrollCopy];

  [(CAMExposureSliderAccessibility *)self safeDoubleForKey:@"exposureValue"];
  if (v6 != v7)
  {
    v8 = [(CAMExposureSliderAccessibility *)self safeValueForKey:@"valueText"];
    UIAccessibilitySpeak();
  }
}

@end