@interface MTATimerViewController
- (BOOL)prefersStatusBarHidden;
- (MTATimerRunningDelegate)delegate;
- (MTATimerViewController)initWithDelegate:(id)delegate;
- (MTATimerViewController)initWithTimer:(id)timer timerManager:(id)manager dataSource:(id)source delegate:(id)delegate;
- (MTATimerViewController)initWithTimerManager:(id)manager dataSource:(id)source delegate:(id)delegate;
- (id)defaultEditLabel;
- (id)shortcutItemForCurrentState;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)addNewTimerWithDuration:(double)duration title:(id)title sound:(id)sound;
- (void)cancelTimer:(id)timer;
- (void)confirmPickingSound;
- (void)dealloc;
- (void)didUpdateWithLabel:(id)label sender:(id)sender;
- (void)dismissSoundPicker;
- (void)handleContentSizeChange:(id)change;
- (void)handleResignActive;
- (void)handleStartTimerShortcutAction;
- (void)handleStopTimerShortcutAction;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)menuBarAppearedWithBuilder:(id)builder targetMenuIdentifier:(id)identifier;
- (void)moveViewFrameToVerticalPosition:(float)position;
- (void)pauseResumeTimer:(id)timer;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)prepareUIForState:(unint64_t)state forceRefresh:(BOOL)refresh;
- (void)reloadStateForCurrentTimer:(id)timer;
- (void)reloadStateForMultipleTimers:(id)timers;
- (void)reloadTimerUiForceRefresh:(BOOL)refresh;
- (void)removeNotificationObserver;
- (void)saveState;
- (void)setStyle:(unint64_t)style forceRefresh:(BOOL)refresh;
- (void)setTimerViewStyleForceRefresh:(BOOL)refresh;
- (void)setupLayoutForTimerControlState:(unint64_t)state;
- (void)setupTimerUI:(id)i;
- (void)showSoundPicker:(id)picker;
- (void)startTimer:(id)timer;
- (void)startUpdatingTimerUI;
- (void)stopUpdatingTimerUI;
- (void)timerTick:(id)tick;
- (void)timersChanged:(id)changed;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSelectedSoundUI;
- (void)updateShortcutItemForCurrentState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MTATimerViewController

- (void)updateSelectedSoundUI
{
  timer = [(MTATimerViewController *)self timer];
  sound = [timer sound];
  toneIdentifier = [sound toneIdentifier];
  v6 = toneIdentifier;
  if (toneIdentifier)
  {
    toneIdentifier2 = toneIdentifier;
  }

  else
  {
    sound2 = [(MTATimerViewController *)self sound];
    toneIdentifier2 = [sound2 toneIdentifier];
  }

  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    timer2 = [(MTATimerViewController *)self timer];
    sound3 = [timer2 sound];
    interruptAudio = [sound3 interruptAudio];

    if (interruptAudio)
    {
      timerControlsView = self->_timerControlsView;
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"STOP_PLAYING" value:&stru_1000AEF10 table:0];
      v14 = timerControlsView;
    }

    else
    {
      v12 = +[TLToneManager sharedToneManager];
      if ([v12 toneWithIdentifierIsValid:toneIdentifier2])
      {
        v15 = toneIdentifier2;
      }

      else
      {
        v16 = [v12 defaultToneIdentifierForAlertType:13];

        v15 = v16;
      }

      toneIdentifier2 = v15;
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
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ NSTimer exists", &v10, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v10 = 138543362;
      selfCopy2 = self;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating NSTimer", &v5, 0xCu);
  }

  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (MTATimerViewController)initWithTimer:(id)timer timerManager:(id)manager dataSource:(id)source delegate:(id)delegate
{
  timerCopy = timer;
  managerCopy = manager;
  sourceCopy = source;
  v13 = [(MTATimerViewController *)self initWithDelegate:delegate];
  v14 = v13;
  if (v13)
  {
    [(MTATimerViewController *)v13 setTimer:timerCopy];
    navigationItem = [(MTATimerViewController *)v14 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    [timerCopy duration];
    v16 = [MTAUtilities durationStringFromInterval:?];
    [(MTATimerViewController *)v14 setTitle:v16];

    objc_storeStrong(&v14->_timerManager, manager);
    objc_storeStrong(&v14->_dataSource, source);
    timerControlsView = v14->_timerControlsView;
    if ([timerCopy isCurrentTimer])
    {
      [(MTATimerControlsView *)timerControlsView setCurrentLabel:0];
    }

    else
    {
      title = [timerCopy title];
      [(MTATimerControlsView *)timerControlsView setCurrentLabel:title];
    }
  }

  return v14;
}

- (MTATimerViewController)initWithTimerManager:(id)manager dataSource:(id)source delegate:(id)delegate
{
  managerCopy = manager;
  sourceCopy = source;
  v11 = [(MTATimerViewController *)self initWithDelegate:delegate];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timerManager, manager);
    objc_storeStrong(&v12->_dataSource, source);
  }

  return v12;
}

