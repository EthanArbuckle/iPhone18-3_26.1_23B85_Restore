@interface NMBridgeSyncedMusicController
- (BOOL)_hasAlbumsOrPlaylists;
- (BOOL)_isOutOfSpace;
- (BOOL)_shouldShowProgress;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (NMBridgeSyncedMusicController)init;
- (PSSpecifier)addMusicSpecifier;
- (float)_contentHeaderViewProgress;
- (id)_albumSpecifierWithAlbum:(id)a3;
- (id)_contentHeaderViewSubtitle;
- (id)_contentHeaderViewTitle;
- (id)_libraryPersistentIDs:(id)a3 type:(int64_t)a4;
- (id)_pinnedAlbums;
- (id)_pinnedPlaylists;
- (id)_playlistSpecifierWithPlaylist:(id)a3;
- (id)_recommendationSelected:(id)a3;
- (id)_recommendationSpecifierWithRecommendation:(id)a3;
- (id)_recommendationsGroup;
- (id)_selfOrPresentedViewController;
- (id)_workoutPlaylistID;
- (id)specifiers;
- (id)syncInfoController;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (unint64_t)_numberOfAlbums;
- (unint64_t)_numberOfPlaylists;
- (unint64_t)_numberOfSongs;
- (unint64_t)_resolvedProgressViewStateForState:(unint64_t)a3;
- (void)_addMusicAction;
- (void)_completeTransientStateWithModelObject:(id)a3 success:(BOOL)a4;
- (void)_configureHeaderIfNeeded;
- (void)_disableEditableAndButtonIfNothingLeftToEdit;
- (void)_getRepresentativeCollectionGrouping:(int64_t *)a3 propertyPredicate:(id *)a4 mediaQuery:(id)a5;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)_handleApplicationWillEnterForegroundNotification:(id)a3;
- (void)_handleMusicPinningSelectionsDidChangeNotification:(id)a3;
- (void)_handleMusicRecommendationsDidUpdateNotification:(id)a3;
- (void)_handleSubscriptionStatusDidChangeNotification:(id)a3;
- (void)_handleSyncInfoDidUpdateNotification:(id)a3;
- (void)_performKeepLocalRequestWithModelObject:(id)a3 enableState:(int64_t)a4;
- (void)_pinAlbum:(id)a3;
- (void)_pinPlaylist:(id)a3;
- (void)_prepareTransientStateWithModelObject:(id)a3 enableState:(int64_t)a4;
- (void)_presentDownloadWaitingAlertIfNeededWithModelObject:(id)a3;
- (void)_presentFavoritesPlaylistUnsupportedAlert;
- (void)_reloadContents;
- (void)_reloadPlaylistsAndAlbumsIfNeeded;
- (void)_requestAlbums;
- (void)_requestPlaylists;
- (void)_requestRecommendations;
- (void)_setRecommendationSelected:(id)a3 withSpecifier:(id)a4;
- (void)_showSyncStorageWarning;
- (void)_showWorkoutPlaylistWarningWithDeletionCompletion:(id)a3;
- (void)_unpinAlbum:(id)a3;
- (void)_unpinPlaylist:(id)a3;
- (void)_updateHeaderAndSyncProgressIfNeeded;
- (void)_updateHeaderSize;
- (void)_updateProgressIfNeeded;
- (void)dealloc;
- (void)mediaPicker:(id)a3 didPickMediaItems:(id)a4;
- (void)mediaPickerDidCancel:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NMBridgeSyncedMusicController

- (NMBridgeSyncedMusicController)init
{
  v21.receiver = self;
  v21.super_class = NMBridgeSyncedMusicController;
  v2 = [(NMBridgeSyncedMusicController *)&v21 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_handleMusicRecommendationsDidUpdateNotification:" name:NMSMusicRecommendationsDidUpdateNotification object:0];
    [v3 addObserver:v2 selector:"_reloadContents" name:ML3MusicLibraryEntitiesAddedOrRemovedNotification object:0];
    [v3 addObserver:v2 selector:"_handleSubscriptionStatusDidChangeNotification:" name:NMSSubscriptionStatusDidChangeNotification object:0];
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
    v7 = [v6 firstObject];
    v8 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
    v9 = [v7 supportsCapability:v8];

    if (v9)
    {
      v10 = objc_alloc_init(NMKeepLocalTransientState);
      keepLocalTransientState = v2->_keepLocalTransientState;
      v2->_keepLocalTransientState = v10;
    }

    else
    {
      [v3 addObserver:v2 selector:"_handleMediaPinningMusicContentsInvalidatedNotification:" name:NMSMediaPinningMusicContentsInvalidatedNotification object:0];
      [v3 addObserver:v2 selector:"_handleMusicPinningSelectionsDidChangeNotification:" name:NMSyncDefaultsMusicPinningSelectionsDidChangeNotification object:0];
    }

    v12 = +[NRPairedDeviceRegistry sharedInstance];
    v13 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v14 = [v12 getAllDevicesWithArchivedAltAccountDevicesMatching:v13];
    v15 = [v14 firstObject];
    v16 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
    v17 = [v15 supportsCapability:v16];

    if (v17)
    {
      [v3 addObserver:v2 selector:"_handleSyncInfoDidUpdateNotification:" name:NMBUIMediaSyncInfoDidUpdateNotification object:0];
      [v3 addObserver:v2 selector:"_handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
      v18 = &UIApplicationDidEnterBackgroundNotification;
      v19 = &selRef__handleApplicationDidEnterBackgroundNotification_;
    }

    else
    {
      v18 = &NMSSyncManagerSyncStateDidChangeNotification;
      v19 = &selRef__handleSyncManagerSyncStateDidChangeNotification_;
    }

    [v3 addObserver:v2 selector:*v19 name:*v18 object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NMBridgeSyncedMusicController;
  [(NMBridgeSyncedMusicController *)&v4 viewDidLoad];
  [(NMBridgeSyncedMusicController *)self _configureHeaderIfNeeded];
  v3 = [(NMBridgeSyncedMusicController *)self table];
  [v3 setAllowsSelectionDuringEditing:1];

  [(NMBridgeSyncedMusicController *)self _reloadContents];
  [(NMBridgeSyncedMusicController *)self setReusesCells:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = NMBridgeSyncedMusicController;
  [(NMBridgeSyncedMusicController *)&v3 viewDidLayoutSubviews];
  [(NMBridgeSyncedMusicController *)self _updateHeaderSize];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NMBridgeSyncedMusicController;
  [(NMBridgeSyncedMusicController *)&v4 dealloc];
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v7 = [(NMBridgeSyncedMusicController *)self _recommendationsGroup];
    [v6 addObjectsFromArray:v7];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"PLAYLIST_ALBUM_SECTION_TITLE" value:@"Playlists & Albums" table:0];
    v10 = [PSSpecifier groupSpecifierWithName:v9];

    v11 = +[NRPairedDeviceRegistry sharedInstance];
    v12 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v13 = [v11 getAllDevicesWithArchivedAltAccountDevicesMatching:v12];
    v14 = [v13 firstObject];
    v15 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
    v16 = [v14 supportsCapability:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"SYNC_SETTINGS_FOOTER_DESCRIPTION" value:@"Music is downloaded when Apple Watch is connected to power and placed near your iPhone." table:0];
      [v10 setProperty:v18 forKey:PSFooterTextGroupKey];
    }

    [v6 addObject:v10];
    v19 = [(NMBridgeSyncedMusicController *)self addMusicSpecifier];
    [v6 addObject:v19];

    v20 = [(NMBridgeSyncedMusicController *)self playlistSpecifiers];
    [v6 addObjectsFromArray:v20];

    v21 = [(NMBridgeSyncedMusicController *)self albumSpecifiers];
    [v6 addObjectsFromArray:v21];

    v22 = [v6 copy];
    v23 = *&self->PSEditableListController_opaque[v2];
    *&self->PSEditableListController_opaque[v2] = v22;

    v4 = *&self->PSEditableListController_opaque[v2];
  }

  return v4;
}

- (void)_reloadContents
{
  [(NMBridgeSyncedMusicController *)self _requestRecommendations];
  [(NMBridgeSyncedMusicController *)self _requestPlaylists];
  [(NMBridgeSyncedMusicController *)self _requestAlbums];

  [(NMBridgeSyncedMusicController *)self _updateHeaderAndSyncProgressIfNeeded];
}

- (void)_reloadPlaylistsAndAlbumsIfNeeded
{
  v31 = [[NSMutableSet alloc] initWithCapacity:{-[NSArray count](self->_albumSpecifiers, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = self;
  v3 = self->_albumSpecifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    v7 = NMBUISpecifierCellConfigurationKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v36 + 1) + 8 * i) propertyForKey:v7];
        v10 = [v9 modelObject];
        v11 = [v10 identifiers];
        v12 = [v11 library];
        v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 persistentID]);
        [v31 addObject:v13];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  v14 = [(NMBridgeSyncedMusicController *)v29 _pinnedAlbums];
  v15 = [v31 isEqualToSet:v14];

  if ((v15 & 1) == 0)
  {
    [(NMBridgeSyncedMusicController *)v29 _requestAlbums];
  }

  v16 = [[NSMutableSet alloc] initWithCapacity:{-[NSArray count](v29->_playlistSpecifiers, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v29->_playlistSpecifiers;
  v17 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    v20 = NMBUISpecifierCellConfigurationKey;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = [*(*(&v32 + 1) + 8 * j) propertyForKey:v20];
        v23 = [v22 modelObject];
        v24 = [v23 identifiers];
        v25 = [v24 library];
        v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 persistentID]);
        [v16 addObject:v26];
      }

      v18 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v18);
  }

  v27 = [(NMBridgeSyncedMusicController *)v29 _pinnedPlaylists];
  v28 = [v16 isEqualToSet:v27];

  if ((v28 & 1) == 0)
  {
    [(NMBridgeSyncedMusicController *)v29 _requestPlaylists];
  }
}

