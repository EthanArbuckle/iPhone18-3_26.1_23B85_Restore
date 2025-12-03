@interface VoiceOverBrailleUIBRFFilesViewController
- (id)brfReflowEnabled:(id)enabled;
- (id)brfStripPageIndicatorsEnabled:(id)enabled;
- (id)specifiers;
- (void)setBRFReflowEnabled:(id)enabled specifier:(id)specifier;
- (void)setBRFStripPageIndicatorsEnabled:(id)enabled specifier:(id)specifier;
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

- (void)setBRFReflowEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUIIsBRFReflowEnabled:bOOLValue];
}

- (id)brfReflowEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUIIsBRFReflowEnabled]);

  return v4;
}

- (void)setBRFStripPageIndicatorsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled:bOOLValue];
}

- (id)brfStripPageIndicatorsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled]);

  return v4;
}

@end