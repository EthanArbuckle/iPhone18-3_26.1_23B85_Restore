@interface MTAStopwatchViewController
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldUseRegularLayout;
- (CGSize)latestLayoutSize;
- (MTAStopwatchViewController)init;
- (double)runningTotalForLap:(int64_t)a3;
- (id)defaultShortcutItem;
- (id)shortcutItemForMode:(unint64_t)a3;
- (id)startStopwatchShortcutItemForMode:(unint64_t)a3;
- (id)stopStopwatchShortcutItem;
- (void)_pageControlValueChanged:(id)a3;
- (void)_restoreIdleTimer;
- (void)dealloc;
- (void)didAddLap:(double)a3;
- (void)didLapLapTimer;
- (void)didPauseLapTimer;
- (void)didPauseStopwatch;
- (void)didResetLapTimer;
- (void)didResumeLapTimer;
- (void)didStartLapTimer;
- (void)didUpdateCurrentInterval:(double)a3 adjustedCurrentInterval:(double)a4 totalInterval:(double)a5 adjustedTotalInterval:(double)a6 isStopwatchRunning:(BOOL)a7 isStopwatchStopped:(BOOL)a8;
- (void)endDisplayUpdates;
- (void)handleContentSizeCategoryChange:(id)a3;
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
- (void)reloadStopwatchesWithCompletion:(id)a3;
- (void)renderViewModel;
- (void)resetLapTimer;
- (void)resetLapTimerUI;
- (void)resumeLapTimer;
- (void)resumeLapTimerUI;
- (void)saveState;
- (void)setMode:(unint64_t)a3;
- (void)setupViewModelWithStopwatch:(id)a3;
- (void)startDisplayUpdates;
- (void)startLapTimer;
- (void)stopwatchPagingViewController:(id)a3 didPage:(unint64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateShortcutItemForCurrentState;
- (void)updateTimeViewFont;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
    v7 = [(MTAStopwatchViewController *)v2 tabBarItem];
    [v7 setImage:v6];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"STOP_WATCH" value:&stru_1000AEF10 table:0];
    [(MTAStopwatchViewController *)v2 setTitle:v9];

    [(MTAStopwatchViewController *)v2 setEdgesForExtendedLayout:5];
    v10 = [[MTAStopwatchLapTableViewController alloc] initWithStyle:1];
    [(MTAStopwatchViewController *)v2 setLapTableController:v10];

    v11 = [(MTAStopwatchViewController *)v2 lapTableController];
    [(MTAStopwatchViewController *)v2 addChildViewController:v11];

    v12 = [(MTAStopwatchViewController *)v2 title];
    v13 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.stopwatch" title:v12];
    userActivity = v2->_userActivity;
    v2->_userActivity = v13;

    v15 = objc_opt_new();
    [(MTAStopwatchViewController *)v2 setStopwatchManager:v15];

    v16 = [MTLegacyStopwatchMigrator alloc];
    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = [(MTAStopwatchViewController *)v2 stopwatchManager];
    v19 = [v16 initWithDefaults:v17 manager:v18];
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
  v3 = [(MTAStopwatchViewController *)self timeView];
  [v3 handleLocaleChange];

  v4 = [(MTAStopwatchViewController *)self analogStopwatch];
  [v4 handleLocaleChange];

  [(objc_class *)[(MTAStopwatchViewController *)self tableCellClass] handleLocaleChange];
  v6 = [(MTAStopwatchViewController *)self lapTableController];
  v5 = [v6 tableView];
  [v5 reloadData];
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    v6 = [(MTAStopwatchViewController *)self stopwatchController];
    [v6 setMode:a3];

    [(MTAStopwatchViewController *)self updateShortcutItemForCurrentState];
  }
}

