@interface MTATimerCollectionViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)singleTimerSectionSize;
- (MTATimerCollectionViewController)initWithTimerManager:(id)manager dataSource:(id)source;
- (NSString)menuIdentifier;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIMenuBuilder)menuBuilder;
- (double)cellHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)currentTone;
- (id)defaultEditLabel;
- (id)shortcutItemForCurrentState;
- (id)singleTimerCell;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)_addOrEditControllerDidDismissCommitChanges:(BOOL)changes;
- (void)_handleNumberOfItemsDidChange;
- (void)_presentAddEditForTimer:(id)timer isNewTimer:(BOOL)newTimer;
- (void)_reloadUI:(id)i;
- (void)_removeTimer:(id)timer withCompletionBlock:(id)block;
- (void)buildMenuBarRecentMenu;
- (void)cancelTimer:(id)timer;
- (void)cancelTimerForCell:(id)cell;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)confirmPickingSound;
- (void)dataSourceDidReload:(id)reload;
- (void)dataSourceDidReloadRecentDurations:(id)durations;
- (void)dealloc;
- (void)deleteRecentSection;
- (void)deleteRecentTimerForCell:(id)cell;
- (void)didCancelTimerWithSender:(id)sender;
- (void)didReceiveStartTimerShortcutAction;
- (void)didStartTimerWithDuration:(double)duration title:(id)title sound:(id)sound sender:(id)sender;
- (void)didUpdateWithLabel:(id)label sender:(id)sender;
- (void)dismissAddViewController:(id)controller;
- (void)dismissSoundPicker;
- (void)handleContentSizeChange:(id)change;
- (void)handleOrientationChange;
- (void)handleStartTimerShortcutAction;
- (void)handleStopTimerShortcutAction;
- (void)menuBarAppearedWithBuilder:(id)builder targetMenuIdentifier:(id)identifier;
- (void)pauseResumeTimer:(id)timer;
- (void)pauseResumeTimerForCell:(id)cell;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)prepareUIForState:(unint64_t)state forceRefresh:(BOOL)refresh;
- (void)prepareUIForState:(unint64_t)state inCell:(id)cell forceRefresh:(BOOL)refresh;
- (void)reloadSections;
- (void)reloadState:(id)state;
- (void)setupAddButton;
- (void)showAddTimerViewWithTimer:(id)timer;
- (void)showAddView;
- (void)showAddViewForTimer:(id)timer;
- (void)showAddViewWithCompletion:(id)completion;
- (void)showSoundPicker:(id)picker;
- (void)startRecentTimerForCell:(id)cell;
- (void)startTimer:(id)timer;
- (void)startTimerForCell:(id)cell withDuration:(double)duration;
- (void)startUpdatingSingleTimerUI;
- (void)startUpdatingTimerUI;
- (void)stopUpdatingTimerUI;
- (void)timerAddEditControllerDidCancel:(id)cancel reload:(BOOL)reload;
- (void)timerTick:(id)tick;
- (void)tipViewControllerDidBecomeAvailableWithSiriTipsController:(id)controller tipView:(id)view;
- (void)tipViewControllerWasInvalidatedWithSiriTipsController:(id)controller;
- (void)updateAddButton;
- (void)updateLatestDuration;
- (void)updateSelectedTone;
- (void)updateSelectedToneForCell:(id)cell;
- (void)updateStateAndReloadData;
- (void)updateTimerTick:(id)tick;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTATimerCollectionViewController

- (MTATimerCollectionViewController)initWithTimerManager:(id)manager dataSource:(id)source
{
  managerCopy = manager;
  sourceCopy = source;
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
    tabBarItem = [(MTATimerCollectionViewController *)v9 tabBarItem];
    [tabBarItem setImage:v12];

    [(MTATimerCollectionViewController *)v9 setTimerManager:managerCopy];
    [(MTATimerCollectionViewController *)v9 setDataSource:sourceCopy];
    dataSource = [(MTATimerCollectionViewController *)v9 dataSource];
    [dataSource registerObserver:v9];

    v15 = objc_opt_new();
    [(MTATimerCollectionViewController *)v9 setSections:v15];

    title = [(MTATimerCollectionViewController *)v9 title];
    v17 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.timer" title:title];
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
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:v5];

  collectionView2 = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView2 setAllowsSelectionDuringEditing:1];

  collectionView3 = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTATimerActiveCollectionIdentifier"];

  collectionView4 = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTASingleTimerCellIdentifierNew"];

  collectionView5 = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTASingleTimerCellIdentifierActive"];

  collectionView6 = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTATimerRecentCollectionIdentifier"];

  collectionView7 = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView7 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"kMTATimerCollectionHeaderIdentifier"];

  collectionView8 = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMTATimerTipCollectionViewCellIdentifier"];

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
    navigationItem = [(MTATimerCollectionViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
  }
}

