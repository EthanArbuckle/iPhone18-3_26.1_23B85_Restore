@interface MPMediaLibrary
+ (MPMediaLibrary)defaultMediaLibrary;
+ (MPMediaLibrary)mediaLibraryWithUniqueIdentifier:(id)a3;
+ (MPMediaLibrary)mediaLibraryWithUniqueIdentifier:(id)a3 allowsLoadingFromDisk:(BOOL)a4;
+ (MPMediaLibraryAuthorizationStatus)authorizationStatus;
+ (id)_deviceMediaLibraryWithUserIdentity:(id)a3 createIfRequired:(BOOL)a4;
+ (id)_libraryDataProviders;
+ (id)_libraryForDataProvider:(id)a3;
+ (id)_mediaLibraries;
+ (id)_mediaLibraryWithUniqueIdentifier:(id)a3 userDSID:(id)a4;
+ (id)_sharedCloudServiceStatusMonitor;
+ (id)deviceMediaLibrary;
+ (id)deviceMediaLibraryWithUserIdentity:(id)a3;
+ (id)libraryDataProviders;
+ (id)mediaLibraries;
+ (id)sharedMediaLibraries;
+ (int64_t)_mediaLibraryAuthorizationStatusFromCloudServiceAuthorizationStatus:(int64_t)a3;
+ (void)_endDiscoveringMediaLibrariesIfAllowed;
+ (void)_postNotificationName:(id)a3 library:(id)a4 userInfo:(id)a5;
+ (void)addLibraryDataProvider:(id)a3;
+ (void)beginDiscoveringMediaLibraries;
+ (void)endDiscoveringMediaLibraries;
+ (void)initialize;
+ (void)libraryPathDidChangeForDataProvider:(id)a3;
+ (void)logDatabaseAccess;
+ (void)postEntitiesAddedOrRemovedNotificationForLibraryDataProvider:(id)a3;
+ (void)reloadDisplayValuesForLibraryDataProvider:(id)a3;
+ (void)reloadDynamicPropertiesForLibraryDataProvider:(id)a3;
+ (void)reloadInvisiblePropertiesForLibraryDataProvider:(id)a3;
+ (void)reloadLibraryDataProvider:(id)a3;
+ (void)removeLibraryDataProvider:(id)a3 removalReason:(int64_t)a4;
+ (void)requestAuthorization:(void *)completionHandler;
+ (void)setDefaultMediaLibrary:(id)a3;
+ (void)setGlobalPrivacyClientWithAuditToken:(id *)a3;
+ (void)syncGenerationDidChangeForLibraryDataProvider:(id)a3;
+ (void)uniqueIdentifierDidChangeForLibraryDataProvider:(id)a3;
- (BOOL)_checkHasContent:(BOOL *)a3 determined:(BOOL *)a4 mediaType:(unint64_t)a5 queryHasEntitiesBlock:(id)a6;
- (BOOL)_checkHasContent:(BOOL *)a3 determined:(BOOL *)a4 queryHasEntitiesBlock:(id)a5;
- (BOOL)_handlesSameAccountAs:(id)a3;
- (BOOL)_hasCollectionsForQueryCriteria:(id)a3;
- (BOOL)_hasItemsForQueryCriteria:(id)a3;
- (BOOL)deleteItems:(id)a3;
- (BOOL)hasAddedToLibraryAppleMusicContent;
- (BOOL)hasAudiobooks;
- (BOOL)hasComposers;
- (BOOL)hasGeniusMixes;
- (BOOL)hasMedia;
- (BOOL)hasMediaOfType:(unint64_t)a3;
- (BOOL)hasPlaylists;
- (BOOL)hasPodcasts;
- (BOOL)hasSongs;
- (BOOL)hasUbiquitousBookmarkableItems;
- (BOOL)hasUserPinnedLibraryEntity;
- (BOOL)hasUserPlaylists;
- (BOOL)hasUserPlaylistsContainingAppleMusicContent;
- (BOOL)importOriginalArtworkFromImageData:(id)a3 withArtworkToken:(id)a4 artworkType:(int64_t)a5 sourceType:(int64_t)a6 mediaType:(unint64_t)a7;
- (BOOL)isCurrentThreadInTransaction;
- (BOOL)isDeviceLibrary;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGeniusEnabled;
- (BOOL)itemExistsInDatabaseWithPersistentID:(unint64_t)a3;
- (BOOL)itemExistsWithPersistentID:(unint64_t)a3;
- (BOOL)performTransactionWithBlock:(id)a3;
- (BOOL)playlistExistsWithPersistentID:(unint64_t)a3;
- (BOOL)removeItems:(id)a3;
- (BOOL)removePlaylist:(id)a3;
- (BOOL)removePlaylist:(id)a3 preserveUndeletableEntities:(BOOL)a4;
- (BOOL)requiresAuthentication;
- (BOOL)writable;
- (ICUserIdentity)userIdentity;
- (ML3MusicLibrary)ml3Library;
- (MPMediaLibrary)init;
- (MPMediaLibrary)initWithClientIdentity:(id)a3 userIdentity:(id)a4;
- (MPMediaLibrary)initWithCoder:(id)a3;
- (MPMediaLibrary)initWithDatabasePath:(id)a3;
- (MSVSQLDatabase)msvDatabase;
- (NSDate)lastModifiedDate;
- (NSDate)sagaLastItemPlayDataUploadDate;
- (NSDate)sagaLastLibraryUpdateTime;
- (NSDate)sagaLastPlaylistPlayDataUploadDate;
- (NSDate)sagaLastSubscribedContainersUpdateTime;
- (NSNumber)sagaAccountID;
- (NSString)description;
- (NSString)storefrontIdentifier;
- (NSURL)protectedContentSupportStorageURL;
- (id)URLForHomeSharingRequest:(id)a3;
- (id)_addPlaylistWithName:(id)a3 activeGeniusPlaylist:(BOOL)a4 externalVendorIdentifier:(id)a5 properties:(id)a6 trackList:(id)a7 playlistEntryProperties:(id)a8;
- (id)_collectionPersistentIdentifiersForQueryCriteria:(id)a3;
- (id)_collectionsForQueryCriteria:(id)a3;
- (id)_getCachedValueForQueryCritiera:(id)a3 valueCriteriaCache:(id)a4 entitiesForCriteriaCache:(id)a5 didLoadBlocksByQueryCriteria:(id)a6 valueLoadedFromEntitiesArrayBlock:(id)a7 loadValueFromDataProviderBlock:(id)a8;
- (id)_initWithLibraryDataProvider:(id)a3;
- (id)_itemPersistentIdentifiersForQueryCriteria:(id)a3;
- (id)_itemsForQueryCriteria:(id)a3;
- (id)additionalLibraryFilterPredicates;
- (id)artworkDataSource;
- (id)collectionInLibraryWithPersistentID:(unint64_t)a3 groupingType:(int64_t)a4;
- (id)collectionWithPersistentID:(unint64_t)a3 groupingType:(int64_t)a4 verifyExistence:(BOOL)a5;
- (id)connectionAssertionWithIdentifier:(id)a3;
- (id)decodeItemWithCoder:(id)a3;
- (id)entityWithLibraryURL:(id)a3;
- (id)entityWithMultiverseIdentifier:(id)a3;
- (id)entityWithPersistentID:(int64_t)a3 entityType:(int64_t)a4;
- (id)entityWithSpotlightIdentifier:(id)a3;
- (id)errorResolverForItem:(id)a3;
- (id)favoriteSongsPlaylist;
- (id)itLibrary;
- (id)itemWithPersistentID:(unint64_t)a3 verifyExistence:(BOOL)a4;
- (id)itemWithStoreID:(unint64_t)a3;
- (id)newPlaylistWithPersistentID:(unint64_t)a3;
- (id)pathForAssetURL:(id)a3;
- (id)photosMemoriesPlaylist;
- (id)playbackHistoryPlaylist;
- (id)playlistWithGlobalID:(id)a3;
- (id)playlistWithPersistentID:(unint64_t)a3;
- (id)preferredAudioLanguages;
- (id)preferredSubtitleLanguages;
- (id)securityScopedFileURLForAssetURL:(id)a3;
- (int64_t)cloudFilteringType;
- (int64_t)libraryChangeObservers;
- (int64_t)playlistGeneration;
- (int64_t)sagaDatabaseUserVersion;
- (int64_t)sagaOnDiskDatabaseRevision;
- (int64_t)status;
- (shared_ptr<mlcore::DeviceLibrary>)_MediaLibrary_coreLibrary;
- (unint64_t)_countOfCollectionsForQueryCriteria:(id)a3;
- (unint64_t)_countOfItemsForQueryCriteria:(id)a3;
- (unint64_t)currentEntityRevision;
- (unint64_t)filterAvailableContentGroups:(unint64_t)a3 withOptions:(unint64_t)a4;
- (unint64_t)hash;
- (unint64_t)syncGenerationID;
- (unint64_t)syncPlaylistId;
- (unint64_t)usageForSyncedMediaOfType:(unint64_t)a3;
- (unsigned)homeSharingDatabaseID;
- (void)_activeUserDidChangeNotification:(id)a3;
- (void)_clearCachedContentDataAndResultSets:(BOOL)a3;
- (void)_clearCachedEntitiesIncludingResultSets:(BOOL)a3;
- (void)_clearCountCriteriaCaches;
- (void)_clearPendingDisconnection;
- (void)_disconnect;
- (void)_displayValuesDidChangeNotification:(id)a3;
- (void)_performBlockOnLibraryHandlingTheSameAccount:(id)a3;
- (void)_reloadLibraryForContentsChangeWithNotificationInfo:(id)a3;
- (void)_reloadLibraryForDynamicPropertyChangeWithNotificationInfo:(id)a3;
- (void)_reloadLibraryForInvisiblePropertyChangeWithNotificationInfo:(id)a3;
- (void)_reloadLibraryForPathChange;
- (void)_reloadLibraryForRestrictionsChange;
- (void)_removeConnectionAssertion:(id)a3;
- (void)_scheduleLibraryChangeNotificationPostingBlock:(id)a3;
- (void)_setLibraryFilterPredicates;
- (void)_setupNotifications;
- (void)_tearDownNotifications;
- (void)_updateDeviceLibrary:(shared_ptr<mlcore:(void *)a4 :(unint64_t)a5 DeviceLibrary>)a3 expectedEntityCountForEntityClass:count:;
- (void)activeUserChangeDidFinish;
- (void)addGlobalPlaylistWithID:(id)a3 andAddToCloudLibrary:(BOOL)a4 completion:(id)a5;
- (void)addItemWithProductID:(NSString *)productID completionHandler:(void *)completionHandler;
- (void)addLibraryFilterPredicate:(id)a3;
- (void)addNonLibraryOwnedPlaylistWithGlobalID:(id)a3 completion:(id)a4;
- (void)addNonLibraryOwnedPlaylistsWithGlobalIDs:(id)a3 completion:(id)a4;
- (void)addPlaylistStoreItemsWithMetadata:(id)a3 completion:(id)a4;
- (void)addStoreItem:(int64_t)a3 andAddTracksToCloudLibrary:(BOOL)a4 withCompletion:(id)a5;
- (void)addStoreItemIDs:(id)a3 referralObject:(id)a4 andAddTracksToCloudLibrary:(BOOL)a5 withCompletion:(id)a6;
- (void)addToLocalDeviceLibraryGlobalPlaylistWithID:(id)a3 completion:(id)a4;
- (void)addTracksToMyLibrary:(id)a3;
- (void)beginGeneratingLibraryChangeNotifications;
- (void)clearLocationPropertiesOfItem:(id)a3;
- (void)clearSagaCloudAccountID;
- (void)clearSagaLastItemPlayDataUploadDate;
- (void)clearSagaLastPlaylistPlayDataUploadDate;
- (void)connectWithAuthenticationData:(id)a3 completionBlock:(id)a4;
- (void)connectWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)downloadAsset:(id)a3 completionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)endGeneratingLibraryChangeNotifications;
- (void)enumerateEntityChangesAfterSyncAnchor:(id)a3 maximumRevisionType:(int64_t)a4 inUsersLibrary:(BOOL)a5 usingBlock:(id)a6;
- (void)geniusItemsForSeedItem:(id)a3 completion:(id)a4;
- (void)getPlaylistWithUUID:(NSUUID *)uuid creationMetadata:(MPMediaPlaylistCreationMetadata *)creationMetadata completionHandler:(void *)completionHandler;
- (void)importArtworkTokenForEntityPersistentID:(unint64_t)a3 entityType:(int64_t)a4 artworkToken:(id)a5 artworkType:(int64_t)a6 sourceType:(int64_t)a7;
- (void)logDatabaseAccess;
- (void)performReadTransactionWithBlock:(id)a3;
- (void)performStoreAlbumArtistLibraryImport:(id)a3 withCompletion:(id)a4;
- (void)performStoreItemLibraryImport:(id)a3 withCompletion:(id)a4;
- (void)populateLocationPropertiesOfItem:(id)a3 withPath:(id)a4 assetProtectionType:(int64_t)a5;
- (void)populateLocationPropertiesOfItem:(id)a3 withPath:(id)a4 assetProtectionType:(int64_t)a5 completionBlock:(id)a6;
- (void)removeArtworkForEntityPersistentID:(unint64_t)a3 entityType:(int64_t)a4 artworkType:(int64_t)a5 sourceType:(int64_t)a6;
- (void)removeLibraryFilterPredicate:(id)a3;
- (void)setClientIdentity:(id)a3;
- (void)setCloudFilteringType:(int64_t)a3;
- (void)setSagaAccountID:(id)a3;
- (void)setSagaDatabaseUserVersion:(int64_t)a3;
- (void)setSagaLastItemPlayDataUploadDate:(id)a3;
- (void)setSagaLastLibraryUpdateTime:(id)a3;
- (void)setSagaLastPlaylistPlayDataUploadDate:(id)a3;
- (void)setSagaLastSubscribedContainersUpdateTime:(id)a3;
- (void)setSagaOnDiskDatabaseRevision:(int64_t)a3;
- (void)setStorefrontIdentifier:(id)a3;
- (void)setSyncPlaylistId:(unint64_t)a3;
- (void)setValues:(id)a3 forProperties:(id)a4 forItemPersistentIDs:(id)a5;
@end

@implementation MPMediaLibrary

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_18729);
  }
}

void __28__MPMediaLibrary_initialize__block_invoke()
{
  v0 = dispatch_queue_create("default_media_library", 0);
  v1 = __defaultMediaLibraryQueue;
  __defaultMediaLibraryQueue = v0;

  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.MPMediaLibrary.global.serial.queue", v2);
  v4 = __serialAccessQueue;
  __serialAccessQueue = v3;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = __userMediaLibraries;
  __userMediaLibraries = v5;
}

+ (MPMediaLibrary)defaultMediaLibrary
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__18543;
  v12 = __Block_byref_object_dispose__18544;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MPMediaLibrary_defaultMediaLibrary__block_invoke;
  block[3] = &unk_1E7680410;
  block[4] = &v8;
  dispatch_sync(__defaultMediaLibraryQueue, block);
  v3 = v9[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [a1 deviceMediaLibrary];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __36__MPMediaLibrary_deviceMediaLibrary__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [[MPMediaLibrary alloc] _initWithUserIdentity:0];
  v1 = deviceMediaLibrary___mediaLibrary;
  deviceMediaLibrary___mediaLibrary = v0;

  v2 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = deviceMediaLibrary___mediaLibrary;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Singleton", &v8, 0xCu);
  }

  v3 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v4 = [v3 isAppleTV];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:deviceMediaLibrary___mediaLibrary selector:sel__activeUserDidChangeNotification_ name:*MEMORY[0x1E69E4098] object:0];

    v6 = [_MPActiveUserChangeMonitor alloc];
    v7 = [(_MPActiveUserChangeMonitor *)v6 initWithDelegate:deviceMediaLibrary___mediaLibrary];
    [deviceMediaLibrary___mediaLibrary setActiveUserChangeMonitor:v7];
  }
}

+ (id)_sharedCloudServiceStatusMonitor
{
  if (_sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitorOnceToken != -1)
  {
    dispatch_once(&_sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitorOnceToken, &__block_literal_global_181);
  }

  v3 = _sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitor;

  return v3;
}

void __50__MPMediaLibrary__sharedCloudServiceStatusMonitor__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69E43E8]);
  v1 = _sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitor;
  _sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitor = v0;
}

void __37__MPMediaLibrary_defaultMediaLibrary__block_invoke(uint64_t a1)
{
  if (__defaultMediaLibraryOverride)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), __defaultMediaLibraryOverride);
  }
}

+ (id)deviceMediaLibrary
{
  if (deviceMediaLibrary_onceToken != -1)
  {
    dispatch_once(&deviceMediaLibrary_onceToken, &__block_literal_global_68);
  }

  v3 = deviceMediaLibrary___mediaLibrary;

  return v3;
}

+ (MPMediaLibraryAuthorizationStatus)authorizationStatus
{
  v3 = [a1 _sharedCloudServiceStatusMonitor];
  v4 = [v3 authorizationStatusForScopes:2];

  return [a1 _mediaLibraryAuthorizationStatusFromCloudServiceAuthorizationStatus:v4];
}

- (void)_setupNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(location, self);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __37__MPMediaLibrary__setupNotifications__block_invoke;
  v29[3] = &unk_1E7679528;
  objc_copyWeak(&v30, location);
  v5 = [v3 addObserverForName:@"MPCloudControllerCanShowCloudTracksDidChangeNotification" object:0 queue:0 usingBlock:v29];
  [(NSArray *)v4 addObject:v5];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __37__MPMediaLibrary__setupNotifications__block_invoke_2;
  v27[3] = &unk_1E7679528;
  objc_copyWeak(&v28, location);
  v6 = [v3 addObserverForName:@"MPMediaLibraryDisplayValuesDidChangeNotification" object:self queue:0 usingBlock:v27];
  [(NSArray *)v4 addObject:v6];

  v7 = MPUIApplication();
  v8 = *MEMORY[0x1E69DDAD8];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __37__MPMediaLibrary__setupNotifications__block_invoke_3;
  v25[3] = &unk_1E7679528;
  objc_copyWeak(&v26, location);
  v9 = [v3 addObserverForName:v8 object:v7 queue:0 usingBlock:v25];
  [(NSArray *)v4 addObject:v9];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __37__MPMediaLibrary__setupNotifications__block_invoke_4;
  v23[3] = &unk_1E7679528;
  objc_copyWeak(&v24, location);
  v10 = [v3 addObserverForName:@"MPMediaLibraryFilteringDidChangeNotification" object:0 queue:0 usingBlock:v23];
  [(NSArray *)v4 addObject:v10];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__MPMediaLibrary__setupNotifications__block_invoke_5;
  v21[3] = &unk_1E7679528;
  objc_copyWeak(&v22, location);
  v11 = [v3 addObserverForName:@"MPMediaLibraryCloudLibraryAvailabilityDidChangeNotification" object:0 queue:0 usingBlock:v21];
  [(NSArray *)v4 addObject:v11];

  v12 = *MEMORY[0x1E69ADD68];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __37__MPMediaLibrary__setupNotifications__block_invoke_6;
  v19[3] = &unk_1E7679528;
  objc_copyWeak(&v20, location);
  v13 = [v3 addObserverForName:v12 object:0 queue:0 usingBlock:v19];
  [(NSArray *)v4 addObject:v13];

  v14 = *MEMORY[0x1E69B2D30];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __37__MPMediaLibrary__setupNotifications__block_invoke_7;
  v17[3] = &unk_1E7679528;
  objc_copyWeak(&v18, location);
  v15 = [v3 addObserverForName:v14 object:0 queue:0 usingBlock:v17];
  [(NSArray *)v4 addObject:v15];

  notificationObservers = self->_notificationObservers;
  self->_notificationObservers = v4;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(location);
}

- (void)_reloadLibraryForRestrictionsChange
{
  [(MPMediaLibrary *)self _setLibraryFilterPredicates];
  [(MPMediaLibrary *)self _clearCachedContentDataAndResultSets:1];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__MPMediaLibrary__reloadLibraryForRestrictionsChange__block_invoke;
  v3[3] = &unk_1E7682518;
  v3[4] = self;
  [(MPMediaLibrary *)self _scheduleLibraryChangeNotificationPostingBlock:v3];
}

