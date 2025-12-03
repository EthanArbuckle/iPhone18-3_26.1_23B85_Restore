@interface ISLocaleController
- (NSOperationQueue)searchQueue;
- (UISearchBar)searchBar;
- (UISearchController)searchController;
- (id)_mainContentView;
- (id)filteredRegionsForRegionList:(id)list searchString:(id)string;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelSearchAndDismiss;
- (void)dealloc;
- (void)deselectHighlightedRow;
- (void)emitNavigationEventForLocaleController;
- (void)loadRegions;
- (void)loadSections;
- (void)loadView;
- (void)reloadDataAndScrollToCheckedRegionAnimated:(BOOL)animated;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ISLocaleController

- (void)dealloc
{
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  searchBar = [(ISLocaleController *)self searchBar];
  [searchBar setDelegate:0];

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
    view = [WeakRetained view];
    [view frame];
    v7 = v6;
    v9 = v8;

    v10 = [[UIView alloc] initWithFrame:{0.0, 0.0, v7, v9}];
    v11 = self->_contentView;
    self->_contentView = v10;

    [(UIView *)self->_contentView setAutoresizingMask:18];
    v12 = [[UISearchController alloc] initWithSearchResultsController:0];
    navigationItem = [(ISLocaleController *)self navigationItem];
    [navigationItem setSearchController:v12];

    navigationItem2 = [(ISLocaleController *)self navigationItem];
    [navigationItem2 setHidesSearchBarWhenScrolling:0];

    navigationItem3 = [(ISLocaleController *)self navigationItem];
    searchController = [navigationItem3 searchController];
    [(ISLocaleController *)self setSearchController:searchController];

    searchController2 = [(ISLocaleController *)self searchController];
    searchBar = [searchController2 searchBar];
    [(ISLocaleController *)self setSearchBar:searchBar];

    searchController3 = [(ISLocaleController *)self searchController];
    [searchController3 setHidesNavigationBarDuringPresentation:1];

    searchController4 = [(ISLocaleController *)self searchController];
    [searchController4 setObscuresBackgroundDuringPresentation:0];

    searchBar2 = [(ISLocaleController *)self searchBar];
    [searchBar2 setDelegate:self];

    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SEARCH" value:&stru_35798 table:@"InternationalSettings"];
    searchBar3 = [(ISLocaleController *)self searchBar];
    [searchBar3 setPlaceholder:v23];

    v25 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"navBarCloseButtonClicked"];
    navigationItem4 = [(ISLocaleController *)self navigationItem];
    [navigationItem4 setLeftBarButtonItem:v25];

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
  sectionTitles = [v3 sectionTitles];
  v5 = [sectionTitles count];

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
  selfCopy = self;
  regionsList = [(ISLocaleController *)self regionsList];
  v10 = [regionsList countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(regionsList);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v6 objectAtIndex:{objc_msgSend(v3, "sectionForObject:collationStringSelector:", v14, "regionName")}];
        [v15 addObject:v14];
      }

      v11 = [regionsList countByEnumeratingWithState:&v20 objects:v24 count:16];
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

  [(ISLocaleController *)selfCopy setSections:v6];
}

