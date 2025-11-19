@interface TwoLinesTableViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TwoLinesTableViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TwoLinesTableViewCellAccessibility *)self safeValueForKey:@"_twoLinesContentView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end