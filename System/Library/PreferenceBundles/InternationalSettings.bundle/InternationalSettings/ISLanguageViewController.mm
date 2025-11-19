@interface ISLanguageViewController
- (NSArray)languageSections;
- (NSOperationQueue)searchQueue;
- (UISearchBar)searchBar;
- (UISearchController)searchController;
- (id)_mainContentView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelSearchAndDismiss;
- (void)dealloc;
- (void)deselectHighlightedRow;
- (void)emitNavigationEventForLanguageViewController;
- (void)generateLanguageCells;
- (void)loadData;
- (void)loadView;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateNavigationItem;
@end

@implementation ISLanguageViewController

- (void)dealloc
{
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  v3 = [(ISLanguageViewController *)self searchBar];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = ISLanguageViewController;
  [(ISLanguageViewController *)&v4 dealloc];
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

- (void)updateNavigationItem
{
  v7 = [(ISLanguageViewController *)self navigationItem];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SELECT_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
  v5 = [NSString stringWithFormat:v4];
  [v7 setTitle:v5];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"navBarCloseButtonClicked"];
  [v7 setLeftBarButtonItem:v6];
}

- (void)generateLanguageCells
{
  v3 = [(UITableView *)self->_tableView numberOfSections];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(UITableView *)self->_tableView numberOfRowsInSection:i];
      if (v6 >= 1)
      {
        v7 = v6;
        for (j = 0; j != v7; ++j)
        {
          Current = CFRunLoopGetCurrent();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_D29C;
          block[3] = &unk_351C0;
          block[5] = j;
          block[6] = i;
          block[4] = self;
          CFRunLoopPerformBlock(Current, kCFRunLoopDefaultMode, block);
        }
      }
    }
  }
}

- (void)emitNavigationEventForLanguageViewController
{
  v19 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/INTERNATIONAL/ADD_PREFERRED_LANGUAGE"];
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
  v17 = [v13 initWithKey:@"SELECT_LANGUAGE" table:@"InternationalSettings" locale:v14 bundleURL:v16];

  v20[0] = v7;
  v20[1] = v12;
  v18 = [NSArray arrayWithObjects:v20 count:2];
  [(ISLanguageViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.language" title:v17 localizedNavigationComponents:v18 deepLink:v19];
}

- (id)_mainContentView
{
  WeakRetained = objc_loadWeakRetained(&self->PSViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v4 = [WeakRetained view];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, v6, v8}];
  contentView = self->_contentView;
  self->_contentView = v9;

  [(UIView *)self->_contentView setAutoresizingMask:18];
  v11 = [[UITableView alloc] initWithFrame:2 style:{0.0, 0.0, v6, v8}];
  [(UITableView *)v11 setAutoresizingMask:18];
  [(UITableView *)v11 setDataSource:self];
  [(UITableView *)v11 setDelegate:self];
  [(UITableView *)v11 setRowHeight:UITableViewAutomaticDimension];
  [(UITableView *)v11 setEstimatedRowHeight:UITableViewDefaultRowHeight];
  [(UITableView *)v11 setKeyboardDismissMode:1];
  tableView = self->_tableView;
  self->_tableView = v11;
  v13 = v11;

  [(UIView *)self->_contentView addSubview:self->_tableView];
  v14 = [[UISearchController alloc] initWithSearchResultsController:0];
  v15 = [(ISLanguageViewController *)self navigationItem];
  [v15 setSearchController:v14];

  v16 = [(ISLanguageViewController *)self navigationItem];
  [v16 setHidesSearchBarWhenScrolling:0];

  v17 = [(ISLanguageViewController *)self navigationItem];
  v18 = [v17 searchController];
  [(ISLanguageViewController *)self setSearchController:v18];

  v19 = [(ISLanguageViewController *)self searchController];
  v20 = [v19 searchBar];
  [(ISLanguageViewController *)self setSearchBar:v20];

  v21 = [(ISLanguageViewController *)self searchController];
  [v21 setHidesNavigationBarDuringPresentation:1];

  v22 = [(ISLanguageViewController *)self searchController];
  [v22 setObscuresBackgroundDuringPresentation:0];

  v23 = [(ISLanguageViewController *)self searchBar];
  [v23 setDelegate:self];

  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SEARCH" value:&stru_35798 table:@"InternationalSettings"];
  v26 = [(ISLanguageViewController *)self searchBar];
  [v26 setPlaceholder:v25];

  v27 = +[NSArray array];
  [(ISLanguageViewController *)self setFilteredLanguageSections:v27];

  [(ISLanguageViewController *)self loadData];
  v28 = self->_contentView;
  v29 = v28;

  return v28;
}

- (void)loadView
{
  v3 = [(ISLanguageViewController *)self _mainContentView];
  contentView = self->_contentView;
  self->_contentView = v3;

  v5 = self->_contentView;

  [(ISLanguageViewController *)self setView:v5];
}

- (void)loadData
{
  v3 = +[IPLanguageListManager manager];
  v4 = [NSMutableArray arrayWithCapacity:3];
  v24[0] = @"kLanguageSectionKeyTitle";
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [ISInternationalViewController modelSpecificLocalizedStringKeyForKey:@"DEVICE_LANGUAGES"];
  v7 = [v5 localizedStringForKey:v6 value:&stru_35798 table:@"InternationalSettings"];
  v24[1] = @"kLanguageSectionKeyLanguages";
  v25[0] = v7;
  v8 = [v3 deviceLanguagesForChangingDeviceLanguage:0];
  v25[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

  [v4 addObject:v9];
  v10 = [v3 languageVariants];
  if ([v10 count])
  {
    v22[0] = @"kLanguageSectionKeyTitle";
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"LANGUAGE_VARIANTS" value:&stru_35798 table:@"InternationalSettings"];
    v22[1] = @"kLanguageSectionKeyLanguages";
    v23[0] = v12;
    v23[1] = v10;
    v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

    [v4 addObject:v13];
  }

  v14 = [v3 otherLanguages];
  v15 = [v14 mutableCopy];

  [v15 removeObjectsInArray:v10];
  v20[0] = @"kLanguageSectionKeyTitle";
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"OTHER_LANGUAGES" value:&stru_35798 table:@"InternationalSettings"];
  v20[1] = @"kLanguageSectionKeyLanguages";
  v21[0] = v17;
  v21[1] = v15;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  [v4 addObject:v18];
  [(ISLanguageViewController *)self setUnfilteredLanguageSections:v4];
  v19 = [v3 systemDisplayLanguage];
  [(ISLanguageViewController *)self setCheckedLanguageCode:v19];
}

