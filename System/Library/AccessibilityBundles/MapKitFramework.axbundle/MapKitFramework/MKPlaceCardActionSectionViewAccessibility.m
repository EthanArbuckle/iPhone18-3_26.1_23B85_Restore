@interface MKPlaceCardActionSectionViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MKPlaceCardActionSectionViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MKPlaceCardActionSectionViewAccessibility *)self safeValueForKey:@"leftButton"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end