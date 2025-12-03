@interface MPCloudController
+ (BOOL)isMediaApplication;
+ (MPCloudController)controllerWithUserIdentity:(id)identity;
+ (MPCloudController)sharedCloudController;
+ (NSMutableDictionary)controllers;
+ (OS_dispatch_queue)globalSerialQueue;
+ (id)_controllerWithUserIdentity:(id)identity createIfRequired:(BOOL)required;
+ (void)_postNotificationName:(id)name controller:(id)controller userInfo:(id)info;
+ (void)migrateCellularDataPreferencesIfNeeded;
- (BOOL)_handlesSameAccountAs:(id)as;
- (BOOL)_isCollaborativePlaylist:(unint64_t)playlist;
- (BOOL)_updateSagaEnabled;
- (BOOL)canDefaultMediaLibraryShowCloudContent;
- (BOOL)canSetItemProperty:(id)property;
- (BOOL)canSetPlaylistProperty:(id)property;
- (BOOL)hasPurchaseHistoryAccount;
- (BOOL)hasSetPreferenceForAutomaticDownloads;
- (BOOL)isActive;
- (BOOL)isAutomaticDownloadsEnabled;
- (BOOL)isAutomaticDownloadsEnabledForPinnedLibraryEntities;
- (BOOL)isEnablingCloudLibraryDestructive;
- (BOOL)isGeniusEnabled;
- (ICConnectionConfiguration)configuration;
- (ICUserIdentity)userIdentity;
- (id)_initWithUserIdentity:(id)identity;
- (id)_referralForModelObject:(id)object;
- (id)description;
- (int64_t)_icFavoriteEntityTypeFromMPEntityType:(int64_t)type;
- (int64_t)_icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:(int64_t)action;
- (int64_t)_icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:(int64_t)type;
- (int64_t)_storeAdamIDForItemWithSagaID:(unint64_t)d;
- (int64_t)cloudAddToPlaylistBehavior;
- (int64_t)favoriteSongAddToLibraryBehavior;
- (void)_addItemWithAdamID:(int64_t)d toCollaborationWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)_addItemWithSagaID:(unint64_t)d toCollaborationWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)_becomeActiveAndWaitUntilDone:(BOOL)done;
- (void)_copyObservationStateFrom:(id)from;
- (void)_initializeUpdateInProgressState;
- (void)_performBlockOnControllerHandlingTheSameAccount:(id)account;
- (void)_resignActive;
- (void)_setDateModified:(id)modified forPlaylistPersistentID:(int64_t)d;
- (void)activeUserDidChangeNotification:(id)notification;
- (void)addGeniusPlaylistWithPersistentID:(unint64_t)d name:(id)name seedItemSagaIDs:(id)ds itemSagaIDs:(id)iDs completionHandler:(id)handler;
- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(unint64_t)iD completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d referralObject:(id)object completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d referralObject:(id)object toPlaylistWithPersistentID:(unint64_t)iD completionHandler:(id)handler;
- (void)addStoreItemsWithAdamIDs:(id)ds referralObject:(id)object completionHandler:(id)handler;
- (void)addStorePlaylistWithGlobalID:(id)d completionHandler:(id)handler;
- (void)becomeActiveAndWaitUntilDone:(BOOL)done;
- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(int64_t)mode completion:(id)completion;
- (void)createPlaylistWithPersistentID:(unint64_t)d properties:(id)properties trackList:(id)list completionHandler:(id)handler;
- (void)dealloc;
- (void)deprioritizeArtworkRequestForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType artworkSourceType:(int64_t)sourceType;
- (void)disableAutomaticDownloadsForPinnedLibraryEntities;
- (void)disableAutomaticDownloadsWithCompletionHandler:(id)handler;
- (void)disableCloudLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)editCollaborationWithPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits completion:(id)completion;
- (void)enableAutomaticDownloadsForPinnedLibraryEntities;
- (void)enableAutomaticDownloadsWithCompletionHandler:(id)handler;
- (void)enableCloudLibraryWithOptions:(id)options completionHandler:(id)handler;
- (void)endCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler;
- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)fetchRecommendedContentWithSeedTrackID:(int64_t)d seedTrackIDType:(int64_t)type count:(unint64_t)count completion:(id)completion;
- (void)hideItemsWithPurchaseHistoryIDs:(id)ds completionHandler:(id)handler;
- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l completion:(id)completion;
- (void)loadArtworkForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType artworkSourceType:(int64_t)sourceType artworkVariantType:(int64_t)variantType completionHandler:(id)handler;
- (void)loadArtworkInfoForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType artworkSourceType:(int64_t)sourceType completionHandler:(id)handler;
- (void)loadCloudMusicLibraryUpdateProgressWithCompletionHandler:(id)handler;
- (void)loadGeniusItemsForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadJaliscoLibraryUpdateProgressWithCompletionHandler:(id)handler;
- (void)loadLastKnownEnableICMLErrorStatusWithCompletionHander:(id)hander;
- (void)loadUpdateProgressWithCompletionHandler:(id)handler;
- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position completion:(id)completion;
- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position completion:(id)completion;
- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position completion:(id)completion;
- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion;
- (void)processPendingKeyInvalidations;
- (void)publishPlaylistWithSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)removeItemsWithSagaIDs:(id)ds completionHandler:(id)handler;
- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion;
- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion;
- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion;
- (void)removePlaylistsWithSagaIDs:(id)ds performDeltaSync:(BOOL)sync completionHandler:(id)handler;
- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)resignActive;
- (void)respondToPendingCollaborator:(id)collaborator onCollaborationWithPersistentID:(int64_t)d withApproval:(BOOL)approval completion:(id)completion;
- (void)sdk_addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(unint64_t)iD completionHandler:(id)handler;
- (void)sdk_addStoreItemWithOpaqueID:(id)d completionHandler:(id)handler;
- (void)sdk_addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(unint64_t)iD completionHandler:(id)handler;
- (void)sdk_createPlaylistWithPersistenID:(unint64_t)d properties:(id)properties tracklist:(id)tracklist completionHandler:(id)handler;
- (void)sdk_setPlaylistProperties:(id)properties trackList:(id)list forPlaylistWithPersistentID:(unint64_t)d completionHandler:(id)handler;
- (void)setAlbumArtistProperties:(id)properties forEntityWithPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)setAlbumProperties:(id)properties forEntityWithPersistentID:(int64_t)d cloudLibraryID:(id)iD completionHandler:(id)handler;
- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior completionHandler:(id)handler;
- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior completionHandler:(id)handler;
- (void)setCollectionProperties:(id)properties forCollectionWithPersistentID:(int64_t)d groupingType:(int64_t)type completionHandler:(id)handler;
- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d;
- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d;
- (void)setLikedState:(int64_t)state forAlbumWithStoreID:(int64_t)d completion:(id)completion;
- (void)setLikedState:(int64_t)state forAlbumWithStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp completion:(id)completion;
- (void)setLikedState:(int64_t)state forArtistWithStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp completion:(id)completion;
- (void)setLikedState:(int64_t)state forEntityWithStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp completion:(id)completion;
- (void)setLikedState:(int64_t)state forEntityWithStoreID:(int64_t)d withMediaType:(unint64_t)type timeStamp:(id)stamp completion:(id)completion;
- (void)setLikedState:(int64_t)state forPlaylistWithGlobalID:(id)d completion:(id)completion;
- (void)setLikedState:(int64_t)state forPlaylistWithGlobalID:(id)d persistentID:(int64_t)iD timeStamp:(id)stamp completion:(id)completion;
- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistWithPersistentID:(unint64_t)d completionHandler:(id)handler;
- (void)updateJaliscoMediaLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion;
- (void)updateSharingMode:(int64_t)mode onCollaboratinWithPersistentID:(int64_t)d completion:(id)completion;
- (void)updateSubscribedPlaylistWithSagaID:(unint64_t)d ignoreMinRefreshInterval:(BOOL)interval completionHandler:(id)handler;
- (void)uploadArtworkForPlaylist:(id)playlist completionHandler:(id)handler;
- (void)uploadCloudItemProperties;
- (void)uploadCloudPlaylistProperties;
@end

@implementation MPCloudController

void __42__MPCloudController_sharedCloudController__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [[MPCloudController alloc] _initWithUserIdentity:0];
  v1 = sharedCloudController___controller;
  sharedCloudController___controller = v0;

  v2 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = sharedCloudController___controller;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Singleton", &v3, 0xCu);
  }
}

+ (BOOL)isMediaApplication
{
  if (isMediaApplication_onceToken != -1)
  {
    dispatch_once(&isMediaApplication_onceToken, &__block_literal_global_66);
  }

  return isMediaApplication_isMediaApplication;
}

void __39__MPCloudController_isMediaApplication__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  isMediaApplication_isMediaApplication = [&unk_1F1509D78 containsObject:v1];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MPCloudController;
  v3 = [(MPCloudController *)&v7 description];
  if ([MEMORY[0x1E69E4688] canAccessAccountStore])
  {
    userIdentity = [(MPCloudController *)self userIdentity];
    v5 = [v3 stringByAppendingFormat:@" [%@]", userIdentity];

    v3 = v5;
  }

  return v3;
}

- (ICUserIdentity)userIdentity
{
  cloudClient = [(MPCloudController *)self cloudClient];
  configuration = [cloudClient configuration];
  userIdentity = [configuration userIdentity];

  return userIdentity;
}

+ (MPCloudController)sharedCloudController
{
  if (sharedCloudController_onceToken != -1)
  {
    dispatch_once(&sharedCloudController_onceToken, &__block_literal_global_108);
  }

  v3 = sharedCloudController___controller;

  return v3;
}

- (BOOL)isEnablingCloudLibraryDestructive
{
  v19[2] = *MEMORY[0x1E69E9840];
  userIdentity = [(MPCloudController *)self userIdentity];
  v3 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  v4 = +[MPMediaQuery songsQuery];
  [v4 setMediaLibrary:v3];
  _hasCollections = 1;
  [v4 setIgnoreSystemFilterPredicates:1];
  v5 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509658 forProperty:@"purchaseHistoryID" comparisonType:0];
  [v4 addFilterPredicate:v5];

  v6 = +[MPMediaQuery playlistsQuery];
  v16 = v3;
  [v6 setMediaLibrary:v3];
  [v6 setIgnoreSystemFilterPredicates:1];
  v7 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509658 forProperty:@"distinguishedKind" comparisonType:0];
  v19[0] = v7;
  v8 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509670 forProperty:@"distinguishedKind" comparisonType:102];
  v18[0] = v8;
  v9 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509688 forProperty:@"distinguishedKind" comparisonType:104];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [(MPMediaCompoundPredicate *)MPMediaCompoundAllPredicate predicateMatchingPredicates:v10];
  v19[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [(MPMediaCompoundPredicate *)MPMediaCompoundAnyPredicate predicateMatchingPredicates:v12];

  [v6 addFilterPredicate:v13];
  v14 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E110] forProperty:@"isHidden" comparisonType:0];
  [v6 addFilterPredicate:v14];

  if (([v4 _hasItems] & 1) == 0)
  {
    _hasCollections = [v6 _hasCollections];
  }

  return _hasCollections;
}

void __53__MPCloudController__initializeUpdateInProgressState__block_invoke_234(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MPCloudController__initializeUpdateInProgressState__block_invoke_2_235;
  v5[3] = &unk_1E7676340;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(&v6);
}

