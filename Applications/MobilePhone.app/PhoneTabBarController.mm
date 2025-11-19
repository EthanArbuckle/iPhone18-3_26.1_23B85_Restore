@interface PhoneTabBarController
+ (id)defaultPNGName;
- (BOOL)handleUserActivityContinuation:(id)a3;
- (BOOL)shouldShowLastViewedTabGivenLastViewedTab:(int)a3;
- (BOOL)shouldSnapshot;
- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4;
- (MPContactSearchManager)contactSearchManager;
- (PHContactsSearchResultsRanker)ranker;
- (PhoneTabBarController)initWithRecentsController:(id)a3;
- (id)controllerForTabViewType:(int)a3;
- (id)makeFavoritesListViewControllerWith:(id)a3 recentsViewController:(id)a4 navigationController:(id)a5;
- (id)tabForViewController:(id)a3;
- (id)viewControllerForTabViewType:(int)a3;
- (int)currentTabViewType;
- (int)defaultTabViewType;
- (int)tabTypeForTab:(id)a3;
- (int)tabTypeForViewController:(id)a3;
- (int)tabViewTypeToReturnTo:(id)a3;
- (unint64_t)dialerSupportedInterfaceOrientations;
- (void)_badgeChanged:(id)a3;
- (void)_startListeningForBadgeChangedNotifications:(id)a3;
- (void)_stopListeningForBadgeChangedNotifications:(id)a3;
- (void)_updateAllBadges:(BOOL)a3;
- (void)_updateBottomTabs:(BOOL)a3 lastViewTypeNumber:(id)a4;
- (void)_willAppearInRemoteViewController;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)applyDetailsPresenterToSearchViewController:(id)a3 withRecentsViewController:(id)a4 andPresentingFromViewController:(id)a5;
- (void)dealloc;
- (void)didPressAddContactButton:(int64_t)a3;
- (void)didPressSearchButton:(id)a3 unformattedNumber:(id)a4;
- (void)dismissScreenUnknownCallers:(id)a3;
- (void)enableScreenUnknownCallers:(id)a3;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3;
- (void)handleURL:(id)a3;
- (void)keyPadSearchFor:(id)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5;
- (void)keyPadViewControllerDidAppear:(BOOL)a3;
- (void)openVoicemails;
- (void)popCurrentNavigationControllerToRootViewControllerAnimated:(BOOL)a3;
- (void)prepareForSnapshot;
- (void)presentAppleSupportGuidedHelp;
- (void)presentContactsSearchFor:(id)a3;
- (void)presentSearch:(id)a3;
- (void)registerForBadgeUpdateNotification;
- (void)setSelectedTab:(id)a3;
- (void)showFavoritesTab:(BOOL)a3 recentsTab:(BOOL)a4 contactsTab:(BOOL)a5 keypadTab:(BOOL)a6 voicemailTab:(BOOL)a7 prewarm:(int)a8 hostedInRemoteViewController:(BOOL)a9;
- (void)showReceptionistOnboarding;
- (void)switchToMostRecentlyUsedTabType:(id)a3;
- (void)switchToTab:(int)a3;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)transitionCompleted;
- (void)updateListenersForState:(int64_t)a3;
- (void)updateSelectedTab:(id)a3;
- (void)updateSelectedViewController:(id)a3;
- (void)updateUserActivityState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willPresentSimLineSwitcher;
@end

@implementation PhoneTabBarController

- (PHContactsSearchResultsRanker)ranker
{
  ranker = self->_ranker;
  if (!ranker)
  {
    v4 = objc_opt_new();
    v5 = self->_ranker;
    self->_ranker = v4;

    ranker = self->_ranker;
  }

  return ranker;
}

- (PhoneTabBarController)initWithRecentsController:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PhoneTabBarController;
  v6 = [(PhoneTabBarController *)&v21 init];
  if (v6)
  {
    v7 = +[ILClassificationController sharedInstance];
    [v7 activateWithCompletion:0];

    [(PhoneTabBarController *)v6 setDelegate:v6];
    [(PhoneTabBarController *)v6 setShouldSwitchToMostRecentViewType:1];
    [(PhoneTabBarController *)v6 setIsAllowedToSwitchToSearch:0];
    v8 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v6->_featureFlags;
    v6->_featureFlags = v8;

    v10 = objc_alloc_init(MPAnalyticsLogger);
    analyticsLogger = v6->_analyticsLogger;
    v6->_analyticsLogger = v10;

    if ([(TUFeatureFlags *)v6->_featureFlags callExperiencePhoneAppEnabled])
    {
      objc_storeStrong(&v6->_phoneRecentsController, a3);
    }

    if (([UIApp tabBarFillsScreen] & 1) == 0)
    {
      [(PhoneTabBarController *)v6 setDefinesPresentationContext:1];
    }

    if ([UIApp userInterfaceStyle] == 1)
    {
      v12 = [(PhoneTabBarController *)v6 tabBar];
      [v12 setBarStyle:1];
    }

    if ([UIApp userInterfaceStyle] == 1)
    {
      [(PhoneTabBarController *)v6 setDefinesPresentationContext:1];
      [(PhoneTabBarController *)v6 setProvidesPresentationContextTransitionStyle:1];
      [(PhoneTabBarController *)v6 setModalTransitionStyle:14];
    }

    if (+[UIApplication shouldMakeUIForDefaultPNG])
    {
      v13 = [UIImage alloc];
      v14 = +[NSData data];
      v15 = [v13 initWithData:v14];

      v16 = [(PhoneTabBarController *)v6 tabBar];
      [v16 _setSelectionIndicatorImage:v15];
    }

    v17 = PHPreferencesGetValueInDomain();
    [(PhoneTabBarController *)v6 _updateBottomTabs:0 lastViewTypeNumber:v17];
    TUAddTelephonyCenterObserver();
    v18 = objc_opt_new();
    bootSession = v6->_bootSession;
    v6->_bootSession = v18;

    [(PhoneTabBarController *)v6 switchToMostRecentlyUsedTabType:v17];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  TURemoveTelephonyCenterObserver();
  favoritesNavigationController = self->_favoritesNavigationController;
  self->_favoritesNavigationController = 0;

  recentsNavigationController = self->_recentsNavigationController;
  self->_recentsNavigationController = 0;

  favoritesViewController = self->_favoritesViewController;
  self->_favoritesViewController = 0;

  recentsTableViewController = self->_recentsTableViewController;
  self->_recentsTableViewController = 0;

  recentsViewController = self->_recentsViewController;
  self->_recentsViewController = 0;

  contactsViewController = self->_contactsViewController;
  self->_contactsViewController = 0;

  voicemailViewController = self->_voicemailViewController;
  self->_voicemailViewController = 0;

  v11.receiver = self;
  v11.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v11 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v17 viewDidLoad];
  v3 = +[CNKFeatures sharedInstance];
  v4 = [v3 isUIFluidTransitionsEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = +[UIColor clearColor];
    v6 = [(PhoneTabBarController *)self view];
    [v6 setBackgroundColor:v5];
  }

  v7 = [(PhoneTabBarController *)self view];
  [v7 setOpaque:0];

  [(PhoneTabBarController *)self _checkMailboxUsage];
  v8 = +[CAUILayoutManager shared];
  -[PhoneTabBarController updateListenersForState:](self, "updateListenersForState:", [v8 current]);

  objc_initWeak(&location, self);
  v9 = +[CAUILayoutManager shared];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __36__PhoneTabBarController_viewDidLoad__block_invoke;
  v14 = &unk_100285A80;
  objc_copyWeak(&v15, &location);
  [v9 addObserver:self initialUpdate:0 onUpdate:&v11];

  v10 = [NSNotificationCenter defaultCenter:v11];
  [v10 addObserver:self selector:"handleUIApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __36__PhoneTabBarController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained[5];
    WeakRetained[5] = 0;
    v5 = WeakRetained;

    [v5 _updateBottomTabs:0 lastViewTypeNumber:0];
    [v5 updateListenersForState:a2];
    WeakRetained = v5;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v7 viewWillAppear:a3];
  if (-[PhoneTabBarController currentTabViewType](self, "currentTabViewType") == 5 && ([UIApp hasEnhancedVoicemail] & 1) == 0 && (objc_msgSend(UIApp, "isRunningTest") & 1) == 0 && (objc_msgSend(UIApp, "launchedToTest") & 1) == 0)
  {
    [(PhoneTabBarController *)self switchToTab:[(PhoneTabBarController *)self defaultTabViewType]];
  }

  if ([UIApp shouldShowReceptionistOnboarding])
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      *buf = 138412290;
      v9 = v5;
      v6 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ is handling viewWillAppear to show Receptionist onboarding", buf, 0xCu);
    }

    [(PhoneTabBarController *)self showReceptionistOnboarding];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v5 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"PHPhoneTabBarControllerViewDidAppearNotification" object:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v3 viewDidDisappear:a3];
}

