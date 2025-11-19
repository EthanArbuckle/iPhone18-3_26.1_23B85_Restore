@interface CloudTabGroupSyncCoordinator
- (BOOL)_canHandleRecordInZoneWithID:(id)a3 collection:(id)a4 operationGroup:(id)a5;
- (BOOL)_didSaveSettingRecord:(id)a3 forBookmark:(id)a4 withCollection:(id)a5;
- (BOOL)_handleMinimumAPIVersionChangeForCKShareRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (BOOL)_handleMinimumAPIVersionChangeForTabGroupParticipantExtrasRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (BOOL)_isExpiredChangeTokenError:(id)a3;
- (BOOL)_saveRecord:(id)a3 forBookmark:(id)a4 inCollection:(id)a5;
- (BOOL)_setPositionDictionaryRepresentation:(id)a3 inParentWithRecordID:(id)a4 forBookmark:(id)a5 inCollection:(id)a6 operationGroup:(id)a7;
- (BOOL)_shouldCreateLegacyRecordsForLastKnownMinimumSafariVersionsPerOSNames:(id)a3;
- (BOOL)_shouldOverrideLocalBookmark:(id)a3 localSyncData:(id)a4 withRecord:(id)a5 inCollection:(id)a6 operationGroup:(id)a7;
- (BOOL)_shouldResetLastKnownMinimumVersionsCacheInCollection:(id)a3 operationGroup:(id)a4;
- (CloudTabGroupSyncCoordinator)initWithBookmarkStore:(id)a3 collectionConfiguration:(id)a4 accountStore:(id)a5;
- (CloudTabGroupSyncCoordinatorDataSource)dataSource;
- (CloudTabGroupSyncCoordinatorDelegate)delegate;
- (id)_auxiliaryRecordKeyForRecordType:(id)a3;
- (id)_batchItemForDeleteChange:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (id)_configurationForBookmark:(id)a3;
- (id)_configurationForRecord:(id)a3;
- (id)_createBookmarkWithConfiguration:(id)a3 record:(id)a4 inCollection:(id)a5 operationGroup:(id)a6;
- (id)_createCollectionWithConfiguration:(id)a3;
- (id)_createSettingCKRecordFromFieldRecord:(id)a3;
- (id)_didFetchBookmarkRecord:(id)a3 collection:(id)a4 operationGroup:(id)a5 localBookmarkWasCreated:(BOOL *)a6;
- (id)_fieldFromSettingsRecord:(id)a3;
- (id)_filteredUpdatedRecordZoneIDs:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (id)_handleUpdatedSettingRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (id)_handleUpdatedTabGroupParticipantExtrasRecord:(id)a3 inCollection:(id)a4 shouldGenerateUpdatedRecord:(BOOL)a5 operationGroup:(id)a6;
- (id)_handleUpdatedTabGroupParticipantPositionRecord:(id)a3 inCollection:(id)a4 shouldGenerateUpdatedRecord:(BOOL)a5 operationGroup:(id)a6;
- (id)_handleUpdatedTabParticipantStatusRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (id)_hashGeneratorForRecord:(id)a3;
- (id)_knownKeysToSaveForRecord:(id)a3 withConfiguration:(id)a4;
- (id)_log;
- (id)_makeRootRecordID;
- (id)_mergedRecordWithLocalRecord:(id)a3 remoteRecord:(id)a4 saveError:(int64_t)a5 successfulMerge:(BOOL *)a6 collection:(id)a7 operationGroup:(id)a8;
- (id)_metadataForRecordZoneID:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (id)_metadataForRecordZoneID:(id)a3 orRecordZoneName:(id)a4 inCollection:(id)a5 operationGroup:(id)a6;
- (id)_metadataForRecordZoneName:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (id)_migratedRecordsForBookmarkID:(int)a3 inCollection:(id)a4 destinationRecordZoneID:(id)a5;
- (id)_migrationTombstoneRecordsForBookmarkID:(int)a3 inCollection:(id)a4 destinationRecordZoneID:(id)a5 operationGroup:(id)a6;
- (id)_nextBatchItemAfterChangeToken:(int64_t)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (id)_nextMigrationRecordBatchWithBookmarkIDQueue:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 recordBuilderBlock:(id)a6;
- (id)_profileRecordIDForProfileWithIdentifier:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (id)_readStatusRecordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 changeType:(int)a6 inCollection:(id)a7;
- (id)_recordForBookmark:(id)a3 inCollection:(id)a4 changeType:(int)a5;
- (id)_recordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 changeType:(int)a6 inCollection:(id)a7;
- (id)_recordZoneIDForBookmark:(id)a3 inCollection:(id)a4;
- (id)_reportSyncOperationFinishedWithError:(id)a3 result:(int64_t)a4 inOperationGroup:(id)a5;
- (id)_serverIDForBookmarkCreateIfNeeded:(id)a3 inCollection:(id)a4;
- (id)_settingsTransformerForKey:(id)a3;
- (id)_stringForElapsedTimeSinceDate:(id)a3;
- (id)_supportedSettingsRecordTypes;
- (id)_tabGroupParticipantExtrasRecordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 changeType:(int)a6 inCollection:(id)a7;
- (id)_tabGroupParticipantPositionRecordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 changeType:(int)a6 inCollection:(id)a7;
- (id)_tabGroupParticipantPositionRecordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 modifiedAttributes:(unint64_t)a6 attributes:(id)a7 inCollection:(id)a8;
- (id)_valueForKey:(id)a3 ofType:(Class)a4 fromRecord:(id)a5 withConfiguration:(id)a6;
- (id)_valueForKey:(id)a3 ofType:(Class)a4 fromRecord:(id)a5 withTransformer:(id)a6;
- (id)_valueForKey:(id)a3 ofTypes:(id)a4 fromRecord:(id)a5 withTransformer:(id)a6;
- (id)deviceIdentifier;
- (int64_t)_syncResultForError:(id)a3;
- (uint64_t)_bookmarksLog;
- (uint64_t)_tabGroupsLog;
- (unint64_t)_computeMinimumSyncAPIVersionForRecord:(id)a3 withBookmark:(id)a4 inCollection:(id)a5;
- (void)_acceptShareForURL:(id)a3 invitationTokenData:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)_acceptTabGroupShareForShareMetadata:(id)a3 inProfileWithIdentifier:(id)a4 collection:(id)a5 operationGroup:(id)a6 completionHandler:(id)a7;
- (void)_acceptTabGroupShareForShareMetadata:(id)a3 inProfileWithIdentifier:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_addAuxiliaryRecord:(id)a3 forUnknownRecordWithID:(id)a4 operationGroup:(id)a5;
- (void)_attemptLocalMigrationInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_beginDeletingAuxiliaryRecordsInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_beginSharingTabGroupWithUUID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_beginSyncingWithOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_clearServerChangeTokensForRecordZoneIDsIfNeeded:(id)a3 inCollection:(id)a4;
- (void)_clearUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:(id)a3;
- (void)_continuePostSyncDownHousekeepingInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_createLegacyPlaceholderForSharedTabGroup:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_deleteNextBatchOfAuxiliaryRecordsInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_deletePresenceForParticipantID:(id)a3 inTabGroupWithRecordName:(id)a4 collection:(id)a5 operationGroup:(id)a6;
- (void)_deletePrivateRecordZoneIDs:(id)a3 collection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_deletePrivateTabGroupZonesInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_deleteRecordZoneWithIDs:(id)a3 inCollection:(id)a4;
- (void)_deleteSharedTabGroupZonesInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_deleteTabGroupZonesInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_determineCourseOfActionFromLocalStateInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_didCompleteSyncDownAfterExpiredChangeTokenErrorWithCollection:(id)a3 operationGroup:(id)a4;
- (void)_didFailToSyncWithError:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_didFinishOperationGroup:(id)a3;
- (void)_didFinishSyncingWithResult:(int64_t)a3 error:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)_didLoadLastKnownMinimumIOSVersion:(id)a3 minimumMacOSVersion:(id)a4 encounteredUnknownOS:(BOOL)a5 inOperationGroup:(id)a6;
- (void)_didLoadLastKnownMinimumSafariVersionsPerOSNames:(id)a3 inOperationGroup:(id)a4;
- (void)_didRetrieveHashGenerators:(id)a3;
- (void)_dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:(id)a3 inCollection:(id)a4;
- (void)_dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:(id)a3 inCollection:(id)a4;
- (void)_enqueueOperationGroup:(id)a3;
- (void)_fetchChangedRecordZonesSinceServerChangeToken:(id)a3 inDatabase:(id)a4 collection:(id)a5 operationGroup:(id)a6 completionHandler:(id)a7;
- (void)_fetchRecordZonesToRefreshInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_fetchRecordsToRefreshInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_handleDeletedRecordWithID:(id)a3 type:(id)a4 inCollection:(id)a5 operationGroup:(id)a6;
- (void)_handleDeletedRecordZoneIDs:(id)a3 inCollection:(id)a4;
- (void)_handleDeletedSettingRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleDeletedShareRecordWithID:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleDeletedSyncRequirementRecordWithID:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleDeletedTabGroupParticipantExtrasRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleDeletedTabGroupParticipantPositionRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleDeletedTabParticipantStatusRecord:(id)a3 inCollection:(id)a4;
- (void)_handleDeletedTabPresenceRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleExpiredChangeTokenError:(id)a3 collection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_handleFailureToBecomeResponsibleForMigrationDueToConflictInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_handleICloudKeychainResetInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_handlePendingAuxiliaryRecordsIfNeededForMainRecordID:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleUpdatedShareRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleUpdatedSyncRequirementRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_handleUpdatedTabPresenceRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_logCurrentOperationsForAbortedOperationGroup:(id)a3;
- (void)_notifyDelegateAboutIgnoredRecordZoneIDsIfNeeded:(id)a3 operationGroup:(id)a4;
- (void)_performPostZoneMigrationSyncDownForRecordZoneID:(id)a3 shareRecord:(id)a4 inCollection:(id)a5 operationGroup:(id)a6 completionHandler:(id)a7;
- (void)_performSyncDownAfterProcessingChangesInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_performSyncDownForRecordZoneIDs:(id)a3 perRecordZoneConfigurations:(id)a4 inDatabase:(id)a5 collection:(id)a6 operationGroup:(id)a7 completionHandler:(id)a8;
- (void)_performSyncDownInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_postCollaborationChangeEventWithBookmark:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_postCollaborationDeleteEventWithBookmark:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_postCollaborationRenameEventWithBookmark:(id)a3 inCollection:(id)a4 operationGroup:(id)a5;
- (void)_postHighlightWithBookmark:(id)a3 collection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_prepareForSyncDownInOperationGroup:(id)a3;
- (void)_prepareForSyncingWithOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_processSavedRecord:(id)a3 forBookmark:(id)a4 inCollection:(id)a5 operationGroup:(id)a6;
- (void)_removeBookmarkWithServerID:(id)a3 inCollection:(id)a4;
- (void)_removeUserSpecificKeysInTabGroupRecordIfNeeded:(id)a3 forBookmark:(id)a4 configuration:(id)a5 inCollection:(id)a6;
- (void)_resetSyncDataInCollection:(id)a3 operationGroup:(id)a4;
- (void)_runSyncingWithCollection:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_saveAssetAtURL:(id)a3 toURL:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_saveAssetsForBookmarkIfPresent:(id)a3 onRecord:(id)a4 withConfiguration:(id)a5 inCollection:(id)a6 operationGroup:(id)a7;
- (void)_saveNextBatchInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_saveNextMigrationRecordBatchWithBookmarkIDQueue:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 usingRecordBuilderBlock:(id)a6 completionHandler:(id)a7;
- (void)_saveNextMigrationRecordBatchWithBookmarkIDQueue:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 usingRecordBuilderBlock:(id)a6 mergeHandler:(id)a7 completionHandler:(id)a8;
- (void)_savePrivateParticipantRecordsForAcceptedSharedTabGroup:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_saveRecordZoneServerChangeTokensInCollection:(id)a3 operationGroup:(id)a4 ifSuccessful:(BOOL)a5;
- (void)_saveUpdatedRecords:(id)a3 deletedRecordIDs:(id)a4 inDatabase:(id)a5 collection:(id)a6 operationGroup:(id)a7 completionHandler:(id)a8;
- (void)_saveUpdatedRecords:(id)a3 deletedRecordIDs:(id)a4 inDatabase:(id)a5 collection:(id)a6 operationGroup:(id)a7 mergeHandler:(id)a8 completionHandler:(id)a9;
- (void)_scheduleMigrationRetryIfNeededInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_setUpRecordZoneIDsToPendingServerChangeTokens;
- (void)_setUpSharingForTabGroup:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_setUpSharingInRecordZoneWithID:(id)a3 collection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_setUpTabGroupZoneForTabGroup:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_setUpUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:(id)a3;
- (void)_tryToBecomeResponsibleForMigrationInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5;
- (void)_tryToBecomeResponsibleForMigrationWithRetryManager:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_tryToResumePendingRemoteMigrationFromMigrationInfo:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)_updateBookmark:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6;
- (void)_updateBookmarkCollectionBookmark:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6;
- (void)_updateBookmarkCollectionFolder:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6;
- (void)_updateDatabaseContainsCKShareRecordIfNeededInCollection:(id)a3;
- (void)_updateLastKnownMinimumVersionsIfNeededInCollection:(id)a3 operationGroup:(id)a4;
- (void)_updateTabCollectionBookmark:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6;
- (void)_updateTabCollectionFolder:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6;
- (void)_willBeginOperationGroup:(id)a3;
- (void)acceptShareForURL:(id)a3 invitationTokenData:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)acceptTabGroupShareForShareMetadata:(id)a3 inProfileWithIdentifier:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)beginMigrationWithOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)beginSharingTabGroupWithUUID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)beginSyncingWithOperationGroup:(id)a3 isLocalChange:(BOOL)a4 completionHandler:(id)a5;
- (void)registerSyncObserver:(id)a3;
@end

@implementation CloudTabGroupSyncCoordinator

- (uint64_t)_bookmarksLog
{
  if (qword_100154090 != -1)
  {
    sub_1000D25EC();
  }

  return qword_100154088;
}

- (uint64_t)_tabGroupsLog
{
  if (qword_1001540C0 != -1)
  {
    sub_1000D2628();
  }

  return qword_1001540B8;
}

- (CloudTabGroupSyncCoordinator)initWithBookmarkStore:(id)a3 collectionConfiguration:(id)a4 accountStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = CloudTabGroupSyncCoordinator;
  v12 = [(CloudTabGroupSyncCoordinator *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmarkStore, a3);
    v14 = [v10 copy];
    collectionConfiguration = v13->_collectionConfiguration;
    v13->_collectionConfiguration = v14;

    objc_storeStrong(&v13->_accountStore, a5);
    v16 = [NSString stringWithFormat:@"com.apple.SafariSyncService.%@.%p._internalQueue", objc_opt_class(), v13];
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_get_global_queue(0, 0);
    v20 = dispatch_queue_create_with_target_V2(v17, v18, v19);
    internalQueue = v13->_internalQueue;
    v13->_internalQueue = v20;

    v22 = [NSString stringWithFormat:@"com.apple.SafariSyncService.%@.%p._assetSavingQueue", objc_opt_class(), v13];
    v23 = [v22 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create_with_target_V2(v23, v24, v19);
    assetSavingQueue = v13->_assetSavingQueue;
    v13->_assetSavingQueue = v25;

    v27 = +[NSMutableArray array];
    pendingOperationGroups = v13->_pendingOperationGroups;
    v13->_pendingOperationGroups = v27;

    v29 = objc_alloc_init(SWHighlightCenter);
    highlightCenter = v13->_highlightCenter;
    v13->_highlightCenter = v29;

    v31 = v13;
  }

  return v13;
}

- (id)_stringForElapsedTimeSinceDate:(id)a3
{
  v3 = qword_100154060;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1000CDFFC();
  }

  v5 = qword_100154058;
  v6 = +[NSDate now];
  v7 = [v5 stringFromDate:v4 toDate:v6];

  return v7;
}

- (void)_enqueueOperationGroup:(id)a3
{
  v4 = a3;
  v5 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 safari_logDescription];
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enqueueing %{public}@", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_pendingOperationGroups count])
  {
    v7 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableArray *)self->_pendingOperationGroups count];
      v9 = [v4 safari_logDescription];
      *buf = 134218242;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "There are %zu operation groups already in queue before %{public}@", buf, 0x16u);
    }

    pendingOperationGroups = self->_pendingOperationGroups;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000A70E0;
    v18 = &unk_100135B00;
    v19 = self;
    v20 = v4;
    [(NSMutableArray *)pendingOperationGroups enumerateObjectsUsingBlock:&v15];
  }

  if (self->_currentOperationGroup)
  {
    v11 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(CKOperationGroup *)self->_currentOperationGroup safari_logDescription];
      v13 = [(CloudTabGroupSyncCoordinator *)self _stringForElapsedTimeSinceDate:self->_currentOperationBeginTime];
      v14 = [v4 safari_logDescription];
      *buf = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Still running %{public}@, elapsed time %{public}@, before %{public}@", buf, 0x20u);
    }
  }

  [(NSMutableArray *)self->_pendingOperationGroups addObject:v4, v15, v16, v17, v18, v19];
}

- (void)_willBeginOperationGroup:(id)a3
{
  v5 = a3;
  if (!self->_currentOperationGroup)
  {
    v6 = [(NSMutableArray *)self->_pendingOperationGroups firstObject];

    if (v6 == v5)
    {
      objc_storeStrong(&self->_currentOperationGroup, a3);
      v7 = +[NSDate now];
      currentOperationBeginTime = self->_currentOperationBeginTime;
      self->_currentOperationBeginTime = v7;

      [(NSMutableArray *)self->_pendingOperationGroups removeObjectAtIndex:0];
      v9 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v5 safari_logDescription];
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will begin %{public}@", buf, 0xCu);
      }

      if ([(NSMutableArray *)self->_pendingOperationGroups count])
      {
        v11 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(NSMutableArray *)self->_pendingOperationGroups count];
          v13 = [v5 safari_logDescription];
          *buf = 134218242;
          v18 = v12;
          v19 = 2114;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "There are %zu operation groups left to handle after %{public}@", buf, 0x16u);
        }

        pendingOperationGroups = self->_pendingOperationGroups;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000A7428;
        v15[3] = &unk_100135B00;
        v15[4] = self;
        v16 = v5;
        [(NSMutableArray *)pendingOperationGroups enumerateObjectsUsingBlock:v15];
      }
    }
  }
}

- (void)_didFinishOperationGroup:(id)a3
{
  v4 = a3;
  v5 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 safari_logDescription];
    v7 = [(CloudTabGroupSyncCoordinator *)self _stringForElapsedTimeSinceDate:self->_currentOperationBeginTime];
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did finish %{public}@, elapsed time %{public}@", buf, 0x16u);
  }

  v8 = [(NSMutableArray *)self->_pendingOperationGroups count];
  v9 = [(CloudTabGroupSyncCoordinator *)self _log];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = [(NSMutableArray *)self->_pendingOperationGroups count];
      v12 = [v4 safari_logDescription];
      *buf = 134218242;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "There are %zu operation groups left to handle after %{public}@", buf, 0x16u);
    }

    pendingOperationGroups = self->_pendingOperationGroups;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A77A4;
    v17[3] = &unk_100135B00;
    v17[4] = self;
    v18 = v4;
    [(NSMutableArray *)pendingOperationGroups enumerateObjectsUsingBlock:v17];
  }

  else
  {
    if (v10)
    {
      v14 = [v4 safari_logDescription];
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "There are no pending operation groups after %{public}@", buf, 0xCu);
    }
  }

  currentOperationGroup = self->_currentOperationGroup;
  self->_currentOperationGroup = 0;

  currentOperationBeginTime = self->_currentOperationBeginTime;
  self->_currentOperationBeginTime = 0;
}

- (void)_logCurrentOperationsForAbortedOperationGroup:(id)a3
{
  v4 = a3;
  v5 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 safari_logDescription];
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Aborting %{public}@", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_pendingOperationGroups count])
  {
    v7 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableArray *)self->_pendingOperationGroups count];
      v9 = [v4 safari_logDescription];
      *buf = 134218242;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "There are %zu operation groups already in queue for aborted %{public}@", buf, 0x16u);
    }

    pendingOperationGroups = self->_pendingOperationGroups;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A7B3C;
    v15[3] = &unk_100135B00;
    v15[4] = self;
    v16 = v4;
    [(NSMutableArray *)pendingOperationGroups enumerateObjectsUsingBlock:v15];
  }

  if (self->_currentOperationGroup)
  {
    v11 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(CKOperationGroup *)self->_currentOperationGroup safari_logDescription];
      v13 = [(CloudTabGroupSyncCoordinator *)self _stringForElapsedTimeSinceDate:self->_currentOperationBeginTime];
      v14 = [v4 safari_logDescription];
      *buf = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Still running %{public}@, elapsed time %{public}@, for aborted %{public}@", buf, 0x20u);
    }
  }
}

- (void)beginSyncingWithOperationGroup:(id)a3 isLocalChange:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a3;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_beginSyncingWithOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 safari_logDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sync coordinator will begin syncing with %{public}@", &buf, 0xCu);
  }

  self->_syncPhase = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x2020000000;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A8434;
  v20[3] = &unk_100135B28;
  objc_copyWeak(&v24, &location);
  p_buf = &buf;
  v10 = v6;
  v21 = v10;
  v11 = v7;
  v22 = v11;
  v12 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v20 block:30.0];
  preSyncUpTimeoutTimer = self->_preSyncUpTimeoutTimer;
  self->_preSyncUpTimeoutTimer = v12;

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A8504;
  v16[3] = &unk_100135B50;
  v16[4] = self;
  v19 = &buf;
  v14 = v10;
  v17 = v14;
  v15 = v11;
  v18 = v15;
  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncingWithOperationGroup:v14 completionHandler:v16];

  objc_destroyWeak(&v24);
  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(&location);
}

- (void)_runSyncingWithCollection:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v58 = a3;
  v8 = a4;
  v56 = a5;
  v9 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 safari_logDescription];
    *buf = 138543362;
    v76 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Beginning synchronization with %{public}@", buf, 0xCu);
  }

  v57 = v8;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v11 = self->_observers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v70;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v69 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 syncCoordinatorDidBeginSyncUp:self];
        }
      }

      v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v69 objects:v74 count:16];
    }

    while (v13);
  }

  v17 = v58;
  v18 = [v58 databaseSyncData];
  v19 = [v18 auxiliaryRecordIDsToDelete];
  v20 = [v19 mutableCopy];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = +[NSMutableSet set];
  }

  auxiliaryRecordIDsToDelete = self->_auxiliaryRecordIDsToDelete;
  self->_auxiliaryRecordIDsToDelete = v22;

  v24 = [v18 recordIDsToRefresh];
  v25 = [v24 mutableCopy];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = +[NSMutableSet set];
  }

  recordIDsToRefresh = self->_recordIDsToRefresh;
  self->_recordIDsToRefresh = v27;

  v29 = [v18 recordZoneIDsToHashGenerators];
  [(CloudTabGroupSyncCoordinator *)self _didRetrieveHashGenerators:v29];

  v30 = [v18 idsOfRecordZonesToRefresh];
  v31 = [v30 mutableCopy];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = +[NSMutableSet set];
  }

  idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
  self->_idsOfRecordZonesToRefresh = v33;

  v35 = +[NSMutableDictionary dictionary];
  recordZoneIDsToMetadatas = self->_recordZoneIDsToMetadatas;
  self->_recordZoneIDsToMetadatas = v35;

  v37 = +[NSMutableDictionary dictionary];
  recordZoneNamesToMetadatas = self->_recordZoneNamesToMetadatas;
  self->_recordZoneNamesToMetadatas = v37;

  v39 = +[NSMutableSet set];
  tabGroupRecordNamesWithPendingPresenceUpdate = self->_tabGroupRecordNamesWithPendingPresenceUpdate;
  self->_tabGroupRecordNamesWithPendingPresenceUpdate = v39;

  v41 = +[NSMutableSet set];
  tabRecordNamesWithPendingPresenceUpdate = self->_tabRecordNamesWithPendingPresenceUpdate;
  self->_tabRecordNamesWithPendingPresenceUpdate = v41;

  if ([v18 minimumSyncAPIVersion] >= 4)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v43 = [CloudTabGroupRecordZoneMetadata allRecordZoneMetadataInCollection:v58];
    v44 = [v43 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v64;
      do
      {
        for (j = 0; j != v45; j = j + 1)
        {
          if (*v64 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v63 + 1) + 8 * j);
          if ([v48 isPlaceholder])
          {
            v49 = self->_recordZoneNamesToMetadatas;
            v50 = [v48 recordZoneID];
            v51 = [v50 zoneName];
            [(NSMutableDictionary *)v49 setObject:v48 forKeyedSubscript:v51];
          }

          else
          {
            v52 = self->_recordZoneIDsToMetadatas;
            v50 = [v48 recordZoneID];
            [(NSMutableDictionary *)v52 setObject:v48 forKeyedSubscript:v50];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v45);
      v17 = v58;
    }
  }

  else
  {
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1000A8BD0;
    v67[3] = &unk_100135B78;
    v68 = v58;
    [v68 updateDatabaseSyncDataUsingBlock:v67];
    v43 = v68;
  }

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000A8C38;
  v59[3] = &unk_100131D60;
  v60 = v17;
  v61 = self;
  v62 = v56;
  v53 = v56;
  v54 = v17;
  v55 = objc_retainBlock(v59);
  [(CloudTabGroupSyncCoordinator *)self _saveNextBatchInCollection:v54 operationGroup:v57 completionHandler:v55];
}

- (void)_prepareForSyncingWithOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 safari_logDescription];
    *buf = 138543362;
    v42 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sync coordinator begins setting up local store with %{public}@", buf, 0xCu);
  }

  v10 = [(CloudTabGroupSyncCoordinator *)self _createCollectionWithConfiguration:self->_collectionConfiguration];
  if (v10)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000A93C8;
    v36[3] = &unk_100135BA0;
    v36[4] = self;
    v11 = v6;
    v37 = v11;
    v39 = v7;
    v12 = v10;
    v38 = v12;
    v13 = objc_retainBlock(v36);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v15 = [WeakRetained cloudTabGroupSyncCoordinator:self accountPropertiesStoreForCollection:v12];
    accountPropertiesStore = self->_accountPropertiesStore;
    self->_accountPropertiesStore = v15;

    v17 = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore account];
    LODWORD(WeakRetained) = v17 == 0;

    if (WeakRetained)
    {
      v24 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v11 safari_logDescription];
        *buf = 138543362;
        v42 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Discontinuing sync because user is not signed in with %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v18 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
      v19 = [v18 length] == 0;

      if (!v19)
      {
        if ([v12 localMigrationState] == 3)
        {
          if (![(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore updateAccountHashIfNeeded])
          {
            if ([(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled])
            {
              v26 = [(CloudTabGroupSyncCoordinator *)self _log];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Setting up bookmarks record zone.", buf, 2u);
              }

              bookmarkStore = self->_bookmarkStore;
              v31[0] = _NSConcreteStackBlock;
              v31[1] = 3221225472;
              v31[2] = sub_1000A94F8;
              v31[3] = &unk_100135BC8;
              objc_copyWeak(&v35, &location);
              v32 = v11;
              v33 = v12;
              v34 = v13;
              [(CloudBookmarkStore *)bookmarkStore setUpBookmarksRecordZoneCreatingIfNeeded:1 inOperationGroup:v32 withCompletionHandler:v31];

              objc_destroyWeak(&v35);
            }

            else
            {
              v28 = [(CloudTabGroupSyncCoordinator *)self _log];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [v11 safari_logDescription];
                *buf = 138543362;
                v42 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks Safari sync is disabled with %{public}@", buf, 0xCu);
              }

              v30 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
              [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:4 error:v30 inOperationGroup:v11 completionHandler:v13];
            }

            goto LABEL_21;
          }

          v20 = [(CloudTabGroupSyncCoordinator *)self _log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 safari_logDescription];
            *buf = 138543362;
            v42 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because account hash differed with %{public}@", buf, 0xCu);
          }

          [(CloudTabGroupSyncCoordinator *)self _resetSyncDataInCollection:v12 operationGroup:v11];
          v22 = 5;
        }

        else
        {
          v22 = 1;
        }

        [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:v22 error:0 inOperationGroup:v11 completionHandler:v13];
