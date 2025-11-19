@interface ETCompositionUIButtonAccessibility
- (id)accessibilityPath;
- (id)accessibilityValue;
@end

@implementation ETCompositionUIButtonAccessibility

- (id)accessibilityValue
{
  v3 = [(ETCompositionUIButtonAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"ETCompositionExpandColorPickerButton"];

  if (v4 && (v13 = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v5 = objc_claimAutoreleasedReturnValue(), (v6 = v5) != 0))
  {
    v7 = MEMORY[0x29EDC7A00];
    v8 = [v5 layer];
    v9 = [v7 colorWithCGColor:{objc_msgSend(v8, "borderColor")}];

    v10 = [v9 safeValueForKey:@"_accessibilityColorDescription"];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ETCompositionUIButtonAccessibility;
    v10 = [(ETCompositionUIButtonAccessibility *)&v12 accessibilityValue];
  }

  return v10;
}

- (id)accessibilityPath
{
  v3 = [(ETCompositionUIButtonAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"ETCompositionExpandColorPickerButton"])
  {

LABEL_4:
    v6 = [(ETCompositionUIButtonAccessibility *)self _accessibilityCirclePathBasedOnBoundsWidth];
    goto LABEL_6;
  }

  v4 = [(ETCompositionUIButtonAccessibility *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"ETCompositionExpandToCameraButton"];

  if (v5)
  {
    goto LABEL_4;
  }

  v8.receiver = self;
  v8.super_class = ETCompositionUIButtonAccessibility;
  v6 = [(ETCompositionUIButtonAccessibility *)&v8 accessibilityPath];
LABEL_6:

  return v6;
}

@end