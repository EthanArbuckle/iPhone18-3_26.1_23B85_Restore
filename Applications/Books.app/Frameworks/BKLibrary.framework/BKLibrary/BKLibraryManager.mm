@interface BKLibraryManager
+ (BOOL)hasAnySeriesStackBooksWithBasePredicate:(id)a3 forBook:(id)a4;
+ (BOOL)isDirectoryFileName:(id)a3;
+ (id)_continueReadingPredicate;
+ (id)_continueReadingPredicateIncludingExplicitContent:(BOOL)a3;
+ (id)_dateComponentsForYear:(int64_t)a3;
+ (id)_previouslyReadPredicate;
+ (id)_recentlyEngagedPredicate;
+ (id)_recentlyReadPredicate;
+ (id)defaultManager;
+ (id)fetchRequestForContinueReading;
+ (id)fetchRequestForPreviouslyRead;
+ (id)fetchRequestForRecentlyEngaged;
+ (id)fetchRequestForRecentlyRead;
+ (id)libraryAssetsWithAssetIDsContainedInList:(id)a3 tempAssetIDs:(id)a4 inManagedObjectContext:(id)a5;
+ (id)managerWithDataSources:(id)a3;
+ (id)mostRecentlyOpenedSeriesBookWithBasePredicate:(id)a3 forBook:(id)a4;
+ (id)newestSeriesBookWithBasePredicate:(id)a3 forBook:(id)a4;
+ (id)persistentStoreURL;
+ (id)predicateForAllOwnedAudiobooks;
+ (id)predicateForAllOwnedBooks;
+ (id)predicateForAllStoreLibraryAssets;
+ (id)predicateForAllStoreLibraryAssetsExcludingUnpurchasedSeriesAssets;
+ (id)predicateForAssetIdentifierTaggedLibraryAsset:(id)a3;
+ (id)predicateForAssetsAvailableToAppIntentsWithTypes:(id)a3;
+ (id)predicateForAssetsInCollectionID:(id)a3 allowExplicit:(BOOL)a4 includeSeriesItems:(BOOL)a5;
+ (id)predicateForBooksShownInAllBooks;
+ (id)predicateForCollectionMembersInCollectionID:(id)a3 hideUnownedItems:(BOOL)a4 allowExplicit:(BOOL)a5;
+ (id)predicateForCollectionMembersMatchingSearchStringLibraryAssets:(id)a3;
+ (id)predicateForCollectionMembersWithLocalAssets;
+ (id)predicateForContentWithHighWaterMarkOrReadingProgressValue:(double)a3;
+ (id)predicateForHighWaterMarkCapableLibraryAssets;
+ (id)predicateForLastOpenedDateAfter:(id)a3;
+ (id)predicateForLibraryAssetsMarkedAsNew;
+ (id)predicateForLibraryAssetsNotMarkedAsOld;
+ (id)predicateForMatchingSearchStringLibraryAssets:(id)a3;
+ (id)predicateForPersonalizationAffinityAssets;
+ (id)predicateForPurchasedLibraryAssets;
+ (id)predicateFor_All_Finished_LibraryAssets;
+ (id)predicateFor_All_Finished_LibraryAssetsAllowsExplicit:(BOOL)a3;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssetsAllowsExplicit:(BOOL)a3;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_After_Year:(int64_t)a3;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_In_Year:(int64_t)a3;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_Prior_To_Year:(int64_t)a3;
+ (id)predicateToExcludeAllFinishedLibraryAssets;
+ (id)predicateToExcludeAssetsForSeriesAndStoreItemsNotAddedToCollections;
+ (id)predicateToExcludeAssetsForUnpurchasedItemsInCollection:(id)a3;
+ (id)predicateToExcludeCollectionMembersForSeriesAndStoreItemsNotAddedToCollections;
+ (id)predicateToExcludeCollectionMembersForUnpurchasedItemsInCollection:(id)a3;
+ (id)searchFetchRequestWithText:(id)a3 entityType:(int64_t)a4;
+ (id)seriesStackBooksForBook:(id)a3;
+ (unint64_t)numberOfLibraryAssetsInManagdObjectContext:(id)a3;
+ (unsigned)processingOptionsFor:(id)a3 coverEffectsEnvironment:(id)a4;
+ (void)_fetchImageForAsset:(id)a3 size:(CGSize)a4 includeSpine:(BOOL)a5 includeShadow:(BOOL)a6 allowGeneric:(BOOL)a7 coverEffectsEnvironment:(id)a8 completion:(id)a9;
+ (void)deleteCloudDataWithCompletion:(id)a3;
+ (void)fetchImageForAssetID:(id)a3 size:(CGSize)a4 includeSpine:(BOOL)a5 includeShadow:(BOOL)a6 coverEffectsEnvironment:(id)a7 completion:(id)a8;
+ (void)fetchImageShadowForAsset:(id)a3 size:(CGSize)a4 completion:(id)a5;
+ (void)fetchImageShadowForAssetID:(id)a3 size:(CGSize)a4 completion:(id)a5;
+ (void)initialize;
- ($3F30F48CCF81742A7D163F96C13F4EE1)cacheManager:(SEL)a3 bookCoverInfoForIdentifier:(id)a4;
- (BKLibraryCollectionManager)collectionManager;
- (BKLibraryDelegateProtocol)delegate;
- (BKLibraryManagedObjectContext)uiChildContext;
- (BKLibraryManager)init;
- (BKLibraryManager)initWithPersistentStoreURL:(id)a3 bdsPriceTracker:(id)a4;
- (BOOL)_shouldPropagateNilAssetIDForDataSourceWithIdentifier:(id)a3;
- (BOOL)examineURL:(id)a3 completion:(id)a4;
- (BOOL)hasBooks;
- (BOOL)isDownloadableFromLibraryAsset:(id)a3;
- (BOOL)isExplicitMaterialAllowed;
- (BOOL)isFamilyPurchaseWithFamilyID:(id)a3 purchaserDSID:(id)a4 downloaderDSID:(id)a5;
- (NSDate)mostRecentPurchaseDate;
- (NSDictionary)_persistentStoreOptions;
- (NSString)debugDescription;
- (NSString)description;
- (id)_assetIDsForCollectionID:(id)a3 moc:(id)a4;
- (id)_booksWithPredicate:(id)a3 sortDescriptors:(id)a4 context:(id)a5 error:(id *)a6;
- (id)_dataSourceMatchingPredicate:(id)a3;
- (id)_dataSourcesMatchingPredicate:(id)a3;
- (id)_predicateForSearchText:(id)a3;
- (id)_rawSeriesAuthorForContainerID:(id)a3 context:(id)a4;
- (id)_rawSeriesSortAuthorForContainerID:(id)a3 context:(id)a4;
- (id)_removeDupesByAssetID:(id)a3 inMoc:(id)a4;
- (id)_updateLibraryAssetWithID:(id)a3 withLastOpenDate:(id)a4 withMoc:(id)a5;
- (id)_updateMostRecentPurchaseDateCacheFromDataSources;
- (id)assetIDForAssetAtURLOnMainThread:(id)a3;
- (id)assetIDsInDataSourceWithIdentifier:(id)a3 intersectingWithAssetIDs:(id)a4;
- (id)assetIDsOfStoreAssetsWithPredicate:(id)a3;
- (id)assetIDsOfStoreAudiobookAssets;
- (id)assetIDsOfStoreBookAssets;
- (id)bookDescriptionForAssetID:(id)a3;
- (id)cloudSyncVersionsForDataType:(id)a3 inContext:(id)a4;
- (id)contentPredicateForSeriesID:(id)a3 onlyPurchased:(BOOL)a4 forceCloud:(BOOL)a5 allowsExplicit:(BOOL)a6;
- (id)dataSourceConformingToProtocol:(id)a3;
- (id)dataSourceWithIdentifier:(id)a3;
- (id)dataSourcesConformingToProtocol:(id)a3;
- (id)dq_assetsToReconcile;
- (id)dragInfoFromLibraryAsset:(id)a3;
- (id)existingAssetIDsFromAssetIDs:(id)a3;
- (id)fetchMigratedProperties:(id)a3 deleteFoundAssets:(BOOL)a4;
- (id)libraryAssetOnMainQueueWithAssetID:(id)a3;
- (id)libraryAssetOnMainQueueWithAssetIdentifier:(id)a3;
- (id)libraryAssetOnMainQueueWithEpubID:(id)a3;
- (id)libraryAssetOnMainQueueWithFilename:(id)a3;
- (id)libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:(id)a3;
- (id)libraryAssetOnMainQueueWithStoreID:(id)a3;
- (id)libraryAssetWithAssetID:(id)a3 inManagedObjectContext:(id)a4;
- (id)libraryAssetWithAssetIdentifier:(id)a3 inManagedObjectContext:(id)a4;
- (id)libraryAssetWithPermanentOrTemporaryAssetID:(id)a3 inManagedObjectContext:(id)a4;
- (id)libraryAssetWithTemporaryAssetID:(id)a3 inManagedObjectContext:(id)a4;
- (id)libraryAssetsAsDictionaryWithProperties:(id)a3;
- (id)libraryAssetsWithAssetIDs:(id)a3 inManagedObjectContext:(id)a4;
- (id)libraryMutableAssetWithAssetID:(id)a3 inManagedObjectContext:(id)a4;
- (id)libraryMutableAssetWithAssetIdentifier:(id)a3 inManagedObjectContext:(id)a4;
- (id)libraryMutableAssetWithPermanentOrTemporaryAssetID:(id)a3 inManagedObjectContext:(id)a4;
- (id)localNonSampleLibraryAssetStoreSummariesExcludeAudiobooks:(BOOL)a3;
- (id)localSeriesBooksForSeriesID:(id)a3 context:(id)a4;
- (id)metadataForAssetAtURL:(id)a3 needsCoordination:(BOOL)a4;
- (id)migrationCachePath;
- (id)migrationMoc;
- (id)migrationOldDatabaseFolderPath;
- (id)mostRecentlyEngagedLibraryAssetWithTypes:(id)a3 inManagedObjectContext:(id)a4;
- (id)mostRecentlyEngagedLibraryAssetsWithTypes:(id)a3 limit:(unint64_t)a4 inManagedObjectContext:(id)a5;
- (id)mostRecentlyOpenedBooks:(unint64_t)a3 inManagedObjectContext:(id)a4;
- (id)mostRecentlyOpenedLibraryAssetWithTypes:(id)a3 inManagedObjectContext:(id)a4;
- (id)mostRecentlyOpenedLibraryAssetsWithTypes:(id)a3 limit:(unint64_t)a4 inManagedObjectContext:(id)a5;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithClass:(Class)a3;
- (id)newPrivateQueueManagedObjectContext;
- (id)p_libraryAssetWithIdentifier:(id)a3 predicate:(id)a4 inManagedObjectContext:(id)a5;
- (id)pageProgressionDirectionForAssetAtURLOnMainThread:(id)a3;
- (id)predicateForContainerWithSeriesIDLibraryAsset:(id)a3;
- (id)predicateForHighWaterMarkCapableLibraryAssets;
- (id)predicateForIndexing;
- (id)predicateForLibraryAssetsWithSeriesID:(id)a3;
- (id)predicateForMostRecentBooksOpened;
- (id)predicateForSamples;
- (id)predicateForSearchableLibraryAssets;
- (id)predicateForSeriesBooksIncludingNextForID:(id)a3 includeAllBooksInSeries:(BOOL)a4;
- (id)predicateFor_AllAudioBooks_LibraryAssets;
- (id)predicateFor_AllBooks_LibraryAssets;
- (id)predicateFor_All_PDFs_LibraryAssets;
- (id)seriesAuthorForContainerID:(id)a3 context:(id)a4;
- (id)seriesBooksForSeriesID:(id)a3 inManagedObjectContext:(id)a4;
- (id)seriesContainerForSeriesID:(id)a3 inManagedObjectContext:(id)a4;
- (id)seriesTitleForAssetID:(id)a3;
- (id)sortDescriptorsForMode:(unint64_t)a3 collectionID:(id)a4;
- (id)spotlightAssetsWithContentTypes:(id)a3 searchQueryString:(id)a4 inManagedObjectContext:(id)a5;
- (id)storeAssetIDsOfCollectionMembersWithLimit:(int64_t)a3 collectionID:(id)a4 inMoc:(id)a5;
- (id)storeAssetIDsOfFinishedCollectionWithLimit:(int64_t)a3 inMoc:(id)a4;
- (id)storeIDsForDownloadingBooks;
- (id)storeIDsOfStoreAssetsWithPredicate:(id)a3;
- (id)validLibraryAssetIDsOnMainQueueWithAssetIDs:(id)a3;
- (id)wq_seriesIDsToResetWithLibraryManagedObjectContext:(id)a3;
- (int64_t)_compareVersionWith:(id)a3;
- (unint64_t)countOfPurchasedBooks;
- (unint64_t)wq_countOfBooksInContinueReadingIncludingExplicitContent:(BOOL)a3 limit:(unint64_t)a4 onWorkerQueue:(id)a5;
- (void)_addBitmask:(unint64_t)a3 toUpdate:(id)a4 inMethod:(SEL)a5;
- (void)_addDataSourceIdentifierAndStateObserver:(id)a3;
- (void)_cleanUpOrphanedSampleAssets:(id)a3;
- (void)_enumerateDataSources:(id)a3 intersectingWithAssetIDs:(id)a4 usingBlock:(id)a5;
- (void)_libraryDataSource:(id)a3 addedAssets:(id)a4;
- (void)_libraryDataSource:(id)a3 removedAssetsWithAssetIDs:(id)a4 orTemporaryAssetIDs:(id)a5;
- (void)_libraryDataSource:(id)a3 updatedAssets:(id)a4;
- (void)_migrateFromOldDatabase;
- (void)_newAssetIDAdded:(id)a3;
- (void)_notifyDataSourceIdentifierAndStateObserversForAssetIDs:(id)a3;
- (void)_notifyLibraryOperationDone:(unint64_t)a3 assetIDs:(id)a4;
- (void)_performInitialDataBaseMaintenance;
- (void)_performReload;
- (void)_performReloadDataSource:(id)a3 completion:(id)a4;
- (void)_persistentStoreDidMigrate;
- (void)_readLibraryVesionInfo;
- (void)_reloadDataSource:(id)a3 completion:(id)a4;
- (void)_reloadWithCompletion:(id)a3;
- (void)_removeAllMembersFromCollection:(id)a3 moc:(id)a4;
- (void)_removeBitmask:(unint64_t)a3 fromUpdate:(id)a4 inMethod:(SEL)a5;
- (void)_removeDataSourceIdentifierAndStateObserver:(id)a3;
- (void)_removeDupesByTemporaryAssetID:(id)a3 inMoc:(id)a4;
- (void)_removeDuplicateCollectionMembers;
- (void)_removePossibleDupes:(id)a3 inMoc:(id)a4;
- (void)_resetAuthorsAndStacksInContext:(id)a3;
- (void)_resetNilAuthorsOnAllBooksInContext:(id)a3;
- (void)_resetNilAuthorsOnAllSeriesInContext:(id)a3;
- (void)_resetSeriesIDs:(id)a3;
- (void)_scheduleOperationGroupWithName:(id)a3 block:(id)a4;
- (void)_setupCoreDataStack;
- (void)_setupUICoreDataStack;
- (void)_sortAndInitializeDataSources:(id)a3;
- (void)_sortUserCollectionToTop:(id)a3 moc:(id)a4;
- (void)_updateAuthorForSeriesContainer:(id)a3;
- (void)_updateProcessingAuthenticationStateDeferred;
- (void)_updateProcessingAuthenticationStateImmediate;
- (void)_updateRelationshipsInContext:(id)a3;
- (void)addCustomOperationBlock:(id)a3;
- (void)adoptMigratedProperties:(id)a3;
- (void)allUnownedIDs:(id)a3;
- (void)allUnownedStoreAssetIDs:(id)a3;
- (void)applyPendingUpdateForAssetID:(id)a3 completion:(id)a4;
- (void)archiveTransientProperties:(id)a3;
- (void)assetAccountIdentifiersForAsset:(id)a3 completion:(id)a4;
- (void)assetAccountIdentifiersForAssetID:(id)a3 path:(id)a4 storeID:(id)a5 purchasedDSID:(id)a6 downloadedDSID:(id)a7 familyID:(id)a8 dataSourceID:(id)a9 completion:(id)a10;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)assetIDsOfPurchasedStoreAssets:(id)a3;
- (void)assetPartsForLibraryAsset:(id)a3 completion:(id)a4;
- (void)beginAuthentication:(id)a3;
- (void)bootstrapSamplesCollectionIfNeeded;
- (void)cacheManager:(id)a3 explicitIdentifiersWithCompletion:(id)a4;
- (void)cancelDownloadingAsset:(id)a3;
- (void)checkDatabaseIntegrity;
- (void)checkNonSeriesAudiobooksWithManagedObjectContext:(id)a3;
- (void)checkOwnedSingleBookSeriesWithManagedObjectContext:(id)a3;
- (void)cleanupDateFinished;
- (void)cleanupDefaultCollections;
- (void)clearAgingDocumentInbox;
- (void)clearMostRecentPurchaseDateCache;
- (void)collectionManagerDidModifyWantToReadCollection:(id)a3;
- (void)collectionsWorkerManagedObjectContextDidSaveNotification:(id)a3;
- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)a3 total:(unint64_t *)a4 finished:(unint64_t *)a5 context:(id)a6;
- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)a3 total:(unint64_t *)a4 markedFinished:(unint64_t *)a5 context:(id)a6;
- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)a3 total:(unint64_t *)a4 purchased:(unint64_t *)a5 context:(id)a6;
- (void)createSeriesUpdaterMoc;
- (void)dealloc;
- (void)deleteAssetIDs:(id)a3 exhaustive:(BOOL)a4;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)didCloseLibraryAsset:(id)a3;
- (void)didHidePurchasedAssetID:(id)a3;
- (void)dq_libraryDataSource:(id)a3 reconcileAssets:(id)a4 reason:(signed __int16)a5;
- (void)dq_sync:(id)a3;
- (void)dq_unclaimAllLibraryAssetsWithContext:(id)a3;
- (void)dq_unclaimIdentifiers:(id)a3 forDataSourceBitmask:(unint64_t)a4;
- (void)earliestPurchaseTimestampWithCompletion:(id)a3;
- (void)fetchLibraryAssetFromAssetID:(id)a3 handler:(id)a4;
- (void)fetchLibraryAssetFromStoreID:(id)a3 handler:(id)a4;
- (void)fetchLibraryAssetsFromAssetIDs:(id)a3 handler:(id)a4;
- (void)fetchLibraryAssetsFromStoreIDs:(id)a3 handler:(id)a4;
- (void)finalizeAuthentication:(id)a3;
- (void)hiddenAssetStoreIDsWithCompletion:(id)a3;
- (void)initializeMostRecentPurchaseDateCacheIfNeeded;
- (void)isTrackedAsRecent:(id)a3 completion:(id)a4;
- (void)libraryDataSource:(id)a3 addedAsset:(id)a4;
- (void)libraryDataSource:(id)a3 addedAsset:(id)a4 inGroup:(id)a5;
- (void)libraryDataSource:(id)a3 addedAssets:(id)a4;
- (void)libraryDataSource:(id)a3 addedAssets:(id)a4 inGroup:(id)a5;
- (void)libraryDataSource:(id)a3 notifyBlock:(id)a4 inGroup:(id)a5;
- (void)libraryDataSource:(id)a3 reloadInGroup:(id)a4;
- (void)libraryDataSource:(id)a3 removeImagesForAsset:(id)a4;
- (void)libraryDataSource:(id)a3 removedAsset:(id)a4;
- (void)libraryDataSource:(id)a3 removedAsset:(id)a4 inGroup:(id)a5;
- (void)libraryDataSource:(id)a3 removedAssets:(id)a4;
- (void)libraryDataSource:(id)a3 removedAssets:(id)a4 inGroup:(id)a5;
- (void)libraryDataSource:(id)a3 removedAssetsWithAssetIDs:(id)a4 orTemporaryAssetIDs:(id)a5;
- (void)libraryDataSource:(id)a3 removedAssetsWithAssetIDs:(id)a4 orTemporaryAssetIDs:(id)a5 inGroup:(id)a6;
- (void)libraryDataSource:(id)a3 updatedAsset:(id)a4;
- (void)libraryDataSource:(id)a3 updatedAsset:(id)a4 inGroup:(id)a5;
- (void)libraryDataSource:(id)a3 updatedAssets:(id)a4;
- (void)libraryDataSource:(id)a3 updatedAssets:(id)a4 inGroup:(id)a5;
- (void)loadCachedMigrationData;
- (void)logCounts;
- (void)managedBooksDidChange;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
- (void)migrateCollections:(id)a3 context:(id)a4;
- (void)migrateDataSources:(id)a3;
- (void)migrateLibraryIfNeeded;
- (void)migrateMetaData:(id)a3;
- (void)migratePurgeOldDatabases;
- (void)migrateSortOrderKeys:(id)a3;
- (void)migrateToMyBooksWithAssetIDs:(id)a3 inManagedObjectContext:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)otherManagedObjectContextDidSaveNotification:(id)a3;
- (void)p_deleteAssets:(id)a3;
- (void)p_deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)performBackgroundReadOnlyBlock:(id)a3;
- (void)performBackgroundReadOnlyBlockAndWait:(id)a3;
- (void)performBlockInUIContext:(id)a3 completion:(id)a4;
- (void)performBlockOnCollectionsWorkerQueue:(id)a3;
- (void)performBlockOnCollectionsWorkerQueueAndWait:(id)a3;
- (void)performNamed:(id)a3 workerQueueBlock:(id)a4;
- (void)performNamed:(id)a3 workerQueueBlockAndWait:(id)a4;
- (void)prioritizeImport:(id)a3 completion:(id)a4;
- (void)purgeRecentBooks:(id)a3 completion:(id)a4;
- (void)purgeRecentsListFromAllBooksOlderThanDate:(id)a3;
- (void)q_removeOldMigrationData;
- (void)queryRootFolderShorthandsWithRegistrationBlock:(id)a3;
- (void)rawBookCoverForLibraryAsset:(id)a3 completion:(id)a4;
- (void)readingTimeTracker:(id)a3 cleanupBooksFinishedBefore:(id)a4 completion:(id)a5;
- (void)readingTimeTracker:(id)a3 cleanupFinishedBooksExcluding:(id)a4 completion:(id)a5;
- (void)readingTimeTracker:(id)a3 isAssetTrackedAsRecent:(id)a4 completion:(id)a5;
- (void)readingTimeTracker:(id)a3 updateRecentBook:(id)a4 promoteIfNotTracked:(BOOL)a5 completion:(id)a6;
- (void)readingTimeTrackerHasRecentAssets:(id)a3 completion:(id)a4;
- (void)recentsNotEngagedSinceDateForSamples:(id)a3 dateForNonSamples:(id)a4 completion:(id)a5;
- (void)refreshFamily;
- (void)reloadDataSource:(id)a3 completion:(id)a4;
- (void)reloadWithCompletion:(id)a3;
- (void)resetCover:(id)a3;
- (void)resolveLibraryAsset:(id)a3 completion:(id)a4;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
- (void)saveCachedMigrationData;
- (void)seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:(id)a3 limit:(unint64_t)a4;
- (void)seriesUpdaterMocObjectsDidChange:(id)a3;
- (void)seriesUpdaterResetWithIDs:(id)a3;
- (void)setCloudStateOnAssetWithID:(id)a3;
- (void)setUIManagerProviderForAddingToWantToReadBlock:(id)a3;
- (void)storeAssetIDsOfWantToReadWithLimit:(int64_t)a3 completion:(id)a4;
- (void)tearDownPersistentStores;
- (void)toggleDownloadPausedForAsset:(id)a3;
- (void)triggerCloudSync:(BOOL)a3;
- (void)uiManagedObjectContextDidSaveNotification:(id)a3;
- (void)updateAsset:(id)a3 coverArt:(id)a4 completion:(id)a5;
- (void)updateAsset:(id)a3 fromURL:(id)a4 completion:(id)a5;
- (void)updateAssetWithID:(id)a3 url:(id)a4;
- (void)updateCloudVersionFromCloudSyncVersions:(id)a3 inContext:(id)a4;
- (void)updateIsDownloadingSupplementalContentAndCombinedState:(id)a3;
- (void)updateLibraryAssetWithID:(id)a3 isEphemeral:(BOOL)a4 completion:(id)a5;
- (void)updateLibraryAssetWithID:(id)a3 withLastOpenDate:(id)a4 completion:(id)a5;
- (void)updateLibraryAssetWithID:(id)a3 withTitle:(id)a4;
- (void)updateMostRecentPurchaseDateCacheFromLibrary;
- (void)updateSeriesContainerSeriesStackAssetIDs:(id)a3;
- (void)updateSeriesRelationshipsForSeriesAsset:(id)a3;
- (void)updateSeriesRelationshipsForSeriesContainer:(id)a3;
- (void)updateSupplementalContentRelationship:(id)a3;
- (void)updateURL:(id)a3 completion:(id)a4;
- (void)waitForAssetID:(id)a3 completion:(id)a4;
- (void)waitForAssetToFinishDownloadWithAssetID:(id)a3 resolveAsset:(BOOL)a4 completion:(id)a5;
- (void)workerManagedObjectContextDidSaveNotification:(id)a3;
- (void)wq_dq_integrateClaimedAssetsReason:(signed __int16)a3 context:(id)a4;
- (void)wq_dq_saveDatabaseContext:(id)a3;
- (void)wq_reconcileDataSourceAssetsForReason:(signed __int16)a3 context:(id)a4;
- (void)wq_seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:(id)a3 limit:(unint64_t)a4 onWorkerQueue:(id)a5;
@end

@implementation BKLibraryManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 registerDefaults:&off_DDF08];
  }
}

+ (id)defaultManager
{
  if (!qword_EFC60)
  {
    v2 = BKLibraryLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_8D3DC();
    }

    if (os_variant_has_internal_diagnostics())
    {
      v3 = getpid();
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v4 = off_EFC88;
      v12 = off_EFC88;
      if (!off_EFC88)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_3C2B0;
        v8[3] = &unk_D57A8;
        v8[4] = &v9;
        sub_3C2B0(v8);
        v4 = v10[3];
      }

      _Block_object_dispose(&v9, 8);
      if (!v4)
      {
        v7 = sub_8D418();
        _Block_object_dispose(&v9, 8);
        _Unwind_Resume(v7);
      }

      v4(v3, 3135106305, @"managerWithDataSources: initializer not called!");
    }
  }

  v5 = qword_EFC60;

  return v5;
}

+ (id)managerWithDataSources:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7E04;
  block[3] = &unk_D5528;
  v9 = a3;
  v3 = qword_EFC68;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_EFC68, block);
  }

  v5 = qword_EFC60;
  v6 = qword_EFC60;

  return v5;
}

- (void)initializeMostRecentPurchaseDateCacheIfNeeded
{
  objc_opt_class();
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"BKMostRecentPurchaseDateKey"];
  v4 = BUDynamicCast();

  if (!v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = +[NSDate distantPast];
    [v5 setObject:v6 forKey:@"BKMostRecentPurchaseDateKey"];

    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "MRP: initialized cached mrp", v8, 2u);
    }
  }
}

- (void)clearMostRecentPurchaseDateCache
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = +[NSDate distantPast];
  [v2 setObject:v3 forKey:@"BKMostRecentPurchaseDateKey"];

  v4 = BKLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "MRP: cleared cached mrp", v5, 2u);
  }
}

- (id)_updateMostRecentPurchaseDateCacheFromDataSources
{
  obj = [(BKLibraryManager *)self dataSources];
  objc_sync_enter(obj);
  v3 = dispatch_group_create();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_83E0;
  v29 = sub_83F0;
  v30 = +[NSDate distantPast];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(BKLibraryManager *)self dataSources];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v3);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_83F8;
          v18[3] = &unk_D5690;
          v20 = &v25;
          v18[4] = v8;
          v19 = v3;
          [v8 mostRecentPurchaseDate:v18];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v5);
  }

  v9 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v3, v9))
  {
    v10 = BKLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_8D43C();
    }
  }

  v11 = v26[5];
  objc_sync_enter(v11);
  v12 = +[NSUserDefaults standardUserDefaults];
  [v12 setObject:v26[5] forKey:@"BKMostRecentPurchaseDateKey"];

  v13 = BKLibraryLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v26[5];
    *buf = 138412290;
    v32 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "MRP: update cached mrp = %@", buf, 0xCu);
  }

  v15 = v26[5];
  objc_sync_exit(v11);

  _Block_object_dispose(&v25, 8);
  objc_sync_exit(obj);

  return v15;
}

- (void)updateMostRecentPurchaseDateCacheFromLibrary
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_85C8;
  v2[3] = &unk_D56B8;
  v2[4] = self;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v2];
}

- (NSDate)mostRecentPurchaseDate
{
  objc_opt_class();
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"BKMostRecentPurchaseDateKey"];
  v5 = BUDynamicCast();

  if (!v5)
  {
    v5 = [(BKLibraryManager *)self _updateMostRecentPurchaseDateCacheFromDataSources];
  }

  if (+[BCPPTConfig usePPTLaunchContent])
  {
    if (+[BCPPTConfig isReturningUser])
    {
      v6 = +[NSDate date];
    }

    else
    {
      v6 = 0;
    }

    v5 = v6;
  }

  return v5;
}

