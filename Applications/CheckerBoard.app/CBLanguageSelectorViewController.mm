@interface CBLanguageSelectorViewController
- (CBLanguageSelectorViewController)init;
- (UITableView)languageTableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_didBecomeActive:(id)active;
- (void)_didResignActive:(id)active;
- (void)_hideActivityView;
- (void)_refreshLanguageStrings;
- (void)_selectLanguage:(id)language;
- (void)_showActivityView;
- (void)dealloc;
- (void)setLanguageComposite:(id)composite;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CBLanguageSelectorViewController

- (CBLanguageSelectorViewController)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"LANGUAGE_SELECTION" value:&stru_10007EAB0 table:0];
  v10.receiver = self;
  v10.super_class = CBLanguageSelectorViewController;
  v5 = [(CBLanguageSelectorViewController *)&v10 initWithTitle:v4 detailText:&stru_10007EAB0 icon:0 adoptTableViewScrollView:1];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"_didResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_languageSelectorScanComplete:" name:@"CBLanguageCompositeWifiScanComplete" object:0];
  }

  return v5;
}

- (UITableView)languageTableView
{
  languageTableView = self->_languageTableView;
  if (!languageTableView)
  {
    v4 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_languageTableView;
    self->_languageTableView = v4;

    [(UITableView *)self->_languageTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
    [(UITableView *)self->_languageTableView setDirectionalLayoutMargins:1.0, 1.0, 1.0, 1.0];
    [(UITableView *)self->_languageTableView setDelegate:self];
    [(UITableView *)self->_languageTableView setDataSource:self];
    [(UITableView *)self->_languageTableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_languageTableView _setDrawsSeparatorAtTopOfSections:1];
    [(UITableView *)self->_languageTableView setEstimatedRowHeight:60.0];
    v6 = +[UIColor clearColor];
    [(UITableView *)self->_languageTableView setBackgroundColor:v6];

    languageTableView = self->_languageTableView;
  }

  return languageTableView;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CBLanguageSelectorViewController;
  [(CBLanguageSelectorViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CBLanguageSelectorViewController;
  [(CBLanguageSelectorViewController *)&v7 viewDidLoad];
  [(CBLanguageSelectorViewController *)self setModalPresentationStyle:2];
  languageTableView = [(CBLanguageSelectorViewController *)self languageTableView];
  [(CBLanguageSelectorViewController *)self setTableView:languageTableView];

  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(CBLanguageSelectorViewController *)self setActivityView:v4];

  v5 = [(CBLanguageSelectorViewController *)self animationController:@"Language"];
  [(CBLanguageSelectorViewController *)self setAnimationController:v5];

  view = [(CBLanguageSelectorViewController *)self view];
  [view layoutIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CBLanguageSelectorViewController;
  [(CBLanguageSelectorViewController *)&v2 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CBLanguageSelectorViewController;
  [(CBLanguageSelectorViewController *)&v7 viewWillAppear:appear];
  v4 = +[UIColor whiteColor];
  view = [(CBLanguageSelectorViewController *)self view];
  [view setBackgroundColor:v4];

  if ([(CBLanguageSelectorViewController *)self isMovingToParentViewController])
  {
    [(CBLanguageSelectorViewController *)self _refreshLanguageStrings];
  }

  view2 = [(CBLanguageSelectorViewController *)self view];
  [view2 layoutIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CBLanguageSelectorViewController;
  [(CBLanguageSelectorViewController *)&v5 viewDidAppear:appear];
  animationController = [(CBLanguageSelectorViewController *)self animationController];
  [animationController startAnimation];
}

- (void)_didBecomeActive:(id)active
{
  [(CBLanguageSelectorViewController *)self setHasBeenShown:1];
  navigationController = [(CBLanguageSelectorViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    animationController = [(CBLanguageSelectorViewController *)self animationController];
    [animationController startAnimation];
  }
}

- (void)_didResignActive:(id)active
{
  navigationController = [(CBLanguageSelectorViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    v6 = [(CBLanguageSelectorViewController *)self animationController:@"Language"];
    [(CBLanguageSelectorViewController *)self setAnimationController:v6];
  }
}

- (void)_refreshLanguageStrings
{
  languageComposite = [(CBLanguageSelectorViewController *)self languageComposite];
  languageCodes = [languageComposite languageCodes];
  languageCodes = self->_languageCodes;
  self->_languageCodes = languageCodes;

  languageComposite2 = [(CBLanguageSelectorViewController *)self languageComposite];
  languageStrings = [languageComposite2 languageStrings];
  languageStrings = self->_languageStrings;
  self->_languageStrings = languageStrings;

  languageComposite3 = [(CBLanguageSelectorViewController *)self languageComposite];
  locales = [languageComposite3 locales];
  locales = self->_locales;
  self->_locales = locales;

  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000375D4;
  v12[3] = &unk_10007D668;
  objc_copyWeak(&v13, &location);
  dispatch_async(&_dispatch_main_q, v12);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_selectLanguage:(id)language
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003771C;
  v5[3] = &unk_10007D540;
  languageCopy = language;
  v4 = languageCopy;
  [(CBLanguageSelectorViewController *)self dismissViewControllerAnimated:1 completion:v5];
}

- (void)_showActivityView
{
  view = [(CBLanguageSelectorViewController *)self view];
  activityView = [(CBLanguageSelectorViewController *)self activityView];
  [view addSubview:activityView];

  activityView2 = [(CBLanguageSelectorViewController *)self activityView];
  [activityView2 startAnimating];

  activityView3 = [(CBLanguageSelectorViewController *)self activityView];
  [activityView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  activityView4 = [(CBLanguageSelectorViewController *)self activityView];
  topAnchor = [activityView4 topAnchor];
  headerView = [(CBLanguageSelectorViewController *)self headerView];
  bottomAnchor = [headerView bottomAnchor];
  v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:64.0];
  v18[0] = v10;
  activityView5 = [(CBLanguageSelectorViewController *)self activityView];
  centerXAnchor = [activityView5 centerXAnchor];
  view2 = [(CBLanguageSelectorViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  v18[1] = v15;
  v16 = [NSArray arrayWithObjects:v18 count:2];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)_hideActivityView
{
  activityView = [(CBLanguageSelectorViewController *)self activityView];
  [activityView stopAnimating];

  activityView2 = [(CBLanguageSelectorViewController *)self activityView];
  [activityView2 removeFromSuperview];
}

- (void)setLanguageComposite:(id)composite
{
  compositeCopy = composite;
  if ([(CBLanguageSelectorViewController *)self hasBeenShown]&& [(NSArray *)self->_languageCodes count])
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Language pane was presented; not updating language list...", v10, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_languageComposite, composite);
    v7 = +[NSLocale currentLocale];
    localeIdentifier = [v7 localeIdentifier];
    currentLocaleCode = self->_currentLocaleCode;
    self->_currentLocaleCode = localeIdentifier;

    [(CBLanguageSelectorViewController *)self _refreshLanguageStrings];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CBLanguageSelectorViewController *)self languageCodes:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
  [v7 setMinimumHeight:60.0];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v8 pointSize];
  v9 = [UIFont boldSystemFontOfSize:?];
  titleLabel = [v7 titleLabel];
  [titleLabel setFont:v9];

  languageCodes = [(CBLanguageSelectorViewController *)self languageCodes];
  v12 = [pathCopy row];

  v13 = [languageCodes objectAtIndex:v12];

  languageStrings = [(CBLanguageSelectorViewController *)self languageStrings];
  v15 = [languageStrings objectForKey:v13];

  v16 = sub_100037D88(v15, v13);
  locales = [(CBLanguageSelectorViewController *)self locales];
  v18 = [locales objectForKey:v13];

  v19 = +[NSLocale currentLocale];
  languageCode = [v19 languageCode];
  languageCode2 = [v18 languageCode];
  v22 = [languageCode isEqualToString:languageCode2];

  if (v22)
  {
    scriptCode = [v19 scriptCode];

    if (scriptCode)
    {
      scriptCode2 = [v18 scriptCode];

      if (scriptCode2)
      {
        scriptCode3 = [v19 scriptCode];
        scriptCode4 = [v18 scriptCode];
        v27 = [scriptCode3 isEqualToString:scriptCode4];

        if (v27)
        {
          scriptCode2 = 3;
        }

        else
        {
          scriptCode2 = 0;
        }
      }
    }

    else
    {
      scriptCode2 = 3;
    }
  }

  else
  {
    scriptCode2 = 0;
  }

  titleLabel2 = [v7 titleLabel];
  [titleLabel2 setAttributedText:v16];

  [v7 setAccessoryType:scriptCode2];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  languageCodes = [(CBLanguageSelectorViewController *)self languageCodes];
  v8 = [pathCopy row];

  v9 = [languageCodes objectAtIndexedSubscript:v8];

  v10 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Tapped language %@", &v11, 0xCu);
  }

  [(CBLanguageSelectorViewController *)self _selectLanguage:v9];
}

@end