- (id)_recommendationsGroup
{
  v3 = sub_9AEC(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NMBridgeSyncedMusicController *)self recommendationSpecifiers];
    v5 = [v4 count];
    v6 = +[NMSSubscriptionManager sharedManager];
    v7 = [v6 subscriptionType];
    v8 = +[NMSyncDefaults sharedDefaults];
    v9 = [v8 cachedRecommendationsData];
    *buf = 134218496;
    v54 = v5;
    v55 = 2048;
    v56 = v7;
    v57 = 1024;
    v58 = v9 != 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Bridge Recommendations] Creating recommendation group - Recommendations count %lu Subscription type %ld Has cached recommendations %x", buf, 0x1Cu);
  }

  v10 = +[NSMutableArray array];
  v11 = [(NMBridgeSyncedMusicController *)self recommendationSpecifiers];
  v12 = [v11 count];

  if (!v12)
  {
    v17 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    [v10 addObject:v17];
    goto LABEL_29;
  }

  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableArray);
  v15 = [(NMBridgeSyncedMusicController *)self recommendationSpecifiers];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_3264;
  v50[3] = &unk_14538;
  v16 = v14;
  v51 = v16;
  v17 = v13;
  v52 = v17;
  [v15 enumerateObjectsUsingBlock:v50];

  if ([v17 count])
  {
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"AUTOMATICALLY_DOWNLOAD_SECTION_HEADER_TEXT" value:@"Automatically Download" table:0];
    v20 = [PSSpecifier groupSpecifierWithName:v19];

    v21 = +[NMSSubscriptionManager sharedManager];
    LODWORD(v19) = [v21 hasCapability:1];

    v22 = +[NRPairedDeviceRegistry sharedInstance];
    v48 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v49 = v22;
    v47 = [v22 getAllDevicesWithArchivedAltAccountDevicesMatching:?];
    v23 = [v47 firstObject];
    v45 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
    v46 = v23;
    v24 = [v23 supportsCapability:?];
    if (v19)
    {
      if (v24)
      {
        v25 = +[NRPairedDeviceRegistry sharedInstance];
        v26 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
        v44 = [v25 getAllDevicesWithArchivedAltAccountDevicesMatching:v26];
        v27 = [v44 firstObject];
        v42 = [[NSUUID alloc] initWithUUIDString:@"C5092DE9-70B8-41DB-B2AB-80DD86ED41C7"];
        v43 = v27;
        v28 = [v27 supportsCapability:?];
        v29 = MGGetBoolAnswer();
        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = v30;
        if (v28)
        {
          if (v29)
          {
            v32 = @"AUTOMATICALLY_DOWNLOAD_SUBSCRIBER_SECTION_FOOTER_TEXT_PINS_RECENT_MUSIC_WLAN";
            v33 = @"Pins and Recent Music download when your Apple Watch is charging and connected to WLAN or your iPhone. If you haven’t listened, recommendations from Apple Music will be downloaded.";
          }

          else
          {
            v32 = @"AUTOMATICALLY_DOWNLOAD_SUBSCRIBER_SECTION_FOOTER_TEXT_PINS_RECENT_MUSIC_WIFI";
            v33 = @"Pins and Recent Music download when your Apple Watch is charging and connected to Wi-Fi or your iPhone. If you haven’t listened, recommendations from Apple Music will be downloaded.";
          }

          v38 = @"Localizable-LibraryPins";
        }

        else
        {
          if (v29)
          {
            v32 = @"AUTOMATICALLY_DOWNLOAD_SUBSCRIBER_SECTION_FOOTER_TEXT_RECENT_MUSIC_WLAN";
            v33 = @"Recent Music downloads when your Apple Watch is charging and connected to WLAN or your iPhone. If you haven’t listened, recommendations from Apple Music will be downloaded.";
          }

          else
          {
            v32 = @"AUTOMATICALLY_DOWNLOAD_SUBSCRIBER_SECTION_FOOTER_TEXT_RECENT_MUSIC_WIFI";
            v33 = @"Recent Music downloads when your Apple Watch is charging and connected to Wi-Fi or your iPhone. If you haven’t listened, recommendations from Apple Music will be downloaded.";
          }

          v38 = 0;
        }

        v39 = [v30 localizedStringForKey:v32 value:v33 table:v38];
        [v20 setProperty:v39 forKey:PSFooterTextGroupKey];

        goto LABEL_25;
      }

      v35 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = v35;
      v36 = @"AUTOMATICALLY_DOWNLOAD_SUBSCRIBER_SECTION_FOOTER_TEXT_LEGACY";
      v37 = @"Automatically download music you’ve listened to recently. If you haven’t listened to anything, recommendations from Apple Music will be downloaded.";
    }

    else if (v24)
    {
      v34 = MGGetBoolAnswer();
      v35 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = v35;
      if (v34)
      {
        v36 = @"AUTOMATICALLY_DOWNLOAD_NON_SUBSCRIBER_SECTION_FOOTER_TEXT_WLAN";
        v37 = @"Automatically download music you purchased or listened to recently. This music will download when your Apple Watch is charging and connected to either WLAN or your iPhone.";
      }

      else
      {
        v36 = @"AUTOMATICALLY_DOWNLOAD_NON_SUBSCRIBER_SECTION_FOOTER_TEXT_WIFI";
        v37 = @"Automatically download music you purchased or listened to recently. This music will download when your Apple Watch is charging and connected to either Wi-Fi or your iPhone.";
      }
    }

    else
    {
      v35 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = v35;
      v36 = @"AUTOMATICALLY_DOWNLOAD_NON_SUBSCRIBER_SECTION_FOOTER_TEXT_LEGACY";
      v37 = @"Automatically download purchased music you bought or listened to recently.";
    }

    v26 = [v35 localizedStringForKey:v36 value:v37 table:0];
    [v20 setProperty:v26 forKey:PSFooterTextGroupKey];
LABEL_25:

    [v10 addObject:v20];
    [v10 addObjectsFromArray:v17];
  }

  if ([v16 count])
  {
    v40 = [PSSpecifier groupSpecifierWithName:&stru_14C48];
    [v10 addObject:v40];
    [v10 addObjectsFromArray:v16];
  }

LABEL_29:

  return v10;
}

