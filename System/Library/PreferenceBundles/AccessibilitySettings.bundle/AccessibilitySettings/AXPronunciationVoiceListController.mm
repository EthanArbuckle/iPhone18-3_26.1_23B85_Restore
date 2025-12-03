@interface AXPronunciationVoiceListController
- (AXPronunciationVoiceListControllerDelegate)delegate;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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
    specifier = [(AXPronunciationVoiceListController *)self specifier];
    v10 = [specifier propertyForKey:@"Languages"];

    specifier2 = [(AXPronunciationVoiceListController *)self specifier];
    v12 = [specifier2 propertyForKey:@"VoiceIds"];
    v13 = [v12 mutableCopy];
    [(AXPronunciationVoiceListController *)self setVoiceIds:v13];

    voiceIds = [(AXPronunciationVoiceListController *)self voiceIds];

    if (!voiceIds)
    {
      v15 = +[NSMutableSet set];
      [(AXPronunciationVoiceListController *)self setVoiceIds:v15];
    }

    selfCopy = self;
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
          language = [v22 language];
          v24 = [v10 containsObject:language];

          if (v24)
          {
            name = [v22 name];
            v26 = [PSSpecifier preferenceSpecifierNamed:name target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

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
    v27 = *&selfCopy->AXUISettingsBaseListController_opaque[v32];
    *&selfCopy->AXUISettingsBaseListController_opaque[v32] = v31;
    v28 = v31;

    v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v32];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v38.receiver = self;
  v38.super_class = AXPronunciationVoiceListController;
  [(AXPronunciationVoiceListController *)&v38 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v32 = viewCopy;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v31 = pathCopy;
  v30 = [(AXPronunciationVoiceListController *)self specifierForIndexPath:pathCopy];
  v8 = [v30 objectForKeyedSubscript:@"Voice"];
  voiceIds = [(AXPronunciationVoiceListController *)self voiceIds];
  voiceIds2 = voiceIds;
  v29 = v8;
  if (v8)
  {
    identifier = [v8 identifier];
    v12 = [voiceIds2 containsObject:identifier];

    voiceIds2 = [(AXPronunciationVoiceListController *)self voiceIds];
    identifier2 = [v8 identifier];
    if (v12)
    {
      [voiceIds2 removeObject:identifier2];
    }

    else
    {
      [voiceIds2 addObject:identifier2];
    }
  }

  else
  {
    [voiceIds removeAllObjects];
  }

  delegate = [(AXPronunciationVoiceListController *)self delegate];
  voiceIds3 = [(AXPronunciationVoiceListController *)self voiceIds];
  [delegate pronunciationVoiceListController:self didSelectVoices:voiceIds3];

  [(AXPronunciationVoiceListController *)self updateVisibleCellsWithCheckedSelection:0];
  v16 = [(AXPronunciationVoiceListController *)self cellForSpecifierID:@"ALL"];
  voiceIds4 = [(AXPronunciationVoiceListController *)self voiceIds];
  v28 = v16;
  [v16 setChecked:{objc_msgSend(voiceIds4, "count") == 0}];

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
        specifier = [v23 specifier];
        v25 = [specifier propertyForKey:@"Voice"];

        if (v25)
        {
          voiceIds5 = [(AXPronunciationVoiceListController *)self voiceIds];
          identifier3 = [v25 identifier];
          [v23 setChecked:{objc_msgSend(voiceIds5, "containsObject:", identifier3)}];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v20);
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(AXPronunciationVoiceListController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 objectForKeyedSubscript:@"Voice"];

  voiceIds = [(AXPronunciationVoiceListController *)self specifierForIndexPath:pathCopy];

  v11 = [voiceIds objectForKeyedSubscript:PSIDKey];

  v12 = [v11 isEqualToString:@"ALL"];
  if (v12)
  {
    voiceIds = [(AXPronunciationVoiceListController *)self voiceIds];
    if (![voiceIds count])
    {
      [cellCopy setChecked:1];
      goto LABEL_6;
    }
  }

  voiceIds2 = [(AXPronunciationVoiceListController *)self voiceIds];
  identifier = [v9 identifier];
  [cellCopy setChecked:{objc_msgSend(voiceIds2, "containsObject:", identifier)}];

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