@interface MTATimerTableViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (MTATimerTableViewController)initWithTimerManager:(id)a3 dataSource:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)addViewController;
- (id)currentTone;
- (id)defaultEditLabel;
- (id)shortcutItemForCurrentState;
- (id)singleTimerCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)timerAddEditController;
- (int64_t)numberOfItems;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reloadData:(id)a3;
- (void)_reloadDataIfNecessary;
- (void)_removeTimer:(id)a3 withCompletionBlock:(id)a4;
- (void)cancelTimer:(id)a3;
- (void)confirmPickingSound;
- (void)dataSourceDidReload:(id)a3;
- (void)dataSourceDidReloadAllDurations:(id)a3;
- (void)dataSourceDidReloadRecentDurations:(id)a3;
- (void)dealloc;
- (void)deleteRowAtIndexPath:(id)a3;
- (void)didCancelTimerWithSender:(id)a3;
- (void)didSelectRecentDuration:(id)a3;
- (void)didStartTimerWithDuration:(double)a3 title:(id)a4 sound:(id)a5 sender:(id)a6;
- (void)dismissAddEditViewController:(id)a3;
- (void)dismissSoundPicker;
- (void)handleStartTimerShortcutAction;
- (void)popTimerViewController;
- (void)reloadSections;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)showAddView;
- (void)showSoundPicker:(id)a3;
- (void)startTimer:(id)a3;
- (void)startUpdatingTimerUI;
- (void)stopUpdatingTimerUI;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tipViewControllerDidBecomeAvailableWithSiriTipsController:(id)a3 tipView:(id)a4;
- (void)tipViewControllerWasInvalidatedWithSiriTipsController:(id)a3;
- (void)updateAddButton;
- (void)updateSelectedSoundCell:(id)a3;
- (void)updateSelectedSoundUI;
- (void)updateTimerTick:(id)a3;
- (void)updateTimerWithSender:(id)a3 state:(unint64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MTATimerTableViewController

- (MTATimerTableViewController)initWithTimerManager:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = MTATimerTableViewController;
  v8 = [(MTATableViewController *)&v21 initWithTableViewStyle:0];
  if (v8)
  {
    v9 = [UIImage systemImageNamed:@"timer"];
    v10 = [(MTATimerTableViewController *)v8 tabBarItem];
    [v10 setImage:v9];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"TIMERS" value:&stru_1000AEF10 table:0];
    [(MTATimerTableViewController *)v8 setTitle:v12];

    [(MTATimerTableViewController *)v8 setTimerManager:v6];
    [(MTATimerTableViewController *)v8 setDataSource:v7];
    v13 = [(MTATimerTableViewController *)v8 dataSource];
    [v13 registerObserver:v8];

    v14 = [(MTATimerTableViewController *)v8 title];
    v15 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.timer" title:v14];
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
  v3 = [(MTATimerTableViewController *)self tableView];
  [v3 setAllowsSelectionDuringEditing:1];

  v4 = [(MTATimerTableViewController *)self tableView];
  [v4 setAllowsSelection:1];

  v5 = [(MTATimerTableViewController *)self tableView];
  [v5 setLayoutMarginsFollowReadableWidth:1];

  v6 = [(MTATimerTableViewController *)self tableView];
  [v6 setEstimatedRowHeight:96.0];

  v7 = [(MTATimerTableViewController *)self tableView];
  [v7 setRowHeight:UITableViewAutomaticDimension];

  v8 = [(MTATimerTableViewController *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"MTATimerCellReuseIdentifier"];

  v9 = [(MTATimerTableViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerRecentCelldentifier"];

  v10 = [(MTATimerTableViewController *)self tableView];
  [v10 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTASingleTimerCelldentifier"];

  v11 = [(MTATimerTableViewController *)self tableView];
  [v11 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerTipTableViewCellIdentifier"];

  v12 = [(MTATimerTableViewController *)self tableView];
  [v12 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMTATimerTableViewHeaderReuseIdentifier"];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"handleEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v7 viewWillAppear:a3];
  [(MTATimerTableViewController *)self startUpdatingTimerUI];
  v4 = [(MTATimerTableViewController *)self timerToEdit];

  if (v4)
  {
    [(MTATimerTableViewController *)self setTimerToEdit:0];
  }

  v5 = [(MTATimerTableViewController *)self siriTipsController];
  [v5 setDelegate:self];

  v6 = [(MTATimerTableViewController *)self siriTipsController];
  [v6 checkForSiriTips];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(MTATableViewController *)self saveState];
  [(MTATimerTableViewController *)self stopUpdatingTimerUI];
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v5 = [(MTATimerTableViewController *)self siriTipsController];
  [v5 setDelegate:0];

  v6 = [(MTATimerTableViewController *)self siriTipsController];
  [v6 cancel];

  siriTipView = self->_siriTipView;
  self->_siriTipView = 0;

  v8.receiver = self;
  v8.super_class = MTATimerTableViewController;
  [(MTATimerTableViewController *)&v8 viewWillDisappear:v3];
}

- (void)dealloc
{
  [(NSTimer *)self->_updateTimer invalidate];
  v3.receiver = self;
  v3.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v3 dealloc];
}

- (void)_reloadData:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerDataSource *)self->_dataSource reloadTimers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100044288;
  v8[3] = &unk_1000AE0A0;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
  [(MTATimerTableViewController *)self setReloadDataFuture:v5];
  [(MTTimerDataSource *)self->_dataSource reloadTimerDurations];
}

- (void)_reloadDataIfNecessary
{
  v3 = [(MTATimerTableViewController *)self reloadDataFuture];

  if (!v3)
  {

    [(MTATimerTableViewController *)self _reloadData:0];
  }
}

- (void)dataSourceDidReload:(id)a3
{
  [(MTATableViewController *)self _reloadUI:0];
  [(MTATimerTableViewController *)self reloadSections];
  [(MTATimerTableViewController *)self updateAddButton];
  v4 = [(MTATimerTableViewController *)self tableView];
  [v4 reloadData];

  v5 = [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers];
  if (v5)
  {
    [(MTATimerTableViewController *)self startUpdatingTimerUI];
  }

  else
  {
    [(MTATimerTableViewController *)self stopUpdatingTimerUI];
  }

  v6 = [MTAUtilities timerShortcutTypeForActiveTimerCount:v5];

  [MTAUtilities updateTimerAppShortcutsForType:v6];
}

- (void)dataSourceDidReloadRecentDurations:(id)a3
{
  [(MTATableViewController *)self _reloadUI:0];
  [(MTATimerTableViewController *)self reloadSections];
  v4 = [(MTATimerTableViewController *)self tableView];
  [v4 reloadData];
}

- (void)dataSourceDidReloadAllDurations:(id)a3
{
  [(MTATableViewController *)self _reloadUI:0];
  v4 = [(MTATimerTableViewController *)self currentTone];
  [(MTATimerTableViewController *)self setSound:v4];

  [(MTATimerTableViewController *)self updateSelectedSoundUI];
}

- (void)updateAddButton
{
  if ([(MTTimerDataSource *)self->_dataSource numberOfActiveTimers])
  {
    v6 = [(MTATableViewController *)self addButton];
    v3 = [(MTATimerTableViewController *)self navigationItem];
    [v3 setRightBarButtonItem:v6];
  }

  else
  {
    v4 = [(MTATimerTableViewController *)self tabBarController];
    v5 = [v4 selectedIndex];

    if (v5 == 3)
    {
      [(MTATimerTableViewController *)self dismissAddEditViewController:self];
    }

    v6 = [(MTATimerTableViewController *)self navigationItem];
    [v6 setRightBarButtonItem:0];
  }
}

- (void)reloadSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];
  if (self->_siriTipView)
  {
    [(NSMutableArray *)self->_sections addObject:&off_1000B1908];
  }

  v3 = [(MTTimerDataSource *)self->_dataSource numberOfActiveTimers];
  sections = self->_sections;
  if (v3)
  {
    [(NSMutableArray *)sections addObject:&off_1000B1920];
    v5 = [(MTATableViewController *)self addButton];
    v6 = [(MTATimerTableViewController *)self navigationItem];
    [v6 setRightBarButtonItem:v5];
  }

  else
  {
    [(NSMutableArray *)sections addObject:&off_1000B1938];
    v5 = [(MTATimerTableViewController *)self navigationItem];
    [v5 setRightBarButtonItem:0];
  }

  v7 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v8 = [v7 count];

  if (v8)
  {
    v9 = self->_sections;

    [(NSMutableArray *)v9 addObject:&off_1000B1950];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v4 viewDidAppear:a3];
  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  self->_viewVisible = 0;
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v5.receiver = self;
  v5.super_class = MTATimerTableViewController;
  [(MTATableViewController *)&v5 viewDidDisappear:v3];
}