- (void)updateTimeViewFont
{
  v3 = [(MTAStopwatchViewController *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (MTUIShouldUseLargePadLayout())
  {
    v5 = &qword_10008BDC0;
  }

  else
  {
    v5 = &unk_10008BDB8;
    if (v4 != 2)
    {
      v5 = &qword_10008BDB0;
    }
  }

  v8 = [UIFont systemFontOfSize:*v5 weight:UIFontWeightThin];
  v6 = [v8 mtui_fontByAddingTimeFontAttributes];
  v7 = [(MTAStopwatchViewController *)self timeView];
  [v7 setFont:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(MTAStopwatchViewController *)self lapTableController];
  v3 = [v4 tableView];
  [v3 reloadData];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a3.width / a3.height;
  v8 = a4;
  v9 = [(MTAStopwatchViewController *)self pagingViewController];
  v10 = v9;
  if (v7 > 0.9)
  {
    [v9 setCurrentPage:0];

    v11 = [(MTAStopwatchViewController *)self pageControl];
    [v11 setCurrentPage:0];

    v10 = [(MTAStopwatchViewController *)self pagingViewController];
  }

  v12 = [v10 scrollView];
  [v12 setScrollEnabled:v7 <= 0.9];

  v15.receiver = self;
  v15.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v15 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000333F0;
  v13[3] = &unk_1000AE3D0;
  v13[4] = self;
  v14 = v7 > 0.9;
  [v8 animateAlongsideTransition:v13 completion:0];
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
  v10 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
  [v10 setBackgroundColor:v9];

  v11 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(MTAStopwatchViewController *)self view];
  v13 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
  [v12 addSubview:v13];

  v14 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MTAStopwatchViewController *)self setStartButtonOccludingView:v14];

  v15 = +[UIColor clearColor];
  v16 = [(MTAStopwatchViewController *)self startButtonOccludingView];
  [v16 setBackgroundColor:v15];

  v17 = [(MTAStopwatchViewController *)self startButtonOccludingView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(MTAStopwatchViewController *)self view];
  v19 = [(MTAStopwatchViewController *)self startButtonOccludingView];
  [v18 addSubview:v19];

  v20 = [(MTAStopwatchViewController *)self view];
  v21 = [(MTAStopwatchViewController *)self stopwatchController];
  v22 = [v21 startStopButton];
  [v20 addSubview:v22];

  v23 = [(MTAStopwatchViewController *)self view];
  v24 = [(MTAStopwatchViewController *)self stopwatchController];
  v25 = [v24 lapControlButton];
  [v23 addSubview:v25];

  v26 = [(MTAStopwatchViewController *)self stopwatchController];
  v27 = [v26 startStopButton];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = [(MTAStopwatchViewController *)self stopwatchController];
  v29 = [v28 lapControlButton];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  LODWORD(v28) = [(MTAStopwatchViewController *)self shouldUseRegularLayout];
  v30 = [(MTAStopwatchViewController *)self stopwatchController];
  [v30 setButtonSize:v28];

  v31 = [(MTAStopwatchViewController *)self view];
  v32 = [(MTAStopwatchViewController *)self lapTableController];
  v33 = [v32 view];
  [v31 addSubview:v33];

  v34 = [(MTAStopwatchViewController *)self lapTableController];
  [v34 didMoveToParentViewController:self];

  v35 = [(MTAStopwatchViewController *)self lapTableController];
  v36 = [v35 view];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [[MTAStopwatchLapTableHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MTAStopwatchViewController *)self setTableHeaderView:v37];

  v38 = [(MTAStopwatchViewController *)self tableHeaderView];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = [(MTAStopwatchViewController *)self tableHeaderView];
  [v39 setHidden:1];

  v40 = [(MTAStopwatchViewController *)self view];
  v41 = [(MTAStopwatchViewController *)self tableHeaderView];
  [v40 addSubview:v41];

  v42 = objc_alloc_init(MTAStopwatchPagingViewController);
  [(MTAStopwatchViewController *)self setPagingViewController:v42];

  v43 = [(MTAStopwatchViewController *)self pagingViewController];
  [(MTAStopwatchViewController *)self addChildViewController:v43];

  v44 = [(MTAStopwatchViewController *)self pagingViewController];
  v45 = [v44 view];
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

  v46 = [(MTAStopwatchViewController *)self pagingViewController];
  [v46 setDelegate:self];

  v47 = [(MTAStopwatchViewController *)self view];
  v48 = [(MTAStopwatchViewController *)self pagingViewController];
  v49 = [v48 view];
  [v47 insertSubview:v49 atIndex:0];

  v50 = [(MTAStopwatchViewController *)self pagingViewController];
  [v50 didMoveToParentViewController:self];

  v51 = [[UIPageControl alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MTAStopwatchViewController *)self setPageControl:v51];

  v52 = [(MTAStopwatchViewController *)self pageControl];
  [v52 addTarget:self action:"_pageControlValueChanged:" forControlEvents:4096];

  v53 = [(MTAStopwatchViewController *)self pageControl];
  [v53 setNumberOfPages:2];

  v54 = [(MTAStopwatchViewController *)self pageControl];
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

  v55 = [(MTAStopwatchViewController *)self view];
  v56 = [(MTAStopwatchViewController *)self pageControl];
  [v55 addSubview:v56];

  v57 = objc_alloc_init(MTUITimeView);
  [(MTAStopwatchViewController *)self setTimeView:v57];

  v58 = [UIFont systemFontOfSize:88.0 weight:UIFontWeightThin];
  v59 = [v58 mtui_fontByAddingTimeFontAttributes];
  v60 = [(MTAStopwatchViewController *)self timeView];
  [v60 setFont:v59];

  v61 = +[UIColor mtui_primaryTextColor];
  v62 = [(MTAStopwatchViewController *)self timeView];
  [v62 setTextColor:v61];

  v63 = [(MTAStopwatchViewController *)self timeView];
  [v63 setTextAlignment:1];

  v64 = [(MTAStopwatchViewController *)self timeView];
  [v64 setAdjustsFontSizeToFitWidth:1];

  v65 = +[UIColor clearColor];
  v66 = [(MTAStopwatchViewController *)self timeView];
  [v66 setBackgroundColor:v65];

  v67 = [(MTAStopwatchViewController *)self timeView];
  [v67 setTranslatesAutoresizingMaskIntoConstraints:0];

  v68 = [(MTAStopwatchViewController *)self timeView];
  [v68 setAccessibilityIdentifier:@"stopwatch-time"];

  v69 = objc_opt_new();
  [(MTAStopwatchViewController *)self setDigitalStopwatchContainer:v69];

  v70 = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
  v71 = [(MTAStopwatchViewController *)self timeView];
  [v70 addSubview:v71];

  v72 = objc_alloc_init(MTAAnalogStopwatchView);
  [(MTAStopwatchViewController *)self setAnalogStopwatch:v72];

  v73 = +[UIColor clearColor];
  v74 = [(MTAStopwatchViewController *)self analogStopwatch];
  [v74 setBackgroundColor:v73];

  v75 = [(MTAStopwatchViewController *)self analogStopwatch];
  [v75 setTranslatesAutoresizingMaskIntoConstraints:0];

  v76 = objc_opt_new();
  [(MTAStopwatchViewController *)self setAnalogStopwatchContainer:v76];

  v77 = [(MTAStopwatchViewController *)self analogStopwatchContainer];
  v78 = [(MTAStopwatchViewController *)self analogStopwatch];
  [v77 addSubview:v78];

  v79 = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
  v97[0] = v79;
  v80 = [(MTAStopwatchViewController *)self analogStopwatchContainer];
  v97[1] = v80;
  v81 = [NSArray arrayWithObjects:v97 count:2];
  v82 = [(MTAStopwatchViewController *)self pagingViewController];
  [v82 setPages:v81];

  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v83 = +[NSNotificationCenter defaultCenter];
    [v83 addObserver:self selector:"handleLocaleChange" name:NSCurrentLocaleDidChangeNotification object:0];

    [(MTAStopwatchViewController *)self updateShortcutItemForCurrentState];
    v84 = [(MTAStopwatchViewController *)self migrator];
    v85 = [v84 needsMigration];

    v86 = MTLogForCategory();
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
    if (v85)
    {
      if (v87)
      {
        *buf = 138543362;
        v96 = self;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%{public}@ stopwatch need migration", buf, 0xCu);
      }

      v88 = [(MTAStopwatchViewController *)self migrator];
      v89 = [v88 migrateLegacyStopwatch];
      v90 = +[NAScheduler mainThreadScheduler];
      v91 = [v89 reschedule:v90];
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
        v96 = self;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%{public}@ migration not needed, proceeding to load stopwatch", buf, 0xCu);
      }

      [(MTAStopwatchViewController *)self reloadStopwatchesWithCompletion:0];
    }
  }
}

