@interface ACSportsMatchupViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACSportsMatchupViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(ACSportsMatchupViewAccessibility *)self safeValueForKey:@"_scoreboardView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end