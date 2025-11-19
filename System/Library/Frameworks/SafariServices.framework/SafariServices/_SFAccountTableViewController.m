@interface _SFAccountTableViewController
- (BOOL)_hasMarkedText;
- (BOOL)_shouldShowDeleteContextMenuItemForSavedAccount:(id)a3;
- (NSString)searchQuery;
- (_SFAccountTableViewController)initWithSiteMetadataManager:(id)a3 configuration:(id)a4;
- (id)_allSharedCredentialGroupsMenuForSavedAccount:(id)a3;
- (id)_contextMenuForSavedAccountAtIndexPath:(id)a3;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_shareSavedAccount:(id)a3 authenticationContext:(id)a4 modalPresentationSourceView:(id)a5;
- (void)_shareSavedAccount:(id)a3 modalPresentationSourceView:(id)a4;
- (void)_updateIconForDomain:(id)a3 forCell:(id)a4;
- (void)dealloc;
- (void)iconDidUpdateForDomain:(id)a3 iconController:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setSearchQuery:(id)a3;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation _SFAccountTableViewController

- (_SFAccountTableViewController)initWithSiteMetadataManager:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _SFAccountTableViewController;
  v8 = [(_SFAccountTableViewController *)&v18 initWithStyle:+[_SFAccountManagerAppearanceValues preferencesTableViewStyle]];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a4);
    v10 = [MEMORY[0x1E696AB50] set];
    visibleDomains = v9->_visibleDomains;
    v9->_visibleDomains = v10;

    v12 = [objc_alloc(MEMORY[0x1E695A9A8]) initWithMetadataManager:v6 allowNetworkFetchingBlock:&__block_literal_global_0];
    iconController = v9->_iconController;
    v9->_iconController = v12;

    [(_ASPasswordManagerIconController *)v9->_iconController setDelegate:v9];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v9 selector:sel__applicationWillTerminate name:*MEMORY[0x1E69DDBD0] object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v9 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

    v16 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(_ASPasswordManagerIconController *)self->_iconController prepareForApplicationTermination];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBD0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE348] object:0];

  v4.receiver = self;
  v4.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v14 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];

  if ([(_SFAccountTableConfiguration *)self->_configuration shouldShowSearchBar])
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    searchController = self->_searchController;
    self->_searchController = v4;

    [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
    [(UISearchController *)self->_searchController setDelegate:self];
    v6 = self->_searchController;
    v7 = [(_SFAccountTableViewController *)self navigationItem];
    [v7 setSearchController:v6];

    v8 = [(_SFAccountTableViewController *)self navigationItem];
    [v8 setHidesSearchBarWhenScrolling:0];

    v9 = [(UISearchController *)self->_searchController searchBar];
    [v9 setDelegate:self];
    [v9 setAutocapitalizationType:0];
    [v9 setAutocorrectionType:1];
    [v9 setAccessibilityIdentifier:@"Passwords List Search Bar"];
  }

  v10 = [(_SFAccountTableViewController *)self navigationItem];
  [v10 setPreferredSearchBarPlacement:2];

  v11 = [(_SFAccountTableViewController *)self navigationItem];
  [v11 setStyle:0];

  v12 = [(_SFAccountTableConfiguration *)self->_configuration shouldConfigureMultipleSelectionDuringEditing];
  v13 = [(_SFAccountTableViewController *)self tableView];
  [v13 setAllowsMultipleSelectionDuringEditing:v12];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v4 viewDidAppear:a3];
  [(_ASPasswordManagerIconController *)self->_iconController performMaintenanceWork];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v4 viewDidDisappear:a3];
  [(_ASPasswordManagerIconController *)self->_iconController clearIconFetchingState];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v5 viewWillAppear:a3];
  if ([(UISearchController *)self->_searchController isActive])
  {
    if ([(_SFAccountTableViewController *)self _shouldShowToolbarWhenSearching])
    {
      v4 = [(_SFAccountTableViewController *)self navigationController];
      [v4 setToolbarHidden:0 animated:0];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _SFAccountTableViewController;
  [(_SFAccountTableViewController *)&v6 viewWillDisappear:?];
  v5 = [(_SFAccountTableViewController *)self navigationController];
  [v5 setToolbarHidden:1 animated:v3];

  [(_ASPasswordManagerIconController *)self->_iconController performMaintenanceWork];
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v4 = [a3 object];
  v5 = [(_SFAccountTableViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  if (v4 == v7)
  {
    v8 = [(_SFAccountTableViewController *)self navigationController];
    v10 = [v8 visibleViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v10 presentingViewController];
      [v9 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = _SFAccountTableViewController;
  [_SFAccountTableViewController setEditing:sel_setEditing_animated_ animated:?];
  if (![(_SFAccountTableConfiguration *)self->_configuration shouldConfigureMultipleSelectionDuringEditing])
  {
    v7 = [(UISearchController *)self->_searchController searchBar];
    [v7 _setEnabled:!v5 animated:v4];
  }
}

- (NSString)searchQuery
{
  v2 = [(UISearchController *)self->_searchController searchBar];
  v3 = [v2 text];

  return v3;
}

- (void)setSearchQuery:(id)a3
{
  searchController = self->_searchController;
  v4 = a3;
  v5 = [(UISearchController *)searchController searchBar];
  [v5 setText:v4];
}

- (BOOL)_hasMarkedText
{
  v2 = [(UISearchController *)self->_searchController searchBar];
  v3 = [v2 searchField];
  v4 = [v3 markedTextRange];
  v5 = v4 != 0;

  return v5;
}

- (void)_shareSavedAccount:(id)a3 modalPresentationSourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_SFAirDropAccountSharingAuthenticationContext alloc] initWithSavedAccount:v6];
  self->_isOneTimeSharingAccount = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80___SFAccountTableViewController__shareSavedAccount_modalPresentationSourceView___block_invoke;
  v12[3] = &unk_1E848F3E0;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  [_SFSettingsAuthentication authenticateForSettings:v10 allowAuthenticationReuse:0 completionHandler:v12];
}

- (void)_shareSavedAccount:(id)a3 authenticationContext:(id)a4 modalPresentationSourceView:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([a4 hasBeenAuthenticated])
  {
    v10 = [objc_alloc(MEMORY[0x1E69C8E20]) initWithSavedPassword:v8];
    v11 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v12 = [v10 urlRepresentationForAirDrop];
    v21[0] = v12;
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
    v18 = v8;
    v19 = self;
    [v14 setCompletionWithItemsHandler:v17];
    v16 = [v14 popoverPresentationController];
    [v16 setPermittedArrowDirections:1];
    [v9 bounds];
    [v16 setSourceRect:?];
    [v16 setSourceView:v9];
    [(_SFAccountTableViewController *)self presentViewController:v14 animated:1 completion:0];
  }
}

- (id)_allSharedCredentialGroupsMenuForSavedAccount:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  v5 = [v4 isSavedInPersonalKeychain];
  v28 = _WBSLocalizedString();
  v6 = MEMORY[0x1E69DC628];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person"];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __79___SFAccountTableViewController__allSharedCredentialGroupsMenuForSavedAccount___block_invoke;
  v42[3] = &unk_1E848F430;
  objc_copyWeak(&v44, &location);
  v45 = v5;
  v8 = v4;
  v43 = v8;
  v29 = [v6 actionWithTitle:v28 image:v7 identifier:0 handler:v42];

  [v29 setState:v5];
  if ((v5 & 1) != 0 || ([MEMORY[0x1E69C8A38] sharedStore], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "_canMoveSavedAccount:toGroupWithID:", v8, *MEMORY[0x1E69C8C68]), v9, (v10 & 1) == 0))
  {
    [v29 setAttributes:1];
  }

  [v32 addObject:v29];
  v11 = [MEMORY[0x1E69C88E8] sharedProvider];
  v12 = [v11 cachedGroups];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v12;
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
        v16 = [v8 sharedGroupID];
        v17 = [v15 groupID];
        v18 = [v16 isEqualToString:v17];

        v19 = MEMORY[0x1E69DC628];
        v20 = [v15 displayName];
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
        v23 = [v19 actionWithTitle:v20 image:v21 identifier:0 handler:v33];

        [v23 setState:v18];
        if ((v18 & 1) != 0 || ([MEMORY[0x1E69C8A38] sharedStore], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "groupID"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "_canMoveSavedAccount:toGroupWithID:", v22, v25), v25, v24, (v26 & 1) == 0))
        {
          [v23 setAttributes:1];
        }

        [v32 addObject:v23];

        objc_destroyWeak(&v36);
      }

      v13 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v13);
  }

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);

  return v32;
}

