@interface AXFlashForLEDController
- (id)flashWhileUnlocked:(id)a3;
- (id)ledFlashEnabled:(id)a3;
- (id)ringerSwitchControl:(id)a3;
- (id)specifiers;
- (void)setFlashWhileUnlocked:(id)a3 specifier:(id)a4;
- (void)setLEDFlashEnabled:(id)a3 specifier:(id)a4;
- (void)setRingerSwitchControl:(id)a3 specifier:(id)a4;
@end

@implementation AXFlashForLEDController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [objc_allocWithZone(NSMutableArray) init];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = settingsLocString(@"FLASH_LED", @"Accessibility");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setLEDFlashEnabled:specifier:" get:"ledFlashEnabled:" detail:0 cell:6 edit:0];

    v9 = PSIDKey;
    [v8 setProperty:@"LED_FLASH" forKey:PSIDKey];
    [v5 addObject:v8];
    v10 = +[PSSpecifier emptyGroupSpecifier];

    v11 = settingsLocString(@"LED_RINGER_SWITCH_CONTROL_FOOTER", @"Accessibility");
    [v10 setProperty:v11 forKey:PSFooterTextGroupKey];

    [v5 addObject:v10];
    v12 = settingsLocString(@"LED_FLASH_WHILE_UNLOCKED", @"Accessibility");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setFlashWhileUnlocked:specifier:" get:"flashWhileUnlocked:" detail:0 cell:6 edit:0];

    [v13 setProperty:@"LED_FLASH_WHILE_UNLOCKED" forKey:v9];
    [v5 addObject:v13];
    v14 = settingsLocString(@"LED_RINGER_SWITCH_CONTROL", @"Accessibility");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setRingerSwitchControl:specifier:" get:"ringerSwitchControl:" detail:0 cell:6 edit:0];

    [v15 setProperty:@"LED_RINGER_SWITCH_CONTROL" forKey:v9];
    [v5 addObject:v15];
    [(AXFlashForLEDController *)self setupLongTitleSpecifiers:v5];
    v16 = [v5 copy];
    v17 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v16;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)setFlashWhileUnlocked:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setShouldFlashWhileUnlocked:v4];
}

- (id)flashWhileUnlocked:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 shouldFlashWhileUnlocked]);

  return v4;
}

- (void)setRingerSwitchControl:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setShouldFlashForAlertInSilentMode:v4];
}

- (id)ringerSwitchControl:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 shouldFlashForAlertInSilentMode]);

  return v4;
}

- (void)setLEDFlashEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSVisualAlertSetEnabled(v4);
}

- (id)ledFlashEnabled:(id)a3
{
  v3 = _AXSVisualAlertEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

@end