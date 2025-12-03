@interface VoiceOverWebRotorController
- (BOOL)isItemEnabled:(id)enabled;
- (BOOL)shouldShowItem:(id)item withSearchText:(id)text;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (NSMutableArray)allItems;
- (VoiceOverWebRotorController)init;
- (id)itemAfterTogglingEnabledState:(id)state;
- (id)itemsFromPreferences;
- (id)specifiers;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)titleForItem:(id)item;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)updateItemsInPreferences:(id)preferences;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation VoiceOverWebRotorController

- (VoiceOverWebRotorController)init
{
  v7.receiver = self;
  v7.super_class = VoiceOverWebRotorController;
  v2 = [(AXReorderableCheckmarkListController *)&v7 init];
  if (v2)
  {
    v3 = settingsLocString(@"WEB_ROTOR", @"VoiceOverSettings");
    navigationItem = [(VoiceOverWebRotorController *)v2 navigationItem];
    [navigationItem setTitle:v3];

    v5 = v2;
  }

  return v2;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = VoiceOverWebRotorController;
  [(AXReorderableCheckmarkListController *)&v12 viewDidLoad];
  v3 = [[UISearchController alloc] initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v3;

  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar setDelegate:self];

  searchBar2 = [(UISearchController *)self->_searchController searchBar];
  [searchBar2 setAutocapitalizationType:0];

  searchBar3 = [(UISearchController *)self->_searchController searchBar];
  [searchBar3 setKeyboardType:0];

  searchBar4 = [(UISearchController *)self->_searchController searchBar];
  [searchBar4 setAutocorrectionType:1];

  v9 = self->_searchController;
  navigationItem = [(VoiceOverWebRotorController *)self navigationItem];
  [navigationItem setSearchController:v9];

  navigationItem2 = [(VoiceOverWebRotorController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  [(VoiceOverWebRotorController *)self setDefinesPresentationContext:1];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    if (!self->_allItems)
    {
      itemsFromPreferences = [(VoiceOverWebRotorController *)self itemsFromPreferences];
      v6 = [itemsFromPreferences mutableCopy];
      allItems = self->_allItems;
      self->_allItems = v6;
    }

    searchText = [(VoiceOverWebRotorController *)self searchText];
    if ([searchText length])
    {
      filteredItems = [(VoiceOverWebRotorController *)self filteredItems];

      if (filteredItems)
      {
        v26 = v3;
        v10 = +[NSMutableArray array];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        filteredItems2 = [(VoiceOverWebRotorController *)self filteredItems];
        v12 = [filteredItems2 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(filteredItems2);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              if (![(VoiceOverWebRotorController *)self hideListItem:v16])
              {
                v17 = [(VoiceOverWebRotorController *)self titleForItem:v16];
                v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:0 set:0 get:0 detail:0 cell:3 edit:0];

                allItems = [(VoiceOverWebRotorController *)self allItems];
                v20 = [allItems indexOfObject:v16];

                v21 = [NSNumber numberWithUnsignedInteger:v20];
                [v18 setProperty:v21 forKey:@"AXReorderableItemIndex"];

                v22 = [(VoiceOverWebRotorController *)self identifierForItem:v16];
                [v18 setIdentifier:v22];

                [v10 addObject:v18];
              }
            }

            v13 = [filteredItems2 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v13);
        }

        v3 = v26;
        v23 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v26];
        *&self->super.super.AXUISettingsSetupCapableListController_opaque[v26] = v10;
        goto LABEL_18;
      }
    }

    else
    {
    }

    itemSpecifiers = [(AXReorderableCheckmarkListController *)self itemSpecifiers];
    v23 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3] = itemSpecifiers;
LABEL_18:

    [(VoiceOverWebRotorController *)self setAllSpecifiers:*&self->super.super.AXUISettingsSetupCapableListController_opaque[v3]];
    v4 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  voiceOverRotorItems = [v2 voiceOverRotorItems];

  return voiceOverRotorItems;
}

