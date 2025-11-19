@interface SafariStorageSettingsController
- (BOOL)_shouldAllowFilteringByProfile;
- (BOOL)_shouldDeleteSpecifierAfterRemovingProfileIdentifier:(id)a3 subtractingUsage:(unint64_t)a4 fromSpecifier:(id)a5;
- (id)_elementSpecifiersFilteredByProfile;
- (id)_getSpecifierDiskUsage:(id)a3;
- (id)_getSpecifierProfileIdentifiers:(id)a3;
- (id)_specifierRepresentingAllProfilesDataForDomain:(id)a3;
- (id)_specifiersForElementList;
- (id)_specifiersForLoadingSpinner;
- (id)_specifiersForSearchResults;
- (id)_totalUsageString;
- (id)specifiers;
- (void)_addSpecifiers;
- (void)_cancelDeleteWebsiteData:(id)a3;
- (void)_confirmDeleteWebsiteData:(id)a3;
- (void)_createSpecifiers;
- (void)_deleteAllElements;
- (void)_deleteElementData:(id)a3;
- (void)_presentDeleteConfirmationAlert;
- (void)_setContentInset:(double)a3;
- (void)_setFilterByProfileButtonAttributedTextForProfileTitle:(id)a3;
- (void)_setupProfileFilterItems;
- (void)_showDeleteAllElementsAlert;
- (void)_showProfileFilterSelectionSheet;
- (void)_toggleEditing;
- (void)_toggleFilteringByProfile;
- (void)_updateToolbarItems;
- (void)_updateTotalUsageSpecifier;
- (void)setEditable:(BOOL)a3;
- (void)setFilterDataByProfile:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)showAllElementsSpecifiers;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SafariStorageSettingsController

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = SafariStorageSettingsController;
  [(SafariStorageSettingsController *)&v27 viewDidLoad];
  v3 = [[UISearchController alloc] initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v3;

  [(UISearchController *)self->_searchController setDelegate:self];
  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  v5 = [(UISearchController *)self->_searchController searchBar];
  [v5 setAutocapitalizationType:0];

  v6 = [(UISearchController *)self->_searchController searchBar];
  [v6 setAutocorrectionType:1];

  v7 = [(UISearchController *)self->_searchController searchBar];
  [v7 setKeyboardType:3];

  v8 = self->_searchController;
  v9 = [(SafariStorageSettingsController *)self navigationItem];
  [v9 setSearchController:v8];

  v10 = [(SafariStorageSettingsController *)self navigationItem];
  [v10 setHidesSearchBarWhenScrolling:0];

  [(SafariStorageSettingsController *)self setDefinesPresentationContext:1];
  v11 = [(SafariStorageSettingsControllerDataSource *)self->_dataSource title];
  [(SafariStorageSettingsController *)self setTitle:v11];

  v12 = [(SafariStorageSettingsController *)self table];
  [v12 setKeyboardDismissMode:1];

  if (self->_shouldShowDeleteAllButton)
  {
    v13 = [(SafariStorageSettingsControllerDataSource *)self->_dataSource deleteButtonString];
    v14 = [PSSpecifier deleteButtonSpecifierWithName:v13 target:self action:"_showDeleteAllElementsAlert"];

    [v14 setProperty:@"DELETE_BUTTON" forKey:PSIDKey];
    v15 = [PSSpecifier groupSpecifierWithName:0];
    v28[0] = v15;
    v28[1] = v14;
    v16 = [NSArray arrayWithObjects:v28 count:2];
    deleteButtonSpecifiers = self->_deleteButtonSpecifiers;
    self->_deleteButtonSpecifiers = v16;
  }

  v18 = [(SafariStorageSettingsControllerDataSource *)self->_dataSource totalUsageString];
  v19 = [PSSpecifier groupSpecifierWithName:v18];
  totalUsageSpecifier = self->_totalUsageSpecifier;
  self->_totalUsageSpecifier = v19;

  [(PSSpecifier *)self->_totalUsageSpecifier setProperty:@"PSUsageSizeHeader" forKey:PSHeaderCellClassGroupKey];
  v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_toggleEditing"];
  doneToolbarItem = self->_doneToolbarItem;
  self->_doneToolbarItem = v21;

  v23 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"_toggleEditing"];
  editToolbarItem = self->_editToolbarItem;
  self->_editToolbarItem = v23;

  v25 = +[NSMutableArray array];
  lastSpecifiersForElementList = self->_lastSpecifiersForElementList;
  self->_lastSpecifiersForElementList = v25;

  [(SafariStorageSettingsController *)self _setupProfileFilterItems];
  [(SafariStorageSettingsController *)self _updateToolbarItems];
  [(SafariStorageSettingsController *)self _createSpecifiers];
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SafariStorageSettingsController;
  [(SafariStorageSettingsController *)&v8 setSpecifier:v4];
  v5 = [v4 propertyForKey:@"SafariStorageSettingsControllerDataSourceClassName"];
  v6 = objc_alloc_init(NSClassFromString(v5));
  dataSource = self->_dataSource;
  self->_dataSource = v6;

  if (!self->_dataSource)
  {
    [SafariStorageSettingsController setSpecifier:];
  }

  objc_opt_class();
  self->_shouldShowDeleteAllButton = objc_opt_respondsToSelector() & 1;
}

