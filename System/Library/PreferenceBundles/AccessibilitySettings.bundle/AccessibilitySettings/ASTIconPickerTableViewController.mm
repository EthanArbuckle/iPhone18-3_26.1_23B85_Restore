@interface ASTIconPickerTableViewController
- (AssistiveTouchCustomizeController)iconPickerDelegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_resetSearch;
- (void)_updateSearch:(id)search;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ASTIconPickerTableViewController

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = ASTIconPickerTableViewController;
  [(ASTIconPickerTableViewController *)&v16 viewWillAppear:appear];
  tableView = [(ASTIconPickerTableViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  v5 = UITableDefaultRowHeight;
  tableView2 = [(ASTIconPickerTableViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:v5];

  v7 = objc_alloc_init(UISearchController);
  [(ASTIconPickerTableViewController *)self setSearchController:v7];

  searchController = [(ASTIconPickerTableViewController *)self searchController];
  [searchController setSearchResultsUpdater:self];

  searchController2 = [(ASTIconPickerTableViewController *)self searchController];
  [searchController2 setHidesNavigationBarDuringPresentation:0];

  searchController3 = [(ASTIconPickerTableViewController *)self searchController];
  [searchController3 setObscuresBackgroundDuringPresentation:0];

  searchController4 = [(ASTIconPickerTableViewController *)self searchController];
  [searchController4 setAutomaticallyShowsCancelButton:1];

  navigationItem = [(ASTIconPickerTableViewController *)self navigationItem];
  [navigationItem setHidesSearchBarWhenScrolling:0];

  if (AXDeviceIsPad())
  {
    navigationItem2 = [(ASTIconPickerTableViewController *)self navigationItem];
    searchController5 = [(ASTIconPickerTableViewController *)self searchController];
    searchBar = [searchController5 searchBar];
    [navigationItem2 setTitleView:searchBar];
  }

  else
  {
    navigationItem2 = [(ASTIconPickerTableViewController *)self searchController];
    searchController5 = [(ASTIconPickerTableViewController *)self navigationItem];
    [searchController5 setSearchController:navigationItem2];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ASTIconPickerTableViewController;
  [(ASTIconPickerTableViewController *)&v4 viewWillDisappear:disappear];
  [(ASTIconPickerTableViewController *)self _resetSearch];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  iconPickerDelegate = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v6 = [iconPickerDelegate astNumberOfRowsInSection:section];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"row"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"row"];
    textLabel = [v7 textLabel];
    [textLabel setNumberOfLines:0];
  }

  iconPickerDelegate = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v10 = [iconPickerDelegate formattedTextForIconAtIndexPath:pathCopy];

  textLabel2 = [v7 textLabel];
  [textLabel2 setText:v10];

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  viewCopy = view;
  iconPickerDelegate = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [iconPickerDelegate astTableView:viewCopy willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];

  iconPickerDelegate2 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v17 = [iconPickerDelegate2 iconForIndexPath:pathCopy];

  v13 = +[AXSettings sharedInstance];
  assistiveTouchMainScreenCustomization = [v13 assistiveTouchMainScreenCustomization];

  allValues = [assistiveTouchMainScreenCustomization allValues];
  LODWORD(pathCopy) = [allValues containsObject:v17];

  textLabel = [cellCopy textLabel];

  [textLabel setEnabled:pathCopy ^ 1];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  iconPickerDelegate = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  astNumberOfSections = [iconPickerDelegate astNumberOfSections];

  return astNumberOfSections;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  iconPickerDelegate = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [iconPickerDelegate astTableView:viewCopy didSelectRowAtIndexPath:pathCopy];

  v9 = +[AXSettings sharedInstance];
  assistiveTouchMainScreenCustomization = [v9 assistiveTouchMainScreenCustomization];
  v25 = [assistiveTouchMainScreenCustomization mutableCopy];

  iconPickerDelegate2 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  selectedPopoverIcon = [iconPickerDelegate2 selectedPopoverIcon];
  iconPickerDelegate3 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  selectedPopoverLocation = [iconPickerDelegate3 selectedPopoverLocation];
  [v25 setObject:selectedPopoverIcon forKeyedSubscript:selectedPopoverLocation];

  v15 = +[AXSettings sharedInstance];
  [v15 setAssistiveTouchMainScreenCustomization:v25];

  iconPickerDelegate4 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  customizeCell = [iconPickerDelegate4 customizeCell];
  iconPickerDelegate5 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  selectedPopoverLocation2 = [iconPickerDelegate5 selectedPopoverLocation];
  iconPickerDelegate6 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  selectedPopoverIcon2 = [iconPickerDelegate6 selectedPopoverIcon];
  v22 = +[AXSettings sharedInstance];
  assistiveTouchMainScreenCustomization2 = [v22 assistiveTouchMainScreenCustomization];
  [assistiveTouchMainScreenCustomization2 count];
  [customizeCell updateButton:selectedPopoverLocation2 withIcon:selectedPopoverIcon2 layout:AXAssistiveTouchNamedLayout()];

  iconPickerDelegate7 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [iconPickerDelegate7 didUpdateCustomizeCellHeight];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  iconPickerDelegate = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v6 = [iconPickerDelegate astTitleForSection:section];

  return v6;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  iconPickerDelegate = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v7 = [iconPickerDelegate iconForIndexPath:pathCopy];

  v8 = +[AXSettings sharedInstance];
  assistiveTouchMainScreenCustomization = [v8 assistiveTouchMainScreenCustomization];

  allValues = [assistiveTouchMainScreenCustomization allValues];
  v11 = [allValues containsObject:v7];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = pathCopy;
  }

  return v12;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  searchTimer = [(ASTIconPickerTableViewController *)self searchTimer];
  [searchTimer invalidate];

  [(ASTIconPickerTableViewController *)self setSearchTimer:0];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __75__ASTIconPickerTableViewController_updateSearchResultsForSearchController___block_invoke;
  v8[3] = &unk_258848;
  objc_copyWeak(&v10, &location);
  v6 = controllerCopy;
  v9 = v6;
  v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:0.5];
  [(ASTIconPickerTableViewController *)self setSearchTimer:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __75__ASTIconPickerTableViewController_updateSearchResultsForSearchController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) searchBar];
  v3 = [v2 text];
  [WeakRetained _updateSearch:v3];
}

- (void)_updateSearch:(id)search
{
  searchCopy = search;
  iconPickerDelegate = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [iconPickerDelegate setSearchText:searchCopy];

  iconPickerDelegate2 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [iconPickerDelegate2 reloadASTDataSource];

  tableView = [(ASTIconPickerTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)_resetSearch
{
  searchController = [(ASTIconPickerTableViewController *)self searchController];
  if ([searchController isActive])
  {
    searchController2 = [(ASTIconPickerTableViewController *)self searchController];
    searchBar = [searchController2 searchBar];
    text = [searchBar text];
    v6 = [text length];

    if (v6)
    {
      [(ASTIconPickerTableViewController *)self _updateSearch:0];
      searchController3 = [(ASTIconPickerTableViewController *)self searchController];
      [searchController3 setActive:0];

      searchTimer = [(ASTIconPickerTableViewController *)self searchTimer];
      [searchTimer invalidate];

      [(ASTIconPickerTableViewController *)self setSearchTimer:0];
    }
  }

  else
  {
  }
}

- (AssistiveTouchCustomizeController)iconPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconPickerDelegate);

  return WeakRetained;
}

@end