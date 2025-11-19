@interface CarSmallWidgetBrowsingModeController
- (CarSmallWidgetBrowsingModeController)init;
- (ChromeViewController)chromeViewController;
- (void)_addNoContentView;
- (void)_addSearchCategoriesView;
- (void)_addShortcutsView;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_clearFocusableItems;
- (void)_updateWidgetContents;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)dealloc;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setBrowsingState:(int64_t)a3;
- (void)setSearchCategories:(id)a3;
- (void)shortcutsProviderUpdated:(id)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarSmallWidgetBrowsingModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_applicationDidEnterBackground:(id)a3
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    [v5 unregisterObserver:self];
  }

  else
  {
    shortcutsProvider = self->_shortcutsProvider;

    [(CarShortcutsProvider *)shortcutsProvider stop];
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    [v5 registerObserver:self];
  }

  else
  {
    shortcutsProvider = self->_shortcutsProvider;

    [(CarShortcutsProvider *)shortcutsProvider start];
  }
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v4 = sub_100799D40();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received an update through homeDataProvidingObjectDidUpdate:", v5, 2u);
  }

  [(CarSmallWidgetBrowsingModeController *)self _updateWidgetContents];
}

- (void)shortcutsProviderUpdated:(id)a3
{
  v4 = sub_100799D40();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received an update through shortcutsProviderUpdated:", v5, 2u);
  }

  [(CarSmallWidgetBrowsingModeController *)self _updateWidgetContents];
}

- (void)_clearFocusableItems
{
  v3 = [(CarSmallWidgetBrowsingModeController *)self view];
  v4 = [v3 window];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CarSmallWidgetBrowsingModeController *)self view];
    v7 = [v6 window];

    [v7 _maps_safeSetFocusableViews:&__NSArray0__struct];
  }
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a3;
  [(CarSmallWidgetBrowsingModeController *)self _clearFocusableItems];
  v6 = [v5 nextTopContext];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if ((v5 & 1) == 0)
  {
    v8 = +[CarDisplayController sharedInstance];
    v7 = [v8 routeGeniusManager];
    [v7 deactivateForAllChromes];
  }
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CarSmallWidgetBrowsingModeController *)self _updateWidgetContents];
  objc_initWeak(&location, self);
  browseManager = self->_browseManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C19D3C;
  v9[3] = &unk_10165F290;
  objc_copyWeak(&v10, &location);
  [(BrowseManager *)browseManager getCategoriesWithCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarSmallWidgetBrowsingModeController;
  [(CarSmallWidgetBrowsingModeController *)&v4 viewWillDisappear:a3];
  [(CarSmallWidgetBrowsingModeController *)self _clearFocusableItems];
}

