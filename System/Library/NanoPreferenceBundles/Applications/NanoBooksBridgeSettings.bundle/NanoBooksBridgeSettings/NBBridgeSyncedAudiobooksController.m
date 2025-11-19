@interface NBBridgeSyncedAudiobooksController
+ (id)_addAudiobookImage;
- (BOOL)_hasPinnedAudiobooks;
- (BOOL)_hasPurchasedAudiobooks;
- (BOOL)_shouldShowProgress;
- (BOOL)isOutOfSpace;
- (BOOL)selectAudiobookAdamIdAlreadyPinned:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (NBBridgeSyncedAudiobooksController)init;
- (NMBUIAlertHeaderView)alertHeaderView;
- (NMBUISyncInfoController)syncInfoController;
- (PSSpecifier)addAudiobookSpecifier;
- (PSSpecifier)audiobookStoreSpecifier;
- (PSSpecifier)libraryGroupSpecifier;
- (PSSpecifier)signInSpecifier;
- (float)_contentHeaderViewProgress;
- (id)_contentHeaderViewSubtitle;
- (id)_contentHeaderViewTitle;
- (id)_pinnedAudiobooks;
- (id)_recommendationSelected:(id)a3;
- (id)_recommendationsGroup;
- (id)_selfOrPresentedViewController;
- (id)_specifierWithItem:(id)a3 showDownloadInfo:(BOOL)a4 showWarningIfAboveQuota:(BOOL)a5 downloadLimit:(unint64_t)a6;
- (id)_specifierWithJaliscoItem:(id)a3 showDownloadInfo:(BOOL)a4 showWarningIfAboveQuota:(BOOL)a5 downloadLimit:(unint64_t)a6;
- (id)_suggestionSpecifierWithRecommendation:(id)a3;
- (id)specifiers;
- (id)syncInfoController:(id)a3 containerIdentifierForModelObject:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (unint64_t)_resolvedProgressViewStateForState:(unint64_t)a3;
- (void)_addAudiobookAction;
- (void)_configureHeaderIfNeeded;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)_handleApplicationWillEnterForegroundNotification:(id)a3;
- (void)_handleAudiobookPinningSelectionsDidChangeNotification:(id)a3;
- (void)_handleSyncInfoDidUpdateNotification:(id)a3;
- (void)_handleSyncManagerSyncStateDidChangeNotification:(id)a3;
- (void)_iCloudSignInAction:(id)a3;
- (void)_iTunesSignInAction:(id)a3;
- (void)_pinningAudiobooksContentsInvalidated:(id)a3;
- (void)_refreshFamilyOwnedAudiobooks;
- (void)_reloadContents;
- (void)_requestAudiobooks;
- (void)_requestRecommendations;
- (void)_restrictionsDidChange:(id)a3;
- (void)_setRecommendationSelected:(id)a3 withSpecifier:(id)a4;
- (void)_showAudiobookStore:(id)a3;
- (void)_showReadingNowWantToRead:(id)a3;
- (void)_showSyncStorageWarning;
- (void)_updateFamilyCircle:(id)a3;
- (void)_updateFooterIfNeeded;
- (void)_updateHeaderAndSyncProgressIfNeeded;
- (void)_updateHeaderSize;
- (void)_updateProgressIfNeeded;
- (void)dealloc;
- (void)familyCircleDataSource:(id)a3 didFetchFamilyCircle:(id)a4;
- (void)selectAudiobookDidSelectAudiobookWithAdamId:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NBBridgeSyncedAudiobooksController

