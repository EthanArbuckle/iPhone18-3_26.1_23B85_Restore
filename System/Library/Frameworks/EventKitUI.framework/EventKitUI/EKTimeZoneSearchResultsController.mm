@interface EKTimeZoneSearchResultsController
- (void)updateSearchResultsForSearchController:(id)controller;
@end

@implementation EKTimeZoneSearchResultsController

- (void)updateSearchResultsForSearchController:(id)controller
{
  v4 = MEMORY[0x1E698B670];
  controllerCopy = controller;
  sharedManager = [v4 sharedManager];
  searchBar = [controllerCopy searchBar];

  text = [searchBar text];
  v9 = [sharedManager citiesMatchingName:text];
  [(EKTimeZoneViewController *)self setCities:v9];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v10 lineHeight];
  v12 = v11;
  tableView = [(EKTimeZoneSearchResultsController *)self tableView];
  [tableView setEstimatedRowHeight:v12];

  v14 = *MEMORY[0x1E69DE3D0];
  tableView2 = [(EKTimeZoneSearchResultsController *)self tableView];
  [tableView2 setRowHeight:v14];

  tableView3 = [(EKTimeZoneSearchResultsController *)self tableView];
  [tableView3 reloadData];
}

@end