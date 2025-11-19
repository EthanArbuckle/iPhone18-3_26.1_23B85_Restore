@interface CAMNightModeSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)_axAdjustValue:(BOOL)a3;
@end

@implementation CAMNightModeSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"valueText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"selectedIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"indexCount" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CAMNightModeSlider" isKindOfClass:@"CEKDiscreteSlider"];
  [v3 validateClass:@"CAMNightModeSlider" hasInstanceMethod:@"_isPerformingCaptureAnimation" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMNightModeSlider" hasInstanceMethod:@"_selectedIndexBeforeCaptureAnimation" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CAMViewfinderViewController"];
  [v3 validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_handleNightModeSliderDidChangeValue:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CAMNightModeSlider" hasInstanceMethod:@"setNightMode:" withFullSignature:{"v", "Q", 0}];
}

- (id)accessibilityLabel
{
  v3 = accessibilityCameraUILocalizedString(@"night.mode.slider");
  v6 = [(CAMNightModeSliderAccessibility *)self safeValueForKey:@"titleText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (void)_axAdjustValue:(BOOL)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  if ([(CAMNightModeSliderAccessibility *)self safeBoolForKey:@"_isPerformingCaptureAnimation"])
  {
    v5 = @"_selectedIndexBeforeCaptureAnimation";
  }

  else
  {
    v5 = @"selectedIndex";
  }

  v13 = [(CAMNightModeSliderAccessibility *)self safeUnsignedIntegerForKey:v5];
  v6 = [(CAMNightModeSliderAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_13 startWithSelf:1];
  v7 = v11[3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    v11[3] = v8;
    if (v8 < [(CAMNightModeSliderAccessibility *)self safeUnsignedIntegerForKey:@"indexCount"])
    {
      v9 = v6;
      AXPerformSafeBlock();
    }
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __50__CAMNightModeSliderAccessibility__axAdjustValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF1C0](@"CAMViewfinderViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __50__CAMNightModeSliderAccessibility__axAdjustValue___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  AXPerformSafeBlock();
}

void __50__CAMNightModeSliderAccessibility__axAdjustValue___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setNightMode:*(a1 + 48)];
  v2 = [*(a1 + 40) _accessibilityViewController];
  [v2 _handleNightModeSliderDidChangeValue:*(a1 + 32)];
}

@end