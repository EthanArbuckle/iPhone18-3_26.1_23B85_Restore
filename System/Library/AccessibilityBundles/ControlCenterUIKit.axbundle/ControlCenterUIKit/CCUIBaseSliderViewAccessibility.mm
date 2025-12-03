@interface CCUIBaseSliderViewAccessibility
- (id)_accessibilityAbsoluteValue;
- (id)accessibilityCustomActions;
- (unint64_t)accessibilityTraits;
@end

@implementation CCUIBaseSliderViewAccessibility

- (id)_accessibilityAbsoluteValue
{
  v2 = MEMORY[0x29EDBA070];
  [(CCUIBaseSliderViewAccessibility *)self safeCGFloatForKey:@"value"];

  return [v2 numberWithDouble:?];
}

- (unint64_t)accessibilityTraits
{
  accessibilityUserDefinedTraits = [(CCUIBaseSliderViewAccessibility *)self accessibilityUserDefinedTraits];
  unsignedIntegerValue = [accessibilityUserDefinedTraits unsignedIntegerValue];

  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = v4;
  v6 = *MEMORY[0x29EDC7F60] | unsignedIntegerValue;
  if (v4)
  {
    isEnabled = [v4 isEnabled];
    v8 = *MEMORY[0x29EDC7FA8];
    if (isEnabled)
    {
      v8 = 0;
    }

    v6 |= v8;
    if ([v5 isSelected])
    {
      v6 |= *MEMORY[0x29EDC7FC0];
    }
  }

  return v6;
}

- (id)accessibilityCustomActions
{
  v5.receiver = self;
  v5.super_class = CCUIBaseSliderViewAccessibility;
  accessibilityCustomActions = [(CCUIBaseSliderViewAccessibility *)&v5 accessibilityCustomActions];
  v3 = AXGuaranteedMutableArray();

  UIAccessibilityControlCenterAttachOpenCloseCustomActionsIfNeeded();

  return v3;
}

@end