LABEL_21:

        goto LABEL_22;
      }

      v24 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [v11 safari_logDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000CE0A0();
      }
    }

    [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:4 error:0 inOperationGroup:v11 completionHandler:v13];
    goto LABEL_21;
  }

  v23 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [v6 safari_logDescription];
    objc_claimAutoreleasedReturnValue();
    sub_1000CE0E4();
  }

  (*(v7 + 2))(v7, 4, 0, 0);
LABEL_22:

  objc_destroyWeak(&location);
}

- (void)beginMigrationWithOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CloudTabGroupSyncCoordinator *)self _enqueueOperationGroup:v6];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9764;
  block[3] = &unk_100131A20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)_determineCourseOfActionFromLocalStateInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 safari_logDescription];
    v26 = 138543362;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Determining course of action from local migration state with %{public}@", &v26, 0xCu);
  }

  v10 = [(CloudTabGroupSyncCoordinator *)self _createCollectionWithConfiguration:self->_collectionConfiguration];
  if (!v10)
  {
    v20 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE2E4(v6);
    }

    goto LABEL_20;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v12 = [WeakRetained cloudTabGroupSyncCoordinator:self accountPropertiesStoreForCollection:v10];
  accountPropertiesStore = self->_accountPropertiesStore;
  self->_accountPropertiesStore = v12;

  v14 = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore account];

  if (!v14)
  {
    v20 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v6 safari_logDescription];
      v26 = 138543362;
      v27 = v21;
      v22 = "Discontinuing migration because user is not signed in with %{public}@";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v22, &v26, 0xCu);
    }

LABEL_20:

    v7[2](v7, 4, 0);
    goto LABEL_21;
  }

  if (![(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled])
  {
    v20 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v6 safari_logDescription];
      v26 = 138543362;
      v27 = v21;
      v22 = "Discontinuing migration because Safari syncing is not enabled with %{public}@";
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v15 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  v16 = [v15 length];

  if (!v16)
  {
    v20 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE258(v6);
    }

    goto LABEL_20;
  }

  [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore updateAccountHashIfNeeded];
  v17 = [v10 localMigrationState];
  if (v17 >= 3)
  {
    if (v17 == -1)
    {
      v25 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE1CC(v6);
      }

      [(CloudTabGroupSyncCoordinator *)self _scheduleMigrationRetryIfNeededInOperationGroup:v6 completionHandler:v7];
    }

    else if (v17 == 3)
    {
      v23 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v6 safari_logDescription];
        v26 = 138543362;
        v27 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Not migrating because we've already migrated with %{public}@", &v26, 0xCu);
      }

      v7[2](v7, 0, 0);
    }
  }

  else
  {
    v18 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v6 safari_logDescription];
      v26 = 138543362;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Will attempt secondary migration with %{public}@", &v26, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _attemptLocalMigrationInCollection:v10 operationGroup:v6 completionHandler:v7];
  }

LABEL_21:
}

- (void)_attemptLocalMigrationInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  bookmarkStore = self->_bookmarkStore;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A9E18;
  v15[3] = &unk_100135BF0;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [(CloudBookmarkStore *)bookmarkStore fetchRemoteMigrationInfoInOperationGroup:v14 withCompletionHandler:v15];
}

- (void)_tryToBecomeResponsibleForMigrationInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v9 safari_logDescription];
    *buf = 138543362;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting existing record zone in preparation for stealing right to migrate with %{public}@", buf, 0xCu);
  }

  bookmarkStore = self->_bookmarkStore;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AA3A0;
  v17[3] = &unk_100135C18;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v14 = v8;
  v15 = v10;
  v16 = v9;
  [(CloudBookmarkStore *)bookmarkStore deleteBookmarksZoneInOperationGroup:v16 completionHandler:v17];
}

- (void)_tryToBecomeResponsibleForMigrationWithRetryManager:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  objc_initWeak(&location, self);
  bookmarkStore = self->_bookmarkStore;
  v16 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000AA7A0;
  v22[3] = &unk_100135C68;
  objc_copyWeak(&v28, &location);
  v17 = v14;
  v23 = v17;
  v18 = v12;
  v24 = v18;
  v19 = v13;
  v27 = v19;
  v20 = v11;
  v25 = v20;
  v21 = v10;
  v26 = v21;
  [(CloudBookmarkStore *)bookmarkStore setRemoteMigrationState:2 deviceIdentifier:v16 inOperationGroup:v18 completionHandler:v22];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)_tryToResumePendingRemoteMigrationFromMigrationInfo:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 migratorDeviceIdentifier];
  if (!v14)
  {
    v15 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE834(v12);
    }
  }

  v16 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  v17 = [v14 isEqualToString:v16];

  if (!v17)
  {
    v20 = [v10 serverModificationDate];
    if (v20)
    {
      v21 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
      v22 = [v20 compare:v21];

      if (v22 == -1)
      {
        [(CloudTabGroupSyncCoordinator *)self _tryToBecomeResponsibleForMigrationInCollection:v11 operationGroup:v12 completionHandler:v13];
        goto LABEL_18;
      }

      v23 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v12 safari_logDescription];
        v26 = 138543362;
        v27 = v24;
        v25 = "Not stealing right to migrate since migration state was updated recently by another device with %{public}@";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v25, &v26, 0xCu);
      }
    }

    else
    {
      v23 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v12 safari_logDescription];
        v26 = 138543362;
        v27 = v24;
        v25 = "Not stealing right to migrate since no last modification date was stored in the migration record with %{public}@";
        goto LABEL_15;
      }
    }

    v13[2](v13, 4, 0);
LABEL_18:

    goto LABEL_19;
  }

  v18 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v12 safari_logDescription];
    v26 = 138543362;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Migration record indicates that we are the migrating device; attempting to resume migration with %{public}@", &v26, 0xCu);
  }

  [(CloudTabGroupSyncCoordinator *)self _tryToBecomeResponsibleForMigrationInCollection:v11 operationGroup:v12 completionHandler:v13];
LABEL_19:
}

- (void)_handleFailureToBecomeResponsibleForMigrationDueToConflictInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000CE8C0(v9);
  }

  v12 = [v8 localMigrationState];
  if (v12 > 0)
  {
    if ((v12 - 1) < 2)
    {
      [v8 setLocalMigrationState:0 generateDeviceIdentifierIfNeeded:0];
      [(CloudTabGroupSyncCoordinator *)self _scheduleMigrationRetryIfNeededInOperationGroup:v9 completionHandler:v10];
      goto LABEL_11;
    }

    if (v12 != 3)
    {
      goto LABEL_11;
    }

LABEL_10:
    v10[2](v10, 4, 0);
    goto LABEL_11;
  }

  if (v12 == -1 || !v12)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_scheduleMigrationRetryIfNeededInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_numberOfMigrationRetryAttempts + 1;
  self->_numberOfMigrationRetryAttempts = v8;
  if (v8 < 4)
  {
    objc_initWeak(&location, self);
    v10 = dispatch_time(0, 5000000000);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AB21C;
    v11[3] = &unk_100133780;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = v7;
    dispatch_after(v10, &_dispatch_main_q, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE94C(v6);
    }

    (*(v7 + 2))(v7, 4, 0);
  }
}

- (void)beginSharingTabGroupWithUUID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(CloudTabGroupSyncCoordinator *)self _enqueueOperationGroup:v9];
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AB368;
  v15[3] = &unk_100131650;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(internalQueue, v15);
}

- (void)_beginSharingTabGroupWithUUID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AB634;
  v11[3] = &unk_100135D70;
  v12 = a3;
  v13 = self;
  v14 = a4;
  v15 = a5;
  v8 = v14;
  v9 = v12;
  v10 = v15;
  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncingWithOperationGroup:v8 completionHandler:v11];
}

- (void)_setUpSharingForTabGroup:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 privacyPreservingDescription];
    v16 = [v10 serverID];
    v17 = [v12 safari_logDescription];
    *buf = 138543874;
    v41 = v15;
    v42 = 2114;
    v43 = v16;
    v44 = 2114;
    v45 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sync coordinator will begin sharing tab group %{public}@ with record name: %{public}@ with %{public}@", buf, 0x20u);
  }

  v29 = v10;
  v18 = v12;
  v19 = v11;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_observers;
  v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v21)
  {
    v22 = *v35;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v34 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v24 syncCoordinatorDidBeginSyncUp:self];
        }
      }

      v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v21);
  }

  v25 = v19;
  v26 = v18;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000AC294;
  v30[3] = &unk_100135D98;
  objc_copyWeak(&v33, &location);
  v27 = v29;
  v31 = v27;
  v28 = v13;
  v32 = v28;
  [(CloudTabGroupSyncCoordinator *)self _setUpTabGroupZoneForTabGroup:v27 inCollection:v25 operationGroup:v26 completionHandler:v30];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)_setUpTabGroupZoneForTabGroup:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CloudTabGroupSyncCoordinator *)self _serverIDForBookmarkCreateIfNeeded:v10 inCollection:v11];
  bookmarkStore = self->_bookmarkStore;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AC570;
  v20[3] = &unk_100135E60;
  v20[4] = self;
  v21 = v12;
  v23 = v10;
  v24 = v13;
  v22 = v11;
  v16 = v10;
  v17 = v11;
  v18 = v13;
  v19 = v12;
  [(CloudBookmarkStore *)bookmarkStore createRecordZoneAndEncryptionInfoWithZoneName:v14 inOperationGroup:v19 completionHandler:v20];
}

- (void)_setUpSharingInRecordZoneWithID:(id)a3 collection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v10 ckShortDescription];
    v16 = [v12 safari_logDescription];
    *buf = 138543618;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Will save CKShare record to the new zone %{public}@ with %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  bookmarkStore = self->_bookmarkStore;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000ADA20;
  v23[3] = &unk_100135F50;
  objc_copyWeak(&v29, buf);
  v18 = v14;
  v24 = v18;
  v19 = v12;
  v25 = v19;
  v20 = v13;
  v28 = v20;
  v21 = v10;
  v26 = v21;
  v22 = v11;
  v27 = v22;
  [(CloudBookmarkStore *)bookmarkStore setUpSharingForRecordZoneWithID:v21 inOperationGroup:v19 completionHandler:v23];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

- (void)_performPostZoneMigrationSyncDownForRecordZoneID:(id)a3 shareRecord:(id)a4 inCollection:(id)a5 operationGroup:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v12 ckShortDescription];
    v19 = [v15 safari_logDescription];
    *buf = 138543618;
    v36 = v18;
    v37 = 2114;
    v38 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Performing sync down of the new zone %{public}@ with %{public}@", buf, 0x16u);
  }

  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncDownInOperationGroup:v15];
  v34 = v12;
  v20 = [NSArray arrayWithObjects:&v34 count:1];
  v21 = [(CloudBookmarkStore *)self->_bookmarkStore container];
  v22 = [v21 privateCloudDatabase];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000ADFE4;
  v28[3] = &unk_100135FA0;
  v28[4] = self;
  v29 = v14;
  v30 = v15;
  v31 = v12;
  v32 = v13;
  v33 = v16;
  v23 = v13;
  v24 = v16;
  v25 = v12;
  v26 = v15;
  v27 = v14;
  [(CloudTabGroupSyncCoordinator *)self _performSyncDownForRecordZoneIDs:v20 perRecordZoneConfigurations:0 inDatabase:v22 collection:v27 operationGroup:v26 completionHandler:v28];
}

- (void)_saveNextMigrationRecordBatchWithBookmarkIDQueue:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 usingRecordBuilderBlock:(id)a6 completionHandler:(id)a7
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AE3AC;
  v13[3] = &unk_100135EB0;
  v14 = self;
  v15 = a4;
  v16 = a5;
  v11 = v16;
  v12 = v15;
  [(CloudTabGroupSyncCoordinator *)v14 _saveNextMigrationRecordBatchWithBookmarkIDQueue:a3 inCollection:v12 operationGroup:v11 usingRecordBuilderBlock:a6 mergeHandler:v13 completionHandler:a7];
}

- (void)_saveNextMigrationRecordBatchWithBookmarkIDQueue:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 usingRecordBuilderBlock:(id)a6 mergeHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(CloudTabGroupSyncCoordinator *)self _nextMigrationRecordBatchWithBookmarkIDQueue:v14 inCollection:v15 operationGroup:v16 recordBuilderBlock:v17];
  if ([v20 count])
  {
    v22 = [(CloudBookmarkStore *)self->_bookmarkStore container];
    v21 = [v22 privateCloudDatabase];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000AE5DC;
    v23[3] = &unk_100135FC8;
    v27 = v19;
    v23[4] = self;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v28 = v17;
    v29 = v18;
    [(CloudTabGroupSyncCoordinator *)self _saveUpdatedRecords:v20 deletedRecordIDs:&__NSArray0__struct inDatabase:v21 collection:v25 operationGroup:v26 mergeHandler:v29 completionHandler:v23];
  }

  else
  {
    (*(v19 + 2))(v19, 0);
  }
}

- (id)_nextMigrationRecordBatchWithBookmarkIDQueue:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 recordBuilderBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v34 = a5;
  v11 = a6;
  v12 = +[NSMutableArray array];
  v13 = 0;
  *&v14 = 138543875;
  v33 = v14;
  do
  {
    if ([v12 count] >= 0x64)
    {
      break;
    }

    v15 = [v9 firstObject];
    v16 = [v15 intValue];

    if (!v16)
    {
      break;
    }

    [v9 removeObjectAtIndex:0];
    v17 = [v10 syncableBookmarksIDsInFolderWithBookmarkID:v16];
    v18 = [v17 allObjects];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &__NSArray0__struct;
    }

    [v9 addObjectsFromArray:v20];

    v21 = v11[2](v11, v16);
    if ([v21 count])
    {
      v22 = v10;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v37;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v13 += [*(*(&v36 + 1) + 8 * i) size];
          }

          v25 = [v23 countByEnumeratingWithState:&v36 objects:v46 count:16];
        }

        while (v25);
      }

      v28 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v23 valueForKeyPath:@"recordID.ckShortDescription"];
        v30 = [v34 safari_logDescription];
        *buf = v33;
        v41 = v29;
        v42 = 2117;
        v43 = v23;
        v44 = 2114;
        v45 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Saving record with ID: %{public}@, data: %{sensitive}@ with %{public}@", buf, 0x20u);
      }

      [v12 addObjectsFromArray:v23];
      v10 = v22;
    }
  }

  while (v13 < 0x200000);
  v31 = [v12 copy];

  return v31;
}

- (id)_migrationTombstoneRecordsForBookmarkID:(int)a3 inCollection:(id)a4 destinationRecordZoneID:(id)a5 operationGroup:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [NSMutableArray arrayWithCapacity:1];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000AEA60;
  v22 = &unk_100135FF0;
  v28 = a3;
  v23 = v10;
  v24 = v11;
  v25 = self;
  v27 = v26 = v12;
  v13 = v27;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [v16 performDatabaseUpdatesWithTransaction:&v19 secureDelete:0];
  v17 = [v13 copy];

  return v17;
}

- (id)_migratedRecordsForBookmarkID:(int)a3 inCollection:(id)a4 destinationRecordZoneID:(id)a5
{
  v7 = a4;
  [NSMutableArray arrayWithCapacity:2];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000AEE4C;
  v15 = &unk_100136040;
  v19 = a3;
  v16 = v7;
  v18 = v17 = self;
  v8 = v18;
  v9 = v7;
  [v9 performDatabaseUpdatesWithTransaction:&v12 secureDelete:0];
  v10 = [v8 copy];

  return v10;
}

- (void)acceptShareForURL:(id)a3 invitationTokenData:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(CloudTabGroupSyncCoordinator *)self _enqueueOperationGroup:v12];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF260;
  block[3] = &unk_100133B70;
  block[4] = self;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_async(internalQueue, block);
}

- (void)_acceptShareForURL:(id)a3 invitationTokenData:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 safari_logDescription];
    *buf = 138740227;
    v23 = v10;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to accept share for shareURL %{sensitive, hash.mask}@ with %{public}@", buf, 0x16u);
  }

  bookmarkStore = self->_bookmarkStore;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AF60C;
  v19[3] = &unk_100136068;
  v19[4] = self;
  v20 = v11;
  v21 = v12;
  v17 = v12;
  v18 = v11;
  [(CloudBookmarkStore *)bookmarkStore fetchShareMetadataWithURL:v10 invitationTokenData:v13 inOperationGroup:v18 completionHandler:v19];
}

- (void)acceptTabGroupShareForShareMetadata:(id)a3 inProfileWithIdentifier:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(CloudTabGroupSyncCoordinator *)self _enqueueOperationGroup:v12];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF9A4;
  block[3] = &unk_100135380;
  block[4] = self;
  v20 = v12;
  v22 = v11;
  v23 = v13;
  v21 = v10;
  v15 = v11;
  v16 = v10;
  v17 = v13;
  v18 = v12;
  dispatch_async(internalQueue, block);
}

- (void)_acceptTabGroupShareForShareMetadata:(id)a3 inProfileWithIdentifier:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AFCB0;
  v16[3] = &unk_100136090;
  v19 = a5;
  v20 = a6;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v12 = v19;
  v13 = v11;
  v14 = v10;
  v15 = v20;
  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncingWithOperationGroup:v12 completionHandler:v16];
}

- (void)_acceptTabGroupShareForShareMetadata:(id)a3 inProfileWithIdentifier:(id)a4 collection:(id)a5 operationGroup:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 share];
  v18 = [v17 recordID];
  v19 = [v18 zoneID];

  v20 = +[NSDate now];
  v57 = v13;
  if ([v19 safari_isInPrivateDatabase])
  {
    v48 = v20;
    v21 = [v14 databaseSyncData];
    v22 = [v21 lastServerChangeTokenForRecordZoneID:v19];

    v50 = v22;
    if (v22)
    {
      v23 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
      [v23 setPreviousServerChangeToken:v22];
      v82 = v19;
      v83 = v23;
      v46 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    }

    else
    {
      v46 = 0;
    }

    v52 = v16;
    v54 = v17;
    v56 = v12;
    v37 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v19 ckShortDescription];
      v39 = [v15 safari_logDescription];
      *buf = 138543618;
      v72 = v38;
      v73 = 2114;
      v74 = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Attempted to accept share in zoneID: %{public}@ even though it was created by this user, syncing down the zone instead with %{public}@", buf, 0x16u);
    }

    [(CloudTabGroupSyncCoordinator *)self _prepareForSyncDownInOperationGroup:v15];
    v81 = v19;
    v40 = [NSArray arrayWithObjects:&v81 count:1];
    [(CloudBookmarkStore *)self->_bookmarkStore container];
    v42 = v41 = v15;
    v43 = [v42 privateCloudDatabase];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000B028C;
    v64[3] = &unk_1001360B8;
    v64[4] = self;
    v65 = v14;
    v66 = v41;
    v67 = v19;
    v17 = v54;
    v70 = v52;
    v68 = v48;
    v69 = v54;
    v49 = v48;
    v44 = v14;
    v32 = v52;
    v33 = v41;
    v34 = v19;
    v45 = self;
    v36 = v47;
    [(CloudTabGroupSyncCoordinator *)v45 _performSyncDownForRecordZoneIDs:v40 perRecordZoneConfigurations:v47 inDatabase:v43 collection:v44 operationGroup:v33 completionHandler:v64];

    v12 = v56;
    v35 = v50;
  }

  else
  {
    v24 = [(CloudTabGroupSyncCoordinator *)self _profileRecordIDForProfileWithIdentifier:v13 inCollection:v14 operationGroup:v15];
    acceptedTabGroupParentProfileRecordID = self->_acceptedTabGroupParentProfileRecordID;
    self->_acceptedTabGroupParentProfileRecordID = v24;

    v26 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      [v19 ckShortDescription];
      v27 = v51 = v16;
      [v17 URL];
      v28 = v53 = v17;
      [(CKRecordID *)self->_acceptedTabGroupParentProfileRecordID ckShortDescription];
      v29 = v55 = v12;
      v30 = [v15 safari_logDescription];
      *buf = 138544387;
      v72 = v27;
      v73 = 2160;
      v74 = 1752392040;
      v75 = 2117;
      v76 = v28;
      v77 = 2114;
      v78 = v29;
      v79 = 2114;
      v80 = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Will begin accepting tab group share with zoneID: %{public}@ for shareURL: %{sensitive, mask.hash}@ as child of recordID %{public}@ with %{public}@", buf, 0x34u);

      v12 = v55;
      v17 = v53;

      v16 = v51;
    }

    bookmarkStore = self->_bookmarkStore;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000B0644;
    v58[3] = &unk_100136130;
    v58[4] = self;
    v59 = v19;
    v60 = v15;
    v61 = v14;
    v62 = v20;
    v63 = v16;
    v32 = v20;
    v33 = v14;
    v34 = v16;
    v35 = v15;
    v36 = v19;
    [(CloudBookmarkStore *)bookmarkStore acceptCloudKitShareWithMetadata:v12 inOperationGroup:v35 completionHandler:v58];
  }
}

- (id)_profileRecordIDForProfileWithIdentifier:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] && !objc_msgSend(v8, "isEqualToString:", WBSDefaultProfileIdentifier))
  {
    v14 = [v9 bookmarkWithUUID:v8];
    v15 = v14;
    if (v14)
    {
      if ([v14 isFolder])
      {
        if ([v15 subtype] == 2)
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v40 = 0x3032000000;
          v41 = sub_1000014FC;
          v42 = sub_1000ABC1C;
          v43 = 0;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_1000B1898;
          v32[3] = &unk_100135CE0;
          v32[4] = &buf;
          [v15 getReadOnlyCachedBookmarkSyncDataUsingBlock:v32];
          if (*(*(&buf + 1) + 40))
          {
            v16 = [(CloudTabGroupSyncCoordinator *)self _log];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = [*(*(&buf + 1) + 40) ckShortDescription];
              v18 = [v10 safari_logDescription];
              *v33 = 138543874;
              v34 = v17;
              v35 = 2114;
              v36 = v8;
              v37 = 2114;
              v38 = v18;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found profile with recordID %{public}@ for UUID %{public}@, %{public}@", v33, 0x20u);
            }

            v13 = *(*(&buf + 1) + 40);
          }

          else
          {
            v21 = [v15 serverID];
            if ([v21 length])
            {
              v22 = [CKRecordID alloc];
              v23 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
              v24 = [v22 initWithRecordName:v21 zoneID:v23];
              v25 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = v24;

              v26 = [(CloudTabGroupSyncCoordinator *)self _log];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v30 = [*(*(&buf + 1) + 40) ckShortDescription];
                v31 = [v10 safari_logDescription];
                *v33 = 138543874;
                v34 = v8;
                v35 = 2114;
                v36 = v30;
                v37 = 2114;
                v38 = v31;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Profile with UUID %{public}@ has not synced yet, using recordID %{public}@, %{public}@", v33, 0x20u);
              }

              v27 = *(*(&buf + 1) + 40);
            }

            else
            {
              v28 = [(CloudTabGroupSyncCoordinator *)self _log];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = [v10 safari_logDescription];
                sub_1000CF41C(v8, v29, v33, v28);
              }

              v27 = [(CloudTabGroupSyncCoordinator *)self _makeRootRecordID];
            }

            v13 = v27;
          }

          _Block_object_dispose(&buf, 8);

          goto LABEL_22;
        }

        v19 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000CF37C(v8, v10);
        }
      }

      else
      {
        v19 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000CF2DC(v8, v10);
        }
      }
    }

    else
    {
      v19 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF484(v8, v10);
      }
    }

    v13 = [(CloudTabGroupSyncCoordinator *)self _makeRootRecordID];
LABEL_22:

    goto LABEL_23;
  }

  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 safari_logDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No named profile specified, using root folder with %{public}@", &buf, 0xCu);
  }

  v13 = [(CloudTabGroupSyncCoordinator *)self _makeRootRecordID];
LABEL_23:

  return v13;
}

- (void)_savePrivateParticipantRecordsForAcceptedSharedTabGroup:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1000014FC;
  v42 = sub_1000ABC1C;
  v43 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000B1CF8;
  v37[3] = &unk_100135CE0;
  v37[4] = &v38;
  [v10 getReadOnlyCachedBookmarkSyncDataUsingBlock:v37];
  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v39[5] ckShortDescription];
    v16 = [v12 safari_logDescription];
    *buf = 138543618;
    v46 = v15;
    v47 = 2114;
    v48 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Will begin saving private participant records for accepted shared tab group with ID %{public}@ with %{public}@", buf, 0x16u);
  }

  v17 = +[NSMutableSet set];
  v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 identifier]);
  v44 = v18;
  v19 = [NSArray arrayWithObjects:&v44 count:1];
  v20 = [v19 mutableCopy];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000B1D60;
  v34[3] = &unk_100135F00;
  v34[4] = self;
  v35 = v11;
  v36 = v12;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B1D74;
  v29[3] = &unk_100136158;
  v21 = v17;
  v30 = v21;
  v31 = self;
  v22 = v35;
  v32 = v22;
  v33 = v36;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B216C;
  v25[3] = &unk_100136180;
  v25[4] = self;
  v28 = &v38;
  v23 = v33;
  v26 = v23;
  v24 = v13;
  v27 = v24;
  [(CloudTabGroupSyncCoordinator *)self _saveNextMigrationRecordBatchWithBookmarkIDQueue:v20 inCollection:v22 operationGroup:v23 usingRecordBuilderBlock:v34 mergeHandler:v29 completionHandler:v25];

  _Block_object_dispose(&v38, 8);
}

