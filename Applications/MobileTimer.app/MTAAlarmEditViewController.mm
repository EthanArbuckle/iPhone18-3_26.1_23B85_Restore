@interface MTAAlarmEditViewController
+ (CGSize)desiredContentSize;
- (BOOL)isEdited;
- (BOOL)isNewAlarm;
- (MTAAlarmEditViewController)initWithAlarm:(id)a3 isNewAlarm:(BOOL)a4;
- (MTAAlarmEditViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)defaultEditLabel;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)timePickerCellForTableView:(id)a3;
- (id)tonePickerCellForTableView:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelButtonClicked:(id)a3;
- (void)_doneButtonClicked:(id)a3;
- (void)_snoozeControlChanged:(id)a3;
- (void)alarmEditSettingController:(id)a3 didEditAlarm:(id)a4;
- (void)contentSizeCategoryDidChange;
- (void)didUpdateWithLabel:(id)a3 sender:(id)a4;
- (void)reloadDataForAlarm:(id)a3;
- (void)saveAlarmOnlyIfEdited:(BOOL)a3 saveNew:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)startEditingSetting:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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

- (MTAAlarmEditViewController)initWithAlarm:(id)a3 isNewAlarm:(BOOL)a4
{
  v5 = a4;
  v8 = a3;
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

  objc_storeStrong(&v10->_originalAlarm, a3);
  if (v8)
  {
    if (!v5)
    {
      v13 = [v8 mutableCopy];
      v14 = @"ALARM_EDIT";
      goto LABEL_11;
    }

    originalAlarm = v11->_originalAlarm;
    v11->_originalAlarm = 0;

    v13 = [v8 mutableCopy];
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
  v19 = [(MTAAlarmEditViewController *)v11 navigationItem];
  [v19 setLeftBarButtonItem:v18];

  v20 = [(MTAAlarmEditViewController *)v11 navigationItem];
  v21 = [v20 leftBarButtonItem];
  [v21 setAccessibilityIdentifier:@"Cancel"];

  v22 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v11 action:"_doneButtonClicked:"];
  v23 = [(MTAAlarmEditViewController *)v11 navigationItem];
  [v23 setRightBarButtonItem:v22];

  v24 = [(MTAAlarmEditViewController *)v11 navigationItem];
  v25 = [v24 rightBarButtonItem];
  [v25 setAccessibilityIdentifier:@"Save"];

  v26 = +[UIColor mtui_tintColor];
  v27 = [(MTAAlarmEditViewController *)v11 navigationItem];
  v28 = [v27 rightBarButtonItem];
  [v28 setTintColor:v26];

  v29 = [(MTAAlarmEditViewController *)v11 navigationItem];
  v30 = [v29 rightBarButtonItem];
  [v30 setStyle:2];

  v31 = [_TtC11MobileTimer23SnoozeDurationViewModel alloc];
  v32 = [(MTAAlarmEditViewController *)v11 editedAlarm];
  v33 = [v32 snoozeDuration];
  v34 = [(MTAAlarmEditViewController *)v11 editedAlarm];
  v35 = [v34 isFiring];
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v4 = [(MTAAlarmEditViewController *)v11 editedAlarm];
    v36 = [v4 isSnoozed] ^ 1;
  }

  v37 = [(SnoozeDurationViewModel *)v31 initWithSelectedDuration:v33 maxDuration:15 minDuration:1 isEnabled:v36 isPickerShown:0];
  snoozeDurationViewModel = v11->_snoozeDurationViewModel;
  v11->_snoozeDurationViewModel = v37;

  if ((v35 & 1) == 0)
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v9 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [(MTAAlarmEditViewController *)self traitCollection];
  if ([v7 horizontalSizeClass] == 1 && objc_msgSend(v6, "horizontalSizeClass") == 2)
  {
    v8 = [v6 verticalSizeClass];

    if (v8 == 2)
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
  v2 = [(MTAAlarmEditViewController *)self originalAlarm];
  v3 = v2 == 0;

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
    v4 = [(MTAAlarmEditViewController *)self originalAlarm];
    v5 = [(MTAAlarmEditViewController *)self editedAlarm];
    v3 = [v4 isEqual:v5] ^ 1;
  }

  return v3;
}

