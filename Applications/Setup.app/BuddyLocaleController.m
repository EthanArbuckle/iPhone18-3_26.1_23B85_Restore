@interface BuddyLocaleController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_postLanguageReboot;
- (BOOL)_shouldShowOtherLanguagesHeader;
- (BOOL)controllerNeedsToRun;
- (BOOL)shouldShowSafetyAndHandlingSection;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BYBuddySafetyAndHandlingBundleLocalizationProvider)safetyAndHandlingLocalizationProvider;
- (BYBuddySafetyAndHandlingViewControllerProvider)safetyAndHandlingViewControllerProvider;
- (BuddyLanguageLocaleSelectionReceiver)selectionReceiver;
- (BuddyLocaleController)init;
- (double)_heightForHeaderInSection:(int64_t)a3 inTableView:(id)a4;
- (double)_solarium_heightForHeaderInSection:(int64_t)a3 inTableView:(id)a4;
- (double)_topPaddingForSectionHeader;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_micaAssetName;
- (id)_micaAssetNameForRegion:(int64_t)a3;
- (id)_solarium_viewForHeaderInSection:(int64_t)a3 inTableView:(id)a4;
- (id)_viewForHeaderInSection:(int64_t)a3 inTableView:(id)a4;
- (id)countryAtIndexPath:(id)a3;
- (id)headerTitle;
- (id)internalMenuActions;
- (id)otherCountriesSectionTitle;
- (id)safetyAndHandlingCountryCode;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_loadSavedStatePostLanguageReboot;
- (void)_updateChromelessBar:(id)a3;
- (void)controllerWasPopped;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectCountry:(id)a3;
- (void)setLocaleComposite:(id)a3;
- (void)setShowLocalizedNames:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BuddyLocaleController

- (BuddyLocaleController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyLocaleController;
  location = [(BuddyLocaleController *)&v4 initWithTitle:&stru_10032F900 detailText:&stru_10032F900 symbolName:0 adoptTableViewScrollView:1];
  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)loadView
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyLocaleController;
  [(BuddyLocaleController *)&v3 loadView];
  v2 = [(BuddyLocaleController *)v5 navigationItem];
  [v2 _setManualScrollEdgeAppearanceEnabled:1];
}

