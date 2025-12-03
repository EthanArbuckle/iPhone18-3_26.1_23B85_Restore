@interface PhoneSceneDelegate
- (BOOL)isMirroringSessionActive;
- (BOOL)navigateToSeymourTab;
- (BOOL)presentingActiveWorkout;
- (CHWorkoutDetailViewController)currentWorkoutDetailViewController;
- (NLTVConnectionManager)tvConnectionManager;
- (id)_createRootViewController;
- (id)_fitnessDataCollectionEnabledPreference;
- (id)_parseGoalRecommendation:(id)recommendation;
- (id)provideSummaryViewControllerForDataSource:(id)source;
- (id)summaryDeeplinkViewController;
- (int64_t)_parseFitnessCoachingNotificationType:(id)type;
- (void)_clearWeeklyGoalDisplayContext;
- (void)_clearWindowSceneAndOptions;
- (void)_configureWorkoutHandler;
- (void)_createOrbActions;
- (void)_dismissMirrorViewControllerAndClearReferenceWithCompletion:(id)completion;
- (void)_handleActivityShareShortcut;
- (void)_handleActivitySharingURL:(id)l;
- (void)_handleFriendsShortcut;
- (void)_handleHistoryShortcut;
- (void)_handleManuallyLoggedWorkoutNavigationNotification;
- (void)_handleSettingsShortcut;
- (void)_handleShortcutItem:(id)item didJustLaunch:(BOOL)launch;
- (void)_handleStartWorkoutConfigurationURL:(id)l;
- (void)_handleTodayShortcut;
- (void)_handleTrendsShortcut;
- (void)_handleWorkoutConfigurationURL:(id)l;
- (void)_ppt_showSharingTab;
- (void)_presentExerciseAndStandGoalsSetupOnboarding;
- (void)_presentMoveGoalSetupOnboarding;
- (void)_presentOnboardingNavigationController:(id)controller;
- (void)_presentWelcomeViewsSetupOnboarding:(BOOL)onboarding;
- (void)_presentWhatsNewViewSetupOnboarding;
- (void)_refreshBadgeCounts;
- (void)_resetToViewController:(id)controller animated:(BOOL)animated;
- (void)_setActivityTabBarImage;
- (void)_setBadgeCount:(unint64_t)count forTabBarItem:(id)item;
- (void)_setFitnessDataCollectionEnabled:(BOOL)enabled;
- (void)_setSelectedViewController:(id)controller;
- (void)_setupActivityAppAndLoadData;
- (void)_setupDeeplinks;
- (void)_setupOnboarding;
- (void)_setupTabBarViewControllersAndOrbActions;
- (void)_seymourAvailabilityStatusDidChange:(id)change;
- (void)_showCoachingDataCollectionMessageIfNeeded;
- (void)_trendsAvailabilityStatusDidChange:(id)change;
- (void)_updateSeymourNavigationController;
- (void)aggregator:(id)aggregator didUpdateActivitySharingBadgeCount:(int64_t)count;
- (void)aggregator:(id)aggregator didUpdateEngagmentBadgeCount:(int64_t)count;
- (void)cleanupGuestAuthentication;
- (void)dealloc;
- (void)dismissMirrorViewControllerWithCompletion:(id)completion;
- (void)endDiscovery;
- (void)handleAppIntentDeeplinkWithURL:(id)l;
- (void)handleAppIntentWithUserActivity:(id)activity;
- (void)handleFitnessCoachingNotificationResponse:(id)response;
- (void)memoryWarningReceived:(id)received;
- (void)onboardingCoordinatorPhaseDidChangeTo:(int64_t)to;
- (void)openURLContext:(id)context;
- (void)presentBrowsingConsentAlertWithCompletion:(id)completion;
- (void)presentModelOnSummaryTabWithViewController:(id)controller;
- (void)promptForPasscodeWithLength:(int64_t)length completion:(id)completion;
- (void)ringCelebrationDidBegin;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)trophyCaseDidBeginCelebration:(id)celebration;
- (void)updateTVDiscovery;
- (void)updateWorkoutState:(int64_t)state shouldShowTimeout:(BOOL)timeout;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation PhoneSceneDelegate

- (BOOL)presentingActiveWorkout
{
  workoutController = [(PhoneSceneDelegate *)self workoutController];
  activeWorkout = [workoutController activeWorkout];
  if (activeWorkout)
  {
    isMirroringSessionActive = 1;
  }

  else
  {
    isMirroringSessionActive = [(PhoneSceneDelegate *)self isMirroringSessionActive];
  }

  return isMirroringSessionActive;
}

- (BOOL)isMirroringSessionActive
{
  mirrorViewController = self->_mirrorViewController;
  if (mirrorViewController)
  {
    LOBYTE(mirrorViewController) = ![(WOMirrorViewController *)mirrorViewController isCompleted];
  }

  return mirrorViewController;
}

- (void)_setupActivityAppAndLoadData
{
  v3 = [[AAUIAchievementsDataProvider alloc] initWithHealthStore:self->_healthStore layoutMode:0];
  achievementsDataProvider = self->_achievementsDataProvider;
  self->_achievementsDataProvider = v3;

  [(AAUIAchievementsDataProvider *)self->_achievementsDataProvider startFetching];
  [(CHWorkoutVoiceAvailabilityProvider *)self->_workoutVoiceAvailabilityProvider setupAvailabilityObservation];
  fitnessAppContext = self->_fitnessAppContext;
  if (!fitnessAppContext)
  {
    v6 = [[CHFitnessAppContext alloc] initWithHealthStore:self->_healthStore seymourAvailabilityManager:self->_seymourAvailabilityManager wheelchairUseCache:self->_wheelchairUseCache formattingManager:self->_fitnessUIFormattingManager pregnancyStateProvider:self->_pregnancyStateProvider];
    v7 = self->_fitnessAppContext;
    self->_fitnessAppContext = v6;

    fitnessAppContext = self->_fitnessAppContext;
  }

  [(CHFitnessAppContext *)fitnessAppContext setNavigationDelegate:self];
  v8 = objc_alloc_init(AAUIBadgeImageFactory);
  badgeImageFactory = self->_badgeImageFactory;
  self->_badgeImageFactory = v8;

  v10 = objc_alloc_init(ACHAchievementLocalizationProvider);
  achievementLocalizationProvider = self->_achievementLocalizationProvider;
  self->_achievementLocalizationProvider = v10;

  unitManager = [(FIUIFormattingManager *)self->_fitnessUIFormattingManager unitManager];
  v13 = unitManager;
  if (unitManager)
  {
    if ([unitManager conformsToProtocol:&OBJC_PROTOCOL___ACHUnitManager])
    {
      [(ACHAchievementLocalizationProvider *)self->_achievementLocalizationProvider setAchUnitManager:v13];
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FIUIUnitManager failed to conform to the ACHUnitManager protocol, template's canonical unit will be utilized", &buf, 2u);
      }
    }
  }

  [(ACHAchievementLocalizationProvider *)self->_achievementLocalizationProvider setWheelchairUser:[(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCache isWheelchairUser]];
  v15 = objc_alloc_init(ASActivitySharingClient);
  activitySharingClient = self->_activitySharingClient;
  self->_activitySharingClient = v15;

  [(ASActivitySharingClient *)self->_activitySharingClient activateWithCompletionHandler:&stru_10083CE70];
  v17 = [[FIUIModel alloc] initWithHealthStore:self->_healthStore];
  model = self->_model;
  self->_model = v17;

  v19 = [[ASFriendListSectionManager alloc] initWithModel:self->_model activitySharingClient:self->_activitySharingClient workoutDataProvider:0];
  friendListManager = self->_friendListManager;
  self->_friendListManager = v19;

  workoutDataProvider = [(CHHistoryDataProvider *)self->_historyDataProvider workoutDataProvider];
  workoutsDataProvider = self->_workoutsDataProvider;
  self->_workoutsDataProvider = workoutDataProvider;

  v23 = objc_alloc_init(_TtC10FitnessApp17ActivityDateCache);
  activityDateCache = self->_activityDateCache;
  self->_activityDateCache = v23;

  v25 = [[_TtC10FitnessApp20ActivityDataProvider alloc] initWithHealthStore:self->_healthStore wheelchairUseCache:self->_wheelchairUseCache workoutDataProvider:self->_workoutsDataProvider achievementsDataProvider:self->_achievementsDataProvider];
  activityDataProvider = self->_activityDataProvider;
  self->_activityDataProvider = v25;

  v27 = +[CHNavigator sharedNavigator];
  deeplinkNavigator = self->_deeplinkNavigator;
  self->_deeplinkNavigator = v27;

  v29 = [_TtC10FitnessApp19BalanceDataProvider alloc];
  healthStore = self->_healthStore;
  v31 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v32 = [(BalanceDataProvider *)v29 initWithHealthStore:healthStore gregorianCalendar:v31 historyDataProvider:self->_historyDataProvider activityDataProvider:self->_activityDataProvider isFaking:0];
  balanceDataProvider = self->_balanceDataProvider;
  self->_balanceDataProvider = v32;

  v34 = [[_TtC10FitnessApp25TrendsAvailabilityManager alloc] initWithDataProvider:self->_activityDataProvider healthStore:self->_healthStore];
  trendsAvailabilityManager = self->_trendsAvailabilityManager;
  self->_trendsAvailabilityManager = v34;

  v36 = [[_TtC10FitnessApp38SeymourNotificationResponseCoordinator alloc] initWithFitnessAppContext:self->_fitnessAppContext];
  seymourNotificationResponseCoordinator = self->_seymourNotificationResponseCoordinator;
  self->_seymourNotificationResponseCoordinator = v36;

  [(PhoneSceneDelegate *)self _updateSeymourNavigationController];
  v38 = [[CHFitnessAppBadgeAggregator alloc] initWithFitnessAppContext:self->_fitnessAppContext activitySharingClient:self->_activitySharingClient];
  appBadgeAggregator = self->_appBadgeAggregator;
  self->_appBadgeAggregator = v38;

  [(CHFitnessAppBadgeAggregator *)self->_appBadgeAggregator setDelegate:self];
  [(CHFitnessAppContext *)self->_fitnessAppContext setAppBadgeAggregator:self->_appBadgeAggregator];
  v40 = [[_TtC10FitnessApp32SeymourDiscoverySheetCoordinator alloc] initWithAppContext:self->_fitnessAppContext badgingProvider:self->_appBadgeAggregator delegate:self];
  seymourDiscoverySheetCoordinator = self->_seymourDiscoverySheetCoordinator;
  self->_seymourDiscoverySheetCoordinator = v40;

  v42 = [CHActivityTypeKeyMigrator alloc];
  v43 = +[CHFitnessAppActivityTypeMigrationKeys migrationKeys];
  v44 = [(CHActivityTypeKeyMigrator *)v42 initWithMigrationKeys:v43];

  [(CHActivityTypeKeyMigrator *)v44 migrateIfNeeded];
  v45 = +[UNUserNotificationCenter currentNotificationCenter];
  [v45 setDelegate:self];

  v46 = +[NSNotificationCenter defaultCenter];
  v47 = +[_TtC10FitnessApp25TrendsAvailabilityManager trendsAvailabilityDidChangeNotification];
  [v46 addObserver:self selector:"_trendsAvailabilityStatusDidChange:" name:v47 object:self->_trendsAvailabilityManager];

  _createRootViewController = [(PhoneSceneDelegate *)self _createRootViewController];
  [(PhoneSceneDelegate *)self setRootViewController:_createRootViewController];

  window = [(PhoneSceneDelegate *)self window];
  rootViewController = [(PhoneSceneDelegate *)self rootViewController];
  [window setRootViewController:rootViewController];

  window2 = [(PhoneSceneDelegate *)self window];
  [window2 makeKeyAndVisible];

  v52 = +[NSNotificationCenter defaultCenter];
  [v52 addObserver:self selector:"updateTVDiscovery" name:UIApplicationDidBecomeActiveNotification object:0];

  if (self->_loadingView)
  {
    view = [(CHTabBarController *)self->_tabBarController view];
    CGAffineTransformMakeScale(&buf, 0.9, 0.9);
    [view setTransform:&buf];

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100122A78;
    v56[3] = &unk_10083A8B0;
    v56[4] = self;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100122AF4;
    v55[3] = &unk_10083B8E0;
    v55[4] = self;
    [UIView animateWithDuration:v56 animations:v55 completion:0.5];
  }

  else
  {
    [(PhoneSceneDelegate *)self _showCoachingDataCollectionMessageIfNeeded];
    +[CHNotificationConsentController updateAuthorization];
  }

  v54 = +[WODataLinkMonitor shared];
  [v54 addObserver:self];
}