- (void)_startListeningForBadgeChangedNotifications:(id)a3
{
  v4 = a3;
  v6 = +[NSNotificationCenter defaultCenter];
  v5 = objc_opt_class();

  [v6 addObserver:self selector:"_badgeChanged:" name:@"com.apple.mobilephone.BadgeChanged" object:v5];
}

- (void)_stopListeningForBadgeChangedNotifications:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = +[NSNotificationCenter defaultCenter];
    v5 = objc_opt_class();

    [v6 removeObserver:self name:@"com.apple.mobilephone.BadgeChanged" object:v5];
  }
}

- (void)registerForBadgeUpdateNotification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __59__PhoneTabBarController_registerForBadgeUpdateNotification__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  if (registerForBadgeUpdateNotification_onceToken != -1)
  {
    dispatch_once(&registerForBadgeUpdateNotification_onceToken, block);
  }
}

void __59__PhoneTabBarController_registerForBadgeUpdateNotification__block_invoke(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_badgeChanged:" name:@"PhoneApplicationLocaleChangedNotification" object:*(a1 + 32)];
}

- (void)_updateAllBadges:(BOOL)a3
{
  v3 = a3;
  [(PhoneTabBarController *)self registerForBadgeUpdateNotification];
  if (self->_voicemailViewController)
  {
    v5 = [(PhoneTabBarController *)self tabBar];
    v6 = [v5 items];
    v7 = [v6 count];

    if (v7 >= 5)
    {
      [objc_opt_class() badge];
      v8 = PhoneStringForBadgeValue();
      v9 = [(PhoneTabBarController *)self tabBar];
      v10 = [v9 items];
      v11 = [v10 objectAtIndex:4];
      [v11 setBadgeValue:v8];
    }
  }

  if (v3)
  {

    [(PhoneTabBarController *)self performSelector:"_badgeChanged:" withObject:self afterDelay:0.0];
  }

  else
  {
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 postNotificationName:PhoneRootViewControllerApplicationBadgeChangedNotification object:0];
  }
}

- (void)_badgeChanged:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhoneTabBarController badge changed notification %@", &v6, 0xCu);
  }

  [(PhoneTabBarController *)self _updateAllBadges:0];
}