- (void)_setLibraryFilterPredicates
{
  if (+[MPMediaLibrary authorizationStatus]== MPMediaLibraryAuthorizationStatusAuthorized)
  {
    v17 = [(MPMediaLibrary *)self additionalLibraryFilterPredicates];
    v3 = [(MPMediaLibrary *)self cloudFilteringType];
    v4 = [(MPMediaLibrary *)self libraryDataProvider];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(MPMediaLibrary *)self libraryDataProvider];
      [v6 setLibraryEntityFilterPredicatesWithCloudFilteringType:v3 additionalFilterPredicates:v17];
    }

    v7 = [(MPMediaLibrary *)self libraryDataProvider];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(MPMediaLibrary *)self libraryDataProvider];
      [v9 setLibraryContainerFilterPredicatesWithCloudFilteringType:v3 additionalFilterPredicates:v17];
    }

    v10 = [(MPMediaLibrary *)self libraryDataProvider];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(MPMediaLibrary *)self libraryDataProvider];
      [v12 setLibraryPublicEntityFilterPredicatesWithCloudFilteringType:v3 additionalFilterPredicates:v17];
    }

    v13 = [(MPMediaLibrary *)self libraryDataProvider];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(MPMediaLibrary *)self libraryDataProvider];
      [v15 setLibraryPublicContainerFilterPredicatesWithCloudFilteringType:v3 additionalFilterPredicates:v17];
    }
  }

  else
  {
    v16 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "Not authorized, skipping filter predicate application", buf, 2u);
    }
  }
}

- (id)additionalLibraryFilterPredicates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18543;
  v10 = __Block_byref_object_dispose__18544;
  v11 = 0;
  additionalLibraryFilterPredicatesAccessQueue = self->_additionalLibraryFilterPredicatesAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MPMediaLibrary_additionalLibraryFilterPredicates__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(additionalLibraryFilterPredicatesAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)cloudFilteringType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MPMediaLibrary_cloudFilteringType__block_invoke;
  block[3] = &unk_1E7680410;
  block[4] = &v5;
  dispatch_sync(__serialAccessQueue, block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __51__MPMediaLibrary_additionalLibraryFilterPredicates__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __37__MPMediaLibrary__setupNotifications__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadLibraryForRestrictionsChange];
}

- (BOOL)isDeviceLibrary
{
  v3 = +[MPMediaLibrary deviceMediaLibrary];
  v4 = [(MPMediaLibrary *)self isEqual:v3];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E69E4420] currentDeviceInfo];
    v7 = [v6 supportsMultipleITunesAccounts];

    if (v7)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __33__MPMediaLibrary_isDeviceLibrary__block_invoke;
      v9[3] = &unk_1E76819F0;
      v9[4] = self;
      v9[5] = &v10;
      dispatch_sync(__defaultMediaLibraryQueue, v9);
      v5 = *(v11 + 24);
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

+ (id)_mediaLibraries
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MPMediaLibrary__mediaLibraries__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_mediaLibraries_onceToken != -1)
  {
    dispatch_once(&_mediaLibraries_onceToken, block);
  }

  v2 = _mediaLibraries____mediaLibraries;

  return v2;
}

- (int64_t)status
{
  if ([(MPMediaLibrary *)self isDeviceLibrary])
  {
    return 2;
  }

  connectionProgress = self->_connectionProgress;
  if (connectionProgress < 0.0)
  {
    return 0;
  }

  if (connectionProgress < 1.0)
  {
    return 1;
  }

  return 2;
}

void __33__MPMediaLibrary__mediaLibraries__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFA8];
  v4 = [*(a1 + 32) deviceMediaLibrary];
  v2 = [v1 setWithObject:v4];
  v3 = _mediaLibraries____mediaLibraries;
  _mediaLibraries____mediaLibraries = v2;
}

- (unint64_t)hash
{
  v2 = [(MPMediaLibrary *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)artworkDataSource
{
  v2 = [(MPMediaLibrary *)self libraryDataProvider];
  v3 = [v2 artworkDataSource];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MPMediaLibrary *)self uniqueIdentifier];
  v5 = [(MPMediaLibrary *)self userIdentity];
  v6 = [(MPMediaLibrary *)self libraryDataProvider];
  v7 = [v3 stringWithFormat:@"<MPMediaLibrary: %p> uniqueID=%@ [%@] dataProvider: %p", self, v4, v5, v6];

  return v7;
}

- (ICUserIdentity)userIdentity
{
  userIdentity = self->_userIdentity;
  if (userIdentity)
  {
    v3 = userIdentity;
  }

  else
  {
    v3 = [MEMORY[0x1E69E4680] activeAccount];
  }

  return v3;
}

- (void)beginGeneratingLibraryChangeNotifications
{
  v3 = +[MPMediaLibrary deviceMediaLibrary];

  if (v3 == self)
  {
    ++self->_libraryChangeObservers;
  }
}

+ (id)sharedMediaLibraries
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1 mediaLibraries];
  v3 = [v2 allObjects];
  v4 = [v3 mutableCopy];

  [v4 sortUsingComparator:&__block_literal_global_386];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 copy];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isDeviceLibrary])
        {
          [v4 removeObjectIdenticalTo:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)mediaLibraries
{
  v2 = [a1 _mediaLibraries];
  v3 = [v2 copy];

  return v3;
}

- (int64_t)libraryChangeObservers
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = +[MPMediaLibrary deviceMediaLibrary];

  if (v3 == self)
  {
    return self->_libraryChangeObservers;
  }

  v4 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Notifications - Reading libraryChangeObservers from deviceMediaLibrary", &v8, 0xCu);
  }

  v5 = +[MPMediaLibrary deviceMediaLibrary];
  v6 = [v5 libraryChangeObservers];

  return v6;
}

uint64_t __53__MPMediaLibrary__reloadLibraryForRestrictionsChange__block_invoke(uint64_t a1)
{
  [MPMediaLibrary _postNotificationName:@"MPMediaLibraryDidChangeNotification" library:*(a1 + 32) userInfo:0];
  v2 = *(a1 + 32);

  return [MPMediaLibrary _postNotificationName:@"MPMediaLibraryRestrictionsDidChangeNotification" library:v2 userInfo:0];
}

- (unint64_t)currentEntityRevision
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  libraryDataProvider = self->_libraryDataProvider;

  return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider currentEntityRevision];
}

+ (void)beginDiscoveringMediaLibraries
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!__numberOfHomeSharingObservers++)
    {

      +[MPHomeSharingML3DataProvider beginScanningForLibraries];
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];

    dispatch_async(v3, &__block_literal_global_178);
  }
}

- (shared_ptr<mlcore::DeviceLibrary>)_MediaLibrary_coreLibrary
{
  v56 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock([(MPMediaLibrary *)self _MLCoreStorageLockPointer]);
  v37 = self;
  v3 = [(MPMediaLibrary *)self _MLCoreStorage];
  if (!v3)
  {
    v35 = [(MPMediaLibrary *)v37 databasePath];
    v32 = [(__CFString *)v35 lastPathComponent];
    v4 = [(__CFString *)v32 UTF8String];
    if (!v4)
    {
      v38 = dispatch_semaphore_create(0);
      v5 = [(MPMediaLibrary *)v37 _dataProviderDescription];
      v6 = v5;
      v7 = MEMORY[0x1E69B13D8];
      v49[0] = @"MPMediaLibrary";
      v49[1] = @"databasePath";
      v8 = @"nil";
      v9 = v35;
      if (!v35)
      {
        v9 = @"nil";
      }

      v50[0] = v37;
      v50[1] = v9;
      v49[2] = @"databaseNameString";
      v49[3] = @"dataProviderDescription";
      if (v32)
      {
        v10 = v32;
      }

      else
      {
        v10 = @"nil";
      }

      if (v5)
      {
        v8 = v5;
      }

      v50[2] = v10;
      v50[3] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];
      v51 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      v13 = *MEMORY[0x1E69B1340];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __61__MPMediaLibrary_MediaLibraryCore___MediaLibrary_coreLibrary__block_invoke;
      v44[3] = &unk_1E7682518;
      v14 = v38;
      v45 = v14;
      [v7 snapshotWithDomain:v13 type:@"Bug" subType:@"Invalid Database Path" context:@"databaseNameStringPtr is null" triggerThresholdValues:0 events:v12 completion:v44];

      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    }

    std::string::basic_string[abi:ne200100]<0>(&__s, v4);
    v33 = [(__CFString *)v35 stringByDeletingLastPathComponent];
    v15 = v33;
    v16 = [v33 fileSystemRepresentation];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(v42, v17);
    v18 = MEMORY[0x1E696AEC0];
    v19 = MSVSystemRootDirectory();
    v20 = v19;
    v21 = @"/";
    if (v19)
    {
      v21 = v19;
    }

    v48[0] = v21;
    v48[1] = @"System";
    v48[2] = @"Library";
    v48[3] = @"PrivateFrameworks";
    v48[4] = @"MediaLibraryCore.framework";
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:5];
    v36 = [v18 pathWithComponents:v22];

    v23 = v36;
    v24 = [v36 fileSystemRepresentation];
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(v41, v25);
    v34 = NSTemporaryDirectory();
    v26 = v34;
    v27 = [v34 fileSystemRepresentation];
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(v40, v28);
    MEMORY[0x1A58DF730](v54, v42);
    MEMORY[0x1A58DF730](&__p, v40);
    MEMORY[0x1A58DF730](&v52, v41);
    std::string::basic_string[abi:ne200100]<0>(&v55, "en");
    memset(v39, 0, 24);
    v46 = v39;
    LOBYTE(v47) = 0;
    operator new();
  }

  v29 = v37;
  os_unfair_lock_unlock([(MPMediaLibrary *)v37 _MLCoreStorageLockPointer]);
  [v3 _MediaLibrary_coreLibrary];

  result.__cntrl_ = v31;
  result.__ptr_ = v30;
  return result;
}

- (void)clearSagaLastPlaylistPlayDataUploadDate
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  [v2 clearSagaLastPlaylistPlayDataUploadDate];
}

- (void)clearSagaLastItemPlayDataUploadDate
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  [v2 clearSagaLastItemPlayDataUploadDate];
}

- (void)clearSagaCloudAccountID
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  [v2 clearSagaCloudAccountID];
}

- (void)setSagaLastSubscribedContainersUpdateTime:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaLibrary *)self ml3Library];
  [v5 setSagaLastSubscribedContainersUpdateTime:v4];
}

- (NSDate)sagaLastSubscribedContainersUpdateTime
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  v3 = [v2 sagaLastSubscribedContainersUpdateTime];

  return v3;
}

- (void)setSagaLastLibraryUpdateTime:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaLibrary *)self ml3Library];
  [v5 setSagaLastLibraryUpdateTime:v4];
}

- (NSDate)sagaLastLibraryUpdateTime
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  v3 = [v2 sagaLastLibraryUpdateTime];

  return v3;
}

- (void)setSagaOnDiskDatabaseRevision:(int64_t)a3
{
  v4 = [(MPMediaLibrary *)self ml3Library];
  [v4 setSagaOnDiskDatabaseRevision:a3];
}

- (int64_t)sagaOnDiskDatabaseRevision
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  v3 = [v2 sagaOnDiskDatabaseRevision];

  return v3;
}

- (void)setStorefrontIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaLibrary *)self ml3Library];
  [v5 setStorefrontIdentifier:v4];
}

- (NSString)storefrontIdentifier
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  v3 = [v2 storefrontIdentifier];

  return v3;
}

- (void)setSagaDatabaseUserVersion:(int64_t)a3
{
  v4 = [(MPMediaLibrary *)self ml3Library];
  [v4 setSagaDatabaseUserVersion:a3];
}

- (int64_t)sagaDatabaseUserVersion
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  v3 = [v2 sagaDatabaseUserVersion];

  return v3;
}

- (void)setSagaLastPlaylistPlayDataUploadDate:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaLibrary *)self ml3Library];
  [v5 setSagaLastPlaylistPlayDataUploadDate:v4];
}

- (NSDate)sagaLastPlaylistPlayDataUploadDate
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  v3 = [v2 sagaLastPlaylistPlayDataUploadDate];

  return v3;
}

- (void)setSagaLastItemPlayDataUploadDate:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaLibrary *)self ml3Library];
  [v5 setSagaLastItemPlayDataUploadDate:v4];
}

- (NSDate)sagaLastItemPlayDataUploadDate
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  v3 = [v2 sagaLastItemPlayDataUploadDate];

  return v3;
}

- (void)setSagaAccountID:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaLibrary *)self ml3Library];
  [v5 setSagaAccountID:v4];
}

- (NSNumber)sagaAccountID
{
  v2 = [(MPMediaLibrary *)self ml3Library];
  v3 = [v2 sagaAccountID];

  return v3;
}

- (void)_updateDeviceLibrary:(shared_ptr<mlcore:(void *)a4 :(unint64_t)a5 DeviceLibrary>)a3 expectedEntityCountForEntityClass:count:
{
  cntrl = a3.__cntrl_;
  v25 = *MEMORY[0x1E69E9840];
  v8 = log2(a4);
  v9 = exp2(ceil(v8));
  v10 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MPMediaLibrary *)self uniqueIdentifier];
    v12 = MEMORY[0x1E696AEC0];
    (*(*cntrl + 56))(__p, cntrl);
    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [v12 stringWithUTF8String:v13];
    *buf = 138544130;
    v18 = v11;
    v19 = 2112;
    v20 = v14;
    v21 = 2048;
    v22 = a4;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "[MPMLC:%{public}@] _MediaLibrary_coreLibrary | setting expected count [init] entity=%@ count=%ld roundedCount=%ld", buf, 0x2Au);

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  mlcore::DeviceLibrary::setExpectedEntityQuerySize();
}

- (unint64_t)filterAvailableContentGroups:(unint64_t)a3 withOptions:(unint64_t)a4
{
  v5 = a3;
  v49[3] = *MEMORY[0x1E69E9840];
  v7 = [MPModelSong kindWithVariants:3];
  v47 = [MPModelAlbum kindWithSongKind:v7];
  if (CFPreferencesGetAppBooleanValue(@"showAllTVShows", @"com.apple.Music", 0))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v46 = [MPModelTVEpisode kindWithVariants:v8];
  if (CFPreferencesGetAppBooleanValue(@"showAllTVShows", @"com.apple.Music", 0))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = [MPModelMovie kindWithVariants:v9];
  v11 = 0;
  if (v5)
  {
    v12 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
    v11 = [(MPMediaLibraryView *)v12 hasEntitiesForModelKind:v47];
  }

  v45 = v10;
  if ((v5 & 2) != 0)
  {
    v16 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
    v17 = [MPModelArtist kindWithAlbumKind:v47];
    v18 = [(MPMediaLibraryView *)v16 hasEntitiesForModelKind:v17];

    if (v18)
    {
      v11 |= 2uLL;
    }

    if ((v5 & 4) == 0)
    {
LABEL_11:
      if ((v5 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_11;
  }

  v19 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
  v20 = [MPModelAlbum kindWithVariants:2 songKind:v7];
  v21 = [(MPMediaLibraryView *)v19 hasEntitiesForModelKind:v20];

  if (v21)
  {
    v11 |= 4uLL;
  }

  if ((v5 & 8) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_26:
  v22 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
  v23 = [MPModelComposer kindWithAlbumKind:v47];
  v24 = [(MPMediaLibraryView *)v22 hasEntitiesForModelKind:v23];

  if (v24)
  {
    v11 |= 8uLL;
  }

  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_29:
  v25 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
  v26 = [MPModelGenre kindWithAlbumKind:v47];
  v27 = [(MPMediaLibraryView *)v25 hasEntitiesForModelKind:v26];

  if (v27)
  {
    v11 |= 0x10uLL;
  }

  if ((v5 & 0x20) != 0)
  {
LABEL_14:
    v13 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
    v14 = [MPModelSong kindWithVariants:2];
    v15 = [(MPMediaLibraryView *)v13 hasEntitiesForModelKind:v14];

    if (v15)
    {
      v11 |= 0x20uLL;
    }
  }

LABEL_17:
  if ((v5 & 0x40) == 0)
  {
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v28 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
  v49[0] = v7;
  v49[1] = v46;
  v29 = [MPModelMovie kindWithVariants:2];
  v49[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  v31 = [MPModelPlaylistEntry kindWithKinds:v30];

  v32 = [MPModelPlaylist kindWithPlaylistEntryKind:v31 options:0];
  LODWORD(v29) = [(MPMediaLibraryView *)v28 hasEntitiesForModelKind:v32];

  if (v29)
  {
    v11 |= 0x40uLL;
  }

  if ((v5 & 0x80) != 0)
  {
LABEL_36:
    v33 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
    if ([(MPMediaLibraryView *)v33 hasEntitiesForModelKind:v7])
    {
      v11 |= 0x80uLL;
    }
  }

LABEL_39:
  if ((v5 & 0x100) != 0)
  {
    v34 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
    v35 = [MPModelTVSeason kindWithEpisodeKind:v46];
    v36 = [MPModelTVShow kindWithSeasonKind:v35];
    v37 = [(MPMediaLibraryView *)v34 hasEntitiesForModelKind:v36];

    if (v37)
    {
      v11 |= 0x100uLL;
    }
  }

  if ((v5 & 0x200) != 0)
  {
    v38 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
    if ([(MPMediaLibraryView *)v38 hasEntitiesForModelKind:v45])
    {
      v11 |= 0x200uLL;
    }
  }

  if ((v5 & 0x400) != 0)
  {
    v39 = [[MPMediaLibraryView alloc] initWithLibrary:self filteringOptions:a4];
    v48 = v7;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    v41 = [MPModelPlaylistEntry kindWithKinds:v40];

    v42 = [MPModelPlaylist kindWithVariants:64 playlistEntryKind:v41 options:0];
    v43 = [(MPMediaLibraryView *)v39 hasEntitiesForModelKind:v42];

    if (v43)
    {
      v11 |= 0x400uLL;
    }
  }

  return v11;
}

- (void)addNonLibraryOwnedPlaylistsWithGlobalIDs:(id)a3 completion:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__MPMediaLibrary_addNonLibraryOwnedPlaylistsWithGlobalIDs_completion___block_invoke;
    aBlock[3] = &unk_1E7679638;
    objc_copyWeak(&v16, &location);
    v8 = v6;
    v14 = v8;
    v15 = v7;
    v9 = _Block_copy(aBlock);
    [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider addNonLibraryOwnedPlaylistsWithGlobalIDs:v8 completion:v9];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v10 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A278];
    v19[0] = @"unimplemented";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = [v10 errorWithDomain:@"MPMediaLibraryErrorDomain" code:-1 userInfo:v11];

    (*(v7 + 2))(v7, 0, v12);
  }
}

void __70__MPMediaLibrary_addNonLibraryOwnedPlaylistsWithGlobalIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
  v9 = v8;
  if (v6)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v17 = 138543362;
    v18 = v10;
    v11 = "Imported %{public}@ playlists";
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v15 = *(a1 + 32);
    v17 = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = 0;
    v11 = "Failed to import %{public}@ playlists with error: %{public}@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 22;
  }

  _os_log_impl(&dword_1A238D000, v12, v13, v11, &v17, v14);
LABEL_7:

  [WeakRetained _clearCachedEntitiesIncludingResultSets:1];
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v5, v6);
  }
}

- (void)addNonLibraryOwnedPlaylistWithGlobalID:(id)a3 completion:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __68__MPMediaLibrary_addNonLibraryOwnedPlaylistWithGlobalID_completion___block_invoke;
    v18 = &unk_1E7679638;
    objc_copyWeak(&v21, &location);
    v20 = v7;
    v8 = v6;
    v19 = v8;
    v9 = _Block_copy(&v15);
    libraryDataProvider = self->_libraryDataProvider;
    v25[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:{1, v15, v16, v17, v18}];
    [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider addNonLibraryOwnedPlaylistsWithGlobalIDs:v11 completion:v9];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v12 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"unimplemented";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v12 errorWithDomain:@"MPMediaLibraryErrorDomain" code:-1 userInfo:v13];

    (*(v7 + 2))(v7, 0, v14);
  }
}