- (id)_createRootViewController
{
  [ActivitySummaryCache setHealthStore:self->_healthStore];
  v3 = +[ActivitySummaryCache sharedInstance];
  [v3 loadDataIfNeeded];

  workoutsDataProvider = [(PhoneSceneDelegate *)self workoutsDataProvider];
  [workoutsDataProvider startFetching];

  workoutsDataProvider2 = [(PhoneSceneDelegate *)self workoutsDataProvider];
  self->_hasCurrentWorkouts = [workoutsDataProvider2 hasWorkouts];

  [(PhoneSceneDelegate *)self _configureWorkoutHandler];
  v6 = [CHActivityHistoryNavigationController alloc];
  activityDateCache = [(PhoneSceneDelegate *)self activityDateCache];
  pauseRingsCoordinator = [(PhoneSceneDelegate *)self pauseRingsCoordinator];
  v9 = [(CHActivityHistoryNavigationController *)v6 initWithDateCache:activityDateCache pauseRingsCoordinator:pauseRingsCoordinator];
  [(PhoneSceneDelegate *)self setActivityTileNavController:v9];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SUMMARY" value:&stru_1008680E8 table:@"Localizable"];
  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  tabBarItem = [activityTileNavController tabBarItem];
  [tabBarItem setTitle:v11];

  activityTileNavController2 = [(PhoneSceneDelegate *)self activityTileNavController];
  tabBarItem2 = [activityTileNavController2 tabBarItem];
  [tabBarItem2 setAccessibilityIdentifier:FIUITabBarSummaryAccessibilityIdentifier];

  [(PhoneSceneDelegate *)self _setActivityTabBarImage];
  objc_initWeak(&location, self);
  v16 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100123698;
  handler[3] = &unk_10083BD18;
  objc_copyWeak(&v133, &location);
  notify_register_dispatch(HKStandalonePhoneFitnessModeDidUpdateNotification, &self->_standalonePhoneFitnessModeChangeToken, &_dispatch_main_q, handler);

  v17 = [[CHFriendManager alloc] initWithActivitySharingClient:self->_activitySharingClient];
  [(PhoneSceneDelegate *)self setFriendManager:v17];

  v18 = [_TtC10FitnessApp23FriendsSetupCoordinator alloc];
  friendManager = [(PhoneSceneDelegate *)self friendManager];
  friendListManager = [(PhoneSceneDelegate *)self friendListManager];
  v21 = [(FriendsSetupCoordinator *)v18 initWithFriendManager:friendManager friendListSectionManager:friendListManager];
  [(PhoneSceneDelegate *)self setFriendsSetupCoordinator:v21];

  v22 = [CHWorkoutBrowsingViewController alloc];
  healthStore = self->_healthStore;
  fitnessUIFormattingManager = [(PhoneSceneDelegate *)self fitnessUIFormattingManager];
  workoutController = [(PhoneSceneDelegate *)self workoutController];
  activityPausedRingsObserver = [(PhoneSceneDelegate *)self activityPausedRingsObserver];
  workoutOccurrenceStore = [(PhoneSceneDelegate *)self workoutOccurrenceStore];
  fitnessIntelligenceConnection = [(PhoneSceneDelegate *)self fitnessIntelligenceConnection];
  workoutVoiceAvailabilityProvider = [(PhoneSceneDelegate *)self workoutVoiceAvailabilityProvider];
  fitnessAppContext = [(PhoneSceneDelegate *)self fitnessAppContext];
  v31 = [(CHWorkoutBrowsingViewController *)v22 initWithHealthStore:healthStore formattingManager:fitnessUIFormattingManager workoutController:workoutController activityPausedRingsObserverBridge:activityPausedRingsObserver occurrenceStore:workoutOccurrenceStore fitnessIntelligenceConnection:fitnessIntelligenceConnection workoutVoiceAvailabilityProvider:workoutVoiceAvailabilityProvider fitnessAppContext:fitnessAppContext];
  [(PhoneSceneDelegate *)self setWorkoutBrowsingViewController:v31];

  workoutBrowsingViewController = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
  workoutController2 = [(PhoneSceneDelegate *)self workoutController];
  unitManager = [(FIUIFormattingManager *)self->_fitnessUIFormattingManager unitManager];
  v34UnitManager = [unitManager unitManager];
  fitnessIntelligenceConnection2 = [(PhoneSceneDelegate *)self fitnessIntelligenceConnection];
  workoutVoiceAvailabilityProvider2 = [(PhoneSceneDelegate *)self workoutVoiceAvailabilityProvider];
  fitnessAppContext2 = [(PhoneSceneDelegate *)self fitnessAppContext];
  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v130[2] = sub_10012371C;
  v130[3] = &unk_10083CE98;
  objc_copyWeak(&v131, &location);
  v39 = [CHWorkoutUIControllerFactory makeWithRootViewController:workoutBrowsingViewController workoutController:workoutController2 unitManager:v34UnitManager fitnessIntelligenceConnection:fitnessIntelligenceConnection2 workoutVoiceAvailabilityProvider:workoutVoiceAvailabilityProvider2 fitnessAppContext:fitnessAppContext2 summaryViewControllerCompletion:v130];
  [(PhoneSceneDelegate *)self setWorkoutUIController:v39];

  if (sub_100011DC8())
  {
    v124 = objc_alloc_init(UICollectionViewFlowLayout);
    v127 = [_TtC10FitnessApp24ActivityDashboardContext alloc];
    activityDateCache = self->_activityDateCache;
    activityDataProvider = self->_activityDataProvider;
    balanceDataProvider = self->_balanceDataProvider;
    achievementsDataProvider = self->_achievementsDataProvider;
    historyDataProvider = self->_historyDataProvider;
    pauseRingsCoordinator = self->_pauseRingsCoordinator;
    workoutsDataProvider = self->_workoutsDataProvider;
    workoutFormattingManager = self->_workoutFormattingManager;
    friendsSetupCoordinator = self->_friendsSetupCoordinator;
    friendListManager = self->_friendListManager;
    friendManager = self->_friendManager;
    achievementLocalizationProvider = self->_achievementLocalizationProvider;
    badgeImageFactory = self->_badgeImageFactory;
    v43 = self->_healthStore;
    fitnessUIFormattingManager = self->_fitnessUIFormattingManager;
    fitnessAppContext = self->_fitnessAppContext;
    wheelchairUseCache = self->_wheelchairUseCache;
    trendsAvailabilityManager = self->_trendsAvailabilityManager;
    bridgedValue = [(CHWorkoutVoiceAvailabilityProvider *)self->_workoutVoiceAvailabilityProvider bridgedValue];
    v128 = [(ActivityDashboardContext *)v127 initWithActivityDataProvider:activityDataProvider activityDateCache:activityDateCache achievementsDataProvider:achievementsDataProvider balanceDataProvider:balanceDataProvider pauseRingsCoordinator:pauseRingsCoordinator historyDataProvider:historyDataProvider workoutFormattingManager:workoutFormattingManager workoutDataProvider:workoutsDataProvider friendListManager:friendListManager friendsSetupCoordinator:friendsSetupCoordinator chFriendManager:friendManager achievementLocalizationProvider:achievementLocalizationProvider badgeImageFactory:badgeImageFactory healthStore:v43 fiuiFormattingManager:fitnessUIFormattingManager fitnessAppContext:fitnessAppContext wheelchairUseCache:wheelchairUseCache trendsAvailabilityManager:trendsAvailabilityManager workoutVoiceAvailabilityProvider:bridgedValue];

    workoutBrowsingViewController2 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
    viewModel = [workoutBrowsingViewController2 viewModel];
    [(ActivityDashboardContext *)v128 setStandardActivityItemsViewModel:viewModel];

    v51 = [[_TtC10FitnessApp31ActivityDashboardViewController alloc] initWithCollectionViewLayout:v124 context:v128 healthStore:self->_healthStore];
    [(PhoneSceneDelegate *)self setActivityDashboardViewController:v51];

    activityDashboardViewController = [(PhoneSceneDelegate *)self activityDashboardViewController];
    [activityDashboardViewController setTrophyCaseViewControllerDelegate:self];

    activityDashboardViewController2 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    [activityDashboardViewController2 setHistoryPagingViewControllerDelegate:self];

    activityDashboardViewController3 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    navigationItem = [activityDashboardViewController3 navigationItem];
    [navigationItem setLargeTitleDisplayMode:3];

    workoutBrowsingViewController3 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
    activityDashboardViewController4 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    [activityDashboardViewController4 setQuickStartWorkoutActionHandler:workoutBrowsingViewController3];

    activityTileNavController3 = [(PhoneSceneDelegate *)self activityTileNavController];
    activityDashboardViewController5 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v136 = activityDashboardViewController5;
    v60 = [NSArray arrayWithObjects:&v136 count:1];
    [activityTileNavController3 setViewControllers:v60];

    chAwardsDataProvider = [(ActivityDashboardContext *)v128 chAwardsDataProvider];
  }

  else
  {
    v61 = [_TtC10FitnessApp26ActivityTileViewController alloc];
    healthStore = [(PhoneSceneDelegate *)self healthStore];
    fitnessAppContext3 = [(PhoneSceneDelegate *)self fitnessAppContext];
    activityDataProvider = [(PhoneSceneDelegate *)self activityDataProvider];
    pauseRingsCoordinator2 = [(PhoneSceneDelegate *)self pauseRingsCoordinator];
    historyDataProvider = [(PhoneSceneDelegate *)self historyDataProvider];
    achievementsDataProvider = [(PhoneSceneDelegate *)self achievementsDataProvider];
    achievementLocalizationProvider = [(PhoneSceneDelegate *)self achievementLocalizationProvider];
    model = [(PhoneSceneDelegate *)self model];
    badgeImageFactory = [(PhoneSceneDelegate *)self badgeImageFactory];
    friendListManager2 = [(PhoneSceneDelegate *)self friendListManager];
    fitnessUIFormattingManager2 = [(PhoneSceneDelegate *)self fitnessUIFormattingManager];
    workoutFormattingManager = [(PhoneSceneDelegate *)self workoutFormattingManager];
    activityDateCache2 = [(PhoneSceneDelegate *)self activityDateCache];
    trendsAvailabilityManager = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
    wheelchairUseCache = [(PhoneSceneDelegate *)self wheelchairUseCache];
    v70 = [(ActivityTileViewController *)v61 initWithHealthStore:healthStore fitnessAppContext:fitnessAppContext3 activityDataProvider:activityDataProvider pauseRingsCoordinator:pauseRingsCoordinator2 historyDataProvider:historyDataProvider achievementsDataProvider:achievementsDataProvider achievementLocalizationProvider:achievementLocalizationProvider fiuiModel:model badgeImageFactory:badgeImageFactory friendListManager:friendListManager2 fiuiFormattingManager:fitnessUIFormattingManager2 workoutFormattingManager:workoutFormattingManager activityDateCache:activityDateCache2 trendsAvailabilityManager:trendsAvailabilityManager wheelchairUseCache:wheelchairUseCache];
    [(PhoneSceneDelegate *)self setActivityTileViewController:v70];

    activityTileNavController4 = [(PhoneSceneDelegate *)self activityTileNavController];
    activityTileViewController = [(PhoneSceneDelegate *)self activityTileViewController];
    v135 = activityTileViewController;
    v73 = [NSArray arrayWithObjects:&v135 count:1];
    [activityTileNavController4 setViewControllers:v73];

    chAwardsDataProvider = [(ActivityTileViewController *)self->_activityTileViewController awardsDataProviderWrapper];
    v128 = 0;
  }

  v121 = self->_badgeImageFactory;
  v118 = self->_achievementLocalizationProvider;
  v74 = self->_achievementsDataProvider;
  activitySharingClient = self->_activitySharingClient;
  v76 = self->_fitnessAppContext;
  v77 = self->_fitnessUIFormattingManager;
  v78 = self->_friendListManager;
  v79 = self->_friendsSetupCoordinator;
  v80 = self->_friendManager;
  v81 = self->_healthStore;
  seymourCatalogItemDataProvider = [(CHFitnessAppContext *)v76 seymourCatalogItemDataProvider];
  v83 = [CHActivitySharingViewControllerFactory makeWithAchievementBadgeImageFactory:v121 achievementLocalizationProvider:v118 achievementsDataProvider:v74 activitySharingClient:activitySharingClient awardsDataProvider:chAwardsDataProvider fitnessAppContext:v76 fiuiFormattingManager:v77 friendListSectionManager:v78 friendsSetupCoordinator:v79 friendManager:v80 healthStore:v81 seymourCatalogItemDataProvider:seymourCatalogItemDataProvider wheelchairUseCache:self->_wheelchairUseCache workoutDataProvider:self->_workoutsDataProvider workoutFormattingManager:self->_workoutFormattingManager pauseRingsCoordinator:self->_pauseRingsCoordinator];
  [(PhoneSceneDelegate *)self setActivitySharingViewController:v83];

  v84 = [UIImage _systemImageNamed:@"person.2.fill"];
  activitySharingViewController = [(PhoneSceneDelegate *)self activitySharingViewController];
  tabBarItem3 = [activitySharingViewController tabBarItem];
  [tabBarItem3 setImage:v84];

  v87 = +[NSBundle mainBundle];
  v88 = [v87 localizedStringForKey:@"SHARING" value:&stru_1008680E8 table:@"Localizable"];
  activitySharingViewController2 = [(PhoneSceneDelegate *)self activitySharingViewController];
  tabBarItem4 = [activitySharingViewController2 tabBarItem];
  [tabBarItem4 setTitle:v88];

  activitySharingViewController3 = [(PhoneSceneDelegate *)self activitySharingViewController];
  tabBarItem5 = [activitySharingViewController3 tabBarItem];
  [tabBarItem5 setAccessibilityIdentifier:FIUITabBarSharingAccessibilityIdentifier];

  v93 = objc_alloc_init(CHTabBarController);
  [(PhoneSceneDelegate *)self setTabBarController:v93];

  [(PhoneSceneDelegate *)self _setupTabBarViewControllersAndOrbActions];
  v94 = +[ARUIMetricColors keyColors];
  nonGradientTextColor = [v94 nonGradientTextColor];

  window = [(PhoneSceneDelegate *)self window];
  [window setTintColor:nonGradientTextColor];

  v97 = [CHNavigationTracker alloc];
  tabBarController = [(PhoneSceneDelegate *)self tabBarController];
  fitnessAppContext4 = [(PhoneSceneDelegate *)self fitnessAppContext];
  workoutController3 = [(PhoneSceneDelegate *)self workoutController];
  v101 = [(CHNavigationTracker *)v97 initWithTabBarController:tabBarController fitnessAppContext:fitnessAppContext4 workoutController:workoutController3];
  [(PhoneSceneDelegate *)self setNavigationTracker:v101];

  v102 = [CHRootViewController alloc];
  tabBarController2 = [(PhoneSceneDelegate *)self tabBarController];
  healthStore2 = [(PhoneSceneDelegate *)self healthStore];
  v105 = [(CHRootViewController *)v102 initWithTabBarController:tabBarController2 healthStore:healthStore2];

  objc_destroyWeak(&v131);
  objc_destroyWeak(&v133);
  objc_destroyWeak(&location);

  return v105;
}

