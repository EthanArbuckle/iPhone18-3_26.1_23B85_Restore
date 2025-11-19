@interface AXPronunciationVoiceListController
- (AXPronunciationVoiceListControllerDelegate)delegate;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXPronunciationVoiceListController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v32 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:v5];
    v6 = settingsLocString(@"ALL_LANGUAGES", @"VoiceOverSettings");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v7 setProperty:@"ALL" forKey:PSIDKey];
    [v4 addObject:v7];
    v8 = +[PSSpecifier emptyGroupSpecifier];

    v30 = v8;
    v31 = v4;
    [v4 addObject:v8];
    v9 = [(AXPronunciationVoiceListController *)self specifier];
    v10 = [v9 propertyForKey:@"Languages"];

    v11 = [(AXPronunciationVoiceListController *)self specifier];
    v12 = [v11 propertyForKey:@"VoiceIds"];
    v13 = [v12 mutableCopy];
    [(AXPronunciationVoiceListController *)self setVoiceIds:v13];

    v14 = [(AXPronunciationVoiceListController *)self voiceIds];

    if (!v14)
    {
      v15 = +[NSMutableSet set];
      [(AXPronunciationVoiceListController *)self setVoiceIds:v15];
    }

    v33 = self;
    v16 = +[NSMutableArray array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = +[AVSpeechSynthesisVoice _speechVoicesIncludingSiri];
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          v23 = [v22 language];
          v24 = [v10 containsObject:v23];

          if (v24)
          {
            v25 = [v22 name];
            v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:v33 set:0 get:0 detail:0 cell:3 edit:0];

            [v26 setObject:v22 forKeyedSubscript:@"Voice"];
            [v16 addObject:v26];
            v7 = v26;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v19);
    }

    [v16 sortUsingComparator:&__block_literal_global_51];
    [v31 addObjectsFromArray:v16];
    v27 = *&v33->AXUISettingsBaseListController_opaque[v32];
    *&v33->AXUISettingsBaseListController_opaque[v32] = v31;
    v28 = v31;

    v3 = *&v33->AXUISettingsBaseListController_opaque[v32];
  }

  return v3;
}

int64_t __48__AXPronunciationVoiceListController_specifiers__block_invoke(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = AXPronunciationVoiceListController;
  [(AXPronunciationVoiceListController *)&v38 tableView:v6 didSelectRowAtIndexPath:v7];
  v32 = v6;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v31 = v7;
  v30 = [(AXPronunciationVoiceListController *)self specifierForIndexPath:v7];
  v8 = [v30 objectForKeyedSubscript:@"Voice"];
  v9 = [(AXPronunciationVoiceListController *)self voiceIds];
  v10 = v9;
  v29 = v8;
  if (v8)
  {
    v11 = [v8 identifier];
    v12 = [v10 containsObject:v11];

    v10 = [(AXPronunciationVoiceListController *)self voiceIds];
    v13 = [v8 identifier];
    if (v12)
    {
      [v10 removeObject:v13];
    }

    else
    {
      [v10 addObject:v13];
    }
  }

  else
  {
    [v9 removeAllObjects];
  }

  v14 = [(AXPronunciationVoiceListController *)self delegate];
  v15 = [(AXPronunciationVoiceListController *)self voiceIds];
  [v14 pronunciationVoiceListController:self didSelectVoices:v15];

  [(AXPronunciationVoiceListController *)self updateVisibleCellsWithCheckedSelection:0];
  v16 = [(AXPronunciationVoiceListController *)self cellForSpecifierID:@"ALL"];
  v17 = [(AXPronunciationVoiceListController *)self voiceIds];
  v28 = v16;
  [v16 setChecked:{objc_msgSend(v17, "count") == 0}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = OBJC_IVAR___PSListController__table;
  obj = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] indexPathsForVisibleRows];
  v19 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = [*&self->AXUISettingsBaseListController_opaque[v18] cellForRowAtIndexPath:*(*(&v34 + 1) + 8 * i)];
        v24 = [v23 specifier];
        v25 = [v24 propertyForKey:@"Voice"];

        if (v25)
        {
          v26 = [(AXPronunciationVoiceListController *)self voiceIds];
          v27 = [v25 identifier];
          [v23 setChecked:{objc_msgSend(v26, "containsObject:", v27)}];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v20);
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v15 = a4;
  v7 = a5;
  v8 = [(AXPronunciationVoiceListController *)self specifierForIndexPath:v7];
  v9 = [v8 objectForKeyedSubscript:@"Voice"];

  v10 = [(AXPronunciationVoiceListController *)self specifierForIndexPath:v7];

  v11 = [v10 objectForKeyedSubscript:PSIDKey];

  v12 = [v11 isEqualToString:@"ALL"];
  if (v12)
  {
    v10 = [(AXPronunciationVoiceListController *)self voiceIds];
    if (![v10 count])
    {
      [v15 setChecked:1];
      goto LABEL_6;
    }
  }

  v13 = [(AXPronunciationVoiceListController *)self voiceIds];
  v14 = [v9 identifier];
  [v15 setChecked:{objc_msgSend(v13, "containsObject:", v14)}];

  if (v12)
  {
LABEL_6:
  }
}

- (AXPronunciationVoiceListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end