- (void)_initializeUpdateInProgressState
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(MPCloudController *)self isCloudEnabled])
  {
    cloudClient = [(MPCloudController *)self cloudClient];
    updateSagaInProgressChangedHandler = [cloudClient updateSagaInProgressChangedHandler];

    if (!updateSagaInProgressChangedHandler)
    {
      v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - _initializeUpdateInProgressState - Setting up Saga update progress handler", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__MPCloudController__initializeUpdateInProgressState__block_invoke;
      aBlock[3] = &unk_1E7676368;
      objc_copyWeak(&v22, buf);
      v6 = _Block_copy(aBlock);
      cloudClient2 = [(MPCloudController *)self cloudClient];
      [cloudClient2 loadIsSagaUpdateInProgressWithCompletionHandler:v6];

      cloudClient3 = [(MPCloudController *)self cloudClient];
      [cloudClient3 setUpdateSagaInProgressChangedHandler:v6];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }

  cloudClient4 = [(MPCloudController *)self cloudClient];
  updateJaliscoInProgressChangedHandler = [cloudClient4 updateJaliscoInProgressChangedHandler];
  v11 = updateJaliscoInProgressChangedHandler == 0;

  if (v11)
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - _initializeUpdateInProgressState - Setting up Jalisco update progress handler", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __53__MPCloudController__initializeUpdateInProgressState__block_invoke_234;
    v19 = &unk_1E7676368;
    objc_copyWeak(&v20, buf);
    v13 = _Block_copy(&v16);
    v14 = [(MPCloudController *)self cloudClient:v16];
    [v14 loadIsJaliscoUpdateInProgressWithCompletionHandler:v13];

    cloudClient5 = [(MPCloudController *)self cloudClient];
    [cloudClient5 setUpdateJaliscoInProgressChangedHandler:v13];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (BOOL)_updateSagaEnabled
{
  *&v29[5] = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cloudEnabled = self->_cloudEnabled;
    *buf = 138543618;
    selfCopy5 = self;
    v28 = 1024;
    *v29 = cloudEnabled;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - _updateSagaEnabled: - loading cloud library enabled state [current cloudEnabled=%{BOOL}u]", buf, 0x12u);
  }

  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  userIdentity = [(MPCloudController *)self userIdentity];
  v25 = 0;
  v7 = [defaultIdentityStore getPropertiesForUserIdentity:userIdentity error:&v25];
  v8 = v25;

  if (!v8)
  {
    os_unfair_lock_lock(&self->_lock);
    if (v7)
    {
      isActiveLocker = [v7 isActiveLocker];
    }

    else
    {
      isActiveLocker = 0;
    }

    v13 = self->_cloudEnabled;
    if (v13 == isActiveLocker)
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy5 = self;
        v15 = "%{public}@ - _updateSagaEnabled: - no change in cloud library enabled state";
        v16 = v14;
        v17 = 12;
LABEL_19:
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }

    else
    {
      self->_cloudEnabled = isActiveLocker;
      cloudEnabledValid = self->_cloudEnabledValid;
      v14 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      v19 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (cloudEnabledValid)
      {
        if (v19)
        {
          v20 = self->_cloudEnabled;
          *buf = 138543874;
          selfCopy5 = self;
          v28 = 1024;
          *v29 = v13;
          v29[2] = 1024;
          *&v29[3] = v20;
          _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - _updateSagaEnabled: - Cloud library enabled state did change [%{BOOL}u -> %{BOOL}u] - Posting notifications [MPCloudControllerIsCloudEnabledDidChangeNotification]", buf, 0x18u);
        }

        [(MPCloudController *)self _initializeUpdateInProgressState];
        cloudClientCallbackQueue = self->_cloudClientCallbackQueue;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __39__MPCloudController__updateSagaEnabled__block_invoke;
        v24[3] = &unk_1E7682518;
        v24[4] = self;
        dispatch_async(cloudClientCallbackQueue, v24);
        v11 = 1;
        goto LABEL_21;
      }

      if (v19)
      {
        v22 = self->_cloudEnabled;
        *buf = 138543618;
        selfCopy5 = self;
        v28 = 1024;
        *v29 = v22;
        v15 = "%{public}@ - _updateSagaEnabled: - loaded initial cloud library enabled state [cloudEnabled=%{BOOL}u]";
        v16 = v14;
        v17 = 18;
        goto LABEL_19;
      }
    }

    v11 = 0;
LABEL_21:
    self->_cloudEnabledValid = 1;
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_22;
  }

  v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    msv_description = [v8 msv_description];
    *buf = 138543618;
    selfCopy5 = self;
    v28 = 2114;
    *v29 = msv_description;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "%{public}@ _updateSagaEnabled Failed to load account properties error=%{public}@", buf, 0x16u);
  }

  v11 = 0;
LABEL_22:

  return v11;
}

void __53__MPCloudController__initializeUpdateInProgressState__block_invoke_2_235(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40) == 1 ? *(a1 + 41) : 0;
    [WeakRetained setJaliscoInitialImport:v4];
    if (*(a1 + 40) != [v3 isJaliscoUpdateInProgress])
    {
      [v3 setJaliscoUpdateInProgress:?];
      v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138543874;
        v7 = v3;
        v8 = 1024;
        v9 = [v3 isJaliscoUpdateInProgress];
        v10 = 1024;
        v11 = [v3 isJaliscoInitialImport];
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting JaliscoLibraryUpdateInProgress to %{BOOL}u JaliscoLibraryInitialImport to %{BOOL}u - Posting MPCloudControllerIsUpdateInProgressDidChangeNotification [Jalisco]", &v6, 0x18u);
      }

      [MPCloudController _postNotificationName:@"MPCloudControllerIsUpdateInProgressDidChangeNotification" controller:v3];
    }
  }
}

- (void)processPendingKeyInvalidations
{
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient processPendingKeyInvalidations];
}

+ (void)migrateCellularDataPreferencesIfNeeded
{
  v2 = ICCloudClientMigrateAllowMatchOnCellularToAllowAutoDownloadOnCellular();

  MEMORY[0x1EEE5FD38](v2);
}

- (void)_resignActive
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MPCloudController__resignActive__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)resignActive
{
  v3 = +[MPCloudController sharedCloudController];

  if (v3 == self)
  {
    [(MPCloudController *)self _resignActive];
    currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
    supportsMultipleITunesAccounts = [currentDeviceInfo supportsMultipleITunesAccounts];

    if (supportsMultipleITunesAccounts)
    {
      currentDeviceInfo2 = [MEMORY[0x1E69E4420] currentDeviceInfo];
      isAudioAccessory = [currentDeviceInfo2 isAudioAccessory];

      if (isAudioAccessory)
      {
        v8 = +[MPCloudController globalSerialQueue];
        dispatch_sync(v8, &__block_literal_global_202);
      }

      else
      {

        [(MPCloudController *)self _performBlockOnControllerHandlingTheSameAccount:&__block_literal_global_206];
      }
    }
  }
}

void __34__MPCloudController__resignActive__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 56) = v4;
    if (!*(*(a1 + 32) + 56))
    {
      v6 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - _resignActive - Resigning", buf, 0xCu);
      }

      v8 = [*(a1 + 32) cloudClient];
      [v8 resignActive];

      v9 = [MEMORY[0x1E69E4420] currentDeviceInfo];
      v10 = [v9 supportsMultipleITunesAccounts];

      if ((v10 & 1) == 0)
      {
        v11 = [MEMORY[0x1E69E4688] defaultIdentityStore];
        v12 = [*(a1 + 32) userIdentity];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __34__MPCloudController__resignActive__block_invoke_240;
        v13[3] = &unk_1E7676390;
        v13[4] = *(a1 + 32);
        [v11 getPropertiesForUserIdentity:v12 completionHandler:v13];
      }

      *(*(a1 + 32) + 8) = 0;
    }
  }
}

- (int64_t)_storeAdamIDForItemWithSagaID:(unint64_t)d
{
  v21 = *MEMORY[0x1E69E9840];
  userIdentity = [(MPCloudController *)self userIdentity];
  v6 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  v7 = +[MPMediaQuery songsQuery];
  [v7 setMediaLibrary:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v9 = [MPMediaPropertyPredicate predicateWithValue:v8 forProperty:@"storeSagaID"];
  [v7 addFilterPredicate:v9];

  [v7 setIgnoreRestrictionsPredicates:1];
  [v7 setIgnoreSystemFilterPredicates:1];
  items = [v7 items];
  firstObject = [items firstObject];

  if (firstObject)
  {
    v12 = [firstObject valueForProperty:@"subscriptionStoreItemAdamID"];
    longLongValue = [v12 longLongValue];

    if (!longLongValue)
    {
      v14 = [firstObject valueForProperty:@"storeItemAdamID"];
      longLongValue = [v14 longLongValue];
    }
  }

  else
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      selfCopy = self;
      v19 = 2048;
      dCopy = d;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - failed to find song with saga ID %lld", &v17, 0x16u);
    }

    longLongValue = 0;
  }

  return longLongValue;
}

- (BOOL)_isCollaborativePlaylist:(unint64_t)playlist
{
  userIdentity = [(MPCloudController *)self userIdentity];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  v6 = [[MPMediaPlaylist alloc] initWithPersistentID:playlist mediaLibrary:v5];
  v7 = [(MPMediaPlaylist *)v6 valueForProperty:@"isCollaborative"];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)_addItemWithSagaID:(unint64_t)d toCollaborationWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(MPCloudController *)self _storeAdamIDForItemWithSagaID:d];
  if (v8)
  {
    [(MPCloudController *)self _addItemWithAdamID:v8 toCollaborationWithPersistentID:iD completionHandler:handlerCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:4 debugDescription:@"failed to find song with given saga ID"];
    handlerCopy[2](handlerCopy, v9);
  }
}

- (void)_addItemWithAdamID:(int64_t)d toCollaborationWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = MEMORY[0x1E69E43D0];
  newIdentifierString = [MEMORY[0x1E69E43D0] newIdentifierString];
  newIdentifierString2 = [MEMORY[0x1E69E43D0] newIdentifierString];
  v12 = [v9 paramsForAddingTrackWithAdamID:d itemUUID:newIdentifierString itemPositionUUID:newIdentifierString2 atPosition:2];

  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__MPCloudController__addItemWithAdamID_toCollaborationWithPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E76816D0;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(MPCloudController *)self editCollaborationWithPersistentID:iD properties:MEMORY[0x1E695E0F8] trackEdits:v13 completion:v15];
}

void __34__MPCloudController__resignActive__block_invoke_240(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3 && ([a2 isActive] & 1) == 0)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - _resignActive - Removing update handlers on inactive account", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) cloudClient];
    [v6 setUpdateSagaInProgressChangedHandler:0];

    v7 = [*(a1 + 32) cloudClient];
    [v7 setUpdateJaliscoInProgressChangedHandler:0];
  }
}

- (void)_becomeActiveAndWaitUntilDone:(BOOL)done
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MPCloudController__becomeActiveAndWaitUntilDone___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void *__51__MPCloudController__becomeActiveAndWaitUntilDone___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (!result[7])
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - _becomeActiveAndWaitUntilDone: - Activating", &v7, 0xCu);
    }

    *(*(a1 + 32) + 8) = 1;
    v5 = [*(a1 + 32) cloudClient];
    [v5 becomeActive];

    v6 = [*(a1 + 32) _updateSagaEnabled];
    result = *(a1 + 32);
    if ((v6 & 1) == 0)
    {
      [result _initializeUpdateInProgressState];
      result = *(a1 + 32);
    }
  }

  ++result[7];
  return result;
}

