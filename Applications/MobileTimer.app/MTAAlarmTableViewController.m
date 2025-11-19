@interface MTAAlarmTableViewController
- (BOOL)_isAlarmsSection:(int64_t)a3;
- (BOOL)_isWakeAlarmSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (MTAAlarmTableViewController)initWithAlarmManager:(id)a3 dataSource:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)addViewController;
- (id)bypassReloadAlarm:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsIncludingSleep;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addAlarm:(id)a3 withCompletionBlock:(id)a4;
- (void)_reloadData:(id)a3;
- (void)_reloadDataIfNecessary;
- (void)_removeAlarm:(id)a3 withCompletionBlock:(id)a4;
- (void)_scrollToAlarm:(id)a3;
- (void)_updateAlarm:(id)a3 withCompletionBlock:(id)a4;
- (void)alarmEditController:(id)a3 didAddAlarm:(id)a4;
- (void)alarmEditController:(id)a3 didDeleteAlarm:(id)a4;
- (void)alarmEditController:(id)a3 didEditAlarm:(id)a4;
- (void)dataSource:(id)a3 didUpdateAlarms:(id)a4;
- (void)dataSourceDidReload:(id)a3;
- (void)deleteRowAtIndexPath:(id)a3;
- (void)didDismissViewController;
- (void)dismissAddViewController:(id)a3;
- (void)finishAddViewControllerDismissal:(BOOL)a3;
- (void)handleContentSizeTransitionFrom:(id)a3;
- (void)healthAppInstallationDidChange;
- (void)reloadSections;
- (void)reloadSleepSection;
- (void)reloadWidgetTimeline;
- (void)saveScrollPoint;
- (void)scrollToSavedPoint;
- (void)setAlarmEnabled:(BOOL)a3 forCell:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setupForTest:(id)a3 options:(id)a4;
- (void)showAddViewForAlarm:(id)a3;
- (void)showAddViewForAlarmWithID:(id)a3;
- (void)showEditViewForRow:(int64_t)a3;
- (void)showSleepView:(BOOL)a3;
- (void)sleepScheduleModelDidChange;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MTAAlarmTableViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v12 viewDidLoad];
  [(MTATableViewController *)self reloadState];
  v3 = [(MTAAlarmTableViewController *)self tableView];
  [v3 setAllowsSelectionDuringEditing:1];

  v4 = [(MTAAlarmTableViewController *)self tableView];
  [v4 setAllowsSelection:1];

  v5 = [(MTAAlarmTableViewController *)self tableView];
  [v5 setLayoutMarginsFollowReadableWidth:1];

  v6 = [(MTAAlarmTableViewController *)self tableView];
  [v6 setEstimatedRowHeight:96.0];

  v7 = [(MTAAlarmTableViewController *)self tableView];
  [v7 setRowHeight:UITableViewAutomaticDimension];

  v8 = [(MTAAlarmTableViewController *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:off_1000D1AA0];

  v9 = [(MTAAlarmTableViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:off_1000D1B08];

  v10 = [(MTAAlarmTableViewController *)self tableView];
  [v10 registerClass:objc_opt_class() forCellReuseIdentifier:off_1000D1B10];

  v11 = [(MTAAlarmTableViewController *)self tableView];
  [v11 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMTAAlarmTableViewHeaderReuseIdentifier"];
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

  v4 = [(MTAAlarmTableViewController *)self dataSource];
  v5 = [v4 numberOfAlarms];

  v6 = [(MTAAlarmTableViewController *)self dataSource];
  v7 = [v6 sleepAlarm];

  if (v7)
  {
    return v5 + 1;
  }

  else
  {
    return v5;
  }
}

- (void)reloadSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];
  v3 = [(MTAAlarmTableViewController *)self dataSource];
  v4 = [v3 sleepAlarm];

  if (v4 || MTShouldHandleForEucalyptus() && (MTIdiomIpad() & 1) == 0)
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

  v4 = [(MTAAlarmTableViewController *)self dataSource];
  v5 = [v4 numberOfAlarms];

  return v5;
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
      v7 = [(MTAAlarmTableViewController *)self tableView];
      [v7 contentSize];
      v9 = v8;

      if (v9 > v6)
      {
        v10 = [(MTAAlarmTableViewController *)self tableView];
        [v10 setContentOffset:{0.0, v6}];
      }
    }

    [v12 removeObjectForKey:@"AlarmTableScrollPoint"];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"com.apple.mobiletimer.user-preferences-dirty" object:0];
  }
}

