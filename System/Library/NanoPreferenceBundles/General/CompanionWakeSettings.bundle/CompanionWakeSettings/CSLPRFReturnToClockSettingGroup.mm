@interface CSLPRFReturnToClockSettingGroup
- (BOOL)specifierIsWithinGroup:(id)group;
- (CSLPRFReturnToClockSettingGroup)initWithDelegate:(id)delegate returnToClockSetting:(int64_t)setting header:(id)header appSpecific:(BOOL)specific;
- (CSLPRFReturnToClockSettingGroupDelegate)delegate;
- (NSArray)specifiers;
- (void)setSelectedSpecifier:(id)specifier;
- (void)specifierSelected:(id)selected;
@end

@implementation CSLPRFReturnToClockSettingGroup

- (CSLPRFReturnToClockSettingGroup)initWithDelegate:(id)delegate returnToClockSetting:(int64_t)setting header:(id)header appSpecific:(BOOL)specific
{
  delegateCopy = delegate;
  headerCopy = header;
  v15.receiver = self;
  v15.super_class = CSLPRFReturnToClockSettingGroup;
  v12 = [(CSLPRFReturnToClockSettingGroup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13->_returnToClockSetting = setting;
    objc_storeStrong(&v13->_header, header);
    v13->_appSpecific = specific;
  }

  return v13;
}

- (NSArray)specifiers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_220C;
  block[3] = &unk_82A0;
  block[4] = self;
  if (qword_D1A0 != -1)
  {
    dispatch_once(&qword_D1A0, block);
  }

  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [qword_D190 count]);
    v5 = self->_specifiers;
    self->_specifiers = v4;

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:self->_header value:&stru_8450 table:@"CompanionWakeSettings"];
    v8 = [PSSpecifier groupSpecifierWithID:@"CSLPRFReturnToClockGroupID" name:v7];
    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = v8;

    [(PSSpecifier *)self->_groupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [(NSMutableArray *)self->_specifiers addObject:self->_groupSpecifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2398;
    v12[3] = &unk_82C8;
    v12[4] = self;
    [qword_D190 enumerateObjectsUsingBlock:v12];
    specifiers = self->_specifiers;
  }

  v10 = [(NSMutableArray *)specifiers copy];

  return v10;
}

- (void)setSelectedSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(PSSpecifier *)self->_groupSpecifier setProperty:specifierCopy forKey:PSRadioGroupCheckedSpecifierKey];
  appSpecific = self->_appSpecific;
  identifier = [specifierCopy identifier];
  v7 = identifier;
  if (appSpecific)
  {
    v8 = @"%@_APP_FOOTER";
  }

  else
  {
    v8 = @"%@_FOOTER";
  }

  v9 = [NSString stringWithFormat:v8, identifier];

  v10 = cslprf_sessions_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = specifierCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "setting selected footer %@ for specifier %@", buf, 0x16u);
  }

  groupSpecifier = self->_groupSpecifier;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v9 value:&stru_8450 table:@"CompanionWakeSettings"];
  [(PSSpecifier *)groupSpecifier setProperty:v13 forKey:PSFooterTextGroupKey];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifier:self->_groupSpecifier animated:0];
}

- (BOOL)specifierIsWithinGroup:(id)group
{
  v3 = [group propertyForKey:@"kCSLPRFReturnToClockSetting"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)specifierSelected:(id)selected
{
  selectedCopy = selected;
  v5 = cslprf_sessions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = selectedCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "specifier selected %@", &v10, 0xCu);
  }

  if ([(CSLPRFReturnToClockSettingGroup *)self specifierIsWithinGroup:selectedCopy])
  {
    [(CSLPRFReturnToClockSettingGroup *)self setSelectedSpecifier:selectedCopy];
    v6 = [selectedCopy propertyForKey:PSValueKey];
    integerValue = [v6 integerValue];
    v8 = cslprf_sessions_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "specifier is within group value %@", &v10, 0xCu);
    }

    if (integerValue != self->_returnToClockSetting)
    {
      self->_returnToClockSetting = integerValue;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained returnToClockSettingDidChange:integerValue];
    }
  }
}

- (CSLPRFReturnToClockSettingGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end