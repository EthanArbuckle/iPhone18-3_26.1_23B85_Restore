@interface CHWorkoutsListViewController
- (CHWorkoutsListViewController)initWithDataProvider:(id)provider healthStore:(id)store model:(id)model fitnessAppContext:(id)context workoutFormattingManager:(id)manager workoutDataProvider:(id)dataProvider badgeImageFactory:(id)factory friendListManager:(id)self0 achievementLocalizationProvider:(id)self1 pauseRingsCoordinator:(id)self2 achievementResourceProvider:(id)self3 formattingManager:(id)self4 awardsDataProvider:(id)self5;
- (CHWorkoutsListViewControllerDelegate)delegate;
- (id)_dateStringForComponents:(id)components;
- (id)_filterMenu;
- (id)detailViewControllerForWorkout:(id)workout;
- (void)_addDataProviderUpdateHandlers;
- (void)_popViewControllerIfNeeded;
- (void)_presentDetailViewForWorkout:(id)workout;
- (void)_setupDataSource;
- (void)_setupTableView;
- (void)_updateFilterButtonTitleForWorkoutTypeKey:(id)key;
- (void)_updateFiltersList;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)workoutsListDataSource:(id)source didEncounterReloadingException:(id)exception;
- (void)workoutsListDataSource:(id)source didScrollToSectionWithDateComponents:(id)components;
- (void)workoutsListDataSource:(id)source requestsDeleteConfirmationForWorkout:(id)workout completion:(id)completion;
@end

@implementation CHWorkoutsListViewController

- (CHWorkoutsListViewController)initWithDataProvider:(id)provider healthStore:(id)store model:(id)model fitnessAppContext:(id)context workoutFormattingManager:(id)manager workoutDataProvider:(id)dataProvider badgeImageFactory:(id)factory friendListManager:(id)self0 achievementLocalizationProvider:(id)self1 pauseRingsCoordinator:(id)self2 achievementResourceProvider:(id)self3 formattingManager:(id)self4 awardsDataProvider:(id)self5
{
  providerCopy = provider;
  storeCopy = store;
  storeCopy2 = store;
  modelCopy = model;
  contextCopy = context;
  contextCopy2 = context;
  managerCopy = manager;
  v39 = contextCopy2;
  managerCopy2 = manager;
  dataProviderCopy = dataProvider;
  dataProviderCopy2 = dataProvider;
  factoryCopy = factory;
  listManagerCopy = listManager;
  localizationProviderCopy = localizationProvider;
  coordinatorCopy = coordinator;
  resourceProviderCopy = resourceProvider;
  formattingManagerCopy = formattingManager;
  awardsDataProviderCopy = awardsDataProvider;
  v43.receiver = self;
  v43.super_class = CHWorkoutsListViewController;
  v27 = [(CHWorkoutsListViewController *)&v43 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_dataProvider, provider);
    objc_storeStrong(&v28->_healthStore, storeCopy);
    objc_storeStrong(&v28->_model, model);
    objc_storeStrong(&v28->_workoutDataProvider, dataProviderCopy);
    objc_storeStrong(&v28->_workoutFormattingManager, managerCopy);
    objc_storeStrong(&v28->_fitnessAppContext, contextCopy);
    objc_storeStrong(&v28->_formattingManager, formattingManager);
    objc_storeStrong(&v28->_badgeImageFactory, factory);
    objc_storeStrong(&v28->_friendListManager, listManager);
    objc_storeStrong(&v28->_achievementLocalizationProvider, localizationProvider);
    objc_storeStrong(&v28->_pauseRingsCoordinator, coordinator);
    objc_storeStrong(&v28->_achievementResourceProvider, resourceProvider);
    objc_storeStrong(&v28->_awardsDataProvider, awardsDataProvider);
  }

  return v28;
}