- (NSArray)languageSections
{
  if (self->_searchIsActive)
  {
    [(ISLanguageViewController *)self filteredLanguageSections];
  }

  else
  {
    [(ISLanguageViewController *)self unfilteredLanguageSections];
  }
  v2 = ;

  return v2;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_searchIsActive)
  {
    [(ISLanguageViewController *)self filteredLanguageSections];
  }

  else
  {
    [(ISLanguageViewController *)self languageSections];
  }
  v3 = ;
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(ISLanguageViewController *)self languageSections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(ISLanguageViewController *)self languageSections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 objectForKeyedSubscript:@"kLanguageSectionKeyTitle"];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [[ISLanguageTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"Cell"];
  }

  v8 = [v6 row];
  v9 = [v6 section];

  v10 = [(ISLanguageViewController *)self languageSections];
  v11 = [v10 objectAtIndexedSubscript:v9];
  v12 = [v11 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
  v13 = [v12 objectAtIndexedSubscript:v8];

  v14 = [NSAttributedString alloc];
  v15 = [v13 name];
  v26 = kCTLanguageAttributeName;
  v16 = [v13 identifier];
  v27 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v18 = [v14 initWithString:v15 attributes:v17];

  v19 = [(ISLanguageTableViewCell *)v7 textLabel];
  [v19 setAttributedText:v18];

  v20 = [v13 localizedStringForName];
  v21 = [(ISLanguageTableViewCell *)v7 detailTextLabel];
  [v21 setText:v20];

  v22 = [(ISLanguageViewController *)self checkedLanguageCode];
  v23 = [v13 identifier];
  LODWORD(v21) = [v22 isEqualToString:v23];

  if (v21)
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

  [(ISLanguageTableViewCell *)v7 setAccessoryType:v24];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  v7 = [v5 section];

  v8 = [(ISLanguageViewController *)self languageSections];
  v9 = [v8 objectAtIndexedSubscript:v7];
  v10 = [v9 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
  v15 = [v10 objectAtIndexedSubscript:v6];

  v11 = [v15 identifier];
  v12 = OBJC_IVAR___PSViewController__parentController;
  WeakRetained = objc_loadWeakRetained(&self->PSViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained setLanguage:v11 specifier:0];

  v14 = objc_loadWeakRetained(&self->PSViewController_opaque[v12]);
  [v14 commit];
}

- (void)deselectHighlightedRow
{
  tableView = self->_tableView;
  v3 = [(UITableView *)tableView indexPathForSelectedRow];
  [(UITableView *)tableView deselectRowAtIndexPath:v3 animated:1];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISLanguageViewController *)self searchQueue];
  [v8 cancelAllOperations];

  if ([v7 length])
  {
    v9 = objc_alloc_init(NSBlockOperation);
    objc_initWeak(&location, v9);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_E634;
    v14 = &unk_35088;
    v15 = self;
    v16 = v7;
    objc_copyWeak(&v17, &location);
    [v9 addExecutionBlock:&v11];
    v10 = [(ISLanguageViewController *)self searchQueue:v11];
    [v10 addOperation:v9];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_searchIsActive = 0;
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)cancelSearchAndDismiss
{
  v3 = [(ISLanguageViewController *)self searchController];
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