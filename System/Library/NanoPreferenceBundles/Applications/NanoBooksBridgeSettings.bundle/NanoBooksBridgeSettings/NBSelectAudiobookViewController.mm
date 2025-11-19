@interface NBSelectAudiobookViewController
- (NBSelectAudiobookDelegate)delegate;
- (id)_myLibraryStoreIDs;
- (id)_specifierForFamilyMember:(id)a3;
- (id)_specifierForMediaItem:(id)a3;
- (id)specifiers;
- (void)_addAudiobookStoreFooterToSpecifier:(id)a3;
- (void)_reloadData;
- (void)_showAudiobookStore:(id)a3;
- (void)dealloc;
- (void)familyCircleDataSource:(id)a3 didFetchFamilyCircle:(id)a4;
- (void)familyCircleDataSourceProfileImagesDidChange:(id)a3;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
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

  v4 = [(NBSelectAudiobookViewController *)self searchResultsController];
  [v4 setIncludeFamily:1];

  v5 = [(NBSelectAudiobookViewController *)self delegate];
  v6 = [(NBSelectAudiobookViewController *)self searchResultsController];
  [v6 setDelegate:v5];

  v7 = [UISearchController alloc];
  v8 = [(NBSelectAudiobookViewController *)self searchResultsController];
  v9 = [v7 initWithSearchResultsController:v8];
  [(NBSelectAudiobookViewController *)self setSearchController:v9];

  v10 = NBBundle();
  v11 = [v10 localizedStringForKey:@"Search Audiobooks" value:&stru_20DE8 table:0];
  v12 = [(NBSelectAudiobookViewController *)self searchController];
  v13 = [v12 searchBar];
  [v13 setPlaceholder:v11];

  v14 = [(NBSelectAudiobookViewController *)self searchController];
  v15 = [v14 searchBar];
  [v15 setDelegate:self];

  v16 = [(NBSelectAudiobookViewController *)self searchController];
  [v16 setSearchResultsUpdater:self];

  v17 = NBBundle();
  v18 = [v17 localizedStringForKey:@"Select Audiobook" value:&stru_20DE8 table:0];
  v19 = [(NBSelectAudiobookViewController *)self navigationItem];
  [v19 setTitle:v18];

  v20 = [UIBarButtonItem alloc];
  v21 = NBBundle();
  v22 = [v21 localizedStringForKey:@"Cancel" value:&stru_20DE8 table:0];
  v23 = [v20 initWithTitle:v22 style:0 target:self action:"_dismissSearchViewController"];
  v24 = [(NBSelectAudiobookViewController *)self navigationItem];
  [v24 setRightBarButtonItem:v23];

  v25 = [(NBSelectAudiobookViewController *)self searchController];
  v26 = [(NBSelectAudiobookViewController *)self navigationItem];
  [v26 setSearchController:v25];

  v27 = [(NBSelectAudiobookViewController *)self navigationItem];
  [v27 setHidesSearchBarWhenScrolling:0];

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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  [(NBSearchResultsViewController *)self->_searchResultsController setDelegate:v4];
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
    v10 = [(NBSelectAudiobookViewController *)self myFamilyMembers];
    v11 = [v10 count];

    v12 = NBDefaultLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = [(NBSelectAudiobookViewController *)self myFamilyMembers];
        v15 = [v14 valueForKey:@"iTunesDSID"];
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
      v16 = [(NBSelectAudiobookViewController *)self myFamilyMembers];
      v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
              objc_enumerationMutation(v16);
            }

            v21 = [(NBSelectAudiobookViewController *)self _specifierForFamilyMember:*(*(&v40 + 1) + 8 * v20)];
            if (v21)
            {
              [v9 addObject:v21];
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
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

    v25 = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
    v26 = [v25 count];

    if (v26)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
      v28 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
              objc_enumerationMutation(v27);
            }

            v32 = [(NBSelectAudiobookViewController *)self _specifierForMediaItem:*(*(&v36 + 1) + 8 * v31)];
            [v5 addObject:v32];

            v31 = v31 + 1;
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
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

