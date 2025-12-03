@interface MTAAlarmEditViewController
+ (CGSize)desiredContentSize;
- (BOOL)isEdited;
- (BOOL)isNewAlarm;
- (MTAAlarmEditViewController)initWithAlarm:(id)alarm isNewAlarm:(BOOL)newAlarm;
- (MTAAlarmEditViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)defaultEditLabel;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)timePickerCellForTableView:(id)view;
- (id)tonePickerCellForTableView:(id)view;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelButtonClicked:(id)clicked;
- (void)_doneButtonClicked:(id)clicked;
- (void)_snoozeControlChanged:(id)changed;
- (void)alarmEditSettingController:(id)controller didEditAlarm:(id)alarm;
- (void)contentSizeCategoryDidChange;
- (void)didUpdateWithLabel:(id)label sender:(id)sender;
- (void)reloadDataForAlarm:(id)alarm;
- (void)saveAlarmOnlyIfEdited:(BOOL)edited saveNew:(BOOL)new;
- (void)setDelegate:(id)delegate;
- (void)startEditingSetting:(int64_t)setting;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MTAAlarmEditViewController

+ (CGSize)desiredContentSize
{
  v2 = 320.0;
  v3 = 500.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (MTAAlarmEditViewController)initWithAlarm:(id)alarm isNewAlarm:(BOOL)newAlarm
{
  newAlarmCopy = newAlarm;
  alarmCopy = alarm;
  if (_os_feature_enabled_impl())
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v42.receiver = self;
  v42.super_class = MTAAlarmEditViewController;
  v10 = [(MTAAlarmEditViewController *)&v42 initWithStyle:v9];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&v10->_originalAlarm, alarm);
  if (alarmCopy)
  {
    if (!newAlarmCopy)
    {
      v13 = [alarmCopy mutableCopy];
      v14 = @"ALARM_EDIT";
      goto LABEL_11;
    }

    originalAlarm = v11->_originalAlarm;
    v11->_originalAlarm = 0;

    v13 = [alarmCopy mutableCopy];
  }

  else
  {
    v13 = +[MTMutableAlarm alarm];
  }

  v14 = @"CREATE_NEW_ALARM";
LABEL_11:
  editedAlarm = v11->_editedAlarm;
  v11->_editedAlarm = v13;

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:v14 value:&stru_1000AEF10 table:0];

  v11->_editingAlarmSetting = -1;
  [(MTAAlarmEditViewController *)v11 setTitle:v17];
  v18 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"_cancelButtonClicked:"];
  navigationItem = [(MTAAlarmEditViewController *)v11 navigationItem];
  [navigationItem setLeftBarButtonItem:v18];

  navigationItem2 = [(MTAAlarmEditViewController *)v11 navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setAccessibilityIdentifier:@"Cancel"];

  v22 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v11 action:"_doneButtonClicked:"];
  navigationItem3 = [(MTAAlarmEditViewController *)v11 navigationItem];
  [navigationItem3 setRightBarButtonItem:v22];

  navigationItem4 = [(MTAAlarmEditViewController *)v11 navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"Save"];

  v26 = +[UIColor mtui_tintColor];
  navigationItem5 = [(MTAAlarmEditViewController *)v11 navigationItem];
  rightBarButtonItem2 = [navigationItem5 rightBarButtonItem];
  [rightBarButtonItem2 setTintColor:v26];

  navigationItem6 = [(MTAAlarmEditViewController *)v11 navigationItem];
  rightBarButtonItem3 = [navigationItem6 rightBarButtonItem];
  [rightBarButtonItem3 setStyle:2];

  v31 = [_TtC11MobileTimer23SnoozeDurationViewModel alloc];
  editedAlarm = [(MTAAlarmEditViewController *)v11 editedAlarm];
  snoozeDuration = [editedAlarm snoozeDuration];
  editedAlarm2 = [(MTAAlarmEditViewController *)v11 editedAlarm];
  isFiring = [editedAlarm2 isFiring];
  if (isFiring)
  {
    v36 = 0;
  }

  else
  {
    editedAlarm3 = [(MTAAlarmEditViewController *)v11 editedAlarm];
    v36 = [editedAlarm3 isSnoozed] ^ 1;
  }

  v37 = [(SnoozeDurationViewModel *)v31 initWithSelectedDuration:snoozeDuration maxDuration:15 minDuration:1 isEnabled:v36 isPickerShown:0];
  snoozeDurationViewModel = v11->_snoozeDurationViewModel;
  v11->_snoozeDurationViewModel = v37;

  if ((isFiring & 1) == 0)
  {
  }

  if (MTUIIsPhoneIdiom())
  {
    v39 = +[NSNotificationCenter defaultCenter];
    [v39 addObserver:v11 selector:"handleSuspend" name:UIApplicationSuspendedNotification object:0];
  }

  else
  {
    [objc_opt_class() desiredContentSize];
    [(MTAAlarmEditViewController *)v11 setPreferredContentSize:?];
  }

  v40 = +[NSNotificationCenter defaultCenter];
  [v40 addObserver:v11 selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

LABEL_20:
  return v11;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v9 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  traitCollection = [(MTAAlarmEditViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1 && objc_msgSend(collectionCopy, "horizontalSizeClass") == 2)
  {
    verticalSizeClass = [collectionCopy verticalSizeClass];

    if (verticalSizeClass == 2)
    {
      [(MTAAlarmEditViewController *)self saveAlarmOnlyIfEdited:1];
    }
  }

  else
  {
  }
}

- (BOOL)isNewAlarm
{
  originalAlarm = [(MTAAlarmEditViewController *)self originalAlarm];
  v3 = originalAlarm == 0;

  return v3;
}

- (BOOL)isEdited
{
  if ([(MTAAlarmEditViewController *)self isNewAlarm])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    originalAlarm = [(MTAAlarmEditViewController *)self originalAlarm];
    editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
    v3 = [originalAlarm isEqual:editedAlarm] ^ 1;
  }

  return v3;
}

