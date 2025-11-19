@interface VoiceOverBrailleLanguageController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (BRLTTableEnumerator)tableEnumerator;
- (id)_brailleLanguageSpecifiers;
- (id)_defaultTable;
- (id)_newAddLanguageSpecifier;
- (id)_selectedBrailleTable:(id)a3;
- (id)selectedBrailleTable;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_addLanguage:(id)a3;
- (void)_donePressed;
- (void)_editPressed:(id)a3;
- (void)_manageEditButton;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VoiceOverBrailleLanguageController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VoiceOverBrailleLanguageController;
  [(VoiceOverBrailleLanguageController *)&v4 viewWillAppear:a3];
  [(VoiceOverBrailleLanguageController *)self reloadSpecifiers];
  [(VoiceOverBrailleLanguageController *)self _manageEditButton];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VoiceOverBrailleLanguageController;
  [(VoiceOverBrailleLanguageController *)&v10 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = kAXSVoiceOverTouchBrailleLanguageRotorChangedNotification;
  v5 = +[NSOperationQueue mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __49__VoiceOverBrailleLanguageController_viewDidLoad__block_invoke;
  v7[3] = &unk_2581B0;
  objc_copyWeak(&v8, &location);
  v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__VoiceOverBrailleLanguageController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)_selectedBrailleTable:(id)a3
{
  v3 = [(VoiceOverBrailleLanguageController *)self selectedBrailleTable];
  v4 = [v3 localizedNameWithService];

  return v4;
}

- (id)selectedBrailleTable
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverBrailleTableIdentifier];

  if (v4)
  {
    v5 = [[BRLTTable alloc] initWithIdentifier:v4];
  }

  else
  {
    v5 = [(VoiceOverBrailleLanguageController *)self _defaultTable];
  }

  v6 = v5;

  return v6;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    if ((VOSCustomBrailleEnabled() & 1) == 0)
    {
      v6 = +[AXSettings sharedInstance];
      v7 = [v6 voiceOverBrailleLanguageRotorItems];

      if (v7)
      {
        v8 = +[PSSpecifier emptyGroupSpecifier];
        [v5 addObject:v8];
        v9 = settingsLocString(@"SELECTED_BRAILLE_TABLE", @"VoiceOverSettings");
        v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:"_selectedBrailleTable:" detail:objc_opt_class() cell:2 edit:0];

        [v10 setProperty:@"SelectedBrailleController" forKey:PSIDKey];
        [v5 addObject:v10];
      }
    }

    v11 = [PSSpecifier groupSpecifierWithID:@"LanguagesGroup"];
    v12 = [(VoiceOverBrailleLanguageController *)self selectedBrailleTable];
    v13 = settingsLocString(@"BRAILLE_LANGUAGES_FOOTER", @"VoiceOverSettings");
    v14 = [v12 serviceIdentifier];
    if ([v14 isEqualToString:@"com.apple.scrod.braille.table.duxbury"])
    {
      v15 = [v12 language];
      v16 = [v15 isEqualToString:@"jpn"];

      if (!v16)
      {
LABEL_9:
        [v11 setProperty:v13 forKey:PSFooterTextGroupKey];
        [v5 addObject:v11];
        v19 = [(VoiceOverBrailleLanguageController *)self _brailleLanguageSpecifiers];
        [v5 addObjectsFromArray:v19];
        v20 = [(VoiceOverBrailleLanguageController *)self _newAddLanguageSpecifier];
        [v5 addObject:v20];

        [(VoiceOverBrailleLanguageController *)self setupLongTitleSpecifiers:v5];
        v21 = *&self->AXUISettingsBaseListController_opaque[v3];
        *&self->AXUISettingsBaseListController_opaque[v3] = v5;

        v4 = *&self->AXUISettingsBaseListController_opaque[v3];
        goto LABEL_10;
      }

      v14 = settingsLocString(@"JAPANESE_BRAILLE_LANGUAGES_FOOTER", @"VoiceOverSettings");
      v17 = settingsLocString(v14, @"VoiceOverSettings");
      v18 = [NSString stringWithFormat:@"%@\n%@", v13, v17];

      v13 = v18;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v4;
}

