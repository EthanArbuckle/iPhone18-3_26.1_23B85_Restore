@interface SafariQuickWebsiteSearchSettingsController
- (BOOL)_hasSearchProviders;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (SafariQuickWebsiteSearchSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_cancelBarButtonItem;
- (id)_deleteBarButtonItem;
- (id)specifiers;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_cancelEditing:(id)editing;
- (void)_deleteItemsForSpecifiers:(id)specifiers;
- (void)_deleteSelectedItems:(id)items;
- (void)_updateDeleteButton;
- (void)_updateEditButton;
- (void)dealloc;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation SafariQuickWebsiteSearchSettingsController

- (SafariQuickWebsiteSearchSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = SafariQuickWebsiteSearchSettingsController;
  v4 = [(SafariQuickWebsiteSearchSettingsController *)&v11 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[WBSQuickWebsiteSearchController sharedController];
    [v5 beginLoadingFromDiskIfNeeded];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"_quickWebsiteSearchControllerDidFinishLoading:" name:WBSQuickWebsiteSearchControllerDidFinishLoadingNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v4 selector:"willBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v4 selector:"willResignActive" name:UIApplicationWillResignActiveNotification object:0];

    v9 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SafariQuickWebsiteSearchSettingsController;
  [(SafariQuickWebsiteSearchSettingsController *)&v4 dealloc];
}

- (void)willBecomeActive
{
  v2 = +[WBSQuickWebsiteSearchController sharedController];
  [v2 noteProvidersAreStale];
}

- (void)willResignActive
{
  if (self->_didModifyQuickWebsiteSearchProviders)
  {
    v3 = +[WBSQuickWebsiteSearchController sharedController];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __62__SafariQuickWebsiteSearchSettingsController_willResignActive__block_invoke;
    v4[3] = &unk_895D8;
    v4[4] = self;
    [v3 savePendingChangesNowWithCompletionHandler:v4];
  }

  self->_didModifyQuickWebsiteSearchProviders = 0;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *&self->super.PSListController_opaque[v2];
    v35 = v2;
    *&self->super.PSListController_opaque[v2] = v6;

    v8 = [PSSpecifier groupSpecifierWithName:0];
    v9 = SafariSettingsLocalizedString(@"Quick Website Search Switch Explanatory Footer", @"Safari");
    v10 = PSFooterTextGroupKey;
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    v34 = v8;
    [v6 addObject:v8];
    v11 = SafariSettingsLocalizedString(@"Quick Website Search (Switch Label)", @"Safari");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"_setUseSiteSpecificSearch:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    v44[0] = PSDefaultsKey;
    v44[1] = PSContainerBundleIDKey;
    v45[0] = @"com.apple.mobilesafari";
    v45[1] = @"com.apple.mobilesafari";
    v44[2] = PSDefaultValueKey;
    v44[3] = PSKeyNameKey;
    v45[2] = &__kCFBooleanFalse;
    v45[3] = @"DisableWebsiteSpecificSearch";
    v13 = PSIDKey;
    v44[4] = PSIDKey;
    v44[5] = PSNegateValueKey;
    v45[4] = @"USE_SITE_SPECIFIC_SEARCH";
    v45[5] = &__kCFBooleanTrue;
    v14 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:6];
    [v12 setProperties:v14];

    v38 = v6;
    v33 = v12;
    [v6 addObject:v12];
    _hasSearchProviders = [(SafariQuickWebsiteSearchSettingsController *)self _hasSearchProviders];
    v16 = 0;
    if (_hasSearchProviders)
    {
      v16 = SafariSettingsLocalizedString(@"Website shortcuts", @"Safari");
    }

    v32 = v16;
    v17 = [PSSpecifier groupSpecifierWithName:v16];
    v18 = SafariSettingsLocalizedString(@"Quick website search shortcuts are added automatically by searching within a website.", @"Safari");
    [v17 setProperty:v18 forKey:v10];

    v31 = v17;
    [v38 addObject:v17];
    selfCopy = self;
    [(SafariQuickWebsiteSearchSettingsController *)self _updateEditButton];
    v19 = +[WBSQuickWebsiteSearchController sharedController];
    quickWebsiteSearchHosts = [v19 quickWebsiteSearchHosts];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = quickWebsiteSearchHosts;
    v21 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v40;
      do
      {
        v25 = 0;
        v26 = v23;
        do
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v39 + 1) + 8 * v25);
          v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          v23 = v26 + 1;
          v29 = [NSString stringWithFormat:@"%lu", v26];
          [v28 setProperty:v29 forKey:v13];

          [v28 setUserInfo:v27];
          [v38 addObject:v28];

          v25 = v25 + 1;
          v26 = v23;
        }

        while (v22 != v25);
        v22 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
    }

    v4 = *&selfCopy->super.PSListController_opaque[v35];
  }

  return v4;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(SafariQuickWebsiteSearchSettingsController *)self indexForIndexPath:pathCopy];
  v7 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v6];
  identifier = [v7 identifier];
  if ([identifier isEqualToString:@"USE_SITE_SPECIFIC_SEARCH"])
  {
    v9 = 0;
  }

  else
  {
    v9 = pathCopy;
  }

  v10 = v9;

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([viewCopy isEditing])
  {
    [(SafariQuickWebsiteSearchSettingsController *)self _updateDeleteButton];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SafariQuickWebsiteSearchSettingsController;
    [(SafariSettingsListController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  if ([view isEditing])
  {

    [(SafariQuickWebsiteSearchSettingsController *)self _updateDeleteButton];
  }
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  v6 = [(SafariQuickWebsiteSearchSettingsController *)self navigationItem:view];
  _cancelBarButtonItem = [(SafariQuickWebsiteSearchSettingsController *)self _cancelBarButtonItem];
  [v6 setRightBarButtonItem:_cancelBarButtonItem animated:1];
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  v6 = [(SafariQuickWebsiteSearchSettingsController *)self navigationItem:view];
  editButtonItem = [(SafariQuickWebsiteSearchSettingsController *)self editButtonItem];
  [v6 setRightBarButtonItem:editButtonItem animated:1];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(SafariQuickWebsiteSearchSettingsController *)self specifierAtIndex:[(SafariQuickWebsiteSearchSettingsController *)self indexForIndexPath:path]];
  identifier = [v4 identifier];
  v6 = [identifier isEqualToString:@"USE_SITE_SPECIFIC_SEARCH"];

  return v6 ^ 1;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  style = [(SafariQuickWebsiteSearchSettingsController *)self indexForIndexPath:path, style];
  v7 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:style];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(SafariQuickWebsiteSearchSettingsController *)self _deleteItemsForSpecifiers:v8];

  [(SafariQuickWebsiteSearchSettingsController *)self removeSpecifier:v7 animated:1];
}

