@interface VoiceOverBrailleTableController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (BRLTTableEnumerator)tableEnumerator;
- (VoiceOverBrailleTableController)init;
- (id)_addNewTableSpecifier;
- (id)_defaultTable;
- (id)_tableSpecifiers;
- (id)preCustomBrailleSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_addLanguage:(id)a3;
- (void)_donePressed;
- (void)_editPressed:(id)a3;
- (void)_manageEditButton;
- (void)_removeTableSpecifier:(id)a3;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverBrailleTableController

- (VoiceOverBrailleTableController)init
{
  v4.receiver = self;
  v4.super_class = VoiceOverBrailleTableController;
  v2 = [(AccessibilityBridgeBaseController *)&v4 init];
  [(VoiceOverBrailleTableController *)v2 _manageEditButton];
  return v2;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = VoiceOverBrailleTableController;
  [(VoiceOverBrailleTableController *)&v3 reloadSpecifiers];
  [(VoiceOverBrailleTableController *)self _manageEditButton];
}

- (id)specifiers
{
  if (VOSCustomBrailleEnabled())
  {
    v3 = *MEMORY[0x277D3FC48];
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LanguagesGroup"];
      [v5 addObject:v6];
      v7 = [(VoiceOverBrailleTableController *)self _tableSpecifiers];
      [v5 addObjectsFromArray:v7];

      v8 = [(VoiceOverBrailleTableController *)self _addNewTableSpecifier];
      [v5 addObject:v8];

      v9 = *(&self->super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.isa + v3) = v5;

      v4 = *(&self->super.super.super.super.super.super.isa + v3);
    }

    v10 = v4;
  }

  else
  {
    v10 = [(VoiceOverBrailleTableController *)self preCustomBrailleSpecifiers];
  }

  return v10;
}

- (id)preCustomBrailleSpecifiers
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v20 = *MEMORY[0x277D3FC48];
    v4 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [&unk_284E7E778 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(&unk_284E7E778);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v10 = [objc_alloc(MEMORY[0x277CF3348]) initWithIdentifier:v9];
          v11 = [v10 localizedName];
          v12 = [v9 isEqualToString:@"com.apple.scrod.braille.table.duxbury.eng-xueb"];
          v13 = @"ENGLISH_UNIFIED_BRAILLE_TABLE";
          if ((v12 & 1) != 0 || (v14 = [v9 isEqualToString:@"com.apple.scrod.braille.table.duxbury.eng-xna"], v13 = @"ENGLISH_US_BRAILLE_TABLE", v14))
          {
            v15 = settingsLocString(v13, @"VoiceOverSettings");

            v11 = v15;
          }

          v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];
          [v16 setProperty:v9 forKey:@"tableIdentifier"];
          [v4 addObject:v16];

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_284E7E778 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v17 = *(&self->super.super.super.super.super.super.isa + v20);
    *(&self->super.super.super.super.super.super.isa + v20) = v4;

    v3 = *(&self->super.super.super.super.super.super.isa + v20);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = VoiceOverBrailleTableController;
  v4 = [(VoiceOverBrailleTableController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v21 = v7;
  v9 = [v21 specifier];
  if (VOSCustomBrailleEnabled())
  {
    v10 = [v9 propertyForKey:@"IsLanguage"];
    v11 = [v10 BOOLValue];

    if ([*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) isEditing])
    {
      if (v11)
      {
        [v21 setUserInteractionEnabled:1];
        [v21 setCellEnabled:1];
        v12 = v21;
        v13 = 1;
LABEL_11:
        [v12 setShowsReorderControl:v13];
        goto LABEL_15;
      }

      [v21 setUserInteractionEnabled:0];
      [v21 setCellEnabled:0];
      v18 = [v21 titleLabel];
      v19 = v18;
      v20 = 0;
    }

    else
    {
      [v21 setUserInteractionEnabled:1];
      [v21 setCellEnabled:1];
      if (v11)
      {
        v12 = v21;
        v13 = 0;
        goto LABEL_11;
      }

      v18 = [v21 titleLabel];
      v19 = v18;
      v20 = 1;
    }

    [v18 setEnabled:v20];
  }

  else
  {
    v14 = [v9 propertyForKey:@"tableIdentifier"];
    v15 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v16 = [v15 objectForKey:*MEMORY[0x277CE8010]];

    if (v16 || [v8 row])
    {
      v17 = [v14 isEqual:v16];
    }

    else
    {
      v17 = 1;
    }

    [v21 setChecked:v17];
  }

LABEL_15:
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:a4]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:a4]];
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
  v4 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:a4]];
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
  v4 = [(AccessibilityBridgeBaseController *)self specifierForIndexPath:a4];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqual:v10])
  {
    goto LABEL_26;
  }

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

  v46 = self;
  v19 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v43 = *MEMORY[0x277CE7FF0];
  v20 = [v19 objectForKey:?];

  v21 = [v20 mutableCopy];
  if (![v21 count])
  {
    goto LABEL_25;
  }

  v44 = v20;
  v45 = v10;
  v41 = v9;
  v42 = v8;
  v22 = 0;
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v23 = [v21 objectAtIndexedSubscript:{v22, v41, v42}];
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
  v9 = v41;
  v8 = v42;
  v20 = v44;
  v10 = v45;
  if (v50 != 0x7FFFFFFFFFFFFFFFLL && v51 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [v21 objectAtIndexedSubscript:v50];
    [v21 removeObjectAtIndex:v50];
    [v21 insertObject:v32 atIndex:v51];
    [(AccessibilityBridgeBaseController *)v46 setGizmoAccessibilityPref:v21 forKey:v43];
    v33 = BRLLogTranslation();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v21 debugDescription];
      *buf = 138412290;
      v54 = v34;
      _os_log_impl(&dword_23BCCF000, v33, OS_LOG_TYPE_DEFAULT, "Reordered braille languages settings %@", buf, 0xCu);
    }

    v35 = *MEMORY[0x277D3FC48];
    v36 = [*(&v46->super.super.super.super.super.super.isa + v35) mutableCopy];
    v37 = [(VoiceOverBrailleTableController *)v46 indexOfSpecifier:v48];
    v38 = [v36 objectAtIndexedSubscript:v37];
    [v36 removeObjectAtIndex:v37];
    [v36 insertObject:v38 atIndex:v51 - v50 + v37];
    v39 = *(&v46->super.super.super.super.super.super.isa + v35);
    *(&v46->super.super.super.super.super.super.isa + v35) = v36;

    v20 = v44;
    v10 = v45;
  }

