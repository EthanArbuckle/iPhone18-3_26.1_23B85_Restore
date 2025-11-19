@interface BuddyUIImageViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation BuddyUIImageViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(BuddyUIImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 hasPrefix:@"LockScreenTitle"];

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
  v3 = [(BuddyUIImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 hasPrefix:@"LockScreenTitle"];

  if (v4)
  {
    v5 = AXDeviceGetLocalizedShortModelName();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BuddyUIImageViewAccessibility;
    v5 = [(BuddyUIImageViewAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

@end