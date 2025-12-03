@interface BKLibraryManager
+ (BOOL)hasAnySeriesStackBooksWithBasePredicate:(id)predicate forBook:(id)book;
+ (BOOL)isDirectoryFileName:(id)name;
+ (id)_continueReadingPredicate;
+ (id)_continueReadingPredicateIncludingExplicitContent:(BOOL)content;
+ (id)_dateComponentsForYear:(int64_t)year;
+ (id)_previouslyReadPredicate;
+ (id)_recentlyEngagedPredicate;
+ (id)_recentlyReadPredicate;
+ (id)defaultManager;
+ (id)fetchRequestForContinueReading;
+ (id)fetchRequestForPreviouslyRead;
+ (id)fetchRequestForRecentlyEngaged;
+ (id)fetchRequestForRecentlyRead;
+ (id)libraryAssetsWithAssetIDsContainedInList:(id)list tempAssetIDs:(id)ds inManagedObjectContext:(id)context;
+ (id)managerWithDataSources:(id)sources;
+ (id)mostRecentlyOpenedSeriesBookWithBasePredicate:(id)predicate forBook:(id)book;
+ (id)newestSeriesBookWithBasePredicate:(id)predicate forBook:(id)book;
+ (id)persistentStoreURL;
+ (id)predicateForAllOwnedAudiobooks;
+ (id)predicateForAllOwnedBooks;
+ (id)predicateForAllStoreLibraryAssets;
+ (id)predicateForAllStoreLibraryAssetsExcludingUnpurchasedSeriesAssets;
+ (id)predicateForAssetIdentifierTaggedLibraryAsset:(id)asset;
+ (id)predicateForAssetsAvailableToAppIntentsWithTypes:(id)types;
+ (id)predicateForAssetsInCollectionID:(id)d allowExplicit:(BOOL)explicit includeSeriesItems:(BOOL)items;
+ (id)predicateForBooksShownInAllBooks;
+ (id)predicateForCollectionMembersInCollectionID:(id)d hideUnownedItems:(BOOL)items allowExplicit:(BOOL)explicit;
+ (id)predicateForCollectionMembersMatchingSearchStringLibraryAssets:(id)assets;
+ (id)predicateForCollectionMembersWithLocalAssets;
+ (id)predicateForContentWithHighWaterMarkOrReadingProgressValue:(double)value;
+ (id)predicateForHighWaterMarkCapableLibraryAssets;
+ (id)predicateForLastOpenedDateAfter:(id)after;
+ (id)predicateForLibraryAssetsMarkedAsNew;
+ (id)predicateForLibraryAssetsNotMarkedAsOld;
+ (id)predicateForMatchingSearchStringLibraryAssets:(id)assets;
+ (id)predicateForPersonalizationAffinityAssets;
+ (id)predicateForPurchasedLibraryAssets;
+ (id)predicateFor_All_Finished_LibraryAssets;
+ (id)predicateFor_All_Finished_LibraryAssetsAllowsExplicit:(BOOL)explicit;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssetsAllowsExplicit:(BOOL)explicit;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_After_Year:(int64_t)year;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_In_Year:(int64_t)year;
+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_Prior_To_Year:(int64_t)year;
+ (id)predicateToExcludeAllFinishedLibraryAssets;
+ (id)predicateToExcludeAssetsForSeriesAndStoreItemsNotAddedToCollections;
+ (id)predicateToExcludeAssetsForUnpurchasedItemsInCollection:(id)collection;
+ (id)predicateToExcludeCollectionMembersForSeriesAndStoreItemsNotAddedToCollections;
+ (id)predicateToExcludeCollectionMembersForUnpurchasedItemsInCollection:(id)collection;
+ (id)searchFetchRequestWithText:(id)text entityType:(int64_t)type;
+ (id)seriesStackBooksForBook:(id)book;
+ (unint64_t)numberOfLibraryAssetsInManagdObjectContext:(id)context;
+ (unsigned)processingOptionsFor:(id)for coverEffectsEnvironment:(id)environment;
+ (void)_fetchImageForAsset:(id)asset size:(CGSize)size includeSpine:(BOOL)spine includeShadow:(BOOL)shadow allowGeneric:(BOOL)generic coverEffectsEnvironment:(id)environment completion:(id)completion;
+ (void)deleteCloudDataWithCompletion:(id)completion;
+ (void)fetchImageForAssetID:(id)d size:(CGSize)size includeSpine:(BOOL)spine includeShadow:(BOOL)shadow coverEffectsEnvironment:(id)environment completion:(id)completion;
+ (void)fetchImageShadowForAsset:(id)asset size:(CGSize)size completion:(id)completion;
+ (void)fetchImageShadowForAssetID:(id)d size:(CGSize)size completion:(id)completion;
+ (void)initialize;
- ($3F30F48CCF81742A7D163F96C13F4EE1)cacheManager:(SEL)manager bookCoverInfoForIdentifier:(id)identifier;
- (BKLibraryCollectionManager)collectionManager;
- (BKLibraryDelegateProtocol)delegate;
- (BKLibraryManagedObjectContext)uiChildContext;
- (BKLibraryManager)init;
- (BKLibraryManager)initWithPersistentStoreURL:(id)l bdsPriceTracker:(id)tracker;
- (BOOL)_shouldPropagateNilAssetIDForDataSourceWithIdentifier:(id)identifier;
- (BOOL)examineURL:(id)l completion:(id)completion;
- (BOOL)hasBooks;
- (BOOL)isDownloadableFromLibraryAsset:(id)asset;
- (BOOL)isExplicitMaterialAllowed;
- (BOOL)isFamilyPurchaseWithFamilyID:(id)d purchaserDSID:(id)iD downloaderDSID:(id)sID;
- (NSDate)mostRecentPurchaseDate;
- (NSDictionary)_persistentStoreOptions;
- (NSString)debugDescription;
- (NSString)description;
- (id)_assetIDsForCollectionID:(id)d moc:(id)moc;
- (id)_booksWithPredicate:(id)predicate sortDescriptors:(id)descriptors context:(id)context error:(id *)error;
- (id)_dataSourceMatchingPredicate:(id)predicate;
- (id)_dataSourcesMatchingPredicate:(id)predicate;
- (id)_predicateForSearchText:(id)text;
- (id)_rawSeriesAuthorForContainerID:(id)d context:(id)context;
- (id)_rawSeriesSortAuthorForContainerID:(id)d context:(id)context;
- (id)_removeDupesByAssetID:(id)d inMoc:(id)moc;
- (id)_updateLibraryAssetWithID:(id)d withLastOpenDate:(id)date withMoc:(id)moc;
- (id)_updateMostRecentPurchaseDateCacheFromDataSources;
- (id)assetIDForAssetAtURLOnMainThread:(id)thread;
- (id)assetIDsInDataSourceWithIdentifier:(id)identifier intersectingWithAssetIDs:(id)ds;
- (id)assetIDsOfStoreAssetsWithPredicate:(id)predicate;
- (id)assetIDsOfStoreAudiobookAssets;
- (id)assetIDsOfStoreBookAssets;
- (id)bookDescriptionForAssetID:(id)d;
- (id)cloudSyncVersionsForDataType:(id)type inContext:(id)context;
- (id)contentPredicateForSeriesID:(id)d onlyPurchased:(BOOL)purchased forceCloud:(BOOL)cloud allowsExplicit:(BOOL)explicit;
- (id)dataSourceConformingToProtocol:(id)protocol;
- (id)dataSourceWithIdentifier:(id)identifier;
- (id)dataSourcesConformingToProtocol:(id)protocol;
- (id)dq_assetsToReconcile;
- (id)dragInfoFromLibraryAsset:(id)asset;
- (id)existingAssetIDsFromAssetIDs:(id)ds;
- (id)fetchMigratedProperties:(id)properties deleteFoundAssets:(BOOL)assets;
- (id)libraryAssetOnMainQueueWithAssetID:(id)d;
- (id)libraryAssetOnMainQueueWithAssetIdentifier:(id)identifier;
- (id)libraryAssetOnMainQueueWithEpubID:(id)d;
- (id)libraryAssetOnMainQueueWithFilename:(id)filename;
- (id)libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:(id)d;
- (id)libraryAssetOnMainQueueWithStoreID:(id)d;
- (id)libraryAssetWithAssetID:(id)d inManagedObjectContext:(id)context;
- (id)libraryAssetWithAssetIdentifier:(id)identifier inManagedObjectContext:(id)context;
- (id)libraryAssetWithPermanentOrTemporaryAssetID:(id)d inManagedObjectContext:(id)context;
- (id)libraryAssetWithTemporaryAssetID:(id)d inManagedObjectContext:(id)context;
- (id)libraryAssetsAsDictionaryWithProperties:(id)properties;
- (id)libraryAssetsWithAssetIDs:(id)ds inManagedObjectContext:(id)context;
- (id)libraryMutableAssetWithAssetID:(id)d inManagedObjectContext:(id)context;
- (id)libraryMutableAssetWithAssetIdentifier:(id)identifier inManagedObjectContext:(id)context;
- (id)libraryMutableAssetWithPermanentOrTemporaryAssetID:(id)d inManagedObjectContext:(id)context;
- (id)localNonSampleLibraryAssetStoreSummariesExcludeAudiobooks:(BOOL)audiobooks;
- (id)localSeriesBooksForSeriesID:(id)d context:(id)context;
- (id)metadataForAssetAtURL:(id)l needsCoordination:(BOOL)coordination;
- (id)migrationCachePath;
- (id)migrationMoc;
- (id)migrationOldDatabaseFolderPath;
- (id)mostRecentlyEngagedLibraryAssetWithTypes:(id)types inManagedObjectContext:(id)context;
- (id)mostRecentlyEngagedLibraryAssetsWithTypes:(id)types limit:(unint64_t)limit inManagedObjectContext:(id)context;
- (id)mostRecentlyOpenedBooks:(unint64_t)books inManagedObjectContext:(id)context;
- (id)mostRecentlyOpenedLibraryAssetWithTypes:(id)types inManagedObjectContext:(id)context;
- (id)mostRecentlyOpenedLibraryAssetsWithTypes:(id)types limit:(unint64_t)limit inManagedObjectContext:(id)context;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithClass:(Class)class;
- (id)newPrivateQueueManagedObjectContext;
- (id)p_libraryAssetWithIdentifier:(id)identifier predicate:(id)predicate inManagedObjectContext:(id)context;
- (id)pageProgressionDirectionForAssetAtURLOnMainThread:(id)thread;
- (id)predicateForContainerWithSeriesIDLibraryAsset:(id)asset;
- (id)predicateForHighWaterMarkCapableLibraryAssets;
- (id)predicateForIndexing;
- (id)predicateForLibraryAssetsWithSeriesID:(id)d;
- (id)predicateForMostRecentBooksOpened;
- (id)predicateForSamples;
- (id)predicateForSearchableLibraryAssets;
- (id)predicateForSeriesBooksIncludingNextForID:(id)d includeAllBooksInSeries:(BOOL)series;
- (id)predicateFor_AllAudioBooks_LibraryAssets;
- (id)predicateFor_AllBooks_LibraryAssets;
- (id)predicateFor_All_PDFs_LibraryAssets;
- (id)seriesAuthorForContainerID:(id)d context:(id)context;
- (id)seriesBooksForSeriesID:(id)d inManagedObjectContext:(id)context;
- (id)seriesContainerForSeriesID:(id)d inManagedObjectContext:(id)context;
- (id)seriesTitleForAssetID:(id)d;
- (id)sortDescriptorsForMode:(unint64_t)mode collectionID:(id)d;
- (id)spotlightAssetsWithContentTypes:(id)types searchQueryString:(id)string inManagedObjectContext:(id)context;
- (id)storeAssetIDsOfCollectionMembersWithLimit:(int64_t)limit collectionID:(id)d inMoc:(id)moc;
- (id)storeAssetIDsOfFinishedCollectionWithLimit:(int64_t)limit inMoc:(id)moc;
- (id)storeIDsForDownloadingBooks;
- (id)storeIDsOfStoreAssetsWithPredicate:(id)predicate;
- (id)validLibraryAssetIDsOnMainQueueWithAssetIDs:(id)ds;
- (id)wq_seriesIDsToResetWithLibraryManagedObjectContext:(id)context;
- (int64_t)_compareVersionWith:(id)with;
- (unint64_t)countOfPurchasedBooks;
- (unint64_t)wq_countOfBooksInContinueReadingIncludingExplicitContent:(BOOL)content limit:(unint64_t)limit onWorkerQueue:(id)queue;
- (void)_addBitmask:(unint64_t)bitmask toUpdate:(id)update inMethod:(SEL)method;
- (void)_addDataSourceIdentifierAndStateObserver:(id)observer;
- (void)_cleanUpOrphanedSampleAssets:(id)assets;
- (void)_enumerateDataSources:(id)sources intersectingWithAssetIDs:(id)ds usingBlock:(id)block;
- (void)_libraryDataSource:(id)source addedAssets:(id)assets;
- (void)_libraryDataSource:(id)source removedAssetsWithAssetIDs:(id)ds orTemporaryAssetIDs:(id)iDs;
- (void)_libraryDataSource:(id)source updatedAssets:(id)assets;
- (void)_migrateFromOldDatabase;
- (void)_newAssetIDAdded:(id)added;
- (void)_notifyDataSourceIdentifierAndStateObserversForAssetIDs:(id)ds;
- (void)_notifyLibraryOperationDone:(unint64_t)done assetIDs:(id)ds;
- (void)_performInitialDataBaseMaintenance;
- (void)_performReload;
- (void)_performReloadDataSource:(id)source completion:(id)completion;
- (void)_persistentStoreDidMigrate;
- (void)_readLibraryVesionInfo;
- (void)_reloadDataSource:(id)source completion:(id)completion;
- (void)_reloadWithCompletion:(id)completion;
- (void)_removeAllMembersFromCollection:(id)collection moc:(id)moc;
- (void)_removeBitmask:(unint64_t)bitmask fromUpdate:(id)update inMethod:(SEL)method;
- (void)_removeDataSourceIdentifierAndStateObserver:(id)observer;
- (void)_removeDupesByTemporaryAssetID:(id)d inMoc:(id)moc;
- (void)_removeDuplicateCollectionMembers;
- (void)_removePossibleDupes:(id)dupes inMoc:(id)moc;
- (void)_resetAuthorsAndStacksInContext:(id)context;
- (void)_resetNilAuthorsOnAllBooksInContext:(id)context;
- (void)_resetNilAuthorsOnAllSeriesInContext:(id)context;
- (void)_resetSeriesIDs:(id)ds;
- (void)_scheduleOperationGroupWithName:(id)name block:(id)block;
- (void)_setupCoreDataStack;
- (void)_setupUICoreDataStack;
- (void)_sortAndInitializeDataSources:(id)sources;
- (void)_sortUserCollectionToTop:(id)top moc:(id)moc;
- (void)_updateAuthorForSeriesContainer:(id)container;
- (void)_updateProcessingAuthenticationStateDeferred;
- (void)_updateProcessingAuthenticationStateImmediate;
- (void)_updateRelationshipsInContext:(id)context;
- (void)addCustomOperationBlock:(id)block;
- (void)adoptMigratedProperties:(id)properties;
- (void)allUnownedIDs:(id)ds;
- (void)allUnownedStoreAssetIDs:(id)ds;
- (void)applyPendingUpdateForAssetID:(id)d completion:(id)completion;
- (void)archiveTransientProperties:(id)properties;
- (void)assetAccountIdentifiersForAsset:(id)asset completion:(id)completion;
- (void)assetAccountIdentifiersForAssetID:(id)d path:(id)path storeID:(id)iD purchasedDSID:(id)sID downloadedDSID:(id)dSID familyID:(id)familyID dataSourceID:(id)sourceID completion:(id)self0;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)assetIDsOfPurchasedStoreAssets:(id)assets;
- (void)assetPartsForLibraryAsset:(id)asset completion:(id)completion;
- (void)beginAuthentication:(id)authentication;
- (void)bootstrapSamplesCollectionIfNeeded;
- (void)cacheManager:(id)manager explicitIdentifiersWithCompletion:(id)completion;
- (void)cancelDownloadingAsset:(id)asset;
- (void)checkDatabaseIntegrity;
- (void)checkNonSeriesAudiobooksWithManagedObjectContext:(id)context;
- (void)checkOwnedSingleBookSeriesWithManagedObjectContext:(id)context;
- (void)cleanupDateFinished;
- (void)cleanupDefaultCollections;
- (void)clearAgingDocumentInbox;
- (void)clearMostRecentPurchaseDateCache;
- (void)collectionManagerDidModifyWantToReadCollection:(id)collection;
- (void)collectionsWorkerManagedObjectContextDidSaveNotification:(id)notification;
- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)d total:(unint64_t *)total finished:(unint64_t *)finished context:(id)context;
- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)d total:(unint64_t *)total markedFinished:(unint64_t *)finished context:(id)context;
- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)d total:(unint64_t *)total purchased:(unint64_t *)purchased context:(id)context;
- (void)createSeriesUpdaterMoc;
- (void)dealloc;
- (void)deleteAssetIDs:(id)ds exhaustive:(BOOL)exhaustive;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)didCloseLibraryAsset:(id)asset;
- (void)didHidePurchasedAssetID:(id)d;
- (void)dq_libraryDataSource:(id)source reconcileAssets:(id)assets reason:(signed __int16)reason;
- (void)dq_sync:(id)dq_sync;
- (void)dq_unclaimAllLibraryAssetsWithContext:(id)context;
- (void)dq_unclaimIdentifiers:(id)identifiers forDataSourceBitmask:(unint64_t)bitmask;
- (void)earliestPurchaseTimestampWithCompletion:(id)completion;
- (void)fetchLibraryAssetFromAssetID:(id)d handler:(id)handler;
- (void)fetchLibraryAssetFromStoreID:(id)d handler:(id)handler;
- (void)fetchLibraryAssetsFromAssetIDs:(id)ds handler:(id)handler;
- (void)fetchLibraryAssetsFromStoreIDs:(id)ds handler:(id)handler;
- (void)finalizeAuthentication:(id)authentication;
- (void)hiddenAssetStoreIDsWithCompletion:(id)completion;
- (void)initializeMostRecentPurchaseDateCacheIfNeeded;
- (void)isTrackedAsRecent:(id)recent completion:(id)completion;
- (void)libraryDataSource:(id)source addedAsset:(id)asset;
- (void)libraryDataSource:(id)source addedAsset:(id)asset inGroup:(id)group;
- (void)libraryDataSource:(id)source addedAssets:(id)assets;
- (void)libraryDataSource:(id)source addedAssets:(id)assets inGroup:(id)group;
- (void)libraryDataSource:(id)source notifyBlock:(id)block inGroup:(id)group;
- (void)libraryDataSource:(id)source reloadInGroup:(id)group;
- (void)libraryDataSource:(id)source removeImagesForAsset:(id)asset;
- (void)libraryDataSource:(id)source removedAsset:(id)asset;
- (void)libraryDataSource:(id)source removedAsset:(id)asset inGroup:(id)group;
- (void)libraryDataSource:(id)source removedAssets:(id)assets;
- (void)libraryDataSource:(id)source removedAssets:(id)assets inGroup:(id)group;
- (void)libraryDataSource:(id)source removedAssetsWithAssetIDs:(id)ds orTemporaryAssetIDs:(id)iDs;
- (void)libraryDataSource:(id)source removedAssetsWithAssetIDs:(id)ds orTemporaryAssetIDs:(id)iDs inGroup:(id)group;
- (void)libraryDataSource:(id)source updatedAsset:(id)asset;
- (void)libraryDataSource:(id)source updatedAsset:(id)asset inGroup:(id)group;
- (void)libraryDataSource:(id)source updatedAssets:(id)assets;
- (void)libraryDataSource:(id)source updatedAssets:(id)assets inGroup:(id)group;
- (void)loadCachedMigrationData;
- (void)logCounts;
- (void)managedBooksDidChange;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
- (void)migrateCollections:(id)collections context:(id)context;
- (void)migrateDataSources:(id)sources;
- (void)migrateLibraryIfNeeded;
- (void)migrateMetaData:(id)data;
- (void)migratePurgeOldDatabases;
- (void)migrateSortOrderKeys:(id)keys;
- (void)migrateToMyBooksWithAssetIDs:(id)ds inManagedObjectContext:(id)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)otherManagedObjectContextDidSaveNotification:(id)notification;
- (void)p_deleteAssets:(id)assets;
- (void)p_deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)performBackgroundReadOnlyBlock:(id)block;
- (void)performBackgroundReadOnlyBlockAndWait:(id)wait;
- (void)performBlockInUIContext:(id)context completion:(id)completion;
- (void)performBlockOnCollectionsWorkerQueue:(id)queue;
- (void)performBlockOnCollectionsWorkerQueueAndWait:(id)wait;
- (void)performNamed:(id)named workerQueueBlock:(id)block;
- (void)performNamed:(id)named workerQueueBlockAndWait:(id)wait;
- (void)prioritizeImport:(id)import completion:(id)completion;
- (void)purgeRecentBooks:(id)books completion:(id)completion;
- (void)purgeRecentsListFromAllBooksOlderThanDate:(id)date;
- (void)q_removeOldMigrationData;
- (void)queryRootFolderShorthandsWithRegistrationBlock:(id)block;
- (void)rawBookCoverForLibraryAsset:(id)asset completion:(id)completion;
- (void)readingTimeTracker:(id)tracker cleanupBooksFinishedBefore:(id)before completion:(id)completion;
- (void)readingTimeTracker:(id)tracker cleanupFinishedBooksExcluding:(id)excluding completion:(id)completion;
- (void)readingTimeTracker:(id)tracker isAssetTrackedAsRecent:(id)recent completion:(id)completion;
- (void)readingTimeTracker:(id)tracker updateRecentBook:(id)book promoteIfNotTracked:(BOOL)tracked completion:(id)completion;
- (void)readingTimeTrackerHasRecentAssets:(id)assets completion:(id)completion;
- (void)recentsNotEngagedSinceDateForSamples:(id)samples dateForNonSamples:(id)nonSamples completion:(id)completion;
- (void)refreshFamily;
- (void)reloadDataSource:(id)source completion:(id)completion;
- (void)reloadWithCompletion:(id)completion;
- (void)resetCover:(id)cover;
- (void)resolveLibraryAsset:(id)asset completion:(id)completion;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
- (void)saveCachedMigrationData;
- (void)seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:(id)date limit:(unint64_t)limit;
- (void)seriesUpdaterMocObjectsDidChange:(id)change;
- (void)seriesUpdaterResetWithIDs:(id)ds;
- (void)setCloudStateOnAssetWithID:(id)d;
- (void)setUIManagerProviderForAddingToWantToReadBlock:(id)block;
- (void)storeAssetIDsOfWantToReadWithLimit:(int64_t)limit completion:(id)completion;
- (void)tearDownPersistentStores;
- (void)toggleDownloadPausedForAsset:(id)asset;
- (void)triggerCloudSync:(BOOL)sync;
- (void)uiManagedObjectContextDidSaveNotification:(id)notification;
- (void)updateAsset:(id)asset coverArt:(id)art completion:(id)completion;
- (void)updateAsset:(id)asset fromURL:(id)l completion:(id)completion;
- (void)updateAssetWithID:(id)d url:(id)url;
- (void)updateCloudVersionFromCloudSyncVersions:(id)versions inContext:(id)context;
- (void)updateIsDownloadingSupplementalContentAndCombinedState:(id)state;
- (void)updateLibraryAssetWithID:(id)d isEphemeral:(BOOL)ephemeral completion:(id)completion;
- (void)updateLibraryAssetWithID:(id)d withLastOpenDate:(id)date completion:(id)completion;
- (void)updateLibraryAssetWithID:(id)d withTitle:(id)title;
- (void)updateMostRecentPurchaseDateCacheFromLibrary;
- (void)updateSeriesContainerSeriesStackAssetIDs:(id)ds;
- (void)updateSeriesRelationshipsForSeriesAsset:(id)asset;
- (void)updateSeriesRelationshipsForSeriesContainer:(id)container;
- (void)updateSupplementalContentRelationship:(id)relationship;
- (void)updateURL:(id)l completion:(id)completion;
- (void)waitForAssetID:(id)d completion:(id)completion;
- (void)waitForAssetToFinishDownloadWithAssetID:(id)d resolveAsset:(BOOL)asset completion:(id)completion;
- (void)workerManagedObjectContextDidSaveNotification:(id)notification;
- (void)wq_dq_integrateClaimedAssetsReason:(signed __int16)reason context:(id)context;
- (void)wq_dq_saveDatabaseContext:(id)context;
- (void)wq_reconcileDataSourceAssetsForReason:(signed __int16)reason context:(id)context;
- (void)wq_seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:(id)date limit:(unint64_t)limit onWorkerQueue:(id)queue;
@end

@implementation BKLibraryManager

