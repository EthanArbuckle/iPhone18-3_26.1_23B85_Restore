@interface MPMediaLibraryDataProviderML3
+ (NSArray)onDiskProviders;
+ (id)_unadjustedValueForItemDateWithDefaultValue:(id)value;
+ (id)_unadjustedValueForItemPropertyRatingWithDefaultValue:(id)value;
+ (id)_unadjustedValueForItemPropertyVolumeAdjustmentWithDefaultValue:(id)value;
+ (id)_unadjustedValueForItemPropertyVolumeNormalizationWithDefaultValue:(id)value;
+ (id)_unadjustedValueForItemTimeWithDefaultValue:(id)value;
+ (id)_unadjustedValueForMPProperty:(id)property withDefaultValue:(id)value;
+ (id)uniqueIdentifierForLibrary:(id)library;
- (BOOL)_dataProviderSupportsEntityChangeTracking;
- (BOOL)_removeEntitiesWithIdentifiers:(int64_t *)identifiers count:(unint64_t)count entityClass:(Class)class;
- (BOOL)collectionExistsContainedWithinPersistentIDs:(const unint64_t *)ds count:(unint64_t)count groupingType:(int64_t)type existentPID:(unint64_t *)d;
- (BOOL)collectionExistsContainedWithinSyncIDs:(id)ds groupingType:(int64_t)type existentPID:(unint64_t *)d;
- (BOOL)collectionExistsWithCloudLibraryID:(id)d groupingType:(int64_t)type existentPID:(unint64_t *)iD;
- (BOOL)collectionExistsWithCloudUniversalLibraryID:(id)d groupingType:(int64_t)type existentPID:(unint64_t *)iD;
- (BOOL)collectionExistsWithName:(id)name groupingType:(int64_t)type existentPID:(unint64_t *)d;
- (BOOL)collectionExistsWithPersistentID:(unint64_t)d groupingType:(int64_t)type;
- (BOOL)collectionExistsWithSagaID:(int64_t)d groupingType:(int64_t)type existentPID:(unint64_t *)iD;
- (BOOL)collectionExistsWithStoreID:(int64_t)d groupingType:(int64_t)type existentPID:(unint64_t *)iD;
- (BOOL)collectionInLibraryWithPersistentID:(unint64_t)d groupingType:(int64_t)type;
- (BOOL)deleteItemsWithIdentifiers:(int64_t *)identifiers count:(unint64_t)count;
- (BOOL)hasGeniusMixes;
- (BOOL)hasMediaOfType:(unint64_t)type;
- (BOOL)hasUbiquitousBookmarkableItems;
- (BOOL)importOriginalArtworkFromImageData:(id)data withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unint64_t)mediaType;
- (BOOL)performTransactionWithBlock:(id)block;
- (BOOL)playlistExistsWithPersistentID:(unint64_t)d;
- (BOOL)removeItemsWithIdentifiers:(int64_t *)identifiers count:(unint64_t)count;
- (BOOL)removePlaylistWithIdentifier:(int64_t)identifier;
- (BOOL)removePlaylistWithIdentifier:(int64_t)identifier preserveUndeletableEntities:(BOOL)entities;
- (ICUserIdentity)userIdentity;
- (MPMediaLibrary)mediaLibrary;
- (MPMediaLibraryDataProviderML3)initWithLibrary:(id)library;
- (NSString)accountDSID;
- (NSString)description;
- (NSString)name;
- (NSString)uniqueIdentifier;
- (id)ML3SystemFilterPredicatesWithGroupingType:(int64_t)type cloudTrackFilteringType:(int64_t)filteringType subscriptionFilteringOptions:(int64_t)options additionalFilterPredicates:(id)predicates;
- (id)_adjustedItemDateOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemNonnullDateOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyAssetURLOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyBookletsOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyChapterArtworkTimesOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyChaptersOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyContentRatingOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyEQPresetOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyEpisodeNumberOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyFilePathOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyMovieInfoOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyRatingOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertySeasonNameOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertySeasonNumberOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyVolumeAdjustmentOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemPropertyVolumeNormalizationOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedItemTimeOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedPlaylistPropertySeedItemsOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_adjustedPropertyMediaTypeOfEntity:(id)entity withDefaultValue:(id)value;
- (id)_storePlatformRequestContext;
- (id)_userSocialProfileID;
- (id)adjustedValueForMPProperty:(id)property ofEntity:(id)entity withDefaultValue:(id)value;
- (id)collectionResultSetForQueryCriteria:(id)criteria;
- (id)itemResultSetForQueryCriteria:(id)criteria;
- (id)lastModifiedDate;
- (id)multiverseIdentifierForCollectionWithPersistentID:(int64_t)d groupingType:(int64_t)type;
- (id)multiverseIdentifierForTrackWithPersistentID:(int64_t)d;
- (id)systemFilterPredicatesWithGroupingType:(int64_t)type cloudTrackFilteringType:(int64_t)filteringType subscriptionFilteringOptions:(int64_t)options;
- (int64_t)addPlaylistWithValuesForProperties:(id)properties trackList:(id)list playlistEntryProperties:(id)entryProperties;
- (int64_t)containerPersistentIDForGlobalID:(id)d;
- (int64_t)favoriteSongsPlaylistPersistentID;
- (int64_t)itemPersistentIDForStoreID:(int64_t)d;
- (int64_t)photosMemoriesPlaylistPersistentID;
- (int64_t)playbackHistoryPlaylistPersistentID;
- (int64_t)playlistGeneration;
- (int64_t)sdk_addPlaylistWithValuesForProperties:(id)properties;
- (void)_addGlobalPlaylistsToLibraryDatabase:(id)database asLibraryOwned:(BOOL)owned completion:(id)completion;
- (void)_coalesceEvents;
- (void)_dynamicPropertiesDidChange:(id)change;
- (void)_importStoreAlbumArtistElements:(id)elements withReferralObject:(id)object withCompletion:(id)completion;
- (void)_importStoreItemElements:(id)elements withReferralObject:(id)object addTracksToDeviceLibraryOnly:(BOOL)only andAddTracksToCloudLibrary:(BOOL)library usingCloudAdamID:(int64_t)d withCompletion:(id)completion;
- (void)_invalidatePersistentKeysForIdentifiers:(int64_t *)identifiers count:(unint64_t)count;
- (void)_invisiblePropertiesDidChange:(id)change;
- (void)_libraryCloudLibraryAvailabilityDidChange:(id)change;
- (void)_libraryContentsDidChange:(id)change;
- (void)_libraryEntitiesAddedOrRemoved:(id)removed;
- (void)_libraryPathDidChange:(id)change;
- (void)_loadProperties:(id)properties ofEntityWithIdentifier:(int64_t)identifier ML3EntityClass:(Class)class completionBlock:(id)block;
- (void)_loadValueForAggregateFunction:(id)function entityClass:(Class)class property:(id)property query:(id)query completionBlock:(id)block;
- (void)_postEvents;
- (void)_updateArtworkDataSourceMediaLibraryUniqueIdentifier;
- (void)addGlobalPlaylistWithID:(id)d andAddToCloudLibrary:(BOOL)library completion:(id)completion;
- (void)addItemWithIdentifier:(int64_t)identifier toPlaylistWithIdentifier:(int64_t)withIdentifier completionBlock:(id)block;
- (void)addItemsWithIdentifiers:(id)identifiers andEntryProperties:(id)properties toPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)addItemsWithIdentifiers:(id)identifiers toPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)addPlaylistStoreItemsForLookupItems:(id)items withCompletion:(id)completion;
- (void)addToLocalDeviceLibraryGlobalPlaylistWithID:(id)d completion:(id)completion;
- (void)addTracksToMyLibrary:(id)library;
- (void)clearLocationPropertiesOfItemWithIdentifier:(int64_t)identifier;
- (void)dealloc;
- (void)enumerateCollectionIdentifiersForQueryCriteria:(id)criteria ordered:(BOOL)ordered cancelBlock:(id)block usingBlock:(id)usingBlock;
- (void)enumerateEntityChangesAfterSyncAnchor:(id)anchor maximumRevisionType:(int64_t)type inUsersLibrary:(BOOL)library itemBlock:(id)block collectionBlock:(id)collectionBlock;
- (void)enumerateItemIdentifiersForQueryCriteria:(id)criteria ordered:(BOOL)ordered cancelBlock:(id)block usingBlock:(id)usingBlock;
- (void)importArtworkTokenForEntityPersistentID:(unint64_t)d entityType:(int64_t)type artworkToken:(id)token artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType;
- (void)loadProperties:(id)properties ofCollectionWithIdentifier:(int64_t)identifier groupingType:(int64_t)type completionBlock:(id)block;
- (void)loadProperties:(id)properties ofItemWithIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)loadQueryCriteria:(id)criteria countOfCollectionsWithCompletionBlock:(id)block;
- (void)loadQueryCriteria:(id)criteria countOfItemsWithCompletionBlock:(id)block;
- (void)loadQueryCriteria:(id)criteria hasCollectionsWithCompletionBlock:(id)block;
- (void)loadQueryCriteria:(id)criteria hasItemsWithCompletionBlock:(id)block;
- (void)loadValueForAggregateFunction:(id)function onCollectionsForProperty:(id)property queryCriteria:(id)criteria completionBlock:(id)block;
- (void)loadValueForAggregateFunction:(id)function onItemsForProperty:(id)property queryCriteria:(id)criteria completionBlock:(id)block;
- (void)moveItemFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex inPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)performBackgroundTaskWithBlock:(id)block;
- (void)performReadTransactionWithBlock:(id)block;
- (void)performStoreAlbumArtistLibraryImport:(id)import withCompletion:(id)completion;
- (void)performStoreItemLibraryImport:(id)import withCompletion:(id)completion;
- (void)populateLocationPropertiesOfItemWithIdentifier:(int64_t)identifier withPath:(id)path assetProtectionType:(int64_t)type;
- (void)populateLocationPropertiesOfItemWithIdentifier:(int64_t)identifier withPath:(id)path assetProtectionType:(int64_t)type completionBlock:(id)block;
- (void)removeAllItemsInPlaylistWithIdentifier:(int64_t)identifier;
- (void)removeArtworkForEntityPersistentID:(unint64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType;
- (void)removeFirstItemFromPlaylistWithIdentifier:(int64_t)identifier;
- (void)removeItemsAtIndexes:(id)indexes inPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)sdk_addItemWithOpaqueID:(id)d withCompletion:(id)completion;
- (void)sdk_addItemWithOpaqueIdentifier:(id)identifier toPlaylistWithIdentifier:(int64_t)withIdentifier completionBlock:(id)block;
- (void)sdk_addItemWithSagaIdentifier:(int64_t)identifier toPlaylistWithIdentifier:(int64_t)withIdentifier completionBlock:(id)block;
- (void)setItemsWithIdentifiers:(id)identifiers andEntryProperties:(id)properties forPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)setLibrary:(id)library;
- (void)setLibraryContainerFilterPredicatesWithCloudFilteringType:(int64_t)type additionalFilterPredicates:(id)predicates;
- (void)setLibraryEntityFilterPredicatesWithCloudFilteringType:(int64_t)type additionalFilterPredicates:(id)predicates;
- (void)setLibraryPublicContainerFilterPredicatesWithCloudFilteringType:(int64_t)type additionalFilterPredicates:(id)predicates;
- (void)setLibraryPublicEntityFilterPredicatesWithCloudFilteringType:(int64_t)type additionalFilterPredicates:(id)predicates;
- (void)setReactionText:(id)text onEntryAtPosition:(unint64_t)position inPlaylistWithIdentifier:(int64_t)identifier completion:(id)completion;
- (void)setUserIdentity:(id)identity;
- (void)setValue:(id)value forProperty:(id)property ofCollectionWithIdentifier:(int64_t)identifier groupingType:(int64_t)type completionBlock:(id)block;
- (void)setValue:(id)value forProperty:(id)property ofItemWithIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)setValue:(id)value forProperty:(id)property ofPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)setValues:(id)values forProperties:(id)properties forItemPersistentIDs:(id)ds;
- (void)setValuesForProperties:(id)properties trackList:(id)list andEntryProperties:(id)entryProperties ofPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block;
@end

@implementation MPMediaLibraryDataProviderML3

- (void)_updateArtworkDataSourceMediaLibraryUniqueIdentifier
{
  artworkDataSource = [(MPMediaLibraryDataProviderML3 *)self artworkDataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    artworkDataSource2 = [(MPMediaLibraryDataProviderML3 *)self artworkDataSource];
    v4 = [objc_opt_class() uniqueIdentifierForLibrary:self->_library];
    [artworkDataSource2 setMediaLibraryUniqueIdentifier:v4];
  }
}

- (NSString)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    libraryUID = [(ML3MusicLibrary *)self->_library libraryUID];
    v6 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = libraryUID;

    uniqueIdentifier = self->_uniqueIdentifier;
    v2 = vars8;
  }

  if (uniqueIdentifier)
  {
    v7 = uniqueIdentifier;
  }

  else
  {
    v7 = @"device";
  }

  return v7;
}

- (ICUserIdentity)userIdentity
{
  userIdentity = self->_userIdentity;
  if (userIdentity)
  {
    activeAccount = userIdentity;
  }

  else
  {
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  }

  return activeAccount;
}

- (MPMediaLibrary)mediaLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaLibrary);

  return WeakRetained;
}

- (id)_userSocialProfileID
{
  v29 = *MEMORY[0x1E69E9840];
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  userIdentity = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
  v25 = 0;
  v5 = [defaultIdentityStore DSIDForUserIdentity:userIdentity outError:&v25];
  v6 = v25;

  if (v5)
  {
    mEMORY[0x1E69E4460] = [MEMORY[0x1E69E4460] shared];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    allUserStates = [mEMORY[0x1E69E4460] allUserStates];
    v9 = [allUserStates countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(allUserStates);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          dsid = [v13 dsid];
          v15 = dsid;
          if (v5 == dsid)
          {

LABEL_17:
            music = [v13 music];
            userProfile = [music userProfile];
            socialProfileID = [userProfile socialProfileID];

            goto LABEL_18;
          }

          v16 = [v5 isEqual:dsid];

          if (v16)
          {
            goto LABEL_17;
          }
        }

        v10 = [allUserStates countByEnumeratingWithState:&v21 objects:v26 count:16];
        socialProfileID = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      socialProfileID = 0;
    }

LABEL_18:
  }

  else
  {
    mEMORY[0x1E69E4460] = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(mEMORY[0x1E69E4460], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v6;
      _os_log_impl(&dword_1A238D000, mEMORY[0x1E69E4460], OS_LOG_TYPE_ERROR, "Can't get user social profile ID because DSID = nil. err = %{public}@", buf, 0xCu);
    }

    socialProfileID = 0;
  }

  return socialProfileID;
}

- (BOOL)_removeEntitiesWithIdentifiers:(int64_t *)identifiers count:(unint64_t)count entityClass:(Class)class
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__MPMediaLibraryDataProviderML3__removeEntitiesWithIdentifiers_count_entityClass___block_invoke;
  v8[3] = &unk_1E7677758;
  v8[6] = class;
  v8[7] = count;
  v8[8] = identifiers;
  v8[4] = self;
  v8[5] = &v9;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v8];
  if (*(v10 + 24) == 1)
  {
    [MPMediaLibrary reloadLibraryDataProvider:self];
    v6 = *(v10 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6 & 1;
}

uint64_t __82__MPMediaLibraryDataProviderML3__removeEntitiesWithIdentifiers_count_entityClass___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == objc_opt_class())
  {
    v3 = [MEMORY[0x1E695DF70] array];
    if (*(a1 + 56))
    {
      v4 = 0;
      do
      {
        v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(a1 + 64) + 8 * v4)];
        [v3 addObject:v5];

        ++v4;
      }

      while (*(a1 + 56) > v4);
    }

    *(*(*(a1 + 40) + 8) + 24) = [MEMORY[0x1E69B3538] unlinkRedownloadableAssetsFromLibrary:*(*(a1 + 32) + 88) persistentIDs:v3];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 48) deleteFromLibrary:*(*(a1 + 32) + 88) deletionType:1 persistentIDs:*(a1 + 64) count:*(a1 + 56)];
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

- (void)_loadValueForAggregateFunction:(id)function entityClass:(Class)class property:(id)property query:(id)query completionBlock:(id)block
{
  propertyCopy = property;
  blockCopy = block;
  queryCopy = query;
  functionCopy = function;
  v15 = [(objc_class *)class propertyForMPMediaEntityProperty:propertyCopy];
  v16 = [queryCopy valueForAggregateFunction:functionCopy onEntitiesForProperty:v15];

  if (v16)
  {
    v17 = [(MPMediaLibraryDataProviderML3 *)self adjustedValueForMPProperty:propertyCopy ofEntity:0 withDefaultValue:v16];
  }

  else
  {
    v17 = 0;
  }

  blockCopy[2](blockCopy, v17);
}

- (void)_loadProperties:(id)properties ofEntityWithIdentifier:(int64_t)identifier ML3EntityClass:(Class)class completionBlock:(id)block
{
  v47 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  blockCopy = block;
  v12 = [propertiesCopy count];
  if (v12)
  {
    v13 = v12;
    identifierCopy = identifier;
    selfCopy = self;
    v40 = blockCopy;
    v39 = objc_autoreleasePoolPush();
    v38 = &v34;
    v14 = &v34 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v14, 8 * v13);
    v37 = 8 * v13;
    bzero(v14, 8 * v13);
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = propertiesCopy;
    v15 = propertiesCopy;
    v16 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v43;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = [(objc_class *)class propertyForMPMediaEntityProperty:v21];
          if (v22)
          {
            objc_storeStrong(&v14[8 * v18], v21);
            objc_storeStrong(&v14[8 * v18++], v22);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v18];
    if (v18)
    {
      v34 = &v34;
      v24 = (&v34 - ((8 * v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v24, 8 * v18);
      v25 = selfCopy;
      v26 = [(objc_class *)class newWithPersistentID:identifierCopy inLibrary:selfCopy->_library];
      [v26 getValues:v24 forProperties:v14 count:v18];
      v27 = v14;
      do
      {
        v29 = *v27;
        v27 += 8;
        v28 = v29;
        v30 = *v24++;
        v31 = [(MPMediaLibraryDataProviderML3 *)v25 adjustedValueForMPProperty:v28 ofEntity:v26 withDefaultValue:v30];
        [v23 setValue:v31 forKey:v28];

        --v18;
      }

      while (v18);
    }

    blockCopy = v40;
    (v40)[2](v40, v23);

    v32 = v37;
    v33 = v37;
    do
    {

      v33 -= 8;
    }

    while (v33);
    propertiesCopy = v41;
    do
    {

      v32 -= 8;
    }

    while (v32);
    objc_autoreleasePoolPop(v39);
  }

  else
  {
    blockCopy[2](blockCopy, MEMORY[0x1E695E0F8]);
  }
}

- (void)_libraryCloudLibraryAvailabilityDidChange:(id)change
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Received cloud library availability did change notification", v5, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPMediaLibraryCloudLibraryAvailabilityDidChangeNotification" object:0];
}

- (void)_invisiblePropertiesDidChange:(id)change
{
  refreshState = self->_refreshState;
  if (refreshState <= 1)
  {
    refreshState = 1;
  }

  self->_refreshState = refreshState;
  [(MPMediaLibraryDataProviderML3 *)self _coalesceEvents];
}

- (void)_dynamicPropertiesDidChange:(id)change
{
  refreshState = self->_refreshState;
  if (refreshState <= 2)
  {
    refreshState = 2;
  }

  self->_refreshState = refreshState;
  [(MPMediaLibraryDataProviderML3 *)self _coalesceEvents];
}

- (void)_libraryEntitiesAddedOrRemoved:(id)removed
{
  entitiesAddedOrRemovedNotificationQueue = self->_entitiesAddedOrRemovedNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MPMediaLibraryDataProviderML3__libraryEntitiesAddedOrRemoved___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(entitiesAddedOrRemovedNotificationQueue, block);
}

void __64__MPMediaLibraryDataProviderML3__libraryEntitiesAddedOrRemoved___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Postponing MPMediaLibraryEntitiesAddedOrRemovedNotification timer due to continued notifications", buf, 2u);
    }

    v5 = *(*(a1 + 32) + 80);
    v6 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Created timer to coalesce MPMediaLibraryEntitiesAddedOrRemovedNotification", buf, 2u);
    }

    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 72));
    v8 = *(a1 + 32);
    v9 = *(v8 + 80);
    *(v8 + 80) = v7;

    v10 = *(*(a1 + 32) + 80);
    v11 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v12 = *(a1 + 32);
    v13 = *(v12 + 80);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__MPMediaLibraryDataProviderML3__libraryEntitiesAddedOrRemoved___block_invoke_326;
    handler[3] = &unk_1E7682518;
    handler[4] = v12;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_resume(*(*(a1 + 32) + 80));
  }
}

void __64__MPMediaLibraryDataProviderML3__libraryEntitiesAddedOrRemoved___block_invoke_326(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Posting MPMediaLibraryEntitiesAddedOrRemovedNotification", v5, 2u);
  }

  [MPMediaLibrary postEntitiesAddedOrRemovedNotificationForLibraryDataProvider:*(a1 + 32)];
  dispatch_source_cancel(*(*(a1 + 32) + 80));
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;
}

- (void)_libraryPathDidChange:(id)change
{
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = 0;

  [MPMediaLibrary libraryPathDidChangeForDataProvider:self];

  [(MPMediaLibraryDataProviderML3 *)self _updateArtworkDataSourceMediaLibraryUniqueIdentifier];
}

- (void)_libraryContentsDidChange:(id)change
{
  self->_refreshState = 3;
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69B2CF8]];

  if (v5 && ([v5 BOOLValue] & 1) == 0)
  {
    [(MPMediaLibraryDataProviderML3 *)self _postEvents];
  }

  else
  {
    [(MPMediaLibraryDataProviderML3 *)self _coalesceEvents];
  }
}

- (BOOL)_dataProviderSupportsEntityChangeTracking
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(MPMediaLibraryDataProviderML3 *)self supportsEntityChangeTrackingForMediaEntityType:0 collectionGroupingType:0 dataProviderClass:0];
}

- (void)_postEvents
{
  backgroundTaskQueue = self->_backgroundTaskQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MPMediaLibraryDataProviderML3__postEvents__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(backgroundTaskQueue, block);
}

void *__44__MPMediaLibraryDataProviderML3__postEvents__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  result = *(a1 + 32);
  v3 = result[6];
  switch(v3)
  {
    case 1:
      result[6] = 0;
      v6 = *(a1 + 32);

      return [MPMediaLibrary reloadInvisiblePropertiesForLibraryDataProvider:v6];
    case 2:
      if ([result _dataProviderSupportsEntityChangeTracking])
      {
        [*(a1 + 32) updateEntitesToCurrentRevision];
      }

      *(*(a1 + 32) + 48) = 0;
      v5 = *(a1 + 32);

      return [MPMediaLibrary reloadDynamicPropertiesForLibraryDataProvider:v5];
    case 3:
      if ([result _dataProviderSupportsEntityChangeTracking])
      {
        [*(a1 + 32) updateEntitesToCurrentRevision];
      }

      *(*(a1 + 32) + 48) = 0;
      v4 = *(a1 + 32);

      return [MPMediaLibrary reloadLibraryDataProvider:v4];
  }

  return result;
}

- (void)_coalesceEvents
{
  if (!self->_hasScheduledEventPosting)
  {
    [(MPMediaLibraryDataProviderML3 *)self performSelector:sel__postEvents withObject:0 afterDelay:0.75];
    self->_hasScheduledEventPosting = 1;
  }
}

- (id)adjustedValueForMPProperty:(id)property ofEntity:(id)entity withDefaultValue:(id)value
{
  propertyCopy = property;
  entityCopy = entity;
  valueCopy = value;
  if (adjustedValueForMPProperty_ofEntity_withDefaultValue__onceToken != -1)
  {
    dispatch_once(&adjustedValueForMPProperty_ofEntity_withDefaultValue__onceToken, &__block_literal_global_270);
  }

  v11 = NSMapGet(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, propertyCopy);
  if (v11)
  {
    v12 = [self v11];
  }

  else
  {
    v12 = valueCopy;
  }

  v13 = v12;

  return v13;
}

