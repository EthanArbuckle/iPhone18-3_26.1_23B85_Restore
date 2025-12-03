@interface PhoneTabBarController
+ (id)defaultPNGName;
- (BOOL)handleUserActivityContinuation:(id)continuation;
- (BOOL)shouldShowLastViewedTabGivenLastViewedTab:(int)tab;
- (BOOL)shouldSnapshot;
- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab;
- (MPContactSearchManager)contactSearchManager;
- (PHContactsSearchResultsRanker)ranker;
- (PhoneTabBarController)initWithRecentsController:(id)controller;
- (id)controllerForTabViewType:(int)type;
- (id)makeFavoritesListViewControllerWith:(id)with recentsViewController:(id)controller navigationController:(id)navigationController;
- (id)tabForViewController:(id)controller;
- (id)viewControllerForTabViewType:(int)type;
- (int)currentTabViewType;
- (int)defaultTabViewType;
- (int)tabTypeForTab:(id)tab;
- (int)tabTypeForViewController:(id)controller;
- (int)tabViewTypeToReturnTo:(id)to;
- (unint64_t)dialerSupportedInterfaceOrientations;
- (void)_badgeChanged:(id)changed;
- (void)_startListeningForBadgeChangedNotifications:(id)notifications;
- (void)_stopListeningForBadgeChangedNotifications:(id)notifications;
- (void)_updateAllBadges:(BOOL)badges;
- (void)_updateBottomTabs:(BOOL)tabs lastViewTypeNumber:(id)number;
- (void)_willAppearInRemoteViewController;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)applyDetailsPresenterToSearchViewController:(id)controller withRecentsViewController:(id)viewController andPresentingFromViewController:(id)fromViewController;
- (void)dealloc;
- (void)didPressAddContactButton:(int64_t)button;
- (void)didPressSearchButton:(id)button unformattedNumber:(id)number;
- (void)dismissScreenUnknownCallers:(id)callers;
- (void)enableScreenUnknownCallers:(id)callers;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification;
- (void)handleURL:(id)l;
- (void)keyPadSearchFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler;
- (void)keyPadViewControllerDidAppear:(BOOL)appear;
- (void)openVoicemails;
- (void)popCurrentNavigationControllerToRootViewControllerAnimated:(BOOL)animated;
- (void)prepareForSnapshot;
- (void)presentAppleSupportGuidedHelp;
- (void)presentContactsSearchFor:(id)for;
- (void)presentSearch:(id)search;
- (void)registerForBadgeUpdateNotification;
- (void)setSelectedTab:(id)tab;
- (void)showFavoritesTab:(BOOL)tab recentsTab:(BOOL)recentsTab contactsTab:(BOOL)contactsTab keypadTab:(BOOL)keypadTab voicemailTab:(BOOL)voicemailTab prewarm:(int)prewarm hostedInRemoteViewController:(BOOL)controller;
- (void)showReceptionistOnboarding;
- (void)switchToMostRecentlyUsedTabType:(id)type;
- (void)switchToTab:(int)tab;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)transitionCompleted;
- (void)updateListenersForState:(int64_t)state;
- (void)updateSelectedTab:(id)tab;
- (void)updateSelectedViewController:(id)controller;
- (void)updateUserActivityState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (PhoneTabBarController)initWithRecentsController:(id)controller
{
  controllerCopy = controller;
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
      objc_storeStrong(&v6->_phoneRecentsController, controller);
    }

    if (([UIApp tabBarFillsScreen] & 1) == 0)
    {
      [(PhoneTabBarController *)v6 setDefinesPresentationContext:1];
    }

    if ([UIApp userInterfaceStyle] == 1)
    {
      tabBar = [(PhoneTabBarController *)v6 tabBar];
      [tabBar setBarStyle:1];
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

      tabBar2 = [(PhoneTabBarController *)v6 tabBar];
      [tabBar2 _setSelectionIndicatorImage:v15];
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
  isUIFluidTransitionsEnabled = [v3 isUIFluidTransitionsEnabled];

  if ((isUIFluidTransitionsEnabled & 1) == 0)
  {
    v5 = +[UIColor clearColor];
    view = [(PhoneTabBarController *)self view];
    [view setBackgroundColor:v5];
  }

  view2 = [(PhoneTabBarController *)self view];
  [view2 setOpaque:0];

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

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v7 viewWillAppear:appear];
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"PHPhoneTabBarControllerViewDidAppearNotification" object:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PhoneTabBarController;
  [(PhoneTabBarController *)&v3 viewDidDisappear:disappear];
}

- (void)_startListeningForBadgeChangedNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v6 = +[NSNotificationCenter defaultCenter];
  v5 = objc_opt_class();

  [v6 addObserver:self selector:"_badgeChanged:" name:@"com.apple.mobilephone.BadgeChanged" object:v5];
}

- (void)_stopListeningForBadgeChangedNotifications:(id)notifications
{
  if (notifications)
  {
    notificationsCopy = notifications;
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

- (void)_updateAllBadges:(BOOL)badges
{
  badgesCopy = badges;
  [(PhoneTabBarController *)self registerForBadgeUpdateNotification];
  if (self->_voicemailViewController)
  {
    tabBar = [(PhoneTabBarController *)self tabBar];
    items = [tabBar items];
    v7 = [items count];

    if (v7 >= 5)
    {
      [objc_opt_class() badge];
      v8 = PhoneStringForBadgeValue();
      tabBar2 = [(PhoneTabBarController *)self tabBar];
      items2 = [tabBar2 items];
      v11 = [items2 objectAtIndex:4];
      [v11 setBadgeValue:v8];
    }
  }

  if (badgesCopy)
  {

    [(PhoneTabBarController *)self performSelector:"_badgeChanged:" withObject:self afterDelay:0.0];
  }

  else
  {
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 postNotificationName:PhoneRootViewControllerApplicationBadgeChangedNotification object:0];
  }
}

- (void)_badgeChanged:(id)changed
{
  changedCopy = changed;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhoneTabBarController badge changed notification %@", &v6, 0xCu);
  }

  [(PhoneTabBarController *)self _updateAllBadges:0];
}

