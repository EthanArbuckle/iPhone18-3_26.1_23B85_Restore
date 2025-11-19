@interface ACSportsTeamHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACSportsTeamHeaderViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(ACSportsTeamHeaderViewAccessibility *)self safeValueForKey:@"_headerLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(ACSportsTeamHeaderViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end