void __86__MPMediaLibraryDataProviderML3_adjustedValueForMPProperty_ofEntity_withDefaultValue___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:258 capacity:31];
  v1 = adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap;
  adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap = v0;

  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"assetURL", sel__adjustedItemPropertyAssetURLOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"bookmarkTime", sel__adjustedItemTimeOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"chapterArtworkTimes", sel__adjustedItemPropertyChapterArtworkTimesOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"chapters", sel__adjustedItemPropertyChaptersOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"contentRating", sel__adjustedItemPropertyContentRatingOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"dateAccessed", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"dateAdded", sel__adjustedItemNonnullDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"episodeNumber", sel__adjustedItemPropertyEpisodeNumberOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"eqPreset", sel__adjustedItemPropertyEQPresetOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"filePath", sel__adjustedItemPropertyFilePathOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"lastPlayedDate", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"lastSkippedDate", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"mediaType", sel__adjustedPropertyMediaTypeOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"movieInfo", sel__adjustedItemPropertyMovieInfoOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"playbackDuration", sel__adjustedItemTimeOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"rating", sel__adjustedItemPropertyRatingOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"releaseDate", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"seasonName", sel__adjustedItemPropertySeasonNameOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"seasonNumber", sel__adjustedItemPropertySeasonNumberOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"startTime", sel__adjustedItemTimeOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"stopTime", sel__adjustedItemTimeOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"storeDatePurchased", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"verifiedIntegrity", sel__adjustedItemPropertyVerifiedIntegrityOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"volumeAdjustment", sel__adjustedItemPropertyVolumeAdjustmentOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"volumeNormalization", sel__adjustedItemPropertyVolumeNormalizationOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"dateCreated", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"dateModified", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"datePlayed", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"datePlayedLocal", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"seedItems", sel__adjustedPlaylistPropertySeedItemsOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"dateDownloaded", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"booklets", sel__adjustedItemPropertyBookletsOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"albumDatePlayedLocal", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"likedStateChangedDate", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"albumArtistDateFavorited", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"likedStateChangedDate", sel__adjustedItemDateOfEntity_withDefaultValue_);
  NSMapInsert(adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap, @"artistLikedStateChangedDate", sel__adjustedItemDateOfEntity_withDefaultValue_);
  v2 = adjustedValueForMPProperty_ofEntity_withDefaultValue____adjustmentMap;

  NSMapInsert(v2, @"albumArtistDateFavorited", sel__adjustedItemDateOfEntity_withDefaultValue_);
}

- (id)_adjustedItemPropertyAssetURLOfEntity:(id)entity withDefaultValue:(id)value
{
  entityCopy = entity;
  pathExtension = [value pathExtension];
  v7 = [entityCopy valueForProperty:*MEMORY[0x1E69B3338]];
  integerValue = [v7 integerValue];

  if (integerValue || ([entityCopy valueForProperty:*MEMORY[0x1E69B3120]], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, !v11))
  {
    v9 = 0;
  }

  else
  {
    persistentID = [entityCopy persistentID];
    v9 = [MEMORY[0x1E695DFF8] msv_urlForMediaAssetWithPersistentID:persistentID pathExtension:pathExtension];
  }

  return v9;
}

- (id)_adjustedItemPropertyEQPresetOfEntity:(id)entity withDefaultValue:(id)value
{
  integerValue = [value integerValue];
  if (integerValue <= 99)
  {
    v5 = 0;
  }

  else
  {
    v5 = integerValue - 99;
  }

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithInteger:v5];
}

- (id)_adjustedItemPropertyContentRatingOfEntity:(id)entity withDefaultValue:(id)value
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [valueCopy componentsSeparatedByString:@"|"];
    v6 = [v5 count];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 objectAtIndex:0];
      if (v7 == 1)
      {
        v9 = &stru_1F149ECA8;
        v10 = &stru_1F149ECA8;
        v11 = &stru_1F149ECA8;
      }

      else
      {
        v11 = [v5 objectAtIndex:1];
        if (v7 < 3)
        {
          v9 = &stru_1F149ECA8;
          v10 = &stru_1F149ECA8;
        }

        else
        {
          v10 = [v5 objectAtIndex:2];
          if (v7 == 3)
          {
            v9 = &stru_1F149ECA8;
          }

          else
          {
            v9 = [v5 objectAtIndex:3];
          }
        }
      }
    }

    else
    {
      v9 = &stru_1F149ECA8;
      v10 = &stru_1F149ECA8;
      v11 = &stru_1F149ECA8;
      v8 = &stru_1F149ECA8;
    }

    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v8, @"ratingProvider", v11, @"localizedRating", v10, @"ratingLevel", v9, @"localizedReason", 0}];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = valueCopy;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Unexpected content rating format: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (id)_adjustedItemPropertyChaptersOfEntity:(id)entity withDefaultValue:(id)value
{
  entityCopy = entity;
  selfCopy = self;
  chapterTOC = [entityCopy chapterTOC];
  countOfChapters = [chapterTOC countOfChapters];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:countOfChapters];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MPMediaChaptersFromML3Entity_block_invoke;
  aBlock[3] = &unk_1E7677780;
  v10 = chapterTOC;
  v29 = v10;
  v30 = selfCopy;
  v31 = entityCopy;
  v11 = v9;
  v32 = v11;
  v12 = entityCopy;
  v13 = selfCopy;
  v14 = _Block_copy(aBlock);
  (*(v14 + 2))(v14, 0, 5, 0);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __MPMediaChaptersFromML3Entity_block_invoke_2;
  v26[3] = &unk_1E76777A8;
  v15 = v10;
  v27 = v15;
  (*(v14 + 2))(v14, 1, 1, v26);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MPMediaChaptersFromML3Entity_block_invoke_3;
  v24[3] = &unk_1E76777A8;
  v16 = v15;
  v25 = v16;
  (*(v14 + 2))(v14, 3, 2, v24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __MPMediaChaptersFromML3Entity_block_invoke_4;
  v22[3] = &unk_1E76777A8;
  v23 = v16;
  v17 = *(v14 + 2);
  v18 = v16;
  v17(v14, 4, 3, v22);
  (*(v14 + 2))(v14, 2, 4, &__block_literal_global_700);
  [v11 sortUsingSelector:sel__sortByChapterIndex_];
  v19 = v23;
  v20 = v11;

  return v20;
}

- (id)_adjustedItemPropertySeasonNameOfEntity:(id)entity withDefaultValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy integerValue] < 1)
  {
    valueCopy = &stru_1F149ECA8;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v7 = [v6 localizedStringForKey:@"SEASON_DISPLAY_FORMAT_%@" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    valueCopy = [v5 localizedStringWithFormat:v7, valueCopy];
  }

  return valueCopy;
}

- (id)_adjustedItemPropertySeasonNumberOfEntity:(id)entity withDefaultValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy integerValue] < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = valueCopy;
  }

  return v5;
}

- (id)_adjustedItemPropertyChapterArtworkTimesOfEntity:(id)entity withDefaultValue:(id)value
{
  chapterTOC = [entity chapterTOC];
  v5 = [chapterTOC countOfGroupsForProperty:4];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [chapterTOC chapterIndexForGroupIndex:v7 groupingProperty:4];
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(chapterTOC, "timeLocationInMSOfChapterAtIndex:", v8) / 1000.0}];
      [v6 addObject:v9];

      v7 = (v7 + 1);
    }

    while (v5 != v7);
  }

  v10 = v6;

  return v6;
}

- (id)_adjustedItemPropertyEpisodeNumberOfEntity:(id)entity withDefaultValue:(id)value
{
  entityCopy = entity;
  v5 = [entityCopy valueForProperty:*MEMORY[0x1E69B33A8]];
  v6 = v5;
  if (!v5 || ![v5 integerValue])
  {
    v7 = [entityCopy valueForProperty:*MEMORY[0x1E69B2EF8]];

    v6 = v7;
  }

  return v6;
}

- (id)_adjustedItemPropertyMovieInfoOfEntity:(id)entity withDefaultValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy length])
  {
    v5 = MEMORY[0x1E696AE40];
    v6 = [valueCopy dataUsingEncoding:4];
    v7 = [v5 propertyListWithData:v6 options:0 format:0 error:0];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)_adjustedItemPropertyFilePathOfEntity:(id)entity withDefaultValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length] < 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{CPSharedResourcesDirectory(), @"Media", valueCopy, 0}];
    v7 = [v5 pathWithComponents:v6];
  }

  return v7;
}

- (id)_adjustedItemNonnullDateOfEntity:(id)entity withDefaultValue:(id)value
{
  v4 = MEMORY[0x1E695DF00];
  [value doubleValue];

  return [v4 dateWithTimeIntervalSinceReferenceDate:?];
}

- (id)_adjustedItemPropertyBookletsOfEntity:(id)entity withDefaultValue:(id)value
{
  v27[4] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  valueCopy = value;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9726;
  v25 = __Block_byref_object_dispose__9727;
  array = [MEMORY[0x1E695DF70] array];
  v8 = MEMORY[0x1E69B3488];
  persistentID = [entityCopy persistentID];
  v10 = [v8 predicateWithProperty:*MEMORY[0x1E69B2A38] equalToInt64:persistentID];
  v11 = *MEMORY[0x1E69B2A40];
  v27[0] = *MEMORY[0x1E69B2A50];
  v27[1] = v11;
  v12 = *MEMORY[0x1E69B2A30];
  v27[2] = *MEMORY[0x1E69B2A48];
  v27[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v14 = [MEMORY[0x1E69B3468] queryWithLibrary:self->_library predicate:v10];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__MPMediaLibraryDataProviderML3__adjustedItemPropertyBookletsOfEntity_withDefaultValue___block_invoke;
  v18[3] = &unk_1E7677730;
  v15 = entityCopy;
  v19 = v15;
  v20 = &v21;
  [v14 enumeratePersistentIDsAndProperties:v13 usingBlock:v18];

  v16 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v16;
}

void __88__MPMediaLibraryDataProviderML3__adjustedItemPropertyBookletsOfEntity_withDefaultValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MPMediaBooklet);
  -[MPMediaBooklet setItemPersistentID:](v5, "setItemPersistentID:", [*(a1 + 32) persistentID]);
  -[MPMediaBooklet setStoreItemID:](v5, "setStoreItemID:", [*a3 longLongValue]);
  [(MPMediaBooklet *)v5 setName:*(a3 + 8)];
  [(MPMediaBooklet *)v5 setRedownloadParams:*(a3 + 16)];
  -[MPMediaBooklet setFileSize:](v5, "setFileSize:", [*(a3 + 24) longLongValue]);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

- (id)_adjustedItemDateOfEntity:(id)entity withDefaultValue:(id)value
{
  valueCopy = value;
  if ([valueCopy longLongValue])
  {
    v5 = MEMORY[0x1E695DF00];
    [valueCopy doubleValue];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_adjustedItemPropertyRatingOfEntity:(id)entity withDefaultValue:(id)value
{
  v4 = MEMORY[0x1E696AD98];
  [value floatValue];
  v6 = v5 / 20.0;

  return [v4 numberWithDouble:v6];
}

- (id)_adjustedItemPropertyVolumeAdjustmentOfEntity:(id)entity withDefaultValue:(id)value
{
  v4 = MEMORY[0x1E696AD98];
  *&v5 = ((([value integerValue] + 1000) / 2000.0) * 2.0) + 0.0;
  if (*&v5 < 0.0)
  {
    *&v5 = 0.0;
  }

  if (*&v5 > 2.0)
  {
    *&v5 = 2.0;
  }

  return [v4 numberWithFloat:v5];
}

- (id)_adjustedItemPropertyVolumeNormalizationOfEntity:(id)entity withDefaultValue:(id)value
{
  v4 = MEMORY[0x1E696AD98];
  integerValue = [value integerValue];
  v6 = 1.0;
  if (integerValue && integerValue != 0xFFFF)
  {
    v7 = sqrt(1000.0 / integerValue);
    v6 = v7;
  }

  if (v6 < 0.251188643)
  {
    v6 = 0.251188636;
  }

  if (v6 > 3.98107171)
  {
    v6 = 3.98107171;
  }

  v8 = floor(log10(v6) * 20.0 + 0.5);
  *&v8 = v8;

  return [v4 numberWithFloat:v8];
}

- (id)_adjustedItemTimeOfEntity:(id)entity withDefaultValue:(id)value
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [value unsignedIntValue] / 1000.0;

  return [v4 numberWithDouble:v5];
}

- (id)_adjustedPropertyMediaTypeOfEntity:(id)entity withDefaultValue:(id)value
{
  v4 = MEMORY[0x1E696AD98];
  integerValue = [value integerValue];
  v6 = 255;
  if (integerValue != 0xFF)
  {
    v6 = 0;
  }

  if ((~integerValue & 0xFF00) == 0)
  {
    v6 |= 0xFF00uLL;
  }

  v7 = vandq_s8(vshlq_u32(vdupq_n_s32(integerValue), xmmword_1A273DD80), xmmword_1A273DD90);
  v8 = vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL));

  return [v4 numberWithUnsignedInteger:v6 | v8.i32[0] | integerValue & 0x3210 | v8.i32[1] | (4 * integerValue) & 0x400 | (4 * ((integerValue >> 1) & 1)) | (2 * integerValue) & 0x800];
}

- (id)_adjustedPlaylistPropertySeedItemsOfEntity:(id)entity withDefaultValue:(id)value
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (value)
  {
    v8[0] = value;
    v4 = MEMORY[0x1E695DEC8];
    valueCopy = value;
    v6 = [v4 arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)setUserIdentity:(id)identity
{
  identityCopy = identity;
  userIdentity = self->_userIdentity;
  v10 = identityCopy;
  if (userIdentity != identityCopy)
  {
    defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v7 = [(ICUserIdentity *)userIdentity isEqualToIdentity:v10 inStore:defaultIdentityStore];

    if ((v7 & 1) == 0)
    {
      v8 = [(ICUserIdentity *)v10 copy];
      v9 = self->_userIdentity;
      self->_userIdentity = v8;
    }
  }
}

- (void)performBackgroundTaskWithBlock:(id)block
{
  blockCopy = block;
  if (performBackgroundTaskWithBlock____once != -1)
  {
    dispatch_once(&performBackgroundTaskWithBlock____once, &__block_literal_global_222);
  }

  if (performBackgroundTaskWithBlock____appRunsContinously == 1)
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    backgroundTaskQueue = self->_backgroundTaskQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__MPMediaLibraryDataProviderML3_performBackgroundTaskWithBlock___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_sync(backgroundTaskQueue, block);
    blockCopy[2](blockCopy);
    v6 = dispatch_time(0, 1000000000);
    v7 = self->_backgroundTaskQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__MPMediaLibraryDataProviderML3_performBackgroundTaskWithBlock___block_invoke_234;
    v8[3] = &unk_1E7682518;
    v8[4] = self;
    dispatch_after(v6, v7, v8);
  }
}

void __64__MPMediaLibraryDataProviderML3_performBackgroundTaskWithBlock___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v4 = MPSharedBackgroundTaskProvider();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__MPMediaLibraryDataProviderML3_performBackgroundTaskWithBlock___block_invoke_3;
    v7[3] = &unk_1E7682518;
    v7[4] = *(a1 + 32);
    *(*(a1 + 32) + 24) = [v4 beginTaskWithExpirationHandler:v7];

    v5 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 24);
      *buf = 134218498;
      v9 = v6;
      v10 = 2082;
      v11 = "/Library/Caches/com.apple.xbs/Sources/MediaPlayer/MediaPlayer/Core/MusicLibrary Support/_ios_tvos_watchos/MPMediaLibraryDataProviderML3.m";
      v12 = 1024;
      v13 = 2864;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "BackgroundTask: Took assertion (%lli) at %{public}s:%d", buf, 0x1Cu);
    }

    v1 = *(a1 + 32);
    v2 = *(v1 + 32);
  }

  *(v1 + 32) = v2 + 1;
}

void __64__MPMediaLibraryDataProviderML3_performBackgroundTaskWithBlock___block_invoke_234(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    *(v1 + 32) = v2 - 1;
    v4 = *(a1 + 32);
    if (!*(v4 + 32))
    {
      v5 = *MEMORY[0x1E69B1358];
      if (*(v4 + 24) != *MEMORY[0x1E69B1358])
      {
        v6 = MPSharedBackgroundTaskProvider();
        [v6 endTask:*(*(a1 + 32) + 24)];

        v7 = os_log_create("com.apple.amp.mediaplayer", "Playback");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(a1 + 32) + 24);
          v9 = 134218498;
          v10 = v8;
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/MediaPlayer/MediaPlayer/Core/MusicLibrary Support/_ios_tvos_watchos/MPMediaLibraryDataProviderML3.m";
          v13 = 1024;
          v14 = 2879;
          _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "BackgroundTask: End assertion (%lli) at %{public}s:%d", &v9, 0x1Cu);
        }

        *(*(a1 + 32) + 24) = v5;
      }
    }
  }
}

void __64__MPMediaLibraryDataProviderML3_performBackgroundTaskWithBlock___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MPSharedBackgroundTaskProvider();
  [v2 endTask:*(*(a1 + 32) + 24)];

  v3 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 24);
    v5 = 134218498;
    v6 = v4;
    v7 = 2082;
    v8 = "/Library/Caches/com.apple.xbs/Sources/MediaPlayer/MediaPlayer/Core/MusicLibrary Support/_ios_tvos_watchos/MPMediaLibraryDataProviderML3.m";
    v9 = 1024;
    v10 = 2860;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "BackgroundTask: End assertion (%lli) at %{public}s:%d", &v5, 0x1Cu);
  }

  *(*(a1 + 32) + 24) = *MEMORY[0x1E69B1358];
  *(*(a1 + 32) + 32) = 0;
}

void __64__MPMediaLibraryDataProviderML3_performBackgroundTaskWithBlock___block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    v1 = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v1 containsObject:@"continuous"];
    }

    else
    {
      v2 = 0;
    }

    performBackgroundTaskWithBlock____appRunsContinously = v2;
  }

  if ((performBackgroundTaskWithBlock____appRunsContinously & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v3 = [v4 processName];
    performBackgroundTaskWithBlock____appRunsContinously = [v3 isEqualToString:@"iapd"];
  }
}

- (id)ML3SystemFilterPredicatesWithGroupingType:(int64_t)type cloudTrackFilteringType:(int64_t)filteringType subscriptionFilteringOptions:(int64_t)options additionalFilterPredicates:(id)predicates
{
  v29 = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(MPMediaLibraryDataProviderML3 *)self systemFilterPredicatesWithGroupingType:type cloudTrackFilteringType:filteringType subscriptionFilteringOptions:options];
    if (![predicatesCopy count])
    {
      goto LABEL_8;
    }

    if (v11)
    {
      v12 = [v11 arrayByAddingObjectsFromArray:predicatesCopy];

      v11 = v12;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([predicatesCopy count])
  {
LABEL_6:
    v11 = predicatesCopy;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        if (type == 6)
        {
          [v19 ML3PredicateForContainer];
        }

        else
        {
          [v19 ML3PredicateForTrack];
        }
        v20 = ;
        if (v20)
        {
          [v13 addObject:v20];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  if ([v13 count])
  {
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

- (id)systemFilterPredicatesWithGroupingType:(int64_t)type cloudTrackFilteringType:(int64_t)filteringType subscriptionFilteringOptions:(int64_t)options
{
  optionsCopy = options;
  v9 = objc_opt_new();
  v44 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E118] forProperty:@"hasNonPurgeableAsset" comparisonType:109];
  v43 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E118] forProperty:@"isPlayable" comparisonType:109];
  if (filteringType <= 2 && +[MPMediaQuery isFilteringDisabled])
  {
    v10 = 0;
    sagaOnDiskDatabaseRevision = [(ML3MusicLibrary *)self->_library sagaOnDiskDatabaseRevision];
  }

  else
  {
    userIdentity = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
    v13 = [MPCloudController controllerWithUserIdentity:userIdentity];
    HIDWORD(v40) = [v13 canShowCloudMusic];

    userIdentity2 = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
    v15 = [MPCloudController controllerWithUserIdentity:userIdentity2];
    LODWORD(v40) = [v15 canShowCloudVideo];

    if (filteringType < 6)
    {
      v10 = 0;
    }

    else
    {
      userIdentity3 = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
      v17 = [MPCloudController controllerWithUserIdentity:userIdentity3];
      hasProperNetworkConditionsToPlayMedia = [v17 hasProperNetworkConditionsToPlayMedia];

      v10 = hasProperNetworkConditionsToPlayMedia ^ 1;
    }

    sagaOnDiskDatabaseRevision = [(ML3MusicLibrary *)self->_library sagaOnDiskDatabaseRevision];
  }

  if (sagaOnDiskDatabaseRevision < 1)
  {
    v21 = 0;
    v42 = 0;
    v19 = 0;
  }

  else
  {
    v19 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E118] forProperty:@"isMatchAudio" comparisonType:109];
    v20 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509778 forProperty:@"mediaType"];
    v42 = [MPMediaConditionalPredicate predicateWithConditionPredicate:v20 thenPredicate:v19 elsePredicate:0];

    v21 = 1;
  }

  v22 = +[MPMediaQuery isFilteringDisabled];
  if (type == 6)
  {
    if (((optionsCopy | v22) & 1) == 0)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        v23 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E118] forProperty:@"hasItems" comparisonType:109];
        [v9 addObject:v23];
      }

      v24 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E110] forProperty:@"isHidden" comparisonType:109];
      [v9 addObject:v24];
    }

    goto LABEL_26;
  }

  if (!v22)
  {
    v25 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E110] forProperty:@"isRental"];
    [v9 addObject:v25];

    v26 = v44;
    if (((filteringType != 2) & v41) != 0)
    {
      v26 = v43;
    }

    v27 = v26;
    [v9 addObject:v27];

    if ((v21 & (v27 != v44)) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (filteringType > 4)
  {
    if (filteringType > 6)
    {
      if (filteringType == 7)
      {
        if (!(v10 & 1 | ((v41 & 1) == 0)))
        {
          [v9 addObject:v43];
          if (!v21)
          {
            goto LABEL_26;
          }

LABEL_44:
          [v9 addObject:v19];
          goto LABEL_26;
        }
      }

      else
      {
        if (filteringType != 8)
        {
          goto LABEL_26;
        }

        if (!(v10 & 1 | ((v39 & 1) == 0)))
        {
          [v9 addObject:v43];
          goto LABEL_26;
        }
      }

LABEL_58:
      [v9 addObject:v44];
      goto LABEL_26;
    }

    if (filteringType == 5)
    {
      if (v39)
      {
        goto LABEL_26;
      }

      goto LABEL_58;
    }

    v31 = v44;
    if (!(v10 & 1 | (((v39 | v41) & 1) == 0)))
    {
      if (v41 & v39)
      {
        goto LABEL_39;
      }

      if (v41)
      {
        v32 = &unk_1F15097A8;
      }

      else
      {
        v32 = &unk_1F1509790;
      }

      v33 = [MPMediaPropertyPredicate predicateWithValue:v32 forProperty:@"mediaType"];
      v34 = [MPMediaConditionalPredicate predicateWithConditionPredicate:v33 thenPredicate:v44 elsePredicate:0];
      [v9 addObject:v34];

      v31 = v43;
    }

    [v9 addObject:v31];
LABEL_39:
    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (filteringType <= 2)
  {
    if (filteringType)
    {
      if (filteringType != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_58;
    }

    if (!v21)
    {
      goto LABEL_26;
    }

LABEL_25:
    [v9 addObject:v42];
    goto LABEL_26;
  }

  if (filteringType != 3)
  {
    if (v41)
    {
      if (!v21)
      {
        goto LABEL_26;
      }

      goto LABEL_44;
    }

    goto LABEL_58;
  }

  if ((v39 | v41))
  {
    if (v41)
    {
      if ((v39 & 1) == 0)
      {
        v35 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F15097A8 forProperty:@"mediaType"];
        v36 = [MPMediaConditionalPredicate predicateWithConditionPredicate:v35 thenPredicate:v44 elsePredicate:0];
        [v9 addObject:v36];
      }
    }

    else
    {
      v37 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509790 forProperty:@"mediaType"];
      v38 = [MPMediaConditionalPredicate predicateWithConditionPredicate:v37 thenPredicate:v44 elsePredicate:0];
      [v9 addObject:v38];
    }
  }

  else
  {
    [v9 addObject:v44];
  }

  if (v21)
  {
    goto LABEL_25;
  }

LABEL_26:
  if ([v9 count])
  {
    v28 = v9;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v28;
}

- (void)setLibraryPublicContainerFilterPredicatesWithCloudFilteringType:(int64_t)type additionalFilterPredicates:(id)predicates
{
  v5 = [(MPMediaLibraryDataProviderML3 *)self ML3SystemFilterPredicatesWithGroupingType:6 cloudTrackFilteringType:type subscriptionFilteringOptions:1 additionalFilterPredicates:predicates];
  [(ML3MusicLibrary *)self->_library setLibraryPublicContainerFilterPredicates:v5];
}

- (void)setLibraryPublicEntityFilterPredicatesWithCloudFilteringType:(int64_t)type additionalFilterPredicates:(id)predicates
{
  v5 = [(MPMediaLibraryDataProviderML3 *)self ML3SystemFilterPredicatesWithGroupingType:0 cloudTrackFilteringType:type subscriptionFilteringOptions:1 additionalFilterPredicates:predicates];
  [(ML3MusicLibrary *)self->_library setLibraryPublicEntityFilterPredicates:v5];
}

- (void)setLibraryContainerFilterPredicatesWithCloudFilteringType:(int64_t)type additionalFilterPredicates:(id)predicates
{
  v5 = [(MPMediaLibraryDataProviderML3 *)self ML3SystemFilterPredicatesWithGroupingType:6 cloudTrackFilteringType:type subscriptionFilteringOptions:0 additionalFilterPredicates:predicates];
  [(ML3MusicLibrary *)self->_library setLibraryContainerFilterPredicates:v5];
}

- (void)setLibraryEntityFilterPredicatesWithCloudFilteringType:(int64_t)type additionalFilterPredicates:(id)predicates
{
  v5 = [(MPMediaLibraryDataProviderML3 *)self ML3SystemFilterPredicatesWithGroupingType:0 cloudTrackFilteringType:type subscriptionFilteringOptions:0 additionalFilterPredicates:predicates];
  [(ML3MusicLibrary *)self->_library setLibraryEntityFilterPredicates:v5];
}

- (void)clearLocationPropertiesOfItemWithIdentifier:(int64_t)identifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3538];
  library = self->_library;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:identifier];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 clearLocationFromLibrary:library persistentIDs:v6 disableKeepLocal:0];
}

