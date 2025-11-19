@interface BRKSettingsViewController
- (BOOL)_isDeviceSatellitePaired;
- (BOOL)_needsRemindersSpecifiers;
- (BRKSettingsViewController)init;
- (id)_getRemindersEnabled:(id)a3;
- (id)_getTimerEnabled:(id)a3;
- (id)_newRemindersSpecifiers;
- (id)_newSpecifiers;
- (id)_newTimerSpecifiers;
- (id)applicationGroupSpecifiers;
- (void)_dismissPresentedViewController;
- (void)_handleRemindersFooterHyperlinkTapped;
- (void)_openURLString:(id)a3;
- (void)_presentMeContactCard;
- (void)_presentNewContactCard;
- (void)_setRemindersEnabled:(id)a3 withSpecifier:(id)a4;
- (void)_setTimerEnabled:(id)a3 withSpecifier:(id)a4;
- (void)_showDataCollectionOptInIfNeeded;
- (void)_updateRemindersSpecifiers;
@end

@implementation BRKSettingsViewController

- (BRKSettingsViewController)init
{
  v15.receiver = self;
  v15.super_class = BRKSettingsViewController;
  v2 = [(BRKSettingsViewController *)&v15 init];
  v3 = v2;
  if (v2 && [(BRKSettingsViewController *)v2 settingsMode]!= &dword_0 + 1)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
    v7 = [v6 firstObject];
    device = v3->_device;
    v3->_device = v7;

    v9 = [BRKSettings settingsForDevice:v3->_device];
    brookSettings = v3->_brookSettings;
    v3->_brookSettings = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v3 selector:"_settingsDidUpdate" name:BRKSettingsDidUpdateNotification object:0];
    if (![(BRKSettingsViewController *)v3 _isDeviceSatellitePaired]|| [(BRKSettings *)v3->_brookSettings isCachedLocationAuthFlowEnabled])
    {
      v12 = [[BRKRemindersSettingsHelper alloc] initWithDelegate:v3 settings:v3->_brookSettings];
      helper = v3->_helper;
      v3->_helper = v12;

      [v11 addObserver:v3 selector:"_applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
      [v11 addObserver:v3 selector:"_contactStoreDidChange" name:CNContactStoreDidChangeNotification object:0];
    }
  }

  return v3;
}

- (void)_showDataCollectionOptInIfNeeded
{
  if ([(BRKSettings *)self->_brookSettings isEnabled])
  {

    [BRKDataCollectionOnboardingViewController presentInViewController:self];
  }
}

- (id)applicationGroupSpecifiers
{
  v2 = [(BRKSettingsViewController *)self _newSpecifiers];

  return v2;
}

- (id)_newSpecifiers
{
  v3 = +[NSMutableArray array];
  if ([(BRKSettings *)self->_brookSettings isAvailable])
  {
    if (![(BRKSettingsViewController *)self settingsMode])
    {
      v4 = [(BRKSettingsViewController *)self _newTimerSpecifiers];
      [v3 addObjectsFromArray:v4];
    }

    if ([(BRKSettingsViewController *)self _needsRemindersSpecifiers])
    {
      v5 = [(BRKSettingsViewController *)self _newRemindersSpecifiers];
      [v3 addObjectsFromArray:v5];
    }
  }

  v6 = [v3 copy];

  return v6;
}

- (id)_newTimerSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"HANDWASHING_TIMER_GROUP_ID"];
  v4 = +[BRKSettings timerSettingFooter];
  [v3 setProperty:v4 forKey:PSFooterTextGroupKey];

  v5 = +[BRKSettings timerSettingTitle];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"_setTimerEnabled:withSpecifier:" get:"_getTimerEnabled:" detail:0 cell:6 edit:0];

  [v6 setIdentifier:@"HANDWASHING_TIMER_ID"];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v9[0] = v3;
  v9[1] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