- (void)saveAlarmOnlyIfEdited:(BOOL)a3 saveNew:(BOOL)a4
{
  v4 = a3;
  if ([(MTAAlarmEditViewController *)self isEdited]&& a4 || !v4)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MTMutableAlarm *)self->_editedAlarm alarmID];
      v25 = 138543618;
      v26 = self;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ saving edited alarm: %{public}@", &v25, 0x16u);
    }

    v8 = [(UIDatePicker *)self->_timePicker calendar];
    v9 = [(UIDatePicker *)self->_timePicker _dateUnderSelectionBar];
    v10 = [v8 components:96 fromDate:v9];

    v11 = [v10 hour];
    v12 = [(MTAAlarmEditViewController *)self editedAlarm];
    [v12 setHour:v11];

    v13 = [v10 minute];
    v14 = [(MTAAlarmEditViewController *)self editedAlarm];
    [v14 setMinute:v13];

    if ([(MTAAlarmEditViewController *)self isEdited])
    {
      v15 = [(MTAAlarmEditViewController *)self editedAlarm];
      [v15 setEnabled:1];
    }

    v16 = MTLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(MTAAlarmEditViewController *)self snoozeDurationViewModel];
      v18 = [v17 selectedDuration];
      v19 = [(MTMutableAlarm *)self->_editedAlarm alarmID];
      v25 = 138543874;
      v26 = self;
      v27 = 2050;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ snooze duration changed to: %{public}lu  for alarm: %{public}@", &v25, 0x20u);
    }

    v20 = [(MTAAlarmEditViewController *)self snoozeDurationViewModel];
    v21 = [v20 selectedDuration];
    v22 = [(MTAAlarmEditViewController *)self editedAlarm];
    [v22 setSnoozeDuration:v21];

    LODWORD(v22) = [(MTAAlarmEditViewController *)self isNewAlarm];
    v23 = [(MTAAlarmEditViewController *)self delegate];
    v24 = [(MTAAlarmEditViewController *)self editedAlarm];
    if (v22)
    {
      [v23 alarmEditController:self didAddAlarm:v24];
    }

    else
    {
      [v23 alarmEditController:self didEditAlarm:v24];
    }
  }
}

- (void)_cancelButtonClicked:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MTMutableAlarm *)self->_editedAlarm alarmID];
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel button clicked for alarm: %{public}@", &v7, 0x16u);
  }

  v6 = [(MTAAlarmEditViewController *)self delegate];
  [v6 alarmEditControllerDidCancel:self];
}

- (void)_doneButtonClicked:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MTMutableAlarm *)self->_editedAlarm alarmID];
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ done button clicked for alarm: %{public}@", &v6, 0x16u);
  }

  [(MTAAlarmEditViewController *)self saveAlarmOnlyIfEdited:0];
}

- (void)_snoozeControlChanged:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 isOn];
    v7 = [(MTMutableAlarm *)self->_editedAlarm alarmID];
    v11 = 138543874;
    v12 = self;
    v13 = 1026;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ snooze control changed to: %{public}i  for alarm: %{public}@", &v11, 0x1Cu);
  }

  v8 = [v4 isOn];
  v9 = [(MTAAlarmEditViewController *)self editedAlarm];
  [v9 setAllowsSnooze:v8];

  v10 = [(MTAAlarmEditViewController *)self tableView];
  [v10 reloadData];
}

