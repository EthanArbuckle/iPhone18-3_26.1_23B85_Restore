@interface _SFAccountTableViewController
- (BOOL)_hasMarkedText;
- (BOOL)_shouldShowDeleteContextMenuItemForSavedAccount:(id)account;
- (NSString)searchQuery;
- (_SFAccountTableViewController)initWithSiteMetadataManager:(id)manager configuration:(id)configuration;
- (id)_allSharedCredentialGroupsMenuForSavedAccount:(id)account;
- (id)_contextMenuForSavedAccountAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_shareSavedAccount:(id)account authenticationContext:(id)context modalPresentationSourceView:(id)view;
- (void)_shareSavedAccount:(id)account modalPresentationSourceView:(id)view;
- (void)_updateIconForDomain:(id)domain forCell:(id)cell;
- (void)dealloc;
- (void)iconDidUpdateForDomain:(id)domain iconController:(id)controller;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setSearchQuery:(id)query;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation _SFAccountTableViewController

- (_SFAccountTableViewController)initWithSiteMetadataManager:(id)manager configuration:(id)configuration
{
  managerCopy = manager;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = _SFAccountTableViewController;
  v8 = [(_SFAccountTableViewController *)&v18 initWithStyle:+[_SFAccountManagerAppearanceValues preferencesTableViewStyle]];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, configuration);
    v10 = [MEMORY[0x1E696AB50] set];
    visibleDomains = v9->_visibleDomains;
    v9->_visibleDomains = v10;

    v12 = [objc_alloc(MEMORY[0x1E695A9A8]) initWithMetadataManager:managerCopy allowNetworkFetchingBlock:&__block_literal_global_0];
    iconController = v9->_iconController;
    v9->_iconController = v12;

    [(_ASPasswordManagerIconController *)v9->_iconController setDelegate:v9];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__applicationWillTerminate name:*MEMORY[0x1E69DDBD0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

    v16 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(_ASPasswordManagerIconController *)self->_iconController prepareForApplicationTermination];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBD0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE348] object:0];

  v4.receiver = self;
  v4.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v14 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];

  if ([(_SFAccountTableConfiguration *)self->_configuration shouldShowSearchBar])
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    searchController = self->_searchController;
    self->_searchController = v4;

    [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
    [(UISearchController *)self->_searchController setDelegate:self];
    v6 = self->_searchController;
    navigationItem = [(_SFAccountTableViewController *)self navigationItem];
    [navigationItem setSearchController:v6];

    navigationItem2 = [(_SFAccountTableViewController *)self navigationItem];
    [navigationItem2 setHidesSearchBarWhenScrolling:0];

    searchBar = [(UISearchController *)self->_searchController searchBar];
    [searchBar setDelegate:self];
    [searchBar setAutocapitalizationType:0];
    [searchBar setAutocorrectionType:1];
    [searchBar setAccessibilityIdentifier:@"Passwords List Search Bar"];
  }

  navigationItem3 = [(_SFAccountTableViewController *)self navigationItem];
  [navigationItem3 setPreferredSearchBarPlacement:2];

  navigationItem4 = [(_SFAccountTableViewController *)self navigationItem];
  [navigationItem4 setStyle:0];

  shouldConfigureMultipleSelectionDuringEditing = [(_SFAccountTableConfiguration *)self->_configuration shouldConfigureMultipleSelectionDuringEditing];
  tableView = [(_SFAccountTableViewController *)self tableView];
  [tableView setAllowsMultipleSelectionDuringEditing:shouldConfigureMultipleSelectionDuringEditing];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v4 viewDidAppear:appear];
  [(_ASPasswordManagerIconController *)self->_iconController performMaintenanceWork];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v4 viewDidDisappear:disappear];
  [(_ASPasswordManagerIconController *)self->_iconController clearIconFetchingState];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v5 viewWillAppear:appear];
  if ([(UISearchController *)self->_searchController isActive])
  {
    if ([(_SFAccountTableViewController *)self _shouldShowToolbarWhenSearching])
    {
      navigationController = [(_SFAccountTableViewController *)self navigationController];
      [navigationController setToolbarHidden:0 animated:0];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v6 viewWillDisappear:?];
  navigationController = [(_SFAccountTableViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:disappearCopy];

  [(_ASPasswordManagerIconController *)self->_iconController performMaintenanceWork];
}

- (void)_sceneDidEnterBackground:(id)background
{
  object = [background object];
  viewIfLoaded = [(_SFAccountTableViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    navigationController = [(_SFAccountTableViewController *)self navigationController];
    visibleViewController = [navigationController visibleViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      presentingViewController = [visibleViewController presentingViewController];
      [presentingViewController dismissViewControllerAnimated:0 completion:0];
    }
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = _SFAccountTableViewController;
  [_SFAccountTableViewController setEditing:sel_setEditing_animated_ animated:?];
  if (![(_SFAccountTableConfiguration *)self->_configuration shouldConfigureMultipleSelectionDuringEditing])
  {
    searchBar = [(UISearchController *)self->_searchController searchBar];
    [searchBar _setEnabled:!editingCopy animated:animatedCopy];
  }
}

- (NSString)searchQuery
{
  searchBar = [(UISearchController *)self->_searchController searchBar];
  text = [searchBar text];

  return text;
}

- (void)setSearchQuery:(id)query
{
  searchController = self->_searchController;
  queryCopy = query;
  searchBar = [(UISearchController *)searchController searchBar];
  [searchBar setText:queryCopy];
}

- (BOOL)_hasMarkedText
{
  searchBar = [(UISearchController *)self->_searchController searchBar];
  searchField = [searchBar searchField];
  markedTextRange = [searchField markedTextRange];
  v5 = markedTextRange != 0;

  return v5;
}

- (void)_shareSavedAccount:(id)account modalPresentationSourceView:(id)view
{
  accountCopy = account;
  viewCopy = view;
  v8 = [[_SFAirDropAccountSharingAuthenticationContext alloc] initWithSavedAccount:accountCopy];
  self->_isOneTimeSharingAccount = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80___SFAccountTableViewController__shareSavedAccount_modalPresentationSourceView___block_invoke;
  v12[3] = &unk_1E848F3E0;
  v12[4] = self;
  v13 = accountCopy;
  v14 = v8;
  v15 = viewCopy;
  v9 = viewCopy;
  v10 = v8;
  v11 = accountCopy;
  [_SFSettingsAuthentication authenticateForSettings:v10 allowAuthenticationReuse:0 completionHandler:v12];
}

- (void)_shareSavedAccount:(id)account authenticationContext:(id)context modalPresentationSourceView:(id)view
{
  v21[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  viewCopy = view;
  if ([context hasBeenAuthenticated])
  {
    v10 = [objc_alloc(MEMORY[0x1E69C8E20]) initWithSavedPassword:accountCopy];
    v11 = objc_alloc(MEMORY[0x1E69CD9F8]);
    urlRepresentationForAirDrop = [v10 urlRepresentationForAirDrop];
    v21[0] = urlRepresentationForAirDrop;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v14 = [v11 initWithActivityItems:v13 applicationActivities:0];

    v20 = *MEMORY[0x1E69CDA78];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v14 setIncludedActivityTypes:v15];

    [v14 setExcludedActivityCategories:3];
    [v14 setModalPresentationStyle:7];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102___SFAccountTableViewController__shareSavedAccount_authenticationContext_modalPresentationSourceView___block_invoke;
    v17[3] = &unk_1E848F408;
    v18 = accountCopy;
    selfCopy = self;
    [v14 setCompletionWithItemsHandler:v17];
    popoverPresentationController = [v14 popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:1];
    [viewCopy bounds];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setSourceView:viewCopy];
    [(_SFAccountTableViewController *)self presentViewController:v14 animated:1 completion:0];
  }
}

- (id)_allSharedCredentialGroupsMenuForSavedAccount:(id)account
{
  v48 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  isSavedInPersonalKeychain = [accountCopy isSavedInPersonalKeychain];
  v28 = _WBSLocalizedString();
  v6 = MEMORY[0x1E69DC628];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person"];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __79___SFAccountTableViewController__allSharedCredentialGroupsMenuForSavedAccount___block_invoke;
  v42[3] = &unk_1E848F430;
  objc_copyWeak(&v44, &location);
  v45 = isSavedInPersonalKeychain;
  v8 = accountCopy;
  v43 = v8;
  v29 = [v6 actionWithTitle:v28 image:v7 identifier:0 handler:v42];

  [v29 setState:isSavedInPersonalKeychain];
  if ((isSavedInPersonalKeychain & 1) != 0 || ([MEMORY[0x1E69C8A38] sharedStore], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "_canMoveSavedAccount:toGroupWithID:", v8, *MEMORY[0x1E69C8C68]), v9, (v10 & 1) == 0))
  {
    [v29 setAttributes:1];
  }

  [array addObject:v29];
  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  cachedGroups = [mEMORY[0x1E69C88E8] cachedGroups];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = cachedGroups;
  v13 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v13)
  {
    v31 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        sharedGroupID = [v8 sharedGroupID];
        groupID = [v15 groupID];
        v18 = [sharedGroupID isEqualToString:groupID];

        v19 = MEMORY[0x1E69DC628];
        displayName = [v15 displayName];
        v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2"];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __79___SFAccountTableViewController__allSharedCredentialGroupsMenuForSavedAccount___block_invoke_2;
        v33[3] = &unk_1E848F458;
        objc_copyWeak(&v36, &location);
        v37 = v18;
        v22 = v8;
        v34 = v22;
        v35 = v15;
        v23 = [v19 actionWithTitle:displayName image:v21 identifier:0 handler:v33];

        [v23 setState:v18];
        if ((v18 & 1) != 0 || ([MEMORY[0x1E69C8A38] sharedStore], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "groupID"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "_canMoveSavedAccount:toGroupWithID:", v22, v25), v25, v24, (v26 & 1) == 0))
        {
          [v23 setAttributes:1];
        }

        [array addObject:v23];

        objc_destroyWeak(&v36);
      }

      v13 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v13);
  }

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);

  return array;
}