- (void)reloadStopwatchesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MTAStopwatchViewController *)self stopwatchManager];
  v6 = [v5 getStopwatches];
  v7 = +[NAScheduler mainThreadScheduler];
  v8 = [v6 reschedule:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000341B8;
  v11[3] = &unk_1000AE420;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  v10 = [v8 addCompletionBlock:v11];
}

- (void)setupViewModelWithStopwatch:(id)a3
{
  v6 = a3;
  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 identifier];
    v31 = 138543618;
    v32 = self;
    v33 = 2114;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@ setting up view model with stopwatch: %{public}@", &v31, 0x16u);
  }

  v9 = [(MTAStopwatchViewController *)self viewModel];

  v10 = MTLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = [v6 identifier];
      v31 = 138543618;
      v32 = self;
      v33 = 2114;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ view model already exists, updating with stopwatch: %{public}@", &v31, 0x16u);
    }

    v13 = [(MTAStopwatchViewController *)self viewModel];
    v14 = [v6 mutableCopy];
    [v13 updateStopwatch:v14];
  }

  else
  {
    if (v11)
    {
      v15 = [v6 identifier];
      v31 = 138543618;
      v32 = self;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ view model does not exist, creating new one with stopwatch: %{public}@", &v31, 0x16u);
    }

    v16 = [MTStopwatchViewModel alloc];
    v13 = [v6 mutableCopy];
    v14 = [(MTAStopwatchViewController *)self stopwatchManager];
    v3 = objc_opt_new();
    v17 = [v16 initWithStopwatch:v13 manager:v14 delegate:self dateProvider:v3 registerForNotifications:1 broadcastUpdates:0];
    [(MTAStopwatchViewController *)self setViewModel:v17];
  }

  if ([v6 state] == 2)
  {
    v18 = [(MTAStopwatchViewController *)self viewModel];
    [v18 updateWithDisplayLink];

    v19 = 2;
  }

  else if ([v6 state] == 1)
  {
    v19 = 3;
  }

  else
  {
    v19 = 1;
  }

  [(MTAStopwatchViewController *)self setMode:v19];
  v20 = [(MTAStopwatchViewController *)self viewModel];
  [v20 updateTime];

  v21 = [(MTAStopwatchViewController *)self viewModel];
  v22 = [v21 getStopwatch];
  v23 = [v22 state];
  if (v23 == 2)
  {
    v24 = 1;
  }

  else
  {
    v3 = [(MTAStopwatchViewController *)self viewModel];
    v4 = [v3 getStopwatch];
    [v4 currentInterval];
    v24 = v25 > 0.0;
  }

  v26 = [(MTAStopwatchViewController *)self lapTableController];
  [v26 setShowsCurrentLap:v24];

  if (v23 != 2)
  {
  }

  v27 = [(MTAStopwatchViewController *)self lapTableController];
  v28 = [(MTAStopwatchViewController *)self viewModel];
  v29 = [v28 getStopwatch];
  v30 = [v29 laps];
  [v27 setLaps:v30];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v14 viewDidLoad];
  [(MTAStopwatchViewController *)self updateTimeViewFont];
  v3 = [(MTAStopwatchViewController *)self lapTableController];
  v4 = [v3 tableView];

  [(MTAStopwatchViewController *)self _setObservableScrollView:v4 forEdges:4];
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

  v8 = [v7 integerValue];
  v9 = [(MTAStopwatchViewController *)self pagingViewController];
  [v9 setCurrentPage:v8];

  v10 = [(MTAStopwatchViewController *)self pageControl];
  [v10 setCurrentPage:v8];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"handleContentSizeCategoryChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"handleEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"handleEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)handleContentSizeCategoryChange:(id)a3
{
  v4 = [(MTAStopwatchViewController *)self view];
  [v4 bounds];
  v6 = v5;

  v7 = [(MTAStopwatchViewController *)self stopwatchController];
  v24 = [v7 startStopButton];

  MTUIShouldUseLargePadLayout();
  v8 = [(MTAStopwatchViewController *)self shouldUseRegularLayout];
  v9 = [(MTAStopwatchViewController *)self view];
  [v9 bounds];

  v10 = +[UIScreen mainScreen];
  [v10 bounds];
  Height = CGRectGetHeight(v26);

  if (v8)
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
    v14 = [(MTAStopwatchViewController *)self view];
    [v14 bounds];
    fmin(Height * 0.542, CGRectGetWidth(v27));

    v15 = [(MTAStopwatchViewController *)self view];
    [v15 safeAreaInsets];

    [MTACircleButton buttonWidthForSize:0];
    v13 = (v6 + 16.0 * -2.0) * 0.25;
    +[MTACircleButton buttonWidthForSize:](MTACircleButton, "buttonWidthForSize:", [v24 buttonCircleSize]);
    if (v16 < v13)
    {
      v13 = v16;
    }
  }

  v17 = [(MTAStopwatchViewController *)self view];
  UIRoundToViewScale();
  v19 = v18;

  v20 = [(MTAStopwatchViewController *)self startButtonTopConstraint];
  [v20 setConstant:v19];

  v21 = [(MTAStopwatchViewController *)self lapButtonTopConstraint];
  [v21 setConstant:v19];

  v22 = [(MTAStopwatchViewController *)self startButtonWidthConstraint];
  [v22 setConstant:v13];

  v23 = [(MTAStopwatchViewController *)self lapButtonWidthConstraint];
  [v23 setConstant:v13];
}