- (void)showFavoritesTab:(BOOL)tab recentsTab:(BOOL)recentsTab contactsTab:(BOOL)contactsTab keypadTab:(BOOL)keypadTab voicemailTab:(BOOL)voicemailTab prewarm:(int)prewarm hostedInRemoteViewController:(BOOL)controller
{
  voicemailTabCopy = voicemailTab;
  keypadTabCopy = keypadTab;
  contactsTabCopy = contactsTab;
  recentsTabCopy = recentsTab;
  tabCopy = tab;
  v14 = [NSMutableArray arrayWithCapacity:5];
  v94 = +[(PHApplicationServices *)MPApplicationServices];
  callProviderManager = [v94 callProviderManager];
  suggestedContactStore = [v94 suggestedContactStore];
  metadataCache = [v94 metadataCache];
  if (!tabCopy)
  {
    selfCopy5 = self;
    favoritesNavigationController = self->_favoritesNavigationController;
    self->_favoritesNavigationController = 0;

    [(PhoneTabBarController *)selfCopy5 _stopListeningForBadgeChangedNotifications:selfCopy5->_favoritesViewController];
    favoritesViewController = self->_favoritesViewController;
    self->_favoritesViewController = 0;

    if (!recentsTabCopy)
    {
      goto LABEL_15;
    }

LABEL_5:
    if (!selfCopy5->_recentsTableViewController)
    {
      featureFlags = [(PhoneTabBarController *)selfCopy5 featureFlags];
      callExperiencePhoneAppEnabled = [featureFlags callExperiencePhoneAppEnabled];

      if (callExperiencePhoneAppEnabled)
      {
        recentsNavigationController = [(PhoneRecentsViewController *)self->_phoneRecentsController recentsNavigationController];
        recentsNavigationController = self->_recentsNavigationController;
        self->_recentsNavigationController = recentsNavigationController;
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
        voicemailController = [v42 voicemailController];

        [(PhoneNavigationController *)self->_recentsNavigationController setVoicemailController:voicemailController];
        v108 = self->_recentsTableViewController;
        v44 = [NSArray arrayWithObjects:&v108 count:1];
        [(PhoneNavigationController *)self->_recentsNavigationController setViewControllers:v44];
      }

      selfCopy5 = self;
    }

    featureFlags2 = [(PhoneTabBarController *)selfCopy5 featureFlags];
    callExperiencePhoneAppEnabled2 = [featureFlags2 callExperiencePhoneAppEnabled];

    if (callExperiencePhoneAppEnabled2)
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
    favoritesController = [v94 favoritesController];
    v23 = [[PhoneNavigationController alloc] initWithNibName:0 bundle:0];
    v24 = self->_favoritesNavigationController;
    self->_favoritesNavigationController = v23;

    featureFlags3 = [(PhoneTabBarController *)self featureFlags];
    phoneClassicNewFavoritesEnabled = [featureFlags3 phoneClassicNewFavoritesEnabled];

    if (phoneClassicNewFavoritesEnabled)
    {
      recentsViewController = [(PhoneRecentsViewController *)self->_phoneRecentsController recentsViewController];
      v28 = [(PhoneTabBarController *)self makeFavoritesListViewControllerWith:favoritesController recentsViewController:recentsViewController navigationController:self->_favoritesNavigationController];
      selfCopy4 = self;
      v30 = self->_favoritesViewController;
      self->_favoritesViewController = v28;
    }

    else
    {
      v31 = [[MPFavoritesTableViewController alloc] initWithFavoritesController:favoritesController];
      selfCopy4 = self;
      recentsViewController = self->_favoritesViewController;
      self->_favoritesViewController = &v31->super.super.super;
    }

    [(PhoneTabBarController *)selfCopy4 _startListeningForBadgeChangedNotifications:selfCopy4->_favoritesViewController];
    v109 = selfCopy4->_favoritesViewController;
    v32 = [NSArray arrayWithObjects:&v109 count:1];
    [(PhoneNavigationController *)self->_favoritesNavigationController setViewControllers:v32];

    if (prewarm == 1)
    {
      [favoritesController fetchIfNeeded];
    }
  }

  [v14 addObject:self->_favoritesNavigationController];
  selfCopy5 = self;
  if (recentsTabCopy)
  {
    goto LABEL_5;
  }

LABEL_15:
  v33 = selfCopy5->_recentsNavigationController;
  selfCopy5->_recentsNavigationController = 0;

  selfCopy8 = self;
  if (self->_recentsTableViewController)
  {
    [(PhoneTabBarController *)self _stopListeningForBadgeChangedNotifications:?];
    v35 = self->_recentsTableViewController;
    self->_recentsTableViewController = 0;

    selfCopy8 = self;
  }

  featureFlags2 = 24;
  if (selfCopy8->_recentsViewController)
  {
    [(PhoneTabBarController *)selfCopy8 _stopListeningForBadgeChangedNotifications:?];
    recentsViewController = self->_recentsViewController;
    self->_recentsViewController = 0;

LABEL_24:
    selfCopy8 = self;
  }

  contactsViewController = selfCopy8->_contactsViewController;
  if (contactsTabCopy)
  {
    if (!contactsViewController)
    {
      v47 = [PHContactsViewController alloc];
      if (controller)
      {
        v48 = 1;
      }

      else
      {
        featureFlags2 = +[CAUILayoutManager shared];
        v48 = [featureFlags2 current] == 0;
      }

      v50 = [(PHContactsViewController *)v47 initWithContactStore:suggestedContactStore allowsLargeTitles:1 allowsSearch:v48];
      v51 = self->_contactsViewController;
      self->_contactsViewController = v50;

      if (!controller)
      {
      }

      [(PhoneTabBarController *)self _startListeningForBadgeChangedNotifications:self->_contactsViewController];
      contactsViewController = self->_contactsViewController;
    }

    [v14 addObject:contactsViewController];
  }

  else
  {
    [(PhoneTabBarController *)selfCopy8 _stopListeningForBadgeChangedNotifications:contactsViewController];
    v49 = self->_contactsViewController;
    self->_contactsViewController = 0;
  }

  if (keypadTabCopy && [UIApp showsPhoneDialer])
  {
    keypadViewController = self->_keypadViewController;
    if (!keypadViewController)
    {
      v53 = [[MPKeypadViewController alloc] initWithContactStore:suggestedContactStore enableSmartDialer:1 orientationProvider:self];
      v54 = self->_keypadViewController;
      self->_keypadViewController = v53;

      [(MPKeypadViewController *)self->_keypadViewController setDelegate:?];
      [(MPKeypadViewController *)self->_keypadViewController setCallProviderManager:callProviderManager];
      [(MPKeypadViewController *)self->_keypadViewController setMetadataCache:metadataCache];
      userInterfaceStyle = [UIApp userInterfaceStyle];
      keypadViewController = self->_keypadViewController;
      if (userInterfaceStyle == 1)
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
  if (voicemailTabCopy)
  {
    if (!voicemailViewController)
    {
      v58 = +[(PHApplicationServices *)MPApplicationServices];
      voicemailController2 = [v58 voicemailController];

      v60 = objc_alloc_init(PHVoicemailNavigationController);
      v61 = self->_voicemailViewController;
      self->_voicemailViewController = v60;

      [(PhoneNavigationController *)self->_voicemailViewController setVoicemailController:voicemailController2];
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
          tabBarIconName = [v72 tabBarIconName];
          tabBarIconImage = [v72 tabBarIconImage];
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = __125__PhoneTabBarController_showFavoritesTab_recentsTab_contactsTab_keypadTab_voicemailTab_prewarm_hostedInRemoteViewController___block_invoke;
          v102[3] = &unk_100285AA8;
          v102[4] = v72;
          v77 = [v74 initWithTitle:tabBarIconName image:tabBarIconImage identifier:v71 viewControllerProvider:v102];

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

  selfCopy11 = self;
  if (self->_phoneRecentsController)
  {
    v79 = +[CAUILayoutManager shared];
    v80 = [v79 current] == 1;

    selfCopy11 = self;
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
        navigationItem = [(SearchTabViewController *)v85 navigationItem];
        [navigationItem setSearchController:v84];

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

      selfCopy11 = self;
    }
  }

  [(PhoneTabBarController *)selfCopy11 registerForBadgeUpdateNotification];
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

- (void)popCurrentNavigationControllerToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentTabViewType = [(PhoneTabBarController *)self currentTabViewType];
  if (currentTabViewType == 6)
  {
    v6 = 88;
LABEL_9:
    v8 = [*(&self->super.super.super.super.isa + v6) popToRootViewControllerAnimated:animatedCopy];
    return;
  }

  if (currentTabViewType != 2)
  {
    if (currentTabViewType != 1)
    {
      return;
    }

    v6 = 8;
    goto LABEL_9;
  }

  recentsNavigationController = [(PhoneRecentsViewController *)self->_phoneRecentsController recentsNavigationController];
  v7 = [recentsNavigationController popToRootViewControllerAnimated:animatedCopy];
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

- (void)switchToMostRecentlyUsedTabType:(id)type
{
  v4 = [(PhoneTabBarController *)self tabViewTypeToReturnTo:type];
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

- (void)setSelectedTab:(id)tab
{
  tabCopy = tab;
  [(PhoneTabBarController *)self updateSelectedTab:tabCopy];
  analyticsLogger = self->_analyticsLogger;
  v9[0] = @"action";
  v9[1] = @"tab";
  v10[0] = &off_100295390;
  v6 = [(PhoneTabBarController *)self tabTypeForTab:tabCopy];

  v7 = [NSNumber numberWithInt:v6];
  v10[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [(MPAnalyticsLogger *)analyticsLogger logEvent:@"com.apple.MobilePhone.TabSwitch" withCoreAnalyticsDictionary:v8];
}

- (void)updateSelectedTab:(id)tab
{
  v8.receiver = self;
  v8.super_class = PhoneTabBarController;
  tabCopy = tab;
  [(PhoneTabBarController *)&v8 setSelectedTab:tabCopy];
  [(PhoneTabBarController *)self popCurrentNavigationControllerToRootViewControllerAnimated:0];
  v5 = [(PhoneTabBarController *)self tabTypeForTab:tabCopy];

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

- (id)tabForViewController:(id)controller
{
  v4 = [(PhoneTabBarController *)self tabTypeForViewController:controller];
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

- (void)updateSelectedViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(PhoneTabBarController *)self tabForViewController:controllerCopy];
  if (v5)
  {
    [(PhoneTabBarController *)self updateSelectedTab:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PhoneTabBarController;
    [(PhoneTabBarController *)&v8 setSelectedViewController:controllerCopy];
    [(PhoneTabBarController *)self popCurrentNavigationControllerToRootViewControllerAnimated:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __54__PhoneTabBarController_updateSelectedViewController___block_invoke;
    v6[3] = &unk_100285AF8;
    v7 = [(PhoneTabBarController *)self tabTypeForViewController:controllerCopy];
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

- (void)updateUserActivityState:(id)state
{
  currentTabViewType = [(PhoneTabBarController *)self currentTabViewType];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = currentTabViewType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity continuity - Saving out currentTabType %d", buf, 8u);
  }

  userActivity = [(PhoneTabBarController *)self userActivity];
  selectedViewController = [(PhoneTabBarController *)self selectedViewController];
  title = [selectedViewController title];
  [userActivity setTitle:title];

  userActivity2 = [(PhoneTabBarController *)self userActivity];
  v10 = [NSNumber numberWithInt:currentTabViewType, @"PHLastTabTypeKey"];
  v13 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [userActivity2 setUserInfo:v11];
}

- (int)defaultTabViewType
{
  if ([UIApp showsPhoneDialer])
  {
    return 4;
  }

  v3 = +[(PHApplicationServices *)MPApplicationServices];
  contactStore = [v3 contactStore];

  if (contactStore)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (int)tabViewTypeToReturnTo:(id)to
{
  toCopy = to;
  defaultTabViewType = [(PhoneTabBarController *)self defaultTabViewType];
  if (!toCopy)
  {
    toCopy = PHPreferencesGetValueInDomain();
  }

  if (-[PhoneTabBarController shouldShowLastViewedTabGivenLastViewedTab:](self, "shouldShowLastViewedTabGivenLastViewedTab:", [toCopy intValue]))
  {
    defaultTabViewType = [toCopy intValue];
  }

  return defaultTabViewType;
}

- (BOOL)shouldShowLastViewedTabGivenLastViewedTab:(int)tab
{
  bootSession = [(PhoneTabBarController *)self bootSession];
  isInDifferentBootSession = [bootSession isInDifferentBootSession];

  bootSession2 = [(PhoneTabBarController *)self bootSession];
  [bootSession2 persistBootSessionID];

  if (tab == 6 && [(PhoneTabBarController *)self isAllowedToSwitchToSearch])
  {
    return 1;
  }

  else
  {
    return (tab != 6) & ((tab != 5) | isInDifferentBootSession ^ 1);
  }
}

- (int)currentTabViewType
{
  selfCopy = self;
  selectedViewController = [(PhoneTabBarController *)self selectedViewController];
  LODWORD(selfCopy) = [(PhoneTabBarController *)selfCopy tabTypeForViewController:selectedViewController];

  return selfCopy;
}

- (void)_updateBottomTabs:(BOOL)tabs lastViewTypeNumber:(id)number
{
  tabsCopy = tabs;
  numberCopy = number;
  v7 = +[(PHApplicationServices *)MPApplicationServices];
  contactStore = [v7 contactStore];

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

  if (tabsCopy)
  {
    currentTabViewType = [(PhoneTabBarController *)self currentTabViewType];
  }

  else if (numberCopy)
  {
    currentTabViewType = [numberCopy intValue] == 1;
  }

  else
  {
    currentTabViewType = 0;
  }

  v12 = contactStore != 0;
  v13 = +[CAUILayoutManager shared];
  current = [v13 current];

  LOBYTE(v16) = 0;
  if (current)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  [(PhoneTabBarController *)self showFavoritesTab:v15 recentsTab:1 contactsTab:v12 keypadTab:1 voicemailTab:v10 prewarm:currentTabViewType hostedInRemoteViewController:v16];
  if (tabsCopy)
  {
    [(PhoneTabBarController *)self switchToTab:currentTabViewType];
  }
}

- (id)controllerForTabViewType:(int)type
{
  keypadViewController = 0;
  if (type > 3)
  {
    switch(type)
    {
      case 4:
        keypadViewController = [(PhoneTabBarController *)self keypadViewController];
        break;
      case 5:
        keypadViewController = [(PhoneTabBarController *)self voicemailViewController];
        break;
      case 6:
        keypadViewController = [(PhoneTabBarController *)self searchNavigationController];
        break;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        keypadViewController = [(PhoneTabBarController *)self favoritesNavigationController];
        break;
      case 2:
        keypadViewController = [(PhoneTabBarController *)self phoneRecentsController];
        break;
      case 3:
        keypadViewController = [(PhoneTabBarController *)self contactsViewController];
        break;
    }
  }

  return keypadViewController;
}

- (void)switchToTab:(int)tab
{
  v3 = *&tab;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PhoneTabBarController switchToTab:%d]", buf, 8u);
  }

  v6 = [(PhoneTabBarController *)self controllerForTabViewType:v3];
  v7 = [(PhoneTabBarController *)self controllerForTabViewType:[(PhoneTabBarController *)self defaultTabViewType]];
  selectedViewController = [(PhoneTabBarController *)self selectedViewController];

  if (v6 != selectedViewController)
  {
    if (v6)
    {
      viewControllers = [(PhoneTabBarController *)self viewControllers];
      if ([viewControllers containsObject:v6])
      {
LABEL_8:

LABEL_9:
        selectedViewController2 = [(PhoneTabBarController *)self selectedViewController];

        if (v6 != selectedViewController2)
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
      viewControllers2 = [(PhoneTabBarController *)self viewControllers];
      v20 = [viewControllers2 containsObject:v7];

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
  phoneRecentsController = [(PhoneTabBarController *)self phoneRecentsController];
  [phoneRecentsController showVoicemails];
}

- (BOOL)handleUserActivityContinuation:(id)continuation
{
  continuationCopy = continuation;
  userInfo = [continuationCopy userInfo];
  activityType = [continuationCopy activityType];
  v7 = activityType;
  v67 = activityType;
  if (!userInfo || !activityType || [activityType caseInsensitiveCompare:@"com.apple.Contacts.ViewingCard"])
  {
    interaction = [continuationCopy interaction];

    if (interaction)
    {
      selfCopy9 = self;
      interaction2 = [continuationCopy interaction];
      intent = [(MPMessageID *)interaction2 intent];
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

        intValue = 5;
      }

      else
      {
        intValue = 0;
      }

      v24 = 0;
      v19 = 0;
      v23 = 0;
LABEL_24:
      v25 = 0;
      goto LABEL_53;
    }

    featureFlags = [(PhoneTabBarController *)self featureFlags];
    callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];
    if (userInfo && callHistorySearchEnabled && v7)
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

        v19 = [userInfo objectForKey:CSSearchQueryString];
        if ([(MPMessageID *)v19 length])
        {
          v20 = PHDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Activity continuity - Spotlight search activity with searchQuery: %@", buf, 0xCu);
          }

          intValue = 2;
          if (self->_phoneRecentsController)
          {
            v21 = +[CAUILayoutManager shared];
            current = [v21 current];

            v23 = 0;
            if (current == 1)
            {
              intValue = 6;
            }

            else
            {
              intValue = 2;
            }
          }

          else
          {
            v23 = 0;
          }

          goto LABEL_72;
        }

        selfCopy9 = self;
        v24 = 0;
        v23 = 0;
        v25 = 0;
        intValue = 0;
        isKindOfClass = 0;
        goto LABEL_54;
      }
    }

    else
    {
    }

    featureFlags2 = [(PhoneTabBarController *)self featureFlags];
    callHistorySearchEnabled2 = [featureFlags2 callHistorySearchEnabled];
    if (userInfo && callHistorySearchEnabled2 && v7)
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

        interaction2 = [userInfo objectForKey:CSSearchableItemActivityIdentifier];
        v19 = [userInfo objectForKey:CSSearchQueryString];
        if (interaction2)
        {
          v35 = objc_alloc_init(CHManager);
          v36 = [CHRecentCall predicateForCallsWithUniqueID:interaction2];
          v66 = v35;
          v37 = [v35 callsWithPredicate:v36 limit:1 offset:0 batchSize:0];

          if ([v37 count])
          {
            v23 = interaction2;
            v38 = PHDefaultLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v69 = v19;
              v70 = 2112;
              v71 = v23;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Activity continuity - Spotlight call search activity with searchQuery: %@ recentsUniqueID: %@", buf, 0x16u);
            }

            selfCopy9 = self;
            intValue = 2;
            if (self->_phoneRecentsController)
            {
              v39 = +[CAUILayoutManager shared];
              current2 = [v39 current];

              v24 = 0;
              if (current2 == 1)
              {
                intValue = 6;
              }

              else
              {
                intValue = 2;
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
            featureFlags3 = [(PhoneTabBarController *)self featureFlags];
            voicemailSearchEnabled = [featureFlags3 voicemailSearchEnabled];

            if (voicemailSearchEnabled)
            {
              v62 = [[NSUUID alloc] initWithUUIDString:interaction2];
              v65 = v62;
              if (v62 && (v63 = [[MPMessageID alloc] initWithUuid:v62]) != 0)
              {
                v24 = v63;
                selfCopy9 = self;
                v64 = PHDefaultLog();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v69 = v24;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Activity continuity - Spotlight voicemail search result activity with messageID: %@", buf, 0xCu);
                }

                isKindOfClass = 1;
                intValue = 5;
              }

              else
              {
                selfCopy9 = self;
                v64 = PHDefaultLog();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v69 = interaction2;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[WARN] Activity continuity - Failed to create MPMessageID for uniqueIdentifier %@", buf, 0xCu);
                }

                v24 = 0;
                intValue = 0;
                isKindOfClass = 0;
              }

              v23 = 0;
            }

            else
            {
              selfCopy9 = self;
              v24 = 0;
              v23 = 0;
              intValue = 0;
              isKindOfClass = 0;
            }
          }

          goto LABEL_24;
        }

        selfCopy9 = self;
        v24 = 0;
        v23 = 0;
        v25 = 0;
        goto LABEL_32;
      }
    }

    else
    {
    }

    selfCopy9 = self;
    v41 = PHDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Activity continuity - Phone activity", buf, 2u);
    }

    interaction2 = [userInfo objectForKey:@"PHLastTabTypeKey"];
    intValue = [(MPMessageID *)interaction2 intValue];
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

  interaction2 = +[(PHApplicationServices *)MPApplicationServices];
  contactStore = [(MPMessageID *)interaction2 contactStore];
  v28 = +[CNContactViewController descriptorForRequiredKeys];
  v72 = v28;
  v29 = [NSArray arrayWithObjects:&v72 count:1];
  v25 = [contactStore contactWithUserActivityUserInfo:userInfo keysToFetch:v29];

  selfCopy9 = self;
  if (!v25)
  {
    v30 = PHDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(PhoneTabBarController *)userInfo handleUserActivityContinuation:v30];
    }
  }

  v24 = 0;
  v19 = 0;
  v23 = 0;
LABEL_32:
  intValue = 0;
LABEL_52:
  isKindOfClass = 0;
LABEL_53:

  if (intValue)
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

      [(PhoneTabBarController *)selfCopy9 switchToTab:3];
      contactsViewController = [(PhoneTabBarController *)selfCopy9 contactsViewController];
      [contactsViewController showCardForContact:v25 animated:0];

      isKindOfClass = 1;
      goto LABEL_59;
    }

    self = selfCopy9;
    if (v24)
    {
      v44 = PHDefaultLog();
      v7 = v67;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        messageUUID = [(MPMessageID *)v24 messageUUID];
        *buf = 138412290;
        v69 = messageUUID;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Activity continuity - Resuming to voicemail with messageID: %@", buf, 0xCu);
      }

      if (self->_phoneRecentsController && (+[CAUILayoutManager shared](CAUILayoutManager, "shared"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 current], v46, v47 == 1))
      {
        [(PhoneTabBarController *)self switchToTab:2];
        phoneRecentsController = [(PhoneTabBarController *)self phoneRecentsController];
        messageUUID2 = [(MPMessageID *)v24 messageUUID];
        [phoneRecentsController presentVoicemailDetailsWithUUID:messageUUID2 completion:&__block_literal_global_9];
      }

      else
      {
        [(PhoneTabBarController *)self switchToTab:5];
        phoneRecentsController = [(PhoneTabBarController *)self voicemailViewController];
        [phoneRecentsController playMessageWithID:v24];
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
        viewControllers = [(PhoneNavigationController *)self->_searchNavigationController viewControllers];
        firstObject = [viewControllers firstObject];

        [firstObject startSearchingForText:v19];
        if ([(MPMessageID *)v23 length])
        {
          [firstObject handleShowDetailsURLForUniqueID:v23];
        }
      }

      else
      {
        [(PhoneTabBarController *)self switchToTab:2];
        v57 = [(MPMessageID *)v23 length];
        phoneRecentsController2 = [(PhoneTabBarController *)self phoneRecentsController];
        firstObject = phoneRecentsController2;
        if (v57)
        {
          [phoneRecentsController2 showDetailsForCallWithUniqueID:v23 searchText:v19];
        }

        else
        {
          [phoneRecentsController2 startSearchingForText:v19 completion:0];
        }
      }

      v25 = 0;
    }

    else
    {
      if (v51)
      {
        *buf = 67109120;
        LODWORD(v69) = intValue;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Activity continuity - Resuming to tab type: %d", buf, 8u);
      }

      [(PhoneTabBarController *)self switchToTab:intValue];
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

- (void)handleURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"mobilephone-contacts"])
  {
    host = [lCopy host];
    lowercaseString2 = [host lowercaseString];

    if (lowercaseString2 && [lowercaseString2 isEqualToString:@"show"])
    {
      query = [lCopy query];
      v10 = [query rangeOfString:@"="];
      if (v10)
      {
        v11 = v10;
        if (v10 < [query length] - 1)
        {
          v12 = [query substringToIndex:v11];
          v13 = [query substringFromIndex:v11 + 1];
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
              contactsViewController = [(PhoneTabBarController *)self contactsViewController];
              [contactsViewController showCardForContact:v19 animated:0];
            }
          }
        }
      }
    }

    contactsViewController2 = [(PhoneTabBarController *)self contactsViewController];
