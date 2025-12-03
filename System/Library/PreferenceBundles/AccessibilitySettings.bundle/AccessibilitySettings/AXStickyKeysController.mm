@interface AXStickyKeysController
- (AXStickyKeysController)init;
- (id)specifiers;
- (id)stickyKeysBeepEnabled:(id)enabled;
- (id)stickyKeysEnabled:(id)enabled;
- (id)stickyKeysShiftToggleEnabled:(id)enabled;
- (void)setStickyKeysBeepEnabled:(id)enabled specifier:(id)specifier;
- (void)setStickyKeysEnabled:(id)enabled specifier:(id)specifier;
- (void)setStickyKeysShiftToggleEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation AXStickyKeysController

- (AXStickyKeysController)init
{
  v8.receiver = self;
  v8.super_class = AXStickyKeysController;
  v2 = [(AXStickyKeysController *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __30__AXStickyKeysController_init__block_invoke;
    v5[3] = &unk_255388;
    objc_copyWeak(&v6, &location);
    [v3 registerUpdateBlock:v5 forRetrieveSelector:"stickyKeysEnabled" withListener:v2];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__AXStickyKeysController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"StickyKeysEnabled"];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v21 = +[PSSpecifier emptyGroupSpecifier];
    v5 = settingsLocString(@"STICKY_KEYS_FOOTER", @"KeyboardsSettings");
    v6 = PSFooterTextGroupKey;
    [v21 setProperty:v5 forKey:PSFooterTextGroupKey];

    v7 = settingsLocString(@"STICKY_KEYS", @"KeyboardsSettings");
    v20 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setStickyKeysEnabled:specifier:" get:"stickyKeysEnabled:" detail:0 cell:6 edit:0];

    v8 = PSIDKey;
    [v20 setProperty:@"StickyKeysEnabled" forKey:PSIDKey];
    v9 = +[PSSpecifier emptyGroupSpecifier];
    v10 = settingsLocString(@"STICKY_KEYS_SHIFT_TOGGLE_FOOTER", @"KeyboardsSettings");
    [v9 setProperty:v10 forKey:v6];

    v11 = settingsLocString(@"STICKY_KEYS_SHIFT_TOGGLE", @"KeyboardsSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setStickyKeysShiftToggleEnabled:specifier:" get:"stickyKeysShiftToggleEnabled:" detail:0 cell:6 edit:0];

    [v12 setProperty:@"StickyKeysShiftToggle" forKey:v8];
    v13 = +[PSSpecifier emptyGroupSpecifier];
    v14 = settingsLocString(@"STICKY_KEYS_BEEP_FOOTER", @"KeyboardsSettings");
    [v13 setProperty:v14 forKey:v6];

    v15 = settingsLocString(@"STICKY_KEYS_BEEP", @"KeyboardsSettings");
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setStickyKeysBeepEnabled:specifier:" get:"stickyKeysBeepEnabled:" detail:0 cell:6 edit:0];

    [v16 setProperty:@"StickyKeysSound" forKey:v8];
    v22[0] = v21;
    v22[1] = v20;
    v22[2] = v9;
    v22[3] = v12;
    v22[4] = v13;
    v22[5] = v16;
    v17 = [NSArray arrayWithObjects:v22 count:6];
    v18 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v17;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)setStickyKeysEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setStickyKeysEnabled:bOOLValue];
}

- (id)stickyKeysEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 stickyKeysEnabled]);

  return v4;
}

- (void)setStickyKeysShiftToggleEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setStickyKeysShiftToggleEnabled:bOOLValue];
}

- (id)stickyKeysShiftToggleEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 stickyKeysShiftToggleEnabled]);

  return v4;
}

- (void)setStickyKeysBeepEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setStickyKeysBeepEnabled:bOOLValue];
}

- (id)stickyKeysBeepEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 stickyKeysBeepEnabled]);

  return v4;
}

@end