- (void)showFavoritesTab:(BOOL)a3 recentsTab:(BOOL)a4 contactsTab:(BOOL)a5 keypadTab:(BOOL)a6 voicemailTab:(BOOL)a7 prewarm:(int)a8 hostedInRemoteViewController:(BOOL)a9
{
  v90 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [NSMutableArray arrayWithCapacity:5];
  v94 = +[(PHApplicationServices *)MPApplicationServices];
  v92 = [v94 callProviderManager];
  v93 = [v94 suggestedContactStore];
  v91 = [v94 metadataCache];
  if (!v13)
  {
    v15 = self;
    favoritesNavigationController = self->_favoritesNavigationController;
    self->_favoritesNavigationController = 0;

    [(PhoneTabBarController *)v15 _stopListeningForBadgeChangedNotifications:v15->_favoritesViewController];
    favoritesViewController = self->_favoritesViewController;
    self->_favoritesViewController = 0;

    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_5:
    if (!v15->_recentsTableViewController)
    {
      v18 = [(PhoneTabBarController *)v15 featureFlags];
      v19 = [v18 callExperiencePhoneAppEnabled];

      if (v19)
      {
        v20 = [(PhoneRecentsViewController *)self->_phoneRecentsController recentsNavigationController];
        recentsNavigationController = self->_recentsNavigationController;
        self->_recentsNavigationController = v20;
      }

      else
      {
        v38 = [[PhoneNavigationController alloc] initWithNibName:0 bundle:0];
        v39 = self->_recentsNavigationController;
        self->_recentsNavigationController = v38;

        recentsNavigationController = [UIApp recentsController];
        v40 = [[MPRecentsTableViewController alloc] initWithRecentsController:recentsNavigationController];
        recentsTableViewController = self->_recentsTableViewController;
        self->_recentsTableViewController = v40;

        [(PhoneTabBarController *)self _startListeningForBadgeChangedNotifications:self->_recentsTableViewController];
        v42 = +[(PHApplicationServices *)MPApplicationServices];
        v43 = [v42 voicemailController];

        [(PhoneNavigationController *)self->_recentsNavigationController setVoicemailController:v43];
        v108 = self->_recentsTableViewController;
        v44 = [NSArray arrayWithObjects:&v108 count:1];
        [(PhoneNavigationController *)self->_recentsNavigationController setViewControllers:v44];
      }

      v15 = self;
    }

    v36 = [(PhoneTabBarController *)v15 featureFlags];
    v45 = [v36 callExperiencePhoneAppEnabled];

    if (v45)
    {
      [v14 addObject:self->_phoneRecentsController];
    }

    else
    {
      [v14 addObject:self->_recentsNavigationController];
    }

    goto LABEL_24;
  }

  if (!self->_favoritesViewController)
  {
    v22 = [v94 favoritesController];
    v23 = [[PhoneNavigationController alloc] initWithNibName:0 bundle:0];
    v24 = self->_favoritesNavigationController;
    self->_favoritesNavigationController = v23;

    v25 = [(PhoneTabBarController *)self featureFlags];
    v26 = [v25 phoneClassicNewFavoritesEnabled];

    if (v26)
    {
      v27 = [(PhoneRecentsViewController *)self->_phoneRecentsController recentsViewController];
      v28 = [(PhoneTabBarController *)self makeFavoritesListViewControllerWith:v22 recentsViewController:v27 navigationController:self->_favoritesNavigationController];
      v29 = self;
      v30 = self->_favoritesViewController;
      self->_favoritesViewController = v28;
    }

    else
    {
      v31 = [[MPFavoritesTableViewController alloc] initWithFavoritesController:v22];
      v29 = self;
      v27 = self->_favoritesViewController;
      self->_favoritesViewController = &v31->super.super.super;
    }

    [(PhoneTabBarController *)v29 _startListeningForBadgeChangedNotifications:v29->_favoritesViewController];
    v109 = v29->_favoritesViewController;
    v32 = [NSArray arrayWithObjects:&v109 count:1];
    [(PhoneNavigationController *)self->_favoritesNavigationController setViewControllers:v32];

    if (a8 == 1)
    {
      [v22 fetchIfNeeded];
    }
  }

  [v14 addObject:self->_favoritesNavigationController];
  v15 = self;
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_15:
  v33 = v15->_recentsNavigationController;
  v15->_recentsNavigationController = 0;

  v34 = self;
  if (self->_recentsTableViewController)
  {
    [(PhoneTabBarController *)self _stopListeningForBadgeChangedNotifications:?];
    v35 = self->_recentsTableViewController;
    self->_recentsTableViewController = 0;

    v34 = self;
  }

  v36 = 24;
  if (v34->_recentsViewController)
  {
    [(PhoneTabBarController *)v34 _stopListeningForBadgeChangedNotifications:?];
    recentsViewController = self->_recentsViewController;
    self->_recentsViewController = 0;

LABEL_24:
    v34 = self;
  }

  contactsViewController = v34->_contactsViewController;
  if (v11)
  {
    if (!contactsViewController)
    {
      v47 = [PHContactsViewController alloc];
      if (a9)
      {
        v48 = 1;
      }

      else
      {
        v36 = +[CAUILayoutManager shared];
        v48 = [v36 current] == 0;
      }

      v50 = [(PHContactsViewController *)v47 initWithContactStore:v93 allowsLargeTitles:1 allowsSearch:v48];
      v51 = self->_contactsViewController;
      self->_contactsViewController = v50;

      if (!a9)
      {
      }

      [(PhoneTabBarController *)self _startListeningForBadgeChangedNotifications:self->_contactsViewController];
      contactsViewController = self->_contactsViewController;
    }

    [v14 addObject:contactsViewController];
  }

  else
  {
    [(PhoneTabBarController *)v34 _stopListeningForBadgeChangedNotifications:contactsViewController];
    v49 = self->_contactsViewController;
    self->_contactsViewController = 0;
  }

  if (v10 && [UIApp showsPhoneDialer])
  {
    keypadViewController = self->_keypadViewController;
    if (!keypadViewController)
    {
      v53 = [[MPKeypadViewController alloc] initWithContactStore:v93 enableSmartDialer:1 orientationProvider:self];
      v54 = self->_keypadViewController;
      self->_keypadViewController = v53;

      [(MPKeypadViewController *)self->_keypadViewController setDelegate:?];
      [(MPKeypadViewController *)self->_keypadViewController setCallProviderManager:v92];
      [(MPKeypadViewController *)self->_keypadViewController setMetadataCache:v91];
      v55 = [UIApp userInterfaceStyle];
      keypadViewController = self->_keypadViewController;
      if (v55 == 1)
      {
        [(MPKeypadViewController *)self->_keypadViewController setEdgesForExtendedLayout:0];
        keypadViewController = self->_keypadViewController;
      }
    }

    [v14 addObject:keypadViewController];
  }

  else
  {
    v56 = self->_keypadViewController;
    self->_keypadViewController = 0;
  }

  voicemailViewController = self->_voicemailViewController;
  if (v90)
  {
    if (!voicemailViewController)
    {
      v58 = +[(PHApplicationServices *)MPApplicationServices];
      v59 = [v58 voicemailController];

      v60 = objc_alloc_init(PHVoicemailNavigationController);
      v61 = self->_voicemailViewController;
      self->_voicemailViewController = v60;

      [(PhoneNavigationController *)self->_voicemailViewController setVoicemailController:v59];
      [(PhoneTabBarController *)self _startListeningForBadgeChangedNotifications:self->_voicemailViewController];

      voicemailViewController = self->_voicemailViewController;
    }

    [v14 addObject:voicemailViewController];
  }

  else
  {
    [(PhoneTabBarController *)self _stopListeningForBadgeChangedNotifications:voicemailViewController];
    v62 = self->_voicemailViewController;
    self->_voicemailViewController = 0;
  }

  v63 = +[NSMutableArray array];
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v64 = v14;
  v65 = [v64 countByEnumeratingWithState:&v103 objects:v107 count:16];
  if (v65)
  {
    v66 = *v104;
    do
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v104 != v66)
        {
          objc_enumerationMutation(v64);
        }

        v68 = *(*(&v103 + 1) + 8 * i);
        v69 = [v68 tab];
        v70 = v69 == 0;

        if (v70)
        {
          v72 = v68;
          v73 = [NSNumber numberWithInt:[(PhoneTabBarController *)self tabTypeForViewController:v72]];
          v71 = [NSString stringWithFormat:@"%@", v73];

          v74 = [UITab alloc];
          v75 = [v72 tabBarIconName];
          v76 = [v72 tabBarIconImage];
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = __125__PhoneTabBarController_showFavoritesTab_recentsTab_contactsTab_keypadTab_voicemailTab_prewarm_hostedInRemoteViewController___block_invoke;
          v102[3] = &unk_100285AA8;
          v102[4] = v72;
          v77 = [v74 initWithTitle:v75 image:v76 identifier:v71 viewControllerProvider:v102];

          [v63 addObject:v77];
        }

        else
        {
          v71 = [v68 tab];
          [v63 addObject:v71];
        }
      }

      v65 = [v64 countByEnumeratingWithState:&v103 objects:v107 count:16];
    }

    while (v65);
  }

  v78 = self;
  if (self->_phoneRecentsController)
  {
    v79 = +[CAUILayoutManager shared];
    v80 = [v79 current] == 1;

    v78 = self;
    if (v80)
    {
      searchNavigationController = self->_searchNavigationController;
      if (!searchNavigationController || ([(PhoneNavigationController *)searchNavigationController tab], v82 = objc_claimAutoreleasedReturnValue(), v83 = v82 == 0, v82, v83))
      {
        v84 = [[UISearchController alloc] initWithSearchResultsController:0];
        v85 = [[_TtC11MobilePhone23SearchTabViewController alloc] initWithSearchController:v84];
        v86 = [[PhoneNavigationController alloc] initWithRootViewController:v85];
        v87 = self->_searchNavigationController;
        self->_searchNavigationController = v86;

        [(SearchTabViewController *)v85 setHostingNavigationController:self->_searchNavigationController];
        [(SearchTabViewController *)v85 setDelegate:v85];
        objc_initWeak(&location, v85);
        objc_initWeak(&from, self->_searchNavigationController);
        v97[0] = _NSConcreteStackBlock;
        v97[1] = 3221225472;
        v97[2] = __125__PhoneTabBarController_showFavoritesTab_recentsTab_contactsTab_keypadTab_voicemailTab_prewarm_hostedInRemoteViewController___block_invoke_2;
        v97[3] = &unk_100285AD0;
        objc_copyWeak(&v98, &location);
        objc_copyWeak(&v99, &from);
        v97[4] = self;
        [(SearchTabViewController *)v85 setSearchControllerProvider:v97];
        [v84 setSearchResultsUpdater:v85];
        [v84 setDelegate:v85];
        [v84 setShowsSearchResultsController:1];
        v88 = [(SearchTabViewController *)v85 navigationItem];
        [v88 setSearchController:v84];

        v96[0] = _NSConcreteStackBlock;
        v96[1] = 3221225472;
        v96[2] = __125__PhoneTabBarController_showFavoritesTab_recentsTab_contactsTab_keypadTab_voicemailTab_prewarm_hostedInRemoteViewController___block_invoke_3;
        v96[3] = &unk_100285AA8;
        v96[4] = self;
        v89 = [[UISearchTab alloc] initWithViewControllerProvider:v96];
        [v89 setAutomaticallyActivatesSearch:1];
        [v63 addObject:v89];

        objc_destroyWeak(&v99);
        objc_destroyWeak(&v98);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }

      else
      {
        v84 = [(PhoneNavigationController *)self->_searchNavigationController tab];
        [v63 addObject:v84];
      }

      v78 = self;
    }
  }

  [(PhoneTabBarController *)v78 registerForBadgeUpdateNotification];
  [(PhoneTabBarController *)self setTabs:v63 animated:1];
}

id __125__PhoneTabBarController_showFavoritesTab_recentsTab_contactsTab_keypadTab_voicemailTab_prewarm_hostedInRemoteViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (v3 = WeakRetained, v4 = objc_loadWeakRetained((a1 + 48)), v4, v3, v4))
  {
    v5 = *(a1 + 32);
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [*(*(a1 + 32) + 96) recentsViewController];
    v8 = objc_loadWeakRetained((a1 + 48));
    [v5 applyDetailsPresenterToSearchViewController:v6 withRecentsViewController:v7 andPresentingFromViewController:v8];

    v9 = [UIApp recentsController];
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = [_TtC11MobilePhone23SearchTabViewController searchControllersForDifferentSectionsUsingRecentsController:v9 with:v10 and:v10 in:v11 hostingNavigationController:v11];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (void)popCurrentNavigationControllerToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PhoneTabBarController *)self currentTabViewType];
  if (v5 == 6)
  {
    v6 = 88;
LABEL_9:
    v8 = [*(&self->super.super.super.super.isa + v6) popToRootViewControllerAnimated:v3];
    return;
  }

  if (v5 != 2)
  {
    if (v5 != 1)
    {
      return;
    }

    v6 = 8;
    goto LABEL_9;
  }

  v9 = [(PhoneRecentsViewController *)self->_phoneRecentsController recentsNavigationController];
  v7 = [v9 popToRootViewControllerAnimated:v3];
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v3 applicationDidResume];
  if ([(PhoneTabBarController *)self shouldSwitchToMostRecentViewType])
  {
    [(PhoneTabBarController *)self switchToMostRecentlyUsedTabType:0];
  }
}