- (void)saveAlarmOnlyIfEdited:(BOOL)edited saveNew:(BOOL)new
{
  editedCopy = edited;
  if ([(MTAAlarmEditViewController *)self isEdited]&& new || !editedCopy)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      alarmID = [(MTMutableAlarm *)self->_editedAlarm alarmID];
      v25 = 138543618;
      selfCopy2 = self;
      v27 = 2114;
      v28 = alarmID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ saving edited alarm: %{public}@", &v25, 0x16u);
    }

    calendar = [(UIDatePicker *)self->_timePicker calendar];
    _dateUnderSelectionBar = [(UIDatePicker *)self->_timePicker _dateUnderSelectionBar];
    v10 = [calendar components:96 fromDate:_dateUnderSelectionBar];

    hour = [v10 hour];
    editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
    [editedAlarm setHour:hour];

    minute = [v10 minute];
    editedAlarm2 = [(MTAAlarmEditViewController *)self editedAlarm];
    [editedAlarm2 setMinute:minute];

    if ([(MTAAlarmEditViewController *)self isEdited])
    {
      editedAlarm3 = [(MTAAlarmEditViewController *)self editedAlarm];
      [editedAlarm3 setEnabled:1];
    }

    v16 = MTLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      snoozeDurationViewModel = [(MTAAlarmEditViewController *)self snoozeDurationViewModel];
      selectedDuration = [snoozeDurationViewModel selectedDuration];
      alarmID2 = [(MTMutableAlarm *)self->_editedAlarm alarmID];
      v25 = 138543874;
      selfCopy2 = self;
      v27 = 2050;
      v28 = selectedDuration;
      v29 = 2114;
      v30 = alarmID2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ snooze duration changed to: %{public}lu  for alarm: %{public}@", &v25, 0x20u);
    }

    snoozeDurationViewModel2 = [(MTAAlarmEditViewController *)self snoozeDurationViewModel];
    selectedDuration2 = [snoozeDurationViewModel2 selectedDuration];
    editedAlarm4 = [(MTAAlarmEditViewController *)self editedAlarm];
    [editedAlarm4 setSnoozeDuration:selectedDuration2];

    LODWORD(editedAlarm4) = [(MTAAlarmEditViewController *)self isNewAlarm];
    delegate = [(MTAAlarmEditViewController *)self delegate];
    editedAlarm5 = [(MTAAlarmEditViewController *)self editedAlarm];
    if (editedAlarm4)
    {
      [delegate alarmEditController:self didAddAlarm:editedAlarm5];
    }

    else
    {
      [delegate alarmEditController:self didEditAlarm:editedAlarm5];
    }
  }
}