LABEL_13:
    phoneRecentsController = contactsViewController2;
    goto LABEL_14;
  }

  if ([lowercaseString isEqualToString:@"vmshow"])
  {
    lowercaseString2 = [lCopy voicemailMessageUUID];
    if (!lowercaseString2 && ![UIApp hasEnhancedVoicemail])
    {
      phoneRecentsController = 0;
      goto LABEL_14;
    }

    v23 = +[CAUILayoutManager shared];
    current = [v23 current];

    if (current == 1)
    {
      contactsViewController2 = [(PhoneTabBarController *)self phoneRecentsController];
    }

    else
    {
      v28 = PHDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Switching to Voicemail tab to show a voicemail.", buf, 2u);
      }

      contactsViewController2 = [(PhoneTabBarController *)self voicemailViewController];
    }

    goto LABEL_13;
  }

  if (([lowercaseString isEqualToString:@"mobilephone-recents"] & 1) == 0 && !objc_msgSend(lowercaseString, "isEqualToString:", @"mobilephone-unknowncallerstip"))
  {
    if ([lowercaseString isEqualToString:@"mobilephone-favorites"])
    {
      favoritesNavigationController = [(PhoneTabBarController *)self favoritesNavigationController];
    }

    else
    {
      if (![lowercaseString isEqualToString:@"mobilephone-keypad"])
      {
        phoneRecentsController = 0;
        goto LABEL_20;
      }

      favoritesNavigationController = [(PhoneTabBarController *)self keypadViewController];
    }

    goto LABEL_41;
  }

  v25 = +[MPPreferences sharedPreferences];
  useSwiftUIRecents = [v25 useSwiftUIRecents];

  if (useSwiftUIRecents)
  {
    favoritesNavigationController = [(PhoneTabBarController *)self recentsViewController];
LABEL_41:
    phoneRecentsController = favoritesNavigationController;
    goto LABEL_15;
  }

  phoneRecentsController = [(PhoneTabBarController *)self phoneRecentsController];
  [(PhoneTabBarController *)self switchToTab:[(PhoneTabBarController *)self tabTypeForViewController:phoneRecentsController]];
  featureFlags = [(PhoneTabBarController *)self featureFlags];
  callExperiencePhoneAppEnabled = [featureFlags callExperiencePhoneAppEnabled];

  if (callExperiencePhoneAppEnabled)
  {
    goto LABEL_15;
  }

  lowercaseString2 = [lCopy recentsUniqueID];
  if ([lowercaseString2 length])
  {
    recentsTableViewController = [(PhoneTabBarController *)self recentsTableViewController];
    [recentsTableViewController handleShowDetailsURLForUniqueID:lowercaseString2];
  }

