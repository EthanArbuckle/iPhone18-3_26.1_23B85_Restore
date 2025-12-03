@interface CEKSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (double)_axGetDeltaForCurrentValue:(double)value toIncrement:(BOOL)increment;
- (double)_axNumberOfTickSegments;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation CEKSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"value" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"maximumValue" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"minimumValue" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"tickMarkSize" withFullSignature:{"{CGSize=dd}", 0}];
  [validationsCopy validateClass:@"CameraEditKit.TickMarksModel" hasSwiftField:@"tickMarkSpacing" withSwiftType:"CGFloat"];
  [validationsCopy validateClass:@"CameraEditKit.TickMarksModel" hasSwiftField:@"mainTickMarkInterval" withSwiftType:"Int"];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"setValue:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"scrollViewDidScroll:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"_tickMarksView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKSliderTickMarksView" hasInstanceMethod:@"tickMarksModel" withFullSignature:{"@", 0}];
}

- (double)_axNumberOfTickSegments
{
  [(CEKSliderAccessibility *)self safeCGSizeForKey:@"tickMarkSize"];
  v4 = v3;
  v5 = [(CEKSliderAccessibility *)self safeValueForKeyPath:@"_tickMarksView.tickMarksModel"];
  [v5 safeSwiftCGFloatForKey:@"tickMarkSpacing"];
  v7 = v4 / ((v4 + v6) * [v5 safeSwiftIntForKey:@"mainTickMarkInterval"]);

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CEKSliderAccessibility;
  accessibilityTraits = [(CEKSliderAccessibility *)&v7 accessibilityTraits];
  v4 = [(CEKSliderAccessibility *)self safeBoolForKey:@"isEnabled"];
  v5 = *MEMORY[0x29EDC7F60];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityLabel
{
  v3 = [(CEKSliderAccessibility *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2CE830](@"PUFilterToolController");
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v22) = 0;
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"_scrubberView"];
    v5 = __UIAccessibilityCastAsSafeCategory();

    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityCameraEditKitD2xLocalizedString(@"intensity.slider");
    _axPhotoFilterName = [v5 _axPhotoFilterName];
    accessibilityLabel = [v6 stringWithFormat:v7, _axPhotoFilterName];

LABEL_5:
    goto LABEL_7;
  }

  MEMORY[0x29C2CE830](@"PUAdjustmentsViewController");
  if (objc_opt_isKindOfClass())
  {
    v10 = [v3 safeValueForKey:@"selectedIndexPath"];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __44__CEKSliderAccessibility_accessibilityLabel__block_invoke;
    v18 = &unk_29F2AB778;
    v19 = v3;
    v5 = v10;
    v20 = v5;
    v21 = &v22;
    AXPerformSafeBlock();
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityCameraEditKitD2xLocalizedString(@"intensity.slider");
    accessibilityLabel = [v11 stringWithFormat:v12, v23[5]];

    _Block_object_dispose(&v22, 8);
    goto LABEL_5;
  }

  v14.receiver = self;
  v14.super_class = CEKSliderAccessibility;
  accessibilityLabel = [(CEKSliderAccessibility *)&v14 accessibilityLabel];
LABEL_7:

  return accessibilityLabel;
}

void __44__CEKSliderAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"dataSource"];
  v6 = [v2 infoForItemAtIndexPath:*(a1 + 40)];

  v3 = [v6 safeStringForKey:@"localizedName"];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)accessibilityValue
{
  if ([(CEKSliderAccessibility *)self safeBoolForKey:@"isEnabled"])
  {
    [(CEKSliderAccessibility *)self safeCGFloatForKey:@"maximumValue"];
    v4 = v3;
    [(CEKSliderAccessibility *)self safeCGFloatForKey:@"minimumValue"];
    v6 = v5;
    [(CEKSliderAccessibility *)self safeCGFloatForKey:@"value"];
    v8 = v7;
    [(CEKSliderAccessibility *)self safeCGFloatForKey:@"defaultValue"];
    AXScaledSliderValues(v8, v6, v4, v9);
    accessibilityValue = AXFormatFloatWithPercentage();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CEKSliderAccessibility;
    accessibilityValue = [(CEKSliderAccessibility *)&v12 accessibilityValue];
  }

  return accessibilityValue;
}

