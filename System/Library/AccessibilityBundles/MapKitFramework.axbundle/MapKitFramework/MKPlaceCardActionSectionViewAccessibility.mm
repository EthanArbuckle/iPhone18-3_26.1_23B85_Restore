@interface MKPlaceCardActionSectionViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MKPlaceCardActionSectionViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MKPlaceCardActionSectionViewAccessibility *)self safeValueForKey:@"leftButton"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end