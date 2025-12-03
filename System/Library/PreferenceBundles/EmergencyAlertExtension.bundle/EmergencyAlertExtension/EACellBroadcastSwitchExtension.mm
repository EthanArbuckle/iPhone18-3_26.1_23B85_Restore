@interface EACellBroadcastSwitchExtension
- (BOOL)readCustomPrefForKey:(id)key withDefault:(BOOL)default;
- (EACellBroadcastSwitchExtension)init;
- (id)getAlertState;
- (id)getAlwaysDeliverState;
- (id)getEnhancedDeliveryState;
- (id)readAlertState:(id)state;
- (id)specifiers;
- (void)addAlwaysDeliverOption;
- (void)addEnhancedDeliveryOption;
- (void)addRootAlertSwitch;
- (void)removeAlwaysDeliverOption;
- (void)removeEnhancedDeliveryOption;
- (void)resetItems;
- (void)setAlertState:(id)state;
- (void)setAlertStateforKey:(id)key withValue:(id)value;
- (void)setCustomPreferenceForKey:(id)key withValue:(id)value;
@end

@implementation EACellBroadcastSwitchExtension

- (void)resetItems
{
  cmasSwitch = self->_cmasSwitch;
  self->_cmasSwitch = 0;

  alwaysDeliverSwitch = self->_alwaysDeliverSwitch;
  self->_alwaysDeliverSwitch = 0;

  alertDict = self->_alertDict;
  self->_alertDict = 0;

  alertKey = self->_alertKey;
  self->_alertKey = 0;

  v7 = objc_opt_new();
  specifierArray = self->_specifierArray;
  self->_specifierArray = v7;

  v9 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_SPECIFIER_ROOT"];
  rootGroupSpecifier = self->_rootGroupSpecifier;
  self->_rootGroupSpecifier = v9;

  v11 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_SPECIFIER_ALWAYS_DELIVER"];
  alwaysDeliverGroupSpecifier = self->_alwaysDeliverGroupSpecifier;
  self->_alwaysDeliverGroupSpecifier = v11;

  v13 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_SPECIFIER_ADV"];
  groupSpecifierForEnhancedDelivery = self->_groupSpecifierForEnhancedDelivery;
  self->_groupSpecifierForEnhancedDelivery = v13;

  advancedEarthquakeWarningSwitch = self->_advancedEarthquakeWarningSwitch;
  self->_advancedEarthquakeWarningSwitch = 0;
}

- (EACellBroadcastSwitchExtension)init
{
  v5.receiver = self;
  v5.super_class = EACellBroadcastSwitchExtension;
  v2 = [(EACellBroadcastSwitchExtension *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EACellBroadcastSwitchExtension *)v2 resetItems];
  }

  return v3;
}

- (void)setCustomPreferenceForKey:(id)key withValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = _CTServerConnectionCreate();
  if (v8)
  {
    v9 = v8;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"AlertType", self->_alertKey);
    bOOLValue = [valueCopy BOOLValue];
    v12 = &kCFBooleanTrue;
    if (!bOOLValue)
    {
      v12 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, keyCopy, *v12);
    v13 = getLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      alertKey = self->_alertKey;
      bOOLValue2 = [valueCopy BOOLValue];
      v16 = @"disabled";
      if (bOOLValue2)
      {
        v16 = @"enabled";
      }

      v17 = v16;
      *buf = 138543874;
      v23 = alertKey;
      v24 = 2114;
      v25 = keyCopy;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Storing custom user pref for %{public}@ - [%{public}@: %{public}@]", buf, 0x20u);
    }

    v18 = _CTServerConnectionSetCellBroadcastCustomPrefForAlertType();
    v19 = getLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v23 = v18 >> 32;
      v24 = 1024;
      LODWORD(v25) = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Error code: %ld, Did succeed: %d", buf, 0x12u);
    }

    v20 = getLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Custom preference stored successfully", buf, 2u);
    }

    CFRelease(v9);
    CFRelease(Mutable);
  }

  else
  {
    v21 = getLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Error in creating connection to Telephony", buf, 2u);
    }
  }
}

- (void)setAlertStateforKey:(id)key withValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = _CTServerConnectionCreate();
  if (v8)
  {
    v9 = v8;
    bOOLValue = [valueCopy BOOLValue];
    v11 = getLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      alertKey = self->_alertKey;
      v13 = @"disabled";
      if (bOOLValue)
      {
        v13 = @"enabled";
      }

      v14 = v13;
      *buf = 138412546;
      v19 = alertKey;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Storing alert state for %@: %@", buf, 0x16u);
    }

    v15 = _CTServerConnectionSetCellBroadcastSettingForAlertType();
    v16 = getLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v19 = v15 >> 32;
      v20 = 1024;
      LODWORD(v21) = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Error code: %ld, Did succeed: %d", buf, 0x12u);
    }

    CFRelease(v9);
  }

  else
  {
    v17 = getLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Error in creating server connection", buf, 2u);
    }
  }
}

