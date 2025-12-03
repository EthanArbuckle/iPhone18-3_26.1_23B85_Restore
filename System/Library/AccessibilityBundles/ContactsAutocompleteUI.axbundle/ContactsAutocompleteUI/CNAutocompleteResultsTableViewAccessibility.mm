@interface CNAutocompleteResultsTableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CNAutocompleteResultsTableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNAutocompleteResultsTableView" isKindOfClass:@"UITableView"];
  [validationsCopy validateClass:@"UITableView" hasInstanceMethod:@"selectRowAtIndexPath:animated:scrollPosition:" withFullSignature:{"v", "@", "B", "q", 0}];
}

@end