- (void)_performBlockOnControllerHandlingTheSameAccount:(id)account
{
  accountCopy = account;
  currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
  supportsMultipleITunesAccounts = [currentDeviceInfo supportsMultipleITunesAccounts];

  if (supportsMultipleITunesAccounts)
  {
    v6 = +[MPCloudController sharedCloudController];
    v7 = v6;
    if (v6 == self)
    {
    }

    else
    {
      v8 = +[MPCloudController sharedCloudController];
      v9 = [(MPCloudController *)self _handlesSameAccountAs:v8];

      if (v9)
      {
        v10 = +[MPCloudController sharedCloudController];
        if (!v10)
        {
          goto LABEL_10;
        }

LABEL_9:
        accountCopy[2](accountCopy, v10);

        goto LABEL_10;
      }
    }

    v11 = +[MPCloudController sharedCloudController];

    if (v11 == self)
    {
      v12 = +[MPCloudController sharedCloudController];
      userIdentity = [v12 userIdentity];
      v10 = [MPCloudController _controllerWithUserIdentity:userIdentity createIfRequired:0];

      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (BOOL)_handlesSameAccountAs:(id)as
{
  asCopy = as;
  currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
  supportsMultipleITunesAccounts = [currentDeviceInfo supportsMultipleITunesAccounts];

  v7 = 0;
  if (self != asCopy && supportsMultipleITunesAccounts)
  {
    userIdentity = [(MPCloudController *)self userIdentity];
    accountDSID = [userIdentity accountDSID];
    userIdentity2 = [(MPCloudController *)asCopy userIdentity];
    accountDSID2 = [userIdentity2 accountDSID];
    if (accountDSID == accountDSID2)
    {
      v7 = 1;
    }

    else
    {
      v7 = [accountDSID isEqual:accountDSID2];
    }
  }

  return v7;
}

- (void)_copyObservationStateFrom:(id)from
{
  fromCopy = from;
  currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
  supportsMultipleITunesAccounts = [currentDeviceInfo supportsMultipleITunesAccounts];

  if (supportsMultipleITunesAccounts)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v7 = fromCopy[5];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __47__MPCloudController__copyObservationStateFrom___block_invoke;
    v12 = &unk_1E76819F0;
    v14 = &v15;
    v13 = fromCopy;
    dispatch_sync(v7, &v9);
    if (v16[3])
    {
      v8 = 0;
      do
      {
        [(MPCloudController *)self _becomeActiveAndWaitUntilDone:0, v9, v10, v11, v12];
        ++v8;
      }

      while (v8 < v16[3]);
    }

    _Block_object_dispose(&v15, 8);
  }
}

- (int64_t)_icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:(int64_t)action
{
  v3 = 1;
  if (action == 2)
  {
    v3 = 2;
  }

  if (action == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (int64_t)_icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:(int64_t)type
{
  if (type >= 5)
  {
    return 1;
  }

  else
  {
    return type;
  }
}

- (int64_t)_icFavoriteEntityTypeFromMPEntityType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (void)_setDateModified:(id)modified forPlaylistPersistentID:(int64_t)d
{
  modifiedCopy = modified;
  userIdentity = [(MPCloudController *)self userIdentity];
  v9 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  v8 = [[MPMediaPlaylist alloc] initWithPersistentID:d mediaLibrary:v9];
  [(MPMediaItemCollection *)v8 setValue:modifiedCopy forProperty:@"dateModified"];
}

- (id)_referralForModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  anyObject = objectCopy;
  if (objc_opt_isKindOfClass())
  {
    flattenedGenericObject = [objectCopy flattenedGenericObject];
    anyObject = [flattenedGenericObject anyObject];
  }

  identifiers = [anyObject identifiers];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    universalStore = [identifiers universalStore];
    globalPlaylistID = [universalStore globalPlaylistID];
    v9 = [globalPlaylistID length];

    if (v9)
    {
      v10 = MEMORY[0x1E69E43B8];
      universalStore2 = [identifiers universalStore];
      globalPlaylistID2 = [universalStore2 globalPlaylistID];
      v13 = [v10 referralWithPlaylistGlobalID:globalPlaylistID2];

LABEL_9:
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      universalStore3 = [identifiers universalStore];
      adamID = [universalStore3 adamID];

      if (adamID >= 1)
      {
        v16 = MEMORY[0x1E69E43B8];
        universalStore2 = [identifiers universalStore];
        v13 = [v16 referralWithAlbumAdamID:{objc_msgSend(universalStore2, "adamID")}];
        goto LABEL_9;
      }
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

void __53__MPCloudController__initializeUpdateInProgressState__block_invoke(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MPCloudController__initializeUpdateInProgressState__block_invoke_2;
  v5[3] = &unk_1E7676340;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(&v6);
}

void __53__MPCloudController__initializeUpdateInProgressState__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40) == 1 ? *(a1 + 41) : 0;
    [WeakRetained setCloudLibraryInitialImport:v4];
    if (*(a1 + 40) != [v3 isCloudLibraryUpdateInProgress])
    {
      [v3 setCloudLibraryUpdateInProgress:?];
      v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138543874;
        v7 = v3;
        v8 = 1024;
        v9 = [v3 isCloudLibraryUpdateInProgress];
        v10 = 1024;
        v11 = [v3 isCloudLibraryInitialImport];
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting CloudLibraryUpdateInProgress to %{BOOL}u CloudLibraryInitialImport to %{BOOL}u - Posting MPCloudControllerIsUpdateInProgressDidChangeNotification [Saga]", &v6, 0x18u);
      }

      [MPCloudController _postNotificationName:@"MPCloudControllerIsUpdateInProgressDidChangeNotification" controller:v3];
    }
  }
}

uint64_t __39__MPCloudController__updateSagaEnabled__block_invoke(uint64_t a1)
{
  [MPCloudController _postNotificationName:@"MPCloudControllerIsCloudEnabledDidChangeNotification" controller:*(a1 + 32)];
  v2 = *(a1 + 32);

  return [MPCloudController _postNotificationName:@"MPCloudControllerIsGeniusEnabledDidChangeNotification" controller:v2];
}

- (void)setLikedState:(int64_t)state forArtistWithStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp completion:(id)completion
{
  v12 = state == 3;
  completionCopy = completion;
  v14 = MEMORY[0x1E69E43D8];
  stampCopy = stamp;
  sharedCloudContentTasteRequestListener = [v14 sharedCloudContentTasteRequestListener];
  if (state == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2 * v12;
  }

  configuration = [(MPCloudController *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__MPCloudController_setLikedState_forArtistWithStoreID_persistentID_timeStamp_completion___block_invoke;
  v20[3] = &unk_1E76816D0;
  v21 = completionCopy;
  v19 = completionCopy;
  [sharedCloudContentTasteRequestListener setContentTaste:v17 forArtistStoreID:d persistentID:iD timeStamp:stampCopy configuration:configuration withCompletionHandler:v20];
}

uint64_t __90__MPCloudController_setLikedState_forArtistWithStoreID_persistentID_timeStamp_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setLikedState:(int64_t)state forPlaylistWithGlobalID:(id)d persistentID:(int64_t)iD timeStamp:(id)stamp completion:(id)completion
{
  v12 = state == 3;
  completionCopy = completion;
  v14 = MEMORY[0x1E69E43D8];
  stampCopy = stamp;
  dCopy = d;
  sharedCloudContentTasteRequestListener = [v14 sharedCloudContentTasteRequestListener];
  if (state == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2 * v12;
  }

  configuration = [(MPCloudController *)self configuration];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__MPCloudController_setLikedState_forPlaylistWithGlobalID_persistentID_timeStamp_completion___block_invoke;
  v21[3] = &unk_1E76816D0;
  v22 = completionCopy;
  v20 = completionCopy;
  [sharedCloudContentTasteRequestListener setContentTaste:v18 forPlaylistGlobalID:dCopy persistentID:iD timeStamp:stampCopy configuration:configuration withCompletionHandler:v21];
}

uint64_t __93__MPCloudController_setLikedState_forPlaylistWithGlobalID_persistentID_timeStamp_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setLikedState:(int64_t)state forPlaylistWithGlobalID:(id)d completion:(id)completion
{
  v8 = MEMORY[0x1E695DF00];
  completionCopy = completion;
  dCopy = d;
  date = [v8 date];
  [(MPCloudController *)self setLikedState:state forPlaylistWithGlobalID:dCopy persistentID:0 timeStamp:date completion:completionCopy];
}

- (void)setLikedState:(int64_t)state forAlbumWithStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp completion:(id)completion
{
  v12 = state == 3;
  completionCopy = completion;
  v14 = MEMORY[0x1E69E43D8];
  stampCopy = stamp;
  sharedCloudContentTasteRequestListener = [v14 sharedCloudContentTasteRequestListener];
  if (state == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2 * v12;
  }

  configuration = [(MPCloudController *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__MPCloudController_setLikedState_forAlbumWithStoreID_persistentID_timeStamp_completion___block_invoke;
  v20[3] = &unk_1E76816D0;
  v21 = completionCopy;
  v19 = completionCopy;
  [sharedCloudContentTasteRequestListener setContentTaste:v17 forAlbumStoreID:d persistentID:iD timeStamp:stampCopy configuration:configuration withCompletionHandler:v20];
}

uint64_t __89__MPCloudController_setLikedState_forAlbumWithStoreID_persistentID_timeStamp_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setLikedState:(int64_t)state forAlbumWithStoreID:(int64_t)d completion:(id)completion
{
  v8 = MEMORY[0x1E695DF00];
  completionCopy = completion;
  date = [v8 date];
  [(MPCloudController *)self setLikedState:state forAlbumWithStoreID:d persistentID:0 timeStamp:date completion:completionCopy];
}

- (void)setLikedState:(int64_t)state forEntityWithStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp completion:(id)completion
{
  v12 = state == 3;
  completionCopy = completion;
  v14 = MEMORY[0x1E69E43D8];
  stampCopy = stamp;
  sharedCloudContentTasteRequestListener = [v14 sharedCloudContentTasteRequestListener];
  if (state == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2 * v12;
  }

  configuration = [(MPCloudController *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__MPCloudController_setLikedState_forEntityWithStoreID_persistentID_timeStamp_completion___block_invoke;
  v20[3] = &unk_1E76816D0;
  v21 = completionCopy;
  v19 = completionCopy;
  [sharedCloudContentTasteRequestListener setContentTaste:v17 forMediaItem:0 storeIdentifier:d persistentID:iD timeStamp:stampCopy configuration:configuration withCompletionHandler:v20];
}

uint64_t __90__MPCloudController_setLikedState_forEntityWithStoreID_persistentID_timeStamp_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setLikedState:(int64_t)state forEntityWithStoreID:(int64_t)d withMediaType:(unint64_t)type timeStamp:(id)stamp completion:(id)completion
{
  v11 = state == 3;
  completionCopy = completion;
  v13 = MEMORY[0x1E69E43D8];
  stampCopy = stamp;
  sharedCloudContentTasteRequestListener = [v13 sharedCloudContentTasteRequestListener];
  if (state == 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * v11;
  }

  configuration = [(MPCloudController *)self configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__MPCloudController_setLikedState_forEntityWithStoreID_withMediaType_timeStamp_completion___block_invoke;
  v19[3] = &unk_1E76816D0;
  v20 = completionCopy;
  v18 = completionCopy;
  [sharedCloudContentTasteRequestListener setContentTaste:v16 forMediaItem:0 storeIdentifier:d configuration:configuration timeStamp:stampCopy withCompletionHandler:v19];
}

uint64_t __91__MPCloudController_setLikedState_forEntityWithStoreID_withMediaType_timeStamp_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchRecommendedContentWithSeedTrackID:(int64_t)d seedTrackIDType:(int64_t)type count:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MPCloudController fetchRecommendedContentWithSeedTrackID:seedTrackIDType:count:completion:]"];
    [currentHandler handleFailureInFunction:v16 file:@"MPCloudController.m" lineNumber:1451 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v10 = objc_alloc(MEMORY[0x1E69E4618]);
  userIdentity = [(MPCloudController *)self userIdentity];
  v12 = [v10 initWithIdentity:userIdentity];

  v13 = [objc_alloc(MEMORY[0x1E69E44B8]) initWithRequestContext:v12 seedItemID:d isLibraryID:d == 0 maxResultCount:count];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__MPCloudController_fetchRecommendedContentWithSeedTrackID_seedTrackIDType_count_completion___block_invoke;
  v17[3] = &unk_1E76792F0;
  v18 = completionCopy;
  v14 = completionCopy;
  [v13 performRequestWithResponseHandler:v17];
}

- (void)updateJaliscoMediaLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];

  if (cloudClient)
  {
    v8 = 6;
    if (reason != 1)
    {
      v8 = 0;
    }

    if (reason)
    {
      v9 = v8;
    }

    else
    {
      v9 = 3;
    }

    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCloudController.m" lineNumber:1438 description:{@"Invalid update reason: %ld", reason}];
    }

    cloudClient2 = [(MPCloudController *)self cloudClient];
    [cloudClient2 updateJaliscoLibraryWithReason:v9 completionHandler:handlerCopy];
  }

  else
  {
    v11 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_13;
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v11 = handlerCopy;
LABEL_13:
}

- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _ML3TrackPropertiesFromMPMediaItemProperties(properties);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__MPCloudController_setItemProperties_forPurchaseHistoryID___block_invoke;
  v9[3] = &unk_1E76761D8;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  if (v11[3])
  {
    cloudClient = [(MPCloudController *)self cloudClient];
    [cloudClient setItemProperties:v6 forPurchaseHistoryID:d];
  }

  else
  {
    cloudClient = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(cloudClient, OS_LOG_TYPE_ERROR))
    {
      allKeys = [v6 allKeys];
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = allKeys;
      _os_log_impl(&dword_1A238D000, cloudClient, OS_LOG_TYPE_ERROR, "%{public}@ - Skipping all properties for setItemProperties:forPurchaseHistoryID: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __60__MPCloudController_setItemProperties_forPurchaseHistoryID___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) canSetItemProperty:a2];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

- (void)hideItemsWithPurchaseHistoryIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient hideItemsWithPurchaseHistoryIDs:dsCopy completionHandler:handlerCopy];
}

- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior completionHandler:(id)handler
{
  v6 = behavior == 2;
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  v10 = cloudClient;
  if (behavior == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * v6;
  }

  [cloudClient setCloudFavoriteSongAddToLibraryBehavior:v9 completionHandler:handlerCopy];
}

- (int64_t)favoriteSongAddToLibraryBehavior
{
  v2 = MEMORY[0x1E69B34E0];
  configuration = [(ICCloudClient *)self->_cloudClient configuration];
  userIdentity = [configuration userIdentity];
  v5 = [v2 musicLibraryForUserAccount:userIdentity];
  v6 = [v5 valueForDatabaseProperty:@"MLCloudAccountFavoriteSongAddToLibraryBehavior"];
  integerValue = [v6 integerValue];

  if (integerValue == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (integerValue == 2);
  }
}

- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior completionHandler:(id)handler
{
  v6 = behavior == 2;
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  v10 = cloudClient;
  if (behavior == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * v6;
  }

  [cloudClient setCloudAddToPlaylistBehavior:v9 completionHandler:handlerCopy];
}

- (int64_t)cloudAddToPlaylistBehavior
{
  v2 = MEMORY[0x1E69B34E0];
  configuration = [(ICCloudClient *)self->_cloudClient configuration];
  userIdentity = [configuration userIdentity];
  v5 = [v2 musicLibraryForUserAccount:userIdentity];
  sagaCloudAddToPlaylistBehavior = [v5 sagaCloudAddToPlaylistBehavior];

  if (sagaCloudAddToPlaylistBehavior == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (sagaCloudAddToPlaylistBehavior == 2);
  }
}

- (BOOL)isAutomaticDownloadsEnabledForPinnedLibraryEntities
{
  cloudClient = [(MPCloudController *)self cloudClient];
  isAutomaticDownloadsEnabledForPinnedLibraryEntities = [cloudClient isAutomaticDownloadsEnabledForPinnedLibraryEntities];

  return isAutomaticDownloadsEnabledForPinnedLibraryEntities;
}

- (void)disableAutomaticDownloadsForPinnedLibraryEntities
{
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient handleAutomaticDownloadPreferenceChangedForPinnedLibraryEntities:0];
}

- (void)enableAutomaticDownloadsForPinnedLibraryEntities
{
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient handleAutomaticDownloadPreferenceChangedForPinnedLibraryEntities:1];
}

- (void)disableAutomaticDownloadsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient handleAutomaticDownloadPreferenceChangedForMediaKindMusic:0 withCompletionHandler:handlerCopy];
}

- (void)enableAutomaticDownloadsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient handleAutomaticDownloadPreferenceChangedForMediaKindMusic:1 withCompletionHandler:handlerCopy];
}

