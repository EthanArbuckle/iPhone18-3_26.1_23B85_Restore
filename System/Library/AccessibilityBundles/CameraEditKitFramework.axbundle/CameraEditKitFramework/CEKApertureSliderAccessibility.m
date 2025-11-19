@interface CEKApertureSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)_axValidApertureIndexForDiscreteIndex:(unint64_t)a3;
- (void)_axAdjustValue:(BOOL)a3;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation CEKApertureSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"_valueLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CEKApertureSlider" isKindOfClass:@"CEKDiscreteSlider"];
  [v3 validateClass:@"CEKApertureSlider" hasInstanceMethod:@"apertureValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"CEKApertureSlider" hasInstanceMethod:@"markedApertureValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"CEKApertureSlider" hasInstanceMethod:@"setApertureValueClosestTo:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"scrollViewDidScroll:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"selectedIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CEKDiscreteSlider" hasInstanceMethod:@"markedIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CEKApertureSlider" hasInstanceMethod:@"_validApertureIndexForDiscreteIndex:" withFullSignature:{"Q", "Q", 0}];
  [v3 validateClass:@"CEKApertureStops"];
  [v3 validateClass:@"CEKApertureStops" hasClassMethod:@"validApertureValues" withFullSignature:{"@", 0}];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [(CEKApertureSliderAccessibility *)self safeDoubleForKey:@"apertureValue"];
  v6 = v5;
  v10.receiver = self;
  v10.super_class = CEKApertureSliderAccessibility;
  [(CEKApertureSliderAccessibility *)&v10 scrollViewDidScroll:v4];

  [(CEKApertureSliderAccessibility *)self safeDoubleForKey:@"apertureValue"];
  if (v6 != v7)
  {
    v8 = [(CEKApertureSliderAccessibility *)self safeUIViewForKey:@"_valueLabel"];
    v9 = [v8 accessibilityLabel];
    UIAccessibilitySpeak();
  }
}

- (void)_axAdjustValue:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x29C2CE830](@"CEKApertureStops" a2)];
  v6 = [(CEKApertureSliderAccessibility *)self _axValidApertureIndexForDiscreteIndex:[(CEKApertureSliderAccessibility *)self safeUnsignedIntegerForKey:@"selectedIndex"]];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v3 ? v6 + 1 : v6 - 1;
    if (v7 < [v5 count])
    {
      v14 = v5;
      AXPerformSafeBlock();
      v8 = [(CEKApertureSliderAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:1];
      v9 = v8;
      if (v8)
      {
        v13 = v8;
        AXPerformSafeBlock();
      }

      v10 = [(CEKApertureSliderAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_522 startWithSelf:1];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
        AXPerformSafeBlock();
      }
    }
  }
}

void __49__CEKApertureSliderAccessibility__axAdjustValue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 48)];
  [v3 floatValue];
  [v1 setApertureValueClosestTo:v2];
}

uint64_t __49__CEKApertureSliderAccessibility__axAdjustValue___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CE830](@"CAMViewfinderViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __49__CEKApertureSliderAccessibility__axAdjustValue___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityViewController];
  [v2 _apertureSliderDidChangeApertureValue:*(a1 + 40)];
}

uint64_t __49__CEKApertureSliderAccessibility__axAdjustValue___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CE830](@"PUPhotoEditApertureToolbar");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __49__CEKApertureSliderAccessibility__axAdjustValue___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityViewController];
  [v2 _apertureSliderDidChangeValue:*(a1 + 40)];
}

- (id)accessibilityLabel
{
  v2 = [(CEKApertureSliderAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)_axValidApertureIndexForDiscreteIndex:(unint64_t)a3
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  AXPerformSafeBlock();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __72__CEKApertureSliderAccessibility__axValidApertureIndexForDiscreteIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _validApertureIndexForDiscreteIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)accessibilityValue
{
  v3 = [(CEKApertureSliderAccessibility *)self safeUIViewForKey:@"_valueLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(CEKApertureSliderAccessibility *)self _axValidApertureIndexForDiscreteIndex:[(CEKApertureSliderAccessibility *)self safeUnsignedIntegerForKey:@"selectedIndex"]];
  if (v5 == [(CEKApertureSliderAccessibility *)self _axValidApertureIndexForDiscreteIndex:[(CEKApertureSliderAccessibility *)self safeUnsignedIntegerForKey:@"markedIndex"]])
  {
    v8 = accessibilityCameraEditKitD2xLocalizedString(@"original.depth");
    v6 = __UIAXStringForVariables();

    v4 = v6;
  }

  return v4;
}

@end