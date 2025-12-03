@interface MTAStopwatchViewController
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldUseRegularLayout;
- (CGSize)latestLayoutSize;
- (MTAStopwatchViewController)init;
- (double)runningTotalForLap:(int64_t)lap;
- (id)defaultShortcutItem;
- (id)shortcutItemForMode:(unint64_t)mode;
- (id)startStopwatchShortcutItemForMode:(unint64_t)mode;
- (id)stopStopwatchShortcutItem;
- (void)_pageControlValueChanged:(id)changed;
- (void)_restoreIdleTimer;
- (void)dealloc;
- (void)didAddLap:(double)lap;
- (void)didLapLapTimer;
- (void)didPauseLapTimer;
- (void)didPauseStopwatch;
- (void)didResetLapTimer;
- (void)didResumeLapTimer;
- (void)didStartLapTimer;
- (void)didUpdateCurrentInterval:(double)interval adjustedCurrentInterval:(double)currentInterval totalInterval:(double)totalInterval adjustedTotalInterval:(double)adjustedTotalInterval isStopwatchRunning:(BOOL)running isStopwatchStopped:(BOOL)stopped;
- (void)endDisplayUpdates;
- (void)handleContentSizeCategoryChange:(id)change;
- (void)handleLapStopwatchShortcutAction;
- (void)handleLocaleChange;
- (void)handleResetStopwatchShortcutAction;
- (void)handleStartStopwatchShortcutAction;
- (void)handleStopStopwatchShortcutAction;
- (void)lapLapTimer;
- (void)lapLapTimerUI;
- (void)loadView;
- (void)pauseLapTimer;
- (void)pauseLapTimerUI;
- (void)reloadStopwatchesWithCompletion:(id)completion;
- (void)renderViewModel;
- (void)resetLapTimer;
- (void)resetLapTimerUI;
- (void)resumeLapTimer;
- (void)resumeLapTimerUI;
- (void)saveState;
- (void)setMode:(unint64_t)mode;
- (void)setupViewModelWithStopwatch:(id)stopwatch;
- (void)startDisplayUpdates;
- (void)startLapTimer;
- (void)stopwatchPagingViewController:(id)controller didPage:(unint64_t)page;
- (void)traitCollectionDidChange:(id)change;
- (void)updateShortcutItemForCurrentState;
- (void)updateTimeViewFont;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTAStopwatchViewController

- (MTAStopwatchViewController)init
{
  v23.receiver = self;
  v23.super_class = MTAStopwatchViewController;
  v2 = [(MTAStopwatchViewController *)&v23 init];
  if (v2)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ initialized", buf, 0xCu);
    }

    v4 = objc_alloc_init(NSMutableArray);
    laps = v2->_laps;
    v2->_laps = v4;

    v6 = [UIImage systemImageNamed:@"stopwatch.fill"];
    tabBarItem = [(MTAStopwatchViewController *)v2 tabBarItem];
    [tabBarItem setImage:v6];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"STOP_WATCH" value:&stru_1000AEF10 table:0];
    [(MTAStopwatchViewController *)v2 setTitle:v9];

    [(MTAStopwatchViewController *)v2 setEdgesForExtendedLayout:5];
    v10 = [[MTAStopwatchLapTableViewController alloc] initWithStyle:1];
    [(MTAStopwatchViewController *)v2 setLapTableController:v10];

    lapTableController = [(MTAStopwatchViewController *)v2 lapTableController];
    [(MTAStopwatchViewController *)v2 addChildViewController:lapTableController];

    title = [(MTAStopwatchViewController *)v2 title];
    v13 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.stopwatch" title:title];
    userActivity = v2->_userActivity;
    v2->_userActivity = v13;

    v15 = objc_opt_new();
    [(MTAStopwatchViewController *)v2 setStopwatchManager:v15];

    v16 = [MTLegacyStopwatchMigrator alloc];
    v17 = +[NSUserDefaults standardUserDefaults];
    stopwatchManager = [(MTAStopwatchViewController *)v2 stopwatchManager];
    v19 = [v16 initWithDefaults:v17 manager:stopwatchManager];
    [(MTAStopwatchViewController *)v2 setMigrator:v19];

    v20 = objc_opt_new();
    [(MTAStopwatchViewController *)v2 setDeferredPublisher:v20];

    v21 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NSTimer *)self->_restoreIdleTimerTimer invalidate];
  v4.receiver = self;
  v4.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v4 dealloc];
}

- (void)handleLocaleChange
{
  timeView = [(MTAStopwatchViewController *)self timeView];
  [timeView handleLocaleChange];

  analogStopwatch = [(MTAStopwatchViewController *)self analogStopwatch];
  [analogStopwatch handleLocaleChange];

  [(objc_class *)[(MTAStopwatchViewController *)self tableCellClass] handleLocaleChange];
  lapTableController = [(MTAStopwatchViewController *)self lapTableController];
  tableView = [lapTableController tableView];
  [tableView reloadData];
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    stopwatchController = [(MTAStopwatchViewController *)self stopwatchController];
    [stopwatchController setMode:mode];

    [(MTAStopwatchViewController *)self updateShortcutItemForCurrentState];
  }
}

