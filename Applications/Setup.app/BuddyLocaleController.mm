@interface BuddyLocaleController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_postLanguageReboot;
- (BOOL)_shouldShowOtherLanguagesHeader;
- (BOOL)controllerNeedsToRun;
- (BOOL)shouldShowSafetyAndHandlingSection;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BYBuddySafetyAndHandlingBundleLocalizationProvider)safetyAndHandlingLocalizationProvider;
- (BYBuddySafetyAndHandlingViewControllerProvider)safetyAndHandlingViewControllerProvider;
- (BuddyLanguageLocaleSelectionReceiver)selectionReceiver;
- (BuddyLocaleController)init;
- (double)_heightForHeaderInSection:(int64_t)section inTableView:(id)view;
- (double)_solarium_heightForHeaderInSection:(int64_t)section inTableView:(id)view;
- (double)_topPaddingForSectionHeader;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_micaAssetName;
- (id)_micaAssetNameForRegion:(int64_t)region;
- (id)_solarium_viewForHeaderInSection:(int64_t)section inTableView:(id)view;
- (id)_viewForHeaderInSection:(int64_t)section inTableView:(id)view;
- (id)countryAtIndexPath:(id)path;
- (id)headerTitle;
- (id)internalMenuActions;
- (id)otherCountriesSectionTitle;
- (id)safetyAndHandlingCountryCode;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_loadSavedStatePostLanguageReboot;
- (void)_updateChromelessBar:(id)bar;
- (void)controllerWasPopped;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectCountry:(id)country;
- (void)setLocaleComposite:(id)composite;
- (void)setShowLocalizedNames:(BOOL)names;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyLocaleController;
  [(BuddyLocaleController *)&v3 loadView];
  navigationItem = [(BuddyLocaleController *)selfCopy navigationItem];
  [navigationItem _setManualScrollEdgeAppearanceEnabled:1];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v42 = a2;
  v41.receiver = self;
  v41.super_class = BuddyLocaleController;
  [(BuddyLocaleController *)&v41 viewDidLoad];
  v2 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyLocaleController *)selfCopy setBuddyLocaleTableView:v2];

  buddyLocaleTableView = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  buddyLocaleTableView2 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"SafetyAndHandlingCell"];

  *&v39 = sub_1000D6A40();
  *(&v39 + 1) = v5;
  *&v40 = v6;
  *(&v40 + 1) = v7;
  buddyLocaleTableView3 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  v38 = v40;
  v37 = v39;
  [(UITableView *)buddyLocaleTableView3 setDirectionalLayoutMargins:v39, v40];

  v9 = selfCopy;
  buddyLocaleTableView4 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView4 setDelegate:v9];

  v11 = selfCopy;
  buddyLocaleTableView5 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView5 setDataSource:v11];

  buddyLocaleTableView6 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  buddyLocaleTableView7 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView7 _setDrawsSeparatorAtTopOfSections:1];

  view = [(BuddyLocaleController *)selfCopy view];
  buddyLocaleTableView8 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [view addSubview:buddyLocaleTableView8];

  [(BuddyLocaleController *)selfCopy _loadSavedStatePostLanguageReboot];
  v17 = selfCopy;
  buddyLocaleTableView9 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(BuddyLocaleController *)v17 setTableView:buddyLocaleTableView9];

  if ([(BuddyLocaleController *)selfCopy isResumingFromLanguageReboot])
  {
    v19 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.5];
    v44 = v19;
    location = [NSArray arrayWithObjects:&v44 count:1];

    v20 = selfCopy;
    _micaAssetName = [(BuddyLocaleController *)selfCopy _micaAssetName];
    v22 = [(BuddyLocaleController *)v20 buddy_animationController:_micaAssetName animatedStates:location startAtFirstState:1];
    [(BuddyLocaleController *)selfCopy setAnimationController:v22];

    objc_storeStrong(&location, 0);
  }

  else
  {
    v23 = selfCopy;
    _micaAssetName2 = [(BuddyLocaleController *)selfCopy _micaAssetName];
    v25 = [(BuddyLocaleController *)v23 buddy_animationController:_micaAssetName2];
    [(BuddyLocaleController *)selfCopy setAnimationController:v25];
  }

  v26 = selfCopy;
  buddyLocaleTableView10 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView10 setDelegate:v26];

  headerView = [(BuddyLocaleController *)selfCopy headerView];
  headerTitle = [(BuddyLocaleController *)selfCopy headerTitle];
  [headerView setTitle:headerTitle];

  headerView2 = [(BuddyLocaleController *)selfCopy headerView];
  language = [(BuddyLocaleController *)selfCopy language];
  [headerView2 setLanguage:language];

  language2 = [(BuddyLocaleController *)selfCopy language];
  v33 = [NSParagraphStyle defaultWritingDirectionForLanguage:language2];

  if (v33 == NSWritingDirectionRightToLeft)
  {
    view2 = [(BuddyLocaleController *)selfCopy view];
    [view2 buddy_setSemanticContentAttributeRecursively:4];
  }

  else
  {
    view2 = [(BuddyLocaleController *)selfCopy view];
    [view2 buddy_setSemanticContentAttributeRecursively:3];
  }

  if ([(BuddyLocaleController *)selfCopy shouldShowSafetyAndHandlingSection])
  {
    safetyAndHandlingManager = [(BuddyLocaleController *)selfCopy safetyAndHandlingManager];
    [(BYBuddySafetyAndHandlingManager *)safetyAndHandlingManager registerUserWasPresentedWithSafetyAndHandlingCard];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v14 = a2;
  appearCopy = appear;
  v12.receiver = self;
  v12.super_class = BuddyLocaleController;
  [(BuddyLocaleController *)&v12 viewWillAppear:appear];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000D6C4C;
  v10 = &unk_10032B0D0;
  v11 = selfCopy;
  v17 = &unk_1003A70A8;
  location = 0;
  objc_storeStrong(&location, &v7);
  if (*v17 != -1)
  {
    dispatch_once(v17, location);
  }

  objc_storeStrong(&location, 0);
  v3 = [(BuddyLocaleController *)selfCopy navigationItem:v7];
  [v3 _setManualScrollEdgeAppearanceProgress:0.0];

  v4 = selfCopy;
  buddyLocaleTableView = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(BuddyLocaleController *)v4 _updateChromelessBar:buddyLocaleTableView];

  if (![(BuddyLocaleController *)selfCopy isResumingFromLanguageReboot])
  {
    animationController = [(BuddyLocaleController *)selfCopy animationController];
    [(OBAnimationController *)animationController startAnimation];
  }

  objc_storeStrong(&v11, 0);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v23.receiver = selfCopy;
  v23.super_class = BuddyLocaleController;
  [(BuddyLocaleController *)&v23 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  buddyLocaleTableView = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  view = [(BuddyLocaleController *)selfCopy view];
  [view center];
  v21[3] = v6;
  v21[4] = v7;
  buddyLocaleTableView2 = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView2 contentOffset];
  v21[1] = v9;
  v21[2] = v10;
  sub_1000D6FBC();
  v21[5] = v11;
  v21[6] = v12;
  v22 = [(UITableView *)buddyLocaleTableView indexPathForRowAtPoint:*&v11, *&v12];

  v13 = location[0];
  view2 = [(BuddyLocaleController *)selfCopy view];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000D7038;
  v19 = &unk_10032C750;
  v20 = selfCopy;
  v21[0] = v22;
  [v13 animateAlongsideTransitionInView:view2 animation:&stru_10032C728 completion:&v15];

  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)headerTitle
{
  language = [(BuddyLocaleController *)self language];
  v3 = [(NSString *)language length];

  v4 = +[NSBundle mainBundle];
  if (v3)
  {
    language2 = [(BuddyLocaleController *)self language];
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
  language = [(BuddyLocaleController *)self language];
  v3 = [(NSString *)language length];

  v4 = +[NSBundle mainBundle];
  if (v3)
  {
    language2 = [(BuddyLocaleController *)self language];
    v8 = SFLocalizedStringFromTableInBundleForLanguage();
  }

  else
  {
    v8 = [(NSBundle *)v4 localizedStringForKey:@"MORE_COUNTRIES_AND_REGIONS" value:&stru_10032F900 table:@"Localizable"];
  }

  return v8;
}

- (void)setShowLocalizedNames:(BOOL)names
{
  self->_showLocalizedNames = names;
  buddyLocaleTableView = [(BuddyLocaleController *)self buddyLocaleTableView];
  [(UITableView *)buddyLocaleTableView reloadData];
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
    buddyLocaleTableView = [(BuddyLocaleController *)self buddyLocaleTableView];
    [(UITableView *)buddyLocaleTableView reloadData];

    buddyLocaleTableView2 = [(BuddyLocaleController *)self buddyLocaleTableView];
    localeComposite = [(BuddyLocaleController *)self localeComposite];
    [(BuddyLocaleComposite *)localeComposite scrollOffset];
    sub_1000D6FBC();
    [(UITableView *)buddyLocaleTableView2 setContentOffset:0 animated:v5, v6, *&v5, *&v6];
  }
}

