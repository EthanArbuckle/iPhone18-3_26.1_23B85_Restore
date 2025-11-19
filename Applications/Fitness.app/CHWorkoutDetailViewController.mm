@interface CHWorkoutDetailViewController
- (CHWorkoutDetailViewController)initWithWorkout:(id)a3 workoutActivity:(id)a4 healthStore:(id)a5 model:(id)a6 fitnessAppContext:(id)a7 workoutFormattingManager:(id)a8 workoutDataProvider:(id)a9 badgeImageFactory:(id)a10 friendListManager:(id)a11 achievementLocalizationProvider:(id)a12 pauseRingsCoordinator:(id)a13 achievementResourceProvider:(id)a14 formattingManager:(id)a15 awardsDataProvider:(id)a16 shouldExposeDeepLinkToTrainingLoadFromEffort:(BOOL)a17 isWorkoutSummaryFetchRequired:(BOOL)a18 supplementaryDataSource:(id)a19;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (void)_inferenceFeedbackButtonTapped:(id)a3;
- (void)_loadInferenceRecordsIfNecessary;
- (void)_presentActivityViewControllerForItems:(id)a3;
- (void)_presentConfigurationData:(id)a3;
- (void)_presentShareSheetWithTitle:(id)a3 image:(id)a4 workoutData:(id)a5;
- (void)_shareSeymourWorkout;
- (void)_shareWorkout;
- (void)_workoutWasDeleted:(id)a3;
- (void)completedFetchWithLocationReadings:(id)a3;
- (void)configureInitialBarButtonItem;
- (void)dealloc;
- (void)loadView;
- (void)navigateToSection:(int64_t)a3;
- (void)performCustomDismissHandler;
- (void)presentAchievement:(id)a3 badgeRect:(CGRect)a4 cell:(id)a5;
- (void)presentViewController:(id)a3 completion:(id)a4;
- (void)pushViewController:(id)a3;
- (void)pushWorkoutActivity:(id)a3;
- (void)shareTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CHWorkoutDetailViewController

