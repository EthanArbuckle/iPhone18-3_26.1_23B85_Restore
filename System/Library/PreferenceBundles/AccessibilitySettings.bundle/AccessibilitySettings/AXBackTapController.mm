@interface AXBackTapController
- (AXBackTapController)init;
- (id)actionForActionPickerController:(id)controller;
- (id)backTapConfirmationBannerEnabled:(id)enabled;
- (id)backTapFalsePositiveAlertsEnabled:(id)enabled;
- (id)backTapRNNModelEnabled:(id)enabled;
- (id)doubleTapAction:(id)action;
- (id)selectSpecifier:(id)specifier;
- (id)specifiers;
- (id)tripleTapAction:(id)action;
- (void)actionPickerController:(id)controller didSelectAction:(id)action;
- (void)setBackTapConfirmationBannerEnabled:(id)enabled specifier:(id)specifier;
- (void)setBackTapFalsePositiveAlertsEnabled:(id)enabled specifier:(id)specifier;
- (void)setBackTapRNNModelEnabled:(id)enabled specifier:(id)specifier;
- (void)updateBackTapEnabled;
@end

@implementation AXBackTapController

- (AXBackTapController)init
{
  v9.receiver = self;
  v9.super_class = AXBackTapController;
  v2 = [(AXBackTapController *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSiriShortcutsManager sharedManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __27__AXBackTapController_init__block_invoke;
    v6[3] = &unk_256718;
    objc_copyWeak(&v7, &location);
    v4 = [v3 registerShortcutsDidChangeBlock:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__AXBackTapController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v4);
}

void __27__AXBackTapController_init__block_invoke_2(uint64_t a1)
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
    v5 = [objc_allocWithZone(NSMutableArray) init];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = AXInBuddySetupKey;
    [v6 setProperty:&__kCFBooleanFalse forKey:AXInBuddySetupKey];
    [v5 addObject:v6];
    v8 = settingsLocString(@"DOUBLE_TAP", @"Accessibility");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"doubleTapAction:" detail:objc_opt_class() cell:2 edit:0];

    [v9 setProperty:&__kCFBooleanFalse forKey:v7];
    [v9 setIdentifier:@"DoubleTap"];
    v10 = PSIDKey;
    [v9 setProperty:@"DoubleTap" forKey:PSIDKey];
    [v5 addObject:v9];
    v11 = settingsLocString(@"TRIPLE_TAP", @"Accessibility");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:"tripleTapAction:" detail:objc_opt_class() cell:2 edit:0];

    [v12 setProperty:&__kCFBooleanFalse forKey:v7];
    [v12 setIdentifier:@"TripleTap"];
    [v12 setProperty:@"TripleTap" forKey:v10];
    [v5 addObject:v12];
    v13 = +[PSSpecifier emptyGroupSpecifier];

    [v13 setProperty:&__kCFBooleanFalse forKey:v7];
    [v5 addObject:v13];
    v14 = settingsLocString(@"CONFIRMATION_BANNER", @"Accessibility");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setBackTapConfirmationBannerEnabled:specifier:" get:"backTapConfirmationBannerEnabled:" detail:objc_opt_class() cell:6 edit:0];

    [v15 setProperty:&__kCFBooleanFalse forKey:v7];
    [v5 addObject:v15];
    if (AXIsInternalInstall())
    {
      v16 = +[PSSpecifier emptyGroupSpecifier];

      [v16 setProperty:&__kCFBooleanFalse forKey:v7];
      v17 = settingsLocString(@"FALSE_POSITIVE_COLLECTION_FOOTER", @"Accessibility");
      [v16 setProperty:v17 forKey:PSFooterTextGroupKey];

      [v5 addObject:v16];
      v18 = settingsLocString(@"FALSE_POSITIVE_COLLECTION", @"Accessibility");
      v15 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setBackTapFalsePositiveAlertsEnabled:specifier:" get:"backTapFalsePositiveAlertsEnabled:" detail:objc_opt_class() cell:6 edit:0];

      [v15 setProperty:&__kCFBooleanFalse forKey:v7];
      [v5 addObject:v15];
      if (_os_feature_enabled_impl())
      {
        v19 = +[PSSpecifier emptyGroupSpecifier];

        [v19 setProperty:&__kCFBooleanFalse forKey:v7];
        [v5 addObject:v19];
        v20 = settingsLocString(@"BACK_TAP_MODEL", @"Accessibility");
        v15 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setBackTapRNNModelEnabled:specifier:" get:"backTapRNNModelEnabled:" detail:objc_opt_class() cell:6 edit:0];

        [v15 setProperty:&__kCFBooleanFalse forKey:v7];
        [v5 addObject:v15];
      }
    }

    v21 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)selectSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = AXBackTapController;
  v5 = [(AXBackTapController *)&v8 selectSpecifier:specifierCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
    identifier = [specifierCopy identifier];
    [v5 setIdentifier:identifier];
  }

  return v5;
}

