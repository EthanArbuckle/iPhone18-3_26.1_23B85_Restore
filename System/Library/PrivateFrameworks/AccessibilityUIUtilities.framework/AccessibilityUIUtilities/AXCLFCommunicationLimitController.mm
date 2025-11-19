@interface AXCLFCommunicationLimitController
- (BOOL)_isAllowedFavoritesEntry:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (CLFBaseCommunicationLimitSettings)settings;
- (NSArray)actionTypes;
- (NSArray)bundleIdentifiers;
- (NSArray)communicationLimitSpecifiers;
- (NSString)contactPickerPrompt;
- (NSString)favoritesFooterText;
- (NSString)incomingHeaderText;
- (NSString)outgoingHeaderText;
- (NSString)privacyAppBundleIdentifier;
- (id)_favoritesEntryPickerContactForContact:(id)a3 contactStore:(id)a4;
- (id)_favoritesSpecifiers;
- (id)_singleCommunicationLimitSpecifiersForSpecifier:(id)a3;
- (id)_specifierForFavoritesEntry:(id)a3;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (unint64_t)app;
- (void)_addFavorite:(id)a3;
- (void)_favoritesDidChange:(id)a3;
- (void)_updateEditButton;
- (void)_updateForOutgoingCommunicationLimit;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)favoritesEntryPicker:(id)a3 didPickEntry:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation AXCLFCommunicationLimitController

- (NSArray)communicationLimitSpecifiers
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [_SingleCommunicationLimitSpecifiers alloc];
  v6 = [(AXCLFCommunicationLimitController *)self incomingHeaderText];
  v7 = [(AXCLFCommunicationLimitController *)self settings];
  v8 = [v7 incomingCommunicationLimit];
  v9 = *MEMORY[0x1E6994600];
  v10 = [(_SingleCommunicationLimitSpecifiers *)v5 initWithHeaderText:v6 communicationLimit:v8 maximumCommunicationLimit:*MEMORY[0x1E6994600] app:[(AXCLFCommunicationLimitController *)self app] direction:0];
  [(AXCLFCommunicationLimitController *)self setIncomingSpecifiers:v10];

  v11 = [(AXCLFCommunicationLimitController *)self incomingSpecifiers];
  v12 = [v11 allSpecifiers];
  [v4 addObjectsFromArray:v12];

  v13 = [_SingleCommunicationLimitSpecifiers alloc];
  v14 = [(AXCLFCommunicationLimitController *)self outgoingHeaderText];
  v15 = [(AXCLFCommunicationLimitController *)self settings];
  v16 = [v15 outgoingCommunicationLimit];
  v17 = [(AXCLFCommunicationLimitController *)self settings];
  v18 = [v17 requiresMoreRestrictiveOutgoingCommunicationLimit];
  if (v18)
  {
    v2 = [(AXCLFCommunicationLimitController *)self settings];
    v9 = [v2 incomingCommunicationLimit];
  }

  v19 = [(_SingleCommunicationLimitSpecifiers *)v13 initWithHeaderText:v14 communicationLimit:v16 maximumCommunicationLimit:v9 app:[(AXCLFCommunicationLimitController *)self app] direction:1];
  [(AXCLFCommunicationLimitController *)self setOutgoingSpecifiers:v19];

  if (v18)
  {
  }

  v20 = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];
  v21 = [v20 allSpecifiers];
  [v4 addObjectsFromArray:v21];

  if ([(AXCLFCommunicationLimitController *)self app])
  {
    v22 = @"FAVORITES_HEADER_MESSAGES";
  }

  else
  {
    v22 = @"FAVORITES_HEADER_CALLS";
  }

  v23 = AXUILocalizedStringForKey(v22);
  v24 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v23];
  v25 = [(AXCLFCommunicationLimitController *)self favoritesFooterText];
  [v24 setProperty:v25 forKey:*MEMORY[0x1E69C5900]];

  [v4 addObject:v24];
  v26 = [(AXCLFCommunicationLimitController *)self _favoritesSpecifiers];
  [v4 addObjectsFromArray:v26];

  v27 = [(AXCLFBasePrivacyLinkController *)self specifiersWithPrivacyLinkSupport:v4];

  return v27;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AXCLFCommunicationLimitController;
  [(AXCLFBasePrivacyLinkController *)&v3 viewDidLoad];
  [(AXCLFCommunicationLimitController *)self _updateEditButton];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = AXCLFCommunicationLimitController;
  [AXCLFCommunicationLimitController setEditing:sel_setEditing_animated_ animated:?];
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57C0]) setEditing:v5 animated:v4];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = AXCLFCommunicationLimitController;
  v6 = a4;
  [(AXCLFCommunicationLimitController *)&v18 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:v6, v18.receiver, v18.super_class];

  v8 = [(AXCLFCommunicationLimitController *)self _singleCommunicationLimitSpecifiersForSpecifier:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 groupSpecifier];
    v11 = [v10 propertyForKey:*MEMORY[0x1E69C5958]];

    if (v11 != v7)
    {
      v12 = [MEMORY[0x1E6994620] commonLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [AXCLFCommunicationLimitController tableView:didSelectRowAtIndexPath:];
      }
    }

    v13 = [v9 communicationLimitForSpecifier:v11];
    v14 = [(AXCLFCommunicationLimitController *)self incomingSpecifiers];

    if (v9 == v14)
    {
      v17 = [(AXCLFCommunicationLimitController *)self settings];
      [v17 setIncomingCommunicationLimit:v13];

      [(AXCLFCommunicationLimitController *)self _updateForOutgoingCommunicationLimit];
    }

    else
    {
      v15 = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];

      if (v9 == v15)
      {
        v16 = [(AXCLFCommunicationLimitController *)self settings];
        [v16 setOutgoingCommunicationLimit:v13];

        [(AXCLFCommunicationLimitController *)self reloadSpecifiers];
      }
    }
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"favoritesEntry"];
  v6 = v5 != 0;

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"favoritesEntry"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v6 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:a5];
    v7 = [v6 propertyForKey:@"favoritesEntry"];
    if (v7)
    {
      v8 = [(AXCLFCommunicationLimitController *)self favoritesController];
      v9 = [v8 favoritesEntries];
      v10 = [v9 indexOfObject:v7];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(AXCLFCommunicationLimitController *)self setShouldAvoidReloadForNextFavoritesUpdate:1];
        v12 = [(AXCLFCommunicationLimitController *)self favoritesController];
        v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];
        [v12 removeEntriesAtIndexes:v13];

        [(AXCLFCommunicationLimitController *)self removeSpecifier:v6 animated:1];
        goto LABEL_10;
      }

      v11 = CLFLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AXCLFCommunicationLimitController tableView:commitEditingStyle:forRowAtIndexPath:];
      }
    }

    else
    {
      v11 = CLFLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AXCLFCommunicationLimitController tableView:commitEditingStyle:forRowAtIndexPath:];
      }
    }

