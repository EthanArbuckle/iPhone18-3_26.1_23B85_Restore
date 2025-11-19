@interface TwoLinesOutlineCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TwoLinesOutlineCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TwoLinesOutlineCellAccessibility *)self safeValueForKey:@"_twoLinesContentView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end