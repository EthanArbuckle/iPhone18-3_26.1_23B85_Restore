@interface ACSportsTeamHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACSportsTeamHeaderViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(ACSportsTeamHeaderViewAccessibility *)self safeValueForKey:@"_headerLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(ACSportsTeamHeaderViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end