- (BOOL)shouldUseRegularLayout
{
  v3 = MTUIShouldUseLargePadLayout();
  v4 = [(MTAStopwatchViewController *)self traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
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
  v3 = [(MTAStopwatchViewController *)self view];
  [v3 bounds];
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
    v11 = [(MTAStopwatchViewController *)self lapTableController];
    v12 = [v11 tableView];

    v13 = [(MTAStopwatchViewController *)self tableHeaderView];
    v14 = [(MTAStopwatchViewController *)self pagingViewController];
    v175 = [v14 view];

    v15 = +[NSMutableArray array];
    v16 = [(MTAStopwatchViewController *)self stopwatchController];
    v17 = [v16 startStopButton];

    v18 = [(MTAStopwatchViewController *)self stopwatchController];
    v19 = [v18 lapControlButton];

    v180 = 0u;
    v181 = 0u;
    v20 = [(MTAStopwatchViewController *)self view];
    +[MTAUtilities controlButtonAttributesForView:buttonCircleSize:](MTAUtilities, "controlButtonAttributesForView:buttonCircleSize:", v20, [v17 buttonCircleSize]);

    v176 = v13;
    v178 = v17;
    v21 = [v17 topAnchor];
    v22 = [(MTAStopwatchViewController *)self view];
    v23 = [v22 safeAreaLayoutGuide];
    v24 = [v23 topAnchor];
    v25 = [v21 constraintEqualToAnchor:v24 constant:0.0];
    [(MTAStopwatchViewController *)self setStartButtonTopConstraint:v25];

    v26 = [v19 topAnchor];
    v27 = [(MTAStopwatchViewController *)self view];
    v28 = [v27 safeAreaLayoutGuide];
    v29 = [v28 topAnchor];
    v30 = [v26 constraintEqualToAnchor:v29 constant:0.0];
    [(MTAStopwatchViewController *)self setLapButtonTopConstraint:v30];

    v31 = [(MTAStopwatchViewController *)self lapButtonTopConstraint];
    [v15 addObject:v31];

    v32 = [(MTAStopwatchViewController *)self startButtonTopConstraint];
    [v15 addObject:v32];

    v33 = [v19 leadingAnchor];
    v34 = [(MTAStopwatchViewController *)self view];
    v35 = [v34 leadingAnchor];
    v36 = [v33 constraintEqualToAnchor:v35 constant:16.0];
    [v15 addObject:v36];

    v37 = [v19 widthAnchor];
    v38 = [v37 constraintEqualToConstant:0.0];
    [(MTAStopwatchViewController *)self setLapButtonWidthConstraint:v38];

    v39 = [(MTAStopwatchViewController *)self lapButtonWidthConstraint];
    [v15 addObject:v39];

    v40 = [v19 heightAnchor];
    v41 = [v19 widthAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    [v15 addObject:v42];

    v43 = [v178 trailingAnchor];
    v44 = [(MTAStopwatchViewController *)self view];
    v45 = [v44 trailingAnchor];
    v46 = [v43 constraintEqualToAnchor:v45 constant:-16.0];
    [v15 addObject:v46];

    v47 = [v178 widthAnchor];
    v48 = [v47 constraintEqualToConstant:0.0];
    [(MTAStopwatchViewController *)self setStartButtonWidthConstraint:v48];

    v49 = [(MTAStopwatchViewController *)self startButtonWidthConstraint];
    [v15 addObject:v49];

    v50 = [v178 heightAnchor];
    v51 = [v178 widthAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v15 addObject:v52];

    v53 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    v54 = [v53 centerXAnchor];
    v55 = [v19 centerXAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];
    [v15 addObject:v56];

    v57 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    v58 = [v57 centerYAnchor];
    v59 = [v19 centerYAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    [v15 addObject:v60];

    v61 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    v62 = [v61 widthAnchor];
    v63 = [v19 widthAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 multiplier:1.0 constant:2.0];
    [v15 addObject:v64];

    v65 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    v66 = [v65 heightAnchor];
    v177 = v19;
    v67 = [v19 heightAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 multiplier:1.0 constant:2.0];
    [v15 addObject:v68];

    v69 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    v70 = [v69 centerXAnchor];
    v71 = [v178 centerXAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    [v15 addObject:v72];

    v73 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    v74 = [v73 centerYAnchor];
    v75 = [v178 centerYAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    [v15 addObject:v76];

    v77 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    v78 = [v77 widthAnchor];
    v79 = [v178 widthAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 multiplier:1.0 constant:2.0];
    [v15 addObject:v80];

    v81 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    v82 = [v81 heightAnchor];
    v83 = [v178 heightAnchor];
    v84 = [v82 constraintEqualToAnchor:v83 multiplier:1.0 constant:2.0];
    [v15 addObject:v84];

    v85 = sub_100032F18(0.0 + 2.0);
    v86 = [(MTAStopwatchViewController *)self lapButtonOccludingView];
    [v86 setImage:v85];

    v87 = [(MTAStopwatchViewController *)self startButtonOccludingView];
    v174 = v85;
    [v87 setImage:v85];

    v88 = [v12 topAnchor];
    v89 = v19;
    v90 = [v19 bottomAnchor];
    v91 = [v88 constraintEqualToAnchor:v90 constant:16.0];
    [v15 addObject:v91];

    v92 = [v12 leadingAnchor];
    v93 = [(MTAStopwatchViewController *)self view];
    v94 = [v93 leadingAnchor];
    v95 = [v92 constraintEqualToAnchor:v94];
    [v15 addObject:v95];

    v96 = [v12 trailingAnchor];
    v97 = [(MTAStopwatchViewController *)self view];
    v98 = [v97 trailingAnchor];
    v99 = [v96 constraintEqualToAnchor:v98];
    [v15 addObject:v99];

    v100 = [(MTAStopwatchViewController *)self pageControl];
    v101 = [v100 centerXAnchor];
    v102 = [(MTAStopwatchViewController *)self view];
    v103 = [v102 centerXAnchor];
    v104 = [v101 constraintEqualToAnchor:v103];
    [v15 addObject:v104];

    v105 = [(MTAStopwatchViewController *)self pageControl];
    v106 = [v105 centerYAnchor];
    v107 = [v89 centerYAnchor];
    v108 = [v106 constraintEqualToAnchor:v107];
    [v15 addObject:v108];

    v109 = [v12 bottomAnchor];
    v110 = [(MTAStopwatchViewController *)self view];
    v111 = [v110 bottomAnchor];
    v112 = [v109 constraintEqualToAnchor:v111];
    [v15 addObject:v112];

    v113 = [(MTAStopwatchViewController *)self lapTableController];
    [v113 setCellStyle:1];

    v114 = [(MTAStopwatchViewController *)self tableHeaderView];
    [v114 setHidden:(BYTE9(v181) ^ 1) & 1];

    v115 = [v175 leadingAnchor];
    v116 = [(MTAStopwatchViewController *)self view];
    v117 = [v116 leadingAnchor];
    v118 = [v115 constraintEqualToAnchor:v117];
    [v15 addObject:v118];

    v119 = [v175 trailingAnchor];
    v120 = [(MTAStopwatchViewController *)self view];
    v121 = [v120 trailingAnchor];
    v122 = [v119 constraintEqualToAnchor:v121];
    [v15 addObject:v122];

    v123 = [v175 topAnchor];
    v124 = [(MTAStopwatchViewController *)self view];
    v125 = [v124 safeAreaLayoutGuide];
    v126 = [v125 topAnchor];
    v127 = [v123 constraintEqualToAnchor:v126];
    [v15 addObject:v127];

    v128 = [v175 bottomAnchor];
    v129 = [(MTAStopwatchViewController *)self pageControl];
    v130 = [v129 topAnchor];
    v131 = [v128 constraintEqualToAnchor:v130 constant:15.0];
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

    v137 = [(MTAStopwatchViewController *)self analogStopwatch];
    v138 = [v137 centerXAnchor];
    v139 = [(MTAStopwatchViewController *)self analogStopwatchContainer];
    v140 = [v139 centerXAnchor];
    v141 = [v138 constraintEqualToAnchor:v140];
    [v15 addObject:v141];

    v142 = [(MTAStopwatchViewController *)self analogStopwatch];
    v143 = [v142 topAnchor];
    v144 = [(MTAStopwatchViewController *)self analogStopwatchContainer];
    v145 = [v144 topAnchor];
    v146 = [v143 constraintEqualToAnchor:v145 constant:v136];
    [v15 addObject:v146];

    v147 = [(MTAStopwatchViewController *)self analogStopwatch];
    v148 = [v147 bottomAnchor];
    v149 = [(MTAStopwatchViewController *)self analogStopwatchContainer];
    v150 = [v149 bottomAnchor];
    v151 = [v148 constraintEqualToAnchor:v150 constant:-v136];

    LODWORD(v152) = 1148829696;
    [v151 setPriority:v152];
    [v15 addObject:v151];
    v153 = [(MTAStopwatchViewController *)self analogStopwatch];
    v154 = [v153 widthAnchor];
    v155 = [(MTAStopwatchViewController *)self analogStopwatch];
    v156 = [v155 heightAnchor];
    v157 = [v154 constraintEqualToAnchor:v156];
    [v15 addObject:v157];

    v158 = [(MTAStopwatchViewController *)self timeView];
    v159 = [v158 leadingAnchor];
    v160 = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
    v161 = [v160 leadingAnchor];
    v162 = [v159 constraintEqualToAnchor:v161];
    [v15 addObject:v162];

    v163 = [(MTAStopwatchViewController *)self timeView];
    v164 = [v163 trailingAnchor];
    v165 = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
    v166 = [v165 trailingAnchor];
    v167 = [v164 constraintEqualToAnchor:v166];
    [v15 addObject:v167];

    v168 = [(MTAStopwatchViewController *)self timeView];
    v169 = [v168 centerYAnchor];
    v170 = [(MTAStopwatchViewController *)self digitalStopwatchContainer];
    v171 = [v170 centerYAnchor];
    v172 = [v169 constraintEqualToAnchor:v171];
    [v15 addObject:v172];

    v173 = [(MTAStopwatchViewController *)self constraints];
    [NSLayoutConstraint deactivateConstraints:v173];

    [NSLayoutConstraint activateConstraints:v15];
    [(MTAStopwatchViewController *)self setConstraints:v15];
    [(MTAStopwatchViewController *)self setLatestLayoutSize:v5, v7];
    v179.receiver = self;
    v179.super_class = MTAStopwatchViewController;
    [(MTAStopwatchViewController *)&v179 updateViewConstraints];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v6 viewWillAppear:a3];
  v4 = [(MTAStopwatchViewController *)self view];
  [v4 setNeedsUpdateConstraints];

  [(MTAStopwatchViewController *)self renderViewModel];
  v5 = [(MTAStopwatchViewController *)self deferredPublisher];
  [v5 publish];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v4 viewDidAppear:a3];
  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)renderViewModel
{
  v3 = [(MTAStopwatchViewController *)self viewModel];
  v4 = [v3 getStopwatch];
  v5 = [v4 state];

  if (v5 == 2)
  {
    [(MTAStopwatchViewController *)self startDisplayUpdates];
    v6 = 2;
  }

  else
  {
    v7 = [(MTAStopwatchViewController *)self viewModel];
    v8 = [v7 getStopwatch];
    [v8 currentInterval];
    v10 = v9;

    if (v10 <= 0.0)
    {
      goto LABEL_6;
    }

    v6 = 3;
  }

  [(MTAStopwatchViewController *)self setMode:v6];
LABEL_6:
  v11 = [(MTAStopwatchViewController *)self viewModel];
  v12 = [v11 getStopwatch];
  [v12 currentInterval];
  v14 = v13;

  if (v14 > 0.0)
  {
    v15 = [(MTAStopwatchViewController *)self viewModel];
    [v15 updateTime];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v5.receiver = self;
  v5.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v4 viewDidDisappear:a3];
  [(MTAStopwatchViewController *)self endDisplayUpdates];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = MTAStopwatchViewController;
  [(MTAStopwatchViewController *)&v12 viewDidLayoutSubviews];
  v3 = [(MTAStopwatchViewController *)self view];
  [v3 bounds];
  v6 = v4 / v5;

  v7 = [(MTAStopwatchViewController *)self pagingViewController];
  v8 = v7;
  v9 = 1.0;
  if (v6 > 0.9)
  {
    [v7 setCurrentPage:0];

    v8 = [(MTAStopwatchViewController *)self pagingViewController];
    v9 = 0.0;
  }

  v10 = [v8 scrollView];
  [v10 setScrollEnabled:v6 <= 0.9];

  v11 = [(MTAStopwatchViewController *)self pageControl];
  [v11 setAlpha:v9];
}

- (BOOL)prefersStatusBarHidden
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 0;
  }

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 delegate];

  v4 = [v6 interfaceOrientation] - 3 < 2;
  return v4;
}

