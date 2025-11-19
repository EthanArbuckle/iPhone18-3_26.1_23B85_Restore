@interface PhoneSceneDelegate
- (BOOL)isMirroringSessionActive;
- (BOOL)navigateToSeymourTab;
- (BOOL)presentingActiveWorkout;
- (CHWorkoutDetailViewController)currentWorkoutDetailViewController;
- (NLTVConnectionManager)tvConnectionManager;
- (id)_createRootViewController;
- (id)_fitnessDataCollectionEnabledPreference;
- (id)_parseGoalRecommendation:(id)a3;
- (id)provideSummaryViewControllerForDataSource:(id)a3;
- (id)summaryDeeplinkViewController;
- (int64_t)_parseFitnessCoachingNotificationType:(id)a3;
- (void)_clearWeeklyGoalDisplayContext;
- (void)_clearWindowSceneAndOptions;
- (void)_configureWorkoutHandler;
- (void)_createOrbActions;
- (void)_dismissMirrorViewControllerAndClearReferenceWithCompletion:(id)a3;
- (void)_handleActivityShareShortcut;
- (void)_handleActivitySharingURL:(id)a3;
- (void)_handleFriendsShortcut;
- (void)_handleHistoryShortcut;
- (void)_handleManuallyLoggedWorkoutNavigationNotification;
- (void)_handleSettingsShortcut;
- (void)_handleShortcutItem:(id)a3 didJustLaunch:(BOOL)a4;
- (void)_handleStartWorkoutConfigurationURL:(id)a3;
- (void)_handleTodayShortcut;
- (void)_handleTrendsShortcut;
- (void)_handleWorkoutConfigurationURL:(id)a3;
- (void)_ppt_showSharingTab;
- (void)_presentExerciseAndStandGoalsSetupOnboarding;
- (void)_presentMoveGoalSetupOnboarding;
- (void)_presentOnboardingNavigationController:(id)a3;
- (void)_presentWelcomeViewsSetupOnboarding:(BOOL)a3;
- (void)_presentWhatsNewViewSetupOnboarding;
- (void)_refreshBadgeCounts;
- (void)_resetToViewController:(id)a3 animated:(BOOL)a4;
- (void)_setActivityTabBarImage;
- (void)_setBadgeCount:(unint64_t)a3 forTabBarItem:(id)a4;
- (void)_setFitnessDataCollectionEnabled:(BOOL)a3;
- (void)_setSelectedViewController:(id)a3;
- (void)_setupActivityAppAndLoadData;
- (void)_setupDeeplinks;
- (void)_setupOnboarding;
- (void)_setupTabBarViewControllersAndOrbActions;
- (void)_seymourAvailabilityStatusDidChange:(id)a3;
- (void)_showCoachingDataCollectionMessageIfNeeded;
- (void)_trendsAvailabilityStatusDidChange:(id)a3;
- (void)_updateSeymourNavigationController;
- (void)aggregator:(id)a3 didUpdateActivitySharingBadgeCount:(int64_t)a4;
- (void)aggregator:(id)a3 didUpdateEngagmentBadgeCount:(int64_t)a4;
- (void)cleanupGuestAuthentication;
- (void)dealloc;
- (void)dismissMirrorViewControllerWithCompletion:(id)a3;
- (void)endDiscovery;
- (void)handleAppIntentDeeplinkWithURL:(id)a3;
- (void)handleAppIntentWithUserActivity:(id)a3;
- (void)handleFitnessCoachingNotificationResponse:(id)a3;
- (void)memoryWarningReceived:(id)a3;
- (void)onboardingCoordinatorPhaseDidChangeTo:(int64_t)a3;
- (void)openURLContext:(id)a3;
- (void)presentBrowsingConsentAlertWithCompletion:(id)a3;
- (void)presentModelOnSummaryTabWithViewController:(id)a3;
- (void)promptForPasscodeWithLength:(int64_t)a3 completion:(id)a4;
- (void)ringCelebrationDidBegin;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)trophyCaseDidBeginCelebration:(id)a3;
- (void)updateTVDiscovery;
- (void)updateWorkoutState:(int64_t)a3 shouldShowTimeout:(BOOL)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation PhoneSceneDelegate