- (MTAAlarmTableViewController)initWithAlarmManager:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = MTAAlarmTableViewController;
  v8 = [(MTATableViewController *)&v23 initWithTableViewStyle:0];
  if (v8)
  {
    v9 = [UIImage systemImageNamed:@"alarm.fill"];
    v10 = [(MTAAlarmTableViewController *)v8 tabBarItem];
    [v10 setImage:v9];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"ALARMS_LIST" value:&stru_1000AEF10 table:0];
    [(MTAAlarmTableViewController *)v8 setTitle:v12];

    [(MTAAlarmTableViewController *)v8 setAlarmManager:v6];
    [(MTAAlarmTableViewController *)v8 setDataSource:v7];
    v13 = [(MTAAlarmTableViewController *)v8 dataSource];
    [v13 registerObserver:v8];

    v14 = [(MTAAlarmTableViewController *)v8 title];
    v15 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.alarm" title:v14];
    userActivity = v8->_userActivity;
    v8->_userActivity = v15;

    v17 = objc_opt_new();
    sections = v8->_sections;
    v8->_sections = v17;

    v19 = objc_opt_new();
    [(MTAAlarmTableViewController *)v8 setSleepCoordinator:v19];

    v20 = [(MTAAlarmTableViewController *)v8 sleepCoordinator];
    [v20 setDelegate:v8];

    v21 = v8;
  }

  return v8;
}

- (void)_reloadData:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarmDataSource *)self->_dataSource reloadAlarms];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000232B8;
  v8[3] = &unk_1000AE0A0;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
  [(MTAAlarmTableViewController *)self setReloadDataFuture:v5];
}

- (void)_reloadDataIfNecessary
{
  v3 = [(MTAAlarmTableViewController *)self reloadDataFuture];

  if (!v3)
  {

    [(MTAAlarmTableViewController *)self _reloadData:0];
  }
}

- (void)dataSourceDidReload:(id)a3
{
  [(MTAAlarmTableViewController *)self reloadSections];
  [(MTATableViewController *)self _reloadUI:0];
  v4 = [(MTAAlarmTableViewController *)self tableView];
  [v4 reloadData];

  [(MTAAlarmTableViewController *)self scrollToSavedPoint];
  alarmsLoadedAction = self->_alarmsLoadedAction;
  if (alarmsLoadedAction)
  {
    alarmsLoadedAction[2]();
    v6 = self->_alarmsLoadedAction;
    self->_alarmsLoadedAction = 0;
  }
}

- (void)dataSource:(id)a3 didUpdateAlarms:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MTAlarm *)self->_alarmToEdit alarmID];
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading UI for alarm: %{public}@", buf, 0x16u);
  }

  if ([(MTAlarm *)self->_alarmToEdit allowsSnooze])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100023508;
    v8[3] = &unk_1000AE0C8;
    v8[4] = self;
    [v5 enumerateObjectsUsingBlock:v8];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v4 viewWillAppear:a3];
  self->_viewVisible = 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v4 viewDidAppear:a3];
  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  self->_viewVisible = 0;
  [(NSUserActivity *)self->_userActivity resignCurrent];
  v5.receiver = self;
  v5.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v5 viewDidDisappear:v3];
}

- (void)setupForTest:(id)a3 options:(id)a4
{
  [(MTAAlarmTableViewController *)self setIsRunningPPTTest:1, a4];

  [(MTATableViewController *)self reloadState];
}

- (void)saveScrollPoint
{
  if ([(MTAAlarmTableViewController *)self isViewLoaded])
  {
    v3 = [(MTAAlarmTableViewController *)self tableView];
    [v3 contentOffset];
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
    v3 = [(MTAAlarmTableViewController *)self dataSource];
    v4 = [v3 rowForAlarm:self->_alarmToEdit] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  v5 = [[MTAAlarmEditViewController alloc] initWithAlarm:self->_alarmToEdit isNewAlarm:v4];
  [(MTAAlarmTableViewController *)self setAlarmEditViewController:v5];

  v6 = [(MTAAlarmTableViewController *)self alarmEditViewController];
  [v6 setDelegate:self];

  v7 = [MTAAddSheetNavigationController alloc];
  v8 = [(MTAAlarmTableViewController *)self alarmEditViewController];
  v9 = [(MTAAddSheetNavigationController *)v7 initWithRootViewController:v8];

  return v9;
}

- (void)showAddViewForAlarm:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_alarmToEdit, a3);
  v6 = [(MTAAlarmTableViewController *)self tableView];
  [v6 setUserInteractionEnabled:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002399C;
  v9[3] = &unk_1000AD9F0;
  v10 = v5;
  v8.receiver = self;
  v8.super_class = MTAAlarmTableViewController;
  v7 = v5;
  [(MTATableViewController *)&v8 showAddViewWithCompletion:v9];
}

