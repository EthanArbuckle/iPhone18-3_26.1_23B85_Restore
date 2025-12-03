@interface VoiceOverBrailleTableVariantsTableController
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

@implementation VoiceOverBrailleTableVariantsTableController

- (BRLTTableEnumerator)tableEnumerator
{
  specifier = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
  v3 = [specifier propertyForKey:@"TableEnumerator"];

  return v3;
}

- (id)specifiers
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v39 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    specifier = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
    v6 = [specifier propertyForKey:@"IsLanguageAgnostic"];
    bOOLValue = [v6 BOOLValue];

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
      v42 = array;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v56 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v55 + 1) + 8 * i);
          specifier2 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
          v10 = specifier2;
          if (bOOLValue)
          {
            v11 = [specifier2 propertyForKey:@"TableIdentifier"];

            tableEnumerator = [(VoiceOverBrailleTableVariantsTableController *)self tableEnumerator];
            v13 = [tableEnumerator languageAgnosticTablesForIdentifier:v11 inBundle:v8];

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
            v11 = [specifier2 propertyForKey:@"Locale"];

            tableEnumerator2 = [(VoiceOverBrailleTableVariantsTableController *)self tableEnumerator];
            v13 = [tableEnumerator2 tablesForLocale:v11 inBundle:v8];

            v14 = BRLLogTranslation();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              languageCode = [v11 languageCode];
              [v13 debugDescription];
              v20 = v19 = v13;
              *buf = 138412802;
              v61 = v11;
              v62 = 2112;
              v63 = languageCode;
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
            array2 = [MEMORY[0x277CBEB18] array];
            v22 = MEMORY[0x277CF3358];
            bundleIdentifier = [v8 bundleIdentifier];
            v24 = [v22 localizedNameForServiceWithIdentifier:bundleIdentifier];

            v47 = v24;
            v25 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v24];
            if ([v50 length])
            {
              [v25 setProperty:v50 forKey:v40];
            }

            v46 = v25;
            [array addObject:v25];
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
                    replacements = [v31 replacements];
                    v33 = [replacements count];

                    if (v33)
                    {
                      continue;
                    }
                  }

                  else if ([v31 isCustomBrailleTable])
                  {
                    continue;
                  }

                  localizedName = [v31 localizedName];
                  v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:0 cell:3 edit:0];
                  [v35 setProperty:v31 forKey:@"Table"];
                  [array2 addObject:v35];
                }

                v28 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
              }

              while (v28);
            }

            [array2 sortUsingComparator:&__block_literal_global];
            array = v42;
            [v42 addObjectsFromArray:array2];

            v13 = v48;
            i = v49;
          }
        }

        v45 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v45);
    }

    v36 = *(&self->super.super.super.super.super.super.isa + v39);
    *(&self->super.super.super.super.super.super.isa + v39) = array;

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
  tableEnumerator = [(VoiceOverBrailleTableVariantsTableController *)self tableEnumerator];
  translatorBundles = [tableEnumerator translatorBundles];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = translatorBundles;
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
  v7.super_class = VoiceOverBrailleTableVariantsTableController;
  v4 = [(VoiceOverBrailleTableVariantsTableController *)&v7 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v54 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v6 = [specifier propertyForKey:@"Table"];
  specifier2 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
  identifier = [specifier2 identifier];
  v9 = [identifier isEqualToString:@"DefaultLanguage"];

  mEMORY[0x277CE7DA0] = [MEMORY[0x277CE7DA0] sharedInstance];
  userLocale = [mEMORY[0x277CE7DA0] userLocale];

  selfCopy = self;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v12 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

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
          localeIdentifier = [userLocale localeIdentifier];
          v22 = [v20 objectForKeyedSubscript:localeIdentifier];

          identifier2 = [v6 identifier];
          LODWORD(localeIdentifier) = [identifier2 isEqualToString:v22];

          if (localeIdentifier)
          {
            [cellCopy setChecked:1];
          }

          v44 = 1;
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

          specifier3 = [(VoiceOverBrailleTableVariantsTableController *)selfCopy specifier];
          v34 = [specifier3 propertyForKey:@"AllowDuplicatesKey"];
          bOOLValue2 = [v34 BOOLValue];

          if ((bOOLValue2 & 1) == 0)
          {
            [cellCopy setUserInteractionEnabled:0];
            [cellCopy setCellEnabled:0];
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
    mEMORY[0x277CE7DA0]2 = [MEMORY[0x277CE7DA0] sharedInstance];
    userLocale2 = [mEMORY[0x277CE7DA0]2 userLocale];
    v39 = [v36 defaultTableForLocale:userLocale2];

    identifier5 = [v6 identifier];
    identifier6 = [v39 identifier];
    [cellCopy setChecked:{objc_msgSend(identifier5, "isEqualToString:", identifier6)}];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v53[2] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = VoiceOverBrailleTableVariantsTableController;
  pathCopy = path;
  viewCopy = view;
  [(VoiceOverBrailleTableVariantsTableController *)&v51 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];

  specifier = [v8 specifier];

  specifier2 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
  v11 = [specifier2 propertyForKey:@"TableSelectionBlockKey"];

  v12 = [specifier propertyForKey:@"Table"];
  [(VoiceOverBrailleTableVariantsTableController *)self updateTableCheckedSelection:pathCopy];

  if (!v11)
  {
    [(VoiceOverBrailleTableVariantsTableController *)self _ensureDefaultRotorItemExists];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v15 = *MEMORY[0x277CE7FF0];
    v16 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

    array = [v16 mutableCopy];
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    specifier3 = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
    identifier = [specifier3 identifier];
    LODWORD(v20) = [identifier isEqualToString:@"DefaultLanguage"];

    if (v20)
    {
      v50 = v15;
      _indexOfDefaultRotorItem = [(VoiceOverBrailleTableVariantsTableController *)self _indexOfDefaultRotorItem];
      if (_indexOfDefaultRotorItem == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      v22 = _indexOfDefaultRotorItem;
      v47 = v20;
      v49 = v16;
      v23 = [array objectAtIndexedSubscript:_indexOfDefaultRotorItem];
      v24 = [v23 mutableCopy];

      v25 = [v24 objectForKeyedSubscript:?];
      v26 = [v25 mutableCopy];

      mEMORY[0x277CE7DA0] = [MEMORY[0x277CE7DA0] sharedInstance];
      userLocale = [mEMORY[0x277CE7DA0] userLocale];

      localeIdentifier = [userLocale localeIdentifier];
      v44 = [v26 objectForKeyedSubscript:localeIdentifier];

      identifier2 = [v12 identifier];
      v46 = userLocale;
      localeIdentifier2 = [userLocale localeIdentifier];
      [v26 setObject:identifier2 forKeyedSubscript:localeIdentifier2];

      v48 = v26;
      v32 = v26;
      v20 = v44;
      [v24 setObject:v32 forKeyedSubscript:@"LanguageDefaults"];
      [array setObject:v24 atIndexedSubscript:v22];
      if (VOSCustomBrailleEnabled())
      {
        accessibilityDomainAccessor2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
        v34 = *MEMORY[0x277CE8000];
        v35 = [accessibilityDomainAccessor2 objectForKey:*MEMORY[0x277CE8000]];

        v45 = v35;
        if ([v44 isEqualToString:v35])
        {
          identifier3 = [v12 identifier];
          [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:identifier3 forKey:v34];
        }

        accessibilityDomainAccessor3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
        v38 = *MEMORY[0x277CE7FE8];
        v39 = [accessibilityDomainAccessor3 objectForKey:*MEMORY[0x277CE7FE8]];

        if ([v20 isEqualToString:v39])
        {
          identifier4 = [v12 identifier];
          [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:identifier4 forKey:v38];
        }
      }

      v16 = v49;
      LOBYTE(v20) = v47;
    }

    else
    {
      v52[0] = @"RotorItem";
      identifier5 = [v12 identifier];
      v52[1] = @"Enabled";
      v53[0] = identifier5;
      v53[1] = MEMORY[0x277CBEC38];
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

      if ([array containsObject:v24])
      {

LABEL_21:
        [(VoiceOverBrailleTableVariantsTableController *)self _popToTopOfBrailleSettings];
LABEL_22:

        goto LABEL_23;
      }

      v50 = v15;
      [array addObject:v24];
    }

LABEL_18:
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:array forKey:v50, v44];
    v42 = BRLLogTranslation();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [VoiceOverBrailleTableVariantsTableController tableView:array didSelectRowAtIndexPath:v42];
    }

    if (v20)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  identifier6 = [v12 identifier];
  (v11)[2](v11, identifier6);

  [(VoiceOverBrailleTableVariantsTableController *)self _popToTopOfBrailleSettings];
LABEL_23:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)updateTableCheckedSelection:(id)selection
{
  selectionCopy = selection;
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
          [v8 setChecked:{objc_msgSend(v7, "isEqual:", selectionCopy)}];

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
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

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
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v4 = *MEMORY[0x277CE7FF0];
    v5 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

    array = [v5 mutableCopy];
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    mEMORY[0x277CE7DA0] = [MEMORY[0x277CE7DA0] sharedInstance];
    userLocale = [mEMORY[0x277CE7DA0] userLocale];

    tableEnumerator = [(VoiceOverBrailleTableVariantsTableController *)self tableEnumerator];
    v10 = [objc_opt_class() defaultTableForLocale:userLocale];

    localeIdentifier = [userLocale localeIdentifier];
    v18 = localeIdentifier;
    identifier = [v10 identifier];
    v19[0] = identifier;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v16[0] = @"Enabled";
    v16[1] = @"Default";
    v17[0] = MEMORY[0x277CBEC38];
    v17[1] = MEMORY[0x277CBEC38];
    v16[2] = @"LanguageDefaults";
    v17[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    [array insertObject:v14 atIndex:0];
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:array forKey:v4];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_popToTopOfBrailleSettings
{
  v24 = *MEMORY[0x277D85DE8];
  specifier = [(VoiceOverBrailleTableVariantsTableController *)self specifier];
  v4 = [specifier propertyForKey:@"DismissBlock"];

  presentingViewController = [(VoiceOverBrailleTableVariantsTableController *)self presentingViewController];

  if (presentingViewController)
  {
    if (v4)
    {
      v4[2](v4);
    }

    presentingViewController2 = [(VoiceOverBrailleTableVariantsTableController *)self presentingViewController];
    [presentingViewController2 dismissViewControllerWithTransition:9 completion:0];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    navigationController = [(VoiceOverBrailleTableVariantsTableController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
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

      navigationController2 = [(VoiceOverBrailleTableVariantsTableController *)self navigationController];
      v17 = [navigationController2 popToViewController:v15 animated:1];
    }

    else
    {
LABEL_13:
      v15 = reverseObjectEnumerator;
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