- (BOOL)presentingActiveWorkout
{
  v3 = [(PhoneSceneDelegate *)self workoutController];
  v4 = [v3 activeWorkout];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(PhoneSceneDelegate *)self isMirroringSessionActive];
  }

  return v5;
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

  v12 = [(FIUIFormattingManager *)self->_fitnessUIFormattingManager unitManager];
  v13 = v12;
  if (v12)
  {
    if ([v12 conformsToProtocol:&OBJC_PROTOCOL___ACHUnitManager])
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

  v21 = [(CHHistoryDataProvider *)self->_historyDataProvider workoutDataProvider];
  workoutsDataProvider = self->_workoutsDataProvider;
  self->_workoutsDataProvider = v21;

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

  v48 = [(PhoneSceneDelegate *)self _createRootViewController];
  [(PhoneSceneDelegate *)self setRootViewController:v48];

  v49 = [(PhoneSceneDelegate *)self window];
  v50 = [(PhoneSceneDelegate *)self rootViewController];
  [v49 setRootViewController:v50];

  v51 = [(PhoneSceneDelegate *)self window];
  [v51 makeKeyAndVisible];

  v52 = +[NSNotificationCenter defaultCenter];
  [v52 addObserver:self selector:"updateTVDiscovery" name:UIApplicationDidBecomeActiveNotification object:0];

  if (self->_loadingView)
  {
    v53 = [(CHTabBarController *)self->_tabBarController view];
    CGAffineTransformMakeScale(&buf, 0.9, 0.9);
    [v53 setTransform:&buf];

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

  v4 = [(PhoneSceneDelegate *)self workoutsDataProvider];
  [v4 startFetching];

  v5 = [(PhoneSceneDelegate *)self workoutsDataProvider];
  self->_hasCurrentWorkouts = [v5 hasWorkouts];

  [(PhoneSceneDelegate *)self _configureWorkoutHandler];
  v6 = [CHActivityHistoryNavigationController alloc];
  v7 = [(PhoneSceneDelegate *)self activityDateCache];
  v8 = [(PhoneSceneDelegate *)self pauseRingsCoordinator];
  v9 = [(CHActivityHistoryNavigationController *)v6 initWithDateCache:v7 pauseRingsCoordinator:v8];
  [(PhoneSceneDelegate *)self setActivityTileNavController:v9];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SUMMARY" value:&stru_1008680E8 table:@"Localizable"];
  v12 = [(PhoneSceneDelegate *)self activityTileNavController];
  v13 = [v12 tabBarItem];
  [v13 setTitle:v11];

  v14 = [(PhoneSceneDelegate *)self activityTileNavController];
  v15 = [v14 tabBarItem];
  [v15 setAccessibilityIdentifier:FIUITabBarSummaryAccessibilityIdentifier];

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
  v19 = [(PhoneSceneDelegate *)self friendManager];
  v20 = [(PhoneSceneDelegate *)self friendListManager];
  v21 = [(FriendsSetupCoordinator *)v18 initWithFriendManager:v19 friendListSectionManager:v20];
  [(PhoneSceneDelegate *)self setFriendsSetupCoordinator:v21];

  v22 = [CHWorkoutBrowsingViewController alloc];
  healthStore = self->_healthStore;
  v24 = [(PhoneSceneDelegate *)self fitnessUIFormattingManager];
  v25 = [(PhoneSceneDelegate *)self workoutController];
  v26 = [(PhoneSceneDelegate *)self activityPausedRingsObserver];
  v27 = [(PhoneSceneDelegate *)self workoutOccurrenceStore];
  v28 = [(PhoneSceneDelegate *)self fitnessIntelligenceConnection];
  v29 = [(PhoneSceneDelegate *)self workoutVoiceAvailabilityProvider];
  v30 = [(PhoneSceneDelegate *)self fitnessAppContext];
  v31 = [(CHWorkoutBrowsingViewController *)v22 initWithHealthStore:healthStore formattingManager:v24 workoutController:v25 activityPausedRingsObserverBridge:v26 occurrenceStore:v27 fitnessIntelligenceConnection:v28 workoutVoiceAvailabilityProvider:v29 fitnessAppContext:v30];
  [(PhoneSceneDelegate *)self setWorkoutBrowsingViewController:v31];

  v32 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
  v33 = [(PhoneSceneDelegate *)self workoutController];
  v34 = [(FIUIFormattingManager *)self->_fitnessUIFormattingManager unitManager];
  v35 = [v34 unitManager];
  v36 = [(PhoneSceneDelegate *)self fitnessIntelligenceConnection];
  v37 = [(PhoneSceneDelegate *)self workoutVoiceAvailabilityProvider];
  v38 = [(PhoneSceneDelegate *)self fitnessAppContext];
  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v130[2] = sub_10012371C;
  v130[3] = &unk_10083CE98;
  objc_copyWeak(&v131, &location);
  v39 = [CHWorkoutUIControllerFactory makeWithRootViewController:v32 workoutController:v33 unitManager:v35 fitnessIntelligenceConnection:v36 workoutVoiceAvailabilityProvider:v37 fitnessAppContext:v38 summaryViewControllerCompletion:v130];
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
    v48 = [(CHWorkoutVoiceAvailabilityProvider *)self->_workoutVoiceAvailabilityProvider bridgedValue];
    v128 = [(ActivityDashboardContext *)v127 initWithActivityDataProvider:activityDataProvider activityDateCache:activityDateCache achievementsDataProvider:achievementsDataProvider balanceDataProvider:balanceDataProvider pauseRingsCoordinator:pauseRingsCoordinator historyDataProvider:historyDataProvider workoutFormattingManager:workoutFormattingManager workoutDataProvider:workoutsDataProvider friendListManager:friendListManager friendsSetupCoordinator:friendsSetupCoordinator chFriendManager:friendManager achievementLocalizationProvider:achievementLocalizationProvider badgeImageFactory:badgeImageFactory healthStore:v43 fiuiFormattingManager:fitnessUIFormattingManager fitnessAppContext:fitnessAppContext wheelchairUseCache:wheelchairUseCache trendsAvailabilityManager:trendsAvailabilityManager workoutVoiceAvailabilityProvider:v48];

    v49 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
    v50 = [v49 viewModel];
    [(ActivityDashboardContext *)v128 setStandardActivityItemsViewModel:v50];

    v51 = [[_TtC10FitnessApp31ActivityDashboardViewController alloc] initWithCollectionViewLayout:v124 context:v128 healthStore:self->_healthStore];
    [(PhoneSceneDelegate *)self setActivityDashboardViewController:v51];

    v52 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    [v52 setTrophyCaseViewControllerDelegate:self];

    v53 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    [v53 setHistoryPagingViewControllerDelegate:self];

    v54 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v55 = [v54 navigationItem];
    [v55 setLargeTitleDisplayMode:3];

    v56 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
    v57 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    [v57 setQuickStartWorkoutActionHandler:v56];

    v58 = [(PhoneSceneDelegate *)self activityTileNavController];
    v59 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v136 = v59;
    v60 = [NSArray arrayWithObjects:&v136 count:1];
    [v58 setViewControllers:v60];

    v125 = [(ActivityDashboardContext *)v128 chAwardsDataProvider];
  }

  else
  {
    v61 = [_TtC10FitnessApp26ActivityTileViewController alloc];
    v129 = [(PhoneSceneDelegate *)self healthStore];
    v126 = [(PhoneSceneDelegate *)self fitnessAppContext];
    v123 = [(PhoneSceneDelegate *)self activityDataProvider];
    v120 = [(PhoneSceneDelegate *)self pauseRingsCoordinator];
    v117 = [(PhoneSceneDelegate *)self historyDataProvider];
    v115 = [(PhoneSceneDelegate *)self achievementsDataProvider];
    v113 = [(PhoneSceneDelegate *)self achievementLocalizationProvider];
    v62 = [(PhoneSceneDelegate *)self model];
    v63 = [(PhoneSceneDelegate *)self badgeImageFactory];
    v64 = [(PhoneSceneDelegate *)self friendListManager];
    v65 = [(PhoneSceneDelegate *)self fitnessUIFormattingManager];
    v66 = [(PhoneSceneDelegate *)self workoutFormattingManager];
    v67 = [(PhoneSceneDelegate *)self activityDateCache];
    v68 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
    v69 = [(PhoneSceneDelegate *)self wheelchairUseCache];
    v70 = [(ActivityTileViewController *)v61 initWithHealthStore:v129 fitnessAppContext:v126 activityDataProvider:v123 pauseRingsCoordinator:v120 historyDataProvider:v117 achievementsDataProvider:v115 achievementLocalizationProvider:v113 fiuiModel:v62 badgeImageFactory:v63 friendListManager:v64 fiuiFormattingManager:v65 workoutFormattingManager:v66 activityDateCache:v67 trendsAvailabilityManager:v68 wheelchairUseCache:v69];
    [(PhoneSceneDelegate *)self setActivityTileViewController:v70];

    v71 = [(PhoneSceneDelegate *)self activityTileNavController];
    v72 = [(PhoneSceneDelegate *)self activityTileViewController];
    v135 = v72;
    v73 = [NSArray arrayWithObjects:&v135 count:1];
    [v71 setViewControllers:v73];

    v125 = [(ActivityTileViewController *)self->_activityTileViewController awardsDataProviderWrapper];
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
  v82 = [(CHFitnessAppContext *)v76 seymourCatalogItemDataProvider];
  v83 = [CHActivitySharingViewControllerFactory makeWithAchievementBadgeImageFactory:v121 achievementLocalizationProvider:v118 achievementsDataProvider:v74 activitySharingClient:activitySharingClient awardsDataProvider:v125 fitnessAppContext:v76 fiuiFormattingManager:v77 friendListSectionManager:v78 friendsSetupCoordinator:v79 friendManager:v80 healthStore:v81 seymourCatalogItemDataProvider:v82 wheelchairUseCache:self->_wheelchairUseCache workoutDataProvider:self->_workoutsDataProvider workoutFormattingManager:self->_workoutFormattingManager pauseRingsCoordinator:self->_pauseRingsCoordinator];
  [(PhoneSceneDelegate *)self setActivitySharingViewController:v83];

  v84 = [UIImage _systemImageNamed:@"person.2.fill"];
  v85 = [(PhoneSceneDelegate *)self activitySharingViewController];
  v86 = [v85 tabBarItem];
  [v86 setImage:v84];

  v87 = +[NSBundle mainBundle];
  v88 = [v87 localizedStringForKey:@"SHARING" value:&stru_1008680E8 table:@"Localizable"];
  v89 = [(PhoneSceneDelegate *)self activitySharingViewController];
  v90 = [v89 tabBarItem];
  [v90 setTitle:v88];

  v91 = [(PhoneSceneDelegate *)self activitySharingViewController];
  v92 = [v91 tabBarItem];
  [v92 setAccessibilityIdentifier:FIUITabBarSharingAccessibilityIdentifier];

  v93 = objc_alloc_init(CHTabBarController);
  [(PhoneSceneDelegate *)self setTabBarController:v93];

  [(PhoneSceneDelegate *)self _setupTabBarViewControllersAndOrbActions];
  v94 = +[ARUIMetricColors keyColors];
  v95 = [v94 nonGradientTextColor];

  v96 = [(PhoneSceneDelegate *)self window];
  [v96 setTintColor:v95];

  v97 = [CHNavigationTracker alloc];
  v98 = [(PhoneSceneDelegate *)self tabBarController];
  v99 = [(PhoneSceneDelegate *)self fitnessAppContext];
  v100 = [(PhoneSceneDelegate *)self workoutController];
  v101 = [(CHNavigationTracker *)v97 initWithTabBarController:v98 fitnessAppContext:v99 workoutController:v100];
  [(PhoneSceneDelegate *)self setNavigationTracker:v101];

  v102 = [CHRootViewController alloc];
  v103 = [(PhoneSceneDelegate *)self tabBarController];
  v104 = [(PhoneSceneDelegate *)self healthStore];
  v105 = [(CHRootViewController *)v102 initWithTabBarController:v103 healthStore:v104];

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
  v3 = [(PhoneSceneDelegate *)self activityTileNavController];
  v33 = v3;
  v4 = [NSArray arrayWithObjects:&v33 count:1];

  v5 = [(PhoneSceneDelegate *)self seymourNavController];

  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[seymour] Adding navigation controller to tab bar", v32, 2u);
    }

    v7 = [(PhoneSceneDelegate *)self seymourNavController];
    v8 = [v4 arrayByAddingObject:v7];

    v9 = FIUITabBarFitnessPlusAccessibilityIdentifier;
    v10 = [(PhoneSceneDelegate *)self seymourNavController];
    v11 = [v10 tabBarItem];
    [v11 setAccessibilityIdentifier:v9];

    v4 = v8;
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    v12 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];

    if (v12)
    {
      _HKInitializeLogging();
      v13 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[workout] Adding workout navigation controller to tab bar", v32, 2u);
      }

      v14 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      v15 = [v4 arrayByAddingObject:v14];

      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:@"WORKOUT" value:&stru_1008680E8 table:@"Localizable"];
      v18 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      v19 = [v18 tabBarItem];
      [v19 setTitle:v17];

      v20 = [UIImage _systemImageNamed:@"figure.run.circle.fill"];
      v21 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      v22 = [v21 tabBarItem];
      [v22 setImage:v20];

      v23 = FIUITabBarWorkoutAccessibilityIdentifier;
      v24 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      v25 = [v24 tabBarItem];
      [v25 setAccessibilityIdentifier:v23];

      v26 = [[NSUserActivity alloc] initWithActivityType:@"Fitness Workout"];
      [v26 setEligibleForHandoff:0];
      [v26 setUserInfo:&off_10086E520];
      v27 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      [v27 setUserActivity:v26];

      v4 = v15;
    }
  }

  v28 = [(PhoneSceneDelegate *)self activitySharingViewController];

  if (v28)
  {
    v29 = [(PhoneSceneDelegate *)self activitySharingViewController];
    v30 = [v4 arrayByAddingObject:v29];

    v4 = v30;
  }

  v31 = [(PhoneSceneDelegate *)self tabBarController];
  [v31 setViewControllers:v4];

  [(PhoneSceneDelegate *)self _createOrbActions];
  [(PhoneSceneDelegate *)self _setupDeeplinks];
}

