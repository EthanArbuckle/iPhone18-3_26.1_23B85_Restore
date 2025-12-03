@interface ASTDwellHotCornerController
+ (id)_cornerActionForIdentifier:(id)identifier;
- (ASTDwellHotCornerController)init;
- (id)_cornerAction:(id)action;
- (id)getCurrentActionForHomeActionListController:(id)controller;
- (id)selectSpecifier:(id)specifier;
- (id)specifiers;
- (void)homeActionListController:(id)controller selectedAction:(id)action;
@end

@implementation ASTDwellHotCornerController

- (ASTDwellHotCornerController)init
{
  v8.receiver = self;
  v8.super_class = ASTDwellHotCornerController;
  v2 = [(ASTDwellHotCornerController *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __35__ASTDwellHotCornerController_init__block_invoke;
    v5[3] = &unk_255388;
    objc_copyWeak(&v6, &location);
    [v3 registerUpdateBlock:v5 forRetrieveSelector:"assistiveTouchMouseDwellControlCornerCustomization" withListener:v2];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__ASTDwellHotCornerController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v18 = +[PSSpecifier emptyGroupSpecifier];
    v6 = settingsLocString(@"DWELL_HOT_CORNER_FOOTER", @"HandSettings");
    [v18 setProperty:v6 forKey:PSFooterTextGroupKey];

    [v5 addObject:v18];
    v7 = settingsLocString(@"DWELL_HOT_CORNER_TOP_LEFT", @"HandSettings");
    v17 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"_cornerAction:" detail:objc_opt_class() cell:2 edit:0];

    [v17 setProperty:AXSAssistiveTouchMouseDwellControlTopLeftHotCorner forKey:@"HOT_CORNER_IDENTIFIER"];
    [v17 setProperty:&off_279E10 forKey:@"HomeAction"];
    v8 = PSIDKey;
    [v17 setProperty:@"TopLeft" forKey:PSIDKey];
    [v5 addObject:v17];
    v9 = settingsLocString(@"DWELL_HOT_CORNER_TOP_RIGHT", @"HandSettings");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:"_cornerAction:" detail:objc_opt_class() cell:2 edit:0];

    [v10 setProperty:AXSAssistiveTouchMouseDwellControlTopRightHotCorner forKey:@"HOT_CORNER_IDENTIFIER"];
    [v10 setProperty:&off_279E28 forKey:@"HomeAction"];
    [v10 setProperty:@"TopRight" forKey:v8];
    [v5 addObject:v10];
    v11 = settingsLocString(@"DWELL_HOT_CORNER_BOTTOM_LEFT", @"HandSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:"_cornerAction:" detail:objc_opt_class() cell:2 edit:0];

    [v12 setProperty:AXSAssistiveTouchMouseDwellControlBottomLeftHotCorner forKey:@"HOT_CORNER_IDENTIFIER"];
    [v12 setProperty:&off_279E40 forKey:@"HomeAction"];
    [v12 setProperty:@"BottomLeft" forKey:v8];
    [v5 addObject:v12];
    v13 = settingsLocString(@"DWELL_HOT_CORNER_BOTTOM_RIGHT", @"HandSettings");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"_cornerAction:" detail:objc_opt_class() cell:2 edit:0];

    [v14 setProperty:AXSAssistiveTouchMouseDwellControlBottomRightHotCorner forKey:@"HOT_CORNER_IDENTIFIER"];
    [v14 setProperty:&off_279E58 forKey:@"HomeAction"];
    [v14 setProperty:@"BottomRight" forKey:v8];
    [v5 addObject:v14];
    v15 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)selectSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = ASTDwellHotCornerController;
  v4 = [(ASTDwellHotCornerController *)&v6 selectSpecifier:specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDelegate:self];
  }

  return v4;
}

- (id)_cornerAction:(id)action
{
  v3 = [action propertyForKey:@"HOT_CORNER_IDENTIFIER"];
  v4 = [ASTDwellHotCornerController _cornerActionForIdentifier:v3];
  if (v4)
  {
    v5 = AXUIAssistiveTouchStringForName();
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    v6 = AXParameterizedLocalizedString();
  }

  return v6;
}

+ (id)_cornerActionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[AXSettings sharedInstance];
  assistiveTouchMouseDwellControlCornerCustomization = [v4 assistiveTouchMouseDwellControlCornerCustomization];

  v6 = [assistiveTouchMouseDwellControlCornerCustomization objectForKey:identifierCopy];

  if ([v6 isEqualToString:@"__NONE__"])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)getCurrentActionForHomeActionListController:(id)controller
{
  homeActionType = [controller homeActionType];
  if ((homeActionType - 6) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [ASTDwellHotCornerController _cornerActionForIdentifier:**(&off_256B40 + (homeActionType - 6))];
  }

  return v4;
}

- (void)homeActionListController:(id)controller selectedAction:(id)action
{
  actionCopy = action;
  controllerCopy = controller;
  v6 = +[AXSettings sharedInstance];
  assistiveTouchMouseDwellControlCornerCustomization = [v6 assistiveTouchMouseDwellControlCornerCustomization];
  v8 = [assistiveTouchMouseDwellControlCornerCustomization mutableCopy];

  homeActionType = [controllerCopy homeActionType];
  if ((homeActionType - 6) <= 3)
  {
    [v8 setObject:actionCopy forKeyedSubscript:**(&off_256B40 + (homeActionType - 6))];
    v10 = +[AXSettings sharedInstance];
    [v10 setAssistiveTouchMouseDwellControlCornerCustomization:v8];
  }
}

@end