- (BOOL)hasSetPreferenceForAutomaticDownloads
{
  cloudClient = [(MPCloudController *)self cloudClient];
  hasSetPreferenceForAutomaticDownloads = [cloudClient hasSetPreferenceForAutomaticDownloads];

  return hasSetPreferenceForAutomaticDownloads;
}

- (BOOL)isAutomaticDownloadsEnabled
{
  cloudClient = [(MPCloudController *)self cloudClient];
  isAutomaticDownloadsEnabledForMediaKindMusic = [cloudClient isAutomaticDownloadsEnabledForMediaKindMusic];

  return isAutomaticDownloadsEnabledForMediaKindMusic;
}

- (void)disableCloudLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  v16 = *MEMORY[0x1E69E9840];
  if (reason == 1)
  {
    v6 = -5;
  }

  else
  {
    v6 = -7;
  }

  handlerCopy = handler;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    selfCopy = self;
    v12 = 1024;
    v13 = reasonCopy;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - reason=%d, disableCloudLibraryReason=%d", &v10, 0x18u);
  }

  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient disableCloudLibraryWithReason:v6 completionHandler:handlerCopy];
}

- (void)enableCloudLibraryWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:@"MPCloudControllerEnableCloudLibraryOptionStartInitialImport"];
  bOOLValue = [v8 BOOLValue];

  v10 = [optionsCopy objectForKeyedSubscript:@"MPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrary"];

  LODWORD(optionsCopy) = [v10 BOOLValue];
  cloudClient = [(MPCloudController *)self cloudClient];
  v13 = cloudClient;
  if (optionsCopy)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  [cloudClient enableCloudLibraryWithPolicy:v12 startInitialImport:bOOLValue completionHandler:handlerCopy];
}

- (void)loadLastKnownEnableICMLErrorStatusWithCompletionHander:(id)hander
{
  handerCopy = hander;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient loadLastKnownEnableICMLErrorStatusWithCompletionHander:handerCopy];
}

- (void)loadJaliscoLibraryUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient loadJaliscoUpdateProgressWithCompletionHandler:handlerCopy];
}

- (void)loadCloudMusicLibraryUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient loadUpdateProgressWithCompletionHandler:handlerCopy];
}

- (void)loadUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient loadUpdateProgressWithCompletionHandler:handlerCopy];
}

- (void)loadGeniusItemsForSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient loadGeniusItemsForSagaID:d completionHandler:handlerCopy];
}

- (BOOL)isGeniusEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__MPCloudController_isGeniusEnabled__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__MPCloudController_isGeniusEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCloudEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__MPCloudController_isActive__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __33__MPCloudController_resignActive__block_invoke()
{
  v0 = +[MPCloudController controllers];
  [v0 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_204];
}

- (void)becomeActiveAndWaitUntilDone:(BOOL)done
{
  doneCopy = done;
  v5 = +[MPCloudController sharedCloudController];

  if (v5 == self)
  {
    [(MPCloudController *)self _becomeActiveAndWaitUntilDone:doneCopy];
    currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
    supportsMultipleITunesAccounts = [currentDeviceInfo supportsMultipleITunesAccounts];

    if (supportsMultipleITunesAccounts)
    {
      currentDeviceInfo2 = [MEMORY[0x1E69E4420] currentDeviceInfo];
      isAudioAccessory = [currentDeviceInfo2 isAudioAccessory];

      if (isAudioAccessory)
      {
        v10 = +[MPCloudController globalSerialQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__MPCloudController_becomeActiveAndWaitUntilDone___block_invoke;
        block[3] = &__block_descriptor_33_e5_v8__0l;
        v14 = doneCopy;
        dispatch_sync(v10, block);
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __50__MPCloudController_becomeActiveAndWaitUntilDone___block_invoke_3;
        v11[3] = &__block_descriptor_33_e27_v16__0__MPCloudController_8l;
        v12 = doneCopy;
        [(MPCloudController *)self _performBlockOnControllerHandlingTheSameAccount:v11];
      }
    }
  }
}

void __50__MPCloudController_becomeActiveAndWaitUntilDone___block_invoke(uint64_t a1)
{
  v2 = +[MPCloudController controllers];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__MPCloudController_becomeActiveAndWaitUntilDone___block_invoke_2;
  v3[3] = &__block_descriptor_33_e44_v32__0__NSString_8__MPCloudController_16_B24l;
  v4 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)deprioritizeArtworkRequestForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType artworkSourceType:(int64_t)sourceType
{
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__MPCloudController_deprioritizeArtworkRequestForEntityPersistentID_entityType_artworkType_artworkSourceType___block_invoke;
  block[3] = &unk_1E7676278;
  block[4] = self;
  block[5] = type;
  block[6] = d;
  block[7] = artworkType;
  block[8] = sourceType;
  dispatch_async(v11, block);
}

void __110__MPCloudController_deprioritizeArtworkRequestForEntityPersistentID_entityType_artworkType_artworkSourceType___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cloudClient];

  if (!v2)
  {
    goto LABEL_37;
  }

  v3 = [*(a1 + 32) userIdentity];
  v25 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v3];

  v4 = *(a1 + 40);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (*(a1 + 56) != 4 || *(a1 + 64) != 500)
      {
        goto LABEL_36;
      }

      v6 = [*(a1 + 32) cloudClient];
      [(MPMediaPlaylist *)v6 deprioritizeArtistHeroImageForPersistentID:*(a1 + 48)];
    }

    else
    {
      if (v4 != 7 || *(a1 + 56) != 4 || *(a1 + 64) != 500)
      {
        goto LABEL_36;
      }

      v6 = [*(a1 + 32) cloudClient];
      [(MPMediaPlaylist *)v6 deprioritizeAlbumArtistHeroImageForPersistentID:*(a1 + 48)];
    }

