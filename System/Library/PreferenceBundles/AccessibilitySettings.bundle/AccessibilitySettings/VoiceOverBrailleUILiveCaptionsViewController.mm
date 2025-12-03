@interface VoiceOverBrailleUILiveCaptionsViewController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(VoiceOverBrailleUILiveCaptionsViewController *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"source"];
  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleUILiveCaptionsSource = [v9 voiceOverTouchBrailleUILiveCaptionsSource];

    [cellCopy setChecked:{objc_msgSend(v8, "integerValue") == voiceOverTouchBrailleUILiveCaptionsSource}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v25.receiver = self;
  v25.super_class = VoiceOverBrailleUILiveCaptionsViewController;
  [(VoiceOverBrailleUILiveCaptionsViewController *)&v25 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  visibleCells = [viewCopy visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v13 = __UIAccessibilitySafeClass();
        [v13 setChecked:0];
      }

      v10 = [visibleCells countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v15 = __UIAccessibilitySafeClass();

  [v15 setChecked:1];
  v16 = [(VoiceOverBrailleUILiveCaptionsViewController *)self specifierForIndexPath:pathCopy];
  v17 = [v16 propertyForKey:@"source"];
  v18 = v17;
  if (v17)
  {
    integerValue = [v17 integerValue];
    v20 = +[AXSettings sharedInstance];
    [v20 setVoiceOverTouchBrailleUILiveCaptionsSource:integerValue];

    [(VoiceOverBrailleUILiveCaptionsViewController *)self reload];
  }
}

@end