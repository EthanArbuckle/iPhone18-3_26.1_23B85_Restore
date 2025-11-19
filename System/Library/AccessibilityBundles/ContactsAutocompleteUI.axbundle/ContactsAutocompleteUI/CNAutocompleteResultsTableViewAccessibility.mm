@interface CNAutocompleteResultsTableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CNAutocompleteResultsTableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNAutocompleteResultsTableView" isKindOfClass:@"UITableView"];
  [v3 validateClass:@"UITableView" hasInstanceMethod:@"selectRowAtIndexPath:animated:scrollPosition:" withFullSignature:{"v", "@", "B", "q", 0}];
}

@end