- (void)_requestRecommendations
{
  objc_initWeak(&location, self);
  v2 = +[NMSMusicRecommendationManager sharedManager];
  v3 = &_dispatch_main_q;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_343C;
  v4[3] = &unk_14560;
  objc_copyWeak(&v5, &location);
  [v2 fetchRecommendationsWithQueue:&_dispatch_main_q completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_requestPlaylists
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v5 = [(NMBridgeSyncedMusicController *)self _pinnedPlaylists];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_391C;
  v22[3] = &unk_145B0;
  v6 = v4;
  v23 = v6;
  [v5 enumerateObjectsUsingBlock:v22];

  if ([v6 count])
  {
    v7 = objc_alloc_init(MPModelLibraryRequest);
    v8 = [MPModelSong kindWithVariants:1];
    v28 = v8;
    v9 = [NSArray arrayWithObjects:&v28 count:1];
    v10 = [MPModelPlaylistEntry kindWithKinds:v9];
    v11 = [MPModelPlaylist kindWithPlaylistEntryKind:v10 options:0];
    [v7 setItemKind:v11];

    v12 = [MPPropertySet alloc];
    v27[0] = MPModelPropertyPlaylistName;
    v27[1] = MPModelPropertyPlaylistArtwork;
    v27[2] = MPModelPropertyPlaylistTracksTiledArtwork;
    v13 = [NSArray arrayWithObjects:v27 count:3];
    v25 = MPModelRelationshipPlaylistCurator;
    v24 = MPModelPropertyCuratorName;
    v14 = [NSArray arrayWithObjects:&v24 count:1];
    v15 = [MPPropertySet propertySetWithProperties:v14];
    v26 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v17 = [v12 initWithProperties:v13 relationships:v16];
    [v7 setItemProperties:v17];

    [v7 setAllowedItemIdentifiers:v6];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_3A3C;
    v19[3] = &unk_14628;
    v20 = v3;
    v21 = self;
    [v7 performWithResponseHandler:v19];
  }

  else
  {
    v18 = [v3 copy];
    [(NMBridgeSyncedMusicController *)self setPlaylistSpecifiers:v18];

    [(NMBridgeSyncedMusicController *)self reloadSpecifiers];
    [(NMBridgeSyncedMusicController *)self setEditingButtonHidden:[(NMBridgeSyncedMusicController *)self _hasAlbumsOrPlaylists]^ 1 animated:0];
  }
}

- (void)_requestAlbums
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v5 = [(NMBridgeSyncedMusicController *)self _pinnedAlbums];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_3F70;
  v20[3] = &unk_145B0;
  v6 = v4;
  v21 = v6;
  [v5 enumerateObjectsUsingBlock:v20];

  if ([v6 count])
  {
    v7 = objc_alloc_init(MPModelLibraryRequest);
    v8 = [MPModelSong kindWithVariants:1];
    v9 = [MPModelAlbum kindWithSongKind:v8];
    [v7 setItemKind:v9];

    v10 = [MPPropertySet alloc];
    v25[0] = MPModelPropertyAlbumTitle;
    v25[1] = MPModelPropertyAlbumArtwork;
    v11 = [NSArray arrayWithObjects:v25 count:2];
    v23 = MPModelRelationshipAlbumArtist;
    v22 = MPModelPropertyArtistName;
    v12 = [NSArray arrayWithObjects:&v22 count:1];
    v13 = [MPPropertySet propertySetWithProperties:v12];
    v24 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v15 = [v10 initWithProperties:v11 relationships:v14];
    [v7 setItemProperties:v15];

    [v7 setAllowedItemIdentifiers:v6];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_4090;
    v17[3] = &unk_14628;
    v18 = v3;
    v19 = self;
    [v7 performWithResponseHandler:v17];
  }

  else
  {
    v16 = [v3 copy];
    [(NMBridgeSyncedMusicController *)self setAlbumSpecifiers:v16];

    [(NMBridgeSyncedMusicController *)self reloadSpecifiers];
    [(NMBridgeSyncedMusicController *)self setEditingButtonHidden:[(NMBridgeSyncedMusicController *)self _hasAlbumsOrPlaylists]^ 1 animated:0];
  }
}

- (id)syncInfoController
{
  syncInfoController = self->_syncInfoController;
  if (!syncInfoController)
  {
    v4 = [[NMBUISyncInfoController alloc] initWithSyncInfoTarget:0];
    [v4 setDataSource:self];
    v5 = self->_syncInfoController;
    self->_syncInfoController = v4;

    syncInfoController = self->_syncInfoController;
  }

  return syncInfoController;
}

- (void)_handleMusicRecommendationsDidUpdateNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4390;
  block[3] = &unk_14678;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleMusicPinningSelectionsDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NMSNotificationUserInfoKeyIsInProcessNotification];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {

    [(NMBridgeSyncedMusicController *)self _reloadContents];
  }
}

- (void)_handleSubscriptionStatusDidChangeNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4498;
  block[3] = &unk_14678;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleSyncInfoDidUpdateNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(NMBridgeSyncedMusicController *)self syncInfoController];

  if (v4 == v5)
  {
    [(NMBridgeSyncedMusicController *)self _updateHeaderAndSyncProgressIfNeeded];
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v9 = [v7 getAllDevicesWithArchivedAltAccountDevicesMatching:v8];
    v10 = [v9 firstObject];
    v11 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
    v12 = [v10 supportsCapability:v11];

    if (v12)
    {

      [(NMBridgeSyncedMusicController *)self _reloadPlaylistsAndAlbumsIfNeeded];
    }
  }

  else
  {
    v6 = sub_9AEC(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] Ignoring media sync info update from a different syncInfoController.", v13, 2u);
    }
  }
}

- (void)_handleApplicationWillEnterForegroundNotification:(id)a3
{
  v3 = [(NMBridgeSyncedMusicController *)self syncInfoController];
  [v3 beginObservingSyncInfo];
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3
{
  v3 = [(NMBridgeSyncedMusicController *)self syncInfoController];
  [v3 endObservingSyncInfo];
}

- (BOOL)_hasAlbumsOrPlaylists
{
  v3 = [(NMBridgeSyncedMusicController *)self _pinnedAlbums];
  v4 = [v3 count];
  v5 = [(NMBridgeSyncedMusicController *)self _pinnedPlaylists];
  if ([v5 count] + v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(NMBridgeSyncedMusicController *)self _workoutPlaylistID];
    v7 = [v6 longLongValue] != 0;
  }

  return v7;
}

- (void)_updateHeaderAndSyncProgressIfNeeded
{
  if ([(NMBridgeSyncedMusicController *)self isViewLoaded])
  {
    v3 = [(NMBridgeSyncedMusicController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      [(NMBridgeSyncedMusicController *)self _configureHeaderIfNeeded];
      [(NMBridgeSyncedMusicController *)self _updateProgressIfNeeded];
      self->_needsVisibleSpecifiersSyncInfoUpdate = 0;
      return;
    }

    self->_needsVisibleSpecifiersSyncInfoUpdate = 1;
    v5 = sub_9AEC(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "[NMBridgeSyncedMusicController] Ignoring media sync info update due to view not being visible.";
      v7 = buf;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_9AEC(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v6 = "[NMBridgeSyncedMusicController] Ignoring media sync info update due to view not being loaded.";
      v7 = &v8;
LABEL_8:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }
}

- (void)_configureHeaderIfNeeded
{
  if ([(NMBridgeSyncedMusicController *)self isViewLoaded])
  {
    v27 = [(NMBridgeSyncedMusicController *)self table];
    v3 = +[NSMutableArray array];
    if ([(NMBridgeSyncedMusicController *)self _isOutOfSpace])
    {
      v4 = [NMBUIAlertHeaderView alloc];
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v9 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v10 = +[UIColor systemYellowColor];
      [v9 setTintColor:v10];

      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"SYNC_SETTINGS_OUT_OF_SPACE_HEADER_TITLE" value:@"Out of Media Storage" table:0];
      v13 = [v9 textLabel];
      [v13 setText:v12];

      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"SYNC_SETTINGS_OUT_OF_SPACE_HEADER_MESSAGE" value:@"The storage space dedicated to media on your Apple Watch is full. To make space available table:{you can remove some podcasts, music, or audiobooks.", 0}];
      v16 = [v9 detailTextLabel];
      [v16 setText:v15];

      [v9 setPreservesSuperviewLayoutMargins:1];
      [v3 addObject:v9];
    }

    else
    {
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }

    v17 = [[NMBUIContentHeaderView alloc] initWithFrame:{x, y, width, height}];
    v18 = [(NMBridgeSyncedMusicController *)self _contentHeaderViewTitle];
    v19 = [v17 textLabel];
    [v19 setText:v18];

    v20 = [(NMBridgeSyncedMusicController *)self _contentHeaderViewSubtitle];
    v21 = [v17 detailTextLabel];
    [v21 setText:v20];

    [v17 setPreservesSuperviewLayoutMargins:1];
    if ([(NMBridgeSyncedMusicController *)self _shouldShowProgress])
    {
      [(NMBridgeSyncedMusicController *)self _contentHeaderViewProgress];
      v23 = v22;
      v24 = [v17 progressView];
      LODWORD(v25) = v23;
      [v24 setProgress:v25];
    }

    [v3 addObject:v17];
    v26 = [[UIStackView alloc] initWithArrangedSubviews:v3];
    [v26 setAxis:1];
    [v26 setPreservesSuperviewLayoutMargins:1];
    [v27 setTableHeaderView:v26];
    [(NMBridgeSyncedMusicController *)self _updateHeaderSize];
  }
}