- (void)stopwatchPagingViewController:(id)a3 didPage:(unint64_t)a4
{
  v5 = [(MTAStopwatchViewController *)self pageControl];
  [v5 setCurrentPage:a4];
}

- (void)saveState
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v3 = [(MTAStopwatchViewController *)self pagingViewController];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 currentPage]);
  [v5 setObject:v4 forKey:@"STOPWATCH_INDEX"];
}

- (void)updateShortcutItemForCurrentState
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 shortcutItems];
  v8 = [v4 mutableCopy];

  v5 = [v8 indexOfObjectPassingTest:&stru_1000AE460];
  v6 = [(MTAStopwatchViewController *)self shortcutItemForCurrentState];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 insertObject:v6 atIndex:0];
  }

  else
  {
    [v8 replaceObjectAtIndex:v5 withObject:v6];
  }

  v7 = +[UIApplication sharedApplication];
  [v7 setShortcutItems:v8];
}

- (id)shortcutItemForMode:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
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

- (id)startStopwatchShortcutItemForMode:(unint64_t)a3
{
  v4 = [UIApplicationShortcutIcon iconWithSystemImageName:@"stopwatch"];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (a3 == 1)
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
  v3 = [(MTAStopwatchViewController *)self deferredPublisher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100036D80;
  v4[3] = &unk_1000AD9F0;
  v4[4] = self;
  [v3 deferActionWithTimeOut:v4 completion:0.1];
}

- (void)handleStopStopwatchShortcutAction
{
  v3 = [(MTAStopwatchViewController *)self deferredPublisher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100036EE4;
  v4[3] = &unk_1000AD9F0;
  v4[4] = self;
  [v3 deferActionWithTimeOut:v4 completion:0.1];
}

- (void)handleLapStopwatchShortcutAction
{
  v3 = [(MTAStopwatchViewController *)self deferredPublisher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037004;
  v4[3] = &unk_1000AD9F0;
  v4[4] = self;
  [v3 deferActionWithTimeOut:v4 completion:0.1];
}

- (void)handleResetStopwatchShortcutAction
{
  v3 = [(MTAStopwatchViewController *)self deferredPublisher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037124;
  v4[3] = &unk_1000AD9F0;
  v4[4] = self;
  [v3 deferActionWithTimeOut:v4 completion:0.1];
}

- (void)_pageControlValueChanged:(id)a3
{
  v4 = a3;
  v6 = [(MTAStopwatchViewController *)self pagingViewController];
  v5 = [v4 currentPage];

  [v6 setCurrentPage:v5 animated:1];
}

- (void)startDisplayUpdates
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ startDisplayUpdates", &v9, 0xCu);
  }

  v4 = [(MTAStopwatchViewController *)self viewModel];
  [v4 invalidateDisplayLink];

  v5 = [(MTAStopwatchViewController *)self viewModel];
  [v5 updateWithDisplayLink];

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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ endDisplayUpdates", &v5, 0xCu);
  }

  v4 = [(MTAStopwatchViewController *)self viewModel];
  [v4 invalidateDisplayLink];

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

- (double)runningTotalForLap:(int64_t)a3
{
  v4 = [(MTAStopwatchViewController *)self viewModel];
  [v4 runningTotalForLap:a3];
  v6 = v5;

  return v6;
}

- (void)startLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting lap timer", &v11, 0xCu);
  }

  v4 = [(MTAStopwatchViewController *)self viewModel];
  v5 = [v4 getStopwatch];
  v6 = [v5 laps];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(MTAStopwatchViewController *)self viewModel];
    [v8 clearAllLaps];
  }

  v9 = [(MTAStopwatchViewController *)self viewModel];
  [v9 startLapTimer];

  [(MTAStopwatchViewController *)self startDisplayUpdates];
  [(MTAStopwatchViewController *)self setMode:2];
  v10 = [(MTAStopwatchViewController *)self lapTableController];
  [v10 setShowsCurrentLap:1];

  [MTAnalytics incrementEventCount:kMTCAStopwatchStarts];
}

