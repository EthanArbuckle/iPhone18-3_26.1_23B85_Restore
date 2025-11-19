@interface MTATimerCollectionViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)singleTimerSectionSize;
- (MTATimerCollectionViewController)initWithTimerManager:(id)a3 dataSource:(id)a4;
- (NSString)menuIdentifier;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIMenuBuilder)menuBuilder;
- (double)cellHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)currentTone;
- (id)defaultEditLabel;
- (id)shortcutItemForCurrentState;
- (id)singleTimerCell;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)_addOrEditControllerDidDismissCommitChanges:(BOOL)a3;
- (void)_handleNumberOfItemsDidChange;
- (void)_presentAddEditForTimer:(id)a3 isNewTimer:(BOOL)a4;
- (void)_reloadUI:(id)a3;
- (void)_removeTimer:(id)a3 withCompletionBlock:(id)a4;
- (void)buildMenuBarRecentMenu;
- (void)cancelTimer:(id)a3;
- (void)cancelTimerForCell:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)confirmPickingSound;
- (void)dataSourceDidReload:(id)a3;
- (void)dataSourceDidReloadRecentDurations:(id)a3;
- (void)dealloc;
- (void)deleteRecentSection;
- (void)deleteRecentTimerForCell:(id)a3;
- (void)didCancelTimerWithSender:(id)a3;
- (void)didReceiveStartTimerShortcutAction;
- (void)didStartTimerWithDuration:(double)a3 title:(id)a4 sound:(id)a5 sender:(id)a6;
- (void)didUpdateWithLabel:(id)a3 sender:(id)a4;
- (void)dismissAddViewController:(id)a3;
- (void)dismissSoundPicker;
- (void)handleContentSizeChange:(id)a3;
- (void)handleOrientationChange;
- (void)handleStartTimerShortcutAction;
- (void)handleStopTimerShortcutAction;
- (void)menuBarAppearedWithBuilder:(id)a3 targetMenuIdentifier:(id)a4;
- (void)pauseResumeTimer:(id)a3;
- (void)pauseResumeTimerForCell:(id)a3;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)prepareUIForState:(unint64_t)a3 forceRefresh:(BOOL)a4;
- (void)prepareUIForState:(unint64_t)a3 inCell:(id)a4 forceRefresh:(BOOL)a5;
- (void)reloadSections;
- (void)reloadState:(id)a3;
- (void)setupAddButton;
- (void)showAddTimerViewWithTimer:(id)a3;
- (void)showAddView;
- (void)showAddViewForTimer:(id)a3;
- (void)showAddViewWithCompletion:(id)a3;
- (void)showSoundPicker:(id)a3;
- (void)startRecentTimerForCell:(id)a3;
- (void)startTimer:(id)a3;
- (void)startTimerForCell:(id)a3 withDuration:(double)a4;
- (void)startUpdatingSingleTimerUI;
- (void)startUpdatingTimerUI;
- (void)stopUpdatingTimerUI;
- (void)timerAddEditControllerDidCancel:(id)a3 reload:(BOOL)a4;
- (void)timerTick:(id)a3;
- (void)tipViewControllerDidBecomeAvailableWithSiriTipsController:(id)a3 tipView:(id)a4;
- (void)tipViewControllerWasInvalidatedWithSiriTipsController:(id)a3;
- (void)updateAddButton;
- (void)updateLatestDuration;
- (void)updateSelectedTone;
- (void)updateSelectedToneForCell:(id)a3;
- (void)updateStateAndReloadData;
- (void)updateTimerTick:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTATimerCollectionViewController

- (MTATimerCollectionViewController)initWithTimerManager:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(UICollectionViewFlowLayout);
  v22.receiver = self;
  v22.super_class = MTATimerCollectionViewController;
  v9 = [(MTATimerCollectionViewController *)&v22 initWithCollectionViewLayout:v8];

  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"TIMERS" value:&stru_1000AEF10 table:0];
    [(MTATimerCollectionViewController *)v9 setTitle:v11];

    v12 = [UIImage systemImageNamed:@"timer"];
    v13 = [(MTATimerCollectionViewController *)v9 tabBarItem];
    [v13 setImage:v12];

    [(MTATimerCollectionViewController *)v9 setTimerManager:v6];
    [(MTATimerCollectionViewController *)v9 setDataSource:v7];
    v14 = [(MTATimerCollectionViewController *)v9 dataSource];
    [v14 registerObserver:v9];

    v15 = objc_opt_new();
    [(MTATimerCollectionViewController *)v9 setSections:v15];

    v16 = [(MTATimerCollectionViewController *)v9 title];
    v17 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.timer" title:v16];
    userActivity = v9->_userActivity;
    v9->_userActivity = v17;

    v19 = objc_alloc_init(NSDateComponentsFormatter);
    [(NSDateComponentsFormatter *)v19 setAllowedUnits:224];
    [(NSDateComponentsFormatter *)v19 setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v19 setMaximumUnitCount:3];
    [(NSDateComponentsFormatter *)v19 setFormattingContext:3];
    intervalFormatter = v9->_intervalFormatter;
    v9->_intervalFormatter = v19;

    v9->_cellHeight = -1.0;
  }

  [(MTATimerCollectionViewController *)v9 buildMenuBarRecentMenu];

  return v9;
}