- (void)_setupTableView
{
  v3 = [UITableView alloc];
  view = [(CHWorkoutsListViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:0 style:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  v7 = +[UIColor systemBackgroundColor];
  [(UITableView *)self->_tableView setBackgroundColor:v7];

  v8 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setSeparatorColor:v8];

  [(UITableView *)self->_tableView _setDrawsSeparatorAtTopOfSections:1];
  [(UITableView *)self->_tableView setSectionHeaderTopPadding:0.0];
  [(UITableView *)self->_tableView setTableHeaderViewShouldAutoHide:0];
  [(UITableView *)self->_tableView _setHeaderAndFooterViewsFloat:1];
  view2 = [(CHWorkoutsListViewController *)self view];
  [view2 addSubview:self->_tableView];
}

- (id)_filterMenu
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(NSMutableArray);
  workoutTypeIDs = self->_workoutTypeIDs;
  currentFilteredTypeIdentifier = [(CHWorkoutDataProvider *)self->_dataProvider currentFilteredTypeIdentifier];
  v6 = [(NSArray *)workoutTypeIDs indexOfObject:currentFilteredTypeIdentifier];

  workoutTypeNames = self->_workoutTypeNames;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001333D8;
  v12[3] = &unk_10083D0C8;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v14[1] = v8;
  v12[4] = self;
  objc_copyWeak(v14, &location);
  v9 = v3;
  v13 = v9;
  [(NSArray *)workoutTypeNames enumerateObjectsUsingBlock:v12];
  v10 = [UIMenu menuWithChildren:v9];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return v10;
}

