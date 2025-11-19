@interface AXAppleTVController
- (id)_liveTVButtonsEnabled:(id)a3;
- (id)_simpleGestures:(id)a3;
- (id)specifiers;
- (void)_setLiveTVButtonsEnabled:(id)a3 specifier:(id)a4;
- (void)_setSimpleGestures:(id)a3 specifier:(id)a4;
@end

@implementation AXAppleTVController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v18 = +[PSSpecifier emptyGroupSpecifier];
    v6 = AXLocStringKeyForModel();
    v7 = settingsLocString(v6, @"Accessibility");
    v8 = PSFooterTextGroupKey;
    [v18 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v18];
    v9 = settingsLocString(@"AppleTVSimpleGestures", @"Accessibility");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setSimpleGestures:specifier:" get:"_simpleGestures:" detail:0 cell:6 edit:0];

    v11 = PSIDKey;
    [v10 setProperty:@"AppleTVSimpleGestures" forKey:PSIDKey];
    [v5 addObject:v10];
    v12 = +[PSSpecifier emptyGroupSpecifier];
    v13 = settingsLocString(@"AppleTVLiveTVButtonsFooter", @"Accessibility");
    [v12 setProperty:v13 forKey:v8];

    [v5 addObject:v12];
    v14 = settingsLocString(@"AppleTVLiveTVButtons", @"Accessibility");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"_setLiveTVButtonsEnabled:specifier:" get:"_liveTVButtonsEnabled:" detail:0 cell:6 edit:0];

    [v15 setProperty:@"AppleTVLiveTVButtons" forKey:v11];
    [v5 addObject:v15];
    v16 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_setSimpleGestures:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSSetAppleTVRemoteUsesSimpleGestures(v4);
}

- (id)_simpleGestures:(id)a3
{
  v3 = _AXSAppleTVRemoteUsesSimpleGestures();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)_setLiveTVButtonsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSSetAppleTVRemoteForceLiveTVButtons(v4);
}

- (id)_liveTVButtonsEnabled:(id)a3
{
  v3 = _AXSAppleTVRemoteForceLiveTVButtons();

  return [NSNumber numberWithUnsignedChar:v3];
}

@end