- (NBBridgeSyncedAudiobooksController)init
{
  v22.receiver = self;
  v22.super_class = NBBridgeSyncedAudiobooksController;
  v2 = [(NBBridgeSyncedAudiobooksController *)&v22 init];
  if (v2)
  {
    v3 = +[NMSMediaPinningManager sharedManager];
    pinningManager = v2->_pinningManager;
    v2->_pinningManager = v3;

    v5 = +[NMSSyncManager sharedManager];
    syncManager = v2->_syncManager;
    v2->_syncManager = v5;

    v7 = +[NSUserDefaults standardUserDefaults];
    v2->_storeAvailable = [v7 BOOLForKey:@"NBAudiobookStoreDisabled"] ^ 1;

    familyDSIDs = v2->_familyDSIDs;
    v2->_familyDSIDs = &__NSArray0__struct;

    v2->_refreshingFamily = 0;
    v9 = [(NBBridgeSyncedAudiobooksController *)v2 pinningManager];
    [v9 setAudiobookDownloadLimit:18000.0];

    [MPMediaQuery setFilteringDisabled:1];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_requestRecommendations" name:@"NBAudiobookRecommendationsDidUpdateNotification" object:0];
    [v10 addObserver:v2 selector:"_restrictionsDidChange:" name:NSUserDefaultsDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"_pinningAudiobooksContentsInvalidated:" name:NMSMediaPinningManagerAudiobooksIdentifiersDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"reloadSpecifiers" name:MPMediaLibraryDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"_handleMediaLibraryChange:" name:MPMediaLibraryDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"_handleAudiobookPinningSelectionsDidChangeNotification:" name:NMSyncDefaultsAudiobooksPinningSelectionsDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"_handleSyncManagerSyncStateDidChangeNotification:" name:NMSSyncManagerSyncStateDidChangeNotification object:0];
    v11 = +[NRPairedDeviceRegistry sharedInstance];
    v12 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v13 = [v11 getAllDevicesWithArchivedAltAccountDevicesMatching:v12];
    v14 = [v13 firstObject];
    v15 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
    v16 = [v14 supportsCapability:v15];

    if (v16)
    {
      [v10 addObserver:v2 selector:"_handleSyncInfoDidUpdateNotification:" name:NMBUIMediaSyncInfoDidUpdateNotification object:0];
      [v10 addObserver:v2 selector:"_handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
      [v10 addObserver:v2 selector:"_handleApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
    }

    v2->_allowsExplicitAudiobooks = +[NBBridgeUtilities isExplicitMaterialAllowed];
    v17 = BUBooksGroupContainerIdentifier;
    v18 = [LSBundleProxy bundleProxyForIdentifier:@"com.apple.iBooks"];
    v19 = [v18 dataContainerURL];
    v20 = +[NSURL bu_booksGroupContainerURL];
    [BDSUserPreferencesSync copyChangedLocalPreferencesToGroupContainerWithAppSuiteName:@"com.apple.iBooks" container:v19 groupName:v17 groupContainer:v20];
    [v10 addObserver:v2 selector:"_handleStoreAccountDidChange:" name:NMBUIITunesAccountDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"_iCloudAccountAvailabilityChangedNotification:" name:NSUbiquityIdentityDidChangeNotification object:0];
    [(NBBridgeSyncedAudiobooksController *)v2 _refreshFamilyOwnedAudiobooks];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NBFamilyCircleDataSource sharedInstance];
  [v3 removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NBBridgeSyncedAudiobooksController;
  [(NBBridgeSyncedAudiobooksController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = NBBridgeSyncedAudiobooksController;
  [(NBBridgeSyncedAudiobooksController *)&v9 viewDidLoad];
  [(NBBridgeSyncedAudiobooksController *)self _configureHeaderIfNeeded];
  v3 = [(NBBridgeSyncedAudiobooksController *)self table];
  [v3 setAllowsSelectionDuringEditing:1];

  v4 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  v5 = [v4 pinnedAudiobooks];
  -[NBBridgeSyncedAudiobooksController setEditingButtonHidden:animated:](self, "setEditingButtonHidden:animated:", [v5 count] == 0, 0);

  [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
  v6 = +[NBAudiobookRecommendationManager sharedManager];
  v7 = [v6 pinningManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7F14;
  v8[3] = &unk_20AC0;
  v8[4] = self;
  [v7 audiobookStoreEnabledWithCompletion:v8];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = NBBridgeSyncedAudiobooksController;
  [(NBBridgeSyncedAudiobooksController *)&v3 viewDidLayoutSubviews];
  [(NBBridgeSyncedAudiobooksController *)self _updateHeaderSize];
}

- (NMBUISyncInfoController)syncInfoController
{
  syncInfoController = self->_syncInfoController;
  if (!syncInfoController)
  {
    v4 = [[NMBUISyncInfoController alloc] initWithSyncInfoTarget:2];
    [v4 setDataSource:self];
    v5 = self->_syncInfoController;
    self->_syncInfoController = v4;

    syncInfoController = self->_syncInfoController;
  }

  return syncInfoController;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    if (![(NBBridgeSyncedAudiobooksController *)self isStoreAvailable])
    {
      v9 = NBDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Store is disabled.", v23, 2u);
      }

      goto LABEL_15;
    }

    if ([(NBBridgeSyncedAudiobooksController *)self hasStoreAccount])
    {
      if ([(NBBridgeSyncedAudiobooksController *)self _hasPurchasedAudiobooks])
      {
        v6 = [(NBBridgeSyncedAudiobooksController *)self _recommendationsGroup];
        [v5 addObjectsFromArray:v6];

        v7 = [(NBBridgeSyncedAudiobooksController *)self libraryGroupSpecifier];
        [v5 addObject:v7];

        v8 = [(NBBridgeSyncedAudiobooksController *)self addAudiobookSpecifier];
        [v5 addObject:v8];

        v9 = [(NBBridgeSyncedAudiobooksController *)self audiobookSpecifiers];
        [v5 addObjectsFromArray:v9];
LABEL_15:

LABEL_16:
        v19 = [v5 copy];
        v20 = *&self->PSEditableListController_opaque[v3];
        *&self->PSEditableListController_opaque[v3] = v19;

        v4 = *&self->PSEditableListController_opaque[v3];
        goto LABEL_17;
      }

      v22 = NBDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "No purchased audiobooks.", v23, 2u);
      }

      if ([(NBBridgeSyncedAudiobooksController *)self isRefreshingFamily])
      {
        goto LABEL_16;
      }

      v9 = [PSSpecifier groupSpecifierWithID:@"NBNoStoreBooksGroupSpecifierID" name:0];
      v25[0] = v9;
      v16 = [(NBBridgeSyncedAudiobooksController *)self audiobookStoreSpecifier];
      v25[1] = v16;
      v17 = v25;
    }

    else
    {
      v10 = NBDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "No known store account.", v23, 2u);
      }

      v9 = [PSSpecifier groupSpecifierWithID:@"NBSignIntoITunesGroupSpecifierID" name:0];
      v11 = _os_feature_enabled_impl();
      v12 = NBBundle();
      v13 = v12;
      if (v11)
      {
        v14 = @"You must sign in to Apple Books with your Apple Account to use Audiobooks on Apple\\U00A0Watch.";
      }

      else
      {
        v14 = @"You must sign in to Apple Books with your Apple ID to use Audiobooks on Apple\\U00A0Watch.";
      }

      v15 = [v12 localizedStringForKey:v14 value:&stru_20DE8 table:0];
      [v9 setProperty:v15 forKey:PSFooterTextGroupKey];

      v24[0] = v9;
      v16 = [(NBBridgeSyncedAudiobooksController *)self signInSpecifier];
      v24[1] = v16;
      v17 = v24;
    }

    v18 = [NSArray arrayWithObjects:v17 count:2];
    [v5 addObjectsFromArray:v18];

    goto LABEL_15;
  }

LABEL_17:

  return v4;
}

- (void)_refreshFamilyOwnedAudiobooks
{
  [(NBBridgeSyncedAudiobooksController *)self setRefreshingFamily:1];
  v3 = +[NBFamilyCircleDataSource sharedInstance];
  [v3 addObserver:self];
  [v3 refresh];
}

- (void)_updateFamilyCircle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if (([v9 isCurrentSignedInUser] & 1) == 0)
        {
          v10 = [v9 iTunesDSID];
          v11 = v10 == 0;

          if (!v11)
          {
            v12 = [v9 iTunesDSID];
            [v4 addObject:v12];
          }

          v13 = [v9 iCloudDSID];
          if (v13)
          {
            v14 = [v9 iTunesDSID];
            v15 = [v9 iCloudDSID];
            v16 = [v14 isEqualToNumber:v15];

            if (v16)
            {
              v17 = [v9 iCloudDSID];
              [v4 addObject:v17];
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  [(NBBridgeSyncedAudiobooksController *)self setFamilyDSIDs:v4];
  v18 = [(NBBridgeSyncedAudiobooksController *)self familyDSIDs];
  v19 = [v18 count] == 0;

  if (v19)
  {
    [(NBBridgeSyncedAudiobooksController *)self setRefreshingFamily:0];
    v21 = +[NBAudiobookRecommendationManager sharedManager];
    [v21 updatePinningManager];

    [(NBBridgeSyncedAudiobooksController *)self _updateFooterIfNeeded];
    [(NBBridgeSyncedAudiobooksController *)self reloadSpecifiers];
  }

  else
  {
    objc_initWeak(&location, self);
    v20 = +[BDSJaliscoDAAPClient sharedClient];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_8AF0;
    v23[3] = &unk_20700;
    objc_copyWeak(&v24, &location);
    [v20 updateFamilyPolitely:1 reason:6 completion:v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_hasPurchasedAudiobooks
{
  v3 = +[MPMediaQuery nb_storeOnlyAudiobooksQuery];
  v4 = [v3 collections];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(NBBridgeSyncedAudiobooksController *)self familyDSIDs];
    v8 = [v7 count];

    if (v8)
    {
      v9 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
      v10 = [(NBBridgeSyncedAudiobooksController *)self familyDSIDs];
      v11 = [v9 fetchAllServerItemsForDSIDs:v10];
      v6 = [v11 count] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_recommendationsGroup
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"AUDIOBOOK_RECOMMENDATIONS"];
  if ([(NBBridgeSyncedAudiobooksController *)self hasCloudAccount])
  {
    v5 = NBBundle();
    v6 = [v5 localizedStringForKey:@"Fill available space on your Apple\\U00A0Watch with audiobooks from %@ list." value:&stru_20DE8 table:0];

    v7 = NBBundle();
    v8 = [v7 localizedStringForKey:@"Continue and your Want to Read" value:&stru_20DE8 table:0];

    v9 = PSFooterHyperlinkViewActionKey;
    v10 = @"_showReadingNowWantToRead:";
  }

  else
  {
    v11 = NBDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "No known cloud account.", buf, 2u);
    }

    v12 = NBBundle();
    v6 = [v12 localizedStringForKey:@"To enable automatic download of audiobooks from Continue and Want to Read value:%@." table:{&stru_20DE8, 0}];

    v13 = NBBundle();
    v8 = [v13 localizedStringForKey:@"sign in to iCloud" value:&stru_20DE8 table:0];

    [v4 setProperty:@"_iCloudSignInAction:" forKey:PSFooterHyperlinkViewActionKey];
    v9 = PSEnabledKey;
    v10 = &__kCFBooleanFalse;
  }

  [v4 setProperty:v10 forKey:v9];
  v14 = [NSString stringWithFormat:v6, v8];
  [v4 setProperty:v14 forKey:PSFooterTextGroupKey];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v4 setProperty:v16 forKey:PSFooterCellClassGroupKey];

  v23.location = [v14 rangeOfString:v8];
  v17 = NSStringFromRange(v23);
  [v4 setProperty:v17 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v18 = [NSValue valueWithNonretainedObject:self];
  [v4 setProperty:v18 forKey:PSFooterHyperlinkViewTargetKey];

  [v3 addObject:v4];
  v19 = [(NBBridgeSyncedAudiobooksController *)self recommendationSpecifiers];
  [v3 addObjectsFromArray:v19];

  return v3;
}

- (PSSpecifier)addAudiobookSpecifier
{
  addAudiobookSpecifier = self->_addAudiobookSpecifier;
  if (!addAudiobookSpecifier)
  {
    v4 = NBBundle();
    v5 = [v4 localizedStringForKey:@"Add Audiobook\\U2026" value:&stru_20DE8 table:0];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_addAudiobookSpecifier;
    self->_addAudiobookSpecifier = v6;

    [(PSSpecifier *)self->_addAudiobookSpecifier setButtonAction:"_addAudiobookAction"];
    [(PSSpecifier *)self->_addAudiobookSpecifier setProperty:objc_opt_class() forKey:PSCellClassKey];
    v8 = self->_addAudiobookSpecifier;
    v9 = NBBundle();
    v10 = [v9 localizedStringForKey:@"Add Audiobook\\U2026" value:&stru_20DE8 table:0];
    [(PSSpecifier *)v8 setProperty:v10 forKey:NMBUISpecifierTitleKey];

    v11 = self->_addAudiobookSpecifier;
    v12 = [objc_opt_class() _addAudiobookImage];
    [(PSSpecifier *)v11 setProperty:v12 forKey:NMBUISpecifierPlaceholderImageKey];

    [(PSSpecifier *)self->_addAudiobookSpecifier setProperty:&__kCFBooleanFalse forKey:NMBUISpecifierShouldShowSwitchKey];
    addAudiobookSpecifier = self->_addAudiobookSpecifier;
  }

  return addAudiobookSpecifier;
}

- (void)_addAudiobookAction
{
  v3 = objc_alloc_init(NBSelectAudiobookController);
  [(NBSelectAudiobookController *)v3 setDelegate:self];
  [(NBBridgeSyncedAudiobooksController *)self presentViewController:v3 animated:1 completion:0];
}

- (PSSpecifier)libraryGroupSpecifier
{
  libraryGroupSpecifier = self->_libraryGroupSpecifier;
  if (!libraryGroupSpecifier)
  {
    v4 = NBBundle();
    v5 = [v4 localizedStringForKey:@"FROM LIBRARY" value:&stru_20DE8 table:0];
    v6 = [PSSpecifier groupSpecifierWithName:v5];
    v7 = self->_libraryGroupSpecifier;
    self->_libraryGroupSpecifier = v6;

    v8 = NBBundle();
    v9 = [v8 localizedStringForKey:@"5 hours from each audiobook you add will be downloaded to your Apple\\U00A0Watch as long as there\\U2019s available space.\n\nFind more to listen to in the %@." value:&stru_20DE8 table:0];

    v10 = NBBundle();
    v11 = [v10 localizedStringForKey:@"Library_Group_Footer_Audiobook_Store" value:@"Audiobook Store" table:0];

    v12 = [NSString stringWithFormat:v9, v11];
    v13 = [v12 rangeOfString:v11];
    v15 = v14;
    [(PSSpecifier *)self->_libraryGroupSpecifier setProperty:v12 forKey:PSFooterTextGroupKey];
    v16 = self->_libraryGroupSpecifier;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [(PSSpecifier *)v16 setProperty:v18 forKey:PSFooterCellClassGroupKey];

    v19 = self->_libraryGroupSpecifier;
    v25.location = v13;
    v25.length = v15;
    v20 = NSStringFromRange(v25);
    [(PSSpecifier *)v19 setProperty:v20 forKey:PSFooterHyperlinkViewLinkRangeKey];

    [(PSSpecifier *)self->_libraryGroupSpecifier setProperty:@"_showAudiobookStore:" forKey:PSFooterHyperlinkViewActionKey];
    v21 = self->_libraryGroupSpecifier;
    v22 = [NSValue valueWithNonretainedObject:self];
    [(PSSpecifier *)v21 setProperty:v22 forKey:PSFooterHyperlinkViewTargetKey];

    libraryGroupSpecifier = self->_libraryGroupSpecifier;
  }

  return libraryGroupSpecifier;
}

- (id)_pinnedAudiobooks
{
  v3 = +[NSMutableSet set];
  v4 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  v5 = [v4 pinnedAudiobooks];
  v6 = [v5 array];
  [v3 addObjectsFromArray:v6];

  v7 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  LODWORD(v5) = [v7 isWantToReadEnabled];

  if (v5)
  {
    v8 = NBDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Want to read is enabled.", buf, 2u);
    }

    v9 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    v10 = [v9 wantToReadAudiobooks];
    v11 = [v10 array];
    [v3 addObjectsFromArray:v11];
  }

  v12 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  v13 = [v12 isReadingNowEnabled];

  if (v13)
  {
    v14 = NBDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Reading now is enabled.", v19, 2u);
    }

    v15 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    v16 = [v15 readingNowAudiobooks];
    v17 = [v16 array];
    [v3 addObjectsFromArray:v17];
  }

  return v3;
}

- (BOOL)_hasPinnedAudiobooks
{
  v5 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  v6 = [v5 pinnedAudiobooks];
  if (![v6 count])
  {
    v8 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    v9 = [v8 isWantToReadEnabled];
    if (v9 && (-[NBBridgeSyncedAudiobooksController pinningManager](self, "pinningManager"), v2 = objc_claimAutoreleasedReturnValue(), [v2 wantToReadAudiobooks], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "count")))
    {
      v7 = 1;
    }

    else
    {
      v10 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
      if ([v10 isReadingNowEnabled])
      {
        v11 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
        v12 = [v11 readingNowAudiobooks];
        v7 = [v12 count] != 0;

        if ((v9 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {

        v7 = 0;
        if (!v9)
        {
LABEL_11:

          goto LABEL_12;
        }
      }
    }

    goto LABEL_11;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (void)_reloadContents
{
  v3 = [(NBBridgeSyncedAudiobooksController *)self hasStoreAccount];
  v4 = [(NBBridgeSyncedAudiobooksController *)self hasCloudAccount];
  v5 = +[NMBUIAccountUtil sharedInstance];
  -[NBBridgeSyncedAudiobooksController setStoreAccount:](self, "setStoreAccount:", [v5 hasITunesAccount]);

  v6 = +[BUAccountsProvider sharedProvider];
  -[NBBridgeSyncedAudiobooksController setCloudAccount:](self, "setCloudAccount:", [v6 isUserSignedInToiCloud]);

  if (v3 != [(NBBridgeSyncedAudiobooksController *)self hasStoreAccount]|| v4 != [(NBBridgeSyncedAudiobooksController *)self hasCloudAccount])
  {
    [(NBBridgeSyncedAudiobooksController *)self reloadSpecifiers];
  }

  [(NBBridgeSyncedAudiobooksController *)self _requestRecommendations];
  [(NBBridgeSyncedAudiobooksController *)self _requestAudiobooks];
  [(NBBridgeSyncedAudiobooksController *)self _updateHeaderAndSyncProgressIfNeeded];
  [(NBBridgeSyncedAudiobooksController *)self _updateFooterIfNeeded];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_985C;
  block[3] = &unk_20A38;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (id)_addAudiobookImage
{
  v2 = NBBundle();
  v3 = [UIImage imageNamed:@"AddAudiobook" inBundle:v2];
  v4 = [v3 imageWithRenderingMode:2];

  +[NMBUIMediaTableCell artworkSize];
  UIGraphicsBeginImageContextWithOptions(v18, 1, 0.0);
  v5 = +[NBBridgeUtilities addAudiobookBackgroundColor];
  [v5 set];

  +[NMBUIMediaTableCell artworkSize];
  v7 = v6;
  +[NMBUIMediaTableCell artworkSize];
  v19.size.height = v8;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v7;
  UIRectFill(v19);
  v9 = BPSBridgeTintColor();
  [v9 set];

  +[NBBridgeUtilities addAudiobookIconSize];
  v11 = v10;
  v13 = v12;
  +[NMBUIMediaTableCell artworkSize];
  [v4 drawInRect:{(v14 - v11) * 0.5, (v14 - v11) * 0.5, v11, v13}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();

  return v15;
}

- (id)_suggestionSpecifierWithRecommendation:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v4 subtitle];
  v7 = [v4 artworkCatalog];
  v8 = [(NBBridgeSyncedAudiobooksController *)self _specifierWithTitle:v5 subtitle:v6 artworkCatalog:v7 showSwitch:1 set:"_setRecommendationSelected:withSpecifier:" get:"_recommendationSelected:"];

  [v8 setProperty:v4 forKey:NMBUISpecifierModelObjectKey];
  v9 = [NSNumber numberWithBool:[(NBBridgeSyncedAudiobooksController *)self hasCloudAccount]];
  [v8 setProperty:v9 forKey:PSEnabledKey];

  return v8;
}

- (void)_requestAudiobooks
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  v6 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v7 = [v5 getAllDevicesWithArchivedAltAccountDevicesMatching:v6];
  v8 = [v7 firstObject];
  v9 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v10 = [v8 supportsCapability:v9];

  v11 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  [v11 audiobookDownloadLimit];
  v13 = v12;

  v14 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  v15 = [v14 pinnedAudiobooks];
  v16 = [v15 array];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_9D58;
  v21[3] = &unk_20AE8;
  v25 = v10;
  v26 = v10 ^ 1;
  v24 = v13;
  v21[4] = self;
  v22 = v3;
  v23 = v4;
  v17 = v4;
  v18 = v3;
  [v16 enumerateAdamIDsUsingBlock:v21];
  v19 = [v18 copy];
  [(NBBridgeSyncedAudiobooksController *)self setAudiobookSpecifiers:v19];

  v20 = [v17 copy];
  [(NBBridgeSyncedAudiobooksController *)self setManuallyPinnedAudiobookIdentifiers:v20];

  [(NBBridgeSyncedAudiobooksController *)self reloadSpecifiers];
}

- (void)_requestRecommendations
{
  objc_initWeak(&location, self);
  v2 = +[NBAudiobookRecommendationManager sharedManager];
  v3 = &_dispatch_main_q;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_9FE8;
  v4[3] = &unk_20B38;
  objc_copyWeak(&v5, &location);
  [v2 fetchRecommendationsWithQueue:&_dispatch_main_q completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_setRecommendationSelected:(id)a3 withSpecifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v5 propertyForKey:NMBUISpecifierModelObjectKey];

  v8 = BUDynamicCast();

  objc_opt_class();
  v9 = BUDynamicCast();

  [v8 setSelected:{objc_msgSend(v9, "BOOLValue")}];
  v10 = +[NBAudiobookRecommendationManager sharedManager];
  v12 = v8;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [v10 persistRecommendationsSelections:v11];
}

- (id)_recommendationSelected:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 propertyForKey:NMBUISpecifierModelObjectKey];

  v6 = BUDynamicCast();

  if ([(NBBridgeSyncedAudiobooksController *)self hasCloudAccount])
  {
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isSelected]);
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  return v7;
}

- (void)_restrictionsDidChange:(id)a3
{
  v4 = +[NBBridgeUtilities isExplicitMaterialAllowed];
  if (v4 != [(NBBridgeSyncedAudiobooksController *)self allowsExplicitAudiobooks])
  {
    if (!v4)
    {
      v5 = NBDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 67109120;
        v6[1] = v4;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Explicit restriction has changed to %d.", v6, 8u);
      }

      [(NBBridgeSyncedAudiobooksController *)self dismissViewControllerAnimated:1 completion:0];
      [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
    }

    [(NBBridgeSyncedAudiobooksController *)self setAllowsExplicitAudiobooks:v4];
  }
}

- (void)_pinningAudiobooksContentsInvalidated:(id)a3
{
  [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
  v3 = +[NBAudiobookRecommendationManager sharedManager];
  [v3 reloadRecommendationsIfNeeded:0];
}

- (void)_handleAudiobookPinningSelectionsDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NMSNotificationUserInfoKeyIsInProcessNotification];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {
    v7 = NBDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_11D14();
    }

    [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
  }
}

- (void)_handleSyncInfoDidUpdateNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];

  v6 = NBDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4 == v5)
  {
    if (v7)
    {
      sub_11D7C();
    }

    [(NBBridgeSyncedAudiobooksController *)self _updateHeaderAndSyncProgressIfNeeded];
  }

  else
  {
    if (v7)
    {
      sub_11D48();
    }
  }
}

- (void)_handleSyncManagerSyncStateDidChangeNotification:(id)a3
{
  v4 = NBDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_11DB0();
  }

  [(NBBridgeSyncedAudiobooksController *)self _updateHeaderAndSyncProgressIfNeeded];
}

- (void)_handleApplicationWillEnterForegroundNotification:(id)a3
{
  v3 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
  [v3 beginObservingSyncInfo];
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3
{
  v3 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
  [v3 endObservingSyncInfo];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NBBridgeSyncedAudiobooksController *)self specifierAtIndexPath:v7];
  if ([(NBBridgeSyncedAudiobooksController *)self editable])
  {
    v9 = [v8 identifier];
    v10 = NBBundle();
    v11 = [v10 localizedStringForKey:@"Add Audiobook\\U2026" value:&stru_20DE8 table:0];
    v12 = [v9 isEqualToString:v11];

    if (v12)
    {
      [(NBBridgeSyncedAudiobooksController *)self setEditable:0];
    }
  }

  v15.receiver = self;
  v15.super_class = NBBridgeSyncedAudiobooksController;
  v13 = [(NBBridgeSyncedAudiobooksController *)&v15 tableView:v6 willSelectRowAtIndexPath:v7];

  return v13;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 section];
  if (v10 == [v8 numberOfSections] - 1)
  {
    v11 = [(NBBridgeSyncedAudiobooksController *)self specifierAtIndexPath:v9];
    v12 = [v11 propertyForKey:NMBUISpecifierModelObjectKey];
    objc_opt_class();
    v13 = BUDynamicCast();
    v14 = v13;
    if (v13)
    {
      v15 = [v13 bk_storeID];
      if (!v15)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_class();
      v17 = BUDynamicCast();
      v18 = v17;
      if (v17)
      {
        v19 = [v17 storeID];
        v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 nb_uint64_t]);
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v16 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    [v16 unpinAudiobook:v15];

    [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
    goto LABEL_5;
  }

LABEL_6:
  v20.receiver = self;
  v20.super_class = NBBridgeSyncedAudiobooksController;
  [(NBBridgeSyncedAudiobooksController *)&v20 tableView:v8 commitEditingStyle:a4 forRowAtIndexPath:v9];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(NBBridgeSyncedAudiobooksController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"kNanoBooksCellIsEditable"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)selectAudiobookDidSelectAudiobookWithAdamId:(id)a3
{
  v4 = a3;
  v5 = +[NBAudiobookRecommendationManager sharedManager];
  [v5 updateBitRateForAdamID:v4];

  v6 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  [v6 pinAudiobook:v4];

  [(NBBridgeSyncedAudiobooksController *)self dismissViewControllerAnimated:1 completion:0];

  [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
}

- (BOOL)selectAudiobookAdamIdAlreadyPinned:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(NBBridgeSyncedAudiobooksController *)self manuallyPinnedAudiobookIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (PSSpecifier)signInSpecifier
{
  signInSpecifier = self->_signInSpecifier;
  if (!signInSpecifier)
  {
    v4 = NBBundle();
    v5 = [v4 localizedStringForKey:@"Sign In" value:&stru_20DE8 table:0];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_signInSpecifier;
    self->_signInSpecifier = v6;

    [(PSSpecifier *)self->_signInSpecifier setButtonAction:"_iTunesSignInAction:"];
    signInSpecifier = self->_signInSpecifier;
  }

  return signInSpecifier;
}

- (PSSpecifier)audiobookStoreSpecifier
{
  audiobookStoreSpecifier = self->_audiobookStoreSpecifier;
  if (!audiobookStoreSpecifier)
  {
    v4 = NBBundle();
    v5 = [v4 localizedStringForKey:@"Audiobook_Store_Button_Text" value:@"Audiobook Store" table:0];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_audiobookStoreSpecifier;
    self->_audiobookStoreSpecifier = v6;

    [(PSSpecifier *)self->_audiobookStoreSpecifier setButtonAction:"_showAudiobookStore:"];
    audiobookStoreSpecifier = self->_audiobookStoreSpecifier;
  }

  return audiobookStoreSpecifier;
}

- (void)_showReadingNowWantToRead:(id)a3
{
  v4 = [NSURL URLWithString:@"ibooks://show-reading-now"];
  v3 = +[UIApplication sharedApplication];
  [v3 openURL:v4 withCompletionHandler:&stru_20B58];
}

- (void)_showAudiobookStore:(id)a3
{
  v4 = [NSURL URLWithString:@"ibooks://show-audiobook-store"];
  v3 = +[UIApplication sharedApplication];
  [v3 openURL:v4 withCompletionHandler:&stru_20B78];
}

- (void)_iTunesSignInAction:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=STORE_SERVICE"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)_iCloudSignInAction:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)_updateHeaderAndSyncProgressIfNeeded
{
  if (![(NBBridgeSyncedAudiobooksController *)self isViewLoaded])
  {
    v6 = NBDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "[progress] Ignoring media sync info update due to view not being loaded.";
      v8 = &v9;
LABEL_10:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }

LABEL_11:

    return;
  }

  v3 = [(NBBridgeSyncedAudiobooksController *)self view];
  v4 = [v3 window];

  if (!v4)
  {
    self->_needsVisibleSpecifiersSyncInfoUpdate = 1;
    v6 = NBDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "[progress] Ignoring media sync info update due to view not being visible.";
      v8 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = NBDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_11DE4();
  }

  [(NBBridgeSyncedAudiobooksController *)self _configureHeaderIfNeeded];
  [(NBBridgeSyncedAudiobooksController *)self _updateProgressIfNeeded];
  self->_needsVisibleSpecifiersSyncInfoUpdate = 0;
}

- (void)_updateFooterIfNeeded
{
  if ([(NBBridgeSyncedAudiobooksController *)self isViewLoaded])
  {
    if ([(NBBridgeSyncedAudiobooksController *)self isRefreshingFamily]&& ![(NBBridgeSyncedAudiobooksController *)self _hasPurchasedAudiobooks])
    {
      v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
      [v4 startAnimating];
    }

    else
    {
      v4 = 0;
    }

    v3 = [(NBBridgeSyncedAudiobooksController *)self table];
    [v3 setTableFooterView:v4];
  }
}

- (NMBUIAlertHeaderView)alertHeaderView
{
  alertHeaderView = self->_alertHeaderView;
  if (!alertHeaderView)
  {
    v4 = [[NMBUIAlertHeaderView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_alertHeaderView;
    self->_alertHeaderView = v4;

    v6 = +[UIColor systemYellowColor];
    [(NMBUIAlertHeaderView *)self->_alertHeaderView setTintColor:v6];

    v7 = NBBundle();
    v8 = [v7 localizedStringForKey:@"Out of Media Storage" value:&stru_20DE8 table:0];
    v9 = [(NMBUIAlertHeaderView *)self->_alertHeaderView textLabel];
    [v9 setText:v8];

    v10 = NBBundle();
    v11 = [v10 localizedStringForKey:@"The storage space dedicated to media on your Apple\\U00A0Watch is full. To make space available value:you can remove some podcasts table:{music, or audiobooks.", &stru_20DE8, 0}];
    v12 = [(NMBUIAlertHeaderView *)self->_alertHeaderView detailTextLabel];
    [v12 setText:v11];

    [(NMBUIAlertHeaderView *)self->_alertHeaderView setPreservesSuperviewLayoutMargins:1];
    alertHeaderView = self->_alertHeaderView;
  }

  return alertHeaderView;
}

- (void)_configureHeaderIfNeeded
{
  if ([(NBBridgeSyncedAudiobooksController *)self isViewLoaded])
  {
    v3 = NBDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_11E18();
    }

    v4 = [[NMBUIContentHeaderView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = [(NBBridgeSyncedAudiobooksController *)self _contentHeaderViewTitle];
    v6 = [v4 textLabel];
    [v6 setText:v5];

    v7 = [(NBBridgeSyncedAudiobooksController *)self _contentHeaderViewSubtitle];
    v8 = [v4 detailTextLabel];
    [v8 setText:v7];

    [v4 setPreservesSuperviewLayoutMargins:1];
    if ([(NBBridgeSyncedAudiobooksController *)self _shouldShowProgress])
    {
      [(NBBridgeSyncedAudiobooksController *)self _contentHeaderViewProgress];
      v10 = v9;
      v11 = [v4 progressView];
      LODWORD(v12) = v10;
      [v11 setProgress:v12];

      v13 = NBDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_11E4C(v4, v13);
      }
    }

    v14 = +[NSMutableArray array];
    if ([(NBBridgeSyncedAudiobooksController *)self isOutOfSpace])
    {
      v15 = NBDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_11EEC();
      }

      v16 = [(NBBridgeSyncedAudiobooksController *)self alertHeaderView];
      [v14 addObject:v16];
    }

    [v14 addObject:v4];
    v17 = [[UIStackView alloc] initWithArrangedSubviews:v14];
    [v17 setAxis:1];
    [v17 setPreservesSuperviewLayoutMargins:1];
    v18 = [(NBBridgeSyncedAudiobooksController *)self table];
    [v18 setTableHeaderView:v17];

    [(NBBridgeSyncedAudiobooksController *)self _updateHeaderSize];
  }
}

- (void)_updateHeaderSize
{
  if ([(NBBridgeSyncedAudiobooksController *)self isViewLoaded])
  {
    v3 = [(NBBridgeSyncedAudiobooksController *)self table];
    v14 = [v3 tableHeaderView];

    v4 = [v14 superview];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    LODWORD(v5) = 1148846080;
    LODWORD(v7) = 1112014848;
    [v14 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:v8 verticalFittingPriority:{v5, v7}];
    v10 = v9;
    v12 = v11;

    [v14 setBounds:{0.0, 0.0, v10, v12}];
    v13 = [(NBBridgeSyncedAudiobooksController *)self table];
    [v13 setTableHeaderView:v14];
  }
}

- (void)_updateProgressIfNeeded
{
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v2 = [(NBBridgeSyncedAudiobooksController *)self specifiers];
  v3 = [v2 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v45;
    v7 = NMBUISpecifierShouldShowDownloadInfoKey;
    v39 = NMBUISpecifierModelObjectKey;
    v43 = NMBUISpecifierDownloadStateKey;
    v42 = NMBUISpecifierDownloadProgressKey;
    v35 = NMBUISpecifierTitleKey;
    *&v4 = 134219010;
    v34 = v4;
    v36 = *v45;
    v37 = v2;
    v38 = NMBUISpecifierShouldShowDownloadInfoKey;
    do
    {
      v8 = 0;
      v40 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = [v9 propertyForKey:{v7, v34}];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          v12 = [v9 propertyForKey:v39];
          v13 = [v9 propertyForKey:v43];
          v14 = [v13 unsignedIntegerValue];

          v15 = [v9 propertyForKey:v42];
          [v15 floatValue];
          v17 = v16;

          if (v12)
          {
            v18 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
            v19 = -[NBBridgeSyncedAudiobooksController _resolvedProgressViewStateForState:](self, "_resolvedProgressViewStateForState:", [v18 downloadStateForModelObject:v12]);

            v20 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
            [v20 progressForModelObject:v12];
            v22 = v21;

            if (v14 != v19 || vabds_f32(v17, v22) > 0.00000011921)
            {
              v23 = [v9 propertyForKey:v35];
              v24 = NBDefaultLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v32 = sub_BA48(v14);
                v33 = sub_BA48(v19);
                *buf = v34;
                v49 = v17;
                v50 = 2048;
                v51 = v22;
                v52 = 2114;
                v53 = v32;
                v54 = 2114;
                v55 = v33;
                v56 = 2112;
                v57 = v23;
                _os_log_debug_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "[progress] oldProgress:%.4f newProgress:%.4f oldState:%{public}@ newState:%{public}@ title:%@", buf, 0x34u);
              }

              objc_opt_class();
              v25 = [(NBBridgeSyncedAudiobooksController *)self table];
              v26 = [(NBBridgeSyncedAudiobooksController *)self indexPathForSpecifier:v9];
              v27 = [v25 cellForRowAtIndexPath:v26];
              v28 = BUDynamicCast();

              v29 = [NSNumber numberWithUnsignedInteger:v19];
              [v9 setProperty:v29 forKey:v43];

              *&v30 = v22;
              v31 = [NSNumber numberWithFloat:v30];
              [v9 setProperty:v31 forKey:v42];

              [v28 refreshCellContentsWithSpecifier:v9];
              v6 = v36;
              v2 = v37;
            }
          }

          v7 = v38;
          v5 = v40;
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v5);
  }
}

