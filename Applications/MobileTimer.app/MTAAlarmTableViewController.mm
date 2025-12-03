@interface MTAAlarmTableViewController
- (BOOL)_isAlarmsSection:(int64_t)section;
- (BOOL)_isWakeAlarmSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (MTAAlarmTableViewController)initWithAlarmManager:(id)manager dataSource:(id)source;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)addViewController;
- (id)bypassReloadAlarm:(id)alarm;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsIncludingSleep;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addAlarm:(id)alarm withCompletionBlock:(id)block;
- (void)_reloadData:(id)data;
- (void)_reloadDataIfNecessary;
- (void)_removeAlarm:(id)alarm withCompletionBlock:(id)block;
- (void)_scrollToAlarm:(id)alarm;
- (void)_updateAlarm:(id)alarm withCompletionBlock:(id)block;
- (void)alarmEditController:(id)controller didAddAlarm:(id)alarm;
- (void)alarmEditController:(id)controller didDeleteAlarm:(id)alarm;
- (void)alarmEditController:(id)controller didEditAlarm:(id)alarm;
- (void)dataSource:(id)source didUpdateAlarms:(id)alarms;
- (void)dataSourceDidReload:(id)reload;
- (void)deleteRowAtIndexPath:(id)path;
- (void)didDismissViewController;
- (void)dismissAddViewController:(id)controller;
- (void)finishAddViewControllerDismissal:(BOOL)dismissal;
- (void)handleContentSizeTransitionFrom:(id)from;
- (void)healthAppInstallationDidChange;
- (void)reloadSections;
- (void)reloadSleepSection;
- (void)reloadWidgetTimeline;
- (void)saveScrollPoint;
- (void)scrollToSavedPoint;
- (void)setAlarmEnabled:(BOOL)enabled forCell:(id)cell;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setupForTest:(id)test options:(id)options;
- (void)showAddViewForAlarm:(id)alarm;
- (void)showAddViewForAlarmWithID:(id)d;
- (void)showEditViewForRow:(int64_t)row;
- (void)showSleepView:(BOOL)view;
- (void)sleepScheduleModelDidChange;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MTAAlarmTableViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v12 viewDidLoad];
  [(MTATableViewController *)self reloadState];
  tableView = [(MTAAlarmTableViewController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:1];

  tableView2 = [(MTAAlarmTableViewController *)self tableView];
  [tableView2 setAllowsSelection:1];

  tableView3 = [(MTAAlarmTableViewController *)self tableView];
  [tableView3 setLayoutMarginsFollowReadableWidth:1];

  tableView4 = [(MTAAlarmTableViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:96.0];

  tableView5 = [(MTAAlarmTableViewController *)self tableView];
  [tableView5 setRowHeight:UITableViewAutomaticDimension];

  tableView6 = [(MTAAlarmTableViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:off_1000D1AA0];

  tableView7 = [(MTAAlarmTableViewController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:off_1000D1B08];

  tableView8 = [(MTAAlarmTableViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:off_1000D1B10];

  tableView9 = [(MTAAlarmTableViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMTAAlarmTableViewHeaderReuseIdentifier"];
}

- (int64_t)numberOfItemsIncludingSleep
{
  if ([(MTAAlarmTableViewController *)self isRunningPPTTest])
  {
    return 20;
  }

  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) != 0)
  {
    return 0;
  }

  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  numberOfAlarms = [dataSource numberOfAlarms];

  dataSource2 = [(MTAAlarmTableViewController *)self dataSource];
  sleepAlarm = [dataSource2 sleepAlarm];

  if (sleepAlarm)
  {
    return numberOfAlarms + 1;
  }

  else
  {
    return numberOfAlarms;
  }
}

- (void)reloadSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];
  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  sleepAlarm = [dataSource sleepAlarm];

  if (sleepAlarm || MTShouldHandleForEucalyptus() && (MTIdiomIpad() & 1) == 0)
  {
    [(NSMutableArray *)self->_sections addObject:&off_1000B1890];
  }

  sections = self->_sections;

  [(NSMutableArray *)sections addObject:&off_1000B18A8];
}

- (int64_t)numberOfItems
{
  if ([(MTAAlarmTableViewController *)self isRunningPPTTest])
  {
    return 20;
  }

  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) != 0)
  {
    return 0;
  }

  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  numberOfAlarms = [dataSource numberOfAlarms];

  return numberOfAlarms;
}

