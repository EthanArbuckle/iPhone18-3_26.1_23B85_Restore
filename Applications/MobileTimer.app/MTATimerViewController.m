@interface MTATimerViewController
- (BOOL)prefersStatusBarHidden;
- (MTATimerRunningDelegate)delegate;
- (MTATimerViewController)initWithDelegate:(id)a3;
- (MTATimerViewController)initWithTimer:(id)a3 timerManager:(id)a4 dataSource:(id)a5 delegate:(id)a6;
- (MTATimerViewController)initWithTimerManager:(id)a3 dataSource:(id)a4 delegate:(id)a5;
- (id)defaultEditLabel;
- (id)shortcutItemForCurrentState;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)addNewTimerWithDuration:(double)a3 title:(id)a4 sound:(id)a5;
- (void)cancelTimer:(id)a3;
- (void)confirmPickingSound;
- (void)dealloc;
- (void)didUpdateWithLabel:(id)a3 sender:(id)a4;
- (void)dismissSoundPicker;
- (void)handleContentSizeChange:(id)a3;
- (void)handleResignActive;
- (void)handleStartTimerShortcutAction;
- (void)handleStopTimerShortcutAction;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)menuBarAppearedWithBuilder:(id)a3 targetMenuIdentifier:(id)a4;
- (void)moveViewFrameToVerticalPosition:(float)a3;
- (void)pauseResumeTimer:(id)a3;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)prepareUIForState:(unint64_t)a3 forceRefresh:(BOOL)a4;
- (void)reloadStateForCurrentTimer:(id)a3;
- (void)reloadStateForMultipleTimers:(id)a3;
- (void)reloadTimerUiForceRefresh:(BOOL)a3;
- (void)removeNotificationObserver;
- (void)saveState;
- (void)setStyle:(unint64_t)a3 forceRefresh:(BOOL)a4;
- (void)setTimerViewStyleForceRefresh:(BOOL)a3;
- (void)setupLayoutForTimerControlState:(unint64_t)a3;
- (void)setupTimerUI:(id)a3;
- (void)showSoundPicker:(id)a3;
- (void)startTimer:(id)a3;
- (void)startUpdatingTimerUI;
- (void)stopUpdatingTimerUI;
- (void)timerTick:(id)a3;
- (void)timersChanged:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSelectedSoundUI;
- (void)updateShortcutItemForCurrentState;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTATimerViewController

- (void)updateSelectedSoundUI
{
  v3 = [(MTATimerViewController *)self timer];
  v4 = [v3 sound];
  v5 = [v4 toneIdentifier];
  v6 = v5;
  if (v5)
  {
    v17 = v5;
  }

  else
  {
    v7 = [(MTATimerViewController *)self sound];
    v17 = [v7 toneIdentifier];
  }

  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v8 = [(MTATimerViewController *)self timer];
    v9 = [v8 sound];
    v10 = [v9 interruptAudio];

    if (v10)
    {
      timerControlsView = self->_timerControlsView;
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"STOP_PLAYING" value:&stru_1000AEF10 table:0];
      v14 = timerControlsView;
    }

    else
    {
      v12 = +[TLToneManager sharedToneManager];
      if ([v12 toneWithIdentifierIsValid:v17])
      {
        v15 = v17;
      }

      else
      {
        v16 = [v12 defaultToneIdentifierForAlertType:13];

        v15 = v16;
      }

      v17 = v15;
      v13 = [v12 nameForToneIdentifier:?];
      v14 = self->_timerControlsView;
    }

    [(MTATimerControlsView *)v14 setTimerToneName:v13];
  }
}

- (void)startUpdatingTimerUI
{
  updateTimer = self->_updateTimer;
  v4 = MTLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (updateTimer)
  {
    if (v5)
    {
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ NSTimer exists", &v10, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating an NSTimer to update the UI", &v10, 0xCu);
    }

    v6 = [NSTimer alloc];
    v7 = +[NSDate date];
    v8 = [v6 initWithFireDate:v7 interval:self target:"timerTick:" selector:0 userInfo:1 repeats:0.25];
    v9 = self->_updateTimer;
    self->_updateTimer = v8;

    v4 = +[NSRunLoop currentRunLoop];
    [v4 addTimer:self->_updateTimer forMode:NSDefaultRunLoopMode];
  }
}