- (void)switchToMostRecentlyUsedTabType:(id)a3
{
  v4 = [(PhoneTabBarController *)self tabViewTypeToReturnTo:a3];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resuming to tab type: %d", v6, 8u);
  }

  [(PhoneTabBarController *)self switchToTab:v4];
}

- (void)applicationWillSuspend
{
  v3.receiver = self;
  v3.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v3 applicationWillSuspend];
  [(PhoneTabBarController *)self setShouldSwitchToMostRecentViewType:1];
  [(PhoneTabBarController *)self setIsAllowedToSwitchToSearch:1];
}

- (void)setSelectedTab:(id)a3
{
  v4 = a3;
  [(PhoneTabBarController *)self updateSelectedTab:v4];
  analyticsLogger = self->_analyticsLogger;
  v9[0] = @"action";
  v9[1] = @"tab";
  v10[0] = &off_100295390;
  v6 = [(PhoneTabBarController *)self tabTypeForTab:v4];

  v7 = [NSNumber numberWithInt:v6];
  v10[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [(MPAnalyticsLogger *)analyticsLogger logEvent:@"com.apple.MobilePhone.TabSwitch" withCoreAnalyticsDictionary:v8];
}

- (void)updateSelectedTab:(id)a3
{
  v8.receiver = self;
  v8.super_class = PhoneTabBarController;
  v4 = a3;
  [(PhoneTabBarController *)&v8 setSelectedTab:v4];
  [(PhoneTabBarController *)self popCurrentNavigationControllerToRootViewControllerAnimated:0];
  v5 = [(PhoneTabBarController *)self tabTypeForTab:v4];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __43__PhoneTabBarController_updateSelectedTab___block_invoke;
  v6[3] = &unk_100285AF8;
  v7 = v5;
  v6[4] = self;
  dispatch_async(&_dispatch_main_q, v6);
  [(PhoneTabBarController *)self setShouldSwitchToMostRecentViewType:0];
}

void __43__PhoneTabBarController_updateSelectedTab___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity continuity - Activity needs saving as the tab bar tab changed to %d", v8, 8u);
  }

  v4 = [*(a1 + 32) userActivity];

  if (!v4)
  {
    v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.mobilephone"];
    [*(a1 + 32) setUserActivity:v5];

    v6 = [*(a1 + 32) userActivity];
    [v6 becomeCurrent];
  }

  v7 = [*(a1 + 32) userActivity];
  [v7 setNeedsSave:1];
}

- (id)tabForViewController:(id)a3
{
  v4 = [(PhoneTabBarController *)self tabTypeForViewController:a3];
  if (v4 == 6)
  {
    v5 = [(PhoneTabBarController *)self tabForIdentifier:@"com.apple.UIKit.Search"];
  }

  else
  {
    v6 = [NSNumber numberWithInt:v4];
    v7 = [NSString stringWithFormat:@"%@", v6];

    v5 = [(PhoneTabBarController *)self tabForIdentifier:v7];
  }

  return v5;
}

- (void)updateSelectedViewController:(id)a3
{
  v4 = a3;
  v5 = [(PhoneTabBarController *)self tabForViewController:v4];
  if (v5)
  {
    [(PhoneTabBarController *)self updateSelectedTab:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PhoneTabBarController;
    [(PhoneTabBarController *)&v8 setSelectedViewController:v4];
    [(PhoneTabBarController *)self popCurrentNavigationControllerToRootViewControllerAnimated:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __54__PhoneTabBarController_updateSelectedViewController___block_invoke;
    v6[3] = &unk_100285AF8;
    v7 = [(PhoneTabBarController *)self tabTypeForViewController:v4];
    v6[4] = self;
    dispatch_async(&_dispatch_main_q, v6);
    [(PhoneTabBarController *)self setShouldSwitchToMostRecentViewType:0];
  }
}

void __54__PhoneTabBarController_updateSelectedViewController___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity continuity - Activity needs saving as the tab bar tab changed to %d", v8, 8u);
  }

  v4 = [*(a1 + 32) userActivity];

  if (!v4)
  {
    v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.mobilephone"];
    [*(a1 + 32) setUserActivity:v5];

    v6 = [*(a1 + 32) userActivity];
    [v6 becomeCurrent];
  }

  v7 = [*(a1 + 32) userActivity];
  [v7 setNeedsSave:1];
}

- (void)updateUserActivityState:(id)a3
{
  v4 = [(PhoneTabBarController *)self currentTabViewType];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity continuity - Saving out currentTabType %d", buf, 8u);
  }

  v6 = [(PhoneTabBarController *)self userActivity];
  v7 = [(PhoneTabBarController *)self selectedViewController];
  v8 = [v7 title];
  [v6 setTitle:v8];

  v9 = [(PhoneTabBarController *)self userActivity];
  v10 = [NSNumber numberWithInt:v4, @"PHLastTabTypeKey"];
  v13 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v9 setUserInfo:v11];
}

- (int)defaultTabViewType
{
  if ([UIApp showsPhoneDialer])
  {
    return 4;
  }

  v3 = +[(PHApplicationServices *)MPApplicationServices];
  v4 = [v3 contactStore];

  if (v4)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (int)tabViewTypeToReturnTo:(id)a3
{
  v4 = a3;
  v5 = [(PhoneTabBarController *)self defaultTabViewType];
  if (!v4)
  {
    v4 = PHPreferencesGetValueInDomain();
  }

  if (-[PhoneTabBarController shouldShowLastViewedTabGivenLastViewedTab:](self, "shouldShowLastViewedTabGivenLastViewedTab:", [v4 intValue]))
  {
    v5 = [v4 intValue];
  }

  return v5;
}

- (BOOL)shouldShowLastViewedTabGivenLastViewedTab:(int)a3
{
  v5 = [(PhoneTabBarController *)self bootSession];
  v6 = [v5 isInDifferentBootSession];

  v7 = [(PhoneTabBarController *)self bootSession];
  [v7 persistBootSessionID];

  if (a3 == 6 && [(PhoneTabBarController *)self isAllowedToSwitchToSearch])
  {
    return 1;
  }

  else
  {
    return (a3 != 6) & ((a3 != 5) | v6 ^ 1);
  }
}

- (int)currentTabViewType
{
  v2 = self;
  v3 = [(PhoneTabBarController *)self selectedViewController];
  LODWORD(v2) = [(PhoneTabBarController *)v2 tabTypeForViewController:v3];

  return v2;
}

- (void)_updateBottomTabs:(BOOL)a3 lastViewTypeNumber:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[(PHApplicationServices *)MPApplicationServices];
  v8 = [v7 contactStore];

  v9 = +[CAUILayoutManager shared];
  if ([v9 current])
  {
    v10 = 0;
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __62__PhoneTabBarController__updateBottomTabs_lastViewTypeNumber___block_invoke;
    v17[3] = &unk_100285B20;
    v17[4] = self;
    v10 = PHShouldOptimisticallyHideVoicemailUI(v17) ^ 1;
  }

  if (v4)
  {
    v11 = [(PhoneTabBarController *)self currentTabViewType];
  }

  else if (v6)
  {
    v11 = [v6 intValue] == 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 != 0;
  v13 = +[CAUILayoutManager shared];
  v14 = [v13 current];

  LOBYTE(v16) = 0;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  [(PhoneTabBarController *)self showFavoritesTab:v15 recentsTab:1 contactsTab:v12 keypadTab:1 voicemailTab:v10 prewarm:v11 hostedInRemoteViewController:v16];
  if (v4)
  {
    [(PhoneTabBarController *)self switchToTab:v11];
  }
}

- (id)controllerForTabViewType:(int)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v4 = [(PhoneTabBarController *)self keypadViewController];
        break;
      case 5:
        v4 = [(PhoneTabBarController *)self voicemailViewController];
        break;
      case 6:
        v4 = [(PhoneTabBarController *)self searchNavigationController];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v4 = [(PhoneTabBarController *)self favoritesNavigationController];
        break;
      case 2:
        v4 = [(PhoneTabBarController *)self phoneRecentsController];
        break;
      case 3:
        v4 = [(PhoneTabBarController *)self contactsViewController];
        break;
    }
  }

  return v4;
}