- (void)scrollToSavedPoint
{
  v12 = +[NSUserDefaults standardUserDefaults];
  v3 = [v12 objectForKey:@"AlarmTableScrollPoint"];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    if (v5 >= 0.0)
    {
      v6 = v5;
      tableView = [(MTAAlarmTableViewController *)self tableView];
      [tableView contentSize];
      v9 = v8;

      if (v9 > v6)
      {
        tableView2 = [(MTAAlarmTableViewController *)self tableView];
        [tableView2 setContentOffset:{0.0, v6}];
      }
    }

    [v12 removeObjectForKey:@"AlarmTableScrollPoint"];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"com.apple.mobiletimer.user-preferences-dirty" object:0];
  }
}

- (MTAAlarmTableViewController)initWithAlarmManager:(id)manager dataSource:(id)source
{
  managerCopy = manager;
  sourceCopy = source;
  v23.receiver = self;
  v23.super_class = MTAAlarmTableViewController;
  v8 = [(MTATableViewController *)&v23 initWithTableViewStyle:0];
  if (v8)
  {
    v9 = [UIImage systemImageNamed:@"alarm.fill"];
    tabBarItem = [(MTAAlarmTableViewController *)v8 tabBarItem];
    [tabBarItem setImage:v9];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"ALARMS_LIST" value:&stru_1000AEF10 table:0];
    [(MTAAlarmTableViewController *)v8 setTitle:v12];

    [(MTAAlarmTableViewController *)v8 setAlarmManager:managerCopy];
    [(MTAAlarmTableViewController *)v8 setDataSource:sourceCopy];
    dataSource = [(MTAAlarmTableViewController *)v8 dataSource];
    [dataSource registerObserver:v8];

    title = [(MTAAlarmTableViewController *)v8 title];
    v15 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.alarm" title:title];
    userActivity = v8->_userActivity;
    v8->_userActivity = v15;

    v17 = objc_opt_new();
    sections = v8->_sections;
    v8->_sections = v17;

    v19 = objc_opt_new();
    [(MTAAlarmTableViewController *)v8 setSleepCoordinator:v19];

    sleepCoordinator = [(MTAAlarmTableViewController *)v8 sleepCoordinator];
    [sleepCoordinator setDelegate:v8];

    v21 = v8;
  }

  return v8;
}

- (void)_reloadData:(id)data
{
  dataCopy = data;
  reloadAlarms = [(MTAlarmDataSource *)self->_dataSource reloadAlarms];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000232B8;
  v8[3] = &unk_1000AE0A0;
  v9 = dataCopy;
  v6 = dataCopy;
  v7 = [reloadAlarms addCompletionBlock:v8];
  [(MTAAlarmTableViewController *)self setReloadDataFuture:reloadAlarms];
}

- (void)_reloadDataIfNecessary
{
  reloadDataFuture = [(MTAAlarmTableViewController *)self reloadDataFuture];

  if (!reloadDataFuture)
  {

    [(MTAAlarmTableViewController *)self _reloadData:0];
  }
}

- (void)dataSourceDidReload:(id)reload
{
  [(MTAAlarmTableViewController *)self reloadSections];
  [(MTATableViewController *)self _reloadUI:0];
  tableView = [(MTAAlarmTableViewController *)self tableView];
  [tableView reloadData];

  [(MTAAlarmTableViewController *)self scrollToSavedPoint];
  alarmsLoadedAction = self->_alarmsLoadedAction;
  if (alarmsLoadedAction)
  {
    alarmsLoadedAction[2]();
    v6 = self->_alarmsLoadedAction;
    self->_alarmsLoadedAction = 0;
  }
}

- (void)dataSource:(id)source didUpdateAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [(MTAlarm *)self->_alarmToEdit alarmID];
    *buf = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = alarmID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading UI for alarm: %{public}@", buf, 0x16u);
  }

  if ([(MTAlarm *)self->_alarmToEdit allowsSnooze])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100023508;
    v8[3] = &unk_1000AE0C8;
    v8[4] = self;
    [alarmsCopy enumerateObjectsUsingBlock:v8];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v4 viewWillAppear:appear];
  self->_viewVisible = 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v4 viewDidAppear:appear];
  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  self->_viewVisible = 0;
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v5.receiver = self;
  v5.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)setupForTest:(id)test options:(id)options
{
  [(MTAAlarmTableViewController *)self setIsRunningPPTTest:1, options];

  [(MTATableViewController *)self reloadState];
}