- (id)_contextMenuForSavedAccountAtIndexPath:(id)a3
{
  v79[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFAccountTableViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v55 = [v6 savedAccount];
    v7 = [MEMORY[0x1E695DF70] array];
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
    [v7 addObject:v12];

    if ([v55 credentialTypes])
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
      [v7 addObject:v16];
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
      [v7 addObject:v20];
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
      [v7 addObject:v24];
    }

    v25 = [MEMORY[0x1E695DF70] array];
    if ([MEMORY[0x1E69C8880] isOngoingCredentialSharingEnabled] && -[_SFAccountTableConfiguration supportsOngoingCredentialSharing](self->_configuration, "supportsOngoingCredentialSharing") && objc_msgSend(v55, "canUserEditSavedAccount") && objc_msgSend(v55, "isCurrentUserOriginalContributor"))
    {
      v54 = [MEMORY[0x1E695DF70] array];
      v26 = MEMORY[0x1E69DC928];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_5;
      v66[3] = &unk_1E848F4A8;
      objc_copyWeak(&v68, &location);
      v27 = v55;
      v67 = v27;
      v28 = [v26 elementWithUncachedProvider:v66];
      [v54 addObject:v28];

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
      [v54 addObject:v31];

      v32 = MEMORY[0x1E69DCC60];
      v53 = _WBSLocalizedString();
      v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2"];
      v34 = [v32 menuWithTitle:v53 image:v33 identifier:0 options:0 children:v54];
      [v25 addObject:v34];

      objc_destroyWeak(&v65);
      objc_destroyWeak(&v68);
    }

    if (-[_SFAccountTableConfiguration supportsShare](self->_configuration, "supportsShare", v49) && [v55 isOneTimeSharable])
    {
      v35 = MEMORY[0x1E69DC628];
      v36 = _WBSLocalizedString();
      v37 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_7;
      v59[3] = &unk_1E848F4F8;
      objc_copyWeak(&v62, &location);
      v60 = v55;
      v61 = v11;
      v38 = [v35 actionWithTitle:v36 image:v37 identifier:0 handler:v59];
      [v25 addObject:v38];

      objc_destroyWeak(&v62);
    }

    if ([v25 count])
    {
      v39 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:v25];
      [v7 addObject:v39];
    }

    if ([(_SFAccountTableViewController *)self _shouldShowDeleteContextMenuItemForSavedAccount:v55])
    {
      v40 = MEMORY[0x1E69DC628];
      v41 = _WBSLocalizedString();
      v42 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_8;
      v56[3] = &unk_1E848F4D0;
      objc_copyWeak(&v58, &location);
      v57 = v4;
      v43 = [v40 actionWithTitle:v41 image:v42 identifier:0 handler:v56];

      [v43 setAttributes:2];
      v44 = MEMORY[0x1E69DCC60];
      v78 = v43;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
      v46 = [v44 menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:v45];
      [v7 addObject:v46];

      objc_destroyWeak(&v58);
    }

    v47 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4FE9E38 children:v7];

    objc_destroyWeak(&location);
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (BOOL)_shouldShowDeleteContextMenuItemForSavedAccount:(id)a3
{
  v4 = a3;
  if (!-[_SFAccountTableConfiguration supportsDelete](self->_configuration, "supportsDelete") || -[_SFAccountTableConfiguration isForFillingIndividualAccountFields](self->_configuration, "isForFillingIndividualAccountFields") || [v4 isRecentlyDeleted] && !objc_msgSend(v4, "isCurrentUserOriginalContributor"))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 canUserEditSavedAccount];
  }

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a4;
  v6 = [v11 conformsToProtocol:&unk_1F50920F8];
  v7 = v11;
  if (v6)
  {
    v8 = v11;
    v9 = [v8 savedAccount];
    v10 = [v9 highLevelDomain];

    if (v10)
    {
      [(_SFAccountTableViewController *)self _updateIconForDomain:v10 forCell:v8];
      [(NSCountedSet *)self->_visibleDomains addObject:v10];
    }

    v7 = v11;
  }
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v10 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v10;
  if (isKindOfClass)
  {
    v8 = [v10 savedAccount];
    v9 = [v8 highLevelDomain];

    if (v9)
    {
      [(NSCountedSet *)self->_visibleDomains removeObject:v9];
    }

    v7 = v10;
  }
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 cellForRowAtIndexPath:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 isEditing];

    if ((v10 & 1) == 0)
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x1E69DC8D8];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __91___SFAccountTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
      v14[3] = &unk_1E848F520;
      objc_copyWeak(&v16, &location);
      v15 = v8;
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

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = [a4 identifier];
  [(_SFAccountTableViewController *)self tableView:v7 didSelectRowAtIndexPath:v8];
}

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  if (![(_SFAccountTableViewController *)self _hasMarkedText:a3])
  {
    v5 = [(UISearchController *)self->_searchController searchBar];
    [v5 _setEnabled:0 animated:1];
  }
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  v4 = [(UISearchController *)self->_searchController searchBar:a3];
  [v4 _setEnabled:1 animated:0];
}

