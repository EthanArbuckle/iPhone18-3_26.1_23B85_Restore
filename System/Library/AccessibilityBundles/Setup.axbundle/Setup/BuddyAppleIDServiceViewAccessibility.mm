@interface BuddyAppleIDServiceViewAccessibility
- (id)accessibilityLabel;
@end

@implementation BuddyAppleIDServiceViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(BuddyAppleIDServiceViewAccessibility *)self safeUIViewForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end