- (void)viewDidLoad
{
  v43 = self;
  v42 = a2;
  v41.receiver = self;
  v41.super_class = BuddyLocaleController;
  [(BuddyLocaleController *)&v41 viewDidLoad];
  v2 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyLocaleController *)v43 setBuddyLocaleTableView:v2];

  v3 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [(UITableView *)v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  v4 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [(UITableView *)v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"SafetyAndHandlingCell"];

  *&v39 = sub_1000D6A40();
  *(&v39 + 1) = v5;
  *&v40 = v6;
  *(&v40 + 1) = v7;
  v8 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  v38 = v40;
  v37 = v39;
  [(UITableView *)v8 setDirectionalLayoutMargins:v39, v40];

  v9 = v43;
  v10 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [(UITableView *)v10 setDelegate:v9];

  v11 = v43;
  v12 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [(UITableView *)v12 setDataSource:v11];

  v13 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [(UITableView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [(UITableView *)v14 _setDrawsSeparatorAtTopOfSections:1];

  v15 = [(BuddyLocaleController *)v43 view];
  v16 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [v15 addSubview:v16];

  [(BuddyLocaleController *)v43 _loadSavedStatePostLanguageReboot];
  v17 = v43;
  v18 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [(BuddyLocaleController *)v17 setTableView:v18];

  if ([(BuddyLocaleController *)v43 isResumingFromLanguageReboot])
  {
    v19 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.5];
    v44 = v19;
    location = [NSArray arrayWithObjects:&v44 count:1];

    v20 = v43;
    v21 = [(BuddyLocaleController *)v43 _micaAssetName];
    v22 = [(BuddyLocaleController *)v20 buddy_animationController:v21 animatedStates:location startAtFirstState:1];
    [(BuddyLocaleController *)v43 setAnimationController:v22];

    objc_storeStrong(&location, 0);
  }

  else
  {
    v23 = v43;
    v24 = [(BuddyLocaleController *)v43 _micaAssetName];
    v25 = [(BuddyLocaleController *)v23 buddy_animationController:v24];
    [(BuddyLocaleController *)v43 setAnimationController:v25];
  }

  v26 = v43;
  v27 = [(BuddyLocaleController *)v43 buddyLocaleTableView];
  [(UITableView *)v27 setDelegate:v26];

  v28 = [(BuddyLocaleController *)v43 headerView];
  v29 = [(BuddyLocaleController *)v43 headerTitle];
  [v28 setTitle:v29];

  v30 = [(BuddyLocaleController *)v43 headerView];
  v31 = [(BuddyLocaleController *)v43 language];
  [v30 setLanguage:v31];

  v32 = [(BuddyLocaleController *)v43 language];
  v33 = [NSParagraphStyle defaultWritingDirectionForLanguage:v32];

  if (v33 == NSWritingDirectionRightToLeft)
  {
    v34 = [(BuddyLocaleController *)v43 view];
    [v34 buddy_setSemanticContentAttributeRecursively:4];
  }

  else
  {
    v34 = [(BuddyLocaleController *)v43 view];
    [v34 buddy_setSemanticContentAttributeRecursively:3];
  }

  if ([(BuddyLocaleController *)v43 shouldShowSafetyAndHandlingSection])
  {
    v35 = [(BuddyLocaleController *)v43 safetyAndHandlingManager];
    [(BYBuddySafetyAndHandlingManager *)v35 registerUserWasPresentedWithSafetyAndHandlingCard];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = BuddyLocaleController;
  [(BuddyLocaleController *)&v12 viewWillAppear:a3];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000D6C4C;
  v10 = &unk_10032B0D0;
  v11 = v15;
  v17 = &unk_1003A70A8;
  location = 0;
  objc_storeStrong(&location, &v7);
  if (*v17 != -1)
  {
    dispatch_once(v17, location);
  }

  objc_storeStrong(&location, 0);
  v3 = [(BuddyLocaleController *)v15 navigationItem:v7];
  [v3 _setManualScrollEdgeAppearanceProgress:0.0];

  v4 = v15;
  v5 = [(BuddyLocaleController *)v15 buddyLocaleTableView];
  [(BuddyLocaleController *)v4 _updateChromelessBar:v5];

  if (![(BuddyLocaleController *)v15 isResumingFromLanguageReboot])
  {
    v6 = [(BuddyLocaleController *)v15 animationController];
    [(OBAnimationController *)v6 startAnimation];
  }

  objc_storeStrong(&v11, 0);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v26 = a3;
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v23.receiver = v25;
  v23.super_class = BuddyLocaleController;
  [(BuddyLocaleController *)&v23 viewWillTransitionToSize:location[0] withTransitionCoordinator:v26.width, v26.height];
  v4 = [(BuddyLocaleController *)v25 buddyLocaleTableView];
  v5 = [(BuddyLocaleController *)v25 view];
  [v5 center];
  v21[3] = v6;
  v21[4] = v7;
  v8 = [(BuddyLocaleController *)v25 buddyLocaleTableView];
  [(UITableView *)v8 contentOffset];
  v21[1] = v9;
  v21[2] = v10;
  sub_1000D6FBC();
  v21[5] = v11;
  v21[6] = v12;
  v22 = [(UITableView *)v4 indexPathForRowAtPoint:*&v11, *&v12];

  v13 = location[0];
  v14 = [(BuddyLocaleController *)v25 view];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000D7038;
  v19 = &unk_10032C750;
  v20 = v25;
  v21[0] = v22;
  [v13 animateAlongsideTransitionInView:v14 animation:&stru_10032C728 completion:&v15];

  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)headerTitle
{
  v2 = [(BuddyLocaleController *)self language];
  v3 = [(NSString *)v2 length];

  v4 = +[NSBundle mainBundle];
  if (v3)
  {
    v5 = [(BuddyLocaleController *)self language];
    v8 = SFLocalizedStringFromTableInBundleForLanguage();
  }

  else
  {
    v8 = [(NSBundle *)v4 localizedStringForKey:@"SELECT_COUNTRY_OR_REGION" value:&stru_10032F900 table:@"Localizable"];
  }

  return v8;
}

- (id)otherCountriesSectionTitle
{
  v2 = [(BuddyLocaleController *)self language];
  v3 = [(NSString *)v2 length];

  v4 = +[NSBundle mainBundle];
  if (v3)
  {
    v5 = [(BuddyLocaleController *)self language];
    v8 = SFLocalizedStringFromTableInBundleForLanguage();
  }

  else
  {
    v8 = [(NSBundle *)v4 localizedStringForKey:@"MORE_COUNTRIES_AND_REGIONS" value:&stru_10032F900 table:@"Localizable"];
  }

  return v8;
}

- (void)setShowLocalizedNames:(BOOL)a3
{
  self->_showLocalizedNames = a3;
  v3 = [(BuddyLocaleController *)self buddyLocaleTableView];
  [(UITableView *)v3 reloadData];
}

- (BOOL)_postLanguageReboot
{
  v2 = [(BuddyLocaleController *)self localeComposite:a2];
  [(BuddyLocaleComposite *)v2 scrollOffset];
  v4 = v3 >= 0.0;

  return v4;
}

- (void)_loadSavedStatePostLanguageReboot
{
  if ([(BuddyLocaleController *)self _postLanguageReboot])
  {
    v2 = [(BuddyLocaleController *)self buddyLocaleTableView];
    [(UITableView *)v2 reloadData];

    v3 = [(BuddyLocaleController *)self buddyLocaleTableView];
    v4 = [(BuddyLocaleController *)self localeComposite];
    [(BuddyLocaleComposite *)v4 scrollOffset];
    sub_1000D6FBC();
    [(UITableView *)v3 setContentOffset:0 animated:v5, v6, *&v5, *&v6];
  }
}

- (void)_updateChromelessBar:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] contentOffset];
  if (v3 <= 0.0)
  {
    v6 = [(BuddyLocaleController *)v9 navigationItem];
    [v6 _setManualScrollEdgeAppearanceProgress:0.0];
  }

  else
  {
    [location[0] contentOffset];
    v11 = v4 * 10.0;
    v10 = 0x4059000000000000;
    v7 = fmin(v4 * 10.0, 100.0) / 100.0;
    v6 = [(BuddyLocaleController *)v9 navigationItem:v5];
    [v6 _setManualScrollEdgeAppearanceProgress:v7];
  }

  objc_storeStrong(location, 0);
}