void __68__MPMediaLibrary_addNonLibraryOwnedPlaylistWithGlobalID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _clearCachedEntitiesIncludingResultSets:1];
  v7 = *(a1 + 40);
  if (v7)
  {
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v9 = [v11 objectForKey:*(a1 + 32)];
      v10 = [v9 longLongValue];

      v8 = [WeakRetained playlistWithPersistentID:v10];
      v7 = *(a1 + 40);
    }

    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)addToLocalDeviceLibraryGlobalPlaylistWithID:(id)a3 completion:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    libraryDataProvider = self->_libraryDataProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__MPMediaLibrary_addToLocalDeviceLibraryGlobalPlaylistWithID_completion___block_invoke;
    v12[3] = &unk_1E7679610;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider addToLocalDeviceLibraryGlobalPlaylistWithID:v6 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"unimplemented";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v9 errorWithDomain:@"MPMediaLibraryErrorDomain" code:-1 userInfo:v10];

    (*(v7 + 2))(v7, 0, v11);
  }
}

void __73__MPMediaLibrary_addToLocalDeviceLibraryGlobalPlaylistWithID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearCachedEntitiesIncludingResultSets:1];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)addGlobalPlaylistWithID:(id)a3 andAddToCloudLibrary:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    libraryDataProvider = self->_libraryDataProvider;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__MPMediaLibrary_addGlobalPlaylistWithID_andAddToCloudLibrary_completion___block_invoke;
    v14[3] = &unk_1E76795E8;
    objc_copyWeak(&v16, &location);
    v15 = v9;
    [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider addGlobalPlaylistWithID:v8 andAddToCloudLibrary:v6 completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    v11 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"unimplemented";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [v11 errorWithDomain:@"MPMediaLibraryErrorDomain" code:-1 userInfo:v12];

    (*(v9 + 2))(v9, v13);
  }
}

void __74__MPMediaLibrary_addGlobalPlaylistWithID_andAddToCloudLibrary_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearCachedEntitiesIncludingResultSets:1];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)removeArtworkForEntityPersistentID:(unint64_t)a3 entityType:(int64_t)a4 artworkType:(int64_t)a5 sourceType:(int64_t)a6
{
  if (objc_opt_respondsToSelector())
  {
    libraryDataProvider = self->_libraryDataProvider;

    [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider removeArtworkForEntityPersistentID:a3 entityType:a4 artworkType:a5 sourceType:a6];
  }
}

- (BOOL)importOriginalArtworkFromImageData:(id)a3 withArtworkToken:(id)a4 artworkType:(int64_t)a5 sourceType:(int64_t)a6 mediaType:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  if (objc_opt_respondsToSelector())
  {
    v14 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider importOriginalArtworkFromImageData:v12 withArtworkToken:v13 artworkType:a5 sourceType:a6 mediaType:a7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)importArtworkTokenForEntityPersistentID:(unint64_t)a3 entityType:(int64_t)a4 artworkToken:(id)a5 artworkType:(int64_t)a6 sourceType:(int64_t)a7
{
  v12 = a5;
  if (objc_opt_respondsToSelector())
  {
    [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider importArtworkTokenForEntityPersistentID:a3 entityType:a4 artworkToken:v12 artworkType:a6 sourceType:a7];
  }
}

- (void)addTracksToMyLibrary:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider addTracksToMyLibrary:v4];
  }
}

- (void)addPlaylistStoreItemsWithMetadata:(id)a3 completion:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34 = v6;
  if ([v6 count])
  {
    v33 = v7;
    if (objc_opt_respondsToSelector())
    {
      val = self;
      v8 = [v6 count];
      v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v11)
      {
        v12 = *v45;
        v36 = *MEMORY[0x1E695D940];
        v13 = *MEMORY[0x1E696A578];
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v45 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v44 + 1) + 8 * i);
            v16 = [v15 storeID];
            if (v16)
            {
              v17 = [v9 indexOfObject:v16];
              if (v17 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v18 = [v15 effectiveStorePlatformDictionary];
                v19 = [objc_alloc(MEMORY[0x1E69E4608]) initWithMetadataDictionary:v18];
                if (v19)
                {
                  [v9 addObject:v16];
                  [v35 addObject:v19];
                  v20 = [v9 count];

                  v17 = v20 - 1;
                }

                else
                {
                  v24 = MEMORY[0x1E696ABC0];
                  v50 = v13;
                  v51 = @"One or more store item metadata instances failed to be converted into SSLookupItems.";
                  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
                  v23 = [v24 errorWithDomain:v36 code:-1 userInfo:v25];

                  if (v23)
                  {

LABEL_28:
                    if (v33)
                    {
                      v33[2]();
                    }

                    goto LABEL_30;
                  }

                  v17 = 0x7FFFFFFFFFFFFFFFLL;
                }
              }

              v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
              [v37 addObject:v26];
            }

            else
            {
              v21 = MEMORY[0x1E696ABC0];
              v52 = v13;
              v53 = @"One or more store item metadata instances didn't have a valid storeID.";
              v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
              v23 = [v21 errorWithDomain:v36 code:-1 userInfo:v22];

              if (v23)
              {
                goto LABEL_28;
              }
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      objc_initWeak(&location, val);
      libraryDataProvider = val->_libraryDataProvider;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __63__MPMediaLibrary_addPlaylistStoreItemsWithMetadata_completion___block_invoke;
      v38[3] = &unk_1E76795C0;
      v41 = v33;
      objc_copyWeak(&v42, &location);
      v39 = v37;
      v40 = v35;
      [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider addPlaylistStoreItemsForLookupItems:v40 withCompletion:v38];

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
      v23 = 0;
LABEL_30:

      goto LABEL_31;
    }

    if (v7)
    {
      v29 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A578];
      v49 = @"unimplemented";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v31 = [v29 errorWithDomain:@"MPMediaLibraryErrorDomain" code:-1 userInfo:v30];

      (v33[2])(v33, 0, v31);
LABEL_31:
      v7 = v33;
    }
  }

  else if (v7)
  {
    if (v6)
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v28 = 0;
    }

    (v7[2])(v7, v28, 0);
  }
}

void __63__MPMediaLibrary_addPlaylistStoreItemsWithMetadata_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  if (v7)
  {
    if (v6)
    {
      (*(v7 + 16))(v7, 0, v6);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v10 = WeakRetained;
      if (WeakRetained)
      {
        v11 = WeakRetained;
      }

      else
      {
        v11 = +[MPMediaLibrary deviceMediaLibrary];
      }

      v12 = v11;

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = v5;
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
LABEL_9:
        v17 = 0;
        while (1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v12 itemWithPersistentID:objc_msgSend(*(*(&v37 + 1) + 8 * v17) verifyExistence:{"unsignedLongLongValue"), 0}];
          if (!v18)
          {
            break;
          }

          v19 = v18;
          [v8 addObject:v18];

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
            if (v15)
            {
              goto LABEL_9;
            }

            goto LABEL_15;
          }
        }

        v20 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E695D940];
        v42 = *MEMORY[0x1E696A578];
        v43 = @"One or more persistentID failed to be converted into MPMediaItem.";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v23 = [v20 errorWithDomain:v21 code:-1 userInfo:v22];

        v8 = 0;
        v24 = 0;
        if (v23)
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_15:
      }

      v25 = [*(a1 + 32) count];
      if (v25 <= [*(a1 + 40) count])
      {
        v23 = 0;
        v24 = v8;
      }

      else
      {
        v32 = v5;
        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v26 = *(a1 + 32);
        v27 = [v26 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v34;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v34 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = [v8 objectAtIndex:{objc_msgSend(*(*(&v33 + 1) + 8 * i), "unsignedIntegerValue")}];
              if (v31)
              {
                [v24 addObject:v31];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v28);
        }

        v23 = 0;
        v5 = v32;
      }

LABEL_29:
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)getPlaylistWithUUID:(NSUUID *)uuid creationMetadata:(MPMediaPlaylistCreationMetadata *)creationMetadata completionHandler:(void *)completionHandler
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = uuid;
  v9 = creationMetadata;
  v10 = completionHandler;
  v11 = [(NSUUID *)v8 UUIDString];
  if ([v11 length])
  {
    v12 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:@"externalVendorContainerTag"];
    v13 = +[MPMediaQuery playlistsQuery];
    [v13 setMediaLibrary:self];
    [v13 addFilterPredicate:v12];
    v14 = [v13 collections];
    v15 = [v14 firstObject];
    if (v15)
    {
      if (v10)
      {
        v10[2](v10, v15, 0);
      }

      goto LABEL_46;
    }

    v22 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    v23 = v22;
    if (v9)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "Creating playlist for %{public}@", &buf, 0xCu);
      }

      if (+[MPMediaLibrary authorizationStatus]== MPMediaLibraryAuthorizationStatusAuthorized)
      {
        v46 = [(MPMediaLibrary *)self libraryDataProvider];
        if (objc_opt_respondsToSelector())
        {
          v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v45 = [(MPMediaPlaylistCreationMetadata *)v9 name];
          if (v45)
          {
            [v47 setObject:v45 forKey:@"name"];
          }

          v44 = [(MPMediaPlaylistCreationMetadata *)v9 authorDisplayName];
          if (v44)
          {
            [v47 setObject:v44 forKey:@"externalVendorDisplayName"];
          }

          v43 = [(MPMediaPlaylistCreationMetadata *)v9 descriptionText];
          if (v43)
          {
            [v47 setObject:v43 forKey:@"descriptionInfo"];
          }

          v41 = [MEMORY[0x1E696AAE8] mainBundle];
          v42 = [v41 bundleIdentifier];
          if (v42)
          {
            [v47 setObject:v42 forKey:@"externalVendorIdentifier"];
          }

          [v47 setObject:MEMORY[0x1E695E118] forKey:@"isExternalVendorPlaylist"];
          [v47 setObject:v11 forKey:@"externalVendorContainerTag"];
          v24 = [v46 sdk_addPlaylistWithValuesForProperties:v47];
          if (v24 && (v40 = [[MPMediaPlaylist alloc] initWithPersistentID:v24]) != 0)
          {
            v55 = 0;
            v56 = &v55;
            v57 = 0x2050000000;
            v25 = getSKCloudServiceControllerClass_softClass;
            v58 = getSKCloudServiceControllerClass_softClass;
            if (!getSKCloudServiceControllerClass_softClass)
            {
              *&buf = MEMORY[0x1E69E9820];
              *(&buf + 1) = 3221225472;
              v68 = __getSKCloudServiceControllerClass_block_invoke;
              v69 = &unk_1E7680410;
              v70 = &v55;
              __getSKCloudServiceControllerClass_block_invoke(&buf);
              v25 = v56[3];
            }

            v26 = v25;
            _Block_object_dispose(&v55, 8);
            v39 = objc_alloc_init(v25);
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __73__MPMediaLibrary_getPlaylistWithUUID_creationMetadata_completionHandler___block_invoke;
            v49[3] = &unk_1E7679598;
            v15 = v40;
            v50 = v15;
            v51 = self;
            v54 = v24;
            v52 = v11;
            v53 = v10;
            [v39 requestCapabilitiesWithCompletionHandler:v49];
          }

          else
          {
            if (v10)
            {
              v10[2](v10, 0, 0);
            }

            v15 = 0;
          }
        }

        else
        {
          v36 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v46;
            _os_log_impl(&dword_1A238D000, v36, OS_LOG_TYPE_ERROR, "dataProvider: %{public}@ does not allow creating a playlist using the SDK", &buf, 0xCu);
          }

          if (!v10)
          {
            v15 = 0;
            goto LABEL_45;
          }

          v59 = *MEMORY[0x1E696A578];
          v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
          v38 = [v37 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F149ECA8 table:@"MediaPlayer"];
          v60 = v38;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];

          v45 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:0 userInfo:v47];
          (v10)[2](v10, 0, v45);
          v15 = 0;
        }

LABEL_45:
        goto LABEL_46;
      }

      v31 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_ERROR, "Create playlist failed, not authorized", &buf, 2u);
      }

      if (v10)
      {
        v61 = *MEMORY[0x1E696A578];
        v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
        v33 = [v32 localizedStringForKey:@"PERMISSION_DENIED" value:&stru_1F149ECA8 table:@"MediaPlayer"];
        v62 = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];

        v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:1 userInfo:v34];
        (v10)[2](v10, 0, v35);
      }
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_ERROR, "Could not find playlist for %{public}@ and no creation metadata was provided", &buf, 0xCu);
      }

      if (v10)
      {
        v27 = MEMORY[0x1E696ABC0];
        v63 = *MEMORY[0x1E696A578];
        v48 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
        v28 = [v48 localizedStringForKey:@"NOT_FOUND" value:&stru_1F149ECA8 table:@"MediaPlayer"];
        v64 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v30 = [v27 errorWithDomain:@"MPErrorDomain" code:4 userInfo:v29];

        (v10)[2](v10, 0, v30);
      }
    }

    v15 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v16 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MPMediaLibrary getPlaylistWithUUID:creationMetadata:completionHandler:]"];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Could not determine UUID string", &buf, 0xCu);
  }

  if (v10)
  {
    v18 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v20 = [v19 localizedStringForKey:@"NOT_FOUND" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v66 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v12 = [v18 errorWithDomain:@"MPErrorDomain" code:4 userInfo:v21];

    (v10)[2](v10, 0, v12);
LABEL_47:
  }
}

void __73__MPMediaLibrary_getPlaylistWithUUID_creationMetadata_completionHandler___block_invoke(uint64_t a1, __int16 a2, void *a3)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 0x100) != 0)
  {
    v16[0] = @"name";
    v16[1] = @"dateCreated";
    v16[2] = @"descriptionInfo";
    v16[3] = @"externalVendorDisplayName";
    v16[4] = @"externalVendorContainerTag";
    v16[5] = @"externalVendorIdentifier";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v9 = [v7 valuesForProperties:v8];

    v10 = [*(a1 + 40) userIdentity];
    v11 = [MPCloudController controllerWithUserIdentity:v10];
    v12 = *(a1 + 64);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__MPMediaLibrary_getPlaylistWithUUID_creationMetadata_completionHandler___block_invoke_2;
    v14[3] = &unk_1E767B488;
    v15 = *(a1 + 48);
    [v11 sdk_createPlaylistWithPersistenID:v12 properties:v9 tracklist:0 completionHandler:v14];
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, *(a1 + 32), 0);
  }
}

void __73__MPMediaLibrary_getPlaylistWithUUID_creationMetadata_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "Cloud createPlaylist for %{public}@ failed: %{public}@", &v7, 0x16u);
    }
  }
}

- (void)performStoreAlbumArtistLibraryImport:(id)a3 withCompletion:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    libraryDataProvider = self->_libraryDataProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__MPMediaLibrary_performStoreAlbumArtistLibraryImport_withCompletion___block_invoke;
    v12[3] = &unk_1E7679570;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider performStoreAlbumArtistLibraryImport:v6 withCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"unimplemented";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v9 errorWithDomain:@"MPMediaLibraryErrorDomain" code:-1 userInfo:v10];

    (*(v7 + 2))(v7, 0, v11);
  }
}

void __70__MPMediaLibrary_performStoreAlbumArtistLibraryImport_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearCachedEntitiesIncludingResultSets:1];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)performStoreItemLibraryImport:(id)a3 withCompletion:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    libraryDataProvider = self->_libraryDataProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__MPMediaLibrary_performStoreItemLibraryImport_withCompletion___block_invoke;
    v12[3] = &unk_1E7679570;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider performStoreItemLibraryImport:v6 withCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"unimplemented";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v9 errorWithDomain:@"MPMediaLibraryErrorDomain" code:-1 userInfo:v10];

    (*(v7 + 2))(v7, 0, v11);
  }
}

void __63__MPMediaLibrary_performStoreItemLibraryImport_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearCachedEntitiesIncludingResultSets:1];
  if (*(a1 + 32))
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [WeakRetained itemWithPersistentID:objc_msgSend(*(*(&v15 + 1) + 8 * v13) verifyExistence:{"unsignedLongLongValue", v15), 0}];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)addStoreItemIDs:(id)a3 referralObject:(id)a4 andAddTracksToCloudLibrary:(BOOL)a5 withCompletion:(id)a6
{
  v19 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = -[MPStoreItemLibraryImportElement initWithStoreItemID:additionalTrackMetadata:]([MPStoreItemLibraryImportElement alloc], "initWithStoreItemID:additionalTrackMetadata:", [*(*(&v21 + 1) + 8 * v16) longLongValue], 0);
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [[MPStoreItemLibraryImport alloc] initWithImportElements:v11 referralObject:v9 usingCloudLibraryDestination:v19];
  [(MPMediaLibrary *)self performStoreItemLibraryImport:v18 withCompletion:v10];
}

- (void)addStoreItem:(int64_t)a3 andAddTracksToCloudLibrary:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v12[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = [v8 numberWithLongLong:a3];
  v12[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(MPMediaLibrary *)self addStoreItemIDs:v11 andAddTracksToCloudLibrary:v5 withCompletion:v9];
}

- (id)_initWithLibraryDataProvider:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = MPMediaLibrary;
  v6 = [(MPMediaLibrary *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryDataProvider, a3);
    v8 = dispatch_queue_create("com.apple.mediaplayer.MPMediaLibraryRemote", 0);
    entityCacheQueue = v7->_entityCacheQueue;
    v7->_entityCacheQueue = v8;

    v10 = dispatch_queue_create("com.apple.mediaplayer.MPMediaLibrary.connectionAssertions", 0);
    connectionAssertionsQueue = v7->_connectionAssertionsQueue;
    v7->_connectionAssertionsQueue = v10;

    v12 = dispatch_get_global_queue(2, 0);
    fixedQueue = v7->_fixedQueue;
    v7->_fixedQueue = v12;

    v7->__MLCoreStorageLock._os_unfair_lock_opaque = 0;
    v7->__MLCoreStorageLockPointer = &v7->__MLCoreStorageLock;
    v14 = dispatch_queue_create("com.apple.mediaplayer.MPMediaLibrary.additionalLibraryFilterPredicatesAccessQueue", 0);
    additionalLibraryFilterPredicatesAccessQueue = v7->_additionalLibraryFilterPredicatesAccessQueue;
    v7->_additionalLibraryFilterPredicatesAccessQueue = v14;

    v16 = objc_alloc_init(QueryCriteriaResultsCache);
    itemsForCriteriaCache = v7->_itemsForCriteriaCache;
    v7->_itemsForCriteriaCache = v16;

    v18 = objc_alloc_init(QueryCriteriaResultsCache);
    collectionsForCriteriaCache = v7->_collectionsForCriteriaCache;
    v7->_collectionsForCriteriaCache = v18;

    v7->_connectionProgress = -1.0;
  }

  return v7;
}

- (MSVSQLDatabase)msvDatabase
{
  v2 = [(MPMediaLibrary *)self databasePath];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    v4 = [objc_alloc(MEMORY[0x1E69B1490]) initWithURL:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ML3MusicLibrary)ml3Library
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider library];
  }

  else
  {
    v3 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider library];

    v3 = v4;
  }

  return v3;
}

- (void)_tearDownNotifications
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_notificationObservers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  notificationObservers = self->_notificationObservers;
  self->_notificationObservers = 0;
}

void __37__MPMediaLibrary__setupNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _canShowCloudTracksDidChangeNotification:v3];
}

void __37__MPMediaLibrary__setupNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _displayValuesDidChangeNotification:v3];
}

void __37__MPMediaLibrary__setupNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveMemoryWarning:v3];
}

void __37__MPMediaLibrary__setupNotifications__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadLibraryForRestrictionsChange];
}

void __37__MPMediaLibrary__setupNotifications__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadLibraryForRestrictionsChange];
}

void __37__MPMediaLibrary__setupNotifications__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = WeakRetained;
    os_unfair_lock_lock([v4 _MLCoreStorageLockPointer]);
    [v4 _setMLCoreStorage:0];
    v3 = v4;
    os_unfair_lock_unlock([v4 _MLCoreStorageLockPointer]);
    WeakRetained = v4;
  }
}

- (void)_disconnect
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSPointerArray *)self->_connectionAssertions compact];
  v3 = [(NSPointerArray *)self->_connectionAssertions allObjects];
  v4 = [v3 count];

  if (v4)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Library_Oversize");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSPointerArray *)self->_connectionAssertions allObjects];
      v7 = 138412546;
      v8 = self;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%@ Deferring disconnect due to active assertions: %{public}@", &v7, 0x16u);
    }

    self->_disconnectAfterReleasingAssertions = 1;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider disconnect];
    }

    [(MPMediaLibrary *)self _clearCachedEntitiesIncludingResultSets:0];
    self->_connectionProgress = -1.0;
  }
}

