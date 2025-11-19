@interface VoiceOverWebRotorController
- (BOOL)isItemEnabled:(id)a3;
- (BOOL)shouldShowItem:(id)a3 withSearchText:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (NSMutableArray)allItems;
- (VoiceOverWebRotorController)init;
- (id)itemAfterTogglingEnabledState:(id)a3;
- (id)itemsFromPreferences;
- (id)specifiers;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)titleForItem:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)updateItemsInPreferences:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
    v4 = [(VoiceOverWebRotorController *)v2 navigationItem];
    [v4 setTitle:v3];

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
  v5 = [(UISearchController *)self->_searchController searchBar];
  [v5 setDelegate:self];

  v6 = [(UISearchController *)self->_searchController searchBar];
  [v6 setAutocapitalizationType:0];

  v7 = [(UISearchController *)self->_searchController searchBar];
  [v7 setKeyboardType:0];

  v8 = [(UISearchController *)self->_searchController searchBar];
  [v8 setAutocorrectionType:1];

  v9 = self->_searchController;
  v10 = [(VoiceOverWebRotorController *)self navigationItem];
  [v10 setSearchController:v9];

  v11 = [(VoiceOverWebRotorController *)self navigationItem];
  [v11 setHidesSearchBarWhenScrolling:0];

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
      v5 = [(VoiceOverWebRotorController *)self itemsFromPreferences];
      v6 = [v5 mutableCopy];
      allItems = self->_allItems;
      self->_allItems = v6;
    }

    v8 = [(VoiceOverWebRotorController *)self searchText];
    if ([v8 length])
    {
      v9 = [(VoiceOverWebRotorController *)self filteredItems];

      if (v9)
      {
        v26 = v3;
        v10 = +[NSMutableArray array];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = [(VoiceOverWebRotorController *)self filteredItems];
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              if (![(VoiceOverWebRotorController *)self hideListItem:v16])
              {
                v17 = [(VoiceOverWebRotorController *)self titleForItem:v16];
                v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:0 set:0 get:0 detail:0 cell:3 edit:0];

                v19 = [(VoiceOverWebRotorController *)self allItems];
                v20 = [v19 indexOfObject:v16];

                v21 = [NSNumber numberWithUnsignedInteger:v20];
                [v18 setProperty:v21 forKey:@"AXReorderableItemIndex"];

                v22 = [(VoiceOverWebRotorController *)self identifierForItem:v16];
                [v18 setIdentifier:v22];

                [v10 addObject:v18];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
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

    v24 = [(AXReorderableCheckmarkListController *)self itemSpecifiers];
    v23 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3] = v24;
LABEL_18:

    [(VoiceOverWebRotorController *)self setAllSpecifiers:*&self->super.super.AXUISettingsSetupCapableListController_opaque[v3]];
    v4 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverRotorItems];

  return v3;
}

- (NSMutableArray)allItems
{
  allItems = self->_allItems;
  if (!allItems)
  {
    v4 = [(VoiceOverWebRotorController *)self itemsFromPreferences];
    v5 = [v4 mutableCopy];
    v6 = self->_allItems;
    self->_allItems = v5;

    allItems = self->_allItems;
  }

  return allItems;
}

- (void)updateItemsInPreferences:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverRotorItems:v4];

  allItems = self->_allItems;
  self->_allItems = 0;
}

- (BOOL)isItemEnabled:(id)a3
{
  v4.receiver = self;
  v4.super_class = VoiceOverWebRotorController;
  return [(VoiceOverRotorController *)&v4 isItemEnabled:a3];
}

- (id)titleForItem:(id)a3
{
  v4 = [a3 objectForKey:@"RotorItem"];
  v5 = [(VoiceOverWebRotorController *)self stringForSearchRotorItem:v4];

  return v5;
}

- (id)itemAfterTogglingEnabledState:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKey:@"Enabled"];

  LODWORD(v3) = [v5 BOOLValue];
  v6 = [NSNumber numberWithInt:v3 ^ 1];
  [v4 setObject:v6 forKey:@"Enabled"];

  v7 = [v4 copy];

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 text];
  [(VoiceOverWebRotorController *)self setSearchText:v5];

  v6 = [(VoiceOverWebRotorController *)self searchText];
  v7 = [v6 length];

  if (v7)
  {
    v8 = +[NSMutableArray array];
    v9 = [(VoiceOverWebRotorController *)self allItems];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = [(VoiceOverWebRotorController *)self searchText];
          v16 = [(VoiceOverWebRotorController *)self shouldShowItem:v14 withSearchText:v15];

          if (v16)
          {
            [v8 addObject:v14];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (BOOL)shouldShowItem:(id)a3 withSearchText:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [v6 objectForKey:@"RotorItem"];
    v9 = [(VoiceOverWebRotorController *)self stringForSearchRotorItem:v8];
    v10 = [v9 rangeOfString:v7 options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v7 = a3;
  v4 = [(VoiceOverWebRotorController *)self searchText];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(VoiceOverWebRotorController *)self searchText];
    [v7 setText:v6];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = VoiceOverWebRotorController;
  v7 = a4;
  [(VoiceOverWebRotorController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __82__VoiceOverWebRotorController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_256678;
  v8[4] = self;
  [v7 animateAlongsideTransition:&__block_literal_global_15 completion:v8];
}

void __82__VoiceOverWebRotorController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) searchController];
  v1 = [v2 searchBar];
  [v1 sizeToFit];
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VoiceOverWebRotorController *)self searchText];
  if ([v8 length])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VoiceOverWebRotorController;
    v9 = [(AXReorderableCheckmarkListController *)&v11 tableView:v6 canMoveRowAtIndexPath:v7];
  }

  return v9;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VoiceOverWebRotorController *)self searchText];
  v12 = [v11 length];

  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VoiceOverWebRotorController;
    v13 = [(AXReorderableCheckmarkListController *)&v16 tableView:v8 targetIndexPathForMoveFromRowAtIndexPath:v9 toProposedIndexPath:v10];
  }

  v14 = v13;

  return v14;
}

@end