- (void)selectCountry:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v15 = [(BuddyLocaleController *)v18 language];
    if (!v15)
    {
      v3 = +[NSLocale preferredLanguages];
      v15 = [(NSArray *)v3 firstObject];
    }

    v14 = [location[0] code];
    if ([v15 length] && objc_msgSend(v14, "length"))
    {
      v4 = [IntlUtility languageIdentifierFromIdentifier:v15 withRegion:v14];
      v5 = v15;
      v15 = v4;
    }

    v6 = +[NSUserDefaults standardUserDefaults];
    [(NSUserDefaults *)v6 setBool:1 forKey:@"UserChoseLanguage"];

    v7 = [(BuddyLocaleController *)v18 buddyPreferencesExcludedFromBackup];
    [(BYPreferencesController *)v7 setObject:v14 forKey:@"UserLastSelectedLocale" persistImmediately:1];

    v8 = [(BuddyLocaleController *)v18 selectionReceiver];
    v9 = [(BuddyLocaleController *)v18 buddyLocaleTableView];
    [(UITableView *)v9 contentOffset];
    v12 = [(BuddyLanguageLocaleSelectionReceiver *)v8 userSelectedLanguageWithLocale:v15 countryCode:v14 localePaneScrollOffset:v11, v10, *&v11]^ 1;

    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&v18->_delegate);
      [WeakRetained flowItemDone:v18];
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)countryAtIndexPath:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  v13 = [location[0] section];
  if (v13)
  {
    if (v13 == 2)
    {
      v7 = [(BuddyLocaleController *)v16 localeComposite];
      v8 = [(BuddyLocaleComposite *)v7 dataSource];
      v9 = -[BYLocaleDataSource otherLocaleAtIndex:](v8, "otherLocaleAtIndex:", [location[0] row]);
      v10 = v14;
      v14 = v9;
    }
  }

  else
  {
    v3 = [(BuddyLocaleController *)v16 localeComposite];
    v4 = [(BuddyLocaleComposite *)v3 dataSource];
    v5 = -[BYLocaleDataSource recommendedLocaleAtIndex:](v4, "recommendedLocaleAtIndex:", [location[0] row]);
    v6 = v14;
    v14 = v5;
  }

  v11 = v14;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (void)setLocaleComposite:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v5->_localeComposite, location[0]);
  v3 = [location[0] language];
  [(BuddyLocaleController *)v5 setLanguage:v3];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v12 = self;
  v11[1] = a2;
  v2 = [(BuddyLocaleController *)self language];

  if (v2)
  {
    v13 = 1;
  }

  else if ([(BuddyLocaleController *)v12 isResumingFromLanguageReboot])
  {
    v13 = 1;
  }

  else
  {
    v3 = [(BuddyLocaleController *)v12 buddyPreferences];
    v11[0] = [(BYPreferencesController *)v3 objectForKey:@"LockdownSetLanguage"];

    v4 = [(BuddyLocaleController *)v12 buddyPreferences];
    location = [(BYPreferencesController *)v4 objectForKey:@"Locale"];

    v5 = [(BuddyLocaleController *)v12 buddyPreferences];
    v9 = [(BYPreferencesController *)v5 objectForKey:@"Language"];

    v6 = 0;
    if (!location)
    {
      v7 = 0;
      if (v11[0])
      {
        v7 = v9 == 0;
      }

      v6 = !v7;
    }

    v13 = v6;
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(v11, 0);
  }

  return v13 & 1;
}

