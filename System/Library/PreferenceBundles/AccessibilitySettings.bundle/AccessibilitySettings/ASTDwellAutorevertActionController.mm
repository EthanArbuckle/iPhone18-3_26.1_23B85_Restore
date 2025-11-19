@interface ASTDwellAutorevertActionController
- (ASTDwellAutorevertActionController)init;
- (id)dwellControlAutorevertEnabled:(id)a3;
- (id)specifiers;
- (void)setDwellControlAutorevertEnabled:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ASTDwellAutorevertActionController

- (ASTDwellAutorevertActionController)init
{
  v8.receiver = self;
  v8.super_class = ASTDwellAutorevertActionController;
  v2 = [(ASTDwellAutorevertActionController *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __42__ASTDwellAutorevertActionController_init__block_invoke;
    v5[3] = &unk_255388;
    objc_copyWeak(&v6, &location);
    [v3 registerUpdateBlock:v5 forRetrieveSelector:"assistiveTouchMouseDwellControlAutorevertEnabled" withListener:v2];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__ASTDwellAutorevertActionController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"DwellAutorevertEnabled" animated:0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithName:0];
    v7 = settingsLocString(@"MOUSE_POINTER_DWELL_AUTOREVERT_FOOTER", @"HandSettings");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = settingsLocString(@"MOUSE_POINTER_DWELL_AUTOREVERT_ENABLED", @"HandSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setDwellControlAutorevertEnabled:specifier:" get:"dwellControlAutorevertEnabled:" detail:0 cell:6 edit:0];

    v10 = PSIDKey;
    [v9 setProperty:@"DwellAutorevertEnabled" forKey:PSIDKey];
    v26 = v9;
    [v5 addObject:v9];
    v11 = [PSSpecifier groupSpecifierWithName:0];

    [v11 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v11 setProperty:@"AutorevertActionGroupID" forKey:v10];
    [v5 addObject:v11];
    v12 = AXAssistiveTouchIconTypeDwellClick;
    v13 = AXUIAssistiveTouchStringForName();
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:v12 forKey:@"AutorevertActionValueKey"];
    [v5 addObject:v14];
    v15 = AXAssistiveTouchIconTypeDwellPause;
    v16 = AXUIAssistiveTouchStringForName();
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setProperty:v15 forKey:@"AutorevertActionValueKey"];
    v18 = v5;
    [v5 addObject:v17];
    v19 = +[AXSettings sharedInstance];
    v20 = [v19 assistiveTouchMouseDwellControlAutorevertAction];

    v21 = [v20 isEqualToString:v12];
    v22 = v14;
    if ((v21 & 1) != 0 || (v23 = [v20 isEqualToString:v15], v22 = v17, v23))
    {
      [v11 setProperty:v22 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v24 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v18;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = ASTDwellAutorevertActionController;
  v6 = a4;
  [(ASTDwellAutorevertActionController *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [v6 section];

  v8 = [(ASTDwellAutorevertActionController *)self specifierAtIndex:[(ASTDwellAutorevertActionController *)self indexOfGroup:v7]];
  v9 = [v8 propertyForKey:PSIDKey];
  v10 = [v9 isEqualToString:@"AutorevertActionGroupID"];

  if (v10)
  {
    v11 = [v8 propertyForKey:PSRadioGroupCheckedSpecifierKey];
    v12 = [v11 propertyForKey:@"AutorevertActionValueKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[AXSettings sharedInstance];
      [v13 setAssistiveTouchMouseDwellControlAutorevertAction:v12];
    }
  }
}

- (id)dwellControlAutorevertEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseDwellControlAutorevertEnabled]);

  return v4;
}

- (void)setDwellControlAutorevertEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseDwellControlAutorevertEnabled:v4];
}

@end