LABEL_25:

LABEL_26:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:a5]];
  v8 = [v7 propertyForKey:@"IsLanguage"];
  v9 = [v8 BOOLValue];

  if (a4 == 1 && v9)
  {
    v10 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v35 = *MEMORY[0x277CE7FF0];
    v11 = [v10 objectForKey:?];

    v36 = v11;
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
      v39 = v12;
      _os_log_impl(&dword_23BCCF000, v19, OS_LOG_TYPE_DEFAULT, "Setting new items after removing: %@", buf, 0xCu);
    }

    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v12 forKey:v35];
    if (VOSCustomBrailleEnabled())
    {
      v20 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
      v21 = *MEMORY[0x277CE8000];
      v22 = [v20 objectForKey:*MEMORY[0x277CE8000]];

      v23 = [v13 identifier];
      v24 = [v23 isEqualToString:v22];

      if (v24)
      {
        v25 = [(VoiceOverBrailleTableController *)self _defaultTable];
        v26 = [v25 identifier];
        [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v26 forKey:v21];
      }

      v27 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
      v28 = *MEMORY[0x277CE7FE8];
      v29 = [v27 objectForKey:*MEMORY[0x277CE7FE8]];

      v30 = [v13 identifier];
      v31 = [v30 isEqualToString:v29];

      if (v31)
      {
        v32 = [(VoiceOverBrailleTableController *)self _defaultTable];
        v33 = [v32 identifier];
        [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v33 forKey:v28];
      }
    }

    [(VoiceOverBrailleTableController *)self removeSpecifier:v7 animated:1];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__VoiceOverBrailleTableController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  block[3] = &unk_278B90C98;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v34 = *MEMORY[0x277D85DE8];
}