- (void)_addNoContentView
{
  if (!self->_noContentView)
  {
    v3 = [[CarSmallWidgetNoContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    noContentView = self->_noContentView;
    self->_noContentView = v3;

    [(CarSmallWidgetNoContentView *)self->_noContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v5 = [(CarSmallWidgetBrowsingModeController *)self view];
  [v5 addSubview:self->_noContentView];

  v6 = self->_noContentView;
  v11 = [(CarSmallWidgetBrowsingModeController *)self view];
  v7 = [v11 safeAreaLayoutGuide];
  LODWORD(v8) = 1148846080;
  v9 = [(CarSmallWidgetNoContentView *)v6 _maps_constraintsEqualToEdgesOfLayoutGuide:v7 insets:UIEdgeInsetsZero.top priority:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v8];
  v10 = [v9 allConstraints];
  [NSLayoutConstraint activateConstraints:v10];
}

- (void)_addSearchCategoriesView
{
  if (!self->_searchCategoriesView)
  {
    v3 = [(CarSmallWidgetCollectionView *)[CarSmallWidgetSearchCategoriesView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    searchCategoriesView = self->_searchCategoriesView;
    self->_searchCategoriesView = v3;

    [(CarSmallWidgetSearchCategoriesView *)self->_searchCategoriesView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v5 = [(CarSmallWidgetBrowsingModeController *)self view];
  [v5 addSubview:self->_searchCategoriesView];

  v6 = self->_searchCategoriesView;
  v11 = [(CarSmallWidgetBrowsingModeController *)self view];
  v7 = [v11 safeAreaLayoutGuide];
  LODWORD(v8) = 1148846080;
  v9 = [(CarSmallWidgetSearchCategoriesView *)v6 _maps_constraintsEqualToEdgesOfLayoutGuide:v7 insets:UIEdgeInsetsZero.top priority:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v8];
  v10 = [v9 allConstraints];
  [NSLayoutConstraint activateConstraints:v10];
}

- (void)_addShortcutsView
{
  if (!self->_shortcutsView)
  {
    v3 = [[CarSmallWidgetShortcutsView alloc] initWithShortcutsProvider:self->_shortcutsProvider];
    shortcutsView = self->_shortcutsView;
    self->_shortcutsView = v3;

    [(CarSmallWidgetShortcutsView *)self->_shortcutsView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v5 = [(CarSmallWidgetBrowsingModeController *)self view];
  [v5 addSubview:self->_shortcutsView];

  v6 = self->_shortcutsView;
  v11 = [(CarSmallWidgetBrowsingModeController *)self view];
  v7 = [v11 safeAreaLayoutGuide];
  LODWORD(v8) = 1148846080;
  v9 = [(CarSmallWidgetShortcutsView *)v6 _maps_constraintsEqualToEdgesOfLayoutGuide:v7 insets:UIEdgeInsetsZero.top priority:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v8];
  v10 = [v9 allConstraints];
  [NSLayoutConstraint activateConstraints:v10];
}

- (void)setSearchCategories:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_searchCategories isEqualToArray:?])
  {
    objc_storeStrong(&self->_searchCategories, a3);
    [(CarSmallWidgetBrowsingModeController *)self _updateWidgetContents];
  }
}

- (void)setBrowsingState:(int64_t)a3
{
  if (self->_browsingState != a3)
  {
    v5 = sub_100799D40();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = self->_browsingState - 1;
      if (v6 > 2)
      {
        v7 = @"Unknown";
      }

      else
      {
        v7 = *(&off_10164DE20 + v6);
      }

      if ((a3 - 1) > 2)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = *(&off_10164DE20 + a3 - 1);
      }

      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Set CarSmallWidgetBrowsingState from %@ to %@", buf, 0x16u);
    }

    self->_browsingState = a3;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(CarSmallWidgetBrowsingModeController *)self view];
    v10 = [v9 subviews];

    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * i) removeFromSuperview];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [(CarSmallWidgetBrowsingModeController *)self _clearFocusableItems];
    browsingState = self->_browsingState;
    if (browsingState == 2)
    {
      [(CarSmallWidgetBrowsingModeController *)self _addSearchCategoriesView];
    }

    else if (browsingState == 1)
    {
      [(CarSmallWidgetBrowsingModeController *)self _addShortcutsView];
    }

    else
    {
      [(CarSmallWidgetBrowsingModeController *)self _addNoContentView];
    }
  }
}

- (void)_updateWidgetContents
{
  v3 = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
  if ([v3 count])
  {
    v4 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];

    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  v6 = [v5 shortcutsForCarplay];
  if ([v6 count])
  {
    v7 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];

    if (v7)
    {
LABEL_7:
      [(CarSmallWidgetBrowsingModeController *)self setBrowsingState:1];
      shortcutsView = self->_shortcutsView;

      [(CarSmallWidgetShortcutsView *)shortcutsView refreshShortcuts];
      return;
    }
  }

  else
  {
  }

  v9 = [(CarSmallWidgetBrowsingModeController *)self searchCategories];
  v10 = [v9 count];

  if (v10)
  {
    [(CarSmallWidgetBrowsingModeController *)self setBrowsingState:2];
    v11 = [(CarSmallWidgetBrowsingModeController *)self searchCategories];
    [(CarSmallWidgetSearchCategoriesView *)self->_searchCategoriesView setCategories:v11];
  }

  else
  {

    [(CarSmallWidgetBrowsingModeController *)self setBrowsingState:3];
  }
}

- (void)dealloc
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    [v3 unregisterObserver:self];
  }

  else
  {
    [(CarShortcutsProvider *)self->_shortcutsProvider stop];
  }

  v4.receiver = self;
  v4.super_class = CarSmallWidgetBrowsingModeController;
  [(CarSmallWidgetBrowsingModeController *)&v4 dealloc];
}

- (CarSmallWidgetBrowsingModeController)init
{
  v13.receiver = self;
  v13.super_class = CarSmallWidgetBrowsingModeController;
  v2 = [(CarSmallWidgetBrowsingModeController *)&v13 initWithNibName:0 bundle:0];
  if (v2)
  {
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v3 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      [v3 registerObserver:v2];
    }

    else
    {
      v4 = objc_alloc_init(CarWidgetShortcutsProvider);
      shortcutsProvider = v2->_shortcutsProvider;
      v2->_shortcutsProvider = v4;

      [(CarShortcutsProvider *)v2->_shortcutsProvider setDelegate:v2];
      [(CarShortcutsProvider *)v2->_shortcutsProvider start];
    }

    v6 = [[BrowseManager alloc] initWithCacheKey:@"Stark"];
    browseManager = v2->_browseManager;
    v2->_browseManager = v6;

    v8 = [(BrowseManager *)v2->_browseManager imageManager];
    [v8 setDesiredImageSize:{29.0, 29.0}];

    [(BrowseManager *)v2->_browseManager readCategoriesFromDiskIfNeeded];
    v9 = [(BrowseManager *)v2->_browseManager cachedCategories];
    [(CarSmallWidgetBrowsingModeController *)v2 setSearchCategories:v9];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

  return v2;
}

@end