+ (BOOL)isDirectoryFileName:(id)a3
{
  v3 = [a3 pathExtension];
  if ([v3 isEqualToString:@"epub"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ibooks"];
  }

  return v4;
}

- (BKLibraryManager)init
{
  v3 = [objc_opt_class() persistentStoreURL];
  v4 = objc_opt_new();
  v5 = [(BKLibraryManager *)self initWithPersistentStoreURL:v3 bdsPriceTracker:v4];

  return v5;
}

- (BKLibraryManager)initWithPersistentStoreURL:(id)a3 bdsPriceTracker:(id)a4
{
  v6 = a3;
  v87 = a4;
  kdebug_trace();
  v100.receiver = self;
  v100.super_class = BKLibraryManager;
  v90 = [(BKLibraryManager *)&v100 initWithPersistentStoreURL:v6];
  if (v90)
  {
    v90->_notifyLockForNewAssets._os_unfair_lock_opaque = 0;
    v7 = +[NSMutableDictionary dictionary];
    notifyBlocksForNewAssets = v90->_notifyBlocksForNewAssets;
    v90->_notifyBlocksForNewAssets = v7;

    v88 = [objc_opt_class() persistentStoreURL];
    v89 = +[NSFileManager defaultManager];
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 BOOLForKey:@"BKLibraryPerformancePredicates"];

    if (v10)
    {
      v90->_usePerformancePredicates = 1;
    }

    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 BOOLForKey:@"BKLibraryClearDatabaseOnRestart"];

    if (v12)
    {
      v13 = BKLibraryLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_8D4E0();
      }

      [v89 removeItemAtURL:v88 error:0];
      v14 = +[NSUserDefaults standardUserDefaults];
      [v14 removeObjectForKey:@"BKLibraryClearDatabaseOnRestart"];
    }

    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = [v15 BOOLForKey:@"BKLibraryClearImageCacheOnRestart"];

    if (v16)
    {
      +[BCCacheManager clearCacheFiles];
      v17 = +[NSUserDefaults standardUserDefaults];
      [v17 removeObjectForKey:@"BKLibraryClearImageCacheOnRestart"];
    }

    v18 = [v88 path];
    v84 = [v89 fileExistsAtPath:v18 isDirectory:0];

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.iBooks.reloadSingleDispatchQueue", v19);
    migrationDispatchQueue = v90->_migrationDispatchQueue;
    v90->_migrationDispatchQueue = v20;

    v85 = [v88 URLByDeletingLastPathComponent];
    v22 = [v85 path];
    v23 = [v89 fileExistsAtPath:v22 isDirectory:0];

    if ((v23 & 1) == 0)
    {
      [v89 createDirectoryAtURL:v85 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_9660;
    v98[3] = &unk_D5528;
    v99 = v90;
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_9668;
    v96[3] = &unk_D5528;
    v24 = v99;
    v97 = v24;
    [(BKLibraryManager *)v24 loadCoreDataPersistentStoreInitializedHandler:v98 migrationHandler:v96];
    [(BKLibraryManager *)v24 _readLibraryVesionInfo];
    [(BKLibraryManager *)v24 createSeriesUpdaterMoc];
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_96F4;
    v94[3] = &unk_D56B8;
    v25 = v24;
    v95 = v25;
    [v25 performBlockOnCollectionsWorkerQueueAndWait:v94];
    if (v84)
    {
      [v25 setResetSeriesOnAllBooks:{objc_msgSend(v25, "_compareVersionWith:", @"0.0"}];
      [v25 setResetSeriesOnAllBooks:{objc_msgSend(v25, "resetSeriesOnAllBooks") | (objc_msgSend(v25, "_compareVersionWith:", @"1.3"}];
      [v25 setResetSeriesOnAllBooks:{objc_msgSend(v25, "resetSeriesOnAllBooks") | (objc_msgSend(v25, "_compareVersionWith:", @"2.0"}];
      [v25 setNeedsResetNilAuthorsOnAllSeries:{objc_msgSend(v25, "_compareVersionWith:", @"1.1"}];
      [v25 setNeedsResetNilAuthorsOnAllBooks:{objc_msgSend(v25, "_compareVersionWith:", @"1.2"}];
      [v25 setNeedsResetSeriesStacksAndCollectionMembershipOnAllBooks:{objc_msgSend(v25, "_compareVersionWith:", @"1.5"}];
      [v25 setNeedsDuplicateCollectionMembersRemoved:{objc_msgSend(v25, "_compareVersionWith:", @"1.9"}];
    }

    if ([v25 _compareVersionWith:@"1.8"] == &dword_0 + 1)
    {
      v26 = +[BUAccountsProvider sharedProvider];
      [v26 clearLastUsedStoreAccountID];
    }

    v27 = objc_alloc_init(NSMutableDictionary);
    v28 = v25[36];
    v25[36] = v27;

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create("com.apple.BKLibrary.ownershipSync", v29);
    v31 = v25[37];
    v25[37] = v30;

    v86 = [NSPredicate predicateWithFormat:@"%K != %@ AND %K != %@", @"contentType", &off_DDF58, @"state", &off_DDF58];
    v32 = [BCManagedObjectIDMonitor alloc];
    v33 = [v25 persistentStoreCoordinator];
    v102[0] = @"state";
    v102[1] = @"dataSourceIdentifier";
    v34 = [NSArray arrayWithObjects:v102 count:2];
    v35 = [NSSet setWithArray:v34];
    v36 = [v32 initWithContext:0 coordinator:v33 entityName:@"BKLibraryAsset" predicate:v86 mapProperty:@"assetID" propertiesOfInterest:v35 observer:v25];
    v37 = v25[34];
    v25[34] = v36;

    v38 = [BCManagedObjectIDMonitor alloc];
    v39 = [v25 persistentStoreCoordinator];
    v101[0] = @"state";
    v101[1] = @"dataSourceIdentifier";
    v40 = [NSArray arrayWithObjects:v101 count:2];
    v41 = [NSSet setWithArray:v40];
    v42 = [v38 initWithContext:0 coordinator:v39 entityName:@"BKLibraryAsset" predicate:v86 mapProperty:@"temporaryAssetID" propertiesOfInterest:v41 observer:v25];
    v43 = v25[35];
    v25[35] = v42;

    v44 = objc_alloc_init(NSMutableSet);
    v45 = v25[25];
    v25[25] = v44;

    v46 = objc_alloc_init(NSMutableDictionary);
    v47 = v25[26];
    v25[26] = v46;

    v48 = objc_alloc_init(NSMutableSet);
    v49 = v25[27];
    v25[27] = v48;

    v50 = objc_alloc_init(NSMutableSet);
    v51 = v25[28];
    v25[28] = v50;

    v52 = objc_alloc_init(NSOperationQueue);
    v53 = v25[10];
    v25[10] = v52;

    [v25[10] setMaxConcurrentOperationCount:4];
    [v25[10] setQualityOfService:25];
    v54 = objc_alloc_init(NSOperationQueue);
    v55 = v25[11];
    v25[11] = v54;

    [v25[11] setMaxConcurrentOperationCount:4];
    [v25[11] setQualityOfService:17];
    v56 = [[BKLibraryPriceManager alloc] initWithLibraryManager:v25];
    v57 = v25[12];
    v25[12] = v56;

    v58 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v59 = dispatch_queue_attr_make_initially_inactive(v58);
    v60 = dispatch_queue_create("com.apple.iBooks.updatesScheduleQueue", v59);
    v61 = v25[21];
    v25[21] = v60;

    v62 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v63 = dispatch_queue_create("com.apple.iBooks.dqSyncQueue", v62);
    v64 = v25[23];
    v25[23] = v63;

    v65 = dispatch_queue_create("com.apple.iBooks.completionQueue", &_dispatch_queue_attr_concurrent);
    v66 = v25[24];
    v25[24] = v65;

    objc_initWeak(&location, v25);
    v67 = [BUCoalescingCallBlock alloc];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_9754;
    v91[3] = &unk_D56E0;
    objc_copyWeak(&v92, &location);
    v68 = [v67 initWithNotifyBlock:v91 notifyTimeout:360 blockDescription:@"BKLibraryManager reload" notifyTimeoutBlock:&stru_D5720];
    v69 = v25[30];
    v25[30] = v68;

    v70 = objc_opt_new();
    v71 = v25[31];
    v25[31] = v70;

    v72 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v73 = dispatch_queue_create("com.apple.iBooks.coalescedDataSourceReloadByIdentifierSync", v72);
    v74 = v25[32];
    v25[32] = v73;

    v75 = [[BKLibraryAssetDetailsManager alloc] initWithLibraryManager:v25];
    [v25 setAssetDetailsManager:v75];

    v76 = [v25 metadataObjectForKey:@"BKLibraryIsMigrating"];
    LOBYTE(v59) = [v76 BOOLValue];

    if (v59)
    {
      v77 = 1;
    }

    else
    {
      [v25 loadCachedMigrationData];
      v77 = v84 ^ 1;
    }

    v78 = +[NSUserDefaults standardUserDefaults];
    v79 = [v78 BOOLForKey:@"BKLibraryTestMigration"];

    if (v79)
    {
      v80 = BKLibraryLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        sub_8D550();
      }

      v77 = 1;
    }

    [v25 setNeedsMigration:v77];
    [v25 _performInitialDataBaseMaintenance];
    [v25 resetNextCollectionSort];
    v81 = [[BKLibraryPriceTracker alloc] initWithLibraryManager:v25 bdsPriceTracker:v87];
    v82 = v25[14];
    v25[14] = v81;

    objc_destroyWeak(&v92);
    objc_destroyWeak(&location);
  }

  kdebug_trace();

  return v90;
}

- (void)tearDownPersistentStores
{
  v3 = [(BKLibraryManager *)self workerChildContext];
  workerChildContext = self->_workerChildContext;
  self->_workerChildContext = 0;

  v30 = v3;
  [v3 performBlockAndWait:&stru_D5740];
  v5 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  collectionsWorkerChildContext = self->_collectionsWorkerChildContext;
  self->_collectionsWorkerChildContext = 0;

  v29 = v5;
  [v5 performBlockAndWait:&stru_D5760];
  v7 = [(BKLibraryManager *)self uiChildContext];
  uiChildContext = self->_uiChildContext;
  self->_uiChildContext = 0;

  v28 = v7;
  [v7 performBlockAndWait:&stru_D5780];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = [(BKLibraryManager *)self persistentStoreCoordinator];
  v52[0] = v9;
  v10 = [(BKLibraryManager *)self ui_persistentStoreCoordinator];
  v52[1] = v10;
  v11 = [NSArray arrayWithObjects:v52 count:2];

  obj = v11;
  v33 = [v11 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v33)
  {
    v32 = *v42;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v12;
        v13 = *(*(&v41 + 1) + 8 * v12);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v14 = [v13 persistentStores];
        v15 = [v14 copy];

        v16 = [v15 countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v38;
          do
          {
            v19 = 0;
            do
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v37 + 1) + 8 * v19);
              v36 = 0;
              [v13 removePersistentStore:v20 error:&v36];
              v21 = v36;
              if (v21)
              {
                v22 = BKLibraryLog();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  v23 = [(BKLibraryManager *)self persistentStoreURL];
                  *buf = 138412802;
                  v46 = self;
                  v47 = 2112;
                  v48 = v20;
                  v49 = 2112;
                  v50 = v23;
                  _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%@: Error removing persistent store %@ for persistentStoreURL: %@", buf, 0x20u);
                }
              }

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v37 objects:v51 count:16];
          }

          while (v17);
        }

        v24 = [(BKLibraryManager *)self persistentStoreURL];
        v25 = [(BKLibraryManager *)self _persistentStoreOptions];
        v35 = 0;
        [v13 destroyPersistentStoreAtURL:v24 withType:NSSQLiteStoreType options:v25 error:&v35];
        v26 = v35;

        if (v26 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v27 = [(BKLibraryManager *)self persistentStoreURL];
          *buf = 138412546;
          v46 = self;
          v47 = 2112;
          v48 = v27;
          _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%@: Error destroying persistentStoreURL: %@", buf, 0x16u);
        }

        v12 = v34 + 1;
      }

      while ((v34 + 1) != v33);
      v33 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v33);
  }
}

- (void)_performInitialDataBaseMaintenance
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_9CD0;
  v2[3] = &unk_D56B8;
  v2[4] = self;
  [(BKLibraryManager *)self performNamed:@"_performInitialDataBaseMaintenance" workerQueueBlockAndWait:v2];
}

- (void)_cleanUpOrphanedSampleAssets:(id)a3
{
  v7 = a3;
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v4 = [NSPredicate predicateWithFormat:@"isSample == 1 AND collectionMembers.@count == 0"];
  [v3 setPredicate:v4];

  v5 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v3];
  v6 = [v7 executeRequest:v5 error:0];
}

- (id)_assetIDsForCollectionID:(id)a3 moc:(id)a4
{
  v5 = a4;
  v6 = [NSPredicate predicateWithFormat:@"collection.collectionID == %@ AND (asset.isHidden == NO OR asset.isHidden == NULL) AND (asset.isEphemeral == NO OR asset.isEphemeral == NULL) AND asset.state != %@", a3, &off_DDF58];
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  [v7 setPredicate:v6];
  v8 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
  v16 = v8;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  [v7 setSortDescriptors:v9];

  v15 = 0;
  v10 = [v5 executeFetchRequest:v7 error:&v15];

  v11 = v15;
  if (v10)
  {
    v12 = [v10 valueForKey:@"assetID"];
  }

  else
  {
    v13 = BKLibraryLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_8D614();
    }

    v12 = 0;
  }

  return v12;
}

- (void)_removeAllMembersFromCollection:(id)a3 moc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v8 = [NSPredicate predicateWithFormat:@"collection.collectionID == %@", v5];
  [v7 setPredicate:v8];

  [v7 setFetchBatchSize:32];
  v20 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v20];
  v10 = v20;
  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v6 deleteObject:*(*(&v16 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8D614();
    }
  }
}

- (void)_sortUserCollectionToTop:(id)a3 moc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollection"];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:0];
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  [v8 setSortDescriptors:v10];

  v11 = +[BKCollection predicateForNonDeletedUserCollections];
  [v8 setPredicate:v11];

  v16 = 0;
  v12 = [v7 executeFetchRequest:v8 error:&v16];

  v13 = v16;
  if (v12)
  {
    v14 = [v12 mutableCopy];
    v15 = [v14 indexOfObject:v6];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v14 removeObjectAtIndex:v15];
      [v14 addObject:v6];
      if ([BKUserSortOrderManager resortDescendingSortKeyedObjects:v14])
      {
        [(BKLibraryManager *)self resetNextCollectionSort];
        [(BKLibraryManager *)self saveMetaData];
      }
    }
  }

  else
  {
    v14 = BKLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_8D614();
    }
  }
}

- (void)_persistentStoreDidMigrate
{
  v3 = BKLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Library Persistent Store did migrate.", buf, 2u);
  }

  [(BKLibraryManager *)self setDidMigrateFromITunesSyncToICloudSync:[(BKLibraryManager *)self _compareVersionWith:@"1.7"]== &dword_0 + 1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A498;
  v5[3] = &unk_D56B8;
  v5[4] = self;
  [(BKLibraryManager *)self performBlockOnCollectionsWorkerQueue:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A4F8;
  v4[3] = &unk_D56B8;
  v4[4] = self;
  [(BKLibraryManager *)self performBlockOnCollectionsWorkerQueue:v4];
}

- (void)migrateToMyBooksWithAssetIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(BKLibraryManager *)self _assetIDsForCollectionID:kBKCollectionDefaultIDBooks moc:v7];
    v9 = [v6 isEqualToArray:v8];
    v10 = BKLibraryLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "My Books: Migration not needed for Books collection - collections match", buf, 2u);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 134218240;
        v50 = [v6 count];
        v51 = 2048;
        v52 = [v8 count];
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "My Books: Migrating items in Books collection (old: %lu new: %lu).", buf, 0x16u);
      }

      v10 = [(BKLibraryManager *)self collectionController];
      v38 = +[BCCollection identifierForMyBooksCollection];
      v12 = [NSObject mutableCollectionWithCollectionID:v10 inManagedObjectContext:"mutableCollectionWithCollectionID:inManagedObjectContext:error:" error:?];
      v37 = v12;
      if (v12)
      {
        v13 = v12;
        v14 = BKLibraryLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "My Books: Found collection", buf, 2u);
        }

        v36 = 0;
      }

      else
      {
        v35 = self;
        v34 = [(BKLibraryManager *)self collectionProvider];
        v15 = [v34 userCollectionsInManagedObjectContext:v7 withError:0];
        v16 = objc_alloc_init(NSMutableArray);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v44;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v44 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v43 + 1) + 8 * i) title];
              if (v22)
              {
                [v16 addObject:v22];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v19);
        }

        v23 = [BCCollection uniqueTitleForMyBooksCollection:v16];
        v13 = [BKCollection insertNewCollectionWithCollectionID:v38 inManagedObjectContext:v7];
        [v13 setTitle:v23];
        v24 = BKLibraryLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "My Books: Created collection", buf, 2u);
        }

        v36 = v23;

        v14 = v34;
        self = v35;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = v6;
      v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [v13 addCollectionMemberAvoidingDupesWithAssetID:*(*(&v39 + 1) + 8 * j) sortKey:0 forceToTop:0];
          }

          v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v27);
      }

      if (!v37)
      {
        [(BKLibraryManager *)self _sortUserCollectionToTop:v13 moc:v7];
        [v13 setLocalModDate:0];
        v31 = [(BKLibraryManager *)self delegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          v33 = [(BKLibraryManager *)self delegate];
          [v33 didMigrateBooksCollection:v36];
        }
      }
    }
  }

  else
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "My Books: Migration not needed for Books collection - no assetIDs", buf, 2u);
    }
  }
}

- (void)_updateRelationshipsInContext:(id)a3
{
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v5 = [(BKLibraryManager *)self migrationDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B04C;
  block[3] = &unk_D57A8;
  block[4] = &v42;
  dispatch_sync(v5, block);

  if (*(v43 + 24) == 1)
  {
    v6 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    v7 = [NSPredicate predicateWithFormat:@"seriesID != NULL AND contentType != %@ AND seriesContainer == NULL", &off_DDF58];
    [v6 setPredicate:v7];

    [v6 setFetchBatchSize:32];
    v8 = [v4 executeFetchRequest:v6 error:0];
    v9 = +[NSMutableDictionary dictionary];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v11)
    {
      v12 = *v38;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v37 + 1) + 8 * i);
          [(BKLibraryManager *)self updateSeriesRelationshipsForSeriesAsset:v14];
          v15 = [v14 seriesContainer];
          v16 = [v14 seriesID];
          [v9 setObject:v15 forKeyedSubscript:v16];
        }

        v11 = [v10 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v11);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = v9;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v18)
    {
      v19 = *v34;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = [v17 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * j)];
          [(BKLibraryManager *)self _updateAuthorForSeriesContainer:v21];
        }

        v18 = [v17 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v18);
    }

    v22 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    v23 = [NSPredicate predicateWithFormat:@"contentType != %@ AND storePlaylistID != NULL AND isSupplementalContent == YES AND supplementalContentParent == NULL", &off_DDF70];
    [v22 setPredicate:v23];

    [v22 setFetchBatchSize:32];
    [v4 executeFetchRequest:v22 error:0];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v24 = v30 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v29 objects:v46 count:16];
    if (v25)
    {
      v26 = *v30;
      do
      {
        for (k = 0; k != v25; k = k + 1)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v24);
          }

          [(BKLibraryManager *)self updateSupplementalContentRelationship:*(*(&v29 + 1) + 8 * k)];
        }

        v25 = [v24 countByEnumeratingWithState:&v29 objects:v46 count:16];
      }

      while (v25);
    }

    v28 = [(BKLibraryManager *)self migrationDispatchQueue];
    dispatch_sync(v28, &stru_D57C8);
  }

  _Block_object_dispose(&v42, 8);
}

- (void)_readLibraryVesionInfo
{
  v3 = [(BKLibraryManager *)self metadataObjectForKey:@"BKLibraryVersion_Key"];
  v4 = v3;
  self->_majorVersion = 0;
  self->_minorVersion = 0;
  if (v3)
  {
    v5 = [v3 componentsSeparatedByString:@"."];
    if ([v5 count] == &dword_0 + 2)
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      self->_majorVersion = [v6 integerValue];

      v7 = [v5 objectAtIndexedSubscript:1];
      self->_minorVersion = [v7 integerValue];
    }

    else
    {
      v7 = BKLibraryLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_8D67C();
      }
    }
  }

  if (([@"2.0" isEqualToString:v4] & 1) == 0)
  {
    [(BKLibraryManager *)self setMetadataObject:@"2.0" forKey:@"BKLibraryVersion_Key"];
    [(BKLibraryManager *)self saveMetaData];
  }
}

- (int64_t)_compareVersionWith:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"."];
  if ([v5 count] == &dword_0 + 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 integerValue];

    v8 = [v5 objectAtIndexedSubscript:1];
    v9 = [v8 integerValue];

    if (v7 == [(BKLibraryManager *)self majorVersion])
    {
      if (v9 == [(BKLibraryManager *)self minorVersion])
      {
        v10 = 0;
        goto LABEL_13;
      }

      v12 = v9 >= [(BKLibraryManager *)self minorVersion];
    }

    else
    {
      v12 = v7 >= [(BKLibraryManager *)self majorVersion];
    }

    if (v12)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8D6E4();
    }

    v10 = -1;
  }

LABEL_13:

  return v10;
}

- (void)_scheduleOperationGroupWithName:(id)a3 block:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [[BKLibraryUpdateGroup alloc] initWithName:v7];

    v9 = [(BKLibraryManager *)self updatesScheduleQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_B418;
    block[3] = &unk_D57F0;
    block[4] = self;
    v13 = v8;
    v14 = v6;
    v10 = v8;
    dispatch_async(v9, block);

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_B474;
    v11[3] = &unk_D5528;
    v11[4] = self;
    [(BKLibraryUpdateGroup *)v10 executeWithCompletion:v11];
  }
}

- (void)_setupUICoreDataStack
{
  v3 = [[BKLibraryManagedObjectContext alloc] initWithConcurrencyType:2];
  uiChildContext = self->_uiChildContext;
  self->_uiChildContext = v3;

  [(BKLibraryManagedObjectContext *)self->_uiChildContext setName:@"UI Child Context"];
  v5 = [(BKLibraryManager *)self ui_persistentStoreCoordinator];
  [(BKLibraryManagedObjectContext *)self->_uiChildContext setPersistentStoreCoordinator:v5];

  [(BKLibraryManagedObjectContext *)self->_uiChildContext setUndoManager:0];
  [(BKLibraryManagedObjectContext *)self->_uiChildContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [(BKLibraryManagedObjectContext *)self->_uiChildContext setSessionContextType:5];
  [(BKLibraryManagedObjectContext *)self->_uiChildContext setLibraryManager:self];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"uiManagedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:self->_uiChildContext];
}

- (BKLibraryManagedObjectContext)uiChildContext
{
  uiChildContext = self->_uiChildContext;
  if (!uiChildContext)
  {
    [(BKLibraryManager *)self _setupUICoreDataStack];
    uiChildContext = self->_uiChildContext;
  }

  return uiChildContext;
}

- (void)_setupCoreDataStack
{
  BUIsRunningTests();
  v3 = [NSPersistentStoreCoordinator alloc];
  v4 = [(BKLibraryManager *)self managedObjectModel];
  v5 = [v3 initWithManagedObjectModel:v4];
  ui_persistentStoreCoordinator = self->_ui_persistentStoreCoordinator;
  self->_ui_persistentStoreCoordinator = v5;

  v7 = self->_ui_persistentStoreCoordinator;
  if (v7 || (BCReportAssertionFailureWithMessage(), (v7 = self->_ui_persistentStoreCoordinator) != 0))
  {
    v8 = [(BKLibraryManager *)self persistentStoreURL];
    v9 = [(BKLibraryManager *)self _persistentStoreOptions];
    v38 = 0;
    v10 = [(NSPersistentStoreCoordinator *)v7 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v8 options:v9 error:&v38];
    v11 = v38;
    ui_persistentStore = self->_ui_persistentStore;
    self->_ui_persistentStore = v10;

    v13 = self->_ui_persistentStore;
    if (!v13)
    {
      sub_8D74C();
    }
  }

  v14 = [[BKLibraryManagedObjectContext alloc] initWithConcurrencyType:1];
  [(BKLibraryManager *)self setWorkerChildContext:v14];

  v15 = [(BKLibraryManager *)self workerChildContext];
  [v15 setName:@"Worker Context"];

  v16 = [(BKLibraryManager *)self persistentStoreCoordinator];
  v17 = [(BKLibraryManager *)self workerChildContext];
  [v17 setPersistentStoreCoordinator:v16];

  v18 = [(BKLibraryManager *)self workerChildContext];
  [v18 setUndoManager:0];

  v19 = NSMergeByPropertyObjectTrumpMergePolicy;
  v20 = [(BKLibraryManager *)self workerChildContext];
  [v20 setMergePolicy:v19];

  v21 = [(BKLibraryManager *)self workerChildContext];
  [v21 setLibraryManager:self];

  v22 = [[BKLibraryManagedObjectContext alloc] initWithConcurrencyType:1];
  [(BKLibraryManager *)self setCollectionsWorkerChildContext:v22];

  v23 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [v23 setName:@"Collections Worker Context"];

  v24 = [(BKLibraryManager *)self persistentStoreCoordinator];
  v25 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [v25 setPersistentStoreCoordinator:v24];

  v26 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [v26 setUndoManager:0];

  v27 = NSMergeByPropertyObjectTrumpMergePolicy;
  v28 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [v28 setMergePolicy:v27];

  v29 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [v29 setLibraryManager:self];

  v30 = [[BKLibraryManagedObjectContext alloc] initWithConcurrencyType:1];
  readOnlyChildContext = self->_readOnlyChildContext;
  self->_readOnlyChildContext = v30;

  [(BKLibraryManagedObjectContext *)self->_readOnlyChildContext setName:@"Read-only Child Context"];
  v32 = [(BKLibraryManager *)self persistentStoreCoordinator];
  [(BKLibraryManagedObjectContext *)self->_readOnlyChildContext setPersistentStoreCoordinator:v32];

  [(BKLibraryManagedObjectContext *)self->_readOnlyChildContext setUndoManager:0];
  [(BKLibraryManagedObjectContext *)self->_readOnlyChildContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [(BKLibraryManagedObjectContext *)self->_readOnlyChildContext setLibraryManager:self];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_BAAC;
  v37[3] = &unk_D5818;
  v37[4] = self;
  v33 = [[IMManagedObjectContextReadOnlyPool alloc] initWithContextProvider:v37];
  [(BKLibraryManager *)self setBackgroundReadOnlyContextPool:v33];

  v34 = +[NSNotificationCenter defaultCenter];
  v35 = [(BKLibraryManager *)self workerChildContext];
  [v34 addObserver:self selector:"workerManagedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:v35];

  v36 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [v34 addObserver:self selector:"collectionsWorkerManagedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:v36];

  [v34 addObserver:self selector:"otherManagedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:0];
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_imageSourceOperationQueue cancelAllOperations];
  imageSourceOperationQueue = self->_imageSourceOperationQueue;
  self->_imageSourceOperationQueue = 0;

  [(NSOperationQueue *)self->_imageSourceScalingOperationQueue cancelAllOperations];
  imageSourceScalingOperationQueue = self->_imageSourceScalingOperationQueue;
  self->_imageSourceScalingOperationQueue = 0;

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(BKLibraryManager *)self dataSources];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 removeObserver:self forKeyPath:@"processingAuthentication" context:off_EE768];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = BKLibraryManager;
  [(BKLibraryManager *)&v12 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (off_EE768 == a6)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([v10 processingAuthentication])
      {
        [(BKLibraryManager *)self _updateProcessingAuthenticationStateImmediate];
      }

      else
      {
        [(BKLibraryManager *)self _updateProcessingAuthenticationStateDeferred];
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = BKLibraryManager;
    [(BKLibraryManager *)&v11 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

- (NSString)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend(v3, "appendFormat:", @"<%@: %p dataSources=("), v5, self;

  v6 = [(BKLibraryManager *)self dataSources];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v6 indexOfObjectIdenticalTo:v11];
        v13 = 1 << v12;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 0;
        }

        [v3 appendFormat:@"%@ b=%#lx, ", v11, v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [(BKLibraryManager *)self dataSources];
  v15 = [v14 count];

  if (v15)
  {
    [v3 replaceCharactersInRange:objc_msgSend(v3 withString:{"length") - 2, 2, &stru_D8298}];
  }

  [v3 appendFormat:@">"]);
  v16 = [v3 copy];

  return v16;
}

- (NSString)debugDescription
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend(v3, "appendFormat:", @"<%@: %p dataSources=(\n"), v5, self;

  v6 = [(BKLibraryManager *)self dataSources];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        v12 = [v6 indexOfObjectIdenticalTo:v11];
        v13 = 1 << v12;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 0;
        }

        [v3 appendFormat:@"%@ b=%#lx, \n", v11, v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v8);
  }

  v14 = [(BKLibraryManager *)self dataSources];
  v15 = [v14 count];

  if (v15)
  {
    [v3 replaceCharactersInRange:objc_msgSend(v3 withString:{"length") - 2, 2, &stru_D8298}];
  }

  [v3 appendFormat:@">"]);
  [v3 appendFormat:@"assetUpdatesByIdentifier={\n"];
  v45 = self;
  v16 = [(BKLibraryManager *)self assetUpdatesByIdentifier];
  v17 = [v16 allKeys];
  v18 = [v17 sortedArrayUsingSelector:"compare:"];

  v19 = [v18 count];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    do
    {
      v22 = [v18 objectAtIndexedSubscript:v21];
      v23 = [v16 objectForKeyedSubscript:v22];
      v24 = sub_C48C([v23 dataSourcesBitmask], v6);
      v25 = [v24 identifier];
      v26 = v25;
      --v20;
      v27 = &stru_D8298;
      if (v20)
      {
        v27 = @",";
      }

      [v3 appendFormat:@"%@=%@ dataSource=%@%@\n", v22, v23, v25, v27];

      ++v21;
    }

    while (v20);
  }

  v44 = v18;
  v47 = v16;
  [v3 appendFormat:@"}\n"];
  v28 = [(BKLibraryManager *)v45 unclaimedAssetIDs];
  v29 = [(BKLibraryManager *)v45 unclaimedTemporaryAssetIDs];
  [v3 appendFormat:@"unclaimedAssetIDs=%@\nunclaimedTemporaryAssetIDs=%@\n", v28, v29];

  v30 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v52[0] = @"assetID";
  v52[1] = @"temporaryAssetID";
  v52[2] = @"title";
  v52[3] = @"dataSourceIdentifier";
  v31 = [NSArray arrayWithObjects:v52 count:4];
  [v30 setPropertiesToFetch:v31];

  [v30 setResultType:2];
  v32 = [(BKLibraryManager *)v45 uiChildContext];
  v46 = v30;
  v33 = [v32 executeFetchRequest:v30 error:0];

  v34 = [v33 count];
  [v3 appendFormat:@"BKLibraryAssets={\n"];
  if (v34)
  {
    v35 = 0;
    do
    {
      v36 = [v33 objectAtIndexedSubscript:v35];
      v37 = [v36 objectForKeyedSubscript:@"assetID"];
      v38 = [v36 objectForKeyedSubscript:@"temporaryAssetID"];
      v39 = [v36 objectForKeyedSubscript:@"title"];
      v40 = [v36 objectForKeyedSubscript:@"dataSourceIdentifier"];
      v41 = v40;
      --v34;
      v42 = &stru_D8298;
      if (v34)
      {
        v42 = @",";
      }

      [v3 appendFormat:@"id=%@ tid=%@ title='%@' dataSource=%@%@\n", v37, v38, v39, v40, v42];

      ++v35;
    }

    while (v34);
  }

  [v3 appendFormat:@"} >"];

  return v3;
}

- (void)dq_sync:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BKLibraryManager *)self dqSyncQueue];
    dispatch_sync(v5, v4);
  }
}

- (void)uiManagedObjectContextDidSaveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:NSInsertedObjectsKey];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:NSUpdatedObjectsKey];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKey:NSDeletedObjectsKey];

  if ([v6 count] || objc_msgSend(v8, "count") || objc_msgSend(v10, "count"))
  {
    v11 = [(BKLibraryManager *)self workerChildContext];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_C738;
    v22[3] = &unk_D5420;
    v22[4] = self;
    v12 = v4;
    v23 = v12;
    [v11 performBlock:v22];

    v13 = [(BKLibraryManager *)self collectionsWorkerChildContext];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_C78C;
    v19 = &unk_D5420;
    v20 = self;
    v14 = v12;
    v21 = v14;
    [v13 performBlock:&v16];

    v15 = [(BKLibraryManager *)self backgroundReadOnlyContextPool:v16];
    [v15 remoteContextDidSave:v14];
  }
}

- (void)workerManagedObjectContextDidSaveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:NSInsertedObjectsKey];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:NSUpdatedObjectsKey];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKey:NSDeletedObjectsKey];

  if ([v6 count] || objc_msgSend(v8, "count") || objc_msgSend(v10, "count"))
  {
    uiChildContext = self->_uiChildContext;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_C9E0;
    v22[3] = &unk_D5420;
    v22[4] = self;
    v12 = v4;
    v23 = v12;
    [(BKLibraryManagedObjectContext *)uiChildContext performBlock:v22];
    v13 = [(BKLibraryManager *)self collectionsWorkerChildContext];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_CAA8;
    v19 = &unk_D5420;
    v20 = self;
    v14 = v12;
    v21 = v14;
    [v13 performBlock:&v16];

    v15 = [(BKLibraryManager *)self backgroundReadOnlyContextPool:v16];
    [v15 remoteContextDidSave:v14];
  }
}

- (void)collectionsWorkerManagedObjectContextDidSaveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:NSInsertedObjectsKey];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:NSUpdatedObjectsKey];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKey:NSDeletedObjectsKey];

  if ([v6 count] || objc_msgSend(v8, "count") || objc_msgSend(v10, "count"))
  {
    uiChildContext = self->_uiChildContext;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_CCFC;
    v22[3] = &unk_D5420;
    v22[4] = self;
    v12 = v4;
    v23 = v12;
    [(BKLibraryManagedObjectContext *)uiChildContext performBlock:v22];
    v13 = [(BKLibraryManager *)self workerChildContext];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_CDC4;
    v19 = &unk_D5420;
    v20 = self;
    v14 = v12;
    v21 = v14;
    [v13 performBlock:&v16];

    v15 = [(BKLibraryManager *)self backgroundReadOnlyContextPool:v16];
    [v15 remoteContextDidSave:v14];
  }
}

- (void)otherManagedObjectContextDidSaveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  if (v5 != self->_uiChildContext)
  {
    v6 = [(BKLibraryManager *)self workerChildContext];
    if (v5 == v6)
    {
LABEL_11:

      goto LABEL_12;
    }

    v7 = [(BKLibraryManager *)self collectionsWorkerChildContext];
    if (v5 == v7)
    {
LABEL_10:

      goto LABEL_11;
    }

    v8 = [(BKLibraryManagedObjectContext *)v5 persistentStoreCoordinator];
    v9 = [(BKLibraryManager *)self persistentStoreCoordinator];
    v10 = [v8 hasStoreInCommonWith:v9];

    if (v10)
    {
      v11 = [v4 userInfo];
      v6 = [v11 objectForKey:NSInsertedObjectsKey];

      v12 = [v4 userInfo];
      v7 = [v12 objectForKey:NSUpdatedObjectsKey];

      v13 = [v4 userInfo];
      v14 = [v13 objectForKey:NSDeletedObjectsKey];

      if (-[BKLibraryManagedObjectContext count](v6, "count") || -[BKLibraryManagedObjectContext count](v7, "count") || [v14 count])
      {
        uiChildContext = self->_uiChildContext;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_D120;
        v30[3] = &unk_D5420;
        v30[4] = self;
        v16 = v4;
        v31 = v16;
        [(BKLibraryManagedObjectContext *)uiChildContext performBlock:v30];
        v17 = [(BKLibraryManager *)self workerChildContext];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_D1E8;
        v28[3] = &unk_D5420;
        v28[4] = self;
        v18 = v16;
        v29 = v18;
        [v17 performBlock:v28];

        v19 = [(BKLibraryManager *)self collectionsWorkerChildContext];
        v22 = _NSConcreteStackBlock;
        v23 = 3221225472;
        v24 = sub_D23C;
        v25 = &unk_D5420;
        v26 = self;
        v20 = v18;
        v27 = v20;
        [v19 performBlock:&v22];

        v21 = [(BKLibraryManager *)self backgroundReadOnlyContextPool:v22];
        [v21 remoteContextDidSave:v20];
      }

      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)performBlockOnCollectionsWorkerQueue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = BCSignpostLibrary();
    v6 = os_signpost_id_generate(v5);

    v7 = BCSignpostLibrary();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_EVENT, v6, "CollectionsQueueAsyncScheduled", "", buf, 2u);
    }

    v9 = [(BKLibraryManager *)self collectionsWorkerChildContext];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_D3BC;
    v10[3] = &unk_D5840;
    v12 = v6;
    v10[4] = self;
    v11 = v4;
    [v9 performBlock:v10];
  }
}

