@interface HKHeadphonePrivacyController
- (HKHeadphonePrivacyController)init;
- (id)preferenceValue:(id)value;
- (id)specifiers;
- (void)_setInterruptionBehaviorSettingForSpecifier:(id)specifier;
- (void)_setupMeasureLevelsGroup;
- (void)_setupOtherHeadphonesGroup;
- (void)_setupPruningGroup;
- (void)_updateSpecifiersForPruningPreference:(BOOL)preference;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)toggleSecondSection;
@end

@implementation HKHeadphonePrivacyController

- (HKHeadphonePrivacyController)init
{
  v6.receiver = self;
  v6.super_class = HKHeadphonePrivacyController;
  v2 = [(HKHeadphonePrivacyController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ADASManager);
    manager = v2->_manager;
    v2->_manager = v3;
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(ADASManager *)self->_manager getNanoPreferenceFor:ADAFPreferenceKeyHAENotificationIsMandatory];
    if ([v6 BOOLValue])
    {
      [(HKHeadphonePrivacyController *)self _setupPruningGroup];
      [v5 addObject:self->_saveInHealthGroup];
      [v5 addObject:self->_forEightDaysCell];
      [v5 addObject:self->_untilIDeleteCell];
      v7 = [(ADASManager *)self->_manager getNanoPreferenceFor:ADAFPreferenceKeyHAESampleTransient];
      -[HKHeadphonePrivacyController _updateSpecifiersForPruningPreference:](self, "_updateSpecifiersForPruningPreference:", [v7 BOOLValue]);
    }

    else
    {
      [(HKHeadphonePrivacyController *)self _setupMeasureLevelsGroup];
      [v5 addObject:self->_measureLevelsGroup];
      [v5 addObject:self->_measureLevelsSwitch];
      [(HKHeadphonePrivacyController *)self _setupOtherHeadphonesGroup];
      [v5 addObject:self->_otherHeadphonesGroup];
      [v5 addObject:self->_otherHeadphonesSwitch];
    }

    v8 = [v5 copy];
    v9 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v8;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_setupPruningGroup
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SAVE_IN_HEALTH" value:&stru_C4D8 table:@"Privacy"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];
  saveInHealthGroup = self->_saveInHealthGroup;
  self->_saveInHealthGroup = v5;

  [(PSSpecifier *)self->_saveInHealthGroup setIdentifier:@"SAVE_IN_HEALTH_GROUP"];
  [(PSSpecifier *)self->_saveInHealthGroup setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FOR_EIGHT_DAYS" value:&stru_C4D8 table:@"Privacy"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];
  forEightDaysCell = self->_forEightDaysCell;
  self->_forEightDaysCell = v9;

  [(PSSpecifier *)self->_forEightDaysCell setButtonAction:"_setInterruptionBehaviorSettingForSpecifier:"];
  [(PSSpecifier *)self->_forEightDaysCell setIdentifier:@"FOR_EIGHT_DAYS_CELL"];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"UNTIL_I_DELETE" value:&stru_C4D8 table:@"Privacy"];
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];
  untilIDeleteCell = self->_untilIDeleteCell;
  self->_untilIDeleteCell = v13;

  [(PSSpecifier *)self->_untilIDeleteCell setButtonAction:"_setInterruptionBehaviorSettingForSpecifier:"];
  v15 = self->_untilIDeleteCell;

  [(PSSpecifier *)v15 setIdentifier:@"UNTIL_I_DELETE_CELL"];
}

- (void)_setupMeasureLevelsGroup
{
  v3 = [PSSpecifier groupSpecifierWithID:@"MEASURE_LEVELS_GROUP"];
  measureLevelsGroup = self->_measureLevelsGroup;
  self->_measureLevelsGroup = v3;

  v5 = self->_measureLevelsGroup;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MEASURE_LEVELS_FOOTER_TEXT" value:&stru_C4D8 table:@"Privacy"];
  [(PSSpecifier *)v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MEASURE_LEVELS" value:&stru_C4D8 table:@"Privacy"];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setPreferenceValue:specifier:" get:"preferenceValue:" detail:0 cell:6 edit:0];
  measureLevelsSwitch = self->_measureLevelsSwitch;
  self->_measureLevelsSwitch = v10;

  v12 = self->_measureLevelsSwitch;

  [(PSSpecifier *)v12 setIdentifier:@"MEASURE_LEVELS_SWITCH"];
}

- (void)_setupOtherHeadphonesGroup
{
  v3 = [PSSpecifier groupSpecifierWithID:@"OTHER_HEADPHONES_GROUP"];
  otherHeadphonesGroup = self->_otherHeadphonesGroup;
  self->_otherHeadphonesGroup = v3;

  v5 = self->_otherHeadphonesGroup;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"INCLUDE_OTHER_HEADPHONES_FOOTER_TEXT" value:&stru_C4D8 table:@"Privacy"];
  [(PSSpecifier *)v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"INCLUDE_OTHER_HEADPHONES" value:&stru_C4D8 table:@"Privacy"];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setPreferenceValue:specifier:" get:"preferenceValue:" detail:0 cell:6 edit:0];
  otherHeadphonesSwitch = self->_otherHeadphonesSwitch;
  self->_otherHeadphonesSwitch = v10;

  v12 = self->_otherHeadphonesSwitch;

  [(PSSpecifier *)v12 setIdentifier:@"OTHER_HEADPHONES_SWITCH"];
}