- (void)controllerWasPopped
{
  v2 = [(BuddyLocaleController *)self buddyPreferences];
  [(BYPreferencesController *)v2 removeObjectForKey:@"Locale"];

  v3 = [(BuddyLocaleController *)self safetyAndHandlingManager];
  [(BYBuddySafetyAndHandlingManager *)v3 resetState];

  v4 = [(BuddyLocaleController *)self safetyAndHandlingManager];
  [(BYBuddySafetyAndHandlingManager *)v4 setCountryCode:0];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyLocaleController *)v4 _updateChromelessBar:location[0]];
  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 3;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
  {
    if (a4 == 1)
    {
      v12 = [(BuddyLocaleController *)v11 shouldShowSafetyAndHandlingSection];
    }

    else if (a4 == 2)
    {
      v7 = [(BuddyLocaleController *)v11 localeComposite];
      v8 = [(BuddyLocaleComposite *)v7 dataSource];
      v12 = [(BYLocaleDataSource *)v8 numberOfOtherLocales];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v5 = [(BuddyLocaleController *)v11 localeComposite];
    v6 = [(BuddyLocaleComposite *)v5 dataSource];
    v12 = [(BYLocaleDataSource *)v6 numberOfRecommendedLocales];
  }

  objc_storeStrong(location, 0);
  return v12;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  if ([v42 section] == 1)
  {
    v41 = [location[0] dequeueReusableCellWithIdentifier:@"SafetyAndHandlingCell" forIndexPath:v42];
    v5 = [BuddyLanguageLocaleSafetyAndHandlingCellViewModel alloc];
    v6 = [(BuddyLocaleController *)v44 safetyAndHandlingLocalizationProvider];
    v40 = [(BuddyLanguageLocaleSafetyAndHandlingCellViewModel *)v5 initWithLocalizationProvider:v6];

    [v41 configureCellWithViewModel:v40];
    v7 = v41;
    v34 = _NSConcreteStackBlock;
    v35 = -1073741824;
    v36 = 0;
    v37 = sub_1000D8384;
    v38 = &unk_10032C778;
    v39 = v44;
    v8 = [UIAction actionWithHandler:&v34];
    [v7 setLearnMoreAction:v8];

    v45 = v41;
    v33 = 1;
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v41, 0);
  }

  else
  {
    v32 = [location[0] dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v42];
    [v32 setAccessoryType:1];
    [v32 setMinimumHeight:60.0];
    v31 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v31 pointSize];
    v9 = [UIFont boldSystemFontOfSize:?];
    v10 = [v32 titleLabel];
    [v10 setFont:v9];

    v30 = [(BuddyLocaleController *)v44 countryAtIndexPath:v42];
    v29 = [v30 name];
    v11 = [(BuddyLocaleController *)v44 language];
    v28 = sub_1001961E0(v29, v11);

    if ([(BuddyLocaleController *)v44 showLocalizedNames])
    {
      v12 = +[NSLocale currentLocale];
      v13 = [v30 code];
      v27 = [(NSLocale *)v12 localizedStringForRegion:v13 context:4 short:1];

      v14 = [v30 code];
      v26 = [NSString stringWithFormat:@" (%@ - %@)", v14, v27];

      v25 = [v28 mutableCopy];
      v15 = [[NSAttributedString alloc] initWithString:v26];
      [v25 appendAttributedString:v15];

      v16 = [v25 copy];
      v17 = v28;
      v28 = v16;

      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    v18 = v28;
    v19 = [v32 titleLabel];
    [v19 setAttributedText:v18];

    v20 = [(BuddyLocaleController *)v44 language];
    if ([NSParagraphStyle defaultWritingDirectionForLanguage:v20]== 1)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v32 titleLabel];
    [v22 setTextAlignment:v21];

    v45 = v32;
    v33 = 1;
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  v23 = v45;

  return v23;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([v7 section] != 1)
  {
    [location[0] deselectRowAtIndexPath:v7 animated:1];
    v5 = v9;
    v6 = [(BuddyLocaleController *)v9 countryAtIndexPath:v7];
    [(BuddyLocaleController *)v5 selectCountry:v6];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v5 = [(BuddyLocaleController *)v11 featureFlags];
  v6 = [(BuddyFeatureFlags *)v5 isSolariumEnabled];

  if (v6)
  {
    v12 = [(BuddyLocaleController *)v11 _solarium_viewForHeaderInSection:v9 inTableView:location[0]];
  }

  else
  {
    v12 = [(BuddyLocaleController *)v11 _viewForHeaderInSection:v9 inTableView:location[0]];
  }

  objc_storeStrong(location, 0);
  v7 = v12;

  return v7;
}

