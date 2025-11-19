@interface EKTimeZoneSearchResultsController
- (void)updateSearchResultsForSearchController:(id)a3;
@end

@implementation EKTimeZoneSearchResultsController

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = MEMORY[0x1E698B670];
  v5 = a3;
  v6 = [v4 sharedManager];
  v7 = [v5 searchBar];

  v8 = [v7 text];
  v9 = [v6 citiesMatchingName:v8];
  [(EKTimeZoneViewController *)self setCities:v9];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v10 lineHeight];
  v12 = v11;
  v13 = [(EKTimeZoneSearchResultsController *)self tableView];
  [v13 setEstimatedRowHeight:v12];

  v14 = *MEMORY[0x1E69DE3D0];
  v15 = [(EKTimeZoneSearchResultsController *)self tableView];
  [v15 setRowHeight:v14];

  v16 = [(EKTimeZoneSearchResultsController *)self tableView];
  [v16 reloadData];
}

@end