- (BOOL)isOutOfSpace
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v8 = [v6 supportsCapability:v7];

  if (!v8)
  {
    return 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
  v10 = [v9 syncInfo];
  v11 = [v10 containers];

  v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
        v18 = [v17 syncInfo];
        v19 = [v18 numberOfItemsOverStorageLimitForContainer:v16];

        if (v19)
        {
          v21 = NBDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
            v23 = [v22 syncInfo];
            v24 = [v23 numberOfItemsOverStorageLimitForContainer:v16];
            *buf = 134218242;
            v31 = v24;
            v32 = 2112;
            v33 = v16;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "[progress] out of space with %lu items over limit for container %@.", buf, 0x16u);
          }

          v20 = 1;
          goto LABEL_15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_15:

  return v20;
}

- (BOOL)_shouldShowProgress
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"BKShowAudiobookSyncProgress"];

  if (v4)
  {
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    v6 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v7 = [v5 getAllDevicesWithArchivedAltAccountDevicesMatching:v6];
    v8 = [v7 firstObject];
    v9 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
    v10 = [v8 supportsCapability:v9];

    if (!v10)
    {
      v13 = [(NBBridgeSyncedAudiobooksController *)self syncManager];
      v14 = [v13 audiobooksProgressInfo];
      v15 = [v14 syncState] == &dword_0 + 1;
      goto LABEL_9;
    }

    v11 = [(NBBridgeSyncedAudiobooksController *)self _hasPinnedAudiobooks];
    v12 = NBDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_11F20(self, v11, v12);
    }

    if (v11)
    {
      v13 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
      v14 = [v13 syncInfo];
      v15 = [v14 status] != &dword_4;
LABEL_9:

      return v15;
    }
  }

  return 0;
}

