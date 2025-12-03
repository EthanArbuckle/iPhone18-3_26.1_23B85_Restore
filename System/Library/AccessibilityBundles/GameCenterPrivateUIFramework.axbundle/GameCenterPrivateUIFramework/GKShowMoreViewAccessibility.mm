@interface GKShowMoreViewAccessibility
- (id)accessibilityLabel;
@end

@implementation GKShowMoreViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(GKShowMoreViewAccessibility *)self safeValueForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end