- (void)switchToTab:(int)a3
{
  v3 = *&a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PhoneTabBarController switchToTab:%d]", buf, 8u);
  }

  v6 = [(PhoneTabBarController *)self controllerForTabViewType:v3];
  v7 = [(PhoneTabBarController *)self controllerForTabViewType:[(PhoneTabBarController *)self defaultTabViewType]];
  v8 = [(PhoneTabBarController *)self selectedViewController];

  if (v6 != v8)
  {
    if (v6)
    {
      v9 = [(PhoneTabBarController *)self viewControllers];
      if ([v9 containsObject:v6])
      {
LABEL_8:

LABEL_9:
        v13 = [(PhoneTabBarController *)self selectedViewController];

        if (v6 != v13)
        {
          [(PhoneTabBarController *)self updateSelectedViewController:v6];
        }

        analyticsLogger = self->_analyticsLogger;
        v21[0] = @"action";
        v21[1] = @"tab";
        v22[0] = &off_1002953A8;
        v15 = [NSNumber numberWithInt:v3];
        v22[1] = v15;
        v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        [(MPAnalyticsLogger *)analyticsLogger logEvent:@"com.apple.MobilePhone.TabSwitch" withCoreAnalyticsDictionary:v16];

        goto LABEL_16;
      }

      v10 = [NSNumber numberWithInt:[(PhoneTabBarController *)self tabTypeForViewController:v6]];
      v11 = [NSString stringWithFormat:@"%@", v10];
      v12 = [(PhoneTabBarController *)self tabForIdentifier:v11];
      if (v12)
      {

        goto LABEL_8;
      }

      v17 = [NSString stringWithFormat:@"com.apple.UIKit.Search"];
      v18 = [(PhoneTabBarController *)self tabForIdentifier:v17];

      if (v18)
      {
        goto LABEL_9;
      }
    }

    if (v7)
    {
      v19 = [(PhoneTabBarController *)self viewControllers];
      v20 = [v19 containsObject:v7];

      if (v20)
      {
        [(PhoneTabBarController *)self updateSelectedViewController:v7];
      }
    }
  }

LABEL_16:
}

- (void)openVoicemails
{
  v2 = [(PhoneTabBarController *)self phoneRecentsController];
  [v2 showVoicemails];
}

- (BOOL)handleUserActivityContinuation:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v4 activityType];
  v7 = v6;
  v67 = v6;
  if (!v5 || !v6 || [v6 caseInsensitiveCompare:@"com.apple.Contacts.ViewingCard"])
  {
    v8 = [v4 interaction];

    if (v8)
    {
      v9 = self;
      v10 = [v4 interaction];
      v11 = [(MPMessageID *)v10 intent];
      CUTWeakLinkClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v13 = PHDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Activity continuity - Play voicemail activity", buf, 2u);
        }

        v14 = 5;
      }

      else
      {
        v14 = 0;
      }

      v24 = 0;
      v19 = 0;
      v23 = 0;
LABEL_24:
      v25 = 0;
      goto LABEL_53;
    }

    v15 = [(PhoneTabBarController *)self featureFlags];
    v16 = [v15 callHistorySearchEnabled];
    if (v5 && v16 && v7)
    {
      v17 = [v7 isEqual:CSQueryContinuationActionType];

      if (v17)
      {
        v18 = PHDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Activity continuity - Spotlight search in app activity", buf, 2u);
        }

        v19 = [v5 objectForKey:CSSearchQueryString];
        if ([(MPMessageID *)v19 length])
        {
          v20 = PHDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Activity continuity - Spotlight search activity with searchQuery: %@", buf, 0xCu);
          }

          v14 = 2;
          if (self->_phoneRecentsController)
          {
            v21 = +[CAUILayoutManager shared];
            v22 = [v21 current];

            v23 = 0;
            if (v22 == 1)
            {
              v14 = 6;
            }

            else
            {
              v14 = 2;
            }
          }

          else
          {
            v23 = 0;
          }

          goto LABEL_72;
        }

        v9 = self;
        v24 = 0;
        v23 = 0;
        v25 = 0;
        v14 = 0;
        isKindOfClass = 0;
        goto LABEL_54;
      }
    }

    else
    {
    }

    v31 = [(PhoneTabBarController *)self featureFlags];
    v32 = [v31 callHistorySearchEnabled];
    if (v5 && v32 && v7)
    {
      v33 = [v7 isEqual:CSSearchableItemActionType];

      if (v33)
      {
        v34 = PHDefaultLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Activity continuity - Spotlight search result continuity activity", buf, 2u);
        }

        v10 = [v5 objectForKey:CSSearchableItemActivityIdentifier];
        v19 = [v5 objectForKey:CSSearchQueryString];
        if (v10)
        {
          v35 = objc_alloc_init(CHManager);
          v36 = [CHRecentCall predicateForCallsWithUniqueID:v10];
          v66 = v35;
          v37 = [v35 callsWithPredicate:v36 limit:1 offset:0 batchSize:0];

          if ([v37 count])
          {
            v23 = v10;
            v38 = PHDefaultLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v69 = v19;
              v70 = 2112;
              v71 = v23;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Activity continuity - Spotlight call search activity with searchQuery: %@ recentsUniqueID: %@", buf, 0x16u);
            }

            v9 = self;
            v14 = 2;
            if (self->_phoneRecentsController)
            {
              v39 = +[CAUILayoutManager shared];
              v40 = [v39 current];

              v24 = 0;
              if (v40 == 1)
              {
                v14 = 6;
              }

              else
              {
                v14 = 2;
              }
            }

            else
            {
              v24 = 0;
            }

            isKindOfClass = 1;
          }

          else
          {
            v60 = [(PhoneTabBarController *)self featureFlags];
            v61 = [v60 voicemailSearchEnabled];

            if (v61)
            {
              v62 = [[NSUUID alloc] initWithUUIDString:v10];
              v65 = v62;
              if (v62 && (v63 = [[MPMessageID alloc] initWithUuid:v62]) != 0)
              {
                v24 = v63;
                v9 = self;
                v64 = PHDefaultLog();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v69 = v24;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Activity continuity - Spotlight voicemail search result activity with messageID: %@", buf, 0xCu);
                }

                isKindOfClass = 1;
                v14 = 5;
              }

              else
              {
                v9 = self;
                v64 = PHDefaultLog();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v69 = v10;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[WARN] Activity continuity - Failed to create MPMessageID for uniqueIdentifier %@", buf, 0xCu);
                }

                v24 = 0;
                v14 = 0;
                isKindOfClass = 0;
              }

              v23 = 0;
            }

            else
            {
              v9 = self;
              v24 = 0;
              v23 = 0;
              v14 = 0;
              isKindOfClass = 0;
            }
          }

          goto LABEL_24;
        }

        v9 = self;
        v24 = 0;
        v23 = 0;
        v25 = 0;
        goto LABEL_32;
      }
    }

    else
    {
    }

    v9 = self;
    v41 = PHDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Activity continuity - Phone activity", buf, 2u);
    }

    v10 = [v5 objectForKey:@"PHLastTabTypeKey"];
    v14 = [(MPMessageID *)v10 intValue];
    v24 = 0;
    v19 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_52;
  }

  v26 = PHDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Activity continuity - com.apple.Contacts.ViewingCard activity", buf, 2u);
  }

  v10 = +[(PHApplicationServices *)MPApplicationServices];
  v27 = [(MPMessageID *)v10 contactStore];
  v28 = +[CNContactViewController descriptorForRequiredKeys];
  v72 = v28;
  v29 = [NSArray arrayWithObjects:&v72 count:1];
  v25 = [v27 contactWithUserActivityUserInfo:v5 keysToFetch:v29];

  v9 = self;
  if (!v25)
  {
    v30 = PHDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(PhoneTabBarController *)v5 handleUserActivityContinuation:v30];
    }
  }

  v24 = 0;
  v19 = 0;
  v23 = 0;
LABEL_32:
  v14 = 0;
LABEL_52:
  isKindOfClass = 0;
