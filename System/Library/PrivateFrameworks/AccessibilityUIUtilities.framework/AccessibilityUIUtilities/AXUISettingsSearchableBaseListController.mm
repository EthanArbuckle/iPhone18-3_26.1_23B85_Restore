@interface AXUISettingsSearchableBaseListController
- (BOOL)shouldShowSpecifier:(id)specifier withSearchText:(id)text;
- (id)specifiers;
- (void)_loadAllSpecifiersIfNeeded;
- (void)deactivateAndPersistSearchText;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation AXUISettingsSearchableBaseListController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AXUISettingsSearchableBaseListController;
  [(AXUISettingsSetupCapableListController *)&v12 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
  cachedSearchTextWhileDeactivating = self->_cachedSearchTextWhileDeactivating;
  self->_cachedSearchTextWhileDeactivating = v3;

  [(NSString *)self->_cachedSearchTextWhileDeactivating setSearchResultsUpdater:self];
  [(NSString *)self->_cachedSearchTextWhileDeactivating setObscuresBackgroundDuringPresentation:0];
  searchBar = [(NSString *)self->_cachedSearchTextWhileDeactivating searchBar];
  [searchBar setDelegate:self];

  searchBar2 = [(NSString *)self->_cachedSearchTextWhileDeactivating searchBar];
  [searchBar2 setAutocapitalizationType:0];

  searchBar3 = [(NSString *)self->_cachedSearchTextWhileDeactivating searchBar];
  [searchBar3 setKeyboardType:0];

  searchBar4 = [(NSString *)self->_cachedSearchTextWhileDeactivating searchBar];
  [searchBar4 setAutocorrectionType:1];

  v9 = self->_cachedSearchTextWhileDeactivating;
  navigationItem = [(AXUISettingsSearchableBaseListController *)self navigationItem];
  [navigationItem setSearchController:v9];

  navigationItem2 = [(AXUISettingsSearchableBaseListController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  [(AXUISettingsSearchableBaseListController *)self setDefinesPresentationContext:1];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  v4 = *&self->_needsSpecifierRefresh;
  controllerCopy = controller;
  if ([v4 length])
  {
    [(AXUISettingsSearchableBaseListController *)self setSearchText:*&self->_needsSpecifierRefresh];
  }

  else
  {
    searchBar = [controllerCopy searchBar];
    text = [searchBar text];
    [(AXUISettingsSearchableBaseListController *)self setSearchText:text];
  }

  isActive = [controllerCopy isActive];

  if ((isActive & 1) == 0)
  {
    v9 = *&self->_needsSpecifierRefresh;
    *&self->_needsSpecifierRefresh = 0;
  }

  [(AXUISettingsSearchableBaseListController *)self reloadSpecifiers];
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  if ([*&self->_needsSpecifierRefresh length])
  {
    [editingCopy setText:*&self->_needsSpecifierRefresh];
  }
}

- (id)specifiers
{
  v27 = *MEMORY[0x1E69E9840];
  [(AXUISettingsSearchableBaseListController *)self _loadAllSpecifiersIfNeeded];
  v3 = *MEMORY[0x1E69C57B8];
  if (!*(&self->super.super.super.super.super.super.super.super.isa + v3))
  {
    if ([(UISearchController *)self->_searchController length])
    {
      v21 = objc_opt_new();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v4 = self->_searchText;
      v5 = [(NSString *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        v6 = v5;
        v20 = v3;
        v7 = 0;
        v8 = 0;
        v9 = *v23;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(v4);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            if ([(AXUISettingsSearchableBaseListController *)self _specifierIsGroupSpecifier:v11, v20])
            {
              if (v8 && [v7 count])
              {
                [v21 addObject:v8];
                [v21 addObjectsFromArray:v7];
              }

              v12 = v11;

              array = [MEMORY[0x1E695DF70] array];

              v7 = array;
              v8 = v12;
            }

            else
            {
              searchText = [(AXUISettingsSearchableBaseListController *)self searchText];
              v15 = [(AXUISettingsSearchableBaseListController *)self shouldShowSpecifier:v11 withSearchText:searchText];

              if (v15)
              {
                [v7 addObject:v11];
              }
            }
          }

          v6 = [(NSString *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v6);

        v3 = v20;
        if (v8 && [v7 count])
        {
          [v21 addObject:v8];
          [v21 addObjectsFromArray:v7];
        }
      }

      else
      {

        v8 = 0;
        v7 = 0;
      }

      v16 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.super.super.isa + v3) = v21;
      v17 = v21;
    }

    else
    {
      objc_storeStrong((&self->super.super.super.super.super.super.super.super.isa + v3), self->_searchText);
    }
  }

  v18 = *(&self->super.super.super.super.super.super.super.super.isa + v3);

  return v18;
}

- (void)deactivateAndPersistSearchText
{
  searchController = [(AXUISettingsSearchableBaseListController *)self searchController];
  isActive = [searchController isActive];

  if (isActive)
  {
    searchText = [(AXUISettingsSearchableBaseListController *)self searchText];
    v6 = *&self->_needsSpecifierRefresh;
    *&self->_needsSpecifierRefresh = searchText;

    searchController2 = [(AXUISettingsSearchableBaseListController *)self searchController];
    [searchController2 setActive:0];
  }
}

- (void)_loadAllSpecifiersIfNeeded
{
  if (!self->_searchText || BYTE2(self->super._detailItems) == 1)
  {
    BYTE2(self->super._detailItems) = 0;
    self->_searchText = [(AXUISettingsSearchableBaseListController *)self makeSpecifiers];

    MEMORY[0x1EEE66BB8]();
  }
}

- (BOOL)shouldShowSpecifier:(id)specifier withSearchText:(id)text
{
  specifierCopy = specifier;
  textCopy = text;
  if ([textCopy length])
  {
    name = [specifierCopy name];
    v8 = [name rangeOfString:textCopy options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end