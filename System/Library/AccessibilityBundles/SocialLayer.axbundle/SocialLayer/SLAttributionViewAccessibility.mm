@interface SLAttributionViewAccessibility
- (id)_accessibilityAXAttributedLabel;
@end

@implementation SLAttributionViewAccessibility

- (id)_accessibilityAXAttributedLabel
{
  v2 = [(SLAttributionViewAccessibility *)self safeValueForKey:@"pillView"];
  v3 = [v2 _accessibilityAXAttributedLabel];

  return v3;
}

@end