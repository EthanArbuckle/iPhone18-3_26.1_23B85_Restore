@interface CSLPRFReturnToAppSettingsViewController
- (CSLPRFReturnToAppSettingsDelegate)returnToAppSettingsDelegate;
- (CSLPRFReturnToAppSettingsModel)returnToAppSettingsModel;
- (id)_unlocalizedCustomFooter;
- (id)alwaysReturnToAppInSession;
- (id)bundleID;
- (id)returnToAppSettings;
- (id)returnToAppTimeout;
- (id)specifiers;
- (int64_t)defaultAppStickinessDuration;
- (void)reloadAll;
- (void)returnToClockSettingDidChange:(int64_t)change;
- (void)saveReturnToAppSettings:(id)settings;
- (void)setAlwaysReturnToAppInSession:(id)session;
- (void)setCustomReturnToClock:(id)clock;
- (void)setReturnToAppTimeout:(id)timeout;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CSLPRFReturnToAppSettingsViewController

- (void)reloadAll
{
  v3 = objc_alloc_init(CSLPRFReturnToAppSettingsModel);
  strongReturnToAppSettingsModel = self->_strongReturnToAppSettingsModel;
  self->_strongReturnToAppSettingsModel = v3;

  objc_storeWeak(&self->_returnToAppSettingsModel, self->_strongReturnToAppSettingsModel);

  [(CSLPRFReturnToAppSettingsViewController *)self reloadSpecifiers];
}

- (CSLPRFReturnToAppSettingsModel)returnToAppSettingsModel
{
  WeakRetained = objc_loadWeakRetained(&self->_returnToAppSettingsModel);

  if (!WeakRetained)
  {
    specifier = [(CSLPRFReturnToAppSettingsViewController *)self specifier];
    v5 = [specifier propertyForKey:@"ReturnToAppSettingsModel"];
    objc_storeWeak(&self->_returnToAppSettingsModel, v5);

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_4D68, @"CSLSessionsSettingsChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v7 = objc_loadWeakRetained(&self->_returnToAppSettingsModel);

  return v7;
}

- (CSLPRFReturnToAppSettingsDelegate)returnToAppSettingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_returnToAppSettingsDelegate);

  if (!WeakRetained)
  {
    specifier = [(CSLPRFReturnToAppSettingsViewController *)self specifier];
    v5 = [specifier propertyForKey:@"ReturnToAppSettingsDelegate"];
    objc_storeWeak(&self->_returnToAppSettingsDelegate, v5);
  }

  v6 = objc_loadWeakRetained(&self->_returnToAppSettingsDelegate);

  return v6;
}

- (id)bundleID
{
  specifier = [(CSLPRFReturnToAppSettingsViewController *)self specifier];
  identifier = [specifier identifier];

  return identifier;
}

- (id)returnToAppSettings
{
  returnToAppSettingsModel = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettingsModel];
  bundleID = [(CSLPRFReturnToAppSettingsViewController *)self bundleID];
  v5 = [returnToAppSettingsModel settingsForBundleID:bundleID];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(CSLPRFReturnToAppSettings);
  }

  v7 = v6;

  return v7;
}

- (void)saveReturnToAppSettings:(id)settings
{
  settingsCopy = settings;
  returnToAppSettingsModel = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettingsModel];
  bundleID = [(CSLPRFReturnToAppSettingsViewController *)self bundleID];
  [returnToAppSettingsModel setSettings:settingsCopy forBundleID:bundleID];

  returnToAppSettingsModel2 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettingsModel];
  [returnToAppSettingsModel2 saveAppSettings];

  [(CSLPRFReturnToAppSettingsViewController *)self reloadSpecifiers];
}

- (int64_t)defaultAppStickinessDuration
{
  returnToAppSettingsDelegate = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettingsDelegate];
  currentAppTimeoutSetting = [returnToAppSettingsDelegate currentAppTimeoutSetting];
  integerValue = [currentAppTimeoutSetting integerValue];

  return integerValue;
}

- (id)_unlocalizedCustomFooter
{
  returnToAppTimeout = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppTimeout];
  integerValue = [returnToAppTimeout integerValue];

  result = @"RETURN_TO_CLOCK_AFTER_2_MINUTES_APP_FOOTER";
  if (integerValue <= 29)
  {
    if (integerValue != -1)
    {
      if (integerValue == &dword_4 + 1)
      {
        return result;
      }

      return @"RETURN_TO_CLOCK_ALWAYS_APP_FOOTER";
    }

    return @"RETURN_TO_CLOCK_ON_CROWN_PRESS_APP_FOOTER";
  }

  else
  {
    if (integerValue != &dword_1C + 2)
    {
      if (integerValue == stru_68.segname)
      {
        return result;
      }

      if (integerValue == "rk/UIKit")
      {
        return @"RETURN_TO_CLOCK_AFTER_1_HOUR_APP_FOOTER";
      }

      return @"RETURN_TO_CLOCK_ALWAYS_APP_FOOTER";
    }

    return @"RETURN_TO_APP_IN_SESSION_FOOTER";
  }
}