- (void)pauseLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ pausing lap timer", &v5, 0xCu);
  }

  v4 = [(MTAStopwatchViewController *)self viewModel];
  [v4 pauseLapTimer];

  [(MTAStopwatchViewController *)self pauseLapTimerUI];
}

- (void)pauseLapTimerUI
{
  [(MTAStopwatchViewController *)self endDisplayUpdates];
  v3 = [(MTAStopwatchViewController *)self viewModel];
  [v3 updateTime];

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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ lapping lap timer", &v5, 0xCu);
  }

  v4 = [(MTAStopwatchViewController *)self viewModel];
  [v4 lapLapTimer];

  [(MTAStopwatchViewController *)self lapLapTimerUI];
}

- (void)lapLapTimerUI
{
  v3 = [(MTAStopwatchViewController *)self viewModel];
  v4 = [v3 getStopwatch];
  v5 = [v4 laps];
  v6 = [v5 lastObject];
  [v6 doubleValue];
  v8 = v7;

  v9 = [(MTAStopwatchViewController *)self lapTableController];
  [v9 addLap:v8];

  v10 = kMTCAStopwatchLaps;

  [MTAnalytics incrementEventCount:v10];
}

- (void)resetLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting lap timer", &v6, 0xCu);
  }

  v4 = [(MTAStopwatchViewController *)self viewModel];
  [v4 resetLapTimer];

  [(MTAStopwatchViewController *)self resetLapTimerUI];
  v5 = [(MTAStopwatchViewController *)self viewModel];
  [v5 updateTime];
}

