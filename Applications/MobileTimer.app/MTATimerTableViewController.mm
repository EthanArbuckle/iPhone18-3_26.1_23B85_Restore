@interface MTATimerTableViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (MTATimerTableViewController)initWithTimerManager:(id)manager dataSource:(id)source;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)addViewController;
- (id)currentTone;
- (id)defaultEditLabel;
- (id)shortcutItemForCurrentState;
- (id)singleTimerCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)timerAddEditController;
- (int64_t)numberOfItems;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadData:(id)data;
- (void)_reloadDataIfNecessary;
- (void)_removeTimer:(id)timer withCompletionBlock:(id)block;
- (void)cancelTimer:(id)timer;
- (void)confirmPickingSound;
- (void)dataSourceDidReload:(id)reload;
- (void)dataSourceDidReloadAllDurations:(id)durations;
- (void)dataSourceDidReloadRecentDurations:(id)durations;
- (void)dealloc;
- (void)deleteRowAtIndexPath:(id)path;
- (void)didCancelTimerWithSender:(id)sender;
- (void)didSelectRecentDuration:(id)duration;
- (void)didStartTimerWithDuration:(double)duration title:(id)title sound:(id)sound sender:(id)sender;
- (void)dismissAddEditViewController:(id)controller;
- (void)dismissSoundPicker;
- (void)handleStartTimerShortcutAction;
- (void)popTimerViewController;
- (void)reloadSections;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)showAddView;
- (void)showSoundPicker:(id)picker;
- (void)startTimer:(id)timer;
- (void)startUpdatingTimerUI;
- (void)stopUpdatingTimerUI;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tipViewControllerDidBecomeAvailableWithSiriTipsController:(id)controller tipView:(id)view;
- (void)tipViewControllerWasInvalidatedWithSiriTipsController:(id)controller;
- (void)updateAddButton;
- (void)updateSelectedSoundCell:(id)cell;
- (void)updateSelectedSoundUI;
- (void)updateTimerTick:(id)tick;
- (void)updateTimerWithSender:(id)sender state:(unint64_t)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MTATimerTableViewController