- (void)_updateChromelessBar:(id)bar
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bar);
  [location[0] contentOffset];
  if (v3 <= 0.0)
  {
    navigationItem = [(BuddyLocaleController *)selfCopy navigationItem];
    [navigationItem _setManualScrollEdgeAppearanceProgress:0.0];
  }

  else
  {
    [location[0] contentOffset];
    v11 = v4 * 10.0;
    v10 = 0x4059000000000000;
    v7 = fmin(v4 * 10.0, 100.0) / 100.0;
    navigationItem = [(BuddyLocaleController *)selfCopy navigationItem:v5];
    [navigationItem _setManualScrollEdgeAppearanceProgress:v7];
  }

  objc_storeStrong(location, 0);
}

- (void)selectCountry:(id)country
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, country);
  if (location[0])
  {
    language = [(BuddyLocaleController *)selfCopy language];
    if (!language)
    {
      v3 = +[NSLocale preferredLanguages];
      language = [(NSArray *)v3 firstObject];
    }

    code = [location[0] code];
    if ([language length] && objc_msgSend(code, "length"))
    {
      v4 = [IntlUtility languageIdentifierFromIdentifier:language withRegion:code];
      v5 = language;
      language = v4;
    }

    v6 = +[NSUserDefaults standardUserDefaults];
    [(NSUserDefaults *)v6 setBool:1 forKey:@"UserChoseLanguage"];

    buddyPreferencesExcludedFromBackup = [(BuddyLocaleController *)selfCopy buddyPreferencesExcludedFromBackup];
    [(BYPreferencesController *)buddyPreferencesExcludedFromBackup setObject:code forKey:@"UserLastSelectedLocale" persistImmediately:1];

    selectionReceiver = [(BuddyLocaleController *)selfCopy selectionReceiver];
    buddyLocaleTableView = [(BuddyLocaleController *)selfCopy buddyLocaleTableView];
    [(UITableView *)buddyLocaleTableView contentOffset];
    v12 = [(BuddyLanguageLocaleSelectionReceiver *)selectionReceiver userSelectedLanguageWithLocale:language countryCode:code localePaneScrollOffset:v11, v10, *&v11]^ 1;

    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      [WeakRetained flowItemDone:selfCopy];
    }

    objc_storeStrong(&code, 0);
    objc_storeStrong(&language, 0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)countryAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v14 = 0;
  section = [location[0] section];
  if (section)
  {
    if (section == 2)
    {
      localeComposite = [(BuddyLocaleController *)selfCopy localeComposite];
      dataSource = [(BuddyLocaleComposite *)localeComposite dataSource];
      v9 = -[BYLocaleDataSource otherLocaleAtIndex:](dataSource, "otherLocaleAtIndex:", [location[0] row]);
      v10 = v14;
      v14 = v9;
    }
  }

  else
  {
    localeComposite2 = [(BuddyLocaleController *)selfCopy localeComposite];
    dataSource2 = [(BuddyLocaleComposite *)localeComposite2 dataSource];
    v5 = -[BYLocaleDataSource recommendedLocaleAtIndex:](dataSource2, "recommendedLocaleAtIndex:", [location[0] row]);
    v6 = v14;
    v14 = v5;
  }

  v11 = v14;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (void)setLocaleComposite:(id)composite
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, composite);
  objc_storeStrong(&selfCopy->_localeComposite, location[0]);
  language = [location[0] language];
  [(BuddyLocaleController *)selfCopy setLanguage:language];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v11[1] = a2;
  language = [(BuddyLocaleController *)self language];

  if (language)
  {
    v13 = 1;
  }

  else if ([(BuddyLocaleController *)selfCopy isResumingFromLanguageReboot])
  {
    v13 = 1;
  }

  else
  {
    buddyPreferences = [(BuddyLocaleController *)selfCopy buddyPreferences];
    v11[0] = [(BYPreferencesController *)buddyPreferences objectForKey:@"LockdownSetLanguage"];

    buddyPreferences2 = [(BuddyLocaleController *)selfCopy buddyPreferences];
    location = [(BYPreferencesController *)buddyPreferences2 objectForKey:@"Locale"];

    buddyPreferences3 = [(BuddyLocaleController *)selfCopy buddyPreferences];
    v9 = [(BYPreferencesController *)buddyPreferences3 objectForKey:@"Language"];

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
  buddyPreferences = [(BuddyLocaleController *)self buddyPreferences];
  [(BYPreferencesController *)buddyPreferences removeObjectForKey:@"Locale"];

  safetyAndHandlingManager = [(BuddyLocaleController *)self safetyAndHandlingManager];
  [(BYBuddySafetyAndHandlingManager *)safetyAndHandlingManager resetState];

  safetyAndHandlingManager2 = [(BuddyLocaleController *)self safetyAndHandlingManager];
  [(BYBuddySafetyAndHandlingManager *)safetyAndHandlingManager2 setCountryCode:0];
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scroll);
  [(BuddyLocaleController *)selfCopy _updateChromelessBar:location[0]];
  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 3;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section)
  {
    if (section == 1)
    {
      shouldShowSafetyAndHandlingSection = [(BuddyLocaleController *)selfCopy shouldShowSafetyAndHandlingSection];
    }

    else if (section == 2)
    {
      localeComposite = [(BuddyLocaleController *)selfCopy localeComposite];
      dataSource = [(BuddyLocaleComposite *)localeComposite dataSource];
      shouldShowSafetyAndHandlingSection = [(BYLocaleDataSource *)dataSource numberOfOtherLocales];
    }

    else
    {
      shouldShowSafetyAndHandlingSection = 0;
    }
  }

  else
  {
    localeComposite2 = [(BuddyLocaleController *)selfCopy localeComposite];
    dataSource2 = [(BuddyLocaleComposite *)localeComposite2 dataSource];
    shouldShowSafetyAndHandlingSection = [(BYLocaleDataSource *)dataSource2 numberOfRecommendedLocales];
  }

  objc_storeStrong(location, 0);
  return shouldShowSafetyAndHandlingSection;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v42 = 0;
  objc_storeStrong(&v42, path);
  if ([v42 section] == 1)
  {
    v41 = [location[0] dequeueReusableCellWithIdentifier:@"SafetyAndHandlingCell" forIndexPath:v42];
    v5 = [BuddyLanguageLocaleSafetyAndHandlingCellViewModel alloc];
    safetyAndHandlingLocalizationProvider = [(BuddyLocaleController *)selfCopy safetyAndHandlingLocalizationProvider];
    v40 = [(BuddyLanguageLocaleSafetyAndHandlingCellViewModel *)v5 initWithLocalizationProvider:safetyAndHandlingLocalizationProvider];

    [v41 configureCellWithViewModel:v40];
    v7 = v41;
    v34 = _NSConcreteStackBlock;
    v35 = -1073741824;
    v36 = 0;
    v37 = sub_1000D8384;
    v38 = &unk_10032C778;
    v39 = selfCopy;
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
    titleLabel = [v32 titleLabel];
    [titleLabel setFont:v9];

    v30 = [(BuddyLocaleController *)selfCopy countryAtIndexPath:v42];
    name = [v30 name];
    language = [(BuddyLocaleController *)selfCopy language];
    v28 = sub_1001961E0(name, language);

    if ([(BuddyLocaleController *)selfCopy showLocalizedNames])
    {
      v12 = +[NSLocale currentLocale];
      code = [v30 code];
      v27 = [(NSLocale *)v12 localizedStringForRegion:code context:4 short:1];

      code2 = [v30 code];
      v26 = [NSString stringWithFormat:@" (%@ - %@)", code2, v27];

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
    titleLabel2 = [v32 titleLabel];
    [titleLabel2 setAttributedText:v18];

    language2 = [(BuddyLocaleController *)selfCopy language];
    if ([NSParagraphStyle defaultWritingDirectionForLanguage:language2]== 1)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    titleLabel3 = [v32 titleLabel];
    [titleLabel3 setTextAlignment:v21];

    v45 = v32;
    v33 = 1;
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&name, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  v23 = v45;

  return v23;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  if ([v7 section] != 1)
  {
    [location[0] deselectRowAtIndexPath:v7 animated:1];
    v5 = selfCopy;
    v6 = [(BuddyLocaleController *)selfCopy countryAtIndexPath:v7];
    [(BuddyLocaleController *)v5 selectCountry:v6];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
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

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  featureFlags = [(BuddyLocaleController *)selfCopy featureFlags];
  isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (isSolariumEnabled)
  {
    v12 = [(BuddyLocaleController *)selfCopy _solarium_viewForHeaderInSection:sectionCopy inTableView:location[0]];
  }

  else
  {
    v12 = [(BuddyLocaleController *)selfCopy _viewForHeaderInSection:sectionCopy inTableView:location[0]];
  }

  objc_storeStrong(location, 0);
  v7 = v12;

  return v7;
}

- (id)_solarium_viewForHeaderInSection:(int64_t)section inTableView:(id)view
{
  selfCopy = self;
  v32 = a2;
  sectionCopy = section;
  location = 0;
  objc_storeStrong(&location, view);
  if (sectionCopy == 2 && [(BuddyLocaleController *)selfCopy _shouldShowOtherLanguagesHeader])
  {
    otherLanguagesSectionHeader = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
    v5 = otherLanguagesSectionHeader == 0;

    if (v5)
    {
      [(BuddyLocaleController *)selfCopy _topPaddingForSectionHeader];
      v29[5] = v6;
      v7 = [BuddyTableSectionHeaderView alloc];
      sub_1000D8BD4();
      v29[1] = v8;
      v29[2] = v9;
      v29[3] = v10;
      v29[4] = v11;
      v12 = [(BuddyTableSectionHeaderView *)v7 initWithPadding:*&v8, *&v9, *&v10, *&v11];
      [(BuddyLocaleController *)selfCopy setOtherLanguagesSectionHeader:v12];
    }

    otherLanguagesSectionHeader2 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
    sectionLabel = [(BuddyTableSectionHeaderView *)otherLanguagesSectionHeader2 sectionLabel];
    [(UILabel *)sectionLabel setLineBreakMode:0];

    v29[0] = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 addingSymbolicTraits:2 options:0];
    v28 = [UIFont fontWithDescriptor:v29[0] size:0.0];
    otherCountriesSectionTitle = [(BuddyLocaleController *)selfCopy otherCountriesSectionTitle];
    language = [(BuddyLocaleController *)selfCopy language];
    v16 = sub_1001961E0(otherCountriesSectionTitle, language);
    v26 = [v16 mutableCopy];

    v17 = [v26 length];
    v36 = 0;
    v35 = v17;
    v37 = 0;
    v38 = v17;
    [v26 addAttribute:NSFontAttributeName value:v28 range:{0, v17}];
    otherLanguagesSectionHeader3 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
    sectionLabel2 = [(BuddyTableSectionHeaderView *)otherLanguagesSectionHeader3 sectionLabel];
    [(UILabel *)sectionLabel2 setAttributedText:v26];

    language2 = [(BuddyLocaleController *)selfCopy language];
    v21 = [NSParagraphStyle defaultWritingDirectionForLanguage:language2];

    if (v21 == NSWritingDirectionRightToLeft)
    {
      otherLanguagesSectionHeader4 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
      sectionLabel3 = [(BuddyTableSectionHeaderView *)otherLanguagesSectionHeader4 sectionLabel];
      [(UILabel *)sectionLabel3 setTextAlignment:2];
    }

    else
    {
      otherLanguagesSectionHeader4 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
      sectionLabel3 = [(BuddyTableSectionHeaderView *)otherLanguagesSectionHeader4 sectionLabel];
      [(UILabel *)sectionLabel3 setTextAlignment:0];
    }

    otherLanguagesSectionHeader5 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&otherCountriesSectionTitle, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(v29, 0);
  }

  else
  {
    otherLanguagesSectionHeader5 = 0;
  }

  objc_storeStrong(&location, 0);
  v24 = otherLanguagesSectionHeader5;

  return v24;
}

- (id)_viewForHeaderInSection:(int64_t)section inTableView:(id)view
{
  selfCopy = self;
  v35 = a2;
  sectionCopy = section;
  location = 0;
  objc_storeStrong(&location, view);
  if (sectionCopy == 2)
  {
    otherLanguagesSectionHeader = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
    v5 = otherLanguagesSectionHeader == 0;

    if (v5)
    {
      [(BuddyLocaleController *)selfCopy _topPaddingForSectionHeader];
      v32[5] = v6;
      v7 = [BuddyTableSectionHeaderView alloc];
      sub_1000D8BD4();
      v32[1] = v8;
      v32[2] = v9;
      v32[3] = v10;
      v32[4] = v11;
      v12 = [(BuddyTableSectionHeaderView *)v7 initWithPadding:*&v8, *&v9, *&v10, *&v11];
      [(BuddyLocaleController *)selfCopy setOtherLanguagesSectionHeader:v12];
    }

    v32[0] = UIFontTextStyleTitle2;
    v13 = +[BYDevice currentDevice];
    v14 = [v13 size];

    if (v14 == 2)
    {
      objc_storeStrong(v32, UIFontTextStyleTitle3);
    }

    otherLanguagesSectionHeader2 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
    sectionLabel = [(BuddyTableSectionHeaderView *)otherLanguagesSectionHeader2 sectionLabel];
    [(UILabel *)sectionLabel setLineBreakMode:0];

    v31 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v32[0] addingSymbolicTraits:2 options:0];
    v30 = [UIFont fontWithDescriptor:v31 size:0.0];
    otherCountriesSectionTitle = [(BuddyLocaleController *)selfCopy otherCountriesSectionTitle];
    language = [(BuddyLocaleController *)selfCopy language];
    v18 = sub_1001961E0(otherCountriesSectionTitle, language);
    v28 = [v18 mutableCopy];

    v19 = [v28 length];
    v39 = 0;
    v38 = v19;
    v40 = 0;
    v41 = v19;
    [v28 addAttribute:NSFontAttributeName value:v30 range:{0, v19}];
    otherLanguagesSectionHeader3 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
    sectionLabel2 = [(BuddyTableSectionHeaderView *)otherLanguagesSectionHeader3 sectionLabel];
    [(UILabel *)sectionLabel2 setAttributedText:v28];

    language2 = [(BuddyLocaleController *)selfCopy language];
    v23 = [NSParagraphStyle defaultWritingDirectionForLanguage:language2];

    if (v23 == NSWritingDirectionRightToLeft)
    {
      otherLanguagesSectionHeader4 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
      sectionLabel3 = [(BuddyTableSectionHeaderView *)otherLanguagesSectionHeader4 sectionLabel];
      [(UILabel *)sectionLabel3 setTextAlignment:2];
    }

    else
    {
      otherLanguagesSectionHeader4 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
      sectionLabel3 = [(BuddyTableSectionHeaderView *)otherLanguagesSectionHeader4 sectionLabel];
      [(UILabel *)sectionLabel3 setTextAlignment:0];
    }

    otherLanguagesSectionHeader5 = [(BuddyLocaleController *)selfCopy otherLanguagesSectionHeader];
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&otherCountriesSectionTitle, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(v32, 0);
  }

  else
  {
    otherLanguagesSectionHeader5 = 0;
  }

  objc_storeStrong(&location, 0);
  v26 = otherLanguagesSectionHeader5;

  return v26;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  featureFlags = [(BuddyLocaleController *)selfCopy featureFlags];
  isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (isSolariumEnabled)
  {
    [(BuddyLocaleController *)selfCopy _solarium_heightForHeaderInSection:sectionCopy inTableView:location[0]];
  }

  else
  {
    [(BuddyLocaleController *)selfCopy _heightForHeaderInSection:sectionCopy inTableView:location[0]];
  }

  v12 = v7;
  objc_storeStrong(location, 0);
  return v12;
}

