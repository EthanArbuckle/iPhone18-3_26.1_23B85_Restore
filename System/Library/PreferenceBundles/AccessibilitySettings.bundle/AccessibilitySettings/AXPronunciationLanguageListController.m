@interface AXPronunciationLanguageListController
- (AXPronunciationLanguageListControllerDelegate)delegate;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AXPronunciationLanguageListController

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = AXPronunciationLanguageListController;
  [(AXPronunciationLanguageListController *)&v9 viewWillAppear:a3];
  v4 = [(AXPronunciationLanguageListController *)self specifier];
  v5 = [v4 objectForKeyedSubscript:@"Languages"];
  if (v5)
  {
    v6 = [(AXPronunciationLanguageListController *)self specifier];
    v7 = [v6 propertyForKey:@"Languages"];
    v8 = [v7 mutableCopy];
    [(AXPronunciationLanguageListController *)self setSelectedLanguages:v8];
  }

  else
  {
    v6 = +[NSMutableSet set];
    [(AXPronunciationLanguageListController *)self setSelectedLanguages:v6];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = AXPronunciationLanguageListController;
  [(AXPronunciationLanguageListController *)&v36 tableView:v6 didSelectRowAtIndexPath:v7];
  v31 = v6;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v30 = v7;
  v29 = [(AXPronunciationLanguageListController *)self specifierForIndexPath:v7];
  v8 = [v29 objectForKeyedSubscript:@"Language"];
  v9 = [(AXPronunciationLanguageListController *)self selectedLanguages];
  v10 = v9;
  v28 = v8;
  if (v8)
  {
    v11 = [v9 containsObject:v8];

    v12 = [(AXPronunciationLanguageListController *)self selectedLanguages];
    v10 = v12;
    if (v11)
    {
      [v12 removeObject:v8];
    }

    else
    {
      [v12 addObject:v8];
    }
  }

  else
  {
    [v9 removeAllObjects];
  }

  v13 = [(AXPronunciationLanguageListController *)self delegate];
  v14 = [(AXPronunciationLanguageListController *)self selectedLanguages];
  [v13 pronunciationLanguageListController:self didSelectLanguages:v14];

  [(AXPronunciationLanguageListController *)self updateVisibleCellsWithCheckedSelection:0];
  v15 = [(AXPronunciationLanguageListController *)self cellForSpecifierID:@"ALL"];
  v16 = [(AXPronunciationLanguageListController *)self selectedLanguages];
  v27 = v15;
  [v15 setChecked:{objc_msgSend(v16, "count") == 0}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = OBJC_IVAR___PSListController__table;
  v18 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] indexPathsForVisibleRows];
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = [*&self->AXUISettingsBaseListController_opaque[v17] cellForRowAtIndexPath:*(*(&v32 + 1) + 8 * i)];
        v24 = [v23 specifier];
        v25 = [v24 propertyForKey:@"Language"];

        if (v25)
        {
          v26 = [(AXPronunciationLanguageListController *)self selectedLanguages];
          [v23 setChecked:{objc_msgSend(v26, "containsObject:", v25)}];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v20);
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(AXPronunciationLanguageListController *)self specifierForIndexPath:v7];
  v9 = [v8 objectForKeyedSubscript:PSIDKey];

  v10 = [(AXPronunciationLanguageListController *)self specifierForIndexPath:v7];

  v11 = [v10 objectForKeyedSubscript:@"Language"];

  v12 = [v9 isEqualToString:@"ALL"];
  if (v12)
  {
    v10 = [(AXPronunciationLanguageListController *)self selectedLanguages];
    if (![v10 count])
    {
      [v14 setChecked:1];
      goto LABEL_6;
    }
  }

  v13 = [(AXPronunciationLanguageListController *)self selectedLanguages];
  [v14 setChecked:{objc_msgSend(v13, "containsObject:", v11)}];

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