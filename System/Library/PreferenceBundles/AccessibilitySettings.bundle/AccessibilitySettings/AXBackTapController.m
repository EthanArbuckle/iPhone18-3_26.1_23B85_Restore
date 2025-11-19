@interface AXBackTapController
- (AXBackTapController)init;
- (id)actionForActionPickerController:(id)a3;
- (id)backTapConfirmationBannerEnabled:(id)a3;
- (id)backTapFalsePositiveAlertsEnabled:(id)a3;
- (id)backTapRNNModelEnabled:(id)a3;
- (id)doubleTapAction:(id)a3;
- (id)selectSpecifier:(id)a3;
- (id)specifiers;
- (id)tripleTapAction:(id)a3;
- (void)actionPickerController:(id)a3 didSelectAction:(id)a4;
- (void)setBackTapConfirmationBannerEnabled:(id)a3 specifier:(id)a4;
- (void)setBackTapFalsePositiveAlertsEnabled:(id)a3 specifier:(id)a4;
- (void)setBackTapRNNModelEnabled:(id)a3 specifier:(id)a4;
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

- (id)selectSpecifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXBackTapController;
  v5 = [(AXBackTapController *)&v8 selectSpecifier:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
    v6 = [v4 identifier];
    [v5 setIdentifier:v6];
  }

  return v5;
}

- (id)doubleTapAction:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 backTapDoubleTapAction];

  if (v4)
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

- (id)tripleTapAction:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 backTapTripleTapAction];

  if (v4)
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

- (id)actionForActionPickerController:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"DoubleTap"];

  if (v5)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 backTapDoubleTapAction];
LABEL_5:
    v10 = v7;

    goto LABEL_7;
  }

  v8 = [v3 identifier];
  v9 = [v8 isEqualToString:@"TripleTap"];

  if (v9)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 backTapTripleTapAction];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)actionPickerController:(id)a3 didSelectAction:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 identifier];
  v8 = [v7 isEqualToString:@"DoubleTap"];

  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    [v9 setBackTapDoubleTapAction:v6];
  }

  else
  {
    v10 = [v13 identifier];
    v11 = [v10 isEqualToString:@"TripleTap"];

    if (!v11)
    {
      goto LABEL_6;
    }

    v9 = +[AXSettings sharedInstance];
    [v9 setBackTapTripleTapAction:v6];
  }

LABEL_6:
  v12 = [v13 identifier];
  [(AXBackTapController *)self reloadSpecifierID:v12];

  [(AXBackTapController *)self updateBackTapEnabled];
}

- (void)updateBackTapEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 backTapDoubleTapAction];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 backTapTripleTapAction];
    v4 = v6 != 0;
  }

  v7 = +[AXSettings sharedInstance];
  [v7 setBackTapEnabled:v4];
}

- (id)backTapConfirmationBannerEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 backTapConfirmationBannerEnabled]);

  return v4;
}

- (void)setBackTapConfirmationBannerEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setBackTapConfirmationBannerEnabled:v4];
}

- (id)backTapFalsePositiveAlertsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 backTapFalsePositiveAlertsEnabled]);

  return v4;
}

- (void)setBackTapFalsePositiveAlertsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setBackTapFalsePositiveAlertsEnabled:v4];
}

- (id)backTapRNNModelEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 backTapRNNModelEnabled]);

  return v4;
}

- (void)setBackTapRNNModelEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setBackTapRNNModelEnabled:v4];
}

@end