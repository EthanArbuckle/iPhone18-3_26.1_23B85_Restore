@interface VoiceOverBrailleUIBRFFilesViewController
- (id)brfReflowEnabled:(id)a3;
- (id)brfStripPageIndicatorsEnabled:(id)a3;
- (id)specifiers;
- (void)setBRFReflowEnabled:(id)a3 specifier:(id)a4;
- (void)setBRFStripPageIndicatorsEnabled:(id)a3 specifier:(id)a4;
@end

@implementation VoiceOverBrailleUIBRFFilesViewController

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = settingsLocString(@"FIT_BRF_CONTENT_TO_DISPLAY", @"BrailleUI");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setBRFReflowEnabled:specifier:" get:"brfReflowEnabled:" detail:0 cell:6 edit:0];

    v9 = PSIDKey;
    [v8 setProperty:@"FIT_BRF_CONTENT_TO_DISPLAY" forKey:PSIDKey];
    [v6 addObject:v8];
    v10 = settingsLocString(@"HIDE_BRF_PAGE_INDICATORS", @"BrailleUI");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setBRFStripPageIndicatorsEnabled:specifier:" get:"brfStripPageIndicatorsEnabled:" detail:0 cell:6 edit:0];

    [v11 setProperty:@"HIDE_BRF_PAGE_INDICATORS" forKey:v9];
    [v6 addObject:v11];
    v12 = *&self->AXUISettingsBaseListController_opaque[v2];
    *&self->AXUISettingsBaseListController_opaque[v2] = v6;
    v13 = v6;

    v4 = *&self->AXUISettingsBaseListController_opaque[v2];
  }

  return v4;
}

- (void)setBRFReflowEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUIIsBRFReflowEnabled:v4];
}

- (id)brfReflowEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUIIsBRFReflowEnabled]);

  return v4;
}

- (void)setBRFStripPageIndicatorsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled:v4];
}

- (id)brfStripPageIndicatorsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled]);

  return v4;
}

@end