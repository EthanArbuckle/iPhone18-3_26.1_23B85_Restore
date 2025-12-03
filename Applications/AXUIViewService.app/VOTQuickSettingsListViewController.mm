@interface VOTQuickSettingsListViewController
- (BOOL)_isFiltering;
- (BOOL)_isSearchBarEmpty;
- (NSArray)allSpecifiers;
- (VOTQuickSettingsListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_specifierForItem:(id)item;
- (id)specifierValue:(id)value;
- (id)specifiers;
- (void)_filterContentForSearchText:(id)text;
- (void)dealloc;
- (void)setSpecifierValue:(id)value specifier:(id)specifier;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation VOTQuickSettingsListViewController

- (VOTQuickSettingsListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v16.receiver = self;
  v16.super_class = VOTQuickSettingsListViewController;
  v4 = [(VOTQuickSettingsListViewController *)&v16 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_mode = 0;
    v6 = [[UISearchController alloc] initWithSearchResultsController:0];
    [(VOTQuickSettingsListViewController *)v5 setSearchController:v6];

    searchController = [(VOTQuickSettingsListViewController *)v5 searchController];
    [searchController setSearchResultsUpdater:v5];

    searchController2 = [(VOTQuickSettingsListViewController *)v5 searchController];
    [searchController2 setObscuresBackgroundDuringPresentation:0];

    searchController3 = [(VOTQuickSettingsListViewController *)v5 searchController];
    [searchController3 setHidesNavigationBarDuringPresentation:0];

    v10 = sub_10000CCD4(@"VoiceOverQuickSettings.filter.placeholder");
    searchController4 = [(VOTQuickSettingsListViewController *)v5 searchController];
    searchBar = [searchController4 searchBar];
    [searchBar setPlaceholder:v10];

    searchController5 = [(VOTQuickSettingsListViewController *)v5 searchController];
    navigationItem = [(VOTQuickSettingsListViewController *)v5 navigationItem];
    [navigationItem setSearchController:searchController5];

    [(VOTQuickSettingsListViewController *)v5 setDefinesPresentationContext:1];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  settingsItemUpdateObserverToken = [(VOTQuickSettingsListViewController *)self settingsItemUpdateObserverToken];
  [v3 removeObserver:settingsItemUpdateObserverToken];

  v5.receiver = self;
  v5.super_class = VOTQuickSettingsListViewController;
  [(VOTQuickSettingsListViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = VOTQuickSettingsListViewController;
  [(VOTQuickSettingsListViewController *)&v17 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = +[NSOperationQueue mainQueue];
  v6 = VOSDidUpdateValueForSettingsItemNotification;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000051D0;
  v14[3] = &unk_100028848;
  objc_copyWeak(&v15, &location);
  v7 = [v3 addObserverForName:v6 object:v4 queue:v5 usingBlock:v14];
  [(VOTQuickSettingsListViewController *)self setSettingsItemUpdateObserverToken:v7];

  v8 = +[AXSettings sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005210;
  v12[3] = &unk_100028870;
  objc_copyWeak(&v13, &location);
  [v8 registerUpdateBlock:v12 forRetrieveSelector:"voiceOverSelectedLanguage" withListener:self];

  objc_destroyWeak(&v13);
  v9 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005250;
  v10[3] = &unk_100028870;
  objc_copyWeak(&v11, &location);
  [v9 registerUpdateBlock:v10 forRetrieveSelector:"voiceOverMediaDuckingMode" withListener:self];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    filteredSpecifiers = [(VOTQuickSettingsListViewController *)self filteredSpecifiers];

    if (filteredSpecifiers)
    {
      [(VOTQuickSettingsListViewController *)self filteredSpecifiers];
    }

    else
    {
      [(VOTQuickSettingsListViewController *)self allSpecifiers];
    }
    v5 = ;
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;
  }

  v7 = *&self->PSListController_opaque[v3];

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  [(VOTQuickSettingsListViewController *)self _filterContentForSearchText:text];
}

- (NSArray)allSpecifiers
{
  allSpecifiers = self->_allSpecifiers;
  if (!allSpecifiers)
  {
    v28 = +[NSMutableArray array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v4 = +[VOSSettingsHelper sharedInstance];
    userSettingsItems = [v4 userSettingsItems];

    obj = userSettingsItems;
    v6 = [userSettingsItems countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = v6;
    v8 = *v31;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"Included"];
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          v13 = [v10 objectForKeyedSubscript:@"Item"];
          v14 = +[VOSSettingsItem ScreenRecognition];
          v15 = v14;
          if (v13 != v14)
          {

            goto LABEL_11;
          }

          data = [(VOTQuickSettingsListViewController *)self data];
          frontmostAppIdentifier = [data frontmostAppIdentifier];
          v18 = VOSProcessAllowsScreenRecognition();

          if (v18)
          {
LABEL_11:
            v19 = +[VOSSettingsItem Activities];
            v20 = v19;
            if (v13 != v19)
            {

              goto LABEL_14;
            }

            v21 = +[AXSettings sharedInstance];
            voiceOverActivities = [v21 voiceOverActivities];
            v23 = [voiceOverActivities count];

            if (v23)
            {
LABEL_14:
              data2 = [(VOTQuickSettingsListViewController *)self data];
              [v13 setSettingsData:data2];

              v25 = [(VOTQuickSettingsListViewController *)self _specifierForItem:v13];
              [(NSArray *)v28 addObject:v25];
            }
          }

          continue;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v7)
      {
LABEL_18:

        v26 = self->_allSpecifiers;
        self->_allSpecifiers = v28;

        allSpecifiers = self->_allSpecifiers;
        break;
      }
    }
  }

  return allSpecifiers;
}

- (BOOL)_isSearchBarEmpty
{
  searchController = [(VOTQuickSettingsListViewController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  v5 = [text length] == 0;

  return v5;
}

- (BOOL)_isFiltering
{
  searchController = [(VOTQuickSettingsListViewController *)self searchController];
  if ([searchController isActive])
  {
    v4 = ![(VOTQuickSettingsListViewController *)self _isSearchBarEmpty];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_filterContentForSearchText:(id)text
{
  textCopy = text;
  speakFilteredItemSummaryTimer = [(VOTQuickSettingsListViewController *)self speakFilteredItemSummaryTimer];
  [speakFilteredItemSummaryTimer invalidate];

  if ([(VOTQuickSettingsListViewController *)self _isFiltering])
  {
    v14 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(VOTQuickSettingsListViewController *)self allSpecifiers];
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [v8 propertyForKey:@"VOSSettingsItem"];
          v10 = +[VOSSettingsHelper sharedInstance];
          v11 = [v10 nameForItem:v9];
          v12 = [v11 containsString:textCopy];

          if (v12)
          {
            [v14 addObject:v8];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v5);
    }

    [(VOTQuickSettingsListViewController *)self setFilteredSpecifiers:v14];
  }

  else
  {
    [(VOTQuickSettingsListViewController *)self setFilteredSpecifiers:0];
  }

  [(VOTQuickSettingsListViewController *)self reloadSpecifiers];
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000059A4;
  v17[3] = &unk_100028898;
  objc_copyWeak(&v18, &location);
  v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v17 block:1.5];
  [(VOTQuickSettingsListViewController *)self setSpeakFilteredItemSummaryTimer:v13];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)_specifierForItem:(id)item
{
  itemCopy = item;
  itemType = [itemCopy itemType];
  if (itemType == 2 || itemType == 1)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
  }

  else
  {
    if (!itemType)
    {
      v6 = objc_opt_class();
      v7 = 0;
      v8 = 6;
      goto LABEL_10;
    }

    v9 = VOTLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unknown VOSSettingItem type", buf, 2u);
    }

    v7 = 0;
    v6 = 0;
  }

  v8 = 2;
LABEL_10:
  v10 = +[VOSSettingsHelper sharedInstance];
  v11 = [v10 nameForItem:itemCopy];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setSpecifierValue:specifier:" get:"specifierValue:" detail:v7 cell:v8 edit:0];

  [v12 setProperty:itemCopy forKey:@"VOSSettingsItem"];
  [v12 setProperty:v6 forKey:PSCellClassKey];

  return v12;
}

- (id)specifierValue:(id)value
{
  v3 = [value propertyForKey:@"VOSSettingsItem"];
  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [v4 valueForSettingsItem:v3];

  v6 = +[VOSSettingsHelper sharedInstance];
  v7 = [v6 formattedValue:v5 withItem:v3];

  return v7;
}

- (void)setSpecifierValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v7 = [specifier propertyForKey:@"VOSSettingsItem"];
  v6 = +[VOSSettingsHelper sharedInstance];
  [v6 setValue:valueCopy forSettingsItem:v7];
}

@end