LABEL_14:

LABEL_15:
  if (phoneRecentsController)
  {
    [(PhoneTabBarController *)self switchToTab:[(PhoneTabBarController *)self tabTypeForViewController:phoneRecentsController]];
    if ([phoneRecentsController conformsToProtocol:&OBJC_PROTOCOL___PhoneTabViewController])
    {
      phoneRecentsController = phoneRecentsController;
      if (objc_opt_respondsToSelector())
      {
        [phoneRecentsController handleURL:lCopy];
      }
    }
  }

LABEL_20:
}

- (int)tabTypeForViewController:(id)controller
{
  controllerCopy = controller;
  favoritesNavigationController = [(PhoneTabBarController *)self favoritesNavigationController];

  if (favoritesNavigationController == controllerCopy)
  {
    v18 = 1;
    goto LABEL_16;
  }

  recentsNavigationController = [(PhoneTabBarController *)self recentsNavigationController];
  if (recentsNavigationController == controllerCopy)
  {
    goto LABEL_14;
  }

  phoneRecentsController = [(PhoneTabBarController *)self phoneRecentsController];
  v9 = phoneRecentsController;
  if (phoneRecentsController == controllerCopy)
  {

LABEL_14:
    goto LABEL_15;
  }

  recentsTableViewController = [(PhoneTabBarController *)self recentsTableViewController];

  if (recentsTableViewController == controllerCopy)
  {
LABEL_15:
    v18 = 2;
    goto LABEL_16;
  }

  contactsViewController = [(PhoneTabBarController *)self contactsViewController];

  if (contactsViewController == controllerCopy)
  {
    v18 = 3;
  }

  else
  {
    keypadViewController = [(PhoneTabBarController *)self keypadViewController];

    if (keypadViewController == controllerCopy)
    {
      v18 = 4;
    }

    else
    {
      voicemailViewController = [(PhoneTabBarController *)self voicemailViewController];

      if (voicemailViewController == controllerCopy)
      {
        v18 = 5;
      }

      else
      {
        searchNavigationController = [(PhoneTabBarController *)self searchNavigationController];

        if (searchNavigationController == controllerCopy)
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

          controllerCopy = [NSString stringWithFormat:@"Unknown view controller: %@", controllerCopy];
          v17 = +[NSAssertionHandler currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"PhoneTabBarController.m" lineNumber:996 description:controllerCopy];

          v18 = 0;
        }
      }
    }
  }