- (void)resetLapTimerUI
{
  [(MTAStopwatchViewController *)self endDisplayUpdates];
  [(MTAStopwatchViewController *)self setMode:1];
  v3 = [(MTAStopwatchViewController *)self lapTableController];
  [v3 setShowsCurrentLap:0];

  v4 = [(MTAStopwatchViewController *)self lapTableController];
  [v4 clearAllLaps];

  v5 = kMTCAStopwatchResets;

  [MTAnalytics incrementEventCount:v5];
}

- (void)resumeLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming lap timer", &v5, 0xCu);
  }

  v4 = [(MTAStopwatchViewController *)self viewModel];
  [v4 resumeLapTimer];

  [(MTAStopwatchViewController *)self resumeLapTimerUI];
}

- (void)resumeLapTimerUI
{
  [(MTAStopwatchViewController *)self startDisplayUpdates];

  [(MTAStopwatchViewController *)self setMode:2];
}

- (void)didAddLap:(double)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = self;
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
    v5 = self;
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
    v5 = self;
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
    v5 = self;
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ didResetLapTimer", &v5, 0xCu);
  }

  [(MTAStopwatchViewController *)self resetLapTimerUI];
  v4 = [(MTAStopwatchViewController *)self viewModel];
  [v4 updateTime];
}

- (void)didResumeLapTimer
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = self;
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
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ didStartLapTimer", &v4, 0xCu);
  }

  [(MTAStopwatchViewController *)self startLapTimer];
}

- (void)didUpdateCurrentInterval:(double)a3 adjustedCurrentInterval:(double)a4 totalInterval:(double)a5 adjustedTotalInterval:(double)a6 isStopwatchRunning:(BOOL)a7 isStopwatchStopped:(BOOL)a8
{
  v8 = a7;
  if ([(MTAStopwatchViewController *)self shouldProcessUpdate:a7])
  {
    v14 = [(MTAStopwatchViewController *)self timeView];
    v15 = v14;
    if (!v8)
    {
      a6 = a5;
      a4 = a3;
    }

    [v14 setTime:a6];

    v16 = [(MTAStopwatchViewController *)self analogStopwatch];
    [v16 setDisplayAdjustedElapsedTime:a6];

    v17 = [(MTAStopwatchViewController *)self lapTableController];
    [v17 setCurrentInterval:a4];

    v18 = [(MTAStopwatchViewController *)self analogStopwatch];
    [v18 setElapsedTime:a5];

    v19 = [(MTAStopwatchViewController *)self analogStopwatch];
    [v19 setCurrentLapTime:a3];
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