- (BOOL)_shouldResetLastKnownMinimumVersionsCacheInCollection:(id)a3 operationGroup:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (self->_didLastKnownCacheVersionCheck)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    self->_didLastKnownCacheVersionCheck = 1;
    v8 = [v5 syncStringForKey:@"MinimumVersionsCacheLastSavedSafariVersion"];
    if ([v8 length])
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 safari_normalizedVersion];
      v11 = [v8 compare:v10 options:64];

      if (v11 == -1)
      {
        v7 = 1;
      }

      else
      {
        v12 = [v6 syncStringForKey:@"MinimumVersionsCacheLastSavedOSVersion"];
        if ([v12 length])
        {
          v13 = +[NSProcessInfo processInfo];
          v14 = [v13 safari_operatingSystemVersionString];
          v7 = [v12 compare:v14 options:64] == -1;
        }

        else
        {
          v7 = 1;
        }
      }
    }
  }

  return v7;
}

- (void)_updateLastKnownMinimumVersionsIfNeededInCollection:(id)a3 operationGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 safari_logDescription];
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will load last known minimum OS version in circle cache with %{public}@", buf, 0xCu);
  }

  if (!self->_lastKnownMinimumVersionsCachedDate)
  {
    if ([(CloudTabGroupSyncCoordinator *)self _shouldResetLastKnownMinimumVersionsCacheInCollection:v6 operationGroup:v7])
    {
      [v6 setSyncData:0 forKey:@"LastKnownMinimumVersionsInCircleCacheDate"];
      [v6 setSyncData:0 forKey:@"LastKnownMinimumSafariVersionPerOSName"];
      [v6 syncSetString:0 forKey:@"LastKnownMinimumSafariVersionInCircle"];
      [v6 syncSetString:0 forKey:@"LastKnownMinimumIOSVersionInCircle"];
      [v6 syncSetString:0 forKey:@"LastKnownMinimumMacOSVersionInCircle"];
      [v6 syncSetString:0 forKey:@"encounteredUnknownOSVersionInCircle"];
    }

    v10 = [v6 syncDataForKey:@"LastKnownMinimumSafariVersionPerOSName"];
    if ([v10 length])
    {
      v11 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:0];
    }

    else
    {
      v11 = 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
    }

    v12 = [v6 syncStringForKey:@"LastKnownMinimumIOSVersionInCircle"];
    v13 = [v6 syncStringForKey:@"LastKnownMinimumMacOSVersionInCircle"];
    v14 = [v6 syncStringForKey:@"encounteredUnknownOSVersionInCircle"];
    v15 = [v14 BOOLValue];

    v16 = [v6 syncDataForKey:@"LastKnownMinimumVersionsInCircleCacheDate"];
    if ([v16 length])
    {
      v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:0];
      lastKnownMinimumVersionsCachedDate = self->_lastKnownMinimumVersionsCachedDate;
      self->_lastKnownMinimumVersionsCachedDate = v17;
    }

    [(CloudTabGroupSyncCoordinator *)self _didLoadLastKnownMinimumSafariVersionsPerOSNames:v11 inOperationGroup:v7];
    [(CloudTabGroupSyncCoordinator *)self _didLoadLastKnownMinimumIOSVersion:v12 minimumMacOSVersion:v13 encounteredUnknownOS:v15 inOperationGroup:v7];
  }

  if (self->_isUpdatingMinimumVersionsCache)
  {
    v19 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v7 safari_logDescription];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "We are already updating the minimum version cache with %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v21 = self->_lastKnownMinimumVersionsCachedDate;
    if (v21 && ([(NSDate *)v21 timeIntervalSinceNow], v22 > -604800.0))
    {
      v23 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v7 safari_logDescription];
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cache for last known minimum OS version in circle is still valid with %{public}@", buf, 0xCu);
      }

      v19 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        v26 = v25;
        v27 = [v7 safari_logDescription];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Should create placeholder tab: %{public}@ with %{public}@", buf, 0x16u);
      }
    }

    else
    {
      self->_isUpdatingMinimumVersionsCache = 1;
      v28 = os_transaction_create();
      v29 = +[NSMutableDictionary dictionary];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v59 = sub_1000014FC;
      v60 = sub_1000ABC1C;
      v61 = @"99999999";
      v54[0] = 0;
      v54[1] = v54;
      v54[2] = 0x3032000000;
      v54[3] = sub_1000014FC;
      v54[4] = sub_1000ABC1C;
      v55 = @"99999999";
      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x3032000000;
      v52[3] = sub_1000014FC;
      v52[4] = sub_1000ABC1C;
      v53 = @"99999999";
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v51 = 0;
      v30 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v7 safari_logDescription];
        *v56 = 138543362;
        v57 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Cache for last known minimum OS versions in circle is no longer valid; fetching metadata with %{public}@", v56, 0xCu);
      }

      bookmarkStore = self->_bookmarkStore;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000B2EB4;
      v44[3] = &unk_1001361A8;
      v46 = buf;
      v47 = v54;
      v48 = v50;
      v49 = v52;
      v45 = v29;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000B309C;
      v34[3] = &unk_100136238;
      v19 = v28;
      v35 = v19;
      v36 = self;
      v33 = v45;
      v37 = v33;
      v38 = v7;
      v40 = buf;
      v41 = v54;
      v42 = v50;
      v39 = v6;
      v43 = v52;
      [(CloudBookmarkStore *)bookmarkStore fetchMetadataZoneRecordsInOperationGroup:v38 withRecordChangedBlock:v44 recordWithIDWasDeletedBlock:&stru_1001361E8 completionHandler:v34];

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(v52, 8);

      _Block_object_dispose(v54, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

- (BOOL)_shouldCreateLegacyRecordsForLastKnownMinimumSafariVersionsPerOSNames:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3468;
  v6[3] = &unk_100136260;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_didLoadLastKnownMinimumSafariVersionsPerOSNames:(id)a3 inOperationGroup:(id)a4
{
  v6 = a4;
  self->_shouldCreateLegacyPreProfileRecordsForSharedTabGroups = [(CloudTabGroupSyncCoordinator *)self _shouldCreateLegacyRecordsForLastKnownMinimumSafariVersionsPerOSNames:a3];
  v7 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 safari_logDescription];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Did update last known minimum Safari versions per OS names in circle with %{public}@", &v9, 0xCu);
  }
}

- (void)_didLoadLastKnownMinimumIOSVersion:(id)a3 minimumMacOSVersion:(id)a4 encounteredUnknownOS:(BOOL)a5 inOperationGroup:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup = 0;
  if ([a3 compare:@"16.0" options:64] == -1)
  {
    v12 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v11 safari_logDescription];
      v20 = 138543362;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "A device with an older iOS version is still in the circle, require shared tab groups with %{public}@", &v20, 0xCu);
    }

    self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup = 1;
  }

  if ([v10 compare:@"13.0" options:64] != -1)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v11 safari_logDescription];
    v20 = 138543362;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "A device with an older macOS version is still in the circle, require shared tab groups with %{public}@", &v20, 0xCu);
  }

  self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup = 1;
  if (v7)
  {
LABEL_11:
    v16 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v11 safari_logDescription];
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "A device with an unknown OS version is still in the circle, require shared tab groups with %{public}@", &v20, 0xCu);
    }

    self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup = 1;
  }

LABEL_14:
  v18 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v11 safari_logDescription];
    v20 = 138543362;
    v21 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Did update last known minimum OS versions in circle with %{public}@", &v20, 0xCu);
  }
}

- (void)_createLegacyPlaceholderForSharedTabGroup:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [v10 createLegacyPlaceholderTabGroupBookmarksForSharedTabGroup:a3];
  LODWORD(a3) = v13;
  v14 = [NSNumber numberWithInt:v13];
  v26 = v14;
  v15 = [NSArray arrayWithObjects:&v26 count:1];
  v16 = [v15 mutableCopy];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B3A74;
  v23[3] = &unk_100136288;
  v24 = v10;
  v25 = self;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B3B44;
  v19[3] = &unk_1001362D8;
  v22 = a3;
  v20 = v24;
  v21 = v11;
  v17 = v11;
  v18 = v24;
  [(CloudTabGroupSyncCoordinator *)self _saveNextMigrationRecordBatchWithBookmarkIDQueue:v16 inCollection:v18 operationGroup:v12 usingRecordBuilderBlock:v23 completionHandler:v19];
}

- (void)_didRetrieveHashGenerators:(id)a3
{
  v4 = [a3 copy];
  recordZoneIDsToHashGenerators = self->_recordZoneIDsToHashGenerators;
  self->_recordZoneIDsToHashGenerators = v4;

  v6 = [(NSDictionary *)self->_recordZoneIDsToHashGenerators allKeys];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B3D0C;
  v9[3] = &unk_100136300;
  v9[4] = self;
  v7 = [v6 safari_dictionaryByMappingObjectsToKeysUsingBlock:v9];
  secondaryZoneNamesToRecordZoneIDs = self->_secondaryZoneNamesToRecordZoneIDs;
  self->_secondaryZoneNamesToRecordZoneIDs = v7;
}

- (void)_saveNextBatchInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v81 = a3;
  v90 = a4;
  v79 = a5;
  v84 = self;
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  log = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v90 safari_logDescription];
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Will begin building next updated records batch with %{public}@", buf, 0xCu);

    v8 = log;
  }

  v10 = +[NSMutableSet set];
  sourceRecordIDsForRecordsMovedBetweenZones = self->_sourceRecordIDsForRecordsMovedBetweenZones;
  self->_sourceRecordIDsForRecordsMovedBetweenZones = v10;

  v82 = objc_alloc_init(CloudTabGroupBatch);
  v87 = +[NSMutableDictionary dictionary];
  v12 = [v81 lastSyncedRecordGeneration];
  v13 = [v81 firstSkippedProfileGeneration];
  if (v13 && v13 < v12)
  {
    v12 = v13 - 1;
    [v81 setLastSyncedRecordGeneration:?];
    [v81 clearFirstSkippedProfileGeneration];
  }

  v14 = [v81 firstSkippedProfileDeviceGeneration];
  if (v14 && v14 < v12)
  {
    v12 = v14 - 1;
    [v81 setLastSyncedRecordGeneration:?];
    [v81 clearFirstSkippedProfileDeviceGeneration];
  }

  if (![(CloudTabGroupBatch *)v82 isFull])
  {
    *&v15 = 134218242;
    v78 = v15;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v16 = [(CloudTabGroupSyncCoordinator *)v84 _nextBatchItemAfterChangeToken:v12 inCollection:v81 operationGroup:v90];
      v83 = v16;
      if (!v16)
      {
        break;
      }

      if ([v16 isEmpty])
      {
        v17 = [v83 change];
        v12 = [v17 localRecordGeneration];

        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          v18 = log;
          v19 = [v90 safari_logDescription];
          *buf = v78;
          *&buf[4] = v12;
          *&buf[12] = 2114;
          *&buf[14] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Ignoring change lacking record with token %zu with %{public}@", buf, 0x16u);
        }
      }

      else
      {
        [(CloudTabGroupBatch *)v82 addItem:v83];
        v88 = [v83 change];
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v20 = [v83 updatedRecords];
        v21 = [v20 countByEnumeratingWithState:&v130 objects:v141 count:16];
        if (v21)
        {
          v22 = *v131;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v131 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v130 + 1) + 8 * i);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                v25 = log;
                v26 = [v24 recordID];
                v27 = [v26 ckShortDescription];
                v28 = [v90 safari_logDescription];
                *buf = 138543875;
                *&buf[4] = v27;
                *&buf[12] = 2117;
                *&buf[14] = v24;
                *&buf[22] = 2114;
                v135 = v28;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Adding record with name: %{public}@ to batch, data: %{sensitive}@ with %{public}@", buf, 0x20u);
              }

              v29 = [v24 recordID];
              [v87 setObject:v88 forKeyedSubscript:v29];
            }

            v21 = [v20 countByEnumeratingWithState:&v130 objects:v141 count:16];
          }

          while (v21);
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v30 = [v83 deletedRecordIDs];
        v31 = [v30 countByEnumeratingWithState:&v126 objects:v140 count:16];
        if (v31)
        {
          v32 = *v127;
          do
          {
            v33 = 0;
            v34 = log;
            do
            {
              if (*v127 != v32)
              {
                objc_enumerationMutation(v30);
                v34 = log;
              }

              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = *(*(&v126 + 1) + 8 * v33);
                v36 = v34;
                v37 = [v35 ckShortDescription];
                v38 = [v90 safari_logDescription];
                *buf = 138543618;
                *&buf[4] = v37;
                *&buf[12] = 2114;
                *&buf[14] = v38;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Adding recordID to delete with name: %{public}@ to batch with %{public}@", buf, 0x16u);

                v34 = log;
              }

              v33 = v33 + 1;
            }

            while (v31 != v33);
            v31 = [v30 countByEnumeratingWithState:&v126 objects:v140 count:16];
          }

          while (v31);
        }

        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v39 = [v83 deletedRecordZoneIDs];
        v40 = [v39 countByEnumeratingWithState:&v122 objects:v139 count:16];
        if (v40)
        {
          v41 = *v123;
          do
          {
            v42 = 0;
            v43 = log;
            do
            {
              if (*v123 != v41)
              {
                objc_enumerationMutation(v39);
                v43 = log;
              }

              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v44 = *(*(&v122 + 1) + 8 * v42);
                v45 = v43;
                v46 = [v44 ckShortDescription];
                v47 = [v90 safari_logDescription];
                *buf = 138543618;
                *&buf[4] = v46;
                *&buf[12] = 2114;
                *&buf[14] = v47;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Adding recordZoneID to delete with name: %{public}@ to batch with %{public}@", buf, 0x16u);

                v43 = log;
              }

              v42 = v42 + 1;
            }

            while (v40 != v42);
            v40 = [v39 countByEnumeratingWithState:&v122 objects:v139 count:16];
          }

          while (v40);
        }

        v12 = [v88 localRecordGeneration];
      }

      objc_autoreleasePoolPop(context);
      if ([(CloudTabGroupBatch *)v82 isFull])
      {
        goto LABEL_46;
      }
    }

    objc_autoreleasePoolPop(context);
  }

LABEL_46:
  if ([(CloudTabGroupBatch *)v82 isEmpty])
  {
    v48 = log;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = [v90 safari_logDescription];
      *buf = 138543362;
      *&buf[4] = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Done saving all record changes with %{public}@", buf, 0xCu);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v50 = v84->_observers;
    v51 = [(NSHashTable *)v50 countByEnumeratingWithState:&v118 objects:v138 count:16];
    if (v51)
    {
      v52 = *v119;
      do
      {
        for (j = 0; j != v51; j = j + 1)
        {
          if (*v119 != v52)
          {
            objc_enumerationMutation(v50);
          }

          v54 = *(*(&v118 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v54 syncCoordinatorDidFinishSyncUp:v84];
          }
        }

        v51 = [(NSHashTable *)v50 countByEnumeratingWithState:&v118 objects:v138 count:16];
      }

      while (v51);
    }

    [(CloudTabGroupSyncCoordinator *)v84 _performSyncDownAfterProcessingChangesInCollection:v81 operationGroup:v90 completionHandler:v79];
  }

  else
  {
    v55 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v135 = sub_1000014FC;
    v136 = sub_1000ABC1C;
    v137 = 0;
    dispatch_group_enter(v55);
    v56 = [(CloudTabGroupBatch *)v82 deletedRecordZoneIDsInPrivateDatabase];
    v57 = [v56 allObjects];
    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_1000B49EC;
    v113[3] = &unk_100136328;
    v117 = buf;
    v58 = log;
    v114 = v58;
    v59 = v90;
    v115 = v59;
    v60 = v55;
    v116 = v60;
    [(CloudTabGroupSyncCoordinator *)v84 _deletePrivateRecordZoneIDs:v57 collection:v81 operationGroup:v59 completionHandler:v113];

    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_1000B4B20;
    v106[3] = &unk_1001363A0;
    v112 = buf;
    v86 = v58;
    v107 = v86;
    v61 = v59;
    v108 = v61;
    v89 = v81;
    v109 = v89;
    v110 = v87;
    v111 = v84;
    v62 = objc_retainBlock(v106);
    dispatch_group_enter(v60);
    v63 = [(CloudTabGroupBatch *)v82 updatedRecordsInPrivateDatabase];
    v64 = [v63 allObjects];
    v65 = [(CloudTabGroupBatch *)v82 deletedRecordIDsInPrivateDatabase];
    v66 = [v65 allObjects];
    v67 = [(CloudBookmarkStore *)v84->_bookmarkStore container];
    v68 = [v67 privateCloudDatabase];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_1000B53A0;
    v103[3] = &unk_100131288;
    v69 = v62;
    v105 = v69;
    v70 = v60;
    v104 = v70;
    [(CloudTabGroupSyncCoordinator *)v84 _saveUpdatedRecords:v64 deletedRecordIDs:v66 inDatabase:v68 collection:v89 operationGroup:v61 completionHandler:v103];

    dispatch_group_enter(v70);
    v71 = [(CloudTabGroupBatch *)v82 updatedRecordsInSharedDatabase];
    v72 = [v71 allObjects];
    v73 = [(CloudTabGroupBatch *)v82 deletedRecordIDsInSharedDatabase];
    v74 = [v73 allObjects];
    v75 = [(CloudBookmarkStore *)v84->_bookmarkStore container];
    v76 = [v75 sharedCloudDatabase];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1000B53E4;
    v100[3] = &unk_100131288;
    v85 = v69;
    v102 = v85;
    v77 = v70;
    v101 = v77;
    [(CloudTabGroupSyncCoordinator *)v84 _saveUpdatedRecords:v72 deletedRecordIDs:v74 inDatabase:v76 collection:v89 operationGroup:v61 completionHandler:v100];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5428;
    block[3] = &unk_1001363F0;
    v98 = buf;
    block[4] = v84;
    v93 = v61;
    v97 = v79;
    v94 = v86;
    v99 = v12;
    v95 = v89;
    v96 = v82;
    dispatch_group_notify(v77, &_dispatch_main_q, block);

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)_didSaveSettingRecord:(id)a3 forBookmark:(id)a4 withCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"SettingName"];
  v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"SettingName" ofType:v11 fromRecord:v10 withTransformer:v12];

  v14 = [(CloudTabGroupSyncCoordinator *)self _supportedSettingsRecordTypes];
  v15 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Value"];
  v16 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Value" ofTypes:v14 fromRecord:v10 withTransformer:v15];

  v17 = [v9 identifier];
  LOBYTE(v9) = [v8 resetModifiedStateForSetting:v13 withRecord:v10 value:v16 forBookmarkWithID:v17];

  return v9;
}

- (id)_supportedSettingsRecordTypes
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (void)_deletePrivateRecordZoneIDs:(id)a3 collection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([v9 count])
  {
    v12 = [(CloudTabGroupSyncCoordinator *)self _log];
    v13 = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled];
    v14 = v12;
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = [v9 count];
        v17 = [v10 safari_logDescription];
        *buf = 134218242;
        v32 = v16;
        v33 = 2114;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Deleting recordZoneID batch of size: %zu with %{public}@", buf, 0x16u);
      }

      v18 = +[NSMutableArray array];
      bookmarkStore = self->_bookmarkStore;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000B5B94;
      v27[3] = &unk_100136440;
      v28 = v15;
      v29 = v10;
      v30 = v18;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000B5D10;
      v22[3] = &unk_100135C18;
      v23 = v28;
      v24 = v29;
      v25 = v30;
      v26 = v11;
      v20 = v30;
      [(CloudBookmarkStore *)bookmarkStore deleteRecordZonesWithIDs:v9 inOperationGroup:v24 perRecordZoneDeleteBlock:v27 completionHandler:v22];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v10 safari_logDescription];
        *buf = 138543362;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);
      }

      v20 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
      (*(v11 + 2))(v11, 0, v20);
    }
  }

  else
  {
    (*(v11 + 2))(v11, v9, 0);
  }
}

- (void)_saveUpdatedRecords:(id)a3 deletedRecordIDs:(id)a4 inDatabase:(id)a5 collection:(id)a6 operationGroup:(id)a7 completionHandler:(id)a8
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B5F84;
  v15[3] = &unk_100135EB0;
  v16 = self;
  v17 = a6;
  v18 = a7;
  v13 = v18;
  v14 = v17;
  [(CloudTabGroupSyncCoordinator *)v16 _saveUpdatedRecords:a3 deletedRecordIDs:a4 inDatabase:a5 collection:v14 operationGroup:v13 mergeHandler:v15 completionHandler:a8];
}

- (void)_saveUpdatedRecords:(id)a3 deletedRecordIDs:(id)a4 inDatabase:(id)a5 collection:(id)a6 operationGroup:(id)a7 mergeHandler:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if ([v14 count] || objc_msgSend(v15, "count"))
  {
    v20 = [(CloudTabGroupSyncCoordinator *)self _log];
    v21 = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled];
    v22 = v20;
    v23 = v22;
    if (v21)
    {
      v39 = v19;
      v40 = v18;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = v23;
        v25 = [v14 count];
        v26 = [v15 count];
        v27 = [v17 safari_logDescription];
        *buf = 134218754;
        v57 = v25;
        v23 = v24;
        v58 = 2048;
        v59 = v26;
        v60 = 2114;
        v61 = v16;
        v62 = 2114;
        v63 = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Saving record batch of size: %zu, number of deleted records: %zu to database: %{public}@ with %{public}@", buf, 0x2Au);
      }

      v41 = v17;
      v42 = v16;
      v38 = v23;

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v28 = self->_observers;
      v29 = [(NSHashTable *)v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v52;
        do
        {
          v32 = 0;
          do
          {
            if (*v52 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v51 + 1) + 8 * v32);
            if (objc_opt_respondsToSelector())
            {
              [v33 syncCoordinator:self didSendRecordBatch:v14 deletedRecordIDBatch:v15];
            }

            v32 = v32 + 1;
          }

          while (v30 != v32);
          v30 = [(NSHashTable *)v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v30);
      }

      bookmarkStore = self->_bookmarkStore;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000B6408;
      v47[3] = &unk_100136490;
      v48 = v38;
      v17 = v41;
      v49 = v41;
      v18 = v40;
      v50 = v40;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1000B66B8;
      v43[3] = &unk_100132CD8;
      v44 = v48;
      v45 = v49;
      v19 = v39;
      v46 = v39;
      v16 = v42;
      v23 = v38;
      [(CloudBookmarkStore *)bookmarkStore modifyRecords:v14 andDeleteRecordIDs:v15 inDatabase:v42 operationGroup:v45 mergeHandler:v47 completionHandler:v43];

      v35 = v48;
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        [v17 safari_logDescription];
        v37 = v36 = v23;
        *buf = 138543362;
        v57 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);

        v23 = v36;
      }

      v35 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
      (*(v19 + 2))(v19, 0, 0, v35);
    }
  }

  else
  {
    (*(v19 + 2))(v19, v14, v15, 0);
  }
}

- (void)_fetchRecordZonesToRefreshInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  if ([(NSMutableSet *)self->_idsOfRecordZonesToRefresh count])
  {
    v30 = v10;
    v12 = [(NSMutableSet *)self->_idsOfRecordZonesToRefresh copy];
    v13 = [v12 allObjects];
    v14 = [v13 safari_splitArrayUsingCondition:&stru_1001364D0];

    v31 = [v14 first];
    v29 = v14;
    v15 = [v14 second];
    v27 = v12;
    [(CloudTabGroupSyncCoordinator *)self _clearServerChangeTokensForRecordZoneIDsIfNeeded:v12 inCollection:v8];
    v16 = v11;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v31 count];
      v18 = [v15 count];
      [v9 safari_logDescription];
      v20 = v19 = v8;
      *buf = 134218498;
      v40 = v17;
      v41 = 2048;
      v42 = v18;
      v43 = 2114;
      v44 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Will refresh %zu record zones in private database and %zu in shared database with %{public}@", buf, 0x20u);

      v8 = v19;
    }

    [(CloudTabGroupSyncCoordinator *)self _prepareForSyncDownInOperationGroup:v9];
    v21 = [(CloudBookmarkStore *)self->_bookmarkStore container];
    v22 = [v21 privateCloudDatabase];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000B6BD8;
    v32[3] = &unk_1001360B8;
    v32[4] = self;
    v33 = v8;
    v10 = v30;
    v34 = v9;
    v35 = v31;
    v36 = v15;
    v37 = v27;
    v38 = v30;
    v28 = v27;
    v26 = v15;
    v23 = v31;
    [(CloudTabGroupSyncCoordinator *)self _performSyncDownForRecordZoneIDs:v23 perRecordZoneConfigurations:&__NSDictionary0__struct inDatabase:v22 collection:v33 operationGroup:v34 completionHandler:v32];
  }

  else
  {
    v24 = v11;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v9 safari_logDescription];
      *buf = 138543362;
      v40 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No recordZoneIDs left to refresh with %{public}@", buf, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _continuePostSyncDownHousekeepingInCollection:v8 operationGroup:v9 completionHandler:v10];
  }
}

- (void)_clearServerChangeTokensForRecordZoneIDsIfNeeded:(id)a3 inCollection:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B70D8;
  v6[3] = &unk_100135B78;
  v7 = a3;
  v5 = v7;
  [a4 updateDatabaseSyncDataUsingBlock:v6];
}

- (void)_fetchRecordsToRefreshInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v40 = a3;
  v41 = a4;
  v39 = a5;
  oslog = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v8 = [v41 safari_logDescription];
    *buf = 138543362;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Will begin fetching records to refresh with %{public}@", buf, 0xCu);
  }

  if ([(NSMutableSet *)self->_recordIDsToRefresh count])
  {
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v11 = self->_recordIDsToRefresh;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v12)
    {
      v13 = *v60;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v60 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v59 + 1) + 8 * i);
          if ([v15 safari_isInPrivateDatabase])
          {
            v16 = v9;
          }

          else
          {
            v16 = v10;
          }

          [v16 addObject:v15];
        }

        v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v12);
    }

    v17 = oslog;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v9 count];
      v19 = [v10 count];
      v20 = [v41 safari_logDescription];
      *buf = 134218498;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      *&buf[22] = 2114;
      v64 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Will refresh %zu records in private database and %zu in shared database with %{public}@", buf, 0x20u);
    }

    v21 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v64 = sub_1000014FC;
    v65 = sub_1000ABC1C;
    v66 = 0;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000B7838;
    v54[3] = &unk_100136520;
    v22 = v17;
    v55 = v22;
    v23 = v41;
    v56 = v23;
    v57 = self;
    v36 = v40;
    v58 = v36;
    v38 = objc_retainBlock(v54);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000B7BF8;
    v49[3] = &unk_100136570;
    v24 = v22;
    v50 = v24;
    v25 = v23;
    v51 = v25;
    v53 = buf;
    v26 = v21;
    v52 = v26;
    v27 = objc_retainBlock(v49);
    if ([v9 count])
    {
      dispatch_group_enter(v26);
      bookmarkStore = self->_bookmarkStore;
      v29 = [(CloudBookmarkStore *)bookmarkStore container];
      v30 = [v29 privateCloudDatabase];
      [(CloudBookmarkStore *)bookmarkStore fetchRecordsWithIDs:v9 inDatabase:v30 operationGroup:v25 perRecordCompletionBlock:v38 completionHandler:v27];
    }

    if ([v10 count])
    {
      dispatch_group_enter(v26);
      v31 = self->_bookmarkStore;
      v32 = [(CloudBookmarkStore *)v31 container];
      v33 = [v32 sharedCloudDatabase];
      [(CloudBookmarkStore *)v31 fetchRecordsWithIDs:v10 inDatabase:v33 operationGroup:v25 perRecordCompletionBlock:v38 completionHandler:v27];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B7D64;
    block[3] = &unk_100136598;
    v48 = buf;
    block[4] = self;
    v44 = v25;
    v47 = v39;
    v45 = v24;
    v46 = v37;
    dispatch_group_notify(v26, &_dispatch_main_q, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v34 = oslog;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v41 safari_logDescription];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "No recordIDs left to refresh with %{public}@", buf, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _continuePostSyncDownHousekeepingInCollection:v40 operationGroup:v41 completionHandler:v39];
  }
}

