@interface MFComposeFromViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation MFComposeFromViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFComposeFromView" hasInstanceMethod:@"popupButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFPopupButton" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(MFComposeFromViewAccessibility *)self safeValueForKeyPath:@"popupButton.label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end