- (id)_totalUsageString
{
  v2 = [(SafariStorageSettingsController *)self _elementSpecifiersFilteredByProfile];
  v3 = v2;
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 += [*(*(&v11 + 1) + 8 * i) diskUsage];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v9 = CPFSSizeStrings();

  return v9;
}

- (void)_updateTotalUsageSpecifier
{
  totalUsageSpecifier = self->_totalUsageSpecifier;
  if (totalUsageSpecifier && self->_elementSpecifiers)
  {
    v5 = [(PSSpecifier *)totalUsageSpecifier propertyForKey:PSHeaderViewKey];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [(SafariStorageSettingsController *)self _totalUsageString];
        [(PSSpecifier *)self->_totalUsageSpecifier setProperty:v4 forKey:@"DISK_USAGE"];
        [v5 setSize:v4];
      }
    }
  }
}

- (void)_addSpecifiers
{
  self->_hasLoadedElements = 1;
  self->_isShowingAllElements = 0;
  if ([(SafariStorageSettingsController *)self indexOfSpecifierID:@"SPINNER_CELL"]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SafariStorageSettingsController *)self removeContiguousSpecifiers:self->_lastSpecifiersForElementList animated:1];
  }

  else
  {
    [(SafariStorageSettingsController *)self removeSpecifierID:@"SPINNER_CELL" animated:1];
  }

  [(SafariStorageSettingsController *)self beginUpdates];
  v9 = [(SafariStorageSettingsController *)self _elementSpecifiersFilteredByProfile];
  v3 = [v9 sortedArrayUsingComparator:&__block_literal_global_14];
  v4 = [v3 mutableCopy];
  sortedElements = self->_sortedElements;
  self->_sortedElements = v4;

  v6 = [(SafariStorageSettingsController *)self _specifiersForElementList];
  v7 = [v6 mutableCopy];
  lastSpecifiersForElementList = self->_lastSpecifiersForElementList;
  self->_lastSpecifiersForElementList = v7;

  [(SafariStorageSettingsController *)self insertContiguousSpecifiers:self->_lastSpecifiersForElementList atIndex:0 animated:1];
  [(SafariStorageSettingsController *)self endUpdates];
  [(SafariStorageSettingsController *)self _updateTotalUsageSpecifier];
}

int64_t __49__SafariStorageSettingsController__addSpecifiers__block_invoke(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 userInfo];
  v6 = [(PSSpecifier *)v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"DISK_USAGE"];
  v8 = [v5 objectForKeyedSubscript:@"DISK_USAGE"];
  v9 = [v7 compare:v8];

  return v9;
}

- (void)showAllElementsSpecifiers
{
  [(SafariStorageSettingsController *)self beginUpdates];
  v7 = [(NSMutableArray *)self->_sortedElements subarrayWithRange:10, [(NSMutableArray *)self->_sortedElements count]- 10];
  lastSpecifiersForElementList = self->_lastSpecifiersForElementList;
  v4 = [(SafariStorageSettingsController *)self specifierAtIndex:[(SafariStorageSettingsController *)self indexOfGroup:1]- 1];
  [(NSMutableArray *)lastSpecifiersForElementList safari_insertObjects:v7 afterObject:v4];

  v5 = self->_lastSpecifiersForElementList;
  v6 = [(SafariStorageSettingsController *)self specifierForID:@"SHOW_ALL_BUTTON"];
  [(NSMutableArray *)v5 removeObject:v6];

  [(SafariStorageSettingsController *)self removeSpecifierID:@"SHOW_ALL_BUTTON" animated:1];
  [(SafariStorageSettingsController *)self insertContiguousSpecifiers:v7 atEndOfGroup:0 animated:1];
  [(SafariStorageSettingsController *)self endUpdates];
  self->_isShowingAllElements = 1;
}

