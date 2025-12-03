@interface MTATimerAddViewController
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (MTATimerAddEditDelegate)delegate;
- (MTATimerAddViewController)initWithDataSource:(id)source timerManager:(id)manager delegate:(id)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)currentSoundToneName;
- (id)defaultEditLabel;
- (id)startButtonItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)timerControlCell;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)_cancelButtonClicked:(id)clicked;
- (void)_startButtonClicked:(id)clicked;
- (void)dataSourceDidReloadRecentDurations:(id)durations;
- (void)dealloc;
- (void)deleteRowAtIndexPath:(id)path;
- (void)didSelectPresetWithDuration:(double)duration;
- (void)didSelectRecentDuration:(id)duration;
- (void)localSetup;
- (void)reloadSections;
- (void)setupNavigationButtons;
- (void)showSoundPicker:(id)picker;
- (void)timePickerDidSelectDuration:(double)duration;
- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier;
@end

@implementation MTATimerAddViewController

- (MTATimerAddViewController)initWithDataSource:(id)source timerManager:(id)manager delegate:(id)delegate
{
  sourceCopy = source;
  managerCopy = manager;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = MTATimerAddViewController;
  v11 = [(MTATableViewController *)&v16 initWithTableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    [(MTATimerAddViewController *)v11 setDelegate:delegateCopy];
    [(MTATimerAddViewController *)v12 setDataSource:sourceCopy];
    dataSource = [(MTATimerAddViewController *)v12 dataSource];
    [dataSource registerObserver:v12];

    [(MTATimerAddViewController *)v12 setTimerManager:managerCopy];
    [(MTATimerAddViewController *)v12 localSetup];
    v14 = v12;
  }

  return v12;
}

