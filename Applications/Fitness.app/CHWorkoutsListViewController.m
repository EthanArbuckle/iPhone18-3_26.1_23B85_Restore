@interface CHWorkoutsListViewController
- (CHWorkoutsListViewController)initWithDataProvider:(id)a3 healthStore:(id)a4 model:(id)a5 fitnessAppContext:(id)a6 workoutFormattingManager:(id)a7 workoutDataProvider:(id)a8 badgeImageFactory:(id)a9 friendListManager:(id)a10 achievementLocalizationProvider:(id)a11 pauseRingsCoordinator:(id)a12 achievementResourceProvider:(id)a13 formattingManager:(id)a14 awardsDataProvider:(id)a15;
- (CHWorkoutsListViewControllerDelegate)delegate;
- (id)_dateStringForComponents:(id)a3;
- (id)_filterMenu;
- (id)detailViewControllerForWorkout:(id)a3;
- (void)_addDataProviderUpdateHandlers;
- (void)_popViewControllerIfNeeded;
- (void)_presentDetailViewForWorkout:(id)a3;
- (void)_setupDataSource;
- (void)_setupTableView;
- (void)_updateFilterButtonTitleForWorkoutTypeKey:(id)a3;
- (void)_updateFiltersList;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)workoutsListDataSource:(id)a3 didEncounterReloadingException:(id)a4;
- (void)workoutsListDataSource:(id)a3 didScrollToSectionWithDateComponents:(id)a4;
- (void)workoutsListDataSource:(id)a3 requestsDeleteConfirmationForWorkout:(id)a4 completion:(id)a5;
@end

@implementation CHWorkoutsListViewController

- (CHWorkoutsListViewController)initWithDataProvider:(id)a3 healthStore:(id)a4 model:(id)a5 fitnessAppContext:(id)a6 workoutFormattingManager:(id)a7 workoutDataProvider:(id)a8 badgeImageFactory:(id)a9 friendListManager:(id)a10 achievementLocalizationProvider:(id)a11 pauseRingsCoordinator:(id)a12 achievementResourceProvider:(id)a13 formattingManager:(id)a14 awardsDataProvider:(id)a15
{
  v42 = a3;
  v31 = a4;
  v41 = a4;
  v40 = a5;
  v33 = a6;
  v20 = a6;
  v21 = a7;
  v39 = v20;
  v38 = a7;
  v32 = a8;
  v37 = a8;
  v36 = a9;
  v35 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v43.receiver = self;
  v43.super_class = CHWorkoutsListViewController;
  v27 = [(CHWorkoutsListViewController *)&v43 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_dataProvider, a3);
    objc_storeStrong(&v28->_healthStore, v31);
    objc_storeStrong(&v28->_model, a5);
    objc_storeStrong(&v28->_workoutDataProvider, v32);
    objc_storeStrong(&v28->_workoutFormattingManager, v21);
    objc_storeStrong(&v28->_fitnessAppContext, v33);
    objc_storeStrong(&v28->_formattingManager, a14);
    objc_storeStrong(&v28->_badgeImageFactory, a9);
    objc_storeStrong(&v28->_friendListManager, a10);
    objc_storeStrong(&v28->_achievementLocalizationProvider, a11);
    objc_storeStrong(&v28->_pauseRingsCoordinator, a12);
    objc_storeStrong(&v28->_achievementResourceProvider, a13);
    objc_storeStrong(&v28->_awardsDataProvider, a15);
  }

  return v28;
}

- (void)_setupTableView
{
  v3 = [UITableView alloc];
  v4 = [(CHWorkoutsListViewController *)self view];
  [v4 bounds];
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
  v9 = [(CHWorkoutsListViewController *)self view];
  [v9 addSubview:self->_tableView];
}

- (id)_filterMenu
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(NSMutableArray);
  workoutTypeIDs = self->_workoutTypeIDs;
  v5 = [(CHWorkoutDataProvider *)self->_dataProvider currentFilteredTypeIdentifier];
  v6 = [(NSArray *)workoutTypeIDs indexOfObject:v5];

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

    v4 = [(CHWorkoutsListViewController *)self navigationController];
    v5 = [v4 popViewControllerAnimated:1];
  }
}