- (void)_createOrbActions
{
  v28 = objc_alloc_init(NSMutableArray);
  v3 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
  if ([v3 trendsAvailability] != 1)
  {
    v4 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
    v5 = [v4 trendsAvailability];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = [UIApplicationShortcutItem alloc];
    v3 = +[NSBundle mainBundle];
    v7 = [v3 localizedStringForKey:@"ORB_TRENDS_ACTION" value:&stru_1008680E8 table:@"Localizable"];
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
  v24 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
  if ([v24 trendsAvailability] == 1)
  {
  }

  else
  {
    v25 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
    v26 = [v25 trendsAvailability];

    if (v26)
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
  v4 = [v3 isStandalonePhoneFitnessMode];
  v5 = &off_10083D328;
  if (!v4)
  {
    v5 = &off_10083D320;
  }

  v8 = [UIImage _systemImageNamed:*v5];

  v6 = [(PhoneSceneDelegate *)self activityTileNavController];
  v7 = [v6 tabBarItem];
  [v7 setImage:v8];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
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
      v10 = v7;
      [(PhoneSceneDelegate *)self setConnectionOptions:v8];
      [(PhoneSceneDelegate *)self setWindowScene:v10];
      v74 = v10;
      v11 = [[UIWindow alloc] initWithWindowScene:v10];
      [(PhoneSceneDelegate *)self setWindow:v11];

      v12 = [(PhoneSceneDelegate *)self window];
      v13 = +[UIColor blackColor];
      [v12 setBackgroundColor:v13];

      v14 = [(PhoneSceneDelegate *)self window];
      [v14 _accessibilitySetInterfaceStyleIntent:2];

      v15 = +[UIApplication sharedApplication];
      v16 = [v15 delegate];
      v17 = [v16 healthStore];
      [(PhoneSceneDelegate *)self setHealthStore:v17];

      v18 = +[UIApplication sharedApplication];
      v19 = [v18 delegate];
      v20 = [v19 historyDataProvider];
      [(PhoneSceneDelegate *)self setHistoryDataProvider:v20];

      v21 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:self->_healthStore];
      [(PhoneSceneDelegate *)self setWheelchairUseCache:v21];

      v22 = +[UIApplication sharedApplication];
      v23 = [v22 delegate];
      v24 = [v23 fitnessUIFormattingManager];
      [(PhoneSceneDelegate *)self setFitnessUIFormattingManager:v24];

      v25 = +[UIApplication sharedApplication];
      v26 = [v25 delegate];
      v27 = [v26 workoutFormattingManager];
      [(PhoneSceneDelegate *)self setWorkoutFormattingManager:v27];

      v28 = +[UIApplication sharedApplication];
      v29 = [v28 delegate];
      v30 = [v29 pauseRingsCoordinator];
      [(PhoneSceneDelegate *)self setPauseRingsCoordinator:v30];

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
      v37 = [(PhoneSceneDelegate *)self healthStore];
      v38 = [(CHOnboardingCoordinator *)v36 initWithHealthStore:v37];
      [(PhoneSceneDelegate *)self setOnboardingCoordinator:v38];

      v39 = [(PhoneSceneDelegate *)self onboardingCoordinator];
      [v39 setDelegate:self];

      v75 = objc_alloc_init(NLSessionBackgroundPermissionsChecker);
      v40 = objc_alloc_init(CHActivityPausedRingsObserver);
      [(PhoneSceneDelegate *)self setActivityPausedRingsObserver:v40];

      v41 = objc_alloc_init(CHWorkoutConfigurationOccurrenceStore);
      [(PhoneSceneDelegate *)self setWorkoutOccurrenceStore:v41];

      v42 = objc_alloc_init(CHFitnessIntelligenceConnection);
      [(PhoneSceneDelegate *)self setFitnessIntelligenceConnection:v42];

      v43 = [CHWorkoutVoiceAvailabilityProvider alloc];
      v44 = [(PhoneSceneDelegate *)self fitnessIntelligenceConnection];
      v45 = [(CHWorkoutVoiceAvailabilityProvider *)v43 initWithConnection:v44];
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

      v50 = [(PhoneSceneDelegate *)self fitnessUIFormattingManager];
      v51 = [(PhoneSceneDelegate *)self activityPausedRingsObserver];
      v52 = [(PhoneSceneDelegate *)self workoutOccurrenceStore];
      v53 = +[CHLocationProvider shared];
      v54 = [(PhoneSceneDelegate *)self workoutVoiceAvailabilityProvider];
      v55 = [NLWorkoutControllerFactoryBridge makeWithHealthStore:v46 formattingManager:v50 activityPausedRingsObserver:v51 backgroundPermissionsChecker:v75 occurrenceStore:v52 locationProvider:v53 workoutVoiceAvailabilityProvider:v54];
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
        v60 = [v8 shortcutItem];

        if (v60)
        {
          v61 = [v8 shortcutItem];
          [(PhoneSceneDelegate *)self _handleShortcutItem:v61 didJustLaunch:1];
        }

        else
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v62 = [v8 URLContexts];
          v63 = [v62 countByEnumeratingWithState:&v76 objects:v81 count:16];
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
                  objc_enumerationMutation(v62);
                }

                [(PhoneSceneDelegate *)self openURLContext:*(*(&v76 + 1) + 8 * v66)];
                v66 = v66 + 1;
              }

              while (v64 != v66);
              v64 = [v62 countByEnumeratingWithState:&v76 objects:v81 count:16];
            }

            while (v64);
          }

          v67 = [v8 notificationResponse];
          v68 = [v67 notification];
          v69 = [v68 request];
          v70 = [v69 content];
          v71 = [v70 userInfo];

          if (([(PhoneSceneDelegate *)self _parseFitnessCoachingNotificationType:v71]& 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v72 = [(PhoneSceneDelegate *)self rootViewController];
            [v72 hide];
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

- (void)memoryWarningReceived:(id)a3
{
  v3 = [(PhoneSceneDelegate *)self badgeImageFactory];
  [v3 clearAllCachedImages];
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

- (void)_presentWelcomeViewsSetupOnboarding:(BOOL)a3
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
  v7 = [(SeymourAvailabilityManager *)self->_seymourAvailabilityManager available];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100122420;
  v25[3] = &unk_10083CE28;
  v28 = a3;
  v29 = v7;
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
  v15 = [(CHWelcomeViewController *)v11 initWithFitnessPlusAvailable:v7 buttonHandler:&v17];
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

- (void)_presentOnboardingNavigationController:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CHOnboardingNavigationController);
  [(PhoneSceneDelegate *)self setSetupNavigationController:v5];

  v6 = [(PhoneSceneDelegate *)self window];
  v7 = [(PhoneSceneDelegate *)self setupNavigationController];
  [v6 setRootViewController:v7];

  v8 = [(PhoneSceneDelegate *)self window];
  v9 = +[ARUIMetricColors keyColors];
  v10 = [v9 nonGradientTextColor];
  [v8 setTintColor:v10];

  v11 = [(PhoneSceneDelegate *)self window];
  [v11 makeKeyAndVisible];

  v12 = [CHLoadingView alloc];
  v13 = [(PhoneSceneDelegate *)self window];
  [v13 frame];
  v14 = [(CHLoadingView *)v12 initWithFrame:?];
  [(PhoneSceneDelegate *)self setLoadingView:v14];

  v15 = [(PhoneSceneDelegate *)self window];
  v16 = [(PhoneSceneDelegate *)self loadingView];
  [v15 addSubview:v16];

  v17 = [(PhoneSceneDelegate *)self loadingView];
  v18 = [v17 indicatorView];
  [v18 startAnimating];

  [v4 setNavigationBarHidden:1 animated:0];
  [v4 setModalPresentationStyle:0];
  v19 = [(PhoneSceneDelegate *)self setupNavigationController];
  [v19 presentViewController:v4 animated:0 completion:0];
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
  v3 = [(SeymourAvailabilityManager *)self->_seymourAvailabilityManager available];
  v4 = [(CHWorkoutVoiceAvailabilityProvider *)self->_workoutVoiceAvailabilityProvider isFeatureSupported];
  objc_initWeak(&location, self);
  v5 = [CHWhatsNewViewController alloc];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100122A24;
  v12 = &unk_10083A710;
  objc_copyWeak(&v13, &location);
  v6 = [(CHWhatsNewViewController *)v5 initWithFitnessPlusAvailable:v3 workoutBuddySupported:v4 buttonHandler:&v9];
  v7 = [CHOnboardingNavigationController alloc];
  v8 = [(CHOnboardingNavigationController *)v7 initWithRootViewController:v6, v9, v10, v11, v12];
  [(PhoneSceneDelegate *)self _presentOnboardingNavigationController:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = a4;
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
    v7 = v5;
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

- (void)openURLContext:(id)a3
{
  v4 = [a3 URL];
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"activitytoday"];

  if (v6)
  {
    [(PhoneSceneDelegate *)self _handleTodayShortcut];
  }

  else
  {
    v7 = [v4 scheme];
    v8 = [v7 isEqualToString:kASActivitySharingScheme];

    if (v8)
    {
      [(PhoneSceneDelegate *)self _handleActivitySharingURL:v4];
    }

    else
    {
      v9 = [v4 scheme];
      v10 = [v9 isEqualToString:@"fitness-badging"];

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
        v12 = [v4 scheme];
        v13 = [v12 isEqualToString:@"fitnessapp-settings"];

        if (v13)
        {
          [(PhoneSceneDelegate *)self _handleSettingsShortcut];
        }

        else
        {
          v14 = [v4 scheme];
          if ([v14 isEqualToString:@"file"])
          {
            v15 = [v4 pathExtension];
            v16 = [v15 isEqualToString:@"workout"];

            if (v16)
            {
              [(PhoneSceneDelegate *)self _handleWorkoutConfigurationURL:v4];
              goto LABEL_21;
            }
          }

          else
          {
          }

          v17 = [v4 scheme];
          if ([v17 isEqualToString:@"fitnessapp"])
          {
            v18 = [v4 host];
            v19 = [v18 isEqualToString:@"workoutConfiguration"];

            if (v19)
            {
              [(PhoneSceneDelegate *)self _handleStartWorkoutConfigurationURL:v4];
              goto LABEL_21;
            }
          }

          else
          {
          }

          v20 = [v4 scheme];
          v21 = +[CHNavigator scheme];
          v22 = [v20 isEqualToString:v21];

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

- (void)handleAppIntentDeeplinkWithURL:(id)a3
{
  v8 = a3;
  v4 = [v8 scheme];
  if ([v4 isEqualToString:@"file"])
  {
    v5 = [v8 pathExtension];
    v6 = [v5 isEqualToString:@"workout"];

    if (v6)
    {
      [(PhoneSceneDelegate *)self _handleWorkoutConfigurationURL:v8];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [[CHNavigatorContext alloc] initWithHasActiveWorkout:[(PhoneSceneDelegate *)self presentingActiveWorkout]];
  [(CHNavigator *)self->_deeplinkNavigator navigateToURL:v8 context:v7];

LABEL_6:
}

- (void)handleAppIntentWithUserActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  if ([v5 isEqualToString:@"com.apple.Fitness.startWorkout"])
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
    {
      v6 = [v4 userInfo];
      v7 = [v6 valueForKey:@"siri.workout"];

      v8 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
      [v8 handleWorkoutConfigurationData:v7];
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
    v10 = [(PhoneSceneDelegate *)self fitnessAppContext];
    [v10 continueUserActivity:v4];
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = [(CHTabBarController *)self->_tabBarController selectedViewController];
  seymourNavController = self->_seymourNavController;

  if (v4 == seymourNavController)
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

- (void)sceneWillResignActive:(id)a3
{
  v4 = [(PhoneSceneDelegate *)self activityDataProvider];
  [v4 updateWidgets];

  v5 = [(CHTabBarController *)self->_tabBarController selectedViewController];
  seymourNavController = self->_seymourNavController;

  fitnessAppContext = self->_fitnessAppContext;
  if (v5 == seymourNavController)
  {
    [(CHFitnessAppContext *)fitnessAppContext seymourAppWillResignActive];
  }

  else
  {
    [(CHFitnessAppContext *)fitnessAppContext flushMetricEvents];
  }

  [(PhoneSceneDelegate *)self updateTVDiscovery];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = [(PhoneSceneDelegate *)self activityDashboardViewController];
  v5 = [v4 summaryCoordinator];
  [v5 logCardConfigurationAnalytics];

  v6 = [(PhoneSceneDelegate *)self workoutOccurrenceStore];
  [v6 handleAppWillEnterForeground];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = [(CHTabBarController *)self->_tabBarController selectedViewController];
  seymourNavController = self->_seymourNavController;

  fitnessAppContext = self->_fitnessAppContext;
  if (v4 == seymourNavController)
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

  v6 = [(PhoneSceneDelegate *)self tvConnectionManager];
  [v6 setIsDiscoveryAllowed:v5];

  v7 = [(PhoneSceneDelegate *)self tvConnectionManager];
  [v7 updateDiscoveryStateIfNeeded];
}

- (void)endDiscovery
{
  v3 = [(PhoneSceneDelegate *)self tvConnectionManager];
  [v3 setIsDiscoveryAllowed:0];

  v4 = [(PhoneSceneDelegate *)self tvConnectionManager];
  [v4 endDiscovery];
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    _HKInitializeLogging();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Intercepting shortcut because an active workout is presented", buf, 2u);
    }

    v8[2](v8, 0);
  }

  else
  {
    [(PhoneSceneDelegate *)self _handleShortcutItem:v7 didJustLaunch:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100123684;
    block[3] = &unk_10083C528;
    v11 = v8;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_resetToViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PhoneSceneDelegate *)self activityTileNavController];
  [v7 dismissViewControllerAnimated:v4 completion:0];

  v8 = [(PhoneSceneDelegate *)self tabBarController];
  [v8 setSelectedViewController:v6];

  v9 = [(PhoneSceneDelegate *)self activityTileNavController];
  [v9 detachPalette];

  v11 = [(PhoneSceneDelegate *)self activityTileNavController];
  v10 = [v11 popToRootViewControllerAnimated:v4];
}

- (void)_updateSeymourNavigationController
{
  v3 = [(PhoneSceneDelegate *)self seymourAvailabilityManager];
  v4 = [v3 available];

  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[seymour] Updating navigation controller", buf, 2u);
    }

    v6 = [(PhoneSceneDelegate *)self fitnessAppContext];
    v7 = [v6 seymourNavigationController];
    [(PhoneSceneDelegate *)self setSeymourNavController:v7];

    v8 = [(PhoneSceneDelegate *)self connectionOptions];
    if (v8)
    {
      v9 = v8;
      v10 = [(PhoneSceneDelegate *)self windowScene];

      if (v10)
      {
        _HKInitializeLogging();
        v11 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[seymour] Handling Window Scene", v26, 2u);
        }

        v12 = [(PhoneSceneDelegate *)self fitnessAppContext];
        v13 = [(PhoneSceneDelegate *)self windowScene];
        v14 = [(PhoneSceneDelegate *)self connectionOptions];
        [v12 handleWindowScene:v13 with:v14];

        [(PhoneSceneDelegate *)self _clearWindowSceneAndOptions];
      }
    }
  }

  else
  {
    v15 = [(PhoneSceneDelegate *)self seymourAvailabilityManager];
    if (([v15 unavailable] & 1) != 0 && (-[PhoneSceneDelegate connectionOptions](self, "connectionOptions"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      v18 = [(PhoneSceneDelegate *)self windowScene];

      if (v18)
      {
        _HKInitializeLogging();
        v19 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[seymour] Handling Window Scene while unavailable", v25, 2u);
        }

        v20 = [(PhoneSceneDelegate *)self fitnessAppContext];
        v21 = [(PhoneSceneDelegate *)self windowScene];
        v22 = [(PhoneSceneDelegate *)self connectionOptions];
        [v20 handleWindowScene:v21 with:v22];

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

- (void)_trendsAvailabilityStatusDidChange:(id)a3
{
  v6 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
  if ([v6 trendsAvailability])
  {
    v4 = [(PhoneSceneDelegate *)self trendsAvailabilityManager];
    v5 = [v4 trendsAvailability];

    if (v5 != 1)
    {

      [(PhoneSceneDelegate *)self _createOrbActions];
    }
  }

  else
  {
  }
}

- (void)_seymourAvailabilityStatusDidChange:(id)a3
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
    v5 = [(PhoneSceneDelegate *)self activityDashboardViewController];

    if (v5)
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
  v2 = [(PhoneSceneDelegate *)self appBadgeAggregator];
  [v2 triggerFetch];
}

- (void)_setBadgeCount:(unint64_t)a3 forTabBarItem:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = [NSNumber numberWithUnsignedInteger:a3];
    v7 = [FIUIFormattingManager stringWithNumber:v6 decimalPrecision:1];
    [v5 setBadgeValue:v7];

    v8 = +[ARUIMetricColors keyColors];
    v9 = [v8 nonGradientTextColor];
    [v5 setBadgeColor:v9];

    v12 = NSForegroundColorAttributeName;
    v10 = +[UIColor blackColor];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v5 setBadgeTextAttributes:v11 forState:0];
  }

  else
  {
    v10 = a4;
    [v10 setBadgeValue:0];
  }
}

- (void)_showCoachingDataCollectionMessageIfNeeded
{
  if (+[_HKBehavior isAppleInternalInstall](_HKBehavior, "isAppleInternalInstall") && (+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v3 = [(PhoneSceneDelegate *)self _fitnessDataCollectionEnabledPreference];
    _HKInitializeLogging();
    v4 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEBUG))
    {
      sub_10069CC58(v3, v4);
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
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
    v8 = [(PhoneSceneDelegate *)self activityTileNavController];
    [v8 presentViewController:v5 animated:1 completion:0];

    goto LABEL_6;
  }
}

- (void)_setFitnessDataCollectionEnabled:(BOOL)a3
{
  v3 = FIAppleInternalDataCollectionEnabledKey;
  v4 = [NSNumber numberWithBool:a3];
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

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v5 = a4;
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
    v7 = [v5 activityType];
    if ([v7 isEqualToString:FIUIActivityContinuityKey])
    {
      v8 = [(PhoneSceneDelegate *)self tabBarController];
      [v8 setSelectedIndex:0];
    }

    v9 = [(PhoneSceneDelegate *)self fitnessAppContext];
    [v9 continueUserActivity:v5];
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

- (void)_handleShortcutItem:(id)a3 didJustLaunch:(BOOL)a4
{
  v13 = a3;
  v5 = [v13 type];
  v6 = [v5 isEqualToString:@"com.apple.Fitness.opentrendsshortcut"];

  if (v6)
  {
    [(PhoneSceneDelegate *)self _handleTrendsShortcut];
  }

  else
  {
    v7 = [v13 type];
    v8 = [v7 isEqualToString:@"com.apple.Fitness.openhistorylistshortcut"];

    if (v8)
    {
      [(PhoneSceneDelegate *)self _handleHistoryShortcut];
    }

    else
    {
      v9 = [v13 type];
      v10 = [v9 isEqualToString:@"com.apple.Fitness.opensocialshortcut"];

      if (v10)
      {
        [(PhoneSceneDelegate *)self _handleFriendsShortcut];
      }

      else
      {
        v11 = [v13 type];
        v12 = [v11 isEqualToString:@"com.apple.Fitness.sharetodayactivityshortcut"];

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

  v4 = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:v4];

  v5 = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
  [v5 showAllTrendsAnimated:1];
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

  v4 = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:v4];

  v5 = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
  [v5 navigateToHistoryAnimated:1];
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
    v4 = [(PhoneSceneDelegate *)self activityTileNavController];
    [(PhoneSceneDelegate *)self _resetToViewController:v4];

    v5 = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
    [v5 presentAppSettingsShowingPane:2];
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

  v4 = [(PhoneSceneDelegate *)self activitySharingViewController];
  [(PhoneSceneDelegate *)self _resetToViewController:v4];

  v5 = [(PhoneSceneDelegate *)self activitySharingViewController];
  v6 = [v5 popToRootViewControllerAnimated:0];
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

  v4 = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:v4];

  v5 = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
  v6 = [v5 showTodayAndShareImmediately:1 animated:0 forGoalCompleteNotification:0 goalRecommendation:0];
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

  v4 = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:v4];

  v5 = [(PhoneSceneDelegate *)self summaryDeeplinkViewController];
  v6 = [v5 showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];
}

- (void)_handleActivitySharingURL:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
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
    v7 = [(PhoneSceneDelegate *)self activitySharingViewController];
    [(PhoneSceneDelegate *)self _resetToViewController:v7];

    v8 = [(PhoneSceneDelegate *)self activitySharingViewController];
    [v8 handleActivitySharingURL:v4];
  }
}

- (void)_handleWorkoutConfigurationURL:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handling workout sharing URL: %@", buf, 0xCu);
  }

  v6 = [v4 startAccessingSecurityScopedResource];
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CCD0();
    }
  }

  v12 = 0;
  v7 = [NSData dataWithContentsOfURL:v4 options:0 error:&v12];
  v8 = v12;
  _HKInitializeLogging();
  v9 = HKLogActivity;
  if (v8)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CD04(v4, v8, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Handling start workout configuration URL: %@", buf, 0xCu);
    }

    v10 = [(PhoneSceneDelegate *)self activityTileNavController];
    [(PhoneSceneDelegate *)self _resetToViewController:v10];

    v11 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
    [v11 handleWorkoutConfigurationData:v7];
  }

  if (v6)
  {
    [v4 stopAccessingSecurityScopedResource];
  }
}

