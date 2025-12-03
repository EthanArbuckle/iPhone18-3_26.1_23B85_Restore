@interface BuddyAppleIDServiceViewAccessibility
- (id)accessibilityLabel;
@end

@implementation BuddyAppleIDServiceViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(BuddyAppleIDServiceViewAccessibility *)self safeUIViewForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end