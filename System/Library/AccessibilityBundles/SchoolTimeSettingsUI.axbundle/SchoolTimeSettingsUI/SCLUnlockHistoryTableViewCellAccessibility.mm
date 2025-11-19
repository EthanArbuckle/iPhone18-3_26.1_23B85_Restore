@interface SCLUnlockHistoryTableViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation SCLUnlockHistoryTableViewCellAccessibility

- (id)accessibilityElements
{
  v2 = [(SCLUnlockHistoryTableViewCellAccessibility *)self safeValueForKey:@"_historyItemView"];
  v3 = [NSArray axArrayByIgnoringNilElementsWithCount:1, v2];

  return v3;
}

@end