- (void)populateLocationPropertiesOfItemWithIdentifier:(int64_t)identifier withPath:(id)path assetProtectionType:(int64_t)type completionBlock:(id)block
{
  v9 = MEMORY[0x1E69B3538];
  library = self->_library;
  blockCopy = block;
  pathCopy = path;
  v13 = [v9 newWithPersistentID:identifier inLibrary:library];
  [v13 populateLocationPropertiesWithPath:pathCopy protectionType:type completionBlock:blockCopy];
}

- (void)populateLocationPropertiesOfItemWithIdentifier:(int64_t)identifier withPath:(id)path assetProtectionType:(int64_t)type
{
  v7 = MEMORY[0x1E69B3538];
  library = self->_library;
  pathCopy = path;
  v10 = [v7 newWithPersistentID:identifier inLibrary:library];
  [v10 populateLocationPropertiesWithPath:pathCopy protectionType:type];
}

- (id)itemResultSetForQueryCriteria:(id)criteria
{
  v3 = [criteria ML3ItemsQueryInLibrary:self->_library];
  v4 = [objc_alloc(MEMORY[0x1E69B3510]) initWithQuery:v3];

  return v4;
}

- (id)collectionResultSetForQueryCriteria:(id)criteria
{
  v3 = [criteria ML3CollectionsQueryInLibrary:self->_library];
  v4 = [objc_alloc(MEMORY[0x1E69B3510]) initWithQuery:v3];

  return v4;
}

- (void)enumerateEntityChangesAfterSyncAnchor:(id)anchor maximumRevisionType:(int64_t)type inUsersLibrary:(BOOL)library itemBlock:(id)block collectionBlock:(id)collectionBlock
{
  libraryCopy = library;
  v23[12] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  collectionBlockCopy = collectionBlock;
  longLongValue = [anchor longLongValue];
  v23[0] = [MEMORY[0x1E69B34A0] revisionTrackingCode];
  v23[1] = 6;
  v23[2] = [MEMORY[0x1E69B3438] revisionTrackingCode];
  v23[3] = 2;
  v23[4] = [MEMORY[0x1E69B3418] revisionTrackingCode];
  v23[5] = 1;
  v23[6] = [MEMORY[0x1E69B3490] revisionTrackingCode];
  v23[7] = 4;
  v23[8] = [MEMORY[0x1E69B34C8] revisionTrackingCode];
  v23[9] = 5;
  v23[10] = [MEMORY[0x1E69B3420] revisionTrackingCode];
  v23[11] = 3;
  library = self->_library;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __132__MPMediaLibraryDataProviderML3_enumerateEntityChangesAfterSyncAnchor_maximumRevisionType_inUsersLibrary_itemBlock_collectionBlock___block_invoke;
  v18[3] = &unk_1E7677708;
  v21 = 6;
  v22 = v23;
  v19 = blockCopy;
  v20 = collectionBlockCopy;
  v16 = collectionBlockCopy;
  v17 = blockCopy;
  [(ML3MusicLibrary *)library enumeratePersistentIDsAfterRevision:longLongValue revisionTrackingCode:0x7FFFFFFFFFFFFFFFLL maximumRevisionType:type forMediaTypes:0 inUsersLibrary:libraryCopy usingBlock:v18];
}

void __132__MPMediaLibraryDataProviderML3_enumerateEntityChangesAfterSyncAnchor_maximumRevisionType_inUsersLibrary_itemBlock_collectionBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", a3];
  if ([MEMORY[0x1E69B3538] revisionTrackingCode] == a6)
  {
    (*(a1[4] + 16))();
  }

  else
  {
    v11 = a1[6];
    if (v11)
    {
      v12 = 0;
      v13 = a1[7];
      while (1)
      {
        v14 = *v13;
        v13 += 2;
        if (v14 == a6)
        {
          break;
        }

        if (v11 == ++v12)
        {
          goto LABEL_9;
        }
      }

      (*(a1[5] + 16))();
    }
  }

LABEL_9:

  objc_autoreleasePoolPop(v9);
}

- (void)setReactionText:(id)text onEntryAtPosition:(unint64_t)position inPlaylistWithIdentifier:(int64_t)identifier completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  _userSocialProfileID = [(MPMediaLibraryDataProviderML3 *)self _userSocialProfileID];
  v13 = [objc_alloc(MEMORY[0x1E69B34A0]) initWithPersistentID:identifier inLibrary:self->_library];
  v16 = 0;
  v14 = [v13 setItemReactionText:textCopy onEntryAtPosition:position forUserIdentifier:_userSocialProfileID previousReactionText:&v16];

  v15 = v16;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14, v15);
  }
}

- (void)moveItemFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex inPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  blockCopy = block;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = [MEMORY[0x1E69B34A0] newWithPersistentID:identifier inLibrary:self->_library];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__MPMediaLibraryDataProviderML3_moveItemFromIndex_toIndex_inPlaylistWithIdentifier_completionBlock___block_invoke;
  v13[3] = &unk_1E76775A0;
  v12 = v11;
  v14 = v12;
  v15 = &v18;
  indexCopy = index;
  toIndexCopy = toIndex;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v13];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, *(v19 + 24));
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __100__MPMediaLibraryDataProviderML3_moveItemFromIndex_toIndex_inPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForProperty:*MEMORY[0x1E69B2B90]];
  if (([v2 BOOLValue] & 1) == 0)
  {
LABEL_5:

    goto LABEL_6;
  }

  v3 = *MEMORY[0x1E69B2C80];
  v4 = [*(a1 + 32) valueForProperty:*MEMORY[0x1E69B2C80]];
  v5 = [v4 intValue];

  if (v5 != 1)
  {
    v2 = [MEMORY[0x1E69B3538] containerQueryWithContainer:*(a1 + 32)];
    v6 = [v2 countOfEntities];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __100__MPMediaLibraryDataProviderML3_moveItemFromIndex_toIndex_inPlaylistWithIdentifier_completionBlock___block_invoke_2;
      v12[3] = &unk_1E76794D0;
      v13 = v7;
      v8 = v7;
      [v2 enumeratePersistentIDsUsingBlock:v12];
      [*(a1 + 32) setTracksWithPersistentIDs:v8 notify:0];
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:1];
      [v9 setValue:v10 forProperty:v3];
    }

    goto LABEL_5;
  }

LABEL_6:
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) moveTrackFromIndex:*(a1 + 48) toIndex:*(a1 + 56)];
  return *(*(*(a1 + 40) + 8) + 24);
}

void __100__MPMediaLibraryDataProviderML3_moveItemFromIndex_toIndex_inPlaylistWithIdentifier_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (void)removeFirstItemFromPlaylistWithIdentifier:(int64_t)identifier
{
  v4 = [MEMORY[0x1E69B34A0] newWithPersistentID:identifier inLibrary:self->_library];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__MPMediaLibraryDataProviderML3_removeFirstItemFromPlaylistWithIdentifier___block_invoke;
  v6[3] = &unk_1E7679798;
  v7 = v4;
  v5 = v4;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v6];
}

- (void)removeAllItemsInPlaylistWithIdentifier:(int64_t)identifier
{
  v4 = [MEMORY[0x1E69B34A0] newWithPersistentID:identifier inLibrary:self->_library];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__MPMediaLibraryDataProviderML3_removeAllItemsInPlaylistWithIdentifier___block_invoke;
  v6[3] = &unk_1E7679798;
  v7 = v4;
  v5 = v4;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v6];
}

- (void)sdk_addItemWithSagaIdentifier:(int64_t)identifier toPlaylistWithIdentifier:(int64_t)withIdentifier completionBlock:(id)block
{
  blockCopy = block;
  userIdentity = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
  v10 = [MPCloudController controllerWithUserIdentity:userIdentity];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__MPMediaLibraryDataProviderML3_sdk_addItemWithSagaIdentifier_toPlaylistWithIdentifier_completionBlock___block_invoke;
  v12[3] = &unk_1E76816D0;
  v13 = blockCopy;
  v11 = blockCopy;
  [v10 sdk_addItemWithSagaID:identifier toPlaylistWithPersistentID:withIdentifier completionHandler:v12];
}

uint64_t __104__MPMediaLibraryDataProviderML3_sdk_addItemWithSagaIdentifier_toPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeItemsAtIndexes:(id)indexes inPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  indexesCopy = indexes;
  blockCopy = block;
  v10 = [MEMORY[0x1E69B34A0] newWithPersistentID:identifier inLibrary:self->_library];
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__MPMediaLibraryDataProviderML3_removeItemsAtIndexes_inPlaylistWithIdentifier_completionBlock___block_invoke;
  v15[3] = &unk_1E7681770;
  v15[4] = self;
  v16 = v10;
  v17 = indexesCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = indexesCopy;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __95__MPMediaLibraryDataProviderML3_removeItemsAtIndexes_inPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __95__MPMediaLibraryDataProviderML3_removeItemsAtIndexes_inPlaylistWithIdentifier_completionBlock___block_invoke_2;
  v4[3] = &unk_1E7677690;
  v7 = &v8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 performTransactionWithBlock:v4];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, *(v9 + 24));
  }

  _Block_object_dispose(&v8, 8);
}

- (void)sdk_addItemWithOpaqueIdentifier:(id)identifier toPlaylistWithIdentifier:(int64_t)withIdentifier completionBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  userIdentity = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
  v11 = [MPCloudController controllerWithUserIdentity:userIdentity];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__MPMediaLibraryDataProviderML3_sdk_addItemWithOpaqueIdentifier_toPlaylistWithIdentifier_completionBlock___block_invoke;
  v13[3] = &unk_1E76776E0;
  v13[4] = self;
  v14 = blockCopy;
  withIdentifierCopy = withIdentifier;
  v12 = blockCopy;
  [v11 sdk_addStoreItemWithOpaqueID:identifierCopy toPlaylistWithPersistentID:withIdentifier completionHandler:v13];
}

void __106__MPMediaLibraryDataProviderML3_sdk_addItemWithOpaqueIdentifier_toPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a3);
    v19 = v5;
    v7 = [v5 allValues];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v14 = [*(a1 + 32) mediaLibrary];
          v15 = [v14 playlistWithPersistentID:*(a1 + 48)];

          v16 = [v15 itemsQuery];
          v17 = [MPMediaPropertyPredicate predicateWithValue:v13 forProperty:@"storeSagaID"];
          [v16 addFilterPredicate:v17];
          v18 = [v16 items];
          [v8 addObjectsFromArray:v18];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    MPFetchArtworkForAddedMediaItems(v8);
    v5 = v19;
  }
}

- (void)addItemsWithIdentifiers:(id)identifiers andEntryProperties:(id)properties toPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  blockCopy = block;
  v13 = [MEMORY[0x1E69B34A0] newWithPersistentID:identifier inLibrary:self->_library];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __117__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_andEntryProperties_toPlaylistWithIdentifier_completionBlock___block_invoke;
  v38[3] = &unk_1E7677618;
  v15 = v14;
  v39 = v15;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v38];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v16 = [v13 valueForProperty:*MEMORY[0x1E69B2BB0]];
  LODWORD(block) = [v16 BOOLValue];

  if (block)
  {
    v28 = identifiersCopy;
    mEMORY[0x1E69E4460] = [MEMORY[0x1E69E4460] shared];
    activeUserState = [mEMORY[0x1E69E4460] activeUserState];
    music = [activeUserState music];
    userProfile = [music userProfile];
    socialProfileID = [userProfile socialProfileID];

    identifiersCopy = v28;
  }

  else
  {
    socialProfileID = 0;
  }

  v22 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_andEntryProperties_toPlaylistWithIdentifier_completionBlock___block_invoke_3;
  block[3] = &unk_1E7677668;
  v34 = blockCopy;
  v35 = v36;
  block[4] = self;
  v30 = v13;
  v31 = identifiersCopy;
  v32 = v15;
  v33 = socialProfileID;
  v23 = blockCopy;
  v24 = socialProfileID;
  v25 = v15;
  v26 = identifiersCopy;
  v27 = v13;
  dispatch_async(v22, block);

  _Block_object_dispose(v36, 8);
}

void __117__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_andEntryProperties_toPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __117__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_andEntryProperties_toPlaylistWithIdentifier_completionBlock___block_invoke_2;
  v10[3] = &unk_1E767CF08;
  v11 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __117__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_andEntryProperties_toPlaylistWithIdentifier_completionBlock___block_invoke_3(uint64_t a1)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __117__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_andEntryProperties_toPlaylistWithIdentifier_completionBlock___block_invoke_4;
  v10[3] = &unk_1E7677640;
  v13 = *(a1 + 80);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  [v2 performTransactionWithBlock:v10];
  v9 = *(a1 + 72);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 80) + 8) + 24));
  }
}

void __117__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_andEntryProperties_toPlaylistWithIdentifier_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E69B34A8];
  v6 = a3;
  v7 = [v5 propertyForMPMediaEntityProperty:a2];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

- (void)addItemsWithIdentifiers:(id)identifiers toPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  v10 = [MEMORY[0x1E69B34A0] newWithPersistentID:identifier inLibrary:self->_library];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_toPlaylistWithIdentifier_completionBlock___block_invoke;
  block[3] = &unk_1E76776B8;
  v18 = blockCopy;
  v19 = v20;
  block[4] = self;
  v16 = v10;
  v17 = identifiersCopy;
  v12 = blockCopy;
  v13 = identifiersCopy;
  v14 = v10;
  dispatch_async(v11, block);

  _Block_object_dispose(v20, 8);
}

void __98__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_toPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__MPMediaLibraryDataProviderML3_addItemsWithIdentifiers_toPlaylistWithIdentifier_completionBlock___block_invoke_2;
  v4[3] = &unk_1E7677690;
  v7 = *(a1 + 64);
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 performTransactionWithBlock:v4];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, *(*(*(a1 + 64) + 8) + 24));
  }
}

- (void)addItemWithIdentifier:(int64_t)identifier toPlaylistWithIdentifier:(int64_t)withIdentifier completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x1E69B34A0] newWithPersistentID:withIdentifier inLibrary:self->_library];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__MPMediaLibraryDataProviderML3_addItemWithIdentifier_toPlaylistWithIdentifier_completionBlock___block_invoke;
  block[3] = &unk_1E767BB58;
  block[4] = self;
  v14 = v9;
  v16 = v18;
  identifierCopy = identifier;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = v9;
  dispatch_async(v10, block);

  _Block_object_dispose(v18, 8);
}

void __96__MPMediaLibraryDataProviderML3_addItemWithIdentifier_toPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__MPMediaLibraryDataProviderML3_addItemWithIdentifier_toPlaylistWithIdentifier_completionBlock___block_invoke_2;
  v6[3] = &unk_1E7677550;
  v8 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v7 = v3;
  v9 = v4;
  [v2 performTransactionWithBlock:v6];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 56) + 8) + 24));
  }
}

uint64_t __96__MPMediaLibraryDataProviderML3_addItemWithIdentifier_toPlaylistWithIdentifier_completionBlock___block_invoke_2(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  *(*(a1[5] + 8) + 24) = [v2 appendTracksWithPersistentIDs:v4 notify:1];

  return *(*(a1[5] + 8) + 24);
}

- (void)setItemsWithIdentifiers:(id)identifiers andEntryProperties:(id)properties forPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  blockCopy = block;
  v13 = [MEMORY[0x1E69B34A0] newWithPersistentID:identifier inLibrary:self->_library];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __118__MPMediaLibraryDataProviderML3_setItemsWithIdentifiers_andEntryProperties_forPlaylistWithIdentifier_completionBlock___block_invoke;
  v38[3] = &unk_1E7677618;
  v15 = v14;
  v39 = v15;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v38];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v16 = [v13 valueForProperty:*MEMORY[0x1E69B2BB0]];
  LODWORD(block) = [v16 BOOLValue];

  if (block)
  {
    v28 = identifiersCopy;
    mEMORY[0x1E69E4460] = [MEMORY[0x1E69E4460] shared];
    activeUserState = [mEMORY[0x1E69E4460] activeUserState];
    music = [activeUserState music];
    userProfile = [music userProfile];
    socialProfileID = [userProfile socialProfileID];

    identifiersCopy = v28;
  }

  else
  {
    socialProfileID = 0;
  }

  v22 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118__MPMediaLibraryDataProviderML3_setItemsWithIdentifiers_andEntryProperties_forPlaylistWithIdentifier_completionBlock___block_invoke_3;
  block[3] = &unk_1E7677668;
  v34 = blockCopy;
  v35 = v36;
  block[4] = self;
  v30 = v13;
  v31 = identifiersCopy;
  v32 = v15;
  v33 = socialProfileID;
  v23 = blockCopy;
  v24 = socialProfileID;
  v25 = v15;
  v26 = identifiersCopy;
  v27 = v13;
  dispatch_async(v22, block);

  _Block_object_dispose(v36, 8);
}

void __118__MPMediaLibraryDataProviderML3_setItemsWithIdentifiers_andEntryProperties_forPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __118__MPMediaLibraryDataProviderML3_setItemsWithIdentifiers_andEntryProperties_forPlaylistWithIdentifier_completionBlock___block_invoke_2;
  v10[3] = &unk_1E767CF08;
  v11 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __118__MPMediaLibraryDataProviderML3_setItemsWithIdentifiers_andEntryProperties_forPlaylistWithIdentifier_completionBlock___block_invoke_3(uint64_t a1)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __118__MPMediaLibraryDataProviderML3_setItemsWithIdentifiers_andEntryProperties_forPlaylistWithIdentifier_completionBlock___block_invoke_4;
  v10[3] = &unk_1E7677640;
  v13 = *(a1 + 80);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  [v2 performTransactionWithBlock:v10];
  v9 = *(a1 + 72);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 80) + 8) + 24));
  }
}

void __118__MPMediaLibraryDataProviderML3_setItemsWithIdentifiers_andEntryProperties_forPlaylistWithIdentifier_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E69B34A8];
  v6 = a3;
  v7 = [v5 propertyForMPMediaEntityProperty:a2];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

- (void)_invalidatePersistentKeysForIdentifiers:(int64_t *)identifiers count:(unint64_t)count
{
  v53[3] = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (count)
  {
    countCopy = count;
    v31 = *MEMORY[0x1E69B2F48];
    v33 = *MEMORY[0x1E69B3098];
    v34 = *MEMORY[0x1E69B3138];
    *&v4 = 138543618;
    v27 = v4;
    do
    {
      v8 = *identifiers++;
      v7 = v8;
      v9 = [objc_alloc(MEMORY[0x1E69B3538]) initWithPersistentID:v8 inLibrary:self->_library];
      v53[0] = v34;
      v53[1] = v31;
      v53[2] = v33;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
      v11 = [v9 getValuesForProperties:v10];
      v12 = [v11 objectForKeyedSubscript:v34];
      integerValue = [v12 integerValue];

      v14 = [v11 objectForKeyedSubscript:v33];
      bOOLValue = [v14 BOOLValue];

      if (integerValue == 4)
      {
        v16 = bOOLValue;
      }

      else
      {
        v16 = 0;
      }

      if (v16 == 1)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v18 = [v11 objectForKeyedSubscript:v31];
        if ([v18 length])
        {
          v19 = [(ML3MusicLibrary *)self->_library libraryContainerPathByAppendingPathComponent:v18];
        }

        else
        {
          v19 = 0;
        }

        v42 = 0;
        v30 = v19;
        if ([defaultManager fileExistsAtPath:v27 isDirectory:?] && v42 == 1)
        {
          v20 = os_log_create("com.apple.amp.mediaplayer", "Library");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            selfCopy2 = self;
            v49 = 2048;
            v50 = v7;
            v51 = 2114;
            v52 = v30;
            _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Looking for offline keys for track with persistentID %lld, in path '%{public}@", buf, 0x20u);
          }

          pendingInvalidationKeyStorePath = [MEMORY[0x1E69E43F8] pendingInvalidationKeyStorePath];
          if (([defaultManager fileExistsAtPath:pendingInvalidationKeyStorePath] & 1) == 0)
          {
            v41 = 0;
            [defaultManager createDirectoryAtPath:pendingInvalidationKeyStorePath withIntermediateDirectories:1 attributes:0 error:&v41];
            v21 = v41;
            if (v21)
            {
              log = os_log_create("com.apple.amp.mediaplayer", "Library");
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                msv_description = [v21 msv_description];
                *buf = v27;
                selfCopy2 = self;
                v49 = 2114;
                v50 = msv_description;
                _os_log_impl(&dword_1A238D000, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create key purgatory directory error=%{public}@", buf, 0x16u);
              }
            }
          }

          v23 = [objc_alloc(MEMORY[0x1E69E4430]) initWithPath:pendingInvalidationKeyStorePath];
          v24 = [objc_alloc(MEMORY[0x1E69E4430]) initWithPath:v30];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __79__MPMediaLibraryDataProviderML3__invalidatePersistentKeysForIdentifiers_count___block_invoke;
          v36[3] = &unk_1E76775F0;
          v25 = v23;
          v37 = v25;
          selfCopy3 = self;
          v39 = &v43;
          v40 = v7;
          [v24 enumerateKeyEntriesUsingBlock:v36];
        }
      }

      --countCopy;
    }

    while (countCopy);
    if (v44[3])
    {
      v26 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__MPMediaLibraryDataProviderML3__invalidatePersistentKeysForIdentifiers_count___block_invoke_204;
      block[3] = &unk_1E7682518;
      block[4] = self;
      dispatch_async(v26, block);
    }
  }

  _Block_object_dispose(&v43, 8);
}

void __79__MPMediaLibraryDataProviderML3__invalidatePersistentKeysForIdentifiers_count___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) saveKeyEntry:v3];
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = [v3 identifier];
      v9 = *(a1 + 56);
      v10 = [v4 msv_description];
      v13 = 138544130;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Moving key '%{public}@' for pid %lld to invalidate error=%{public}@", &v13, 0x2Au);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v8 = [v3 identifier];
    v12 = *(a1 + 56);
    v13 = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = v8;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Moving key '%{public}@' for pid %lld to invalidate", &v13, 0x20u);
    goto LABEL_6;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __79__MPMediaLibraryDataProviderML3__invalidatePersistentKeysForIdentifiers_count___block_invoke_204(uint64_t a1)
{
  v2 = [*(a1 + 32) userIdentity];
  v1 = [MPCloudController controllerWithUserIdentity:v2];
  [v1 processPendingKeyInvalidations];
}

- (BOOL)removeItemsWithIdentifiers:(int64_t *)identifiers count:(unint64_t)count
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MPMediaLibraryDataProviderML3_removeItemsWithIdentifiers_count___block_invoke;
  v7[3] = &unk_1E76775C8;
  v7[6] = identifiers;
  v7[7] = count;
  v8 = 1;
  v7[4] = self;
  v7[5] = &v9;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v7];
  if (*(v10 + 24) == 1)
  {
    [MPMediaLibrary reloadLibraryDataProvider:self];
    v5 = *(v10 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v5 & 1;
}

uint64_t __66__MPMediaLibraryDataProviderML3_removeItemsWithIdentifiers_count___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidatePersistentKeysForIdentifiers:*(a1 + 48) count:*(a1 + 56)];
  if (*(a1 + 64) == 1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    if (*(a1 + 56))
    {
      v3 = 0;
      do
      {
        v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(a1 + 48) + 8 * v3)];
        [v2 addObject:v4];

        ++v3;
      }

      while (*(a1 + 56) > v3);
    }

    *(*(*(a1 + 40) + 8) + 24) = [MEMORY[0x1E69B3538] unlinkRedownloadableAssetsFromLibrary:*(*(a1 + 32) + 88) persistentIDs:v2];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [MEMORY[0x1E69B3538] removeFromMyLibrary:*(*(a1 + 32) + 88) deletionType:1 persistentIDs:*(a1 + 48) count:*(a1 + 56)];
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