- (void)_createSpecifiers
{
  v3 = +[NSMutableArray array];
  elementSpecifiers = self->_elementSpecifiers;
  self->_elementSpecifiers = v3;

  dataSource = self->_dataSource;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __52__SafariStorageSettingsController__createSpecifiers__block_invoke;
  v6[3] = &unk_897B8;
  v6[4] = self;
  [(SafariStorageSettingsControllerDataSource *)dataSource createSpecifiersWithCompletionHandler:v6];
}

void __52__SafariStorageSettingsController__createSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v15 = *v17;
    v5 = PSDeletionActionKey;
    v6 = PSCellClassKey;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"name"];
        v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:*(a1 + 32) set:0 get:"_getSpecifierDiskUsage:" detail:0 cell:4 edit:0];

        v11 = NSStringFromSelector("_deleteElementData:");
        [v10 setProperty:v11 forKey:v5];

        v12 = [v8 objectForKeyedSubscript:@"userInfo"];
        [v10 setUserInfo:v12];

        [v10 setProperty:objc_opt_class() forKey:v6];
        v13 = [v8 objectForKeyedSubscript:@"usage"];
        [v10 setUsage:{objc_msgSend(v13, "unsignedLongLongValue")}];

        [*(*(a1 + 32) + 240) addObject:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _addSpecifiers];
}

- (id)_getSpecifierProfileIdentifiers:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"profileIdentifiersKey"];

  return v4;
}

- (BOOL)_shouldDeleteSpecifierAfterRemovingProfileIdentifier:(id)a3 subtractingUsage:(unint64_t)a4 fromSpecifier:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = a3;
    v10 = [v8 userInfo];
    v11 = [v10 mutableCopy];

    v12 = [(SafariStorageSettingsController *)self _getSpecifierProfileIdentifiers:v8];
    v13 = [v12 safari_setByRemovingObject:v9];

    if ([v13 count] == &dword_0 + 1 && (objc_msgSend(v13, "anyObject"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", WBAllWebsiteDataProfileIdentifier), v14, (v15 & 1) != 0))
    {
      v16 = 1;
    }

    else
    {
      [v11 setObject:v13 forKeyedSubscript:@"profileIdentifiersKey"];
      [v8 setUserInfo:v11];
      [v8 setUsage:{objc_msgSend(v8, "diskUsage") - a4}];
      [(SafariStorageSettingsController *)self reloadSpecifier:v8];
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_getSpecifierDiskUsage:(id)a3
{
  v3 = [a3 values];
  v4 = [v3 objectAtIndexedSubscript:0];

  return v4;
}

- (void)_deleteAllElements
{
  v3 = [(WBProfile *)self->_filterDataByProfile identifier];
  v4 = v3;
  v5 = WBAllWebsiteDataProfileIdentifier;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = WBAllWebsiteDataProfileIdentifier;
  }

  v7 = v6;

  dataSource = self->_dataSource;
  [objc_opt_class() deleteAllDataForProfileWithIdentifier:v7];
  v9 = [v7 isEqualToString:v5];
  elementSpecifiers = self->_elementSpecifiers;
  if (v9)
  {
    [(NSMutableArray *)elementSpecifiers removeAllObjects];
    v11 = [(SafariStorageSettingsController *)self navigationController];
    v12 = [v11 popViewControllerAnimated:1];
  }

  else
  {
    [(NSMutableArray *)elementSpecifiers removeObjectsInArray:self->_sortedElements];
    v13 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = self->_sortedElements;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [v19 name];
          v21 = [(SafariStorageSettingsController *)self _specifierRepresentingAllProfilesDataForDomain:v20];

          if (-[SafariStorageSettingsController _shouldDeleteSpecifierAfterRemovingProfileIdentifier:subtractingUsage:fromSpecifier:](self, "_shouldDeleteSpecifierAfterRemovingProfileIdentifier:subtractingUsage:fromSpecifier:", v7, [v19 diskUsage], v21))
          {
            [v13 addObject:v21];
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v16);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v13;
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(SafariStorageSettingsController *)self _deleteElementData:*(*(&v27 + 1) + 8 * j)];
        }

        v24 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v24);
    }
  }

  [(NSMutableArray *)self->_sortedElements removeAllObjects];
  [(SafariStorageSettingsController *)self _addSpecifiers];
}

