@interface MTAAlarmEditSettingViewController
- (MTAAlarmEditSettingViewController)initWithAlarm:(id)alarm setting:(int64_t)setting delegate:(id)delegate;
- (MTAAlarmEditSettingViewController)initWithSetting:(int64_t)setting editController:(id)controller;
- (MTAlarmEditSettingViewControllerDelegate)delegate;
- (double)rowHeightWithCurrentAccessibilityConfiguration;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_commonInitialization;
- (void)_dismiss;
- (void)addDefaultSongsIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textValueChanged:(id)changed;
- (void)tonePickerViewController:(id)controller selectedMediaItemWithIdentifier:(id)identifier;
- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier;
- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController;
- (void)updateTableViewRowHeight;
- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTAAlarmEditSettingViewController

- (MTAAlarmEditSettingViewController)initWithSetting:(int64_t)setting editController:(id)controller
{
  v9.receiver = self;
  v9.super_class = MTAAlarmEditSettingViewController;
  v5 = [(MTAAlarmEditSettingViewController *)&v9 init:setting];
  v6 = v5;
  if (v5)
  {
    v5->_setting = setting;
    [(MTAAlarmEditSettingViewController *)v5 _commonInitialization];
    v7 = v6;
  }

  return v6;
}

- (MTAAlarmEditSettingViewController)initWithAlarm:(id)alarm setting:(int64_t)setting delegate:(id)delegate
{
  alarmCopy = alarm;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = MTAAlarmEditSettingViewController;
  v10 = [(MTAAlarmEditSettingViewController *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_setting = setting;
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v12 = [alarmCopy mutableCopy];
    alarm = v11->_alarm;
    v11->_alarm = v12;

    [(MTAAlarmEditSettingViewController *)v11 _commonInitialization];
  }

  return v11;
}

- (void)_commonInitialization
{
  setting = self->_setting;
  if (setting == 2)
  {
    v5 = +[NSBundle mainBundle];
    v21 = [v5 localizedStringForKey:@"EDIT_SOUND" value:&stru_1000AEF10 table:0];

    v6 = MTShouldAllowToneStore();
    v7 = [[TKTonePickerViewController alloc] _initWithAlertType:13 tableViewStyle:2];
    tonePickerViewController = self->_tonePickerViewController;
    self->_tonePickerViewController = v7;

    v9 = +[TLToneManager sharedToneManager];
    v10 = [v9 defaultToneIdentifierForAlertType:13];
    [(TKTonePickerViewController *)self->_tonePickerViewController setDefaultToneIdentifier:v10];

    [(TKTonePickerViewController *)self->_tonePickerViewController setMediaAtTop:1];
    [(TKTonePickerViewController *)self->_tonePickerViewController setShowsNone:1];
    [(TKTonePickerViewController *)self->_tonePickerViewController setShowsMedia:v6];
    [(TKTonePickerViewController *)self->_tonePickerViewController setShowsToneStore:v6];
    [(TKTonePickerViewController *)self->_tonePickerViewController setShowsVibrations:1];
    v11 = objc_opt_new();
    [(TKTonePickerViewController *)self->_tonePickerViewController setStyleProvider:v11];

    v12 = +[UIColor mtui_backgroundColor];
    tableView = [(TKTonePickerViewController *)self->_tonePickerViewController tableView];
    [tableView setBackgroundColor:v12];

    [(MTAAlarmEditSettingViewController *)self addDefaultSongsIfNeeded];
    alarm = [(MTAAlarmEditSettingViewController *)self alarm];
    sound = [alarm sound];

    soundType = [sound soundType];
    if (soundType == 3)
    {
      v17 = [MPMediaItem alloc];
      mediaItemIdentifier = [sound mediaItemIdentifier];
      toneIdentifier = [v17 initWithPersistentID:{objc_msgSend(mediaItemIdentifier, "longLongValue")}];

      if (toneIdentifier)
      {
        v19 = [toneIdentifier valueForProperty:MPMediaItemPropertyPersistentID];
        [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedMediaIdentifier:v19];
      }
    }

    else
    {
      if (soundType != 2)
      {
LABEL_11:
        vibrationIdentifier = [sound vibrationIdentifier];
        [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedVibrationIdentifier:vibrationIdentifier];

        [(TKTonePickerViewController *)self->_tonePickerViewController setDelegate:self];
        [(MTAAlarmEditSettingViewController *)self addChildViewController:self->_tonePickerViewController];
        [(TKTonePickerViewController *)self->_tonePickerViewController didMoveToParentViewController:self];
        goto LABEL_12;
      }

      toneIdentifier = [sound toneIdentifier];
      [(TKTonePickerViewController *)self->_tonePickerViewController setSelectedToneIdentifier:toneIdentifier];
    }

    goto LABEL_11;
  }

  if (setting)
  {
    v21 = 0;
    [(MTAAlarmEditSettingViewController *)self setTitle:0];
    goto LABEL_13;
  }

  sound = +[NSBundle mainBundle];
  v21 = [sound localizedStringForKey:@"EDIT_REPEAT" value:&stru_1000AEF10 table:0];
LABEL_12:

  [(MTAAlarmEditSettingViewController *)self setTitle:v21];
LABEL_13:
}

- (void)dealloc
{
  [(TKTonePickerViewController *)self->_tonePickerViewController willMoveToParentViewController:0];
  if ([(TKTonePickerViewController *)self->_tonePickerViewController isViewLoaded])
  {
    view = [(TKTonePickerViewController *)self->_tonePickerViewController view];
    [view removeFromSuperview];
  }

  [(TKTonePickerViewController *)self->_tonePickerViewController removeFromParentViewController];
  [(TKTonePickerViewController *)self->_tonePickerViewController setDelegate:0];
  v4.receiver = self;
  v4.super_class = MTAAlarmEditSettingViewController;
  [(MTAAlarmEditSettingViewController *)&v4 dealloc];
}

- (void)addDefaultSongsIfNeeded
{
  v3 = +[MPMediaQuery songsQuery];
  v15[0] = MPMediaItemPropertyPlayCount;
  v15[1] = MPMediaItemPropertyTitle;
  v4 = [NSArray arrayWithObjects:v15 count:2];
  [v3 _setOrderingProperties:v4];

  v13 = MPMediaItemPropertyPlayCount;
  v14 = &off_1000B1878;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v3 _setOrderingDirectionMappings:v5];

  [NSMutableArray arrayWithCapacity:2];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10001AF54;
  v6 = v11 = &unk_1000ADFC8;
  v12 = v6;
  [v3 _enumerateItemsUsingBlock:&v8];
  if ([v6 count])
  {
    [(TKTonePickerViewController *)self->_tonePickerViewController addMediaItems:v6];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"com.apple.mobiletimer.user-preferences-dirty" object:0 userInfo:0];
  }
}

