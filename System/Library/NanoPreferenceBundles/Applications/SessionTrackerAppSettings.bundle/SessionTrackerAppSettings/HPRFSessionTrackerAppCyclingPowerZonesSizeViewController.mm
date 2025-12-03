@interface HPRFSessionTrackerAppCyclingPowerZonesSizeViewController
- (HPRFSessionTrackerAppCyclingPowerZonesSizeViewController)initWithConfiguration:(id)configuration updateDelegate:(id)delegate;
- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_insertZoneSizeSpecifiers:(id)specifiers;
- (void)_pressedZoneSizePreference:(id)preference;
- (void)setConfiguration:(id)configuration;
@end

@implementation HPRFSessionTrackerAppCyclingPowerZonesSizeViewController

- (HPRFSessionTrackerAppCyclingPowerZonesSizeViewController)initWithConfiguration:(id)configuration updateDelegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HPRFSessionTrackerAppCyclingPowerZonesSizeViewController;
  v9 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_updateDelegate, delegateCopy);
    objc_storeStrong(&v10->_configuration, configuration);
  }

  return v10;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_POWER_ZONES_SIZE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v4 = [NSString stringWithFormat:v3];

  return v4;
}

- (id)applicationBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)specifiers
{
  v3 = objc_opt_new();
  localizedPaneTitle = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self localizedPaneTitle];
  [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self setTitle:localizedPaneTitle];

  [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self _insertZoneSizeSpecifiers:v3];
  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v7 = v3;

  v8 = *&self->BPSNotificationAppController_opaque[v5];
  v9 = v8;

  return v8;
}

- (void)_insertZoneSizeSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v5 = +[WOCyclingPowerZonesConfigurationEditor allSupportedSizes];
  if ([v5 count])
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_ZONES_SIZE_GROUP_ID"];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [specifiersCopy addObject:v6];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v5;
    v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v22)
    {
      v18 = v5;
      v7 = 0;
      v21 = *v24;
      v19 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        v8 = 0;
        v9 = v7;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * v8);
          v11 = [NSBundle bundleForClass:objc_opt_class()];
          v12 = [v11 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_POWER_ZONES_SIZE_ITEM_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
          v13 = [NSString localizedStringWithFormat:v12, v10];

          v7 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v7 setUserInfo:v10];
          [v7 setButtonAction:"_pressedZoneSizePreference:"];
          configuration = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self configuration];
          zones = [configuration zones];
          v16 = [zones count];
          integerValue = [v10 integerValue];

          if (v16 == integerValue)
          {
            [v6 setProperty:v7 forKey:v19];
          }

          [specifiersCopy addObject:v7];

          v8 = v8 + 1;
          v9 = v7;
        }

        while (v22 != v8);
        v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v22);

      v5 = v18;
    }
  }
}

- (void)_pressedZoneSizePreference:(id)preference
{
  preferenceCopy = preference;
  userInfo = [preferenceCopy userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [preferenceCopy userInfo];
  }

  else
  {
    userInfo2 = 0;
  }

  integerValue = [userInfo2 integerValue];
  configuration = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self configuration];
  zones = [configuration zones];
  v9 = [zones count];

  if (v9 != integerValue)
  {
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self configuration];
    v11 = [WOCyclingPowerZonesConfigurationEditor changeZonesSizeTo:integerValue using:configuration2];
    [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self setConfiguration:v11];

    [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self reloadSpecifiers];
  }
}

- (void)setConfiguration:(id)configuration
{
  objc_storeStrong(&self->_configuration, configuration);
  configurationCopy = configuration;
  updateDelegate = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self updateDelegate];
  [updateDelegate updateWithConfiguration:configurationCopy];
}

- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

@end