LABEL_10:
  }
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v4 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"favoritesEntry"];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:v8];
  v10 = [v9 propertyForKey:@"favoritesEntry"];

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  if (a4 && a5)
  {
    v7 = a5;
    v8 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:a4];
    v9 = [v8 propertyForKey:@"favoritesEntry"];
    v10 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:v7];

    v11 = [v10 propertyForKey:@"favoritesEntry"];
    v12 = v11;
    if (v9)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = CLFLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXCLFCommunicationLimitController tableView:moveRowAtIndexPath:toIndexPath:];
      }
    }

    else
    {
      v15 = [(AXCLFCommunicationLimitController *)self favoritesController];
      v16 = [v15 favoritesEntries];
      v17 = [v16 indexOfObject:v9];

      v18 = [(AXCLFCommunicationLimitController *)self favoritesController];
      v19 = [v18 favoritesEntries];
      v20 = [v19 indexOfObject:v12];

      if (v17 == 0x7FFFFFFFFFFFFFFFLL || v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = CLFLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [AXCLFCommunicationLimitController tableView:moveRowAtIndexPath:toIndexPath:];
        }
      }

      else
      {
        [(AXCLFCommunicationLimitController *)self setShouldAvoidReloadForNextFavoritesUpdate:1];
        v14 = [(AXCLFCommunicationLimitController *)self favoritesController];
        [v14 moveEntryAtIndex:v17 toIndex:v20];
      }
    }
  }
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(AXCLFCommunicationLimitController *)self presentedViewController];

  if (v5 == v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AXCLFCommunicationLimitController_contactPickerDidCancel___block_invoke;
    v6[3] = &unk_1E812DCA8;
    v6[4] = self;
    [(AXCLFCommunicationLimitController *)self dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {

    [(AXCLFCommunicationLimitController *)self setFavoritesEntryPicker:0];
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v14 = a3;
  v6 = a4;
  [v14 invalidateSelectionAnimated:1];
  v7 = [(AXCLFCommunicationLimitController *)self favoritesController];
  v8 = [v7 contactStore];
  v9 = [(AXCLFCommunicationLimitController *)self _favoritesEntryPickerContactForContact:v6 contactStore:v8];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695D1C0]) initWithContact:v6];
    [(AXCLFCommunicationLimitController *)self setFavoritesEntryPicker:v10];

    v11 = [(AXCLFCommunicationLimitController *)self favoritesEntryPicker];
    [v11 setDelegate:self];

    v12 = [(AXCLFCommunicationLimitController *)self favoritesEntryPicker];
    v13 = [v12 viewController];
    [v14 presentViewController:v13 animated:1 completion:0];
  }
}

