@interface MFAutocompleteResultsTableViewControllerAccessibility
- (void)_selectSearchResultsRecipientAtIndexPath:(id)path;
@end

@implementation MFAutocompleteResultsTableViewControllerAccessibility

- (void)_selectSearchResultsRecipientAtIndexPath:(id)path
{
  v3.receiver = self;
  v3.super_class = MFAutocompleteResultsTableViewControllerAccessibility;
  [(MFAutocompleteResultsTableViewControllerAccessibility *)&v3 _selectSearchResultsRecipientAtIndexPath:path];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end