- (unint64_t)_resolvedProgressViewStateForState:(unint64_t)a3
{
  v5 = [(NBBridgeSyncedAudiobooksController *)self syncManager];
  v6 = [v5 audiobooksProgressInfo];
  if ([v6 syncState] == &dword_0 + 3)
  {
    v7 = [(NBBridgeSyncedAudiobooksController *)self syncManager];
    v8 = [v7 audiobooksProgressInfo];
    v9 = [v8 syncWaitingSubstate];

    v10 = v9 & 1;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {

    v10 = 0;
    v11 = 3;
  }

  v12 = NBDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_12008(self, v10, v12);
  }

  if (a3 == 1)
  {
    a3 = v11;
  }

  return a3;
}

- (id)_contentHeaderViewTitle
{
  v2 = [(NBBridgeSyncedAudiobooksController *)self _pinnedAudiobooks];
  v3 = [v2 count];
  v4 = NBBundle();
  v5 = v4;
  if (v3)
  {
    if (v3 == &dword_0 + 1)
    {
      v6 = @"%@ Audiobook";
    }

    else
    {
      v6 = @"%@ Audiobooks";
    }

    v7 = [v4 localizedStringForKey:v6 value:&stru_20DE8 table:0];

    v8 = [NSNumber numberWithUnsignedInteger:v3];
    v9 = [NSString stringWithFormat:v7, v8];

    v5 = v7;
  }

  else
  {
    v9 = [v4 localizedStringForKey:@"No Audiobooks" value:&stru_20DE8 table:0];
  }

  return v9;
}