- (void)_handleStartWorkoutConfigurationURL:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handling start workout configuration URL: %@", &v9, 0xCu);
  }

  v6 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
  [(PhoneSceneDelegate *)self _resetToViewController:v6];

  v7 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
  [v7 popToRoot];

  v8 = [(PhoneSceneDelegate *)self workoutBrowsingViewController];
  [v8 handleWorkoutConfigurationURL:v4];
}

- (void)aggregator:(id)a3 didUpdateActivitySharingBadgeCount:(int64_t)a4
{
  v7 = [(PhoneSceneDelegate *)self activitySharingViewController];
  v6 = [v7 tabBarItem];
  [(PhoneSceneDelegate *)self _setBadgeCount:a4 forTabBarItem:v6];
}

- (void)aggregator:(id)a3 didUpdateEngagmentBadgeCount:(int64_t)a4
{
  v7 = [(PhoneSceneDelegate *)self seymourNavController];
  v6 = [v7 tabBarItem];
  [(PhoneSceneDelegate *)self _setBadgeCount:a4 forTabBarItem:v6];
}

- (BOOL)navigateToSeymourTab
{
  v3 = [(PhoneSceneDelegate *)self seymourNavController];

  if (v3)
  {
    v4 = [(PhoneSceneDelegate *)self seymourNavController];
    [(PhoneSceneDelegate *)self _setSelectedViewController:v4];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CD8C();
    }
  }

  return v3 != 0;
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 request];
  v10 = [v9 identifier];

  v11 = [v7 request];
  v12 = [v11 content];

  v13 = [v12 categoryIdentifier];
  if (([v10 isEqualToString:@"com.apple.fitcored.guestpairing"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"com.apple.Fitness.WorkoutPlanCreationNotification") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"com.apple.Fitness.PersonalizedWorkoutPlanCreationNotification") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", FCCFitnessPlusPlanNotificationCategoryIdentifier) & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", kASBulletinsActivityDataCategoryIdentifier) & 1) != 0 || objc_msgSend(v13, "isEqualToString:", FCCNotificationCategoryIdentifier) && (objc_msgSend(v12, "userInfo"), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[PhoneSceneDelegate _parseFitnessCoachingNotificationType:](self, "_parseFitnessCoachingNotificationType:", v18), v18, v19 == 2))
  {
    v14 = [(PhoneSceneDelegate *)self fitnessAppContext];
    v15 = [v14 isSessionViewControllerPresented];

    if (v15)
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

    v8[2](v8, v17);
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Incoming notification not allowed to post over foregrounded app: %@", &v21, 0xCu);
    }
  }
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  _HKInitializeLogging();
  v9 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v93 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fitness received notification response %{public}@", buf, 0xCu);
  }

  if (![(PhoneSceneDelegate *)self presentingActiveWorkout])
  {
    if ([AMSUserNotification shouldHandleNotificationResponse:v7])
    {
      seymourNotificationResponseCoordinator = self->_seymourNotificationResponseCoordinator;
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_100127294;
      v88[3] = &unk_10083C7F8;
      v88[4] = self;
      v89 = v8;
      [(SeymourNotificationResponseCoordinator *)seymourNotificationResponseCoordinator handleNotificationResponse:v7 completion:v88];

      goto LABEL_58;
    }

    v13 = [(PhoneSceneDelegate *)self fitnessAppContext];
    v14 = [v13 isSessionViewControllerPresented];

    if (v14)
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

    v15 = [v7 notification];
    v16 = [v15 request];
    v17 = [v16 content];
    v18 = [v17 categoryIdentifier];

    v19 = [v7 notification];
    v20 = [v19 request];
    v21 = [v20 identifier];

    if ([v18 isEqualToString:kASBulletinsInviteCategoryIdentifier] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", kASBulletinsActivityDataCategoryIdentifier))
    {
      v22 = 1;
    }

    else
    {
      v22 = [v18 isEqualToString:kASBulletinsGenericCategoryIdentifier];
    }

    v82 = [v18 isEqualToString:FCCNotificationCategoryIdentifier];
    v23 = [CHMoveModeNotificationResponseCoordinator shouldHandleNotificationCategoryIdentifier:v18];
    v80 = [v18 isEqualToString:@"com.apple.Fitness.GuestPairingNotification"];
    v78 = [v21 isEqualToString:@"com.apple.Fitness.WorkoutPlanCreationNotification"];
    v84 = v21;
    v77 = [v21 isEqualToString:@"com.apple.Fitness.PersonalizedWorkoutPlanCreationNotification"];
    v76 = [v18 isEqualToString:FCCFitnessPlusPlanNotificationCategoryIdentifier];
    v85 = v18;
    v24 = [v18 isEqualToString:FCCPauseRingsReminderNotificationCategoryIdentifier];
    if (v24)
    {
      v25 = [v7 actionIdentifier];
      v83 = [v25 isEqualToString:@"PAUSE_YOUR_RINGS"];

      v26 = [v7 actionIdentifier];
      v81 = [v26 isEqualToString:@"EDIT_PAUSE_RINGS"];

      v27 = [v7 actionIdentifier];
      v79 = [v27 isEqualToString:@"VIEW_PAUSE_RINGS"];
    }

    else
    {
      v79 = 0;
      v83 = 0;
      v81 = 0;
    }

    v28 = [v7 actionIdentifier];
    if ([v28 isEqualToString:UNNotificationDefaultActionIdentifier])
    {
      v29 = [v7 notification];
      v30 = [v29 request];
      v31 = (v30 == 0) | v23;

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

          v35 = [(PhoneSceneDelegate *)self activitySharingViewController];
          v36 = [(PhoneSceneDelegate *)self activitySharingViewController];
          v37 = [v36 popToRootViewControllerAnimated:0];

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

          [(PhoneSceneDelegate *)self handleFitnessCoachingNotificationResponse:v7];
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
            v35 = 0;
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
            v54 = [(PhoneSceneDelegate *)self seymourNavController];
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
            v63 = [v7 notification];
            v64 = [v63 request];
            v65 = [v64 content];
            v66 = [v65 userInfo];
            [(CHFitnessAppContext *)fitnessAppContext navigateToPersonalizedWorkoutPlanCreationWithUserInfo:v66];

            v35 = [(PhoneSceneDelegate *)self seymourNavController];
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

            v67 = [v7 notification];
            v68 = [v67 request];
            v69 = [v68 content];
            v70 = [v69 userInfo];

            v71 = [v70 objectForKeyedSubscript:FCCNotificationUserInfoShowingTomorrowPlan];
            LODWORD(v68) = [v71 BOOLValue];

            [(CHFitnessAppContext *)self->_fitnessAppContext navigateToWorkoutPlanDetailWithDayOffset:v68];
            v35 = [(PhoneSceneDelegate *)self seymourNavController];

            goto LABEL_56;
          }

          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Handling notification response for default action - trends", buf, 2u);
          }

          v72 = [(PhoneSceneDelegate *)self activityTileNavController];
          [v72 detachPalette];

          v73 = [(PhoneSceneDelegate *)self activityTileNavController];
          v74 = [v73 popToRootViewControllerAnimated:0];

          v75 = [(PhoneSceneDelegate *)self activityDashboardViewController];
          [v75 showAllTrendsAnimated:0];
        }

        v54 = [(PhoneSceneDelegate *)self activityTileNavController];
