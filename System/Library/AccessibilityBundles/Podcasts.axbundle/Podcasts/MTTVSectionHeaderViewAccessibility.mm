@interface MTTVSectionHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTTVSectionHeaderViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTTVSectionHeaderViewAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end