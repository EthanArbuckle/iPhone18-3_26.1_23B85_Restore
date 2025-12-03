@interface HKHealthPrivacyHeadphoneLevelsViewController
- (HKHealthPrivacyHeadphoneLevelsViewController)init;
- (id)appleAndCalibratedPairedDevicesInverted:(BOOL)inverted;
- (id)measureLevelsFooterText;
- (id)otherHeadphonesFooterText;
- (id)specifiers;
- (void)_setInterruptionBehaviorSettingForSpecifier:(id)specifier;
- (void)_setMeasureLevelsValue:(id)value specifier:(id)specifier;
- (void)_updateSpecifiersForPruningPreference:(BOOL)preference;
- (void)setShouldShowOtherSection:(BOOL)section;
- (void)viewDidLoad;
@end

@implementation HKHealthPrivacyHeadphoneLevelsViewController

- (HKHealthPrivacyHeadphoneLevelsViewController)init
{
  v6.receiver = self;
  v6.super_class = HKHealthPrivacyHeadphoneLevelsViewController;
  v2 = [(HKHealthPrivacyHeadphoneLevelsViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ADASManager);
    manager = v2->_manager;
    v2->_manager = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKHealthPrivacyHeadphoneLevelsViewController;
  [(HKHealthPrivacyHeadphoneLevelsViewController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HEADPHONE_AUDIO_LEVELS" value:&stru_8350 table:0];
  [(HKHealthPrivacyHeadphoneLevelsViewController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v40 = [(ADASManager *)self->_manager getPreferenceFor:ADAFPreferenceKeyHAENotificationIsMandatory];
    if ([v40 BOOLValue])
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"SAVE_IN_HEALTH" value:? table:?];
      v8 = [PSSpecifier groupSpecifierWithName:v7];
      saveInHealthGroup = self->_saveInHealthGroup;
      self->_saveInHealthGroup = v8;

      [(PSSpecifier *)self->_saveInHealthGroup setIdentifier:@"SAVE_IN_HEALTH_GROUP"];
      [(PSSpecifier *)self->_saveInHealthGroup setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      [v5 addObject:self->_saveInHealthGroup];
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"FOR_EIGHT_DAYS" value:&stru_8350 table:0];
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];
      forEightDaysCell = self->_forEightDaysCell;
      self->_forEightDaysCell = v12;

      [(PSSpecifier *)self->_forEightDaysCell setButtonAction:"_setInterruptionBehaviorSettingForSpecifier:"];
      [(PSSpecifier *)self->_forEightDaysCell setIdentifier:@"FOR_EIGHT_DAYS_CELL"];
      [v5 addObject:self->_forEightDaysCell];
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"UNTIL_I_DELETE" value:&stru_8350 table:0];
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];
      untilIDeleteCell = self->_untilIDeleteCell;
      self->_untilIDeleteCell = v16;

      [(PSSpecifier *)self->_untilIDeleteCell setButtonAction:"_setInterruptionBehaviorSettingForSpecifier:"];
      [(PSSpecifier *)self->_untilIDeleteCell setIdentifier:@"UNTIL_I_DELETE_CELL"];
      [v5 addObject:self->_untilIDeleteCell];
      v18 = [(ADASManager *)self->_manager getPreferenceFor:ADAFPreferenceKeyHAESampleTransient];
      -[HKHealthPrivacyHeadphoneLevelsViewController _updateSpecifiersForPruningPreference:](self, "_updateSpecifiersForPruningPreference:", [v18 BOOLValue]);
    }

    else
    {
      v19 = [PSSpecifier groupSpecifierWithID:@"MEASURE_LEVELS_GROUP"];
      measureLevelsGroup = self->_measureLevelsGroup;
      self->_measureLevelsGroup = v19;

      v21 = self->_measureLevelsGroup;
      measureLevelsFooterText = [(HKHealthPrivacyHeadphoneLevelsViewController *)self measureLevelsFooterText];
      v23 = PSFooterTextGroupKey;
      [(PSSpecifier *)v21 setProperty:measureLevelsFooterText forKey:PSFooterTextGroupKey];

      [v5 addObject:self->_measureLevelsGroup];
      v24 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"MEASURE_LEVELS" value:&stru_8350 table:0];
      v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"_setMeasureLevelsValue:specifier:" get:"_getMeasureLevelsValue:" detail:0 cell:6 edit:0];
      measureLevelsSwitch = self->_measureLevelsSwitch;
      self->_measureLevelsSwitch = v26;

      [(PSSpecifier *)self->_measureLevelsSwitch setIdentifier:@"MEASURE_LEVELS_SWITCH"];
      [v5 addObject:self->_measureLevelsSwitch];
      v28 = [PSSpecifier groupSpecifierWithID:@"OTHER_HEADPHONES_GROUP"];
      otherHeadphonesGroup = self->_otherHeadphonesGroup;
      self->_otherHeadphonesGroup = v28;

      v30 = self->_otherHeadphonesGroup;
      otherHeadphonesFooterText = [(HKHealthPrivacyHeadphoneLevelsViewController *)self otherHeadphonesFooterText];
      [(PSSpecifier *)v30 setProperty:otherHeadphonesFooterText forKey:v23];

      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:@"INCLUDE_OTHER_HEADPHONES" value:&stru_8350 table:0];
      v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:"_setIncludeOtherHeadphonesValue:specifier:" get:"_getIncludeOtherHeadphonesValue:" detail:0 cell:6 edit:0];
      otherHeadphonesSwitch = self->_otherHeadphonesSwitch;
      self->_otherHeadphonesSwitch = v34;

      [(PSSpecifier *)self->_otherHeadphonesSwitch setIdentifier:@"OTHER_HEADPHONES_SWITCH"];
      v36 = [(HKHealthPrivacyHeadphoneLevelsViewController *)self _getMeasureLevelsValue:self->_measureLevelsSwitch];
      self->_shouldShowOtherSection = [v36 BOOLValue];

      if (self->_shouldShowOtherSection)
      {
        [v5 addObject:self->_otherHeadphonesGroup];
        [v5 addObject:self->_otherHeadphonesSwitch];
      }
    }

    v37 = [v5 copy];
    v38 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v37;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)measureLevelsFooterText
{
  v2 = [(HKHealthPrivacyHeadphoneLevelsViewController *)self appleAndCalibratedPairedDevicesInverted:0];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MEASURE_LEVELS_FOOTER_TEXT" value:&stru_8350 table:0];

  v5 = [v4 stringByAppendingString:@"\n"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MEASURE_LEVELS_FOOTER_TEXT_GENERIC" value:&stru_8350 table:0];
  v8 = [v5 stringByAppendingString:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v2;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v8 stringByAppendingString:@"\n"];

        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"INCLUDE_OTHER_HEADPHONE_HEADPHONE_LIST_%@" value:&stru_8350 table:0];
        name = [v13 name];
        v8 = [v14 stringByAppendingFormat:v16, name];
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)otherHeadphonesFooterText
{
  v2 = [(HKHealthPrivacyHeadphoneLevelsViewController *)self appleAndCalibratedPairedDevicesInverted:1];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"INCLUDE_OTHER_HEADPHONES_FOOTER_TEXT"];
  v5 = [v3 localizedStringForKey:v4 value:&stru_8350 table:0];

  v6 = [v5 stringByAppendingString:@"\n"];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"INCLUDE_OTHER_HEADPHONES_FOOTER_TEXT_GENERIC"];
  v9 = [v7 localizedStringForKey:v8 value:&stru_8350 table:0];
  v10 = [v6 stringByAppendingString:v9];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v2;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v10 stringByAppendingString:@"\n"];

        v17 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"INCLUDE_OTHER_HEADPHONE_HEADPHONE_LIST_%@" value:&stru_8350 table:0];
        name = [v15 name];
        v10 = [v16 stringByAppendingFormat:v18, name];
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  return v10;
}

