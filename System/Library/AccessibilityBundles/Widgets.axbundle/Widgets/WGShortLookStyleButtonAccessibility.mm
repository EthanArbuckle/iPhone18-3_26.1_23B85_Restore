@interface WGShortLookStyleButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation WGShortLookStyleButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(WGShortLookStyleButtonAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end