- (void)_deleteElementData:(id)a3
{
  v4 = a3;
  [(SafariStorageSettingsControllerDataSource *)self->_dataSource deleteDataForSpecifier:v4];
  [(NSMutableArray *)self->_sortedElements removeObject:v4];
  [(NSMutableArray *)self->_elementSpecifiers removeObject:v4];
  if ([(SafariStorageSettingsControllerDataSource *)self->_dataSource offerFilteringByProfile])
  {
    [(NSMutableArray *)self->_lastSpecifiersForElementList removeObject:v4];
    v5 = [(SafariStorageSettingsController *)self _getSpecifierProfileIdentifiers:v4];
    v6 = [v5 containsObject:WBAllWebsiteDataProfileIdentifier];
    v7 = [v4 name];
    v8 = v7;
    if (v6)
    {
      elementSpecifiers = self->_elementSpecifiers;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __54__SafariStorageSettingsController__deleteElementData___block_invoke;
      v16[3] = &unk_8A4F8;
      v17 = v7;
      v10 = v7;
      [(NSMutableArray *)elementSpecifiers safari_removeObjectsPassingTest:v16];
    }

    else
    {
      v11 = [(SafariStorageSettingsController *)self _specifierRepresentingAllProfilesDataForDomain:v7];

      v12 = [v5 anyObject];
      v13 = -[SafariStorageSettingsController _shouldDeleteSpecifierAfterRemovingProfileIdentifier:subtractingUsage:fromSpecifier:](self, "_shouldDeleteSpecifierAfterRemovingProfileIdentifier:subtractingUsage:fromSpecifier:", v12, [v4 diskUsage], v11);

      if (v13)
      {
        [(SafariStorageSettingsController *)self _deleteElementData:v11];
      }
    }
  }

  [(SafariStorageSettingsController *)self removeSpecifier:v4 animated:1];
  if ([(NSMutableArray *)self->_elementSpecifiers count])
  {
    [(SafariStorageSettingsController *)self _updateTotalUsageSpecifier];
  }

  else
  {
    v14 = [(SafariStorageSettingsController *)self navigationController];
    v15 = [v14 popViewControllerAnimated:1];
  }
}

id __54__SafariStorageSettingsController__deleteElementData___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_presentDeleteConfirmationAlert
{
  v3 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_8BB60 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v9[0] = PSConfirmationTitleKey;
  v4 = SafariSettingsLocalizedString(@"Delete website data?", @"Storage");
  v10[0] = v4;
  v9[1] = PSConfirmationPromptKey;
  v5 = SafariSettingsLocalizedString(@"After you delete website data, Safari will quit and your tabs will be reloaded.", @"Storage");
  v10[1] = v5;
  v9[2] = PSConfirmationOKKey;
  v6 = SafariSettingsLocalizedString(@"Delete", @"Storage");
  v10[2] = v6;
  v9[3] = PSConfirmationCancelKey;
  v7 = SafariSettingsLocalizedString(@"Cancel", @"Storage");
  v10[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  [v3 setupWithDictionary:v8];

  [v3 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v3 setConfirmationAction:"_confirmDeleteWebsiteData:"];
  [v3 setConfirmationCancelAction:"_cancelDeleteWebsiteData:"];
  [(SafariStorageSettingsController *)self showConfirmationViewForSpecifier:v3 useAlert:1];
}

- (void)_confirmDeleteWebsiteData:(id)a3
{
  v4 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__table];
  indexPathToDelete = self->_indexPathToDelete;
  v7.receiver = self;
  v7.super_class = SafariStorageSettingsController;
  [(SafariStorageSettingsController *)&v7 tableView:v4 commitEditingStyle:1 forRowAtIndexPath:indexPathToDelete];
  v6 = self->_indexPathToDelete;
  self->_indexPathToDelete = 0;
}

- (void)_cancelDeleteWebsiteData:(id)a3
{
  indexPathToDelete = self->_indexPathToDelete;
  self->_indexPathToDelete = 0;
  _objc_release_x1();
}

- (id)_specifiersForSearchResults
{
  v3 = self->_sortedElements;
  if ([(NSString *)self->_searchPattern length])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __62__SafariStorageSettingsController__specifiersForSearchResults__block_invoke;
    v7[3] = &unk_8A958;
    v7[4] = self;
    v4 = [(NSMutableArray *)v3 safari_filterObjectsUsingBlock:v7];

    v3 = v4;
  }

  v5 = [(NSMutableArray *)v3 sortedArrayUsingComparator:&__block_literal_global_105];

  return v5;
}

