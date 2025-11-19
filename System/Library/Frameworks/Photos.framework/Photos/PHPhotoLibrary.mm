@interface PHPhotoLibrary
+ (BOOL)_isInternalObserver:(id)a3;
+ (BOOL)additionalCheckForProcessingNeededForAsset:(id)a3 taskID:(unint64_t)a4 priority:(unint64_t)a5;
+ (BOOL)checkAuthorizationStatusForAPIAccessLevel:(int64_t)a3 suppressPrompt:(BOOL)a4;
+ (BOOL)isPhotosApplicationInstalled;
+ (BOOL)setImagePickerPhotoLibrary:(id)a3 error:(id *)a4;
+ (BOOL)setSystemPhotoLibraryURL:(id)a3 error:(id *)a4;
+ (BOOL)shouldDisplayMergeCandidates:(id)a3 forPerson:(id)a4;
+ (Class)PHObjectClassForEntityName:(id)a3;
+ (Class)PHObjectClassForIdentifierCode:(id)a3;
+ (Class)PHObjectClassForOID:(id)a3;
+ (Class)PHObjectClassForObjectType:(int64_t)a3;
+ (PHAuthorizationStatus)authorizationStatus;
+ (PHAuthorizationStatus)authorizationStatusForAccessLevel:(PHAccessLevel)accessLevel;
+ (PHPhotoLibrary)sharedPhotoLibrary;
+ (id)PHObjectClasses;
+ (id)PHObjectClassesByEntityName;
+ (id)_countOfAnalysisVersionsForKey:(id)a3 inLibrary:(id)a4;
+ (id)_effectiveRootEntity:(id)a3;
+ (id)_sharedPhotoLibrary;
+ (id)fetchTypeForLocalIdentifierCode:(id)a3;
+ (id)imagePickerPhotoLibrary;
+ (id)mediaProcessingDeviceIndependentFacesSortDescriptors;
+ (id)mediaProcessingFacesSortDescriptorsForGeneratingPersonModel;
+ (id)openPhotoLibraryWithWellKnownIdentifier:(int64_t)a3 error:(id *)a4;
+ (id)plLibraryOptionsFromPHOptions:(id)a3 createOptions:(unint64_t *)a4;
+ (id)sharedContactStore;
+ (id)sharedLazyPhotoLibraryForCMM;
+ (id)sharedMomentSharePhotoLibrary;
+ (id)stringFromPHPhotoLibraryType:(unsigned __int16)a3;
+ (id)uniqueObjectIDCache;
+ (id)uniquedOID:(id)a3;
+ (id)uniquedOIDs:(id)a3;
+ (id)uniquedOIDsFromObjects:(id)a3;
+ (int64_t)_photosAccessAllowedForAccessLevel:(int64_t)a3;
+ (int64_t)collectionListTypeForIdentifierCode:(id)a3;
+ (unint64_t)_countOfAssetsWithPredicate:(id)a3 entityName:(id)a4 inLibrary:(id)a5;
+ (void)_forceUserInterfaceReload;
+ (void)_requestAuthorizationForAccessLevel:(int64_t)a3 supportsLimited:(BOOL)a4 handler:(id)a5;
+ (void)assertRunningInExtension;
+ (void)assertTransaction;
+ (void)removeAllUniquedOIDs;
+ (void)setNeedsToRepairKeyCuratedAssetForMemories:(id)a3;
+ (void)setSharedPhotoLibrary:(id)a3;
+ (void)unsafeShutdownLibraryWithPhotoLibraryURL:(id)a3;
- (BOOL)_openApplicationOwnedFoldersIfNecessary;
- (BOOL)_postOpenInitializationWithError:(id *)a3;
- (BOOL)_preflightRequest:(id)a3 withError:(id *)a4;
- (BOOL)_setUnavailabilityReason:(id)a3;
- (BOOL)_shouldIncludeAllBurstAssetsForTaskID:(unint64_t)a3;
- (BOOL)_shouldIncludeGuestAssetsForTaskID:(unint64_t)a3;
- (BOOL)_shouldIncludeOnlyAssetsAllowedForAnalysisForTaskID:(unint64_t)a3;
- (BOOL)assetsArePendingForDuplicateMergeProcessingWithLocalIdentifiers:(id)a3;
- (BOOL)bfa_supportsPrivacyRestrictionsForOIDs:(id)a3;
- (BOOL)cancelReservedCloudIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)cancelReservedCloudIdentifiersWithObjectType:(int64_t)a3 error:(id *)a4;
- (BOOL)cloudQuotaResourceBytesUsed:(id *)a3 minVideoSize:(unint64_t)a4 error:(id *)a5;
- (BOOL)createPhotoLibraryUsingOptions:(id)a3 error:(id *)a4;
- (BOOL)forceSyndicationIngestSyncToDate:(id)a3 error:(id *)a4;
- (BOOL)hasSyncProgressReturningImportOperations:(int *)a3;
- (BOOL)internal_processIdenticalDuplicatesWithError:(id *)a3;
- (BOOL)invalidatePersistentGraphCachesAndReturnError:(id *)a3;
- (BOOL)invalidateTransientGraphCachesAndReturnError:(id *)a3;
- (BOOL)isCPLSyncablePhotoLibrary;
- (BOOL)isFaceProcessingFinished;
- (BOOL)isInitialDuplicateDetectorProcessingCompleted;
- (BOOL)isKeepOriginalsEnabled;
- (BOOL)isReadOnlyCloudPhotoLibrary;
- (BOOL)isReadyForAnalysis;
- (BOOL)isReadyForAnalysisCPLInitialDownloadCompleted;
- (BOOL)isReadyForAnalysis_FOR_UI_USE_ONLY;
- (BOOL)isReadyForAnalysis_FOR_UI_USE_ONLY_NON_BLOCKING;
- (BOOL)isSystemPhotoLibrary;
- (BOOL)isUploadJobExtensionEnabled;
- (BOOL)isWalrusEnabled;
- (BOOL)localResourceBytesUsed:(id *)a3 minVideoSize:(unint64_t)a4 error:(id *)a5;
- (BOOL)openAndWaitWithUpgrade:(BOOL)a3 options:(id)a4 error:(id *)a5;
- (BOOL)performCancellableChangesAndWait:(id)a3 error:(id *)a4;
- (BOOL)petVIPModelExists;
- (BOOL)photoAnalysisClientAllowed;
- (BOOL)processDuplicateAssetsWithLocalIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)processUniversalSearchJITForAssetLocalIdentifier:(id)a3 processingTypes:(unint64_t)a4 error:(id *)a5;
- (BOOL)requestAssetRevGeocodingForAssetLocalIdentifiers:(id)a3 withError:(id *)a4;
- (BOOL)requestAssetRevGeocodingWithError:(id *)a3;
- (BOOL)requestEnrichmentWithOptions:(id)a3 error:(id *)a4;
- (BOOL)requestHighlightCollectionEnrichmentWithOptions:(id)a3 error:(id *)a4;
- (BOOL)requestHighlightEnrichmentWithOptions:(id)a3 error:(id *)a4;
- (BOOL)requestSandboxExtensionsIfNeededWithError:(id *)a3;
- (BOOL)requestStartSharedLibrarySuggestionResultWithError:(id *)a3;
- (BOOL)resetStateForMediaProcessingTaskID:(unint64_t)a3 assetIdentifiers:(id)a4 resetOptions:(unint64_t)a5 error:(id *)a6;
- (BOOL)setUploadJobExtensionEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)shouldMobileSlideShowLaunchWithError:(id *)a3;
- (CPLStatus)cplStatus;
- (NSArray)cloudIdentifiersForLocalIdentifiers:(NSArray *)localIdentifiers;
- (NSArray)localIdentifiersForCloudIdentifiers:(NSArray *)cloudIdentifiers;
- (NSDictionary)localIdentifierMappingsForCloudIdentifiers:(NSArray *)cloudIdentifiers;
- (NSProgress)postOpenProgress;
- (NSString)databaseUUID;
- (NSString)debugDescription;
- (NSString)uuid;
- (PHPersistentChangeFetchResult)fetchPersistentChangesSinceToken:(PHPersistentChangeToken *)token error:(NSError *)error;
- (PHPersistentChangeToken)currentToken;
- (PHPhotoLibrary)init;
- (PHPhotoLibrary)initWithPLPhotoLibrary:(id)a3 type:(unsigned __int16)a4;
- (PHPhotoLibrary)initWithPhotoLibraryBundle:(id)a3 type:(unsigned __int16)a4;
- (PHPhotoLibrary)initWithPhotoLibraryURL:(id)a3 type:(unsigned __int16)a4;
- (PHPhotoLibraryCloudStatus)cloudStatus;
- (PLPhotoLibrary)backgroundQueueObjectFetchingPhotoLibrary;
- (PLPhotoLibrary)backgroundQueuePhotoLibrary;
- (PLPhotoLibrary)changeHandlingPhotoLibrary;
- (PLPhotoLibrary)mainQueuePhotoLibrary;
- (PLPhotoLibrary)photoLibrary;
- (PLPhotoLibrary)userInitiatedQueuePhotoLibrary;
- (double)_analysisProgressForHighlight:(id)a3 fetchCountBlock:(id)a4;
- (double)_ratioOfAssetsAtOrAboveVersion:(signed __int16)a3 forKey:(id)a4;
- (double)ratioOfAssetsWithMediaAnalysisImageProcessed;
- (double)ratioOfAssetsWithMediaAnalysisVideoProcessed;
- (id)_assetBytesForOsMigration;
- (id)_assetOIDsForHighlight:(id)a3 withContext:(id)a4;
- (id)_baseFetchOptionsForMediaProcessing;
- (id)_cachedCloudStatus;
- (id)_clientForAccessLevel:(int64_t)a3;
- (id)_cloudInternalClient;
- (id)_countOfMediaProcessingAssetsWithInternalPredicate:(id)a3 taskID:(unint64_t)a4 processed:(BOOL)a5 exactVersionMatch:(BOOL)a6 versionProvider:(id)a7;
- (id)_deriveMainScopeIdentifierFromCPLSettings;
- (id)_errorCodeForAuthorizationStatus:(int64_t)a3 accessLevel:(int64_t)a4;
- (id)_errorForAuthorizationStatus:(int64_t)a3 accessLevel:(int64_t)a4;
- (id)_facesFetchOptionsForMediaProcessing;
- (id)_graphBasedPHObjectsForOIDs:(id)a3 propertyHint:(unint64_t)a4 includeTrash:(BOOL)a5;
- (id)_initializeAppPrivateData;
- (id)_initializeCPLStatus;
- (id)_initializeIsReadyForAnalysis;
- (id)_initializeIsReadyForAnalysisCPLInitialDownloadCompleted;
- (id)_initializeIsReadyForAnalysisQuickCheck;
- (id)_initializePhotoLibraryIdentifier;
- (id)_initializeSearchIndex;
- (id)_lazyPhotoLibrary;
- (id)_popChangesRequest;
- (id)_predicateForSettingsStorageSuggestions;
- (id)_propertySetsForTaskID:(unint64_t)a3;
- (id)_updateGraphAvailabilityInFeatureAvailability:(id)a3 forFeature:(unint64_t)a4 error:(id *)a5;
- (id)_urlForApplicationDataFolderIdentifier:(int64_t)a3 pathManager:(id)a4 error:(id *)a5;
- (id)allSocialGroupsForMemberLocalIdentifier:(id)a3 options:(id)a4 error:(id *)a5;
- (id)allowedEntities;
- (id)analyzeAssets:(id)a3 forFeature:(unint64_t)a4 withCompletion:(id)a5;
- (id)analyzeLibraryForFeature:(unint64_t)a3 withCompletion:(id)a4;
- (id)assetIdentifiersForPersonIdentifiers:(id)a3 error:(id *)a4;
- (id)bfa_fetchUUIDsForRestrictedOIDs:(id)a3;
- (id)bfa_tombstoneObjectForOID:(id)a3 uuid:(id)a4 propertyHint:(unint64_t)a5 overrideResultsWithClass:(Class)a6;
- (id)changeRequestForUUID:(id)a3;
- (id)cloudIdentifierMappingsForLocalIdentifiers:(id)a3 excludeUnsyncedItems:(BOOL)a4;
- (id)countOfAssetsByMediaTypeForMediaProcessingTaskID:(unint64_t)a3 processed:(BOOL)a4 algorithmVersion:(id)a5 exactVersionMatch:(BOOL)a6 error:(id *)a7;
- (id)curationDebugInformationForAssetCollectionWithLocalIdentifier:(id)a3 options:(id)a4 error:(id *)a5;
- (id)curationDebugInformationForAssetLocalIdentifier:(id)a3 error:(id *)a4;
- (id)estimatedLibrarySizeForOsMigration;
- (id)exportGraphForPurpose:(id)a3 error:(id *)a4;
- (id)faceAnalysisProcessingCounts;
- (id)faceAnalysisProgressCounts;
- (id)faceClusterSequenceNumbersOfFacesWithClusterSequenceNumbers:(id)a3 error:(id *)a4;
- (id)faceClusterSequenceNumbersOfKeyFacesInAlgorithmicFaceGroupsForPerson:(id)a3 verifiedClusterSequenceNumbers:(id)a4;
- (id)featureAvailabilityForFeature:(unint64_t)a3 readOptions:(id)a4 error:(id *)a5;
- (id)fetchAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7;
- (id)fetchDictionariesByPHClassForOIDs:(id)a3 propertyHint:(unint64_t)a4 includeTrash:(BOOL)a5 overrideWithPHClass:(Class)a6;
- (id)fetchFacesForMediaProcessingWithPersonLocalIdentifiers:(id)a3 inMoment:(id)a4;
- (id)fetchOptionsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 processed:(BOOL)a7 exactVersionMatch:(BOOL)a8 error:(id *)a9;
- (id)fetchPHObjectsForOIDs:(id)a3 propertyHint:(unint64_t)a4 includeTrash:(BOOL)a5 overrideResultsWithClass:(Class)a6;
- (id)fetchPHObjectsForUUIDs:(id)a3 entityName:(id)a4;
- (id)fetchPersistentChangesWithRequest:(id)a3 error:(id *)a4;
- (id)fetchPersonAvailabilityOfDetectionTypes:(id)a3 error:(id *)a4;
- (id)fetchProcessedAssetsBelowAnalysisStage:(signed __int16)a3 forTaskIDs:(id)a4 algorithmVersion:(id)a5 error:(id *)a6;
- (id)fetchProcessedAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7;
- (id)fetchPropertiesByOID:(id)a3 propertyNamesByEntityName:(id)a4;
- (id)fetchUnprocessedAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7;
- (id)fetchUpdatedObject:(id)a3;
- (id)fetchedObjectsForOIDs:(id)a3 propertySetClass:(Class)a4;
- (id)forceSyndicationIngestAsyncToDate:(id)a3 completionHandler:(id)a4;
- (id)getLibrarySizesFromDB:(BOOL)a3 error:(id *)a4;
- (id)graphStatisticsDescription:(id *)a3;
- (id)graphStatusDescription:(id *)a3;
- (id)highlightDebugInformationForHighlightWithLocalIdentifier:(id)a3 error:(id *)a4;
- (id)ingestItemWithSpotlightUniqueIdentifier:(id)a3 bundleID:(id)a4 purgeUrgency:(int64_t)a5 error:(id *)a6;
- (id)initMomentShareLibrary;
- (id)initSharedLibrary;
- (id)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(id)a3 candidateAssetUUIDs:(id)a4 error:(id *)a5;
- (id)libraryID;
- (id)librarySpecificFetchOptions;
- (id)limitedLibraryPredicateForApplication:(id)a3 fetchType:(id)a4;
- (id)mainQueueManagedObjectContext;
- (id)managedObjectContext;
- (id)managedObjectContextForCurrentQueueQoS;
- (id)memoryDebugInformationForMemoryWithLocalIdentifier:(id)a3 error:(id *)a4;
- (id)migrationDate;
- (id)newClusteringEligibleFacesFetchOptions;
- (id)newFaceCropsToBeGeneratedFetchOptions;
- (id)newUnclusteredFacesFetchOptions;
- (id)objectFetchingContextForCurrentQueueQoS;
- (id)photoLibraryForCurrentQueueQoS;
- (id)pl_photoLibraryForCMM;
- (id)processUniversalSearchJITForCoreSpotlightUniqueIdentifier:(id)a3 bundleID:(id)a4 processingTypes:(unint64_t)a5 error:(id *)a6;
- (id)queryForType:(id)a3 withIdentifiers:(id)a4 local:(BOOL)a5;
- (id)requestGraphInferencesSummaryWithDateInterval:(id)a3 error:(id *)a4;
- (id)requestGraphInferencesSummaryWithMomentLocalIdentifiers:(id)a3 error:(id *)a4;
- (id)requestGraphMomentLocalIdentifiersWithDateInterval:(id)a3 error:(id *)a4;
- (id)requestPersonalTraitsForAssetsWithUUIDs:(id)a3 error:(id *)a4;
- (id)requestPersonalTraitsForHighlightsWithUUIDs:(id)a3 error:(id *)a4;
- (id)requestTextFeaturesForMomentLocalIdentifiers:(id)a3 error:(id *)a4;
- (id)reserveCloudIdentifiersWithObjectType:(int64_t)a3 count:(unint64_t)a4 error:(id *)a5;
- (id)reservedCloudIdentifiersWithObjectType:(int64_t)a3 error:(id *)a4;
- (id)sceneTaxonomyDetectorNodeSceneIDsFromSceneID:(unint64_t)a3 sceneTaxonomy:(id)a4;
- (id)searchDebugInformationForAssetLocalIdentifier:(id)a3 redacted:(BOOL)a4 error:(id *)a5;
- (id)sharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)a3 error:(id *)a4;
- (id)sharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)a3 error:(id *)a4;
- (id)sharingSuggestionWithRandomPick:(BOOL)a3 fallbackToRecentMoments:(BOOL)a4 needsNotification:(BOOL)a5;
- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)a3 error:(id *)a4;
- (id)sortedArrayOfPersonIdentifiers:(id)a3 error:(id *)a4;
- (id)stateCaptureDictionary;
- (id)suggestedMePersonIdentifierWithError:(id *)a3;
- (id)suggestionsForPersonLocalIdentifier:(id)a3 clusterSequenceNumbers:(id)a4 excludePersonLocalIdentifiers:(id)a5 minimumSuggestionFaceCount:(unint64_t)a6;
- (id)summaryCurationForHighlightForLocalIdentifier:(id)a3 options:(id)a4 error:(id *)a5;
- (id)upgradePhotoLibraryUsingOptions:(id)a3 completion:(id)a4;
- (id)urlForApplicationDataFolderIdentifier:(int64_t)a3;
- (id)urlForApplicationDataFolderIdentifier:(int64_t)a3 error:(id *)a4;
- (int)requestProcessingTypes:(unint64_t)a3 forAssetsWithLocalIdentifiers:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (int64_t)_initialRetryCountForChangesRequest:(id)a3;
- (int64_t)fetchCountOfAssetsWithAllowedForAnalysis;
- (int64_t)fetchCountOfAssetsWithFacesProcessedToAnyVersion;
- (int64_t)fetchCountOfAssetsWithFacesProcessedToLatestVersion;
- (int64_t)fetchCountOfAssetsWithMediaAnalysisImageProcessed;
- (int64_t)fetchCountOfAssetsWithMediaAnalysisVideoProcessed;
- (int64_t)fetchCountOfAssetsWithScenesProcessed;
- (int64_t)fetchCountOfVideosWithAllowedForAnalysis;
- (uint64_t)_performCancellableChangesAndWait:(void *)a3 withInstrumentation:(void *)a4 error:;
- (unint64_t)countOfAllAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 sceneConfidenceThreshold:(float)a5 error:(id *)a6;
- (unint64_t)countOfClusteringEligibleFaces;
- (unint64_t)countOfFaceCropsToBeGenerated;
- (unint64_t)countOfProcessedAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7;
- (unint64_t)countOfUnclusteredFaces;
- (unint64_t)countOfUnprocessedAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7;
- (unint64_t)countOfUnprocessedFaceCrops;
- (void)_beginTransaction;
- (void)_callLegacyCompletionTarget:(id)a3 completionSelector:(SEL)a4 contextInfo:(void *)a5 withSuccess:(BOOL)a6 error:(id)a7;
- (void)_cancelTransactionOnExecutionContext:(id)a3 withInstrumentation:(id)a4 completionHandler:(id)a5;
- (void)_commitTransactionOnExecutionContext:(id)a3 withInstrumentation:(id)a4 completionHandler:(id)a5;
- (void)_denyTransactionOnExecutionContext:(id)a3 withInstrumentation:(id)a4 authorizationStatus:(int64_t)a5 accessLevel:(int64_t)a6 completionHandler:(id)a7;
- (void)_endTransaction;
- (void)_handleLibraryBecameUnavailable:(id)a3 reason:(id)a4;
- (void)_handleServiceConnectionClosed:(id)a3;
- (void)_invalidateEverythingWithReason:(id)a3;
- (void)_notifyAvailabilityObserversWithReason:(id)a3;
- (void)_notifyPersistentChangeObservers;
- (void)_onQueueNotifyAvailabilityObserversWithReason:(id)a3;
- (void)_performCancellableChanges:(void *)a3 withInstrumentation:(void *)a4 completionHandler:;
- (void)_performCancellableChanges:(void *)a3 withInstrumentation:(void *)a4 onExecutionContext:(void *)a5 completionHandler:;
- (void)_processCPLStatusDidChange:(id)a3;
- (void)_processPendingChangesWithDebugEvent:(id)a3;
- (void)_publishChangeWithDebugEvent:(id)a3 block:(id)a4;
- (void)_publishCloudStatusUpdate:(id)a3;
- (void)_resetCachedValues;
- (void)_resourceBytesUsedForPredicate:(id)a3 minVideoSize:(unint64_t)a4 completion:(id)a5;
- (void)_sendChangesRequest:(id)a3 onExecutionContext:(id)a4 withInstrumentation:(id)a5 remainingRetryCount:(int64_t)a6 reply:(id)a7;
- (void)_sendChangesRequest:(id)a3 onExecutionContext:(id)a4 withInstrumentation:(id)a5 reply:(id)a6;
- (void)_setCachedCloudStatus:(id)a3;
- (void)_setFetchLimit:(id)a3 forTaskID:(unint64_t)a4;
- (void)_setSortDescriptors:(id)a3 forTaskID:(unint64_t)a4;
- (void)_startObservingServiceConnectionInvalidated;
- (void)_startWatchingForLibraryAvailability;
- (void)_stopObservingServiceConnectionInvalidated;
- (void)_stopWatchingForLibraryAvailability;
- (void)_updateFetchOptionsForMediaProcessingCounts:(id)a3;
- (void)_updateFetchOptionsForProcessedAssets:(id)a3;
- (void)_validateSpotlightAvailabilityInFeatureAvailability:(id)a3 forFeature:(unint64_t)a4 completionHandler:(id)a5;
- (void)accountDidChange:(id)a3;
- (void)appPrivateDataWriteFailedWithError:(id)a3;
- (void)assertTransaction;
- (void)cancelOperationsWithIdentifiers:(id)a3 reply:(id)a4;
- (void)close;
- (void)cloudQuotaResourceBytesUsedForMinVideoSize:(unint64_t)a3 completion:(id)a4;
- (void)coalesceAndAnalyzeAssets:(id)a3 forFeature:(unint64_t)a4;
- (void)countOfReferencedMediaWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)featureAvailabilityForFeature:(unint64_t)a3 readOptions:(id)a4 completionHandler:(id)a5;
- (void)getCPLConfigrationValueForClient:(unint64_t)a3 completionHandler:(id)a4;
- (void)handleMergeNotification:(id)a3;
- (void)legacySaveImageDataToCameraRoll:(id)a3 completionTarget:(id)a4 completionSelector:(SEL)a5 contextInfo:(void *)a6;
- (void)legacySaveImageToCameraRoll:(id)a3 completionTarget:(id)a4 completionSelector:(SEL)a5 contextInfo:(void *)a6;
- (void)legacySaveScreenshotToCameraRoll:(id)a3 completionTarget:(id)a4 completionSelector:(SEL)a5 contextInfo:(void *)a6;
- (void)legacySaveVideoToCameraRoll:(id)a3 completionTarget:(id)a4 completionSelector:(SEL)a5 contextInfo:(void *)a6;
- (void)localResourceBytesUsedForMinVideoSize:(unint64_t)a3 completion:(id)a4;
- (void)mergeDuplicateAssetsWithLocalIdentifierGroupingContainer:(id)a3 completionHandler:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 systemBudgets:(unint64_t)a5 completionHandler:(id)a6;
- (void)performCancellableChanges:(id)a3 completionHandler:(id)a4;
- (void)personPromotionProcessingStatusForUserInterface:(id)a3;
- (void)recordDeleteRequest:(id)a3;
- (void)recordInsertRequest:(id)a3;
- (void)recordOtherChangeRequest:(id)a3;
- (void)recordUpdateRequest:(id)a3;
- (void)registerAvailabilityObserver:(id)observer;
- (void)registerChangeObserver:(id)observer;
- (void)registerCloudStatusObserver:(id)a3;
- (void)requestExternalAssetRelevanceProcessingWithReply:(id)a3;
- (void)requestGenerateQuestionsWithOptions:(id)a3 reply:(id)a4;
- (void)requestGraphModelResultWithOptions:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)requestGraphReadyNotificationWithCoalescingIdentifier:(id)a3 completion:(id)a4;
- (void)requestGraphRebuildProgressWithCompletion:(id)a3;
- (void)requestHighlightEstimatesWithCompletion:(id)a3;
- (void)requestSyndicationProcessingWithOptions:(id)a3 reply:(id)a4;
- (void)requestTotalProgressCountsForWorkerType:(signed __int16)a3 states:(id)a4 completion:(id)a5;
- (void)resetFaceAnalysisWithResetLevel:(int64_t)a3 completionHandler:(id)a4;
- (void)resetLimitedLibraryAccessForApplication:(id)a3 completionHandler:(id)a4;
- (void)runPFLWithAttachments:(id)a3 recipeUserInfo:(id)a4 resultBlock:(id)a5;
- (void)runShadowEvaluationWithRecipe:(id)a3 models:(id)a4 trialDeploymentID:(id)a5 trialExperimentID:(id)a6 trialTreatmentID:(id)a7 resultBlock:(id)a8;
- (void)setChangeRequest:(id)a3 forUUID:(id)a4;
- (void)setCloudPhotoLibraryPauseState:(BOOL)a3 reason:(signed __int16)a4;
- (void)setCustomLibrarySpecificFetchOptions:(id)a3;
- (void)setKeepOriginalsEnabled:(BOOL)a3;
- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)a3;
- (void)simulateMemoriesNotificationWithOptions:(id)a3 reply:(id)a4;
- (void)statusDidChange:(id)a3;
- (void)unregisterAvailabilityObserver:(id)observer;
- (void)unregisterChangeObserver:(id)observer;
- (void)unregisterCloudStatusObserver:(id)a3;
@end

@implementation PHPhotoLibrary

- (BOOL)isSystemPhotoLibrary
{
  v3 = objc_opt_class();
  v4 = [(PHPhotoLibrary *)self photoLibraryURL];
  LOBYTE(v3) = [v3 isSystemPhotoLibraryURL:v4];

  return v3;
}

+ (id)uniqueObjectIDCache
{
  pl_dispatch_once();
  v2 = uniqueObjectIDCache_pl_once_object_76;

  return v2;
}

- (id)librarySpecificFetchOptions
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_customLibrarySpecificFetchOptions)
  {
    [v3 mergeWithFetchOptions:?];
  }

  [v4 setPhotoLibrary:self];

  return v4;
}

- (id)_initializeAppPrivateData
{
  v3 = MEMORY[0x1E69BE670];
  v4 = [(PHPhotoLibrary *)self photoLibraryBundle];
  if ([v3 shouldTryFastPathWithLibraryBundle:v4])
  {

LABEL_4:
    v6 = [[PHPhotoLibraryAppPrivateData alloc] initWithLibrary:self];
    goto LABEL_5;
  }

  v5 = [(PHPhotoLibrary *)self photoLibrary];

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Library open required to be called before creating AppPrivateData", v9, 2u);
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (id)_lazyPhotoLibrary
{
  if ([(PHPhotoLibrary *)self isPHPhotoLibraryForCMM])
  {
    v3 = +[PHPhotoLibrary sharedLazyPhotoLibraryForCMM];
  }

  else
  {
    v3 = self->_lazyPhotoLibrary;
  }

  return v3;
}

uint64_t __37__PHPhotoLibrary_uniqueObjectIDCache__block_invoke()
{
  uniqueObjectIDCache_pl_once_object_76 = objc_alloc_init(PHUniqueObjectIDCache);

  return MEMORY[0x1EEE66BB8]();
}

- (PLPhotoLibrary)photoLibrary
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(PHPhotoLibrary *)self _lazyPhotoLibrary];
  v4 = [v3 objectValue];
  if (!v4)
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(PHPhotoLibrary *)self debugDescription];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "Unable to create PLPhotoLibrary for PHPhotoLibrary: %@", &v8, 0xCu);
    }
  }

  return v4;
}

- (id)managedObjectContextForCurrentQueueQoS
{
  v2 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (id)photoLibraryForCurrentQueueQoS
{
  if ([(PHPhotoLibrary *)self isPHPhotoLibraryForCMM])
  {
    v3 = [(PHPhotoLibrary *)self pl_photoLibraryForCMM];
  }

  else
  {
    v4 = qos_class_self();
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v3 = [(PHPhotoLibrary *)self mainQueuePhotoLibrary];
    }

    else
    {
      if (v4 < QOS_CLASS_USER_INITIATED)
      {
        [(PHPhotoLibrary *)self backgroundQueuePhotoLibrary];
      }

      else
      {
        [(PHPhotoLibrary *)self userInitiatedQueuePhotoLibrary];
      }
      v3 = ;
    }
  }

  return v3;
}

- (PLPhotoLibrary)userInitiatedQueuePhotoLibrary
{
  if ([(PHPhotoLibrary *)self isPHPhotoLibraryForCMM])
  {
    [(PHPhotoLibrary *)self pl_photoLibraryForCMM];
  }

  else
  {
    [(PLLazyObject *)self->_lazyUserInitiatedQueuePhotoLibrary objectValue];
  }
  v3 = ;

  return v3;
}

- (id)allowedEntities
{
  v2 = [(PHPhotoLibrary *)self type];
  if (v2 == 1)
  {
    pl_dispatch_once();
    v3 = &allowedEntities_pl_once_object_78;
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    pl_dispatch_once();
    v3 = &allowedEntities_pl_once_object_77;
  }

  v2 = *v3;
LABEL_6:

  return v2;
}

void __33__PHPhotoLibrary_allowedEntities__block_invoke()
{
  v15 = MEMORY[0x1E695DFD8];
  v32 = [MEMORY[0x1E69BE540] entityName];
  v29 = [MEMORY[0x1E69BE530] entityName];
  v31 = [MEMORY[0x1E69BE458] entityName];
  v26 = [MEMORY[0x1E69BE430] entityName];
  v30 = [MEMORY[0x1E69BE330] entityName];
  v28 = [MEMORY[0x1E69BE338] entityName];
  v23 = [MEMORY[0x1E69BE568] entityName];
  v27 = [MEMORY[0x1E69BE6B0] entityName];
  v14 = [MEMORY[0x1E69BE558] entityName];
  v25 = [MEMORY[0x1E69BE5C0] entityName];
  v24 = [MEMORY[0x1E69BE3D0] entityName];
  v13 = [MEMORY[0x1E69BE608] entityName];
  v22 = [MEMORY[0x1E69BE3D8] entityName];
  v12 = [MEMORY[0x1E69BE5A8] entityName];
  v21 = [MEMORY[0x1E69BE410] entityName];
  v20 = [MEMORY[0x1E69BE6B8] entityName];
  v19 = [MEMORY[0x1E69BE470] entityName];
  v18 = [MEMORY[0x1E69BE828] entityName];
  v17 = [MEMORY[0x1E69BE4A0] entityName];
  v16 = [MEMORY[0x1E69BE6F0] entityName];
  v11 = [MEMORY[0x1E69BE560] entityName];
  v0 = [MEMORY[0x1E69BE710] entityName];
  v10 = [MEMORY[0x1E69BE4E8] entityName];
  v9 = [MEMORY[0x1E69BE358] entityName];
  v1 = [MEMORY[0x1E69BE7D8] entityName];
  v2 = [MEMORY[0x1E69BE340] entityName];
  v3 = [MEMORY[0x1E69BE278] entityName];
  v4 = [MEMORY[0x1E69BE270] entityName];
  v5 = [MEMORY[0x1E69BE388] entityName];
  v6 = [MEMORY[0x1E69BE320] entityName];
  v7 = [v15 setWithObjects:{v32, v29, v31, v26, v30, v28, v23, v27, v14, v25, v24, v13, v22, v12, v21, v20, v19, v18, v17, v16, v11, v0, v10, v9, v1, v2, v3, v4, v5, v6, 0}];
  v8 = allowedEntities_pl_once_object_77;
  allowedEntities_pl_once_object_77 = v7;
}

- (id)objectFetchingContextForCurrentQueueQoS
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = [(PHPhotoLibrary *)self mainQueueManagedObjectContext];
  }

  else
  {
    v4 = [(PHPhotoLibrary *)self backgroundQueueObjectFetchingPhotoLibrary];
    v3 = [v4 managedObjectContext];
  }

  return v3;
}

- (PLPhotoLibrary)backgroundQueueObjectFetchingPhotoLibrary
{
  if ([(PHPhotoLibrary *)self isPHPhotoLibraryForCMM])
  {
    [(PHPhotoLibrary *)self pl_photoLibraryForCMM];
  }

  else
  {
    [(PLLazyObject *)self->_lazyBackgroundQueueObjectFetchingPhotoLibrary objectValue];
  }
  v3 = ;

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    photoLibraryBundle = self->_photoLibraryBundle;
    *buf = 138412802;
    v9 = v4;
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = photoLibraryBundle;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc %@", buf, 0x20u);
  }

  if ((PLIsAssetsd() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41024 userInfo:0];
    [(PHPhotoLibrary *)self closeWithReason:v6];
  }

  v7.receiver = self;
  v7.super_class = PHPhotoLibrary;
  [(PHPhotoLibrary *)&v7 dealloc];
}

- (void)_stopWatchingForLibraryAvailability
{
  [(PHPhotoLibrary *)self _stopObservingServiceConnectionInvalidated];

  [(PHPhotoLibrary *)self _stopWatchingFileSystemVolumeForLibraryAvailability];
}

- (void)_stopObservingServiceConnectionInvalidated
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69BF3A8] object:0];
}

- (BOOL)_openApplicationOwnedFoldersIfNecessary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PHPhotoLibrary__openApplicationOwnedFoldersIfNecessary__block_invoke;
  v5[3] = &unk_1E75AADC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __57__PHPhotoLibrary__openApplicationOwnedFoldersIfNecessary__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 216))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 232);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 & 1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = [*(a1 + 32) assetsdClient];
    v5 = [v4 libraryClient];
    v10 = 0;
    v6 = [v5 openApplicationOwnedFoldersWithError:&v10];
    v7 = v10;
    *(*(*(a1 + 40) + 8) + 24) = v6;

    v8 = *(*(*(a1 + 40) + 8) + 24);
    if ((v8 & 1) == 0)
    {
      v9 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "failed to open application owned folders %@", buf, 0xCu);
      }

      v8 = *(*(*(a1 + 40) + 8) + 24);
    }

    *(*(a1 + 32) + 232) = v8;
  }
}

+ (id)PHObjectClassesByEntityName
{
  if (PHObjectClassesByEntityName_onceToken != -1)
  {
    dispatch_once(&PHObjectClassesByEntityName_onceToken, &__block_literal_global_596);
  }

  v3 = PHObjectClassesByEntityName_nameToClass;

  return v3;
}

void __45__PHPhotoLibrary_PHObjectClassesByEntityName__block_invoke()
{
  v44[31] = *MEMORY[0x1E69E9840];
  v42 = [MEMORY[0x1E69BE540] entityName];
  v43[0] = v42;
  v44[0] = objc_opt_class();
  v41 = [MEMORY[0x1E69BE530] entityName];
  v43[1] = v41;
  v44[1] = objc_opt_class();
  v40 = [MEMORY[0x1E69BE458] entityName];
  v43[2] = v40;
  v44[2] = objc_opt_class();
  v39 = [MEMORY[0x1E69BE430] entityName];
  v43[3] = v39;
  v44[3] = objc_opt_class();
  v38 = [MEMORY[0x1E69BE330] entityName];
  v43[4] = v38;
  v44[4] = objc_opt_class();
  v37 = [MEMORY[0x1E69BE338] entityName];
  v43[5] = v37;
  v44[5] = objc_opt_class();
  v36 = [MEMORY[0x1E69BE568] entityName];
  v43[6] = v36;
  v44[6] = objc_opt_class();
  v35 = [MEMORY[0x1E69BE6B0] entityName];
  v43[7] = v35;
  v44[7] = objc_opt_class();
  v34 = [MEMORY[0x1E69BE558] entityName];
  v43[8] = v34;
  v44[8] = objc_opt_class();
  v33 = [MEMORY[0x1E69BE5C0] entityName];
  v43[9] = v33;
  v44[9] = objc_opt_class();
  v32 = [MEMORY[0x1E69BE3D0] entityName];
  v43[10] = v32;
  v44[10] = objc_opt_class();
  v31 = [MEMORY[0x1E69BE608] entityName];
  v43[11] = v31;
  v44[11] = objc_opt_class();
  v30 = [MEMORY[0x1E69BE3D8] entityName];
  v43[12] = v30;
  v44[12] = objc_opt_class();
  v29 = [MEMORY[0x1E69BE5A8] entityName];
  v43[13] = v29;
  v44[13] = objc_opt_class();
  v28 = [MEMORY[0x1E69BE410] entityName];
  v43[14] = v28;
  v44[14] = objc_opt_class();
  v27 = [MEMORY[0x1E69BE6B8] entityName];
  v43[15] = v27;
  v44[15] = objc_opt_class();
  v26 = [MEMORY[0x1E69BE5D0] entityName];
  v43[16] = v26;
  v44[16] = objc_opt_class();
  v25 = [MEMORY[0x1E69BE4E8] entityName];
  v43[17] = v25;
  v44[17] = objc_opt_class();
  v24 = [MEMORY[0x1E69BE358] entityName];
  v43[18] = v24;
  v44[18] = objc_opt_class();
  v23 = [MEMORY[0x1E69BE7D8] entityName];
  v43[19] = v23;
  v44[19] = objc_opt_class();
  v22 = [MEMORY[0x1E69BE340] entityName];
  v43[20] = v22;
  v44[20] = objc_opt_class();
  v21 = [MEMORY[0x1E69BE828] entityName];
  v43[21] = v21;
  v44[21] = objc_opt_class();
  v20 = [MEMORY[0x1E69BE4A0] entityName];
  v43[22] = v20;
  v44[22] = objc_opt_class();
  v0 = [MEMORY[0x1E69BE6F0] entityName];
  v43[23] = v0;
  v44[23] = objc_opt_class();
  v1 = [MEMORY[0x1E69BE560] entityName];
  v43[24] = v1;
  v44[24] = objc_opt_class();
  v2 = [MEMORY[0x1E69BE710] entityName];
  v43[25] = v2;
  v44[25] = objc_opt_class();
  v3 = [MEMORY[0x1E69BE3F8] entityName];
  v43[26] = v3;
  v44[26] = objc_opt_class();
  v4 = [MEMORY[0x1E69BE388] entityName];
  v43[27] = v4;
  v44[27] = objc_opt_class();
  v5 = [MEMORY[0x1E69BE320] entityName];
  v43[28] = v5;
  v44[28] = objc_opt_class();
  v6 = [MEMORY[0x1E69BE308] entityName];
  v43[29] = v6;
  v44[29] = objc_opt_class();
  v7 = [MEMORY[0x1E69BE310] entityName];
  v43[30] = v7;
  v44[30] = objc_opt_class();
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:31];
  v9 = [v8 mutableCopy];

  v10 = objc_opt_class();
  v11 = [MEMORY[0x1E69BE270] entityName];
  [v9 setObject:v10 forKeyedSubscript:v11];

  v12 = objc_opt_class();
  v13 = [MEMORY[0x1E69BE278] entityName];
  [v9 setObject:v12 forKeyedSubscript:v13];

  v14 = MEMORY[0x1E695DF90];
  v15 = MEMORY[0x1E695DF20];
  v16 = [v9 allKeys];
  v17 = [v15 sharedKeySetForKeys:v16];
  v18 = [v14 dictionaryWithSharedKeySet:v17];

  [v18 addEntriesFromDictionary:v9];
  v19 = PHObjectClassesByEntityName_nameToClass;
  PHObjectClassesByEntityName_nameToClass = v18;
}

+ (PHPhotoLibrary)sharedPhotoLibrary
{
  [MEMORY[0x1E69BF2A0] assertSingleLibraryMode];

  return [a1 _sharedPhotoLibrary];
}

- (id)initSharedLibrary
{
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [(PHPhotoLibrary *)self initWithPhotoLibraryURL:v3 type:0];

  return v4;
}

+ (id)_sharedPhotoLibrary
{
  if (sharedPhotoLibraryOnceToken != -1)
  {
    dispatch_once(&sharedPhotoLibraryOnceToken, &__block_literal_global_22093);
  }

  v2 = sharedPhotoLibrary;
  if (!sharedPhotoLibrary)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unable to create shared library" userInfo:0];
    objc_exception_throw(v4);
  }

  return v2;
}

uint64_t __37__PHPhotoLibrary__sharedPhotoLibrary__block_invoke()
{
  sharedPhotoLibrary = [[PHPhotoLibrary alloc] initSharedLibrary];

  return MEMORY[0x1EEE66BB8]();
}

- (PLPhotoLibrary)mainQueuePhotoLibrary
{
  if ([(PHPhotoLibrary *)self isPHPhotoLibraryForCMM])
  {
    [(PHPhotoLibrary *)self pl_photoLibraryForCMM];
  }

  else
  {
    [(PLLazyObject *)self->_lazyMainQueuePhotoLibrary objectValue];
  }
  v3 = ;

  return v3;
}

- (id)mainQueueManagedObjectContext
{
  v2 = [(PHPhotoLibrary *)self mainQueuePhotoLibrary];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (PLPhotoLibrary)backgroundQueuePhotoLibrary
{
  if ([(PHPhotoLibrary *)self isPHPhotoLibraryForCMM])
  {
    [(PHPhotoLibrary *)self pl_photoLibraryForCMM];
  }

  else
  {
    [(PLLazyObject *)self->_lazyBackgroundQueuePhotoLibrary objectValue];
  }
  v3 = ;

  return v3;
}

- (id)_initializeSearchIndex
{
  v2 = [[PHSearchIndex alloc] initWithPhotoLibrary:self];

  return v2;
}

- (id)libraryID
{
  v2 = [(PLPhotoLibraryBundle *)self->_photoLibraryBundle pathManager];
  v3 = PLLibraryIDFromPathManager();

  return v3;
}

- (void)_notifyPersistentChangeObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PHPhotoLibraryPersistentHistoryDidChangeNotification" object:self];
}

- (PLPhotoLibrary)changeHandlingPhotoLibrary
{
  if ([(PHPhotoLibrary *)self isPHPhotoLibraryForCMM])
  {
    [(PHPhotoLibrary *)self pl_photoLibraryForCMM];
  }

  else
  {
    [(PLLazyObject *)self->_lazyChangeHandlingPhotoLibrary objectValue];
  }
  v3 = ;

  return v3;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [objc_opt_class() stringFromPHPhotoLibraryType:{-[PHPhotoLibrary type](self, "type")}];
  v6 = [(PHPhotoLibrary *)self photoLibraryURL];
  v7 = [v6 path];
  v8 = [v3 stringWithFormat:@"<%@: %p> type:%@ path:%@", v4, self, v5, v7];

  return v8;
}

- (NSString)uuid
{
  v2 = [(PHPhotoLibrary *)self photoLibrary];
  v3 = [v2 pathManager];
  v4 = [v3 photoDirectoryWithType:1];

  return v4;
}

- (id)searchDebugInformationForAssetLocalIdentifier:(id)a3 redacted:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = [(PHObject *)PHAsset uuidFromLocalIdentifier:a3];
  v9 = [(PHPhotoLibrary *)self photoLibrary];
  v10 = [v9 assetsdClient];
  v11 = [v10 debugClient];
  v12 = [v11 requestSearchDebugInformationForAssetUUID:v8 redacted:v6 error:a5];

  return v12;
}

- (BOOL)resetStateForMediaProcessingTaskID:(unint64_t)a3 assetIdentifiers:(id)a4 resetOptions:(unint64_t)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [(PHPhotoLibrary *)self assetsdClient];
  v12 = [v11 photoKitClient];

  if (v12)
  {
    v13 = [v10 _pl_map:&__block_literal_global_2629];
    v14 = [v12 resetStateForMediaProcessingTaskID:a3 assetUUIDs:v13 resetOptions:a5 error:a6];
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"photokit client is nil";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v17 = [v15 errorWithDomain:@"PHPhotosErrorDomain" code:4302 userInfo:v16];
    if (a6)
    {
      v17 = v17;
      *a6 = v17;
    }

    v14 = 0;
  }

  return v14;
}

- (id)_facesFetchOptionsForMediaProcessing
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [(PHPhotoLibrary *)self _baseFetchOptionsForMediaProcessing];
  v8[0] = @"PHFacePropertySetIdentifier";
  v8[1] = @"PHFacePropertySetCore";
  v8[2] = @"PHFacePropertySetClustering";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  [v2 setFetchPropertySets:v3];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v7 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  [v2 setSortDescriptors:v5];

  [v2 setIncludeTorsoAndFaceDetectionData:1];
  [v2 setIncludedDetectionTypes:&unk_1F102DE20];

  return v2;
}

- (id)_baseFetchOptionsForMediaProcessing
{
  v2 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  [v2 setWantsIncrementalChangeDetails:0];

  return v2;
}

- (id)fetchFacesForMediaProcessingWithPersonLocalIdentifiers:(id)a3 inMoment:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PHPhotoLibrary *)self _facesFetchOptionsForMediaProcessing];
  v9 = [(PHPhotoLibrary *)self _assetFetchOptionsForMediaProcessing];
  v10 = [PHAsset fetchAssetsInAssetCollection:v7 options:v9];

  v11 = [v10 fetchedObjectIDs];
  if ([v11 count])
  {
    v26 = v10;
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in (%@)", @"assetForFace", v11];
    v13 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v6;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [PHObject uuidFromLocalIdentifier:*(*(&v28 + 1) + 8 * i)];
          [v13 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v16);
    }

    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"any %K in %@", @"personForFace.personUUID", v13];
    v21 = MEMORY[0x1E696AB28];
    v34[0] = v12;
    v34[1] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];

    [v8 setInternalPredicate:v23];
    v24 = [PHFace fetchFacesWithOptions:v8];

    v6 = v27;
    v10 = v26;
  }

  else
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v7;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Getting no object IDs when fetching assets on moment %@", buf, 0xCu);
    }

    v24 = 0;
  }

  return v24;
}

- (id)_propertySetsForTaskID:(unint64_t)a3
{
  v32[5] = *MEMORY[0x1E69E9840];
  v32[0] = @"PHAssetPropertySetCharacterRecognition";
  v32[1] = @"PHAssetPropertySetFaceWorker";
  v32[2] = @"PHAssetPropertySetMediaAnalysis";
  v32[3] = @"PHAssetPropertySetSceneAnalysis";
  v32[4] = @"PHAssetPropertySetVisualSearch";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v6 addObject:@"PHAssetPropertySetOriginalMetadata"];
  switch(a3)
  {
    case 1uLL:
    case 0x11uLL:
      [v6 addObjectsFromArray:v5];
      v31[0] = @"PHAssetPropertySetMediaAnalysis";
      v31[1] = @"PHAssetPropertySetPhotoIris";
      v31[2] = @"PHAssetPropertySetSceneAnalysis";
      v31[3] = @"PHAssetPropertySetSceneprint";
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
      [v6 addObjectsFromArray:v7];

      if ([(PHPhotoLibrary *)self wellKnownPhotoLibraryIdentifier]== 3)
      {
        [v6 addObject:@"PHAssetPropertySetCuration"];
      }

      break;
    case 2uLL:
      [v6 addObjectsFromArray:v5];
      v30[0] = @"PHAssetPropertySetSceneAnalysis";
      v30[1] = @"PHAssetPropertySetIconicScore";
      v30[2] = @"PHAssetPropertySetAesthetic";
      v30[3] = @"PHAssetPropertySetCuration";
      v30[4] = @"PHAssetPropertySetSceneprint";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v30;
      v10 = 5;
      goto LABEL_21;
    case 3uLL:
      [v6 addObjectsFromArray:v5];
      v29 = @"PHAssetPropertySetFaceWorker";
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v29;
      goto LABEL_18;
    case 4uLL:
      v27[0] = @"PHAssetPropertySetMediaAnalysis";
      v27[1] = @"PHAssetPropertySetPhotoIris";
      v27[2] = @"PHAssetPropertySetSceneAnalysis";
      v27[3] = @"PHAssetPropertySetSceneprint";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v27;
      goto LABEL_16;
    case 5uLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
      break;
    case 6uLL:
      v26[0] = @"PHAssetPropertySetMediaAnalysis";
      v26[1] = @"PHAssetPropertySetPhotoIris";
      v26[2] = @"PHAssetPropertySetSceneAnalysis";
      v26[3] = @"PHAssetPropertySetSceneprint";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v26;
LABEL_16:
      v10 = 4;
      goto LABEL_21;
    case 7uLL:
      goto LABEL_6;
    case 8uLL:
      v28 = @"PHAssetPropertySetFaceWorker";
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v28;
      goto LABEL_18;
    case 9uLL:
      v25 = @"PHAssetPropertySetCloudLocalState";
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v25;
      goto LABEL_18;
    case 0xAuLL:
      [v6 addObjectsFromArray:v5];
      v24[0] = @"PHAssetPropertySetCharacterRecognition";
      v24[1] = @"PHAssetPropertySetSceneAnalysis";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v24;
      goto LABEL_20;
    case 0xBuLL:
      v21 = @"PHAssetPropertySetMediaAnalysis";
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v21;
      goto LABEL_18;
    case 0xCuLL:
      [v6 addObjectsFromArray:v5];
      v20[0] = @"PHAssetPropertySetSceneAnalysis";
      v20[1] = @"PHAssetPropertySetVisualSearch";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v20;
      goto LABEL_20;
    case 0x10uLL:
    case 0x12uLL:
      v19[0] = @"PHAssetPropertySetSceneAnalysis";
      v19[1] = @"PHAssetPropertySetVisualSearch";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v19;
      goto LABEL_20;
    case 0x13uLL:
      [v6 addObjectsFromArray:v5];
      v22 = @"PHAssetPropertySetTextUnderstanding";
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v22;
LABEL_18:
      v10 = 1;
      goto LABEL_21;
    case 0x14uLL:
      [v6 addObjectsFromArray:v5];
      v23[0] = @"PHAssetPropertySetTextUnderstanding";
      v23[1] = @"PHAssetPropertySetCharacterRecognition";
      v8 = MEMORY[0x1E695DEC8];
      v9 = v23;
LABEL_20:
      v10 = 2;
LABEL_21:
      v11 = [v8 arrayWithObjects:v9 count:v10];
      [v6 addObjectsFromArray:v11];

      break;
    default:
      if (a3 == 0x7FFFFFFF)
      {
LABEL_6:
        [v6 addObjectsFromArray:v5];
      }

      break;
  }

  v12 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 134218242;
    v16 = a3;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "PHMediaProcessingTaskID %tu using property sets:%{public}@", &v15, 0x16u);
  }

  v13 = [v6 allObjects];

  return v13;
}

- (BOOL)_shouldIncludeAllBurstAssetsForTaskID:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 > 0x14)
  {
    if (a3 != 0x7FFFFFFF)
    {
      v5 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134217984;
        v7 = a3;
        _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "PHMediaProcessingTaskID (%tu); defaulting to include all burst assets", &v6, 0xCu);
      }
    }

    return 1;
  }

  return ((1 << a3) & 0x2E9F3) != 0;
}

- (BOOL)_shouldIncludeGuestAssetsForTaskID:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 - 4 >= 0x11 && a3 >= 3 && a3 != 0x7FFFFFFF)
  {
    if (a3 == 3)
    {
      return ![(PHPhotoLibrary *)self isSystemPhotoLibrary];
    }

    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "PHMediaProcessingTaskID (%tu); defaulting to include guest assets", &v8, 0xCu);
    }
  }

  return 1;
}

- (BOOL)_shouldIncludeOnlyAssetsAllowedForAnalysisForTaskID:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 - 4 >= 0x11 && a3 >= 3)
  {
    if (a3 == 3)
    {
      return 1;
    }

    if (a3 != 0x7FFFFFFF)
    {
      v6 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = a3;
        _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "PHMediaProcessingTaskID (%tu); defaulting to NOT only allowed for analysis assets", &v7, 0xCu);
      }
    }
  }

  return 0;
}

- (void)_setFetchLimit:(id)a3 forTaskID:(unint64_t)a4
{
  if (a4 == 16)
  {
    [a3 setFetchLimit:1000];
  }
}

- (void)_setSortDescriptors:(id)a3 forTaskID:(unint64_t)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4 > 0x14)
  {
    if (a4 != 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  else if (((1 << a4) & 0x2EBFF) == 0)
  {
    if (((1 << a4) & 0x1C1400) != 0)
    {
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"assetDateCreated" ascending:0];
      v11 = v6;
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v11;
    }

    else
    {
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
      v12[0] = v6;
      v8 = MEMORY[0x1E695DEC8];
      v9 = v12;
    }

    v7 = [v8 arrayWithObjects:v9 count:1];
    [v5 setInternalSortDescriptors:v7];
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v10 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v5 setSortDescriptors:v7];
LABEL_7:

LABEL_8:
}

- (id)fetchOptionsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 processed:(BOOL)a7 exactVersionMatch:(BOOL)a8 error:(id *)a9
{
  v10 = a7;
  v38 = *MEMORY[0x1E69E9840];
  v14 = a5;
  if ([(PHPhotoLibrary *)self _isValidTaskID:a3])
  {
    v15 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
    [v15 setIncludeAssetSourceTypes:5];
    if (v14)
    {
      v16 = [[PHMediaProcessingAlgorithmVersionProvider alloc] initWithProvider:v14];
    }

    else
    {
      v16 = 0;
    }

    if ([(PHPhotoLibrary *)self _isOptimizedMediaProcessingTaskID:a3])
    {
      v24 = PLOptimizedInternalPredicateForMediaProcessingTaskID();
      [v15 setInternalPredicate:v24];

      [v15 setIsExclusivePredicate:1];
      v25 = [MEMORY[0x1E69BE588] entityName];
      [v15 setRelatedEntityName:v25];

      [v15 setRelatedRelationshipProperty:@"asset"];
    }

    else
    {
      [v15 setIncludeAllBurstAssets:{-[PHPhotoLibrary _shouldIncludeAllBurstAssetsForTaskID:](self, "_shouldIncludeAllBurstAssetsForTaskID:", a3)}];
      [v15 setIncludeTrashedAssets:{-[PHPhotoLibrary _shouldIncludeTrashedAssetsForTaskID:](self, "_shouldIncludeTrashedAssetsForTaskID:", a3)}];
      [v15 setIncludeHiddenAssets:{-[PHPhotoLibrary _shouldIncludeHiddenAssetsForTaskID:](self, "_shouldIncludeHiddenAssetsForTaskID:", a3)}];
      [v15 setIncludeGuestAssets:{-[PHPhotoLibrary _shouldIncludeGuestAssetsForTaskID:](self, "_shouldIncludeGuestAssetsForTaskID:", a3)}];
      [v15 setIncludeOnlyAssetsAllowedForAnalysis:{-[PHPhotoLibrary _shouldIncludeOnlyAssetsAllowedForAnalysisForTaskID:](self, "_shouldIncludeOnlyAssetsAllowedForAnalysisForTaskID:", a3)}];
      v26 = PLInternalPredicateForMediaProcessingTaskID();
      [v15 setInternalPredicate:v26];
    }

    v27 = [(PHPhotoLibrary *)self _propertySetsForTaskID:a3];
    [v15 setFetchPropertySets:v27];

    v28 = MEMORY[0x1E696AEC0];
    v29 = PHMediaProcessingDescriptionForTaskID(a3);
    v30 = v29;
    v31 = @"NO";
    if (v10)
    {
      v31 = @"YES";
    }

    v32 = [v28 stringWithFormat:@"!MediaProcessing task: %@ priority: %tu processed: %@", v29, a4, v31];
    [v15 setImportantFetchName:v32];

    [(PHPhotoLibrary *)self _setSortDescriptors:v15 forTaskID:a3];
    [(PHPhotoLibrary *)self _setFetchLimit:v15 forTaskID:a3];
  }

  else
  {
    v17 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = a3;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEFAULT, "Unknown PHMediaProcessingTaskID (%tu)", buf, 0xCu);
    }

    v18 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A278];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v20 = [v19 stringValue];
    v21 = [@"unknown taskID " stringByAppendingString:v20];
    v35 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v23 = [v18 errorWithDomain:@"PHPhotosErrorDomain" code:8002 userInfo:v22];
    if (a9)
    {
      v23 = v23;
      *a9 = v23;
    }

    v15 = 0;
  }

  return v15;
}

- (void)_updateFetchOptionsForProcessedAssets:(id)a3
{
  v3 = a3;
  [v3 setInternalSortDescriptors:0];
  [v3 setSortDescriptors:0];
}

- (id)_countOfMediaProcessingAssetsWithInternalPredicate:(id)a3 taskID:(unint64_t)a4 processed:(BOOL)a5 exactVersionMatch:(BOOL)a6 versionProvider:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a7;
  if (v13)
  {
    v14 = [[PHMediaProcessingAlgorithmVersionProvider alloc] initWithProvider:v13];
  }

  else
  {
    v14 = 0;
  }

  v23 = 0;
  v15 = [(PHPhotoLibrary *)self fetchOptionsForMediaProcessingTaskID:a4 priority:0 algorithmVersion:v14 sceneConfidenceThreshold:v9 processed:v8 exactVersionMatch:&v23 error:0.0];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [v15 internalPredicate];

  if (v17)
  {
    v18 = [v15 internalPredicate];
    [v16 addObject:v18];
  }

  [v16 addObject:v12];
  v19 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v16];
  [v15 setInternalPredicate:v19];

  [(PHPhotoLibrary *)self _updateFetchOptionsForMediaProcessingCounts:v15];
  v20 = [PHAsset fetchAssetsWithOptions:v15];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];

  return v21;
}

- (id)countOfAssetsByMediaTypeForMediaProcessingTaskID:(unint64_t)a3 processed:(BOOL)a4 algorithmVersion:(id)a5 exactVersionMatch:(BOOL)a6 error:(id *)a7
{
  v7 = a6;
  v8 = a4;
  v11 = MEMORY[0x1E695DF90];
  v12 = a5;
  v13 = objc_alloc_init(v11);
  v14 = PLStillImagesInternalPredicate();
  v15 = [(PHPhotoLibrary *)self _countOfMediaProcessingAssetsWithInternalPredicate:v14 taskID:a3 processed:v8 exactVersionMatch:v7 versionProvider:v12];
  [v13 setObject:v15 forKeyedSubscript:@"StillImage"];

  v16 = PLLivePhotosInternalPredicate();
  v17 = [(PHPhotoLibrary *)self _countOfMediaProcessingAssetsWithInternalPredicate:v16 taskID:a3 processed:v8 exactVersionMatch:v7 versionProvider:v12];
  [v13 setObject:v17 forKeyedSubscript:@"LivePhoto"];

  v18 = PLMoviesInternalPredicate();
  v19 = [(PHPhotoLibrary *)self _countOfMediaProcessingAssetsWithInternalPredicate:v18 taskID:a3 processed:v8 exactVersionMatch:v7 versionProvider:v12];

  [v13 setObject:v19 forKeyedSubscript:@"Video"];

  return v13;
}

- (void)_updateFetchOptionsForMediaProcessingCounts:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 setShouldPrefetchCount:1];
  v5[0] = @"PHAssetPropertySetIdentifier";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 setFetchPropertySets:v4];

  [v3 setInternalSortDescriptors:0];
  [v3 setSortDescriptors:0];
  [v3 setFetchLimit:0];
}

- (unint64_t)countOfProcessedAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [PHMediaProcessingAlgorithmVersionProvider descriptionForVersionProvider:v12];
    v24 = 134218754;
    v25 = a3;
    v26 = 2048;
    v27 = a4;
    v28 = 2114;
    v29 = v14;
    v30 = 2048;
    v31 = a6;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "countOfProcessedAssetsForMediaProcessingTaskID:%tu priority:%tu versions:%{public}@ confidence:%f", &v24, 0x2Au);
  }

  *&v15 = a6;
  v16 = [(PHPhotoLibrary *)self fetchOptionsForMediaProcessingTaskID:a3 priority:a4 algorithmVersion:v12 sceneConfidenceThreshold:1 processed:0 exactVersionMatch:a7 error:v15];
  [(PHPhotoLibrary *)self _updateFetchOptionsForMediaProcessingCounts:v16];
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = [PHAsset fetchAssetsWithOptions:v16];
  v18 = [v17 fetchError];

  if (v18)
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 fetchError];
      v24 = 138412290;
      v25 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Error fetching assets for media processing: %@", &v24, 0xCu);
    }

    v21 = [v17 fetchError];
    if (a7)
    {
      v21 = v21;
      *a7 = v21;
    }

    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_13:
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v22 = [v17 count];
LABEL_12:

LABEL_14:
  return v22;
}

- (unint64_t)countOfAllAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 sceneConfidenceThreshold:(float)a5 error:(id *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v21 = 134218496;
    v22 = a3;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = a5;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_INFO, "countOfAllAssetsForMediaProcessingTaskID:%tu priority:%tu confidence:%f", &v21, 0x20u);
  }

  *&v12 = a5;
  v13 = [(PHPhotoLibrary *)self fetchOptionsForMediaProcessingTaskID:a3 priority:a4 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:a6 error:v12];
  [(PHPhotoLibrary *)self _updateFetchOptionsForMediaProcessingCounts:v13];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [PHAsset fetchAssetsWithOptions:v13];
  v15 = [v14 fetchError];

  if (v15)
  {
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v14 fetchError];
      v21 = 138412290;
      v22 = v17;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Error fetching assets for media processing: %@", &v21, 0xCu);
    }

    v18 = [v14 fetchError];
    if (a6)
    {
      v18 = v18;
      *a6 = v18;
    }

    v19 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_13:
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v19 = [v14 count];
LABEL_12:

LABEL_14:
  return v19;
}

- (unint64_t)countOfUnprocessedAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [PHMediaProcessingAlgorithmVersionProvider descriptionForVersionProvider:v12];
    v24 = 134218754;
    v25 = a3;
    v26 = 2048;
    v27 = a4;
    v28 = 2114;
    v29 = v14;
    v30 = 2048;
    v31 = a6;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "countOfUnprocessedAssetsForMediaProcessingTaskID:%tu priority:%tu versions:%{public}@ confidence:%f", &v24, 0x2Au);
  }

  *&v15 = a6;
  v16 = [(PHPhotoLibrary *)self fetchOptionsForMediaProcessingTaskID:a3 priority:a4 algorithmVersion:v12 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:a7 error:v15];
  [(PHPhotoLibrary *)self _updateFetchOptionsForMediaProcessingCounts:v16];
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = [PHAsset fetchAssetsWithOptions:v16];
  v18 = [v17 fetchError];

  if (v18)
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 fetchError];
      v24 = 138412290;
      v25 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Error fetching assets for media processing: %@", &v24, 0xCu);
    }

    v21 = [v17 fetchError];
    if (a7)
    {
      v21 = v21;
      *a7 = v21;
    }

    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_13:
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v22 = [v17 count];
LABEL_12:

LABEL_14:
  return v22;
}

- (id)fetchProcessedAssetsBelowAnalysisStage:(signed __int16)a3 forTaskIDs:(id)a4 algorithmVersion:(id)a5 error:(id *)a6
{
  v7 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v9)
  {
    v11 = [[PHMediaProcessingAlgorithmVersionProvider alloc] initWithProvider:v9];
  }

  else
  {
    v11 = +[PHMediaProcessingAlgorithmVersionProvider providerWithCurrentVersions];
  }

  v12 = v11;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v29 + 1) + 8 * i) unsignedIntegerValue];
        v18 = PLProcessingPredicateForTaskID();
        if (v18)
        {
          [v10 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v15);
  }

  v19 = MEMORY[0x1E696AB28];
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"computeSyncAttributes"];
  v33[0] = v20;
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %d", @"computeSyncAttributes.localAnalysisStage", v7];
  v33[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v23 = [v19 orPredicateWithSubpredicates:v22];

  [v10 addObject:v23];
  v24 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  v25 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v10];
  [v24 setInternalPredicate:v25];

  [(PHPhotoLibrary *)self _updateFetchOptionsForProcessedAssets:v24];
  v26 = [PHAsset fetchAssetsWithOptions:v24];

  return v26;
}

- (id)fetchProcessedAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [PHMediaProcessingAlgorithmVersionProvider descriptionForVersionProvider:v12];
    v23 = 134218754;
    v24 = a3;
    v25 = 2048;
    v26 = a4;
    v27 = 2114;
    v28 = v14;
    v29 = 2048;
    v30 = a6;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "fetchProcessedAssetsForMediaProcessingTaskID:%tu priority:%tu versions:%{public}@ confidence:%f", &v23, 0x2Au);
  }

  *&v15 = a6;
  v16 = [(PHPhotoLibrary *)self fetchOptionsForMediaProcessingTaskID:a3 priority:a4 algorithmVersion:v12 sceneConfidenceThreshold:1 processed:0 exactVersionMatch:a7 error:v15];
  [(PHPhotoLibrary *)self _updateFetchOptionsForProcessedAssets:v16];
  if (v16)
  {
    v17 = [PHAsset fetchAssetsWithOptions:v16];
    v18 = [v17 fetchError];

    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 fetchError];
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Error fetching assets for media processing: %@", &v23, 0xCu);
    }

    v21 = [v17 fetchError];
    if (a7)
    {
      v21 = v21;
      *a7 = v21;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)fetchUnprocessedAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [PHMediaProcessingAlgorithmVersionProvider descriptionForVersionProvider:v12];
    v23 = 134218754;
    v24 = a3;
    v25 = 2048;
    v26 = a4;
    v27 = 2114;
    v28 = v14;
    v29 = 2048;
    v30 = a6;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "fetchUnprocessedAssetsForMediaProcessingTaskID:%tu priority:%tu versions:%{public}@ confidence:%f", &v23, 0x2Au);
  }

  *&v15 = a6;
  v16 = [(PHPhotoLibrary *)self fetchOptionsForMediaProcessingTaskID:a3 priority:a4 algorithmVersion:v12 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:a7 error:v15];
  if (v16)
  {
    v17 = [PHAsset fetchAssetsWithOptions:v16];
    v18 = [v17 fetchError];

    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 fetchError];
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Error fetching assets for media processing: %@", &v23, 0xCu);
    }

    v21 = [v17 fetchError];
    if (a7)
    {
      v21 = v21;
      *a7 = v21;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)fetchAssetsForMediaProcessingTaskID:(unint64_t)a3 priority:(unint64_t)a4 algorithmVersion:(id)a5 sceneConfidenceThreshold:(float)a6 error:(id *)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [PHMediaProcessingAlgorithmVersionProvider descriptionForVersionProvider:v12];
    v23 = 134218754;
    v24 = a3;
    v25 = 2048;
    v26 = a4;
    v27 = 2114;
    v28 = v14;
    v29 = 2048;
    v30 = a6;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "fetchAssetsForMediaProcessingTaskID:%tu priority:%tu versions:%{public}@ confidence:%f", &v23, 0x2Au);
  }

  *&v15 = a6;
  v16 = [(PHPhotoLibrary *)self fetchOptionsForMediaProcessingTaskID:a3 priority:a4 algorithmVersion:v12 sceneConfidenceThreshold:0 processed:a7 error:v15];
  if (v16)
  {
    v17 = [PHAsset fetchAssetsWithOptions:v16];
    v18 = [v17 fetchError];

    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 fetchError];
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Error fetching assets for media processing: %@", &v23, 0xCu);
    }

    v21 = [v17 fetchError];
    if (a7)
    {
      v21 = v21;
      *a7 = v21;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)forceSyndicationIngestAsyncToDate:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PHPhotoLibrary *)self assetsdClient];
  v9 = [v8 photoKitClient];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PHPhotoLibrary_MediaProcessing__forceSyndicationIngestAsyncToDate_completionHandler___block_invoke;
  v13[3] = &unk_1E75AA248;
  v14 = v6;
  v10 = v6;
  v11 = [v9 forceSyndicationIngestAsyncToDate:v7 withCompletionHandler:v13];

  return v11;
}

void __87__PHPhotoLibrary_MediaProcessing__forceSyndicationIngestAsyncToDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 isSuccess];
  v4 = *(a1 + 32);
  if (v3)
  {
    (*(v4 + 16))(v4, 0);
  }

  else
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, v5);
  }
}

- (BOOL)forceSyndicationIngestSyncToDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self assetsdClient];
  v8 = [v7 photoKitClient];

  LOBYTE(a4) = [v8 forceSyndicationIngestSyncToDate:v6 error:a4];
  return a4;
}

- (id)ingestItemWithSpotlightUniqueIdentifier:(id)a3 bundleID:(id)a4 purgeUrgency:(int64_t)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a3;
  if ([(PHPhotoLibrary *)self wellKnownPhotoLibraryIdentifier]!= 3 && (PLIsInternalTool() & 1) == 0 && (MEMORY[0x19EAF1E50]() & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+MediaProcessing.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"PLIsInternalTool() || PLIsXcTest()"}];
  }

  v13 = [(PHPhotoLibrary *)self assetsdClient];
  v14 = [v13 photoKitClient];

  v15 = [v14 ingestItemWithCoreSpotlightUniqueIdentifier:v12 bundleID:v11 purgeUrgency:a5 error:a6];

  if (v15)
  {
    v16 = [(PHObject *)PHAsset localIdentifierWithUUID:v15];
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"PhotoKit client is nil";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v17 errorWithDomain:@"PHPhotosErrorDomain" code:4302 userInfo:v18];
    v20 = v19;
    if (!v14 && a6)
    {
      v21 = v19;
      *a6 = v20;
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)processUniversalSearchJITForAssetLocalIdentifier:(id)a3 processingTypes:(unint64_t)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ([(PHPhotoLibrary *)self wellKnownPhotoLibraryIdentifier]!= 3 && (PLIsInternalTool() & 1) == 0 && (MEMORY[0x19EAF1E50]() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+MediaProcessing.m" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"PLIsInternalTool() || PLIsXcTest()"}];
  }

  v10 = [(PHPhotoLibrary *)self assetsdClient];
  v11 = [v10 photoKitClient];

  v12 = [(PHObject *)PHAsset uuidFromLocalIdentifier:v9];

  if (v11)
  {
    v13 = [v11 processUniversalSearchJITForAssetUUID:v12 processingTypes:a4 error:a5];
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"PhotoKit client is nil";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v14 errorWithDomain:@"PHPhotosErrorDomain" code:4302 userInfo:v15];
    if (a5)
    {
      v16 = v16;
      *a5 = v16;
    }

    v13 = 0;
  }

  return v13;
}

- (id)processUniversalSearchJITForCoreSpotlightUniqueIdentifier:(id)a3 bundleID:(id)a4 processingTypes:(unint64_t)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a3;
  if ([(PHPhotoLibrary *)self wellKnownPhotoLibraryIdentifier]!= 3 && (PLIsInternalTool() & 1) == 0 && (MEMORY[0x19EAF1E50]() & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+MediaProcessing.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"PLIsInternalTool() || PLIsXcTest()"}];
  }

  v13 = [(PHPhotoLibrary *)self assetsdClient];
  v14 = [v13 photoKitClient];

  v15 = [v14 processUniversalSearchJITForCoreSpotlightUniqueIdentifier:v12 bundleID:v11 processingTypes:a5 error:a6];

  if (v15)
  {
    v16 = [(PHObject *)PHAsset localIdentifierWithUUID:v15];
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"PhotoKit client is nil";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v17 errorWithDomain:@"PHPhotosErrorDomain" code:4302 userInfo:v18];
    v20 = v19;
    if (!v14 && a6)
    {
      v21 = v19;
      *a6 = v20;
    }

    v16 = 0;
  }

  return v16;
}

- (int)requestProcessingTypes:(unint64_t)a3 forAssetsWithLocalIdentifiers:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = MEMORY[0x1E69BE5A0];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(PHPhotoLibrary *)self photoLibraryURL];
  LODWORD(a3) = [v10 requestProcessingTypes:a3 forAssetsWithLocalIdentifiers:v13 fromPhotoLibraryWithURL:v14 progressHandler:v12 completionHandler:v11];

  return a3;
}

+ (id)mediaProcessingFacesSortDescriptorsForGeneratingPersonModel
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"assetForFace.dateCreated" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)mediaProcessingDeviceIndependentFacesSortDescriptors
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"assetForFace.dateCreated" ascending:1];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"assetForFace.addedDate" ascending:{1, v2}];
  v9[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"assetForFace.filename" ascending:1];
  v9[2] = v4;
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"centerX" ascending:1];
  v9[3] = v5;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"centerY" ascending:1];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

+ (BOOL)additionalCheckForProcessingNeededForAsset:(id)a3 taskID:(unint64_t)a4 priority:(unint64_t)a5
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a4 > 2)
  {
    if (a4 <= 0x14)
    {
      if (((1 << a4) & 0x2EBF8) != 0)
      {
LABEL_4:
        v9 = PLIsSavedAssetTypeAllowedForMediaAnalysis(v7);
        goto LABEL_5;
      }

      if (((1 << a4) & 0x51000) != 0)
      {
        if ([v6 mediaSubtypes] != 1)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (((1 << a4) & 0x180400) != 0)
      {
        if ([v6 mediaType] == 1)
        {
          goto LABEL_4;
        }

LABEL_15:
        v8 = 0;
        goto LABEL_6;
      }
    }

    if (a4 != 0x7FFFFFFF)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if (a4 < 2)
  {
    goto LABEL_4;
  }

  if (a4 != 2)
  {
    goto LABEL_6;
  }

  [MEMORY[0x1E69BF328] maskForAllowedForSceneAnalysis];
  [v7 savedAssetType];
  v9 = PLValidatedSavedAssetTypeApplies();
LABEL_5:
  v8 = v9;
LABEL_6:

  return v8;
}

- (id)sharingSuggestionWithRandomPick:(BOOL)a3 fallbackToRecentMoments:(BOOL)a4 needsNotification:(BOOL)a5
{
  v40 = a5;
  v5 = a4;
  v6 = a3;
  v64[1] = *MEMORY[0x1E69E9840];
  v8 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type == %d && state == %d", 1, 1];
  [v8 setPredicate:v9];

  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v64[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  [v8 setSortDescriptors:v11];

  [v8 setFetchLimit:1];
  v12 = [PHSuggestion fetchSuggestionsWithOptions:v8];
  if ([v12 count])
  {
    if (v6)
    {
      [v12 objectAtIndex:{arc4random_uniform(objc_msgSend(v12, "count"))}];
    }

    else
    {
      [v12 firstObject];
    }
    v13 = ;
    v14 = v13;
    if (!v40)
    {
      goto LABEL_36;
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __110__PHPhotoLibrary_PHDebugUtilities__sharingSuggestionWithRandomPick_fallbackToRecentMoments_needsNotification___block_invoke;
    v50[3] = &unk_1E75AB270;
    v14 = v13;
    v51 = v14;
    v49 = 0;
    v26 = [(PHPhotoLibrary *)self performChangesAndWait:v50 error:&v49];
    v15 = v49;
    if (!v26)
    {
      v27 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[PHPhotoLibrary(PHDebugUtilities) sharingSuggestionWithRandomPick:fallbackToRecentMoments:needsNotification:]";
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "%s Fail to change Suggestion notification state: %@", buf, 0x16u);
      }
    }

    v21 = v51;
    goto LABEL_35;
  }

  v14 = 0;
  if (![v12 count] && v5)
  {
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v16 setMonth:-240];
    v17 = [MEMORY[0x1E695DEE8] currentCalendar];
    v18 = [MEMORY[0x1E695DF00] date];
    v19 = [v17 dateByAddingComponents:v16 toDate:v18 options:0];

    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate >= %@", v19];
    [v15 addObject:v20];

    v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"estimatedAssetCount > 8"];
    [v15 addObject:v21];
    v22 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];

    v23 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v15];
    [v22 setPredicate:v23];

    v39 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v63 = v39;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    [v22 setSortDescriptors:v24];

    [v22 setFetchLimit:6];
    v25 = [PHAssetCollection fetchMomentsWithOptions:v22];
    if (![v25 count])
    {
      v28 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[PHPhotoLibrary(PHDebugUtilities) sharingSuggestionWithRandomPick:fallbackToRecentMoments:needsNotification:]";
        _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "%s Fail to add Suggestion (no moments found in the past 20 years)", buf, 0xCu);
      }

      v14 = 0;
      goto LABEL_34;
    }

    if (v6)
    {
      [v25 objectAtIndex:{arc4random_uniform(objc_msgSend(v25, "count"))}];
    }

    else
    {
      [v25 firstObject];
    }
    v28 = ;
    v29 = [PHAsset fetchKeyAssetsInAssetCollection:v28 options:0];
    v30 = [v29 firstObject];

    v38 = [PHAsset fetchAssetsInAssetCollection:v28 options:0];
    if (!v30)
    {
      v30 = [v38 firstObject];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = __Block_byref_object_copy__12436;
    v61 = __Block_byref_object_dispose__12437;
    v62 = 0;
    if (v30 && [v38 count])
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __110__PHPhotoLibrary_PHDebugUtilities__sharingSuggestionWithRandomPick_fallbackToRecentMoments_needsNotification___block_invoke_25;
      v43[3] = &unk_1E75A5210;
      v44 = v30;
      v45 = v38;
      v48 = v40;
      v46 = v28;
      v47 = buf;
      v42 = 0;
      v31 = [(PHPhotoLibrary *)self performChangesAndWait:v43 error:&v42];
      v41 = v42;

      if (v31)
      {
        v32 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
        v58 = *(*&buf[8] + 40);
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        v33 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v37 options:v32];
        v14 = [v33 firstObject];

        if (v14)
        {
LABEL_33:

          _Block_object_dispose(buf, 8);
LABEL_34:

          v8 = v22;
LABEL_35:

          goto LABEL_36;
        }

        v34 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = *(*&buf[8] + 40);
          *v52 = 136315650;
          v53 = "[PHPhotoLibrary(PHDebugUtilities) sharingSuggestionWithRandomPick:fallbackToRecentMoments:needsNotification:]";
          v54 = 2112;
          v55 = v35;
          v56 = 2112;
          v57 = v41;
          _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_ERROR, "%s Added, but fail to find Suggestion by localIdentifier (%@): %@", v52, 0x20u);
        }

LABEL_32:
        v14 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v41 = 0;
    }

    v32 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v52 = 136315394;
      v53 = "[PHPhotoLibrary(PHDebugUtilities) sharingSuggestionWithRandomPick:fallbackToRecentMoments:needsNotification:]";
      v54 = 2112;
      v55 = v41;
      _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "%s Fail to add Suggestion: %@", v52, 0x16u);
    }

    goto LABEL_32;
  }

LABEL_36:

  return v14;
}

void __110__PHPhotoLibrary_PHDebugUtilities__sharingSuggestionWithRandomPick_fallbackToRecentMoments_needsNotification___block_invoke(uint64_t a1)
{
  v1 = [PHSuggestionChangeRequest changeRequestForSuggestion:*(a1 + 32)];
  [v1 setNotificationState:1];
}

void __110__PHPhotoLibrary_PHDebugUtilities__sharingSuggestionWithRandomPick_fallbackToRecentMoments_needsNotification___block_invoke_25(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [PHSuggestionChangeRequest creationRequestForSuggestionWithType:1 subtype:101 keyAssets:v2 representativeAssets:v3 creationDate:v4 relevantUntilDate:0 version:1];

  v6 = [*(a1 + 48) localizedTitle];
  [v5 setTitle:v6];

  v7 = [*(a1 + 48) localizedSubtitle];
  [v5 setSubtitle:v7];

  if (*(a1 + 64) == 1)
  {
    [v5 setNotificationState:1];
  }

  [v5 markActive];
  v8 = [v5 placeholderForCreatedSuggestion];
  v9 = [v8 localIdentifier];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (BOOL)hasSyncProgressReturningImportOperations:(int *)a3
{
  v4 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PHPhotoLibrary_PHAdoptionUtilities__hasSyncProgressReturningImportOperations___block_invoke;
  v7[3] = &unk_1E75A9F38;
  v5 = v4;
  v9 = &v11;
  v10 = a3;
  v8 = v5;
  [v5 performBlockAndWait:v7];
  LOBYTE(a3) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return a3;
}

void __80__PHPhotoLibrary_PHAdoptionUtilities__hasSyncProgressReturningImportOperations___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) syncProgressAlbumsIgnoreiTunes:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    v7 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 managedObjectContext];
        [v10 refreshObject:v9 mergeChanges:1];

        v11 = [v9 pendingItemsCount];
        if (v11)
        {
          v7 |= [v9 pendingItemsType];
        }

        v5 += v11;
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
    v12 = v5 != 0;
  }

  else
  {
    v12 = 0;
    v7 = 1;
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    *v13 = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) = v12;
}

- (id)getLibrarySizesFromDB:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = [(PHPhotoLibrary *)self photoLibrary];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 librarySizesFromDB:v5];
  }

  else
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "getLibrarySizesFromDB: unable to create PLPhotoLibrary", v14, 2u);
    }

    v10 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"unable to create PLPhotoLibrary";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"PHPhotosErrorDomain" code:4302 userInfo:v11];
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }

    v8 = 0;
  }

  return v8;
}

- (id)estimatedLibrarySizeForOsMigration
{
  v29 = *MEMORY[0x1E69E9840];
  [(PHPhotoLibrary *)self _assetBytesForOsMigration];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v2 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"asset.kind"];
        v12 = [v11 unsignedIntegerValue];

        v13 = [v10 objectForKeyedSubscript:@"totalResourceBytes"];
        v14 = [v13 unsignedIntegerValue];

        if (v12)
        {
          ++v5;
        }

        else
        {
          v4 += v14;
        }

        if (v12)
        {
          v6 += v14;
        }

        else
        {
          ++v7;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v26[0] = @"PHPhotoLibraryImageCountKey";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v27[0] = v15;
  v26[1] = @"PHPhotoLibraryImageBytesKey";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v27[1] = v16;
  v26[2] = @"PHPhotoLibraryVideoCountKey";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v27[2] = v17;
  v26[3] = @"PHPhotoLibraryVideoBytesKey";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  v27[3] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v19;
}

- (id)_assetBytesForOsMigration
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__21754;
  v14 = __Block_byref_object_dispose__21755;
  v15 = 0;
  v2 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PHPhotoLibrary__assetBytesForOsMigration__block_invoke;
  v6[3] = &unk_1E75A6C08;
  v9 = 0;
  v8 = &v10;
  v3 = v2;
  v7 = v3;
  [v3 performBlockAndWait:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void __43__PHPhotoLibrary__assetBytesForOsMigration__block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE4D0] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v17[0] = @"asset";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v4 setPropertiesToGroupBy:v5];

  [v4 setResultType:2];
  v6 = [PHAsset predicateForResourcesForOsMigrationIncludeLocalOnly:1 iCPLEnabled:*(a1 + 48)];
  [v4 setPredicate:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v7 setName:@"totalResourceBytes"];
  v8 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"@sum.dataLength"];
  [v7 setExpression:v8];

  [v7 setExpressionResultType:300];
  v16[0] = @"asset.kind";
  v16[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v4 setPropertiesToFetch:v9];

  v10 = [*(a1 + 32) managedObjectContext];
  v15 = 0;
  v11 = [v10 executeFetchRequest:v4 error:&v15];
  v12 = v15;
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;
}

- (id)stateCaptureDictionary
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E69BF220] descriptionWithFileURL:self->_photoLibraryURL];
    v12 = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "STATEDUMP: State information for PHPhotoLibrary-%p at path %@", &v12, 0x16u);
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_wellKnownPhotoLibraryIdentifier];
  [v5 setObject:v6 forKeyedSubscript:@"wellKnownPhotoLibraryIdentifier"];

  v7 = [MEMORY[0x1E69BF238] redactedDescriptionForFileURL:self->_photoLibraryURL];
  [v5 setObject:v7 forKeyedSubscript:@"photoLibraryURL"];

  v8 = [(PHChangeHandlingDebugger *)self->_changeHandlingDebugger stateCaptureDictionary];
  [v5 setObject:v8 forKeyedSubscript:@"changeHandling"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHPhotoLibraryChangeObserverRegistrar countOfRegisteredFetchResults](self->_changeObserverRegistrar, "countOfRegisteredFetchResults")}];
  [v5 setObject:v9 forKeyedSubscript:@"registeredFetchResults"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{+[PHPhotoLibrary useBindingClient](PHPhotoLibrary, "useBindingClient")}];
  [v5 setObject:v10 forKeyedSubscript:@"useBindingClient"];

  return v5;
}

- (void)legacySaveScreenshotToCameraRoll:(id)a3 completionTarget:(id)a4 completionSelector:(SEL)a5 contextInfo:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__PHPhotoLibrary_legacySaveScreenshotToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke;
  v18[3] = &unk_1E75AB270;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__PHPhotoLibrary_legacySaveScreenshotToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke_2;
  v14[3] = &unk_1E75A6BE0;
  v14[4] = self;
  v15 = v11;
  v16 = a5;
  v17 = a6;
  v12 = v11;
  v13 = v10;
  [(PHPhotoLibrary *)self performChanges:v18 completionHandler:v14];
}

- (void)legacySaveImageToCameraRoll:(id)a3 completionTarget:(id)a4 completionSelector:(SEL)a5 contextInfo:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PHPhotoLibrary_legacySaveImageToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke;
  v18[3] = &unk_1E75AB270;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__PHPhotoLibrary_legacySaveImageToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke_2;
  v14[3] = &unk_1E75A6BE0;
  v14[4] = self;
  v15 = v11;
  v16 = a5;
  v17 = a6;
  v12 = v11;
  v13 = v10;
  [(PHPhotoLibrary *)self performChanges:v18 completionHandler:v14];
}

- (void)legacySaveVideoToCameraRoll:(id)a3 completionTarget:(id)a4 completionSelector:(SEL)a5 contextInfo:(void *)a6
{
  v11 = a3;
  v12 = a4;
  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:3676 description:{@"Invalid parameter not satisfying: %@", @"videoPath != nil"}];
  }

  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __94__PHPhotoLibrary_legacySaveVideoToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke;
  v23[3] = &unk_1E75AB270;
  v24 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PHPhotoLibrary_legacySaveVideoToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke_2;
  v18[3] = &unk_1E75A6BE0;
  v19 = v11;
  v20 = v12;
  v21 = a5;
  v22 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v13;
  [(PHPhotoLibrary *)self performChanges:v23 completionHandler:v18];
}

void __94__PHPhotoLibrary_legacySaveVideoToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BE290] createWriteVideoCompletionBlockWithVideoPath:*(a1 + 32) target:*(a1 + 40) selector:*(a1 + 48) contextInfo:*(a1 + 56)];
  v6 = v5;
  if (v5)
  {
    v9 = v5;
    v7 = *(a1 + 32);
    v8 = v4;
    pl_dispatch_async();
  }
}

- (void)legacySaveImageDataToCameraRoll:(id)a3 completionTarget:(id)a4 completionSelector:(SEL)a5 contextInfo:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__PHPhotoLibrary_legacySaveImageDataToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke;
  v18[3] = &unk_1E75AB270;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__PHPhotoLibrary_legacySaveImageDataToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke_2;
  v14[3] = &unk_1E75A6BE0;
  v14[4] = self;
  v15 = v11;
  v16 = a5;
  v17 = a6;
  v12 = v11;
  v13 = v10;
  [(PHPhotoLibrary *)self performChanges:v18 completionHandler:v14];
}

void __98__PHPhotoLibrary_legacySaveImageDataToCameraRoll_completionTarget_completionSelector_contextInfo___block_invoke(uint64_t a1)
{
  v2 = +[PHAssetCreationRequest creationRequestForAsset];
  [v2 addResourceWithType:1 data:*(a1 + 32) options:0];
}

- (void)_callLegacyCompletionTarget:(id)a3 completionSelector:(SEL)a4 contextInfo:(void *)a5 withSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a7;
  v11 = [MEMORY[0x1E69BE290] createWriteImageCompletionBlockWithImage:0 target:a3 selector:a4 contextInfo:a5];
  v12 = v11;
  if (v11)
  {
    v14 = v11;
    v13 = v10;
    pl_dispatch_async();
  }
}

- (void)localResourceBytesUsedForMinVideoSize:(unint64_t)a3 completion:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:3638 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v8 = [(PHPhotoLibrary *)self photoLibrary];
  v9 = [v8 isCloudPhotoLibraryEnabled];

  if (v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A278];
    v19 = @"SPI not available: [PHPhotoLibrary localResourceBytesUsedForMinVideoSize:completion:] cannot be called if iCPL is ENABLED";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3126 userInfo:v11];
    (*(v7 + 2))(v7, 0, 0, v12);
  }

  else
  {
    v13 = MEMORY[0x1E696AB28];
    v14 = [(PHPhotoLibrary *)self _predicateForSettingsStorageSuggestions];
    v20[0] = v14;
    v15 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForVideosAlbumExclusions"), 0}];
    v20[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v11 = [v13 andPredicateWithSubpredicates:v16];

    [(PHPhotoLibrary *)self _resourceBytesUsedForPredicate:v11 minVideoSize:a3 completion:v7];
  }
}

- (BOOL)localResourceBytesUsed:(id *)a3 minVideoSize:(unint64_t)a4 error:(id *)a5
{
  if (a3)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__21754;
    v35 = __Block_byref_object_dispose__21755;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__21754;
    v29 = __Block_byref_object_dispose__21755;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v9 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__PHPhotoLibrary_localResourceBytesUsed_minVideoSize_error___block_invoke;
    v16[3] = &unk_1E75A6BB8;
    v18 = &v31;
    v19 = &v25;
    v20 = &v21;
    v10 = v9;
    v17 = v10;
    [(PHPhotoLibrary *)self localResourceBytesUsedForMinVideoSize:a4 completion:v16];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    *a3 = v32[5];
    v11 = v26[5];
    v12 = v11;
    if (v11 && a5)
    {
      v12 = v12;
      *a5 = v12;
    }

    v13 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:1 userInfo:MEMORY[0x1E695E0F8]];
    if (a5)
    {
      v14 = v14;
      *a5 = v14;
    }

    v13 = 0;
  }

  return v13 & 1;
}

void __60__PHPhotoLibrary_localResourceBytesUsed_minVideoSize_error___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)cloudQuotaResourceBytesUsedForMinVideoSize:(unint64_t)a3 completion:(id)a4
{
  v19[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PHPhotoLibrary *)self photoLibrary];
  v8 = [v7 isCloudPhotoLibraryEnabled];

  if (v8)
  {
    v9 = MEMORY[0x1E696AB28];
    v10 = [(PHPhotoLibrary *)self _predicateForSettingsStorageSuggestions];
    v19[0] = v10;
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"master.cloudLocalState", 3];
    v19[1] = v11;
    v12 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCplQuotaExclusions"), 0}];
    v19[2] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v14 = [v9 andPredicateWithSubpredicates:v13];

    [(PHPhotoLibrary *)self _resourceBytesUsedForPredicate:v14 minVideoSize:a3 completion:v6];
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v18 = @"SPI not available: [PHPhotoLibrary cloudQuotaResourceBytesUsedForMinVideoSize:completion:] cannot be called if iCPL is DISABLED";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3126 userInfo:v14];
    (*(v6 + 2))(v6, 0, 0, v16);

    v6 = v16;
  }
}

- (BOOL)cloudQuotaResourceBytesUsed:(id *)a3 minVideoSize:(unint64_t)a4 error:(id *)a5
{
  if (a3)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__21754;
    v35 = __Block_byref_object_dispose__21755;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__21754;
    v29 = __Block_byref_object_dispose__21755;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v9 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__PHPhotoLibrary_cloudQuotaResourceBytesUsed_minVideoSize_error___block_invoke;
    v16[3] = &unk_1E75A6BB8;
    v18 = &v31;
    v19 = &v25;
    v20 = &v21;
    v10 = v9;
    v17 = v10;
    [(PHPhotoLibrary *)self cloudQuotaResourceBytesUsedForMinVideoSize:a4 completion:v16];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    *a3 = v32[5];
    v11 = v26[5];
    v12 = v11;
    if (v11 && a5)
    {
      v12 = v12;
      *a5 = v12;
    }

    v13 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:1 userInfo:MEMORY[0x1E695E0F8]];
    if (a5)
    {
      v14 = v14;
      *a5 = v14;
    }

    v13 = 0;
  }

  return v13 & 1;
}

void __65__PHPhotoLibrary_cloudQuotaResourceBytesUsed_minVideoSize_error___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_predicateForSettingsStorageSuggestions
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"trashedState", 0];
  v20[0] = v17;
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == NO", @"hidden"];
  v20[1] = v16;
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex:(%K) == %d) AND (%K != %d)", @"playbackStyle", 4, @"kind", 2];
  v19[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kindSubtype", 10];
  v19[1] = v5;
  v6 = MEMORY[0x1E696AB28];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  v18[0] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 2];
  v18[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];
  v19[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v12 = [v3 orPredicateWithSubpredicates:v11];
  v20[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v14 = [v2 andPredicateWithSubpredicates:v13];

  return v14;
}

- (void)_resourceBytesUsedForPredicate:(id)a3 minVideoSize:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v9)
    v16 = {;
    objc_exception_throw(v16);
  }

  v10 = v9;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__21754;
  v31[4] = __Block_byref_object_dispose__21755;
  v32 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__21754;
  v29[4] = __Block_byref_object_dispose__21755;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__21754;
  v27[4] = __Block_byref_object_dispose__21755;
  v11 = v8;
  v28 = v11;
  v12 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = 31457280;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73__PHPhotoLibrary__resourceBytesUsedForPredicate_minVideoSize_completion___block_invoke;
  v21[3] = &unk_1E75A6B68;
  v14 = v12;
  v22 = v14;
  v23 = v27;
  v25 = v31;
  v26 = v13;
  v24 = v29;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__PHPhotoLibrary__resourceBytesUsedForPredicate_minVideoSize_completion___block_invoke_2;
  v17[3] = &unk_1E75A6B90;
  v15 = v10;
  v18 = v15;
  v19 = v29;
  v20 = v31;
  [v14 performBlock:v21 completionHandler:v17 withPriority:1];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
}

void __73__PHPhotoLibrary__resourceBytesUsedForPredicate_minVideoSize_completion___block_invoke(uint64_t a1)
{
  v52[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE4E8];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v2 activeLibraryScopeInManagedObjectContext:v3];

  if (v4 && [v4 status] == 3)
  {
    v5 = MEMORY[0x1E696AB28];
    v52[0] = *(*(*(a1 + 40) + 8) + 40);
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", 0];
    v52[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v8 = [v5 andPredicateWithSubpredicates:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v40 = v4;
  v11 = MEMORY[0x1E695D5E0];
  v12 = [MEMORY[0x1E69BE540] entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  [v13 setPredicate:*(*(*(a1 + 40) + 8) + 40)];
  v51[0] = @"kind";
  v51[1] = @"kindSubtype";
  v51[2] = @"duplicateAssetVisibilityState";
  v51[3] = @"additionalAttributes.originalFilesize";
  v51[4] = @"duplicatePerceptualMatchingAlbum";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:5];
  [v13 setPropertiesToFetch:v14];

  [v13 setResultType:2];
  v15 = [*(a1 + 32) managedObjectContext];
  v41 = a1;
  v16 = *(*(a1 + 48) + 8);
  obj = *(v16 + 40);
  v39 = v13;
  v17 = [v15 executeFetchRequest:v13 error:&obj];
  objc_storeStrong((v16 + 40), obj);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = v17;
  v18 = [v43 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v42 = 0;
    v44 = 0;
    v21 = *v46;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v43);
        }

        v23 = *(*(&v45 + 1) + 8 * i);
        v24 = [v23 objectForKeyedSubscript:@"additionalAttributes.originalFilesize"];
        v25 = [v24 unsignedIntegerValue];

        v26 = [v23 objectForKeyedSubscript:@"duplicateAssetVisibilityState"];
        v27 = [v26 unsignedIntegerValue];

        v28 = [v23 objectForKeyedSubscript:@"kind"];
        v29 = [v28 unsignedIntegerValue];

        v30 = [v23 objectForKeyedSubscript:@"kindSubtype"];
        v31 = [v30 unsignedIntegerValue];

        v32 = [v23 objectForKeyedSubscript:@"duplicatePerceptualMatchingAlbum"];
        if (v27 > 1)
        {
          if (v27 != 2)
          {
            if (v27 != 100)
            {
              goto LABEL_28;
            }

LABEL_15:
            if (v32)
            {
              v33 = v25;
            }

            else
            {
              v33 = 0;
            }

            v44 += v33;
            goto LABEL_28;
          }
        }

        else if (v27)
        {
          if (v27 != 1)
          {
            goto LABEL_28;
          }

          goto LABEL_15;
        }

        if (v29 == 1)
        {
          if (v25 >= *(v41 + 64))
          {
            v34 = v25;
          }

          else
          {
            v34 = 0;
          }

          v42 += v34;
        }

        if (v31 == 10)
        {
          v35 = v25;
        }

        else
        {
          v35 = 0;
        }

        v20 += v35;
LABEL_28:
      }

      v19 = [v43 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (!v19)
      {
        goto LABEL_32;
      }
    }
  }

  v20 = 0;
  v42 = 0;
  v44 = 0;
LABEL_32:

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v42];
  [*(*(*(v41 + 56) + 8) + 40) setObject:v36 forKeyedSubscript:@"PHCloudQuotaBytesUsedMediaTypeVideo"];

  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v20];
  [*(*(*(v41 + 56) + 8) + 40) setObject:v37 forKeyedSubscript:@"PHCloudQuotaBytesUsedMediaTypeScreenshot"];

  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v44];
  [*(*(*(v41 + 56) + 8) + 40) setObject:v38 forKeyedSubscript:@"PHCloudQuotaBytesUsedMediaTypeDuplicate"];
}

- (id)limitedLibraryPredicateForApplication:(id)a3 fetchType:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696AE18];
  v8 = a3;
  v9 = [v7 predicateWithValue:0];
  v10 = [MEMORY[0x1E69BE510] fetchFilterIdentifierForApplicationIdentifier:v8];

  v11 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x1E69BE510];
    v14 = [v11 managedObjectContext];
    v15 = [v13 fetchLimitedLibraryFetchFilterWithApplicationIdentifier:v10 inManagedObjectContext:v14];

    if (v15)
    {
      v16 = [(objc_class *)[PHPhotoLibrary classForFetchType:?]];
      v17 = [v15 predicateForEntityName:v16];
      v18 = v17;
      if (v17)
      {
        v19 = v17;

        v9 = v19;
      }
    }
  }

  return v9;
}

- (void)resetLimitedLibraryAccessForApplication:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v6;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "Resetting limited library access for %{public}@ to %@", buf, 0x16u);
  }

  v9 = [(PHPhotoLibrary *)self assetsdClient];
  v10 = [v9 libraryInternalClient];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PHPhotoLibrary_resetLimitedLibraryAccessForApplication_completionHandler___block_invoke;
  v12[3] = &unk_1E75AA5B8;
  v13 = v7;
  v11 = v7;
  [v10 resetLimitedLibraryAccessForApplication:v6 completionHandler:v12];
}

uint64_t __76__PHPhotoLibrary_resetLimitedLibraryAccessForApplication_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
      v5 = *(a1 + 32);
    }

    (*(v5 + 16))(v5, a2, v6);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)countOfReferencedMediaWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  [v5 countOfReferencedMediaWithCompletionHandler:v4];
}

- (BOOL)isReadyForAnalysisCPLInitialDownloadCompleted
{
  v2 = [(PLLazyObject *)self->_lazyIsReadyForAnalysisCPLInitialDownloadCompleted objectValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isReadyForAnalysis_FOR_UI_USE_ONLY_NON_BLOCKING
{
  v3 = [(PLLazyObject *)self->_lazyIsReadyForAnalysisQuickCheck currentObjectValueWithoutForcingEvaluation];

  if (v3)
  {

    return [(PHPhotoLibrary *)self isReadyForAnalysis_FOR_UI_USE_ONLY];
  }

  else
  {
    v5 = [(PHPhotoLibrary *)self photoLibrary];
    v6 = [v5 globalValues];
    v7 = [v6 libraryReadyForAnalysisDate];
    v8 = v7 != 0;

    objc_initWeak(&location, self);
    readyForAnalysisQueue = self->_readyForAnalysisQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PHPhotoLibrary_isReadyForAnalysis_FOR_UI_USE_ONLY_NON_BLOCKING__block_invoke;
    v10[3] = &unk_1E75A9A90;
    objc_copyWeak(&v11, &location);
    dispatch_async(readyForAnalysisQueue, v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    return v8;
  }
}

void __65__PHPhotoLibrary_isReadyForAnalysis_FOR_UI_USE_ONLY_NON_BLOCKING__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained isReadyForAnalysis_FOR_UI_USE_ONLY];
}

- (BOOL)isReadyForAnalysis_FOR_UI_USE_ONLY
{
  v2 = [(PLLazyObject *)self->_lazyIsReadyForAnalysisQuickCheck objectValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isReadyForAnalysis
{
  v3 = [(PLLazyObject *)self->_lazyIsReadyForAnalysis objectValue];
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 0;
  }

  if (![(PHPhotoLibrary *)self photoAnalysisClientAllowed])
  {
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.photoanalysisd"];

    if (v7)
    {
      v8 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "Reporting NO for isReadyForAnalysis to photoanalysisd because NoPhotoAnalysis flag is set", v10, 2u);
      }

      return 0;
    }
  }

  return 1;
}

- (PHPersistentChangeFetchResult)fetchPersistentChangesSinceToken:(PHPersistentChangeToken *)token error:(NSError *)error
{
  v6 = token;
  v7 = objc_alloc_init(PHPersistentChangeFetchOptions);
  [(PHPersistentChangeFetchOptions *)v7 setMaximumChangeThreshold:100000];
  [(PHPersistentChangeFetchOptions *)v7 setExcludesPrivateChanges:1];
  v14 = 0;
  v8 = [(PHPhotoLibrary *)self _fetchPersistentChangesSinceToken:v6 options:v7 error:&v14];

  v9 = v14;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = error == 0;
  }

  if (!v11)
  {
    v12 = v9;
    *error = v10;
  }

  return v8;
}

- (PHPersistentChangeToken)currentToken
{
  v2 = [(PHPhotoLibrary *)self changeHandlingPhotoLibrary];
  v3 = [v2 managedObjectContext];

  v4 = [PHPersistentChangeToken currentTokenForContext:v3];

  return v4;
}

- (id)fetchPersistentChangesWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PHPersistentChangeFetchOptions);
  -[PHPersistentChangeFetchOptions setMaximumChangeThreshold:](v7, "setMaximumChangeThreshold:", [v6 maximumChangeThreshold]);
  [(PHPersistentChangeFetchOptions *)v7 setExcludesPrivateChanges:0];
  v8 = [v6 token];

  v9 = [(PHPhotoLibrary *)self _fetchPersistentChangesSinceToken:v8 options:v7 error:a4];

  return v9;
}

- (void)_processPendingChangesWithDebugEvent:(id)a3
{
  v121 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__21754;
  v96 = __Block_byref_object_dispose__21755;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__21754;
  v90 = __Block_byref_object_dispose__21755;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__21754;
  v84 = __Block_byref_object_dispose__21755;
  v85 = 0;
  changeObserverRegistrar = self->_changeObserverRegistrar;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __55__PHPhotoLibrary__processPendingChangesWithDebugEvent___block_invoke;
  v79[3] = &unk_1E75A6B40;
  v79[4] = &v92;
  v79[5] = &v86;
  v79[6] = &v80;
  [(PHPhotoLibraryChangeObserverRegistrar *)changeObserverRegistrar getObserversWithBlock:v79];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__21754;
  v77 = __Block_byref_object_dispose__21755;
  v78 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PHPhotoLibrary__processPendingChangesWithDebugEvent___block_invoke_2;
  block[3] = &unk_1E75AA678;
  block[4] = self;
  block[5] = &v73;
  block[6] = &v69;
  dispatch_sync(isolationQueue, block);
  [v4 setInternalObserversCount:{objc_msgSend(v93[5], "count")}];
  [v4 setExternalObserversCount:{objc_msgSend(v87[5], "count")}];
  v54 = self;
  v7 = [v74[5] objectForKeyedSubscript:*MEMORY[0x1E695D320]];
  v8 = [v7 count];

  v53 = *MEMORY[0x1E695D4C8];
  v9 = [v74[5] objectForKeyedSubscript:?];
  v10 = [v9 count];

  v11 = [v74[5] objectForKeyedSubscript:*MEMORY[0x1E695D2F0]];
  v12 = [v11 count];

  v55 = [v81[5] count];
  v13 = [v74[5] objectForKeyedSubscript:*MEMORY[0x1E69BE9A0]];
  v14 = [v13 unsignedLongLongValue];

  v15 = [v74[5] objectForKeyedSubscript:*MEMORY[0x1E69BF108]];
  v16 = [v15 integerValue];

  v17 = [v74[5] objectForKeyedSubscript:*MEMORY[0x1E69BE910]];
  v18 = [v17 integerValue];

  [v4 setInsertedCount:v8];
  [v4 setUpdatedCount:v10];
  [v4 setDeletedCount:v12];
  [v4 setUnknownMergeEvent:*(v70 + 24)];
  [v4 setFetchResultCount:v55];
  [v4 setLastTransactionNumber:v14];
  [v4 setTransactionCount:v16];
  [v4 setChangeCount:v18];
  v19 = PLChangeHandlingGetLog();
  spid = os_signpost_id_generate(v19);

  v20 = v19;
  v21 = v20;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    log = v21;
    qos_class_self();
    v22 = PLShortStringFromQoSClass();
    v23 = [v93[5] count];
    v24 = [v87[5] count];
    if (*(v70 + 24))
    {
      v25 = 89;
    }

    else
    {
      v25 = 78;
    }

    *buf = 134220546;
    v100 = v54;
    v101 = 2112;
    v102 = v22;
    v103 = 2048;
    v104 = v23;
    v105 = 2048;
    v106 = v24;
    v107 = 2048;
    v108 = v8;
    v109 = 2048;
    v110 = v10;
    v111 = 2048;
    v112 = v12;
    v113 = 1024;
    v114 = v25;
    v115 = 2048;
    v116 = v14;
    v117 = 2048;
    v118 = v16;
    v119 = 2048;
    v120 = v18;
    v21 = log;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ProcessPendingChanges", "%p: qos: %@, int: %tu, ext: %tu, ins: %tu, upd: %tu, del: %tu, unk: %c, tx#: %llu, tx cnt: %zd, ch cnt: %zd", buf, 0x6Cu);
  }

  v26 = v21;
  v27 = [v93[5] count];
  if (v27 + [v87[5] count] && (objc_msgSend(v74[5], "count") || *(v70 + 24) == 1))
  {
    v30 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v30 BOOLForKey:@"com.apple.PHPhotoLibrary.simulateEveryObjectChanged"])
    {
      v31 = *(v70 + 24);

      if (v31)
      {
LABEL_26:
        v43 = [PHChange alloc];
        v29 = [(PHChange *)v43 initWithChangedIdentifiers:v74[5] unknownMergeEvent:*(v70 + 24) library:v54];
        v44 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v45 = [v93[5] count];
          v46 = [v87[5] count];
          v47 = [v81[5] count];
          v48 = [v29 _pl_prettyDescription];
          *buf = 134218498;
          v100 = (v46 + v45);
          v101 = 2048;
          v102 = v47;
          v103 = 2112;
          v104 = v48;
          _os_log_impl(&dword_19C86F000, v44, OS_LOG_TYPE_DEBUG, "Handle merge notification observer count: %lu, result count: %lu, change: %@", buf, 0x20u);
        }

        v49 = [(PHPhotoLibrary *)v54 changeHandlingPhotoLibrary];
        v50 = [v49 managedObjectContext];
        v51 = [MEMORY[0x1E695DFD8] setWithArray:v81[5]];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3254779904;
        v57[2] = __55__PHPhotoLibrary__processPendingChangesWithDebugEvent___block_invoke_699;
        v57[3] = &unk_1F0FC35B0;
        v58 = v4;
        v59 = &v92;
        v60 = &v86;
        v61 = v26;
        v62 = spid;
        v63 = v55;
        [v29 preloadChangeDetailsForFetchResults:v51 inManagedObjectContext:v50 debugEvent:v58 handler:v57];

        goto LABEL_29;
      }

      v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v32 = v81[5];
      v33 = [v32 countByEnumeratingWithState:&v64 objects:v98 count:16];
      if (v33)
      {
        v34 = *v65;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v65 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v64 + 1) + 8 * i);
            v37 = [v36 fetchedObjectIDsSet];

            if (v37)
            {
              v38 = [v36 fetchedObjectIDsSet];
              [v30 unionSet:v38];
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v64 objects:v98 count:16];
        }

        while (v33);
      }

      v39 = [v74[5] mutableCopy];
      v40 = [v30 copy];
      [v39 setObject:v40 forKeyedSubscript:v53];

      v41 = [v39 copy];
      v42 = v74[5];
      v74[5] = v41;
    }

    goto LABEL_26;
  }

  v28 = v26;
  v29 = v28;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v29, OS_SIGNPOST_INTERVAL_END, spid, "ProcessPendingChanges", "No changes", buf, 2u);
  }

LABEL_29:

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);
}

void __55__PHPhotoLibrary__processPendingChangesWithDebugEvent___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

uint64_t __55__PHPhotoLibrary__processPendingChangesWithDebugEvent___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 360) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1[4] + 360) removeAllObjects];
  *(*(a1[6] + 8) + 24) = *(a1[4] + 312);
  *(a1[4] + 312) = 0;
  return result;
}

void __55__PHPhotoLibrary__processPendingChangesWithDebugEvent___block_invoke_699(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [*(a1 + 32) setDistributeInternalTimestamp:?];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [v9 photoLibraryDidChange:v3];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v6);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [*(a1 + 32) setDistributeExternalTimestamp:?];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = *(*(*(a1 + 48) + 8) + 40);
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        [v16 photoLibraryDidChange:{v3, v22}];
        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v13);
  }

  v18 = *(a1 + 56);
  v19 = v18;
  v20 = *(a1 + 64);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v21 = *(a1 + 72);
    *buf = 134217984;
    v31 = v21;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v19, OS_SIGNPOST_INTERVAL_END, v20, "ProcessPendingChanges", "fr cnt: %tu", buf, 0xCu);
  }
}

- (void)_publishCloudStatusUpdate:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__21754;
  v33 = __Block_byref_object_dispose__21755;
  v34 = 0;
  cloudStatusObserverRegistrar = self->_cloudStatusObserverRegistrar;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __44__PHPhotoLibrary__publishCloudStatusUpdate___block_invoke;
  v28[3] = &unk_1E75A6B18;
  v28[4] = &v29;
  [(PHPhotoLibraryCloudStatusObserverRegistrar *)cloudStatusObserverRegistrar getObserversWithBlock:v28];
  v6 = PLChangeHandlingGetLog();
  v7 = os_signpost_id_generate(v6);

  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    qos_class_self();
    v10 = PLShortStringFromQoSClass();
    v11 = [v30[5] count];
    v12 = [v4 isCloudSyncEnabled];
    *buf = 134218754;
    v37 = self;
    v38 = 2112;
    v39 = v10;
    v40 = 2048;
    v41 = v11;
    v42 = 1024;
    v43 = v12;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PublishCloudStatusChange", "%p: qos: %@, obs: %tu, sync: %d", buf, 0x26u);
  }

  if ([v30[5] count])
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v30[5] count];
      v15 = [v4 _pl_prettyDescription];
      *buf = 134218242;
      v37 = v14;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "Publish cloud status change observer count: %lu, change: %@", buf, 0x16u);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v30[5];
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          [v20 photoLibraryDidUpdateCloudStatus:{v4, v24}];
          objc_autoreleasePoolPop(v21);
        }

        v17 = [v16 countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v17);
    }
  }

  v22 = v9;
  v23 = v22;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v23, OS_SIGNPOST_INTERVAL_END, v7, "PublishCloudStatusChange", byte_19CB567AE, buf, 2u);
  }

  _Block_object_dispose(&v29, 8);
}

- (void)_publishChangeWithDebugEvent:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [PHPhotoLibrary authorizationStatusForAccessLevel:2]- 3;
  [v6 setIsAuthorizedForChanges:v8 < 2];
  if (v7 && v8 <= 1)
  {
    changeObserverRegistrar = self->_changeObserverRegistrar;
    v10 = +[PHChange handlerQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PHPhotoLibrary__publishChangeWithDebugEvent_block___block_invoke;
    v11[3] = &unk_1E75AA820;
    v13 = v7;
    v12 = v6;
    [(PHPhotoLibraryChangeObserverRegistrar *)changeObserverRegistrar publishChangesToObserversOnQueue:v10 withDebugEvent:v12 block:v11];
  }

  else
  {
    [v6 end];
  }
}

uint64_t __53__PHPhotoLibrary__publishChangeWithDebugEvent_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 end];
}

- (void)handleMergeNotification:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v18 = a3;
  val = self;
  v17 = [(PHChangeHandlingDebugger *)self->_changeHandlingDebugger beginProcessPendingChanges];
  [(PHPhotoLibrary *)self _notifyPersistentChangeObservers];
  v23 = [v18 userInfo];
  v4 = [v23 objectForKeyedSubscript:*MEMORY[0x1E69BF118]];
  v5 = [v4 BOOLValue];

  if (!v5)
  {
    v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [MEMORY[0x1E69BE578] changeNotificationObjectIDMutationKeys];
    v6 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v6)
    {
      v7 = 0;
      v21 = *v36;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v10 = [MEMORY[0x1E695DF70] array];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v11 = [v23 objectForKeyedSubscript:v9];
          v12 = [v11 countByEnumeratingWithState:&v31 objects:v44 count:16];
          if (v12)
          {
            v13 = *v32;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v32 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = [PHPhotoLibrary uniquedOID:*(*(&v31 + 1) + 8 * j)];
                [v10 addObject:v15];
              }

              v12 = [v11 countByEnumeratingWithState:&v31 objects:v44 count:16];
            }

            while (v12);
            v7 = 1;
          }

          [v22 setObject:v10 forKey:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v6);

      if ((v7 & 1) == 0)
      {
        goto LABEL_21;
      }

      location[1] = MEMORY[0x1E69E9820];
      location[2] = 3221225472;
      location[3] = __42__PHPhotoLibrary_handleMergeNotification___block_invoke_2;
      location[4] = &unk_1E75AB248;
      v28 = v22;
      v29 = val;
      v30 = v23;
      pl_dispatch_sync();

      obj = v28;
    }

LABEL_21:
    goto LABEL_22;
  }

  v39 = MEMORY[0x1E69E9820];
  v40 = 3221225472;
  v41 = __42__PHPhotoLibrary_handleMergeNotification___block_invoke;
  v42 = &unk_1E75AB270;
  v43 = val;
  pl_dispatch_sync();
LABEL_22:
  objc_initWeak(location, val);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __42__PHPhotoLibrary_handleMergeNotification___block_invoke_3;
  v24[3] = &unk_1E75A7300;
  objc_copyWeak(&v26, location);
  v16 = v17;
  v25 = v16;
  [(PHPhotoLibrary *)val _publishChangeWithDebugEvent:v16 block:v24];

  objc_destroyWeak(&v26);
  objc_destroyWeak(location);
}

void __42__PHPhotoLibrary_handleMergeNotification___block_invoke_2(uint64_t a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v2 = [MEMORY[0x1E69BE578] changeNotificationObjectIDMutationKeys];
  v3 = [v2 countByEnumeratingWithState:&v96 objects:v103 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v97;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v97 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v96 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
        if ([v8 count])
        {
          v9 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:v7];
          if (!v9)
          {
            v9 = [MEMORY[0x1E695DFA8] set];
            [*(*(a1 + 40) + 360) setObject:v9 forKeyedSubscript:v7];
          }

          [v9 addObjectsFromArray:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v96 objects:v103 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E695D2F0]];
  v11 = [v10 count];
  v12 = *MEMORY[0x1E695D320];
  v13 = MEMORY[0x1E695D4C8];
  v73 = v10;
  if (v11)
  {
    v14 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:v12];
    v15 = *v13;
    v16 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:*v13];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v92 objects:v102 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v93;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v93 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v92 + 1) + 8 * j);
          [v14 removeObject:v22];
          [v16 removeObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v92 objects:v102 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v15 = *MEMORY[0x1E695D4C8];
  }

  v23 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:v12];
  v82 = a1;
  v71 = v23;
  v78 = v15;
  if ([v23 count])
  {
    v80 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:v15];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v88 objects:v101 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v83 = 0;
      v28 = *v89;
      v29 = *MEMORY[0x1E69BF128];
      do
      {
        for (k = 0; k != v26; ++k)
        {
          v31 = v27;
          if (*v89 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v32 = *(*(&v88 + 1) + 8 * k);
          v33 = [*(*(v82 + 40) + 360) objectForKeyedSubscript:v29];

          v27 = [*(v82 + 48) objectForKeyedSubscript:v29];

          v83 = v33;
          v34 = [v33 objectForKeyedSubscript:v32];
          if (v34)
          {
          }

          else
          {
            v35 = [v27 objectForKeyedSubscript:v32];

            if (!v35)
            {
              [v80 removeObject:v32];
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
      v83 = 0;
    }

    a1 = v82;
  }

  else
  {
    v27 = 0;
    v83 = 0;
  }

  v36 = [*(a1 + 32) objectForKeyedSubscript:v78];
  v37 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:v78];
  v72 = v36;
  v38 = [v36 count];
  v39 = v73;
  if (v38)
  {
    v40 = *MEMORY[0x1E69BF120];
    v81 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:*MEMORY[0x1E69BF120]];
    if (!v81)
    {
      v81 = [MEMORY[0x1E695DF90] dictionary];
      [*(*(a1 + 40) + 360) setObject:? forKeyedSubscript:?];
    }

    if (!v83)
    {
      v83 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:*MEMORY[0x1E69BF128]];
      if (!v83)
      {
        v83 = [MEMORY[0x1E695DF90] dictionary];
        [*(*(a1 + 40) + 360) setObject:? forKeyedSubscript:?];
      }
    }

    v75 = [*(a1 + 48) objectForKeyedSubscript:v40];
    if (!v27)
    {
      v27 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E69BF128]];
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v72;
    v41 = [obj countByEnumeratingWithState:&v84 objects:v100 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v85;
      v74 = *v85;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v85 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v84 + 1) + 8 * m);
          if ([v37 containsObject:v45])
          {
            v46 = [v81 objectForKeyedSubscript:v45];
            v47 = [v46 unsignedLongLongValue];
            v48 = [v75 objectForKeyedSubscript:v45];
            v79 = [v48 unsignedLongLongValue];

            v49 = [v83 objectForKeyedSubscript:v45];
            v77 = [v49 unsignedLongLongValue];
            [v27 objectForKeyedSubscript:v45];
            v50 = v42;
            v52 = v51 = v37;
            v53 = [v52 unsignedLongLongValue];

            v37 = v51;
            v54 = v79 | v47;
            a1 = v82;
            v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v54];
            [v81 setObject:v55 forKeyedSubscript:v45];

            v42 = v50;
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v53 | v77];
            v43 = v74;
            [v83 setObject:v56 forKeyedSubscript:v45];
          }
        }

        v42 = [obj countByEnumeratingWithState:&v84 objects:v100 count:16];
      }

      while (v42);
    }

    v39 = v73;
  }

  v57 = *MEMORY[0x1E69BE9A0];
  v58 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E69BE9A0]];
  [*(*(a1 + 40) + 360) setObject:v58 forKeyedSubscript:v57];

  v59 = *MEMORY[0x1E69BF108];
  v60 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:*MEMORY[0x1E69BF108]];
  v61 = [v60 integerValue];

  v62 = [*(a1 + 48) objectForKeyedSubscript:v59];
  v63 = [v62 integerValue];

  v64 = [MEMORY[0x1E696AD98] numberWithInteger:v63 + v61];
  [*(*(a1 + 40) + 360) setObject:v64 forKeyedSubscript:v59];

  v65 = *MEMORY[0x1E69BE910];
  v66 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:*MEMORY[0x1E69BE910]];
  v67 = [v66 integerValue];

  v68 = [*(a1 + 48) objectForKeyedSubscript:v65];
  v69 = [v68 integerValue];

  v70 = [MEMORY[0x1E696AD98] numberWithInteger:v69 + v67];
  [*(*(a1 + 40) + 360) setObject:v70 forKeyedSubscript:v65];
}

void __42__PHPhotoLibrary_handleMergeNotification___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processPendingChangesWithDebugEvent:*(a1 + 32)];
}

- (void)setCustomLibrarySpecificFetchOptions:(id)a3
{
  self->_customLibrarySpecificFetchOptions = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

void __33__PHPhotoLibrary_allowedEntities__block_invoke_2()
{
  v0 = MEMORY[0x1E695DFD8];
  v5 = [MEMORY[0x1E69BE540] entityName];
  v1 = [MEMORY[0x1E69BE5D0] entityName];
  v2 = [MEMORY[0x1E69BE7D8] entityName];
  v3 = [v0 setWithObjects:{v5, v1, v2, 0}];
  v4 = allowedEntities_pl_once_object_78;
  allowedEntities_pl_once_object_78 = v3;
}

- (id)fetchUpdatedObject:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 objectID];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(PHPhotoLibrary *)self fetchPHObjectsForOIDs:v5];
  v7 = [v6 firstObject];

  return v7;
}

- (id)fetchPHObjectsForUUIDs:(id)a3 entityName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  if ([v6 count])
  {
    v9 = [(PHPhotoLibrary *)self managedObjectContext];
    v10 = [PHPhotoLibrary PHObjectClassForEntityName:v7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__PHPhotoLibrary_fetchPHObjectsForUUIDs_entityName___block_invoke;
    v13[3] = &unk_1E75A6AF0;
    v14 = v7;
    v15 = v6;
    v16 = v9;
    v19 = v10;
    v17 = self;
    v18 = v8;
    v11 = v9;
    [v11 performBlockAndWait:v13];
  }

  return v8;
}

void __52__PHPhotoLibrary_fetchPHObjectsForUUIDs_entityName___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 32)];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", *(a1 + 40)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 72) propertiesToFetchWithHint:2];
  [v2 setPropertiesToFetch:v4];

  [v2 setResultType:2];
  v5 = [*(a1 + 48) executeFetchRequest:v2 error:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        v10 = [objc_alloc(*(a1 + 72)) initWithFetchDictionary:*(*(&v11 + 1) + 8 * v9) propertyHint:2 photoLibrary:*(a1 + 56)];
        [*(a1 + 64) addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)fetchedObjectsForOIDs:(id)a3 propertySetClass:(Class)a4
{
  v59[1] = *MEMORY[0x1E69E9840];
  v36 = a3;
  v5 = [v36 count];
  v6 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v34 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v34 setName:@"objectID"];
    v7 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    [v34 setExpression:v7];

    [v34 setExpressionResultType:2000];
    v59[0] = v34;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
    v8 = [(objc_class *)a4 propertiesToFetch];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v32 = v10;

    v30 = [v33 arrayByAddingObjectsFromArray:v32];
    v31 = [(objc_class *)a4 entityName];
    v37 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v31];
    if ([(objc_class *)a4 useNoIndexSelf])
    {
      v11 = @"noindex:(self) IN %@";
    }

    else
    {
      v11 = @"self IN %@";
    }

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:v11, v36];
    [v37 setPredicate:v12];

    [v37 setPropertiesToFetch:v30];
    [v37 setResultType:2];
    [v37 setAllocationType:1];
    v35 = [(objc_class *)a4 propertiesToSortBy];
    if ([v35 count])
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count")}];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v14 = v35;
      v15 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v15)
      {
        v16 = *v54;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v54 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*(*(&v53 + 1) + 8 * i) ascending:1];
            [v13 addObject:v18];
          }

          v15 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v15);
      }

      [v37 setSortDescriptors:v13];
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__21754;
    v51 = __Block_byref_object_dispose__21755;
    v52 = 0;
    if ([(objc_class *)a4 useObjectFetchingContext])
    {
      [(PHPhotoLibrary *)self objectFetchingContextForCurrentQueueQoS];
    }

    else
    {
      [(PHPhotoLibrary *)self managedObjectContextForCurrentQueueQoS];
    }
    v19 = ;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __57__PHPhotoLibrary_fetchedObjectsForOIDs_propertySetClass___block_invoke;
    v43[3] = &unk_1E75AA3F8;
    v46 = &v47;
    v20 = v19;
    v44 = v20;
    v45 = v37;
    [v20 performBlockAndWait:v43];

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v36, "count")}];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v48[5];
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v57 count:16];
    if (v22)
    {
      v23 = *v40;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v39 + 1) + 8 * j);
          v26 = [v25 valueAtIndex:0];
          v27 = [PHPhotoLibrary uniquedOID:v26];

          v28 = [[a4 alloc] initWithObjectID:v27 knownKeysDictionary:v25 photoLibrary:self];
          [v6 addObject:v28];
        }

        v22 = [v21 countByEnumeratingWithState:&v39 objects:v57 count:16];
      }

      while (v22);
    }

    _Block_object_dispose(&v47, 8);
  }

  return v6;
}

void __57__PHPhotoLibrary_fetchedObjectsForOIDs_propertySetClass___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "error %@", buf, 0xCu);
    }
  }
}

- (id)fetchPropertiesByOID:(id)a3 propertyNamesByEntityName:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v6 count])
  {
    v25 = v8;
    v26 = v7;
    v24 = [(PHPhotoLibrary *)self objectFetchingContextForCurrentQueueQoS];
    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v15 entity];
          v17 = [v16 name];
          v18 = [v9 objectForKey:v17];
          if (v18)
          {
            v19 = v18;
            [v18 addObject:v15];
          }

          else
          {
            v19 = [MEMORY[0x1E695DF70] arrayWithObject:v15];
            [v9 setObject:v19 forKey:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __65__PHPhotoLibrary_fetchPropertiesByOID_propertyNamesByEntityName___block_invoke;
    v27[3] = &unk_1E75AA130;
    v28 = v9;
    v7 = v26;
    v29 = v26;
    v30 = v24;
    v31 = v10;
    v8 = v25;
    v32 = v25;
    v20 = v24;
    v21 = v9;
    [v20 performBlockAndWait:v27];
  }

  v22 = [v8 copy];

  return v22;
}

void __65__PHPhotoLibrary_fetchPropertiesByOID_propertyNamesByEntityName___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v20 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v20 setName:@"self"];
  v2 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v20 setExpression:v2];

  [v20 setExpressionResultType:2000];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  v22 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v22)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
        if ([v5 count])
        {
          v24 = [*(a1 + 32) objectForKey:v4];
          v26 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v4];
          [v26 setResultType:2];
          v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v24];
          [v26 setPredicate:v6];

          v7 = [v5 allObjects];
          v8 = [v7 arrayByAddingObject:v20];
          [v26 setPropertiesToFetch:v8];

          v9 = *(a1 + 48);
          v31 = 0;
          v10 = [v9 executeFetchRequest:v26 error:&v31];
          v23 = v31;
          if (!v10)
          {
            v11 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = *(a1 + 56);
              *buf = 138412546;
              v38 = v23;
              v39 = 2114;
              v40 = v12;
              _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "error: %@ while building fetch dictionaries from OIDs: %{public}@", buf, 0x16u);
            }
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = v10;
          v14 = [v13 countByEnumeratingWithState:&v27 objects:v36 count:16];
          if (v14)
          {
            v15 = *v28;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                v18 = [v17 objectForKeyedSubscript:@"self"];
                [*(a1 + 64) setObject:v17 forKey:v18];
              }

              v14 = [v13 countByEnumeratingWithState:&v27 objects:v36 count:16];
            }

            while (v14);
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v22 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v22);
  }
}

- (id)fetchPHObjectsForOIDs:(id)a3 propertyHint:(unint64_t)a4 includeTrash:(BOOL)a5 overrideResultsWithClass:(Class)a6
{
  v6 = a5;
  v53 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v34 = [MEMORY[0x1E69BE470] entity];
  v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v33 = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v47;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v46 + 1) + 8 * i);
        v16 = [v15 entity];
        v17 = [v16 isKindOfEntity:v34];

        if (v17)
        {
          v18 = v33;
        }

        else
        {
          v18 = v35;
        }

        [v18 addObject:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v12);
  }

  v29 = v6;
  [(PHPhotoLibrary *)self fetchDictionariesByPHClassForOIDs:v35 propertyHint:a4 includeTrash:v6 overrideWithPHClass:a6];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = v45 = 0u;
  v36 = [v37 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v36)
  {
    v32 = *v43;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v37);
        }

        v20 = *(*(&v42 + 1) + 8 * j);
        v21 = [v37 objectForKey:v20];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v39;
          if (a6)
          {
            v20 = a6;
          }

          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [[v20 alloc] initWithFetchDictionary:*(*(&v38 + 1) + 8 * k) propertyHint:a4 photoLibrary:self];
              [v10 addObject:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v38 objects:v50 count:16];
          }

          while (v23);
        }
      }

      v36 = [v37 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v36);
  }

  if ([v33 count])
  {
    v27 = [(PHPhotoLibrary *)self _graphBasedPHObjectsForOIDs:v33 propertyHint:2 includeTrash:v29];
    [v10 addObjectsFromArray:v27];
  }

  return v10;
}

- (id)fetchDictionariesByPHClassForOIDs:(id)a3 propertyHint:(unint64_t)a4 includeTrash:(BOOL)a5 overrideWithPHClass:(Class)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  if ([v10 count])
  {
    v28 = a4;
    v29 = a5;
    v31 = v11;
    v27 = [(PHPhotoLibrary *)self objectFetchingContextForCurrentQueueQoS];
    v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v30 = v10;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v40 + 1) + 8 * i);
          v18 = [v17 entity];
          v19 = v18;
          v20 = a6;
          if (!a6)
          {
            v21 = [v18 name];
            v20 = [PHPhotoLibrary PHObjectClassForEntityName:v21];
          }

          v22 = [v12 objectForKey:v20];
          if (v22)
          {
            v23 = v22;
            [v22 addObject:v17];
          }

          else
          {
            v23 = [MEMORY[0x1E695DF70] arrayWithObject:v17];
            [v12 setObject:v23 forKey:v20];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v14);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __98__PHPhotoLibrary_fetchDictionariesByPHClassForOIDs_propertyHint_includeTrash_overrideWithPHClass___block_invoke;
    v33[3] = &unk_1E75A6AC8;
    v39 = v29;
    v38 = v28;
    v34 = v12;
    v35 = v27;
    v36 = obj;
    v11 = v31;
    v37 = v31;
    v24 = v27;
    v25 = v12;
    [v24 performBlockAndWait:v33];

    v10 = v30;
  }

  return v11;
}

void __98__PHPhotoLibrary_fetchDictionariesByPHClassForOIDs_propertyHint_includeTrash_overrideWithPHClass___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v2)
  {
    v21 = *v24;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v23 + 1) + 8 * i);
        v5 = [*(a1 + 32) objectForKey:v4];
        v6 = MEMORY[0x1E695D5E0];
        v7 = [v4 managedEntityName];
        v8 = [v6 fetchRequestWithEntityName:v7];

        v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v5];
        if ((*(a1 + 72) & 1) == 0 && [v4 managedObjectSupportsTrashedState])
        {
          v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(trashedState) == %d", 0];
          v11 = MEMORY[0x1E696AB28];
          v31[0] = v9;
          v31[1] = v10;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
          v13 = [v11 andPredicateWithSubpredicates:v12];

          v9 = v13;
        }

        [v8 setPredicate:v9];
        v14 = [v4 propertiesToFetchWithHint:*(a1 + 64)];
        [v8 setPropertiesToFetch:v14];

        [v8 setResultType:2];
        v15 = *(a1 + 40);
        v22 = 0;
        v16 = [v15 executeFetchRequest:v8 error:&v22];
        v17 = v22;
        if (!v16)
        {
          v18 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 48);
            *buf = 138412546;
            v28 = v17;
            v29 = 2114;
            v30 = v19;
            _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "error: %@ while building fetch dictionaries from OIDs: %{public}@", buf, 0x16u);
          }
        }

        [*(a1 + 56) setObject:v16 forKey:v4];
      }

      v2 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v2);
  }
}

- (id)_graphBasedPHObjectsForOIDs:(id)a3 propertyHint:(unint64_t)a4 includeTrash:(BOOL)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v10 = [v9 managedObjectContext];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PHPhotoLibrary__graphBasedPHObjectsForOIDs_propertyHint_includeTrash___block_invoke;
  v17[3] = &unk_1E75A6AA0;
  v18 = v7;
  v19 = v10;
  v20 = self;
  v22 = a2;
  v11 = v8;
  v21 = v11;
  v12 = v10;
  v13 = v7;
  [v12 performBlockAndWait:v17];
  v14 = v21;
  v15 = v11;

  return v11;
}

void __72__PHPhotoLibrary__graphBasedPHObjectsForOIDs_propertyHint_includeTrash___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BE470] fetchRequest];
  v37[0] = @"values";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  [v2 setRelationshipKeyPathsForPrefetching:v3];

  [v2 setResultType:0];
  [v2 setReturnsObjectsAsFaults:0];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", *(a1 + 32)];
  [v2 setPredicate:v4];

  v5 = *(a1 + 40);
  v35 = 0;
  v29 = v2;
  v6 = [v5 executeFetchRequest:v2 error:&v35];
  v28 = v35;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v11 = off_1E75A1000;
    v12 = 0x1E69BE000uLL;
    v30 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [MEMORY[0x1E69BE478] newNodeContainerWithNode:*(*(&v31 + 1) + 8 * v13)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v11[233];
LABEL_10:
          v16 = [[v15 alloc] initWithNodeContainer:v14 photoLibrary:*(a1 + 48)];
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = PHSearchEntity;
          goto LABEL_10;
        }

        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = v12;
        v19 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = objc_opt_class();
        NSStringFromClass(v21);
        v22 = v9;
        v23 = a1;
        v25 = v24 = v7;
        v26 = v19;
        v12 = v18;
        v27 = v20;
        v10 = v30;
        [v17 handleFailureInMethod:v26 object:v27 file:@"PHPhotoLibrary.m" lineNumber:2681 description:{@"Unsupported node container type: %@", v25, v28}];

        v7 = v24;
        a1 = v23;
        v9 = v22;
        v11 = off_1E75A1000;

        v16 = 0;
LABEL_12:
        [*(a1 + 56) addObject:v16];

        ++v13;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }
}

- (id)queryForType:(id)a3 withIdentifiers:(id)a4 local:(BOOL)a5
{
  v5 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        if ([v16 length] >= 0x25)
        {
          v17 = [v16 substringToIndex:36];
          if (v17)
          {
            v18 = v17;
            [v10 addObject:v17];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    if (v5)
    {
      v19 = @"uuid IN (%@)";
    }

    else
    {
      v19 = @"cloudAssetGUID IN (%@)";
    }

    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:v19, v10];
    v21 = [PHQuery queryForType:v8 withBasePredicate:v20 inLibrary:self];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_urlForApplicationDataFolderIdentifier:(int64_t)a3 pathManager:(id)a4 error:(id *)a5
{
  v9 = a4;
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2406 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  switch(a3)
  {
    case 1:
      v10 = MEMORY[0x1E695DFF8];
      v36 = 0;
      v11 = [v9 privateCacheDirectoryWithSubType:4 createIfNeeded:1 error:&v36];
      v12 = v36;
      goto LABEL_20;
    case 2:
      v10 = MEMORY[0x1E695DFF8];
      v35 = 0;
      v11 = [v9 privateCacheDirectoryWithSubType:5 createIfNeeded:1 error:&v35];
      v12 = v35;
      goto LABEL_20;
    case 3:
      v10 = MEMORY[0x1E695DFF8];
      v34 = 0;
      v11 = [v9 privateCacheDirectoryWithSubType:6 createIfNeeded:1 error:&v34];
      v12 = v34;
      goto LABEL_20;
    case 4:
      v10 = MEMORY[0x1E695DFF8];
      v33 = 0;
      v11 = [v9 privateCacheDirectoryWithSubType:7 createIfNeeded:1 error:&v33];
      v12 = v33;
      goto LABEL_20;
    case 5:
      v10 = MEMORY[0x1E695DFF8];
      v32 = 0;
      v11 = [v9 privateDirectoryWithSubType:0 createIfNeeded:1 error:&v32];
      v12 = v32;
      goto LABEL_20;
    case 6:
      v10 = MEMORY[0x1E695DFF8];
      v31 = 0;
      v11 = [v9 photoDirectoryWithType:17 createIfNeeded:1 error:&v31];
      v12 = v31;
      goto LABEL_20;
    case 7:
      v10 = MEMORY[0x1E695DFF8];
      v30 = 0;
      v11 = [v9 photoDirectoryWithType:16 createIfNeeded:1 error:&v30];
      v12 = v30;
      goto LABEL_20;
    case 8:
      v10 = MEMORY[0x1E695DFF8];
      v29 = 0;
      v11 = [v9 photoDirectoryWithType:34 leafType:1 additionalPathComponents:@"ExternalEditSessions" createIfNeeded:1 error:&v29];
      v12 = v29;
      goto LABEL_20;
    case 9:
      v10 = MEMORY[0x1E695DFF8];
      v28 = 0;
      v11 = [v9 photoDirectoryWithType:18 createIfNeeded:1 error:&v28];
      v12 = v28;
      goto LABEL_20;
    case 10:
      v10 = MEMORY[0x1E695DFF8];
      v27 = 0;
      v11 = [v9 photoDirectoryWithType:21 createIfNeeded:1 error:&v27];
      v12 = v27;
      goto LABEL_20;
    case 11:
      v10 = MEMORY[0x1E695DFF8];
      v26 = 0;
      v11 = [v9 internalDirectoryWithSubType:3 additionalPathComponents:0 createIfNeeded:1 error:&v26];
      v12 = v26;
      goto LABEL_20;
    case 12:
      v10 = MEMORY[0x1E695DFF8];
      v25 = 0;
      v11 = [v9 internalDirectoryWithSubType:5 additionalPathComponents:0 createIfNeeded:1 error:&v25];
      v12 = v25;
      goto LABEL_20;
    case 13:
      v10 = MEMORY[0x1E695DFF8];
      v24 = 0;
      v11 = [v9 internalDirectoryWithSubType:6 additionalPathComponents:0 createIfNeeded:1 error:&v24];
      v12 = v24;
      goto LABEL_20;
    case 14:
      v10 = MEMORY[0x1E695DFF8];
      v23 = 0;
      v11 = [v9 privateCacheDirectoryWithSubType:16 createIfNeeded:1 error:&v23];
      v12 = v23;
      goto LABEL_20;
    case 15:
      v10 = MEMORY[0x1E695DFF8];
      v22 = 0;
      v11 = [v9 internalDirectoryWithSubType:4 additionalPathComponents:0 createIfNeeded:1 error:&v22];
      v12 = v22;
      goto LABEL_20;
    case 16:
      v10 = MEMORY[0x1E695DFF8];
      v21 = 0;
      v11 = [v9 internalDirectoryWithSubType:7 additionalPathComponents:0 createIfNeeded:1 error:&v21];
      v12 = v21;
LABEL_20:
      v13 = v12;
      goto LABEL_21;
    default:
      v37 = 0;
      v17 = [v9 validateCreationRequestWithError:&v37];
      v18 = v37;
      v13 = v18;
      if (v17)
      {
        v10 = MEMORY[0x1E695DFF8];
        v11 = [v9 photoDirectoryWithType:29];
LABEL_21:
        v14 = [v10 fileURLWithPath:v11 isDirectory:1];

        if (v13)
        {
          goto LABEL_22;
        }

LABEL_28:
        v16 = v14;
        goto LABEL_29;
      }

      v14 = 0;
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_22:
      if (a5)
      {
        v15 = v13;
        v16 = 0;
        *a5 = v13;
      }

      else
      {
        v16 = 0;
      }

LABEL_29:

      return v16;
  }
}

- (id)urlForApplicationDataFolderIdentifier:(int64_t)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = [(PHPhotoLibrary *)self pathManager];
  if (!v7)
  {
    v11 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"pathManager is nil";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v9 = [v11 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v12];

    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "[PHPhotoLibrary urlForApplicationDataFolderIdentifier:error:]";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "%{public}s: Failed to access path manager for application folder identifier. Error: %@", buf, 0x16u);
    }

    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v14 = v9;
    v8 = 0;
    *a4 = v9;
    goto LABEL_13;
  }

  if ([(PHPhotoLibrary *)self _isApplicationOwnedFolderWithApplicationDataFolderIdentifier:a3])
  {
    [(PHPhotoLibrary *)self _openApplicationOwnedFoldersIfNecessary];
  }

  v16 = 0;
  v8 = [(PHPhotoLibrary *)self _urlForApplicationDataFolderIdentifier:a3 pathManager:v7 error:&v16];
  v9 = v16;
  if (!v8)
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "[PHPhotoLibrary urlForApplicationDataFolderIdentifier:error:]";
      v19 = 2048;
      v20 = a3;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "%{public}s: Failed to create directories for application folder identifier %td. Error: %@", buf, 0x20u);
    }

    if (!a4)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v8;
}

- (id)urlForApplicationDataFolderIdentifier:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [(PHPhotoLibrary *)self urlForApplicationDataFolderIdentifier:a3 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "[PHPhotoLibrary urlForApplicationDataFolderIdentifier:]";
      v11 = 2048;
      v12 = a3;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "%{public}s: Failed to create directories for application folder identifier %td. Error: %@", buf, 0x20u);
    }
  }

  return v4;
}

- (void)setChangeRequest:(id)a3 forUUID:(id)a4
{
  v7 = a4;
  v11 = a3;
  if (PLIsAssetsd())
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2316 description:@"cannot be run from assetsd"];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2317 description:@"uuid is a required argument"];

LABEL_3:
  if (!v11)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2318 description:@"changeRequest is a required argument"];
  }

  [(PHPhotoLibrary *)self assertTransaction];
  [(PHPerformChangesRequest *)self->_performChangesRequest setChangeRequest:v11 forUUID:v7];
}

- (id)changeRequestForUUID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2309 description:@"uuid is a required argument"];
  }

  [(PHPhotoLibrary *)self assertTransaction];
  v6 = [(PHPerformChangesRequest *)self->_performChangesRequest changeRequestForUUID:v5];

  return v6;
}

- (void)recordOtherChangeRequest:(id)a3
{
  v5 = a3;
  if (PLIsAssetsd())
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2303 description:@"cannot be run from assetsd"];
  }

  v7 = [objc_opt_class() photoLibraryForCurrentTransaction];
  [v7[44] recordOtherChangeRequest:v5];
}

- (void)recordDeleteRequest:(id)a3
{
  v5 = a3;
  if (PLIsAssetsd())
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2296 description:@"cannot be run from assetsd"];
  }

  v7 = [objc_opt_class() photoLibraryForCurrentTransaction];
  [v7[44] recordDeleteRequest:v5];
}

- (void)recordUpdateRequest:(id)a3
{
  v5 = a3;
  if (PLIsAssetsd())
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2289 description:@"cannot be run from assetsd"];
  }

  v7 = [objc_opt_class() photoLibraryForCurrentTransaction];
  [v7[44] recordUpdateRequest:v5];
}

- (void)recordInsertRequest:(id)a3
{
  v5 = a3;
  if (PLIsAssetsd())
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2282 description:@"cannot be run from assetsd"];
  }

  v7 = [objc_opt_class() photoLibraryForCurrentTransaction];
  [v7[44] recordInsertRequest:v5];
}

- (void)assertTransaction
{
  v17 = *MEMORY[0x1E69E9840];
  if (PLIsAssetsd())
  {
    return;
  }

  v3 = [objc_opt_class() photoLibraryForCurrentTransaction];
  if (!v3)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    v6 = @"This method can only be called from inside of [PHPhotoLibrary performChanges:completionHandler:] or [PHPhotoLibrary performChangesAndWait:error:]";
    goto LABEL_11;
  }

  v12 = v3;
  if (v3 != self)
  {
    v11 = self;
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PHPhotoLibrary *)v11 debugDescription];
      v9 = [(PHPhotoLibrary *)v12 debugDescription];
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Wrong instance: (%@) used during perform transaction for (%@)", buf, 0x16u);
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    v6 = @"Using wrong PHPhotoLibrary instance in perform transaction";
LABEL_11:
    v10 = [v4 exceptionWithName:v5 reason:v6 userInfo:{0, v11}];
    objc_exception_throw(v10);
  }

  dispatch_assert_queue_V2(self->_transactionQueue);
}

- (uint64_t)_performCancellableChangesAndWait:(void *)a3 withInstrumentation:(void *)a4 error:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__21754;
    v16 = __Block_byref_object_dispose__21755;
    v17 = 0;
    v9 = +[PHSynchronousPhotoLibraryExecutionContext synchronousExecutionContext];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__PHPhotoLibrary__performCancellableChangesAndWait_withInstrumentation_error___block_invoke;
    v11[3] = &unk_1E75A6A50;
    v11[4] = &v18;
    v11[5] = &v12;
    [(PHPhotoLibrary *)a1 _performCancellableChanges:v7 withInstrumentation:v8 onExecutionContext:v9 completionHandler:v11];

    [(PHPerformChangesInstrumentation *)v8 endPerformChangesWithSuccess:v13[5] error:?];
    if (v19[3])
    {
      LOBYTE(a4) = 1;
    }

    else if (a4)
    {
      *a4 = v13[5];
      LOBYTE(a4) = *(v19 + 24);
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    LOBYTE(a4) = 0;
  }

  return a4 & 1;
}

- (void)_performCancellableChanges:(void *)a3 withInstrumentation:(void *)a4 onExecutionContext:(void *)a5 completionHandler:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 344);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __102__PHPhotoLibrary__performCancellableChanges_withInstrumentation_onExecutionContext_completionHandler___block_invoke;
  v18[3] = &unk_1E75A6A78;
  v18[4] = a1;
  v14 = v9;
  v21 = v14;
  v15 = v11;
  v19 = v15;
  v16 = v10;
  v20 = v16;
  v17 = v12;
  v22 = v17;
  [v15 dispatchOnQueue:v13 block:v18];
}

uint64_t __102__PHPhotoLibrary__performCancellableChanges_withInstrumentation_onExecutionContext_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _beginTransaction];
  (*(*(a1 + 56) + 16))();
  v2 = [*(a1 + 32) performChangesRequest];
  v3 = [v2 determineAuthorizationStatusForChanges];

  if ((v3 - 3) > 1)
  {
    v4 = [*(a1 + 32) performChangesRequest];
    if ([v4 accessScopeOptionsRequiredForRequestedChanges] == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    [*(a1 + 32) _denyTransactionOnExecutionContext:*(a1 + 40) withInstrumentation:*(a1 + 48) authorizationStatus:v3 accessLevel:v5 completionHandler:*(a1 + 64)];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    [*(a1 + 32) _commitTransactionOnExecutionContext:*(a1 + 40) withInstrumentation:*(a1 + 48) completionHandler:*(a1 + 64)];
    objc_autoreleasePoolPop(v6);
  }

  return [*(a1 + 32) _endTransaction];
}

- (void)_performCancellableChanges:(void *)a3 withInstrumentation:(void *)a4 completionHandler:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = a2;
    v10 = +[PHAsynchronousPhotoLibraryExecutionContext asynchronousExecutionContext];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__PHPhotoLibrary__performCancellableChanges_withInstrumentation_completionHandler___block_invoke;
    v11[3] = &unk_1E75A84A0;
    v12 = v7;
    v13 = v8;
    [(PHPhotoLibrary *)a1 _performCancellableChanges:v9 withInstrumentation:v12 onExecutionContext:v10 completionHandler:v11];
  }
}

void __83__PHPhotoLibrary__performCancellableChanges_withInstrumentation_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [(PHPerformChangesInstrumentation *)*(a1 + 32) endPerformChangesWithSuccess:a2 error:v6];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (BOOL)performCancellableChangesAndWait:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PHPerformChangesInstrumentation startPeformChangesWithName:?];
  LOBYTE(a4) = [(PHPhotoLibrary *)self _performCancellableChangesAndWait:v6 withInstrumentation:v7 error:a4];

  return a4;
}

- (void)performCancellableChanges:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PHPerformChangesInstrumentation startPeformChangesWithName:?];
  [(PHPhotoLibrary *)self _performCancellableChanges:v7 withInstrumentation:v8 completionHandler:v6];
}

- (BOOL)_preflightRequest:(id)a3 withError:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = a3;
  obj = [v23 requestSets];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v35;
    v9 = 1;
    v24 = *v35;
    while (1)
    {
      v10 = 0;
      v25 = v6;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        if (!v9)
        {
          v9 = 0;
          goto LABEL_28;
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (!v13)
        {
          v9 = 1;
          goto LABEL_27;
        }

        v14 = v13;
        v15 = *v31;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            v29 = v7;
            v18 = [v17 prepareForServicePreflightCheck:&v29];
            v19 = v29;

            if ((v18 & 1) == 0)
            {
              if (a4)
              {
                v7 = v19;
LABEL_23:
                v8 = v24;
                v6 = v25;
                v21 = v19;
                v9 = 0;
                *a4 = v19;
                goto LABEL_27;
              }

              v9 = 0;
              v7 = v19;
LABEL_26:
              v8 = v24;
              v6 = v25;
              goto LABEL_27;
            }

            v28 = v19;
            v20 = [v17 prepareForPhotoLibraryCheck:self error:&v28];
            v7 = v28;

            if ((v20 & 1) == 0)
            {
              if (a4)
              {
                v19 = v7;
                goto LABEL_23;
              }

              v9 = 0;
              goto LABEL_26;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          v9 = 1;
          v8 = v24;
          v6 = v25;
          if (v14)
          {
            continue;
          }

          break;
        }

LABEL_27:

LABEL_28:
        ++v10;
      }

      while (v10 != v6);
      v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (!v6)
      {
        goto LABEL_32;
      }
    }
  }

  v7 = 0;
  v9 = 1;
LABEL_32:

  return v9;
}

- (id)_errorCodeForAuthorizationStatus:(int64_t)a3 accessLevel:(int64_t)a4
{
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 4)
    {
      v4 = MEMORY[0x1E696ABC0];
      v5 = 3311;
      goto LABEL_10;
    }

LABEL_8:
    v6 = [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:{@"Photos Access denied (authorization status %ld)", a3}];
    goto LABEL_11;
  }

  if (!a3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = 5102;
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    goto LABEL_8;
  }

  v4 = MEMORY[0x1E696ABC0];
  v5 = 3310;
LABEL_10:
  v6 = [v4 ph_errorWithDomain:@"PHPhotosErrorDomain" code:v5 userInfo:0];
LABEL_11:

  return v6;
}

- (id)_errorForAuthorizationStatus:(int64_t)a3 accessLevel:(int64_t)a4
{
  [PHPhotoLibrary requestAuthorizationForAccessLevel:a4 handler:&__block_literal_global_503];
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 4)
    {
      v5 = MEMORY[0x1E696ABC0];
      v6 = 3311;
      goto LABEL_10;
    }

LABEL_8:
    v7 = [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:{@"Photos Access denied (authorization status %ld)", a3}];
    goto LABEL_11;
  }

  if (!a3)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = 5102;
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    goto LABEL_8;
  }

  v5 = MEMORY[0x1E696ABC0];
  v6 = 3310;
LABEL_10:
  v7 = [v5 ph_errorWithDomain:@"PHPhotosErrorDomain" code:v6 userInfo:0];
LABEL_11:

  return v7;
}

- (void)_denyTransactionOnExecutionContext:(id)a3 withInstrumentation:(id)a4 authorizationStatus:(int64_t)a5 accessLevel:(int64_t)a6 completionHandler:(id)a7
{
  v11 = self;
  v55 = *MEMORY[0x1E69E9840];
  transactionQueue = self->_transactionQueue;
  v13 = a7;
  v14 = a4;
  v15 = a3;
  dispatch_assert_queue_V2(transactionQueue);
  v16 = [(PHPhotoLibrary *)v11 _popChangesRequest];
  v44 = v16;
  if (v14)
  {
    v17 = [v16 accessScopeOptionsRequiredForRequestedChanges];
    v18 = @"read/write";
    if (v17 == 1)
    {
      v18 = @"add-only";
    }

    v19 = v18;
    v20 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v11;
      v21 = v15;
      v22 = v13;
      v23 = a6;
      v24 = v14[8];
      v25 = a5;
      if ((a5 - 1) > 3)
      {
        v26 = @"not determined";
      }

      else
      {
        v26 = off_1E75A6C70[a5 - 1];
      }

      v27 = v26;
      qos_class_self();
      v28 = PLStringFromQoSClass();
      *buf = 138544386;
      v46 = v24;
      v47 = 2114;
      v48 = v27;
      v49 = 2114;
      v50 = v19;
      v51 = 2114;
      v52 = v28;
      v53 = 2114;
      v54 = v44;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] Request denied with authorization status %{public}@ for access scope %{public}@ at %{public}@, %{public}@", buf, 0x34u);

      a6 = v23;
      a5 = v25;
      v13 = v22;
      v15 = v21;
      v11 = v43;
    }

    v29 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEBUG, "#####  Deny transaction:", buf, 2u);
    }

    v30 = [v44 inserts];
    v31 = [v30 count];

    if (v31)
    {
      v32 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v44 inserts];
        *buf = 138412290;
        v46 = v33;
        _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_DEBUG, "##### denied inserts: %@", buf, 0xCu);
      }
    }

    v34 = [v44 updates];
    v35 = [v34 count];

    if (v35)
    {
      v36 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v44 updates];
        *buf = 138412290;
        v46 = v37;
        _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_DEBUG, "##### denied updates: %@", buf, 0xCu);
      }
    }

    v38 = [v44 deletes];
    v39 = [v38 count];

    if (v39)
    {
      v40 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = [v44 deletes];
        *buf = 138412290;
        v46 = v41;
        _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_DEBUG, "##### denied deletes: %@", buf, 0xCu);
      }
    }

    v16 = v44;
  }

  v42 = [(PHPhotoLibrary *)v11 _errorForAuthorizationStatus:a5 accessLevel:a6];
  [v15 callTransactionCompletionHandler:v13 withSuccess:0 error:v42];
}

- (void)_cancelTransactionOnExecutionContext:(id)a3 withInstrumentation:(id)a4 completionHandler:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  transactionQueue = self->_transactionQueue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  dispatch_assert_queue_V2(transactionQueue);
  v29 = [(PHPhotoLibrary *)self _popChangesRequest];
  if (v10)
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v10[8];
      qos_class_self();
      v14 = PLStringFromQoSClass();
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v14;
      v34 = 2114;
      v35 = v29;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] Request cancelled at %{public}@, %{public}@", buf, 0x20u);
    }

    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "#####  Cancel transaction:", buf, 2u);
    }

    v16 = [v29 inserts];
    v17 = [v16 count];

    if (v17)
    {
      v18 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v29 inserts];
        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "##### cancelled inserts: %@", buf, 0xCu);
      }
    }

    v20 = [v29 updates];
    v21 = [v20 count];

    if (v21)
    {
      v22 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [v29 updates];
        *buf = 138412290;
        v31 = v23;
        _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEBUG, "##### cancelled updates: %@", buf, 0xCu);
      }
    }

    v24 = [v29 deletes];
    v25 = [v24 count];

    if (v25)
    {
      v26 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v29 deletes];
        *buf = 138412290;
        v31 = v27;
        _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "##### cancelled deletes: %@", buf, 0xCu);
      }
    }
  }

  v28 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
  [v11 callTransactionCompletionHandler:v9 withSuccess:0 error:v28];
}

- (void)_endTransaction
{
  if ([(PHPerformChangesRequest *)self->_performChangesRequest hasChangeRequests])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:2061 description:@"Transaction is not clean"];
  }

  transactionQueue = self->_transactionQueue;

  dispatch_queue_set_specific(transactionQueue, "PHPhotoLibrary_transactionPhotoLibrary", 0, 0);
}

- (id)_clientForAccessLevel:(int64_t)a3
{
  v5 = +[PHPhotoLibrary useBindingClient];
  v6 = [(PHPhotoLibrary *)self assetsdClient];
  v7 = v6;
  if (v5)
  {
    if (a3 == 1)
    {
      [v6 photoKitAddClient];
    }

    else
    {
      [v6 photoKitClient];
    }
  }

  else if (a3 == 1)
  {
    [v6 nonBindingPhotoKitAddClient];
  }

  else
  {
    [v6 nonBindingPhotoKitClient];
  }
  v8 = ;
  v9 = v8;

  return v9;
}

- (void)_sendChangesRequest:(id)a3 onExecutionContext:(id)a4 withInstrumentation:(id)a5 reply:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = -[PHPhotoLibrary _clientForAccessLevel:](self, "_clientForAccessLevel:", [v10 accessLevel]);
  v15 = [v14 clientName];
  v16 = v10;
  v17 = v15;
  if (v12)
  {
    v35 = v11;
    if (v12[9] < 1)
    {
      v18 = &stru_1F0FC60C8;
    }

    else
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (remaining retry: %zd)", v12[9]];
    }

    v19 = PLPhotoKitGetLog();
    v12[2] = os_signpost_id_generate(v19);
    v20 = v19;
    v21 = v20;
    v22 = v12[2];
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = v12[8];
      qos_class_self();
      PLStringFromQoSClass();
      v24 = v33 = v13;
      *buf = 138544386;
      v41 = v23;
      v42 = 2114;
      v43 = v18;
      v44 = 2114;
      v45 = v24;
      v46 = 2114;
      v47 = v17;
      v48 = 2114;
      v49 = v16;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v22, "PhotoKit request [client]", "PhotoKit changes: [%{public}@] Request sent%{public}@ at %{public}@ on %{public}@, %{public}@", buf, 0x34u);

      v13 = v33;
    }

    v25 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v12[8];
      qos_class_self();
      PLStringFromQoSClass();
      v34 = v14;
      v27 = self;
      v29 = v28 = v13;
      *buf = 138544386;
      v41 = v26;
      v42 = 2114;
      v43 = v18;
      v44 = 2114;
      v45 = v29;
      v46 = 2114;
      v47 = v17;
      v48 = 2114;
      v49 = v16;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] Request sent%{public}@ at %{public}@ on %{public}@, %{public}@", buf, 0x34u);

      v13 = v28;
      self = v27;
      v14 = v34;
    }

    v11 = v35;
  }

  if ([(PHPhotoLibrary *)self waitForDelayedSaveActions])
  {
    [v16 setWaitForDelayedSaveActions:1];
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __83__PHPhotoLibrary__sendChangesRequest_onExecutionContext_withInstrumentation_reply___block_invoke;
  v36[3] = &unk_1E75A69B0;
  v37 = v12;
  v38 = v16;
  v39 = v13;
  v30 = v13;
  v31 = v16;
  v32 = v12;
  [v11 sendChangesRequest:v31 onClient:v14 reply:v36];
}

void __83__PHPhotoLibrary__sendChangesRequest_onExecutionContext_withInstrumentation_reply___block_invoke(void *a1, int a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a3;
  v8 = v5;
  v23 = v7;
  if (v6)
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v6 + 64);
      qos_class_self();
      v11 = PLStringFromQoSClass();
      v12 = v11;
      *buf = 138544386;
      v13 = @"NO";
      v25 = v10;
      v26 = 2114;
      if (a2)
      {
        v13 = @"YES";
      }

      v27 = v11;
      v28 = 2114;
      v29 = v13;
      v30 = 2112;
      v31 = v23;
      v32 = 2114;
      v33 = v8;
      v14 = v13;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] Reply received at %{public}@, success: %{public}@, error: %@, %{public}@", buf, 0x34u);
    }

    v15 = PLPhotoKitGetLog();
    v16 = v15;
    v17 = *(v6 + 16);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = *(v6 + 64);
      qos_class_self();
      v19 = PLStringFromQoSClass();
      v20 = v19;
      *buf = 138544386;
      v21 = @"NO";
      v25 = v18;
      v26 = 2114;
      if (a2)
      {
        v21 = @"YES";
      }

      v27 = v19;
      v28 = 2114;
      v29 = v21;
      v30 = 2112;
      v31 = v23;
      v32 = 2114;
      v33 = v8;
      v22 = v21;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PhotoKit request [client]", "PhotoKit changes: [%{public}@] Reply received at %{public}@, success: %{public}@, error: %@, %{public}@", buf, 0x34u);
    }

    *(v6 + 16) = 0;
  }

  (*(a1[6] + 16))();
}

- (void)_sendChangesRequest:(id)a3 onExecutionContext:(id)a4 withInstrumentation:(id)a5 remainingRetryCount:(int64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v14)
  {
    v14[9] = a6;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103__PHPhotoLibrary__sendChangesRequest_onExecutionContext_withInstrumentation_remainingRetryCount_reply___block_invoke;
  v20[3] = &unk_1E75A6A00;
  v20[4] = self;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = a6;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  [(PHPhotoLibrary *)self _sendChangesRequest:v19 onExecutionContext:v18 withInstrumentation:v17 reply:v20];
}

void __103__PHPhotoLibrary__sendChangesRequest_onExecutionContext_withInstrumentation_remainingRetryCount_reply___block_invoke(uint64_t a1, int a2, void *a3)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
LABEL_17:
    (*(*(a1 + 64) + 16))();
    v12 = v7;
    goto LABEL_18;
  }

  v8 = PLIsErrorXPCConnectionInvalid();
  v9 = PLIsErrorXPCConnectionInterrupted();
  v10 = v6;
  v7 = v10;
  if ((v8 & 1) == 0 && !v9)
  {
    goto LABEL_17;
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10;
    if (dyld_program_sdk_at_least())
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A278];
      v36[0] = *MEMORY[0x1E696AA08];
      v36[1] = v14;
      v37[0] = v7;
      v37[1] = @"The requested change was interrupted and could not be completed, try again";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
      v12 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3301 userInfo:v15];
    }

    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v33 = v12;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_FAULT, "PhotoKit XPC proxy is invalid. Dropping request on the floor and returning an error: %@ (underlying error %@)", buf, 0x16u);
    }

    v11 = *(a1 + 72);
  }

  if (v11 < 1)
  {
    v7 = v12;
    goto LABEL_17;
  }

  v17 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 72);
    *buf = 134217984;
    v33 = v18;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "PhotoKit XPC proxy is invalid. Retry attempt: %zd", buf, 0xCu);
  }

  v19 = qos_class_self();
  v20 = dispatch_get_global_queue(v19, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__PHPhotoLibrary__sendChangesRequest_onExecutionContext_withInstrumentation_remainingRetryCount_reply___block_invoke_495;
  block[3] = &unk_1E75A69D8;
  v26 = *(a1 + 32);
  v21 = *(&v26 + 1);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  *&v24 = v22;
  *(&v24 + 1) = v23;
  v28 = v26;
  v29 = v24;
  v25 = *(a1 + 64);
  v31 = *(a1 + 72);
  v30 = v25;
  dispatch_async(v20, block);

LABEL_18:
}

- (int64_t)_initialRetryCountForChangesRequest:(id)a3
{
  result = 0;
  if ([a3 accessLevel] == 1)
  {
    pl_dispatch_once();
    if (PLIsScreenShotOrScreenRecordingClient_sIsScreenShotOrScreenRecordingClient)
    {
      return 1;
    }
  }

  return result;
}

- (id)_popChangesRequest
{
  dispatch_assert_queue_V2(self->_transactionQueue);
  v3 = self->_performChangesRequest;
  v4 = objc_alloc_init(PHPerformChangesRequest);
  performChangesRequest = self->_performChangesRequest;
  self->_performChangesRequest = v4;

  return v3;
}

- (void)_commitTransactionOnExecutionContext:(id)a3 withInstrumentation:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(self->_transactionQueue);
  if (PLIsAssetsd())
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:1908 description:@"cannot commit PhotoKit transactions from assetsd"];
  }

  v12 = [(PHPhotoLibrary *)self _popChangesRequest];
  [v12 setInstrumentation:v10];
  v13 = v12;
  if (v10)
  {
    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "#####  Commit transaction:", buf, 2u);
    }

    v15 = [v13 inserts];
    v16 = [v15 count];

    if (v16)
    {
      v17 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v13 inserts];
        *buf = 138412290;
        v38 = v18;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "##### inserts: %@", buf, 0xCu);
      }
    }

    v19 = [v13 updates];
    v20 = [v19 count];

    if (v20)
    {
      v21 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v13 updates];
        *buf = 138412290;
        v38 = v22;
        _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "##### updates: %@", buf, 0xCu);
      }
    }

    v23 = [v13 deletes];
    v24 = [v23 count];

    if (v24)
    {
      v25 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v13 deletes];
        *buf = 138412290;
        v38 = v26;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEBUG, "##### deletes: %@", buf, 0xCu);
      }
    }
  }

  v27 = [v13 hasChangeRequests];
  if (!v27)
  {
    v29 = 0;
LABEL_23:
    [v9 callTransactionCompletionHandler:v11 withSuccess:v27 ^ 1u error:v29];
    goto LABEL_24;
  }

  v36 = 0;
  v28 = [(PHPhotoLibrary *)self _preflightRequest:v13 withError:&v36];
  v29 = v36;
  if (!v28)
  {
    v31 = [(PHPhotoLibrary *)self _lazyPhotoLibrary];
    [v13 notifyChangesTransactionFailedWithLazyPhotoLibrary:v31 error:v29];

    goto LABEL_23;
  }

  v30 = [(PHPhotoLibrary *)self _initialRetryCountForChangesRequest:v13];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __93__PHPhotoLibrary__commitTransactionOnExecutionContext_withInstrumentation_completionHandler___block_invoke;
  v33[3] = &unk_1E75A69B0;
  v33[4] = self;
  v34 = v13;
  v35 = v11;
  [(PHPhotoLibrary *)self _sendChangesRequest:v34 onExecutionContext:v9 withInstrumentation:v10 remainingRetryCount:v30 reply:v33];

LABEL_24:
}

void __93__PHPhotoLibrary__commitTransactionOnExecutionContext_withInstrumentation_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = [*(a1 + 32) _lazyPhotoLibrary];
    [*(a1 + 40) notifyChangesTransactionFailedWithLazyPhotoLibrary:v5 error:v8];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  [*(a1 + 40) didSendChangesToServiceWithResult:a2];
  v7 = [MEMORY[0x1E69BF2B0] sharedInstance];
  [v7 photosAccessAllowedWithScope:7];

  if (PLPhotosAccessAllowed())
  {
    [*(*(a1 + 32) + 384) distributeChangesSinceLastCheckpoint];
  }
}

- (void)_beginTransaction
{
  if ([(PHPerformChangesRequest *)self->_performChangesRequest hasChangeRequests])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:1902 description:@"Transaction is not clean"];
  }

  transactionQueue = self->_transactionQueue;

  dispatch_queue_set_specific(transactionQueue, "PHPhotoLibrary_transactionPhotoLibrary", self, 0);
}

- (void)unregisterCloudStatusObserver:(id)a3
{
  if (a3)
  {
    [(PHPhotoLibrary *)self _removeCloudStatusObserver:?];
  }
}

- (void)registerCloudStatusObserver:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [PHPhotoLibrary authorizationStatusForAccessLevel:2];
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(PHPhotoLibrary *)self _addCloudStatusObservers:v6 authorizationStatus:v5];

    if ((v5 - 3) > 1)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __46__PHPhotoLibrary_registerCloudStatusObserver___block_invoke;
      v9[3] = &unk_1E75A6878;
      v9[4] = self;
      [PHPhotoLibrary requestAuthorizationForAccessLevel:2 handler:v9];
    }

    else
    {
      v7 = [(PHPhotoLibrary *)self photoLibrary];
      if (!v7)
      {
        v8 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Unexpected error registering cloud status observer, could not access photo library", buf, 2u);
        }
      }
    }
  }
}

- (void)unregisterChangeObserver:(id)observer
{
  if (observer)
  {
    [(PHPhotoLibrary *)self _removeChangeObserver:?];
  }
}

- (void)registerChangeObserver:(id)observer
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = observer;
  if (v4)
  {
    v5 = [PHPhotoLibrary authorizationStatusForAccessLevel:2];
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(PHPhotoLibrary *)self _addChangeObservers:v6 authorizationStatus:v5];

    if ((v5 - 3) > 1)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __41__PHPhotoLibrary_registerChangeObserver___block_invoke;
      v9[3] = &unk_1E75A6878;
      v9[4] = self;
      [PHPhotoLibrary requestAuthorizationForAccessLevel:2 handler:v9];
    }

    else
    {
      v7 = [(PHPhotoLibrary *)self photoLibrary];
      if (!v7)
      {
        v8 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Unexpected error registering change observer, could not access photo library", buf, 2u);
        }
      }
    }
  }
}

- (void)appPrivateDataWriteFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self photoLibraryURL];
  [(PHPhotoLibrary *)self _handleLibraryBecameUnavailable:v5 reason:v4];
}

- (void)_onQueueNotifyAvailabilityObserversWithReason:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [(PHPhotoLibrary *)self availabilityObservers];
  v6 = [v5 allObjects];

  availabilityObserversNotifyQueue = self->_availabilityObserversNotifyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PHPhotoLibrary__onQueueNotifyAvailabilityObserversWithReason___block_invoke;
  block[3] = &unk_1E75AB248;
  v11 = v6;
  v12 = self;
  v13 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(availabilityObserversNotifyQueue, block);
}

void __64__PHPhotoLibrary__onQueueNotifyAvailabilityObserversWithReason___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = PLPhotosObjectLifecycleGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = objc_opt_class();
          v11 = *(a1 + 40);
          *buf = 138412802;
          v22 = v10;
          v23 = 2048;
          v24 = v11;
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "%@ %p notifying availability observer %@", buf, 0x20u);
        }

        [v7 photoLibraryDidBecomeUnavailable:*(a1 + 40)];
        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v4);
  }

  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(v13 + 328);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PHPhotoLibrary__onQueueNotifyAvailabilityObserversWithReason___block_invoke_485;
  block[3] = &unk_1E75AAEB0;
  block[4] = v13;
  v16 = v12;
  dispatch_async(v14, block);
}

- (void)_notifyAvailabilityObserversWithReason:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self _setUnavailabilityReason:v4];
  v6 = PLPhotoKitGetLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PHPhotoLibrary *)self unavailabilityReason];
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Photo Library became unavailable because: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    isolationQueue = self->_isolationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PHPhotoLibrary__notifyAvailabilityObserversWithReason___block_invoke;
    v10[3] = &unk_1E75A7300;
    objc_copyWeak(&v12, buf);
    v11 = v4;
    dispatch_async(isolationQueue, v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Ignoring additional unavailability reason received: %@", buf, 0xCu);
    }
  }
}

void __57__PHPhotoLibrary__notifyAvailabilityObserversWithReason___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412546;
    v5 = objc_opt_class();
    v6 = 2048;
    v7 = WeakRetained;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p notifying availability observers", &v4, 0x16u);
  }

  [WeakRetained _onQueueNotifyAvailabilityObserversWithReason:*(a1 + 32)];
}

- (BOOL)_setUnavailabilityReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:1764 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PHPhotoLibrary *)v6 unavailabilityReason];

  if (!v7)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = [v5 domain];
    v10 = [v5 code];
    v11 = [v5 userInfo];
    v12 = [v8 ph_errorWithDomain:v9 code:v10 userInfo:v11];
    [(PHPhotoLibrary *)v6 setUnavailabilityReason:v12];
  }

  objc_sync_exit(v6);

  return v7 == 0;
}

- (void)_handleServiceConnectionClosed:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v8[0] = *MEMORY[0x1E696A998];
  v5 = [(PHPhotoLibrary *)self photoLibraryURL];
  v8[1] = *MEMORY[0x1E696A588];
  v9[0] = v5;
  v9[1] = @"Connection to photos service has been invalidated";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v7 = [v4 errorWithDomain:@"PHPhotosErrorDomain" code:3133 userInfo:v6];

  [(PHPhotoLibrary *)self _notifyAvailabilityObserversWithReason:v7];
}

- (void)_startObservingServiceConnectionInvalidated
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleServiceConnectionClosed_ name:*MEMORY[0x1E69BF3A8] object:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == "PHPhotoLibraryFileSystemVolumeKVOContext")
  {
    libraryFileSystemVolume = self->_libraryFileSystemVolume;
    if (libraryFileSystemVolume == v11)
    {
      if ([(PLFileSystemVolume *)libraryFileSystemVolume faultingState])
      {
        v14 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          v15 = "Ignoring isOffline state change for _libraryFileSystemVolume due to faultingState";
          v16 = v14;
          v17 = OS_LOG_TYPE_DEBUG;
          v18 = 2;
LABEL_9:
          _os_log_impl(&dword_19C86F000, v16, v17, v15, &v20, v18);
          goto LABEL_10;
        }

        goto LABEL_10;
      }

      if ([(PLFileSystemVolume *)self->_libraryFileSystemVolume isOffline])
      {
        v14 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_libraryFileSystemVolume;
          v20 = 134217984;
          v21 = v19;
          v15 = "Unexpected: _libraryFileSystemVolume %p is offline";
          v16 = v14;
          v17 = OS_LOG_TYPE_DEFAULT;
          v18 = 12;
          goto LABEL_9;
        }

LABEL_10:
      }
    }
  }
}

- (void)_handleLibraryBecameUnavailable:(id)a3 reason:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 path];
  v9 = [(PHPhotoLibrary *)self photoLibraryURL];
  v10 = [v9 path];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = PHErrorFromPLError(v7);
    [(PHPhotoLibrary *)self _notifyAvailabilityObserversWithReason:v12];
  }

  else
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PHPhotoLibrary *)self photoLibraryURL];
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "unavailable library %@ does not match mine %@", &v14, 0x16u);
    }
  }
}

- (void)_startWatchingForLibraryAvailability
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(PHPhotoLibrary *)self _startWatchingFileSystemVolumeForLibraryAvailability];
  [(PHPhotoLibrary *)self _startObservingServiceConnectionInvalidated];
  objc_initWeak(&location, self);
  v3 = [(PHPhotoLibrary *)self photoLibrary];
  v4 = [v3 assetsdClient];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PHPhotoLibrary__startWatchingForLibraryAvailability__block_invoke;
  v5[3] = &unk_1E75A6988;
  objc_copyWeak(&v6, &location);
  [v4 addPhotoLibraryUnavailabilityHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __54__PHPhotoLibrary__startWatchingForLibraryAvailability__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLibraryBecameUnavailable:v6 reason:v5];
}

- (void)unregisterAvailabilityObserver:(id)observer
{
  v4 = observer;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PHPhotoLibrary_unregisterAvailabilityObserver___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v7);
}

void __49__PHPhotoLibrary_unregisterAvailabilityObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availabilityObservers];
  v3 = [v2 count];

  v4 = [*(a1 + 32) availabilityObservers];
  [v4 removeObject:*(a1 + 40)];

  if (v3 == 1)
  {
    v5 = [*(a1 + 32) availabilityObservers];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = *(a1 + 32);

      [v7 _stopWatchingForLibraryAvailability];
    }
  }
}

- (void)registerAvailabilityObserver:(id)observer
{
  v4 = observer;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PHPhotoLibrary_registerAvailabilityObserver___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v7);
}

void __47__PHPhotoLibrary_registerAvailabilityObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availabilityObservers];
  v3 = [v2 count];

  v4 = [*(a1 + 32) availabilityObservers];
  [v4 addObject:*(a1 + 40)];

  if (!v3)
  {
    v5 = [*(a1 + 32) availabilityObservers];
    v6 = [v5 count];

    if (v6 == 1)
    {
      v7 = *(a1 + 32);

      [v7 _startWatchingForLibraryAvailability];
    }
  }
}

- (id)managedObjectContext
{
  v2 = [(PHPhotoLibrary *)self photoLibrary];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (id)pl_photoLibraryForCMM
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = +[PHPhotoLibrary sharedLazyPhotoLibraryForCMM];
  v4 = [v3 objectValue];
  if (!v4)
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(PHPhotoLibrary *)self debugDescription];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "Unable to create CMM PLPhotoLibrary for PHPhotoLibrary: %@", &v8, 0xCu);
    }
  }

  return v4;
}

- (NSString)databaseUUID
{
  v2 = [(PHPhotoLibrary *)self photoLibrary];
  v3 = [v2 managedObjectContext];
  v4 = [v3 storeUUID];

  return v4;
}

- (void)accountDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69598B8]];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69597F8]];

  if (v6)
  {

    [(PHPhotoLibrary *)self _resetCachedValues];
  }
}

- (void)_resetCachedValues
{
  [(PLLazyObject *)self->_lazyIsReadyForAnalysis resetObject];
  [(PLLazyObject *)self->_lazyIsReadyForAnalysisQuickCheck resetObject];
  [(PLLazyObject *)self->_lazyIsReadyForAnalysisCPLInitialDownloadCompleted resetObject];
  [(PLLazyObject *)self->_lazyCPLStatus resetObjectWithHandler:&__block_literal_global_474];
  if ([(PHPhotoLibraryCloudStatusObserverRegistrar *)self->_cloudStatusObserverRegistrar hasObservers])
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__PHPhotoLibrary__resetCachedValues__block_invoke_2;
    aBlock[3] = &unk_1E75A9A90;
    objc_copyWeak(&v9, &location);
    v3 = _Block_copy(aBlock);
    cplStatusDelegateQueue = self->_cplStatusDelegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PHPhotoLibrary__resetCachedValues__block_invoke_3;
    block[3] = &unk_1E75AADE8;
    v7 = v3;
    v5 = v3;
    dispatch_async(cplStatusDelegateQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {

    [(PHPhotoLibrary *)self _setCachedCloudStatus:0];
  }
}

void __36__PHPhotoLibrary__resetCachedValues__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _setupLazyCPLStatusIfNecessary];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _processCPLStatusDidChange:v4];
}

- (id)_initializeIsReadyForAnalysisCPLInitialDownloadCompleted
{
  v2 = [(PHPhotoLibrary *)self assetsdClient];
  v3 = [v2 cloudInternalClient];
  v4 = [v3 isReadyForAnalysisCPLInitialDownloadCompleted];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initializeIsReadyForAnalysisQuickCheck
{
  v2 = [(PHPhotoLibrary *)self assetsdClient];
  v3 = [v2 cloudInternalClient];
  v4 = [v3 isReadyForAnalysisQuickCheck];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initializeIsReadyForAnalysis
{
  v2 = [(PHPhotoLibrary *)self assetsdClient];
  v3 = [v2 cloudInternalClient];
  v4 = [v3 isReadyForAnalysis];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_processCPLStatusDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self _cachedCloudStatus];
  v6 = [[PHPhotoLibraryCloudStatus alloc] initWithCPLStatus:v4 isEnabled:[(PHPhotoLibrary *)self isCloudPhotoLibraryEnabled]];

  if (![(PHPhotoLibraryCloudStatus *)v6 isEqual:v5])
  {
    [(PHPhotoLibrary *)self _setCachedCloudStatus:v6];
    if (([PHPhotoLibrary authorizationStatusForAccessLevel:2]- 3) <= 1)
    {
      objc_initWeak(&location, self);
      cloudStatusHandlerQueue = self->_cloudStatusHandlerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PHPhotoLibrary__processCPLStatusDidChange___block_invoke;
      block[3] = &unk_1E75A7300;
      objc_copyWeak(&v10, &location);
      v9 = v6;
      dispatch_async(cloudStatusHandlerQueue, block);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __45__PHPhotoLibrary__processCPLStatusDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishCloudStatusUpdate:*(a1 + 32)];
}

- (void)statusDidChange:(id)a3
{
  v4 = a3;
  if ([(PHPhotoLibraryCloudStatusObserverRegistrar *)self->_cloudStatusObserverRegistrar hasObservers])
  {
    [(PHPhotoLibrary *)self _processCPLStatusDidChange:v4];
  }
}

- (id)_deriveMainScopeIdentifierFromCPLSettings
{
  v2 = [(PLCPLSettingsObserver *)self->_cplSettingsObserver settings];
  v3 = [v2 deriveMainScopeIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  }

  v6 = v5;

  return v6;
}

- (id)_initializeCPLStatus
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(PHPhotoLibrary *)self isCPLSyncablePhotoLibrary])
  {
    v3 = [(PHPhotoLibrary *)self photoLibrary];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 pathManager];
      v6 = CPLStatusFromPathManager();

      [v6 setDelegateQueue:self->_cplStatusDelegateQueue];
      [v6 setDelegate:self];
    }

    else
    {
      v7 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(PHPhotoLibrary *)self debugDescription];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Unable to create PLPhotoLibrary instance for newCPLStatusWithPhotoLibrary: %@", &v10, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_invalidateEverythingWithReason:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412802;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p _invalidateEverythingWithReason:%@", &v8, 0x20u);
  }

  [(PHPhotoLibrary *)self _stopWatchingForLibraryAvailability];
  [(PLLazyObject *)self->_lazyAppPrivateData invalidate];
  [(PLLazyObject *)self->_lazyCacheMetricsCollectorClient invalidate];
  [(PLLazyObject *)self->_lazyPhotoLibrary invalidate];
  [(PLLazyObject *)self->_lazyMainQueueConcurrencyPhotoLibrary invalidate];
  [(PLLazyObject *)self->_lazyMainQueuePhotoLibrary invalidate];
  [(PLLazyObject *)self->_lazyBackgroundQueuePhotoLibrary invalidate];
  [(PLLazyObject *)self->_lazyUserInitiatedQueuePhotoLibrary invalidate];
  [(PLLazyObject *)self->_lazyBackgroundQueueObjectFetchingPhotoLibrary invalidate];
  [(PLLazyObject *)self->_lazyChangeHandlingPhotoLibrary invalidate];
  [(PLLazyObject *)self->_lazyCPLStatus invalidateWithHandler:&__block_literal_global_470];
  [(PLLazyObject *)self->_lazyIsReadyForAnalysis invalidate];
  [(PLLazyObject *)self->_lazyIsReadyForAnalysisQuickCheck invalidate];
  [(PLLazyObject *)self->_lazyIsReadyForAnalysisCPLInitialDownloadCompleted invalidate];
  [(PLLazyObject *)self->_lazyMainScopeIdentifier invalidate];
  [(PLLazyObject *)self->_lazyAnalysisCoalescer invalidate];
  [(PLLazyObject *)self->_lazySearchIndex invalidate];
  v6 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = 138412802;
    v9 = v7;
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "%@ %p finished _invalidateEverythingWithReason:%@", &v8, 0x20u);
  }
}

- (PHPhotoLibrary)initWithPhotoLibraryBundle:(id)a3 type:(unsigned __int16)a4
{
  v213 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v207.receiver = self;
  v207.super_class = PHPhotoLibrary;
  v8 = [(PHPhotoLibrary *)&v207 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.PHPhotoLibrary.changes", 0);
    transactionQueue = v8->_transactionQueue;
    v8->_transactionQueue = v9;

    v8->_type = a4;
    v11 = objc_alloc_init(PHPerformChangesRequest);
    performChangesRequest = v8->_performChangesRequest;
    v8->_performChangesRequest = v11;

    v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    availabilityObservers = v8->_availabilityObservers;
    v8->_availabilityObservers = v13;

    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    changeNotificationInfo = v8->_changeNotificationInfo;
    v8->_changeNotificationInfo = v15;

    v17 = [v7 libraryURL];
    v18 = [v17 copy];
    photoLibraryURL = v8->_photoLibraryURL;
    v8->_photoLibraryURL = v18;

    v8->_wellKnownPhotoLibraryIdentifier = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryIdentifierForURL:v8->_photoLibraryURL];
    objc_storeStrong(&v8->_photoLibraryBundle, a3);
    v20 = objc_alloc_init(_TtC6Photos27PHDatabaseStatisticsTracker);
    objc_storeStrong(&v8->_databaseStatisticsTracker, v20);
    v21 = objc_initWeak(location, v8);

    v22 = objc_alloc(MEMORY[0x1E69BF270]);
    v203[0] = MEMORY[0x1E69E9820];
    v203[1] = 3221225472;
    v203[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke;
    v203[3] = &unk_1E75A6940;
    objc_copyWeak(&v206, location);
    v23 = v7;
    v204 = v23;
    v24 = v20;
    v205 = v24;
    v25 = [v22 initWithRetriableBlock:v203];

    objc_destroyWeak(&v206);
    objc_destroyWeak(location);
    lazyPhotoLibrary = v8->_lazyPhotoLibrary;
    v8->_lazyPhotoLibrary = v25;

    v27 = objc_initWeak(location, v8);
    v28 = objc_alloc(MEMORY[0x1E69BF270]);
    v199[0] = MEMORY[0x1E69E9820];
    v199[1] = 3221225472;
    v199[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_2;
    v199[3] = &unk_1E75A6940;
    objc_copyWeak(&v202, location);
    v29 = v23;
    v200 = v29;
    v30 = v24;
    v201 = v30;
    v31 = [v28 initWithRetriableBlock:v199];

    objc_destroyWeak(&v202);
    objc_destroyWeak(location);
    lazyMainQueueConcurrencyPhotoLibrary = v8->_lazyMainQueueConcurrencyPhotoLibrary;
    v8->_lazyMainQueueConcurrencyPhotoLibrary = v31;

    v33 = objc_initWeak(location, v8);
    v34 = objc_alloc(MEMORY[0x1E69BF270]);
    v195[0] = MEMORY[0x1E69E9820];
    v195[1] = 3221225472;
    v195[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_3;
    v195[3] = &unk_1E75A6940;
    objc_copyWeak(&v198, location);
    v35 = v29;
    v196 = v35;
    v36 = v30;
    v197 = v36;
    v37 = [v34 initWithRetriableBlock:v195];

    objc_destroyWeak(&v198);
    objc_destroyWeak(location);
    lazyMainQueuePhotoLibrary = v8->_lazyMainQueuePhotoLibrary;
    v8->_lazyMainQueuePhotoLibrary = v37;

    v39 = objc_initWeak(location, v8);
    v40 = objc_alloc(MEMORY[0x1E69BF270]);
    v191[0] = MEMORY[0x1E69E9820];
    v191[1] = 3221225472;
    v191[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_4;
    v191[3] = &unk_1E75A6940;
    objc_copyWeak(&v194, location);
    v41 = v35;
    v192 = v41;
    v42 = v36;
    v193 = v42;
    v43 = [v40 initWithRetriableBlock:v191];

    objc_destroyWeak(&v194);
    objc_destroyWeak(location);
    lazyBackgroundQueuePhotoLibrary = v8->_lazyBackgroundQueuePhotoLibrary;
    v8->_lazyBackgroundQueuePhotoLibrary = v43;

    v45 = objc_initWeak(location, v8);
    v46 = objc_alloc(MEMORY[0x1E69BF270]);
    v187[0] = MEMORY[0x1E69E9820];
    v187[1] = 3221225472;
    v187[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_5;
    v187[3] = &unk_1E75A6940;
    objc_copyWeak(&v190, location);
    v47 = v41;
    v188 = v47;
    v48 = v42;
    v189 = v48;
    v49 = [v46 initWithRetriableBlock:v187];

    objc_destroyWeak(&v190);
    objc_destroyWeak(location);
    lazyUserInitiatedQueuePhotoLibrary = v8->_lazyUserInitiatedQueuePhotoLibrary;
    v8->_lazyUserInitiatedQueuePhotoLibrary = v49;

    v51 = objc_initWeak(location, v8);
    v52 = objc_alloc(MEMORY[0x1E69BF270]);
    v183[0] = MEMORY[0x1E69E9820];
    v183[1] = 3221225472;
    v183[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_6;
    v183[3] = &unk_1E75A6940;
    objc_copyWeak(&v186, location);
    v53 = v47;
    v184 = v53;
    v54 = v48;
    v185 = v54;
    v55 = [v52 initWithRetriableBlock:v183];

    objc_destroyWeak(&v186);
    objc_destroyWeak(location);
    lazyBackgroundQueueObjectFetchingPhotoLibrary = v8->_lazyBackgroundQueueObjectFetchingPhotoLibrary;
    v8->_lazyBackgroundQueueObjectFetchingPhotoLibrary = v55;

    v57 = objc_initWeak(location, v8);
    v58 = objc_alloc(MEMORY[0x1E69BF270]);
    v179[0] = MEMORY[0x1E69E9820];
    v179[1] = 3221225472;
    v179[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_7;
    v179[3] = &unk_1E75A6940;
    objc_copyWeak(&v182, location);
    v59 = v53;
    v180 = v59;
    v60 = v54;
    v181 = v60;
    v61 = [v58 initWithRetriableBlock:v179];

    objc_destroyWeak(&v182);
    objc_destroyWeak(location);
    lazyChangeHandlingPhotoLibrary = v8->_lazyChangeHandlingPhotoLibrary;
    v8->_lazyChangeHandlingPhotoLibrary = v61;

    v63 = objc_initWeak(location, v8);
    v64 = objc_alloc(MEMORY[0x1E69BF270]);
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 3221225472;
    v177[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_8;
    v177[3] = &unk_1E75A9848;
    objc_copyWeak(&v178, location);
    v65 = [v64 initWithBlock:v177];
    objc_destroyWeak(&v178);
    objc_destroyWeak(location);
    lazyAlbumRootFolderObjectID = v8->_lazyAlbumRootFolderObjectID;
    v8->_lazyAlbumRootFolderObjectID = v65;

    v67 = objc_initWeak(location, v8);
    v68 = objc_alloc(MEMORY[0x1E69BF270]);
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_9;
    v175[3] = &unk_1E75A9848;
    objc_copyWeak(&v176, location);
    v69 = [v68 initWithBlock:v175];
    objc_destroyWeak(&v176);
    objc_destroyWeak(location);
    lazyProjectAlbumRootFolderObjectID = v8->_lazyProjectAlbumRootFolderObjectID;
    v8->_lazyProjectAlbumRootFolderObjectID = v69;

    v71 = objc_initWeak(location, v8);
    v72 = objc_alloc(MEMORY[0x1E69BF270]);
    v173[0] = MEMORY[0x1E69E9820];
    v173[1] = 3221225472;
    v173[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_10;
    v173[3] = &unk_1E75A9848;
    objc_copyWeak(&v174, location);
    v73 = [v72 initWithRetriableBlock:v173];
    objc_destroyWeak(&v174);
    objc_destroyWeak(location);
    lazyAppPrivateData = v8->_lazyAppPrivateData;
    v8->_lazyAppPrivateData = v73;

    v75 = objc_initWeak(location, v8);
    v76 = objc_alloc(MEMORY[0x1E69BF270]);
    v171[0] = MEMORY[0x1E69E9820];
    v171[1] = 3221225472;
    v171[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_11;
    v171[3] = &unk_1E75A9848;
    objc_copyWeak(&v172, location);
    v77 = [v76 initWithBlock:v171];
    objc_destroyWeak(&v172);
    objc_destroyWeak(location);
    lazyPhotoLibraryIdentifier = v8->_lazyPhotoLibraryIdentifier;
    v8->_lazyPhotoLibraryIdentifier = v77;

    v79 = objc_initWeak(location, v8);
    v80 = objc_alloc(MEMORY[0x1E69BF270]);
    v169[0] = MEMORY[0x1E69E9820];
    v169[1] = 3221225472;
    v169[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_12;
    v169[3] = &unk_1E75A9848;
    objc_copyWeak(&v170, location);
    v81 = [v80 initWithBlock:v169];
    objc_destroyWeak(&v170);
    objc_destroyWeak(location);
    lazySearchIndex = v8->_lazySearchIndex;
    v8->_lazySearchIndex = v81;

    v83 = dispatch_queue_create("com.apple.PHPhotoLibrary.isolation", 0);
    isolationQueue = v8->_isolationQueue;
    v8->_isolationQueue = v83;

    if ([(PHPhotoLibrary *)v8 isSystemPhotoLibrary]&& (PLIsAssetsd() & 1) == 0)
    {
      v87 = objc_initWeak(location, v8);

      v88 = objc_alloc(MEMORY[0x1E69BF270]);
      v167[0] = MEMORY[0x1E69E9820];
      v167[1] = 3221225472;
      v167[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_13;
      v167[3] = &unk_1E75A9848;
      objc_copyWeak(&v168, location);
      v86 = [v88 initWithBlock:v167];
      objc_destroyWeak(&v168);
      objc_destroyWeak(location);
    }

    else
    {
      v85 = PLCacheMetricsCollectorGetLog();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *location = 0;
        _os_log_impl(&dword_19C86F000, v85, OS_LOG_TYPE_DEFAULT, "skipping initializing cacheMetrics collection in PHPhotoLibrary: not using system library or initializing in assetsd", location, 2u);
      }

      v86 = [objc_alloc(MEMORY[0x1E69BF270]) initWithObject:0];
    }

    lazyCacheMetricsCollectorClient = v8->_lazyCacheMetricsCollectorClient;
    v8->_lazyCacheMetricsCollectorClient = v86;

    v90 = objc_initWeak(location, v8);
    v91 = objc_alloc(MEMORY[0x1E69BF270]);
    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 3221225472;
    v165[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_445;
    v165[3] = &unk_1E75A9848;
    objc_copyWeak(&v166, location);
    v92 = [v91 initWithRetriableBlock:v165];
    objc_destroyWeak(&v166);
    objc_destroyWeak(location);
    lazyCPLStatus = v8->_lazyCPLStatus;
    v8->_lazyCPLStatus = v92;

    v94 = objc_initWeak(location, v8);
    v95 = objc_alloc(MEMORY[0x1E69BF270]);
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_2_446;
    v163[3] = &unk_1E75A9848;
    objc_copyWeak(&v164, location);
    v96 = [v95 initWithRetriableBlock:v163];
    objc_destroyWeak(&v164);
    objc_destroyWeak(location);
    lazyIsReadyForAnalysis = v8->_lazyIsReadyForAnalysis;
    v8->_lazyIsReadyForAnalysis = v96;

    v98 = objc_initWeak(location, v8);
    v99 = objc_alloc(MEMORY[0x1E69BF270]);
    v161[0] = MEMORY[0x1E69E9820];
    v161[1] = 3221225472;
    v161[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_3_447;
    v161[3] = &unk_1E75A9848;
    objc_copyWeak(&v162, location);
    v100 = [v99 initWithRetriableBlock:v161];
    objc_destroyWeak(&v162);
    objc_destroyWeak(location);
    lazyIsReadyForAnalysisQuickCheck = v8->_lazyIsReadyForAnalysisQuickCheck;
    v8->_lazyIsReadyForAnalysisQuickCheck = v100;

    v102 = objc_initWeak(location, v8);
    v103 = objc_alloc(MEMORY[0x1E69BF270]);
    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 3221225472;
    v159[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_4_448;
    v159[3] = &unk_1E75A9848;
    objc_copyWeak(&v160, location);
    v104 = [v103 initWithRetriableBlock:v159];
    objc_destroyWeak(&v160);
    objc_destroyWeak(location);
    lazyIsReadyForAnalysisCPLInitialDownloadCompleted = v8->_lazyIsReadyForAnalysisCPLInitialDownloadCompleted;
    v8->_lazyIsReadyForAnalysisCPLInitialDownloadCompleted = v104;

    v106 = [objc_alloc(MEMORY[0x1E69BE2C8]) initWithLibraryBundle:v59];
    cplSettingsObserver = v8->_cplSettingsObserver;
    v8->_cplSettingsObserver = v106;

    [(PLCPLSettingsObserver *)v8->_cplSettingsObserver setDelegate:v8];
    v108 = objc_initWeak(location, v8);

    v109 = objc_alloc(MEMORY[0x1E69BF270]);
    v157[0] = MEMORY[0x1E69E9820];
    v157[1] = 3221225472;
    v157[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_5_450;
    v157[3] = &unk_1E75A9848;
    objc_copyWeak(&v158, location);
    v110 = [v109 initWithBlock:v157];
    objc_destroyWeak(&v158);
    objc_destroyWeak(location);
    lazyMainScopeIdentifier = v8->_lazyMainScopeIdentifier;
    v8->_lazyMainScopeIdentifier = v110;

    v112 = objc_initWeak(location, v8);
    v113 = objc_alloc(MEMORY[0x1E69BF270]);
    v155[0] = MEMORY[0x1E69E9820];
    v155[1] = 3221225472;
    v155[2] = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_6_451;
    v155[3] = &unk_1E75A9848;
    objc_copyWeak(&v156, location);
    v114 = [v113 initWithBlock:v155];
    objc_destroyWeak(&v156);
    objc_destroyWeak(location);
    lazyAnalysisCoalescer = v8->_lazyAnalysisCoalescer;
    v8->_lazyAnalysisCoalescer = v114;

    v116 = objc_alloc_init(PHChangeHandlingDebugger);
    changeHandlingDebugger = v8->_changeHandlingDebugger;
    v8->_changeHandlingDebugger = v116;

    v118 = [PHPhotoLibraryChangeObserverRegistrar alloc];
    photoLibraryBundle = v8->_photoLibraryBundle;
    v120 = v8->_changeHandlingDebugger;
    v121 = +[PHPhotoLibrary uniqueObjectIDCache];
    v122 = [(PHPhotoLibraryChangeObserverRegistrar *)v118 initWithLibraryBundle:photoLibraryBundle changeHandlingDebugger:v120 uniqueObjectIDCache:v121];
    changeObserverRegistrar = v8->_changeObserverRegistrar;
    v8->_changeObserverRegistrar = v122;

    v124 = [[PHPhotoLibraryCloudStatusObserverRegistrar alloc] initWithLibraryBundle:v8->_photoLibraryBundle];
    cloudStatusObserverRegistrar = v8->_cloudStatusObserverRegistrar;
    v8->_cloudStatusObserverRegistrar = v124;

    objc_initWeak(location, v8);
    v150 = MEMORY[0x1E69E9820];
    v151 = 3221225472;
    v152 = __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_7_456;
    v153 = &unk_1E75A9A90;
    objc_copyWeak(&v154, location);
    [(PHPhotoLibraryCloudStatusObserverRegistrar *)v8->_cloudStatusObserverRegistrar setBeginObservingCloudStatusBlock:&v150];
    v126 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (PLIsForegroundApplication())
    {
      v127 = QOS_CLASS_UTILITY;
    }

    else
    {
      v127 = QOS_CLASS_BACKGROUND;
    }

    v128 = dispatch_queue_attr_make_with_qos_class(v126, v127, 0);
    v129 = dispatch_queue_create("com.apple.photos.PHPhotoLibraryCloudStatus-queue", v128);
    cloudStatusHandlerQueue = v8->_cloudStatusHandlerQueue;
    v8->_cloudStatusHandlerQueue = v129;

    v131 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (PLIsForegroundApplication())
    {
      v132 = QOS_CLASS_UTILITY;
    }

    else
    {
      v132 = QOS_CLASS_BACKGROUND;
    }

    v133 = dispatch_queue_attr_make_with_qos_class(v131, v132, 0);
    v134 = dispatch_queue_create("com.apple.photos.CPLStatusDelegate-queue", v133);
    cplStatusDelegateQueue = v8->_cplStatusDelegateQueue;
    v8->_cplStatusDelegateQueue = v134;

    v136 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v137 = dispatch_queue_create("com.apple.photos.notifyAvailabilityObservers", v136);
    availabilityObserversNotifyQueue = v8->_availabilityObserversNotifyQueue;
    v8->_availabilityObserversNotifyQueue = v137;

    v139 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v140 = dispatch_queue_create("com.apple.photos.readyForAnalysis", v139);
    readyForAnalysisQueue = v8->_readyForAnalysisQueue;
    v8->_readyForAnalysisQueue = v140;

    v142 = [MEMORY[0x1E696AD88] defaultCenter];
    [v142 addObserver:v8 selector:sel_handleMergeNotification_ name:*MEMORY[0x1E69BEA00] object:0];

    if ([(PHPhotoLibrary *)v8 isSystemPhotoLibrary])
    {
      v143 = [MEMORY[0x1E696AD88] defaultCenter];
      v144 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
      [v143 addObserver:v8 selector:sel_accountDidChange_ name:*MEMORY[0x1E69BE8E8] object:v144];
    }

    v145 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:v8];
    stateCaptureHandler = v8->_stateCaptureHandler;
    v8->_stateCaptureHandler = v145;

    objc_destroyWeak(&v154);
    objc_destroyWeak(location);
  }

  v147 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
  {
    v148 = objc_opt_class();
    *location = 138412802;
    *&location[4] = v148;
    v209 = 2048;
    v210 = v8;
    v211 = 2112;
    v212 = v7;
    _os_log_impl(&dword_19C86F000, v147, OS_LOG_TYPE_DEBUG, "%@ %p initWithPhotoLibraryBundle:%@", location, 0x20u);
  }

  return v8;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = newPhotoLibrary("PHPhotoLibrary", a1[4], a1[5]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = objc_alloc_init(MEMORY[0x1E69BE698]);
    [v6 setAutomaticallyMergesContext:0];
    v13 = 0;
    v7 = [MEMORY[0x1E69BE528] newPhotoLibraryWithName:"PHPhotoLibraryMainQueueConcurrency" loadedFromBundle:v4 options:v6 error:&v13];
    v8 = v13;
    if (v7)
    {
      v9 = [v7 managedObjectContext];
      [v5 addManagedObjectContext:v9];
    }

    else
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v4 libraryURL];
        *buf = 136446722;
        v15 = "PHPhotoLibraryMainQueueConcurrency";
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "failed to load main queue photo library %{public}s with url %@, %@", buf, 0x20u);
      }

      handleNilPhotoLibraryError("PHPhotoLibraryMainQueueConcurrency", v4, v8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_3(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = newPhotoLibrary("PHPhotoLibraryMainQueueQoS", a1[4], a1[5]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_4(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = newPhotoLibrary("PHPhotoLibraryBackgroundQueueQoS", a1[4], a1[5]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_5(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = newPhotoLibrary("PHPhotoLibraryUserInitiatedQoS", a1[4], a1[5]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_6(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = newPhotoLibrary("PHPhotoLibraryBackgroundQueueObjectFetching", a1[4], a1[5]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_7(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = newPhotoLibrary("PHPhotoLibraryChangeHandling", a1[4], a1[5]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PHQuery fetchRootFolderIDForAlbumKind:3999 photoLibrary:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PHQuery fetchRootFolderIDForAlbumKind:3998 photoLibrary:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _initializeAppPrivateData];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _initializePhotoLibraryIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _initializeSearchIndex];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x1E69BE2E0]);
    v3 = [WeakRetained assetsdClient];
    v4 = [v2 initWithAssetsdClient:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_445(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _initializeCPLStatus];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_2_446(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _initializeIsReadyForAnalysis];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_3_447(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _initializeIsReadyForAnalysisQuickCheck];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_4_448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _initializeIsReadyForAnalysisCPLInitialDownloadCompleted];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_5_450(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _deriveMainScopeIdentifierFromCPLSettings];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PHAnalysisCoalescer *__50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_6_451(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PHAnalysisCoalescer alloc] initWithLibrary:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __50__PHPhotoLibrary_initWithPhotoLibraryBundle_type___block_invoke_7_456(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _setupLazyCPLStatusIfNecessary];
}

- (PHPhotoLibrary)initWithPhotoLibraryURL:(id)a3 type:(unsigned __int16)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69BE688];
  v7 = a3;
  v8 = [v6 sharedBundleController];
  v9 = [v8 openBundleAtLibraryURL:v7];

  v10 = [(PHPhotoLibrary *)self initWithPhotoLibraryBundle:v9 type:v4];
  return v10;
}

- (PHPhotoLibrary)initWithPLPhotoLibrary:(id)a3 type:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 pathManager];
  v8 = [v7 libraryURL];
  v9 = [(PHPhotoLibrary *)self initWithPhotoLibraryURL:v8 type:v4];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69BF270]) initWithObject:v6];
    lazyPhotoLibrary = v9->_lazyPhotoLibrary;
    v9->_lazyPhotoLibrary = v10;
  }

  return v9;
}

- (void)close
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3158 userInfo:0];
  [(PHPhotoLibrary *)self closeWithReason:v3];
}

- (BOOL)requestSandboxExtensionsIfNeededWithError:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self assetsdClient];
  v5 = [v4 libraryClient];
  v10 = 0;
  v6 = [v5 openPhotoLibraryDatabaseWithoutProgressIfNeededWithOptions:0 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0 && a3)
  {
    v8 = v7;
    *a3 = v7;
  }

  return v6;
}

- (void)resetFaceAnalysisWithResetLevel:(int64_t)a3 completionHandler:(id)a4
{
  if (a3 == 2)
  {
    v5 = 262145;
  }

  else
  {
    v5 = a3 == 1;
  }

  v9 = 0;
  v6 = a4;
  v7 = [(PHPhotoLibrary *)self resetStateForMediaProcessingTaskID:3 assetIdentifiers:0 resetOptions:v5 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (NSProgress)postOpenProgress
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__21754;
  v17 = __Block_byref_object_dispose__21755;
  v18 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PHPhotoLibrary_postOpenProgress__block_invoke;
  block[3] = &unk_1E75AADC0;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(isolationQueue, block);
  v4 = v14[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v11 = 0;
    [(PHPhotoLibrary *)self openAndWaitWithUpgrade:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "failed to open photo library %@", buf, 0xCu);
      }
    }

    v8 = self->_isolationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__PHPhotoLibrary_postOpenProgress__block_invoke_428;
    v10[3] = &unk_1E75AADC0;
    v10[4] = self;
    v10[5] = &v13;
    dispatch_sync(v8, v10);
    v5 = v14[5];
  }

  _Block_object_dispose(&v13, 8);

  return v5;
}

- (id)upgradePhotoLibraryUsingOptions:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PHPhotoLibrary *)self assetsdClient];
  v10 = [v9 libraryClient];

  v39 = 0;
  v11 = [objc_opt_class() plLibraryOptionsFromPHOptions:v7 createOptions:&v39];
  if ((v39 & 4) == 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__PHPhotoLibrary_upgradePhotoLibraryUsingOptions_completion___block_invoke_3;
    v28[3] = &unk_1E75A6918;
    v28[4] = self;
    v29 = v8;
    v12 = [v10 upgradePhotoLibraryDatabaseWithOptions:v11 completion:v28];
    v13 = v29;
    goto LABEL_11;
  }

  v14 = atomic_load(&self->_isCompletedPostOpenInitialization);
  if (v14)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:1059 description:{@"Invalid parameter not satisfying: %@", @"_isCompletedPostOpenInitialization == NO"}];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__21754;
  v37 = __Block_byref_object_dispose__21755;
  v38 = 0;
  v15 = dispatch_block_create(0, &__block_literal_global_426);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__PHPhotoLibrary_upgradePhotoLibraryUsingOptions_completion___block_invoke_2;
  v30[3] = &unk_1E75A68F0;
  v32 = &v33;
  v16 = v15;
  v31 = v16;
  v12 = [v10 upgradePhotoLibraryDatabaseWithOptions:v11 completion:v30];
  dispatch_block_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  v17 = [v34[5] domain];
  if (![v17 isEqualToString:*MEMORY[0x1E69BFF48]])
  {

    goto LABEL_9;
  }

  v18 = [v34[5] code];

  if (v18 != 41020)
  {
LABEL_9:
    v23 = PHErrorFromPLError(v34[5]);
    (*(v8 + 2))(v8, 0, v23);
    goto LABEL_10;
  }

  v19 = [MEMORY[0x1E69BE688] sharedBundleController];
  v20 = [(PLPhotoLibraryBundle *)self->_photoLibraryBundle libraryURL];
  v21 = [v19 replaceBundleForRebuildAtLibraryURL:v20];
  photoLibraryBundle = self->_photoLibraryBundle;
  self->_photoLibraryBundle = v21;

  v23 = [v11 mutableCopy];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39 & 0xFFFFFFFFFFFFFFFBLL];
  [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69BEC60]];

  v25 = [(PHPhotoLibrary *)self upgradePhotoLibraryUsingOptions:v23 completion:v8];

  v12 = v25;
LABEL_10:

  _Block_object_dispose(&v33, 8);
  v13 = v38;
LABEL_11:

  return v12;
}

void __61__PHPhotoLibrary_upgradePhotoLibraryUsingOptions_completion___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __61__PHPhotoLibrary_upgradePhotoLibraryUsingOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (a3)
  {
    v7 = PHErrorFromPLError(a3);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 200), a2);
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 _postOpenInitializationWithError:&v9];
    v7 = v9;
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)openAndWaitWithUpgrade:(BOOL)a3 options:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a4;
  [(PHPhotoLibrary *)self wellKnownPhotoLibraryIdentifier];
  v9 = [PHPhotoLibrary authorizationStatusForAccessLevel:2];
  v10 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEFAULT, "PHPhotoLibrary openAndWaitWithUpgrade: authorization status is %{public}td", &buf, 0xCu);
  }

  if (v9 == PHAuthorizationStatusNotDetermined)
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "PHPhotoLibrary openAndWaitWithUpgrade: PHAuthorizationStatusNotDetermined", &buf, 2u);
    }

    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__PHPhotoLibrary_openAndWaitWithUpgrade_options_error___block_invoke;
    v23[3] = &unk_1E75A6878;
    v24 = v12;
    v13 = v12;
    [PHPhotoLibrary requestAuthorizationForAccessLevel:2 handler:v23];
    dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2020000000;
  v27 = 0;
  isolationQueue = self->_isolationQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__PHPhotoLibrary_openAndWaitWithUpgrade_options_error___block_invoke_2;
  v18[3] = &unk_1E75A68C8;
  p_buf = &buf;
  v21 = a5;
  v22 = a3;
  v18[4] = self;
  v19 = v8;
  v15 = v8;
  dispatch_sync(isolationQueue, v18);
  v16 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v16;
}

void __55__PHPhotoLibrary_openAndWaitWithUpgrade_options_error___block_invoke_2(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 216);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__21754;
    v47 = __Block_byref_object_dispose__21755;
    v2 = *(*(a1 + 32) + 224);
    v48 = v2;
    if (v2)
    {
      if (*(a1 + 56))
      {
        **(a1 + 56) = PHErrorFromPLError(v2);
      }

LABEL_35:
      _Block_object_dispose(&v43, 8);

      return;
    }

    v3 = [*(a1 + 32) assetsdClient];
    v4 = [v3 libraryClient];
    v5 = (v44 + 5);
    obj = v44[5];
    v42 = 0;
    v6 = [v4 openPhotoLibraryDatabaseWithPostOpenProgress:&v42 error:&obj];
    v7 = v42;
    v8 = v42;
    objc_storeStrong(v5, obj);
    *(*(*(a1 + 48) + 8) + 24) = v6;

    if (*(*(*(a1 + 48) + 8) + 24) != 1 || ([MEMORY[0x1E69BF2A0] ignoreFilesystemCheckForWellKnownPhotoLibraryIdentifier:{objc_msgSend(*(a1 + 32), "wellKnownPhotoLibraryIdentifier")}] & 1) != 0)
    {
LABEL_23:
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        v23 = [v44[5] domain];
        if ([v23 isEqualToString:*MEMORY[0x1E69BFF48]])
        {
          v24 = [v44[5] code] == 41013;

          if (v24)
          {
            if (*(a1 + 64) == 1)
            {
              v25 = dispatch_block_create(0, &__block_literal_global_416);
              v26 = *(a1 + 32);
              v27 = *(a1 + 40);
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __55__PHPhotoLibrary_openAndWaitWithUpgrade_options_error___block_invoke_2_417;
              v35[3] = &unk_1E75A68A0;
              v37 = *(a1 + 48);
              v38 = &v43;
              v28 = v25;
              v36 = v28;
              v29 = [v26 upgradePhotoLibraryUsingOptions:v27 completion:v35];
              dispatch_block_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
            }

LABEL_31:
            v33 = *(*(*(a1 + 48) + 8) + 24);
            if ((v33 & 1) == 0 && *(a1 + 56))
            {
              **(a1 + 56) = PHErrorFromPLError(v44[5]);
              v33 = *(*(*(a1 + 48) + 8) + 24);
            }

            *(*(a1 + 32) + 216) = v33;
            objc_storeStrong((*(a1 + 32) + 224), v44[5]);

            goto LABEL_35;
          }
        }

        else
        {
        }
      }

      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        objc_storeStrong((*(a1 + 32) + 200), v7);
        v30 = *(a1 + 32);
        v31 = (v44 + 5);
        v34 = v44[5];
        v32 = [v30 _postOpenInitializationWithError:&v34];
        objc_storeStrong(v31, v34);
        *(*(*(a1 + 48) + 8) + 24) = v32;
      }

      goto LABEL_31;
    }

    v9 = *(*(a1 + 32) + 376);
    v40 = 0;
    v10 = *MEMORY[0x1E695DD60];
    v39 = 0;
    v11 = [v9 getResourceValue:&v40 forKey:v10 error:&v39];
    v12 = v40;
    v13 = v39;
    if (v11)
    {
      v14 = [v12 unsignedIntegerValue];
      if (v14 >= [MEMORY[0x1E69BF228] minimumAvailableBytesRequiredForLibraryOpen])
      {
LABEL_22:

        goto LABEL_23;
      }

      v15 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(a1 + 32) + 376);
        *buf = 138412546;
        v54 = v16;
        v55 = 2112;
        v56 = v12;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Volume containing photo library %@ has insufficient free space %@", buf, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      v17 = *(*(a1 + 32) + 376);
      if (v17)
      {
        v51 = *MEMORY[0x1E696A998];
        v52 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      }

      else
      {
        v18 = 0;
      }

      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3305 userInfo:v18];
    }

    else
    {
      v19 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(*(a1 + 32) + 376);
        *buf = 138412546;
        v54 = v20;
        v55 = 2112;
        v56 = v13;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "getResourceValue for volume available capacity at %@ failed with error %@", buf, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      if (v13)
      {
        v49 = *MEMORY[0x1E696AA08];
        v50 = v13;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      }

      else
      {
        v18 = 0;
      }

      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v18];
    }

    v22 = v44[5];
    v44[5] = v21;

    goto LABEL_22;
  }
}

void __55__PHPhotoLibrary_openAndWaitWithUpgrade_options_error___block_invoke_2_417(void *a1, char a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

- (BOOL)shouldMobileSlideShowLaunchWithError:(id *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = PLPhotoKitGetLog();
  v6 = os_signpost_id_generate(v5);

  v7 = v5;
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ShouldMobileSlideShowLaunch", byte_19CB567AE, buf, 2u);
  }

  if ([MEMORY[0x1E69BE5B8] shouldPromptUserForLibrarySchemaMismatch])
  {
    v10 = [(PHPhotoLibrary *)self photoLibraryBundle];
    v11 = [v10 persistentContainer];
    v38 = 0;
    v12 = [v11 sharedPersistentStoreCoordinatorWithError:&v38];
    v13 = v38;

    if (v12)
    {
      v14 = v8;
      v15 = v14;
      if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v15, OS_SIGNPOST_INTERVAL_END, v6, "ShouldMobileSlideShowLaunch", "Found shared PSC", buf, 2u);
      }

      LOBYTE(v16) = 1;
      goto LABEL_44;
    }

    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v13;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "Container has nil PSC. %@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69BE5E8];
    v20 = [(PHPhotoLibrary *)self photoLibraryBundle];
    v21 = [v20 pathManager];
    v37 = 0;
    v16 = [v19 currentModelVersionMatchesLibrarySchemaVersionWithPathManager:v21 error:&v37];
    v15 = v37;

    if ((v16 & 1) == 0)
    {
      v22 = PLBackendGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v15;
        _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "shouldMobileSlideShowLaunchWithError: %@", buf, 0xCu);
      }

      if (PLIsErrorEqualToCode())
      {
        v23 = PLBackendGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "Library requires upgrade. Calling openAndWaitWithUpgrade:YES", buf, 2u);
        }

        v36 = 0;
        v24 = [(PHPhotoLibrary *)self openAndWaitWithUpgrade:1 error:&v36];
        v15 = v36;
        if (v24)
        {
          v25 = PLBackendGetLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEFAULT, "Library open (upgrade) succeeded, MobileSlideShow can proceed.", buf, 2u);
          }

          v26 = v8;
          if (v9 < 0xFFFFFFFFFFFFFFFELL)
          {
            v27 = v26;
            if (os_signpost_enabled(v26))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_19C86F000, v27, OS_SIGNPOST_INTERVAL_END, v6, "ShouldMobileSlideShowLaunch", "Library open (upgrade) succeeded", buf, 2u);
            }
          }

          LOBYTE(v16) = 1;
        }

        else
        {
          v31 = PLBackendGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v15;
            _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "Library upgrade failed with error %@", buf, 0xCu);
          }

          if (a3)
          {
            v32 = v15;
            *a3 = v15;
          }

          v33 = v8;
          if (v9 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v34 = v33;
            if (os_signpost_enabled(v33))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_19C86F000, v34, OS_SIGNPOST_INTERVAL_END, v6, "ShouldMobileSlideShowLaunch", "Library upgrade failed", buf, 2u);
            }
          }

          LOBYTE(v16) = 0;
        }

LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      v28 = PHErrorFromPLError(v15);
      if (a3)
      {
        v28 = v28;
        *a3 = v28;
      }
    }

    v29 = v8;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v30 = v29;
      if (os_signpost_enabled(v29))
      {
        *buf = 67109120;
        LODWORD(v40) = v16;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v30, OS_SIGNPOST_INTERVAL_END, v6, "ShouldMobileSlideShowLaunch", "Result: %d", buf, 8u);
      }
    }

    goto LABEL_43;
  }

  v17 = v8;
  v13 = v17;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_END, v6, "ShouldMobileSlideShowLaunch", "Do not prompt", buf, 2u);
  }

  LOBYTE(v16) = 1;
LABEL_45:

  return v16;
}

- (BOOL)createPhotoLibraryUsingOptions:(id)a3 error:(id *)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v8 = [(PHPhotoLibrary *)self photoLibraryURL];
  v9 = [v8 path];
  v10 = [v7 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A998];
    v12 = [(PHPhotoLibrary *)self photoLibraryURL];
    v34[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v14 = [v11 errorWithDomain:@"PHPhotosErrorDomain" code:3107 userInfo:v13];

LABEL_3:
    v15 = 0;
    goto LABEL_4;
  }

  v17 = [(PHPhotoLibrary *)self photoLibraryURL];
  v32 = 0;
  v18 = [v7 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v32];
  v14 = v32;

  if ((v18 & 1) == 0)
  {
    v12 = [v14 domain];
    if ([v12 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v25 = [v14 code];

      if (v25 != 513)
      {
        v15 = 0;
        goto LABEL_5;
      }

      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v26 = [(PHPhotoLibrary *)self photoLibraryURL];
      v27 = [v26 path];
      v28 = [v27 stringByDeletingLastPathComponent];
      [v12 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696A368]];

      [v12 setObject:@"You do not have permission to write to the selected folder" forKeyedSubscript:*MEMORY[0x1E696A588]];
      [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v29 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:5404 userInfo:v12];

      v15 = 0;
      v14 = v29;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = [(PHPhotoLibrary *)self assetsdClient];
  v20 = [v19 libraryManagementClient];

  v21 = [objc_opt_class() plLibraryOptionsFromPHOptions:v6 createOptions:0];
  v22 = [v21 mutableCopy];

  v23 = [(PHPhotoLibrary *)self photoLibraryURL];
  [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69BEC70]];

  v31 = v14;
  v24 = [v20 createManagedPhotoLibraryWithOptions:v22 error:&v31];
  v12 = v31;

  if (!v24)
  {
    v15 = 0;
    v14 = v12;
    goto LABEL_5;
  }

  v30 = v12;
  v15 = [(PHPhotoLibrary *)self _postOpenInitializationWithError:&v30];
  v14 = v30;
LABEL_4:

LABEL_5:
  if (a4 && !v15)
  {
    *a4 = PHErrorFromPLError(v14);
  }

  return v15;
}

- (BOOL)_postOpenInitializationWithError:(id *)a3
{
  v5 = [(PHPhotoLibrary *)self photoLibrary];
  if (v5)
  {
    atomic_store(1u, &self->_isCompletedPostOpenInitialization);
  }

  else if (a3)
  {
    photoLibraryBundle = self->_photoLibraryBundle;
    v12 = 0;
    v7 = [MEMORY[0x1E69BE670] newPhotoLibraryWithName:"-[PHPhotoLibrary _postOpenInitializationWithError:]" loadedFromBundle:photoLibraryBundle options:0 error:&v12];
    v8 = v12;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = [(PHPhotoLibrary *)self photoLibraryURL];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A998]];

    [v9 setObject:@"Creation of PLPhotoLibrary failed" forKeyedSubscript:*MEMORY[0x1E696A278]];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v9];
  }

  return v5 != 0;
}

- (id)_initializePhotoLibraryIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PHPhotoLibrary *)self assetsdClient];
  v4 = [v3 photoKitClient];
  v10 = 0;
  v5 = [v4 photoLibraryIdentifierWithError:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [[PHPhotoLibraryIdentifier alloc] initWithPLLibraryIdentifier:v5];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Failed to retrieve library identifier for %@: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)getCPLConfigrationValueForClient:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v11 = v6;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_7;
    }

    v7 = MEMORY[0x1E6994960];
  }

  else
  {
    v7 = MEMORY[0x1E6994970];
  }

  v8 = *v7;
  v6 = v11;
  if (v8)
  {
    v9 = [(PHPhotoLibrary *)self assetsdClient];
    v10 = [v9 cloudInternalClient];
    [v10 getCPLConfigurationValueForKey:v8 completionHandler:v11];

    goto LABEL_9;
  }

LABEL_7:
  if (!v6)
  {
    goto LABEL_10;
  }

  (*(v6 + 2))(v11, 0);
LABEL_9:
  v6 = v11;
LABEL_10:
}

- (BOOL)isWalrusEnabled
{
  v2 = [(PLLazyObject *)self->_lazyCPLStatus objectValue];
  v3 = [v2 isWalrusEnabled];

  return v3;
}

- (PHPhotoLibraryCloudStatus)cloudStatus
{
  v3 = [(PHPhotoLibrary *)self _cachedCloudStatus];
  if (!v3)
  {
    v4 = [(PLLazyObject *)self->_lazyCPLStatus objectValue];
    v3 = [[PHPhotoLibraryCloudStatus alloc] initWithCPLStatus:v4 isEnabled:[(PHPhotoLibrary *)self isCloudPhotoLibraryEnabled]];
    [(PHPhotoLibrary *)self _setCachedCloudStatus:v3];
  }

  return v3;
}

- (void)_setCachedCloudStatus:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  cachedCloudStatus = obj->_cachedCloudStatus;
  obj->_cachedCloudStatus = v4;

  objc_sync_exit(obj);
}

- (id)_cachedCloudStatus
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cachedCloudStatus;
  objc_sync_exit(v2);

  return v3;
}

- (CPLStatus)cplStatus
{
  if ([(PHPhotoLibrary *)self isCloudPhotoLibraryEnabled])
  {
    v3 = [(PHPhotoLibrary *)self photoLibrary];
    v4 = [v3 pathManager];

    v5 = CPLStatusFromPathManager();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setKeepOriginalsEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  cplSettingsObserver = self->_cplSettingsObserver;
  v8 = 0;
  v5 = [(PLCPLSettingsObserver *)cplSettingsObserver setPrefetchMode:a3 error:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v10 = v3;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Couldn't set keepOriginals to: %d, error: %@", buf, 0x12u);
    }
  }
}

- (BOOL)isKeepOriginalsEnabled
{
  v2 = [(PLCPLSettingsObserver *)self->_cplSettingsObserver settings];
  v3 = [v2 isKeepOriginalsEnabled];

  return v3;
}

- (BOOL)isReadOnlyCloudPhotoLibrary
{
  v2 = [(PHPhotoLibrary *)self cplStatus];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 exitDeleteTime];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCPLSyncablePhotoLibrary
{
  if ([(PHPhotoLibrary *)self isSystemPhotoLibrary])
  {
    return 1;
  }

  v4 = [(PLCPLSettingsObserver *)self->_cplSettingsObserver settings];
  if ([v4 isAppLibrary])
  {
    v5 = [(PLCPLSettingsObserver *)self->_cplSettingsObserver settings];
    v3 = [v5 isCloudPhotoLibraryEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)initMomentShareLibrary
{
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [(PHPhotoLibrary *)self initWithPhotoLibraryURL:v3 type:1];

  return v4;
}

- (PHPhotoLibrary)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[PHPhotoLibrary init] unsupported" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)setUploadJobExtensionEnabled:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  v9 = [PHAssetResourceUploadJobConfiguration fetchAssetResourceUploadJobConfigurationsWithOptions:v8];

  if ([v9 count] == 1)
  {
    v10 = [v9 firstObject];
    v11 = v10;
    if (!v5)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53__PHPhotoLibrary_setUploadJobExtensionEnabled_error___block_invoke;
      v23[3] = &unk_1E75AB270;
      v24 = v9;
      v16 = [(PHPhotoLibrary *)self performChangesAndWait:v23 error:a4];

      goto LABEL_21;
    }

    v12 = [v10 state] == 2 || objc_msgSend(v11, "state") == 3;

    v15 = 0;
  }

  else if ([v9 count])
  {
    v13 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Too many configurations";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v15 = [v13 errorWithDomain:@"PHPhotosErrorDomain" code:3141 userInfo:v14];

    v12 = 0;
  }

  else
  {
    if (v5)
    {
      v16 = [(PHPhotoLibrary *)self performChangesAndWait:&__block_literal_global_387 error:a4];
      goto LABEL_21;
    }

    v15 = 0;
    v12 = 1;
  }

  if ([v9 count] >= 2)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:499 description:@"Should only have 1 configuration"];
  }

  v17 = v15;
  v18 = v17;
  if (a4)
  {
    v19 = v12;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v20 = v17;
    *a4 = v18;
  }

  v16 = 0;
LABEL_21:

  return v16;
}

void __53__PHPhotoLibrary_setUploadJobExtensionEnabled_error___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) firstObject];
  v3[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [PHAssetResourceUploadJobConfigurationChangeRequest deleteAssetResourceUploadJobConfigurations:v2];
}

- (BOOL)isUploadJobExtensionEnabled
{
  v4 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  v5 = [PHAssetResourceUploadJobConfiguration fetchAssetResourceUploadJobConfigurationsWithOptions:v4];

  if ([v5 count] >= 2)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary.m" lineNumber:444 description:@"Should only have 1 configuration"];
  }

  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 state];

    v8 = (v7 & 0xFFFFFFFE) == 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sharedContactStore
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = sharedContactStore___sContactStore;
  if (!sharedContactStore___sContactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = sharedContactStore___sContactStore;
    sharedContactStore___sContactStore = v4;

    v3 = sharedContactStore___sContactStore;
  }

  v6 = v3;
  objc_sync_exit(v2);

  return v6;
}

+ (BOOL)_isInternalObserver:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (void)removeAllUniquedOIDs
{
  v2 = [a1 uniqueObjectIDCache];
}

+ (id)uniquedOIDsFromObjects:(id)a3
{
  v4 = a3;
  v5 = [a1 uniqueObjectIDCache];
  v6 = [(PHUniqueObjectIDCache *)v5 uniquedOIDsFromObjects:v4];

  return v6;
}

+ (id)uniquedOIDs:(id)a3
{
  v4 = a3;
  v5 = [a1 uniqueObjectIDCache];
  v6 = [(PHUniqueObjectIDCache *)v5 uniquedOIDs:v4];

  return v6;
}

+ (id)uniquedOID:(id)a3
{
  v4 = a3;
  v5 = [a1 uniqueObjectIDCache];
  v6 = v4;
  if (v5)
  {
    [v5 _verifyObjectIDIsTagged:v6];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_effectiveRootEntity:(id)a3
{
  v3 = a3;
  if (_effectiveRootEntity__onceToken != -1)
  {
    dispatch_once(&_effectiveRootEntity__onceToken, &__block_literal_global_675);
  }

  v4 = v3;
  v5 = _effectiveRootEntity__effectiveRootEntityNames;
  v6 = [v4 name];
  LOBYTE(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v8 = v4;
    while (1)
    {
      v9 = [v8 superentity];
      if (!v9)
      {
        break;
      }

      v7 = v9;

      v10 = _effectiveRootEntity__effectiveRootEntityNames;
      v11 = [v4 name];
      v12 = [v10 containsObject:v11];

      v8 = v7;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    v7 = v8;

    v4 = v7;
  }

LABEL_10:

  return v4;
}

uint64_t __39__PHPhotoLibrary__effectiveRootEntity___block_invoke()
{
  _effectiveRootEntity__effectiveRootEntityNames = [MEMORY[0x1E695DFD8] setWithObject:@"Folder"];

  return MEMORY[0x1EEE66BB8]();
}

+ (Class)PHObjectClassForIdentifierCode:(id)a3
{
  v3 = [PHPhotoLibrary fetchTypeForLocalIdentifierCode:a3];
  v4 = [PHPhotoLibrary classForFetchType:v3];

  return v4;
}

+ (Class)PHObjectClassForObjectType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

+ (Class)PHObjectClassForOID:(id)a3
{
  v3 = [a3 entity];
  v4 = [v3 name];
  v5 = [PHPhotoLibrary PHObjectClassForEntityName:v4];

  v6 = v5;
  return v5;
}

+ (id)PHObjectClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PHPhotoLibrary_PHObjectClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (PHObjectClasses_onceToken != -1)
  {
    dispatch_once(&PHObjectClasses_onceToken, block);
  }

  v2 = PHObjectClasses_classes;

  return v2;
}

void __33__PHPhotoLibrary_PHObjectClasses__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) PHObjectClassesByEntityName];
  v1 = MEMORY[0x1E695DFD8];
  v2 = [v7 allValues];
  v3 = [v1 setWithArray:v2];

  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingFunction:_classNameCompare context:0];
  v6 = PHObjectClasses_classes;
  PHObjectClasses_classes = v5;
}

+ (Class)PHObjectClassForEntityName:(id)a3
{
  v4 = a3;
  v5 = [a1 PHObjectClassesByEntityName];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (id)fetchTypeForLocalIdentifierCode:(id)a3
{
  v3 = fetchTypeForLocalIdentifierCode__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&fetchTypeForLocalIdentifierCode__onceToken, &__block_literal_global_567);
  }

  v5 = [fetchTypeForLocalIdentifierCode___fetchTypesByIdentifierCode objectForKeyedSubscript:v4];

  return v5;
}

void __50__PHPhotoLibrary_fetchTypeForLocalIdentifierCode___block_invoke()
{
  v22[19] = *MEMORY[0x1E69E9840];
  v20 = +[PHAsset identifierCode];
  v21[0] = v20;
  v22[0] = @"PHAsset";
  v19 = +[PHCollectionList identifierCode];
  v21[1] = v19;
  v22[1] = @"PHCollectionList";
  v18 = +[PHMomentList identifierCode];
  v21[2] = v18;
  v22[2] = @"PHMomentList";
  v17 = +[PHAssetCollection identifierCode];
  v21[3] = v17;
  v22[3] = @"PHAssetCollection";
  v16 = +[PHMoment identifierCode];
  v21[4] = v16;
  v22[4] = @"PHMoment";
  v15 = +[PHPerson identifierCode];
  v21[5] = v15;
  v22[5] = @"PHPerson";
  v14 = +[PHFace identifierCode];
  v21[6] = v14;
  v22[6] = @"PHFace";
  v13 = +[PHFaceGroup identifierCode];
  v21[7] = v13;
  v22[7] = @"PHFaceGroup";
  v12 = +[PHSocialGroup identifierCode];
  v21[8] = v12;
  v22[8] = @"PHSocialGroup";
  v0 = +[PHMemory identifierCode];
  v21[9] = v0;
  v22[9] = @"PHMemory";
  v1 = +[PHPhotosHighlight identifierCode];
  v21[10] = v1;
  v22[10] = @"PHPhotosHighlight";
  v2 = +[PHMomentShare identifierCode];
  v21[11] = v2;
  v22[11] = @"PHMomentShare";
  v3 = +[PHLibraryScope identifierCode];
  v21[12] = v3;
  v22[12] = @"PHLibraryScope";
  v4 = +[PHShareParticipant identifierCode];
  v21[13] = v4;
  v22[13] = @"PHShareParticipant";
  v5 = +[PHSuggestion identifierCode];
  v21[14] = v5;
  v22[14] = @"PHSuggestion";
  v6 = +[PHImportSession identifierCode];
  v21[15] = v6;
  v22[15] = @"PHImportSession";
  v7 = +[PHProject identifierCode];
  v21[16] = v7;
  v22[16] = @"PHProject";
  v8 = +[PHCollectionShare identifierCode];
  v21[17] = v8;
  v22[17] = @"PHCollectionShare";
  v9 = +[PHCloudFeedEntry identifierCode];
  v21[18] = v9;
  v22[18] = @"PHCloudFeedEntry";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:19];
  v11 = fetchTypeForLocalIdentifierCode___fetchTypesByIdentifierCode;
  fetchTypeForLocalIdentifierCode___fetchTypesByIdentifierCode = v10;
}

+ (int64_t)collectionListTypeForIdentifierCode:(id)a3
{
  v3 = a3;
  pl_dispatch_once();
  v4 = [collectionListTypeForIdentifierCode___typeByCode objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __54__PHPhotoLibrary_collectionListTypeForIdentifierCode___block_invoke()
{
  v0 = collectionListTypeForIdentifierCode___typeByCode;
  collectionListTypeForIdentifierCode___typeByCode = &unk_1F102E640;
}

+ (id)stringFromPHPhotoLibraryType:(unsigned __int16)a3
{
  if (a3 == 1)
  {
    v4 = @"CMM";
  }

  else if (a3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownType(%u)", a3];
  }

  else
  {
    v4 = @"UserLibrary";
  }

  return v4;
}

+ (void)assertTransaction
{
  v2 = [a1 photoLibraryForCurrentTransaction];
  v4 = v2;
  if (v2)
  {
    [v2 assertTransaction];
  }

  else if ((PLIsAssetsd() & 1) == 0 && ([MEMORY[0x1E69BF1A8] inTransactionProxy] & 1) == 0)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This method can only be called from inside of -[PHPhotoLibrary performChanges:completionHandler:] or -[PHPhotoLibrary performChangesAndWait:error:]" userInfo:0];
    objc_exception_throw(v3);
  }
}

void __34__PHPhotoLibrary_useBindingClient__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  useBindingClient_sUseBindingClient = [v0 BOOLForKey:@"com.apple.PHPhotoLibrary.useBindingXPCClient"];

  v1 = useBindingClient_sUseBindingClient;
  v2 = PLPhotoKitGetLog();
  v3 = v2;
  if (v1 == 1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v4 = "PhotoKit: Using binding XPC client";
      v5 = &v9;
      v6 = v3;
      v7 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19C86F000, v6, v7, v4, v5, 2u);
    }
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    v4 = "PhotoKit: Using non-binding XPC client";
    v5 = &v8;
    v6 = v3;
    v7 = OS_LOG_TYPE_DEBUG;
    goto LABEL_6;
  }
}

+ (id)sharedLazyPhotoLibraryForCMM
{
  pl_dispatch_once();
  v2 = sharedLazyPhotoLibraryForCMM_pl_once_object_49;

  return v2;
}

void __46__PHPhotoLibrary_sharedLazyPhotoLibraryForCMM__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_initWeak(&location, v1);

  v3 = objc_alloc(MEMORY[0x1E69BF270]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PHPhotoLibrary_sharedLazyPhotoLibraryForCMM__block_invoke_2;
  v6[3] = &unk_1E75A9848;
  objc_copyWeak(&v7, &location);
  v4 = [v3 initWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  v5 = sharedLazyPhotoLibraryForCMM_pl_once_object_49;
  sharedLazyPhotoLibraryForCMM_pl_once_object_49 = v4;
}

id __46__PHPhotoLibrary_sharedLazyPhotoLibraryForCMM__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    v3 = [MEMORY[0x1E69BE688] sharedBundleController];
    v4 = [v3 openBundleAtLibraryURL:v2];

    WeakRetained = newPhotoLibrary("CMM PLPhotoLibrary", v4, 0);
  }

  return WeakRetained;
}

+ (id)plLibraryOptionsFromPHOptions:(id)a3 createOptions:(unint64_t *)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"PHPhotoLibraryCreateOptions"];
    v8 = [v7 unsignedIntegerValue];

    v9 = [v6 objectForKeyedSubscript:@"PHPhotoLibraryUpgradeOptions"];
    v10 = [v9 unsignedIntegerValue];

    v11 = 0;
    for (i = 0; i != 64; ++i)
    {
      v13 = v10 & (1 << i);
      v14 = v11 | 4;
      if (v13 != 4)
      {
        v14 = v11;
      }

      if (v13 == 8)
      {
        v11 |= 8uLL;
      }

      else
      {
        v11 = v14;
      }
    }

    for (j = 0; j != 64; ++j)
    {
      v16 = v8 & (1 << j);
      v17 = v11 | 0x80;
      v18 = v11 | 0x100;
      v19 = v11 | 0x200;
      if (v16 != 512)
      {
        v19 = v11;
      }

      if (v16 != 256)
      {
        v18 = v19;
      }

      if (v16 != 128)
      {
        v17 = v18;
      }

      v20 = v11 | 0x20;
      v21 = v11 | 0x40;
      if (v16 != 64)
      {
        v21 = v11;
      }

      if (v16 != 32)
      {
        v20 = v21;
      }

      if (v16 <= 127)
      {
        v17 = v20;
      }

      v22 = v11 | 0x10;
      v23 = v11 | 0x11;
      if (v16 != 17)
      {
        v23 = v11;
      }

      if (v16 != 16)
      {
        v22 = v23;
      }

      v24 = v11 | 1;
      v25 = v11 | 2;
      if (v16 != 2)
      {
        v25 = v11;
      }

      if (v16 != 1)
      {
        v24 = v25;
      }

      if (v16 <= 15)
      {
        v22 = v24;
      }

      if (v16 <= 31)
      {
        v11 = v22;
      }

      else
      {
        v11 = v17;
      }
    }

    if (v11)
    {
      if (a4)
      {
        *a4 = v11;
      }

      v26 = [v6 mutableCopy];
      v30[0] = @"PHPhotoLibraryCreateOptions";
      v30[1] = @"PHPhotoLibraryUpgradeOptions";
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      [v26 removeObjectsForKeys:v27];

      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      [v26 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69BEC60]];
    }

    else
    {
      v26 = v6;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)isPhotosApplicationInstalled
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [v2 applicationIsInstalled:*MEMORY[0x1E69BFF18]];

  return v3;
}

+ (BOOL)setSystemPhotoLibraryURL:(id)a3 error:(id *)a4
{
  v10 = 0;
  v5 = [MEMORY[0x1E69BF2A0] setSystemLibraryURL:a3 options:0 error:&v10];
  v6 = v10;
  v7 = v6;
  if (a4 && (v5 & 1) == 0)
  {
    v8 = PHErrorFromPLError(v6);
    *a4 = v8;
  }

  return v5;
}

+ (void)unsafeShutdownLibraryWithPhotoLibraryURL:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v3];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_FAULT, "Unsafe PHPhotoLibrary shutdown for URL: %@", &v9, 0xCu);
  }

  v6 = [MEMORY[0x1E69BE688] sharedBundleController];
  v7 = [v6 bundleForLibraryURL:v3];
  if (v7)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46019 userInfo:0];
    [v6 shutdownBundle:v7 reason:v8];
  }
}

+ (id)openPhotoLibraryWithWellKnownIdentifier:(int64_t)a3 error:(id *)a4
{
  v7 = [PHPhotoLibrary alloc];
  v8 = [a1 wellKnownPhotoLibraryURLForIdentifier:a3];
  v9 = [(PHPhotoLibrary *)v7 initWithPhotoLibraryURL:v8];

  v13 = 0;
  LODWORD(v8) = [(PHPhotoLibrary *)v9 openAndWaitWithUpgrade:1 error:&v13];
  v10 = v13;
  if (v8)
  {
    [a1 enableMultiLibraryMode];
  }

  else
  {

    if (a4)
    {
      v11 = v10;
      v9 = 0;
      *a4 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (void)_forceUserInterfaceReload
{
  v2 = [MEMORY[0x1E69BE688] sharedBundleController];
  [v2 handleUnknownMergeEvent];
}

+ (void)_requestAuthorizationForAccessLevel:(int64_t)a3 supportsLimited:(BOOL)a4 handler:(id)a5
{
  v8 = a5;
  v9 = [PHPhotoLibrary authorizationStatusForAccessLevel:a3];
  if (a3 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 7;
  }

  v11 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PHPhotoLibrary__requestAuthorizationForAccessLevel_supportsLimited_handler___block_invoke;
  v13[3] = &unk_1E75A6850;
  v14 = v8;
  v15 = a3;
  v18 = a4;
  v16 = v9;
  v17 = a1;
  v12 = v8;
  [v11 checkPhotosAccessAllowedWithScope:v10 handler:v13];
}

uint64_t __78__PHPhotoLibrary__requestAuthorizationForAccessLevel_supportsLimited_handler___block_invoke(uint64_t a1)
{
  v2 = [PHPhotoLibrary authorizationStatusForAccessLevel:*(a1 + 40)];
  result = *(a1 + 32);
  if (result)
  {
    if (*(a1 + 64) & 1 | (v2 != PHAuthorizationStatusLimited))
    {
      v4 = v2;
    }

    else
    {
      v4 = 3;
    }

    result = (*(result + 16))(result, v4);
  }

  v5 = (v2 - 3) > 1 || *(a1 + 48) == v2;
  if (!v5 && *(a1 + 40) != 1)
  {
    v6 = *(a1 + 56);

    return [v6 _forceUserInterfaceReload];
  }

  return result;
}

+ (PHAuthorizationStatus)authorizationStatusForAccessLevel:(PHAccessLevel)accessLevel
{
  v3 = [a1 _photosAccessAllowedForAccessLevel:accessLevel];
  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_19CB29A48[v3];
  }
}

+ (int64_t)_photosAccessAllowedForAccessLevel:(int64_t)a3
{
  v4 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v5 = v4;
  if (a3 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 7;
  }

  v7 = [v4 photosAccessAllowedWithScope:v6];

  return v7;
}

+ (BOOL)checkAuthorizationStatusForAPIAccessLevel:(int64_t)a3 suppressPrompt:(BOOL)a4
{
  v5 = [a1 _photosAccessAllowedForAccessLevel:a3];
  if (!v5)
  {
    return 1;
  }

  if (v5 == 4)
  {
    if (!a4)
    {
      v6 = [MEMORY[0x1E69BF2B0] sharedInstance];
      [v6 presentAsyncPromptForLimitedLibraryPickerIfNeeded];
    }

    return 1;
  }

  return 0;
}

+ (PHAuthorizationStatus)authorizationStatus
{
  v2 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v3 = [v2 photosAccessAllowedWithScope:7];

  result = PHAuthorizationStatusNotDetermined;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return 1;
    }

    if (v3 != 4)
    {
      return result;
    }

    return 3;
  }

  if (!v3)
  {
    return 3;
  }

  if (v3 == 2)
  {
    return 2;
  }

  return result;
}

+ (id)sharedMomentSharePhotoLibrary
{
  if (sharedMomentSharePhotoLibrary_onceToken != -1)
  {
    dispatch_once(&sharedMomentSharePhotoLibrary_onceToken, &__block_literal_global_370);
  }

  v2 = sharedMomentSharePhotoLibrary_sharedMomentSharePhotoLibrary;
  if (!sharedMomentSharePhotoLibrary_sharedMomentSharePhotoLibrary)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unable to create moment share shared library" userInfo:0];
    objc_exception_throw(v4);
  }

  return v2;
}

uint64_t __47__PHPhotoLibrary_sharedMomentSharePhotoLibrary__block_invoke()
{
  sharedMomentSharePhotoLibrary_sharedMomentSharePhotoLibrary = [[PHPhotoLibrary alloc] initMomentShareLibrary];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)setImagePickerPhotoLibrary:(id)a3 error:(id *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__21754;
  v13 = __Block_byref_object_dispose__21755;
  v14 = 0;
  v5 = a3;
  PLRunWithUnfairLock();
  v6 = v10[5];
  if (a4 && v6)
  {
    *a4 = v6;
    v6 = v10[5];
  }

  v7 = v6 == 0;

  _Block_object_dispose(&v9, 8);
  return v7;
}

void __51__PHPhotoLibrary_setImagePickerPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibraryURL];
  v3 = [PHPhotoLibrary isSystemPhotoLibraryURL:v2];

  if (v3)
  {
    objc_storeStrong(&imagePickerPhotoLibrary, *(a1 + 32));
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A278];
    v10[0] = @"The image picker photo library URL must match the system photo library URL";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

+ (id)imagePickerPhotoLibrary
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__21754;
  v8 = __Block_byref_object_dispose__21755;
  v9 = 0;
  PLRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __41__PHPhotoLibrary_imagePickerPhotoLibrary__block_invoke(uint64_t a1)
{
  v2 = imagePickerPhotoLibrary;
  if (!imagePickerPhotoLibrary)
  {
    v3 = [*(a1 + 40) _sharedPhotoLibrary];
    v4 = imagePickerPhotoLibrary;
    imagePickerPhotoLibrary = v3;

    v2 = imagePickerPhotoLibrary;
  }

  v5 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v5, v2);
}

- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PHPhotoLibrary *)self assetsdClient];
  v5 = [v6 libraryInternalClient];
  [v5 setWidgetTimelineGeneratedForDisplaySize:&__block_literal_global_1393 completionHandler:{width, height}];
}

void __68__PHPhotoLibrary_Widgets__setWidgetTimelineGeneratedForDisplaySize___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendGetLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      v7 = "Widget timeline update date successfully persisted";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_19C86F000, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Widget timeline update date failed to persist: %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }
}

- (id)sceneTaxonomyDetectorNodeSceneIDsFromSceneID:(unint64_t)a3 sceneTaxonomy:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    if ([v5 nodeRefForExtendedSceneClassId:a3])
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:PFSceneTaxonomyNodeDetectorsCount()];
      PFSceneTaxonomyNodeVisitDetectors();
      v8 = v7;
      goto LABEL_10;
    }

    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v15 = a3;
      v16 = 2112;
      v17 = v6;
      v9 = "Failed to find sceneID (%llu) in sceneTaxonomy: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 22;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "PFSceneTaxonomy is nil.";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 2;
LABEL_8:
      _os_log_impl(&dword_19C86F000, v10, v11, v9, buf, v12);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

uint64_t __91__PHPhotoLibrary_PhotosFormat__sceneTaxonomyDetectorNodeSceneIDsFromSceneID_sceneTaxonomy___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a3 + 16)];
  [v3 addObject:v4];

  return 1;
}

- (id)migrationDate
{
  v2 = [(PHPhotoLibrary *)self photoLibrary];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__21754;
  v13 = __Block_byref_object_dispose__21755;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PHPhotoLibrary_MigrationDate__migrationDate__block_invoke;
  v6[3] = &unk_1E75AADC0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v3 performBlockAndWait:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __46__PHPhotoLibrary_MigrationDate__migrationDate__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE5B0];
  v3 = [*(a1 + 32) managedObjectContext];
  v7 = [v2 currentMigrationHistoryWithManagedObjectContext:v3];

  v4 = [v7 migrationDate];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)cancelReservedCloudIdentifiers:(id)a3 error:(id *)a4
{
  v6 = [a3 _pl_map:&__block_literal_global_1403];
  v7 = [(PHPhotoLibrary *)self assetsdClient];
  v8 = [v7 photoKitClient];
  v16 = 0;
  v9 = [v8 cancelReservedCloudIdentifiers:v6 error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v12 = PHPublicErrorFromError(v10);

    v13 = v12;
    v11 = v13;
    if (a4)
    {
      v14 = v13;
      *a4 = v11;
    }
  }

  return v9;
}

- (BOOL)cancelReservedCloudIdentifiersWithObjectType:(int64_t)a3 error:(id *)a4
{
  v6 = [PHPhotoLibrary PHObjectClassForObjectType:a3];
  v7 = [(objc_class *)v6 identifierCode];
  v8 = [(objc_class *)v6 managedEntityName];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v14 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
LABEL_8:
    v15 = v14;
    v16 = 1;
    goto LABEL_9;
  }

  v11 = [(PHPhotoLibrary *)self assetsdClient];
  v12 = [v11 photoKitClient];
  v21 = 0;
  v13 = [v12 cancelReservedCloudIdentifiersWithEntityName:v9 error:&v21];
  v14 = v21;

  if (v13)
  {
    goto LABEL_8;
  }

  v18 = PHPublicErrorFromError(v14);

  v19 = v18;
  v15 = v19;
  if (a4)
  {
    v20 = v19;
    v16 = 0;
    *a4 = v15;
  }

  else
  {
    v16 = 0;
  }

LABEL_9:

  return v16;
}

- (id)reservedCloudIdentifiersWithObjectType:(int64_t)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = [PHPhotoLibrary PHObjectClassForObjectType:a3];
  v7 = [(objc_class *)v6 identifierCode];
  v8 = [(objc_class *)v6 managedEntityName];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
LABEL_18:
    if (a4)
    {
      v24 = v11;
      v16 = 0;
      *a4 = v11;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_21;
  }

  v12 = [(PHPhotoLibrary *)self assetsdClient];
  v13 = [v12 photoKitClient];
  v31 = 0;
  v14 = [v13 reservedCloudIdentifiersWithEntityName:v9 error:&v31];
  v15 = v31;

  if (v14)
  {
    v26 = v15;
    v16 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v17 = PHPublicErrorFromError(v15);

    v16 = 0;
    v26 = v17;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [[PHCloudIdentifier alloc] initWithLocalCloudIdentifier:*(*(&v27 + 1) + 8 * i) identifierCode:v7 stableHash:&stru_1F0FC60C8];
        [v16 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  v11 = v26;
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_21:

  return v16;
}

- (id)reserveCloudIdentifiersWithObjectType:(int64_t)a3 count:(unint64_t)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E69BE930] < a4)
  {
    v6 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3204 userInfo:0];
LABEL_21:
    if (a5)
    {
      v27 = v6;
      v15 = 0;
      *a5 = v6;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_24;
  }

  v9 = [PHPhotoLibrary PHObjectClassForObjectType:a3];
  v10 = [(objc_class *)v9 identifierCode];
  v11 = [(objc_class *)v9 managedEntityName];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
    v15 = 0;
  }

  else
  {
    v16 = [(PHPhotoLibrary *)self assetsdClient];
    v17 = [v16 photoKitClient];
    v34 = 0;
    v18 = [v17 reserveCloudIdentifiersWithEntityName:v12 count:a4 error:&v34];
    v19 = v34;

    if (v18)
    {
      v29 = v19;
      v15 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      v20 = PHPublicErrorFromError(v19);

      v15 = 0;
      v29 = v20;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [[PHCloudIdentifier alloc] initWithLocalCloudIdentifier:*(*(&v30 + 1) + 8 * i) identifierCode:v10 stableHash:&stru_1F0FC60C8];
          [v15 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v23);
    }

    v14 = v29;
  }

  v6 = v14;
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_24:

  return v15;
}

+ (void)setNeedsToRepairKeyCuratedAssetForMemories:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKey:@"uuid"];
  if (setNeedsToRepairKeyCuratedAssetForMemories__onceToken != -1)
  {
    dispatch_once(&setNeedsToRepairKeyCuratedAssetForMemories__onceToken, &__block_literal_global_1369);
  }

  v5 = setNeedsToRepairKeyCuratedAssetForMemories__repairQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PHPhotoLibrary_Repair__setNeedsToRepairKeyCuratedAssetForMemories___block_invoke_2;
  v8[3] = &unk_1E75AAEB0;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __69__PHPhotoLibrary_Repair__setNeedsToRepairKeyCuratedAssetForMemories___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!PHPhotoLibraryVideoCountKey_block_invoke_repairedUUIDs)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = PHPhotoLibraryVideoCountKey_block_invoke_repairedUUIDs;
    PHPhotoLibraryVideoCountKey_block_invoke_repairedUUIDs = v2;
  }

  v4 = [*(a1 + 32) firstObject];
  v5 = [v4 photoLibrary];

  v18 = v5;
  v19 = [v5 assetsdClient];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (([PHPhotoLibraryVideoCountKey_block_invoke_repairedUUIDs containsObject:v11] & 1) == 0)
        {
          [PHPhotoLibraryVideoCountKey_block_invoke_repairedUUIDs addObject:v11];
          v12 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v11;
            _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "repairing key asset for memory with uuid=%@", buf, 0xCu);
          }

          v13 = [v19 libraryInternalClient];
          v29 = v11;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          v20 = 0;
          v15 = [v13 repairMemoriesWithUUIDs:v14 error:&v20];
          v16 = v20;

          if ((v15 & 1) == 0)
          {
            v17 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v26 = v11;
              v27 = 2112;
              v28 = v16;
              _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Error repairing key asset for memory with uuid=%@: %@", buf, 0x16u);
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v8);
  }
}

uint64_t __69__PHPhotoLibrary_Repair__setNeedsToRepairKeyCuratedAssetForMemories___block_invoke()
{
  setNeedsToRepairKeyCuratedAssetForMemories__repairQueue = dispatch_queue_create("com.apple.PHPhotoLibrary.memoryKeyCuratedAssetRepair", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)setSharedPhotoLibrary:(id)a3
{
  v4 = a3;
  [a1 assertRunningInExtension];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PHPhotoLibrary_ProjectExtensions__setSharedPhotoLibrary___block_invoke;
  block[3] = &unk_1E75AB270;
  v8 = v4;
  v5 = sharedPhotoLibraryOnceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&sharedPhotoLibraryOnceToken, block);
  }
}

+ (void)assertRunningInExtension
{
  if (assertRunningInExtension_onceToken != -1)
  {
    dispatch_once(&assertRunningInExtension_onceToken, &__block_literal_global_1378);
  }

  if ((assertRunningInExtension_runningInExtension & 1) == 0)
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_19C86F000, v2, OS_LOG_TYPE_ERROR, "Error: API misuse. Calling API that is only allowed for extensions.", v4, 2u);
    }

    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"API misuse. Calling API that is only allowed for extensions." userInfo:0];
    objc_exception_throw(v3);
  }
}

void __61__PHPhotoLibrary_ProjectExtensions__assertRunningInExtension__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v0 infoDictionary];

  v1 = [v3 objectForKey:@"NSExtension"];
  if (v1)
  {
    assertRunningInExtension_runningInExtension = 1;
  }

  else
  {
    v2 = [v3 objectForKey:@"PlugInKit"];
    assertRunningInExtension_runningInExtension = v2 != 0;
  }
}

- (id)_cloudInternalClient
{
  v2 = [(PHPhotoLibrary *)self photoLibrary];
  v3 = [v2 assetsdClient];
  v4 = [v3 cloudInternalClient];

  return v4;
}

- (void)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 systemBudgets:(unint64_t)a5 completionHandler:(id)a6
{
  v8 = a3;
  v10 = a6;
  v11 = a4;
  v12 = [(PHPhotoLibrary *)self _cloudInternalClient];
  [v12 overrideSystemBudgetsForSyncSession:v8 pauseReason:v11 systemBudgets:a5 completionHandler:v10];
}

- (void)setCloudPhotoLibraryPauseState:(BOOL)a3 reason:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(PHPhotoLibrary *)self _cloudInternalClient];
  [v6 setCloudPhotoLibraryPauseState:v5 reason:v4];
}

- (void)_validateSpotlightAvailabilityInFeatureAvailability:(id)a3 forFeature:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = PLPhotoKitGetLog();
  v10 = os_signpost_id_generate(v9);

  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PHFeatureAvailability - validateSpotlightAvailabilityInFeatureAvailability", byte_19CB567AE, buf, 2u);
  }

  v13 = [(PHPhotoLibrary *)self searchIndex];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3254779904;
  v17[2] = __120__PHPhotoLibrary_FeatureAvailability___validateSpotlightAvailabilityInFeatureAvailability_forFeature_completionHandler___block_invoke;
  v17[3] = &unk_1F0FC3DA0;
  v14 = v7;
  v18 = v14;
  v15 = v12;
  v20 = v15;
  v21 = v10;
  v16 = v8;
  v19 = v16;
  [v13 validateSpotlightIndexForLibraryExistsWithCompletionHandler:v17];
}

void __120__PHPhotoLibrary_FeatureAvailability___validateSpotlightAvailabilityInFeatureAvailability_forFeature_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    if (v5)
    {
      v8 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "FeatureAvailability - encountered error validating spotlight index: %@", &v14, 0xCu);
      }
    }

    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - just-in-time invalidating spotlight index availability during availability fetch", &v14, 2u);
    }

    v7 = [MEMORY[0x1E69BE418] availabilityFromInvalidatingSearchIndexInFeatureAvailability:*(a1 + 32)];
  }

  v10 = v7;
  v11 = *(a1 + 48);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PHFeatureAvailability - validateSpotlightAvailabilityInFeatureAvailability", byte_19CB567AE, &v14, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_updateGraphAvailabilityInFeatureAvailability:(id)a3 forFeature:(unint64_t)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = PLPhotoKitGetLog();
  v9 = os_signpost_id_generate(v8);

  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PHFeatureAvailability - updateGraphAvailabilityInFeatureAvailability", byte_19CB567AE, &v22, 2u);
  }

  if (PLIsPhotoanalysisd())
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[PHPhotoLibrary(FeatureAvailability) _updateGraphAvailabilityInFeatureAvailability:forFeature:error:]";
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - %s called from PAD, using input FeatureAvailability as is", &v22, 0xCu);
    }

    v13 = v7;
  }

  else
  {
    v14 = [(PHPhotoLibrary *)self photoAnalysisClient];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 requestGraphStatus:a5];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 availability] == 2;
        v13 = [MEMORY[0x1E69BE418] availabilityFromFeatureAvailability:v7 withGraphIsAvailable:v18];
        v19 = v11;
        v20 = v19;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          LOWORD(v22) = 0;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v20, OS_SIGNPOST_INTERVAL_END, v9, "PHFeatureAvailability - updateGraphAvailabilityInFeatureAvailability", byte_19CB567AE, &v22, 2u);
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else if (a5)
    {
      [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:@"Could not get PhotoAnalysis client."];
      *a5 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)featureAvailabilityForFeature:(unint64_t)a3 readOptions:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = PLPhotoKitGetLog();
  v11 = os_signpost_id_generate(v10);

  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PHFeatureAvailability - featureAvailabilityForFeature", byte_19CB567AE, buf, 2u);
  }

  v14 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v15 = [v14 globalValues];
  v16 = [v15 featureAvailability];

  if (v16)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3254779904;
    aBlock[2] = __99__PHPhotoLibrary_FeatureAvailability__featureAvailabilityForFeature_readOptions_completionHandler___block_invoke;
    aBlock[3] = &unk_1F0FC3D68;
    v33 = a3;
    v34 = v13;
    v35 = v11;
    v32 = v9;
    v17 = _Block_copy(aBlock);
    v18 = [objc_alloc(MEMORY[0x1E69BE418]) initWithDictionary:v16];
    v19 = v18;
    if ([v8 useJustInTimeGraphAvailability])
    {
      v30 = 0;
      v20 = [(PHPhotoLibrary *)self _updateGraphAvailabilityInFeatureAvailability:v18 forFeature:a3 error:&v30];
      v19 = v30;

      if (!v20)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v21 setObject:@"FeatureAvailability - graph updated availability was nil" forKeyedSubscript:*MEMORY[0x1E696A278]];
        [v21 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v21];
        v17[2](v17, 0, v26);

LABEL_18:
        v23 = v34;
        goto LABEL_19;
      }

      v19 = v20;
    }

    if ([v8 validateSpotlightAvailability])
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __99__PHPhotoLibrary_FeatureAvailability__featureAvailabilityForFeature_readOptions_completionHandler___block_invoke_35;
      v27[3] = &unk_1E75A7510;
      v27[4] = self;
      v29 = a3;
      v28 = v17;
      v21 = _Block_copy(v27);
    }

    else
    {
      v21 = _Block_copy(v17);
    }

    (*(v21 + 2))(v21, v19, 0);
    goto LABEL_18;
  }

  v22 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - availability was nil, initing new", buf, 2u);
  }

  v23 = [[PHFeatureAvailability alloc] initForFeature:a3];
  v24 = v13;
  v25 = v24;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v25, OS_SIGNPOST_INTERVAL_END, v11, "PHFeatureAvailability - featureAvailabilityForFeature", byte_19CB567AE, buf, 2u);
  }

  (*(v9 + 2))(v9, v23, 0);
LABEL_19:
}

void __99__PHPhotoLibrary_FeatureAvailability__featureAvailabilityForFeature_readOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[PHFeatureAvailability alloc] initForFeature:*(a1 + 40) withPLFeatureAvailability:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PHFeatureAvailability - featureAvailabilityForFeature", byte_19CB567AE, v11, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __99__PHPhotoLibrary_FeatureAvailability__featureAvailabilityForFeature_readOptions_completionHandler___block_invoke_35(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __99__PHPhotoLibrary_FeatureAvailability__featureAvailabilityForFeature_readOptions_completionHandler___block_invoke_2;
    v7[3] = &unk_1E75A74E8;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v5 _validateSpotlightAvailabilityInFeatureAvailability:a2 forFeature:v4 completionHandler:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (id)featureAvailabilityForFeature:(unint64_t)a3 readOptions:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = PLPhotoKitGetLog();
  v9 = os_signpost_id_generate(v8);

  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PHFeatureAvailability - featureAvailabilityForFeature", byte_19CB567AE, buf, 2u);
  }

  v12 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v13 = [v12 globalValues];
  v14 = [v13 featureAvailability];

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E69BE418]) initWithDictionary:v14];
    if ([v7 useJustInTimeGraphAvailability])
    {
      v25 = 0;
      v16 = [(PHPhotoLibrary *)self _updateGraphAvailabilityInFeatureAvailability:v15 forFeature:a3 error:&v25];
      v17 = v25;

      if (v16)
      {
        v18 = [[PHFeatureAvailability alloc] initForFeature:a3 withPLFeatureAvailability:v16];
      }

      else
      {
        v21 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v17;
          _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "FeatureAvailability - updated availability was nil, initing new. Encountered error: %@", buf, 0xCu);
        }

        v18 = [[PHFeatureAvailability alloc] initForFeature:a3];
      }

      v20 = v18;
    }

    else
    {
      v20 = [[PHFeatureAvailability alloc] initForFeature:a3 withPLFeatureAvailability:v15];
      v16 = v15;
    }

    v22 = v11;
    v23 = v22;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v23, OS_SIGNPOST_INTERVAL_END, v9, "PHFeatureAvailability - featureAvailabilityForFeature", byte_19CB567AE, buf, 2u);
    }
  }

  else
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - availability was nil, initing new", buf, 2u);
    }

    v20 = [[PHFeatureAvailability alloc] initForFeature:a3];
  }

  return v20;
}

- (NSArray)cloudIdentifiersForLocalIdentifiers:(NSArray *)localIdentifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = localIdentifiers;
  v5 = [[PHCloudIdentifierLookup alloc] initWithPhotoLibrary:self];
  v6 = [(PHCloudIdentifierLookup *)v5 lookupCloudIdentifiersForLocalIdentifiers:v4];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v6 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
        if (!v13)
        {
          v13 = +[PHCloudIdentifier _notFoundIdentifier];
        }

        [v7 addObject:v13];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (NSArray)localIdentifiersForCloudIdentifiers:(NSArray *)cloudIdentifiers
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = cloudIdentifiers;
  v16 = [[PHCloudIdentifierLookup alloc] initWithPhotoLibrary:self];
  v5 = [(PHCloudIdentifierLookup *)v16 lookupLocalIdentifiersForCloudIdentifiers:v4];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) localCloudIdentifier];
        v13 = [v5 objectForKeyedSubscript:v12];

        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v14 = v13;
        }

        else
        {
          v14 = &stru_1F0FC60C8;
        }

        [v6 addObject:v14];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)cloudIdentifierMappingsForLocalIdentifiers:(id)a3 excludeUnsyncedItems:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[PHCloudIdentifierLookup alloc] initWithPhotoLibrary:self];
  [(PHCloudIdentifierLookup *)v7 setExcludeUnsyncedItems:v4];
  v20 = v7;
  v8 = [(PHCloudIdentifierLookup *)v7 lookupCloudIdentifiersForLocalIdentifiers:v6];
  v21 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v8 objectForKeyedSubscript:v13];
        v16 = v15;
        if (v15 || !v4)
        {
          if (v15)
          {
            v17 = 0;
          }

          else
          {
            v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3201 userInfo:0];
          }

          v18 = [[PHCloudIdentifierMapping alloc] initWithCloudIdentifier:v16 error:v17];
          [v21 setObject:v18 forKeyedSubscript:v13];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  return v21;
}

- (NSDictionary)localIdentifierMappingsForCloudIdentifiers:(NSArray *)cloudIdentifiers
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = cloudIdentifiers;
  v23 = [[PHCloudIdentifierLookup alloc] initWithPhotoLibrary:self];
  v5 = [(PHCloudIdentifierLookup *)v23 lookupLocalIdentifiersForCloudIdentifiers:v4];
  v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](v4, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 localCloudIdentifier];
        v13 = [v5 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v16 = MEMORY[0x1E696ABC0];
          v17 = 3201;
LABEL_13:
          v15 = [v16 errorWithDomain:@"PHPhotosErrorDomain" code:v17 userInfo:0];
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = 0;
          goto LABEL_15;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v19 = MEMORY[0x1E696ABC0];
        if ((isKindOfClass & 1) == 0)
        {
          v16 = MEMORY[0x1E696ABC0];
          v17 = -1;
          goto LABEL_13;
        }

        v30 = @"PHLocalIdentifiersErrorKey";
        v31 = v13;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v15 = [v19 errorWithDomain:@"PHPhotosErrorDomain" code:3202 userInfo:v20];

LABEL_14:
        v14 = 0;
LABEL_15:
        v21 = [[PHLocalIdentifierMapping alloc] initWithLocalIdentifier:v14 error:v15];
        [v25 setObject:v21 forKeyedSubscript:v10];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  return v25;
}

- (id)bfa_fetchUUIDsForRestrictedOIDs:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self assetsdClient];
  v6 = [v5 photoKitClient];

  v7 = [(PHPhotoLibrary *)self objectFetchingContextForCurrentQueueQoS];
  v12 = 0;
  v8 = [v6 getUUIDsForAssetObjectIDs:v4 filterPredicate:0 context:v7 error:&v12];

  v9 = v12;
  if (!v8)
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve UUIDs for missing fetch result object IDs %@", buf, 0xCu);
    }
  }

  return v8;
}

- (BOOL)bfa_supportsPrivacyRestrictionsForOIDs:(id)a3
{
  v4 = a3;
  v14 = 0;
  if ([v4 count])
  {
    v5 = [(PHPhotoLibrary *)self photoLibraryBundle];
    v6 = [v5 connectionType];

    if (v6 == 1)
    {
      objc_opt_class();
      v7 = [v4 firstObject];
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
      v9 = v8;

      v10 = [v9 entity];

      v11 = [v10 name];
      v12 = [MEMORY[0x1E69BE540] entityName];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v14 = 1;
      }
    }
  }

  return v14;
}

- (id)bfa_tombstoneObjectForOID:(id)a3 uuid:(id)a4 propertyHint:(unint64_t)a5 overrideResultsWithClass:(Class)a6
{
  v20[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (!a6)
  {
    a6 = [PHPhotoLibrary PHObjectClassForOID:v10];
  }

  v12 = [(objc_class *)a6 entityKeyForPropertyKey:@"uuid"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"uuid";
  }

  v15 = v14;

  v19[0] = @"objectID";
  v19[1] = @"deleted";
  v20[0] = v10;
  v20[1] = MEMORY[0x1E695E118];
  v19[2] = v15;
  v20[2] = v11;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v17 = [[a6 alloc] initWithFetchDictionary:v16 propertyHint:a5 photoLibrary:self];

  return v17;
}

- (id)fetchPersonAvailabilityOfDetectionTypes:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoLibrary];
  if (v7)
  {
    if (!v6)
    {
      v6 = +[PHFetchOptions defaultDetectionTypes];
    }

    v8 = [MEMORY[0x1E69BE608] predicateForIncludedDetectionTypes:v6];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__47428;
    v34 = __Block_byref_object_dispose__47429;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__47428;
    v28 = __Block_byref_object_dispose__47429;
    v29 = 0;
    v9 = [v7 managedObjectContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84__PHPhotoLibrary_PersonAvailability__fetchPersonAvailabilityOfDetectionTypes_error___block_invoke;
    v18[3] = &unk_1E75A9FC0;
    v10 = v8;
    v19 = v10;
    v11 = v9;
    v20 = v11;
    v22 = &v24;
    v23 = &v30;
    v6 = v6;
    v21 = v6;
    [v11 performBlockAndWait:v18];
    v12 = v31[5];
    v13 = v25[5];
    if (!v12 && a4)
    {
      v13 = v13;
      *a4 = v13;
    }

    v14 = v31[5];
    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A278];
    v37[0] = @"Unable to obtain PLPhotoLibrary";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v16 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3109 userInfo:v10];
    if (a4)
    {
      v16 = v16;
      *a4 = v16;
    }

    v14 = 0;
  }

  return v14;
}

void __84__PHPhotoLibrary_PersonAvailability__fetchPersonAvailabilityOfDetectionTypes_error___block_invoke(void *a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BE608] fetchRequest];
  v49[0] = @"mdID";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  [v2 setPropertiesToFetch:v3];

  v48[0] = @"keyFace.vuObservationID";
  v48[1] = @"faceCrops";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  [v2 setRelationshipKeyPathsForPrefetching:v4];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d", @"type", 0];
  v47[0] = v5;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"verifiedType", &unk_1F102E3C0];
  v47[1] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 0", @"faceCount"];
  v47[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];

  if (a1[4])
  {
    v9 = [v8 arrayByAddingObject:?];

    v8 = v9;
  }

  v10 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v8];
  [v2 setPredicate:v10];

  [v2 setFetchBatchSize:100];
  v11 = a1[5];
  v43 = 0;
  v12 = [v11 executeFetchRequest:v2 error:&v43];
  v13 = v43;
  v14 = v13;
  if (v12)
  {
    v15 = [[PHPersonAvailability alloc] initWithRequestedDetectionTypes:a1[6]];
    v16 = *(a1[8] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v36 = v14;
      v37 = v12;
      v38 = v8;
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          [*(*(a1[8] + 8) + 40) setAvailablePersonCount:{objc_msgSend(*(*(a1[8] + 8) + 40), "availablePersonCount") + 1}];
          v25 = [v23 mdID];

          if (v25)
          {
            [*(*(a1[8] + 8) + 40) setMdIDCount:{objc_msgSend(*(*(a1[8] + 8) + 40), "mdIDCount") + 1}];
          }

          v26 = [v23 keyFace];
          if (v26)
          {
            [*(*(a1[8] + 8) + 40) setKeyFaceCount:{objc_msgSend(*(*(a1[8] + 8) + 40), "keyFaceCount") + 1}];
            if ([v26 vuObservationID])
            {
              [*(*(a1[8] + 8) + 40) setKeyFaceWithVUObservationIDCount:{objc_msgSend(*(*(a1[8] + 8) + 40), "keyFaceWithVUObservationIDCount") + 1}];
            }
          }

          v27 = [v23 faceCrops];
          v28 = [v27 anyObject];

          if (v28)
          {
            [*(*(a1[8] + 8) + 40) setNonzeroFaceCropsCount:{objc_msgSend(*(*(a1[8] + 8) + 40), "nonzeroFaceCropsCount") + 1}];
          }

          objc_autoreleasePoolPop(v24);
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v20);
      v12 = v37;
      v8 = v38;
      v14 = v36;
    }

LABEL_22:

    goto LABEL_23;
  }

  v29 = MEMORY[0x1E696ABC0];
  v30 = *MEMORY[0x1E696A278];
  v46[0] = @"Person fetch failed";
  v31 = *MEMORY[0x1E696AA08];
  v45[0] = v30;
  v45[1] = v31;
  v18 = v13;
  if (!v13)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:0 userInfo:0];
  }

  v46[1] = v18;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v33 = [v29 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v32];
  v34 = *(a1[7] + 8);
  v35 = *(v34 + 40);
  *(v34 + 40) = v33;

  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_23:
}

- (void)coalesceAndAnalyzeAssets:(id)a3 forFeature:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self analysisCoalescer];
  [v7 coalesceAndAnalyzeAssets:v6 forFeature:a4];
}

- (id)analyzeLibraryForFeature:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(PHPhotoLibrary *)self assetsdClient];
  v8 = [v7 photoKitClient];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PHPhotoLibrary_AssetAnalysis__analyzeLibraryForFeature_withCompletion___block_invoke;
  v12[3] = &unk_1E75AA248;
  v13 = v6;
  v9 = v6;
  v10 = [v8 analyzeLibraryForFeature:a3 withCompletionHandler:v12];

  return v10;
}

void __73__PHPhotoLibrary_AssetAnalysis__analyzeLibraryForFeature_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

- (id)analyzeAssets:(id)a3 forFeature:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PHPhotoLibrary *)self assetsdClient];
  v11 = [v10 photoKitClient];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PHPhotoLibrary_AssetAnalysis__analyzeAssets_forFeature_withCompletion___block_invoke;
  v15[3] = &unk_1E75AA248;
  v16 = v8;
  v12 = v8;
  v13 = [v11 analyzeAssets:v9 forFeature:a4 withCompletionHandler:v15];

  return v13;
}

void __73__PHPhotoLibrary_AssetAnalysis__analyzeAssets_forFeature_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

- (void)requestGraphModelResultWithOptions:(id)a3 progress:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v11 = v10;
  if (v10)
  {
    [v10 requestGraphModelResultWithOptions:v12 progress:v8 reply:v9];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

- (id)newUnclusteredFacesFetchOptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69BE5A0] currentFaceVersion];
  v4 = [v3 intValue];

  v5 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  [v5 setIncludeNonvisibleFaces:1];
  [v5 setIncludeOnlyFacesWithFaceprints:1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %d) AND (((%K = 0) AND (%K = 0) AND ((%K = %d) OR (%K = nil))) OR ((%K = %d) OR (%K = %d) OR (%K = %d)))", @"faceAlgorithmVersion", v4, @"hidden", @"manual", @"trainingType", 0, @"trainingType", @"trainingType", 1, @"trainingType", 2, @"trainingType", 5];
  v7 = MEMORY[0x1E696AB28];
  v12[0] = v6;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = 0", @"vuObservationID"];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [v7 andPredicateWithSubpredicates:v9];
  [v5 setInternalPredicate:v10];

  [v5 setIncludedDetectionTypes:&unk_1F102E438];
  return v5;
}

- (id)newFaceCropsToBeGeneratedFetchOptions
{
  v2 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  [v2 setIncludeOnlyFacesNeedingFaceCrop:1];
  [v2 setIncludeNonvisibleFaces:1];
  [v2 setIncludedDetectionTypes:&unk_1F102E420];
  return v2;
}

- (id)newClusteringEligibleFacesFetchOptions
{
  v3 = [MEMORY[0x1E69BE5A0] currentFaceVersion];
  v4 = [v3 intValue];

  v5 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  [v5 setIncludeNonvisibleFaces:1];
  [v5 setIncludeOnlyFacesWithFaceprints:1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(faceAlgorithmVersion = %d) AND (((hidden = 0) AND (manual = 0) AND ((trainingType = %d) OR (trainingType = nil))) OR ((trainingType = %d) OR (trainingType = %d) OR (trainingType = %d)))", v4, 0, 1, 2, 5];
  [v5 setInternalPredicate:v6];

  return v5;
}

- (unint64_t)countOfUnclusteredFaces
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = PLAssetAnalysisGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CountOfUnclusteredFaces", byte_19CB567AE, v14, 2u);
  }

  v7 = [(PHPhotoLibrary *)self newUnclusteredFacesFetchOptions];
  [v7 setShouldPrefetchCount:1];
  v15[0] = @"PHFacePropertySetIdentifier";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v7 setFetchPropertySets:v8];

  v9 = [PHFace fetchFacesWithOptions:v7];
  v10 = [v9 count];
  v11 = v6;
  v12 = v11;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_END, v4, "CountOfUnclusteredFaces", byte_19CB567AE, v14, 2u);
  }

  return v10;
}

- (unint64_t)countOfClusteringEligibleFaces
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = PLAssetAnalysisGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CountOfClusteringEligibleFaces", byte_19CB567AE, v14, 2u);
  }

  v7 = [(PHPhotoLibrary *)self newClusteringEligibleFacesFetchOptions];
  [v7 setShouldPrefetchCount:1];
  v15[0] = @"PHFacePropertySetIdentifier";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v7 setFetchPropertySets:v8];

  v9 = [PHFace fetchFacesWithOptions:v7];
  v10 = [v9 count];
  v11 = v6;
  v12 = v11;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_END, v4, "CountOfClusteringEligibleFaces", byte_19CB567AE, v14, 2u);
  }

  return v10;
}

- (unint64_t)countOfFaceCropsToBeGenerated
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = PLAssetAnalysisGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CountOfFaceCropsToBeGenerated", byte_19CB567AE, buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v8 = [v7 managedObjectContext];

  v9 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__PHPhotoLibrary_AssetAnalysis__countOfFaceCropsToBeGenerated__block_invoke;
  v16[3] = &unk_1E75AADC0;
  v18 = buf;
  v10 = v8;
  v17 = v10;
  [v9 performBlockAndWait:v16];

  v11 = v6;
  v12 = v11;
  if (v4 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    v13 = *(v20 + 3);
    *v23 = 134217984;
    v24 = v13;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_END, v4, "CountOfFaceCropsToBeGenerated", "count: %ld", v23, 0xCu);
  }

  v14 = *(v20 + 3);
  _Block_object_dispose(buf, 8);

  return v14;
}

void __62__PHPhotoLibrary_AssetAnalysis__countOfFaceCropsToBeGenerated__block_invoke(uint64_t a1)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BE3D0] fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"faceCrop"];
  v21[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0", @"duration"];
  v21[1] = v5;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO", @"manual"];
  v21[2] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 0 OR %K == 0", @"centerX", @"bodyCenterX"];
  v21[3] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K != nil OR %K = %d", @"rejectedPersonsNeedingFaceCrops", @"confirmedFaceCropGenerationState", 1];
  v21[4] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];
  v10 = [v3 andPredicateWithSubpredicates:v9];
  [v2 setPredicate:v10];

  v11 = *(a1 + 32);
  v16 = 0;
  v12 = [v11 countForFetchRequest:v2 error:&v16];
  v13 = v16;
  *(*(*(a1 + 40) + 8) + 24) = v12;
  if (*(*(*(a1 + 40) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v2 predicate];
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Error getting count of DetectedFace with predicate %@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (unint64_t)countOfUnprocessedFaceCrops
{
  v3 = PLAssetAnalysisGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CountOfUnprocessedFaceCrops", byte_19CB567AE, buf, 2u);
  }

  v7 = [(PHPhotoLibrary *)self librarySpecificFetchOptions];
  [v7 setShouldPrefetchCount:1];
  v8 = [PHFaceCrop fetchFaceCropsNeedingFaceDetectionWithOptions:v7];
  v9 = [v8 count];
  v10 = v6;
  v11 = v10;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v11, OS_SIGNPOST_INTERVAL_END, v4, "CountOfUnprocessedFaceCrops", byte_19CB567AE, v13, 2u);
  }

  return v9;
}

- (id)faceClusterSequenceNumbersOfFacesWithClusterSequenceNumbers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__47915;
    v32 = __Block_byref_object_dispose__47916;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__47915;
    v26 = __Block_byref_object_dispose__47916;
    v27 = 0;
    v9 = [(PHPhotoLibrary *)self photoLibrary];
    v10 = [v9 managedObjectContext];
    v11 = objc_autoreleasePoolPush();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__PHPhotoLibrary_AssetAnalysis__faceClusterSequenceNumbersOfFacesWithClusterSequenceNumbers_error___block_invoke;
    v16[3] = &unk_1E75AA420;
    v17 = v6;
    v12 = v10;
    v18 = v12;
    v19 = &v28;
    v20 = &v22;
    v21 = v8;
    [v9 performBlockAndWait:v16];

    objc_autoreleasePoolPop(v11);
    v13 = v23[5];
    if (a4 && !v13)
    {
      *a4 = v29[5];
      v13 = v23[5];
    }

    v14 = v13;

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v14 = [MEMORY[0x1E695DFD8] set];
  }

  return v14;
}

void __99__PHPhotoLibrary_AssetAnalysis__faceClusterSequenceNumbersOfFacesWithClusterSequenceNumbers_error___block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BE3D0] fetchRequest];
  [v2 setPropertiesToFetch:&unk_1F102E408];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"clusterSequenceNumber in %@", a1[4]];
  [v2 setPredicate:v3];

  [v2 setFetchBatchSize:100];
  v4 = a1[5];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:a1[8]];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(a1[7] + 8) + 40);
          v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "clusterSequenceNumber")}];
          [v15 addObject:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Error fetching faces: %@", buf, 0xCu);
    }
  }
}

- (BOOL)isFaceProcessingFinished
{
  v3 = PLAssetAnalysisGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "IsFaceProcessingFinished", byte_19CB567AE, buf, 2u);
  }

  v7 = ![(PHPhotoLibrary *)self countOfUnprocessedFaceCrops]&& ![(PHPhotoLibrary *)self countOfUnclusteredFaces]&& ![(PHPhotoLibrary *)self countOfFaceCropsToBeGenerated];
  v8 = v6;
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v9, OS_SIGNPOST_INTERVAL_END, v4, "IsFaceProcessingFinished", byte_19CB567AE, v11, 2u);
  }

  return v7;
}

- (id)faceClusterSequenceNumbersOfKeyFacesInAlgorithmicFaceGroupsForPerson:(id)a3 verifiedClusterSequenceNumbers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = [(PHPhotoLibrary *)self photoLibrary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __133__PHPhotoLibrary_AssetAnalysis__faceClusterSequenceNumbersOfKeyFacesInAlgorithmicFaceGroupsForPerson_verifiedClusterSequenceNumbers___block_invoke;
  v21[3] = &unk_1E75AA130;
  v21[4] = self;
  v22 = v6;
  v11 = v8;
  v23 = v11;
  v24 = v7;
  v12 = v9;
  v25 = v12;
  v13 = v7;
  v14 = v6;
  [v10 performBlockAndWait:v21];

  if (![v12 count])
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "Prefiltering is not done since the current criteria filtered out all clusters.", v20, 2u);
    }

    v16 = v11;
    v12 = v16;
  }

  v17 = v25;
  v18 = v12;

  return v12;
}

void __133__PHPhotoLibrary_AssetAnalysis__faceClusterSequenceNumbersOfKeyFacesInAlgorithmicFaceGroupsForPerson_verifiedClusterSequenceNumbers___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) photoLibrary];
  v38 = [v2 managedObjectContext];

  v34 = [*v1 librarySpecificFetchOptions];
  [v34 setMinimumUnverifiedFaceCount:1];
  v33 = [PHFaceGroup fetchFaceGroupsForPerson:*(a1 + 40) options:v34];
  v32 = [v33 fetchedObjectIDs];
  [v38 pl_fetchObjectsWithIDs:v32];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  obj = v66 = 0u;
  v37 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v37)
  {
    v36 = *v66;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v66 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v65 + 1) + 8 * i);
        v5 = objc_autoreleasePoolPush();
        v6 = MEMORY[0x1E695D5E0];
        v7 = [MEMORY[0x1E69BE608] entityName];
        v8 = [v6 fetchRequestWithEntityName:v7];

        v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"associatedFaceGroup == %@ AND faceCount > 0", v4];
        [v8 setPredicate:v9];

        [v8 setResultType:0];
        [v8 setFetchLimit:1];
        [v8 setReturnsObjectsAsFaults:0];
        v64 = 0;
        v10 = [v38 executeFetchRequest:v8 error:&v64];
        v11 = v64;
        v12 = [v10 firstObject];

        if (v11)
        {
          v13 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v11;
            _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Error fetching unverified person: %@", &buf, 0xCu);
          }
        }

        v14 = MEMORY[0x1E695D5E0];
        v15 = [MEMORY[0x1E69BE3D0] entityName];
        v16 = [v14 fetchRequestWithEntityName:v15];

        v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == NO AND %K >= 1", @"faceGroup", v4, @"manual", @"clusterSequenceNumber"];
        [v16 setPredicate:v17];

        v75 = @"personForFace";
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
        [v16 setRelationshipKeyPathsForPrefetching:v18];

        v74 = @"clusterSequenceNumber";
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
        [v16 setPropertiesToFetch:v19];

        [v16 setResultType:0];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v70 = 0x3032000000;
        v71 = __Block_byref_object_copy__47915;
        v72 = __Block_byref_object_dispose__47916;
        v73 = [v4 keyFace];
        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        v63 = 0;
        v56 = 0;
        v57 = &v56;
        v58 = 0x2020000000;
        v59 = 0;
        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v55 = 0;
        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v51 = 0;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __133__PHPhotoLibrary_AssetAnalysis__faceClusterSequenceNumbersOfKeyFacesInAlgorithmicFaceGroupsForPerson_verifiedClusterSequenceNumbers___block_invoke_199;
        v40[3] = &unk_1E75AA218;
        v43 = &v60;
        p_buf = &buf;
        v41 = *(a1 + 40);
        v20 = v12;
        v42 = v20;
        v45 = &v48;
        v46 = &v56;
        v47 = &v52;
        v21 = [v38 enumerateObjectsFromFetchRequest:v16 count:0 usingDefaultBatchSizeWithBlock:v40];
        v22 = *(a1 + 48);
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v61[3]];
        [v22 addObject:v23];

        v24 = v53[3];
        v25 = v49[3];
        if (!v24 || (v26 = v57[3], v24 <= v26) && (v27 = v24 + v26 + v25, v27 > 7) && (v25 / v27) <= 0.8 && v26 >= 5 * v24)
        {
          if (!v25)
          {
            v28 = *(a1 + 56);
            v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v61[3]];
            [v28 addObject:v29];
          }

          v30 = *(a1 + 64);
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v61[3]];
          [v30 addObject:v31];
        }

        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v52, 8);
        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&v60, 8);
        _Block_object_dispose(&buf, 8);

        objc_autoreleasePoolPop(v5);
      }

      v37 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v37);
  }
}

void __133__PHPhotoLibrary_AssetAnalysis__faceClusterSequenceNumbersOfKeyFacesInAlgorithmicFaceGroupsForPerson_verifiedClusterSequenceNumbers___block_invoke_199(uint64_t a1, void *a2)
{
  v4 = a2;
  v17 = v4;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v5 = *(*(a1 + 56) + 8);
    v8 = *(v5 + 40);
    v6 = (v5 + 40);
    v7 = v8;
    if (v8)
    {
      v9 = [v7 isEqual:v4];
      v4 = v17;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      objc_storeStrong(v6, a2);
      v4 = v17;
    }

    v10 = [v4 clusterSequenceNumber];
    v4 = v17;
    *(*(*(a1 + 48) + 8) + 24) = v10;
  }

LABEL_7:
  v11 = [v4 associatedPersonForFaceOrTorso:1 orTemporal:0];
  v12 = [v11 personUUID];
  v13 = [*(a1 + 32) uuid];
  v14 = *(a1 + 40);
  if (v14 && ([v14 isEqual:v11] & 1) != 0)
  {
    v15 = 64;
  }

  else
  {
    v16 = [v12 isEqualToString:v13];
    v15 = 80;
    if (v16)
    {
      v15 = 72;
    }
  }

  ++*(*(*(a1 + v15) + 8) + 24);
}

- (id)suggestionsForPersonLocalIdentifier:(id)a3 clusterSequenceNumbers:(id)a4 excludePersonLocalIdentifiers:(id)a5 minimumSuggestionFaceCount:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__47915;
    v26 = __Block_byref_object_dispose__47916;
    v27 = 0;
    v13 = [(PHPhotoLibrary *)self photoLibrary];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __149__PHPhotoLibrary_AssetAnalysis__suggestionsForPersonLocalIdentifier_clusterSequenceNumbers_excludePersonLocalIdentifiers_minimumSuggestionFaceCount___block_invoke;
    v16[3] = &unk_1E75AA1F0;
    v16[4] = self;
    v17 = v11;
    v18 = v10;
    v21 = a6;
    v19 = v12;
    v20 = &v22;
    [v13 performBlockAndWait:v16];

    v14 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

void __149__PHPhotoLibrary_AssetAnalysis__suggestionsForPersonLocalIdentifier_clusterSequenceNumbers_excludePersonLocalIdentifiers_minimumSuggestionFaceCount___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 managedObjectContext];

  if (!*(a1 + 40))
  {
    v9 = 0;
    v15 = 0;
    goto LABEL_12;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E695D5E0];
  v6 = [MEMORY[0x1E69BE3D0] entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"clusterSequenceNumber in %@", *(a1 + 40)];
  [v7 setPredicate:v8];

  [v7 setFetchBatchSize:100];
  v51 = 0;
  v9 = [v3 executeFetchRequest:v7 error:&v51];
  v10 = v51;
  v11 = v10;
  if (!v9)
  {
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v11;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Error fetching faces: %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v4);
  v4 = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1E695D5E0];
  v13 = [MEMORY[0x1E69BE3D8] entityName];
  v7 = [v12 fetchRequestWithEntityName:v13];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY detectedFaces in %@", v9];
  [v7 setPredicate:v14];

  [v7 setFetchBatchSize:100];
  v50 = 0;
  v15 = [v3 executeFetchRequest:v7 error:&v50];
  v11 = v50;
  if (!v15)
  {
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v11;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Error fetching face groups: %@", buf, 0xCu);
    }

LABEL_10:

    v15 = 0;
  }

  objc_autoreleasePoolPop(v4);
LABEL_12:
  v45 = v9;
  v17 = [(PHObject *)PHPerson uuidFromLocalIdentifier:*(a1 + 48)];
  v18 = 0x1E69BE000uLL;
  v44 = [MEMORY[0x1E69BE608] personWithUUID:v17 inManagedObjectContext:v3];
  v19 = [v44 rejectedFaces];
  if (v19)
  {
    v20 = v15;
    v21 = objc_autoreleasePoolPush();
    v22 = [MEMORY[0x1E69BE3D8] fetchRequest];
    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY detectedFaces in %@", v19];
    [v22 setPredicate:v23];

    [v22 setFetchBatchSize:100];
    v49 = 0;
    v24 = [v3 executeFetchRequest:v22 error:&v49];
    v25 = v49;
    if (!v24)
    {
      v26 = v3;
      v27 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v25;
        _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "Error fetching rejected face groups: %@", buf, 0xCu);
      }

      v3 = v26;
    }

    v28 = v3;

    objc_autoreleasePoolPop(v21);
    v15 = v20;
    v18 = 0x1E69BE000;
  }

  else
  {
    v28 = v3;
    v24 = 0;
  }

  v29 = [v15 mutableCopy];
  [v29 removeObjectsInArray:v24];
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v29 count])
  {
    v43 = v17;
    v31 = v15;
    v32 = objc_autoreleasePoolPush();
    v33 = MEMORY[0x1E695D5E0];
    v34 = [*(v18 + 1544) entityName];
    v35 = [v33 fetchRequestWithEntityName:v34];

    v36 = [MEMORY[0x1E696AE18] predicateWithFormat:@"associatedFaceGroup IN %@ AND faceCount >= %ld", v29, *(a1 + 72)];
    [v35 setPredicate:v36];

    [v35 setRelationshipKeyPathsForPrefetching:&unk_1F102E3F0];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __149__PHPhotoLibrary_AssetAnalysis__suggestionsForPersonLocalIdentifier_clusterSequenceNumbers_excludePersonLocalIdentifiers_minimumSuggestionFaceCount___block_invoke_158;
    v46[3] = &unk_1E75AA1A8;
    v47 = *(a1 + 56);
    v48 = v30;
    v37 = [v28 enumerateObjectsFromFetchRequest:v35 count:0 usingDefaultBatchSizeWithBlock:v46];

    v38 = v32;
    v15 = v31;
    v17 = v43;
    objc_autoreleasePoolPop(v38);
  }

  v39 = [v30 allValues];
  v40 = [v39 sortedArrayUsingComparator:&__block_literal_global_178];
  v41 = *(*(a1 + 64) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v40;
}

void __149__PHPhotoLibrary_AssetAnalysis__suggestionsForPersonLocalIdentifier_clusterSequenceNumbers_excludePersonLocalIdentifiers_minimumSuggestionFaceCount___block_invoke_158(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 personUUID];
  v4 = [(PHObject *)PHPerson localIdentifierWithUUID:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) member:v4];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = [v15 keyFace];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 uuid];
        v10 = [(PHObject *)PHFace localIdentifierWithUUID:v9];

        [v6 setObject:v4 forKeyedSubscript:@"personIdentifier"];
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "faceCount")}];
        [v6 setObject:v11 forKeyedSubscript:@"personFaceCount"];

        [v6 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"confirmed"];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "clusterSequenceNumber")}];
        [v6 setObject:v12 forKeyedSubscript:@"faceCSN"];

        [v6 setObject:v10 forKeyedSubscript:@"faceIdentifier"];
        v13 = *(a1 + 40);
        v14 = [v15 objectID];
        [v13 setObject:v6 forKeyedSubscript:v14];
      }
    }
  }
}

uint64_t __149__PHPhotoLibrary_AssetAnalysis__suggestionsForPersonLocalIdentifier_clusterSequenceNumbers_excludePersonLocalIdentifiers_minimumSuggestionFaceCount___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"personFaceCount"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"personFaceCount"];

  v8 = [v7 integerValue];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

- (id)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(id)a3 candidateAssetUUIDs:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E69BE7F8];
  v9 = a4;
  v10 = a3;
  v11 = [(PHPhotoLibrary *)self photoLibrary];
  v12 = [v8 keyAssetUUIDOfSocialGroupWithPersonUUIDs:v10 candidateAssetUUIDs:v9 inLibrary:v11 error:a5];

  return v12;
}

- (void)personPromotionProcessingStatusForUserInterface:(id)a3
{
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self photoAnalysisClient];
  [v5 personPromoterStatus:v4];
}

- (id)suggestedMePersonIdentifierWithError:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v5 = [v4 requestSuggestedMePersonIdentifierWithError:a3];

  return v5;
}

- (id)assetIdentifiersForPersonIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestAssetsForPersonLocalIdentifiers:v6 withError:a4];

  return v8;
}

- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestSocialGroupsOverlappingMemberLocalIdentifiers:v6 withError:a4];

  return v8;
}

- (id)allSocialGroupsForMemberLocalIdentifier:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v11 = [v10 requestAllSocialGroupsForMemberLocalIdentifier:v9 withOptions:v8 error:a5];

  return v11;
}

- (id)sortedArrayOfPersonIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestSortedArrayOfPersonLocalIdentifiers:v6 withError:a4];

  return v8;
}

- (void)requestExternalAssetRelevanceProcessingWithReply:(id)a3
{
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self photoAnalysisClient];
  [v5 requestExternalAssetRelevanceProcessingWithReply:v4];
}

- (void)requestSyndicationProcessingWithOptions:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PHPhotoLibrary *)self photoAnalysisClient];
  [v8 requestSyndicationProcessingWithOptions:v7 reply:v6];
}

- (void)requestGenerateQuestionsWithOptions:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PHPhotoLibrary *)self photoAnalysisClient];
  [v8 requestGenerateQuestionsWithOptions:v7 reply:v6];
}

- (void)runShadowEvaluationWithRecipe:(id)a3 models:(id)a4 trialDeploymentID:(id)a5 trialExperimentID:(id)a6 trialTreatmentID:(id)a7 resultBlock:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(PHPhotoLibrary *)self photoAnalysisClient];
  [v20 requestRunShadowEvaluationWithRecipe:v19 models:v18 trialDeploymentID:v17 trialExperimentID:v16 trialTreatmentID:v15 resultBlock:v14];
}

- (void)runPFLWithAttachments:(id)a3 recipeUserInfo:(id)a4 resultBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PHPhotoLibrary *)self photoAnalysisClient];
  [v11 requestRunPFLWithAttachments:v10 recipeUserInfo:v9 resultBlock:v8];
}

- (id)requestTextFeaturesForMomentLocalIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestTextFeaturesForMomentLocalIdentifiers:v6 error:a4];

  return v8;
}

- (void)simulateMemoriesNotificationWithOptions:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = v7;
  if (v7)
  {
    [v7 simulateMemoriesNotificationWithOptions:v9 reply:v6];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (BOOL)requestEnrichmentWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  LOBYTE(a4) = [v7 requestEnrichmentWithOptions:v6 error:a4];

  return a4;
}

- (BOOL)requestAssetRevGeocodingForAssetLocalIdentifiers:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  LOBYTE(a4) = [v7 requestAssetRevGeocodingForAssetLocalIdentifiers:v6 withError:a4];

  return a4;
}

- (BOOL)requestAssetRevGeocodingWithError:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self photoAnalysisClient];
  LOBYTE(a3) = [v4 requestAssetRevGeocodingWithError:a3];

  return a3;
}

- (BOOL)requestHighlightCollectionEnrichmentWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  LOBYTE(a4) = [v7 requestHighlightCollectionEnrichmentWithOptions:v6 error:a4];

  return a4;
}

- (BOOL)requestHighlightEnrichmentWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  LOBYTE(a4) = [v7 requestHighlightEnrichmentWithOptions:v6 error:a4];

  return a4;
}

- (void)requestGraphReadyNotificationWithCoalescingIdentifier:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = v7;
  if (v7)
  {
    [v7 notifyWhenGraphReadyWithCoalescingIdentifier:v9 reply:v6];
  }

  else if (v6)
  {
    v6[2](v6, 1, 0);
  }
}

- (void)requestGraphRebuildProgressWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v5 = v4;
  if (v4)
  {
    [v4 requestGraphRebuildFractionCompletedWithReply:v6];
  }

  else if (v6)
  {
    v6[2](v6, &unk_1F102E5B8, 0);
  }
}

- (BOOL)invalidatePersistentGraphCachesAndReturnError:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self photoAnalysisClient];
  LOBYTE(a3) = [v4 requestInvalidatePersistentCaches:a3];

  return a3;
}

- (BOOL)invalidateTransientGraphCachesAndReturnError:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self photoAnalysisClient];
  LOBYTE(a3) = [v4 requestInvalidateTransientCaches:a3];

  return a3;
}

- (id)exportGraphForPurpose:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestExportGraphForPurpose:v6 error:a4];

  return v8;
}

- (void)requestHighlightEstimatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self photoAnalysisClient];
  [v5 requestHighlightEstimatesWithReply:v4];
}

- (id)graphStatisticsDescription:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v5 = [v4 requestGraphStatisticsWithOptions:MEMORY[0x1E695E0F8] error:a3];

  return v5;
}

- (id)graphStatusDescription:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v5 = [v4 requestGraphStatus:a3];

  if (v5)
  {
    v6 = [v5 statusDescription];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:v6 error:a4];

  return v8;
}

- (id)sharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:v6 error:a4];

  return v8;
}

- (id)summaryCurationForHighlightForLocalIdentifier:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v11 = [v10 requestSummaryCurationForHighlightLocalIdentifier:v9 options:v8 error:a5];

  return v11;
}

- (id)curationDebugInformationForAssetCollectionWithLocalIdentifier:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v11 = [v10 requestCurationDebugInformationForAssetCollectionWithLocalIdentifier:v9 options:v8 error:a5];

  return v11;
}

- (id)curationDebugInformationForAssetLocalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestCurationDebugInformationForAssetLocalIdentifier:v6 error:a4];

  return v8;
}

- (id)highlightDebugInformationForHighlightWithLocalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestHighlightDebugInformationForHighlightWithLocalIdentifier:v6 error:a4];

  return v8;
}

- (id)memoryDebugInformationForMemoryWithLocalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestMemoryDebugInformationForMemoryWithLocalIdentifier:v6 error:a4];

  return v8;
}

- (void)cancelOperationsWithIdentifiers:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PHPhotoLibrary *)self photoAnalysisClient];
  [v8 cancelOperationsWithIdentifiers:v7 reply:v6];
}

- (BOOL)photoAnalysisClientAllowed
{
  if ([(PHPhotoLibrary *)self wellKnownPhotoLibraryIdentifier]== 3)
  {
    return 0;
  }

  v4 = [(PHPhotoLibrary *)self photoLibrary];
  v5 = [v4 globalValues];
  v6 = [v5 libraryCreateOptions];

  return (v6 & 1) == 0;
}

- (double)_analysisProgressForHighlight:(id)a3 fetchCountBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [(PHPhotoLibrary *)self photoLibrary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PHPhotoLibrary_AssetAnalysis___analysisProgressForHighlight_fetchCountBlock___block_invoke;
  v14[3] = &unk_1E75AA180;
  v9 = v8;
  v15 = v9;
  v16 = self;
  v10 = v6;
  v17 = v10;
  v19 = &v20;
  v11 = v7;
  v18 = v11;
  [v9 performBlockAndWait:v14];
  v12 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v12;
}

void __79__PHPhotoLibrary_AssetAnalysis___analysisProgressForHighlight_fetchCountBlock___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managedObjectContext];
  v2 = [*(a1 + 40) _assetOIDsForHighlight:*(a1 + 48) withContext:?];
  if ([v2 count])
  {
    v3 = (*(*(a1 + 56) + 16))();
    v4 = v3 / [v2 count];
  }

  else
  {
    v4 = 1.0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v4;
}

uint64_t __67__PHPhotoLibrary_AssetAnalysis__sceneAnalysisProgressForHighlight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69BE250];
  v5 = a3;
  v6 = a2;
  v7 = [v4 entityName];
  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v7];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"asset", v6];

  v10 = [MEMORY[0x1E69BE250] predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestSceneVersionWithNoindex:1];
  v11 = MEMORY[0x1E696AB28];
  v18[0] = v9;
  v18[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];
  [v8 setPredicate:v13];

  v17 = 0;
  v14 = [v5 countForFetchRequest:v8 error:&v17];

  v15 = v17;
  return v14;
}

- (double)ratioOfAssetsWithMediaAnalysisImageProcessed
{
  v3 = [(PHPhotoLibrary *)self countOfAllAssetsForMediaProcessingTaskID:17 priority:0 sceneConfidenceThreshold:0 error:0.0];
  if (v3)
  {
    return [(PHPhotoLibrary *)self fetchCountOfAssetsWithMediaAnalysisImageProcessed]/ v3;
  }

  else
  {
    return 1.0;
  }
}

- (double)ratioOfAssetsWithMediaAnalysisVideoProcessed
{
  v3 = [(PHPhotoLibrary *)self countOfAllAssetsForMediaProcessingTaskID:1 priority:0 sceneConfidenceThreshold:0 error:0.0];
  if (v3)
  {
    return [(PHPhotoLibrary *)self fetchCountOfAssetsWithMediaAnalysisVideoProcessed]/ v3;
  }

  else
  {
    return 1.0;
  }
}

- (int64_t)fetchCountOfAssetsWithMediaAnalysisImageProcessed
{
  v3 = +[PHMediaProcessingAlgorithmVersionProvider providerWithCurrentVersions];
  v4 = [(PHPhotoLibrary *)self countOfProcessedAssetsForMediaProcessingTaskID:17 priority:0 algorithmVersion:v3 sceneConfidenceThreshold:0 error:0.0];

  return v4;
}

- (int64_t)fetchCountOfAssetsWithMediaAnalysisVideoProcessed
{
  v3 = +[PHMediaProcessingAlgorithmVersionProvider providerWithCurrentVersions];
  v4 = [(PHPhotoLibrary *)self countOfProcessedAssetsForMediaProcessingTaskID:1 priority:0 algorithmVersion:v3 sceneConfidenceThreshold:0 error:0.0];

  return v4;
}

- (int64_t)fetchCountOfAssetsWithFacesProcessedToAnyVersion
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E69BE250] predicateToIncludeOnlyAllowedForAnalysisAndProcessedToFaceVersion:0 noindex:0];
  v5 = [MEMORY[0x1E69BE250] entityName];
  v6 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v7 = [v3 _countOfAssetsWithPredicate:v4 entityName:v5 inLibrary:v6];

  return v7;
}

- (int64_t)fetchCountOfAssetsWithFacesProcessedToLatestVersion
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E69BE250] predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestFaceVersionWithNoindex:0];
  v5 = [MEMORY[0x1E69BE250] entityName];
  v6 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v7 = [v3 _countOfAssetsWithPredicate:v4 entityName:v5 inLibrary:v6];

  return v7;
}

- (int64_t)fetchCountOfAssetsWithScenesProcessed
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E69BE250] predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestSceneVersionWithNoindex:0];
  v5 = [MEMORY[0x1E69BE250] entityName];
  v6 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v7 = [v3 _countOfAssetsWithPredicate:v4 entityName:v5 inLibrary:v6];

  return v7;
}

- (int64_t)fetchCountOfVideosWithAllowedForAnalysis
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = PLAssetKindPredicateForTaskID();
  v4 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAssets];
  v5 = objc_opt_class();
  v6 = MEMORY[0x1E696AB28];
  v13[0] = v3;
  v13[1] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];
  v9 = [MEMORY[0x1E69BE540] entityName];
  v10 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v11 = [v5 _countOfAssetsWithPredicate:v8 entityName:v9 inLibrary:v10];

  return v11;
}

- (int64_t)fetchCountOfAssetsWithAllowedForAnalysis
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E69BE250] predicateToIncludeOnlyAllowedForAnalysisWithNoindex:0];
  v5 = [MEMORY[0x1E69BE250] entityName];
  v6 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v7 = [v3 _countOfAssetsWithPredicate:v4 entityName:v5 inLibrary:v6];

  return v7;
}

- (double)_ratioOfAssetsAtOrAboveVersion:(signed __int16)a3 forKey:(id)a4
{
  v4 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_opt_class();
  v8 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v9 = [v7 _countOfAnalysisVersionsForKey:v6 inLibrary:v8];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v23 = v6;
    v13 = 0;
    v14 = 0;
    v15 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v10 objectForKeyedSubscript:v17];
        v19 = [v18 unsignedIntegerValue];
        v13 += v19;
        if ([v17 shortValue] >= v4)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v14 += v20;
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);

    if (v13)
    {
      v21 = v14 / v13;
    }

    else
    {
      v21 = 0.0;
    }

    v6 = v23;
  }

  else
  {

    v21 = 0.0;
  }

  return v21;
}

- (id)faceAnalysisProgressCounts
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE5A0];
  v11 = 0;
  v3 = [(PHPhotoLibrary *)self photoLibraryURL];
  v4 = [v2 queryProgressDetail:&v11 forPhotoLibraryURL:v3 andTaskID:{objc_msgSend(MEMORY[0x1E69BE5A0], "faceAnalysisTaskID")}];
  v5 = v11;

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = v4;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Failed to get face processing counts from VideoProcessing, status: %d", buf, 8u);
    }

    v8 = [MEMORY[0x1E695DF20] dictionary];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (BOOL)petVIPModelExists
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v3 = dispatch_block_create(0, &__block_literal_global_110);
  v4 = MEMORY[0x1E69BE5A0];
  v5 = [(PHPhotoLibrary *)self photoLibraryURL];
  v6 = [MEMORY[0x1E69BE5A0] petVIPModelType];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PHPhotoLibrary_AssetAnalysis__petVIPModelExists__block_invoke_2;
  v13[3] = &unk_1E75AA108;
  v15 = &v16;
  v7 = v3;
  v14 = v7;
  [v4 requestVIPModelFilepathForPhotoLibraryURL:v5 forModelType:v6 andCompletionHandler:v13];

  v8 = dispatch_time(0, 10000000000);
  if (dispatch_block_wait(v7, v8))
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Request to get pet VIP model filepath from VideoProcessing timed out", v12, 2u);
    }
  }

  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __50__PHPhotoLibrary_AssetAnalysis__petVIPModelExists__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    *(*(*(a1 + 40) + 8) + 24) = [v7 fileExistsAtPath:v5];
  }

  else
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Failed to get pet VIP model filepath from VideoProcessing: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __66__PHPhotoLibrary_AssetAnalysis__faceAnalysisProgressForHighlight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69BE540];
  v5 = a3;
  v6 = a2;
  v7 = [v4 entityName];
  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v7];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@ AND %K != nil", v6, @"faceAdjustmentVersion"];

  [v8 setPredicate:v9];
  v12 = 0;
  v10 = [v5 countForFetchRequest:v8 error:&v12];

  return v10;
}

- (id)_assetOIDsForHighlight:(id)a3 withContext:(id)a4
{
  v21[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69BE540] entityName];
  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v7];
  v9 = [v5 kind];
  if (!v9)
  {
    v10 = @"highlightBeingAssets";
    goto LABEL_5;
  }

  if (v9 == 3)
  {
    v10 = @"dayGroupHighlightBeingAssets";
LABEL_5:
    v11 = MEMORY[0x1E696AE18];
    v12 = [v5 objectID];
    v13 = [v11 predicateWithFormat:@"%K = %@", v10, v12];

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"kind", &unk_1F102E3D8];
    v15 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAssets];
    v16 = MEMORY[0x1E696AB28];
    v21[0] = v13;
    v21[1] = v14;
    v21[2] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v18 = [v16 andPredicateWithSubpredicates:v17];
    [v8 setPredicate:v18];

    [v8 setResultType:1];
    [v8 setIncludesPropertyValues:0];
    [v8 setIncludesPendingChanges:0];
    v19 = [v6 executeFetchRequest:v8 error:0];

    goto LABEL_7;
  }

  v19 = 0;
LABEL_7:

  return v19;
}

- (void)requestTotalProgressCountsForWorkerType:(signed __int16)a3 states:(id)a4 completion:(id)a5
{
  v6 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v6 != 4)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AD98] numberWithShort:v6];
      [v15 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+AssetAnalysis.m" lineNumber:88 description:{@"Input worker type (%@) not supported, only %@ supported", v16, &unk_1F102D9D0}];
    }

    v11 = [(PHPhotoLibrary *)self faceAnalysisProcessingCounts];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    v13 = PLShortDescriptionForWorkerType();
    v17 = v13;
    v18[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10[2](v10, v14, 0);
  }
}

- (id)faceAnalysisProcessingCounts
{
  v3 = [MEMORY[0x1E69BE5A0] faceAnalysisTaskID];
  v4 = MEMORY[0x1E69BE5A0];
  v9 = 0;
  v5 = [(PHPhotoLibrary *)self photoLibraryURL];
  [v4 queryProgressDetail:&v9 forPhotoLibraryURL:v5 andTaskID:v3];
  v6 = v9;
  v7 = v9;

  return v6;
}

+ (BOOL)shouldDisplayMergeCandidates:(id)a3 forPerson:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v9 = 0;
  if (v8)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 isVerified])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }

        v9 += [v12 faceCount];
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

  v13 = [v6 faceCount] * 0.1;
  if (v13 < 1.0)
  {
    v13 = 1.0;
  }

  if (v9 > v13)
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

+ (unint64_t)_countOfAssetsWithPredicate:(id)a3 entityName:(id)a4 inLibrary:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v8];
  [v10 setPredicate:v7];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__PHPhotoLibrary_AssetAnalysis___countOfAssetsWithPredicate_entityName_inLibrary___block_invoke;
  v16[3] = &unk_1E75AA158;
  v20 = &v21;
  v11 = v9;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v13 = v7;
  v19 = v13;
  [v11 performBlockAndWait:v16];
  if (v22[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    v14 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  return v14;
}

void __82__PHPhotoLibrary_AssetAnalysis___countOfAssetsWithPredicate_entityName_inLibrary___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 countForFetchRequest:v3 error:&v8];
  v5 = v8;
  *(*(*(a1 + 56) + 8) + 24) = v4;

  if (*(*(*(a1 + 56) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      *buf = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Error getting count of assets with predicate %@: %@", buf, 0x16u);
    }
  }
}

+ (id)_countOfAnalysisVersionsForKey:(id)a3 inLibrary:(id)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695D5E0];
  v8 = [MEMORY[0x1E69BE250] entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setResultType:2];
  v10 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v10 setName:@"count"];
  v11 = MEMORY[0x1E696ABC8];
  v12 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  v35[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v14 = [v11 expressionForFunction:@"count:" arguments:v13];
  [v10 setExpression:v14];

  [v10 setExpressionResultType:200];
  v34[0] = v5;
  v34[1] = @"allowedForAnalysis";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v9 setPropertiesToGroupBy:v15];

  v33[0] = v5;
  v33[1] = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v9 setPropertiesToFetch:v16];

  v17 = [MEMORY[0x1E69BE250] predicateToIncludeOnlyAllowedForAnalysisWithNoindex:0];
  [v9 setHavingPredicate:v17];

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__PHPhotoLibrary_AssetAnalysis___countOfAnalysisVersionsForKey_inLibrary___block_invoke;
  v27[3] = &unk_1E75AA130;
  v28 = v6;
  v29 = v9;
  v19 = v18;
  v30 = v19;
  v31 = v5;
  v32 = v10;
  v20 = v10;
  v21 = v5;
  v22 = v9;
  v23 = v6;
  [v23 performBlockAndWait:v27];
  v24 = v32;
  v25 = v19;

  return v19;
}

void __74__PHPhotoLibrary_AssetAnalysis___countOfAnalysisVersionsForKey_inLibrary___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v21 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v21];
  v5 = v21;

  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v16 = v5;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [*(a1 + 64) name];
          v13 = [v11 objectForKeyedSubscript:v12];
          v14 = *(a1 + 48);
          v15 = [v11 objectForKeyedSubscript:*(a1 + 56)];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v8);
      v5 = v16;
    }
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "_countOfAnalysisVersionsForKey: fetch error %@", buf, 0xCu);
    }
  }
}

- (BOOL)requestStartSharedLibrarySuggestionResultWithError:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self photoAnalysisClient];
  LOBYTE(a3) = [v4 requestStartSharedLibrarySuggestionResultWithError:a3];

  return a3;
}

- (id)requestPersonalTraitsForAssetsWithUUIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestPersonalTraitsForAssetsWithUUIDs:v6 error:a4];

  return v8;
}

- (id)requestPersonalTraitsForHighlightsWithUUIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestPersonalTraitsForHighlightsWithUUIDs:v6 error:a4];

  return v8;
}

- (id)requestGraphMomentLocalIdentifiersWithDateInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestGraphMomentLocalIdentifiersWithDateInterval:v6 error:a4];

  return v8;
}

- (id)requestGraphInferencesSummaryWithMomentLocalIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestGraphInferencesSummaryWithMomentLocalIdentifiers:v6 error:a4];

  return v8;
}

- (id)requestGraphInferencesSummaryWithDateInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self photoAnalysisClient];
  v8 = [v7 requestGraphInferencesSummaryWithDateInterval:v6 error:a4];

  return v8;
}

- (BOOL)processDuplicateAssetsWithLocalIdentifiers:(id)a3 error:(id *)a4
{
  v43[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__49742;
  v38 = __Block_byref_object_dispose__49743;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v8 = [PHObject uuidsFromLocalIdentifiers:v7];

  if ([v8 count])
  {
    v9 = dispatch_semaphore_create(0);
    v10 = [(PHPhotoLibrary *)self assetsdClient];
    v11 = [v10 libraryInternalClient];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88__PHPhotoLibrary_DuplicateProcessing__processDuplicateAssetsWithLocalIdentifiers_error___block_invoke;
    v26[3] = &unk_1E75AA4F0;
    v28 = &v34;
    v29 = &v30;
    v12 = v9;
    v27 = v12;
    [v11 mergeDuplicateAssetUuidSelection:v8 completionHandler:v26];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = v27;
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v8 count];
    v16 = @"Missing photolibrary";
    if (!v15)
    {
      v16 = @"No identifiers specified";
    }

    v12 = [v14 stringWithFormat:@"%@ for merge request", v16];
    v17 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A278];
    v43[0] = v12;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v19 = [v17 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v18];
    v20 = v35[5];
    v35[5] = v19;

    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = v35[5];
      *buf = 138412290;
      v41 = v21;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Duplicate Merge processing failed with missing identifiers. Error: %@", buf, 0xCu);
    }
  }

  v22 = *(v31 + 24);
  v23 = v35[5];
  if (a4 && (v22 & 1) == 0)
  {
    v23 = v23;
    *a4 = v23;
  }

  v24 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v24 & 1;
}

intptr_t __88__PHPhotoLibrary_DuplicateProcessing__processDuplicateAssetsWithLocalIdentifiers_error___block_invoke(void *a1, char a2, void *a3)
{
  v5 = PHErrorFromPLError(a3);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(a1[6] + 8) + 24) = a2;
  v8 = a1[4];

  return dispatch_semaphore_signal(v8);
}

- (void)mergeDuplicateAssetsWithLocalIdentifierGroupingContainer:(id)a3 completionHandler:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if (mergeDuplicateAssetsWithLocalIdentifierGroupingContainer_completionHandler__onceToken != -1)
    {
      dispatch_once(&mergeDuplicateAssetsWithLocalIdentifierGroupingContainer_completionHandler__onceToken, &__block_literal_global_49755);
    }

    v11 = v5;
    v12 = v6;
    pl_dispatch_async();

    v7 = v11;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"No identifiers specified for merge request";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v8 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v9];

    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Duplicate Merge processing failed with missing identifiers. Error: %@", buf, 0xCu);
    }

    if (v6)
    {
      (*(v6 + 2))(v6, 0, v7);
    }
  }
}

void __114__PHPhotoLibrary_DuplicateProcessing__mergeDuplicateAssetsWithLocalIdentifierGroupingContainer_completionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObjectsFromArray:*(*(&v15 + 1) + 8 * i)];
        if ([v2 count] >= 0x1F5)
        {
          v9 = *(a1 + 40);
          v14 = v6;
          v10 = [v9 processDuplicateAssetsWithLocalIdentifiers:v2 error:&v14];
          v11 = v14;

          [v2 removeAllObjects];
          if (!v10)
          {
            goto LABEL_16;
          }

          v6 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([v2 count])
  {
    v12 = *(a1 + 40);
    v13 = v6;
    [v12 processDuplicateAssetsWithLocalIdentifiers:v2 error:&v13];
    v11 = v13;
    v3 = v6;
LABEL_16:

    v6 = v11;
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t __114__PHPhotoLibrary_DuplicateProcessing__mergeDuplicateAssetsWithLocalIdentifierGroupingContainer_completionHandler___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.duplicate", 0);
  v1 = mergeDuplicateAssetsWithLocalIdentifierGroupingContainer_completionHandler__queue;
  mergeDuplicateAssetsWithLocalIdentifierGroupingContainer_completionHandler__queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)assetsArePendingForDuplicateMergeProcessingWithLocalIdentifiers:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = [PHObject uuidsFromLocalIdentifiers:v4];

  v6 = [(PHPhotoLibrary *)self assetsdClient];
  v7 = [v6 libraryInternalClient];
  v8 = [v7 checkAssetsArePendingForDuplicateMergeProcessing:v5];

  return v8;
}

- (BOOL)isInitialDuplicateDetectorProcessingCompleted
{
  v2 = [(PHPhotoLibrary *)self photoLibraryForCurrentQueueQoS];
  v3 = [v2 globalValues];
  v4 = [v3 isInitialDuplicateDetectorProcessingCompleted];

  return v4;
}

- (BOOL)internal_processIdenticalDuplicatesWithError:(id *)a3
{
  v4 = [(PHPhotoLibrary *)self assetsdClient];
  v5 = [v4 libraryInternalClient];
  LOBYTE(a3) = [v5 processIdenticalDuplicatesWithProcessingType:7 error:a3];

  return a3;
}

@end