- (id)_defaultTable
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverBrailleLanguageRotorItems];

  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_47];
  v6 = +[AXLanguageManager sharedInstance];
  v7 = [v6 userLocale];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(VoiceOverBrailleLanguageController *)self tableEnumerator];
    v9 = [objc_opt_class() defaultTableForLocale:v7];
  }

  else
  {
    v10 = [v4 objectAtIndexedSubscript:v5];
    v11 = [v10 objectForKeyedSubscript:@"LanguageDefaults"];
    v12 = [v7 localeIdentifier];
    v8 = [v11 objectForKeyedSubscript:v12];

    v9 = [[BRLTTable alloc] initWithIdentifier:v8];
  }

  v13 = v9;

  return v13;
}

BOOL __51__VoiceOverBrailleLanguageController__defaultTable__block_invoke(id a1, NSDictionary *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"Default"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = [v9 propertyForKey:PSIDKey];
  v11 = [v10 isEqualToString:@"SelectedBrailleController"];

  if (v11)
  {
    v12 = objc_alloc_init(AXVoiceOverSelectedBrailleTableController);
    v13 = [(VoiceOverBrailleLanguageController *)self rootController];
    [(AXVoiceOverSelectedBrailleTableController *)v12 setRootController:v13];

    [(AXVoiceOverSelectedBrailleTableController *)v12 setSpecifier:v9];
    [(AXVoiceOverSelectedBrailleTableController *)v12 setParentBrailleController:self];
    [(AXVoiceOverSelectedBrailleTableController *)v12 setParentController:self];
    [(VoiceOverBrailleLanguageController *)self showController:v12 animate:1];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VoiceOverBrailleLanguageController;
    [(VoiceOverBrailleLanguageController *)&v14 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (id)_brailleLanguageSpecifiers
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverBrailleLanguageRotorItems];

  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v6 = [v4 count];
  v7 = +[AXLanguageManager sharedInstance];
  v8 = [v7 userLocale];

  if (v6)
  {
    v39 = self;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = v4;
    obj = v4;
    v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (!v41)
    {
      goto LABEL_22;
    }

    v40 = *v43;
    while (1)
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"Default"];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v13 = [v10 objectForKeyedSubscript:@"LanguageDefaults"];
          v14 = [v8 localeIdentifier];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [[BRLTTable alloc] initWithIdentifier:v15];
          }

          else
          {
            v20 = [(VoiceOverBrailleLanguageController *)v39 tableEnumerator];
            v16 = [objc_opt_class() defaultTableForLocale:v8];
          }

          v18 = objc_opt_class();

          v19 = 2;
        }

        else
        {
          v17 = [BRLTTable alloc];
          v13 = [v10 objectForKeyedSubscript:@"RotorItem"];
          v16 = [v17 initWithIdentifier:v13];
          v18 = 0;
          v19 = 3;
        }

        if (VOSCustomBrailleEnabled())
        {
          v21 = [v16 replacements];
          v22 = [v21 count];

          if (v22)
          {
            goto LABEL_20;
          }
        }

        else if ([v16 isCustomBrailleTable])
        {
          goto LABEL_20;
        }

        v23 = v8;
        v24 = v5;
        v25 = [v16 localizedNameWithService];
        v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:v39 set:0 get:0 detail:v18 cell:v19 edit:0];

        [v26 setProperty:&__kCFBooleanTrue forKey:@"IsLanguage"];
        [v26 setProperty:v16 forKey:@"Table"];
        if (v12)
        {
          [v26 setIdentifier:@"DefaultLanguage"];
          v27 = +[AXLanguageManager sharedInstance];
          v28 = [v27 userLocale];

          [v26 setProperty:v28 forKey:@"Locale"];
          v29 = [(VoiceOverBrailleLanguageController *)v39 tableEnumerator];
          [v26 setProperty:v29 forKey:@"TableEnumerator"];
        }

        v5 = v24;
        [v24 addObject:v26];

        v8 = v23;