- (void)_updateSpecifiersForPruningPreference:(BOOL)preference
{
  saveInHealthGroup = self->_saveInHealthGroup;
  v5 = &OBJC_IVAR___HKHealthPrivacyHeadphoneLevelsViewController__untilIDeleteCell;
  if (preference)
  {
    v5 = &OBJC_IVAR___HKHealthPrivacyHeadphoneLevelsViewController__forEightDaysCell;
    v6 = @"SAVE_IN_HEALTH_FOR_8_DAYS_FOOTER_TEXT";
  }

  else
  {
    v6 = @"SAVE_IN_HEALTH_FOOTER_TEXT";
  }

  [(PSSpecifier *)saveInHealthGroup setProperty:*&self->PSListController_opaque[*v5] forKey:PSRadioGroupCheckedSpecifierKey];
  v7 = self->_saveInHealthGroup;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:v6 value:&stru_8350 table:0];
  [(PSSpecifier *)v7 setProperty:v9 forKey:PSFooterTextGroupKey];

  v10 = self->_saveInHealthGroup;

  [(HKHealthPrivacyHeadphoneLevelsViewController *)self reloadSpecifier:v10];
}

- (void)_setInterruptionBehaviorSettingForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  identifier2 = [(PSSpecifier *)self->_forEightDaysCell identifier];
  v6 = [identifier isEqualToString:identifier2];

  manager = self->_manager;
  v8 = ADAFPreferenceKeyHAESampleTransient;
  v9 = [NSNumber numberWithBool:v6];
  v10 = [(ADASManager *)manager setPreferenceFor:v8 value:v9];

  [(HKHealthPrivacyHeadphoneLevelsViewController *)self _updateSpecifiersForPruningPreference:v6];
}

