@interface CertUIKeyValueViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CertUIKeyValueViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CertUIKeyValueView" hasInstanceMethod:@"keyLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CertUIKeyValueView" hasInstanceMethod:@"valueLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CertUIKeyValueView" hasInstanceMethod:@"verifiedLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CertUIKeyValueViewAccessibility *)self safeValueForKey:@"keyLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(CertUIKeyValueViewAccessibility *)self safeValueForKey:@"valueLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(CertUIKeyValueViewAccessibility *)self safeValueForKey:@"verifiedLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end