@interface FailureBarViewAccessibility
- (id)accessibilityLabel;
@end

@implementation FailureBarViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(FailureBarViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end