LABEL_43:

    return;
  }

  if (!v4)
  {
    v10 = [v25 itemWithPersistentID:*(a1 + 48) verifyExistence:0];
    v6 = v10;
    v11 = *(a1 + 56);
    if (v11 == 2)
    {
      v15 = *(a1 + 64);
      switch(v15)
      {
        case 600:
          v9 = [*(a1 + 32) cloudClient];
          [v9 deprioritizeSubscriptionScreenshotForPersistentID:*(a1 + 48)];
          goto LABEL_42;
        case 400:
          v20 = [(MPMediaPlaylist *)v10 valueForProperty:@"purchaseHistoryID"];
          v21 = [v20 unsignedLongLongValue];

          if (v21 >= 1)
          {
            v9 = [*(a1 + 32) cloudClient];
            [v9 deprioritizeScreenshotForPurchaseHistoryID:v21];
            goto LABEL_42;
          }

          break;
        case 200:
          v16 = [(MPMediaPlaylist *)v10 valueForProperty:@"storeSagaID"];
          v17 = [v16 unsignedLongLongValue];

          if (v17 >= 1)
          {
            v9 = [*(a1 + 32) cloudClient];
            [v9 deprioritizeScreenshotForSagaID:v17];
            goto LABEL_42;
          }

          break;
      }
    }

    else if (v11 == 1)
    {
      v12 = *(a1 + 64);
      switch(v12)
      {
        case 600:
          v9 = [*(a1 + 32) cloudClient];
          [v9 deprioritizeSubscriptionItemArtworkForPersistentID:*(a1 + 48)];
          goto LABEL_42;
        case 400:
          v18 = [(MPMediaPlaylist *)v10 valueForProperty:@"purchaseHistoryID"];
          v19 = [v18 unsignedLongLongValue];

          if (v19 >= 1)
          {
            v9 = [*(a1 + 32) cloudClient];
            [v9 deprioritizeItemArtworkForPurchaseHistoryID:v19];
            goto LABEL_42;
          }

          break;
        case 200:
          v13 = [(MPMediaPlaylist *)v10 valueForProperty:@"storeSagaID"];
          v14 = [v13 unsignedLongLongValue];

          if (v14 >= 1)
          {
            v9 = [*(a1 + 32) cloudClient];
            [v9 deprioritizeItemArtworkForSagaID:v14];
            goto LABEL_42;
          }

          break;
      }
    }

    goto LABEL_35;
  }

  if (v4 != 1 || *(a1 + 56) != 5)
  {
    goto LABEL_36;
  }

  v5 = *(a1 + 64);
  if (v5 == 600)
  {
    v6 = [*(a1 + 32) cloudClient];
    [(MPMediaPlaylist *)v6 deprioritizeSubscriptionContainerArtworkForPersistentID:*(a1 + 48)];
    goto LABEL_43;
  }

  if (v5 == 200)
  {
    v6 = [[MPMediaPlaylist alloc] initWithPersistentID:*(a1 + 48) mediaLibrary:v25];
    v7 = [(MPMediaPlaylist *)v6 valueForProperty:@"storeCloudID"];
    v8 = [v7 unsignedLongLongValue];

    if (v8 >= 1)
    {
      v9 = [*(a1 + 32) cloudClient];
      [v9 deprioritizeContainerArtworkForSagaID:v8];
LABEL_42:

      goto LABEL_43;
    }

LABEL_35:
  }

LABEL_36:

LABEL_37:
  v22 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    *buf = 134218240;
    v27 = v23;
    v28 = 2048;
    v29 = v24;
    _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "[CloudPersonalization] Deprioritize artwork request not supported for artworkType=%ld, sourceType=%ld", buf, 0x16u);
  }
}

- (void)loadArtworkInfoForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType artworkSourceType:(int64_t)sourceType completionHandler:(id)handler
{
  handlerCopy = handler;
  v13 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__MPCloudController_loadArtworkInfoForEntityPersistentID_entityType_artworkType_artworkSourceType_completionHandler___block_invoke;
  v15[3] = &unk_1E7676250;
  v15[4] = self;
  v16 = handlerCopy;
  dCopy = d;
  typeCopy = type;
  artworkTypeCopy = artworkType;
  sourceTypeCopy = sourceType;
  v14 = handlerCopy;
  dispatch_async(v13, v15);
}

void __117__MPCloudController_loadArtworkInfoForEntityPersistentID_entityType_artworkType_artworkSourceType_completionHandler___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__MPCloudController_loadArtworkInfoForEntityPersistentID_entityType_artworkType_artworkSourceType_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E7676228;
  v2 = *(a1 + 40);
  v34 = *(a1 + 48);
  v33 = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) cloudClient];

  if (v4)
  {
    v5 = [*(a1 + 32) userIdentity];
    v6 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v5];

    v7 = *(a1 + 56);
    if (v7 != 1)
    {
      if (!v7)
      {
        v8 = [v6 itemWithPersistentID:*(a1 + 48) verifyExistence:0];
        v9 = v8;
        v10 = *(a1 + 64);
        if (v10 == 2)
        {
          v20 = *(a1 + 72);
          switch(v20)
          {
            case 600:
              v14 = [*(a1 + 32) cloudClient];
              [v14 loadScreenshotInfoForSubscriptionPersistentID:*(a1 + 48) completionHandler:v3];
              goto LABEL_30;
            case 400:
              v25 = [(MPMediaPlaylist *)v8 valueForProperty:@"purchaseHistoryID"];
              v26 = [v25 unsignedLongLongValue];

              if (v26 >= 1)
              {
                v14 = [*(a1 + 32) cloudClient];
                [v14 loadScreenshotInfoForPurchaseHistoryID:v26 completionHandler:v3];
                goto LABEL_30;
              }

              break;
            case 200:
              v21 = [(MPMediaPlaylist *)v8 valueForProperty:@"storeSagaID"];
              v22 = [v21 unsignedLongLongValue];

              if (v22 >= 1)
              {
                v14 = [*(a1 + 32) cloudClient];
                [v14 loadScreenshotInfoForSagaID:v22 completionHandler:v3];
                goto LABEL_30;
              }

              break;
          }
        }

        else if (v10 == 1)
        {
          v11 = *(a1 + 72);
          switch(v11)
          {
            case 600:
              v14 = [*(a1 + 32) cloudClient];
              [v14 loadArtworkInfoForSubscriptionItemPersistentID:*(a1 + 48) completionHandler:v3];
              goto LABEL_30;
            case 400:
              v23 = [(MPMediaPlaylist *)v8 valueForProperty:@"purchaseHistoryID"];
              v24 = [v23 unsignedLongLongValue];

              if (v24 >= 1)
              {
                v14 = [*(a1 + 32) cloudClient];
                [v14 loadArtworkInfoForPurchaseHistoryID:v24 completionHandler:v3];
                goto LABEL_30;
              }

              break;
            case 200:
              v12 = [(MPMediaPlaylist *)v8 valueForProperty:@"storeSagaID"];
              v13 = [v12 unsignedLongLongValue];

              if (v13 >= 1)
              {
                v14 = [*(a1 + 32) cloudClient];
                [v14 loadArtworkInfoForSagaID:v13 completionHandler:v3];
LABEL_30:

                goto LABEL_31;
              }

              break;
          }
        }

LABEL_27:
        v19 = 0;
LABEL_32:

LABEL_33:
        if (v19)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

LABEL_16:
      v19 = 0;
      goto LABEL_33;
    }

    v15 = *(a1 + 72);
    if (v15 == 600)
    {
      v9 = [*(a1 + 32) cloudClient];
      [(MPMediaPlaylist *)v9 loadArtworkInfoForSubscriptionContainerPersistentID:*(a1 + 48) completionHandler:v3];
    }

    else
    {
      if (v15 != 200)
      {
        goto LABEL_16;
      }

      v9 = [[MPMediaPlaylist alloc] initWithPersistentID:*(a1 + 48) mediaLibrary:v6];
      v16 = [(MPMediaPlaylist *)v9 valueForProperty:@"storeCloudID"];
      v17 = [v16 unsignedLongLongValue];

      if (v17 < 1)
      {
        goto LABEL_27;
      }

      v18 = [*(a1 + 32) cloudClient];
      [v18 loadArtworkInfoForContainerSagaID:v17 completionHandler:v3];
    }

LABEL_31:
    v19 = 1;
    goto LABEL_32;
  }

LABEL_34:
  if (*(a1 + 40))
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Artwork info loading not supported for artworkType=%ld, sourceType=%ld", *(a1 + 64), *(a1 + 72)];
    v28 = *(a1 + 40);
    v29 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36[0] = v27;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v31 = [v29 errorWithDomain:@"MPCloudControllerErrorDomain" code:1010101 userInfo:v30];
    (*(v28 + 16))(v28, 0, v31);
  }

LABEL_36:
}

void __117__MPCloudController_loadArtworkInfoForEntityPersistentID_entityType_artworkType_artworkSourceType_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MPExportableArtworkProperties);
  if (v3)
  {
    v5 = *MEMORY[0x1E69E40A8];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69E40A8]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69E40D0]];

    if ([v7 length])
    {
      v8 = MEMORY[0x1E696ACB0];
      v9 = [v7 dataUsingEncoding:4];
      v10 = [v8 JSONObjectWithData:v9 options:0 error:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25[0] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
        [(MPExportableArtworkProperties *)v4 setArtworkTemplateItems:v11];
      }
    }

    v12 = [v3 objectForKeyedSubscript:v5];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69E40C0]];

    if (_NSIsNSString())
    {
      [(MPExportableArtworkProperties *)v4 setResolvedURLString:v13];
    }

    v14 = [(MPExportableArtworkProperties *)v4 artworkTemplateItems];
    if ([v14 count])
    {
      v15 = 0;
LABEL_10:

      goto LABEL_14;
    }

    v17 = [(MPExportableArtworkProperties *)v4 resolvedURLString];

    if (!v17)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Artwork info loading failed. No artwork URL found in the artwork info dictionary for item with persistent ID %lld", *(a1 + 40)];
      v19 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24 = v14;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v15 = [v19 errorWithDomain:@"MPCloudControllerErrorDomain" code:1010101 userInfo:v20];

      goto LABEL_10;
    }

    v15 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Artwork info loading failed. Got no artwork info dictionary for item with persistent ID %lld", *(a1 + 40)];
    v16 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22 = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [v16 errorWithDomain:@"MPCloudControllerErrorDomain" code:1010101 userInfo:v13];
  }

LABEL_14:

  v18 = *(a1 + 32);
  if (v18)
  {
    (*(v18 + 16))(v18, v4, v15);
  }
}

- (void)loadArtworkForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType artworkSourceType:(int64_t)sourceType artworkVariantType:(int64_t)variantType completionHandler:(id)handler
{
  handlerCopy = handler;
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__MPCloudController_loadArtworkForEntityPersistentID_entityType_artworkType_artworkSourceType_artworkVariantType_completionHandler___block_invoke;
  block[3] = &unk_1E7676200;
  block[4] = self;
  v18 = handlerCopy;
  typeCopy = type;
  dCopy = d;
  artworkTypeCopy = artworkType;
  sourceTypeCopy = sourceType;
  variantTypeCopy = variantType;
  v16 = handlerCopy;
  dispatch_async(v15, block);
}