- (void)performBlockOnCollectionsWorkerQueueAndWait:(id)a3
{
  v4 = a3;
  if (+[NSThread isMainThread])
  {
    v5 = BKLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_8D784();
    }
  }

  if (v4)
  {
    v6 = BCSignpostLibrary();
    v7 = os_signpost_id_generate(v6);

    v8 = BCSignpostLibrary();
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_EVENT, v7, "CollectionsQueueSyncScheduled", "", buf, 2u);
    }

    v10 = [(BKLibraryManager *)self collectionsWorkerChildContext];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_D6A8;
    v11[3] = &unk_D5840;
    v13 = v7;
    v11[4] = self;
    v12 = v4;
    [v10 performBlockAndWait:v11];
  }
}

- (void)performNamed:(id)a3 workerQueueBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCSignpostLibrary();
  v9 = os_signpost_id_generate(v8);

  v10 = BCSignpostLibrary();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138543362;
    v20 = v6;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_EVENT, v9, "WorkerQueueAsyncScheduled", "%{public}@", buf, 0xCu);
  }

  v12 = [(BKLibraryManager *)self workerChildContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_D9CC;
  v15[3] = &unk_D57F0;
  v17 = self;
  v18 = v7;
  v16 = v6;
  v13 = v7;
  v14 = v6;
  [v12 performBlock:v15];
}

- (void)performNamed:(id)a3 workerQueueBlockAndWait:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[NSThread isMainThread])
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_8D784();
    }
  }

  v9 = BCSignpostLibrary();
  v10 = os_signpost_id_generate(v9);

  v11 = BCSignpostLibrary();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 138543362;
    v21 = v6;
    _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, v10, "WorkerQueueSyncScheduled", "%{public}@", buf, 0xCu);
  }

  v13 = [(BKLibraryManager *)self workerChildContext];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_DD74;
  v16[3] = &unk_D57F0;
  v18 = self;
  v19 = v7;
  v17 = v6;
  v14 = v7;
  v15 = v6;
  [v13 performBlockAndWait:v16];
}

- (void)performBlockInUIContext:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!+[NSThread isMainThread])
  {
    sub_8D7C4();
  }

  if (v10)
  {
    v7 = [(BKLibraryManager *)self uiChildContext];
    v10[2](v10, v7);
  }

  else
  {
    sub_8D800(self, &v12);
    v7 = v12;
  }

  if ([v7 hasChanges])
  {
    [v7 setSaveContext:2];
    [v7 save:0];
  }

  v8 = objc_retainBlock(v6);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }
}

- (void)performBackgroundReadOnlyBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BKLibraryManager *)self backgroundReadOnlyContextPool];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_E0FC;
    v6[3] = &unk_D5868;
    v7 = v4;
    [v5 performReadOnlyBlock:v6];
  }
}

- (void)performBackgroundReadOnlyBlockAndWait:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_semaphore_create(0);
    v6 = [(BKLibraryManager *)self backgroundReadOnlyContextPool];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E1EC;
    v8[3] = &unk_D5890;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    [v6 performReadOnlyBlock:v8];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (id)newManagedObjectContextWithClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = BKLibraryManager;
  return [(BKLibraryManager *)&v4 newManagedObjectContextWithClass:a3];
}

- (BOOL)hasBooks
{
  if (!+[NSThread isMainThread])
  {
    sub_8D858();
  }

  v3 = [(BKLibraryManager *)self uiChildContext];
  v4 = [BKLibraryManager numberOfLibraryAssetsInManagdObjectContext:v3];

  return v4 != 0;
}

- (void)checkOwnedSingleBookSeriesWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v25 = self;
  v6 = [objc_opt_class() predicateForOwnedSingleAssetSeries];
  [v5 setPredicate:v6];

  [v5 setReturnsDistinctResults:1];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v38 = 0;
  v27 = v5;
  v28 = v4;
  v9 = [v4 executeFetchRequest:v5 error:&v38];
  v26 = v38;
  v10 = [v9 bu_arrayByRemovingNSNulls];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [v15 seriesID];

        if (v16)
        {
          objc_opt_class();
          v17 = [v15 seriesBooks];
          v18 = [v17 anyObject];
          v19 = BUDynamicCast();

          LODWORD(v18) = [v19 isAudiobook];
          v20 = [v15 seriesID];
          if (v18)
          {
            v21 = v8;
          }

          else
          {
            v21 = v7;
          }

          [v21 addObject:v20];
        }

        else
        {
          v19 = BKLibraryLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v40 = v15;
            _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "Series with single asset has no seriesID: %@", buf, 0xCu);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v12);
  }

  if (v26)
  {
    v22 = BKLibraryLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_8D894();
    }
  }

  else
  {
    v23 = +[BUBag defaultBag];
    v24 = [v23 seriesInfoUpdateIntervalEnabled];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_E668;
    v30[3] = &unk_D58B8;
    v31 = v7;
    v32 = v8;
    v33 = v25;
    [v24 valueWithCompletion:v30];

    v22 = v31;
  }
}

- (void)checkNonSeriesAudiobooksWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v6 = [BKLibraryManager predicateForAssetsInCollectionID:kBKCollectionDefaultIDAudiobooks allowExplicit:1];
  v7 = [NSPredicate predicateWithFormat:@"%K != NULL AND %K != %@ AND seriesContainer == NULL", @"storeID", @"contentType", &off_DDF58];
  v25[0] = v6;
  v25[1] = v7;
  v8 = [NSArray arrayWithObjects:v25 count:2];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [v5 setPredicate:v9];

  [v5 setReturnsDistinctResults:1];
  v24 = @"storeID";
  v10 = [NSArray arrayWithObjects:&v24 count:1];
  [v5 setPropertiesToFetch:v10];

  [v5 setResultType:2];
  v21 = 0;
  v11 = [v4 executeFetchRequest:v5 error:&v21];

  v12 = v21;
  v13 = [v11 valueForKey:@"storeID"];

  if (v12)
  {
    v14 = BKLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_8D964();
    }
  }

  else
  {
    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = [v15 integerForKey:@"SeriesMigrationVersion"];

    v17 = v16 == 0;
    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = &__NSArray0__struct;
    }

    v22 = BKSeriesManagerAssetTypeAudiobooks;
    v23 = v18;
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v19 = [(BKLibraryManager *)self seriesManager];
    [v19 updateSeriesForAssetAdamIDsWithTypes:v14 forceCheck:v17];

    v20 = +[NSUserDefaults standardUserDefaults];
    [v20 setInteger:1 forKey:@"SeriesMigrationVersion"];
  }
}

- (void)wq_dq_saveDatabaseContext:(id)a3
{
  v4 = a3;
  v5 = self->_dqSyncQueue;
  if (v5 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v5);
  }

  [(BKLibraryManager *)self _resetAuthorsAndStacksInContext:v4];
  if ([v4 hasChanges])
  {
    v6 = [(BKLibraryManager *)self wq_seriesIDsToResetWithLibraryManagedObjectContext:v4];
    v7 = [(BKLibraryManager *)self collectionController];
    v8 = [v7 gatherChangedAssetsCollectionsWithLibraryMoc:v4];
    [(BKLibraryManager *)self saveManagedObjectContext:v4];
    [v7 processGatheredChangedAssetsCollections:v8];
    v9 = BKLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
      v11 = [v6 allObjects];
      v12 = [v11 bu_prettyDescription];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "wq_dq_saveDatabaseContext: reseting %@ seriesIDs: %@", buf, 0x16u);
    }

    [(BKLibraryManager *)self _resetSeriesIDs:v6];
  }

  else
  {
    v13 = BKLibraryLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_8D9CC();
    }

    if ([(BKLibraryManager *)self resetSeriesOnAllBooks])
    {
      [(BKLibraryManager *)self _resetSeriesIDs:0];
    }
  }

  if (![(BKLibraryManager *)self hasCheckedOwnedSingleBookSeriesAndNonSeriesAudiobooks])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_ED58;
    v14[3] = &unk_D56B8;
    v14[4] = self;
    [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v14];
    [(BKLibraryManager *)self setHasCheckedOwnedSingleBookSeriesAndNonSeriesAudiobooks:1];
  }
}

- (void)_updateAuthorForSeriesContainer:(id)a3
{
  v4 = a3;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 assetID];
    v13 = 141558274;
    v14 = 1752392040;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "_updateAuthorForSeriesContainer: %{mask.hash}@", &v13, 0x16u);
  }

  v7 = [v4 managedObjectContext];
  v8 = [v4 seriesID];
  v9 = [(BKLibraryManager *)self _rawSeriesAuthorForContainerID:v8 context:v7];

  v10 = [v4 seriesID];
  v11 = [(BKLibraryManager *)self _rawSeriesSortAuthorForContainerID:v10 context:v7];

  if (![v11 length] && -[__CFString length](v9, "length"))
  {
    goto LABEL_13;
  }

  if ([v11 length] && !-[__CFString length](v9, "length"))
  {
    v12 = v11;
    v11 = v9;
    goto LABEL_15;
  }

  if (![v11 length] && !-[__CFString length](v9, "length"))
  {

    v11 = v9;
    v9 = @"UnknownAuthor";
    goto LABEL_16;
  }

  if ([v11 isEqualToString:@"UnknownAuthor"] || objc_msgSend(v11, "isEqualToString:", @"MultipleAuthors") && (-[__CFString isEqualToString:](v9, "isEqualToString:", @"MultipleAuthors") & 1) == 0)
  {
LABEL_13:
    v12 = v9;
LABEL_15:
    v9 = v12;
LABEL_16:

    v11 = v9;
  }

  [v4 setDifferentString:v9 forKey:@"author"];
  [v4 setDifferentString:v11 forKey:@"sortAuthor"];
}

- (void)_resetNilAuthorsOnAllBooksInContext:(id)a3
{
  v3 = a3;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v5 = [NSPredicate predicateWithFormat:@"sortAuthor == %@ AND contentType != %@", @"UnknownAuthor", &off_DDF58];
  [v4 setPredicate:v5];

  [v4 setFetchBatchSize:64];
  v6 = [v3 executeFetchRequest:v4 error:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 author];
        v13 = [v12 isEqualToString:@"UnknownAuthor"];

        if ((v13 & 1) == 0)
        {
          v14 = [v11 author];
          [v11 setSortAuthor:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_resetNilAuthorsOnAllSeriesInContext:(id)a3
{
  v4 = a3;
  [v4 save:0];
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v6 = [NSPredicate predicateWithFormat:@"author == %@ AND contentType == %@", @"UnknownAuthor", &off_DDF58];
  [v5 setPredicate:v6];

  [v5 setFetchBatchSize:64];
  v7 = [v4 executeFetchRequest:v5 error:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BKLibraryManager *)self _updateAuthorForSeriesContainer:*(*(&v12 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_resetAuthorsAndStacksInContext:(id)a3
{
  v5 = a3;
  if ([(BKLibraryManager *)self needsResetNilAuthorsOnAllBooks])
  {
    [(BKLibraryManager *)self setNeedsResetNilAuthorsOnAllBooks:0];
    [(BKLibraryManager *)self _resetNilAuthorsOnAllBooksInContext:v5];
  }

  if ([(BKLibraryManager *)self needsResetNilAuthorsOnAllSeries])
  {
    [(BKLibraryManager *)self setNeedsResetNilAuthorsOnAllSeries:0];
    [(BKLibraryManager *)self _resetNilAuthorsOnAllSeriesInContext:v5];
  }

  if ([(BKLibraryManager *)self needsResetSeriesStacksAndCollectionMembershipOnAllBooks])
  {
    [(BKLibraryManager *)self setNeedsResetSeriesStacksAndCollectionMembershipOnAllBooks:0];
    v4 = [(BKLibraryManager *)self collectionManager];
    [v4 resetCollections];
  }

  if ([(BKLibraryManager *)self needsDuplicateCollectionMembersRemoved])
  {
    [(BKLibraryManager *)self setNeedsDuplicateCollectionMembersRemoved:0];
    [(BKLibraryManager *)self _removeDuplicateCollectionMembers];
  }
}

- (void)_removeDuplicateCollectionMembers
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_F490;
  v2[3] = &unk_D56B8;
  v2[4] = self;
  [(BKLibraryManager *)self performBlockOnCollectionsWorkerQueue:v2];
}

- (id)wq_seriesIDsToResetWithLibraryManagedObjectContext:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v5 = [v3 updatedObjects];
  [v4 unionSet:v5];

  v6 = [v3 insertedObjects];
  [v4 unionSet:v6];

  v7 = [v3 deletedObjects];
  [v4 unionSet:v7];

  v8 = +[NSMutableSet set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 seriesID];

          if (v15)
          {
            v16 = [v14 seriesID];
            [v8 addObject:v16];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)_resetSeriesIDs:(id)a3
{
  v6 = a3;
  v4 = [(BKLibraryManager *)self usq_moc];

  if (!v4)
  {
    sub_8DA08();
  }

  v5 = [(BKLibraryManager *)self usq_moc];

  if (v5)
  {
    [(BKLibraryManager *)self seriesUpdaterResetWithIDs:v6];
  }

  _objc_release_x1();
}

- (NSDictionary)_persistentStoreOptions
{
  v4[0] = NSMigratePersistentStoresAutomaticallyOption;
  v4[1] = NSInferMappingModelAutomaticallyOption;
  v5[0] = &__kCFBooleanTrue;
  v5[1] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)createSeriesUpdaterMoc
{
  if (self->_ui_persistentStoreCoordinator)
  {
    v3 = [[BKLibraryManagedObjectContext alloc] initWithConcurrencyType:1];
    [(BKLibraryManager *)self setUsq_moc:v3];

    v4 = [(BKLibraryManager *)self usq_moc];

    if (!v4)
    {
      sub_8DA40();
    }

    v5 = [(BKLibraryManager *)self usq_moc];
    [v5 setName:@"Series Updater Context"];

    v6 = [(BKLibraryManager *)self usq_moc];
    [v6 setPersistentStoreCoordinator:self->_ui_persistentStoreCoordinator];

    v7 = [(BKLibraryManager *)self usq_moc];
    [v7 setUndoManager:0];

    v8 = [(BKLibraryManager *)self usq_moc];
    [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    v10 = +[NSNotificationCenter defaultCenter];
    v9 = [(BKLibraryManager *)self usq_moc];
    [v10 addObserver:self selector:"seriesUpdaterMocObjectsDidChange:" name:NSManagedObjectContextDidSaveNotification object:v9];
  }
}

- (void)seriesUpdaterMocObjectsDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  v17 = v6;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  [NSManagedObjectContext mergeChangesFromRemoteContextSave:v5 intoContexts:v7];

  v8 = [v4 userInfo];
  v9 = [(BKLibraryManager *)self workerChildContext];
  v16 = v9;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  [NSManagedObjectContext mergeChangesFromRemoteContextSave:v8 intoContexts:v10];

  v11 = self->_uiChildContext;
  if (v11)
  {
    v12 = [v4 userInfo];
    v15 = v11;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [NSManagedObjectContext mergeChangesFromRemoteContextSave:v12 intoContexts:v13];
  }

  v14 = [(BKLibraryManager *)self backgroundReadOnlyContextPool];
  [v14 remoteContextDidSave:v4];
}

- (void)seriesUpdaterResetWithIDs:(id)a3
{
  v4 = a3;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = [v4 count];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "StackLog: seriesUpdaterResetWithIDs: %lu", buf, 0xCu);
  }

  v6 = [(BKLibraryManager *)self usq_moc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10040;
  v8[3] = &unk_D5420;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 performBlock:v8];
}

+ (id)persistentStoreURL
{
  v3 = +[UIApplication applicationDocumentsDirectory];
  v4 = [a1 persistentStoreName];
  v5 = [v3 stringByAppendingPathComponent:@"BKLibrary"];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [NSURL fileURLWithPath:v6];
  if (!v7)
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8DBDC();
    }

    v9 = BKLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_8DC18();
    }

    v10 = BKLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_8DC80();
    }

    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8DCE8();
    }
  }

  return v7;
}

- (id)newPrivateQueueManagedObjectContext
{
  v3 = objc_opt_class();

  return [(BKLibraryManager *)self newPrivateQueueManagedObjectContextWithClass:v3];
}

- (id)newManagedObjectContext
{
  v3 = BKLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_8DD50();
  }

  v4 = [(BKLibraryManager *)self newManagedObjectContextWithClass:objc_opt_class()];
  [v4 setLibraryManager:self];
  return v4;
}

- (void)queryRootFolderShorthandsWithRegistrationBlock:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BKLibraryManager *)self dataSources];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 buildRootFolderShorthandMapCompletion:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)triggerCloudSync:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  v7 = v5;
  if (v3)
  {
    v6 = @"BKTriggerCloudSyncSetNotification";
  }

  else
  {
    v6 = @"BKTriggerCloudSyncGetNotification";
  }

  [v5 postNotificationName:v6 object:self userInfo:0];
}

- (void)logCounts
{
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollection"];
  v4 = [NSPredicate predicateWithValue:1];
  [v3 setPredicate:v4];

  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v6 = [NSPredicate predicateWithValue:1];
  [v5 setPredicate:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_11D2C;
  v9[3] = &unk_D58E0;
  v10 = v3;
  v11 = v5;
  v7 = v5;
  v8 = v3;
  [(BKLibraryManager *)self performNamed:@"logCounts" workerQueueBlock:v9];
}

- (void)migrateLibraryIfNeeded
{
  if ([(BKLibraryManager *)self needsMigration])
  {
    [(BKLibraryManager *)self _migrateFromOldDatabase];

    [(BKLibraryManager *)self setNeedsMigration:0];
  }
}

- (void)cleanupDefaultCollections
{
  v3 = [(BKLibraryManager *)self collectionController];
  [v3 cleanupDefaultCollections];

  v4 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_126F4;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)cleanupDateFinished
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_12804;
  v2[3] = &unk_D56B8;
  v2[4] = self;
  [(BKLibraryManager *)self performBlockInUIContext:v2];
}

- (void)reloadWithCompletion:(id)a3
{
  v4 = a3;
  coalescedLibraryReload = self->_coalescedLibraryReload;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12A9C;
  v7[3] = &unk_D5908;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BUCoalescingCallBlock *)coalescedLibraryReload signalWithCompletion:v7];
}

- (void)_reloadWithCompletion:(id)a3
{
  v4 = a3;
  if (qword_EFC80 != -1)
  {
    sub_8DDF4();
  }

  v5 = qword_EFC78;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12C70;
  v7[3] = &unk_D5550;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_performReload
{
  v3 = BKLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%p: Library Reload: Start", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12F04;
  v4[3] = &unk_D56B8;
  v4[4] = self;
  [(BKLibraryManager *)self performNamed:@"reload" workerQueueBlockAndWait:v4];
}

- (id)assetIDsInDataSourceWithIdentifier:(id)a3 intersectingWithAssetIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = objc_opt_new();
  v8 = [(NSDictionary *)self->_dataSourcesByIdentifier objectForKeyedSubscript:v6];
  if (v8)
  {
    v20 = v7;
    v21 = v6;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [(BKLibraryManager *)self dataSources:v20];
          v15 = [v14 indexOfObjectIdenticalTo:v8];
          if (v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = 0;
          }

          else
          {
            v16 = 1 << v15;
          }

          v17 = [(BKLibraryManager *)self assetUpdatesByIdentifier];
          v18 = [v17 objectForKeyedSubscript:v13];

          if (([v18 dataSourcesBitmask] & v16) != 0)
          {
            [v23 addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v7 = v20;
    v6 = v21;
  }

  return v23;
}

- (void)setUIManagerProviderForAddingToWantToReadBlock:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryManager *)self collectionManager];
  [v5 setUiManagerProviderForAddingToWantToRead:v4];
}

- (void)_enumerateDataSources:(id)a3 intersectingWithAssetIDs:(id)a4 usingBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1372C;
    v10[3] = &unk_D5950;
    v10[4] = self;
    v11 = v8;
    v12 = v9;
    [a3 enumerateObjectsUsingBlock:v10];
  }
}

- (void)reloadDataSource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_83E0;
  v18 = sub_83F0;
  v19 = 0;
  v8 = [(BKLibraryManager *)self coalescedDataSourceReloadByIdentifierSync];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13A34;
  block[3] = &unk_D59A0;
  v9 = v6;
  v12 = self;
  v13 = &v14;
  v11 = v9;
  dispatch_sync(v8, block);

  [v15[5] signalWithCompletion:v7];
  _Block_object_dispose(&v14, 8);
}

- (void)_reloadDataSource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [NSString stringWithFormat:@"reload(%@)", v8];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_13DEC;
  v12[3] = &unk_D59C8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(BKLibraryManager *)self _scheduleOperationGroupWithName:v9 block:v12];
}

- (void)_performReloadDataSource:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13EC4;
  v8[3] = &unk_D5B30;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(BKLibraryManager *)self performNamed:@"reloadDataSource" workerQueueBlock:v8];
}

- (void)clearAgingDocumentInbox
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(BKLibraryManager *)self dataSources];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = BUProtocolCast();
        if (v8)
        {
          v9 = v8;
          [v8 clearAgingDocumentInbox];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)earliestPurchaseTimestampWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15A64;
  v5[3] = &unk_D5BD0;
  v6 = a3;
  v4 = v6;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v5];
}

- (void)prioritizeImport:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(BKLibraryManager *)self dataSources];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_15EF8;
        v15[3] = &unk_D5BF8;
        v14 = v7;
        v15[4] = self;
        v16 = v14;
        LODWORD(v13) = [v13 prioritizeImport:v6 completion:v15];

        if (v13)
        {

          goto LABEL_12;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

LABEL_12:
}

- (void)updateURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(BKLibraryManager *)self dataSources];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_16170;
      v14[3] = &unk_D5C70;
      v14[4] = self;
      v15 = v7;
      LOBYTE(v13) = [v13 updateURL:v6 completion:v14];

      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)updateAsset:(id)a3 fromURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 dataSourceIdentifier];
  v12 = [(BKLibraryManager *)self dataSourceWithIdentifier:v11];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_16500;
  v17 = &unk_D5C70;
  v18 = self;
  v19 = v10;
  v13 = [v12 updateAsset:v8 fromURL:v9 completion:&v14];

  if ((v13 & 1) == 0)
  {
LABEL_3:
    [(BKLibraryManager *)self updateURL:v9 completion:v10, v14, v15, v16, v17, v18];
  }
}

- (void)updateAsset:(id)a3 coverArt:(id)a4 completion:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(BKLibraryManager *)self dataSources];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      if (objc_opt_respondsToSelector())
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_16930;
        v18[3] = &unk_D5CE8;
        v18[4] = self;
        v19 = v9;
        v16 = [v15 updateAsset:v17 coverArt:v8 completion:v18];

        if (v16)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)updateAssetWithID:(id)a3 url:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16CB8;
  v7[3] = &unk_D5D10;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(BKLibraryManager *)v8 performBlockOnWorkerQueue:v7];
}

- (BOOL)examineURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_16ECC;
  v18[3] = &unk_D5C70;
  v18[4] = self;
  v7 = a4;
  v19 = v7;
  v8 = objc_retainBlock(v18);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(BKLibraryManager *)self dataSources];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v14 + 1) + 8 * i) examineURL:v6 completion:v8])
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (void)resolveLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(BKResolveLibraryAssetOptions);
  [(BKLibraryManager *)self resolveLibraryAsset:v7 options:v8 completion:v6];
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_171A0;
  v17 = &unk_D5D60;
  v18 = self;
  v19 = a5;
  v8 = v19;
  v9 = a4;
  v10 = a3;
  v11 = objc_retainBlock(&v14);
  v12 = [v10 dataSourceIdentifier];
  v13 = [(BKLibraryManager *)self dataSourceWithIdentifier:v12];

  [v13 resolveLibraryAsset:v10 options:v9 completion:v11];
}

- (void)_addDataSourceIdentifierAndStateObserver:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryManager *)self ownershipSync];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_173AC;
  v7[3] = &unk_D5420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_removeDataSourceIdentifierAndStateObserver:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryManager *)self ownershipSync];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17550;
  v7[3] = &unk_D5420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_notifyDataSourceIdentifierAndStateObserversForAssetIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(BKLibraryManager *)self ownershipSync];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_176EC;
  block[3] = &unk_D5A40;
  v10 = v4;
  v11 = self;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_sync(v6, block);

  [v7 enumerateKeysAndObjectsUsingBlock:&stru_D5DA0];
}

- (void)toggleDownloadPausedForAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 isDownloading])
  {
    v6 = [(BKLibraryManager *)self dataSourcesConformingToProtocol:&OBJC_PROTOCOL___BKBookDownloadController];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [v5 assetID];
          v13 = [v5 temporaryAssetID];
          [v11 togglePausedForAssetID:v12 orTemporaryAssetID:v13];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)cancelDownloadingAsset:(id)a3
{
  v4 = a3;
  if ([v4 isDownloading])
  {
    v5 = [(BKLibraryManager *)self dataSourcesConformingToProtocol:&OBJC_PROTOCOL___BKBookDownloadController];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          v11 = [v4 permanentOrTemporaryAssetID];
          [v10 cancelDownloadForAssetID:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)waitForAssetToFinishDownloadWithAssetID:(id)a3 resolveAsset:(BOOL)a4 completion:(id)a5
{
  v30 = a4;
  v7 = a3;
  v8 = a5;
  v9 = BKLibraryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] waitForAssetToFinishDownloadWithAssetID", buf, 0x16u);
  }

  if (!+[NSThread isMainThread])
  {
    sub_8E104();
  }

  objc_initWeak(&location, self);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18208;
  block[3] = &unk_D5DF0;
  objc_copyWeak(&v45, &location);
  v11 = v7;
  v43 = v11;
  v12 = v8;
  v44 = v12;
  dispatch_group_notify(v10, &_dispatch_main_q, block);
  v13 = [(BKLibraryManager *)self libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:v11];
  v14 = BKLibraryLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 isCloud];
    v16 = [v13 isDownloading];
    v17 = [v13 isSeriesItem];
    v18 = [v13 isStoreItem];
    v19 = [v13 isLocal];
    *buf = 141559810;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v49 = v13;
    v50 = 1024;
    v51 = v15;
    v52 = 1024;
    v53 = v16;
    v54 = 1024;
    v55 = v17;
    v56 = 1024;
    v57 = v18;
    v58 = 1024;
    v59 = v19;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] waitForAssetToFinishDownloadWithAssetID: libraryAsset=%@, isCloud=%d, isDownloading=%d, isSeriesItem=%d, isStoreItem=%d, isLocal=%d", buf, 0x3Eu);
  }

  if (!v13)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v49) = 0;
    dispatch_group_enter(v10);
LABEL_21:
    v24 = [BKLibraryDataSourceIdentifierAndStateObserver alloc];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_18380;
    v33[3] = &unk_D5E40;
    objc_copyWeak(&v37, &location);
    v34 = v11;
    v36 = buf;
    v35 = v10;
    v25 = [(BKLibraryDataSourceIdentifierAndStateObserver *)v24 initWithAssetID:v34 notify:v33];
    [(BKLibraryManager *)self _addDataSourceIdentifierAndStateObserver:v25];

    objc_destroyWeak(&v37);
    _Block_object_dispose(buf, 8);
    goto LABEL_22;
  }

  if (([v13 isCloud] & 1) != 0 || (objc_msgSend(v13, "isDownloading") & 1) != 0 || (objc_msgSend(v13, "isSeriesItem") & 1) != 0 || objc_msgSend(v13, "isStoreItem"))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v49) = 0;
    dispatch_group_enter(v10);
    [(BKLibraryManager *)self dataSourcesConformingToProtocol:&OBJC_PROTOCOL___BKBookDownloadController];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v20 = v39 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v21)
    {
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v38 + 1) + 8 * i) resumeDownloadForAssetID:v11];
        }

        v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v21);
    }

    goto LABEL_21;
  }

LABEL_22:
  if (v13 && v30)
  {
    v26 = BKLibraryLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      *&buf[4] = 1752392040;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] waitForAssetToFinishDownloadWithAssetID : attempt to resolve asset", buf, 0x16u);
    }

    v27 = [v13 dataSourceIdentifier];
    v28 = [(BKLibraryManager *)self dataSourceWithIdentifier:v27];

    v29 = objc_alloc_init(BKResolveLibraryAssetOptions);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_185B8;
    v31[3] = &unk_D5E68;
    v32 = v10;
    [v28 resolveLibraryAsset:v13 options:v29 completion:v31];
  }

  else
  {
    dispatch_group_leave(v10);
  }

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataSourceIdentifier];
  v9 = [(BKLibraryManager *)self dataSourceWithIdentifier:v8];

  if (v9)
  {
    goto LABEL_2;
  }

  v10 = [v6 dataSourceIdentifier];
  v11 = [v10 isEqual:@"com.apple.ibooks.plugin.Bookshelf.platformDataSource.BookKit"];

  if (v11)
  {
    v12 = [(BKLibraryManager *)self dataSourceWithIdentifier:@"com.apple.ibooks.datasource.BookKit"];
    if (v12)
    {
      v9 = v12;
LABEL_2:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1874C;
      v15[3] = &unk_D5C70;
      v15[4] = self;
      v16 = v7;
      [v9 assetForLibraryAsset:v6 completion:v15];

      goto LABEL_3;
    }
  }

  v13 = BKLibraryLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_8E140();
  }

  v14 = objc_retainBlock(v7);
  v9 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 0, 0);
  }

LABEL_3:
}

- (void)assetPartsForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_83E0;
  v36[4] = sub_83F0;
  v37 = 0;
  v9 = [v6 assetID];
  v10 = dispatch_group_create();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [(BKLibraryManager *)self dataSources];
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
  v20 = v9;
  v21 = v7;
  if (v12)
  {
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v10);
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_18BC8;
          v27[3] = &unk_D5EB8;
          v27[4] = self;
          v28 = v8;
          v29 = v15;
          v30 = v10;
          v31 = v36;
          [v15 assetPartsForLibraryAsset:v6 completion:v27];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v12);
  }

  v16 = [(BKLibraryManager *)self completionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18D5C;
  block[3] = &unk_D5EE0;
  v23 = v8;
  v24 = v20;
  v26 = v36;
  v25 = v21;
  v17 = v21;
  v18 = v20;
  v19 = v8;
  dispatch_group_notify(v10, v16, block);

  _Block_object_dispose(v36, 8);
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_19290;
  v16[3] = &unk_D5F08;
  objc_copyWeak(&v19, &location);
  v10 = v9;
  v18 = v10;
  v11 = v8;
  v17 = v11;
  v20 = a4;
  v12 = objc_retainBlock(v16);
  v13 = [(BKLibraryManager *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(BKLibraryManager *)self delegate];
    [v15 willDeleteAssets:v11 completion:v12];
  }

  else
  {
    (v12[2])(v12);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)p_deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (![v8 count])
  {
LABEL_11:
    v15 = objc_retainBlock(v9);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15);
    }

    goto LABEL_40;
  }

  if (v6)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = [(BKLibraryManager *)self dataSources];
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v47 + 1) + 8 * i) deleteAssets:v8 exhaustive:1 completion:0];
        }

        v12 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v12);
    }

    goto LABEL_11;
  }

  v37 = v9;
  v17 = objc_alloc_init(NSMutableDictionary);
  v38 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v43 + 1) + 8 * j);
        if ([v23 isValid])
        {
          v24 = [v23 dataSourceIdentifier];
          if (v24)
          {
            v25 = [v17 objectForKey:v24];
            if (!v25)
            {
              v25 = +[NSMutableArray array];
              [v17 setObject:v25 forKey:v24];
            }

            [v25 addObject:v23];
          }

          else
          {
            v26 = BKLibraryLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v53 = v23;
              _os_log_debug_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "Library asset has nil dataSourceIdentifier {%@}", buf, 0xCu);
            }

            [v38 addObject:v23];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v20);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = [v17 allKeys];
  v28 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v40;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v39 + 1) + 8 * k);
        v33 = [v17 objectForKey:v32];
        v34 = [(BKLibraryManager *)self dataSourceWithIdentifier:v32];
        [v34 deleteAssets:v33 exhaustive:0 completion:0];
      }

      v29 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v29);
  }

  [(BKLibraryManager *)self p_deleteAssets:v38];
  v9 = v37;
  v35 = objc_retainBlock(v37);
  v36 = v35;
  if (v35)
  {
    (*(v35 + 2))(v35);
  }