- (MTATimerTableViewController)initWithTimerManager:(id)manager dataSource:(id)source
{
  managerCopy = manager;
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = MTATimerTableViewController;
  v8 = [(MTATableViewController *)&v21 initWithTableViewStyle:0];
  if (v8)
  {
    v9 = [UIImage systemImageNamed:@"timer"];
    tabBarItem = [(MTATimerTableViewController *)v8 tabBarItem];
    [tabBarItem setImage:v9];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"TIMERS" value:&stru_1000AEF10 table:0];
    [(MTATimerTableViewController *)v8 setTitle:v12];

    [(MTATimerTableViewController *)v8 setTimerManager:managerCopy];
    [(MTATimerTableViewController *)v8 setDataSource:sourceCopy];
    dataSource = [(MTATimerTableViewController *)v8 dataSource];
    [dataSource registerObserver:v8];

    title = [(MTATimerTableViewController *)v8 title];
    v15 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.timer" title:title];
    userActivity = v8->_userActivity;
    v8->_userActivity = v15;

    v17 = objc_opt_new();
    sections = v8->_sections;
    v8->_sections = v17;

    v19 = v8;
  }

  return v8;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v14 viewDidLoad];
  tableView = [(MTATimerTableViewController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:1];

  tableView2 = [(MTATimerTableViewController *)self tableView];
  [tableView2 setAllowsSelection:1];

  tableView3 = [(MTATimerTableViewController *)self tableView];
  [tableView3 setLayoutMarginsFollowReadableWidth:1];

  tableView4 = [(MTATimerTableViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:96.0];

  tableView5 = [(MTATimerTableViewController *)self tableView];
  [tableView5 setRowHeight:UITableViewAutomaticDimension];

  tableView6 = [(MTATimerTableViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"MTATimerCellReuseIdentifier"];

  tableView7 = [(MTATimerTableViewController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerRecentCelldentifier"];

  tableView8 = [(MTATimerTableViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTASingleTimerCelldentifier"];

  tableView9 = [(MTATimerTableViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerTipTableViewCellIdentifier"];

  tableView10 = [(MTATimerTableViewController *)self tableView];
  [tableView10 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMTATimerTableViewHeaderReuseIdentifier"];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"handleEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v7 viewWillAppear:appear];
  [(MTATimerTableViewController *)self startUpdatingTimerUI];
  timerToEdit = [(MTATimerTableViewController *)self timerToEdit];

  if (timerToEdit)
  {
    [(MTATimerTableViewController *)self setTimerToEdit:0];
  }

  siriTipsController = [(MTATimerTableViewController *)self siriTipsController];
  [siriTipsController setDelegate:self];

  siriTipsController2 = [(MTATimerTableViewController *)self siriTipsController];
  [siriTipsController2 checkForSiriTips];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MTATableViewController *)self saveState];
  [(MTATimerTableViewController *)self stopUpdatingTimerUI];
  [(NSUserActivity *)self->_userActivity resignCurrent];
  siriTipsController = [(MTATimerTableViewController *)self siriTipsController];
  [siriTipsController setDelegate:0];

  siriTipsController2 = [(MTATimerTableViewController *)self siriTipsController];
  [siriTipsController2 cancel];

  siriTipView = self->_siriTipView;
  self->_siriTipView = 0;

  v8.receiver = self;
  v8.super_class = MTATimerTableViewController;
  [(MTATimerTableViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)dealloc
{
  [(NSTimer *)self->_updateTimer invalidate];
  v3.receiver = self;
  v3.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v3 dealloc];
}

- (void)_reloadData:(id)data
{
  dataCopy = data;
  reloadTimers = [(MTTimerDataSource *)self->_dataSource reloadTimers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100044288;
  v8[3] = &unk_1000AE0A0;
  v9 = dataCopy;
  v6 = dataCopy;
  v7 = [reloadTimers addCompletionBlock:v8];
  [(MTATimerTableViewController *)self setReloadDataFuture:reloadTimers];
  [(MTTimerDataSource *)self->_dataSource reloadTimerDurations];
}

- (void)_reloadDataIfNecessary
{
  reloadDataFuture = [(MTATimerTableViewController *)self reloadDataFuture];

  if (!reloadDataFuture)
  {

    [(MTATimerTableViewController *)self _reloadData:0];
  }
}

- (void)dataSourceDidReload:(id)reload
{
  [(MTATableViewController *)self _reloadUI:0];
  [(MTATimerTableViewController *)self reloadSections];
  [(MTATimerTableViewController *)self updateAddButton];
  tableView = [(MTATimerTableViewController *)self tableView];
  [tableView reloadData];

  numberOfActiveTimers = [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers];
  if (numberOfActiveTimers)
  {
    [(MTATimerTableViewController *)self startUpdatingTimerUI];
  }

  else
  {
    [(MTATimerTableViewController *)self stopUpdatingTimerUI];
  }

  v6 = [MTAUtilities timerShortcutTypeForActiveTimerCount:numberOfActiveTimers];

  [MTAUtilities updateTimerAppShortcutsForType:v6];
}

- (void)dataSourceDidReloadRecentDurations:(id)durations
{
  [(MTATableViewController *)self _reloadUI:0];
  [(MTATimerTableViewController *)self reloadSections];
  tableView = [(MTATimerTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)dataSourceDidReloadAllDurations:(id)durations
{
  [(MTATableViewController *)self _reloadUI:0];
  currentTone = [(MTATimerTableViewController *)self currentTone];
  [(MTATimerTableViewController *)self setSound:currentTone];

  [(MTATimerTableViewController *)self updateSelectedSoundUI];
}

- (void)updateAddButton
{
  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
  {
    addButton = [(MTATableViewController *)self addButton];
    navigationItem = [(MTATimerTableViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:addButton];
  }

  else
  {
    tabBarController = [(MTATimerTableViewController *)self tabBarController];
    selectedIndex = [tabBarController selectedIndex];

    if (selectedIndex == 3)
    {
      [(MTATimerTableViewController *)self dismissAddEditViewController:self];
    }

    addButton = [(MTATimerTableViewController *)self navigationItem];
    [addButton setRightBarButtonItem:0];
  }
}

- (void)reloadSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];
  if (self->_siriTipView)
  {
    [(NSMutableArray *)self->_sections addObject:&off_1000B1908];
  }

  numberOfActiveTimers = [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers];
  sections = self->_sections;
  if (numberOfActiveTimers)
  {
    [(NSMutableArray *)sections addObject:&off_1000B1920];
    addButton = [(MTATableViewController *)self addButton];
    navigationItem = [(MTATimerTableViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:addButton];
  }

  else
  {
    [(NSMutableArray *)sections addObject:&off_1000B1938];
    addButton = [(MTATimerTableViewController *)self navigationItem];
    [addButton setRightBarButtonItem:0];
  }

  getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v8 = [getRecentDurations count];

  if (v8)
  {
    v9 = self->_sections;

    [(NSMutableArray *)v9 addObject:&off_1000B1950];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v4 viewDidAppear:appear];
  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  self->_viewVisible = 0;
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v5.receiver = self;
  v5.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (int64_t)numberOfItems
{
  dataSource = [(MTATimerTableViewController *)self dataSource];
  numberOfActiveTimers = [dataSource numberOfActiveTimers];
  dataSource2 = [(MTATimerTableViewController *)self dataSource];
  getRecentDurations = [dataSource2 getRecentDurations];
  v7 = [getRecentDurations count];

  return numberOfActiveTimers + v7;
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
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NSTimer exists", v10, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating an NSTimer to update the UI", buf, 2u);
    }

    v6 = [NSTimer alloc];
    v7 = +[NSDate date];
    v8 = [v6 initWithFireDate:v7 interval:self target:"updateTimerTick:" selector:0 userInfo:1 repeats:0.25];
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopUpdatingTimerUI", &v5, 0xCu);
  }

  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)updateTimerTick:(id)tick
{
  if ([(MTATimerTableViewController *)self isViewLoaded])
  {
    tableView = [(MTATimerTableViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = indexPathsForVisibleRows;
    v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          tableView2 = [(MTATimerTableViewController *)self tableView];
          v12 = [tableView2 cellForRowAtIndexPath:v10];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v10 row];
            dataSource = [(MTATimerTableViewController *)self dataSource];
            numberOfActiveTimers = [dataSource numberOfActiveTimers];

            if (v13 < numberOfActiveTimers)
            {
              dataSource2 = [(MTATimerTableViewController *)self dataSource];
              v17 = [dataSource2 activeTimerAtRow:{objc_msgSend(v10, "row")}];

              if ([v17 state] == 3)
              {
                [v12 tickWithTimer:v17];
              }
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }
}

- (void)showAddView
{
  [(MTATimerTableViewController *)self dismissAddEditViewController:self];
  navigationItem = [(MTATimerTableViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  if (rightBarButtonItem)
  {
    [(MTATimerTableViewController *)self setTimerToEdit:0];
    v5.receiver = self;
    v5.super_class = MTATimerTableViewController;
    [(MTATableViewController *)&v5 showAddView];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v6 integerValue];

  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      dataSource = [(MTATimerTableViewController *)self dataSource];
      getRecentDurations = [dataSource getRecentDurations];
      v23 = [getRecentDurations count];

      if ([pathCopy row] >= v23)
      {
        v28 = MTLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100073B38();
        }
      }

      else
      {
        getRecentDurations2 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
        v25 = [getRecentDurations2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

        if (v25)
        {
          title = [v25 title];
          [MTATimerRecentCell estimatedCellHeightForTimerWithTitle:title];
          v15 = v27;

          goto LABEL_19;
        }

        v28 = MTLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_100073BB8();
        }
      }
    }

    else if (integerValue == 3)
    {
      tableView = [(MTATimerTableViewController *)self tableView];
      [tableView bounds];
      [MTATimerTipTableViewCell sizeThatFits:self->_siriTipView siriTipView:v17, v18];
      v15 = v19;

      goto LABEL_19;
    }

LABEL_18:
    v15 = 110.0;
    goto LABEL_19;
  }

  if (!integerValue)
  {
    +[MTATimerControlsView estimatedViewHeight];
    v15 = v20 + 32.0;
    goto LABEL_19;
  }

  if (integerValue != 1)
  {
    goto LABEL_18;
  }

  v8 = [pathCopy row];
  dataSource2 = [(MTATimerTableViewController *)self dataSource];
  numberOfActiveTimers = [dataSource2 numberOfActiveTimers];

  if (v8 >= numberOfActiveTimers)
  {
    goto LABEL_18;
  }

  dataSource3 = [(MTATimerTableViewController *)self dataSource];
  v12 = [dataSource3 activeTimerAtRow:{objc_msgSend(pathCopy, "row")}];

  title2 = [v12 title];
  [MTATimerTableViewCell estimatedCellHeightForTimerWithTitle:title2];
  v15 = v14;

LABEL_19:
  return v15;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v5 integerValue];

  if (integerValue > 1)
  {
    if (integerValue != 2)
    {
      if (integerValue == 3)
      {
        return self->_siriTipView != 0;
      }

      return 0;
    }

    dataSource = [(MTATimerTableViewController *)self dataSource];
    getRecentDurations = [dataSource getRecentDurations];
    v12 = [getRecentDurations count];

    return v12;
  }

  else
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        dataSource2 = [(MTATimerTableViewController *)self dataSource];
        numberOfActiveTimers = [dataSource2 numberOfActiveTimers];

        return numberOfActiveTimers;
      }

      return 0;
    }

    return 1;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v8 integerValue];

  v10 = 0;
  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
      v23 = [pathCopy row];
      if (v23 >= [getRecentDurations count])
      {
        v24 = MTLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100073C40(pathCopy);
        }
      }

      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"kMTATimerRecentCelldentifier" forIndexPath:pathCopy];
      v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"recent-timer-%ld", [pathCopy row]);
      [v10 setAccessibilityIdentifier:v25];

      v26 = -[NSObject objectAtIndexedSubscript:](getRecentDurations, "objectAtIndexedSubscript:", [pathCopy row]);
      [v10 setDelegate:self duration:v26];

      [v10 setSelectionStyle:0];
      goto LABEL_23;
    }

    if (integerValue != 3)
    {
      goto LABEL_24;
    }

    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"kMTATimerTipTableViewCellIdentifier" forIndexPath:pathCopy];
    [v10 setSiriTipView:self->_siriTipView];
LABEL_12:
    [v10 setSelectionStyle:0];
    goto LABEL_24;
  }

  if (!integerValue)
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"kMTASingleTimerCelldentifier" forIndexPath:pathCopy];
    [v10 updateDelegate:self];
    getLatestDuration = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
    [v10 updateWithLatestDuration:getLatestDuration];

    controlsView = [v10 controlsView];
    [controlsView setCurrentLabel:0];

    [(MTATimerTableViewController *)self updateSelectedSoundCell:v10];
    goto LABEL_12;
  }

  if (integerValue != 1)
  {
    goto LABEL_24;
  }

  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"MTATimerCellReuseIdentifier" forIndexPath:pathCopy];
  dataSource = [(MTATimerTableViewController *)self dataSource];
  numberOfActiveTimers = [dataSource numberOfActiveTimers];

  if ([pathCopy row] >= numberOfActiveTimers)
  {
    v27 = MTLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100073CC4();
    }

    goto LABEL_21;
  }

  dataSource2 = [(MTATimerTableViewController *)self dataSource];
  getRecentDurations = [dataSource2 activeTimerAtRow:{objc_msgSend(pathCopy, "row")}];

  if (!getRecentDurations)
  {
LABEL_21:
    getRecentDurations = MTLogForCategory();
    if (os_log_type_enabled(getRecentDurations, OS_LOG_TYPE_ERROR))
    {
      sub_100073D44(pathCopy);
    }

    goto LABEL_23;
  }

  timerIDString = [getRecentDurations timerIDString];
  [v10 setAccessibilityIdentifier:timerIDString];

  [v10 setUserInteractionEnabled:1];
  [v10 setDelegate:self];
  [getRecentDurations remainingTime];
  v17 = v16;
  [getRecentDurations duration];
  v19 = v18;
  state = [getRecentDurations state];
  if ([getRecentDurations hasDefaultTitle])
  {
    [v10 setRemainingTime:state duration:0 state:1 title:v17 forceRefresh:v19];
  }

  else
  {
    displayTitle = [getRecentDurations displayTitle];
    [v10 setRemainingTime:state duration:displayTitle state:1 title:v17 forceRefresh:v19];
  }

