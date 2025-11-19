@interface ISLocaleController
- (NSOperationQueue)searchQueue;
- (UISearchBar)searchBar;
- (UISearchController)searchController;
- (id)_mainContentView;
- (id)filteredRegionsForRegionList:(id)a3 searchString:(id)a4;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelSearchAndDismiss;
- (void)dealloc;
- (void)deselectHighlightedRow;
- (void)emitNavigationEventForLocaleController;
- (void)loadRegions;
- (void)loadSections;
- (void)loadView;
- (void)reloadDataAndScrollToCheckedRegionAnimated:(BOOL)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ISLocaleController

- (void)dealloc
{
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  v3 = [(ISLocaleController *)self searchBar];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = ISLocaleController;
  [(ISLocaleController *)&v4 dealloc];
}

- (NSOperationQueue)searchQueue
{
  searchQueue = self->_searchQueue;
  if (!searchQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_searchQueue;
    self->_searchQueue = v4;

    [(NSOperationQueue *)self->_searchQueue setMaxConcurrentOperationCount:1];
    searchQueue = self->_searchQueue;
  }

  return searchQueue;
}

- (id)_mainContentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    WeakRetained = objc_loadWeakRetained(&self->PSViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
    v5 = [WeakRetained view];
    [v5 frame];
    v7 = v6;
    v9 = v8;

    v10 = [[UIView alloc] initWithFrame:{0.0, 0.0, v7, v9}];
    v11 = self->_contentView;
    self->_contentView = v10;

    [(UIView *)self->_contentView setAutoresizingMask:18];
    v12 = [[UISearchController alloc] initWithSearchResultsController:0];
    v13 = [(ISLocaleController *)self navigationItem];
    [v13 setSearchController:v12];

    v14 = [(ISLocaleController *)self navigationItem];
    [v14 setHidesSearchBarWhenScrolling:0];

    v15 = [(ISLocaleController *)self navigationItem];
    v16 = [v15 searchController];
    [(ISLocaleController *)self setSearchController:v16];

    v17 = [(ISLocaleController *)self searchController];
    v18 = [v17 searchBar];
    [(ISLocaleController *)self setSearchBar:v18];

    v19 = [(ISLocaleController *)self searchController];
    [v19 setHidesNavigationBarDuringPresentation:1];

    v20 = [(ISLocaleController *)self searchController];
    [v20 setObscuresBackgroundDuringPresentation:0];

    v21 = [(ISLocaleController *)self searchBar];
    [v21 setDelegate:self];

    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SEARCH" value:&stru_35798 table:@"InternationalSettings"];
    v24 = [(ISLocaleController *)self searchBar];
    [v24 setPlaceholder:v23];

    v25 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"navBarCloseButtonClicked"];
    v26 = [(ISLocaleController *)self navigationItem];
    [v26 setLeftBarButtonItem:v25];

    v27 = [[UITableView alloc] initWithFrame:0 style:{0.0, 0.0, v7, v9}];
    [(UITableView *)v27 setAutoresizingMask:18];
    [(UITableView *)v27 setDataSource:self];
    [(UITableView *)v27 setDelegate:self];
    [(UITableView *)v27 setRowHeight:UITableViewAutomaticDimension];
    [(UITableView *)v27 setEstimatedRowHeight:UITableViewDefaultRowHeight];
    [(UITableView *)v27 setKeyboardDismissMode:1];
    tableView = self->_tableView;
    self->_tableView = v27;
    v29 = v27;

    [(UIView *)self->_contentView addSubview:self->_tableView];
    contentView = self->_contentView;
  }

  return contentView;
}

- (void)loadSections
{
  v3 = +[UILocalizedIndexedCollation currentCollation];
  v4 = [v3 sectionTitles];
  v5 = [v4 count];

  v6 = +[NSMutableArray array];
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = +[NSMutableArray array];
      [v6 addObject:v8];

      --v7;
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = self;
  v9 = [(ISLocaleController *)self regionsList];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v6 objectAtIndex:{objc_msgSend(v3, "sectionForObject:collationStringSelector:", v14, "regionName")}];
        [v15 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if (v5)
  {
    for (j = 0; j != v5; ++j)
    {
      v17 = [v6 objectAtIndex:j];
      v18 = [v3 sortedArrayFromArray:v17 collationStringSelector:"regionName"];
      [v6 replaceObjectAtIndex:j withObject:v18];
    }
  }

  [(ISLocaleController *)v19 setSections:v6];
}