- (void)saveScrollPoint
{
  if ([(MTAAlarmTableViewController *)self isViewLoaded])
  {
    tableView = [(MTAAlarmTableViewController *)self tableView];
    [tableView contentOffset];
    *&v5 = v4;
    v7 = [NSNumber numberWithFloat:v5];

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setObject:v7 forKey:@"AlarmTableScrollPoint"];
  }
}

- (id)addViewController
{
  if (self->_alarmToEdit)
  {
    dataSource = [(MTAAlarmTableViewController *)self dataSource];
    v4 = [dataSource rowForAlarm:self->_alarmToEdit] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  v5 = [[MTAAlarmEditViewController alloc] initWithAlarm:self->_alarmToEdit isNewAlarm:v4];
  [(MTAAlarmTableViewController *)self setAlarmEditViewController:v5];

  alarmEditViewController = [(MTAAlarmTableViewController *)self alarmEditViewController];
  [alarmEditViewController setDelegate:self];

  v7 = [MTAAddSheetNavigationController alloc];
  alarmEditViewController2 = [(MTAAlarmTableViewController *)self alarmEditViewController];
  v9 = [(MTAAddSheetNavigationController *)v7 initWithRootViewController:alarmEditViewController2];

  return v9;
}

- (void)showAddViewForAlarm:(id)alarm
{
  alarmCopy = alarm;
  objc_storeStrong(&self->_alarmToEdit, alarm);
  tableView = [(MTAAlarmTableViewController *)self tableView];
  [tableView setUserInteractionEnabled:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002399C;
  v9[3] = &unk_1000AD9F0;
  v10 = alarmCopy;
  v8.receiver = self;
  v8.super_class = MTAAlarmTableViewController;
  v7 = alarmCopy;
  [(MTATableViewController *)&v8 showAddViewWithCompletion:v9];
}

- (void)showAddViewForAlarmWithID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  [(MTAAlarmTableViewController *)self _reloadDataIfNecessary];
  reloadDataFuture = [(MTAAlarmTableViewController *)self reloadDataFuture];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023B74;
  v8[3] = &unk_1000AE0F0;
  objc_copyWeak(&v10, &location);
  v6 = dCopy;
  v9 = v6;
  v7 = [reloadDataFuture addCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)dismissAddViewController:(id)controller
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100023D08;
  v6[3] = &unk_1000AD9F0;
  v6[4] = self;
  controllerCopy = controller;
  [(MTATableViewController *)self reloadState:v6];
  v5.receiver = self;
  v5.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v5 dismissAddViewController:controllerCopy];

  [(MTAAlarmTableViewController *)self setAlarmEditViewController:0];
}

- (void)finishAddViewControllerDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023E38;
  v8[3] = &unk_1000AD9F0;
  v8[4] = self;
  [(MTATableViewController *)self reloadState:v8];
  v7.receiver = self;
  v7.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v7 finishAddViewControllerDismissal:dismissalCopy];
  [(MTAAlarmTableViewController *)self setAlarmEditViewController:0];
  v5 = +[MTAStateStore shared];
  v6 = [MTAStateStoreEvent eventWithType:6];
  [v5 pushEvent:v6];
}

- (void)_addAlarm:(id)alarm withCompletionBlock:(id)block
{
  alarmCopy = alarm;
  blockCopy = block;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [alarmCopy alarmID];
    *buf = 138543362;
    v18 = alarmID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding alarm %{public}@", buf, 0xCu);
  }

  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  v11 = [(MTAAlarmTableViewController *)self bypassReloadAlarm:alarmCopy];
  v12 = [dataSource addAlarm:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100024018;
  v15[3] = &unk_1000AE118;
  v15[4] = self;
  v16 = blockCopy;
  v13 = blockCopy;
  v14 = [v12 addSuccessBlock:v15];
}

- (void)_updateAlarm:(id)alarm withCompletionBlock:(id)block
{
  alarmCopy = alarm;
  blockCopy = block;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [alarmCopy alarmID];
    *buf = 138543362;
    v18 = alarmID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating alarm %{public}@", buf, 0xCu);
  }

  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  v11 = [(MTAAlarmTableViewController *)self bypassReloadAlarm:alarmCopy];
  v12 = [dataSource updateAlarm:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000241F0;
  v15[3] = &unk_1000AE118;
  v15[4] = self;
  v16 = blockCopy;
  v13 = blockCopy;
  v14 = [v12 addSuccessBlock:v15];
}