LABEL_23:

LABEL_24:

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v8 integerValue];

  if (integerValue == 1)
  {
    v10 = [pathCopy row];
    dataSource = [(MTATimerTableViewController *)self dataSource];
    numberOfActiveTimers = [dataSource numberOfActiveTimers];

    if (v10 < numberOfActiveTimers)
    {
      dataSource2 = [(MTATimerTableViewController *)self dataSource];
      v14 = [dataSource2 activeTimerAtRow:{objc_msgSend(pathCopy, "row")}];

      v15 = cellCopy;
      [v14 remainingTime];
      v17 = v16;
      [v14 duration];
      v19 = v18;
      state = [v14 state];
      if ([v14 isCurrentTimer])
      {
        [v15 setRemainingTime:state duration:0 state:1 title:v17 forceRefresh:v19];
      }

      else
      {
        title = [v14 title];
        [v15 setRemainingTime:state duration:title state:1 title:v17 forceRefresh:v19];
      }
    }
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"kMTATimerTableViewHeaderReuseIdentifier"];
  v7 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v7 integerValue];

  if (integerValue == 2)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"TIMER_ADD_SHEET_RECENTS" value:&stru_1000AEF10 table:0];
    view = [(MTATimerTableViewController *)self view];
    v12 = +[MTAUtilities sectionHeaderConfigurationWithTitle:isRTL:](MTAUtilities, "sectionHeaderConfigurationWithTitle:isRTL:", v10, [view mtui_isRTL]);

    [v6 setContentConfiguration:v12];
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v4 integerValue];

  result = UITableViewAutomaticDimension;
  if (integerValue == 1)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v4 integerValue];

  if (integerValue)
  {
    v6 = integerValue == 3;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v4 integerValue];

  if (integerValue)
  {
    v6 = integerValue == 3;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    dataSource = [(MTATimerTableViewController *)self dataSource];
    v8 = [dataSource activeTimerAtRow:{objc_msgSend(pathCopy, "row")}];
    [(MTATimerTableViewController *)self setTimerToEdit:v8];

    navigationController = [(MTATimerTableViewController *)self navigationController];
    timerAddEditController = [(MTATimerTableViewController *)self timerAddEditController];
    [navigationController pushViewController:timerAddEditController animated:1];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [path section]);
  integerValue = [v4 integerValue];

  return (integerValue - 1) < 2;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100045AC0;
  v14[3] = &unk_1000ADA20;
  objc_copyWeak(&v16, &location);
  v8 = pathCopy;
  v15 = v8;
  v9 = [UIContextualAction contextualActionWithStyle:1 title:0 handler:v14];
  v10 = [UIImage systemImageNamed:@"trash"];
  [v9 setImage:v10];

  v18 = v9;
  v11 = [NSArray arrayWithObjects:&v18 count:1];
  v12 = [UISwipeActionsConfiguration configurationWithActions:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

- (void)deleteRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v16 = pathCopy;
    v5 = [pathCopy row];
    v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v16 section]);
    integerValue = [v6 integerValue];

    if (integerValue == 2)
    {
      getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
      v9 = [getRecentDurations objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];

      if (v9)
      {
        timerManager = [(MTATimerTableViewController *)self timerManager];
        v12 = [timerManager removeRecentDuration:v9];

        v13 = +[NAScheduler mainThreadScheduler];
        v14 = [v12 reschedule:v13];
        v15 = [v14 addCompletionBlock:&stru_1000AE4E0];
      }
    }

    else
    {
      pathCopy = v16;
      if (integerValue != 1)
      {
        goto LABEL_8;
      }

      dataSource = [(MTATimerTableViewController *)self dataSource];
      v9 = [dataSource activeTimerAtRow:v5];

      [(MTATimerTableViewController *)self _removeTimer:v9 withCompletionBlock:&stru_1000AE4C0];
    }

    pathCopy = v16;
  }