- (void)_setupDataSource
{
  v3 = [[CHWorkoutsListDataSource alloc] initWithTableView:self->_tableView dataProvider:self->_dataProvider fitnessAppContext:self->_fitnessAppContext formattingManager:self->_workoutFormattingManager badgeImageFactory:self->_badgeImageFactory awardsDataProvider:self->_awardsDataProvider];
  dataSource = self->_dataSource;
  self->_dataSource = v3;

  v5 = [(CHWorkoutsListViewController *)self navigationController];
  v6 = [v5 navigationBar];
  v7 = [v6 _backdropViewLayerGroupName];
  [(CHWorkoutsListDataSource *)self->_dataSource setNavBarBackdropGroupName:v7];

  v8 = self->_dataSource;

  [(CHWorkoutsListDataSource *)v8 setDelegate:self];
}

- (void)_updateFiltersList
{
  v3 = +[CHWorkoutTypeKey emptyKey];
  v39 = v3;
  v4 = [NSArray arrayWithObjects:&v39 count:1];
  v5 = [(CHWorkoutDataProvider *)self->_dataProvider sortedTypeIdentifiers];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
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

  v17 = [(CHWorkoutsListViewController *)self _filterMenu];
  v18 = [(CHWorkoutsListViewController *)self navigationItem];
  v19 = [v18 rightBarButtonItem];
  [v19 setMenu:v17];

  v20 = [(CHWorkoutDataProvider *)self->_dataProvider currentFilteredTypeIdentifier];
  [(CHWorkoutsListViewController *)self _updateFilterButtonTitleForWorkoutTypeKey:v20];

  v21 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
  v22 = [v21 count];

  v23 = [(CHWorkoutsListViewController *)self navigationController];
  v24 = [v23 navigationBar];
  v25 = v24;
  if (v22)
  {
    [v24 setUserInteractionEnabled:1];

    v26 = +[UIApplication sharedApplication];
    v27 = [v26 windows];
    v28 = [v27 firstObject];
    v29 = [v28 tintColor];
    v30 = [(CHWorkoutsListViewController *)self navigationController];
    v31 = [v30 navigationBar];
    [v31 setTintColor:v29];
  }

  else
  {
    [v24 setUserInteractionEnabled:0];

    v26 = +[UIColor darkGrayColor];
    v27 = [(CHWorkoutsListViewController *)self navigationController];
    v28 = [v27 navigationBar];
    [v28 setTintColor:v26];
  }

  v32 = [(CHWorkoutsListViewController *)self navigationController];
  v33 = [v32 interactivePopGestureRecognizer];
  [v33 setEnabled:v22 != 0];
}

- (void)_updateFilterButtonTitleForWorkoutTypeKey:(id)a3
{
  v6 = [CHWorkoutDataProvider localizedShortNameForWorkoutTypeKey:a3];
  v4 = [(CHWorkoutsListViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setTitle:v6];
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v19 loadView];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"WORKOUTS" value:&stru_1008680E8 table:@"Localizable"];
  [(CHWorkoutsListViewController *)self setTitle:v4];

  v5 = [(CHWorkoutsListViewController *)self _filterMenu];
  v6 = [[UIBarButtonItem alloc] initWithTitle:0 menu:v5];
  v7 = [(CHWorkoutsListViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  [(CHWorkoutsListViewController *)self _updateFiltersList];
  [(CHWorkoutsListViewController *)self _setupTableView];
  v8 = [(CHWorkoutsListViewController *)self _filterMenu];
  [(CHWorkoutsListViewController *)self _addDataProviderUpdateHandlers];
  [(CHWorkoutsListViewController *)self _setupDataSource];
  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(UIActivityIndicatorView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)v9 setHidesWhenStopped:1];
  v10 = [(CHWorkoutsListViewController *)self view];
  [v10 addSubview:v9];

  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v9;
  v12 = v9;

  v13 = [(CHWorkoutsListViewController *)self view];
  v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:9 relatedBy:0 toItem:v13 attribute:9 multiplier:1.0 constant:0.0];

  v15 = [(CHWorkoutsListViewController *)self view];
  v16 = [NSLayoutConstraint constraintWithItem:v12 attribute:10 relatedBy:0 toItem:v15 attribute:10 multiplier:1.0 constant:0.0];

  v17 = [(CHWorkoutsListViewController *)self view];
  v20[0] = v14;
  v20[1] = v16;
  v18 = [NSArray arrayWithObjects:v20 count:2];

  [v17 addConstraints:v18];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v4 viewWillAppear:a3];
  if ([(CHWorkoutDataProvider *)self->_dataProvider dataAvailable])
  {
    [(CHWorkoutsListViewController *)self _updateFiltersList];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v4 viewWillDisappear:a3];
  [(UITableView *)self->_tableView setEditing:0 animated:1];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CHWorkoutsListViewController;
  [(CHWorkoutsListViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(CHWorkoutsListViewController *)self view];
  [v3 bounds];
  [(UITableView *)self->_tableView setFrame:?];
}