- (id)_contentHeaderViewSubtitle
{
  v3 = [(NBBridgeSyncedAudiobooksController *)self _pinnedAudiobooks];
  if ([v3 count])
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
    v7 = [v6 firstObject];
    v8 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
    v9 = [v7 supportsCapability:v8];

    v10 = [(NBBridgeSyncedAudiobooksController *)self syncManager];
    v11 = [v10 audiobooksProgressInfo];
    v12 = v11;
    if (v9)
    {
      v13 = [v11 _syncProgressTextForMediaType:2];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v19 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
        v15 = [v19 syncStatusDetailText];
      }
    }

    else
    {
      v15 = [v11 _trackProgressTextForMediaType:2];
    }
  }

  else
  {
    v16 = [(NBBridgeSyncedAudiobooksController *)self isStoreAvailable];
    v17 = NBBundle();
    v10 = v17;
    if (v16)
    {
      v18 = @"You can choose to automatically download your current audiobooks to your Apple\\U00A0Watch, or manually add them from your library.";
    }

    else
    {
      v18 = @"The Audiobook Store isn\\U2019t available in your country or region.";
    }

    v15 = [v17 localizedStringForKey:v18 value:&stru_20DE8 table:0];
  }

  return v15;
}

- (float)_contentHeaderViewProgress
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    v10 = [v9 syncInfo];
    v11 = [v10 status];

    v12 = +[NMSSyncManager sharedManager];
    v13 = [v12 audiobooksProgressInfo];
    v14 = [v13 _isSyncing];

    if (v11 == &dword_0 + 3 || (v15 = 0.0, v14))
    {
      v16 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
      v17 = [v16 syncInfo];
      [v17 progress];
      v15 = v18;
    }

    v19 = NBDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
      v21 = [v20 syncInfo];
      [v21 progress];
      v23 = v22;
      v24 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
      v25 = [v24 syncInfo];
      v26 = [v25 status];
      if (v26 > 4)
      {
        v27 = @"unknown";
      }

      else
      {
        v27 = off_20BD0[v26];
      }

      v32 = 134218498;
      v33 = v23;
      v34 = 2114;
      v35 = v27;
      v36 = 1024;
      v37 = v14;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "[progress] calculating syncInfo.progress:%.4f syncInfoStatus:%{public}@ isSyncing:%d", &v32, 0x1Cu);
    }
  }

  else
  {
    v28 = [(NBBridgeSyncedAudiobooksController *)self syncManager];
    v29 = [v28 audiobooksProgressInfo];
    [v29 estimatedSyncProgress];
    v15 = v30;
  }

  return v15;
}