- (void)_configureWorkoutHandler
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100121B58;
  v7 = &unk_10083A710;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CHWorkoutDataProvider *)self->_workoutsDataProvider addUpdateHandler:v3, v4, v5, v6, v7];
  [(CHWorkoutDataProvider *)self->_workoutsDataProvider addAnimatedUpdateHandler:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_setupTabBarViewControllersAndOrbActions
{
  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  v33 = activityTileNavController;
  v4 = [NSArray arrayWithObjects:&v33 count:1];

  seymourNavController = [(PhoneSceneDelegate *)self seymourNavController];

  if (seymourNavController)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[seymour] Adding navigation controller to tab bar", v32, 2u);
    }

    seymourNavController2 = [(PhoneSceneDelegate *)self seymourNavController];
    v8 = [v4 arrayByAddingObject:seymourNavController2];

    v9 = FIUITabBarFitnessPlusAccessibilityIdentifier;
    seymourNavController3 = [(PhoneSceneDelegate *)self seymourNavController];
    tabBarItem = [seymourNavController3 tabBarItem];
    [tabBarItem setAccessibilityIdentifier:v9];

    v4 = v8;
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    workoutBrowsingViewController = [(PhoneSceneDelegate *)self workoutBrowsingViewController];

    if (workoutBrowsingViewController)
    {
      _HKInitializeLogging();
      v13 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[workout] Adding workout navigation controller to tab bar", v32, 2u);
      }

      workoutBrowsingViewController2 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      v15 = [v4 arrayByAddingObject:workoutBrowsingViewController2];

      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:@"WORKOUT" value:&stru_1008680E8 table:@"Localizable"];
      workoutBrowsingViewController3 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      tabBarItem2 = [workoutBrowsingViewController3 tabBarItem];
      [tabBarItem2 setTitle:v17];

      v20 = [UIImage _systemImageNamed:@"figure.run.circle.fill"];
      workoutBrowsingViewController4 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      tabBarItem3 = [workoutBrowsingViewController4 tabBarItem];
      [tabBarItem3 setImage:v20];

      v23 = FIUITabBarWorkoutAccessibilityIdentifier;
      workoutBrowsingViewController5 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      tabBarItem4 = [workoutBrowsingViewController5 tabBarItem];
      [tabBarItem4 setAccessibilityIdentifier:v23];

      v26 = [[NSUserActivity alloc] initWithActivityType:@"Fitness Workout"];
      [v26 setEligibleForHandoff:0];
      [v26 setUserInfo:&off_10086E520];
      workoutBrowsingViewController6 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      [workoutBrowsingViewController6 setUserActivity:v26];

      v4 = v15;
    }
  }

  activitySharingViewController = [(PhoneSceneDelegate *)self activitySharingViewController];

  if (activitySharingViewController)
  {
    activitySharingViewController2 = [(PhoneSceneDelegate *)self activitySharingViewController];
    v30 = [v4 arrayByAddingObject:activitySharingViewController2];

    v4 = v30;
  }

  tabBarController = [(PhoneSceneDelegate *)self tabBarController];
  [tabBarController setViewControllers:v4];

  [(PhoneSceneDelegate *)self _createOrbActions];
  [(PhoneSceneDelegate *)self _setupDeeplinks];
}

- (void)_createOrbActions
{
  v28 = objc_alloc_init(NSMutableArray);
  trendsAvailabilityManager = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
  if ([trendsAvailabilityManager trendsAvailability] != 1)
  {
    trendsAvailabilityManager2 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
    trendsAvailability = [trendsAvailabilityManager2 trendsAvailability];

    if (!trendsAvailability)
    {
      goto LABEL_5;
    }

    v6 = [UIApplicationShortcutItem alloc];
    trendsAvailabilityManager = +[NSBundle mainBundle];
    v7 = [trendsAvailabilityManager localizedStringForKey:@"ORB_TRENDS_ACTION" value:&stru_1008680E8 table:@"Localizable"];
    v8 = [UIApplicationShortcutIcon iconWithSystemImageName:@"chevron.up.circle"];
    v9 = [v6 initWithType:@"com.apple.Fitness.opentrendsshortcut" localizedTitle:v7 localizedSubtitle:0 icon:v8 userInfo:0];
    [v28 addObject:v9];
  }

LABEL_5:
  if ([(PhoneSceneDelegate *)self hasCurrentWorkouts])
  {
    v10 = [[SBSApplicationShortcutSystemPrivateIcon alloc] initWithSystemImageName:@"figure.run"];
    v11 = [UIApplicationShortcutItem alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"ORB_HISTORY_ACTION" value:&stru_1008680E8 table:@"Localizable"];
    v14 = [[UIApplicationShortcutIcon alloc] initWithSBSApplicationShortcutIcon:v10];
    v15 = [v11 initWithType:@"com.apple.Fitness.openhistorylistshortcut" localizedTitle:v13 localizedSubtitle:0 icon:v14 userInfo:0];
    [v28 addObject:v15];
  }

  v16 = [[SBSApplicationShortcutSystemPrivateIcon alloc] initWithSystemImageName:@"person.2"];
  v17 = [UIApplicationShortcutItem alloc];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"ORB_SHARING_ACTION" value:&stru_1008680E8 table:@"Localizable"];
  v20 = [[UIApplicationShortcutIcon alloc] initWithSBSApplicationShortcutIcon:v16];
  v21 = [v17 initWithType:@"com.apple.Fitness.opensocialshortcut" localizedTitle:v19 localizedSubtitle:0 icon:v20 userInfo:0];
  [v28 addObject:v21];

  v22 = [UIApplicationShortcutItem alloc];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"ORB_SEND_RINGS_ACTION" value:&stru_1008680E8 table:@"Localizable"];
  v25 = [UIApplicationShortcutIcon iconWithSystemImageName:@"square.and.arrow.up"];
  v26 = [v22 initWithType:@"com.apple.Fitness.sharetodayactivityshortcut" localizedTitle:v24 localizedSubtitle:0 icon:v25 userInfo:0];
  [v28 addObject:v26];

  v27 = +[UIApplication sharedApplication];
  [v27 setShortcutItems:v28];
}

- (void)_setupDeeplinks
{
  deeplinkNavigator = self->_deeplinkNavigator;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100123B78;
  v56[3] = &unk_10083CEC0;
  v56[4] = self;
  [(CHNavigator *)deeplinkNavigator registerURLHandlerWithSlug:@"activity" completion:v56];
  v4 = self->_deeplinkNavigator;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100123B80;
  v55[3] = &unk_10083CEC0;
  v55[4] = self;
  [(CHNavigator *)v4 registerURLHandlerWithSlug:@"activity/:date:" completion:v55];
  v5 = self->_deeplinkNavigator;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100123CDC;
  v54[3] = &unk_10083CEC0;
  v54[4] = self;
  [(CHNavigator *)v5 registerURLHandlerWithSlug:@"activity/goals/(move|exercise|stand)" completion:v54];
  v6 = self->_deeplinkNavigator;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100123E60;
  v53[3] = &unk_10083CEC0;
  v53[4] = self;
  [(CHNavigator *)v6 registerURLHandlerWithSlug:@"activity/share" completion:v53];
  v7 = self->_deeplinkNavigator;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100123E68;
  v52[3] = &unk_10083CEC0;
  v52[4] = self;
  [(CHNavigator *)v7 registerURLHandlerWithSlug:@"awards" completion:v52];
  v8 = self->_deeplinkNavigator;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100123EFC;
  v51[3] = &unk_10083CEC0;
  v51[4] = self;
  [(CHNavigator *)v8 registerURLHandlerWithSlug:@"awards/:word:" completion:v51];
  v9 = self->_deeplinkNavigator;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100123F98;
  v50[3] = &unk_10083CEC0;
  v50[4] = self;
  [(CHNavigator *)v9 registerURLHandlerWithSlug:@"awards/(:word:/:word:)" completion:v50];
  v10 = self->_deeplinkNavigator;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10012405C;
  v49[3] = &unk_10083CEC0;
  v49[4] = self;
  [(CHNavigator *)v10 registerURLHandlerWithSlug:@"balance(/.*)?" completion:v49];
  v11 = self->_deeplinkNavigator;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1001240F4;
  v48[3] = &unk_10083CEC0;
  v48[4] = self;
  [(CHNavigator *)v11 registerURLHandlerWithSlug:@"history" completion:v48];
  v12 = self->_deeplinkNavigator;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1001240FC;
  v47[3] = &unk_10083CEC0;
  v47[4] = self;
  [(CHNavigator *)v12 registerURLHandlerWithSlug:@"history/(dives|mindfulness|workouts)" completion:v47];
  v13 = self->_deeplinkNavigator;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100124278;
  v46[3] = &unk_10083CEC0;
  v46[4] = self;
  [(CHNavigator *)v13 registerURLHandlerWithSlug:@"history/workouts/:id:/(indoor|outdoor)" completion:v46];
  v14 = self->_deeplinkNavigator;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100124398;
  v45[3] = &unk_10083CEC0;
  v45[4] = self;
  [(CHNavigator *)v14 registerURLHandlerWithSlug:@"history/mindfulness/:uuid:" completion:v45];
  v15 = self->_deeplinkNavigator;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10012444C;
  v44[3] = &unk_10083CEC0;
  v44[4] = self;
  [(CHNavigator *)v15 registerURLHandlerWithSlug:@"history/workouts/ACTIVE" completion:v44];
  v16 = self->_deeplinkNavigator;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100124860;
  v43[3] = &unk_10083CEC0;
  v43[4] = self;
  [(CHNavigator *)v16 registerURLHandlerWithSlug:@"history/workouts/M?:uuid:" completion:v43];
  v17 = self->_deeplinkNavigator;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100124958;
  v42[3] = &unk_10083CEC0;
  v42[4] = self;
  [(CHNavigator *)v17 registerURLHandlerWithSlug:@"history/workouts/M?:uuid:/:uuid:" completion:v42];
  v18 = self->_deeplinkNavigator;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100124A58;
  v41[3] = &unk_10083CEC0;
  v41[4] = self;
  [(CHNavigator *)v18 registerURLHandlerWithSlug:@"history/workouts/M?:uuid:/:uuid:/:word:" completion:v41];
  v19 = self->_deeplinkNavigator;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100124B78;
  v40[3] = &unk_10083CEC0;
  v40[4] = self;
  [(CHNavigator *)v19 registerURLHandlerWithSlug:@"history/workouts/M?:uuid:/:word:" completion:v40];
  v20 = self->_deeplinkNavigator;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100124C5C;
  v39[3] = &unk_10083CEC0;
  v39[4] = self;
  [(CHNavigator *)v20 registerURLHandlerWithSlug:@"settings" completion:v39];
  v21 = self->_deeplinkNavigator;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100124CDC;
  v38[3] = &unk_10083CEC0;
  v38[4] = self;
  [(CHNavigator *)v21 registerURLHandlerWithSlug:@"settings/:word:" completion:v38];
  v22 = self->_deeplinkNavigator;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100124DE0;
  v37[3] = &unk_10083CEC0;
  v37[4] = self;
  [(CHNavigator *)v22 registerURLHandlerWithSlug:@"sharing" completion:v37];
  v23 = self->_deeplinkNavigator;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100124DE8;
  v36[3] = &unk_10083CEC0;
  v36[4] = self;
  [(CHNavigator *)v23 registerURLHandlerWithSlug:@"summary/:id:" completion:v36];
  trendsAvailabilityManager = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
  if ([trendsAvailabilityManager trendsAvailability] == 1)
  {
  }

  else
  {
    trendsAvailabilityManager2 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
    trendsAvailability = [trendsAvailabilityManager2 trendsAvailability];

    if (trendsAvailability)
    {
      v27 = self->_deeplinkNavigator;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100124E98;
      v35[3] = &unk_10083CEC0;
      v35[4] = self;
      [(CHNavigator *)v27 registerURLHandlerWithSlug:@"trends" completion:v35];
      v28 = self->_deeplinkNavigator;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100124EA0;
      v34[3] = &unk_10083CEC0;
      v34[4] = self;
      [(CHNavigator *)v28 registerURLHandlerWithSlug:@"trends/:id:" completion:v34];
    }
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    v29 = self->_deeplinkNavigator;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100124F50;
    v33[3] = &unk_10083CEC0;
    v33[4] = self;
    [(CHNavigator *)v29 registerURLHandlerWithSlug:@"workout" completion:v33];
  }

  v30 = [[CHNavigatorBehavior alloc] initWithAllowedDuringWorkout:1];
  v31 = self->_deeplinkNavigator;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100124FA8;
  v32[3] = &unk_10083CEC0;
  v32[4] = self;
  [(CHNavigator *)v31 registerURLHandlerWithSlug:@"workout/controls/(pause|resume|end|markSegment)" behavior:v30 completion:v32];
}