- (id)specifiers
{
  returnToAppSettings = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  v4 = cslprf_sessions_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    bundleID = [(CSLPRFReturnToAppSettingsViewController *)self bundleID];
    *buf = 138412546;
    v33 = bundleID;
    v34 = 2112;
    v35 = returnToAppSettings;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Building return to app specifiers for %@ %@", buf, 0x16u);
  }

  hasCustomReturnToAppTimeout = [returnToAppSettings hasCustomReturnToAppTimeout];
  v7 = +[NSMutableArray array];
  v8 = [CSLPRFReturnToClockCustomGroup alloc];
  if (hasCustomReturnToAppTimeout)
  {
    returnToClockSettingGroup = &stru_C5E8;
  }

  else
  {
    returnToClockSettingGroup = [(CSLPRFReturnToAppSettingsViewController *)self _unlocalizedCustomFooter];
  }

  v10 = [(CSLPRFReturnToClockCustomGroup *)v8 initWithDelegate:self custom:hasCustomReturnToAppTimeout header:0 footer:returnToClockSettingGroup];
  p_returnToClockCustomGroup = &self->_returnToClockCustomGroup;
  returnToClockCustomGroup = self->_returnToClockCustomGroup;
  self->_returnToClockCustomGroup = v10;

  if (hasCustomReturnToAppTimeout)
  {
    specifiers = [*p_returnToClockCustomGroup specifiers];
    [v7 addObjectsFromArray:specifiers];

    v14 = [CSLPRFReturnToClockSettingGroup alloc];
    [returnToAppSettings returnToAppTimeout];
    v16 = [(CSLPRFReturnToClockSettingGroup *)v14 initWithDelegate:self returnToClockSetting:v15 header:&stru_C5E8 appSpecific:1];
    p_returnToClockCustomGroup = &self->_returnToClockSettingGroup;
    returnToClockSettingGroup = self->_returnToClockSettingGroup;
    self->_returnToClockSettingGroup = v16;
  }

  specifiers2 = [*p_returnToClockCustomGroup specifiers];
  [v7 addObjectsFromArray:specifiers2];

  if ([returnToAppSettings sessionCapable])
  {
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"RETURN_TO_APP_IN_SESSION_LABEL" value:&stru_C5E8 table:@"CompanionWakeSettings"];
    v20 = [PSSpecifier groupSpecifierWithID:@"RETURN_TO_APP_IN_SESSION_SECTION_ID" name:v19];

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"RETURN_TO_APP_IN_SESSION_FOOTER" value:&stru_C5E8 table:@"CompanionWakeSettings"];
    [v20 setProperty:v22 forKey:PSFooterTextGroupKey];

    [v7 addObject:v20];
    v23 = [NSBundle bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"RETURN_TO_APP_IN_SESSION_TITLE" value:&stru_C5E8 table:@"CompanionWakeSettings"];

    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"setAlwaysReturnToAppInSession:" get:"alwaysReturnToAppInSession" detail:0 cell:6 edit:0];
    [v7 addObject:v25];
  }

  v26 = [v7 copy];
  v27 = OBJC_IVAR___PSListController__specifiers;
  v28 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v26;

  v29 = *&self->PSListController_opaque[v27];
  v30 = v29;

  return v29;
}

- (void)setCustomReturnToClock:(id)clock
{
  clockCopy = clock;
  returnToAppSettings = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  bOOLValue = [clockCopy BOOLValue];

  defaultAppStickinessDuration = 0.0;
  if (bOOLValue)
  {
    defaultAppStickinessDuration = [(CSLPRFReturnToAppSettingsViewController *)self defaultAppStickinessDuration];
  }

  [returnToAppSettings setReturnToAppTimeout:defaultAppStickinessDuration];
  [(CSLPRFReturnToAppSettingsViewController *)self saveReturnToAppSettings:returnToAppSettings];
}

- (id)returnToAppTimeout
{
  returnToAppSettings = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  v4 = [NSNumber numberWithInteger:[(CSLPRFReturnToAppSettingsViewController *)self defaultAppStickinessDuration]];
  if ([returnToAppSettings hasCustomReturnToAppTimeout])
  {
    [returnToAppSettings returnToAppTimeout];
    v5 = [NSNumber numberWithDouble:?];

    v4 = v5;
  }

  return v4;
}

- (void)setReturnToAppTimeout:(id)timeout
{
  timeoutCopy = timeout;
  returnToAppSettings = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  [timeoutCopy floatValue];
  v6 = v5;

  [returnToAppSettings setReturnToAppTimeout:v6];
  [(CSLPRFReturnToAppSettingsViewController *)self saveReturnToAppSettings:returnToAppSettings];
}

- (id)alwaysReturnToAppInSession
{
  v3 = cslprf_sessions_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "alwaysReturnToAppInSession", v7, 2u);
  }

  returnToAppSettings = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [returnToAppSettings alwaysReturnToAppInSession]);

  return v5;
}

- (void)setAlwaysReturnToAppInSession:(id)session
{
  sessionCopy = session;
  v5 = cslprf_sessions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = sessionCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setAlwaysReturnToAppInSession:%@", &v7, 0xCu);
  }

  returnToAppSettings = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  [returnToAppSettings setAlwaysReturnToAppInSession:{objc_msgSend(sessionCopy, "BOOLValue")}];
  [(CSLPRFReturnToAppSettingsViewController *)self saveReturnToAppSettings:returnToAppSettings];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [(CSLPRFReturnToAppSettingsViewController *)self indexForIndexPath:path];
  v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v5];
  v7 = cslprf_sessions_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "didSelect specifier %@", &v9, 0xCu);
  }

  p_returnToClockCustomGroup = &self->_returnToClockCustomGroup;
  if ([(CSLPRFReturnToClockCustomGroup *)self->_returnToClockCustomGroup specifierIsWithinGroup:v6]|| (p_returnToClockCustomGroup = &self->_returnToClockSettingGroup, [(CSLPRFReturnToClockSettingGroup *)self->_returnToClockSettingGroup specifierIsWithinGroup:v6]))
  {
    [*p_returnToClockCustomGroup specifierSelected:v6];
  }
}

- (void)returnToClockSettingDidChange:(int64_t)change
{
  v4 = [NSNumber numberWithInteger:change];
  [(CSLPRFReturnToAppSettingsViewController *)self setReturnToAppTimeout:v4];
}

@end