void __82__VoiceOverBrailleTableController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityDomainAccessor];
  v3 = [v2 objectForKey:*MEMORY[0x277CE7FF0]];

  if ([v3 count] <= 1)
  {
    [*(a1 + 32) setEditing:0 animated:1];
    [*(*(a1 + 32) + *MEMORY[0x277D3FC60]) reloadData];
    [*(a1 + 32) _manageEditButton];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:a4]];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"DefaultLanguage"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D75AD8]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VoiceOverBrailleTableController;
  [(VoiceOverBrailleTableController *)&v11 tableView:v6 didSelectRowAtIndexPath:v7];
  if ((VOSCustomBrailleEnabled() & 1) == 0)
  {
    v8 = [v6 cellForRowAtIndexPath:v7];
    v9 = [v8 specifier];

    v10 = [v9 propertyForKey:@"tableIdentifier"];
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v10 forKey:*MEMORY[0x277CE8010]];
  }
}

- (BRLTTableEnumerator)tableEnumerator
{
  tableEnumerator = self->_tableEnumerator;
  if (!tableEnumerator)
  {
    v4 = [MEMORY[0x277CF3358] tableEnumeratorWithSystemBundlePath];
    v5 = self->_tableEnumerator;
    self->_tableEnumerator = v4;

    tableEnumerator = self->_tableEnumerator;
  }

  return tableEnumerator;
}

- (id)_tableSpecifiers
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:*MEMORY[0x277CE7FF0]];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [MEMORY[0x277CE7DA0] sharedInstance];
  v7 = [v6 userLocale];

  if ([v4 count])
  {
    v43 = v7;
    v44 = v4;
    v45 = v5;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v50 + 1) + 8 * i) objectForKeyedSubscript:@"Default"];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            v15 = VOSBrailleTableForRotorItem();
            v16 = MEMORY[0x277D3FAD8];
            v17 = [v15 localizedNameWithService];
            v18 = [v16 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

            [v18 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguage"];
            [v18 setProperty:v15 forKey:@"Table"];
            [v18 setIdentifier:@"DefaultLanguage"];
            v19 = [MEMORY[0x277CE7DA0] sharedInstance];
            v20 = [v19 userLocale];

            [v18 setProperty:v20 forKey:@"Locale"];
            v21 = [(VoiceOverBrailleTableController *)self tableEnumerator];
            [v18 setProperty:v21 forKey:@"TableEnumerator"];

            [v5 addObject:v18];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v10);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v8;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v46 + 1) + 8 * j) objectForKeyedSubscript:@"Default"];
          v28 = [v27 BOOLValue];

          if ((v28 & 1) == 0)
          {
            v29 = VOSBrailleTableForRotorItem();
            if (VOSCustomBrailleEnabled())
            {
              v30 = [v29 replacements];
              v31 = [v30 count];

              if (!v31)
              {
LABEL_21:
                v32 = MEMORY[0x277D3FAD8];
                v33 = [v29 localizedNameWithService];
                v34 = [v32 preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:0 cell:3 edit:0];

                [v34 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguage"];
                [v34 setProperty:v29 forKey:@"Table"];
                [v45 addObject:v34];
              }
            }

            else if (([v29 isCustomBrailleTable] & 1) == 0)
            {
              goto LABEL_21;
            }

            continue;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v24);
    }

    v4 = v44;
    v5 = v45;
    v7 = v43;
  }

  else
  {
    v35 = [(VoiceOverBrailleTableController *)self tableEnumerator];
    v36 = [objc_opt_class() defaultTableForLocale:v7];

    v37 = MEMORY[0x277D3FAD8];
    v38 = [v36 localizedNameWithService];
    v39 = [v37 preferenceSpecifierNamed:v38 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v39 setIdentifier:@"DefaultLanguage"];
    [v39 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguage"];
    [v39 setProperty:v7 forKey:@"Locale"];
    v40 = [(VoiceOverBrailleTableController *)self tableEnumerator];
    [v39 setProperty:v40 forKey:@"TableEnumerator"];

    [v39 setProperty:v36 forKey:@"Table"];
    [v5 addObject:v39];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_addNewTableSpecifier
{
  v3 = settingsLocString(@"ADD_NEW_BRAILLE_LANGUAGE_BUTTON", @"VoiceOverSettings");
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v4 setButtonAction:sel__addLanguage_];
  v5 = [(VoiceOverBrailleTableController *)self tableEnumerator];
  [v4 setProperty:v5 forKey:@"TableEnumerator"];

  v6 = MEMORY[0x277CBEC38];
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:@"IsAddingNewLanguage"];
  [v4 setProperty:v6 forKey:@"IsNewLanguage"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VoiceOverBrailleTableController__addNewTableSpecifier__block_invoke;
  aBlock[3] = &unk_278B90C98;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  [v4 setProperty:v7 forKey:@"DismissBlock"];

  [v4 setProperty:@"ADD_NEW_BRAILLE_LANGUAGE" forKey:*MEMORY[0x277D3FFB8]];

  return v4;
}

uint64_t __56__VoiceOverBrailleTableController__addNewTableSpecifier__block_invoke(uint64_t a1)
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

  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  [(VoiceOverBrailleTableController *)self presentViewController:v5 withTransition:8 completion:0];
}