- (void)_setActivityTabBarImage
{
  v3 = +[_HKBehavior sharedBehavior];
  isStandalonePhoneFitnessMode = [v3 isStandalonePhoneFitnessMode];
  v5 = &off_10083D328;
  if (!isStandalonePhoneFitnessMode)
  {
    v5 = &off_10083D320;
  }

  v8 = [UIImage _systemImageNamed:*v5];

  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  tabBarItem = [activityTileNavController tabBarItem];
  [tabBarItem setImage:v8];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  if ([(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    _HKInitializeLogging();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Intercepting session because an active workout is presented", buf, 2u);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = sceneCopy;
      [(PhoneSceneDelegate *)self setConnectionOptions:optionsCopy];
      [(PhoneSceneDelegate *)self setWindowScene:v10];
      v74 = v10;
      v11 = [[UIWindow alloc] initWithWindowScene:v10];
      [(PhoneSceneDelegate *)self setWindow:v11];

      window = [(PhoneSceneDelegate *)self window];
      v13 = +[UIColor blackColor];
      [window setBackgroundColor:v13];

      window2 = [(PhoneSceneDelegate *)self window];
      [window2 _accessibilitySetInterfaceStyleIntent:2];

      v15 = +[UIApplication sharedApplication];
      delegate = [v15 delegate];
      healthStore = [delegate healthStore];
      [(PhoneSceneDelegate *)self setHealthStore:healthStore];

      v18 = +[UIApplication sharedApplication];
      delegate2 = [v18 delegate];
      historyDataProvider = [delegate2 historyDataProvider];
      [(PhoneSceneDelegate *)self setHistoryDataProvider:historyDataProvider];

      v21 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:self->_healthStore];
      [(PhoneSceneDelegate *)self setWheelchairUseCache:v21];

      v22 = +[UIApplication sharedApplication];
      delegate3 = [v22 delegate];
      fitnessUIFormattingManager = [delegate3 fitnessUIFormattingManager];
      [(PhoneSceneDelegate *)self setFitnessUIFormattingManager:fitnessUIFormattingManager];

      v25 = +[UIApplication sharedApplication];
      delegate4 = [v25 delegate];
      workoutFormattingManager = [delegate4 workoutFormattingManager];
      [(PhoneSceneDelegate *)self setWorkoutFormattingManager:workoutFormattingManager];

      v28 = +[UIApplication sharedApplication];
      delegate5 = [v28 delegate];
      pauseRingsCoordinator = [delegate5 pauseRingsCoordinator];
      [(PhoneSceneDelegate *)self setPauseRingsCoordinator:pauseRingsCoordinator];

      v31 = [[FIUIPregnancyStateProvider alloc] initWithHealthStore:self->_healthStore];
      [(PhoneSceneDelegate *)self setPregnancyStateProvider:v31];

      v32 = objc_alloc_init(_TtC10FitnessApp26SeymourAvailabilityManager);
      [(PhoneSceneDelegate *)self setSeymourAvailabilityManager:v32];

      v33 = +[NSNotificationCenter defaultCenter];
      v34 = +[_TtC10FitnessApp26SeymourAvailabilityManager seymourAvailabilityDidChangeNotification];
      [v33 addObserver:self selector:"_seymourAvailabilityStatusDidChange:" name:v34 object:0];

      v35 = +[MCProfileConnection sharedConnection];
      [v35 checkInWithCompletion:0];

      v36 = [CHOnboardingCoordinator alloc];
      healthStore2 = [(PhoneSceneDelegate *)self healthStore];
      v38 = [(CHOnboardingCoordinator *)v36 initWithHealthStore:healthStore2];
      [(PhoneSceneDelegate *)self setOnboardingCoordinator:v38];

      onboardingCoordinator = [(PhoneSceneDelegate *)self onboardingCoordinator];
      [onboardingCoordinator setDelegate:self];

      v75 = objc_alloc_init(NLSessionBackgroundPermissionsChecker);
      v40 = objc_alloc_init(CHActivityPausedRingsObserver);
      [(PhoneSceneDelegate *)self setActivityPausedRingsObserver:v40];

      v41 = objc_alloc_init(CHWorkoutConfigurationOccurrenceStore);
      [(PhoneSceneDelegate *)self setWorkoutOccurrenceStore:v41];

      v42 = objc_alloc_init(CHFitnessIntelligenceConnection);
      [(PhoneSceneDelegate *)self setFitnessIntelligenceConnection:v42];

      v43 = [CHWorkoutVoiceAvailabilityProvider alloc];
      fitnessIntelligenceConnection = [(PhoneSceneDelegate *)self fitnessIntelligenceConnection];
      v45 = [(CHWorkoutVoiceAvailabilityProvider *)v43 initWithConnection:fitnessIntelligenceConnection];
      [(PhoneSceneDelegate *)self setWorkoutVoiceAvailabilityProvider:v45];

      v46 = self->_healthStore;
      if ((_os_feature_enabled_impl() & 1) == 0 && os_variant_has_internal_content())
      {
        v47 = objc_alloc_init(HKHealthStore);
        workoutSessionHealthStore = self->_workoutSessionHealthStore;
        self->_workoutSessionHealthStore = v47;

        [(HKHealthStore *)self->_workoutSessionHealthStore setSourceBundleIdentifier:kHKHealthAppBundleIdentifier];
        [(HKHealthStore *)self->_workoutSessionHealthStore resume];
        v49 = self->_workoutSessionHealthStore;

        v46 = v49;
      }

      fitnessUIFormattingManager2 = [(PhoneSceneDelegate *)self fitnessUIFormattingManager];
      activityPausedRingsObserver = [(PhoneSceneDelegate *)self activityPausedRingsObserver];
      workoutOccurrenceStore = [(PhoneSceneDelegate *)self workoutOccurrenceStore];
      v53 = +[CHLocationProvider shared];
      workoutVoiceAvailabilityProvider = [(PhoneSceneDelegate *)self workoutVoiceAvailabilityProvider];
      v55 = [NLWorkoutControllerFactoryBridge makeWithHealthStore:v46 formattingManager:fitnessUIFormattingManager2 activityPausedRingsObserver:activityPausedRingsObserver backgroundPermissionsChecker:v75 occurrenceStore:workoutOccurrenceStore locationProvider:v53 workoutVoiceAvailabilityProvider:workoutVoiceAvailabilityProvider];
      [(PhoneSceneDelegate *)self setWorkoutController:v55];

      v56 = +[NSNotificationCenter defaultCenter];
      [v56 addObserver:self selector:"_handleManuallyLoggedWorkoutNavigationNotification" name:WKUIPresentWorkoutHistoryFromManuallyLoggedWorkout object:0];

      v57 = +[AVAudioSession sharedInstance];
      v80 = 0;
      [v57 setCategory:AVAudioSessionCategoryAmbient error:&v80];
      v58 = v80;

      if (v58)
      {
        _HKInitializeLogging();
        v59 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v83 = v58;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate failed to set AVAudioSession category to ambient %@", buf, 0xCu);
        }
      }

      if ([(PhoneSceneDelegate *)self activityHasBeenSetup])
      {
        [(PhoneSceneDelegate *)self _setupActivityAppAndLoadData];
        shortcutItem = [optionsCopy shortcutItem];

        if (shortcutItem)
        {
          shortcutItem2 = [optionsCopy shortcutItem];
          [(PhoneSceneDelegate *)self _handleShortcutItem:shortcutItem2 didJustLaunch:1];
        }

        else
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          uRLContexts = [optionsCopy URLContexts];
          v63 = [uRLContexts countByEnumeratingWithState:&v76 objects:v81 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v77;
            do
            {
              v66 = 0;
              do
              {
                if (*v77 != v65)
                {
                  objc_enumerationMutation(uRLContexts);
                }

                [(PhoneSceneDelegate *)self openURLContext:*(*(&v76 + 1) + 8 * v66)];
                v66 = v66 + 1;
              }

              while (v64 != v66);
              v64 = [uRLContexts countByEnumeratingWithState:&v76 objects:v81 count:16];
            }

            while (v64);
          }

          notificationResponse = [optionsCopy notificationResponse];
          notification = [notificationResponse notification];
          request = [notification request];
          content = [request content];
          userInfo = [content userInfo];

          if (([(PhoneSceneDelegate *)self _parseFitnessCoachingNotificationType:userInfo]& 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            rootViewController = [(PhoneSceneDelegate *)self rootViewController];
            [rootViewController hide];
          }

          notify_register_dispatch(kHKFirstDayOfFitnessWeekDidChangeNotification, &self->_fitnessWeekRedefinedChangeToken, &_dispatch_main_q, &stru_10083CDD8);
          v73 = +[NSNotificationCenter defaultCenter];
          [v73 addObserver:self selector:"memoryWarningReceived:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
        }
      }

      else
      {
        [(PhoneSceneDelegate *)self _setupOnboarding];
      }
    }
  }
}

- (NLTVConnectionManager)tvConnectionManager
{
  tvConnectionManager = self->_tvConnectionManager;
  if (!tvConnectionManager)
  {
    _HKInitializeLogging();
    v4 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initializing TVConnectionManager!", v9, 2u);
    }

    v5 = +[UNUserNotificationCenter currentNotificationCenter];
    v6 = [[NLTVConnectionManager alloc] presenter:self userNotificationCenter:v5];
    v7 = self->_tvConnectionManager;
    self->_tvConnectionManager = v6;

    tvConnectionManager = self->_tvConnectionManager;
  }

  return tvConnectionManager;
}

- (void)memoryWarningReceived:(id)received
{
  badgeImageFactory = [(PhoneSceneDelegate *)self badgeImageFactory];
  [badgeImageFactory clearAllCachedImages];
}