LABEL_8:
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = MTATimerTableViewController;
  [(MTATimerTableViewController *)&v4 setEditing:editing animated:animated];
}

- (void)_removeTimer:(id)timer withCompletionBlock:(id)block
{
  timerCopy = timer;
  blockCopy = block;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [timerCopy timerID];
    *buf = 138543362;
    v17 = timerID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing timer %{public}@", buf, 0xCu);
  }

  dataSource = [(MTATimerTableViewController *)self dataSource];
  v11 = [dataSource removeTimer:timerCopy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100045E74;
  v14[3] = &unk_1000AE508;
  v15 = blockCopy;
  v12 = blockCopy;
  v13 = [v11 addSuccessBlock:v14];
}

- (id)addViewController
{
  v3 = [MTAAddSheetNavigationController alloc];
  timerAddEditController = [(MTATimerTableViewController *)self timerAddEditController];
  v5 = [(MTAAddSheetNavigationController *)v3 initWithRootViewController:timerAddEditController];

  return v5;
}

- (id)timerAddEditController
{
  timerToEdit = [(MTATimerTableViewController *)self timerToEdit];

  if (timerToEdit)
  {
    v4 = [MTATimerViewController alloc];
    timerToEdit2 = [(MTATimerTableViewController *)self timerToEdit];
    v6 = [(MTATimerViewController *)v4 initWithTimer:timerToEdit2 timerManager:self->_timerManager dataSource:self->_dataSource delegate:self];
  }

  else
  {
    v6 = [[MTATimerAddViewController alloc] initWithDataSource:self->_dataSource timerManager:self->_timerManager delegate:self];
  }

  return v6;
}