LABEL_40:
}

- (void)p_deleteAssets:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 valueForKey:@"assetID"];
    v6 = [v4 valueForKey:@"temporaryAssetID"];
    v7 = [v6 allObjects];

    if (![v7 count])
    {

      v7 = 0;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_19844;
    v10[3] = &unk_D5D10;
    v10[4] = self;
    v11 = v5;
    v12 = v7;
    v8 = v7;
    v9 = v5;
    [(BKLibraryManager *)self performNamed:@"delete" workerQueueBlock:v10];
  }
}

- (void)managedBooksDidChange
{
  v3 = [(BKLibraryManager *)self dataSourceConformingToProtocol:&OBJC_PROTOCOL___BKRespondsToManagedBooksChange];
  objc_initWeak(&location, v3);

  v4 = objc_loadWeakRetained(&location);
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    [(BKLibraryManager *)self reloadDataSource:v5 completion:0];
  }

  objc_destroyWeak(&location);
}

- (id)dataSourceWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BKLibraryManager *)self dataSourcesByIdentifier];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dataSourceConformingToProtocol:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_19BD0;
  v7[3] = &unk_D5F30;
  v8 = a3;
  v4 = v8;
  v5 = [(BKLibraryManager *)self _dataSourceMatchingPredicate:v7];

  return v5;
}

- (id)dataSourcesConformingToProtocol:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_19C8C;
  v7[3] = &unk_D5F30;
  v8 = a3;
  v4 = v8;
  v5 = [(BKLibraryManager *)self _dataSourcesMatchingPredicate:v7];

  return v5;
}

- (void)dq_libraryDataSource:(id)a3 reconcileAssets:(id)a4 reason:(signed __int16)a5
{
  v37 = a5;
  v7 = a3;
  v8 = a4;
  v9 = self->_dqSyncQueue;
  if (v9 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v9);
  }

  v10 = BKLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v12 = [v7 identifier];
    *buf = 138412546;
    v47 = v11;
    v48 = 2112;
    v49 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "#datasource reconcileAssets: reconciling %@ assets for: %@", buf, 0x16u);
  }

  v13 = [(BKLibraryManager *)self assetUpdatesByIdentifier];
  if (objc_opt_respondsToSelector())
  {
    v35 = [v7 propagateDataProperties];
  }

  else
  {
    v35 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v39 = *v42;
    v34 = v13;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        v16 = [v15 assetID];
        v17 = [v15 temporaryAssetID];
        if (v16)
        {
          v18 = [v13 objectForKeyedSubscript:v16];
          if (v18)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v18 = 0;
        }

        if (v17)
        {
          v18 = [v13 objectForKeyedSubscript:v17];
        }

LABEL_20:
        if (v16)
        {
          v19 = [(BKLibraryManager *)self unclaimedAssetIDs];
          [v19 removeObject:v16];

          if (v17)
          {
LABEL_24:
            v20 = [(BKLibraryManager *)self unclaimedTemporaryAssetIDs];
            [v20 removeObject:v17];
          }

          v21 = 1;
          goto LABEL_26;
        }

        if (v17)
        {
          goto LABEL_24;
        }

        BCReportAssertionFailureWithMessage();
        v21 = 0;
LABEL_26:
        v22 = [v15 dataSourceIdentifier];

        if (v22)
        {
          if (!v21)
          {
            goto LABEL_45;
          }
        }

        else
        {
          sub_8E1A8();
          if (!v21)
          {
            goto LABEL_45;
          }
        }

        v23 = [(BKLibraryManager *)self dataSources];
        v24 = [v23 indexOfObjectIdenticalTo:v7];
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0;
        }

        else
        {
          v25 = 1 << v24;
        }

        if (v18)
        {
          v26 = v7;
          v27 = _bk_compareBitmaskPriority(v25, [(BKLibraryAssetUpdate *)v18 dataSourcesBitmask]);
          v28 = [(BKLibraryAssetUpdate *)v18 asset];

          v30 = v37 == 4 && v28 == 0;
          if (v27 != -1 || v30)
          {
            [(BKLibraryAssetUpdate *)v18 setAsset:v15];
          }

          [(BKLibraryManager *)self _addBitmask:v25 toUpdate:v18 inMethod:a2];
          [(BKLibraryAssetUpdate *)v18 setPropertiesToPropagate:v35];
          [(BKLibraryAssetUpdate *)v18 propagateAdditionalDataWithAsset:v15];
          v7 = v26;
          v13 = v34;
          if (!v16)
          {
            goto LABEL_43;
          }

LABEL_42:
          [v13 setObject:v18 forKeyedSubscript:v16];
          v31 = [(BKLibraryManager *)self identifiersForAssetsNeedingReconcile];
          [v31 addObject:v16];

          goto LABEL_43;
        }

        v18 = [[BKLibraryAssetUpdate alloc] initWithAsset:v15 dataSource:v7 dataSourceBitmask:v25];
        if (v16)
        {
          goto LABEL_42;
        }

LABEL_43:
        if (v17)
        {
          [v13 setObject:v18 forKeyedSubscript:v17];
          v32 = [(BKLibraryManager *)self identifiersForAssetsNeedingReconcile];
          [v32 addObject:v17];
        }

LABEL_45:

        v14 = v14 + 1;
      }

      while (v40 != v14);
      v33 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      v40 = v33;
    }

    while (v33);
  }
}

- (void)dq_unclaimIdentifiers:(id)a3 forDataSourceBitmask:(unint64_t)a4
{
  v7 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [(BKLibraryManager *)self assetUpdatesByIdentifier];
        v14 = [v13 objectForKeyedSubscript:v12];

        [(BKLibraryManager *)self _removeBitmask:a4 fromUpdate:v14 inMethod:a2];
        if (![v14 dataSourcesBitmask])
        {
          v15 = [(BKLibraryManager *)self unclaimedAssetIDs];
          [v15 addObject:v12];

          v16 = [(BKLibraryManager *)self unclaimedTemporaryAssetIDs];
          [v16 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)libraryDataSource:(id)a3 removeImagesForAsset:(id)a4
{
  v5 = a4;
  v8 = [v5 assetID];
  v6 = [(BKLibraryManager *)self imageSource];
  v7 = [v5 temporaryAssetID];

  [v6 removeImagesForAssetID:v8 temporaryAssetID:v7];
}

- (void)libraryDataSource:(id)a3 removedAssets:(id)a4 inGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1A4A8;
  v13[3] = &unk_D5A40;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  [v10 addOperationBlock:v13];
}

- (void)libraryDataSource:(id)a3 removedAssetsWithAssetIDs:(id)a4 orTemporaryAssetIDs:(id)a5 inGroup:(id)a6
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1A63C;
  v12[3] = &unk_D5E90;
  v12[4] = self;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v9 = v15;
  v10 = v14;
  v11 = v13;
  [a6 addOperationBlock:v12];
}

- (void)_addBitmask:(unint64_t)a3 toUpdate:(id)a4 inMethod:(SEL)a5
{
  v6 = a4;
  [v6 setDataSourcesBitmask:{objc_msgSend(v6, "dataSourcesBitmask") | a3}];
}

- (void)_removeBitmask:(unint64_t)a3 fromUpdate:(id)a4 inMethod:(SEL)a5
{
  v6 = a4;
  [v6 setDataSourcesBitmask:{objc_msgSend(v6, "dataSourcesBitmask") & ~a3}];
}

- (void)_libraryDataSource:(id)a3 removedAssetsWithAssetIDs:(id)a4 orTemporaryAssetIDs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count] || objc_msgSend(v11, "count"))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1A800;
    v12[3] = &unk_D5F80;
    v13 = v10;
    v14 = v11;
    v15 = v9;
    v16 = self;
    v17 = a2;
    [(BKLibraryManager *)self performNamed:@"removedAssets" workerQueueBlock:v12];
  }
}

- (void)libraryDataSource:(id)a3 updatedAssets:(id)a4 inGroup:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1B4F0;
  v9[3] = &unk_D5A40;
  v9[4] = self;
  v10 = a3;
  v11 = a4;
  v7 = v11;
  v8 = v10;
  [a5 addOperationBlock:v9];
}

- (void)_libraryDataSource:(id)a3 updatedAssets:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    kdebug_trace();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1B5E8;
    v8[3] = &unk_D5D10;
    v9 = v7;
    v10 = self;
    v11 = v6;
    [(BKLibraryManager *)self performNamed:@"updateAssets" workerQueueBlockAndWait:v8];
  }
}

- (void)libraryDataSource:(id)a3 notifyBlock:(id)a4 inGroup:(id)a5
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1E680;
    v9[3] = &unk_D5550;
    v9[4] = self;
    v10 = v7;
    [a5 addOperationBlock:v9];
  }
}

- (void)addCustomOperationBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1E7C4;
    v6[3] = &unk_D5FD0;
    v6[4] = self;
    v7 = v4;
    [(BKLibraryManager *)self _scheduleOperationGroupWithName:@"custom-operation" block:v6];
  }
}

- (void)libraryDataSource:(id)a3 addedAssets:(id)a4 inGroup:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1E9B8;
  v9[3] = &unk_D5A40;
  v9[4] = self;
  v10 = a3;
  v11 = a4;
  v7 = v11;
  v8 = v10;
  [a5 addOperationBlock:v9];
}

- (void)_libraryDataSource:(id)a3 addedAssets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_8E4E0(v7);
  }

  if ([v7 count])
  {
    kdebug_trace();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1EAE4;
    v9[3] = &unk_D5D10;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [(BKLibraryManager *)self performNamed:@"addedAssets" workerQueueBlock:v9];
  }
}

- (void)libraryDataSource:(id)a3 addedAsset:(id)a4 inGroup:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSArray arrayWithObjects:&v12 count:1];

  [(BKLibraryManager *)self libraryDataSource:v10 addedAssets:v11 inGroup:v8, v12];
}

- (void)libraryDataSource:(id)a3 removedAsset:(id)a4 inGroup:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSArray arrayWithObjects:&v12 count:1];

  [(BKLibraryManager *)self libraryDataSource:v10 removedAssets:v11 inGroup:v8, v12];
}

- (void)libraryDataSource:(id)a3 updatedAsset:(id)a4 inGroup:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSArray arrayWithObjects:&v12 count:1];

  [(BKLibraryManager *)self libraryDataSource:v10 updatedAssets:v11 inGroup:v8, v12];
}

- (void)libraryDataSource:(id)a3 reloadInGroup:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1EF5C;
  v6[3] = &unk_D5420;
  v6[4] = self;
  v7 = a3;
  v5 = v7;
  [a4 addOperationBlock:v6];
}

- (void)libraryDataSource:(id)a3 addedAssets:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F044;
  v7[3] = &unk_D5FF8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(BKLibraryManager *)v8 libraryDataSource:v6 updateWithName:@"addedAssets" block:v7];
}

- (void)libraryDataSource:(id)a3 removedAssets:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F124;
  v7[3] = &unk_D5FF8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(BKLibraryManager *)v8 libraryDataSource:v6 updateWithName:@"removedAssets" block:v7];
}

- (void)libraryDataSource:(id)a3 removedAssetsWithAssetIDs:(id)a4 orTemporaryAssetIDs:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1F224;
  v10[3] = &unk_D6020;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(BKLibraryManager *)v11 libraryDataSource:v9 updateWithName:@"removedAssets" block:v10];
}

- (void)libraryDataSource:(id)a3 updatedAssets:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F304;
  v7[3] = &unk_D5FF8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(BKLibraryManager *)v8 libraryDataSource:v6 updateWithName:@"updatedAssets" block:v7];
}

- (void)libraryDataSource:(id)a3 addedAsset:(id)a4
{
  v9 = a4;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v9 count:1];

  [(BKLibraryManager *)self libraryDataSource:v7 addedAssets:v8, v9];
}

- (void)libraryDataSource:(id)a3 removedAsset:(id)a4
{
  v9 = a4;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v9 count:1];

  [(BKLibraryManager *)self libraryDataSource:v7 removedAssets:v8, v9];
}

- (void)libraryDataSource:(id)a3 updatedAsset:(id)a4
{
  v9 = a4;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v9 count:1];

  [(BKLibraryManager *)self libraryDataSource:v7 updatedAssets:v8, v9];
}

- (void)_notifyLibraryOperationDone:(unint64_t)a3 assetIDs:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v6 = +[NSArray array];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v10[0] = @"BKLibraryOperationType";
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v10[1] = @"BKLibraryOperationAssetIDs";
  v11[0] = v8;
  v11[1] = v6;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v7 postNotificationName:@"BKLibraryOperationCompleteNotification" object:self userInfo:v9];
}

- (void)setCloudStateOnAssetWithID:(id)a3
{
  v4 = a3;
  v7 = [(BKLibraryManager *)self newManagedObjectContext];
  v5 = [NSString stringWithFormat:@"NewMOC 11 %s %@", "[BKLibraryManager setCloudStateOnAssetWithID:]", v4];
  [v7 setName:v5];

  v6 = [(BKLibraryManager *)self libraryMutableAssetWithAssetID:v4 inManagedObjectContext:v7];

  if (v6)
  {
    if ([v6 state] != 3)
    {
      [v6 setState:3];
    }

    [v6 setDifferentObject:0 forKey:@"localOnlySeriesItemsParent"];
    [v7 saveLibrary];
  }
}

- (id)existingAssetIDsFromAssetIDs:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_83E0;
  v14 = sub_83F0;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1F854;
  v6[3] = &unk_D6048;
  v9 = &v10;
  v7 = self;
  v3 = a3;
  v8 = v3;
  [(BKLibraryManager *)v7 performBackgroundReadOnlyBlockAndWait:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)assetIDsOfStoreBookAssets
{
  v3 = [NSPredicate predicateWithFormat:@"%K == %@ || %K == %@", @"contentType", &off_DDF88, @"contentType", &off_DDFA0];
  v4 = [(BKLibraryManager *)self assetIDsOfStoreAssetsWithPredicate:v3];

  return v4;
}

- (id)assetIDsOfStoreAudiobookAssets
{
  v3 = [NSPredicate predicateWithFormat:@"%K == %@", @"contentType", &off_DDF70];
  v4 = [(BKLibraryManager *)self assetIDsOfStoreAssetsWithPredicate:v3];

  return v4;
}

- (id)assetIDsOfStoreAssetsWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v27 = @"assetID";
  v6 = [NSArray arrayWithObjects:&v27 count:1];
  [v5 setPropertiesToFetch:v6];

  [v5 setResultType:2];
  v7 = +[BKLibraryManager predicateForDownloadableStoreLibraryAssets];
  v26[0] = v7;
  v26[1] = v4;
  v8 = [NSArray arrayWithObjects:v26 count:2];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [v5 setPredicate:v9];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_83E0;
  v24[4] = sub_83F0;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_83E0;
  v22 = sub_83F0;
  v23 = 0;
  readOnlyChildContext = self->_readOnlyChildContext;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1FC94;
  v14[3] = &unk_D6070;
  v14[4] = self;
  v11 = v5;
  v15 = v11;
  v16 = v24;
  v17 = &v18;
  [(BKLibraryManagedObjectContext *)readOnlyChildContext performBlockAndWait:v14];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v24, 8);

  return v12;
}

- (id)storeIDsOfStoreAssetsWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v27 = @"storeID";
  v6 = [NSArray arrayWithObjects:&v27 count:1];
  [v5 setPropertiesToFetch:v6];

  [v5 setResultType:2];
  v7 = +[BKLibraryManager predicateForDownloadableStoreLibraryAssets];
  v26[0] = v7;
  v26[1] = v4;
  v8 = [NSArray arrayWithObjects:v26 count:2];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [v5 setPredicate:v9];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_83E0;
  v24[4] = sub_83F0;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_83E0;
  v22 = sub_83F0;
  v23 = 0;
  readOnlyChildContext = self->_readOnlyChildContext;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1FFF0;
  v14[3] = &unk_D6070;
  v14[4] = self;
  v11 = v5;
  v15 = v11;
  v16 = v24;
  v17 = &v18;
  [(BKLibraryManagedObjectContext *)readOnlyChildContext performBlockAndWait:v14];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v24, 8);

  return v12;
}

- (void)assetIDsOfPurchasedStoreAssets:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_20140;
  v4[3] = &unk_D6098;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKLibraryManager *)v5 performBackgroundReadOnlyBlock:v4];
}

- (void)storeAssetIDsOfWantToReadWithLimit:(int64_t)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_20378;
  v7[3] = &unk_D60C0;
  v8 = a4;
  v9 = a3;
  v6 = v8;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v7];
}

- (id)storeAssetIDsOfFinishedCollectionWithLimit:(int64_t)a3 inMoc:(id)a4
{
  v5 = [objc_opt_class() predicateFor_All_Finished_LibraryAssets];
  v6 = [(BKLibraryManager *)self assetIDsOfStoreAssetsWithPredicate:v5];

  v7 = [NSOrderedSet orderedSetWithArray:v6];

  return v7;
}

- (id)storeAssetIDsOfCollectionMembersWithLimit:(int64_t)a3 collectionID:(id)a4 inMoc:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [NSFetchRequest alloc];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 initWithEntityName:v11];

  v35 = @"assetID";
  v13 = [NSArray arrayWithObjects:&v35 count:1];
  [v12 setPropertiesToFetch:v13];

  [v12 setResultType:2];
  [v12 setReturnsObjectsAsFaults:0];
  v14 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:0];
  v34[0] = v14;
  v15 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:0];
  v34[1] = v15;
  v16 = [NSArray arrayWithObjects:v34 count:2];
  [v12 setSortDescriptors:v16];

  v17 = [BKLibraryManager predicateForCollectionMembersInCollectionID:v8 hideUnownedItems:0];

  v33[0] = v17;
  v18 = +[BKLibraryManager predicateForExcludingCollectionMembersWithSideloadedAssets];
  v33[1] = v18;
  v19 = +[BKLibraryManager predicateForExcludingCollectionMembersWithContainerLibraryAssets];
  v33[2] = v19;
  v20 = +[BKLibraryManager predicateToExcludeCollectionMembersForAudiobookSupplementalContent];
  v33[3] = v20;
  v21 = [NSArray arrayWithObjects:v33 count:4];
  v22 = [NSCompoundPredicate andPredicateWithSubpredicates:v21];
  [v12 setPredicate:v22];

  if (a3)
  {
    [v12 setFetchLimit:a3];
  }

  v32 = 0;
  v23 = [v7 executeFetchRequest:v12 error:&v32];
  v24 = v32;
  v25 = [v23 valueForKey:@"assetID"];
  v26 = [v25 bu_arrayByRemovingNSNulls];
  v27 = v26;
  v28 = &__NSArray0__struct;
  if (v26)
  {
    v28 = v26;
  }

  v29 = v28;

  v30 = [NSOrderedSet orderedSetWithArray:v29];

  return v30;
}

- (void)_sortAndInitializeDataSources:(id)a3
{
  if (!self->_dataSources)
  {
    v4 = [a3 sortedArrayUsingComparator:&stru_D6100];
    dataSources = self->_dataSources;
    self->_dataSources = v4;

    v6 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_dataSources, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_dataSources;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          [v12 setLibraryManager:{self, v15}];
          v13 = [v12 identifier];
          [v6 setObject:v12 forKeyedSubscript:v13];

          if (objc_opt_respondsToSelector())
          {
            [v12 addObserver:self forKeyPath:@"processingAuthentication" options:0 context:off_EE768];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    [(BKLibraryManager *)self setDataSourcesByIdentifier:v14];
  }
}

- (id)_dataSourceMatchingPredicate:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BKLibraryManager *)self dataSources];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_dataSourcesMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(BKLibraryManager *)self dataSources];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)dq_unclaimAllLibraryAssetsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryManager *)self assetUpdatesByIdentifier];
  [v5 removeAllObjects];

  v6 = [(BKLibraryManager *)self identifiersForAssetsNeedingReconcile];
  [v6 removeAllObjects];

  v7 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  [v7 setResultType:2];
  [v7 setFetchBatchSize:128];
  v39[0] = @"objectID";
  v39[1] = @"assetID";
  v39[2] = @"temporaryAssetID";
  v8 = [NSArray arrayWithObjects:v39 count:3];
  [v7 setPropertiesToFetch:v8];

  v37 = 0;
  v9 = [v4 executeFetchRequest:v7 error:&v37];
  v10 = v37;
  v11 = v10;
  if (v9)
  {
    v12 = [(BKLibraryManager *)self unclaimedAssetIDs];
    [v12 removeAllObjects];

    v13 = [(BKLibraryManager *)self unclaimedTemporaryAssetIDs];
    [v13 removeAllObjects];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = v15;
    v27 = v11;
    v28 = v9;
    v29 = v7;
    v30 = v4;
    v17 = *v34;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v33 + 1) + 8 * v18);
        v20 = [v19 valueForKey:{@"assetID", v27, v28, v29, v30}];
        v21 = [v19 valueForKey:@"temporaryAssetID"];
        v22 = v21;
        if (v20)
        {
          v23 = [(BKLibraryManager *)self unclaimedAssetIDs];
          v24 = v23;
          v25 = v20;
LABEL_11:
          [v23 addObject:v25];
          goto LABEL_12;
        }

        if (v21)
        {
          v23 = [(BKLibraryManager *)self unclaimedTemporaryAssetIDs];
          v24 = v23;
          v25 = v22;
          goto LABEL_11;
        }

        v24 = BKLibraryLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_8E614(&buf, v32, v24);
        }

LABEL_12:

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v26 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
      v16 = v26;
      if (!v26)
      {
        v7 = v29;
        v4 = v30;
        v11 = v27;
        v9 = v28;
        goto LABEL_21;
      }
    }
  }

  if (v10)
  {
    v14 = BKLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_8E654();
    }

LABEL_21:
  }
}

- (id)dq_assetsToReconcile
{
  v3 = [(BKLibraryManager *)self assetUpdatesByIdentifier];
  v4 = [v3 mutableCopy];

  v5 = [v4 allKeys];
  v6 = [v5 mutableCopy];

  v7 = [(BKLibraryManager *)self identifiersForAssetsNeedingReconcile];
  v8 = [v7 allObjects];
  [v6 removeObjectsInArray:v8];

  [v4 removeObjectsForKeys:v6];

  return v4;
}

- (void)_removePossibleDupes:(id)a3 inMoc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 assetID];
        v16 = [v15 length];

        if (v16)
        {
          v17 = [v14 assetID];
          [v7 addObject:v17];
        }

        v18 = [v14 temporaryAssetID];
        v19 = [v18 length];

        if (v19)
        {
          v20 = [v14 temporaryAssetID];
          [v8 addObject:v20];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v22 = [v7 allObjects];
  v23 = [v8 allObjects];
  v24 = [NSPredicate predicateWithFormat:@"(%K IN %@) OR (%K IN %@)", @"assetID", v22, @"temporaryAssetID", v23];
  [v21 setPredicate:v24];

  [v21 setFetchBatchSize:32];
  v25 = [v6 executeFetchRequest:v21 error:0];
  v26 = [(BKLibraryManager *)self _removeDupesByAssetID:v25 inMoc:v6];
  [(BKLibraryManager *)self _removeDupesByTemporaryAssetID:v26 inMoc:v6];
}

- (id)_removeDupesByAssetID:(id)a3 inMoc:(id)a4
{
  v5 = a3;
  v56 = a4;
  v6 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  v7 = objc_alloc_init(NSMutableArray);
  v60 = objc_alloc_init(NSMutableArray);
  v61 = objc_alloc_init(NSMutableDictionary);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v83;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v83 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v82 + 1) + 8 * i);
        v13 = [v12 assetID];
        if ([v13 length])
        {
          v14 = [v61 objectForKeyedSubscript:v13];
          if (!v14)
          {
            v14 = objc_alloc_init(v6[413]);
            [v61 setObject:v14 forKeyedSubscript:v13];
          }

          [v14 addObject:v12];
        }

        else
        {
          v15 = [v12 temporaryAssetID];
          v16 = [v15 length];

          if (v16)
          {
            v17 = v60;
          }

          else
          {
            v18 = BKLibraryLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [v12 title];
              v20 = [v12 author];
              v21 = [v12 dataSourceIdentifier];
              *buf = 138412802;
              v87 = v19;
              v88 = 2112;
              v89 = v20;
              v90 = 2114;
              v91 = v21;
              _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "_removeDupesByAssetID encountered asset without assetID and temporaryAssetID. title: %@, author: %@, dataSource: %{public}@.", buf, 0x20u);

              v6 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
            }

            v17 = v7;
          }

          [v17 addObject:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
    }

    while (v9);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v57 = [v61 allValues];
  v63 = [v57 countByEnumeratingWithState:&v78 objects:v99 count:16];
  if (v63)
  {
    v62 = *v79;
    v59 = v7;
    do
    {
      for (j = 0; j != v63; j = j + 1)
      {
        if (*v79 != v62)
        {
          objc_enumerationMutation(v57);
        }

        v23 = *(*(&v78 + 1) + 8 * j);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v74 objects:v98 count:16];
        if (v25)
        {
          v26 = v25;
          v64 = j;
          v27 = 0;
          v28 = *v75;
          do
          {
            for (k = 0; k != v26; k = k + 1)
            {
              if (*v75 != v28)
              {
                objc_enumerationMutation(v24);
              }

              v30 = *(*(&v74 + 1) + 8 * k);
              if (v27)
              {
                v31 = [(BKLibraryManager *)self dataSourcesByIdentifier];
                v32 = [v27 dataSourceIdentifier];
                v33 = [v31 objectForKeyedSubscript:v32];

                v34 = [(BKLibraryManager *)self dataSourcesByIdentifier];
                v35 = [v30 dataSourceIdentifier];
                v36 = [v34 objectForKeyedSubscript:v35];

                v37 = [v36 rank];
                if (v37 < [v33 rank])
                {
                  v38 = v30;

                  v27 = v38;
                }
              }

              else
              {
                v27 = v30;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v74 objects:v98 count:16];
          }

          while (v26);

          if (v27)
          {
            [v60 addObject:v27];
          }

          v7 = v59;
          j = v64;
        }

        else
        {

          v27 = 0;
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v39 = v24;
        v40 = [v39 countByEnumeratingWithState:&v70 objects:v97 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v71;
          do
          {
            for (m = 0; m != v41; m = m + 1)
            {
              if (*v71 != v42)
              {
                objc_enumerationMutation(v39);
              }

              if (*(*(&v70 + 1) + 8 * m) != v27)
              {
                [v7 addObject:?];
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v70 objects:v97 count:16];
          }

          while (v41);
        }
      }

      v63 = [v57 countByEnumeratingWithState:&v78 objects:v99 count:16];
    }

    while (v63);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v44 = v7;
  v45 = [v44 countByEnumeratingWithState:&v66 objects:v96 count:16];
  v46 = v56;
  if (v45)
  {
    v47 = v45;
    v48 = *v67;
    do
    {
      for (n = 0; n != v47; n = n + 1)
      {
        if (*v67 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v50 = *(*(&v66 + 1) + 8 * n);
        v51 = BKLibraryLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [v50 assetID];
          v53 = [v50 temporaryAssetID];
          v54 = [v50 dataSourceIdentifier];
          *buf = 141559042;
          v87 = 1752392040;
          v88 = 2112;
          v89 = v52;
          v90 = 2160;
          v91 = 1752392040;
          v92 = 2112;
          v93 = v53;
          v94 = 2114;
          v95 = v54;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "Delete Asset from BKLibraryManager (possibleDuplicateAssets) with duplicate assetID: %{mask.hash}@ [%{mask.hash}@], dataSource: %{public}@", buf, 0x34u);

          v46 = v56;
        }

        [v46 deleteObject:v50];
      }

      v47 = [v44 countByEnumeratingWithState:&v66 objects:v96 count:16];
    }

    while (v47);
  }

  return v60;
}

- (void)_removeDupesByTemporaryAssetID:(id)a3 inMoc:(id)a4
{
  v5 = a3;
  v60 = a4;
  v62 = objc_alloc_init(NSMutableArray);
  v58 = objc_alloc_init(NSMutableDictionary);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v82;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v82 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v81 + 1) + 8 * i);
        v11 = [v10 temporaryAssetID];
        if ([v11 length])
        {
          v12 = [v58 objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = objc_alloc_init(NSMutableArray);
            [v58 setObject:v12 forKeyedSubscript:v11];
          }

          [v12 addObject:v10];
        }

        else
        {
          v13 = [v10 assetID];
          v14 = [v13 length];

          if (!v14)
          {
            v15 = BKLibraryLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [v10 title];
              v17 = [v10 author];
              v18 = [v10 dataSourceIdentifier];
              *buf = 138412802;
              v86 = v16;
              v87 = 2112;
              v88 = v17;
              v89 = 2114;
              v90 = v18;
              _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "_removeDupesByTemporaryAssetID encountered asset without assetID and temporaryAssetID. title: %@, author: %@, dataSource: %{public}@.", buf, 0x20u);
            }

            [v62 addObject:v10];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
    }

    while (v7);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v56 = [v58 allValues];
  v19 = v62;
  v61 = [v56 countByEnumeratingWithState:&v77 objects:v98 count:16];
  if (v61)
  {
    v59 = *v78;
    do
    {
      v20 = 0;
      do
      {
        if (*v78 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v21 = *(*(&v77 + 1) + 8 * v20);
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v73 objects:v97 count:16];
        v63 = v20;
        if (!v23)
        {
          v25 = 0;
          goto LABEL_39;
        }

        v24 = v23;
        v25 = 0;
        v26 = *v74;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v74 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v73 + 1) + 8 * j);
            if (v25)
            {
              v29 = [*(*(&v73 + 1) + 8 * j) assetID];
              if ([v29 length])
              {
                v30 = [v25 assetID];
                v31 = [v30 length];

                if (!v31)
                {
                  v32 = v28;

                  v25 = v32;
                  continue;
                }
              }

              else
              {
              }

              v33 = [(BKLibraryManager *)self dataSourcesByIdentifier];
              v34 = [v25 dataSourceIdentifier];
              v35 = [v33 objectForKeyedSubscript:v34];

              v36 = [(BKLibraryManager *)self dataSourcesByIdentifier];
              v37 = [v28 dataSourceIdentifier];
              v38 = [v36 objectForKeyedSubscript:v37];

              v39 = [v38 rank];
              if (v39 < [v35 rank])
              {
                v40 = v28;

                v25 = v40;
              }
            }

            else
            {
              v25 = v28;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v73 objects:v97 count:16];
        }

        while (v24);
LABEL_39:

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v41 = v22;
        v42 = [v41 countByEnumeratingWithState:&v69 objects:v96 count:16];
        v19 = v62;
        if (v42)
        {
          v43 = v42;
          v44 = *v70;
          do
          {
            for (k = 0; k != v43; k = k + 1)
            {
              if (*v70 != v44)
              {
                objc_enumerationMutation(v41);
              }

              if (*(*(&v69 + 1) + 8 * k) != v25)
              {
                [v62 addObject:?];
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v69 objects:v96 count:16];
          }

          while (v43);
        }

        v20 = v63 + 1;
      }

      while ((v63 + 1) != v61);
      v61 = [v56 countByEnumeratingWithState:&v77 objects:v98 count:16];
    }

    while (v61);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = v19;
  v47 = [v46 countByEnumeratingWithState:&v65 objects:v95 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v66;
    do
    {
      for (m = 0; m != v48; m = m + 1)
      {
        if (*v66 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v65 + 1) + 8 * m);
        v52 = BKLibraryLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [v51 assetID];
          v54 = [v51 temporaryAssetID];
          v55 = [v51 dataSourceIdentifier];
          *buf = 141559042;
          v86 = 1752392040;
          v87 = 2112;
          v88 = v53;
          v89 = 2160;
          v90 = 1752392040;
          v91 = 2112;
          v92 = v54;
          v93 = 2114;
          v94 = v55;
          _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "Delete Asset from BKLibraryManager (possibleDuplicateAssets) %{mask.hash}@ with duplicate temporaryAssetID: [%{mask.hash}@], dataSource: %{public}@", buf, 0x34u);
        }

        [v60 deleteObject:v51];
      }

      v48 = [v46 countByEnumeratingWithState:&v65 objects:v95 count:16];
    }

    while (v48);
  }
}

