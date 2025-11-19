@interface MTTVSectionHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTTVSectionHeaderViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTTVSectionHeaderViewAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end