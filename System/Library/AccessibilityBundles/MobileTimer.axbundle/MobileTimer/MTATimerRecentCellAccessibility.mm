@interface MTATimerRecentCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MTATimerRecentCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTATimerRecentCellAccessibility *)self safeUIViewForKey:@"recentView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end