- (void)wq_dq_integrateClaimedAssetsReason:(signed __int16)a3 context:(id)a4
{
  v112 = a3;
  v122 = a4;
  v129 = self;
  v5 = self->_dqSyncQueue;
  v6 = &_dispatch_main_q;
  if (v5 == &_dispatch_main_q)
  {
    v7 = +[NSThread isMainThread];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  dispatch_assert_queue_V2(v5);
LABEL_5:

  v130 = [(BKLibraryManager *)v129 dq_assetsToReconcile];
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithShort:v112];
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v130 count]);
    LODWORD(buf.version) = 136315650;
    *(&buf.version + 4) = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
    WORD2(buf.retain) = 2112;
    *(&buf.retain + 6) = v9;
    HIWORD(buf.release) = 2112;
    buf.copyDescription = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s: reason=%@, assetsToReconcile=%@", &buf, 0x20u);
  }

  v110 = [(BKLibraryManager *)v129 unclaimedAssetIDs];
  v109 = [(BKLibraryManager *)v129 unclaimedTemporaryAssetIDs];
  v125 = objc_alloc_init(NSMutableArray);
  v106 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v130, "count")}];
  v104 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v130, "count")}];
  v103 = objc_opt_new();
  if ([v130 count])
  {
    kdebug_trace();
    v105 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    v101 = [v130 allKeys];
    v99 = [(BKLibraryManager *)v129 predicateForAssetIDsTaggedLibraryAssets:v101];
    v98 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:v101];
    v176[0] = v99;
    v176[1] = v98;
    v11 = [NSArray arrayWithObjects:v176 count:2];
    v12 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];
    [v105 setPredicate:v12];

    [v105 setReturnsObjectsAsFaults:0];
    [v105 setFetchBatchSize:25];
    v158 = 0;
    v102 = [v122 executeFetchRequest:v105 error:&v158];
    v100 = v158;
    v13 = BKLibraryLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v102 count]);
      LODWORD(buf.version) = 136315394;
      *(&buf.version + 4) = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
      WORD2(buf.retain) = 2112;
      *(&buf.retain + 6) = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s: toBeUpdatedLibraryAssets=%@", &buf, 0x16u);
    }

    if (v102)
    {
      v107 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v130, "count")}];
      v108 = +[NSMutableArray array];
      v15 = *&kCFTypeSetCallBacks.release;
      *&buf.version = *&kCFTypeSetCallBacks.version;
      *&buf.release = v15;
      *&buf.equal = *&kCFTypeSetCallBacks.equal;
      buf.retain = 0;
      buf.release = 0;
      v111 = CFSetCreateMutable(kCFAllocatorDefault, 0, &buf);
      v113 = objc_alloc_init(NSMutableSet);
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      obj = v102;
      v127 = [obj countByEnumeratingWithState:&v154 objects:v174 count:16];
      if (!v127)
      {
        goto LABEL_61;
      }

      v126 = *v155;
      while (1)
      {
        for (i = 0; i != v127; i = i + 1)
        {
          if (*v155 != v126)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v154 + 1) + 8 * i);
          if ([v17 isValid])
          {
            v18 = [v17 assetID];
            v19 = [v17 temporaryAssetID];
            if (v18)
            {
              v20 = [v130 objectForKeyedSubscript:v18];
              if (v20)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v20 = 0;
            }

            if (v19)
            {
              v20 = [v130 objectForKeyedSubscript:v19];
            }

LABEL_23:
            if (v20)
            {
              if ([v20 dataSourcesBitmask])
              {
                [(__CFSet *)v111 addObject:v20];
                v21 = [v17 dataSourceIdentifier];
                v22 = [v20 dataSourcesBitmask];
                v23 = [(BKLibraryManager *)v129 dataSources];
                v24 = sub_C48C(v22, v23);
                v123 = [v24 identifier];

                v25 = [(BKLibraryManager *)v129 dataSourcesByIdentifier];
                v117 = [v25 objectForKeyedSubscript:v21];

                v26 = [(BKLibraryManager *)v129 dataSourcesByIdentifier];
                v120 = [v26 objectForKeyedSubscript:v123];

                if (v120)
                {
                  v27 = [v120 rank];
                  if (v27 <= [v117 rank] || v112 == 4 || v112 == 2)
                  {
                    v115 = [v20 asset];
                    v28 = [v20 dataSourcesBitmask];
                    v29 = [(BKLibraryManager *)v129 dataSources];
                    if (!sub_238C4(v28, v29))
                    {
                      goto LABEL_42;
                    }

                    v30 = [v20 asset];
                    v31 = v30 != 0;

                    if (v115)
                    {
                      v32 = v31;
                    }

                    else
                    {
                      v32 = 0;
                    }

                    if (v32)
                    {
                      [v107 addObject:v115];
                      v33 = [v115 storeID];
                      if (v33 && (v34 = [v115 contentType] == 6, v33, !v34))
                      {
                        v29 = [v115 storeID];
                        [v106 addObject:v29];
LABEL_42:
                      }

                      else
                      {
                        v35 = [v115 assetID];
                        if (v35)
                        {
                          v36 = [v115 state] == 1;

                          if (v36)
                          {
                            v29 = [v115 assetID];
                            [v104 addObject:v29];
                            goto LABEL_42;
                          }
                        }
                      }
                    }

                    v37 = [v17 state];
                    v38 = [v20 asset];
                    v39 = [v38 state];

                    v40 = [(BKLibraryManager *)v129 dataSources];
                    v41 = sub_1BF80(v129, v17, v20, v112, v40);

                    if (v41)
                    {
                      [v108 addObject:v17];
                    }

                    if (([v21 isEqualToString:v123]& 1) == 0)
                    {
                      v173[0] = v123;
                      v172[0] = @"BKLibraryOwnershipNewDatasource";
                      v172[1] = @"BKLibraryOwnershipNewState";
                      v42 = [NSNumber numberWithInteger:v39];
                      v173[1] = v42;
                      v172[2] = @"BKLibraryOwnershipAssetIDKey";
                      v43 = [v17 permanentOrTemporaryAssetID];
                      v173[2] = v43;
                      v173[3] = v21;
                      v172[3] = @"BKLibraryOwnershipOldDatasource";
                      v172[4] = @"BKLibraryOwnershipOldState";
                      v44 = [NSNumber numberWithInteger:v37];
                      v173[4] = v44;
                      v45 = [NSDictionary dictionaryWithObjects:v173 forKeys:v172 count:5];
                      [v125 addObject:v45];
                    }
                  }
                }

                if (v18)
                {
                  [v110 removeObject:v18];
                }

                if (v19)
                {
                  [v109 removeObject:v19];
                }

                if (v18)
                {
                  [v113 addObject:v18];
                }

                if (v19)
                {
                  [v113 addObject:v19];
                }

LABEL_57:
              }

              goto LABEL_59;
            }

            v21 = BKLibraryLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *v169 = 138412546;
              *&v169[4] = v18;
              *&v169[12] = 2112;
              *&v169[14] = v19;
              _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "We should have had an update for %@ / %@", v169, 0x16u);
            }

            goto LABEL_57;
          }

LABEL_59:
        }

        v127 = [obj countByEnumeratingWithState:&v154 objects:v174 count:16];
        if (!v127)
        {
LABEL_61:

          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v46 = v113;
          v47 = [v46 countByEnumeratingWithState:&v150 objects:v171 count:16];
          if (v47)
          {
            v48 = *v151;
            do
            {
              for (j = 0; j != v47; j = j + 1)
              {
                if (*v151 != v48)
                {
                  objc_enumerationMutation(v46);
                }

                v50 = *(*(&v150 + 1) + 8 * j);
                v51 = [v130 objectForKeyedSubscript:v50];
                v52 = v51;
                if (v51)
                {
                  [v51 postIntegrateCleanup];
                }

                [v130 removeObjectForKey:v50];
              }

              v47 = [v46 countByEnumeratingWithState:&v150 objects:v171 count:16];
            }

            while (v47);
          }

          v53 = BKLibraryLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v108 count]);
            *v169 = 136315394;
            *&v169[4] = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
            *&v169[12] = 2112;
            *&v169[14] = v54;
            _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%s: _removePossibleDupes=%@", v169, 0x16u);
          }

          [(BKLibraryManager *)v129 _removePossibleDupes:v108 inMoc:v122];
          v55 = BKLibraryLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v130 count]);
            *v169 = 136315394;
            *&v169[4] = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
            *&v169[12] = 2112;
            *&v169[14] = v56;
            _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%s: addOtherAssets, total=%@", v169, 0x16u);
          }

          *v169 = 0;
          *&v169[8] = v169;
          *&v169[16] = 0x2020000000;
          v170 = 0;
          v137[0] = _NSConcreteStackBlock;
          v137[1] = 3221225472;
          v137[2] = sub_23998;
          v137[3] = &unk_D6128;
          v57 = v111;
          v148 = v169;
          v138 = v57;
          v139 = v129;
          v140 = v122;
          v149 = v112;
          v141 = v103;
          v58 = v107;
          v142 = v58;
          v143 = v106;
          v144 = v104;
          v145 = v125;
          v146 = v110;
          v147 = v109;
          [v130 enumerateKeysAndObjectsUsingBlock:v137];
          v59 = BKLibraryLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = [NSNumber numberWithUnsignedInteger:*(*&v169[8] + 24)];
            *v165 = 136315394;
            v166 = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
            v167 = 2112;
            v168 = v60;
            _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%s: addOtherAssets, %@ processed", v165, 0x16u);
          }

          v61 = BKLibraryLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = [(BKLibraryManager *)v129 assetUpdatesByIdentifier];
            v63 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v62 count]);
            *v165 = 136315394;
            v166 = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
            v167 = 2112;
            v168 = v63;
            _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "%s: postIntegrateCleanup=%@", v165, 0x16u);
          }

          v64 = [(BKLibraryManager *)v129 assetUpdatesByIdentifier];
          [v64 enumerateKeysAndObjectsUsingBlock:&stru_D6168];

          _Block_object_dispose(v169, 8);
          goto LABEL_82;
        }
      }
    }

    v58 = BKLibraryLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_8E6BC();
    }

LABEL_82:
  }

  else
  {
    v100 = 0;
  }

  v65 = BKLibraryLog();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = [(BKLibraryManager *)v129 assetUpdatesByIdentifier];
    v67 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 count]);
    LODWORD(buf.version) = 136315394;
    *(&buf.version + 4) = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
    WORD2(buf.retain) = 2112;
    *(&buf.retain + 6) = v67;
    _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "%s: purge=%@", &buf, 0x16u);
  }

  if ([v110 count] || objc_msgSend(v109, "count"))
  {
    v118 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v118 setReturnsObjectsAsFaults:0];
    [v118 setFetchBatchSize:25];
    if ([v110 count] && objc_msgSend(v109, "count"))
    {
      v68 = [(BKLibraryManager *)v129 predicateForAssetIDsTaggedLibraryAssets:v110];
      v69 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:v109];
      v164[0] = v68;
      v164[1] = v69;
      v70 = [NSArray arrayWithObjects:v164 count:2];
      v71 = [NSCompoundPredicate orPredicateWithSubpredicates:v70];
      [v118 setPredicate:v71];
    }

    else if ([v110 count])
    {
      v68 = [(BKLibraryManager *)v129 predicateForAssetIDsTaggedLibraryAssets:v110];
      [v118 setPredicate:v68];
    }

    else
    {
      if (![v109 count])
      {
        sub_8E724();
      }

      v68 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:v109];
      [v118 setPredicate:v68];
    }

    v136 = 0;
    v116 = [v122 executeFetchRequest:v118 error:&v136];
    v114 = v136;
    if (v116)
    {
      v121 = [(BKLibraryManager *)v129 imageSource];
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v124 = v116;
      v72 = [v124 countByEnumeratingWithState:&v132 objects:v163 count:16];
      if (v72)
      {
        v128 = *v133;
        do
        {
          for (k = 0; k != v72; k = k + 1)
          {
            if (*v133 != v128)
            {
              objc_enumerationMutation(v124);
            }

            v74 = *(*(&v132 + 1) + 8 * k);
            if ([v74 isValid])
            {
              v75 = [v74 assetID];
              v76 = [v74 temporaryAssetID];
              v77 = v76;
              if (v75)
              {
                v78 = v75;
              }

              else
              {
                v78 = v76;
              }

              v79 = v78;
              v161[0] = @"BKLibraryOwnershipOldDatasource";
              v80 = [v74 dataSourceIdentifier];
              v81 = v80;
              if (!v80)
              {
                v126 = +[NSNull null];
                v81 = v126;
              }

              v162[0] = v81;
              v161[1] = @"BKLibraryOwnershipOldState";
              v82 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v74 state]);
              v161[2] = @"BKLibraryOwnershipAssetIDKey";
              v162[1] = v82;
              v162[2] = v79;
              v83 = [NSDictionary dictionaryWithObjects:v162 forKeys:v161 count:3];
              [v125 addObject:v83];

              if (!v80)
              {
              }

              [v121 removeImagesForAssetID:v75 temporaryAssetID:v77];
              v84 = BKLibraryLog();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
              {
                v85 = [v74 title];
                LODWORD(buf.version) = 138412546;
                *(&buf.version + 4) = v85;
                WORD2(buf.retain) = 2112;
                *(&buf.retain + 6) = v79;
                _os_log_debug_impl(&dword_0, v84, OS_LOG_TYPE_DEBUG, "Delete Asset from BKLibraryManager (unclaimedLibraryAsset) %@ [%@]", &buf, 0x16u);
              }

              [(BKLibraryManager *)v129 archiveTransientProperties:v74];
              [v122 deleteObject:v74];
            }
          }

          v72 = [v124 countByEnumeratingWithState:&v132 objects:v163 count:16];
        }

        while (v72);
      }

      [v110 removeAllObjects];
      [v109 removeAllObjects];
      v86 = v121;
    }

    else
    {
      v87 = BKLibraryLog();
      v86 = v87;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        sub_8E760();
        v86 = v87;
      }
    }
  }

  v88 = [(BKLibraryManager *)v129 identifiersForAssetsNeedingReconcile];
  [v88 removeAllObjects];

  v89 = [v122 insertedObjects];
  v90 = [v89 count];
  LOBYTE(v90) = v90 == [v103 count];

  if ((v90 & 1) == 0)
  {
    v91 = BKLibraryLog();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      sub_8E7C8(v103, v122, v91);
    }
  }

  [(BKLibraryManager *)v129 wq_dq_saveDatabaseContext:v122];
  if ([v125 count])
  {
    v92 = +[NSNotificationCenter defaultCenter];
    v159 = @"BKLibraryOwnershipAssetsKey";
    v160 = v125;
    v93 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
    [v92 postNotificationName:@"BKLibraryOwnershipDidChangeNotification" object:v129 userInfo:v93];

    v94 = BKLibraryLog();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      sub_8E89C(v125, v112);
    }
  }

  v95 = &_dispatch_main_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23E60;
  block[3] = &unk_D5528;
  block[4] = v129;
  dispatch_async(&_dispatch_main_q, block);

  v96 = BKLibraryLog();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v97 = [NSNumber numberWithShort:v112];
    LODWORD(buf.version) = 136315394;
    *(&buf.version + 4) = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
    WORD2(buf.retain) = 2112;
    *(&buf.retain + 6) = v97;
    _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "%s: reason=%@, done", &buf, 0x16u);
  }
}

- (void)wq_reconcileDataSourceAssetsForReason:(signed __int16)a3 context:(id)a4
{
  v25 = a3;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Other";
    if (v25 == 4)
    {
      v6 = @"Reload";
    }

    *buf = 136315394;
    v43 = "[BKLibraryManager wq_reconcileDataSourceAssetsForReason:context:]";
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: reason=%@", buf, 0x16u);
  }

  kdebug_trace();
  v7 = dispatch_group_create();
  v8 = [(BKLibraryManager *)self dataSources];
  v9 = [v8 valueForKey:@"identifier"];
  v26 = [NSMutableSet setWithArray:v9];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(BKLibraryManager *)self dataSources];
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      v13 = 0;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        dispatch_group_enter(v7);
        v15 = [(BKLibraryManager *)self completionQueue];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_24360;
        v33[3] = &unk_D61B8;
        v33[4] = self;
        v33[5] = v14;
        v36 = v25;
        v34 = v26;
        v35 = v7;
        sub_1473C(v14, v15, v33);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }

  v16 = [(BKLibraryManager *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(BKLibraryManager *)self delegate];
    [v18 initialDataSourceFetchInitiated];
  }

  v19 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(v7, v19))
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_245F8;
    v30[3] = &unk_D61E0;
    v32 = 0;
    v20 = v26;
    v31 = v20;
    [(BKLibraryManager *)self dq_sync:v30];
    v21 = dispatch_time(0, 120000000000);
    if (dispatch_group_wait(v7, v21))
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_246FC;
      v27[3] = &unk_D61E0;
      v29 = 0;
      v28 = v20;
      [(BKLibraryManager *)self dq_sync:v27];
      dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  kdebug_trace();
  v22 = BKLibraryLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"Other";
    if (v25 == 4)
    {
      v23 = @"Reload";
    }

    *buf = 136315394;
    v43 = "[BKLibraryManager wq_reconcileDataSourceAssetsForReason:context:]";
    v44 = 2112;
    v45 = v23;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%s: reason=%@, done", buf, 0x16u);
  }
}

- (id)metadataForAssetAtURL:(id)a3 needsCoordination:(BOOL)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_83E0;
  v30 = sub_83F0;
  v31 = 0;
  [v6 path];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_24ABC;
  v23[3] = &unk_D6208;
  v23[4] = self;
  v7 = v25 = a4;
  v24 = v7;
  v8 = objc_retainBlock(v23);
  if (v7)
  {
    if (+[NSThread isMainThread])
    {
      v9 = [NSPredicate predicateWithFormat:@"%K == %@", @"path", v7];
      v10 = [(BKLibraryManager *)self uiChildContext];
      v11 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v7 predicate:v9 inManagedObjectContext:v10];

      v12 = (v8[2])(v8, v11);
      v13 = v27[5];
      v27[5] = v12;
    }

    else
    {
      v14 = dispatch_semaphore_create(0);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_24CA8;
      v18[3] = &unk_D6230;
      v18[4] = self;
      v19 = v7;
      v22 = &v26;
      v21 = v8;
      v11 = v14;
      v20 = v11;
      [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v18];
      v15 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v11, v15);
    }
  }

  v16 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v16;
}

- (id)assetIDForAssetAtURLOnMainThread:(id)a3
{
  v4 = a3;
  if (v4 && +[NSThread isMainThread])
  {
    v5 = [v4 absoluteString];
    v6 = [v4 path];
    v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"path", v6];
    v8 = [(BKLibraryManager *)self uiChildContext];
    v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v5 predicate:v7 inManagedObjectContext:v8];

    v10 = [v9 permanentOrTemporaryAssetID];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pageProgressionDirectionForAssetAtURLOnMainThread:(id)a3
{
  v4 = a3;
  if (v4 && +[NSThread isMainThread])
  {
    v5 = [v4 absoluteString];
    v6 = [v4 path];
    v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"path", v6];
    v8 = [(BKLibraryManager *)self uiChildContext];
    v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v5 predicate:v7 inManagedObjectContext:v8];

    v10 = [v9 pageProgressionDirection];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)bookDescriptionForAssetID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_83E0;
  v17 = sub_83F0;
  v18 = 0;
  if (+[NSThread isMainThread])
  {
    v5 = [(BKLibraryManager *)self libraryAssetOnMainQueueWithAssetID:v4];
    v6 = [v5 bookDescription];
    v7 = v14[5];
    v14[5] = v6;
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_25124;
    v10[3] = &unk_D6258;
    v10[4] = self;
    v11 = v4;
    v12 = &v13;
    [(BKLibraryManager *)self performBackgroundReadOnlyBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)seriesTitleForAssetID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_83E0;
  v20 = sub_83F0;
  v21 = 0;
  if (+[NSThread isMainThread])
  {
    v5 = [(BKLibraryManager *)self libraryAssetOnMainQueueWithAssetID:v4];
    v6 = [v5 seriesID];

    if (v6)
    {
      v7 = [v5 seriesID];
      v8 = [(BKLibraryManager *)self libraryAssetOnMainQueueWithAssetID:v7];

      v9 = [v8 title];
      v10 = v17[5];
      v17[5] = v9;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_25358;
    v13[3] = &unk_D6258;
    v13[4] = self;
    v14 = v4;
    v15 = &v16;
    [(BKLibraryManager *)self performBackgroundReadOnlyBlockAndWait:v13];
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)deleteAssetIDs:(id)a3 exhaustive:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_254CC;
  v6[3] = &unk_D6280;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(BKLibraryManager *)v7 performBackgroundReadOnlyBlock:v6];
}

- (void)didHidePurchasedAssetID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BKLibraryManager *)self collectionController];
    [v5 removeAssetID:v4 fromCollectionID:kBKCollectionDefaultIDWantToRead completion:0];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_25604;
    v6[3] = &unk_D58E0;
    v6[4] = self;
    v7 = v4;
    [(BKLibraryManager *)self performBlockOnWorkerQueue:v6];
  }
}

- (BOOL)isExplicitMaterialAllowed
{
  v2 = +[BURestrictionsProvider sharedInstance];
  v3 = [v2 isExplicitContentAllowed];

  return v3;
}

- (unint64_t)countOfPurchasedBooks
{
  if (!+[NSThread isMainThread])
  {
    sub_8EC68();
  }

  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v4 = [(BKLibraryManager *)self predicateForPurchasedBooksAssets];
  [v3 setPredicate:v4];

  v5 = [(BKLibraryManager *)self uiChildContext];
  v10 = 0;
  v6 = [v5 countForFetchRequest:v3 error:&v10];
  v7 = v10;

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8ECA4();
    }

    v6 = 0;
  }

  return v6;
}

- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)a3 total:(unint64_t *)a4 purchased:(unint64_t *)a5 context:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (v10 && a4 && a5)
  {
    v28 = a4;
    v29 = a5;
    v12 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:v10];
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v13 setPredicate:v12];
    v31 = 0;
    v14 = [v11 countForFetchRequest:v13 error:&v31];
    v15 = v31;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = BKLibraryLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_8ED0C();
      }

      v14 = 0;
    }

    v26 = v15;
    v17 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
    v32[0] = v17;
    v32[1] = v12;
    v27 = v12;
    v18 = +[BKLibraryManager predicateForNotSamplesLibraryAssets];
    v32[2] = v18;
    v19 = +[BKLibraryManager sampleDataSourceIdentifier];
    v20 = [NSPredicate predicateWithFormat:@"%K != %@", @"dataSourceIdentifier", v19];
    v32[3] = v20;
    v21 = [NSArray arrayWithObjects:v32 count:4];
    v22 = [NSCompoundPredicate andPredicateWithSubpredicates:v21];
    [v13 setPredicate:v22];

    v30 = 0;
    v23 = [v11 countForFetchRequest:v13 error:&v30];
    v24 = v30;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = BKLibraryLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_8ED74();
      }

      v23 = 0;
    }

    *v28 = v14;
    *v29 = v23;
  }
}

- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)a3 total:(unint64_t *)a4 finished:(unint64_t *)a5 context:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (v10 && a4 && a5)
  {
    v23 = a5;
    v12 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:v10];
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v13 setPredicate:v12];
    v25 = 0;
    v14 = [v11 countForFetchRequest:v13 error:&v25];
    v15 = v25;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = BKLibraryLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_8ED0C();
      }

      v14 = 0;
    }

    v17 = +[BKLibraryManager predicateFor_All_Finished_LibraryAssets];
    v26[0] = v17;
    v26[1] = v12;
    v18 = [NSArray arrayWithObjects:v26 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];
    [v13 setPredicate:v19];

    v24 = 0;
    v20 = [v11 countForFetchRequest:v13 error:&v24];
    v21 = v24;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = BKLibraryLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_8ED74();
      }

      v20 = 0;
    }

    *a4 = v14;
    *v23 = v20;
  }
}

- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)a3 total:(unint64_t *)a4 markedFinished:(unint64_t *)a5 context:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (v10 && a4 && a5)
  {
    v23 = a5;
    v12 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:v10];
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v13 setPredicate:v12];
    v25 = 0;
    v14 = [v11 countForFetchRequest:v13 error:&v25];
    v15 = v25;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = BKLibraryLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_8ED0C();
      }

      v14 = 0;
    }

    v17 = +[BKLibraryManager predicateFor_All_Marked_As_Finished_LibraryAssets];
    v26[0] = v17;
    v26[1] = v12;
    v18 = [NSArray arrayWithObjects:v26 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];
    [v13 setPredicate:v19];

    v24 = 0;
    v20 = [v11 countForFetchRequest:v13 error:&v24];
    v21 = v24;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = BKLibraryLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_8ED74();
      }

      v20 = 0;
    }

    *a4 = v14;
    *v23 = v20;
  }
}

- (id)predicateForContainerWithSeriesIDLibraryAsset:(id)a3
{
  v4 = [NSPredicate predicateWithFormat:@"%K = %@", @"seriesID", a3];
  v9[0] = v4;
  v5 = [(BKLibraryManager *)self predicateForContainerLibraryAssets];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];

  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)predicateForHighWaterMarkCapableLibraryAssets
{
  v3 = [(BKLibraryManager *)self predicateToExcludeUnownedLibraryAssets];
  v4 = [(BKLibraryManager *)self predicateForExcludingContainerLibraryAssets];
  v9[1] = v4;
  v5 = [objc_opt_class() predicateToExcludeAudiobookSupplementalContent];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];

  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)predicateForIndexing
{
  v3 = [(BKLibraryManager *)self predicateForLocalLibraryAssets];
  v14[0] = v3;
  v4 = +[BKLibraryManager predicateForAllOwnedAudiobooks];
  v14[1] = v4;
  v5 = [NSArray arrayWithObjects:v14 count:2];
  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  v7 = [(BKLibraryManager *)self predicateToExcludeUnownedLibraryAssets];
  v13[0] = v7;
  v8 = [(BKLibraryManager *)self predicateForExcludingContainerLibraryAssets];
  v13[1] = v8;
  v9 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v13[2] = v9;
  v13[3] = v6;
  v10 = [NSArray arrayWithObjects:v13 count:4];

  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  return v11;
}

+ (id)predicateForPersonalizationAffinityAssets
{
  v2 = +[BKLibraryManager predicateForDownloadableStoreLibraryAssets];
  v9[0] = v2;
  v3 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v9[1] = v3;
  v4 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v9[2] = v4;
  v5 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
  v9[3] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:4];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)predicateForSearchableLibraryAssets
{
  v3 = [NSMutableArray arrayWithCapacity:5];
  v4 = [NSPredicate predicateWithFormat:@"collectionMembers.@count > 0 OR (purchasedAndLocalParent != NULL AND purchasedAndLocalParent != 0)"];
  [v3 addObject:v4];

  if (![(BKLibraryManager *)self isExplicitMaterialAllowed])
  {
    v5 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    [v3 addObject:v5];
  }

  v6 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  [v3 addObject:v6];

  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v3];

  return v7;
}

- (id)predicateForSamples
{
  v2 = [NSPredicate predicateWithFormat:@"(%K == 1)", @"isSample"];
  v3 = [NSPredicate predicateWithFormat:@"%K == %@", @"contentType", &off_DDF70];
  v11[0] = v3;
  v4 = [NSPredicate predicateWithFormat:@"%K == %@", @"state", &off_DDF70];
  v11[1] = v4;
  v5 = [NSArray arrayWithObjects:v11 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  v10[0] = v2;
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];

  return v8;
}

- (id)_predicateForSearchText:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableArray alloc] initWithCapacity:6];
  if ([v4 length])
  {
    v6 = [(BKLibraryManager *)self predicateForSearchableLibraryAssets];
    [v5 addObject:v6];

    v7 = [(BKLibraryManager *)self predicateForMatchingSearchStringLibraryAssets:v4];
    [v5 addObject:v7];
  }

  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v8;
}

- (id)_booksWithPredicate:(id)a3 sortDescriptors:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v12 setPredicate:v11];

  [v12 setSortDescriptors:v10];
  [v12 setReturnsObjectsAsFaults:0];
  v13 = [v9 executeFetchRequest:v12 error:a6];

  return v13;
}

+ (id)predicateToExcludeAssetsForSeriesAndStoreItemsNotAddedToCollections
{
  v2 = [a1 predicateToExcludeAssetsForSeriesAndStoreItems];
  v9[0] = v2;
  v8[0] = kBKCollectionDefaultAll;
  v8[1] = kBKCollectionDefaultIDBooks;
  v8[2] = kBKCollectionDefaultIDAudiobooks;
  v3 = [NSArray arrayWithObjects:v8 count:3];
  v4 = [NSPredicate predicateWithFormat:@"SUBQUERY(collectionMembers, $collectionMember, NOT $collectionMember.collection.collectionID IN %@).@count > 0", v3];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateToExcludeAssetsForUnpurchasedItemsInCollection:(id)a3
{
  v3 = kBKCollectionDefaultIDAudiobooks;
  v4 = [a3 isEqualToString:kBKCollectionDefaultIDAudiobooks];
  if (v4)
  {
    v5 = kBKCollectionDefaultIDBooks;
  }

  else
  {
    v5 = v3;
  }

  v6 = [BKCollection contentTypesForDefaultCollectionWithID:v5];
  v7 = [NSNumber numberWithBool:v4];
  v8 = [NSPredicate predicateWithFormat:@"(%K = NULL OR %K = 0) AND !(%K IN %@) AND (%K != %@ AND (%K != %@ OR (%K == %@ AND seriesBooks.@count > 1 AND ANY seriesBooks.%K == %@)))", @"isSample", @"isSample", @"contentType", v6, @"state", &off_DDF70, @"state", &off_DDF58, @"contentType", &off_DDF58, @"isStoreAudiobook", v7];

  return v8;
}

+ (id)predicateForAssetsInCollectionID:(id)a3 allowExplicit:(BOOL)a4 includeSeriesItems:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (!v8)
  {
    v8 = kBKCollectionDefaultAll;
  }

  v9 = [a1 defaultManager];
  v10 = [v9 usePerformancePredicates];

  if (v10)
  {
    v11 = [NSPredicate predicateWithValue:1];
  }

  else
  {
    v12 = +[NSMutableArray array];
    v13 = [NSPredicate predicateWithFormat:@"ANY collectionMembers.collection.collectionID == %@", v8];
    [v12 addObject:v13];

    if (!a4)
    {
      v14 = +[BKLibraryManager predicateToExcludeAssetsWithExplicitContent];
      [v12 addObject:v14];
    }

    v15 = [v8 isEqualToString:kBKCollectionDefaultAll];
    v16 = [v8 isEqualToString:kBKCollectionDefaultIDBooks];
    v17 = [v8 isEqualToString:kBKCollectionDefaultIDAudiobooks];
    v18 = v17;
    if ((v15 & 1) != 0 || (v16 & 1) != 0 || v17)
    {
      v19 = +[BKLibraryManager predicateToExcludeAssetsInASeriesContainerWithOwnedBooks];
      [v12 addObject:v19];

      v20 = +[BKLibraryManager predicateToExcludeAssetsWithSeriesContainersWithNoOwnedBooks];
      [v12 addObject:v20];

      if (v15)
      {
        v21 = +[BKLibraryManager predicateToExcludeAssetsForSeriesAndStoreItemsNotAddedToCollections];
        [v12 addObject:v21];
      }

      if ((v16 | v18))
      {
        v22 = [BKLibraryManager predicateToExcludeAssetsForUnpurchasedItemsInCollection:v8];
        [v12 addObject:v22];
      }
    }

    v23 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
    [v12 addObject:v23];

    v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    if (v5)
    {
      v24 = [NSPredicate predicateWithFormat:@"ANY seriesContainer.collectionMembers.collection.collectionID == %@", v8];
      v25 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
      v32[0] = v24;
      v32[1] = v25;
      v26 = [NSArray arrayWithObjects:v32 count:2];
      v27 = [NSCompoundPredicate andPredicateWithSubpredicates:v26];

      v31[0] = v11;
      v31[1] = v27;
      v28 = [NSArray arrayWithObjects:v31 count:2];
      v29 = [NSCompoundPredicate orPredicateWithSubpredicates:v28];

      v11 = v29;
    }
  }

  return v11;
}

+ (id)predicateForAllOwnedBooks
{
  v3 = +[NSMutableArray array];
  v4 = [NSPredicate predicateWithFormat:@"state != %@ AND state != %@ AND contentType != %@", &off_DDF58, &off_DDF70, &off_DDF58];
  [v3 addObject:v4];

  v5 = [a1 defaultManager];
  v6 = [v5 isExplicitMaterialAllowed];

  if ((v6 & 1) == 0)
  {
    v7 = [NSPredicate predicateWithFormat:@"isExplicit == NO OR isExplicit == NULL"];
    [v3 addObject:v7];
  }

  v8 = [a1 predicateToExcludeAudiobookSupplementalContent];
  [v3 addObject:v8];

  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v3];

  return v9;
}

