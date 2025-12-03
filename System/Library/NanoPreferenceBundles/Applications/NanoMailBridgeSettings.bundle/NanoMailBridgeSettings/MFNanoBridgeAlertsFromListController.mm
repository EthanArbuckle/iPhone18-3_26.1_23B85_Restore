@interface MFNanoBridgeAlertsFromListController
- (id)_showAlerts:(id)alerts;
- (id)_sound:(id)_sound;
- (id)_vibration:(id)_vibration;
- (id)specifiers;
- (void)_setShowAlerts:(id)alerts withSpecifier:(id)specifier;
- (void)_setSound:(id)sound withSpecifier:(id)specifier;
- (void)_setVibration:(id)vibration withSpecifier:(id)specifier;
@end

@implementation MFNanoBridgeAlertsFromListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SHOW_ALERTS_FROM_FORMAT %@" value:&stru_34FF0 table:@"Main"];
    v8 = OBJC_IVAR___PSViewController__specifier;
    name = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] name];
    v10 = [NSString stringWithFormat:v7, name];
    v11 = _ConfigurePSSpecifier(v5, v10, self, "_setShowAlerts:withSpecifier:", "_showAlerts:", 0, 0, 0, 6, 0, 0, 0, 0);

    v12 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v12];
    v13 = [(MFNanoBridgeAlertsFromListController *)self _showAlerts:*&self->PSListController_opaque[v8]];
    LODWORD(name) = [v13 BOOLValue];

    if (name)
    {
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"SOUND" value:&stru_34FF0 table:@"Main"];
      v16 = _ConfigurePSSpecifier(v5, v15, self, "_setSound:withSpecifier:", "_sound:", 0, 0, 0, 6, 0, 0, 0, 0);

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"VIBRATION" value:&stru_34FF0 table:@"Main"];
      v19 = _ConfigurePSSpecifier(v5, v18, self, "_setVibration:withSpecifier:", "_vibration:", 0, 0, 0, 6, 0, 0, 0, 0);
    }

    v20 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_setShowAlerts:(id)alerts withSpecifier:(id)specifier
{
  alertsCopy = alerts;
  specifier = [(MFNanoBridgeAlertsFromListController *)self specifier];
  userInfo = [specifier userInfo];
  [userInfo setObject:alertsCopy forKeyedSubscript:BPSNanoBulletinShowsAlerts];

  parentController = [(MFNanoBridgeAlertsFromListController *)self parentController];
  specifier2 = [(MFNanoBridgeAlertsFromListController *)self specifier];
  [parentController saveShowAlertsForSpecifier:specifier2];

  [(MFNanoBridgeAlertsFromListController *)self reloadSpecifiers];
}

- (id)_showAlerts:(id)alerts
{
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v4 = [userInfo objectForKeyedSubscript:BPSNanoBulletinShowsAlerts];

  return v4;
}

- (void)_setSound:(id)sound withSpecifier:(id)specifier
{
  soundCopy = sound;
  if ([soundCopy BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = +[TLToneManager sharedToneManager];
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v8 = [userInfo objectForKeyedSubscript:BPSNanoBulletinSubsectionId];
  [v6 _setCurrentToneWatchAlertPolicy:v5 forAlertType:5 topic:v8];
}

- (id)_sound:(id)_sound
{
  v4 = +[TLToneManager sharedToneManager];
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [userInfo objectForKeyedSubscript:BPSNanoBulletinSubsectionId];
  v7 = [v4 _currentToneWatchAlertPolicyForAlertType:5 topic:v6];

  v8 = [NSNumber numberWithInt:v7 == &dword_0 + 1];

  return v8;
}

- (void)_setVibration:(id)vibration withSpecifier:(id)specifier
{
  vibrationCopy = vibration;
  if ([vibrationCopy BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = +[TLVibrationManager sharedVibrationManager];
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v8 = [userInfo objectForKeyedSubscript:BPSNanoBulletinSubsectionId];
  [v6 _setCurrentVibrationWatchAlertPolicy:v5 forAlertType:5 topic:v8];
}

- (id)_vibration:(id)_vibration
{
  v4 = +[TLVibrationManager sharedVibrationManager];
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [userInfo objectForKeyedSubscript:BPSNanoBulletinSubsectionId];
  v7 = [v4 _currentVibrationWatchAlertPolicyForAlertType:5 topic:v6];

  v8 = [NSNumber numberWithInt:v7 == &dword_0 + 1];

  return v8;
}

@end