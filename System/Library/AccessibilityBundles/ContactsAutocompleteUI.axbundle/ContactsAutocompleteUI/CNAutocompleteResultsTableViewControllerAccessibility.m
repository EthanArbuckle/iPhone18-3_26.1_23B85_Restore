@interface CNAutocompleteResultsTableViewControllerAccessibility
- (void)selectRowAtIndexPath:(id)a3;
@end

@implementation CNAutocompleteResultsTableViewControllerAccessibility

- (void)selectRowAtIndexPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNAutocompleteResultsTableViewControllerAccessibility;
  [(CNAutocompleteResultsTableViewControllerAccessibility *)&v9 selectRowAtIndexPath:v4];
  objc_opt_class();
  v5 = [(CNAutocompleteResultsTableViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 cellForRowAtIndexPath:v4];
  LODWORD(v5) = *MEMORY[0x29EDC7EA8];
  v8 = [v7 accessibilityLabel];
  UIAccessibilityPostNotification(v5, v8);
}

@end