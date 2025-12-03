@interface AXCLFCommunicationLimitController
- (BOOL)_isAllowedFavoritesEntry:(id)entry;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (CLFBaseCommunicationLimitSettings)settings;
- (NSArray)actionTypes;
- (NSArray)bundleIdentifiers;
- (NSArray)communicationLimitSpecifiers;
- (NSString)contactPickerPrompt;
- (NSString)favoritesFooterText;
- (NSString)incomingHeaderText;
- (NSString)outgoingHeaderText;
- (NSString)privacyAppBundleIdentifier;
- (id)_favoritesEntryPickerContactForContact:(id)contact contactStore:(id)store;
- (id)_favoritesSpecifiers;
- (id)_singleCommunicationLimitSpecifiersForSpecifier:(id)specifier;
- (id)_specifierForFavoritesEntry:(id)entry;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (unint64_t)app;
- (void)_addFavorite:(id)favorite;
- (void)_favoritesDidChange:(id)change;
- (void)_updateEditButton;
- (void)_updateForOutgoingCommunicationLimit;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)favoritesEntryPicker:(id)picker didPickEntry:(id)entry;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation AXCLFCommunicationLimitController

- (NSArray)communicationLimitSpecifiers
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = [_SingleCommunicationLimitSpecifiers alloc];
  incomingHeaderText = [(AXCLFCommunicationLimitController *)self incomingHeaderText];
  settings = [(AXCLFCommunicationLimitController *)self settings];
  incomingCommunicationLimit = [settings incomingCommunicationLimit];
  incomingCommunicationLimit2 = *MEMORY[0x1E6994600];
  v10 = [(_SingleCommunicationLimitSpecifiers *)v5 initWithHeaderText:incomingHeaderText communicationLimit:incomingCommunicationLimit maximumCommunicationLimit:*MEMORY[0x1E6994600] app:[(AXCLFCommunicationLimitController *)self app] direction:0];
  [(AXCLFCommunicationLimitController *)self setIncomingSpecifiers:v10];

  incomingSpecifiers = [(AXCLFCommunicationLimitController *)self incomingSpecifiers];
  allSpecifiers = [incomingSpecifiers allSpecifiers];
  [array addObjectsFromArray:allSpecifiers];

  v13 = [_SingleCommunicationLimitSpecifiers alloc];
  outgoingHeaderText = [(AXCLFCommunicationLimitController *)self outgoingHeaderText];
  settings2 = [(AXCLFCommunicationLimitController *)self settings];
  outgoingCommunicationLimit = [settings2 outgoingCommunicationLimit];
  settings3 = [(AXCLFCommunicationLimitController *)self settings];
  requiresMoreRestrictiveOutgoingCommunicationLimit = [settings3 requiresMoreRestrictiveOutgoingCommunicationLimit];
  if (requiresMoreRestrictiveOutgoingCommunicationLimit)
  {
    settings4 = [(AXCLFCommunicationLimitController *)self settings];
    incomingCommunicationLimit2 = [settings4 incomingCommunicationLimit];
  }

  v19 = [(_SingleCommunicationLimitSpecifiers *)v13 initWithHeaderText:outgoingHeaderText communicationLimit:outgoingCommunicationLimit maximumCommunicationLimit:incomingCommunicationLimit2 app:[(AXCLFCommunicationLimitController *)self app] direction:1];
  [(AXCLFCommunicationLimitController *)self setOutgoingSpecifiers:v19];

  if (requiresMoreRestrictiveOutgoingCommunicationLimit)
  {
  }

  outgoingSpecifiers = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];
  allSpecifiers2 = [outgoingSpecifiers allSpecifiers];
  [array addObjectsFromArray:allSpecifiers2];

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
  favoritesFooterText = [(AXCLFCommunicationLimitController *)self favoritesFooterText];
  [v24 setProperty:favoritesFooterText forKey:*MEMORY[0x1E69C5900]];

  [array addObject:v24];
  _favoritesSpecifiers = [(AXCLFCommunicationLimitController *)self _favoritesSpecifiers];
  [array addObjectsFromArray:_favoritesSpecifiers];

  v27 = [(AXCLFBasePrivacyLinkController *)self specifiersWithPrivacyLinkSupport:array];

  return v27;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AXCLFCommunicationLimitController;
  [(AXCLFBasePrivacyLinkController *)&v3 viewDidLoad];
  [(AXCLFCommunicationLimitController *)self _updateEditButton];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = AXCLFCommunicationLimitController;
  [AXCLFCommunicationLimitController setEditing:sel_setEditing_animated_ animated:?];
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57C0]) setEditing:editingCopy animated:animatedCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = AXCLFCommunicationLimitController;
  pathCopy = path;
  [(AXCLFCommunicationLimitController *)&v18 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:pathCopy, v18.receiver, v18.super_class];

  v8 = [(AXCLFCommunicationLimitController *)self _singleCommunicationLimitSpecifiersForSpecifier:v7];
  v9 = v8;
  if (v8)
  {
    groupSpecifier = [v8 groupSpecifier];
    v11 = [groupSpecifier propertyForKey:*MEMORY[0x1E69C5958]];

    if (v11 != v7)
    {
      commonLog = [MEMORY[0x1E6994620] commonLog];
      if (os_log_type_enabled(commonLog, OS_LOG_TYPE_FAULT))
      {
        [AXCLFCommunicationLimitController tableView:didSelectRowAtIndexPath:];
      }
    }

    v13 = [v9 communicationLimitForSpecifier:v11];
    incomingSpecifiers = [(AXCLFCommunicationLimitController *)self incomingSpecifiers];

    if (v9 == incomingSpecifiers)
    {
      settings = [(AXCLFCommunicationLimitController *)self settings];
      [settings setIncomingCommunicationLimit:v13];

      [(AXCLFCommunicationLimitController *)self _updateForOutgoingCommunicationLimit];
    }

    else
    {
      outgoingSpecifiers = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];

      if (v9 == outgoingSpecifiers)
      {
        settings2 = [(AXCLFCommunicationLimitController *)self settings];
        [settings2 setOutgoingCommunicationLimit:v13];

        [(AXCLFCommunicationLimitController *)self reloadSpecifiers];
      }
    }
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"favoritesEntry"];
  v6 = v5 != 0;

  return v6;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"favoritesEntry"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v6 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:path];
    v7 = [v6 propertyForKey:@"favoritesEntry"];
    if (v7)
    {
      favoritesController = [(AXCLFCommunicationLimitController *)self favoritesController];
      favoritesEntries = [favoritesController favoritesEntries];
      v10 = [favoritesEntries indexOfObject:v7];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(AXCLFCommunicationLimitController *)self setShouldAvoidReloadForNextFavoritesUpdate:1];
        favoritesController2 = [(AXCLFCommunicationLimitController *)self favoritesController];
        v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];
        [favoritesController2 removeEntriesAtIndexes:v13];

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

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v4 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"favoritesEntry"];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v9 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:indexPathCopy];
  v10 = [v9 propertyForKey:@"favoritesEntry"];

  if (v10)
  {
    v11 = indexPathCopy;
  }

  else
  {
    v11 = pathCopy;
  }

  v12 = v11;

  return v11;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  if (path && indexPath)
  {
    indexPathCopy = indexPath;
    v8 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:path];
    v9 = [v8 propertyForKey:@"favoritesEntry"];
    v10 = [(AXCLFCommunicationLimitController *)self specifierAtIndexPath:indexPathCopy];

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
      favoritesController3 = CLFLogCommon();
      if (os_log_type_enabled(favoritesController3, OS_LOG_TYPE_ERROR))
      {
        [AXCLFCommunicationLimitController tableView:moveRowAtIndexPath:toIndexPath:];
      }
    }

    else
    {
      favoritesController = [(AXCLFCommunicationLimitController *)self favoritesController];
      favoritesEntries = [favoritesController favoritesEntries];
      v17 = [favoritesEntries indexOfObject:v9];

      favoritesController2 = [(AXCLFCommunicationLimitController *)self favoritesController];
      favoritesEntries2 = [favoritesController2 favoritesEntries];
      v20 = [favoritesEntries2 indexOfObject:v12];

      if (v17 == 0x7FFFFFFFFFFFFFFFLL || v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        favoritesController3 = CLFLogCommon();
        if (os_log_type_enabled(favoritesController3, OS_LOG_TYPE_ERROR))
        {
          [AXCLFCommunicationLimitController tableView:moveRowAtIndexPath:toIndexPath:];
        }
      }

      else
      {
        [(AXCLFCommunicationLimitController *)self setShouldAvoidReloadForNextFavoritesUpdate:1];
        favoritesController3 = [(AXCLFCommunicationLimitController *)self favoritesController];
        [favoritesController3 moveEntryAtIndex:v17 toIndex:v20];
      }
    }
  }
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentedViewController = [(AXCLFCommunicationLimitController *)self presentedViewController];

  if (presentedViewController == cancelCopy)
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

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  [pickerCopy invalidateSelectionAnimated:1];
  favoritesController = [(AXCLFCommunicationLimitController *)self favoritesController];
  contactStore = [favoritesController contactStore];
  v9 = [(AXCLFCommunicationLimitController *)self _favoritesEntryPickerContactForContact:contactCopy contactStore:contactStore];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695D1C0]) initWithContact:contactCopy];
    [(AXCLFCommunicationLimitController *)self setFavoritesEntryPicker:v10];

    favoritesEntryPicker = [(AXCLFCommunicationLimitController *)self favoritesEntryPicker];
    [favoritesEntryPicker setDelegate:self];

    favoritesEntryPicker2 = [(AXCLFCommunicationLimitController *)self favoritesEntryPicker];
    viewController = [favoritesEntryPicker2 viewController];
    [pickerCopy presentViewController:viewController animated:1 completion:0];
  }
}