- (void)_setupOnboarding
{
  if (![(SeymourAvailabilityManager *)self->_seymourAvailabilityManager stateKnown])
  {
    _HKInitializeLogging();
    v3 = HKLogActivity;
    if (!os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "Waiting to show onboarding until initial queries complete";
    goto LABEL_7;
  }

  if (self->_presentingOnboarding)
  {
    _HKInitializeLogging();
    v3 = HKLogActivity;
    if (!os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "Already presenting onboarding";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
    return;
  }

  self->_presentingOnboarding = 1;
  v5 = +[UNUserNotificationCenter currentNotificationCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100121E48;
  v6[3] = &unk_10083CE00;
  v6[4] = self;
  [v5 getNotificationSettingsWithCompletionHandler:v6];
}

- (void)_presentWelcomeViewsSetupOnboarding:(BOOL)onboarding
{
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(CHOnboardingNavigationController);
  objc_initWeak(&from, v5);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100122338;
  v30[3] = &unk_10083CAC0;
  objc_copyWeak(&v31, &location);
  objc_copyWeak(&v32, &from);
  v6 = objc_retainBlock(v30);
  available = [(SeymourAvailabilityManager *)self->_seymourAvailabilityManager available];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100122420;
  v25[3] = &unk_10083CE28;
  onboardingCopy = onboarding;
  v29 = available;
  v8 = v6;
  v26 = v8;
  objc_copyWeak(&v27, &from);
  v9 = objc_retainBlock(v25);
  [(CHOnboardingNavigationController *)v5 setBuddyControllerDoneAction:v9];
  v10 = [[CHASActivitySetupMetricsCollectionViewController alloc] initWithPresentationContext:1 pregnancyStateProvider:self->_pregnancyStateProvider];
  [(CHASActivitySetupMetricsCollectionViewController *)v10 setDelegate:v5];
  v11 = [CHWelcomeViewController alloc];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100122538;
  v20 = &unk_10083CE50;
  objc_copyWeak(&v24, &location);
  v12 = v5;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = [(CHWelcomeViewController *)v11 initWithFitnessPlusAvailable:available buttonHandler:&v17];
  v35 = v15;
  v16 = [NSArray arrayWithObjects:&v35 count:1, v17, v18, v19, v20];
  [(CHOnboardingNavigationController *)v12 setViewControllers:v16 animated:0];

  [(PhoneSceneDelegate *)self _presentOnboardingNavigationController:v12];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

- (void)_presentOnboardingNavigationController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_alloc_init(CHOnboardingNavigationController);
  [(PhoneSceneDelegate *)self setSetupNavigationController:v5];

  window = [(PhoneSceneDelegate *)self window];
  setupNavigationController = [(PhoneSceneDelegate *)self setupNavigationController];
  [window setRootViewController:setupNavigationController];

  window2 = [(PhoneSceneDelegate *)self window];
  v9 = +[ARUIMetricColors keyColors];
  nonGradientTextColor = [v9 nonGradientTextColor];
  [window2 setTintColor:nonGradientTextColor];

  window3 = [(PhoneSceneDelegate *)self window];
  [window3 makeKeyAndVisible];

  v12 = [CHLoadingView alloc];
  window4 = [(PhoneSceneDelegate *)self window];
  [window4 frame];
  v14 = [(CHLoadingView *)v12 initWithFrame:?];
  [(PhoneSceneDelegate *)self setLoadingView:v14];

  window5 = [(PhoneSceneDelegate *)self window];
  loadingView = [(PhoneSceneDelegate *)self loadingView];
  [window5 addSubview:loadingView];

  loadingView2 = [(PhoneSceneDelegate *)self loadingView];
  indicatorView = [loadingView2 indicatorView];
  [indicatorView startAnimating];

  [controllerCopy setNavigationBarHidden:1 animated:0];
  [controllerCopy setModalPresentationStyle:0];
  setupNavigationController2 = [(PhoneSceneDelegate *)self setupNavigationController];
  [setupNavigationController2 presentViewController:controllerCopy animated:0 completion:0];
}

- (void)_presentMoveGoalSetupOnboarding
{
  v4 = [[CHASActivitySetupMetricsCollectionViewController alloc] initWithPresentationContext:1 pregnancyStateProvider:self->_pregnancyStateProvider];
  v3 = [[CHOnboardingNavigationController alloc] initWithRootViewController:v4];
  [(PhoneSceneDelegate *)self _presentOnboardingNavigationController:v3];
}

- (void)_presentExerciseAndStandGoalsSetupOnboarding
{
  v4 = [[CHASActivitySetupThreeRingsOnboardingViewController alloc] initWithPresentationContext:2];
  v3 = [[CHOnboardingNavigationController alloc] initWithRootViewController:v4];
  [(PhoneSceneDelegate *)self _presentOnboardingNavigationController:v3];
}

- (void)_presentWhatsNewViewSetupOnboarding
{
  available = [(SeymourAvailabilityManager *)self->_seymourAvailabilityManager available];
  isFeatureSupported = [(CHWorkoutVoiceAvailabilityProvider *)self->_workoutVoiceAvailabilityProvider isFeatureSupported];
  objc_initWeak(&location, self);
  v5 = [CHWhatsNewViewController alloc];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100122A24;
  v12 = &unk_10083A710;
  objc_copyWeak(&v13, &location);
  v6 = [(CHWhatsNewViewController *)v5 initWithFitnessPlusAvailable:available workoutBuddySupported:isFeatureSupported buttonHandler:&v9];
  v7 = [CHOnboardingNavigationController alloc];
  v8 = [(CHOnboardingNavigationController *)v7 initWithRootViewController:v6, v9, v10, v11, v12];
  [(PhoneSceneDelegate *)self _presentOnboardingNavigationController:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  if ([(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Intercepting URL contexts because an active workout is presented", buf, 2u);
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = contextsCopy;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          [(PhoneSceneDelegate *)self openURLContext:v12, v13];
          [(CHFitnessAppContext *)self->_fitnessAppContext openURLContext:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)openURLContext:(id)context
{
  v4 = [context URL];
  scheme = [v4 scheme];
  v6 = [scheme isEqualToString:@"activitytoday"];

  if (v6)
  {
    [(PhoneSceneDelegate *)self _handleTodayShortcut];
  }

  else
  {
    scheme2 = [v4 scheme];
    v8 = [scheme2 isEqualToString:kASActivitySharingScheme];

    if (v8)
    {
      [(PhoneSceneDelegate *)self _handleActivitySharingURL:v4];
    }

    else
    {
      scheme3 = [v4 scheme];
      v10 = [scheme3 isEqualToString:@"fitness-badging"];

      if (v10)
      {
        _HKInitializeLogging();
        v11 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Refreshing badge count for URL launch", v24, 2u);
        }

        [(PhoneSceneDelegate *)self _refreshBadgeCounts];
      }

      else
      {
        scheme4 = [v4 scheme];
        v13 = [scheme4 isEqualToString:@"fitnessapp-settings"];

        if (v13)
        {
          [(PhoneSceneDelegate *)self _handleSettingsShortcut];
        }

        else
        {
          scheme5 = [v4 scheme];
          if ([scheme5 isEqualToString:@"file"])
          {
            pathExtension = [v4 pathExtension];
            v16 = [pathExtension isEqualToString:@"workout"];

            if (v16)
            {
              [(PhoneSceneDelegate *)self _handleWorkoutConfigurationURL:v4];
              goto LABEL_21;
            }
          }

          else
          {
          }

          scheme6 = [v4 scheme];
          if ([scheme6 isEqualToString:@"fitnessapp"])
          {
            host = [v4 host];
            v19 = [host isEqualToString:@"workoutConfiguration"];

            if (v19)
            {
              [(PhoneSceneDelegate *)self _handleStartWorkoutConfigurationURL:v4];
              goto LABEL_21;
            }
          }

          else
          {
          }

          scheme7 = [v4 scheme];
          v21 = +[CHNavigator scheme];
          v22 = [scheme7 isEqualToString:v21];

          if (v22)
          {
            v23 = [[CHNavigatorContext alloc] initWithHasActiveWorkout:[(PhoneSceneDelegate *)self presentingActiveWorkout]];
            [(CHNavigator *)self->_deeplinkNavigator navigateToURL:v4 context:v23];
          }
        }
      }
    }
  }

LABEL_21:
}

- (void)handleAppIntentDeeplinkWithURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"file"])
  {
    pathExtension = [lCopy pathExtension];
    v6 = [pathExtension isEqualToString:@"workout"];

    if (v6)
    {
      [(PhoneSceneDelegate *)self _handleWorkoutConfigurationURL:lCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [[CHNavigatorContext alloc] initWithHasActiveWorkout:[(PhoneSceneDelegate *)self presentingActiveWorkout]];
  [(CHNavigator *)self->_deeplinkNavigator navigateToURL:lCopy context:v7];

LABEL_6:
}

- (void)handleAppIntentWithUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  if ([activityType isEqualToString:@"com.apple.Fitness.startWorkout"])
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
    {
      userInfo = [activityCopy userInfo];
      v7 = [userInfo valueForKey:@"siri.workout"];

      workoutBrowsingViewController = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      [workoutBrowsingViewController handleWorkoutConfigurationData:v7];
    }
  }

  else if ([(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    _HKInitializeLogging();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Intercepting app intent deeplink with user activity because an active workout is presented", v11, 2u);
    }
  }

  else
  {
    fitnessAppContext = [(PhoneSceneDelegate *)self fitnessAppContext];
    [fitnessAppContext continueUserActivity:activityCopy];
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  selectedViewController = [(CHTabBarController *)self->_tabBarController selectedViewController];
  seymourNavController = self->_seymourNavController;

  if (selectedViewController == seymourNavController)
  {
    [(CHFitnessAppContext *)self->_fitnessAppContext seymourTabSelectedWithSelection:0];
  }

  [(SeymourAvailabilityManager *)self->_seymourAvailabilityManager updateAvailability];
  [(PhoneSceneDelegate *)self _refreshBadgeCounts];
  [(ActivityDataProvider *)self->_activityDataProvider updateWidgets];
  [(SeymourDiscoverySheetCoordinator *)self->_seymourDiscoverySheetCoordinator activate];
  [(PhoneSceneDelegate *)self updateTVDiscovery];
  if (![(PhoneSceneDelegate *)self presentingActiveWorkout])
  {

    [(PhoneSceneDelegate *)self dismissLiveActivities];
  }
}

- (void)sceneWillResignActive:(id)active
{
  activityDataProvider = [(PhoneSceneDelegate *)self activityDataProvider];
  [activityDataProvider updateWidgets];

  selectedViewController = [(CHTabBarController *)self->_tabBarController selectedViewController];
  seymourNavController = self->_seymourNavController;

  fitnessAppContext = self->_fitnessAppContext;
  if (selectedViewController == seymourNavController)
  {
    [(CHFitnessAppContext *)fitnessAppContext seymourAppWillResignActive];
  }

  else
  {
    [(CHFitnessAppContext *)fitnessAppContext flushMetricEvents];
  }

  [(PhoneSceneDelegate *)self updateTVDiscovery];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  activityDashboardViewController = [(PhoneSceneDelegate *)self activityDashboardViewController];
  summaryCoordinator = [activityDashboardViewController summaryCoordinator];
  [summaryCoordinator logCardConfigurationAnalytics];

  workoutOccurrenceStore = [(PhoneSceneDelegate *)self workoutOccurrenceStore];
  [workoutOccurrenceStore handleAppWillEnterForeground];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  selectedViewController = [(CHTabBarController *)self->_tabBarController selectedViewController];
  seymourNavController = self->_seymourNavController;

  fitnessAppContext = self->_fitnessAppContext;
  if (selectedViewController == seymourNavController)
  {
    [(CHFitnessAppContext *)fitnessAppContext seymourAppWillTerminate];
  }

  else
  {
    [(CHFitnessAppContext *)fitnessAppContext flushMetricEvents];
  }

  [(PhoneSceneDelegate *)self endDiscovery];
}

- (void)updateTVDiscovery
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating TV Discovery", v8, 2u);
  }

  v4 = +[UIApplication sharedApplication];
  v5 = [v4 applicationState] == 0;

  tvConnectionManager = [(PhoneSceneDelegate *)self tvConnectionManager];
  [tvConnectionManager setIsDiscoveryAllowed:v5];

  tvConnectionManager2 = [(PhoneSceneDelegate *)self tvConnectionManager];
  [tvConnectionManager2 updateDiscoveryStateIfNeeded];
}

- (void)endDiscovery
{
  tvConnectionManager = [(PhoneSceneDelegate *)self tvConnectionManager];
  [tvConnectionManager setIsDiscoveryAllowed:0];

  tvConnectionManager2 = [(PhoneSceneDelegate *)self tvConnectionManager];
  [tvConnectionManager2 endDiscovery];
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if ([(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    _HKInitializeLogging();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Intercepting shortcut because an active workout is presented", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    [(PhoneSceneDelegate *)self _handleShortcutItem:itemCopy didJustLaunch:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100123684;
    block[3] = &unk_10083C528;
    v11 = handlerCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_resetToViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  [activityTileNavController dismissViewControllerAnimated:animatedCopy completion:0];

  tabBarController = [(PhoneSceneDelegate *)self tabBarController];
  [tabBarController setSelectedViewController:controllerCopy];

  activityTileNavController2 = [(PhoneSceneDelegate *)self activityTileNavController];
  [activityTileNavController2 detachPalette];

  activityTileNavController3 = [(PhoneSceneDelegate *)self activityTileNavController];
  v10 = [activityTileNavController3 popToRootViewControllerAnimated:animatedCopy];
}

- (void)_updateSeymourNavigationController
{
  seymourAvailabilityManager = [(PhoneSceneDelegate *)self seymourAvailabilityManager];
  available = [seymourAvailabilityManager available];

  if (available)
  {
    _HKInitializeLogging();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[seymour] Updating navigation controller", buf, 2u);
    }

    fitnessAppContext = [(PhoneSceneDelegate *)self fitnessAppContext];
    seymourNavigationController = [fitnessAppContext seymourNavigationController];
    [(PhoneSceneDelegate *)self setSeymourNavController:seymourNavigationController];

    connectionOptions = [(PhoneSceneDelegate *)self connectionOptions];
    if (connectionOptions)
    {
      v9 = connectionOptions;
      windowScene = [(PhoneSceneDelegate *)self windowScene];

      if (windowScene)
      {
        _HKInitializeLogging();
        v11 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[seymour] Handling Window Scene", v26, 2u);
        }

        fitnessAppContext2 = [(PhoneSceneDelegate *)self fitnessAppContext];
        windowScene2 = [(PhoneSceneDelegate *)self windowScene];
        connectionOptions2 = [(PhoneSceneDelegate *)self connectionOptions];
        [fitnessAppContext2 handleWindowScene:windowScene2 with:connectionOptions2];

        [(PhoneSceneDelegate *)self _clearWindowSceneAndOptions];
      }
    }
  }

  else
  {
    seymourAvailabilityManager2 = [(PhoneSceneDelegate *)self seymourAvailabilityManager];
    if (([seymourAvailabilityManager2 unavailable] & 1) != 0 && (-[PhoneSceneDelegate connectionOptions](self, "connectionOptions"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      windowScene3 = [(PhoneSceneDelegate *)self windowScene];

      if (windowScene3)
      {
        _HKInitializeLogging();
        v19 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[seymour] Handling Window Scene while unavailable", v25, 2u);
        }

        fitnessAppContext3 = [(PhoneSceneDelegate *)self fitnessAppContext];
        windowScene4 = [(PhoneSceneDelegate *)self windowScene];
        connectionOptions3 = [(PhoneSceneDelegate *)self connectionOptions];
        [fitnessAppContext3 handleWindowScene:windowScene4 with:connectionOptions3];

        [(PhoneSceneDelegate *)self _clearWindowSceneAndOptions];
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v23 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[seymour] Resetting navigation controller", v24, 2u);
    }

    [(PhoneSceneDelegate *)self setSeymourNavController:0];
  }
}

- (id)summaryDeeplinkViewController
{
  if (sub_100011DC8())
  {
    [(PhoneSceneDelegate *)self activityDashboardViewController];
  }

  else
  {
    [(PhoneSceneDelegate *)self activityTileViewController];
  }
  v3 = ;

  return v3;
}

- (void)_trendsAvailabilityStatusDidChange:(id)change
{
  trendsAvailabilityManager = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
  if ([trendsAvailabilityManager trendsAvailability])
  {
    trendsAvailabilityManager2 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
    trendsAvailability = [trendsAvailabilityManager2 trendsAvailability];

    if (trendsAvailability != 1)
    {

      [(PhoneSceneDelegate *)self _createOrbActions];
    }
  }

  else
  {
  }
}

- (void)_seymourAvailabilityStatusDidChange:(id)change
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[seymour] Seymour availability updated", v6, 2u);
  }

  if ([(CHOnboardingCoordinator *)self->_onboardingCoordinator currentPhase]== 5)
  {
    activityDashboardViewController = [(PhoneSceneDelegate *)self activityDashboardViewController];

    if (activityDashboardViewController)
    {
      [(PhoneSceneDelegate *)self _updateSeymourNavigationController];
      [(PhoneSceneDelegate *)self _setupTabBarViewControllersAndOrbActions];
      [(PhoneSceneDelegate *)self _clearWindowSceneAndOptions];
    }
  }

  else
  {
    [(PhoneSceneDelegate *)self _setupOnboarding];
  }
}

- (void)_clearWindowSceneAndOptions
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[seymour] _clearWindowSceneAndOptions", v4, 2u);
  }

  [(PhoneSceneDelegate *)self setConnectionOptions:0];
  [(PhoneSceneDelegate *)self setWindowScene:0];
}

- (void)_refreshBadgeCounts
{
  appBadgeAggregator = [(PhoneSceneDelegate *)self appBadgeAggregator];
  [appBadgeAggregator triggerFetch];
}

- (void)_setBadgeCount:(unint64_t)count forTabBarItem:(id)item
{
  if (count)
  {
    itemCopy = item;
    v6 = [NSNumber numberWithUnsignedInteger:count];
    v7 = [FIUIFormattingManager stringWithNumber:v6 decimalPrecision:1];
    [itemCopy setBadgeValue:v7];

    v8 = +[ARUIMetricColors keyColors];
    nonGradientTextColor = [v8 nonGradientTextColor];
    [itemCopy setBadgeColor:nonGradientTextColor];

    v12 = NSForegroundColorAttributeName;
    itemCopy2 = +[UIColor blackColor];
    v13 = itemCopy2;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [itemCopy setBadgeTextAttributes:v11 forState:0];
  }

  else
  {
    itemCopy2 = item;
    [itemCopy2 setBadgeValue:0];
  }
}

- (void)_showCoachingDataCollectionMessageIfNeeded
{
  if (+[_HKBehavior isAppleInternalInstall](_HKBehavior, "isAppleInternalInstall") && (+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    _fitnessDataCollectionEnabledPreference = [(PhoneSceneDelegate *)self _fitnessDataCollectionEnabledPreference];
    _HKInitializeLogging();
    v4 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEBUG))
    {
      sub_10069CC58(_fitnessDataCollectionEnabledPreference, v4);
      if (_fitnessDataCollectionEnabledPreference)
      {
        goto LABEL_6;
      }
    }

    else if (_fitnessDataCollectionEnabledPreference)
    {
LABEL_6:

      return;
    }

    v5 = [UIAlertController alertControllerWithTitle:@"Apple Activity Data" message:@"[Internal only] Do you want to help the Motion and Health teams by sending Apple your workouts preferredStyle:activity, and physical details to help improve health and fitness features? Your Apple email address may be associated with your data. You can learn more in Activity internal settings.", 1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10012569C;
    v10[3] = &unk_10083B990;
    v10[4] = self;
    v6 = [UIAlertAction actionWithTitle:@"Don't Send" style:1 handler:v10];
    [v5 addAction:v6];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001256A8;
    v9[3] = &unk_10083B990;
    v9[4] = self;
    v7 = [UIAlertAction actionWithTitle:@"Send" style:0 handler:v9];
    [v5 addAction:v7];
    activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
    [activityTileNavController presentViewController:v5 animated:1 completion:0];

    goto LABEL_6;
  }
}

- (void)_setFitnessDataCollectionEnabled:(BOOL)enabled
{
  v3 = FIAppleInternalDataCollectionEnabledKey;
  v4 = [NSNumber numberWithBool:enabled];
  v5 = FINanoLifestylePreferencesDomain;
  CFPreferencesSetAppValue(v3, v4, FINanoLifestylePreferencesDomain);
  CFPreferencesAppSynchronize(v5);
  v6 = objc_opt_new();
  v7 = [NSSet setWithObject:v3];
  [v6 synchronizeUserDefaultsDomain:v5 keys:v7];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v9 = FIAppleInternalDataCollectionEnabledDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v9, 0, 0, 1u);
}

- (id)_fitnessDataCollectionEnabledPreference
{
  v2 = CFPreferencesCopyAppValue(FIAppleInternalDataCollectionEnabledKey, FINanoLifestylePreferencesDomain);

  return v2;
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  if ([(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Intercepting user activity because an active workout is presented", v10, 2u);
    }
  }

  else
  {
    activityType = [activityCopy activityType];
    if ([activityType isEqualToString:FIUIActivityContinuityKey])
    {
      tabBarController = [(PhoneSceneDelegate *)self tabBarController];
      [tabBarController setSelectedIndex:0];
    }

    fitnessAppContext = [(PhoneSceneDelegate *)self fitnessAppContext];
    [fitnessAppContext continueUserActivity:activityCopy];
  }
}

- (void)dealloc
{
  fitnessWeekRedefinedChangeToken = self->_fitnessWeekRedefinedChangeToken;
  if (fitnessWeekRedefinedChangeToken != -1)
  {
    notify_cancel(fitnessWeekRedefinedChangeToken);
  }

  standalonePhoneFitnessModeChangeToken = self->_standalonePhoneFitnessModeChangeToken;
  if (standalonePhoneFitnessModeChangeToken != -1)
  {
    notify_cancel(standalonePhoneFitnessModeChangeToken);
  }

  v5.receiver = self;
  v5.super_class = PhoneSceneDelegate;
  [(PhoneSceneDelegate *)&v5 dealloc];
}

- (void)_handleShortcutItem:(id)item didJustLaunch:(BOOL)launch
{
  itemCopy = item;
  type = [itemCopy type];
  v6 = [type isEqualToString:@"com.apple.Fitness.opentrendsshortcut"];

  if (v6)
  {
    [(PhoneSceneDelegate *)self _handleTrendsShortcut];
  }

  else
  {
    type2 = [itemCopy type];
    v8 = [type2 isEqualToString:@"com.apple.Fitness.openhistorylistshortcut"];

    if (v8)
    {
      [(PhoneSceneDelegate *)self _handleHistoryShortcut];
    }

    else
    {
      type3 = [itemCopy type];
      v10 = [type3 isEqualToString:@"com.apple.Fitness.opensocialshortcut"];

      if (v10)
      {
        [(PhoneSceneDelegate *)self _handleFriendsShortcut];
      }

      else
      {
        type4 = [itemCopy type];
        v12 = [type4 isEqualToString:@"com.apple.Fitness.sharetodayactivityshortcut"];

        if (v12)
        {
          [(PhoneSceneDelegate *)self _handleActivityShareShortcut];
        }
      }
    }
  }
}

- (void)_handleTrendsShortcut
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handling trends shortcut", v6, 2u);
  }

  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:activityTileNavController];

  summaryDeeplinkViewController = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
  [summaryDeeplinkViewController showAllTrendsAnimated:1];
}

- (void)_handleHistoryShortcut
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handling history shortcut", v6, 2u);
  }

  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:activityTileNavController];

  summaryDeeplinkViewController = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
  [summaryDeeplinkViewController navigateToHistoryAnimated:1];
}