- (void)updateTimeViewFont
{
  traitCollection = [(MTAStopwatchViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (MTUIShouldUseLargePadLayout())
  {
    v5 = &qword_10008BDC0;
  }

  else
  {
    v5 = &unk_10008BDB8;
    if (horizontalSizeClass != 2)
    {
      v5 = &qword_10008BDB0;
    }
  }

  v8 = [UIFont systemFontOfSize:*v5 weight:UIFontWeightThin];
  mtui_fontByAddingTimeFontAttributes = [v8 mtui_fontByAddingTimeFontAttributes];
  timeView = [(MTAStopwatchViewController *)self timeView];
  [timeView setFont:mtui_fontByAddingTimeFontAttributes];
}

- (void)traitCollectionDidChange:(id)change
{
  lapTableController = [(MTAStopwatchViewController *)self lapTableController];
  tableView = [lapTableController tableView];
  [tableView reloadData];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v7 = size.width / size.height;
  coordinatorCopy = coordinator;
  pagingViewController = [(MTAStopwatchViewController *)self pagingViewController];
  pagingViewController2 = pagingViewController;
  if (v7 > 0.9)
  {
    [pagingViewController setCurrentPage:0];

    pageControl = [(MTAStopwatchViewController *)self pageControl];
    [pageControl setCurrentPage:0];

    pagingViewController2 = [(MTAStopwatchViewController *)self pagingViewController];
  }

  scrollView = [pagingViewController2 scrollView];
  [scrollView setScrollEnabled:v7 <= 0.9];

  v15.receiver = self;
  v15.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v15 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000333F0;
  v13[3] = &unk_1000AE3D0;
  v13[4] = self;
  v14 = v7 > 0.9;
  [coordinatorCopy animateAlongsideTransition:v13 completion:0];
}

- (void)loadView
{
  v94.receiver = self;
  v94.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v94 loadView];
  [(MTAStopwatchViewController *)self setAutomaticallyAdjustsScrollViewInsets:0];
  v3 = [[MTAStopwatchController alloc] initWithTarget:self];
  [(MTAStopwatchViewController *)self setStopwatchController:v3];

  [(MTAStopwatchViewController *)self setMode:1];
  v4 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MTAStopwatchViewController *)self setLapButtonOccludingView:v8];

  v9 = +[UIColor clearColor];
  lapButtonOccludingView = [(MTAStopwatchViewController *)self lapButtonOccludingView];
  [lapButtonOccludingView setBackgroundColor:v9];

  lapButtonOccludingView2 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
  [lapButtonOccludingView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(MTAStopwatchViewController *)self view];
  lapButtonOccludingView3 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
  [view addSubview:lapButtonOccludingView3];

  v14 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MTAStopwatchViewController *)self setStartButtonOccludingView:v14];

  v15 = +[UIColor clearColor];
  startButtonOccludingView = [(MTAStopwatchViewController *)self startButtonOccludingView];
  [startButtonOccludingView setBackgroundColor:v15];

  startButtonOccludingView2 = [(MTAStopwatchViewController *)self startButtonOccludingView];
  [startButtonOccludingView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(MTAStopwatchViewController *)self view];
  startButtonOccludingView3 = [(MTAStopwatchViewController *)self startButtonOccludingView];
  [view2 addSubview:startButtonOccludingView3];

  view3 = [(MTAStopwatchViewController *)self view];
  stopwatchController = [(MTAStopwatchViewController *)self stopwatchController];
  startStopButton = [stopwatchController startStopButton];
  [view3 addSubview:startStopButton];

  view4 = [(MTAStopwatchViewController *)self view];
  stopwatchController2 = [(MTAStopwatchViewController *)self stopwatchController];
  lapControlButton = [stopwatchController2 lapControlButton];
  [view4 addSubview:lapControlButton];

  stopwatchController3 = [(MTAStopwatchViewController *)self stopwatchController];
  startStopButton2 = [stopwatchController3 startStopButton];
  [startStopButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

  stopwatchController4 = [(MTAStopwatchViewController *)self stopwatchController];
  lapControlButton2 = [stopwatchController4 lapControlButton];
  [lapControlButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

  LODWORD(stopwatchController4) = [(MTAStopwatchViewController *)self shouldUseRegularLayout];
  stopwatchController5 = [(MTAStopwatchViewController *)self stopwatchController];
  [stopwatchController5 setButtonSize:stopwatchController4];

  view5 = [(MTAStopwatchViewController *)self view];
  lapTableController = [(MTAStopwatchViewController *)self lapTableController];
  view6 = [lapTableController view];
  [view5 addSubview:view6];

  lapTableController2 = [(MTAStopwatchViewController *)self lapTableController];
  [lapTableController2 didMoveToParentViewController:self];

  lapTableController3 = [(MTAStopwatchViewController *)self lapTableController];
  view7 = [lapTableController3 view];
  [view7 setTranslatesAutoresizingMaskIntoConstraints:0];

  height = [[MTAStopwatchLapTableHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MTAStopwatchViewController *)self setTableHeaderView:height];

  tableHeaderView = [(MTAStopwatchViewController *)self tableHeaderView];
  [tableHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableHeaderView2 = [(MTAStopwatchViewController *)self tableHeaderView];
  [tableHeaderView2 setHidden:1];

  view8 = [(MTAStopwatchViewController *)self view];
  tableHeaderView3 = [(MTAStopwatchViewController *)self tableHeaderView];
  [view8 addSubview:tableHeaderView3];

  v42 = objc_alloc_init(MTAStopwatchPagingViewController);
  [(MTAStopwatchViewController *)self setPagingViewController:v42];

  pagingViewController = [(MTAStopwatchViewController *)self pagingViewController];
  [(MTAStopwatchViewController *)self addChildViewController:pagingViewController];

  pagingViewController2 = [(MTAStopwatchViewController *)self pagingViewController];
  view9 = [pagingViewController2 view];
  [view9 setTranslatesAutoresizingMaskIntoConstraints:0];

  pagingViewController3 = [(MTAStopwatchViewController *)self pagingViewController];
  [pagingViewController3 setDelegate:self];

  view10 = [(MTAStopwatchViewController *)self view];
  pagingViewController4 = [(MTAStopwatchViewController *)self pagingViewController];
  view11 = [pagingViewController4 view];
  [view10 insertSubview:view11 atIndex:0];

  pagingViewController5 = [(MTAStopwatchViewController *)self pagingViewController];
  [pagingViewController5 didMoveToParentViewController:self];

  v51 = [[UIPageControl alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MTAStopwatchViewController *)self setPageControl:v51];

  pageControl = [(MTAStopwatchViewController *)self pageControl];
  [pageControl addTarget:self action:"_pageControlValueChanged:" forControlEvents:4096];

  pageControl2 = [(MTAStopwatchViewController *)self pageControl];
  [pageControl2 setNumberOfPages:2];

  pageControl3 = [(MTAStopwatchViewController *)self pageControl];
  [pageControl3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view12 = [(MTAStopwatchViewController *)self view];
  pageControl4 = [(MTAStopwatchViewController *)self pageControl];
  [view12 addSubview:pageControl4];

  v57 = objc_alloc_init(MTUITimeView);
  [(MTAStopwatchViewController *)self setTimeView:v57];

  v58 = [UIFont systemFontOfSize:88.0 weight:UIFontWeightThin];
  mtui_fontByAddingTimeFontAttributes = [v58 mtui_fontByAddingTimeFontAttributes];
  timeView = [(MTAStopwatchViewController *)self timeView];
  [timeView setFont:mtui_fontByAddingTimeFontAttributes];

  v61 = +[UIColor mtui_primaryTextColor];
  timeView2 = [(MTAStopwatchViewController *)self timeView];
  [timeView2 setTextColor:v61];

  timeView3 = [(MTAStopwatchViewController *)self timeView];
  [timeView3 setTextAlignment:1];

  timeView4 = [(MTAStopwatchViewController *)self timeView];
  [timeView4 setAdjustsFontSizeToFitWidth:1];

  v65 = +[UIColor clearColor];
  timeView5 = [(MTAStopwatchViewController *)self timeView];
  [timeView5 setBackgroundColor:v65];

  timeView6 = [(MTAStopwatchViewController *)self timeView];
  [timeView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  timeView7 = [(MTAStopwatchViewController *)self timeView];
  [timeView7 setAccessibilityIdentifier:@"stopwatch-time"];

  v69 = objc_opt_new();
  [(MTAStopwatchViewController *)self setDigitalStopwatchContainer:v69];

  digitalStopwatchContainer = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
  timeView8 = [(MTAStopwatchViewController *)self timeView];
  [digitalStopwatchContainer addSubview:timeView8];

  v72 = objc_alloc_init(MTAAnalogStopwatchView);
  [(MTAStopwatchViewController *)self setAnalogStopwatch:v72];

  v73 = +[UIColor clearColor];
  analogStopwatch = [(MTAStopwatchViewController *)self analogStopwatch];
  [analogStopwatch setBackgroundColor:v73];

  analogStopwatch2 = [(MTAStopwatchViewController *)self analogStopwatch];
  [analogStopwatch2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v76 = objc_opt_new();
  [(MTAStopwatchViewController *)self setAnalogStopwatchContainer:v76];

  analogStopwatchContainer = [(MTAStopwatchViewController *)self analogStopwatchContainer];
  analogStopwatch3 = [(MTAStopwatchViewController *)self analogStopwatch];
  [analogStopwatchContainer addSubview:analogStopwatch3];

  digitalStopwatchContainer2 = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
  v97[0] = digitalStopwatchContainer2;
  analogStopwatchContainer2 = [(MTAStopwatchViewController *)self analogStopwatchContainer];
  v97[1] = analogStopwatchContainer2;
  v81 = [NSArray arrayWithObjects:v97 count:2];
  pagingViewController6 = [(MTAStopwatchViewController *)self pagingViewController];
  [pagingViewController6 setPages:v81];

  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v83 = +[NSNotificationCenter defaultCenter];
    [v83 addObserver:self selector:"handleLocaleChange" name:NSCurrentLocaleDidChangeNotification object:0];

    [(MTAStopwatchViewController *)self updateShortcutItemForCurrentState];
    migrator = [(MTAStopwatchViewController *)self migrator];
    needsMigration = [migrator needsMigration];

    v86 = MTLogForCategory();
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
    if (needsMigration)
    {
      if (v87)
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%{public}@ stopwatch need migration", buf, 0xCu);
      }

      migrator2 = [(MTAStopwatchViewController *)self migrator];
      migrateLegacyStopwatch = [migrator2 migrateLegacyStopwatch];
      v90 = +[NAScheduler mainThreadScheduler];
      v91 = [migrateLegacyStopwatch reschedule:v90];
      v93[0] = _NSConcreteStackBlock;
      v93[1] = 3221225472;
      v93[2] = sub_100033FA8;
      v93[3] = &unk_1000AE3F8;
      v93[4] = self;
      v92 = [v91 addCompletionBlock:v93];
    }

    else
    {
      if (v87)
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%{public}@ migration not needed, proceeding to load stopwatch", buf, 0xCu);
      }

      [(MTAStopwatchViewController *)self reloadStopwatchesWithCompletion:0];
    }
  }
}

- (void)reloadStopwatchesWithCompletion:(id)completion
{
  completionCopy = completion;
  stopwatchManager = [(MTAStopwatchViewController *)self stopwatchManager];
  getStopwatches = [stopwatchManager getStopwatches];
  v7 = +[NAScheduler mainThreadScheduler];
  v8 = [getStopwatches reschedule:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000341B8;
  v11[3] = &unk_1000AE420;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [v8 addCompletionBlock:v11];
}

- (void)setupViewModelWithStopwatch:(id)stopwatch
{
  stopwatchCopy = stopwatch;
  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    identifier = [stopwatchCopy identifier];
    v31 = 138543618;
    selfCopy3 = self;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@ setting up view model with stopwatch: %{public}@", &v31, 0x16u);
  }

  viewModel = [(MTAStopwatchViewController *)self viewModel];

  v10 = MTLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (viewModel)
  {
    if (v11)
    {
      identifier2 = [stopwatchCopy identifier];
      v31 = 138543618;
      selfCopy3 = self;
      v33 = 2114;
      v34 = identifier2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ view model already exists, updating with stopwatch: %{public}@", &v31, 0x16u);
    }

    viewModel2 = [(MTAStopwatchViewController *)self viewModel];
    stopwatchManager = [stopwatchCopy mutableCopy];
    [viewModel2 updateStopwatch:stopwatchManager];
  }

  else
  {
    if (v11)
    {
      identifier3 = [stopwatchCopy identifier];
      v31 = 138543618;
      selfCopy3 = self;
      v33 = 2114;
      v34 = identifier3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ view model does not exist, creating new one with stopwatch: %{public}@", &v31, 0x16u);
    }

    v16 = [MTStopwatchViewModel alloc];
    viewModel2 = [stopwatchCopy mutableCopy];
    stopwatchManager = [(MTAStopwatchViewController *)self stopwatchManager];
    viewModel6 = objc_opt_new();
    v17 = [v16 initWithStopwatch:viewModel2 manager:stopwatchManager delegate:self dateProvider:viewModel6 registerForNotifications:1 broadcastUpdates:0];
    [(MTAStopwatchViewController *)self setViewModel:v17];
  }

  if ([stopwatchCopy state] == 2)
  {
    viewModel3 = [(MTAStopwatchViewController *)self viewModel];
    [viewModel3 updateWithDisplayLink];

    v19 = 2;
  }

  else if ([stopwatchCopy state] == 1)
  {
    v19 = 3;
  }

  else
  {
    v19 = 1;
  }

  [(MTAStopwatchViewController *)self setMode:v19];
  viewModel4 = [(MTAStopwatchViewController *)self viewModel];
  [viewModel4 updateTime];

  viewModel5 = [(MTAStopwatchViewController *)self viewModel];
  getStopwatch = [viewModel5 getStopwatch];
  state = [getStopwatch state];
  if (state == 2)
  {
    v24 = 1;
  }

  else
  {
    viewModel6 = [(MTAStopwatchViewController *)self viewModel];
    getStopwatch2 = [viewModel6 getStopwatch];
    [getStopwatch2 currentInterval];
    v24 = v25 > 0.0;
  }

  lapTableController = [(MTAStopwatchViewController *)self lapTableController];
  [lapTableController setShowsCurrentLap:v24];

  if (state != 2)
  {
  }

  lapTableController2 = [(MTAStopwatchViewController *)self lapTableController];
  viewModel7 = [(MTAStopwatchViewController *)self viewModel];
  getStopwatch3 = [viewModel7 getStopwatch];
  laps = [getStopwatch3 laps];
  [lapTableController2 setLaps:laps];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v14 viewDidLoad];
  [(MTAStopwatchViewController *)self updateTimeViewFont];
  lapTableController = [(MTAStopwatchViewController *)self lapTableController];
  tableView = [lapTableController tableView];

  [(MTAStopwatchViewController *)self _setObservableScrollView:tableView forEdges:4];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"STOPWATCH_INDEX"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_1000B18C0;
  }

  integerValue = [v7 integerValue];
  pagingViewController = [(MTAStopwatchViewController *)self pagingViewController];
  [pagingViewController setCurrentPage:integerValue];

  pageControl = [(MTAStopwatchViewController *)self pageControl];
  [pageControl setCurrentPage:integerValue];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"handleContentSizeCategoryChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"handleEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"handleEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)handleContentSizeCategoryChange:(id)change
{
  view = [(MTAStopwatchViewController *)self view];
  [view bounds];
  v6 = v5;

  stopwatchController = [(MTAStopwatchViewController *)self stopwatchController];
  startStopButton = [stopwatchController startStopButton];

  MTUIShouldUseLargePadLayout();
  shouldUseRegularLayout = [(MTAStopwatchViewController *)self shouldUseRegularLayout];
  view2 = [(MTAStopwatchViewController *)self view];
  [view2 bounds];

  v10 = +[UIScreen mainScreen];
  [v10 bounds];
  Height = CGRectGetHeight(v26);

  if (shouldUseRegularLayout)
  {
    [MTACircleButton buttonWidthForSize:1];
    if (v12 >= 120.0)
    {
      v13 = 120.0;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    view3 = [(MTAStopwatchViewController *)self view];
    [view3 bounds];
    fmin(Height * 0.542, CGRectGetWidth(v27));

    view4 = [(MTAStopwatchViewController *)self view];
    [view4 safeAreaInsets];

    [MTACircleButton buttonWidthForSize:0];
    v13 = (v6 + 16.0 * -2.0) * 0.25;
    +[MTACircleButton buttonWidthForSize:](MTACircleButton, "buttonWidthForSize:", [startStopButton buttonCircleSize]);
    if (v16 < v13)
    {
      v13 = v16;
    }
  }

  view5 = [(MTAStopwatchViewController *)self view];
  UIRoundToViewScale();
  v19 = v18;

  startButtonTopConstraint = [(MTAStopwatchViewController *)self startButtonTopConstraint];
  [startButtonTopConstraint setConstant:v19];

  lapButtonTopConstraint = [(MTAStopwatchViewController *)self lapButtonTopConstraint];
  [lapButtonTopConstraint setConstant:v19];

  startButtonWidthConstraint = [(MTAStopwatchViewController *)self startButtonWidthConstraint];
  [startButtonWidthConstraint setConstant:v13];

  lapButtonWidthConstraint = [(MTAStopwatchViewController *)self lapButtonWidthConstraint];
  [lapButtonWidthConstraint setConstant:v13];
}

- (BOOL)shouldUseRegularLayout
{
  v3 = MTUIShouldUseLargePadLayout();
  traitCollection = [(MTAStopwatchViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)updateViewConstraints
{
  view = [(MTAStopwatchViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(MTAStopwatchViewController *)self latestLayoutSize];
  if (v9 == v5 && v8 == v7)
  {
    v182.receiver = self;
    v182.super_class = MTAStopwatchViewController;
    [(MTAStopwatchViewController *)&v182 updateViewConstraints];
  }

  else
  {
    lapTableController = [(MTAStopwatchViewController *)self lapTableController];
    tableView = [lapTableController tableView];

    tableHeaderView = [(MTAStopwatchViewController *)self tableHeaderView];
    pagingViewController = [(MTAStopwatchViewController *)self pagingViewController];
    view2 = [pagingViewController view];

    v15 = +[NSMutableArray array];
    stopwatchController = [(MTAStopwatchViewController *)self stopwatchController];
    startStopButton = [stopwatchController startStopButton];

    stopwatchController2 = [(MTAStopwatchViewController *)self stopwatchController];
    lapControlButton = [stopwatchController2 lapControlButton];

    v180 = 0u;
    v181 = 0u;
    view3 = [(MTAStopwatchViewController *)self view];
    +[MTAUtilities controlButtonAttributesForView:buttonCircleSize:](MTAUtilities, "controlButtonAttributesForView:buttonCircleSize:", view3, [startStopButton buttonCircleSize]);

    v176 = tableHeaderView;
    v178 = startStopButton;
    topAnchor = [startStopButton topAnchor];
    view4 = [(MTAStopwatchViewController *)self view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    [(MTAStopwatchViewController *)self setStartButtonTopConstraint:v25];

    topAnchor3 = [lapControlButton topAnchor];
    view5 = [(MTAStopwatchViewController *)self view];
    safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide2 topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
    [(MTAStopwatchViewController *)self setLapButtonTopConstraint:v30];

    lapButtonTopConstraint = [(MTAStopwatchViewController *)self lapButtonTopConstraint];
    [v15 addObject:lapButtonTopConstraint];

    startButtonTopConstraint = [(MTAStopwatchViewController *)self startButtonTopConstraint];
    [v15 addObject:startButtonTopConstraint];

    leadingAnchor = [lapControlButton leadingAnchor];
    view6 = [(MTAStopwatchViewController *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v15 addObject:v36];

    widthAnchor = [lapControlButton widthAnchor];
    v38 = [widthAnchor constraintEqualToConstant:0.0];
    [(MTAStopwatchViewController *)self setLapButtonWidthConstraint:v38];

    lapButtonWidthConstraint = [(MTAStopwatchViewController *)self lapButtonWidthConstraint];
    [v15 addObject:lapButtonWidthConstraint];

    heightAnchor = [lapControlButton heightAnchor];
    widthAnchor2 = [lapControlButton widthAnchor];
    v42 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    [v15 addObject:v42];

    trailingAnchor = [v178 trailingAnchor];
    view7 = [(MTAStopwatchViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    [v15 addObject:v46];

    widthAnchor3 = [v178 widthAnchor];
    v48 = [widthAnchor3 constraintEqualToConstant:0.0];
    [(MTAStopwatchViewController *)self setStartButtonWidthConstraint:v48];

    startButtonWidthConstraint = [(MTAStopwatchViewController *)self startButtonWidthConstraint];
    [v15 addObject:startButtonWidthConstraint];

    heightAnchor2 = [v178 heightAnchor];
    widthAnchor4 = [v178 widthAnchor];
    v52 = [heightAnchor2 constraintEqualToAnchor:widthAnchor4];
    [v15 addObject:v52];

    lapButtonOccludingView = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    centerXAnchor = [lapButtonOccludingView centerXAnchor];
    centerXAnchor2 = [lapControlButton centerXAnchor];
    v56 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v15 addObject:v56];

    lapButtonOccludingView2 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    centerYAnchor = [lapButtonOccludingView2 centerYAnchor];
    centerYAnchor2 = [lapControlButton centerYAnchor];
    v60 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v15 addObject:v60];

    lapButtonOccludingView3 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    widthAnchor5 = [lapButtonOccludingView3 widthAnchor];
    widthAnchor6 = [lapControlButton widthAnchor];
    v64 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:1.0 constant:2.0];
    [v15 addObject:v64];

    lapButtonOccludingView4 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    heightAnchor3 = [lapButtonOccludingView4 heightAnchor];
    v177 = lapControlButton;
    heightAnchor4 = [lapControlButton heightAnchor];
    v68 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:1.0 constant:2.0];
    [v15 addObject:v68];

    startButtonOccludingView = [(MTAStopwatchViewController *)self startButtonOccludingView];
    centerXAnchor3 = [startButtonOccludingView centerXAnchor];
    centerXAnchor4 = [v178 centerXAnchor];
    v72 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v15 addObject:v72];

    startButtonOccludingView2 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    centerYAnchor3 = [startButtonOccludingView2 centerYAnchor];
    centerYAnchor4 = [v178 centerYAnchor];
    v76 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v15 addObject:v76];

    startButtonOccludingView3 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    widthAnchor7 = [startButtonOccludingView3 widthAnchor];
    widthAnchor8 = [v178 widthAnchor];
    v80 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:1.0 constant:2.0];
    [v15 addObject:v80];

    startButtonOccludingView4 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    heightAnchor5 = [startButtonOccludingView4 heightAnchor];
    heightAnchor6 = [v178 heightAnchor];
    v84 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6 multiplier:1.0 constant:2.0];
    [v15 addObject:v84];

    v85 = sub_100032F18(0.0 + 2.0);
    lapButtonOccludingView5 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    [lapButtonOccludingView5 setImage:v85];

    startButtonOccludingView5 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    v174 = v85;
    [startButtonOccludingView5 setImage:v85];

    topAnchor5 = [tableView topAnchor];
    v89 = lapControlButton;
    bottomAnchor = [lapControlButton bottomAnchor];
    v91 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:16.0];
    [v15 addObject:v91];

    leadingAnchor3 = [tableView leadingAnchor];
    view8 = [(MTAStopwatchViewController *)self view];
    leadingAnchor4 = [view8 leadingAnchor];
    v95 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v15 addObject:v95];

    trailingAnchor3 = [tableView trailingAnchor];
    view9 = [(MTAStopwatchViewController *)self view];
    trailingAnchor4 = [view9 trailingAnchor];
    v99 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v15 addObject:v99];

    pageControl = [(MTAStopwatchViewController *)self pageControl];
    centerXAnchor5 = [pageControl centerXAnchor];
    view10 = [(MTAStopwatchViewController *)self view];
    centerXAnchor6 = [view10 centerXAnchor];
    v104 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v15 addObject:v104];

    pageControl2 = [(MTAStopwatchViewController *)self pageControl];
    centerYAnchor5 = [pageControl2 centerYAnchor];
    centerYAnchor6 = [v89 centerYAnchor];
    v108 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v15 addObject:v108];

    bottomAnchor2 = [tableView bottomAnchor];
    view11 = [(MTAStopwatchViewController *)self view];
    bottomAnchor3 = [view11 bottomAnchor];
    v112 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v15 addObject:v112];

    lapTableController2 = [(MTAStopwatchViewController *)self lapTableController];
    [lapTableController2 setCellStyle:1];

    tableHeaderView2 = [(MTAStopwatchViewController *)self tableHeaderView];
    [tableHeaderView2 setHidden:(BYTE9(v181) ^ 1) & 1];

    leadingAnchor5 = [view2 leadingAnchor];
    view12 = [(MTAStopwatchViewController *)self view];
    leadingAnchor6 = [view12 leadingAnchor];
    v118 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v15 addObject:v118];

    trailingAnchor5 = [view2 trailingAnchor];
    view13 = [(MTAStopwatchViewController *)self view];
    trailingAnchor6 = [view13 trailingAnchor];
    v122 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v15 addObject:v122];

    topAnchor6 = [view2 topAnchor];
    view14 = [(MTAStopwatchViewController *)self view];
    safeAreaLayoutGuide3 = [view14 safeAreaLayoutGuide];
    topAnchor7 = [safeAreaLayoutGuide3 topAnchor];
    v127 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    [v15 addObject:v127];

    bottomAnchor4 = [view2 bottomAnchor];
    pageControl3 = [(MTAStopwatchViewController *)self pageControl];
    topAnchor8 = [pageControl3 topAnchor];
    v131 = [bottomAnchor4 constraintEqualToAnchor:topAnchor8 constant:15.0];
    [v15 addObject:v131];

    v132 = &unk_10008BD60;
    if (!BYTE10(v181))
    {
      v132 = &qword_10008BD18;
    }

    v133 = 0.0 * 0.5 + 0.0;
    v134 = v133 + *v132 * -2.0;
    v135 = v133 - (v5 + *v132 * -2.0);
    if (v134 <= v5)
    {
      v136 = *v132;
    }

    else
    {
      v136 = v135 * 0.5;
    }

    analogStopwatch = [(MTAStopwatchViewController *)self analogStopwatch];
    centerXAnchor7 = [analogStopwatch centerXAnchor];
    analogStopwatchContainer = [(MTAStopwatchViewController *)self analogStopwatchContainer];
    centerXAnchor8 = [analogStopwatchContainer centerXAnchor];
    v141 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [v15 addObject:v141];

    analogStopwatch2 = [(MTAStopwatchViewController *)self analogStopwatch];
    topAnchor9 = [analogStopwatch2 topAnchor];
    analogStopwatchContainer2 = [(MTAStopwatchViewController *)self analogStopwatchContainer];
    topAnchor10 = [analogStopwatchContainer2 topAnchor];
    v146 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:v136];
    [v15 addObject:v146];

    analogStopwatch3 = [(MTAStopwatchViewController *)self analogStopwatch];
    bottomAnchor5 = [analogStopwatch3 bottomAnchor];
    analogStopwatchContainer3 = [(MTAStopwatchViewController *)self analogStopwatchContainer];
    bottomAnchor6 = [analogStopwatchContainer3 bottomAnchor];
    v151 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v136];

    LODWORD(v152) = 1148829696;
    [v151 setPriority:v152];
    [v15 addObject:v151];
    analogStopwatch4 = [(MTAStopwatchViewController *)self analogStopwatch];
    widthAnchor9 = [analogStopwatch4 widthAnchor];
    analogStopwatch5 = [(MTAStopwatchViewController *)self analogStopwatch];
    heightAnchor7 = [analogStopwatch5 heightAnchor];
    v157 = [widthAnchor9 constraintEqualToAnchor:heightAnchor7];
    [v15 addObject:v157];

    timeView = [(MTAStopwatchViewController *)self timeView];
    leadingAnchor7 = [timeView leadingAnchor];
    digitalStopwatchContainer = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
    leadingAnchor8 = [digitalStopwatchContainer leadingAnchor];
    v162 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v15 addObject:v162];

    timeView2 = [(MTAStopwatchViewController *)self timeView];
    trailingAnchor7 = [timeView2 trailingAnchor];
    digitalStopwatchContainer2 = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
    trailingAnchor8 = [digitalStopwatchContainer2 trailingAnchor];
    v167 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v15 addObject:v167];

    timeView3 = [(MTAStopwatchViewController *)self timeView];
    centerYAnchor7 = [timeView3 centerYAnchor];
    digitalStopwatchContainer3 = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
    centerYAnchor8 = [digitalStopwatchContainer3 centerYAnchor];
    v172 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    [v15 addObject:v172];

    constraints = [(MTAStopwatchViewController *)self constraints];
    [NSLayoutConstraint deactivateConstraints:constraints];

    [NSLayoutConstraint activateConstraints:v15];
    [(MTAStopwatchViewController *)self setConstraints:v15];
    [(MTAStopwatchViewController *)self setLatestLayoutSize:v5, v7];
    v179.receiver = self;
    v179.super_class = MTAStopwatchViewController;
    [(MTAStopwatchViewController *)&v179 updateViewConstraints];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v6 viewWillAppear:appear];
  view = [(MTAStopwatchViewController *)self view];
  [view setNeedsUpdateConstraints];

  [(MTAStopwatchViewController *)self renderViewModel];
  deferredPublisher = [(MTAStopwatchViewController *)self deferredPublisher];
  [deferredPublisher publish];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v4 viewDidAppear:appear];
  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)renderViewModel
{
  viewModel = [(MTAStopwatchViewController *)self viewModel];
  getStopwatch = [viewModel getStopwatch];
  state = [getStopwatch state];

  if (state == 2)
  {
    [(MTAStopwatchViewController *)self startDisplayUpdates];
    v6 = 2;
  }

  else
  {
    viewModel2 = [(MTAStopwatchViewController *)self viewModel];
    getStopwatch2 = [viewModel2 getStopwatch];
    [getStopwatch2 currentInterval];
    v10 = v9;

    if (v10 <= 0.0)
    {
      goto LABEL_6;
    }

    v6 = 3;
  }

  [(MTAStopwatchViewController *)self setMode:v6];
LABEL_6:
  viewModel3 = [(MTAStopwatchViewController *)self viewModel];
  getStopwatch3 = [viewModel3 getStopwatch];
  [getStopwatch3 currentInterval];
  v14 = v13;

  if (v14 > 0.0)
  {
    viewModel4 = [(MTAStopwatchViewController *)self viewModel];
    [viewModel4 updateTime];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v5.receiver = self;
  v5.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v4 viewDidDisappear:disappear];
  [(MTAStopwatchViewController *)self endDisplayUpdates];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v12 viewDidLayoutSubviews];
  view = [(MTAStopwatchViewController *)self view];
  [view bounds];
  v6 = v4 / v5;

  pagingViewController = [(MTAStopwatchViewController *)self pagingViewController];
  pagingViewController2 = pagingViewController;
  v9 = 1.0;
  if (v6 > 0.9)
  {
    [pagingViewController setCurrentPage:0];

    pagingViewController2 = [(MTAStopwatchViewController *)self pagingViewController];
    v9 = 0.0;
  }

  scrollView = [pagingViewController2 scrollView];
  [scrollView setScrollEnabled:v6 <= 0.9];

  pageControl = [(MTAStopwatchViewController *)self pageControl];
  [pageControl setAlpha:v9];
}