- (void)_removeConnectionAssertion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%p Releasing connection assertion: %{public}@", buf, 0x16u);
  }

  connectionAssertionsQueue = self->_connectionAssertionsQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MPMediaLibrary__removeConnectionAssertion___block_invoke;
  v8[3] = &unk_1E76823C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(connectionAssertionsQueue, v8);
}

void __45__MPMediaLibrary__removeConnectionAssertion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 160) count])
  {
    v2 = 0;
    while ([*(*(a1 + 32) + 160) pointerAtIndex:v2] != *(a1 + 40))
    {
      if (++v2 >= [*(*(a1 + 32) + 160) count])
      {
        goto LABEL_8;
      }
    }

    if (v2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(*(a1 + 32) + 160) removePointerAtIndex:v2];
    }
  }

LABEL_8:
  [*(*(a1 + 32) + 160) compact];
  v3 = os_log_create("com.apple.amp.mediaplayer", "Library_Oversize");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [*(v4 + 160) allObjects];
    v12 = 134218242;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%p Active assertions: %{public}@", &v12, 0x16u);
  }

  v6 = [*(*(a1 + 32) + 160) allObjects];
  v7 = [v6 count];

  if (!v7)
  {
    if (([*(a1 + 32) isDeviceLibrary] & 1) == 0)
    {
      v8 = SBSSpringBoardServerPort();
      MEMORY[0x1A58DF430](v8, *(*(a1 + 32) + 231), *(*(a1 + 32) + 232));
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 160);
    *(v9 + 160) = 0;
  }

  v11 = *(a1 + 32);
  if (!*(v11 + 160) && *(v11 + 176) == 1)
  {
    [v11 _disconnect];
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_377);
  }
}

- (id)_collectionsForQueryCriteria:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__18543;
  v31 = __Block_byref_object_dispose__18544;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__18543;
  v25 = __Block_byref_object_dispose__18544;
  v26 = 0;
  entityCacheQueue = self->_entityCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MPMediaLibrary__collectionsForQueryCriteria___block_invoke;
  block[3] = &unk_1E767FE70;
  v19 = &v27;
  block[4] = self;
  v6 = v4;
  v18 = v6;
  v20 = &v21;
  dispatch_sync(entityCacheQueue, block);
  v7 = v22[5];
  if (v7)
  {
    [v7 updateToLibraryCurrentRevision];
    v8 = [MPMediaEntityResultSetArray alloc];
    v9 = [(MPMediaEntityResultSetArray *)v8 initWithResultSet:v22[5] queryCriteria:v6 entityType:1 library:self];
    v10 = v28[5];
    v28[5] = v9;

    v11 = self->_entityCacheQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__MPMediaLibrary__collectionsForQueryCriteria___block_invoke_2;
    v14[3] = &unk_1E7681330;
    v14[4] = self;
    v16 = &v27;
    v15 = v6;
    dispatch_sync(v11, v14);
  }

  v12 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12;
}

void __47__MPMediaLibrary__collectionsForQueryCriteria___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 104) objectForKey:a1[5]];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(a1[7] + 8) + 40))
    {
      v8 = [*(a1[4] + 16) collectionResultSetForQueryCriteria:a1[5]];
      v9 = *(a1[7] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (*(*(a1[7] + 8) + 40))
      {
        v11 = *(a1[4] + 104);

        [v11 setObject:? forKey:?];
      }
    }
  }
}

- (void)setCloudFilteringType:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = +[MPMediaLibrary deviceMediaLibrary];

  if (v5 == self)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MPMediaLibrary_setCloudFilteringType___block_invoke;
    block[3] = &unk_1E76794F8;
    block[4] = &v18;
    block[5] = a3;
    dispatch_sync(__serialAccessQueue, block);
    if (*(v19 + 24) == 1)
    {
      v6 = +[MPMediaLibrary _mediaLibraries];
      v7 = [v6 copy];

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v22 count:16];
      if (v9)
      {
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * i) _reloadLibraryForRestrictionsChange];
          }

          v9 = [v8 countByEnumeratingWithState:&v13 objects:v22 count:16];
        }

        while (v9);
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = +[MPMediaLibrary deviceMediaLibrary];
    [v12 setCloudFilteringType:a3];
  }
}

uint64_t __40__MPMediaLibrary_setCloudFilteringType___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 != __cloudFilteringType)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    __cloudFilteringType = v1;
  }

  return result;
}

- (void)_clearPendingDisconnection
{
  connectionAssertionsQueue = self->_connectionAssertionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MPMediaLibrary__clearPendingDisconnection__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(connectionAssertionsQueue, block);
}

- (id)_collectionPersistentIdentifiersForQueryCriteria:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__18543;
  v25 = __Block_byref_object_dispose__18544;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  entityCacheQueue = self->_entityCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPMediaLibrary__collectionPersistentIdentifiersForQueryCriteria___block_invoke;
  block[3] = &unk_1E767FE70;
  v15 = &v17;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  v16 = &v21;
  dispatch_sync(entityCacheQueue, block);
  if (*(v18 + 24) == 1)
  {
    [v22[5] updateToLibraryCurrentRevision];
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22[5], "count")}];
  v8 = v22[5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MPMediaLibrary__collectionPersistentIdentifiersForQueryCriteria___block_invoke_2;
  v11[3] = &unk_1E76794D0;
  v9 = v7;
  v12 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v11];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __67__MPMediaLibrary__collectionPersistentIdentifiersForQueryCriteria___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 == 0;

  v3 = [*(a1[4] + 104) objectForKey:a1[5]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[7] + 8) + 40))
  {
    v6 = [*(a1[4] + 16) collectionResultSetForQueryCriteria:a1[5]];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(a1[7] + 8) + 40))
    {
      v9 = *(a1[4] + 104);

      [v9 setObject:? forKey:?];
    }
  }
}

void __67__MPMediaLibrary__collectionPersistentIdentifiersForQueryCriteria___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (id)_itemPersistentIdentifiersForQueryCriteria:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__18543;
  v25 = __Block_byref_object_dispose__18544;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  entityCacheQueue = self->_entityCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MPMediaLibrary__itemPersistentIdentifiersForQueryCriteria___block_invoke;
  block[3] = &unk_1E767FE70;
  v15 = &v17;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  v16 = &v21;
  dispatch_sync(entityCacheQueue, block);
  if (*(v18 + 24) == 1)
  {
    [v22[5] updateToLibraryCurrentRevision];
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22[5], "count")}];
  v8 = v22[5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MPMediaLibrary__itemPersistentIdentifiersForQueryCriteria___block_invoke_2;
  v11[3] = &unk_1E76794D0;
  v9 = v7;
  v12 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v11];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __61__MPMediaLibrary__itemPersistentIdentifiersForQueryCriteria___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 == 0;

  v3 = [*(a1[4] + 72) objectForKey:a1[5]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[7] + 8) + 40))
  {
    v6 = [*(a1[4] + 16) itemResultSetForQueryCriteria:a1[5]];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(a1[7] + 8) + 40))
    {
      v9 = *(a1[4] + 72);

      [v9 setObject:? forKey:?];
    }
  }
}

void __61__MPMediaLibrary__itemPersistentIdentifiersForQueryCriteria___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (unint64_t)_countOfCollectionsForQueryCriteria:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_libraryDataProvider)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__18543;
    v23 = __Block_byref_object_dispose__18544;
    v24 = 0;
    entityCacheQueue = self->_entityCacheQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MPMediaLibrary__countOfCollectionsForQueryCriteria___block_invoke;
    block[3] = &unk_1E7681330;
    v18 = &v19;
    block[4] = self;
    v7 = v4;
    v17 = v7;
    dispatch_sync(entityCacheQueue, block);
    v8 = v20[5];
    if (v8)
    {
      v9 = [v8 count];
    }

    else
    {
      countOfCollectionsForCriteriaCache = self->_countOfCollectionsForCriteriaCache;
      collectionsForCriteriaCache = self->_collectionsForCriteriaCache;
      countOfCollectionsDidLoadForCriteria = self->_countOfCollectionsDidLoadForCriteria;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __54__MPMediaLibrary__countOfCollectionsForQueryCriteria___block_invoke_3;
      v15[3] = &unk_1E7679480;
      v15[4] = self;
      v13 = [(MPMediaLibrary *)self _getCachedValueForQueryCritiera:v7 valueCriteriaCache:countOfCollectionsForCriteriaCache entitiesForCriteriaCache:collectionsForCriteriaCache didLoadBlocksByQueryCriteria:countOfCollectionsDidLoadForCriteria valueLoadedFromEntitiesArrayBlock:&__block_literal_global_365 loadValueFromDataProviderBlock:v15];
      v9 = [v13 integerValue];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __54__MPMediaLibrary__countOfCollectionsForQueryCriteria___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__MPMediaLibrary__countOfCollectionsForQueryCriteria___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MPMediaLibrary__countOfCollectionsForQueryCriteria___block_invoke_4;
  v8[3] = &unk_1E76794A8;
  v9 = v5;
  v7 = v5;
  [v6 loadQueryCriteria:a2 countOfCollectionsWithCompletionBlock:v8];
}

uint64_t __54__MPMediaLibrary__countOfCollectionsForQueryCriteria___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 count];

  return [v2 numberWithUnsignedInteger:v3];
}

void __54__MPMediaLibrary__countOfCollectionsForQueryCriteria___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    (*(v2 + 16))(v2, v3);
  }
}

- (unint64_t)_countOfItemsForQueryCriteria:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_libraryDataProvider)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__18543;
    v23 = __Block_byref_object_dispose__18544;
    v24 = 0;
    entityCacheQueue = self->_entityCacheQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__MPMediaLibrary__countOfItemsForQueryCriteria___block_invoke;
    block[3] = &unk_1E7681330;
    v18 = &v19;
    block[4] = self;
    v7 = v4;
    v17 = v7;
    dispatch_sync(entityCacheQueue, block);
    v8 = v20[5];
    if (v8)
    {
      v9 = [v8 count];
    }

    else
    {
      countOfItemsForCriteriaCache = self->_countOfItemsForCriteriaCache;
      itemsForCriteriaCache = self->_itemsForCriteriaCache;
      countOfItemsDidLoadForCriteria = self->_countOfItemsDidLoadForCriteria;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__MPMediaLibrary__countOfItemsForQueryCriteria___block_invoke_3;
      v15[3] = &unk_1E7679480;
      v15[4] = self;
      v13 = [(MPMediaLibrary *)self _getCachedValueForQueryCritiera:v7 valueCriteriaCache:countOfItemsForCriteriaCache entitiesForCriteriaCache:itemsForCriteriaCache didLoadBlocksByQueryCriteria:countOfItemsDidLoadForCriteria valueLoadedFromEntitiesArrayBlock:&__block_literal_global_362 loadValueFromDataProviderBlock:v15];
      v9 = [v13 integerValue];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __48__MPMediaLibrary__countOfItemsForQueryCriteria___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __48__MPMediaLibrary__countOfItemsForQueryCriteria___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MPMediaLibrary__countOfItemsForQueryCriteria___block_invoke_4;
  v8[3] = &unk_1E76794A8;
  v9 = v5;
  v7 = v5;
  [v6 loadQueryCriteria:a2 countOfItemsWithCompletionBlock:v8];
}

uint64_t __48__MPMediaLibrary__countOfItemsForQueryCriteria___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 count];

  return [v2 numberWithUnsignedInteger:v3];
}

void __48__MPMediaLibrary__countOfItemsForQueryCriteria___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)_hasCollectionsForQueryCriteria:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_libraryDataProvider)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__18543;
    v23 = __Block_byref_object_dispose__18544;
    v24 = 0;
    entityCacheQueue = self->_entityCacheQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__MPMediaLibrary__hasCollectionsForQueryCriteria___block_invoke;
    block[3] = &unk_1E7681330;
    v18 = &v19;
    block[4] = self;
    v7 = v4;
    v17 = v7;
    dispatch_sync(entityCacheQueue, block);
    v8 = v20[5];
    if (v8)
    {
      v9 = [v8 count] != 0;
    }

    else
    {
      collectionsForCriteriaCache = self->_collectionsForCriteriaCache;
      hasCollectionsForCriteriaCache = self->_hasCollectionsForCriteriaCache;
      hasCollectionsDidLoadForCriteria = self->_hasCollectionsDidLoadForCriteria;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__MPMediaLibrary__hasCollectionsForQueryCriteria___block_invoke_3;
      v15[3] = &unk_1E7679480;
      v15[4] = self;
      v13 = [(MPMediaLibrary *)self _getCachedValueForQueryCritiera:v7 valueCriteriaCache:hasCollectionsForCriteriaCache entitiesForCriteriaCache:collectionsForCriteriaCache didLoadBlocksByQueryCriteria:hasCollectionsDidLoadForCriteria valueLoadedFromEntitiesArrayBlock:&__block_literal_global_360 loadValueFromDataProviderBlock:v15];
      v9 = [v13 BOOLValue];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __50__MPMediaLibrary__hasCollectionsForQueryCriteria___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __50__MPMediaLibrary__hasCollectionsForQueryCriteria___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__MPMediaLibrary__hasCollectionsForQueryCriteria___block_invoke_4;
  v8[3] = &unk_1E7679458;
  v9 = v5;
  v7 = v5;
  [v6 loadQueryCriteria:a2 hasCollectionsWithCompletionBlock:v8];
}

uint64_t __50__MPMediaLibrary__hasCollectionsForQueryCriteria___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 MPIsEmpty] ^ 1;

  return [v2 numberWithBool:v3];
}

void __50__MPMediaLibrary__hasCollectionsForQueryCriteria___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)_hasItemsForQueryCriteria:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_libraryDataProvider)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__18543;
    v23 = __Block_byref_object_dispose__18544;
    v24 = 0;
    entityCacheQueue = self->_entityCacheQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__MPMediaLibrary__hasItemsForQueryCriteria___block_invoke;
    block[3] = &unk_1E7681330;
    v18 = &v19;
    block[4] = self;
    v7 = v4;
    v17 = v7;
    dispatch_sync(entityCacheQueue, block);
    v8 = v20[5];
    if (v8)
    {
      v9 = [v8 count] != 0;
    }

    else
    {
      itemsForCriteriaCache = self->_itemsForCriteriaCache;
      hasItemsForCriteriaCache = self->_hasItemsForCriteriaCache;
      hasItemsDidLoadForCriteria = self->_hasItemsDidLoadForCriteria;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__MPMediaLibrary__hasItemsForQueryCriteria___block_invoke_3;
      v15[3] = &unk_1E7679480;
      v15[4] = self;
      v13 = [(MPMediaLibrary *)self _getCachedValueForQueryCritiera:v7 valueCriteriaCache:hasItemsForCriteriaCache entitiesForCriteriaCache:itemsForCriteriaCache didLoadBlocksByQueryCriteria:hasItemsDidLoadForCriteria valueLoadedFromEntitiesArrayBlock:&__block_literal_global_357 loadValueFromDataProviderBlock:v15];
      v9 = [v13 BOOLValue];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __44__MPMediaLibrary__hasItemsForQueryCriteria___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __44__MPMediaLibrary__hasItemsForQueryCriteria___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__MPMediaLibrary__hasItemsForQueryCriteria___block_invoke_4;
  v8[3] = &unk_1E7679458;
  v9 = v5;
  v7 = v5;
  [v6 loadQueryCriteria:a2 hasItemsWithCompletionBlock:v8];
}

uint64_t __44__MPMediaLibrary__hasItemsForQueryCriteria___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 MPIsEmpty] ^ 1;

  return [v2 numberWithBool:v3];
}

void __44__MPMediaLibrary__hasItemsForQueryCriteria___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    (*(v2 + 16))(v2, v3);
  }
}

- (id)_getCachedValueForQueryCritiera:(id)a3 valueCriteriaCache:(id)a4 entitiesForCriteriaCache:(id)a5 didLoadBlocksByQueryCriteria:(id)a6 valueLoadedFromEntitiesArrayBlock:(id)a7 loadValueFromDataProviderBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__18543;
  v60 = __Block_byref_object_dispose__18544;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__18543;
  v54 = __Block_byref_object_dispose__18544;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__351;
  v48 = __Block_byref_object_dispose__352;
  v49 = 0;
  entityCacheQueue = self->_entityCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke;
  block[3] = &unk_1E7679410;
  v41 = &v56;
  v21 = v15;
  v34 = v21;
  v22 = v14;
  v35 = v22;
  v23 = v16;
  v36 = v23;
  v24 = v18;
  v39 = v24;
  v25 = v17;
  v37 = v25;
  v42 = &v44;
  v26 = v19;
  v40 = v26;
  v38 = self;
  v43 = &v50;
  dispatch_sync(entityCacheQueue, block);
  if (v45[5])
  {
    v27 = qos_class_self();
    v28 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v27, 0, v45[5]);
    v29 = v45[5];
    v45[5] = v28;

    dispatch_async(self->_fixedQueue, v45[5]);
  }

  v30 = v51[5];
  if (v30)
  {
    dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
  }

  v31 = v57[5];

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);

  return v31;
}

void __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v5 = [*(a1 + 48) objectForKey:*(a1 + 40)];
    if (v5)
    {
      v6 = (*(*(a1 + 72) + 16))();
      v7 = [v6 copy];
      v8 = *(*(a1 + 88) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = *(*(*(a1 + 88) + 8) + 40);
      if (!v10)
      {
        v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:0];
        v12 = *(*(a1 + 88) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 88) + 8) + 40);
      }

      [*(a1 + 32) setObject:v10 forKey:*(a1 + 40)];
    }

    else
    {
      v14 = [*(a1 + 56) objectForKey:*(a1 + 40)];
      if (![v14 count])
      {
        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [*(a1 + 56) setObject:v14 forKey:*(a1 + 40)];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_2;
        v26[3] = &unk_1E76793C0;
        v31 = *(a1 + 80);
        v15 = *(a1 + 40);
        v16 = *(a1 + 64);
        v27 = v15;
        v28 = v16;
        v29 = *(a1 + 32);
        v14 = v14;
        v30 = v14;
        v17 = [v26 copy];
        v18 = *(*(a1 + 96) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }

      v20 = dispatch_semaphore_create(0);
      v21 = *(*(a1 + 104) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_6;
      v25[3] = &unk_1E76793E8;
      v23 = *(a1 + 104);
      v25[4] = *(a1 + 88);
      v25[5] = v23;
      v24 = [v25 copy];
      [v14 addObject:v24];
    }
  }
}

void __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_3;
  v9[3] = &unk_1E7679398;
  v8 = *(a1 + 40);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  (*(v2 + 16))(v2, v3, v9);
}

void __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_6(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__18543;
  v20 = __Block_byref_object_dispose__18544;
  v21 = 0;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_4;
  block[3] = &unk_1E767D190;
  v11 = *(a1 + 40);
  v5 = v3;
  v12 = v5;
  v13 = *(a1 + 48);
  v15 = &v16;
  v14 = *(a1 + 56);
  dispatch_sync(v4, block);
  v6 = v17[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_5;
  v8[3] = &unk_1E7679370;
  v7 = v5;
  v9 = v7;
  [v6 enumerateObjectsUsingBlock:v8];

  _Block_object_dispose(&v16, 8);
}

uint64_t __188__MPMediaLibrary__getCachedValueForQueryCritiera_valueCriteriaCache_entitiesForCriteriaCache_didLoadBlocksByQueryCriteria_valueLoadedFromEntitiesArrayBlock_loadValueFromDataProviderBlock___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = [*(a1 + 56) copy];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 56);

  return [v5 removeAllObjects];
}

- (id)_itemsForQueryCriteria:(id)a3
{
  v5 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__18543;
  v34 = __Block_byref_object_dispose__18544;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__18543;
  v28 = __Block_byref_object_dispose__18544;
  v29 = 0;
  entityCacheQueue = self->_entityCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MPMediaLibrary__itemsForQueryCriteria___block_invoke;
  block[3] = &unk_1E767FE70;
  v22 = &v30;
  block[4] = self;
  v7 = v5;
  v21 = v7;
  v23 = &v24;
  dispatch_sync(entityCacheQueue, block);
  v8 = v25;
  if (v31[5] && v25[5])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MPMediaLibrary.m" lineNumber:2115 description:@"only one of item/itemsResultSet should be set"];

    v8 = v25;
  }

  v9 = v8[5];
  if (v9)
  {
    [v9 updateToLibraryCurrentRevision];
    v10 = [MPMediaEntityResultSetArray alloc];
    v11 = [(MPMediaEntityResultSetArray *)v10 initWithResultSet:v25[5] queryCriteria:v7 entityType:0 library:self];
    v12 = v31[5];
    v31[5] = v11;

    v13 = self->_entityCacheQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__MPMediaLibrary__itemsForQueryCriteria___block_invoke_2;
    v17[3] = &unk_1E7681330;
    v17[4] = self;
    v19 = &v30;
    v18 = v7;
    dispatch_sync(v13, v17);
  }

  v14 = v31[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void __41__MPMediaLibrary__itemsForQueryCriteria___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 72) objectForKey:a1[5]];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(a1[7] + 8) + 40))
    {
      v8 = [*(a1[4] + 16) itemResultSetForQueryCriteria:a1[5]];
      v9 = *(a1[7] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (*(*(a1[7] + 8) + 40))
      {
        v11 = *(a1[4] + 72);

        [v11 setObject:? forKey:?];
      }
    }
  }
}