- (void)dealloc
{
  [(NSTimer *)self->_updateTimer invalidate];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTATimerCollectionViewController;
  [(MTATimerCollectionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = MTATimerCollectionViewController;
  [(MTATimerCollectionViewController *)&v17 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"NO_TIMERS" value:&stru_1000AEF10 table:0];

  [(MTATimerCollectionViewController *)self reloadState];
  v5 = +[UIColor mtui_backgroundColor];
  v6 = [(MTATimerCollectionViewController *)self collectionView];
  [v6 setBackgroundColor:v5];

  v7 = [(MTATimerCollectionViewController *)self collectionView];
  [v7 setAllowsSelectionDuringEditing:1];

  v8 = [(MTATimerCollectionViewController *)self collectionView];
  [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTATimerActiveCollectionIdentifier"];

  v9 = [(MTATimerCollectionViewController *)self collectionView];
  [v9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTASingleTimerCellIdentifierNew"];

  v10 = [(MTATimerCollectionViewController *)self collectionView];
  [v10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTASingleTimerCellIdentifierActive"];

  v11 = [(MTATimerCollectionViewController *)self collectionView];
  [v11 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTATimerRecentCollectionIdentifier"];

  v12 = [(MTATimerCollectionViewController *)self collectionView];
  [v12 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"kMTATimerCollectionHeaderIdentifier"];

  v13 = [(MTATimerCollectionViewController *)self collectionView];
  [v13 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTATimerTipCollectionViewCellIdentifier"];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"handleContentSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"handleEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"handleOrientationChange" name:UIDeviceOrientationDidChangeNotification object:0];
}

- (void)updateAddButton
{
  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
  {

    [(MTATimerCollectionViewController *)self setupAddButton];
  }

  else
  {
    [(MTATimerCollectionViewController *)self dismissAddViewController:self];
    v3 = [(MTATimerCollectionViewController *)self navigationItem];
    [v3 setRightBarButtonItem:0];
  }
}

- (void)setupAddButton
{
  v3 = [(MTATimerCollectionViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];

  if (!v4)
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addTimer:"];
    v5 = [(MTATimerCollectionViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v6];
  }
}

- (void)buildMenuBarRecentMenu
{
  v3 = [(MTATimerCollectionViewController *)self menuBuilder];

  if (v3)
  {
    v4 = [(MTATimerCollectionViewController *)self menuBuilder];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000546B0;
    v6[3] = &unk_1000ADF80;
    v6[4] = self;
    [v4 replaceChildrenOfMenuForIdentifier:UIMenuFile fromChildrenBlock:v6];

    v5 = +[UIMenuSystem mainSystem];
    [v5 setNeedsRebuild];
  }
}

- (void)menuBarAppearedWithBuilder:(id)a3 targetMenuIdentifier:(id)a4
{
  v6 = a4;
  [(MTATimerCollectionViewController *)self setMenuBuilder:a3];
  [(MTATimerCollectionViewController *)self setMenuIdentifier:v6];

  [(MTTimerDataSource *)self->_dataSource reloadTimerDurations];

  [(MTATimerCollectionViewController *)self buildMenuBarRecentMenu];
}

- (void)reloadSections
{
  v3 = [(MTATimerCollectionViewController *)self sections];
  [v3 removeAllObjects];

  if (self->_siriTipView)
  {
    v4 = [(MTATimerCollectionViewController *)self sections];
    [v4 addObject:&off_1000B1998];
  }

  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]> 1 || self->_remainInMultipleTimerMode)
  {
    if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]<= 1 && ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]!= 1 || !self->_remainInMultipleTimerMode))
    {
      goto LABEL_12;
    }

    v5 = &off_1000B19C8;
  }

  else
  {
    v5 = &off_1000B19B0;
  }

  v6 = [(MTATimerCollectionViewController *)self sections];
  [v6 addObject:v5];

LABEL_12:
  [(MTATimerCollectionViewController *)self buildMenuBarRecentMenu];
  if (![(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]|| [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]> 1 || self->_remainInMultipleTimerMode)
  {
    v7 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(MTATimerCollectionViewController *)self sections];
      [v9 addObject:&off_1000B19E0];
    }
  }
}

- (void)handleContentSizeChange:(id)a3
{
  self->_cellHeight = -1.0;
  v6 = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (v6)
  {
    v4 = [v6 controlsView];
    [v4 handleContentSizeChange];
  }

  v5 = [(MTATimerCollectionViewController *)self collectionViewLayout];
  [v5 invalidateLayout];
}

- (void)handleOrientationChange
{
  v2 = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 controlsView];
    [v3 handleContentSizeChange];

    v2 = v4;
  }
}

- (double)cellHeight
{
  result = self->_cellHeight;
  if (result < 0.0)
  {
    +[(MTATimerBaseCollectionViewCell *)MTATimerActiveCollectionViewCell];
    self->_cellHeight = result;
  }

  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MTATimerCollectionViewController;
  [(MTATimerCollectionViewController *)&v6 viewWillAppear:a3];
  [(MTATimerCollectionViewController *)self reloadState];
  [(MTATimerCollectionViewController *)self startUpdatingTimerUI];
  v4 = [(MTATimerCollectionViewController *)self siriTipsController];
  [v4 setDelegate:self];

  v5 = [(MTATimerCollectionViewController *)self siriTipsController];
  [v5 checkForSiriTips];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MTATimerCollectionViewController;
  [(MTATimerCollectionViewController *)&v7 viewDidAppear:a3];
  v4 = [(MTATimerCollectionViewController *)self userActivity];
  [v4 becomeCurrent];

  v5 = [(MTATimerCollectionViewController *)self deferredAddingTimer];

  if (v5)
  {
    v6 = [(MTATimerCollectionViewController *)self deferredAddingTimer];
    v6[2]();

    [(MTATimerCollectionViewController *)self setDeferredAddingTimer:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(MTATimerCollectionViewController *)self stopUpdatingTimerUI];
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v5 = [(MTATimerCollectionViewController *)self siriTipsController];
  [v5 setDelegate:0];

  v6 = [(MTATimerCollectionViewController *)self siriTipsController];
  [v6 cancel];

  siriTipView = self->_siriTipView;
  self->_siriTipView = 0;

  v8.receiver = self;
  v8.super_class = MTATimerCollectionViewController;
  [(MTATimerCollectionViewController *)&v8 viewWillDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MTATimerCollectionViewController;
  v7 = a4;
  [(MTATimerCollectionViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000553F8;
  v8[3] = &unk_1000AD9C8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)_removeTimer:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTATimerCollectionViewController *)self dataSource];
  v9 = [v8 removeTimer:v7];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100055538;
  v12[3] = &unk_1000AE118;
  v12[4] = self;
  v13 = v6;
  v10 = v6;
  v11 = [v9 addSuccessBlock:v12];
}

- (void)startUpdatingTimerUI
{
  if (self->_updateTimer)
  {
    [(MTATimerCollectionViewController *)self stopUpdatingTimerUI];
  }

  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating an NSTimer to update timer collection UI", v9, 2u);
  }

  v4 = [NSTimer alloc];
  v5 = +[NSDate date];
  v6 = [v4 initWithFireDate:v5 interval:self target:"updateTimerTick:" selector:0 userInfo:1 repeats:0.25];
  updateTimer = self->_updateTimer;
  self->_updateTimer = v6;

  v8 = +[NSRunLoop currentRunLoop];
  [v8 addTimer:self->_updateTimer forMode:NSDefaultRunLoopMode];
}