- (void)_beginDeletingAuxiliaryRecordsInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  if ([(NSMutableSet *)self->_auxiliaryRecordIDsToDelete count])
  {
    v22 = v10;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = self->_observers;
    v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 syncCoordinatorDidBeginDeletingAuxiliaryRecords:self];
          }
        }

        v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    v18 = v11;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v9 safari_logDescription];
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Will begin deleting deleted auxiliary records with %{public}@", buf, 0xCu);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B81C4;
    v23[3] = &unk_100130F68;
    v23[4] = self;
    v24 = v18;
    v25 = v9;
    v26 = v8;
    v10 = v22;
    v27 = v22;
    [(CloudTabGroupSyncCoordinator *)self _deleteNextBatchOfAuxiliaryRecordsInCollection:v26 operationGroup:v25 completionHandler:v23];
  }

  else
  {
    v20 = v11;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v9 safari_logDescription];
      *buf = 138543362;
      v34 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "No auxiliary records to delete with %{public}@", buf, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _continuePostSyncDownHousekeepingInCollection:v8 operationGroup:v9 completionHandler:v10];
  }
}

- (void)_deleteNextBatchOfAuxiliaryRecordsInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = [v31 safari_logDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Will begin building next batch of deleted auxiliary records with %{public}@", &buf, 0xCu);
  }

  if ([(NSMutableSet *)self->_auxiliaryRecordIDsToDelete count])
  {
    if (self->_syncPhase)
    {
      self->_syncPhase = 4;
    }

    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v11 = self->_auxiliaryRecordIDsToDelete;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v12)
    {
      v13 = *v54;
LABEL_8:
      v14 = 0;
      while (1)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v53 + 1) + 8 * v14);
        if ([v9 count] > 0x64 || objc_msgSend(v10, "count") > 0x64)
        {
          break;
        }

        if ([v15 safari_isInPrivateDatabase])
        {
          v16 = v9;
        }

        else
        {
          v16 = v10;
        }

        [v16 addObject:v15];
        if (v12 == ++v14)
        {
          v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v12)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v17 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v58 = 0x3032000000;
    v59 = sub_1000014FC;
    v60 = sub_1000ABC1C;
    v61 = 0;
    dispatch_group_enter(v17);
    v18 = [(CloudBookmarkStore *)self->_bookmarkStore container];
    v19 = [v18 privateCloudDatabase];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B8944;
    v48[3] = &unk_1001365E8;
    p_buf = &buf;
    v20 = log;
    v49 = v20;
    v21 = v31;
    v50 = v21;
    v22 = v17;
    v51 = v22;
    [(CloudTabGroupSyncCoordinator *)self _saveUpdatedRecords:&__NSArray0__struct deletedRecordIDs:v9 inDatabase:v19 collection:v32 operationGroup:v21 completionHandler:v48];

    dispatch_group_enter(v22);
    v23 = [(CloudBookmarkStore *)self->_bookmarkStore container];
    v24 = [v23 sharedCloudDatabase];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000B8AAC;
    v43[3] = &unk_1001365E8;
    v47 = &buf;
    v25 = v20;
    v44 = v25;
    v26 = v21;
    v45 = v26;
    v27 = v22;
    v46 = v27;
    [(CloudTabGroupSyncCoordinator *)self _saveUpdatedRecords:&__NSArray0__struct deletedRecordIDs:v10 inDatabase:v24 collection:v32 operationGroup:v26 completionHandler:v43];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B8C14;
    block[3] = &unk_100136610;
    v42 = &buf;
    v41 = v30;
    v35 = v25;
    v36 = v26;
    v37 = self;
    v38 = v9;
    v39 = v10;
    v40 = v32;
    v28 = v10;
    v29 = v9;
    dispatch_group_notify(v27, &_dispatch_main_q, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(v30 + 2))(v30, 0);
  }
}

- (id)_metadataForRecordZoneID:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas objectForKeyedSubscript:v7];
  if (!v9)
  {
    recordZoneNamesToMetadatas = self->_recordZoneNamesToMetadatas;
    v11 = [v7 zoneName];
    v9 = [(NSMutableDictionary *)recordZoneNamesToMetadatas objectForKeyedSubscript:v11];

    if (v9)
    {
      [v9 setRecordZoneID:v7 inCollection:v8];
      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v9 forKeyedSubscript:v7];
      v12 = self->_recordZoneNamesToMetadatas;
      v13 = [v7 zoneName];
      [(NSMutableDictionary *)v12 setObject:0 forKeyedSubscript:v13];
    }
  }

  return v9;
}

- (id)_metadataForRecordZoneName:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000014FC;
  v22 = sub_1000ABC1C;
  v23 = [(NSMutableDictionary *)self->_recordZoneNamesToMetadatas objectForKeyedSubscript:v8];
  v11 = v19[5];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    recordZoneIDsToMetadatas = self->_recordZoneIDsToMetadatas;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B9008;
    v15[3] = &unk_100136638;
    v16 = v8;
    v17 = &v18;
    [(NSMutableDictionary *)recordZoneIDsToMetadatas enumerateKeysAndObjectsUsingBlock:v15];
    v12 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)_metadataForRecordZoneID:(id)a3 orRecordZoneName:(id)a4 inCollection:(id)a5 operationGroup:(id)a6
{
  if (a3)
  {
    [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:a3 inCollection:a5 operationGroup:a6];
  }

  else
  {
    [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneName:a4 inCollection:a5 operationGroup:a6];
  }
  v6 = ;

  return v6;
}

- (id)_filteredUpdatedRecordZoneIDs:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NSMutableDictionary *)self->_recordZoneIDsToMetadatas count]|| [(NSMutableDictionary *)self->_recordZoneNamesToMetadatas count])
  {
    v11 = [(CloudTabGroupSyncCoordinator *)self _log];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B9234;
    v15[3] = &unk_100136660;
    v15[4] = self;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v12 = v11;
    v13 = [v8 safari_filterObjectsUsingBlock:v15];
  }

  else
  {
    v13 = v8;
  }

  return v13;
}

- (BOOL)_canHandleRecordInZoneWithID:(id)a3 collection:(id)a4 operationGroup:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas objectForKeyedSubscript:v7];
    v13 = [v12 isMinimumAPIVersionUnsupported];

    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v14 = [v7 zoneName];
      v15 = [(NSMutableDictionary *)self->_recordZoneNamesToMetadatas objectForKeyedSubscript:v14];
      v16 = v15;
      v11 = v15 == 0;
      if (v15)
      {
        [v15 setRecordZoneID:v7 inCollection:v8];
        [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v16 forKeyedSubscript:v7];
        [(NSMutableDictionary *)self->_recordZoneNamesToMetadatas setObject:0 forKeyedSubscript:v14];
      }
    }
  }

  return v11;
}

- (id)_didFetchBookmarkRecord:(id)a3 collection:(id)a4 operationGroup:(id)a5 localBookmarkWasCreated:(BOOL *)a6
{
  v10 = a3;
  v50 = a4;
  v11 = a5;
  *a6 = 0;
  v12 = [(CloudTabGroupSyncCoordinator *)self _configurationForRecord:v10];
  if (!v12)
  {
    v17 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = [v10 recordID];
      v23 = [v22 ckShortDescription];
      v24 = [v10 recordType];
      v25 = [v11 safari_logDescription];
      *buf = 138543874;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      *&buf[22] = 2114;
      v60 = v25;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Ignoring record with ID %{public}@ because its type %{public}@ is unknown with %{public}@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  v13 = [v10 recordID];
  v14 = [v13 recordName];
  v15 = WBSSharedTabGroupLegacyPlaceholderServerIDPrefix;
  v16 = [v14 hasPrefix:WBSSharedTabGroupLegacyPlaceholderServerIDPrefix];

  if (!v16)
  {
    v17 = [v10 objectForKeyedSubscript:@"ParentFolder"];
    v26 = [v17 recordID];
    v27 = [v26 recordName];
    v28 = [v27 hasPrefix:v15];

    if (v28)
    {
      v29 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v48 = [v10 recordType];
        v30 = [v10 recordID];
        v31 = [v30 ckShortDescription];
        v32 = [v17 recordID];
        v33 = [v32 ckShortDescription];
        v34 = [v11 safari_logDescription];
        *buf = 138544130;
        *&buf[4] = v48;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        *&buf[22] = 2114;
        v60 = v33;
        LOWORD(v61) = 2114;
        *(&v61 + 2) = v34;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Ignoring record of type %{public}@ with ID %{public}@, because it is a child record of a placeholder with ID %{public}@ with %{public}@", buf, 0x2Au);
      }

      goto LABEL_11;
    }

    v37 = [(CloudTabGroupSyncCoordinator *)self _hashGeneratorForRecord:v10];
    [v37 verifyIdentityHashInBookmarkRecord:v10 configuration:v12];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = sub_1000014FC;
    *&v61 = sub_1000ABC1C;
    *(&v61 + 1) = 0;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000BA55C;
    v51[3] = &unk_1001366B0;
    v38 = v10;
    v52 = v38;
    v57 = buf;
    v39 = v50;
    v53 = v39;
    v54 = self;
    v47 = v11;
    v55 = v47;
    v40 = v12;
    v56 = v40;
    v58 = a6;
    v46 = [v39 performDatabaseUpdatesWithTransaction:v51 secureDelete:0];
    v49 = [v40 recordType];
    if ([v49 isEqualToString:@"TabGroup"])
    {
      v41 = [v38 recordID];
      v42 = [v41 recordName];
      v43 = [NSSet setWithObject:v42];
      [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:v43 inCollection:v39];
    }

    else
    {
      if (![v49 isEqualToString:@"TabGroupTab"])
      {
LABEL_20:
        v44 = [v38 recordID];
        [(CloudTabGroupSyncCoordinator *)self _handlePendingAuxiliaryRecordsIfNeededForMainRecordID:v44 inCollection:v39 operationGroup:v47];

        if (v46)
        {
          v45 = *(*&buf[8] + 40);
        }

        else
        {
          v45 = 0;
        }

        v35 = v45;

        _Block_object_dispose(buf, 8);
        goto LABEL_12;
      }

      v41 = [v38 recordID];
      v42 = [v41 recordName];
      v43 = [NSSet setWithObject:v42];
      [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:v43 inCollection:v39];
    }

    goto LABEL_20;
  }

  v17 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v10 recordType];
    v19 = [v10 recordID];
    v20 = [v19 ckShortDescription];
    v21 = [v11 safari_logDescription];
    *buf = 138543874;
    *&buf[4] = v18;
    *&buf[12] = 2114;
    *&buf[14] = v20;
    *&buf[22] = 2114;
    v60 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Ignoring record of type %{public}@ with ID %{public}@, because it is a placeholder record with %{public}@", buf, 0x20u);
  }

LABEL_11:
  v35 = 0;
LABEL_12:

  return v35;
}

- (BOOL)_shouldOverrideLocalBookmark:(id)a3 localSyncData:(id)a4 withRecord:(id)a5 inCollection:(id)a6 operationGroup:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = [v10 record];
  v14 = [v13 recordID];

  v15 = [v11 recordID];
  if (v14 && ([v14 isEqual:v15] & 1) == 0)
  {
    v17 = [v10 state];
    v51 = [v10 generationForKey:@"Deleted"];
    v18 = [v11 safari_state];
    v50 = [v11 safari_generationForKey:@"Deleted"];
    v19 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      [v15 ckShortDescription];
      v20 = v46 = v10;
      WBStringFromBookmarkSyncState();
      v21 = v47 = v15;
      [v14 ckShortDescription];
      v23 = v22 = v17;
      WBStringFromBookmarkSyncState();
      v24 = v48 = v18;
      [v12 safari_logDescription];
      v25 = v49 = v12;
      *buf = 138544898;
      v53 = v20;
      v54 = 2114;
      v55 = v21;
      v56 = 2114;
      v57 = v50;
      v58 = 2114;
      v59 = v23;
      v60 = 2114;
      v61 = v24;
      v62 = 2114;
      v63 = v51;
      v64 = 2114;
      v65 = v25;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Remote record with ID %{public}@ (state: %{public}@, generation: %{public}@) is in a different zone than local record with ID %{public}@ (state: %{public}@, generation: %{public}@), %{public}@", buf, 0x48u);

      v12 = v49;
      v17 = v22;

      v10 = v46;
      v18 = v48;

      v15 = v47;
    }

    if (v18 != 2 && v17 == 2)
    {
      v26 = [(CloudTabGroupSyncCoordinator *)self _log];
      v16 = 1;
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
LABEL_28:

        goto LABEL_29;
      }

      v27 = [v14 ckShortDescription];
      v28 = [v15 ckShortDescription];
      v29 = [v12 safari_logDescription];
      *buf = 138543874;
      v53 = v27;
      v54 = 2114;
      v55 = v28;
      v56 = 2114;
      v57 = v29;
      v30 = "Overriding local record with ID %{public}@ with remote record with ID %{public}@ since the local record is a migration record, %{public}@";
      v31 = v26;
      v32 = 32;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, v30, buf, v32);

      goto LABEL_28;
    }

    if (v18 != 2 || v17 == 2)
    {
      v39 = [v11 safari_generationForKey:{@"Deleted", v46}];
      v40 = [v10 generationForKey:@"Deleted"];
      v41 = [v39 compare:v40];

      v26 = [(CloudTabGroupSyncCoordinator *)self _log];
      v42 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v41 == 1)
      {
        if (!v42)
        {
          v16 = 1;
          goto LABEL_28;
        }

        v27 = [v14 ckShortDescription];
        v28 = [v15 ckShortDescription];
        if (v18 == 2)
        {
          v43 = @"both are";
        }

        else
        {
          v43 = @"neither are";
        }

        v29 = [v12 safari_logDescription];
        *buf = 138544642;
        v53 = v27;
        v54 = 2114;
        v55 = v28;
        v56 = 2114;
        v57 = v43;
        v58 = 2114;
        v59 = v51;
        v60 = 2114;
        v61 = v50;
        v62 = 2114;
        v63 = v29;
        v30 = "Overriding local record with ID %{public}@ with remote record with ID %{public}@ since they are in different zones and %{public}@ migrated records but the remote record has a more recent state (%{public}@ < %{public}@), %{public}@";
        v16 = 1;
        v31 = v26;
        v32 = 62;
        goto LABEL_10;
      }

      if (v42)
      {
        v33 = [v15 ckShortDescription];
        v34 = [v14 ckShortDescription];
        if (v18 == 2)
        {
          v44 = @"both are";
        }

        else
        {
          v44 = @"neither are";
        }

        v35 = [v12 safari_logDescription];
        *buf = 138544642;
        v53 = v33;
        v54 = 2114;
        v55 = v34;
        v56 = 2114;
        v57 = v44;
        v58 = 2114;
        v59 = v50;
        v60 = 2114;
        v61 = v51;
        v62 = 2114;
        v63 = v35;
        v36 = "Ignoring remote record with ID %{public}@ and keeping local record with ID %{public}@ since they are in different zones and %{public}@ migrated records but the local record is more recent (%{public}@ <= %{public}@), %{public}@";
        v37 = v26;
        v38 = 62;
        goto LABEL_26;
      }
    }

    else
    {
      v26 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v33 = [v15 ckShortDescription];
        v34 = [v14 ckShortDescription];
        v35 = [v12 safari_logDescription];
        *buf = 138543874;
        v53 = v33;
        v54 = 2114;
        v55 = v34;
        v56 = 2114;
        v57 = v35;
        v36 = "Ignoring received migration tombstone with recordID %{public}@ for local record with ID %{public}@ with %{public}@";
        v37 = v26;
        v38 = 32;
LABEL_26:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, v36, buf, v38);
      }
    }

    v16 = 0;
    goto LABEL_28;
  }

  v16 = 1;
LABEL_29:

  return v16;
}

- (BOOL)_setPositionDictionaryRepresentation:(id)a3 inParentWithRecordID:(id)a4 forBookmark:(id)a5 inCollection:(id)a6 operationGroup:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [WBSCRDTPosition alloc];
  v18 = [v12 objectForKeyedSubscript:WBDefaultPositionKey];
  v19 = [v17 initWithDictionaryRepresentation:v18];

  v20 = [v13 recordName];
  v21 = [v15 bookmarkIDForServerID:v20 excludeDeletedBookmarks:1];

  if (v19)
  {
    v22 = [v15 orderIndexOfBookmark:v14 withSyncPosition:v19 inFolderWithID:v21];
  }

  else
  {
    v22 = 0;
  }

  if ([v14 parentID] == v21)
  {
    [v14 syncPosition];
    v40 = v14;
    v23 = v22;
    v24 = v15;
    v25 = self;
    v26 = v13;
    v27 = v12;
    v29 = v28 = v16;
    v30 = [v29 isEqual:v19] ^ 1;

    v16 = v28;
    v12 = v27;
    v13 = v26;
    self = v25;
    v15 = v24;
    v22 = v23;
    v14 = v40;
  }

  else
  {
    v30 = 1;
  }

  if (v21 == 0x7FFFFFFF)
  {
    v31 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v13 ckShortDescription];
      v33 = [v16 safari_logDescription];
      *buf = 138543618;
      v45 = v32;
      v46 = 2114;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Parent bookmark with server ID %{public}@ not found, moving to recovered bookmarks with %{public}@", buf, 0x16u);
    }

    v21 = [v15 bookmarkIDWithSpecialID:WBRecoveredBookmarksSpecialID];
    v22 = 0;
    v30 = ([v14 parentID] != v21) & v30;
  }

  if (v19)
  {
    [v14 setSyncPosition:v19 incrementGeneration:0];
  }

  if (v30 && ![v15 moveBookmark:v14 toFolderWithID:v21 orderIndex:v22])
  {
    v38 = 0;
  }

  else
  {
    if (!v19)
    {
      v34 = [v14 syncPosition];

      if (!v34)
      {
        v35 = [v15 generateSyncPositionForBookmark:v14];
        [v14 setSyncPosition:v35];

        [v15 updateBookmarkSyncPositionIfNeeded:v14];
      }

      [v15 markAttributesAsModified:4 forBookmark:v14];
    }

    if ([v14 parentID] == v21 && (objc_msgSend(v14, "syncPosition"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqual:", v19), v36, v37))
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000BBDB4;
      v41[3] = &unk_1001366D8;
      v42 = v13;
      v43 = v12;
      v38 = [v15 updateSyncDataForBookmark:v14 usingBlock:v41];
    }

    else
    {
      v38 = 1;
    }
  }

  return v38;
}

- (void)_handleDeletedRecordWithID:(id)a3 type:(id)a4 inCollection:(id)a5 operationGroup:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 ckShortDescription];
    v16 = [v13 safari_logDescription];
    *buf = 138543874;
    v23 = v15;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Did receive record delete for record %{public}@, type: %{public}@ with %{public}@", buf, 0x20u);
  }

  [(NSMutableSet *)self->_recordIDsToRefresh removeObject:v10];
  if ([v11 isEqualToString:@"TabGroupTabParticipantPresence"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedTabPresenceRecord:v10 inCollection:v12 operationGroup:v13];
  }

  else if ([v11 isEqualToString:CKRecordTypeShare])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedShareRecordWithID:v10 inCollection:v12 operationGroup:v13];
  }

  else if ([v11 isEqualToString:@"SyncRequirements"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedSyncRequirementRecordWithID:v10 inCollection:v12 operationGroup:v13];
  }

  else if ([v11 isEqualToString:@"TabGroupParticipantExtras"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedTabGroupParticipantExtrasRecord:v10 inCollection:v12 operationGroup:v13];
  }

  else if ([v11 isEqualToString:@"TabGroupParticipantPosition"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedTabGroupParticipantPositionRecord:v10 inCollection:v12 operationGroup:v13];
  }

  else if ([v11 isEqualToString:@"TabGroupTabParticipantStatus"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedTabParticipantStatusRecord:v10 inCollection:v12];
  }

  else if (+[WBSFeatureAvailability isNewTabAndWindowSyncingEnabled](WBSFeatureAvailability, "isNewTabAndWindowSyncingEnabled") && [v11 isEqualToString:@"Setting"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedSettingRecord:v10 inCollection:v12 operationGroup:v13];
  }

  else
  {
    v17 = [(CloudTabGroupSyncCoordinator *)self itemConfigurations];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000BC148;
    v20[3] = &unk_100133188;
    v21 = v11;
    v18 = [v17 safari_firstObjectPassingTest:v20];

    if (v18)
    {
      v19 = [v10 recordName];
      [(CloudBookmarkExpiredChangeTokenHandler *)self->_expiredChangeTokenHandler didReceiveRecordWithNameFromServer:v19];
      [(CloudTabGroupSyncCoordinator *)self _removeBookmarkWithServerID:v19 inCollection:v12];
    }
  }
}

- (void)_setUpUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:(id)a3
{
  v4 = a3;
  v5 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 safari_logDescription];
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting up _unknownRecordIDsToPendingAuxiliaryRecordSets with %{public}@", &v11, 0xCu);
  }

  p_unknownRecordIDsToPendingAuxiliaryRecordSets = &self->_unknownRecordIDsToPendingAuxiliaryRecordSets;
  if (self->_unknownRecordIDsToPendingAuxiliaryRecordSets)
  {
    v8 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000D0080();
    }
  }

  v9 = +[NSMutableDictionary dictionary];
  v10 = *p_unknownRecordIDsToPendingAuxiliaryRecordSets;
  *p_unknownRecordIDsToPendingAuxiliaryRecordSets = v9;
}

- (void)_clearUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:(id)a3
{
  v4 = a3;
  v5 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 safari_logDescription];
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing _unknownRecordIDsToPendingAuxiliaryRecordSets with %{public}@", buf, 0xCu);
  }

  v7 = self->_unknownRecordIDsToPendingAuxiliaryRecordSets;
  unknownRecordIDsToPendingAuxiliaryRecordSets = self->_unknownRecordIDsToPendingAuxiliaryRecordSets;
  self->_unknownRecordIDsToPendingAuxiliaryRecordSets = 0;

  if ([(NSMutableDictionary *)v7 count])
  {
    v9 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0134(v4);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BC41C;
    v10[3] = &unk_100136740;
    v10[4] = self;
    v11 = v4;
    [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

- (id)_auxiliaryRecordKeyForRecordType:(id)a3
{
  v3 = qword_100154070;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1000D01C0();
  }

  v5 = [qword_100154068 objectForKeyedSubscript:v4];

  return v5;
}

- (void)_addAuxiliaryRecord:(id)a3 forUnknownRecordWithID:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [(NSMutableDictionary *)self->_unknownRecordIDsToPendingAuxiliaryRecordSets objectForKeyedSubscript:v9];
    if (!v11)
    {
      v11 = +[NSMutableSet set];
      [(NSMutableDictionary *)self->_unknownRecordIDsToPendingAuxiliaryRecordSets setObject:v11 forKeyedSubscript:v9];
    }

    v12 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 recordID];
      v14 = [v13 ckShortDescription];
      v15 = [v9 ckShortDescription];
      v16 = [v10 safari_logDescription];
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Adding pending auxiliary record with ID %{public}@ for unknown associated recordID: %{public}@ with %{public}@", &v17, 0x20u);
    }

    [v11 addObject:v8];
  }

  else
  {
    v11 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000D01D4();
    }
  }
}

- (void)_handlePendingAuxiliaryRecordsIfNeededForMainRecordID:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_unknownRecordIDsToPendingAuxiliaryRecordSets objectForKeyedSubscript:v8];
  v12 = [v11 copy];

  v33 = v8;
  [(NSMutableDictionary *)self->_unknownRecordIDsToPendingAuxiliaryRecordSets setObject:0 forKeyedSubscript:v8];
  if ([v12 count])
  {
    v13 = [(CloudTabGroupSyncCoordinator *)self _log];
    v32 = v10;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 count];
      v15 = [v8 ckShortDescription];
      v16 = [v32 safari_logDescription];
      *buf = 134218498;
      v41 = v14;
      v10 = v32;
      v42 = 2114;
      v43 = v15;
      v44 = 2114;
      v45 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Did find %zd pending auxiliary records for associated main recordID: %{public}@ with %{public}@", buf, 0x20u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v12;
    obj = v12;
    v17 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      v31 = self;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = [(CloudTabGroupSyncCoordinator *)self _log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [v21 recordID];
            v24 = v23 = v19;
            v25 = [v24 ckShortDescription];
            [v33 ckShortDescription];
            v27 = v26 = v9;
            v28 = [v10 safari_logDescription];
            *buf = 138543874;
            v41 = v25;
            v42 = 2114;
            v43 = v27;
            v44 = 2114;
            v45 = v28;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Handling pending auxiliary record %{public}@ for recordID: %{public}@ with %{public}@", buf, 0x20u);

            v10 = v32;
            v9 = v26;

            v19 = v23;
            self = v31;
          }

          v29 = [(CloudTabGroupSyncCoordinator *)self _didFetchRecord:v21 inCollection:v9 operationGroup:v10 shouldGenerateUpdatedRecord:0];
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v18);
    }

    v12 = v30;
  }
}

- (void)_handleUpdatedSyncRequirementRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 recordID];
  v12 = [v11 zoneID];
  if ([v12 safari_isTabGroupSecondaryRecordZoneID])
  {
    v13 = [v8 safari_minimumSyncAPIVersion];
    v14 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v8 recordType];
      v16 = [v10 safari_logDescription];
      *buf = 138544130;
      v29 = v15;
      v30 = 2114;
      v31 = v11;
      v32 = 2048;
      v33 = v13;
      v34 = 2114;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Handling updated %{public}@ record with ID %{public}@ MinimumSyncAPIVersion: %zu, %{public}@", buf, 0x2Au);
    }

    v17 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:v12 inCollection:v9 operationGroup:v10];
    if (!v17)
    {
      if (v13 <= 4)
      {
        v17 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v17 = [[CloudTabGroupRecordZoneMetadata alloc] initWithRecordZoneID:v12];
      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v17 forKeyedSubscript:v12];
    }

    if ([(CloudTabGroupRecordZoneMetadata *)v17 setUnsupportMinimumAPIVersion:v13 ofKinds:1 inCollection:v9])
    {
      if ([(CloudTabGroupRecordZoneMetadata *)v17 isMinimumAPIVersionUnsupported])
      {
        v18 = v14;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v10 safari_logDescription];
          *buf = 138543874;
          v29 = v11;
          v30 = 2048;
          v31 = v13;
          v32 = 2114;
          v33 = v19;
          v20 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "SyncRequirements record %{public}@ changed the zone version to %zu which is now unsupported with %{public}@", buf, 0x20u);
        }

        v27 = v12;
        v21 = [NSArray arrayWithObjects:&v27 count:1];
        [(CloudTabGroupSyncCoordinator *)self _deleteRecordZoneWithIDs:v21 inCollection:v9];
        v22 = v17;
      }

      else
      {
        v23 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v10 safari_logDescription];
          *buf = 138543874;
          v29 = v11;
          v30 = 2048;
          v31 = v13;
          v32 = 2114;
          v33 = v24;
          v25 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "SyncRequirements record %{public}@ changed the zone version to %zu which is now supported with %{public}@", buf, 0x20u);
        }

        [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:v12];
        idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
        v21 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
        [(NSMutableSet *)idsOfRecordZonesToRefresh addObject:v21];
        v22 = 0;
      }

      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v22 forKeyedSubscript:v12];
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_handleDeletedSyncRequirementRecordWithID:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 zoneID];
  if ([(__CFString *)v11 safari_isTabGroupSecondaryRecordZoneID])
  {
    v12 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v10 safari_logDescription];
      v20 = 138543874;
      v21 = @"SyncRequirements";
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Handling deleted %{public}@ record with ID %{public}@, %{public}@", &v20, 0x20u);
    }

    v14 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:v11 inCollection:v9 operationGroup:v10];
    v15 = v14;
    if (v14 && [v14 resetMinimumAPIVersionOfKinds:1 inCollection:v9])
    {
      v16 = v12;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v10 safari_logDescription];
        v20 = 138543618;
        v21 = v11;
        v22 = 2114;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Record zone with ID %{public}@ has become supported now that the sync requirement was deleted with %{public}@", &v20, 0x16u);
      }

      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:v11];
      recordZoneNamesToMetadatas = self->_recordZoneNamesToMetadatas;
      v19 = [(__CFString *)v11 zoneName];
      [(NSMutableDictionary *)recordZoneNamesToMetadatas setObject:0 forKeyedSubscript:v19];

      [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:v11];
    }
  }
}

- (void)_handleUpdatedShareRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 recordID];
  v12 = [v11 zoneID];

  v13 = [(CloudBookmarkStore *)self->_bookmarkStore rootRecordNameForSecondaryRecordZoneID:v12];
  if (v13)
  {
    v14 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v12 ckShortDescription];
      v16 = [v10 safari_logDescription];
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Updating share record for zone: %{public}@ with %{public}@", buf, 0x16u);
    }

    if ([(CloudTabGroupSyncCoordinator *)self _handleMinimumAPIVersionChangeForCKShareRecord:v8 inCollection:v9 operationGroup:v10])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v29 = v9;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v18 = +[NSMutableSet set];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = sub_1000014FC;
      v50 = sub_1000ABC1C;
      v51 = 0;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000BD5DC;
      v34[3] = &unk_1001367C8;
      v41 = buf;
      v19 = v8;
      v35 = v19;
      v20 = WeakRetained;
      v36 = v20;
      v37 = self;
      v42 = &v43;
      v21 = v29;
      v38 = v21;
      v22 = v13;
      v39 = v22;
      v27 = v18;
      v40 = v27;
      [v21 updateSyncDataForBookmarkWithRecordName:v22 excludeDeletedBookmarks:0 usingBlock:v34];
      v28 = [v21 bookmarkWithServerID:v22 excludeDeletedBookmarks:0];
      v9 = v29;
      [v21 saveMinimumAPISyncVersionOfDescendantItemsForItem:v28 includingAncestorItem:1];
      if ([*(*&buf[8] + 40) length])
      {
        if (objc_opt_respondsToSelector())
        {
          [v20 cloudTabGroupSyncCoordinator:self didUpdateShareForTabGroupWithUUID:*(*&buf[8] + 40)];
        }

        if (*(v44 + 24) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v20 cloudTabGroupSyncCoordinator:self activeParticipantsDidUpdateInTabGroupWithUUID:*(*&buf[8] + 40)];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_22;
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v23 = v27;
        v24 = [v23 countByEnumeratingWithState:&v30 objects:v47 count:16];
        if (v24)
        {
          v25 = *v31;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v31 != v25)
              {
                objc_enumerationMutation(v23);
              }

              [v20 cloudTabGroupSyncCoordinator:self activeParticipantsDidUpdateInTabWithUUID:*(*(&v30 + 1) + 8 * i)];
            }

            v24 = [v23 countByEnumeratingWithState:&v30 objects:v47 count:16];
          }

          while (v24);
          v9 = v29;
        }
      }

      else
      {
        v23 = [[CKRecordID alloc] initWithRecordName:v22 zoneID:v12];
        [(CloudTabGroupSyncCoordinator *)self _addAuxiliaryRecord:v19 forUnknownRecordWithID:v23 operationGroup:v10];
      }

LABEL_22:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v43, 8);
    }
  }
}

- (void)_handleDeletedShareRecordWithID:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  bookmarkStore = self->_bookmarkStore;
  v12 = [v8 zoneID];
  v13 = [(CloudBookmarkStore *)bookmarkStore rootRecordNameForSecondaryRecordZoneID:v12];

  if (v13)
  {
    v14 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v10 safari_logDescription];
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Deleting share record for tab group: %{public}@ with %{public}@", buf, 0x16u);
    }

    v16 = [v8 zoneID];
    v17 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:v16 inCollection:v9 operationGroup:v10];
    if ([v17 resetMinimumAPIVersionOfKinds:2 inCollection:v9])
    {
      v18 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v10 safari_logDescription];
        *buf = 138543618;
        *&buf[4] = v8;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Zone has become supported again after deleting CKShare record with ID %{public}@, %{public}@", buf, 0x16u);
      }

      [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:v16];
      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:v16];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = sub_1000014FC;
    v25 = sub_1000ABC1C;
    v26 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000BDDB8;
    v22[3] = &unk_1001367F0;
    v22[4] = buf;
    [v9 updateSyncDataForBookmarkWithRecordName:v13 excludeDeletedBookmarks:0 usingBlock:v22];
    v20 = [v9 bookmarkWithServerID:v13 excludeDeletedBookmarks:0];
    [v9 saveMinimumAPISyncVersionOfDescendantItemsForItem:v20 includingAncestorItem:1];
    if ([*(*&buf[8] + 40) length])
    {
      [(CloudTabGroupSyncCoordinator *)self _updateDatabaseContainsCKShareRecordIfNeededInCollection:v9];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained cloudTabGroupSyncCoordinator:self didUpdateShareForTabGroupWithUUID:*(*&buf[8] + 40)];
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)_handleMinimumAPIVersionChangeForCKShareRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  v12 = [v8 recordID];
  v13 = [v12 zoneID];
  if ([v13 safari_isTabGroupSecondaryRecordZoneID])
  {
    v14 = [v8 safari_minimumAPIVersion];
    if (v14 <= 4)
    {
      v15 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:v13 inCollection:v9 operationGroup:v10];
      v16 = v15;
      if (!v15 || ![(CloudTabGroupRecordZoneMetadata *)v15 resetMinimumAPIVersionOfKinds:2 inCollection:v9])
      {
        v22 = 1;
        goto LABEL_21;
      }

      v36 = v14 <= 4;
      v17 = v11;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [v13 ckShortDescription];
        v18 = log = v17;
        [v10 safari_logDescription];
        *buf = 138544130;
        v39 = v18;
        v40 = 2048;
        v41 = v14;
        v42 = 2114;
        v43 = v13;
        v45 = v44 = 2114;
        v19 = v45;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Will refresh zone with ID %{public}@ because MinimumAPIVersion for the zone changed to %zd from CKShare with ID %{public}@, %{public}@", buf, 0x2Au);

        v17 = log;
      }

      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:v13];
      [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:v13];
      idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
      v21 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
      [(NSMutableSet *)idsOfRecordZonesToRefresh addObject:v21];
    }

    else
    {
      v36 = 0;
      v23 = v11;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [v12 ckShortDescription];
        v25 = v31 = v10;
        [v31 safari_logDescription];
        v26 = loga = v11;
        *buf = 134218754;
        v39 = v14;
        v40 = 2048;
        v41 = 4;
        v42 = 2114;
        v43 = v25;
        v44 = 2114;
        v45 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Record MinimumAPIVersion %zd is higher than the current API version %zd for record ID %{public}@ with %{public}@", buf, 0x2Au);

        v11 = loga;
        v10 = v31;
      }

      v16 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:v13 inCollection:v9 operationGroup:v10];
      if (!v16)
      {
        v16 = [[CloudTabGroupRecordZoneMetadata alloc] initWithRecordZoneID:v13];
        [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v16 forKeyedSubscript:v13];
      }

      if (![(CloudTabGroupRecordZoneMetadata *)v16 setUnsupportMinimumAPIVersion:v14 ofKinds:2 inCollection:v9])
      {
        v22 = 0;
        goto LABEL_21;
      }

      v27 = v23;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        [v13 ckShortDescription];
        v28 = v32 = v27;
        [v10 safari_logDescription];
        v29 = logb = v11;
        *buf = 138544130;
        v39 = v28;
        v40 = 2048;
        v41 = v14;
        v42 = 2114;
        v43 = v13;
        v44 = 2114;
        v45 = v29;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Will delete zone with ID %{public}@ locally because MinimumAPIVersion for the zone changed to %zd from CKShare with ID %{public}@, %{public}@", buf, 0x2Au);

        v11 = logb;
        v27 = v32;
      }

      v37 = v13;
      v21 = [NSArray arrayWithObjects:&v37 count:1];
      [(CloudTabGroupSyncCoordinator *)self _deleteRecordZoneWithIDs:v21 inCollection:v9];
    }

    v22 = v36;
LABEL_21:

    goto LABEL_22;
  }

  v22 = 0;
LABEL_22:

  return v22;
}

- (void)_handleUpdatedTabPresenceRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 safari_recordName];
  v12 = [v11 hasPrefix:@"UserPresence_"];

  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"Participant"];
    v14 = [v8 objectForKeyedSubscript:@"TabGroupTab"];
    v15 = [v13 recordID];
    v16 = [v15 recordName];

    v33 = v14;
    v17 = [v14 recordID];
    v34 = [v17 recordName];

    bookmarkStore = self->_bookmarkStore;
    v19 = [v8 recordID];
    v20 = [v19 zoneID];
    v21 = [(CloudBookmarkStore *)bookmarkStore rootRecordNameForSecondaryRecordZoneID:v20];

    if (v21)
    {
      v32 = v16;
      v22 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v8 recordID];
        v24 = [v23 ckShortDescription];
        v25 = [v8 isExpired];
        [v10 safari_logDescription];
        v26 = v30 = v13;
        *buf = 138544386;
        v37 = v24;
        v38 = 2114;
        v39 = v32;
        v40 = 2114;
        v41 = v34;
        v42 = 1024;
        v43 = v25;
        v44 = 2114;
        v45 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Did receive presence record with ID %{public}@ for participant: %{public}@, tabRecordName: %{public}@, isExpired: %d with %{public}@", buf, 0x30u);

        v13 = v30;
      }

      if ([v8 isExpired])
      {
        v16 = v32;
        [(CloudTabGroupSyncCoordinator *)self _deletePresenceForParticipantID:v32 inTabGroupWithRecordName:v21 collection:v9 operationGroup:v10];
      }

      else
      {
        v35 = 0;
        v31 = [v9 currentTabServerIDPresenceForParticipant:v32 getTabGroupServerID:&v35];
        v27 = v35;
        [v9 setPresenceInTabWithServerID:v34 tabGroupWithServerID:v21 forParticipant:v32];
        v28 = [NSMutableSet setWithObject:v21];
        v29 = [NSMutableSet setWithObject:v34];
        if ([v27 length])
        {
          [v28 addObject:v27];
        }

        if ([v31 length])
        {
          [v29 addObject:v31];
        }

        [(NSMutableSet *)self->_tabGroupRecordNamesWithPendingPresenceUpdate unionSet:v28];
        [(NSMutableSet *)self->_tabRecordNamesWithPendingPresenceUpdate unionSet:v29];
        [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:v28 inCollection:v9];
        [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:v29 inCollection:v9];

        v16 = v32;
      }
    }
  }
}

- (void)_handleDeletedTabPresenceRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 recordName];
  v12 = [v11 safari_substringFromPrefix:@"UserPresence_"];
  if (v12)
  {
    v13 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v8 ckShortDescription];
      v15 = [v10 safari_logDescription];
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Did receive presence record deletion with ID %{public}@ with %{public}@", &v19, 0x16u);
    }

    bookmarkStore = self->_bookmarkStore;
    v17 = [v8 zoneID];
    v18 = [(CloudBookmarkStore *)bookmarkStore rootRecordNameForSecondaryRecordZoneID:v17];

    if (v18)
    {
      [(CloudTabGroupSyncCoordinator *)self _deletePresenceForParticipantID:v12 inTabGroupWithRecordName:v18 collection:v9 operationGroup:v10];
    }
  }
}

- (void)_deletePresenceForParticipantID:(id)a3 inTabGroupWithRecordName:(id)a4 collection:(id)a5 operationGroup:(id)a6
{
  v14 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 currentTabServerIDPresenceForParticipant:v14 inTabGroupWithServerID:v9];
  if ([v11 length])
  {
    [v10 removePresenceForParticipant:v14 inTabGroupWithServerID:v9];
    [(NSMutableSet *)self->_tabGroupRecordNamesWithPendingPresenceUpdate addObject:v9];
    [(NSMutableSet *)self->_tabRecordNamesWithPendingPresenceUpdate addObject:v11];
    v12 = [NSSet setWithObject:v9];
    [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:v12 inCollection:v10];

    v13 = [NSSet setWithObject:v11];
    [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:v13 inCollection:v10];
  }
}

- (void)_dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:(id)a3 inCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([(NSMutableSet *)self->_tabGroupRecordNamesWithPendingPresenceUpdate containsObject:v14])
          {
            v15 = [v7 bookmarkWithServerID:v14 excludeDeletedBookmarks:1];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 UUID];
              [WeakRetained cloudTabGroupSyncCoordinator:self activeParticipantsDidUpdateInTabGroupWithUUID:v17];

              [(NSMutableSet *)self->_tabGroupRecordNamesWithPendingPresenceUpdate removeObject:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v6 = v18;
  }
}

- (void)_dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:(id)a3 inCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([(NSMutableSet *)self->_tabRecordNamesWithPendingPresenceUpdate containsObject:v14])
          {
            v15 = [v7 bookmarkWithServerID:v14 excludeDeletedBookmarks:1];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 UUID];
              [WeakRetained cloudTabGroupSyncCoordinator:self activeParticipantsDidUpdateInTabWithUUID:v17];

              [(NSMutableSet *)self->_tabRecordNamesWithPendingPresenceUpdate removeObject:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v6 = v18;
  }
}

- (void)_updateDatabaseContainsCKShareRecordIfNeededInCollection:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BEC5C;
  v4[3] = &unk_100136818;
  v5 = a3;
  v3 = v5;
  [v3 performDatabaseUpdatesWithTransaction:v4 secureDelete:0];
}

- (void)_removeUserSpecificKeysInTabGroupRecordIfNeeded:(id)a3 forBookmark:(id)a4 configuration:(id)a5 inCollection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v10 safari_isInPrivateDatabase] || (objc_msgSend(v13, "syncDataForBookmark:", v11), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "auxiliaryRecordForKey:", tabGroupParticipantExtrasRecordAuxiliaryRecordKey), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v32 = v11;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = [v12 primaryCKRecordKeysToClear];
    v17 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = [v12 valueTransformerForAttributeKey:v21];
          v23 = [v22 attributeRequiresEncryption];

          if (v23)
          {
            v24 = [v10 encryptedValues];
            [v24 setObject:0 forKeyedSubscript:v21];
          }

          else
          {
            [v10 setObject:0 forKeyedSubscript:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v18);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v25 = [v12 primaryCKRecordGenerationKeysToClear];
    v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v39;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [v12 generationKeyForKey:*(*(&v38 + 1) + 8 * j)];
          [v10 safari_setGeneration:0 forKey:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v27);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000BEF7C;
    v33[3] = &unk_100136840;
    v34 = v12;
    v35 = v31;
    v36 = v13;
    v37 = v10;
    v11 = v32;
    [v36 updateSyncDataForBookmark:v32 usingBlock:v33];
  }
}

- (id)_handleUpdatedTabGroupParticipantExtrasRecord:(id)a3 inCollection:(id)a4 shouldGenerateUpdatedRecord:(BOOL)a5 operationGroup:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 recordID];
  v14 = [v13 zoneID];
  v15 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v16 = [v14 isEqual:v15];

  if (!v16)
  {
    v26 = 0;
    goto LABEL_22;
  }

  [v11 setHasSharedTabGroups];
  v31 = [v13 recordName];
  v17 = [v31 safari_substringFromPrefix:@"TabGroupExtras_"];
  if (v17)
  {
    oslog = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v18 = [v10 recordType];
      *buf = 138543874;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2114;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Handling updated %{public}@ record for tabGroupRecordName %{public}@ with %{public}@", buf, 0x20u);
    }

    if (![(CloudTabGroupSyncCoordinator *)self _handleMinimumAPIVersionChangeForTabGroupParticipantExtrasRecord:v10 inCollection:v11 operationGroup:v12])
    {
      v26 = 0;
LABEL_20:

      goto LABEL_21;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = sub_1000014FC;
    v46 = sub_1000ABC1C;
    v47 = 0;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000BF5A4;
    v32[3] = &unk_1001368D8;
    v39 = buf;
    v33 = v11;
    v34 = v17;
    v19 = oslog;
    v35 = v19;
    v20 = v10;
    v36 = v20;
    v28 = v33;
    v29 = v12;
    v37 = v29;
    v38 = self;
    if ([v33 performDatabaseUpdatesWithTransaction:v32 secureDelete:0])
    {
      if (([*(*&buf[8] + 40) needsSyncUpdate] & v7) != 1)
      {
        v26 = 0;
        goto LABEL_19;
      }

      v21 = v19;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v20 recordType];
        v23 = [v29 safari_logDescription];
        *v40 = 138543618;
        v41 = v22;
        v42 = 2114;
        v43 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Generating updated %{public}@ record with %{public}@", v40, 0x16u);
      }

      v24 = [(CloudTabGroupSyncCoordinator *)self _configurationForBookmark:*(*&buf[8] + 40)];
      v25 = [v28 syncDataForBookmark:*(*&buf[8] + 40)];
      v26 = [(CloudTabGroupSyncCoordinator *)self _tabGroupParticipantExtrasRecordForBookmark:*(*&buf[8] + 40) syncData:v25 configuration:v24 changeType:1 inCollection:v28];
    }

    else
    {
      v24 = v19;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [v29 safari_logDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000D0294();
      }

      v26 = 0;
    }

LABEL_19:
    _Block_object_dispose(buf, 8);

    goto LABEL_20;
  }

  v26 = 0;
LABEL_21:

LABEL_22:

  return v26;
}

- (void)_handleDeletedTabGroupParticipantExtrasRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 zoneID];
  v12 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v14 = [v8 recordName];
    v15 = [v14 safari_substringFromPrefix:@"TabGroupExtras_"];
    if (v15)
    {
      v16 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v31 = @"TabGroupParticipantExtras";
        v32 = 2114;
        v33 = v15;
        v34 = 2114;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Handling deleted %{public}@ record for tabGroupRecordName %{public}@ with %{public}@", buf, 0x20u);
      }

      [v9 updateSyncDataForBookmarkWithRecordName:v15 excludeDeletedBookmarks:1 usingBlock:&stru_100136918];
      v17 = [CKRecordZoneID safari_tabGroupSecondaryRecordZoneNameWithRootRecordName:v15];
      v18 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneName:v17 inCollection:v9 operationGroup:v10];
      if ([v18 resetMinimumAPIVersionOfKinds:4 inCollection:v9])
      {
        recordZoneIDsToMetadatas = self->_recordZoneIDsToMetadatas;
        v20 = [v18 recordZoneID];
        [(NSMutableDictionary *)recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:v20];

        recordZoneNamesToMetadatas = self->_recordZoneNamesToMetadatas;
        v22 = [v18 recordZoneID];
        [v22 zoneName];
        v23 = v29 = v14;
        [(NSMutableDictionary *)recordZoneNamesToMetadatas setObject:0 forKeyedSubscript:v23];

        idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
        v25 = [v18 recordZoneID];
        [(NSMutableSet *)idsOfRecordZonesToRefresh addObject:v25];

        v26 = self->_idsOfRecordZonesToRefresh;
        v27 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
        v28 = v26;
        v14 = v29;
        [(NSMutableSet *)v28 addObject:v27];
      }
    }
  }
}

- (BOOL)_handleMinimumAPIVersionChangeForTabGroupParticipantExtrasRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  v12 = [v8 recordID];
  v13 = [v12 recordName];
  v14 = [v13 safari_substringFromPrefix:@"TabGroupExtras_"];
  if ([v14 length])
  {
    v45 = v12;
    v43 = [v8 objectForKeyedSubscript:@"TabGroup"];
    v15 = [v43 recordID];
    v16 = [v15 zoneID];

    v17 = [v16 zoneName];
    v18 = v17;
    v44 = v13;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [CKRecordZoneID safari_tabGroupSecondaryRecordZoneNameWithRootRecordName:v14];
    }

    v47 = v19;

    v21 = [v8 safari_minimumAPIVersion];
    v42 = v21 <= 4;
    v46 = v11;
    if (v21 <= 4)
    {
      v22 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:v16 inCollection:v9 operationGroup:v10];
      if ([(CloudTabGroupRecordZoneMetadata *)v22 resetMinimumAPIVersionOfKinds:4 inCollection:v9])
      {
        v23 = v46;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v16 ckShortDescription];
          [v10 safari_logDescription];
          *buf = 138543874;
          v50 = v24;
          v51 = 2048;
          v52 = v21;
          v54 = v53 = 2114;
          v25 = v54;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Will refresh zone with ID %{public}@ because MinimumAPIVersion for the zone changed to %zd with %{public}@", buf, 0x20u);
        }

        [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:v16];
        idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
        v27 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
        [(NSMutableSet *)idsOfRecordZonesToRefresh addObject:v27];
        goto LABEL_23;
      }
    }

    else
    {
      v28 = v11;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v45 ckShortDescription];
        [v10 safari_logDescription];
        v31 = v40 = v10;
        *buf = 134218754;
        v50 = v21;
        v51 = 2048;
        v52 = 4;
        v53 = 2114;
        v54 = v30;
        v55 = 2114;
        v56 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Record MinimumAPIVersion %zd is higher than the current API version %zd for record ID %{public}@ with %{public}@", buf, 0x2Au);

        v10 = v40;
      }

      v22 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:v16 orRecordZoneName:v47 inCollection:v9 operationGroup:v10];
      if (!v22)
      {
        v32 = [CloudTabGroupRecordZoneMetadata alloc];
        if (v16)
        {
          v22 = [(CloudTabGroupRecordZoneMetadata *)v32 initWithRecordZoneID:v16];
          recordZoneIDsToMetadatas = self->_recordZoneIDsToMetadatas;
          v34 = v22;
          v35 = v16;
        }

        else
        {
          v22 = [(CloudTabGroupRecordZoneMetadata *)v32 initWithRecordZoneName:v47];
          recordZoneIDsToMetadatas = self->_recordZoneNamesToMetadatas;
          v34 = v22;
          v35 = v47;
        }

        [(NSMutableDictionary *)recordZoneIDsToMetadatas setObject:v34 forKeyedSubscript:v35, v40];
      }

      if ([(CloudTabGroupRecordZoneMetadata *)v22 setUnsupportMinimumAPIVersion:v21 ofKinds:4 inCollection:v9, v40])
      {
        v36 = v28;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v16 ckShortDescription];
          [v10 safari_logDescription];
          v38 = v41 = v10;
          *buf = 138543874;
          v50 = v37;
          v51 = 2048;
          v52 = v21;
          v53 = 2114;
          v54 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Will delete zone with ID %{public}@ locally because MinimumAPIVersion for the zone changed to %zd with %{public}@", buf, 0x20u);

          v10 = v41;
        }

        v48 = v16;
        v27 = [NSArray arrayWithObjects:&v48 count:1];
        [(CloudTabGroupSyncCoordinator *)self _deleteRecordZoneWithIDs:v27 inCollection:v9];
LABEL_23:
        v13 = v44;

LABEL_25:
        v20 = v42;

        v12 = v45;
        v11 = v46;
        goto LABEL_26;
      }
    }

    v13 = v44;
    goto LABEL_25;
  }

  v20 = 0;
LABEL_26:

  return v20;
}

- (id)_handleUpdatedTabGroupParticipantPositionRecord:(id)a3 inCollection:(id)a4 shouldGenerateUpdatedRecord:(BOOL)a5 operationGroup:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 recordID];
  v13 = [v12 zoneID];
  v14 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    [v10 setHasSharedTabGroups];
    v16 = [v12 recordName];
    v17 = [v16 safari_substringFromPrefix:@"TabGroupPosition_"];
    if (v17)
    {
      v18 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v9 recordType];
        *buf = 138543874;
        *&buf[4] = v19;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        *&buf[22] = 2114;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Handling updated %{public}@ record for tabGroupRecordName %{public}@ with %{public}@", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v32 = sub_1000014FC;
      v33 = sub_1000ABC1C;
      v34 = 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000C0818;
      v23[3] = &unk_1001368D8;
      v30 = buf;
      v24 = v10;
      v25 = v17;
      v26 = v9;
      v27 = self;
      v20 = v11;
      v28 = v20;
      v29 = v12;
      if (([v24 performDatabaseUpdatesWithTransaction:v23 secureDelete:0] & 1) == 0)
      {
        v21 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [v20 safari_logDescription];
          objc_claimAutoreleasedReturnValue();
          sub_1000D0294();
        }
      }

      _Block_object_dispose(buf, 8);
    }
  }

  return 0;
}

- (void)_handleDeletedTabGroupParticipantPositionRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 zoneID];
  v12 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v14 = [v8 recordName];
    v15 = [v14 safari_substringFromPrefix:@"TabGroupPosition_"];
    if (v15)
    {
      v16 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = 138543874;
        v18 = @"TabGroupParticipantPosition";
        v19 = 2114;
        v20 = v15;
        v21 = 2114;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Handling deleted %{public}@ record for tabGroupRecordName %{public}@ with %{public}@", &v17, 0x20u);
      }

      [v9 updateSyncDataForBookmarkWithRecordName:v15 excludeDeletedBookmarks:1 usingBlock:&stru_100136960];
    }
  }
}

