@interface VoiceOverBrailleLanguageVariantsTableController
- (BOOL)_isSystemBundle:(id)a3;
- (BRLTTableEnumerator)tableEnumerator;
- (id)_translatorBundlesWithSystemAtFirst;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_indexOfDefaultRotorItem;
- (void)_ensureDefaultRotorItemExists;
- (void)_popToTopOfBrailleSettings;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateTableCheckedSelection:(id)a3;
@end

@implementation VoiceOverBrailleLanguageVariantsTableController

- (BRLTTableEnumerator)tableEnumerator
{
  v2 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  v3 = [v2 propertyForKey:@"TableEnumerator"];

  return v3;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v37 = OBJC_IVAR___PSListController__specifiers;
    v43 = +[NSMutableArray array];
    v4 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
    v5 = [v4 propertyForKey:@"IsLanguageAgnostic"];
    v41 = [v5 BOOLValue];

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
          v9 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
          v10 = v9;
          if (v41)
          {
            v11 = [v9 propertyForKey:@"TableIdentifier"];

            v12 = [(VoiceOverBrailleLanguageVariantsTableController *)self tableEnumerator];
            v13 = [v12 languageAgnosticTablesForIdentifier:v11 inBundle:v8];

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
            v11 = [v9 propertyForKey:@"Locale"];

            v18 = [(VoiceOverBrailleLanguageVariantsTableController *)self tableEnumerator];
            v13 = [v18 tablesForLocale:v11 inBundle:v8];

            v14 = BRLLogTranslation();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v11 languageCode];
              v20 = [v13 debugDescription];
              *buf = 138412802;
              v58 = v11;
              v59 = 2112;
              v60 = v19;
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
              v22 = [v8 bundleIdentifier];
              v23 = [BRLTTableEnumerator localizedNameForServiceWithIdentifier:v22];

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
                    v31 = [v30 replacements];
                    v32 = [v31 count];

                    if (v32)
                    {
                      continue;
                    }
                  }

                  else if ([v30 isCustomBrailleTable])
                  {
                    continue;
                  }

                  v33 = [v30 localizedName];
                  v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:0 cell:3 edit:0];
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
  v3 = [(VoiceOverBrailleLanguageVariantsTableController *)self tableEnumerator];
  v4 = [v3 translatorBundles];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
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