- (void)startUpdatingSingleTimerUI
{
  if (self->_updateTimer)
  {
    [(MTATimerCollectionViewController *)self stopUpdatingTimerUI];
  }

  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating an NSTimer to update timer collection UI", v9, 2u);
  }

  v4 = [NSTimer alloc];
  v5 = +[NSDate date];
  v6 = [v4 initWithFireDate:v5 interval:self target:"timerTick:" selector:0 userInfo:1 repeats:0.25];
  updateTimer = self->_updateTimer;
  self->_updateTimer = v6;

  v8 = +[NSRunLoop currentRunLoop];
  [v8 addTimer:self->_updateTimer forMode:NSDefaultRunLoopMode];
}

- (void)stopUpdatingTimerUI
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating timer collection UI updating NSTimer", v5, 2u);
  }

  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)updateTimerTick:(id)a3
{
  v4 = [(MTATimerCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForVisibleItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v11 section]);
        v13 = [v12 integerValue];

        if (v13 == 1)
        {
          v14 = [v11 row];
          v15 = [(MTATimerCollectionViewController *)self dataSource];
          v16 = [v15 numberOfActiveTimers];

          if (v14 < v16)
          {
            v17 = [(MTATimerCollectionViewController *)self dataSource];
            v18 = [v17 activeTimerAtRow:{objc_msgSend(v11, "row")}];

            if ([v18 state] == 3)
            {
              v19 = [(MTATimerCollectionViewController *)self collectionView];
              v20 = [v19 cellForItemAtIndexPath:v11];

              [v20 refreshUI:v18 animated:1];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (void)reloadState:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading collection view", buf, 2u);
  }

  v6 = [(MTTimerDataSource *)self->_dataSource reloadTimers];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100055B64;
  v12 = &unk_1000AE810;
  v13 = self;
  v14 = v4;
  v7 = v4;
  v8 = [v6 addCompletionBlock:&v9];

  [(MTTimerDataSource *)self->_dataSource reloadTimerDurations:v9];
}

- (void)_reloadUI:(id)a3
{
  v5 = a3;
  [(MTATimerCollectionViewController *)self _handleNumberOfItemsDidChange];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)dataSourceDidReload:(id)a3
{
  [(MTATimerCollectionViewController *)self _reloadUI:0];
  [(MTATimerCollectionViewController *)self updateStateAndReloadData];
  v4 = [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers];
  v5 = v4;
  if (v4 > 1 || v4 == 1 && self->_remainInMultipleTimerMode)
  {
    [(MTATimerCollectionViewController *)self startUpdatingTimerUI];
  }

  else if (!v4)
  {
    [(MTATimerCollectionViewController *)self stopUpdatingTimerUI];
  }

  v6 = [MTAUtilities timerShortcutTypeForActiveTimerCount:v5];

  [MTAUtilities updateTimerAppShortcutsForType:v6];
}

- (void)updateStateAndReloadData
{
  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
  {
    if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]< 2)
    {
      goto LABEL_6;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  self->_remainInMultipleTimerMode = v3;
LABEL_6:
  [(MTATimerCollectionViewController *)self reloadSections];
  [(MTATimerCollectionViewController *)self updateAddButton];
  v4 = [(MTATimerCollectionViewController *)self collectionView];
  [v4 reloadData];
}

- (void)dataSourceDidReloadRecentDurations:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ dataSourceDidReloadRecentDurations reloading table", &v6, 0xCu);
  }

  [(MTATimerCollectionViewController *)self reloadSections];
  v5 = [(MTATimerCollectionViewController *)self collectionView];
  [v5 reloadData];
}

- (void)updateLatestDuration
{
  v3 = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 controlsView];
    v5 = [(MTATimerCollectionViewController *)self dataSource];
    v6 = [v5 getLatestDuration];
    [v6 duration];
    [v4 setCountDownDuration:?];

    v7 = [(MTATimerCollectionViewController *)self currentTone];
    [(MTATimerCollectionViewController *)self setSound:v7];

    [(MTATimerCollectionViewController *)self updateSelectedTone];
    v3 = v8;
  }
}

- (void)updateSelectedTone
{
  v3 = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (v3)
  {
    [(MTATimerCollectionViewController *)self updateSelectedToneForCell:v3];
  }

  _objc_release_x1();
}

- (void)updateSelectedToneForCell:(id)a3
{
  v13 = a3;
  v4 = [(MTATimerCollectionViewController *)self currentTone];
  v5 = [v4 toneIdentifier];

  v6 = [(MTATimerCollectionViewController *)self sound];
  LODWORD(v4) = [v6 interruptAudio];

  if (v4)
  {
    v7 = [v13 controlsView];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"STOP_PLAYING" value:&stru_1000AEF10 table:0];
    v10 = v7;
    v11 = v9;
  }

  else
  {
    v7 = +[TLToneManager sharedToneManager];
    if (([v7 toneWithIdentifierIsValid:v5] & 1) == 0)
    {
      v12 = [v7 defaultToneIdentifierForAlertType:13];

      v5 = v12;
    }

    v8 = [v7 nameForToneIdentifier:v5];
    v10 = [v13 controlsView];
    v9 = v10;
    v11 = v8;
  }

  [v10 setTimerToneName:v11];
}

- (id)singleTimerCell
{
  v3 = [(MTATimerCollectionViewController *)self sections];
  v4 = [v3 indexOfObject:&off_1000B19B0];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MTATimerCollectionViewController *)self collectionView];
    v7 = [NSIndexPath indexPathForRow:0 inSection:v4];
    v5 = [v6 cellForItemAtIndexPath:v7];
  }

  return v5;
}

- (void)_handleNumberOfItemsDidChange
{
  v3 = [(MTATimerCollectionViewController *)self dataSource];
  v4 = [v3 numberOfActiveTimers];

  if (!v4)
  {

    [(MTATimerCollectionViewController *)self setEditing:0];
  }
}