- (void)localSetup
{
  v3 = [UIImage systemImageNamed:@"timer"];
  tabBarItem = [(MTATimerAddViewController *)self tabBarItem];
  [tabBarItem setImage:v3];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TIMER" value:&stru_1000AEF10 table:0];
  [(MTATimerAddViewController *)self setTitle:v6];

  v7 = objc_opt_new();
  sections = self->_sections;
  self->_sections = v7;

  [(MTATimerAddViewController *)self reloadSections];
  [(MTATimerAddViewController *)self setupNavigationButtons];
  getLatestDuration = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
  sound = [getLatestDuration sound];
  if (sound)
  {
    [(MTATimerAddViewController *)self setSound:sound];
  }

  else
  {
    v11 = [MTSound defaultSoundForCategory:1];
    [(MTATimerAddViewController *)self setSound:v11];
  }

  tableView = [(MTATimerAddViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerControlsCelldentifier"];

  tableView2 = [(MTATimerAddViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerPresetsCelldentifier"];

  tableView3 = [(MTATimerAddViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerRecentCelldentifier"];

  tableView4 = [(MTATimerAddViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMTATimerAddTableViewHeaderReuseIdentifier"];
}

- (void)dealloc
{
  tonePickerViewController = [(MTATimerAddViewController *)self tonePickerViewController];
  [tonePickerViewController setDelegate:0];

  dataSource = [(MTATimerAddViewController *)self dataSource];
  [dataSource unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = MTATimerAddViewController;
  [(MTATableViewController *)&v5 dealloc];
}

- (void)reloadSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];
  [(NSMutableArray *)self->_sections addObject:&off_1000B17D0];
  [(NSMutableArray *)self->_sections addObject:&off_1000B17E8];
  getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v4 = [getRecentDurations count];

  if (v4)
  {
    sections = self->_sections;

    [(NSMutableArray *)sections addObject:&off_1000B1800];
  }
}

- (void)setupNavigationButtons
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonClicked:"];
  navigationItem = [(MTATimerAddViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  navigationItem2 = [(MTATimerAddViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setTag:@"CancelButton"];

  startButtonItem = [(MTATimerAddViewController *)self startButtonItem];
  navigationItem3 = [(MTATimerAddViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:startButtonItem];
}

- (id)startButtonItem
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:17 target:self action:"_startButtonClicked:"];
  v3 = +[UIColor systemGreenColor];
  [v2 setTintColor:v3];

  [v2 setTag:@"AddButton"];

  return v2;
}

- (void)_cancelButtonClicked:(id)clicked
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel button clicked timer add sheet", &v6, 0xCu);
  }

  delegate = [(MTATimerAddViewController *)self delegate];
  [delegate timerAddEditControllerDidCancel:self reload:0];
}

- (void)_startButtonClicked:(id)clicked
{
  timerControlCell = [(MTATimerAddViewController *)self timerControlCell];
  if (timerControlCell)
  {
    v10 = timerControlCell;
    [timerControlCell getCurrentDuration];
    v6 = v5;
    getCurrentLabel = [v10 getCurrentLabel];
    delegate = [(MTATimerAddViewController *)self delegate];
    sound = [(MTATimerAddViewController *)self sound];
    [delegate didStartTimerWithDuration:getCurrentLabel title:sound sound:self sender:v6];

    timerControlCell = v10;
  }
}

- (id)timerControlCell
{
  tableView = [(MTATimerAddViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:0 inSection:[(NSMutableArray *)self->_sections indexOfObject:&off_1000B17D0]];
  v5 = [tableView cellForRowAtIndexPath:v4];

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v5 integerValue];

  if (integerValue != 2)
  {
    return 1;
  }

  getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v8 = [getRecentDurations count];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v8 integerValue];

  if (integerValue == 2)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"kMTATimerRecentCelldentifier" forIndexPath:pathCopy];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"recent-timer-%ld", [pathCopy row]);
    [v8 setAccessibilityIdentifier:v13];

    getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
    v15 = [getRecentDurations objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v8 setDelegate:self duration:v15];

    goto LABEL_7;
  }

  if (integerValue == 1)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"kMTATimerPresetsCelldentifier" forIndexPath:pathCopy];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"preset-timers-%ld", [pathCopy row]);
    [v8 setAccessibilityIdentifier:v12];

    [v8 setDelegate:self];
LABEL_7:
    [v8 setSelectionStyle:0];
    goto LABEL_8;
  }

  if (!integerValue)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"kMTATimerControlsCelldentifier" forIndexPath:pathCopy];
    [v8 setDelegate:self];
    getLatestDuration = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
    [getLatestDuration duration];
    [v8 setDuration:?];

    currentSoundToneName = [(MTATimerAddViewController *)self currentSoundToneName];
    [v8 setTimerToneName:currentSoundToneName];
  }

LABEL_8:

  return v8;
}