- (BOOL)deleteItemsWithIdentifiers:(int64_t *)identifiers count:(unint64_t)count
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MPMediaLibraryDataProviderML3_deleteItemsWithIdentifiers_count___block_invoke;
  v7[3] = &unk_1E76775A0;
  v7[6] = identifiers;
  v7[7] = count;
  v7[4] = self;
  v7[5] = &v8;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v7];
  if (*(v9 + 24) == 1)
  {
    [MPMediaLibrary reloadLibraryDataProvider:self];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

uint64_t __66__MPMediaLibraryDataProviderML3_deleteItemsWithIdentifiers_count___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidatePersistentKeysForIdentifiers:*(a1 + 48) count:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = [MEMORY[0x1E69B3538] removeFromMyLibrary:*(*(a1 + 32) + 88) deletionType:1 persistentIDs:*(a1 + 48) count:*(a1 + 56)];
  return *(*(*(a1 + 40) + 8) + 24);
}

- (BOOL)removePlaylistWithIdentifier:(int64_t)identifier preserveUndeletableEntities:(BOOL)entities
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__MPMediaLibraryDataProviderML3_removePlaylistWithIdentifier_preserveUndeletableEntities___block_invoke;
  v7[3] = &unk_1E7677578;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = identifier;
  entitiesCopy = entities;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v7];
  if (*(v10 + 24) == 1)
  {
    [MPMediaLibrary reloadLibraryDataProvider:self];
    v5 = *(v10 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v5 & 1;
}

- (BOOL)removePlaylistWithIdentifier:(int64_t)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MPMediaLibraryDataProviderML3_removePlaylistWithIdentifier___block_invoke;
  v6[3] = &unk_1E7677550;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = identifier;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v6];
  if (*(v8 + 24) == 1)
  {
    [MPMediaLibrary reloadLibraryDataProvider:self];
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

- (int64_t)sdk_addPlaylistWithValuesForProperties:(id)properties
{
  propertiesCopy = properties;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9726;
  v17 = __Block_byref_object_dispose__9727;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MPMediaLibraryDataProviderML3_sdk_addPlaylistWithValuesForProperties___block_invoke;
  v9[3] = &unk_1E7677690;
  v5 = propertiesCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v5;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v9];
  v6 = v14[5];
  if (v6)
  {
    persistentID = [v6 persistentID];
  }

  else
  {
    persistentID = 0;
  }

  _Block_object_dispose(&v13, 8);
  return persistentID;
}

BOOL __72__MPMediaLibraryDataProviderML3_sdk_addPlaylistWithValuesForProperties___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [*(a1 + 32) objectForKey:@"name"];
  if (v3)
  {
    [v2 setObject:v3 forKey:*MEMORY[0x1E69B2C58]];
  }

  v4 = [*(a1 + 32) objectForKey:@"externalVendorDisplayName"];
  if (v4)
  {
    [v2 setObject:v4 forKey:*MEMORY[0x1E69B2B80]];
  }

  v5 = [*(a1 + 32) objectForKey:@"descriptionInfo"];
  if ([v5 length])
  {
    [v2 setObject:v5 forKey:*MEMORY[0x1E69B2B60]];
  }

  v6 = [*(a1 + 32) objectForKey:@"externalVendorContainerTag"];
  if (v6)
  {
    [v2 setObject:v6 forKey:*MEMORY[0x1E69B2B78]];
  }

  v7 = [MEMORY[0x1E69B34A0] newWithDictionary:v2 inLibrary:*(*(a1 + 40) + 88)];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v10;
}

- (int64_t)addPlaylistWithValuesForProperties:(id)properties trackList:(id)list playlistEntryProperties:(id)entryProperties
{
  propertiesCopy = properties;
  listCopy = list;
  entryPropertiesCopy = entryProperties;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9726;
  v27 = __Block_byref_object_dispose__9727;
  v28 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__MPMediaLibraryDataProviderML3_addPlaylistWithValuesForProperties_trackList_playlistEntryProperties___block_invoke;
  v17[3] = &unk_1E7677640;
  v11 = propertiesCopy;
  v22 = &v23;
  v18 = v11;
  selfCopy = self;
  v12 = listCopy;
  v20 = v12;
  v13 = entryPropertiesCopy;
  v21 = v13;
  [(MPMediaLibraryDataProviderML3 *)self performTransactionWithBlock:v17];
  if (v24[5] && ([MPMediaLibrary reloadLibraryDataProvider:self], (v14 = v24[5]) != 0))
  {
    persistentID = [v14 persistentID];
  }

  else
  {
    persistentID = 0;
  }

  _Block_object_dispose(&v23, 8);
  return persistentID;
}

BOOL __102__MPMediaLibraryDataProviderML3_addPlaylistWithValuesForProperties_trackList_playlistEntryProperties___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:@"isActiveGeniusPlaylist"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = MEMORY[0x1E69B34A0];
    v5 = *(*(a1 + 40) + 88);
    v6 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2BA0] equalToInt64:1];
    v7 = [v4 anyInLibrary:v5 predicate:v6];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      return 0;
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [*(a1 + 32) allKeys];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [MEMORY[0x1E69B34A0] propertyForMPMediaEntityProperty:v17];
        if (v18)
        {
          v19 = [*(a1 + 32) objectForKey:v17];
          [v11 setValue:v19 forKey:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInt:1];
  [v11 setValue:v20 forKey:*MEMORY[0x1E69B2C20]];

  v21 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v11 setValue:v21 forKey:*MEMORY[0x1E69B2C28]];

  v22 = [*(a1 + 32) objectForKey:@"isActiveGeniusPlaylist"];
  v23 = [v22 BOOLValue];

  if (v23)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v11 setValue:v24 forKey:*MEMORY[0x1E69B2BF8]];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v11 setValue:v25 forKey:*MEMORY[0x1E69B2BE8]];

  v26 = *MEMORY[0x1E69B2C68];
  v27 = [v11 objectForKey:*MEMORY[0x1E69B2C68]];

  if (!v27)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [v11 setValue:v28 forKey:v26];
  }

  v29 = [MEMORY[0x1E69B34A0] newWithDictionary:v11 inLibrary:*(*(a1 + 40) + 88)];
  v30 = *(*(a1 + 64) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  v32 = *(*(*(a1 + 64) + 8) + 40);
  if (v32)
  {
    v33 = *(a1 + 48);
    if (v33)
    {
      [v32 setTracksWithPersistentIDs:v33 andEntryProperties:*(a1 + 56) withAttributionIdentifier:0 notify:0];
      v10 = *(*(*(a1 + 64) + 8) + 40) != 0;
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

- (int64_t)photosMemoriesPlaylistPersistentID
{
  currentDevicePhotosMemoriesPlaylist = [(ML3MusicLibrary *)self->_library currentDevicePhotosMemoriesPlaylist];
  v3 = currentDevicePhotosMemoriesPlaylist;
  if (currentDevicePhotosMemoriesPlaylist)
  {
    persistentID = [currentDevicePhotosMemoriesPlaylist persistentID];
  }

  else
  {
    persistentID = 0;
  }

  return persistentID;
}

- (int64_t)favoriteSongsPlaylistPersistentID
{
  currentDeviceFavoriteSongsPlaylist = [(ML3MusicLibrary *)self->_library currentDeviceFavoriteSongsPlaylist];
  v3 = currentDeviceFavoriteSongsPlaylist;
  if (currentDeviceFavoriteSongsPlaylist)
  {
    persistentID = [currentDeviceFavoriteSongsPlaylist persistentID];
  }

  else
  {
    persistentID = 0;
  }

  return persistentID;
}

- (int64_t)playbackHistoryPlaylistPersistentID
{
  currentDevicePlaybackHistoryPlaylist = [(ML3MusicLibrary *)self->_library currentDevicePlaybackHistoryPlaylist];
  v3 = currentDevicePlaybackHistoryPlaylist;
  if (currentDevicePlaybackHistoryPlaylist)
  {
    persistentID = [currentDevicePlaybackHistoryPlaylist persistentID];
  }

  else
  {
    persistentID = 0;
  }

  return persistentID;
}

- (void)setValuesForProperties:(id)properties trackList:(id)list andEntryProperties:(id)entryProperties ofPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  v68 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  listCopy = list;
  entryPropertiesCopy = entryProperties;
  blockCopy = block;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v44 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  date = [MEMORY[0x1E695DF00] date];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [propertiesCopy allKeys];
  v10 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (!v10)
  {
    v41 = 0;
    goto LABEL_27;
  }

  v41 = 0;
  v11 = *v60;
  v12 = *MEMORY[0x1E69B2CB8];
  v40 = *MEMORY[0x1E69B2C48];
  v35 = *MEMORY[0x1E69B2C50];
  v37 = *MEMORY[0x1E69B2CD0];
  v38 = *MEMORY[0x1E69B2CC8];
  v34 = *MEMORY[0x1E69B3010];
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v60 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v59 + 1) + 8 * i);
      v15 = [MEMORY[0x1E69B34A0] propertyForMPMediaEntityProperty:v14];
      if (v15)
      {
        v16 = [propertiesCopy objectForKey:v14];
        if ([v15 isEqualToString:v12])
        {
          if ([v16 integerValue] == -1)
          {

            v16 = &unk_1F1509718;
          }

          if (![v16 integerValue] || objc_msgSend(v16, "integerValue") == -2)
          {
            [v44 setValue:&unk_1F1509718 forKey:v38];
            [v44 setValue:&unk_1F1509760 forKey:v37];
          }

          if ([v16 integerValue])
          {
            if ([v16 integerValue] == -2)
            {
              v17 = [MEMORY[0x1E69B3488] predicateWithProperty:v34 value:&unk_1F1509718 comparison:1];

              [dictionary setObject:&unk_1F1509748 forKey:v12];
              goto LABEL_21;
            }

            if ([v16 integerValue] >= 1)
            {
              v18 = MEMORY[0x1E69B3430];
              v19 = [MEMORY[0x1E69B3488] predicateWithProperty:v12 equalToInteger:-1];
              v66[0] = v19;
              v20 = [MEMORY[0x1E69B3488] predicateWithProperty:v12 equalToInteger:-2];
              v66[1] = v20;
              v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
              v17 = [v18 predicateMatchingPredicates:v21];

              [dictionary setObject:&unk_1F1509718 forKey:v12];
LABEL_21:
              v41 = v17;
            }
          }

          else
          {
            [dictionary setObject:&unk_1F1509730 forKey:v12];
          }
        }

        else if ([v15 isEqualToString:v40])
        {
          [v44 setValue:date forKey:v35];
        }

        [v44 setValue:v16 forKey:v15];
      }
    }

    v10 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  }

  while (v10);
LABEL_27:

  if ([v44 count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(entryPropertiesCopy, "count")}];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke;
    v56[3] = &unk_1E76774B0;
    v57 = entryPropertiesCopy;
    v23 = v22;
    v58 = v23;
    [v57 enumerateKeysAndObjectsUsingBlock:v56];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v64 = 0x2020000000;
    v65 = 1;
    v24 = [MEMORY[0x1E69B34A0] newWithPersistentID:identifier inLibrary:self->_library];
    setValuesWidthLimitedQueue = self->_setValuesWidthLimitedQueue;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_3;
    v45[3] = &unk_1E7677528;
    v45[4] = self;
    p_buf = &buf;
    v26 = v24;
    v46 = v26;
    v47 = v44;
    v48 = listCopy;
    v27 = v23;
    v49 = v27;
    v50 = dictionary;
    v51 = v41;
    identifierCopy = identifier;
    v53 = blockCopy;
    v52 = propertiesCopy;
    [(NSOperationQueue *)setValuesWidthLimitedQueue addOperationWithBlock:v45];

    _Block_object_dispose(&buf, 8);
    goto LABEL_33;
  }

  v28 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = propertiesCopy;
    _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "Failed to map any playlist properties from %{public}@", &buf, 0xCu);
  }

  if (blockCopy)
  {
    v27 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:0 debugDescription:@"Failed to map provided properties in setValuesForProperties"];
    (*(blockCopy + 2))(blockCopy, 0, v27);
LABEL_33:
  }
}

void __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_2;
  v10[3] = &unk_1E767A438;
  v11 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [*(a1 + 40) setObject:v9 forKeyedSubscript:v7];
}

void __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_4;
  v21[3] = &unk_1E76774D8;
  v27 = *(a1 + 104);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v22 = v8;
  v23 = v7;
  v24 = *(a1 + 72);
  v9 = *(a1 + 80);
  v28 = *(a1 + 112);
  v10 = *(a1 + 32);
  v25 = v9;
  v26 = v10;
  [v2 performDatabaseTransactionWithBlock:v21];
  v11 = *(a1 + 96);
  if (v11)
  {
    (*(v11 + 16))(v11, *(*(*(a1 + 104) + 8) + 24), 0);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_196;
  v16[3] = &unk_1E7677500;
  v16[4] = v12;
  v17 = *(a1 + 88);
  v18 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 112);
  v19 = v14;
  v20 = v15;
  dispatch_async(v13, v16);
}

uint64_t __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) allValues];
  v6 = [*(a1 + 40) allKeys];
  *(*(*(a1 + 88) + 8) + 24) = [v4 setValues:v5 forProperties:v6 usingConnection:v3];

  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "Failed to update properties for container %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [*(a1 + 32) setTracksWithPersistentIDs:v7 andEntryProperties:*(a1 + 56) withAttributionIdentifier:0 notify:0];
  }

  if ([*(a1 + 64) count])
  {
    v8 = objc_opt_new();
    v9 = [MEMORY[0x1E69B3538] containerQueryWithContainer:*(a1 + 32) predicate:*(a1 + 72)];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_195;
    v23[3] = &unk_1E76794D0;
    v10 = v8;
    v24 = v10;
    [v9 enumeratePersistentIDsUsingBlock:v23];
    v11 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 count];
      v13 = *(a1 + 96);
      v14 = *(a1 + 64);
      *buf = 134218498;
      v26 = v12;
      v27 = 2048;
      v28 = v13;
      v29 = 2114;
      v30 = v14;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "Adjusting track properties for %lu tracks in playlist:%lld: %{public}@", buf, 0x20u);
    }

    v15 = MEMORY[0x1E69B3538];
    v16 = [*(a1 + 64) allValues];
    v17 = [*(a1 + 64) allKeys];
    *(*(*(a1 + 88) + 8) + 24) = [v15 setValues:v16 forProperties:v17 forEntityPersistentIDs:v10 inLibrary:*(*(a1 + 80) + 88) usingConnection:v3];

    if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      v18 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 96);
        *buf = 134217984;
        v26 = v19;
        _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_ERROR, "Failed to update track properties for playlist:%lld", buf, 0xCu);
      }
    }

LABEL_14:
  }

  v21 = *(*(*(a1 + 88) + 8) + 24);

  return v21;
}

void __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_196(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  if (MPML3LookupItemAdvertisementType_block_invoke_onceToken != -1)
  {
    dispatch_once(&MPML3LookupItemAdvertisementType_block_invoke_onceToken, &__block_literal_global_199);
  }

  v2 = [*(a1 + 32) userIdentity];
  v3 = [MPCloudController controllerWithUserIdentity:v2];

  v50 = v3;
  v4 = [v3 isCloudEnabled];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v5 = [*(a1 + 40) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v66 objects:v82 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v67;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v67 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([MPML3LookupItemAdvertisementType_block_invoke___cloudPropertiesToAggregate containsObject:*(*(&v66 + 1) + 8 * i)])
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v66 objects:v82 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v11 = [*(a1 + 40) allKeys];
  v12 = [v11 countByEnumeratingWithState:&v62 objects:v81 count:16];
  if (v12)
  {
    v13 = *v63;
    while (2)
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v63 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if ([MPML3LookupItemAdvertisementType_block_invoke___cloudPropertiesToUpload containsObject:*(*(&v62 + 1) + 8 * j)])
        {
          LODWORD(v12) = 1;
          goto LABEL_23;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v62 objects:v81 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  if ((v4 & (v10 | v12)) == 1)
  {
    if (v10)
    {
      [v50 uploadCloudPlaylistProperties];
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v15 = [*(a1 + 40) allKeys];
    v16 = [v15 countByEnumeratingWithState:&v58 objects:v80 count:16];
    if (v16)
    {
      v18 = v16;
      p_name = &OBJC_PROTOCOL___MPMusicMediaPickerServiceController.name;
      v20 = *v59;
      v56 = *MEMORY[0x1E69B2CA8];
      v55 = *MEMORY[0x1E69B2AD0];
      v54 = *MEMORY[0x1E69B2C48];
      v51 = *MEMORY[0x1E69B2C50];
      *&v17 = 67109634;
      v49 = v17;
      v53 = v15;
      v57 = *v59;
      do
      {
        v21 = 0;
        v52 = v18;
        do
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v58 + 1) + 8 * v21);
          v23 = [MEMORY[0x1E69B34A0] propertyForMPMediaEntityProperty:{v22, v49}];
          if (!v23)
          {
            v26 = os_log_create("com.apple.amp.mediaplayer", "Library");
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_59;
            }

            *buf = 138543362;
            *v77 = v22;
            v37 = v26;
            v38 = "Property %{public}@ is invalid and will not be propagated";
LABEL_45:
            _os_log_impl(&dword_1A238D000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
            goto LABEL_59;
          }

          if (([p_name[401] containsObject:v22] & 1) == 0)
          {
            v26 = os_log_create("com.apple.amp.mediaplayer", "Library");
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_59;
            }

            *buf = 138543362;
            *v77 = v22;
            v37 = v26;
            v38 = "Property %{public}@ is not a valid property to upload and will not be propagated";
            goto LABEL_45;
          }

          v24 = [*(a1 + 48) valueForProperty:v56];
          v25 = [v24 unsignedLongLongValue];

          v26 = [*(a1 + 48) valueForProperty:v55];
          v27 = os_log_create("com.apple.amp.mediaplayer", "Library");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            *v77 = v23;
            *&v77[8] = 2048;
            *&v77[10] = v25;
            *&v77[18] = 2114;
            *&v77[20] = v26;
            v78 = 1024;
            v79 = 1;
            _os_log_impl(&dword_1A238D000, v27, OS_LOG_TYPE_DEFAULT, "Uploading property=%{public}@ for playlist sagaID=%lld, containerGlobalID=%{public}@ isCloudLibraryEnabled=%{BOOL}u", buf, 0x26u);
          }

          if ([v23 isEqualToString:v54])
          {
            v28 = [*(a1 + 56) valueForKey:v23];
            v29 = [v28 integerValue];

            v30 = [*(a1 + 56) valueForKey:v51];
            v31 = v30;
            if (!v29 || !v30)
            {
              v40 = os_log_create("com.apple.amp.mediaplayer", "Library");
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = *(a1 + 64);
                *buf = v49;
                *v77 = v29;
                *&v77[4] = 2114;
                *&v77[6] = v31;
                *&v77[14] = 2048;
                *&v77[16] = v41;
                _os_log_impl(&dword_1A238D000, v40, OS_LOG_TYPE_ERROR, "Not propagating favorite state change for playlist (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as the request is not valid", buf, 0x1Cu);
              }

              v18 = v52;
              goto LABEL_58;
            }

            if ([v22 isEqualToString:@"_playlistLikedState"])
            {
              v18 = v52;
              if (v25)
              {
                v74[0] = @"_playlistLikedState";
                v32 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
                v74[1] = @"likedStateChangedDate";
                v75[0] = v32;
                v75[1] = v31;
                v33 = MEMORY[0x1E695DF20];
                v34 = v75;
                v35 = v74;
                v36 = 2;
                goto LABEL_56;
              }

              if (v26)
              {
                if (v29 == 2)
                {
                  [v50 favoritePlaylistWithPersistentID:*(a1 + 64) globalID:v26 time:v31 completionHandler:0];
                }

                else
                {
                  [v50 setLikedState:v29 forPlaylistWithGlobalID:v26 persistentID:*(a1 + 64) timeStamp:v31 completion:0];
                }

                goto LABEL_58;
              }

              v32 = os_log_create("com.apple.amp.mediaplayer", "Library");
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v43 = *(a1 + 64);
                *buf = v49;
                *v77 = v29;
                *&v77[4] = 2114;
                *&v77[6] = v31;
                *&v77[14] = 2048;
                *&v77[16] = v43;
                v44 = v32;
                v45 = "Not propagating favorite state change for playlist (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as it's missing store identifiers";
                v46 = 28;
                goto LABEL_71;
              }

              goto LABEL_57;
            }

            v18 = v52;
            if ([v22 isEqualToString:@"likedState"])
            {
              if (v25)
              {
                v72 = v22;
                v32 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
                v73 = v32;
                v33 = MEMORY[0x1E695DF20];
                v34 = &v73;
                v35 = &v72;
                v36 = 1;
LABEL_56:
                v42 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
                [v50 setPlaylistProperties:v42 trackList:0 forPlaylistWithPersistentID:*(a1 + 64) completionHandler:0];
              }

              else
              {
                if (v26)
                {
                  [v50 setLikedState:v29 forPlaylistWithGlobalID:v26];
                  goto LABEL_58;
                }

                v32 = os_log_create("com.apple.amp.mediaplayer", "Library");
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v47 = *(a1 + 48);
                  *buf = 138543362;
                  *v77 = v47;
                  v44 = v32;
                  v45 = "Not propagating favorite state change for %{public}@ as store identifiers are missing";
                  v46 = 12;
LABEL_71:
                  _os_log_impl(&dword_1A238D000, v44, OS_LOG_TYPE_ERROR, v45, buf, v46);
                }
              }

LABEL_57:
            }
          }

          else
          {
            if (!v25)
            {
              p_name = (&OBJC_PROTOCOL___MPMusicMediaPickerServiceController + 8);
              v20 = v57;
              goto LABEL_59;
            }

            v39 = [*(a1 + 56) objectForKey:v23];
            v31 = v39;
            if (v39)
            {
              v70 = v22;
              v71 = v39;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
              [v50 setPlaylistProperties:v32 trackList:0 forPlaylistWithPersistentID:*(a1 + 64) completionHandler:0];
              goto LABEL_57;
            }
          }

LABEL_58:
          p_name = (&OBJC_PROTOCOL___MPMusicMediaPickerServiceController + 8);
          v20 = v57;

          v15 = v53;
LABEL_59:

          ++v21;
        }

        while (v18 != v21);
        v48 = [v15 countByEnumeratingWithState:&v58 objects:v80 count:16];
        v18 = v48;
      }

      while (v48);
    }
  }

  else
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *v77 = v4;
      *&v77[4] = 1024;
      *&v77[6] = v12;
      *&v77[10] = 1024;
      *&v77[12] = v10;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "Not propagating change(s) - cloudLibraryEnabled=%{BOOL}u, hasCloudPropertyToUpdate=%{BOOL}u, hasCloudPropertyToAggregate=%{BOOL}u", buf, 0x14u);
    }
  }
}

void __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_2_197()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"likedState", @"_playlistLikedState", @"parentPersistentID", 0}];
  v1 = MPML3LookupItemAdvertisementType_block_invoke___cloudPropertiesToUpload;
  MPML3LookupItemAdvertisementType_block_invoke___cloudPropertiesToUpload = v0;

  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"playCountSinceSync", @"datePlayed", 0}];
  v3 = MPML3LookupItemAdvertisementType_block_invoke___cloudPropertiesToAggregate;
  MPML3LookupItemAdvertisementType_block_invoke___cloudPropertiesToAggregate = v2;
}

void __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_195(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __126__MPMediaLibraryDataProviderML3_setValuesForProperties_trackList_andEntryProperties_ofPlaylistWithIdentifier_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E69B34A8];
  v6 = a3;
  v7 = [v5 propertyForMPMediaEntityProperty:a2];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

- (void)setValue:(id)value forProperty:(id)property ofPlaylistWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  v17[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  blockCopy = block;
  if (valueCopy)
  {
    null = valueCopy;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14 = null;
  v16 = propertyCopy;
  v17[0] = null;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [(MPMediaLibraryDataProviderML3 *)self setValuesForProperties:v15 trackList:0 andEntryProperties:0 ofPlaylistWithIdentifier:identifier completionBlock:blockCopy];
}

- (void)setValue:(id)value forProperty:(id)property ofCollectionWithIdentifier:(int64_t)identifier groupingType:(int64_t)type completionBlock:(id)block
{
  v45 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  blockCopy = block;
  v15 = ML3CollectionEntityClassForGroupingType();
  v16 = [v15 propertyForMPMediaEntityProperty:propertyCopy];
  if (v16 || v15 == objc_opt_class() && (v15 = ML3CollectionEntityClassForMPMediaItemCollectionProperty(propertyCopy), [v15 propertyForMPMediaEntityProperty:propertyCopy], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v25 = valueCopy;
    if (valueCopy)
    {
      null = valueCopy;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v19 = null;
    v20 = [v15 newWithPersistentID:identifier inLibrary:self->_library];
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v40[3] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__9726;
    v43 = __Block_byref_object_dispose__9727;
    v44 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 1;
    if (setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock__onceToken != -1)
    {
      dispatch_once(&setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock__onceToken, &__block_literal_global_9764);
    }

    setValuesWidthLimitedQueue = self->_setValuesWidthLimitedQueue;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_2;
    v26[3] = &unk_1E7677488;
    v26[4] = self;
    v22 = v19;
    v27 = v22;
    v23 = v16;
    v35 = v15;
    identifierCopy = identifier;
    v28 = v23;
    v32 = v38;
    v24 = v20;
    v29 = v24;
    v33 = v40;
    v34 = buf;
    v31 = blockCopy;
    v30 = propertyCopy;
    typeCopy = type;
    [(NSOperationQueue *)setValuesWidthLimitedQueue addOperationWithBlock:v26];

    valueCopy = v25;
    _Block_object_dispose(v38, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v40, 8);
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = type;
      *&buf[22] = 2112;
      v42 = propertyCopy;
      _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_ERROR, "entityClass %@ (groupingType = %ld) has no ML3Property for MPProperty %@", buf, 0x20u);
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, 0);
    }
  }
}

