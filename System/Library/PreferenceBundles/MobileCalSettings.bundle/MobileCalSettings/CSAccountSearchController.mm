@interface CSAccountSearchController
- (CSAccountSearchController)init;
- (id)_grantedDelegateFromAutocompleteResult:(id)result;
- (id)specifiers;
- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity;
- (void)autocompleteFetchDidEndNetworkActivity:(id)activity;
- (void)autocompleteFetchDidFinish:(id)finish;
- (void)didDismissViewControllerSavingNewDelegate:(BOOL)delegate;
- (void)didModifyDelegate:(id)delegate;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
@end

@implementation CSAccountSearchController

- (CSAccountSearchController)init
{
  v16.receiver = self;
  v16.super_class = CSAccountSearchController;
  v2 = [(CSAccountSearchController *)&v16 init];
  if (v2)
  {
    v3 = [[CNAutocompleteStore alloc] initWithDelegate:v2];
    autocompleteStore = v2->_autocompleteStore;
    v2->_autocompleteStore = v3;

    v5 = +[NSMutableArray array];
    searchResults = v2->_searchResults;
    v2->_searchResults = v5;

    v7 = objc_opt_new();
    fetchContext = v2->_fetchContext;
    v2->_fetchContext = v7;

    v9 = [[UISearchController alloc] initWithSearchResultsController:0];
    searchController = v2->_searchController;
    v2->_searchController = v9;

    [(UISearchController *)v2->_searchController setSearchResultsUpdater:v2];
    [(UISearchController *)v2->_searchController setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)v2->_searchController setHidesNavigationBarDuringPresentation:1];
    v11 = v2->_searchController;
    navigationItem = [(CSAccountSearchController *)v2 navigationItem];
    [navigationItem setSearchController:v11];

    navigationItem2 = [(CSAccountSearchController *)v2 navigationItem];
    [navigationItem2 setHidesSearchBarWhenScrolling:0];

    searchBar = [(UISearchController *)v2->_searchController searchBar];
    [searchBar setAutocapitalizationType:0];
    [searchBar setAutocorrectionType:1];
  }

  return v2;
}

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = CSAccountSearchController;
  specifierCopy = specifier;
  [(CSAccountSearchController *)&v9 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"CSSourceKey", v9.receiver, v9.super_class}];
  source = self->_source;
  self->_source = v5;

  v7 = [specifierCopy propertyForKey:@"CSParentControllerKey"];

  objc_storeWeak(&self->_accountController, v7);
  sourceIdentifier = [(EKSource *)self->_source sourceIdentifier];
  [(CNAutocompleteFetchContext *)self->_fetchContext setSendingAddressAccountIdentifier:sourceIdentifier];
}

- (void)didDismissViewControllerSavingNewDelegate:(BOOL)delegate
{
  if (delegate)
  {
    [(CSAccountSearchController *)self settingsNavigationProxy_pop];
  }
}

