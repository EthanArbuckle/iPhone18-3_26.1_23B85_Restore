@interface VoiceOverBrailleUIBrailleNotesViewController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(VoiceOverBrailleUIBrailleNotesViewController *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"sortType"];
  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleUIBrailleNotesSortType = [v9 voiceOverTouchBrailleUIBrailleNotesSortType];

    [cellCopy setChecked:{objc_msgSend(v8, "integerValue") == voiceOverTouchBrailleUIBrailleNotesSortType}];
  }

  else
  {
    v11 = [v7 propertyForKey:@"sortDirection"];
    if (v11)
    {
      v12 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleUIBrailleNotesSortDirection = [v12 voiceOverTouchBrailleUIBrailleNotesSortDirection];

      [cellCopy setChecked:{objc_msgSend(v11, "integerValue") == voiceOverTouchBrailleUIBrailleNotesSortDirection}];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = VoiceOverBrailleUIBrailleNotesViewController;
  [(VoiceOverBrailleUIBrailleNotesViewController *)&v29 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  visibleCells = [viewCopy visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v13 = __UIAccessibilitySafeClass();
        [v13 setChecked:0];
      }

      v10 = [visibleCells countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v15 = __UIAccessibilitySafeClass();

  [v15 setChecked:1];
  v16 = [(VoiceOverBrailleUIBrailleNotesViewController *)self specifierForIndexPath:pathCopy];
  v17 = [v16 propertyForKey:@"sortType"];
  v18 = v17;
  if (v17)
  {
    integerValue = [v17 integerValue];
    v20 = +[AXSettings sharedInstance];
    [v20 setVoiceOverTouchBrailleUIBrailleNotesSortType:integerValue];

    [(VoiceOverBrailleUIBrailleNotesViewController *)self reload];
  }

  else
  {
    v21 = [v16 propertyForKey:@"sortDirection"];
    v22 = v21;
    if (v21)
    {
      integerValue2 = [v21 integerValue];
      v24 = +[AXSettings sharedInstance];
      [v24 setVoiceOverTouchBrailleUIBrailleNotesSortDirection:integerValue2];
    }

    [(VoiceOverBrailleUIBrailleNotesViewController *)self reload];
  }
}

@end