- (void)_updateHeaderSize
{
  if ([(NMBridgeSyncedMusicController *)self isViewLoaded])
  {
    v3 = [(NMBridgeSyncedMusicController *)self table];
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
    v13 = [(NMBridgeSyncedMusicController *)self table];
    [v13 setTableHeaderView:v14];
  }
}

- (void)_updateProgressIfNeeded
{
  v2 = self;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(NMBridgeSyncedMusicController *)self specifiers];
  v28 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v28)
  {
    v27 = *v33;
    v26 = NMBUISpecifierCellConfigurationKey;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * i);
        v5 = [v4 propertyForKey:v26];
        v6 = [v5 downloadState];

        if (v6)
        {
          v29 = v4;
          v7 = [v5 modelObject];
          v30 = [v5 downloadState];
          v8 = [(NMBridgeSyncedMusicController *)v2 syncInfoController];
          v31 = v7;
          v9 = [v8 downloadStateForModelObject:v7];

          v10 = +[NRPairedDeviceRegistry sharedInstance];
          v11 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
          v12 = [v10 getAllDevicesWithArchivedAltAccountDevicesMatching:v11];
          [v12 firstObject];
          v14 = v13 = v2;
          v15 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
          v16 = [v14 supportsCapability:v15];

          if ((v16 & 1) == 0)
          {
            v9 = [(NMBridgeSyncedMusicController *)v13 _resolvedProgressViewStateForState:v9];
          }

          v2 = v13;
          v17 = [(NMBridgeSyncedMusicController *)v13 syncInfoController];
          [v17 progressForModelObject:v31];
          v19 = v18;

          if ([v30 state] == v9)
          {
            [v30 progress];
            v20 = v19;
            if (vabdd_f64(v21, v20) <= 0.00000011920929)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v20 = v19;
          }

          v22 = [(NMBridgeSyncedMusicController *)v13 table];
          v23 = [(NMBridgeSyncedMusicController *)v13 indexPathForSpecifier:v29];
          v24 = [v22 cellForRowAtIndexPath:v23];

          [v30 setState:v9];
          [v30 setProgress:v20];
          [v24 refreshCellContentsWithSpecifier:v29];

LABEL_14:
        }
      }

      v28 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v28);
  }
}

- (BOOL)_isOutOfSpace
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(NMBridgeSyncedMusicController *)self syncInfoController];
    v10 = [v9 syncInfo];
    v11 = [v10 hasItemsOverStorageLimit];
  }

  else
  {
    v9 = +[NMSMediaPinningManager sharedManager];
    v11 = [v9 _legacy_musicIsOutOfSpace];
  }

  return v11;
}

- (BOOL)_shouldShowProgress
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(NMBridgeSyncedMusicController *)self _numberOfAlbums];
    if ([(NMBridgeSyncedMusicController *)self _numberOfPlaylists]+ v9)
    {
      v14 = [(NMBridgeSyncedMusicController *)self syncInfoController];
      v15 = [v14 syncInfo];
      v10 = [v15 status] != &dword_4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = +[NMSSyncManager sharedManager];
    v12 = [v11 musicProgressInfo];
    v13 = [v12 syncState];

    return v13 != &dword_0 + 1;
  }

  return v10;
}

- (unint64_t)_resolvedProgressViewStateForState:(unint64_t)a3
{
  v4 = +[NMSSyncManager sharedManager];
  v5 = [v4 musicProgressInfo];
  if ([v5 syncState] == &dword_0 + 3)
  {
    v6 = +[NMSSyncManager sharedManager];
    v7 = [v6 musicProgressInfo];
    v8 = [v7 syncWaitingSubstate];

    v9 = 3;
    if (v8)
    {
      v9 = 1;
    }
  }

  else
  {

    v9 = 3;
  }

  if (a3 == 1)
  {
    return v9;
  }

  else
  {
    return a3;
  }
}

- (id)_contentHeaderViewTitle
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"C5092DE9-70B8-41DB-B2AB-80DD86ED41C7"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER" value:&stru_14C48 table:@"LocalizableDict"];
    v11 = [NSString localizedStringWithFormat:v10, [(NMBridgeSyncedMusicController *)self _numberOfSongs]];

    goto LABEL_11;
  }

  v12 = [(NMBridgeSyncedMusicController *)self _numberOfAlbums];
  v13 = [(NMBridgeSyncedMusicController *)self _numberOfPlaylists];
  v14 = v13;
  if (v12 && v13)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v9 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_ALBUMS_PLAYLISTS" value:&stru_14C48 table:@"LocalizableDict"];
    v11 = [NSString localizedStringWithFormat:v15, v12, v14];

    goto LABEL_11;
  }

  if (v12)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v9 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_ALBUMS" value:&stru_14C48 table:@"LocalizableDict"];
    [NSString localizedStringWithFormat:v16, v12];
    v11 = LABEL_10:;

    goto LABEL_11;
  }

  if (v13)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v9 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_PLAYLISTS" value:&stru_14C48 table:@"LocalizableDict"];
    [NSString localizedStringWithFormat:v16, v14];
    goto LABEL_10;
  }

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v9 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_TITLE" value:@"No Music" table:0];
LABEL_11:

  return v11;
}