- (id)_contextMenuForSavedAccountAtIndexPath:(id)path
{
  v79[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  tableView = [(_SFAccountTableViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    savedAccount = [v6 savedAccount];
    array = [MEMORY[0x1E695DF70] array];
    v8 = MEMORY[0x1E69DC628];
    v9 = _WBSLocalizedString();
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke;
    v75[3] = &unk_1E848F480;
    v11 = v6;
    v76 = v11;
    v12 = [v8 actionWithTitle:v9 image:v10 identifier:0 handler:v75];
    [array addObject:v12];

    if ([savedAccount credentialTypes])
    {
      v13 = MEMORY[0x1E69DC628];
      v14 = _WBSLocalizedString();
      v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_2;
      v73[3] = &unk_1E848F480;
      v74 = v11;
      v16 = [v13 actionWithTitle:v14 image:v15 identifier:0 handler:v73];
      [array addObject:v16];
    }

    if ([v11 safari_hasOneTimeCodeGenerator])
    {
      v17 = MEMORY[0x1E69DC628];
      v18 = _WBSLocalizedString();
      v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_3;
      v71[3] = &unk_1E848F480;
      v72 = v11;
      v20 = [v17 actionWithTitle:v18 image:v19 identifier:0 handler:v71];
      [array addObject:v20];
    }

    if ([v11 safari_hasWebsite])
    {
      v21 = MEMORY[0x1E69DC628];
      v22 = _WBSLocalizedString();
      v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_4;
      v69[3] = &unk_1E848F480;
      v70 = v11;
      v24 = [v21 actionWithTitle:v22 image:v23 identifier:0 handler:v69];
      [array addObject:v24];
    }

    array2 = [MEMORY[0x1E695DF70] array];
    if ([MEMORY[0x1E69C8880] isOngoingCredentialSharingEnabled] && -[_SFAccountTableConfiguration supportsOngoingCredentialSharing](self->_configuration, "supportsOngoingCredentialSharing") && objc_msgSend(savedAccount, "canUserEditSavedAccount") && objc_msgSend(savedAccount, "isCurrentUserOriginalContributor"))
    {
      array3 = [MEMORY[0x1E695DF70] array];
      v26 = MEMORY[0x1E69DC928];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_5;
      v66[3] = &unk_1E848F4A8;
      objc_copyWeak(&v68, &location);
      v27 = savedAccount;
      v67 = v27;
      v28 = [v26 elementWithUncachedProvider:v66];
      [array3 addObject:v28];

      v49 = MEMORY[0x1E69DCC60];
      v29 = MEMORY[0x1E69DC628];
      v52 = _WBSLocalizedString();
      v51 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_6;
      v63[3] = &unk_1E848F4D0;
      objc_copyWeak(&v65, &location);
      v64 = v27;
      v50 = [v29 actionWithTitle:v52 image:v51 identifier:0 handler:v63];
      v79[0] = v50;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:1];
      v31 = [v49 menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:v30];
      [array3 addObject:v31];

      v32 = MEMORY[0x1E69DCC60];
      v53 = _WBSLocalizedString();
      v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2"];
      v34 = [v32 menuWithTitle:v53 image:v33 identifier:0 options:0 children:array3];
      [array2 addObject:v34];

      objc_destroyWeak(&v65);
      objc_destroyWeak(&v68);
    }

    if (-[_SFAccountTableConfiguration supportsShare](self->_configuration, "supportsShare", v49) && [savedAccount isOneTimeSharable])
    {
      v35 = MEMORY[0x1E69DC628];
      v36 = _WBSLocalizedString();
      v37 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_7;
      v59[3] = &unk_1E848F4F8;
      objc_copyWeak(&v62, &location);
      v60 = savedAccount;
      v61 = v11;
      v38 = [v35 actionWithTitle:v36 image:v37 identifier:0 handler:v59];
      [array2 addObject:v38];

      objc_destroyWeak(&v62);
    }

    if ([array2 count])
    {
      v39 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:array2];
      [array addObject:v39];
    }

    if ([(_SFAccountTableViewController *)self _shouldShowDeleteContextMenuItemForSavedAccount:savedAccount])
    {
      v40 = MEMORY[0x1E69DC628];
      v41 = _WBSLocalizedString();
      v42 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_8;
      v56[3] = &unk_1E848F4D0;
      objc_copyWeak(&v58, &location);
      v57 = pathCopy;
      v43 = [v40 actionWithTitle:v41 image:v42 identifier:0 handler:v56];

      [v43 setAttributes:2];
      v44 = MEMORY[0x1E69DCC60];
      v78 = v43;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
      v46 = [v44 menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:v45];
      [array addObject:v46];

      objc_destroyWeak(&v58);
    }

    v47 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4FE9E38 children:array];

    objc_destroyWeak(&location);
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (BOOL)_shouldShowDeleteContextMenuItemForSavedAccount:(id)account
{
  accountCopy = account;
  if (!-[_SFAccountTableConfiguration supportsDelete](self->_configuration, "supportsDelete") || -[_SFAccountTableConfiguration isForFillingIndividualAccountFields](self->_configuration, "isForFillingIndividualAccountFields") || [accountCopy isRecentlyDeleted] && !objc_msgSend(accountCopy, "isCurrentUserOriginalContributor"))
  {
    canUserEditSavedAccount = 0;
  }

  else
  {
    canUserEditSavedAccount = [accountCopy canUserEditSavedAccount];
  }

  return canUserEditSavedAccount;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = [cellCopy conformsToProtocol:&unk_1F50920F8];
  v7 = cellCopy;
  if (v6)
  {
    v8 = cellCopy;
    savedAccount = [v8 savedAccount];
    highLevelDomain = [savedAccount highLevelDomain];

    if (highLevelDomain)
    {
      [(_SFAccountTableViewController *)self _updateIconForDomain:highLevelDomain forCell:v8];
      [(NSCountedSet *)self->_visibleDomains addObject:highLevelDomain];
    }

    v7 = cellCopy;
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = cellCopy;
  if (isKindOfClass)
  {
    savedAccount = [cellCopy savedAccount];
    highLevelDomain = [savedAccount highLevelDomain];

    if (highLevelDomain)
    {
      [(NSCountedSet *)self->_visibleDomains removeObject:highLevelDomain];
    }

    v7 = cellCopy;
  }
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEditing = [viewCopy isEditing];

    if ((isEditing & 1) == 0)
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x1E69DC8D8];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __91___SFAccountTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
      v14[3] = &unk_1E848F520;
      objc_copyWeak(&v16, &location);
      v15 = pathCopy;
      v12 = [v11 configurationWithIdentifier:v15 previewProvider:0 actionProvider:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  identifier = [configuration identifier];
  [(_SFAccountTableViewController *)self tableView:viewCopy didSelectRowAtIndexPath:identifier];
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  if (![(_SFAccountTableViewController *)self _hasMarkedText:view])
  {
    searchBar = [(UISearchController *)self->_searchController searchBar];
    [searchBar _setEnabled:0 animated:1];
  }
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  v4 = [(UISearchController *)self->_searchController searchBar:view];
  [v4 _setEnabled:1 animated:0];
}

- (void)iconDidUpdateForDomain:(id)domain iconController:(id)controller
{
  v14 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v6 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v11 = 1752392040;
    v12 = 2117;
    v13 = domainCopy;
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Icon did update; domain=%{sensitive, mask.hash}@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71___SFAccountTableViewController_iconDidUpdateForDomain_iconController___block_invoke;
  v8[3] = &unk_1E848F548;
  v8[4] = self;
  v9 = domainCopy;
  v7 = domainCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_updateIconForDomain:(id)domain forCell:(id)cell
{
  domainCopy = domain;
  cellCopy = cell;
  v8 = [(_ASPasswordManagerIconController *)self->_iconController backgroundColorForDomain:domainCopy];
  [cellCopy showPlaceholderImageForDomain:domainCopy backgroundColor:v8];

  iconController = self->_iconController;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62___SFAccountTableViewController__updateIconForDomain_forCell___block_invoke;
  v12[3] = &unk_1E848F598;
  v13 = cellCopy;
  v14 = domainCopy;
  selfCopy = self;
  v10 = domainCopy;
  v11 = cellCopy;
  [(_ASPasswordManagerIconController *)iconController iconForDomain:v10 responseHandler:v12];
}

- (void)willPresentSearchController:(id)controller
{
  if ([(_SFAccountTableViewController *)self _shouldShowToolbarWhenSearching])
  {
    navigationController = [(_SFAccountTableViewController *)self navigationController];
    [navigationController setToolbarHidden:0 animated:1];
  }
}

- (void)willDismissSearchController:(id)controller
{
  navigationController = [(_SFAccountTableViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:1];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  v5 = text;
  searchPattern = self->_searchPattern;
  if (!searchPattern)
  {
    v7 = [(NSString *)text length];
    v5 = text;
    if (!v7)
    {
      goto LABEL_7;
    }

    searchPattern = self->_searchPattern;
  }

  if (v5 != searchPattern)
  {
    v8 = [(NSString *)v5 isEqualToString:?];
    v5 = text;
    if (!v8)
    {
      v9 = [(NSString *)text copy];
      v10 = self->_searchPattern;
      self->_searchPattern = v9;

      [(_SFAccountTableViewController *)self searchPatternDidUpdate];
      v5 = text;
    }
  }

LABEL_7:
}

@end