- (id)readAlertState:(id)state
{
  stateCopy = state;
  v5 = _CTServerConnectionCreate();
  if (v5)
  {
    v6 = v5;
    CellBroadcastSettingForAlertType = _CTServerConnectionGetCellBroadcastSettingForAlertType();
    if (HIDWORD(CellBroadcastSettingForAlertType))
    {
      v8 = CellBroadcastSettingForAlertType;
      v9 = getLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v19 = v8;
        v20 = 2048;
        v21 = v8 >> 32;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Error with CT: domain %ld code %ld ", buf, 0x16u);
      }
    }

    v10 = getLogger();
    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_24FC();
    }

    CFRelease(v6);
    v15 = [NSNumber numberWithBool:0, 0, 0, 0, 0, 0];
  }

  else
  {
    v12 = [(NSDictionary *)self->_alertDict objectForKey:@"EnabledByDefault", 0, 0, 0, 0, 0];
    v13 = v12;
    if (v12)
    {
      bOOLValue = [v12 BOOLValue];
    }

    else
    {
      v14 = getLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Malformed EnabledByDefault payload", buf, 2u);
      }

      bOOLValue = 0;
    }

    v15 = [NSNumber numberWithBool:bOOLValue];
  }

  return v15;
}

- (BOOL)readCustomPrefForKey:(id)key withDefault:(BOOL)default
{
  keyCopy = key;
  v7 = _CTServerConnectionCreate();
  if (v7)
  {
    v8 = v7;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"AlertType", self->_alertKey);
    v10 = getLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      alertKey = self->_alertKey;
      *buf = 138412290;
      v16 = alertKey;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Reading custom pref for %@", buf, 0xCu);
    }

    if (_CTServerConnectionGetCellBroadcastCustomPrefForAlertType() >> 32)
    {
      v13 = getLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_253C();
      }
    }

    else
    {
      v13 = getLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_264C(&self->_alertKey);
      }
    }

    CFRelease(v8);
    CFRelease(Mutable);
  }

  else
  {
    v12 = getLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Error creating Server connection", buf, 2u);
    }
  }

  return default;
}

- (id)getEnhancedDeliveryState
{
  v3 = [(EACellBroadcastSwitchExtension *)self readCustomPrefForKey:@"EnhancedDeliveryPref" withDefault:0];
  v4 = getLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_26C4(self, v3);
  }

  v5 = [NSNumber numberWithBool:v3];

  return v5;
}

- (void)removeEnhancedDeliveryOption
{
  if (self->_advancedEarthquakeWarningSwitch)
  {
    [(NSMutableArray *)self->_specifierArray removeObject:?];
    advancedEarthquakeWarningSwitch = self->_advancedEarthquakeWarningSwitch;
    self->_advancedEarthquakeWarningSwitch = 0;
  }
}

- (void)addEnhancedDeliveryOption
{
  v3 = getLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Visited Enhanced Delivery page.", buf, 2u);
  }

  v4 = +[SafetyAlerts sharedInterface];
  [v4 onEnhancedDeliveryPageVisited];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ENHANCED_DELIVERY_SWITCH_NAME" value:&stru_4380 table:@"Localizable~IGNEOUS"];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ENHANCED_DELIVERY_DESCRIPTION" value:&stru_4380 table:@"Localizable~IGNEOUS"];

  v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setEnhancedDeliveryState:" get:"getEnhancedDeliveryState" detail:0 cell:6 edit:0];
  advancedEarthquakeWarningSwitch = self->_advancedEarthquakeWarningSwitch;
  self->_advancedEarthquakeWarningSwitch = v9;

  [(PSSpecifier *)self->_groupSpecifierForEnhancedDelivery setProperty:v8 forKey:PSFooterTextGroupKey];
  [(NSMutableArray *)self->_specifierArray ps_addSpecifier:self->_advancedEarthquakeWarningSwitch toGroup:self->_groupSpecifierForEnhancedDelivery];
}

- (void)addAlwaysDeliverOption
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ALWAYS_DELIVER" value:&stru_4380 table:@"Localizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setAlwaysDeliverState:" get:"getAlwaysDeliverState" detail:0 cell:6 edit:0];
  alwaysDeliverSwitch = self->_alwaysDeliverSwitch;
  self->_alwaysDeliverSwitch = v5;

  alwaysDeliverGroupSpecifier = self->_alwaysDeliverGroupSpecifier;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ALWAYS_DELIVER_MESSAGE" value:&stru_4380 table:@"Localizable"];
  [(PSSpecifier *)alwaysDeliverGroupSpecifier setProperty:v9 forKey:PSFooterTextGroupKey];

  specifierArray = self->_specifierArray;
  v11 = self->_alwaysDeliverSwitch;
  v12 = self->_alwaysDeliverGroupSpecifier;

  [(NSMutableArray *)specifierArray ps_addSpecifier:v11 toGroup:v12];
}