- (void)stopUpdatingTimerUI
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating NSTimer", &v5, 0xCu);
  }

  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (MTATimerViewController)initWithTimer:(id)a3 timerManager:(id)a4 dataSource:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MTATimerViewController *)self initWithDelegate:a6];
  v14 = v13;
  if (v13)
  {
    [(MTATimerViewController *)v13 setTimer:v10];
    v15 = [(MTATimerViewController *)v14 navigationItem];
    [v15 setLargeTitleDisplayMode:2];

    [v10 duration];
    v16 = [MTAUtilities durationStringFromInterval:?];
    [(MTATimerViewController *)v14 setTitle:v16];

    objc_storeStrong(&v14->_timerManager, a4);
    objc_storeStrong(&v14->_dataSource, a5);
    timerControlsView = v14->_timerControlsView;
    if ([v10 isCurrentTimer])
    {
      [(MTATimerControlsView *)timerControlsView setCurrentLabel:0];
    }

    else
    {
      v18 = [v10 title];
      [(MTATimerControlsView *)timerControlsView setCurrentLabel:v18];
    }
  }

  return v14;
}

- (MTATimerViewController)initWithTimerManager:(id)a3 dataSource:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(MTATimerViewController *)self initWithDelegate:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timerManager, a3);
    objc_storeStrong(&v12->_dataSource, a4);
  }

  return v12;
}

- (MTATimerViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MTATimerViewController;
  v5 = [(MTATimerViewController *)&v18 init];
  if (v5)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v20 = v5;
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized with delegate: %{public}@", buf, 0x16u);
    }

    v7 = [UIImage systemImageNamed:@"timer"];
    v8 = [(MTATimerViewController *)v5 tabBarItem];
    [v8 setImage:v7];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"TIMER" value:&stru_1000AEF10 table:0];
    [(MTATimerViewController *)v5 setTitle:v10];

    [(MTATimerViewController *)v5 setShouldHandleTimerReload:1];
    [(MTATimerViewController *)v5 setDelegate:v4];
    v11 = [(MTTimerDataSource *)v5->_dataSource getLatestDuration];
    v12 = [v11 sound];
    if (v12)
    {
      [(MTATimerViewController *)v5 setSound:v12];
    }

    else
    {
      v13 = [MTSound defaultSoundForCategory:1];
      [(MTATimerViewController *)v5 setSound:v13];
    }

    [(MTATimerViewController *)v5 setEdgesForExtendedLayout:5];
    v14 = [(MTATimerViewController *)v5 title];
    v15 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.timer" title:v14];
    userActivity = v5->_userActivity;
    v5->_userActivity = v15;

    [(MTATimerViewController *)v5 setTimerViewStyle];
  }

  return v5;
}

- (void)dealloc
{
  [(TKTonePickerViewController *)self->_tonePickerViewController setDelegate:0];
  [(NSTimer *)self->_updateTimer invalidate];
  v3.receiver = self;
  v3.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v3 dealloc];
}

- (void)handleResignActive
{
  v2 = [(MTATimerViewController *)self view];
  [v2 endEditing:1];
}

- (void)reloadStateForCurrentTimer:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading timer state", buf, 2u);
  }

  v6 = [(MTATimerViewController *)self timerManager];
  v7 = [(MTATimerViewController *)self timer];
  v8 = [v7 timerIDString];
  v9 = [v6 timerWithIdentifier:v8];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000100A8;
  v17[3] = &unk_1000ADBA8;
  v17[4] = self;
  v10 = [v9 flatMap:v17];
  v11 = +[NAScheduler mtMainThreadScheduler];
  v12 = [v10 reschedule:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001017C;
  v15[3] = &unk_1000ADBD0;
  v15[4] = self;
  v16 = v4;
  v13 = v4;
  v14 = [v12 addSuccessBlock:v15];
}

