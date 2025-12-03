@interface ENUIExposureLoggingViewController
+ (BOOL)isServiceRestricted:(id)restricted;
- (ENUIExposureLoggingViewController)initWithStore:(id)store;
- (id)additionalLocalizedStringToDisplayForStatus:(int64_t)status;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_showControllerForSpecifier:(id)specifier;
- (void)_showLearnMore:(id)more;
- (void)addDeleteButton:(id)button;
- (void)addExposureChecksLink:(id)link;
- (void)addMasterSwitchGroupToSettings:(id)settings;
- (void)deleteExposureLog;
- (void)deleteExposureLogTapped:(id)tapped;
- (void)setLastKnownStatus:(int64_t)status;
- (void)updateMasterSwitchGroupFooterReload:(BOOL)reload;
@end

@implementation ENUIExposureLoggingViewController

- (ENUIExposureLoggingViewController)initWithStore:(id)store
{
  storeCopy = store;
  v29.receiver = self;
  v29.super_class = ENUIExposureLoggingViewController;
  v6 = [(ENUIExposureLoggingViewController *)&v29 init];
  if (v6)
  {
    v7 = +[ENUITCCUtilities exposureServiceKey];
    serviceKey = v6->_serviceKey;
    v6->_serviceKey = v7;

    v6->_enableDeleteButton = 0;
    objc_storeStrong(&v6->_store, store);
    v9 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
    adapter = v6->_adapter;
    v6->_adapter = v9;

    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    store = v6->_store;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_21EC;
    v26[3] = &unk_2C728;
    v13 = v6;
    v27 = v13;
    v14 = v11;
    v28 = v14;
    [(ENUIExposureNotificationsStore *)store fetchExposureLogsExistWithCompletion:v26];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2270;
    block[3] = &unk_2C750;
    v15 = v13;
    v25 = v15;
    dispatch_group_notify(v14, &_dispatch_main_q, block);
    objc_initWeak(&location, v15);
    v15->_lastKnownStatus = [(_TtC28HealthExposureNotificationUI16ENManagerAdapter *)v6->_adapter exposureNotificationStatus];
    v16 = [ENStatusChangeObserver alloc];
    v17 = v6->_adapter;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2278;
    v21[3] = &unk_2C778;
    objc_copyWeak(&v22, &location);
    v18 = [v16 initWithAdapter:v17 didChangeHandler:v21];
    statusChangeObserver = v15->_statusChangeObserver;
    v15->_statusChangeObserver = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)setLastKnownStatus:(int64_t)status
{
  if (self->_lastKnownStatus != status)
  {
    self->_lastKnownStatus = status;
    [(ENUIExposureLoggingViewController *)self updateMasterSwitchGroupFooterReload:1];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    [(ENUIExposureLoggingViewController *)self addMasterSwitchGroupToSettings:v5];
    [(ENUIExposureLoggingViewController *)self addExposureChecksLink:v5];
    [(ENUIExposureLoggingViewController *)self addDeleteButton:v5];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)additionalLocalizedStringToDisplayForStatus:(int64_t)status
{
  if (status == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ENUILocalizedString();
  }

  return v4;
}

- (void)updateMasterSwitchGroupFooterReload:(BOOL)reload
{
  if (self->_masterGroup)
  {
    reloadCopy = reload;
    v9 = ENUILocalizedString();
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = [(ENUIExposureLoggingViewController *)self additionalLocalizedStringToDisplayForStatus:[(ENUIExposureLoggingViewController *)self lastKnownStatus]];
    if ([v6 length])
    {
      v7 = [NSString stringWithFormat:@"%@\n\n%@", v6, v9];

      v9 = v7;
    }

    [v5 setObject:@"EXPOSURE_NOTIFICATIONS_GROUP" forKeyedSubscript:PSIDKey];
    [v5 setObject:v9 forKeyedSubscript:PSFooterTextGroupKey];
    if (reloadCopy)
    {
      [(ENUIExposureLoggingViewController *)self insertSpecifier:v5 afterSpecifier:self->_masterGroup];
      [(ENUIExposureLoggingViewController *)self removeSpecifier:self->_masterGroup];
    }

    masterGroup = self->_masterGroup;
    self->_masterGroup = v5;
  }
}

- (void)addMasterSwitchGroupToSettings:(id)settings
{
  settingsCopy = settings;
  v4 = +[PSSpecifier emptyGroupSpecifier];
  masterGroup = self->_masterGroup;
  self->_masterGroup = v4;

  [(PSSpecifier *)self->_masterGroup setObject:@"EXPOSURE_NOTIFICATIONS_GROUP" forKeyedSubscript:PSIDKey];
  [(ENUIExposureLoggingViewController *)self updateMasterSwitchGroupFooterReload:0];
  [settingsCopy addObject:self->_masterGroup];
}

- (void)addDeleteButton:(id)button
{
  buttonCopy = button;
  v4 = +[PSSpecifier emptyGroupSpecifier];
  deleteGroup = self->_deleteGroup;
  self->_deleteGroup = v4;

  v6 = PSIDKey;
  [(PSSpecifier *)self->_deleteGroup setObject:@"DELETE_GROUP" forKeyedSubscript:PSIDKey];
  self->_enableDeleteButton;
  v7 = ENUILocalizedString();
  [(PSSpecifier *)self->_deleteGroup setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

  v8 = ENUILocalizedString();
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];
  deleteButton = self->_deleteButton;
  self->_deleteButton = v9;

  [(PSSpecifier *)self->_deleteButton setObject:@"DELETE_EXPOSURE_LOG_BUTTON" forKeyedSubscript:v6];
  v11 = [NSNumber numberWithBool:self->_enableDeleteButton];
  [(PSSpecifier *)self->_deleteButton setObject:v11 forKeyedSubscript:PSEnabledKey];

  [(PSSpecifier *)self->_deleteButton setButtonAction:"deleteExposureLogTapped:"];
  [buttonCopy addObject:self->_deleteGroup];
  [buttonCopy addObject:self->_deleteButton];
}

- (void)addExposureChecksLink:(id)link
{
  if (self->_enableDeleteButton)
  {
    linkCopy = link;
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = PSIDKey;
    [v5 setObject:@"EXPOSURE_CHECKS_GROUP" forKeyedSubscript:PSIDKey];
    v7 = ENUILocalizedString();
    [v5 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

    [linkCopy addObject:v5];
    v8 = ENUILocalizedString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
    store = self->_store;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2A98;
    v12[3] = &unk_2C7A0;
    v13 = v9;
    selfCopy = self;
    v11 = v9;
    [(ENUIExposureNotificationsStore *)store fetchExposureCheckSessionsWithCompletion:v12];
    [v11 setObject:@"EXPOSURE_CHECKS" forKeyedSubscript:v6];
    [linkCopy addObject:v11];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = ENUIExposureLoggingViewController;
  pathCopy = path;
  v7 = [(ENUIExposureLoggingViewController *)&v16 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ENUIExposureLoggingViewController *)self specifierAtIndexPath:pathCopy, v16.receiver, v16.super_class];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:PSIDKey];
    v10 = [v9 isEqualToString:@"DELETE_EXPOSURE_LOG_BUTTON"];

    if (v10)
    {
      v11 = v7;
      if ([v11 type] == &dword_C + 1)
      {
        v12 = +[UIColor redColor];
        textLabel = [v11 textLabel];
        [textLabel setTextColor:v12];

        goto LABEL_7;
      }
    }
  }

  v14 = v7;
LABEL_7:

  return v7;
}

- (void)deleteExposureLogTapped:(id)tapped
{
  v4 = ENUILocalizedString();
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = ENUILocalizedString();
  v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:0];
  [v5 addAction:v7];

  v8 = ENUILocalizedString();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2DA4;
  v10[3] = &unk_2C7C8;
  v10[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:2 handler:v10];
  [v5 addAction:v9];

  [(ENUIExposureLoggingViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)deleteExposureLog
{
  objc_initWeak(&location, self);
  store = [(ENUIExposureLoggingViewController *)self store];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2E94;
  v4[3] = &unk_2C818;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [store resetDataWithFlags:85 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(ENUIExposureLoggingViewController *)self specifierAtIndex:[(ENUIExposureLoggingViewController *)self indexForIndexPath:pathCopy]];
  identifier = [v6 identifier];
  v8 = [identifier isEqualToString:@"EXPOSURE_CHECKS"];

  if (!v8)
  {
    v14 = pathCopy;
    goto LABEL_15;
  }

  v9 = objc_alloc_init(LAContext);
  v24 = 0;
  v10 = [v9 canEvaluatePolicy:2 error:&v24];
  v11 = v24;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    domain = [v11 domain];
    if ([domain isEqualToString:LAErrorDomain])
    {
      code = [v12 code];

      if (code == -5)
      {
        v17 = ENUILogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          *buf = 138543362;
          v26 = v18;
          v19 = v18;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] No passcode set, allowing access to Exposure Checks", buf, 0xCu);
        }

        [(ENUIExposureLoggingViewController *)self _showControllerForSpecifier:v6];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v20 = ENUILogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1B438();
    }

    goto LABEL_14;
  }

  v13 = ENUILocalizedString();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_330C;
  v22[3] = &unk_2C728;
  v22[4] = self;
  v23 = v6;
  [v9 evaluatePolicy:2 localizedReason:v13 reply:v22];

LABEL_14:
  v14 = 0;
LABEL_15:

  return v14;
}

- (void)_showControllerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = [(ENUIExposureLoggingViewController *)self selectSpecifier:specifierCopy];

  v5 = v6;
  if (v6)
  {
    [(ENUIExposureLoggingViewController *)self showController:v6 animate:1];
    v5 = v6;
  }
}

- (void)_showLearnMore:(id)more
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.contacttracing"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

+ (BOOL)isServiceRestricted:(id)restricted
{
  restrictedCopy = restricted;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:restrictedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end