LABEL_44:
        v35 = v54;
LABEL_56:
        [(PhoneSceneDelegate *)self _setSelectedViewController:v35];
        v8[2](v8);

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

      v39 = [v7 actionIdentifier];
      v40 = [v7 notification];
      v41 = [v40 request];
      v42 = [v41 content];
      v43 = [v42 userInfo];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = [v7 userText];
        v90 = kASNotificationReplyKey;
        v91 = v44;
        v45 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v46 = [v43 hk_dictionaryByAddingEntriesFromDictionary:v45];

        v43 = v46;
      }

      v34 = v85;
      v47 = [[ASUserNotificationResponse alloc] initWithActionIdentifier:v39 userInfo:v43];
      activitySharingClient = self->_activitySharingClient;
      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_100127338;
      v86[3] = &unk_10083CA98;
      v87 = v8;
      [(ASActivitySharingClient *)activitySharingClient handleNotificationResponse:v47 completion:v86];

      goto LABEL_57;
    }

    if (v23)
    {
      v49 = [(PhoneSceneDelegate *)self activityTileNavController];
      v50 = [(PhoneSceneDelegate *)self healthStore];
      v51 = [(PhoneSceneDelegate *)self fitnessUIFormattingManager];
      [CHMoveModeNotificationResponseCoordinator handleNotificationResponse:v7 presentingNavigationController:v49 healthStore:v50 formattingManager:v51];
    }

    if (!v24)
    {
LABEL_51:
      v8[2](v8);
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
    v56 = [(PhoneSceneDelegate *)self activityTileNavController];
    [v56 dismissViewControllerAnimated:0 completion:0];

    v57 = [(PhoneSceneDelegate *)self activityTileNavController];
    v58 = [v57 popToRootViewControllerAnimated:0];

    v59 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v60 = [v59 showTodayAndShareImmediately:0 animated:0 forGoalCompleteNotification:0 goalRecommendation:0 withPauseRingsEditing:v55];

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
  v8[2](v8);
LABEL_58:
}