- (void)reloadStateForMultipleTimers:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Reloading timer state", buf, 0xCu);
  }

  v6 = [(MTATimerViewController *)self timer];

  if (v6)
  {
    v7 = [(MTATimerViewController *)self timerManager];
    v8 = [v7 timers];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100010558;
    v20[3] = &unk_1000ADC20;
    v20[4] = self;
    v9 = [v8 flatMap:v20];
    v10 = +[NAScheduler mtMainThreadScheduler];
    v11 = [v9 reschedule:v10];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001073C;
    v18[3] = &unk_1000ADBD0;
    v18[4] = self;
    v12 = v4;
    v19 = v12;
    v13 = [v11 addSuccessBlock:v18];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100010834;
    v16[3] = &unk_1000ADC48;
    v16[4] = self;
    v17 = v12;
    v14 = [v13 addFailureBlock:v16];
  }

  else
  {
    v15 = MTLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ new timer ui, not reloading state", buf, 0xCu);
    }
  }
}

- (void)setupTimerUI:(id)a3
{
  timerControlsView = self->_timerControlsView;
  [a3 duration];
  [(MTATimerControlsView *)timerControlsView setCountDownDuration:?];
  [(MTATimerViewController *)self reloadTimerUI];

  [(MTATimerViewController *)self updateSelectedSoundUI];
}