- (void)showAddView
{
  v3 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056200;
  block[3] = &unk_1000AD9F0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)showAddViewForTimer:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerCollectionViewController *)self view];
  v6 = [v5 window];

  if ([(MTATimerCollectionViewController *)self isViewLoaded]&& v6)
  {
    [(MTATimerCollectionViewController *)self showAddTimerViewWithTimer:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005637C;
    v7[3] = &unk_1000AE1A0;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [(MTATimerCollectionViewController *)self setDeferredAddingTimer:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)showAddTimerViewWithTimer:(id)a3
{
  v14 = a3;
  [(MTATimerCollectionViewController *)self setEditing:0];
  if (v14)
  {
    v4 = [(MTATimerCollectionViewController *)self dataSource];
    v5 = [v4 rowForTimer:v14];

    [(MTATimerCollectionViewController *)self _presentAddEditForTimer:v14 isNewTimer:v5 == 0x7FFFFFFFFFFFFFFFLL];
    v6 = +[MTAStateStore shared];
    v7 = [MTAStateStoreEvent eventWithType:9];
    [v6 pushEvent:v7];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = +[MTAStateStore shared];
      v9 = [v14 timerID];
      v10 = [v9 UUIDString];
      v11 = [MTAStateStoreEvent eventWithType:10 identifier:v10];
      [v8 pushEvent:v11];

      goto LABEL_6;
    }
  }

  else
  {
    [(MTATimerCollectionViewController *)self _presentAddEditForTimer:0 isNewTimer:1];
    v12 = +[MTAStateStore shared];
    v13 = [MTAStateStoreEvent eventWithType:9];
    [v12 pushEvent:v13];
  }

  v8 = +[MTAStateStore shared];
  v9 = [MTAStateStoreEvent eventWithType:9];
  [v8 pushEvent:v9];
LABEL_6:
}

- (void)_presentAddEditForTimer:(id)a3 isNewTimer:(BOOL)a4
{
  v5 = [(MTATimerCollectionViewController *)self navigationItem:a3];
  v6 = [v5 rightBarButtonItem];

  if (v6)
  {
    v15 = [[MTATimerAddViewController alloc] initWithDataSource:self->_dataSource timerManager:self->_timerManager delegate:self];
    [(MTATimerCollectionViewController *)self setAddEditTimerController:v15];
    v7 = [MTAAddSheetNavigationController alloc];
    v8 = [(MTATimerCollectionViewController *)self addEditTimerController];
    v9 = [(MTAAddSheetNavigationController *)v7 initWithRootViewController:v8];

    v10 = [(MTATimerCollectionViewController *)self addEditTimerController];
    [v10 preferredContentSize];
    [(MTAAddSheetNavigationController *)v9 setPreferredContentSize:?];

    [(MTAAddSheetNavigationController *)v9 setModalPresentationStyle:7];
    v11 = [(MTATimerCollectionViewController *)self navigationItem];
    v12 = [v11 rightBarButtonItem];
    v13 = [(MTAAddSheetNavigationController *)v9 popoverPresentationController];
    [v13 setBarButtonItem:v12];

    v14 = [(MTAAddSheetNavigationController *)v9 popoverPresentationController];
    [v14 setDelegate:self];

    [(MTATimerCollectionViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)dismissAddViewController:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 isSuspended];

  [(MTATimerCollectionViewController *)self dismissViewControllerAnimated:v5 ^ 1 completion:&stru_1000AE830];
}

- (void)showAddViewWithCompletion:(id)a3
{
  v5 = a3;
  [(MTATimerCollectionViewController *)self showAddViewForTimer:0];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)didStartTimerWithDuration:(double)a3 title:(id)a4 sound:(id)a5 sender:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[MTMutableTimer alloc] initWithState:3 duration:a3];
  [v13 setSound:v11];
  [(MTATimerCollectionViewController *)self setSound:v11];

  [v13 setTitle:v12];
  [MTTimerManager setDefaultDuration:a3];
  v14 = [(MTATimerCollectionViewController *)self timerManager];
  v15 = [v14 addTimer:v13];
  v16 = +[NAScheduler mtMainThreadScheduler];
  v17 = [v15 reschedule:v16];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000569AC;
  v21[3] = &unk_1000AE530;
  v21[4] = self;
  v22 = v13;
  v23 = v10;
  v18 = v10;
  v19 = v13;
  v20 = [v17 addSuccessBlock:v21];
}

- (void)timerAddEditControllerDidCancel:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  [(MTATimerCollectionViewController *)self dismissAddViewController:a3];
  if (v4)
  {

    [(MTATimerCollectionViewController *)self reloadState];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v8 section]);
  v10 = [v9 integerValue];

  if (v10 == 3)
  {
    [v7 bounds];
    [MTATimerTipCollectionViewCell sizeThatFits:self->_siriTipView siriTipView:v13, v14];
    goto LABEL_5;
  }

  if (!v10)
  {
    [(MTATimerCollectionViewController *)self singleTimerSectionSize];
LABEL_5:
    width = v11;
    height = v12;
    goto LABEL_6;
  }

  [v7 bounds];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (v19 != CGSizeZero.width || v20 != height)
  {
    v22 = v19 / 250.0;
    v23 = vcvtms_u32_f32(v22);
    v24 = v19 + -30.0 + (v23 - 1) * -15.0;
    UIFloorToViewScale();
    height = v25;
    v26 = v24 - v25 * v23;
    if (!([v8 row] % v23))
    {
      height = height + v26;
    }

    width = height;
  }

LABEL_6:

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)singleTimerSectionSize
{
  v3 = [(MTATimerCollectionViewController *)self collectionView];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  if (+[MTAUtilities isLandscape])
  {
    v8 = 24.0;
  }

  else
  {
    v8 = 8.0;
  }

  v9 = [(MTATimerCollectionViewController *)self traitCollection];
  v10 = [v9 horizontalSizeClass];

  v11 = [(MTATimerCollectionViewController *)self collectionView];
  v12 = [v11 window];
  [v12 size];
  v14 = v13;

  v15 = [MTAUtilities estimatedSplitLayoutForWindowWidth:v14];
  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        if (+[MTAUtilities isLandscape])
        {
          +[MTATimerControlsView estimatedViewHeight];
          v7 = v16;
          if (v10 != 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v10 != 1)
          {
            v17 = v8;
            v7 = v14;
            goto LABEL_21;
          }

          +[MTATimerControlsView estimatedNonCountdownElementHeightWithSpacing];
          v7 = v14 + v23;
        }

        goto LABEL_19;
      }
    }

    else
    {
      +[MTATimerControlsView estimatedViewHeight];
      v7 = v21;
    }