- (void)setupAddButton
{
  navigationItem = [(MTATimerCollectionViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  if (!rightBarButtonItem)
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addTimer:"];
    navigationItem2 = [(MTATimerCollectionViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v6];
  }
}

- (void)buildMenuBarRecentMenu
{
  menuBuilder = [(MTATimerCollectionViewController *)self menuBuilder];

  if (menuBuilder)
  {
    menuBuilder2 = [(MTATimerCollectionViewController *)self menuBuilder];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000546B0;
    v6[3] = &unk_1000ADF80;
    v6[4] = self;
    [menuBuilder2 replaceChildrenOfMenuForIdentifier:UIMenuFile fromChildrenBlock:v6];

    v5 = +[UIMenuSystem mainSystem];
    [v5 setNeedsRebuild];
  }
}

- (void)menuBarAppearedWithBuilder:(id)builder targetMenuIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MTATimerCollectionViewController *)self setMenuBuilder:builder];
  [(MTATimerCollectionViewController *)self setMenuIdentifier:identifierCopy];

  [(MTTimerDataSource *)self->_dataSource reloadTimerDurations];

  [(MTATimerCollectionViewController *)self buildMenuBarRecentMenu];
}

- (void)reloadSections
{
  sections = [(MTATimerCollectionViewController *)self sections];
  [sections removeAllObjects];

  if (self->_siriTipView)
  {
    sections2 = [(MTATimerCollectionViewController *)self sections];
    [sections2 addObject:&off_1000B1998];
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

  sections3 = [(MTATimerCollectionViewController *)self sections];
  [sections3 addObject:v5];

LABEL_12:
  [(MTATimerCollectionViewController *)self buildMenuBarRecentMenu];
  if (![(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]|| [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]> 1 || self->_remainInMultipleTimerMode)
  {
    getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
    v8 = [getRecentDurations count];

    if (v8)
    {
      sections4 = [(MTATimerCollectionViewController *)self sections];
      [sections4 addObject:&off_1000B19E0];
    }
  }
}

- (void)handleContentSizeChange:(id)change
{
  self->_cellHeight = -1.0;
  singleTimerCell = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (singleTimerCell)
  {
    controlsView = [singleTimerCell controlsView];
    [controlsView handleContentSizeChange];
  }

  collectionViewLayout = [(MTATimerCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)handleOrientationChange
{
  singleTimerCell = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (singleTimerCell)
  {
    v4 = singleTimerCell;
    controlsView = [singleTimerCell controlsView];
    [controlsView handleContentSizeChange];

    singleTimerCell = v4;
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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MTATimerCollectionViewController;
  [(MTATimerCollectionViewController *)&v6 viewWillAppear:appear];
  [(MTATimerCollectionViewController *)self reloadState];
  [(MTATimerCollectionViewController *)self startUpdatingTimerUI];
  siriTipsController = [(MTATimerCollectionViewController *)self siriTipsController];
  [siriTipsController setDelegate:self];

  siriTipsController2 = [(MTATimerCollectionViewController *)self siriTipsController];
  [siriTipsController2 checkForSiriTips];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MTATimerCollectionViewController;
  [(MTATimerCollectionViewController *)&v7 viewDidAppear:appear];
  userActivity = [(MTATimerCollectionViewController *)self userActivity];
  [userActivity becomeCurrent];

  deferredAddingTimer = [(MTATimerCollectionViewController *)self deferredAddingTimer];

  if (deferredAddingTimer)
  {
    deferredAddingTimer2 = [(MTATimerCollectionViewController *)self deferredAddingTimer];
    deferredAddingTimer2[2]();

    [(MTATimerCollectionViewController *)self setDeferredAddingTimer:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MTATimerCollectionViewController *)self stopUpdatingTimerUI];
  [(NSUserActivity *)self->_userActivity resignCurrent];
  siriTipsController = [(MTATimerCollectionViewController *)self siriTipsController];
  [siriTipsController setDelegate:0];

  siriTipsController2 = [(MTATimerCollectionViewController *)self siriTipsController];
  [siriTipsController2 cancel];

  siriTipView = self->_siriTipView;
  self->_siriTipView = 0;

  v8.receiver = self;
  v8.super_class = MTATimerCollectionViewController;
  [(MTATimerCollectionViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MTATimerCollectionViewController;
  coordinatorCopy = coordinator;
  [(MTATimerCollectionViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000553F8;
  v8[3] = &unk_1000AD9C8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)_removeTimer:(id)timer withCompletionBlock:(id)block
{
  blockCopy = block;
  timerCopy = timer;
  dataSource = [(MTATimerCollectionViewController *)self dataSource];
  v9 = [dataSource removeTimer:timerCopy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100055538;
  v12[3] = &unk_1000AE118;
  v12[4] = self;
  v13 = blockCopy;
  v10 = blockCopy;
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

- (void)updateTimerTick:(id)tick
{
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = indexPathsForVisibleItems;
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
        integerValue = [v12 integerValue];

        if (integerValue == 1)
        {
          v14 = [v11 row];
          dataSource = [(MTATimerCollectionViewController *)self dataSource];
          numberOfActiveTimers = [dataSource numberOfActiveTimers];

          if (v14 < numberOfActiveTimers)
          {
            dataSource2 = [(MTATimerCollectionViewController *)self dataSource];
            v18 = [dataSource2 activeTimerAtRow:{objc_msgSend(v11, "row")}];

            if ([v18 state] == 3)
            {
              collectionView2 = [(MTATimerCollectionViewController *)self collectionView];
              v20 = [collectionView2 cellForItemAtIndexPath:v11];

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

- (void)reloadState:(id)state
{
  stateCopy = state;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading collection view", buf, 2u);
  }

  reloadTimers = [(MTTimerDataSource *)self->_dataSource reloadTimers];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100055B64;
  v12 = &unk_1000AE810;
  selfCopy = self;
  v14 = stateCopy;
  v7 = stateCopy;
  v8 = [reloadTimers addCompletionBlock:&v9];

  [(MTTimerDataSource *)self->_dataSource reloadTimerDurations:v9];
}

- (void)_reloadUI:(id)i
{
  iCopy = i;
  [(MTATimerCollectionViewController *)self _handleNumberOfItemsDidChange];
  v4 = iCopy;
  if (iCopy)
  {
    (*(iCopy + 2))(iCopy);
    v4 = iCopy;
  }
}

- (void)dataSourceDidReload:(id)reload
{
  [(MTATimerCollectionViewController *)self _reloadUI:0];
  [(MTATimerCollectionViewController *)self updateStateAndReloadData];
  numberOfActiveTimers = [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers];
  v5 = numberOfActiveTimers;
  if (numberOfActiveTimers > 1 || numberOfActiveTimers == 1 && self->_remainInMultipleTimerMode)
  {
    [(MTATimerCollectionViewController *)self startUpdatingTimerUI];
  }

  else if (!numberOfActiveTimers)
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
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)dataSourceDidReloadRecentDurations:(id)durations
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ dataSourceDidReloadRecentDurations reloading table", &v6, 0xCu);
  }

  [(MTATimerCollectionViewController *)self reloadSections];
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)updateLatestDuration
{
  singleTimerCell = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (singleTimerCell)
  {
    v8 = singleTimerCell;
    controlsView = [singleTimerCell controlsView];
    dataSource = [(MTATimerCollectionViewController *)self dataSource];
    getLatestDuration = [dataSource getLatestDuration];
    [getLatestDuration duration];
    [controlsView setCountDownDuration:?];

    currentTone = [(MTATimerCollectionViewController *)self currentTone];
    [(MTATimerCollectionViewController *)self setSound:currentTone];

    [(MTATimerCollectionViewController *)self updateSelectedTone];
    singleTimerCell = v8;
  }
}

- (void)updateSelectedTone
{
  singleTimerCell = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (singleTimerCell)
  {
    [(MTATimerCollectionViewController *)self updateSelectedToneForCell:singleTimerCell];
  }

  _objc_release_x1();
}

- (void)updateSelectedToneForCell:(id)cell
{
  cellCopy = cell;
  currentTone = [(MTATimerCollectionViewController *)self currentTone];
  toneIdentifier = [currentTone toneIdentifier];

  sound = [(MTATimerCollectionViewController *)self sound];
  LODWORD(currentTone) = [sound interruptAudio];

  if (currentTone)
  {
    controlsView = [cellCopy controlsView];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"STOP_PLAYING" value:&stru_1000AEF10 table:0];
    controlsView2 = controlsView;
    v11 = v9;
  }

  else
  {
    controlsView = +[TLToneManager sharedToneManager];
    if (([controlsView toneWithIdentifierIsValid:toneIdentifier] & 1) == 0)
    {
      v12 = [controlsView defaultToneIdentifierForAlertType:13];

      toneIdentifier = v12;
    }

    v8 = [controlsView nameForToneIdentifier:toneIdentifier];
    controlsView2 = [cellCopy controlsView];
    v9 = controlsView2;
    v11 = v8;
  }

  [controlsView2 setTimerToneName:v11];
}

- (id)singleTimerCell
{
  sections = [(MTATimerCollectionViewController *)self sections];
  v4 = [sections indexOfObject:&off_1000B19B0];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    collectionView = [(MTATimerCollectionViewController *)self collectionView];
    v7 = [NSIndexPath indexPathForRow:0 inSection:v4];
    v5 = [collectionView cellForItemAtIndexPath:v7];
  }

  return v5;
}

- (void)_handleNumberOfItemsDidChange
{
  dataSource = [(MTATimerCollectionViewController *)self dataSource];
  numberOfActiveTimers = [dataSource numberOfActiveTimers];

  if (!numberOfActiveTimers)
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

- (void)showAddViewForTimer:(id)timer
{
  timerCopy = timer;
  view = [(MTATimerCollectionViewController *)self view];
  window = [view window];

  if ([(MTATimerCollectionViewController *)self isViewLoaded]&& window)
  {
    [(MTATimerCollectionViewController *)self showAddTimerViewWithTimer:timerCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005637C;
    v7[3] = &unk_1000AE1A0;
    objc_copyWeak(&v9, &location);
    v8 = timerCopy;
    [(MTATimerCollectionViewController *)self setDeferredAddingTimer:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)showAddTimerViewWithTimer:(id)timer
{
  timerCopy = timer;
  [(MTATimerCollectionViewController *)self setEditing:0];
  if (timerCopy)
  {
    dataSource = [(MTATimerCollectionViewController *)self dataSource];
    v5 = [dataSource rowForTimer:timerCopy];

    [(MTATimerCollectionViewController *)self _presentAddEditForTimer:timerCopy isNewTimer:v5 == 0x7FFFFFFFFFFFFFFFLL];
    v6 = +[MTAStateStore shared];
    v7 = [MTAStateStoreEvent eventWithType:9];
    [v6 pushEvent:v7];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = +[MTAStateStore shared];
      timerID = [timerCopy timerID];
      uUIDString = [timerID UUIDString];
      v11 = [MTAStateStoreEvent eventWithType:10 identifier:uUIDString];
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
  timerID = [MTAStateStoreEvent eventWithType:9];
  [v8 pushEvent:timerID];
LABEL_6:
}

- (void)_presentAddEditForTimer:(id)timer isNewTimer:(BOOL)newTimer
{
  v5 = [(MTATimerCollectionViewController *)self navigationItem:timer];
  rightBarButtonItem = [v5 rightBarButtonItem];

  if (rightBarButtonItem)
  {
    v15 = [[MTATimerAddViewController alloc] initWithDataSource:self->_dataSource timerManager:self->_timerManager delegate:self];
    [(MTATimerCollectionViewController *)self setAddEditTimerController:v15];
    v7 = [MTAAddSheetNavigationController alloc];
    addEditTimerController = [(MTATimerCollectionViewController *)self addEditTimerController];
    v9 = [(MTAAddSheetNavigationController *)v7 initWithRootViewController:addEditTimerController];

    addEditTimerController2 = [(MTATimerCollectionViewController *)self addEditTimerController];
    [addEditTimerController2 preferredContentSize];
    [(MTAAddSheetNavigationController *)v9 setPreferredContentSize:?];

    [(MTAAddSheetNavigationController *)v9 setModalPresentationStyle:7];
    navigationItem = [(MTATimerCollectionViewController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem rightBarButtonItem];
    popoverPresentationController = [(MTAAddSheetNavigationController *)v9 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:rightBarButtonItem2];

    popoverPresentationController2 = [(MTAAddSheetNavigationController *)v9 popoverPresentationController];
    [popoverPresentationController2 setDelegate:self];

    [(MTATimerCollectionViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)dismissAddViewController:(id)controller
{
  v4 = +[UIApplication sharedApplication];
  isSuspended = [v4 isSuspended];

  [(MTATimerCollectionViewController *)self dismissViewControllerAnimated:isSuspended ^ 1 completion:&stru_1000AE830];
}

- (void)showAddViewWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MTATimerCollectionViewController *)self showAddViewForTimer:0];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v4 = completionCopy;
  }
}

- (void)didStartTimerWithDuration:(double)duration title:(id)title sound:(id)sound sender:(id)sender
{
  senderCopy = sender;
  soundCopy = sound;
  titleCopy = title;
  v13 = [[MTMutableTimer alloc] initWithState:3 duration:duration];
  [v13 setSound:soundCopy];
  [(MTATimerCollectionViewController *)self setSound:soundCopy];

  [v13 setTitle:titleCopy];
  [MTTimerManager setDefaultDuration:duration];
  timerManager = [(MTATimerCollectionViewController *)self timerManager];
  v15 = [timerManager addTimer:v13];
  v16 = +[NAScheduler mtMainThreadScheduler];
  v17 = [v15 reschedule:v16];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000569AC;
  v21[3] = &unk_1000AE530;
  v21[4] = self;
  v22 = v13;
  v23 = senderCopy;
  v18 = senderCopy;
  v19 = v13;
  v20 = [v17 addSuccessBlock:v21];
}

- (void)timerAddEditControllerDidCancel:(id)cancel reload:(BOOL)reload
{
  reloadCopy = reload;
  [(MTATimerCollectionViewController *)self dismissAddViewController:cancel];
  if (reloadCopy)
  {

    [(MTATimerCollectionViewController *)self reloadState];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v9 integerValue];

  if (integerValue == 3)
  {
    [viewCopy bounds];
    [MTATimerTipCollectionViewCell sizeThatFits:self->_siriTipView siriTipView:v13, v14];
    goto LABEL_5;
  }

  if (!integerValue)
  {
    [(MTATimerCollectionViewController *)self singleTimerSectionSize];
LABEL_5:
    width = v11;
    height = v12;
    goto LABEL_6;
  }

  [viewCopy bounds];
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
    if (!([pathCopy row] % v23))
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
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  [collectionView frame];
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

  traitCollection = [(MTATimerCollectionViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  collectionView2 = [(MTATimerCollectionViewController *)self collectionView];
  window = [collectionView2 window];
  [window size];
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
          if (horizontalSizeClass != 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (horizontalSizeClass != 1)
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
    if (horizontalSizeClass == 1 && +[MTAUtilities isLandscape])
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
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

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  [(MTATimerCollectionViewController *)self confirmPickingSound];
  navigationItem = [(MTATimerCollectionViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:1];
}

- (void)_addOrEditControllerDidDismissCommitChanges:(BOOL)changes
{
  if (changes)
  {
    addEditTimerController = [(MTATimerCollectionViewController *)self addEditTimerController];

    if (!addEditTimerController)
    {
      NSLog(@"Attempting to dismiss add or edit controller when there isn't one.");
    }
  }

  [(MTATimerCollectionViewController *)self setAddEditTimerController:0];
  v6 = +[MTAStateStore shared];
  v5 = [MTAStateStoreEvent eventWithType:11];
  [v6 pushEvent:v5];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  sections = [(MTATimerCollectionViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    dataSource = [(MTATimerCollectionViewController *)self dataSource];
    numberOfActiveTimers = [dataSource numberOfActiveTimers];
    goto LABEL_7;
  }

  if (integerValue == 2)
  {
    dataSource = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
    numberOfActiveTimers = [dataSource count];
LABEL_7:
    v10 = numberOfActiveTimers;

    return v10;
  }

  return integerValue != 3 || self->_siriTipView != 0;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([kind isEqualToString:UICollectionElementKindSectionHeader] && (-[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", objc_msgSend(pathCopy, "section")), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v11 == 2))
  {
    v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"kMTATimerCollectionHeaderIdentifier" forIndexPath:pathCopy];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"TIMER_HEADER_RECENT" value:&stru_1000AEF10 table:0];
    headerTitle = [v12 headerTitle];
    [headerTitle setText:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  layout = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section, layout];
  integerValue = [layout integerValue];

  if (integerValue == 3 || integerValue <= 1)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else if (integerValue == 2 && MTUIShouldUseLargePadLayout() && !+[MTAUtilities isLandscape](MTAUtilities, "isLandscape") && (-[MTATimerCollectionViewController dataSource](self, "dataSource"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 numberOfActiveTimers], v10, !v11))
  {
    collectionView = [(MTATimerCollectionViewController *)self collectionView];
    [collectionView frame];
    width = v16;

    height = 114.0;
  }

  else
  {
    collectionView2 = [(MTATimerCollectionViewController *)self collectionView];
    [collectionView2 frame];
    width = v13;

    height = 64.0;
  }

  v14 = width;
  result.height = height;
  result.width = v14;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v8 integerValue];

  if (integerValue <= 1)
  {
    if (!integerValue)
    {
      traitCollection = [(MTATimerCollectionViewController *)self traitCollection];
      horizontalSizeClass = [traitCollection horizontalSizeClass];
      collectionView = [(MTATimerCollectionViewController *)self collectionView];
      window = [collectionView window];
      [window frame];
      v21 = [MTAUtilities shouldUseCompactLayoutForSizeClass:horizontalSizeClass windowWidth:v20];

      dataSource = [(MTATimerCollectionViewController *)self dataSource];
      numberOfActiveTimers = [dataSource numberOfActiveTimers];

      if (numberOfActiveTimers)
      {
        dataSource2 = [(MTATimerCollectionViewController *)self dataSource];
        numberOfActiveTimers2 = [dataSource2 numberOfActiveTimers];

        if (numberOfActiveTimers2 >= 2)
        {
          v26 = MTLogForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100074030(self);
          }
        }

        v27 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"kMTASingleTimerCellIdentifierActive" forIndexPath:pathCopy];
        v10 = v27;
        if (v21)
        {
          v28 = 5;
        }

        else
        {
          v28 = 4;
        }

        controlsView = [v27 controlsView];
        [controlsView setStyle:v28];

        dataSource3 = [(MTATimerCollectionViewController *)self dataSource];
        v31 = [dataSource3 activeTimerAtRow:0];
        -[MTATimerCollectionViewController prepareUIForState:inCell:forceRefresh:](self, "prepareUIForState:inCell:forceRefresh:", [v31 state], v10, 1);

        v32 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
        controlsView5 = v32;
        if (v32)
        {
          [v32 remainingTime];
          v35 = v34;
          controlsView2 = [v10 controlsView];
          [controlsView2 setTime:v35];

          title = [controlsView5 title];
          [(MTATimerCollectionViewController *)self setCurrentTitle:title];
        }
      }

      else
      {
        v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"kMTASingleTimerCellIdentifierNew" forIndexPath:pathCopy];
        controlsView3 = [v10 controlsView];
        [controlsView3 setTimerControlState:0];

        if (v21)
        {
          v42 = 2;
        }

        else
        {
          v42 = 4;
        }

        controlsView4 = [v10 controlsView];
        [controlsView4 setStyle:v42];

        controlsView5 = [v10 controlsView];
        [controlsView5 setState:1];
      }

      controlsView6 = [v10 controlsView];
      currentTitle = [(MTATimerCollectionViewController *)self currentTitle];
      [controlsView6 setCurrentLabel:currentTitle];

      [v10 setAccessibilityIdentifier:@"single-timer-1"];
      controlsView7 = [v10 controlsView];
      dataSource4 = [(MTATimerCollectionViewController *)self dataSource];
      getLatestDuration = [dataSource4 getLatestDuration];
      [getLatestDuration duration];
      [controlsView7 setCountDownDuration:?];

      [(MTATimerCollectionViewController *)self updateSelectedToneForCell:v10];
      controlsView8 = [v10 controlsView];
      [controlsView8 setControlsViewDelegate:self];
      goto LABEL_29;
    }

    if (integerValue == 1)
    {
      v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"kMTATimerActiveCollectionIdentifier" forIndexPath:pathCopy];
      dataSource5 = [(MTATimerCollectionViewController *)self dataSource];
      controlsView8 = [dataSource5 activeTimerAtRow:{objc_msgSend(pathCopy, "row")}];

      timerIDString = [controlsView8 timerIDString];
      v14 = [NSString stringWithFormat:@"active-timer-%@", timerIDString];
      [v10 setAccessibilityIdentifier:v14];

      [v10 refreshUI:controlsView8 animated:0];
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_8;
  }

  if (integerValue != 2)
  {
    if (integerValue == 3)
    {
      v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"kMTATimerTipCollectionViewCellIdentifier" forIndexPath:pathCopy];
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

  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"kMTATimerRecentCollectionIdentifier" forIndexPath:pathCopy];
  v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"recent-timer-%ld", [pathCopy row]);
  [v10 setAccessibilityIdentifier:v38];

  getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v40 = [getRecentDurations objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if (v40)
  {
    [v10 updateWithDuration:v40];
  }

LABEL_30:

  return v10;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [path section]);
  integerValue = [v7 integerValue];

  if (integerValue)
  {
    v9 = integerValue == 3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [cellCopy setDelegate:self];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setDelegate:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MTLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        singleTimerVC = [(MTATimerCollectionViewController *)self singleTimerVC];
        v11 = 138543618;
        selfCopy = self;
        v13 = 2114;
        v14 = singleTimerVC;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ didEndDisplayingCell, current vc: %{public}@", &v11, 0x16u);
      }

      singleTimerVC2 = [(MTATimerCollectionViewController *)self singleTimerVC];
      [singleTimerVC2 stopUpdatingTimerUI];

      singleTimerVC3 = [(MTATimerCollectionViewController *)self singleTimerVC];
      [singleTimerVC3 removeNotificationObserver];
    }
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [path section]);
  integerValue = [v4 integerValue];

  return integerValue == 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MTATimerCollectionViewController *)self dataSource];
  v7 = [pathCopy row];

  v10 = [dataSource activeTimerAtRow:v7];

  v8 = [[MTATimerViewController alloc] initWithTimer:v10 timerManager:self->_timerManager dataSource:self->_dataSource delegate:self];
  navigationController = [(MTATimerCollectionViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)startTimerForCell:(id)cell withDuration:(double)duration
{
  cellCopy = cell;
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  v8 = [collectionView indexPathForCell:cellCopy];

  dataSource = [(MTATimerCollectionViewController *)self dataSource];
  v10 = [dataSource activeTimerAtRow:{objc_msgSend(v8, "row")}];
  v11 = [v10 mutableCopy];

  [v11 setDuration:duration];
  [v11 setState:3];
  timerManager = [(MTATimerCollectionViewController *)self timerManager];
  v13 = [timerManager updateTimer:v11];
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

- (void)cancelTimerForCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  dataSource = [(MTATimerCollectionViewController *)self dataSource];
  v8 = [dataSource activeTimerAtRow:{objc_msgSend(v6, "row")}];
  v9 = [v8 timerByUpdatingWithState:1];

  v10 = MTLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [v9 timerID];
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = timerID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping a timer: %{public}@", buf, 0x16u);
  }

  timerManager = [(MTATimerCollectionViewController *)self timerManager];
  v13 = [timerManager updateTimer:v9];
  v14 = +[NAScheduler mtMainThreadScheduler];
  v15 = [v13 reschedule:v14];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100057FE0;
  v17[3] = &unk_1000AE858;
  v17[4] = self;
  v16 = [v15 addSuccessBlock:v17];
}

- (void)pauseResumeTimerForCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  dataSource = [(MTATimerCollectionViewController *)self dataSource];
  v8 = [dataSource activeTimerAtRow:{objc_msgSend(v6, "row")}];
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
  timerManager = [(MTATimerCollectionViewController *)self timerManager];
  v12 = [timerManager updateTimer:v9];
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

- (void)deleteRecentTimerForCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  v13 = [collectionView indexPathForCell:cellCopy];

  getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v7 = [getRecentDurations objectAtIndexedSubscript:{objc_msgSend(v13, "row")}];

  if (v7)
  {
    timerManager = [(MTATimerCollectionViewController *)self timerManager];
    v9 = [timerManager removeRecentDuration:v7];

    v10 = +[NAScheduler mainThreadScheduler];
    v11 = [v9 reschedule:v10];
    v12 = [v11 addCompletionBlock:&stru_1000AE878];
  }
}

- (void)startRecentTimerForCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(MTATimerCollectionViewController *)self collectionView];
  v12 = [collectionView indexPathForCell:cellCopy];

  getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v7 = [getRecentDurations objectAtIndexedSubscript:{objc_msgSend(v12, "row")}];

  if (v7)
  {
    [v7 duration];
    v9 = v8;
    title = [v7 title];
    sound = [v7 sound];
    [(MTATimerCollectionViewController *)self didStartTimerWithDuration:title title:sound sound:0 sender:v9];
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

- (void)didCancelTimerWithSender:(id)sender
{
  navigationController = [(MTATimerCollectionViewController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];

  [(MTATimerCollectionViewController *)self reloadState];
}

- (void)didReceiveStartTimerShortcutAction
{
  navigationController = [(MTATimerCollectionViewController *)self navigationController];
  v4 = [navigationController popViewControllerAnimated:1];

  [(MTATimerCollectionViewController *)self handleStartTimerShortcutAction];
}

- (id)defaultEditLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Timer" value:&stru_1000AEF10 table:0];

  return v3;
}

- (void)didUpdateWithLabel:(id)label sender:(id)sender
{
  labelCopy = label;
  [(MTATimerCollectionViewController *)self setCurrentTitle:?];
  dataSource = [(MTATimerCollectionViewController *)self dataSource];
  numberOfActiveTimers = [dataSource numberOfActiveTimers];

  if (numberOfActiveTimers == 1)
  {
    v7 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    v8 = [v7 mutableCopy];

    [v8 setTitle:labelCopy];
    dataSource2 = [(MTATimerCollectionViewController *)self dataSource];
    v10 = [dataSource2 updateTimer:v8 reload:0];
  }
}

- (void)startTimer:(id)timer
{
  singleTimerCell = [(MTATimerCollectionViewController *)self singleTimerCell];
  v5 = singleTimerCell;
  if (singleTimerCell)
  {
    controlsView = [singleTimerCell controlsView];
    [controlsView countDownDuration];
    v8 = v7;

    if (v8 > 0.0)
    {
      v9 = [[MTMutableTimer alloc] initWithState:3 duration:v8];
      controlsView2 = [v5 controlsView];
      getCurrentLabel = [controlsView2 getCurrentLabel];

      if ([getCurrentLabel length])
      {
        [v9 setTitle:getCurrentLabel];
      }

      sound = [(MTATimerCollectionViewController *)self sound];
      if (sound)
      {
        [v9 setSound:sound];
      }

      else
      {
        v13 = [MTSound defaultSoundForCategory:1];
        [v9 setSound:v13];
      }

      v14 = MTLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        timerID = [v9 timerID];
        *buf = 138543618;
        selfCopy = self;
        v26 = 2114;
        v27 = timerID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@ starting new timer: %{public}@ and dismissing add controller", buf, 0x16u);
      }

      dataSource = [(MTATimerCollectionViewController *)self dataSource];
      v17 = [dataSource addTimer:v9 reload:1];
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
  sections = [(MTATimerCollectionViewController *)self sections];
  v4 = [sections indexOfObject:&off_1000B19E0];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sections2 = [(MTATimerCollectionViewController *)self sections];
    [sections2 removeObjectAtIndex:v4];

    collectionView = [(MTATimerCollectionViewController *)self collectionView];
    v6 = [NSIndexSet indexSetWithIndex:v4];
    [collectionView deleteSections:v6];
  }
}

- (void)prepareUIForState:(unint64_t)state forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  singleTimerCell = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (singleTimerCell)
  {
    [(MTATimerCollectionViewController *)self prepareUIForState:state inCell:singleTimerCell forceRefresh:refreshCopy];
  }

  _objc_release_x1();
}

- (void)prepareUIForState:(unint64_t)state inCell:(id)cell forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  cellCopy = cell;
  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Preparing UI for state %lu", buf, 0x16u);
  }

  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
  {
    v10 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    controlsView = [cellCopy controlsView];
    [v10 remainingTime];
    v13 = v12;
    [v10 duration];
    v15 = v14;
    if ([v10 isCurrentTimer])
    {
      [controlsView setRemainingTime:state duration:0 state:refreshCopy title:v13 forceRefresh:v15];
    }

    else
    {
      title = [v10 title];
      [controlsView setRemainingTime:state duration:title state:refreshCopy title:v13 forceRefresh:v15];
    }

    [(MTATimerCollectionViewController *)self updateAddButton];
    if (state > 1)
    {
      if (state == 2)
      {
        [(MTATimerCollectionViewController *)self stopUpdatingTimerUI];
        [(MTATimerCollectionViewController *)self timerTick:0];
        goto LABEL_19;
      }

      if (state != 4)
      {
        if (state == 3)
        {
          [(MTATimerCollectionViewController *)self timerTick:0];
          [(MTATimerCollectionViewController *)self startUpdatingSingleTimerUI];
        }

        goto LABEL_19;
      }

LABEL_17:
      NSLog(@"Unexpected timer state %ld", state);
      goto LABEL_19;
    }

    if (!state)
    {
      goto LABEL_17;
    }

    if (state == 1)
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

- (void)timerTick:(id)tick
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ timerTick", &v14, 0xCu);
  }

  if ([(MTATimerCollectionViewController *)self isViewLoaded])
  {
    if (![(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
    {
      singleTimerCell = MTLogForCategory();
      if (os_log_type_enabled(singleTimerCell, OS_LOG_TYPE_ERROR))
      {
        sub_1000741DC();
      }

      goto LABEL_22;
    }

    singleTimerCell = [(MTATimerCollectionViewController *)self singleTimerCell];
    if (!singleTimerCell)
    {
LABEL_22:

      return;
    }

    v6 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    [v6 remainingTime];
    v8 = v7;
    state = [v6 state];
    if (state <= 1)
    {
      if (!state)
      {
        goto LABEL_18;
      }

      if (state == 1)
      {
        [(MTATimerCollectionViewController *)self prepareUIForState:1 forceRefresh:0];
        controlsView = [singleTimerCell controlsView];
        v12 = controlsView;
        v13 = 0.0;
LABEL_16:
        [controlsView setTime:v13];
LABEL_20:
      }
    }

    else
    {
      if ((state - 2) < 2)
      {
        v10 = MTLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543618;
          selfCopy2 = self;
          v16 = 2048;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ remainingTime: %f", &v14, 0x16u);
        }

        controlsView = [singleTimerCell controlsView];
        v12 = controlsView;
        v13 = v8;
        goto LABEL_16;
      }

      if (state == 4)
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

- (void)cancelTimer:(id)timer
{
  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers]== 1)
  {
    v4 = [(MTTimerDataSource *)self->_dataSource activeTimerAtRow:0];
    if (v4)
    {
      v5 = MTLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        timerID = [v4 timerID];
        *buf = 138543618;
        selfCopy = self;
        v10 = 2114;
        v11 = timerID;
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

- (void)pauseResumeTimer:(id)timer
{
  singleTimerCell = [(MTATimerCollectionViewController *)self singleTimerCell];
  if (singleTimerCell && [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
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
      timerID = [v7 timerID];
      *buf = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = timerID;
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

  currentTone = [(MTATimerCollectionViewController *)self currentTone];
  toneIdentifier = [currentTone toneIdentifier];
  [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:toneIdentifier];

  [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:MTShouldAllowToneStore()];
  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"confirmPickingSound" name:UIApplicationSuspendedNotification object:0];

  v22 = [[UINavigationController alloc] initWithRootViewController:self->_tonePickerViewController];
  [v22 setDelegate:self];
  [v22 setModalPresentationStyle:2];
  popoverPresentationController = [v22 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = pickerCopy;
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

  [popoverPresentationController setSourceView:v24];
  [popoverPresentationController setSourceRect:{x, y, width, height}];
  v33 = +[UIColor mtui_backgroundColor];
  [popoverPresentationController setBackgroundColor:v33];

  [(MTATimerCollectionViewController *)self presentViewController:v22 animated:1 completion:0];
}

- (id)currentTone
{
  sound = [(MTATimerCollectionViewController *)self sound];

  if (sound)
  {
    sound2 = [(MTATimerCollectionViewController *)self sound];
LABEL_3:
    sound4 = sound2;
    goto LABEL_6;
  }

  getLatestDuration = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
  sound3 = [getLatestDuration sound];

  if (!sound3)
  {
    sound2 = [MTSound defaultSoundForCategory:1];
    goto LABEL_3;
  }

  getLatestDuration2 = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
  sound4 = [getLatestDuration2 sound];

LABEL_6:

  return sound4;
}

- (void)confirmPickingSound
{
  selectedToneIdentifier = [(TKTonePickerViewController *)self->_tonePickerViewController selectedToneIdentifier];
  if (!selectedToneIdentifier)
  {
    selectedToneIdentifier = [(TKTonePickerViewController *)self->_tonePickerViewController defaultToneIdentifier];
  }

  v17 = selectedToneIdentifier;
  sound = [(MTATimerCollectionViewController *)self sound];
  vibrationIdentifier = [sound vibrationIdentifier];
  sound2 = [(MTATimerCollectionViewController *)self sound];
  soundVolume = [sound2 soundVolume];
  v8 = [MTSound toneSoundWithIdentifier:v17 vibrationIdentifer:vibrationIdentifier volume:soundVolume];
  [(MTATimerCollectionViewController *)self setSound:v8];

  [(MTATimerCollectionViewController *)self updateSelectedTone];
  [(MTATimerCollectionViewController *)self dismissSoundPicker];
  dataSource = [(MTATimerCollectionViewController *)self dataSource];
  numberOfActiveTimers = [dataSource numberOfActiveTimers];

  if (numberOfActiveTimers == 1)
  {
    dataSource2 = [(MTATimerCollectionViewController *)self dataSource];
    v12 = [dataSource2 activeTimerAtRow:0];
    v13 = [v12 mutableCopy];

    sound3 = [(MTATimerCollectionViewController *)self sound];
    [v13 setSound:sound3];

    dataSource3 = [(MTATimerCollectionViewController *)self dataSource];
    v16 = [dataSource3 updateTimer:v13 reload:0];
  }
}

- (void)dismissSoundPicker
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSuspendedNotification object:0];

  presentedViewController = [(MTATimerCollectionViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];

  if (popoverPresentationController)
  {
    navigationItem = [(MTATimerCollectionViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setEnabled:1];
  }

  v8 = +[UIApplication sharedApplication];
  -[MTATimerCollectionViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [v8 isSuspended] ^ 1, 0);
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

- (void)tipViewControllerDidBecomeAvailableWithSiriTipsController:(id)controller tipView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  if (self->_siriTipsController != controllerCopy)
  {
    sub_1000742DC(a2, self);
  }

  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Siri tip became available", v11, 2u);
  }

  objc_storeStrong(&self->_siriTipView, view);
  if (([(NSMutableArray *)self->_sections containsObject:&off_1000B1998]& 1) == 0)
  {
    [(NSMutableArray *)self->_sections insertObject:&off_1000B1998 atIndex:0];
    collectionView = [(MTATimerCollectionViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)tipViewControllerWasInvalidatedWithSiriTipsController:(id)controller
{
  controllerCopy = controller;
  if (self->_siriTipsController != controllerCopy)
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
      collectionView = [(MTATimerCollectionViewController *)self collectionView];
      [collectionView reloadData];
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