- (void)saveState
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Saving timer state", buf, 0xCu);
  }

  v4 = [(MTATimerViewController *)self timerManager];
  v5 = [(MTATimerViewController *)self timer];
  v6 = [v5 timerIDString];
  v7 = [v4 timerWithIdentifier:v6];
  v8 = +[NAScheduler mtMainThreadScheduler];
  v9 = [v7 reschedule:v8];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010AAC;
  v11[3] = &unk_1000ADC98;
  v11[4] = self;
  v10 = [v9 addSuccessBlock:v11];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v11 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [(MTATimerViewController *)self traitCollection];
  v8 = [v7 horizontalSizeClass];
  if (v8 == [v6 horizontalSizeClass])
  {
  }

  else
  {
    v9 = [v6 verticalSizeClass];

    if (v9 == 2)
    {
      v10 = [(TKTonePickerViewController *)self->_tonePickerViewController presentingViewController];

      if (v10)
      {
        [(MTATimerViewController *)self dismissSoundPicker];
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  self->_layoutForTraitChange = 1;
  [(MTATimerViewController *)self setTimerViewStyleForceRefresh:1];
  v4 = [(MTATimerViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)setStyle:(unint64_t)a3 forceRefresh:(BOOL)a4
{
  if (self->_style != a3 || a4)
  {
    self->_style = a3;
    [MTATimerControlsView setStyle:"setStyle:forceRefresh:" forceRefresh:?];
    timerControlsView = self->_timerControlsView;

    [(MTATimerControlsView *)timerControlsView resetLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v5 viewDidLayoutSubviews];
  [(MTATimerViewController *)self setTimerViewStyle];
  timerControlsView = self->_timerControlsView;
  v4 = [(MTATimerViewController *)self view];
  [v4 bounds];
  [(MTATimerControlsView *)timerControlsView setFrame:?];

  self->_layoutForTraitChange = 0;
}

- (void)setTimerViewStyleForceRefresh:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 windows];
  v12 = [v6 firstObject];

  v7 = [(MTATimerViewController *)self traitCollection];
  v8 = [v7 horizontalSizeClass];
  [v12 frame];
  LODWORD(v5) = [MTAUtilities shouldUseCompactLayoutForSizeClass:v8 windowWidth:v9];

  if (v5)
  {
    if (MTIdiomIpad())
    {
      v10 = [(MTATimerViewController *)self timer];
      if ([v10 state] == 1)
      {
        v11 = 2;
      }

      else
      {
        v11 = 5;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 3;
  }

  [(MTATimerViewController *)self setStyle:v11 forceRefresh:v3];
}

- (void)loadView
{
  v18.receiver = self;
  v18.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v18 loadView];
  v3 = [(MTATimerViewController *)self timer];
  if ([v3 state] == 3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MTATimerViewController *)self timer];
    v4 = [v5 state] == 2 || self->_style == 3;
  }

  v6 = [[MTATimerControlsView alloc] initWithDelegate:self style:self->_style timerControlState:v4];
  timerControlsView = self->_timerControlsView;
  self->_timerControlsView = v6;

  v8 = [(MTATimerViewController *)self view];
  [v8 addSubview:self->_timerControlsView];

  v9 = [(MTATimerViewController *)self timer];
  if (v9 || MTIdiomIpad())
  {

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"handleEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"handleBecameActive" name:UIApplicationDidBecomeActiveNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:self selector:"handleResignActive" name:UIApplicationWillResignActiveNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"timersChanged:" name:MTTimerManagerTimersChanged object:self->_timerManager];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:self selector:"timersChanged:" name:MTTimerManagerFiringTimerChanged object:self->_timerManager];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:self selector:"timersChanged:" name:MTTimerManagerPreferencesChanged object:self->_timerManager];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:self selector:"timersChanged:" name:MTTimerManagerStateReset object:self->_timerManager];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:self selector:"handleContentSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  [(MTATimerViewController *)self setupLayoutForTimerControlState:v4];
  [(MTATimerViewController *)self reloadState];
}

- (void)setupLayoutForTimerControlState:(unint64_t)a3
{
  if (a3 == 1 && ([(MTATimerViewController *)self timer], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(MTATimerViewController *)self timer];
    [(MTATimerViewController *)self setupTimerUI:v5];
  }

  else
  {
    [(MTATimerViewController *)self reloadState];
    timerControlsView = self->_timerControlsView;
    v5 = [(MTATimerViewController *)self dataSource];
    v7 = [v5 getLatestDuration];
    [v7 duration];
    [(MTATimerControlsView *)timerControlsView setCountDownDuration:?];
  }

  [(MTATimerViewController *)self setTimerViewStyle];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v6 viewWillAppear:a3];
  [(MTATimerViewController *)self reloadTimerUI];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)reloadTimerUiForceRefresh:(BOOL)a3
{
  v3 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Reloading UI, force refresh: %i", &v8, 0x12u);
  }

  v6 = [(MTATimerViewController *)self timer];
  if (v6)
  {
    v7 = [(MTATimerViewController *)self timer];
    -[MTATimerViewController prepareUIForState:forceRefresh:](self, "prepareUIForState:forceRefresh:", [v7 state], v3);
  }

  else
  {
    [(MTATimerViewController *)self prepareUIForState:1 forceRefresh:v3];
  }
}

- (void)prepareUIForState:(unint64_t)a3 forceRefresh:(BOOL)a4
{
  v4 = a4;
  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = self;
    v20 = 2048;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Preparing UI for state %lu", buf, 0x16u);
  }

  timerControlsView = self->_timerControlsView;
  v9 = [(MTATimerViewController *)self timer];
  [v9 remainingTime];
  v11 = v10;
  v12 = [(MTATimerViewController *)self timer];
  [v12 duration];
  v14 = v13;
  v15 = [(MTATimerViewController *)self timer];
  if ([v15 isCurrentTimer])
  {
    [(MTATimerControlsView *)timerControlsView setRemainingTime:a3 duration:0 state:v4 title:v11 forceRefresh:v14];
  }

  else
  {
    v16 = [(MTATimerViewController *)self timer];
    v17 = [v16 title];
    [(MTATimerControlsView *)timerControlsView setRemainingTime:a3 duration:v17 state:v4 title:v11 forceRefresh:v14];
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(MTATimerViewController *)self stopUpdatingTimerUI];
      [(MTATimerViewController *)self timerTick:0];
      goto LABEL_16;
    }

    if (a3 != 4)
    {
      if (a3 == 3)
      {
        [(MTATimerViewController *)self timerTick:0];
        [(MTATimerViewController *)self startUpdatingTimerUI];
      }

      goto LABEL_16;
    }