- (void)_removeTableSpecifier:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v6 = *MEMORY[0x277CE7FF0];
  v7 = [v5 objectForKey:*MEMORY[0x277CE7FF0]];

  v31 = v7;
  v8 = [v7 mutableCopy];
  v32 = v4;
  v9 = [v4 propertyForKey:@"Table"];
  if ([v8 count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [v8 objectAtIndexedSubscript:v10];
      v12 = [v11 objectForKeyedSubscript:@"RotorItem"];
      v13 = [v9 identifier];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if ([v8 count] <= ++v10)
      {
        goto LABEL_7;
      }
    }

    [v8 removeObjectAtIndex:v10];
  }

LABEL_7:
  v15 = BRLLogTranslation();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v8;
    _os_log_impl(&dword_23BCCF000, v15, OS_LOG_TYPE_DEFAULT, "Setting new items after removing: %@", buf, 0xCu);
  }

  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v8 forKey:v6];
  if (VOSCustomBrailleEnabled())
  {
    v16 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v17 = *MEMORY[0x277CE8000];
    v18 = [v16 objectForKey:*MEMORY[0x277CE8000]];

    v19 = [v9 identifier];
    v20 = [v19 isEqualToString:v18];

    if (v20)
    {
      v21 = [(VoiceOverBrailleTableController *)self _defaultTable];
      v22 = [v21 identifier];
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v22 forKey:v17];
    }

    v23 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v24 = *MEMORY[0x277CE7FE8];
    v25 = [v23 objectForKey:*MEMORY[0x277CE7FE8]];

    v26 = [v9 identifier];
    v27 = [v26 isEqualToString:v25];

    if (v27)
    {
      v28 = [(VoiceOverBrailleTableController *)self _defaultTable];
      v29 = [v28 identifier];
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v29 forKey:v24];
    }
  }

  [(VoiceOverBrailleTableController *)self reloadSpecifiers];

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_defaultTable
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:*MEMORY[0x277CE7FF0]];

  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_6];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [MEMORY[0x277CE7DA0] sharedInstance];
    v7 = [v6 userLocale];

    v8 = [(VoiceOverBrailleTableController *)self tableEnumerator];
    v9 = [objc_opt_class() defaultTableForLocale:v7];
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:v5];
    v9 = VOSBrailleTableForRotorItem();
  }

  return v9;
}

uint64_t __48__VoiceOverBrailleTableController__defaultTable__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 objectForKeyedSubscript:@"Default"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

- (void)_manageEditButton
{
  v3 = [(VoiceOverBrailleTableController *)self _tableSpecifiers];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v5 = [(VoiceOverBrailleTableController *)self navigationItem];
    [v5 setRightBarButtonItem:0];

    [(VoiceOverBrailleTableController *)self setEditing:0 animated:1];
  }

  else if (([*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) isEditing] & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__editPressed_];
    v6 = [(VoiceOverBrailleTableController *)self navigationItem];
    [v6 setRightBarButtonItem:v7];
  }
}

- (void)_editPressed:(id)a3
{
  [(VoiceOverBrailleTableController *)self setEditing:1 animated:1];
  v4 = [(VoiceOverBrailleTableController *)self table];
  [v4 reloadData];

  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__donePressed];
  v5 = [(VoiceOverBrailleTableController *)self navigationItem];
  [v5 setRightBarButtonItem:v6];
}

- (void)_donePressed
{
  [(VoiceOverBrailleTableController *)self setEditing:0 animated:1];
  v3 = [(VoiceOverBrailleTableController *)self table];
  [v3 reloadData];

  [(VoiceOverBrailleTableController *)self _manageEditButton];
}

@end