- (BOOL)prefersStatusBarHidden
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 0;
  }

  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];

  v4 = [delegate interfaceOrientation] - 3 < 2;
  return v4;
}

- (void)stopwatchPagingViewController:(id)controller didPage:(unint64_t)page
{
  pageControl = [(MTAStopwatchViewController *)self pageControl];
  [pageControl setCurrentPage:page];
}

- (void)saveState
{
  v5 = +[NSUserDefaults standardUserDefaults];
  pagingViewController = [(MTAStopwatchViewController *)self pagingViewController];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [pagingViewController currentPage]);
  [v5 setObject:v4 forKey:@"STOPWATCH_INDEX"];
}

- (void)updateShortcutItemForCurrentState
{
  v3 = +[UIApplication sharedApplication];
  shortcutItems = [v3 shortcutItems];
  v8 = [shortcutItems mutableCopy];

  v5 = [v8 indexOfObjectPassingTest:&stru_1000AE460];
  shortcutItemForCurrentState = [(MTAStopwatchViewController *)self shortcutItemForCurrentState];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 insertObject:shortcutItemForCurrentState atIndex:0];
  }

  else
  {
    [v8 replaceObjectAtIndex:v5 withObject:shortcutItemForCurrentState];
  }

  v7 = +[UIApplication sharedApplication];
  [v7 setShortcutItems:v8];
}