- (CHWorkoutDetailViewController)initWithWorkout:(id)a3 workoutActivity:(id)a4 healthStore:(id)a5 model:(id)a6 fitnessAppContext:(id)a7 workoutFormattingManager:(id)a8 workoutDataProvider:(id)a9 badgeImageFactory:(id)a10 friendListManager:(id)a11 achievementLocalizationProvider:(id)a12 pauseRingsCoordinator:(id)a13 achievementResourceProvider:(id)a14 formattingManager:(id)a15 awardsDataProvider:(id)a16 shouldExposeDeepLinkToTrainingLoadFromEffort:(BOOL)a17 isWorkoutSummaryFetchRequired:(BOOL)a18 supplementaryDataSource:(id)a19
{
  v55 = a3;
  v54 = a4;
  v53 = a5;
  v52 = a6;
  v51 = a7;
  v50 = a8;
  v49 = a9;
  v48 = a10;
  v47 = a11;
  v46 = a12;
  v45 = a13;
  v44 = a14;
  v43 = a15;
  v42 = a16;
  v24 = a19;
  v56.receiver = self;
  v56.super_class = CHWorkoutDetailViewController;
  v25 = [(CHWorkoutDetailViewController *)&v56 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_healthStore, a5);
    objc_storeStrong(&v26->_workout, a3);
    objc_storeStrong(&v26->_workoutActivity, a4);
    objc_storeStrong(&v26->_model, a6);
    objc_storeStrong(&v26->_fitnessAppContext, a7);
    objc_storeStrong(&v26->_workoutFormattingManager, a8);
    objc_storeStrong(&v26->_workoutDataProvider, a9);
    objc_storeStrong(&v26->_badgeImageFactory, a10);
    objc_storeStrong(&v26->_friendListManager, a11);
    objc_storeStrong(&v26->_achievementLocalizationProvider, a12);
    objc_storeStrong(&v26->_pauseRingsCoordinator, a13);
    objc_storeStrong(&v26->_achievementResourceProvider, a14);
    objc_storeStrong(&v26->_formattingManager, a15);
    objc_storeStrong(&v26->_awardsDataProvider, a16);
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v26 selector:"_workoutWasDeleted:" name:@"FitnessWorkoutWasDeletedNotification" object:0];

    v28 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = v26->_tableView;
    v26->_tableView = v28;

    v30 = +[UIColor systemBackgroundColor];
    [(UITableView *)v26->_tableView setBackgroundColor:v30];

    v31 = +[UIColor clearColor];
    [(UITableView *)v26->_tableView setSeparatorColor:v31];

    [(UITableView *)v26->_tableView setAllowsSelection:0];
    [(UITableView *)v26->_tableView _setHeaderAndFooterViewsFloat:0];
    v26->_shouldExposeDeepLinkToTrainingLoadFromEffort = a17;
    LOWORD(v39) = __PAIR16__(a18, a17);
    v32 = [[CHWorkoutDetailDataSource alloc] initWithTableView:v26->_tableView workout:v26->_workout workoutActivity:v26->_workoutActivity healthStore:v26->_healthStore model:v26->_model fitnessAppContext:v26->_fitnessAppContext formattingManager:v26->_workoutFormattingManager badgeImageFactory:v26->_badgeImageFactory achievementLocalizationProvider:v26->_achievementLocalizationProvider awardsDataProvider:v26->_awardsDataProvider fiuiFormattingManager:v26->_formattingManager showCurrentWorkloadButton:v39 isWorkoutSummaryFetchRequired:v24 supplementaryDataSource:?];
    dataSource = v26->_dataSource;
    v26->_dataSource = v32;

    [(CHWorkoutDetailDataSource *)v26->_dataSource setDelegate:v26];
    [(CHWorkoutDetailDataSource *)v26->_dataSource setLocationFetcherObserver:v26];
    v34 = objc_alloc_init(NSMutableArray);
    rightBarButtonItems = v26->_rightBarButtonItems;
    v26->_rightBarButtonItems = v34;

    if (+[_HKBehavior isAppleInternalInstall])
    {
      v36 = objc_alloc_init(CHInferenceRecordController);
      inferenceRecordController = v26->_inferenceRecordController;
      v26->_inferenceRecordController = v36;
    }

    objc_storeStrong(&v26->_supplementaryDataSource, a19);
    [(CHWorkoutDetailViewController *)v26 configureInitialBarButtonItem];
  }

  return v26;
}