void __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_3;
  v25[3] = &unk_1E7677438;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 112);
  v30 = *(a1 + 104);
  v31 = v5;
  v28 = *(a1 + 80);
  v15 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v15;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v26 = v8;
  v27 = v7;
  v29 = *(a1 + 88);
  [v2 performDatabaseTransactionWithBlock:v25];
  v9 = *(a1 + 72);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 80) + 8) + 24), 0);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_186;
  block[3] = &unk_1E7677460;
  block[4] = v10;
  v17 = *(a1 + 64);
  v18 = *(a1 + 48);
  v21 = *(a1 + 88);
  v12 = *(a1 + 112);
  v22 = *(a1 + 104);
  v23 = v12;
  v19 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = *(a1 + 120);
  v20 = v13;
  v24 = v14;
  dispatch_async(v11, block);
}

uint64_t __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v118[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E69B2CB8];
  if (![*(a1 + 40) isEqualToString:*MEMORY[0x1E69B2CB8]])
  {
    if ([*(a1 + 40) isEqualToString:@"liked_state"])
    {
      v26 = *(a1 + 88);
      if (v26 == objc_opt_class())
      {
        v29 = MEMORY[0x1E69B2C50];
      }

      else
      {
        v27 = *(a1 + 88);
        if (v27 == objc_opt_class())
        {
          v29 = MEMORY[0x1E69B29D8];
        }

        else
        {
          v28 = *(a1 + 88);
          if (v28 != objc_opt_class())
          {
            goto LABEL_36;
          }

          v29 = MEMORY[0x1E69B2980];
        }
      }

      v79 = *v29;
      if (v79)
      {
        v6 = v79;
        *(*(*(a1 + 72) + 8) + 24) = [v4 integerValue];
        v80 = [MEMORY[0x1E695DF00] date];
        v81 = *(*(a1 + 80) + 8);
        v82 = *(v81 + 40);
        *(v81 + 40) = v80;

        v75 = *(a1 + 56);
        v83 = *(*(*(a1 + 80) + 8) + 40);
        v100[0] = v4;
        v100[1] = v83;
        v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
        v99[0] = *(a1 + 40);
        v99[1] = v6;
        v76 = MEMORY[0x1E695DEC8];
        v77 = v99;
        v78 = 2;
LABEL_35:
        v84 = [v76 arrayWithObjects:v77 count:v78];
        *(*(*(a1 + 64) + 8) + 24) = [v75 setValues:v71 forProperties:v84 usingConnection:v3];

LABEL_37:
        v74 = *(*(*(a1 + 64) + 8) + 24);
        goto LABEL_38;
      }
    }

LABEL_36:
    v85 = *(a1 + 56);
    v98 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
    v97 = *(a1 + 40);
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
    *(*(*(a1 + 64) + 8) + 24) = [v85 setValues:v6 forProperties:v71 usingConnection:v3];
    goto LABEL_37;
  }

  if ([v4 integerValue] == -1)
  {

    v4 = &unk_1F1509718;
  }

  v4 = v4;
  v6 = v4;
  if (![v4 integerValue])
  {

    v6 = &unk_1F1509730;
  }

  if ([v6 integerValue] == -1)
  {
    v30 = MEMORY[0x1E69B3488];
    v31 = [*(a1 + 88) trackForeignPersistentID];
    v32 = [v30 predicateWithProperty:v31 equalToInt64:*(a1 + 96)];

    v89 = v32;
    v33 = [MEMORY[0x1E69B3538] queryWithLibrary:*(*(a1 + 48) + 88) predicate:v32 orderingTerms:0 usingSections:0];
    v34 = objc_opt_new();
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_167;
    v95[3] = &unk_1E76794D0;
    v35 = v34;
    v96 = v35;
    [v33 enumeratePersistentIDsUsingBlock:v95];
    v36 = MEMORY[0x1E69B3538];
    v118[0] = v6;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:1];
    v117 = v5;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
    *(*(*(a1 + 64) + 8) + 24) = [v36 setValues:v37 forProperties:v38 forEntityPersistentIDs:v35 inLibrary:*(*(a1 + 48) + 88) usingConnection:v3];

    v39 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v35 count];
      v41 = *(*(*(a1 + 64) + 8) + 24);
      v42 = *(a1 + 96);
      *buf = 134218496;
      v112 = v40;
      v113 = 1024;
      v114 = v41;
      v115 = 2048;
      v116 = v42;
      _os_log_impl(&dword_1A238D000, v39, OS_LOG_TYPE_DEFAULT, "Disabled keep_local on %lu tracks with status:%d for collection:%lld", buf, 0x1Cu);
    }

    v43 = *(*(*(a1 + 64) + 8) + 24);
    if ((v43 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if ([v6 integerValue] != -2)
  {
    if ([v6 integerValue] >= 1)
    {
      v44 = MEMORY[0x1E69B3430];
      v45 = [MEMORY[0x1E69B3488] predicateWithProperty:v5 equalToInteger:-1];
      v107[0] = v45;
      v46 = [MEMORY[0x1E69B3488] predicateWithProperty:v5 equalToInteger:-2];
      v107[1] = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:2];
      v48 = [v44 predicateMatchingPredicates:v47];

      v49 = MEMORY[0x1E69B3428];
      v50 = MEMORY[0x1E69B3488];
      v51 = [*(a1 + 88) trackForeignPersistentID];
      v52 = [v50 predicateWithProperty:v51 equalToInt64:*(a1 + 96)];
      v106[0] = v52;
      v106[1] = v48;
      v90 = v48;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
      v54 = v53 = v3;
      v55 = [v49 predicateMatchingPredicates:v54];

      v56 = [MEMORY[0x1E69B3538] queryWithLibrary:*(*(a1 + 48) + 88) predicate:v55 orderingTerms:0 usingSections:0];
      v57 = objc_opt_new();
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_175;
      v91[3] = &unk_1E76794D0;
      v58 = v57;
      v92 = v58;
      [v56 enumeratePersistentIDsUsingBlock:v91];
      v59 = MEMORY[0x1E69B3538];
      v105 = v5;
      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
      v61 = v59;
      v3 = v53;
      *(*(*(a1 + 64) + 8) + 24) = [v61 setValues:&unk_1F1509DC0 forProperties:v60 forEntityPersistentIDs:v58 inLibrary:*(*(a1 + 48) + 88) usingConnection:v53];

      v62 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v58 count];
        v64 = *(*(*(a1 + 64) + 8) + 24);
        v65 = *(a1 + 96);
        *buf = 134218496;
        v112 = v63;
        v113 = 1024;
        v114 = v64;
        v115 = 2048;
        v116 = v65;
        _os_log_impl(&dword_1A238D000, v62, OS_LOG_TYPE_DEFAULT, "Cleared keep_local on %lu tracks with status:%d for collection:%lld", buf, 0x1Cu);
      }

      v66 = *(*(*(a1 + 64) + 8) + 24);
      if (v66 != 1)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_25;
  }

  v7 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B3010] value:&unk_1F1509718 comparison:1];
  v8 = MEMORY[0x1E69B3428];
  v9 = MEMORY[0x1E69B3488];
  v10 = [*(a1 + 88) trackForeignPersistentID];
  v11 = [v9 predicateWithProperty:v10 equalToInt64:*(a1 + 96)];
  v110[0] = v11;
  v110[1] = v7;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:2];
  v12 = v88 = v3;
  v13 = [v8 predicateMatchingPredicates:v12];

  v87 = v13;
  v14 = [MEMORY[0x1E69B3538] queryWithLibrary:*(*(a1 + 48) + 88) predicate:v13 orderingTerms:0 usingSections:0];
  v15 = objc_opt_new();
  v109 = *MEMORY[0x1E69B2E10];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_168;
  v93[3] = &unk_1E7677410;
  v17 = v15;
  v94 = v17;
  [v14 enumeratePersistentIDsAndProperties:v16 usingBlock:v93];

  v18 = MEMORY[0x1E69B3538];
  v108 = v5;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  v20 = v18;
  v3 = v88;
  *(*(*(a1 + 64) + 8) + 24) = [v20 setValues:&unk_1F1509DA8 forProperties:v19 forEntityPersistentIDs:v17 inLibrary:*(*(a1 + 48) + 88) usingConnection:v88];

  v21 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v17 count];
    v23 = *(*(*(a1 + 64) + 8) + 24);
    v24 = *(a1 + 96);
    *buf = 134218496;
    v112 = v22;
    v113 = 1024;
    v114 = v23;
    v115 = 2048;
    v116 = v24;
    _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEFAULT, "Cancelled keep_local on %lu tracks with status:%d for collection: %lld", buf, 0x1Cu);
  }

  v25 = *(*(*(a1 + 64) + 8) + 24);
  if (v25)
  {
LABEL_25:
    if (![v4 integerValue] || objc_msgSend(v4, "integerValue") == -2)
    {
      v67 = *(a1 + 56);
      v104[0] = v4;
      v104[1] = &unk_1F1509718;
      v104[2] = &unk_1F1509760;
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:3];
      v69 = *MEMORY[0x1E69B2CC8];
      v103[0] = *(a1 + 40);
      v103[1] = v69;
      v103[2] = *MEMORY[0x1E69B2CD0];
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:3];
      *(*(*(a1 + 64) + 8) + 24) = [v67 setValues:v68 forProperties:v70 usingConnection:v3];

      v71 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *(a1 + 96);
        v73 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 134218240;
        v112 = v72;
        v113 = 1024;
        v114 = v73;
        _os_log_impl(&dword_1A238D000, v71, OS_LOG_TYPE_DEFAULT, "Cleared keep_local_status for collection %lld with status:%d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v75 = *(a1 + 56);
    v102 = v4;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
    v101 = *(a1 + 40);
    v76 = MEMORY[0x1E695DEC8];
    v77 = &v101;
    v78 = 1;
    goto LABEL_35;
  }

LABEL_29:

  v74 = 0;
LABEL_38:

  return v74 & 1;
}

void __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_186(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userIdentity];
  v3 = [MPCloudController controllerWithUserIdentity:v2];

  v4 = [v3 isCloudLibraryEnabled];
  if (![setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock____cloudPropertiesToUpload containsObject:*(a1 + 40)] || !objc_msgSend(*(a1 + 48), "isEqualToString:", @"liked_state"))
  {
    goto LABEL_64;
  }

  v5 = *(a1 + 88);
  if (v5 != objc_opt_class())
  {
    v6 = *(a1 + 88);
    if (v6 == objc_opt_class())
    {
      if (*(*(*(a1 + 72) + 8) + 24) && *(*(*(a1 + 80) + 8) + 40))
      {
        if ([*(a1 + 40) isEqualToString:@"_albumLikedState"])
        {
          v7 = [*(a1 + 56) valueForProperty:*MEMORY[0x1E69B29C0]];
          v8 = [*(a1 + 56) valueForProperty:*MEMORY[0x1E69B2A00]];
          v9 = [v8 longLongValue];

          v10 = _MPLogCategoryLibrary();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a1 + 40);
            *buf = 138544130;
            *v68 = v11;
            *&v68[8] = 2114;
            *&v68[10] = v7;
            *&v68[18] = 2048;
            *&v68[20] = v9;
            v69 = 1024;
            v70 = v4;
            _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "Uploading property=%{public}@ for albumCloudID=%{public}@, storeID=%lld isCloudLibraryEnabled=%{BOOL}u", buf, 0x26u);
          }

          if (v4)
          {
            if ([v7 length])
            {
              v12 = *(a1 + 64);
              v63[0] = *(a1 + 40);
              v63[1] = @"albumLikedStateChangedDate";
              v13 = *(*(*(a1 + 80) + 8) + 40);
              v64[0] = v12;
              v64[1] = v13;
              v63[2] = @"albumCloudLibraryID";
              v64[2] = v7;
              v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];
              [v3 setAlbumProperties:v14 forEntityWithPersistentID:*(a1 + 96) cloudLibraryID:v7 completionHandler:0];
LABEL_62:

              goto LABEL_63;
            }

            if (v9)
            {
              v35 = *(*(*(a1 + 72) + 8) + 24);
              v36 = *(a1 + 96);
              v34 = *(*(*(a1 + 80) + 8) + 40);
              if (v35 == 2)
              {
                v38 = v3;
                v39 = *(a1 + 96);
                v40 = v9;
                v41 = 3;
                goto LABEL_49;
              }

              goto LABEL_37;
            }

            v14 = _MPLogCategoryLibrary();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_62;
            }

            v58 = *(*(*(a1 + 72) + 8) + 24);
            v59 = *(*(*(a1 + 80) + 8) + 40);
            v60 = *(a1 + 96);
            *buf = 67109634;
            *v68 = v58;
            *&v68[4] = 2114;
            *&v68[6] = v59;
            *&v68[14] = 2048;
            *&v68[16] = v60;
            v46 = "Not propagating favorite state change for album (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as it's missing store identifiers";
          }

          else
          {
            if (v9 || [v7 length])
            {
              v35 = *(*(*(a1 + 72) + 8) + 24);
              v36 = *(a1 + 96);
              v34 = *(*(*(a1 + 80) + 8) + 40);
LABEL_37:
              [v3 setLikedState:v35 forAlbumWithStoreID:v9 persistentID:v36 timeStamp:v34 completion:0];
              goto LABEL_63;
            }

            v14 = _MPLogCategoryLibrary();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_62;
            }

            v55 = *(*(*(a1 + 72) + 8) + 24);
            v56 = *(*(*(a1 + 80) + 8) + 40);
            v57 = *(a1 + 96);
            *buf = 67109634;
            *v68 = v55;
            *&v68[4] = 2114;
            *&v68[6] = v56;
            *&v68[14] = 2048;
            *&v68[16] = v57;
            v46 = "Not propagating favorite state change for album (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as cloudLibrary is not enabled and it's missing store identifiers";
          }

          goto LABEL_60;
        }

        if ([*(a1 + 40) isEqualToString:@"albumLikedState"])
        {
          if (![v3 isCloudEnabled])
          {
            v7 = ML3CollectionStoreIDPropertyForGroupingType(*(a1 + 104));
            v42 = [*(a1 + 56) valueForProperty:v7];
            v43 = [v42 unsignedLongLongValue];

            if (v43 && *(a1 + 104) == 1)
            {
              [v3 setLikedState:*(*(*(a1 + 72) + 8) + 24) forAlbumWithStoreID:v43];
              goto LABEL_63;
            }

            v14 = _MPLogCategoryLibrary();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_62;
            }

            v44 = *(*(*(a1 + 72) + 8) + 24);
            v45 = *(a1 + 56);
            *buf = 67109378;
            *v68 = v44;
            *&v68[4] = 2114;
            *&v68[6] = v45;
            v46 = "Not propagating liked state=%d for album=%{public}@";
            v47 = v14;
            v48 = 18;
LABEL_61:
            _os_log_impl(&dword_1A238D000, v47, OS_LOG_TYPE_ERROR, v46, buf, v48);
            goto LABEL_62;
          }

          v31 = *(a1 + 64);
          v61 = *(a1 + 40);
          v62 = v31;
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          [v3 setCollectionProperties:v7 forCollectionWithPersistentID:*(a1 + 96) groupingType:*(a1 + 104) completionHandler:0];
LABEL_63:

          goto LABEL_64;
        }

        v7 = _MPLogCategoryLibrary();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_63;
        }

        v37 = *(a1 + 56);
        *buf = 138543362;
        *v68 = v37;
        v24 = "Not propagating favorite state change for %{public}@ as cloud library is not enabled";
        v28 = v7;
        v29 = OS_LOG_TYPE_DEFAULT;
        v30 = 12;
LABEL_26:
        _os_log_impl(&dword_1A238D000, v28, v29, v24, buf, v30);
        goto LABEL_63;
      }

      v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      v25 = *(*(*(a1 + 72) + 8) + 24);
      v26 = *(*(*(a1 + 80) + 8) + 40);
      v27 = *(a1 + 96);
      *buf = 67109634;
      *v68 = v25;
      *&v68[4] = 2114;
      *&v68[6] = v26;
      *&v68[14] = 2048;
      *&v68[16] = v27;
      v24 = "Not propagating favorite state change for album (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as the request is not valid";
LABEL_25:
      v28 = v7;
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 28;
      goto LABEL_26;
    }

    goto LABEL_64;
  }

  if (!*(*(*(a1 + 72) + 8) + 24) || !*(*(*(a1 + 80) + 8) + 40))
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    v21 = *(*(*(a1 + 72) + 8) + 24);
    v22 = *(*(*(a1 + 80) + 8) + 40);
    v23 = *(a1 + 96);
    *buf = 67109634;
    *v68 = v21;
    *&v68[4] = 2114;
    *&v68[6] = v22;
    *&v68[14] = 2048;
    *&v68[16] = v23;
    v24 = "Not propagating favorite state change for album artist (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as the request is not valid";
    goto LABEL_25;
  }

  if ([*(a1 + 40) isEqualToString:@"_albumArtistLikedState"])
  {
    v7 = [*(a1 + 56) valueForProperty:*MEMORY[0x1E69B2970]];
    v15 = [*(a1 + 56) valueForProperty:*MEMORY[0x1E69B2998]];
    v16 = [v15 longLongValue];

    v17 = _MPLogCategoryLibrary();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      *buf = 138544130;
      *v68 = v18;
      *&v68[8] = 2114;
      *&v68[10] = v7;
      *&v68[18] = 2048;
      *&v68[20] = v16;
      v69 = 1024;
      v70 = v4;
      _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "Uploading property=%{public}@ for artistCloudID=%{public}@, storeID=%lld isCloudLibraryEnabled=%{BOOL}u", buf, 0x26u);
    }

    if (v4)
    {
      if ([v7 length])
      {
        v19 = *(a1 + 64);
        v65[0] = *(a1 + 40);
        v65[1] = @"albumArtistDateFavorited";
        v20 = *(*(*(a1 + 80) + 8) + 40);
        v66[0] = v19;
        v66[1] = v20;
        v65[2] = @"albumArtistCloudUniversalLibraryID";
        v66[2] = v7;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];
        [v3 setAlbumArtistProperties:v14 forEntityWithPersistentID:*(a1 + 96) completionHandler:0];
        goto LABEL_62;
      }

      if (v16)
      {
        v32 = *(*(*(a1 + 72) + 8) + 24);
        v33 = *(a1 + 96);
        v34 = *(*(*(a1 + 80) + 8) + 40);
        if (v32 == 2)
        {
          v38 = v3;
          v39 = *(a1 + 96);
          v40 = v16;
          v41 = 2;
LABEL_49:
          [v38 favoriteEntityWithPersistentID:v39 storeID:v40 entityType:v41 time:v34 completionHandler:0];
          goto LABEL_63;
        }

        goto LABEL_33;
      }

      v14 = _MPLogCategoryLibrary();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      v52 = *(*(*(a1 + 72) + 8) + 24);
      v53 = *(*(*(a1 + 80) + 8) + 40);
      v54 = *(a1 + 96);
      *buf = 67109634;
      *v68 = v52;
      *&v68[4] = 2114;
      *&v68[6] = v53;
      *&v68[14] = 2048;
      *&v68[16] = v54;
      v46 = "Not propagating favorite state change for album artist (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as it's missing store identifiers";
    }

    else
    {
      if (v16 || [v7 length])
      {
        v32 = *(*(*(a1 + 72) + 8) + 24);
        v33 = *(a1 + 96);
        v34 = *(*(*(a1 + 80) + 8) + 40);
LABEL_33:
        [v3 setLikedState:v32 forArtistWithStoreID:v16 persistentID:v33 timeStamp:v34 completion:0];
        goto LABEL_63;
      }

      v14 = _MPLogCategoryLibrary();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      v49 = *(*(*(a1 + 72) + 8) + 24);
      v50 = *(*(*(a1 + 80) + 8) + 40);
      v51 = *(a1 + 96);
      *buf = 67109634;
      *v68 = v49;
      *&v68[4] = 2114;
      *&v68[6] = v50;
      *&v68[14] = 2048;
      *&v68[16] = v51;
      v46 = "Not propagating favorite state change for album artist (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as cloudLibrary is not enabled and it's missing store identifiers";
    }

LABEL_60:
    v47 = v14;
    v48 = 28;
    goto LABEL_61;
  }

LABEL_64:
}

void __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_167(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __110__MPMediaLibraryDataProviderML3_setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"albumLikedState", @"_albumLikedState", @"albumArtistFavoriteState", @"_albumArtistLikedState", 0}];
  v1 = setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock____cloudPropertiesToUpload;
  setValue_forProperty_ofCollectionWithIdentifier_groupingType_completionBlock____cloudPropertiesToUpload = v0;
}

- (void)setValues:(id)values forProperties:(id)properties forItemPersistentIDs:(id)ds
{
  valuesCopy = values;
  propertiesCopy = properties;
  dsCopy = ds;
  if ([propertiesCopy count] && objc_msgSend(dsCopy, "count"))
  {
    v24 = a2;
    v25 = dsCopy;
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
    if ([propertiesCopy count])
    {
      v14 = 0;
      do
      {
        v15 = [propertiesCopy objectAtIndexedSubscript:v14];
        v16 = [valuesCopy objectAtIndexedSubscript:v14];
        v17 = [MEMORY[0x1E69B3538] propertyForMPMediaEntityProperty:v15];
        if (!v17)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v24 object:self file:@"MPMediaLibraryDataProviderML3.m" lineNumber:1520 description:{@"No ML3Property for MPProperty: %@", v15}];
        }

        [v12 addObject:v17];
        null = [objc_opt_class() _unadjustedValueForMPProperty:v15 withDefaultValue:v16];
        if (!null)
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        [v13 addObject:null];

        ++v14;
      }

      while (v14 < [propertiesCopy count]);
    }

    setValuesWidthLimitedQueue = self->_setValuesWidthLimitedQueue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __78__MPMediaLibraryDataProviderML3_setValues_forProperties_forItemPersistentIDs___block_invoke;
    v28[3] = &unk_1E767C7D0;
    v28[4] = self;
    v29 = v13;
    v30 = v12;
    dsCopy = v25;
    v31 = v25;
    v21 = v12;
    v22 = v13;
    [(NSOperationQueue *)setValuesWidthLimitedQueue addOperationWithBlock:v28];
    cloudUpdateQueue = self->_cloudUpdateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__MPMediaLibraryDataProviderML3_setValues_forProperties_forItemPersistentIDs___block_invoke_3;
    block[3] = &unk_1E76823C0;
    block[4] = self;
    v27 = propertiesCopy;
    dispatch_async(cloudUpdateQueue, block);
  }
}

void __78__MPMediaLibraryDataProviderML3_setValues_forProperties_forItemPersistentIDs___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 88);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__MPMediaLibraryDataProviderML3_setValues_forProperties_forItemPersistentIDs___block_invoke_2;
  v8[3] = &unk_1E76773E8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v3 performDatabaseTransactionWithBlock:v8];
}

void __78__MPMediaLibraryDataProviderML3_setValues_forProperties_forItemPersistentIDs___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) userIdentity];
  v6 = [MPCloudController controllerWithUserIdentity:v2];

  if ([v6 isCloudEnabled])
  {
    v3 = MPTrackCloudPropertiesToAggregate();
    v4 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
    v5 = [v3 intersectsSet:v4];

    if (v5)
    {
      [v6 uploadCloudItemProperties];
    }
  }
}