- (id)shortcutItemForMode:(unint64_t)mode
{
  if ((mode & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    [(MTAStopwatchViewController *)self startStopwatchShortcutItemForMode:?];
  }

  else
  {
    [(MTAStopwatchViewController *)self stopStopwatchShortcutItem];
  }
  v3 = ;

  return v3;
}

- (id)startStopwatchShortcutItemForMode:(unint64_t)mode
{
  v4 = [UIApplicationShortcutIcon iconWithSystemImageName:@"stopwatch"];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (mode == 1)
  {
    v7 = @"START_STOPWATCH_QUICK_ACTION_TITLE";
  }

  else
  {
    v7 = @"RESUME_STOPWATCH_QUICK_ACTION_TITLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1000AEF10 table:@"Localizable-OrbHW"];

  v9 = [[UIApplicationShortcutItem alloc] initWithType:@"com.apple.mobiletimer.start-stopwatch" localizedTitle:v8 localizedSubtitle:0 icon:v4 userInfo:0];

  return v9;
}

- (id)stopStopwatchShortcutItem
{
  v2 = [UIApplicationShortcutIcon iconWithSystemImageName:@"stopwatch"];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"STOP_STOPWATCH_QUICK_ACTION_TITLE" value:&stru_1000AEF10 table:@"Localizable-OrbHW"];

  v5 = [[UIApplicationShortcutItem alloc] initWithType:@"com.apple.mobiletimer.stop-stopwatch" localizedTitle:v4 localizedSubtitle:0 icon:v2 userInfo:0];

  return v5;
}

- (id)defaultShortcutItem
{
  if (self->_isTimerRunning)
  {
    return [(MTAStopwatchViewController *)self shortcutItemForMode:2];
  }

  if (self->_currentInterval <= 0.0)
  {
    return [(MTAStopwatchViewController *)self shortcutItemForMode:1];
  }

  return [(MTAStopwatchViewController *)self shortcutItemForMode:3];
}

- (void)handleStartStopwatchShortcutAction
{
  deferredPublisher = [(MTAStopwatchViewController *)self deferredPublisher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100036D80;
  v4[3] = &unk_1000AD9F0;
  v4[4] = self;
  [deferredPublisher deferActionWithTimeOut:v4 completion:0.1];
}

- (void)handleStopStopwatchShortcutAction
{
  deferredPublisher = [(MTAStopwatchViewController *)self deferredPublisher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100036EE4;
  v4[3] = &unk_1000AD9F0;
  v4[4] = self;
  [deferredPublisher deferActionWithTimeOut:v4 completion:0.1];
}

- (void)handleLapStopwatchShortcutAction
{
  deferredPublisher = [(MTAStopwatchViewController *)self deferredPublisher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037004;
  v4[3] = &unk_1000AD9F0;
  v4[4] = self;
  [deferredPublisher deferActionWithTimeOut:v4 completion:0.1];
}

- (void)handleResetStopwatchShortcutAction
{
  deferredPublisher = [(MTAStopwatchViewController *)self deferredPublisher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037124;
  v4[3] = &unk_1000AD9F0;
  v4[4] = self;
  [deferredPublisher deferActionWithTimeOut:v4 completion:0.1];
}

- (void)_pageControlValueChanged:(id)changed
{
  changedCopy = changed;
  pagingViewController = [(MTAStopwatchViewController *)self pagingViewController];
  currentPage = [changedCopy currentPage];

  [pagingViewController setCurrentPage:currentPage animated:1];
}

- (void)startDisplayUpdates
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ startDisplayUpdates", &v9, 0xCu);
  }

  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel invalidateDisplayLink];

  viewModel2 = [(MTAStopwatchViewController *)self viewModel];
  [viewModel2 updateWithDisplayLink];

  [(NSTimer *)self->_restoreIdleTimerTimer invalidate];
  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"_restoreIdleTimer" selector:0 userInfo:0 repeats:300.0];
  restoreIdleTimerTimer = self->_restoreIdleTimerTimer;
  self->_restoreIdleTimerTimer = v6;

  v8 = +[UIApplication sharedApplication];
  [v8 setIdleTimerDisabled:1];
}

- (void)endDisplayUpdates
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ endDisplayUpdates", &v5, 0xCu);
  }

  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel invalidateDisplayLink];

  [(MTAStopwatchViewController *)self _restoreIdleTimer];
}