- (id)_newRemindersSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"HANDWASHING_REMINDERS_GROUP_ID"];
  v4 = [(BRKRemindersSettingsHelper *)self->_helper remindersFooterTextAndLinkString];
  v5 = [v4 firstObject];
  if ([v4 count] == &dword_0 + 2)
  {
    v6 = [v4 lastObject];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v3 setProperty:v8 forKey:PSFooterCellClassGroupKey];

    [v3 setProperty:v5 forKey:PSFooterHyperlinkViewTitleKey];
    v18.location = [v5 localizedStandardRangeOfString:v6];
    v9 = NSStringFromRange(v18);
    [v3 setProperty:v9 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v10 = [NSValue valueWithNonretainedObject:self];
    [v3 setProperty:v10 forKey:PSFooterHyperlinkViewTargetKey];

    v11 = NSStringFromSelector("_handleRemindersFooterHyperlinkTapped");
    [v3 setProperty:v11 forKey:PSFooterHyperlinkViewActionKey];
  }

  else
  {
    [v3 setProperty:v5 forKey:PSFooterTextGroupKey];
  }

  v12 = +[BRKSettings remindersSettingTitle];
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"_setRemindersEnabled:withSpecifier:" get:"_getRemindersEnabled:" detail:0 cell:6 edit:0];

  [v13 setIdentifier:@"HANDWASHING_REMINDERS_ID"];
  v14 = [NSNumber numberWithBool:[(BRKRemindersSettingsHelper *)self->_helper areRemindersAvailable]];
  [v13 setProperty:v14 forKey:PSEnabledKey];

  [v13 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v17[0] = v3;
  v17[1] = v13;
  v15 = [NSArray arrayWithObjects:v17 count:2];

  return v15;
}

- (BOOL)_needsRemindersSpecifiers
{
  LODWORD(v3) = [(BRKSettings *)self->_brookSettings isEnabled];
  if (v3)
  {
    v3 = [(BRKSettingsViewController *)self alertingMode];
    if (v3)
    {
      LOBYTE(v3) = ![(BRKSettingsViewController *)self _isDeviceSatellitePaired];
    }
  }

  return v3;
}

- (void)_updateRemindersSpecifiers
{
  if ([(BRKSettings *)self->_brookSettings areRemindersEnabled]&& ([(BRKRemindersSettingsHelper *)self->_helper areRemindersAvailable]& 1) == 0)
  {
    [(BRKSettings *)self->_brookSettings setRemindersEnabled:0];
  }

  v3 = [(BRKSettingsViewController *)self specifierForID:@"HANDWASHING_REMINDERS_GROUP_ID"];
  v4 = [(BRKSettingsViewController *)self specifierForID:@"HANDWASHING_REMINDERS_ID"];
  v5 = [(BRKSettingsViewController *)self _needsRemindersSpecifiers];
  if (v5 && v3)
  {
    v16[0] = v3;
    v16[1] = v4;
    v6 = [NSArray arrayWithObjects:v16 count:2];
    v7 = [(BRKSettingsViewController *)self _newRemindersSpecifiers];
    [(BRKSettingsViewController *)self replaceContiguousSpecifiers:v6 withSpecifiers:v7 animated:0];

LABEL_19:
    goto LABEL_20;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v15[0] = v3;
    v15[1] = v4;
    v6 = [NSArray arrayWithObjects:v15 count:2];
    [(BRKSettingsViewController *)self removeContiguousSpecifiers:v6 animated:1];
    goto LABEL_19;
  }

  if (v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  if (v9 == 1)
  {
    v10 = [(BRKSettingsViewController *)self settingsMode];
    v11 = @"NOTIFICATION_COALESCING_GROUP_ID";
    if (!v10)
    {
      v11 = @"HANDWASHING_TIMER_ID";
    }

    v12 = v11;
    v13 = [(BRKSettingsViewController *)self _newRemindersSpecifiers];
    v14 = [(BRKSettingsViewController *)self specifierForID:v12];

    [(BRKSettingsViewController *)self insertContiguousSpecifiers:v13 afterSpecifier:v14 animated:1];
  }

LABEL_20:
}

- (void)_setTimerEnabled:(id)a3 withSpecifier:(id)a4
{
  -[BRKSettings setEnabled:](self->_brookSettings, "setEnabled:", [a3 BOOLValue]);
  [(BRKSettingsViewController *)self _updateRemindersSpecifiers];
  if (([(BRKSettings *)self->_brookSettings isOnboardingComplete]& 1) == 0)
  {
    v5 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "User manually enabled/disabled Brook. Skipping onboarding.", v6, 2u);
    }

    [(BRKSettings *)self->_brookSettings setOnboardingComplete:1];
  }

  [(BRKSettingsViewController *)self _showDataCollectionOptInIfNeeded];
}