- (id)_solarium_viewForHeaderInSection:(int64_t)a3 inTableView:(id)a4
{
  v33 = self;
  v32 = a2;
  v31 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v31 == 2 && [(BuddyLocaleController *)v33 _shouldShowOtherLanguagesHeader])
  {
    v4 = [(BuddyLocaleController *)v33 otherLanguagesSectionHeader];
    v5 = v4 == 0;

    if (v5)
    {
      [(BuddyLocaleController *)v33 _topPaddingForSectionHeader];
      v29[5] = v6;
      v7 = [BuddyTableSectionHeaderView alloc];
      sub_1000D8BD4();
      v29[1] = v8;
      v29[2] = v9;
      v29[3] = v10;
      v29[4] = v11;
      v12 = [(BuddyTableSectionHeaderView *)v7 initWithPadding:*&v8, *&v9, *&v10, *&v11];
      [(BuddyLocaleController *)v33 setOtherLanguagesSectionHeader:v12];
    }

    v13 = [(BuddyLocaleController *)v33 otherLanguagesSectionHeader];
    v14 = [(BuddyTableSectionHeaderView *)v13 sectionLabel];
    [(UILabel *)v14 setLineBreakMode:0];

    v29[0] = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 addingSymbolicTraits:2 options:0];
    v28 = [UIFont fontWithDescriptor:v29[0] size:0.0];
    v27 = [(BuddyLocaleController *)v33 otherCountriesSectionTitle];
    v15 = [(BuddyLocaleController *)v33 language];
    v16 = sub_1001961E0(v27, v15);
    v26 = [v16 mutableCopy];

    v17 = [v26 length];
    v36 = 0;
    v35 = v17;
    v37 = 0;
    v38 = v17;
    [v26 addAttribute:NSFontAttributeName value:v28 range:{0, v17}];
    v18 = [(BuddyLocaleController *)v33 otherLanguagesSectionHeader];
    v19 = [(BuddyTableSectionHeaderView *)v18 sectionLabel];
    [(UILabel *)v19 setAttributedText:v26];

    v20 = [(BuddyLocaleController *)v33 language];
    v21 = [NSParagraphStyle defaultWritingDirectionForLanguage:v20];

    if (v21 == NSWritingDirectionRightToLeft)
    {
      v22 = [(BuddyLocaleController *)v33 otherLanguagesSectionHeader];
      v23 = [(BuddyTableSectionHeaderView *)v22 sectionLabel];
      [(UILabel *)v23 setTextAlignment:2];
    }

    else
    {
      v22 = [(BuddyLocaleController *)v33 otherLanguagesSectionHeader];
      v23 = [(BuddyTableSectionHeaderView *)v22 sectionLabel];
      [(UILabel *)v23 setTextAlignment:0];
    }

    v34 = [(BuddyLocaleController *)v33 otherLanguagesSectionHeader];
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(v29, 0);
  }

  else
  {
    v34 = 0;
  }

  objc_storeStrong(&location, 0);
  v24 = v34;

  return v24;
}