- (void)setValue:(id)value forProperty:(id)property ofItemWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  v80 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  blockCopy = block;
  v46 = propertyCopy;
  v11 = [MEMORY[0x1E69B3538] propertyForMPMediaEntityProperty:propertyCopy];
  if (v11)
  {
    userIdentity = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
    v13 = [MPCloudController controllerWithUserIdentity:userIdentity];

    v43 = [MEMORY[0x1E69B3538] newWithPersistentID:identifier inLibrary:self->_library];
    isCloudEnabled = [v13 isCloudEnabled];
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    *&v75 = 0;
    *(&v75 + 1) = &v75;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__9726;
    v78 = __Block_byref_object_dispose__9727;
    v79 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v14 = [objc_opt_class() _unadjustedValueForMPProperty:v46 withDefaultValue:valueCopy];
    v15 = MEMORY[0x1E695DF70];
    null = v14;
    if (!v14)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v17 = [v15 arrayWithObject:null];
    if (!v14)
    {
    }

    v18 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
    if ([v11 isEqualToString:*MEMORY[0x1E69B3108]])
    {
      integerValue = [v14 integerValue];
      v66[3] = integerValue;
      [v17 addObject:MEMORY[0x1E695E118]];
      [v18 addObject:*MEMORY[0x1E69B3110]];
      date = [MEMORY[0x1E695DF00] date];
      v21 = *(*(&v75 + 1) + 40);
      *(*(&v75 + 1) + 40) = date;

      [v17 addObject:*(*(&v75 + 1) + 40)];
      [v18 addObject:*MEMORY[0x1E69B3118]];
      *(v62 + 24) = 1;
      if (isCloudEnabled)
      {
        if ([v46 isEqualToString:@"_itemLikedState"])
        {
          if (v66[3] == 2)
          {
            v22 = v18;
            identifierCopy = identifier;
            v24 = v11;
            v25 = v13;
            v26 = v17;
            v40 = *MEMORY[0x1E69B3088];
            v27 = [v43 valueForProperty:?];
            v28 = [v27 intValue] == 0;

            v17 = v26;
            v13 = v25;
            v11 = v24;
            identifier = identifierCopy;
            v18 = v22;
            if (v28 && [v13 favoriteSongAddToLibraryBehavior] != 2)
            {
              [v17 addObject:&unk_1F1509700];
              [v22 addObject:v40];
              [v17 addObject:*(*(&v75 + 1) + 40)];
              [v22 addObject:*MEMORY[0x1E69B2EA0]];
            }
          }
        }
      }

      v29 = os_log_create("com.apple.amp.mediaplayer", "Library_Oversize");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v70 = v17;
        v71 = 2114;
        v72 = v18;
        v73 = 2048;
        identifierCopy2 = identifier;
        _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_DEFAULT, "Setting values=%{public}@ for properties=%{public}@, trackPid=%lld", buf, 0x20u);
      }
    }

    [v43 setValues:v17 forProperties:v18 async:1 withCompletionBlock:blockCopy];
    v41 = v18;
    v30 = v17;
    if (MPTrackCloudPropertiesToUpload_onceToken != -1)
    {
      dispatch_once(&MPTrackCloudPropertiesToUpload_onceToken, &__block_literal_global_709);
    }

    v31 = MPTrackCloudPropertiesToUpload___trackPropertiesToUpload;
    v32 = MPTrackCloudPropertiesToAggregate();
    cloudUpdateQueue = self->_cloudUpdateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__MPMediaLibraryDataProviderML3_setValue_forProperty_ofItemWithIdentifier_completionBlock___block_invoke;
    block[3] = &unk_1E76773C0;
    v60 = isCloudEnabled;
    v48 = v32;
    v49 = v46;
    v50 = v13;
    identifierCopy3 = identifier;
    v51 = v31;
    v52 = v43;
    v56 = &v65;
    v57 = &v75;
    v53 = v14;
    v58 = &v61;
    v54 = v11;
    selfCopy = self;
    v34 = v14;
    v35 = v43;
    v36 = v31;
    v37 = v13;
    v38 = v32;
    dispatch_async(cloudUpdateQueue, block);

    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&v75, 8);

    _Block_object_dispose(&v65, 8);
  }

  else
  {
    v39 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v75) = 138543362;
      *(&v75 + 4) = propertyCopy;
      _os_log_impl(&dword_1A238D000, v39, OS_LOG_TYPE_ERROR, "Could not find track property for property=%{public}@", &v75, 0xCu);
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, 0);
    }
  }
}

void __91__MPMediaLibraryDataProviderML3_setValue_forProperty_ofItemWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  v63[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 128) == 1 && [*(a1 + 32) containsObject:*(a1 + 40)])
  {
    [*(a1 + 48) uploadCloudItemProperties];
  }

  if (![*(a1 + 56) containsObject:*(a1 + 40)])
  {
    goto LABEL_46;
  }

  if ([*(a1 + 40) isEqualToString:@"_itemLikedState"])
  {
    if (*(*(*(a1 + 96) + 8) + 24) && *(*(*(a1 + 104) + 8) + 40))
    {
      v2 = [*(a1 + 64) valueForProperty:*MEMORY[0x1E69B3350]];
      v3 = [v2 unsignedLongLongValue];

      v4 = [*(a1 + 64) valueForProperty:*MEMORY[0x1E69B3308]];
      v5 = [v4 unsignedLongLongValue];

      if (!v5)
      {
        v6 = [*(a1 + 64) valueForProperty:*MEMORY[0x1E69B3368]];
        v5 = [v6 unsignedLongLongValue];
      }

      if (*(a1 + 128) == 1)
      {
        if (v3)
        {
          v7 = *(a1 + 48);
          v8 = *(a1 + 72);
          v62[0] = *(a1 + 40);
          v62[1] = @"likedStateChangedDate";
          v9 = *(*(*(a1 + 104) + 8) + 40);
          v63[0] = v8;
          v63[1] = v9;
          v10 = MEMORY[0x1E695DF20];
          v11 = v63;
          v12 = v62;
          goto LABEL_29;
        }

        if (v5)
        {
          v39 = *(*(*(a1 + 96) + 8) + 24);
          v38 = *(a1 + 48);
          v40 = *(a1 + 120);
          v41 = *(*(*(a1 + 104) + 8) + 40);
          if (v39 == 2)
          {
            [v38 favoriteEntityWithPersistentID:*(a1 + 120) storeID:v5 entityType:0 time:v41 completionHandler:0];
            goto LABEL_46;
          }

LABEL_42:
          [v38 setLikedState:v39 forEntityWithStoreID:v5 persistentID:v40 timeStamp:v41 completion:0];
          goto LABEL_46;
        }

        v14 = _MPLogCategoryLibrary();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v48 = *(*(*(a1 + 96) + 8) + 24);
          v49 = *(*(*(a1 + 104) + 8) + 40);
          v50 = *(a1 + 120);
          *buf = 67109632;
          *v53 = v48;
          *&v53[4] = 2048;
          *&v53[6] = v49;
          *&v53[14] = 2048;
          *&v53[16] = v50;
          v18 = "Not propagating favorite state change for track (likedState=%d, timeStamp=%p) with persistentID=%lld as it's missing store identifiers";
          goto LABEL_17;
        }

LABEL_18:

        goto LABEL_46;
      }

      if (v5 | v3)
      {
        v38 = *(a1 + 48);
        v39 = *(*(*(a1 + 96) + 8) + 24);
        v40 = *(a1 + 120);
        v41 = *(*(*(a1 + 104) + 8) + 40);
        goto LABEL_42;
      }

      v14 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v45 = *(*(*(a1 + 96) + 8) + 24);
      v46 = *(*(*(a1 + 104) + 8) + 40);
      v47 = *(a1 + 120);
      *buf = 67109634;
      *v53 = v45;
      *&v53[4] = 2114;
      *&v53[6] = v46;
      *&v53[14] = 2048;
      *&v53[16] = v47;
      v18 = "Not propagating favorite state change for track (likedState=%d, timeStamp=%{public}@) with persistentID=%lld as cloudLibrary is not enabled and it's missing store identifiers";
    }

    else
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v15 = *(a1 + 120);
      v16 = *(*(*(a1 + 96) + 8) + 24);
      v17 = *(*(*(a1 + 104) + 8) + 40);
      *buf = 134218498;
      *v53 = v15;
      *&v53[8] = 1024;
      *&v53[10] = v16;
      *&v53[14] = 2114;
      *&v53[16] = v17;
      v18 = "Not propagating favorite state change for trackPID=%lld as the request is not valid (likedState=%d, timeStamp=%{public}@";
    }

LABEL_17:
    _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, v18, buf, 0x1Cu);
    goto LABEL_18;
  }

  if (*(a1 + 128) == 1)
  {
    v13 = [*(a1 + 64) valueForProperty:*MEMORY[0x1E69B3350]];
    v3 = [v13 unsignedLongLongValue];
  }

  else
  {
    v3 = 0;
  }

  v19 = [*(a1 + 64) valueForProperty:*MEMORY[0x1E69B3308]];
  v20 = [v19 unsignedLongLongValue];

  if (!v20)
  {
    v21 = [*(a1 + 64) valueForProperty:*MEMORY[0x1E69B3368]];
    v20 = [v21 unsignedLongLongValue];

    if (!v3)
    {
      goto LABEL_30;
    }

LABEL_24:
    v22 = *(a1 + 72);
    if (v22)
    {
      if (*(*(*(a1 + 112) + 8) + 24) != 1)
      {
        v7 = *(a1 + 48);
        v58 = *(a1 + 40);
        v59 = v22;
        v10 = MEMORY[0x1E695DF20];
        v11 = &v59;
        v12 = &v58;
        v27 = 1;
        goto LABEL_44;
      }

      v23 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [*(*(*(a1 + 104) + 8) + 40) timeIntervalSince1970];
        *buf = 134217984;
        *v53 = v24;
        _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "setting time stamp for content taste change=%lld", buf, 0xCu);
      }

      v7 = *(a1 + 48);
      v25 = *(a1 + 72);
      v60[0] = *(a1 + 40);
      v60[1] = @"likedStateChangedDate";
      v26 = *(*(*(a1 + 104) + 8) + 40);
      v61[0] = v25;
      v61[1] = v26;
      v10 = MEMORY[0x1E695DF20];
      v11 = v61;
      v12 = v60;
LABEL_29:
      v27 = 2;
LABEL_44:
      v34 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v27];
      [v7 setItemProperties:v34 forSagaID:v3];
LABEL_45:

      goto LABEL_46;
    }

    goto LABEL_30;
  }

  if (v3)
  {
    goto LABEL_24;
  }

LABEL_30:
  if (!v20 || ![*(a1 + 40) isEqualToString:@"likedState"])
  {
    v34 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 120);
      v37 = *(a1 + 72);
      v36 = *(a1 + 80);
      *buf = 138544386;
      *v53 = v36;
      *&v53[8] = 2048;
      *&v53[10] = v35;
      *&v53[18] = 2048;
      *&v53[20] = v3;
      v54 = 2048;
      v55 = v20;
      v56 = 2048;
      v57 = v37;
      _os_log_impl(&dword_1A238D000, v34, OS_LOG_TYPE_DEFAULT, "Not propagating change for property %{public}@, trackPID=%lld, sagaID=%lld, storeID=%lld, id=%p", buf, 0x34u);
    }

    goto LABEL_45;
  }

  v28 = [*(a1 + 64) valueForProperty:*MEMORY[0x1E69B3138]];
  v29 = [v28 unsignedIntegerValue];
  v30 = 255;
  if (v29 != 0xFF)
  {
    v30 = 0;
  }

  if ((~v29 & 0xFF00) != 0)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 | 0xFF00;
  }

  v32 = vandq_s8(vshlq_u32(vdupq_n_s32(v29), xmmword_1A273DD80), xmmword_1A273DD90);
  *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  v33 = v32.i32[0] | v29 & 0x3210 | v32.i32[1] | (4 * v29) & 0x400 | (4 * ((v29 >> 1) & 1)) | (2 * v29) & 0x800;

  [*(a1 + 48) setLikedState:*(*(*(a1 + 96) + 8) + 24) forEntityWithStoreID:v20 withMediaType:v31 | v33 timeStamp:*(*(*(a1 + 104) + 8) + 40)];
LABEL_46:
  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v42 = *(a1 + 88);
    v43 = *(v42 + 88);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __91__MPMediaLibraryDataProviderML3_setValue_forProperty_ofItemWithIdentifier_completionBlock___block_invoke_155;
    v51[3] = &unk_1E7677398;
    v44 = *(a1 + 104);
    v51[4] = v42;
    v51[5] = v44;
    [v43 databaseConnectionAllowingWrites:1 withBlock:v51];
  }
}

void __91__MPMediaLibraryDataProviderML3_setValue_forProperty_ofItemWithIdentifier_completionBlock___block_invoke_155(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69B34A0] currentDeviceFavoritesPlaylistInLibrary:*(*(a1 + 32) + 88) usingConnection:a2];
  if (v3)
  {
    v4 = v3;
    [v3 setValue:*(*(*(a1 + 40) + 8) + 40) forProperty:*MEMORY[0x1E69B2B48]];
    v3 = v4;
  }
}

- (void)performReadTransactionWithBlock:(id)block
{
  blockCopy = block;
  library = self->_library;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MPMediaLibraryDataProviderML3_performReadTransactionWithBlock___block_invoke;
  v7[3] = &unk_1E7677370;
  v8 = blockCopy;
  v6 = blockCopy;
  [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v7];
}

void __65__MPMediaLibraryDataProviderML3_performReadTransactionWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__MPMediaLibraryDataProviderML3_performReadTransactionWithBlock___block_invoke_2;
  v3[3] = &unk_1E7679CD0;
  v4 = *(a1 + 32);
  [a2 performTransactionWithBlock:v3];
}

- (BOOL)performTransactionWithBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  library = self->_library;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__MPMediaLibraryDataProviderML3_performTransactionWithBlock___block_invoke;
  v8[3] = &unk_1E7677348;
  v10 = &v11;
  v6 = blockCopy;
  v9 = v6;
  [(ML3MusicLibrary *)library performDatabaseTransactionWithBlock:v8];
  LOBYTE(library) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return library;
}

- (void)loadProperties:(id)properties ofCollectionWithIdentifier:(int64_t)identifier groupingType:(int64_t)type completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  blockCopy = block;
  v11 = ML3CollectionEntityClassForGroupingType();
  v12 = v11;
  if (v11 == objc_opt_class())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = propertiesCopy;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v12 = ML3CollectionEntityClassForMPMediaItemCollectionProperty(*(*(&v18 + 1) + 8 * v17));
        if (v12 != v11)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  [(MPMediaLibraryDataProviderML3 *)self _loadProperties:propertiesCopy ofEntityWithIdentifier:identifier ML3EntityClass:v12 completionBlock:blockCopy, v18];
}

- (void)loadProperties:(id)properties ofItemWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  blockCopy = block;
  propertiesCopy = properties;
  [(MPMediaLibraryDataProviderML3 *)self _loadProperties:propertiesCopy ofEntityWithIdentifier:identifier ML3EntityClass:objc_opt_class() completionBlock:blockCopy];
}

- (void)loadValueForAggregateFunction:(id)function onCollectionsForProperty:(id)property queryCriteria:(id)criteria completionBlock:(id)block
{
  blockCopy = block;
  criteriaCopy = criteria;
  propertyCopy = property;
  functionCopy = function;
  v14 = ML3CollectionEntityClassForMPMediaItemCollectionProperty(propertyCopy);
  v15 = [criteriaCopy ML3CollectionsQueryInLibrary:self->_library];

  [(MPMediaLibraryDataProviderML3 *)self _loadValueForAggregateFunction:functionCopy entityClass:v14 property:propertyCopy query:v15 completionBlock:blockCopy];
}

- (void)loadValueForAggregateFunction:(id)function onItemsForProperty:(id)property queryCriteria:(id)criteria completionBlock:(id)block
{
  blockCopy = block;
  criteriaCopy = criteria;
  propertyCopy = property;
  functionCopy = function;
  v14 = objc_opt_class();
  v15 = [criteriaCopy ML3ItemsQueryInLibrary:self->_library];

  [(MPMediaLibraryDataProviderML3 *)self _loadValueForAggregateFunction:functionCopy entityClass:v14 property:propertyCopy query:v15 completionBlock:blockCopy];
}

- (void)enumerateCollectionIdentifiersForQueryCriteria:(id)criteria ordered:(BOOL)ordered cancelBlock:(id)block usingBlock:(id)usingBlock
{
  orderedCopy = ordered;
  v40 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  selfCopy = self;
  v10 = [criteriaCopy ML3CollectionsQueryInLibrary:self->_library];
  v30 = criteriaCopy;
  collectionPropertiesToFetch = [criteriaCopy collectionPropertiesToFetch];
  v12 = [collectionPropertiesToFetch count];
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
  entityClass = [v10 entityClass];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = collectionPropertiesToFetch;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v22 = [entityClass propertyForMPMediaEntityProperty:v21];
        if (v22)
        {
          [v13 addObject:v22];
          [v14 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  v23 = [v14 count];
  v24 = malloc_type_calloc(v23, 8uLL, 0x80040B8603338uLL);
  [v14 getObjects:v24 range:{0, v23}];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __111__MPMediaLibraryDataProviderML3_enumerateCollectionIdentifiersForQueryCriteria_ordered_cancelBlock_usingBlock___block_invoke;
  v31[3] = &unk_1E7677320;
  v33 = v23;
  v34 = v24;
  v31[4] = selfCopy;
  v32 = usingBlockCopy;
  v25 = usingBlockCopy;
  [v10 enumeratePersistentIDsAndProperties:v13 ordered:orderedCopy cancelBlock:blockCopy usingBlock:v31];
  free(v24);
}

void __111__MPMediaLibraryDataProviderML3_enumerateCollectionIdentifiersForQueryCriteria_ordered_cancelBlock_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (*(a1 + 48))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(a1 + 48)];
    if (*(a1 + 48))
    {
      v7 = 0;
      do
      {
        v8 = [*(a1 + 32) adjustedValueForMPProperty:*(*(a1 + 56) + 8 * v7) ofEntity:0 withDefaultValue:*(a3 + 8 * v7)];
        [v6 setValue:v8 forKey:*(*(a1 + 56) + 8 * v7)];

        ++v7;
      }

      while (v7 < *(a1 + 48));
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v5);
}

- (void)enumerateItemIdentifiersForQueryCriteria:(id)criteria ordered:(BOOL)ordered cancelBlock:(id)block usingBlock:(id)usingBlock
{
  orderedCopy = ordered;
  usingBlockCopy = usingBlock;
  library = self->_library;
  blockCopy = block;
  v13 = [criteria ML3ItemsQueryInLibrary:library];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__MPMediaLibraryDataProviderML3_enumerateItemIdentifiersForQueryCriteria_ordered_cancelBlock_usingBlock___block_invoke;
  v15[3] = &unk_1E76772F8;
  v16 = usingBlockCopy;
  v14 = usingBlockCopy;
  [v13 enumeratePersistentIDsAndProperties:0 ordered:orderedCopy cancelBlock:blockCopy usingBlock:v15];
}

- (void)_addGlobalPlaylistsToLibraryDatabase:(id)database asLibraryOwned:(BOOL)owned completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  completionCopy = completion;
  v10 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = databaseCopy;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "Fetching global playlists with IDs %{public}@...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9726;
  v25 = __Block_byref_object_dispose__9727;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = objc_alloc_init(MEMORY[0x1E69E4610]);
  _storePlatformRequestContext = [(MPMediaLibraryDataProviderML3 *)self _storePlatformRequestContext];
  [v11 setRequestContext:_storePlatformRequestContext];

  [v11 setPersonalizationStyle:0];
  [v11 setKeyProfile:*MEMORY[0x1E69E42A8]];
  [v11 setItemIdentifiers:databaseCopy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__MPMediaLibraryDataProviderML3__addGlobalPlaylistsToLibraryDatabase_asLibraryOwned_completion___block_invoke;
  v16[3] = &unk_1E76772D0;
  v13 = databaseCopy;
  ownedCopy = owned;
  v17 = v13;
  selfCopy = self;
  p_buf = &buf;
  v14 = completionCopy;
  v19 = v14;
  v15 = [v11 performWithResponseHandler:v16];

  _Block_object_dispose(&buf, 8);
}

void __96__MPMediaLibraryDataProviderML3__addGlobalPlaylistsToLibraryDatabase_asLibraryOwned_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v44 = v5;
  if (v5 && !v6)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v41 = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = a1;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v50;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v49 + 1) + 8 * i);
          v15 = [v44 itemForIdentifier:v14];
          v16 = os_log_create("com.apple.amp.mediaplayer", "Library");
          v17 = v16;
          if (v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v58 = v14;
              _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "Found playlist data for %{public}@", buf, 0xCu);
            }

            [v8 addObject:v15];
            if (*(a1 + 64) == 1)
            {
              [v41 addObject:v15];
            }
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v58 = v14;
              _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "Did not find playlist data for %{public}@", buf, 0xCu);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v11);
    }

    v18 = v8;
    if ([v8 count])
    {
      v19 = [objc_alloc(MEMORY[0x1E69B3528]) initWithLookupItems:v8];
      if (*(a1 + 64) == 1)
      {
        v20 = [objc_alloc(MEMORY[0x1E69B3530]) initWithLookupItems:v41];
      }

      else
      {
        v20 = 0;
      }

      v32 = [*(v42 + 40) library];
      v31 = [v32 databasePath];

      v33 = objc_alloc(MEMORY[0x1E69B34E8]);
      v34 = [v20 trackData];
      v35 = [v19 playlistsData];
      v36 = [v33 initWithLibraryPath:v31 trackData:v34 playlistData:v35];

      [v36 setTracksAreLibraryOwnedContent:0];
      [v36 setPlaylistsAreLibraryOwnedContent:*(v42 + 64)];
      [v36 setPendingMatch:0];
      v37 = [MEMORY[0x1E69B3548] sharedMediaLibraryService];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __96__MPMediaLibraryDataProviderML3__addGlobalPlaylistsToLibraryDatabase_asLibraryOwned_completion___block_invoke_139;
      v45[3] = &unk_1E76772A8;
      v38 = *(v42 + 32);
      v39 = *(v42 + 40);
      v46 = v38;
      v47 = v39;
      v43 = *(v42 + 48);
      v40 = v43;
      v48 = v43;
      [v37 performImport:v36 fromSource:6 withProgressBlock:0 completionHandler:v45];

      v7 = 0;
    }

    else
    {
      v27 = *(a1 + 48);
      v7 = 0;
      if (!v27)
      {
LABEL_33:

        goto LABEL_34;
      }

      v28 = *(*(*(a1 + 56) + 8) + 40);
      v29 = MEMORY[0x1E696ABC0];
      v30 = objc_opt_class();
      v19 = NSStringFromClass(v30);
      v55 = *MEMORY[0x1E696A578];
      v56 = @"items not found";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v31 = [v29 errorWithDomain:v19 code:-1 userInfo:v20];
      (*(v27 + 16))(v27, v28, v31);
    }

    goto LABEL_33;
  }

  if (v6)
  {
    v21 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v58 = v7;
      _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_ERROR, "Error fetching playlist data. %{public}@", buf, 0xCu);
    }

    v18 = v7;
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v53 = *MEMORY[0x1E696A578];
    v54 = @"item not found";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v18 = [v22 errorWithDomain:v24 code:-1 userInfo:v25];
  }

  v26 = *(a1 + 48);
  if (v26)
  {
    (*(v26 + 16))(v26, 0, v18);
  }

LABEL_34:
}

void __96__MPMediaLibraryDataProviderML3__addGlobalPlaylistsToLibraryDatabase_asLibraryOwned_completion___block_invoke_139(uint64_t a1, int a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    if (v8)
    {
      v10 = MSVPropertyListDataClasses();
      v11 = MSVUnarchivedObjectOfClasses();
    }

    else
    {
      v11 = 0;
    }

    v30 = v9;
    v31 = v7;
    v13 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v11;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "Successfully imported playlist data. Imported tracks: %@", buf, 0xCu);
    }

    v29 = v11;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = *(a1 + 32);
    v14 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      v17 = *MEMORY[0x1E69B2AD0];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          v20 = MEMORY[0x1E69B34A0];
          v21 = [*(a1 + 40) library];
          v22 = [MEMORY[0x1E69B3488] predicateWithProperty:v17 equalToValue:v19];
          v23 = [v20 queryWithLibrary:v21 predicate:v22 options:1];

          v24 = [v23 anyEntityPersistentID];
          v25 = *(*(*(a1 + 56) + 8) + 40);
          v26 = [MEMORY[0x1E696AD98] numberWithLongLong:v24];
          [v25 setObject:v26 forKey:v19];

          v27 = os_log_create("com.apple.amp.mediaplayer", "Library");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v38 = v24;
            v39 = 2114;
            v40 = v19;
            _os_log_impl(&dword_1A238D000, v27, OS_LOG_TYPE_DEFAULT, "found container_pid:%lld for global playlistid:%{public}@", buf, 0x16u);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v15);
    }

    v9 = v30;
    v7 = v31;
    v12 = v29;
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Error importing playlist data.", buf, 2u);
    }
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))(v28, *(*(*(a1 + 56) + 8) + 40), v7);
  }
}

- (void)addToLocalDeviceLibraryGlobalPlaylistWithID:(id)d completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = dCopy;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "import global playlist with id %@ to local device library", buf, 0xCu);
  }

  v13 = dCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__MPMediaLibraryDataProviderML3_addToLocalDeviceLibraryGlobalPlaylistWithID_completion___block_invoke;
  v11[3] = &unk_1E767C5D0;
  v12 = completionCopy;
  v10 = completionCopy;
  [(MPMediaLibraryDataProviderML3 *)self _addGlobalPlaylistsToLibraryDatabase:v9 asLibraryOwned:1 completion:v11];
}