BOOL __62__SafariStorageSettingsController__specifiersForSearchResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 rangeOfString:*(*(a1 + 32) + 152) options:1] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

int64_t __62__SafariStorageSettingsController__specifiersForSearchResults__block_invoke_2(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (id)_specifiersForLoadingSpinner
{
  v2 = [PSSpecifier preferenceSpecifierNamed:&stru_8BB60 target:0 set:0 get:0 detail:0 cell:13 edit:0];
  [v2 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v2 setProperty:@"SPINNER_CELL" forKey:PSIDKey];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)_specifiersForElementList
{
  [(SafariStorageSettingsController *)self _updateTotalUsageSpecifier];
  v3 = objc_alloc_init(NSMutableArray);
  if (![(UISearchController *)self->_searchController isActive])
  {
    [v3 addObject:self->_totalUsageSpecifier];
  }

  if (self->_isShowingAllElements || [(NSMutableArray *)self->_sortedElements count]< 0x10 || self->_shouldShowSearchToolbarItem)
  {
    if ([(UISearchController *)self->_searchController isActive])
    {
      v4 = [(SafariStorageSettingsController *)self _specifiersForSearchResults];
      [v3 addObjectsFromArray:v4];
    }

    else
    {
      [v3 addObjectsFromArray:self->_sortedElements];
    }

    self->_isShowingAllElements = 1;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_sortedElements subarrayWithRange:0, 10];
    [v3 addObjectsFromArray:v6];

    v7 = SafariSettingsLocalizedString(@"Show All Sites Button Title", @"Storage");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v8 setProperty:@"SHOW_ALL_BUTTON" forKey:PSIDKey];
    [v8 setButtonAction:"showAllElementsSpecifiers"];
    [v3 addObject:v8];
  }

  if (self->_shouldShowDeleteAllButton && [(NSMutableArray *)self->_sortedElements count]&& ![(UISearchController *)self->_searchController isActive])
  {
    [v3 addObjectsFromArray:self->_deleteButtonSpecifiers];
  }

  return v3;
}

- (id)_specifierRepresentingAllProfilesDataForDomain:(id)a3
{
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = self;
  v5 = self->_elementSpecifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = WBAllWebsiteDataProfileIdentifier;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 name];
        if ([v12 isEqualToString:v4])
        {
          v13 = [(SafariStorageSettingsController *)v17 _getSpecifierProfileIdentifiers:v11];
          v14 = [v13 containsObject:v9];

          if (v14)
          {
            v15 = v11;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)_elementSpecifiersFilteredByProfile
{
  if (([(SafariStorageSettingsControllerDataSource *)self->_dataSource offerFilteringByProfile]& 1) != 0)
  {
    v3 = [(WBProfile *)self->_filterDataByProfile identifier];
    v4 = v3;
    v5 = WBAllWebsiteDataProfileIdentifier;
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = WBAllWebsiteDataProfileIdentifier;
    }

    v7 = v6;

    v8 = [v7 isEqualToString:v5];
    elementSpecifiers = self->_elementSpecifiers;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __70__SafariStorageSettingsController__elementSpecifiersFilteredByProfile__block_invoke;
    v13[3] = &unk_8A9A0;
    v13[4] = self;
    v14 = v7;
    v15 = v8;
    v10 = v7;
    v11 = [(NSMutableArray *)elementSpecifiers safari_filterObjectsUsingBlock:v13];
  }

  else
  {
    v11 = self->_elementSpecifiers;
  }

  return v11;
}

uint64_t __70__SafariStorageSettingsController__elementSpecifiersFilteredByProfile__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _getSpecifierProfileIdentifiers:a2];
  v4 = [v3 containsObject:*(a1 + 40)];
  v5 = *(a1 + 48);
  v6 = v5 & v4;
  if (v5 & 1) == 0 && (v4)
  {
    v6 = [v3 containsObject:WBAllWebsiteDataProfileIdentifier] ^ 1;
  }

  return v6;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    if (self->_hasLoadedElements)
    {
      if ([(UISearchController *)self->_searchController isActive])
      {
        [(SafariStorageSettingsController *)self _specifiersForSearchResults];
      }

      else
      {
        [(SafariStorageSettingsController *)self _specifiersForElementList];
      }
      v6 = ;
      v7 = [v6 mutableCopy];
      lastSpecifiersForElementList = self->_lastSpecifiersForElementList;
      self->_lastSpecifiersForElementList = v7;

      v5 = [(NSMutableArray *)self->_lastSpecifiersForElementList mutableCopy];
    }

    else
    {
      v5 = [(SafariStorageSettingsController *)self _specifiersForLoadingSpinner];
    }

    v3 = v5;
    v9 = *&self->PSEditableListController_opaque[v2];
    *&self->PSEditableListController_opaque[v2] = v5;
  }

  v10 = v3;

  return v10;
}

