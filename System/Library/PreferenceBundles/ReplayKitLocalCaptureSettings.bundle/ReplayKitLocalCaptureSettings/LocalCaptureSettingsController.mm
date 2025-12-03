@interface LocalCaptureSettingsController
- (BOOL)getLocalCaptureAudioOnlyValue;
- (id)getCurrentSaveLocationName;
- (id)getPreferenceValue:(__CFString *)value;
- (id)getSwitchState:(__CFString *)state;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)audioOnlyToggleChanged:(id)changed;
- (void)dealloc;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)handleAudioOnlyPreferenceChanged;
- (void)setLocalCaptureAudioOnlyValue:(BOOL)value;
- (void)setPreferenceValue:(id)value forKey:(__CFString *)key;
- (void)setSwitchState:(__CFString *)state value:(id)value;
- (void)showDocumentPicker:(id)picker;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation LocalCaptureSettingsController

- (void)viewDidLoad
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[LocalCaptureSettingsController viewDidLoad]";
    v8 = 1024;
    v9 = 37;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = LocalCaptureSettingsController;
  [(LocalCaptureSettingsController *)&v5 viewDidLoad];
  v3 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_STATUSBAR_TAPPED_ALERT_TITLE"];
  [(LocalCaptureSettingsController *)self setTitle:v3];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1714, @"com.apple.replaykit.audioOnlyPreferenceChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)dealloc
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[LocalCaptureSettingsController dealloc]";
    v7 = 1024;
    v8 = 72;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.replaykit.audioOnlyPreferenceChanged", 0);
  v4.receiver = self;
  v4.super_class = LocalCaptureSettingsController;
  [(LocalCaptureSettingsController *)&v4 dealloc];
}