- (id)_handleUpdatedTabParticipantStatusRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 recordID];
  v12 = [v11 zoneID];
  v13 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v15 = [v11 recordName];
    v16 = [v15 safari_substringFromPrefix:@"TabReadStatus_"];
    if (v16)
    {
      v17 = [v9 bookmarkWithServerID:v16 excludeDeletedBookmarks:1];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 lastReadGeneration];
        v20 = [v8 safari_generationForKey:@"ReadStatus"];
        if ([v19 compare:v20] == 1)
        {
          [v8 safari_setGeneration:v19 forKey:{@"ReadStatus", v19}];
          v21 = v8;
        }

        else
        {
          [v18 setLastReadGeneration:{v20, v19}];
          [v9 saveBookmark:v18 incrementGenerations:0];
          v21 = 0;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000C1370;
        v29[3] = &unk_1001368B0;
        v30 = v8;
        v26 = [v9 updateSyncDataForBookmark:v18 usingBlock:v29];

        if (v26)
        {
          v25 = v21;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v23 = [v8 objectForKeyedSubscript:@"TabGroupTab"];
        v24 = [v23 recordID];
        [(CloudTabGroupSyncCoordinator *)self _addAuxiliaryRecord:v8 forUnknownRecordWithID:v24 operationGroup:v10];

        v25 = 0;
        v21 = 0;
      }

      v22 = v25;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_handleDeletedTabParticipantStatusRecord:(id)a3 inCollection:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 zoneID];
  v8 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v12 recordName];
    v11 = [v10 safari_substringFromPrefix:@"TabReadStatus_"];
    if (v11)
    {
      [v6 updateSyncDataForBookmarkWithRecordName:v11 excludeDeletedBookmarks:1 usingBlock:&stru_100136980];
    }
  }
}

- (id)_handleUpdatedSettingRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Parent"];
  v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Parent" ofType:v11 fromRecord:v8 withTransformer:v12];

  v14 = [v9 bookmarkIDForServerID:v13 excludeDeletedBookmarks:0];
  if (v14 == 0x7FFFFFFF)
  {
    v15 = [v8 objectForKeyedSubscript:@"Parent"];
    v16 = [v15 recordID];
    [(CloudTabGroupSyncCoordinator *)self _addAuxiliaryRecord:v8 forUnknownRecordWithID:v16 operationGroup:v10];

    v17 = 0;
  }

  else
  {
    v18 = v14;
    v19 = [(CloudTabGroupSyncCoordinator *)self _fieldFromSettingsRecord:v8];
    if ([v9 saveSettings:v19 inParentWithID:v18 parentServerID:v13])
    {
      v20 = [v19 allKeys];
      v21 = [v20 firstObject];

      v22 = [v19 objectForKeyedSubscript:v21];
      v23 = [v22 value];
      [v9 resetModifiedStateForSetting:v21 withRecord:v8 value:v23 forBookmarkWithID:v18];

      v24 = [v9 settingsForBookmarkWithID:v18];
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = sub_1000014FC;
      v38 = sub_1000ABC1C;
      v39 = 0;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000C17E0;
      v27[3] = &unk_1001369A8;
      v28 = v19;
      v25 = v24;
      v32 = &v34;
      v29 = v25;
      v30 = self;
      v31 = v9;
      v33 = v18;
      [v25 enumerateKeysAndObjectsUsingBlock:v27];
      v17 = v35[5];

      _Block_object_dispose(&v34, 8);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)_fieldFromSettingsRecord:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"SettingName"];
  v7 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"SettingName" ofType:v5 fromRecord:v4 withTransformer:v6];

  v8 = [(CloudTabGroupSyncCoordinator *)self _supportedSettingsRecordTypes];
  v9 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Value"];
  v10 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Value" ofTypes:v8 fromRecord:v4 withTransformer:v9];

  v17 = v7;
  v11 = [WBSCRDTField alloc];
  v12 = [v4 safari_generationForKey:@"Value"];

  v13 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  v14 = [v11 initWithValue:v10 generation:v12 deviceIdentifier:v13];
  v18 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  return v15;
}

- (id)_settingsTransformerForKey:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1B38;
  block[3] = &unk_100131408;
  block[4] = self;
  v3 = qword_100154080;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_100154080, block);
  }

  v5 = [qword_100154078 objectForKeyedSubscript:v4];

  return v5;
}

- (void)_handleDeletedSettingRecord:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C1D6C;
  v9[3] = &unk_1001369D0;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [v8 performDatabaseUpdatesWithTransaction:v9 secureDelete:0];
}

- (BOOL)_isExpiredChangeTokenError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if ([v4 safari_isCloudKitExpiredChangeTokenError])
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (![v5 safari_isCloudKitPartialFailureError])
  {
LABEL_7:
    v6 = 0;
    goto LABEL_13;
  }

  v7 = [v5 userInfo];
  v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v9 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v10 = [v8 objectForKeyedSubscript:v9];

  if ([v10 safari_isCloudKitMissingZoneError])
  {
    v6 = 0;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C1F64;
    v12[3] = &unk_1001369F8;
    v12[4] = &v13;
    v12[5] = &v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
    if (v18[3])
    {
      v6 = *(v14 + 24);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

LABEL_13:
  return v6 & 1;
}

- (void)_prepareForSyncDownInOperationGroup:(id)a3
{
  v4 = a3;
  v5 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 safari_logDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will prepare for sync down with %{public}@", &v7, 0xCu);
  }

  [(CloudTabGroupSyncCoordinator *)self _setUpRecordZoneIDsToPendingServerChangeTokens];
  [(CloudTabGroupSyncCoordinator *)self _setUpUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:v4];
}

- (void)_setUpRecordZoneIDsToPendingServerChangeTokens
{
  v3 = +[NSMutableDictionary dictionary];
  recordZoneIDsToPendingServerChangeTokens = self->_recordZoneIDsToPendingServerChangeTokens;
  self->_recordZoneIDsToPendingServerChangeTokens = v3;
}

- (void)_saveRecordZoneServerChangeTokensInCollection:(id)a3 operationGroup:(id)a4 ifSuccessful:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self->_recordZoneIDsToPendingServerChangeTokens;
  recordZoneIDsToPendingServerChangeTokens = self->_recordZoneIDsToPendingServerChangeTokens;
  self->_recordZoneIDsToPendingServerChangeTokens = 0;

  if (v5)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C2374;
    v12[3] = &unk_100135DC0;
    v13 = v10;
    v14 = self;
    v15 = v9;
    [v8 updateDatabaseSyncDataUsingBlock:v12];
  }
}

- (void)_performSyncDownAfterProcessingChangesInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 safari_logDescription];
    *buf = 138543362;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Will begin sync down with %{public}@", buf, 0xCu);
  }

  if (self->_syncPhase)
  {
    self->_syncPhase = 3;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000C2778;
  v23[3] = &unk_100136A48;
  v23[4] = self;
  v13 = v9;
  v24 = v13;
  v14 = v8;
  v25 = v14;
  v26 = v10;
  v15 = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C2890;
  v19[3] = &unk_100136A48;
  v19[4] = self;
  v20 = v14;
  v21 = v13;
  v22 = objc_retainBlock(v23);
  v16 = v22;
  v17 = v13;
  v18 = v14;
  [(CloudTabGroupSyncCoordinator *)self _performSyncDownInCollection:v18 operationGroup:v17 completionHandler:v19];
}

- (void)_continuePostSyncDownHousekeepingInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NSMutableSet *)self->_idsOfRecordZonesToRefresh count])
  {
    [(CloudTabGroupSyncCoordinator *)self _fetchRecordZonesToRefreshInCollection:v8 operationGroup:v9 completionHandler:v10];
  }

  else if ([(NSMutableSet *)self->_recordIDsToRefresh count])
  {
    [(CloudTabGroupSyncCoordinator *)self _fetchRecordsToRefreshInCollection:v8 operationGroup:v9 completionHandler:v10];
  }

  else if ([(NSMutableSet *)self->_auxiliaryRecordIDsToDelete count])
  {
    [(CloudTabGroupSyncCoordinator *)self _beginDeletingAuxiliaryRecordsInCollection:v8 operationGroup:v9 completionHandler:v10];
  }

  else
  {
    v11 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v9 safari_logDescription];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Post sync down housekeeping done with %{public}@", &v13, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:0 error:0 inOperationGroup:v9 completionHandler:v10];
  }
}

- (void)_performSyncDownInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 databaseSyncData];
  v12 = [(CloudBookmarkStore *)self->_bookmarkStore container];
  v13 = [v12 privateCloudDatabase];

  v29 = [v11 lastPrivateDatabaseServerChangeToken];
  v14 = [(CloudBookmarkStore *)self->_bookmarkStore container];
  v15 = [v14 sharedCloudDatabase];

  v16 = [v11 lastSharedDatabaseServerChangeToken];
  v17 = +[NSMutableSet set];
  v18 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    [v9 safari_logDescription];
    v28 = v10;
    v19 = v11;
    v21 = v20 = v13;
    *buf = 138543618;
    v39 = v29;
    v40 = 2114;
    v41 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing sync down with last server change token in private database: %{public}@ with %{public}@", buf, 0x16u);

    v13 = v20;
    v11 = v19;
    v10 = v28;
  }

  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncDownInOperationGroup:v9];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000C2D38;
  v30[3] = &unk_100136AC0;
  v31 = v17;
  v32 = self;
  v33 = v8;
  v34 = v9;
  v36 = v15;
  v37 = v10;
  v35 = v16;
  v22 = v15;
  v23 = v16;
  v24 = v10;
  v25 = v9;
  v26 = v8;
  v27 = v17;
  [(CloudTabGroupSyncCoordinator *)self _fetchChangedRecordZonesSinceServerChangeToken:v29 inDatabase:v13 collection:v26 operationGroup:v25 completionHandler:v30];
}

- (void)_fetchChangedRecordZonesSinceServerChangeToken:(id)a3 inDatabase:(id)a4 collection:(id)a5 operationGroup:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled])
  {
    bookmarkStore = self->_bookmarkStore;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000C34F4;
    v21[3] = &unk_100136B88;
    v21[4] = self;
    v22 = v15;
    v25 = v16;
    v23 = v13;
    v24 = v14;
    [(CloudBookmarkStore *)bookmarkStore fetchChangesSinceServerChangeToken:v12 inDatabase:v23 operationGroup:v22 completionHandler:v21];
  }

  else
  {
    v18 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 safari_logDescription];
      *buf = 138543362;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);
    }

    v20 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
    (*(v16 + 2))(v16, 0, 0, v20);
  }
}

- (void)_handleDeletedRecordZoneIDs:(id)a3 inCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CloudTabGroupSyncCoordinator *)self _deleteRecordZoneWithIDs:v6 inCollection:v7];
  [CloudTabGroupRecordZoneMetadata removeMetadataForRecordZoneIDs:v6 inCollection:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:v13, v16];
        recordZoneNamesToMetadatas = self->_recordZoneNamesToMetadatas;
        v15 = [v13 zoneName];
        [(NSMutableDictionary *)recordZoneNamesToMetadatas setObject:0 forKeyedSubscript:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)_deleteRecordZoneWithIDs:(id)a3 inCollection:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C4158;
  v8[3] = &unk_100135DC0;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [v6 updateDatabaseSyncDataUsingBlock:v8];
  [(CloudTabGroupSyncCoordinator *)self _updateDatabaseContainsCKShareRecordIfNeededInCollection:v6];
}

- (void)_performSyncDownForRecordZoneIDs:(id)a3 perRecordZoneConfigurations:(id)a4 inDatabase:(id)a5 collection:(id)a6 operationGroup:(id)a7 completionHandler:(id)a8
{
  v36 = a3;
  v14 = a4;
  v34 = a5;
  v33 = a6;
  v35 = a7;
  v37 = a8;
  LOBYTE(a7) = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled];
  v15 = [(CloudTabGroupSyncCoordinator *)self _log];
  v16 = v15;
  if (a7)
  {
    v17 = [v36 count];
    v18 = v16;
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (v19)
      {
        v20 = [v36 valueForKey:@"ckShortDescription"];
        v21 = [v20 componentsJoinedByString:{@", "}];
        v22 = [v35 safari_logDescription];
        *buf = 138544130;
        *&buf[4] = v21;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        *&buf[22] = 2114;
        v67 = v14;
        v68 = 2114;
        v69 = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing sync down for record zone IDs %{public}@ in database: %{public}@, configurations: %{public}@ with %{public}@", buf, 0x2Au);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v23 = self->_observers;
      v24 = [(NSHashTable *)v23 countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v24)
      {
        v25 = *v62;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v62 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v61 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v27 syncCoordinator:self didBeginSyncDownWithConfigurations:v14];
            }
          }

          v24 = [(NSHashTable *)v23 countByEnumeratingWithState:&v61 objects:v65 count:16];
        }

        while (v24);
      }

      v28 = +[NSMutableDictionary dictionary];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v67) = 0;
      bookmarkStore = self->_bookmarkStore;
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1000C4A38;
      v56[3] = &unk_100136BD8;
      v57 = v18;
      v58 = v35;
      v59 = self;
      v60 = v33;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000C4CD8;
      v53[3] = &unk_100136C00;
      v53[4] = self;
      v54 = v60;
      v55 = v58;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000C4DD4;
      v46[3] = &unk_100136C50;
      v47 = v57;
      v48 = v55;
      v49 = self;
      v50 = v54;
      v52 = buf;
      v51 = v28;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000C50A8;
      v38[3] = &unk_100136CE0;
      v45 = buf;
      v18 = v47;
      v39 = v18;
      v30 = v51;
      v40 = v30;
      v41 = v48;
      v44 = v37;
      v42 = v36;
      v43 = v14;
      [(CloudBookmarkStore *)bookmarkStore fetchRecordZoneChangesInZonesWithIDs:v42 perZoneConfigurations:v43 inDatabase:v34 operationGroup:v41 recordWasChangedBlock:v56 recordWithIDWasDeletedBlock:v53 recordZoneFetchCompletionBlock:v46 completionHandler:v38];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v19)
      {
        v32 = [v35 safari_logDescription];
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No record zone IDs to update in database %{public}@ with %{public}@", buf, 0x16u);
      }

      (*(v37 + 2))(v37, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v35 safari_logDescription];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);
    }

    v18 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
    (*(v37 + 2))(v37, v18);
  }
}

- (void)_handleExpiredChangeTokenError:(id)a3 collection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (self->_expiredChangeTokenHandler)
  {
    (*(v12 + 2))(v12, a3);
  }

  else
  {
    v14 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 safari_logDescription];
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Change token is expired; trying a full sync down with %{public}@", buf, 0xCu);
    }

    v16 = [[CloudTabGroupExpiredChangeTokenHandler alloc] initWithCollection:v10];
    expiredChangeTokenHandler = self->_expiredChangeTokenHandler;
    self->_expiredChangeTokenHandler = v16;

    [(CloudBookmarkExpiredChangeTokenHandler *)self->_expiredChangeTokenHandler collectAllRecordNames];
    [v10 updateDatabaseSyncDataUsingBlock:&stru_100136D20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C5598;
    v18[3] = &unk_100136A48;
    v18[4] = self;
    v19 = v10;
    v20 = v11;
    v21 = v13;
    [(CloudTabGroupSyncCoordinator *)self _performSyncDownInCollection:v19 operationGroup:v20 completionHandler:v18];
  }
}

- (void)_didCompleteSyncDownAfterExpiredChangeTokenErrorWithCollection:(id)a3 operationGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 safari_logDescription];
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully completed full sync down after expired change token error with %{public}@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(CloudBookmarkExpiredChangeTokenHandler *)self->_expiredChangeTokenHandler namesOfLocalRecordsToDelete];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v21;
    *&v12 = 138543618;
    v19 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v7 safari_logDescription];
          *buf = v19;
          v25 = v16;
          v26 = 2114;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Record %{public}@ was not seen during sync down after expired change token error; marking it for deletion with %{public}@", buf, 0x16u);
        }

        [(CloudTabGroupSyncCoordinator *)self _removeBookmarkWithServerID:v16 inCollection:v6];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }
}

- (void)_saveAssetsForBookmarkIfPresent:(id)a3 onRecord:(id)a4 withConfiguration:(id)a5 inCollection:(id)a6 operationGroup:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a5;
  v15 = [v11 UUID];
  v16 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"BackgroundImage" ofType:objc_opt_class() fromRecord:v12 withConfiguration:v14];

  v17 = +[NSFileManager defaultManager];
  v18 = [v17 safari_startPageBackgroundImageFileURLForIdentifier:v15];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000C59B8;
  v23[3] = &unk_100136D48;
  v23[4] = self;
  v24 = v13;
  v25 = v15;
  v26 = v11;
  v27 = v12;
  v19 = v12;
  v20 = v11;
  v21 = v15;
  v22 = v13;
  [(CloudTabGroupSyncCoordinator *)self _saveAssetAtURL:v16 toURL:v18 operationGroup:v22 completionHandler:v23];
}

- (void)_saveAssetAtURL:(id)a3 toURL:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v10)
  {
    v12 = +[NSFileManager defaultManager];
    v13 = os_transaction_create();
    assetSavingQueue = self->_assetSavingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C5E9C;
    block[3] = &unk_100133B70;
    v19 = v13;
    v20 = v9;
    v21 = v12;
    v22 = v10;
    v23 = v11;
    v15 = v12;
    v16 = v13;
    dispatch_async(assetSavingQueue, block);
  }

  else
  {
    v17 = [NSError safari_errorWithDomain:CKErrorDomain code:35 privacyPreservingDescription:@"Asset destination URL was not available."];
    (*(v11 + 2))(v11, v17);
  }
}

- (void)_didFinishSyncingWithResult:(int64_t)a3 error:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(CloudTabGroupSyncCoordinator *)self _reportSyncOperationFinishedWithError:v10 result:a3 inOperationGroup:a5];
  v15 = v11;
  v13 = v10;
  v14 = v11;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (int64_t)_syncResultForError:(id)a3
{
  v4 = a3;
  if ([v4 safari_isCloudKitMissingZoneError])
  {
    v5 = 2;
  }

  else if ([v4 safari_isMigrationStateRecordChangedError])
  {
    v5 = 1;
  }

  else if ([v4 safari_isCloudKitPartialFailureError])
  {
    v6 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    if ([v4 safari_containsCloudKitMissingZoneErrorForRecordZoneID:v6])
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didFailToSyncWithError:(id)a3 inCollection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000D0898();
  }

  if ([v10 safari_isOrContainsCloudKitMissingManateeIdentityError])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleICloudKeychainResetInCollection:v11 operationGroup:v12 completionHandler:v13];
  }

  else
  {
    v15 = [(CloudTabGroupSyncCoordinator *)self _syncResultForError:v10];
    v16 = [v11 localMigrationState];
    if ((v15 - 1) <= 1 && (v16 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      [v11 resetDeviceIdentifier];
      [v11 setLocalMigrationState:0 generateDeviceIdentifierIfNeeded:1];
    }

    [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:v15 error:v10 inOperationGroup:v12 completionHandler:v13];
  }
}

- (id)_createCollectionWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionType];
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = WebBookmarkTabCollection_ptr;
  }

  else
  {
    v6 = WebBookmarkCollection_ptr;
  }

  v3 = [objc_alloc(*v6) initWithConfiguration:v4];
LABEL_6:

  return v3;
}

- (id)_configurationForRecord:(id)a3
{
  v4 = a3;
  v5 = [(CloudTabGroupSyncCoordinator *)self itemConfigurations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C634C;
  v9[3] = &unk_100133188;
  v10 = v4;
  v6 = v4;
  v7 = [v5 safari_firstObjectPassingTest:v9];

  return v7;
}

- (id)_configurationForBookmark:(id)a3
{
  v4 = a3;
  v5 = [(CloudTabGroupSyncCoordinator *)self itemConfigurations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C6428;
  v9[3] = &unk_100133188;
  v10 = v4;
  v6 = v4;
  v7 = [v5 safari_firstObjectPassingTest:v9];

  return v7;
}

- (id)_hashGeneratorForRecord:(id)a3
{
  recordZoneIDsToHashGenerators = self->_recordZoneIDsToHashGenerators;
  v4 = [a3 recordID];
  v5 = [v4 zoneID];
  v6 = [(NSDictionary *)recordZoneIDsToHashGenerators objectForKeyedSubscript:v5];

  return v6;
}

- (id)_makeRootRecordID
{
  v3 = [CKRecordID alloc];
  v4 = WBSCloudBookmarkListRecordNameTopBookmark;
  v5 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v6 = [v3 initWithRecordName:v4 zoneID:v5];

  return v6;
}

- (id)_recordZoneIDForBookmark:(id)a3 inCollection:(id)a4
{
  v6 = a4;
  v7 = [v6 bookmarkIdentifierOfFolderAncestorWithSubtype:0 forBookmark:a3];
  if (v7 == 0x7FFFFFFF || v7 == BookmarksRootID)
  {
    v9 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  }

  else
  {
    v10 = [v6 serverIDForBookmarkID:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [(NSDictionary *)self->_secondaryZoneNamesToRecordZoneIDs objectForKeyedSubscript:v10];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
      }

      v9 = v14;
    }

    else
    {
      v9 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    }
  }

  return v9;
}

- (BOOL)_saveRecord:(id)a3 forBookmark:(id)a4 inCollection:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C66C0;
  v9[3] = &unk_1001368B0;
  v10 = a3;
  v7 = v10;
  LOBYTE(a5) = [a5 updateSyncDataForBookmark:a4 usingBlock:v9];

  return a5;
}

- (id)_serverIDForBookmarkCreateIfNeeded:(id)a3 inCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 serverID];
  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v9 = [v6 generateNewServerIDForBookmark:v5];
    [v6 setServerID:v9 forBookmark:v5];

    v8 = [v5 serverID];
  }

  v10 = v8;

  return v10;
}

- (id)_valueForKey:(id)a3 ofType:(Class)a4 fromRecord:(id)a5 withConfiguration:(id)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a6 valueTransformerForAttributeKey:v11 record:v10];
  v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:v11 ofType:a4 fromRecord:v10 withTransformer:v12];

  return v13;
}

- (id)_valueForKey:(id)a3 ofType:(Class)a4 fromRecord:(id)a5 withTransformer:(id)a6
{
  v15 = a4;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:v11 ofTypes:v12 fromRecord:v10 withTransformer:v9, v15];

  return v13;
}

- (id)_valueForKey:(id)a3 ofTypes:(id)a4 fromRecord:(id)a5 withTransformer:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (([v12 attributeRequiresEncryption] & 1) == 0)
  {
    v14 = [v11 objectForKeyedSubscript:v9];
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_14:
    v23 = 0;
    goto LABEL_18;
  }

  v13 = [v11 safari_encryptedValues];
  v14 = [v13 objectForKeyedSubscript:v9];

  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_3:
  v15 = [v12 reverseTransformedValueOrNull:v14];
  v16 = +[NSNull null];

  if (v15 == v16)
  {
    v23 = v15;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v23 = v15;

            goto LABEL_17;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v23 = 0;
  }

LABEL_17:

LABEL_18:

  return v23;
}

- (id)_recordForBookmark:(id)a3 inCollection:(id)a4 changeType:(int)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(CloudTabGroupSyncCoordinator *)self _configurationForBookmark:v8];
    if (v10)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_1000014FC;
      v23 = sub_1000ABC1C;
      v24 = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000C6CE4;
      v13[3] = &unk_100136D70;
      v17 = &v19;
      v13[4] = self;
      v14 = v8;
      v15 = v10;
      v18 = a5;
      v16 = v9;
      [v16 updateSyncDataForBookmark:v14 usingBlock:v13];
      v11 = v20[5];

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_nextBatchItemAfterChangeToken:(int64_t)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a4;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000014FC;
  v25 = sub_1000ABC1C;
  v26 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C6EBC;
  v15[3] = &unk_100136DE8;
  v10 = v8;
  v19 = &v21;
  v20 = a3;
  v16 = v10;
  v17 = self;
  v11 = v9;
  v18 = v11;
  if ([v10 performDatabaseUpdatesWithTransaction:v15 secureDelete:0])
  {
    v12 = v22[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)_createSettingCKRecordFromFieldRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 record];
  v6 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  if (!v5)
  {
    v7 = [v4 attributes];
    v8 = [v7 objectForKeyedSubscript:@"SettingServerID"];

    v9 = [v4 attributes];
    if (v8)
    {
      v10 = [v9 objectForKeyedSubscript:@"SettingServerID"];
    }

    else
    {
      v11 = [v9 objectForKeyedSubscript:@"SettingName"];
      v12 = [v4 attributes];
      v13 = [v12 objectForKeyedSubscript:@"Parent"];
      v10 = [NSString stringWithFormat:@"%@_%@_%@", @"Setting", v11, v13];
    }

    v14 = [[CKRecordID alloc] initWithRecordName:v10 zoneID:v6];
    v5 = [[CKRecord alloc] initWithRecordType:@"Setting" recordID:v14];
  }

  v15 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"SettingName"];
  v16 = [v4 attributes];
  v17 = [v16 objectForKeyedSubscript:@"SettingName"];
  [v15 transformedValueOrNull:v17];
  v18 = v32 = v6;
  v19 = [v5 safari_encryptedValues];
  [v19 setObject:v18 forKeyedSubscript:@"SettingName"];

  v20 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Value"];
  v21 = [v4 attributes];
  v22 = [v21 objectForKeyedSubscript:@"Value"];
  v23 = [v20 transformedValueOrNull:v22];
  v24 = [v5 safari_encryptedValues];
  [v24 setObject:v23 forKeyedSubscript:@"Value"];

  v25 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Parent"];
  v26 = [v4 attributes];
  v27 = [v26 objectForKeyedSubscript:@"Parent"];
  v28 = [v25 transformedValueOrNull:v27];
  [v5 setObject:v28 forKeyedSubscript:@"Parent"];

  v29 = [v4 field];
  v30 = [v29 generation];
  [v5 safari_setGeneration:v30 forKey:@"Value"];

  [v5 safari_setMinimumAPIVersion:3];

  return v5;
}

