@interface NanoMapsSettingsController
- (NanoMapsSettingsController)initWithCoder:(id)coder;
- (NanoMapsSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_legacyTurnAlertsEnabled:(id)enabled;
- (id)_turnAlertsEnabled:(id)enabled;
- (id)applicationGroupSpecifiers;
- (id)localizedPaneTitle;
- (void)_createSpecifiers;
- (void)_setCarPlayDrivingTurnAlertsEnabled:(id)enabled specifier:(id)specifier;
- (void)_setCyclingTurnAlertsEnabled:(id)enabled specifier:(id)specifier;
- (void)_setDrivingTurnAlertsEnabled:(id)enabled specifier:(id)specifier;
- (void)_setTransitTurnAlertsEnabled:(id)enabled specifier:(id)specifier;
- (void)_setTurnAlertsEnabled:(id)enabled forKey:(id)key;
- (void)_setWalkingTurnAlertsEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation NanoMapsSettingsController

- (NanoMapsSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = NanoMapsSettingsController;
  v4 = [(NanoMapsSettingsController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(NanoMapsSettingsController *)v4 _createSpecifiers];
  }

  return v5;
}

- (NanoMapsSettingsController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NanoMapsSettingsController;
  v3 = [(NanoMapsSettingsController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NanoMapsSettingsController *)v3 _createSpecifiers];
  }

  return v4;
}

- (void)_createSpecifiers
{
  v3 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v4 = [v3 localizedStringForKey:@"Turn Alerts [Bridge Title]" value:@"localized string not found" table:0];
  v5 = [PSSpecifier groupSpecifierWithName:v4];
  turnAlertsGroup = self->_turnAlertsGroup;
  self->_turnAlertsGroup = v5;

  v7 = self->_turnAlertsGroup;
  v8 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v9 = [v8 localizedStringForKey:@"Turn Alerts Description [Bridge]" value:@"localized string not found" table:0];
  v10 = PSFooterTextGroupKey;
  [(PSSpecifier *)v7 setProperty:v9 forKey:PSFooterTextGroupKey];

  v11 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v12 = [v11 localizedStringForKey:@"Show Navigation [Bridge]" value:@"localized string not found" table:0];
  v13 = [PSSpecifier groupSpecifierWithName:v12];
  showNavGroup = self->_showNavGroup;
  self->_showNavGroup = v13;

  v15 = self->_showNavGroup;
  v16 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v17 = [v16 localizedStringForKey:@"Show Navigation Description [Bridge]" value:@"localized string not found" table:0];
  [(PSSpecifier *)v15 setProperty:v17 forKey:v10];

  v18 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v19 = [v18 localizedStringForKey:@"Turn Alerts [Bridge Switch]" value:@"localized string not found" table:0];
  v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"_setLegacyTurnAlertsEnabled:specifier:" get:"_legacyTurnAlertsEnabled:" detail:0 cell:6 edit:0];
  legacyAlertSwitch = self->_legacyAlertSwitch;
  self->_legacyAlertSwitch = v20;

  v22 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v23 = [v22 localizedStringForKey:@"Driving [Bridge]" value:@"localized string not found" table:0];
  v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:"_setDrivingTurnAlertsEnabled:specifier:" get:"_drivingTurnAlertsEnabled:" detail:0 cell:6 edit:0];
  drivingAlertSwitch = self->_drivingAlertSwitch;
  self->_drivingAlertSwitch = v24;

  v26 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v27 = [v26 localizedStringForKey:@"Driving with CarPlay [Bridge]" value:@"localized string not found" table:0];
  v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:"_setCarPlayDrivingTurnAlertsEnabled:specifier:" get:"_carPlayDrivingTurnAlertsEnabled:" detail:0 cell:6 edit:0];
  carPlayDrivingAlertSwitch = self->_carPlayDrivingAlertSwitch;
  self->_carPlayDrivingAlertSwitch = v28;

  v30 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v31 = [v30 localizedStringForKey:@"Walking [Bridge]" value:@"localized string not found" table:0];
  v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:"_setWalkingTurnAlertsEnabled:specifier:" get:"_walkingTurnAlertsEnabled:" detail:0 cell:6 edit:0];
  walkingAlertSwitch = self->_walkingAlertSwitch;
  self->_walkingAlertSwitch = v32;

  v34 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v35 = [v34 localizedStringForKey:@"Transit [Bridge]" value:@"localized string not found" table:0];
  v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:"_setTransitTurnAlertsEnabled:specifier:" get:"_transitTurnAlertsEnabled:" detail:0 cell:6 edit:0];
  transitAlertSwitch = self->_transitAlertSwitch;
  self->_transitAlertSwitch = v36;

  v38 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v39 = [v38 localizedStringForKey:@"Cycling [Bridge]" value:@"localized string not found" table:0];
  v40 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:"_setCyclingTurnAlertsEnabled:specifier:" get:"_cyclingTurnAlertsEnabled:" detail:0 cell:6 edit:0];
  cyclingAlertSwitch = self->_cyclingAlertSwitch;
  self->_cyclingAlertSwitch = v40;

  v45 = [NanoMapsSettingsManager stringForKey:@"Build_Info"];
  v42 = +[GEOPlatform sharedPlatform];
  LODWORD(v38) = [v42 isInternalInstall];

  if (v38 && v45)
  {
    v43 = [PSSpecifier groupSpecifierWithName:@"Build Info:"];
    buildInfoGroup = self->_buildInfoGroup;
    self->_buildInfoGroup = v43;

    [(PSSpecifier *)self->_buildInfoGroup setProperty:v45 forKey:v10];
  }
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"NanoMapsSettingsController")];
  v3 = [v2 localizedStringForKey:@"Maps [Bridge]" value:@"localized string not found" table:0];

  return v3;
}