- (BOOL)_isSystemBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.scrod.braille.table.duxbury"];

  v6 = [v3 bundleIdentifier];

  LOBYTE(v3) = [v6 isEqualToString:@"com.apple.scrod.braille.table.apple"];
  return (v5 | v3) & 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = VoiceOverBrailleLanguageVariantsTableController;
  v4 = [(VoiceOverBrailleLanguageVariantsTableController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v43 = a4;
  v41 = [v43 specifier];
  v6 = [v41 propertyForKey:@"Table"];
  v44 = self;
  v7 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:@"DefaultLanguage"];

  v10 = +[AXLanguageManager sharedInstance];
  v46 = [v10 userLocale];

  v11 = +[AXSettings sharedInstance];
  v12 = [v11 voiceOverBrailleLanguageRotorItems];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v12;
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
          v21 = [v46 localeIdentifier];
          v22 = [v20 objectForKeyedSubscript:v21];

          v23 = [v6 identifier];
          LODWORD(v21) = [v23 isEqualToString:v22];

          if (v21)
          {
            [v43 setChecked:1];
          }

          v42 = 1;
        }

        else
        {
          v24 = [v17 objectForKeyedSubscript:@"Default"];
          v25 = [v24 BOOLValue];

          if (v25)
          {
            v26 = [v17 objectForKeyedSubscript:@"LanguageDefaults"];
            v27 = [v46 localeIdentifier];
            v28 = [v26 objectForKeyedSubscript:v27];

            v29 = [v6 identifier];
            LOBYTE(v27) = [v29 isEqualToString:v28];

            if ((v27 & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            v30 = [v6 identifier];
            v31 = [v17 objectForKeyedSubscript:@"RotorItem"];
            v32 = [v30 isEqualToString:v31];

            if (!v32)
            {
              continue;
            }
          }

          v33 = [(VoiceOverBrailleLanguageVariantsTableController *)v44 specifier];
          v34 = [v33 propertyForKey:@"AllowDuplicatesKey"];
          v35 = [v34 BOOLValue];

          if ((v35 & 1) == 0)
          {
            [v43 setUserInteractionEnabled:0];
            [v43 setCellEnabled:0];
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
    v37 = [v36 userLocale];
    v38 = [BRLTTableEnumerator defaultTableForLocale:v37];

    v39 = [v6 identifier];
    v40 = [v38 identifier];
    [v43 setChecked:{objc_msgSend(v39, "isEqualToString:", v40)}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v70.receiver = self;
  v70.super_class = VoiceOverBrailleLanguageVariantsTableController;
  v6 = a4;
  v7 = a3;
  [(VoiceOverBrailleLanguageVariantsTableController *)&v70 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:v6];

  v9 = [v8 specifier];

  v10 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  v11 = [v10 propertyForKey:@"TableSelectionBlockKey"];

  v12 = [v9 propertyForKey:@"Table"];
  [(VoiceOverBrailleLanguageVariantsTableController *)self updateTableCheckedSelection:v6];

  if (v11)
  {
    v13 = [v12 identifier];
    (v11)[2](v11, v13);

    [(VoiceOverBrailleLanguageVariantsTableController *)self _popToTopOfBrailleSettings];
    goto LABEL_41;
  }

  [(VoiceOverBrailleLanguageVariantsTableController *)self _ensureDefaultRotorItemExists];
  v14 = AXValidationManager_ptr;
  v15 = +[AXSettings sharedInstance];
  v16 = [v15 voiceOverBrailleLanguageRotorItems];
  v17 = [v16 mutableCopy];

  if (!v17)
  {
    v17 = +[NSMutableArray array];
  }

  v18 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  v19 = [v18 identifier];
  v20 = [v19 isEqualToString:@"DefaultLanguage"];

  if (v20)
  {
    v21 = [(VoiceOverBrailleLanguageVariantsTableController *)self _indexOfDefaultRotorItem];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v69 = 0;
LABEL_25:
      v48 = [v14[375] sharedInstance];
      v23 = [v48 voiceOverBrailleTableIdentifier];

      if (v23)
      {
        v68 = v20;
        v66 = v17;
        v49 = v14;
        v50 = [[BRLTTable alloc] initWithIdentifier:v23];
        v51 = [v12 language];
        v52 = [v50 language];
        v53 = [v51 isEqualToString:v52];

        if (v53)
        {
          v54 = [v12 identifier];
          v55 = [v49[375] sharedInstance];
          [v55 setVoiceOverBrailleTableIdentifier:v54];
        }

        v14 = v49;
        v17 = v66;
        LOBYTE(v20) = v68;
      }

      v56 = [v14[375] sharedInstance];
      [v56 setVoiceOverBrailleLanguageRotorItems:v17];

      v57 = BRLLogTranslation();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        [VoiceOverBrailleLanguageVariantsTableController tableView:v57 didSelectRowAtIndexPath:?];
      }

      goto LABEL_32;
    }

    v24 = v21;
    v67 = v20;
    v25 = [v17 objectAtIndexedSubscript:v21];
    v23 = [v25 mutableCopy];

    v26 = [v23 objectForKeyedSubscript:?];
    v27 = [v26 mutableCopy];

    v28 = +[AXLanguageManager sharedInstance];
    v29 = [v28 userLocale];

    v30 = [v29 localeIdentifier];
    v65 = [v27 objectForKeyedSubscript:v30];

    v31 = [v12 identifier];
    v63 = v29;
    v32 = [v29 localeIdentifier];
    [v27 setObject:v31 forKeyedSubscript:v32];

    v64 = v27;
    [v23 setObject:v27 forKeyedSubscript:@"LanguageDefaults"];
    [v17 setObject:v23 atIndexedSubscript:v24];
    if (VOSCustomBrailleEnabled())
    {
      v14 = AXValidationManager_ptr;
      v33 = +[AXSettings sharedInstance];
      v34 = [v33 voiceOverTouchBrailleDisplayOutputTableIdentifier];
      v35 = [v65 isEqualToString:v34];

      if (v35)
      {
        v36 = [v12 identifier];
        v37 = +[AXSettings sharedInstance];
        [v37 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:v36];
      }

      v38 = +[AXSettings sharedInstance];
      v39 = [v38 voiceOverTouchBrailleDisplayInputTableIdentifier];
      v40 = [v65 isEqualToString:v39];

      if (v40)
      {
        v41 = [v12 identifier];
        v42 = +[AXSettings sharedInstance];
        [v42 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v41];
      }

      v43 = +[AXSettings sharedInstance];
      v44 = [v43 voiceOverTouchBrailleGesturesInputTableIdentifier];
      v45 = [v65 isEqualToString:v44];

      if (v45)
      {
        if (AXDeviceSupportsManyTouches() & 1) == 0 && ([v12 supportsTranslationMode8Dot])
        {
          v69 = 1;
LABEL_23:
          LOBYTE(v20) = v67;

          goto LABEL_24;
        }

        v46 = [v12 identifier];
        v47 = +[AXSettings sharedInstance];
        [v47 setVoiceOverTouchBrailleGesturesInputTableIdentifier:v46];
      }

      v69 = 0;
      goto LABEL_23;
    }

    v69 = 0;
    v14 = AXValidationManager_ptr;
    goto LABEL_23;
  }

  v71[0] = @"RotorItem";
  v22 = [v12 identifier];
  v71[1] = @"Enabled";
  v72[0] = v22;
  v72[1] = &__kCFBooleanTrue;
  v23 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];

  if (([v17 containsObject:v23] & 1) == 0)
  {
    [v17 addObject:v23];
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
      v61 = [v58 identifier];
      v62 = [v14[375] sharedInstance];
      [v62 setVoiceOverTouchBrailleGesturesInputTableIdentifier:v61];
    }
  }

  if ((v20 & 1) == 0)
  {
    [(VoiceOverBrailleLanguageVariantsTableController *)self _popToTopOfBrailleSettings];
  }

LABEL_41:
}

