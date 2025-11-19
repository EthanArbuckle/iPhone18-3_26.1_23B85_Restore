@interface VoiceOverBrailleUIBrailleNotesViewController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverBrailleUIBrailleNotesViewController

- (id)specifiers
{
  v2 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v22 = OBJC_IVAR___PSListController__specifiers;
    v5 = objc_opt_new();
    v6 = settingsLocString(@"SORT_TYPE", @"BrailleUI");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:0 edit:0];

    v8 = PSIDKey;
    [v7 setProperty:@"SORT_TYPE" forKey:PSIDKey];
    [v5 addObject:v7];
    v9 = settingsLocString(@"DATE_EDITED", @"BrailleUI");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v10 setProperty:&off_27AD88 forKey:@"sortType"];
    [v5 addObject:v10];
    v11 = settingsLocString(@"DATE_CREATED", @"BrailleUI");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:&off_27ADA0 forKey:@"sortType"];
    [v5 addObject:v12];
    v13 = settingsLocString(@"SORT_ORDER", @"BrailleUI");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v14 setProperty:@"SORT_ORDER" forKey:v8];
    [v5 addObject:v14];
    v15 = settingsLocString(@"NEWEST_FIRST", @"BrailleUI");
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setProperty:&off_27AD88 forKey:@"sortDirection"];
    [v5 addObject:v16];
    v17 = settingsLocString(@"OLDEST_FIRST", @"BrailleUI");
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v18 setProperty:&off_27ADA0 forKey:@"sortDirection"];
    [v5 addObject:v18];
    v19 = *&self->AXUISettingsBaseListController_opaque[v22];
    *&self->AXUISettingsBaseListController_opaque[v22] = v5;
    v20 = v5;

    v3 = *&self->AXUISettingsBaseListController_opaque[v22];
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  v7 = [(VoiceOverBrailleUIBrailleNotesViewController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"sortType"];
  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverTouchBrailleUIBrailleNotesSortType];

    [v14 setChecked:{objc_msgSend(v8, "integerValue") == v10}];
  }

  else
  {
    v11 = [v7 propertyForKey:@"sortDirection"];
    if (v11)
    {
      v12 = +[AXSettings sharedInstance];
      v13 = [v12 voiceOverTouchBrailleUIBrailleNotesSortDirection];

      [v14 setChecked:{objc_msgSend(v11, "integerValue") == v13}];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = VoiceOverBrailleUIBrailleNotesViewController;
  [(VoiceOverBrailleUIBrailleNotesViewController *)&v29 tableView:v6 didSelectRowAtIndexPath:v7];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v6 visibleCells];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = __UIAccessibilitySafeClass();
        [v13 setChecked:0];
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [v6 cellForRowAtIndexPath:v7];
  v15 = __UIAccessibilitySafeClass();

  [v15 setChecked:1];
  v16 = [(VoiceOverBrailleUIBrailleNotesViewController *)self specifierForIndexPath:v7];
  v17 = [v16 propertyForKey:@"sortType"];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 integerValue];
    v20 = +[AXSettings sharedInstance];
    [v20 setVoiceOverTouchBrailleUIBrailleNotesSortType:v19];

    [(VoiceOverBrailleUIBrailleNotesViewController *)self reload];
  }

  else
  {
    v21 = [v16 propertyForKey:@"sortDirection"];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 integerValue];
      v24 = +[AXSettings sharedInstance];
      [v24 setVoiceOverTouchBrailleUIBrailleNotesSortDirection:v23];
    }

    [(VoiceOverBrailleUIBrailleNotesViewController *)self reload];
  }
}

@end