+ (void)initialize
{
  if (objc_opt_class() == self)
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

+ (id)managerWithDataSources:(id)sources
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7E04;
  block[3] = &unk_D5528;
  sourcesCopy = sources;
  v3 = qword_EFC68;
  v4 = sourcesCopy;
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
  dataSources = [(BKLibraryManager *)self dataSources];
  v5 = [dataSources countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(dataSources);
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

      v5 = [dataSources countByEnumeratingWithState:&v21 objects:v33 count:16];
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
  _updateMostRecentPurchaseDateCacheFromDataSources = BUDynamicCast();

  if (!_updateMostRecentPurchaseDateCacheFromDataSources)
  {
    _updateMostRecentPurchaseDateCacheFromDataSources = [(BKLibraryManager *)self _updateMostRecentPurchaseDateCacheFromDataSources];
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

    _updateMostRecentPurchaseDateCacheFromDataSources = v6;
  }

  return _updateMostRecentPurchaseDateCacheFromDataSources;
}

+ (BOOL)isDirectoryFileName:(id)name
{
  pathExtension = [name pathExtension];
  if ([pathExtension isEqualToString:@"epub"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathExtension isEqualToString:@"ibooks"];
  }

  return v4;
}

- (BKLibraryManager)init
{
  persistentStoreURL = [objc_opt_class() persistentStoreURL];
  v4 = objc_opt_new();
  v5 = [(BKLibraryManager *)self initWithPersistentStoreURL:persistentStoreURL bdsPriceTracker:v4];

  return v5;
}

- (BKLibraryManager)initWithPersistentStoreURL:(id)l bdsPriceTracker:(id)tracker
{
  lCopy = l;
  trackerCopy = tracker;
  kdebug_trace();
  v100.receiver = self;
  v100.super_class = BKLibraryManager;
  v90 = [(BKLibraryManager *)&v100 initWithPersistentStoreURL:lCopy];
  if (v90)
  {
    v90->_notifyLockForNewAssets._os_unfair_lock_opaque = 0;
    v7 = +[NSMutableDictionary dictionary];
    notifyBlocksForNewAssets = v90->_notifyBlocksForNewAssets;
    v90->_notifyBlocksForNewAssets = v7;

    persistentStoreURL = [objc_opt_class() persistentStoreURL];
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

      [v89 removeItemAtURL:persistentStoreURL error:0];
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

    path = [persistentStoreURL path];
    v84 = [v89 fileExistsAtPath:path isDirectory:0];

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.iBooks.reloadSingleDispatchQueue", v19);
    migrationDispatchQueue = v90->_migrationDispatchQueue;
    v90->_migrationDispatchQueue = v20;

    uRLByDeletingLastPathComponent = [persistentStoreURL URLByDeletingLastPathComponent];
    path2 = [uRLByDeletingLastPathComponent path];
    v23 = [v89 fileExistsAtPath:path2 isDirectory:0];

    if ((v23 & 1) == 0)
    {
      [v89 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
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
    persistentStoreCoordinator = [v25 persistentStoreCoordinator];
    v102[0] = @"state";
    v102[1] = @"dataSourceIdentifier";
    v34 = [NSArray arrayWithObjects:v102 count:2];
    v35 = [NSSet setWithArray:v34];
    v36 = [v32 initWithContext:0 coordinator:persistentStoreCoordinator entityName:@"BKLibraryAsset" predicate:v86 mapProperty:@"assetID" propertiesOfInterest:v35 observer:v25];
    v37 = v25[34];
    v25[34] = v36;

    v38 = [BCManagedObjectIDMonitor alloc];
    persistentStoreCoordinator2 = [v25 persistentStoreCoordinator];
    v101[0] = @"state";
    v101[1] = @"dataSourceIdentifier";
    v40 = [NSArray arrayWithObjects:v101 count:2];
    v41 = [NSSet setWithArray:v40];
    v42 = [v38 initWithContext:0 coordinator:persistentStoreCoordinator2 entityName:@"BKLibraryAsset" predicate:v86 mapProperty:@"temporaryAssetID" propertiesOfInterest:v41 observer:v25];
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
    v81 = [[BKLibraryPriceTracker alloc] initWithLibraryManager:v25 bdsPriceTracker:trackerCopy];
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
  workerChildContext = [(BKLibraryManager *)self workerChildContext];
  workerChildContext = self->_workerChildContext;
  self->_workerChildContext = 0;

  v30 = workerChildContext;
  [workerChildContext performBlockAndWait:&stru_D5740];
  collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
  collectionsWorkerChildContext = self->_collectionsWorkerChildContext;
  self->_collectionsWorkerChildContext = 0;

  v29 = collectionsWorkerChildContext;
  [collectionsWorkerChildContext performBlockAndWait:&stru_D5760];
  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  uiChildContext = self->_uiChildContext;
  self->_uiChildContext = 0;

  v28 = uiChildContext;
  [uiChildContext performBlockAndWait:&stru_D5780];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  persistentStoreCoordinator = [(BKLibraryManager *)self persistentStoreCoordinator];
  v52[0] = persistentStoreCoordinator;
  ui_persistentStoreCoordinator = [(BKLibraryManager *)self ui_persistentStoreCoordinator];
  v52[1] = ui_persistentStoreCoordinator;
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
        persistentStores = [v13 persistentStores];
        v15 = [persistentStores copy];

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
                  persistentStoreURL = [(BKLibraryManager *)self persistentStoreURL];
                  *buf = 138412802;
                  selfCopy2 = self;
                  v47 = 2112;
                  v48 = v20;
                  v49 = 2112;
                  v50 = persistentStoreURL;
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

        persistentStoreURL2 = [(BKLibraryManager *)self persistentStoreURL];
        _persistentStoreOptions = [(BKLibraryManager *)self _persistentStoreOptions];
        v35 = 0;
        [v13 destroyPersistentStoreAtURL:persistentStoreURL2 withType:NSSQLiteStoreType options:_persistentStoreOptions error:&v35];
        v26 = v35;

        if (v26 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          persistentStoreURL3 = [(BKLibraryManager *)self persistentStoreURL];
          *buf = 138412546;
          selfCopy2 = self;
          v47 = 2112;
          v48 = persistentStoreURL3;
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

- (void)_cleanUpOrphanedSampleAssets:(id)assets
{
  assetsCopy = assets;
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v4 = [NSPredicate predicateWithFormat:@"isSample == 1 AND collectionMembers.@count == 0"];
  [v3 setPredicate:v4];

  v5 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v3];
  v6 = [assetsCopy executeRequest:v5 error:0];
}

- (id)_assetIDsForCollectionID:(id)d moc:(id)moc
{
  mocCopy = moc;
  v6 = [NSPredicate predicateWithFormat:@"collection.collectionID == %@ AND (asset.isHidden == NO OR asset.isHidden == NULL) AND (asset.isEphemeral == NO OR asset.isEphemeral == NULL) AND asset.state != %@", d, &off_DDF58];
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  [v7 setPredicate:v6];
  v8 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
  v16 = v8;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  [v7 setSortDescriptors:v9];

  v15 = 0;
  v10 = [mocCopy executeFetchRequest:v7 error:&v15];

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

- (void)_removeAllMembersFromCollection:(id)collection moc:(id)moc
{
  collectionCopy = collection;
  mocCopy = moc;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  collectionCopy = [NSPredicate predicateWithFormat:@"collection.collectionID == %@", collectionCopy];
  [v7 setPredicate:collectionCopy];

  [v7 setFetchBatchSize:32];
  v20 = 0;
  v9 = [mocCopy executeFetchRequest:v7 error:&v20];
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

          [mocCopy deleteObject:*(*(&v16 + 1) + 8 * i)];
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

- (void)_sortUserCollectionToTop:(id)top moc:(id)moc
{
  topCopy = top;
  mocCopy = moc;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollection"];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:0];
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  [v8 setSortDescriptors:v10];

  v11 = +[BKCollection predicateForNonDeletedUserCollections];
  [v8 setPredicate:v11];

  v16 = 0;
  v12 = [mocCopy executeFetchRequest:v8 error:&v16];

  v13 = v16;
  if (v12)
  {
    v14 = [v12 mutableCopy];
    v15 = [v14 indexOfObject:topCopy];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v14 removeObjectAtIndex:v15];
      [v14 addObject:topCopy];
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

- (void)migrateToMyBooksWithAssetIDs:(id)ds inManagedObjectContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  if ([dsCopy count])
  {
    v8 = [(BKLibraryManager *)self _assetIDsForCollectionID:kBKCollectionDefaultIDBooks moc:contextCopy];
    v9 = [dsCopy isEqualToArray:v8];
    collectionController = BKLibraryLog();
    v11 = os_log_type_enabled(collectionController, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_0, collectionController, OS_LOG_TYPE_INFO, "My Books: Migration not needed for Books collection - collections match", buf, 2u);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 134218240;
        v50 = [dsCopy count];
        v51 = 2048;
        v52 = [v8 count];
        _os_log_impl(&dword_0, collectionController, OS_LOG_TYPE_INFO, "My Books: Migrating items in Books collection (old: %lu new: %lu).", buf, 0x16u);
      }

      collectionController = [(BKLibraryManager *)self collectionController];
      v38 = +[BCCollection identifierForMyBooksCollection];
      v12 = [NSObject mutableCollectionWithCollectionID:collectionController inManagedObjectContext:"mutableCollectionWithCollectionID:inManagedObjectContext:error:" error:?];
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
        selfCopy = self;
        collectionProvider = [(BKLibraryManager *)self collectionProvider];
        v15 = [collectionProvider userCollectionsInManagedObjectContext:contextCopy withError:0];
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

              title = [*(*(&v43 + 1) + 8 * i) title];
              if (title)
              {
                [v16 addObject:title];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v19);
        }

        v23 = [BCCollection uniqueTitleForMyBooksCollection:v16];
        v13 = [BKCollection insertNewCollectionWithCollectionID:v38 inManagedObjectContext:contextCopy];
        [v13 setTitle:v23];
        v24 = BKLibraryLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "My Books: Created collection", buf, 2u);
        }

        v36 = v23;

        v14 = collectionProvider;
        self = selfCopy;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = dsCopy;
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
        [(BKLibraryManager *)self _sortUserCollectionToTop:v13 moc:contextCopy];
        [v13 setLocalModDate:0];
        delegate = [(BKLibraryManager *)self delegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          delegate2 = [(BKLibraryManager *)self delegate];
          [delegate2 didMigrateBooksCollection:v36];
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

- (void)_updateRelationshipsInContext:(id)context
{
  contextCopy = context;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  migrationDispatchQueue = [(BKLibraryManager *)self migrationDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B04C;
  block[3] = &unk_D57A8;
  block[4] = &v42;
  dispatch_sync(migrationDispatchQueue, block);

  if (*(v43 + 24) == 1)
  {
    v6 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    v7 = [NSPredicate predicateWithFormat:@"seriesID != NULL AND contentType != %@ AND seriesContainer == NULL", &off_DDF58];
    [v6 setPredicate:v7];

    [v6 setFetchBatchSize:32];
    v8 = [contextCopy executeFetchRequest:v6 error:0];
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
          seriesContainer = [v14 seriesContainer];
          seriesID = [v14 seriesID];
          [v9 setObject:seriesContainer forKeyedSubscript:seriesID];
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
    [contextCopy executeFetchRequest:v22 error:0];
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

    migrationDispatchQueue2 = [(BKLibraryManager *)self migrationDispatchQueue];
    dispatch_sync(migrationDispatchQueue2, &stru_D57C8);
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

- (int64_t)_compareVersionWith:(id)with
{
  withCopy = with;
  v5 = [withCopy componentsSeparatedByString:@"."];
  if ([v5 count] == &dword_0 + 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    integerValue = [v6 integerValue];

    v8 = [v5 objectAtIndexedSubscript:1];
    integerValue2 = [v8 integerValue];

    if (integerValue == [(BKLibraryManager *)self majorVersion])
    {
      if (integerValue2 == [(BKLibraryManager *)self minorVersion])
      {
        v10 = 0;
        goto LABEL_13;
      }

      v12 = integerValue2 >= [(BKLibraryManager *)self minorVersion];
    }

    else
    {
      v12 = integerValue >= [(BKLibraryManager *)self majorVersion];
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

- (void)_scheduleOperationGroupWithName:(id)name block:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    nameCopy = name;
    v8 = [[BKLibraryUpdateGroup alloc] initWithName:nameCopy];

    updatesScheduleQueue = [(BKLibraryManager *)self updatesScheduleQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_B418;
    block[3] = &unk_D57F0;
    block[4] = self;
    v13 = v8;
    v14 = blockCopy;
    v10 = v8;
    dispatch_async(updatesScheduleQueue, block);

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
  ui_persistentStoreCoordinator = [(BKLibraryManager *)self ui_persistentStoreCoordinator];
  [(BKLibraryManagedObjectContext *)self->_uiChildContext setPersistentStoreCoordinator:ui_persistentStoreCoordinator];

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
  managedObjectModel = [(BKLibraryManager *)self managedObjectModel];
  v5 = [v3 initWithManagedObjectModel:managedObjectModel];
  ui_persistentStoreCoordinator = self->_ui_persistentStoreCoordinator;
  self->_ui_persistentStoreCoordinator = v5;

  v7 = self->_ui_persistentStoreCoordinator;
  if (v7 || (BCReportAssertionFailureWithMessage(), (v7 = self->_ui_persistentStoreCoordinator) != 0))
  {
    persistentStoreURL = [(BKLibraryManager *)self persistentStoreURL];
    _persistentStoreOptions = [(BKLibraryManager *)self _persistentStoreOptions];
    v38 = 0;
    v10 = [(NSPersistentStoreCoordinator *)v7 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:persistentStoreURL options:_persistentStoreOptions error:&v38];
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

  workerChildContext = [(BKLibraryManager *)self workerChildContext];
  [workerChildContext setName:@"Worker Context"];

  persistentStoreCoordinator = [(BKLibraryManager *)self persistentStoreCoordinator];
  workerChildContext2 = [(BKLibraryManager *)self workerChildContext];
  [workerChildContext2 setPersistentStoreCoordinator:persistentStoreCoordinator];

  workerChildContext3 = [(BKLibraryManager *)self workerChildContext];
  [workerChildContext3 setUndoManager:0];

  v19 = NSMergeByPropertyObjectTrumpMergePolicy;
  workerChildContext4 = [(BKLibraryManager *)self workerChildContext];
  [workerChildContext4 setMergePolicy:v19];

  workerChildContext5 = [(BKLibraryManager *)self workerChildContext];
  [workerChildContext5 setLibraryManager:self];

  v22 = [[BKLibraryManagedObjectContext alloc] initWithConcurrencyType:1];
  [(BKLibraryManager *)self setCollectionsWorkerChildContext:v22];

  collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [collectionsWorkerChildContext setName:@"Collections Worker Context"];

  persistentStoreCoordinator2 = [(BKLibraryManager *)self persistentStoreCoordinator];
  collectionsWorkerChildContext2 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [collectionsWorkerChildContext2 setPersistentStoreCoordinator:persistentStoreCoordinator2];

  collectionsWorkerChildContext3 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [collectionsWorkerChildContext3 setUndoManager:0];

  v27 = NSMergeByPropertyObjectTrumpMergePolicy;
  collectionsWorkerChildContext4 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [collectionsWorkerChildContext4 setMergePolicy:v27];

  collectionsWorkerChildContext5 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [collectionsWorkerChildContext5 setLibraryManager:self];

  v30 = [[BKLibraryManagedObjectContext alloc] initWithConcurrencyType:1];
  readOnlyChildContext = self->_readOnlyChildContext;
  self->_readOnlyChildContext = v30;

  [(BKLibraryManagedObjectContext *)self->_readOnlyChildContext setName:@"Read-only Child Context"];
  persistentStoreCoordinator3 = [(BKLibraryManager *)self persistentStoreCoordinator];
  [(BKLibraryManagedObjectContext *)self->_readOnlyChildContext setPersistentStoreCoordinator:persistentStoreCoordinator3];

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
  workerChildContext6 = [(BKLibraryManager *)self workerChildContext];
  [v34 addObserver:self selector:"workerManagedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:workerChildContext6];

  collectionsWorkerChildContext6 = [(BKLibraryManager *)self collectionsWorkerChildContext];
  [v34 addObserver:self selector:"collectionsWorkerManagedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:collectionsWorkerChildContext6];

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
  dataSources = [(BKLibraryManager *)self dataSources];
  v7 = [dataSources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 removeObserver:self forKeyPath:@"processingAuthentication" context:off_EE768];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [dataSources countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = BKLibraryManager;
  [(BKLibraryManager *)&v12 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (off_EE768 == context)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([objectCopy processingAuthentication])
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
    [(BKLibraryManager *)&v11 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

- (NSString)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend(v3, "appendFormat:", @"<%@: %p dataSources=("), v5, self;

  dataSources = [(BKLibraryManager *)self dataSources];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [dataSources countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [dataSources indexOfObjectIdenticalTo:v11];
        v13 = 1 << v12;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 0;
        }

        [v3 appendFormat:@"%@ b=%#lx, ", v11, v13];
      }

      v8 = [dataSources countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  dataSources2 = [(BKLibraryManager *)self dataSources];
  v15 = [dataSources2 count];

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

  dataSources = [(BKLibraryManager *)self dataSources];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = [dataSources countByEnumeratingWithState:&v48 objects:v53 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        v12 = [dataSources indexOfObjectIdenticalTo:v11];
        v13 = 1 << v12;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 0;
        }

        [v3 appendFormat:@"%@ b=%#lx, \n", v11, v13];
      }

      v8 = [dataSources countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v8);
  }

  dataSources2 = [(BKLibraryManager *)self dataSources];
  v15 = [dataSources2 count];

  if (v15)
  {
    [v3 replaceCharactersInRange:objc_msgSend(v3 withString:{"length") - 2, 2, &stru_D8298}];
  }

  [v3 appendFormat:@">"]);
  [v3 appendFormat:@"assetUpdatesByIdentifier={\n"];
  selfCopy = self;
  assetUpdatesByIdentifier = [(BKLibraryManager *)self assetUpdatesByIdentifier];
  allKeys = [assetUpdatesByIdentifier allKeys];
  v18 = [allKeys sortedArrayUsingSelector:"compare:"];

  v19 = [v18 count];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    do
    {
      v22 = [v18 objectAtIndexedSubscript:v21];
      v23 = [assetUpdatesByIdentifier objectForKeyedSubscript:v22];
      v24 = sub_C48C([v23 dataSourcesBitmask], dataSources);
      identifier = [v24 identifier];
      v26 = identifier;
      --v20;
      v27 = &stru_D8298;
      if (v20)
      {
        v27 = @",";
      }

      [v3 appendFormat:@"%@=%@ dataSource=%@%@\n", v22, v23, identifier, v27];

      ++v21;
    }

    while (v20);
  }

  v44 = v18;
  v47 = assetUpdatesByIdentifier;
  [v3 appendFormat:@"}\n"];
  unclaimedAssetIDs = [(BKLibraryManager *)selfCopy unclaimedAssetIDs];
  unclaimedTemporaryAssetIDs = [(BKLibraryManager *)selfCopy unclaimedTemporaryAssetIDs];
  [v3 appendFormat:@"unclaimedAssetIDs=%@\nunclaimedTemporaryAssetIDs=%@\n", unclaimedAssetIDs, unclaimedTemporaryAssetIDs];

  v30 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v52[0] = @"assetID";
  v52[1] = @"temporaryAssetID";
  v52[2] = @"title";
  v52[3] = @"dataSourceIdentifier";
  v31 = [NSArray arrayWithObjects:v52 count:4];
  [v30 setPropertiesToFetch:v31];

  [v30 setResultType:2];
  uiChildContext = [(BKLibraryManager *)selfCopy uiChildContext];
  v46 = v30;
  v33 = [uiChildContext executeFetchRequest:v30 error:0];

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

- (void)dq_sync:(id)dq_sync
{
  if (dq_sync)
  {
    dq_syncCopy = dq_sync;
    dqSyncQueue = [(BKLibraryManager *)self dqSyncQueue];
    dispatch_sync(dqSyncQueue, dq_syncCopy);
  }
}

- (void)uiManagedObjectContextDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:NSInsertedObjectsKey];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKey:NSUpdatedObjectsKey];

  userInfo3 = [notificationCopy userInfo];
  v10 = [userInfo3 objectForKey:NSDeletedObjectsKey];

  if ([v6 count] || objc_msgSend(v8, "count") || objc_msgSend(v10, "count"))
  {
    workerChildContext = [(BKLibraryManager *)self workerChildContext];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_C738;
    v22[3] = &unk_D5420;
    v22[4] = self;
    v12 = notificationCopy;
    v23 = v12;
    [workerChildContext performBlock:v22];

    collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_C78C;
    v19 = &unk_D5420;
    selfCopy = self;
    v14 = v12;
    v21 = v14;
    [collectionsWorkerChildContext performBlock:&v16];

    v15 = [(BKLibraryManager *)self backgroundReadOnlyContextPool:v16];
    [v15 remoteContextDidSave:v14];
  }
}

- (void)workerManagedObjectContextDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:NSInsertedObjectsKey];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKey:NSUpdatedObjectsKey];

  userInfo3 = [notificationCopy userInfo];
  v10 = [userInfo3 objectForKey:NSDeletedObjectsKey];

  if ([v6 count] || objc_msgSend(v8, "count") || objc_msgSend(v10, "count"))
  {
    uiChildContext = self->_uiChildContext;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_C9E0;
    v22[3] = &unk_D5420;
    v22[4] = self;
    v12 = notificationCopy;
    v23 = v12;
    [(BKLibraryManagedObjectContext *)uiChildContext performBlock:v22];
    collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_CAA8;
    v19 = &unk_D5420;
    selfCopy = self;
    v14 = v12;
    v21 = v14;
    [collectionsWorkerChildContext performBlock:&v16];

    v15 = [(BKLibraryManager *)self backgroundReadOnlyContextPool:v16];
    [v15 remoteContextDidSave:v14];
  }
}

- (void)collectionsWorkerManagedObjectContextDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:NSInsertedObjectsKey];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKey:NSUpdatedObjectsKey];

  userInfo3 = [notificationCopy userInfo];
  v10 = [userInfo3 objectForKey:NSDeletedObjectsKey];

  if ([v6 count] || objc_msgSend(v8, "count") || objc_msgSend(v10, "count"))
  {
    uiChildContext = self->_uiChildContext;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_CCFC;
    v22[3] = &unk_D5420;
    v22[4] = self;
    v12 = notificationCopy;
    v23 = v12;
    [(BKLibraryManagedObjectContext *)uiChildContext performBlock:v22];
    workerChildContext = [(BKLibraryManager *)self workerChildContext];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_CDC4;
    v19 = &unk_D5420;
    selfCopy = self;
    v14 = v12;
    v21 = v14;
    [workerChildContext performBlock:&v16];

    v15 = [(BKLibraryManager *)self backgroundReadOnlyContextPool:v16];
    [v15 remoteContextDidSave:v14];
  }
}

- (void)otherManagedObjectContextDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object != self->_uiChildContext)
  {
    workerChildContext = [(BKLibraryManager *)self workerChildContext];
    if (object == workerChildContext)
    {
LABEL_11:

      goto LABEL_12;
    }

    collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
    if (object == collectionsWorkerChildContext)
    {
LABEL_10:

      goto LABEL_11;
    }

    persistentStoreCoordinator = [(BKLibraryManagedObjectContext *)object persistentStoreCoordinator];
    persistentStoreCoordinator2 = [(BKLibraryManager *)self persistentStoreCoordinator];
    v10 = [persistentStoreCoordinator hasStoreInCommonWith:persistentStoreCoordinator2];

    if (v10)
    {
      userInfo = [notificationCopy userInfo];
      workerChildContext = [userInfo objectForKey:NSInsertedObjectsKey];

      userInfo2 = [notificationCopy userInfo];
      collectionsWorkerChildContext = [userInfo2 objectForKey:NSUpdatedObjectsKey];

      userInfo3 = [notificationCopy userInfo];
      v14 = [userInfo3 objectForKey:NSDeletedObjectsKey];

      if (-[BKLibraryManagedObjectContext count](workerChildContext, "count") || -[BKLibraryManagedObjectContext count](collectionsWorkerChildContext, "count") || [v14 count])
      {
        uiChildContext = self->_uiChildContext;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_D120;
        v30[3] = &unk_D5420;
        v30[4] = self;
        v16 = notificationCopy;
        v31 = v16;
        [(BKLibraryManagedObjectContext *)uiChildContext performBlock:v30];
        workerChildContext2 = [(BKLibraryManager *)self workerChildContext];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_D1E8;
        v28[3] = &unk_D5420;
        v28[4] = self;
        v18 = v16;
        v29 = v18;
        [workerChildContext2 performBlock:v28];

        collectionsWorkerChildContext2 = [(BKLibraryManager *)self collectionsWorkerChildContext];
        v22 = _NSConcreteStackBlock;
        v23 = 3221225472;
        v24 = sub_D23C;
        v25 = &unk_D5420;
        selfCopy = self;
        v20 = v18;
        v27 = v20;
        [collectionsWorkerChildContext2 performBlock:&v22];

        v21 = [(BKLibraryManager *)self backgroundReadOnlyContextPool:v22];
        [v21 remoteContextDidSave:v20];
      }

      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)performBlockOnCollectionsWorkerQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
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

    collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_D3BC;
    v10[3] = &unk_D5840;
    v12 = v6;
    v10[4] = self;
    v11 = queueCopy;
    [collectionsWorkerChildContext performBlock:v10];
  }
}

- (void)performBlockOnCollectionsWorkerQueueAndWait:(id)wait
{
  waitCopy = wait;
  if (+[NSThread isMainThread])
  {
    v5 = BKLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_8D784();
    }
  }

  if (waitCopy)
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

    collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_D6A8;
    v11[3] = &unk_D5840;
    v13 = v7;
    v11[4] = self;
    v12 = waitCopy;
    [collectionsWorkerChildContext performBlockAndWait:v11];
  }
}

- (void)performNamed:(id)named workerQueueBlock:(id)block
{
  namedCopy = named;
  blockCopy = block;
  v8 = BCSignpostLibrary();
  v9 = os_signpost_id_generate(v8);

  v10 = BCSignpostLibrary();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138543362;
    v20 = namedCopy;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_EVENT, v9, "WorkerQueueAsyncScheduled", "%{public}@", buf, 0xCu);
  }

  workerChildContext = [(BKLibraryManager *)self workerChildContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_D9CC;
  v15[3] = &unk_D57F0;
  selfCopy = self;
  v18 = blockCopy;
  v16 = namedCopy;
  v13 = blockCopy;
  v14 = namedCopy;
  [workerChildContext performBlock:v15];
}

- (void)performNamed:(id)named workerQueueBlockAndWait:(id)wait
{
  namedCopy = named;
  waitCopy = wait;
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
    v21 = namedCopy;
    _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, v10, "WorkerQueueSyncScheduled", "%{public}@", buf, 0xCu);
  }

  workerChildContext = [(BKLibraryManager *)self workerChildContext];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_DD74;
  v16[3] = &unk_D57F0;
  selfCopy = self;
  v19 = waitCopy;
  v17 = namedCopy;
  v14 = waitCopy;
  v15 = namedCopy;
  [workerChildContext performBlockAndWait:v16];
}

- (void)performBlockInUIContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!+[NSThread isMainThread])
  {
    sub_8D7C4();
  }

  if (contextCopy)
  {
    uiChildContext = [(BKLibraryManager *)self uiChildContext];
    contextCopy[2](contextCopy, uiChildContext);
  }

  else
  {
    sub_8D800(self, &v12);
    uiChildContext = v12;
  }

  if ([uiChildContext hasChanges])
  {
    [uiChildContext setSaveContext:2];
    [uiChildContext save:0];
  }

  v8 = objc_retainBlock(completionCopy);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }
}

- (void)performBackgroundReadOnlyBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    backgroundReadOnlyContextPool = [(BKLibraryManager *)self backgroundReadOnlyContextPool];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_E0FC;
    v6[3] = &unk_D5868;
    v7 = blockCopy;
    [backgroundReadOnlyContextPool performReadOnlyBlock:v6];
  }
}