LABEL_14:
    NSLog(@"Unexpected timer state %ld", a3);
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    [(MTATimerViewController *)self stopUpdatingTimerUI];
  }

LABEL_16:
  [(MTATimerViewController *)self updateShortcutItemForCurrentState];
}

- (void)timerTick:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ timerTick", buf, 0xCu);
  }

  v5 = [(MTATimerViewController *)self timer];
  [v5 remainingTime];
  v7 = v6;
  v8 = [v5 state];
  if (v8 > 1)
  {
    if ((v8 - 2) < 2)
    {
      v9 = MTLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v13 = self;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ remainingTime: %f", buf, 0x16u);
      }

      timerControlsView = self->_timerControlsView;
      v11 = v7;
      goto LABEL_11;
    }

    if (v8 != 4)
    {
      goto LABEL_14;
    }

LABEL_13:
    NSLog(@"Unexpected timer state %ld", [v5 state]);
    goto LABEL_14;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  if (v8 == 1)
  {
    [(MTATimerViewController *)self prepareUIForState:1];
    timerControlsView = self->_timerControlsView;
    v11 = 0.0;
LABEL_11:
    [(MTATimerControlsView *)timerControlsView setTime:v11];
  }

LABEL_14:
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v4 viewDidAppear:a3];
  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(MTATimerViewController *)self saveState];
  [(MTATimerViewController *)self stopUpdatingTimerUI];
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v10.receiver = self;
  v10.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v10 viewWillDisappear:v3];
  if ([(MTATimerViewController *)self isMovingFromParentViewController])
  {
    v5 = MTLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MTATimerViewController *)self timer];
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ popping MTATimerViewController with timer: %{public}@", buf, 0x16u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self];
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:UIKeyboardWillHideNotification object:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MTATimerViewController;
  v7 = a4;
  [(MTATimerViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011BC4;
  v8[3] = &unk_1000AD9C8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
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

- (void)handleContentSizeChange:(id)a3
{
  [(MTATimerControlsView *)self->_timerControlsView handleContentSizeChange];
  v4 = [(MTATimerViewController *)self view];
  [v4 setNeedsDisplay];
}

- (void)keyboardWillShow:(id)a3
{
  v23 = a3;
  v4 = [(MTATimerControlsView *)self->_timerControlsView editLabelCell];
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v10 = [(MTATimerViewController *)self view];
    [v5 convertPoint:v10 toView:{v7, v9}];
    v12 = v11;

    [v5 frame];
    v14 = v12 + v13;
    v15 = [v23 userInfo];
    v16 = [v15 objectForKey:UIKeyboardFrameEndUserInfoKey];
    [v16 CGRectValue];
    v18 = v17;

    v19 = [(MTATimerViewController *)self view];
    [v19 frame];
    v21 = v20 - v18;

    v22 = v14 - v21;
    if (v14 - v21 > 0.0)
    {
      *&v22 = v22;
      *&v22 = -*&v22;
      [(MTATimerViewController *)self moveViewFrameToVerticalPosition:v22];
      [(MTATimerViewController *)self setTitle:&stru_1000AEF10];
    }
  }
}

- (void)keyboardWillHide:(id)a3
{
  [(MTATimerViewController *)self moveViewFrameToVerticalPosition:a3, 0.0];
  [(MTTimer *)self->_timer duration];
  v4 = [MTAUtilities durationStringFromInterval:?];
  [(MTATimerViewController *)self setTitle:v4];
}

- (void)moveViewFrameToVerticalPosition:(float)a3
{
  v5 = [(MTATimerViewController *)self view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100011F38;
  v12[3] = &unk_1000ADCC0;
  v12[4] = self;
  v12[5] = v7;
  *&v12[6] = a3;
  v12[7] = v9;
  v12[8] = v11;
  [UIView animateWithDuration:v12 animations:0.3];
}

- (void)updateShortcutItemForCurrentState
{
  v3 = [(MTATimerViewController *)self timer];

  if (!v3)
  {
    return;
  }

  v4 = [(MTATimerViewController *)self timer];
  if ([v4 state] == 1)
  {
  }

  else
  {
    v5 = [(MTATimerViewController *)self timer];
    v6 = [v5 state];

    if (v6 != 2)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  [MTAUtilities updateTimerAppShortcutsForType:v7];
}

- (id)shortcutItemForCurrentState
{
  v3 = [(MTATimerViewController *)self timer];

  if (!v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v4 = [(MTATimerViewController *)self timer];
  if ([v4 state] == 1)
  {

LABEL_6:
    v5 = +[MTAUtilities startTimerShortcutItem];
    goto LABEL_8;
  }

  v6 = [(MTATimerViewController *)self timer];
  v7 = [v6 state];

  if (v7 == 2)
  {
    goto LABEL_6;
  }

  v5 = +[MTAUtilities stopTimerShortcutItem];
LABEL_8:

  return v5;
}

- (void)handleStartTimerShortcutAction
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100012190;
  v2[3] = &unk_1000AD9F0;
  v2[4] = self;
  [(MTATimerViewController *)self reloadState:v2];
}

- (void)handleStopTimerShortcutAction
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100012208;
  v2[3] = &unk_1000AD9F0;
  v2[4] = self;
  [(MTATimerViewController *)self reloadState:v2];
}

- (void)startTimer:(id)a3
{
  v4 = a3;
  [(MTATimerControlsView *)self->_timerControlsView countDownDuration];
  if (v5 > 0.0)
  {
    v6 = [(MTATimerViewController *)self timer];

    if (v6)
    {
      v7 = [(MTATimerViewController *)self timer];
      v8 = [v7 mutableCopy];

      v9 = MTLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 timerID];
        *buf = 138543618;
        v27 = self;
        v28 = 2114;
        v29 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting a timer: %{public}@", buf, 0x16u);
      }

      [(MTATimerControlsView *)self->_timerControlsView countDownDuration];
      v12 = v11;
      [v8 setDuration:?];
      [v8 setState:3];
      [MTTimerManager setDefaultDuration:v12];
      objc_initWeak(buf, self);
      v13 = [(MTATimerViewController *)self timerManager];
      v14 = [v13 updateTimer:v8];
      v15 = +[NAScheduler mtMainThreadScheduler];
      v16 = [v14 reschedule:v15];

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000124F0;
      v23[3] = &unk_1000ADCE8;
      objc_copyWeak(&v25, buf);
      v23[4] = self;
      v17 = v8;
      v24 = v17;
      v18 = [v16 addSuccessBlock:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    else
    {
      [(MTATimerControlsView *)self->_timerControlsView countDownDuration];
      v20 = v19;
      v21 = [(MTATimerControlsView *)self->_timerControlsView getCurrentLabel];
      v22 = [(MTATimerViewController *)self sound];
      [(MTATimerViewController *)self addNewTimerWithDuration:v21 title:v22 sound:v20];
    }
  }
}

- (void)addNewTimerWithDuration:(double)a3 title:(id)a4 sound:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [[MTMutableTimer alloc] initWithState:3 duration:a3];
  v11 = v10;
  if (v8)
  {
    [v10 setTitle:v8];
  }

  if (v9)
  {
    [v11 setSound:v9];
  }

  objc_initWeak(&location, self);
  v12 = MTLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v11 timerID];
    *buf = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@ starting new timer: %{public}@ and dismissing add controller", buf, 0x16u);
  }

  v14 = [(MTATimerViewController *)self dataSource];
  v15 = [v14 addTimer:v11];
  v16 = +[NAScheduler mtMainThreadScheduler];
  v17 = [v15 reschedule:v16];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012850;
  v20[3] = &unk_1000ADD10;
  objc_copyWeak(&v22, &location);
  v20[4] = self;
  v18 = v11;
  v21 = v18;
  v19 = [v17 addCompletionBlock:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)cancelTimer:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerViewController *)self timer];
  v6 = [v5 timerByUpdatingWithState:1];

  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 timerID];
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping a timer: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = [(MTATimerViewController *)self timerManager];
  v10 = [v9 updateTimer:v6];
  v11 = +[NAScheduler mtMainThreadScheduler];
  v12 = [v10 reschedule:v11];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100012B3C;
  v15[3] = &unk_1000ADCE8;
  objc_copyWeak(&v17, buf);
  v15[4] = self;
  v13 = v6;
  v16 = v13;
  v14 = [v12 addSuccessBlock:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)pauseResumeTimer:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerViewController *)self timer];
  v6 = [v5 state];

  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v8 = [(MTATimerViewController *)self timer];
  v9 = [v8 timerByUpdatingWithState:v7];

  v10 = MTLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 timerID];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Pausing a timer: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v12 = [(MTATimerViewController *)self timerManager];
  v13 = [v12 updateTimer:v9];
  v14 = +[NAScheduler mtMainThreadScheduler];
  v15 = [v13 reschedule:v14];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012FA4;
  v20[3] = &unk_1000ADD38;
  objc_copyWeak(v22, buf);
  v20[4] = self;
  v16 = v9;
  v21 = v16;
  v22[1] = v7;
  v17 = [v15 addSuccessBlock:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000130B8;
  v19[3] = &unk_1000ADD60;
  v19[4] = self;
  v18 = [v15 addFailureBlock:v19];

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
}

