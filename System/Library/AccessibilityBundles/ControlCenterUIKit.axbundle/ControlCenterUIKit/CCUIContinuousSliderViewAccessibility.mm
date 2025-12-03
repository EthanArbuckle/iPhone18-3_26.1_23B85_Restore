@interface CCUIContinuousSliderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CCUIContinuousSliderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIContinuousSliderView" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"CCUIBaseSliderView" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"CCUIBaseSliderView" hasInstanceMethod:@"value" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"CCUIBaseSliderView" hasInstanceMethod:@"setValue:animated:" withFullSignature:{"v", "f", "B", 0}];
  [validationsCopy validateClass:@"CCUIBaseSliderView" hasInstanceMethod:@"setValue:" withFullSignature:{"v", "f", 0}];
  [validationsCopy validateClass:@"CCUIContinuousSliderView" hasInstanceVariable:@"_continuousSliderCornerRadius" withType:"d"];
  [validationsCopy validateClass:@"CCUIContinuousSliderView" isKindOfClass:@"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CCUIContinuousSliderViewAccessibility;
  [(CCUIContinuousSliderViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CCUIContinuousSliderViewAccessibility *)self safeCGFloatForKey:@"value"];
  [(CCUIContinuousSliderViewAccessibility *)self _axSetVolumeValue:?];
}

- (id)accessibilityValue
{
  v3 = [(CCUIContinuousSliderViewAccessibility *)self _accessibilityGetBlockForAttribute:3];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    [(CCUIContinuousSliderViewAccessibility *)self safeCGFloatForKey:@"value"];
    v6 = [(CCUIContinuousSliderViewAccessibility *)self safeUIViewForKey:@"superview"];
    MEMORY[0x29C2D2560](@"MRUVolumeView");
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(CCUIContinuousSliderViewAccessibility *)self _axVolumeValue];
    }

    v5 = AXFormatFloatWithPercentage();
  }

  v8 = v5;

  return v8;
}

- (id)accessibilityPath
{
  v2 = MEMORY[0x29EDC7948];
  selfCopy = self;
  [(CCUIContinuousSliderViewAccessibility *)selfCopy bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CCUIContinuousSliderViewAccessibility *)selfCopy safeCGFloatForKey:@"_continuousSliderCornerRadius"];
  v13 = [v2 _bezierPathWithPillRect:v5 cornerRadius:{v7, v9, v11, v12}];
  v14 = UIAccessibilityConvertPathToScreenCoordinates(v13, selfCopy);

  return v14;
}

void __91__CCUIContinuousSliderViewAccessibility__accessibilityAdjustSliderValueInForwardDirection___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  v4 = [*(a1 + 32) safeUIViewForKey:@"superview"];
  MEMORY[0x29C2D2560](@"MRUVolumeView");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = *(a1 + 40);
    *&v6 = v6;
    [*(a1 + 32) setValue:v6];
    [*(a1 + 32) _axSetVolumeValue:*(a1 + 40)];
    v7 = 4096;
  }

  else
  {
    [v3 sendActionsForControlEvents:0x10000];
    v8 = *(a1 + 40);
    *&v8 = v8;
    [*(a1 + 32) setValue:0 animated:v8];
    v7 = 0x40000;
  }

  [v3 sendActionsForControlEvents:v7];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CCUIContinuousSliderViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(CCUIContinuousSliderViewAccessibility *)&v3 accessibilityTraits];
}

@end