- (NSMutableArray)allItems
{
  allItems = self->_allItems;
  if (!allItems)
  {
    itemsFromPreferences = [(VoiceOverWebRotorController *)self itemsFromPreferences];
    v5 = [itemsFromPreferences mutableCopy];
    v6 = self->_allItems;
    self->_allItems = v5;

    allItems = self->_allItems;
  }

  return allItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverRotorItems:preferencesCopy];

  allItems = self->_allItems;
  self->_allItems = 0;
}

- (BOOL)isItemEnabled:(id)enabled
{
  v4.receiver = self;
  v4.super_class = VoiceOverWebRotorController;
  return [(VoiceOverRotorController *)&v4 isItemEnabled:enabled];
}

- (id)titleForItem:(id)item
{
  v4 = [item objectForKey:@"RotorItem"];
  v5 = [(VoiceOverWebRotorController *)self stringForSearchRotorItem:v4];

  return v5;
}

- (id)itemAfterTogglingEnabledState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy mutableCopy];
  v5 = [stateCopy objectForKey:@"Enabled"];

  LODWORD(stateCopy) = [v5 BOOLValue];
  v6 = [NSNumber numberWithInt:stateCopy ^ 1];
  [v4 setObject:v6 forKey:@"Enabled"];

  v7 = [v4 copy];

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  [(VoiceOverWebRotorController *)self setSearchText:text];

  searchText = [(VoiceOverWebRotorController *)self searchText];
  v7 = [searchText length];

  if (v7)
  {
    v8 = +[NSMutableArray array];
    allItems = [(VoiceOverWebRotorController *)self allItems];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [allItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(allItems);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          searchText2 = [(VoiceOverWebRotorController *)self searchText];
          v16 = [(VoiceOverWebRotorController *)self shouldShowItem:v14 withSearchText:searchText2];

          if (v16)
          {
            [v8 addObject:v14];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [allItems countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [(VoiceOverWebRotorController *)self setFilteredItems:v8];
  }

  else
  {
    [(VoiceOverWebRotorController *)self setFilteredItems:0];
  }

  v17 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  [(VoiceOverWebRotorController *)self reloadSpecifiers];
}

- (BOOL)shouldShowItem:(id)item withSearchText:(id)text
{
  itemCopy = item;
  textCopy = text;
  if ([textCopy length])
  {
    v8 = [itemCopy objectForKey:@"RotorItem"];
    v9 = [(VoiceOverWebRotorController *)self stringForSearchRotorItem:v8];
    v10 = [v9 rangeOfString:textCopy options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  searchText = [(VoiceOverWebRotorController *)self searchText];
  v5 = [searchText length];

  if (v5)
  {
    searchText2 = [(VoiceOverWebRotorController *)self searchText];
    [editingCopy setText:searchText2];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = VoiceOverWebRotorController;
  coordinatorCopy = coordinator;
  [(VoiceOverWebRotorController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __82__VoiceOverWebRotorController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_256678;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_15 completion:v8];
}

void __82__VoiceOverWebRotorController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) searchController];
  v1 = [v2 searchBar];
  [v1 sizeToFit];
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  searchText = [(VoiceOverWebRotorController *)self searchText];
  if ([searchText length])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VoiceOverWebRotorController;
    v9 = [(AXReorderableCheckmarkListController *)&v11 tableView:viewCopy canMoveRowAtIndexPath:pathCopy];
  }

  return v9;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  searchText = [(VoiceOverWebRotorController *)self searchText];
  v12 = [searchText length];

  if (v12)
  {
    v13 = pathCopy;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VoiceOverWebRotorController;
    v13 = [(AXReorderableCheckmarkListController *)&v16 tableView:viewCopy targetIndexPathForMoveFromRowAtIndexPath:pathCopy toProposedIndexPath:indexPathCopy];
  }

  v14 = v13;

  return v14;
}

@end