- (void)_restoreIdleTimer
{
  [(NSTimer *)self->_restoreIdleTimerTimer invalidate];
  restoreIdleTimerTimer = self->_restoreIdleTimerTimer;
  self->_restoreIdleTimerTimer = 0;

  v4 = +[UIApplication sharedApplication];
  [v4 setIdleTimerDisabled:0];
}

- (double)runningTotalForLap:(int64_t)lap
{
  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel runningTotalForLap:lap];
  v6 = v5;

  return v6;
}

- (void)startLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting lap timer", &v11, 0xCu);
  }

  viewModel = [(MTAStopwatchViewController *)self viewModel];
  getStopwatch = [viewModel getStopwatch];
  laps = [getStopwatch laps];
  v7 = [laps count];

  if (v7)
  {
    viewModel2 = [(MTAStopwatchViewController *)self viewModel];
    [viewModel2 clearAllLaps];
  }

  viewModel3 = [(MTAStopwatchViewController *)self viewModel];
  [viewModel3 startLapTimer];

  [(MTAStopwatchViewController *)self startDisplayUpdates];
  [(MTAStopwatchViewController *)self setMode:2];
  lapTableController = [(MTAStopwatchViewController *)self lapTableController];
  [lapTableController setShowsCurrentLap:1];

  [MTAnalytics incrementEventCount:kMTCAStopwatchStarts];
}