- (id)_contentHeaderViewSubtitle
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"C5092DE9-70B8-41DB-B2AB-80DD86ED41C7"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    if (![(NMBridgeSyncedMusicController *)self _numberOfSongs])
    {
      v9 = +[NRPairedDeviceRegistry sharedInstance];
      v10 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
      v11 = [v9 getAllDevicesWithArchivedAltAccountDevicesMatching:v10];
      v12 = [v11 firstObject];
      v13 = [[NSUUID alloc] initWithUUIDString:@"C5092DE9-70B8-41DB-B2AB-80DD86ED41C7"];
      v14 = [v12 supportsCapability:v13];
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = v15;
      if (v14)
      {
        v17 = @"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_MESSAGE_PINS_RECENT_MUSIC";
        v18 = @"You can choose to automatically download your Pins and Recent Music on your Apple Watch, or manually add albums and playlists.";
        v19 = @"Localizable-LibraryPins";
LABEL_15:
        v33 = [v15 localizedStringForKey:v17 value:v18 table:v19];
LABEL_18:

        goto LABEL_19;
      }

      v17 = @"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_MESSAGE_RECENT_MUSIC";
      v18 = @"You can choose to automatically download your Recent Music on your Apple Watch, or manually add albums and playlists.";
LABEL_14:
      v19 = 0;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v20 = [(NMBridgeSyncedMusicController *)self _numberOfAlbums];
  v21 = v20 | [(NMBridgeSyncedMusicController *)self _numberOfPlaylists];
  v9 = +[NRPairedDeviceRegistry sharedInstance];
  v10 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v11 = [v9 getAllDevicesWithArchivedAltAccountDevicesMatching:v10];
  v12 = [v11 firstObject];
  v22 = [NSUUID alloc];
  if (!v21)
  {
    v13 = [v22 initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
    if ([v12 supportsCapability:v13])
    {
      v16 = +[NRPairedDeviceRegistry sharedInstance];
      v37 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
      v36 = [v16 getAllDevicesWithArchivedAltAccountDevicesMatching:?];
      v23 = [v36 firstObject];
      v24 = [[NSUUID alloc] initWithUUIDString:@"C5092DE9-70B8-41DB-B2AB-80DD86ED41C7"];
      v35 = v23;
      v25 = [v23 supportsCapability:v24];
      v26 = [NSBundle bundleForClass:objc_opt_class()];
      v27 = v26;
      if (v25)
      {
        v28 = @"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_MESSAGE_PINS_RECENT_MUSIC";
        v29 = @"You can choose to automatically download your Pins and Recent Music on your Apple Watch, or manually add albums and playlists.";
        v30 = @"Localizable-LibraryPins";
      }

      else
      {
        v28 = @"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_MESSAGE_RECENT_MUSIC";
        v29 = @"You can choose to automatically download your Recent Music on your Apple Watch, or manually add albums and playlists.";
        v30 = 0;
      }

      v33 = [v26 localizedStringForKey:v28 value:v29 table:v30];

      goto LABEL_18;
    }

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = v15;
    v17 = @"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_MESSAGE_LEGACY";
    v18 = @"You can choose to automatically keep your Recent Music up-to-date on your Apple Watch, or manually add albums and playlists from your iPhone.";
    goto LABEL_14;
  }

  v31 = [v22 initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v32 = [v12 supportsCapability:v31];

  if (v32)
  {
LABEL_10:
    v9 = [(NMBridgeSyncedMusicController *)self syncInfoController];
    v33 = [v9 syncStatusDetailText];
    goto LABEL_20;
  }

  v9 = +[NMSSyncManager sharedManager];
  v10 = [v9 musicProgressInfo];
  v33 = [v10 _trackProgressTextForMediaType:8];
LABEL_19:

LABEL_20:

  return v33;
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
    v9 = [(NMBridgeSyncedMusicController *)self syncInfoController];
    v10 = [v9 syncInfo];
    v11 = 0.0;
    if ([v10 status] == &dword_0 + 3)
    {
      v12 = [(NMBridgeSyncedMusicController *)self syncInfoController];
      v13 = [v12 syncInfo];
      [v13 progress];
LABEL_6:
      v11 = v14;
    }
  }

  else
  {
    v9 = +[NMSSyncManager sharedManager];
    v10 = [v9 musicProgressInfo];
    v11 = 0.0;
    if ([v10 _isSyncing])
    {
      v12 = +[NMSSyncManager sharedManager];
      v13 = [v12 musicProgressInfo];
      [v13 estimatedSyncProgress];
      goto LABEL_6;
    }
  }

  return v11;
}

- (void)_presentDownloadWaitingAlertIfNeededWithModelObject:(id)a3
{
  v15 = a3;
  v4 = [v15 nms_syncInfoContainerIdentifier];
  v5 = [(NMBridgeSyncedMusicController *)self syncInfoController];
  v6 = [v5 syncInfo];
  v7 = [v6 statusForContainer:v4];

  v8 = [(NMBridgeSyncedMusicController *)self syncInfoController];
  v9 = [v8 syncInfo];
  v10 = [v9 downloadPauseReasonForContainer:v4];

  if (v7 <= 5 && ((1 << v7) & 0x26) != 0)
  {
    v11 = objc_alloc_init(NMSKeepLocalRequestOptions);
    [v11 setQualityOfService:25];
    [v11 setCellularBundleIdentifier:@"com.apple.NanoMusic"];
    v12 = [NMUDownloadWaitingAlertController alloc];
    v13 = [(NMBridgeSyncedMusicController *)self _selfOrPresentedViewController];
    v14 = [v12 initWithModelObject:v15 status:v7 downloadPauseReason:v10 options:v11 presentingViewController:v13];

    [v14 presentWithCompletion:0];
  }
}

- (PSSpecifier)addMusicSpecifier
{
  addMusicSpecifier = self->_addMusicSpecifier;
  if (!addMusicSpecifier)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"ADD_MUSIC_TITLE" value:@"Add Music…" table:0];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_addMusicSpecifier;
    self->_addMusicSpecifier = v6;

    [(PSSpecifier *)self->_addMusicSpecifier setButtonAction:"_addMusicAction"];
    [(PSSpecifier *)self->_addMusicSpecifier setProperty:objc_opt_class() forKey:PSCellClassKey];
    v8 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ADD_MUSIC_TITLE" value:@"Add Music…" table:0];
    [v8 setTitle:v10];

    [v8 setPlaceholderSystemImageName:@"plus"];
    v11 = BPSBridgeTintColor();
    [v8 setPlaceholderIconColor:v11];

    [(PSSpecifier *)self->_addMusicSpecifier setProperty:v8 forKey:NMBUISpecifierCellConfigurationKey];
    addMusicSpecifier = self->_addMusicSpecifier;
  }

  return addMusicSpecifier;
}

- (id)_recommendationSpecifierWithRecommendation:(id)a3
{
  v3 = a3;
  v4 = [NMSMediaItemGroup itemGroupWithQuotaRefObj:v3];
  v5 = [v3 items];
  if ([v5 count] == &dword_0 + 1)
  {
    v6 = [v3 items];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[NRPairedDeviceRegistry sharedInstance];
  v9 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v9];
  v11 = [v10 firstObject];
  v12 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v13 = [v11 supportsCapability:v12];

  if (v13)
  {
    if (![v3 isSelected])
    {
      v17 = 0;
      v16 = 0;
      goto LABEL_14;
    }

    v14 = [v3 identifier];
    if (([v14 isEqualToString:NMSRecommendationLibraryPinsIdentifier] & 1) == 0)
    {
      v15 = [v3 identifier];
      v16 = 0;
      v17 = [v15 isEqualToString:NMSRecommendationRecentMusicIdentifier] ^ 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
    v14 = [v3 identifier];
    if (([v14 isEqualToString:NMSRecommendationLibraryPinsIdentifier] & 1) == 0)
    {
      v15 = [v3 identifier];
      v17 = 0;
      v16 = [v15 isEqualToString:NMSRecommendationRecentMusicIdentifier] ^ 1;
      goto LABEL_12;
    }
  }

  v17 = 0;
  v16 = 0;
LABEL_13:

LABEL_14:
  v18 = [v3 title];
  v19 = [v3 identifier];
  v20 = [v19 isEqualToString:NMSRecommendationLibraryPinsIdentifier];

  if (v20)
  {
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"LIBRARY_PINS" value:@"Pins" table:@"Localizable-LibraryPins"];
    v23 = @"pin.fill";
LABEL_18:

    v18 = v22;
    goto LABEL_20;
  }

  v24 = [v3 identifier];
  v25 = [v24 isEqualToString:NMSRecommendationRecentMusicIdentifier];

  if (v25)
  {
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"RECENT_MUSIC" value:@"Recent Music" table:0];
    v23 = @"music";
    goto LABEL_18;
  }

  v23 = @"music";
LABEL_20:
  v26 = [v3 identifier];
  if ([v26 isEqualToString:NMSRecommendationLibraryPinsIdentifier])
  {
    v27 = 0;
  }

  else
  {
    v28 = [v3 identifier];
    v29 = [v28 isEqualToString:NMSRecommendationRecentMusicIdentifier];

    if (v29)
    {
      v27 = 0;
      goto LABEL_26;
    }

    v30 = [v3 items];
    v26 = [v30 firstObject];

    v27 = [v26 nms_lastUpdatedString];
  }

LABEL_26:
  v31 = [v3 artworkCatalog];
  BYTE1(v34) = v16;
  LOBYTE(v34) = v17;
  v32 = [(NMBridgeSyncedMusicController *)self _specifierWithTitle:v18 subtitle:v27 artworkCatalog:v31 placeholderSystemImage:v23 modelObject:v7 showSwitch:1 showDownloadInfo:v34 showWarningIfAboveQuota:v4 itemGroup:"_setRecommendationSelected:withSpecifier:" set:"_recommendationSelected:" get:?];

  [v32 setProperty:v3 forKey:@"NMBSpecifierRecommendationKey"];

  return v32;
}