- (void)_handleSettingsShortcut
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handling settings shortcut", buf, 2u);
  }

  if ([(PhoneSceneDelegate *)self activityHasBeenSetup])
  {
    activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
    [(PhoneSceneDelegate *)self _resetToViewController:activityTileNavController];

    summaryDeeplinkViewController = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
    [summaryDeeplinkViewController presentAppSettingsShowingPane:2];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ignoring request to launch to health settings as we have not been set up yet.", v7, 2u);
    }
  }
}

- (void)_handleFriendsShortcut
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handling friends shortcut", v7, 2u);
  }

  activitySharingViewController = [(PhoneSceneDelegate *)self activitySharingViewController];
  [(PhoneSceneDelegate *)self _resetToViewController:activitySharingViewController];

  activitySharingViewController2 = [(PhoneSceneDelegate *)self activitySharingViewController];
  v6 = [activitySharingViewController2 popToRootViewControllerAnimated:0];
}

- (void)_handleActivityShareShortcut
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handling activity share shortcut", v7, 2u);
  }

  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:activityTileNavController];

  summaryDeeplinkViewController = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
  v6 = [summaryDeeplinkViewController showTodayAndShareImmediately:1 animated:0 forGoalCompleteNotification:0 goalRecommendation:0];
}

- (void)_handleTodayShortcut
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Opening Today view", v7, 2u);
  }

  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:activityTileNavController];

  summaryDeeplinkViewController = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
  v6 = [summaryDeeplinkViewController showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];
}

- (void)_handleActivitySharingURL:(id)l
{
  lCopy = l;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handling activity sharing URL: %@", &v9, 0xCu);
  }

  if ([(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Intercepting URL contexts because an active workout is presented", &v9, 2u);
    }
  }

  else
  {
    activitySharingViewController = [(PhoneSceneDelegate *)self activitySharingViewController];
    [(PhoneSceneDelegate *)self _resetToViewController:activitySharingViewController];

    activitySharingViewController2 = [(PhoneSceneDelegate *)self activitySharingViewController];
    [activitySharingViewController2 handleActivitySharingURL:lCopy];
  }
}

- (void)_handleWorkoutConfigurationURL:(id)l
{
  lCopy = l;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handling workout sharing URL: %@", buf, 0xCu);
  }

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  if ((startAccessingSecurityScopedResource & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CCD0();
    }
  }

  v12 = 0;
  v7 = [NSData dataWithContentsOfURL:lCopy options:0 error:&v12];
  v8 = v12;
  _HKInitializeLogging();
  v9 = HKLogActivity;
  if (v8)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CD04(lCopy, v8, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = lCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Handling start workout configuration URL: %@", buf, 0xCu);
    }

    activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
    [(PhoneSceneDelegate *)self _resetToViewController:activityTileNavController];

    workoutBrowsingViewController = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
    [workoutBrowsingViewController handleWorkoutConfigurationData:v7];
  }

  if (startAccessingSecurityScopedResource)
  {
    [lCopy stopAccessingSecurityScopedResource];
  }
}

- (void)_handleStartWorkoutConfigurationURL:(id)l
{
  lCopy = l;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handling start workout configuration URL: %@", &v9, 0xCu);
  }

  workoutBrowsingViewController = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
  [(PhoneSceneDelegate *)self _resetToViewController:workoutBrowsingViewController];

  workoutBrowsingViewController2 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
  [workoutBrowsingViewController2 popToRoot];

  workoutBrowsingViewController3 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
  [workoutBrowsingViewController3 handleWorkoutConfigurationURL:lCopy];
}

- (void)aggregator:(id)aggregator didUpdateActivitySharingBadgeCount:(int64_t)count
{
  activitySharingViewController = [(PhoneSceneDelegate *)self activitySharingViewController];
  tabBarItem = [activitySharingViewController tabBarItem];
  [(PhoneSceneDelegate *)self _setBadgeCount:count forTabBarItem:tabBarItem];
}

- (void)aggregator:(id)aggregator didUpdateEngagmentBadgeCount:(int64_t)count
{
  seymourNavController = [(PhoneSceneDelegate *)self seymourNavController];
  tabBarItem = [seymourNavController tabBarItem];
  [(PhoneSceneDelegate *)self _setBadgeCount:count forTabBarItem:tabBarItem];
}

