@interface CertUIKeyValueViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CertUIKeyValueViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CertUIKeyValueView" hasInstanceMethod:@"keyLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CertUIKeyValueView" hasInstanceMethod:@"valueLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CertUIKeyValueView" hasInstanceMethod:@"verifiedLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CertUIKeyValueViewAccessibility *)self safeValueForKey:@"keyLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(CertUIKeyValueViewAccessibility *)self safeValueForKey:@"valueLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(CertUIKeyValueViewAccessibility *)self safeValueForKey:@"verifiedLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end