- (id)specifiers
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[LocalCaptureSettingsController specifiers]";
    v22 = 1024;
    v23 = 82;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v19.receiver = self;
  v19.super_class = LocalCaptureSettingsController;
  specifiers = [(LocalCaptureSettingsController *)&v19 specifiers];
  v4 = [specifiers count];

  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithID:@"LOCAL_CAPTURE_GROUP"];
    v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_SETTINGS_SAVE_LOCATION_FOOTER"];
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = [PSSpecifier preferenceSpecifierNamed:@"Save Location" target:self set:0 get:0 detail:0 cell:8 edit:0];
    v9 = PSIDKey;
    [v8 setProperty:@"save_location" forKey:PSIDKey];
    [v5 addObject:v8];
    v10 = [PSSpecifier preferenceSpecifierNamed:@"Audio Only" target:self set:0 get:0 detail:0 cell:6 edit:0];
    [v10 setProperty:@"audio_only" forKey:v9];
    [v5 addObject:v10];
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[LocalCaptureSettingsController specifiers]";
      v22 = 1024;
      v23 = 114;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Added audioOnly specifier", buf, 0x12u);
    }

    v18.receiver = self;
    v18.super_class = LocalCaptureSettingsController;
    [(LocalCaptureSettingsController *)&v18 setSpecifiers:v5];
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 count];
      *buf = 136446722;
      v21 = "[LocalCaptureSettingsController specifiers]";
      v22 = 1024;
      v23 = 116;
      v24 = 2048;
      v25 = v11;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created custom specifiers array with %lu items", buf, 0x1Cu);
    }
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17.receiver = self;
    v17.super_class = LocalCaptureSettingsController;
    specifiers2 = [(LocalCaptureSettingsController *)&v17 specifiers];
    v13 = [specifiers2 count];
    *buf = 136446722;
    v21 = "[LocalCaptureSettingsController specifiers]";
    v22 = 1024;
    v23 = 119;
    v24 = 2048;
    v25 = v13;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Returning %lu specifiers", buf, 0x1Cu);
  }

  v16.receiver = self;
  v16.super_class = LocalCaptureSettingsController;
  specifiers3 = [(LocalCaptureSettingsController *)&v16 specifiers];

  return specifiers3;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[LocalCaptureSettingsController numberOfSectionsInTableView:]";
    v7 = 1024;
    v8 = 124;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[LocalCaptureSettingsController tableView:numberOfRowsInSection:]";
    v8 = 1024;
    v9 = 129;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  return 2;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136446722;
    v28 = "[LocalCaptureSettingsController tableView:cellForRowAtIndexPath:]";
    v29 = 1024;
    v30 = 134;
    v31 = 2048;
    v32 = [pathCopy row];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Creating cell for row %ld", &v27, 0x1Cu);
  }

  v8 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_STATUSBAR_TAPPED_ALERT_TITLE"];
  [(LocalCaptureSettingsController *)self setTitle:v8];

  if ([pathCopy row])
  {
    v9 = [pathCopy row];
    v10 = [UITableViewCell alloc];
    if (v9 == &dword_0 + 1)
    {
      v11 = [v10 initWithStyle:0 reuseIdentifier:@"AudioOnlyCell"];
      textLabel = [v11 textLabel];
      [textLabel setText:@"Audio Only"];

      [v11 setSelectionStyle:0];
      v13 = objc_alloc_init(UISwitch);
      v14 = [(LocalCaptureSettingsController *)self getSwitchState:@"RPAudioOnlySelection"];
      bOOLValue = [v14 BOOLValue];

      [v13 setOn:bOOLValue];
      [v13 addTarget:self action:"audioOnlyToggleChanged:" forControlEvents:4096];
      [v11 setAccessoryView:v13];
      if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136446722;
        v28 = "[LocalCaptureSettingsController tableView:cellForRowAtIndexPath:]";
        v29 = 1024;
        v30 = 162;
        v31 = 1024;
        LODWORD(v32) = bOOLValue;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created audio only toggle with value: %d", &v27, 0x18u);
      }
    }

    else
    {
      v11 = [v10 initWithStyle:0 reuseIdentifier:@"DefaultCell"];
      textLabel2 = [v11 textLabel];
      [textLabel2 setText:@"Unknown"];

      if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [pathCopy row];
        v27 = 136446722;
        v28 = "[LocalCaptureSettingsController tableView:cellForRowAtIndexPath:]";
        v29 = 1024;
        v30 = 168;
        v31 = 2048;
        v32 = v25;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created fallback cell for row: %ld", &v27, 0x1Cu);
      }
    }
  }

  else
  {
    v11 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"SaveLocationCell"];
    v16 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_SETTINGS_SAVE_LOCATION"];
    textLabel3 = [v11 textLabel];
    [textLabel3 setText:v16];

    getCurrentSaveLocationName = [(LocalCaptureSettingsController *)self getCurrentSaveLocationName];
    detailTextLabel = [v11 detailTextLabel];
    [detailTextLabel setText:getCurrentSaveLocationName];

    [v11 setAccessoryType:1];
    [v11 setSelectionStyle:3];
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      textLabel4 = [v11 textLabel];
      text = [textLabel4 text];
      detailTextLabel2 = [v11 detailTextLabel];
      text2 = [detailTextLabel2 text];
      v27 = 136446978;
      v28 = "[LocalCaptureSettingsController tableView:cellForRowAtIndexPath:]";
      v29 = 1024;
      v30 = 148;
      v31 = 2112;
      v32 = text;
      v33 = 2112;
      v34 = text2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created Save Location cell - textLabel: %@, detailLabel: %@", &v27, 0x26u);
    }
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[LocalCaptureSettingsController tableView:didSelectRowAtIndexPath:]";
    v9 = 1024;
    v10 = 176;
    v11 = 2048;
    v12 = [pathCopy row];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Row %ld tapped", &v7, 0x1Cu);
  }

  if (![pathCopy row])
  {
    [(LocalCaptureSettingsController *)self showDocumentPicker:0];
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[LocalCaptureSettingsController tableView:didSelectRowAtIndexPath:]";
      v9 = 1024;
      v10 = 181;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Save Location row tapped, showing document picker", &v7, 0x12u);
    }
  }
}

