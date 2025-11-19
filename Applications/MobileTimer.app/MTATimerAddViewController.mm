@interface MTATimerAddViewController
- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (MTATimerAddEditDelegate)delegate;
- (MTATimerAddViewController)initWithDataSource:(id)a3 timerManager:(id)a4 delegate:(id)a5;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)currentSoundToneName;
- (id)defaultEditLabel;
- (id)startButtonItem;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)timerControlCell;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)_cancelButtonClicked:(id)a3;
- (void)_startButtonClicked:(id)a3;
- (void)dataSourceDidReloadRecentDurations:(id)a3;
- (void)dealloc;
- (void)deleteRowAtIndexPath:(id)a3;
- (void)didSelectPresetWithDuration:(double)a3;
- (void)didSelectRecentDuration:(id)a3;
- (void)localSetup;
- (void)reloadSections;
- (void)setupNavigationButtons;
- (void)showSoundPicker:(id)a3;
- (void)timePickerDidSelectDuration:(double)a3;
- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4;
@end

@implementation MTATimerAddViewController

- (MTATimerAddViewController)initWithDataSource:(id)a3 timerManager:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MTATimerAddViewController;
  v11 = [(MTATableViewController *)&v16 initWithTableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    [(MTATimerAddViewController *)v11 setDelegate:v10];
    [(MTATimerAddViewController *)v12 setDataSource:v8];
    v13 = [(MTATimerAddViewController *)v12 dataSource];
    [v13 registerObserver:v12];

    [(MTATimerAddViewController *)v12 setTimerManager:v9];
    [(MTATimerAddViewController *)v12 localSetup];
    v14 = v12;
  }

  return v12;
}

- (void)localSetup
{
  v3 = [UIImage systemImageNamed:@"timer"];
  v4 = [(MTATimerAddViewController *)self tabBarItem];
  [v4 setImage:v3];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TIMER" value:&stru_1000AEF10 table:0];
  [(MTATimerAddViewController *)self setTitle:v6];

  v7 = objc_opt_new();
  sections = self->_sections;
  self->_sections = v7;

  [(MTATimerAddViewController *)self reloadSections];
  [(MTATimerAddViewController *)self setupNavigationButtons];
  v9 = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
  v10 = [v9 sound];
  if (v10)
  {
    [(MTATimerAddViewController *)self setSound:v10];
  }

  else
  {
    v11 = [MTSound defaultSoundForCategory:1];
    [(MTATimerAddViewController *)self setSound:v11];
  }

  v12 = [(MTATimerAddViewController *)self tableView];
  [v12 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerControlsCelldentifier"];

  v13 = [(MTATimerAddViewController *)self tableView];
  [v13 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerPresetsCelldentifier"];

  v14 = [(MTATimerAddViewController *)self tableView];
  [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMTATimerRecentCelldentifier"];

  v15 = [(MTATimerAddViewController *)self tableView];
  [v15 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMTATimerAddTableViewHeaderReuseIdentifier"];
}

- (void)dealloc
{
  v3 = [(MTATimerAddViewController *)self tonePickerViewController];
  [v3 setDelegate:0];

  v4 = [(MTATimerAddViewController *)self dataSource];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = MTATimerAddViewController;
  [(MTATableViewController *)&v5 dealloc];
}

- (void)reloadSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];
  [(NSMutableArray *)self->_sections addObject:&off_1000B17D0];
  [(NSMutableArray *)self->_sections addObject:&off_1000B17E8];
  v3 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v4 = [v3 count];

  if (v4)
  {
    sections = self->_sections;

    [(NSMutableArray *)sections addObject:&off_1000B1800];
  }
}

- (void)setupNavigationButtons
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonClicked:"];
  v4 = [(MTATimerAddViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = [(MTATimerAddViewController *)self navigationItem];
  v6 = [v5 leftBarButtonItem];
  [v6 setTag:@"CancelButton"];

  v8 = [(MTATimerAddViewController *)self startButtonItem];
  v7 = [(MTATimerAddViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v8];
}

- (id)startButtonItem
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:17 target:self action:"_startButtonClicked:"];
  v3 = +[UIColor systemGreenColor];
  [v2 setTintColor:v3];

  [v2 setTag:@"AddButton"];

  return v2;
}

- (void)_cancelButtonClicked:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel button clicked timer add sheet", &v6, 0xCu);
  }

  v5 = [(MTATimerAddViewController *)self delegate];
  [v5 timerAddEditControllerDidCancel:self reload:0];
}

- (void)_startButtonClicked:(id)a3
{
  v4 = [(MTATimerAddViewController *)self timerControlCell];
  if (v4)
  {
    v10 = v4;
    [v4 getCurrentDuration];
    v6 = v5;
    v7 = [v10 getCurrentLabel];
    v8 = [(MTATimerAddViewController *)self delegate];
    v9 = [(MTATimerAddViewController *)self sound];
    [v8 didStartTimerWithDuration:v7 title:v9 sound:self sender:v6];

    v4 = v10;
  }
}

- (id)timerControlCell
{
  v3 = [(MTATimerAddViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:0 inSection:[(NSMutableArray *)self->_sections indexOfObject:&off_1000B17D0]];
  v5 = [v3 cellForRowAtIndexPath:v4];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v6 = [v5 integerValue];

  if (v6 != 2)
  {
    return 1;
  }

  v7 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v8 integerValue];

  if (v9 == 2)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"kMTATimerRecentCelldentifier" forIndexPath:v7];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"recent-timer-%ld", [v7 row]);
    [v8 setAccessibilityIdentifier:v13];

    v14 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
    [v8 setDelegate:self duration:v15];

    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"kMTATimerPresetsCelldentifier" forIndexPath:v7];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"preset-timers-%ld", [v7 row]);
    [v8 setAccessibilityIdentifier:v12];

    [v8 setDelegate:self];
