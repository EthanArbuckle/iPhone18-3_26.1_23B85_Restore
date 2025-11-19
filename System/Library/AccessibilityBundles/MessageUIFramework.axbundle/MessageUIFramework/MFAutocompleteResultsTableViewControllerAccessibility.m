@interface MFAutocompleteResultsTableViewControllerAccessibility
- (void)_selectSearchResultsRecipientAtIndexPath:(id)a3;
@end

@implementation MFAutocompleteResultsTableViewControllerAccessibility

- (void)_selectSearchResultsRecipientAtIndexPath:(id)a3
{
  v3.receiver = self;
  v3.super_class = MFAutocompleteResultsTableViewControllerAccessibility;
  [(MFAutocompleteResultsTableViewControllerAccessibility *)&v3 _selectSearchResultsRecipientAtIndexPath:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end