- (void)performBackgroundReadOnlyBlockAndWait:(id)wait
{
  waitCopy = wait;
  if (waitCopy)
  {
    v5 = dispatch_semaphore_create(0);
    backgroundReadOnlyContextPool = [(BKLibraryManager *)self backgroundReadOnlyContextPool];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E1EC;
    v8[3] = &unk_D5890;
    v9 = v5;
    v10 = waitCopy;
    v7 = v5;
    [backgroundReadOnlyContextPool performReadOnlyBlock:v8];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (id)newManagedObjectContextWithClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = BKLibraryManager;
  return [(BKLibraryManager *)&v4 newManagedObjectContextWithClass:class];
}

- (BOOL)hasBooks
{
  if (!+[NSThread isMainThread])
  {
    sub_8D858();
  }

  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v4 = [BKLibraryManager numberOfLibraryAssetsInManagdObjectContext:uiChildContext];

  return v4 != 0;
}

- (void)checkOwnedSingleBookSeriesWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  selfCopy = self;
  predicateForOwnedSingleAssetSeries = [objc_opt_class() predicateForOwnedSingleAssetSeries];
  [v5 setPredicate:predicateForOwnedSingleAssetSeries];

  [v5 setReturnsDistinctResults:1];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v38 = 0;
  v27 = v5;
  v28 = contextCopy;
  v9 = [contextCopy executeFetchRequest:v5 error:&v38];
  v26 = v38;
  bu_arrayByRemovingNSNulls = [v9 bu_arrayByRemovingNSNulls];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = bu_arrayByRemovingNSNulls;
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
        seriesID = [v15 seriesID];

        if (seriesID)
        {
          objc_opt_class();
          seriesBooks = [v15 seriesBooks];
          anyObject = [seriesBooks anyObject];
          v19 = BUDynamicCast();

          LODWORD(anyObject) = [v19 isAudiobook];
          seriesID2 = [v15 seriesID];
          if (anyObject)
          {
            v21 = v8;
          }

          else
          {
            v21 = v7;
          }

          [v21 addObject:seriesID2];
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
    seriesInfoUpdateIntervalEnabled = [v23 seriesInfoUpdateIntervalEnabled];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_E668;
    v30[3] = &unk_D58B8;
    v31 = v7;
    v32 = v8;
    v33 = selfCopy;
    [seriesInfoUpdateIntervalEnabled valueWithCompletion:v30];

    v22 = v31;
  }
}

- (void)checkNonSeriesAudiobooksWithManagedObjectContext:(id)context
{
  contextCopy = context;
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
  v11 = [contextCopy executeFetchRequest:v5 error:&v21];

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
    seriesManager = [(BKLibraryManager *)self seriesManager];
    [seriesManager updateSeriesForAssetAdamIDsWithTypes:v14 forceCheck:v17];

    v20 = +[NSUserDefaults standardUserDefaults];
    [v20 setInteger:1 forKey:@"SeriesMigrationVersion"];
  }
}

- (void)wq_dq_saveDatabaseContext:(id)context
{
  contextCopy = context;
  v5 = self->_dqSyncQueue;
  if (v5 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v5);
  }

  [(BKLibraryManager *)self _resetAuthorsAndStacksInContext:contextCopy];
  if ([contextCopy hasChanges])
  {
    v6 = [(BKLibraryManager *)self wq_seriesIDsToResetWithLibraryManagedObjectContext:contextCopy];
    collectionController = [(BKLibraryManager *)self collectionController];
    v8 = [collectionController gatherChangedAssetsCollectionsWithLibraryMoc:contextCopy];
    [(BKLibraryManager *)self saveManagedObjectContext:contextCopy];
    [collectionController processGatheredChangedAssetsCollections:v8];
    v9 = BKLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
      allObjects = [v6 allObjects];
      bu_prettyDescription = [allObjects bu_prettyDescription];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = bu_prettyDescription;
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

- (void)_updateAuthorForSeriesContainer:(id)container
{
  containerCopy = container;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    assetID = [containerCopy assetID];
    v13 = 141558274;
    v14 = 1752392040;
    v15 = 2112;
    v16 = assetID;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "_updateAuthorForSeriesContainer: %{mask.hash}@", &v13, 0x16u);
  }

  managedObjectContext = [containerCopy managedObjectContext];
  seriesID = [containerCopy seriesID];
  v9 = [(BKLibraryManager *)self _rawSeriesAuthorForContainerID:seriesID context:managedObjectContext];

  seriesID2 = [containerCopy seriesID];
  v11 = [(BKLibraryManager *)self _rawSeriesSortAuthorForContainerID:seriesID2 context:managedObjectContext];

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

  [containerCopy setDifferentString:v9 forKey:@"author"];
  [containerCopy setDifferentString:v11 forKey:@"sortAuthor"];
}

- (void)_resetNilAuthorsOnAllBooksInContext:(id)context
{
  contextCopy = context;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v5 = [NSPredicate predicateWithFormat:@"sortAuthor == %@ AND contentType != %@", @"UnknownAuthor", &off_DDF58];
  [v4 setPredicate:v5];

  [v4 setFetchBatchSize:64];
  v6 = [contextCopy executeFetchRequest:v4 error:0];
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
        author = [v11 author];
        v13 = [author isEqualToString:@"UnknownAuthor"];

        if ((v13 & 1) == 0)
        {
          author2 = [v11 author];
          [v11 setSortAuthor:author2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_resetNilAuthorsOnAllSeriesInContext:(id)context
{
  contextCopy = context;
  [contextCopy save:0];
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v6 = [NSPredicate predicateWithFormat:@"author == %@ AND contentType == %@", @"UnknownAuthor", &off_DDF58];
  [v5 setPredicate:v6];

  [v5 setFetchBatchSize:64];
  v7 = [contextCopy executeFetchRequest:v5 error:0];
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

- (void)_resetAuthorsAndStacksInContext:(id)context
{
  contextCopy = context;
  if ([(BKLibraryManager *)self needsResetNilAuthorsOnAllBooks])
  {
    [(BKLibraryManager *)self setNeedsResetNilAuthorsOnAllBooks:0];
    [(BKLibraryManager *)self _resetNilAuthorsOnAllBooksInContext:contextCopy];
  }

  if ([(BKLibraryManager *)self needsResetNilAuthorsOnAllSeries])
  {
    [(BKLibraryManager *)self setNeedsResetNilAuthorsOnAllSeries:0];
    [(BKLibraryManager *)self _resetNilAuthorsOnAllSeriesInContext:contextCopy];
  }

  if ([(BKLibraryManager *)self needsResetSeriesStacksAndCollectionMembershipOnAllBooks])
  {
    [(BKLibraryManager *)self setNeedsResetSeriesStacksAndCollectionMembershipOnAllBooks:0];
    collectionManager = [(BKLibraryManager *)self collectionManager];
    [collectionManager resetCollections];
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

- (id)wq_seriesIDsToResetWithLibraryManagedObjectContext:(id)context
{
  contextCopy = context;
  v4 = +[NSMutableSet set];
  updatedObjects = [contextCopy updatedObjects];
  [v4 unionSet:updatedObjects];

  insertedObjects = [contextCopy insertedObjects];
  [v4 unionSet:insertedObjects];

  deletedObjects = [contextCopy deletedObjects];
  [v4 unionSet:deletedObjects];

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
          seriesID = [v14 seriesID];

          if (seriesID)
          {
            seriesID2 = [v14 seriesID];
            [v8 addObject:seriesID2];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)_resetSeriesIDs:(id)ds
{
  dsCopy = ds;
  usq_moc = [(BKLibraryManager *)self usq_moc];

  if (!usq_moc)
  {
    sub_8DA08();
  }

  usq_moc2 = [(BKLibraryManager *)self usq_moc];

  if (usq_moc2)
  {
    [(BKLibraryManager *)self seriesUpdaterResetWithIDs:dsCopy];
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

    usq_moc = [(BKLibraryManager *)self usq_moc];

    if (!usq_moc)
    {
      sub_8DA40();
    }

    usq_moc2 = [(BKLibraryManager *)self usq_moc];
    [usq_moc2 setName:@"Series Updater Context"];

    usq_moc3 = [(BKLibraryManager *)self usq_moc];
    [usq_moc3 setPersistentStoreCoordinator:self->_ui_persistentStoreCoordinator];

    usq_moc4 = [(BKLibraryManager *)self usq_moc];
    [usq_moc4 setUndoManager:0];

    usq_moc5 = [(BKLibraryManager *)self usq_moc];
    [usq_moc5 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    v10 = +[NSNotificationCenter defaultCenter];
    usq_moc6 = [(BKLibraryManager *)self usq_moc];
    [v10 addObserver:self selector:"seriesUpdaterMocObjectsDidChange:" name:NSManagedObjectContextDidSaveNotification object:usq_moc6];
  }
}

- (void)seriesUpdaterMocObjectsDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
  v17 = collectionsWorkerChildContext;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  [NSManagedObjectContext mergeChangesFromRemoteContextSave:userInfo intoContexts:v7];

  userInfo2 = [changeCopy userInfo];
  workerChildContext = [(BKLibraryManager *)self workerChildContext];
  v16 = workerChildContext;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  [NSManagedObjectContext mergeChangesFromRemoteContextSave:userInfo2 intoContexts:v10];

  v11 = self->_uiChildContext;
  if (v11)
  {
    userInfo3 = [changeCopy userInfo];
    v15 = v11;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [NSManagedObjectContext mergeChangesFromRemoteContextSave:userInfo3 intoContexts:v13];
  }

  backgroundReadOnlyContextPool = [(BKLibraryManager *)self backgroundReadOnlyContextPool];
  [backgroundReadOnlyContextPool remoteContextDidSave:changeCopy];
}

- (void)seriesUpdaterResetWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = [dsCopy count];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "StackLog: seriesUpdaterResetWithIDs: %lu", buf, 0xCu);
  }

  usq_moc = [(BKLibraryManager *)self usq_moc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10040;
  v8[3] = &unk_D5420;
  v9 = dsCopy;
  selfCopy = self;
  v7 = dsCopy;
  [usq_moc performBlock:v8];
}

+ (id)persistentStoreURL
{
  v3 = +[UIApplication applicationDocumentsDirectory];
  persistentStoreName = [self persistentStoreName];
  v5 = [v3 stringByAppendingPathComponent:@"BKLibrary"];
  v6 = [v5 stringByAppendingPathComponent:persistentStoreName];

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

- (void)queryRootFolderShorthandsWithRegistrationBlock:(id)block
{
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 buildRootFolderShorthandMapCompletion:blockCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)triggerCloudSync:(BOOL)sync
{
  syncCopy = sync;
  v5 = +[NSNotificationCenter defaultCenter];
  v7 = v5;
  if (syncCopy)
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
  collectionController = [(BKLibraryManager *)self collectionController];
  [collectionController cleanupDefaultCollections];

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

- (void)reloadWithCompletion:(id)completion
{
  completionCopy = completion;
  coalescedLibraryReload = self->_coalescedLibraryReload;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12A9C;
  v7[3] = &unk_D5908;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(BUCoalescingCallBlock *)coalescedLibraryReload signalWithCompletion:v7];
}

- (void)_reloadWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)_performReload
{
  v3 = BKLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%p: Library Reload: Start", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12F04;
  v4[3] = &unk_D56B8;
  v4[4] = self;
  [(BKLibraryManager *)self performNamed:@"reload" workerQueueBlockAndWait:v4];
}

- (id)assetIDsInDataSourceWithIdentifier:(id)identifier intersectingWithAssetIDs:(id)ds
{
  identifierCopy = identifier;
  dsCopy = ds;
  v23 = objc_opt_new();
  v8 = [(NSDictionary *)self->_dataSourcesByIdentifier objectForKeyedSubscript:identifierCopy];
  if (v8)
  {
    v20 = dsCopy;
    v21 = identifierCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = dsCopy;
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

          assetUpdatesByIdentifier = [(BKLibraryManager *)self assetUpdatesByIdentifier];
          v18 = [assetUpdatesByIdentifier objectForKeyedSubscript:v13];

          if (([v18 dataSourcesBitmask] & v16) != 0)
          {
            [v23 addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    dsCopy = v20;
    identifierCopy = v21;
  }

  return v23;
}

- (void)setUIManagerProviderForAddingToWantToReadBlock:(id)block
{
  blockCopy = block;
  collectionManager = [(BKLibraryManager *)self collectionManager];
  [collectionManager setUiManagerProviderForAddingToWantToRead:blockCopy];
}

- (void)_enumerateDataSources:(id)sources intersectingWithAssetIDs:(id)ds usingBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  if (blockCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1372C;
    v10[3] = &unk_D5950;
    v10[4] = self;
    v11 = dsCopy;
    v12 = blockCopy;
    [sources enumerateObjectsUsingBlock:v10];
  }
}

- (void)reloadDataSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_83E0;
  v18 = sub_83F0;
  v19 = 0;
  coalescedDataSourceReloadByIdentifierSync = [(BKLibraryManager *)self coalescedDataSourceReloadByIdentifierSync];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13A34;
  block[3] = &unk_D59A0;
  v9 = sourceCopy;
  selfCopy = self;
  v13 = &v14;
  v11 = v9;
  dispatch_sync(coalescedDataSourceReloadByIdentifierSync, block);

  [v15[5] signalWithCompletion:completionCopy];
  _Block_object_dispose(&v14, 8);
}

- (void)_reloadDataSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  identifier = [sourceCopy identifier];
  v9 = [NSString stringWithFormat:@"reload(%@)", identifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_13DEC;
  v12[3] = &unk_D59C8;
  v12[4] = self;
  v13 = sourceCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = sourceCopy;
  [(BKLibraryManager *)self _scheduleOperationGroupWithName:v9 block:v12];
}

- (void)_performReloadDataSource:(id)source completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13EC4;
  v8[3] = &unk_D5B30;
  sourceCopy = source;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = sourceCopy;
  [(BKLibraryManager *)self performNamed:@"reloadDataSource" workerQueueBlock:v8];
}

- (void)clearAgingDocumentInbox
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v3 = [dataSources countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(dataSources);
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

      v4 = [dataSources countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)earliestPurchaseTimestampWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15A64;
  v5[3] = &unk_D5BD0;
  completionCopy = completion;
  v4 = completionCopy;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v5];
}

- (void)prioritizeImport:(id)import completion:(id)completion
{
  importCopy = import;
  completionCopy = completion;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v9 = [dataSources countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_15EF8;
        v15[3] = &unk_D5BF8;
        v14 = completionCopy;
        v15[4] = self;
        v16 = v14;
        LODWORD(v13) = [v13 prioritizeImport:importCopy completion:v15];

        if (v13)
        {

          goto LABEL_12;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [dataSources countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_12:
}

- (void)updateURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v9 = [dataSources countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(dataSources);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_16170;
      v14[3] = &unk_D5C70;
      v14[4] = self;
      v15 = completionCopy;
      LOBYTE(v13) = [v13 updateURL:lCopy completion:v14];

      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [dataSources countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)updateAsset:(id)asset fromURL:(id)l completion:(id)completion
{
  assetCopy = asset;
  lCopy = l;
  completionCopy = completion;
  dataSourceIdentifier = [assetCopy dataSourceIdentifier];
  v12 = [(BKLibraryManager *)self dataSourceWithIdentifier:dataSourceIdentifier];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_16500;
  v17 = &unk_D5C70;
  selfCopy = self;
  v19 = completionCopy;
  v13 = [v12 updateAsset:assetCopy fromURL:lCopy completion:&v14];

  if ((v13 & 1) == 0)
  {
LABEL_3:
    [(BKLibraryManager *)self updateURL:lCopy completion:completionCopy, v14, v15, v16, v17, selfCopy];
  }
}

- (void)updateAsset:(id)asset coverArt:(id)art completion:(id)completion
{
  assetCopy = asset;
  artCopy = art;
  completionCopy = completion;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v11 = [dataSources countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(dataSources);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      if (objc_opt_respondsToSelector())
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_16930;
        v18[3] = &unk_D5CE8;
        v18[4] = self;
        v19 = completionCopy;
        v16 = [v15 updateAsset:assetCopy coverArt:artCopy completion:v18];

        if (v16)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [dataSources countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)updateAssetWithID:(id)d url:(id)url
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16CB8;
  v7[3] = &unk_D5D10;
  selfCopy = self;
  dCopy = d;
  urlCopy = url;
  v5 = urlCopy;
  v6 = dCopy;
  [(BKLibraryManager *)selfCopy performBlockOnWorkerQueue:v7];
}

- (BOOL)examineURL:(id)l completion:(id)completion
{
  lCopy = l;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_16ECC;
  v18[3] = &unk_D5C70;
  v18[4] = self;
  completionCopy = completion;
  v19 = completionCopy;
  v8 = objc_retainBlock(v18);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v10 = [dataSources countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(dataSources);
        }

        if ([*(*(&v14 + 1) + 8 * i) examineURL:lCopy completion:v8])
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [dataSources countByEnumeratingWithState:&v14 objects:v20 count:16];
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

- (void)resolveLibraryAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  v8 = objc_alloc_init(BKResolveLibraryAssetOptions);
  [(BKLibraryManager *)self resolveLibraryAsset:assetCopy options:v8 completion:completionCopy];
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_171A0;
  v17 = &unk_D5D60;
  selfCopy = self;
  completionCopy = completion;
  v8 = completionCopy;
  optionsCopy = options;
  assetCopy = asset;
  v11 = objc_retainBlock(&v14);
  dataSourceIdentifier = [assetCopy dataSourceIdentifier];
  v13 = [(BKLibraryManager *)self dataSourceWithIdentifier:dataSourceIdentifier];

  [v13 resolveLibraryAsset:assetCopy options:optionsCopy completion:v11];
}

- (void)_addDataSourceIdentifierAndStateObserver:(id)observer
{
  observerCopy = observer;
  ownershipSync = [(BKLibraryManager *)self ownershipSync];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_173AC;
  v7[3] = &unk_D5420;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(ownershipSync, v7);
}

- (void)_removeDataSourceIdentifierAndStateObserver:(id)observer
{
  observerCopy = observer;
  ownershipSync = [(BKLibraryManager *)self ownershipSync];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17550;
  v7[3] = &unk_D5420;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(ownershipSync, v7);
}

- (void)_notifyDataSourceIdentifierAndStateObserversForAssetIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  ownershipSync = [(BKLibraryManager *)self ownershipSync];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_176EC;
  block[3] = &unk_D5A40;
  v10 = dsCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = dsCopy;
  dispatch_sync(ownershipSync, block);

  [v7 enumerateKeysAndObjectsUsingBlock:&stru_D5DA0];
}

- (void)toggleDownloadPausedForAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy && [assetCopy isDownloading])
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
          assetID = [v5 assetID];
          temporaryAssetID = [v5 temporaryAssetID];
          [v11 togglePausedForAssetID:assetID orTemporaryAssetID:temporaryAssetID];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)cancelDownloadingAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isDownloading])
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
          permanentOrTemporaryAssetID = [assetCopy permanentOrTemporaryAssetID];
          [v10 cancelDownloadForAssetID:permanentOrTemporaryAssetID];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)waitForAssetToFinishDownloadWithAssetID:(id)d resolveAsset:(BOOL)asset completion:(id)completion
{
  assetCopy = asset;
  dCopy = d;
  completionCopy = completion;
  v9 = BKLibraryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
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
  v11 = dCopy;
  v43 = v11;
  v12 = completionCopy;
  v44 = v12;
  dispatch_group_notify(v10, &_dispatch_main_q, block);
  v13 = [(BKLibraryManager *)self libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:v11];
  v14 = BKLibraryLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    isCloud = [v13 isCloud];
    isDownloading = [v13 isDownloading];
    isSeriesItem = [v13 isSeriesItem];
    isStoreItem = [v13 isStoreItem];
    isLocal = [v13 isLocal];
    *buf = 141559810;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v49 = v13;
    v50 = 1024;
    v51 = isCloud;
    v52 = 1024;
    v53 = isDownloading;
    v54 = 1024;
    v55 = isSeriesItem;
    v56 = 1024;
    v57 = isStoreItem;
    v58 = 1024;
    v59 = isLocal;
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
  if (v13 && assetCopy)
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

    dataSourceIdentifier = [v13 dataSourceIdentifier];
    v28 = [(BKLibraryManager *)self dataSourceWithIdentifier:dataSourceIdentifier];

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

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  dataSourceIdentifier = [assetCopy dataSourceIdentifier];
  v9 = [(BKLibraryManager *)self dataSourceWithIdentifier:dataSourceIdentifier];

  if (v9)
  {
    goto LABEL_2;
  }

  dataSourceIdentifier2 = [assetCopy dataSourceIdentifier];
  v11 = [dataSourceIdentifier2 isEqual:@"com.apple.ibooks.plugin.Bookshelf.platformDataSource.BookKit"];

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
      v16 = completionCopy;
      [v9 assetForLibraryAsset:assetCopy completion:v15];

      goto LABEL_3;
    }
  }

  v13 = BKLibraryLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_8E140();
  }

  v14 = objc_retainBlock(completionCopy);
  v9 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 0, 0);
  }

LABEL_3:
}

- (void)assetPartsForLibraryAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v8 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_83E0;
  v36[4] = sub_83F0;
  v37 = 0;
  assetID = [assetCopy assetID];
  v10 = dispatch_group_create();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v12 = [dataSources countByEnumeratingWithState:&v32 objects:v38 count:16];
  v20 = assetID;
  v21 = completionCopy;
  if (v12)
  {
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(dataSources);
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
          [v15 assetPartsForLibraryAsset:assetCopy completion:v27];
        }
      }

      v12 = [dataSources countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v12);
  }

  completionQueue = [(BKLibraryManager *)self completionQueue];
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
  dispatch_group_notify(v10, completionQueue, block);

  _Block_object_dispose(v36, 8);
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_19290;
  v16[3] = &unk_D5F08;
  objc_copyWeak(&v19, &location);
  v10 = completionCopy;
  v18 = v10;
  v11 = assetsCopy;
  v17 = v11;
  exhaustiveCopy = exhaustive;
  v12 = objc_retainBlock(v16);
  delegate = [(BKLibraryManager *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(BKLibraryManager *)self delegate];
    [delegate2 willDeleteAssets:v11 completion:v12];
  }

  else
  {
    (v12[2])(v12);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)p_deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  exhaustiveCopy = exhaustive;
  assetsCopy = assets;
  completionCopy = completion;
  if (![assetsCopy count])
  {
LABEL_11:
    v15 = objc_retainBlock(completionCopy);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15);
    }

    goto LABEL_40;
  }

  if (exhaustiveCopy)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    dataSources = [(BKLibraryManager *)self dataSources];
    v11 = [dataSources countByEnumeratingWithState:&v47 objects:v55 count:16];
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
            objc_enumerationMutation(dataSources);
          }

          [*(*(&v47 + 1) + 8 * i) deleteAssets:assetsCopy exhaustive:1 completion:0];
        }

        v12 = [dataSources countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v12);
    }

    goto LABEL_11;
  }

  v37 = completionCopy;
  v17 = objc_alloc_init(NSMutableDictionary);
  v38 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = assetsCopy;
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
          dataSourceIdentifier = [v23 dataSourceIdentifier];
          if (dataSourceIdentifier)
          {
            v25 = [v17 objectForKey:dataSourceIdentifier];
            if (!v25)
            {
              v25 = +[NSMutableArray array];
              [v17 setObject:v25 forKey:dataSourceIdentifier];
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
  allKeys = [v17 allKeys];
  v28 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v32 = *(*(&v39 + 1) + 8 * k);
        v33 = [v17 objectForKey:v32];
        v34 = [(BKLibraryManager *)self dataSourceWithIdentifier:v32];
        [v34 deleteAssets:v33 exhaustive:0 completion:0];
      }

      v29 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v29);
  }

  [(BKLibraryManager *)self p_deleteAssets:v38];
  completionCopy = v37;
  v35 = objc_retainBlock(v37);
  v36 = v35;
  if (v35)
  {
    (*(v35 + 2))(v35);
  }

LABEL_40:
}

- (void)p_deleteAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v5 = [assetsCopy valueForKey:@"assetID"];
    v6 = [assetsCopy valueForKey:@"temporaryAssetID"];
    allObjects = [v6 allObjects];

    if (![allObjects count])
    {

      allObjects = 0;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_19844;
    v10[3] = &unk_D5D10;
    v10[4] = self;
    v11 = v5;
    v12 = allObjects;
    v8 = allObjects;
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

- (id)dataSourceWithIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    dataSourcesByIdentifier = [(BKLibraryManager *)self dataSourcesByIdentifier];
    v6 = [dataSourcesByIdentifier objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dataSourceConformingToProtocol:(id)protocol
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_19BD0;
  v7[3] = &unk_D5F30;
  protocolCopy = protocol;
  v4 = protocolCopy;
  v5 = [(BKLibraryManager *)self _dataSourceMatchingPredicate:v7];

  return v5;
}

- (id)dataSourcesConformingToProtocol:(id)protocol
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_19C8C;
  v7[3] = &unk_D5F30;
  protocolCopy = protocol;
  v4 = protocolCopy;
  v5 = [(BKLibraryManager *)self _dataSourcesMatchingPredicate:v7];

  return v5;
}

