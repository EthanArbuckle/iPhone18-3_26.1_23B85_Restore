@interface HUIconViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation HUIconViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUIconView" hasInstanceMethod:@"currentIconContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUIconContentView" hasInstanceMethod:@"iconDescriptor" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(HUIconViewAccessibility *)self safeValueForKey:@"currentIconContentView"];
  v3 = [v2 safeValueForKey:@"iconDescriptor"];

  objc_opt_class();
  v4 = [v3 safeValueForKey:@"identifier"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = accessibilityLabelForIconIdentifier(v5);
  v9 = [v3 accessibilityValue];
  v7 = __AXStringForVariables();

  return v7;
}

@end