- (void)_performBlockOnLibraryHandlingTheSameAccount:(id)a3
{
  v14 = a3;
  v4 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v5 = [v4 supportsMultipleITunesAccounts];

  if (v5)
  {
    v6 = +[MPMediaLibrary deviceMediaLibrary];
    v7 = v6;
    if (v6 == self)
    {
    }

    else
    {
      v8 = +[MPMediaLibrary deviceMediaLibrary];
      v9 = [(MPMediaLibrary *)self _handlesSameAccountAs:v8];

      if (v9)
      {
        v10 = +[MPMediaLibrary deviceMediaLibrary];
        if (!v10)
        {
          goto LABEL_10;
        }

LABEL_9:
        v14[2](v14, v10);

        goto LABEL_10;
      }
    }

    v11 = +[MPMediaLibrary deviceMediaLibrary];

    if (v11 == self)
    {
      v12 = +[MPMediaLibrary deviceMediaLibrary];
      v13 = [v12 userIdentity];
      v10 = [MPMediaLibrary _deviceMediaLibraryWithUserIdentity:v13 createIfRequired:0];

      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (BOOL)_handlesSameAccountAs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v6 = [v5 supportsMultipleITunesAccounts];

  v7 = 0;
  if (self != v4 && v6)
  {
    v8 = [(MPMediaLibrary *)self userIdentity];
    v9 = [v8 accountDSID];
    v10 = [(MPMediaLibrary *)v4 userIdentity];
    v11 = [v10 accountDSID];
    if (v9 == v11)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v9 isEqual:v11];
    }
  }

  return v7;
}

- (void)activeUserChangeDidFinish
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Active user change completed - Firing notifications for path change", &v4, 0xCu);
  }

  [(MPMediaLibrary *)self _reloadLibraryForPathChange];
}

- (id)securityScopedFileURLForAssetURL:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 msv_mediaAssetPersistentID];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x1E69B34E0]);
    v8 = [(MPMediaLibrary *)self databasePath];
    v9 = [v7 initWithPath:v8];

    v10 = [v9 securityScopedFileURLForItemPID:v6];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138478083;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "%{private}@ sandboxedFileURLForAssetURL - Invalid assetURL %{public}@", &v13, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)pathForAssetURL:(id)a3
{
  v4 = [a3 msv_mediaAssetPersistentID];
  if (v4)
  {
    v5 = [(MPMediaLibrary *)self itemWithPersistentID:v4];
    v6 = [v5 valueForProperty:@"filePath"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)downloadAsset:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = a4;
    v7 = [v5 msv_errorWithDomain:@"MPErrorDomain" code:-10101 debugDescription:@"downloadAsset is not available"];
    (*(a4 + 2))(v6, v7);
  }
}

- (id)entityWithPersistentID:(int64_t)a3 entityType:(int64_t)a4
{
  v4 = 0;
  if (a3)
  {
    if (a4 <= 2)
    {
      switch(a4)
      {
        case 0:
          v5 = [MPMediaLibrary itemWithPersistentID:"itemWithPersistentID:verifyExistence:" verifyExistence:?];
LABEL_13:
          v4 = v5;
          break;
        case 1:
          v5 = [(MPMediaLibrary *)self playlistWithPersistentID:?];
          goto LABEL_13;
        case 2:
LABEL_12:
          v5 = [MPMediaLibrary collectionWithPersistentID:"collectionWithPersistentID:groupingType:verifyExistence:" groupingType:? verifyExistence:?];
          goto LABEL_13;
      }
    }

    else if (a4 <= 5 || a4 == 7)
    {
      goto LABEL_12;
    }
  }

  return v4;
}

- (id)entityWithSpotlightIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    v6 = [(MPMediaLibrary *)self entityWithLibraryURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)entityWithLibraryURL:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaLibrary *)self libraryDataProvider];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v6 = MEMORY[0x1E69B34C0];
  v7 = [v5 library];
  v8 = [v6 entityFromURL:v4 inLibrary:v7];

  if (!v8)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = -[MPMediaLibrary playlistWithPersistentID:](self, "playlistWithPersistentID:", [v8 persistentID]);
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v8 persistentID];
      v12 = self;
      v13 = 1;
LABEL_18:
      v9 = [(MPMediaLibrary *)v12 collectionWithPersistentID:v11 groupingType:v13 verifyExistence:0];
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v8 persistentID];
      v12 = self;
      v13 = 2;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v8 persistentID];
      v12 = self;
      v13 = 3;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v8 persistentID];
      v12 = self;
      v13 = 4;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v8 persistentID];
      v12 = self;
      v13 = 5;
      goto LABEL_18;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  v9 = -[MPMediaLibrary itemWithPersistentID:verifyExistence:](self, "itemWithPersistentID:verifyExistence:", [v8 persistentID], 0);
LABEL_19:
  v10 = v9;
LABEL_21:

LABEL_22:

  return v10;
}

- (id)entityWithMultiverseIdentifier:(id)a3
{
  v4 = a3;
  [v4 mediaObjectType];
  v5 = objc_opt_class();
  if (v5)
  {
    v6 = [[v5 alloc] initWithMultiverseIdentifier:v4 library:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isCurrentThreadInTransaction
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  libraryDataProvider = self->_libraryDataProvider;

  return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider isCurrentThreadInTransaction];
}

- (void)performReadTransactionWithBlock:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider performReadTransactionWithBlock:v4];
  }

  else
  {
    v4[2]();
  }
}

- (BOOL)performTransactionWithBlock:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider performTransactionWithBlock:v4];
  }

  else
  {
    v5 = v4[2](v4);
  }

  v6 = v5;

  return v6;
}

- (id)connectionAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[MPMediaLibraryConnectionAssertion alloc] _initWithMediaLibrary:self identifier:v4];

  connectionAssertionsQueue = self->_connectionAssertionsQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MPMediaLibrary_connectionAssertionWithIdentifier___block_invoke;
  v11[3] = &unk_1E76823C0;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  dispatch_sync(connectionAssertionsQueue, v11);
  v8 = v12;
  v9 = v7;

  return v7;
}

void __52__MPMediaLibrary_connectionAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 160))
  {
    v2 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v3 = *(a1 + 32);
    v4 = *(v3 + 160);
    *(v3 + 160) = v2;
  }

  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v13 = 134218242;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%p Taking connection assertion: %{public}@", &v13, 0x16u);
  }

  [*(*(a1 + 32) + 160) addPointer:*(a1 + 40)];
  if ([*(*(a1 + 32) + 160) count] == 1 && (objc_msgSend(*(a1 + 32), "isDeviceLibrary") & 1) == 0)
  {
    v8 = SBSSpringBoardServerPort();
    MEMORY[0x1A58DF400](v8, *(a1 + 32) + 231, *(a1 + 32) + 232);
    v9 = SBSSpringBoardServerPort();
    MEMORY[0x1A58DF430](v9, 1, 1);
  }

  v10 = os_log_create("com.apple.amp.mediaplayer", "Library_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [*(v11 + 160) allObjects];
    v13 = 134218242;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "%p Active assertions: %{public}@", &v13, 0x16u);
  }
}

- (void)connectWithAuthenticationData:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MPMediaLibrary_connectWithAuthenticationData_completionBlock___block_invoke;
  v7[3] = &unk_1E76816D0;
  v8 = v5;
  v6 = v5;
  [(MPMediaLibrary *)self connectWithCompletionHandler:v7];
}

uint64_t __64__MPMediaLibrary_connectWithAuthenticationData_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

- (BOOL)requiresAuthentication
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  libraryDataProvider = self->_libraryDataProvider;

  return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider requiresAuthentication];
}

- (id)preferredSubtitleLanguages
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider preferredSubtitleLanguages];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)preferredAudioLanguages
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider preferredAudioLanguages];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isGeniusEnabled
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  libraryDataProvider = self->_libraryDataProvider;

  return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider isGeniusEnabled];
}

- (void)geniusItemsForSeedItem:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider geniusItemsForSeedItem:v7 completion:v6];
  }
}

- (void)setValues:(id)a3 forProperties:(id)a4 forItemPersistentIDs:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v13 count];
    if (v11 != [v9 count])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"MPMediaLibrary.m" lineNumber:1744 description:{@"values/properties must have the same count (%lu != %lu)", objc_msgSend(v13, "count"), objc_msgSend(v9, "count")}];
    }

    [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider setValues:v13 forProperties:v9 forItemPersistentIDs:v10];
  }
}

- (void)clearLocationPropertiesOfItem:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    -[MPMediaLibraryDataProviderPrivate clearLocationPropertiesOfItemWithIdentifier:](self->_libraryDataProvider, "clearLocationPropertiesOfItemWithIdentifier:", [v4 persistentID]);
  }
}

- (void)populateLocationPropertiesOfItem:(id)a3 withPath:(id)a4 assetProtectionType:(int64_t)a5 completionBlock:(id)a6
{
  v12 = a3;
  v10 = a4;
  v11 = a6;
  if (objc_opt_respondsToSelector())
  {
    -[MPMediaLibraryDataProviderPrivate populateLocationPropertiesOfItemWithIdentifier:withPath:assetProtectionType:completionBlock:](self->_libraryDataProvider, "populateLocationPropertiesOfItemWithIdentifier:withPath:assetProtectionType:completionBlock:", [v12 persistentID], v10, a5, v11);
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, 0);
  }
}

- (void)populateLocationPropertiesOfItem:(id)a3 withPath:(id)a4 assetProtectionType:(int64_t)a5
{
  v9 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    -[MPMediaLibraryDataProviderPrivate populateLocationPropertiesOfItemWithIdentifier:withPath:assetProtectionType:](self->_libraryDataProvider, "populateLocationPropertiesOfItemWithIdentifier:withPath:assetProtectionType:", [v9 persistentID], v8, a5);
  }
}

- (BOOL)removePlaylist:(id)a3 preserveUndeletableEntities:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = -[MPMediaLibraryDataProviderPrivate removePlaylistWithIdentifier:preserveUndeletableEntities:](self->_libraryDataProvider, "removePlaylistWithIdentifier:preserveUndeletableEntities:", [v6 persistentID], v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)removePlaylist:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = -[MPMediaLibraryDataProviderPrivate removePlaylistWithIdentifier:](self->_libraryDataProvider, "removePlaylistWithIdentifier:", [v4 persistentID]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)removeItems:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 count];
    if (v5)
    {
      v6 = v5;
      v7 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
      for (i = 0; i != v6; ++i)
      {
        v9 = [v4 objectAtIndex:i];
        v7[i] = [v9 persistentID];
      }

      v10 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider removeItemsWithIdentifiers:v7 count:v6];
      free(v7);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)deleteItems:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 count];
    if (v5)
    {
      v6 = v5;
      v7 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
      for (i = 0; i != v6; ++i)
      {
        v9 = [v4 objectAtIndex:i];
        v7[i] = [v9 persistentID];
      }

      v10 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider deleteItemsWithIdentifiers:v7 count:v6];
      free(v7);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)URLForHomeSharingRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider URLForItemDataRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)homeSharingDatabaseID
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  libraryDataProvider = self->_libraryDataProvider;

  return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider databaseID];
}

- (unint64_t)syncPlaylistId
{
  v2 = [(MPMediaLibrary *)self valueForDatabaseProperty:@"MLSyncPlaylistId"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)setSyncPlaylistId:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(MPMediaLibrary *)self setValue:v4 forDatabaseProperty:@"MLSyncPlaylistId"];
}

- (id)_addPlaylistWithName:(id)a3 activeGeniusPlaylist:(BOOL)a4 externalVendorIdentifier:(id)a5 properties:(id)a6 trackList:(id)a7 playlistEntryProperties:(id)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v16)
  {
    v19 = [v16 mutableCopy];
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v20 = v19;
  if (v14)
  {
    [v19 setObject:v14 forKey:@"name"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:v12];
  [v20 setObject:v21 forKey:@"isActiveGeniusPlaylist"];

  if (v15)
  {
    [v20 setObject:v15 forKey:@"externalVendorIdentifier"];
  }

  if (objc_opt_respondsToSelector())
  {
    v22 = [(MPMediaLibrary *)self playlistWithPersistentID:[(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider addPlaylistWithValuesForProperties:v20 trackList:v17 playlistEntryProperties:v18]];
  }

  else if (objc_opt_respondsToSelector())
  {
    v22 = [(MPMediaLibrary *)self playlistWithPersistentID:[(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider addPlaylistWithValuesForProperties:v20]];
    if (v22 && [v17 count])
    {
      v23 = dispatch_semaphore_create(0);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __130__MPMediaLibrary__addPlaylistWithName_activeGeniusPlaylist_externalVendorIdentifier_properties_trackList_playlistEntryProperties___block_invoke;
      v26[3] = &unk_1E7679340;
      v27 = v23;
      v24 = v23;
      [v22 replaceItemsWithPersistentIDs:v17 completion:v26];
      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)playlistWithPersistentID:(unint64_t)a3
{
  v3 = [(MPMediaLibrary *)self newPlaylistWithPersistentID:a3];

  return v3;
}

- (id)photosMemoriesPlaylist
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider photosMemoriesPlaylistPersistentID];
    if (v3)
    {
      v3 = [(MPMediaLibrary *)self playlistWithPersistentID:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)favoriteSongsPlaylist
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider favoriteSongsPlaylistPersistentID];
    if (v3)
    {
      v3 = [(MPMediaLibrary *)self playlistWithPersistentID:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)playbackHistoryPlaylist
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider playbackHistoryPlaylistPersistentID];
    if (v3)
    {
      v3 = [(MPMediaLibrary *)self playlistWithPersistentID:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)playlistWithGlobalID:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v5 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider containerPersistentIDForGlobalID:v4]) != 0)
  {
    v6 = [(MPMediaLibrary *)self playlistWithPersistentID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newPlaylistWithPersistentID:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a3];
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"playlistPersistentID", 0}];
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"playlistPersistentID"];
  v8 = [v6 initWithObjects:{v7, 0}];

  v9 = objc_alloc_init(MPMediaQueryCriteria);
  [(MPMediaQueryCriteria *)v9 setFilterPredicates:v8];
  v10 = [[MPMediaQuery alloc] initWithCriteria:v9 library:self];
  v11 = [[MPConcreteMediaPlaylist alloc] initWithProperties:v5 itemsQuery:v10];

  return v11;
}

- (id)decodeItemWithCoder:(id)a3
{
  v3 = a3;
  v4 = [[MPConcreteMediaItem alloc] initWithCoder:v3];

  return v4;
}

- (id)itemWithStoreID:(unint64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider itemPersistentIDForStoreID:a3];
    if (v5)
    {
      v5 = [(MPMediaLibrary *)self itemWithPersistentID:v5 verifyExistence:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)itemWithPersistentID:(unint64_t)a3 verifyExistence:(BOOL)a4
{
  v4 = a4;
  v5 = [MPConcreteMediaItem concreteMediaItemWithPersistentID:a3 library:self];
  v6 = v5;
  if (v4 && ([v5 existsInLibrary] & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

- (id)collectionInLibraryWithPersistentID:(unint64_t)a3 groupingType:(int64_t)a4
{
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v7 = [MPMediaQuery alloc];
    v8 = MEMORY[0x1E695DFD8];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v10 = [MPMediaItem persistentIDPropertyForGroupingType:a4];
    v11 = [MPMediaPropertyPredicate predicateWithValue:v9 forProperty:v10];
    v12 = [v8 setWithObject:v11];
    v13 = [(MPMediaQuery *)v7 initWithFilterPredicates:v12];

    [(MPMediaQuery *)v13 setMediaLibrary:self];
    v14 = [[MPConcreteMediaItemCollection alloc] initWithIdentifier:a3 itemsQuery:v13 grouping:a4];
    if (![(MPMediaLibrary *)self collectionExistsInLibraryWithPersistentID:a3 groupingType:a4])
    {

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)collectionWithPersistentID:(unint64_t)a3 groupingType:(int64_t)a4 verifyExistence:(BOOL)a5
{
  v5 = a5;
  v9 = [MPMediaQuery alloc];
  v10 = MEMORY[0x1E695DFD8];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12 = [MPMediaItem persistentIDPropertyForGroupingType:a4];
  v13 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:v12];
  v14 = [v10 setWithObject:v13];
  v15 = [(MPMediaQuery *)v9 initWithFilterPredicates:v14];

  [(MPMediaQuery *)v15 setMediaLibrary:self];
  v16 = [[MPConcreteMediaItemCollection alloc] initWithIdentifier:a3 itemsQuery:v15 grouping:a4];
  if (v5 && ![(MPMediaLibrary *)self collectionExistsWithPersistentID:a3 groupingType:a4])
  {

    v16 = 0;
  }

  return v16;
}

- (BOOL)playlistExistsWithPersistentID:(unint64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    libraryDataProvider = self->_libraryDataProvider;

    return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider playlistExistsWithPersistentID:a3];
  }

  else
  {
    v7 = objc_alloc_init(MPMediaQuery);
    [(MPMediaQuery *)v7 setMediaLibrary:self];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v9 = [MPMediaPropertyPredicate predicateWithValue:v8 forProperty:@"playlistPersistentID"];
    [(MPMediaQuery *)v7 addFilterPredicate:v9];

    LOBYTE(v8) = [(MPMediaQuery *)v7 _hasCollections];
    return v8;
  }
}

- (BOOL)itemExistsInDatabaseWithPersistentID:(unint64_t)a3
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider itemExistsWithPersistentID:a3]& 1) != 0)
  {
    return 1;
  }

  v6 = objc_alloc_init(MPMediaQuery);
  [(MPMediaQuery *)v6 setMediaLibrary:self];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v8 = [MPMediaPropertyPredicate predicateWithValue:v7 forProperty:@"persistentID"];
  [(MPMediaQuery *)v6 addFilterPredicate:v8];

  [(MPMediaQuery *)v6 setShouldIncludeNonLibraryEntities:1];
  LOBYTE(v7) = [(MPMediaQuery *)v6 _hasItems];

  return v7;
}

- (BOOL)itemExistsWithPersistentID:(unint64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    libraryDataProvider = self->_libraryDataProvider;

    return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider itemExistsWithPersistentID:a3];
  }

  else
  {
    v7 = objc_alloc_init(MPMediaQuery);
    [(MPMediaQuery *)v7 setMediaLibrary:self];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v9 = [MPMediaPropertyPredicate predicateWithValue:v8 forProperty:@"persistentID"];
    [(MPMediaQuery *)v7 addFilterPredicate:v9];

    LOBYTE(v8) = [(MPMediaQuery *)v7 _hasItems];
    return v8;
  }
}