+ (id)predicateForAllOwnedAudiobooks
{
  v3 = [a1 predicateForAllOwnedBooks];
  v4 = [a1 predicateForAudiobooks];
  v9[1] = v4;
  v5 = [a1 predicateForNonPreorders];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)predicateForCollectionMembersInCollectionID:(id)a3 hideUnownedItems:(BOOL)a4 allowExplicit:(BOOL)a5
{
  v7 = a3;
  if (!v7)
  {
    v7 = kBKCollectionDefaultAll;
  }

  v8 = [a1 defaultManager];
  v9 = [v8 usePerformancePredicates];

  if (v9)
  {
    v10 = [NSPredicate predicateWithValue:1];
  }

  else
  {
    v11 = +[NSMutableArray array];
    v12 = [NSPredicate predicateWithFormat:@"collection.collectionID == %@", v7];
    [v11 addObject:v12];

    v13 = [NSPredicate predicateWithFormat:@"asset != NULL"];
    [v11 addObject:v13];

    if (!a5)
    {
      v14 = +[BKLibraryManager predicateToExcludeCollectionMembersWithExplicitContent];
      [v11 addObject:v14];
    }

    v15 = [v7 isEqualToString:kBKCollectionDefaultAll];
    v16 = [v7 isEqualToString:kBKCollectionDefaultIDBooks];
    v17 = [v7 isEqualToString:kBKCollectionDefaultIDAudiobooks];
    v18 = v17;
    if ((v15 & 1) != 0 || (v16 & 1) != 0 || v17)
    {
      v19 = +[BKLibraryManager predicateToExcludeCollectionMembersInASeriesContainerWithOwnedBooks];
      [v11 addObject:v19];

      v20 = +[BKLibraryManager predicateToExcludeCollectionMembersWithSeriesContainersWithNoOwnedBooks];
      [v11 addObject:v20];

      if (v15)
      {
        v21 = +[BKLibraryManager predicateToExcludeCollectionMembersForSeriesAndStoreItemsNotAddedToCollections];
        [v11 addObject:v21];
      }

      if ((v16 | v18))
      {
        v22 = [BKLibraryManager predicateToExcludeCollectionMembersForUnpurchasedItemsInCollection:v7];
        [v11 addObject:v22];
      }
    }

    v23 = +[BKLibraryManager predicateToExcludeCollectionMembersForAudiobookSupplementalContent];
    [v11 addObject:v23];

    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
  }

  return v10;
}

+ (id)predicateForCollectionMembersMatchingSearchStringLibraryAssets:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [NSPredicate predicateWithFormat:@"asset.title contains[cd] %@ OR asset.author contains[cd] %@ OR asset.genre contains[cd] %@ OR asset.localOnlySeriesItemsParent.title CONTAINS[cd] %@", v3, v3, v3, v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)predicateForCollectionMembersWithLocalAssets
{
  v2 = [NSPredicate predicateWithFormat:@"asset.state == %@ OR asset.state == %@ OR asset.state == %@", &off_DDF88, &off_DDFD0, &off_DDFA0];
  v3 = [NSPredicate predicateWithFormat:@"asset.contentType == %@ AND asset.localOnlySeriesItems.@count > 0", &off_DDF58];
  v8[0] = v2;
  v8[1] = v3;
  v4 = +[BKLibraryManager predicateToExcludeCollectionMembersForAudiobookSupplementalContent];
  v8[2] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:3];
  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  return v6;
}

- (BKLibraryCollectionManager)collectionManager
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_collectionManager)
  {
    v3 = [[BKLibraryCollectionManager alloc] initWithLibraryManager:v2];
    collectionManager = v2->_collectionManager;
    v2->_collectionManager = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_collectionManager;

  return v5;
}

- (void)_newAssetIDAdded:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_27C2C;
  v10 = &unk_D62A8;
  v11 = self;
  v4 = a3;
  v12 = v4;
  v13 = &v14;
  v5 = v8;
  os_unfair_lock_lock(&self->_notifyLockForNewAssets);
  v9(v5);
  os_unfair_lock_unlock(&self->_notifyLockForNewAssets);

  if (*(v15 + 24) == 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_27CA8;
    block[3] = &unk_D5420;
    block[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)waitForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2810C;
    v14[3] = &unk_D62F8;
    v14[4] = self;
    v8 = v6;
    v15 = v8;
    v16 = v7;
    os_unfair_lock_lock(&self->_notifyLockForNewAssets);
    sub_2810C(v14);
    os_unfair_lock_unlock(&self->_notifyLockForNewAssets);
    v17 = v8;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_281C4;
    v12[3] = &unk_D6320;
    v12[4] = self;
    v13 = v8;
    [(BKLibraryManager *)self fetchLibraryAssetsFromAssetIDs:v9 handler:v12];
  }

  else
  {
    v10 = objc_retainBlock(v7);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (id)sortDescriptorsForMode:(unint64_t)a3 collectionID:(id)a4
{
  v6 = a4;
  v7 = [(BKLibraryManager *)self collectionProvider];
  v8 = [v7 isAllBooksCollection:v6];

  v9 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_23;
        }

        v10 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
        v11 = [[NSSortDescriptor alloc] initWithKey:@"sortTitle" ascending:1 selector:"localizedStandardCompare:"];
        v14 = [[NSSortDescriptor alloc] initWithKey:@"assetID" ascending:1];
        v15 = [NSSortDescriptor alloc];
        if (v8)
        {
          v16 = @"lastOpenDate";
        }

        else
        {
          v16 = @"sortKey";
        }

        v17 = [v15 initWithKey:v16 ascending:0];
        v24[0] = v17;
        v24[1] = v10;
        v24[2] = v11;
        v24[3] = v14;
        v9 = [NSArray arrayWithObjects:v24 count:4];

        goto LABEL_22;
      }

      v18 = [NSSortDescriptor alloc];
      if (v8)
      {
        v10 = [v18 initWithKey:@"lastOpenDate" ascending:0];
        v11 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
        v12 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:0];
        v26[0] = v10;
        v26[1] = v11;
        v26[2] = v12;
        v13 = v26;
      }

      else
      {
        v10 = [v18 initWithKey:@"sortKey" ascending:0];
        v11 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
        v12 = [[NSSortDescriptor alloc] initWithKey:@"seriesSortKey" ascending:1];
        v25[0] = v10;
        v25[1] = v11;
        v25[2] = v12;
        v13 = v25;
      }
    }

    else
    {
      v10 = [[NSSortDescriptor alloc] initWithKey:@"seriesSortKey" ascending:1];
      v11 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
      v12 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
      v27[0] = v10;
      v27[1] = v11;
      v27[2] = v12;
      v13 = v27;
    }

    goto LABEL_21;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v10 = [[NSSortDescriptor alloc] initWithKey:@"genre" ascending:1 selector:"localizedCaseInsensitiveCompare:"];
      v11 = [[NSSortDescriptor alloc] initWithKey:@"sortTitle" ascending:1 selector:"localizedStandardCompare:"];
      v12 = [[NSSortDescriptor alloc] initWithKey:@"assetID" ascending:1];
      v21[0] = v10;
      v21[1] = v11;
      v21[2] = v12;
      v13 = v21;
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_23;
      }

      v10 = [[NSSortDescriptor alloc] initWithKey:@"dateFinished" ascending:0];
      v11 = [[NSSortDescriptor alloc] initWithKey:@"sortTitle" ascending:1 selector:"localizedStandardCompare:"];
      v12 = [[NSSortDescriptor alloc] initWithKey:@"assetID" ascending:1];
      v20[0] = v10;
      v20[1] = v11;
      v20[2] = v12;
      v13 = v20;
    }

    goto LABEL_21;
  }

  if (a3 != 3)
  {
    v10 = [[NSSortDescriptor alloc] initWithKey:@"sortAuthor" ascending:1 selector:"localizedStandardCompare:"];
    v11 = [[NSSortDescriptor alloc] initWithKey:@"sortTitle" ascending:1 selector:"localizedStandardCompare:"];
    v12 = [[NSSortDescriptor alloc] initWithKey:@"assetID" ascending:1];
    v22[0] = v10;
    v22[1] = v11;
    v22[2] = v12;
    v13 = v22;
LABEL_21:
    v9 = [NSArray arrayWithObjects:v13 count:3];

    goto LABEL_22;
  }

  v10 = [[NSSortDescriptor alloc] initWithKey:@"sortTitle" ascending:1 selector:"localizedStandardCompare:"];
  v11 = [[NSSortDescriptor alloc] initWithKey:@"assetID" ascending:1];
  v23[0] = v10;
  v23[1] = v11;
  v9 = [NSArray arrayWithObjects:v23 count:2];
LABEL_22:

LABEL_23:

  return v9;
}

- (id)predicateForMostRecentBooksOpened
{
  v16 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v3 = [(BKLibraryManager *)self predicateForLocalLibraryAssets];
  v15 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v4 = [BKLibraryManager predicateForContentType:6];
  v19[0] = v4;
  v5 = +[BKLibraryManager predicateForExcludingUnownedAudiobookAssets];
  v19[1] = v5;
  v6 = [NSArray arrayWithObjects:v19 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  if (BLAudiobookStreamingEnabled())
  {
    v18[0] = v3;
    v18[1] = v7;
    v8 = [NSArray arrayWithObjects:v18 count:2];
    v9 = [NSCompoundPredicate orPredicateWithSubpredicates:v8];
  }

  else
  {
    v9 = v3;
  }

  v10 = [NSPredicate predicateWithFormat:@"(%K != NULL) && (%K == NULL)", @"lastOpenDate", @"expectedDate"];
  if ([(BKLibraryManager *)self isExplicitMaterialAllowed])
  {
    [NSPredicate predicateWithValue:1];
  }

  else
  {
    +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
  }
  v11 = ;
  v17[0] = v9;
  v17[1] = v16;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v15;
  v12 = [NSArray arrayWithObjects:v17 count:5];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  return v13;
}

- (id)mostRecentlyOpenedBooks:(unint64_t)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v7 setFetchLimit:a3];
  v8 = [(BKLibraryManager *)self predicateForMostRecentBooksOpened];
  [v7 setPredicate:v8];

  [v7 setReturnsObjectsAsFaults:0];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"lastOpenDate" ascending:0];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  [v7 setSortDescriptors:v10];

  v13 = 0;
  v11 = [v6 executeFetchRequest:v7 error:&v13];

  return v11;
}

- (id)mostRecentlyOpenedLibraryAssetWithTypes:(id)a3 inManagedObjectContext:(id)a4
{
  v4 = [(BKLibraryManager *)self mostRecentlyOpenedLibraryAssetsWithTypes:a3 limit:1 inManagedObjectContext:a4];
  v5 = [v4 firstObject];

  return v5;
}

- (id)mostRecentlyOpenedLibraryAssetsWithTypes:(id)a3 limit:(unint64_t)a4 inManagedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BKLibraryManager *)self predicateForMostRecentBooksOpened];
  if (v8)
  {
    v11 = [BKLibraryManager predicateForContentTypes:v8];
    v21[0] = v10;
    v21[1] = v11;
    v12 = [NSArray arrayWithObjects:v21 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

    v10 = v13;
  }

  v14 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v14 setPredicate:v10];
  [v14 setReturnsObjectsAsFaults:0];
  v15 = [[NSSortDescriptor alloc] initWithKey:@"lastOpenDate" ascending:0];
  v20 = v15;
  v16 = [NSArray arrayWithObjects:&v20 count:1];
  [v14 setSortDescriptors:v16];

  if (a4)
  {
    [v14 setFetchLimit:a4];
  }

  v19 = 0;
  v17 = [v9 executeFetchRequest:v14 error:&v19];

  return v17;
}

- (id)mostRecentlyEngagedLibraryAssetWithTypes:(id)a3 inManagedObjectContext:(id)a4
{
  v4 = [(BKLibraryManager *)self mostRecentlyEngagedLibraryAssetsWithTypes:a3 limit:1 inManagedObjectContext:a4];
  v5 = [v4 firstObject];

  return v5;
}

- (id)mostRecentlyEngagedLibraryAssetsWithTypes:(id)a3 limit:(unint64_t)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[BKLibraryManager _recentlyEngagedPredicate];
  if (v7)
  {
    v10 = [BKLibraryManager predicateForContentTypes:v7];
    v20[0] = v9;
    v20[1] = v10;
    v11 = [NSArray arrayWithObjects:v20 count:2];
    v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

    v9 = v12;
  }

  v13 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v13 setPredicate:v9];
  [v13 setReturnsObjectsAsFaults:0];
  v14 = [[NSSortDescriptor alloc] initWithKey:@"lastEngagedDate" ascending:0];
  v19 = v14;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  [v13 setSortDescriptors:v15];

  if (a4)
  {
    [v13 setFetchLimit:a4];
  }

  v18 = 0;
  v16 = [v8 executeFetchRequest:v13 error:&v18];

  return v16;
}

- (id)libraryAssetsAsDictionaryWithProperties:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_83E0;
  v19 = sub_83F0;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_29188;
  v10[3] = &unk_D6348;
  v14 = &v15;
  v6 = v4;
  v11 = v6;
  v12 = self;
  v7 = v5;
  v13 = v7;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

- (id)predicateFor_AllBooks_LibraryAssets
{
  v3 = +[NSMutableArray array];
  v4 = +[BKLibraryManager _predicateForBooksShownInAllBooks];
  [v3 addObject:v4];

  v5 = +[BKLibraryManager predicateForAllBooksExceptSeriesLibraryAssets];
  [v3 addObject:v5];

  if (![(BKLibraryManager *)self isExplicitMaterialAllowed])
  {
    v6 = +[BKLibraryManager predicateToExcludeLibraryAssetsAndContainersWithExplicitContent];
    [v3 addObject:v6];
  }

  v7 = +[BKLibraryManager excludeEphemeralAssetsPredicate];
  [v3 addObject:v7];

  v8 = [objc_opt_class() predicateToExcludeAudiobookSupplementalContent];
  [v3 addObject:v8];

  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v3];

  return v9;
}

- (id)predicateFor_AllAudioBooks_LibraryAssets
{
  v3 = [objc_opt_class() predicateForContentType:6];
  v8[0] = v3;
  v4 = [(BKLibraryManager *)self predicateFor_AllBooks_LibraryAssets];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v6;
}

- (id)predicateFor_All_PDFs_LibraryAssets
{
  v3 = [objc_opt_class() predicateForContentType:3];
  v8[0] = v3;
  v4 = [(BKLibraryManager *)self predicateFor_AllBooks_LibraryAssets];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateFor_All_Finished_LibraryAssets
{
  v3 = [a1 defaultManager];
  v4 = [v3 isExplicitMaterialAllowed];

  return [a1 predicateFor_All_Finished_LibraryAssetsAllowsExplicit:v4];
}

+ (id)predicateFor_All_Finished_LibraryAssetsAllowsExplicit:(BOOL)a3
{
  v5 = +[NSMutableArray array];
  LODWORD(v6) = kAEAnnotationReadingLocationSignificantHighwaterMark;
  v7 = [NSNumber numberWithFloat:v6];
  v8 = [NSPredicate predicateWithFormat:@"isFinished == YES OR (bookHighWaterMarkProgress >= %@ AND (notFinished == NULL OR notFinished == NO) OR (dateFinished != NULL))", v7];
  [v5 addObject:v8];

  if (!a3)
  {
    v9 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    [v5 addObject:v9];
  }

  v10 = [a1 predicateToExcludeAudiobookSupplementalContent];
  [v5 addObject:v10];

  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v11;
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets
{
  v3 = [a1 defaultManager];
  v4 = [v3 isExplicitMaterialAllowed];

  return [a1 predicateFor_All_Marked_As_Finished_LibraryAssetsAllowsExplicit:v4];
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssetsAllowsExplicit:(BOOL)a3
{
  v5 = +[NSMutableArray array];
  v6 = [NSPredicate predicateWithFormat:@"isFinished == YES"];
  [v5 addObject:v6];

  if (!a3)
  {
    v7 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    [v5 addObject:v7];
  }

  v8 = [a1 predicateToExcludeAudiobookSupplementalContent];
  [v5 addObject:v8];

  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v9;
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_In_Year:(int64_t)a3
{
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v20 = [BKLibraryManager _dateComponentsForYear:a3];
  v19 = [v4 dateFromComponents:v20];
  [v20 setYear:a3 + 1];
  v18 = [v4 dateFromComponents:v20];
  v15 = [NSPredicate predicateWithFormat:@"dateFinished >= %@ AND dateFinished < %@ AND finishedDateKind != %i", v19, v18, 2];
  v5 = [BKLibraryManager _dateComponentsForYear:a3];
  v6 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v6];

  v16 = [v4 dateFromComponents:v5];
  [v5 setYear:a3 + 1];
  v7 = [v4 dateFromComponents:v5];
  v8 = [NSPredicate predicateWithFormat:@"dateFinished >= %@ AND dateFinished < %@ AND finishedDateKind == %i", v16, v7, 2];
  v22[0] = v15;
  v22[1] = v8;
  v9 = [NSArray arrayWithObjects:v22 count:2];
  v10 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];

  v21[0] = v10;
  v11 = [a1 predicateFor_All_Marked_As_Finished_LibraryAssets];
  v21[1] = v11;
  v12 = [NSArray arrayWithObjects:v21 count:2];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  return v13;
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_Prior_To_Year:(int64_t)a3
{
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v19 = [BKLibraryManager _dateComponentsForYear:a3];
  v18 = [v5 dateFromComponents:v19];
  v6 = +[NSDate distantPast];
  v7 = [NSPredicate predicateWithFormat:@"dateFinished < %@ AND dateFinished > %@ AND finishedDateKind != %i", v18, v6, 2];

  v8 = [BKLibraryManager _dateComponentsForYear:a3];
  v9 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v8 setTimeZone:v9];

  v10 = [v5 dateFromComponents:v8];
  v11 = [NSPredicate predicateWithFormat:@"dateFinished < %@ AND finishedDateKind == %i", v10, 2];
  v21[0] = v7;
  v21[1] = v11;
  v12 = [NSArray arrayWithObjects:v21 count:2];
  v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v12];

  v20[0] = v13;
  v14 = [a1 predicateFor_All_Marked_As_Finished_LibraryAssets];
  v20[1] = v14;
  v15 = [NSArray arrayWithObjects:v20 count:2];
  v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];

  return v16;
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_After_Year:(int64_t)a3
{
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v18 = [BKLibraryManager _dateComponentsForYear:a3 + 1];
  v17 = [v5 dateFromComponents:v18];
  v6 = [NSPredicate predicateWithFormat:@"dateFinished >= %@ AND finishedDateKind != %i", v17, 2];
  v7 = [BKLibraryManager _dateComponentsForYear:a3 + 1];
  v8 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v7 setTimeZone:v8];

  v9 = [v5 dateFromComponents:v7];
  v10 = [NSPredicate predicateWithFormat:@"dateFinished >= %@ AND finishedDateKind == %i", v9, 2];
  v20[0] = v6;
  v20[1] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:2];
  v12 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];

  v19[0] = v12;
  v13 = [a1 predicateFor_All_Marked_As_Finished_LibraryAssets];
  v19[1] = v13;
  v14 = [NSArray arrayWithObjects:v19 count:2];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  return v15;
}

+ (id)_dateComponentsForYear:(int64_t)a3
{
  v4 = +[NSTimeZone systemTimeZone];
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setYear:a3];
  [v5 setDay:1];
  [v5 setMonth:1];
  [v5 setTimeZone:v4];

  return v5;
}

+ (id)predicateToExcludeAllFinishedLibraryAssets
{
  LODWORD(v2) = kAEAnnotationReadingLocationSignificantHighwaterMark;
  v3 = [NSNumber numberWithFloat:v2];
  v4 = [NSPredicate predicateWithFormat:@"(isFinished == NULL OR isFinished == NO) AND ((bookHighWaterMarkProgress == NULL OR bookHighWaterMarkProgress < %@) OR notFinished == YES) AND (dateFinished == NULL)", v3];

  return v4;
}

+ (id)predicateToExcludeCollectionMembersForSeriesAndStoreItemsNotAddedToCollections
{
  v2 = [a1 predicateToExcludeCollectionMembersForSeriesAndStoreItems];
  v9[0] = v2;
  v8[0] = kBKCollectionDefaultAll;
  v8[1] = kBKCollectionDefaultIDBooks;
  v8[2] = kBKCollectionDefaultIDAudiobooks;
  v3 = [NSArray arrayWithObjects:v8 count:3];
  v4 = [NSPredicate predicateWithFormat:@"SUBQUERY(asset.collectionMembers, $collectionMember, NOT $collectionMember.collection.collectionID IN %@).@count > 0", v3];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateToExcludeCollectionMembersForUnpurchasedItemsInCollection:(id)a3
{
  v3 = kBKCollectionDefaultIDAudiobooks;
  v4 = [a3 isEqualToString:kBKCollectionDefaultIDAudiobooks];
  if (v4)
  {
    v5 = kBKCollectionDefaultIDBooks;
  }

  else
  {
    v5 = v3;
  }

  v6 = [BKCollection contentTypesForDefaultCollectionWithID:v5];
  v7 = [NSNumber numberWithBool:v4];
  v8 = [NSPredicate predicateWithFormat:@"(asset.%K = NULL OR asset.%K = 0) AND !(asset.%K IN %@) AND (asset.%K != %@ AND (asset.%K != %@ OR (asset.%K == %@ AND asset.seriesBooks.@count > 1 AND ANY asset.seriesBooks.%K == %@)))", @"isSample", @"isSample", @"contentType", v6, @"state", &off_DDF70, @"state", &off_DDF58, @"contentType", &off_DDF58, @"isStoreAudiobook", v7];

  return v8;
}

- (id)validLibraryAssetIDsOnMainQueueWithAssetIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    v6 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", v4];
    [v5 setPredicate:v6];

    [v5 setResultType:2];
    v13 = @"assetID";
    v7 = [NSArray arrayWithObjects:&v13 count:1];
    [v5 setPropertiesToFetch:v7];

    v8 = [(BKLibraryManager *)self uiChildContext];
    v12 = 0;
    v9 = [v8 executeFetchRequest:v5 error:&v12];

    v10 = [v9 valueForKeyPath:@"assetID"];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)libraryAssetOnMainQueueWithAssetID:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_8EDDC();
  }

  v5 = [(BKLibraryManager *)self uiChildContext];
  v6 = [(BKLibraryManager *)self libraryAssetWithAssetID:v4 inManagedObjectContext:v5];

  return v6;
}

- (id)libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_8EE18();
  }

  v5 = [(BKLibraryManager *)self uiChildContext];
  v6 = [(BKLibraryManager *)self libraryAssetWithPermanentOrTemporaryAssetID:v4 inManagedObjectContext:v5];

  return v6;
}

- (id)libraryAssetOnMainQueueWithAssetIdentifier:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_8EE54();
  }

  v5 = [(BKLibraryManager *)self uiChildContext];
  v6 = [(BKLibraryManager *)self libraryAssetWithAssetIdentifier:v4 inManagedObjectContext:v5];

  return v6;
}

- (id)libraryAssetOnMainQueueWithStoreID:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_8EE90();
  }

  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"storeID", v4];
  v6 = [(BKLibraryManager *)self uiChildContext];
  v7 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v4 predicate:v5 inManagedObjectContext:v6];

  return v7;
}

- (id)libraryAssetOnMainQueueWithEpubID:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_8EECC();
  }

  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"epubID", v4];
  v6 = [(BKLibraryManager *)self uiChildContext];
  v7 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v4 predicate:v5 inManagedObjectContext:v6];

  return v7;
}

- (id)libraryAssetOnMainQueueWithFilename:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_8EF08();
  }

  v5 = [NSPredicate predicateWithFormat:@"%K CONTAINS %@", @"path", v4];
  v6 = [(BKLibraryManager *)self uiChildContext];
  v7 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v4 predicate:v5 inManagedObjectContext:v6];

  return v7;
}

- (id)libraryAssetWithAssetID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [BKLibraryManager predicateForAssetIDTaggedLibraryAsset:v7];
  v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v7 predicate:v8 inManagedObjectContext:v6];

  return v9;
}

- (id)libraryAssetsWithAssetIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v7 setReturnsObjectsAsFaults:0];
  v8 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", v5];
  [v7 setPredicate:v8];

  v13 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v13];

  v10 = v13;
  if (v10)
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8EF44();
    }
  }

  return v9;
}

- (id)spotlightAssetsWithContentTypes:(id)a3 searchQueryString:(id)a4 inManagedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableArray);
  +[NSMutableArray array];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_2AFDC;
  v12 = v39[3] = &unk_D6370;
  v40 = v12;
  v30 = v8;
  [v8 enumerateObjectsUsingBlock:v39];
  v28 = v12;
  [v12 componentsJoinedByString:@" || "];
  v27 = v29 = v9;
  v26 = [NSString stringWithFormat:@"(%@) && (%@)", v27, v9];
  v13 = [[CSSearchQuery alloc] initWithQueryString:v26 attributes:&off_DE198];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_2B074;
  v37[3] = &unk_D6398;
  v14 = objc_alloc_init(NSMutableArray);
  v38 = v14;
  [v13 setFoundItemsHandler:v37];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_2B194;
  v35[3] = &unk_D63C0;
  v15 = dispatch_semaphore_create(0);
  v36 = v15;
  [v13 setCompletionHandler:v35];
  v25 = v13;
  [v13 start];
  v24 = v15;
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [BKAssetID identifierWithAssetID:*(*(&v31 + 1) + 8 * i)];
        v22 = [(BKLibraryManager *)self libraryAssetWithAssetIdentifier:v21 inManagedObjectContext:v10];

        if (v22)
        {
          [v11 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v18);
  }

  return v11;
}

- (id)libraryAssetWithTemporaryAssetID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [BKLibraryManager predicateForTemporaryAssetIDTaggedLibraryAsset:v7];
  v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v7 predicate:v8 inManagedObjectContext:v6];

  return v9;
}

- (id)libraryAssetWithPermanentOrTemporaryAssetID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [BKLibraryManager predicateForPermanentOrTemporaryAssetIDTaggedLibraryAsset:v7];
  v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v7 predicate:v8 inManagedObjectContext:v6];

  return v9;
}

- (id)libraryAssetWithAssetIdentifier:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 permanentOrTemporaryAssetID];
  v9 = [BKLibraryManager predicateForAssetIdentifierTaggedLibraryAsset:v7];

  v10 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v8 predicate:v9 inManagedObjectContext:v6];

  return v10;
}

- (id)p_libraryAssetWithIdentifier:(id)a3 predicate:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  if (v7)
  {
    v8 = a5;
    v9 = a4;
    v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v10 setReturnsObjectsAsFaults:0];
    [v10 setFetchLimit:1];
    [v10 setPredicate:v9];

    v16 = 0;
    v11 = [v8 executeFetchRequest:v10 error:&v16];

    v12 = v16;
    if (v11)
    {
      v13 = [v11 lastObject];
    }

    else
    {
      v14 = BKLibraryLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_8EFAC();
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)libraryMutableAssetWithAssetID:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v7 setReturnsObjectsAsFaults:0];
    [v7 setFetchLimit:1];
    v20 = v5;
    v8 = [NSArray arrayWithObjects:&v20 count:1];
    v9 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:v8];
    [v7 setPredicate:v9];

    v15 = 0;
    v10 = [v6 executeFetchRequest:v7 error:&v15];
    v11 = v15;
    if (v10)
    {
      v12 = [v10 lastObject];
    }

    else
    {
      v13 = BKLibraryLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed to fetch LibraryAsset with AssetID {%@}{%@}", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8F014();
    }

    v12 = 0;
  }

  return v12;
}

- (id)libraryMutableAssetWithPermanentOrTemporaryAssetID:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v7 setReturnsObjectsAsFaults:0];
    [v7 setFetchLimit:1];
    v8 = [BKLibraryManager predicateForPermanentOrTemporaryAssetIDTaggedLibraryAsset:v5];
    [v7 setPredicate:v8];

    v14 = 0;
    v9 = [v6 executeFetchRequest:v7 error:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = [v9 lastObject];
    }

    else
    {
      v12 = BKLibraryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Failed to fetch LibraryAsset with temporaryAssetID {%@}{%@}", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8F014();
    }

    v11 = 0;
  }

  return v11;
}

- (id)libraryMutableAssetWithAssetIdentifier:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v7 setReturnsObjectsAsFaults:0];
    [v7 setFetchLimit:1];
    v8 = [BKLibraryManager predicateForAssetIdentifierTaggedLibraryAsset:v5];
    [v7 setPredicate:v8];

    v14 = 0;
    v9 = [v6 executeFetchRequest:v7 error:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = [v9 lastObject];
    }

    else
    {
      v12 = BKLibraryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Failed to fetch LibraryAsset with assetIdentifier {%@}{%@}", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8F050();
    }

    v11 = 0;
  }

  return v11;
}

+ (id)predicateForAssetIdentifierTaggedLibraryAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 permanentOrTemporaryAssetID];
  v5 = [v3 permanentOrTemporaryAssetID];

  v6 = [NSPredicate predicateWithFormat:@"%K = %@ OR %K = %@", @"assetID", v4, @"temporaryAssetID", v5];

  return v6;
}

- (id)predicateForLibraryAssetsWithSeriesID:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryManager *)self isExplicitMaterialAllowed];
  v6 = [NSPredicate predicateWithFormat:@"%K = %@ AND (%K = NULL OR %K != %@)", @"seriesID", v4, @"state", @"contentType", &off_DDF58];

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v11[0] = v6;
    v8 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    v11[1] = v8;
    v9 = [NSArray arrayWithObjects:v11 count:2];
    v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  }

  return v7;
}

+ (id)predicateForLibraryAssetsMarkedAsNew
{
  v2 = +[NSNull null];
  v3 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %@ OR %K == %@)", @"isNew", &__kCFBooleanTrue, @"isSample", v2, @"isSample", &__kCFBooleanFalse];

  return v3;
}

+ (id)predicateForAllStoreLibraryAssets
{
  v2 = [NSPredicate predicateWithFormat:@"%K != NULL", @"storeID"];
  v7[0] = v2;
  v3 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  return v5;
}

+ (id)predicateForAllStoreLibraryAssetsExcludingUnpurchasedSeriesAssets
{
  v2 = [NSPredicate predicateWithFormat:@"%K != NULL AND %K != %@ AND isSample == NO", @"storeID", @"state", &off_DDF58];
  v7[0] = v2;
  v3 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  return v5;
}

+ (id)predicateForPurchasedLibraryAssets
{
  v3 = [NSPredicate predicateWithFormat:@"%K != NULL AND %K != %@ AND isSample == NO AND %K != NULL", @"storeID", @"state", &off_DDF58, @"purchaseDate"];
  v8[0] = v3;
  v4 = [a1 predicateToExcludeAudiobookSupplementalContent];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateForBooksShownInAllBooks
{
  v2 = [a1 _predicateForBooksShownInAllBooks];
  v7[0] = v2;
  v3 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  return v5;
}

+ (id)predicateForContentWithHighWaterMarkOrReadingProgressValue:(double)a3
{
  v4 = [NSNumber numberWithDouble:?];
  v5 = [NSNumber numberWithDouble:a3];
  v6 = [NSPredicate predicateWithFormat:@"(%K >= %@ OR %K >= %@)", @"bookHighWaterMarkProgress", v4, @"readingProgress", v5];

  return v6;
}

+ (id)predicateForLastOpenedDateAfter:(id)a3
{
  if (a3)
  {
    v4 = [NSPredicate predicateWithFormat:@"(%K >= %@)", @"lastOpenDate", a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)numberOfLibraryAssetsInManagdObjectContext:(id)a3
{
  v3 = a3;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v5 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
  v15[0] = v5;
  v6 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v15[1] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  [v4 setPredicate:v8];

  [v4 setResultType:4];
  v14 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v14];

  v10 = v14;
  if (v9)
  {
    v11 = [v9 lastObject];
    v12 = [v11 unsignedIntegerValue];
  }

  else
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8F08C();
    }

    v12 = 0;
  }

  return v12;
}

