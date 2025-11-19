@interface HPRFSessionTrackerAppCyclingPowerZonesSizeViewController
- (HPRFSessionTrackerAppCyclingPowerZonesSizeViewController)initWithConfiguration:(id)a3 updateDelegate:(id)a4;
- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_insertZoneSizeSpecifiers:(id)a3;
- (void)_pressedZoneSizePreference:(id)a3;
- (void)setConfiguration:(id)a3;
@end

@implementation HPRFSessionTrackerAppCyclingPowerZonesSizeViewController

- (HPRFSessionTrackerAppCyclingPowerZonesSizeViewController)initWithConfiguration:(id)a3 updateDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HPRFSessionTrackerAppCyclingPowerZonesSizeViewController;
  v9 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_updateDelegate, v8);
    objc_storeStrong(&v10->_configuration, a3);
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
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self localizedPaneTitle];
  [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self setTitle:v4];

  [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self _insertZoneSizeSpecifiers:v3];
  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v7 = v3;

  v8 = *&self->BPSNotificationAppController_opaque[v5];
  v9 = v8;

  return v8;
}

- (void)_insertZoneSizeSpecifiers:(id)a3
{
  v4 = a3;
  v5 = +[WOCyclingPowerZonesConfigurationEditor allSupportedSizes];
  if ([v5 count])
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_ZONES_SIZE_GROUP_ID"];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v4 addObject:v6];
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
          v14 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self configuration];
          v15 = [v14 zones];
          v16 = [v15 count];
          v17 = [v10 integerValue];

          if (v16 == v17)
          {
            [v6 setProperty:v7 forKey:v19];
          }

          [v4 addObject:v7];

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

- (void)_pressedZoneSizePreference:(id)a3
{
  v12 = a3;
  v4 = [v12 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v12 userInfo];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 integerValue];
  v7 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self configuration];
  v8 = [v7 zones];
  v9 = [v8 count];

  if (v9 != v6)
  {
    v10 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self configuration];
    v11 = [WOCyclingPowerZonesConfigurationEditor changeZonesSizeTo:v6 using:v10];
    [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self setConfiguration:v11];

    [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self reloadSpecifiers];
  }
}

- (void)setConfiguration:(id)a3
{
  objc_storeStrong(&self->_configuration, a3);
  v5 = a3;
  v6 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)self updateDelegate];
  [v6 updateWithConfiguration:v5];
}

- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

@end