- (void)removeAlwaysDeliverOption
{
  if (self->_alwaysDeliverSwitch)
  {
    [(NSMutableArray *)self->_specifierArray removeObject:?];
    alwaysDeliverSwitch = self->_alwaysDeliverSwitch;
    self->_alwaysDeliverSwitch = 0;
  }
}

- (id)getAlwaysDeliverState
{
  v3 = [(EACellBroadcastSwitchExtension *)self readCustomPrefForKey:@"AlwaysDeliverPref" withDefault:0];
  v4 = getLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_2770(self, v3);
  }

  v5 = [NSNumber numberWithBool:v3];

  return v5;
}

- (void)addRootAlertSwitch
{
  v4 = [(NSDictionary *)self->_alertDict objectForKey:@"SwitchName"];
  v3 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setAlertState:" get:"getAlertState" detail:0 cell:6 edit:0];
  [(NSMutableArray *)self->_specifierArray ps_addSpecifier:v3 toGroup:self->_rootGroupSpecifier];
}

- (id)getAlertState
{
  if (self->_alertKey)
  {
    [(EACellBroadcastSwitchExtension *)self readAlertState:?];
  }

  else
  {
    [NSNumber numberWithBool:?];
  }
  v2 = ;

  return v2;
}

- (void)setAlertState:(id)state
{
  alertKey = self->_alertKey;
  stateCopy = state;
  [(EACellBroadcastSwitchExtension *)self setAlertStateforKey:alertKey withValue:stateCopy];
  bOOLValue = [stateCopy BOOLValue];

  v7 = getLogger();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Adding Advanced options", buf, 2u);
    }

    [(EACellBroadcastSwitchExtension *)self addAlwaysDeliverOption];
    [(EACellBroadcastSwitchExtension *)self addEnhancedDeliveryOption];
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Removing Advanced options", v9, 2u);
    }

    [(EACellBroadcastSwitchExtension *)self removeAlwaysDeliverOption];
    [(EACellBroadcastSwitchExtension *)self removeEnhancedDeliveryOption];
  }
}

- (id)specifiers
{
  selfCopy = self;
  [(EACellBroadcastSwitchExtension *)self resetItems];
  specifier = [(EACellBroadcastSwitchExtension *)selfCopy specifier];
  v4 = [specifier propertyForKey:@"AlertKey"];
  alertKey = selfCopy->_alertKey;
  selfCopy->_alertKey = v4;

  specifier2 = [(EACellBroadcastSwitchExtension *)selfCopy specifier];
  v7 = [specifier2 propertyForKey:@"AlertDetail"];
  alertDict = selfCopy->_alertDict;
  selfCopy->_alertDict = v7;

  v9 = getLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = selfCopy->_alertKey;
    v11 = selfCopy->_alertDict;
    *buf = 138412546;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Custom settings for %@ - %@", buf, 0x16u);
  }

  v12 = [(EACellBroadcastSwitchExtension *)selfCopy readAlertState:selfCopy->_alertKey];
  [(NSMutableArray *)selfCopy->_specifierArray addObject:selfCopy->_rootGroupSpecifier];
  [(EACellBroadcastSwitchExtension *)selfCopy addRootAlertSwitch];
  bOOLValue = [v12 BOOLValue];
  v14 = getLogger();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Root alert is enabled - Adding other options", buf, 2u);
    }

    v16 = [(NSDictionary *)selfCopy->_alertDict objectForKeyedSubscript:@"CustomPreferences"];
    v14 = v16;
    if (!v16 || [v16 count]>= 3)
    {
      v17 = getLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_281C();
      }

      goto LABEL_30;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v14;
    v18 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v18)
    {

      goto LABEL_30;
    }

    v19 = v18;
    v30 = v12;
    v31 = selfCopy;
    v20 = 0;
    v21 = 0;
    v22 = *v33;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v14);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        v25 = [v24 objectForKeyedSubscript:@"ShowAlwaysDeliverSwitch"];

        if (v25)
        {
          v20 = 1;
        }

        else
        {
          v26 = [v24 objectForKeyedSubscript:@"EnableEnhancedDelivery"];

          v21 |= v26 != 0;
        }
      }

      v19 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v19);

    if (v21)
    {
      selfCopy = v31;
      [(NSMutableArray *)v31->_specifierArray addObject:v31->_groupSpecifierForEnhancedDelivery];
      [(EACellBroadcastSwitchExtension *)v31 addEnhancedDeliveryOption];
      if ((v20 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      selfCopy = v31;
      if ((v20 & 1) == 0)
      {
LABEL_29:
        v12 = v30;
        goto LABEL_30;
      }
    }

    [(NSMutableArray *)selfCopy->_specifierArray addObject:selfCopy->_alwaysDeliverGroupSpecifier];
    [(EACellBroadcastSwitchExtension *)selfCopy addAlwaysDeliverOption];
    goto LABEL_29;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Root alert is disabled - not adding other customizations", buf, 2u);
  }

LABEL_30:

  objc_storeStrong(&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], selfCopy->_specifierArray);
  specifierArray = selfCopy->_specifierArray;
  v28 = specifierArray;

  return specifierArray;
}

@end