- (void)favoritesEntryPicker:(id)a3 didPickEntry:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(AXCLFCommunicationLimitController *)self favoritesController];
  v7 = [v6 favoritesEntries];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v9 = CLFLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXCLFCommunicationLimitController favoritesEntryPicker:didPickEntry:];
    }
  }

  else if ([(AXCLFCommunicationLimitController *)self _isAllowedFavoritesEntry:v5])
  {
    v10 = [(AXCLFCommunicationLimitController *)self favoritesController];
    v11 = [v10 canAddEntry];

    if (v11)
    {
      v9 = [(AXCLFCommunicationLimitController *)self favoritesController];
      [v9 addEntry:v5];
    }

    else
    {
      v9 = CLFLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXCLFCommunicationLimitController favoritesEntryPicker:didPickEntry:];
      }
    }
  }

  else
  {
    v9 = CLFLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1C0DFB000, v9, OS_LOG_TYPE_DEFAULT, "Not adding favorites entry as it is for an unrelated app: %@", buf, 0xCu);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__AXCLFCommunicationLimitController_favoritesEntryPicker_didPickEntry___block_invoke;
  v12[3] = &unk_1E812DCA8;
  v12[4] = self;
  [(AXCLFCommunicationLimitController *)self dismissViewControllerAnimated:1 completion:v12];
}

- (void)_updateForOutgoingCommunicationLimit
{
  v3 = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];
  v4 = [(AXCLFCommunicationLimitController *)self settings];
  v5 = [v4 outgoingCommunicationLimit];
  v6 = [(AXCLFCommunicationLimitController *)self settings];
  if ([v6 requiresMoreRestrictiveOutgoingCommunicationLimit])
  {
    v7 = [(AXCLFCommunicationLimitController *)self settings];
    v8 = [v7 incomingCommunicationLimit];
    [v3 updateForCommunicationLimit:v5 maximumCommunicationLimit:v8];
  }

  else
  {
    [v3 updateForCommunicationLimit:v5 maximumCommunicationLimit:*MEMORY[0x1E6994600]];
  }

  v9 = [(AXCLFCommunicationLimitController *)self settings];
  v10 = [v9 requiresMoreRestrictiveOutgoingCommunicationLimit];

  if (v10)
  {

    [(AXCLFCommunicationLimitController *)self reloadSpecifiers];
  }
}

- (id)_singleCommunicationLimitSpecifiersForSpecifier:(id)a3
{
  v4 = [(AXCLFCommunicationLimitController *)self getGroupSpecifierForSpecifier:a3];
  v5 = [(AXCLFCommunicationLimitController *)self incomingSpecifiers];
  v6 = [v5 groupSpecifier];

  if (v4 == v6)
  {
    v10 = [(AXCLFCommunicationLimitController *)self incomingSpecifiers];
  }

  else
  {
    v7 = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];
    v8 = [v7 groupSpecifier];

    if (v4 != v8)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v10 = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];
  }

  v9 = v10;
LABEL_7:

  return v9;
}

- (id)_specifierForFavoritesEntry:(id)a3
{
  v4 = MEMORY[0x1E69C5748];
  v5 = a3;
  v6 = [v5 name];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  [v7 setProperty:v5 forKey:@"favoritesEntry"];

  v8 = [(AXCLFCommunicationLimitController *)self favoritesController];
  [v7 setProperty:v8 forKey:@"favoritesController"];

  return v7;
}