- (double)_axGetDeltaForCurrentValue:(double)value toIncrement:(BOOL)increment
{
  incrementCopy = increment;
  [(CEKSliderAccessibility *)self safeCGFloatForKey:@"maximumValue"];
  v8 = v7;
  [(CEKSliderAccessibility *)self safeCGFloatForKey:@"minimumValue"];
  v10 = v9;
  [(CEKSliderAccessibility *)self safeCGFloatForKey:@"defaultValue"];
  if (v10 == 0.0)
  {
    return (v8 - v10) / 100.0;
  }

  v13 = v11;
  v14 = vabdd_f64(v10, v11) == vabdd_f64(v11, v8);
  result = (v11 - v10) / 100.0;
  if (!v14)
  {
    if (v13 == value)
    {
      if (incrementCopy)
      {
        return (v8 - v13) / 100.0;
      }
    }

    else if (v10 >= value || v13 <= value)
    {
      result = 0.01;
      if (v8 > value)
      {
        return (v8 - v13) / 100.0;
      }
    }
  }

  return result;
}

uint64_t __41__CEKSliderAccessibility__axAdjustValue___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) sliderWillBeginScrolling:*(a1 + 40)];
  [*(a1 + 32) sliderDidScroll:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 sliderDidEndScrolling:v3];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(CEKSliderAccessibility *)self safeCGFloatForKey:@"value"];
  v6 = v5;
  v24.receiver = self;
  v24.super_class = CEKSliderAccessibility;
  [(CEKSliderAccessibility *)&v24 scrollViewDidScroll:scrollCopy];
  v7 = [(CEKSliderAccessibility *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2CE830](@"PUFilterToolController");
  if (objc_opt_isKindOfClass())
  {
    v23 = v7;
    AXPerformSafeBlock();
  }

  MEMORY[0x29C2CE830](@"PUAdjustmentsViewController");
  if (objc_opt_isKindOfClass())
  {
    v22 = v7;
    AXPerformSafeBlock();
  }

  [(CEKSliderAccessibility *)self safeCGFloatForKey:@"value"];
  v9 = v8;
  v10 = vabdd_f64(v6, v8);
  [(CEKSliderAccessibility *)self _axNumberOfTickSegments];
  if (v10 > v11)
  {
    [(CEKSliderAccessibility *)self safeCGFloatForKey:@"maximumValue"];
    v13 = v12;
    [(CEKSliderAccessibility *)self safeCGFloatForKey:@"minimumValue"];
    v15 = v14;
    [(CEKSliderAccessibility *)self safeCGFloatForKey:@"defaultValue"];
    v17 = v16;
    MEMORY[0x29C2CE830](@"CAMSystemOverlaySlider");
    if (objc_opt_isKindOfClass())
    {
      v18 = [v7 safeValueForKey:@"delegate"];
      objc_opt_class();
      v19 = [v18 safeValueForKey:@"_valueLabel"];
      v20 = __UIAccessibilityCastAsClass();

      if (v20)
      {
        [v20 text];
      }

      else
      {
        AXFormatFloat();
      }
      v21 = ;
      UIAccessibilitySpeak();
    }

    else
    {
      AXScaledSliderValues(v9, v15, v13, v17);
      v18 = AXFormatFloatWithPercentage();
      UIAccessibilitySpeak();
    }
  }
}

uint64_t __46__CEKSliderAccessibility_scrollViewDidScroll___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) sliderWillBeginScrolling:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 sliderDidEndScrolling:v3];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(CEKSliderAccessibility *)self safeValueForKey:@"_tickMarksView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end