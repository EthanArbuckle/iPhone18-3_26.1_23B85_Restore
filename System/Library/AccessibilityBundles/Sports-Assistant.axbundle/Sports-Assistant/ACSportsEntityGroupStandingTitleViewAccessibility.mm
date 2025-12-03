@interface ACSportsEntityGroupStandingTitleViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACSportsEntityGroupStandingTitleViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(ACSportsEntityGroupStandingTitleViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end