- (id)_favoritesSpecifiers
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(AXCLFCommunicationLimitController *)self favoritesController];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D89B0]);
    v5 = objc_opt_new();
    v6 = [v4 initWithContactStore:v5 prefetchCount:0];
    [(AXCLFCommunicationLimitController *)self setFavoritesController:v6];

    v7 = [(AXCLFCommunicationLimitController *)self favoritesController];
    [v7 fetchIfNeeded];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = *MEMORY[0x1E69D8A00];
    v10 = [(AXCLFCommunicationLimitController *)self favoritesController];
    [v8 addObserver:self selector:sel__favoritesDidChange_ name:v9 object:v10];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [(AXCLFCommunicationLimitController *)self favoritesController];
  v13 = [v12 favoritesEntries];

  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if ([(AXCLFCommunicationLimitController *)self _isAllowedFavoritesEntry:v18])
        {
          v19 = [(AXCLFCommunicationLimitController *)self _specifierForFavoritesEntry:v18];
          [v11 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v20 = MEMORY[0x1E69C5748];
  v21 = AXUILocalizedStringForKey(@"ADD_FAVORITE");
  v22 = [v20 preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v22 setButtonAction:sel__addFavorite_];
  [v11 addObject:v22];

  return v11;
}

- (BOOL)_isAllowedFavoritesEntry:(id)a3
{
  v4 = a3;
  v5 = [(AXCLFCommunicationLimitController *)self bundleIdentifiers];
  v6 = [v4 bundleIdentifier];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (void)_addFavorite:(id)a3
{
  v6 = objc_alloc_init(MEMORY[0x1E695D128]);
  [v6 setAllowsEditing:0];
  [v6 setAutocloses:0];
  [v6 setDelegate:self];
  [v6 setHidesSearchableSources:1];
  [v6 setMode:2];
  [v6 setOnlyRealContacts:1];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"emailAddresses.@count > 0 OR phoneNumbers.@count > 0"];
  [v6 setPredicateForEnablingContact:v4];

  v5 = [(AXCLFCommunicationLimitController *)self contactPickerPrompt];
  [v6 setPrompt:v5];

  [(AXCLFCommunicationLimitController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_favoritesEntryPickerContactForContact:(id)a3 contactStore:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695D1C0] descriptorForRequiredKeys];
  v23[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

  if ([v5 areKeysAvailable:v8])
  {
    v9 = v5;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithArray:v8];
    v11 = [v5 availableKeyDescriptor];
    if (v11)
    {
      [v10 addObject:v11];
    }

    v12 = [v5 identifier];
    v16 = 0;
    v9 = [v6 unifiedContactWithIdentifier:v12 keysToFetch:v10 error:&v16];
    v13 = v16;

    if (!v9)
    {
      v14 = CLFLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = v5;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&dword_1C0DFB000, v14, OS_LOG_TYPE_ERROR, "Could not retrieve a compatible contact using contact (%@) and contact store (%@) due to an error (%@).", buf, 0x20u);
      }
    }
  }

  return v9;
}

- (void)_favoritesDidChange:(id)a3
{
  if ([(AXCLFCommunicationLimitController *)self shouldAvoidReloadForNextFavoritesUpdate])
  {
    [(AXCLFCommunicationLimitController *)self setShouldAvoidReloadForNextFavoritesUpdate:0];
  }

  else
  {
    [(AXCLFCommunicationLimitController *)self reloadSpecifiers];
  }

  [(AXCLFCommunicationLimitController *)self _updateEditButton];
}

- (void)_updateEditButton
{
  v3 = [(AXCLFCommunicationLimitController *)self favoritesController];
  v4 = [v3 favoritesEntries];
  v5 = [v4 count];

  if (v5)
  {
    v8 = [(AXCLFCommunicationLimitController *)self editButtonItem];
    v6 = [(AXCLFCommunicationLimitController *)self navigationItem];
    [v6 setRightBarButtonItem:v8];
  }

  else
  {
    v7 = [(AXCLFCommunicationLimitController *)self navigationItem];
    [v7 setRightBarButtonItem:0];

    [(AXCLFCommunicationLimitController *)self setEditing:0 animated:1];
  }
}

- (NSString)outgoingHeaderText
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return &stru_1F4041FC0;
}

- (NSString)incomingHeaderText
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return &stru_1F4041FC0;
}

- (NSString)favoritesFooterText
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return &stru_1F4041FC0;
}

- (NSString)contactPickerPrompt
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return &stru_1F4041FC0;
}

- (NSString)privacyAppBundleIdentifier
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return &stru_1F4041FC0;
}

- (NSArray)actionTypes
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return MEMORY[0x1E695E0F0];
}

- (NSArray)bundleIdentifiers
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return MEMORY[0x1E695E0F0];
}

- (CLFBaseCommunicationLimitSettings)settings
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v2 = MEMORY[0x1E6994640];

  return [v2 sharedInstance];
}

- (unint64_t)app
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (void)tableView:didSelectRowAtIndexPath:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_1C0DFB000, v1, OS_LOG_TYPE_FAULT, "Radio group checked specifier was unexpectedly out of sync with the selected specifier. Checked: %@, selected: %@", v2, 0x16u);
}

- (void)tableView:moveRowAtIndexPath:toIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_7();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_4_0(&dword_1C0DFB000, v0, v1, "Unable to find source or destination favorites in the list. Source index: %lu, destination index: %lu", v2, v3);
}

@end