LABEL_16:

  return v18;
}

- (int)tabTypeForTab:(id)tab
{
  tabCopy = tab;
  identifier = [tabCopy identifier];
  v6 = [identifier isEqualToString:@"com.apple.UIKit.Search"];

  if (v6)
  {
    LODWORD(integerValue) = 6;
  }

  else
  {
    identifier2 = [tabCopy identifier];
    integerValue = [identifier2 integerValue];

    if ((integerValue - 1) > 5)
    {
      viewController = [tabCopy viewController];

      if (viewController)
      {
        viewController2 = [tabCopy viewController];
        LODWORD(integerValue) = [(PhoneTabBarController *)self tabTypeForViewController:viewController2];
      }

      else
      {
        v11 = PHDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(PhoneTabBarController *)tabCopy tabTypeForTab:v11];
        }

        LODWORD(integerValue) = 0;
      }
    }
  }

  return integerValue;
}

- (id)viewControllerForTabViewType:(int)type
{
  if (type <= 2)
  {
    switch(type)
    {
      case 0:
LABEL_14:
        firstObject = 0;
        goto LABEL_19;
      case 1:
        favoritesViewController = [(PhoneTabBarController *)self favoritesViewController];
        break;
      case 2:
        favoritesViewController = [(PhoneTabBarController *)self phoneRecentsController];
        break;
      default:
LABEL_13:
        v9 = [NSString stringWithFormat:@"Unknown tab type: %u", *&type];
        v10 = +[NSAssertionHandler currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"PhoneTabBarController.m" lineNumber:1046 description:v9];

        goto LABEL_14;
    }
  }

  else
  {
    if (type <= 4)
    {
      if (type == 3)
      {
        [(PhoneTabBarController *)self contactsViewController];
      }

      else
      {
        [(PhoneTabBarController *)self keypadViewController];
      }
      favoritesViewController = ;
      goto LABEL_18;
    }

    if (type != 5)
    {
      if (type == 6)
      {
        searchNavigationController = [(PhoneTabBarController *)self searchNavigationController];
        viewControllers = [searchNavigationController viewControllers];
        firstObject = [viewControllers firstObject];

        goto LABEL_19;
      }

      goto LABEL_13;
    }

    favoritesViewController = [(PhoneTabBarController *)self voicemailViewController];
  }

LABEL_18:
  firstObject = favoritesViewController;
LABEL_19:

  return firstObject;
}