- (void)loadRegions
{
  v3 = [(ISLocaleController *)self regionsList];

  if (!v3)
  {
    v19 = self;
    v4 = +[(ISInternationalViewController *)InternationalSettingsController];
    v5 = [v4 regionCode];

    v6 = @"US";
    if (v5)
    {
      v6 = v5;
    }

    v20 = v6;
    v7 = +[NSLocale supportedRegions];
    v8 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = +[NSLocale _deviceLanguage];
          v16 = [NSLocale localeWithLocaleIdentifier:v15];
          v17 = [v16 localizedStringForRegion:v14 context:3 short:0];

          if (([v17 isEqualToString:v14] & 1) == 0)
          {
            v18 = [ISRegion regionWithName:v17 code:v14];
            [v8 addObject:v18];
            if ([(__CFString *)v20 isEqualToString:v14])
            {
              [(ISLocaleController *)v19 setCurrentRegion:v18];
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [(ISLocaleController *)v19 setRegionsList:v8];
  }
}

- (void)loadView
{
  v3 = [(ISLocaleController *)self _mainContentView];
  contentView = self->_contentView;
  self->_contentView = v3;

  v5 = self->_contentView;

  [(ISLocaleController *)self setView:v5];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ISLocaleController;
  [(ISLocaleController *)&v3 viewDidLayoutSubviews];
  if ([(ISLocaleController *)self shouldReloadAndScrollToCurrentRegion])
  {
    [(ISLocaleController *)self reloadDataAndScrollToCheckedRegionAnimated:0];
    [(ISLocaleController *)self setShouldReloadAndScrollToCurrentRegion:0];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ISLocaleController;
  [(ISLocaleController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SELECT_REGION" value:&stru_35798 table:@"InternationalSettings"];
  [(ISLocaleController *)self setTitle:v4];

  [(ISLocaleController *)self emitNavigationEventForLocaleController];
}

- (void)emitNavigationEventForLocaleController
{
  v19 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/INTERNATIONAL/LOCALE"];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 bundleURL];
  v7 = [v3 initWithKey:@"GENERAL" table:@"InternationalSettings" locale:v4 bundleURL:v6];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 bundleURL];
  v12 = [v8 initWithKey:@"INTERNATIONAL" table:@"InternationalSettings" locale:v9 bundleURL:v11];

  v13 = [_NSLocalizedStringResource alloc];
  v14 = +[NSLocale currentLocale];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 bundleURL];
  v17 = [v13 initWithKey:@"SELECT_REGION" table:@"InternationalSettings" locale:v14 bundleURL:v16];

  v20[0] = v7;
  v20[1] = v12;
  v18 = [NSArray arrayWithObjects:v20 count:2];
  [(ISLocaleController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.language" title:v17 localizedNavigationComponents:v18 deepLink:v19];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_searchMode)
  {
    return 1;
  }

  v4 = [(ISLocaleController *)self sections];
  v5 = [v4 count];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_searchMode)
  {
    v4 = [(ISLocaleController *)self filteredListContent:a3];
    v5 = [v4 count];
  }

  else
  {
    v4 = [(ISLocaleController *)self sections];
    v7 = [v4 objectAtIndex:a4];
    v5 = [v7 count];
  }

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (self->_searchMode || (-[ISLocaleController sections](self, "sections", a3), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectAtIndex:a4], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, !v7))
  {
    v10 = 0;
  }

  else
  {
    v8 = +[UILocalizedIndexedCollation currentCollation];
    v9 = [v8 sectionTitles];
    v10 = [v9 objectAtIndex:a4];
  }

  return v10;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  if (self->_searchMode)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[UILocalizedIndexedCollation currentCollation];
    v3 = [v4 sectionIndexTitles];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"kCellIdentifier"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"kCellIdentifier"];
  }

  if (self->_searchMode)
  {
    v8 = [(ISLocaleController *)self filteredListContent];
    v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];
  }

  else
  {
    v8 = [(ISLocaleController *)self sections];
    v10 = [v8 objectAtIndex:{objc_msgSend(v6, "section")}];
    v9 = [v10 objectAtIndex:{objc_msgSend(v6, "row")}];
  }

  v11 = [(ISLocaleController *)self currentRegion];

  if (v9 == v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v7 setAccessoryType:v12];
  v13 = [v9 regionName];
  v14 = [v7 textLabel];
  [v14 setText:v13];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (self->_searchMode)
  {
    v7 = [(ISLocaleController *)self filteredListContent];
    v8 = [v7 objectAtIndex:{objc_msgSend(v6, "row")}];
  }

  else
  {
    v7 = [(ISLocaleController *)self sections];
    v9 = [v7 objectAtIndex:{objc_msgSend(v6, "section")}];
    v8 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];
  }

  v10 = +[(ISInternationalViewController *)InternationalSettingsController];
  v11 = [v10 regionCode];
  v12 = [v8 regionCode];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    [(ISLocaleController *)self deselectHighlightedRow];
  }

  else
  {
    v14 = OBJC_IVAR___PSViewController__parentController;
    WeakRetained = objc_loadWeakRetained(&self->PSViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
    [WeakRetained setSelectedRegion:v8];

    v16 = objc_loadWeakRetained(&self->PSViewController_opaque[v14]);
    [v16 commitRegion];
  }
}

