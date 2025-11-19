@interface MapsLargerHitTargetButtonAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation MapsLargerHitTargetButtonAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(MapsLargerHitTargetButtonAccessibility *)self accessibilityLabel];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MapsLargerHitTargetButtonAccessibility;
  return [(MapsLargerHitTargetButtonAccessibility *)&v6 isAccessibilityElement];
}

@end