- (void)dq_libraryDataSource:(id)source reconcileAssets:(id)assets reason:(signed __int16)reason
{
  reasonCopy = reason;
  sourceCopy = source;
  assetsCopy = assets;
  v9 = self->_dqSyncQueue;
  if (v9 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v9);
  }

  v10 = BKLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [assetsCopy count]);
    identifier = [sourceCopy identifier];
    *buf = 138412546;
    v47 = v11;
    v48 = 2112;
    v49 = identifier;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "#datasource reconcileAssets: reconciling %@ assets for: %@", buf, 0x16u);
  }

  assetUpdatesByIdentifier = [(BKLibraryManager *)self assetUpdatesByIdentifier];
  if (objc_opt_respondsToSelector())
  {
    propagateDataProperties = [sourceCopy propagateDataProperties];
  }

  else
  {
    propagateDataProperties = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = assetsCopy;
  v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v39 = *v42;
    v34 = assetUpdatesByIdentifier;
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
        assetID = [v15 assetID];
        temporaryAssetID = [v15 temporaryAssetID];
        if (assetID)
        {
          v18 = [assetUpdatesByIdentifier objectForKeyedSubscript:assetID];
          if (v18)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v18 = 0;
        }

        if (temporaryAssetID)
        {
          v18 = [assetUpdatesByIdentifier objectForKeyedSubscript:temporaryAssetID];
        }

LABEL_20:
        if (assetID)
        {
          unclaimedAssetIDs = [(BKLibraryManager *)self unclaimedAssetIDs];
          [unclaimedAssetIDs removeObject:assetID];

          if (temporaryAssetID)
          {
LABEL_24:
            unclaimedTemporaryAssetIDs = [(BKLibraryManager *)self unclaimedTemporaryAssetIDs];
            [unclaimedTemporaryAssetIDs removeObject:temporaryAssetID];
          }

          v21 = 1;
          goto LABEL_26;
        }

        if (temporaryAssetID)
        {
          goto LABEL_24;
        }

        BCReportAssertionFailureWithMessage();
        v21 = 0;
LABEL_26:
        dataSourceIdentifier = [v15 dataSourceIdentifier];

        if (dataSourceIdentifier)
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

        dataSources = [(BKLibraryManager *)self dataSources];
        v24 = [dataSources indexOfObjectIdenticalTo:sourceCopy];
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
          v26 = sourceCopy;
          v27 = _bk_compareBitmaskPriority(v25, [(BKLibraryAssetUpdate *)v18 dataSourcesBitmask]);
          asset = [(BKLibraryAssetUpdate *)v18 asset];

          v30 = reasonCopy == 4 && asset == 0;
          if (v27 != -1 || v30)
          {
            [(BKLibraryAssetUpdate *)v18 setAsset:v15];
          }

          [(BKLibraryManager *)self _addBitmask:v25 toUpdate:v18 inMethod:a2];
          [(BKLibraryAssetUpdate *)v18 setPropertiesToPropagate:propagateDataProperties];
          [(BKLibraryAssetUpdate *)v18 propagateAdditionalDataWithAsset:v15];
          sourceCopy = v26;
          assetUpdatesByIdentifier = v34;
          if (!assetID)
          {
            goto LABEL_43;
          }

LABEL_42:
          [assetUpdatesByIdentifier setObject:v18 forKeyedSubscript:assetID];
          identifiersForAssetsNeedingReconcile = [(BKLibraryManager *)self identifiersForAssetsNeedingReconcile];
          [identifiersForAssetsNeedingReconcile addObject:assetID];

          goto LABEL_43;
        }

        v18 = [[BKLibraryAssetUpdate alloc] initWithAsset:v15 dataSource:sourceCopy dataSourceBitmask:v25];
        if (assetID)
        {
          goto LABEL_42;
        }

LABEL_43:
        if (temporaryAssetID)
        {
          [assetUpdatesByIdentifier setObject:v18 forKeyedSubscript:temporaryAssetID];
          identifiersForAssetsNeedingReconcile2 = [(BKLibraryManager *)self identifiersForAssetsNeedingReconcile];
          [identifiersForAssetsNeedingReconcile2 addObject:temporaryAssetID];
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

- (void)dq_unclaimIdentifiers:(id)identifiers forDataSourceBitmask:(unint64_t)bitmask
{
  identifiersCopy = identifiers;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [identifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        assetUpdatesByIdentifier = [(BKLibraryManager *)self assetUpdatesByIdentifier];
        v14 = [assetUpdatesByIdentifier objectForKeyedSubscript:v12];

        [(BKLibraryManager *)self _removeBitmask:bitmask fromUpdate:v14 inMethod:a2];
        if (![v14 dataSourcesBitmask])
        {
          unclaimedAssetIDs = [(BKLibraryManager *)self unclaimedAssetIDs];
          [unclaimedAssetIDs addObject:v12];

          unclaimedTemporaryAssetIDs = [(BKLibraryManager *)self unclaimedTemporaryAssetIDs];
          [unclaimedTemporaryAssetIDs addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [identifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)libraryDataSource:(id)source removeImagesForAsset:(id)asset
{
  assetCopy = asset;
  assetID = [assetCopy assetID];
  imageSource = [(BKLibraryManager *)self imageSource];
  temporaryAssetID = [assetCopy temporaryAssetID];

  [imageSource removeImagesForAssetID:assetID temporaryAssetID:temporaryAssetID];
}

- (void)libraryDataSource:(id)source removedAssets:(id)assets inGroup:(id)group
{
  sourceCopy = source;
  assetsCopy = assets;
  groupCopy = group;
  kdebug_trace();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1A4A8;
  v13[3] = &unk_D5A40;
  v14 = assetsCopy;
  selfCopy = self;
  v16 = sourceCopy;
  v11 = sourceCopy;
  v12 = assetsCopy;
  [groupCopy addOperationBlock:v13];
}

- (void)libraryDataSource:(id)source removedAssetsWithAssetIDs:(id)ds orTemporaryAssetIDs:(id)iDs inGroup:(id)group
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1A63C;
  v12[3] = &unk_D5E90;
  v12[4] = self;
  sourceCopy = source;
  dsCopy = ds;
  iDsCopy = iDs;
  v9 = iDsCopy;
  v10 = dsCopy;
  v11 = sourceCopy;
  [group addOperationBlock:v12];
}

- (void)_addBitmask:(unint64_t)bitmask toUpdate:(id)update inMethod:(SEL)method
{
  updateCopy = update;
  [updateCopy setDataSourcesBitmask:{objc_msgSend(updateCopy, "dataSourcesBitmask") | bitmask}];
}

- (void)_removeBitmask:(unint64_t)bitmask fromUpdate:(id)update inMethod:(SEL)method
{
  updateCopy = update;
  [updateCopy setDataSourcesBitmask:{objc_msgSend(updateCopy, "dataSourcesBitmask") & ~bitmask}];
}

- (void)_libraryDataSource:(id)source removedAssetsWithAssetIDs:(id)ds orTemporaryAssetIDs:(id)iDs
{
  sourceCopy = source;
  dsCopy = ds;
  iDsCopy = iDs;
  if ([dsCopy count] || objc_msgSend(iDsCopy, "count"))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1A800;
    v12[3] = &unk_D5F80;
    v13 = dsCopy;
    v14 = iDsCopy;
    v15 = sourceCopy;
    selfCopy = self;
    v17 = a2;
    [(BKLibraryManager *)self performNamed:@"removedAssets" workerQueueBlock:v12];
  }
}

- (void)libraryDataSource:(id)source updatedAssets:(id)assets inGroup:(id)group
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1B4F0;
  v9[3] = &unk_D5A40;
  v9[4] = self;
  sourceCopy = source;
  assetsCopy = assets;
  v7 = assetsCopy;
  v8 = sourceCopy;
  [group addOperationBlock:v9];
}

- (void)_libraryDataSource:(id)source updatedAssets:(id)assets
{
  sourceCopy = source;
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    kdebug_trace();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1B5E8;
    v8[3] = &unk_D5D10;
    v9 = assetsCopy;
    selfCopy = self;
    v11 = sourceCopy;
    [(BKLibraryManager *)self performNamed:@"updateAssets" workerQueueBlockAndWait:v8];
  }
}

- (void)libraryDataSource:(id)source notifyBlock:(id)block inGroup:(id)group
{
  blockCopy = block;
  v8 = blockCopy;
  if (blockCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1E680;
    v9[3] = &unk_D5550;
    v9[4] = self;
    v10 = blockCopy;
    [group addOperationBlock:v9];
  }
}

- (void)addCustomOperationBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1E7C4;
    v6[3] = &unk_D5FD0;
    v6[4] = self;
    v7 = blockCopy;
    [(BKLibraryManager *)self _scheduleOperationGroupWithName:@"custom-operation" block:v6];
  }
}

- (void)libraryDataSource:(id)source addedAssets:(id)assets inGroup:(id)group
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1E9B8;
  v9[3] = &unk_D5A40;
  v9[4] = self;
  sourceCopy = source;
  assetsCopy = assets;
  v7 = assetsCopy;
  v8 = sourceCopy;
  [group addOperationBlock:v9];
}

- (void)_libraryDataSource:(id)source addedAssets:(id)assets
{
  sourceCopy = source;
  assetsCopy = assets;
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_8E4E0(assetsCopy);
  }

  if ([assetsCopy count])
  {
    kdebug_trace();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1EAE4;
    v9[3] = &unk_D5D10;
    v9[4] = self;
    v10 = sourceCopy;
    v11 = assetsCopy;
    [(BKLibraryManager *)self performNamed:@"addedAssets" workerQueueBlock:v9];
  }
}

- (void)libraryDataSource:(id)source addedAsset:(id)asset inGroup:(id)group
{
  assetCopy = asset;
  groupCopy = group;
  assetCopy2 = asset;
  sourceCopy = source;
  v11 = [NSArray arrayWithObjects:&assetCopy count:1];

  [(BKLibraryManager *)self libraryDataSource:sourceCopy addedAssets:v11 inGroup:groupCopy, assetCopy];
}

- (void)libraryDataSource:(id)source removedAsset:(id)asset inGroup:(id)group
{
  assetCopy = asset;
  groupCopy = group;
  assetCopy2 = asset;
  sourceCopy = source;
  v11 = [NSArray arrayWithObjects:&assetCopy count:1];

  [(BKLibraryManager *)self libraryDataSource:sourceCopy removedAssets:v11 inGroup:groupCopy, assetCopy];
}

- (void)libraryDataSource:(id)source updatedAsset:(id)asset inGroup:(id)group
{
  assetCopy = asset;
  groupCopy = group;
  assetCopy2 = asset;
  sourceCopy = source;
  v11 = [NSArray arrayWithObjects:&assetCopy count:1];

  [(BKLibraryManager *)self libraryDataSource:sourceCopy updatedAssets:v11 inGroup:groupCopy, assetCopy];
}

- (void)libraryDataSource:(id)source reloadInGroup:(id)group
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1EF5C;
  v6[3] = &unk_D5420;
  v6[4] = self;
  sourceCopy = source;
  v5 = sourceCopy;
  [group addOperationBlock:v6];
}

- (void)libraryDataSource:(id)source addedAssets:(id)assets
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F044;
  v7[3] = &unk_D5FF8;
  selfCopy = self;
  sourceCopy = source;
  assetsCopy = assets;
  v5 = assetsCopy;
  v6 = sourceCopy;
  [(BKLibraryManager *)selfCopy libraryDataSource:v6 updateWithName:@"addedAssets" block:v7];
}

- (void)libraryDataSource:(id)source removedAssets:(id)assets
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F124;
  v7[3] = &unk_D5FF8;
  selfCopy = self;
  sourceCopy = source;
  assetsCopy = assets;
  v5 = assetsCopy;
  v6 = sourceCopy;
  [(BKLibraryManager *)selfCopy libraryDataSource:v6 updateWithName:@"removedAssets" block:v7];
}

- (void)libraryDataSource:(id)source removedAssetsWithAssetIDs:(id)ds orTemporaryAssetIDs:(id)iDs
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1F224;
  v10[3] = &unk_D6020;
  selfCopy = self;
  sourceCopy = source;
  dsCopy = ds;
  iDsCopy = iDs;
  v7 = iDsCopy;
  v8 = dsCopy;
  v9 = sourceCopy;
  [(BKLibraryManager *)selfCopy libraryDataSource:v9 updateWithName:@"removedAssets" block:v10];
}

- (void)libraryDataSource:(id)source updatedAssets:(id)assets
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F304;
  v7[3] = &unk_D5FF8;
  selfCopy = self;
  sourceCopy = source;
  assetsCopy = assets;
  v5 = assetsCopy;
  v6 = sourceCopy;
  [(BKLibraryManager *)selfCopy libraryDataSource:v6 updateWithName:@"updatedAssets" block:v7];
}

- (void)libraryDataSource:(id)source addedAsset:(id)asset
{
  assetCopy = asset;
  assetCopy2 = asset;
  sourceCopy = source;
  v8 = [NSArray arrayWithObjects:&assetCopy count:1];

  [(BKLibraryManager *)self libraryDataSource:sourceCopy addedAssets:v8, assetCopy];
}

- (void)libraryDataSource:(id)source removedAsset:(id)asset
{
  assetCopy = asset;
  assetCopy2 = asset;
  sourceCopy = source;
  v8 = [NSArray arrayWithObjects:&assetCopy count:1];

  [(BKLibraryManager *)self libraryDataSource:sourceCopy removedAssets:v8, assetCopy];
}

- (void)libraryDataSource:(id)source updatedAsset:(id)asset
{
  assetCopy = asset;
  assetCopy2 = asset;
  sourceCopy = source;
  v8 = [NSArray arrayWithObjects:&assetCopy count:1];

  [(BKLibraryManager *)self libraryDataSource:sourceCopy updatedAssets:v8, assetCopy];
}

- (void)_notifyLibraryOperationDone:(unint64_t)done assetIDs:(id)ds
{
  dsCopy = ds;
  if (!dsCopy)
  {
    dsCopy = +[NSArray array];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v10[0] = @"BKLibraryOperationType";
  v8 = [NSNumber numberWithUnsignedInteger:done];
  v10[1] = @"BKLibraryOperationAssetIDs";
  v11[0] = v8;
  v11[1] = dsCopy;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v7 postNotificationName:@"BKLibraryOperationCompleteNotification" object:self userInfo:v9];
}

- (void)setCloudStateOnAssetWithID:(id)d
{
  dCopy = d;
  newManagedObjectContext = [(BKLibraryManager *)self newManagedObjectContext];
  dCopy = [NSString stringWithFormat:@"NewMOC 11 %s %@", "[BKLibraryManager setCloudStateOnAssetWithID:]", dCopy];
  [newManagedObjectContext setName:dCopy];

  v6 = [(BKLibraryManager *)self libraryMutableAssetWithAssetID:dCopy inManagedObjectContext:newManagedObjectContext];

  if (v6)
  {
    if ([v6 state] != 3)
    {
      [v6 setState:3];
    }

    [v6 setDifferentObject:0 forKey:@"localOnlySeriesItemsParent"];
    [newManagedObjectContext saveLibrary];
  }
}

- (id)existingAssetIDsFromAssetIDs:(id)ds
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
  selfCopy = self;
  dsCopy = ds;
  v8 = dsCopy;
  [(BKLibraryManager *)selfCopy performBackgroundReadOnlyBlockAndWait:v6];
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

- (id)assetIDsOfStoreAssetsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v27 = @"assetID";
  v6 = [NSArray arrayWithObjects:&v27 count:1];
  [v5 setPropertiesToFetch:v6];

  [v5 setResultType:2];
  v7 = +[BKLibraryManager predicateForDownloadableStoreLibraryAssets];
  v26[0] = v7;
  v26[1] = predicateCopy;
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

- (id)storeIDsOfStoreAssetsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v27 = @"storeID";
  v6 = [NSArray arrayWithObjects:&v27 count:1];
  [v5 setPropertiesToFetch:v6];

  [v5 setResultType:2];
  v7 = +[BKLibraryManager predicateForDownloadableStoreLibraryAssets];
  v26[0] = v7;
  v26[1] = predicateCopy;
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

- (void)assetIDsOfPurchasedStoreAssets:(id)assets
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_20140;
  v4[3] = &unk_D6098;
  selfCopy = self;
  assetsCopy = assets;
  v3 = assetsCopy;
  [(BKLibraryManager *)selfCopy performBackgroundReadOnlyBlock:v4];
}

- (void)storeAssetIDsOfWantToReadWithLimit:(int64_t)limit completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_20378;
  v7[3] = &unk_D60C0;
  completionCopy = completion;
  limitCopy = limit;
  v6 = completionCopy;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v7];
}

- (id)storeAssetIDsOfFinishedCollectionWithLimit:(int64_t)limit inMoc:(id)moc
{
  predicateFor_All_Finished_LibraryAssets = [objc_opt_class() predicateFor_All_Finished_LibraryAssets];
  v6 = [(BKLibraryManager *)self assetIDsOfStoreAssetsWithPredicate:predicateFor_All_Finished_LibraryAssets];

  v7 = [NSOrderedSet orderedSetWithArray:v6];

  return v7;
}

- (id)storeAssetIDsOfCollectionMembersWithLimit:(int64_t)limit collectionID:(id)d inMoc:(id)moc
{
  mocCopy = moc;
  dCopy = d;
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

  v17 = [BKLibraryManager predicateForCollectionMembersInCollectionID:dCopy hideUnownedItems:0];

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

  if (limit)
  {
    [v12 setFetchLimit:limit];
  }

  v32 = 0;
  v23 = [mocCopy executeFetchRequest:v12 error:&v32];
  v24 = v32;
  v25 = [v23 valueForKey:@"assetID"];
  bu_arrayByRemovingNSNulls = [v25 bu_arrayByRemovingNSNulls];
  v27 = bu_arrayByRemovingNSNulls;
  v28 = &__NSArray0__struct;
  if (bu_arrayByRemovingNSNulls)
  {
    v28 = bu_arrayByRemovingNSNulls;
  }

  v29 = v28;

  v30 = [NSOrderedSet orderedSetWithArray:v29];

  return v30;
}

- (void)_sortAndInitializeDataSources:(id)sources
{
  if (!self->_dataSources)
  {
    v4 = [sources sortedArrayUsingComparator:&stru_D6100];
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
          identifier = [v12 identifier];
          [v6 setObject:v12 forKeyedSubscript:identifier];

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

- (id)_dataSourceMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(dataSources);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (predicateCopy[2](predicateCopy, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)_dataSourcesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v7 = [dataSources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (predicateCopy[2](predicateCopy, v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [dataSources countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)dq_unclaimAllLibraryAssetsWithContext:(id)context
{
  contextCopy = context;
  assetUpdatesByIdentifier = [(BKLibraryManager *)self assetUpdatesByIdentifier];
  [assetUpdatesByIdentifier removeAllObjects];

  identifiersForAssetsNeedingReconcile = [(BKLibraryManager *)self identifiersForAssetsNeedingReconcile];
  [identifiersForAssetsNeedingReconcile removeAllObjects];

  v7 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  [v7 setResultType:2];
  [v7 setFetchBatchSize:128];
  v39[0] = @"objectID";
  v39[1] = @"assetID";
  v39[2] = @"temporaryAssetID";
  v8 = [NSArray arrayWithObjects:v39 count:3];
  [v7 setPropertiesToFetch:v8];

  v37 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v37];
  v10 = v37;
  v11 = v10;
  if (v9)
  {
    unclaimedAssetIDs = [(BKLibraryManager *)self unclaimedAssetIDs];
    [unclaimedAssetIDs removeAllObjects];

    unclaimedTemporaryAssetIDs = [(BKLibraryManager *)self unclaimedTemporaryAssetIDs];
    [unclaimedTemporaryAssetIDs removeAllObjects];

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
    v30 = contextCopy;
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
          unclaimedAssetIDs2 = [(BKLibraryManager *)self unclaimedAssetIDs];
          v24 = unclaimedAssetIDs2;
          v25 = v20;
LABEL_11:
          [unclaimedAssetIDs2 addObject:v25];
          goto LABEL_12;
        }

        if (v21)
        {
          unclaimedAssetIDs2 = [(BKLibraryManager *)self unclaimedTemporaryAssetIDs];
          v24 = unclaimedAssetIDs2;
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
        contextCopy = v30;
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
  assetUpdatesByIdentifier = [(BKLibraryManager *)self assetUpdatesByIdentifier];
  v4 = [assetUpdatesByIdentifier mutableCopy];

  allKeys = [v4 allKeys];
  v6 = [allKeys mutableCopy];

  identifiersForAssetsNeedingReconcile = [(BKLibraryManager *)self identifiersForAssetsNeedingReconcile];
  allObjects = [identifiersForAssetsNeedingReconcile allObjects];
  [v6 removeObjectsInArray:allObjects];

  [v4 removeObjectsForKeys:v6];

  return v4;
}

- (void)_removePossibleDupes:(id)dupes inMoc:(id)moc
{
  dupesCopy = dupes;
  mocCopy = moc;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = dupesCopy;
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
        assetID = [v14 assetID];
        v16 = [assetID length];

        if (v16)
        {
          assetID2 = [v14 assetID];
          [v7 addObject:assetID2];
        }

        temporaryAssetID = [v14 temporaryAssetID];
        v19 = [temporaryAssetID length];

        if (v19)
        {
          temporaryAssetID2 = [v14 temporaryAssetID];
          [v8 addObject:temporaryAssetID2];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  allObjects = [v7 allObjects];
  allObjects2 = [v8 allObjects];
  v24 = [NSPredicate predicateWithFormat:@"(%K IN %@) OR (%K IN %@)", @"assetID", allObjects, @"temporaryAssetID", allObjects2];
  [v21 setPredicate:v24];

  [v21 setFetchBatchSize:32];
  v25 = [mocCopy executeFetchRequest:v21 error:0];
  v26 = [(BKLibraryManager *)self _removeDupesByAssetID:v25 inMoc:mocCopy];
  [(BKLibraryManager *)self _removeDupesByTemporaryAssetID:v26 inMoc:mocCopy];
}

- (id)_removeDupesByAssetID:(id)d inMoc:(id)moc
{
  dCopy = d;
  mocCopy = moc;
  v6 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  v7 = objc_alloc_init(NSMutableArray);
  v60 = objc_alloc_init(NSMutableArray);
  v61 = objc_alloc_init(NSMutableDictionary);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = dCopy;
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
        assetID = [v12 assetID];
        if ([assetID length])
        {
          v14 = [v61 objectForKeyedSubscript:assetID];
          if (!v14)
          {
            v14 = objc_alloc_init(v6[413]);
            [v61 setObject:v14 forKeyedSubscript:assetID];
          }

          [v14 addObject:v12];
        }

        else
        {
          temporaryAssetID = [v12 temporaryAssetID];
          v16 = [temporaryAssetID length];

          if (v16)
          {
            v17 = v60;
          }

          else
          {
            v18 = BKLibraryLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              title = [v12 title];
              author = [v12 author];
              dataSourceIdentifier = [v12 dataSourceIdentifier];
              *buf = 138412802;
              v87 = title;
              v88 = 2112;
              v89 = author;
              v90 = 2114;
              v91 = dataSourceIdentifier;
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
  allValues = [v61 allValues];
  v63 = [allValues countByEnumeratingWithState:&v78 objects:v99 count:16];
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
          objc_enumerationMutation(allValues);
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
                dataSourcesByIdentifier = [(BKLibraryManager *)self dataSourcesByIdentifier];
                dataSourceIdentifier2 = [v27 dataSourceIdentifier];
                v33 = [dataSourcesByIdentifier objectForKeyedSubscript:dataSourceIdentifier2];

                dataSourcesByIdentifier2 = [(BKLibraryManager *)self dataSourcesByIdentifier];
                dataSourceIdentifier3 = [v30 dataSourceIdentifier];
                v36 = [dataSourcesByIdentifier2 objectForKeyedSubscript:dataSourceIdentifier3];

                rank = [v36 rank];
                if (rank < [v33 rank])
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

      v63 = [allValues countByEnumeratingWithState:&v78 objects:v99 count:16];
    }

    while (v63);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v44 = v7;
  v45 = [v44 countByEnumeratingWithState:&v66 objects:v96 count:16];
  v46 = mocCopy;
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
          assetID2 = [v50 assetID];
          temporaryAssetID2 = [v50 temporaryAssetID];
          dataSourceIdentifier4 = [v50 dataSourceIdentifier];
          *buf = 141559042;
          v87 = 1752392040;
          v88 = 2112;
          v89 = assetID2;
          v90 = 2160;
          v91 = 1752392040;
          v92 = 2112;
          v93 = temporaryAssetID2;
          v94 = 2114;
          v95 = dataSourceIdentifier4;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "Delete Asset from BKLibraryManager (possibleDuplicateAssets) with duplicate assetID: %{mask.hash}@ [%{mask.hash}@], dataSource: %{public}@", buf, 0x34u);

          v46 = mocCopy;
        }

        [v46 deleteObject:v50];
      }

      v47 = [v44 countByEnumeratingWithState:&v66 objects:v96 count:16];
    }

    while (v47);
  }

  return v60;
}

- (void)_removeDupesByTemporaryAssetID:(id)d inMoc:(id)moc
{
  dCopy = d;
  mocCopy = moc;
  v62 = objc_alloc_init(NSMutableArray);
  v58 = objc_alloc_init(NSMutableDictionary);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = dCopy;
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
        temporaryAssetID = [v10 temporaryAssetID];
        if ([temporaryAssetID length])
        {
          v12 = [v58 objectForKeyedSubscript:temporaryAssetID];
          if (!v12)
          {
            v12 = objc_alloc_init(NSMutableArray);
            [v58 setObject:v12 forKeyedSubscript:temporaryAssetID];
          }

          [v12 addObject:v10];
        }

        else
        {
          assetID = [v10 assetID];
          v14 = [assetID length];

          if (!v14)
          {
            v15 = BKLibraryLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              title = [v10 title];
              author = [v10 author];
              dataSourceIdentifier = [v10 dataSourceIdentifier];
              *buf = 138412802;
              v86 = title;
              v87 = 2112;
              v88 = author;
              v89 = 2114;
              v90 = dataSourceIdentifier;
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
  allValues = [v58 allValues];
  v19 = v62;
  v61 = [allValues countByEnumeratingWithState:&v77 objects:v98 count:16];
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
          objc_enumerationMutation(allValues);
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
              assetID2 = [*(*(&v73 + 1) + 8 * j) assetID];
              if ([assetID2 length])
              {
                assetID3 = [v25 assetID];
                v31 = [assetID3 length];

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

              dataSourcesByIdentifier = [(BKLibraryManager *)self dataSourcesByIdentifier];
              dataSourceIdentifier2 = [v25 dataSourceIdentifier];
              v35 = [dataSourcesByIdentifier objectForKeyedSubscript:dataSourceIdentifier2];

              dataSourcesByIdentifier2 = [(BKLibraryManager *)self dataSourcesByIdentifier];
              dataSourceIdentifier3 = [v28 dataSourceIdentifier];
              v38 = [dataSourcesByIdentifier2 objectForKeyedSubscript:dataSourceIdentifier3];

              rank = [v38 rank];
              if (rank < [v35 rank])
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
      v61 = [allValues countByEnumeratingWithState:&v77 objects:v98 count:16];
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
          assetID4 = [v51 assetID];
          temporaryAssetID2 = [v51 temporaryAssetID];
          dataSourceIdentifier4 = [v51 dataSourceIdentifier];
          *buf = 141559042;
          v86 = 1752392040;
          v87 = 2112;
          v88 = assetID4;
          v89 = 2160;
          v90 = 1752392040;
          v91 = 2112;
          v92 = temporaryAssetID2;
          v93 = 2114;
          v94 = dataSourceIdentifier4;
          _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "Delete Asset from BKLibraryManager (possibleDuplicateAssets) %{mask.hash}@ with duplicate temporaryAssetID: [%{mask.hash}@], dataSource: %{public}@", buf, 0x34u);
        }

        [mocCopy deleteObject:v51];
      }

      v48 = [v46 countByEnumeratingWithState:&v65 objects:v95 count:16];
    }

    while (v48);
  }
}

- (void)wq_dq_integrateClaimedAssetsReason:(signed __int16)reason context:(id)context
{
  reasonCopy = reason;
  contextCopy = context;
  selfCopy = self;
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

  dq_assetsToReconcile = [(BKLibraryManager *)selfCopy dq_assetsToReconcile];
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithShort:reasonCopy];
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dq_assetsToReconcile count]);
    LODWORD(buf.version) = 136315650;
    *(&buf.version + 4) = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
    WORD2(buf.retain) = 2112;
    *(&buf.retain + 6) = v9;
    HIWORD(buf.release) = 2112;
    buf.copyDescription = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s: reason=%@, assetsToReconcile=%@", &buf, 0x20u);
  }

  unclaimedAssetIDs = [(BKLibraryManager *)selfCopy unclaimedAssetIDs];
  unclaimedTemporaryAssetIDs = [(BKLibraryManager *)selfCopy unclaimedTemporaryAssetIDs];
  v125 = objc_alloc_init(NSMutableArray);
  v106 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(dq_assetsToReconcile, "count")}];
  v104 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(dq_assetsToReconcile, "count")}];
  v103 = objc_opt_new();
  if ([dq_assetsToReconcile count])
  {
    kdebug_trace();
    v105 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    allKeys = [dq_assetsToReconcile allKeys];
    v99 = [(BKLibraryManager *)selfCopy predicateForAssetIDsTaggedLibraryAssets:allKeys];
    v98 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:allKeys];
    v176[0] = v99;
    v176[1] = v98;
    v11 = [NSArray arrayWithObjects:v176 count:2];
    v12 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];
    [v105 setPredicate:v12];

    [v105 setReturnsObjectsAsFaults:0];
    [v105 setFetchBatchSize:25];
    v158 = 0;
    v102 = [contextCopy executeFetchRequest:v105 error:&v158];
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
      v107 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dq_assetsToReconcile, "count")}];
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
            assetID = [v17 assetID];
            temporaryAssetID = [v17 temporaryAssetID];
            if (assetID)
            {
              v20 = [dq_assetsToReconcile objectForKeyedSubscript:assetID];
              if (v20)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v20 = 0;
            }

            if (temporaryAssetID)
            {
              v20 = [dq_assetsToReconcile objectForKeyedSubscript:temporaryAssetID];
            }

