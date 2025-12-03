@interface MapsLargerHitTargetButtonAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation MapsLargerHitTargetButtonAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(MapsLargerHitTargetButtonAccessibility *)self accessibilityLabel];
  v4 = [accessibilityLabel length];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MapsLargerHitTargetButtonAccessibility;
  return [(MapsLargerHitTargetButtonAccessibility *)&v6 isAccessibilityElement];
}

@end