LABEL_20:
      }

      v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (!v41)
      {
LABEL_22:

        v4 = v37;
        goto LABEL_24;
      }
    }
  }

  v30 = [(VoiceOverBrailleLanguageController *)self tableEnumerator];
  v31 = [objc_opt_class() defaultTableForLocale:v8];

  [v31 localizedNameWithService];
  v33 = v32 = v8;
  v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v34 setIdentifier:@"DefaultLanguage"];
  [v34 setProperty:&__kCFBooleanTrue forKey:@"IsLanguage"];
  [v34 setProperty:v32 forKey:@"Locale"];
  v35 = [(VoiceOverBrailleLanguageController *)self tableEnumerator];
  [v34 setProperty:v35 forKey:@"TableEnumerator"];

  [v34 setProperty:v31 forKey:@"Table"];
  [v5 addObject:v34];

LABEL_24:

  return v5;
}

- (id)_newAddLanguageSpecifier
{
  v3 = settingsLocString(@"ADD_NEW_BRAILLE_LANGUAGE_BUTTON", @"VoiceOverSettings");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v4 setButtonAction:"_addLanguage:"];
  v5 = [(VoiceOverBrailleLanguageController *)self tableEnumerator];
  [v4 setProperty:v5 forKey:@"TableEnumerator"];

  [v4 setProperty:&__kCFBooleanTrue forKey:@"IsAddingNewLanguage"];
  [v4 setProperty:&__kCFBooleanTrue forKey:@"IsNewLanguage"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __62__VoiceOverBrailleLanguageController__newAddLanguageSpecifier__block_invoke;
  v8[3] = &unk_2553B0;
  v8[4] = self;
  v6 = objc_retainBlock(v8);
  [v4 setProperty:v6 forKey:@"DismissBlock"];

  [v4 setProperty:@"ADD_NEW_BRAILLE_LANGUAGE" forKey:PSIDKey];
  return v4;
}

id __62__VoiceOverBrailleLanguageController__newAddLanguageSpecifier__block_invoke(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _manageEditButton];
}