- (id)_getTimerEnabled:(id)a3
{
  v3 = [(BRKSettings *)self->_brookSettings isEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)_setRemindersEnabled:(id)a3 withSpecifier:(id)a4
{
  -[BRKSettings setRemindersEnabled:](self->_brookSettings, "setRemindersEnabled:", [a3 BOOLValue]);
  if ([(BRKSettings *)self->_brookSettings areRemindersEnabled])
  {
    helper = self->_helper;

    [(BRKRemindersSettingsHelper *)helper requestLocationAuthorizationIfNeeded];
  }
}

- (id)_getRemindersEnabled:(id)a3
{
  if ([(BRKSettings *)self->_brookSettings areRemindersEnabled])
  {
    [(BRKRemindersSettingsHelper *)self->_helper requestLocationAuthorizationIfNeeded];
  }

  v4 = [(BRKSettings *)self->_brookSettings areRemindersEnabled];

  return [NSNumber numberWithBool:v4];
}

- (BOOL)_isDeviceSatellitePaired
{
  v2 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyIsAltAccount];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_handleRemindersFooterHyperlinkTapped
{
  if (([(BRKRemindersSettingsHelper *)self->_helper isMeCardAvailable]& 1) != 0 || ([(BRKRemindersSettingsHelper *)self->_helper isLocationAvailable]& 1) != 0)
  {
    if (([(BRKRemindersSettingsHelper *)self->_helper isLocationAvailable]& 1) != 0)
    {
      if (([(BRKRemindersSettingsHelper *)self->_helper isLocationAuthorizationValid]& 1) != 0)
      {
        v5 = BRKLoggingObjectForDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_2060(v5);
        }
      }

      else
      {

        [(BRKSettingsViewController *)self _openURLString:@"prefs:root=Privacy&path=LOCATION"];
      }
    }

    else
    {

      [(BRKSettingsViewController *)self _presentMeContactCard];
    }
  }

  else
  {

    [(BRKSettingsViewController *)self _presentNewContactCard];
  }
}

- (void)_openURLString:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1CD0;
  block[3] = &unk_8218;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)_presentMeContactCard
{
  helper = self->_helper;
  v4 = +[CNContactViewController descriptorForRequiredKeys];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  v6 = [(BRKRemindersSettingsHelper *)helper meContactWithKeysToFetch:v5];

  if (v6)
  {
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismissPresentedViewController"];
    v8 = [CNContactViewController viewControllerForContact:v6];
    [v8 setAllowsEditing:1];
    v9 = [v8 navigationItem];
    [v9 setRightBarButtonItem:v7];

    v10 = [[UINavigationController alloc] initWithRootViewController:v8];
    v11 = [(BRKSettingsViewController *)self rootController];
    [v11 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v7 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_20E4(v7);
    }
  }
}

- (void)_presentNewContactCard
{
  v5 = [CNContactViewController viewControllerForNewContact:0];
  [v5 setDelegate:self];
  v3 = [[UINavigationController alloc] initWithRootViewController:v5];
  v4 = [(BRKSettingsViewController *)self rootController];
  [v4 presentViewController:v3 animated:1 completion:0];
}

- (void)_dismissPresentedViewController
{
  [(BRKRemindersSettingsHelper *)self->_helper update];
  v4 = [(BRKSettingsViewController *)self rootController];
  v3 = [v4 presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

@end