@interface NCALSubsectionSettingsController
- (id)_showAlerts:(id)alerts;
- (id)_sound:(id)_sound;
- (id)_subsectionId;
- (id)_vibration:(id)_vibration;
- (id)specifiers;
- (void)_setShowAlerts:(id)alerts withSpecifier:(id)specifier;
- (void)_setSound:(id)sound withSpecifier:(id)specifier;
- (void)_setVibration:(id)vibration withSpecifier:(id)specifier;
@end

@implementation NCALSubsectionSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"SpecifierUserInfoShowAlertString"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"_setShowAlerts:withSpecifier:" get:"_showAlerts:" detail:0 cell:6 edit:0];

    v9 = PSAllowMultilineTitleKey;
    [v8 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v5 addObject:v8];
    v10 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v10];
    v11 = [(NCALSubsectionSettingsController *)self _showAlerts:v8];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      v13 = v5;
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"SOUND" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"_setSound:withSpecifier:" get:"_sound:" detail:0 cell:6 edit:0];

      [v16 setProperty:&__kCFBooleanTrue forKey:v9];
      [v13 addObject:v16];
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"VIBRATION" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
      v8 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"_setVibration:withSpecifier:" get:"_vibration:" detail:0 cell:6 edit:0];

      v5 = v13;
      [v8 setProperty:&__kCFBooleanTrue forKey:v9];
      [v13 addObject:v8];
    }

    v19 = [v5 copy];
    v20 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v19;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_setShowAlerts:(id)alerts withSpecifier:(id)specifier
{
  bOOLValue = [alerts BOOLValue];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  _subsectionId = [(NCALSubsectionSettingsController *)self _subsectionId];
  [WeakRetained setShowAlerts:bOOLValue forSubsectionId:_subsectionId];

  [(NCALSubsectionSettingsController *)self reloadSpecifiers];
}

- (id)_showAlerts:(id)alerts
{
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  _subsectionId = [(NCALSubsectionSettingsController *)self _subsectionId];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [WeakRetained showAlertsForSubsectionId:_subsectionId]);

  return v6;
}

- (void)_setSound:(id)sound withSpecifier:(id)specifier
{
  if ([sound BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v7 = +[TLToneManager sharedToneManager];
  _subsectionId = [(NCALSubsectionSettingsController *)self _subsectionId];
  [v7 _setCurrentToneWatchAlertPolicy:v5 forAlertType:10 accountIdentifier:_subsectionId];
}

- (id)_sound:(id)_sound
{
  v4 = +[TLToneManager sharedToneManager];
  _subsectionId = [(NCALSubsectionSettingsController *)self _subsectionId];
  v6 = [v4 _currentToneWatchAlertPolicyForAlertType:10 accountIdentifier:_subsectionId];

  return [NSNumber numberWithInt:v6 == &dword_0 + 1];
}

- (void)_setVibration:(id)vibration withSpecifier:(id)specifier
{
  if ([vibration BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v7 = +[TLVibrationManager sharedVibrationManager];
  _subsectionId = [(NCALSubsectionSettingsController *)self _subsectionId];
  [v7 _setCurrentVibrationWatchAlertPolicy:v5 forAlertType:10 accountIdentifier:_subsectionId];
}

- (id)_vibration:(id)_vibration
{
  v4 = +[TLVibrationManager sharedVibrationManager];
  _subsectionId = [(NCALSubsectionSettingsController *)self _subsectionId];
  v6 = [v4 _currentVibrationWatchAlertPolicyForAlertType:10 accountIdentifier:_subsectionId];

  return [NSNumber numberWithInt:v6 == &dword_0 + 1];
}

- (id)_subsectionId
{
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"SpecifierUserInfoSubsectionID"];

  return v3;
}

@end