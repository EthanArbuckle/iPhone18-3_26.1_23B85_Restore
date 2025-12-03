@interface FailureBarViewAccessibility
- (id)accessibilityLabel;
@end

@implementation FailureBarViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(FailureBarViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end