- (void)didCancelTimerWithSender:(id)sender
{
  [(MTATimerTableViewController *)self dismissAddEditViewController:sender];

  [(MTATimerTableViewController *)self _reloadData:0];
}

- (void)dismissAddEditViewController:(id)controller
{
  controllerCopy = controller;
  timerToEdit = [(MTATimerTableViewController *)self timerToEdit];

  if (timerToEdit)
  {
    [(MTATimerTableViewController *)self popTimerViewController];
  }

  else
  {
    [(MTATableViewController *)self dismissAddViewController:controllerCopy];
  }
}

- (void)popTimerViewController
{
  v3 = +[UIApplication sharedApplication];
  isSuspended = [v3 isSuspended];

  [(MTATableViewController *)self finishAddViewControllerDismissal:isSuspended ^ 1];
  navigationController = [(MTATimerTableViewController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:isSuspended ^ 1];
}

- (void)updateTimerWithSender:(id)sender state:(unint64_t)state
{
  senderCopy = sender;
  tableView = [(MTATimerTableViewController *)self tableView];
  v8 = [tableView indexPathForCell:senderCopy];

  dataSource = [(MTATimerTableViewController *)self dataSource];
  v10 = [dataSource activeTimerAtRow:{objc_msgSend(v8, "row")}];

  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [v10 timerID];
    *buf = 138543874;
    selfCopy = self;
    v25 = 2114;
    v26 = timerID;
    v27 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ updating timer:%{public}@ with state: %li", buf, 0x20u);
  }

  v13 = [v10 timerByUpdatingWithState:state];
  v14 = [(MTTimerDataSource *)self->_dataSource updateTimer:v13 reload:1];
  v15 = +[NAScheduler mtMainThreadScheduler];
  v16 = [v14 reschedule:v15];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004635C;
  v20[3] = &unk_1000AE530;
  v20[4] = self;
  v21 = senderCopy;
  v22 = v13;
  v17 = v13;
  v18 = senderCopy;
  v19 = [v16 addSuccessBlock:v20];
}