LABEL_23:
            if (v20)
            {
              if ([v20 dataSourcesBitmask])
              {
                [(__CFSet *)v111 addObject:v20];
                dataSourceIdentifier = [v17 dataSourceIdentifier];
                dataSourcesBitmask = [v20 dataSourcesBitmask];
                dataSources = [(BKLibraryManager *)selfCopy dataSources];
                v24 = sub_C48C(dataSourcesBitmask, dataSources);
                identifier = [v24 identifier];

                dataSourcesByIdentifier = [(BKLibraryManager *)selfCopy dataSourcesByIdentifier];
                v117 = [dataSourcesByIdentifier objectForKeyedSubscript:dataSourceIdentifier];

                dataSourcesByIdentifier2 = [(BKLibraryManager *)selfCopy dataSourcesByIdentifier];
                v120 = [dataSourcesByIdentifier2 objectForKeyedSubscript:identifier];

                if (v120)
                {
                  rank = [v120 rank];
                  if (rank <= [v117 rank] || reasonCopy == 4 || reasonCopy == 2)
                  {
                    asset = [v20 asset];
                    dataSourcesBitmask2 = [v20 dataSourcesBitmask];
                    dataSources2 = [(BKLibraryManager *)selfCopy dataSources];
                    if (!sub_238C4(dataSourcesBitmask2, dataSources2))
                    {
                      goto LABEL_42;
                    }

                    asset2 = [v20 asset];
                    v31 = asset2 != 0;

                    if (asset)
                    {
                      v32 = v31;
                    }

                    else
                    {
                      v32 = 0;
                    }

                    if (v32)
                    {
                      [v107 addObject:asset];
                      storeID = [asset storeID];
                      if (storeID && (v34 = [asset contentType] == 6, storeID, !v34))
                      {
                        dataSources2 = [asset storeID];
                        [v106 addObject:dataSources2];
LABEL_42:
                      }

                      else
                      {
                        assetID2 = [asset assetID];
                        if (assetID2)
                        {
                          v36 = [asset state] == 1;

                          if (v36)
                          {
                            dataSources2 = [asset assetID];
                            [v104 addObject:dataSources2];
                            goto LABEL_42;
                          }
                        }
                      }
                    }

                    state = [v17 state];
                    asset3 = [v20 asset];
                    state2 = [asset3 state];

                    dataSources3 = [(BKLibraryManager *)selfCopy dataSources];
                    v41 = sub_1BF80(selfCopy, v17, v20, reasonCopy, dataSources3);

                    if (v41)
                    {
                      [v108 addObject:v17];
                    }

                    if (([dataSourceIdentifier isEqualToString:identifier]& 1) == 0)
                    {
                      v173[0] = identifier;
                      v172[0] = @"BKLibraryOwnershipNewDatasource";
                      v172[1] = @"BKLibraryOwnershipNewState";
                      v42 = [NSNumber numberWithInteger:state2];
                      v173[1] = v42;
                      v172[2] = @"BKLibraryOwnershipAssetIDKey";
                      permanentOrTemporaryAssetID = [v17 permanentOrTemporaryAssetID];
                      v173[2] = permanentOrTemporaryAssetID;
                      v173[3] = dataSourceIdentifier;
                      v172[3] = @"BKLibraryOwnershipOldDatasource";
                      v172[4] = @"BKLibraryOwnershipOldState";
                      v44 = [NSNumber numberWithInteger:state];
                      v173[4] = v44;
                      v45 = [NSDictionary dictionaryWithObjects:v173 forKeys:v172 count:5];
                      [v125 addObject:v45];
                    }
                  }
                }

                if (assetID)
                {
                  [unclaimedAssetIDs removeObject:assetID];
                }

                if (temporaryAssetID)
                {
                  [unclaimedTemporaryAssetIDs removeObject:temporaryAssetID];
                }

                if (assetID)
                {
                  [v113 addObject:assetID];
                }

                if (temporaryAssetID)
                {
                  [v113 addObject:temporaryAssetID];
                }

LABEL_57:
              }

              goto LABEL_59;
            }

            dataSourceIdentifier = BKLibraryLog();
            if (os_log_type_enabled(dataSourceIdentifier, OS_LOG_TYPE_DEBUG))
            {
              *v169 = 138412546;
              *&v169[4] = assetID;
              *&v169[12] = 2112;
              *&v169[14] = temporaryAssetID;
              _os_log_debug_impl(&dword_0, dataSourceIdentifier, OS_LOG_TYPE_DEBUG, "We should have had an update for %@ / %@", v169, 0x16u);
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
                v51 = [dq_assetsToReconcile objectForKeyedSubscript:v50];
                v52 = v51;
                if (v51)
                {
                  [v51 postIntegrateCleanup];
                }

                [dq_assetsToReconcile removeObjectForKey:v50];
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

          [(BKLibraryManager *)selfCopy _removePossibleDupes:v108 inMoc:contextCopy];
          v55 = BKLibraryLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dq_assetsToReconcile count]);
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
          v139 = selfCopy;
          v140 = contextCopy;
          v149 = reasonCopy;
          v141 = v103;
          v58 = v107;
          v142 = v58;
          v143 = v106;
          v144 = v104;
          v145 = v125;
          v146 = unclaimedAssetIDs;
          v147 = unclaimedTemporaryAssetIDs;
          [dq_assetsToReconcile enumerateKeysAndObjectsUsingBlock:v137];
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
            assetUpdatesByIdentifier = [(BKLibraryManager *)selfCopy assetUpdatesByIdentifier];
            v63 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [assetUpdatesByIdentifier count]);
            *v165 = 136315394;
            v166 = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
            v167 = 2112;
            v168 = v63;
            _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "%s: postIntegrateCleanup=%@", v165, 0x16u);
          }

          assetUpdatesByIdentifier2 = [(BKLibraryManager *)selfCopy assetUpdatesByIdentifier];
          [assetUpdatesByIdentifier2 enumerateKeysAndObjectsUsingBlock:&stru_D6168];

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
    assetUpdatesByIdentifier3 = [(BKLibraryManager *)selfCopy assetUpdatesByIdentifier];
    v67 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [assetUpdatesByIdentifier3 count]);
    LODWORD(buf.version) = 136315394;
    *(&buf.version + 4) = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
    WORD2(buf.retain) = 2112;
    *(&buf.retain + 6) = v67;
    _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "%s: purge=%@", &buf, 0x16u);
  }

  if ([unclaimedAssetIDs count] || objc_msgSend(unclaimedTemporaryAssetIDs, "count"))
  {
    v118 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v118 setReturnsObjectsAsFaults:0];
    [v118 setFetchBatchSize:25];
    if ([unclaimedAssetIDs count] && objc_msgSend(unclaimedTemporaryAssetIDs, "count"))
    {
      v68 = [(BKLibraryManager *)selfCopy predicateForAssetIDsTaggedLibraryAssets:unclaimedAssetIDs];
      v69 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:unclaimedTemporaryAssetIDs];
      v164[0] = v68;
      v164[1] = v69;
      v70 = [NSArray arrayWithObjects:v164 count:2];
      v71 = [NSCompoundPredicate orPredicateWithSubpredicates:v70];
      [v118 setPredicate:v71];
    }

    else if ([unclaimedAssetIDs count])
    {
      v68 = [(BKLibraryManager *)selfCopy predicateForAssetIDsTaggedLibraryAssets:unclaimedAssetIDs];
      [v118 setPredicate:v68];
    }

    else
    {
      if (![unclaimedTemporaryAssetIDs count])
      {
        sub_8E724();
      }

      v68 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:unclaimedTemporaryAssetIDs];
      [v118 setPredicate:v68];
    }

    v136 = 0;
    v116 = [contextCopy executeFetchRequest:v118 error:&v136];
    v114 = v136;
    if (v116)
    {
      imageSource = [(BKLibraryManager *)selfCopy imageSource];
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
              assetID3 = [v74 assetID];
              temporaryAssetID2 = [v74 temporaryAssetID];
              v77 = temporaryAssetID2;
              if (assetID3)
              {
                v78 = assetID3;
              }

              else
              {
                v78 = temporaryAssetID2;
              }

              v79 = v78;
              v161[0] = @"BKLibraryOwnershipOldDatasource";
              dataSourceIdentifier2 = [v74 dataSourceIdentifier];
              v81 = dataSourceIdentifier2;
              if (!dataSourceIdentifier2)
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

              if (!dataSourceIdentifier2)
              {
              }

              [imageSource removeImagesForAssetID:assetID3 temporaryAssetID:v77];
              v84 = BKLibraryLog();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
              {
                title = [v74 title];
                LODWORD(buf.version) = 138412546;
                *(&buf.version + 4) = title;
                WORD2(buf.retain) = 2112;
                *(&buf.retain + 6) = v79;
                _os_log_debug_impl(&dword_0, v84, OS_LOG_TYPE_DEBUG, "Delete Asset from BKLibraryManager (unclaimedLibraryAsset) %@ [%@]", &buf, 0x16u);
              }

              [(BKLibraryManager *)selfCopy archiveTransientProperties:v74];
              [contextCopy deleteObject:v74];
            }
          }

          v72 = [v124 countByEnumeratingWithState:&v132 objects:v163 count:16];
        }

        while (v72);
      }

      [unclaimedAssetIDs removeAllObjects];
      [unclaimedTemporaryAssetIDs removeAllObjects];
      v86 = imageSource;
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

  identifiersForAssetsNeedingReconcile = [(BKLibraryManager *)selfCopy identifiersForAssetsNeedingReconcile];
  [identifiersForAssetsNeedingReconcile removeAllObjects];

  insertedObjects = [contextCopy insertedObjects];
  v90 = [insertedObjects count];
  LOBYTE(v90) = v90 == [v103 count];

  if ((v90 & 1) == 0)
  {
    v91 = BKLibraryLog();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      sub_8E7C8(v103, contextCopy, v91);
    }
  }

  [(BKLibraryManager *)selfCopy wq_dq_saveDatabaseContext:contextCopy];
  if ([v125 count])
  {
    v92 = +[NSNotificationCenter defaultCenter];
    v159 = @"BKLibraryOwnershipAssetsKey";
    v160 = v125;
    v93 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
    [v92 postNotificationName:@"BKLibraryOwnershipDidChangeNotification" object:selfCopy userInfo:v93];

    v94 = BKLibraryLog();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      sub_8E89C(v125, reasonCopy);
    }
  }

  v95 = &_dispatch_main_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23E60;
  block[3] = &unk_D5528;
  block[4] = selfCopy;
  dispatch_async(&_dispatch_main_q, block);

  v96 = BKLibraryLog();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v97 = [NSNumber numberWithShort:reasonCopy];
    LODWORD(buf.version) = 136315394;
    *(&buf.version + 4) = "[BKLibraryManager wq_dq_integrateClaimedAssetsReason:context:]";
    WORD2(buf.retain) = 2112;
    *(&buf.retain + 6) = v97;
    _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "%s: reason=%@, done", &buf, 0x16u);
  }
}

- (void)wq_reconcileDataSourceAssetsForReason:(signed __int16)reason context:(id)context
{
  reasonCopy = reason;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Other";
    if (reasonCopy == 4)
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
  dataSources = [(BKLibraryManager *)self dataSources];
  v9 = [dataSources valueForKey:@"identifier"];
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
        completionQueue = [(BKLibraryManager *)self completionQueue];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_24360;
        v33[3] = &unk_D61B8;
        v33[4] = self;
        v33[5] = v14;
        v36 = reasonCopy;
        v34 = v26;
        v35 = v7;
        sub_1473C(v14, completionQueue, v33);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }

  delegate = [(BKLibraryManager *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(BKLibraryManager *)self delegate];
    [delegate2 initialDataSourceFetchInitiated];
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
    if (reasonCopy == 4)
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

- (id)metadataForAssetAtURL:(id)l needsCoordination:(BOOL)coordination
{
  lCopy = l;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_83E0;
  v30 = sub_83F0;
  v31 = 0;
  [lCopy path];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_24ABC;
  v23[3] = &unk_D6208;
  v23[4] = self;
  v7 = v25 = coordination;
  v24 = v7;
  v8 = objc_retainBlock(v23);
  if (v7)
  {
    if (+[NSThread isMainThread])
    {
      v9 = [NSPredicate predicateWithFormat:@"%K == %@", @"path", v7];
      uiChildContext = [(BKLibraryManager *)self uiChildContext];
      v11 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:v7 predicate:v9 inManagedObjectContext:uiChildContext];

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

- (id)assetIDForAssetAtURLOnMainThread:(id)thread
{
  threadCopy = thread;
  if (threadCopy && +[NSThread isMainThread])
  {
    absoluteString = [threadCopy absoluteString];
    path = [threadCopy path];
    v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"path", path];
    uiChildContext = [(BKLibraryManager *)self uiChildContext];
    v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:absoluteString predicate:v7 inManagedObjectContext:uiChildContext];

    permanentOrTemporaryAssetID = [v9 permanentOrTemporaryAssetID];
  }

  else
  {
    permanentOrTemporaryAssetID = 0;
  }

  return permanentOrTemporaryAssetID;
}

- (id)pageProgressionDirectionForAssetAtURLOnMainThread:(id)thread
{
  threadCopy = thread;
  if (threadCopy && +[NSThread isMainThread])
  {
    absoluteString = [threadCopy absoluteString];
    path = [threadCopy path];
    v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"path", path];
    uiChildContext = [(BKLibraryManager *)self uiChildContext];
    v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:absoluteString predicate:v7 inManagedObjectContext:uiChildContext];

    pageProgressionDirection = [v9 pageProgressionDirection];
  }

  else
  {
    pageProgressionDirection = 0;
  }

  return pageProgressionDirection;
}

- (id)bookDescriptionForAssetID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_83E0;
  v17 = sub_83F0;
  v18 = 0;
  if (+[NSThread isMainThread])
  {
    v5 = [(BKLibraryManager *)self libraryAssetOnMainQueueWithAssetID:dCopy];
    bookDescription = [v5 bookDescription];
    v7 = v14[5];
    v14[5] = bookDescription;
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_25124;
    v10[3] = &unk_D6258;
    v10[4] = self;
    v11 = dCopy;
    v12 = &v13;
    [(BKLibraryManager *)self performBackgroundReadOnlyBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)seriesTitleForAssetID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_83E0;
  v20 = sub_83F0;
  v21 = 0;
  if (+[NSThread isMainThread])
  {
    v5 = [(BKLibraryManager *)self libraryAssetOnMainQueueWithAssetID:dCopy];
    seriesID = [v5 seriesID];

    if (seriesID)
    {
      seriesID2 = [v5 seriesID];
      v8 = [(BKLibraryManager *)self libraryAssetOnMainQueueWithAssetID:seriesID2];

      title = [v8 title];
      v10 = v17[5];
      v17[5] = title;
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
    v14 = dCopy;
    v15 = &v16;
    [(BKLibraryManager *)self performBackgroundReadOnlyBlockAndWait:v13];
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)deleteAssetIDs:(id)ds exhaustive:(BOOL)exhaustive
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_254CC;
  v6[3] = &unk_D6280;
  selfCopy = self;
  dsCopy = ds;
  exhaustiveCopy = exhaustive;
  v5 = dsCopy;
  [(BKLibraryManager *)selfCopy performBackgroundReadOnlyBlock:v6];
}

- (void)didHidePurchasedAssetID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    collectionController = [(BKLibraryManager *)self collectionController];
    [collectionController removeAssetID:dCopy fromCollectionID:kBKCollectionDefaultIDWantToRead completion:0];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_25604;
    v6[3] = &unk_D58E0;
    v6[4] = self;
    v7 = dCopy;
    [(BKLibraryManager *)self performBlockOnWorkerQueue:v6];
  }
}

- (BOOL)isExplicitMaterialAllowed
{
  v2 = +[BURestrictionsProvider sharedInstance];
  isExplicitContentAllowed = [v2 isExplicitContentAllowed];

  return isExplicitContentAllowed;
}

- (unint64_t)countOfPurchasedBooks
{
  if (!+[NSThread isMainThread])
  {
    sub_8EC68();
  }

  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  predicateForPurchasedBooksAssets = [(BKLibraryManager *)self predicateForPurchasedBooksAssets];
  [v3 setPredicate:predicateForPurchasedBooksAssets];

  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v10 = 0;
  v6 = [uiChildContext countForFetchRequest:v3 error:&v10];
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

- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)d total:(unint64_t *)total purchased:(unint64_t *)purchased context:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy && total && purchased)
  {
    totalCopy = total;
    purchasedCopy = purchased;
    v12 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:dCopy];
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v13 setPredicate:v12];
    v31 = 0;
    v14 = [contextCopy countForFetchRequest:v13 error:&v31];
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
    v23 = [contextCopy countForFetchRequest:v13 error:&v30];
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

    *totalCopy = v14;
    *purchasedCopy = v23;
  }
}

- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)d total:(unint64_t *)total finished:(unint64_t *)finished context:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy && total && finished)
  {
    finishedCopy = finished;
    v12 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:dCopy];
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v13 setPredicate:v12];
    v25 = 0;
    v14 = [contextCopy countForFetchRequest:v13 error:&v25];
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
    v20 = [contextCopy countForFetchRequest:v13 error:&v24];
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

    *total = v14;
    *finishedCopy = v20;
  }
}

- (void)countOfSeriesLibraryAssetsWithSeriesID:(id)d total:(unint64_t *)total markedFinished:(unint64_t *)finished context:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy && total && finished)
  {
    finishedCopy = finished;
    v12 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:dCopy];
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v13 setPredicate:v12];
    v25 = 0;
    v14 = [contextCopy countForFetchRequest:v13 error:&v25];
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
    v20 = [contextCopy countForFetchRequest:v13 error:&v24];
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

    *total = v14;
    *finishedCopy = v20;
  }
}

- (id)predicateForContainerWithSeriesIDLibraryAsset:(id)asset
{
  asset = [NSPredicate predicateWithFormat:@"%K = %@", @"seriesID", asset];
  v9[0] = asset;
  predicateForContainerLibraryAssets = [(BKLibraryManager *)self predicateForContainerLibraryAssets];
  v9[1] = predicateForContainerLibraryAssets;
  v6 = [NSArray arrayWithObjects:v9 count:2];

  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)predicateForHighWaterMarkCapableLibraryAssets
{
  predicateToExcludeUnownedLibraryAssets = [(BKLibraryManager *)self predicateToExcludeUnownedLibraryAssets];
  predicateForExcludingContainerLibraryAssets = [(BKLibraryManager *)self predicateForExcludingContainerLibraryAssets];
  v9[1] = predicateForExcludingContainerLibraryAssets;
  predicateToExcludeAudiobookSupplementalContent = [objc_opt_class() predicateToExcludeAudiobookSupplementalContent];
  v9[2] = predicateToExcludeAudiobookSupplementalContent;
  v6 = [NSArray arrayWithObjects:v9 count:3];

  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)predicateForIndexing
{
  predicateForLocalLibraryAssets = [(BKLibraryManager *)self predicateForLocalLibraryAssets];
  v14[0] = predicateForLocalLibraryAssets;
  v4 = +[BKLibraryManager predicateForAllOwnedAudiobooks];
  v14[1] = v4;
  v5 = [NSArray arrayWithObjects:v14 count:2];
  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  predicateToExcludeUnownedLibraryAssets = [(BKLibraryManager *)self predicateToExcludeUnownedLibraryAssets];
  v13[0] = predicateToExcludeUnownedLibraryAssets;
  predicateForExcludingContainerLibraryAssets = [(BKLibraryManager *)self predicateForExcludingContainerLibraryAssets];
  v13[1] = predicateForExcludingContainerLibraryAssets;
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

- (id)_predicateForSearchText:(id)text
{
  textCopy = text;
  v5 = [[NSMutableArray alloc] initWithCapacity:6];
  if ([textCopy length])
  {
    predicateForSearchableLibraryAssets = [(BKLibraryManager *)self predicateForSearchableLibraryAssets];
    [v5 addObject:predicateForSearchableLibraryAssets];

    v7 = [(BKLibraryManager *)self predicateForMatchingSearchStringLibraryAssets:textCopy];
    [v5 addObject:v7];
  }

  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v8;
}

- (id)_booksWithPredicate:(id)predicate sortDescriptors:(id)descriptors context:(id)context error:(id *)error
{
  contextCopy = context;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v12 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v12 setPredicate:predicateCopy];

  [v12 setSortDescriptors:descriptorsCopy];
  [v12 setReturnsObjectsAsFaults:0];
  v13 = [contextCopy executeFetchRequest:v12 error:error];

  return v13;
}

+ (id)predicateToExcludeAssetsForSeriesAndStoreItemsNotAddedToCollections
{
  predicateToExcludeAssetsForSeriesAndStoreItems = [self predicateToExcludeAssetsForSeriesAndStoreItems];
  v9[0] = predicateToExcludeAssetsForSeriesAndStoreItems;
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

+ (id)predicateToExcludeAssetsForUnpurchasedItemsInCollection:(id)collection
{
  v3 = kBKCollectionDefaultIDAudiobooks;
  v4 = [collection isEqualToString:kBKCollectionDefaultIDAudiobooks];
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

+ (id)predicateForAssetsInCollectionID:(id)d allowExplicit:(BOOL)explicit includeSeriesItems:(BOOL)items
{
  itemsCopy = items;
  dCopy = d;
  if (!dCopy)
  {
    dCopy = kBKCollectionDefaultAll;
  }

  defaultManager = [self defaultManager];
  usePerformancePredicates = [defaultManager usePerformancePredicates];

  if (usePerformancePredicates)
  {
    v11 = [NSPredicate predicateWithValue:1];
  }

  else
  {
    v12 = +[NSMutableArray array];
    dCopy = [NSPredicate predicateWithFormat:@"ANY collectionMembers.collection.collectionID == %@", dCopy];
    [v12 addObject:dCopy];

    if (!explicit)
    {
      v14 = +[BKLibraryManager predicateToExcludeAssetsWithExplicitContent];
      [v12 addObject:v14];
    }

    v15 = [dCopy isEqualToString:kBKCollectionDefaultAll];
    v16 = [dCopy isEqualToString:kBKCollectionDefaultIDBooks];
    v17 = [dCopy isEqualToString:kBKCollectionDefaultIDAudiobooks];
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
        v22 = [BKLibraryManager predicateToExcludeAssetsForUnpurchasedItemsInCollection:dCopy];
        [v12 addObject:v22];
      }
    }

    v23 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
    [v12 addObject:v23];

    v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    if (itemsCopy)
    {
      dCopy2 = [NSPredicate predicateWithFormat:@"ANY seriesContainer.collectionMembers.collection.collectionID == %@", dCopy];
      v25 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
      v32[0] = dCopy2;
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

  defaultManager = [self defaultManager];
  isExplicitMaterialAllowed = [defaultManager isExplicitMaterialAllowed];

  if ((isExplicitMaterialAllowed & 1) == 0)
  {
    v7 = [NSPredicate predicateWithFormat:@"isExplicit == NO OR isExplicit == NULL"];
    [v3 addObject:v7];
  }

  predicateToExcludeAudiobookSupplementalContent = [self predicateToExcludeAudiobookSupplementalContent];
  [v3 addObject:predicateToExcludeAudiobookSupplementalContent];

  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v3];

  return v9;
}

+ (id)predicateForAllOwnedAudiobooks
{
  predicateForAllOwnedBooks = [self predicateForAllOwnedBooks];
  predicateForAudiobooks = [self predicateForAudiobooks];
  v9[1] = predicateForAudiobooks;
  predicateForNonPreorders = [self predicateForNonPreorders];
  v9[2] = predicateForNonPreorders;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)predicateForCollectionMembersInCollectionID:(id)d hideUnownedItems:(BOOL)items allowExplicit:(BOOL)explicit
{
  dCopy = d;
  if (!dCopy)
  {
    dCopy = kBKCollectionDefaultAll;
  }

  defaultManager = [self defaultManager];
  usePerformancePredicates = [defaultManager usePerformancePredicates];

  if (usePerformancePredicates)
  {
    v10 = [NSPredicate predicateWithValue:1];
  }

  else
  {
    v11 = +[NSMutableArray array];
    dCopy = [NSPredicate predicateWithFormat:@"collection.collectionID == %@", dCopy];
    [v11 addObject:dCopy];

    v13 = [NSPredicate predicateWithFormat:@"asset != NULL"];
    [v11 addObject:v13];

    if (!explicit)
    {
      v14 = +[BKLibraryManager predicateToExcludeCollectionMembersWithExplicitContent];
      [v11 addObject:v14];
    }

    v15 = [dCopy isEqualToString:kBKCollectionDefaultAll];
    v16 = [dCopy isEqualToString:kBKCollectionDefaultIDBooks];
    v17 = [dCopy isEqualToString:kBKCollectionDefaultIDAudiobooks];
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
        v22 = [BKLibraryManager predicateToExcludeCollectionMembersForUnpurchasedItemsInCollection:dCopy];
        [v11 addObject:v22];
      }
    }

    v23 = +[BKLibraryManager predicateToExcludeCollectionMembersForAudiobookSupplementalContent];
    [v11 addObject:v23];

    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
  }

  return v10;
}