LABEL_53:

  if (v14)
  {
LABEL_55:
    if (v25)
    {
      v42 = PHDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v69 = v25;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Activity continuity - Resuming to contact: %{sensitive}@", buf, 0xCu);
      }

      [(PhoneTabBarController *)v9 switchToTab:3];
      v43 = [(PhoneTabBarController *)v9 contactsViewController];
      [v43 showCardForContact:v25 animated:0];

      isKindOfClass = 1;
      goto LABEL_59;
    }

    self = v9;
    if (v24)
    {
      v44 = PHDefaultLog();
      v7 = v67;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [(MPMessageID *)v24 messageUUID];
        *buf = 138412290;
        v69 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Activity continuity - Resuming to voicemail with messageID: %@", buf, 0xCu);
      }

      if (self->_phoneRecentsController && (+[CAUILayoutManager shared](CAUILayoutManager, "shared"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 current], v46, v47 == 1))
      {
        [(PhoneTabBarController *)self switchToTab:2];
        v48 = [(PhoneTabBarController *)self phoneRecentsController];
        v49 = [(MPMessageID *)v24 messageUUID];
        [v48 presentVoicemailDetailsWithUUID:v49 completion:&__block_literal_global_9];
      }

      else
      {
        [(PhoneTabBarController *)self switchToTab:5];
        v48 = [(PhoneTabBarController *)self voicemailViewController];
        [v48 playMessageWithID:v24];
      }

      v25 = 0;
LABEL_87:
      isKindOfClass = 1;
      goto LABEL_88;
    }

    v7 = v67;
LABEL_72:
    v50 = PHDefaultLog();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v51)
      {
        *buf = 138412546;
        v69 = v19;
        v70 = 2112;
        v71 = v23;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Activity continuity - Resuming to recents search with searchQuery: %@ recentsUniqueID: %@", buf, 0x16u);
      }

      if (self->_phoneRecentsController && (+[CAUILayoutManager shared](CAUILayoutManager, "shared"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 current], v52, v53 == 1))
      {
        [(PhoneTabBarController *)self switchToTab:6];
        v54 = [(PhoneNavigationController *)self->_searchNavigationController popToRootViewControllerAnimated:0];
        v55 = [(PhoneNavigationController *)self->_searchNavigationController viewControllers];
        v56 = [v55 firstObject];

        [v56 startSearchingForText:v19];
        if ([(MPMessageID *)v23 length])
        {
          [v56 handleShowDetailsURLForUniqueID:v23];
        }
      }

      else
      {
        [(PhoneTabBarController *)self switchToTab:2];
        v57 = [(MPMessageID *)v23 length];
        v58 = [(PhoneTabBarController *)self phoneRecentsController];
        v56 = v58;
        if (v57)
        {
          [v58 showDetailsForCallWithUniqueID:v23 searchText:v19];
        }

        else
        {
          [v58 startSearchingForText:v19 completion:0];
        }
      }

      v25 = 0;
    }

    else
    {
      if (v51)
      {
        *buf = 67109120;
        LODWORD(v69) = v14;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Activity continuity - Resuming to tab type: %d", buf, 8u);
      }

      [(PhoneTabBarController *)self switchToTab:v14];
      v25 = 0;
      v19 = 0;
    }

    v24 = 0;
    goto LABEL_87;
  }

LABEL_54:
  if (v25)
  {
    goto LABEL_55;
  }

LABEL_59:
  v7 = v67;
LABEL_88:

  return isKindOfClass & 1;
}

- (void)handleURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v5 lowercaseString];

  if ([v6 isEqualToString:@"mobilephone-contacts"])
  {
    v7 = [v4 host];
    v8 = [v7 lowercaseString];

    if (v8 && [v8 isEqualToString:@"show"])
    {
      v9 = [v4 query];
      v10 = [v9 rangeOfString:@"="];
      if (v10)
      {
        v11 = v10;
        if (v10 < [v9 length] - 1)
        {
          v12 = [v9 substringToIndex:v11];
          v13 = [v9 substringFromIndex:v11 + 1];
          if ([v12 isEqualToString:@"id"])
          {
            v14 = +[(PHApplicationServices *)MPApplicationServices];
            [v14 contactStore];
            v15 = v32 = v13;

            v16 = +[CNContactViewController descriptorForRequiredKeys];
            v35 = v16;
            v17 = [NSArray arrayWithObjects:&v35 count:1];
            v33 = v15;
            v18 = v15;
            v13 = v32;
            v19 = [v18 contactForIdentifier:v32 keysToFetch:v17];

            if (v19)
            {
              v20 = [(PhoneTabBarController *)self contactsViewController];
              [v20 showCardForContact:v19 animated:0];
            }
          }
        }
      }
    }

    v21 = [(PhoneTabBarController *)self contactsViewController];
LABEL_13:
    v22 = v21;
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"vmshow"])
  {
    v8 = [v4 voicemailMessageUUID];
    if (!v8 && ![UIApp hasEnhancedVoicemail])
    {
      v22 = 0;
      goto LABEL_14;
    }

    v23 = +[CAUILayoutManager shared];
    v24 = [v23 current];

    if (v24 == 1)
    {
      v21 = [(PhoneTabBarController *)self phoneRecentsController];
    }

    else
    {
      v28 = PHDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Switching to Voicemail tab to show a voicemail.", buf, 2u);
      }

      v21 = [(PhoneTabBarController *)self voicemailViewController];
    }

    goto LABEL_13;
  }

  if (([v6 isEqualToString:@"mobilephone-recents"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"mobilephone-unknowncallerstip"))
  {
    if ([v6 isEqualToString:@"mobilephone-favorites"])
    {
      v27 = [(PhoneTabBarController *)self favoritesNavigationController];
    }

    else
    {
      if (![v6 isEqualToString:@"mobilephone-keypad"])
      {
        v22 = 0;
        goto LABEL_20;
      }

      v27 = [(PhoneTabBarController *)self keypadViewController];
    }

    goto LABEL_41;
  }

  v25 = +[MPPreferences sharedPreferences];
  v26 = [v25 useSwiftUIRecents];

  if (v26)
  {
    v27 = [(PhoneTabBarController *)self recentsViewController];
LABEL_41:
    v22 = v27;
    goto LABEL_15;
  }

  v22 = [(PhoneTabBarController *)self phoneRecentsController];
  [(PhoneTabBarController *)self switchToTab:[(PhoneTabBarController *)self tabTypeForViewController:v22]];
  v29 = [(PhoneTabBarController *)self featureFlags];
  v30 = [v29 callExperiencePhoneAppEnabled];

  if (v30)
  {
    goto LABEL_15;
  }

  v8 = [v4 recentsUniqueID];
  if ([v8 length])
  {
    v31 = [(PhoneTabBarController *)self recentsTableViewController];
    [v31 handleShowDetailsURLForUniqueID:v8];
  }

LABEL_14:

LABEL_15:
  if (v22)
  {
    [(PhoneTabBarController *)self switchToTab:[(PhoneTabBarController *)self tabTypeForViewController:v22]];
    if ([v22 conformsToProtocol:&OBJC_PROTOCOL___PhoneTabViewController])
    {
      v22 = v22;
      if (objc_opt_respondsToSelector())
      {
        [v22 handleURL:v4];
      }
    }
  }

LABEL_20:
}

- (int)tabTypeForViewController:(id)a3
{
  v5 = a3;
  v6 = [(PhoneTabBarController *)self favoritesNavigationController];

  if (v6 == v5)
  {
    v18 = 1;
    goto LABEL_16;
  }

  v7 = [(PhoneTabBarController *)self recentsNavigationController];
  if (v7 == v5)
  {
    goto LABEL_14;
  }

  v8 = [(PhoneTabBarController *)self phoneRecentsController];
  v9 = v8;
  if (v8 == v5)
  {

LABEL_14:
    goto LABEL_15;
  }

  v10 = [(PhoneTabBarController *)self recentsTableViewController];

  if (v10 == v5)
  {
LABEL_15:
    v18 = 2;
    goto LABEL_16;
  }

  v11 = [(PhoneTabBarController *)self contactsViewController];

  if (v11 == v5)
  {
    v18 = 3;
  }

  else
  {
    v12 = [(PhoneTabBarController *)self keypadViewController];

    if (v12 == v5)
    {
      v18 = 4;
    }

    else
    {
      v13 = [(PhoneTabBarController *)self voicemailViewController];

      if (v13 == v5)
      {
        v18 = 5;
      }

      else
      {
        v14 = [(PhoneTabBarController *)self searchNavigationController];

        if (v14 == v5)
        {
          v18 = 6;
        }

        else
        {
          v15 = PHDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [(PhoneTabBarController *)self tabTypeForViewController:v15];
          }

          v16 = [NSString stringWithFormat:@"Unknown view controller: %@", v5];
          v17 = +[NSAssertionHandler currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"PhoneTabBarController.m" lineNumber:996 description:v16];

          v18 = 0;
        }
      }
    }
  }