- (void)timersChanged:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Received timer notification: %{public}@.  Reloading", &v7, 0x16u);
  }

  [(MTATimerViewController *)self reloadState];
}

- (void)menuBarAppearedWithBuilder:(id)a3 targetMenuIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MTATimerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MTATimerViewController *)self delegate];
    [v9 performSelector:"menuBarAppearedWithBuilder:targetMenuIdentifier:" withObject:v10 withObject:v6];
  }
}

- (void)showSoundPicker:(id)a3
{
  v35 = a3;
  if (!self->_tonePickerViewController)
  {
    v4 = [[TKTonePickerViewController alloc] _initWithAlertType:13 tableViewStyle:2];
    tonePickerViewController = self->_tonePickerViewController;
    self->_tonePickerViewController = v4;

    v6 = +[TLToneManager sharedToneManager];
    v7 = [v6 defaultToneIdentifierForAlertType:14];
    [(TKTonePickerViewController *)self->_tonePickerViewController setDefaultToneIdentifier:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"STOP_PLAYING" value:&stru_1000AEF10 table:0];
    [(TKTonePickerViewController *)self->_tonePickerViewController setNoneString:v9];

    [(TKTonePickerViewController *)self->_tonePickerViewController setShowsNone:1];
    [(TKTonePickerViewController *)self->_tonePickerViewController setDelegate:self];
    v10 = objc_opt_new();
    [(TKTonePickerViewController *)self->_tonePickerViewController setStyleProvider:v10];

    v11 = [(TKTonePickerViewController *)self->_tonePickerViewController navigationItem];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"WHEN_TIMER_ENDS" value:&stru_1000AEF10 table:0];
    [v11 setTitle:v13];

    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"dismissSoundPicker"];
    [v11 setLeftBarButtonItem:v14];

    v15 = [UIBarButtonItem alloc];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"SET" value:&stru_1000AEF10 table:0];
    v18 = [v15 initWithTitle:v17 style:2 target:self action:"confirmPickingSound"];
    [v11 setRightBarButtonItem:v18];
  }

  v19 = [(MTATimerViewController *)self timer];
  v20 = [v19 sound];
  v21 = [v20 toneIdentifier];
  [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:v21];

  [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:MTShouldAllowToneStore()];
  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"confirmPickingSound" name:UIApplicationSuspendedNotification object:0];

  v23 = [[UINavigationController alloc] initWithRootViewController:self->_tonePickerViewController];
  [v23 setDelegate:self];
  if (self->_style == 3)
  {
    [v23 setModalPresentationStyle:2];
    v24 = [v23 popoverPresentationController];
    [v24 setDelegate:self];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v35;
      [v25 bounds];
      x = v26;
      y = v28;
      width = v30;
      height = v32;
    }

    else
    {
      v25 = 0;
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }

    [v24 setSourceView:v25];
    [v24 setSourceRect:{x, y, width, height}];
    v34 = +[UIColor mtui_backgroundColor];
    [v24 setBackgroundColor:v34];
  }

  [(MTATimerViewController *)self presentViewController:v23 animated:1 completion:0];
}