- (id)_playlistSpecifierWithPlaylist:(id)a3
{
  v4 = a3;
  v5 = [v4 artworkCatalog];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 tracksTiledArtworkCatalogWithRows:2 columns:2];
  }

  v29 = v7;

  v8 = [v4 curator];
  v9 = [v8 name];
  if ([v9 length])
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"PLAYLIST_SUBTITLE" value:@"Playlist by %@" table:0];
    v12 = [v4 curator];
    v13 = [v12 name];
    v14 = [NSString localizedStringWithFormat:v11, v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 identifiers];
  v16 = [v15 library];
  v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v16 persistentID]);
  v18 = [NMSMediaItemGroup itemGroupWithSyncedPlaylistID:v17 downloadedItemsOnly:0];

  v19 = +[NRPairedDeviceRegistry sharedInstance];
  v20 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v21 = [v19 getAllDevicesWithArchivedAltAccountDevicesMatching:v20];
  v22 = [v21 firstObject];
  v23 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v24 = [v22 supportsCapability:v23];

  v25 = [v4 name];
  BYTE1(v28) = v24 ^ 1;
  LOBYTE(v28) = v24;
  v26 = [(NMBridgeSyncedMusicController *)self _specifierWithTitle:v25 subtitle:v14 artworkCatalog:v29 placeholderSystemImage:@"music.note.list" modelObject:v4 showSwitch:0 showDownloadInfo:v28 showWarningIfAboveQuota:v18 itemGroup:0 set:0 get:?];

  return v26;
}

- (id)_albumSpecifierWithAlbum:(id)a3
{
  v4 = a3;
  v5 = [v4 artist];
  v6 = [v5 name];
  if ([v6 length])
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ALBUM_SUBTITLE" value:@"Album by %@" table:0];
    v9 = [v4 artist];
    v10 = [v9 name];
    v11 = [NSString localizedStringWithFormat:v8, v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 identifiers];
  v13 = [v12 library];
  v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 persistentID]);
  v15 = [NMSMediaItemGroup itemGroupWithSyncedAlbumID:v14 downloadedItemsOnly:0];

  v16 = +[NRPairedDeviceRegistry sharedInstance];
  v17 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v18 = [v16 getAllDevicesWithArchivedAltAccountDevicesMatching:v17];
  v19 = [v18 firstObject];
  v20 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v21 = [v19 supportsCapability:v20];

  v22 = [v4 title];
  v23 = [v4 artworkCatalog];
  BYTE1(v26) = v21 ^ 1;
  LOBYTE(v26) = v21;
  v24 = [(NMBridgeSyncedMusicController *)self _specifierWithTitle:v22 subtitle:v11 artworkCatalog:v23 placeholderSystemImage:@"music" modelObject:v4 showSwitch:0 showDownloadInfo:v26 showWarningIfAboveQuota:v15 itemGroup:0 set:0 get:?];

  return v24;
}

- (id)_selfOrPresentedViewController
{
  v3 = [(NMBridgeSyncedMusicController *)self presentedViewController];

  if (v3)
  {
    v4 = [(NMBridgeSyncedMusicController *)self presentedViewController];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)_showSyncStorageWarning
{
  v3 = sub_9AEC(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] _showSyncStorageWarning", v13, 2u);
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SYNC_SETTINGS_SYNC_STORAGE_LIMIT_TOO_LOW_TITLE" value:@"The storage space dedicated to media on your Apple Watch is full." table:0];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SYNC_SETTINGS_SYNC_STORAGE_LIMIT_TOO_LOW_MESSAGE" value:@"To make space available table:{you can remove some podcasts, music, or audiobooks.", 0}];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SYNC_SETTINGS_SYNC_STORAGE_LIMIT_TOO_LOW_OK_ACTION" value:@"OK" table:0];
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];
  [v8 addAction:v11];

  v12 = [(NMBridgeSyncedMusicController *)self _selfOrPresentedViewController];
  [v12 presentViewController:v8 animated:1 completion:0];
}

- (id)_recommendationSelected:(id)a3
{
  v3 = [a3 propertyForKey:@"NMBSpecifierRecommendationKey"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isSelected]);

  return v4;
}

- (void)_setRecommendationSelected:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  v6 = [a4 propertyForKey:@"NMBSpecifierRecommendationKey"];
  v7 = [v5 BOOLValue];

  [v6 setSelected:v7];
  v8 = +[NMSMusicRecommendationManager sharedManager];
  v10 = v6;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [v8 persistRecommendationsSelections:v9];
}

- (void)_addMusicAction
{
  v5 = [[MPMediaPickerController alloc] initWithMediaTypes:1];
  [v5 setDelegate:self];
  [v5 setPicksSingleCollectionEntity:1];
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 getActivePairedDevice];
  [v5 setWatchCompatibilityVersion:NRWatchOSVersionForRemoteDevice()];

  [(NMBridgeSyncedMusicController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)mediaPicker:(id)a3 didPickMediaItems:(id)a4
{
  v34 = a3;
  v6 = a4;
  v7 = sub_9AEC(13);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[NMBridgeSyncedMusicController] mediaPicker:didPickMediaItems:", buf, 2u);
  }

  v8 = [v6 itemsQuery];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ADD_MUSIC_TITLE" value:@"Add Music…" table:0];

  v43 = 0;
  v44 = 0;
  [(NMBridgeSyncedMusicController *)self _getRepresentativeCollectionGrouping:&v44 propertyPredicate:&v43 mediaQuery:v8];
  v11 = v43;
  v12 = v11;
  if (!v11)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v13 = [v11 value];
  v14 = [v13 longLongValue];

  if (v44 != 6)
  {
    if (v44 == 1)
    {
      v15 = [v6 representativeItem];
      v16 = [v15 albumTitle];

      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_775C;
      v41[3] = &unk_146C8;
      v17 = v16;
      v42 = v17;
      v18 = [MPModelAlbum nms_modelObjectWithLibraryPersistentID:v14 block:v41];
      [(NMBridgeSyncedMusicController *)self _pinAlbum:v18];
      v19 = v17;

      v10 = v19;
    }

    else
    {
      v19 = sub_9AEC(13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_9E2C(&v44, v19);
      }
    }

    goto LABEL_14;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = sub_7768;
  v48 = sub_7778;
  v49 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v20 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v21 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyContainerPersistentId equalToInt64:v14];
  v33 = [ML3Container queryWithLibrary:v20 predicate:v21];

  [v33 setLimit:1];
  v45[0] = ML3ContainerPropertyName;
  v45[1] = ML3ContainerPropertyDistinguishedKind;
  v22 = [NSArray arrayWithObjects:v45 count:2];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_7780;
  v36[3] = &unk_146F0;
  v36[4] = buf;
  v36[5] = &v37;
  [v33 enumeratePersistentIDsAndProperties:v22 usingBlock:v36];

  if (*(v38 + 24) != 1)
  {
    goto LABEL_10;
  }

  v32 = +[NRPairedDeviceRegistry sharedInstance];
  v31 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v23 = [v32 getAllDevicesWithArchivedAltAccountDevicesMatching:v31];
  v24 = [v23 firstObject];
  v25 = [[NSUUID alloc] initWithUUIDString:@"205EB184-AC17-4886-BC97-09F15A9CA5F1"];
  v26 = [v24 supportsCapability:v25];

  if ((v26 & 1) == 0)
  {
    [(NMBridgeSyncedMusicController *)self _presentFavoritesPlaylistUnsupportedAlert];
    v29 = 1;
  }

  else
  {
LABEL_10:
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_77F8;
    v35[3] = &unk_14718;
    v35[4] = buf;
    v27 = [MPModelPlaylist nms_modelObjectWithLibraryPersistentID:v14 block:v35];
    [(NMBridgeSyncedMusicController *)self _pinPlaylist:v27];
    v28 = *(*&buf[8] + 40);

    v29 = 0;
    v10 = v28;
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(buf, 8);

  if ((v29 & 1) == 0)
  {
LABEL_14:
    v30 = sub_9AEC(13);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v44;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] Picked collectionGrouping:%ld, persistentID:%lld", buf, 0x16u);
    }

    [(NMBridgeSyncedMusicController *)self _dismissMusicPicker];
    [(NMBridgeSyncedMusicController *)self _reloadContents];
    [(NMBridgeSyncedMusicController *)self setDesiredVerticalContentOffsetItemNamed:v10];
  }
}