- (void)_cancelButtonClicked:(id)clicked
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [(MTMutableAlarm *)self->_editedAlarm alarmID];
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = alarmID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel button clicked for alarm: %{public}@", &v7, 0x16u);
  }

  delegate = [(MTAAlarmEditViewController *)self delegate];
  [delegate alarmEditControllerDidCancel:self];
}

- (void)_doneButtonClicked:(id)clicked
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [(MTMutableAlarm *)self->_editedAlarm alarmID];
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = alarmID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ done button clicked for alarm: %{public}@", &v6, 0x16u);
  }

  [(MTAAlarmEditViewController *)self saveAlarmOnlyIfEdited:0];
}

- (void)_snoozeControlChanged:(id)changed
{
  changedCopy = changed;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isOn = [changedCopy isOn];
    alarmID = [(MTMutableAlarm *)self->_editedAlarm alarmID];
    v11 = 138543874;
    selfCopy = self;
    v13 = 1026;
    v14 = isOn;
    v15 = 2114;
    v16 = alarmID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ snooze control changed to: %{public}i  for alarm: %{public}@", &v11, 0x1Cu);
  }

  isOn2 = [changedCopy isOn];
  editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
  [editedAlarm setAllowsSnooze:isOn2];

  tableView = [(MTAAlarmEditViewController *)self tableView];
  [tableView reloadData];
}

