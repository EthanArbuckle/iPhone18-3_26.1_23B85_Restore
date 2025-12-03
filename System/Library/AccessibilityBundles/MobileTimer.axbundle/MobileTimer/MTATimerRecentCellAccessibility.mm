@interface MTATimerRecentCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MTATimerRecentCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTATimerRecentCellAccessibility *)self safeUIViewForKey:@"recentView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end