- (void)mediaPickerDidCancel:(id)a3
{
  v4 = sub_9AEC(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[NMBridgeSyncedMusicController] mediaPickerDidCancel", v5, 2u);
  }

  [(NMBridgeSyncedMusicController *)self _dismissMusicPicker];
}

- (void)_presentFavoritesPlaylistUnsupportedAlert
{
  v3 = sub_9AEC(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_9EA8(v3);
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SYNC_SETTINGS_FAVORITES_PLAYLIST_UPDATE_TITLE" value:@"Update Required" table:0];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SYNC_SETTINGS_FAVORITES_PLAYLIST_UPDATE_DESCRIPTION" value:@"Install watchOS 10.1 or later to use favorites and download the Favorite Songs playlist." table:0];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SYNC_SETTINGS_FAVORITES_PLAYLIST_DISMISS_ACTION" value:@"OK" table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_7A94;
  v13[3] = &unk_14740;
  v13[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v13];
  [v8 addAction:v11];

  v12 = [(NMBridgeSyncedMusicController *)self _selfOrPresentedViewController];
  [v12 presentViewController:v8 animated:1 completion:0];
}

- (void)_getRepresentativeCollectionGrouping:(int64_t *)a3 propertyPredicate:(id *)a4 mediaQuery:(id)a5
{
  v9 = a5;
  v7 = [v9 predicateForProperty:MPMediaItemPropertyAlbumPersistentID];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v7 = [v9 predicateForProperty:MPMediaItemPropertyArtistPersistentID];
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v7 = [v9 predicateForProperty:MPMediaItemPropertyAlbumArtistPersistentID];
      if (v7)
      {
        v8 = 3;
      }

      else
      {
        v7 = [v9 predicateForProperty:MPMediaItemPropertyComposerPersistentID];
        if (v7)
        {
          v8 = 4;
        }

        else
        {
          v7 = [v9 predicateForProperty:MPMediaItemPropertyGenrePersistentID];
          if (v7)
          {
            v8 = 5;
          }

          else
          {
            v7 = [v9 predicateForProperty:MPMediaPlaylistPropertyPersistentID];
            v8 = 6;
            if (!v7)
            {
              v8 = 0;
            }
          }
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v8;
  }

  if (a4)
  {
    v7 = v7;
    *a4 = v7;
  }
}

- (id)_pinnedPlaylists
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(NMBridgeSyncedMusicController *)self syncInfoController];
    v10 = [v9 syncInfo];
    v11 = [v10 keepLocalEnabledPlaylists];
    v12 = [(NMBridgeSyncedMusicController *)self _libraryPersistentIDs:v11 type:4];
  }

  else
  {
    v13 = +[NMSMediaPinningManager sharedManager];
    v14 = [v13 pinnedPlaylists];
    v9 = [NSMutableSet setWithArray:v14];

    v15 = +[NMSMediaPinningManager sharedManager];
    v10 = [v15 workoutPlaylistID];

    if ([v10 longLongValue])
    {
      [v9 addObject:v10];
    }

    v12 = [v9 copy];
  }

  return v12;
}

- (id)_pinnedAlbums
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(NMBridgeSyncedMusicController *)self syncInfoController];
    v10 = [v9 syncInfo];
    v11 = [v10 keepLocalEnabledAlbums];
    v12 = [(NMBridgeSyncedMusicController *)self _libraryPersistentIDs:v11 type:2];
  }

  else
  {
    v9 = +[NMSMediaPinningManager sharedManager];
    v10 = [v9 pinnedAlbums];
    v12 = [NSSet setWithArray:v10];
  }

  return v12;
}

- (id)_workoutPlaylistID
{
  v2 = +[NMSMediaPinningManager sharedManager];
  v3 = [v2 workoutPlaylistID];

  return v3;
}

- (unint64_t)_numberOfSongs
{
  v2 = [(NMBridgeSyncedMusicController *)self syncInfoController];
  v3 = [v2 syncInfo];
  v4 = [v3 itemCount];

  return v4;
}

- (unint64_t)_numberOfAlbums
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(NMBridgeSyncedMusicController *)self syncInfoController];
    v10 = [v9 syncInfo];
    v11 = [v10 allAlbums];
    v12 = [(NMBridgeSyncedMusicController *)self _libraryPersistentIDs:v11 type:2];
    v13 = [v12 count];
  }

  else
  {
    v9 = +[NMSMediaPinningManager sharedManager];
    v10 = [v9 albumIdentifiers];
    v13 = [v10 count];
  }

  return v13;
}

- (unint64_t)_numberOfPlaylists
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(NMBridgeSyncedMusicController *)self syncInfoController];
    v10 = [v9 syncInfo];
    v11 = [v10 allPlaylists];
    v12 = [(NMBridgeSyncedMusicController *)self _libraryPersistentIDs:v11 type:4];
    v13 = [v12 count];
  }

  else
  {
    v9 = +[NMSMediaPinningManager sharedManager];
    v10 = [v9 playlistIdentifiers];
    v13 = [v10 count];
  }

  return v13;
}

- (void)_pinPlaylist:(id)a3
{
  v4 = a3;
  v5 = sub_9AEC(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] Pinning playlist: %@", &v20, 0xCu);
  }

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v8 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:v7];
  v9 = [v8 firstObject];
  v10 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v11 = [v9 supportsCapability:v10];

  if (v11)
  {
    [(NMBridgeSyncedMusicController *)self _performKeepLocalRequestWithModelObject:v4 enableState:1];
  }

  else
  {
    v12 = [v4 identifiers];
    v13 = [v12 library];
    v14 = [v13 persistentID];

    v15 = +[NMSMediaPinningManager sharedManager];
    v16 = [NSNumber numberWithLongLong:v14];
    v17 = [v15 isPlaylistPinned:v16];

    if ((v17 & 1) == 0)
    {
      v18 = +[NMSMediaPinningManager sharedManager];
      v19 = [NSNumber numberWithLongLong:v14];
      [v18 pinPlaylist:v19 completionHandler:0];
    }
  }
}

- (void)_pinAlbum:(id)a3
{
  v4 = a3;
  v5 = sub_9AEC(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] Pinning album: %@", &v20, 0xCu);
  }

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v8 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:v7];
  v9 = [v8 firstObject];
  v10 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v11 = [v9 supportsCapability:v10];

  if (v11)
  {
    [(NMBridgeSyncedMusicController *)self _performKeepLocalRequestWithModelObject:v4 enableState:1];
  }

  else
  {
    v12 = [v4 identifiers];
    v13 = [v12 library];
    v14 = [v13 persistentID];

    v15 = +[NMSMediaPinningManager sharedManager];
    v16 = [NSNumber numberWithLongLong:v14];
    v17 = [v15 isAlbumPinned:v16];

    if ((v17 & 1) == 0)
    {
      v18 = +[NMSMediaPinningManager sharedManager];
      v19 = [NSNumber numberWithLongLong:v14];
      [v18 pinAlbum:v19 completionHandler:0];
    }
  }
}

- (void)_unpinPlaylist:(id)a3
{
  v4 = a3;
  v5 = sub_9AEC(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] Unpinning playlist: %@", &v16, 0xCu);
  }

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v8 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:v7];
  v9 = [v8 firstObject];
  v10 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v11 = [v9 supportsCapability:v10];

  if (v11)
  {
    [(NMBridgeSyncedMusicController *)self _performKeepLocalRequestWithModelObject:v4 enableState:-1];
  }

  else
  {
    v12 = +[NMSMediaPinningManager sharedManager];
    v13 = [v4 identifiers];
    v14 = [v13 library];
    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 persistentID]);
    [v12 unpinPlaylist:v15 completionHandler:0];
  }
}