LABEL_16:

  return v18;
}

- (int)tabTypeForTab:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"com.apple.UIKit.Search"];

  if (v6)
  {
    LODWORD(v7) = 6;
  }

  else
  {
    v8 = [v4 identifier];
    v7 = [v8 integerValue];

    if ((v7 - 1) > 5)
    {
      v9 = [v4 viewController];

      if (v9)
      {
        v10 = [v4 viewController];
        LODWORD(v7) = [(PhoneTabBarController *)self tabTypeForViewController:v10];
      }

      else
      {
        v11 = PHDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(PhoneTabBarController *)v4 tabTypeForTab:v11];
        }

        LODWORD(v7) = 0;
      }
    }
  }

  return v7;
}

- (id)viewControllerForTabViewType:(int)a3
{
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
LABEL_14:
        v8 = 0;
        goto LABEL_19;
      case 1:
        v5 = [(PhoneTabBarController *)self favoritesViewController];
        break;
      case 2:
        v5 = [(PhoneTabBarController *)self phoneRecentsController];
        break;
      default:
LABEL_13:
        v9 = [NSString stringWithFormat:@"Unknown tab type: %u", *&a3];
        v10 = +[NSAssertionHandler currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"PhoneTabBarController.m" lineNumber:1046 description:v9];

        goto LABEL_14;
    }
  }

  else
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        [(PhoneTabBarController *)self contactsViewController];
      }

      else
      {
        [(PhoneTabBarController *)self keypadViewController];
      }
      v5 = ;
      goto LABEL_18;
    }

    if (a3 != 5)
    {
      if (a3 == 6)
      {
        v6 = [(PhoneTabBarController *)self searchNavigationController];
        v7 = [v6 viewControllers];
        v8 = [v7 firstObject];

        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = [(PhoneTabBarController *)self voicemailViewController];
  }

LABEL_18:
  v8 = v5;
LABEL_19:

  return v8;
}

- (void)updateListenersForState:(int64_t)a3
{
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__PhoneTabBarController_updateListenersForState___block_invoke;
  v8[3] = &unk_100285B68;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  v5 = objc_retainBlock(v8);
  if (a3)
  {
    v7 = [(PhoneTabBarController *)self voicemailListener];

    if (!v7)
    {
      (v5[2])(v5);
    }
  }

  else
  {
    v6 = [(PhoneTabBarController *)self voicemailListener];

    if (v6)
    {
      [(PhoneTabBarController *)self setVoicemailListener:0];
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__PhoneTabBarController_updateListenersForState___block_invoke(uint64_t a1)
{
  v2 = +[(PHApplicationServices *)MPApplicationServices];
  v3 = [v2 accountManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __49__PhoneTabBarController_updateListenersForState___block_invoke_2;
  v5[3] = &unk_100285148;
  objc_copyWeak(&v6, (a1 + 40));
  v4 = [v3 listenForChangesWithHandler:v5];
  [*(a1 + 32) setVoicemailListener:v4];

  objc_destroyWeak(&v6);
}

void __49__PhoneTabBarController_updateListenersForState___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[MPVoicemailAccountManagerUpdate storageUsage];
    v5 = [v6 contains:v4];

    if (v5)
    {
      [WeakRetained _checkMailboxUsage];
    }
  }
}

void __43__PhoneTabBarController__checkMailboxUsage__block_invoke(uint64_t a1)
{
  v2 = +[CAUILayoutManager shared];
  v3 = [v2 current];

  if (v3)
  {
    v4 = +[MPVoicemailUsageService shared];
    [v4 checkUsageAndPresentIfNeededWithHost:*(a1 + 32)];
  }
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3
{
  v4 = a3;
  if ([UIApp shouldShowReceptionistOnboarding])
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = [v4 name];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@> to show Receptionist onboarding", &v9, 0x16u);
    }

    [(PhoneTabBarController *)self showReceptionistOnboarding];
  }
}

- (void)showReceptionistOnboarding
{
  v17 = [UIImage _systemImageNamed:@"ellipsis.below.phone.down.fill"];
  v3 = [OBWelcomeController alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"RECEPTIONIST_ONBOARDING_TITLE" value:&stru_10028F310 table:@"General"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"RECEPTIONIST_ONBOARDING_MESSAGE" value:&stru_10028F310 table:@"General"];
  v8 = [v3 initWithTitle:v5 detailText:v7 icon:v17];

  v9 = +[OBBoldTrayButton boldButton];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"RECEPTIONIST_ONBOARDING_SCREEN_CALLS" value:&stru_10028F310 table:@"General"];
  [v9 setTitle:v11 forState:0];

  [v9 addTarget:self action:"enableScreenUnknownCallers:" forControlEvents:64];
  v12 = [v8 buttonTray];
  [v12 addButton:v9];

  v13 = +[OBLinkTrayButton linkButton];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"RECEPTIONIST_ONBOARDING_SET_UP_LATER" value:&stru_10028F310 table:@"General"];
  [v13 setTitle:v15 forState:0];

  [v13 addTarget:self action:"dismissScreenUnknownCallers:" forControlEvents:64];
  v16 = [v8 buttonTray];
  [v16 addButton:v13];

  [v8 setModalPresentationStyle:0];
  [(PhoneTabBarController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)enableScreenUnknownCallers:(id)a3
{
  v6 = objc_alloc_init(TUConfigurationProvider);
  if ([(TUFeatureFlags *)self->_featureFlags deviceExpertMigrationEnabled])
  {
    [v6 setReceptionistEnabled:1];
    [v6 setCallScreeningEnabled:1];
  }

  else
  {
    v4 = +[NSUserDefaults tu_defaults];
    [v4 setBool:0 forKey:TUReceptionistDisabledKey];
    [v4 setBool:0 forKey:TUCallScreeningDisabledKey];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"TUCallScreeningSettingsChangedNotification" object:0];
  }

  +[TPTipsHelper donateHasDismissedScreeningOnboardingModal];
  [(PhoneTabBarController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)dismissScreenUnknownCallers:(id)a3
{
  +[TPTipsHelper donateHasDismissedScreeningOnboardingModal];

  [(PhoneTabBarController *)self dismissViewControllerAnimated:1 completion:0];
}

+ (id)defaultPNGName
{
  v2 = [UIApp rootViewController];
  v3 = [v2 baseViewController];

  v4 = [v3 selectedViewController];
  v5 = [objc_opt_class() defaultPNGName];

  return v5;
}

- (BOOL)shouldSnapshot
{
  v2 = [(PhoneTabBarController *)self viewControllerForTabViewType:[(PhoneTabBarController *)self currentTabViewType]];
  v3 = [v2 shouldSnapshot];

  return v3;
}

- (void)prepareForSnapshot
{
  v2 = [(PhoneTabBarController *)self viewControllerForTabViewType:[(PhoneTabBarController *)self currentTabViewType]];
  [v2 prepareForSnapshot];
}

- (void)transitionCompleted
{
  v3 = [(PhoneTabBarController *)self selectedViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PhoneTabBarController *)self selectedViewController];
    [v5 transitionCompleted];
  }
}

- (void)_willAppearInRemoteViewController
{
  if (self->_phoneRecentsController)
  {
    goto LABEL_6;
  }

  phoneRecentsController = objc_opt_new();
  if ([phoneRecentsController callExperiencePhoneAppEnabled])
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(_TtC11MobilePhone26PhoneRecentsViewController);
    phoneRecentsController = self->_phoneRecentsController;
    self->_phoneRecentsController = v6;
  }