- (id)doubleTapAction:(id)action
{
  v3 = +[AXSettings sharedInstance];
  backTapDoubleTapAction = [v3 backTapDoubleTapAction];

  if (backTapDoubleTapAction)
  {
    AXUIAssistiveTouchStringForName();
  }

  else
  {
    settingsLocString(@"NONE", @"HandSettings");
  }
  v5 = ;

  return v5;
}

- (id)tripleTapAction:(id)action
{
  v3 = +[AXSettings sharedInstance];
  backTapTripleTapAction = [v3 backTapTripleTapAction];

  if (backTapTripleTapAction)
  {
    AXUIAssistiveTouchStringForName();
  }

  else
  {
    settingsLocString(@"NONE", @"HandSettings");
  }
  v5 = ;

  return v5;
}

- (id)actionForActionPickerController:(id)controller
{
  controllerCopy = controller;
  identifier = [controllerCopy identifier];
  v5 = [identifier isEqualToString:@"DoubleTap"];

  if (v5)
  {
    v6 = +[AXSettings sharedInstance];
    backTapDoubleTapAction = [v6 backTapDoubleTapAction];
LABEL_5:
    v10 = backTapDoubleTapAction;

    goto LABEL_7;
  }

  identifier2 = [controllerCopy identifier];
  v9 = [identifier2 isEqualToString:@"TripleTap"];

  if (v9)
  {
    v6 = +[AXSettings sharedInstance];
    backTapDoubleTapAction = [v6 backTapTripleTapAction];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)actionPickerController:(id)controller didSelectAction:(id)action
{
  controllerCopy = controller;
  actionCopy = action;
  identifier = [controllerCopy identifier];
  v8 = [identifier isEqualToString:@"DoubleTap"];

  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    [v9 setBackTapDoubleTapAction:actionCopy];
  }

  else
  {
    identifier2 = [controllerCopy identifier];
    v11 = [identifier2 isEqualToString:@"TripleTap"];

    if (!v11)
    {
      goto LABEL_6;
    }

    v9 = +[AXSettings sharedInstance];
    [v9 setBackTapTripleTapAction:actionCopy];
  }

LABEL_6:
  identifier3 = [controllerCopy identifier];
  [(AXBackTapController *)self reloadSpecifierID:identifier3];

  [(AXBackTapController *)self updateBackTapEnabled];
}

- (void)updateBackTapEnabled
{
  v2 = +[AXSettings sharedInstance];
  backTapDoubleTapAction = [v2 backTapDoubleTapAction];
  if (backTapDoubleTapAction)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    backTapTripleTapAction = [v5 backTapTripleTapAction];
    v4 = backTapTripleTapAction != 0;
  }

  v7 = +[AXSettings sharedInstance];
  [v7 setBackTapEnabled:v4];
}

- (id)backTapConfirmationBannerEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 backTapConfirmationBannerEnabled]);

  return v4;
}

- (void)setBackTapConfirmationBannerEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setBackTapConfirmationBannerEnabled:bOOLValue];
}

- (id)backTapFalsePositiveAlertsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 backTapFalsePositiveAlertsEnabled]);

  return v4;
}

- (void)setBackTapFalsePositiveAlertsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setBackTapFalsePositiveAlertsEnabled:bOOLValue];
}

- (id)backTapRNNModelEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 backTapRNNModelEnabled]);

  return v4;
}

- (void)setBackTapRNNModelEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setBackTapRNNModelEnabled:bOOLValue];
}

@end