- (void)_addLanguage:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(VoiceOverBrailleAllLanguagesController);
  [(VoiceOverBrailleAllLanguagesController *)v6 setModalPresentationStyle:2];
  [(VoiceOverBrailleAllLanguagesController *)v6 setSpecifier:v4];

  v5 = [[UINavigationController alloc] initWithRootViewController:v6];
  [(VoiceOverBrailleLanguageController *)self presentViewController:v5 withTransition:8 completion:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = VoiceOverBrailleLanguageController;
  v4 = [(VoiceOverBrailleLanguageController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  v6 = [v14 specifier];
  v7 = [v6 propertyForKey:@"IsLanguage"];
  v8 = [v7 BOOLValue];

  if ([*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] isEditing])
  {
    if (v8)
    {
      [v14 setUserInteractionEnabled:1];
      [v14 setCellEnabled:1];
      v9 = v14;
      v10 = 1;
LABEL_6:
      [v9 setShowsReorderControl:v10];
      goto LABEL_10;
    }

    [v14 setUserInteractionEnabled:0];
    [v14 setCellEnabled:0];
    v11 = [v14 titleLabel];
    v12 = v11;
    v13 = 0;
  }

  else
  {
    [v14 setUserInteractionEnabled:1];
    [v14 setCellEnabled:1];
    if (v8)
    {
      v9 = v14;
      v10 = 0;
      goto LABEL_6;
    }

    v11 = [v14 titleLabel];
    v12 = v11;
    v13 = 1;
  }

  [v11 setEnabled:v13];

LABEL_10:
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:a4]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:a4]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  if ([v5 BOOLValue])
  {
    v6 = [v4 identifier];
    v7 = ~[v6 isEqualToString:@"DefaultLanguage"];

    v8 = v7 & 1;
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:a4]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 cellForRowAtIndexPath:v8];
  v10 = [v9 specifier];

  v11 = [v10 propertyForKey:@"IsLanguage"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = v8;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;

  return v13;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierForIndexPath:a4];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqual:v10])
  {
    goto LABEL_28;
  }

  v45 = self;
  v11 = [v8 cellForRowAtIndexPath:v9];
  v12 = [v11 specifier];

  v52 = [v12 propertyForKey:@"Table"];
  v48 = v12;
  v13 = [v12 identifier];
  v14 = [v13 isEqualToString:@"DefaultLanguage"];

  v15 = [v8 cellForRowAtIndexPath:v10];
  v16 = [v15 specifier];

  v49 = [v16 propertyForKey:@"Table"];
  v47 = v16;
  v17 = [v16 identifier];
  v18 = [v17 isEqualToString:@"DefaultLanguage"];

  v19 = +[AXSettings sharedInstance];
  v20 = [v19 voiceOverBrailleLanguageRotorItems];
  v21 = [v20 mutableCopy];

  if (![v21 count])
  {
    goto LABEL_27;
  }

  v46 = v10;
  v43 = v9;
  v44 = v8;
  v22 = 0;
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v23 = [v21 objectAtIndexedSubscript:{v22, v43, v44}];
    v24 = v23;
    if (v14)
    {
      v9 = [v23 objectForKeyedSubscript:@"Default"];
      if ([v9 BOOLValue])
      {

LABEL_13:
        v50 = v22;
        goto LABEL_19;
      }
    }

    v25 = [v24 objectForKeyedSubscript:@"RotorItem"];
    v26 = [v52 identifier];
    v27 = [v25 isEqualToString:v26];

    if (v14)
    {

      if (v27)
      {
        goto LABEL_13;
      }
    }

    else if (v27)
    {
      goto LABEL_13;
    }

    if (v18)
    {
      v20 = [v24 objectForKeyedSubscript:@"Default"];
      if ([v20 BOOLValue])
      {
        v28 = 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    v29 = [v24 objectForKeyedSubscript:@"RotorItem"];
    v30 = [v49 identifier];
    v28 = [v29 isEqualToString:v30];

    if (v18)
    {
      goto LABEL_15;
    }

LABEL_16:
    v31 = v51;
    if (v28)
    {
      v31 = v22;
    }

    v51 = v31;
LABEL_19:

    ++v22;
  }

  while (v22 < [v21 count]);
  v9 = v43;
  v8 = v44;
  v10 = v46;
  if (v50 != 0x7FFFFFFFFFFFFFFFLL && v51 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [v21 objectAtIndexedSubscript:v50];
    [v21 removeObjectAtIndex:v50];
    [v21 insertObject:v32 atIndex:v51];
    v33 = +[AXSettings sharedInstance];
    [v33 setVoiceOverBrailleLanguageRotorItems:v21];

    v34 = BRLLogTranslation();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = +[AXSettings sharedInstance];
      v36 = [v35 voiceOverBrailleLanguageRotorItems];
      v37 = [v36 debugDescription];
      *buf = 138412290;
      v54 = v37;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Reordered braille languages settings %@", buf, 0xCu);

      v10 = v46;
    }

    v38 = OBJC_IVAR___PSListController__specifiers;
    v39 = [*&v45->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
    v40 = [(VoiceOverBrailleLanguageController *)v45 indexOfSpecifier:v48];
    if (v40 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = v40;
      v42 = [v39 objectAtIndexedSubscript:v40];
      [v39 removeObjectAtIndex:v41];
      [v39 insertObject:v42 atIndex:&v41[v51 - v50]];
      objc_storeStrong(&v45->AXUISettingsBaseListController_opaque[v38], v39);

      v10 = v46;
    }
  }

LABEL_27:

LABEL_28:
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:a5]];
  v8 = [v7 propertyForKey:@"IsLanguage"];
  v9 = [v8 BOOLValue];

  if (a4 == 1 && v9)
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 voiceOverBrailleLanguageRotorItems];
    v12 = [v11 mutableCopy];

    v13 = [v7 propertyForKey:@"Table"];
    if ([v12 count])
    {
      v14 = 0;
      while (1)
      {
        v15 = [v12 objectAtIndexedSubscript:v14];
        v16 = [v15 objectForKeyedSubscript:@"RotorItem"];
        v17 = [v13 identifier];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          break;
        }

        if ([v12 count] <= ++v14)
        {
          goto LABEL_9;
        }
      }

      [v12 removeObjectAtIndex:v14];
    }