- (BOOL)_shouldAllowFilteringByProfile
{
  v3 = +[SafariSettingsController tabGroupManager];
  if ([v3 hasMultipleProfiles])
  {
    v4 = [(SafariStorageSettingsControllerDataSource *)self->_dataSource offerFilteringByProfile];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFilterDataByProfile:(id)a3
{
  v5 = a3;
  filterDataByProfile = self->_filterDataByProfile;
  v7 = v5;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_filterDataByProfile, a3);
    [(SafariStorageSettingsController *)self _updateToolbarItems];
    [(SafariStorageSettingsController *)self _addSpecifiers];
  }
}

- (void)_showDeleteAllElementsAlert
{
  v3 = [(SafariStorageSettingsControllerDataSource *)self->_dataSource removeDataPromptTitle];
  v4 = [(SafariStorageSettingsControllerDataSource *)self->_dataSource removeDataMessage];
  v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:_SFDeviceAlertStyle()];

  if (_SFDeviceIsPad())
  {
    v6 = @"Remove Button Title";
  }

  else
  {
    v6 = @"Remove Now Button Title";
  }

  v7 = SafariSettingsLocalizedString(v6, @"Storage");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __62__SafariStorageSettingsController__showDeleteAllElementsAlert__block_invoke;
  v11[3] = &unk_896F0;
  v11[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:2 handler:v11];
  [v5 addAction:v8];

  v9 = SafariSettingsLocalizedString(@"Cancel Button Title", @"Storage");
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
  [v5 addAction:v10];

  [(SafariStorageSettingsController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_setContentInset:(double)a3
{
  v5 = [(SafariStorageSettingsController *)self navigationController];
  v6 = [v5 isToolbarHidden];

  if ((v6 & 1) == 0)
  {
    v7 = [(SafariStorageSettingsController *)self navigationController];
    v8 = [v7 toolbar];
    [v8 frame];
    a3 = fmax(CGRectGetHeight(v10), a3);
  }

  v9.receiver = self;
  v9.super_class = SafariStorageSettingsController;
  [(SafariStorageSettingsController *)&v9 _setContentInset:a3];
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = SafariStorageSettingsController;
  [(SafariStorageSettingsController *)&v14 setEditable:?];
  v5 = [(SafariStorageSettingsController *)self specifierForID:@"DELETE_BUTTON"];
  v6 = [NSNumber numberWithInt:!v3];
  v7 = PSEnabledKey;
  [v5 setProperty:v6 forKey:PSEnabledKey];

  v8 = PSTableCellKey;
  v9 = [v5 propertyForKey:PSTableCellKey];
  [v9 setCellEnabled:!v3];

  v10 = [(SafariStorageSettingsController *)self specifierForID:@"SHOW_ALL_BUTTON"];
  v11 = [NSNumber numberWithBool:!v3];
  [v10 setProperty:v11 forKey:v7];

  v12 = [v10 propertyForKey:v8];
  [v12 setCellEnabled:!v3];

  v13 = [(UISearchController *)self->_searchController searchBar];
  [v13 _setEnabled:!v3 animated:1];

  [(SafariStorageSettingsController *)self _updateToolbarItems];
}

- (void)_updateToolbarItems
{
  v3 = [(UIButton *)self->_toggleFilterButton configuration];
  if (self->_isFilteringDataByProfile)
  {
    v4 = @"line.3.horizontal.decrease.circle.fill";
  }

  else
  {
    v4 = @"line.3.horizontal.decrease.circle";
  }

  v5 = [UIImage systemImageNamed:v4];
  [v3 setImage:v5];

  [(UIButton *)self->_toggleFilterButton setConfiguration:v3];
  filterDataByProfile = self->_filterDataByProfile;
  if (filterDataByProfile)
  {
    v7 = [(WBProfile *)filterDataByProfile title];
    [(SafariStorageSettingsController *)self _setFilterByProfileButtonAttributedTextForProfileTitle:v7];
  }

  v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v9 = +[UIBarButtonItem flexibleSpaceItem];
  v10 = [UIBarButtonItem fixedSpaceItemOfWidth:25.0];
  v11 = [(SafariStorageSettingsController *)self editable];
  v12 = &OBJC_IVAR___SafariStorageSettingsController__editToolbarItem;
  if (v11)
  {
    v12 = &OBJC_IVAR___SafariStorageSettingsController__doneToolbarItem;
  }

  v13 = *&self->PSEditableListController_opaque[*v12];
  if (![(SafariStorageSettingsController *)self _shouldAllowFilteringByProfile])
  {
    v35 = v8;
    v36 = v13;
    v17 = &v35;
LABEL_13:
    v18 = 2;
    goto LABEL_18;
  }

  shouldShowSearchToolbarItem = self->_shouldShowSearchToolbarItem;
  toggleFilterItem = self->_toggleFilterItem;
  if (!self->_isFilteringDataByProfile)
  {
    if (self->_shouldShowSearchToolbarItem)
    {
      v22 = self->_toggleFilterItem;
      v23 = v8;
      v24 = v13;
      v17 = &v22;
      v18 = 3;
      goto LABEL_18;
    }

    v20 = self->_toggleFilterItem;
    v21 = v8;
    v17 = &v20;
    goto LABEL_13;
  }

  filterByProfileItem = self->_filterByProfileItem;
  if (self->_shouldShowSearchToolbarItem)
  {
    v30 = self->_toggleFilterItem;
    v31 = v8;
    v32 = filterByProfileItem;
    v33 = v9;
    v34 = v13;
    v17 = &v30;
  }

  else
  {
    v25 = self->_toggleFilterItem;
    v26 = v8;
    v27 = filterByProfileItem;
    v28 = v9;
    v29 = v10;
    v17 = &v25;
  }

  v18 = 5;
LABEL_18:
  v19 = [NSArray arrayWithObjects:v17 count:v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36];
  [(SafariStorageSettingsController *)self setToolbarItems:v19 animated:1];
}

- (void)_setupProfileFilterItems
{
  v13 = +[UIButtonConfiguration plainButtonConfiguration];
  [v13 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  v3 = [UIButton buttonWithConfiguration:v13 primaryAction:0];
  toggleFilterButton = self->_toggleFilterButton;
  self->_toggleFilterButton = v3;

  [(UIButton *)self->_toggleFilterButton addTarget:self action:"_toggleFilteringByProfile" forEvents:64];
  v5 = [[UIBarButtonItem alloc] initWithCustomView:self->_toggleFilterButton];
  toggleFilterItem = self->_toggleFilterItem;
  self->_toggleFilterItem = v5;

  v7 = objc_alloc_init(UIButton);
  filterByProfileButton = self->_filterByProfileButton;
  self->_filterByProfileButton = v7;

  v9 = [(UIButton *)self->_filterByProfileButton titleLabel];
  [v9 setLineBreakMode:0];

  v10 = [(UIButton *)self->_filterByProfileButton titleLabel];
  [v10 setTextAlignment:1];

  [(UIButton *)self->_filterByProfileButton addTarget:self action:"_showProfileFilterSelectionSheet" forEvents:64];
  v11 = [[UIBarButtonItem alloc] initWithCustomView:self->_filterByProfileButton];
  filterByProfileItem = self->_filterByProfileItem;
  self->_filterByProfileItem = v11;
}

- (void)_setFilterByProfileButtonAttributedTextForProfileTitle:(id)a3
{
  v3 = a3;
  v4 = [NSMutableAttributedString alloc];
  v5 = [NSAttributedString alloc];
  v6 = SafariSettingsLocalizedString(@"Filtered by title", @"Storage");
  v7 = [v6 stringByAppendingString:@"\n"];
  v20 = NSFontAttributeName;
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  v21 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v10 = [v5 initWithString:v7 attributes:v9];
  v11 = [v4 initWithAttributedString:v10];

  v12 = [NSAttributedString alloc];
  v18[0] = NSFontAttributeName;
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  v19[0] = v13;
  v18[1] = NSForegroundColorAttributeName;
  v14 = +[UIColor tintColor];
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [v12 initWithString:v3 attributes:v15];

  [v11 appendAttributedString:v16];
  [(UIButton *)self->_filterByProfileButton setAttributedTitle:v11 forState:0];
}

- (void)_showProfileFilterSelectionSheet
{
  v3 = [[SafariStorageSettingsProfileFilterViewController alloc] initWithStyle:2];
  [(SafariStorageSettingsProfileFilterViewController *)v3 setSelectedProfile:self->_filterDataByProfile];
  v4 = [[UINavigationController alloc] initWithRootViewController:v3];
  v5 = [UIBarButtonItem alloc];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __67__SafariStorageSettingsController__showProfileFilterSelectionSheet__block_invoke;
  v13 = &unk_8A9C8;
  v14 = self;
  v15 = v3;
  v6 = v3;
  v7 = [UIAction actionWithHandler:&v10];
  v8 = [v5 initWithBarButtonSystemItem:0 primaryAction:{v7, v10, v11, v12, v13, v14}];
  v9 = [(SafariStorageSettingsProfileFilterViewController *)v6 navigationItem];
  [v9 setRightBarButtonItem:v8];

  [(SafariStorageSettingsController *)self presentViewController:v4 animated:1 completion:0];
}

id __67__SafariStorageSettingsController__showProfileFilterSelectionSheet__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) selectedProfile];
  [*(a1 + 32) setFilterDataByProfile:v2];

  v3 = *(a1 + 32);

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_toggleFilteringByProfile
{
  isFilteringDataByProfile = self->_isFilteringDataByProfile;
  self->_isFilteringDataByProfile = !isFilteringDataByProfile;
  if (isFilteringDataByProfile)
  {
    goto LABEL_4;
  }

  v4 = [(SafariStorageSettingsController *)self filterDataByProfile];

  if (!v4)
  {
    v6 = [(SafariStorageSettingsController *)self previousFilterDataByProfile];
    if (v6)
    {
      [(SafariStorageSettingsController *)self setFilterDataByProfile:v6];
    }

    else
    {
      v7 = +[SafariSettingsController tabGroupManager];
      v8 = [v7 defaultProfile];
      [(SafariStorageSettingsController *)self setFilterDataByProfile:v8];
    }

    goto LABEL_9;
  }

  if (!self->_isFilteringDataByProfile)
  {
LABEL_4:
    v5 = [(SafariStorageSettingsController *)self filterDataByProfile];
    [(SafariStorageSettingsController *)self setPreviousFilterDataByProfile:v5];

    [(SafariStorageSettingsController *)self setFilterDataByProfile:0];
  }

LABEL_9:

  [(SafariStorageSettingsController *)self _updateToolbarItems];
}

- (void)_toggleEditing
{
  v3 = [(SafariStorageSettingsController *)self editable]^ 1;

  [(SafariStorageSettingsController *)self setEditable:v3];
}

- (void)willPresentSearchController:(id)a3
{
  if ([(SafariStorageSettingsController *)self _shouldAllowFilteringByProfile])
  {
    self->_shouldShowSearchToolbarItem = 1;

    [(SafariStorageSettingsController *)self _updateToolbarItems];
  }

  else
  {
    v4 = [(SafariStorageSettingsController *)self navigationController];
    [v4 setToolbarHidden:isiPad() animated:1];
  }
}

- (void)willDismissSearchController:(id)a3
{
  if ([(SafariStorageSettingsController *)self _shouldAllowFilteringByProfile])
  {
    self->_shouldShowSearchToolbarItem = 0;

    [(SafariStorageSettingsController *)self _updateToolbarItems];
  }

  else
  {
    v4 = [(SafariStorageSettingsController *)self navigationController];
    [v4 setToolbarHidden:1 animated:1];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 text];
  searchPattern = self->_searchPattern;
  self->_searchPattern = v5;

  [(SafariStorageSettingsController *)self reloadSpecifiers];
}

- (void)setSpecifier:.cold.1()
{
  v0 = [NSString stringWithFormat:&stru_8BB60];
  v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Safari/iOS/MobileSafari/SafariStorageSettingsController.m"];
  v2 = [v1 lastPathComponent];
  if ([v0 length])
  {
    v4 = [NSString stringWithFormat:@", %@", v0];
    v3 = [NSString stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "_dataSource", "[SafariStorageSettingsController setSpecifier:]", v2, 231, v4];
  }

  else
  {
    v3 = [NSString stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "_dataSource", "[SafariStorageSettingsController setSpecifier:]", v2, 231, &stru_8BB60];
  }

  v5 = +[NSThread callStackSymbols];
  NSLog(@"%@\n%@", v3, v5);

  abort();
}

@end