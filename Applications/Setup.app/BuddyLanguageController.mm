@interface BuddyLanguageController
- (BFFFlowItemDelegate)delegate;
- (BuddyLanguageController)init;
- (BuddyLanguageLocaleSelectionReceiver)selectionReceiver;
- (UITableView)languageTableView;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)internalMenuActions;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_didBecomeActive:(id)a3;
- (void)_didResignActive:(id)a3;
- (void)_selectLanguage:(id)a3;
- (void)_updateLanguageList;
- (void)dealloc;
- (void)setLanguageComposite:(id)a3;
- (void)setShowLocalizedNames:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyLanguageController

- (BuddyLanguageController)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyLanguageController;
  location = [(BuddyLanguageController *)&v6 initWithTitle:&stru_10032F900 detailText:&stru_10032F900 symbolName:@"globe" adoptTableViewScrollView:1];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v2 addObserver:location selector:"_didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 addObserver:location selector:"_didResignActive:" name:UIApplicationWillResignActiveNotification object:0];
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (UITableView)languageTableView
{
  if (!self->_languageTableView)
  {
    v2 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    languageTableView = self->_languageTableView;
    self->_languageTableView = v2;

    [(UITableView *)self->_languageTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
    v4 = sub_1000D4334();
    [(UITableView *)self->_languageTableView setDirectionalLayoutMargins:v4, v5, v6, v7, *&v4, *&v5, *&v6, *&v7, *&v4, *&v5, *&v6, *&v7, a2];
    [(UITableView *)self->_languageTableView setDelegate:self];
    [(UITableView *)self->_languageTableView setDataSource:self];
    [(UITableView *)self->_languageTableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_languageTableView _setDrawsSeparatorAtTopOfSections:1];
    [(UITableView *)self->_languageTableView setEstimatedRowHeight:60.0];
  }

  v8 = self->_languageTableView;

  return v8;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BuddyLanguageController;
  [(BuddyLanguageController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyLanguageController;
  [(BuddyLanguageController *)&v5 viewDidLoad];
  v2 = v7;
  v3 = [(BuddyLanguageController *)v7 languageTableView];
  [(BuddyLanguageController *)v2 setTableView:v3];

  v4 = [(BuddyLanguageController *)v7 view];
  [v4 layoutIfNeeded];
}

- (void)setShowLocalizedNames:(BOOL)a3
{
  self->_showLocalizedNames = a3;
  v3 = [(BuddyLanguageController *)self tableView];
  [v3 reloadData];
}

- (void)viewDidLayoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = BuddyLanguageController;
  [(BuddyLanguageController *)&v2 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = BuddyLanguageController;
  [(BuddyLanguageController *)&v11 viewWillAppear:a3];
  if (([(BuddyLanguageController *)v14 isMovingToParentViewController]& 1) != 0)
  {
    v3 = [(BuddyLanguageController *)v14 languageComposite];
    v4 = [(BuddyLanguageComposite *)v3 languageCodes];
    languageCodes = v14->_languageCodes;
    v14->_languageCodes = v4;

    v6 = [(BuddyLanguageController *)v14 languageComposite];
    v7 = [(BuddyLanguageComposite *)v6 languageStrings];
    languageStrings = v14->_languageStrings;
    v14->_languageStrings = v7;

    v9 = [(BuddyLanguageController *)v14 tableView];
    [v9 reloadData];
  }

  v10 = [(BuddyLanguageController *)v14 view];
  [v10 layoutIfNeeded];
}

- (void)_didBecomeActive:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyLanguageController *)v18 setHasBeenShown:1];
  v3 = [(BuddyLanguageController *)v18 navigationController];
  v4 = [v3 topViewController];
  v5 = v18;

  if (v4 == v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [(NSUserDefaults *)v6 objectForKey:@"LockdownSetLanguage"];
    v8 = v7 != 0;

    v15 = v8;
    if (v8 && ![(BuddyLanguageController *)v18 ignoreForceLanguagePushes])
    {
      oslog = _BYLoggingFacility();
      v13 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = oslog;
        v10 = v13;
        sub_10006AA68(v12);
        _os_log_impl(&_mh_execute_header, v9, v10, "Language override on first unlock; skipping language pane...", v12, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v11 = [(BuddyLanguageController *)v18 delegate];
      [(BFFFlowItemDelegate *)v11 flowItemDone:v18];
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_didResignActive:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyLanguageController *)v10 navigationController];
  v4 = [v3 topViewController];
  v5 = v10;

  if (v4 == v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [(NSUserDefaults *)v6 objectForKey:@"LockdownSetLanguage"];
    v8 = v7 != 0;

    if (v8)
    {
      [(BuddyLanguageController *)v10 setIgnoreForceLanguagePushes:1];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_selectLanguage:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = location[0];
  v3 = [(BuddyLanguageController *)v22 buddyPreferencesExcludedFromBackup];
  v19 = [(BYPreferencesController *)v3 objectForKey:@"UserLastSelectedLocale"];

  if (v19 && [v19 length])
  {
    oslog = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100078180(buf, location[0], v19);
      _os_log_impl(&_mh_execute_header, oslog, v17, "Did select language %@ with selected region %@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v4 = +[BYLocationController sharedBuddyLocationController];
    v5 = [v4 guessedCountries];
    v6 = [v5 firstObject];
    v7 = v19;
    v19 = v6;

    v16 = _BYLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_100078180(v23, location[0], v19);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did select language %@ with guessed region %@", v23, 0x16u);
    }

    objc_storeStrong(&v16, 0);
  }

  if (v19 && [v19 length])
  {
    v8 = [IntlUtility languageIdentifierFromIdentifier:location[0] withRegion:v19];
    v9 = v20;
    v20 = v8;

    [NSLocale setLocaleAfterLanguageChange:v20];
  }

  v10 = +[NSBundle mainBundle];
  v11 = [(NSBundle *)v10 localizedStringForKey:@"SELECT_YOUR_LANGUAGE" value:&stru_10032F900 table:@"Localizable"];
  v12 = [(BuddyLanguageController *)v22 navigationItem];
  [v12 setBackButtonTitle:v11];

  v13 = [(BuddyLanguageController *)v22 navigationItem];
  [v13 setBackButtonDisplayMode:2];

  v14 = [(BuddyLanguageController *)v22 selectionReceiver];
  [(BuddyLanguageLocaleSelectionReceiver *)v14 userSelectedLanguage:v20];

  v15 = [(BuddyLanguageController *)v22 delegate];
  [(BFFFlowItemDelegate *)v15 flowItemDone:v22];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateLanguageList
{
  v2 = [(BuddyLanguageController *)self tableView:a2];
  [v2 reloadData];
}

- (void)setLanguageComposite:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(BuddyLanguageController *)v13 hasBeenShown]&& [(NSArray *)v13->_languageCodes count])
  {
    oslog = _BYLoggingFacility();
    v10 = 2;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v10;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "Language pane was presented; not updating language list...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    objc_storeStrong(&v13->_languageComposite, location[0]);
    v5 = [location[0] languageCodes];
    languageCodes = v13->_languageCodes;
    v13->_languageCodes = v5;

    v7 = [location[0] languageStrings];
    languageStrings = v13->_languageStrings;
    v13->_languageStrings = v7;

    [(BuddyLanguageController *)v13 _updateLanguageList];
  }

  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(BuddyLanguageController *)v9 languageCodes];
  v6 = [(NSArray *)v5 count];

  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = [location[0] dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v25];
  [v24 setAccessoryType:1];
  [v24 setMinimumHeight:60.0];
  v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v23 pointSize];
  v5 = [UIFont boldSystemFontOfSize:?];
  v6 = [v24 titleLabel];
  [v6 setFont:v5];

  v7 = [(BuddyLanguageController *)v27 languageCodes];
  v22 = -[NSArray objectAtIndex:](v7, "objectAtIndex:", [v25 row]);

  v8 = [(BuddyLanguageController *)v27 languageStrings];
  obj = [(NSDictionary *)v8 objectForKey:v22];

  v20 = sub_1001961E0(obj, v22);
  if ([(BuddyLanguageController *)v27 showLocalizedNames])
  {
    v9 = +[NSLocale currentLocale];
    v19 = [(NSLocale *)v9 localizedStringForLanguage:v22 context:4];

    v18 = [NSString localizedStringWithFormat:@" (%@ - %@)", v22, v19];
    v17 = [v20 mutableCopy];
    v10 = [[NSAttributedString alloc] initWithString:v18];
    [v17 appendAttributedString:v10];

    v11 = [v17 copy];
    v12 = v20;
    v20 = v11;

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  v13 = v20;
  v14 = [v24 titleLabel];
  [v14 setAttributedText:v13];

  v15 = v24;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  [location[0] deselectRowAtIndexPath:v8 animated:1];
  v5 = [(BuddyLanguageController *)v10 languageCodes];
  v7 = -[NSArray objectAtIndexedSubscript:](v5, "objectAtIndexedSubscript:", [v8 row]);

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v7);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Tapped language %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyLanguageController *)v10 _selectLanguage:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0.0;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0.0;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)internalMenuActions
{
  v17 = self;
  v16[1] = a2;
  if ([(BuddyLanguageController *)self showLocalizedNames])
  {
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000D5874;
    v15 = &unk_10032B598;
    v16[0] = v17;
    v2 = [UIAlertAction actionWithTitle:@"Hide Translated Languages/Countries" style:0 handler:&v11];
    v20 = v2;
    v18 = [NSArray arrayWithObjects:&v20 count:1];

    objc_storeStrong(v16, 0);
  }

  else
  {
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1000D58C8;
    v9 = &unk_10032B598;
    v10 = v17;
    v3 = [UIAlertAction actionWithTitle:@"Show Translated Languages/Countries" style:0 handler:&v6];
    v19 = v3;
    v18 = [NSArray arrayWithObjects:&v19 count:1, v6, v7, v8, v9];

    objc_storeStrong(&v10, 0);
  }

  v4 = v18;

  return v4;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BuddyLanguageLocaleSelectionReceiver)selectionReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionReceiver);

  return WeakRetained;
}

@end