- (void)handleFitnessCoachingNotificationResponse:(id)a3
{
  v4 = [a3 notification];
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = [(PhoneSceneDelegate *)self _parseFitnessCoachingNotificationType:v7];
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

          v11 = [(PhoneSceneDelegate *)self _parseGoalRecommendation:v7];
          v12 = [(PhoneSceneDelegate *)self activityTileNavController];
          [v12 dismissViewControllerAnimated:0 completion:0];

          v13 = [(PhoneSceneDelegate *)self activityTileNavController];
          v14 = [v13 popToRootViewControllerAnimated:0];

          v15 = [(PhoneSceneDelegate *)self activityDashboardViewController];
          v16 = [v15 showTodayAndShareImmediately:0 animated:0 forGoalCompleteNotification:0 goalRecommendation:v11];

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

      v37 = [(PhoneSceneDelegate *)self rootViewController];
      [v37 hide];

      v19 = ACHDecodeAchievementFromUserInfoDictionary();
      v38 = [(PhoneSceneDelegate *)self activityTileNavController];
      [v38 dismissViewControllerAnimated:0 completion:0];

      v39 = [(PhoneSceneDelegate *)self activityTileNavController];
      v40 = [v39 popToRootViewControllerAnimated:0];

      v23 = [(PhoneSceneDelegate *)self activityDashboardViewController];
      v24 = v23;
      v25 = v19;
      v26 = 0;
LABEL_21:
      v41 = [v23 navigateToTrophyCaseAnimated:0 initialAchievement:v25 shouldShowCelebration:v26 forModalPresentation:1];

      goto LABEL_26;
    }

    _HKInitializeLogging();
    v28 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Presenting goal completion celebration", v48, 2u);
    }

    v29 = [(PhoneSceneDelegate *)self rootViewController];
    [v29 hide];

    v30 = [(PhoneSceneDelegate *)self activityTileNavController];
    [v30 dismissViewControllerAnimated:0 completion:0];

    v31 = [(PhoneSceneDelegate *)self activityTileNavController];
    v32 = [v31 popToRootViewControllerAnimated:0];

    v33 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v34 = v33;
    v35 = 1;