void __132__MPCloudController_loadArtworkForEntityPersistentID_entityType_artworkType_artworkSourceType_artworkVariantType_completionHandler___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  aBlock = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __132__MPCloudController_loadArtworkForEntityPersistentID_entityType_artworkType_artworkSourceType_artworkVariantType_completionHandler___block_invoke_2;
  v34 = &unk_1E76816D0;
  v35 = *(a1 + 40);
  v2 = _Block_copy(&aBlock);
  v3 = [*(a1 + 32) cloudClient];

  if (v3)
  {
    if ([MEMORY[0x1E69E4688] canAccessAccountStore])
    {
      v4 = [*(a1 + 32) userIdentity];
      v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v4];
    }

    else
    {
      v5 = +[MPMediaLibrary defaultMediaLibrary];
    }

    v6 = 0;
    v7 = *(a1 + 48);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (*(a1 + 64) == 4 && *(a1 + 72) == 500)
        {
          v9 = [*(a1 + 32) cloudClient];
          [(MPMediaPlaylist *)v9 importArtistHeroImageForPersistentID:*(a1 + 56) completionHandler:v2];
          goto LABEL_44;
        }
      }

      else
      {
        if (v7 != 7)
        {
          goto LABEL_46;
        }

        if (*(a1 + 64) == 4 && *(a1 + 72) == 500)
        {
          v9 = [*(a1 + 32) cloudClient];
          [(MPMediaPlaylist *)v9 importAlbumArtistHeroImageForPersistentID:*(a1 + 56) completionHandler:v2];
          goto LABEL_44;
        }
      }
    }

    else
    {
      if (!v7)
      {
        v13 = [v5 itemWithPersistentID:*(a1 + 56) verifyExistence:0];
        v9 = v13;
        v14 = *(a1 + 64);
        if (v14 == 2)
        {
          v19 = *(a1 + 72);
          switch(v19)
          {
            case 600:
              v18 = [*(a1 + 32) cloudClient];
              [v18 importSubscriptionScreenshotForPersistentID:*(a1 + 56) completionHandler:v2];
              break;
            case 400:
              v24 = [(MPMediaPlaylist *)v13 valueForProperty:@"purchaseHistoryID"];
              v25 = [v24 unsignedLongLongValue];

              if (v25 < 1)
              {
                goto LABEL_40;
              }

              v18 = [*(a1 + 32) cloudClient];
              [v18 importScreenshotForPurchaseHistoryID:v25 completionHandler:v2];
              break;
            case 200:
              v20 = [(MPMediaPlaylist *)v13 valueForProperty:@"storeSagaID"];
              v21 = [v20 unsignedLongLongValue];

              if (v21 < 1)
              {
                goto LABEL_40;
              }

              v18 = [*(a1 + 32) cloudClient];
              [v18 importScreenshotForSagaID:v21 completionHandler:v2];
              break;
            default:
              goto LABEL_40;
          }
        }

        else
        {
          if (v14 != 1)
          {
            goto LABEL_40;
          }

          v15 = *(a1 + 72);
          switch(v15)
          {
            case 600:
              v18 = [*(a1 + 32) cloudClient];
              [v18 importSubscriptionItemArtworkForPersistentID:*(a1 + 56) completionHandler:v2];
              break;
            case 400:
              v22 = [(MPMediaPlaylist *)v13 valueForProperty:@"purchaseHistoryID"];
              v23 = [v22 unsignedLongLongValue];

              if (v23 < 1)
              {
                goto LABEL_40;
              }

              v18 = [*(a1 + 32) cloudClient];
              [v18 importItemArtworkForPurchaseHistoryID:v23 completionHandler:v2];
              break;
            case 200:
              v16 = [(MPMediaPlaylist *)v13 valueForProperty:@"storeSagaID"];
              v17 = [v16 unsignedLongLongValue];

              if (v17 < 1)
              {
                goto LABEL_40;
              }

              v18 = [*(a1 + 32) cloudClient];
              [v18 importItemArtworkForSagaID:v17 completionHandler:v2];
              break;
            default:
              goto LABEL_40;
          }
        }

        goto LABEL_44;
      }

      if (v7 != 1)
      {
        goto LABEL_46;
      }

      if (*(a1 + 64) == 5)
      {
        v8 = *(a1 + 72);
        if (v8 == 600)
        {
          v9 = [*(a1 + 32) cloudClient];
          [(MPMediaPlaylist *)v9 importSubscriptionContainerArtworkForPersistentID:*(a1 + 56) completionHandler:v2];
          goto LABEL_44;
        }

        if (v8 == 200)
        {
          v9 = [[MPMediaPlaylist alloc] initWithPersistentID:*(a1 + 56) mediaLibrary:v5];
          v10 = [(MPMediaPlaylist *)v9 valueForProperty:@"storeCloudID"];
          v11 = [v10 unsignedLongLongValue];

          if (v11 >= 1)
          {
            v12 = [*(a1 + 32) cloudClient];
            [v12 importContainerArtworkForSagaID:v11 artworkVariantType:*(a1 + 80) completionHandler:v2];

LABEL_44:
            v6 = 1;
            goto LABEL_45;
          }

LABEL_40:
          v6 = 0;
LABEL_45:

LABEL_46:
          if (v6)
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }
      }
    }

    v6 = 0;
    goto LABEL_46;
  }

LABEL_47:
  if (*(a1 + 40))
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One-off loading not supported for artworkType=%ld, sourceType=%ld", *(a1 + 64), *(a1 + 72), aBlock, v32, v33, v34];
    v27 = *(a1 + 40);
    v28 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A278];
    v37[0] = v26;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v30 = [v28 errorWithDomain:@"MPCloudControllerErrorDomain" code:1010101 userInfo:v29];
    (*(v27 + 16))(v27, v30);
  }

LABEL_49:
}

uint64_t __132__MPCloudController_loadArtworkForEntityPersistentID_entityType_artworkType_artworkSourceType_artworkVariantType_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeItemsWithSagaIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient removeItemsWithSagaIDs:dsCopy completionHandler:handlerCopy];
}

- (void)addStorePlaylistWithGlobalID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient addStorePlaylistWithGlobalID:dCopy completionHandler:handlerCopy];
}

- (void)sdk_addStoreItemWithOpaqueID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient sdk_addStoreItemWithOpaqueID:dCopy completionHandler:handlerCopy];
}

- (void)addStoreItemsWithAdamIDs:(id)ds referralObject:(id)object completionHandler:(id)handler
{
  handlerCopy = handler;
  objectCopy = object;
  dsCopy = ds;
  cloudClient = [(MPCloudController *)self cloudClient];
  v11 = [(MPCloudController *)self _referralForModelObject:objectCopy];

  [cloudClient addStoreItemsWithAdamIDs:dsCopy referral:v11 completionHandler:handlerCopy];
}

- (void)addStoreItemWithAdamID:(int64_t)d referralObject:(id)object completionHandler:(id)handler
{
  handlerCopy = handler;
  objectCopy = object;
  cloudClient = [(MPCloudController *)self cloudClient];
  v10 = [(MPCloudController *)self _referralForModelObject:objectCopy];

  [cloudClient addStoreItemWithAdamID:d referral:v10 completionHandler:handlerCopy];
}

- (void)setAlbumArtistProperties:(id)properties forEntityWithPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = _ML3CollectionPropertiesFromMPMediaItemColectionProperties(properties);
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient setAlbumArtistProperties:v10 forAlbumArtistPersistentID:d completionHandler:handlerCopy];
}

- (void)setAlbumProperties:(id)properties forEntityWithPersistentID:(int64_t)d cloudLibraryID:(id)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = _ML3CollectionPropertiesFromMPMediaItemColectionProperties(properties);
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient setAlbumEntityProperties:v11 forAlbumPersistentID:d completionHandler:handlerCopy];
}

- (void)setCollectionProperties:(id)properties forCollectionWithPersistentID:(int64_t)d groupingType:(int64_t)type completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (type == 1)
  {
    v13 = _ML3CollectionPropertiesFromMPMediaItemColectionProperties(propertiesCopy);

    cloudClient = [(MPCloudController *)self cloudClient];
    [cloudClient setAlbumProperties:v13 forAlbumPersistentID:d completionHandler:v12];

    propertiesCopy = v13;
  }

  else if (handlerCopy)
  {
    propertiesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set cloud properties for groupingType=%ld properties=%@", type, propertiesCopy];
    v16 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = propertiesCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v18 = [v16 errorWithDomain:@"MPCloudControllerErrorDomain" code:1010102 userInfo:v17];
    (v12)[2](v12, v18);
  }
}

- (void)uploadCloudItemProperties
{
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient uploadCloudItemProperties];
}

- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _ML3TrackPropertiesFromMPMediaItemProperties(properties);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MPCloudController_setItemProperties_forSagaID___block_invoke;
  v9[3] = &unk_1E76761D8;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  if (*(v11 + 24) == 1)
  {
    cloudClient = [(MPCloudController *)self cloudClient];
    [cloudClient setItemProperties:v6 forSagaID:d];
  }

  else
  {
    cloudClient = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(cloudClient, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v6 allKeys];
      *buf = 138543618;
      selfCopy = self;
      v16 = 2112;
      v17 = allKeys;
      _os_log_impl(&dword_1A238D000, cloudClient, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping all properties for setItemProperties:forSagaID: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __49__MPCloudController_setItemProperties_forSagaID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) canSetItemProperty:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient movePinnedAlbumWithPersistentID:d cloudAlbumID:iDCopy toPosition:position completion:completionCopy];
}

- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient movePinnedArtistWithPersistentID:d cloudArtistID:iDCopy toPosition:position completion:completionCopy];
}

- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient movePinnedEntityWithPersistentID:d cloudID:iD type:-[MPCloudController _icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:](self toPosition:"_icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:" completion:{type), position, completionCopy}];
}

- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient updatePinnedLibraryAlbumWithPersistentID:d cloudAlbumID:iDCopy defaultAction:-[MPCloudController _icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:](self completion:{"_icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:", action), completionCopy}];
}

- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient updatePinnedLibraryArtistWithPersistentID:d cloudArtistID:iDCopy defaultAction:-[MPCloudController _icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:](self completion:{"_icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:", action), completionCopy}];
}

- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient updatePinnedLibraryEntityWithPersistentID:d cloudID:iD type:-[MPCloudController _icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:](self defaultAction:"_icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:" completion:{type), -[MPCloudController _icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:](self, "_icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:", action), completionCopy}];
}

- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient removePinnedAlbumWithPersistentID:d cloudAlbumID:iDCopy completion:completionCopy];
}

- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient removePinnedArtistWithPersistentID:d cloudArtistID:iDCopy completion:completionCopy];
}

- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient removePinnedEntityWithPersistentID:d cloudID:iD type:-[MPCloudController _icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:](self completion:{"_icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:", type), completionCopy}];
}

- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient pinLibraryAlbumWithPersistentID:d cloudAlbumID:iDCopy defaultAction:-[MPCloudController _icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:](self completion:{"_icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:", action), completionCopy}];
}

- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient pinLibraryArtistWithPersistentID:d cloudArtistID:iDCopy defaultAction:-[MPCloudController _icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:](self completion:{"_icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:", action), completionCopy}];
}

- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient pinLibraryEntityWithPersistentID:d cloudID:iD type:-[MPCloudController _icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:](self defaultAction:"_icPinnedEntityTypeFromMPMediaLibraryPinnedEntityType:" completion:{type), -[MPCloudController _icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:](self, "_icPinnedEntityDefaultActionFromMPMediaLibraryPinDefaultAction:", action), completionCopy}];
}

- (BOOL)canSetItemProperty:(id)property
{
  v3 = canSetItemProperty__onceToken;
  propertyCopy = property;
  if (v3 != -1)
  {
    dispatch_once(&canSetItemProperty__onceToken, &__block_literal_global_169);
  }

  v5 = [canSetItemProperty____itemProperties containsObject:propertyCopy];

  return v5;
}

void __40__MPCloudController_canSetItemProperty___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"daap.incrementplaycount", @"daap.incrementskipcount", @"dmap.itemhidden", *MEMORY[0x1E69B33B0], *MEMORY[0x1E69B3028], *MEMORY[0x1E69B2EB0], *MEMORY[0x1E69B2EC0], *MEMORY[0x1E69B3108], *MEMORY[0x1E69B2D90], *MEMORY[0x1E69B3118], 0}];
  v1 = canSetItemProperty____itemProperties;
  canSetItemProperty____itemProperties = v0;
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient resetInvitationURLForCollaborationWithPersistentID:d completion:completionCopy];
}