- (int64_t)numberOfItems
{
  v3 = [(MTATimerTableViewController *)self dataSource];
  v4 = [v3 numberOfActiveTimers];
  v5 = [(MTATimerTableViewController *)self dataSource];
  v6 = [v5 getRecentDurations];
  v7 = [v6 count];

  return v4 + v7;
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopUpdatingTimerUI", &v5, 0xCu);
  }

  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)updateTimerTick:(id)a3
{
  if ([(MTATimerTableViewController *)self isViewLoaded])
  {
    v4 = [(MTATimerTableViewController *)self tableView];
    v5 = [v4 indexPathsForVisibleRows];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v5;
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
          v11 = [(MTATimerTableViewController *)self tableView];
          v12 = [v11 cellForRowAtIndexPath:v10];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v10 row];
            v14 = [(MTATimerTableViewController *)self dataSource];
            v15 = [v14 numberOfActiveTimers];

            if (v13 < v15)
            {
              v16 = [(MTATimerTableViewController *)self dataSource];
              v17 = [v16 activeTimerAtRow:{objc_msgSend(v10, "row")}];

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
  v3 = [(MTATimerTableViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];

  if (v4)
  {
    [(MTATimerTableViewController *)self setTimerToEdit:0];
    v5.receiver = self;
    v5.super_class = MTATimerTableViewController;
    [(MTATableViewController *)&v5 showAddView];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [v6 integerValue];

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v21 = [(MTATimerTableViewController *)self dataSource];
      v22 = [v21 getRecentDurations];
      v23 = [v22 count];

      if ([v5 row] >= v23)
      {
        v28 = MTLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100073B38();
        }
      }

      else
      {
        v24 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
        v25 = [v24 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

        if (v25)
        {
          v26 = [v25 title];
          [MTATimerRecentCell estimatedCellHeightForTimerWithTitle:v26];
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

    else if (v7 == 3)
    {
      v16 = [(MTATimerTableViewController *)self tableView];
      [v16 bounds];
      [MTATimerTipTableViewCell sizeThatFits:self->_siriTipView siriTipView:v17, v18];
      v15 = v19;

      goto LABEL_19;
    }

LABEL_18:
    v15 = 110.0;
    goto LABEL_19;
  }

  if (!v7)
  {
    +[MTATimerControlsView estimatedViewHeight];
    v15 = v20 + 32.0;
    goto LABEL_19;
  }

  if (v7 != 1)
  {
    goto LABEL_18;
  }

  v8 = [v5 row];
  v9 = [(MTATimerTableViewController *)self dataSource];
  v10 = [v9 numberOfActiveTimers];

  if (v8 >= v10)
  {
    goto LABEL_18;
  }

  v11 = [(MTATimerTableViewController *)self dataSource];
  v12 = [v11 activeTimerAtRow:{objc_msgSend(v5, "row")}];

  v13 = [v12 title];
  [MTATimerTableViewCell estimatedCellHeightForTimerWithTitle:v13];
  v15 = v14;

LABEL_19:
  return v15;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v6 = [v5 integerValue];

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        return self->_siriTipView != 0;
      }

      return 0;
    }

    v10 = [(MTATimerTableViewController *)self dataSource];
    v11 = [v10 getRecentDurations];
    v12 = [v11 count];

    return v12;
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = [(MTATimerTableViewController *)self dataSource];
        v8 = [v7 numberOfActiveTimers];

        return v8;
      }

      return 0;
    }

    return 1;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v8 integerValue];

  v10 = 0;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
      v23 = [v7 row];
      if (v23 >= [v14 count])
      {
        v24 = MTLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100073C40(v7);
        }
      }

      v10 = [v6 dequeueReusableCellWithIdentifier:@"kMTATimerRecentCelldentifier" forIndexPath:v7];
      v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"recent-timer-%ld", [v7 row]);
      [v10 setAccessibilityIdentifier:v25];

      v26 = -[NSObject objectAtIndexedSubscript:](v14, "objectAtIndexedSubscript:", [v7 row]);
      [v10 setDelegate:self duration:v26];

      [v10 setSelectionStyle:0];
      goto LABEL_23;
    }

    if (v9 != 3)
    {
      goto LABEL_24;
    }

    v10 = [v6 dequeueReusableCellWithIdentifier:@"kMTATimerTipTableViewCellIdentifier" forIndexPath:v7];
    [v10 setSiriTipView:self->_siriTipView];
