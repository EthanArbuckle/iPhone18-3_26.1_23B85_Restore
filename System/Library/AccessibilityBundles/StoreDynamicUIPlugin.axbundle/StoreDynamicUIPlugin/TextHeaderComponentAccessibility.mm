@interface TextHeaderComponentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation TextHeaderComponentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.TextHeaderComponent" hasSwiftField:@"titleLabel" withSwiftType:"DynamicLabel"];
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.TextHeaderComponent" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicLabel"];
}

- (id)accessibilityLabel
{
  v3 = [(TextHeaderComponentAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [(TextHeaderComponentAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  if (v3 && ([v3 accessibilityLabel], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsString:", @"one-logo"), v5, v6))
  {
    v7 = accessibilityLocalizedString(@"apple.one");
    v8 = __UIAXStringForVariables();
  }

  else
  {
    v8 = __UIAXStringForVariables();
  }

  return v8;
}

@end