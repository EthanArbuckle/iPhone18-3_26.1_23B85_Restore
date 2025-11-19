@interface MFComposeFromViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation MFComposeFromViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFComposeFromView" hasInstanceMethod:@"popupButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFPopupButton" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(MFComposeFromViewAccessibility *)self safeValueForKeyPath:@"popupButton.label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end