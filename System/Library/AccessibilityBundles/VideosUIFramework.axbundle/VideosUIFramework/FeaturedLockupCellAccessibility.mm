@interface FeaturedLockupCellAccessibility
- (BOOL)canBecomeFocused;
@end

@implementation FeaturedLockupCellAccessibility

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = FeaturedLockupCellAccessibility;
  canBecomeFocused = [(FeaturedLockupCellAccessibility *)&v5 canBecomeFocused];
  return ([(FeaturedLockupCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]^ 1) & canBecomeFocused;
}

@end