LABEL_12:
    [v10 setSelectionStyle:0];
    goto LABEL_24;
  }

  if (!v9)
  {
    v10 = [v6 dequeueReusableCellWithIdentifier:@"kMTASingleTimerCelldentifier" forIndexPath:v7];
    [v10 updateDelegate:self];
    v21 = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
    [v10 updateWithLatestDuration:v21];

    v22 = [v10 controlsView];
    [v22 setCurrentLabel:0];

    [(MTATimerTableViewController *)self updateSelectedSoundCell:v10];
    goto LABEL_12;
  }

  if (v9 != 1)
  {
    goto LABEL_24;
  }

  v10 = [v6 dequeueReusableCellWithIdentifier:@"MTATimerCellReuseIdentifier" forIndexPath:v7];
  v11 = [(MTATimerTableViewController *)self dataSource];
  v12 = [v11 numberOfActiveTimers];

  if ([v7 row] >= v12)
  {
    v27 = MTLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100073CC4();
    }

    goto LABEL_21;
  }

  v13 = [(MTATimerTableViewController *)self dataSource];
  v14 = [v13 activeTimerAtRow:{objc_msgSend(v7, "row")}];

  if (!v14)
  {
LABEL_21:
    v14 = MTLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100073D44(v7);
    }

    goto LABEL_23;
  }

  v15 = [v14 timerIDString];
  [v10 setAccessibilityIdentifier:v15];

  [v10 setUserInteractionEnabled:1];
  [v10 setDelegate:self];
  [v14 remainingTime];
  v17 = v16;
  [v14 duration];
  v19 = v18;
  v20 = [v14 state];
  if ([v14 hasDefaultTitle])
  {
    [v10 setRemainingTime:v20 duration:0 state:1 title:v17 forceRefresh:v19];
  }

  else
  {
    v29 = [v14 displayTitle];
    [v10 setRemainingTime:v20 duration:v29 state:1 title:v17 forceRefresh:v19];
  }

