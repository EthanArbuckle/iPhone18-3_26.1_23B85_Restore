@interface MonthViewController
- (MonthViewController)initWithDataProvider:(id)a3 activityDateCache:(id)a4 badgeImageFactory:(id)a5 pauseRingsCoordinator:(id)a6 workoutFormattingManager:(id)a7;
- (void)_registerForNotifications;
- (void)_updateBackButtonOnSelectedDateChange:(id)a3;
- (void)dateSelected:(id)a3;
- (void)dealloc;
- (void)scrolledPastMonthWithDate:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MonthViewController

- (MonthViewController)initWithDataProvider:(id)a3 activityDateCache:(id)a4 badgeImageFactory:(id)a5 pauseRingsCoordinator:(id)a6 workoutFormattingManager:(id)a7
{
  v13 = a3;
  v24 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = MonthViewController;
  v17 = [(MonthViewController *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_activityDataProvider, a3);
    objc_storeStrong(&v18->_activityDateCache, a4);
    objc_storeStrong(&v18->_workoutFormattingManager, a7);
    v19 = [v13 workoutDataProvider];
    workoutsDataProvider = v18->_workoutsDataProvider;
    v18->_workoutsDataProvider = v19;

    objc_storeStrong(&v18->_badgeImageFactory, a5);
    objc_storeStrong(&v18->_pauseRingsCoordinator, a6);
    v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v18 action:"_didTapCancelButton"];
    v22 = [(MonthViewController *)v18 navigationItem];
    [v22 setRightBarButtonItem:v21];
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
  v5 = [(MonthViewController *)self view];
  v6 = [(MonthScrollViewController *)self->_scrollVC view];
  [v5 addSubview:v6];

  [(MonthScrollViewController *)self->_scrollVC didMoveToParentViewController:self];
  [(MonthScrollViewController *)self->_scrollVC setMonthScrollDelegate:self];
  v7 = [(MonthScrollViewController *)self->_scrollVC scrollView];
  [(MonthViewController *)self setContentScrollView:v7 forEdge:15];

  v8 = +[NSDate date];
  [(MonthViewController *)self scrolledPastMonthWithDate:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = MonthViewController;
  [(MonthViewController *)&v11 viewWillAppear:a3];
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MVC] Month view appeared.", buf, 2u);
  }

  v5 = [(MonthViewController *)self navigationController];
  v6 = [(MonthViewController *)self transitionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010B464;
  v8[3] = &unk_10083C8D8;
  v9 = v5;
  v7 = v5;
  [v6 animateAlongsideTransition:v8 completion:0];
}

- (void)dateSelected:(id)a3
{
  [(ActivityDateCache *)self->_activityDateCache setWithCurrentSelectedDate:a3 caller:self];

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

- (void)scrolledPastMonthWithDate:(id)a3
{
  v9 = a3;
  v4 = [(ActivityDateCache *)self->_activityDateCache dateCache];
  v5 = [v4 calendar];
  v6 = [v5 component:8 fromDate:v9];

  if (self->_currentMonth != v6)
  {
    v7 = [(MonthViewController *)self _titleStringForDate:v9];
    v8 = [(MonthViewController *)self navigationItem];
    [v8 setTitle:v7];

    self->_currentMonth = v6;
  }
}

- (void)_updateBackButtonOnSelectedDateChange:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v12 = [(ActivityDateCache *)self->_activityDateCache currentSelectedDate];
    v6 = [(ActivityDateCache *)self->_activityDateCache calendar];
    v7 = [v6 component:8 fromDate:v12];

    if (self->_currentMonth != v7)
    {
      v8 = [(ActivityDateCache *)self->_activityDateCache dateCache];
      v9 = HKRelativeMonthYearText();

      v10 = [[UIBarButtonItem alloc] initWithTitle:v9 style:0 target:0 action:0];
      v11 = [(MonthViewController *)self navigationItem];
      [v11 setBackBarButtonItem:v10];

      [(MonthViewController *)self scrolledPastMonthWithDate:v12];
    }
  }
}

@end