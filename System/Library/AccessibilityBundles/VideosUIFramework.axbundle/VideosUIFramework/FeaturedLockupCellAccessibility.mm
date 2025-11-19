@interface FeaturedLockupCellAccessibility
- (BOOL)canBecomeFocused;
@end

@implementation FeaturedLockupCellAccessibility

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = FeaturedLockupCellAccessibility;
  v3 = [(FeaturedLockupCellAccessibility *)&v5 canBecomeFocused];
  return ([(FeaturedLockupCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]^ 1) & v3;
}

@end