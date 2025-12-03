@interface NBSelectAudiobookViewController
- (NBSelectAudiobookDelegate)delegate;
- (id)_myLibraryStoreIDs;
- (id)_specifierForFamilyMember:(id)member;
- (id)_specifierForMediaItem:(id)item;
- (id)specifiers;
- (void)_addAudiobookStoreFooterToSpecifier:(id)specifier;
- (void)_reloadData;
- (void)_showAudiobookStore:(id)store;
- (void)dealloc;
- (void)familyCircleDataSource:(id)source didFetchFamilyCircle:(id)circle;
- (void)familyCircleDataSourceProfileImagesDidChange:(id)change;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)setDelegate:(id)delegate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation NBSelectAudiobookViewController

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = NBSelectAudiobookViewController;
  [(NBSelectAudiobookViewController *)&v30 viewDidLoad];
  v3 = objc_alloc_init(NBSearchResultsViewController);
  [(NBSelectAudiobookViewController *)self setSearchResultsController:v3];

  searchResultsController = [(NBSelectAudiobookViewController *)self searchResultsController];
  [searchResultsController setIncludeFamily:1];

  delegate = [(NBSelectAudiobookViewController *)self delegate];
  searchResultsController2 = [(NBSelectAudiobookViewController *)self searchResultsController];
  [searchResultsController2 setDelegate:delegate];

  v7 = [UISearchController alloc];
  searchResultsController3 = [(NBSelectAudiobookViewController *)self searchResultsController];
  v9 = [v7 initWithSearchResultsController:searchResultsController3];
  [(NBSelectAudiobookViewController *)self setSearchController:v9];

  v10 = NBBundle();
  v11 = [v10 localizedStringForKey:@"Search Audiobooks" value:&stru_20DE8 table:0];
  searchController = [(NBSelectAudiobookViewController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setPlaceholder:v11];

  searchController2 = [(NBSelectAudiobookViewController *)self searchController];
  searchBar2 = [searchController2 searchBar];
  [searchBar2 setDelegate:self];

  searchController3 = [(NBSelectAudiobookViewController *)self searchController];
  [searchController3 setSearchResultsUpdater:self];

  v17 = NBBundle();
  v18 = [v17 localizedStringForKey:@"Select Audiobook" value:&stru_20DE8 table:0];
  navigationItem = [(NBSelectAudiobookViewController *)self navigationItem];
  [navigationItem setTitle:v18];

  v20 = [UIBarButtonItem alloc];
  v21 = NBBundle();
  v22 = [v21 localizedStringForKey:@"Cancel" value:&stru_20DE8 table:0];
  v23 = [v20 initWithTitle:v22 style:0 target:self action:"_dismissSearchViewController"];
  navigationItem2 = [(NBSelectAudiobookViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v23];

  searchController4 = [(NBSelectAudiobookViewController *)self searchController];
  navigationItem3 = [(NBSelectAudiobookViewController *)self navigationItem];
  [navigationItem3 setSearchController:searchController4];

  navigationItem4 = [(NBSelectAudiobookViewController *)self navigationItem];
  [navigationItem4 setHidesSearchBarWhenScrolling:0];

  v28 = +[NBFamilyCircleDataSource sharedInstance];
  [v28 addObserver:self];

  v29 = objc_opt_new();
  [(NBSelectAudiobookViewController *)self setMyLibraryAudiobooks:v29];

  [(NBSelectAudiobookViewController *)self setMyFamilyMembers:&__NSArray0__struct];
  [(NBSelectAudiobookViewController *)self _reloadData];
}

- (void)dealloc
{
  v3 = +[NBFamilyCircleDataSource sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NBSelectAudiobookViewController;
  [(NBSelectAudiobookViewController *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  [(NBSearchResultsViewController *)self->_searchResultsController setDelegate:delegateCopy];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = NBBundle();
    v7 = [v6 localizedStringForKey:@"My Library" value:&stru_20DE8 table:0];
    v8 = [PSSpecifier groupSpecifierWithID:@"NBMyLibaryGroupSpecifierID" name:v7];

    v9 = +[NSMutableArray array];
    myFamilyMembers = [(NBSelectAudiobookViewController *)self myFamilyMembers];
    v11 = [myFamilyMembers count];

    v12 = NBDefaultLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        myFamilyMembers2 = [(NBSelectAudiobookViewController *)self myFamilyMembers];
        v15 = [myFamilyMembers2 valueForKey:@"iTunesDSID"];
        *buf = 138412546;
        v47 = v15;
        v48 = 1024;
        v49 = !+[NBBridgeUtilities isExplicitMaterialAllowed];
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Creating specifiers for family members (%@). isExplicitRestricted:(%i)", buf, 0x12u);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      myFamilyMembers3 = [(NBSelectAudiobookViewController *)self myFamilyMembers];
      v17 = [myFamilyMembers3 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v41;
        do
        {
          v20 = 0;
          do
          {
            if (*v41 != v19)
            {
              objc_enumerationMutation(myFamilyMembers3);
            }

            v21 = [(NBSelectAudiobookViewController *)self _specifierForFamilyMember:*(*(&v40 + 1) + 8 * v20)];
            if (v21)
            {
              [v9 addObject:v21];
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [myFamilyMembers3 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v18);
      }

      if ([v9 count])
      {
        v22 = NBBundle();
        v23 = [v22 localizedStringForKey:@"My Family" value:&stru_20DE8 table:0];
        v24 = [PSSpecifier groupSpecifierWithID:@"NBMyFamilyGroupSpecifierID" name:v23];

        [v5 addObject:v24];
        [v5 addObjectsFromArray:v9];
      }

      [v5 addObject:v8];
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "No family members to display", buf, 2u);
      }
    }

    myLibraryAudiobooks = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
    v26 = [myLibraryAudiobooks count];

    if (v26)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      myLibraryAudiobooks2 = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
      v28 = [myLibraryAudiobooks2 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v37;
        do
        {
          v31 = 0;
          do
          {
            if (*v37 != v30)
            {
              objc_enumerationMutation(myLibraryAudiobooks2);
            }

            v32 = [(NBSelectAudiobookViewController *)self _specifierForMediaItem:*(*(&v36 + 1) + 8 * v31)];
            [v5 addObject:v32];

            v31 = v31 + 1;
          }

          while (v29 != v31);
          v29 = [myLibraryAudiobooks2 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v29);
      }
    }

    else
    {
      [(NBSelectAudiobookViewController *)self _addAudiobookStoreFooterToSpecifier:v8];
    }

    v33 = [v5 copy];
    v34 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v33;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_addAudiobookStoreFooterToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = NBBundle();
  v13 = [v5 localizedStringForKey:@"No audiobooks in your library. Go to the %@ to find audiobooks read by actors value:authors table:{and other memorable voices.", &stru_20DE8, 0}];

  v6 = NBBundle();
  v7 = [v6 localizedStringForKey:@"Library_Group_Footer_Audiobook_Store" value:@"Audiobook Store" table:0];

  v8 = [NSString stringWithFormat:v13, v7];
  [specifierCopy setProperty:v8 forKey:PSFooterTextGroupKey];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [specifierCopy setProperty:v10 forKey:PSFooterCellClassGroupKey];

  v15.location = [v8 rangeOfString:v7];
  v11 = NSStringFromRange(v15);
  [specifierCopy setProperty:v11 forKey:PSFooterHyperlinkViewLinkRangeKey];

  [specifierCopy setProperty:@"_showAudiobookStore:" forKey:PSFooterHyperlinkViewActionKey];
  v12 = [NSValue valueWithNonretainedObject:self];
  [specifierCopy setProperty:v12 forKey:PSFooterHyperlinkViewTargetKey];
}

- (void)_showAudiobookStore:(id)store
{
  v4 = [NSURL URLWithString:@"ibooks://show-audiobook-store"];
  v3 = +[UIApplication sharedApplication];
  [v3 openURL:v4 withCompletionHandler:&stru_206B0];
}

- (id)_myLibraryStoreIDs
{
  v3 = objc_alloc_init(NSMutableSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  myLibraryAudiobooks = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
  v5 = [myLibraryAudiobooks countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(myLibraryAudiobooks);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bk_storeID = [v10 bk_storeID];
        stringValue = [bk_storeID stringValue];

        if ([stringValue length])
        {
          [v3 addObject:stringValue];
        }

        else
        {
          v13 = NBDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = v15;
            v21 = v10;
            _os_log_fault_impl(&dword_0, v13, OS_LOG_TYPE_FAULT, "Failed to convert media item store ID (%@)", buf, 0xCu);
          }
        }
      }

      v7 = [myLibraryAudiobooks countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_reloadData
{
  myLibraryAudiobooks = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
  [myLibraryAudiobooks removeAllObjects];

  v4 = +[MPMediaQuery nb_storeOnlyAudiobooksQuery];
  v5 = v4;
  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    collections = [v4 collections];
    v7 = [collections countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(collections);
          }

          bk_cloudRepresentativeItem = [*(*(&v20 + 1) + 8 * v9) bk_cloudRepresentativeItem];
          if (bk_cloudRepresentativeItem)
          {
            myLibraryAudiobooks2 = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
            [myLibraryAudiobooks2 addObject:bk_cloudRepresentativeItem];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [collections countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }

  objc_initWeak(&location, self);
  v12 = +[BDSJaliscoDAAPClient sharedClient];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_2358;
  v17 = &unk_20700;
  objc_copyWeak(&v18, &location);
  [v12 updateFamilyPolitely:1 reason:6 completion:&v14];

  v13 = [NBFamilyCircleDataSource sharedInstance:v14];
  [v13 refresh];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)_specifierForFamilyMember:(id)member
{
  memberCopy = member;
  v5 = +[NBBridgeUtilities isExplicitMaterialAllowed]^ 1;
  nb_dsids = [memberCopy nb_dsids];
  allObjects = [nb_dsids allObjects];

  _myLibraryStoreIDs = [(NBSelectAudiobookViewController *)self _myLibraryStoreIDs];
  v9 = NBDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = allObjects;
    v24 = 2112;
    v25 = _myLibraryStoreIDs;
    v26 = 1024;
    v27 = v5;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Determining if we should create a specifier for family member with DSIDs (%@), excluding the following books (%@), isRestricted (%d)", buf, 0x1Cu);
  }

  v10 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
  v11 = [v10 fetchItemsForDSIDs:allObjects excludeStoreIDs:_myLibraryStoreIDs isExplicitRestricted:v5];
  v12 = [v11 count];

  v13 = NBDefaultLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v23 = allObjects;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Family member (%@) has audiobooks, creating specifier (%ld)", buf, 0x16u);
    }

    firstName = [memberCopy firstName];
    v16 = [PSSpecifier preferenceSpecifierNamed:firstName target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v16 setProperty:&off_21A38 forKey:PSAccessoryKey];
    firstName2 = [memberCopy firstName];
    [v16 setProperty:firstName2 forKey:NMBUISpecifierTitleKey];

    v18 = [NSNumber numberWithUnsignedInteger:v12];
    [v16 setProperty:v18 forKey:@"NBUISpecifierAudiobookCountKey"];

    nb_profileImage = [memberCopy nb_profileImage];
    [v16 setProperty:nb_profileImage forKey:PSIconImageKey];

    nb_dsids2 = [memberCopy nb_dsids];
    [v16 setProperty:nb_dsids2 forKey:@"NBUISpecifierAccountDSIDsKey"];

    v13 = [NSNumber numberWithInt:1];
    [v16 setProperty:v13 forKey:PSEnabledKey];
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v23 = allObjects;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Family member with DSIDs (%@), does not have displayable audiobooks in its account", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (id)_specifierForMediaItem:(id)item
{
  itemCopy = item;
  bk_effectiveTitle = [itemCopy bk_effectiveTitle];
  v6 = [PSSpecifier preferenceSpecifierNamed:bk_effectiveTitle target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  bk_effectiveTitle2 = [itemCopy bk_effectiveTitle];
  [v6 setProperty:bk_effectiveTitle2 forKey:NMBUISpecifierTitleKey];

  bk_effectiveAuthor = [itemCopy bk_effectiveAuthor];
  [v6 setProperty:bk_effectiveAuthor forKey:NMBUISpecifierSubtitleKey];

  [v6 setProperty:&off_21A50 forKey:PSTableCellStyleOverrideKey];
  artworkCatalog = [itemCopy artworkCatalog];
  [v6 setProperty:artworkCatalog forKey:NMBUISpecifierArtworkCatalogKey];

  v10 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v6 setProperty:v10 forKey:NMBUISpecifierPlaceholderImageKey];

  [v6 setProperty:itemCopy forKey:NMBUISpecifierModelObjectKey];
  bk_storeID = [itemCopy bk_storeID];

  delegate = [(NBSelectAudiobookViewController *)self delegate];
  LODWORD(itemCopy) = [delegate selectAudiobookAdamIdAlreadyPinned:bk_storeID];

  if (itemCopy)
  {
    [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(NBSelectAudiobookViewController *)self specifierAtIndexPath:pathCopy];
  objc_opt_class();
  v9 = [v8 propertyForKey:NMBUISpecifierModelObjectKey];
  v10 = BUDynamicCast();

  if (v10)
  {
    bk_storeID = [v10 bk_storeID];
    delegate = [(NBSelectAudiobookViewController *)self delegate];
    [delegate selectAudiobookDidSelectAudiobookWithAdamId:bk_storeID];
  }

  else
  {
    objc_opt_class();
    v13 = [v8 propertyForKey:@"NBUISpecifierAccountDSIDsKey"];
    bk_storeID = BUDynamicCast();

    if ([bk_storeID count])
    {
      v14 = [NBFamilyListViewController alloc];
      _myLibraryStoreIDs = [(NBSelectAudiobookViewController *)self _myLibraryStoreIDs];
      v16 = [(NBFamilyListViewController *)v14 initWithDSIDs:bk_storeID excludeStoreIDs:_myLibraryStoreIDs];

      delegate2 = [(NBSelectAudiobookViewController *)self delegate];
      [(NBFamilyListViewController *)v16 setDelegate:delegate2];

      v18 = [v8 propertyForKey:NMBUISpecifierTitleKey];
      [(NBFamilyListViewController *)v16 setTitle:v18];

      navigationController = [(NBSelectAudiobookViewController *)self navigationController];
      [navigationController pushViewController:v16 animated:1];

      goto LABEL_6;
    }

    delegate = NBDefaultLog();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      sub_11690(delegate);
    }
  }

LABEL_6:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)familyCircleDataSource:(id)source didFetchFamilyCircle:(id)circle
{
  sourceCopy = source;
  circleCopy = circle;
  [(NBSelectAudiobookViewController *)self setMyFamilyMembers:circleCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2E70;
  v23 = sub_2E80;
  v24 = objc_opt_new();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_2E88;
  v18[3] = &unk_20728;
  v18[4] = &v19;
  [circleCopy enumerateObjectsUsingBlock:v18];
  allObjects = [v20[5] allObjects];
  searchResultsController = [(NBSelectAudiobookViewController *)self searchResultsController];
  [searchResultsController setFamilyDSIDs:allObjects];

  myFamilyMembers = [(NBSelectAudiobookViewController *)self myFamilyMembers];
  LOBYTE(searchResultsController) = [myFamilyMembers count] == 0;

  if (searchResultsController)
  {
    searchController = [(NBSelectAudiobookViewController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar setScopeButtonTitles:0];
  }

  else
  {
    searchController = NBBundle();
    searchBar = [searchController localizedStringForKey:@"All Audiobooks" value:&stru_20DE8 table:0];
    v25[0] = searchBar;
    v13 = NBBundle();
    v14 = [v13 localizedStringForKey:@"My Library" value:&stru_20DE8 table:0];
    v25[1] = v14;
    v15 = [NSArray arrayWithObjects:v25 count:2];
    searchController2 = [(NBSelectAudiobookViewController *)self searchController];
    searchBar2 = [searchController2 searchBar];
    [searchBar2 setScopeButtonTitles:v15];
  }

  [(NBSelectAudiobookViewController *)self reloadSpecifiers];
  _Block_object_dispose(&v19, 8);
}

- (void)familyCircleDataSourceProfileImagesDidChange:(id)change
{
  familyMembers = [change familyMembers];
  [(NBSelectAudiobookViewController *)self setMyFamilyMembers:familyMembers];

  [(NBSelectAudiobookViewController *)self reloadSpecifiers];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  searchField = [searchBar searchField];
  searchText = [searchField searchText];

  searchResultsController = [(NBSelectAudiobookViewController *)self searchResultsController];
  [searchResultsController searchForString:searchText];
}

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  v5 = change == 0;
  barCopy = bar;
  searchResultsController = [(NBSelectAudiobookViewController *)self searchResultsController];
  [searchResultsController setIncludeFamily:v5];

  searchResultsController2 = [(NBSelectAudiobookViewController *)self searchResultsController];
  searchField = [barCopy searchField];

  searchText = [searchField searchText];
  [searchResultsController2 searchForString:searchText];
}

- (NBSelectAudiobookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end