- (void)_showSyncStorageWarning
{
  v3 = NBDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NBBridgeSyncedAudiobooksController *)self isOutOfSpace];
    v5 = [(NBBridgeSyncedAudiobooksController *)self _pinnedAudiobooks];
    v15[0] = 67109376;
    v15[1] = v4;
    v16 = 2048;
    v17 = [v5 count];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "_showSyncStorageWarning - _isOutOfSpace:%d; want <%lu>", v15, 0x12u);
  }

  v6 = NBBundle();
  v7 = [v6 localizedStringForKey:@"The storage space dedicated to media on your Apple\\U00A0Watch is full." value:&stru_20DE8 table:0];
  v8 = NBBundle();
  v9 = [v8 localizedStringForKey:@"To make space available value:you can remove some podcasts table:{music, or audiobooks.", &stru_20DE8, 0}];
  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = NBBundle();
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_20DE8 table:0];
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:0];
  [v10 addAction:v13];

  v14 = [(NBBridgeSyncedAudiobooksController *)self _selfOrPresentedViewController];
  [v14 presentViewController:v10 animated:1 completion:0];
}

- (void)familyCircleDataSource:(id)a3 didFetchFamilyCircle:(id)a4
{
  v5 = a4;
  if ([(NBBridgeSyncedAudiobooksController *)self isRefreshingFamily])
  {
    [(NBBridgeSyncedAudiobooksController *)self _updateFamilyCircle:v5];
  }
}

