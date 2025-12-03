@interface NBBridgeSyncedAudiobooksController
+ (id)_addAudiobookImage;
- (BOOL)_hasPinnedAudiobooks;
- (BOOL)_hasPurchasedAudiobooks;
- (BOOL)_shouldShowProgress;
- (BOOL)isOutOfSpace;
- (BOOL)selectAudiobookAdamIdAlreadyPinned:(id)pinned;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
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
- (id)_recommendationSelected:(id)selected;
- (id)_recommendationsGroup;
- (id)_selfOrPresentedViewController;
- (id)_specifierWithItem:(id)item showDownloadInfo:(BOOL)info showWarningIfAboveQuota:(BOOL)quota downloadLimit:(unint64_t)limit;
- (id)_specifierWithJaliscoItem:(id)item showDownloadInfo:(BOOL)info showWarningIfAboveQuota:(BOOL)quota downloadLimit:(unint64_t)limit;
- (id)_suggestionSpecifierWithRecommendation:(id)recommendation;
- (id)specifiers;
- (id)syncInfoController:(id)controller containerIdentifierForModelObject:(id)object;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (unint64_t)_resolvedProgressViewStateForState:(unint64_t)state;
- (void)_addAudiobookAction;
- (void)_configureHeaderIfNeeded;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)notification;
- (void)_handleApplicationWillEnterForegroundNotification:(id)notification;
- (void)_handleAudiobookPinningSelectionsDidChangeNotification:(id)notification;
- (void)_handleSyncInfoDidUpdateNotification:(id)notification;
- (void)_handleSyncManagerSyncStateDidChangeNotification:(id)notification;
- (void)_iCloudSignInAction:(id)action;
- (void)_iTunesSignInAction:(id)action;
- (void)_pinningAudiobooksContentsInvalidated:(id)invalidated;
- (void)_refreshFamilyOwnedAudiobooks;
- (void)_reloadContents;
- (void)_requestAudiobooks;
- (void)_requestRecommendations;
- (void)_restrictionsDidChange:(id)change;
- (void)_setRecommendationSelected:(id)selected withSpecifier:(id)specifier;
- (void)_showAudiobookStore:(id)store;
- (void)_showReadingNowWantToRead:(id)read;
- (void)_showSyncStorageWarning;
- (void)_updateFamilyCircle:(id)circle;
- (void)_updateFooterIfNeeded;
- (void)_updateHeaderAndSyncProgressIfNeeded;
- (void)_updateHeaderSize;
- (void)_updateProgressIfNeeded;
- (void)dealloc;
- (void)familyCircleDataSource:(id)source didFetchFamilyCircle:(id)circle;
- (void)selectAudiobookDidSelectAudiobookWithAdamId:(id)id;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
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
    pinningManager = [(NBBridgeSyncedAudiobooksController *)v2 pinningManager];
    [pinningManager setAudiobookDownloadLimit:18000.0];

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
    firstObject = [v13 firstObject];
    v15 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
    v16 = [firstObject supportsCapability:v15];

    if (v16)
    {
      [v10 addObserver:v2 selector:"_handleSyncInfoDidUpdateNotification:" name:NMBUIMediaSyncInfoDidUpdateNotification object:0];
      [v10 addObserver:v2 selector:"_handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
      [v10 addObserver:v2 selector:"_handleApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
    }

    v2->_allowsExplicitAudiobooks = +[NBBridgeUtilities isExplicitMaterialAllowed];
    v17 = BUBooksGroupContainerIdentifier;
    v18 = [LSBundleProxy bundleProxyForIdentifier:@"com.apple.iBooks"];
    dataContainerURL = [v18 dataContainerURL];
    v20 = +[NSURL bu_booksGroupContainerURL];
    [BDSUserPreferencesSync copyChangedLocalPreferencesToGroupContainerWithAppSuiteName:@"com.apple.iBooks" container:dataContainerURL groupName:v17 groupContainer:v20];
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
  table = [(NBBridgeSyncedAudiobooksController *)self table];
  [table setAllowsSelectionDuringEditing:1];

  pinningManager = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  pinnedAudiobooks = [pinningManager pinnedAudiobooks];
  -[NBBridgeSyncedAudiobooksController setEditingButtonHidden:animated:](self, "setEditingButtonHidden:animated:", [pinnedAudiobooks count] == 0, 0);

  [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
  v6 = +[NBAudiobookRecommendationManager sharedManager];
  pinningManager2 = [v6 pinningManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7F14;
  v8[3] = &unk_20AC0;
  v8[4] = self;
  [pinningManager2 audiobookStoreEnabledWithCompletion:v8];
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
      audiobookSpecifiers = NBDefaultLog();
      if (os_log_type_enabled(audiobookSpecifiers, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_0, audiobookSpecifiers, OS_LOG_TYPE_DEFAULT, "Store is disabled.", v23, 2u);
      }

      goto LABEL_15;
    }

    if ([(NBBridgeSyncedAudiobooksController *)self hasStoreAccount])
    {
      if ([(NBBridgeSyncedAudiobooksController *)self _hasPurchasedAudiobooks])
      {
        _recommendationsGroup = [(NBBridgeSyncedAudiobooksController *)self _recommendationsGroup];
        [v5 addObjectsFromArray:_recommendationsGroup];

        libraryGroupSpecifier = [(NBBridgeSyncedAudiobooksController *)self libraryGroupSpecifier];
        [v5 addObject:libraryGroupSpecifier];

        addAudiobookSpecifier = [(NBBridgeSyncedAudiobooksController *)self addAudiobookSpecifier];
        [v5 addObject:addAudiobookSpecifier];

        audiobookSpecifiers = [(NBBridgeSyncedAudiobooksController *)self audiobookSpecifiers];
        [v5 addObjectsFromArray:audiobookSpecifiers];
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

      audiobookSpecifiers = [PSSpecifier groupSpecifierWithID:@"NBNoStoreBooksGroupSpecifierID" name:0];
      v25[0] = audiobookSpecifiers;
      audiobookStoreSpecifier = [(NBBridgeSyncedAudiobooksController *)self audiobookStoreSpecifier];
      v25[1] = audiobookStoreSpecifier;
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

      audiobookSpecifiers = [PSSpecifier groupSpecifierWithID:@"NBSignIntoITunesGroupSpecifierID" name:0];
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
      [audiobookSpecifiers setProperty:v15 forKey:PSFooterTextGroupKey];

      v24[0] = audiobookSpecifiers;
      audiobookStoreSpecifier = [(NBBridgeSyncedAudiobooksController *)self signInSpecifier];
      v24[1] = audiobookStoreSpecifier;
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

- (void)_updateFamilyCircle:(id)circle
{
  circleCopy = circle;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = circleCopy;
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
          iTunesDSID = [v9 iTunesDSID];
          v11 = iTunesDSID == 0;

          if (!v11)
          {
            iTunesDSID2 = [v9 iTunesDSID];
            [v4 addObject:iTunesDSID2];
          }

          iCloudDSID = [v9 iCloudDSID];
          if (iCloudDSID)
          {
            iTunesDSID3 = [v9 iTunesDSID];
            iCloudDSID2 = [v9 iCloudDSID];
            v16 = [iTunesDSID3 isEqualToNumber:iCloudDSID2];

            if (v16)
            {
              iCloudDSID3 = [v9 iCloudDSID];
              [v4 addObject:iCloudDSID3];
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  [(NBBridgeSyncedAudiobooksController *)self setFamilyDSIDs:v4];
  familyDSIDs = [(NBBridgeSyncedAudiobooksController *)self familyDSIDs];
  v19 = [familyDSIDs count] == 0;

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
  collections = [v3 collections];
  v5 = [collections count];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    familyDSIDs = [(NBBridgeSyncedAudiobooksController *)self familyDSIDs];
    v8 = [familyDSIDs count];

    if (v8)
    {
      v9 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
      familyDSIDs2 = [(NBBridgeSyncedAudiobooksController *)self familyDSIDs];
      v11 = [v9 fetchAllServerItemsForDSIDs:familyDSIDs2];
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
  recommendationSpecifiers = [(NBBridgeSyncedAudiobooksController *)self recommendationSpecifiers];
  [v3 addObjectsFromArray:recommendationSpecifiers];

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
    _addAudiobookImage = [objc_opt_class() _addAudiobookImage];
    [(PSSpecifier *)v11 setProperty:_addAudiobookImage forKey:NMBUISpecifierPlaceholderImageKey];

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
  pinningManager = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  pinnedAudiobooks = [pinningManager pinnedAudiobooks];
  array = [pinnedAudiobooks array];
  [v3 addObjectsFromArray:array];

  pinningManager2 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  LODWORD(pinnedAudiobooks) = [pinningManager2 isWantToReadEnabled];

  if (pinnedAudiobooks)
  {
    v8 = NBDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Want to read is enabled.", buf, 2u);
    }

    pinningManager3 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    wantToReadAudiobooks = [pinningManager3 wantToReadAudiobooks];
    array2 = [wantToReadAudiobooks array];
    [v3 addObjectsFromArray:array2];
  }

  pinningManager4 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  isReadingNowEnabled = [pinningManager4 isReadingNowEnabled];

  if (isReadingNowEnabled)
  {
    v14 = NBDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Reading now is enabled.", v19, 2u);
    }

    pinningManager5 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    readingNowAudiobooks = [pinningManager5 readingNowAudiobooks];
    array3 = [readingNowAudiobooks array];
    [v3 addObjectsFromArray:array3];
  }

  return v3;
}

- (BOOL)_hasPinnedAudiobooks
{
  pinningManager = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  pinnedAudiobooks = [pinningManager pinnedAudiobooks];
  if (![pinnedAudiobooks count])
  {
    pinningManager2 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    isWantToReadEnabled = [pinningManager2 isWantToReadEnabled];
    if (isWantToReadEnabled && (-[NBBridgeSyncedAudiobooksController pinningManager](self, "pinningManager"), v2 = objc_claimAutoreleasedReturnValue(), [v2 wantToReadAudiobooks], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "count")))
    {
      v7 = 1;
    }

    else
    {
      pinningManager3 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
      if ([pinningManager3 isReadingNowEnabled])
      {
        pinningManager4 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
        readingNowAudiobooks = [pinningManager4 readingNowAudiobooks];
        v7 = [readingNowAudiobooks count] != 0;

        if ((isWantToReadEnabled & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {

        v7 = 0;
        if (!isWantToReadEnabled)
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
  hasStoreAccount = [(NBBridgeSyncedAudiobooksController *)self hasStoreAccount];
  hasCloudAccount = [(NBBridgeSyncedAudiobooksController *)self hasCloudAccount];
  v5 = +[NMBUIAccountUtil sharedInstance];
  -[NBBridgeSyncedAudiobooksController setStoreAccount:](self, "setStoreAccount:", [v5 hasITunesAccount]);

  v6 = +[BUAccountsProvider sharedProvider];
  -[NBBridgeSyncedAudiobooksController setCloudAccount:](self, "setCloudAccount:", [v6 isUserSignedInToiCloud]);

  if (hasStoreAccount != [(NBBridgeSyncedAudiobooksController *)self hasStoreAccount]|| hasCloudAccount != [(NBBridgeSyncedAudiobooksController *)self hasCloudAccount])
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

- (id)_suggestionSpecifierWithRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  title = [recommendationCopy title];
  subtitle = [recommendationCopy subtitle];
  artworkCatalog = [recommendationCopy artworkCatalog];
  v8 = [(NBBridgeSyncedAudiobooksController *)self _specifierWithTitle:title subtitle:subtitle artworkCatalog:artworkCatalog showSwitch:1 set:"_setRecommendationSelected:withSpecifier:" get:"_recommendationSelected:"];

  [v8 setProperty:recommendationCopy forKey:NMBUISpecifierModelObjectKey];
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
  firstObject = [v7 firstObject];
  v9 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v10 = [firstObject supportsCapability:v9];

  pinningManager = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  [pinningManager audiobookDownloadLimit];
  v13 = v12;

  pinningManager2 = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  pinnedAudiobooks = [pinningManager2 pinnedAudiobooks];
  array = [pinnedAudiobooks array];

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
  [array enumerateAdamIDsUsingBlock:v21];
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

- (void)_setRecommendationSelected:(id)selected withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selectedCopy = selected;
  objc_opt_class();
  v7 = [specifierCopy propertyForKey:NMBUISpecifierModelObjectKey];

  v8 = BUDynamicCast();

  objc_opt_class();
  v9 = BUDynamicCast();

  [v8 setSelected:{objc_msgSend(v9, "BOOLValue")}];
  v10 = +[NBAudiobookRecommendationManager sharedManager];
  v12 = v8;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [v10 persistRecommendationsSelections:v11];
}

- (id)_recommendationSelected:(id)selected
{
  selectedCopy = selected;
  objc_opt_class();
  v5 = [selectedCopy propertyForKey:NMBUISpecifierModelObjectKey];

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

- (void)_restrictionsDidChange:(id)change
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

- (void)_pinningAudiobooksContentsInvalidated:(id)invalidated
{
  [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
  v3 = +[NBAudiobookRecommendationManager sharedManager];
  [v3 reloadRecommendationsIfNeeded:0];
}

- (void)_handleAudiobookPinningSelectionsDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:NMSNotificationUserInfoKeyIsInProcessNotification];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v7 = NBDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_11D14();
    }

    [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
  }
}

- (void)_handleSyncInfoDidUpdateNotification:(id)notification
{
  object = [notification object];
  syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];

  v6 = NBDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (object == syncInfoController)
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

- (void)_handleSyncManagerSyncStateDidChangeNotification:(id)notification
{
  v4 = NBDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_11DB0();
  }

  [(NBBridgeSyncedAudiobooksController *)self _updateHeaderAndSyncProgressIfNeeded];
}

- (void)_handleApplicationWillEnterForegroundNotification:(id)notification
{
  syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
  [syncInfoController beginObservingSyncInfo];
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)notification
{
  syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
  [syncInfoController endObservingSyncInfo];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(NBBridgeSyncedAudiobooksController *)self specifierAtIndexPath:pathCopy];
  if ([(NBBridgeSyncedAudiobooksController *)self editable])
  {
    identifier = [v8 identifier];
    v10 = NBBundle();
    v11 = [v10 localizedStringForKey:@"Add Audiobook\\U2026" value:&stru_20DE8 table:0];
    v12 = [identifier isEqualToString:v11];

    if (v12)
    {
      [(NBBridgeSyncedAudiobooksController *)self setEditable:0];
    }
  }

  v15.receiver = self;
  v15.super_class = NBBridgeSyncedAudiobooksController;
  v13 = [(NBBridgeSyncedAudiobooksController *)&v15 tableView:viewCopy willSelectRowAtIndexPath:pathCopy];

  return v13;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [viewCopy numberOfSections] - 1)
  {
    v11 = [(NBBridgeSyncedAudiobooksController *)self specifierAtIndexPath:pathCopy];
    v12 = [v11 propertyForKey:NMBUISpecifierModelObjectKey];
    objc_opt_class();
    v13 = BUDynamicCast();
    v14 = v13;
    if (v13)
    {
      bk_storeID = [v13 bk_storeID];
      if (!bk_storeID)
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
        storeID = [v17 storeID];
        bk_storeID = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [storeID nb_uint64_t]);
      }

      else
      {
        bk_storeID = 0;
      }

      if (!bk_storeID)
      {
        goto LABEL_5;
      }
    }

    pinningManager = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    [pinningManager unpinAudiobook:bk_storeID];

    [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
    goto LABEL_5;
  }

LABEL_6:
  v20.receiver = self;
  v20.super_class = NBBridgeSyncedAudiobooksController;
  [(NBBridgeSyncedAudiobooksController *)&v20 tableView:viewCopy commitEditingStyle:style forRowAtIndexPath:pathCopy];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(NBBridgeSyncedAudiobooksController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"kNanoBooksCellIsEditable"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)selectAudiobookDidSelectAudiobookWithAdamId:(id)id
{
  idCopy = id;
  v5 = +[NBAudiobookRecommendationManager sharedManager];
  [v5 updateBitRateForAdamID:idCopy];

  pinningManager = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
  [pinningManager pinAudiobook:idCopy];

  [(NBBridgeSyncedAudiobooksController *)self dismissViewControllerAnimated:1 completion:0];

  [(NBBridgeSyncedAudiobooksController *)self _reloadContents];
}

- (BOOL)selectAudiobookAdamIdAlreadyPinned:(id)pinned
{
  if (!pinned)
  {
    return 0;
  }

  pinnedCopy = pinned;
  manuallyPinnedAudiobookIdentifiers = [(NBBridgeSyncedAudiobooksController *)self manuallyPinnedAudiobookIdentifiers];
  v6 = [manuallyPinnedAudiobookIdentifiers containsObject:pinnedCopy];

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

- (void)_showReadingNowWantToRead:(id)read
{
  v4 = [NSURL URLWithString:@"ibooks://show-reading-now"];
  v3 = +[UIApplication sharedApplication];
  [v3 openURL:v4 withCompletionHandler:&stru_20B58];
}

- (void)_showAudiobookStore:(id)store
{
  v4 = [NSURL URLWithString:@"ibooks://show-audiobook-store"];
  v3 = +[UIApplication sharedApplication];
  [v3 openURL:v4 withCompletionHandler:&stru_20B78];
}

- (void)_iTunesSignInAction:(id)action
{
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=STORE_SERVICE"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)_iCloudSignInAction:(id)action
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

  view = [(NBBridgeSyncedAudiobooksController *)self view];
  window = [view window];

  if (!window)
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

    table = [(NBBridgeSyncedAudiobooksController *)self table];
    [table setTableFooterView:v4];
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
    textLabel = [(NMBUIAlertHeaderView *)self->_alertHeaderView textLabel];
    [textLabel setText:v8];

    v10 = NBBundle();
    v11 = [v10 localizedStringForKey:@"The storage space dedicated to media on your Apple\\U00A0Watch is full. To make space available value:you can remove some podcasts table:{music, or audiobooks.", &stru_20DE8, 0}];
    detailTextLabel = [(NMBUIAlertHeaderView *)self->_alertHeaderView detailTextLabel];
    [detailTextLabel setText:v11];

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
    _contentHeaderViewTitle = [(NBBridgeSyncedAudiobooksController *)self _contentHeaderViewTitle];
    textLabel = [v4 textLabel];
    [textLabel setText:_contentHeaderViewTitle];

    _contentHeaderViewSubtitle = [(NBBridgeSyncedAudiobooksController *)self _contentHeaderViewSubtitle];
    detailTextLabel = [v4 detailTextLabel];
    [detailTextLabel setText:_contentHeaderViewSubtitle];

    [v4 setPreservesSuperviewLayoutMargins:1];
    if ([(NBBridgeSyncedAudiobooksController *)self _shouldShowProgress])
    {
      [(NBBridgeSyncedAudiobooksController *)self _contentHeaderViewProgress];
      v10 = v9;
      progressView = [v4 progressView];
      LODWORD(v12) = v10;
      [progressView setProgress:v12];

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

      alertHeaderView = [(NBBridgeSyncedAudiobooksController *)self alertHeaderView];
      [v14 addObject:alertHeaderView];
    }

    [v14 addObject:v4];
    v17 = [[UIStackView alloc] initWithArrangedSubviews:v14];
    [v17 setAxis:1];
    [v17 setPreservesSuperviewLayoutMargins:1];
    table = [(NBBridgeSyncedAudiobooksController *)self table];
    [table setTableHeaderView:v17];

    [(NBBridgeSyncedAudiobooksController *)self _updateHeaderSize];
  }
}

- (void)_updateHeaderSize
{
  if ([(NBBridgeSyncedAudiobooksController *)self isViewLoaded])
  {
    table = [(NBBridgeSyncedAudiobooksController *)self table];
    tableHeaderView = [table tableHeaderView];

    superview = [tableHeaderView superview];
    [superview bounds];
    v6 = v5;
    v8 = v7;
    LODWORD(v5) = 1148846080;
    LODWORD(v7) = 1112014848;
    [tableHeaderView systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:v8 verticalFittingPriority:{v5, v7}];
    v10 = v9;
    v12 = v11;

    [tableHeaderView setBounds:{0.0, 0.0, v10, v12}];
    table2 = [(NBBridgeSyncedAudiobooksController *)self table];
    [table2 setTableHeaderView:tableHeaderView];
  }
}

- (void)_updateProgressIfNeeded
{
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  specifiers = [(NBBridgeSyncedAudiobooksController *)self specifiers];
  v3 = [specifiers countByEnumeratingWithState:&v44 objects:v58 count:16];
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
    v37 = specifiers;
    v38 = NMBUISpecifierShouldShowDownloadInfoKey;
    do
    {
      v8 = 0;
      v40 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(specifiers);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = [v9 propertyForKey:{v7, v34}];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {
          v12 = [v9 propertyForKey:v39];
          v13 = [v9 propertyForKey:v43];
          unsignedIntegerValue = [v13 unsignedIntegerValue];

          v15 = [v9 propertyForKey:v42];
          [v15 floatValue];
          v17 = v16;

          if (v12)
          {
            syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
            v19 = -[NBBridgeSyncedAudiobooksController _resolvedProgressViewStateForState:](self, "_resolvedProgressViewStateForState:", [syncInfoController downloadStateForModelObject:v12]);

            syncInfoController2 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
            [syncInfoController2 progressForModelObject:v12];
            v22 = v21;

            if (unsignedIntegerValue != v19 || vabds_f32(v17, v22) > 0.00000011921)
            {
              v23 = [v9 propertyForKey:v35];
              v24 = NBDefaultLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v32 = sub_BA48(unsignedIntegerValue);
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
              table = [(NBBridgeSyncedAudiobooksController *)self table];
              v26 = [(NBBridgeSyncedAudiobooksController *)self indexPathForSpecifier:v9];
              v27 = [table cellForRowAtIndexPath:v26];
              v28 = BUDynamicCast();

              v29 = [NSNumber numberWithUnsignedInteger:v19];
              [v9 setProperty:v29 forKey:v43];

              *&v30 = v22;
              v31 = [NSNumber numberWithFloat:v30];
              [v9 setProperty:v31 forKey:v42];

              [v28 refreshCellContentsWithSpecifier:v9];
              v6 = v36;
              specifiers = v37;
            }
          }

          v7 = v38;
          v5 = v40;
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [specifiers countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v5);
  }
}

- (BOOL)isOutOfSpace
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  firstObject = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v8 = [firstObject supportsCapability:v7];

  if (!v8)
  {
    return 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
  syncInfo = [syncInfoController syncInfo];
  containers = [syncInfo containers];

  v12 = [containers countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(containers);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        syncInfoController2 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
        syncInfo2 = [syncInfoController2 syncInfo];
        v19 = [syncInfo2 numberOfItemsOverStorageLimitForContainer:v16];

        if (v19)
        {
          v21 = NBDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            syncInfoController3 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
            syncInfo3 = [syncInfoController3 syncInfo];
            v24 = [syncInfo3 numberOfItemsOverStorageLimitForContainer:v16];
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

      v13 = [containers countByEnumeratingWithState:&v26 objects:v34 count:16];
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
    firstObject = [v7 firstObject];
    v9 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
    v10 = [firstObject supportsCapability:v9];

    if (!v10)
    {
      syncManager = [(NBBridgeSyncedAudiobooksController *)self syncManager];
      audiobooksProgressInfo = [syncManager audiobooksProgressInfo];
      v15 = [audiobooksProgressInfo syncState] == &dword_0 + 1;
      goto LABEL_9;
    }

    _hasPinnedAudiobooks = [(NBBridgeSyncedAudiobooksController *)self _hasPinnedAudiobooks];
    v12 = NBDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_11F20(self, _hasPinnedAudiobooks, v12);
    }

    if (_hasPinnedAudiobooks)
    {
      syncManager = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
      audiobooksProgressInfo = [syncManager syncInfo];
      v15 = [audiobooksProgressInfo status] != &dword_4;
LABEL_9:

      return v15;
    }
  }

  return 0;
}

- (unint64_t)_resolvedProgressViewStateForState:(unint64_t)state
{
  syncManager = [(NBBridgeSyncedAudiobooksController *)self syncManager];
  audiobooksProgressInfo = [syncManager audiobooksProgressInfo];
  if ([audiobooksProgressInfo syncState] == &dword_0 + 3)
  {
    syncManager2 = [(NBBridgeSyncedAudiobooksController *)self syncManager];
    audiobooksProgressInfo2 = [syncManager2 audiobooksProgressInfo];
    syncWaitingSubstate = [audiobooksProgressInfo2 syncWaitingSubstate];

    v10 = syncWaitingSubstate & 1;
    if (syncWaitingSubstate)
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

  if (state == 1)
  {
    state = v11;
  }

  return state;
}

- (id)_contentHeaderViewTitle
{
  _pinnedAudiobooks = [(NBBridgeSyncedAudiobooksController *)self _pinnedAudiobooks];
  v3 = [_pinnedAudiobooks count];
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
  _pinnedAudiobooks = [(NBBridgeSyncedAudiobooksController *)self _pinnedAudiobooks];
  if ([_pinnedAudiobooks count])
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
    firstObject = [v6 firstObject];
    v8 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
    v9 = [firstObject supportsCapability:v8];

    syncManager = [(NBBridgeSyncedAudiobooksController *)self syncManager];
    audiobooksProgressInfo = [syncManager audiobooksProgressInfo];
    v12 = audiobooksProgressInfo;
    if (v9)
    {
      v13 = [audiobooksProgressInfo _syncProgressTextForMediaType:2];
      v14 = v13;
      if (v13)
      {
        syncStatusDetailText = v13;
      }

      else
      {
        syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
        syncStatusDetailText = [syncInfoController syncStatusDetailText];
      }
    }

    else
    {
      syncStatusDetailText = [audiobooksProgressInfo _trackProgressTextForMediaType:2];
    }
  }

  else
  {
    isStoreAvailable = [(NBBridgeSyncedAudiobooksController *)self isStoreAvailable];
    v17 = NBBundle();
    syncManager = v17;
    if (isStoreAvailable)
    {
      v18 = @"You can choose to automatically download your current audiobooks to your Apple\\U00A0Watch, or manually add them from your library.";
    }

    else
    {
      v18 = @"The Audiobook Store isn\\U2019t available in your country or region.";
    }

    syncStatusDetailText = [v17 localizedStringForKey:v18 value:&stru_20DE8 table:0];
  }

  return syncStatusDetailText;
}

- (float)_contentHeaderViewProgress
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  firstObject = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v8 = [firstObject supportsCapability:v7];

  if (v8)
  {
    syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    syncInfo = [syncInfoController syncInfo];
    status = [syncInfo status];

    v12 = +[NMSSyncManager sharedManager];
    audiobooksProgressInfo = [v12 audiobooksProgressInfo];
    _isSyncing = [audiobooksProgressInfo _isSyncing];

    if (status == &dword_0 + 3 || (v15 = 0.0, _isSyncing))
    {
      syncInfoController2 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
      syncInfo2 = [syncInfoController2 syncInfo];
      [syncInfo2 progress];
      v15 = v18;
    }

    v19 = NBDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      syncInfoController3 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
      syncInfo3 = [syncInfoController3 syncInfo];
      [syncInfo3 progress];
      v23 = v22;
      syncInfoController4 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
      syncInfo4 = [syncInfoController4 syncInfo];
      status2 = [syncInfo4 status];
      if (status2 > 4)
      {
        v27 = @"unknown";
      }

      else
      {
        v27 = off_20BD0[status2];
      }

      v32 = 134218498;
      v33 = v23;
      v34 = 2114;
      v35 = v27;
      v36 = 1024;
      v37 = _isSyncing;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "[progress] calculating syncInfo.progress:%.4f syncInfoStatus:%{public}@ isSyncing:%d", &v32, 0x1Cu);
    }
  }

  else
  {
    syncManager = [(NBBridgeSyncedAudiobooksController *)self syncManager];
    audiobooksProgressInfo2 = [syncManager audiobooksProgressInfo];
    [audiobooksProgressInfo2 estimatedSyncProgress];
    v15 = v30;
  }

  return v15;
}

- (void)_showSyncStorageWarning
{
  v3 = NBDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    isOutOfSpace = [(NBBridgeSyncedAudiobooksController *)self isOutOfSpace];
    _pinnedAudiobooks = [(NBBridgeSyncedAudiobooksController *)self _pinnedAudiobooks];
    v15[0] = 67109376;
    v15[1] = isOutOfSpace;
    v16 = 2048;
    v17 = [_pinnedAudiobooks count];
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

  _selfOrPresentedViewController = [(NBBridgeSyncedAudiobooksController *)self _selfOrPresentedViewController];
  [_selfOrPresentedViewController presentViewController:v10 animated:1 completion:0];
}

- (void)familyCircleDataSource:(id)source didFetchFamilyCircle:(id)circle
{
  circleCopy = circle;
  if ([(NBBridgeSyncedAudiobooksController *)self isRefreshingFamily])
  {
    [(NBBridgeSyncedAudiobooksController *)self _updateFamilyCircle:circleCopy];
  }
}

- (id)syncInfoController:(id)controller containerIdentifierForModelObject:(id)object
{
  controllerCopy = controller;
  objectCopy = object;
  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    bk_storeID = [v7 bk_storeID];
    stringValue = [bk_storeID stringValue];
  }

  else
  {
    objc_opt_class();
    v11 = BUDynamicCast();
    bk_storeID = v11;
    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }

    stringValue = [v11 storeID];
  }

  v12 = stringValue;
LABEL_6:

  if ([v12 length] && (objc_msgSend(controllerCopy, "syncInfo"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "containers"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v12), v14, v13, v15))
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_specifierWithItem:(id)item showDownloadInfo:(BOOL)info showWarningIfAboveQuota:(BOOL)quota downloadLimit:(unint64_t)limit
{
  quotaCopy = quota;
  infoCopy = info;
  itemCopy = item;
  title = [itemCopy title];
  v10 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  title2 = [itemCopy title];
  [v10 setProperty:title2 forKey:NMBUISpecifierTitleKey];

  artist = [itemCopy artist];
  [v10 setProperty:artist forKey:NMBUISpecifierSubtitleKey];

  [v10 setProperty:&off_21A80 forKey:PSTableCellStyleOverrideKey];
  artworkCatalog = [itemCopy artworkCatalog];
  [v10 setProperty:artworkCatalog forKey:NMBUISpecifierArtworkCatalogKey];

  v14 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v10 setProperty:v14 forKey:NMBUISpecifierPlaceholderImageKey];

  [v10 setProperty:itemCopy forKey:NMBUISpecifierModelObjectKey];
  bk_storeID = [itemCopy bk_storeID];
  v16 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:bk_storeID downloadLimit:limit manuallyAdded:1 downloadedItemsOnly:0];

  v17 = +[NRPairedDeviceRegistry sharedInstance];
  v18 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v19 = [v17 getAllDevicesWithArchivedAltAccountDevicesMatching:v18];
  firstObject = [v19 firstObject];
  v21 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v22 = [firstObject supportsCapability:v21];

  if (v22 && infoCopy)
  {
    syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    v24 = [syncInfoController downloadStateForModelObject:itemCopy];

    v25 = [(NBBridgeSyncedAudiobooksController *)self _resolvedProgressViewStateForState:v24];
    syncInfoController2 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    [syncInfoController2 progressForModelObject:itemCopy];
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

  if (quotaCopy)
  {
    pinningManager = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    v34 = [pinningManager isItemGroupWithinQuota:v16];

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

- (id)_specifierWithJaliscoItem:(id)item showDownloadInfo:(BOOL)info showWarningIfAboveQuota:(BOOL)quota downloadLimit:(unint64_t)limit
{
  quotaCopy = quota;
  infoCopy = info;
  itemCopy = item;
  title = [itemCopy title];
  v10 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  title2 = [itemCopy title];
  [v10 setProperty:title2 forKey:NMBUISpecifierTitleKey];

  artist = [itemCopy artist];
  [v10 setProperty:artist forKey:NMBUISpecifierSubtitleKey];

  [v10 setProperty:&off_21A80 forKey:PSTableCellStyleOverrideKey];
  artworkCatalog = [itemCopy artworkCatalog];
  [v10 setProperty:artworkCatalog forKey:NMBUISpecifierArtworkCatalogKey];

  v14 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v10 setProperty:v14 forKey:NMBUISpecifierPlaceholderImageKey];

  [v10 setProperty:itemCopy forKey:NMBUISpecifierModelObjectKey];
  storeID = [itemCopy storeID];
  v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [storeID nb_uint64_t]);

  v38 = v16;
  v17 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v16 downloadLimit:limit manuallyAdded:1 downloadedItemsOnly:0];
  v18 = +[NRPairedDeviceRegistry sharedInstance];
  v19 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v20 = [v18 getAllDevicesWithArchivedAltAccountDevicesMatching:v19];
  firstObject = [v20 firstObject];
  v22 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  LODWORD(limit) = [firstObject supportsCapability:v22];

  if (limit && infoCopy)
  {
    syncInfoController = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    v24 = [syncInfoController downloadStateForModelObject:itemCopy];

    v25 = [(NBBridgeSyncedAudiobooksController *)self _resolvedProgressViewStateForState:v24];
    syncInfoController2 = [(NBBridgeSyncedAudiobooksController *)self syncInfoController];
    [syncInfoController2 progressForModelObject:itemCopy];
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

  if (quotaCopy)
  {
    pinningManager = [(NBBridgeSyncedAudiobooksController *)self pinningManager];
    v34 = [pinningManager isItemGroupWithinQuota:v17];

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
  presentedViewController = [(NBBridgeSyncedAudiobooksController *)self presentedViewController];

  if (presentedViewController)
  {
    selfCopy = [(NBBridgeSyncedAudiobooksController *)self presentedViewController];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end