- (BOOL)hasUserPinnedLibraryEntity
{
  v2 = [(MPMediaLibrary *)self libraryDataProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 library];
    v4 = [v3 hasUserPinnedLibraryEntity];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasUserPlaylistsContainingAppleMusicContent
{
  v2 = [(MPMediaLibrary *)self libraryDataProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 library];
    v4 = [v3 hasUserPlaylistsContainingAppleMusicContent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasAddedToLibraryAppleMusicContent
{
  v2 = [(MPMediaLibrary *)self libraryDataProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 library];
    v4 = [v3 hasAddedToLibraryAppleMusicContent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasUserPlaylists
{
  v2 = [(MPMediaLibrary *)self libraryDataProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 library];
    v4 = [v3 hasUserPlaylists];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __34__MPMediaLibrary_hasVideoPodcasts__block_invoke()
{
  v0 = +[MPMediaQuery videoPodcastsQuery];
  v1 = [v0 _hasCollections];

  return v1;
}

uint64_t __31__MPMediaLibrary_hasHomeVideos__block_invoke()
{
  v0 = +[MPMediaQuery homeVideosQuery];
  v1 = [v0 _hasCollections];

  return v1;
}

uint64_t __28__MPMediaLibrary_hasTVShows__block_invoke()
{
  v0 = +[MPMediaQuery tvShowsQuery];
  v1 = [v0 _hasCollections];

  return v1;
}

uint64_t __33__MPMediaLibrary_hasMovieRentals__block_invoke()
{
  v0 = +[MPMediaQuery movieRentalsQuery];
  v1 = [v0 _hasItems];

  return v1;
}

uint64_t __40__MPMediaLibrary_hasVideoITunesUContent__block_invoke()
{
  v0 = +[MPMediaQuery videoITunesUQuery];
  v1 = [v0 _hasCollections];

  return v1;
}

uint64_t __40__MPMediaLibrary_hasAudioITunesUContent__block_invoke()
{
  v0 = +[MPMediaQuery ITunesUAudioQuery];
  v1 = [v0 _hasCollections];

  return v1;
}

uint64_t __35__MPMediaLibrary_hasITunesUContent__block_invoke()
{
  v0 = +[MPMediaQuery ITunesUQuery];
  v1 = [v0 _hasCollections];

  return v1;
}

uint64_t __33__MPMediaLibrary_hasCompilations__block_invoke()
{
  v0 = +[MPMediaQuery compilationsQuery];
  v1 = [v0 _hasCollections];

  return v1;
}

uint64_t __27__MPMediaLibrary_hasMovies__block_invoke()
{
  v0 = +[MPMediaQuery moviesQuery];
  v1 = [v0 _hasItems];

  return v1;
}

uint64_t __38__MPMediaLibrary_hasAudibleAudioBooks__block_invoke()
{
  v0 = +[MPMediaQuery audibleAudiobooksQuery];
  v1 = [v0 _hasCollections];

  return v1;
}

uint64_t __32__MPMediaLibrary_hasMusicVideos__block_invoke()
{
  v0 = +[MPMediaQuery musicVideosQuery];
  v1 = [v0 _hasItems];

  return v1;
}

uint64_t __27__MPMediaLibrary_hasVideos__block_invoke()
{
  v0 = +[MPMediaQuery videosQuery];
  v1 = [v0 _hasItems];

  return v1;
}

- (BOOL)_checkHasContent:(BOOL *)a3 determined:(BOOL *)a4 mediaType:(unint64_t)a5 queryHasEntitiesBlock:(id)a6
{
  if (*a4)
  {
    v7 = *a3;
  }

  else
  {
    v7 = (*(a6 + 2))(a6, a2);
    *a3 = v7;
    *a4 = 1;
  }

  return v7 & 1;
}

- (BOOL)_checkHasContent:(BOOL *)a3 determined:(BOOL *)a4 queryHasEntitiesBlock:(id)a5
{
  if (*a4)
  {
    v6 = *a3;
  }

  else
  {
    v6 = (*(a5 + 2))(a5, a2);
    *a3 = v6;
    *a4 = 1;
  }

  return v6 & 1;
}

- (BOOL)hasAudiobooks
{
  v2 = *(self + 193);
  if ((v2 & 0x40) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider hasMediaOfType:4])
      {
        v4 = -128;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4 & 0xFFFFFF80 | *(self + 193) & 0x7F;
    }

    else
    {
      v6 = +[MPMediaQuery audiobooksQuery];
      if ([v6 _hasCollections])
      {
        v7 = 0x80;
      }

      else
      {
        v7 = 0;
      }

      *(self + 193) = v7 & 0x80 | *(self + 193) & 0x7F;

      v5 = *(self + 193);
    }

    v2 = v5 | 0x40;
    *(self + 193) = v2;
  }

  return (v2 >> 7) & 1;
}

- (BOOL)hasComposers
{
  v2 = *(self + 193);
  if ((v2 & 1) == 0)
  {
    v4 = +[MPMediaQuery composersQuery];
    if ([v4 _hasCollections])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 193) = *(self + 193) & 0xFD | v5;

    v2 = *(self + 193) | 1;
    *(self + 193) |= 1u;
  }

  return (v2 >> 1) & 1;
}

- (BOOL)hasUbiquitousBookmarkableItems
{
  v2 = *(self + 193);
  if ((v2 & 0x10) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider hasUbiquitousBookmarkableItems])
      {
        v4 = 32;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(self + 193) & 0xDF | v4;
    }

    else
    {
      v5 = *(self + 193) & 0xDF;
    }

    v2 = v5 | 0x10;
    *(self + 193) = v2;
  }

  return (v2 >> 5) & 1;
}

- (BOOL)hasPodcasts
{
  v2 = *(self + 193);
  if ((v2 & 4) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider hasMediaOfType:1026])
      {
        v4 = 8;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(self + 193) & 0xF7 | v4;
    }

    else
    {
      v6 = +[MPMediaQuery podcastsQuery];
      if ([v6 _hasCollections])
      {
        v7 = 8;
      }

      else
      {
        v7 = 0;
      }

      *(self + 193) = *(self + 193) & 0xF7 | v7;

      v5 = *(self + 193);
    }

    v2 = v5 | 4;
    *(self + 193) = v2;
  }

  return (v2 >> 3) & 1;
}

- (BOOL)hasSongs
{
  v2 = *(self + 192);
  if ((v2 & 4) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider hasMediaOfType:1])
      {
        v4 = 8;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(self + 192) & 0xF7 | v4;
    }

    else
    {
      v6 = +[MPMediaQuery songsQuery];
      if ([v6 _hasItems])
      {
        v7 = 8;
      }

      else
      {
        v7 = 0;
      }

      *(self + 192) = *(self + 192) & 0xF7 | v7;

      v5 = *(self + 192);
    }

    v2 = v5 | 4;
    *(self + 192) = v2;
  }

  return (v2 >> 3) & 1;
}

- (BOOL)hasPlaylists
{
  v2 = *(self + 192);
  if ((v2 & 0x40) == 0)
  {
    v4 = +[MPMediaQuery playlistsQuery];
    if ([v4 _hasCollections])
    {
      v5 = 0x80;
    }

    else
    {
      v5 = 0;
    }

    *(self + 192) = v5 & 0x80 | *(self + 192) & 0x7F;

    v2 = *(self + 192) | 0x40;
    *(self + 192) |= 0x40u;
  }

  return v2 >> 7;
}

- (BOOL)hasGeniusMixes
{
  v2 = *(self + 192);
  if ((v2 & 0x10) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider hasGeniusMixes])
      {
        v4 = 32;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(self + 192) & 0xDF | v4;
    }

    else
    {
      v5 = *(self + 192) & 0xDF;
    }

    v2 = v5 | 0x10;
    *(self + 192) = v2;
  }

  return (v2 >> 5) & 1;
}

- (BOOL)hasMedia
{
  v2 = *(self + 192);
  if ((v2 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider hasMediaOfType:-1])
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(self + 192) & 0xFD | v4;
    }

    else
    {
      v6 = objc_alloc_init(MPMediaQuery);
      if ([(MPMediaQuery *)v6 _hasItems])
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      *(self + 192) = *(self + 192) & 0xFD | v7;

      v5 = *(self + 192);
    }

    v2 = v5 | 1;
    *(self + 192) = v2;
  }

  return (v2 >> 1) & 1;
}

- (BOOL)hasMediaOfType:(unint64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider hasMediaOfType:a3];
    v6 = *(self + 192);
    if (v5 & 1 | ((v6 & 2) != 0))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(self + 192) = v7 | v6 & 0xFD;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (unint64_t)usageForSyncedMediaOfType:(unint64_t)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a3 == 0xFF)
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  if ((~a3 & 0xFF00) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 | 0xFF00;
  }

  v6 = vandq_s8(vshlq_u32(vdupq_n_s32(a3), xmmword_1A273DDC0), xmmword_1A273DDD0);
  *v6.i8 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v7 = MEMORY[0x1E69B34F0];
  v8 = [MEMORY[0x1E69B3460] predicateWithProperty:*MEMORY[0x1E69B3138] mask:v6.i32[0] | a3 & 0x3210 | v6.i32[1] | (a3 >> 1) & 2 | (a3 >> 2) & 0x100 | (a3 >> 1) & 0x400 | v5 value:0];
  v9 = [v7 predicateWithPredicate:v8];

  v10 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2E10] value:&unk_1F1509928 comparison:4];
  v11 = MEMORY[0x1E69B3428];
  v19[0] = v9;
  v19[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [v11 predicateMatchingPredicates:v12];

  v14 = [(MPMediaLibrary *)self ml3Library];
  if (v14)
  {
    v15 = [MEMORY[0x1E69B3538] queryWithLibrary:v14 predicate:v13];
    v16 = [v15 valueForAggregateFunction:*MEMORY[0x1E69B2D48] onEntitiesForProperty:*MEMORY[0x1E69B3390]];
    v17 = [v16 unsignedLongLongValue];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)removeLibraryFilterPredicate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    additionalLibraryFilterPredicatesAccessQueue = self->_additionalLibraryFilterPredicatesAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MPMediaLibrary_removeLibraryFilterPredicate___block_invoke;
    block[3] = &unk_1E76823C0;
    block[4] = self;
    v10 = v4;
    dispatch_sync(additionalLibraryFilterPredicatesAccessQueue, block);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(MPMediaLibrary *)self _reloadLibraryForRestrictionsChange];
    }

    else
    {
      v7 = dispatch_get_global_queue(0, 0);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __47__MPMediaLibrary_removeLibraryFilterPredicate___block_invoke_2;
      v8[3] = &unk_1E7682518;
      v8[4] = self;
      dispatch_async(v7, v8);
    }
  }
}

void __47__MPMediaLibrary_removeLibraryFilterPredicate___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 144) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 144) removeObject:*(a1 + 40)];
    if (![*(*(a1 + 32) + 144) count])
    {
      v2 = *(a1 + 32);
      v3 = *(v2 + 144);
      *(v2 + 144) = 0;
    }
  }
}

- (void)addLibraryFilterPredicate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    additionalLibraryFilterPredicatesAccessQueue = self->_additionalLibraryFilterPredicatesAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__MPMediaLibrary_addLibraryFilterPredicate___block_invoke;
    block[3] = &unk_1E76823C0;
    block[4] = self;
    v10 = v4;
    dispatch_sync(additionalLibraryFilterPredicatesAccessQueue, block);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(MPMediaLibrary *)self _reloadLibraryForRestrictionsChange];
    }

    else
    {
      v7 = dispatch_get_global_queue(0, 0);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __44__MPMediaLibrary_addLibraryFilterPredicate___block_invoke_2;
      v8[3] = &unk_1E7682518;
      v8[4] = self;
      dispatch_async(v7, v8);
    }
  }
}

uint64_t __44__MPMediaLibrary_addLibraryFilterPredicate___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 144);
    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v5 = *(a1 + 32);
      v6 = *(v5 + 144);
      *(v5 + 144) = v4;

      v3 = *(*(a1 + 32) + 144);
    }

    v7 = *(a1 + 40);

    return [v3 addObject:v7];
  }

  return result;
}

- (void)setClientIdentity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&__privacyContextLock);
  v5 = [[MPMediaLibraryPrivacyContext alloc] initWithClientIdentity:v4];
  privacyContext = self->_privacyContext;
  self->_privacyContext = v5;

  os_unfair_lock_unlock(&__privacyContextLock);
  v7 = MEMORY[0x1E69B34E0];
  v8 = [(MPMediaLibrary *)self userIdentity];
  v9 = [v7 musicLibraryForUserAccount:v8];

  [v9 setClientIdentity:v4];
}

- (void)logDatabaseAccess
{
  os_unfair_lock_lock(&__privacyContextLock);
  privacyContext = __privacyContextOverride;
  if (!__privacyContextOverride)
  {
    privacyContext = self->_privacyContext;
  }

  v4 = privacyContext;
  os_unfair_lock_unlock(&__privacyContextLock);
  [(MPMediaLibraryPrivacyContext *)v4 logPrivacyAccess];
}

- (BOOL)writable
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  libraryDataProvider = self->_libraryDataProvider;

  return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider writable];
}

uint64_t __33__MPMediaLibrary_isDeviceLibrary__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__MPMediaLibrary_isDeviceLibrary__block_invoke_2;
  v2[3] = &unk_1E7679318;
  v3 = *(a1 + 32);
  return [__userMediaLibraries enumerateKeysAndObjectsUsingBlock:v2];
}

uint64_t __33__MPMediaLibrary_isDeviceLibrary__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqual:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (int64_t)playlistGeneration
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return -1;
  }

  libraryDataProvider = self->_libraryDataProvider;

  return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider playlistGeneration];
}

- (unint64_t)syncGenerationID
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  libraryDataProvider = self->_libraryDataProvider;

  return [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider syncGenerationID];
}

- (void)addItemWithProductID:(NSString *)productID completionHandler:(void *)completionHandler
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = productID;
  v7 = completionHandler;
  if (+[MPMediaLibrary authorizationStatus]== MPMediaLibraryAuthorizationStatusAuthorized)
  {
    if (objc_opt_respondsToSelector())
    {
      libraryDataProvider = self->_libraryDataProvider;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __57__MPMediaLibrary_addItemWithProductID_completionHandler___block_invoke;
      v17[3] = &unk_1E76792F0;
      v18 = v7;
      [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider sdk_addItemWithOpaqueID:v6 withCompletion:v17];
      v9 = v18;
LABEL_9:

      goto LABEL_10;
    }

    if (v7)
    {
      v16 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v12 = [v11 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F149ECA8 table:@"MediaPlayer"];
      v20 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v14 = v16;
      v15 = 0;
      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v12 = [v11 localizedStringForKey:@"PERMISSION_DENIED" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v22[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = v10;
    v15 = 1;
LABEL_8:
    v9 = [v14 errorWithDomain:@"MPErrorDomain" code:v15 userInfo:v13];

    (*(v7 + 2))(v7, 0, v9);
    goto LABEL_9;
  }

LABEL_10:
}

void __57__MPMediaLibrary_addItemWithProductID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = [v6 domain];
    if ([v8 isEqualToString:*MEMORY[0x1E69E4198]])
    {
      v9 = [v6 code];

      if (v9 == -7602)
      {
        v10 = MEMORY[0x1E696ABC0];
        v23[0] = *MEMORY[0x1E696A578];
        v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
        v12 = [v11 localizedStringForKey:@"CAPABILITY_MISSING" value:&stru_1F149ECA8 table:@"MediaPlayer"];
        v23[1] = *MEMORY[0x1E696AA08];
        v24[0] = v12;
        v24[1] = v6;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
        v14 = v10;
        v15 = 2;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v16 = [v6 domain];
    v17 = [v16 isEqualToString:@"MPErrorDomain"];

    if (v17)
    {
      v18 = 0;
LABEL_13:
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v6;
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v20);

      goto LABEL_17;
    }

    v19 = MEMORY[0x1E696ABC0];
    v21[0] = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v12 = [v11 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v21[1] = *MEMORY[0x1E696AA08];
    v22[0] = v12;
    v22[1] = v6;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v14 = v19;
    v15 = 0;
LABEL_12:
    v18 = [v14 errorWithDomain:@"MPErrorDomain" code:v15 userInfo:v13];

    goto LABEL_13;
  }

  if (v7)
  {
    (*(v7 + 16))(v7, v5, 0);
  }

LABEL_17:
}

- (NSDate)lastModifiedDate
{
  if (objc_opt_respondsToSelector())
  {
    [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider lastModifiedDate];
  }

  else
  {
    [MEMORY[0x1E695DF00] date];
  }
  v3 = ;

  return v3;
}

- (void)disconnect
{
  connectionAssertionsQueue = self->_connectionAssertionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MPMediaLibrary_disconnect__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(connectionAssertionsQueue, block);
}

- (void)connectWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (connectionProgress = self->_connectionProgress, connectionProgress < 1.0))
  {
    if (connectionProgress >= 0.0 && connectionProgress < 1.0)
    {
      if (v4)
      {
        v8 = MEMORY[0x1E696ABC0];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Connection already in progress" forKey:*MEMORY[0x1E696A578]];
        v10 = [v8 errorWithDomain:@"MPMediaLibraryErrorDomain" code:0 userInfo:v9];
        v4[2](v4, v10);
      }
    }

    else
    {
      self->_disconnectAfterReleasingAssertions = 0;
      libraryDataProvider = self->_libraryDataProvider;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47__MPMediaLibrary_connectWithCompletionHandler___block_invoke;
      v12[3] = &unk_1E76792A0;
      v12[4] = self;
      v13 = v4;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __47__MPMediaLibrary_connectWithCompletionHandler___block_invoke_2;
      v11[3] = &unk_1E76792C8;
      v11[4] = self;
      [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider connectWithAuthenticationData:0 completionBlock:v12 progressHandler:v11];
      self->_connectionProgress = 0.0;
      [MPMediaLibrary _postNotificationName:@"MPMediaLibraryStatusDidChangeNotification" library:self];
    }
  }

  else if (v4)
  {
    v4[2](v4, 0);
  }
}

void __47__MPMediaLibrary_connectWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  v5 = -1.0;
  if (a2)
  {
    v5 = 1.0;
  }

  *(*(a1 + 32) + 180) = v5;
  [MPMediaLibrary _postNotificationName:@"MPMediaLibraryStatusDidChangeNotification" library:*(a1 + 32)];
  v6 = v10;
  if (!v10 && (a2 & 1) == 0)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Unable to connect" forKey:*MEMORY[0x1E696A578]];
    v11 = [v7 errorWithDomain:@"MPMediaLibraryErrorDomain" code:0 userInfo:v8];

    v6 = v11;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v12 = v6;
    (*(v9 + 16))();
    v6 = v12;
  }
}

void __47__MPMediaLibrary_connectWithCompletionHandler___block_invoke_2(uint64_t a1, float a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__MPMediaLibrary_connectWithCompletionHandler___block_invoke_3;
  v2[3] = &unk_1E76811D8;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __47__MPMediaLibrary_connectWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 180);
  if (v2 < *(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  *(v1 + 180) = v2;
  return [MPMediaLibrary _postNotificationName:@"MPMediaLibraryConnectionProgressDidChange" library:*(a1 + 32)];
}

- (void)endGeneratingLibraryChangeNotifications
{
  v3 = +[MPMediaLibrary deviceMediaLibrary];

  if (v3 == self)
  {
    libraryChangeObservers = self->_libraryChangeObservers;
    v5 = libraryChangeObservers < 1;
    v6 = libraryChangeObservers - 1;
    if (!v5)
    {
      self->_libraryChangeObservers = v6;
    }
  }
}

- (void)_displayValuesDidChangeNotification:(id)a3
{
  if (!+[MPMediaQuery isFilteringDisabled])
  {

    [MPMediaLibrary _postNotificationName:@"MPMediaLibraryDidChangeNotification" library:self];
  }
}

- (void)_activeUserDidChangeNotification:(id)a3
{
  v4 = a3;
  v6 = [(MPMediaLibrary *)self activeUserChangeMonitor];
  v5 = [v4 name];

  [v6 ingestNotificationName:v5];
}

- (void)_reloadLibraryForPathChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__MPMediaLibrary__reloadLibraryForPathChange__block_invoke;
  v2[3] = &unk_1E7682518;
  v2[4] = self;
  [(MPMediaLibrary *)self _scheduleLibraryChangeNotificationPostingBlock:v2];
}

uint64_t __45__MPMediaLibrary__reloadLibraryForPathChange__block_invoke(uint64_t a1)
{
  [MPMediaLibrary _postNotificationName:@"MPMediaLibraryPathDidChangeNotification" library:*(a1 + 32)];
  v2 = *(a1 + 32);

  return [MPMediaLibrary _postNotificationName:@"MPMediaLibraryDidChangeNotification" library:v2];
}

- (void)_reloadLibraryForInvisiblePropertyChangeWithNotificationInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__MPMediaLibrary__reloadLibraryForInvisiblePropertyChangeWithNotificationInfo___block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MPMediaLibrary *)self _scheduleLibraryChangeNotificationPostingBlock:v6];
}