- (void)showAddViewForAlarmWithID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [(MTAAlarmTableViewController *)self _reloadDataIfNecessary];
  v5 = [(MTAAlarmTableViewController *)self reloadDataFuture];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023B74;
  v8[3] = &unk_1000AE0F0;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  v7 = [v5 addCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)dismissAddViewController:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100023D08;
  v6[3] = &unk_1000AD9F0;
  v6[4] = self;
  v4 = a3;
  [(MTATableViewController *)self reloadState:v6];
  v5.receiver = self;
  v5.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v5 dismissAddViewController:v4];

  [(MTAAlarmTableViewController *)self setAlarmEditViewController:0];
}

- (void)finishAddViewControllerDismissal:(BOOL)a3
{
  v3 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023E38;
  v8[3] = &unk_1000AD9F0;
  v8[4] = self;
  [(MTATableViewController *)self reloadState:v8];
  v7.receiver = self;
  v7.super_class = MTAAlarmTableViewController;
  [(MTATableViewController *)&v7 finishAddViewControllerDismissal:v3];
  [(MTAAlarmTableViewController *)self setAlarmEditViewController:0];
  v5 = +[MTAStateStore shared];
  v6 = [MTAStateStoreEvent eventWithType:6];
  [v5 pushEvent:v6];
}

- (void)_addAlarm:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 alarmID];
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding alarm %{public}@", buf, 0xCu);
  }

  v10 = [(MTAAlarmTableViewController *)self dataSource];
  v11 = [(MTAAlarmTableViewController *)self bypassReloadAlarm:v6];
  v12 = [v10 addAlarm:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100024018;
  v15[3] = &unk_1000AE118;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  v14 = [v12 addSuccessBlock:v15];
}

- (void)_updateAlarm:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 alarmID];
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating alarm %{public}@", buf, 0xCu);
  }

  v10 = [(MTAAlarmTableViewController *)self dataSource];
  v11 = [(MTAAlarmTableViewController *)self bypassReloadAlarm:v6];
  v12 = [v10 updateAlarm:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000241F0;
  v15[3] = &unk_1000AE118;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  v14 = [v12 addSuccessBlock:v15];
}

- (void)_removeAlarm:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 alarmID];
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing alarm %{public}@", buf, 0xCu);
  }

  v10 = [(MTAAlarmTableViewController *)self dataSource];
  v11 = [(MTAAlarmTableViewController *)self bypassReloadAlarm:v6];
  v12 = [v10 removeAlarm:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000243C8;
  v15[3] = &unk_1000AE118;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  v14 = [v12 addSuccessBlock:v15];
}

- (id)bypassReloadAlarm:(id)a3
{
  v3 = [a3 mutableCopy];
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

- (void)showEditViewForRow:(int64_t)a3
{
  v6 = [(MTAAlarmTableViewController *)self dataSource];
  v5 = [v6 alarmAtRow:a3];
  [(MTAAlarmTableViewController *)self showAddViewForAlarm:v5];
}

- (BOOL)_isWakeAlarmSection:(int64_t)a3
{
  if ([(NSMutableArray *)self->_sections count]<= a3)
  {
    sub_1000737D8(a2, self);
  }

  v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a3];
  v7 = [v6 integerValue] == 1;

  return v7;
}