- (id)_batchItemForDeleteChange:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 bookmark];
  v12 = [v9 syncDataForBookmark:v11];

  v13 = [v12 record];
  if (!v13)
  {
    v33 = [CloudTabGroupBatchItem alloc];
    v34 = +[NSSet set];
    v35 = [(CloudTabGroupBatchItem *)v33 initWithChange:v8 updatedRecords:v34];

    goto LABEL_36;
  }

  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  v64 = v12;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v13 recordType];
    v16 = [v13 recordID];
    v17 = [v16 ckShortDescription];
    v18 = [v10 safari_logDescription];
    *buf = 138543874;
    v71 = v15;
    v72 = 2114;
    v73 = v17;
    v74 = 2114;
    v75 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Handling deletion of record of type %{public}@ with ID: %{public}@ with %{public}@", buf, 0x20u);

    v12 = v64;
  }

  v63 = v10;

  v19 = +[NSMutableSet set];
  v20 = [v12 auxiliaryRecordIDs];
  v21 = [(CloudTabGroupSyncCoordinator *)self _log];
  v62 = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v20 count];
    v23 = [v20 valueForKey:@"ckShortDescription"];
    v24 = [v10 safari_logDescription];
    *buf = 134218498;
    v71 = v22;
    v12 = v64;
    v72 = 2114;
    v73 = v23;
    v74 = 2114;
    v75 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Deleting %lu auxiliary records with IDs: %{public}@ with %{public}@", buf, 0x20u);

    v20 = v62;
  }

  [v19 addObjectsFromArray:v20];
  if (![v12 isDeletingRecordZone])
  {
    v36 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v13 recordID];
      v38 = [v37 ckShortDescription];
      v39 = [v10 safari_logDescription];
      *buf = 138543618;
      v71 = v38;
      v72 = 2114;
      v73 = v39;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Marking record as Deleted with ID: %{public}@ with %{public}@", buf, 0x16u);

      v12 = v64;
    }

    [v13 safari_setState:{objc_msgSend(v12, "state")}];
    v40 = [v12 generationForKey:@"Deleted"];
    [v13 safari_setGeneration:v40 forKey:@"Deleted"];

    v41 = [v13 recordType];
    LODWORD(v40) = [v41 isEqualToString:@"Profile"];

    if (v40)
    {
      v60 = v8;
      v42 = [v9 settingsChangesForAllDeletedSettings];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v43 = [v42 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v66;
        do
        {
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v66 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v65 + 1) + 8 * i);
            v48 = [v47 record];

            if (v48)
            {
              v49 = [v47 record];
              v50 = [v49 recordID];
              [v19 addObject:v50];
            }

            else
            {
              [v9 deleteSettingWithIdentifier:{objc_msgSend(v47, "identifier")}];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v65 objects:v69 count:16];
        }

        while (v44);
      }

      v8 = v60;
      v10 = v63;
    }

    v51 = [CloudTabGroupBatchItem alloc];
    v25 = [NSSet setWithObject:v13];
    v35 = [(CloudTabGroupBatchItem *)v51 initWithChange:v8 updatedRecords:v25 deletedRecordIDs:v19];
    v12 = v64;
    v52 = v62;
    goto LABEL_35;
  }

  v25 = +[NSMutableSet set];
  v26 = [v13 recordType];
  v27 = [v26 isEqualToString:@"TabGroup"];

  if (v27)
  {
    v28 = [v13 recordID];
    v29 = [v28 zoneID];

    if ([v29 safari_isInPrivateDatabase])
    {
      v30 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v29 ckShortDescription];
        v32 = [v10 safari_logDescription];
        *buf = 138543618;
        v71 = v31;
        v72 = 2114;
        v73 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Deleting shared private zone with ID %{public}@ with %{public}@", buf, 0x16u);
      }

      [v25 addObject:v29];
      goto LABEL_34;
    }

    v53 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:v29];
    v56 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      [v29 ckShortDescription];
      v57 = v61 = v53;
      v58 = [v10 safari_logDescription];
      *buf = 138543618;
      v71 = v57;
      v72 = 2114;
      v73 = v58;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Leaving share by deleting CKShare in shared zone with ID %{public}@ with %{public}@", buf, 0x16u);

      v53 = v61;
    }

    [v19 addObject:v53];
    goto LABEL_33;
  }

  v29 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v53 = [v13 recordID];
    v54 = [v53 ckShortDescription];
    v55 = [v10 safari_logDescription];
    *buf = 138543618;
    v71 = v54;
    v72 = 2114;
    v73 = v55;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Record with ID %{public}@ is in a zone that will be removed with %{public}@", buf, 0x16u);

LABEL_33:
  }

LABEL_34:
  v12 = v64;
  v52 = v62;

  v35 = [[CloudTabGroupBatchItem alloc] initWithChange:v8 deletedRecordZoneIDs:v25 deletedRecordIDs:v19];
LABEL_35:

LABEL_36:

  return v35;
}

- (id)_recordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 changeType:(int)a6 inCollection:(id)a7
{
  v59 = a3;
  v11 = a4;
  v12 = a5;
  v57 = a7;
  v13 = [v11 record];
  v14 = [v13 copy];

  if (!v14)
  {
    v15 = [(CloudTabGroupSyncCoordinator *)self _serverIDForBookmarkCreateIfNeeded:v59 inCollection:v57];
    v16 = [(CloudTabGroupSyncCoordinator *)self _recordZoneIDForBookmark:v59 inCollection:v57];
    v17 = [[CKRecordID alloc] initWithRecordName:v15 zoneID:v16];
    v18 = [CKRecord alloc];
    v19 = [v12 recordType];
    v14 = [v18 initWithRecordType:v19 recordID:v17];

    [v11 setRecord:v14];
  }

  if (a6 == 1)
  {
    v20 = [(__CFString *)v14 recordChangeTag];
    a6 = [v20 length] != 0;
  }

  v21 = [v59 syncPosition];

  if (!v21)
  {
    v22 = [v57 generateSyncPositionForBookmark:v59];
    [v59 setSyncPosition:v22];

    v23 = [v59 syncPosition];
    [v11 setPosition:v23];

    [v57 markAttributesAsModified:4 forBookmark:v59];
  }

  if (a6 == 1)
  {
    [v57 modifiedSyncingAttributesForBookmark:v59];
  }

  else
  {
    [v57 allSyncingAttributesForBookmark:v59];
  }
  v55 = ;
  [(CloudTabGroupSyncCoordinator *)self _knownKeysToSaveForRecord:v14 withConfiguration:v12];
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000C8C80;
  v24 = v66[3] = &unk_100136E10;
  v67 = v24;
  v61 = v12;
  v68 = v61;
  v54 = v11;
  v69 = v54;
  v25 = v14;
  v70 = v25;
  v71 = &v77;
  v72 = &v73;
  [v55 enumerateKeysAndObjectsUsingBlock:v66];
  v53 = v24;
  if (v78[3])
  {
    v26 = [v59 minimumSyncAPIVersion];
    v27 = [v26 unsignedIntegerValue];

    v28 = [(CloudTabGroupSyncCoordinator *)self _computeMinimumSyncAPIVersionForRecord:v25 withBookmark:v59 inCollection:v57];
    v29 = v28;
    if (!a6 || v28 != v27 || ([(__CFString *)v25 recordChangeTag], v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, v31))
    {
      [(__CFString *)v25 safari_setMinimumAPIVersion:v29];
      v32 = [v54 generationForKey:@"MinimumAPIVersion"];
      v33 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
      v34 = [v32 incrementedGenerationWithDeviceIdentifier:v33];
      [(__CFString *)v25 safari_setGeneration:v34 forKey:@"MinimumAPIVersion"];
    }

    if (v74[3])
    {
      v60 = +[NSMutableArray array];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v35 = [v61 identityHashKeys];
      v36 = [v35 countByEnumeratingWithState:&v62 objects:v81 count:16];
      if (v36)
      {
        v37 = *v63;
        obj = v35;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v63 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v62 + 1) + 8 * i);
            v40 = [(__CFString *)v25 changedKeys];
            v41 = [v40 containsObject:v39];

            if (v41)
            {
              v42 = [v61 valueTransformerForAttributeKey:v39 record:v25];
              if ([v42 attributeRequiresEncryption])
              {
                v43 = [(__CFString *)v25 safari_encryptedValues];
                v44 = [v43 objectForKeyedSubscript:v39];
                v45 = [v42 reverseTransformedValue:v44];
              }

              else
              {
                v43 = [(__CFString *)v25 objectForKeyedSubscript:v39];
                v45 = [v42 reverseTransformedValue:v43];
              }
            }

            else
            {
              v42 = [v57 allSyncingAttributesForBookmark:v59];
              v45 = [v42 objectForKeyedSubscript:v39];
            }

            v46 = [v61 valueTransformerForIdentityHashKey:v39];
            v47 = [v46 isEmptyValue:v45];
            v48 = &stru_100137BA8;
            if ((v47 & 1) == 0)
            {
              v14 = [v46 transformedValue:v45];
              v48 = v14;
            }

            [v60 addObject:v48];
            if ((v47 & 1) == 0)
            {
            }
          }

          v35 = obj;
          v36 = [obj countByEnumeratingWithState:&v62 objects:v81 count:16];
        }

        while (v36);
      }

      v49 = [(CloudTabGroupSyncCoordinator *)self _hashGeneratorForRecord:v25];
      v50 = [v49 generateHashWithComponents:v60];
      [(__CFString *)v25 setObject:v50 forKeyedSubscript:@"IdentityHash"];

      v51 = v25;
    }

    else
    {
      v51 = v25;
    }
  }

  else
  {
    v51 = 0;
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);

  return v51;
}

- (id)_knownKeysToSaveForRecord:(id)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = [a3 recordID];
  v8 = [v7 zoneID];
  v9 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    [v6 knownKeys];
  }

  else
  {
    [v6 primaryCKRecordKeysToSave];
  }
  v11 = ;

  return v11;
}

- (unint64_t)_computeMinimumSyncAPIVersionForRecord:(id)a3 withBookmark:(id)a4 inCollection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 recordID];
  v11 = [v10 zoneID];
  v12 = [v11 safari_isTabGroupSecondaryRecordZoneID];

  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = [v9 bookmarkWithID:{objc_msgSend(v9, "bookmarkIdentifierOfFolderAncestorWithSubtype:forBookmark:", 0, v8)}];
  v14 = [v9 syncDataForBookmark:v13];
  v15 = [v14 shareRecord];

  if (v15)
  {
    v16 = 2;
  }

  else
  {
LABEL_4:
    v17 = [v7 recordID];
    v18 = [v17 recordName];
    v19 = [v18 isEqualToString:WBSDefaultProfileIdentifier];

    if (v19)
    {
      v16 = 4;
    }

    else
    {
      v16 = 1;
      if ([v9 bookmarkIdentifierOfAncestorWithSubtype:2 forBookmark:v8] != 0x7FFFFFFF)
      {
        v16 = 3;
      }
    }

    if ([v7 safari_state] == 2 && v16 <= 2)
    {
      v16 = 2;
    }
  }

  return v16;
}

- (id)_tabGroupParticipantExtrasRecordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 changeType:(int)a6 inCollection:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v14 recordType];
  v17 = [v16 isEqualToString:@"TabGroup"];

  if (!v17)
  {
    v23 = 0;
    goto LABEL_30;
  }

  v18 = [v13 record];
  if (v18)
  {
    v61 = v18;
    v19 = [v18 recordID];
    v20 = [v19 zoneID];
    v21 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      v23 = 0;
LABEL_28:
      v18 = v61;
      goto LABEL_29;
    }

    if (a6)
    {
      v59 = [v12 modifiedAttributes];
    }

    else
    {
      v59 = 580;
    }

    v24 = tabGroupParticipantExtrasRecordAuxiliaryRecordKey;
    v25 = [v13 auxiliaryRecordForKey:tabGroupParticipantExtrasRecordAuxiliaryRecordKey];
    v26 = v25;
    if ((v59 & 0x244) == 0)
    {
      v23 = 0;
LABEL_27:

      goto LABEL_28;
    }

    if (!v25)
    {
      v56 = [v12 serverID];
      v27 = [@"TabGroupExtras_" stringByAppendingString:v56];
      v28 = [CKRecordID alloc];
      v29 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
      v30 = [v28 initWithRecordName:v27 zoneID:v29];

      v26 = [[CKRecord alloc] initWithRecordType:@"TabGroupParticipantExtras" recordID:v30];
      v31 = [[CKReference alloc] initWithRecord:v61 action:0];
      [v26 setObject:v31 forKeyedSubscript:@"TabGroup"];

      [v13 setAuxiliaryRecord:v26 forKey:v24];
    }

    v32 = [v26 objectForKeyedSubscript:@"ParentFolder"];
    v33 = [v32 recordID];

    if (v33 && ([v33 recordName], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "bookmarkWithServerID:excludeDeletedBookmarks:", v34, 0), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, a6 == 1) && v35)
    {
      v36 = [v15 modifiedSyncingAttributesForBookmark:v12];
      v37 = 1;
      if ((v59 & 0x44) == 0)
      {
LABEL_20:
        if (!v37 || (v59 & 0x200) != 0)
        {
          v46 = [v14 generationKeyForKey:@"LastSelectedTab"];
          v47 = [v13 generationForKey:v46];
          if ([v47 isValid])
          {
            [v14 valueTransformerForAttributeKey:@"LastSelectedTab" record:v61];
            v48 = v58 = v36;
            [v58 objectForKeyedSubscript:@"LastSelectedTab"];
            v49 = v60 = v33;
            v50 = [v48 transformedValueOrNull:v49];
            [v26 setObject:v50 forKeyedSubscript:@"LastSelectedTab"];

            v33 = v60;
            [v26 safari_setGeneration:v47 forKey:@"LastSelectedTab"];

            v36 = v58;
          }
        }

        v51 = [NSNumber numberWithInteger:3];
        [v26 setObject:v51 forKeyedSubscript:@"MinimumAPIVersion"];

        v26 = v26;
        v23 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v36 = [v15 allSyncingAttributesForBookmark:v12];
      v37 = 0;
    }

    v55 = v37;
    v57 = v36;
    v54 = [v14 generationKeyForKey:@"Position"];
    v53 = [v13 generationForKey:v54];
    v38 = +[CloudBookmarkItemConfiguration encryptedPositionAttributeValueTransformer];
    v39 = [v36 objectForKeyedSubscript:@"Position"];
    [v38 transformedValueOrNull:v39];
    v41 = v40 = v33;
    v42 = [v26 safari_encryptedValues];
    [v42 setObject:v41 forKeyedSubscript:@"Position"];

    v33 = v40;
    v43 = [v14 valueTransformerForAttributeKey:@"ParentFolder"];
    v44 = [v57 objectForKeyedSubscript:@"ParentFolder"];
    v45 = [v43 transformedValueOrNull:v44];
    [v26 setObject:v45 forKeyedSubscript:@"ParentFolder"];

    v36 = v57;
    [v26 safari_setGeneration:v53 forKey:@"ParentAndPosition"];

    v37 = v55;
    goto LABEL_20;
  }

  v23 = 0;
LABEL_29:

LABEL_30:

  return v23;
}

- (id)_tabGroupParticipantPositionRecordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 changeType:(int)a6 inCollection:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v14 recordType];
  v17 = [v16 isEqualToString:@"TabGroup"];

  if (!v17)
  {
    v20 = 0;
    goto LABEL_14;
  }

  v18 = [v13 record];
  v19 = v18;
  if (!v18 || ([v18 safari_isInPrivateDatabase] & 1) != 0)
  {
    goto LABEL_4;
  }

  if (!a6)
  {
    v22 = 516;
    goto LABEL_11;
  }

  v21 = [v12 modifiedAttributes];
  if ((v21 & 0x204) != 0)
  {
    v22 = v21;
    if (a6 == 1)
    {
      v23 = [v15 modifiedSyncingAttributesForBookmark:v12];
LABEL_12:
      v24 = v23;
      v20 = [(CloudTabGroupSyncCoordinator *)self _tabGroupParticipantPositionRecordForBookmark:v12 syncData:v13 configuration:v14 modifiedAttributes:v22 attributes:v23 inCollection:v15];

      goto LABEL_13;
    }

LABEL_11:
    v23 = [v15 allSyncingAttributesForBookmark:v12];
    goto LABEL_12;
  }

LABEL_4:
  v20 = 0;
LABEL_13:

LABEL_14:

  return v20;
}

- (id)_tabGroupParticipantPositionRecordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 modifiedAttributes:(unint64_t)a6 attributes:(id)a7 inCollection:(id)a8
{
  v9 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [v14 record];
  v18 = [v14 auxiliaryRecordForKey:@"TabGroupPosition"];
  if (v18)
  {
    if ((v9 & 4) != 0)
    {
LABEL_3:
      v42 = [v15 generationKeyForKey:@"Position"];
      v19 = [v14 generationForKey:v42];
      v20 = +[CloudBookmarkItemConfiguration encryptedPositionAttributeValueTransformer];
      [v16 objectForKeyedSubscript:@"Position"];
      v43 = v17;
      v44 = v14;
      v22 = v21 = v13;
      [v20 transformedValueOrNull:v22];
      v24 = v23 = v16;
      [v18 safari_encryptedValues];
      v25 = v9;
      v27 = v26 = v15;
      [v27 setObject:v24 forKeyedSubscript:@"Position"];

      v15 = v26;
      v9 = v25;

      v16 = v23;
      v13 = v21;
      v17 = v43;
      v14 = v44;
      [v18 safari_setGeneration:v19 forKey:@"Position"];
    }
  }

  else
  {
    v29 = [v13 serverID];
    if (![v29 length])
    {
      v18 = 0;
      goto LABEL_12;
    }

    v36 = [@"TabGroupPosition_" stringByAppendingString:v29];
    v37 = [CKRecordID alloc];
    [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    v38 = v46 = v9;
    v39 = [v37 initWithRecordName:v36 zoneID:v38];

    v18 = [[CKRecord alloc] initWithRecordType:@"TabGroupParticipantPosition" recordID:v39];
    v40 = [[CKReference alloc] initWithRecord:v17 action:0];
    [v18 setObject:v40 forKeyedSubscript:@"TabGroup"];

    v9 = v46;
    [v14 setAuxiliaryRecord:v18 forKey:@"TabGroupPosition"];

    if ((v46 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  if ((v9 & 0x200) == 0)
  {
    goto LABEL_13;
  }

  v28 = v17;
  v29 = [v15 generationKeyForKey:@"LastSelectedTab"];
  v30 = [v14 generationForKey:v29];
  if ([v30 isValid])
  {
    [v15 valueTransformerForAttributeKey:@"LastSelectedTab" record:v28];
    v31 = v45 = v15;
    [v16 objectForKeyedSubscript:@"LastSelectedTab"];
    v33 = v32 = v16;
    [v31 transformedValueOrNull:v33];
    v35 = v34 = v13;
    [v18 setObject:v35 forKeyedSubscript:@"LastSelectedTab"];

    v13 = v34;
    v16 = v32;
    [v18 safari_setGeneration:v30 forKey:@"LastSelectedTab"];

    v15 = v45;
  }

  v17 = v28;
LABEL_12:

LABEL_13:

  return v18;
}

- (id)_readStatusRecordForBookmark:(id)a3 syncData:(id)a4 configuration:(id)a5 changeType:(int)a6 inCollection:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = [a5 recordType];
  v14 = [v13 isEqualToString:@"TabGroupTab"];

  if (!v14)
  {
    v21 = 0;
    goto LABEL_14;
  }

  v15 = [v12 record];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 recordID];
    v18 = [v17 zoneID];
    v19 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    v20 = [v18 isEqual:v19];

    if ((v20 & 1) == 0 && (!a6 || ([v11 modifiedAttributes] & 0x20000) != 0))
    {
      v21 = [v12 auxiliaryRecordForKey:@"ReadStatus"];
      if (!v21)
      {
        v22 = [v11 serverID];
        if (![v22 length])
        {
          v21 = 0;
          goto LABEL_12;
        }

        v23 = [@"TabReadStatus_" stringByAppendingString:v22];
        v24 = [CKRecordID alloc];
        v25 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
        v26 = [v24 initWithRecordName:v23 zoneID:v25];

        v21 = [[CKRecord alloc] initWithRecordType:@"TabGroupTabParticipantStatus" recordID:v26];
        v27 = [CKReference alloc];
        v28 = [v12 record];
        v29 = [v27 initWithRecord:v28 action:0];
        [v21 setObject:v29 forKeyedSubscript:@"TabGroupTab"];

        [v12 setAuxiliaryRecord:v21 forKey:@"ReadStatus"];
      }

      v22 = [v11 lastReadGeneration];
      [v21 safari_setGeneration:v22 forKey:@"ReadStatus"];
LABEL_12:

      goto LABEL_13;
    }
  }

  v21 = 0;
LABEL_13:

LABEL_14:

  return v21;
}

- (void)_updateBookmark:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v12;
  v15 = v13;
  v16 = [v14 copy];
  v17 = [v14 safari_recordName];
  [v10 setServerID:v17];

  v62 = v15;
  v18 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"MinimumAPIVersion" ofType:objc_opt_class() fromRecord:v16 withConfiguration:v15];
  v19 = +[NSNull null];

  if (v18 == v19)
  {
    v20 = &off_10013C578;
    goto LABEL_5;
  }

  v20 = v18;
  if (v18)
  {
LABEL_5:
    [v10 setMinimumSyncAPIVersion:v20];
  }

  v21 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Deleted" ofType:objc_opt_class() fromRecord:v16 withConfiguration:v15];
  v22 = +[NSNull null];

  if (v21 == v22)
  {
    v23 = &off_10013C518;
    goto LABEL_10;
  }

  v23 = v21;
  if (v21)
  {
LABEL_10:
    [v10 setSyncState:v23];
  }

  v24 = [v11 configuration];
  v25 = [v24 collectionType];

  if ([v10 isFolder])
  {
    v26 = v11;
    v27 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Title" ofType:objc_opt_class() fromRecord:v16 withConfiguration:v15];
    v28 = +[NSNull null];

    if (v27 == v28)
    {
      v29 = &stru_100137BA8;
    }

    else
    {
      v29 = v27;
      if (!v27)
      {
LABEL_20:

        if ([v10 subtype] == 2)
        {
          v30 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"SymbolImageName" ofType:objc_opt_class() fromRecord:v16 withConfiguration:v15];
          v31 = +[NSNull null];

          if (v30 == v31)
          {
            v32 = v10;
            v33 = 0;
          }

          else
          {
            if (!v30)
            {
              goto LABEL_32;
            }

            v32 = v10;
            v33 = v30;
          }

          [v32 setSymbolImageName:v33];
LABEL_32:

          v38 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"CustomFavoritesFolderServerID" ofType:objc_opt_class() fromRecord:v16 withConfiguration:v15];
          v39 = +[NSNull null];

          if (v38 == v39)
          {
            v40 = v10;
            v41 = 0;
          }

          else
          {
            if (!v38)
            {
LABEL_37:

              v42 = +[NSUserDefaults safari_browserDefaults];
              v43 = [v42 safari_BOOLForKey:@"WBSEnableSafariProfileStartPageSyncing" defaultValue:1];

              if (!v43)
              {
                goto LABEL_51;
              }

              v44 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"CustomStartPageSectionsData" ofType:objc_opt_class() fromRecord:v16 withConfiguration:v15];
              v45 = +[NSNull null];

              if (v44 == v45)
              {
                v46 = v10;
                v47 = 0;
                goto LABEL_49;
              }

              if (v44)
              {
                v46 = v10;
                v47 = v44;
LABEL_49:
                [v46 setStartPageSectionsDataRepresentation:v47];
              }

LABEL_50:

              goto LABEL_51;
            }

            v40 = v10;
            v41 = v38;
          }

          [v40 setCustomFavoritesFolderServerID:v41];
          goto LABEL_37;
        }

        if ([v10 subtype] != 3 && objc_msgSend(v10, "subtype") != 4)
        {
LABEL_51:
          if (v25)
          {
            v11 = v26;
            if (v25 == 1)
            {
              [(CloudTabGroupSyncCoordinator *)self _updateTabCollectionFolder:v10 inCollection:v26 withRecord:v16 configuration:v15];
            }
          }

          else
          {
            v11 = v26;
            [(CloudTabGroupSyncCoordinator *)self _updateBookmarkCollectionFolder:v10 inCollection:v26 withRecord:v16 configuration:v15];
          }

          goto LABEL_55;
        }

        v34 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"CreationDeviceIdentifier" ofType:objc_opt_class() fromRecord:v14 withConfiguration:v15];
        v35 = +[NSNull null];

        if (v34 == v35)
        {
          v36 = v10;
          v37 = 0;
        }

        else
        {
          if (!v34)
          {
            goto LABEL_43;
          }

          v36 = v10;
          v37 = v34;
        }

        [v36 setCreationDeviceIdentifier:v37];
LABEL_43:

        v44 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DeviceTypeIdentifier" ofType:objc_opt_class() fromRecord:v14 withConfiguration:v15];
        v48 = +[NSNull null];

        if (v44 == v48)
        {
          v49 = v10;
          v50 = 0;
        }

        else
        {
          if (!v44)
          {
            goto LABEL_50;
          }

          v49 = v10;
          v50 = v44;
        }

        [v49 setDeviceTypeIdentifier:v50];
        goto LABEL_50;
      }
    }

    [v10 setTitle:v29];
    goto LABEL_20;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      [(CloudTabGroupSyncCoordinator *)self _updateTabCollectionBookmark:v10 inCollection:v11 withRecord:v16 configuration:v15];
    }
  }

  else
  {
    [(CloudTabGroupSyncCoordinator *)self _updateBookmarkCollectionBookmark:v10 inCollection:v11 withRecord:v16 configuration:v15];
  }

LABEL_55:
  [v10 clearModifiedAttributes];
  v60 = v14;
  v61 = v11;
  if ([v14 safari_isInPrivateDatabase])
  {
    v51 = 0;
  }

  else
  {
    v51 = [v15 primaryCKRecordGenerationKeysToClear];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v52 = [v10 fields];
  v53 = [v52 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v64;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v64 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v63 + 1) + 8 * i);
        v58 = [v10 generationKeyForField:v57];
        if (v58 && ([v51 containsObject:v58] & 1) == 0)
        {
          v59 = [v16 safari_generationForKey:v58];
          [v57 setGeneration:v59];
        }
      }

      v54 = [v52 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v54);
  }
}

- (void)_updateTabCollectionFolder:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (![v17 subtype] && objc_msgSend(v11, "safari_isInPrivateDatabase"))
  {
    v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"LastSelectedTab" ofType:objc_opt_class() fromRecord:v11 withConfiguration:v12];
    v14 = +[NSNull null];

    v15 = 0;
    if (v13 != v14 && v13)
    {
      v15 = v13;
    }

    v16 = [v10 bookmarkIDForServerID:v15 excludeDeletedBookmarks:1];
    if (v16 == 0x7FFFFFFF)
    {
      [v11 safari_setGeneration:0 forKey:@"LastSelectedTab"];
    }

    else
    {
      [v17 setLastSelectedChildID:v16];
    }
  }
}

- (void)_updateBookmarkCollectionFolder:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6
{
  v24 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v24 isSelectedFavoritesFolder];
  v14 = [v13 BOOLValue];

  v15 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"IsSelectedFavoritesFolder" ofType:objc_opt_class() fromRecord:v11 withConfiguration:v12];
  v16 = +[NSNull null];

  if (v15 == v16)
  {
    v17 = &__kCFBooleanFalse;
    goto LABEL_5;
  }

  v17 = v15;
  if (v15)
  {
LABEL_5:
    [v24 setSelectedFavoritesFolder:v17];
  }

  v18 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DateAdded" ofType:objc_opt_class() fromRecord:v11 withConfiguration:v12];
  v19 = +[NSNull null];

  if (v18 == v19)
  {
    v20 = v24;
    v21 = 0;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_11;
    }

    v20 = v24;
    v21 = v18;
  }

  [v20 setDateAdded:v21];
LABEL_11:

  if ([v24 isInserted])
  {
    v22 = [v24 identifier];
    v23 = [v24 isSelectedFavoritesFolder];
    [v10 updateSelectedFavoritesFolderWithBookmarkID:v22 wasFavoritesFolder:v14 isFavoritesFolder:{objc_msgSend(v23, "BOOLValue")}];
  }
}

- (void)_updateTabCollectionBookmark:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DateLastViewed" ofType:objc_opt_class() fromRecord:v10 withConfiguration:v11];
  v13 = &CPSharedResourcesDirectory_ptr;
  v14 = +[NSNull null];

  if (v12 == v14)
  {
    v15 = v9;
    v16 = 0;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_6;
    }

    v15 = v9;
    v16 = v12;
  }

  [v15 setTabDateLastViewed:v16];
