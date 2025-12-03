@interface AXPronunciationLanguageListController
- (AXPronunciationLanguageListControllerDelegate)delegate;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXPronunciationLanguageListController

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = AXPronunciationLanguageListController;
  [(AXPronunciationLanguageListController *)&v9 viewWillAppear:appear];
  specifier = [(AXPronunciationLanguageListController *)self specifier];
  v5 = [specifier objectForKeyedSubscript:@"Languages"];
  if (v5)
  {
    specifier2 = [(AXPronunciationLanguageListController *)self specifier];
    v7 = [specifier2 propertyForKey:@"Languages"];
    v8 = [v7 mutableCopy];
    [(AXPronunciationLanguageListController *)self setSelectedLanguages:v8];
  }

  else
  {
    specifier2 = +[NSMutableSet set];
    [(AXPronunciationLanguageListController *)self setSelectedLanguages:specifier2];
  }
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v21 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = settingsLocString(@"PRONUNCIATION_LANGUAGE_HELP", @"VoiceOverSettings");
    [v5 setObject:v6 forKeyedSubscript:PSFooterTextGroupKey];

    [v4 addObject:v5];
    v7 = settingsLocString(@"ALL_LANGUAGES", @"VoiceOverSettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v8 setProperty:@"ALL" forKey:PSIDKey];
    [v4 addObject:v8];
    v9 = +[PSSpecifier emptyGroupSpecifier];

    v20 = v9;
    [v4 addObject:v9];
    AXLanguagesAvailableForPronuncationEditor();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v26 = 0u;
    v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        v14 = v8;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v23 + 1) + 8 * v13);
          v16 = [v15 objectAtIndexedSubscript:0];
          v17 = [v15 objectAtIndexedSubscript:1];
          v8 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v8 setObject:v16 forKeyedSubscript:@"Language"];
          [v4 addObject:v8];

          v13 = v13 + 1;
          v14 = v8;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v18 = *&self->AXUISettingsBaseListController_opaque[v21];
    *&self->AXUISettingsBaseListController_opaque[v21] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v21];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v36.receiver = self;
  v36.super_class = AXPronunciationLanguageListController;
  [(AXPronunciationLanguageListController *)&v36 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v31 = viewCopy;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v30 = pathCopy;
  v29 = [(AXPronunciationLanguageListController *)self specifierForIndexPath:pathCopy];
  v8 = [v29 objectForKeyedSubscript:@"Language"];
  selectedLanguages = [(AXPronunciationLanguageListController *)self selectedLanguages];
  v10 = selectedLanguages;
  v28 = v8;
  if (v8)
  {
    v11 = [selectedLanguages containsObject:v8];

    selectedLanguages2 = [(AXPronunciationLanguageListController *)self selectedLanguages];
    v10 = selectedLanguages2;
    if (v11)
    {
      [selectedLanguages2 removeObject:v8];
    }

    else
    {
      [selectedLanguages2 addObject:v8];
    }
  }

  else
  {
    [selectedLanguages removeAllObjects];
  }

  delegate = [(AXPronunciationLanguageListController *)self delegate];
  selectedLanguages3 = [(AXPronunciationLanguageListController *)self selectedLanguages];
  [delegate pronunciationLanguageListController:self didSelectLanguages:selectedLanguages3];

  [(AXPronunciationLanguageListController *)self updateVisibleCellsWithCheckedSelection:0];
  v15 = [(AXPronunciationLanguageListController *)self cellForSpecifierID:@"ALL"];
  selectedLanguages4 = [(AXPronunciationLanguageListController *)self selectedLanguages];
  v27 = v15;
  [v15 setChecked:{objc_msgSend(selectedLanguages4, "count") == 0}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = OBJC_IVAR___PSListController__table;
  indexPathsForVisibleRows = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] indexPathsForVisibleRows];
  v19 = [indexPathsForVisibleRows countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v23 = [*&self->AXUISettingsBaseListController_opaque[v17] cellForRowAtIndexPath:*(*(&v32 + 1) + 8 * i)];
        specifier = [v23 specifier];
        v25 = [specifier propertyForKey:@"Language"];

        if (v25)
        {
          selectedLanguages5 = [(AXPronunciationLanguageListController *)self selectedLanguages];
          [v23 setChecked:{objc_msgSend(selectedLanguages5, "containsObject:", v25)}];
        }
      }

      v20 = [indexPathsForVisibleRows countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v20);
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(AXPronunciationLanguageListController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 objectForKeyedSubscript:PSIDKey];

  selectedLanguages = [(AXPronunciationLanguageListController *)self specifierForIndexPath:pathCopy];

  v11 = [selectedLanguages objectForKeyedSubscript:@"Language"];

  v12 = [v9 isEqualToString:@"ALL"];
  if (v12)
  {
    selectedLanguages = [(AXPronunciationLanguageListController *)self selectedLanguages];
    if (![selectedLanguages count])
    {
      [cellCopy setChecked:1];
      goto LABEL_6;
    }
  }

  selectedLanguages2 = [(AXPronunciationLanguageListController *)self selectedLanguages];
  [cellCopy setChecked:{objc_msgSend(selectedLanguages2, "containsObject:", v11)}];

  if (v12)
  {
LABEL_6:
  }
}

- (AXPronunciationLanguageListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end