uint64_t __88__MPMediaLibraryDataProviderML3_addToLocalDeviceLibraryGlobalPlaylistWithID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addGlobalPlaylistWithID:(id)d andAddToCloudLibrary:(BOOL)library completion:(id)completion
{
  libraryCopy = library;
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MPMediaLibraryDataProviderML3_addGlobalPlaylistWithID_andAddToCloudLibrary_completion___block_invoke;
  aBlock[3] = &unk_1E76816D0;
  v27 = completionCopy;
  v10 = completionCopy;
  v11 = _Block_copy(aBlock);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __89__MPMediaLibraryDataProviderML3_addGlobalPlaylistWithID_andAddToCloudLibrary_completion___block_invoke_2;
  v21 = &unk_1E7677280;
  v25 = libraryCopy;
  selfCopy = self;
  v12 = dCopy;
  v23 = v12;
  v24 = v11;
  v13 = v11;
  v14 = _Block_copy(&v18);
  v15 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "no";
    if (libraryCopy)
    {
      v16 = "yes";
    }

    *buf = 138412546;
    v30 = v12;
    v31 = 2080;
    v32 = v16;
    _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "import global playlist with id %@ - add to cloud library: %s...", buf, 0x16u);
  }

  v28 = v12;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:{1, v18, v19, v20, v21, selfCopy}];
  [(MPMediaLibraryDataProviderML3 *)self _addGlobalPlaylistsToLibraryDatabase:v17 asLibraryOwned:1 completion:v14];
}

uint64_t __89__MPMediaLibraryDataProviderML3_addGlobalPlaylistWithID_andAddToCloudLibrary_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__MPMediaLibraryDataProviderML3_addGlobalPlaylistWithID_andAddToCloudLibrary_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) userIdentity];
    v3 = [MPCloudController controllerWithUserIdentity:v2];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__MPMediaLibraryDataProviderML3_addGlobalPlaylistWithID_andAddToCloudLibrary_completion___block_invoke_3;
    v6[3] = &unk_1E767C5D0;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v3 addStorePlaylistWithGlobalID:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __89__MPMediaLibraryDataProviderML3_addGlobalPlaylistWithID_andAddToCloudLibrary_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v4;
      v7 = "Failed to add global playlist to cloud library. %{public}@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_1A238D000, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    v7 = "Successfully added playlist to cloud library.";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v4);
}

- (void)removeArtworkForEntityPersistentID:(unint64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType
{
  library = self->_library;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__MPMediaLibraryDataProviderML3_removeArtworkForEntityPersistentID_entityType_artworkType_sourceType___block_invoke;
  v7[3] = &unk_1E7677258;
  v7[4] = self;
  v7[5] = d;
  v7[6] = type;
  v7[7] = artworkType;
  v7[8] = sourceType;
  [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:1 withBlock:v7];
}

void __102__MPMediaLibraryDataProviderML3_removeArtworkForEntityPersistentID_entityType_artworkType_sourceType___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 88);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a2;
  [v4 removeArtworkTokenForEntityPersistentID:v3 entityType:v5 artworkType:v6 sourceType:v7 usingConnection:v8];
  [*(a1[4] + 88) updateBestArtworkTokenForEntityPersistentID:a1[5] entityType:a1[6] artworkType:a1[7] retrievalTime:0 preserveExistingAvailableToken:v8 usingConnection:0.0];
}

- (BOOL)importOriginalArtworkFromImageData:(id)data withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unint64_t)mediaType
{
  mediaTypeCopy = mediaType;
  v12 = ~mediaType;
  tokenCopy = token;
  dataCopy = data;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = 255;
  }

  if ((v12 & 0xFF00) == 0)
  {
    v15 |= 0xFF00u;
  }

  v16 = vandq_s8(vshlq_u32(vdupq_n_s32(mediaTypeCopy), xmmword_1A273DDC0), xmmword_1A273DDD0);
  *v16.i8 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v17 = [(ML3MusicLibrary *)self->_library importOriginalArtworkFromImageData:dataCopy withArtworkToken:tokenCopy artworkType:type sourceType:sourceType mediaType:v16.i32[0] | mediaTypeCopy & 0x3210 | v16.i32[1] | (mediaTypeCopy >> 1) & 2 | (mediaTypeCopy >> 2) & 0x100 | (mediaTypeCopy >> 1) & 0x400 | v15];

  return v17;
}

- (void)importArtworkTokenForEntityPersistentID:(unint64_t)d entityType:(int64_t)type artworkToken:(id)token artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType
{
  tokenCopy = token;
  [(ML3MusicLibrary *)self->_library importArtworkTokenForEntityPersistentID:d entityType:type artworkToken:tokenCopy artworkType:artworkType sourceType:sourceType];
}

- (void)_importStoreAlbumArtistElements:(id)elements withReferralObject:(id)object withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  completionCopy = completion;
  v9 = os_log_create("com.apple.amp.mediaplayer", "Library_Oversize");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = [elementsCopy count];
    v26 = 2114;
    v27 = elementsCopy;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "Adding %llu store album artists to device only library %{public}@", buf, 0x16u);
  }

  v10 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "Parsing album artist data...", buf, 2u);
  }

  v11 = [[MPStoreItemImportAlbumArtistData alloc] initWithAlbumArtistImportElements:elementsCopy];
  v12 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    albumArtistCount = [(ML3StoreItemAlbumArtistData *)v11 albumArtistCount];
    *buf = 134217984;
    v25 = albumArtistCount;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "Importing %lu album artists...", buf, 0xCu);
  }

  library = [(MPMediaLibraryDataProviderML3 *)self library];
  databasePath = [library databasePath];

  v16 = objc_alloc(MEMORY[0x1E69B34E8]);
  albumArtistData = [(ML3StoreItemAlbumArtistData *)v11 albumArtistData];
  v18 = MSVTCCIdentityForCurrentProcess();
  v19 = [v16 initWithLibraryPath:databasePath trackData:0 playlistData:0 albumArtistData:albumArtistData albumData:0 clientIdentity:v18];

  mEMORY[0x1E69B3548] = [MEMORY[0x1E69B3548] sharedMediaLibraryService];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __99__MPMediaLibraryDataProviderML3__importStoreAlbumArtistElements_withReferralObject_withCompletion___block_invoke;
  v22[3] = &unk_1E7677208;
  v23 = completionCopy;
  v21 = completionCopy;
  [mEMORY[0x1E69B3548] performImport:v19 fromSource:6 withProgressBlock:0 completionHandler:v22];
}

void __99__MPMediaLibraryDataProviderML3__importStoreAlbumArtistElements_withReferralObject_withCompletion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "Successfully imported artist data.", &v14, 2u);
    }
  }

  if (v8)
  {
    v10 = MSVPropertyListDataClasses();
    v11 = MSVUnarchivedObjectOfClasses();
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "Importing album artists pids=%{public}@", &v14, 0xCu);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v11, v7);
  }
}

- (void)_importStoreItemElements:(id)elements withReferralObject:(id)object addTracksToDeviceLibraryOnly:(BOOL)only andAddTracksToCloudLibrary:(BOOL)library usingCloudAdamID:(int64_t)d withCompletion:(id)completion
{
  libraryCopy = library;
  onlyCopy = only;
  v43 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  objectCopy = object;
  completionCopy = completion;
  v16 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v36 = [elementsCopy count];
    v37 = 1024;
    v38 = libraryCopy;
    v39 = 1024;
    v40 = onlyCopy;
    v41 = 2114;
    v42 = elementsCopy;
    _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, "Adding %llu store items to library (add to cloud library: %{BOOL}u, local library:%{BOOL}u): %{public}@", buf, 0x22u);
  }

  v17 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "Parsing track data...", buf, 2u);
  }

  v18 = [[MPStoreItemImportTrackData alloc] initWithImportElements:elementsCopy];
  v19 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    trackCount = [(ML3StoreItemTrackData *)v18 trackCount];
    *buf = 134217984;
    v36 = trackCount;
    _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_DEFAULT, "Importing %lu tracks...", buf, 0xCu);
  }

  library = [(MPMediaLibraryDataProviderML3 *)self library];
  databasePath = [library databasePath];

  v23 = objc_alloc(MEMORY[0x1E69B34E8]);
  trackData = [(ML3StoreItemTrackData *)v18 trackData];
  v25 = [v23 initWithLibraryPath:databasePath trackData:trackData playlistData:0];

  [v25 setTracksAreLibraryOwnedContent:onlyCopy | libraryCopy];
  [v25 setPendingMatch:onlyCopy | libraryCopy];
  mEMORY[0x1E69B3548] = [MEMORY[0x1E69B3548] sharedMediaLibraryService];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __165__MPMediaLibraryDataProviderML3__importStoreItemElements_withReferralObject_addTracksToDeviceLibraryOnly_andAddTracksToCloudLibrary_usingCloudAdamID_withCompletion___block_invoke;
  v30[3] = &unk_1E7677230;
  v34 = libraryCopy;
  v30[4] = self;
  v31 = objectCopy;
  v32 = completionCopy;
  dCopy = d;
  v27 = completionCopy;
  v28 = objectCopy;
  [mEMORY[0x1E69B3548] performImport:v25 fromSource:6 withProgressBlock:0 completionHandler:v30];
}

void __165__MPMediaLibraryDataProviderML3__importStoreItemElements_withReferralObject_addTracksToDeviceLibraryOnly_andAddTracksToCloudLibrary_usingCloudAdamID_withCompletion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "Successfully imported track data.", buf, 2u);
    }

    if (v8)
    {
      v11 = MSVPropertyListDataClasses();
      v12 = MSVUnarchivedObjectOfClasses();
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    if (*(a1 + 64) == 1)
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 56);
        *buf = 134217984;
        v25 = v15;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "Adding %lld to cloud library...", buf, 0xCu);
      }

      v16 = [*(a1 + 32) userIdentity];
      v17 = [MPCloudController controllerWithUserIdentity:v16];
      v18 = *(a1 + 40);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __165__MPMediaLibraryDataProviderML3__importStoreItemElements_withReferralObject_addTracksToDeviceLibraryOnly_andAddTracksToCloudLibrary_usingCloudAdamID_withCompletion___block_invoke_133;
      v21[3] = &unk_1E7677190;
      v19 = *(a1 + 56);
      v23 = *(a1 + 48);
      v22 = v12;
      [v17 addStoreItemWithAdamID:v19 referralObject:v18 completionHandler:v21];
    }

    else
    {
      v20 = *(a1 + 48);
      if (v20)
      {
        (*(v20 + 16))(v20, v12, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v7;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "Failed to import track data. %{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v7);
    }
  }
}

void __165__MPMediaLibraryDataProviderML3__importStoreItemElements_withReferralObject_addTracksToDeviceLibraryOnly_andAddTracksToCloudLibrary_usingCloudAdamID_withCompletion___block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "Error adding track(s) to cloud library. %{public}@", &v12, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_10:
      v10();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "Successfully added track(s) to cloud library.", &v12, 2u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v10 = *(v11 + 16);
      goto LABEL_10;
    }
  }
}

- (void)addPlaylistStoreItemsForLookupItems:(id)items withCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  itemsCopy = items;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "Parsing track data...", buf, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x1E69B3530]) initWithLookupItems:itemsCopy];
  userIdentity = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
  v11 = [MPCloudController controllerWithUserIdentity:userIdentity];
  cloudAddToPlaylistBehavior = [v11 cloudAddToPlaylistBehavior];

  v13 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    trackCount = [v9 trackCount];
    *buf = 134217984;
    v26 = trackCount;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "Importing %lu tracks...", buf, 0xCu);
  }

  v15 = cloudAddToPlaylistBehavior != 2;

  library = [(MPMediaLibraryDataProviderML3 *)self library];
  databasePath = [library databasePath];

  v18 = objc_alloc(MEMORY[0x1E69B34E8]);
  trackData = [v9 trackData];
  v20 = [v18 initWithLibraryPath:databasePath trackData:trackData playlistData:0];

  [v20 setTracksAreLibraryOwnedContent:v15];
  [v20 setPendingMatch:v15];
  mEMORY[0x1E69B3548] = [MEMORY[0x1E69B3548] sharedMediaLibraryService];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__MPMediaLibraryDataProviderML3_addPlaylistStoreItemsForLookupItems_withCompletion___block_invoke;
  v23[3] = &unk_1E7677208;
  v24 = completionCopy;
  v22 = completionCopy;
  [mEMORY[0x1E69B3548] performImport:v20 fromSource:6 withProgressBlock:0 completionHandler:v23];
}

void __84__MPMediaLibraryDataProviderML3_addPlaylistStoreItemsForLookupItems_withCompletion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "Successfully imported track data.", &v15, 2u);
    }

    v11 = MSVPropertyListDataClasses();
    v12 = MSVUnarchivedObjectOfClasses();

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, v12, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "Failed to import track data. %{public}@", &v15, 0xCu);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v7);
    }
  }
}

- (void)performStoreAlbumArtistLibraryImport:(id)import withCompletion:(id)completion
{
  v52[0] = *MEMORY[0x1E69E9840];
  importCopy = import;
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = importCopy;
  importElements = [importCopy importElements];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = [importElements countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    v13 = 0x1E696A000uLL;
    do
    {
      v14 = 0;
      v40 = v11;
      do
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(importElements);
        }

        v15 = *(*(&v47 + 1) + 8 * v14);
        storeItem = [v15 storeItem];

        if (storeItem)
        {
          [v6 addObject:v15];
        }

        else
        {
          quot = [v15 storeItemID];
          if (quot)
          {
            v18 = quot;
            v19 = v12;
            v20 = v8;
            v21 = v13;
            v22 = v6;
            v23 = importElements;
            v24 = v7;
            v25 = v52 + 1;
            do
            {
              v26 = lldiv(quot, 10);
              quot = v26.quot;
              if (v26.rem >= 0)
              {
                LOBYTE(v27) = v26.rem;
              }

              else
              {
                v27 = -v26.rem;
              }

              *(v25 - 2) = v27 + 48;
              v28 = (v25 - 2);
              --v25;
            }

            while (v26.quot);
            if (v18 < 0)
            {
              *(v25 - 2) = 45;
              v28 = (v25 - 2);
            }

            v29 = CFStringCreateWithBytes(0, v28, v52 - v28, 0x8000100u, 0);
            v7 = v24;
            importElements = v23;
            v6 = v22;
            v13 = v21;
            v8 = v20;
            v12 = v19;
            v11 = v40;
          }

          else
          {
            v29 = @"0";
          }

          [v7 addObject:v29];
        }

        v30 = [*(v13 + 3480) numberWithLongLong:{objc_msgSend(v15, "storeItemID")}];
        [v8 setObject:v15 forKey:v30];

        ++v14;
      }

      while (v14 != v11);
      v11 = [importElements countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    referralObject = objc_alloc_init(MEMORY[0x1E69E4610]);
    _storePlatformRequestContext = [(MPMediaLibraryDataProviderML3 *)self _storePlatformRequestContext];
    [referralObject setRequestContext:_storePlatformRequestContext];

    [referralObject setItemIdentifiers:v7];
    [referralObject setPersonalizationStyle:0];
    [referralObject setKeyProfile:*MEMORY[0x1E69E42A8]];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __85__MPMediaLibraryDataProviderML3_performStoreAlbumArtistLibraryImport_withCompletion___block_invoke;
    v41[3] = &unk_1E76771E0;
    v33 = completionCopy;
    v46 = completionCopy;
    v42 = v8;
    v43 = v6;
    selfCopy = self;
    v34 = v7;
    v35 = v39;
    v45 = v39;
    v36 = [referralObject performWithResponseHandler:v41];
  }

  else
  {
    v34 = v7;
    v35 = v39;
    referralObject = [v39 referralObject];
    v33 = completionCopy;
    [(MPMediaLibraryDataProviderML3 *)self _importStoreAlbumArtistElements:v6 withReferralObject:referralObject withCompletion:completionCopy];
  }
}

void __85__MPMediaLibraryDataProviderML3_performStoreAlbumArtistLibraryImport_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Error fetching store content for item add. %{public}@", buf, 0xCu);
    }

    v8 = *(a1 + 64);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    [v5 allItems];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "storeAdamID")}];
          v16 = [v14 objectForKey:v15];
          v17 = [v16 additionalTrackMetadata];

          v18 = [MPStoreItemLibraryImportLookupElement alloc];
          v19 = [v13 metadataDictionary];
          v20 = [(MPStoreItemLibraryImportLookupElement *)v18 initWithLookupDictionary:v19 additionalTrackMetadata:v17];

          [*(a1 + 40) addObject:v20];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v23 = [*(a1 + 56) referralObject];
    [v21 _importStoreAlbumArtistElements:v22 withReferralObject:v23 withCompletion:*(a1 + 64)];

    v6 = 0;
  }
}

- (void)performStoreItemLibraryImport:(id)import withCompletion:(id)completion
{
  v57 = *MEMORY[0x1E69E9840];
  importCopy = import;
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = importCopy;
  importElements = [importCopy importElements];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10 = [importElements countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(importElements);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        storeItem = [v14 storeItem];

        if (storeItem)
        {
          [v6 addObject:v14];
        }

        else
        {
          v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v14, "storeItemID")}];
          [v7 addObject:v16];
        }

        v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v14, "storeItemID")}];
        [v8 setObject:v14 forKey:v17];
      }

      v11 = [importElements countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v11);
  }

  v18 = [v7 count];
  if (v18)
  {
    v19 = v18;
    if (v18 == 1)
    {
      firstObject = [v7 firstObject];
      longLongValue = [firstObject longLongValue];
    }

    else
    {
      longLongValue = 0;
    }

    referralObject = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v19];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v27 = v7;
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v48;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v27);
          }

          stringValue = [*(*(&v47 + 1) + 8 * j) stringValue];
          [referralObject addObject:stringValue];
        }

        v29 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v29);
    }

    v33 = objc_alloc_init(MEMORY[0x1E69E4610]);
    _storePlatformRequestContext = [(MPMediaLibraryDataProviderML3 *)self _storePlatformRequestContext];
    [v33 setRequestContext:_storePlatformRequestContext];

    [v33 setItemIdentifiers:referralObject];
    [v33 setPersonalizationStyle:0];
    [v33 setKeyProfile:*MEMORY[0x1E69E42A8]];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __78__MPMediaLibraryDataProviderML3_performStoreItemLibraryImport_withCompletion___block_invoke;
    v40[3] = &unk_1E76771B8;
    v26 = completionCopy;
    v45 = completionCopy;
    v41 = v8;
    v42 = v6;
    selfCopy = self;
    v21 = v39;
    v44 = v39;
    v46 = longLongValue;
    v35 = [v33 performWithResponseHandler:v40];
  }

  else
  {
    v21 = v39;
    referralObject = [v39 referralObject];
    addToDeviceLibraryOnly = [v39 addToDeviceLibraryOnly];
    addToCloudLibrary = [v39 addToCloudLibrary];
    v25 = addToDeviceLibraryOnly;
    v26 = completionCopy;
    [(MPMediaLibraryDataProviderML3 *)self _importStoreItemElements:v6 withReferralObject:referralObject addTracksToDeviceLibraryOnly:v25 andAddTracksToCloudLibrary:addToCloudLibrary usingCloudAdamID:0 withCompletion:completionCopy];
  }
}

void __78__MPMediaLibraryDataProviderML3_performStoreItemLibraryImport_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Error fetching store content for item add. %{public}@", buf, 0xCu);
    }

    v8 = *(a1 + 64);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    [v5 allItems];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "storeAdamID")}];
          v16 = [v14 objectForKey:v15];
          v17 = [v16 additionalTrackMetadata];

          v18 = [MPStoreItemLibraryImportLookupElement alloc];
          v19 = [v13 metadataDictionary];
          v20 = [(MPStoreItemLibraryImportLookupElement *)v18 initWithLookupDictionary:v19 additionalTrackMetadata:v17];

          [*(a1 + 40) addObject:v20];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v23 = [*(a1 + 56) referralObject];
    [v21 _importStoreItemElements:v22 withReferralObject:v23 addTracksToDeviceLibraryOnly:objc_msgSend(*(a1 + 56) andAddTracksToCloudLibrary:"addToDeviceLibraryOnly") usingCloudAdamID:objc_msgSend(*(a1 + 56) withCompletion:{"addToCloudLibrary"), *(a1 + 72), *(a1 + 64)}];

    v6 = 0;
  }
}

- (id)_storePlatformRequestContext
{
  v3 = objc_alloc(MEMORY[0x1E69E4618]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MPMediaLibraryDataProviderML3__storePlatformRequestContext__block_invoke;
  v6[3] = &unk_1E767D580;
  v6[4] = self;
  v4 = [v3 initWithBlock:v6];

  return v4;
}

void __61__MPMediaLibraryDataProviderML3__storePlatformRequestContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userIdentity];
  [v3 setIdentity:v4];

  v5 = [MEMORY[0x1E69E43B0] defaultInfo];
  v14 = [v5 mutableCopy];

  v6 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v7 = [v6 isWatch];
  v8 = @"Music";
  if (v7)
  {
    v8 = @"NanoMusic";
  }

  v9 = v8;

  v10 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v11 = [v10 isWatch];
  v12 = @"3.1";
  if (v11)
  {
    v12 = @"2";
  }

  v13 = v12;

  [v14 setClientIdentifier:v9];
  [v14 setClientVersion:v13];

  [v3 setClientInfo:v14];
}

- (void)sdk_addItemWithOpaqueID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  userIdentity = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
  v9 = [MPCloudController controllerWithUserIdentity:userIdentity];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MPMediaLibraryDataProviderML3_sdk_addItemWithOpaqueID_withCompletion___block_invoke;
  v11[3] = &unk_1E7677190;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 sdk_addStoreItemWithOpaqueID:dCopy completionHandler:v11];
}

void __72__MPMediaLibraryDataProviderML3_sdk_addItemWithOpaqueID_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    if (v6)
    {
      (*(v7 + 16))(v7, 0, v6);
    }

    else
    {
      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = v5;
      v8 = [v5 allValues];
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = [*(a1 + 32) mediaLibrary];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v8;
      v10 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v38 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = [MPMediaPropertyPredicate predicateWithValue:*(*(&v37 + 1) + 8 * i) forProperty:@"storeSagaID"];
            v15 = +[MPMediaQuery songsQuery];
            [v15 setMediaLibrary:v31];
            [v15 addFilterPredicate:v14];
            v16 = [v15 items];
            [v9 addObjectsFromArray:v16];
            [v32 addObjectsFromArray:v16];
          }

          v11 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v11);
      }

      v17 = v9;
      if (![v9 count] && objc_msgSend(obj, "count"))
      {
        v18 = [obj firstObject];
        v19 = [MPMediaPropertyPredicate predicateWithValue:v18 forProperty:@"storeCloudID"];
        v20 = +[MPMediaQuery playlistsQuery];
        [v20 setMediaLibrary:v31];
        v28 = v19;
        [v20 addFilterPredicate:v19];
        v21 = [v20 collections];
        [v17 addObjectsFromArray:v21];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v34;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v34 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v33 + 1) + 8 * j) items];
              [v32 addObjectsFromArray:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v24);
        }
      }

      (*(*(a1 + 40) + 16))();
      MPFetchArtworkForAddedMediaItems(v32);

      v6 = 0;
      v5 = v29;
    }
  }
}

- (void)addTracksToMyLibrary:(id)library
{
  v4 = [library valueForKey:@"persistentID"];
  library = self->_library;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MPMediaLibraryDataProviderML3_addTracksToMyLibrary___block_invoke;
  v7[3] = &unk_1E7677168;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [(ML3MusicLibrary *)library performDatabaseTransactionWithBlock:v7];
}

uint64_t __54__MPMediaLibraryDataProviderML3_addTracksToMyLibrary___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3538];
  v9 = *MEMORY[0x1E69B3088];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [v3 setValues:&unk_1F1509D90 forProperties:v6 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(*(a1 + 40) + 88) usingConnection:{v5, v9, v10}];

  return v7;
}

- (id)multiverseIdentifierForCollectionWithPersistentID:(int64_t)d groupingType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    multiverseIdentifier = 0;
  }

  else
  {
    v4 = [objc_alloc(**(&unk_1E76778D8 + type - 1)) initWithPersistentID:d inLibrary:self->_library];
    multiverseIdentifier = [v4 multiverseIdentifier];
  }

  return multiverseIdentifier;
}

- (id)multiverseIdentifierForTrackWithPersistentID:(int64_t)d
{
  v3 = [objc_alloc(MEMORY[0x1E69B3538]) initWithPersistentID:d inLibrary:self->_library];
  multiverseIdentifier = [v3 multiverseIdentifier];

  return multiverseIdentifier;
}

- (void)loadQueryCriteria:(id)criteria countOfCollectionsWithCompletionBlock:(id)block
{
  library = self->_library;
  blockCopy = block;
  v8 = [criteria ML3CollectionsQueryInLibrary:library];
  (*(block + 2))(blockCopy, [v8 countOfEntities]);
}