- (void)loadView
{
  v10 = objc_alloc_init(UIView);
  [v10 setAutoresizingMask:18];
  if (self->_setting)
  {
    view = [(TKTonePickerViewController *)self->_tonePickerViewController view];
    [v10 bounds];
    [view setFrame:?];
    [view setAutoresizingMask:18];
    [v10 addSubview:view];
  }

  else
  {
    alarm = [(MTAAlarmEditSettingViewController *)self alarm];
    self->_repeatSchedule = [alarm repeatSchedule];

    LODWORD(alarm) = _os_feature_enabled_impl();
    v5 = [UITableView alloc];
    if (alarm)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [v5 initWithFrame:v6 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = self->_tableView;
    self->_tableView = v7;

    [(UITableView *)self->_tableView setEstimatedRowHeight:UITableViewDefaultRowHeight];
    [(UITableView *)self->_tableView setRowHeight:UITableViewAutomaticDimension];
    [(UITableView *)self->_tableView setAutoresizingMask:18];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    [v10 addSubview:self->_tableView];
  }

  [(MTAAlarmEditSettingViewController *)self setView:v10];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"updateTableViewRowHeight" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MTAAlarmEditSettingViewController;
  [(MTAAlarmEditSettingViewController *)&v6 viewWillAppear:appear];
  if (!self->_setting)
  {
    v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v5 = +[NSLocale currentLocale];
    [v4 setLocale:v5];

    self->_firstWeekday = [v4 firstWeekday];
  }
}

- (void)viewDidUnload
{
  tableView = self->_tableView;
  self->_tableView = 0;

  v4.receiver = self;
  v4.super_class = MTAAlarmEditSettingViewController;
  [(MTAAlarmEditSettingViewController *)&v4 viewDidUnload];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = MTAAlarmEditSettingViewController;
  [(MTAAlarmEditSettingViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  if ((MTUIIsPadIdiom() & 1) == 0)
  {
    textField = [(MTAAlarmEditableTextCell *)self->_editingCell textField];
    [textField becomeFirstResponder];
  }
}

- (double)rowHeightWithCurrentAccessibilityConfiguration
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 _scaledValueForValue:UITableViewDefaultRowHeight];
  v4 = v3;

  return v4;
}

- (void)_dismiss
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    alarm = [(MTAAlarmEditSettingViewController *)self alarm];
    alarmID = [alarm alarmID];
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = alarmID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing with alarm: %{public}@", &v8, 0x16u);
  }

  navigationController = [(MTAAlarmEditSettingViewController *)self navigationController];
  v7 = [navigationController popViewControllerAnimated:1];
}

