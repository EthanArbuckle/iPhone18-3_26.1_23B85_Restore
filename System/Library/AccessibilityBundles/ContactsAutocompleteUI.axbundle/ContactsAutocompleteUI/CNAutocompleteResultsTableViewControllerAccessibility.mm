@interface CNAutocompleteResultsTableViewControllerAccessibility
- (void)selectRowAtIndexPath:(id)path;
@end

@implementation CNAutocompleteResultsTableViewControllerAccessibility

- (void)selectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = CNAutocompleteResultsTableViewControllerAccessibility;
  [(CNAutocompleteResultsTableViewControllerAccessibility *)&v9 selectRowAtIndexPath:pathCopy];
  objc_opt_class();
  v5 = [(CNAutocompleteResultsTableViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 cellForRowAtIndexPath:pathCopy];
  LODWORD(v5) = *MEMORY[0x29EDC7EA8];
  accessibilityLabel = [v7 accessibilityLabel];
  UIAccessibilityPostNotification(v5, accessibilityLabel);
}

@end