LABEL_23:

LABEL_24:

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v22 = a4;
  v7 = a5;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v8 integerValue];

  if (v9 == 1)
  {
    v10 = [v7 row];
    v11 = [(MTATimerTableViewController *)self dataSource];
    v12 = [v11 numberOfActiveTimers];

    if (v10 < v12)
    {
      v13 = [(MTATimerTableViewController *)self dataSource];
      v14 = [v13 activeTimerAtRow:{objc_msgSend(v7, "row")}];

      v15 = v22;
      [v14 remainingTime];
      v17 = v16;
      [v14 duration];
      v19 = v18;
      v20 = [v14 state];
      if ([v14 isCurrentTimer])
      {
        [v15 setRemainingTime:v20 duration:0 state:1 title:v17 forceRefresh:v19];
      }

      else
      {
        v21 = [v14 title];
        [v15 setRemainingTime:v20 duration:v21 state:1 title:v17 forceRefresh:v19];
      }
    }
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"kMTATimerTableViewHeaderReuseIdentifier"];
  v7 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v8 = [v7 integerValue];

  if (v8 == 2)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"TIMER_ADD_SHEET_RECENTS" value:&stru_1000AEF10 table:0];
    v11 = [(MTATimerTableViewController *)self view];
    v12 = +[MTAUtilities sectionHeaderConfigurationWithTitle:isRTL:](MTAUtilities, "sectionHeaderConfigurationWithTitle:isRTL:", v10, [v11 mtui_isRTL]);

    [v6 setContentConfiguration:v12];
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 integerValue];

  result = UITableViewAutomaticDimension;
  if (v5 == 1)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 integerValue];

  if (v5)
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 integerValue];

  if (v5)
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a4;
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v11 section]);
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    v7 = [(MTATimerTableViewController *)self dataSource];
    v8 = [v7 activeTimerAtRow:{objc_msgSend(v11, "row")}];
    [(MTATimerTableViewController *)self setTimerToEdit:v8];

    v9 = [(MTATimerTableViewController *)self navigationController];
    v10 = [(MTATimerTableViewController *)self timerAddEditController];
    [v9 pushViewController:v10 animated:1];
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [a4 section]);
  v5 = [v4 integerValue];

  return (v5 - 1) < 2;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100045AC0;
  v14[3] = &unk_1000ADA20;
  objc_copyWeak(&v16, &location);
  v8 = v7;
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