- (BOOL)getLocalCaptureAudioOnlyValue
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[LocalCaptureSettingsController getLocalCaptureAudioOnlyValue]";
    v6 = 1024;
    v7 = 188;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Getting audio only setting", &v4, 0x12u);
  }

  v2 = CFPreferencesCopyAppValue(@"RPAudioOnlySelection", @"com.apple.replayd");
  if (v2)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446722;
      v5 = "[LocalCaptureSettingsController getLocalCaptureAudioOnlyValue]";
      v6 = 1024;
      v7 = 194;
      v8 = 1024;
      v9 = 1;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Read audio only: %d", &v4, 0x18u);
    }

    CFRelease(v2);
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[LocalCaptureSettingsController getLocalCaptureAudioOnlyValue]";
    v6 = 1024;
    v7 = 197;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No audio only setting found, defaulting to NO", &v4, 0x12u);
  }

  return v2 != 0;
}

- (void)setLocalCaptureAudioOnlyValue:(BOOL)value
{
  valueCopy = value;
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[LocalCaptureSettingsController setLocalCaptureAudioOnlyValue:]";
    v7 = 1024;
    v8 = 205;
    v9 = 1024;
    v10 = valueCopy;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting audio only to: %d", &v5, 0x18u);
  }

  if (valueCopy)
  {
    CFPreferencesSetAppValue(@"RPAudioOnlySelection", kCFBooleanTrue, @"com.apple.replayd");
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[LocalCaptureSettingsController setLocalCaptureAudioOnlyValue:]";
      v7 = 1024;
      v8 = 209;
      v4 = " [INFO] %{public}s:%d Set RPHQLRAudioOnly to true";
LABEL_11:
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v5, 0x12u);
    }
  }

  else
  {
    CFPreferencesSetAppValue(@"RPAudioOnlySelection", 0, @"com.apple.replayd");
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[LocalCaptureSettingsController setLocalCaptureAudioOnlyValue:]";
      v7 = 1024;
      v8 = 213;
      v4 = " [INFO] %{public}s:%d Removed RPHQLRAudioOnly key from preferences";
      goto LABEL_11;
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.replayd");
}

- (id)getSwitchState:(__CFString *)state
{
  CFPreferencesSynchronize(@"com.apple.replayd", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  v4 = CFPreferencesCopyAppValue(state, @"com.apple.replayd");
  v5 = v4;
  if (v4)
  {
    CFRelease(v4);
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[LocalCaptureSettingsController getSwitchState:]";
    v11 = 1024;
    v12 = 228;
    v13 = 1024;
    v14 = v5 != 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Read audio only value: %d", &v9, 0x18u);
  }

  v6 = &kCFBooleanTrue;
  if (!v5)
  {
    v6 = &kCFBooleanFalse;
  }

  v7 = *v6;

  return v7;
}

- (void)setSwitchState:(__CFString *)state value:(id)value
{
  if ([value BOOLValue])
  {
    v5 = kCFBooleanTrue;
  }

  else
  {
    v5 = 0;
  }

  CFPreferencesSetAppValue(state, v5, @"com.apple.replayd");

  CFPreferencesAppSynchronize(@"com.apple.replayd");
}

- (void)audioOnlyToggleChanged:(id)changed
{
  isOn = [changed isOn];
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[LocalCaptureSettingsController audioOnlyToggleChanged:]";
    v8 = 1024;
    v9 = 243;
    v10 = 1024;
    v11 = isOn;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Audio only toggle changed: %d", &v6, 0x18u);
  }

  v5 = [NSNumber numberWithBool:isOn];
  [(LocalCaptureSettingsController *)self setSwitchState:@"RPAudioOnlySelection" value:v5];
}

