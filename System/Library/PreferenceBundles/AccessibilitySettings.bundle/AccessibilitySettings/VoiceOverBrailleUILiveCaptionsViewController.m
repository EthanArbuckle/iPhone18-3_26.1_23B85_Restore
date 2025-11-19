@interface VoiceOverBrailleUILiveCaptionsViewController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverBrailleUILiveCaptionsViewController

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
    v7 = settingsLocString(@"LIVE_CAPTIONS_SOURCE", @"BrailleUI");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v8 setProperty:@"LIVE_CAPTIONS_SOURCE" forKey:PSIDKey];
    [v6 addObject:v8];
    v9 = settingsLocString(@"LIVE_CAPTIONS_SOURCE_MICROPHONE", @"BrailleUI");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v10 setProperty:&off_27A188 forKey:@"source"];
    [v6 addObject:v10];
    v11 = AXLocStringKeyForModel();
    v12 = settingsLocString(v11, @"BrailleUI");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&off_27A1A0 forKey:@"source"];
    [v6 addObject:v13];
    v14 = *&self->AXUISettingsBaseListController_opaque[v2];
    *&self->AXUISettingsBaseListController_opaque[v2] = v6;
    v15 = v6;

    v4 = *&self->AXUISettingsBaseListController_opaque[v2];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = [(VoiceOverBrailleUILiveCaptionsViewController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"source"];
  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverTouchBrailleUILiveCaptionsSource];

    [v11 setChecked:{objc_msgSend(v8, "integerValue") == v10}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = VoiceOverBrailleUILiveCaptionsViewController;
  [(VoiceOverBrailleUILiveCaptionsViewController *)&v25 tableView:v6 didSelectRowAtIndexPath:v7];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v6 visibleCells];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = __UIAccessibilitySafeClass();
        [v13 setChecked:0];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [v6 cellForRowAtIndexPath:v7];
  v15 = __UIAccessibilitySafeClass();

  [v15 setChecked:1];
  v16 = [(VoiceOverBrailleUILiveCaptionsViewController *)self specifierForIndexPath:v7];
  v17 = [v16 propertyForKey:@"source"];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 integerValue];
    v20 = +[AXSettings sharedInstance];
    [v20 setVoiceOverTouchBrailleUILiveCaptionsSource:v19];

    [(VoiceOverBrailleUILiveCaptionsViewController *)self reload];
  }
}

@end