- (void)updateSharingMode:(int64_t)mode onCollaboratinWithPersistentID:(int64_t)d completion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  cloudClient = [(MPCloudController *)self cloudClient];
  v12 = *MEMORY[0x1E69B2B28];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [cloudClient editCollaborationWithPersistentID:d properties:v11 trackEdits:MEMORY[0x1E695E0F0] completion:completionCopy];
}

- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  collaboratorsCopy = collaborators;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient removeCollaborators:collaboratorsCopy fromCollaborationWithPersistentID:d completion:completionCopy];
}

- (void)respondToPendingCollaborator:(id)collaborator onCollaborationWithPersistentID:(int64_t)d withApproval:(BOOL)approval completion:(id)completion
{
  approvalCopy = approval;
  completionCopy = completion;
  collaboratorCopy = collaborator;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient respondToPendingCollaborator:collaboratorCopy onCollaborationWithPersistentID:d withApproval:approvalCopy completion:completionCopy];
}

- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  dCopy = d;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient joinCollaborationWithGlobalPlaylistID:dCopy invitationURL:lCopy completion:completionCopy];
}

- (void)editCollaborationWithPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits completion:(id)completion
{
  completionCopy = completion;
  editsCopy = edits;
  v13 = _ML3CollectionPropertiesFromMPMediaItemColectionProperties(properties);
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient editCollaborationWithPersistentID:d properties:v13 trackEdits:editsCopy completion:completionCopy];
}

- (void)endCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient endCollaborationWithPersistentID:d completion:completionCopy];
}

- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient beginCollaborationUsingPlaylistWithPersistentID:d sharingMode:mode completion:completionCopy];
}

- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  timeCopy = time;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient favoriteEntityWithPersistentID:d sagaID:iD entityType:-[MPCloudController _icFavoriteEntityTypeFromMPEntityType:](self time:"_icFavoriteEntityTypeFromMPEntityType:" completionHandler:{type), timeCopy, handlerCopy}];
}

- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  timeCopy = time;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient favoriteArtistWithPersistentID:d cloudLibraryID:iDCopy time:timeCopy completionHandler:handlerCopy];
}

- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  timeCopy = time;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient favoriteAlbumWithPersistentID:d cloudLibraryID:iDCopy time:timeCopy completionHandler:handlerCopy];
}

- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  timeCopy = time;
  iDCopy = iD;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient favoritePlaylistWithPersistentID:d globalID:iDCopy time:timeCopy completionHandler:handlerCopy];
}

- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  timeCopy = time;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient favoriteEntityWithPersistentID:d storeID:iD entityType:-[MPCloudController _icFavoriteEntityTypeFromMPEntityType:](self time:"_icFavoriteEntityTypeFromMPEntityType:" completionHandler:{type), timeCopy, handlerCopy}];
}

- (void)uploadArtworkForPlaylist:(id)playlist completionHandler:(id)handler
{
  handlerCopy = handler;
  playlistCopy = playlist;
  cloudClient = [(MPCloudController *)self cloudClient];
  persistentID = [playlistCopy persistentID];

  [cloudClient uploadArtworkForPlaylistWithPersistentID:persistentID completionHandler:handlerCopy];
}

- (void)publishPlaylistWithSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient publishPlaylistWithSagaID:d completionHandler:handlerCopy];
}

- (void)removePlaylistsWithSagaIDs:(id)ds performDeltaSync:(BOOL)sync completionHandler:(id)handler
{
  syncCopy = sync;
  handlerCopy = handler;
  dsCopy = ds;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient removePlaylistsWithSagaIDs:dsCopy performDeltaSync:syncCopy completionHandler:handlerCopy];
}

- (void)uploadCloudPlaylistProperties
{
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient uploadCloudPlaylistProperties];
}

- (void)sdk_addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(unint64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(MPCloudController *)self _isCollaborativePlaylist:iD])
  {
    [(MPCloudController *)self _addItemWithSagaID:d toCollaborationWithPersistentID:iD completionHandler:handlerCopy];
  }

  else
  {
    cloudClient = [(MPCloudController *)self cloudClient];
    [cloudClient sdk_addItemWithSagaID:d toPlaylistWithPersistentID:iD completionHandler:handlerCopy];
  }
}

- (void)sdk_addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(unint64_t)iD completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([(MPCloudController *)self _isCollaborativePlaylist:iD])
  {
    msv_unsignedLongLongValue = [dCopy msv_unsignedLongLongValue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__MPCloudController_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke;
    v12[3] = &unk_1E76816D0;
    v13 = handlerCopy;
    [(MPCloudController *)self _addItemWithAdamID:msv_unsignedLongLongValue toCollaborationWithPersistentID:iD completionHandler:v12];
  }

  else
  {
    cloudClient = [(MPCloudController *)self cloudClient];
    [cloudClient sdk_addStoreItemWithOpaqueID:dCopy toPlaylistWithPersistentID:iD completionHandler:handlerCopy];
  }
}

- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(unint64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(MPCloudController *)self _isCollaborativePlaylist:iD])
  {
    [(MPCloudController *)self _addItemWithSagaID:d toCollaborationWithPersistentID:iD completionHandler:handlerCopy];
  }

  else
  {
    cloudClient = [(MPCloudController *)self cloudClient];
    [cloudClient addItemWithSagaID:d toPlaylistWithPersistentID:iD completionHandler:handlerCopy];
  }
}

- (void)addStoreItemWithAdamID:(int64_t)d referralObject:(id)object toPlaylistWithPersistentID:(unint64_t)iD completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  if ([(MPCloudController *)self _isCollaborativePlaylist:iD])
  {
    [(MPCloudController *)self _addItemWithAdamID:d toCollaborationWithPersistentID:iD completionHandler:handlerCopy];
  }

  else
  {
    cloudClient = [(MPCloudController *)self cloudClient];
    v12 = [(MPCloudController *)self _referralForModelObject:objectCopy];
    [cloudClient addStoreItemWithAdamID:d referral:v12 toPlaylistWithPersistentID:iD completionHandler:handlerCopy];
  }
}

- (void)sdk_setPlaylistProperties:(id)properties trackList:(id)list forPlaylistWithPersistentID:(unint64_t)d completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  listCopy = list;
  handlerCopy = handler;
  propertiesCopy = properties;
  date = [propertiesCopy objectForKeyedSubscript:@"dateModified"];
  if (!date)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  [(MPCloudController *)self _setDateModified:date forPlaylistPersistentID:d];
  v14 = _ML3CollectionPropertiesFromMPMediaItemColectionProperties(propertiesCopy);

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __103__MPCloudController_sdk_setPlaylistProperties_trackList_forPlaylistWithPersistentID_completionHandler___block_invoke;
  v19[3] = &unk_1E76761D8;
  v19[4] = self;
  v19[5] = &v20;
  [v14 enumerateKeysAndObjectsUsingBlock:v19];
  if ((v21[3] & 1) == 0)
  {

    v15 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [0 allKeys];
      *buf = 138543618;
      selfCopy = self;
      v26 = 2112;
      v27 = allKeys;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping all properties for setPlaylistProperties:trackList:forPlaylist:completionHandler: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  cloudClient = [(MPCloudController *)self cloudClient];
  iCCloudItemIDList = [listCopy ICCloudItemIDList];
  [cloudClient sdk_setPlaylistProperties:v14 trackList:iCCloudItemIDList forPlaylistPersistentID:d completionHandler:handlerCopy];

  _Block_object_dispose(&v20, 8);
}

uint64_t __103__MPCloudController_sdk_setPlaylistProperties_trackList_forPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) canSetPlaylistProperty:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistWithPersistentID:(unint64_t)d completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  listCopy = list;
  handlerCopy = handler;
  propertiesCopy = properties;
  date = [propertiesCopy objectForKeyedSubscript:@"dateModified"];
  if (!date)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  [(MPCloudController *)self _setDateModified:date forPlaylistPersistentID:d];
  v14 = _ML3CollectionPropertiesFromMPMediaItemColectionProperties(propertiesCopy);

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__MPCloudController_setPlaylistProperties_trackList_forPlaylistWithPersistentID_completionHandler___block_invoke;
  v19[3] = &unk_1E76761D8;
  v19[4] = self;
  v19[5] = &v20;
  [v14 enumerateKeysAndObjectsUsingBlock:v19];
  if ((v21[3] & 1) == 0)
  {

    v15 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [0 allKeys];
      *buf = 138543618;
      selfCopy = self;
      v26 = 2112;
      v27 = allKeys;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping all properties for setPlaylistProperties:trackList:forPlaylist:completionHandler: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  cloudClient = [(MPCloudController *)self cloudClient];
  iCCloudItemIDList = [listCopy ICCloudItemIDList];
  [cloudClient setPlaylistProperties:v14 trackList:iCCloudItemIDList forPlaylistPersistentID:d completionHandler:handlerCopy];

  _Block_object_dispose(&v20, 8);
}

uint64_t __99__MPCloudController_setPlaylistProperties_trackList_forPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) canSetPlaylistProperty:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)canSetPlaylistProperty:(id)property
{
  v3 = canSetPlaylistProperty__onceToken;
  propertyCopy = property;
  if (v3 != -1)
  {
    dispatch_once(&canSetPlaylistProperty__onceToken, &__block_literal_global_157);
  }

  v5 = [canSetPlaylistProperty____containerProperties containsObject:propertyCopy];

  return v5;
}

void __44__MPCloudController_canSetPlaylistProperty___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"daap.incrementplaycount", @"com.apple.itunes.cloud-artwork-token", *MEMORY[0x1E69B2C58], *MEMORY[0x1E69B2B60], *MEMORY[0x1E69B2B50], *MEMORY[0x1E69B2B40], *MEMORY[0x1E69B2C48], *MEMORY[0x1E69B2AF0], *MEMORY[0x1E69B2B00], *MEMORY[0x1E69B2AC0], *MEMORY[0x1E69B2C68], *MEMORY[0x1E69B2B88], *MEMORY[0x1E69B2B80], *MEMORY[0x1E69B2B78], *MEMORY[0x1E69B2B38], 0}];
  v1 = canSetPlaylistProperty____containerProperties;
  canSetPlaylistProperty____containerProperties = v0;
}

- (void)addGeniusPlaylistWithPersistentID:(unint64_t)d name:(id)name seedItemSagaIDs:(id)ds itemSagaIDs:(id)iDs completionHandler:(id)handler
{
  handlerCopy = handler;
  iDsCopy = iDs;
  dsCopy = ds;
  nameCopy = name;
  cloudClient = [(MPCloudController *)self cloudClient];
  [cloudClient addGeniusPlaylistWithPersistentID:d name:nameCopy seedItemSagaIDs:dsCopy itemSagaIDs:iDsCopy completionHandler:handlerCopy];
}

- (void)sdk_createPlaylistWithPersistenID:(unint64_t)d properties:(id)properties tracklist:(id)tracklist completionHandler:(id)handler
{
  handlerCopy = handler;
  tracklistCopy = tracklist;
  v14 = _ML3CollectionPropertiesFromMPMediaItemColectionProperties(properties);
  cloudClient = [(MPCloudController *)self cloudClient];
  iCCloudItemIDList = [tracklistCopy ICCloudItemIDList];

  [cloudClient sdk_createPlaylistWithPersistentID:d properties:v14 tracklist:iCCloudItemIDList completionHandler:handlerCopy];
}