- (id)syncInfoController:(id)a3 containerIdentifierForModelObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 bk_storeID];
    v10 = [v9 stringValue];
  }

  else
  {
    objc_opt_class();
    v11 = BUDynamicCast();
    v9 = v11;
    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v10 = [v11 storeID];
  }

  v12 = v10;
LABEL_6:

  if ([v12 length] && (objc_msgSend(v5, "syncInfo"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "containers"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v12), v14, v13, v15))
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_specifierWithItem:(id)a3 showDownloadInfo:(BOOL)a4 showWarningIfAboveQuota:(BOOL)a5 downloadLimit:(unint64_t)a6
{
  v36 = a5;
  v37 = a4;
  v8 = a3;
  v9 = [v8 title];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v11 = [v8 title];
  [v10 setProperty:v11 forKey:NMBUISpecifierTitleKey];

  v12 = [v8 artist];
  [v10 setProperty:v12 forKey:NMBUISpecifierSubtitleKey];

  [v10 setProperty:&off_21A80 forKey:PSTableCellStyleOverrideKey];
  v13 = [v8 artworkCatalog];
  [v10 setProperty:v13 forKey:NMBUISpecifierArtworkCatalogKey];

  v14 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v10 setProperty:v14 forKey:NMBUISpecifierPlaceholderImageKey];

  [v10 setProperty:v8 forKey:NMBUISpecifierModelObjectKey];
  v15 = [v8 bk_storeID];
  v16 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v15 downloadLimit:a6 manuallyAdded:1 downloadedItemsOnly:0];

  v17 = +[NRPairedDeviceRegistry sharedInstance];
  v18 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v19 = [v17 getAllDevicesWithArchivedAltAccountDevicesMatching:v18];
  v20 = [v19 firstObject];
  v21 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v22 = [v20 supportsCapability:v21];

  if (v22 && v37)
  {
    v23 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    v24 = [v23 downloadStateForModelObject:v8];

    v25 = [(NBBridgeSyncedAudiobooksController *)self _resolvedProgressViewStateForState:v24];
    v26 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    [v26 progressForModelObject:v8];
    v28 = v27;

    [v10 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowDownloadInfoKey];
    v29 = [NSNumber numberWithUnsignedInteger:v25];
    [v10 setProperty:v29 forKey:NMBUISpecifierDownloadStateKey];

    LODWORD(v30) = v28;
    v31 = [NSNumber numberWithFloat:v30];
    v32 = &NMBUISpecifierDownloadProgressKey;
LABEL_4:
    [v10 setProperty:v31 forKey:*v32];

    goto LABEL_7;
  }

  if (v36)
  {
    v33 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    v34 = [v33 isItemGroupWithinQuota:v16];

    if ((v34 & 1) == 0)
    {
      [v10 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowExclamationIconKey];
      [v10 setProperty:self forKey:NMBUISpecifierIconTargetKey];
      v31 = NSStringFromSelector("_showSyncStorageWarning");
      v32 = &NMBUISpecifierIconActionStringKey;
      goto LABEL_4;
    }
  }

LABEL_7:

  return v10;
}

- (id)_specifierWithJaliscoItem:(id)a3 showDownloadInfo:(BOOL)a4 showWarningIfAboveQuota:(BOOL)a5 downloadLimit:(unint64_t)a6
{
  v36 = a5;
  v37 = a4;
  v8 = a3;
  v9 = [v8 title];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v11 = [v8 title];
  [v10 setProperty:v11 forKey:NMBUISpecifierTitleKey];

  v12 = [v8 artist];
  [v10 setProperty:v12 forKey:NMBUISpecifierSubtitleKey];

  [v10 setProperty:&off_21A80 forKey:PSTableCellStyleOverrideKey];
  v13 = [v8 artworkCatalog];
  [v10 setProperty:v13 forKey:NMBUISpecifierArtworkCatalogKey];

  v14 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v10 setProperty:v14 forKey:NMBUISpecifierPlaceholderImageKey];

  [v10 setProperty:v8 forKey:NMBUISpecifierModelObjectKey];
  v15 = [v8 storeID];
  v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 nb_uint64_t]);

  v38 = v16;
  v17 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v16 downloadLimit:a6 manuallyAdded:1 downloadedItemsOnly:0];
  v18 = +[NRPairedDeviceRegistry sharedInstance];
  v19 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v20 = [v18 getAllDevicesWithArchivedAltAccountDevicesMatching:v19];
  v21 = [v20 firstObject];
  v22 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  LODWORD(a6) = [v21 supportsCapability:v22];

  if (a6 && v37)
  {
    v23 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    v24 = [v23 downloadStateForModelObject:v8];

    v25 = [(NBBridgeSyncedAudiobooksController *)self _resolvedProgressViewStateForState:v24];
    v26 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    [v26 progressForModelObject:v8];
    v28 = v27;

    [v10 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowDownloadInfoKey];
    v29 = [NSNumber numberWithUnsignedInteger:v25];
    [v10 setProperty:v29 forKey:NMBUISpecifierDownloadStateKey];

    LODWORD(v30) = v28;
    v31 = [NSNumber numberWithFloat:v30];
    v32 = &NMBUISpecifierDownloadProgressKey;
LABEL_4:
    [v10 setProperty:v31 forKey:*v32];

    goto LABEL_7;
  }

  if (v36)
  {
    v33 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    v34 = [v33 isItemGroupWithinQuota:v17];

    if ((v34 & 1) == 0)
    {
      [v10 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowExclamationIconKey];
      [v10 setProperty:self forKey:NMBUISpecifierIconTargetKey];
      v31 = NSStringFromSelector("_showSyncStorageWarning");
      v32 = &NMBUISpecifierIconActionStringKey;
      goto LABEL_4;
    }
  }

LABEL_7:

  return v10;
}

- (id)_selfOrPresentedViewController
{
  v3 = [(NBBridgeSyncedAudiobooksController *)self presentedViewController];

  if (v3)
  {
    v4 = [(NBBridgeSyncedAudiobooksController *)self presentedViewController];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

@end