- (id)applicationGroupSpecifiers
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v3 getActivePairedDevice];

  v5 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemVersion];
  v6 = [v5 componentsSeparatedByString:@"."];

  if ([v6 count] && (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "integerValue"), v7, v8 >= 5))
  {
    drivingAlertSwitch = self->_drivingAlertSwitch;
    carPlayDrivingAlertSwitch = self->_carPlayDrivingAlertSwitch;
    v19[0] = self->_turnAlertsGroup;
    v19[1] = drivingAlertSwitch;
    walkingAlertSwitch = self->_walkingAlertSwitch;
    v19[2] = carPlayDrivingAlertSwitch;
    v19[3] = walkingAlertSwitch;
    showNavGroup = self->_showNavGroup;
    v19[4] = self->_cyclingAlertSwitch;
    v19[5] = showNavGroup;
    v19[6] = self->_transitAlertSwitch;
    v13 = [NSArray arrayWithObjects:v19 count:7];
    v14 = v13;
    if (self->_buildInfoGroup)
    {
      v15 = [v13 arrayByAddingObject:?];

      v14 = v15;
    }
  }

  else
  {
    legacyAlertSwitch = self->_legacyAlertSwitch;
    v18[0] = self->_turnAlertsGroup;
    v18[1] = legacyAlertSwitch;
    v14 = [NSArray arrayWithObjects:v18 count:2];
  }

  return v14;
}

- (void)_setTurnAlertsEnabled:(id)enabled forKey:(id)key
{
  enabledCopy = enabled;
  keyCopy = key;
  v7 = MAPSGetTurnAlertsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = keyCopy;
    v10 = 2112;
    v11 = enabledCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[NanoMaps] Setting turn alerts %@ to %@", &v8, 0x16u);
  }

  +[NanoMapsSettingsManager setBool:forKey:](NanoMapsSettingsManager, "setBool:forKey:", [enabledCopy BOOLValue], keyCopy);
}

- (id)_turnAlertsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [NanoMapsSettingsManager BOOLForKey:enabledCopy defaultValue:[NanoMapsSettingsManager BOOLForKey:@"turnAlertsEnabled" defaultValue:1]];

  return [NSNumber numberWithBool:v4];
}

- (id)_legacyTurnAlertsEnabled:(id)enabled
{
  v3 = [NanoMapsSettingsManager BOOLForKey:@"turnAlertsEnabled" defaultValue:1];

  return [NSNumber numberWithBool:v3];
}

- (void)_setDrivingTurnAlertsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  [(NanoMapsSettingsController *)self _setTurnAlertsEnabled:enabledCopy forKey:@"drivingTurnAlertsEnabled"];
  bOOLValue = [enabledCopy BOOLValue];

  [NanoMapsSettingsManager setBool:bOOLValue ^ 1 forKey:@"navVoiceMutedForDrivingTurnAlerts"];
}

- (void)_setCarPlayDrivingTurnAlertsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  [(NanoMapsSettingsController *)self _setTurnAlertsEnabled:enabledCopy forKey:@"carPlayDrivingTurnAlertsEnabled"];
  bOOLValue = [enabledCopy BOOLValue];

  [NanoMapsSettingsManager setBool:bOOLValue ^ 1 forKey:@"navVoiceMutedForCarPlayDrivingTurnAlerts"];
}

- (void)_setWalkingTurnAlertsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  [(NanoMapsSettingsController *)self _setTurnAlertsEnabled:enabledCopy forKey:@"walkingTurnAlertsEnabled"];
  bOOLValue = [enabledCopy BOOLValue];

  [NanoMapsSettingsManager setBool:bOOLValue ^ 1 forKey:@"navVoiceMutedForWalkingTurnAlerts"];
}

- (void)_setTransitTurnAlertsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  [(NanoMapsSettingsController *)self _setTurnAlertsEnabled:enabledCopy forKey:@"transitTurnAlertsEnabled"];
  bOOLValue = [enabledCopy BOOLValue];

  [NanoMapsSettingsManager setBool:bOOLValue ^ 1 forKey:@"navVoiceMutedForTransitTurnAlerts"];
}

- (void)_setCyclingTurnAlertsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  [(NanoMapsSettingsController *)self _setTurnAlertsEnabled:enabledCopy forKey:@"cyclingTurnAlertsEnabled"];
  bOOLValue = [enabledCopy BOOLValue];

  [NanoMapsSettingsManager setBool:bOOLValue ^ 1 forKey:@"navVoiceMutedForCyclingTurnAlerts"];
}

@end