+ (id)predicateForCollectionMembersMatchingSearchStringLibraryAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy length])
  {
    assetsCopy = [NSPredicate predicateWithFormat:@"asset.title contains[cd] %@ OR asset.author contains[cd] %@ OR asset.genre contains[cd] %@ OR asset.localOnlySeriesItemsParent.title CONTAINS[cd] %@", assetsCopy, assetsCopy, assetsCopy, assetsCopy];
  }

  else
  {
    assetsCopy = 0;
  }

  return assetsCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_collectionManager)
  {
    v3 = [[BKLibraryCollectionManager alloc] initWithLibraryManager:selfCopy];
    collectionManager = selfCopy->_collectionManager;
    selfCopy->_collectionManager = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_collectionManager;

  return v5;
}

- (void)_newAssetIDAdded:(id)added
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_27C2C;
  v10 = &unk_D62A8;
  selfCopy = self;
  addedCopy = added;
  v12 = addedCopy;
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
    v7 = addedCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)waitForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([dCopy length])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2810C;
    v14[3] = &unk_D62F8;
    v14[4] = self;
    v8 = dCopy;
    v15 = v8;
    v16 = completionCopy;
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
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (id)sortDescriptorsForMode:(unint64_t)mode collectionID:(id)d
{
  dCopy = d;
  collectionProvider = [(BKLibraryManager *)self collectionProvider];
  v8 = [collectionProvider isAllBooksCollection:dCopy];

  v9 = 0;
  if (mode <= 2)
  {
    if (mode)
    {
      if (mode != 1)
      {
        if (mode != 2)
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

  if (mode > 4)
  {
    if (mode == 5)
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
      if (mode != 6)
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

  if (mode != 3)
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
  predicateForLocalLibraryAssets = [(BKLibraryManager *)self predicateForLocalLibraryAssets];
  v15 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v4 = [BKLibraryManager predicateForContentType:6];
  v19[0] = v4;
  v5 = +[BKLibraryManager predicateForExcludingUnownedAudiobookAssets];
  v19[1] = v5;
  v6 = [NSArray arrayWithObjects:v19 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  if (BLAudiobookStreamingEnabled())
  {
    v18[0] = predicateForLocalLibraryAssets;
    v18[1] = v7;
    v8 = [NSArray arrayWithObjects:v18 count:2];
    v9 = [NSCompoundPredicate orPredicateWithSubpredicates:v8];
  }

  else
  {
    v9 = predicateForLocalLibraryAssets;
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

- (id)mostRecentlyOpenedBooks:(unint64_t)books inManagedObjectContext:(id)context
{
  contextCopy = context;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v7 setFetchLimit:books];
  predicateForMostRecentBooksOpened = [(BKLibraryManager *)self predicateForMostRecentBooksOpened];
  [v7 setPredicate:predicateForMostRecentBooksOpened];

  [v7 setReturnsObjectsAsFaults:0];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"lastOpenDate" ascending:0];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  [v7 setSortDescriptors:v10];

  v13 = 0;
  v11 = [contextCopy executeFetchRequest:v7 error:&v13];

  return v11;
}

- (id)mostRecentlyOpenedLibraryAssetWithTypes:(id)types inManagedObjectContext:(id)context
{
  v4 = [(BKLibraryManager *)self mostRecentlyOpenedLibraryAssetsWithTypes:types limit:1 inManagedObjectContext:context];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)mostRecentlyOpenedLibraryAssetsWithTypes:(id)types limit:(unint64_t)limit inManagedObjectContext:(id)context
{
  typesCopy = types;
  contextCopy = context;
  predicateForMostRecentBooksOpened = [(BKLibraryManager *)self predicateForMostRecentBooksOpened];
  if (typesCopy)
  {
    v11 = [BKLibraryManager predicateForContentTypes:typesCopy];
    v21[0] = predicateForMostRecentBooksOpened;
    v21[1] = v11;
    v12 = [NSArray arrayWithObjects:v21 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

    predicateForMostRecentBooksOpened = v13;
  }

  v14 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v14 setPredicate:predicateForMostRecentBooksOpened];
  [v14 setReturnsObjectsAsFaults:0];
  v15 = [[NSSortDescriptor alloc] initWithKey:@"lastOpenDate" ascending:0];
  v20 = v15;
  v16 = [NSArray arrayWithObjects:&v20 count:1];
  [v14 setSortDescriptors:v16];

  if (limit)
  {
    [v14 setFetchLimit:limit];
  }

  v19 = 0;
  v17 = [contextCopy executeFetchRequest:v14 error:&v19];

  return v17;
}

- (id)mostRecentlyEngagedLibraryAssetWithTypes:(id)types inManagedObjectContext:(id)context
{
  v4 = [(BKLibraryManager *)self mostRecentlyEngagedLibraryAssetsWithTypes:types limit:1 inManagedObjectContext:context];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)mostRecentlyEngagedLibraryAssetsWithTypes:(id)types limit:(unint64_t)limit inManagedObjectContext:(id)context
{
  typesCopy = types;
  contextCopy = context;
  v9 = +[BKLibraryManager _recentlyEngagedPredicate];
  if (typesCopy)
  {
    v10 = [BKLibraryManager predicateForContentTypes:typesCopy];
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

  if (limit)
  {
    [v13 setFetchLimit:limit];
  }

  v18 = 0;
  v16 = [contextCopy executeFetchRequest:v13 error:&v18];

  return v16;
}

- (id)libraryAssetsAsDictionaryWithProperties:(id)properties
{
  propertiesCopy = properties;
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
  v6 = propertiesCopy;
  v11 = v6;
  selfCopy = self;
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

  predicateToExcludeAudiobookSupplementalContent = [objc_opt_class() predicateToExcludeAudiobookSupplementalContent];
  [v3 addObject:predicateToExcludeAudiobookSupplementalContent];

  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v3];

  return v9;
}

- (id)predicateFor_AllAudioBooks_LibraryAssets
{
  v3 = [objc_opt_class() predicateForContentType:6];
  v8[0] = v3;
  predicateFor_AllBooks_LibraryAssets = [(BKLibraryManager *)self predicateFor_AllBooks_LibraryAssets];
  v8[1] = predicateFor_AllBooks_LibraryAssets;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v6;
}

- (id)predicateFor_All_PDFs_LibraryAssets
{
  v3 = [objc_opt_class() predicateForContentType:3];
  v8[0] = v3;
  predicateFor_AllBooks_LibraryAssets = [(BKLibraryManager *)self predicateFor_AllBooks_LibraryAssets];
  v8[1] = predicateFor_AllBooks_LibraryAssets;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateFor_All_Finished_LibraryAssets
{
  defaultManager = [self defaultManager];
  isExplicitMaterialAllowed = [defaultManager isExplicitMaterialAllowed];

  return [self predicateFor_All_Finished_LibraryAssetsAllowsExplicit:isExplicitMaterialAllowed];
}

+ (id)predicateFor_All_Finished_LibraryAssetsAllowsExplicit:(BOOL)explicit
{
  v5 = +[NSMutableArray array];
  LODWORD(v6) = kAEAnnotationReadingLocationSignificantHighwaterMark;
  v7 = [NSNumber numberWithFloat:v6];
  v8 = [NSPredicate predicateWithFormat:@"isFinished == YES OR (bookHighWaterMarkProgress >= %@ AND (notFinished == NULL OR notFinished == NO) OR (dateFinished != NULL))", v7];
  [v5 addObject:v8];

  if (!explicit)
  {
    v9 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    [v5 addObject:v9];
  }

  predicateToExcludeAudiobookSupplementalContent = [self predicateToExcludeAudiobookSupplementalContent];
  [v5 addObject:predicateToExcludeAudiobookSupplementalContent];

  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v11;
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets
{
  defaultManager = [self defaultManager];
  isExplicitMaterialAllowed = [defaultManager isExplicitMaterialAllowed];

  return [self predicateFor_All_Marked_As_Finished_LibraryAssetsAllowsExplicit:isExplicitMaterialAllowed];
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssetsAllowsExplicit:(BOOL)explicit
{
  v5 = +[NSMutableArray array];
  v6 = [NSPredicate predicateWithFormat:@"isFinished == YES"];
  [v5 addObject:v6];

  if (!explicit)
  {
    v7 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
    [v5 addObject:v7];
  }

  predicateToExcludeAudiobookSupplementalContent = [self predicateToExcludeAudiobookSupplementalContent];
  [v5 addObject:predicateToExcludeAudiobookSupplementalContent];

  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v9;
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_In_Year:(int64_t)year
{
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v20 = [BKLibraryManager _dateComponentsForYear:year];
  v19 = [v4 dateFromComponents:v20];
  [v20 setYear:year + 1];
  v18 = [v4 dateFromComponents:v20];
  v15 = [NSPredicate predicateWithFormat:@"dateFinished >= %@ AND dateFinished < %@ AND finishedDateKind != %i", v19, v18, 2];
  v5 = [BKLibraryManager _dateComponentsForYear:year];
  v6 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v6];

  v16 = [v4 dateFromComponents:v5];
  [v5 setYear:year + 1];
  v7 = [v4 dateFromComponents:v5];
  v8 = [NSPredicate predicateWithFormat:@"dateFinished >= %@ AND dateFinished < %@ AND finishedDateKind == %i", v16, v7, 2];
  v22[0] = v15;
  v22[1] = v8;
  v9 = [NSArray arrayWithObjects:v22 count:2];
  v10 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];

  v21[0] = v10;
  predicateFor_All_Marked_As_Finished_LibraryAssets = [self predicateFor_All_Marked_As_Finished_LibraryAssets];
  v21[1] = predicateFor_All_Marked_As_Finished_LibraryAssets;
  v12 = [NSArray arrayWithObjects:v21 count:2];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  return v13;
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_Prior_To_Year:(int64_t)year
{
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v19 = [BKLibraryManager _dateComponentsForYear:year];
  v18 = [v5 dateFromComponents:v19];
  v6 = +[NSDate distantPast];
  v7 = [NSPredicate predicateWithFormat:@"dateFinished < %@ AND dateFinished > %@ AND finishedDateKind != %i", v18, v6, 2];

  v8 = [BKLibraryManager _dateComponentsForYear:year];
  v9 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v8 setTimeZone:v9];

  v10 = [v5 dateFromComponents:v8];
  v11 = [NSPredicate predicateWithFormat:@"dateFinished < %@ AND finishedDateKind == %i", v10, 2];
  v21[0] = v7;
  v21[1] = v11;
  v12 = [NSArray arrayWithObjects:v21 count:2];
  v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v12];

  v20[0] = v13;
  predicateFor_All_Marked_As_Finished_LibraryAssets = [self predicateFor_All_Marked_As_Finished_LibraryAssets];
  v20[1] = predicateFor_All_Marked_As_Finished_LibraryAssets;
  v15 = [NSArray arrayWithObjects:v20 count:2];
  v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];

  return v16;
}

+ (id)predicateFor_All_Marked_As_Finished_LibraryAssets_After_Year:(int64_t)year
{
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v18 = [BKLibraryManager _dateComponentsForYear:year + 1];
  v17 = [v5 dateFromComponents:v18];
  v6 = [NSPredicate predicateWithFormat:@"dateFinished >= %@ AND finishedDateKind != %i", v17, 2];
  v7 = [BKLibraryManager _dateComponentsForYear:year + 1];
  v8 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v7 setTimeZone:v8];

  v9 = [v5 dateFromComponents:v7];
  v10 = [NSPredicate predicateWithFormat:@"dateFinished >= %@ AND finishedDateKind == %i", v9, 2];
  v20[0] = v6;
  v20[1] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:2];
  v12 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];

  v19[0] = v12;
  predicateFor_All_Marked_As_Finished_LibraryAssets = [self predicateFor_All_Marked_As_Finished_LibraryAssets];
  v19[1] = predicateFor_All_Marked_As_Finished_LibraryAssets;
  v14 = [NSArray arrayWithObjects:v19 count:2];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  return v15;
}

+ (id)_dateComponentsForYear:(int64_t)year
{
  v4 = +[NSTimeZone systemTimeZone];
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setYear:year];
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
  predicateToExcludeCollectionMembersForSeriesAndStoreItems = [self predicateToExcludeCollectionMembersForSeriesAndStoreItems];
  v9[0] = predicateToExcludeCollectionMembersForSeriesAndStoreItems;
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

+ (id)predicateToExcludeCollectionMembersForUnpurchasedItemsInCollection:(id)collection
{
  v3 = kBKCollectionDefaultIDAudiobooks;
  v4 = [collection isEqualToString:kBKCollectionDefaultIDAudiobooks];
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

- (id)validLibraryAssetIDsOnMainQueueWithAssetIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    dsCopy = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", dsCopy];
    [v5 setPredicate:dsCopy];

    [v5 setResultType:2];
    v13 = @"assetID";
    v7 = [NSArray arrayWithObjects:&v13 count:1];
    [v5 setPropertiesToFetch:v7];

    uiChildContext = [(BKLibraryManager *)self uiChildContext];
    v12 = 0;
    v9 = [uiChildContext executeFetchRequest:v5 error:&v12];

    v10 = [v9 valueForKeyPath:@"assetID"];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)libraryAssetOnMainQueueWithAssetID:(id)d
{
  dCopy = d;
  if (!+[NSThread isMainThread])
  {
    sub_8EDDC();
  }

  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v6 = [(BKLibraryManager *)self libraryAssetWithAssetID:dCopy inManagedObjectContext:uiChildContext];

  return v6;
}

- (id)libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:(id)d
{
  dCopy = d;
  if (!+[NSThread isMainThread])
  {
    sub_8EE18();
  }

  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v6 = [(BKLibraryManager *)self libraryAssetWithPermanentOrTemporaryAssetID:dCopy inManagedObjectContext:uiChildContext];

  return v6;
}

- (id)libraryAssetOnMainQueueWithAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!+[NSThread isMainThread])
  {
    sub_8EE54();
  }

  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v6 = [(BKLibraryManager *)self libraryAssetWithAssetIdentifier:identifierCopy inManagedObjectContext:uiChildContext];

  return v6;
}

- (id)libraryAssetOnMainQueueWithStoreID:(id)d
{
  dCopy = d;
  if (!+[NSThread isMainThread])
  {
    sub_8EE90();
  }

  dCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"storeID", dCopy];
  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v7 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:dCopy predicate:dCopy inManagedObjectContext:uiChildContext];

  return v7;
}

- (id)libraryAssetOnMainQueueWithEpubID:(id)d
{
  dCopy = d;
  if (!+[NSThread isMainThread])
  {
    sub_8EECC();
  }

  dCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"epubID", dCopy];
  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v7 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:dCopy predicate:dCopy inManagedObjectContext:uiChildContext];

  return v7;
}

- (id)libraryAssetOnMainQueueWithFilename:(id)filename
{
  filenameCopy = filename;
  if (!+[NSThread isMainThread])
  {
    sub_8EF08();
  }

  filenameCopy = [NSPredicate predicateWithFormat:@"%K CONTAINS %@", @"path", filenameCopy];
  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v7 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:filenameCopy predicate:filenameCopy inManagedObjectContext:uiChildContext];

  return v7;
}

- (id)libraryAssetWithAssetID:(id)d inManagedObjectContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [BKLibraryManager predicateForAssetIDTaggedLibraryAsset:dCopy];
  v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:dCopy predicate:v8 inManagedObjectContext:contextCopy];

  return v9;
}

- (id)libraryAssetsWithAssetIDs:(id)ds inManagedObjectContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v7 setReturnsObjectsAsFaults:0];
  dsCopy = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", dsCopy];
  [v7 setPredicate:dsCopy];

  v13 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v13];

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

- (id)spotlightAssetsWithContentTypes:(id)types searchQueryString:(id)string inManagedObjectContext:(id)context
{
  typesCopy = types;
  stringCopy = string;
  contextCopy = context;
  v11 = objc_alloc_init(NSMutableArray);
  +[NSMutableArray array];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_2AFDC;
  v12 = v39[3] = &unk_D6370;
  v40 = v12;
  v30 = typesCopy;
  [typesCopy enumerateObjectsUsingBlock:v39];
  v28 = v12;
  [v12 componentsJoinedByString:@" || "];
  v27 = v29 = stringCopy;
  stringCopy = [NSString stringWithFormat:@"(%@) && (%@)", v27, stringCopy];
  v13 = [[CSSearchQuery alloc] initWithQueryString:stringCopy attributes:&off_DE198];
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
        v22 = [(BKLibraryManager *)self libraryAssetWithAssetIdentifier:v21 inManagedObjectContext:contextCopy];

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

- (id)libraryAssetWithTemporaryAssetID:(id)d inManagedObjectContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [BKLibraryManager predicateForTemporaryAssetIDTaggedLibraryAsset:dCopy];
  v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:dCopy predicate:v8 inManagedObjectContext:contextCopy];

  return v9;
}

- (id)libraryAssetWithPermanentOrTemporaryAssetID:(id)d inManagedObjectContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [BKLibraryManager predicateForPermanentOrTemporaryAssetIDTaggedLibraryAsset:dCopy];
  v9 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:dCopy predicate:v8 inManagedObjectContext:contextCopy];

  return v9;
}

- (id)libraryAssetWithAssetIdentifier:(id)identifier inManagedObjectContext:(id)context
{
  contextCopy = context;
  identifierCopy = identifier;
  permanentOrTemporaryAssetID = [identifierCopy permanentOrTemporaryAssetID];
  v9 = [BKLibraryManager predicateForAssetIdentifierTaggedLibraryAsset:identifierCopy];

  v10 = [(BKLibraryManager *)self p_libraryAssetWithIdentifier:permanentOrTemporaryAssetID predicate:v9 inManagedObjectContext:contextCopy];

  return v10;
}

- (id)p_libraryAssetWithIdentifier:(id)identifier predicate:(id)predicate inManagedObjectContext:(id)context
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    contextCopy = context;
    predicateCopy = predicate;
    v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v10 setReturnsObjectsAsFaults:0];
    [v10 setFetchLimit:1];
    [v10 setPredicate:predicateCopy];

    v16 = 0;
    v11 = [contextCopy executeFetchRequest:v10 error:&v16];

    v12 = v16;
    if (v11)
    {
      lastObject = [v11 lastObject];
    }

    else
    {
      v14 = BKLibraryLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_8EFAC();
      }

      lastObject = 0;
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)libraryMutableAssetWithAssetID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy)
  {
    v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v7 setReturnsObjectsAsFaults:0];
    [v7 setFetchLimit:1];
    v20 = dCopy;
    v8 = [NSArray arrayWithObjects:&v20 count:1];
    v9 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:v8];
    [v7 setPredicate:v9];

    v15 = 0;
    v10 = [contextCopy executeFetchRequest:v7 error:&v15];
    v11 = v15;
    if (v10)
    {
      lastObject = [v10 lastObject];
    }

    else
    {
      v13 = BKLibraryLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v17 = dCopy;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed to fetch LibraryAsset with AssetID {%@}{%@}", buf, 0x16u);
      }

      lastObject = 0;
    }
  }

  else
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8F014();
    }

    lastObject = 0;
  }

  return lastObject;
}

- (id)libraryMutableAssetWithPermanentOrTemporaryAssetID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy)
  {
    v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v7 setReturnsObjectsAsFaults:0];
    [v7 setFetchLimit:1];
    v8 = [BKLibraryManager predicateForPermanentOrTemporaryAssetIDTaggedLibraryAsset:dCopy];
    [v7 setPredicate:v8];

    v14 = 0;
    v9 = [contextCopy executeFetchRequest:v7 error:&v14];
    v10 = v14;
    if (v9)
    {
      lastObject = [v9 lastObject];
    }

    else
    {
      v12 = BKLibraryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = dCopy;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Failed to fetch LibraryAsset with temporaryAssetID {%@}{%@}", buf, 0x16u);
      }

      lastObject = 0;
    }
  }

  else
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8F014();
    }

    lastObject = 0;
  }

  return lastObject;
}

- (id)libraryMutableAssetWithAssetIdentifier:(id)identifier inManagedObjectContext:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  if (identifierCopy)
  {
    v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v7 setReturnsObjectsAsFaults:0];
    [v7 setFetchLimit:1];
    v8 = [BKLibraryManager predicateForAssetIdentifierTaggedLibraryAsset:identifierCopy];
    [v7 setPredicate:v8];

    v14 = 0;
    v9 = [contextCopy executeFetchRequest:v7 error:&v14];
    v10 = v14;
    if (v9)
    {
      lastObject = [v9 lastObject];
    }

    else
    {
      v12 = BKLibraryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = identifierCopy;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Failed to fetch LibraryAsset with assetIdentifier {%@}{%@}", buf, 0x16u);
      }

      lastObject = 0;
    }
  }

  else
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8F050();
    }

    lastObject = 0;
  }

  return lastObject;
}

+ (id)predicateForAssetIdentifierTaggedLibraryAsset:(id)asset
{
  assetCopy = asset;
  permanentOrTemporaryAssetID = [assetCopy permanentOrTemporaryAssetID];
  permanentOrTemporaryAssetID2 = [assetCopy permanentOrTemporaryAssetID];

  v6 = [NSPredicate predicateWithFormat:@"%K = %@ OR %K = %@", @"assetID", permanentOrTemporaryAssetID, @"temporaryAssetID", permanentOrTemporaryAssetID2];

  return v6;
}

- (id)predicateForLibraryAssetsWithSeriesID:(id)d
{
  dCopy = d;
  isExplicitMaterialAllowed = [(BKLibraryManager *)self isExplicitMaterialAllowed];
  v6 = [NSPredicate predicateWithFormat:@"%K = %@ AND (%K = NULL OR %K != %@)", @"seriesID", dCopy, @"state", @"contentType", &off_DDF58];

  if (isExplicitMaterialAllowed)
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
  predicateToExcludeAudiobookSupplementalContent = [self predicateToExcludeAudiobookSupplementalContent];
  v8[1] = predicateToExcludeAudiobookSupplementalContent;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateForBooksShownInAllBooks
{
  _predicateForBooksShownInAllBooks = [self _predicateForBooksShownInAllBooks];
  v7[0] = _predicateForBooksShownInAllBooks;
  v3 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  return v5;
}

+ (id)predicateForContentWithHighWaterMarkOrReadingProgressValue:(double)value
{
  v4 = [NSNumber numberWithDouble:?];
  v5 = [NSNumber numberWithDouble:value];
  v6 = [NSPredicate predicateWithFormat:@"(%K >= %@ OR %K >= %@)", @"bookHighWaterMarkProgress", v4, @"readingProgress", v5];

  return v6;
}

+ (id)predicateForLastOpenedDateAfter:(id)after
{
  if (after)
  {
    after = [NSPredicate predicateWithFormat:@"(%K >= %@)", @"lastOpenDate", after];
  }

  else
  {
    after = 0;
  }

  return after;
}

+ (unint64_t)numberOfLibraryAssetsInManagdObjectContext:(id)context
{
  contextCopy = context;
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
  v9 = [contextCopy executeFetchRequest:v4 error:&v14];

  v10 = v14;
  if (v9)
  {
    lastObject = [v9 lastObject];
    unsignedIntegerValue = [lastObject unsignedIntegerValue];
  }

  else
  {
    lastObject = BKLibraryLog();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      sub_8F08C();
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (id)predicateForAssetsAvailableToAppIntentsWithTypes:(id)types
{
  typesCopy = types;
  if (![typesCopy count])
  {

    typesCopy = &off_DE1B0;
  }

  v4 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
  v30[0] = v4;
  v5 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v30[1] = v5;
  v6 = [NSArray arrayWithObjects:v30 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  v8 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  v9 = [BKLibraryManager _predicateForAssetsWithContentTypes:typesCopy];
  v10 = [NSMutableArray arrayWithObjects:v8, v9, 0];

  v11 = [NSMutableArray arrayWithObject:v7];
  if ([typesCopy containsObject:&off_DDF88])
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
  isExplicitContentAllowed = [v19 isExplicitContentAllowed];

  if ((isExplicitContentAllowed & 1) == 0)
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

+ (id)predicateForMatchingSearchStringLibraryAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy length])
  {
    assetsCopy = [NSPredicate predicateWithFormat:@"%K contains[cd] %@ OR %K contains[cd] %@ OR %K contains[cd] %@ OR %K CONTAINS[cd] %@", @"title", assetsCopy, @"author", assetsCopy, @"genre", assetsCopy, @"localOnlySeriesItemsParent.title", assetsCopy];
  }

  else
  {
    assetsCopy = 0;
  }

  return assetsCopy;
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
  predicateToExcludeUnownedLibraryAssets = [self predicateToExcludeUnownedLibraryAssets];
  predicateForExcludingContainerLibraryAssets = [self predicateForExcludingContainerLibraryAssets];
  v9[1] = predicateForExcludingContainerLibraryAssets;
  predicateToExcludeAudiobookSupplementalContent = [self predicateToExcludeAudiobookSupplementalContent];
  v9[2] = predicateToExcludeAudiobookSupplementalContent;
  v6 = [NSArray arrayWithObjects:v9 count:3];

  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)libraryAssetsWithAssetIDsContainedInList:(id)list tempAssetIDs:(id)ds inManagedObjectContext:(id)context
{
  listCopy = list;
  dsCopy = ds;
  contextCopy = context;
  v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v10 setReturnsObjectsAsFaults:0];
  [v10 setFetchBatchSize:32];
  v11 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:listCopy];
  [v10 setPredicate:v11];

  if (dsCopy)
  {
    predicate = [v10 predicate];
    v21[0] = predicate;
    v13 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:dsCopy];
    v21[1] = v13;
    v14 = [NSArray arrayWithObjects:v21 count:2];
    v15 = [NSCompoundPredicate orPredicateWithSubpredicates:v14];
    [v10 setPredicate:v15];
  }

  v20 = 0;
  v16 = [contextCopy executeFetchRequest:v10 error:&v20];
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

