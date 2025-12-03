@interface VoiceOverBrailleLanguageController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BRLTTableEnumerator)tableEnumerator;
- (id)_brailleLanguageSpecifiers;
- (id)_defaultTable;
- (id)_newAddLanguageSpecifier;
- (id)_selectedBrailleTable:(id)table;
- (id)selectedBrailleTable;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_addLanguage:(id)language;
- (void)_donePressed;
- (void)_editPressed:(id)pressed;
- (void)_manageEditButton;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverBrailleLanguageController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VoiceOverBrailleLanguageController;
  [(VoiceOverBrailleLanguageController *)&v4 viewWillAppear:appear];
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

- (id)_selectedBrailleTable:(id)table
{
  selectedBrailleTable = [(VoiceOverBrailleLanguageController *)self selectedBrailleTable];
  localizedNameWithService = [selectedBrailleTable localizedNameWithService];

  return localizedNameWithService;
}

- (id)selectedBrailleTable
{
  v3 = +[AXSettings sharedInstance];
  voiceOverBrailleTableIdentifier = [v3 voiceOverBrailleTableIdentifier];

  if (voiceOverBrailleTableIdentifier)
  {
    _defaultTable = [[BRLTTable alloc] initWithIdentifier:voiceOverBrailleTableIdentifier];
  }

  else
  {
    _defaultTable = [(VoiceOverBrailleLanguageController *)self _defaultTable];
  }

  v6 = _defaultTable;

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
      voiceOverBrailleLanguageRotorItems = [v6 voiceOverBrailleLanguageRotorItems];

      if (voiceOverBrailleLanguageRotorItems)
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
    selectedBrailleTable = [(VoiceOverBrailleLanguageController *)self selectedBrailleTable];
    v13 = settingsLocString(@"BRAILLE_LANGUAGES_FOOTER", @"VoiceOverSettings");
    serviceIdentifier = [selectedBrailleTable serviceIdentifier];
    if ([serviceIdentifier isEqualToString:@"com.apple.scrod.braille.table.duxbury"])
    {
      language = [selectedBrailleTable language];
      v16 = [language isEqualToString:@"jpn"];

      if (!v16)
      {
LABEL_9:
        [v11 setProperty:v13 forKey:PSFooterTextGroupKey];
        [v5 addObject:v11];
        _brailleLanguageSpecifiers = [(VoiceOverBrailleLanguageController *)self _brailleLanguageSpecifiers];
        [v5 addObjectsFromArray:_brailleLanguageSpecifiers];
        _newAddLanguageSpecifier = [(VoiceOverBrailleLanguageController *)self _newAddLanguageSpecifier];
        [v5 addObject:_newAddLanguageSpecifier];

        [(VoiceOverBrailleLanguageController *)self setupLongTitleSpecifiers:v5];
        v21 = *&self->AXUISettingsBaseListController_opaque[v3];
        *&self->AXUISettingsBaseListController_opaque[v3] = v5;

        v4 = *&self->AXUISettingsBaseListController_opaque[v3];
        goto LABEL_10;
      }

      serviceIdentifier = settingsLocString(@"JAPANESE_BRAILLE_LANGUAGES_FOOTER", @"VoiceOverSettings");
      v17 = settingsLocString(serviceIdentifier, @"VoiceOverSettings");
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
  voiceOverBrailleLanguageRotorItems = [v3 voiceOverBrailleLanguageRotorItems];

  v5 = [voiceOverBrailleLanguageRotorItems indexOfObjectPassingTest:&__block_literal_global_47];
  v6 = +[AXLanguageManager sharedInstance];
  userLocale = [v6 userLocale];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    tableEnumerator = [(VoiceOverBrailleLanguageController *)self tableEnumerator];
    v9 = [objc_opt_class() defaultTableForLocale:userLocale];
  }

  else
  {
    v10 = [voiceOverBrailleLanguageRotorItems objectAtIndexedSubscript:v5];
    v11 = [v10 objectForKeyedSubscript:@"LanguageDefaults"];
    localeIdentifier = [userLocale localeIdentifier];
    tableEnumerator = [v11 objectForKeyedSubscript:localeIdentifier];

    v9 = [[BRLTTable alloc] initWithIdentifier:tableEnumerator];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:PSIDKey];
  v11 = [v10 isEqualToString:@"SelectedBrailleController"];

  if (v11)
  {
    v12 = objc_alloc_init(AXVoiceOverSelectedBrailleTableController);
    rootController = [(VoiceOverBrailleLanguageController *)self rootController];
    [(AXVoiceOverSelectedBrailleTableController *)v12 setRootController:rootController];

    [(AXVoiceOverSelectedBrailleTableController *)v12 setSpecifier:specifier];
    [(AXVoiceOverSelectedBrailleTableController *)v12 setParentBrailleController:self];
    [(AXVoiceOverSelectedBrailleTableController *)v12 setParentController:self];
    [(VoiceOverBrailleLanguageController *)self showController:v12 animate:1];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VoiceOverBrailleLanguageController;
    [(VoiceOverBrailleLanguageController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (id)_brailleLanguageSpecifiers
{
  v3 = +[AXSettings sharedInstance];
  voiceOverBrailleLanguageRotorItems = [v3 voiceOverBrailleLanguageRotorItems];

  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [voiceOverBrailleLanguageRotorItems count]);
  v6 = [voiceOverBrailleLanguageRotorItems count];
  v7 = +[AXLanguageManager sharedInstance];
  userLocale = [v7 userLocale];

  if (v6)
  {
    selfCopy = self;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = voiceOverBrailleLanguageRotorItems;
    obj = voiceOverBrailleLanguageRotorItems;
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
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          v13 = [v10 objectForKeyedSubscript:@"LanguageDefaults"];
          localeIdentifier = [userLocale localeIdentifier];
          v15 = [v13 objectForKeyedSubscript:localeIdentifier];

          if (v15)
          {
            v16 = [[BRLTTable alloc] initWithIdentifier:v15];
          }

          else
          {
            tableEnumerator = [(VoiceOverBrailleLanguageController *)selfCopy tableEnumerator];
            v16 = [objc_opt_class() defaultTableForLocale:userLocale];
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
          replacements = [v16 replacements];
          v22 = [replacements count];

          if (v22)
          {
            goto LABEL_20;
          }
        }

        else if ([v16 isCustomBrailleTable])
        {
          goto LABEL_20;
        }

        v23 = userLocale;
        v24 = v5;
        localizedNameWithService = [v16 localizedNameWithService];
        v26 = [PSSpecifier preferenceSpecifierNamed:localizedNameWithService target:selfCopy set:0 get:0 detail:v18 cell:v19 edit:0];

        [v26 setProperty:&__kCFBooleanTrue forKey:@"IsLanguage"];
        [v26 setProperty:v16 forKey:@"Table"];
        if (bOOLValue)
        {
          [v26 setIdentifier:@"DefaultLanguage"];
          v27 = +[AXLanguageManager sharedInstance];
          userLocale2 = [v27 userLocale];

          [v26 setProperty:userLocale2 forKey:@"Locale"];
          tableEnumerator2 = [(VoiceOverBrailleLanguageController *)selfCopy tableEnumerator];
          [v26 setProperty:tableEnumerator2 forKey:@"TableEnumerator"];
        }

        v5 = v24;
        [v24 addObject:v26];

        userLocale = v23;
LABEL_20:
      }

      v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (!v41)
      {
LABEL_22:

        voiceOverBrailleLanguageRotorItems = v37;
        goto LABEL_24;
      }
    }
  }

  tableEnumerator3 = [(VoiceOverBrailleLanguageController *)self tableEnumerator];
  v31 = [objc_opt_class() defaultTableForLocale:userLocale];

  [v31 localizedNameWithService];
  v33 = v32 = userLocale;
  v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v34 setIdentifier:@"DefaultLanguage"];
  [v34 setProperty:&__kCFBooleanTrue forKey:@"IsLanguage"];
  [v34 setProperty:v32 forKey:@"Locale"];
  tableEnumerator4 = [(VoiceOverBrailleLanguageController *)self tableEnumerator];
  [v34 setProperty:tableEnumerator4 forKey:@"TableEnumerator"];

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
  tableEnumerator = [(VoiceOverBrailleLanguageController *)self tableEnumerator];
  [v4 setProperty:tableEnumerator forKey:@"TableEnumerator"];

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

- (void)_addLanguage:(id)language
{
  languageCopy = language;
  v6 = objc_alloc_init(VoiceOverBrailleAllLanguagesController);
  [(VoiceOverBrailleAllLanguagesController *)v6 setModalPresentationStyle:2];
  [(VoiceOverBrailleAllLanguagesController *)v6 setSpecifier:languageCopy];

  v5 = [[UINavigationController alloc] initWithRootViewController:v6];
  [(VoiceOverBrailleLanguageController *)self presentViewController:v5 withTransition:8 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = VoiceOverBrailleLanguageController;
  v4 = [(VoiceOverBrailleLanguageController *)&v7 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v7 = [specifier propertyForKey:@"IsLanguage"];
  bOOLValue = [v7 BOOLValue];

  if ([*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] isEditing])
  {
    if (bOOLValue)
    {
      [cellCopy setUserInteractionEnabled:1];
      [cellCopy setCellEnabled:1];
      v9 = cellCopy;
      v10 = 1;
LABEL_6:
      [v9 setShowsReorderControl:v10];
      goto LABEL_10;
    }

    [cellCopy setUserInteractionEnabled:0];
    [cellCopy setCellEnabled:0];
    titleLabel = [cellCopy titleLabel];
    v12 = titleLabel;
    v13 = 0;
  }

  else
  {
    [cellCopy setUserInteractionEnabled:1];
    [cellCopy setCellEnabled:1];
    if (bOOLValue)
    {
      v9 = cellCopy;
      v10 = 0;
      goto LABEL_6;
    }

    titleLabel = [cellCopy titleLabel];
    v12 = titleLabel;
    v13 = 1;
  }

  [titleLabel setEnabled:v13];

LABEL_10:
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  if ([v5 BOOLValue])
  {
    identifier = [v4 identifier];
    v7 = ~[identifier isEqualToString:@"DefaultLanguage"];

    v8 = v7 & 1;
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v9 = [view cellForRowAtIndexPath:indexPathCopy];
  specifier = [v9 specifier];

  v11 = [specifier propertyForKey:@"IsLanguage"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = indexPathCopy;
  }

  else
  {
    v13 = pathCopy;
  }

  v14 = v13;

  return v13;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  if ([pathCopy isEqual:indexPathCopy])
  {
    goto LABEL_28;
  }

  selfCopy = self;
  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v11 specifier];

  v52 = [specifier propertyForKey:@"Table"];
  v48 = specifier;
  identifier = [specifier identifier];
  v14 = [identifier isEqualToString:@"DefaultLanguage"];

  v15 = [viewCopy cellForRowAtIndexPath:indexPathCopy];
  specifier2 = [v15 specifier];

  v49 = [specifier2 propertyForKey:@"Table"];
  v47 = specifier2;
  identifier2 = [specifier2 identifier];
  v18 = [identifier2 isEqualToString:@"DefaultLanguage"];

  v19 = +[AXSettings sharedInstance];
  voiceOverBrailleLanguageRotorItems = [v19 voiceOverBrailleLanguageRotorItems];
  v21 = [voiceOverBrailleLanguageRotorItems mutableCopy];

  if (![v21 count])
  {
    goto LABEL_27;
  }

  v46 = indexPathCopy;
  v43 = pathCopy;
  v44 = viewCopy;
  v22 = 0;
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v23 = [v21 objectAtIndexedSubscript:{v22, v43, v44}];
    v24 = v23;
    if (v14)
    {
      pathCopy = [v23 objectForKeyedSubscript:@"Default"];
      if ([pathCopy BOOLValue])
      {

LABEL_13:
        v50 = v22;
        goto LABEL_19;
      }
    }

    v25 = [v24 objectForKeyedSubscript:@"RotorItem"];
    identifier3 = [v52 identifier];
    v27 = [v25 isEqualToString:identifier3];

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
      voiceOverBrailleLanguageRotorItems = [v24 objectForKeyedSubscript:@"Default"];
      if ([voiceOverBrailleLanguageRotorItems BOOLValue])
      {
        v28 = 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    v29 = [v24 objectForKeyedSubscript:@"RotorItem"];
    identifier4 = [v49 identifier];
    v28 = [v29 isEqualToString:identifier4];

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
  pathCopy = v43;
  viewCopy = v44;
  indexPathCopy = v46;
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
      voiceOverBrailleLanguageRotorItems2 = [v35 voiceOverBrailleLanguageRotorItems];
      v37 = [voiceOverBrailleLanguageRotorItems2 debugDescription];
      *buf = 138412290;
      v54 = v37;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Reordered braille languages settings %@", buf, 0xCu);

      indexPathCopy = v46;
    }

    v38 = OBJC_IVAR___PSListController__specifiers;
    v39 = [*&selfCopy->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
    v40 = [(VoiceOverBrailleLanguageController *)selfCopy indexOfSpecifier:v48];
    if (v40 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = v40;
      v42 = [v39 objectAtIndexedSubscript:v40];
      [v39 removeObjectAtIndex:v41];
      [v39 insertObject:v42 atIndex:&v41[v51 - v50]];
      objc_storeStrong(&selfCopy->AXUISettingsBaseListController_opaque[v38], v39);

      indexPathCopy = v46;
    }
  }

LABEL_27:

LABEL_28:
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v7 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:path]];
  v8 = [v7 propertyForKey:@"IsLanguage"];
  bOOLValue = [v8 BOOLValue];

  if (style == 1 && bOOLValue)
  {
    v10 = +[AXSettings sharedInstance];
    voiceOverBrailleLanguageRotorItems = [v10 voiceOverBrailleLanguageRotorItems];
    v12 = [voiceOverBrailleLanguageRotorItems mutableCopy];

    v13 = [v7 propertyForKey:@"Table"];
    if ([v12 count])
    {
      v14 = 0;
      while (1)
      {
        v15 = [v12 objectAtIndexedSubscript:v14];
        v16 = [v15 objectForKeyedSubscript:@"RotorItem"];
        identifier = [v13 identifier];
        v18 = [v16 isEqualToString:identifier];

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
      identifier2 = [v13 identifier];
      v22 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleDisplayOutputTableIdentifier = [v22 voiceOverTouchBrailleDisplayOutputTableIdentifier];
      v24 = [identifier2 isEqualToString:voiceOverTouchBrailleDisplayOutputTableIdentifier];

      if (v24)
      {
        _defaultTable = [(VoiceOverBrailleLanguageController *)self _defaultTable];
        identifier3 = [_defaultTable identifier];
        v27 = +[AXSettings sharedInstance];
        [v27 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:identifier3];
      }

      identifier4 = [v13 identifier];
      v29 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleDisplayInputTableIdentifier = [v29 voiceOverTouchBrailleDisplayInputTableIdentifier];
      v31 = [identifier4 isEqualToString:voiceOverTouchBrailleDisplayInputTableIdentifier];

      if (v31)
      {
        _defaultTable2 = [(VoiceOverBrailleLanguageController *)self _defaultTable];
        identifier5 = [_defaultTable2 identifier];
        v34 = +[AXSettings sharedInstance];
        [v34 setVoiceOverTouchBrailleDisplayInputTableIdentifier:identifier5];
      }

      identifier6 = [v13 identifier];
      v36 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleGesturesInputTableIdentifier = [v36 voiceOverTouchBrailleGesturesInputTableIdentifier];
      v38 = [identifier6 isEqualToString:voiceOverTouchBrailleGesturesInputTableIdentifier];

      if (v38)
      {
        v39 = VOSFirstGesturesCompatibleBrailleTable();
        identifier7 = [v39 identifier];
        v41 = +[AXSettings sharedInstance];
        [v41 setVoiceOverTouchBrailleGesturesInputTableIdentifier:identifier7];
      }
    }

    v42 = +[AXSettings sharedInstance];
    voiceOverBrailleTableIdentifier = [v42 voiceOverBrailleTableIdentifier];

    identifier8 = [v13 identifier];
    v45 = [identifier8 isEqualToString:voiceOverBrailleTableIdentifier];

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

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleLanguageController *)self specifierAtIndex:[(VoiceOverBrailleLanguageController *)self indexForIndexPath:path]];
  identifier = [v4 identifier];
  v6 = [identifier isEqualToString:@"DefaultLanguage"];

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
  _brailleLanguageSpecifiers = [(VoiceOverBrailleLanguageController *)self _brailleLanguageSpecifiers];
  v4 = [_brailleLanguageSpecifiers count];

  if (v4 < 2)
  {
    navigationItem = [(VoiceOverBrailleLanguageController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];

    [(VoiceOverBrailleLanguageController *)self setEditing:0 animated:1];
  }

  else if (([*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] isEditing] & 1) == 0)
  {
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"_editPressed:"];
    navigationItem2 = [(VoiceOverBrailleLanguageController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v7];
  }
}

- (void)_editPressed:(id)pressed
{
  [(VoiceOverBrailleLanguageController *)self setEditing:1 animated:1];
  table = [(VoiceOverBrailleLanguageController *)self table];
  [table reloadData];

  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  navigationItem = [(VoiceOverBrailleLanguageController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];
}

- (void)_donePressed
{
  [(VoiceOverBrailleLanguageController *)self setEditing:0 animated:1];
  table = [(VoiceOverBrailleLanguageController *)self table];
  [table reloadData];

  [(VoiceOverBrailleLanguageController *)self _manageEditButton];
}

@end