- (void)_removeAlarm:(id)alarm withCompletionBlock:(id)block
{
  alarmCopy = alarm;
  blockCopy = block;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [alarmCopy alarmID];
    *buf = 138543362;
    v18 = alarmID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing alarm %{public}@", buf, 0xCu);
  }

  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  v11 = [(MTAAlarmTableViewController *)self bypassReloadAlarm:alarmCopy];
  v12 = [dataSource removeAlarm:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000243C8;
  v15[3] = &unk_1000AE118;
  v15[4] = self;
  v16 = blockCopy;
  v13 = blockCopy;
  v14 = [v12 addSuccessBlock:v15];
}

- (id)bypassReloadAlarm:(id)alarm
{
  v3 = [alarm mutableCopy];
  v4 = +[NSDate date];
  [v3 setBypassReloadDate:v4];

  v5 = [v3 copy];

  return v5;
}

- (void)reloadWidgetTimeline
{
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024508;
  block[3] = &unk_1000AD9F0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)showEditViewForRow:(int64_t)row
{
  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  v5 = [dataSource alarmAtRow:row];
  [(MTAAlarmTableViewController *)self showAddViewForAlarm:v5];
}

- (BOOL)_isWakeAlarmSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_sections count]<= section)
  {
    sub_1000737D8(a2, self);
  }

  v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  v7 = [v6 integerValue] == 1;

  return v7;
}

- (BOOL)_isAlarmsSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_sections count]<= section)
  {
    sub_10007384C(a2, self);
  }

  v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section];
  v7 = [v6 integerValue] == 3;

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(MTAAlarmTableViewController *)self numberOfItems]<= 0 && [(MTAAlarmTableViewController *)self _isAlarmsSection:section])
  {
    v7 = 2.22507386e-308;
  }

  else
  {
    [viewCopy sectionHeaderHeight];
    v7 = v8;
  }

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"kMTAAlarmTableViewHeaderReuseIdentifier"];
  v7 = +[UIListContentConfiguration _interactiveInsetGroupedHeaderConfiguration];
  textProperties = [v7 textProperties];
  font = [textProperties font];

  textProperties2 = [v7 textProperties];
  color = [textProperties2 color];

  v12 = objc_alloc_init(NSMutableParagraphStyle);
  view = [(MTAAlarmTableViewController *)self view];
  if ([view mtui_isRTL])
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  [v12 setAlignment:v14];

  [v12 setLineBreakMode:0];
  v15 = +[UIListContentConfiguration groupedHeaderConfiguration];
  if ([(MTAAlarmTableViewController *)self _isWakeAlarmSection:section])
  {
    v16 = +[UIColor mtui_primaryColor];
    v17 = [UIImage mtui_imageWithSymbolName:@"bed.double.fill" scale:1 textStyle:UIFontTextStyleTitle3 andTintColor:v16];

    v18 = objc_alloc_init(NSTextAttachment);
    [v18 setImage:v17];
    [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
    v36 = v7;
    v19 = color;
    v21 = v20 = v6;
    v22 = [v21 localizedStringForKey:@"SLEEP_HEADER_TITLE" value:&stru_1000AEF10 table:@"MobileTimerUI_Burrito"];
    v23 = [NSString stringWithFormat:@" %@", v22];

    v24 = [NSMutableAttributedString alloc];
    v40[0] = NSFontAttributeName;
    v40[1] = NSForegroundColorAttributeName;
    v37 = font;
    v41[0] = font;
    v41[1] = v19;
    v25 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
    v26 = [v24 initWithString:v23 attributes:v25];

    v27 = [NSAttributedString attributedStringWithAttachment:v18];
    v28 = [v27 mutableCopy];

    [v28 appendAttributedString:v26];
    [v28 addAttribute:NSParagraphStyleAttributeName value:v12 range:{0, objc_msgSend(v28, "length")}];
    [v15 setAttributedText:v28];
    [v20 setContentConfiguration:v15];

    v6 = v20;
    color = v19;
    v7 = v36;
  }

  else
  {
    if ([(MTAAlarmTableViewController *)self numberOfItems]< 1)
    {
      goto LABEL_9;
    }

    v29 = [NSAttributedString alloc];
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"REGULAR_ALARMS_SECTION_HEADER_TITLE" value:&stru_1000AEF10 table:0];
    v32 = font;
    v33 = v31;
    v38[0] = NSFontAttributeName;
    v38[1] = NSForegroundColorAttributeName;
    v37 = v32;
    v39[0] = v32;
    v39[1] = color;
    v38[2] = NSParagraphStyleAttributeName;
    v39[2] = v12;
    v34 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
    v17 = [v29 initWithString:v33 attributes:v34];

    [v15 setAttributedText:v17];
    [v6 setContentConfiguration:v15];
  }

  font = v37;