- (BOOL)navigateToSeymourTab
{
  seymourNavController = [(PhoneSceneDelegate *)self seymourNavController];

  if (seymourNavController)
  {
    seymourNavController2 = [(PhoneSceneDelegate *)self seymourNavController];
    [(PhoneSceneDelegate *)self _setSelectedViewController:seymourNavController2];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CD8C();
    }
  }

  return seymourNavController != 0;
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  request = [notificationCopy request];
  identifier = [request identifier];

  request2 = [notificationCopy request];
  content = [request2 content];

  categoryIdentifier = [content categoryIdentifier];
  if (([identifier isEqualToString:@"com.apple.fitcored.guestpairing"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.Fitness.WorkoutPlanCreationNotification") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.Fitness.PersonalizedWorkoutPlanCreationNotification") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", FCCFitnessPlusPlanNotificationCategoryIdentifier) & 1) != 0 || (objc_msgSend(categoryIdentifier, "isEqualToString:", kASBulletinsActivityDataCategoryIdentifier) & 1) != 0 || objc_msgSend(categoryIdentifier, "isEqualToString:", FCCNotificationCategoryIdentifier) && (objc_msgSend(content, "userInfo"), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[PhoneSceneDelegate _parseFitnessCoachingNotificationType:](self, "_parseFitnessCoachingNotificationType:", v18), v18, v19 == 2))
  {
    fitnessAppContext = [(PhoneSceneDelegate *)self fitnessAppContext];
    isSessionViewControllerPresented = [fitnessAppContext isSessionViewControllerPresented];

    if (isSessionViewControllerPresented)
    {
      _HKInitializeLogging();
      v16 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending notification to notification center during Fitness+ session", &v21, 2u);
      }

      v17 = 8;
    }

    else
    {
      v17 = 27;
    }

    handlerCopy[2](handlerCopy, v17);
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Incoming notification not allowed to post over foregrounded app: %@", &v21, 0xCu);
    }
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  _HKInitializeLogging();
  v9 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v93 = responseCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fitness received notification response %{public}@", buf, 0xCu);
  }

  if (![(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    if ([AMSUserNotification shouldHandleNotificationResponse:responseCopy])
    {
      seymourNotificationResponseCoordinator = self->_seymourNotificationResponseCoordinator;
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_100127294;
      v88[3] = &unk_10083C7F8;
      v88[4] = self;
      v89 = handlerCopy;
      [(SeymourNotificationResponseCoordinator *)seymourNotificationResponseCoordinator handleNotificationResponse:responseCopy completion:v88];

      goto LABEL_58;
    }

    fitnessAppContext = [(PhoneSceneDelegate *)self fitnessAppContext];
    isSessionViewControllerPresented = [fitnessAppContext isSessionViewControllerPresented];

    if (isSessionViewControllerPresented)
    {
      _HKInitializeLogging();
      v10 = HKLogActivity;
      if (!os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *buf = 0;
      v11 = "Preventing navigation for notification while in Fitness+ session";
      goto LABEL_6;
    }

    notification = [responseCopy notification];
    request = [notification request];
    content = [request content];
    categoryIdentifier = [content categoryIdentifier];

    notification2 = [responseCopy notification];
    request2 = [notification2 request];
    identifier = [request2 identifier];

    if ([categoryIdentifier isEqualToString:kASBulletinsInviteCategoryIdentifier] & 1) != 0 || (objc_msgSend(categoryIdentifier, "isEqualToString:", kASBulletinsActivityDataCategoryIdentifier))
    {
      v22 = 1;
    }

    else
    {
      v22 = [categoryIdentifier isEqualToString:kASBulletinsGenericCategoryIdentifier];
    }

    v82 = [categoryIdentifier isEqualToString:FCCNotificationCategoryIdentifier];
    v23 = [CHMoveModeNotificationResponseCoordinator shouldHandleNotificationCategoryIdentifier:categoryIdentifier];
    v80 = [categoryIdentifier isEqualToString:@"com.apple.Fitness.GuestPairingNotification"];
    v78 = [identifier isEqualToString:@"com.apple.Fitness.WorkoutPlanCreationNotification"];
    v84 = identifier;
    v77 = [identifier isEqualToString:@"com.apple.Fitness.PersonalizedWorkoutPlanCreationNotification"];
    v76 = [categoryIdentifier isEqualToString:FCCFitnessPlusPlanNotificationCategoryIdentifier];
    v85 = categoryIdentifier;
    v24 = [categoryIdentifier isEqualToString:FCCPauseRingsReminderNotificationCategoryIdentifier];
    if (v24)
    {
      actionIdentifier = [responseCopy actionIdentifier];
      v83 = [actionIdentifier isEqualToString:@"PAUSE_YOUR_RINGS"];

      actionIdentifier2 = [responseCopy actionIdentifier];
      v81 = [actionIdentifier2 isEqualToString:@"EDIT_PAUSE_RINGS"];

      actionIdentifier3 = [responseCopy actionIdentifier];
      v79 = [actionIdentifier3 isEqualToString:@"VIEW_PAUSE_RINGS"];
    }

    else
    {
      v79 = 0;
      v83 = 0;
      v81 = 0;
    }

    actionIdentifier4 = [responseCopy actionIdentifier];
    if ([actionIdentifier4 isEqualToString:UNNotificationDefaultActionIdentifier])
    {
      notification3 = [responseCopy notification];
      request3 = [notification3 request];
      v31 = (request3 == 0) | v23;

      if ((v31 & 1) == 0)
      {
        _HKInitializeLogging();
        v32 = HKLogActivity;
        v33 = os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          v34 = v85;
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Handling notification response for default action - activity sharing", buf, 2u);
          }

          activitySharingViewController = [(PhoneSceneDelegate *)self activitySharingViewController];
          activitySharingViewController2 = [(PhoneSceneDelegate *)self activitySharingViewController];
          v37 = [activitySharingViewController2 popToRootViewControllerAnimated:0];

          goto LABEL_56;
        }

        v34 = v85;
        if (v82)
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Handling notification response for default action - fitness coaching", buf, 2u);
          }

          [(PhoneSceneDelegate *)self handleFitnessCoachingNotificationResponse:responseCopy];
        }

        else
        {
          if (v80)
          {
            if (v33)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Handling notification response for guest pairing action - fitness+", buf, 2u);
            }

            [(NLTVConnectionManager *)self->_tvConnectionManager updateDiscoveryStateIfNeeded];
            [(NLTVConnectionManager *)self->_tvConnectionManager connectAutomatically];
            activitySharingViewController = 0;
            goto LABEL_56;
          }

          if (v78)
          {
            if (v33)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Handling notification response for create plan action - fitness+", buf, 2u);
            }

            [(CHFitnessAppContext *)self->_fitnessAppContext navigateToWorkoutPlanCreation];
            seymourNavController = [(PhoneSceneDelegate *)self seymourNavController];
            goto LABEL_44;
          }

          if (v77)
          {
            if (v33)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Handling notification response for create personalized plan action - fitness+", buf, 2u);
            }

            fitnessAppContext = self->_fitnessAppContext;
            notification4 = [responseCopy notification];
            request4 = [notification4 request];
            content2 = [request4 content];
            userInfo = [content2 userInfo];
            [(CHFitnessAppContext *)fitnessAppContext navigateToPersonalizedWorkoutPlanCreationWithUserInfo:userInfo];

            activitySharingViewController = [(PhoneSceneDelegate *)self seymourNavController];
            v34 = v85;
            goto LABEL_56;
          }

          if (v76)
          {
            if (v33)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Handling notification response for plan detail action - fitness+", buf, 2u);
            }

            notification5 = [responseCopy notification];
            request5 = [notification5 request];
            content3 = [request5 content];
            userInfo2 = [content3 userInfo];

            v71 = [userInfo2 objectForKeyedSubscript:FCCNotificationUserInfoShowingTomorrowPlan];
            LODWORD(request5) = [v71 BOOLValue];

            [(CHFitnessAppContext *)self->_fitnessAppContext navigateToWorkoutPlanDetailWithDayOffset:request5];
            activitySharingViewController = [(PhoneSceneDelegate *)self seymourNavController];

            goto LABEL_56;
          }

          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Handling notification response for default action - trends", buf, 2u);
          }

          activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
          [activityTileNavController detachPalette];

          activityTileNavController2 = [(PhoneSceneDelegate *)self activityTileNavController];
          v74 = [activityTileNavController2 popToRootViewControllerAnimated:0];

          activityDashboardViewController = [(PhoneSceneDelegate *)self activityDashboardViewController];
          [activityDashboardViewController showAllTrendsAnimated:0];
        }

        seymourNavController = [(PhoneSceneDelegate *)self activityTileNavController];
LABEL_44:
        activitySharingViewController = seymourNavController;
LABEL_56:
        [(PhoneSceneDelegate *)self _setSelectedViewController:activitySharingViewController];
        handlerCopy[2](handlerCopy);

        goto LABEL_57;
      }
    }

    else
    {
    }

    if (v22)
    {
      _HKInitializeLogging();
      v38 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Handling notification response for activity sharing", buf, 2u);
      }

      actionIdentifier5 = [responseCopy actionIdentifier];
      notification6 = [responseCopy notification];
      request6 = [notification6 request];
      content4 = [request6 content];
      userInfo3 = [content4 userInfo];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        userText = [responseCopy userText];
        v90 = kASNotificationReplyKey;
        v91 = userText;
        v45 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v46 = [userInfo3 hk_dictionaryByAddingEntriesFromDictionary:v45];

        userInfo3 = v46;
      }

      v34 = v85;
      v47 = [[ASUserNotificationResponse alloc] initWithActionIdentifier:actionIdentifier5 userInfo:userInfo3];
      activitySharingClient = self->_activitySharingClient;
      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_100127338;
      v86[3] = &unk_10083CA98;
      v87 = handlerCopy;
      [(ASActivitySharingClient *)activitySharingClient handleNotificationResponse:v47 completion:v86];

      goto LABEL_57;
    }

    if (v23)
    {
      activityTileNavController3 = [(PhoneSceneDelegate *)self activityTileNavController];
      healthStore = [(PhoneSceneDelegate *)self healthStore];
      fitnessUIFormattingManager = [(PhoneSceneDelegate *)self fitnessUIFormattingManager];
      [CHMoveModeNotificationResponseCoordinator handleNotificationResponse:responseCopy presentingNavigationController:activityTileNavController3 healthStore:healthStore formattingManager:fitnessUIFormattingManager];
    }

    if (!v24)
    {
LABEL_51:
      handlerCopy[2](handlerCopy);
      v34 = v85;
LABEL_57:

      goto LABEL_58;
    }

    if (v83)
    {
      _HKInitializeLogging();
      v52 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v53 = "Presenting day view for notification with pause rings menu";
LABEL_48:
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v53, buf, 2u);
      }
    }

    else
    {
      if (!v81)
      {
        if (!v79)
        {
          goto LABEL_51;
        }

        _HKInitializeLogging();
        v61 = HKLogActivity;
        v55 = 0;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Presenting day view for notification with just the rings", buf, 2u);
          v55 = 0;
        }

        goto LABEL_50;
      }

      _HKInitializeLogging();
      v52 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v53 = "Presenting day view for notification with edit pause rings";
        goto LABEL_48;
      }
    }

    v55 = 1;
LABEL_50:
    activityTileNavController4 = [(PhoneSceneDelegate *)self activityTileNavController];
    [activityTileNavController4 dismissViewControllerAnimated:0 completion:0];

    activityTileNavController5 = [(PhoneSceneDelegate *)self activityTileNavController];
    v58 = [activityTileNavController5 popToRootViewControllerAnimated:0];

    activityDashboardViewController2 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v60 = [activityDashboardViewController2 showTodayAndShareImmediately:0 animated:0 forGoalCompleteNotification:0 goalRecommendation:0 withPauseRingsEditing:v55];

    goto LABEL_51;
  }

  _HKInitializeLogging();
  v10 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "Intercepting notification because an active workout is presented";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
  }

LABEL_7:
  handlerCopy[2](handlerCopy);
LABEL_58:
}

- (void)handleFitnessCoachingNotificationResponse:(id)response
{
  notification = [response notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v8 = [(PhoneSceneDelegate *)self _parseFitnessCoachingNotificationType:userInfo];
  v9 = v8;
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v8 == 5)
        {
          _HKInitializeLogging();
          v10 = HKLogActivity;
          if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Presenting for goal update", v47, 2u);
          }

          v11 = [(PhoneSceneDelegate *)self _parseGoalRecommendation:userInfo];
          activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
          [activityTileNavController dismissViewControllerAnimated:0 completion:0];

          activityTileNavController2 = [(PhoneSceneDelegate *)self activityTileNavController];
          v14 = [activityTileNavController2 popToRootViewControllerAnimated:0];

          activityDashboardViewController = [(PhoneSceneDelegate *)self activityDashboardViewController];
          v16 = [activityDashboardViewController showTodayAndShareImmediately:0 animated:0 forGoalCompleteNotification:0 goalRecommendation:v11];

          [(PhoneSceneDelegate *)self _clearWeeklyGoalDisplayContext];
        }

        goto LABEL_13;
      }

      _HKInitializeLogging();
      v36 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Presenting achievement without celebration for notification", v49, 2u);
      }

      rootViewController = [(PhoneSceneDelegate *)self rootViewController];
      [rootViewController hide];

      v19 = ACHDecodeAchievementFromUserInfoDictionary();
      activityTileNavController3 = [(PhoneSceneDelegate *)self activityTileNavController];
      [activityTileNavController3 dismissViewControllerAnimated:0 completion:0];

      activityTileNavController4 = [(PhoneSceneDelegate *)self activityTileNavController];
      v40 = [activityTileNavController4 popToRootViewControllerAnimated:0];

      activityDashboardViewController2 = [(PhoneSceneDelegate *)self activityDashboardViewController];
      v24 = activityDashboardViewController2;
      v25 = v19;
      v26 = 0;
LABEL_21:
      v41 = [activityDashboardViewController2 navigateToTrophyCaseAnimated:0 initialAchievement:v25 shouldShowCelebration:v26 forModalPresentation:1];

      goto LABEL_26;
    }

    _HKInitializeLogging();
    v28 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Presenting goal completion celebration", v48, 2u);
    }

    rootViewController2 = [(PhoneSceneDelegate *)self rootViewController];
    [rootViewController2 hide];

    activityTileNavController5 = [(PhoneSceneDelegate *)self activityTileNavController];
    [activityTileNavController5 dismissViewControllerAnimated:0 completion:0];

    activityTileNavController6 = [(PhoneSceneDelegate *)self activityTileNavController];
    v32 = [activityTileNavController6 popToRootViewControllerAnimated:0];

    activityDashboardViewController3 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v34 = activityDashboardViewController3;
    v35 = 1;
LABEL_25:
    v46 = [activityDashboardViewController3 showTodayAndShareImmediately:0 animated:0 forGoalCompleteNotification:v35 goalRecommendation:0];

    goto LABEL_26;
  }

  if (v8 == 1)
  {
    _HKInitializeLogging();
    v42 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Presenting day view for notification", v51, 2u);
    }

    activityTileNavController7 = [(PhoneSceneDelegate *)self activityTileNavController];
    [activityTileNavController7 dismissViewControllerAnimated:0 completion:0];

    activityTileNavController8 = [(PhoneSceneDelegate *)self activityTileNavController];
    v45 = [activityTileNavController8 popToRootViewControllerAnimated:0];

    activityDashboardViewController3 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v34 = activityDashboardViewController3;
    v35 = 0;
    goto LABEL_25;
  }

  if (v8 == 2)
  {
    _HKInitializeLogging();
    v17 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Presenting achievement with celebration for notification", buf, 2u);
    }

    rootViewController3 = [(PhoneSceneDelegate *)self rootViewController];
    [rootViewController3 hide];

    v19 = ACHDecodeAchievementFromUserInfoDictionary();
    activityTileNavController9 = [(PhoneSceneDelegate *)self activityTileNavController];
    [activityTileNavController9 dismissViewControllerAnimated:0 completion:0];

    activityTileNavController10 = [(PhoneSceneDelegate *)self activityTileNavController];
    v22 = [activityTileNavController10 popToRootViewControllerAnimated:0];

    activityDashboardViewController2 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v24 = activityDashboardViewController2;
    v25 = v19;
    v26 = 1;
    goto LABEL_21;
  }

LABEL_13:
  _HKInitializeLogging();
  v27 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_10069CDF4(v9, v27);
  }

LABEL_26:
}

- (int64_t)_parseFitnessCoachingNotificationType:(id)type
{
  if (!type)
  {
    return 0;
  }

  v3 = [type objectForKeyedSubscript:FCCNotificationTypeUserInfoKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CE6C();
    }

    integerValue = 0;
  }

  return integerValue;
}