- (void)showDocumentPicker:(id)picker
{
  [(LocalCaptureSettingsController *)self setSaveLocationSpecifier:picker];
  v4 = [UIDocumentPickerViewController alloc];
  v15 = UTTypeFolder;
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  v6 = [v4 initForOpeningContentTypes:v5 asCopy:0];

  [v6 setDelegate:self];
  [v6 setModalPresentationStyle:2];
  selfCopy = self;
  presentedViewController = [(LocalCaptureSettingsController *)selfCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [(LocalCaptureSettingsController *)selfCopy presentedViewController];

      v9PresentedViewController = [(LocalCaptureSettingsController *)presentedViewController2 presentedViewController];

      selfCopy = presentedViewController2;
    }

    while (v9PresentedViewController);
  }

  else
  {
    presentedViewController2 = selfCopy;
  }

  [(LocalCaptureSettingsController *)presentedViewController2 presentViewController:v6 animated:1 completion:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[LocalCaptureSettingsController showDocumentPicker:]";
    v13 = 1024;
    v14 = 265;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Presenting document picker", &v11, 0x12u);
  }
}

- (id)getPreferenceValue:(__CFString *)value
{
  v3 = CFPreferencesCopyAppValue(value, @"com.apple.replayd");

  return v3;
}

- (void)setPreferenceValue:(id)value forKey:(__CFString *)key
{
  CFPreferencesSetAppValue(key, value, @"com.apple.replayd");

  CFPreferencesAppSynchronize(@"com.apple.replayd");
}

- (id)getCurrentSaveLocationName
{
  v3 = [(LocalCaptureSettingsController *)self getPreferenceValue:@"RPSaveLocationPath"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = +[NSFileManager defaultManager];
      v5 = [v4 displayNameAtPath:v3];
      v6 = v5;
      if (v5 && [v5 length])
      {
        [(LocalCaptureSettingsController *)self setPreferenceValue:v6 forKey:@"RPSaveLocationName"];
        goto LABEL_13;
      }
    }
  }

  v4 = [(LocalCaptureSettingsController *)self getPreferenceValue:@"RPSaveLocationName"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 length])
  {
    v7 = v4;
    v4 = v7;
  }

  else
  {
    v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_HQLR_FILES"];
  }

  v6 = v7;
LABEL_13:

  return v6;
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  lsCopy = ls;
  if ([lsCopy count])
  {
    firstObject = [lsCopy firstObject];
    path = [firstObject path];
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 displayNameAtPath:path];
    v10 = v9;
    if (!v9 || ![v9 length])
    {
      lastPathComponent = [firstObject lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

      v10 = stringByDeletingPathExtension;
    }

    [(LocalCaptureSettingsController *)self setPreferenceValue:path forKey:@"RPSaveLocationPath"];
    [(LocalCaptureSettingsController *)self setPreferenceValue:v10 forKey:@"RPSaveLocationName"];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3424;
    block[3] = &unk_8268;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v15 = "[LocalCaptureSettingsController documentPicker:didPickDocumentsAtURLs:]";
      v16 = 1024;
      v17 = 325;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = path;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Selected folder: %@ at path: %@", buf, 0x26u);
    }
  }
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[LocalCaptureSettingsController documentPickerWasCancelled:]";
    v6 = 1024;
    v7 = 330;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Document picker cancelled", &v4, 0x12u);
  }
}

- (void)handleAudioOnlyPreferenceChanged
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[LocalCaptureSettingsController handleAudioOnlyPreferenceChanged]";
    v8 = 1024;
    v9 = 334;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Received Darwin notification for audio only preference change", buf, 0x12u);
  }

  if (!-[LocalCaptureSettingsController isHandlingNotification](self, "isHandlingNotification") && -[LocalCaptureSettingsController isViewLoaded](self, "isViewLoaded") && (-[LocalCaptureSettingsController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    [(LocalCaptureSettingsController *)self setIsHandlingNotification:1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3728;
    block[3] = &unk_8268;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[LocalCaptureSettingsController handleAudioOnlyPreferenceChanged]";
    v8 = 1024;
    v9 = 338;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Skipping reload - already handling notification or view not visible", buf, 0x12u);
  }
}

@end