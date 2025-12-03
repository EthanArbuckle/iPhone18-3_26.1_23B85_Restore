@interface SLAttributionViewAccessibility
- (id)_accessibilityAXAttributedLabel;
@end

@implementation SLAttributionViewAccessibility

- (id)_accessibilityAXAttributedLabel
{
  v2 = [(SLAttributionViewAccessibility *)self safeValueForKey:@"pillView"];
  _accessibilityAXAttributedLabel = [v2 _accessibilityAXAttributedLabel];

  return _accessibilityAXAttributedLabel;
}

@end