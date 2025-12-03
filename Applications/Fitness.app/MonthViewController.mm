@interface MonthViewController
- (MonthViewController)initWithDataProvider:(id)provider activityDateCache:(id)cache badgeImageFactory:(id)factory pauseRingsCoordinator:(id)coordinator workoutFormattingManager:(id)manager;
- (void)_registerForNotifications;
- (void)_updateBackButtonOnSelectedDateChange:(id)change;
- (void)dateSelected:(id)selected;
- (void)dealloc;
- (void)scrolledPastMonthWithDate:(id)date;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MonthViewController

- (MonthViewController)initWithDataProvider:(id)provider activityDateCache:(id)cache badgeImageFactory:(id)factory pauseRingsCoordinator:(id)coordinator workoutFormattingManager:(id)manager
{
  providerCopy = provider;
  cacheCopy = cache;
  factoryCopy = factory;
  coordinatorCopy = coordinator;
  managerCopy = manager;
  v25.receiver = self;
  v25.super_class = MonthViewController;
  v17 = [(MonthViewController *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_activityDataProvider, provider);
    objc_storeStrong(&v18->_activityDateCache, cache);
    objc_storeStrong(&v18->_workoutFormattingManager, manager);
    workoutDataProvider = [providerCopy workoutDataProvider];
    workoutsDataProvider = v18->_workoutsDataProvider;
    v18->_workoutsDataProvider = workoutDataProvider;

    objc_storeStrong(&v18->_badgeImageFactory, factory);
    objc_storeStrong(&v18->_pauseRingsCoordinator, coordinator);
    v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v18 action:"_didTapCancelButton"];
    navigationItem = [(MonthViewController *)v18 navigationItem];
    [navigationItem setRightBarButtonItem:v21];
  }

  return v18;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MonthViewController;
  [(MonthViewController *)&v9 viewDidLoad];
  v3 = [[MonthScrollViewController alloc] initWithDateCache:self->_activityDateCache workoutsDataProvider:self->_workoutsDataProvider pauseRingsCoordinator:self->_pauseRingsCoordinator];
  scrollVC = self->_scrollVC;
  self->_scrollVC = v3;

  [(MonthViewController *)self addChildViewController:self->_scrollVC];
  view = [(MonthViewController *)self view];
  view2 = [(MonthScrollViewController *)self->_scrollVC view];
  [view addSubview:view2];

  [(MonthScrollViewController *)self->_scrollVC didMoveToParentViewController:self];
  [(MonthScrollViewController *)self->_scrollVC setMonthScrollDelegate:self];
  scrollView = [(MonthScrollViewController *)self->_scrollVC scrollView];
  [(MonthViewController *)self setContentScrollView:scrollView forEdge:15];

  v8 = +[NSDate date];
  [(MonthViewController *)self scrolledPastMonthWithDate:v8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = MonthViewController;
  [(MonthViewController *)&v11 viewWillAppear:appear];
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MVC] Month view appeared.", buf, 2u);
  }

  navigationController = [(MonthViewController *)self navigationController];
  transitionCoordinator = [(MonthViewController *)self transitionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010B464;
  v8[3] = &unk_10083C8D8;
  v9 = navigationController;
  v7 = navigationController;
  [transitionCoordinator animateAlongsideTransition:v8 completion:0];
}

- (void)dateSelected:(id)selected
{
  [(ActivityDateCache *)self->_activityDateCache setWithCurrentSelectedDate:selected caller:self];

  [(MonthViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_registerForNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateBackButtonOnSelectedDateChange:" name:@"FitnessCurrentSelectedDateChangedNotification" object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MonthViewController;
  [(MonthViewController *)&v4 dealloc];
}

- (void)scrolledPastMonthWithDate:(id)date
{
  dateCopy = date;
  dateCache = [(ActivityDateCache *)self->_activityDateCache dateCache];
  calendar = [dateCache calendar];
  v6 = [calendar component:8 fromDate:dateCopy];

  if (self->_currentMonth != v6)
  {
    v7 = [(MonthViewController *)self _titleStringForDate:dateCopy];
    navigationItem = [(MonthViewController *)self navigationItem];
    [navigationItem setTitle:v7];

    self->_currentMonth = v6;
  }
}

- (void)_updateBackButtonOnSelectedDateChange:(id)change
{
  object = [change object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentSelectedDate = [(ActivityDateCache *)self->_activityDateCache currentSelectedDate];
    calendar = [(ActivityDateCache *)self->_activityDateCache calendar];
    v7 = [calendar component:8 fromDate:currentSelectedDate];

    if (self->_currentMonth != v7)
    {
      dateCache = [(ActivityDateCache *)self->_activityDateCache dateCache];
      v9 = HKRelativeMonthYearText();

      v10 = [[UIBarButtonItem alloc] initWithTitle:v9 style:0 target:0 action:0];
      navigationItem = [(MonthViewController *)self navigationItem];
      [navigationItem setBackBarButtonItem:v10];

      [(MonthViewController *)self scrolledPastMonthWithDate:currentSelectedDate];
    }
  }
}

@end