- (void)startEditingSetting:(int64_t)setting
{
  [(UIDatePicker *)self->_timePicker resignFirstResponder];
  self->_editingAlarmSetting = setting;
  v5 = [MTAAlarmEditSettingViewController alloc];
  editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
  v8 = [(MTAAlarmEditSettingViewController *)v5 initWithAlarm:editedAlarm setting:setting delegate:self];

  [(MTAAlarmEditViewController *)self preferredContentSize];
  [(MTAAlarmEditSettingViewController *)v8 setPreferredContentSize:?];
  navigationController = [(MTAAlarmEditViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)contentSizeCategoryDidChange
{
  tableView = [(MTAAlarmEditViewController *)self tableView];
  [tableView contentOffset];
  v4 = v3;
  v6 = v5;
  tableView2 = [(MTAAlarmEditViewController *)self tableView];
  [tableView2 reloadData];

  [tableView setContentOffset:0 animated:{v4, v6}];
}

- (void)reloadDataForAlarm:(id)alarm
{
  v4 = [alarm mutableCopy];
  editedAlarm = self->_editedAlarm;
  self->_editedAlarm = v4;

  v8 = [NSIndexPath indexPathForRow:4 inSection:1];
  v6 = [NSArray arrayWithObjects:v8, 0];
  tableView = [(MTAAlarmEditViewController *)self tableView];
  [tableView reloadRowsAtIndexPaths:v6 withRowAnimation:100];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (MTUIIsVeryWidePhoneSize())
  {
    return 30;
  }

  if (MTUIIsPadIdiom())
  {
    return 30;
  }

  return 2;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v13 viewDidLoad];
  tableView = [(MTAAlarmEditViewController *)self tableView];
  [tableView setAlwaysBounceVertical:0];
  [tableView setRowHeight:UITableViewAutomaticDimension];
  [tableView setEstimatedRowHeight:UITableViewDefaultRowHeight];
  [tableView setKeyboardDismissMode:2];
  v4 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [tableView setTableHeaderView:v4];

  [tableView setAutoresizingMask:18];
  v5 = [[UIDatePicker alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  timePicker = self->_timePicker;
  self->_timePicker = v5;

  [(UIDatePicker *)self->_timePicker setAutoresizingMask:2];
  [(UIDatePicker *)self->_timePicker setPreferredDatePickerStyle:1];
  [(UIDatePicker *)self->_timePicker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIDatePicker *)self->_timePicker setDatePickerMode:0];
  [(UIDatePicker *)self->_timePicker _setSelectionBarIgnoresInset:1];
  v7 = objc_alloc_init(NSDateComponents);
  editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
  [v7 setHour:{objc_msgSend(editedAlarm, "hour")}];

  editedAlarm2 = [(MTAAlarmEditViewController *)self editedAlarm];
  [v7 setMinute:{objc_msgSend(editedAlarm2, "minute")}];

  v10 = self->_timePicker;
  calendar = [(UIDatePicker *)v10 calendar];
  v12 = [calendar dateFromComponents:v7];
  [(UIDatePicker *)v10 setDate:v12];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_editingAlarmSetting = -1;
  tableView = [(MTAAlarmEditViewController *)self tableView];
  [tableView reloadData];

  tableView2 = [(MTAAlarmEditViewController *)self tableView];
  tableView3 = [(MTAAlarmEditViewController *)self tableView];
  indexPathForSelectedRow = [tableView3 indexPathForSelectedRow];
  [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  view = [(MTAAlarmEditViewController *)self view];
  [view endEditing:0];

  v10.receiver = self;
  v10.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v10 viewWillAppear:appearCopy];
}

- (void)viewDidUnload
{
  [(MTAAlarmEditViewController *)self setTableView:0];
  v3.receiver = self;
  v3.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v3 viewDidUnload];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  view = [(MTAAlarmEditViewController *)self view];
  [view endEditing:1];

  v6.receiver = self;
  v6.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (MTUIIsPadIdiom())
  {
    return 2;
  }

  if ([(MTAAlarmEditViewController *)self isNewAlarm])
  {
    return 2;
  }

  return 3;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (_os_feature_enabled_impl())
  {
    if (section == 1)
    {
      editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
      if ([editedAlarm allowsSnooze])
      {
        v7 = 5;
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      return 1;
    }
  }

  else if (section == 1)
  {
    return 4;
  }

  else
  {
    return 1;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  section = [pathCopy section];
  if (section == 2)
  {
    v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"MTDTVC"];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"EDIT_DELETE" value:&stru_1000AEF10 table:0];
    textLabel = [(MTALabelEditCell *)v11 textLabel];
    [textLabel setText:v13];

    textLabel2 = [(MTALabelEditCell *)v11 textLabel];
    [textLabel2 setTextAlignment:1];

    v16 = +[UIColor systemRedColor];
    textLabel3 = [(MTALabelEditCell *)v11 textLabel];
    [textLabel3 setTextColor:v16];

    v18 = +[UIColor mtui_foregroundColor];
    [(MTALabelEditCell *)v11 setBackgroundColor:v18];

    editedAlarm6 = +[UIColor mtui_cellHighlightColor];
    [(MTALabelEditCell *)v11 setSelectedBackgroundColor:editedAlarm6];
    goto LABEL_9;
  }

  if (section == 1)
  {
    if ([pathCopy row] == 2)
    {
      v10 = [(MTAAlarmEditViewController *)self tonePickerCellForTableView:viewCopy];
      goto LABEL_7;
    }

    if (v8 == 1)
    {
      v20 = [viewCopy dequeueReusableCellWithIdentifier:off_1000D1190];
      if (!v20)
      {
        v38 = [MTALabelEditCell alloc];
        editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
        displayTitle = [editedAlarm displayTitle];
        editedAlarm2 = [(MTAAlarmEditViewController *)self editedAlarm];
        title = [editedAlarm2 title];
        v11 = -[MTALabelEditCell initWithDelegate:currentTitle:isEmpty:](v38, "initWithDelegate:currentTitle:isEmpty:", self, displayTitle, [title length] == 0);

        goto LABEL_28;
      }
    }

    else
    {
      if (v8 == 4)
      {
        objc_opt_class();
        v29 = +[_TtC11MobileTimer21MTASnoozeDurationCell reuseIdentifier];
        v30 = [viewCopy dequeueReusableCellWithIdentifier:v29];
        objc_opt_isKindOfClass();

        v31 = [_TtC11MobileTimer21MTASnoozeDurationCell alloc];
        snoozeDurationViewModel = [(MTAAlarmEditViewController *)self snoozeDurationViewModel];
        v11 = [(MTASnoozeDurationCell *)v31 initWithViewModel:snoozeDurationViewModel in:viewCopy];

        editedAlarm3 = [(MTAAlarmEditViewController *)self editedAlarm];
        isFiring = [editedAlarm3 isFiring];
        if (isFiring)
        {
          v35 = 0;
        }

        else
        {
          editedAlarm4 = [(MTAAlarmEditViewController *)self editedAlarm];
          v35 = [editedAlarm4 isSnoozed] ^ 1;
        }

        snoozeDurationViewModel2 = [(MTAAlarmEditViewController *)self snoozeDurationViewModel];
        [snoozeDurationViewModel2 setIsEnabled:v35];

        if ((isFiring & 1) == 0)
        {
        }

        [(MTALabelEditCell *)v11 configure];
        goto LABEL_29;
      }

      if (v8 != 3)
      {
        v11 = [viewCopy dequeueReusableCellWithIdentifier:@"UITVC"];
        if (!v11)
        {
          v11 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"UITVC"];
        }

        detailTextLabel = [(MTALabelEditCell *)v11 detailTextLabel];
        [detailTextLabel setAdjustsFontSizeToFitWidth:0];

        [(MTALabelEditCell *)v11 setAccessoryType:1];
        goto LABEL_29;
      }

      v20 = [viewCopy dequeueReusableCellWithIdentifier:off_1000D1B18];
      if (!v20)
      {
        v21 = [UITableViewCell alloc];
        v11 = [v21 initWithStyle:1 reuseIdentifier:off_1000D1B18];
        v22 = +[NSBundle mainBundle];
        v23 = [v22 localizedStringForKey:@"EDIT_SNOOZE" value:&stru_1000AEF10 table:0];
        textLabel4 = [(MTALabelEditCell *)v11 textLabel];
        [textLabel4 setText:v23];

        detailTextLabel2 = [(MTALabelEditCell *)v11 detailTextLabel];
        [detailTextLabel2 setText:0];

        editedAlarm = objc_alloc_init(UISwitch);
        [editedAlarm setOnTintColor:0];
        v27 = +[UIColor mtui_switchTintColor];
        [editedAlarm setTintColor:v27];

        editedAlarm5 = [(MTAAlarmEditViewController *)self editedAlarm];
        [editedAlarm setOn:objc_msgSend(editedAlarm5 animated:{"allowsSnooze"), 0}];

        [editedAlarm addTarget:self action:"_snoozeControlChanged:" forControlEvents:4096];
        [(MTALabelEditCell *)v11 setAccessoryView:editedAlarm];
LABEL_28:

        goto LABEL_29;
      }
    }

    v11 = v20;
LABEL_29:
    v42 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    textLabel5 = [(MTALabelEditCell *)v11 textLabel];
    [textLabel5 setFont:v42];

    v44 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    detailTextLabel3 = [(MTALabelEditCell *)v11 detailTextLabel];
    [detailTextLabel3 setFont:v44];

    textLabel6 = [(MTALabelEditCell *)v11 textLabel];
    [textLabel6 setAdjustsFontForContentSizeCategory:1];

    detailTextLabel4 = [(MTALabelEditCell *)v11 detailTextLabel];
    [detailTextLabel4 setAdjustsFontForContentSizeCategory:1];

    [(MTALabelEditCell *)v11 setSelectionStyle:(v8 - 5) < 0xFFFFFFFFFFFFFFFELL];
    v48 = +[UIColor mtui_foregroundColor];
    [(MTALabelEditCell *)v11 setBackgroundColor:v48];

    v49 = +[UIColor mtui_primaryTextColor];
    textLabel7 = [(MTALabelEditCell *)v11 textLabel];
    [textLabel7 setTextColor:v49];

    v51 = +[UIColor mtui_cellHighlightColor];
    [(MTALabelEditCell *)v11 setSelectedBackgroundColor:v51];

    if (v8)
    {
      goto LABEL_30;
    }

    v53 = +[NSBundle mainBundle];
    v54 = [v53 localizedStringForKey:@"EDIT_REPEAT" value:&stru_1000AEF10 table:0];
    textLabel8 = [(MTALabelEditCell *)v11 textLabel];
    [textLabel8 setText:v54];

    detailTextLabel5 = [(MTALabelEditCell *)v11 detailTextLabel];
    [detailTextLabel5 setAdjustsFontSizeToFitWidth:1];

    detailTextLabel6 = [(MTALabelEditCell *)v11 detailTextLabel];
    [detailTextLabel6 setMinimumScaleFactor:0.705882353];

    editedAlarm6 = [(MTAAlarmEditViewController *)self editedAlarm];
    [editedAlarm6 repeatSchedule];
    v58 = DateMaskToString();
    detailTextLabel7 = [(MTALabelEditCell *)v11 detailTextLabel];
    [detailTextLabel7 setText:v58];

LABEL_9:
    goto LABEL_30;
  }

  if (!section)
  {
    v10 = [(MTAAlarmEditViewController *)self timePickerCellForTableView:viewCopy];
LABEL_7:
    v11 = v10;
    goto LABEL_30;
  }

  v11 = 0;
LABEL_30:

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  if ([pathCopy section] == 1)
  {
    if ((v7 - 3) >= 2 && v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v7 == 1)
      {
        v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
        [v8 activate];
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      }

      else
      {
        [(MTAAlarmEditViewController *)self startEditingSetting:v7];
      }
    }
  }

  else if ([pathCopy section] == 2)
  {
    delegate = [(MTAAlarmEditViewController *)self delegate];
    originalAlarm = [(MTAAlarmEditViewController *)self originalAlarm];
    [delegate alarmEditController:self didDeleteAlarm:originalAlarm];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  if ([path section])
  {
    [viewCopy rowHeight];
  }

  else
  {
    v9.size.width = 320.0;
    v9.size.height = 216.0;
    v9.origin.x = 0.0;
    v9.origin.y = 0.0;
    Height = CGRectGetHeight(v9);
  }

  v7 = Height;

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (section < 2)
  {
    return 2.22507386e-308;
  }

  [view sectionHeaderHeight];
  return result;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  if (!section)
  {
    return 2.22507386e-308;
  }

  [view sectionFooterHeight];
  return result;
}