- (void)loadQueryCriteria:(id)criteria countOfItemsWithCompletionBlock:(id)block
{
  library = self->_library;
  blockCopy = block;
  v8 = [criteria ML3ItemsQueryInLibrary:library];
  (*(block + 2))(blockCopy, [v8 countOfEntities]);
}

- (void)loadQueryCriteria:(id)criteria hasCollectionsWithCompletionBlock:(id)block
{
  library = self->_library;
  blockCopy = block;
  v8 = [criteria ML3CollectionsQueryInLibrary:library];
  (*(block + 2))(blockCopy, [v8 hasEntities]);
}

- (void)loadQueryCriteria:(id)criteria hasItemsWithCompletionBlock:(id)block
{
  library = self->_library;
  blockCopy = block;
  v8 = [criteria ML3ItemsQueryInLibrary:library];
  (*(block + 2))(blockCopy, [v8 hasEntities]);
}

- (BOOL)collectionExistsContainedWithinSyncIDs:(id)ds groupingType:(int64_t)type existentPID:(unint64_t *)d
{
  dsCopy = ds;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (type == 1)
  {
    v10 = MEMORY[0x1E69B2A08];
    goto LABEL_5;
  }

  v9 = 0;
  if (type == 6)
  {
    v10 = MEMORY[0x1E69B2CB0];
LABEL_5:
    v9 = *v10;
  }

  if (dsCopy && [dsCopy count])
  {
    v11 = MPML3CollectionClassFromGroupingType(type);
    v12 = [MEMORY[0x1E69B34B8] predicateWithProperty:v9 values:dsCopy];
    v13 = [v11 queryWithLibrary:self->_library predicate:v12];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__MPMediaLibraryDataProviderML3_collectionExistsContainedWithinSyncIDs_groupingType_existentPID___block_invoke;
    v16[3] = &unk_1E7677140;
    v16[4] = &v21;
    v16[5] = &v17;
    [v13 enumeratePersistentIDsUsingBlock:v16];
  }

  v14 = *(v22 + 24);
  if (d && *(v22 + 24))
  {
    *d = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v14;
}

uint64_t __97__MPMediaLibraryDataProviderML3_collectionExistsContainedWithinSyncIDs_groupingType_existentPID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (BOOL)collectionExistsWithCloudUniversalLibraryID:(id)d groupingType:(int64_t)type existentPID:(unint64_t *)iD
{
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (type > 6 || ((0x4Bu >> type) & 1) == 0)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v9 = **(&unk_1E76778A0 + type);
  if (!v9)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v10 = MPML3CollectionClassFromGroupingType(type);
  v11 = [MEMORY[0x1E69B3488] predicateWithProperty:v9 value:dCopy comparison:1];
  v12 = [v10 queryWithLibrary:self->_library predicate:v11];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__MPMediaLibraryDataProviderML3_collectionExistsWithCloudUniversalLibraryID_groupingType_existentPID___block_invoke;
  v15[3] = &unk_1E7677140;
  v15[4] = &v20;
  v15[5] = &v16;
  [v12 enumeratePersistentIDsUsingBlock:v15];

  v13 = *(v21 + 24);
  if (iD && (v21[3] & 1) != 0)
  {
    *iD = v17[3];
  }

LABEL_9:

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v13 & 1;
}

uint64_t __102__MPMediaLibraryDataProviderML3_collectionExistsWithCloudUniversalLibraryID_groupingType_existentPID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (BOOL)collectionExistsWithCloudLibraryID:(id)d groupingType:(int64_t)type existentPID:(unint64_t *)iD
{
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (type == 1)
  {
    v9 = MEMORY[0x1E69B29C0];
  }

  else
  {
    if (type != 3)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v9 = MEMORY[0x1E69B2970];
  }

  v10 = *v9;
  if (!v10)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v11 = MPML3CollectionClassFromGroupingType(type);
  v12 = [MEMORY[0x1E69B3488] predicateWithProperty:v10 value:dCopy comparison:1];
  v13 = [v11 queryWithLibrary:self->_library predicate:v12];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__MPMediaLibraryDataProviderML3_collectionExistsWithCloudLibraryID_groupingType_existentPID___block_invoke;
  v16[3] = &unk_1E7677140;
  v16[4] = &v21;
  v16[5] = &v17;
  [v13 enumeratePersistentIDsUsingBlock:v16];

  v14 = *(v22 + 24);
  if (iD && (v22[3] & 1) != 0)
  {
    *iD = v18[3];
  }

LABEL_11:

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v14 & 1;
}

uint64_t __93__MPMediaLibraryDataProviderML3_collectionExistsWithCloudLibraryID_groupingType_existentPID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (BOOL)collectionExistsWithSagaID:(int64_t)d groupingType:(int64_t)type existentPID:(unint64_t *)iD
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (type)
  {
    if (type != 6)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v9 = MEMORY[0x1E69B2CA8];
  }

  else
  {
    v9 = MEMORY[0x1E69B3350];
  }

  v10 = *v9;
  if (!v10)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v11 = MPML3CollectionClassFromGroupingType(type);
  v12 = [MEMORY[0x1E69B3488] predicateWithProperty:v10 equalToInt64:d];
  v13 = [v11 queryWithLibrary:self->_library predicate:v12];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__MPMediaLibraryDataProviderML3_collectionExistsWithSagaID_groupingType_existentPID___block_invoke;
  v16[3] = &unk_1E7677140;
  v16[4] = &v21;
  v16[5] = &v17;
  [v13 enumeratePersistentIDsUsingBlock:v16];

  v14 = *(v22 + 24);
  if (iD && (v22[3] & 1) != 0)
  {
    *iD = v18[3];
  }

LABEL_11:

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v14 & 1;
}

uint64_t __85__MPMediaLibraryDataProviderML3_collectionExistsWithSagaID_groupingType_existentPID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (BOOL)collectionExistsWithStoreID:(int64_t)d groupingType:(int64_t)type existentPID:(unint64_t *)iD
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (type > 5)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v9 = **(&unk_1E7677870 + type);
  if (!v9)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v10 = MPML3CollectionClassFromGroupingType(type);
  v11 = [MEMORY[0x1E69B3488] predicateWithProperty:v9 equalToInt64:d];
  v12 = [v10 queryWithLibrary:self->_library predicate:v11];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__MPMediaLibraryDataProviderML3_collectionExistsWithStoreID_groupingType_existentPID___block_invoke;
  v15[3] = &unk_1E7677140;
  v15[4] = &v20;
  v15[5] = &v16;
  [v12 enumeratePersistentIDsUsingBlock:v15];

  v13 = *(v21 + 24);
  if (iD && (v21[3] & 1) != 0)
  {
    *iD = v17[3];
  }

LABEL_8:

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v13 & 1;
}

uint64_t __86__MPMediaLibraryDataProviderML3_collectionExistsWithStoreID_groupingType_existentPID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (BOOL)collectionExistsWithName:(id)name groupingType:(int64_t)type existentPID:(unint64_t *)d
{
  nameCopy = name;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (nameCopy)
  {
    v9 = MPML3CollectionClassFromGroupingType(type);
    if (type > 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = **(&unk_1E7677830 + type);
    }

    v12 = [MEMORY[0x1E69B3488] predicateWithProperty:v10 value:nameCopy comparison:1];
    v13 = [v9 queryWithLibrary:self->_library predicate:v12];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__MPMediaLibraryDataProviderML3_collectionExistsWithName_groupingType_existentPID___block_invoke;
    v15[3] = &unk_1E7677140;
    v15[4] = &v20;
    v15[5] = &v16;
    [v13 enumeratePersistentIDsUsingBlock:v15];

    v11 = *(v21 + 24);
    if (d && (v21[3] & 1) != 0)
    {
      *d = v17[3];
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v11 & 1;
}

uint64_t __83__MPMediaLibraryDataProviderML3_collectionExistsWithName_groupingType_existentPID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (BOOL)collectionExistsContainedWithinPersistentIDs:(const unint64_t *)ds count:(unint64_t)count groupingType:(int64_t)type existentPID:(unint64_t *)d
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (ds)
  {
    v10 = MPML3CollectionClassFromGroupingType(type);
    v11 = [MEMORY[0x1E69B3500] predicateWithPersistentIDs:ds count:count shouldContain:1];
    v12 = [v10 queryWithLibrary:self->_library predicate:v11];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __109__MPMediaLibraryDataProviderML3_collectionExistsContainedWithinPersistentIDs_count_groupingType_existentPID___block_invoke;
    v15[3] = &unk_1E7677140;
    v15[4] = &v20;
    v15[5] = &v16;
    [v12 enumeratePersistentIDsUsingBlock:v15];

    v13 = *(v21 + 24);
    if (d && (v21[3] & 1) != 0)
    {
      *d = v17[3];
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v13 & 1;
}

uint64_t __109__MPMediaLibraryDataProviderML3_collectionExistsContainedWithinPersistentIDs_count_groupingType_existentPID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (BOOL)collectionInLibraryWithPersistentID:(unint64_t)d groupingType:(int64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return 0;
  }

  v6 = MPML3CollectionClassFromGroupingType(type);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 newWithPersistentID:d inLibrary:self->_library];
  if ([v8 existsInLibrary])
  {
    v9 = [v7 collectionWithPersistentID:d addedToLibrary:self->_library];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)collectionExistsWithPersistentID:(unint64_t)d groupingType:(int64_t)type
{
  v6 = MPML3CollectionClassFromGroupingType(type);
  if (v6)
  {
    v7 = [v6 newWithPersistentID:d inLibrary:self->_library];
    existsInLibrary = [v7 existsInLibrary];

    LOBYTE(v6) = existsInLibrary;
  }

  return v6;
}

- (int64_t)containerPersistentIDForGlobalID:(id)d
{
  v4 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2AD0] equalToValue:d];
  v5 = [MEMORY[0x1E69B34A0] anyInLibrary:self->_library predicate:v4];
  persistentID = [v5 persistentID];

  return persistentID;
}

- (BOOL)playlistExistsWithPersistentID:(unint64_t)d
{
  v3 = [MEMORY[0x1E69B34A0] newWithPersistentID:d inLibrary:self->_library];
  existsInLibrary = [v3 existsInLibrary];

  return existsInLibrary;
}

- (int64_t)itemPersistentIDForStoreID:(int64_t)d
{
  v4 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B3308] equalToInt64:d];
  v5 = [MEMORY[0x1E69B3538] anyInLibrary:self->_library predicate:v4];
  persistentID = [v5 persistentID];

  return persistentID;
}

- (BOOL)hasUbiquitousBookmarkableItems
{
  v3 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B3178] equalToInteger:1];
  v4 = MEMORY[0x1E69B3428];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, 0}];
  v6 = [v4 predicateMatchingPredicates:v5];

  v7 = [MEMORY[0x1E69B3538] anyInLibrary:self->_library predicate:v6];
  LOBYTE(self) = v7 != 0;

  return self;
}

- (BOOL)hasGeniusMixes
{
  v3 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2BE8] equalToInteger:1];
  v4 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2BE0] equalToInteger:1];
  v5 = MEMORY[0x1E69B3428];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, v4, 0}];
  v7 = [v5 predicateMatchingPredicates:v6];

  v8 = [MEMORY[0x1E69B34A0] anyInLibrary:self->_library predicate:v7];
  LOBYTE(self) = v8 != 0;

  return self;
}

- (BOOL)hasMediaOfType:(unint64_t)type
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MPMediaLibraryDataProviderML3_hasMediaOfType___block_invoke;
  v5[3] = &unk_1E76814A0;
  v5[5] = &v6;
  v5[6] = type;
  v5[4] = self;
  [(MPMediaLibraryDataProviderML3 *)self performBackgroundTaskWithBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__MPMediaLibraryDataProviderML3_hasMediaOfType___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__MPMediaLibraryDataProviderML3_hasMediaOfType___block_invoke_2;
  v2[3] = &unk_1E7677118;
  v4 = *(a1 + 48);
  v3 = *(a1 + 32);
  return [*(v3 + 88) databaseConnectionAllowingWrites:0 withBlock:v2];
}

void __48__MPMediaLibraryDataProviderML3_hasMediaOfType___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) mediaLibrary];
  v4 = [MPMediaQuery alloc];
  v5 = v4;
  if (v2 == -1)
  {
    v10 = [(MPMediaQuery *)v4 initWithFilterPredicates:0 library:v3];
  }

  else
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    v8 = [MPMediaPropertyPredicate predicateWithValue:v7 forProperty:@"mediaType"];
    v9 = [v6 setWithObject:v8];
    v10 = [(MPMediaQuery *)v5 initWithFilterPredicates:v9 library:v3];
  }

  *(*(*(a1 + 40) + 8) + 24) = [(MPMediaQuery *)v10 _hasItems];
}

- (int64_t)playlistGeneration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  library = self->_library;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MPMediaLibraryDataProviderML3_playlistGeneration__block_invoke;
  v5[3] = &unk_1E767B1A0;
  v5[4] = &v6;
  [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __51__MPMediaLibraryDataProviderML3_playlistGeneration__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT revision FROM entity_revision WHERE class = 1 ORDER BY revision DESC LIMIT 1"];;
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

- (id)lastModifiedDate
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9726;
  v22 = __Block_byref_object_dispose__9727;
  v23 = 0;
  library = self->_library;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__MPMediaLibraryDataProviderML3_lastModifiedDate__block_invoke;
  v17[3] = &unk_1E767B1A0;
  v17[4] = &v18;
  [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v17];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v19[5];
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v24 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [defaultManager attributesOfItemAtPath:*(*(&v13 + 1) + 8 * i) error:{0, v13}];
        fileModificationDate = [v9 fileModificationDate];

        if (!v5 || [fileModificationDate compare:v5] == 1)
        {
          v11 = fileModificationDate;

          v5 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v24 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v18, 8);

  return v5;
}

void __49__MPMediaLibraryDataProviderML3_lastModifiedDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _databaseFilePaths];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSString)accountDSID
{
  sagaAccountID = [(ML3MusicLibrary *)self->_library sagaAccountID];
  if (!sagaAccountID)
  {
    sagaAccountID = [(ML3MusicLibrary *)self->_library jaliscoAccountID];
  }

  stringValue = [sagaAccountID stringValue];

  return stringValue;
}

- (NSString)name
{
  currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
  name = [currentDeviceInfo name];

  return name;
}

- (void)setLibrary:(id)library
{
  v31 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(ML3MusicLibrary *)libraryCopy debugDescription];
    *buf = 134218498;
    selfCopy = self;
    v27 = 2048;
    v28 = libraryCopy;
    v29 = 2114;
    v30 = v7;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "DataProvider %p setting MusicLibrary to %p (description=%{public}@)", buf, 0x20u);
  }

  if (!libraryCopy)
  {
    v8 = dispatch_semaphore_create(0);
    v19 = MEMORY[0x1E69B13D8];
    v18 = *MEMORY[0x1E69B1340];
    v23[0] = self;
    v22[0] = @"dataProvider";
    v22[1] = @"dataProvider description";
    v9 = [(MPMediaLibraryDataProviderML3 *)self description];
    v23[1] = v9;
    v22[2] = @"currentMusicLibrary description";
    library = self->_library;
    if (library)
    {
      v11 = [(ML3MusicLibrary *)self->_library debugDescription];
      v12 = self->_library;
    }

    else
    {
      v12 = 0;
      v11 = @"nil";
    }

    v22[3] = @"currentMusicLibrary";
    if (!v12)
    {
      v12 = @"nil";
    }

    v23[2] = v11;
    v23[3] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
    v24 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__MPMediaLibraryDataProviderML3_setLibrary___block_invoke;
    v20[3] = &unk_1E7682518;
    v21 = v8;
    v15 = v8;
    [v19 snapshotWithDomain:v18 type:@"Bug" subType:@"Invalid MusicLibrary" context:@"ML3MusicLibrary is null" triggerThresholdValues:0 events:v14 completion:v20];

    if (library)
    {
    }

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (self->_library != libraryCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:0 object:self->_library];
    objc_storeStrong(&self->_library, library);
    uniqueIdentifier = self->_uniqueIdentifier;
    self->_uniqueIdentifier = 0;

    [(MPMediaLibraryDataProviderML3 *)self _updateArtworkDataSourceMediaLibraryUniqueIdentifier];
    if (libraryCopy)
    {
      [defaultCenter addObserver:self selector:sel__libraryContentsDidChange_ name:*MEMORY[0x1E69B2D08] object:libraryCopy];
      [defaultCenter addObserver:self selector:sel__dynamicPropertiesDidChange_ name:*MEMORY[0x1E69B2D28] object:libraryCopy];
      [defaultCenter addObserver:self selector:sel__invisiblePropertiesDidChange_ name:*MEMORY[0x1E69B2D20] object:libraryCopy];
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  library = [(MPMediaLibraryDataProviderML3 *)self library];
  library2 = [(MPMediaLibraryDataProviderML3 *)self library];
  v6 = [library2 debugDescription];
  v7 = [v3 stringWithFormat:@"<DataProvider: %p> MusicLibrary=%p, description=%@", self, library, v6];

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__postEvents object:0];
  v4.receiver = self;
  v4.super_class = MPMediaLibraryDataProviderML3;
  [(MPMediaLibraryDataProviderML3 *)&v4 dealloc];
}

- (MPMediaLibraryDataProviderML3)initWithLibrary:(id)library
{
  v31 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v24.receiver = self;
  v24.super_class = MPMediaLibraryDataProviderML3;
  v6 = [(MPMediaLibraryDataProviderML3 *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, library);
    v8 = [[MPMediaEntityCache alloc] initWithMediaLibraryDataProvider:v7];
    entityCache = v7->_entityCache;
    v7->_entityCache = v8;

    v10 = dispatch_queue_create("com.apple.MPMediaLibraryDataProviderML3.backgroundTask", 0);
    backgroundTaskQueue = v7->_backgroundTaskQueue;
    v7->_backgroundTaskQueue = v10;

    v12 = dispatch_queue_create("com.apple.MPMediaLibraryDataProviderML3.cloudUpdateQueue", 0);
    cloudUpdateQueue = v7->_cloudUpdateQueue;
    v7->_cloudUpdateQueue = v12;

    v14 = dispatch_queue_create("com.apple.MPMediaLibraryDataProviderML3.entitiesAddedOrRemovedNotificationQueue", 0);
    entitiesAddedOrRemovedNotificationQueue = v7->_entitiesAddedOrRemovedNotificationQueue;
    v7->_entitiesAddedOrRemovedNotificationQueue = v14;

    v16 = objc_alloc_init(MPMediaLibraryArtworkDataSource);
    objc_storeStrong(&v7->_artworkDataSource, v16);
    v17 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    setValuesWidthLimitedQueue = v7->_setValuesWidthLimitedQueue;
    v7->_setValuesWidthLimitedQueue = v17;

    [(NSOperationQueue *)v7->_setValuesWidthLimitedQueue setMaxConcurrentOperationCount:5];
    if (v7->_library)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v7 selector:sel__libraryContentsDidChange_ name:*MEMORY[0x1E69B2D08] object:v7->_library];
      [defaultCenter addObserver:v7 selector:sel__libraryEntitiesAddedOrRemoved_ name:*MEMORY[0x1E69B2D18] object:v7->_library];
      [defaultCenter addObserver:v7 selector:sel__dynamicPropertiesDidChange_ name:*MEMORY[0x1E69B2D28] object:v7->_library];
      [defaultCenter addObserver:v7 selector:sel__invisiblePropertiesDidChange_ name:*MEMORY[0x1E69B2D20] object:v7->_library];
      [defaultCenter addObserver:v7 selector:sel__displayValuesDidChange_ name:*MEMORY[0x1E69B2D10] object:v7->_library];
      [defaultCenter addObserver:v7 selector:sel__syncGenerationDidChange_ name:*MEMORY[0x1E69B2D38] object:v7->_library];
      [defaultCenter addObserver:v7 selector:sel__libraryUIDDidChange_ name:*MEMORY[0x1E69B2D40] object:v7->_library];
      [defaultCenter addObserver:v7 selector:sel__libraryCloudLibraryAvailabilityDidChange_ name:*MEMORY[0x1E69B2D00] object:v7->_library];
      [defaultCenter addObserver:v7 selector:sel__libraryPathDidChange_ name:*MEMORY[0x1E69B2D30] object:v7->_library];
    }

    v20 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      library = v7->_library;
      v22 = [(ML3MusicLibrary *)library debugDescription];
      *buf = 134218498;
      v26 = v7;
      v27 = 2048;
      libraryCopy2 = library;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEFAULT, "DataProvider %p init with MusicLibrary=%p (description=%{public}@)", buf, 0x20u);
    }

    [(MPMediaLibraryDataProviderML3 *)v7 _updateArtworkDataSourceMediaLibraryUniqueIdentifier];
  }

  return v7;
}

+ (id)_unadjustedValueForMPProperty:(id)property withDefaultValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if (_unadjustedValueForMPProperty_withDefaultValue__onceToken != -1)
  {
    dispatch_once(&_unadjustedValueForMPProperty_withDefaultValue__onceToken, &__block_literal_global_313);
  }

  v8 = NSMapGet(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, propertyCopy);
  if (v8)
  {
    v9 = [self v8];
  }

  else
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

void __80__MPMediaLibraryDataProviderML3__unadjustedValueForMPProperty_withDefaultValue___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:258 capacity:13];
  v1 = _unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap;
  _unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap = v0;

  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"bookmarkTime", sel__unadjustedValueForItemTimeWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"dateAccessed", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"dateAdded", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"lastPlayedDate", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"lastSkippedDate", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"playbackDuration", sel__unadjustedValueForItemTimeWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"rating", sel__unadjustedValueForItemPropertyRatingWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"releaseDate", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"startTime", sel__unadjustedValueForItemTimeWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"stopTime", sel__unadjustedValueForItemTimeWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"storeDatePurchased", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"volumeAdjustment", sel__unadjustedValueForItemPropertyVolumeAdjustmentWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"volumeNormalization", sel__unadjustedValueForItemPropertyVolumeNormalizationWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"dateCreated", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"dateModified", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"datePlayed", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"datePlayedLocal", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"dateDownloaded", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"albumDatePlayedLocal", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"likedStateChangedDate", sel__unadjustedValueForItemDateWithDefaultValue_);
  NSMapInsert(_unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap, @"likedStateChangedDate", sel__unadjustedValueForItemDateWithDefaultValue_);
  v2 = _unadjustedValueForMPProperty_withDefaultValue____unadjustmentMap;

  NSMapInsert(v2, @"albumArtistDateFavorited", sel__unadjustedValueForItemDateWithDefaultValue_);
}

+ (id)_unadjustedValueForItemDateWithDefaultValue:(id)value
{
  v3 = MEMORY[0x1E696AD98];
  [value timeIntervalSinceReferenceDate];

  return [v3 numberWithDouble:?];
}

+ (id)_unadjustedValueForItemTimeWithDefaultValue:(id)value
{
  v3 = MEMORY[0x1E696AD98];
  [value doubleValue];
  v5 = v4 * 1000.0;

  return [v3 numberWithDouble:v5];
}

+ (id)_unadjustedValueForItemPropertyRatingWithDefaultValue:(id)value
{
  v3 = MEMORY[0x1E696AD98];
  [value floatValue];
  v5 = v4 * 20.0;

  return [v3 numberWithDouble:v5];
}

+ (id)_unadjustedValueForItemPropertyVolumeAdjustmentWithDefaultValue:(id)value
{
  v3 = MEMORY[0x1E696AD98];
  [value floatValue];
  if ((((v4 * 2000.0) * 0.5) + 1.8447e19) < 0xFFFFFFFFFFFFFC18)
  {
    v5 = -1000;
  }

  else
  {
    v5 = 1000;
  }

  return [v3 numberWithUnsignedInteger:v5];
}

+ (id)_unadjustedValueForItemPropertyVolumeNormalizationWithDefaultValue:(id)value
{
  v3 = MEMORY[0x1E696AD98];
  [value floatValue];
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUInteger MPITScaledVolumeNormalization(float)"];
  [currentHandler handleFailureInFunction:v5 file:@"MPMediaLibraryDataProviderML3.m" lineNumber:3515 description:@"MPITScaledVolumeNormalization is Unimplemented"];

  return [v3 numberWithUnsignedInteger:0];
}

+ (id)uniqueIdentifierForLibrary:(id)library
{
  libraryUID = [library libraryUID];
  v4 = libraryUID;
  if (libraryUID)
  {
    v5 = libraryUID;
  }

  else
  {
    v5 = @"device";
  }

  v6 = v5;

  return v5;
}

+ (NSArray)onDiskProviders
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allLibraries = [MEMORY[0x1E69B34E0] allLibraries];
  v4 = [allLibraries countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allLibraries);
        }

        v8 = [[MPMediaLibraryDataProviderML3 alloc] initWithLibrary:*(*(&v11 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [allLibraries countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

@end