+ (id)predicateForAssetsAvailableToAppIntentsWithTypes:(id)a3
{
  v3 = a3;
  if (![v3 count])
  {

    v3 = &off_DE1B0;
  }

  v4 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
  v30[0] = v4;
  v5 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v30[1] = v5;
  v6 = [NSArray arrayWithObjects:v30 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  v8 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v9 = [BKLibraryManager _predicateForAssetsWithContentTypes:v3];
  v10 = [NSMutableArray arrayWithObjects:v8, v9, 0];

  v11 = [NSMutableArray arrayWithObject:v7];
  if ([v3 containsObject:&off_DDF88])
  {
    v12 = [BKLibraryManager predicateForAssetsInCollectionID:kBKCollectionDefaultIDSamples allowExplicit:1 includeSeriesItems:0];
    v28 = &off_DDF88;
    v29[0] = v12;
    v13 = [NSArray arrayWithObjects:&v28 count:1];
    v14 = [BKLibraryManager predicateForContentTypes:v13];
    v29[1] = v14;
    v15 = [NSArray arrayWithObjects:v29 count:2];
    v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];

    [v11 addObject:v16];
  }

  v17 = +[BKLibraryManager predicateForLibraryAssetWithValidAssetID];
  [v10 addObject:v17];

  v18 = [NSPredicate predicateWithFormat:@"%K != NULL AND %K != %@", @"title", @"title", &stru_D8298];
  [v10 addObject:v18];
  v19 = +[BURestrictionsProvider sharedInstance];
  v20 = [v19 isExplicitContentAllowed];

  if ((v20 & 1) == 0)
  {
    v21 = +[BKLibraryManager predicateToExcludeAssetsWithExplicitContent];
    [v10 addObject:v21];
  }

  v22 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];
  v23 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
  v27[0] = v23;
  v27[1] = v22;
  v24 = [NSArray arrayWithObjects:v27 count:2];
  v25 = [NSCompoundPredicate andPredicateWithSubpredicates:v24];

  return v25;
}

+ (id)predicateForMatchingSearchStringLibraryAssets:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [NSPredicate predicateWithFormat:@"%K contains[cd] %@ OR %K contains[cd] %@ OR %K contains[cd] %@ OR %K CONTAINS[cd] %@", @"title", v3, @"author", v3, @"genre", v3, @"localOnlySeriesItemsParent.title", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)predicateForLibraryAssetsNotMarkedAsOld
{
  v2 = +[NSNull null];
  v3 = +[NSNull null];
  v4 = [NSPredicate predicateWithFormat:@"((%K == %@) OR (%K == %@)) AND (%K == %@ OR %K == %@)", @"isNew", v2, @"isNew", &__kCFBooleanTrue, @"isSample", v3, @"isSample", &__kCFBooleanFalse];

  return v4;
}

+ (id)predicateForHighWaterMarkCapableLibraryAssets
{
  v3 = [a1 predicateToExcludeUnownedLibraryAssets];
  v4 = [a1 predicateForExcludingContainerLibraryAssets];
  v9[1] = v4;
  v5 = [a1 predicateToExcludeAudiobookSupplementalContent];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];

  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)libraryAssetsWithAssetIDsContainedInList:(id)a3 tempAssetIDs:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v10 setReturnsObjectsAsFaults:0];
  [v10 setFetchBatchSize:32];
  v11 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:v7];
  [v10 setPredicate:v11];

  if (v8)
  {
    v12 = [v10 predicate];
    v21[0] = v12;
    v13 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:v8];
    v21[1] = v13;
    v14 = [NSArray arrayWithObjects:v21 count:2];
    v15 = [NSCompoundPredicate orPredicateWithSubpredicates:v14];
    [v10 setPredicate:v15];
  }

  v20 = 0;
  v16 = [v9 executeFetchRequest:v10 error:&v20];
  v17 = v20;
  if (!v16)
  {
    v18 = BKLibraryLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_8F0F4();
    }
  }

  return v16;
}

+ (id)newestSeriesBookWithBasePredicate:(id)a3 forBook:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 seriesID];
  v8 = [v7 length];

  if (v8)
  {
    v27[0] = v5;
    v9 = +[BKLibraryManager defaultManager];
    v10 = [v6 seriesID];
    v11 = [v9 predicateForLibraryAssetsWithSeriesID:v10];
    v27[1] = v11;
    v12 = +[BKLibraryManager predicateForLibraryAssetsMarkedAsNew];
    v27[2] = v12;
    v13 = [NSArray arrayWithObjects:v27 count:3];
    v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];

    v15 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v26[0] = v15;
    v16 = [NSSortDescriptor sortDescriptorWithKey:@"seriesSortKey" ascending:0];
    v26[1] = v16;
    v17 = [NSArray arrayWithObjects:v26 count:2];

    v18 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v18 setPredicate:v14];
    [v18 setFetchLimit:1];
    [v18 setSortDescriptors:v17];
    [v18 setReturnsObjectsAsFaults:0];
    v19 = [v6 managedObjectContext];
    v25 = 0;
    v20 = [v19 executeFetchRequest:v18 error:&v25];
    v21 = v25;

    if (!v20 || ![v20 count])
    {
      v22 = BKLibraryLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_8F15C();
      }
    }

    if ([v20 count])
    {
      v23 = [v20 objectAtIndex:0];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)mostRecentlyOpenedSeriesBookWithBasePredicate:(id)a3 forBook:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 seriesID];
  v8 = [v7 length];

  if (v8)
  {
    v27[0] = v5;
    v9 = +[BKLibraryManager defaultManager];
    v10 = [v6 seriesID];
    v11 = [v9 predicateForLibraryAssetsWithSeriesID:v10];
    v27[1] = v11;
    v12 = [NSArray arrayWithObjects:v27 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

    v14 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenDate" ascending:0];
    v26[0] = v14;
    v15 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v26[1] = v15;
    v16 = [NSSortDescriptor sortDescriptorWithKey:@"seriesSortKey" ascending:0];
    v26[2] = v16;
    v17 = [NSArray arrayWithObjects:v26 count:3];

    v18 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v18 setPredicate:v13];
    [v18 setFetchLimit:1];
    [v18 setSortDescriptors:v17];
    [v18 setReturnsObjectsAsFaults:0];
    v19 = [v6 managedObjectContext];
    v25 = 0;
    v20 = [v19 executeFetchRequest:v18 error:&v25];
    v21 = v25;

    if (!v20 || ![v20 count])
    {
      v22 = BKLibraryLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_8F15C();
      }
    }

    if ([v20 count])
    {
      v23 = [v20 objectAtIndex:0];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)predicateForSeriesBooksIncludingNextForID:(id)a3 includeAllBooksInSeries:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(BKLibraryManager *)self usePerformancePredicates]|| v4)
  {
    v14 = [(BKLibraryManager *)self predicateForAllBooksWithSeriesID:v6];
  }

  else
  {
    v7 = [(BKLibraryManager *)self predicateForAllBooksWithSeriesID:v6];
    v17[0] = v7;
    v8 = +[BKLibraryManager predicateForNextInSeriesLibraryAssets];
    v17[1] = v8;
    v9 = [NSArray arrayWithObjects:v17 count:2];
    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

    v11 = [(BKLibraryManager *)self predicateForLocalBooksWithSeriesID:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained isStoreAllowed])
    {
      v16[0] = v10;
      v16[1] = v11;
      v13 = [NSArray arrayWithObjects:v16 count:2];
      v14 = [NSCompoundPredicate orPredicateWithSubpredicates:v13];
    }

    else
    {
      v14 = v11;
    }
  }

  return v14;
}

- (id)seriesAuthorForContainerID:(id)a3 context:(id)a4
{
  v4 = [(BKLibraryManager *)self _rawSeriesAuthorForContainerID:a3 context:a4];
  if ([v4 isEqualToString:@"MultipleAuthors"])
  {
    v5 = +[BKLibraryAsset multipleAuthors];

    v4 = v5;
  }

  return v4;
}

- (id)_rawSeriesAuthorForContainerID:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryManager *)self _predicateForBooksInSeriesWithCorrectAuthorInfo:v7];

  [v8 setPredicate:v9];
  [v8 setResultType:2];
  v21 = @"author";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  [v8 setPropertiesToFetch:v10];

  v20 = @"author";
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  [v8 setPropertiesToGroupBy:v11];

  v19 = 0;
  v12 = [v6 executeFetchRequest:v8 error:&v19];

  v13 = v19;
  if (!v12)
  {
    v17 = v8;
    v18 = v13;
    BCReportAssertionFailureWithMessage();
  }

  if ([v12 count] == &dword_0 + 1)
  {
    v14 = [v12 lastObject];
    v15 = [v14 valueForKey:@"author"];
  }

  else if ([v12 count] <= 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = @"MultipleAuthors";
  }

  return v15;
}

- (id)_rawSeriesSortAuthorForContainerID:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryManager *)self _predicateForBooksInSeriesWithCorrectSortAuthorInfo:v7];

  [v8 setPredicate:v9];
  [v8 setResultType:2];
  v21 = @"sortAuthor";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  [v8 setPropertiesToFetch:v10];

  v20 = @"sortAuthor";
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  [v8 setPropertiesToGroupBy:v11];

  v19 = 0;
  v12 = [v6 executeFetchRequest:v8 error:&v19];

  v13 = v19;
  if (!v12)
  {
    v17 = v8;
    v18 = v13;
    BCReportAssertionFailureWithMessage();
  }

  if ([v12 count] == &dword_0 + 1)
  {
    v14 = [v12 lastObject];
    v15 = [v14 valueForKey:@"sortAuthor"];
  }

  else if ([v12 count] <= 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = @"MultipleAuthors";
  }

  return v15;
}

- (id)localSeriesBooksForSeriesID:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryManager *)self predicateForLocalBooksWithSeriesID:v7];

  [v8 setPredicate:v9];
  [v8 setReturnsObjectsAsFaults:0];
  v12 = 0;
  v10 = [v6 executeFetchRequest:v8 error:&v12];

  return v10;
}

+ (BOOL)hasAnySeriesStackBooksWithBasePredicate:(id)a3 forBook:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 seriesID];
  v8 = [v7 length];

  if (v8)
  {
    v19[0] = v5;
    v9 = +[BKLibraryManager defaultManager];
    v10 = [v6 seriesID];
    v11 = [v9 predicateForLibraryAssetsWithSeriesID:v10];
    v19[1] = v11;
    v12 = [NSArray arrayWithObjects:v19 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

    v14 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v14 setPredicate:v13];
    [v14 setFetchLimit:1];
    [v14 setSortDescriptors:0];
    [v14 setReturnsObjectsAsFaults:1];
    v15 = [v6 managedObjectContext];
    v18 = 0;
    v8 = [v15 executeFetchRequest:v14 error:&v18];
  }

  v16 = [v8 count] != 0;

  return v16;
}

- (id)contentPredicateForSeriesID:(id)a3 onlyPurchased:(BOOL)a4 forceCloud:(BOOL)a5 allowsExplicit:(BOOL)a6
{
  v8 = a4;
  v44 = a3;
  v10 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:?];
  v51[0] = v10;
  v11 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v51[1] = v11;
  v12 = [NSArray arrayWithObjects:v51 count:2];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  if (v8 && ![(BKLibraryManager *)self usePerformancePredicates])
  {
    v15 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
    v50[0] = v13;
    v50[1] = v15;
    v16 = [NSArray arrayWithObjects:v50 count:2];
    v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v16) = [WeakRetained isShowPurchasesEnabled];

    if ((v16 & 1) != 0 || a5)
    {
      v14 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
    }

    else
    {
      v49[0] = v17;
      v19 = +[BKLibraryManager predicateForLocalOrDownloadingLibraryAssets];
      v49[1] = v19;
      v20 = [NSArray arrayWithObjects:v49 count:2];
      v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];

      v14 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
      v17 = v21;
    }

    v13 = v17;
  }

  else
  {
    v14 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  }

  if (!a6)
  {
    v22 = v14[358];
    v48[0] = v13;
    v23 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    v48[1] = v23;
    v24 = [NSArray arrayWithObjects:v48 count:2];
    v25 = [v22 andPredicateWithSubpredicates:v24];

    v13 = v25;
  }

  v26 = v14[358];
  v47[0] = v13;
  v27 = +[BKLibraryManager excludeEphemeralAssetsPredicate];
  v47[1] = v27;
  v28 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v47[2] = v28;
  v29 = [NSArray arrayWithObjects:v47 count:3];
  v30 = [v26 andPredicateWithSubpredicates:v29];

  v31 = objc_loadWeakRetained(&self->_delegate);
  v32 = [v31 isStoreAllowed];

  if (v32)
  {
    v33 = v14[358];
    v34 = +[BKLibraryManager predicateForNextInSeriesLibraryAssets];
    v46[0] = v34;
    v35 = +[BKLibraryManager defaultManager];
    v36 = v44;
    v37 = [v35 predicateForLibraryAssetsWithSeriesID:v44];
    v46[1] = v37;
    v38 = [NSArray arrayWithObjects:v46 count:2];
    v39 = [v33 andPredicateWithSubpredicates:v38];

    v40 = v14[358];
    v45[0] = v30;
    v45[1] = v39;
    v41 = [NSArray arrayWithObjects:v45 count:2];
    v42 = [v40 orPredicateWithSubpredicates:v41];

    v30 = v42;
  }

  else
  {
    v36 = v44;
  }

  return v30;
}

+ (id)seriesStackBooksForBook:(id)a3
{
  v3 = a3;
  v4 = [NSMutableArray arrayWithCapacity:5];
  v5 = [v3 seriesBooks];
  if (![v5 count])
  {
    goto LABEL_47;
  }

  v50 = v4;
  v51 = v3;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v49 = v5;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v7)
  {
    v9 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    goto LABEL_35;
  }

  v8 = v7;
  v9 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v10 = *v58;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v58 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v57 + 1) + 8 * i);
      if (![v12 isValid])
      {
        continue;
      }

      if ([v12 state] != 5 && objc_msgSend(v12, "state") != 6)
      {
        if ([v12 isNew])
        {
          if (!v52 || ([v52 purchaseDate], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "purchaseDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "compare:", v14), v14, v13, v15 == -1))
          {
            v16 = v12;

            v52 = v16;
          }
        }

        v17 = [v12 lastOpenDate];
        if (v17)
        {
          v18 = v17;
          if (!v53)
          {

LABEL_19:
            v22 = v12;

            v53 = v22;
            goto LABEL_20;
          }

          v19 = [v53 lastOpenDate];
          v20 = [v12 lastOpenDate];
          v21 = [v19 compare:v20];

          if (v21 == -1)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_20:
      if ([v12 state] != 6 || (objc_msgSend(v12, "creationDate"), (v23 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_24:
        if (!v9)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      v24 = v23;
      if (v54)
      {
        v25 = [v54 creationDate];
        v26 = [v12 creationDate];
        v27 = [v25 compare:v26];

        if (v27 != -1)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      v33 = v12;

      v54 = v33;
      if (!v9)
      {
        goto LABEL_30;
      }

LABEL_25:
      v28 = [v12 seriesSortKey];
      if (v28)
      {
        v29 = v28;
        v30 = [v9 seriesSortKey];
        v31 = [v12 seriesSortKey];
        v32 = [v30 compare:v31];

        if (v32 == &dword_0 + 1)
        {
LABEL_30:
          v34 = v12;

          v9 = v34;
          continue;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v57 objects:v62 count:16];
  }

  while (v8);
LABEL_35:

  v35 = v53;
  if (!v53)
  {
    v35 = v9;
  }

  if (v52)
  {
    v35 = v52;
  }

  v36 = v35;
  v37 = [NSSortDescriptor sortDescriptorWithKey:@"seriesSortKey" ascending:1];
  v61[0] = v37;
  v38 = [NSSortDescriptor sortDescriptorWithKey:@"sequenceDisplayName" ascending:1];
  v61[1] = v38;
  v39 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:1];
  v61[2] = v39;
  v40 = [NSArray arrayWithObjects:v61 count:3];
  v41 = [v6 sortedArrayUsingDescriptors:v40];

  v42 = [v41 indexOfObjectIdenticalTo:v36];
  v43 = [v41 subarrayWithRange:{v42, objc_msgSend(v41, "count") - v42}];
  [v50 addObjectsFromArray:v43];
  v44 = [v41 subarrayWithRange:{0, v42}];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_2F574;
  v55[3] = &unk_D63E8;
  v4 = v50;
  v56 = v4;
  [v44 enumerateObjectsWithOptions:2 usingBlock:v55];
  if ([v36 isFinished])
  {
    [v4 removeObjectAtIndex:0];
    [v4 addObject:v36];
  }

  v3 = v51;
  if ([v4 count] >= 6)
  {
    v45 = [v4 subarrayWithRange:{0, 5}];
    v46 = [v45 mutableCopy];

    v4 = v46;
    v5 = v49;
  }

  else
  {
    v47 = [v4 count];
    v5 = v49;
    if (v47 == &dword_0 + 1)
    {
      [v4 addObject:v36];
    }
  }

LABEL_47:

  return v4;
}

- (id)storeIDsForDownloadingBooks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_83E0;
  v11 = sub_83F0;
  v12 = +[NSMutableArray array];
  v3 = [(BKLibraryManager *)self workerChildContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2F6B4;
  v6[3] = &unk_D6410;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)localNonSampleLibraryAssetStoreSummariesExcludeAudiobooks:(BOOL)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2F928;
  v6[3] = &unk_D6280;
  v9 = a3;
  v7 = self;
  v8 = objc_opt_new();
  v3 = v8;
  [(BKLibraryManager *)v7 performBackgroundReadOnlyBlockAndWait:v6];
  v4 = [v3 copy];

  return v4;
}

- (void)fetchLibraryAssetFromStoreID:(id)a3 handler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2FD50;
  v8[3] = &unk_D6098;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v8];
}

- (void)fetchLibraryAssetFromAssetID:(id)a3 handler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2FF38;
  v8[3] = &unk_D6098;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v8];
}

- (void)fetchLibraryAssetsFromStoreIDs:(id)a3 handler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_30120;
  v8[3] = &unk_D6098;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v8];
}

- (void)fetchLibraryAssetsFromAssetIDs:(id)a3 handler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_302DC;
  v8[3] = &unk_D6098;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v8];
}

- (void)allUnownedStoreAssetIDs:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_30470;
  v4[3] = &unk_D6098;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKLibraryManager *)v5 performBackgroundReadOnlyBlock:v4];
}

- (void)allUnownedIDs:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_30770;
  v4[3] = &unk_D6098;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKLibraryManager *)v5 performBackgroundReadOnlyBlock:v4];
}

+ (id)searchFetchRequestWithText:(id)a3 entityType:(int64_t)a4
{
  v5 = a3;
  v6 = +[BKLibraryManager defaultManager];
  v7 = [[NSMutableArray alloc] initWithCapacity:6];
  v8 = [v6 _predicateForSearchText:v5];

  [v7 addObject:v8];
  v9 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  [v7 addObject:v9];

  v10 = +[BKLibraryManager predicateToExcludeAssetsWithSeriesContainersWithNoOwnedBooks];
  [v7 addObject:v10];

  v11 = +[BKLibraryManager predicateToExcludeAssetsForSeriesAndStoreItemsNotAddedToCollections];
  [v7 addObject:v11];

  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v12 = [BKLibraryManager predicateForNotContentTypes:&off_DE1C8];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_13;
      }

      v12 = [BKLibraryManager predicateForContentType:6];
    }

    goto LABEL_11;
  }

  if (a4 == 3)
  {
    v12 = +[BKLibraryManager predicateForContainerLibraryAssets];
LABEL_11:
    v13 = v12;
    [v7 addObject:v12];
    goto LABEL_12;
  }

  if (a4 != 4)
  {
    goto LABEL_13;
  }

  v13 = BKLibraryLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_8F3E8();
  }

LABEL_12:

LABEL_13:
  v14 = +[BKLibraryManager excludeEphemeralAssetsPredicate];
  [v7 addObject:v14];

  v15 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v16 = [v6 sortDescriptorsForMode:3 collectionID:kBKCollectionDefaultAll];
  [v15 setSortDescriptors:v16];

  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  [v15 setPredicate:v17];

  [v15 setReturnsObjectsAsFaults:0];

  return v15;
}

+ (id)_recentlyEngagedPredicate
{
  v2 = [NSPredicate predicateWithFormat:@"%K != NULL", @"lastEngagedDate"];
  v10[0] = v2;
  v3 = [NSPredicate predicateWithFormat:@"%K == YES", @"isTrackedAsRecent"];
  v10[1] = v3;
  v4 = +[BKLibraryManager predicateForExcludingUnownedAudiobookAssets];
  v10[2] = v4;
  v5 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v10[3] = v5;
  v6 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v10[4] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:5];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)_continueReadingPredicate
{
  v3 = +[BURestrictionsProvider sharedInstance];
  v4 = [v3 isExplicitContentAllowed];

  return [a1 _continueReadingPredicateIncludingExplicitContent:v4];
}

+ (id)_continueReadingPredicateIncludingExplicitContent:(BOOL)a3
{
  v4 = [NSPredicate predicateWithFormat:@"%K != NULL", @"lastEngagedDate"];
  v16[0] = v4;
  v5 = [NSPredicate predicateWithFormat:@"%K == YES", @"isTrackedAsRecent"];
  v16[1] = v5;
  v6 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v16[2] = v6;
  v7 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v16[3] = v7;
  v8 = [NSArray arrayWithObjects:v16 count:4];
  v9 = [v8 mutableCopy];

  if (!a3)
  {
    v10 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    [v9 addObject:v10];
  }

  if (+[BCPPTConfig usePPTLaunchContent])
  {
    [v9 removeAllObjects];
    v11 = +[BCPPTConfig shouldHaveContinueAndPreviousContent];
    v12 = &__NSArray0__struct;
    if (v11)
    {
      v12 = &off_DE210;
    }

    v13 = [NSPredicate predicateWithFormat:@"%K in %@", @"assetID", v12];
    [v9 addObject:v13];
  }

  v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  return v14;
}

+ (id)_recentlyReadPredicate
{
  v2 = [NSPredicate predicateWithFormat:@"%K != NULL", @"lastOpenDate"];
  v3 = [NSPredicate predicateWithFormat:@"%K == NO", @"isTrackedAsRecent", v2];
  v9[1] = v3;
  v4 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v9[2] = v4;
  v5 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v9[3] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:4];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)_previouslyReadPredicate
{
  v2 = [NSPredicate predicateWithFormat:@"%K != NULL", @"lastEngagedDate"];
  v3 = [NSPredicate predicateWithFormat:@"%K == NULL OR %K == NO", @"isTrackedAsRecent", @"isTrackedAsRecent", v2];
  v16[1] = v3;
  v4 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v16[2] = v4;
  v5 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v16[3] = v5;
  v6 = +[BKLibraryManager predicateToExcludeSeriesLibraryAssets];
  v16[4] = v6;
  v7 = [NSArray arrayWithObjects:v16 count:5];
  v8 = [v7 mutableCopy];

  v9 = +[BURestrictionsProvider sharedInstance];
  LOBYTE(v3) = [v9 isExplicitContentAllowed];

  if ((v3 & 1) == 0)
  {
    v10 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    [v8 addObject:v10];
  }

  if (+[BCPPTConfig usePPTLaunchContent])
  {
    [v8 removeAllObjects];
    v11 = +[BCPPTConfig shouldHaveContinueAndPreviousContent];
    v12 = &__NSArray0__struct;
    if (v11)
    {
      v12 = &off_DE210;
    }

    v13 = [NSPredicate predicateWithFormat:@"%K in %@", @"assetID", v12];
    [v8 addObject:v13];
  }

  v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];

  return v14;
}

+ (id)fetchRequestForRecentlyEngaged
{
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v4 = [[NSSortDescriptor alloc] initWithKey:@"lastEngagedDate" ascending:0];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [a1 _recentlyEngagedPredicate];
  [v3 setPredicate:v6];

  [v3 setReturnsObjectsAsFaults:0];

  return v3;
}

+ (id)fetchRequestForContinueReading
{
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v4 = [[NSSortDescriptor alloc] initWithKey:@"lastEngagedDate" ascending:0];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [a1 _continueReadingPredicate];
  [v3 setPredicate:v6];

  [v3 setReturnsObjectsAsFaults:0];

  return v3;
}

+ (id)fetchRequestForRecentlyRead
{
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v4 = [[NSSortDescriptor alloc] initWithKey:@"lastOpenDate" ascending:0];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [a1 _recentlyReadPredicate];
  [v3 setPredicate:v6];

  [v3 setReturnsObjectsAsFaults:0];

  return v3;
}

+ (id)fetchRequestForPreviouslyRead
{
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v4 = [[NSSortDescriptor alloc] initWithKey:@"lastEngagedDate" ascending:0];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [a1 _previouslyReadPredicate];
  [v3 setPredicate:v6];

  [v3 setReturnsObjectsAsFaults:0];

  return v3;
}

- (void)assetAccountIdentifiersForAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = [v7 assetID];
  v8 = [v7 path];
  v9 = [v7 storeID];
  v10 = [v7 purchasedDSID];
  v11 = [v7 downloadedDSID];
  v12 = [v7 familyID];
  v13 = [v7 dataSourceIdentifier];

  [(BKLibraryManager *)self assetAccountIdentifiersForAssetID:v14 path:v8 storeID:v9 purchasedDSID:v10 downloadedDSID:v11 familyID:v12 dataSourceID:v13 completion:v6];
}

- (void)assetAccountIdentifiersForAssetID:(id)a3 path:(id)a4 storeID:(id)a5 purchasedDSID:(id)a6 downloadedDSID:(id)a7 familyID:(id)a8 dataSourceID:(id)a9 completion:(id)a10
{
  v28 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = [[BKLibraryManagerAccountIdentifiers alloc] initWithPurchasedDSID:v22 downloadedDSID:v21 familyID:v20];

  v24 = [(BKLibraryManager *)self dataSourceWithIdentifier:v19];

  if (v22 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v26 = objc_retainBlock(v18);
    v27 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, v23, 0);
    }

    v25 = v28;
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_319FC;
    v29[3] = &unk_D6438;
    v29[4] = self;
    v25 = v28;
    v30 = v28;
    v31 = v23;
    v32 = v18;
    [v24 assetAccountIdentifiersForAssetID:v30 path:v16 storeID:v17 completion:v29];
  }
}

- (void)hiddenAssetStoreIDsWithCompletion:(id)a3
{
  v12 = a3;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.BKLibraryManager.hiddenAssetQueue", v4);

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_83E0;
  v29[4] = sub_83F0;
  v30 = objc_opt_new();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_83E0;
  v27[4] = sub_83F0;
  v28 = 0;
  v5 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(BKLibraryManager *)self dataSources];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v5);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_31FDC;
          v18[3] = &unk_D6488;
          v19 = queue;
          v21 = v27;
          v22 = v29;
          v20 = v5;
          [v10 hiddenAssetStoreIDsWithCompletion:v18];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32138;
  block[3] = &unk_D64B0;
  v16 = v29;
  v17 = v27;
  v15 = v12;
  v11 = v12;
  dispatch_group_notify(v5, queue, block);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
}

- (void)rawBookCoverForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataSourceIdentifier];
  v9 = [(BKLibraryManager *)self dataSourceWithIdentifier:v8];

  if (v9)
  {
    v14[0] = @"path";
    v14[1] = @"assetID";
    v14[2] = @"permlink";
    v14[3] = @"temporaryAssetID";
    v14[4] = @"title";
    v14[5] = @"storeID";
    v10 = [NSArray arrayWithObjects:v14 count:6];
    v11 = [v6 propertiesForKeys:v10];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_323A0;
    v12[3] = &unk_D64D8;
    v13 = v7;
    [v9 bookCoverForLibraryAssetProperties:v11 size:v12 completion:{1.79769313e308, 1.79769313e308}];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)readingTimeTracker:(id)a3 updateRecentBook:(id)a4 promoteIfNotTracked:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_32564;
  v20[3] = &unk_D6528;
  v20[4] = self;
  v14 = v11;
  v21 = v14;
  v24 = a5;
  v15 = v13;
  v22 = v15;
  v23 = v25;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v20];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_328C4;
  block[3] = &unk_D6550;
  v18 = v12;
  v19 = v25;
  v16 = v12;
  dispatch_group_notify(v15, &_dispatch_main_q, block);

  _Block_object_dispose(v25, 8);
}

- (unint64_t)wq_countOfBooksInContinueReadingIncludingExplicitContent:(BOOL)a3 limit:(unint64_t)a4 onWorkerQueue:(id)a5
{
  v5 = a5;
  v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v7 = +[BKLibraryManager _continueReadingPredicate];
  [v6 setPredicate:v7];

  v12 = 0;
  v8 = [v5 countForFetchRequest:v6 error:&v12];

  v9 = v12;
  if (v9)
  {
    v10 = BCBookPromotionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_8F4D4();
    }
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  return v8;
}

- (void)wq_seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:(id)a3 limit:(unint64_t)a4 onWorkerQueue:(id)a5
{
  v7 = a3;
  v33 = a5;
  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v8 setReturnsObjectsAsFaults:0];
  [v8 setFetchLimit:a4];
  v36 = v7;
  v9 = [NSPredicate predicateWithFormat:@"%K > %@", @"lastOpenDate", v7];
  v10 = [NSPredicate predicateWithFormat:@"%K != NULL", @"lastEngagedDate"];
  v11 = +[BKLibraryManager predicateForLibraryAssetsRecentlyOpened];
  v44[0] = v11;
  v44[1] = v10;
  v34 = v10;
  v35 = v9;
  v44[2] = v9;
  v12 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v44[3] = v12;
  v13 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v44[4] = v13;
  v14 = +[BKLibraryManager excludeHiddenAssetsPredicate];
  v44[5] = v14;
  v15 = +[BKLibraryManager predicateToExcludeSeriesLibraryAssets];
  v44[6] = v15;
  v16 = +[BKLibraryManager excludeEphemeralAssetsPredicate];
  v44[7] = v16;
  v17 = [NSArray arrayWithObjects:v44 count:8];
  v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v17];
  [v8 setPredicate:v18];

  v19 = [[NSSortDescriptor alloc] initWithKey:@"lastOpenDate" ascending:0];
  v43 = v19;
  v20 = [NSArray arrayWithObjects:&v43 count:1];
  [v8 setSortDescriptors:v20];

  v41 = 0;
  v21 = [v33 executeFetchRequest:v8 error:&v41];
  v22 = v41;
  v23 = v22;
  if (!v21 && v22)
  {
    v24 = BCBookPromotionLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_8F53C();
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v38;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v37 + 1) + 8 * i);
        if (([v31 isSupplementalContent] & 1) == 0)
        {
          [v31 setIsTrackedAsRecent:1];
          ++v28;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v27);
  }

  [v33 saveLibrary];
  v32 = BCBookPromotionLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_8F5A4();
  }
}

- (void)seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:(id)a3 limit:(unint64_t)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_32E54;
  v7[3] = &unk_D6578;
  v8 = a3;
  v9 = a4;
  v7[4] = self;
  v6 = v8;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v7];
}

- (void)purgeRecentsListFromAllBooksOlderThanDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_33050;
    v6[3] = &unk_D56B8;
    v7 = v4;
    [(BKLibraryManager *)self performBlockOnWorkerQueue:v6];
  }
}

- (void)purgeRecentBooks:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_33328;
    v10[3] = &unk_D6098;
    v11 = v6;
    v12 = v7;
    [(BKLibraryManager *)self performBlockOnWorkerQueue:v10];
  }

  else
  {
    v8 = objc_retainBlock(v7);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }
}

- (void)readingTimeTrackerHasRecentAssets:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_33670;
  v6[3] = &unk_D5BD0;
  v7 = a4;
  v5 = v7;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v6];
}

- (void)isTrackedAsRecent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_33914;
    v14[3] = &unk_D6098;
    v15 = v6;
    v16 = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_33AD4;
    v12[3] = &unk_D6098;
    v12[4] = self;
    v13 = objc_retainBlock(v14);
    v8 = v13;
    [(BKLibraryManager *)self performBlockOnCollectionsWorkerQueue:v12];

    v9 = v15;
  }

  else
  {
    v9 = objc_retainBlock(v7);
    if (v9)
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = @"No asset identifier.";
      v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v11 = [NSError errorWithDomain:@"BKLibraryErrorDomain" code:1 userInfo:v10];
      v9[2](v9, 0, v11);
    }
  }
}

- (void)readingTimeTracker:(id)a3 isAssetTrackedAsRecent:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 length])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_33CD8;
    v15[3] = &unk_D6098;
    v16 = v7;
    v17 = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_33EF4;
    v13[3] = &unk_D6098;
    v13[4] = self;
    v14 = objc_retainBlock(v15);
    v9 = v14;
    [(BKLibraryManager *)self performBlockOnCollectionsWorkerQueue:v13];

    v10 = v16;
  }

  else
  {
    v10 = objc_retainBlock(v8);
    if (v10)
    {
      v18 = NSLocalizedDescriptionKey;
      v19 = @"No asset identifier.";
      v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v12 = [NSError errorWithDomain:@"BKLibraryErrorDomain" code:1 userInfo:v11];
      (*(v10 + 2))(v10, 0, 0, 0, 0, v12);
    }
  }
}

