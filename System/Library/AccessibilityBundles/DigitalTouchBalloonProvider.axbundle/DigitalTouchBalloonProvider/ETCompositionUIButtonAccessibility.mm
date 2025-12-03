@interface ETCompositionUIButtonAccessibility
- (id)accessibilityPath;
- (id)accessibilityValue;
@end

@implementation ETCompositionUIButtonAccessibility

- (id)accessibilityValue
{
  accessibilityIdentifier = [(ETCompositionUIButtonAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"ETCompositionExpandColorPickerButton"];

  if (v4 && (v13 = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v5 = objc_claimAutoreleasedReturnValue(), (v6 = v5) != 0))
  {
    v7 = MEMORY[0x29EDC7A00];
    layer = [v5 layer];
    v9 = [v7 colorWithCGColor:{objc_msgSend(layer, "borderColor")}];

    accessibilityValue = [v9 safeValueForKey:@"_accessibilityColorDescription"];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ETCompositionUIButtonAccessibility;
    accessibilityValue = [(ETCompositionUIButtonAccessibility *)&v12 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityPath
{
  accessibilityIdentifier = [(ETCompositionUIButtonAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"ETCompositionExpandColorPickerButton"])
  {

LABEL_4:
    _accessibilityCirclePathBasedOnBoundsWidth = [(ETCompositionUIButtonAccessibility *)self _accessibilityCirclePathBasedOnBoundsWidth];
    goto LABEL_6;
  }

  accessibilityIdentifier2 = [(ETCompositionUIButtonAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier2 isEqualToString:@"ETCompositionExpandToCameraButton"];

  if (v5)
  {
    goto LABEL_4;
  }

  v8.receiver = self;
  v8.super_class = ETCompositionUIButtonAccessibility;
  _accessibilityCirclePathBasedOnBoundsWidth = [(ETCompositionUIButtonAccessibility *)&v8 accessibilityPath];
LABEL_6:

  return _accessibilityCirclePathBasedOnBoundsWidth;
}

@end