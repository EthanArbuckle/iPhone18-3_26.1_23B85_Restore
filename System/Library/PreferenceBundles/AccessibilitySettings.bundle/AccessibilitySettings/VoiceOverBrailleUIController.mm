@interface VoiceOverBrailleUIController
- (id)openToLastPositionEnabled:(id)enabled;
- (id)readListItemsEnabled:(id)enabled;
- (id)showsBackButton:(id)button;
- (id)specifiers;
- (id)typingSpeechFeedbackEnabled:(id)enabled;
- (id)visualsEnabled:(id)enabled;
- (void)setOpenToLastPositionEnabled:(id)enabled specifier:(id)specifier;
- (void)setReadListItemsEnabled:(id)enabled specifier:(id)specifier;
- (void)setShowsBackButton:(id)button specifier:(id)specifier;
- (void)setTypingSpeechFeedbackEnabled:(id)enabled specifier:(id)specifier;
- (void)setVisualsEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation VoiceOverBrailleUIController

- (id)specifiers
{
  v2 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v38 = OBJC_IVAR___PSListController__specifiers;
    v5 = objc_opt_new();
    v6 = [(VoiceOverBrailleUIController *)self loadSpecifiersFromPlistName:@"BrailleUI" target:self];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObject:*(*(&v39 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v8);
    }

    v11 = +[PSSpecifier emptyGroupSpecifier];
    v12 = settingsLocString(@"TYPING_SPEECH_FEEDBACK_FOOTER", @"BrailleUI");
    [v11 setProperty:v12 forKey:PSFooterTextGroupKey];

    [v5 addObject:v11];
    v13 = settingsLocString(@"MAIN_MENU_ITEMS", @"BrailleUI");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v15 = PSIDKey;
    [v14 setProperty:@"MAIN_MENU_ITEMS" forKey:PSIDKey];
    [v5 addObject:v14];
    v16 = settingsLocString(@"OPEN_TO_LAST_POSITION", @"BrailleUI");
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setOpenToLastPositionEnabled:specifier:" get:"openToLastPositionEnabled:" detail:0 cell:6 edit:0];

    [v17 setProperty:@"OPEN_TO_LAST_POSITION" forKey:v15];
    [v5 addObject:v17];
    v18 = settingsLocString(@"READ_LIST_ITEMS", @"BrailleUI");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setReadListItemsEnabled:specifier:" get:"readListItemsEnabled:" detail:0 cell:6 edit:0];

    [v19 setProperty:@"READ_LIST_ITEMS" forKey:v15];
    [v5 addObject:v19];
    v20 = settingsLocString(@"SHOW_BACK_BUTTON", @"BrailleUI");
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setShowsBackButton:specifier:" get:"showsBackButton:" detail:0 cell:6 edit:0];

    [v21 setProperty:@"SHOW_BACK_BUTTON" forKey:v15];
    [v5 addObject:v21];
    v22 = settingsLocString(@"SHOW_VISUALS", @"BrailleUI");
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setVisualsEnabled:specifier:" get:"visualsEnabled:" detail:0 cell:6 edit:0];

    [v23 setProperty:@"SHOW_VISUALS" forKey:v15];
    [v5 addObject:v23];
    v24 = settingsLocString(@"TYPING_SPEECH_FEEDBACK", @"BrailleUI");
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"setTypingSpeechFeedbackEnabled:specifier:" get:"typingSpeechFeedbackEnabled:" detail:0 cell:6 edit:0];

    [v25 setProperty:@"TYPING_SPEECH_FEEDBACK" forKey:v15];
    [v5 addObject:v25];
    v26 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v26];
    v27 = settingsLocString(@"BRAILLE_NOTES", @"BrailleUI");
    v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v28 setProperty:@"BRAILLE_NOTES" forKey:v15];
    [v5 addObject:v28];
    v29 = settingsLocString(@"BRF_FILES", @"BrailleUI");
    v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v30 setProperty:@"BRF_FILES" forKey:v15];
    [v5 addObject:v30];
    v31 = settingsLocString(@"NEMETH_CALCULATOR", @"BrailleUI");
    v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v32 setProperty:@"NEMETH_CALCULATOR" forKey:v15];
    [v5 addObject:v32];
    v33 = settingsLocString(@"LIVE_CAPTIONS", @"BrailleUI");
    v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v34 setProperty:@"LIVE_CAPTIONS" forKey:v15];
    [v5 addObject:v34];
    v35 = *&self->AXUISettingsBaseListController_opaque[v38];
    *&self->AXUISettingsBaseListController_opaque[v38] = v5;
    v36 = v5;

    v3 = *&self->AXUISettingsBaseListController_opaque[v38];
  }

  return v3;
}

- (void)setOpenToLastPositionEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUIShouldReopenViewsWhenRestart:bOOLValue];
}

- (id)openToLastPositionEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUIShouldReopenViewsWhenRestart]);

  return v4;
}

- (void)setTypingSpeechFeedbackEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUITypingSpeechFeedbackEnabled:bOOLValue];
}

- (id)typingSpeechFeedbackEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUITypingSpeechFeedbackEnabled]);

  return v4;
}

- (void)setReadListItemsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUIReadListItemsEnabled:bOOLValue];
}

- (id)readListItemsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUIReadListItemsEnabled]);

  return v4;
}

- (void)setVisualsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUIVisualsEnabled:bOOLValue];
}

- (id)visualsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUIVisualsEnabled]);

  return v4;
}

- (void)setShowsBackButton:(id)button specifier:(id)specifier
{
  bOOLValue = [button BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleUIShowsBackButton:bOOLValue];
}

- (id)showsBackButton:(id)button
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUIShowsBackButton]);

  return v4;
}

@end