- (MTATimerViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
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
      v22 = delegateCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized with delegate: %{public}@", buf, 0x16u);
    }

    v7 = [UIImage systemImageNamed:@"timer"];
    tabBarItem = [(MTATimerViewController *)v5 tabBarItem];
    [tabBarItem setImage:v7];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"TIMER" value:&stru_1000AEF10 table:0];
    [(MTATimerViewController *)v5 setTitle:v10];

    [(MTATimerViewController *)v5 setShouldHandleTimerReload:1];
    [(MTATimerViewController *)v5 setDelegate:delegateCopy];
    getLatestDuration = [(MTTimerDataSource *)v5->_dataSource getLatestDuration];
    sound = [getLatestDuration sound];
    if (sound)
    {
      [(MTATimerViewController *)v5 setSound:sound];
    }

    else
    {
      v13 = [MTSound defaultSoundForCategory:1];
      [(MTATimerViewController *)v5 setSound:v13];
    }

    [(MTATimerViewController *)v5 setEdgesForExtendedLayout:5];
    title = [(MTATimerViewController *)v5 title];
    v15 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.timer" title:title];
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
  view = [(MTATimerViewController *)self view];
  [view endEditing:1];
}

- (void)reloadStateForCurrentTimer:(id)timer
{
  timerCopy = timer;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading timer state", buf, 2u);
  }

  timerManager = [(MTATimerViewController *)self timerManager];
  timer = [(MTATimerViewController *)self timer];
  timerIDString = [timer timerIDString];
  v9 = [timerManager timerWithIdentifier:timerIDString];
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
  v16 = timerCopy;
  v13 = timerCopy;
  v14 = [v12 addSuccessBlock:v15];
}

- (void)reloadStateForMultipleTimers:(id)timers
{
  timersCopy = timers;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Reloading timer state", buf, 0xCu);
  }

  timer = [(MTATimerViewController *)self timer];

  if (timer)
  {
    timerManager = [(MTATimerViewController *)self timerManager];
    timers = [timerManager timers];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100010558;
    v20[3] = &unk_1000ADC20;
    v20[4] = self;
    v9 = [timers flatMap:v20];
    v10 = +[NAScheduler mtMainThreadScheduler];
    v11 = [v9 reschedule:v10];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001073C;
    v18[3] = &unk_1000ADBD0;
    v18[4] = self;
    v12 = timersCopy;
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
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ new timer ui, not reloading state", buf, 0xCu);
    }
  }
}