- (void)_addDataProviderUpdateHandlers
{
  objc_initWeak(&location, self);
  dataProvider = self->_dataProvider;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001337C4;
  v10[3] = &unk_10083A710;
  objc_copyWeak(&v11, &location);
  [(CHWorkoutDataProvider *)dataProvider addUpdateHandler:v10];
  v4 = self->_dataProvider;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100133838;
  v8[3] = &unk_10083A710;
  objc_copyWeak(&v9, &location);
  [(CHWorkoutDataProvider *)v4 addAnimatedUpdateHandler:v8];
  v5 = self->_dataProvider;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100133898;
  v6[3] = &unk_10083A710;
  objc_copyWeak(&v7, &location);
  [(CHWorkoutDataProvider *)v5 addFilterActionFinishedHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_popViewControllerIfNeeded
{
  if (![(CHWorkoutDataProvider *)self->_dataProvider hasWorkouts])
  {
    _HKInitializeLogging();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Data provider doesn't have any workouts; popping view controller", v6, 2u);
    }

    navigationController = [(CHWorkoutsListViewController *)self navigationController];
    v5 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)_setupDataSource
{
  v3 = [[CHWorkoutsListDataSource alloc] initWithTableView:self->_tableView dataProvider:self->_dataProvider fitnessAppContext:self->_fitnessAppContext formattingManager:self->_workoutFormattingManager badgeImageFactory:self->_badgeImageFactory awardsDataProvider:self->_awardsDataProvider];
  dataSource = self->_dataSource;
  self->_dataSource = v3;

  navigationController = [(CHWorkoutsListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  _backdropViewLayerGroupName = [navigationBar _backdropViewLayerGroupName];
  [(CHWorkoutsListDataSource *)self->_dataSource setNavBarBackdropGroupName:_backdropViewLayerGroupName];

  v8 = self->_dataSource;

  [(CHWorkoutsListDataSource *)v8 setDelegate:self];
}

- (void)_updateFiltersList
{
  v3 = +[CHWorkoutTypeKey emptyKey];
  v39 = v3;
  v4 = [NSArray arrayWithObjects:&v39 count:1];
  sortedTypeIdentifiers = [(CHWorkoutDataProvider *)self->_dataProvider sortedTypeIdentifiers];
  v6 = [v4 arrayByAddingObjectsFromArray:sortedTypeIdentifiers];
  workoutTypeIDs = self->_workoutTypeIDs;
  self->_workoutTypeIDs = v6;

  v8 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = self->_workoutTypeIDs;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CHWorkoutDataProvider localizedNameForWorkoutTypeKey:*(*(&v34 + 1) + 8 * v13), v34];
        [v8 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  workoutTypeNames = self->_workoutTypeNames;
  self->_workoutTypeNames = v15;

  _filterMenu = [(CHWorkoutsListViewController *)self _filterMenu];
  navigationItem = [(CHWorkoutsListViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setMenu:_filterMenu];

  currentFilteredTypeIdentifier = [(CHWorkoutDataProvider *)self->_dataProvider currentFilteredTypeIdentifier];
  [(CHWorkoutsListViewController *)self _updateFilterButtonTitleForWorkoutTypeKey:currentFilteredTypeIdentifier];

  sortedDateComponentKeys = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
  v22 = [sortedDateComponentKeys count];

  navigationController = [(CHWorkoutsListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  v25 = navigationBar;
  if (v22)
  {
    [navigationBar setUserInteractionEnabled:1];

    v26 = +[UIApplication sharedApplication];
    windows = [v26 windows];
    firstObject = [windows firstObject];
    tintColor = [firstObject tintColor];
    navigationController2 = [(CHWorkoutsListViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setTintColor:tintColor];
  }

  else
  {
    [navigationBar setUserInteractionEnabled:0];

    v26 = +[UIColor darkGrayColor];
    windows = [(CHWorkoutsListViewController *)self navigationController];
    firstObject = [windows navigationBar];
    [firstObject setTintColor:v26];
  }

  navigationController3 = [(CHWorkoutsListViewController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController3 interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:v22 != 0];
}

- (void)_updateFilterButtonTitleForWorkoutTypeKey:(id)key
{
  v6 = [CHWorkoutDataProvider localizedShortNameForWorkoutTypeKey:key];
  navigationItem = [(CHWorkoutsListViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setTitle:v6];
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v19 loadView];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"WORKOUTS" value:&stru_1008680E8 table:@"Localizable"];
  [(CHWorkoutsListViewController *)self setTitle:v4];

  _filterMenu = [(CHWorkoutsListViewController *)self _filterMenu];
  v6 = [[UIBarButtonItem alloc] initWithTitle:0 menu:_filterMenu];
  navigationItem = [(CHWorkoutsListViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  [(CHWorkoutsListViewController *)self _updateFiltersList];
  [(CHWorkoutsListViewController *)self _setupTableView];
  _filterMenu2 = [(CHWorkoutsListViewController *)self _filterMenu];
  [(CHWorkoutsListViewController *)self _addDataProviderUpdateHandlers];
  [(CHWorkoutsListViewController *)self _setupDataSource];
  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(UIActivityIndicatorView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)v9 setHidesWhenStopped:1];
  view = [(CHWorkoutsListViewController *)self view];
  [view addSubview:v9];

  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v9;
  v12 = v9;

  view2 = [(CHWorkoutsListViewController *)self view];
  v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:9 relatedBy:0 toItem:view2 attribute:9 multiplier:1.0 constant:0.0];

  view3 = [(CHWorkoutsListViewController *)self view];
  v16 = [NSLayoutConstraint constraintWithItem:v12 attribute:10 relatedBy:0 toItem:view3 attribute:10 multiplier:1.0 constant:0.0];

  view4 = [(CHWorkoutsListViewController *)self view];
  v20[0] = v14;
  v20[1] = v16;
  v18 = [NSArray arrayWithObjects:v20 count:2];

  [view4 addConstraints:v18];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v3 viewDidLoad];
  if (![(CHWorkoutDataProvider *)self->_dataProvider dataAvailable])
  {
    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v4 viewWillAppear:appear];
  if ([(CHWorkoutDataProvider *)self->_dataProvider dataAvailable])
  {
    [(CHWorkoutsListViewController *)self _updateFiltersList];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v4 viewWillDisappear:disappear];
  [(UITableView *)self->_tableView setEditing:0 animated:1];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v4 viewWillLayoutSubviews];
  view = [(CHWorkoutsListViewController *)self view];
  [view bounds];
  [(UITableView *)self->_tableView setFrame:?];
}

- (void)_presentDetailViewForWorkout:(id)workout
{
  workoutCopy = workout;
  v5 = [(CHWorkoutsListViewController *)self detailViewControllerForWorkout:workoutCopy];
  _HKInitializeLogging();
  v6 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    startDate = [workoutCopy startDate];
    fiui_activityType = [workoutCopy fiui_activityType];
    localizedName = [fiui_activityType localizedName];
    uUID = [workoutCopy UUID];
    v13 = 138412802;
    v14 = startDate;
    v15 = 2112;
    v16 = localizedName;
    v17 = 2112;
    v18 = uUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WLVC] Selected workout: %@, %@ %@", &v13, 0x20u);
  }

  navigationController = [(CHWorkoutsListViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (id)_dateStringForComponents:(id)components
{
  v3 = qword_1008F9B78;
  componentsCopy = components;
  if (v3 != -1)
  {
    sub_10069CEE8();
  }

  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 dateFromComponents:componentsCopy];

  v7 = [qword_1008F9B70 stringFromDate:v6];

  return v7;
}

- (void)workoutsListDataSource:(id)source requestsDeleteConfirmationForWorkout:(id)workout completion:(id)completion
{
  completionCopy = completion;
  _activityMoveMode = [workout _activityMoveMode];
  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (_activityMoveMode == 2)
  {
    v10 = @"Localizable-tinker";
    v11 = [v8 localizedStringForKey:@"DELETE_WORKOUT_ALERT_TITLE_TINKER" value:&stru_1008680E8 table:@"Localizable-tinker"];

    v12 = +[NSBundle mainBundle];
    v13 = v12;
    v14 = @"DELETE_WORKOUT_ALERT_DESCRIPTION_TINKER";
  }

  else
  {
    v10 = @"Localizable";
    v11 = [v8 localizedStringForKey:@"DELETE_WORKOUT_ALERT_TITLE" value:&stru_1008680E8 table:@"Localizable"];

    v12 = +[NSBundle mainBundle];
    v13 = v12;
    v14 = @"DELETE_WORKOUT_ALERT_DESCRIPTION";
  }

  v15 = [v12 localizedStringForKey:v14 value:&stru_1008680E8 table:v10];

  v16 = [UIAlertController alertControllerWithTitle:v11 message:v15 preferredStyle:1];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"DELETE_WORKOUT_ALERT_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100134944;
  v36[3] = &unk_10083C710;
  v19 = completionCopy;
  v37 = v19;
  v20 = [UIAlertAction actionWithTitle:v18 style:1 handler:v36];
  [v16 addAction:v20];

  v21 = +[NSBundle mainBundle];
  v22 = v21;
  if (_activityMoveMode == 2)
  {
    v23 = @"DELETE_WORKOUT_ALERT_YES_TINKER";
    v24 = @"Localizable-tinker";
  }

  else
  {
    v23 = @"DELETE_WORKOUT_ALERT_YES";
    v24 = @"Localizable";
  }

  v25 = [v21 localizedStringForKey:v23 value:&stru_1008680E8 table:v24];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10013495C;
  v34[3] = &unk_10083C710;
  v26 = v19;
  v35 = v26;
  v27 = [UIAlertAction actionWithTitle:v25 style:0 handler:v34];
  [v16 addAction:v27];

  if (_activityMoveMode != 2)
  {
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"DELETE_WORKOUT_ALERT_WORKOUT_ONLY" value:&stru_1008680E8 table:@"Localizable"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100134974;
    v32[3] = &unk_10083C710;
    v33 = v26;
    v30 = [UIAlertAction actionWithTitle:v29 style:0 handler:v32];
    [v16 addAction:v30];
  }

  [(CHWorkoutsListViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)workoutsListDataSource:(id)source didScrollToSectionWithDateComponents:(id)components
{
  componentsCopy = components;
  delegate = [(CHWorkoutsListViewController *)self delegate];
  [delegate workoutsListViewController:self didScrollToDateComponents:componentsCopy];
}

- (void)workoutsListDataSource:(id)source didEncounterReloadingException:(id)exception
{
  [(UITableView *)self->_tableView removeFromSuperview:source];
  [(CHWorkoutsListViewController *)self _setupTableView];
  [(CHWorkoutsListViewController *)self _setupDataSource];
  view = [(CHWorkoutsListViewController *)self view];
  [view layoutIfNeeded];
}

- (id)detailViewControllerForWorkout:(id)workout
{
  workoutCopy = workout;
  LOBYTE(v7) = 1;
  v5 = [[CHWorkoutDetailViewController alloc] initWithWorkout:workoutCopy workoutActivity:0 healthStore:self->_healthStore model:self->_model fitnessAppContext:self->_fitnessAppContext workoutFormattingManager:self->_workoutFormattingManager workoutDataProvider:self->_workoutDataProvider badgeImageFactory:self->_badgeImageFactory friendListManager:self->_friendListManager achievementLocalizationProvider:self->_achievementLocalizationProvider pauseRingsCoordinator:self->_pauseRingsCoordinator achievementResourceProvider:self->_achievementResourceProvider formattingManager:self->_formattingManager awardsDataProvider:self->_awardsDataProvider shouldExposeDeepLinkToTrainingLoadFromEffort:v7];

  return v5;
}

- (CHWorkoutsListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end