- (void)updateTableViewRowHeight
{
  [(MTAAlarmEditSettingViewController *)self rowHeightWithCurrentAccessibilityConfiguration];
  [(UITableView *)self->_tableView setRowHeight:?];
  visibleCells = [(UITableView *)self->_tableView visibleCells];
  v4 = [visibleCells count];

  tableView = self->_tableView;
  if (v4)
  {
    visibleCells2 = [(UITableView *)self->_tableView visibleCells];
    firstObject = [visibleCells2 firstObject];
    v9 = [(UITableView *)tableView indexPathForCell:firstObject];

    [(UITableView *)self->_tableView reloadData];
    if (v9)
    {
      [(UITableView *)self->_tableView scrollToRowAtIndexPath:v9 atScrollPosition:1 animated:0];
    }
  }

  else
  {
    v8 = self->_tableView;

    [(UITableView *)v8 reloadData];
  }
}

- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = identifierCopy;
  if (identifierCopy)
  {
    defaultToneIdentifier = identifierCopy;
  }

  else
  {
    defaultToneIdentifier = [controller defaultToneIdentifier];
  }

  v8 = defaultToneIdentifier;
  alarm = [(MTAAlarmEditSettingViewController *)self alarm];
  sound = [alarm sound];

  vibrationIdentifier = [sound vibrationIdentifier];
  soundVolume = [sound soundVolume];
  v13 = [MTSound toneSoundWithIdentifier:v8 vibrationIdentifer:vibrationIdentifier volume:soundVolume];

  alarm2 = [(MTAAlarmEditSettingViewController *)self alarm];
  [alarm2 setSound:v13];

  delegate = [(MTAAlarmEditSettingViewController *)self delegate];
  alarm3 = [(MTAAlarmEditSettingViewController *)self alarm];
  [delegate alarmEditSettingController:self didEditAlarm:alarm3];

  [MTSound setDefaultSound:v13 forCategory:0];
}

- (void)tonePickerViewController:(id)controller selectedMediaItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  alarm = [(MTAAlarmEditSettingViewController *)self alarm];
  sound = [alarm sound];

  vibrationIdentifier = [sound vibrationIdentifier];
  soundVolume = [sound soundVolume];
  v9 = [MTSound songSoundWithIdentifier:identifierCopy vibrationIdentifier:vibrationIdentifier volume:soundVolume];

  alarm2 = [(MTAAlarmEditSettingViewController *)self alarm];
  [alarm2 setSound:v9];

  delegate = [(MTAAlarmEditSettingViewController *)self delegate];
  alarm3 = [(MTAAlarmEditSettingViewController *)self alarm];
  [delegate alarmEditSettingController:self didEditAlarm:alarm3];

  [MTSound setDefaultSound:v9 forCategory:0];
}

- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [viewControllerCopy setShowsEditButtonInNavigationBar:1];
  v8 = +[TLVibrationManager sharedVibrationManager];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  v11 = [v8 defaultVibrationIdentifierForAlertType:alertType topic:topic];
  [viewControllerCopy setDefaultVibrationIdentifier:v11];

  [viewControllerCopy setDelegate:self];
  v12 = objc_opt_new();
  [viewControllerCopy setStyleProvider:v12];
}

- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  alarm = [(MTAAlarmEditSettingViewController *)self alarm];
  sound = [alarm sound];
  v8 = [sound soundByUpdatingVibrationIdentifier:identifierCopy];

  alarm2 = [(MTAAlarmEditSettingViewController *)self alarm];
  [alarm2 setSound:v8];

  delegate = [(MTAAlarmEditSettingViewController *)self delegate];
  alarm3 = [(MTAAlarmEditSettingViewController *)self alarm];
  [delegate alarmEditSettingController:self didEditAlarm:alarm3];

  alarm4 = [(MTAAlarmEditSettingViewController *)self alarm];
  sound2 = [alarm4 sound];
  [MTSound setDefaultSound:sound2 forCategory:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (self->_setting)
  {
    return 1;
  }

  else
  {
    return 7;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  if (self->_setting)
  {
    v4 = 0;
  }

  else
  {
    viewCopy = view;
    v8 = -[MTAAlarmEditSettingViewController maskForRow:](self, "maskForRow:", [path row]);
    v4 = [viewCopy dequeueReusableCellWithIdentifier:@"UITVC"];

    if (!v4)
    {
      v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"UITVC"];
      v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      textLabel = [v4 textLabel];
      [textLabel setFont:v9];

      textLabel2 = [v4 textLabel];
      [textLabel2 setAdjustsFontForContentSizeCategory:1];
    }

    v12 = DateMaskToString();
    textLabel3 = [v4 textLabel];
    [textLabel3 setText:v12];

    alarm = [(MTAAlarmEditSettingViewController *)self alarm];
    if (([alarm repeatSchedule] & v8) != 0)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [v4 setAccessoryType:v15];
  }

  v16 = [UIColor mtui_foregroundColor:view];
  [v4 setBackgroundColor:v16];

  v17 = +[UIColor mtui_primaryTextColor];
  textLabel4 = [v4 textLabel];
  [textLabel4 setTextColor:v17];

  v19 = +[UIColor mtui_cellHighlightColor];
  [v4 setSelectedBackgroundColor:v19];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy && !self->_setting)
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if ([v7 accessoryType] == 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = 3;
    }

    [v7 setAccessoryType:v8];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    v9 = -[MTAAlarmEditSettingViewController maskForRow:](self, "maskForRow:", [pathCopy row]);
    if ([v7 accessoryType] == 3)
    {
      v10 = [(MTAAlarmEditSettingViewController *)self repeatSchedule]| v9;
    }

    else
    {
      v10 = [(MTAAlarmEditSettingViewController *)self repeatSchedule]& ~v9;
    }

    [(MTAAlarmEditSettingViewController *)self setRepeatSchedule:v10];
    repeatSchedule = [(MTAAlarmEditSettingViewController *)self repeatSchedule];
    alarm = [(MTAAlarmEditSettingViewController *)self alarm];
    [alarm setRepeatSchedule:repeatSchedule];

    delegate = [(MTAAlarmEditSettingViewController *)self delegate];
    alarm2 = [(MTAAlarmEditSettingViewController *)self alarm];
    [delegate alarmEditSettingController:self didEditAlarm:alarm2];
  }
}

- (void)textValueChanged:(id)changed
{
  object = [changed object];
  text = [object text];
  alarm = [(MTAAlarmEditSettingViewController *)self alarm];
  [alarm setTitle:text];

  delegate = [(MTAAlarmEditSettingViewController *)self delegate];
  alarm2 = [(MTAAlarmEditSettingViewController *)self alarm];
  [delegate alarmEditSettingController:self didEditAlarm:alarm2];
}

- (MTAlarmEditSettingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end