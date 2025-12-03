@interface BuddyUIImageViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation BuddyUIImageViewAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(BuddyUIImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier hasPrefix:@"LockScreenTitle"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = BuddyUIImageViewAccessibility;
  return [(BuddyUIImageViewAccessibility *)&v6 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(BuddyUIImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier hasPrefix:@"LockScreenTitle"];

  if (v4)
  {
    accessibilityLabel = AXDeviceGetLocalizedShortModelName();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BuddyUIImageViewAccessibility;
    accessibilityLabel = [(BuddyUIImageViewAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end