- (void)alarmEditSettingController:(id)controller didEditAlarm:(id)alarm
{
  v5 = [alarm mutableCopy];
  [(MTAAlarmEditViewController *)self setEditedAlarm:v5];

  tableView = [(MTAAlarmEditViewController *)self tableView];
  [tableView reloadData];
}

- (id)tonePickerCellForTableView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  v5 = [viewCopy dequeueReusableCellWithIdentifier:@"tonePicker"];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v5 = [[MTATonePickerCell alloc] initWithStyle:1 reuseIdentifier:@"tonePicker"];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"EDIT_SOUND" value:&stru_1000AEF10 table:0];
  [(MTATonePickerCell *)v5 setTitle:v9];

  v10 = +[UIColor mtui_primaryColor];
  textLabel = [(MTATonePickerCell *)v5 textLabel];
  [textLabel setTextColor:v10];

  editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
  [(MTATonePickerCell *)v5 setAlarm:editedAlarm];

  v13 = +[UIColor mtui_foregroundColor];
  [(MTATonePickerCell *)v5 setBackgroundColor:v13];

  return v5;
}

- (id)timePickerCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"timePicker"];
  if (!v4)
  {
    v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"timePicker"];
    [v4 setClipsToBounds:1];
    [v4 setSelectionStyle:0];
    contentView = [v4 contentView];
    [contentView addSubview:self->_timePicker];

    v6 = +[UIColor clearColor];
    [v4 setBackgroundColor:v6];

    v7 = objc_opt_new();
    leadingAnchor = [(UIDatePicker *)self->_timePicker leadingAnchor];
    contentView2 = [v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v7 addObject:v11];

    centerYAnchor = [(UIDatePicker *)self->_timePicker centerYAnchor];
    contentView3 = [v4 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v7 addObject:v15];

    trailingAnchor = [(UIDatePicker *)self->_timePicker trailingAnchor];
    contentView4 = [v4 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v7 addObject:v19];

    [NSLayoutConstraint activateConstraints:v7];
  }

  return v4;
}

- (void)didUpdateWithLabel:(id)label sender:(id)sender
{
  labelCopy = label;
  editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
  [editedAlarm setTitle:labelCopy];
}

- (id)defaultEditLabel
{
  editedAlarm = [(MTAAlarmEditViewController *)self editedAlarm];
  displayTitle = [editedAlarm displayTitle];

  return displayTitle;
}

- (MTAAlarmEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end