- (void)createPlaylistWithPersistentID:(unint64_t)d properties:(id)properties trackList:(id)list completionHandler:(id)handler
{
  handlerCopy = handler;
  listCopy = list;
  v14 = _ML3CollectionPropertiesFromMPMediaItemColectionProperties(properties);
  cloudClient = [(MPCloudController *)self cloudClient];
  iCCloudItemIDList = [listCopy ICCloudItemIDList];

  [cloudClient createPlaylistWithPersistentID:d properties:v14 trackList:iCCloudItemIDList completionHandler:handlerCopy];
}

- (void)updateSubscribedPlaylistWithSagaID:(unint64_t)d ignoreMinRefreshInterval:(BOOL)interval completionHandler:(id)handler
{
  intervalCopy = interval;
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  cloudClient = [(MPCloudController *)self cloudClient];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [cloudClient updateSubscribedPlaylistsWithSagaIDs:v11 ignoreMinRefreshInterval:intervalCopy completionHandler:handlerCopy];
}

- (BOOL)hasPurchaseHistoryAccount
{
  v16 = *MEMORY[0x1E69E9840];
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  userIdentity = [(MPCloudController *)self userIdentity];
  v11 = 0;
  v5 = [defaultIdentityStore getPropertiesForUserIdentity:userIdentity error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v6 msv_description];
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = msv_description;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "%{public}@ hasPurchaseHistoryAccount Failed to load account properties error=%{public}@", buf, 0x16u);
    }
  }

  else if (v5)
  {
    isActive = [v5 isActive];
    goto LABEL_8;
  }

  isActive = 0;
LABEL_8:

  return isActive;
}

- (BOOL)canDefaultMediaLibraryShowCloudContent
{
  v3 = +[MPMediaLibrary defaultMediaLibrary];
  cloudFilteringType = [v3 cloudFilteringType];

  if (cloudFilteringType == 4)
  {

    return [(MPCloudController *)self canShowCloudMusic];
  }

  else
  {
    v6 = +[MPMediaLibrary defaultMediaLibrary];
    cloudFilteringType2 = [v6 cloudFilteringType];

    if (cloudFilteringType2 == 5)
    {

      return [(MPCloudController *)self canShowCloudVideo];
    }

    else
    {
      return 0;
    }
  }
}

- (ICConnectionConfiguration)configuration
{
  cloudClient = [(MPCloudController *)self cloudClient];
  configuration = [cloudClient configuration];

  return configuration;
}

- (void)activeUserDidChangeNotification:(id)notification
{
  v11 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [notificationCopy name];
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = name;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "%{public}@ - Received notification [%{public}@]", &v7, 0x16u);
  }

  [(MPCloudController *)self _updateSagaEnabled];
}

- (void)dealloc
{
  if (+[MPCloudController isMediaApplication])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  }

  v5.receiver = self;
  v5.super_class = MPCloudController;
  [(MPCloudController *)&v5 dealloc];
}

- (id)_initWithUserIdentity:(id)identity
{
  v45 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v40.receiver = self;
  v40.super_class = MPCloudController;
  v5 = [(MPCloudController *)&v40 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v42 = v5;
      v43 = 2112;
      v44 = identityCopy;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating new controller for user identity %@", buf, 0x16u);
    }

    v7 = dispatch_queue_create("com.apple.mediaplayer.MPCloudController.serial.queue", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v7;

    v9 = dispatch_queue_create("com.apple.mediaplayer.MPCloudController.cloudClient.callback.queue", 0);
    cloudClientCallbackQueue = v5->_cloudClientCallbackQueue;
    v5->_cloudClientCallbackQueue = v9;

    v5->_lock._os_unfair_lock_opaque = 0;
    if (identityCopy)
    {
      v11 = [objc_alloc(MEMORY[0x1E69E43F0]) initWithUserIdentity:identityCopy];
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_alloc(MEMORY[0x1E69E43C8]) initWithConfiguration:v11];
    cloudClient = v5->_cloudClient;
    v5->_cloudClient = v12;

    if (+[MPCloudController isMediaApplication])
    {
      mEMORY[0x1E69E43C0] = [MEMORY[0x1E69E43C0] sharedController];
      cloudAvailabilityController = v5->_cloudAvailabilityController;
      v5->_cloudAvailabilityController = mEMORY[0x1E69E43C0];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel_canShowCloudDownloadButtonsDidChangeNotification_ name:*MEMORY[0x1E69E40F8] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v5 selector:sel_canShowCloudTracksDidChangeNotification_ name:*MEMORY[0x1E69E4100] object:0];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 addObserver:v5 selector:sel_isCellularDataRestrictedDidChangeNotification_ name:*MEMORY[0x1E69E4110] object:0];

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter4 addObserver:v5 selector:sel_hasProperNetworkConditionsToShowCloudMediaDidChangeNotification_ name:*MEMORY[0x1E69E4108] object:0];

      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter5 addObserver:v5 selector:sel_hasProperNetworkConditionsToShowCloudMediaDidChangeNotification_ name:*MEMORY[0x1E69E4118] object:0];

      defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter6 addObserver:v5 selector:sel_enableICMLErrorReasonChange_ name:*MEMORY[0x1E69E4130] object:0];
    }

    else
    {
      objc_storeStrong(&v5->_cloudAvailabilityController, v5->_cloudClient);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, __MPCloudControllerReceivedRemoteNotification, *MEMORY[0x1E69E40F8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v23 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v23, v5, __MPCloudControllerReceivedRemoteNotification, *MEMORY[0x1E69E4100], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v24 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v24, v5, __MPCloudControllerReceivedRemoteNotification, *MEMORY[0x1E69E4110], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v25 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v25, v5, __MPCloudControllerReceivedRemoteNotification, *MEMORY[0x1E69E4108], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v26 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v26, v5, __MPCloudControllerReceivedRemoteNotification, *MEMORY[0x1E69E4130], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v27 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v27, v5, __MPCloudControllerReceivedRemoteNotification, *MEMORY[0x1E69E4140], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v28 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v28, v5, __MPCloudControllerReceivedRemoteNotification, *MEMORY[0x1E69E4148], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v29 = MEMORY[0x1E69B1410];
    v30 = *MEMORY[0x1E69E4120];
    v31 = dispatch_get_global_queue(0, 0);
    v32 = [v29 observerWithDistributedName:v30 localName:@"MPCloudControllerCloudAddToPlaylistBehaviorDidChangeNotification" queue:v31];
    addToPlaylistBehaviorChangedObserver = v5->_addToPlaylistBehaviorChangedObserver;
    v5->_addToPlaylistBehaviorChangedObserver = v32;

    v34 = [MEMORY[0x1E69B1410] observerWithDistributedName:*MEMORY[0x1E69E4128] localName:@"MPCloudControllerCloudFavoriteSongAddToLibraryBehaviorDidChangeNotification" queue:v31];
    favoriteSongAddToLibraryBehaviorChangedObserver = v5->_favoriteSongAddToLibraryBehaviorChangedObserver;
    v5->_favoriteSongAddToLibraryBehaviorChangedObserver = v34;

    if ([MEMORY[0x1E69E4688] canAccessAccountStore])
    {
      defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
      v37 = *MEMORY[0x1E69E4098];
      defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
      [defaultCenter7 addObserver:v5 selector:sel_activeUserDidChangeNotification_ name:v37 object:defaultIdentityStore];
    }
  }

  return v5;
}

+ (void)_postNotificationName:(id)name controller:(id)controller userInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  controllerCopy = controller;
  infoCopy = info;
  if (controllerCopy)
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = controllerCopy;
      v17 = 2112;
      v18 = nameCopy;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting notification [%@]", buf, 0x16u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:nameCopy object:controllerCopy];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__MPCloudController__postNotificationName_controller_userInfo___block_invoke;
    v13[3] = &unk_1E76761B0;
    v14 = nameCopy;
    [controllerCopy _performBlockOnControllerHandlingTheSameAccount:v13];
  }

  else
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:nameCopy object:0 userInfo:infoCopy];
  }
}

void __63__MPCloudController__postNotificationName_controller_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Related controller posting notification [%@]", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:*(a1 + 32) object:v3];
}

+ (id)_controllerWithUserIdentity:(id)identity createIfRequired:(BOOL)required
{
  requiredCopy = required;
  identityCopy = identity;
  currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
  supportsMultipleITunesAccounts = [currentDeviceInfo supportsMultipleITunesAccounts];

  if ((supportsMultipleITunesAccounts & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCloudController.m" lineNumber:243 description:@"Attempting to access a method only available for multi user device"];
  }

  accountDSID = [identityCopy accountDSID];
  if (accountDSID)
  {
    v11 = accountDSID;
  }

  else
  {
    v11 = @"NoDSID";
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3784;
  v30 = __Block_byref_object_dispose__3785;
  v31 = 0;
  globalSerialQueue = [self globalSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MPCloudController__controllerWithUserIdentity_createIfRequired___block_invoke;
  block[3] = &unk_1E7679228;
  v25 = requiredCopy;
  selfCopy = self;
  v13 = v11;
  v21 = v13;
  v14 = identityCopy;
  v22 = v14;
  v23 = &v26;
  dispatch_sync(globalSerialQueue, block);

  if (requiredCopy)
  {
    v15 = v27[5];
    v16 = +[MPCloudController sharedCloudController];
    [v15 _copyObservationStateFrom:v16];
  }

  v17 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __66__MPCloudController__controllerWithUserIdentity_createIfRequired___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 56) controllers];
    v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

    if (!v3)
    {
      v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 56);
        v6 = *(a1 + 40);
        v13 = 138543618;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - No pre-existing controller for user identity %@", &v13, 0x16u);
      }

      v7 = [[MPCloudController alloc] _initWithUserIdentity:*(a1 + 40)];
      v8 = [*(a1 + 56) controllers];
      [v8 setObject:v7 forKeyedSubscript:*(a1 + 32)];
    }
  }

  v9 = [*(a1 + 56) controllers];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

+ (MPCloudController)controllerWithUserIdentity:(id)identity
{
  v14 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2112;
    v13 = identityCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "%{public}@ - Request for a controller with user identity %@", &v10, 0x16u);
  }

  currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
  supportsMultipleITunesAccounts = [currentDeviceInfo supportsMultipleITunesAccounts];

  if (supportsMultipleITunesAccounts)
  {
    [MPCloudController _controllerWithUserIdentity:identityCopy createIfRequired:1];
  }

  else
  {
    +[MPCloudController sharedCloudController];
  }
  v8 = ;

  return v8;
}

+ (NSMutableDictionary)controllers
{
  if (controllers_onceToken_3817 != -1)
  {
    dispatch_once(&controllers_onceToken_3817, &__block_literal_global_63);
  }

  v3 = controllers___controllers_3818;

  return v3;
}

void __32__MPCloudController_controllers__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = controllers___controllers_3818;
  controllers___controllers_3818 = v0;
}

+ (OS_dispatch_queue)globalSerialQueue
{
  if (globalSerialQueue_onceToken_3819 != -1)
  {
    dispatch_once(&globalSerialQueue_onceToken_3819, &__block_literal_global_3820);
  }

  v3 = globalSerialQueue___globalSerialQueue_3821;

  return v3;
}

void __38__MPCloudController_globalSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaplayer.MPCloudController.global.serial.queue", v2);
  v1 = globalSerialQueue___globalSerialQueue_3821;
  globalSerialQueue___globalSerialQueue_3821 = v0;
}

@end