- (void)_setMeasureLevelsValue:(id)value specifier:(id)specifier
{
  manager = self->_manager;
  v6 = ADAFPreferenceKeyHAEEnableHKWrite;
  valueCopy = value;
  v8 = [(ADASManager *)manager setPreferenceFor:v6 value:valueCopy];
  bOOLValue = [valueCopy BOOLValue];

  [(HKHealthPrivacyHeadphoneLevelsViewController *)self setShouldShowOtherSection:bOOLValue];
}

- (void)setShouldShowOtherSection:(BOOL)section
{
  if (self->_shouldShowOtherSection != section)
  {
    self->_shouldShowOtherSection = section;
    otherHeadphonesGroup = self->_otherHeadphonesGroup;
    otherHeadphonesSwitch = self->_otherHeadphonesSwitch;
    if (section)
    {
      v8[0] = self->_otherHeadphonesGroup;
      v8[1] = otherHeadphonesSwitch;
      v6 = [NSArray arrayWithObjects:v8 count:2];
      [(HKHealthPrivacyHeadphoneLevelsViewController *)self insertContiguousSpecifiers:v6 afterSpecifier:self->_measureLevelsSwitch animated:1];
    }

    else
    {
      v7[0] = self->_otherHeadphonesGroup;
      v7[1] = otherHeadphonesSwitch;
      v6 = [NSArray arrayWithObjects:v7 count:2];
      [(HKHealthPrivacyHeadphoneLevelsViewController *)self removeContiguousSpecifiers:v6 animated:1];
    }
  }
}

- (id)appleAndCalibratedPairedDevicesInverted:(BOOL)inverted
{
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = +[BluetoothManager sharedInstance];
  pairedDevices = [v5 pairedDevices];

  v7 = [pairedDevices countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(pairedDevices);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        if (([v11 type] & 0xFFFFFFFB) == 0x10)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [pairedDevices countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v12 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = +[BluetoothManager sharedInstance];
  pairedNonAppleHAEDevices = [v13 pairedNonAppleHAEDevices];

  v15 = [pairedNonAppleHAEDevices countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(pairedNonAppleHAEDevices);
        }

        [v12 addObject:*(*(&v29 + 1) + 8 * j)];
      }

      v16 = [pairedNonAppleHAEDevices countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v16);
  }

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_2E7C;
  v26 = &unk_82C8;
  v27 = v12;
  invertedCopy = inverted;
  v19 = v12;
  v20 = [NSPredicate predicateWithBlock:&v23];
  v21 = [v4 filteredArrayUsingPredicate:{v20, v23, v24, v25, v26}];

  return v21;
}

@end