- (void)startEditingSetting:(int64_t)a3
{
  [(UIDatePicker *)self->_timePicker resignFirstResponder];
  self->_editingAlarmSetting = a3;
  v5 = [MTAAlarmEditSettingViewController alloc];
  v6 = [(MTAAlarmEditViewController *)self editedAlarm];
  v8 = [(MTAAlarmEditSettingViewController *)v5 initWithAlarm:v6 setting:a3 delegate:self];

  [(MTAAlarmEditViewController *)self preferredContentSize];
  [(MTAAlarmEditSettingViewController *)v8 setPreferredContentSize:?];
  v7 = [(MTAAlarmEditViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v8 = [(MTAAlarmEditViewController *)self tableView];
  [v8 contentOffset];
  v4 = v3;
  v6 = v5;
  v7 = [(MTAAlarmEditViewController *)self tableView];
  [v7 reloadData];

  [v8 setContentOffset:0 animated:{v4, v6}];
}

- (void)reloadDataForAlarm:(id)a3
{
  v4 = [a3 mutableCopy];
  editedAlarm = self->_editedAlarm;
  self->_editedAlarm = v4;

  v8 = [NSIndexPath indexPathForRow:4 inSection:1];
  v6 = [NSArray arrayWithObjects:v8, 0];
  v7 = [(MTAAlarmEditViewController *)self tableView];
  [v7 reloadRowsAtIndexPaths:v6 withRowAnimation:100];
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
  v3 = [(MTAAlarmEditViewController *)self tableView];
  [v3 setAlwaysBounceVertical:0];
  [v3 setRowHeight:UITableViewAutomaticDimension];
  [v3 setEstimatedRowHeight:UITableViewDefaultRowHeight];
  [v3 setKeyboardDismissMode:2];
  v4 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v3 setTableHeaderView:v4];

  [v3 setAutoresizingMask:18];
  v5 = [[UIDatePicker alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  timePicker = self->_timePicker;
  self->_timePicker = v5;

  [(UIDatePicker *)self->_timePicker setAutoresizingMask:2];
  [(UIDatePicker *)self->_timePicker setPreferredDatePickerStyle:1];
  [(UIDatePicker *)self->_timePicker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIDatePicker *)self->_timePicker setDatePickerMode:0];
  [(UIDatePicker *)self->_timePicker _setSelectionBarIgnoresInset:1];
  v7 = objc_alloc_init(NSDateComponents);
  v8 = [(MTAAlarmEditViewController *)self editedAlarm];
  [v7 setHour:{objc_msgSend(v8, "hour")}];

  v9 = [(MTAAlarmEditViewController *)self editedAlarm];
  [v7 setMinute:{objc_msgSend(v9, "minute")}];

  v10 = self->_timePicker;
  v11 = [(UIDatePicker *)v10 calendar];
  v12 = [v11 dateFromComponents:v7];
  [(UIDatePicker *)v10 setDate:v12];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  self->_editingAlarmSetting = -1;
  v5 = [(MTAAlarmEditViewController *)self tableView];
  [v5 reloadData];

  v6 = [(MTAAlarmEditViewController *)self tableView];
  v7 = [(MTAAlarmEditViewController *)self tableView];
  v8 = [v7 indexPathForSelectedRow];
  [v6 deselectRowAtIndexPath:v8 animated:1];

  v9 = [(MTAAlarmEditViewController *)self view];
  [v9 endEditing:0];

  v10.receiver = self;
  v10.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v10 viewWillAppear:v3];
}

- (void)viewDidUnload
{
  [(MTAAlarmEditViewController *)self setTableView:0];
  v3.receiver = self;
  v3.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v3 viewDidUnload];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTAAlarmEditViewController *)self view];
  [v5 endEditing:1];

  v6.receiver = self;
  v6.super_class = MTAAlarmEditViewController;
  [(MTAAlarmEditViewController *)&v6 viewWillDisappear:v3];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (_os_feature_enabled_impl())
  {
    if (a4 == 1)
    {
      v6 = [(MTAAlarmEditViewController *)self editedAlarm];
      if ([v6 allowsSnooze])
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

  else if (a4 == 1)
  {
    return 4;
  }

  else
  {
    return 1;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [v7 section];
  if (v9 == 2)
  {
    v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"MTDTVC"];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"EDIT_DELETE" value:&stru_1000AEF10 table:0];
    v14 = [(MTALabelEditCell *)v11 textLabel];
    [v14 setText:v13];

    v15 = [(MTALabelEditCell *)v11 textLabel];
    [v15 setTextAlignment:1];

    v16 = +[UIColor systemRedColor];
    v17 = [(MTALabelEditCell *)v11 textLabel];
    [v17 setTextColor:v16];

    v18 = +[UIColor mtui_foregroundColor];
    [(MTALabelEditCell *)v11 setBackgroundColor:v18];

    v19 = +[UIColor mtui_cellHighlightColor];
    [(MTALabelEditCell *)v11 setSelectedBackgroundColor:v19];
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    if ([v7 row] == 2)
    {
      v10 = [(MTAAlarmEditViewController *)self tonePickerCellForTableView:v6];
      goto LABEL_7;
    }

    if (v8 == 1)
    {
      v20 = [v6 dequeueReusableCellWithIdentifier:off_1000D1190];
      if (!v20)
      {
        v38 = [MTALabelEditCell alloc];
        v26 = [(MTAAlarmEditViewController *)self editedAlarm];
        v39 = [v26 displayTitle];
        v40 = [(MTAAlarmEditViewController *)self editedAlarm];
        v41 = [v40 title];
        v11 = -[MTALabelEditCell initWithDelegate:currentTitle:isEmpty:](v38, "initWithDelegate:currentTitle:isEmpty:", self, v39, [v41 length] == 0);

        goto LABEL_28;
      }
    }

    else
    {
      if (v8 == 4)
      {
        objc_opt_class();
        v29 = +[_TtC11MobileTimer21MTASnoozeDurationCell reuseIdentifier];
        v30 = [v6 dequeueReusableCellWithIdentifier:v29];
        objc_opt_isKindOfClass();

        v31 = [_TtC11MobileTimer21MTASnoozeDurationCell alloc];
        v32 = [(MTAAlarmEditViewController *)self snoozeDurationViewModel];
        v11 = [(MTASnoozeDurationCell *)v31 initWithViewModel:v32 in:v6];

        v33 = [(MTAAlarmEditViewController *)self editedAlarm];
        v34 = [v33 isFiring];
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v60 = [(MTAAlarmEditViewController *)self editedAlarm];
          v35 = [v60 isSnoozed] ^ 1;
        }

        v37 = [(MTAAlarmEditViewController *)self snoozeDurationViewModel];
        [v37 setIsEnabled:v35];

        if ((v34 & 1) == 0)
        {
        }

        [(MTALabelEditCell *)v11 configure];
        goto LABEL_29;
      }

      if (v8 != 3)
      {
        v11 = [v6 dequeueReusableCellWithIdentifier:@"UITVC"];
        if (!v11)
        {
          v11 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"UITVC"];
        }

        v36 = [(MTALabelEditCell *)v11 detailTextLabel];
        [v36 setAdjustsFontSizeToFitWidth:0];

        [(MTALabelEditCell *)v11 setAccessoryType:1];
        goto LABEL_29;
      }

      v20 = [v6 dequeueReusableCellWithIdentifier:off_1000D1B18];
      if (!v20)
      {
        v21 = [UITableViewCell alloc];
        v11 = [v21 initWithStyle:1 reuseIdentifier:off_1000D1B18];
        v22 = +[NSBundle mainBundle];
        v23 = [v22 localizedStringForKey:@"EDIT_SNOOZE" value:&stru_1000AEF10 table:0];
        v24 = [(MTALabelEditCell *)v11 textLabel];
        [v24 setText:v23];

        v25 = [(MTALabelEditCell *)v11 detailTextLabel];
        [v25 setText:0];

        v26 = objc_alloc_init(UISwitch);
        [v26 setOnTintColor:0];
        v27 = +[UIColor mtui_switchTintColor];
        [v26 setTintColor:v27];

        v28 = [(MTAAlarmEditViewController *)self editedAlarm];
        [v26 setOn:objc_msgSend(v28 animated:{"allowsSnooze"), 0}];

        [v26 addTarget:self action:"_snoozeControlChanged:" forControlEvents:4096];
        [(MTALabelEditCell *)v11 setAccessoryView:v26];
LABEL_28:

        goto LABEL_29;
      }
    }

    v11 = v20;
