@interface ACSportsEntityGroupStandingTitleViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACSportsEntityGroupStandingTitleViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(ACSportsEntityGroupStandingTitleViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end