LABEL_6:

  v17 = [v9 tabDateLastViewed];

  if (!v17)
  {
    v18 = [v10 modificationDate];
    [v9 setTabDateLastViewed:v18];
  }

  if ([v9 subtype])
  {
    v19 = &__kCFBooleanFalse;
  }

  else
  {
    v20 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"IsPinned" ofType:objc_opt_class() fromRecord:v10 withConfiguration:v11];
    v21 = +[NSNull null];

    if (v20 == v21)
    {
      v19 = 0;
    }

    else if (v20)
    {
      v19 = v20;
    }

    else
    {
      v19 = &__kCFBooleanFalse;
    }
  }

  v22 = objc_alloc_init(WBSScopeExitHandler);
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_1000CAA8C;
  v42 = &unk_1001314F8;
  v23 = v9;
  v43 = v23;
  v24 = v19;
  v44 = v24;
  [v22 setHandler:&v39];
  if (![v24 BOOLValue] || (objc_msgSend(v23, "isInserted") & 1) == 0)
  {
    v25 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Title" ofType:objc_opt_class() fromRecord:v10 withConfiguration:v11];
    if (v25)
    {
      v26 = +[NSNull null];
      v27 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        v28 = [v23 title];
        v29 = [v28 isEqualToString:v25];

        v13 = &CPSharedResourcesDirectory_ptr;
        if ((v29 & 1) == 0)
        {
          [v23 setExtraAttributesValue:0 forKey:WBLocalTitleKey];
        }
      }
    }

    v30 = v25;
    v31 = v13;
    v32 = [v13[433] null];

    if (v30 == v32 || v25)
    {
      if (v30 == v32)
      {
        v33 = &stru_100137BA8;
      }

      else
      {
        v33 = v30;
      }

      [v23 setTitle:v33];
    }

    v34 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"URL" ofType:objc_opt_class() fromRecord:v10 withConfiguration:v11];
    v35 = [v31[433] null];

    if (v34 == v35)
    {
      [v23 setAddress:&stru_100137BA8];
    }

    else if (v34)
    {
      v36 = [v34 absoluteString];
      v37 = [v23 address];
      v38 = [v36 isEqual:v37];

      if ((v38 & 1) == 0)
      {
        [v23 setExtraAttributesValue:0 forKey:WBLocalURLKey];
      }

      [v23 setAddress:v36];
    }
  }
}

- (void)_updateBookmarkCollectionBookmark:(id)a3 inCollection:(id)a4 withRecord:(id)a5 configuration:(id)a6
{
  v33 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Title" ofType:objc_opt_class() fromRecord:v9 withConfiguration:v10];
  v12 = +[NSNull null];

  if (v11 == v12)
  {
    v13 = &stru_100137BA8;
    goto LABEL_5;
  }

  v13 = v11;
  if (v11)
  {
LABEL_5:
    [v33 setTitle:v13];
  }

  v14 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"URL" ofType:objc_opt_class() fromRecord:v9 withConfiguration:v10];
  v15 = +[NSNull null];

  if (v14 == v15)
  {
    [v33 setAddress:&stru_100137BA8];
  }

  else
  {
    v16 = v33;
    if (!v14)
    {
      goto LABEL_11;
    }

    v17 = [v14 absoluteString];
    [v33 setAddress:v17];
  }

  v16 = v33;
LABEL_11:
  if (![v16 isReadingListItem])
  {
    goto LABEL_33;
  }

  v18 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DateAdded" ofType:objc_opt_class() fromRecord:v9 withConfiguration:v10];
  v19 = +[NSNull null];

  if (v18 == v19)
  {
    v20 = v33;
    v21 = 0;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_17;
    }

    v20 = v33;
    v21 = v18;
  }

  [v20 setDateAdded:v21];
LABEL_17:

  v22 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DateLastViewed" ofType:objc_opt_class() fromRecord:v9 withConfiguration:v10];
  v23 = +[NSNull null];

  if (v22 == v23)
  {
    v24 = v33;
    v25 = 0;
  }

  else
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    v24 = v33;
    v25 = v22;
  }

  [v24 setReadingListDateLastViewed:v25];
LABEL_22:

  v26 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"PreviewText" ofType:objc_opt_class() fromRecord:v9 withConfiguration:v10];
  v27 = +[NSNull null];

  if (v26 == v27)
  {
    v28 = &stru_100137BA8;
    goto LABEL_26;
  }

  v28 = v26;
  if (v26)
  {
LABEL_26:
    [v33 setPreviewText:v28];
  }

  v29 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"ImageURL" ofType:objc_opt_class() fromRecord:v9 withConfiguration:v10];
  v30 = +[NSNull null];

  if (v29 == v30)
  {
    v31 = v33;
    v32 = 0;
    goto LABEL_31;
  }

  if (v29)
  {
    v31 = v33;
    v32 = v29;
LABEL_31:
    [v31 setReadingListIconURL:v32];
  }

LABEL_33:
}

- (id)_mergedRecordWithLocalRecord:(id)a3 remoteRecord:(id)a4 saveError:(int64_t)a5 successfulMerge:(BOOL *)a6 collection:(id)a7 operationGroup:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  *a6 = 1;
  v18 = [v14 recordID];
  if (a5 == 2)
  {
    v23 = [v14 safari_recordName];
    v24 = [v23 hasPrefix:WBTabGroupTopScopedBookmarkListServerIDPrefix];

    if (v24)
    {
      v25 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v18 ckShortDescription];
        v27 = [v17 safari_logDescription];
        v49 = 138543618;
        v50 = v26;
        v51 = 2114;
        v52 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Record %{public}@ caused a an Invalid Argument and needs to be replaced on the server, %{public}@", &v49, 0x16u);
      }
    }

    else
    {
      v35 = [v14 safari_recordName];
      v36 = [v35 isEqualToString:WBSDefaultProfileIdentifier];

      if (!v36)
      {
        v43 = 0;
        *a6 = 0;
        goto LABEL_33;
      }

      v37 = [v14 recordType];
      v38 = [v37 isEqualToString:@"Profile"];

      v39 = [(CloudTabGroupSyncCoordinator *)self _log];
      v40 = v39;
      if (!v38)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v44 = [v18 ckShortDescription];
          v49 = 138543362;
          v50 = v44;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Record %{public}@ caused an Invalid Argument CKError that required resetting its sync data.", &v49, 0xCu);
        }

        v45 = [v14 safari_recordName];
        [v16 updateSyncDataForBookmarkWithRecordName:v45 excludeDeletedBookmarks:0 usingBlock:&stru_100136E30];

        recordIDsToRefresh = self->_recordIDsToRefresh;
        v47 = [v14 recordID];
        [(NSMutableSet *)recordIDsToRefresh addObject:v47];

        goto LABEL_32;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v18 ckShortDescription];
        v42 = [v17 safari_logDescription];
        v49 = 138543618;
        v50 = v41;
        v51 = 2114;
        v52 = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Record %{public}@ has the wrong type and needs to be replaced on the server, %{public}@", &v49, 0x16u);
      }
    }

    v28 = v14;
    goto LABEL_25;
  }

  if (a5 != 1)
  {
    v29 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v18 ckShortDescription];
      v31 = [v17 safari_logDescription];
      v49 = 138543618;
      v50 = v30;
      v51 = 2114;
      v52 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Record %{public}@ was changed remotely with %{public}@", &v49, 0x16u);
    }

    if ([(NSMutableSet *)self->_sourceRecordIDsForRecordsMovedBetweenZones containsObject:v18])
    {
      v32 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v18 ckShortDescription];
        v34 = [v17 safari_logDescription];
        v49 = 138543618;
        v50 = v33;
        v51 = 2114;
        v52 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Record with ID %{public}@ locally moved to a different zone was modified by another device, don't attempt to delete it anymore with %{public}@", &v49, 0x16u);
      }

      [(NSMutableSet *)self->_sourceRecordIDsForRecordsMovedBetweenZones removeObject:v18];
      goto LABEL_32;
    }

    if (!v15)
    {
      v19 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      v20 = [v18 ckShortDescription];
      v21 = [v17 safari_logDescription];
      v49 = 138543618;
      v50 = v20;
      v51 = 2114;
      v52 = v21;
      v22 = "No remote record detected for local record %{public}@, skipping merge with %{public}@";
      goto LABEL_5;
    }

    v28 = [(CloudTabGroupSyncCoordinator *)self _didFetchRecord:v15 inCollection:v16 operationGroup:v17 shouldGenerateUpdatedRecord:1];
LABEL_25:
    v43 = v28;
    goto LABEL_33;
  }

  v19 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v18 ckShortDescription];
    v21 = [v17 safari_logDescription];
    v49 = 138543618;
    v50 = v20;
    v51 = 2114;
    v52 = v21;
    v22 = "Record %{public}@ was deleted remotely with %{public}@";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v22, &v49, 0x16u);
  }

LABEL_6:

LABEL_32:
  v43 = 0;
LABEL_33:

  return v43;
}

- (void)_removeBookmarkWithServerID:(id)a3 inCollection:(id)a4
{
  v6 = a4;
  v7 = [v6 bookmarkWithServerID:a3 excludeDeletedBookmarks:0];
  if (v7)
  {
    if ([v6 bookmarkIdentifierOfAncestorWithSubtype:3 forBookmark:v7] == 0x7FFFFFFF)
    {
      auxiliaryRecordIDsToDelete = self->_auxiliaryRecordIDsToDelete;
      v9 = [v6 syncDataForBookmark:v7];
      v10 = [v9 auxiliaryRecordIDs];
      [(NSMutableSet *)auxiliaryRecordIDsToDelete addObjectsFromArray:v10];

      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000CB5F0;
      v16 = &unk_100136BB0;
      v17 = self;
      v11 = v6;
      v18 = v11;
      [v11 enumerateDescendantsOfBookmark:v7 usingBlock:&v13];
      if ([v7 isReadingListItem])
      {
        v12 = [v7 UUID];
        [v11 clearReadingListArchiveWithUUID:v12];
      }

      else if ([v7 isReadingListFolder])
      {
        [v11 clearAllReadingListArchives];
      }

      [v11 deleteBookmark:v7 leaveTombstone:0];
    }

    else
    {
      [v6 updateSyncDataForBookmark:v7 usingBlock:&stru_100136E50];
    }
  }
}

- (id)_createBookmarkWithConfiguration:(id)a3 record:(id)a4 inCollection:(id)a5 operationGroup:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v13 safari_logDescription];
    *buf = 138543362;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Creating new bookmark with %{public}@", buf, 0xCu);
  }

  v16 = [v12 configuration];
  v17 = [v16 collectionType];

  v18 = [v10 itemSubtype];
  if (![v10 itemType])
  {
    if (v18 == 2)
    {
      v41 = [WebBookmark alloc];
      v25 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
      v26 = [v41 initWithTitle:&stru_100137BA8 address:&stru_100137BA8 parentID:0 subtype:1 deviceIdentifier:v25 collectionType:v17];
    }

    else
    {
      if (v18 == 1)
      {
        v23 = [[WebBookmark alloc] initReadingListBookmarkWithTitle:&stru_100137BA8 address:&stru_100137BA8 previewText:&stru_100137BA8];
        goto LABEL_32;
      }

      if (v18)
      {
        v23 = 0;
        goto LABEL_32;
      }

      v24 = [WebBookmark alloc];
      v25 = [v12 configuration];
      v26 = [v24 initWithTitle:&stru_100137BA8 address:&stru_100137BA8 collectionType:{objc_msgSend(v25, "collectionType")}];
    }

    v23 = v26;

    goto LABEL_32;
  }

  if ([v10 itemSubtype] == 4)
  {
    v19 = [WebBookmark alloc];
    v20 = BookmarksRootID;
    [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
    v22 = v21 = v11;
    v23 = [v19 initFolderWithParentID:v20 subtype:1 deviceIdentifier:v22 collectionType:v17];

    v11 = v21;
  }

  else if ([v10 itemSubtype] == 5)
  {
    v46 = v11;
    v27 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"CreationDeviceIdentifier" ofType:objc_opt_class() fromRecord:v11 withConfiguration:v10];
    v28 = +[NSNull null];

    v29 = 0;
    v45 = v13;
    if (v27 != v28 && v27)
    {
      v29 = v27;
    }

    v30 = [(WBCollectionConfiguration *)self->_collectionConfiguration device];
    v31 = [v30 userUniqueDeviceIdentifier];
    if (WBSIsEqual())
    {
      v32 = 3;
    }

    else
    {
      v32 = 4;
    }

    v33 = [WebBookmark alloc];
    v34 = BookmarksRootID;
    v35 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
    v23 = [v33 initFolderWithParentID:v34 subtype:v32 deviceIdentifier:v35 collectionType:v17];

    v13 = v45;
    v11 = v46;
  }

  else
  {
    v36 = [v10 itemSubtype];
    v37 = [WebBookmark alloc];
    v38 = v37;
    v39 = BookmarksRootID;
    if (v36 == 6)
    {
      v40 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
      v23 = [v38 initFolderWithParentID:v39 subtype:2 deviceIdentifier:v40 collectionType:v17];
    }

    else
    {
      v23 = [v37 initFolderWithParentID:BookmarksRootID collectionType:v17];
    }
  }

  if (v18 == 3)
  {
    v42 = &BookmarksReadingListSpecialID;
  }

  else if (v18 == 2)
  {
    v42 = &BookmarksMenuSpecialID;
  }

  else
  {
    if (v18 != 1)
    {
      goto LABEL_32;
    }

    v42 = &BookmarksBarSpecialID;
  }

  [v23 markSpecial:{*v42, v45}];
LABEL_32:
  v43 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  [v23 setDeviceIdentifier:v43];

  return v23;
}

- (void)_resetSyncDataInCollection:(id)a3 operationGroup:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 safari_logDescription];
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=== Resetting sync data with %{public}@", &v10, 0xCu);
  }

  [v7 clearAllSyncData];
}

- (void)_handleICloudKeychainResetInCollection:(id)a3 operationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 safari_logDescription];
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling an iCloud Keychain reset with %{public}@", buf, 0xCu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CBD50;
  v16[3] = &unk_100135C18;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v19 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [(CloudTabGroupSyncCoordinator *)self _deleteTabGroupZonesInOperationGroup:v15 completionHandler:v16];
}

- (void)_deleteTabGroupZonesInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000014FC;
  v21[4] = sub_1000ABC1C;
  v22 = 0;
  dispatch_group_enter(v8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000CC00C;
  v18[3] = &unk_100136E78;
  v20 = v21;
  v9 = v8;
  v19 = v9;
  [(CloudTabGroupSyncCoordinator *)self _deleteSharedTabGroupZonesInOperationGroup:v6 completionHandler:v18];
  dispatch_group_enter(v9);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CC074;
  v15[3] = &unk_100136E78;
  v17 = v21;
  v10 = v9;
  v16 = v10;
  [(CloudTabGroupSyncCoordinator *)self _deletePrivateTabGroupZonesInOperationGroup:v6 completionHandler:v15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CC0DC;
  v12[3] = &unk_100136EA0;
  v13 = v7;
  v14 = v21;
  v11 = v7;
  dispatch_group_notify(v10, &_dispatch_main_q, v12);

  _Block_object_dispose(v21, 8);
}

- (void)_deletePrivateTabGroupZonesInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 safari_logDescription];
    *buf = 138543362;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will begin deleting private tab groups with %{public}@", buf, 0xCu);
  }

  bookmarkStore = self->_bookmarkStore;
  v11 = [(CloudBookmarkStore *)bookmarkStore container];
  v12 = [v11 privateCloudDatabase];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CC298;
  v15[3] = &unk_100136F08;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [(CloudBookmarkStore *)bookmarkStore fetchChangesSinceServerChangeToken:0 inDatabase:v12 operationGroup:0 completionHandler:v15];
}

- (void)_deleteSharedTabGroupZonesInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 safari_logDescription];
    *buf = 138543362;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will begin leaving shared tab groups with %{public}@", buf, 0xCu);
  }

  bookmarkStore = self->_bookmarkStore;
  v11 = [(CloudBookmarkStore *)bookmarkStore container];
  v12 = [v11 sharedCloudDatabase];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CC6D4;
  v15[3] = &unk_100136F08;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [(CloudBookmarkStore *)bookmarkStore fetchChangesSinceServerChangeToken:0 inDatabase:v12 operationGroup:0 completionHandler:v15];
}

- (void)_notifyDelegateAboutIgnoredRecordZoneIDsIfNeeded:(id)a3 operationGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 valueForKey:@"ckShortDescription"];
      v10 = [v7 safari_logDescription];
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will notify delegate that changes for some record zones were ignored with IDs: %{public}@ with %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v12 = WeakRetained;
      v13 = v6;
      WBSDispatchAsyncToMainQueueWithAutoreleasePool();
    }
  }
}

- (void)_processSavedRecord:(id)a3 forBookmark:(id)a4 inCollection:(id)a5 operationGroup:(id)a6
{
  v61 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(CloudTabGroupSyncCoordinator *)self _configurationForRecord:v61];
  if (v13)
  {
    bookmarkStore = self->_bookmarkStore;
    v15 = [v61 recordID];
    v16 = [v15 zoneID];
    v17 = [(CloudBookmarkStore *)bookmarkStore rootRecordNameForSecondaryRecordZoneID:v16];

    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = [v61 recordType];
    v19 = [v18 isEqual:@"TabGroup"];

    if (v19)
    {
      if ([v10 attributesMarkedAsModified:1])
      {
        v58 = v17;
        v20 = [v10 fieldForAttribute:1];
        v21 = [v20 generation];
        v22 = [v10 generationKeyForField:v20];
        v23 = [v61 safari_generationForKey:v22];
        v24 = [v21 compare:v23];

        if (!v24)
        {
          [(CloudTabGroupSyncCoordinator *)self _postCollaborationRenameEventWithBookmark:v10 inCollection:v11 operationGroup:v12];
        }
      }

      else
      {
        if (![v10 attributesMarkedAsModified:0x2000])
        {
          if ([v61 safari_state] == 1)
          {
            [v10 fieldForAttribute:0x4000];
            v43 = v42 = v17;
            v44 = [v43 generation];
            v45 = [v61 safari_generationForKey:@"Deleted"];
            v46 = [v44 compare:v45];

            v17 = v42;
            if (!v46)
            {
              [(CloudTabGroupSyncCoordinator *)self _postCollaborationDeleteEventWithBookmark:v10 inCollection:v11 operationGroup:v12];
            }
          }

          goto LABEL_16;
        }

        v58 = v17;
        v20 = [v10 fieldForAttribute:0x2000];
        v29 = [v20 generation];
        v30 = [v10 generationKeyForField:v20];
        v31 = [v61 safari_generationForKey:v30];
        v32 = [v29 compare:v31];

        if (!v32)
        {
          [(CloudTabGroupSyncCoordinator *)self _postCollaborationChangeEventWithBookmark:v10 inCollection:v11 operationGroup:v12];
        }
      }

      v17 = v58;
LABEL_16:

      goto LABEL_17;
    }

    v25 = [v61 recordType];
    if ([v25 isEqual:@"TabGroupScopedBookmarkList"])
    {
      goto LABEL_10;
    }

    v26 = [v61 recordType];
    if ([v26 isEqual:@"TabGroupScopedBookmarkLeaf"])
    {

LABEL_10:
LABEL_11:
      [v11 bookmarkWithServerID:v17 excludeDeletedBookmarks:0];
      v28 = v27 = v17;
      [(CloudTabGroupSyncCoordinator *)self _postCollaborationChangeEventWithBookmark:v28 inCollection:v11 operationGroup:v12];

      v17 = v27;
      goto LABEL_16;
    }

    v33 = v17;
    v34 = [v10 subtype];

    v35 = v34 == 1;
    v17 = v33;
    if (v35)
    {
      goto LABEL_11;
    }

    v36 = [v61 recordType];
    v37 = [v36 isEqual:@"TabGroupTab"];

    v17 = v33;
    if (!v37)
    {
      goto LABEL_16;
    }

    if ([v10 attributesMarkedAsModified:2])
    {
      v38 = [v10 fieldForAttribute:2];
      v39 = [v38 generation];
      v40 = [v10 generationKeyForField:v38];
      v41 = [v61 safari_generationForKey:v40];
      v59 = [v39 compare:v41];
    }

    else
    {
      v59 = -1;
    }

    if ([v61 safari_state] == 1)
    {
      v47 = [v61 safari_recordName];
      v48 = [v10 serverID];
      v49 = [v47 isEqualToString:v48];

      if (!v49)
      {
        v53 = [v61 safari_generationForKey:@"Deleted"];
        v54 = [v53 deviceIdentifier];
        v55 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
        v56 = [v54 isEqualToString:v55];

        v17 = v33;
        if (v56)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v50 = [v10 fieldForAttribute:0x4000];
      v51 = [v50 generation];
      v52 = [v61 safari_generationForKey:@"Deleted"];
      v60 = [v51 compare:v52];
    }

    v17 = v33;
LABEL_32:
    if (v60)
    {
      goto LABEL_16;
    }

LABEL_35:
    v57 = [v11 bookmarkWithServerID:v17 excludeDeletedBookmarks:{0, v60}];
    [(CloudTabGroupSyncCoordinator *)self _postCollaborationChangeEventWithBookmark:v57 inCollection:v11 operationGroup:v12];

    v17 = v33;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)_postCollaborationChangeEventWithBookmark:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CD26C;
  v5[3] = &unk_100136F98;
  v5[4] = self;
  [(CloudTabGroupSyncCoordinator *)self _postHighlightWithBookmark:a3 collection:a4 operationGroup:a5 completionHandler:v5];
}

- (void)_postCollaborationRenameEventWithBookmark:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CD358;
  v5[3] = &unk_100136F98;
  v5[4] = self;
  [(CloudTabGroupSyncCoordinator *)self _postHighlightWithBookmark:a3 collection:a4 operationGroup:a5 completionHandler:v5];
}

- (void)_postCollaborationDeleteEventWithBookmark:(id)a3 inCollection:(id)a4 operationGroup:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CD444;
  v5[3] = &unk_100136F98;
  v5[4] = self;
  [(CloudTabGroupSyncCoordinator *)self _postHighlightWithBookmark:a3 collection:a4 operationGroup:a5 completionHandler:v5];
}

- (void)_postHighlightWithBookmark:(id)a3 collection:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [a4 syncDataForBookmark:a3];
  v13 = [v12 shareRecord];
  v14 = [v13 copy];

  v15 = [v14 URL];
  highlightCenter = self->_highlightCenter;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000CD600;
  v20[3] = &unk_100136FC0;
  v20[4] = self;
  v21 = v14;
  v22 = v10;
  v23 = v11;
  v17 = v11;
  v18 = v10;
  v19 = v14;
  [(SWHighlightCenter *)highlightCenter getCollaborationHighlightForURL:v15 completionHandler:v20];
}

- (id)_reportSyncOperationFinishedWithError:(id)a3 result:(int64_t)a4 inOperationGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    if (([v8 safari_matchesErrorDomain:CKErrorDomain] & 1) == 0)
    {
      a4 = &__NSArray0__struct;
      goto LABEL_24;
    }

    v10 = [v8 userInfo];
    v11 = +[NSMutableDictionary dictionary];
    v12 = [v9 name];
    [v11 setObject:v12 forKeyedSubscript:@"operationGroupName"];

    v13 = [NSNumber numberWithInteger:a4];
    [v11 setObject:v13 forKeyedSubscript:@"syncResult"];

    [v11 setObject:&off_10013C578 forKeyedSubscript:@"periodicCount"];
    v14 = [v10 safari_numberForKey:CKErrorRetryAfterKey];
    [v11 setObject:v14 forKeyedSubscript:CKErrorRetryAfterKey];

    v15 = CKUnderlyingFunctionErrorKey;
    v16 = [v10 objectForKeyedSubscript:CKUnderlyingFunctionErrorKey];

    if (v16)
    {
      v17 = [v10 objectForKeyedSubscript:v15];
      a4 = [(CloudTabGroupSyncCoordinator *)self _reportSyncOperationFinishedWithError:v17 result:a4 inOperationGroup:v9];
LABEL_22:

      goto LABEL_23;
    }

    v18 = [v8 userInfo];
    v17 = [v18 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v19 = [v17 domain];
    v20 = [v19 isEqualToString:CKUnderlyingErrorDomain];

    if (v20)
    {
      v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 code]);
      [v11 setObject:v21 forKeyedSubscript:@"underlyingErrorCode"];
    }

    v22 = [v8 code];
    v23 = stringForCKErrorCode();
    [v11 setObject:v23 forKeyedSubscript:@"ckErrorName"];

    v24 = [NSNumber numberWithInteger:v22];
    [v11 setObject:v24 forKeyedSubscript:@"ckErrorCode"];

    v25 = [v10 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    [v11 setObject:v25 forKeyedSubscript:@"ckErrorDescription"];

    v26 = +[NSMutableArray array];
    if (v22 == 26)
    {
      v34 = [v10 safari_numberForKey:CKErrorUserDidResetEncryptedDataKey];
      [v11 setObject:v34 forKeyedSubscript:@"ckErrorUserDidResetEncryptedDataKey"];
    }

    else if (v22 == 2)
    {
      v37 = v17;
      v38 = v11;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = v10;
      v27 = [v10 safari_dictionaryForKey:CKPartialErrorsByItemIDKey];
      v28 = [v27 allValues];

      v29 = [v28 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v41;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v41 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [(CloudTabGroupSyncCoordinator *)self _reportSyncOperationFinishedWithError:*(*(&v40 + 1) + 8 * i) result:a4 inOperationGroup:v9];
            [v26 addObjectsFromArray:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v30);
      }

      a4 = v26;
      v11 = v38;
      v10 = v39;
      v17 = v37;
      goto LABEL_21;
    }

    v35 = +[WBSAnalyticsLogger sharedLogger];
    [v35 reportTabGroupSyncFinishedWithInfo:v11];

    v44 = v11;
    a4 = [NSArray arrayWithObjects:&v44 count:1];
LABEL_21:

    goto LABEL_22;
  }

  v10 = +[NSUserDefaults safari_browserDefaults];
  [v10 safari_incrementNumberForKey:WBSPeriodicSyncSuccessesCount];
LABEL_23:

LABEL_24:

  return a4;
}

- (id)deviceIdentifier
{
  v2 = [WebBookmarkCollection deviceIdentifierForCloudKitWithCollectionType:[(WBCollectionConfiguration *)self->_collectionConfiguration collectionType] generateIfNeeded:1];
  v3 = [v2 UUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)registerSyncObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (id)_log
{
  v3 = [(WBCollectionConfiguration *)self->_collectionConfiguration collectionType];
  if (v3 == 1)
  {
    v3 = [(CloudTabGroupSyncCoordinator *)self _tabGroupsLog];
  }

  else if (!v3)
  {
    v3 = [(CloudTabGroupSyncCoordinator *)self _bookmarksLog];
  }

  return v3;
}

- (CloudTabGroupSyncCoordinatorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CloudTabGroupSyncCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end