- (void)deleteRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = v4;
    v5 = [v4 row];
    v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v16 section]);
    v7 = [v6 integerValue];

    if (v7 == 2)
    {
      v10 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
      v9 = [v10 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];

      if (v9)
      {
        v11 = [(MTATimerTableViewController *)self timerManager];
        v12 = [v11 removeRecentDuration:v9];

        v13 = +[NAScheduler mainThreadScheduler];
        v14 = [v12 reschedule:v13];
        v15 = [v14 addCompletionBlock:&stru_1000AE4E0];
      }
    }

    else
    {
      v4 = v16;
      if (v7 != 1)
      {
        goto LABEL_8;
      }

      v8 = [(MTATimerTableViewController *)self dataSource];
      v9 = [v8 activeTimerAtRow:v5];

      [(MTATimerTableViewController *)self _removeTimer:v9 withCompletionBlock:&stru_1000AE4C0];
    }

    v4 = v16;
  }

LABEL_8:
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = MTATimerTableViewController;
  [(MTATimerTableViewController *)&v4 setEditing:a3 animated:a4];
}

- (void)_removeTimer:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 timerID];
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing timer %{public}@", buf, 0xCu);
  }

  v10 = [(MTATimerTableViewController *)self dataSource];
  v11 = [v10 removeTimer:v6];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100045E74;
  v14[3] = &unk_1000AE508;
  v15 = v7;
  v12 = v7;
  v13 = [v11 addSuccessBlock:v14];
}

- (id)addViewController
{
  v3 = [MTAAddSheetNavigationController alloc];
  v4 = [(MTATimerTableViewController *)self timerAddEditController];
  v5 = [(MTAAddSheetNavigationController *)v3 initWithRootViewController:v4];

  return v5;
}

- (id)timerAddEditController
{
  v3 = [(MTATimerTableViewController *)self timerToEdit];

  if (v3)
  {
    v4 = [MTATimerViewController alloc];
    v5 = [(MTATimerTableViewController *)self timerToEdit];
    v6 = [(MTATimerViewController *)v4 initWithTimer:v5 timerManager:self->_timerManager dataSource:self->_dataSource delegate:self];
  }

  else
  {
    v6 = [[MTATimerAddViewController alloc] initWithDataSource:self->_dataSource timerManager:self->_timerManager delegate:self];
  }

  return v6;
}