LABEL_9:

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(MTAAlarmTableViewController *)self _isWakeAlarmSection:section])
  {
    return 1;
  }

  return [(MTAAlarmTableViewController *)self numberOfItems];
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100024E9C;
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
  if (path)
  {
    v4 = [path row];
    dataSource = [(MTAAlarmTableViewController *)self dataSource];
    v6 = [dataSource alarmAtRow:v4];

    [(MTAAlarmTableViewController *)self _removeAlarm:v6 withCompletionBlock:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(MTAAlarmTableViewController *)self isRunningPPTTest])
  {
    if (qword_1000D2A68 != -1)
    {
      sub_1000738C0();
    }

    sleepAlarm = qword_1000D2A70;
    goto LABEL_10;
  }

  v9 = -[MTAAlarmTableViewController _isWakeAlarmSection:](self, "_isWakeAlarmSection:", [pathCopy section]);
  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  v11 = dataSource;
  if (!v9)
  {
    sleepAlarm = [dataSource alarmAtRow:{objc_msgSend(pathCopy, "row")}];

    goto LABEL_10;
  }

  sleepAlarm = [dataSource sleepAlarm];

  if (!MTShouldHandleForEucalyptus())
  {
LABEL_10:
    v13 = [viewCopy dequeueReusableCellWithIdentifier:off_1000D1AA0 forIndexPath:pathCopy];
    [v13 refreshUI:sleepAlarm animated:0];
    goto LABEL_11;
  }

  sleepCoordinator = [(MTAAlarmTableViewController *)self sleepCoordinator];
  if ([sleepCoordinator didCompleteSleepOnboarding])
  {
  }

  else
  {
    dataSource2 = [(MTAAlarmTableViewController *)self dataSource];
    sleepAlarm2 = [dataSource2 sleepAlarm];

    if (!sleepAlarm2)
    {
      v13 = [viewCopy dequeueReusableCellWithIdentifier:off_1000D1B10 forIndexPath:pathCopy];
      sleepCoordinator2 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
      sleepMetadata = [sleepCoordinator2 localizedStringForKey:@"SLEEP_ALARM_SETUP" value:&stru_1000AEF10 table:@"MobileTimerUI_Burrito"];
      [v13 configureSetupButtonWithTitle:sleepMetadata action:"setupButtonPressed"];
      goto LABEL_16;
    }
  }

  v13 = [viewCopy dequeueReusableCellWithIdentifier:off_1000D1B08 forIndexPath:pathCopy];
  sleepCoordinator2 = [(MTAAlarmTableViewController *)self sleepCoordinator];
  sleepMetadata = [sleepCoordinator2 sleepMetadata];
  [v13 refreshWithSleepMetadata:sleepMetadata];
LABEL_16:

LABEL_11:
  [v13 setDelegate:self];

  return v13;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  if (!-[MTAAlarmTableViewController _isWakeAlarmSection:](self, "_isWakeAlarmSection:", [path section]))
  {
    return 1;
  }

  return MTShouldHandleForBedtime();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[MTAAlarmTableViewController _isWakeAlarmSection:](self, "_isWakeAlarmSection:", [pathCopy section]))
  {
    MTShouldHandleForBedtime();
  }

  else
  {
    v5 = pathCopy;
    if (!pathCopy)
    {
      goto LABEL_6;
    }

    -[MTAAlarmTableViewController showEditViewForRow:](self, "showEditViewForRow:", [pathCopy row]);
  }

  v5 = pathCopy;
LABEL_6:
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = MTAAlarmTableViewController;
  [(MTAAlarmTableViewController *)&v8 setEditing:editing animated:animated];
  v5 = +[MTAStateStore shared];
  if (editingCopy)
  {
    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  v7 = [MTAStateStoreEvent eventWithType:v6];
  [v5 pushEvent:v7];
}

- (void)showSleepView:(BOOL)view
{
  viewCopy = view;
  sleepCoordinator = [(MTAAlarmTableViewController *)self sleepCoordinator];
  isHealthAppNotInstalled = [sleepCoordinator isHealthAppNotInstalled];

  if (isHealthAppNotInstalled)
  {
    if (viewCopy)
    {

      +[MTUIUtility openSleepInHealthApp];
    }
  }

  else
  {
    sleepCoordinator2 = [(MTAAlarmTableViewController *)self sleepCoordinator];
    sleepEditController = [sleepCoordinator2 sleepEditController];

    v8 = sleepEditController;
    if (sleepEditController)
    {
      [(MTAAlarmTableViewController *)self presentViewController:sleepEditController animated:1 completion:&stru_1000AE158];
      v8 = sleepEditController;
    }
  }
}