- (void)didStartTimerWithDuration:(double)duration title:(id)title sound:(id)sound sender:(id)sender
{
  titleCopy = title;
  soundCopy = sound;
  senderCopy = sender;
  v13 = [[MTMutableTimer alloc] initWithState:3 duration:duration];
  v14 = v13;
  if (titleCopy)
  {
    [v13 setTitle:titleCopy];
  }

  if (soundCopy)
  {
    [v14 setSound:soundCopy];
  }

  v15 = MTLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    timerID = [v14 timerID];
    *buf = 138543618;
    selfCopy = self;
    v29 = 2114;
    v30 = timerID;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@ starting new timer: %{public}@ and dismissing add controller", buf, 0x16u);
  }

  dataSource = [(MTATimerTableViewController *)self dataSource];
  v18 = [dataSource addTimer:v14];
  v19 = +[NAScheduler mtMainThreadScheduler];
  v20 = [v18 reschedule:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000466D4;
  v24[3] = &unk_1000AE558;
  v24[4] = self;
  v25 = v14;
  v26 = senderCopy;
  v21 = senderCopy;
  v22 = v14;
  v23 = [v20 addCompletionBlock:v24];
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
  v2[2] = sub_10004686C;
  v2[3] = &unk_1000AD9F0;
  v2[4] = self;
  [(MTATableViewController *)self reloadState:v2];
}