- (void)configureInitialBarButtonItem
{
  v3 = [(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource customDismissHandler];

  if (v3)
  {
    v6 = [_TtC10FitnessApp18WorkoutBuddyStatus makeSummaryUIViewWithIsWorkoutConfiguredWithWorkoutBuddy:[(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource isConfiguredWithWorkoutBuddy] isWorkoutBuddyMuted:[(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource isMuted] isWorkoutBuddyHeadphonesOff:[(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource areHeadphonesOff]];
    v4 = [[UIBarButtonItem alloc] initWithCustomView:v6];
    [v4 setHidesSharedBackground:1];
    v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"performCustomDismissHandler"];
    [(NSMutableArray *)self->_rightBarButtonItems addObject:v5];
    [(NSMutableArray *)self->_rightBarButtonItems addObject:v4];
  }

  else
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"shareTapped:"];
    [(NSMutableArray *)self->_rightBarButtonItems addObject:?];
  }
}

- (void)performCustomDismissHandler
{
  v3 = [(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource customDismissHandler];

  if (v3)
  {
    v4 = [(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource customDismissHandler];
    v4[2]();
  }
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = CHWorkoutDetailViewController;
  [(CHWorkoutDetailViewController *)&v6 loadView];
  v3 = [(CHWorkoutDetailViewController *)self view];
  [v3 bounds];
  [(UITableView *)self->_tableView setFrame:?];

  v4 = [(CHWorkoutDetailViewController *)self view];
  [v4 addSubview:self->_tableView];

  v5 = +[CHWorkoutDetailAnalyticsTracker sharedInstance];
  [v5 startTrackingWorkout:self->_workout workoutActivity:self->_workoutActivity];
}

- (void)dealloc
{
  v3 = +[CHWorkoutDetailAnalyticsTracker sharedInstance];
  [v3 stopTrackingWorkout:self->_workout workoutActivity:self->_workoutActivity];

  v4.receiver = self;
  v4.super_class = CHWorkoutDetailViewController;
  [(CHWorkoutDetailViewController *)&v4 dealloc];
}

- (void)navigateToSection:(int64_t)a3
{
  v3 = [(CHWorkoutDetailDataSource *)self->_dataSource navigationActionForHeaderInSection:a3];
  if (v3)
  {
    v4 = v3;
    v3[2](v3, 1);
    v3 = v4;
  }
}

- (void)pushViewController:(id)a3
{
  v4 = a3;
  v5 = [(CHWorkoutDetailViewController *)self navigationController];
  [v5 pushViewController:v4 animated:1];
}

- (void)presentViewController:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100104FC0;
  v7[3] = &unk_10083C528;
  v8 = a4;
  v6 = v8;
  [(CHWorkoutDetailViewController *)self presentViewController:a3 animated:1 completion:v7];
}

- (void)presentAchievement:(id)a3 badgeRect:(CGRect)a4 cell:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = a3;
  v13 = [v12 unearned] ^ 1;
  if (AAUIShouldUseNewTrophyCase())
  {
    BYTE3(v22) = 0;
    BYTE2(v22) = v13;
    LOWORD(v22) = 0;
    v14 = [TrophyCaseAwardDetailViewController initWithAchievement:"initWithAchievement:healthStore:friendListManager:achievementDataProvider:badgeImageFactory:resourceProvider:formattingManager:localizationProvider:pauseRingsCoordinator:fitnessAppContext:workoutFormattingManager:workoutDataProvider:forModalPresentation:shouldShowCelebration:shouldShowEarned:shouldShowAssociatedWorkout:" healthStore:v12 friendListManager:self->_healthStore achievementDataProvider:self->_friendListManager badgeImageFactory:self->_awardsDataProvider resourceProvider:self->_badgeImageFactory formattingManager:self->_achievementResourceProvider localizationProvider:self->_formattingManager pauseRingsCoordinator:self->_achievementLocalizationProvider fitnessAppContext:self->_pauseRingsCoordinator workoutFormattingManager:self->_fitnessAppContext workoutDataProvider:self->_workoutFormattingManager forModalPresentation:self->_workoutDataProvider shouldShowCelebration:v22 shouldShowEarned:? shouldShowAssociatedWorkout:?];
  }

  else
  {
    v14 = [[CHAchievementDetailViewController alloc] initWithAchievement:v12 locProvider:self->_achievementLocalizationProvider formatsForFriend:0 forDayView:1 forModalPresentation:0 shouldShowCelebration:0];
  }

  v15 = v14;

  v16 = [AAUIAchievementDetailTransitionAnimator alloc];
  v17 = [v11 contentView];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10010527C;
  v25[3] = &unk_10083A8B0;
  v26 = v11;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100105288;
  v23[3] = &unk_10083A8B0;
  v24 = v26;
  v18 = v26;
  v19 = [v16 initWithPresentingViewController:self detailViewController:v15 shouldPlayFlipInAnimation:v13 initialBadgeFrame:v17 conversionView:v25 didStartAnimationBlock:v23 didFinishAnimationBlock:{x, y, width, height}];
  achievementTransitionAnimator = self->_achievementTransitionAnimator;
  self->_achievementTransitionAnimator = v19;

  v21 = [(CHWorkoutDetailViewController *)self navigationController];
  [v21 pushViewController:v15 animated:1];
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (a4 != 2)
  {
    if (a4 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = 0;
      goto LABEL_11;
    }

    objc_storeStrong(&self->_transitionAnimatorFromViewController, a5);
    goto LABEL_9;
  }

  if (self->_transitionAnimatorFromViewController == v12)
  {
LABEL_9:
    achievementTransitionAnimator = self->_achievementTransitionAnimator;
    goto LABEL_10;
  }

  achievementTransitionAnimator = 0;
LABEL_10:
  v14 = achievementTransitionAnimator;
LABEL_11:

  return v14;
}

- (void)pushWorkoutActivity:(id)a3
{
  v4 = a3;
  v5 = [CHWorkoutDetailViewController alloc];
  LOBYTE(v7) = self->_shouldExposeDeepLinkToTrainingLoadFromEffort;
  v8 = [(CHWorkoutDetailViewController *)v5 initWithWorkout:self->_workout workoutActivity:v4 healthStore:self->_healthStore model:self->_model fitnessAppContext:self->_fitnessAppContext workoutFormattingManager:self->_workoutFormattingManager workoutDataProvider:self->_workoutDataProvider badgeImageFactory:self->_badgeImageFactory friendListManager:self->_friendListManager achievementLocalizationProvider:self->_achievementLocalizationProvider pauseRingsCoordinator:self->_pauseRingsCoordinator achievementResourceProvider:self->_achievementResourceProvider formattingManager:self->_formattingManager awardsDataProvider:self->_awardsDataProvider shouldExposeDeepLinkToTrainingLoadFromEffort:v7 supplementaryDataSource:0];

  v6 = [(CHWorkoutDetailViewController *)self navigationController];
  [v6 pushViewController:v8 animated:1];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CHWorkoutDetailViewController;
  [(CHWorkoutDetailViewController *)&v8 viewDidLoad];
  v3 = [(CHWorkoutFormattingManager *)self->_workoutFormattingManager formattedDateForWorkout:self->_workout context:@"WorkoutDetailDisplayContext"];
  v4 = [v3 string];
  [(CHWorkoutDetailViewController *)self setTitle:v4];

  v5 = [(CHWorkoutDetailViewController *)self navigationItem];
  [v5 setLargeTitleDisplayMode:2];

  rightBarButtonItems = self->_rightBarButtonItems;
  v7 = [(CHWorkoutDetailViewController *)self navigationItem];
  [v7 setRightBarButtonItems:rightBarButtonItems];

  [(CHWorkoutDetailViewController *)self _loadInferenceRecordsIfNecessary];
  [(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource addWithObserver:self];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CHWorkoutDetailViewController;
  [(CHWorkoutDetailViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(CHWorkoutDetailViewController *)self view];
  [v3 bounds];
  [(UITableView *)self->_tableView setFrame:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CHWorkoutDetailViewController;
  [(CHWorkoutDetailViewController *)&v9 viewWillAppear:a3];
  v4 = [(CHWorkoutDetailViewController *)self navigationController];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___CHActivityHistoryPaletteNavigationController];

  if (v5)
  {
    v6 = [(CHWorkoutDetailViewController *)self navigationController];
    [v6 detachPalette];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"refreshWorkoutLocations" name:UIApplicationDidBecomeActiveNotification object:0];

  v8 = [(CHWorkoutDetailViewController *)self navigationController];
  [v8 setDelegate:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CHWorkoutDetailViewController;
  [(CHWorkoutDetailViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationDidBecomeActiveNotification object:0];
}

- (void)_loadInferenceRecordsIfNecessary
{
  if (+[_HKBehavior isAppleInternalInstall])
  {
    inferenceRecordController = self->_inferenceRecordController;
    workout = self->_workout;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100105860;
    v5[3] = &unk_10083C310;
    v5[4] = self;
    [(CHInferenceRecordController *)inferenceRecordController retrieveRecordsFor:workout completionHandler:v5];
  }
}

- (void)shareTapped:(id)a3
{
  v4 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
  v5 = [v4 isSeymourWorkout:self->_workout];

  if (v5)
  {

    [(CHWorkoutDetailViewController *)self _shareSeymourWorkout];
  }

  else
  {

    [(CHWorkoutDetailViewController *)self _shareWorkout];
  }
}

- (void)_shareWorkout
{
  workoutFormattingManager = self->_workoutFormattingManager;
  workout = self->_workout;
  v5 = [(CHWorkoutDetailDataSource *)self->_dataSource routeImageForSharing];
  v6 = [(CHWorkoutFormattingManager *)workoutFormattingManager shareImageForWorkout:workout routeImage:v5];

  if (v6)
  {
    [(CHWorkoutDetailViewController *)self setSharingImage:v6];
    v8[0] = v6;
    v8[1] = self;
    v7 = [NSArray arrayWithObjects:v8 count:2];
    [(CHWorkoutDetailViewController *)self _presentActivityViewControllerForItems:v7];
  }
}

- (void)_shareSeymourWorkout
{
  fitnessAppContext = self->_fitnessAppContext;
  workout = self->_workout;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100105C24;
  v4[3] = &unk_10083C310;
  v4[4] = self;
  [(CHFitnessAppContext *)fitnessAppContext shareSheetActivityItemsWithWorkout:workout completion:v4];
}

- (void)_presentActivityViewControllerForItems:(id)a3
{
  v4 = a3;
  v11 = [[UIActivityViewController alloc] initWithActivityItems:v4 applicationActivities:0];

  v5 = sub_1000B882C();
  [v11 setExcludedActivityTypes:v5];

  v6 = [(CHWorkoutDetailViewController *)self navigationController];

  if (v6)
  {
    [(CHWorkoutDetailViewController *)self presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v7 = +[UIApplication sharedApplication];
    v8 = [v7 windows];
    v9 = [v8 firstObject];
    v10 = [v9 rootViewController];

    [v10 presentViewController:v11 animated:1 completion:0];
  }
}

- (void)_presentConfigurationData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100105ECC;
  v6[3] = &unk_10083C550;
  v5 = objc_opt_new();
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [v5 presentRemoteViewControllerOnHostController:self workoutPlanData:v4 dismissHandler:v6 completionHandler:&stru_10083C570];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = [(CHWorkoutDetailViewController *)self sharingImage];

  if (v4)
  {
    v5 = [(HKWorkout *)self->_workout metadata];
    v6 = [v5 objectForKeyedSubscript:HKMetadataKeyWorkoutBrandName];

    if (![v6 length])
    {
      [(HKWorkout *)self->_workout workoutActivityType];
      [(HKWorkout *)self->_workout fi_swimmingLocationType];
      v7 = [(HKWorkout *)self->_workout metadata];
      v8 = [v7 objectForKeyedSubscript:HKMetadataKeyIndoorWorkout];
      [v8 BOOLValue];

      v9 = FILocalizedNameForActivityType();

      v6 = v9;
    }

    v10 = objc_alloc_init(LPLinkMetadata);
    [v10 setTitle:v6];
    v11 = [(CHWorkoutDetailDataSource *)self->_dataSource routeImageForSharing];

    if (v11)
    {
      v12 = objc_alloc_init(LPAppStoreStoryMetadata);
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"WORKOUT_SHARING_SUBTITLE" value:&stru_1008680E8 table:@"Localizable"];
      [v12 setSubtitle:v14];

      [v10 setSpecialization:v12];
    }

    else
    {
      v15 = [LPImage alloc];
      v16 = [(CHWorkoutDetailViewController *)self sharingImage];
      v12 = [v15 initWithPlatformImage:v16];

      v17 = objc_alloc_init(LPFileMetadata);
      [v17 setName:v6];
      [v17 setThumbnail:v12];
      [v10 setSpecialization:v17];
    }

    v18 = [LPImage alloc];
    v19 = [(CHWorkoutDetailViewController *)self sharingImage];
    v20 = UIImagePNGRepresentation(v19);
    v21 = [v18 initWithData:v20 MIMEType:@"image/png"];
    [v10 setImage:v21];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_workoutWasDeleted:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CHDeletedWorkoutKey"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v28;
    *&v8 = 138543362;
    v24 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v27 + 1) + 8 * i) UUID];
        v13 = [(HKWorkout *)self->_workout UUID];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          _HKInitializeLogging();
          v15 = HKLogActivity;
          if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
          {
            workout = self->_workout;
            v17 = v15;
            v18 = [(HKWorkout *)workout UUID];
            *buf = v24;
            v32 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Workout %{public}@ was deleted while in workout detail view.", buf, 0xCu);
          }

          v19 = [(CHWorkoutDetailViewController *)self navigationController];
          v20 = [v19 viewControllers];

          v21 = [v20 indexOfObjectPassingTest:&stru_10083C5B0];
          if (v21 >= 1)
          {
            v22 = [v20 objectAtIndex:v21 - 1];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001064B8;
            block[3] = &unk_10083A970;
            block[4] = self;
            v26 = v22;
            v23 = v22;
            dispatch_async(&_dispatch_main_q, block);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v9);
  }
}

- (void)completedFetchWithLocationReadings:(id)a3
{
  v4 = a3;
  if (+[_HKBehavior isAppleInternalInstall]&& _os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    v6 = [(HKWorkout *)self->_workout serializedConfigurationDataIncludingRoute:0];
    if (v6)
    {
      objc_initWeak(&location, self);
      v7 = [UIImage _systemImageNamed:@"doc.text.magnifyingglass"];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100106DCC;
      v57[3] = &unk_10083C5D8;
      objc_copyWeak(&v59, &location);
      v58 = v6;
      v8 = [UIAction actionWithTitle:@"Preview Configuration" image:v7 identifier:@"preview.configuration" handler:v57];
      [v5 addObject:v8];

      if (_os_feature_enabled_impl())
      {
        if ([(HKWorkout *)self->_workout serializedConfigurationContainsRoute])
        {
          v9 = [(HKWorkout *)self->_workout serializedConfigurationDataIncludingRoute:1];
          v10 = [(HKWorkout *)self->_workout serializedConfigurationRouteSnapshotData];
          v11 = v10;
          if (v9 && v10)
          {
            v12 = [[UIImage alloc] initWithData:v10];
            if (v12)
            {
              v34 = v12;
              v35 = [UIImage _systemImageNamed:@"route"];
              v39 = [UIImage _systemImageNamed:@"doc.text.magnifyingglass"];
              v54[0] = _NSConcreteStackBlock;
              v54[1] = 3221225472;
              v54[2] = sub_100106E1C;
              v54[3] = &unk_10083C5D8;
              objc_copyWeak(&v56, &location);
              v13 = v9;
              v55 = v13;
              v14 = [UIAction actionWithTitle:@"Preview Configuration with Embedded Route" image:v39 identifier:@"embedded.route.preview.configuration" handler:v54];
              v62[0] = v14;
              v37 = [UIImage _systemImageNamed:@"square.and.arrow.up"];
              v33 = v14;
              v50[0] = _NSConcreteStackBlock;
              v50[1] = 3221225472;
              v50[2] = sub_100106E6C;
              v50[3] = &unk_10083C600;
              objc_copyWeak(&v53, &location);
              v51 = v34;
              v52 = v13;
              v15 = [UIAction actionWithTitle:@"Share Configuration with Embedded Route" image:v37 identifier:@"embedded.route.share.configuration" handler:v50];
              v62[1] = v15;
              v16 = [NSArray arrayWithObjects:v62 count:2];
              v17 = [UIMenu menuWithTitle:@"Embedded Route" image:v35 identifier:@"menu.embedded.route" options:0 children:v16];

              [v5 addObject:v17];
              objc_destroyWeak(&v53);

              objc_destroyWeak(&v56);
              v12 = v34;
            }
          }
        }

        v18 = [(CHWorkoutDetailDataSource *)self->_dataSource routeImageForSharing];
        v19 = v18;
        if (v18)
        {
          workout = self->_workout;
          v21 = UIImagePNGRepresentation(v18);
          v40 = [(HKWorkout *)workout serializedConfigurationWithEmbedding:v4 snapshot:v21];

          if (v40)
          {
            v36 = [UIImage _systemImageNamed:@"location.circle"];
            v38 = [UIImage _systemImageNamed:@"doc.text.magnifyingglass"];
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_100106EC4;
            v47[3] = &unk_10083C5D8;
            objc_copyWeak(&v49, &location);
            v22 = v40;
            v48 = v22;
            v23 = [UIAction actionWithTitle:@"Preview Configuration with Completed Route" image:v38 identifier:@"completed.route.preview.configuration" handler:v47];
            v61[0] = v23;
            v24 = [UIImage _systemImageNamed:@"square.and.arrow.up"];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_100106F14;
            v43[3] = &unk_10083C600;
            objc_copyWeak(&v46, &location);
            v44 = v19;
            v45 = v22;
            v25 = [UIAction actionWithTitle:@"Share Configuration with Completed Route" image:v24 identifier:@"completed.route.share.configuration" handler:v43];
            v61[1] = v25;
            v26 = [NSArray arrayWithObjects:v61 count:2];
            v27 = [UIMenu menuWithTitle:@"Completed Route" image:v36 identifier:@"menu.completed.route" options:0 children:v26];

            [v5 addObject:v27];
            objc_destroyWeak(&v46);

            objc_destroyWeak(&v49);
          }
        }
      }

      objc_destroyWeak(&v59);
      objc_destroyWeak(&location);
    }

    if ([v5 count])
    {
      v28 = [UIMenu menuWithTitle:@"[Internal Only] Debug Options" children:v5];
      v29 = [UIBarButtonItem alloc];
      v30 = [UIImage systemImageNamed:@"ellipsis.circle"];
      v31 = [v29 initWithImage:v30 menu:v28];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100106F6C;
      block[3] = &unk_10083A970;
      block[4] = self;
      v42 = v31;
      v32 = v31;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)_inferenceFeedbackButtonTapped:(id)a3
{
  if ([(NSArray *)self->_cachedRecords count])
  {
    v5 = [CHInferenceFeedbackListHostingController hostingControllerWithRecords:self->_cachedRecords recordController:self->_inferenceRecordController];
    v4 = [[UINavigationController alloc] initWithRootViewController:v5];
    [(CHWorkoutDetailViewController *)self presentViewController:v4 completion:0];
  }
}

- (void)_presentShareSheetWithTitle:(id)a3 image:(id)a4 workoutData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSTemporaryDirectory();
  v12 = [NSURL fileURLWithPath:v11 isDirectory:1];

  v13 = [v12 URLByAppendingPathComponent:@"Workout.workout"];
  LODWORD(v11) = [v10 writeToURL:v13 atomically:1];

  if (v11)
  {
    v14 = [UIActivityViewController alloc];
    v22[0] = v8;
    v22[1] = v9;
    v22[2] = v13;
    v15 = [NSArray arrayWithObjects:v22 count:3];
    v16 = [v14 initWithActivityItems:v15 applicationActivities:0];

    v17 = [(CHWorkoutDetailViewController *)self navigationController];

    if (v17)
    {
      [(CHWorkoutDetailViewController *)self presentViewController:v16 animated:1 completion:0];
    }

    else
    {
      v18 = +[UIApplication sharedApplication];
      v19 = [v18 windows];
      v20 = [v19 firstObject];
      v21 = [v20 rootViewController];

      [v21 presentViewController:v16 animated:1 completion:0];
    }
  }
}

@end