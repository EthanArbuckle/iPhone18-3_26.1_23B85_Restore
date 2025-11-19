@interface ACSportsMatchupViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACSportsMatchupViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(ACSportsMatchupViewAccessibility *)self safeValueForKey:@"_scoreboardView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end