- (void)_reloadLibraryForDynamicPropertyChangeWithNotificationInfo:(id)a3
{
  v4 = a3;
  [(MPMediaLibrary *)self _clearCachedEntitiesIncludingResultSets:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__MPMediaLibrary__reloadLibraryForDynamicPropertyChangeWithNotificationInfo___block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MPMediaLibrary *)self _scheduleLibraryChangeNotificationPostingBlock:v6];
}

- (void)_reloadLibraryForContentsChangeWithNotificationInfo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  [(MPMediaLibrary *)self _clearCachedContentDataAndResultSets:objc_opt_isKindOfClass() & 1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__MPMediaLibrary__reloadLibraryForContentsChangeWithNotificationInfo___block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MPMediaLibrary *)self _scheduleLibraryChangeNotificationPostingBlock:v6];
}

- (void)_scheduleLibraryChangeNotificationPostingBlock:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if ([(MPMediaLibrary *)self libraryChangeObservers]>= 1)
    {
      v4[2](v4);
    }
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__MPMediaLibrary__scheduleLibraryChangeNotificationPostingBlock___block_invoke;
    v5[3] = &unk_1E76824C8;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __65__MPMediaLibrary__scheduleLibraryChangeNotificationPostingBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) libraryChangeObservers];
  if (result >= 1)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_clearCachedContentDataAndResultSets:(BOOL)a3
{
  *(self + 192) &= 0xAAu;
  *(self + 193) &= 0xAAu;
  self->_determinedHasVideos = 0;
  self->_determinedHasMusicVideos = 0;
  self->_determinedHasAudibleAudioBooks = 0;
  self->_determinedHasMovies = 0;
  self->_determinedHasCompilations = 0;
  self->_determinedHasITunesU = 0;
  self->_determinedHasVideoITunesU = 0;
  self->_determinedHasMovieRentals = 0;
  self->_determinedHasTVShows = 0;
  self->_determinedHasHomeVideos = 0;
  self->_determinedHasVideoPodcasts = 0;
  [(MPMediaLibrary *)self _clearCachedEntitiesIncludingResultSets:a3];
}

- (void)_clearCachedEntitiesIncludingResultSets:(BOOL)a3
{
  entityCacheQueue = self->_entityCacheQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MPMediaLibrary__clearCachedEntitiesIncludingResultSets___block_invoke;
  v4[3] = &unk_1E7682280;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(entityCacheQueue, v4);
}

uint64_t __58__MPMediaLibrary__clearCachedEntitiesIncludingResultSets___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeAllObjects];
  [*(*(a1 + 32) + 80) removeAllObjects];
  [*(*(a1 + 32) + 56) removeAllObjects];
  result = [*(*(a1 + 32) + 88) removeAllObjects];
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 72) removeAllObjects];
    v3 = *(*(a1 + 32) + 104);

    return [v3 removeAllObjects];
  }

  return result;
}

- (void)_clearCountCriteriaCaches
{
  entityCacheQueue = self->_entityCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MPMediaLibrary__clearCountCriteriaCaches__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(entityCacheQueue, block);
}

uint64_t __43__MPMediaLibrary__clearCountCriteriaCaches__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeAllObjects];
  v2 = *(*(a1 + 32) + 96);

  return [v2 removeAllObjects];
}

- (MPMediaLibrary)initWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MPMediaLibrary.m" lineNumber:530 description:@"only keyed coding is supported"];
  }

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"MPLibraryDataProviderUID"];
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"MPUserDSID"];

  v8 = [objc_opt_class() _mediaLibraryWithUniqueIdentifier:v6 userDSID:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  if (([v11 allowsKeyedCoding] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MPMediaLibrary.m" lineNumber:520 description:@"only keyed coding is supported"];
  }

  v5 = [(MPMediaLibraryDataProviderPrivate *)self->_libraryDataProvider uniqueIdentifier];
  [v11 encodeObject:v5 forKey:@"MPLibraryDataProviderUID"];

  v6 = [(MPMediaLibrary *)self userIdentity];
  v7 = [v6 accountDSID];

  if (v7)
  {
    v8 = [(MPMediaLibrary *)self userIdentity];
    v9 = [v8 accountDSID];
    [v11 encodeObject:v9 forKey:@"MPUserDSID"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(MPMediaLibrary *)self uniqueIdentifier];
    v6 = [v4 uniqueIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(MPMediaLibrary *)self _tearDownNotifications];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_countOfItemsForCriteriaCache)
  {
    [v3 addObject:?];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:v5];
  }

  if (self->_countOfCollectionsForCriteriaCache)
  {
    [v4 addObject:?];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:v6];
  }

  if (self->_itemsForCriteriaCache)
  {
    [v4 addObject:?];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:v7];
  }

  if (self->_itemResultSetsForCriteriaCache)
  {
    [v4 addObject:?];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:v8];
  }

  if (self->_collectionsForCriteriaCache)
  {
    [v4 addObject:?];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:v9];
  }

  if (self->_collectionsResultSetsForCriteriaCache)
  {
    [v4 addObject:?];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:v10];
  }

  if (self->_hasItemsForCriteriaCache)
  {
    [v4 addObject:?];
  }

  else
  {
    v11 = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:v11];
  }

  if (self->_hasCollectionsForCriteriaCache)
  {
    [v4 addObject:?];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:v12];
  }

  countOfItemsForCriteriaCache = self->_countOfItemsForCriteriaCache;
  self->_countOfItemsForCriteriaCache = 0;

  countOfCollectionsForCriteriaCache = self->_countOfCollectionsForCriteriaCache;
  self->_countOfCollectionsForCriteriaCache = 0;

  itemsForCriteriaCache = self->_itemsForCriteriaCache;
  self->_itemsForCriteriaCache = 0;

  itemResultSetsForCriteriaCache = self->_itemResultSetsForCriteriaCache;
  self->_itemResultSetsForCriteriaCache = 0;

  collectionsForCriteriaCache = self->_collectionsForCriteriaCache;
  self->_collectionsForCriteriaCache = 0;

  collectionsResultSetsForCriteriaCache = self->_collectionsResultSetsForCriteriaCache;
  self->_collectionsResultSetsForCriteriaCache = 0;

  hasItemsForCriteriaCache = self->_hasItemsForCriteriaCache;
  self->_hasItemsForCriteriaCache = 0;

  hasCollectionsForCriteriaCache = self->_hasCollectionsForCriteriaCache;
  self->_hasCollectionsForCriteriaCache = 0;

  v21 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__MPMediaLibrary_dealloc__block_invoke;
  block[3] = &unk_1E7682518;
  v25 = v4;
  v22 = v4;
  dispatch_async(v21, block);

  v23.receiver = self;
  v23.super_class = MPMediaLibrary;
  [(MPMediaLibrary *)&v23 dealloc];
}

- (MPMediaLibrary)initWithClientIdentity:(id)a3 userIdentity:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v53.receiver = self;
  v53.super_class = MPMediaLibrary;
  v8 = [(MPMediaLibrary *)&v53 init];
  if (v8)
  {
    v9 = +[MPMediaLibrary authorizationStatus];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__MPMediaLibrary_initWithClientIdentity_userIdentity___block_invoke;
    aBlock[3] = &unk_1E76800A0;
    v10 = v8;
    v50 = v10;
    v51 = v6;
    v52 = v7;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (v9)
    {
      if (v9 == MPMediaLibraryAuthorizationStatusAuthorized)
      {
        (*(v11 + 2))(v11);
      }

      else
      {
        v15 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MPMediaLibrary initWithClientIdentity:userIdentity:]"];
          *buf = 138543362;
          v55 = v16;
          _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "%{public}@: app not authorized for access", buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary_Oversize");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138543362;
        v55 = v14;
        _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "MPMediaLibraryAuthorizationStatus has not been determined, %{public}@", buf, 0xCu);
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __54__MPMediaLibrary_initWithClientIdentity_userIdentity___block_invoke_142;
      v46[3] = &unk_1E76809C0;
      v48 = v12;
      v47 = v10;
      [MPMediaLibrary requestAuthorization:v46];
    }

    v17 = dispatch_queue_create("com.apple.mediaplayer.MPMediaLibrary", 0);
    entityCacheQueue = v10->_entityCacheQueue;
    v10->_entityCacheQueue = v17;

    v19 = dispatch_queue_create("com.apple.mediaplayer.MPMediaLibrary.connectionAssertions", 0);
    connectionAssertionsQueue = v10->_connectionAssertionsQueue;
    v10->_connectionAssertionsQueue = v19;

    v21 = dispatch_queue_create("com.apple.mediaplayer.MPMediaLibrary.additionalLibraryFilterPredicatesAccessQueue", 0);
    additionalLibraryFilterPredicatesAccessQueue = v10->_additionalLibraryFilterPredicatesAccessQueue;
    v10->_additionalLibraryFilterPredicatesAccessQueue = v21;

    v23 = objc_alloc_init(QueryCriteriaResultsCache);
    itemsForCriteriaCache = v10->_itemsForCriteriaCache;
    v10->_itemsForCriteriaCache = v23;

    v25 = objc_alloc_init(QueryCriteriaResultsCache);
    itemResultSetsForCriteriaCache = v10->_itemResultSetsForCriteriaCache;
    v10->_itemResultSetsForCriteriaCache = v25;

    v27 = objc_alloc_init(QueryCriteriaResultsCache);
    collectionsForCriteriaCache = v10->_collectionsForCriteriaCache;
    v10->_collectionsForCriteriaCache = v27;

    v29 = objc_alloc_init(QueryCriteriaResultsCache);
    collectionsResultSetsForCriteriaCache = v10->_collectionsResultSetsForCriteriaCache;
    v10->_collectionsResultSetsForCriteriaCache = v29;

    v31 = objc_alloc_init(QueryCriteriaResultsCache);
    hasItemsForCriteriaCache = v10->_hasItemsForCriteriaCache;
    v10->_hasItemsForCriteriaCache = v31;

    v33 = objc_alloc_init(QueryCriteriaResultsCache);
    hasCollectionsForCriteriaCache = v10->_hasCollectionsForCriteriaCache;
    v10->_hasCollectionsForCriteriaCache = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hasItemsDidLoadForCriteria = v10->_hasItemsDidLoadForCriteria;
    v10->_hasItemsDidLoadForCriteria = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hasCollectionsDidLoadForCriteria = v10->_hasCollectionsDidLoadForCriteria;
    v10->_hasCollectionsDidLoadForCriteria = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    countOfCollectionsDidLoadForCriteria = v10->_countOfCollectionsDidLoadForCriteria;
    v10->_countOfCollectionsDidLoadForCriteria = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    countOfItemsDidLoadForCriteria = v10->_countOfItemsDidLoadForCriteria;
    v10->_countOfItemsDidLoadForCriteria = v41;

    v10->_connectionProgress = -1.0;
    v43 = dispatch_get_global_queue(2, 0);
    fixedQueue = v10->_fixedQueue;
    v10->_fixedQueue = v43;

    v10->__MLCoreStorageLock._os_unfair_lock_opaque = 0;
    v10->__MLCoreStorageLockPointer = &v10->__MLCoreStorageLock;
    [(MPMediaLibrary *)v10 _setupNotifications];
    [(MPMediaLibrary *)v10 _setLibraryFilterPredicates];
  }

  return v8;
}

void __54__MPMediaLibrary_initWithClientIdentity_userIdentity___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = [[MPMediaLibraryPrivacyContext alloc] initWithClientIdentity:*(a1 + 40)];
  }

  else
  {
    v2 = +[MPMediaLibraryPrivacyContext contextForDefaultClient];
  }

  v3 = v2;
  objc_storeStrong((*(a1 + 32) + 8), v2);

  v4 = [*(a1 + 48) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 248);
  *(v5 + 248) = v4;

  v7 = [MEMORY[0x1E69B34E0] musicLibraryForUserAccount:*(*(a1 + 32) + 248)];
  v8 = [[MPMediaLibraryDataProviderSystemML3 alloc] initWithLibrary:v7];
  [(MPMediaLibraryDataProviderML3 *)v8 setMediaLibrary:*(a1 + 32)];
  objc_storeStrong((*(a1 + 32) + 16), v8);
  if ([*(*(a1 + 32) + 16) conformsToProtocol:&unk_1F1516668])
  {
    [*(*(a1 + 32) + 16) setUserIdentity:*(*(a1 + 32) + 248)];
  }

  v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 248);
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - New library created for user identity: %@", &v12, 0x16u);
  }
}

void __54__MPMediaLibrary_initWithClientIdentity_userIdentity___block_invoke_142(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    (*(*(a1 + 40) + 16))();
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__MPMediaLibrary_initWithClientIdentity_userIdentity___block_invoke_2;
    v6[3] = &unk_1E7682518;
    v7 = v3;
    [v7 _scheduleLibraryChangeNotificationPostingBlock:v6];
    v4 = v7;
  }

  else
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MPMediaLibrary initWithClientIdentity:userIdentity:]_block_invoke"];
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%{public}@: app not authorized for access", buf, 0xCu);
    }
  }
}

- (MPMediaLibrary)initWithDatabasePath:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69B34E0]) initWithPath:v5 isUnitTesting:1];
  if ([v6 validateDatabase])
  {
    v7 = [[MPMediaLibraryDataProviderML3 alloc] initWithLibrary:v6];
    [(MPMediaLibraryDataProviderML3 *)v7 setMediaLibrary:self];
    v8 = [(MPMediaLibrary *)self _initWithLibraryDataProvider:v7];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MPMediaLibrary.m" lineNumber:369 description:{@"Failed to validate database at path %@", v5}];

    v8 = [(MPMediaLibrary *)self init];
  }

  return v8;
}

- (MPMediaLibrary)init
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - New library init called", &v5, 0xCu);
  }

  return [(MPMediaLibrary *)self _initWithUserIdentity:0];
}

- (id)itLibrary
{
  v2 = [(MPMediaLibrary *)self libraryDataProvider];
  v3 = [v2 itLibrary];

  return v3;
}

+ (void)libraryPathDidChangeForDataProvider:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueIdentifier];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Reloading data provider for significant change %@", &v11, 0xCu);
  }

  v7 = [a1 _libraryForDataProvider:v4];
  v8 = [v7 activeUserChangeMonitor];

  if (v8)
  {
    v9 = [v7 activeUserChangeMonitor];
    [v9 ingestNotificationName:@"MPMediaLibraryPathDidChangeNotification"];

    v10 = [v7 activeUserChangeMonitor];
    [v10 ingestNotificationName:@"MPMediaLibraryDidChangeNotification"];
  }

  else
  {
    [v7 _reloadLibraryForPathChange];
  }
}

+ (void)uniqueIdentifierDidChangeForLibraryDataProvider:(id)a3
{
  v3 = [a1 _libraryForDataProvider:a3];
  [MPMediaLibrary _postNotificationName:@"_MPMediaLibraryAvailableMediaLibrariesDidChangePrivateNotification" library:v3];
  [MPMediaLibrary _postNotificationName:@"MPMediaLibraryAvailableMediaLibrariesDidChangeNotification" library:v3];
}

+ (void)syncGenerationDidChangeForLibraryDataProvider:(id)a3
{
  v3 = [a1 _libraryForDataProvider:a3];
  [MPMediaLibrary _postNotificationName:@"MPMediaLibrarySyncGenerationDidChangeNotification" library:v3];
}

+ (void)reloadDisplayValuesForLibraryDataProvider:(id)a3
{
  v3 = [a1 _libraryForDataProvider:a3];
  [MPMediaLibrary _postNotificationName:@"MPMediaLibraryDisplayValuesWillChangeNotification" library:v3];
  [MPMediaLibrary _postNotificationName:@"MPMediaLibraryDisplayValuesDidChangeNotification" library:v3];
}

+ (void)reloadInvisiblePropertiesForLibraryDataProvider:(id)a3
{
  v3 = [a1 _libraryForDataProvider:a3];
  [v3 _reloadLibraryForInvisiblePropertyChangeWithNotificationInfo:0];
}

+ (void)reloadDynamicPropertiesForLibraryDataProvider:(id)a3
{
  v3 = [a1 _libraryForDataProvider:a3];
  [v3 _reloadLibraryForDynamicPropertyChangeWithNotificationInfo:0];
}

+ (void)postEntitiesAddedOrRemovedNotificationForLibraryDataProvider:(id)a3
{
  v3 = [a1 _libraryForDataProvider:a3];
  [MPMediaLibrary _postNotificationName:@"MPMediaLibraryEntitiesAddedOrRemovedNotification" library:v3];
}

+ (void)reloadLibraryDataProvider:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueIdentifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Reloading data provider %@", &v8, 0xCu);
  }

  v7 = [a1 _libraryForDataProvider:v4];
  [v7 _reloadLibraryForContentsChangeWithNotificationInfo:0];
}

+ (void)removeLibraryDataProvider:(id)a3 removalReason:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uniqueIdentifier];
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Removing data provider %@", &v13, 0xCu);
  }

  v9 = [a1 _libraryForDataProvider:v6];
  v10 = v9;
  if (v9)
  {
    [v9 setRemovalReason:a4];
    [v10 endGeneratingLibraryChangeNotifications];
    [v10 _clearCachedEntitiesIncludingResultSets:1];
    [v10 _clearCountCriteriaCaches];
    v11 = [a1 _mediaLibraries];
    [v11 removeObject:v10];

    v12 = [a1 _libraryDataProviders];
    [v12 removeObject:v6];

    [MPMediaLibrary _postNotificationName:@"_MPMediaLibraryAvailableMediaLibrariesDidChangePrivateNotification" library:0];
    [MPMediaLibrary _postNotificationName:@"MPMediaLibraryAvailableMediaLibrariesDidChangeNotification" library:0];
  }
}

+ (void)addLibraryDataProvider:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueIdentifier];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Adding data provider %@", &v10, 0xCu);
  }

  v7 = [a1 _libraryDataProviders];
  [v7 addObject:v4];

  v8 = [[MPMediaLibrary alloc] _initWithLibraryDataProvider:v4];
  [v8 beginGeneratingLibraryChangeNotifications];
  v9 = [a1 _mediaLibraries];
  [v9 addObject:v8];

  [MPMediaLibrary _postNotificationName:@"_MPMediaLibraryAvailableMediaLibrariesDidChangePrivateNotification" library:0];
  [MPMediaLibrary _postNotificationName:@"MPMediaLibraryAvailableMediaLibrariesDidChangeNotification" library:0];
}

+ (id)libraryDataProviders
{
  v2 = [a1 _libraryDataProviders];
  v3 = [v2 copy];

  return v3;
}

+ (id)_libraryDataProviders
{
  v2 = _libraryDataProviders___libraryDataProviders;
  if (!_libraryDataProviders___libraryDataProviders)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = _libraryDataProviders___libraryDataProviders;
    _libraryDataProviders___libraryDataProviders = v3;

    v2 = _libraryDataProviders___libraryDataProviders;
  }

  return v2;
}

+ (id)_libraryForDataProvider:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _mediaLibraries];
  v6 = [v5 copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 libraryDataProvider];

        if (v12 == v4)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

+ (MPMediaLibrary)mediaLibraryWithUniqueIdentifier:(id)a3 allowsLoadingFromDisk:(BOOL)a4
{
  if (a4)
  {
    [a1 _mediaLibraryWithUniqueIdentifier:a3 userDSID:0];
  }

  else
  {
    [a1 mediaLibraryWithUniqueIdentifier:a3];
  }
  v4 = ;

  return v4;
}

+ (MPMediaLibrary)mediaLibraryWithUniqueIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _mediaLibraries];
  v6 = [v5 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 uniqueIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

uint64_t __38__MPMediaLibrary_sharedMediaLibraries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 libraryDataProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [v5 libraryDataProvider];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if ((isKindOfClass ^ v9))
  {
    if (isKindOfClass)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v11 = [v4 name];
    v12 = [v5 name];
    v10 = [v11 localizedCaseInsensitiveCompare:v12];
  }

  return v10;
}

+ (void)_endDiscoveringMediaLibrariesIfAllowed
{
  v18 = *MEMORY[0x1E69E9840];
  if (!__numberOfHomeSharingObservers)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    [a1 mediaLibraries];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v2 = v10 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v17 count:16];
    if (v3)
    {
      v4 = *v10;
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        if (([v6 isDeviceLibrary] & 1) == 0)
        {
          v7 = v6[21];
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __56__MPMediaLibrary__endDiscoveringMediaLibrariesIfAllowed__block_invoke;
          v8[3] = &unk_1E76819F0;
          v8[4] = v6;
          v8[5] = &v13;
          dispatch_sync(v7, v8);
          if (*(v14 + 24) != 1)
          {
            break;
          }
        }

        if (v3 == ++v5)
        {
          v3 = [v2 countByEnumeratingWithState:&v9 objects:v17 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (*(v14 + 24) == 1)
    {
      +[MPHomeSharingML3DataProvider endScanningForLibraries];
    }

    _Block_object_dispose(&v13, 8);
  }
}

void __56__MPMediaLibrary__endDiscoveringMediaLibrariesIfAllowed__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) allObjects];
  v3 = [v2 count];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