LABEL_29:
    v42 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v43 = [(MTALabelEditCell *)v11 textLabel];
    [v43 setFont:v42];

    v44 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v45 = [(MTALabelEditCell *)v11 detailTextLabel];
    [v45 setFont:v44];

    v46 = [(MTALabelEditCell *)v11 textLabel];
    [v46 setAdjustsFontForContentSizeCategory:1];

    v47 = [(MTALabelEditCell *)v11 detailTextLabel];
    [v47 setAdjustsFontForContentSizeCategory:1];

    [(MTALabelEditCell *)v11 setSelectionStyle:(v8 - 5) < 0xFFFFFFFFFFFFFFFELL];
    v48 = +[UIColor mtui_foregroundColor];
    [(MTALabelEditCell *)v11 setBackgroundColor:v48];

    v49 = +[UIColor mtui_primaryTextColor];
    v50 = [(MTALabelEditCell *)v11 textLabel];
    [v50 setTextColor:v49];

    v51 = +[UIColor mtui_cellHighlightColor];
    [(MTALabelEditCell *)v11 setSelectedBackgroundColor:v51];

    if (v8)
    {
      goto LABEL_30;
    }

    v53 = +[NSBundle mainBundle];
    v54 = [v53 localizedStringForKey:@"EDIT_REPEAT" value:&stru_1000AEF10 table:0];
    v55 = [(MTALabelEditCell *)v11 textLabel];
    [v55 setText:v54];

    v56 = [(MTALabelEditCell *)v11 detailTextLabel];
    [v56 setAdjustsFontSizeToFitWidth:1];

    v57 = [(MTALabelEditCell *)v11 detailTextLabel];
    [v57 setMinimumScaleFactor:0.705882353];

    v19 = [(MTAAlarmEditViewController *)self editedAlarm];
    [v19 repeatSchedule];
    v58 = DateMaskToString();
    v59 = [(MTALabelEditCell *)v11 detailTextLabel];
    [v59 setText:v58];

