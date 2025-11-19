@interface VoiceOverBrailleZoomOutController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverBrailleZoomOutController

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
    v7 = +[PSSpecifier emptyGroupSpecifier];
    v8 = settingsLocString(@"ZOOM_OUT_DESCRIPTION", @"VoiceOverBrailleOptions");
    [v7 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v6 addObject:v7];
    v9 = settingsLocString(@"ZOOM_OUT_NUM_CELLS_PER_ITEM", @"VoiceOverBrailleOptions");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v10 setProperty:@"LIVE_CAPTIONS_SOURCE" forKey:PSIDKey];
    [v6 addObject:v10];
    v11 = settingsLocString(@"ZOOM_OUT_NUM_CELLS_PER_ITEM_TWO", @"VoiceOverBrailleOptions");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:&off_27AF08 forKey:@"numCellsPerElement"];
    [v6 addObject:v12];
    v13 = settingsLocString(@"ZOOM_OUT_NUM_CELLS_PER_ITEM_THREE", @"VoiceOverBrailleOptions");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:&off_27AF20 forKey:@"numCellsPerElement"];
    [v6 addObject:v14];
    v15 = settingsLocString(@"ZOOM_OUT_NUM_CELLS_PER_ITEM_FOUR", @"VoiceOverBrailleOptions");
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setProperty:&off_27AF38 forKey:@"numCellsPerElement"];
    [v6 addObject:v16];
    v17 = settingsLocString(@"ZOOM_OUT_NUM_CELLS_PER_ITEM_FIVE", @"VoiceOverBrailleOptions");
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v18 setProperty:&off_27AF50 forKey:@"numCellsPerElement"];
    [v6 addObject:v18];
    v19 = settingsLocString(@"ZOOM_OUT_NUM_CELLS_PER_ITEM_SIX", @"VoiceOverBrailleOptions");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v20 setProperty:&off_27AF68 forKey:@"numCellsPerElement"];
    [v6 addObject:v20];
    v21 = settingsLocString(@"ZOOM_OUT_NUM_CELLS_PER_ITEM_SEVEN", @"VoiceOverBrailleOptions");
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v22 setProperty:&off_27AF80 forKey:@"numCellsPerElement"];
    [v6 addObject:v22];
    v23 = *&self->AXUISettingsBaseListController_opaque[v2];
    *&self->AXUISettingsBaseListController_opaque[v2] = v6;
    v24 = v6;

    v4 = *&self->AXUISettingsBaseListController_opaque[v2];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = [(VoiceOverBrailleZoomOutController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"numCellsPerElement"];
  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverTouchBrailleZoomOutNumCellsPerElement];

    [v11 setChecked:{objc_msgSend(v8, "integerValue") == v10}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = VoiceOverBrailleZoomOutController;
  [(VoiceOverBrailleZoomOutController *)&v25 tableView:v6 didSelectRowAtIndexPath:v7];
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
  v16 = [(VoiceOverBrailleZoomOutController *)self specifierForIndexPath:v7];
  v17 = [v16 propertyForKey:@"numCellsPerElement"];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 integerValue];
    v20 = +[AXSettings sharedInstance];
    [v20 setVoiceOverTouchBrailleZoomOutNumCellsPerElement:v19];

    [(VoiceOverBrailleZoomOutController *)self reload];
  }
}

@end