- (void)recentsNotEngagedSinceDateForSamples:(id)a3 dateForNonSamples:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_33FE0;
  v10[3] = &unk_D65A0;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(BKLibraryManager *)v11 performBackgroundReadOnlyBlock:v10];
}

- (void)readingTimeTracker:(id)a3 cleanupFinishedBooksExcluding:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_344A8;
  v8[3] = &unk_D5B30;
  v9 = self;
  v10 = a4;
  v11 = a5;
  v6 = v11;
  v7 = v10;
  [(BKLibraryManager *)v9 performBlockOnWorkerQueue:v8];
}

- (void)readingTimeTracker:(id)a3 cleanupBooksFinishedBefore:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_348E8;
  v8[3] = &unk_D5B30;
  v9 = self;
  v10 = a4;
  v11 = a5;
  v6 = v11;
  v7 = v10;
  [(BKLibraryManager *)v9 performBlockOnWorkerQueue:v8];
}

- (BOOL)isDownloadableFromLibraryAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 permanentOrTemporaryAssetID];
  if ([v4 length])
  {
    v5 = +[BKLibraryAssetStatusController sharedController];
    v6 = [v3 permanentOrTemporaryAssetID];
    v7 = [v5 statusForAssetID:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 canRedownload] && (objc_msgSend(v3, "isPreorderBook") & 1) == 0 && (objc_msgSend(v3, "isLocal") & 1) == 0 && objc_msgSend(v7, "state") != &dword_4;
  return v8;
}

- (id)_updateLibraryAssetWithID:(id)a3 withLastOpenDate:(id)a4 withMoc:(id)a5
{
  v8 = a4;
  v9 = [(BKLibraryManager *)self libraryMutableAssetWithAssetID:a3 inManagedObjectContext:a5];
  [v9 setLastOpenDate:v8];
  v10 = [v9 seriesContainer];
  [v10 setLastOpenDate:v8];

  [v9 setModificationDate:v8];
  v11 = [v9 seriesContainer];
  [v11 setModificationDate:v8];

  v12 = [v9 storeID];
  if ([v12 longLongValue])
  {
    v13 = [v9 purchasedAndLocalParent];

    if (!v13)
    {
      v14 = [v9 isAudiobook];
      v15 = &BKSeriesManagerAssetTypeAudiobooks;
      if (!v14)
      {
        v15 = &BKSeriesManagerAssetTypeBooks;
      }

      v32 = *v15;
      v16 = v32;
      v17 = [v9 storeID];
      v31 = v17;
      v18 = [NSArray arrayWithObjects:&v31 count:1];
      v33 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

      v20 = [(BKLibraryManager *)self seriesManager];
      [v20 updateExpiredSeriesForAssetAdamIDsWithTypes:v19];
    }
  }

  else
  {
  }

  v21 = [v9 storeID];
  if (v21)
  {

LABEL_10:
    v24 = [v9 permlink];
    if (v24)
    {
      v25 = [v9 permlink];
      v26 = [NSURL URLWithString:v25];
    }

    else
    {
      v26 = [NSURL URLWithString:&stru_D8298];
    }

    v27 = +[BLLibrary defaultBookLibrary];
    v28 = [v9 storeID];
    v29 = +[NSDate date];
    [v27 _bookWasOpenedWithStoreID:v28 permlink:v26 date:v29];

    goto LABEL_14;
  }

  v22 = [v9 permlink];
  v23 = [v22 length];

  if (v23)
  {
    goto LABEL_10;
  }

LABEL_14:

  return v9;
}

- (void)updateLibraryAssetWithID:(id)a3 withTitle:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(BKLibraryManager *)self uiChildContext];
  v8 = [(BKLibraryManager *)self libraryMutableAssetWithAssetID:v14 inManagedObjectContext:v7];

  if (v8)
  {
    [v8 setTitle:v6];
    [v8 setSortTitle:v6];
    v9 = [(BKLibraryManager *)self uiChildContext];
    [v9 setSaveContext:2];

    v10 = [(BKLibraryManager *)self uiChildContext];
    [v10 save:0];

    v11 = [v8 dataSourceIdentifier];
    v12 = [(BKLibraryManager *)self dataSourceWithIdentifier:v11];

    if (objc_opt_respondsToSelector())
    {
      [v12 updateAsset:v8 userEditedTitle:v6 completion:0];
    }
  }

  v13 = +[BCProgressKitController sharedController];
  [v13 updateBook:v14 withTitle:v6 completion:0];
}

- (void)updateLibraryAssetWithID:(id)a3 withLastOpenDate:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_351CC;
  v10[3] = &unk_D65A0;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(BKLibraryManager *)v11 performBlockOnWorkerQueue:v10];
}

- (void)updateLibraryAssetWithID:(id)a3 isEphemeral:(BOOL)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_35334;
  v9[3] = &unk_D65C8;
  v10 = self;
  v11 = a3;
  v13 = a4;
  v12 = a5;
  v7 = v12;
  v8 = v11;
  [(BKLibraryManager *)v10 performBlockOnWorkerQueue:v9];
}

- (void)applyPendingUpdateForAssetID:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_35668;
  v7[3] = &unk_D5B30;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(BKLibraryManager *)v8 performBackgroundReadOnlyBlock:v7];
}

- (BOOL)_shouldPropagateNilAssetIDForDataSourceWithIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_dataSourcesByIdentifier objectForKeyedSubscript:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 propagateNilAssetID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didCloseLibraryAsset:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_359C4;
  v3[3] = &unk_D56B8;
  v3[4] = self;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v3];
}

- (id)seriesBooksForSeriesID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:a3];
  v15[0] = v7;
  v8 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v15[1] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  v11 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  [v11 setPredicate:v10];
  v14 = 0;
  v12 = [v6 executeFetchRequest:v11 error:&v14];

  return v12;
}

- (id)seriesContainerForSeriesID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryManager *)self predicateForContainerWithSeriesIDLibraryAsset:v7];

  [v8 setPredicate:v9];
  [v8 setFetchLimit:1];
  v13 = 0;
  v10 = [v6 executeFetchRequest:v8 error:&v13];

  if (v10 && [v10 count])
  {
    v11 = [v10 firstObject];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateSeriesContainerSeriesStackAssetIDs:(id)a3
{
  v6 = a3;
  if ([v6 isContainer])
  {
    v3 = [BKLibraryManager seriesStackBooksForBook:v6];
    v4 = [v3 valueForKey:@"assetID"];
    if ([v3 count])
    {
      v5 = [v4 componentsJoinedByString:{@", "}];
      [v6 setDifferentObject:v5 forKey:@"seriesStackIDs"];
    }
  }
}

- (void)updateSupplementalContentRelationship:(id)a3
{
  v3 = a3;
  if ([v3 isAudiobook])
  {
    v4 = [v3 assetID];
    v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    v6 = [BKLibraryManager predicateForSupplementalContentLibraryAssetsWithStorePlaylistID:v4];
    [v5 setPredicate:v6];

    v7 = [v3 managedObjectContext];
    v29 = 0;
    v8 = [v7 executeFetchRequest:v5 error:&v29];
    v9 = v29;

    if (v9)
    {
      v10 = BKLibraryLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_8F9B0();
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v8;
      v18 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v25 + 1) + 8 * i) setDifferentObject:v3 forKey:@"supplementalContentParent"];
          }

          v19 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v19);
      }
    }

    goto LABEL_33;
  }

  v4 = v3;
  if ([v4 isSupplementalContent])
  {
    v11 = [v4 storePlaylistID];

    if (v11)
    {
      v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
      v12 = [v4 storePlaylistID];
      v13 = [BKLibraryManager predicateForAssetIDTaggedLibraryAsset:v12];
      [v5 setPredicate:v13];

      v14 = [v4 managedObjectContext];
      v24 = 0;
      v8 = [v14 executeFetchRequest:v5 error:&v24];
      v9 = v24;

      if (v9)
      {
        v15 = BKLibraryLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_8F7A4();
        }

        [v4 setDifferentObject:0 forKey:@"supplementalContentParent"];
        goto LABEL_34;
      }

      if ([v8 count])
      {
        if ([v8 count] < 2)
        {
LABEL_32:
          v10 = [v8 lastObject];
          [v4 setDifferentObject:v10 forKey:@"supplementalContentParent"];
LABEL_33:

LABEL_34:
          goto LABEL_35;
        }

        v22 = BKLibraryLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_8F83C();
        }
      }

      else
      {
        v22 = BKLibraryLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v4 storePlaylistID];
          *buf = 138412290;
          v31 = v23;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Fetched 0 audiobook libraryAsset with storePlaylistID %@ for supplemental content", buf, 0xCu);
        }
      }

      goto LABEL_32;
    }
  }

  if ([v4 isSupplementalContent])
  {
    v16 = [v4 storePlaylistID];

    if (!v16)
    {
      v17 = BKLibraryLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_8F904(v4);
      }
    }
  }

  [v4 setDifferentObject:0 forKey:@"supplementalContentParent"];
LABEL_35:
}

- (void)updateIsDownloadingSupplementalContentAndCombinedState:(id)a3
{
  v3 = a3;
  v4 = [v3 supplementalContentAssets];
  if ([v4 count])
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 supplementalContentParent];
  }

  v6 = v5;

  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 supplementalContentAssets];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v18 + 1) + 8 * v11) isDownloading])
          {

            v14 = [NSNumber numberWithBool:1];
            [v6 setDifferentValue:v14 forKey:@"isDownloadingSupplementalContent" klass:objc_opt_class()];

            v13 = &dword_0 + 2;
            goto LABEL_15;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = [NSNumber numberWithBool:0];
    [v6 setDifferentValue:v12 forKey:@"isDownloadingSupplementalContent" klass:objc_opt_class()];

    v13 = [v6 state];
LABEL_15:
    v15 = [NSNumber numberWithShort:v13];
    [v6 setDifferentValue:v15 forKey:@"combinedState" klass:objc_opt_class()];
  }

  if (v6 != v3)
  {
    if ([v3 isDownloadingSupplementalContent])
    {
      v16 = &dword_0 + 2;
    }

    else
    {
      v16 = [v3 state];
    }

    v17 = [NSNumber numberWithShort:v16];
    [v3 setDifferentValue:v17 forKey:@"combinedState" klass:objc_opt_class()];
  }
}

- (void)updateSeriesRelationshipsForSeriesAsset:(id)a3
{
  v22 = a3;
  v4 = [v22 seriesID];
  if (!v4)
  {
    [v22 setDifferentObject:0 forKey:@"seriesContainer"];
    [v22 setDifferentObject:0 forKey:@"purchasedAndLocalParent"];
    [v22 setDifferentObject:0 forKey:@"localOnlySeriesItemsParent"];
    goto LABEL_22;
  }

  v5 = [v22 seriesContainer];
  v6 = [v5 seriesID];
  v7 = [v4 isEqualToString:v6];

  v8 = [v22 managedObjectContext];
  v9 = [(BKLibraryManager *)self seriesContainerForSeriesID:v4 inManagedObjectContext:v8];

  v10 = [(BKLibraryManager *)self predicateForPurchasedBooksAssets];
  v11 = [v10 evaluateWithObject:v22];

  v12 = [objc_opt_class() predicateForLocalOrDownloadingLibraryAssets];
  v13 = [v12 evaluateWithObject:v22];

  if (v7)
  {
    v14 = [v22 seriesContainer];

    if (!v14)
    {
      [v22 setSeriesContainer:v9];
    }

    v15 = [v22 purchasedAndLocalParent];
    v16 = v15 != 0;

    if (v11 != v16)
    {
      if (v11)
      {
        v17 = v9;
      }

      else
      {
        v17 = 0;
      }

      [v22 setPurchasedAndLocalParent:v17];
    }

    v18 = [v22 localOnlySeriesItemsParent];
    v19 = v18 != 0;

    if (v13 == v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [v22 setSeriesContainer:v9];
    if (v11)
    {
      v20 = v9;
    }

    else
    {
      v20 = 0;
    }

    [v22 setPurchasedAndLocalParent:v20];
  }

  if (v13)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  [v22 setLocalOnlySeriesItemsParent:v21];
LABEL_21:

LABEL_22:
}

- (void)updateSeriesRelationshipsForSeriesContainer:(id)a3
{
  v4 = a3;
  v14 = [v4 seriesID];
  v5 = [v4 managedObjectContext];
  v6 = [(BKLibraryManager *)self seriesBooksForSeriesID:v14 inManagedObjectContext:v5];

  v7 = [(BKLibraryManager *)self predicateForPurchasedBooksAssets];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  v9 = [(BKLibraryManager *)self predicateForLocalLibraryAssets];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  v11 = [NSSet setWithArray:v6];
  [v4 setValue:v11 forKey:@"seriesBooks"];

  v12 = [NSSet setWithArray:v8];
  [v4 setValue:v12 forKey:@"purchasedAndLocalSeriesItems"];

  v13 = [NSSet setWithArray:v10];
  [v4 setValue:v13 forKey:@"localOnlySeriesItems"];

  [(BKLibraryManager *)self _updateAuthorForSeriesContainer:v4];
}

- (void)checkDatabaseIntegrity
{
  v3 = [(BKLibraryManager *)self collectionManager];
  [v3 fixCollectionMemberAssetLinks];

  v4 = [(BKLibraryManager *)self collectionManager];
  [v4 fixPDFCollectionIfNeeded];
}

- (void)_migrateFromOldDatabase
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_368A8;
  v2[3] = &unk_D56B8;
  v2[4] = self;
  [(BKLibraryManager *)self performBlockOnCollectionsWorkerQueueAndWait:v2];
}

- (id)migrationOldDatabaseFolderPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [v3 stringByAppendingPathComponent:@"BKLibrary_database"];

  return v4;
}

- (id)migrationMoc
{
  v3 = [[NSString alloc] initWithFormat:@"iBooks_%@.sqlite", @"v10252011_2152"];
  v4 = [(BKLibraryManager *)self migrationOldDatabaseFolderPath];
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 pathForResource:@"LibraryInfo" ofType:@"momd"];

    if (v9)
    {
      v10 = [NSURL fileURLWithPath:v9];
      v11 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v10];
      v12 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v11];
      if (v12)
      {
        v13 = [NSURL fileURLWithPath:v5 isDirectory:0];
        v14 = [NSDictionary dictionaryWithObjectsAndKeys:NSInferMappingModelAutomaticallyOption, &__kCFBooleanTrue, NSMigratePersistentStoresAutomaticallyOption, NSFileProtectionNone, NSPersistentStoreFileProtectionKey, 0];
        v19 = 0;
        v15 = [v12 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v13 options:v14 error:&v19];
        v16 = v19;
        v17 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
        [v17 setPersistentStoreCoordinator:v12];
        [v17 setUndoManager:0];
        [v17 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)migrationCachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [v3 stringByAppendingPathComponent:@"BKLibraryMigrationCache.plist"];

  return v4;
}

- (void)migrateDataSources:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BKLibraryManager *)self dataSources];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 migrateWithMoc:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)migrateSortOrderKeys:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_36FE0;
  v5[3] = &unk_D5420;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [v4 performBlockAndWait:v5];
}

- (void)bootstrapSamplesCollectionIfNeeded
{
  v3 = [(BKLibraryManager *)self metadataObjectForKey:@"BKLibraryHasBootstrappedSamplesCollection"];
  v4 = [v3 BOOLValue];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"BKLibraryForceBootstrapSamplesCollection"];

  if (!v4 || v6)
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Bootstrap Samples collection: Going to bootstrap Samples collection.", buf, 2u);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_37484;
    v8[3] = &unk_D56B8;
    v8[4] = self;
    [(BKLibraryManager *)self performBlockOnCollectionsWorkerQueueAndWait:v8];
  }
}

- (void)saveCachedMigrationData
{
  v3 = [(BKLibraryManager *)self migrationDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_377CC;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)q_removeOldMigrationData
{
  v3 = +[NSDate date];
  v4 = [(BKLibraryManager *)self migratedSortOrderData];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_379FC;
  v9[3] = &unk_D6610;
  v10 = v3;
  v5 = v3;
  v6 = [v4 keysOfEntriesPassingTest:v9];

  if ([v6 count])
  {
    v7 = [(BKLibraryManager *)self migratedSortOrderData];
    v8 = [v6 allObjects];
    [v7 removeObjectsForKeys:v8];

    [(BKLibraryManager *)self setMigratedPropertiesChanged:1];
  }
}

- (void)loadCachedMigrationData
{
  v3 = [(BKLibraryManager *)self migrationDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_37AE8;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)fetchMigratedProperties:(id)a3 deleteFoundAssets:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_83E0;
  v19 = sub_83F0;
  v20 = 0;
  if (v6)
  {
    v7 = [(BKLibraryManager *)self migrationDispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_37D4C;
    v11[3] = &unk_D6638;
    v13 = &v15;
    v11[4] = self;
    v12 = v6;
    v14 = a4;
    dispatch_sync(v7, v11);

    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)adoptMigratedProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 assetID];
  v6 = [(BKLibraryManager *)self fetchMigratedProperties:v5 deleteFoundAssets:1];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (![v5 hasPrefix:@"sha1-"])
    {
      goto LABEL_19;
    }

    v11 = [v5 stringByReplacingOccurrencesOfString:@"sha1-" withString:@"sha1:"];

    v12 = [(BKLibraryManager *)self fetchMigratedProperties:v11 deleteFoundAssets:1];
    if (!v12)
    {
      v5 = v11;
      goto LABEL_19;
    }

    v7 = v12;
    v5 = v11;
  }

  v8 = [v7 objectForKey:@"validUntilKey"];
  v9 = [v7 objectForKey:@"sortKey"];
  [v4 setSortKey:v9];

  if (v8)
  {
    v10 = [v7 objectForKey:@"dateLastOpened"];
    [v4 nonUserUpdateLastOpenDateTo:v10];
  }

  else
  {
    v13 = [v7 objectForKey:@"isNew"];
    [v4 setIsNew:{objc_msgSend(v13, "BOOLValue")}];

    v14 = [v7 objectForKey:@"dateLastOpened"];
    [v4 nonUserUpdateLastOpenDateTo:v14];

    if ([v4 titleEditsSavedInLibraryOnly])
    {
      v15 = [v7 objectForKey:@"bookTitle"];
      v16 = [v4 title];
      v17 = [v16 isEqualToString:v15];

      if ((v17 & 1) == 0)
      {
        [v4 setTitle:v15];
      }

      v18 = [v7 objectForKey:@"sortTitle"];
      v19 = [v4 sortTitle];
      v20 = [v19 isEqualToString:v18];

      if ((v20 & 1) == 0)
      {
        [v4 setSortTitle:v18];
      }
    }

    v10 = [v7 objectForKey:@"dateAdded"];
    v21 = +[NSDate date];
    v22 = [v10 earlierDate:v21];

    if (v22)
    {
      [v4 setCreationDate:v10];
    }
  }

  v23 = BKLibraryLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v4 assetID];
    v25 = [v4 sortKey];
    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isNew]);
    v27 = 138412802;
    v28 = v24;
    v29 = 2112;
    v30 = v25;
    v31 = 2112;
    v32 = v26;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Migrating Library Asset ID: %@ newSortOrder: %@ newIsNew: %@", &v27, 0x20u);
  }

LABEL_19:
}

- (void)archiveTransientProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 assetID];
  v6 = [v4 sortKey];
  v7 = [v4 lastOpenDate];

  if (v5 && v6)
  {
    v15[0] = @"sortKey";
    v15[1] = @"dateLastOpened";
    v16[0] = v6;
    v16[1] = v7;
    v15[2] = @"validUntilKey";
    v8 = [NSDate dateWithTimeIntervalSinceNow:2592000.0];
    v16[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

    v10 = [(BKLibraryManager *)self migrationDispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_38428;
    v12[3] = &unk_D5A40;
    v12[4] = self;
    v13 = v9;
    v14 = v5;
    v11 = v9;
    dispatch_sync(v10, v12);
  }
}

- (void)migrateCollections:(id)a3 context:(id)a4
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_385F0;
  v11[3] = &unk_D5A40;
  v12 = a3;
  v13 = self;
  v5 = objc_opt_new();
  v14 = v5;
  v6 = v12;
  [v6 performBlockAndWait:v11];
  v7 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_38B78;
  v9[3] = &unk_D5420;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 performBlockAndWait:v9];
}

- (void)migrateMetaData:(id)a3
{
  v13 = [a3 persistentStoreCoordinator];
  v4 = [v13 persistentStores];
  v5 = [v4 lastObject];

  v6 = [v13 metadataForPersistentStore:v5];
  v7 = [v6 objectForKey:@"BKDatabase-Metadata"];
  v8 = [v7 objectForKey:@"Collections-Generation-ClientSide"];
  [(BKLibraryManager *)self setMetadataObject:v8 forKey:@"Collections-Generation-ClientSide"];

  v9 = [v7 objectForKey:@"Collections-ServerSide-Dirty"];
  [(BKLibraryManager *)self setMetadataObject:v9 forKey:@"Collections-ServerSide-Dirty"];

  v10 = [v7 objectForKey:@"Collections-ServerSide-Generation"];
  [(BKLibraryManager *)self setMetadataObject:v10 forKey:@"Collections-ServerSide-Generation"];

  v11 = [v7 objectForKey:@"JaliscoStatus-ServerSide-Generation"];
  [(BKLibraryManager *)self setMetadataObject:v11 forKey:@"JaliscoStatus-ServerSide-Generation"];

  v12 = [v7 objectForKey:@"BKCollection-NextSortKey"];
  [(BKLibraryManager *)self setMetadataObject:v12 forKey:@"BKCollection-NextSortKey"];

  [(BKLibraryManager *)self saveMetaData];
}

- (void)migratePurgeOldDatabases
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"BKLibraryKeepMigrationData"];

  if ((v4 & 1) == 0)
  {
    v5 = [(BKLibraryManager *)self migrationOldDatabaseFolderPath];
    v6 = +[NSFileManager defaultManager];
    v14 = 0;
    v7 = [v6 removeItemAtPath:v5 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      v9 = BKLibraryLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_8FBB4();
      }
    }

    v10 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v11 = [v10 lastObject];

    v12 = [v11 stringByAppendingPathComponent:@"iBooks_revision-two.sqlite-BKSortOrderMigrator_10152011.plist"];
    v13 = +[NSFileManager defaultManager];
    [v13 removeItemAtPath:v12 error:0];
  }
}

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [v5 addedObjects];
  [v6 addObjectsFromArray:v7];

  v8 = [v5 updatedObjects];
  [v6 addObjectsFromArray:v8];

  v9 = [v5 deletedObjects];
  [v6 addObjectsFromArray:v9];

  v10 = BKLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_8FC1C(v5);
  }

  v11 = [(BKLibraryManager *)self ownershipSync];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39500;
  block[3] = &unk_D5420;
  v12 = v6;
  v17 = v12;
  v18 = self;
  dispatch_sync(v11, block);

  v13 = BKLibraryLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_8FCE8();
  }

  if ([v12 count])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_3958C;
    v14[3] = &unk_D5420;
    v14[4] = self;
    v15 = v12;
    dispatch_async(&_dispatch_main_q, v14);
  }
}

- (void)beginAuthentication:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BKLibraryManager *)self dataSources];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 beginAuthentication:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)finalizeAuthentication:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BKLibraryManager *)self dataSources];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 finalizeAuthentication:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_updateProcessingAuthenticationStateDeferred
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_398B4;
  v3[3] = &unk_D6660;
  objc_copyWeak(&v4, &location);
  [(BKLibraryManager *)self addCustomOperationBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_updateProcessingAuthenticationStateImmediate
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(BKLibraryManager *)self dataSources];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 processingAuthentication])
        {
          v4 = &dword_0 + 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  [(BKLibraryManager *)self setProcessingAuthentication:v4];
}

- (void)refreshFamily
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(BKLibraryManager *)self dataSources];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 refreshFamily];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)isFamilyPurchaseWithFamilyID:(id)a3 purchaserDSID:(id)a4 downloaderDSID:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = BUStoreIdStringFromObject();
  v9 = [v8 integerValue];

  v10 = BUStoreIdStringFromObject();

  v11 = [v10 integerValue];
  v12 = BUStoreIdStringFromObject();

  v13 = [v12 integerValue];
  if (v13)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  v16 = !v14 && v11 != v13;
  return v9 || v16;
}

- (id)cloudSyncVersionsForDataType:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BCCloudSyncVersions"];
  [v7 setReturnsObjectsAsFaults:0];
  [v7 setFetchLimit:1];
  v8 = [NSPredicate predicateWithFormat:@"dataType == %@", v5];
  [v7 setPredicate:v8];

  v14 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8FD58();
    }
  }

  v12 = [v9 firstObject];
  if (!v12)
  {
    v12 = [NSEntityDescription insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:v6];
    [v12 setDataType:v5];
  }

  return v12;
}

- (void)updateCloudVersionFromCloudSyncVersions:(id)a3 inContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dataType];
  v11 = [(BKLibraryManager *)self cloudSyncVersionsForDataType:v8 inContext:v6];

  [v11 setCloudVersion:{objc_msgSend(v7, "cloudVersion")}];
  v9 = [v7 historyToken];
  [v11 setHistoryToken:v9];

  v10 = [v7 historyTokenOffset];
  [v11 setHistoryTokenOffset:v10];
}

- (id)dragInfoFromLibraryAsset:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BCAssetDragInfo);
  v5 = [v3 contentType];
  v6 = [v3 assetID];
  [v4 setAssetID:v6];

  v7 = [v3 storeID];
  [v4 setStoreID:v7];

  [v4 setContentType:v5];
  v8 = [v3 title];
  [v4 setTitle:v8];

  v9 = [v3 displayAuthor];
  [v4 setAuthor:v9];

  [v4 setFileSize:{objc_msgSend(v3, "fileSize")}];
  v10 = [v3 modificationDate];
  [v4 setModificationDate:v10];

  v11 = [v3 url];
  [v4 setStoreURL:v11];

  if ([v3 contentType] == 3 && (objc_msgSend(v3, "isManagedBook") & 1) == 0)
  {
    v12 = [v3 path];

    if (v12)
    {
      v13 = [v3 path];
      v14 = [NSURL fileURLWithPath:v13];
      [v4 setLocalFileURL:v14];
    }
  }

  return v4;
}

- ($3F30F48CCF81742A7D163F96C13F4EE1)cacheManager:(SEL)a3 bookCoverInfoForIdentifier:(id)a4
{
  v8 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x5812000000;
  v17 = sub_3A138;
  v18 = sub_3A17C;
  v19 = 1024;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_3A1D0;
  v11[3] = &unk_D6258;
  v11[4] = self;
  v9 = a5;
  v12 = v9;
  v13 = &v14;
  [(BKLibraryManager *)self performNamed:@"bookCoverInfoForIdentifier" workerQueueBlockAndWait:v11];
  sub_3A4A0(retstr, (v15 + 6));

  _Block_object_dispose(&v14, 8);
  sub_3A184(v20);

  return result;
}

- (void)cacheManager:(id)a3 explicitIdentifiersWithCompletion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3A598;
  v6[3] = &unk_D5BD0;
  v7 = a4;
  v5 = v7;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v6];
}

- (void)resetCover:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(BKLibraryManager *)self imageSource];
    [v4 removeImagesForAssetID:v6 temporaryAssetID:0];

    v5 = +[NSDate date];
    [(BKLibraryManager *)self updateLibraryAssetWithID:v6 withLastOpenDate:v5 completion:0];
  }
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 persistentStoreURL];
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = +[NSFileManager defaultManager];
  v10 = 0;
  [v7 removeItemAtURL:v6 error:&v10];
  v8 = v10;

  v9 = objc_retainBlock(v4);
  if (v9)
  {
    v9[2](v9, v8 == 0, v8);
  }
}

- (void)collectionManagerDidModifyWantToReadCollection:(id)a3
{
  v4 = BKLibraryPriceTrackingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "WTR collection changed, scheduling price tracking update", v6, 2u);
  }

  v5 = [(BKLibraryManager *)self priceTracker];
  [v5 setNeedsConfigurationUpdate];
}

- (BKLibraryDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)fetchImageShadowForAsset:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 assetID];
    v13 = +[BICDescribedImage describedImageWithIdentifier:size:processingOptions:](BICDescribedImage, "describedImageWithIdentifier:size:processingOptions:", v12, [a1 processingOptionsFor:v9 coverEffectsEnvironment:0] | 0x10, width, height);

    [v13 setPriority:5];
    v14 = +[BCCacheManager defaultCacheManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_5F268;
    v16[3] = &unk_D7250;
    v17 = v11;
    [v14 fetchCGImageFor:v13 forRequest:v13 completion:v16];
  }

  else
  {
    v15 = objc_retainBlock(v10);
    v13 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

+ (void)fetchImageShadowForAssetID:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v11 = [a1 defaultManager];
  v19 = v10;
  v12 = [NSArray arrayWithObjects:&v19 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5F4BC;
  v14[3] = &unk_D72A0;
  v17 = width;
  v18 = height;
  v15 = v9;
  v16 = a1;
  v13 = v9;
  [v11 fetchLibraryAssetsFromAssetIDs:v12 handler:v14];
}

+ (void)_fetchImageForAsset:(id)a3 size:(CGSize)a4 includeSpine:(BOOL)a5 includeShadow:(BOOL)a6 allowGeneric:(BOOL)a7 coverEffectsEnvironment:(id)a8 completion:(id)a9
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v18 = a8;
  v19 = a9;
  v20 = v19;
  if (v17)
  {
    if (v13)
    {
      v21 = [a1 processingOptionsFor:v17 coverEffectsEnvironment:v18];
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v24 = v12;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = v21;
    }

    else
    {
      v25 = v21 | 0x100;
    }

    v26 = [v17 assetID];
    v27 = [BICDescribedImage describedImageWithIdentifier:v26 size:v25 processingOptions:width, height];

    if (v11)
    {
      v28 = 16;
    }

    else
    {
      v28 = 2;
    }

    [v27 setRequestOptions:v28];
    [v27 setPriority:5];
    v29 = +[BCCacheManager defaultCacheManager];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_5F9D4;
    v30[3] = &unk_D7250;
    v31 = v20;
    [v29 fetchCGImageFor:v27 forRequest:v27 completion:v30];
  }

  else
  {
    v22 = objc_retainBlock(v19);
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0);
    }
  }
}

+ (void)fetchImageForAssetID:(id)a3 size:(CGSize)a4 includeSpine:(BOOL)a5 includeShadow:(BOOL)a6 coverEffectsEnvironment:(id)a7 completion:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a8;
  v16 = a3;
  v17 = [BKCapturedCoverEffectsEnvironment newCapturedEnvironment:a7];
  v18 = [a1 defaultManager];
  v30 = v16;
  v19 = [NSArray arrayWithObjects:&v30 count:1];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_5FBD4;
  v22[3] = &unk_D72C8;
  v24 = v15;
  v25 = a1;
  v26 = width;
  v27 = height;
  v28 = a5;
  v29 = a6;
  v23 = v17;
  v20 = v15;
  v21 = v17;
  [v18 fetchLibraryAssetsFromAssetIDs:v19 handler:v22];
}

+ (unsigned)processingOptionsFor:(id)a3 coverEffectsEnvironment:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isContainer])
  {
    v7 = [v5 seriesBooks];
    v8 = [v7 anyObject];

    v9 = 32;
    if (v8)
    {
      if ([v8 isAudiobook])
      {
        v9 = 2080;
      }

      else
      {
        v9 = 32;
      }
    }

    goto LABEL_9;
  }

  v10 = [v5 contentType];
  if ((v10 - 6) < 0xE)
  {
    v9 = 8;
    goto LABEL_9;
  }

  v9 = 0;
  if (v10 <= 1)
  {
    if (!v10 && [v5 state] != 5 && objc_msgSend(v5, "state") != 6 && objc_msgSend(v5, "state") != 2)
    {
      v9 = 0;
      goto LABEL_9;
    }

LABEL_32:
    v9 = 2;
    goto LABEL_9;
  }

  if ((v10 - 2) < 2)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (v10 == 4)
  {
    goto LABEL_32;
  }

LABEL_9:
  v11 = [v6 coverEffectRTLOverride];
  v12 = v11;
  if (v11)
  {
    if (([v11 BOOLValue] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([v5 isRightToLeft])
  {
LABEL_11:
    v9 |= 0x80u;
  }

LABEL_12:
  v13 = [v5 isExplicit];
  if ([v13 BOOLValue])
  {
    v14 = +[BKLibraryManager defaultManager];
    v15 = [v14 isExplicitMaterialAllowed];

    if ((v15 & 1) == 0)
    {
      v9 |= 0x400u;
    }
  }

  else
  {
  }

  if ([v6 coverEffectsNightMode])
  {
    v16 = v9 | 0x40;
  }

  else
  {
    v16 = v9;
  }

  return v16;
}

@end