- (void)didModifyDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_accountController);
  [WeakRetained didModifyDelegate:delegateCopy];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  if (([controllerCopy isActive] & 1) == 0)
  {
    [(CNCancelable *)self->_currentFetchRequest cancel];
  }

  searchBar = [controllerCopy searchBar];
  text = [searchBar text];

  [(CNCancelable *)self->_currentFetchRequest cancel];
  [(NSMutableArray *)self->_searchResults removeAllObjects];
  v6 = +[CNAutocompleteFetchRequest request];
  [v6 setFetchContext:self->_fetchContext];
  [v6 setSearchType:3];
  [v6 setSearchString:text];
  [v6 setIncludeCalendarServers:1];
  [v6 setIncludeRecents:1];
  [v6 setIncludePredictions:1];
  [v6 setIncludeDirectoryServers:0];
  [v6 setIncludeContacts:0];
  [v6 setIncludeSuggestions:0];
  v7 = [(CNAutocompleteStore *)self->_autocompleteStore scheduleFetchRequest:v6];
  currentFetchRequest = self->_currentFetchRequest;
  self->_currentFetchRequest = v7;

  [(CSAccountSearchController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v18 = OBJC_IVAR___PSListController__specifiers;
    v21 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_searchResults;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v20 = *v23;
      do
      {
        v6 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * v6);
          v8 = [NSBundle bundleForClass:objc_opt_class()];
          v9 = [v8 localizedStringForKey:@"Format string for delegate search results" value:@"%@ (%@)" table:@"MobileCalSettings"];
          displayName = [v7 displayName];
          value = [v7 value];
          address = [value address];
          stringRemovingMailto = [address stringRemovingMailto];
          v14 = [NSString localizedStringWithFormat:v9, displayName, stringRemovingMailto];

          v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];
          [v21 addObject:v15];

          v6 = v6 + 1;
        }

        while (v5 != v6);
        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }

    v16 = *&self->PSListController_opaque[v18];
    *&self->PSListController_opaque[v18] = v21;

    v3 = *&self->PSListController_opaque[v18];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  searchResults = self->_searchResults;
  v8 = [pathCopy row];

  v13 = [(NSMutableArray *)searchResults objectAtIndexedSubscript:v8];
  v9 = [(CSAccountSearchController *)self _grantedDelegateFromAutocompleteResult:v13];
  v10 = [[CSGrantedDelegateDetailsController alloc] initInAddDelegateMode:1];
  v11 = objc_opt_new();
  [v11 setProperty:self forKey:@"CSDelegateClassInstanceKey"];
  [v11 setProperty:self->_source forKey:@"CSSourceKey"];
  [v11 setProperty:v9 forKey:@"CSGrantedDelegateKey"];
  [v10 setSpecifier:v11];
  v12 = [[UINavigationController alloc] initWithRootViewController:v10];
  [(CSAccountSearchController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  resultsCopy = results;
  v6 = kCSLogHandle;
  if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    *buf = 134217984;
    v14 = [resultsCopy count];
    _os_log_impl(&def_F7BC, v7, OS_LOG_TYPE_DEBUG, "autocompleteFetch received %lu results", buf, 0xCu);
  }

  v8 = [NSPredicate predicateWithBlock:&stru_20CE8];
  v9 = [resultsCopy filteredArrayUsingPredicate:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_BD70;
  v11[3] = &unk_20C18;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error
{
  errorCopy = error;
  v5 = kCSLogHandle;
  if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&def_F7BC, v5, OS_LOG_TYPE_DEBUG, "autocompleteFetch failed with error: %@", &v6, 0xCu);
  }
}

- (void)autocompleteFetchDidFinish:(id)finish
{
  v3 = kCSLogHandle;
  if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&def_F7BC, v3, OS_LOG_TYPE_DEBUG, "autocompleteFetch finished", v4, 2u);
  }
}

- (void)autocompleteFetchDidEndNetworkActivity:(id)activity
{
  v3 = kCSLogHandle;
  if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&def_F7BC, v3, OS_LOG_TYPE_DEBUG, "autocompleteFetch finished network activity", v4, 2u);
  }

  dispatch_async(&_dispatch_main_q, &stru_20D28);
}

- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity
{
  v3 = kCSLogHandle;
  if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&def_F7BC, v3, OS_LOG_TYPE_DEBUG, "autocompleteFetch began network activity", v4, 2u);
  }

  dispatch_async(&_dispatch_main_q, &stru_20D48);
}

- (id)_grantedDelegateFromAutocompleteResult:(id)result
{
  resultCopy = result;
  v4 = objc_opt_new();
  displayName = [resultCopy displayName];
  [v4 setDisplayName:displayName];

  userInfo = [resultCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:EKDirectoryRecordPrincipalPathKey];

  if (v7)
  {
    [v4 setUri:v7];
  }

  else
  {
    value = [resultCopy value];
    address = [value address];
    [v4 setUri:address];
  }

  [v4 setPermission:1];

  return v4;
}

@end