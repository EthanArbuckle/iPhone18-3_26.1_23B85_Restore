@interface CSLPRFReturnToClockSettingGroup
- (BOOL)specifierIsWithinGroup:(id)a3;
- (CSLPRFReturnToClockSettingGroup)initWithDelegate:(id)a3 returnToClockSetting:(int64_t)a4 header:(id)a5 appSpecific:(BOOL)a6;
- (CSLPRFReturnToClockSettingGroupDelegate)delegate;
- (NSArray)specifiers;
- (void)setSelectedSpecifier:(id)a3;
- (void)specifierSelected:(id)a3;
@end

@implementation CSLPRFReturnToClockSettingGroup

- (CSLPRFReturnToClockSettingGroup)initWithDelegate:(id)a3 returnToClockSetting:(int64_t)a4 header:(id)a5 appSpecific:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CSLPRFReturnToClockSettingGroup;
  v12 = [(CSLPRFReturnToClockSettingGroup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v10);
    v13->_returnToClockSetting = a4;
    objc_storeStrong(&v13->_header, a5);
    v13->_appSpecific = a6;
  }

  return v13;
}

- (NSArray)specifiers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_452C;
  block[3] = &unk_C2F0;
  block[4] = self;
  if (qword_11DC0 != -1)
  {
    dispatch_once(&qword_11DC0, block);
  }

  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [qword_11DB0 count]);
    v5 = self->_specifiers;
    self->_specifiers = v4;

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:self->_header value:&stru_C5E8 table:@"CompanionWakeSettings"];
    v8 = [PSSpecifier groupSpecifierWithID:@"CSLPRFReturnToClockGroupID" name:v7];
    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = v8;

    [(PSSpecifier *)self->_groupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [(NSMutableArray *)self->_specifiers addObject:self->_groupSpecifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_46B8;
    v12[3] = &unk_C460;
    v12[4] = self;
    [qword_11DB0 enumerateObjectsUsingBlock:v12];
    specifiers = self->_specifiers;
  }

  v10 = [(NSMutableArray *)specifiers copy];

  return v10;
}

- (void)setSelectedSpecifier:(id)a3
{
  v4 = a3;
  [(PSSpecifier *)self->_groupSpecifier setProperty:v4 forKey:PSRadioGroupCheckedSpecifierKey];
  appSpecific = self->_appSpecific;
  v6 = [v4 identifier];
  v7 = v6;
  if (appSpecific)
  {
    v8 = @"%@_APP_FOOTER";
  }

  else
  {
    v8 = @"%@_FOOTER";
  }

  v9 = [NSString stringWithFormat:v8, v6];

  v10 = cslprf_sessions_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "setting selected footer %@ for specifier %@", buf, 0x16u);
  }

  groupSpecifier = self->_groupSpecifier;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v9 value:&stru_C5E8 table:@"CompanionWakeSettings"];
  [(PSSpecifier *)groupSpecifier setProperty:v13 forKey:PSFooterTextGroupKey];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifier:self->_groupSpecifier animated:0];
}

- (BOOL)specifierIsWithinGroup:(id)a3
{
  v3 = [a3 propertyForKey:@"kCSLPRFReturnToClockSetting"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)specifierSelected:(id)a3
{
  v4 = a3;
  v5 = cslprf_sessions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "specifier selected %@", &v10, 0xCu);
  }

  if ([(CSLPRFReturnToClockSettingGroup *)self specifierIsWithinGroup:v4])
  {
    [(CSLPRFReturnToClockSettingGroup *)self setSelectedSpecifier:v4];
    v6 = [v4 propertyForKey:PSValueKey];
    v7 = [v6 integerValue];
    v8 = cslprf_sessions_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "specifier is within group value %@", &v10, 0xCu);
    }

    if (v7 != self->_returnToClockSetting)
    {
      self->_returnToClockSetting = v7;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained returnToClockSettingDidChange:v7];
    }
  }
}

- (CSLPRFReturnToClockSettingGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end