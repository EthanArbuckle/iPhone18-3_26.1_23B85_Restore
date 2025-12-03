@interface WFCompactPlatterSashViewAccessibility
- (id)accessibilityLabel;
@end

@implementation WFCompactPlatterSashViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(WFCompactPlatterSashViewAccessibility *)self safeValueForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end