- (void)didCancelTimerWithSender:(id)a3
{
  [(MTATimerTableViewController *)self dismissAddEditViewController:a3];

  [(MTATimerTableViewController *)self _reloadData:0];
}

- (void)dismissAddEditViewController:(id)a3
{
  v5 = a3;
  v4 = [(MTATimerTableViewController *)self timerToEdit];

  if (v4)
  {
    [(MTATimerTableViewController *)self popTimerViewController];
  }

  else
  {
    [(MTATableViewController *)self dismissAddViewController:v5];
  }
}

- (void)popTimerViewController
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 isSuspended];

  [(MTATableViewController *)self finishAddViewControllerDismissal:v4 ^ 1];
  v6 = [(MTATimerTableViewController *)self navigationController];
  v5 = [v6 popViewControllerAnimated:v4 ^ 1];
}

- (void)updateTimerWithSender:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MTATimerTableViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(MTATimerTableViewController *)self dataSource];
  v10 = [v9 activeTimerAtRow:{objc_msgSend(v8, "row")}];

  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 timerID];
    *buf = 138543874;
    v24 = self;
    v25 = 2114;
    v26 = v12;
    v27 = 2048;
    v28 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ updating timer:%{public}@ with state: %li", buf, 0x20u);
  }

  v13 = [v10 timerByUpdatingWithState:a4];
  v14 = [(MTTimerDataSource *)self->_dataSource updateTimer:v13 reload:1];
  v15 = +[NAScheduler mtMainThreadScheduler];
  v16 = [v14 reschedule:v15];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004635C;
  v20[3] = &unk_1000AE530;
  v20[4] = self;
  v21 = v6;
  v22 = v13;
  v17 = v13;
  v18 = v6;
  v19 = [v16 addSuccessBlock:v20];
}

- (void)didStartTimerWithDuration:(double)a3 title:(id)a4 sound:(id)a5 sender:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[MTMutableTimer alloc] initWithState:3 duration:a3];
  v14 = v13;
  if (v10)
  {
    [v13 setTitle:v10];
  }

  if (v11)
  {
    [v14 setSound:v11];
  }

  v15 = MTLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v14 timerID];
    *buf = 138543618;
    v28 = self;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@ starting new timer: %{public}@ and dismissing add controller", buf, 0x16u);
  }

  v17 = [(MTATimerTableViewController *)self dataSource];
  v18 = [v17 addTimer:v14];
  v19 = +[NAScheduler mtMainThreadScheduler];
  v20 = [v18 reschedule:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000466D4;
  v24[3] = &unk_1000AE558;
  v24[4] = self;
  v25 = v14;
  v26 = v12;
  v21 = v12;
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

- (void)didSelectRecentDuration:(id)a3
{
  v4 = a3;
  [v4 duration];
  v6 = v5;
  v8 = [v4 title];
  v7 = [v4 sound];

  [(MTATimerTableViewController *)self didStartTimerWithDuration:v8 title:v7 sound:0 sender:v6];
}

- (void)startTimer:(id)a3
{
  v4 = [(MTATimerTableViewController *)self singleTimerCell];
  if (v4)
  {
    v11 = v4;
    v5 = [v4 controlsView];
    [v5 countDownDuration];
    v7 = v6;
    v8 = [v11 controlsView];
    v9 = [v8 getCurrentLabel];
    v10 = [(MTATimerTableViewController *)self currentTone];
    [(MTATimerTableViewController *)self didStartTimerWithDuration:v9 title:v10 sound:0 sender:v7];

    v4 = v11;
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
      v7[2] = sub_100046BB0;
      v7[3] = &unk_1000AD9F0;
      v7[4] = self;
      [(MTATimerTableViewController *)self _removeTimer:v4 withCompletionBlock:v7];
    }
  }
}