LABEL_9:
    goto LABEL_30;
  }

  if (!v9)
  {
    v10 = [(MTAAlarmEditViewController *)self timePickerCellForTableView:v6];
LABEL_7:
    v11 = v10;
    goto LABEL_30;
  }

  v11 = 0;
LABEL_30:

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 row];
  if ([v6 section] == 1)
  {
    if ((v7 - 3) >= 2 && v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v7 == 1)
      {
        v8 = [v11 cellForRowAtIndexPath:v6];
        [v8 activate];
        [v11 deselectRowAtIndexPath:v6 animated:1];
      }

      else
      {
        [(MTAAlarmEditViewController *)self startEditingSetting:v7];
      }
    }
  }

  else if ([v6 section] == 2)
  {
    v9 = [(MTAAlarmEditViewController *)self delegate];
    v10 = [(MTAAlarmEditViewController *)self originalAlarm];
    [v9 alarmEditController:self didDeleteAlarm:v10];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a3;
  if ([a4 section])
  {
    [v5 rowHeight];
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (a4 < 2)
  {
    return 2.22507386e-308;
  }

  [a3 sectionHeaderHeight];
  return result;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  if (!a4)
  {
    return 2.22507386e-308;
  }

  [a3 sectionFooterHeight];
  return result;
}

- (void)alarmEditSettingController:(id)a3 didEditAlarm:(id)a4
{
  v5 = [a4 mutableCopy];
  [(MTAAlarmEditViewController *)self setEditedAlarm:v5];

  v6 = [(MTAAlarmEditViewController *)self tableView];
  [v6 reloadData];
}

- (id)tonePickerCellForTableView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 dequeueReusableCellWithIdentifier:@"tonePicker"];

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
  v11 = [(MTATonePickerCell *)v5 textLabel];
  [v11 setTextColor:v10];

  v12 = [(MTAAlarmEditViewController *)self editedAlarm];
  [(MTATonePickerCell *)v5 setAlarm:v12];

  v13 = +[UIColor mtui_foregroundColor];
  [(MTATonePickerCell *)v5 setBackgroundColor:v13];

  return v5;
}

- (id)timePickerCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"timePicker"];
  if (!v4)
  {
    v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"timePicker"];
    [v4 setClipsToBounds:1];
    [v4 setSelectionStyle:0];
    v5 = [v4 contentView];
    [v5 addSubview:self->_timePicker];

    v6 = +[UIColor clearColor];
    [v4 setBackgroundColor:v6];

    v7 = objc_opt_new();
    v8 = [(UIDatePicker *)self->_timePicker leadingAnchor];
    v9 = [v4 contentView];
    v10 = [v9 leadingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    [v7 addObject:v11];

    v12 = [(UIDatePicker *)self->_timePicker centerYAnchor];
    v13 = [v4 contentView];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v7 addObject:v15];

    v16 = [(UIDatePicker *)self->_timePicker trailingAnchor];
    v17 = [v4 contentView];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v7 addObject:v19];

    [NSLayoutConstraint activateConstraints:v7];
  }

  return v4;
}

- (void)didUpdateWithLabel:(id)a3 sender:(id)a4
{
  v5 = a3;
  v6 = [(MTAAlarmEditViewController *)self editedAlarm];
  [v6 setTitle:v5];
}

- (id)defaultEditLabel
{
  v2 = [(MTAAlarmEditViewController *)self editedAlarm];
  v3 = [v2 displayTitle];

  return v3;
}

- (MTAAlarmEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end