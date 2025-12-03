@interface BuddyLanguageController
- (BFFFlowItemDelegate)delegate;
- (BuddyLanguageController)init;
- (BuddyLanguageLocaleSelectionReceiver)selectionReceiver;
- (UITableView)languageTableView;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)internalMenuActions;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_didBecomeActive:(id)active;
- (void)_didResignActive:(id)active;
- (void)_selectLanguage:(id)language;
- (void)_updateLanguageList;
- (void)dealloc;
- (void)setLanguageComposite:(id)composite;
- (void)setShowLocalizedNames:(BOOL)names;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  v3.receiver = selfCopy;
  v3.super_class = BuddyLanguageController;
  [(BuddyLanguageController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyLanguageController;
  [(BuddyLanguageController *)&v5 viewDidLoad];
  v2 = selfCopy;
  languageTableView = [(BuddyLanguageController *)selfCopy languageTableView];
  [(BuddyLanguageController *)v2 setTableView:languageTableView];

  view = [(BuddyLanguageController *)selfCopy view];
  [view layoutIfNeeded];
}

- (void)setShowLocalizedNames:(BOOL)names
{
  self->_showLocalizedNames = names;
  tableView = [(BuddyLanguageController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = BuddyLanguageController;
  [(BuddyLanguageController *)&v2 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = BuddyLanguageController;
  [(BuddyLanguageController *)&v11 viewWillAppear:appear];
  if (([(BuddyLanguageController *)selfCopy isMovingToParentViewController]& 1) != 0)
  {
    languageComposite = [(BuddyLanguageController *)selfCopy languageComposite];
    languageCodes = [(BuddyLanguageComposite *)languageComposite languageCodes];
    languageCodes = selfCopy->_languageCodes;
    selfCopy->_languageCodes = languageCodes;

    languageComposite2 = [(BuddyLanguageController *)selfCopy languageComposite];
    languageStrings = [(BuddyLanguageComposite *)languageComposite2 languageStrings];
    languageStrings = selfCopy->_languageStrings;
    selfCopy->_languageStrings = languageStrings;

    tableView = [(BuddyLanguageController *)selfCopy tableView];
    [tableView reloadData];
  }

  view = [(BuddyLanguageController *)selfCopy view];
  [view layoutIfNeeded];
}

- (void)_didBecomeActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  [(BuddyLanguageController *)selfCopy setHasBeenShown:1];
  navigationController = [(BuddyLanguageController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  v5 = selfCopy;

  if (topViewController == v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [(NSUserDefaults *)v6 objectForKey:@"LockdownSetLanguage"];
    v8 = v7 != 0;

    v15 = v8;
    if (v8 && ![(BuddyLanguageController *)selfCopy ignoreForceLanguagePushes])
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
      delegate = [(BuddyLanguageController *)selfCopy delegate];
      [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_didResignActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  navigationController = [(BuddyLanguageController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  v5 = selfCopy;

  if (topViewController == v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [(NSUserDefaults *)v6 objectForKey:@"LockdownSetLanguage"];
    v8 = v7 != 0;

    if (v8)
    {
      [(BuddyLanguageController *)selfCopy setIgnoreForceLanguagePushes:1];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_selectLanguage:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  v20 = location[0];
  buddyPreferencesExcludedFromBackup = [(BuddyLanguageController *)selfCopy buddyPreferencesExcludedFromBackup];
  v19 = [(BYPreferencesController *)buddyPreferencesExcludedFromBackup objectForKey:@"UserLastSelectedLocale"];

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
    guessedCountries = [v4 guessedCountries];
    firstObject = [guessedCountries firstObject];
    v7 = v19;
    v19 = firstObject;

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
  navigationItem = [(BuddyLanguageController *)selfCopy navigationItem];
  [navigationItem setBackButtonTitle:v11];

  navigationItem2 = [(BuddyLanguageController *)selfCopy navigationItem];
  [navigationItem2 setBackButtonDisplayMode:2];

  selectionReceiver = [(BuddyLanguageController *)selfCopy selectionReceiver];
  [(BuddyLanguageLocaleSelectionReceiver *)selectionReceiver userSelectedLanguage:v20];

  delegate = [(BuddyLanguageController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateLanguageList
{
  v2 = [(BuddyLanguageController *)self tableView:a2];
  [v2 reloadData];
}

- (void)setLanguageComposite:(id)composite
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, composite);
  if ([(BuddyLanguageController *)selfCopy hasBeenShown]&& [(NSArray *)selfCopy->_languageCodes count])
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
    objc_storeStrong(&selfCopy->_languageComposite, location[0]);
    languageCodes = [location[0] languageCodes];
    languageCodes = selfCopy->_languageCodes;
    selfCopy->_languageCodes = languageCodes;

    languageStrings = [location[0] languageStrings];
    languageStrings = selfCopy->_languageStrings;
    selfCopy->_languageStrings = languageStrings;

    [(BuddyLanguageController *)selfCopy _updateLanguageList];
  }

  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  languageCodes = [(BuddyLanguageController *)selfCopy languageCodes];
  v6 = [(NSArray *)languageCodes count];

  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v25 = 0;
  objc_storeStrong(&v25, path);
  v24 = [location[0] dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v25];
  [v24 setAccessoryType:1];
  [v24 setMinimumHeight:60.0];
  v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v23 pointSize];
  v5 = [UIFont boldSystemFontOfSize:?];
  titleLabel = [v24 titleLabel];
  [titleLabel setFont:v5];

  languageCodes = [(BuddyLanguageController *)selfCopy languageCodes];
  v22 = -[NSArray objectAtIndex:](languageCodes, "objectAtIndex:", [v25 row]);

  languageStrings = [(BuddyLanguageController *)selfCopy languageStrings];
  obj = [(NSDictionary *)languageStrings objectForKey:v22];

  v20 = sub_1001961E0(obj, v22);
  if ([(BuddyLanguageController *)selfCopy showLocalizedNames])
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
  titleLabel2 = [v24 titleLabel];
  [titleLabel2 setAttributedText:v13];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  [location[0] deselectRowAtIndexPath:v8 animated:1];
  languageCodes = [(BuddyLanguageController *)selfCopy languageCodes];
  v7 = -[NSArray objectAtIndexedSubscript:](languageCodes, "objectAtIndexedSubscript:", [v8 row]);

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v7);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Tapped language %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyLanguageController *)selfCopy _selectLanguage:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0.0;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0.0;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)internalMenuActions
{
  selfCopy = self;
  v16[1] = a2;
  if ([(BuddyLanguageController *)self showLocalizedNames])
  {
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000D5874;
    v15 = &unk_10032B598;
    v16[0] = selfCopy;
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
    v10 = selfCopy;
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