- (void)showSoundPicker:(id)a3
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

  v19 = [(MTATimerTableViewController *)self currentTone];
  v20 = [v19 toneIdentifier];
  [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:v20];

  [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:MTShouldAllowToneStore()];
  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"confirmPickingSound" name:UIApplicationSuspendedNotification object:0];

  v22 = [[UINavigationController alloc] initWithRootViewController:self->_tonePickerViewController];
  [v22 setDelegate:self];
  [(MTATimerTableViewController *)self presentViewController:v22 animated:1 completion:0];
}

- (void)confirmPickingSound
{
  v3 = [(TKTonePickerViewController *)self->_tonePickerViewController selectedToneIdentifier];
  if (!v3)
  {
    v3 = [(TKTonePickerViewController *)self->_tonePickerViewController defaultToneIdentifier];
  }

  v9 = v3;
  v4 = [(MTATimerTableViewController *)self sound];
  v5 = [v4 vibrationIdentifier];
  v6 = [(MTATimerTableViewController *)self sound];
  v7 = [v6 soundVolume];
  v8 = [MTSound toneSoundWithIdentifier:v9 vibrationIdentifer:v5 volume:v7];
  [(MTATimerTableViewController *)self setSound:v8];

  [(MTATimerTableViewController *)self updateSelectedSoundUI];
  [(MTATimerTableViewController *)self dismissSoundPicker];
}

- (void)dismissSoundPicker
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSuspendedNotification object:0];

  v4 = [(MTATimerTableViewController *)self presentedViewController];
  v5 = [v4 popoverPresentationController];

  if (v5)
  {
    v6 = [(MTATimerTableViewController *)self navigationItem];
    v7 = [v6 leftBarButtonItem];
    [v7 setEnabled:1];
  }

  v8 = +[UIApplication sharedApplication];
  -[MTATimerTableViewController dismissViewControllerAnimated:completion:](self, "dismissViewControllerAnimated:completion:", [v8 isSuspended] ^ 1, 0);
}

- (void)updateSelectedSoundUI
{
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v3 = [(MTATimerTableViewController *)self singleTimerCell];
    if (v3)
    {
      [(MTATimerTableViewController *)self updateSelectedSoundCell:v3];
    }

    _objc_release_x1();
  }
}

- (void)updateSelectedSoundCell:(id)a3
{
  v13 = a3;
  v4 = [(MTATimerTableViewController *)self currentTone];
  v5 = [v4 toneIdentifier];

  v6 = [(MTATimerTableViewController *)self sound];
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
  v3 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B1938];
  v4 = [(MTATimerTableViewController *)self tableView];
  v5 = [NSIndexPath indexPathForRow:0 inSection:v3];
  v6 = [v4 cellForRowAtIndexPath:v5];

  return v6;
}

- (id)currentTone
{
  v3 = [(MTATimerTableViewController *)self sound];

  if (v3)
  {
    v4 = [(MTATimerTableViewController *)self sound];
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

- (id)defaultEditLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Timer" value:&stru_1000AEF10 table:0];

  return v3;
}

- (void)tipViewControllerDidBecomeAvailableWithSiriTipsController:(id)a3 tipView:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_siriTipsController != v7)
  {
    sub_100073F20(a2, self);
  }

  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Siri tip became available", v12, 2u);
  }

  objc_storeStrong(&self->_siriTipView, a4);
  if (([(NSMutableArray *)self->_sections containsObject:&off_1000B1908]& 1) == 0)
  {
    [(NSMutableArray *)self->_sections insertObject:&off_1000B1908 atIndex:0];
    v10 = [(MTATimerTableViewController *)self tableView];
    v11 = [NSIndexSet indexSetWithIndex:0];
    [v10 insertSections:v11 withRowAnimation:3];
  }
}

- (void)tipViewControllerWasInvalidatedWithSiriTipsController:(id)a3
{
  v5 = a3;
  if (self->_siriTipsController != v5)
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
      v10 = [(MTATimerTableViewController *)self tableView];
      v11 = [NSIndexSet indexSetWithIndex:v9];
      [v10 deleteSections:v11 withRowAnimation:3];
    }
  }
}

@end