- (void)loadRegions
{
  regionsList = [(ISLocaleController *)self regionsList];

  if (!regionsList)
  {
    selfCopy = self;
    v4 = +[(ISInternationalViewController *)InternationalSettingsController];
    regionCode = [v4 regionCode];

    v6 = @"US";
    if (regionCode)
    {
      v6 = regionCode;
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
              [(ISLocaleController *)selfCopy setCurrentRegion:v18];
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [(ISLocaleController *)selfCopy setRegionsList:v8];
  }
}

- (void)loadView
{
  _mainContentView = [(ISLocaleController *)self _mainContentView];
  contentView = self->_contentView;
  self->_contentView = _mainContentView;

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
  bundleURL = [v5 bundleURL];
  v7 = [v3 initWithKey:@"GENERAL" table:@"InternationalSettings" locale:v4 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v10 bundleURL];
  v12 = [v8 initWithKey:@"INTERNATIONAL" table:@"InternationalSettings" locale:v9 bundleURL:bundleURL2];

  v13 = [_NSLocalizedStringResource alloc];
  v14 = +[NSLocale currentLocale];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL3 = [v15 bundleURL];
  v17 = [v13 initWithKey:@"SELECT_REGION" table:@"InternationalSettings" locale:v14 bundleURL:bundleURL3];

  v20[0] = v7;
  v20[1] = v12;
  v18 = [NSArray arrayWithObjects:v20 count:2];
  [(ISLocaleController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.language" title:v17 localizedNavigationComponents:v18 deepLink:v19];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_searchMode)
  {
    return 1;
  }

  sections = [(ISLocaleController *)self sections];
  v5 = [sections count];

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (self->_searchMode)
  {
    sections = [(ISLocaleController *)self filteredListContent:view];
    v5 = [sections count];
  }

  else
  {
    sections = [(ISLocaleController *)self sections];
    v7 = [sections objectAtIndex:section];
    v5 = [v7 count];
  }

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (self->_searchMode || (-[ISLocaleController sections](self, "sections", view), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectAtIndex:section], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, !v7))
  {
    v10 = 0;
  }

  else
  {
    v8 = +[UILocalizedIndexedCollation currentCollation];
    sectionTitles = [v8 sectionTitles];
    v10 = [sectionTitles objectAtIndex:section];
  }

  return v10;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  if (self->_searchMode)
  {
    sectionIndexTitles = 0;
  }

  else
  {
    v4 = +[UILocalizedIndexedCollation currentCollation];
    sectionIndexTitles = [v4 sectionIndexTitles];
  }

  return sectionIndexTitles;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"kCellIdentifier"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"kCellIdentifier"];
  }

  if (self->_searchMode)
  {
    filteredListContent = [(ISLocaleController *)self filteredListContent];
    v9 = [filteredListContent objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    filteredListContent = [(ISLocaleController *)self sections];
    v10 = [filteredListContent objectAtIndex:{objc_msgSend(pathCopy, "section")}];
    v9 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  currentRegion = [(ISLocaleController *)self currentRegion];

  if (v9 == currentRegion)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v7 setAccessoryType:v12];
  regionName = [v9 regionName];
  textLabel = [v7 textLabel];
  [textLabel setText:regionName];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (self->_searchMode)
  {
    filteredListContent = [(ISLocaleController *)self filteredListContent];
    v8 = [filteredListContent objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    filteredListContent = [(ISLocaleController *)self sections];
    v9 = [filteredListContent objectAtIndex:{objc_msgSend(pathCopy, "section")}];
    v8 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  v10 = +[(ISInternationalViewController *)InternationalSettingsController];
  regionCode = [v10 regionCode];
  regionCode2 = [v8 regionCode];
  v13 = [regionCode isEqualToString:regionCode2];

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
  indexPathForSelectedRow = [(UITableView *)tableView indexPathForSelectedRow];
  [(UITableView *)tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)reloadDataAndScrollToCheckedRegionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (!self->_searchMode)
  {
    [(UITableView *)self->_tableView reloadData];
    currentRegion = [(ISLocaleController *)self currentRegion];

    if (currentRegion)
    {
      sections = [(ISLocaleController *)self sections];
      v6 = [sections count];

      if (v6)
      {
        v7 = 0;
        do
        {
          sections2 = [(ISLocaleController *)self sections];
          v9 = [sections2 objectAtIndexedSubscript:v7];

          if ([v9 count])
          {
            v10 = 0;
            while (1)
            {
              v11 = [v9 objectAtIndexedSubscript:v10];
              regionCode = [v11 regionCode];
              currentRegion2 = [(ISLocaleController *)self currentRegion];
              regionCode2 = [currentRegion2 regionCode];
              v15 = [regionCode isEqualToString:regionCode2];

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
            [(UITableView *)tableView scrollToRowAtIndexPath:v17 atScrollPosition:1 animated:animatedCopy];
          }

LABEL_11:

          ++v7;
          sections3 = [(ISLocaleController *)self sections];
          v19 = [sections3 count];
        }

        while (v7 < v19);
      }
    }
  }
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  changeCopy = change;
  [(ISLocaleController *)self setFilteredListContent:0];
  searchQueue = [(ISLocaleController *)self searchQueue];
  [searchQueue cancelAllOperations];

  if ([changeCopy length])
  {
    self->_searchMode = 1;
    v9 = objc_alloc_init(NSBlockOperation);
    objc_initWeak(&location, v9);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_8154;
    v14 = &unk_35088;
    selfCopy = self;
    v16 = changeCopy;
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

- (id)filteredRegionsForRegionList:(id)list searchString:(id)string
{
  listCopy = list;
  stringCopy = string;
  v20 = +[NSMutableArray array];
  stringCopy = [NSPredicate predicateWithFormat:@"SELF beginswith[cld] %@", stringCopy];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = listCopy;
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
        regionName = [v10 regionName];
        if ([stringCopy evaluateWithObject:regionName])
        {
          [v20 addObject:v10];
        }

        else
        {
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 0;
          v12 = [regionName length];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_856C;
          v21[3] = &unk_350B0;
          v22 = stringCopy;
          v13 = v20;
          v23 = v13;
          v24 = v10;
          v25 = &v26;
          [regionName enumerateSubstringsInRange:0 options:v12 usingBlock:{3, v21}];
          if ((v27[3] & 1) == 0)
          {
            regionCode = [v10 regionCode];
            uppercaseString = [stringCopy uppercaseString];
            v16 = [regionCode hasPrefix:uppercaseString];

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

- (void)searchBarTextDidBeginEditing:(id)editing
{
  searchBar = [(ISLocaleController *)self searchBar];
  text = [searchBar text];
  v6 = [text length];

  if (!v6)
  {
    self->_searchMode = 0;
    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (void)cancelSearchAndDismiss
{
  searchController = [(ISLocaleController *)self searchController];
  [searchController setActive:0];

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