- (void)pauseLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ pausing lap timer", &v5, 0xCu);
  }

  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel pauseLapTimer];

  [(MTAStopwatchViewController *)self pauseLapTimerUI];
}

- (void)pauseLapTimerUI
{
  [(MTAStopwatchViewController *)self endDisplayUpdates];
  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel updateTime];

  [(MTAStopwatchViewController *)self setMode:3];
  v4 = kMTCAStopwatchPauses;

  [MTAnalytics incrementEventCount:v4];
}

- (void)lapLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ lapping lap timer", &v5, 0xCu);
  }

  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel lapLapTimer];

  [(MTAStopwatchViewController *)self lapLapTimerUI];
}

- (void)lapLapTimerUI
{
  viewModel = [(MTAStopwatchViewController *)self viewModel];
  getStopwatch = [viewModel getStopwatch];
  laps = [getStopwatch laps];
  lastObject = [laps lastObject];
  [lastObject doubleValue];
  v8 = v7;

  lapTableController = [(MTAStopwatchViewController *)self lapTableController];
  [lapTableController addLap:v8];

  v10 = kMTCAStopwatchLaps;

  [MTAnalytics incrementEventCount:v10];
}

- (void)resetLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting lap timer", &v6, 0xCu);
  }

  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel resetLapTimer];

  [(MTAStopwatchViewController *)self resetLapTimerUI];
  viewModel2 = [(MTAStopwatchViewController *)self viewModel];
  [viewModel2 updateTime];
}