- (void)confirmPickingSound
{
  v3 = [(TKTonePickerViewController *)self->_tonePickerViewController selectedToneIdentifier];
  if (!v3)
  {
    v3 = [(TKTonePickerViewController *)self->_tonePickerViewController defaultToneIdentifier];
  }

  v4 = [(MTATimerViewController *)self timer];

  if (v4)
  {
    v5 = [(MTATimerViewController *)self timer];
    v6 = [v5 sound];

    v7 = [v6 vibrationIdentifier];
    v8 = [v6 soundVolume];
    v9 = [MTSound toneSoundWithIdentifier:v3 vibrationIdentifer:v7 volume:v8];

    v10 = [(MTATimerViewController *)self timer];
    v11 = [v10 mutableCopy];

    [v11 setSound:v9];
    v12 = [(MTATimerViewController *)self timerManager];
    v13 = [v12 updateTimer:v11];
    v14 = +[NAScheduler mtMainThreadScheduler];
    v15 = [v13 reschedule:v14];

    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10001399C;
    v26 = &unk_1000ADC70;
    v27 = self;
    v28 = v11;
    v16 = v11;
    v17 = [v15 addSuccessBlock:&v23];
  }

  else
  {
    v18 = [(MTATimerViewController *)self sound];
    v19 = [v18 vibrationIdentifier];
    v20 = [(MTATimerViewController *)self sound];
    v21 = [v20 soundVolume];
    v22 = [MTSound toneSoundWithIdentifier:v3 vibrationIdentifer:v19 volume:v21];
    [(MTATimerViewController *)self setSound:v22];

    [(MTATimerViewController *)self updateSelectedSoundUI];
  }

  [(MTATimerViewController *)self dismissSoundPicker:v23];
}