- (BOOL)_isAlarmsSection:(int64_t)a3
{
  if ([(NSMutableArray *)self->_sections count]<= a3)
  {
    sub_10007384C(a2, self);
  }

  v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a3];
  v7 = [v6 integerValue] == 3;

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(MTAAlarmTableViewController *)self numberOfItems]<= 0 && [(MTAAlarmTableViewController *)self _isAlarmsSection:a4])
  {
    v7 = 2.22507386e-308;
  }

  else
  {
    [v6 sectionHeaderHeight];
    v7 = v8;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"kMTAAlarmTableViewHeaderReuseIdentifier"];
  v7 = +[UIListContentConfiguration _interactiveInsetGroupedHeaderConfiguration];
  v8 = [v7 textProperties];
  v9 = [v8 font];

  v10 = [v7 textProperties];
  v11 = [v10 color];

  v12 = objc_alloc_init(NSMutableParagraphStyle);
  v13 = [(MTAAlarmTableViewController *)self view];
  if ([v13 mtui_isRTL])
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
  if ([(MTAAlarmTableViewController *)self _isWakeAlarmSection:a4])
  {
    v16 = +[UIColor mtui_primaryColor];
    v17 = [UIImage mtui_imageWithSymbolName:@"bed.double.fill" scale:1 textStyle:UIFontTextStyleTitle3 andTintColor:v16];

    v18 = objc_alloc_init(NSTextAttachment);
    [v18 setImage:v17];
    [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
    v36 = v7;
    v19 = v11;
    v21 = v20 = v6;
    v22 = [v21 localizedStringForKey:@"SLEEP_HEADER_TITLE" value:&stru_1000AEF10 table:@"MobileTimerUI_Burrito"];
    v23 = [NSString stringWithFormat:@" %@", v22];

    v24 = [NSMutableAttributedString alloc];
    v40[0] = NSFontAttributeName;
    v40[1] = NSForegroundColorAttributeName;
    v37 = v9;
    v41[0] = v9;
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
    v11 = v19;
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
    v32 = v9;
    v33 = v31;
    v38[0] = NSFontAttributeName;
    v38[1] = NSForegroundColorAttributeName;
    v37 = v32;
    v39[0] = v32;
    v39[1] = v11;
    v38[2] = NSParagraphStyleAttributeName;
    v39[2] = v12;
    v34 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
    v17 = [v29 initWithString:v33 attributes:v34];

    [v15 setAttributedText:v17];
    [v6 setContentConfiguration:v15];
  }

  v9 = v37;
LABEL_9:

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(MTAAlarmTableViewController *)self _isWakeAlarmSection:a4])
  {
    return 1;
  }

  return [(MTAAlarmTableViewController *)self numberOfItems];
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100024E9C;
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
  if (a3)
  {
    v4 = [a3 row];
    v5 = [(MTAAlarmTableViewController *)self dataSource];
    v6 = [v5 alarmAtRow:v4];

    [(MTAAlarmTableViewController *)self _removeAlarm:v6 withCompletionBlock:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MTAAlarmTableViewController *)self isRunningPPTTest])
  {
    if (qword_1000D2A68 != -1)
    {
      sub_1000738C0();
    }

    v8 = qword_1000D2A70;
    goto LABEL_10;
  }

  v9 = -[MTAAlarmTableViewController _isWakeAlarmSection:](self, "_isWakeAlarmSection:", [v7 section]);
  v10 = [(MTAAlarmTableViewController *)self dataSource];
  v11 = v10;
  if (!v9)
  {
    v8 = [v10 alarmAtRow:{objc_msgSend(v7, "row")}];

    goto LABEL_10;
  }

  v8 = [v10 sleepAlarm];

  if (!MTShouldHandleForEucalyptus())
  {
LABEL_10:
    v13 = [v6 dequeueReusableCellWithIdentifier:off_1000D1AA0 forIndexPath:v7];
    [v13 refreshUI:v8 animated:0];
    goto LABEL_11;
  }

  v12 = [(MTAAlarmTableViewController *)self sleepCoordinator];
  if ([v12 didCompleteSleepOnboarding])
  {
  }

  else
  {
    v15 = [(MTAAlarmTableViewController *)self dataSource];
    v16 = [v15 sleepAlarm];

    if (!v16)
    {
      v13 = [v6 dequeueReusableCellWithIdentifier:off_1000D1B10 forIndexPath:v7];
      v17 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
      v18 = [v17 localizedStringForKey:@"SLEEP_ALARM_SETUP" value:&stru_1000AEF10 table:@"MobileTimerUI_Burrito"];
      [v13 configureSetupButtonWithTitle:v18 action:"setupButtonPressed"];
      goto LABEL_16;
    }
  }

  v13 = [v6 dequeueReusableCellWithIdentifier:off_1000D1B08 forIndexPath:v7];
  v17 = [(MTAAlarmTableViewController *)self sleepCoordinator];
  v18 = [v17 sleepMetadata];
  [v13 refreshWithSleepMetadata:v18];
LABEL_16:

LABEL_11:
  [v13 setDelegate:self];

  return v13;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  if (!-[MTAAlarmTableViewController _isWakeAlarmSection:](self, "_isWakeAlarmSection:", [a4 section]))
  {
    return 1;
  }

  return MTShouldHandleForBedtime();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  if (-[MTAAlarmTableViewController _isWakeAlarmSection:](self, "_isWakeAlarmSection:", [v6 section]))
  {
    MTShouldHandleForBedtime();
  }

  else
  {
    v5 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    -[MTAAlarmTableViewController showEditViewForRow:](self, "showEditViewForRow:", [v6 row]);
  }

  v5 = v6;
LABEL_6:
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTAAlarmTableViewController;
  [(MTAAlarmTableViewController *)&v8 setEditing:a3 animated:a4];
  v5 = +[MTAStateStore shared];
  if (v4)
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

- (void)showSleepView:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTAAlarmTableViewController *)self sleepCoordinator];
  v6 = [v5 isHealthAppNotInstalled];

  if (v6)
  {
    if (v3)
    {

      +[MTUIUtility openSleepInHealthApp];
    }
  }

  else
  {
    v7 = [(MTAAlarmTableViewController *)self sleepCoordinator];
    v9 = [v7 sleepEditController];

    v8 = v9;
    if (v9)
    {
      [(MTAAlarmTableViewController *)self presentViewController:v9 animated:1 completion:&stru_1000AE158];
      v8 = v9;
    }
  }
}

- (void)sleepScheduleModelDidChange
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
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
    v6 = [(MTAAlarmTableViewController *)self tableView];
    v5 = [NSIndexSet indexSetWithIndex:v4];
    [v6 reloadSections:v5 withRowAnimation:100];
  }
}

- (void)healthAppInstallationDidChange
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
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

- (void)alarmEditController:(id)a3 didAddAlarm:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000259DC;
  v9[3] = &unk_1000AE1A0;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(MTAAlarmTableViewController *)self _addAlarm:v8 withCompletionBlock:v9];
  [(MTAAlarmTableViewController *)self dismissAddViewController:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)alarmEditController:(id)a3 didEditAlarm:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100025B4C;
  v9[3] = &unk_1000AE1A0;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(MTAAlarmTableViewController *)self _updateAlarm:v8 withCompletionBlock:v9];
  [(MTAAlarmTableViewController *)self dismissAddViewController:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_scrollToAlarm:(id)a3
{
  v4 = a3;
  v5 = [(MTAAlarmTableViewController *)self dataSource];
  v6 = [v5 rowForAlarm:v4];

  v7 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B18A8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(MTAAlarmTableViewController *)self tableView];
      v9 = [NSIndexPath indexPathForRow:v6 inSection:v8];
      [v10 scrollToRowAtIndexPath:v9 atScrollPosition:0 animated:0];
    }
  }
}

- (void)alarmEditController:(id)a3 didDeleteAlarm:(id)a4
{
  v6 = a3;
  [(MTAAlarmTableViewController *)self _removeAlarm:a4 withCompletionBlock:0];
  [(MTAAlarmTableViewController *)self dismissAddViewController:v6];
}

- (void)handleContentSizeTransitionFrom:(id)a3
{
  v4 = [a3 currentAlarmEditController];
  [(MTAAlarmTableViewController *)self setAlarmEditViewController:v4];

  v5 = [(MTAAlarmTableViewController *)self alarmEditViewController];
  [v5 setDelegate:self];
}

- (void)setAlarmEnabled:(BOOL)a3 forCell:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MTAAlarmTableViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  LODWORD(v6) = -[MTAAlarmTableViewController _isWakeAlarmSection:](self, "_isWakeAlarmSection:", [v8 section]);
  v9 = [(MTAAlarmTableViewController *)self dataSource];
  v10 = v9;
  if (v6)
  {
    v11 = [v9 sleepAlarm];
    v12 = [v11 mutableCopy];

    [v12 setSleepSchedule:v4];
  }

  else
  {
    v13 = [v9 alarmAtRow:{objc_msgSend(v8, "row")}];
    v12 = [v13 mutableCopy];
  }

  [v12 setEnabled:v4];
  v14 = MTLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v12 alarmID];
    *buf = 138543618;
    v22 = v15;
    v23 = 1024;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting alarm %{public}@ to enabled: %d", buf, 0x12u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100025F84;
  v17[3] = &unk_1000AE1C8;
  v18 = v12;
  v19 = self;
  v20 = v4;
  v16 = v12;
  [(MTAAlarmTableViewController *)self _updateAlarm:v16 withCompletionBlock:v17];
}

@end