+ (id)newestSeriesBookWithBasePredicate:(id)predicate forBook:(id)book
{
  predicateCopy = predicate;
  bookCopy = book;
  seriesID = [bookCopy seriesID];
  v8 = [seriesID length];

  if (v8)
  {
    v27[0] = predicateCopy;
    v9 = +[BKLibraryManager defaultManager];
    seriesID2 = [bookCopy seriesID];
    v11 = [v9 predicateForLibraryAssetsWithSeriesID:seriesID2];
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
    managedObjectContext = [bookCopy managedObjectContext];
    v25 = 0;
    v20 = [managedObjectContext executeFetchRequest:v18 error:&v25];
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

+ (id)mostRecentlyOpenedSeriesBookWithBasePredicate:(id)predicate forBook:(id)book
{
  predicateCopy = predicate;
  bookCopy = book;
  seriesID = [bookCopy seriesID];
  v8 = [seriesID length];

  if (v8)
  {
    v27[0] = predicateCopy;
    v9 = +[BKLibraryManager defaultManager];
    seriesID2 = [bookCopy seriesID];
    v11 = [v9 predicateForLibraryAssetsWithSeriesID:seriesID2];
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
    managedObjectContext = [bookCopy managedObjectContext];
    v25 = 0;
    v20 = [managedObjectContext executeFetchRequest:v18 error:&v25];
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

- (id)predicateForSeriesBooksIncludingNextForID:(id)d includeAllBooksInSeries:(BOOL)series
{
  seriesCopy = series;
  dCopy = d;
  if ([(BKLibraryManager *)self usePerformancePredicates]|| seriesCopy)
  {
    v14 = [(BKLibraryManager *)self predicateForAllBooksWithSeriesID:dCopy];
  }

  else
  {
    v7 = [(BKLibraryManager *)self predicateForAllBooksWithSeriesID:dCopy];
    v17[0] = v7;
    v8 = +[BKLibraryManager predicateForNextInSeriesLibraryAssets];
    v17[1] = v8;
    v9 = [NSArray arrayWithObjects:v17 count:2];
    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

    v11 = [(BKLibraryManager *)self predicateForLocalBooksWithSeriesID:dCopy];
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

- (id)seriesAuthorForContainerID:(id)d context:(id)context
{
  v4 = [(BKLibraryManager *)self _rawSeriesAuthorForContainerID:d context:context];
  if ([v4 isEqualToString:@"MultipleAuthors"])
  {
    v5 = +[BKLibraryAsset multipleAuthors];

    v4 = v5;
  }

  return v4;
}

- (id)_rawSeriesAuthorForContainerID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryManager *)self _predicateForBooksInSeriesWithCorrectAuthorInfo:dCopy];

  [v8 setPredicate:v9];
  [v8 setResultType:2];
  v21 = @"author";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  [v8 setPropertiesToFetch:v10];

  v20 = @"author";
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  [v8 setPropertiesToGroupBy:v11];

  v19 = 0;
  v12 = [contextCopy executeFetchRequest:v8 error:&v19];

  v13 = v19;
  if (!v12)
  {
    v17 = v8;
    v18 = v13;
    BCReportAssertionFailureWithMessage();
  }

  if ([v12 count] == &dword_0 + 1)
  {
    lastObject = [v12 lastObject];
    v15 = [lastObject valueForKey:@"author"];
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

- (id)_rawSeriesSortAuthorForContainerID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryManager *)self _predicateForBooksInSeriesWithCorrectSortAuthorInfo:dCopy];

  [v8 setPredicate:v9];
  [v8 setResultType:2];
  v21 = @"sortAuthor";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  [v8 setPropertiesToFetch:v10];

  v20 = @"sortAuthor";
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  [v8 setPropertiesToGroupBy:v11];

  v19 = 0;
  v12 = [contextCopy executeFetchRequest:v8 error:&v19];

  v13 = v19;
  if (!v12)
  {
    v17 = v8;
    v18 = v13;
    BCReportAssertionFailureWithMessage();
  }

  if ([v12 count] == &dword_0 + 1)
  {
    lastObject = [v12 lastObject];
    v15 = [lastObject valueForKey:@"sortAuthor"];
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

- (id)localSeriesBooksForSeriesID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryManager *)self predicateForLocalBooksWithSeriesID:dCopy];

  [v8 setPredicate:v9];
  [v8 setReturnsObjectsAsFaults:0];
  v12 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v12];

  return v10;
}

+ (BOOL)hasAnySeriesStackBooksWithBasePredicate:(id)predicate forBook:(id)book
{
  predicateCopy = predicate;
  bookCopy = book;
  seriesID = [bookCopy seriesID];
  v8 = [seriesID length];

  if (v8)
  {
    v19[0] = predicateCopy;
    v9 = +[BKLibraryManager defaultManager];
    seriesID2 = [bookCopy seriesID];
    v11 = [v9 predicateForLibraryAssetsWithSeriesID:seriesID2];
    v19[1] = v11;
    v12 = [NSArray arrayWithObjects:v19 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

    v14 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v14 setPredicate:v13];
    [v14 setFetchLimit:1];
    [v14 setSortDescriptors:0];
    [v14 setReturnsObjectsAsFaults:1];
    managedObjectContext = [bookCopy managedObjectContext];
    v18 = 0;
    v8 = [managedObjectContext executeFetchRequest:v14 error:&v18];
  }

  v16 = [v8 count] != 0;

  return v16;
}

- (id)contentPredicateForSeriesID:(id)d onlyPurchased:(BOOL)purchased forceCloud:(BOOL)cloud allowsExplicit:(BOOL)explicit
{
  purchasedCopy = purchased;
  dCopy = d;
  v10 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:?];
  v51[0] = v10;
  v11 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v51[1] = v11;
  v12 = [NSArray arrayWithObjects:v51 count:2];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  if (purchasedCopy && ![(BKLibraryManager *)self usePerformancePredicates])
  {
    v15 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
    v50[0] = v13;
    v50[1] = v15;
    v16 = [NSArray arrayWithObjects:v50 count:2];
    v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v16) = [WeakRetained isShowPurchasesEnabled];

    if ((v16 & 1) != 0 || cloud)
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

  if (!explicit)
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
  isStoreAllowed = [v31 isStoreAllowed];

  if (isStoreAllowed)
  {
    v33 = v14[358];
    v34 = +[BKLibraryManager predicateForNextInSeriesLibraryAssets];
    v46[0] = v34;
    v35 = +[BKLibraryManager defaultManager];
    v36 = dCopy;
    v37 = [v35 predicateForLibraryAssetsWithSeriesID:dCopy];
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
    v36 = dCopy;
  }

  return v30;
}

+ (id)seriesStackBooksForBook:(id)book
{
  bookCopy = book;
  v4 = [NSMutableArray arrayWithCapacity:5];
  seriesBooks = [bookCopy seriesBooks];
  if (![seriesBooks count])
  {
    goto LABEL_47;
  }

  v50 = v4;
  v51 = bookCopy;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v49 = seriesBooks;
  v6 = seriesBooks;
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

        lastOpenDate = [v12 lastOpenDate];
        if (lastOpenDate)
        {
          v18 = lastOpenDate;
          if (!v53)
          {

LABEL_19:
            v22 = v12;

            v53 = v22;
            goto LABEL_20;
          }

          lastOpenDate2 = [v53 lastOpenDate];
          lastOpenDate3 = [v12 lastOpenDate];
          v21 = [lastOpenDate2 compare:lastOpenDate3];

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
        creationDate = [v54 creationDate];
        creationDate2 = [v12 creationDate];
        v27 = [creationDate compare:creationDate2];

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
      seriesSortKey = [v12 seriesSortKey];
      if (seriesSortKey)
      {
        v29 = seriesSortKey;
        seriesSortKey2 = [v9 seriesSortKey];
        seriesSortKey3 = [v12 seriesSortKey];
        v32 = [seriesSortKey2 compare:seriesSortKey3];

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

  bookCopy = v51;
  if ([v4 count] >= 6)
  {
    v45 = [v4 subarrayWithRange:{0, 5}];
    v46 = [v45 mutableCopy];

    v4 = v46;
    seriesBooks = v49;
  }

  else
  {
    v47 = [v4 count];
    seriesBooks = v49;
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
  workerChildContext = [(BKLibraryManager *)self workerChildContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2F6B4;
  v6[3] = &unk_D6410;
  v6[4] = self;
  v6[5] = &v7;
  [workerChildContext performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)localNonSampleLibraryAssetStoreSummariesExcludeAudiobooks:(BOOL)audiobooks
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2F928;
  v6[3] = &unk_D6280;
  audiobooksCopy = audiobooks;
  selfCopy = self;
  v8 = objc_opt_new();
  v3 = v8;
  [(BKLibraryManager *)selfCopy performBackgroundReadOnlyBlockAndWait:v6];
  v4 = [v3 copy];

  return v4;
}

- (void)fetchLibraryAssetFromStoreID:(id)d handler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2FD50;
  v8[3] = &unk_D6098;
  dCopy = d;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = dCopy;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v8];
}

- (void)fetchLibraryAssetFromAssetID:(id)d handler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2FF38;
  v8[3] = &unk_D6098;
  dCopy = d;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = dCopy;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v8];
}

- (void)fetchLibraryAssetsFromStoreIDs:(id)ds handler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_30120;
  v8[3] = &unk_D6098;
  dsCopy = ds;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = dsCopy;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v8];
}

- (void)fetchLibraryAssetsFromAssetIDs:(id)ds handler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_302DC;
  v8[3] = &unk_D6098;
  dsCopy = ds;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = dsCopy;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v8];
}

- (void)allUnownedStoreAssetIDs:(id)ds
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_30470;
  v4[3] = &unk_D6098;
  selfCopy = self;
  dsCopy = ds;
  v3 = dsCopy;
  [(BKLibraryManager *)selfCopy performBackgroundReadOnlyBlock:v4];
}

- (void)allUnownedIDs:(id)ds
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_30770;
  v4[3] = &unk_D6098;
  selfCopy = self;
  dsCopy = ds;
  v3 = dsCopy;
  [(BKLibraryManager *)selfCopy performBackgroundReadOnlyBlock:v4];
}

+ (id)searchFetchRequestWithText:(id)text entityType:(int64_t)type
{
  textCopy = text;
  v6 = +[BKLibraryManager defaultManager];
  v7 = [[NSMutableArray alloc] initWithCapacity:6];
  v8 = [v6 _predicateForSearchText:textCopy];

  [v7 addObject:v8];
  v9 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  [v7 addObject:v9];

  v10 = +[BKLibraryManager predicateToExcludeAssetsWithSeriesContainersWithNoOwnedBooks];
  [v7 addObject:v10];

  v11 = +[BKLibraryManager predicateToExcludeAssetsForSeriesAndStoreItemsNotAddedToCollections];
  [v7 addObject:v11];

  if (type <= 2)
  {
    if (type == 1)
    {
      v12 = [BKLibraryManager predicateForNotContentTypes:&off_DE1C8];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_13;
      }

      v12 = [BKLibraryManager predicateForContentType:6];
    }

    goto LABEL_11;
  }

  if (type == 3)
  {
    v12 = +[BKLibraryManager predicateForContainerLibraryAssets];
LABEL_11:
    v13 = v12;
    [v7 addObject:v12];
    goto LABEL_12;
  }

  if (type != 4)
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
  isExplicitContentAllowed = [v3 isExplicitContentAllowed];

  return [self _continueReadingPredicateIncludingExplicitContent:isExplicitContentAllowed];
}

+ (id)_continueReadingPredicateIncludingExplicitContent:(BOOL)content
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

  if (!content)
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

  _recentlyEngagedPredicate = [self _recentlyEngagedPredicate];
  [v3 setPredicate:_recentlyEngagedPredicate];

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

  _continueReadingPredicate = [self _continueReadingPredicate];
  [v3 setPredicate:_continueReadingPredicate];

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

  _recentlyReadPredicate = [self _recentlyReadPredicate];
  [v3 setPredicate:_recentlyReadPredicate];

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

  _previouslyReadPredicate = [self _previouslyReadPredicate];
  [v3 setPredicate:_previouslyReadPredicate];

  [v3 setReturnsObjectsAsFaults:0];

  return v3;
}

- (void)assetAccountIdentifiersForAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  assetID = [assetCopy assetID];
  path = [assetCopy path];
  storeID = [assetCopy storeID];
  purchasedDSID = [assetCopy purchasedDSID];
  downloadedDSID = [assetCopy downloadedDSID];
  familyID = [assetCopy familyID];
  dataSourceIdentifier = [assetCopy dataSourceIdentifier];

  [(BKLibraryManager *)self assetAccountIdentifiersForAssetID:assetID path:path storeID:storeID purchasedDSID:purchasedDSID downloadedDSID:downloadedDSID familyID:familyID dataSourceID:dataSourceIdentifier completion:completionCopy];
}

- (void)assetAccountIdentifiersForAssetID:(id)d path:(id)path storeID:(id)iD purchasedDSID:(id)sID downloadedDSID:(id)dSID familyID:(id)familyID dataSourceID:(id)sourceID completion:(id)self0
{
  dCopy = d;
  pathCopy = path;
  iDCopy = iD;
  completionCopy = completion;
  sourceIDCopy = sourceID;
  familyIDCopy = familyID;
  dSIDCopy = dSID;
  sIDCopy = sID;
  v23 = [[BKLibraryManagerAccountIdentifiers alloc] initWithPurchasedDSID:sIDCopy downloadedDSID:dSIDCopy familyID:familyIDCopy];

  v24 = [(BKLibraryManager *)self dataSourceWithIdentifier:sourceIDCopy];

  if (sIDCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v26 = objc_retainBlock(completionCopy);
    v27 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, v23, 0);
    }

    v25 = dCopy;
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_319FC;
    v29[3] = &unk_D6438;
    v29[4] = self;
    v25 = dCopy;
    v30 = dCopy;
    v31 = v23;
    v32 = completionCopy;
    [v24 assetAccountIdentifiersForAssetID:v30 path:pathCopy storeID:iDCopy completion:v29];
  }
}

- (void)hiddenAssetStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
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
  dataSources = [(BKLibraryManager *)self dataSources];
  v7 = [dataSources countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(dataSources);
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
      v7 = [dataSources countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32138;
  block[3] = &unk_D64B0;
  v16 = v29;
  v17 = v27;
  v15 = completionCopy;
  v11 = completionCopy;
  dispatch_group_notify(v5, queue, block);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
}

- (void)rawBookCoverForLibraryAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  dataSourceIdentifier = [assetCopy dataSourceIdentifier];
  v9 = [(BKLibraryManager *)self dataSourceWithIdentifier:dataSourceIdentifier];

  if (v9)
  {
    v14[0] = @"path";
    v14[1] = @"assetID";
    v14[2] = @"permlink";
    v14[3] = @"temporaryAssetID";
    v14[4] = @"title";
    v14[5] = @"storeID";
    v10 = [NSArray arrayWithObjects:v14 count:6];
    v11 = [assetCopy propertiesForKeys:v10];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_323A0;
    v12[3] = &unk_D64D8;
    v13 = completionCopy;
    [v9 bookCoverForLibraryAssetProperties:v11 size:v12 completion:{1.79769313e308, 1.79769313e308}];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)readingTimeTracker:(id)tracker updateRecentBook:(id)book promoteIfNotTracked:(BOOL)tracked completion:(id)completion
{
  trackerCopy = tracker;
  bookCopy = book;
  completionCopy = completion;
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
  v14 = bookCopy;
  v21 = v14;
  trackedCopy = tracked;
  v15 = v13;
  v22 = v15;
  v23 = v25;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v20];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_328C4;
  block[3] = &unk_D6550;
  v18 = completionCopy;
  v19 = v25;
  v16 = completionCopy;
  dispatch_group_notify(v15, &_dispatch_main_q, block);

  _Block_object_dispose(v25, 8);
}

- (unint64_t)wq_countOfBooksInContinueReadingIncludingExplicitContent:(BOOL)content limit:(unint64_t)limit onWorkerQueue:(id)queue
{
  queueCopy = queue;
  v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v7 = +[BKLibraryManager _continueReadingPredicate];
  [v6 setPredicate:v7];

  v12 = 0;
  v8 = [queueCopy countForFetchRequest:v6 error:&v12];

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

- (void)wq_seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:(id)date limit:(unint64_t)limit onWorkerQueue:(id)queue
{
  dateCopy = date;
  queueCopy = queue;
  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v8 setReturnsObjectsAsFaults:0];
  [v8 setFetchLimit:limit];
  v36 = dateCopy;
  dateCopy = [NSPredicate predicateWithFormat:@"%K > %@", @"lastOpenDate", dateCopy];
  v10 = [NSPredicate predicateWithFormat:@"%K != NULL", @"lastEngagedDate"];
  v11 = +[BKLibraryManager predicateForLibraryAssetsRecentlyOpened];
  v44[0] = v11;
  v44[1] = v10;
  v34 = v10;
  v35 = dateCopy;
  v44[2] = dateCopy;
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
  v21 = [queueCopy executeFetchRequest:v8 error:&v41];
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

  [queueCopy saveLibrary];
  v32 = BCBookPromotionLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_8F5A4();
  }
}

- (void)seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:(id)date limit:(unint64_t)limit
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_32E54;
  v7[3] = &unk_D6578;
  dateCopy = date;
  limitCopy = limit;
  v7[4] = self;
  v6 = dateCopy;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v7];
}

- (void)purgeRecentsListFromAllBooksOlderThanDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_33050;
    v6[3] = &unk_D56B8;
    v7 = dateCopy;
    [(BKLibraryManager *)self performBlockOnWorkerQueue:v6];
  }
}

- (void)purgeRecentBooks:(id)books completion:(id)completion
{
  booksCopy = books;
  completionCopy = completion;
  if ([booksCopy count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_33328;
    v10[3] = &unk_D6098;
    v11 = booksCopy;
    v12 = completionCopy;
    [(BKLibraryManager *)self performBlockOnWorkerQueue:v10];
  }

  else
  {
    v8 = objc_retainBlock(completionCopy);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }
}

- (void)readingTimeTrackerHasRecentAssets:(id)assets completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_33670;
  v6[3] = &unk_D5BD0;
  completionCopy = completion;
  v5 = completionCopy;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v6];
}

- (void)isTrackedAsRecent:(id)recent completion:(id)completion
{
  recentCopy = recent;
  completionCopy = completion;
  if ([recentCopy length])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_33914;
    v14[3] = &unk_D6098;
    v15 = recentCopy;
    v16 = completionCopy;
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
    v9 = objc_retainBlock(completionCopy);
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

- (void)readingTimeTracker:(id)tracker isAssetTrackedAsRecent:(id)recent completion:(id)completion
{
  recentCopy = recent;
  completionCopy = completion;
  if ([recentCopy length])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_33CD8;
    v15[3] = &unk_D6098;
    v16 = recentCopy;
    v17 = completionCopy;
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
    v10 = objc_retainBlock(completionCopy);
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

- (void)recentsNotEngagedSinceDateForSamples:(id)samples dateForNonSamples:(id)nonSamples completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_33FE0;
  v10[3] = &unk_D65A0;
  selfCopy = self;
  samplesCopy = samples;
  nonSamplesCopy = nonSamples;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = nonSamplesCopy;
  v9 = samplesCopy;
  [(BKLibraryManager *)selfCopy performBackgroundReadOnlyBlock:v10];
}

- (void)readingTimeTracker:(id)tracker cleanupFinishedBooksExcluding:(id)excluding completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_344A8;
  v8[3] = &unk_D5B30;
  selfCopy = self;
  excludingCopy = excluding;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = excludingCopy;
  [(BKLibraryManager *)selfCopy performBlockOnWorkerQueue:v8];
}

- (void)readingTimeTracker:(id)tracker cleanupBooksFinishedBefore:(id)before completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_348E8;
  v8[3] = &unk_D5B30;
  selfCopy = self;
  beforeCopy = before;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = beforeCopy;
  [(BKLibraryManager *)selfCopy performBlockOnWorkerQueue:v8];
}

- (BOOL)isDownloadableFromLibraryAsset:(id)asset
{
  assetCopy = asset;
  permanentOrTemporaryAssetID = [assetCopy permanentOrTemporaryAssetID];
  if ([permanentOrTemporaryAssetID length])
  {
    v5 = +[BKLibraryAssetStatusController sharedController];
    permanentOrTemporaryAssetID2 = [assetCopy permanentOrTemporaryAssetID];
    v7 = [v5 statusForAssetID:permanentOrTemporaryAssetID2];
  }

  else
  {
    v7 = 0;
  }

  v8 = [assetCopy canRedownload] && (objc_msgSend(assetCopy, "isPreorderBook") & 1) == 0 && (objc_msgSend(assetCopy, "isLocal") & 1) == 0 && objc_msgSend(v7, "state") != &dword_4;
  return v8;
}

- (id)_updateLibraryAssetWithID:(id)d withLastOpenDate:(id)date withMoc:(id)moc
{
  dateCopy = date;
  v9 = [(BKLibraryManager *)self libraryMutableAssetWithAssetID:d inManagedObjectContext:moc];
  [v9 setLastOpenDate:dateCopy];
  seriesContainer = [v9 seriesContainer];
  [seriesContainer setLastOpenDate:dateCopy];

  [v9 setModificationDate:dateCopy];
  seriesContainer2 = [v9 seriesContainer];
  [seriesContainer2 setModificationDate:dateCopy];

  storeID = [v9 storeID];
  if ([storeID longLongValue])
  {
    purchasedAndLocalParent = [v9 purchasedAndLocalParent];

    if (!purchasedAndLocalParent)
    {
      isAudiobook = [v9 isAudiobook];
      v15 = &BKSeriesManagerAssetTypeAudiobooks;
      if (!isAudiobook)
      {
        v15 = &BKSeriesManagerAssetTypeBooks;
      }

      v32 = *v15;
      v16 = v32;
      storeID2 = [v9 storeID];
      v31 = storeID2;
      v18 = [NSArray arrayWithObjects:&v31 count:1];
      v33 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

      seriesManager = [(BKLibraryManager *)self seriesManager];
      [seriesManager updateExpiredSeriesForAssetAdamIDsWithTypes:v19];
    }
  }

  else
  {
  }

  storeID3 = [v9 storeID];
  if (storeID3)
  {

LABEL_10:
    permlink = [v9 permlink];
    if (permlink)
    {
      permlink2 = [v9 permlink];
      v26 = [NSURL URLWithString:permlink2];
    }

    else
    {
      v26 = [NSURL URLWithString:&stru_D8298];
    }

    v27 = +[BLLibrary defaultBookLibrary];
    storeID4 = [v9 storeID];
    v29 = +[NSDate date];
    [v27 _bookWasOpenedWithStoreID:storeID4 permlink:v26 date:v29];

    goto LABEL_14;
  }

  permlink3 = [v9 permlink];
  v23 = [permlink3 length];

  if (v23)
  {
    goto LABEL_10;
  }

LABEL_14:

  return v9;
}

- (void)updateLibraryAssetWithID:(id)d withTitle:(id)title
{
  dCopy = d;
  titleCopy = title;
  uiChildContext = [(BKLibraryManager *)self uiChildContext];
  v8 = [(BKLibraryManager *)self libraryMutableAssetWithAssetID:dCopy inManagedObjectContext:uiChildContext];

  if (v8)
  {
    [v8 setTitle:titleCopy];
    [v8 setSortTitle:titleCopy];
    uiChildContext2 = [(BKLibraryManager *)self uiChildContext];
    [uiChildContext2 setSaveContext:2];

    uiChildContext3 = [(BKLibraryManager *)self uiChildContext];
    [uiChildContext3 save:0];

    dataSourceIdentifier = [v8 dataSourceIdentifier];
    v12 = [(BKLibraryManager *)self dataSourceWithIdentifier:dataSourceIdentifier];

    if (objc_opt_respondsToSelector())
    {
      [v12 updateAsset:v8 userEditedTitle:titleCopy completion:0];
    }
  }

  v13 = +[BCProgressKitController sharedController];
  [v13 updateBook:dCopy withTitle:titleCopy completion:0];
}

- (void)updateLibraryAssetWithID:(id)d withLastOpenDate:(id)date completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_351CC;
  v10[3] = &unk_D65A0;
  selfCopy = self;
  dCopy = d;
  dateCopy = date;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = dateCopy;
  v9 = dCopy;
  [(BKLibraryManager *)selfCopy performBlockOnWorkerQueue:v10];
}

- (void)updateLibraryAssetWithID:(id)d isEphemeral:(BOOL)ephemeral completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_35334;
  v9[3] = &unk_D65C8;
  selfCopy = self;
  dCopy = d;
  ephemeralCopy = ephemeral;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = dCopy;
  [(BKLibraryManager *)selfCopy performBlockOnWorkerQueue:v9];
}

- (void)applyPendingUpdateForAssetID:(id)d completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_35668;
  v7[3] = &unk_D5B30;
  selfCopy = self;
  dCopy = d;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = dCopy;
  [(BKLibraryManager *)selfCopy performBackgroundReadOnlyBlock:v7];
}

- (BOOL)_shouldPropagateNilAssetIDForDataSourceWithIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_dataSourcesByIdentifier objectForKeyedSubscript:identifier];
  if (objc_opt_respondsToSelector())
  {
    propagateNilAssetID = [v3 propagateNilAssetID];
  }

  else
  {
    propagateNilAssetID = 0;
  }

  return propagateNilAssetID;
}

- (void)didCloseLibraryAsset:(id)asset
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_359C4;
  v3[3] = &unk_D56B8;
  v3[4] = self;
  [(BKLibraryManager *)self performBackgroundReadOnlyBlock:v3];
}

- (id)seriesBooksForSeriesID:(id)d inManagedObjectContext:(id)context
{
  contextCopy = context;
  v7 = [(BKLibraryManager *)self predicateForLibraryAssetsWithSeriesID:d];
  v15[0] = v7;
  v8 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v15[1] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  v11 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  [v11 setPredicate:v10];
  v14 = 0;
  v12 = [contextCopy executeFetchRequest:v11 error:&v14];

  return v12;
}

- (id)seriesContainerForSeriesID:(id)d inManagedObjectContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryManager *)self predicateForContainerWithSeriesIDLibraryAsset:dCopy];

  [v8 setPredicate:v9];
  [v8 setFetchLimit:1];
  v13 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v13];

  if (v10 && [v10 count])
  {
    firstObject = [v10 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)updateSeriesContainerSeriesStackAssetIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy isContainer])
  {
    v3 = [BKLibraryManager seriesStackBooksForBook:dsCopy];
    v4 = [v3 valueForKey:@"assetID"];
    if ([v3 count])
    {
      v5 = [v4 componentsJoinedByString:{@", "}];
      [dsCopy setDifferentObject:v5 forKey:@"seriesStackIDs"];
    }
  }
}