LABEL_25:
    v46 = [v33 showTodayAndShareImmediately:0 animated:0 forGoalCompleteNotification:v35 goalRecommendation:0];

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

    v43 = [(PhoneSceneDelegate *)self activityTileNavController];
    [v43 dismissViewControllerAnimated:0 completion:0];

    v44 = [(PhoneSceneDelegate *)self activityTileNavController];
    v45 = [v44 popToRootViewControllerAnimated:0];

    v33 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v34 = v33;
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

    v18 = [(PhoneSceneDelegate *)self rootViewController];
    [v18 hide];

    v19 = ACHDecodeAchievementFromUserInfoDictionary();
    v20 = [(PhoneSceneDelegate *)self activityTileNavController];
    [v20 dismissViewControllerAnimated:0 completion:0];

    v21 = [(PhoneSceneDelegate *)self activityTileNavController];
    v22 = [v21 popToRootViewControllerAnimated:0];

    v23 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v24 = v23;
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

- (int64_t)_parseFitnessCoachingNotificationType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 objectForKeyedSubscript:FCCNotificationTypeUserInfoKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CE6C();
    }

    v4 = 0;
  }

  return v4;
}

- (id)_parseGoalRecommendation:(id)a3
{
  if (a3)
  {
    v3 = [a3 objectForKeyedSubscript:FCCNotificationTypeUserInfoGoalRecommendationKey];
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

- (void)_setSelectedViewController:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 50000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127B3C;
  v7[3] = &unk_10083A970;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  if ([(PhoneSceneDelegate *)self presentingActiveWorkout:a3])
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
    v6 = [(PhoneSceneDelegate *)self activityTileNavController];
    [(PhoneSceneDelegate *)self _resetToViewController:v6];

    v7 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    [v7 presentAppSettingsShowingPane:1];
  }
}

- (void)_ppt_showSharingTab
{
  v3 = [(PhoneSceneDelegate *)self activitySharingViewController];
  [(PhoneSceneDelegate *)self _resetToViewController:v3];
}

- (void)presentModelOnSummaryTabWithViewController:(id)a3
{
  v4 = a3;
  v5 = [(PhoneSceneDelegate *)self activityTileNavController];
  v6 = [v5 presentedViewController];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Summary tab is already presenting modal view %@, can't present discovery sheet", &v9, 0xCu);
    }
  }

  else
  {
    v8 = [(PhoneSceneDelegate *)self activityTileNavController];
    [v8 presentViewController:v4 animated:1 completion:0];
  }
}