LABEL_20:
    v17 = v8;
    goto LABEL_21;
  }

  if (v15 == 2)
  {
    +[MTATimerControlsView estimatedViewHeight];
    v7 = v22;
    v17 = 0.0;
    if (v10 == 1 && +[MTAUtilities isLandscape])
    {
LABEL_19:
      v7 = v7 + 84.0;
      goto LABEL_20;
    }
  }

  else
  {
    v17 = v8;
    if (v15 == 3)
    {
      +[MTATimerControlsView estimatedViewHeight];
      v19 = v18;
      +[MTATimerControlsView estimatedTonePickerHeight];
      v7 = v19 + v20;
      v17 = 0.0;
    }
  }

LABEL_21:
  v24 = v17 + v7;
  v25 = v5;
  result.height = v24;
  result.width = v25;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = 0.0;
  v6 = 15.0;
  v7 = 0.0;
  v8 = 15.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  [(MTATimerCollectionViewController *)self confirmPickingSound];
  v5 = [(MTATimerCollectionViewController *)self navigationItem];
  v4 = [v5 leftBarButtonItem];
  [v4 setEnabled:1];
}

- (void)_addOrEditControllerDidDismissCommitChanges:(BOOL)a3
{
  if (a3)
  {
    v4 = [(MTATimerCollectionViewController *)self addEditTimerController];

    if (!v4)
    {
      NSLog(@"Attempting to dismiss add or edit controller when there isn't one.");
    }
  }

  [(MTATimerCollectionViewController *)self setAddEditTimerController:0];
  v6 = +[MTAStateStore shared];
  v5 = [MTAStateStoreEvent eventWithType:11];
  [v6 pushEvent:v5];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(MTATimerCollectionViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    v8 = [(MTATimerCollectionViewController *)self dataSource];
    v9 = [v8 numberOfActiveTimers];
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v8 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
    v9 = [v8 count];
LABEL_7:
    v10 = v9;

    return v10;
  }

  return v6 != 3 || self->_siriTipView != 0;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 isEqualToString:UICollectionElementKindSectionHeader] && (-[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", objc_msgSend(v9, "section")), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v11 == 2))
  {
    v12 = [v8 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"kMTATimerCollectionHeaderIdentifier" forIndexPath:v9];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"TIMER_HEADER_RECENT" value:&stru_1000AEF10 table:0];
    v15 = [v12 headerTitle];
    [v15 setText:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a5, a4];
  v7 = [v6 integerValue];

  if (v7 == 3 || v7 <= 1)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else if (v7 == 2 && MTUIShouldUseLargePadLayout() && !+[MTAUtilities isLandscape](MTAUtilities, "isLandscape") && (-[MTATimerCollectionViewController dataSource](self, "dataSource"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 numberOfActiveTimers], v10, !v11))
  {
    v15 = [(MTATimerCollectionViewController *)self collectionView];
    [v15 frame];
    width = v16;

    height = 114.0;
  }

  else
  {
    v12 = [(MTATimerCollectionViewController *)self collectionView];
    [v12 frame];
    width = v13;

    height = 64.0;
  }

  v14 = width;
  result.height = height;
  result.width = v14;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v8 integerValue];

  if (v9 <= 1)
  {
    if (!v9)
    {
      v16 = [(MTATimerCollectionViewController *)self traitCollection];
      v17 = [v16 horizontalSizeClass];
      v18 = [(MTATimerCollectionViewController *)self collectionView];
      v19 = [v18 window];
      [v19 frame];
      v21 = [MTAUtilities shouldUseCompactLayoutForSizeClass:v17 windowWidth:v20];

      v22 = [(MTATimerCollectionViewController *)self dataSource];
      v23 = [v22 numberOfActiveTimers];

      if (v23)
      {
        v24 = [(MTATimerCollectionViewController *)self dataSource];
        v25 = [v24 numberOfActiveTimers];

        if (v25 >= 2)
        {
          v26 = MTLogForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100074030(self);
          }
        }

        v27 = [v6 dequeueReusableCellWithReuseIdentifier:@"kMTASingleTimerCellIdentifierActive" forIndexPath:v7];
        v10 = v27;
        if (v21)
        {
          v28 = 5;
        }

        else
        {
          v28 = 4;
        }

        v29 = [v27 controlsView];
        [v29 setStyle:v28];

        v30 = [(MTATimerCollectionViewController *)self dataSource];
        v31 = [v30 activeTimerAtRow:0];
        -[MTATimerCollectionViewController prepareUIForState:inCell:forceRefresh:](self, "prepareUIForState:inCell:forceRefresh:", [v31 state], v10, 1);

        v32 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
        v33 = v32;
        if (v32)
        {
          [v32 remainingTime];
          v35 = v34;
          v36 = [v10 controlsView];
          [v36 setTime:v35];

          v37 = [v33 title];
          [(MTATimerCollectionViewController *)self setCurrentTitle:v37];
        }
      }

      else
      {
        v10 = [v6 dequeueReusableCellWithReuseIdentifier:@"kMTASingleTimerCellIdentifierNew" forIndexPath:v7];
        v41 = [v10 controlsView];
        [v41 setTimerControlState:0];

        if (v21)
        {
          v42 = 2;
        }

        else
        {
          v42 = 4;
        }

        v43 = [v10 controlsView];
        [v43 setStyle:v42];

        v33 = [v10 controlsView];
        [v33 setState:1];
      }

      v44 = [v10 controlsView];
      v45 = [(MTATimerCollectionViewController *)self currentTitle];
      [v44 setCurrentLabel:v45];

      [v10 setAccessibilityIdentifier:@"single-timer-1"];
      v46 = [v10 controlsView];
      v47 = [(MTATimerCollectionViewController *)self dataSource];
      v48 = [v47 getLatestDuration];
      [v48 duration];
      [v46 setCountDownDuration:?];

      [(MTATimerCollectionViewController *)self updateSelectedToneForCell:v10];
      v12 = [v10 controlsView];
      [v12 setControlsViewDelegate:self];
      goto LABEL_29;
    }

    if (v9 == 1)
    {
      v10 = [v6 dequeueReusableCellWithReuseIdentifier:@"kMTATimerActiveCollectionIdentifier" forIndexPath:v7];
      v11 = [(MTATimerCollectionViewController *)self dataSource];
      v12 = [v11 activeTimerAtRow:{objc_msgSend(v7, "row")}];

      v13 = [v12 timerIDString];
      v14 = [NSString stringWithFormat:@"active-timer-%@", v13];
      [v10 setAccessibilityIdentifier:v14];

      [v10 refreshUI:v12 animated:0];
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    if (v9 == 3)
    {
      v10 = [v6 dequeueReusableCellWithReuseIdentifier:@"kMTATimerTipCollectionViewCellIdentifier" forIndexPath:v7];
      [v10 setSiriTipView:self->_siriTipView];
      goto LABEL_30;
    }

LABEL_8:
    v15 = MTLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000740C0();
    }

    v10 = 0;
    goto LABEL_30;
  }

  v10 = [v6 dequeueReusableCellWithReuseIdentifier:@"kMTATimerRecentCollectionIdentifier" forIndexPath:v7];
  v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"recent-timer-%ld", [v7 row]);
  [v10 setAccessibilityIdentifier:v38];

  v39 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v40 = [v39 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  if (v40)
  {
    [v10 updateWithDuration:v40];
  }

LABEL_30:

  return v10;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [a5 section]);
  v8 = [v7 integerValue];

  if (v8)
  {
    v9 = v8 == 3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v10 setDelegate:self];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setDelegate:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MTLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(MTATimerCollectionViewController *)self singleTimerVC];
        v11 = 138543618;
        v12 = self;
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ didEndDisplayingCell, current vc: %{public}@", &v11, 0x16u);
      }

      v9 = [(MTATimerCollectionViewController *)self singleTimerVC];
      [v9 stopUpdatingTimerUI];

      v10 = [(MTATimerCollectionViewController *)self singleTimerVC];
      [v10 removeNotificationObserver];
    }
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [a4 section]);
  v5 = [v4 integerValue];

  return v5 == 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MTATimerCollectionViewController *)self dataSource];
  v7 = [v5 row];

  v10 = [v6 activeTimerAtRow:v7];

  v8 = [[MTATimerViewController alloc] initWithTimer:v10 timerManager:self->_timerManager dataSource:self->_dataSource delegate:self];
  v9 = [(MTATimerCollectionViewController *)self navigationController];
  [v9 pushViewController:v8 animated:1];
}

