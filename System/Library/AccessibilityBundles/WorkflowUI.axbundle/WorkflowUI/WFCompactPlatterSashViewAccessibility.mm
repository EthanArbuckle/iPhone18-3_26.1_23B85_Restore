@interface WFCompactPlatterSashViewAccessibility
- (id)accessibilityLabel;
@end

@implementation WFCompactPlatterSashViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(WFCompactPlatterSashViewAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end