- (void)_updateSpecifiersForPruningPreference:(BOOL)preference
{
  saveInHealthGroup = self->_saveInHealthGroup;
  v5 = &OBJC_IVAR___HKHeadphonePrivacyController__untilIDeleteCell;
  if (preference)
  {
    v5 = &OBJC_IVAR___HKHeadphonePrivacyController__forEightDaysCell;
    v6 = @"SAVE_IN_HEALTH_FOR_8_DAYS_FOOTER_TEXT";
  }

  else
  {
    v6 = @"SAVE_IN_HEALTH_UNTIL_I_DELETE_FOOTER_TEXT";
  }

  [(PSSpecifier *)saveInHealthGroup setProperty:*&self->PSListController_opaque[*v5] forKey:PSRadioGroupCheckedSpecifierKey];
  v7 = self->_saveInHealthGroup;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:v6 value:&stru_C4D8 table:@"Privacy"];
  [(PSSpecifier *)v7 setProperty:v9 forKey:PSFooterTextGroupKey];

  v10 = self->_saveInHealthGroup;

  [(HKHeadphonePrivacyController *)self reloadSpecifier:v10];
}

- (void)_setInterruptionBehaviorSettingForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  identifier2 = [(PSSpecifier *)self->_forEightDaysCell identifier];
  v6 = [identifier isEqualToString:identifier2];

  _HKInitializeLogging();
  v7 = HKLogHearing;
  if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *v14 = 138543619;
    *&v14[4] = objc_opt_class();
    *&v14[12] = 1025;
    *&v14[14] = v6;
    v9 = *&v14[4];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting pruning preference to: %{private}d", v14, 0x12u);
  }

  manager = self->_manager;
  v11 = ADAFPreferenceKeyHAESampleTransient;
  v12 = [NSNumber numberWithBool:v6, *v14, *&v14[16]];
  v13 = [(ADASManager *)manager setNanoPreferenceFor:v11 value:v12];

  [(HKHeadphonePrivacyController *)self _updateSpecifiersForPruningPreference:v6];
}

- (id)preferenceValue:(id)value
{
  valueCopy = value;
  identifier = [valueCopy identifier];
  identifier2 = [(PSSpecifier *)self->_measureLevelsSwitch identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    v8 = [(ADASManager *)self->_manager getNanoPreferenceFor:ADAFPreferenceKeyHAEEnableHKWrite];
    self->_otherSectionEnabled = [v8 BOOLValue];
    [(HKHeadphonePrivacyController *)self toggleSecondSection];
  }

  else
  {
    identifier3 = [valueCopy identifier];
    identifier4 = [(PSSpecifier *)self->_otherHeadphonesSwitch identifier];
    v11 = [identifier3 isEqualToString:identifier4];

    if (v11)
    {
      v12 = [(ADASManager *)self->_manager getNanoPreferenceFor:ADAFPreferenceKeyHAEEnableOtherDevices];
    }

    else
    {
      v14.receiver = self;
      v14.super_class = HKHeadphonePrivacyController;
      v12 = [(HKHeadphonePrivacyController *)&v14 readPreferenceValue:valueCopy];
    }

    v8 = v12;
  }

  return v8;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  identifier2 = [(PSSpecifier *)self->_measureLevelsSwitch identifier];
  v10 = [identifier isEqualToString:identifier2];

  if (v10)
  {
    _HKInitializeLogging();
    v11 = HKLogHearing;
    if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = v13;
      *buf = 138543619;
      v26 = v13;
      v27 = 1025;
      bOOLValue = [valueCopy BOOLValue];
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting measure levels preference to: %{private}d", buf, 0x12u);
    }

    v15 = [(ADASManager *)self->_manager setNanoPreferenceFor:ADAFPreferenceKeyHAEEnableHKWrite value:valueCopy];
    self->_otherSectionEnabled = [valueCopy BOOLValue];
    [(HKHeadphonePrivacyController *)self toggleSecondSection];
  }

  else
  {
    identifier3 = [specifierCopy identifier];
    identifier4 = [(PSSpecifier *)self->_otherHeadphonesSwitch identifier];
    v18 = [identifier3 isEqualToString:identifier4];

    if (v18)
    {
      _HKInitializeLogging();
      v19 = HKLogHearing;
      if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = objc_opt_class();
        v22 = v21;
        *buf = 138543619;
        v26 = v21;
        v27 = 1025;
        bOOLValue = [valueCopy BOOLValue];
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting measure levels (other devices) preference to: %{private}d", buf, 0x12u);
      }

      v23 = [(ADASManager *)self->_manager setNanoPreferenceFor:ADAFPreferenceKeyHAEEnableOtherDevices value:valueCopy];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = HKHeadphonePrivacyController;
      [(HKHeadphonePrivacyController *)&v24 setPreferenceValue:valueCopy specifier:specifierCopy];
    }
  }
}

- (void)toggleSecondSection
{
  otherSectionEnabled = self->_otherSectionEnabled;
  otherHeadphonesSwitch = self->_otherHeadphonesSwitch;
  if (otherSectionEnabled)
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  [(PSSpecifier *)otherHeadphonesSwitch setProperty:v5 forKey:PSEnabledKey];
  v6 = self->_otherHeadphonesSwitch;

  [(HKHeadphonePrivacyController *)self reloadSpecifier:v6];
}

@end