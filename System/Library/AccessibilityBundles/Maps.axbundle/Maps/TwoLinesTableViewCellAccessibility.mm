@interface TwoLinesTableViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TwoLinesTableViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TwoLinesTableViewCellAccessibility *)self safeValueForKey:@"_twoLinesContentView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end