- (void)resetLapTimerUI
{
  [(MTAStopwatchViewController *)self endDisplayUpdates];
  [(MTAStopwatchViewController *)self setMode:1];
  lapTableController = [(MTAStopwatchViewController *)self lapTableController];
  [lapTableController setShowsCurrentLap:0];

  lapTableController2 = [(MTAStopwatchViewController *)self lapTableController];
  [lapTableController2 clearAllLaps];

  v5 = kMTCAStopwatchResets;

  [MTAnalytics incrementEventCount:v5];
}

- (void)resumeLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming lap timer", &v5, 0xCu);
  }

  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel resumeLapTimer];

  [(MTAStopwatchViewController *)self resumeLapTimerUI];
}

- (void)resumeLapTimerUI
{
  [(MTAStopwatchViewController *)self startDisplayUpdates];

  [(MTAStopwatchViewController *)self setMode:2];
}

- (void)didAddLap:(double)lap
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@ didAddLap", &v5, 0xCu);
  }

  [(MTAStopwatchViewController *)self lapLapTimerUI];
}

- (void)didLapLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ didLapLapTimer", &v4, 0xCu);
  }

  [(MTAStopwatchViewController *)self lapLapTimerUI];
}

- (void)didPauseLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ didPauseLapTimer", &v4, 0xCu);
  }

  [(MTAStopwatchViewController *)self pauseLapTimerUI];
}