- (void)startTimerForCell:(id)a3 withDuration:(double)a4
{
  v6 = a3;
  v7 = [(MTATimerCollectionViewController *)self collectionView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(MTATimerCollectionViewController *)self dataSource];
  v10 = [v9 activeTimerAtRow:{objc_msgSend(v8, "row")}];
  v11 = [v10 mutableCopy];

  [v11 setDuration:a4];
  [v11 setState:3];
  v12 = [(MTATimerCollectionViewController *)self timerManager];
  v13 = [v12 updateTimer:v11];
  v14 = +[NAScheduler mtMainThreadScheduler];
  v15 = [v13 reschedule:v14];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100057CE0;
  v18[3] = &unk_1000ADC70;
  v18[4] = self;
  v19 = v11;
  v16 = v11;
  v17 = [v15 addSuccessBlock:v18];
}

- (void)cancelTimerForCell:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(MTATimerCollectionViewController *)self dataSource];
  v8 = [v7 activeTimerAtRow:{objc_msgSend(v6, "row")}];
  v9 = [v8 timerByUpdatingWithState:1];

  v10 = MTLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 timerID];
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping a timer: %{public}@", buf, 0x16u);
  }

  v12 = [(MTATimerCollectionViewController *)self timerManager];
  v13 = [v12 updateTimer:v9];
  v14 = +[NAScheduler mtMainThreadScheduler];
  v15 = [v13 reschedule:v14];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100057FE0;
  v17[3] = &unk_1000AE858;
  v17[4] = self;
  v16 = [v15 addSuccessBlock:v17];
}

- (void)pauseResumeTimerForCell:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(MTATimerCollectionViewController *)self dataSource];
  v8 = [v7 activeTimerAtRow:{objc_msgSend(v6, "row")}];
  v9 = [v8 mutableCopy];

  if ([v9 state] == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  [v9 setState:v10];
  v11 = [(MTATimerCollectionViewController *)self timerManager];
  v12 = [v11 updateTimer:v9];
  v13 = +[NAScheduler mtMainThreadScheduler];
  v14 = [v12 reschedule:v13];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100058240;
  v17[3] = &unk_1000ADC70;
  v17[4] = self;
  v18 = v9;
  v15 = v9;
  v16 = [v14 addSuccessBlock:v17];
}

- (void)deleteRecentTimerForCell:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerCollectionViewController *)self collectionView];
  v13 = [v5 indexPathForCell:v4];

  v6 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v13, "row")}];

  if (v7)
  {
    v8 = [(MTATimerCollectionViewController *)self timerManager];
    v9 = [v8 removeRecentDuration:v7];

    v10 = +[NAScheduler mainThreadScheduler];
    v11 = [v9 reschedule:v10];
    v12 = [v11 addCompletionBlock:&stru_1000AE878];
  }
}

- (void)startRecentTimerForCell:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerCollectionViewController *)self collectionView];
  v12 = [v5 indexPathForCell:v4];

  v6 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v12, "row")}];

  if (v7)
  {
    [v7 duration];
    v9 = v8;
    v10 = [v7 title];
    v11 = [v7 sound];
    [(MTATimerCollectionViewController *)self didStartTimerWithDuration:v10 title:v11 sound:0 sender:v9];
  }
}

- (id)shortcutItemForCurrentState
{
  if ([MTAUtilities timerShortcutTypeForActiveTimerCount:[(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]]== 1)
  {
    +[MTAUtilities stopTimerShortcutItem];
  }

  else
  {
    +[MTAUtilities startTimerShortcutItem];
  }
  v2 = ;

  return v2;
}

- (void)handleStartTimerShortcutAction
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100058634;
  v2[3] = &unk_1000AD9F0;
  v2[4] = self;
  [(MTATimerCollectionViewController *)self reloadState:v2];
}