- (void)deselectHighlightedRow
{
  tableView = self->_tableView;
  v3 = [(UITableView *)tableView indexPathForSelectedRow];
  [(UITableView *)tableView deselectRowAtIndexPath:v3 animated:1];
}

- (void)reloadDataAndScrollToCheckedRegionAnimated:(BOOL)a3
{
  v20 = a3;
  if (!self->_searchMode)
  {
    [(UITableView *)self->_tableView reloadData];
    v4 = [(ISLocaleController *)self currentRegion];

    if (v4)
    {
      v5 = [(ISLocaleController *)self sections];
      v6 = [v5 count];

      if (v6)
      {
        v7 = 0;
        do
        {
          v8 = [(ISLocaleController *)self sections];
          v9 = [v8 objectAtIndexedSubscript:v7];

          if ([v9 count])
          {
            v10 = 0;
            while (1)
            {
              v11 = [v9 objectAtIndexedSubscript:v10];
              v12 = [v11 regionCode];
              v13 = [(ISLocaleController *)self currentRegion];
              v14 = [v13 regionCode];
              v15 = [v12 isEqualToString:v14];

              if (v15)
              {
                break;
              }

              if (++v10 >= [v9 count])
              {
                goto LABEL_11;
              }
            }

            tableView = self->_tableView;
            v17 = [NSIndexPath indexPathForRow:v10 inSection:v7];
            [(UITableView *)tableView scrollToRowAtIndexPath:v17 atScrollPosition:1 animated:v20];
          }

LABEL_11:

          ++v7;
          v18 = [(ISLocaleController *)self sections];
          v19 = [v18 count];
        }

        while (v7 < v19);
      }
    }
  }
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ISLocaleController *)self setFilteredListContent:0];
  v8 = [(ISLocaleController *)self searchQueue];
  [v8 cancelAllOperations];

  if ([v7 length])
  {
    self->_searchMode = 1;
    v9 = objc_alloc_init(NSBlockOperation);
    objc_initWeak(&location, v9);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_8154;
    v14 = &unk_35088;
    v15 = self;
    v16 = v7;
    objc_copyWeak(&v17, &location);
    [v9 addExecutionBlock:&v11];
    v10 = [(ISLocaleController *)self searchQueue:v11];
    [v10 addOperation:v9];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_searchMode = 0;
    [(UITableView *)self->_tableView reloadData];
  }
}

- (id)filteredRegionsForRegionList:(id)a3 searchString:(id)a4
{
  v5 = a3;
  v18 = a4;
  v20 = +[NSMutableArray array];
  v6 = [NSPredicate predicateWithFormat:@"SELF beginswith[cld] %@", v18];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 regionName];
        if ([v6 evaluateWithObject:v11])
        {
          [v20 addObject:v10];
        }

        else
        {
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 0;
          v12 = [v11 length];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_856C;
          v21[3] = &unk_350B0;
          v22 = v6;
          v13 = v20;
          v23 = v13;
          v24 = v10;
          v25 = &v26;
          [v11 enumerateSubstringsInRange:0 options:v12 usingBlock:{3, v21}];
          if ((v27[3] & 1) == 0)
          {
            v14 = [v10 regionCode];
            v15 = [v18 uppercaseString];
            v16 = [v14 hasPrefix:v15];

            if (v16)
            {
              [v13 addObject:v10];
            }
          }

          _Block_object_dispose(&v26, 8);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  return v20;
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = [(ISLocaleController *)self searchBar];
  v5 = [v4 text];
  v6 = [v5 length];

  if (!v6)
  {
    self->_searchMode = 0;
    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (void)cancelSearchAndDismiss
{
  v3 = [(ISLocaleController *)self searchController];
  [v3 setActive:0];

  WeakRetained = objc_loadWeakRetained(&self->PSViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained dismiss];
}

- (UISearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

- (UISearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

@end