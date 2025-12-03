@interface VoiceOverBrailleLanguageVariantsTableController
- (BOOL)_isSystemBundle:(id)bundle;
- (BRLTTableEnumerator)tableEnumerator;
- (id)_translatorBundlesWithSystemAtFirst;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_indexOfDefaultRotorItem;
- (void)_ensureDefaultRotorItemExists;
- (void)_popToTopOfBrailleSettings;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateTableCheckedSelection:(id)selection;
@end

@implementation VoiceOverBrailleLanguageVariantsTableController

- (BRLTTableEnumerator)tableEnumerator
{
  specifier = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  v3 = [specifier propertyForKey:@"TableEnumerator"];

  return v3;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v37 = OBJC_IVAR___PSListController__specifiers;
    v43 = +[NSMutableArray array];
    specifier = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
    v5 = [specifier propertyForKey:@"IsLanguageAgnostic"];
    bOOLValue = [v5 BOOLValue];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(VoiceOverBrailleLanguageVariantsTableController *)self _translatorBundlesWithSystemAtFirst];
    v42 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v42)
    {
      v6 = 0;
      v40 = *v53;
      v38 = PSFooterTextGroupKey;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v53 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v52 + 1) + 8 * i);
          specifier2 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
          v10 = specifier2;
          if (bOOLValue)
          {
            v11 = [specifier2 propertyForKey:@"TableIdentifier"];

            tableEnumerator = [(VoiceOverBrailleLanguageVariantsTableController *)self tableEnumerator];
            v13 = [tableEnumerator languageAgnosticTablesForIdentifier:v11 inBundle:v8];

            v14 = [NSString stringWithFormat:@"%@.footer", v11];
            v15 = settingsLocString(v14, @"VoiceOverSettings");
            v16 = v15;
            if (v15 && ([v15 isEqual:v14] & 1) == 0)
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v11 = [specifier2 propertyForKey:@"Locale"];

            tableEnumerator2 = [(VoiceOverBrailleLanguageVariantsTableController *)self tableEnumerator];
            v13 = [tableEnumerator2 tablesForLocale:v11 inBundle:v8];

            v14 = BRLLogTranslation();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              languageCode = [v11 languageCode];
              v20 = [v13 debugDescription];
              *buf = 138412802;
              v58 = v11;
              v59 = 2112;
              v60 = languageCode;
              v61 = 2112;
              v62 = v20;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Finding tables for locale %@ %@ %@", buf, 0x20u);
            }

            v17 = 0;
          }

          if ([v13 count])
          {
            v47 = i;
            v21 = +[NSMutableArray array];
            if ((v6 & 1) == 0 || ![(VoiceOverBrailleLanguageVariantsTableController *)self _isSystemBundle:v8])
            {
              bundleIdentifier = [v8 bundleIdentifier];
              v23 = [BRLTTableEnumerator localizedNameForServiceWithIdentifier:bundleIdentifier];

              v24 = [PSSpecifier groupSpecifierWithName:v23];
              if ([v17 length])
              {
                [v24 setProperty:v17 forKey:v38];
              }

              [v43 addObject:v24];
            }

            v44 = v17;
            v46 = [(VoiceOverBrailleLanguageVariantsTableController *)self _isSystemBundle:v8];
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v45 = v13;
            v25 = v13;
            v26 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v49;
              do
              {
                for (j = 0; j != v27; j = j + 1)
                {
                  if (*v49 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v48 + 1) + 8 * j);
                  if (VOSCustomBrailleEnabled())
                  {
                    replacements = [v30 replacements];
                    v32 = [replacements count];

                    if (v32)
                    {
                      continue;
                    }
                  }

                  else if ([v30 isCustomBrailleTable])
                  {
                    continue;
                  }

                  localizedName = [v30 localizedName];
                  v34 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:0 cell:3 edit:0];
                  [v34 setProperty:v30 forKey:@"Table"];
                  [v21 addObject:v34];
                }

                v27 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
              }

              while (v27);
            }

            [v21 sortUsingComparator:&__block_literal_global_9];
            [v43 addObjectsFromArray:v21];
            [(VoiceOverBrailleLanguageVariantsTableController *)self setAllSpecifiersUnsearchable:v43];

            i = v47;
            v6 = v46;
            v17 = v44;
            v13 = v45;
          }
        }

        v42 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      }

      while (v42);
    }

    v35 = *&self->AXUISettingsListController_opaque[v37];
    *&self->AXUISettingsListController_opaque[v37] = v43;

    v3 = *&self->AXUISettingsListController_opaque[v37];
  }

  return v3;
}