- (id)currentSoundToneName
{
  sound = [(MTATimerAddViewController *)self sound];
  interruptAudio = [sound interruptAudio];

  if (interruptAudio)
  {
    toneIdentifier = +[NSBundle mainBundle];
    v6 = [toneIdentifier localizedStringForKey:@"STOP_PLAYING" value:&stru_1000AEF10 table:0];
  }

  else
  {
    sound2 = [(MTATimerAddViewController *)self sound];
    toneIdentifier = [sound2 toneIdentifier];

    v8 = +[TLToneManager sharedToneManager];
    if (([v8 toneWithIdentifierIsValid:toneIdentifier] & 1) == 0)
    {
      v9 = [v8 defaultToneIdentifierForAlertType:13];

      toneIdentifier = v9;
    }

    v6 = [v8 nameForToneIdentifier:toneIdentifier];
  }

  return v6;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [path section]);
  integerValue = [v4 integerValue];

  return integerValue == 2;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100009E8C;
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
  v5 = pathCopy;
  if (pathCopy)
  {
    v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
    integerValue = [v6 integerValue];

    if (integerValue == 2)
    {
      getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
      v9 = [getRecentDurations objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

      if (v9)
      {
        timerManager = [(MTATimerAddViewController *)self timerManager];
        v11 = [timerManager removeRecentDuration:v9];

        v12 = +[NAScheduler mainThreadScheduler];
        v13 = [v11 reschedule:v12];
        v14 = [v13 addCompletionBlock:&stru_1000ADA60];
      }

      v15 = MTLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        selfCopy = self;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ deleting recent %{public}@", &v16, 0x16u);
      }
    }
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v6 integerValue];

  if (integerValue == 2)
  {
    getRecentDurations = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
    v13 = [getRecentDurations objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    if (v13)
    {
      title = [v13 title];
      [MTATimerRecentCell estimatedCellHeightForTimerWithTitle:title];
      v11 = v15;
    }

    else
    {
      v11 = 110.0;
    }
  }

  else if (integerValue)
  {
    v11 = 90.0;
  }

  else
  {
    +[MTATimerControlsView estimatedTimePickerHeight];
    v9 = v8;
    +[MTATimerControlsView estimatedTonePickerHeight];
    v11 = v9 + v10;
  }

  return v11;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"kMTATimerAddTableViewHeaderReuseIdentifier"];
  v7 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v7 integerValue];

  if (integerValue)
  {
    if (integerValue == 1)
    {
      v9 = @"TIMER_ADD_SHEET_PRESETS";
    }

    else
    {
      if (integerValue != 2)
      {
LABEL_7:
        v14 = v6;
        goto LABEL_9;
      }

      v9 = @"TIMER_ADD_SHEET_RECENTS";
    }

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:v9 value:&stru_1000AEF10 table:0];
    view = [(MTATimerAddViewController *)self view];
    v13 = +[MTAUtilities sectionHeaderConfigurationWithTitle:isRTL:](MTAUtilities, "sectionHeaderConfigurationWithTitle:isRTL:", v11, [view mtui_isRTL]);

    [v6 setContentConfiguration:v13];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v4 integerValue];

  return integerValue == 2;
}

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v4 integerValue];

  return integerValue == 2;
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

  [(MTATimerAddViewController *)self reloadSections];
  tableView = [(MTATimerAddViewController *)self tableView];
  [tableView reloadData];
}

- (id)defaultEditLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Timer" value:&stru_1000AEF10 table:0];

  return v3;
}

- (void)didSelectPresetWithDuration:(double)duration
{
  delegate = [(MTATimerAddViewController *)self delegate];
  sound = [(MTATimerAddViewController *)self sound];
  [delegate didStartTimerWithDuration:0 title:sound sound:self sender:duration];
}

- (void)didSelectRecentDuration:(id)duration
{
  durationCopy = duration;
  delegate = [(MTATimerAddViewController *)self delegate];
  [durationCopy duration];
  v6 = v5;
  title = [durationCopy title];
  sound = [durationCopy sound];

  [delegate didStartTimerWithDuration:title title:sound sound:self sender:v6];
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
  }

  sound = [(MTATimerAddViewController *)self sound];
  toneIdentifier = [sound toneIdentifier];
  [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:toneIdentifier];

  [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:MTShouldAllowToneStore()];
  navigationController = [(MTATimerAddViewController *)self navigationController];
  [navigationController pushViewController:self->_tonePickerViewController animated:1];
}

- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  defaultToneIdentifier = [(TKTonePickerViewController *)self->_tonePickerViewController selectedToneIdentifier:controller];
  if (!defaultToneIdentifier)
  {
    defaultToneIdentifier = [(TKTonePickerViewController *)self->_tonePickerViewController defaultToneIdentifier];
  }

  v13 = defaultToneIdentifier;
  sound = [(MTATimerAddViewController *)self sound];
  vibrationIdentifier = [sound vibrationIdentifier];
  sound2 = [(MTATimerAddViewController *)self sound];
  soundVolume = [sound2 soundVolume];
  v10 = [MTSound toneSoundWithIdentifier:v13 vibrationIdentifer:vibrationIdentifier volume:soundVolume];
  [(MTATimerAddViewController *)self setSound:v10];

  timerControlCell = [(MTATimerAddViewController *)self timerControlCell];
  currentSoundToneName = [(MTATimerAddViewController *)self currentSoundToneName];
  [timerControlCell setTimerToneName:currentSoundToneName];
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

- (void)timePickerDidSelectDuration:(double)duration
{
  v3 = duration != 0.0;
  navigationItem = [(MTATimerAddViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v3];
}

- (MTATimerAddEditDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end