@interface TwoLinesOutlineCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TwoLinesOutlineCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TwoLinesOutlineCellAccessibility *)self safeValueForKey:@"_twoLinesContentView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end