- (id)_viewForHeaderInSection:(int64_t)a3 inTableView:(id)a4
{
  v36 = self;
  v35 = a2;
  v34 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v34 == 2)
  {
    v4 = [(BuddyLocaleController *)v36 otherLanguagesSectionHeader];
    v5 = v4 == 0;

    if (v5)
    {
      [(BuddyLocaleController *)v36 _topPaddingForSectionHeader];
      v32[5] = v6;
      v7 = [BuddyTableSectionHeaderView alloc];
      sub_1000D8BD4();
      v32[1] = v8;
      v32[2] = v9;
      v32[3] = v10;
      v32[4] = v11;
      v12 = [(BuddyTableSectionHeaderView *)v7 initWithPadding:*&v8, *&v9, *&v10, *&v11];
      [(BuddyLocaleController *)v36 setOtherLanguagesSectionHeader:v12];
    }

    v32[0] = UIFontTextStyleTitle2;
    v13 = +[BYDevice currentDevice];
    v14 = [v13 size];

    if (v14 == 2)
    {
      objc_storeStrong(v32, UIFontTextStyleTitle3);
    }

    v15 = [(BuddyLocaleController *)v36 otherLanguagesSectionHeader];
    v16 = [(BuddyTableSectionHeaderView *)v15 sectionLabel];
    [(UILabel *)v16 setLineBreakMode:0];

    v31 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v32[0] addingSymbolicTraits:2 options:0];
    v30 = [UIFont fontWithDescriptor:v31 size:0.0];
    v29 = [(BuddyLocaleController *)v36 otherCountriesSectionTitle];
    v17 = [(BuddyLocaleController *)v36 language];
    v18 = sub_1001961E0(v29, v17);
    v28 = [v18 mutableCopy];

    v19 = [v28 length];
    v39 = 0;
    v38 = v19;
    v40 = 0;
    v41 = v19;
    [v28 addAttribute:NSFontAttributeName value:v30 range:{0, v19}];
    v20 = [(BuddyLocaleController *)v36 otherLanguagesSectionHeader];
    v21 = [(BuddyTableSectionHeaderView *)v20 sectionLabel];
    [(UILabel *)v21 setAttributedText:v28];

    v22 = [(BuddyLocaleController *)v36 language];
    v23 = [NSParagraphStyle defaultWritingDirectionForLanguage:v22];

    if (v23 == NSWritingDirectionRightToLeft)
    {
      v24 = [(BuddyLocaleController *)v36 otherLanguagesSectionHeader];
      v25 = [(BuddyTableSectionHeaderView *)v24 sectionLabel];
      [(UILabel *)v25 setTextAlignment:2];
    }

    else
    {
      v24 = [(BuddyLocaleController *)v36 otherLanguagesSectionHeader];
      v25 = [(BuddyTableSectionHeaderView *)v24 sectionLabel];
      [(UILabel *)v25 setTextAlignment:0];
    }

    v37 = [(BuddyLocaleController *)v36 otherLanguagesSectionHeader];
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(v32, 0);
  }

  else
  {
    v37 = 0;
  }

  objc_storeStrong(&location, 0);
  v26 = v37;

  return v26;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v5 = [(BuddyLocaleController *)v11 featureFlags];
  v6 = [(BuddyFeatureFlags *)v5 isSolariumEnabled];

  if (v6)
  {
    [(BuddyLocaleController *)v11 _solarium_heightForHeaderInSection:v9 inTableView:location[0]];
  }

  else
  {
    [(BuddyLocaleController *)v11 _heightForHeaderInSection:v9 inTableView:location[0]];
  }

  v12 = v7;
  objc_storeStrong(location, 0);
  return v12;
}