LABEL_6:
  v7 = +[(PHApplicationServices *)MPApplicationServices];
  v8 = [v7 contactStore];
  v9 = v8 != 0;

  v10 = +[CAUILayoutManager shared];
  LOBYTE(v18) = 1;
  if ([v10 current])
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  [(PhoneTabBarController *)self showFavoritesTab:v11 recentsTab:1 contactsTab:v9 keypadTab:1 voicemailTab:0 prewarm:3 hostedInRemoteViewController:v18];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"CREATE_NEW_CALL" value:&stru_10028F310 table:@"General"];
  v14 = [(PhoneTabBarController *)self contactsViewController];
  v15 = [v14 contactListViewController];
  v16 = [v15 navigationItem];
  [v16 setPrompt:v13];

  v17 = [(PhoneTabBarController *)self keypadViewController];
  [v17 setIsHostedInRemoteViewController:1];

  v19 = [(PhoneTabBarController *)self contactsViewController];
  [(PhoneTabBarController *)self updateSelectedViewController:v19];
}

- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4
{
  v6 = a3;
  v7 = [a4 viewController];
  v8 = [(PhoneTabBarController *)self selectedViewController];
  v9 = [(PhoneTabBarController *)self keypadViewController];
  if (([v8 isEqual:v9] & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = [(PhoneTabBarController *)self contactsViewController];
  v11 = [v7 isEqual:v10];

  if (v11)
  {
    v8 = +[MPSignpost sharedInstance];
    [v8 keypadTabSwitchStarted];
LABEL_5:
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v7 tabBarControllerShouldSelectViewController:v6])
  {
    v14 = 0;
  }

  else
  {
    v12 = [v6 selectedViewController];

    if (v7 != v12)
    {
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotificationName:@"PhoneApplicationDidChangeTabBarSelectionNotification" object:v7 userInfo:0];
    }

    v14 = 1;
  }

  v15 = [v6 selectedViewController];

  if (v7 == v15)
  {
    [(PhoneTabBarController *)self popCurrentNavigationControllerToRootViewControllerAnimated:1];
  }

  return v14;
}

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v5 = [(PhoneTabBarController *)self currentTabViewType:a3];
  v6 = [NSNumber numberWithInt:v5];
  PHPreferencesSetValueInDomain();

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wrote out last tab type: %d", v8, 8u);
  }
}

- (void)willPresentSimLineSwitcher
{
  v2 = +[CSSearchMetrics shared];
  [v2 keypadButtonInteractedWithButtonType:4];
}

- (void)presentContactsSearchFor:(id)a3
{
  v4 = a3;
  [(PhoneTabBarController *)self presentSearch:v4];
  v6 = +[CSSearchMetrics shared];
  v5 = [v4 length];

  [v6 logSearchResultInteraction:1 cellType:8 searchLength:v5];
}

- (void)didPressSearchButton:(id)a3 unformattedNumber:(id)a4
{
  v7 = a4;
  v5 = [(PhoneTabBarController *)self featureFlags];
  v6 = [v5 smartDialerExpandedSearchEnabled];

  if (v6)
  {
    [(PhoneTabBarController *)self presentSearch:v7];
  }
}

- (void)keyPadViewControllerDidAppear:(BOOL)a3
{
  v4 = createPHPhoneTabBarControllerTabViewDidAppearNotificationInfo(4, self);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHPhoneTabBarControllerTabViewDidAppearNotification" object:v4];
}

- (void)didPressAddContactButton:(int64_t)a3
{
  if ((a3 - 1) <= 2)
  {
    v4 = dword_1002089A8[a3 - 1];
    v5 = +[CSSearchMetrics shared];
    [v5 keypadButtonInteractedWithButtonType:v4];
  }
}

- (void)keyPadSearchFor:(id)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[NSDate date];
  v11 = [(PhoneTabBarController *)self contactSearchManager];
  [v11 cancelPreviousSearch];

  v12 = [(PhoneTabBarController *)self contactSearchManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __79__PhoneTabBarController_keyPadSearchFor_shouldRefreshResult_completionHandler___block_invoke;
  v16[3] = &unk_100285B90;
  v18 = v8;
  v19 = v9;
  v17 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [v12 searchFor:v13 shouldRefreshResult:v6 completionHandler:v16];
}

void __79__PhoneTabBarController_keyPadSearchFor_shouldRefreshResult_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7, a3);
  }

  v6 = +[CSSearchMetrics shared];
  [v6 searchFinishedForController:7 startTime:*(a1 + 32) searchLength:objc_msgSend(*(a1 + 40) resultsCount:{"length"), objc_msgSend(v7, "count")}];
}

- (void)presentSearch:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MPKeypadSearchViewController alloc];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __39__PhoneTabBarController_presentSearch___block_invoke;
  v11 = &unk_1002857A8;
  objc_copyWeak(&v12, &location);
  v6 = [(MPKeypadSearchViewController *)v5 initWithOnDismissHandler:&v8];
  [(MPKeypadSearchViewController *)v6 updateSearchText:v4, v8, v9, v10, v11];
  v7 = [[UINavigationController alloc] initWithRootViewController:v6];
  [v7 setModalPresentationStyle:3];
  [v7 setModalTransitionStyle:2];
  [(MPKeypadViewController *)self->_keypadViewController presentViewController:v7 animated:1 completion:0];
  [(MPKeypadViewController *)self->_keypadViewController updateTabBarAppearanceToTransparent:0];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __39__PhoneTabBarController_presentSearch___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained keypadViewController];
    [v2 updateTabBarAppearanceToTransparent:1];

    WeakRetained = v3;
  }
}

- (MPContactSearchManager)contactSearchManager
{
  contactSearchManager = self->_contactSearchManager;
  if (!contactSearchManager)
  {
    v4 = [MPContactSearchManager alloc];
    v5 = +[(PHApplicationServices *)MPApplicationServices];
    v6 = [v5 suggestedContactStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __45__PhoneTabBarController_contactSearchManager__block_invoke;
    v10[3] = &unk_100285BB8;
    v10[4] = self;
    v7 = [v4 initWithType:1 contactStore:v6 searchResultsRanker:v10];
    v8 = self->_contactSearchManager;
    self->_contactSearchManager = v7;

    contactSearchManager = self->_contactSearchManager;
  }

  return contactSearchManager;
}

id __45__PhoneTabBarController_contactSearchManager__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 ranker];
  v5 = [v4 rankContactSearchResults:v3];

  return v5;
}

- (unint64_t)dialerSupportedInterfaceOrientations
{
  if ([UIApp contentViewCanRotate])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)presentAppleSupportGuidedHelp
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SupportFlowCore0aB10IdentifierOSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for SupportFlowIdentifier();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  objc_allocWithZone(type metadata accessor for SupportFlowViewController());
  v7 = self;
  v8 = SupportFlowViewController.init(flowIdentifier:showsSearchBar:)();
  [(PhoneTabBarController *)v7 presentViewController:v8 animated:1 completion:0];
}

- (void)applyDetailsPresenterToSearchViewController:(id)a3 withRecentsViewController:(id)a4 andPresentingFromViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized PhoneTabBarController.applyDetailsPresenter(to:with:presentingFrom:)(v8, v9, v10);
}

- (id)makeFavoritesListViewControllerWith:(id)a3 recentsViewController:(id)a4 navigationController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = specialized PhoneTabBarController.makeFavoritesListViewController(with:recentsViewController:navigationController:)(v8, v9, v10);

  return v12;
}

- (void)handleUserActivityContinuation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to open a ViewingCard activity, as CNContactStore returned nil for %@", &v2, 0xCu);
}

- (void)tabTypeForViewController:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v4 = [a1 recentsNavigationController];
  v5 = [a1 recentsViewController];
  v6 = [a1 recentsTableViewController];
  v7 = [a1 favoritesNavigationController];
  v8 = [a1 contactsViewController];
  v9 = [a1 keypadViewController];
  v10 = [a1 voicemailViewController];
  v11 = [a1 searchNavigationController];
  v12 = 138414082;
  v13 = v4;
  v14 = 2112;
  v15 = v5;
  v16 = 2112;
  v17 = v6;
  v18 = 2112;
  v19 = v7;
  v20 = 2112;
  v21 = v8;
  v22 = 2112;
  v23 = v9;
  v24 = 2112;
  v25 = v10;
  v26 = 2112;
  v27 = v11;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Recents: %@, %@, %@, Favorites: %@, Contacts: %@, Dialer: %@, Voicemail: %@, Search: %@", &v12, 0x52u);
}

- (void)tabTypeForTab:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown tab with identifier: %@", &v4, 0xCu);
}

@end