@interface WGShortLookStyleButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation WGShortLookStyleButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(WGShortLookStyleButtonAccessibility *)self safeValueForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end