- (void)handleStopTimerShortcutAction
{
  v3 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000587D0;
  block[3] = &unk_1000AD9F0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)didCancelTimerWithSender:(id)a3
{
  v4 = [(MTATimerCollectionViewController *)self navigationController];
  v5 = [v4 popViewControllerAnimated:1];

  [(MTATimerCollectionViewController *)self reloadState];
}

- (void)didReceiveStartTimerShortcutAction
{
  v3 = [(MTATimerCollectionViewController *)self navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  [(MTATimerCollectionViewController *)self handleStartTimerShortcutAction];
}

- (id)defaultEditLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Timer" value:&stru_1000AEF10 table:0];

  return v3;
}

- (void)didUpdateWithLabel:(id)a3 sender:(id)a4
{
  v11 = a3;
  [(MTATimerCollectionViewController *)self setCurrentTitle:?];
  v5 = [(MTATimerCollectionViewController *)self dataSource];
  v6 = [v5 numberOfActiveTimers];

  if (v6 == 1)
  {
    v7 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    v8 = [v7 mutableCopy];

    [v8 setTitle:v11];
    v9 = [(MTATimerCollectionViewController *)self dataSource];
    v10 = [v9 updateTimer:v8 reload:0];
  }
}

- (void)startTimer:(id)a3
{
  v4 = [(MTATimerCollectionViewController *)self singleTimerCell];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 controlsView];
    [v6 countDownDuration];
    v8 = v7;

    if (v8 > 0.0)
    {
      v9 = [[MTMutableTimer alloc] initWithState:3 duration:v8];
      v10 = [v5 controlsView];
      v11 = [v10 getCurrentLabel];

      if ([v11 length])
      {
        [v9 setTitle:v11];
      }

      v12 = [(MTATimerCollectionViewController *)self sound];
      if (v12)
      {
        [v9 setSound:v12];
      }

      else
      {
        v13 = [MTSound defaultSoundForCategory:1];
        [v9 setSound:v13];
      }

      v14 = MTLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v9 timerID];
        *buf = 138543618;
        v25 = self;
        v26 = 2114;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@ starting new timer: %{public}@ and dismissing add controller", buf, 0x16u);
      }

      v16 = [(MTATimerCollectionViewController *)self dataSource];
      v17 = [v16 addTimer:v9 reload:1];
      v18 = +[NAScheduler mtMainThreadScheduler];
      v19 = [v17 reschedule:v18];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100058C60;
      v22[3] = &unk_1000AE8A0;
      v22[4] = self;
      v23 = v9;
      v20 = v9;
      v21 = [v19 addCompletionBlock:v22];
    }
  }
}

- (void)deleteRecentSection
{
  v3 = [(MTATimerCollectionViewController *)self sections];
  v4 = [v3 indexOfObject:&off_1000B19E0];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(MTATimerCollectionViewController *)self sections];
    [v5 removeObjectAtIndex:v4];

    v7 = [(MTATimerCollectionViewController *)self collectionView];
    v6 = [NSIndexSet indexSetWithIndex:v4];
    [v7 deleteSections:v6];
  }
}

- (void)prepareUIForState:(unint64_t)a3 forceRefresh:(BOOL)a4
{
  v4 = a4;
  v7 = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (v7)
  {
    [(MTATimerCollectionViewController *)self prepareUIForState:a3 inCell:v7 forceRefresh:v4];
  }

  _objc_release_x1();
}

- (void)prepareUIForState:(unint64_t)a3 inCell:(id)a4 forceRefresh:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Preparing UI for state %lu", buf, 0x16u);
  }

  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
  {
    v10 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    v11 = [v8 controlsView];
    [v10 remainingTime];
    v13 = v12;
    [v10 duration];
    v15 = v14;
    if ([v10 isCurrentTimer])
    {
      [v11 setRemainingTime:a3 duration:0 state:v5 title:v13 forceRefresh:v15];
    }

    else
    {
      v16 = [v10 title];
      [v11 setRemainingTime:a3 duration:v16 state:v5 title:v13 forceRefresh:v15];
    }

    [(MTATimerCollectionViewController *)self updateAddButton];
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        [(MTATimerCollectionViewController *)self stopUpdatingTimerUI];
        [(MTATimerCollectionViewController *)self timerTick:0];
        goto LABEL_19;
      }

      if (a3 != 4)
      {
        if (a3 == 3)
        {
          [(MTATimerCollectionViewController *)self timerTick:0];
          [(MTATimerCollectionViewController *)self startUpdatingSingleTimerUI];
        }

        goto LABEL_19;
      }

LABEL_17:
      NSLog(@"Unexpected timer state %ld", a3);
      goto LABEL_19;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

    if (a3 == 1)
    {
      [(MTATimerCollectionViewController *)self stopUpdatingTimerUI];
    }
  }

  else
  {
    v10 = MTLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000741DC();
    }
  }

LABEL_19:
}

- (void)timerTick:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ timerTick", &v14, 0xCu);
  }

  if ([(MTATimerCollectionViewController *)self isViewLoaded])
  {
    if (![(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
    {
      v5 = MTLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000741DC();
      }

      goto LABEL_22;
    }

    v5 = [(MTATimerCollectionViewController *)self singleTimerCell];
    if (!v5)
    {
LABEL_22:

      return;
    }

    v6 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    [v6 remainingTime];
    v8 = v7;
    v9 = [v6 state];
    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      if (v9 == 1)
      {
        [(MTATimerCollectionViewController *)self prepareUIForState:1 forceRefresh:0];
        v11 = [v5 controlsView];
        v12 = v11;
        v13 = 0.0;
LABEL_16:
        [v11 setTime:v13];
LABEL_20:
      }
    }

    else
    {
      if ((v9 - 2) < 2)
      {
        v10 = MTLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543618;
          v15 = self;
          v16 = 2048;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ remainingTime: %f", &v14, 0x16u);
        }

        v11 = [v5 controlsView];
        v12 = v11;
        v13 = v8;
        goto LABEL_16;
      }

      if (v9 == 4)
      {
LABEL_18:
        v12 = MTLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100074244(self, v6);
        }

        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }
}

