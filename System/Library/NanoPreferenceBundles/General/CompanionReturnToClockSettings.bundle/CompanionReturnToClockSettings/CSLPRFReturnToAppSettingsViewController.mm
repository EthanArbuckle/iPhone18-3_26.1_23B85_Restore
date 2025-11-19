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
- (void)returnToClockSettingDidChange:(int64_t)a3;
- (void)saveReturnToAppSettings:(id)a3;
- (void)setAlwaysReturnToAppInSession:(id)a3;
- (void)setCustomReturnToClock:(id)a3;
- (void)setReturnToAppTimeout:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v4 = [(CSLPRFReturnToAppSettingsViewController *)self specifier];
    v5 = [v4 propertyForKey:@"ReturnToAppSettingsModel"];
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
    v4 = [(CSLPRFReturnToAppSettingsViewController *)self specifier];
    v5 = [v4 propertyForKey:@"ReturnToAppSettingsDelegate"];
    objc_storeWeak(&self->_returnToAppSettingsDelegate, v5);
  }

  v6 = objc_loadWeakRetained(&self->_returnToAppSettingsDelegate);

  return v6;
}

- (id)bundleID
{
  v2 = [(CSLPRFReturnToAppSettingsViewController *)self specifier];
  v3 = [v2 identifier];

  return v3;
}

- (id)returnToAppSettings
{
  v3 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettingsModel];
  v4 = [(CSLPRFReturnToAppSettingsViewController *)self bundleID];
  v5 = [v3 settingsForBundleID:v4];

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

- (void)saveReturnToAppSettings:(id)a3
{
  v4 = a3;
  v5 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettingsModel];
  v6 = [(CSLPRFReturnToAppSettingsViewController *)self bundleID];
  [v5 setSettings:v4 forBundleID:v6];

  v7 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettingsModel];
  [v7 saveAppSettings];

  [(CSLPRFReturnToAppSettingsViewController *)self reloadSpecifiers];
}

- (int64_t)defaultAppStickinessDuration
{
  v2 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettingsDelegate];
  v3 = [v2 currentAppTimeoutSetting];
  v4 = [v3 integerValue];

  return v4;
}

- (id)_unlocalizedCustomFooter
{
  v2 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppTimeout];
  v3 = [v2 integerValue];

  result = @"RETURN_TO_CLOCK_AFTER_2_MINUTES_APP_FOOTER";
  if (v3 <= 29)
  {
    if (v3 != -1)
    {
      if (v3 == &dword_4 + 1)
      {
        return result;
      }

      return @"RETURN_TO_CLOCK_ALWAYS_APP_FOOTER";
    }

    return @"RETURN_TO_CLOCK_ON_CROWN_PRESS_APP_FOOTER";
  }

  else
  {
    if (v3 != &dword_1C + 2)
    {
      if (v3 == stru_68.segname)
      {
        return result;
      }

      if (v3 == "rk/UIKit")
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
  v3 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  v4 = cslprf_sessions_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(CSLPRFReturnToAppSettingsViewController *)self bundleID];
    *buf = 138412546;
    v33 = v5;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Building return to app specifiers for %@ %@", buf, 0x16u);
  }

  v6 = [v3 hasCustomReturnToAppTimeout];
  v7 = +[NSMutableArray array];
  v8 = [CSLPRFReturnToClockCustomGroup alloc];
  if (v6)
  {
    returnToClockSettingGroup = &stru_C5E8;
  }

  else
  {
    returnToClockSettingGroup = [(CSLPRFReturnToAppSettingsViewController *)self _unlocalizedCustomFooter];
  }

  v10 = [(CSLPRFReturnToClockCustomGroup *)v8 initWithDelegate:self custom:v6 header:0 footer:returnToClockSettingGroup];
  p_returnToClockCustomGroup = &self->_returnToClockCustomGroup;
  returnToClockCustomGroup = self->_returnToClockCustomGroup;
  self->_returnToClockCustomGroup = v10;

  if (v6)
  {
    v13 = [*p_returnToClockCustomGroup specifiers];
    [v7 addObjectsFromArray:v13];

    v14 = [CSLPRFReturnToClockSettingGroup alloc];
    [v3 returnToAppTimeout];
    v16 = [(CSLPRFReturnToClockSettingGroup *)v14 initWithDelegate:self returnToClockSetting:v15 header:&stru_C5E8 appSpecific:1];
    p_returnToClockCustomGroup = &self->_returnToClockSettingGroup;
    returnToClockSettingGroup = self->_returnToClockSettingGroup;
    self->_returnToClockSettingGroup = v16;
  }

  v17 = [*p_returnToClockCustomGroup specifiers];
  [v7 addObjectsFromArray:v17];

  if ([v3 sessionCapable])
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

- (void)setCustomReturnToClock:(id)a3
{
  v4 = a3;
  v7 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  v5 = [v4 BOOLValue];

  v6 = 0.0;
  if (v5)
  {
    v6 = [(CSLPRFReturnToAppSettingsViewController *)self defaultAppStickinessDuration];
  }

  [v7 setReturnToAppTimeout:v6];
  [(CSLPRFReturnToAppSettingsViewController *)self saveReturnToAppSettings:v7];
}

- (id)returnToAppTimeout
{
  v3 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  v4 = [NSNumber numberWithInteger:[(CSLPRFReturnToAppSettingsViewController *)self defaultAppStickinessDuration]];
  if ([v3 hasCustomReturnToAppTimeout])
  {
    [v3 returnToAppTimeout];
    v5 = [NSNumber numberWithDouble:?];

    v4 = v5;
  }

  return v4;
}

- (void)setReturnToAppTimeout:(id)a3
{
  v4 = a3;
  v7 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  [v4 floatValue];
  v6 = v5;

  [v7 setReturnToAppTimeout:v6];
  [(CSLPRFReturnToAppSettingsViewController *)self saveReturnToAppSettings:v7];
}

- (id)alwaysReturnToAppInSession
{
  v3 = cslprf_sessions_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "alwaysReturnToAppInSession", v7, 2u);
  }

  v4 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 alwaysReturnToAppInSession]);

  return v5;
}

- (void)setAlwaysReturnToAppInSession:(id)a3
{
  v4 = a3;
  v5 = cslprf_sessions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setAlwaysReturnToAppInSession:%@", &v7, 0xCu);
  }

  v6 = [(CSLPRFReturnToAppSettingsViewController *)self returnToAppSettings];
  [v6 setAlwaysReturnToAppInSession:{objc_msgSend(v4, "BOOLValue")}];
  [(CSLPRFReturnToAppSettingsViewController *)self saveReturnToAppSettings:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(CSLPRFReturnToAppSettingsViewController *)self indexForIndexPath:a4];
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

- (void)returnToClockSettingDidChange:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(CSLPRFReturnToAppSettingsViewController *)self setReturnToAppTimeout:v4];
}

@end