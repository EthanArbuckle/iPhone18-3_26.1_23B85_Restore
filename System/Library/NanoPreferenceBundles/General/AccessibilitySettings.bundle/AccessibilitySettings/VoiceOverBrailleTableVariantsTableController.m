@interface VoiceOverBrailleTableVariantsTableController
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

@implementation VoiceOverBrailleTableVariantsTableController

- (BRLTTableEnumerator)tableEnumerator
{
  v2 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
  v3 = [v2 propertyForKey:@"TableEnumerator"];

  return v3;
}

- (id)specifiers
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v39 = *MEMORY[0x277D3FC48];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
    v6 = [v5 propertyForKey:@"IsLanguageAgnostic"];
    v44 = [v6 BOOLValue];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [(VoiceOverBrailleTableVariantsTableController *)self _translatorBundlesWithSystemAtFirst];
    v45 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v45)
    {
      v43 = *v56;
      v40 = *MEMORY[0x277D3FF88];
      v42 = v4;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v56 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v55 + 1) + 8 * i);
          v9 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
          v10 = v9;
          if (v44)
          {
            v11 = [v9 propertyForKey:@"TableIdentifier"];

            v12 = [(VoiceOverBrailleTableVariantsTableController *)self tableEnumerator];
            v13 = [v12 languageAgnosticTablesForIdentifier:v11 inBundle:v8];

            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.footer", v11];
            v15 = settingsLocString(v14, @"VoiceOverSettings");
            v16 = v15;
            if (v15 && ([v15 isEqual:v14] & 1) == 0)
            {
              v50 = v16;
            }

            else
            {
              v50 = 0;
            }
          }

          else
          {
            v11 = [v9 propertyForKey:@"Locale"];

            v17 = [(VoiceOverBrailleTableVariantsTableController *)self tableEnumerator];
            v13 = [v17 tablesForLocale:v11 inBundle:v8];

            v14 = BRLLogTranslation();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v11 languageCode];
              [v13 debugDescription];
              v20 = v19 = v13;
              *buf = 138412802;
              v61 = v11;
              v62 = 2112;
              v63 = v18;
              v64 = 2112;
              v65 = v20;
              _os_log_impl(&dword_23BCCF000, v14, OS_LOG_TYPE_DEFAULT, "Finding tables for locale %@ %@ %@", buf, 0x20u);

              v13 = v19;
            }

            v50 = 0;
          }

          if ([v13 count])
          {
            v49 = i;
            v21 = [MEMORY[0x277CBEB18] array];
            v22 = MEMORY[0x277CF3358];
            v23 = [v8 bundleIdentifier];
            v24 = [v22 localizedNameForServiceWithIdentifier:v23];

            v47 = v24;
            v25 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v24];
            if ([v50 length])
            {
              [v25 setProperty:v50 forKey:v40];
            }

            v46 = v25;
            [v4 addObject:v25];
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v48 = v13;
            v26 = v13;
            v27 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v52;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v52 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v51 + 1) + 8 * j);
                  if (VOSCustomBrailleEnabled())
                  {
                    v32 = [v31 replacements];
                    v33 = [v32 count];

                    if (v33)
                    {
                      continue;
                    }
                  }

                  else if ([v31 isCustomBrailleTable])
                  {
                    continue;
                  }

                  v34 = [v31 localizedName];
                  v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v34 target:self set:0 get:0 detail:0 cell:3 edit:0];
                  [v35 setProperty:v31 forKey:@"Table"];
                  [v21 addObject:v35];
                }

                v28 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
              }

              while (v28);
            }

            [v21 sortUsingComparator:&__block_literal_global];
            v4 = v42;
            [v42 addObjectsFromArray:v21];

            v13 = v48;
            i = v49;
          }
        }

        v45 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v45);
    }

    v36 = *(&self->super.super.super.super.super.super.isa + v39);
    *(&self->super.super.super.super.super.super.isa + v39) = v4;

    v3 = *(&self->super.super.super.super.super.super.isa + v39);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __58__VoiceOverBrailleTableVariantsTableController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_translatorBundlesWithSystemAtFirst
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(VoiceOverBrailleTableVariantsTableController *)self tableEnumerator];
  v4 = [v3 translatorBundles];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([(VoiceOverBrailleTableVariantsTableController *)self _isSystemBundle:v12, v16])
        {
          v13 = v5;
        }

        else
        {
          v13 = v6;
        }

        [v13 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [v5 addObjectsFromArray:v6];
  v14 = *MEMORY[0x277D85DE8];

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
  v7.super_class = VoiceOverBrailleTableVariantsTableController;
  v4 = [(VoiceOverBrailleTableVariantsTableController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v45 = a4;
  v43 = [v45 specifier];
  v6 = [v43 propertyForKey:@"Table"];
  v7 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:@"DefaultLanguage"];

  v10 = [MEMORY[0x277CE7DA0] sharedInstance];
  v48 = [v10 userLocale];

  v46 = self;
  v11 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v12 = [v11 objectForKey:*MEMORY[0x277CE7FF0]];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v44 = 0;
    v15 = *v50;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        if (v9 && ([*(*(&v49 + 1) + 8 * i) objectForKeyedSubscript:@"Default"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, v19))
        {
          v20 = [v17 objectForKeyedSubscript:@"LanguageDefaults"];
          v21 = [v48 localeIdentifier];
          v22 = [v20 objectForKeyedSubscript:v21];

          v23 = [v6 identifier];
          LODWORD(v21) = [v23 isEqualToString:v22];

          if (v21)
          {
            [v45 setChecked:1];
          }

          v44 = 1;
        }

        else
        {
          v24 = [v17 objectForKeyedSubscript:@"Default"];
          v25 = [v24 BOOLValue];

          if (v25)
          {
            v26 = [v17 objectForKeyedSubscript:@"LanguageDefaults"];
            v27 = [v48 localeIdentifier];
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

          v33 = [(VoiceOverBrailleTableVariantsTableController *)v46 specifier];
          v34 = [v33 propertyForKey:@"AllowDuplicatesKey"];
          v35 = [v34 BOOLValue];

          if ((v35 & 1) == 0)
          {
            [v45 setUserInteractionEnabled:0];
            [v45 setCellEnabled:0];
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v14)
      {
        goto LABEL_21;
      }
    }
  }

  v44 = 0;
LABEL_21:

  if (v9 && (v44 & 1) == 0)
  {
    v36 = MEMORY[0x277CF3358];
    v37 = [MEMORY[0x277CE7DA0] sharedInstance];
    v38 = [v37 userLocale];
    v39 = [v36 defaultTableForLocale:v38];

    v40 = [v6 identifier];
    v41 = [v39 identifier];
    [v45 setChecked:{objc_msgSend(v40, "isEqualToString:", v41)}];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v53[2] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = VoiceOverBrailleTableVariantsTableController;
  v6 = a4;
  v7 = a3;
  [(VoiceOverBrailleTableVariantsTableController *)&v51 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:v6];

  v9 = [v8 specifier];

  v10 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
  v11 = [v10 propertyForKey:@"TableSelectionBlockKey"];

  v12 = [v9 propertyForKey:@"Table"];
  [(VoiceOverBrailleTableVariantsTableController *)self updateTableCheckedSelection:v6];

  if (!v11)
  {
    [(VoiceOverBrailleTableVariantsTableController *)self _ensureDefaultRotorItemExists];
    v14 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v15 = *MEMORY[0x277CE7FF0];
    v16 = [v14 objectForKey:*MEMORY[0x277CE7FF0]];

    v17 = [v16 mutableCopy];
    if (!v17)
    {
      v17 = [MEMORY[0x277CBEB18] array];
    }

    v18 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
    v19 = [v18 identifier];
    LODWORD(v20) = [v19 isEqualToString:@"DefaultLanguage"];

    if (v20)
    {
      v50 = v15;
      v21 = [(VoiceOverBrailleTableVariantsTableController *)self _indexOfDefaultRotorItem];
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      v22 = v21;
      v47 = v20;
      v49 = v16;
      v23 = [v17 objectAtIndexedSubscript:v21];
      v24 = [v23 mutableCopy];

      v25 = [v24 objectForKeyedSubscript:?];
      v26 = [v25 mutableCopy];

      v27 = [MEMORY[0x277CE7DA0] sharedInstance];
      v28 = [v27 userLocale];

      v29 = [v28 localeIdentifier];
      v44 = [v26 objectForKeyedSubscript:v29];

      v30 = [v12 identifier];
      v46 = v28;
      v31 = [v28 localeIdentifier];
      [v26 setObject:v30 forKeyedSubscript:v31];

      v48 = v26;
      v32 = v26;
      v20 = v44;
      [v24 setObject:v32 forKeyedSubscript:@"LanguageDefaults"];
      [v17 setObject:v24 atIndexedSubscript:v22];
      if (VOSCustomBrailleEnabled())
      {
        v33 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
        v34 = *MEMORY[0x277CE8000];
        v35 = [v33 objectForKey:*MEMORY[0x277CE8000]];

        v45 = v35;
        if ([v44 isEqualToString:v35])
        {
          v36 = [v12 identifier];
          [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v36 forKey:v34];
        }

        v37 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
        v38 = *MEMORY[0x277CE7FE8];
        v39 = [v37 objectForKey:*MEMORY[0x277CE7FE8]];

        if ([v20 isEqualToString:v39])
        {
          v40 = [v12 identifier];
          [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v40 forKey:v38];
        }
      }

      v16 = v49;
      LOBYTE(v20) = v47;
    }

    else
    {
      v52[0] = @"RotorItem";
      v41 = [v12 identifier];
      v52[1] = @"Enabled";
      v53[0] = v41;
      v53[1] = MEMORY[0x277CBEC38];
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

      if ([v17 containsObject:v24])
      {

LABEL_21:
        [(VoiceOverBrailleTableVariantsTableController *)self _popToTopOfBrailleSettings];
LABEL_22:

        goto LABEL_23;
      }

      v50 = v15;
      [v17 addObject:v24];
    }

LABEL_18:
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v17 forKey:v50, v44];
    v42 = BRLLogTranslation();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [VoiceOverBrailleTableVariantsTableController tableView:v17 didSelectRowAtIndexPath:v42];
    }

    if (v20)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v13 = [v12 identifier];
  (v11)[2](v11, v13);

  [(VoiceOverBrailleTableVariantsTableController *)self _popToTopOfBrailleSettings];
LABEL_23:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)updateTableCheckedSelection:(id)a3
{
  v9 = a3;
  v4 = *MEMORY[0x277D3FC60];
  if ([*(&self->super.super.super.super.super.super.isa + v4) numberOfSections] >= 1)
  {
    v5 = 0;
    do
    {
      if ([*(&self->super.super.super.super.super.super.isa + v4) numberOfRowsInSection:v5] >= 1)
      {
        v6 = 0;
        do
        {
          v7 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:v5];
          v8 = [*(&self->super.super.super.super.super.super.isa + v4) cellForRowAtIndexPath:v7];
          [v8 setChecked:{objc_msgSend(v7, "isEqual:", v9)}];

          ++v6;
        }

        while ([*(&self->super.super.super.super.super.super.isa + v4) numberOfRowsInSection:v5] > v6);
      }

      ++v5;
    }

    while ([*(&self->super.super.super.super.super.super.isa + v4) numberOfSections] > v5);
  }
}

- (int64_t)_indexOfDefaultRotorItem
{
  v2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [v2 objectForKey:*MEMORY[0x277CE7FF0]];

  if (v3)
  {
    v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_306];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

uint64_t __72__VoiceOverBrailleTableVariantsTableController__indexOfDefaultRotorItem__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 objectForKeyedSubscript:@"Default"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

- (void)_ensureDefaultRotorItemExists
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([(VoiceOverBrailleTableVariantsTableController *)self _indexOfDefaultRotorItem]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v4 = *MEMORY[0x277CE7FF0];
    v5 = [v3 objectForKey:*MEMORY[0x277CE7FF0]];

    v6 = [v5 mutableCopy];
    if (!v6)
    {
      v6 = [MEMORY[0x277CBEB18] array];
    }

    v7 = [MEMORY[0x277CE7DA0] sharedInstance];
    v8 = [v7 userLocale];

    v9 = [(VoiceOverBrailleTableVariantsTableController *)self tableEnumerator];
    v10 = [objc_opt_class() defaultTableForLocale:v8];

    v11 = [v8 localeIdentifier];
    v18 = v11;
    v12 = [v10 identifier];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v16[0] = @"Enabled";
    v16[1] = @"Default";
    v17[0] = MEMORY[0x277CBEC38];
    v17[1] = MEMORY[0x277CBEC38];
    v16[2] = @"LanguageDefaults";
    v17[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    [v6 insertObject:v14 atIndex:0];
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v6 forKey:v4];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_popToTopOfBrailleSettings
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
  v4 = [v3 propertyForKey:@"DismissBlock"];

  v5 = [(VoiceOverBrailleTableVariantsTableController *)self presentingViewController];

  if (v5)
  {
    if (v4)
    {
      v4[2](v4);
    }

    v6 = [(VoiceOverBrailleTableVariantsTableController *)self presentingViewController];
    [v6 dismissViewControllerWithTransition:9 completion:0];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(VoiceOverBrailleTableVariantsTableController *)self navigationController];
    v8 = [v7 viewControllers];
    v9 = [v8 reverseObjectEnumerator];

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

      v16 = [(VoiceOverBrailleTableVariantsTableController *)self navigationController];
      v17 = [v16 popToViewController:v15 animated:1];
    }

    else
    {
LABEL_13:
      v15 = v9;
    }
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(void *)a1 didSelectRowAtIndexPath:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_23BCCF000, a2, OS_LOG_TYPE_DEBUG, "Updated braille language rotor items: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end