- (void)presentBrowsingConsentAlertWithCompletion:(id)a3
{
  v4 = a3;
  [(PhoneSceneDelegate *)self setBrowsingConsentAlertCompletion:v4];
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

  v16 = [(PhoneSceneDelegate *)self browsingConsentAlertController];
  [v16 addAction:v12];

  v17 = [(PhoneSceneDelegate *)self browsingConsentAlertController];
  [v17 addAction:v15];

  v18 = [(PhoneSceneDelegate *)self tabBarController];
  v19 = [(PhoneSceneDelegate *)self browsingConsentAlertController];
  [v18 presentViewController:v19 animated:1 completion:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)cleanupGuestAuthentication
{
  v3 = [(PhoneSceneDelegate *)self browsingConsentAlertCompletion];

  if (v3)
  {
    v4 = [(PhoneSceneDelegate *)self browsingConsentAlertCompletion];
    v4[2](v4, 0);

    [(PhoneSceneDelegate *)self setBrowsingConsentAlertCompletion:0];
    v5 = [(PhoneSceneDelegate *)self tabBarController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }

  v6 = [(PhoneSceneDelegate *)self passwordEnteredHandler];

  if (v6)
  {
    v8 = [(PhoneSceneDelegate *)self passwordController];
    v7 = [v8 passwordEntryCancelledHandler];
    v7[2]();
  }
}

- (void)promptForPasscodeWithLength:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(PhoneSceneDelegate *)self setPasswordEnteredHandler:v6];
  objc_initWeak(&location, self);
  v7 = [SMUPasswordController alloc];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TV_CODE_TITLE" value:&stru_1008680E8 table:@"Localizable-seymour"];
  v10 = [v7 initWithTitle:v9 passwordLength:a3 supportedOrientations:2];
  [(PhoneSceneDelegate *)self setPasswordController:v10];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10012866C;
  v18[3] = &unk_10083CF10;
  v19[1] = a3;
  objc_copyWeak(v19, &location);
  v11 = [(PhoneSceneDelegate *)self passwordController];
  [v11 setPasswordEnteredHandler:v18];

  objc_copyWeak(&v17, &location);
  v12 = [(PhoneSceneDelegate *)self passwordController:_NSConcreteStackBlock];
  [v12 setPasswordEntryCancelledHandler:&v16];

  v13 = [(PhoneSceneDelegate *)self tabBarController];
  v14 = [(PhoneSceneDelegate *)self passwordController];
  v15 = [v14 viewController];
  [v13 presentViewController:v15 animated:1 completion:0];

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

  v4 = [(PhoneSceneDelegate *)self rootViewController];
  [v4 unhide];
}

- (void)trophyCaseDidBeginCelebration:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[TrophyCaseViewControllerDelegate] unhiding rootViewController because celebration video did begin", v6, 2u);
  }

  v5 = [(PhoneSceneDelegate *)self rootViewController];
  [v5 unhide];
}

- (void)onboardingCoordinatorPhaseDidChangeTo:(int64_t)a3
{
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    presentingOnboarding = self->_presentingOnboarding;
    *buf = 134218496;
    v14 = a3;
    v15 = 1024;
    v16 = v7 != 0;
    v17 = 1024;
    v18 = presentingOnboarding;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Setup] onboarding coordinator phase did change: %ld, activity app is set up: %d, is presenting onboarding: %d", buf, 0x18u);
  }

  if (a3 == 5)
  {
    v9 = [(PhoneSceneDelegate *)self activityDashboardViewController];
    v10 = [v9 viewIfLoaded];
    v11 = [v10 window];

    if (!v11)
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

- (void)updateWorkoutState:(int64_t)a3 shouldShowTimeout:(BOOL)a4
{
  v4 = a4;
  _HKInitializeLogging();
  v7 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [WODataLinkWorkoutStateHelper descriptionFor:a3];
    v10 = v9;
    v11 = @"NO";
    if (v4)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v35 = v9;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: %@, shouldShowTimeout: %@", buf, 0x16u);
  }

  if (a3)
  {
    if (v4)
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
      v32 = v4;
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
        v19 = [WODataLinkWorkoutStateHelper descriptionFor:a3];
        v20 = [(WOMirrorViewController *)self->_mirrorViewController willPresentSummaryOnEndWorkout];
        v21 = @"YES";
        *buf = 138412802;
        v35 = v19;
        v36 = 2112;
        if (!v20)
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
          v26 = [(WOMirrorViewController *)v24 willPresentSummaryOnEndWorkout];
          v27 = @"NO";
          if (v26)
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

- (void)dismissMirrorViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  mirrorViewController = self->_mirrorViewController;
  if (mirrorViewController)
  {
    v6 = [(WOMirrorViewController *)mirrorViewController presentedViewController];

    if (v6)
    {
      _HKInitializeLogging();
      v7 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_mirrorViewController;
        v9 = v7;
        v10 = [(WOMirrorViewController *)v8 presentedViewController];
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[dataLink] dismiss: Bringing down mirrorViewController.presentedViewController dismiss: %@", buf, 0xCu);
      }

      v11 = [(WOMirrorViewController *)self->_mirrorViewController presentedViewController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100129834;
      v12[3] = &unk_10083C7F8;
      v12[4] = self;
      v13 = v4;
      [v11 dismissViewControllerAnimated:1 completion:v12];
    }

    else
    {
      [(PhoneSceneDelegate *)self _dismissMirrorViewControllerAndClearReferenceWithCompletion:v4];
    }
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_dismissMirrorViewControllerAndClearReferenceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
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
    (*(v4 + 2))(v4);
  }
}

- (void)_handleManuallyLoggedWorkoutNavigationNotification
{
  v3 = [(PhoneSceneDelegate *)self activityTileNavController];
  [(PhoneSceneDelegate *)self _resetToViewController:v3 animated:1];

  v4 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129C00;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (id)provideSummaryViewControllerForDataSource:(id)a3
{
  v4 = a3;
  v5 = [v4 hkWorkout];
  v6 = [v5 fiui_finalWorkoutUUID];
  v7 = [v6 isEqual:self->_cachedWorkoutDetailViewUUID];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentWorkoutDetailViewController);
  }

  else
  {
    v9 = [[CHWorkoutDataProvider alloc] initWithHealthStore:self->_healthStore];
    v10 = objc_alloc_init(AAUIAchievementResourceProvider);
    v11 = [(ActivityTileViewController *)self->_activityTileViewController awardsDataProviderWrapper];
    v12 = [CHWorkoutDetailViewController alloc];
    v13 = [v4 hkWorkout];
    LOWORD(v18) = 257;
    v14 = [(CHWorkoutDetailViewController *)v12 initWithWorkout:v13 workoutActivity:0 healthStore:self->_healthStore model:self->_model fitnessAppContext:self->_fitnessAppContext workoutFormattingManager:self->_workoutFormattingManager workoutDataProvider:v9 badgeImageFactory:self->_badgeImageFactory friendListManager:self->_friendListManager achievementLocalizationProvider:self->_achievementLocalizationProvider pauseRingsCoordinator:self->_pauseRingsCoordinator achievementResourceProvider:v10 formattingManager:self->_fitnessUIFormattingManager awardsDataProvider:v11 shouldExposeDeepLinkToTrainingLoadFromEffort:v18 isWorkoutSummaryFetchRequired:v4 supplementaryDataSource:?];

    [(PhoneSceneDelegate *)self setCurrentWorkoutDetailViewController:v14];
    v15 = [v4 hkWorkout];
    v16 = [v15 fiui_finalWorkoutUUID];
    [(PhoneSceneDelegate *)self setCachedWorkoutDetailViewUUID:v16];

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