- (void)didPauseStopwatch
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ didPauseStopwatch", &v4, 0xCu);
  }

  [(MTAStopwatchViewController *)self endDisplayUpdates];
  [(MTAStopwatchViewController *)self setMode:3];
}

- (void)didResetLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ didResetLapTimer", &v5, 0xCu);
  }

  [(MTAStopwatchViewController *)self resetLapTimerUI];
  viewModel = [(MTAStopwatchViewController *)self viewModel];
  [viewModel updateTime];
}

- (void)didResumeLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ didResumeLapTimer", &v4, 0xCu);
  }

  [(MTAStopwatchViewController *)self resumeLapTimerUI];
}

- (void)didStartLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ didStartLapTimer", &v4, 0xCu);
  }

  [(MTAStopwatchViewController *)self startLapTimer];
}

- (void)didUpdateCurrentInterval:(double)interval adjustedCurrentInterval:(double)currentInterval totalInterval:(double)totalInterval adjustedTotalInterval:(double)adjustedTotalInterval isStopwatchRunning:(BOOL)running isStopwatchStopped:(BOOL)stopped
{
  runningCopy = running;
  if ([(MTAStopwatchViewController *)self shouldProcessUpdate:running])
  {
    timeView = [(MTAStopwatchViewController *)self timeView];
    v15 = timeView;
    if (!runningCopy)
    {
      adjustedTotalInterval = totalInterval;
      currentInterval = interval;
    }

    [timeView setTime:adjustedTotalInterval];

    analogStopwatch = [(MTAStopwatchViewController *)self analogStopwatch];
    [analogStopwatch setDisplayAdjustedElapsedTime:adjustedTotalInterval];

    lapTableController = [(MTAStopwatchViewController *)self lapTableController];
    [lapTableController setCurrentInterval:currentInterval];

    analogStopwatch2 = [(MTAStopwatchViewController *)self analogStopwatch];
    [analogStopwatch2 setElapsedTime:totalInterval];

    analogStopwatch3 = [(MTAStopwatchViewController *)self analogStopwatch];
    [analogStopwatch3 setCurrentLapTime:interval];
  }
}

- (CGSize)latestLayoutSize
{
  width = self->_latestLayoutSize.width;
  height = self->_latestLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end