- (void)_unpinAlbum:(id)a3
{
  v4 = a3;
  v5 = sub_9AEC(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] Unpinning album: %@", &v16, 0xCu);
  }

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v8 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:v7];
  v9 = [v8 firstObject];
  v10 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v11 = [v9 supportsCapability:v10];

  if (v11)
  {
    [(NMBridgeSyncedMusicController *)self _performKeepLocalRequestWithModelObject:v4 enableState:-1];
  }

  else
  {
    v12 = +[NMSMediaPinningManager sharedManager];
    v13 = [v4 identifiers];
    v14 = [v13 library];
    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 persistentID]);
    [v12 unpinAlbum:v15 completionHandler:0];
  }
}

- (void)_performKeepLocalRequestWithModelObject:(id)a3 enableState:(int64_t)a4
{
  v6 = a3;
  [(NMBridgeSyncedMusicController *)self _prepareTransientStateWithModelObject:v6 enableState:a4];
  v7 = objc_alloc_init(NMSKeepLocalRequestOptions);
  [v7 setCellularBundleIdentifier:@"com.apple.NanoMusic"];
  [v7 setQualityOfService:25];
  v8 = [[NMSKeepLocalRequestProxy alloc] initWithModelObject:v6 enableState:a4];
  v9 = [[NMUKeepLocalRequestController alloc] initWithRequest:v8 presentingViewController:self];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_8C18;
  v14[3] = &unk_14790;
  objc_copyWeak(&v16, &location);
  v10 = v6;
  v15 = v10;
  [v9 performRequestWithOptions:v7 completion:v14];
  v11 = +[NMSyncDefaults sharedDefaults];
  [v11 setLastUserPinningChangeDateForBundleID:@"com.apple.NanoMusic"];

  v12 = sub_9AEC(13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] Music: Set last user pinning change date, due to KeepLocal change.", v13, 2u);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)_libraryPersistentIDs:(id)a3 type:(int64_t)a4
{
  v6 = [a3 mutableCopy];
  v7 = [(NMKeepLocalTransientState *)self->_keepLocalTransientState modelObjectsWithEnableState:1 type:a4];
  v8 = [v7 valueForKeyPath:@"identifiers.library.persistentID"];
  [v6 unionSet:v8];

  v9 = [(NMKeepLocalTransientState *)self->_keepLocalTransientState modelObjectsWithEnableState:-1 type:a4];
  v10 = [v9 valueForKeyPath:@"identifiers.library.persistentID"];
  [v6 minusSet:v10];

  v11 = [v6 copy];

  return v11;
}

- (void)_prepareTransientStateWithModelObject:(id)a3 enableState:(int64_t)a4
{
  [(NMKeepLocalTransientState *)self->_keepLocalTransientState setEnableState:a4 forModelObject:a3];

  [(NMBridgeSyncedMusicController *)self _reloadContents];
}

- (void)_completeTransientStateWithModelObject:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    keepLocalTransientState = self->_keepLocalTransientState;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_8F6C;
    v8[3] = &unk_147B8;
    objc_copyWeak(&v9, &location);
    [(NMKeepLocalTransientState *)keepLocalTransientState confirmEnableStateForModelObject:v6 expirationBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(NMKeepLocalTransientState *)self->_keepLocalTransientState removeEnableStateForModelObject:v6];
    [(NMBridgeSyncedMusicController *)self _reloadContents];
  }
}

- (void)_disableEditableAndButtonIfNothingLeftToEdit
{
  if (![(NMBridgeSyncedMusicController *)self _hasAlbumsOrPlaylists])
  {
    [(NMBridgeSyncedMusicController *)self setEditable:0];

    [(NMBridgeSyncedMusicController *)self setEditingButtonHidden:1 animated:1];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NMBridgeSyncedMusicController *)self specifierAtIndexPath:v7];
  if ([(NMBridgeSyncedMusicController *)self editable])
  {
    v9 = [v8 identifier];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"ADD_MUSIC_TITLE" value:@"Add Music…" table:0];
    v12 = [v9 isEqualToString:v11];

    if (v12)
    {
      v13 = sub_9AEC(13);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[NMBridgeSyncedMusicController] Add Music tapped while editable; ending editable mode", buf, 2u);
      }

      [(NMBridgeSyncedMusicController *)self setEditable:0];
    }
  }

  v16.receiver = self;
  v16.super_class = NMBridgeSyncedMusicController;
  v14 = [(NMBridgeSyncedMusicController *)&v16 tableView:v6 willSelectRowAtIndexPath:v7];

  return v14;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 section];
  v9 = [v7 numberOfSections];

  if (v8 == v9 - 1)
  {
    v10 = [(NMBridgeSyncedMusicController *)self specifierAtIndexPath:v6];
    v11 = [v10 identifier];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ADD_MUSIC_TITLE" value:@"Add Music…" table:0];
    v14 = [v11 isEqualToString:v13] ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NMBridgeSyncedMusicController *)self specifierAtIndexPath:v9];
  v11 = [v10 propertyForKey:NMBUISpecifierCellConfigurationKey];
  v12 = [v11 modelObject];

  v13 = [NSPredicate predicateWithFormat:@"SELF != %@", v10];
  v14 = [v9 section];
  if (v14 != [v8 numberOfSections] - 1)
  {
    goto LABEL_10;
  }

  v15 = [v12 identifiers];
  v16 = [v15 library];
  v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v16 persistentID]);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NMBridgeSyncedMusicController *)self albumSpecifiers];
      v23 = v22 = v17;
      v24 = [v23 filteredArrayUsingPredicate:v13];
      [(NMBridgeSyncedMusicController *)self setAlbumSpecifiers:v24];

      v17 = v22;
      [(NMBridgeSyncedMusicController *)self _unpinAlbum:v12];
    }

    goto LABEL_9;
  }

  v27 = v17;
  v18 = [(NMBridgeSyncedMusicController *)self _workoutPlaylistID];
  if (!v18 || (v19 = v18, -[NMBridgeSyncedMusicController _workoutPlaylistID](self, "_workoutPlaylistID"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isEqualToNumber:v17], v20, v19, !v21))
  {
    v25 = [(NMBridgeSyncedMusicController *)self playlistSpecifiers];
    v26 = [v25 filteredArrayUsingPredicate:v13];
    [(NMBridgeSyncedMusicController *)self setPlaylistSpecifiers:v26];

    [(NMBridgeSyncedMusicController *)self _unpinPlaylist:v12];
    v17 = v27;
LABEL_9:

LABEL_10:
    v28.receiver = self;
    v28.super_class = NMBridgeSyncedMusicController;
    [(NMBridgeSyncedMusicController *)&v28 tableView:v8 commitEditingStyle:a4 forRowAtIndexPath:v9];
    [(NMBridgeSyncedMusicController *)self _disableEditableAndButtonIfNothingLeftToEdit];
    goto LABEL_11;
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_96B8;
  v29[3] = &unk_147E0;
  v29[4] = self;
  v30 = v13;
  v31 = v12;
  v32 = v8;
  v34 = a4;
  v33 = v9;
  [(NMBridgeSyncedMusicController *)self _showWorkoutPlaylistWarningWithDeletionCompletion:v29];

LABEL_11:
}

- (void)_showWorkoutPlaylistWarningWithDeletionCompletion:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SYNC_SETTINGS_WORKOUT_PLAYLIST_DESCRIPTION" value:@"This playlist was selected as your Workout Playlist. If you remove this playlist from your Apple Watch table:{it will no longer play automatically when you start a workout.", 0}];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:0];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SYNC_SETTINGS_WORKOUT_PLAYLIST_REMOVE_ACTION" value:@"Remove" table:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_99A8;
  v16[3] = &unk_14808;
  v17 = v4;
  v10 = v4;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:v16];
  [v7 addAction:v11];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"SYNC_SETTINGS_WORKOUT_PLAYLIST_CANCEL_ACTION" value:@"Cancel" table:0];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];

  v15 = [(NMBridgeSyncedMusicController *)self _selfOrPresentedViewController];
  [v15 presentViewController:v7 animated:1 completion:0];
}

@end