- (void)favoritesEntryPicker:(id)picker didPickEntry:(id)entry
{
  v15 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  favoritesController = [(AXCLFCommunicationLimitController *)self favoritesController];
  favoritesEntries = [favoritesController favoritesEntries];
  v8 = [favoritesEntries containsObject:entryCopy];

  if (v8)
  {
    favoritesController3 = CLFLogCommon();
    if (os_log_type_enabled(favoritesController3, OS_LOG_TYPE_ERROR))
    {
      [AXCLFCommunicationLimitController favoritesEntryPicker:didPickEntry:];
    }
  }

  else if ([(AXCLFCommunicationLimitController *)self _isAllowedFavoritesEntry:entryCopy])
  {
    favoritesController2 = [(AXCLFCommunicationLimitController *)self favoritesController];
    canAddEntry = [favoritesController2 canAddEntry];

    if (canAddEntry)
    {
      favoritesController3 = [(AXCLFCommunicationLimitController *)self favoritesController];
      [favoritesController3 addEntry:entryCopy];
    }

    else
    {
      favoritesController3 = CLFLogCommon();
      if (os_log_type_enabled(favoritesController3, OS_LOG_TYPE_ERROR))
      {
        [AXCLFCommunicationLimitController favoritesEntryPicker:didPickEntry:];
      }
    }
  }

  else
  {
    favoritesController3 = CLFLogCommon();
    if (os_log_type_enabled(favoritesController3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = entryCopy;
      _os_log_impl(&dword_1C0DFB000, favoritesController3, OS_LOG_TYPE_DEFAULT, "Not adding favorites entry as it is for an unrelated app: %@", buf, 0xCu);
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
  outgoingSpecifiers = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];
  settings = [(AXCLFCommunicationLimitController *)self settings];
  outgoingCommunicationLimit = [settings outgoingCommunicationLimit];
  settings2 = [(AXCLFCommunicationLimitController *)self settings];
  if ([settings2 requiresMoreRestrictiveOutgoingCommunicationLimit])
  {
    settings3 = [(AXCLFCommunicationLimitController *)self settings];
    incomingCommunicationLimit = [settings3 incomingCommunicationLimit];
    [outgoingSpecifiers updateForCommunicationLimit:outgoingCommunicationLimit maximumCommunicationLimit:incomingCommunicationLimit];
  }

  else
  {
    [outgoingSpecifiers updateForCommunicationLimit:outgoingCommunicationLimit maximumCommunicationLimit:*MEMORY[0x1E6994600]];
  }

  settings4 = [(AXCLFCommunicationLimitController *)self settings];
  requiresMoreRestrictiveOutgoingCommunicationLimit = [settings4 requiresMoreRestrictiveOutgoingCommunicationLimit];

  if (requiresMoreRestrictiveOutgoingCommunicationLimit)
  {

    [(AXCLFCommunicationLimitController *)self reloadSpecifiers];
  }
}

- (id)_singleCommunicationLimitSpecifiersForSpecifier:(id)specifier
{
  v4 = [(AXCLFCommunicationLimitController *)self getGroupSpecifierForSpecifier:specifier];
  incomingSpecifiers = [(AXCLFCommunicationLimitController *)self incomingSpecifiers];
  groupSpecifier = [incomingSpecifiers groupSpecifier];

  if (v4 == groupSpecifier)
  {
    incomingSpecifiers2 = [(AXCLFCommunicationLimitController *)self incomingSpecifiers];
  }

  else
  {
    outgoingSpecifiers = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];
    groupSpecifier2 = [outgoingSpecifiers groupSpecifier];

    if (v4 != groupSpecifier2)
    {
      v9 = 0;
      goto LABEL_7;
    }

    incomingSpecifiers2 = [(AXCLFCommunicationLimitController *)self outgoingSpecifiers];
  }

  v9 = incomingSpecifiers2;
LABEL_7:

  return v9;
}

- (id)_specifierForFavoritesEntry:(id)entry
{
  v4 = MEMORY[0x1E69C5748];
  entryCopy = entry;
  name = [entryCopy name];
  v7 = [v4 preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  [v7 setProperty:entryCopy forKey:@"favoritesEntry"];

  favoritesController = [(AXCLFCommunicationLimitController *)self favoritesController];
  [v7 setProperty:favoritesController forKey:@"favoritesController"];

  return v7;
}

- (id)_favoritesSpecifiers
{
  v29 = *MEMORY[0x1E69E9840];
  favoritesController = [(AXCLFCommunicationLimitController *)self favoritesController];

  if (!favoritesController)
  {
    v4 = objc_alloc(MEMORY[0x1E69D89B0]);
    v5 = objc_opt_new();
    v6 = [v4 initWithContactStore:v5 prefetchCount:0];
    [(AXCLFCommunicationLimitController *)self setFavoritesController:v6];

    favoritesController2 = [(AXCLFCommunicationLimitController *)self favoritesController];
    [favoritesController2 fetchIfNeeded];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = *MEMORY[0x1E69D8A00];
    favoritesController3 = [(AXCLFCommunicationLimitController *)self favoritesController];
    [defaultCenter addObserver:self selector:sel__favoritesDidChange_ name:v9 object:favoritesController3];
  }

  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  favoritesController4 = [(AXCLFCommunicationLimitController *)self favoritesController];
  favoritesEntries = [favoritesController4 favoritesEntries];

  v14 = [favoritesEntries countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(favoritesEntries);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if ([(AXCLFCommunicationLimitController *)self _isAllowedFavoritesEntry:v18])
        {
          v19 = [(AXCLFCommunicationLimitController *)self _specifierForFavoritesEntry:v18];
          [array addObject:v19];
        }
      }

      v15 = [favoritesEntries countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v20 = MEMORY[0x1E69C5748];
  v21 = AXUILocalizedStringForKey(@"ADD_FAVORITE");
  v22 = [v20 preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v22 setButtonAction:sel__addFavorite_];
  [array addObject:v22];

  return array;
}

- (BOOL)_isAllowedFavoritesEntry:(id)entry
{
  entryCopy = entry;
  bundleIdentifiers = [(AXCLFCommunicationLimitController *)self bundleIdentifiers];
  bundleIdentifier = [entryCopy bundleIdentifier];

  LOBYTE(entryCopy) = [bundleIdentifiers containsObject:bundleIdentifier];
  return entryCopy;
}

- (void)_addFavorite:(id)favorite
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

  contactPickerPrompt = [(AXCLFCommunicationLimitController *)self contactPickerPrompt];
  [v6 setPrompt:contactPickerPrompt];

  [(AXCLFCommunicationLimitController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_favoritesEntryPickerContactForContact:(id)contact contactStore:(id)store
{
  v23[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  descriptorForRequiredKeys = [MEMORY[0x1E695D1C0] descriptorForRequiredKeys];
  v23[0] = descriptorForRequiredKeys;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

  if ([contactCopy areKeysAvailable:v8])
  {
    v9 = contactCopy;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithArray:v8];
    availableKeyDescriptor = [contactCopy availableKeyDescriptor];
    if (availableKeyDescriptor)
    {
      [v10 addObject:availableKeyDescriptor];
    }

    identifier = [contactCopy identifier];
    v16 = 0;
    v9 = [storeCopy unifiedContactWithIdentifier:identifier keysToFetch:v10 error:&v16];
    v13 = v16;

    if (!v9)
    {
      v14 = CLFLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = contactCopy;
        v19 = 2112;
        v20 = storeCopy;
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&dword_1C0DFB000, v14, OS_LOG_TYPE_ERROR, "Could not retrieve a compatible contact using contact (%@) and contact store (%@) due to an error (%@).", buf, 0x20u);
      }
    }
  }

  return v9;
}

- (void)_favoritesDidChange:(id)change
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
  favoritesController = [(AXCLFCommunicationLimitController *)self favoritesController];
  favoritesEntries = [favoritesController favoritesEntries];
  v5 = [favoritesEntries count];

  if (v5)
  {
    editButtonItem = [(AXCLFCommunicationLimitController *)self editButtonItem];
    navigationItem = [(AXCLFCommunicationLimitController *)self navigationItem];
    [navigationItem setRightBarButtonItem:editButtonItem];
  }

  else
  {
    navigationItem2 = [(AXCLFCommunicationLimitController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];

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