- (void)updateTableCheckedSelection:(id)a3
{
  v9 = a3;
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
          [v8 setChecked:{objc_msgSend(v7, "isEqual:", v9)}];

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
  v3 = [v2 voiceOverBrailleLanguageRotorItems];

  if (v3)
  {
    v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_314];
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
    v4 = [v3 voiceOverBrailleLanguageRotorItems];
    v5 = [v4 mutableCopy];

    if (!v5)
    {
      v5 = +[NSMutableArray array];
    }

    v6 = +[AXLanguageManager sharedInstance];
    v7 = [v6 userLocale];

    v8 = [(VoiceOverBrailleLanguageVariantsTableController *)self tableEnumerator];
    v9 = [objc_opt_class() defaultTableForLocale:v7];

    v10 = [v7 localeIdentifier];
    v17 = v10;
    v11 = [v9 identifier];
    v18 = v11;
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
  v3 = [(VoiceOverBrailleLanguageVariantsTableController *)self specifier];
  v4 = [v3 propertyForKey:@"DismissBlock"];

  v5 = [(VoiceOverBrailleLanguageVariantsTableController *)self presentingViewController];

  if (v5)
  {
    if (v4)
    {
      v4[2](v4);
    }

    v6 = [(VoiceOverBrailleLanguageVariantsTableController *)self presentingViewController];
    [v6 dismissViewControllerWithTransition:9 completion:0];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(VoiceOverBrailleLanguageVariantsTableController *)self navigationController];
    v8 = [v7 viewControllers];
    v9 = [v8 reverseObjectEnumerator];

    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
      v15 = v9;
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