- (void)cancelTimer:(id)a3
{
  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]== 1)
  {
    v4 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    if (v4)
    {
      v5 = MTLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 timerID];
        *buf = 138543618;
        v9 = self;
        v10 = 2114;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping a single active timer: %{public}@", buf, 0x16u);
      }

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100059494;
      v7[3] = &unk_1000AD9F0;
      v7[4] = self;
      [(MTATimerCollectionViewController *)self _removeTimer:v4 withCompletionBlock:v7];
    }
  }
}

- (void)pauseResumeTimer:(id)a3
{
  v4 = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (v4 && [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
  {
    v5 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    if ([v5 state] == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    v7 = [v5 timerByUpdatingWithState:v6];
    v8 = MTLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 timerID];
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Pausing a timer: %{public}@", buf, 0x16u);
    }

    v10 = [(MTTimerDataSource *)self->_dataSource updateTimer:v7 reload:0];
    v11 = +[NAScheduler mtMainThreadScheduler];
    v12 = [v10 reschedule:v11];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000597A4;
    v16[3] = &unk_1000AE8C8;
    v16[4] = self;
    v16[5] = v6;
    v13 = [v12 addSuccessBlock:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100059888;
    v15[3] = &unk_1000ADD60;
    v15[4] = self;
    v14 = [v12 addFailureBlock:v15];
  }
}

- (void)showSoundPicker:(id)a3
{
  v34 = a3;
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

  v19 = [(MTATimerCollectionViewController *)self currentTone];
  v20 = [v19 toneIdentifier];
  [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:v20];

  [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:MTShouldAllowToneStore()];
  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"confirmPickingSound" name:UIApplicationSuspendedNotification object:0];

  v22 = [[UINavigationController alloc] initWithRootViewController:self->_tonePickerViewController];
  [v22 setDelegate:self];
  [v22 setModalPresentationStyle:2];
  v23 = [v22 popoverPresentationController];
  [v23 setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v34;
    [v24 bounds];
    x = v25;
    y = v27;
    width = v29;
    height = v31;
  }

  else
  {
    v24 = 0;
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  [v23 setSourceView:v24];
  [v23 setSourceRect:{x, y, width, height}];
  v33 = +[UIColor mtui_backgroundColor];
  [v23 setBackgroundColor:v33];

  [(MTATimerCollectionViewController *)self presentViewController:v22 animated:1 completion:0];
}

- (id)currentTone
{
  v3 = [(MTATimerCollectionViewController *)self sound];

  if (v3)
  {
    v4 = [(MTATimerCollectionViewController *)self sound];
LABEL_3:
    v5 = v4;
    goto LABEL_6;
  }

  v6 = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
  v7 = [v6 sound];

  if (!v7)
  {
    v4 = [MTSound defaultSoundForCategory:1];
    goto LABEL_3;
  }

  v8 = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
  v5 = [v8 sound];

LABEL_6:

  return v5;
}

- (void)confirmPickingSound
{
  v3 = [(TKTonePickerViewController *)self->_tonePickerViewController selectedToneIdentifier];
  if (!v3)
  {
    v3 = [(TKTonePickerViewController *)self->_tonePickerViewController defaultToneIdentifier];
  }

  v17 = v3;
  v4 = [(MTATimerCollectionViewController *)self sound];
  v5 = [v4 vibrationIdentifier];
  v6 = [(MTATimerCollectionViewController *)self sound];
  v7 = [v6 soundVolume];
  v8 = [MTSound toneSoundWithIdentifier:v17 vibrationIdentifer:v5 volume:v7];
  [(MTATimerCollectionViewController *)self setSound:v8];

  [(MTATimerCollectionViewController *)self updateSelectedTone];
  [(MTATimerCollectionViewController *)self dismissSoundPicker];
  v9 = [(MTATimerCollectionViewController *)self dataSource];
  v10 = [v9 numberOfActiveTimers];

  if (v10 == 1)
  {
    v11 = [(MTATimerCollectionViewController *)self dataSource];
    v12 = [v11 activeTimerAtRow:0];
    v13 = [v12 mutableCopy];

    v14 = [(MTATimerCollectionViewController *)self sound];
    [v13 setSound:v14];

    v15 = [(MTATimerCollectionViewController *)self dataSource];
    v16 = [v15 updateTimer:v13 reload:0];
  }
}

- (void)dismissSoundPicker
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSuspendedNotification object:0];

  v4 = [(MTATimerCollectionViewController *)self presentedViewController];
  v5 = [v4 popoverPresentationController];

  if (v5)
  {
    v6 = [(MTATimerCollectionViewController *)self navigationItem];
    v7 = [v6 leftBarButtonItem];
    [v7 setEnabled:1];
  }

  v8 = +[UIApplication sharedApplication];
  -[MTATimerCollectionViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [v8 isSuspended] ^ 1, 0);
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

- (void)tipViewControllerDidBecomeAvailableWithSiriTipsController:(id)a3 tipView:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_siriTipsController != v7)
  {
    sub_1000742DC(a2, self);
  }

  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Siri tip became available", v11, 2u);
  }

  objc_storeStrong(&self->_siriTipView, a4);
  if (([(NSMutableArray *)self->_sections containsObject:&off_1000B1998]& 1) == 0)
  {
    [(NSMutableArray *)self->_sections insertObject:&off_1000B1998 atIndex:0];
    v10 = [(MTATimerCollectionViewController *)self collectionView];
    [v10 reloadData];
  }
}

- (void)tipViewControllerWasInvalidatedWithSiriTipsController:(id)a3
{
  v5 = a3;
  if (self->_siriTipsController != v5)
  {
    sub_100074350(a2, self);
  }

  if (self->_siriTipView)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dismissing Siri tip section", v10, 2u);
    }

    siriTipView = self->_siriTipView;
    self->_siriTipView = 0;

    v8 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B1998];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_sections removeObjectAtIndex:v8];
      v9 = [(MTATimerCollectionViewController *)self collectionView];
      [v9 reloadData];
    }
  }
}

- (UIMenuBuilder)menuBuilder
{
  WeakRetained = objc_loadWeakRetained(&self->_menuBuilder);

  return WeakRetained;
}

- (NSString)menuIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_menuIdentifier);

  return WeakRetained;
}

@end