- (void)_addAudiobookStoreFooterToSpecifier:(id)a3
{
  v4 = a3;
  v5 = NBBundle();
  v13 = [v5 localizedStringForKey:@"No audiobooks in your library. Go to the %@ to find audiobooks read by actors value:authors table:{and other memorable voices.", &stru_20DE8, 0}];

  v6 = NBBundle();
  v7 = [v6 localizedStringForKey:@"Library_Group_Footer_Audiobook_Store" value:@"Audiobook Store" table:0];

  v8 = [NSString stringWithFormat:v13, v7];
  [v4 setProperty:v8 forKey:PSFooterTextGroupKey];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v4 setProperty:v10 forKey:PSFooterCellClassGroupKey];

  v15.location = [v8 rangeOfString:v7];
  v11 = NSStringFromRange(v15);
  [v4 setProperty:v11 forKey:PSFooterHyperlinkViewLinkRangeKey];

  [v4 setProperty:@"_showAudiobookStore:" forKey:PSFooterHyperlinkViewActionKey];
  v12 = [NSValue valueWithNonretainedObject:self];
  [v4 setProperty:v12 forKey:PSFooterHyperlinkViewTargetKey];
}

- (void)_showAudiobookStore:(id)a3
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
  v4 = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 bk_storeID];
        v12 = [v11 stringValue];

        if ([v12 length])
        {
          [v3 addObject:v12];
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

      v7 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_reloadData
{
  v3 = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
  [v3 removeAllObjects];

  v4 = +[MPMediaQuery nb_storeOnlyAudiobooksQuery];
  v5 = v4;
  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v4 collections];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v20 + 1) + 8 * v9) bk_cloudRepresentativeItem];
          if (v10)
          {
            v11 = [(NBSelectAudiobookViewController *)self myLibraryAudiobooks];
            [v11 addObject:v10];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)_specifierForFamilyMember:(id)a3
{
  v4 = a3;
  v5 = +[NBBridgeUtilities isExplicitMaterialAllowed]^ 1;
  v6 = [v4 nb_dsids];
  v7 = [v6 allObjects];

  v8 = [(NBSelectAudiobookViewController *)self _myLibraryStoreIDs];
  v9 = NBDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    v26 = 1024;
    v27 = v5;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Determining if we should create a specifier for family member with DSIDs (%@), excluding the following books (%@), isRestricted (%d)", buf, 0x1Cu);
  }

  v10 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
  v11 = [v10 fetchItemsForDSIDs:v7 excludeStoreIDs:v8 isExplicitRestricted:v5];
  v12 = [v11 count];

  v13 = NBDefaultLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v23 = v7;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Family member (%@) has audiobooks, creating specifier (%ld)", buf, 0x16u);
    }

    v15 = [v4 firstName];
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v16 setProperty:&off_21A38 forKey:PSAccessoryKey];
    v17 = [v4 firstName];
    [v16 setProperty:v17 forKey:NMBUISpecifierTitleKey];

    v18 = [NSNumber numberWithUnsignedInteger:v12];
    [v16 setProperty:v18 forKey:@"NBUISpecifierAudiobookCountKey"];

    v19 = [v4 nb_profileImage];
    [v16 setProperty:v19 forKey:PSIconImageKey];

    v20 = [v4 nb_dsids];
    [v16 setProperty:v20 forKey:@"NBUISpecifierAccountDSIDsKey"];

    v13 = [NSNumber numberWithInt:1];
    [v16 setProperty:v13 forKey:PSEnabledKey];
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Family member with DSIDs (%@), does not have displayable audiobooks in its account", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (id)_specifierForMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 bk_effectiveTitle];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v7 = [v4 bk_effectiveTitle];
  [v6 setProperty:v7 forKey:NMBUISpecifierTitleKey];

  v8 = [v4 bk_effectiveAuthor];
  [v6 setProperty:v8 forKey:NMBUISpecifierSubtitleKey];

  [v6 setProperty:&off_21A50 forKey:PSTableCellStyleOverrideKey];
  v9 = [v4 artworkCatalog];
  [v6 setProperty:v9 forKey:NMBUISpecifierArtworkCatalogKey];

  v10 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v6 setProperty:v10 forKey:NMBUISpecifierPlaceholderImageKey];

  [v6 setProperty:v4 forKey:NMBUISpecifierModelObjectKey];
  v11 = [v4 bk_storeID];

  v12 = [(NBSelectAudiobookViewController *)self delegate];
  LODWORD(v4) = [v12 selectAudiobookAdamIdAlreadyPinned:v11];

  if (v4)
  {
    [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NBSelectAudiobookViewController *)self specifierAtIndexPath:v6];
  objc_opt_class();
  v9 = [v8 propertyForKey:NMBUISpecifierModelObjectKey];
  v10 = BUDynamicCast();

  if (v10)
  {
    v11 = [v10 bk_storeID];
    v12 = [(NBSelectAudiobookViewController *)self delegate];
    [v12 selectAudiobookDidSelectAudiobookWithAdamId:v11];
  }

  else
  {
    objc_opt_class();
    v13 = [v8 propertyForKey:@"NBUISpecifierAccountDSIDsKey"];
    v11 = BUDynamicCast();

    if ([v11 count])
    {
      v14 = [NBFamilyListViewController alloc];
      v15 = [(NBSelectAudiobookViewController *)self _myLibraryStoreIDs];
      v16 = [(NBFamilyListViewController *)v14 initWithDSIDs:v11 excludeStoreIDs:v15];

      v17 = [(NBSelectAudiobookViewController *)self delegate];
      [(NBFamilyListViewController *)v16 setDelegate:v17];

      v18 = [v8 propertyForKey:NMBUISpecifierTitleKey];
      [(NBFamilyListViewController *)v16 setTitle:v18];

      v19 = [(NBSelectAudiobookViewController *)self navigationController];
      [v19 pushViewController:v16 animated:1];

      goto LABEL_6;
    }

    v12 = NBDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_11690(v12);
    }
  }