- (BOOL)_hasSearchProviders
{
  v2 = +[WBSQuickWebsiteSearchController sharedController];
  quickWebsiteSearchHosts = [v2 quickWebsiteSearchHosts];
  v4 = [quickWebsiteSearchHosts count] != 0;

  return v4;
}

- (void)_updateEditButton
{
  editButtonItem = [(SafariQuickWebsiteSearchSettingsController *)self editButtonItem];
  [editButtonItem setEnabled:{-[SafariQuickWebsiteSearchSettingsController _hasSearchProviders](self, "_hasSearchProviders")}];
}

- (void)_updateDeleteButton
{
  _deleteBarButtonItem = [(SafariQuickWebsiteSearchSettingsController *)self _deleteBarButtonItem];
  table = [(SafariQuickWebsiteSearchSettingsController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];
  [_deleteBarButtonItem setEnabled:{objc_msgSend(indexPathsForSelectedRows, "count") != 0}];
}

- (id)_deleteBarButtonItem
{
  deleteBarButtonItem = self->_deleteBarButtonItem;
  if (!deleteBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = SafariSettingsLocalizedString(@"Delete", @"Safari");
    v6 = [v4 initWithTitle:v5 style:7 target:self action:"_deleteSelectedItems:"];
    v7 = self->_deleteBarButtonItem;
    self->_deleteBarButtonItem = v6;

    deleteBarButtonItem = self->_deleteBarButtonItem;
  }

  return deleteBarButtonItem;
}

- (id)_cancelBarButtonItem
{
  cancelBarButtonItem = self->_cancelBarButtonItem;
  if (!cancelBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = SafariSettingsLocalizedString(@"Cancel", @"Safari");
    v6 = [v4 initWithTitle:v5 style:2 target:self action:"_cancelEditing:"];
    v7 = self->_cancelBarButtonItem;
    self->_cancelBarButtonItem = v6;

    cancelBarButtonItem = self->_cancelBarButtonItem;
  }

  return cancelBarButtonItem;
}

- (void)_cancelEditing:(id)editing
{
  if ([(SafariQuickWebsiteSearchSettingsController *)self isEditing])
  {

    [(SafariQuickWebsiteSearchSettingsController *)self setEditing:0 animated:1];
  }

  else
  {
    table = [(SafariQuickWebsiteSearchSettingsController *)self table];
    [table setEditing:0 animated:0];
  }
}

- (void)_deleteSelectedItems:(id)items
{
  table = [(SafariQuickWebsiteSearchSettingsController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [indexPathsForSelectedRows count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = indexPathsForSelectedRows;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(SafariQuickWebsiteSearchSettingsController *)self specifierAtIndex:[(SafariQuickWebsiteSearchSettingsController *)self indexForIndexPath:*(*(&v22 + 1) + 8 * v11)]];
        [v6 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  [(SafariQuickWebsiteSearchSettingsController *)self _deleteItemsForSpecifiers:v6];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(SafariQuickWebsiteSearchSettingsController *)self removeSpecifier:*(*(&v18 + 1) + 8 * v17) animated:1, v18];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }

  [(SafariQuickWebsiteSearchSettingsController *)self setEditing:0 animated:1];
}

- (void)_deleteItemsForSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v6 = +[WBSQuickWebsiteSearchController sharedController];
  v5 = [specifiersCopy safari_mapObjectsUsingBlock:&__block_literal_global_7];

  [v6 removeProvidersWithHosts:v5 completionHandler:0];
  [(SafariQuickWebsiteSearchSettingsController *)self _updateEditButton];
  self->_didModifyQuickWebsiteSearchProviders = 1;
}

id __72__SafariQuickWebsiteSearchSettingsController__deleteItemsForSpecifiers___block_invoke(id a1, PSSpecifier *a2)
{
  v2 = a2;
  v3 = +[WBSAnalyticsLogger sharedLogger];
  [v3 didRemoveSiteSpecificSearchProvider];

  v4 = [(PSSpecifier *)v2 userInfo];

  return v4;
}

@end