LABEL_9:
    v19 = BRLLogTranslation();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v12;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Setting new items after removing: %@", buf, 0xCu);
    }

    v20 = +[AXSettings sharedInstance];
    [v20 setVoiceOverBrailleLanguageRotorItems:v12];

    if (VOSCustomBrailleEnabled())
    {
      v21 = [v13 identifier];
      v22 = +[AXSettings sharedInstance];
      v23 = [v22 voiceOverTouchBrailleDisplayOutputTableIdentifier];
      v24 = [v21 isEqualToString:v23];

      if (v24)
      {
        v25 = [(VoiceOverBrailleLanguageController *)self _defaultTable];
        v26 = [v25 identifier];
        v27 = +[AXSettings sharedInstance];
        [v27 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:v26];
      }

      v28 = [v13 identifier];
      v29 = +[AXSettings sharedInstance];
      v30 = [v29 voiceOverTouchBrailleDisplayInputTableIdentifier];
      v31 = [v28 isEqualToString:v30];

      if (v31)
      {
        v32 = [(VoiceOverBrailleLanguageController *)self _defaultTable];
        v33 = [v32 identifier];
        v34 = +[AXSettings sharedInstance];
        [v34 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v33];
      }

      v35 = [v13 identifier];
      v36 = +[AXSettings sharedInstance];
      v37 = [v36 voiceOverTouchBrailleGesturesInputTableIdentifier];
      v38 = [v35 isEqualToString:v37];

      if (v38)
      {
        v39 = VOSFirstGesturesCompatibleBrailleTable();
        v40 = [v39 identifier];
        v41 = +[AXSettings sharedInstance];
        [v41 setVoiceOverTouchBrailleGesturesInputTableIdentifier:v40];
      }
    }

    v42 = +[AXSettings sharedInstance];
    v43 = [v42 voiceOverBrailleTableIdentifier];

    v44 = [v13 identifier];
    v45 = [v44 isEqualToString:v43];

    if (v45)
    {
      v46 = BRLLogTranslation();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Resetting current bralle table to default", buf, 2u);
      }

      v47 = +[AXSettings sharedInstance];
      [v47 setVoiceOverBrailleTableIdentifier:0];
    }

    [(VoiceOverBrailleLanguageController *)self removeSpecifier:v7 animated:1];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__VoiceOverBrailleLanguageController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  block[3] = &unk_2553B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __85__VoiceOverBrailleLanguageController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverBrailleLanguageRotorItems];
  v4 = [v3 count];

  if (v4 <= 1)
  {
    [*(a1 + 32) setEditing:0 animated:1];
    [*(*(a1 + 32) + OBJC_IVAR___PSListController__table) reloadData];
    v5 = *(a1 + 32);

    [v5 _manageEditButton];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:a4]];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"DefaultLanguage"];

  if (v6)
  {
    v7 = objc_alloc_init(UISwipeActionsConfiguration);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BRLTTableEnumerator)tableEnumerator
{
  tableEnumerator = self->_tableEnumerator;
  if (!tableEnumerator)
  {
    v4 = +[BRLTTableEnumerator tableEnumeratorWithSystemBundlePath];
    v5 = self->_tableEnumerator;
    self->_tableEnumerator = v4;

    tableEnumerator = self->_tableEnumerator;
  }

  return tableEnumerator;
}

- (void)_manageEditButton
{
  v3 = [(VoiceOverBrailleLanguageController *)self _brailleLanguageSpecifiers];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v5 = [(VoiceOverBrailleLanguageController *)self navigationItem];
    [v5 setRightBarButtonItem:0];

    [(VoiceOverBrailleLanguageController *)self setEditing:0 animated:1];
  }

  else if (([*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] isEditing] & 1) == 0)
  {
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"_editPressed:"];
    v6 = [(VoiceOverBrailleLanguageController *)self navigationItem];
    [v6 setRightBarButtonItem:v7];
  }
}

- (void)_editPressed:(id)a3
{
  [(VoiceOverBrailleLanguageController *)self setEditing:1 animated:1];
  v4 = [(VoiceOverBrailleLanguageController *)self table];
  [v4 reloadData];

  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  v5 = [(VoiceOverBrailleLanguageController *)self navigationItem];
  [v5 setRightBarButtonItem:v6];
}

- (void)_donePressed
{
  [(VoiceOverBrailleLanguageController *)self setEditing:0 animated:1];
  v3 = [(VoiceOverBrailleLanguageController *)self table];
  [v3 reloadData];

  [(VoiceOverBrailleLanguageController *)self _manageEditButton];
}

@end