int64_t __61__VoiceOverBrailleLanguageVariantsTableController_specifiers__block_invoke(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_translatorBundlesWithSystemAtFirst
{
  tableEnumerator = [(VoiceOverBrailleLanguageVariantsTableController *)self tableEnumerator];
  translatorBundles = [tableEnumerator translatorBundles];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = translatorBundles;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([(VoiceOverBrailleLanguageVariantsTableController *)self _isSystemBundle:v12, v15])
        {
          v13 = v5;
        }

        else
        {
          v13 = v6;
        }

        [v13 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [v5 addObjectsFromArray:v6];

  return v5;
}

- (BOOL)_isSystemBundle:(id)bundle
{
  bundleCopy = bundle;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.scrod.braille.table.duxbury"];

  bundleIdentifier2 = [bundleCopy bundleIdentifier];

  LOBYTE(bundleCopy) = [bundleIdentifier2 isEqualToString:@"com.apple.scrod.braille.table.apple"];
  return (v5 | bundleCopy) & 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = VoiceOverBrailleLanguageVariantsTableController;
  v4 = [(VoiceOverBrailleLanguageVariantsTableController *)&v7 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v6 = [specifier propertyForKey:@"Table"];
  selfCopy = self;
  specifier2 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  identifier = [specifier2 identifier];
  v9 = [identifier isEqualToString:@"DefaultLanguage"];

  v10 = +[AXLanguageManager sharedInstance];
  userLocale = [v10 userLocale];

  v11 = +[AXSettings sharedInstance];
  voiceOverBrailleLanguageRotorItems = [v11 voiceOverBrailleLanguageRotorItems];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = voiceOverBrailleLanguageRotorItems;
  v13 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v42 = 0;
    v15 = *v48;
    while (1)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        if (v9 && ([*(*(&v47 + 1) + 8 * i) objectForKeyedSubscript:@"Default"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, v19))
        {
          v20 = [v17 objectForKeyedSubscript:@"LanguageDefaults"];
          localeIdentifier = [userLocale localeIdentifier];
          v22 = [v20 objectForKeyedSubscript:localeIdentifier];

          identifier2 = [v6 identifier];
          LODWORD(localeIdentifier) = [identifier2 isEqualToString:v22];

          if (localeIdentifier)
          {
            [cellCopy setChecked:1];
          }

          v42 = 1;
        }

        else
        {
          v24 = [v17 objectForKeyedSubscript:@"Default"];
          bOOLValue = [v24 BOOLValue];

          if (bOOLValue)
          {
            v26 = [v17 objectForKeyedSubscript:@"LanguageDefaults"];
            localeIdentifier2 = [userLocale localeIdentifier];
            v28 = [v26 objectForKeyedSubscript:localeIdentifier2];

            identifier3 = [v6 identifier];
            LOBYTE(localeIdentifier2) = [identifier3 isEqualToString:v28];

            if ((localeIdentifier2 & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            identifier4 = [v6 identifier];
            v31 = [v17 objectForKeyedSubscript:@"RotorItem"];
            v32 = [identifier4 isEqualToString:v31];

            if (!v32)
            {
              continue;
            }
          }

          specifier3 = [(VoiceOverBrailleLanguageVariantsTableController *)selfCopy specifier];
          v34 = [specifier3 propertyForKey:@"AllowDuplicatesKey"];
          bOOLValue2 = [v34 BOOLValue];

          if ((bOOLValue2 & 1) == 0)
          {
            [cellCopy setUserInteractionEnabled:0];
            [cellCopy setCellEnabled:0];
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (!v14)
      {
        goto LABEL_21;
      }
    }
  }

  v42 = 0;
LABEL_21:

  if (v9 && (v42 & 1) == 0)
  {
    v36 = +[AXLanguageManager sharedInstance];
    userLocale2 = [v36 userLocale];
    v38 = [BRLTTableEnumerator defaultTableForLocale:userLocale2];

    identifier5 = [v6 identifier];
    identifier6 = [v38 identifier];
    [cellCopy setChecked:{objc_msgSend(identifier5, "isEqualToString:", identifier6)}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v70.receiver = self;
  v70.super_class = VoiceOverBrailleLanguageVariantsTableController;
  pathCopy = path;
  viewCopy = view;
  [(VoiceOverBrailleLanguageVariantsTableController *)&v70 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];

  specifier = [v8 specifier];

  specifier2 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  v11 = [specifier2 propertyForKey:@"TableSelectionBlockKey"];

  v12 = [specifier propertyForKey:@"Table"];
  [(VoiceOverBrailleLanguageVariantsTableController *)self updateTableCheckedSelection:pathCopy];

  if (v11)
  {
    identifier = [v12 identifier];
    (v11)[2](v11, identifier);

    [(VoiceOverBrailleLanguageVariantsTableController *)self _popToTopOfBrailleSettings];
    goto LABEL_41;
  }

  [(VoiceOverBrailleLanguageVariantsTableController *)self _ensureDefaultRotorItemExists];
  v14 = AXValidationManager_ptr;
  v15 = +[AXSettings sharedInstance];
  voiceOverBrailleLanguageRotorItems = [v15 voiceOverBrailleLanguageRotorItems];
  v17 = [voiceOverBrailleLanguageRotorItems mutableCopy];

  if (!v17)
  {
    v17 = +[NSMutableArray array];
  }

  specifier3 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  identifier2 = [specifier3 identifier];
  v20 = [identifier2 isEqualToString:@"DefaultLanguage"];

  if (v20)
  {
    _indexOfDefaultRotorItem = [(VoiceOverBrailleLanguageVariantsTableController *)self _indexOfDefaultRotorItem];
    if (_indexOfDefaultRotorItem == 0x7FFFFFFFFFFFFFFFLL)
    {
      v69 = 0;
LABEL_25:
      sharedInstance = [v14[375] sharedInstance];
      voiceOverBrailleTableIdentifier = [sharedInstance voiceOverBrailleTableIdentifier];

      if (voiceOverBrailleTableIdentifier)
      {
        v68 = v20;
        v66 = v17;
        v49 = v14;
        v50 = [[BRLTTable alloc] initWithIdentifier:voiceOverBrailleTableIdentifier];
        language = [v12 language];
        language2 = [v50 language];
        v53 = [language isEqualToString:language2];

        if (v53)
        {
          identifier3 = [v12 identifier];
          sharedInstance2 = [v49[375] sharedInstance];
          [sharedInstance2 setVoiceOverBrailleTableIdentifier:identifier3];
        }

        v14 = v49;
        v17 = v66;
        LOBYTE(v20) = v68;
      }

      sharedInstance3 = [v14[375] sharedInstance];
      [sharedInstance3 setVoiceOverBrailleLanguageRotorItems:v17];

      v57 = BRLLogTranslation();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        [VoiceOverBrailleLanguageVariantsTableController tableView:v57 didSelectRowAtIndexPath:?];
      }

      goto LABEL_32;
    }

    v24 = _indexOfDefaultRotorItem;
    v67 = v20;
    v25 = [v17 objectAtIndexedSubscript:_indexOfDefaultRotorItem];
    voiceOverBrailleTableIdentifier = [v25 mutableCopy];

    v26 = [voiceOverBrailleTableIdentifier objectForKeyedSubscript:?];
    v27 = [v26 mutableCopy];

    v28 = +[AXLanguageManager sharedInstance];
    userLocale = [v28 userLocale];

    localeIdentifier = [userLocale localeIdentifier];
    v65 = [v27 objectForKeyedSubscript:localeIdentifier];

    identifier4 = [v12 identifier];
    v63 = userLocale;
    localeIdentifier2 = [userLocale localeIdentifier];
    [v27 setObject:identifier4 forKeyedSubscript:localeIdentifier2];

    v64 = v27;
    [voiceOverBrailleTableIdentifier setObject:v27 forKeyedSubscript:@"LanguageDefaults"];
    [v17 setObject:voiceOverBrailleTableIdentifier atIndexedSubscript:v24];
    if (VOSCustomBrailleEnabled())
    {
      v14 = AXValidationManager_ptr;
      v33 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleDisplayOutputTableIdentifier = [v33 voiceOverTouchBrailleDisplayOutputTableIdentifier];
      v35 = [v65 isEqualToString:voiceOverTouchBrailleDisplayOutputTableIdentifier];

      if (v35)
      {
        identifier5 = [v12 identifier];
        v37 = +[AXSettings sharedInstance];
        [v37 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:identifier5];
      }

      v38 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleDisplayInputTableIdentifier = [v38 voiceOverTouchBrailleDisplayInputTableIdentifier];
      v40 = [v65 isEqualToString:voiceOverTouchBrailleDisplayInputTableIdentifier];

      if (v40)
      {
        identifier6 = [v12 identifier];
        v42 = +[AXSettings sharedInstance];
        [v42 setVoiceOverTouchBrailleDisplayInputTableIdentifier:identifier6];
      }

      v43 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleGesturesInputTableIdentifier = [v43 voiceOverTouchBrailleGesturesInputTableIdentifier];
      v45 = [v65 isEqualToString:voiceOverTouchBrailleGesturesInputTableIdentifier];

      if (v45)
      {
        if (AXDeviceSupportsManyTouches() & 1) == 0 && ([v12 supportsTranslationMode8Dot])
        {
          v69 = 1;
LABEL_23:
          LOBYTE(v20) = v67;

          goto LABEL_24;
        }

        identifier7 = [v12 identifier];
        v47 = +[AXSettings sharedInstance];
        [v47 setVoiceOverTouchBrailleGesturesInputTableIdentifier:identifier7];
      }

      v69 = 0;
      goto LABEL_23;
    }

    v69 = 0;
    v14 = AXValidationManager_ptr;
    goto LABEL_23;
  }

  v71[0] = @"RotorItem";
  identifier8 = [v12 identifier];
  v71[1] = @"Enabled";
  v72[0] = identifier8;
  v72[1] = &__kCFBooleanTrue;
  voiceOverBrailleTableIdentifier = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];

  if (([v17 containsObject:voiceOverBrailleTableIdentifier] & 1) == 0)
  {
    [v17 addObject:voiceOverBrailleTableIdentifier];
    v69 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v69 = 0;
LABEL_32:

  if (VOSCustomBrailleEnabled())
  {
    v58 = VOSFirstGesturesCompatibleBrailleTable();
    if ((v69 & 1) != 0 || ([v14[375] sharedInstance], v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "voiceOverTouchBrailleGesturesInputTableIdentifier"), v60 = objc_claimAutoreleasedReturnValue(), v60, v59, !v60) && v58)
    {
      identifier9 = [v58 identifier];
      sharedInstance4 = [v14[375] sharedInstance];
      [sharedInstance4 setVoiceOverTouchBrailleGesturesInputTableIdentifier:identifier9];
    }
  }

  if ((v20 & 1) == 0)
  {
    [(VoiceOverBrailleLanguageVariantsTableController *)self _popToTopOfBrailleSettings];
  }

LABEL_41:
}

- (void)updateTableCheckedSelection:(id)selection
{
  selectionCopy = selection;
  v4 = OBJC_IVAR___PSListController__table;
  if ([*&self->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__table] numberOfSections] >= 1)
  {
    v5 = 0;
    do
    {
      if ([*&self->AXUISettingsListController_opaque[v4] numberOfRowsInSection:v5] >= 1)
      {
        v6 = 0;
        do
        {
          v7 = [NSIndexPath indexPathForRow:v6 inSection:v5];
          v8 = [*&self->AXUISettingsListController_opaque[v4] cellForRowAtIndexPath:v7];
          [v8 setChecked:{objc_msgSend(v7, "isEqual:", selectionCopy)}];

          ++v6;
        }

        while ([*&self->AXUISettingsListController_opaque[v4] numberOfRowsInSection:v5] > v6);
      }

      ++v5;
    }

    while ([*&self->AXUISettingsListController_opaque[v4] numberOfSections] > v5);
  }
}

- (int64_t)_indexOfDefaultRotorItem
{
  v2 = +[AXSettings sharedInstance];
  voiceOverBrailleLanguageRotorItems = [v2 voiceOverBrailleLanguageRotorItems];

  if (voiceOverBrailleLanguageRotorItems)
  {
    v4 = [voiceOverBrailleLanguageRotorItems indexOfObjectPassingTest:&__block_literal_global_314];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

BOOL __75__VoiceOverBrailleLanguageVariantsTableController__indexOfDefaultRotorItem__block_invoke(id a1, NSDictionary *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"Default"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

- (void)_ensureDefaultRotorItemExists
{
  if ([(VoiceOverBrailleLanguageVariantsTableController *)self _indexOfDefaultRotorItem]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = +[AXSettings sharedInstance];
    voiceOverBrailleLanguageRotorItems = [v3 voiceOverBrailleLanguageRotorItems];
    v5 = [voiceOverBrailleLanguageRotorItems mutableCopy];

    if (!v5)
    {
      v5 = +[NSMutableArray array];
    }

    v6 = +[AXLanguageManager sharedInstance];
    userLocale = [v6 userLocale];

    tableEnumerator = [(VoiceOverBrailleLanguageVariantsTableController *)self tableEnumerator];
    v9 = [objc_opt_class() defaultTableForLocale:userLocale];

    localeIdentifier = [userLocale localeIdentifier];
    v17 = localeIdentifier;
    identifier = [v9 identifier];
    v18 = identifier;
    v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v15[0] = @"Enabled";
    v15[1] = @"Default";
    v16[0] = &__kCFBooleanTrue;
    v16[1] = &__kCFBooleanTrue;
    v15[2] = @"LanguageDefaults";
    v16[2] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
    [v5 insertObject:v13 atIndex:0];
    v14 = +[AXSettings sharedInstance];
    [v14 setVoiceOverBrailleLanguageRotorItems:v5];
  }
}

- (void)_popToTopOfBrailleSettings
{
  specifier = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  v4 = [specifier propertyForKey:@"DismissBlock"];

  presentingViewController = [(VoiceOverBrailleLanguageVariantsTableController *)self presentingViewController];

  if (presentingViewController)
  {
    if (v4)
    {
      v4[2](v4);
    }

    presentingViewController2 = [(VoiceOverBrailleLanguageVariantsTableController *)self presentingViewController];
    [presentingViewController2 dismissViewControllerWithTransition:9 completion:0];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    navigationController = [(VoiceOverBrailleLanguageVariantsTableController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v15 = v14;

      if (!v15)
      {
        goto LABEL_19;
      }

      if (v4)
      {
        v4[2](v4);
      }

      [(VoiceOverBrailleLanguageVariantsTableController *)self popToViewController:v15 animated:1 destinationClass:objc_opt_class()];
    }

    else
    {
LABEL_13:
      v15 = reverseObjectEnumerator;
    }
  }

LABEL_19:
}

- (void)tableView:(NSObject *)a1 didSelectRowAtIndexPath:.cold.1(NSObject *a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverBrailleLanguageRotorItems];
  v4 = [v3 debugDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_0, a1, OS_LOG_TYPE_DEBUG, "Updated braille language rotor items: %@", &v5, 0xCu);
}

@end