LABEL_6:
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)familyCircleDataSource:(id)a3 didFetchFamilyCircle:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NBSelectAudiobookViewController *)self setMyFamilyMembers:v7];
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
  [v7 enumerateObjectsUsingBlock:v18];
  v8 = [v20[5] allObjects];
  v9 = [(NBSelectAudiobookViewController *)self searchResultsController];
  [v9 setFamilyDSIDs:v8];

  v10 = [(NBSelectAudiobookViewController *)self myFamilyMembers];
  LOBYTE(v9) = [v10 count] == 0;

  if (v9)
  {
    v11 = [(NBSelectAudiobookViewController *)self searchController];
    v12 = [v11 searchBar];
    [v12 setScopeButtonTitles:0];
  }

  else
  {
    v11 = NBBundle();
    v12 = [v11 localizedStringForKey:@"All Audiobooks" value:&stru_20DE8 table:0];
    v25[0] = v12;
    v13 = NBBundle();
    v14 = [v13 localizedStringForKey:@"My Library" value:&stru_20DE8 table:0];
    v25[1] = v14;
    v15 = [NSArray arrayWithObjects:v25 count:2];
    v16 = [(NBSelectAudiobookViewController *)self searchController];
    v17 = [v16 searchBar];
    [v17 setScopeButtonTitles:v15];
  }

  [(NBSelectAudiobookViewController *)self reloadSpecifiers];
  _Block_object_dispose(&v19, 8);
}

- (void)familyCircleDataSourceProfileImagesDidChange:(id)a3
{
  v4 = [a3 familyMembers];
  [(NBSelectAudiobookViewController *)self setMyFamilyMembers:v4];

  [(NBSelectAudiobookViewController *)self reloadSpecifiers];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 searchField];
  v7 = [v5 searchText];

  v6 = [(NBSelectAudiobookViewController *)self searchResultsController];
  [v6 searchForString:v7];
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  v5 = a4 == 0;
  v6 = a3;
  v7 = [(NBSelectAudiobookViewController *)self searchResultsController];
  [v7 setIncludeFamily:v5];

  v10 = [(NBSelectAudiobookViewController *)self searchResultsController];
  v8 = [v6 searchField];

  v9 = [v8 searchText];
  [v10 searchForString:v9];
}

- (NBSelectAudiobookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end