- (void)setupTimerUI:(id)i
{
  timerControlsView = self->_timerControlsView;
  [i duration];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Saving timer state", buf, 0xCu);
  }

  timerManager = [(MTATimerViewController *)self timerManager];
  timer = [(MTATimerViewController *)self timer];
  timerIDString = [timer timerIDString];
  v7 = [timerManager timerWithIdentifier:timerIDString];
  v8 = +[NAScheduler mtMainThreadScheduler];
  v9 = [v7 reschedule:v8];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010AAC;
  v11[3] = &unk_1000ADC98;
  v11[4] = self;
  v10 = [v9 addSuccessBlock:v11];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v11 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  traitCollection = [(MTATimerViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass == [collectionCopy horizontalSizeClass])
  {
  }

  else
  {
    verticalSizeClass = [collectionCopy verticalSizeClass];

    if (verticalSizeClass == 2)
    {
      presentingViewController = [(TKTonePickerViewController *)self->_tonePickerViewController presentingViewController];

      if (presentingViewController)
      {
        [(MTATimerViewController *)self dismissSoundPicker];
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  self->_layoutForTraitChange = 1;
  [(MTATimerViewController *)self setTimerViewStyleForceRefresh:1];
  view = [(MTATimerViewController *)self view];
  [view setNeedsLayout];
}

- (void)setStyle:(unint64_t)style forceRefresh:(BOOL)refresh
{
  if (self->_style != style || refresh)
  {
    self->_style = style;
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
  view = [(MTATimerViewController *)self view];
  [view bounds];
  [(MTATimerControlsView *)timerControlsView setFrame:?];

  self->_layoutForTraitChange = 0;
}

- (void)setTimerViewStyleForceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  v5 = +[UIApplication sharedApplication];
  windows = [v5 windows];
  firstObject = [windows firstObject];

  traitCollection = [(MTATimerViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  [firstObject frame];
  LODWORD(v5) = [MTAUtilities shouldUseCompactLayoutForSizeClass:horizontalSizeClass windowWidth:v9];

  if (v5)
  {
    if (MTIdiomIpad())
    {
      timer = [(MTATimerViewController *)self timer];
      if ([timer state] == 1)
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

  [(MTATimerViewController *)self setStyle:v11 forceRefresh:refreshCopy];
}

- (void)loadView
{
  v18.receiver = self;
  v18.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v18 loadView];
  timer = [(MTATimerViewController *)self timer];
  if ([timer state] == 3)
  {
    v4 = 1;
  }

  else
  {
    timer2 = [(MTATimerViewController *)self timer];
    v4 = [timer2 state] == 2 || self->_style == 3;
  }

  v6 = [[MTATimerControlsView alloc] initWithDelegate:self style:self->_style timerControlState:v4];
  timerControlsView = self->_timerControlsView;
  self->_timerControlsView = v6;

  view = [(MTATimerViewController *)self view];
  [view addSubview:self->_timerControlsView];

  timer3 = [(MTATimerViewController *)self timer];
  if (timer3 || MTIdiomIpad())
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

- (void)setupLayoutForTimerControlState:(unint64_t)state
{
  if (state == 1 && ([(MTATimerViewController *)self timer], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    timer = [(MTATimerViewController *)self timer];
    [(MTATimerViewController *)self setupTimerUI:timer];
  }

  else
  {
    [(MTATimerViewController *)self reloadState];
    timerControlsView = self->_timerControlsView;
    timer = [(MTATimerViewController *)self dataSource];
    getLatestDuration = [timer getLatestDuration];
    [getLatestDuration duration];
    [(MTATimerControlsView *)timerControlsView setCountDownDuration:?];
  }

  [(MTATimerViewController *)self setTimerViewStyle];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v6 viewWillAppear:appear];
  [(MTATimerViewController *)self reloadTimerUI];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)reloadTimerUiForceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 1024;
    v11 = refreshCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Reloading UI, force refresh: %i", &v8, 0x12u);
  }

  timer = [(MTATimerViewController *)self timer];
  if (timer)
  {
    timer2 = [(MTATimerViewController *)self timer];
    -[MTATimerViewController prepareUIForState:forceRefresh:](self, "prepareUIForState:forceRefresh:", [timer2 state], refreshCopy);
  }

  else
  {
    [(MTATimerViewController *)self prepareUIForState:1 forceRefresh:refreshCopy];
  }
}

- (void)prepareUIForState:(unint64_t)state forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Preparing UI for state %lu", buf, 0x16u);
  }

  timerControlsView = self->_timerControlsView;
  timer = [(MTATimerViewController *)self timer];
  [timer remainingTime];
  v11 = v10;
  timer2 = [(MTATimerViewController *)self timer];
  [timer2 duration];
  v14 = v13;
  timer3 = [(MTATimerViewController *)self timer];
  if ([timer3 isCurrentTimer])
  {
    [(MTATimerControlsView *)timerControlsView setRemainingTime:state duration:0 state:refreshCopy title:v11 forceRefresh:v14];
  }

  else
  {
    timer4 = [(MTATimerViewController *)self timer];
    title = [timer4 title];
    [(MTATimerControlsView *)timerControlsView setRemainingTime:state duration:title state:refreshCopy title:v11 forceRefresh:v14];
  }

  if (state > 1)
  {
    if (state == 2)
    {
      [(MTATimerViewController *)self stopUpdatingTimerUI];
      [(MTATimerViewController *)self timerTick:0];
      goto LABEL_16;
    }

    if (state != 4)
    {
      if (state == 3)
      {
        [(MTATimerViewController *)self timerTick:0];
        [(MTATimerViewController *)self startUpdatingTimerUI];
      }

      goto LABEL_16;
    }

LABEL_14:
    NSLog(@"Unexpected timer state %ld", state);
    goto LABEL_16;
  }

  if (!state)
  {
    goto LABEL_14;
  }

  if (state == 1)
  {
    [(MTATimerViewController *)self stopUpdatingTimerUI];
  }

LABEL_16:
  [(MTATimerViewController *)self updateShortcutItemForCurrentState];
}

- (void)timerTick:(id)tick
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ timerTick", buf, 0xCu);
  }

  timer = [(MTATimerViewController *)self timer];
  [timer remainingTime];
  v7 = v6;
  state = [timer state];
  if (state > 1)
  {
    if ((state - 2) < 2)
    {
      v9 = MTLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ remainingTime: %f", buf, 0x16u);
      }

      timerControlsView = self->_timerControlsView;
      v11 = v7;
      goto LABEL_11;
    }

    if (state != 4)
    {
      goto LABEL_14;
    }

LABEL_13:
    NSLog(@"Unexpected timer state %ld", [timer state]);
    goto LABEL_14;
  }

  if (!state)
  {
    goto LABEL_13;
  }

  if (state == 1)
  {
    [(MTATimerViewController *)self prepareUIForState:1];
    timerControlsView = self->_timerControlsView;
    v11 = 0.0;
LABEL_11:
    [(MTATimerControlsView *)timerControlsView setTime:v11];
  }

LABEL_14:
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v4 viewDidAppear:appear];
  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MTATimerViewController *)self saveState];
  [(MTATimerViewController *)self stopUpdatingTimerUI];
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v10.receiver = self;
  v10.super_class = MTATimerViewController;
  [(MTATimerViewController *)&v10 viewWillDisappear:disappearCopy];
  if ([(MTATimerViewController *)self isMovingFromParentViewController])
  {
    v5 = MTLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      timer = [(MTATimerViewController *)self timer];
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = timer;
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MTATimerViewController;
  coordinatorCopy = coordinator;
  [(MTATimerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011BC4;
  v8[3] = &unk_1000AD9C8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
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

- (void)handleContentSizeChange:(id)change
{
  [(MTATimerControlsView *)self->_timerControlsView handleContentSizeChange];
  view = [(MTATimerViewController *)self view];
  [view setNeedsDisplay];
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  editLabelCell = [(MTATimerControlsView *)self->_timerControlsView editLabelCell];
  v5 = editLabelCell;
  if (editLabelCell)
  {
    [editLabelCell frame];
    v7 = v6;
    v9 = v8;
    view = [(MTATimerViewController *)self view];
    [v5 convertPoint:view toView:{v7, v9}];
    v12 = v11;

    [v5 frame];
    v14 = v12 + v13;
    userInfo = [showCopy userInfo];
    v16 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    [v16 CGRectValue];
    v18 = v17;

    view2 = [(MTATimerViewController *)self view];
    [view2 frame];
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

- (void)keyboardWillHide:(id)hide
{
  [(MTATimerViewController *)self moveViewFrameToVerticalPosition:hide, 0.0];
  [(MTTimer *)self->_timer duration];
  v4 = [MTAUtilities durationStringFromInterval:?];
  [(MTATimerViewController *)self setTitle:v4];
}

- (void)moveViewFrameToVerticalPosition:(float)position
{
  view = [(MTATimerViewController *)self view];
  [view frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100011F38;
  v12[3] = &unk_1000ADCC0;
  v12[4] = self;
  v12[5] = v7;
  *&v12[6] = position;
  v12[7] = v9;
  v12[8] = v11;
  [UIView animateWithDuration:v12 animations:0.3];
}

- (void)updateShortcutItemForCurrentState
{
  timer = [(MTATimerViewController *)self timer];

  if (!timer)
  {
    return;
  }

  timer2 = [(MTATimerViewController *)self timer];
  if ([timer2 state] == 1)
  {
  }

  else
  {
    timer3 = [(MTATimerViewController *)self timer];
    state = [timer3 state];

    if (state != 2)
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
  timer = [(MTATimerViewController *)self timer];

  if (!timer)
  {
    v5 = 0;
    goto LABEL_8;
  }

  timer2 = [(MTATimerViewController *)self timer];
  if ([timer2 state] == 1)
  {

LABEL_6:
    v5 = +[MTAUtilities startTimerShortcutItem];
    goto LABEL_8;
  }

  timer3 = [(MTATimerViewController *)self timer];
  state = [timer3 state];

  if (state == 2)
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

- (void)startTimer:(id)timer
{
  timerCopy = timer;
  [(MTATimerControlsView *)self->_timerControlsView countDownDuration];
  if (v5 > 0.0)
  {
    timer = [(MTATimerViewController *)self timer];

    if (timer)
    {
      timer2 = [(MTATimerViewController *)self timer];
      v8 = [timer2 mutableCopy];

      v9 = MTLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        timerID = [v8 timerID];
        *buf = 138543618;
        selfCopy = self;
        v28 = 2114;
        v29 = timerID;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting a timer: %{public}@", buf, 0x16u);
      }

      [(MTATimerControlsView *)self->_timerControlsView countDownDuration];
      v12 = v11;
      [v8 setDuration:?];
      [v8 setState:3];
      [MTTimerManager setDefaultDuration:v12];
      objc_initWeak(buf, self);
      timerManager = [(MTATimerViewController *)self timerManager];
      v14 = [timerManager updateTimer:v8];
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
      getCurrentLabel = [(MTATimerControlsView *)self->_timerControlsView getCurrentLabel];
      sound = [(MTATimerViewController *)self sound];
      [(MTATimerViewController *)self addNewTimerWithDuration:getCurrentLabel title:sound sound:v20];
    }
  }
}

- (void)addNewTimerWithDuration:(double)duration title:(id)title sound:(id)sound
{
  titleCopy = title;
  soundCopy = sound;
  v10 = [[MTMutableTimer alloc] initWithState:3 duration:duration];
  v11 = v10;
  if (titleCopy)
  {
    [v10 setTitle:titleCopy];
  }

  if (soundCopy)
  {
    [v11 setSound:soundCopy];
  }

  objc_initWeak(&location, self);
  v12 = MTLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    timerID = [v11 timerID];
    *buf = 138543618;
    selfCopy = self;
    v26 = 2114;
    v27 = timerID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@ starting new timer: %{public}@ and dismissing add controller", buf, 0x16u);
  }

  dataSource = [(MTATimerViewController *)self dataSource];
  v15 = [dataSource addTimer:v11];
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

- (void)cancelTimer:(id)timer
{
  timerCopy = timer;
  timer = [(MTATimerViewController *)self timer];
  v6 = [timer timerByUpdatingWithState:1];

  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [v6 timerID];
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = timerID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping a timer: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  timerManager = [(MTATimerViewController *)self timerManager];
  v10 = [timerManager updateTimer:v6];
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

- (void)pauseResumeTimer:(id)timer
{
  timerCopy = timer;
  timer = [(MTATimerViewController *)self timer];
  state = [timer state];

  if (state == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  timer2 = [(MTATimerViewController *)self timer];
  v9 = [timer2 timerByUpdatingWithState:v7];

  v10 = MTLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [v9 timerID];
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = timerID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Pausing a timer: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  timerManager = [(MTATimerViewController *)self timerManager];
  v13 = [timerManager updateTimer:v9];
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

- (void)timersChanged:(id)changed
{
  changedCopy = changed;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [changedCopy name];
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Received timer notification: %{public}@.  Reloading", &v7, 0x16u);
  }

  [(MTATimerViewController *)self reloadState];
}

- (void)menuBarAppearedWithBuilder:(id)builder targetMenuIdentifier:(id)identifier
{
  builderCopy = builder;
  identifierCopy = identifier;
  delegate = [(MTATimerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(MTATimerViewController *)self delegate];
    [delegate2 performSelector:"menuBarAppearedWithBuilder:targetMenuIdentifier:" withObject:builderCopy withObject:identifierCopy];
  }
}

- (void)showSoundPicker:(id)picker
{
  pickerCopy = picker;
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

    navigationItem = [(TKTonePickerViewController *)self->_tonePickerViewController navigationItem];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"WHEN_TIMER_ENDS" value:&stru_1000AEF10 table:0];
    [navigationItem setTitle:v13];

    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"dismissSoundPicker"];
    [navigationItem setLeftBarButtonItem:v14];

    v15 = [UIBarButtonItem alloc];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"SET" value:&stru_1000AEF10 table:0];
    v18 = [v15 initWithTitle:v17 style:2 target:self action:"confirmPickingSound"];
    [navigationItem setRightBarButtonItem:v18];
  }

  timer = [(MTATimerViewController *)self timer];
  sound = [timer sound];
  toneIdentifier = [sound toneIdentifier];
  [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:toneIdentifier];

  [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:MTShouldAllowToneStore()];
  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"confirmPickingSound" name:UIApplicationSuspendedNotification object:0];

  v23 = [[UINavigationController alloc] initWithRootViewController:self->_tonePickerViewController];
  [v23 setDelegate:self];
  if (self->_style == 3)
  {
    [v23 setModalPresentationStyle:2];
    popoverPresentationController = [v23 popoverPresentationController];
    [popoverPresentationController setDelegate:self];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = pickerCopy;
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

    [popoverPresentationController setSourceView:v25];
    [popoverPresentationController setSourceRect:{x, y, width, height}];
    v34 = +[UIColor mtui_backgroundColor];
    [popoverPresentationController setBackgroundColor:v34];
  }

  [(MTATimerViewController *)self presentViewController:v23 animated:1 completion:0];
}

- (void)confirmPickingSound
{
  selectedToneIdentifier = [(TKTonePickerViewController *)self->_tonePickerViewController selectedToneIdentifier];
  if (!selectedToneIdentifier)
  {
    selectedToneIdentifier = [(TKTonePickerViewController *)self->_tonePickerViewController defaultToneIdentifier];
  }

  timer = [(MTATimerViewController *)self timer];

  if (timer)
  {
    timer2 = [(MTATimerViewController *)self timer];
    sound = [timer2 sound];

    vibrationIdentifier = [sound vibrationIdentifier];
    soundVolume = [sound soundVolume];
    v9 = [MTSound toneSoundWithIdentifier:selectedToneIdentifier vibrationIdentifer:vibrationIdentifier volume:soundVolume];

    timer3 = [(MTATimerViewController *)self timer];
    v11 = [timer3 mutableCopy];

    [v11 setSound:v9];
    timerManager = [(MTATimerViewController *)self timerManager];
    v13 = [timerManager updateTimer:v11];
    v14 = +[NAScheduler mtMainThreadScheduler];
    v15 = [v13 reschedule:v14];

    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10001399C;
    v26 = &unk_1000ADC70;
    selfCopy = self;
    v28 = v11;
    v16 = v11;
    v17 = [v15 addSuccessBlock:&v23];
  }

  else
  {
    sound2 = [(MTATimerViewController *)self sound];
    vibrationIdentifier2 = [sound2 vibrationIdentifier];
    sound3 = [(MTATimerViewController *)self sound];
    soundVolume2 = [sound3 soundVolume];
    v22 = [MTSound toneSoundWithIdentifier:selectedToneIdentifier vibrationIdentifer:vibrationIdentifier2 volume:soundVolume2];
    [(MTATimerViewController *)self setSound:v22];

    [(MTATimerViewController *)self updateSelectedSoundUI];
  }

  [(MTATimerViewController *)self dismissSoundPicker:v23];
}

- (void)dismissSoundPicker
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSuspendedNotification object:0];

  presentedViewController = [(MTATimerViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];

  if (popoverPresentationController)
  {
    navigationItem = [(MTATimerViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setEnabled:1];
  }

  v8 = +[UIApplication sharedApplication];
  -[MTATimerViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [v8 isSuspended] ^ 1, 0);
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
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

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  [(MTATimerViewController *)self confirmPickingSound];
  navigationItem = [(MTATimerViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:1];
}

- (void)didUpdateWithLabel:(id)label sender:(id)sender
{
  [(MTATimerViewController *)self setTimerLabel:label, sender];
  timer = [(MTATimerViewController *)self timer];

  if (timer)
  {
    timer2 = [(MTATimerViewController *)self timer];
    v7 = [timer2 mutableCopy];

    timerLabel = [(MTATimerViewController *)self timerLabel];
    [v7 setTitle:timerLabel];

    timerManager = [(MTATimerViewController *)self timerManager];
    v10 = [timerManager updateTimer:v7];
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
    selfCopy = self;
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