- (void)dismissSoundPicker
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSuspendedNotification object:0];

  v4 = [(MTATimerViewController *)self presentedViewController];
  v5 = [v4 popoverPresentationController];

  if (v5)
  {
    v6 = [(MTATimerViewController *)self navigationItem];
    v7 = [v6 leftBarButtonItem];
    [v7 setEnabled:1];
  }

  v8 = +[UIApplication sharedApplication];
  -[MTATimerViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [v8 isSuspended] ^ 1, 0);
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  if (MTUIIsPadIdiom())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  [(MTATimerViewController *)self confirmPickingSound];
  v5 = [(MTATimerViewController *)self navigationItem];
  v4 = [v5 leftBarButtonItem];
  [v4 setEnabled:1];
}

- (void)didUpdateWithLabel:(id)a3 sender:(id)a4
{
  [(MTATimerViewController *)self setTimerLabel:a3, a4];
  v5 = [(MTATimerViewController *)self timer];

  if (v5)
  {
    v6 = [(MTATimerViewController *)self timer];
    v7 = [v6 mutableCopy];

    v8 = [(MTATimerViewController *)self timerLabel];
    [v7 setTitle:v8];

    v9 = [(MTATimerViewController *)self timerManager];
    v10 = [v9 updateTimer:v7];
    v11 = +[NAScheduler mtMainThreadScheduler];
    v12 = [v10 reschedule:v11];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100013CB0;
    v15[3] = &unk_1000ADC70;
    v15[4] = self;
    v16 = v7;
    v13 = v7;
    v14 = [v12 addSuccessBlock:v15];
  }
}

- (id)defaultEditLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Timer" value:&stru_1000AEF10 table:0];

  return v3;
}

- (void)removeNotificationObserver
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification observer", &v5, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (MTATimerRunningDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end