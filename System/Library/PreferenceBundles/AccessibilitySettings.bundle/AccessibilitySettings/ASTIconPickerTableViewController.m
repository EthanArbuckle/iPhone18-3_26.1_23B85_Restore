@interface ASTIconPickerTableViewController
- (AssistiveTouchCustomizeController)iconPickerDelegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_resetSearch;
- (void)_updateSearch:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ASTIconPickerTableViewController

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = ASTIconPickerTableViewController;
  [(ASTIconPickerTableViewController *)&v16 viewWillAppear:a3];
  v4 = [(ASTIconPickerTableViewController *)self tableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];

  v5 = UITableDefaultRowHeight;
  v6 = [(ASTIconPickerTableViewController *)self tableView];
  [v6 setEstimatedRowHeight:v5];

  v7 = objc_alloc_init(UISearchController);
  [(ASTIconPickerTableViewController *)self setSearchController:v7];

  v8 = [(ASTIconPickerTableViewController *)self searchController];
  [v8 setSearchResultsUpdater:self];

  v9 = [(ASTIconPickerTableViewController *)self searchController];
  [v9 setHidesNavigationBarDuringPresentation:0];

  v10 = [(ASTIconPickerTableViewController *)self searchController];
  [v10 setObscuresBackgroundDuringPresentation:0];

  v11 = [(ASTIconPickerTableViewController *)self searchController];
  [v11 setAutomaticallyShowsCancelButton:1];

  v12 = [(ASTIconPickerTableViewController *)self navigationItem];
  [v12 setHidesSearchBarWhenScrolling:0];

  if (AXDeviceIsPad())
  {
    v13 = [(ASTIconPickerTableViewController *)self navigationItem];
    v14 = [(ASTIconPickerTableViewController *)self searchController];
    v15 = [v14 searchBar];
    [v13 setTitleView:v15];
  }

  else
  {
    v13 = [(ASTIconPickerTableViewController *)self searchController];
    v14 = [(ASTIconPickerTableViewController *)self navigationItem];
    [v14 setSearchController:v13];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ASTIconPickerTableViewController;
  [(ASTIconPickerTableViewController *)&v4 viewWillDisappear:a3];
  [(ASTIconPickerTableViewController *)self _resetSearch];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v6 = [v5 astNumberOfRowsInSection:a4];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"row"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"row"];
    v8 = [v7 textLabel];
    [v8 setNumberOfLines:0];
  }

  v9 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v10 = [v9 formattedTextForIconAtIndexPath:v6];

  v11 = [v7 textLabel];
  [v11 setText:v10];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [v11 astTableView:v10 willDisplayCell:v9 forRowAtIndexPath:v8];

  v12 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v17 = [v12 iconForIndexPath:v8];

  v13 = +[AXSettings sharedInstance];
  v14 = [v13 assistiveTouchMainScreenCustomization];

  v15 = [v14 allValues];
  LODWORD(v8) = [v15 containsObject:v17];

  v16 = [v9 textLabel];

  [v16 setEnabled:v8 ^ 1];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v4 = [v3 astNumberOfSections];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [v8 astTableView:v7 didSelectRowAtIndexPath:v6];

  v9 = +[AXSettings sharedInstance];
  v10 = [v9 assistiveTouchMainScreenCustomization];
  v25 = [v10 mutableCopy];

  v11 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v12 = [v11 selectedPopoverIcon];
  v13 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v14 = [v13 selectedPopoverLocation];
  [v25 setObject:v12 forKeyedSubscript:v14];

  v15 = +[AXSettings sharedInstance];
  [v15 setAssistiveTouchMainScreenCustomization:v25];

  v16 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v17 = [v16 customizeCell];
  v18 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v19 = [v18 selectedPopoverLocation];
  v20 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v21 = [v20 selectedPopoverIcon];
  v22 = +[AXSettings sharedInstance];
  v23 = [v22 assistiveTouchMainScreenCustomization];
  [v23 count];
  [v17 updateButton:v19 withIcon:v21 layout:AXAssistiveTouchNamedLayout()];

  v24 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [v24 didUpdateCustomizeCellHeight];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v6 = [v5 astTitleForSection:a4];

  return v6;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  v7 = [v6 iconForIndexPath:v5];

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 assistiveTouchMainScreenCustomization];

  v10 = [v9 allValues];
  v11 = [v10 containsObject:v7];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = [(ASTIconPickerTableViewController *)self searchTimer];
  [v5 invalidate];

  [(ASTIconPickerTableViewController *)self setSearchTimer:0];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __75__ASTIconPickerTableViewController_updateSearchResultsForSearchController___block_invoke;
  v8[3] = &unk_258848;
  objc_copyWeak(&v10, &location);
  v6 = v4;
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

- (void)_updateSearch:(id)a3
{
  v4 = a3;
  v5 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [v5 setSearchText:v4];

  v6 = [(ASTIconPickerTableViewController *)self iconPickerDelegate];
  [v6 reloadASTDataSource];

  v7 = [(ASTIconPickerTableViewController *)self tableView];
  [v7 reloadData];
}

- (void)_resetSearch
{
  v9 = [(ASTIconPickerTableViewController *)self searchController];
  if ([v9 isActive])
  {
    v3 = [(ASTIconPickerTableViewController *)self searchController];
    v4 = [v3 searchBar];
    v5 = [v4 text];
    v6 = [v5 length];

    if (v6)
    {
      [(ASTIconPickerTableViewController *)self _updateSearch:0];
      v7 = [(ASTIconPickerTableViewController *)self searchController];
      [v7 setActive:0];

      v8 = [(ASTIconPickerTableViewController *)self searchTimer];
      [v8 invalidate];

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