- (id)_parseGoalRecommendation:(id)recommendation
{
  if (recommendation)
  {
    v3 = [recommendation objectForKeyedSubscript:FCCNotificationTypeUserInfoGoalRecommendationKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
      {
        sub_10069CEA0();
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_clearWeeklyGoalDisplayContext
{
  v2 = objc_alloc_init(FCCWeeklyGoalStore);
  [v2 clearContext];
}

- (void)_setSelectedViewController:(id)controller
{
  controllerCopy = controller;
  v5 = dispatch_time(0, 50000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127B3C;
  v7[3] = &unk_10083A970;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  if ([(PhoneSceneDelegate *)self presentingActiveWorkout:center])
  {
    _HKInitializeLogging();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Intercepting Navigation to Settings because an active workout is presented", buf, 2u);
    }
  }

  else
  {
    activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
    [(PhoneSceneDelegate *)self _resetToViewController:activityTileNavController];

    activityDashboardViewController = [(PhoneSceneDelegate *)self activityDashboardViewController];
    [activityDashboardViewController presentAppSettingsShowingPane:1];
  }
}

- (void)_ppt_showSharingTab
{
  activitySharingViewController = [(PhoneSceneDelegate *)self activitySharingViewController];
  [(PhoneSceneDelegate *)self _resetToViewController:activitySharingViewController];
}

- (void)presentModelOnSummaryTabWithViewController:(id)controller
{
  controllerCopy = controller;
  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  presentedViewController = [activityTileNavController presentedViewController];

  if (presentedViewController)
  {
    _HKInitializeLogging();
    v7 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = presentedViewController;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Summary tab is already presenting modal view %@, can't present discovery sheet", &v9, 0xCu);
    }
  }

  else
  {
    activityTileNavController2 = [(PhoneSceneDelegate *)self activityTileNavController];
    [activityTileNavController2 presentViewController:controllerCopy animated:1 completion:0];
  }
}

- (void)presentBrowsingConsentAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PhoneSceneDelegate *)self setBrowsingConsentAlertCompletion:completionCopy];
  objc_initWeak(&location, self);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CONNECT_BUTTON" value:&stru_1008680E8 table:@"Localizable-seymour"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PHONE_TV_CONSENT" value:&stru_1008680E8 table:@"Localizable-seymour"];
  v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  [(PhoneSceneDelegate *)self setBrowsingConsentAlertController:v9];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTINUE_BUTTON" value:&stru_1008680E8 table:@"Localizable-seymour"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100128198;
  v22[3] = &unk_10083C9C0;
  objc_copyWeak(&v23, &location);
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v22];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_1008680E8 table:@"Localizable-seymour"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100128258;
  v20[3] = &unk_10083C9C0;
  objc_copyWeak(&v21, &location);
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v20];

  browsingConsentAlertController = [(PhoneSceneDelegate *)self browsingConsentAlertController];
  [browsingConsentAlertController addAction:v12];

  browsingConsentAlertController2 = [(PhoneSceneDelegate *)self browsingConsentAlertController];
  [browsingConsentAlertController2 addAction:v15];

  tabBarController = [(PhoneSceneDelegate *)self tabBarController];
  browsingConsentAlertController3 = [(PhoneSceneDelegate *)self browsingConsentAlertController];
  [tabBarController presentViewController:browsingConsentAlertController3 animated:1 completion:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)cleanupGuestAuthentication
{
  browsingConsentAlertCompletion = [(PhoneSceneDelegate *)self browsingConsentAlertCompletion];

  if (browsingConsentAlertCompletion)
  {
    browsingConsentAlertCompletion2 = [(PhoneSceneDelegate *)self browsingConsentAlertCompletion];
    browsingConsentAlertCompletion2[2](browsingConsentAlertCompletion2, 0);

    [(PhoneSceneDelegate *)self setBrowsingConsentAlertCompletion:0];
    tabBarController = [(PhoneSceneDelegate *)self tabBarController];
    [tabBarController dismissViewControllerAnimated:1 completion:0];
  }

  passwordEnteredHandler = [(PhoneSceneDelegate *)self passwordEnteredHandler];

  if (passwordEnteredHandler)
  {
    passwordController = [(PhoneSceneDelegate *)self passwordController];
    passwordEntryCancelledHandler = [passwordController passwordEntryCancelledHandler];
    passwordEntryCancelledHandler[2]();
  }
}

- (void)promptForPasscodeWithLength:(int64_t)length completion:(id)completion
{
  completionCopy = completion;
  [(PhoneSceneDelegate *)self setPasswordEnteredHandler:completionCopy];
  objc_initWeak(&location, self);
  v7 = [SMUPasswordController alloc];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TV_CODE_TITLE" value:&stru_1008680E8 table:@"Localizable-seymour"];
  v10 = [v7 initWithTitle:v9 passwordLength:length supportedOrientations:2];
  [(PhoneSceneDelegate *)self setPasswordController:v10];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10012866C;
  v18[3] = &unk_10083CF10;
  v19[1] = length;
  objc_copyWeak(v19, &location);
  passwordController = [(PhoneSceneDelegate *)self passwordController];
  [passwordController setPasswordEnteredHandler:v18];

  objc_copyWeak(&v17, &location);
  v12 = [(PhoneSceneDelegate *)self passwordController:_NSConcreteStackBlock];
  [v12 setPasswordEntryCancelledHandler:&v16];

  tabBarController = [(PhoneSceneDelegate *)self tabBarController];
  passwordController2 = [(PhoneSceneDelegate *)self passwordController];
  viewController = [passwordController2 viewController];
  [tabBarController presentViewController:viewController animated:1 completion:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)ringCelebrationDidBegin
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[HistoryPagingViewControllerDelegate] unhiding rootViewController because celebration video did begin", v5, 2u);
  }

  rootViewController = [(PhoneSceneDelegate *)self rootViewController];
  [rootViewController unhide];
}

- (void)trophyCaseDidBeginCelebration:(id)celebration
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[TrophyCaseViewControllerDelegate] unhiding rootViewController because celebration video did begin", v6, 2u);
  }

  rootViewController = [(PhoneSceneDelegate *)self rootViewController];
  [rootViewController unhide];
}

- (void)onboardingCoordinatorPhaseDidChangeTo:(int64_t)to
{
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    activityDashboardViewController = [(PhoneSceneDelegate *)self activityDashboardViewController];
    presentingOnboarding = self->_presentingOnboarding;
    *buf = 134218496;
    toCopy = to;
    v15 = 1024;
    v16 = activityDashboardViewController != 0;
    v17 = 1024;
    v18 = presentingOnboarding;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Setup] onboarding coordinator phase did change: %ld, activity app is set up: %d, is presenting onboarding: %d", buf, 0x18u);
  }

  if (to == 5)
  {
    activityDashboardViewController2 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    viewIfLoaded = [activityDashboardViewController2 viewIfLoaded];
    window = [viewIfLoaded window];

    if (!window)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100128B1C;
      block[3] = &unk_10083A8B0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else if (!self->_presentingOnboarding)
  {
    [(PhoneSceneDelegate *)self _setupOnboarding];
  }
}

- (void)updateWorkoutState:(int64_t)state shouldShowTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  _HKInitializeLogging();
  v7 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [WODataLinkWorkoutStateHelper descriptionFor:state];
    v10 = v9;
    v11 = @"NO";
    if (timeoutCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v35 = v9;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: %@, shouldShowTimeout: %@", buf, 0x16u);
  }

  if (state)
  {
    if (timeoutCopy)
    {
      _HKInitializeLogging();
      v12 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        mirrorViewController = self->_mirrorViewController;
        *buf = 138412290;
        v35 = mirrorViewController;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing down mirrorViewController with showing timeout dialog: %@", buf, 0xCu);
      }

      v14 = self->_mirrorViewController;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100129394;
      v31[3] = &unk_10083A8D8;
      v31[4] = self;
      v32 = timeoutCopy;
      [(WOMirrorViewController *)v14 showTimeoutDialogWithDismissCompletion:v31];
    }

    else
    {
      if ([(WOMirrorViewController *)self->_mirrorViewController willPresentSummaryOnEndWorkout])
      {
        _HKInitializeLogging();
        v17 = HKLogWorkouts;
        if (!os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v18 = v17;
        v19 = [WODataLinkWorkoutStateHelper descriptionFor:state];
        willPresentSummaryOnEndWorkout = [(WOMirrorViewController *)self->_mirrorViewController willPresentSummaryOnEndWorkout];
        v21 = @"YES";
        *buf = 138412802;
        v35 = v19;
        v36 = 2112;
        if (!willPresentSummaryOnEndWorkout)
        {
          v21 = @"NO";
        }

        v37 = @"NO";
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing down mirrorViewController with transition to Summary (updateWorkoutState: %@, shouldShowTimeout: %@, willPresentSummaryOnEndWorkout: %@)", buf, 0x20u);
      }

      else
      {
        v22 = objc_alloc_init(CHBackgroundTaskAssertion);
        [(CHBackgroundTaskAssertion *)v22 activate];
        _HKInitializeLogging();
        v23 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          v24 = self->_mirrorViewController;
          v25 = v23;
          willPresentSummaryOnEndWorkout2 = [(WOMirrorViewController *)v24 willPresentSummaryOnEndWorkout];
          v27 = @"NO";
          if (willPresentSummaryOnEndWorkout2)
          {
            v27 = @"YES";
          }

          *buf = 138412546;
          v35 = v27;
          v36 = 2112;
          v37 = v22;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing down mirrorViewController, willPresentSummaryOnEndWorkout: %@, assertion: %@", buf, 0x16u);
        }

        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100129588;
        v28[3] = &unk_10083A920;
        v30 = 0;
        v28[4] = self;
        v29 = v22;
        v18 = v22;
        [(PhoneSceneDelegate *)self dismissMirrorViewControllerWithCompletion:v28];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_mirrorViewController;
      *buf = 138412290;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing up mirrorViewController on change to Active state, current: %@", buf, 0xCu);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100128FAC;
    v33[3] = &unk_10083A8B0;
    v33[4] = self;
    [(PhoneSceneDelegate *)self dismissMirrorViewControllerWithCompletion:v33];
  }
}

- (void)dismissMirrorViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  mirrorViewController = self->_mirrorViewController;
  if (mirrorViewController)
  {
    presentedViewController = [(WOMirrorViewController *)mirrorViewController presentedViewController];

    if (presentedViewController)
    {
      _HKInitializeLogging();
      v7 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_mirrorViewController;
        v9 = v7;
        presentedViewController2 = [(WOMirrorViewController *)v8 presentedViewController];
        *buf = 138412290;
        v15 = presentedViewController2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[dataLink] dismiss: Bringing down mirrorViewController.presentedViewController dismiss: %@", buf, 0xCu);
      }

      presentedViewController3 = [(WOMirrorViewController *)self->_mirrorViewController presentedViewController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100129834;
      v12[3] = &unk_10083C7F8;
      v12[4] = self;
      v13 = completionCopy;
      [presentedViewController3 dismissViewControllerAnimated:1 completion:v12];
    }

    else
    {
      [(PhoneSceneDelegate *)self _dismissMirrorViewControllerAndClearReferenceWithCompletion:completionCopy];
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_dismissMirrorViewControllerAndClearReferenceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_mirrorViewController)
  {
    _HKInitializeLogging();
    v6 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      mirrorViewController = self->_mirrorViewController;
      *buf = 138412290;
      v12 = mirrorViewController;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[dataLink] dismissAndClear: Bringing down mirrorViewController dismiss: %@", buf, 0xCu);
    }

    v8 = self->_mirrorViewController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100129A6C;
    v9[3] = &unk_10083C7F8;
    v9[4] = self;
    v10 = v5;
    [(WOMirrorViewController *)v8 dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

- (void)_handleManuallyLoggedWorkoutNavigationNotification
{
  activityTileNavController = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:activityTileNavController animated:1];

  v4 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129C00;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (id)provideSummaryViewControllerForDataSource:(id)source
{
  sourceCopy = source;
  hkWorkout = [sourceCopy hkWorkout];
  fiui_finalWorkoutUUID = [hkWorkout fiui_finalWorkoutUUID];
  v7 = [fiui_finalWorkoutUUID isEqual:self->_cachedWorkoutDetailViewUUID];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentWorkoutDetailViewController);
  }

  else
  {
    v9 = [[CHWorkoutDataProvider alloc] initWithHealthStore:self->_healthStore];
    v10 = objc_alloc_init(AAUIAchievementResourceProvider);
    awardsDataProviderWrapper = [(ActivityTileViewController *)self->_activityTileViewController awardsDataProviderWrapper];
    v12 = [CHWorkoutDetailViewController alloc];
    hkWorkout2 = [sourceCopy hkWorkout];
    LOWORD(v18) = 257;
    v14 = [(CHWorkoutDetailViewController *)v12 initWithWorkout:hkWorkout2 workoutActivity:0 healthStore:self->_healthStore model:self->_model fitnessAppContext:self->_fitnessAppContext workoutFormattingManager:self->_workoutFormattingManager workoutDataProvider:v9 badgeImageFactory:self->_badgeImageFactory friendListManager:self->_friendListManager achievementLocalizationProvider:self->_achievementLocalizationProvider pauseRingsCoordinator:self->_pauseRingsCoordinator achievementResourceProvider:v10 formattingManager:self->_fitnessUIFormattingManager awardsDataProvider:awardsDataProviderWrapper shouldExposeDeepLinkToTrainingLoadFromEffort:v18 isWorkoutSummaryFetchRequired:sourceCopy supplementaryDataSource:?];

    [(PhoneSceneDelegate *)self setCurrentWorkoutDetailViewController:v14];
    hkWorkout3 = [sourceCopy hkWorkout];
    fiui_finalWorkoutUUID2 = [hkWorkout3 fiui_finalWorkoutUUID];
    [(PhoneSceneDelegate *)self setCachedWorkoutDetailViewUUID:fiui_finalWorkoutUUID2];

    WeakRetained = [[UINavigationController alloc] initWithRootViewController:v14];
  }

  return WeakRetained;
}

- (CHWorkoutDetailViewController)currentWorkoutDetailViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentWorkoutDetailViewController);

  return WeakRetained;
}

@end