- (void)updateListenersForState:(int64_t)state
{
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__PhoneTabBarController_updateListenersForState___block_invoke;
  v8[3] = &unk_100285B68;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  v5 = objc_retainBlock(v8);
  if (state)
  {
    voicemailListener = [(PhoneTabBarController *)self voicemailListener];

    if (!voicemailListener)
    {
      (v5[2])(v5);
    }
  }

  else
  {
    voicemailListener2 = [(PhoneTabBarController *)self voicemailListener];

    if (voicemailListener2)
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

- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification
{
  notificationCopy = notification;
  if ([UIApp shouldShowReceptionistOnboarding])
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      name = [notificationCopy name];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = name;
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
  buttonTray = [v8 buttonTray];
  [buttonTray addButton:v9];

  v13 = +[OBLinkTrayButton linkButton];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"RECEPTIONIST_ONBOARDING_SET_UP_LATER" value:&stru_10028F310 table:@"General"];
  [v13 setTitle:v15 forState:0];

  [v13 addTarget:self action:"dismissScreenUnknownCallers:" forControlEvents:64];
  buttonTray2 = [v8 buttonTray];
  [buttonTray2 addButton:v13];

  [v8 setModalPresentationStyle:0];
  [(PhoneTabBarController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)enableScreenUnknownCallers:(id)callers
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

- (void)dismissScreenUnknownCallers:(id)callers
{
  +[TPTipsHelper donateHasDismissedScreeningOnboardingModal];

  [(PhoneTabBarController *)self dismissViewControllerAnimated:1 completion:0];
}

+ (id)defaultPNGName
{
  rootViewController = [UIApp rootViewController];
  baseViewController = [rootViewController baseViewController];

  selectedViewController = [baseViewController selectedViewController];
  defaultPNGName = [objc_opt_class() defaultPNGName];

  return defaultPNGName;
}

- (BOOL)shouldSnapshot
{
  v2 = [(PhoneTabBarController *)self viewControllerForTabViewType:[(PhoneTabBarController *)self currentTabViewType]];
  shouldSnapshot = [v2 shouldSnapshot];

  return shouldSnapshot;
}

- (void)prepareForSnapshot
{
  v2 = [(PhoneTabBarController *)self viewControllerForTabViewType:[(PhoneTabBarController *)self currentTabViewType]];
  [v2 prepareForSnapshot];
}

- (void)transitionCompleted
{
  selectedViewController = [(PhoneTabBarController *)self selectedViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    selectedViewController2 = [(PhoneTabBarController *)self selectedViewController];
    [selectedViewController2 transitionCompleted];
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
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(_TtC11MobilePhone26PhoneRecentsViewController);
    phoneRecentsController = self->_phoneRecentsController;
    self->_phoneRecentsController = v6;
  }

LABEL_6:
  v7 = +[(PHApplicationServices *)MPApplicationServices];
  contactStore = [v7 contactStore];
  v9 = contactStore != 0;

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
  contactsViewController = [(PhoneTabBarController *)self contactsViewController];
  contactListViewController = [contactsViewController contactListViewController];
  navigationItem = [contactListViewController navigationItem];
  [navigationItem setPrompt:v13];

  keypadViewController = [(PhoneTabBarController *)self keypadViewController];
  [keypadViewController setIsHostedInRemoteViewController:1];

  contactsViewController2 = [(PhoneTabBarController *)self contactsViewController];
  [(PhoneTabBarController *)self updateSelectedViewController:contactsViewController2];
}

- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab
{
  controllerCopy = controller;
  viewController = [tab viewController];
  selectedViewController = [(PhoneTabBarController *)self selectedViewController];
  keypadViewController = [(PhoneTabBarController *)self keypadViewController];
  if (([selectedViewController isEqual:keypadViewController] & 1) == 0)
  {

    goto LABEL_5;
  }

  contactsViewController = [(PhoneTabBarController *)self contactsViewController];
  v11 = [viewController isEqual:contactsViewController];

  if (v11)
  {
    selectedViewController = +[MPSignpost sharedInstance];
    [selectedViewController keypadTabSwitchStarted];
LABEL_5:
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![viewController tabBarControllerShouldSelectViewController:controllerCopy])
  {
    v14 = 0;
  }

  else
  {
    selectedViewController2 = [controllerCopy selectedViewController];

    if (viewController != selectedViewController2)
    {
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotificationName:@"PhoneApplicationDidChangeTabBarSelectionNotification" object:viewController userInfo:0];
    }

    v14 = 1;
  }

  selectedViewController3 = [controllerCopy selectedViewController];

  if (viewController == selectedViewController3)
  {
    [(PhoneTabBarController *)self popCurrentNavigationControllerToRootViewControllerAnimated:1];
  }

  return v14;
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  v5 = [(PhoneTabBarController *)self currentTabViewType:controller];
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

- (void)presentContactsSearchFor:(id)for
{
  forCopy = for;
  [(PhoneTabBarController *)self presentSearch:forCopy];
  v6 = +[CSSearchMetrics shared];
  v5 = [forCopy length];

  [v6 logSearchResultInteraction:1 cellType:8 searchLength:v5];
}

- (void)didPressSearchButton:(id)button unformattedNumber:(id)number
{
  numberCopy = number;
  featureFlags = [(PhoneTabBarController *)self featureFlags];
  smartDialerExpandedSearchEnabled = [featureFlags smartDialerExpandedSearchEnabled];

  if (smartDialerExpandedSearchEnabled)
  {
    [(PhoneTabBarController *)self presentSearch:numberCopy];
  }
}

- (void)keyPadViewControllerDidAppear:(BOOL)appear
{
  v4 = createPHPhoneTabBarControllerTabViewDidAppearNotificationInfo(4, self);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHPhoneTabBarControllerTabViewDidAppearNotification" object:v4];
}

- (void)didPressAddContactButton:(int64_t)button
{
  if ((button - 1) <= 2)
  {
    v4 = dword_1002089A8[button - 1];
    v5 = +[CSSearchMetrics shared];
    [v5 keypadButtonInteractedWithButtonType:v4];
  }
}

- (void)keyPadSearchFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler
{
  resultCopy = result;
  forCopy = for;
  handlerCopy = handler;
  v10 = +[NSDate date];
  contactSearchManager = [(PhoneTabBarController *)self contactSearchManager];
  [contactSearchManager cancelPreviousSearch];

  contactSearchManager2 = [(PhoneTabBarController *)self contactSearchManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __79__PhoneTabBarController_keyPadSearchFor_shouldRefreshResult_completionHandler___block_invoke;
  v16[3] = &unk_100285B90;
  v18 = forCopy;
  v19 = handlerCopy;
  v17 = v10;
  v13 = forCopy;
  v14 = v10;
  v15 = handlerCopy;
  [contactSearchManager2 searchFor:v13 shouldRefreshResult:resultCopy completionHandler:v16];
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

- (void)presentSearch:(id)search
{
  searchCopy = search;
  objc_initWeak(&location, self);
  v5 = [MPKeypadSearchViewController alloc];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __39__PhoneTabBarController_presentSearch___block_invoke;
  v11 = &unk_1002857A8;
  objc_copyWeak(&v12, &location);
  v6 = [(MPKeypadSearchViewController *)v5 initWithOnDismissHandler:&v8];
  [(MPKeypadSearchViewController *)v6 updateSearchText:searchCopy, v8, v9, v10, v11];
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
    suggestedContactStore = [v5 suggestedContactStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __45__PhoneTabBarController_contactSearchManager__block_invoke;
    v10[3] = &unk_100285BB8;
    v10[4] = self;
    v7 = [v4 initWithType:1 contactStore:suggestedContactStore searchResultsRanker:v10];
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
  selfCopy = self;
  v8 = SupportFlowViewController.init(flowIdentifier:showsSearchBar:)();
  [(PhoneTabBarController *)selfCopy presentViewController:v8 animated:1 completion:0];
}

- (void)applyDetailsPresenterToSearchViewController:(id)controller withRecentsViewController:(id)viewController andPresentingFromViewController:(id)fromViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  fromViewControllerCopy = fromViewController;
  selfCopy = self;
  specialized PhoneTabBarController.applyDetailsPresenter(to:with:presentingFrom:)(controllerCopy, viewControllerCopy, fromViewControllerCopy);
}

- (id)makeFavoritesListViewControllerWith:(id)with recentsViewController:(id)controller navigationController:(id)navigationController
{
  withCopy = with;
  controllerCopy = controller;
  navigationControllerCopy = navigationController;
  selfCopy = self;
  v12 = specialized PhoneTabBarController.makeFavoritesListViewController(with:recentsViewController:navigationController:)(withCopy, controllerCopy, navigationControllerCopy);

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