- (void)didSelectRecentDuration:(id)duration
{
  durationCopy = duration;
  [durationCopy duration];
  v6 = v5;
  title = [durationCopy title];
  sound = [durationCopy sound];

  [(MTATimerTableViewController *)self didStartTimerWithDuration:title title:sound sound:0 sender:v6];
}

- (void)startTimer:(id)timer
{
  singleTimerCell = [(MTATimerTableViewController *)self singleTimerCell];
  if (singleTimerCell)
  {
    v11 = singleTimerCell;
    controlsView = [singleTimerCell controlsView];
    [controlsView countDownDuration];
    v7 = v6;
    controlsView2 = [v11 controlsView];
    getCurrentLabel = [controlsView2 getCurrentLabel];
    currentTone = [(MTATimerTableViewController *)self currentTone];
    [(MTATimerTableViewController *)self didStartTimerWithDuration:getCurrentLabel title:currentTone sound:0 sender:v7];

    singleTimerCell = v11;
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
      v7[2] = sub_100046BB0;
      v7[3] = &unk_1000AD9F0;
      v7[4] = self;
      [(MTATimerTableViewController *)self _removeTimer:v4 withCompletionBlock:v7];
    }
  }
}

- (void)showSoundPicker:(id)picker
{
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

  currentTone = [(MTATimerTableViewController *)self currentTone];
  toneIdentifier = [currentTone toneIdentifier];
  [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:toneIdentifier];

  [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:MTShouldAllowToneStore()];
  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"confirmPickingSound" name:UIApplicationSuspendedNotification object:0];

  v22 = [[UINavigationController alloc] initWithRootViewController:self->_tonePickerViewController];
  [v22 setDelegate:self];
  [(MTATimerTableViewController *)self presentViewController:v22 animated:1 completion:0];
}

