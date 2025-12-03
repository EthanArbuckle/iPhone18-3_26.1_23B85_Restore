@interface ACSettingsDND
- (ACSettingsDND)init;
- (BOOL)enabled;
- (void)setEnabled:(BOOL)enabled;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
@end

@implementation ACSettingsDND

- (ACSettingsDND)init
{
  v14.receiver = self;
  v14.super_class = ACSettingsDND;
  v2 = [(ACSettingsDND *)&v14 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTING_DND");
    name = v2->super.super._name;
    v2->super.super._name = v3;

    v2->super._settingsDetailClass = 0;
    v5 = [DNDStateService serviceForClientIdentifier:@"com.apple.siri.Settings"];
    dndStateService = v2->_dndStateService;
    v2->_dndStateService = v5;

    v7 = v2->_dndStateService;
    v13 = 0;
    v8 = [(DNDStateService *)v7 addStateUpdateListener:v2 error:&v13];
    v9 = v13;
    if ((v8 & 1) == 0 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_4234();
    }

    v10 = [DNDModeAssertionService serviceForClientIdentifier:@"com.apple.siri.Settings"];
    dndModeAssertionService = v2->_dndModeAssertionService;
    v2->_dndModeAssertionService = v10;
  }

  return v2;
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = DNDDefaultModeIdentifier;
    v5 = [DNDModeAssertionLifetime lifetimeUntilEndOfScheduleWithIdentifier:DNDDefaultScheduleIdentifier];
    v6 = [DNDModeAssertionDetails detailsWithIdentifier:@"com.apple.siri.Settings" modeIdentifier:v4 lifetime:v5];

    dndModeAssertionService = self->_dndModeAssertionService;
    v10 = 0;
    v8 = [(DNDModeAssertionService *)dndModeAssertionService takeModeAssertionWithDetails:v6 error:&v10];
    v9 = v10;

    if (!v8 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_4328();
    }
  }

  else if (([(DNDModeAssertionService *)self->_dndModeAssertionService invalidateAllActiveModeAssertionsWithError:0]& 1) == 0 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_42AC();
  }
}

- (BOOL)enabled
{
  dndStateService = self->_dndStateService;
  v7 = 0;
  v3 = [(DNDStateService *)dndStateService queryCurrentStateWithError:&v7];
  v4 = v7;
  isActive = [v3 isActive];

  if (v4 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_43A0();
  }

  return isActive;
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v5 = [(ACSettingsBasicSetting *)self delegate:service];
  [v5 settingChangedExternally:self];
}

@end