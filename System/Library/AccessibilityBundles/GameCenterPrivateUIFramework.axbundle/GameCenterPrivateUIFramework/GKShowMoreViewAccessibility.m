@interface GKShowMoreViewAccessibility
- (id)accessibilityLabel;
@end

@implementation GKShowMoreViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(GKShowMoreViewAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end