- (void)confirmPickingSound
{
  selectedToneIdentifier = [(TKTonePickerViewController *)self->_tonePickerViewController selectedToneIdentifier];
  if (!selectedToneIdentifier)
  {
    selectedToneIdentifier = [(TKTonePickerViewController *)self->_tonePickerViewController defaultToneIdentifier];
  }

  v9 = selectedToneIdentifier;
  sound = [(MTATimerTableViewController *)self sound];
  vibrationIdentifier = [sound vibrationIdentifier];
  sound2 = [(MTATimerTableViewController *)self sound];
  soundVolume = [sound2 soundVolume];
  v8 = [MTSound toneSoundWithIdentifier:v9 vibrationIdentifer:vibrationIdentifier volume:soundVolume];
  [(MTATimerTableViewController *)self setSound:v8];

  [(MTATimerTableViewController *)self updateSelectedSoundUI];
  [(MTATimerTableViewController *)self dismissSoundPicker];
}

- (void)dismissSoundPicker
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSuspendedNotification object:0];

  presentedViewController = [(MTATimerTableViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];

  if (popoverPresentationController)
  {
    navigationItem = [(MTATimerTableViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setEnabled:1];
  }

  v8 = +[UIApplication sharedApplication];
  -[MTATimerTableViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [v8 isSuspended] ^ 1, 0);
}

- (void)updateSelectedSoundUI
{
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    singleTimerCell = [(MTATimerTableViewController *)self singleTimerCell];
    if (singleTimerCell)
    {
      [(MTATimerTableViewController *)self updateSelectedSoundCell:singleTimerCell];
    }

    _objc_release_x1();
  }
}

- (void)updateSelectedSoundCell:(id)cell
{
  cellCopy = cell;
  currentTone = [(MTATimerTableViewController *)self currentTone];
  toneIdentifier = [currentTone toneIdentifier];

  sound = [(MTATimerTableViewController *)self sound];
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
  v3 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B1938];
  tableView = [(MTATimerTableViewController *)self tableView];
  v5 = [NSIndexPath indexPathForRow:0 inSection:v3];
  v6 = [tableView cellForRowAtIndexPath:v5];

  return v6;
}

- (id)currentTone
{
  sound = [(MTATimerTableViewController *)self sound];

  if (sound)
  {
    sound2 = [(MTATimerTableViewController *)self sound];
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

- (id)defaultEditLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Timer" value:&stru_1000AEF10 table:0];

  return v3;
}

- (void)tipViewControllerDidBecomeAvailableWithSiriTipsController:(id)controller tipView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  if (self->_siriTipsController != controllerCopy)
  {
    sub_100073F20(a2, self);
  }

  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Siri tip became available", v12, 2u);
  }

  objc_storeStrong(&self->_siriTipView, view);
  if (([(NSMutableArray *)self->_sections containsObject:&off_1000B1908]& 1) == 0)
  {
    [(NSMutableArray *)self->_sections insertObject:&off_1000B1908 atIndex:0];
    tableView = [(MTATimerTableViewController *)self tableView];
    v11 = [NSIndexSet indexSetWithIndex:0];
    [tableView insertSections:v11 withRowAnimation:3];
  }
}

- (void)tipViewControllerWasInvalidatedWithSiriTipsController:(id)controller
{
  controllerCopy = controller;
  if (self->_siriTipsController != controllerCopy)
  {
    sub_100073F94(a2, self);
  }

  if (self->_siriTipView)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dismissing Siri tip section", v12, 2u);
    }

    siriTipView = self->_siriTipView;
    self->_siriTipView = 0;

    v8 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B1908];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      [(NSMutableArray *)self->_sections removeObjectAtIndex:v8];
      tableView = [(MTATimerTableViewController *)self tableView];
      v11 = [NSIndexSet indexSetWithIndex:v9];
      [tableView deleteSections:v11 withRowAnimation:3];
    }
  }
}

@end