- (void)updateSupplementalContentRelationship:(id)relationship
{
  relationshipCopy = relationship;
  if ([relationshipCopy isAudiobook])
  {
    assetID = [relationshipCopy assetID];
    v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    v6 = [BKLibraryManager predicateForSupplementalContentLibraryAssetsWithStorePlaylistID:assetID];
    [v5 setPredicate:v6];

    managedObjectContext = [relationshipCopy managedObjectContext];
    v29 = 0;
    v8 = [managedObjectContext executeFetchRequest:v5 error:&v29];
    v9 = v29;

    if (v9)
    {
      lastObject = BKLibraryLog();
      if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
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
      lastObject = v8;
      v18 = [lastObject countByEnumeratingWithState:&v25 objects:v32 count:16];
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
              objc_enumerationMutation(lastObject);
            }

            [*(*(&v25 + 1) + 8 * i) setDifferentObject:relationshipCopy forKey:@"supplementalContentParent"];
          }

          v19 = [lastObject countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v19);
      }
    }

    goto LABEL_33;
  }

  assetID = relationshipCopy;
  if ([assetID isSupplementalContent])
  {
    storePlaylistID = [assetID storePlaylistID];

    if (storePlaylistID)
    {
      v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
      storePlaylistID2 = [assetID storePlaylistID];
      v13 = [BKLibraryManager predicateForAssetIDTaggedLibraryAsset:storePlaylistID2];
      [v5 setPredicate:v13];

      managedObjectContext2 = [assetID managedObjectContext];
      v24 = 0;
      v8 = [managedObjectContext2 executeFetchRequest:v5 error:&v24];
      v9 = v24;

      if (v9)
      {
        v15 = BKLibraryLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_8F7A4();
        }

        [assetID setDifferentObject:0 forKey:@"supplementalContentParent"];
        goto LABEL_34;
      }

      if ([v8 count])
      {
        if ([v8 count] < 2)
        {
LABEL_32:
          lastObject = [v8 lastObject];
          [assetID setDifferentObject:lastObject forKey:@"supplementalContentParent"];
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
          storePlaylistID3 = [assetID storePlaylistID];
          *buf = 138412290;
          v31 = storePlaylistID3;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Fetched 0 audiobook libraryAsset with storePlaylistID %@ for supplemental content", buf, 0xCu);
        }
      }

      goto LABEL_32;
    }
  }

  if ([assetID isSupplementalContent])
  {
    storePlaylistID4 = [assetID storePlaylistID];

    if (!storePlaylistID4)
    {
      v17 = BKLibraryLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_8F904(assetID);
      }
    }
  }

  [assetID setDifferentObject:0 forKey:@"supplementalContentParent"];
LABEL_35:
}

- (void)updateIsDownloadingSupplementalContentAndCombinedState:(id)state
{
  stateCopy = state;
  supplementalContentAssets = [stateCopy supplementalContentAssets];
  if ([supplementalContentAssets count])
  {
    supplementalContentParent = stateCopy;
  }

  else
  {
    supplementalContentParent = [stateCopy supplementalContentParent];
  }

  v6 = supplementalContentParent;

  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    supplementalContentAssets2 = [v6 supplementalContentAssets];
    v8 = [supplementalContentAssets2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(supplementalContentAssets2);
          }

          if ([*(*(&v18 + 1) + 8 * v11) isDownloading])
          {

            v14 = [NSNumber numberWithBool:1];
            [v6 setDifferentValue:v14 forKey:@"isDownloadingSupplementalContent" klass:objc_opt_class()];

            state = &dword_0 + 2;
            goto LABEL_15;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [supplementalContentAssets2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = [NSNumber numberWithBool:0];
    [v6 setDifferentValue:v12 forKey:@"isDownloadingSupplementalContent" klass:objc_opt_class()];

    state = [v6 state];
LABEL_15:
    v15 = [NSNumber numberWithShort:state];
    [v6 setDifferentValue:v15 forKey:@"combinedState" klass:objc_opt_class()];
  }

  if (v6 != stateCopy)
  {
    if ([stateCopy isDownloadingSupplementalContent])
    {
      state2 = &dword_0 + 2;
    }

    else
    {
      state2 = [stateCopy state];
    }

    v17 = [NSNumber numberWithShort:state2];
    [stateCopy setDifferentValue:v17 forKey:@"combinedState" klass:objc_opt_class()];
  }
}

- (void)updateSeriesRelationshipsForSeriesAsset:(id)asset
{
  assetCopy = asset;
  seriesID = [assetCopy seriesID];
  if (!seriesID)
  {
    [assetCopy setDifferentObject:0 forKey:@"seriesContainer"];
    [assetCopy setDifferentObject:0 forKey:@"purchasedAndLocalParent"];
    [assetCopy setDifferentObject:0 forKey:@"localOnlySeriesItemsParent"];
    goto LABEL_22;
  }

  seriesContainer = [assetCopy seriesContainer];
  seriesID2 = [seriesContainer seriesID];
  v7 = [seriesID isEqualToString:seriesID2];

  managedObjectContext = [assetCopy managedObjectContext];
  v9 = [(BKLibraryManager *)self seriesContainerForSeriesID:seriesID inManagedObjectContext:managedObjectContext];

  predicateForPurchasedBooksAssets = [(BKLibraryManager *)self predicateForPurchasedBooksAssets];
  v11 = [predicateForPurchasedBooksAssets evaluateWithObject:assetCopy];

  predicateForLocalOrDownloadingLibraryAssets = [objc_opt_class() predicateForLocalOrDownloadingLibraryAssets];
  v13 = [predicateForLocalOrDownloadingLibraryAssets evaluateWithObject:assetCopy];

  if (v7)
  {
    seriesContainer2 = [assetCopy seriesContainer];

    if (!seriesContainer2)
    {
      [assetCopy setSeriesContainer:v9];
    }

    purchasedAndLocalParent = [assetCopy purchasedAndLocalParent];
    v16 = purchasedAndLocalParent != 0;

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

      [assetCopy setPurchasedAndLocalParent:v17];
    }

    localOnlySeriesItemsParent = [assetCopy localOnlySeriesItemsParent];
    v19 = localOnlySeriesItemsParent != 0;

    if (v13 == v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [assetCopy setSeriesContainer:v9];
    if (v11)
    {
      v20 = v9;
    }

    else
    {
      v20 = 0;
    }

    [assetCopy setPurchasedAndLocalParent:v20];
  }

  if (v13)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  [assetCopy setLocalOnlySeriesItemsParent:v21];
LABEL_21:

LABEL_22:
}

- (void)updateSeriesRelationshipsForSeriesContainer:(id)container
{
  containerCopy = container;
  seriesID = [containerCopy seriesID];
  managedObjectContext = [containerCopy managedObjectContext];
  v6 = [(BKLibraryManager *)self seriesBooksForSeriesID:seriesID inManagedObjectContext:managedObjectContext];

  predicateForPurchasedBooksAssets = [(BKLibraryManager *)self predicateForPurchasedBooksAssets];
  v8 = [v6 filteredArrayUsingPredicate:predicateForPurchasedBooksAssets];

  predicateForLocalLibraryAssets = [(BKLibraryManager *)self predicateForLocalLibraryAssets];
  v10 = [v8 filteredArrayUsingPredicate:predicateForLocalLibraryAssets];

  v11 = [NSSet setWithArray:v6];
  [containerCopy setValue:v11 forKey:@"seriesBooks"];

  v12 = [NSSet setWithArray:v8];
  [containerCopy setValue:v12 forKey:@"purchasedAndLocalSeriesItems"];

  v13 = [NSSet setWithArray:v10];
  [containerCopy setValue:v13 forKey:@"localOnlySeriesItems"];

  [(BKLibraryManager *)self _updateAuthorForSeriesContainer:containerCopy];
}

- (void)checkDatabaseIntegrity
{
  collectionManager = [(BKLibraryManager *)self collectionManager];
  [collectionManager fixCollectionMemberAssetLinks];

  collectionManager2 = [(BKLibraryManager *)self collectionManager];
  [collectionManager2 fixPDFCollectionIfNeeded];
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
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"BKLibrary_database"];

  return v4;
}

- (id)migrationMoc
{
  v3 = [[NSString alloc] initWithFormat:@"iBooks_%@.sqlite", @"v10252011_2152"];
  migrationOldDatabaseFolderPath = [(BKLibraryManager *)self migrationOldDatabaseFolderPath];
  v5 = [migrationOldDatabaseFolderPath stringByAppendingPathComponent:v3];

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
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"BKLibraryMigrationCache.plist"];

  return v4;
}

- (void)migrateDataSources:(id)sources
{
  sourcesCopy = sources;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 migrateWithMoc:sourcesCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)migrateSortOrderKeys:(id)keys
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_36FE0;
  v5[3] = &unk_D5420;
  keysCopy = keys;
  selfCopy = self;
  v4 = keysCopy;
  [v4 performBlockAndWait:v5];
}

- (void)bootstrapSamplesCollectionIfNeeded
{
  v3 = [(BKLibraryManager *)self metadataObjectForKey:@"BKLibraryHasBootstrappedSamplesCollection"];
  bOOLValue = [v3 BOOLValue];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"BKLibraryForceBootstrapSamplesCollection"];

  if (!bOOLValue || v6)
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
  migrationDispatchQueue = [(BKLibraryManager *)self migrationDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_377CC;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(migrationDispatchQueue, block);
}

- (void)q_removeOldMigrationData
{
  v3 = +[NSDate date];
  migratedSortOrderData = [(BKLibraryManager *)self migratedSortOrderData];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_379FC;
  v9[3] = &unk_D6610;
  v10 = v3;
  v5 = v3;
  v6 = [migratedSortOrderData keysOfEntriesPassingTest:v9];

  if ([v6 count])
  {
    migratedSortOrderData2 = [(BKLibraryManager *)self migratedSortOrderData];
    allObjects = [v6 allObjects];
    [migratedSortOrderData2 removeObjectsForKeys:allObjects];

    [(BKLibraryManager *)self setMigratedPropertiesChanged:1];
  }
}

- (void)loadCachedMigrationData
{
  migrationDispatchQueue = [(BKLibraryManager *)self migrationDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_37AE8;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(migrationDispatchQueue, block);
}

- (id)fetchMigratedProperties:(id)properties deleteFoundAssets:(BOOL)assets
{
  propertiesCopy = properties;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_83E0;
  v19 = sub_83F0;
  v20 = 0;
  if (propertiesCopy)
  {
    migrationDispatchQueue = [(BKLibraryManager *)self migrationDispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_37D4C;
    v11[3] = &unk_D6638;
    v13 = &v15;
    v11[4] = self;
    v12 = propertiesCopy;
    assetsCopy = assets;
    dispatch_sync(migrationDispatchQueue, v11);

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

- (void)adoptMigratedProperties:(id)properties
{
  propertiesCopy = properties;
  assetID = [propertiesCopy assetID];
  v6 = [(BKLibraryManager *)self fetchMigratedProperties:assetID deleteFoundAssets:1];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (![assetID hasPrefix:@"sha1-"])
    {
      goto LABEL_19;
    }

    v11 = [assetID stringByReplacingOccurrencesOfString:@"sha1-" withString:@"sha1:"];

    v12 = [(BKLibraryManager *)self fetchMigratedProperties:v11 deleteFoundAssets:1];
    if (!v12)
    {
      assetID = v11;
      goto LABEL_19;
    }

    v7 = v12;
    assetID = v11;
  }

  v8 = [v7 objectForKey:@"validUntilKey"];
  v9 = [v7 objectForKey:@"sortKey"];
  [propertiesCopy setSortKey:v9];

  if (v8)
  {
    v10 = [v7 objectForKey:@"dateLastOpened"];
    [propertiesCopy nonUserUpdateLastOpenDateTo:v10];
  }

  else
  {
    v13 = [v7 objectForKey:@"isNew"];
    [propertiesCopy setIsNew:{objc_msgSend(v13, "BOOLValue")}];

    v14 = [v7 objectForKey:@"dateLastOpened"];
    [propertiesCopy nonUserUpdateLastOpenDateTo:v14];

    if ([propertiesCopy titleEditsSavedInLibraryOnly])
    {
      v15 = [v7 objectForKey:@"bookTitle"];
      title = [propertiesCopy title];
      v17 = [title isEqualToString:v15];

      if ((v17 & 1) == 0)
      {
        [propertiesCopy setTitle:v15];
      }

      v18 = [v7 objectForKey:@"sortTitle"];
      sortTitle = [propertiesCopy sortTitle];
      v20 = [sortTitle isEqualToString:v18];

      if ((v20 & 1) == 0)
      {
        [propertiesCopy setSortTitle:v18];
      }
    }

    v10 = [v7 objectForKey:@"dateAdded"];
    v21 = +[NSDate date];
    v22 = [v10 earlierDate:v21];

    if (v22)
    {
      [propertiesCopy setCreationDate:v10];
    }
  }

  v23 = BKLibraryLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    assetID2 = [propertiesCopy assetID];
    sortKey = [propertiesCopy sortKey];
    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [propertiesCopy isNew]);
    v27 = 138412802;
    v28 = assetID2;
    v29 = 2112;
    v30 = sortKey;
    v31 = 2112;
    v32 = v26;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Migrating Library Asset ID: %@ newSortOrder: %@ newIsNew: %@", &v27, 0x20u);
  }

LABEL_19:
}

- (void)archiveTransientProperties:(id)properties
{
  propertiesCopy = properties;
  assetID = [propertiesCopy assetID];
  sortKey = [propertiesCopy sortKey];
  lastOpenDate = [propertiesCopy lastOpenDate];

  if (assetID && sortKey)
  {
    v15[0] = @"sortKey";
    v15[1] = @"dateLastOpened";
    v16[0] = sortKey;
    v16[1] = lastOpenDate;
    v15[2] = @"validUntilKey";
    v8 = [NSDate dateWithTimeIntervalSinceNow:2592000.0];
    v16[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

    migrationDispatchQueue = [(BKLibraryManager *)self migrationDispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_38428;
    v12[3] = &unk_D5A40;
    v12[4] = self;
    v13 = v9;
    v14 = assetID;
    v11 = v9;
    dispatch_sync(migrationDispatchQueue, v12);
  }
}

- (void)migrateCollections:(id)collections context:(id)context
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_385F0;
  v11[3] = &unk_D5A40;
  collectionsCopy = collections;
  selfCopy = self;
  v5 = objc_opt_new();
  v14 = v5;
  v6 = collectionsCopy;
  [v6 performBlockAndWait:v11];
  collectionsWorkerChildContext = [(BKLibraryManager *)self collectionsWorkerChildContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_38B78;
  v9[3] = &unk_D5420;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [collectionsWorkerChildContext performBlockAndWait:v9];
}

- (void)migrateMetaData:(id)data
{
  persistentStoreCoordinator = [data persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  lastObject = [persistentStores lastObject];

  v6 = [persistentStoreCoordinator metadataForPersistentStore:lastObject];
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
    migrationOldDatabaseFolderPath = [(BKLibraryManager *)self migrationOldDatabaseFolderPath];
    v6 = +[NSFileManager defaultManager];
    v14 = 0;
    v7 = [v6 removeItemAtPath:migrationOldDatabaseFolderPath error:&v14];
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
    lastObject = [v10 lastObject];

    v12 = [lastObject stringByAppendingPathComponent:@"iBooks_revision-two.sqlite-BKSortOrderMigrator_10152011.plist"];
    v13 = +[NSFileManager defaultManager];
    [v13 removeItemAtPath:v12 error:0];
  }
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  notifyCopy = notify;
  v6 = objc_opt_new();
  addedObjects = [notifyCopy addedObjects];
  [v6 addObjectsFromArray:addedObjects];

  updatedObjects = [notifyCopy updatedObjects];
  [v6 addObjectsFromArray:updatedObjects];

  deletedObjects = [notifyCopy deletedObjects];
  [v6 addObjectsFromArray:deletedObjects];

  v10 = BKLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_8FC1C(notifyCopy);
  }

  ownershipSync = [(BKLibraryManager *)self ownershipSync];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39500;
  block[3] = &unk_D5420;
  v12 = v6;
  v17 = v12;
  selfCopy = self;
  dispatch_sync(ownershipSync, block);

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

- (void)beginAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 beginAuthentication:authenticationCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)finalizeAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataSources = [(BKLibraryManager *)self dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 finalizeAuthentication:authenticationCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  dataSources = [(BKLibraryManager *)self dataSources];
  v4 = [dataSources countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(dataSources);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 processingAuthentication])
        {
          v4 = &dword_0 + 1;
          goto LABEL_12;
        }
      }

      v4 = [dataSources countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  dataSources = [(BKLibraryManager *)self dataSources];
  v3 = [dataSources countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 refreshFamily];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [dataSources countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)isFamilyPurchaseWithFamilyID:(id)d purchaserDSID:(id)iD downloaderDSID:(id)sID
{
  sIDCopy = sID;
  iDCopy = iD;
  v8 = BUStoreIdStringFromObject();
  integerValue = [v8 integerValue];

  v10 = BUStoreIdStringFromObject();

  integerValue2 = [v10 integerValue];
  v12 = BUStoreIdStringFromObject();

  integerValue3 = [v12 integerValue];
  if (integerValue3)
  {
    v14 = integerValue2 == 0;
  }

  else
  {
    v14 = 1;
  }

  v16 = !v14 && integerValue2 != integerValue3;
  return integerValue || v16;
}

- (id)cloudSyncVersionsForDataType:(id)type inContext:(id)context
{
  typeCopy = type;
  contextCopy = context;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BCCloudSyncVersions"];
  [v7 setReturnsObjectsAsFaults:0];
  [v7 setFetchLimit:1];
  typeCopy = [NSPredicate predicateWithFormat:@"dataType == %@", typeCopy];
  [v7 setPredicate:typeCopy];

  v14 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8FD58();
    }
  }

  firstObject = [v9 firstObject];
  if (!firstObject)
  {
    firstObject = [NSEntityDescription insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:contextCopy];
    [firstObject setDataType:typeCopy];
  }

  return firstObject;
}

- (void)updateCloudVersionFromCloudSyncVersions:(id)versions inContext:(id)context
{
  contextCopy = context;
  versionsCopy = versions;
  dataType = [versionsCopy dataType];
  v11 = [(BKLibraryManager *)self cloudSyncVersionsForDataType:dataType inContext:contextCopy];

  [v11 setCloudVersion:{objc_msgSend(versionsCopy, "cloudVersion")}];
  historyToken = [versionsCopy historyToken];
  [v11 setHistoryToken:historyToken];

  historyTokenOffset = [versionsCopy historyTokenOffset];
  [v11 setHistoryTokenOffset:historyTokenOffset];
}

- (id)dragInfoFromLibraryAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_alloc_init(BCAssetDragInfo);
  contentType = [assetCopy contentType];
  assetID = [assetCopy assetID];
  [v4 setAssetID:assetID];

  storeID = [assetCopy storeID];
  [v4 setStoreID:storeID];

  [v4 setContentType:contentType];
  title = [assetCopy title];
  [v4 setTitle:title];

  displayAuthor = [assetCopy displayAuthor];
  [v4 setAuthor:displayAuthor];

  [v4 setFileSize:{objc_msgSend(assetCopy, "fileSize")}];
  modificationDate = [assetCopy modificationDate];
  [v4 setModificationDate:modificationDate];

  v11 = [assetCopy url];
  [v4 setStoreURL:v11];

  if ([assetCopy contentType] == 3 && (objc_msgSend(assetCopy, "isManagedBook") & 1) == 0)
  {
    path = [assetCopy path];

    if (path)
    {
      path2 = [assetCopy path];
      v14 = [NSURL fileURLWithPath:path2];
      [v4 setLocalFileURL:v14];
    }
  }

  return v4;
}

- ($3F30F48CCF81742A7D163F96C13F4EE1)cacheManager:(SEL)manager bookCoverInfoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
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

- (void)cacheManager:(id)manager explicitIdentifiersWithCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3A598;
  v6[3] = &unk_D5BD0;
  completionCopy = completion;
  v5 = completionCopy;
  [(BKLibraryManager *)self performBlockOnWorkerQueue:v6];
}

- (void)resetCover:(id)cover
{
  coverCopy = cover;
  if ([coverCopy length])
  {
    imageSource = [(BKLibraryManager *)self imageSource];
    [imageSource removeImagesForAssetID:coverCopy temporaryAssetID:0];

    v5 = +[NSDate date];
    [(BKLibraryManager *)self updateLibraryAssetWithID:coverCopy withLastOpenDate:v5 completion:0];
  }
}

+ (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  persistentStoreURL = [self persistentStoreURL];
  uRLByDeletingLastPathComponent = [persistentStoreURL URLByDeletingLastPathComponent];
  v7 = +[NSFileManager defaultManager];
  v10 = 0;
  [v7 removeItemAtURL:uRLByDeletingLastPathComponent error:&v10];
  v8 = v10;

  v9 = objc_retainBlock(completionCopy);
  if (v9)
  {
    v9[2](v9, v8 == 0, v8);
  }
}

- (void)collectionManagerDidModifyWantToReadCollection:(id)collection
{
  v4 = BKLibraryPriceTrackingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "WTR collection changed, scheduling price tracking update", v6, 2u);
  }

  priceTracker = [(BKLibraryManager *)self priceTracker];
  [priceTracker setNeedsConfigurationUpdate];
}

- (BKLibraryDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)fetchImageShadowForAsset:(id)asset size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  completionCopy = completion;
  v11 = completionCopy;
  if (assetCopy)
  {
    assetID = [assetCopy assetID];
    v13 = +[BICDescribedImage describedImageWithIdentifier:size:processingOptions:](BICDescribedImage, "describedImageWithIdentifier:size:processingOptions:", assetID, [self processingOptionsFor:assetCopy coverEffectsEnvironment:0] | 0x10, width, height);

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
    v15 = objc_retainBlock(completionCopy);
    v13 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

+ (void)fetchImageShadowForAssetID:(id)d size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  dCopy = d;
  defaultManager = [self defaultManager];
  v19 = dCopy;
  v12 = [NSArray arrayWithObjects:&v19 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5F4BC;
  v14[3] = &unk_D72A0;
  v17 = width;
  v18 = height;
  v15 = completionCopy;
  selfCopy = self;
  v13 = completionCopy;
  [defaultManager fetchLibraryAssetsFromAssetIDs:v12 handler:v14];
}

+ (void)_fetchImageForAsset:(id)asset size:(CGSize)size includeSpine:(BOOL)spine includeShadow:(BOOL)shadow allowGeneric:(BOOL)generic coverEffectsEnvironment:(id)environment completion:(id)completion
{
  genericCopy = generic;
  shadowCopy = shadow;
  spineCopy = spine;
  height = size.height;
  width = size.width;
  assetCopy = asset;
  environmentCopy = environment;
  completionCopy = completion;
  v20 = completionCopy;
  if (assetCopy)
  {
    if (spineCopy)
    {
      v21 = [self processingOptionsFor:assetCopy coverEffectsEnvironment:environmentCopy];
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v24 = shadowCopy;
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

    assetID = [assetCopy assetID];
    height = [BICDescribedImage describedImageWithIdentifier:assetID size:v25 processingOptions:width, height];

    if (genericCopy)
    {
      v28 = 16;
    }

    else
    {
      v28 = 2;
    }

    [height setRequestOptions:v28];
    [height setPriority:5];
    v29 = +[BCCacheManager defaultCacheManager];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_5F9D4;
    v30[3] = &unk_D7250;
    v31 = v20;
    [v29 fetchCGImageFor:height forRequest:height completion:v30];
  }

  else
  {
    v22 = objc_retainBlock(completionCopy);
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0);
    }
  }
}

+ (void)fetchImageForAssetID:(id)d size:(CGSize)size includeSpine:(BOOL)spine includeShadow:(BOOL)shadow coverEffectsEnvironment:(id)environment completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  dCopy = d;
  v17 = [BKCapturedCoverEffectsEnvironment newCapturedEnvironment:environment];
  defaultManager = [self defaultManager];
  v30 = dCopy;
  v19 = [NSArray arrayWithObjects:&v30 count:1];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_5FBD4;
  v22[3] = &unk_D72C8;
  v24 = completionCopy;
  selfCopy = self;
  v26 = width;
  v27 = height;
  spineCopy = spine;
  shadowCopy = shadow;
  v23 = v17;
  v20 = completionCopy;
  v21 = v17;
  [defaultManager fetchLibraryAssetsFromAssetIDs:v19 handler:v22];
}

+ (unsigned)processingOptionsFor:(id)for coverEffectsEnvironment:(id)environment
{
  forCopy = for;
  environmentCopy = environment;
  if ([forCopy isContainer])
  {
    seriesBooks = [forCopy seriesBooks];
    anyObject = [seriesBooks anyObject];

    v9 = 32;
    if (anyObject)
    {
      if ([anyObject isAudiobook])
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

  contentType = [forCopy contentType];
  if ((contentType - 6) < 0xE)
  {
    v9 = 8;
    goto LABEL_9;
  }

  v9 = 0;
  if (contentType <= 1)
  {
    if (!contentType && [forCopy state] != 5 && objc_msgSend(forCopy, "state") != 6 && objc_msgSend(forCopy, "state") != 2)
    {
      v9 = 0;
      goto LABEL_9;
    }

LABEL_32:
    v9 = 2;
    goto LABEL_9;
  }

  if ((contentType - 2) < 2)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (contentType == 4)
  {
    goto LABEL_32;
  }

LABEL_9:
  coverEffectRTLOverride = [environmentCopy coverEffectRTLOverride];
  v12 = coverEffectRTLOverride;
  if (coverEffectRTLOverride)
  {
    if (([coverEffectRTLOverride BOOLValue] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([forCopy isRightToLeft])
  {
LABEL_11:
    v9 |= 0x80u;
  }

LABEL_12:
  isExplicit = [forCopy isExplicit];
  if ([isExplicit BOOLValue])
  {
    v14 = +[BKLibraryManager defaultManager];
    isExplicitMaterialAllowed = [v14 isExplicitMaterialAllowed];

    if ((isExplicitMaterialAllowed & 1) == 0)
    {
      v9 |= 0x400u;
    }
  }

  else
  {
  }

  if ([environmentCopy coverEffectsNightMode])
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