- (double)_solarium_heightForHeaderInSection:(int64_t)a3 inTableView:(id)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v12 == 2 && [(BuddyLocaleController *)v14 _shouldShowOtherLanguagesHeader])
  {
    v10 = [(BuddyLocaleController *)v14 tableView:location viewForHeaderInSection:v12];
    [location bounds];
    [location layoutMargins];
    [location layoutMargins];
    v4 = sub_1000D929C();
    [v10 setFrame:{v4, v5, v6, v7}];
    [v10 layoutIfNeeded];
    [v10 intrinsicContentSize];
    v15 = v8;
    objc_storeStrong(&v10, 0);
  }

  else if (v12 == 1 && [(BuddyLocaleController *)v14 shouldShowSafetyAndHandlingSection])
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 0.0;
  }

  objc_storeStrong(&location, 0);
  return v15;
}

- (double)_heightForHeaderInSection:(int64_t)a3 inTableView:(id)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v12 == 2)
  {
    v10 = [(BuddyLocaleController *)v14 tableView:location viewForHeaderInSection:2];
    [location bounds];
    [location layoutMargins];
    [location layoutMargins];
    v4 = sub_1000D929C();
    [v10 setFrame:{v4, v5, v6, v7}];
    [v10 layoutIfNeeded];
    [v10 intrinsicContentSize];
    v15 = v8;
    objc_storeStrong(&v10, 0);
  }

  else if (v12 == 1 && [(BuddyLocaleController *)v14 shouldShowSafetyAndHandlingSection])
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 0.0;
  }

  objc_storeStrong(&location, 0);
  return v15;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  LOBYTE(a4) = [v6 section] != 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return a4 & 1;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [v8 setSeparatorStyle:1];
  [v8 _setShouldHaveFullLengthTopSeparator:0];
  [v8 _setShouldHaveFullLengthBottomSeparator:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)internalMenuActions
{
  v17 = self;
  v16[1] = a2;
  if ([(BuddyLocaleController *)self showLocalizedNames])
  {
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000D97D0;
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
    v8 = sub_1000D9824;
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

- (double)_topPaddingForSectionHeader
{
  v16 = self;
  v15 = a2;
  v14 = 37.0;
  location = +[BYDevice currentDevice];
  if ([location type] != 1)
  {
    v2 = [location size];
    if (v2)
    {
      if (v2 == 1)
      {
        goto LABEL_11;
      }

      if (v2 == 2)
      {
        v14 = 20.0;
        goto LABEL_24;
      }

      if (v2 == 3)
      {
LABEL_11:
        v14 = 26.0;
LABEL_24:
        v17 = v14;
        goto LABEL_25;
      }

      if (v2 != 4)
      {
        if (v2 != 5)
        {
          if (v2 == 6)
          {
            v3 = +[UIScreen mainScreen];
            [(UIScreen *)v3 bounds];
            v11 = 0;
            v9 = 0;
            v5 = 0;
            if (v4 == 414.0)
            {
              v12 = +[UIScreen mainScreen];
              v11 = 1;
              [(UIScreen *)v12 bounds];
              v5 = 0;
              if (v6 == 896.0)
              {
                v10 = +[UIScreen mainScreen];
                v9 = 1;
                [(UIScreen *)v10 scale];
                v5 = v7 == 3.0;
              }
            }

            if (v9)
            {
            }

            if (v11)
            {
            }

            if (v5)
            {
              v14 = 37.0;
            }

            else
            {
              v14 = 26.0;
            }
          }

          goto LABEL_24;
        }

        goto LABEL_11;
      }
    }

    v14 = 37.0;
    goto LABEL_24;
  }

  v17 = v14;
LABEL_25:
  objc_storeStrong(&location, 0);
  return v17;
}

- (id)_micaAssetName
{
  v20 = self;
  v19[1] = a2;
  v2 = [(BuddyLocaleController *)self language];
  v3 = [NSLocale localeWithLocaleIdentifier:v2];
  v19[0] = [(NSLocale *)v3 countryCode];

  v4 = [(BuddyLocaleController *)v20 localeComposite];
  v5 = [(BuddyLocaleComposite *)v4 dataSource];
  v6 = [(BYLocaleDataSource *)v5 numberOfRecommendedLocales];

  if (v6)
  {
    v7 = [(BuddyLocaleController *)v20 localeComposite];
    v8 = [(BuddyLocaleComposite *)v7 dataSource];
    v9 = [(BYLocaleDataSource *)v8 recommendedLocaleAtIndex:0];
    v10 = [v9 code];
    v11 = v19[0];
    v19[0] = v10;
  }

  v12 = [NSLocale containingRegionOfRegion:v19[0]];
  v13 = [v12 integerValue];

  location[1] = v13;
  location[0] = [(BuddyLocaleController *)v20 _micaAssetNameForRegion:v13];
  if (!location[0])
  {
    v14 = [NSLocale containingContinentOfRegion:v19[0]];
    v15 = [v14 integerValue];

    location[0] = [(BuddyLocaleController *)v20 _micaAssetNameForRegion:v15, v15];
    if (!location[0])
    {
      location[0] = [(BuddyLocaleController *)v20 _micaAssetNameForRegion:19];
    }
  }

  v21 = location[0];
  objc_storeStrong(location, 0);
  objc_storeStrong(v19, 0);
  v16 = v21;

  return v16;
}

- (id)_micaAssetNameForRegion:(int64_t)a3
{
  if (a3 == 2)
  {
LABEL_12:
    v4 = @"GlobeEUAfrica";
    goto LABEL_14;
  }

  if (a3 == 9)
  {
LABEL_10:
    v4 = @"GlobeAsiaOceania";
    goto LABEL_14;
  }

  if (a3 != 10 && a3 != 19)
  {
    if (a3 == 34)
    {
      v4 = @"GlobeSouthAsia";
      goto LABEL_14;
    }

    if (a3 != 142)
    {
      if (a3 != 150)
      {
        v4 = 0;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v4 = @"GlobeAmericas";
LABEL_14:

  return v4;
}

- (BOOL)_shouldShowOtherLanguagesHeader
{
  v2 = [(BuddyLocaleController *)self localeComposite:a2];
  v3 = [(BuddyLocaleComposite *)v2 dataSource];
  v4 = [(BYLocaleDataSource *)v3 numberOfRecommendedLocales]!= 0;

  return v4;
}

- (BOOL)shouldShowSafetyAndHandlingSection
{
  v2 = [(BuddyLocaleController *)self localeComposite];
  v3 = [(BuddyLocaleComposite *)v2 dataSource];
  v4 = [(BYLocaleDataSource *)v3 numberOfRecommendedLocales];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(BuddyLocaleController *)self safetyAndHandlingManager];
  v6 = [(BuddyLocaleController *)self safetyAndHandlingViewControllerProvider];
  v9 = [(BYBuddySafetyAndHandlingManager *)v5 canShowShowSafetyAndHandlingCardUsing:v6];

  return v9;
}

- (id)safetyAndHandlingCountryCode
{
  v7 = self;
  location[1] = a2;
  location[0] = [NSIndexPath indexPathForRow:0 inSection:0];
  v2 = [(BuddyLocaleController *)v7 countryAtIndexPath:location[0]];
  v3 = [v2 code];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v3;
}

- (BYBuddySafetyAndHandlingBundleLocalizationProvider)safetyAndHandlingLocalizationProvider
{
  if (!self->_safetyAndHandlingLocalizationProvider)
  {
    v2 = [BYBuddySafetyAndHandlingBundleLocalizationProvider alloc];
    v3 = [(BuddyLocaleController *)self safetyAndHandlingLanguageCode];
    v4 = [(BYBuddySafetyAndHandlingBundleLocalizationProvider *)v2 initWithLanguageCode:v3];
    safetyAndHandlingLocalizationProvider = self->_safetyAndHandlingLocalizationProvider;
    self->_safetyAndHandlingLocalizationProvider = v4;
  }

  v6 = self->_safetyAndHandlingLocalizationProvider;

  return v6;
}

- (BYBuddySafetyAndHandlingViewControllerProvider)safetyAndHandlingViewControllerProvider
{
  if (!self->_safetyAndHandlingViewControllerProvider)
  {
    v2 = [BYBuddySafetyAndHandlingViewControllerProvider alloc];
    v3 = [(BuddyLocaleController *)self safetyAndHandlingLanguageCode];
    v4 = [(BuddyLocaleController *)self safetyAndHandlingCountryCode];
    v5 = [(BYBuddySafetyAndHandlingViewControllerProvider *)v2 initWithLanguageCode:v3 regionCode:v4];
    safetyAndHandlingViewControllerProvider = self->_safetyAndHandlingViewControllerProvider;
    self->_safetyAndHandlingViewControllerProvider = v5;
  }

  v7 = self->_safetyAndHandlingViewControllerProvider;

  return v7;
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