- (void)_presentDetailViewForWorkout:(id)a3
{
  v4 = a3;
  v5 = [(CHWorkoutsListViewController *)self detailViewControllerForWorkout:v4];
  _HKInitializeLogging();
  v6 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 startDate];
    v9 = [v4 fiui_activityType];
    v10 = [v9 localizedName];
    v11 = [v4 UUID];
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WLVC] Selected workout: %@, %@ %@", &v13, 0x20u);
  }

  v12 = [(CHWorkoutsListViewController *)self navigationController];
  [v12 pushViewController:v5 animated:1];
}

- (id)_dateStringForComponents:(id)a3
{
  v3 = qword_1008F9B78;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10069CEE8();
  }

  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  v7 = [qword_1008F9B70 stringFromDate:v6];

  return v7;
}

- (void)workoutsListDataSource:(id)a3 requestsDeleteConfirmationForWorkout:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [a4 _activityMoveMode];
  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (v7 == 2)
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
  v19 = v6;
  v37 = v19;
  v20 = [UIAlertAction actionWithTitle:v18 style:1 handler:v36];
  [v16 addAction:v20];

  v21 = +[NSBundle mainBundle];
  v22 = v21;
  if (v7 == 2)
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

  if (v7 != 2)
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

- (void)workoutsListDataSource:(id)a3 didScrollToSectionWithDateComponents:(id)a4
{
  v5 = a4;
  v6 = [(CHWorkoutsListViewController *)self delegate];
  [v6 workoutsListViewController:self didScrollToDateComponents:v5];
}

- (void)workoutsListDataSource:(id)a3 didEncounterReloadingException:(id)a4
{
  [(UITableView *)self->_tableView removeFromSuperview:a3];
  [(CHWorkoutsListViewController *)self _setupTableView];
  [(CHWorkoutsListViewController *)self _setupDataSource];
  v5 = [(CHWorkoutsListViewController *)self view];
  [v5 layoutIfNeeded];
}

- (id)detailViewControllerForWorkout:(id)a3
{
  v4 = a3;
  LOBYTE(v7) = 1;
  v5 = [[CHWorkoutDetailViewController alloc] initWithWorkout:v4 workoutActivity:0 healthStore:self->_healthStore model:self->_model fitnessAppContext:self->_fitnessAppContext workoutFormattingManager:self->_workoutFormattingManager workoutDataProvider:self->_workoutDataProvider badgeImageFactory:self->_badgeImageFactory friendListManager:self->_friendListManager achievementLocalizationProvider:self->_achievementLocalizationProvider pauseRingsCoordinator:self->_pauseRingsCoordinator achievementResourceProvider:self->_achievementResourceProvider formattingManager:self->_formattingManager awardsDataProvider:self->_awardsDataProvider shouldExposeDeepLinkToTrainingLoadFromEffort:v7];

  return v5;
}

- (CHWorkoutsListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end