- (void)sleepScheduleModelDidChange
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading sleep section", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002569C;
  block[3] = &unk_1000AD9F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reloadSleepSection
{
  v3 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B1890];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    tableView = [(MTAAlarmTableViewController *)self tableView];
    v5 = [NSIndexSet indexSetWithIndex:v4];
    [tableView reloadSections:v5 withRowAnimation:100];
  }
}

- (void)healthAppInstallationDidChange
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Health app installation changed", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025854;
  block[3] = &unk_1000AD9F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didDismissViewController
{
  v3 = +[MTAStateStore shared];
  v2 = [MTAStateStoreEvent eventWithType:6];
  [v3 pushEvent:v2];
}

- (void)alarmEditController:(id)controller didAddAlarm:(id)alarm
{
  controllerCopy = controller;
  alarmCopy = alarm;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000259DC;
  v9[3] = &unk_1000AE1A0;
  objc_copyWeak(&v11, &location);
  v8 = alarmCopy;
  v10 = v8;
  [(MTAAlarmTableViewController *)self _addAlarm:v8 withCompletionBlock:v9];
  [(MTAAlarmTableViewController *)self dismissAddViewController:controllerCopy];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)alarmEditController:(id)controller didEditAlarm:(id)alarm
{
  controllerCopy = controller;
  alarmCopy = alarm;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100025B4C;
  v9[3] = &unk_1000AE1A0;
  objc_copyWeak(&v11, &location);
  v8 = alarmCopy;
  v10 = v8;
  [(MTAAlarmTableViewController *)self _updateAlarm:v8 withCompletionBlock:v9];
  [(MTAAlarmTableViewController *)self dismissAddViewController:controllerCopy];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_scrollToAlarm:(id)alarm
{
  alarmCopy = alarm;
  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  v6 = [dataSource rowForAlarm:alarmCopy];

  v7 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B18A8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      tableView = [(MTAAlarmTableViewController *)self tableView];
      v9 = [NSIndexPath indexPathForRow:v6 inSection:v8];
      [tableView scrollToRowAtIndexPath:v9 atScrollPosition:0 animated:0];
    }
  }
}

- (void)alarmEditController:(id)controller didDeleteAlarm:(id)alarm
{
  controllerCopy = controller;
  [(MTAAlarmTableViewController *)self _removeAlarm:alarm withCompletionBlock:0];
  [(MTAAlarmTableViewController *)self dismissAddViewController:controllerCopy];
}

- (void)handleContentSizeTransitionFrom:(id)from
{
  currentAlarmEditController = [from currentAlarmEditController];
  [(MTAAlarmTableViewController *)self setAlarmEditViewController:currentAlarmEditController];

  alarmEditViewController = [(MTAAlarmTableViewController *)self alarmEditViewController];
  [alarmEditViewController setDelegate:self];
}

- (void)setAlarmEnabled:(BOOL)enabled forCell:(id)cell
{
  enabledCopy = enabled;
  cellCopy = cell;
  tableView = [(MTAAlarmTableViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  LODWORD(cellCopy) = -[MTAAlarmTableViewController _isWakeAlarmSection:](self, "_isWakeAlarmSection:", [v8 section]);
  dataSource = [(MTAAlarmTableViewController *)self dataSource];
  v10 = dataSource;
  if (cellCopy)
  {
    sleepAlarm = [dataSource sleepAlarm];
    v12 = [sleepAlarm mutableCopy];

    [v12 setSleepSchedule:enabledCopy];
  }

  else
  {
    v13 = [dataSource alarmAtRow:{objc_msgSend(v8, "row")}];
    v12 = [v13 mutableCopy];
  }

  [v12 setEnabled:enabledCopy];
  v14 = MTLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [v12 alarmID];
    *buf = 138543618;
    v22 = alarmID;
    v23 = 1024;
    v24 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting alarm %{public}@ to enabled: %d", buf, 0x12u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100025F84;
  v17[3] = &unk_1000AE1C8;
  v18 = v12;
  selfCopy = self;
  v20 = enabledCopy;
  v16 = v12;
  [(MTAAlarmTableViewController *)self _updateAlarm:v16 withCompletionBlock:v17];
}

@end