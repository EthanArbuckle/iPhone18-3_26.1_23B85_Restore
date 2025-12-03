@interface HUIconViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation HUIconViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUIconView" hasInstanceMethod:@"currentIconContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUIconContentView" hasInstanceMethod:@"iconDescriptor" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(HUIconViewAccessibility *)self safeValueForKey:@"currentIconContentView"];
  v3 = [v2 safeValueForKey:@"iconDescriptor"];

  objc_opt_class();
  v4 = [v3 safeValueForKey:@"identifier"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = accessibilityLabelForIconIdentifier(v5);
  accessibilityValue = [v3 accessibilityValue];
  v7 = __AXStringForVariables();

  return v7;
}

@end