LABEL_7:
    [v8 setSelectionStyle:0];
    goto LABEL_8;
  }

  if (!v9)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"kMTATimerControlsCelldentifier" forIndexPath:v7];
    [v8 setDelegate:self];
    v10 = [(MTTimerDataSource *)self->_dataSource getLatestDuration];
    [v10 duration];
    [v8 setDuration:?];

    v11 = [(MTATimerAddViewController *)self currentSoundToneName];
    [v8 setTimerToneName:v11];
  }

LABEL_8:

  return v8;
}

- (id)currentSoundToneName
{
  v3 = [(MTATimerAddViewController *)self sound];
  v4 = [v3 interruptAudio];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"STOP_PLAYING" value:&stru_1000AEF10 table:0];
  }

  else
  {
    v7 = [(MTATimerAddViewController *)self sound];
    v5 = [v7 toneIdentifier];

    v8 = +[TLToneManager sharedToneManager];
    if (([v8 toneWithIdentifierIsValid:v5] & 1) == 0)
    {
      v9 = [v8 defaultToneIdentifierForAlertType:13];

      v5 = v9;
    }

    v6 = [v8 nameForToneIdentifier:v5];
  }

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [a4 section]);
  v5 = [v4 integerValue];

  return v5 == 2;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100009E8C;
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
  v5 = v4;
  if (v4)
  {
    v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v4 section]);
    v7 = [v6 integerValue];

    if (v7 == 2)
    {
      v8 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

      if (v9)
      {
        v10 = [(MTATimerAddViewController *)self timerManager];
        v11 = [v10 removeRecentDuration:v9];

        v12 = +[NAScheduler mainThreadScheduler];
        v13 = [v11 reschedule:v12];
        v14 = [v13 addCompletionBlock:&stru_1000ADA60];
      }

      v15 = MTLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = self;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ deleting recent %{public}@", &v16, 0x16u);
      }
    }
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [v6 integerValue];

  if (v7 == 2)
  {
    v12 = [(MTTimerDataSource *)self->_dataSource getRecentDurations];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

    if (v13)
    {
      v14 = [v13 title];
      [MTATimerRecentCell estimatedCellHeightForTimerWithTitle:v14];
      v11 = v15;
    }

    else
    {
      v11 = 110.0;
    }
  }

  else if (v7)
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"kMTATimerAddTableViewHeaderReuseIdentifier"];
  v7 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v8 = [v7 integerValue];

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = @"TIMER_ADD_SHEET_PRESETS";
    }

    else
    {
      if (v8 != 2)
      {
LABEL_7:
        v14 = v6;
        goto LABEL_9;
      }

      v9 = @"TIMER_ADD_SHEET_RECENTS";
    }

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:v9 value:&stru_1000AEF10 table:0];
    v12 = [(MTATimerAddViewController *)self view];
    v13 = +[MTAUtilities sectionHeaderConfigurationWithTitle:isRTL:](MTAUtilities, "sectionHeaderConfigurationWithTitle:isRTL:", v11, [v12 mtui_isRTL]);

    [v6 setContentConfiguration:v13];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 integerValue];

  return v5 == 2;
}

- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 integerValue];

  return v5 == 2;
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

  [(MTATimerAddViewController *)self reloadSections];
  v5 = [(MTATimerAddViewController *)self tableView];
  [v5 reloadData];
}

- (id)defaultEditLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Timer" value:&stru_1000AEF10 table:0];

  return v3;
}

- (void)didSelectPresetWithDuration:(double)a3
{
  v6 = [(MTATimerAddViewController *)self delegate];
  v5 = [(MTATimerAddViewController *)self sound];
  [v6 didStartTimerWithDuration:0 title:v5 sound:self sender:a3];
}

- (void)didSelectRecentDuration:(id)a3
{
  v4 = a3;
  v9 = [(MTATimerAddViewController *)self delegate];
  [v4 duration];
  v6 = v5;
  v7 = [v4 title];
  v8 = [v4 sound];

  [v9 didStartTimerWithDuration:v7 title:v8 sound:self sender:v6];
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
  }

  v14 = [(MTATimerAddViewController *)self sound];
  v15 = [v14 toneIdentifier];
  [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:v15];

  [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:MTShouldAllowToneStore()];
  v16 = [(MTATimerAddViewController *)self navigationController];
  [v16 pushViewController:self->_tonePickerViewController animated:1];
}

- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4
{
  v5 = [(TKTonePickerViewController *)self->_tonePickerViewController selectedToneIdentifier:a3];
  if (!v5)
  {
    v5 = [(TKTonePickerViewController *)self->_tonePickerViewController defaultToneIdentifier];
  }

  v13 = v5;
  v6 = [(MTATimerAddViewController *)self sound];
  v7 = [v6 vibrationIdentifier];
  v8 = [(MTATimerAddViewController *)self sound];
  v9 = [v8 soundVolume];
  v10 = [MTSound toneSoundWithIdentifier:v13 vibrationIdentifer:v7 volume:v9];
  [(MTATimerAddViewController *)self setSound:v10];

  v11 = [(MTATimerAddViewController *)self timerControlCell];
  v12 = [(MTATimerAddViewController *)self currentSoundToneName];
  [v11 setTimerToneName:v12];
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

- (void)timePickerDidSelectDuration:(double)a3
{
  v3 = a3 != 0.0;
  v5 = [(MTATimerAddViewController *)self navigationItem];
  v4 = [v5 rightBarButtonItem];
  [v4 setEnabled:v3];
}

- (MTATimerAddEditDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end