- (void)iconDidUpdateForDomain:(id)a3 iconController:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v11 = 1752392040;
    v12 = 2117;
    v13 = v5;
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Icon did update; domain=%{sensitive, mask.hash}@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71___SFAccountTableViewController_iconDidUpdateForDomain_iconController___block_invoke;
  v8[3] = &unk_1E848F548;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_updateIconForDomain:(id)a3 forCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_ASPasswordManagerIconController *)self->_iconController backgroundColorForDomain:v6];
  [v7 showPlaceholderImageForDomain:v6 backgroundColor:v8];

  iconController = self->_iconController;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62___SFAccountTableViewController__updateIconForDomain_forCell___block_invoke;
  v12[3] = &unk_1E848F598;
  v13 = v7;
  v14 = v6;
  v15 = self;
  v10 = v6;
  v11 = v7;
  [(_ASPasswordManagerIconController *)iconController iconForDomain:v10 responseHandler:v12];
}

- (void)willPresentSearchController:(id)a3
{
  if ([(_SFAccountTableViewController *)self _shouldShowToolbarWhenSearching])
  {
    v4 = [(_SFAccountTableViewController *)self navigationController];
    [v4 setToolbarHidden:0 animated:1];
  }
}

- (void)willDismissSearchController:(id)a3
{
  v3 = [(_SFAccountTableViewController *)self navigationController];
  [v3 setToolbarHidden:1 animated:1];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v11 = [v4 text];

  v5 = v11;
  searchPattern = self->_searchPattern;
  if (!searchPattern)
  {
    v7 = [(NSString *)v11 length];
    v5 = v11;
    if (!v7)
    {
      goto LABEL_7;
    }

    searchPattern = self->_searchPattern;
  }

  if (v5 != searchPattern)
  {
    v8 = [(NSString *)v5 isEqualToString:?];
    v5 = v11;
    if (!v8)
    {
      v9 = [(NSString *)v11 copy];
      v10 = self->_searchPattern;
      self->_searchPattern = v9;

      [(_SFAccountTableViewController *)self searchPatternDidUpdate];
      v5 = v11;
    }
  }

LABEL_7:
}

@end