+ (void)logDatabaseAccess
{
  os_unfair_lock_lock(&__privacyContextLock);
  if (__privacyContextOverride)
  {
    v2 = __privacyContextOverride;
  }

  else
  {
    v2 = +[MPMediaLibraryPrivacyContext sharedContextForCurrentProcess];
  }

  v3 = v2;
  os_unfair_lock_unlock(&__privacyContextLock);
  [v3 logPrivacyAccess];
}

+ (void)setGlobalPrivacyClientWithAuditToken:(id *)a3
{
  os_unfair_lock_lock(&__privacyContextLock);
  v4 = [MPMediaLibraryPrivacyContext alloc];
  v5 = *&a3->var0[4];
  v10 = *a3->var0;
  v11 = v5;
  v6 = [(MPMediaLibraryPrivacyContext *)v4 initWithAuditToken:&v10];
  v7 = __privacyContextOverride;
  __privacyContextOverride = v6;

  os_unfair_lock_unlock(&__privacyContextLock);
  v8 = *&a3->var0[4];
  v10 = *a3->var0;
  v11 = v8;
  [MPMediaLibraryPrivacyContext setDefaultClientWithAuditToken:&v10];
  v9 = *&a3->var0[4];
  v10 = *a3->var0;
  v11 = v9;
  [MEMORY[0x1E69B34E0] setGlobalPrivacyContextWithAuditToken:&v10];
}

+ (void)requestAuthorization:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [a1 _sharedCloudServiceStatusMonitor];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MPMediaLibrary_requestAuthorization___block_invoke;
  v7[3] = &unk_1E7679278;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 requestAuthorizationForScopes:2 completionHandler:v7];
}

uint64_t __39__MPMediaLibrary_requestAuthorization___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    v2 = result;
    [*(result + 40) _mediaLibraryAuthorizationStatusFromCloudServiceAuthorizationStatus:a2];
    v3 = *(*(v2 + 32) + 16);

    return v3();
  }

  return result;
}

+ (int64_t)_mediaLibraryAuthorizationStatusFromCloudServiceAuthorizationStatus:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (void)endDiscoveringMediaLibraries
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MPMediaLibrary_endDiscoveringMediaLibraries__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a1;
  v2 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

uint64_t __46__MPMediaLibrary_endDiscoveringMediaLibraries__block_invoke(uint64_t a1)
{
  if (__numberOfHomeSharingObservers >= 1)
  {
    --__numberOfHomeSharingObservers;
  }

  return [*(a1 + 32) _endDiscoveringMediaLibrariesIfAllowed];
}

uint64_t __48__MPMediaLibrary_beginDiscoveringMediaLibraries__block_invoke()
{
  if (!__numberOfHomeSharingObservers++)
  {
    return +[MPHomeSharingML3DataProvider beginScanningForLibraries];
  }

  return result;
}

+ (void)_postNotificationName:(id)a3 library:(id)a4 userInfo:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting notification [%@]", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:v7 object:v8 userInfo:v9];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__MPMediaLibrary__postNotificationName_library_userInfo___block_invoke;
    v13[3] = &unk_1E7679250;
    v14 = v7;
    v15 = v9;
    [v8 _performBlockOnLibraryHandlingTheSameAccount:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:v7 object:0 userInfo:v9];
  }
}

void __57__MPMediaLibrary__postNotificationName_library_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Related library posting notification [%@]", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:*(a1 + 32) object:v3 userInfo:*(a1 + 40)];
}

+ (id)_mediaLibraryWithUniqueIdentifier:(id)a3 userDSID:(id)a4
{
  v114 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v84 = v5;
  if ([v5 length] || -[NSObject length](v6, "length"))
  {
    v7 = ICCreateLoggableValueForDSIDString();
    v8 = [objc_opt_class() _mediaLibraries];
    v9 = [v8 copy];

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v100 objects:v113 count:16];
    v12 = v5;
    obj = v10;
    if (v11)
    {
      v13 = v11;
      v14 = *v101;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v101 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v100 + 1) + 8 * v15);
        v17 = [v16 uniqueIdentifier];
        v18 = v17;
        if (v17 == v84)
        {
          break;
        }

        v19 = [v17 isEqual:v84];

        if (v19)
        {
          goto LABEL_45;
        }

        v20 = [v16 userIdentity];
        v21 = [v20 accountDSID];
        v22 = v21;
        if (v21 == v6)
        {

LABEL_52:
          v64 = os_log_create("com.apple.amp.mediaplayer", "Library");
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v108 = v16;
            _os_log_impl(&dword_1A238D000, v64, OS_LOG_TYPE_INFO, "[LIB] _mediaLibraryWithUniqueIdentifier:userDSID | found in-memory library [DSID match] library=%{public}@", buf, 0xCu);
          }

          v16 = v16;
          v62 = obj;
LABEL_59:
          v68 = v62;
          goto LABEL_84;
        }

        v23 = [v21 isEqual:v6];

        if (v23)
        {
          goto LABEL_52;
        }

        if (v13 == ++v15)
        {
          v10 = obj;
          v13 = [obj countByEnumeratingWithState:&v100 objects:v113 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }
      }

LABEL_45:
      v59 = [v16 userIdentity];
      v60 = [v59 accountDSID];

      if (!v6 || v60 == v6 || ([v60 isEqual:v6]& 1) != 0)
      {
        v61 = os_log_create("com.apple.amp.mediaplayer", "Library");
        v62 = obj;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v108 = v16;
          _os_log_impl(&dword_1A238D000, v61, OS_LOG_TYPE_INFO, "[LIB] _mediaLibraryWithUniqueIdentifier:userDSID | found in-memory library [databaseID match] library=%{public}@", buf, 0xCu);
        }

        v63 = v16;
      }

      else
      {
        v65 = ICCreateLoggableValueForDSIDString();
        v66 = os_log_create("com.apple.amp.mediaplayer", "Library");
        v62 = obj;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v108 = v7;
          v109 = 2114;
          v110 = v65;
          v111 = 2114;
          v112 = v16;
          _os_log_impl(&dword_1A238D000, v66, OS_LOG_TYPE_DEFAULT, "[LIB] _mediaLibraryWithUniqueIdentifier:userDSID | found in-memory library [databaseID match, DSID mismatch] dsid=%{public}@ libraryDSID=%{public}@ library=%{public}@", buf, 0x20u);
        }

        v67 = v16;
      }

      goto LABEL_59;
    }

LABEL_14:
    v82 = v7;

    +[MPMediaLibraryDataProviderML3 onDiskProviders];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v83 = v99 = 0u;
    v24 = [v83 countByEnumeratingWithState:&v96 objects:v106 count:16];
    v85 = v6;
    if (v24)
    {
      v25 = v24;
      v26 = *v97;
LABEL_16:
      v27 = 0;
      while (1)
      {
        if (*v97 != v26)
        {
          objc_enumerationMutation(v83);
        }

        v28 = *(*(&v96 + 1) + 8 * v27);
        v29 = [v28 accountDSID];
        v30 = [v28 uniqueIdentifier];
        v31 = v30;
        if (v30 == v84)
        {
          break;
        }

        v32 = [v30 isEqual:v84];

        if (v32)
        {
          goto LABEL_63;
        }

        v33 = v29;
        v29 = v33;
        if (v33 == v85)
        {

LABEL_72:
          v16 = [[MPMediaLibrary alloc] _initWithLibraryDataProvider:v28];
          v76 = MEMORY[0x1E69E4680];
          v77 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NSObject longLongValue](v85, "longLongValue")}];
          v71 = [v76 specificAccountWithDSID:v77];

          v78 = [v71 copy];
          v79 = v16[31];
          v16[31] = v78;

          if ([v28 conformsToProtocol:&unk_1F1516668])
          {
            [v28 setUserIdentity:v71];
          }

          objc_opt_class();
          v62 = obj;
          v68 = v83;
          if (objc_opt_isKindOfClass())
          {
            [v28 setMediaLibrary:v16];
          }

          v74 = os_log_create("com.apple.amp.mediaplayer", "Library");
          v6 = v85;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v108 = v16;
            v75 = "[LIB] _mediaLibraryWithUniqueIdentifier:userDSID | found on-disk library [DSID match] library=%{public}@";
LABEL_78:
            _os_log_impl(&dword_1A238D000, v74, OS_LOG_TYPE_INFO, v75, buf, 0xCu);
          }

          goto LABEL_82;
        }

        v34 = [v33 isEqual:v85];

        if (v34)
        {
          goto LABEL_72;
        }

        if (v25 == ++v27)
        {
          v25 = [v83 countByEnumeratingWithState:&v96 objects:v106 count:16];
          v10 = obj;
          if (v25)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }
      }

LABEL_63:
      v16 = [[MPMediaLibrary alloc] _initWithLibraryDataProvider:v28];
      v69 = MEMORY[0x1E69E4680];
      v70 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NSObject longLongValue](v85, "longLongValue")}];
      v71 = [v69 specificAccountWithDSID:v70];

      v72 = [v71 copy];
      v73 = v16[31];
      v16[31] = v72;

      if ([v28 conformsToProtocol:&unk_1F1516668])
      {
        [v28 setUserIdentity:v71];
      }

      objc_opt_class();
      v62 = obj;
      v68 = v83;
      if (objc_opt_isKindOfClass())
      {
        [v28 setMediaLibrary:v16];
      }

      v6 = v85;
      if (v29 == v85 || ([v29 isEqual:v85]& 1) != 0)
      {
        v74 = os_log_create("com.apple.amp.mediaplayer", "Library");
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v108 = v16;
          v75 = "[LIB] _mediaLibraryWithUniqueIdentifier:userDSID | found on-disk library [databaseID match] library=%{public}@";
          goto LABEL_78;
        }
      }

      else
      {
        v74 = ICCreateLoggableValueForDSIDString();
        v80 = os_log_create("com.apple.amp.mediaplayer", "Library");
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v108 = v7;
          v109 = 2114;
          v110 = v74;
          v111 = 2114;
          v112 = v16;
          _os_log_impl(&dword_1A238D000, v80, OS_LOG_TYPE_DEFAULT, "[LIB] _mediaLibraryWithUniqueIdentifier:userDSID | found on-disk library [databaseID match, DSID mismatch] dsid=%{public}@ libraryDSID=%{public}@ library=%{public}@", buf, 0x20u);
        }

        v6 = v85;
      }

LABEL_82:

      v35 = v68;
      goto LABEL_83;
    }

LABEL_25:

    v35 = [MEMORY[0x1E695DF70] array];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v87 = v10;
    v36 = [v87 countByEnumeratingWithState:&v92 objects:v105 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v93;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v93 != v38)
          {
            objc_enumerationMutation(v87);
          }

          v40 = *(*(&v92 + 1) + 8 * i);
          v41 = [v40 userIdentity];
          v42 = [v41 accountDSID];
          v43 = ICCreateLoggableValueForDSIDString();

          v44 = MEMORY[0x1E696AEC0];
          v45 = [v40 uniqueIdentifier];
          v46 = [v44 stringWithFormat:@"<MPMediaLibrary [memory] uid=%@ dsid=%@>", v45, v43];

          [v35 addObject:v46];
        }

        v37 = [v87 countByEnumeratingWithState:&v92 objects:v105 count:16];
      }

      while (v37);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v47 = v83;
    v48 = [v47 countByEnumeratingWithState:&v88 objects:v104 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v89;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v89 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v88 + 1) + 8 * j);
          v53 = [v52 accountDSID];
          v54 = ICCreateLoggableValueForDSIDString();

          v55 = MEMORY[0x1E696AEC0];
          v56 = [v52 uniqueIdentifier];
          v57 = [v55 stringWithFormat:@"<MPMediaLibrary [disk] uid=%@ dsid=%@>", v56, v54];

          [v35 addObject:v57];
        }

        v49 = [v47 countByEnumeratingWithState:&v88 objects:v104 count:16];
      }

      while (v49);
    }

    v29 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v7 = v82;
      v108 = v82;
      v109 = 2114;
      v110 = v35;
      _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_ERROR, "[LIB] _mediaLibraryWithUniqueIdentifier:userDSID | returning nil [failed to find match] dsid=%{public}@ considerations=%{public}@", buf, 0x16u);
      v16 = 0;
      v12 = v84;
      v6 = v85;
    }

    else
    {
      v16 = 0;
      v12 = v84;
      v6 = v85;
      v7 = v82;
    }

    v62 = obj;
    v68 = v83;
LABEL_83:

LABEL_84:
  }

  else
  {
    v58 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v58, OS_LOG_TYPE_INFO, "[LIB] _mediaLibraryWithUniqueIdentifier:userDSID | returning defaultMediaLibrary [UID/DSID both nil]", buf, 2u);
    }

    v16 = +[MPMediaLibrary defaultMediaLibrary];
    v12 = v5;
  }

  return v16;
}

+ (id)_deviceMediaLibraryWithUserIdentity:(id)a3 createIfRequired:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v9 = [v8 supportsMultipleITunesAccounts];

  if ((v9 & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"MPMediaLibrary.m" lineNumber:326 description:@"Attempting to access a method only available for tv and audio accessory device"];
  }

  v10 = [v7 accountDSID];
  v11 = @"NoDSID";
  if (v10)
  {
    v11 = v10;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__18543;
  v30 = __Block_byref_object_dispose__18544;
  v31 = 0;
  v12 = __defaultMediaLibraryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPMediaLibrary__deviceMediaLibraryWithUserIdentity_createIfRequired___block_invoke;
  block[3] = &unk_1E7679228;
  v25 = v4;
  v13 = v11;
  v21 = v13;
  v24 = a1;
  v14 = v7;
  v22 = v14;
  v23 = &v26;
  dispatch_sync(v12, block);
  v15 = v27;
  if (v4 && v27[5])
  {
    v16 = [a1 _mediaLibraries];
    [v16 addObject:v27[5]];

    v15 = v27;
  }

  v17 = v15[5];

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __71__MPMediaLibrary__deviceMediaLibraryWithUserIdentity_createIfRequired___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v2 = [__userMediaLibraries objectForKeyedSubscript:*(a1 + 32)];

    if (!v2)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 56);
        v6 = *(a1 + 40);
        v11 = 138543618;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - No pre-existing library for user identity: %@", &v11, 0x16u);
      }

      v7 = [[MPMediaLibrary alloc] _initWithUserIdentity:*(a1 + 40)];
      [__userMediaLibraries setObject:v7 forKeyedSubscript:*(a1 + 32)];

      objc_autoreleasePoolPop(v3);
    }
  }

  v8 = [__userMediaLibraries objectForKeyedSubscript:*(a1 + 32)];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)deviceMediaLibraryWithUserIdentity:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v6 = [v5 supportsMultipleITunesAccounts];

  if (v6)
  {
    if (v4)
    {
      v7 = [MPMediaLibrary _deviceMediaLibraryWithUserIdentity:v4 createIfRequired:1];
      goto LABEL_7;
    }

    v8 = a1;
  }

  else
  {
    v8 = MPMediaLibrary;
  }

  v7 = [(__objc2_class *)v8 deviceMediaLibrary];
LABEL_7:
  v9 = v7;

  return v9;
}

+ (void)setDefaultMediaLibrary:(id)a3
{
  v3 = a3;
  v4 = +[MPMediaLibrary deviceMediaLibrary];
  v5 = [v3 isEqual:v4];

  if (v5)
  {

    v3 = 0;
  }

  if (__defaultMediaLibraryOverride != v3)
  {
    [__defaultMediaLibraryOverride _clearCachedEntitiesIncludingResultSets:1];
    [__defaultMediaLibraryOverride _clearCountCriteriaCaches];
    [__defaultMediaLibraryOverride endGeneratingLibraryChangeNotifications];
    [__defaultMediaLibraryOverride disconnect];
    v6 = __defaultMediaLibraryQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__MPMediaLibrary_setDefaultMediaLibrary___block_invoke;
    block[3] = &unk_1E7682518;
    v7 = v3;
    v9 = v7;
    dispatch_sync(v6, block);
    [__defaultMediaLibraryOverride beginGeneratingLibraryChangeNotifications];
    [__defaultMediaLibraryOverride _clearPendingDisconnection];
    [MPMediaLibrary _postNotificationName:@"MPMediaLibraryDefaultMediaLibraryDidChangeNotification" library:0];
    [v7 _reloadLibraryForContentsChangeWithNotificationInfo:0];
  }
}

- (void)enumerateEntityChangesAfterSyncAnchor:(id)a3 maximumRevisionType:(int64_t)a4 inUsersLibrary:(BOOL)a5 usingBlock:(id)a6
{
  v6 = a5;
  v10 = a6;
  libraryDataProvider = self->_libraryDataProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __135__MPMediaLibrary_MPMediaLibrarySyncAnchorSupport__enumerateEntityChangesAfterSyncAnchor_maximumRevisionType_inUsersLibrary_usingBlock___block_invoke;
  v15[3] = &unk_1E7679660;
  v15[4] = self;
  v16 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __135__MPMediaLibrary_MPMediaLibrarySyncAnchorSupport__enumerateEntityChangesAfterSyncAnchor_maximumRevisionType_inUsersLibrary_usingBlock___block_invoke_2;
  v13[3] = &unk_1E7679688;
  v13[4] = self;
  v14 = v16;
  v12 = v16;
  [(MPMediaLibraryDataProviderPrivate *)libraryDataProvider enumerateEntityChangesAfterSyncAnchor:a3 maximumRevisionType:a4 inUsersLibrary:v6 itemBlock:v15 collectionBlock:v13];
}

void __135__MPMediaLibrary_MPMediaLibrarySyncAnchorSupport__enumerateEntityChangesAfterSyncAnchor_maximumRevisionType_inUsersLibrary_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  if (a4)
  {
    [MPConcreteMediaItem createUncachedConcreteMediaItemWithPersistentID:a2 library:v8];
  }

  else
  {
    [MPConcreteMediaItem concreteMediaItemWithPersistentID:a2 library:v8];
  }
  v9 = ;
  v10 = [[_MPMediaLibraryEntityChange alloc] initWithEntity:v9 anchor:v11 deletionType:a4];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v7);
}

void __135__MPMediaLibrary_MPMediaLibrarySyncAnchorSupport__enumerateEntityChangesAfterSyncAnchor_maximumRevisionType_inUsersLibrary_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a4;
  v9 = objc_autoreleasePoolPush();
  if (a3 == 6)
  {
    v10 = [*(a1 + 32) newPlaylistWithPersistentID:a2];
  }

  else
  {
    v11 = [MPMediaItem persistentIDPropertyForGroupingType:a3];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v13 = [MPMediaPropertyPredicate predicateWithValue:v12 forProperty:v11];

    v14 = objc_alloc_init(MPMediaQueryCriteria);
    [(MPMediaQueryCriteria *)v14 addFilterPredicate:v13];
    v15 = [[MPMediaQuery alloc] initWithCriteria:v14 library:*(a1 + 32)];
    if (a5)
    {
      v16 = [MPConcreteMediaItemCollection createUncachedMediaItemCollectionWithIdentifier:a2 valuesForProperties:0 itemsQuery:v15 grouping:a3 representativeItemIdentifier:0];
    }

    else
    {
      v16 = [[MPConcreteMediaItemCollection alloc] initWithIdentifier:a2 valuesForProperties:0 itemsQuery:v15 grouping:a3 representativeItemIdentifier:0];
    }

    v10 = v16;
  }

  v17 = [[_MPMediaLibraryEntityChange alloc] initWithEntity:v10 anchor:v18 deletionType:a5];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v9);
}

- (NSURL)protectedContentSupportStorageURL
{
  v3 = [(MPMediaLibrary *)self libraryDataProvider];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MPMediaLibrary *)self libraryDataProvider];
    v6 = [v5 protectedContentSupportStorageURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)errorResolverForItem:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaLibrary *)self libraryDataProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MPMediaLibrary *)self libraryDataProvider];
    v8 = [v7 errorResolverForItem:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end