- (double)_solarium_heightForHeaderInSection:(int64_t)section inTableView:(id)view
{
  selfCopy = self;
  v13 = a2;
  sectionCopy = section;
  location = 0;
  objc_storeStrong(&location, view);
  if (sectionCopy == 2 && [(BuddyLocaleController *)selfCopy _shouldShowOtherLanguagesHeader])
  {
    v10 = [(BuddyLocaleController *)selfCopy tableView:location viewForHeaderInSection:sectionCopy];
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

  else if (sectionCopy == 1 && [(BuddyLocaleController *)selfCopy shouldShowSafetyAndHandlingSection])
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

- (double)_heightForHeaderInSection:(int64_t)section inTableView:(id)view
{
  selfCopy = self;
  v13 = a2;
  sectionCopy = section;
  location = 0;
  objc_storeStrong(&location, view);
  if (sectionCopy == 2)
  {
    v10 = [(BuddyLocaleController *)selfCopy tableView:location viewForHeaderInSection:2];
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

  else if (sectionCopy == 1 && [(BuddyLocaleController *)selfCopy shouldShowSafetyAndHandlingSection])
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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  LOBYTE(path) = [v6 section] != 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return path & 1;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, cell);
  v7 = 0;
  objc_storeStrong(&v7, path);
  [v8 setSeparatorStyle:1];
  [v8 _setShouldHaveFullLengthTopSeparator:0];
  [v8 _setShouldHaveFullLengthBottomSeparator:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)internalMenuActions
{
  selfCopy = self;
  v16[1] = a2;
  if ([(BuddyLocaleController *)self showLocalizedNames])
  {
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000D97D0;
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
    v8 = sub_1000D9824;
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

- (double)_topPaddingForSectionHeader
{
  selfCopy = self;
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
  selfCopy = self;
  v19[1] = a2;
  language = [(BuddyLocaleController *)self language];
  v3 = [NSLocale localeWithLocaleIdentifier:language];
  v19[0] = [(NSLocale *)v3 countryCode];

  localeComposite = [(BuddyLocaleController *)selfCopy localeComposite];
  dataSource = [(BuddyLocaleComposite *)localeComposite dataSource];
  numberOfRecommendedLocales = [(BYLocaleDataSource *)dataSource numberOfRecommendedLocales];

  if (numberOfRecommendedLocales)
  {
    localeComposite2 = [(BuddyLocaleController *)selfCopy localeComposite];
    dataSource2 = [(BuddyLocaleComposite *)localeComposite2 dataSource];
    v9 = [(BYLocaleDataSource *)dataSource2 recommendedLocaleAtIndex:0];
    code = [v9 code];
    v11 = v19[0];
    v19[0] = code;
  }

  v12 = [NSLocale containingRegionOfRegion:v19[0]];
  integerValue = [v12 integerValue];

  location[1] = integerValue;
  location[0] = [(BuddyLocaleController *)selfCopy _micaAssetNameForRegion:integerValue];
  if (!location[0])
  {
    v14 = [NSLocale containingContinentOfRegion:v19[0]];
    integerValue2 = [v14 integerValue];

    location[0] = [(BuddyLocaleController *)selfCopy _micaAssetNameForRegion:integerValue2, integerValue2];
    if (!location[0])
    {
      location[0] = [(BuddyLocaleController *)selfCopy _micaAssetNameForRegion:19];
    }
  }

  v21 = location[0];
  objc_storeStrong(location, 0);
  objc_storeStrong(v19, 0);
  v16 = v21;

  return v16;
}

- (id)_micaAssetNameForRegion:(int64_t)region
{
  if (region == 2)
  {
LABEL_12:
    v4 = @"GlobeEUAfrica";
    goto LABEL_14;
  }

  if (region == 9)
  {
LABEL_10:
    v4 = @"GlobeAsiaOceania";
    goto LABEL_14;
  }

  if (region != 10 && region != 19)
  {
    if (region == 34)
    {
      v4 = @"GlobeSouthAsia";
      goto LABEL_14;
    }

    if (region != 142)
    {
      if (region != 150)
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
  dataSource = [(BuddyLocaleComposite *)v2 dataSource];
  v4 = [(BYLocaleDataSource *)dataSource numberOfRecommendedLocales]!= 0;

  return v4;
}

- (BOOL)shouldShowSafetyAndHandlingSection
{
  localeComposite = [(BuddyLocaleController *)self localeComposite];
  dataSource = [(BuddyLocaleComposite *)localeComposite dataSource];
  numberOfRecommendedLocales = [(BYLocaleDataSource *)dataSource numberOfRecommendedLocales];

  if (numberOfRecommendedLocales != 1)
  {
    return 0;
  }

  safetyAndHandlingManager = [(BuddyLocaleController *)self safetyAndHandlingManager];
  safetyAndHandlingViewControllerProvider = [(BuddyLocaleController *)self safetyAndHandlingViewControllerProvider];
  v9 = [(BYBuddySafetyAndHandlingManager *)safetyAndHandlingManager canShowShowSafetyAndHandlingCardUsing:safetyAndHandlingViewControllerProvider];

  return v9;
}

- (id)safetyAndHandlingCountryCode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [NSIndexPath indexPathForRow:0 inSection:0];
  v2 = [(BuddyLocaleController *)selfCopy countryAtIndexPath:location[0]];
  code = [v2 code];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return code;
}

- (BYBuddySafetyAndHandlingBundleLocalizationProvider)safetyAndHandlingLocalizationProvider
{
  if (!self->_safetyAndHandlingLocalizationProvider)
  {
    v2 = [BYBuddySafetyAndHandlingBundleLocalizationProvider alloc];
    safetyAndHandlingLanguageCode = [(BuddyLocaleController *)self safetyAndHandlingLanguageCode];
    v4 = [(BYBuddySafetyAndHandlingBundleLocalizationProvider *)v2 initWithLanguageCode:safetyAndHandlingLanguageCode];
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
    safetyAndHandlingLanguageCode = [(BuddyLocaleController *)self safetyAndHandlingLanguageCode];
    safetyAndHandlingCountryCode = [(BuddyLocaleController *)self safetyAndHandlingCountryCode];
    v5 = [(BYBuddySafetyAndHandlingViewControllerProvider *)v2 initWithLanguageCode:safetyAndHandlingLanguageCode regionCode:safetyAndHandlingCountryCode];
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