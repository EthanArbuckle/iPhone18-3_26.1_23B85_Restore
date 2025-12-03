@interface CloudTabGroupSyncCoordinator
- (BOOL)_canHandleRecordInZoneWithID:(id)d collection:(id)collection operationGroup:(id)group;
- (BOOL)_didSaveSettingRecord:(id)record forBookmark:(id)bookmark withCollection:(id)collection;
- (BOOL)_handleMinimumAPIVersionChangeForCKShareRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (BOOL)_handleMinimumAPIVersionChangeForTabGroupParticipantExtrasRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (BOOL)_isExpiredChangeTokenError:(id)error;
- (BOOL)_saveRecord:(id)record forBookmark:(id)bookmark inCollection:(id)collection;
- (BOOL)_setPositionDictionaryRepresentation:(id)representation inParentWithRecordID:(id)d forBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group;
- (BOOL)_shouldCreateLegacyRecordsForLastKnownMinimumSafariVersionsPerOSNames:(id)names;
- (BOOL)_shouldOverrideLocalBookmark:(id)bookmark localSyncData:(id)data withRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (BOOL)_shouldResetLastKnownMinimumVersionsCacheInCollection:(id)collection operationGroup:(id)group;
- (CloudTabGroupSyncCoordinator)initWithBookmarkStore:(id)store collectionConfiguration:(id)configuration accountStore:(id)accountStore;
- (CloudTabGroupSyncCoordinatorDataSource)dataSource;
- (CloudTabGroupSyncCoordinatorDelegate)delegate;
- (id)_auxiliaryRecordKeyForRecordType:(id)type;
- (id)_batchItemForDeleteChange:(id)change inCollection:(id)collection operationGroup:(id)group;
- (id)_configurationForBookmark:(id)bookmark;
- (id)_configurationForRecord:(id)record;
- (id)_createBookmarkWithConfiguration:(id)configuration record:(id)record inCollection:(id)collection operationGroup:(id)group;
- (id)_createCollectionWithConfiguration:(id)configuration;
- (id)_createSettingCKRecordFromFieldRecord:(id)record;
- (id)_didFetchBookmarkRecord:(id)record collection:(id)collection operationGroup:(id)group localBookmarkWasCreated:(BOOL *)created;
- (id)_fieldFromSettingsRecord:(id)record;
- (id)_filteredUpdatedRecordZoneIDs:(id)ds inCollection:(id)collection operationGroup:(id)group;
- (id)_handleUpdatedSettingRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (id)_handleUpdatedTabGroupParticipantExtrasRecord:(id)record inCollection:(id)collection shouldGenerateUpdatedRecord:(BOOL)updatedRecord operationGroup:(id)group;
- (id)_handleUpdatedTabGroupParticipantPositionRecord:(id)record inCollection:(id)collection shouldGenerateUpdatedRecord:(BOOL)updatedRecord operationGroup:(id)group;
- (id)_handleUpdatedTabParticipantStatusRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (id)_hashGeneratorForRecord:(id)record;
- (id)_knownKeysToSaveForRecord:(id)record withConfiguration:(id)configuration;
- (id)_log;
- (id)_makeRootRecordID;
- (id)_mergedRecordWithLocalRecord:(id)record remoteRecord:(id)remoteRecord saveError:(int64_t)error successfulMerge:(BOOL *)merge collection:(id)collection operationGroup:(id)group;
- (id)_metadataForRecordZoneID:(id)d inCollection:(id)collection operationGroup:(id)group;
- (id)_metadataForRecordZoneID:(id)d orRecordZoneName:(id)name inCollection:(id)collection operationGroup:(id)group;
- (id)_metadataForRecordZoneName:(id)name inCollection:(id)collection operationGroup:(id)group;
- (id)_migratedRecordsForBookmarkID:(int)d inCollection:(id)collection destinationRecordZoneID:(id)iD;
- (id)_migrationTombstoneRecordsForBookmarkID:(int)d inCollection:(id)collection destinationRecordZoneID:(id)iD operationGroup:(id)group;
- (id)_nextBatchItemAfterChangeToken:(int64_t)token inCollection:(id)collection operationGroup:(id)group;
- (id)_nextMigrationRecordBatchWithBookmarkIDQueue:(id)queue inCollection:(id)collection operationGroup:(id)group recordBuilderBlock:(id)block;
- (id)_profileRecordIDForProfileWithIdentifier:(id)identifier inCollection:(id)collection operationGroup:(id)group;
- (id)_readStatusRecordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration changeType:(int)type inCollection:(id)collection;
- (id)_recordForBookmark:(id)bookmark inCollection:(id)collection changeType:(int)type;
- (id)_recordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration changeType:(int)type inCollection:(id)collection;
- (id)_recordZoneIDForBookmark:(id)bookmark inCollection:(id)collection;
- (id)_reportSyncOperationFinishedWithError:(id)error result:(int64_t)result inOperationGroup:(id)group;
- (id)_serverIDForBookmarkCreateIfNeeded:(id)needed inCollection:(id)collection;
- (id)_settingsTransformerForKey:(id)key;
- (id)_stringForElapsedTimeSinceDate:(id)date;
- (id)_supportedSettingsRecordTypes;
- (id)_tabGroupParticipantExtrasRecordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration changeType:(int)type inCollection:(id)collection;
- (id)_tabGroupParticipantPositionRecordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration changeType:(int)type inCollection:(id)collection;
- (id)_tabGroupParticipantPositionRecordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration modifiedAttributes:(unint64_t)attributes attributes:(id)a7 inCollection:(id)collection;
- (id)_valueForKey:(id)key ofType:(Class)type fromRecord:(id)record withConfiguration:(id)configuration;
- (id)_valueForKey:(id)key ofType:(Class)type fromRecord:(id)record withTransformer:(id)transformer;
- (id)_valueForKey:(id)key ofTypes:(id)types fromRecord:(id)record withTransformer:(id)transformer;
- (id)deviceIdentifier;
- (int64_t)_syncResultForError:(id)error;
- (uint64_t)_bookmarksLog;
- (uint64_t)_tabGroupsLog;
- (unint64_t)_computeMinimumSyncAPIVersionForRecord:(id)record withBookmark:(id)bookmark inCollection:(id)collection;
- (void)_acceptShareForURL:(id)l invitationTokenData:(id)data inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_acceptTabGroupShareForShareMetadata:(id)metadata inProfileWithIdentifier:(id)identifier collection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_acceptTabGroupShareForShareMetadata:(id)metadata inProfileWithIdentifier:(id)identifier operationGroup:(id)group completionHandler:(id)handler;
- (void)_addAuxiliaryRecord:(id)record forUnknownRecordWithID:(id)d operationGroup:(id)group;
- (void)_attemptLocalMigrationInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_beginDeletingAuxiliaryRecordsInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_beginSharingTabGroupWithUUID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_beginSyncingWithOperationGroup:(id)group completionHandler:(id)handler;
- (void)_clearServerChangeTokensForRecordZoneIDsIfNeeded:(id)needed inCollection:(id)collection;
- (void)_clearUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:(id)group;
- (void)_continuePostSyncDownHousekeepingInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_createLegacyPlaceholderForSharedTabGroup:(id)group inCollection:(id)collection operationGroup:(id)operationGroup completionHandler:(id)handler;
- (void)_deleteNextBatchOfAuxiliaryRecordsInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_deletePresenceForParticipantID:(id)d inTabGroupWithRecordName:(id)name collection:(id)collection operationGroup:(id)group;
- (void)_deletePrivateRecordZoneIDs:(id)ds collection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_deletePrivateTabGroupZonesInOperationGroup:(id)group completionHandler:(id)handler;
- (void)_deleteRecordZoneWithIDs:(id)ds inCollection:(id)collection;
- (void)_deleteSharedTabGroupZonesInOperationGroup:(id)group completionHandler:(id)handler;
- (void)_deleteTabGroupZonesInOperationGroup:(id)group completionHandler:(id)handler;
- (void)_determineCourseOfActionFromLocalStateInOperationGroup:(id)group completionHandler:(id)handler;
- (void)_didCompleteSyncDownAfterExpiredChangeTokenErrorWithCollection:(id)collection operationGroup:(id)group;
- (void)_didFailToSyncWithError:(id)error inCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_didFinishOperationGroup:(id)group;
- (void)_didFinishSyncingWithResult:(int64_t)result error:(id)error inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_didLoadLastKnownMinimumIOSVersion:(id)version minimumMacOSVersion:(id)sVersion encounteredUnknownOS:(BOOL)s inOperationGroup:(id)group;
- (void)_didLoadLastKnownMinimumSafariVersionsPerOSNames:(id)names inOperationGroup:(id)group;
- (void)_didRetrieveHashGenerators:(id)generators;
- (void)_dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:(id)names inCollection:(id)collection;
- (void)_dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:(id)names inCollection:(id)collection;
- (void)_enqueueOperationGroup:(id)group;
- (void)_fetchChangedRecordZonesSinceServerChangeToken:(id)token inDatabase:(id)database collection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_fetchRecordZonesToRefreshInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_fetchRecordsToRefreshInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_handleDeletedRecordWithID:(id)d type:(id)type inCollection:(id)collection operationGroup:(id)group;
- (void)_handleDeletedRecordZoneIDs:(id)ds inCollection:(id)collection;
- (void)_handleDeletedSettingRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (void)_handleDeletedShareRecordWithID:(id)d inCollection:(id)collection operationGroup:(id)group;
- (void)_handleDeletedSyncRequirementRecordWithID:(id)d inCollection:(id)collection operationGroup:(id)group;
- (void)_handleDeletedTabGroupParticipantExtrasRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (void)_handleDeletedTabGroupParticipantPositionRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (void)_handleDeletedTabParticipantStatusRecord:(id)record inCollection:(id)collection;
- (void)_handleDeletedTabPresenceRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (void)_handleExpiredChangeTokenError:(id)error collection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_handleFailureToBecomeResponsibleForMigrationDueToConflictInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_handleICloudKeychainResetInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_handlePendingAuxiliaryRecordsIfNeededForMainRecordID:(id)d inCollection:(id)collection operationGroup:(id)group;
- (void)_handleUpdatedShareRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (void)_handleUpdatedSyncRequirementRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (void)_handleUpdatedTabPresenceRecord:(id)record inCollection:(id)collection operationGroup:(id)group;
- (void)_logCurrentOperationsForAbortedOperationGroup:(id)group;
- (void)_notifyDelegateAboutIgnoredRecordZoneIDsIfNeeded:(id)needed operationGroup:(id)group;
- (void)_performPostZoneMigrationSyncDownForRecordZoneID:(id)d shareRecord:(id)record inCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_performSyncDownAfterProcessingChangesInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_performSyncDownForRecordZoneIDs:(id)ds perRecordZoneConfigurations:(id)configurations inDatabase:(id)database collection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_performSyncDownInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_postCollaborationChangeEventWithBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group;
- (void)_postCollaborationDeleteEventWithBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group;
- (void)_postCollaborationRenameEventWithBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group;
- (void)_postHighlightWithBookmark:(id)bookmark collection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_prepareForSyncDownInOperationGroup:(id)group;
- (void)_prepareForSyncingWithOperationGroup:(id)group completionHandler:(id)handler;
- (void)_processSavedRecord:(id)record forBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group;
- (void)_removeBookmarkWithServerID:(id)d inCollection:(id)collection;
- (void)_removeUserSpecificKeysInTabGroupRecordIfNeeded:(id)needed forBookmark:(id)bookmark configuration:(id)configuration inCollection:(id)collection;
- (void)_resetSyncDataInCollection:(id)collection operationGroup:(id)group;
- (void)_runSyncingWithCollection:(id)collection inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveAssetAtURL:(id)l toURL:(id)rL operationGroup:(id)group completionHandler:(id)handler;
- (void)_saveAssetsForBookmarkIfPresent:(id)present onRecord:(id)record withConfiguration:(id)configuration inCollection:(id)collection operationGroup:(id)group;
- (void)_saveNextBatchInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_saveNextMigrationRecordBatchWithBookmarkIDQueue:(id)queue inCollection:(id)collection operationGroup:(id)group usingRecordBuilderBlock:(id)block completionHandler:(id)handler;
- (void)_saveNextMigrationRecordBatchWithBookmarkIDQueue:(id)queue inCollection:(id)collection operationGroup:(id)group usingRecordBuilderBlock:(id)block mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_savePrivateParticipantRecordsForAcceptedSharedTabGroup:(id)group inCollection:(id)collection operationGroup:(id)operationGroup completionHandler:(id)handler;
- (void)_saveRecordZoneServerChangeTokensInCollection:(id)collection operationGroup:(id)group ifSuccessful:(BOOL)successful;
- (void)_saveUpdatedRecords:(id)records deletedRecordIDs:(id)ds inDatabase:(id)database collection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_saveUpdatedRecords:(id)records deletedRecordIDs:(id)ds inDatabase:(id)database collection:(id)collection operationGroup:(id)group mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_scheduleMigrationRetryIfNeededInOperationGroup:(id)group completionHandler:(id)handler;
- (void)_setUpRecordZoneIDsToPendingServerChangeTokens;
- (void)_setUpSharingForTabGroup:(id)group inCollection:(id)collection operationGroup:(id)operationGroup completionHandler:(id)handler;
- (void)_setUpSharingInRecordZoneWithID:(id)d collection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_setUpTabGroupZoneForTabGroup:(id)group inCollection:(id)collection operationGroup:(id)operationGroup completionHandler:(id)handler;
- (void)_setUpUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:(id)group;
- (void)_tryToBecomeResponsibleForMigrationInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_tryToBecomeResponsibleForMigrationWithRetryManager:(id)manager inCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_tryToResumePendingRemoteMigrationFromMigrationInfo:(id)info inCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler;
- (void)_updateBookmark:(id)bookmark inCollection:(id)collection withRecord:(id)record configuration:(id)configuration;
- (void)_updateBookmarkCollectionBookmark:(id)bookmark inCollection:(id)collection withRecord:(id)record configuration:(id)configuration;
- (void)_updateBookmarkCollectionFolder:(id)folder inCollection:(id)collection withRecord:(id)record configuration:(id)configuration;
- (void)_updateDatabaseContainsCKShareRecordIfNeededInCollection:(id)collection;
- (void)_updateLastKnownMinimumVersionsIfNeededInCollection:(id)collection operationGroup:(id)group;
- (void)_updateTabCollectionBookmark:(id)bookmark inCollection:(id)collection withRecord:(id)record configuration:(id)configuration;
- (void)_updateTabCollectionFolder:(id)folder inCollection:(id)collection withRecord:(id)record configuration:(id)configuration;
- (void)_willBeginOperationGroup:(id)group;
- (void)acceptShareForURL:(id)l invitationTokenData:(id)data inOperationGroup:(id)group completionHandler:(id)handler;
- (void)acceptTabGroupShareForShareMetadata:(id)metadata inProfileWithIdentifier:(id)identifier operationGroup:(id)group completionHandler:(id)handler;
- (void)beginMigrationWithOperationGroup:(id)group completionHandler:(id)handler;
- (void)beginSharingTabGroupWithUUID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)beginSyncingWithOperationGroup:(id)group isLocalChange:(BOOL)change completionHandler:(id)handler;
- (void)registerSyncObserver:(id)observer;
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

- (CloudTabGroupSyncCoordinator)initWithBookmarkStore:(id)store collectionConfiguration:(id)configuration accountStore:(id)accountStore
{
  storeCopy = store;
  configurationCopy = configuration;
  accountStoreCopy = accountStore;
  v33.receiver = self;
  v33.super_class = CloudTabGroupSyncCoordinator;
  v12 = [(CloudTabGroupSyncCoordinator *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmarkStore, store);
    v14 = [configurationCopy copy];
    collectionConfiguration = v13->_collectionConfiguration;
    v13->_collectionConfiguration = v14;

    objc_storeStrong(&v13->_accountStore, accountStore);
    v16 = [NSString stringWithFormat:@"com.apple.SafariSyncService.%@.%p._internalQueue", objc_opt_class(), v13];
    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_get_global_queue(0, 0);
    v20 = dispatch_queue_create_with_target_V2(uTF8String, v18, v19);
    internalQueue = v13->_internalQueue;
    v13->_internalQueue = v20;

    v22 = [NSString stringWithFormat:@"com.apple.SafariSyncService.%@.%p._assetSavingQueue", objc_opt_class(), v13];
    uTF8String2 = [v22 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create_with_target_V2(uTF8String2, v24, v19);
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

- (id)_stringForElapsedTimeSinceDate:(id)date
{
  v3 = qword_100154060;
  dateCopy = date;
  if (v3 != -1)
  {
    sub_1000CDFFC();
  }

  v5 = qword_100154058;
  v6 = +[NSDate now];
  v7 = [v5 stringFromDate:dateCopy toDate:v6];

  return v7;
}

- (void)_enqueueOperationGroup:(id)group
{
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v22 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Enqueueing %{public}@", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_pendingOperationGroups count])
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableArray *)self->_pendingOperationGroups count];
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 134218242;
      v22 = v8;
      v23 = 2114;
      v24 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "There are %zu operation groups already in queue before %{public}@", buf, 0x16u);
    }

    pendingOperationGroups = self->_pendingOperationGroups;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000A70E0;
    v18 = &unk_100135B00;
    selfCopy = self;
    v20 = groupCopy;
    [(NSMutableArray *)pendingOperationGroups enumerateObjectsUsingBlock:&v15];
  }

  if (self->_currentOperationGroup)
  {
    _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log3, OS_LOG_TYPE_INFO))
    {
      safari_logDescription3 = [(CKOperationGroup *)self->_currentOperationGroup safari_logDescription];
      v13 = [(CloudTabGroupSyncCoordinator *)self _stringForElapsedTimeSinceDate:self->_currentOperationBeginTime];
      safari_logDescription4 = [groupCopy safari_logDescription];
      *buf = 138543874;
      v22 = safari_logDescription3;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = safari_logDescription4;
      _os_log_impl(&_mh_execute_header, _log3, OS_LOG_TYPE_INFO, "Still running %{public}@, elapsed time %{public}@, before %{public}@", buf, 0x20u);
    }
  }

  [(NSMutableArray *)self->_pendingOperationGroups addObject:groupCopy, v15, v16, v17, v18, selfCopy];
}

- (void)_willBeginOperationGroup:(id)group
{
  groupCopy = group;
  if (!self->_currentOperationGroup)
  {
    firstObject = [(NSMutableArray *)self->_pendingOperationGroups firstObject];

    if (firstObject == groupCopy)
    {
      objc_storeStrong(&self->_currentOperationGroup, group);
      v7 = +[NSDate now];
      currentOperationBeginTime = self->_currentOperationBeginTime;
      self->_currentOperationBeginTime = v7;

      [(NSMutableArray *)self->_pendingOperationGroups removeObjectAtIndex:0];
      _log = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        safari_logDescription = [groupCopy safari_logDescription];
        *buf = 138543362;
        v18 = safari_logDescription;
        _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Will begin %{public}@", buf, 0xCu);
      }

      if ([(NSMutableArray *)self->_pendingOperationGroups count])
      {
        _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
        {
          v12 = [(NSMutableArray *)self->_pendingOperationGroups count];
          safari_logDescription2 = [groupCopy safari_logDescription];
          *buf = 134218242;
          v18 = v12;
          v19 = 2114;
          v20 = safari_logDescription2;
          _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "There are %zu operation groups left to handle after %{public}@", buf, 0x16u);
        }

        pendingOperationGroups = self->_pendingOperationGroups;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000A7428;
        v15[3] = &unk_100135B00;
        v15[4] = self;
        v16 = groupCopy;
        [(NSMutableArray *)pendingOperationGroups enumerateObjectsUsingBlock:v15];
      }
    }
  }
}

- (void)_didFinishOperationGroup:(id)group
{
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    v7 = [(CloudTabGroupSyncCoordinator *)self _stringForElapsedTimeSinceDate:self->_currentOperationBeginTime];
    *buf = 138543618;
    v20 = safari_logDescription;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Did finish %{public}@, elapsed time %{public}@", buf, 0x16u);
  }

  v8 = [(NSMutableArray *)self->_pendingOperationGroups count];
  _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
  v10 = os_log_type_enabled(_log2, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = [(NSMutableArray *)self->_pendingOperationGroups count];
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 134218242;
      v20 = v11;
      v21 = 2114;
      v22 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "There are %zu operation groups left to handle after %{public}@", buf, 0x16u);
    }

    pendingOperationGroups = self->_pendingOperationGroups;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A77A4;
    v17[3] = &unk_100135B00;
    v17[4] = self;
    v18 = groupCopy;
    [(NSMutableArray *)pendingOperationGroups enumerateObjectsUsingBlock:v17];
  }

  else
  {
    if (v10)
    {
      safari_logDescription3 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v20 = safari_logDescription3;
      _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "There are no pending operation groups after %{public}@", buf, 0xCu);
    }
  }

  currentOperationGroup = self->_currentOperationGroup;
  self->_currentOperationGroup = 0;

  currentOperationBeginTime = self->_currentOperationBeginTime;
  self->_currentOperationBeginTime = 0;
}

- (void)_logCurrentOperationsForAbortedOperationGroup:(id)group
{
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v18 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Aborting %{public}@", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_pendingOperationGroups count])
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableArray *)self->_pendingOperationGroups count];
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 134218242;
      v18 = v8;
      v19 = 2114;
      v20 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "There are %zu operation groups already in queue for aborted %{public}@", buf, 0x16u);
    }

    pendingOperationGroups = self->_pendingOperationGroups;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A7B3C;
    v15[3] = &unk_100135B00;
    v15[4] = self;
    v16 = groupCopy;
    [(NSMutableArray *)pendingOperationGroups enumerateObjectsUsingBlock:v15];
  }

  if (self->_currentOperationGroup)
  {
    _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log3, OS_LOG_TYPE_INFO))
    {
      safari_logDescription3 = [(CKOperationGroup *)self->_currentOperationGroup safari_logDescription];
      v13 = [(CloudTabGroupSyncCoordinator *)self _stringForElapsedTimeSinceDate:self->_currentOperationBeginTime];
      safari_logDescription4 = [groupCopy safari_logDescription];
      *buf = 138543874;
      v18 = safari_logDescription3;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = safari_logDescription4;
      _os_log_impl(&_mh_execute_header, _log3, OS_LOG_TYPE_INFO, "Still running %{public}@, elapsed time %{public}@, for aborted %{public}@", buf, 0x20u);
    }
  }
}

- (void)beginSyncingWithOperationGroup:(id)group isLocalChange:(BOOL)change completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = groupCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_beginSyncingWithOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Sync coordinator will begin syncing with %{public}@", &buf, 0xCu);
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
  v10 = groupCopy;
  v21 = v10;
  v11 = handlerCopy;
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

- (void)_runSyncingWithCollection:(id)collection inOperationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v76 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Beginning synchronization with %{public}@", buf, 0xCu);
  }

  v57 = groupCopy;

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

  v17 = collectionCopy;
  databaseSyncData = [collectionCopy databaseSyncData];
  auxiliaryRecordIDsToDelete = [databaseSyncData auxiliaryRecordIDsToDelete];
  v20 = [auxiliaryRecordIDsToDelete mutableCopy];
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

  recordIDsToRefresh = [databaseSyncData recordIDsToRefresh];
  v25 = [recordIDsToRefresh mutableCopy];
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

  recordZoneIDsToHashGenerators = [databaseSyncData recordZoneIDsToHashGenerators];
  [(CloudTabGroupSyncCoordinator *)self _didRetrieveHashGenerators:recordZoneIDsToHashGenerators];

  idsOfRecordZonesToRefresh = [databaseSyncData idsOfRecordZonesToRefresh];
  v31 = [idsOfRecordZonesToRefresh mutableCopy];
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

  if ([databaseSyncData minimumSyncAPIVersion] >= 4)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v43 = [CloudTabGroupRecordZoneMetadata allRecordZoneMetadataInCollection:collectionCopy];
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
            recordZoneID = [v48 recordZoneID];
            zoneName = [recordZoneID zoneName];
            [(NSMutableDictionary *)v49 setObject:v48 forKeyedSubscript:zoneName];
          }

          else
          {
            v52 = self->_recordZoneIDsToMetadatas;
            recordZoneID = [v48 recordZoneID];
            [(NSMutableDictionary *)v52 setObject:v48 forKeyedSubscript:recordZoneID];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v45);
      v17 = collectionCopy;
    }
  }

  else
  {
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1000A8BD0;
    v67[3] = &unk_100135B78;
    v68 = collectionCopy;
    [v68 updateDatabaseSyncDataUsingBlock:v67];
    v43 = v68;
  }

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000A8C38;
  v59[3] = &unk_100131D60;
  v60 = v17;
  selfCopy = self;
  v62 = handlerCopy;
  v53 = handlerCopy;
  v54 = v17;
  v55 = objc_retainBlock(v59);
  [(CloudTabGroupSyncCoordinator *)self _saveNextBatchInCollection:v54 operationGroup:v57 completionHandler:v55];
}

- (void)_prepareForSyncingWithOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v42 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Sync coordinator begins setting up local store with %{public}@", buf, 0xCu);
  }

  v10 = [(CloudTabGroupSyncCoordinator *)self _createCollectionWithConfiguration:self->_collectionConfiguration];
  if (v10)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000A93C8;
    v36[3] = &unk_100135BA0;
    v36[4] = self;
    v11 = groupCopy;
    v37 = v11;
    v39 = handlerCopy;
    v12 = v10;
    v38 = v12;
    v13 = objc_retainBlock(v36);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v15 = [WeakRetained cloudTabGroupSyncCoordinator:self accountPropertiesStoreForCollection:v12];
    accountPropertiesStore = self->_accountPropertiesStore;
    self->_accountPropertiesStore = v15;

    account = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore account];
    LODWORD(WeakRetained) = account == 0;

    if (WeakRetained)
    {
      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
      {
        safari_logDescription2 = [v11 safari_logDescription];
        *buf = 138543362;
        v42 = safari_logDescription2;
        _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "Discontinuing sync because user is not signed in with %{public}@", buf, 0xCu);
      }
    }

    else
    {
      deviceIdentifier = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
      v19 = [deviceIdentifier length] == 0;

      if (!v19)
      {
        if ([v12 localMigrationState] == 3)
        {
          if (![(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore updateAccountHashIfNeeded])
          {
            if ([(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled])
            {
              _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
              if (os_log_type_enabled(_log3, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, _log3, OS_LOG_TYPE_DEFAULT, "Setting up bookmarks record zone.", buf, 2u);
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
              _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
              if (os_log_type_enabled(_log4, OS_LOG_TYPE_DEFAULT))
              {
                safari_logDescription3 = [v11 safari_logDescription];
                *buf = 138543362;
                v42 = safari_logDescription3;
                _os_log_impl(&_mh_execute_header, _log4, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks Safari sync is disabled with %{public}@", buf, 0xCu);
              }

              v30 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
              [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:4 error:v30 inOperationGroup:v11 completionHandler:v13];
            }

            goto LABEL_21;
          }

          _log5 = [(CloudTabGroupSyncCoordinator *)self _log];
          if (os_log_type_enabled(_log5, OS_LOG_TYPE_DEFAULT))
          {
            safari_logDescription4 = [v11 safari_logDescription];
            *buf = 138543362;
            v42 = safari_logDescription4;
            _os_log_impl(&_mh_execute_header, _log5, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because account hash differed with %{public}@", buf, 0xCu);
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

      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log2, OS_LOG_TYPE_ERROR))
      {
        [v11 safari_logDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000CE0A0();
      }
    }

    [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:4 error:0 inOperationGroup:v11 completionHandler:v13];
    goto LABEL_21;
  }

  _log6 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log6, OS_LOG_TYPE_ERROR))
  {
    [groupCopy safari_logDescription];
    objc_claimAutoreleasedReturnValue();
    sub_1000CE0E4();
  }

  (*(handlerCopy + 2))(handlerCopy, 4, 0, 0);
LABEL_22:

  objc_destroyWeak(&location);
}

- (void)beginMigrationWithOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  [(CloudTabGroupSyncCoordinator *)self _enqueueOperationGroup:groupCopy];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9764;
  block[3] = &unk_100131A20;
  block[4] = self;
  v12 = groupCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = groupCopy;
  dispatch_async(internalQueue, block);
}

- (void)_determineCourseOfActionFromLocalStateInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    v26 = 138543362;
    v27 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Determining course of action from local migration state with %{public}@", &v26, 0xCu);
  }

  v10 = [(CloudTabGroupSyncCoordinator *)self _createCollectionWithConfiguration:self->_collectionConfiguration];
  if (!v10)
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE2E4(groupCopy);
    }

    goto LABEL_20;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v12 = [WeakRetained cloudTabGroupSyncCoordinator:self accountPropertiesStoreForCollection:v10];
  accountPropertiesStore = self->_accountPropertiesStore;
  self->_accountPropertiesStore = v12;

  account = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore account];

  if (!account)
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      v26 = 138543362;
      v27 = safari_logDescription2;
      v22 = "Discontinuing migration because user is not signed in with %{public}@";
LABEL_17:
      _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, v22, &v26, 0xCu);
    }

LABEL_20:

    handlerCopy[2](handlerCopy, 4, 0);
    goto LABEL_21;
  }

  if (![(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled])
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      v26 = 138543362;
      v27 = safari_logDescription2;
      v22 = "Discontinuing migration because Safari syncing is not enabled with %{public}@";
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  deviceIdentifier = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  v16 = [deviceIdentifier length];

  if (!v16)
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE258(groupCopy);
    }

    goto LABEL_20;
  }

  [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore updateAccountHashIfNeeded];
  localMigrationState = [v10 localMigrationState];
  if (localMigrationState >= 3)
  {
    if (localMigrationState == -1)
    {
      _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log3, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE1CC(groupCopy);
      }

      [(CloudTabGroupSyncCoordinator *)self _scheduleMigrationRetryIfNeededInOperationGroup:groupCopy completionHandler:handlerCopy];
    }

    else if (localMigrationState == 3)
    {
      _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log4, OS_LOG_TYPE_INFO))
      {
        safari_logDescription3 = [groupCopy safari_logDescription];
        v26 = 138543362;
        v27 = safari_logDescription3;
        _os_log_impl(&_mh_execute_header, _log4, OS_LOG_TYPE_INFO, "Not migrating because we've already migrated with %{public}@", &v26, 0xCu);
      }

      handlerCopy[2](handlerCopy, 0, 0);
    }
  }

  else
  {
    _log5 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log5, OS_LOG_TYPE_INFO))
    {
      safari_logDescription4 = [groupCopy safari_logDescription];
      v26 = 138543362;
      v27 = safari_logDescription4;
      _os_log_impl(&_mh_execute_header, _log5, OS_LOG_TYPE_INFO, "Will attempt secondary migration with %{public}@", &v26, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _attemptLocalMigrationInCollection:v10 operationGroup:groupCopy completionHandler:handlerCopy];
  }

LABEL_21:
}

- (void)_attemptLocalMigrationInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  bookmarkStore = self->_bookmarkStore;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A9E18;
  v15[3] = &unk_100135BF0;
  v15[4] = self;
  v16 = groupCopy;
  v17 = collectionCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = collectionCopy;
  v14 = groupCopy;
  [(CloudBookmarkStore *)bookmarkStore fetchRemoteMigrationInfoInOperationGroup:v14 withCompletionHandler:v15];
}

- (void)_tryToBecomeResponsibleForMigrationInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v22 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Deleting existing record zone in preparation for stealing right to migrate with %{public}@", buf, 0xCu);
  }

  bookmarkStore = self->_bookmarkStore;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AA3A0;
  v17[3] = &unk_100135C18;
  v17[4] = self;
  v18 = groupCopy;
  v19 = collectionCopy;
  v20 = handlerCopy;
  v14 = collectionCopy;
  v15 = handlerCopy;
  v16 = groupCopy;
  [(CloudBookmarkStore *)bookmarkStore deleteBookmarksZoneInOperationGroup:v16 completionHandler:v17];
}

- (void)_tryToBecomeResponsibleForMigrationWithRetryManager:(id)manager inCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  managerCopy = manager;
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  objc_initWeak(&location, self);
  bookmarkStore = self->_bookmarkStore;
  deviceIdentifier = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000AA7A0;
  v22[3] = &unk_100135C68;
  objc_copyWeak(&v28, &location);
  v17 = _log;
  v23 = v17;
  v18 = groupCopy;
  v24 = v18;
  v19 = handlerCopy;
  v27 = v19;
  v20 = collectionCopy;
  v25 = v20;
  v21 = managerCopy;
  v26 = v21;
  [(CloudBookmarkStore *)bookmarkStore setRemoteMigrationState:2 deviceIdentifier:deviceIdentifier inOperationGroup:v18 completionHandler:v22];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)_tryToResumePendingRemoteMigrationFromMigrationInfo:(id)info inCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  infoCopy = info;
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  migratorDeviceIdentifier = [infoCopy migratorDeviceIdentifier];
  if (!migratorDeviceIdentifier)
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE834(groupCopy);
    }
  }

  deviceIdentifier = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  v17 = [migratorDeviceIdentifier isEqualToString:deviceIdentifier];

  if (!v17)
  {
    serverModificationDate = [infoCopy serverModificationDate];
    if (serverModificationDate)
    {
      v21 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
      v22 = [serverModificationDate compare:v21];

      if (v22 == -1)
      {
        [(CloudTabGroupSyncCoordinator *)self _tryToBecomeResponsibleForMigrationInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
        goto LABEL_18;
      }

      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
      {
        safari_logDescription = [groupCopy safari_logDescription];
        v26 = 138543362;
        v27 = safari_logDescription;
        v25 = "Not stealing right to migrate since migration state was updated recently by another device with %{public}@";
LABEL_15:
        _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, v25, &v26, 0xCu);
      }
    }

    else
    {
      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
      {
        safari_logDescription = [groupCopy safari_logDescription];
        v26 = 138543362;
        v27 = safari_logDescription;
        v25 = "Not stealing right to migrate since no last modification date was stored in the migration record with %{public}@";
        goto LABEL_15;
      }
    }

    handlerCopy[2](handlerCopy, 4, 0);
LABEL_18:

    goto LABEL_19;
  }

  _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log3, OS_LOG_TYPE_INFO))
  {
    safari_logDescription2 = [groupCopy safari_logDescription];
    v26 = 138543362;
    v27 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, _log3, OS_LOG_TYPE_INFO, "Migration record indicates that we are the migrating device; attempting to resume migration with %{public}@", &v26, 0xCu);
  }

  [(CloudTabGroupSyncCoordinator *)self _tryToBecomeResponsibleForMigrationInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
LABEL_19:
}

- (void)_handleFailureToBecomeResponsibleForMigrationDueToConflictInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000CE8C0(groupCopy);
  }

  localMigrationState = [collectionCopy localMigrationState];
  if (localMigrationState > 0)
  {
    if ((localMigrationState - 1) < 2)
    {
      [collectionCopy setLocalMigrationState:0 generateDeviceIdentifierIfNeeded:0];
      [(CloudTabGroupSyncCoordinator *)self _scheduleMigrationRetryIfNeededInOperationGroup:groupCopy completionHandler:handlerCopy];
      goto LABEL_11;
    }

    if (localMigrationState != 3)
    {
      goto LABEL_11;
    }

LABEL_10:
    handlerCopy[2](handlerCopy, 4, 0);
    goto LABEL_11;
  }

  if (localMigrationState == -1 || !localMigrationState)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_scheduleMigrationRetryIfNeededInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
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
    v12 = groupCopy;
    v13 = handlerCopy;
    dispatch_after(v10, &_dispatch_main_q, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE94C(groupCopy);
    }

    (*(handlerCopy + 2))(handlerCopy, 4, 0);
  }
}

- (void)beginSharingTabGroupWithUUID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  [(CloudTabGroupSyncCoordinator *)self _enqueueOperationGroup:groupCopy];
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AB368;
  v15[3] = &unk_100131650;
  v15[4] = self;
  v16 = groupCopy;
  v17 = dCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  v14 = groupCopy;
  dispatch_async(internalQueue, v15);
}

- (void)_beginSharingTabGroupWithUUID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AB634;
  v11[3] = &unk_100135D70;
  dCopy = d;
  selfCopy = self;
  groupCopy = group;
  handlerCopy = handler;
  v8 = groupCopy;
  v9 = dCopy;
  v10 = handlerCopy;
  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncingWithOperationGroup:v8 completionHandler:v11];
}

- (void)_setUpSharingForTabGroup:(id)group inCollection:(id)collection operationGroup:(id)operationGroup completionHandler:(id)handler
{
  groupCopy = group;
  collectionCopy = collection;
  operationGroupCopy = operationGroup;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    privacyPreservingDescription = [groupCopy privacyPreservingDescription];
    serverID = [groupCopy serverID];
    safari_logDescription = [operationGroupCopy safari_logDescription];
    *buf = 138543874;
    v41 = privacyPreservingDescription;
    v42 = 2114;
    v43 = serverID;
    v44 = 2114;
    v45 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Sync coordinator will begin sharing tab group %{public}@ with record name: %{public}@ with %{public}@", buf, 0x20u);
  }

  v29 = groupCopy;
  v18 = operationGroupCopy;
  v19 = collectionCopy;
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
  v28 = handlerCopy;
  v32 = v28;
  [(CloudTabGroupSyncCoordinator *)self _setUpTabGroupZoneForTabGroup:v27 inCollection:v25 operationGroup:v26 completionHandler:v30];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)_setUpTabGroupZoneForTabGroup:(id)group inCollection:(id)collection operationGroup:(id)operationGroup completionHandler:(id)handler
{
  groupCopy = group;
  collectionCopy = collection;
  operationGroupCopy = operationGroup;
  handlerCopy = handler;
  v14 = [(CloudTabGroupSyncCoordinator *)self _serverIDForBookmarkCreateIfNeeded:groupCopy inCollection:collectionCopy];
  bookmarkStore = self->_bookmarkStore;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AC570;
  v20[3] = &unk_100135E60;
  v20[4] = self;
  v21 = operationGroupCopy;
  v23 = groupCopy;
  v24 = handlerCopy;
  v22 = collectionCopy;
  v16 = groupCopy;
  v17 = collectionCopy;
  v18 = handlerCopy;
  v19 = operationGroupCopy;
  [(CloudBookmarkStore *)bookmarkStore createRecordZoneAndEncryptionInfoWithZoneName:v14 inOperationGroup:v19 completionHandler:v20];
}

- (void)_setUpSharingInRecordZoneWithID:(id)d collection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    ckShortDescription = [dCopy ckShortDescription];
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543618;
    v31 = ckShortDescription;
    v32 = 2114;
    v33 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Will save CKShare record to the new zone %{public}@ with %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  bookmarkStore = self->_bookmarkStore;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000ADA20;
  v23[3] = &unk_100135F50;
  objc_copyWeak(&v29, buf);
  v18 = _log;
  v24 = v18;
  v19 = groupCopy;
  v25 = v19;
  v20 = handlerCopy;
  v28 = v20;
  v21 = dCopy;
  v26 = v21;
  v22 = collectionCopy;
  v27 = v22;
  [(CloudBookmarkStore *)bookmarkStore setUpSharingForRecordZoneWithID:v21 inOperationGroup:v19 completionHandler:v23];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

- (void)_performPostZoneMigrationSyncDownForRecordZoneID:(id)d shareRecord:(id)record inCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    ckShortDescription = [dCopy ckShortDescription];
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543618;
    v36 = ckShortDescription;
    v37 = 2114;
    v38 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Performing sync down of the new zone %{public}@ with %{public}@", buf, 0x16u);
  }

  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncDownInOperationGroup:groupCopy];
  v34 = dCopy;
  v20 = [NSArray arrayWithObjects:&v34 count:1];
  container = [(CloudBookmarkStore *)self->_bookmarkStore container];
  privateCloudDatabase = [container privateCloudDatabase];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000ADFE4;
  v28[3] = &unk_100135FA0;
  v28[4] = self;
  v29 = collectionCopy;
  v30 = groupCopy;
  v31 = dCopy;
  v32 = recordCopy;
  v33 = handlerCopy;
  v23 = recordCopy;
  v24 = handlerCopy;
  v25 = dCopy;
  v26 = groupCopy;
  v27 = collectionCopy;
  [(CloudTabGroupSyncCoordinator *)self _performSyncDownForRecordZoneIDs:v20 perRecordZoneConfigurations:0 inDatabase:privateCloudDatabase collection:v27 operationGroup:v26 completionHandler:v28];
}

- (void)_saveNextMigrationRecordBatchWithBookmarkIDQueue:(id)queue inCollection:(id)collection operationGroup:(id)group usingRecordBuilderBlock:(id)block completionHandler:(id)handler
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AE3AC;
  v13[3] = &unk_100135EB0;
  selfCopy = self;
  collectionCopy = collection;
  groupCopy = group;
  v11 = groupCopy;
  v12 = collectionCopy;
  [(CloudTabGroupSyncCoordinator *)selfCopy _saveNextMigrationRecordBatchWithBookmarkIDQueue:queue inCollection:v12 operationGroup:v11 usingRecordBuilderBlock:block mergeHandler:v13 completionHandler:handler];
}

- (void)_saveNextMigrationRecordBatchWithBookmarkIDQueue:(id)queue inCollection:(id)collection operationGroup:(id)group usingRecordBuilderBlock:(id)block mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  queueCopy = queue;
  collectionCopy = collection;
  groupCopy = group;
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v20 = [(CloudTabGroupSyncCoordinator *)self _nextMigrationRecordBatchWithBookmarkIDQueue:queueCopy inCollection:collectionCopy operationGroup:groupCopy recordBuilderBlock:blockCopy];
  if ([v20 count])
  {
    container = [(CloudBookmarkStore *)self->_bookmarkStore container];
    privateCloudDatabase = [container privateCloudDatabase];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000AE5DC;
    v23[3] = &unk_100135FC8;
    v27 = completionHandlerCopy;
    v23[4] = self;
    v24 = queueCopy;
    v25 = collectionCopy;
    v26 = groupCopy;
    v28 = blockCopy;
    v29 = handlerCopy;
    [(CloudTabGroupSyncCoordinator *)self _saveUpdatedRecords:v20 deletedRecordIDs:&__NSArray0__struct inDatabase:privateCloudDatabase collection:v25 operationGroup:v26 mergeHandler:v29 completionHandler:v23];
  }

  else
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0);
  }
}

- (id)_nextMigrationRecordBatchWithBookmarkIDQueue:(id)queue inCollection:(id)collection operationGroup:(id)group recordBuilderBlock:(id)block
{
  queueCopy = queue;
  collectionCopy = collection;
  groupCopy = group;
  blockCopy = block;
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

    firstObject = [queueCopy firstObject];
    intValue = [firstObject intValue];

    if (!intValue)
    {
      break;
    }

    [queueCopy removeObjectAtIndex:0];
    v17 = [collectionCopy syncableBookmarksIDsInFolderWithBookmarkID:intValue];
    allObjects = [v17 allObjects];
    v19 = allObjects;
    if (allObjects)
    {
      v20 = allObjects;
    }

    else
    {
      v20 = &__NSArray0__struct;
    }

    [queueCopy addObjectsFromArray:v20];

    v21 = blockCopy[2](blockCopy, intValue);
    if ([v21 count])
    {
      v22 = collectionCopy;
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

      _log = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
      {
        v29 = [v23 valueForKeyPath:@"recordID.ckShortDescription"];
        safari_logDescription = [groupCopy safari_logDescription];
        *buf = v33;
        v41 = v29;
        v42 = 2117;
        v43 = v23;
        v44 = 2114;
        v45 = safari_logDescription;
        _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Saving record with ID: %{public}@, data: %{sensitive}@ with %{public}@", buf, 0x20u);
      }

      [v12 addObjectsFromArray:v23];
      collectionCopy = v22;
    }
  }

  while (v13 < 0x200000);
  v31 = [v12 copy];

  return v31;
}

- (id)_migrationTombstoneRecordsForBookmarkID:(int)d inCollection:(id)collection destinationRecordZoneID:(id)iD operationGroup:(id)group
{
  collectionCopy = collection;
  iDCopy = iD;
  groupCopy = group;
  [NSMutableArray arrayWithCapacity:1];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000AEA60;
  v22 = &unk_100135FF0;
  dCopy = d;
  v23 = collectionCopy;
  v24 = iDCopy;
  selfCopy = self;
  v27 = v26 = groupCopy;
  v13 = v27;
  v14 = groupCopy;
  v15 = iDCopy;
  v16 = collectionCopy;
  [v16 performDatabaseUpdatesWithTransaction:&v19 secureDelete:0];
  v17 = [v13 copy];

  return v17;
}

- (id)_migratedRecordsForBookmarkID:(int)d inCollection:(id)collection destinationRecordZoneID:(id)iD
{
  collectionCopy = collection;
  [NSMutableArray arrayWithCapacity:2];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000AEE4C;
  v15 = &unk_100136040;
  dCopy = d;
  v16 = collectionCopy;
  v18 = v17 = self;
  v8 = v18;
  v9 = collectionCopy;
  [v9 performDatabaseUpdatesWithTransaction:&v12 secureDelete:0];
  v10 = [v8 copy];

  return v10;
}

- (void)acceptShareForURL:(id)l invitationTokenData:(id)data inOperationGroup:(id)group completionHandler:(id)handler
{
  lCopy = l;
  dataCopy = data;
  groupCopy = group;
  handlerCopy = handler;
  [(CloudTabGroupSyncCoordinator *)self _enqueueOperationGroup:groupCopy];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF260;
  block[3] = &unk_100133B70;
  block[4] = self;
  v20 = groupCopy;
  v21 = lCopy;
  v22 = dataCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = dataCopy;
  v17 = lCopy;
  v18 = groupCopy;
  dispatch_async(internalQueue, block);
}

- (void)_acceptShareForURL:(id)l invitationTokenData:(id)data inOperationGroup:(id)group completionHandler:(id)handler
{
  lCopy = l;
  groupCopy = group;
  handlerCopy = handler;
  dataCopy = data;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138740227;
    v23 = lCopy;
    v24 = 2114;
    v25 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Attempting to accept share for shareURL %{sensitive, hash.mask}@ with %{public}@", buf, 0x16u);
  }

  bookmarkStore = self->_bookmarkStore;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AF60C;
  v19[3] = &unk_100136068;
  v19[4] = self;
  v20 = groupCopy;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = groupCopy;
  [(CloudBookmarkStore *)bookmarkStore fetchShareMetadataWithURL:lCopy invitationTokenData:dataCopy inOperationGroup:v18 completionHandler:v19];
}

- (void)acceptTabGroupShareForShareMetadata:(id)metadata inProfileWithIdentifier:(id)identifier operationGroup:(id)group completionHandler:(id)handler
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  groupCopy = group;
  handlerCopy = handler;
  [(CloudTabGroupSyncCoordinator *)self _enqueueOperationGroup:groupCopy];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF9A4;
  block[3] = &unk_100135380;
  block[4] = self;
  v20 = groupCopy;
  v22 = identifierCopy;
  v23 = handlerCopy;
  v21 = metadataCopy;
  v15 = identifierCopy;
  v16 = metadataCopy;
  v17 = handlerCopy;
  v18 = groupCopy;
  dispatch_async(internalQueue, block);
}

- (void)_acceptTabGroupShareForShareMetadata:(id)metadata inProfileWithIdentifier:(id)identifier operationGroup:(id)group completionHandler:(id)handler
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AFCB0;
  v16[3] = &unk_100136090;
  groupCopy = group;
  handlerCopy = handler;
  v16[4] = self;
  v17 = metadataCopy;
  v18 = identifierCopy;
  v12 = groupCopy;
  v13 = identifierCopy;
  v14 = metadataCopy;
  v15 = handlerCopy;
  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncingWithOperationGroup:v12 completionHandler:v16];
}

- (void)_acceptTabGroupShareForShareMetadata:(id)metadata inProfileWithIdentifier:(id)identifier collection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  share = [metadataCopy share];
  recordID = [share recordID];
  zoneID = [recordID zoneID];

  v20 = +[NSDate now];
  v57 = identifierCopy;
  if ([zoneID safari_isInPrivateDatabase])
  {
    v48 = v20;
    databaseSyncData = [collectionCopy databaseSyncData];
    v22 = [databaseSyncData lastServerChangeTokenForRecordZoneID:zoneID];

    v50 = v22;
    if (v22)
    {
      v23 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
      [v23 setPreviousServerChangeToken:v22];
      v82 = zoneID;
      v83 = v23;
      v46 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    }

    else
    {
      v46 = 0;
    }

    v52 = handlerCopy;
    v54 = share;
    v56 = metadataCopy;
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      ckShortDescription = [zoneID ckShortDescription];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543618;
      v72 = ckShortDescription;
      v73 = 2114;
      v74 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Attempted to accept share in zoneID: %{public}@ even though it was created by this user, syncing down the zone instead with %{public}@", buf, 0x16u);
    }

    [(CloudTabGroupSyncCoordinator *)self _prepareForSyncDownInOperationGroup:groupCopy];
    v81 = zoneID;
    v40 = [NSArray arrayWithObjects:&v81 count:1];
    [(CloudBookmarkStore *)self->_bookmarkStore container];
    v42 = v41 = groupCopy;
    privateCloudDatabase = [v42 privateCloudDatabase];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000B028C;
    v64[3] = &unk_1001360B8;
    v64[4] = self;
    v65 = collectionCopy;
    v66 = v41;
    v67 = zoneID;
    share = v54;
    v70 = v52;
    v68 = v48;
    v69 = v54;
    v49 = v48;
    v44 = collectionCopy;
    v32 = v52;
    v33 = v41;
    v34 = zoneID;
    selfCopy = self;
    v36 = v47;
    [(CloudTabGroupSyncCoordinator *)selfCopy _performSyncDownForRecordZoneIDs:v40 perRecordZoneConfigurations:v47 inDatabase:privateCloudDatabase collection:v44 operationGroup:v33 completionHandler:v64];

    metadataCopy = v56;
    v35 = v50;
  }

  else
  {
    v24 = [(CloudTabGroupSyncCoordinator *)self _profileRecordIDForProfileWithIdentifier:identifierCopy inCollection:collectionCopy operationGroup:groupCopy];
    acceptedTabGroupParentProfileRecordID = self->_acceptedTabGroupParentProfileRecordID;
    self->_acceptedTabGroupParentProfileRecordID = v24;

    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_DEFAULT))
    {
      [zoneID ckShortDescription];
      v27 = v51 = handlerCopy;
      [share URL];
      v28 = v53 = share;
      [(CKRecordID *)self->_acceptedTabGroupParentProfileRecordID ckShortDescription];
      v29 = v55 = metadataCopy;
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138544387;
      v72 = v27;
      v73 = 2160;
      v74 = 1752392040;
      v75 = 2117;
      v76 = v28;
      v77 = 2114;
      v78 = v29;
      v79 = 2114;
      v80 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_DEFAULT, "Will begin accepting tab group share with zoneID: %{public}@ for shareURL: %{sensitive, mask.hash}@ as child of recordID %{public}@ with %{public}@", buf, 0x34u);

      metadataCopy = v55;
      share = v53;

      handlerCopy = v51;
    }

    bookmarkStore = self->_bookmarkStore;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000B0644;
    v58[3] = &unk_100136130;
    v58[4] = self;
    v59 = zoneID;
    v60 = groupCopy;
    v61 = collectionCopy;
    v62 = v20;
    v63 = handlerCopy;
    v32 = v20;
    v33 = collectionCopy;
    v34 = handlerCopy;
    v35 = groupCopy;
    v36 = zoneID;
    [(CloudBookmarkStore *)bookmarkStore acceptCloudKitShareWithMetadata:metadataCopy inOperationGroup:v35 completionHandler:v58];
  }
}

- (id)_profileRecordIDForProfileWithIdentifier:(id)identifier inCollection:(id)collection operationGroup:(id)group
{
  identifierCopy = identifier;
  collectionCopy = collection;
  groupCopy = group;
  if ([identifierCopy length] && !objc_msgSend(identifierCopy, "isEqualToString:", WBSDefaultProfileIdentifier))
  {
    v14 = [collectionCopy bookmarkWithUUID:identifierCopy];
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
            _log = [(CloudTabGroupSyncCoordinator *)self _log];
            if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
            {
              ckShortDescription = [*(*(&buf + 1) + 40) ckShortDescription];
              safari_logDescription = [groupCopy safari_logDescription];
              *v33 = 138543874;
              v34 = ckShortDescription;
              v35 = 2114;
              v36 = identifierCopy;
              v37 = 2114;
              v38 = safari_logDescription;
              _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Found profile with recordID %{public}@ for UUID %{public}@, %{public}@", v33, 0x20u);
            }

            _makeRootRecordID2 = *(*(&buf + 1) + 40);
          }

          else
          {
            serverID = [v15 serverID];
            if ([serverID length])
            {
              v22 = [CKRecordID alloc];
              bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
              v24 = [v22 initWithRecordName:serverID zoneID:bookmarksRecordZoneID];
              v25 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = v24;

              _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
              if (os_log_type_enabled(_log2, OS_LOG_TYPE_ERROR))
              {
                ckShortDescription2 = [*(*(&buf + 1) + 40) ckShortDescription];
                safari_logDescription2 = [groupCopy safari_logDescription];
                *v33 = 138543874;
                v34 = identifierCopy;
                v35 = 2114;
                v36 = ckShortDescription2;
                v37 = 2114;
                v38 = safari_logDescription2;
                _os_log_error_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_ERROR, "Profile with UUID %{public}@ has not synced yet, using recordID %{public}@, %{public}@", v33, 0x20u);
              }

              _makeRootRecordID = *(*(&buf + 1) + 40);
            }

            else
            {
              _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
              if (os_log_type_enabled(_log3, OS_LOG_TYPE_ERROR))
              {
                safari_logDescription3 = [groupCopy safari_logDescription];
                sub_1000CF41C(identifierCopy, safari_logDescription3, v33, _log3);
              }

              _makeRootRecordID = [(CloudTabGroupSyncCoordinator *)self _makeRootRecordID];
            }

            _makeRootRecordID2 = _makeRootRecordID;
          }

          _Block_object_dispose(&buf, 8);

          goto LABEL_22;
        }

        _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(_log4, OS_LOG_TYPE_ERROR))
        {
          sub_1000CF37C(identifierCopy, groupCopy);
        }
      }

      else
      {
        _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(_log4, OS_LOG_TYPE_ERROR))
        {
          sub_1000CF2DC(identifierCopy, groupCopy);
        }
      }
    }

    else
    {
      _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log4, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF484(identifierCopy, groupCopy);
      }
    }

    _makeRootRecordID2 = [(CloudTabGroupSyncCoordinator *)self _makeRootRecordID];
LABEL_22:

    goto LABEL_23;
  }

  _log5 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log5, OS_LOG_TYPE_INFO))
  {
    safari_logDescription4 = [groupCopy safari_logDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = safari_logDescription4;
    _os_log_impl(&_mh_execute_header, _log5, OS_LOG_TYPE_INFO, "No named profile specified, using root folder with %{public}@", &buf, 0xCu);
  }

  _makeRootRecordID2 = [(CloudTabGroupSyncCoordinator *)self _makeRootRecordID];
LABEL_23:

  return _makeRootRecordID2;
}

- (void)_savePrivateParticipantRecordsForAcceptedSharedTabGroup:(id)group inCollection:(id)collection operationGroup:(id)operationGroup completionHandler:(id)handler
{
  groupCopy = group;
  collectionCopy = collection;
  operationGroupCopy = operationGroup;
  handlerCopy = handler;
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
  [groupCopy getReadOnlyCachedBookmarkSyncDataUsingBlock:v37];
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    ckShortDescription = [v39[5] ckShortDescription];
    safari_logDescription = [operationGroupCopy safari_logDescription];
    *buf = 138543618;
    v46 = ckShortDescription;
    v47 = 2114;
    v48 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Will begin saving private participant records for accepted shared tab group with ID %{public}@ with %{public}@", buf, 0x16u);
  }

  v17 = +[NSMutableSet set];
  v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [groupCopy identifier]);
  v44 = v18;
  v19 = [NSArray arrayWithObjects:&v44 count:1];
  v20 = [v19 mutableCopy];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000B1D60;
  v34[3] = &unk_100135F00;
  v34[4] = self;
  v35 = collectionCopy;
  v36 = operationGroupCopy;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B1D74;
  v29[3] = &unk_100136158;
  v21 = v17;
  v30 = v21;
  selfCopy = self;
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
  v24 = handlerCopy;
  v27 = v24;
  [(CloudTabGroupSyncCoordinator *)self _saveNextMigrationRecordBatchWithBookmarkIDQueue:v20 inCollection:v22 operationGroup:v23 usingRecordBuilderBlock:v34 mergeHandler:v29 completionHandler:v25];

  _Block_object_dispose(&v38, 8);
}

- (BOOL)_shouldResetLastKnownMinimumVersionsCacheInCollection:(id)collection operationGroup:(id)group
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (self->_didLastKnownCacheVersionCheck)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    self->_didLastKnownCacheVersionCheck = 1;
    v8 = [collectionCopy syncStringForKey:@"MinimumVersionsCacheLastSavedSafariVersion"];
    if ([v8 length])
    {
      v9 = +[NSBundle mainBundle];
      safari_normalizedVersion = [v9 safari_normalizedVersion];
      v11 = [v8 compare:safari_normalizedVersion options:64];

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
          safari_operatingSystemVersionString = [v13 safari_operatingSystemVersionString];
          v7 = [v12 compare:safari_operatingSystemVersionString options:64] == -1;
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

- (void)_updateLastKnownMinimumVersionsIfNeededInCollection:(id)collection operationGroup:(id)group
{
  collectionCopy = collection;
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    *&buf[4] = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Will load last known minimum OS version in circle cache with %{public}@", buf, 0xCu);
  }

  if (!self->_lastKnownMinimumVersionsCachedDate)
  {
    if ([(CloudTabGroupSyncCoordinator *)self _shouldResetLastKnownMinimumVersionsCacheInCollection:collectionCopy operationGroup:groupCopy])
    {
      [collectionCopy setSyncData:0 forKey:@"LastKnownMinimumVersionsInCircleCacheDate"];
      [collectionCopy setSyncData:0 forKey:@"LastKnownMinimumSafariVersionPerOSName"];
      [collectionCopy syncSetString:0 forKey:@"LastKnownMinimumSafariVersionInCircle"];
      [collectionCopy syncSetString:0 forKey:@"LastKnownMinimumIOSVersionInCircle"];
      [collectionCopy syncSetString:0 forKey:@"LastKnownMinimumMacOSVersionInCircle"];
      [collectionCopy syncSetString:0 forKey:@"encounteredUnknownOSVersionInCircle"];
    }

    v10 = [collectionCopy syncDataForKey:@"LastKnownMinimumSafariVersionPerOSName"];
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

    v12 = [collectionCopy syncStringForKey:@"LastKnownMinimumIOSVersionInCircle"];
    v13 = [collectionCopy syncStringForKey:@"LastKnownMinimumMacOSVersionInCircle"];
    v14 = [collectionCopy syncStringForKey:@"encounteredUnknownOSVersionInCircle"];
    bOOLValue = [v14 BOOLValue];

    v16 = [collectionCopy syncDataForKey:@"LastKnownMinimumVersionsInCircleCacheDate"];
    if ([v16 length])
    {
      v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:0];
      lastKnownMinimumVersionsCachedDate = self->_lastKnownMinimumVersionsCachedDate;
      self->_lastKnownMinimumVersionsCachedDate = v17;
    }

    [(CloudTabGroupSyncCoordinator *)self _didLoadLastKnownMinimumSafariVersionsPerOSNames:v11 inOperationGroup:groupCopy];
    [(CloudTabGroupSyncCoordinator *)self _didLoadLastKnownMinimumIOSVersion:v12 minimumMacOSVersion:v13 encounteredUnknownOS:bOOLValue inOperationGroup:groupCopy];
  }

  if (self->_isUpdatingMinimumVersionsCache)
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      *&buf[4] = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "We are already updating the minimum version cache with %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v21 = self->_lastKnownMinimumVersionsCachedDate;
    if (v21 && ([(NSDate *)v21 timeIntervalSinceNow], v22 > -604800.0))
    {
      _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log3, OS_LOG_TYPE_DEFAULT))
      {
        safari_logDescription3 = [groupCopy safari_logDescription];
        *buf = 138543362;
        *&buf[4] = safari_logDescription3;
        _os_log_impl(&_mh_execute_header, _log3, OS_LOG_TYPE_DEFAULT, "Cache for last known minimum OS version in circle is still valid with %{public}@", buf, 0xCu);
      }

      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log2, OS_LOG_TYPE_DEFAULT))
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
        safari_logDescription4 = [groupCopy safari_logDescription];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = safari_logDescription4;
        _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_DEFAULT, "Should create placeholder tab: %{public}@ with %{public}@", buf, 0x16u);
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
      _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log4, OS_LOG_TYPE_DEFAULT))
      {
        safari_logDescription5 = [groupCopy safari_logDescription];
        *v56 = 138543362;
        v57 = safari_logDescription5;
        _os_log_impl(&_mh_execute_header, _log4, OS_LOG_TYPE_DEFAULT, "Cache for last known minimum OS versions in circle is no longer valid; fetching metadata with %{public}@", v56, 0xCu);
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
      _log2 = v28;
      v35 = _log2;
      selfCopy = self;
      v33 = v45;
      v37 = v33;
      v38 = groupCopy;
      v40 = buf;
      v41 = v54;
      v42 = v50;
      v39 = collectionCopy;
      v43 = v52;
      [(CloudBookmarkStore *)bookmarkStore fetchMetadataZoneRecordsInOperationGroup:v38 withRecordChangedBlock:v44 recordWithIDWasDeletedBlock:&stru_1001361E8 completionHandler:v34];

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(v52, 8);

      _Block_object_dispose(v54, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

- (BOOL)_shouldCreateLegacyRecordsForLastKnownMinimumSafariVersionsPerOSNames:(id)names
{
  namesCopy = names;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3468;
  v6[3] = &unk_100136260;
  v6[4] = &v7;
  [namesCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_didLoadLastKnownMinimumSafariVersionsPerOSNames:(id)names inOperationGroup:(id)group
{
  groupCopy = group;
  self->_shouldCreateLegacyPreProfileRecordsForSharedTabGroups = [(CloudTabGroupSyncCoordinator *)self _shouldCreateLegacyRecordsForLastKnownMinimumSafariVersionsPerOSNames:names];
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    v9 = 138543362;
    v10 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Did update last known minimum Safari versions per OS names in circle with %{public}@", &v9, 0xCu);
  }
}

- (void)_didLoadLastKnownMinimumIOSVersion:(id)version minimumMacOSVersion:(id)sVersion encounteredUnknownOS:(BOOL)s inOperationGroup:(id)group
{
  sCopy = s;
  sVersionCopy = sVersion;
  groupCopy = group;
  self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup = 0;
  if ([version compare:@"16.0" options:64] == -1)
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      v20 = 138543362;
      v21 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "A device with an older iOS version is still in the circle, require shared tab groups with %{public}@", &v20, 0xCu);
    }

    self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup = 1;
  }

  if ([sVersionCopy compare:@"13.0" options:64] != -1)
  {
    if (!sCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
  {
    safari_logDescription2 = [groupCopy safari_logDescription];
    v20 = 138543362;
    v21 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "A device with an older macOS version is still in the circle, require shared tab groups with %{public}@", &v20, 0xCu);
  }

  self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup = 1;
  if (sCopy)
  {
LABEL_11:
    _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log3, OS_LOG_TYPE_INFO))
    {
      safari_logDescription3 = [groupCopy safari_logDescription];
      v20 = 138543362;
      v21 = safari_logDescription3;
      _os_log_impl(&_mh_execute_header, _log3, OS_LOG_TYPE_INFO, "A device with an unknown OS version is still in the circle, require shared tab groups with %{public}@", &v20, 0xCu);
    }

    self->_lastKnownMinimumOSVersionInCircleRequiresLegacyPlaceholderForSharedTabGroup = 1;
  }

LABEL_14:
  _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log4, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription4 = [groupCopy safari_logDescription];
    v20 = 138543362;
    v21 = safari_logDescription4;
    _os_log_impl(&_mh_execute_header, _log4, OS_LOG_TYPE_DEFAULT, "Did update last known minimum OS versions in circle with %{public}@", &v20, 0xCu);
  }
}

- (void)_createLegacyPlaceholderForSharedTabGroup:(id)group inCollection:(id)collection operationGroup:(id)operationGroup completionHandler:(id)handler
{
  collectionCopy = collection;
  handlerCopy = handler;
  operationGroupCopy = operationGroup;
  v13 = [collectionCopy createLegacyPlaceholderTabGroupBookmarksForSharedTabGroup:group];
  LODWORD(group) = v13;
  v14 = [NSNumber numberWithInt:v13];
  v26 = v14;
  v15 = [NSArray arrayWithObjects:&v26 count:1];
  v16 = [v15 mutableCopy];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B3A74;
  v23[3] = &unk_100136288;
  v24 = collectionCopy;
  selfCopy = self;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B3B44;
  v19[3] = &unk_1001362D8;
  groupCopy = group;
  v20 = v24;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = v24;
  [(CloudTabGroupSyncCoordinator *)self _saveNextMigrationRecordBatchWithBookmarkIDQueue:v16 inCollection:v18 operationGroup:operationGroupCopy usingRecordBuilderBlock:v23 completionHandler:v19];
}

- (void)_didRetrieveHashGenerators:(id)generators
{
  v4 = [generators copy];
  recordZoneIDsToHashGenerators = self->_recordZoneIDsToHashGenerators;
  self->_recordZoneIDsToHashGenerators = v4;

  allKeys = [(NSDictionary *)self->_recordZoneIDsToHashGenerators allKeys];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B3D0C;
  v9[3] = &unk_100136300;
  v9[4] = self;
  v7 = [allKeys safari_dictionaryByMappingObjectsToKeysUsingBlock:v9];
  secondaryZoneNamesToRecordZoneIDs = self->_secondaryZoneNamesToRecordZoneIDs;
  self->_secondaryZoneNamesToRecordZoneIDs = v7;
}

- (void)_saveNextBatchInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  selfCopy = self;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  log = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    *&buf[4] = safari_logDescription;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Will begin building next updated records batch with %{public}@", buf, 0xCu);

    _log = log;
  }

  v10 = +[NSMutableSet set];
  sourceRecordIDsForRecordsMovedBetweenZones = self->_sourceRecordIDsForRecordsMovedBetweenZones;
  self->_sourceRecordIDsForRecordsMovedBetweenZones = v10;

  v82 = objc_alloc_init(CloudTabGroupBatch);
  v87 = +[NSMutableDictionary dictionary];
  lastSyncedRecordGeneration = [collectionCopy lastSyncedRecordGeneration];
  firstSkippedProfileGeneration = [collectionCopy firstSkippedProfileGeneration];
  if (firstSkippedProfileGeneration && firstSkippedProfileGeneration < lastSyncedRecordGeneration)
  {
    lastSyncedRecordGeneration = firstSkippedProfileGeneration - 1;
    [collectionCopy setLastSyncedRecordGeneration:?];
    [collectionCopy clearFirstSkippedProfileGeneration];
  }

  firstSkippedProfileDeviceGeneration = [collectionCopy firstSkippedProfileDeviceGeneration];
  if (firstSkippedProfileDeviceGeneration && firstSkippedProfileDeviceGeneration < lastSyncedRecordGeneration)
  {
    lastSyncedRecordGeneration = firstSkippedProfileDeviceGeneration - 1;
    [collectionCopy setLastSyncedRecordGeneration:?];
    [collectionCopy clearFirstSkippedProfileDeviceGeneration];
  }

  if (![(CloudTabGroupBatch *)v82 isFull])
  {
    *&v15 = 134218242;
    v78 = v15;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v16 = [(CloudTabGroupSyncCoordinator *)selfCopy _nextBatchItemAfterChangeToken:lastSyncedRecordGeneration inCollection:collectionCopy operationGroup:groupCopy];
      v83 = v16;
      if (!v16)
      {
        break;
      }

      if ([v16 isEmpty])
      {
        change = [v83 change];
        lastSyncedRecordGeneration = [change localRecordGeneration];

        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          v18 = log;
          safari_logDescription2 = [groupCopy safari_logDescription];
          *buf = v78;
          *&buf[4] = lastSyncedRecordGeneration;
          *&buf[12] = 2114;
          *&buf[14] = safari_logDescription2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Ignoring change lacking record with token %zu with %{public}@", buf, 0x16u);
        }
      }

      else
      {
        [(CloudTabGroupBatch *)v82 addItem:v83];
        change2 = [v83 change];
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        updatedRecords = [v83 updatedRecords];
        v21 = [updatedRecords countByEnumeratingWithState:&v130 objects:v141 count:16];
        if (v21)
        {
          v22 = *v131;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v131 != v22)
              {
                objc_enumerationMutation(updatedRecords);
              }

              v24 = *(*(&v130 + 1) + 8 * i);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                v25 = log;
                recordID = [v24 recordID];
                ckShortDescription = [recordID ckShortDescription];
                safari_logDescription3 = [groupCopy safari_logDescription];
                *buf = 138543875;
                *&buf[4] = ckShortDescription;
                *&buf[12] = 2117;
                *&buf[14] = v24;
                *&buf[22] = 2114;
                v135 = safari_logDescription3;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Adding record with name: %{public}@ to batch, data: %{sensitive}@ with %{public}@", buf, 0x20u);
              }

              recordID2 = [v24 recordID];
              [v87 setObject:change2 forKeyedSubscript:recordID2];
            }

            v21 = [updatedRecords countByEnumeratingWithState:&v130 objects:v141 count:16];
          }

          while (v21);
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        deletedRecordIDs = [v83 deletedRecordIDs];
        v31 = [deletedRecordIDs countByEnumeratingWithState:&v126 objects:v140 count:16];
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
                objc_enumerationMutation(deletedRecordIDs);
                v34 = log;
              }

              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = *(*(&v126 + 1) + 8 * v33);
                v36 = v34;
                ckShortDescription2 = [v35 ckShortDescription];
                safari_logDescription4 = [groupCopy safari_logDescription];
                *buf = 138543618;
                *&buf[4] = ckShortDescription2;
                *&buf[12] = 2114;
                *&buf[14] = safari_logDescription4;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Adding recordID to delete with name: %{public}@ to batch with %{public}@", buf, 0x16u);

                v34 = log;
              }

              v33 = v33 + 1;
            }

            while (v31 != v33);
            v31 = [deletedRecordIDs countByEnumeratingWithState:&v126 objects:v140 count:16];
          }

          while (v31);
        }

        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        deletedRecordZoneIDs = [v83 deletedRecordZoneIDs];
        v40 = [deletedRecordZoneIDs countByEnumeratingWithState:&v122 objects:v139 count:16];
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
                objc_enumerationMutation(deletedRecordZoneIDs);
                v43 = log;
              }

              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v44 = *(*(&v122 + 1) + 8 * v42);
                v45 = v43;
                ckShortDescription3 = [v44 ckShortDescription];
                safari_logDescription5 = [groupCopy safari_logDescription];
                *buf = 138543618;
                *&buf[4] = ckShortDescription3;
                *&buf[12] = 2114;
                *&buf[14] = safari_logDescription5;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Adding recordZoneID to delete with name: %{public}@ to batch with %{public}@", buf, 0x16u);

                v43 = log;
              }

              v42 = v42 + 1;
            }

            while (v40 != v42);
            v40 = [deletedRecordZoneIDs countByEnumeratingWithState:&v122 objects:v139 count:16];
          }

          while (v40);
        }

        lastSyncedRecordGeneration = [change2 localRecordGeneration];
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
      safari_logDescription6 = [groupCopy safari_logDescription];
      *buf = 138543362;
      *&buf[4] = safari_logDescription6;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Done saving all record changes with %{public}@", buf, 0xCu);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v50 = selfCopy->_observers;
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
            [v54 syncCoordinatorDidFinishSyncUp:selfCopy];
          }
        }

        v51 = [(NSHashTable *)v50 countByEnumeratingWithState:&v118 objects:v138 count:16];
      }

      while (v51);
    }

    [(CloudTabGroupSyncCoordinator *)selfCopy _performSyncDownAfterProcessingChangesInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
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
    deletedRecordZoneIDsInPrivateDatabase = [(CloudTabGroupBatch *)v82 deletedRecordZoneIDsInPrivateDatabase];
    allObjects = [deletedRecordZoneIDsInPrivateDatabase allObjects];
    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_1000B49EC;
    v113[3] = &unk_100136328;
    v117 = buf;
    v58 = log;
    v114 = v58;
    v59 = groupCopy;
    v115 = v59;
    v60 = v55;
    v116 = v60;
    [(CloudTabGroupSyncCoordinator *)selfCopy _deletePrivateRecordZoneIDs:allObjects collection:collectionCopy operationGroup:v59 completionHandler:v113];

    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_1000B4B20;
    v106[3] = &unk_1001363A0;
    v112 = buf;
    v86 = v58;
    v107 = v86;
    v61 = v59;
    v108 = v61;
    v89 = collectionCopy;
    v109 = v89;
    v110 = v87;
    v111 = selfCopy;
    v62 = objc_retainBlock(v106);
    dispatch_group_enter(v60);
    updatedRecordsInPrivateDatabase = [(CloudTabGroupBatch *)v82 updatedRecordsInPrivateDatabase];
    allObjects2 = [updatedRecordsInPrivateDatabase allObjects];
    deletedRecordIDsInPrivateDatabase = [(CloudTabGroupBatch *)v82 deletedRecordIDsInPrivateDatabase];
    allObjects3 = [deletedRecordIDsInPrivateDatabase allObjects];
    container = [(CloudBookmarkStore *)selfCopy->_bookmarkStore container];
    privateCloudDatabase = [container privateCloudDatabase];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_1000B53A0;
    v103[3] = &unk_100131288;
    v69 = v62;
    v105 = v69;
    v70 = v60;
    v104 = v70;
    [(CloudTabGroupSyncCoordinator *)selfCopy _saveUpdatedRecords:allObjects2 deletedRecordIDs:allObjects3 inDatabase:privateCloudDatabase collection:v89 operationGroup:v61 completionHandler:v103];

    dispatch_group_enter(v70);
    updatedRecordsInSharedDatabase = [(CloudTabGroupBatch *)v82 updatedRecordsInSharedDatabase];
    allObjects4 = [updatedRecordsInSharedDatabase allObjects];
    deletedRecordIDsInSharedDatabase = [(CloudTabGroupBatch *)v82 deletedRecordIDsInSharedDatabase];
    allObjects5 = [deletedRecordIDsInSharedDatabase allObjects];
    container2 = [(CloudBookmarkStore *)selfCopy->_bookmarkStore container];
    sharedCloudDatabase = [container2 sharedCloudDatabase];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1000B53E4;
    v100[3] = &unk_100131288;
    v85 = v69;
    v102 = v85;
    v77 = v70;
    v101 = v77;
    [(CloudTabGroupSyncCoordinator *)selfCopy _saveUpdatedRecords:allObjects4 deletedRecordIDs:allObjects5 inDatabase:sharedCloudDatabase collection:v89 operationGroup:v61 completionHandler:v100];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5428;
    block[3] = &unk_1001363F0;
    v98 = buf;
    block[4] = selfCopy;
    v93 = v61;
    v97 = handlerCopy;
    v94 = v86;
    v99 = lastSyncedRecordGeneration;
    v95 = v89;
    v96 = v82;
    dispatch_group_notify(v77, &_dispatch_main_q, block);

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)_didSaveSettingRecord:(id)record forBookmark:(id)bookmark withCollection:(id)collection
{
  collectionCopy = collection;
  bookmarkCopy = bookmark;
  recordCopy = record;
  v11 = objc_opt_class();
  v12 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"SettingName"];
  v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"SettingName" ofType:v11 fromRecord:recordCopy withTransformer:v12];

  _supportedSettingsRecordTypes = [(CloudTabGroupSyncCoordinator *)self _supportedSettingsRecordTypes];
  v15 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Value"];
  v16 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Value" ofTypes:_supportedSettingsRecordTypes fromRecord:recordCopy withTransformer:v15];

  identifier = [bookmarkCopy identifier];
  LOBYTE(bookmarkCopy) = [collectionCopy resetModifiedStateForSetting:v13 withRecord:recordCopy value:v16 forBookmarkWithID:identifier];

  return bookmarkCopy;
}

- (id)_supportedSettingsRecordTypes
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (void)_deletePrivateRecordZoneIDs:(id)ds collection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  dsCopy = ds;
  groupCopy = group;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    isDataclassEnabled = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled];
    v14 = _log;
    v15 = v14;
    if (isDataclassEnabled)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = [dsCopy count];
        safari_logDescription = [groupCopy safari_logDescription];
        *buf = 134218242;
        v32 = v16;
        v33 = 2114;
        v34 = safari_logDescription;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Deleting recordZoneID batch of size: %zu with %{public}@", buf, 0x16u);
      }

      v18 = +[NSMutableArray array];
      bookmarkStore = self->_bookmarkStore;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000B5B94;
      v27[3] = &unk_100136440;
      v28 = v15;
      v29 = groupCopy;
      v30 = v18;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000B5D10;
      v22[3] = &unk_100135C18;
      v23 = v28;
      v24 = v29;
      v25 = v30;
      v26 = handlerCopy;
      v20 = v30;
      [(CloudBookmarkStore *)bookmarkStore deleteRecordZonesWithIDs:dsCopy inOperationGroup:v24 perRecordZoneDeleteBlock:v27 completionHandler:v22];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        safari_logDescription2 = [groupCopy safari_logDescription];
        *buf = 138543362;
        v32 = safari_logDescription2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);
      }

      v20 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v20);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, dsCopy, 0);
  }
}

- (void)_saveUpdatedRecords:(id)records deletedRecordIDs:(id)ds inDatabase:(id)database collection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B5F84;
  v15[3] = &unk_100135EB0;
  selfCopy = self;
  collectionCopy = collection;
  groupCopy = group;
  v13 = groupCopy;
  v14 = collectionCopy;
  [(CloudTabGroupSyncCoordinator *)selfCopy _saveUpdatedRecords:records deletedRecordIDs:ds inDatabase:database collection:v14 operationGroup:v13 mergeHandler:v15 completionHandler:handler];
}

- (void)_saveUpdatedRecords:(id)records deletedRecordIDs:(id)ds inDatabase:(id)database collection:(id)collection operationGroup:(id)group mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  recordsCopy = records;
  dsCopy = ds;
  databaseCopy = database;
  groupCopy = group;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if ([recordsCopy count] || objc_msgSend(dsCopy, "count"))
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    isDataclassEnabled = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled];
    v22 = _log;
    v23 = v22;
    if (isDataclassEnabled)
    {
      v39 = completionHandlerCopy;
      v40 = handlerCopy;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = v23;
        v25 = [recordsCopy count];
        v26 = [dsCopy count];
        safari_logDescription = [groupCopy safari_logDescription];
        *buf = 134218754;
        v57 = v25;
        v23 = v24;
        v58 = 2048;
        v59 = v26;
        v60 = 2114;
        v61 = databaseCopy;
        v62 = 2114;
        v63 = safari_logDescription;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Saving record batch of size: %zu, number of deleted records: %zu to database: %{public}@ with %{public}@", buf, 0x2Au);
      }

      v41 = groupCopy;
      v42 = databaseCopy;
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
              [v33 syncCoordinator:self didSendRecordBatch:recordsCopy deletedRecordIDBatch:dsCopy];
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
      groupCopy = v41;
      v49 = v41;
      handlerCopy = v40;
      v50 = v40;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1000B66B8;
      v43[3] = &unk_100132CD8;
      v44 = v48;
      v45 = v49;
      completionHandlerCopy = v39;
      v46 = v39;
      databaseCopy = v42;
      v23 = v38;
      [(CloudBookmarkStore *)bookmarkStore modifyRecords:recordsCopy andDeleteRecordIDs:dsCopy inDatabase:v42 operationGroup:v45 mergeHandler:v47 completionHandler:v43];

      v35 = v48;
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        [groupCopy safari_logDescription];
        v37 = v36 = v23;
        *buf = 138543362;
        v57 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);

        v23 = v36;
      }

      v35 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
      (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0, v35);
    }
  }

  else
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, recordsCopy, dsCopy, 0);
  }
}

- (void)_fetchRecordZonesToRefreshInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if ([(NSMutableSet *)self->_idsOfRecordZonesToRefresh count])
  {
    v30 = handlerCopy;
    v12 = [(NSMutableSet *)self->_idsOfRecordZonesToRefresh copy];
    allObjects = [v12 allObjects];
    v14 = [allObjects safari_splitArrayUsingCondition:&stru_1001364D0];

    first = [v14 first];
    v29 = v14;
    second = [v14 second];
    v27 = v12;
    [(CloudTabGroupSyncCoordinator *)self _clearServerChangeTokensForRecordZoneIDsIfNeeded:v12 inCollection:collectionCopy];
    v16 = _log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [first count];
      v18 = [second count];
      [groupCopy safari_logDescription];
      v20 = v19 = collectionCopy;
      *buf = 134218498;
      v40 = v17;
      v41 = 2048;
      v42 = v18;
      v43 = 2114;
      v44 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Will refresh %zu record zones in private database and %zu in shared database with %{public}@", buf, 0x20u);

      collectionCopy = v19;
    }

    [(CloudTabGroupSyncCoordinator *)self _prepareForSyncDownInOperationGroup:groupCopy];
    container = [(CloudBookmarkStore *)self->_bookmarkStore container];
    privateCloudDatabase = [container privateCloudDatabase];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000B6BD8;
    v32[3] = &unk_1001360B8;
    v32[4] = self;
    v33 = collectionCopy;
    handlerCopy = v30;
    v34 = groupCopy;
    v35 = first;
    v36 = second;
    v37 = v27;
    v38 = v30;
    v28 = v27;
    v26 = second;
    v23 = first;
    [(CloudTabGroupSyncCoordinator *)self _performSyncDownForRecordZoneIDs:v23 perRecordZoneConfigurations:&__NSDictionary0__struct inDatabase:privateCloudDatabase collection:v33 operationGroup:v34 completionHandler:v32];
  }

  else
  {
    v24 = _log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v40 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No recordZoneIDs left to refresh with %{public}@", buf, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _continuePostSyncDownHousekeepingInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
  }
}

- (void)_clearServerChangeTokensForRecordZoneIDsIfNeeded:(id)needed inCollection:(id)collection
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B70D8;
  v6[3] = &unk_100135B78;
  neededCopy = needed;
  v5 = neededCopy;
  [collection updateDatabaseSyncDataUsingBlock:v6];
}

- (void)_fetchRecordsToRefreshInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  oslog = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    *&buf[4] = safari_logDescription;
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
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 134218498;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      *&buf[22] = 2114;
      v64 = safari_logDescription2;
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
    v23 = groupCopy;
    v56 = v23;
    selfCopy = self;
    v36 = collectionCopy;
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
      container = [(CloudBookmarkStore *)bookmarkStore container];
      privateCloudDatabase = [container privateCloudDatabase];
      [(CloudBookmarkStore *)bookmarkStore fetchRecordsWithIDs:v9 inDatabase:privateCloudDatabase operationGroup:v25 perRecordCompletionBlock:v38 completionHandler:v27];
    }

    if ([v10 count])
    {
      dispatch_group_enter(v26);
      v31 = self->_bookmarkStore;
      container2 = [(CloudBookmarkStore *)v31 container];
      sharedCloudDatabase = [container2 sharedCloudDatabase];
      [(CloudBookmarkStore *)v31 fetchRecordsWithIDs:v10 inDatabase:sharedCloudDatabase operationGroup:v25 perRecordCompletionBlock:v38 completionHandler:v27];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B7D64;
    block[3] = &unk_100136598;
    v48 = buf;
    block[4] = self;
    v44 = v25;
    v47 = handlerCopy;
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
      safari_logDescription3 = [groupCopy safari_logDescription];
      *buf = 138543362;
      *&buf[4] = safari_logDescription3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "No recordIDs left to refresh with %{public}@", buf, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _continuePostSyncDownHousekeepingInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
  }
}

- (void)_beginDeletingAuxiliaryRecordsInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if ([(NSMutableSet *)self->_auxiliaryRecordIDsToDelete count])
  {
    v22 = handlerCopy;
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

    v18 = _log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v34 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Will begin deleting deleted auxiliary records with %{public}@", buf, 0xCu);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B81C4;
    v23[3] = &unk_100130F68;
    v23[4] = self;
    v24 = v18;
    v25 = groupCopy;
    v26 = collectionCopy;
    handlerCopy = v22;
    v27 = v22;
    [(CloudTabGroupSyncCoordinator *)self _deleteNextBatchOfAuxiliaryRecordsInCollection:v26 operationGroup:v25 completionHandler:v23];
  }

  else
  {
    v20 = _log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v34 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "No auxiliary records to delete with %{public}@", buf, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _continuePostSyncDownHousekeepingInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
  }
}

- (void)_deleteNextBatchOfAuxiliaryRecordsInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = safari_logDescription;
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
    container = [(CloudBookmarkStore *)self->_bookmarkStore container];
    privateCloudDatabase = [container privateCloudDatabase];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B8944;
    v48[3] = &unk_1001365E8;
    p_buf = &buf;
    v20 = log;
    v49 = v20;
    v21 = groupCopy;
    v50 = v21;
    v22 = v17;
    v51 = v22;
    [(CloudTabGroupSyncCoordinator *)self _saveUpdatedRecords:&__NSArray0__struct deletedRecordIDs:v9 inDatabase:privateCloudDatabase collection:collectionCopy operationGroup:v21 completionHandler:v48];

    dispatch_group_enter(v22);
    container2 = [(CloudBookmarkStore *)self->_bookmarkStore container];
    sharedCloudDatabase = [container2 sharedCloudDatabase];
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
    [(CloudTabGroupSyncCoordinator *)self _saveUpdatedRecords:&__NSArray0__struct deletedRecordIDs:v10 inDatabase:sharedCloudDatabase collection:collectionCopy operationGroup:v26 completionHandler:v43];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B8C14;
    block[3] = &unk_100136610;
    v42 = &buf;
    v41 = handlerCopy;
    v35 = v25;
    v36 = v26;
    selfCopy = self;
    v38 = v9;
    v39 = v10;
    v40 = collectionCopy;
    v28 = v10;
    v29 = v9;
    dispatch_group_notify(v27, &_dispatch_main_q, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)_metadataForRecordZoneID:(id)d inCollection:(id)collection operationGroup:(id)group
{
  dCopy = d;
  collectionCopy = collection;
  v9 = [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas objectForKeyedSubscript:dCopy];
  if (!v9)
  {
    recordZoneNamesToMetadatas = self->_recordZoneNamesToMetadatas;
    zoneName = [dCopy zoneName];
    v9 = [(NSMutableDictionary *)recordZoneNamesToMetadatas objectForKeyedSubscript:zoneName];

    if (v9)
    {
      [v9 setRecordZoneID:dCopy inCollection:collectionCopy];
      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v9 forKeyedSubscript:dCopy];
      v12 = self->_recordZoneNamesToMetadatas;
      zoneName2 = [dCopy zoneName];
      [(NSMutableDictionary *)v12 setObject:0 forKeyedSubscript:zoneName2];
    }
  }

  return v9;
}

- (id)_metadataForRecordZoneName:(id)name inCollection:(id)collection operationGroup:(id)group
{
  nameCopy = name;
  collectionCopy = collection;
  groupCopy = group;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000014FC;
  v22 = sub_1000ABC1C;
  v23 = [(NSMutableDictionary *)self->_recordZoneNamesToMetadatas objectForKeyedSubscript:nameCopy];
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
    v16 = nameCopy;
    v17 = &v18;
    [(NSMutableDictionary *)recordZoneIDsToMetadatas enumerateKeysAndObjectsUsingBlock:v15];
    v12 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)_metadataForRecordZoneID:(id)d orRecordZoneName:(id)name inCollection:(id)collection operationGroup:(id)group
{
  if (d)
  {
    [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:d inCollection:collection operationGroup:group];
  }

  else
  {
    [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneName:name inCollection:collection operationGroup:group];
  }
  v6 = ;

  return v6;
}

- (id)_filteredUpdatedRecordZoneIDs:(id)ds inCollection:(id)collection operationGroup:(id)group
{
  dsCopy = ds;
  collectionCopy = collection;
  groupCopy = group;
  if ([(NSMutableDictionary *)self->_recordZoneIDsToMetadatas count]|| [(NSMutableDictionary *)self->_recordZoneNamesToMetadatas count])
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B9234;
    v15[3] = &unk_100136660;
    v15[4] = self;
    v16 = collectionCopy;
    v17 = groupCopy;
    v18 = _log;
    v12 = _log;
    v13 = [dsCopy safari_filterObjectsUsingBlock:v15];
  }

  else
  {
    v13 = dsCopy;
  }

  return v13;
}

- (BOOL)_canHandleRecordInZoneWithID:(id)d collection:(id)collection operationGroup:(id)group
{
  dCopy = d;
  collectionCopy = collection;
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v10 = [dCopy isEqual:bookmarksRecordZoneID];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas objectForKeyedSubscript:dCopy];
    isMinimumAPIVersionUnsupported = [v12 isMinimumAPIVersionUnsupported];

    if (isMinimumAPIVersionUnsupported)
    {
      v11 = 0;
    }

    else
    {
      zoneName = [dCopy zoneName];
      v15 = [(NSMutableDictionary *)self->_recordZoneNamesToMetadatas objectForKeyedSubscript:zoneName];
      v16 = v15;
      v11 = v15 == 0;
      if (v15)
      {
        [v15 setRecordZoneID:dCopy inCollection:collectionCopy];
        [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v16 forKeyedSubscript:dCopy];
        [(NSMutableDictionary *)self->_recordZoneNamesToMetadatas setObject:0 forKeyedSubscript:zoneName];
      }
    }
  }

  return v11;
}

- (id)_didFetchBookmarkRecord:(id)record collection:(id)collection operationGroup:(id)group localBookmarkWasCreated:(BOOL *)created
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  *created = 0;
  v12 = [(CloudTabGroupSyncCoordinator *)self _configurationForRecord:recordCopy];
  if (!v12)
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      recordID = [recordCopy recordID];
      ckShortDescription = [recordID ckShortDescription];
      recordType = [recordCopy recordType];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543874;
      *&buf[4] = ckShortDescription;
      *&buf[12] = 2114;
      *&buf[14] = recordType;
      *&buf[22] = 2114;
      v60 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Ignoring record with ID %{public}@ because its type %{public}@ is unknown with %{public}@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  recordID2 = [recordCopy recordID];
  recordName = [recordID2 recordName];
  v15 = WBSSharedTabGroupLegacyPlaceholderServerIDPrefix;
  v16 = [recordName hasPrefix:WBSSharedTabGroupLegacyPlaceholderServerIDPrefix];

  if (!v16)
  {
    _log = [recordCopy objectForKeyedSubscript:@"ParentFolder"];
    recordID3 = [_log recordID];
    recordName2 = [recordID3 recordName];
    v28 = [recordName2 hasPrefix:v15];

    if (v28)
    {
      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
      {
        recordType2 = [recordCopy recordType];
        recordID4 = [recordCopy recordID];
        ckShortDescription2 = [recordID4 ckShortDescription];
        recordID5 = [_log recordID];
        ckShortDescription3 = [recordID5 ckShortDescription];
        safari_logDescription2 = [groupCopy safari_logDescription];
        *buf = 138544130;
        *&buf[4] = recordType2;
        *&buf[12] = 2114;
        *&buf[14] = ckShortDescription2;
        *&buf[22] = 2114;
        v60 = ckShortDescription3;
        LOWORD(v61) = 2114;
        *(&v61 + 2) = safari_logDescription2;
        _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "Ignoring record of type %{public}@ with ID %{public}@, because it is a child record of a placeholder with ID %{public}@ with %{public}@", buf, 0x2Au);
      }

      goto LABEL_11;
    }

    v37 = [(CloudTabGroupSyncCoordinator *)self _hashGeneratorForRecord:recordCopy];
    [v37 verifyIdentityHashInBookmarkRecord:recordCopy configuration:v12];

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
    v38 = recordCopy;
    v52 = v38;
    v57 = buf;
    v39 = collectionCopy;
    v53 = v39;
    selfCopy = self;
    v47 = groupCopy;
    v55 = v47;
    v40 = v12;
    v56 = v40;
    createdCopy = created;
    v46 = [v39 performDatabaseUpdatesWithTransaction:v51 secureDelete:0];
    recordType3 = [v40 recordType];
    if ([recordType3 isEqualToString:@"TabGroup"])
    {
      recordID6 = [v38 recordID];
      recordName3 = [recordID6 recordName];
      v43 = [NSSet setWithObject:recordName3];
      [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:v43 inCollection:v39];
    }

    else
    {
      if (![recordType3 isEqualToString:@"TabGroupTab"])
      {
LABEL_20:
        recordID7 = [v38 recordID];
        [(CloudTabGroupSyncCoordinator *)self _handlePendingAuxiliaryRecordsIfNeededForMainRecordID:recordID7 inCollection:v39 operationGroup:v47];

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

      recordID6 = [v38 recordID];
      recordName3 = [recordID6 recordName];
      v43 = [NSSet setWithObject:recordName3];
      [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:v43 inCollection:v39];
    }

    goto LABEL_20;
  }

  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    recordType4 = [recordCopy recordType];
    recordID8 = [recordCopy recordID];
    ckShortDescription4 = [recordID8 ckShortDescription];
    safari_logDescription3 = [groupCopy safari_logDescription];
    *buf = 138543874;
    *&buf[4] = recordType4;
    *&buf[12] = 2114;
    *&buf[14] = ckShortDescription4;
    *&buf[22] = 2114;
    v60 = safari_logDescription3;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Ignoring record of type %{public}@ with ID %{public}@, because it is a placeholder record with %{public}@", buf, 0x20u);
  }

LABEL_11:
  v35 = 0;
LABEL_12:

  return v35;
}

- (BOOL)_shouldOverrideLocalBookmark:(id)bookmark localSyncData:(id)data withRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  dataCopy = data;
  recordCopy = record;
  groupCopy = group;
  record = [dataCopy record];
  recordID = [record recordID];

  recordID2 = [recordCopy recordID];
  if (recordID && ([recordID isEqual:recordID2] & 1) == 0)
  {
    state = [dataCopy state];
    v51 = [dataCopy generationForKey:@"Deleted"];
    safari_state = [recordCopy safari_state];
    v50 = [recordCopy safari_generationForKey:@"Deleted"];
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      [recordID2 ckShortDescription];
      v20 = v46 = dataCopy;
      WBStringFromBookmarkSyncState();
      v21 = v47 = recordID2;
      [recordID ckShortDescription];
      v23 = v22 = state;
      WBStringFromBookmarkSyncState();
      v24 = v48 = safari_state;
      [groupCopy safari_logDescription];
      v25 = v49 = groupCopy;
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
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Remote record with ID %{public}@ (state: %{public}@, generation: %{public}@) is in a different zone than local record with ID %{public}@ (state: %{public}@, generation: %{public}@), %{public}@", buf, 0x48u);

      groupCopy = v49;
      state = v22;

      dataCopy = v46;
      safari_state = v48;

      recordID2 = v47;
    }

    if (safari_state != 2 && state == 2)
    {
      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      v16 = 1;
      if (!os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
      {
LABEL_28:

        goto LABEL_29;
      }

      ckShortDescription = [recordID ckShortDescription];
      ckShortDescription2 = [recordID2 ckShortDescription];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543874;
      v53 = ckShortDescription;
      v54 = 2114;
      v55 = ckShortDescription2;
      v56 = 2114;
      v57 = safari_logDescription;
      v30 = "Overriding local record with ID %{public}@ with remote record with ID %{public}@ since the local record is a migration record, %{public}@";
      v31 = _log2;
      v32 = 32;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, v30, buf, v32);

      goto LABEL_28;
    }

    if (safari_state != 2 || state == 2)
    {
      v39 = [recordCopy safari_generationForKey:{@"Deleted", v46}];
      v40 = [dataCopy generationForKey:@"Deleted"];
      v41 = [v39 compare:v40];

      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      v42 = os_log_type_enabled(_log2, OS_LOG_TYPE_INFO);
      if (v41 == 1)
      {
        if (!v42)
        {
          v16 = 1;
          goto LABEL_28;
        }

        ckShortDescription = [recordID ckShortDescription];
        ckShortDescription2 = [recordID2 ckShortDescription];
        if (safari_state == 2)
        {
          v43 = @"both are";
        }

        else
        {
          v43 = @"neither are";
        }

        safari_logDescription = [groupCopy safari_logDescription];
        *buf = 138544642;
        v53 = ckShortDescription;
        v54 = 2114;
        v55 = ckShortDescription2;
        v56 = 2114;
        v57 = v43;
        v58 = 2114;
        v59 = v51;
        v60 = 2114;
        v61 = v50;
        v62 = 2114;
        v63 = safari_logDescription;
        v30 = "Overriding local record with ID %{public}@ with remote record with ID %{public}@ since they are in different zones and %{public}@ migrated records but the remote record has a more recent state (%{public}@ < %{public}@), %{public}@";
        v16 = 1;
        v31 = _log2;
        v32 = 62;
        goto LABEL_10;
      }

      if (v42)
      {
        ckShortDescription3 = [recordID2 ckShortDescription];
        ckShortDescription4 = [recordID ckShortDescription];
        if (safari_state == 2)
        {
          v44 = @"both are";
        }

        else
        {
          v44 = @"neither are";
        }

        safari_logDescription2 = [groupCopy safari_logDescription];
        *buf = 138544642;
        v53 = ckShortDescription3;
        v54 = 2114;
        v55 = ckShortDescription4;
        v56 = 2114;
        v57 = v44;
        v58 = 2114;
        v59 = v50;
        v60 = 2114;
        v61 = v51;
        v62 = 2114;
        v63 = safari_logDescription2;
        v36 = "Ignoring remote record with ID %{public}@ and keeping local record with ID %{public}@ since they are in different zones and %{public}@ migrated records but the local record is more recent (%{public}@ <= %{public}@), %{public}@";
        v37 = _log2;
        v38 = 62;
        goto LABEL_26;
      }
    }

    else
    {
      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
      {
        ckShortDescription3 = [recordID2 ckShortDescription];
        ckShortDescription4 = [recordID ckShortDescription];
        safari_logDescription2 = [groupCopy safari_logDescription];
        *buf = 138543874;
        v53 = ckShortDescription3;
        v54 = 2114;
        v55 = ckShortDescription4;
        v56 = 2114;
        v57 = safari_logDescription2;
        v36 = "Ignoring received migration tombstone with recordID %{public}@ for local record with ID %{public}@ with %{public}@";
        v37 = _log2;
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

- (BOOL)_setPositionDictionaryRepresentation:(id)representation inParentWithRecordID:(id)d forBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group
{
  representationCopy = representation;
  dCopy = d;
  bookmarkCopy = bookmark;
  collectionCopy = collection;
  groupCopy = group;
  v17 = [WBSCRDTPosition alloc];
  v18 = [representationCopy objectForKeyedSubscript:WBDefaultPositionKey];
  v19 = [v17 initWithDictionaryRepresentation:v18];

  recordName = [dCopy recordName];
  v21 = [collectionCopy bookmarkIDForServerID:recordName excludeDeletedBookmarks:1];

  if (v19)
  {
    v22 = [collectionCopy orderIndexOfBookmark:bookmarkCopy withSyncPosition:v19 inFolderWithID:v21];
  }

  else
  {
    v22 = 0;
  }

  if ([bookmarkCopy parentID] == v21)
  {
    [bookmarkCopy syncPosition];
    v40 = bookmarkCopy;
    v23 = v22;
    v24 = collectionCopy;
    selfCopy = self;
    v26 = dCopy;
    v27 = representationCopy;
    v29 = v28 = groupCopy;
    v30 = [v29 isEqual:v19] ^ 1;

    groupCopy = v28;
    representationCopy = v27;
    dCopy = v26;
    self = selfCopy;
    collectionCopy = v24;
    v22 = v23;
    bookmarkCopy = v40;
  }

  else
  {
    v30 = 1;
  }

  if (v21 == 0x7FFFFFFF)
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      ckShortDescription = [dCopy ckShortDescription];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543618;
      v45 = ckShortDescription;
      v46 = 2114;
      v47 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Parent bookmark with server ID %{public}@ not found, moving to recovered bookmarks with %{public}@", buf, 0x16u);
    }

    v21 = [collectionCopy bookmarkIDWithSpecialID:WBRecoveredBookmarksSpecialID];
    v22 = 0;
    v30 = ([bookmarkCopy parentID] != v21) & v30;
  }

  if (v19)
  {
    [bookmarkCopy setSyncPosition:v19 incrementGeneration:0];
  }

  if (v30 && ![collectionCopy moveBookmark:bookmarkCopy toFolderWithID:v21 orderIndex:v22])
  {
    v38 = 0;
  }

  else
  {
    if (!v19)
    {
      syncPosition = [bookmarkCopy syncPosition];

      if (!syncPosition)
      {
        v35 = [collectionCopy generateSyncPositionForBookmark:bookmarkCopy];
        [bookmarkCopy setSyncPosition:v35];

        [collectionCopy updateBookmarkSyncPositionIfNeeded:bookmarkCopy];
      }

      [collectionCopy markAttributesAsModified:4 forBookmark:bookmarkCopy];
    }

    if ([bookmarkCopy parentID] == v21 && (objc_msgSend(bookmarkCopy, "syncPosition"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqual:", v19), v36, v37))
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000BBDB4;
      v41[3] = &unk_1001366D8;
      v42 = dCopy;
      v43 = representationCopy;
      v38 = [collectionCopy updateSyncDataForBookmark:bookmarkCopy usingBlock:v41];
    }

    else
    {
      v38 = 1;
    }
  }

  return v38;
}

- (void)_handleDeletedRecordWithID:(id)d type:(id)type inCollection:(id)collection operationGroup:(id)group
{
  dCopy = d;
  typeCopy = type;
  collectionCopy = collection;
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    ckShortDescription = [dCopy ckShortDescription];
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543874;
    v23 = ckShortDescription;
    v24 = 2114;
    v25 = typeCopy;
    v26 = 2114;
    v27 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Did receive record delete for record %{public}@, type: %{public}@ with %{public}@", buf, 0x20u);
  }

  [(NSMutableSet *)self->_recordIDsToRefresh removeObject:dCopy];
  if ([typeCopy isEqualToString:@"TabGroupTabParticipantPresence"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedTabPresenceRecord:dCopy inCollection:collectionCopy operationGroup:groupCopy];
  }

  else if ([typeCopy isEqualToString:CKRecordTypeShare])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedShareRecordWithID:dCopy inCollection:collectionCopy operationGroup:groupCopy];
  }

  else if ([typeCopy isEqualToString:@"SyncRequirements"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedSyncRequirementRecordWithID:dCopy inCollection:collectionCopy operationGroup:groupCopy];
  }

  else if ([typeCopy isEqualToString:@"TabGroupParticipantExtras"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedTabGroupParticipantExtrasRecord:dCopy inCollection:collectionCopy operationGroup:groupCopy];
  }

  else if ([typeCopy isEqualToString:@"TabGroupParticipantPosition"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedTabGroupParticipantPositionRecord:dCopy inCollection:collectionCopy operationGroup:groupCopy];
  }

  else if ([typeCopy isEqualToString:@"TabGroupTabParticipantStatus"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedTabParticipantStatusRecord:dCopy inCollection:collectionCopy];
  }

  else if (+[WBSFeatureAvailability isNewTabAndWindowSyncingEnabled](WBSFeatureAvailability, "isNewTabAndWindowSyncingEnabled") && [typeCopy isEqualToString:@"Setting"])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleDeletedSettingRecord:dCopy inCollection:collectionCopy operationGroup:groupCopy];
  }

  else
  {
    itemConfigurations = [(CloudTabGroupSyncCoordinator *)self itemConfigurations];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000BC148;
    v20[3] = &unk_100133188;
    v21 = typeCopy;
    v18 = [itemConfigurations safari_firstObjectPassingTest:v20];

    if (v18)
    {
      recordName = [dCopy recordName];
      [(CloudBookmarkExpiredChangeTokenHandler *)self->_expiredChangeTokenHandler didReceiveRecordWithNameFromServer:recordName];
      [(CloudTabGroupSyncCoordinator *)self _removeBookmarkWithServerID:recordName inCollection:collectionCopy];
    }
  }
}

- (void)_setUpUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:(id)group
{
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    v11 = 138543362;
    v12 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Setting up _unknownRecordIDsToPendingAuxiliaryRecordSets with %{public}@", &v11, 0xCu);
  }

  p_unknownRecordIDsToPendingAuxiliaryRecordSets = &self->_unknownRecordIDsToPendingAuxiliaryRecordSets;
  if (self->_unknownRecordIDsToPendingAuxiliaryRecordSets)
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_FAULT))
    {
      sub_1000D0080();
    }
  }

  v9 = +[NSMutableDictionary dictionary];
  v10 = *p_unknownRecordIDsToPendingAuxiliaryRecordSets;
  *p_unknownRecordIDsToPendingAuxiliaryRecordSets = v9;
}

- (void)_clearUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:(id)group
{
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v13 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Clearing _unknownRecordIDsToPendingAuxiliaryRecordSets with %{public}@", buf, 0xCu);
  }

  v7 = self->_unknownRecordIDsToPendingAuxiliaryRecordSets;
  unknownRecordIDsToPendingAuxiliaryRecordSets = self->_unknownRecordIDsToPendingAuxiliaryRecordSets;
  self->_unknownRecordIDsToPendingAuxiliaryRecordSets = 0;

  if ([(NSMutableDictionary *)v7 count])
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0134(groupCopy);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BC41C;
    v10[3] = &unk_100136740;
    v10[4] = self;
    v11 = groupCopy;
    [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

- (id)_auxiliaryRecordKeyForRecordType:(id)type
{
  v3 = qword_100154070;
  typeCopy = type;
  if (v3 != -1)
  {
    sub_1000D01C0();
  }

  v5 = [qword_100154068 objectForKeyedSubscript:typeCopy];

  return v5;
}

- (void)_addAuxiliaryRecord:(id)record forUnknownRecordWithID:(id)d operationGroup:(id)group
{
  recordCopy = record;
  dCopy = d;
  groupCopy = group;
  if (dCopy)
  {
    _log2 = [(NSMutableDictionary *)self->_unknownRecordIDsToPendingAuxiliaryRecordSets objectForKeyedSubscript:dCopy];
    if (!_log2)
    {
      _log2 = +[NSMutableSet set];
      [(NSMutableDictionary *)self->_unknownRecordIDsToPendingAuxiliaryRecordSets setObject:_log2 forKeyedSubscript:dCopy];
    }

    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      recordID = [recordCopy recordID];
      ckShortDescription = [recordID ckShortDescription];
      ckShortDescription2 = [dCopy ckShortDescription];
      safari_logDescription = [groupCopy safari_logDescription];
      v17 = 138543874;
      v18 = ckShortDescription;
      v19 = 2114;
      v20 = ckShortDescription2;
      v21 = 2114;
      v22 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Adding pending auxiliary record with ID %{public}@ for unknown associated recordID: %{public}@ with %{public}@", &v17, 0x20u);
    }

    [_log2 addObject:recordCopy];
  }

  else
  {
    _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log2, OS_LOG_TYPE_ERROR))
    {
      sub_1000D01D4();
    }
  }
}

- (void)_handlePendingAuxiliaryRecordsIfNeededForMainRecordID:(id)d inCollection:(id)collection operationGroup:(id)group
{
  dCopy = d;
  collectionCopy = collection;
  groupCopy = group;
  v11 = [(NSMutableDictionary *)self->_unknownRecordIDsToPendingAuxiliaryRecordSets objectForKeyedSubscript:dCopy];
  v12 = [v11 copy];

  v33 = dCopy;
  [(NSMutableDictionary *)self->_unknownRecordIDsToPendingAuxiliaryRecordSets setObject:0 forKeyedSubscript:dCopy];
  if ([v12 count])
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    v32 = groupCopy;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 count];
      ckShortDescription = [dCopy ckShortDescription];
      safari_logDescription = [v32 safari_logDescription];
      *buf = 134218498;
      v41 = v14;
      groupCopy = v32;
      v42 = 2114;
      v43 = ckShortDescription;
      v44 = 2114;
      v45 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Did find %zd pending auxiliary records for associated main recordID: %{public}@ with %{public}@", buf, 0x20u);
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
      selfCopy = self;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
          if (os_log_type_enabled(_log2, OS_LOG_TYPE_DEFAULT))
          {
            [v21 recordID];
            v24 = v23 = v19;
            ckShortDescription2 = [v24 ckShortDescription];
            [v33 ckShortDescription];
            v27 = v26 = collectionCopy;
            safari_logDescription2 = [groupCopy safari_logDescription];
            *buf = 138543874;
            v41 = ckShortDescription2;
            v42 = 2114;
            v43 = v27;
            v44 = 2114;
            v45 = safari_logDescription2;
            _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_DEFAULT, "Handling pending auxiliary record %{public}@ for recordID: %{public}@ with %{public}@", buf, 0x20u);

            groupCopy = v32;
            collectionCopy = v26;

            v19 = v23;
            self = selfCopy;
          }

          v29 = [(CloudTabGroupSyncCoordinator *)self _didFetchRecord:v21 inCollection:collectionCopy operationGroup:groupCopy shouldGenerateUpdatedRecord:0];
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v18);
    }

    v12 = v30;
  }
}

- (void)_handleUpdatedSyncRequirementRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  if ([zoneID safari_isTabGroupSecondaryRecordZoneID])
  {
    safari_minimumSyncAPIVersion = [recordCopy safari_minimumSyncAPIVersion];
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      recordType = [recordCopy recordType];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138544130;
      v29 = recordType;
      v30 = 2114;
      v31 = recordID;
      v32 = 2048;
      v33 = safari_minimumSyncAPIVersion;
      v34 = 2114;
      v35 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Handling updated %{public}@ record with ID %{public}@ MinimumSyncAPIVersion: %zu, %{public}@", buf, 0x2Au);
    }

    v17 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:zoneID inCollection:collectionCopy operationGroup:groupCopy];
    if (!v17)
    {
      if (safari_minimumSyncAPIVersion <= 4)
      {
        v17 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v17 = [[CloudTabGroupRecordZoneMetadata alloc] initWithRecordZoneID:zoneID];
      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v17 forKeyedSubscript:zoneID];
    }

    if ([(CloudTabGroupRecordZoneMetadata *)v17 setUnsupportMinimumAPIVersion:safari_minimumSyncAPIVersion ofKinds:1 inCollection:collectionCopy])
    {
      if ([(CloudTabGroupRecordZoneMetadata *)v17 isMinimumAPIVersionUnsupported])
      {
        v18 = _log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          safari_logDescription2 = [groupCopy safari_logDescription];
          *buf = 138543874;
          v29 = recordID;
          v30 = 2048;
          v31 = safari_minimumSyncAPIVersion;
          v32 = 2114;
          v33 = safari_logDescription2;
          v20 = safari_logDescription2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "SyncRequirements record %{public}@ changed the zone version to %zu which is now unsupported with %{public}@", buf, 0x20u);
        }

        v27 = zoneID;
        bookmarksRecordZoneID = [NSArray arrayWithObjects:&v27 count:1];
        [(CloudTabGroupSyncCoordinator *)self _deleteRecordZoneWithIDs:bookmarksRecordZoneID inCollection:collectionCopy];
        v22 = v17;
      }

      else
      {
        _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
        {
          safari_logDescription3 = [groupCopy safari_logDescription];
          *buf = 138543874;
          v29 = recordID;
          v30 = 2048;
          v31 = safari_minimumSyncAPIVersion;
          v32 = 2114;
          v33 = safari_logDescription3;
          v25 = safari_logDescription3;
          _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "SyncRequirements record %{public}@ changed the zone version to %zu which is now supported with %{public}@", buf, 0x20u);
        }

        [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:zoneID];
        idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
        bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
        [(NSMutableSet *)idsOfRecordZonesToRefresh addObject:bookmarksRecordZoneID];
        v22 = 0;
      }

      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v22 forKeyedSubscript:zoneID];
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_handleDeletedSyncRequirementRecordWithID:(id)d inCollection:(id)collection operationGroup:(id)group
{
  dCopy = d;
  collectionCopy = collection;
  groupCopy = group;
  zoneID = [dCopy zoneID];
  if ([(__CFString *)zoneID safari_isTabGroupSecondaryRecordZoneID])
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      v20 = 138543874;
      v21 = @"SyncRequirements";
      v22 = 2114;
      v23 = dCopy;
      v24 = 2114;
      v25 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Handling deleted %{public}@ record with ID %{public}@, %{public}@", &v20, 0x20u);
    }

    v14 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:zoneID inCollection:collectionCopy operationGroup:groupCopy];
    v15 = v14;
    if (v14 && [v14 resetMinimumAPIVersionOfKinds:1 inCollection:collectionCopy])
    {
      v16 = _log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        safari_logDescription2 = [groupCopy safari_logDescription];
        v20 = 138543618;
        v21 = zoneID;
        v22 = 2114;
        v23 = safari_logDescription2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Record zone with ID %{public}@ has become supported now that the sync requirement was deleted with %{public}@", &v20, 0x16u);
      }

      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:zoneID];
      recordZoneNamesToMetadatas = self->_recordZoneNamesToMetadatas;
      zoneName = [(__CFString *)zoneID zoneName];
      [(NSMutableDictionary *)recordZoneNamesToMetadatas setObject:0 forKeyedSubscript:zoneName];

      [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:zoneID];
    }
  }
}

- (void)_handleUpdatedShareRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];

  v13 = [(CloudBookmarkStore *)self->_bookmarkStore rootRecordNameForSecondaryRecordZoneID:zoneID];
  if (v13)
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      ckShortDescription = [zoneID ckShortDescription];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543618;
      *&buf[4] = ckShortDescription;
      *&buf[12] = 2114;
      *&buf[14] = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Updating share record for zone: %{public}@ with %{public}@", buf, 0x16u);
    }

    if ([(CloudTabGroupSyncCoordinator *)self _handleMinimumAPIVersionChangeForCKShareRecord:recordCopy inCollection:collectionCopy operationGroup:groupCopy])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v29 = collectionCopy;
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
      v19 = recordCopy;
      v35 = v19;
      v20 = WeakRetained;
      v36 = v20;
      selfCopy = self;
      v42 = &v43;
      v21 = v29;
      v38 = v21;
      v22 = v13;
      v39 = v22;
      v27 = v18;
      v40 = v27;
      [v21 updateSyncDataForBookmarkWithRecordName:v22 excludeDeletedBookmarks:0 usingBlock:v34];
      v28 = [v21 bookmarkWithServerID:v22 excludeDeletedBookmarks:0];
      collectionCopy = v29;
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
          collectionCopy = v29;
        }
      }

      else
      {
        v23 = [[CKRecordID alloc] initWithRecordName:v22 zoneID:zoneID];
        [(CloudTabGroupSyncCoordinator *)self _addAuxiliaryRecord:v19 forUnknownRecordWithID:v23 operationGroup:groupCopy];
      }

LABEL_22:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v43, 8);
    }
  }
}

- (void)_handleDeletedShareRecordWithID:(id)d inCollection:(id)collection operationGroup:(id)group
{
  dCopy = d;
  collectionCopy = collection;
  groupCopy = group;
  bookmarkStore = self->_bookmarkStore;
  zoneID = [dCopy zoneID];
  v13 = [(CloudBookmarkStore *)bookmarkStore rootRecordNameForSecondaryRecordZoneID:zoneID];

  if (v13)
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Deleting share record for tab group: %{public}@ with %{public}@", buf, 0x16u);
    }

    zoneID2 = [dCopy zoneID];
    v17 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:zoneID2 inCollection:collectionCopy operationGroup:groupCopy];
    if ([v17 resetMinimumAPIVersionOfKinds:2 inCollection:collectionCopy])
    {
      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
      {
        safari_logDescription2 = [groupCopy safari_logDescription];
        *buf = 138543618;
        *&buf[4] = dCopy;
        *&buf[12] = 2114;
        *&buf[14] = safari_logDescription2;
        _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "Zone has become supported again after deleting CKShare record with ID %{public}@, %{public}@", buf, 0x16u);
      }

      [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:zoneID2];
      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:zoneID2];
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
    [collectionCopy updateSyncDataForBookmarkWithRecordName:v13 excludeDeletedBookmarks:0 usingBlock:v22];
    v20 = [collectionCopy bookmarkWithServerID:v13 excludeDeletedBookmarks:0];
    [collectionCopy saveMinimumAPISyncVersionOfDescendantItemsForItem:v20 includingAncestorItem:1];
    if ([*(*&buf[8] + 40) length])
    {
      [(CloudTabGroupSyncCoordinator *)self _updateDatabaseContainsCKShareRecordIfNeededInCollection:collectionCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained cloudTabGroupSyncCoordinator:self didUpdateShareForTabGroupWithUUID:*(*&buf[8] + 40)];
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)_handleMinimumAPIVersionChangeForCKShareRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  if ([zoneID safari_isTabGroupSecondaryRecordZoneID])
  {
    safari_minimumAPIVersion = [recordCopy safari_minimumAPIVersion];
    if (safari_minimumAPIVersion <= 4)
    {
      v15 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:zoneID inCollection:collectionCopy operationGroup:groupCopy];
      v16 = v15;
      if (!v15 || ![(CloudTabGroupRecordZoneMetadata *)v15 resetMinimumAPIVersionOfKinds:2 inCollection:collectionCopy])
      {
        v22 = 1;
        goto LABEL_21;
      }

      v36 = safari_minimumAPIVersion <= 4;
      v17 = _log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [zoneID ckShortDescription];
        v18 = log = v17;
        [groupCopy safari_logDescription];
        *buf = 138544130;
        v39 = v18;
        v40 = 2048;
        v41 = safari_minimumAPIVersion;
        v42 = 2114;
        v43 = zoneID;
        v45 = v44 = 2114;
        v19 = v45;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Will refresh zone with ID %{public}@ because MinimumAPIVersion for the zone changed to %zd from CKShare with ID %{public}@, %{public}@", buf, 0x2Au);

        v17 = log;
      }

      [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:zoneID];
      [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:zoneID];
      idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
      bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
      [(NSMutableSet *)idsOfRecordZonesToRefresh addObject:bookmarksRecordZoneID];
    }

    else
    {
      v36 = 0;
      v23 = _log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [recordID ckShortDescription];
        v25 = v31 = groupCopy;
        [v31 safari_logDescription];
        v26 = loga = _log;
        *buf = 134218754;
        v39 = safari_minimumAPIVersion;
        v40 = 2048;
        v41 = 4;
        v42 = 2114;
        v43 = v25;
        v44 = 2114;
        v45 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Record MinimumAPIVersion %zd is higher than the current API version %zd for record ID %{public}@ with %{public}@", buf, 0x2Au);

        _log = loga;
        groupCopy = v31;
      }

      v16 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:zoneID inCollection:collectionCopy operationGroup:groupCopy];
      if (!v16)
      {
        v16 = [[CloudTabGroupRecordZoneMetadata alloc] initWithRecordZoneID:zoneID];
        [(NSMutableDictionary *)self->_recordZoneIDsToMetadatas setObject:v16 forKeyedSubscript:zoneID];
      }

      if (![(CloudTabGroupRecordZoneMetadata *)v16 setUnsupportMinimumAPIVersion:safari_minimumAPIVersion ofKinds:2 inCollection:collectionCopy])
      {
        v22 = 0;
        goto LABEL_21;
      }

      v27 = v23;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        [zoneID ckShortDescription];
        v28 = v32 = v27;
        [groupCopy safari_logDescription];
        v29 = logb = _log;
        *buf = 138544130;
        v39 = v28;
        v40 = 2048;
        v41 = safari_minimumAPIVersion;
        v42 = 2114;
        v43 = zoneID;
        v44 = 2114;
        v45 = v29;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Will delete zone with ID %{public}@ locally because MinimumAPIVersion for the zone changed to %zd from CKShare with ID %{public}@, %{public}@", buf, 0x2Au);

        _log = logb;
        v27 = v32;
      }

      v37 = zoneID;
      bookmarksRecordZoneID = [NSArray arrayWithObjects:&v37 count:1];
      [(CloudTabGroupSyncCoordinator *)self _deleteRecordZoneWithIDs:bookmarksRecordZoneID inCollection:collectionCopy];
    }

    v22 = v36;
LABEL_21:

    goto LABEL_22;
  }

  v22 = 0;
LABEL_22:

  return v22;
}

- (void)_handleUpdatedTabPresenceRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  safari_recordName = [recordCopy safari_recordName];
  v12 = [safari_recordName hasPrefix:@"UserPresence_"];

  if (v12)
  {
    v13 = [recordCopy objectForKeyedSubscript:@"Participant"];
    v14 = [recordCopy objectForKeyedSubscript:@"TabGroupTab"];
    recordID = [v13 recordID];
    recordName = [recordID recordName];

    v33 = v14;
    recordID2 = [v14 recordID];
    recordName2 = [recordID2 recordName];

    bookmarkStore = self->_bookmarkStore;
    recordID3 = [recordCopy recordID];
    zoneID = [recordID3 zoneID];
    v21 = [(CloudBookmarkStore *)bookmarkStore rootRecordNameForSecondaryRecordZoneID:zoneID];

    if (v21)
    {
      v32 = recordName;
      _log = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
      {
        recordID4 = [recordCopy recordID];
        ckShortDescription = [recordID4 ckShortDescription];
        isExpired = [recordCopy isExpired];
        [groupCopy safari_logDescription];
        v26 = v30 = v13;
        *buf = 138544386;
        v37 = ckShortDescription;
        v38 = 2114;
        v39 = v32;
        v40 = 2114;
        v41 = recordName2;
        v42 = 1024;
        v43 = isExpired;
        v44 = 2114;
        v45 = v26;
        _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Did receive presence record with ID %{public}@ for participant: %{public}@, tabRecordName: %{public}@, isExpired: %d with %{public}@", buf, 0x30u);

        v13 = v30;
      }

      if ([recordCopy isExpired])
      {
        recordName = v32;
        [(CloudTabGroupSyncCoordinator *)self _deletePresenceForParticipantID:v32 inTabGroupWithRecordName:v21 collection:collectionCopy operationGroup:groupCopy];
      }

      else
      {
        v35 = 0;
        v31 = [collectionCopy currentTabServerIDPresenceForParticipant:v32 getTabGroupServerID:&v35];
        v27 = v35;
        [collectionCopy setPresenceInTabWithServerID:recordName2 tabGroupWithServerID:v21 forParticipant:v32];
        v28 = [NSMutableSet setWithObject:v21];
        v29 = [NSMutableSet setWithObject:recordName2];
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
        [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:v28 inCollection:collectionCopy];
        [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:v29 inCollection:collectionCopy];

        recordName = v32;
      }
    }
  }
}

- (void)_handleDeletedTabPresenceRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  recordName = [recordCopy recordName];
  v12 = [recordName safari_substringFromPrefix:@"UserPresence_"];
  if (v12)
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      ckShortDescription = [recordCopy ckShortDescription];
      safari_logDescription = [groupCopy safari_logDescription];
      v19 = 138543618;
      v20 = ckShortDescription;
      v21 = 2114;
      v22 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Did receive presence record deletion with ID %{public}@ with %{public}@", &v19, 0x16u);
    }

    bookmarkStore = self->_bookmarkStore;
    zoneID = [recordCopy zoneID];
    v18 = [(CloudBookmarkStore *)bookmarkStore rootRecordNameForSecondaryRecordZoneID:zoneID];

    if (v18)
    {
      [(CloudTabGroupSyncCoordinator *)self _deletePresenceForParticipantID:v12 inTabGroupWithRecordName:v18 collection:collectionCopy operationGroup:groupCopy];
    }
  }
}

- (void)_deletePresenceForParticipantID:(id)d inTabGroupWithRecordName:(id)name collection:(id)collection operationGroup:(id)group
{
  dCopy = d;
  nameCopy = name;
  collectionCopy = collection;
  v11 = [collectionCopy currentTabServerIDPresenceForParticipant:dCopy inTabGroupWithServerID:nameCopy];
  if ([v11 length])
  {
    [collectionCopy removePresenceForParticipant:dCopy inTabGroupWithServerID:nameCopy];
    [(NSMutableSet *)self->_tabGroupRecordNamesWithPendingPresenceUpdate addObject:nameCopy];
    [(NSMutableSet *)self->_tabRecordNamesWithPendingPresenceUpdate addObject:v11];
    v12 = [NSSet setWithObject:nameCopy];
    [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:v12 inCollection:collectionCopy];

    v13 = [NSSet setWithObject:v11];
    [(CloudTabGroupSyncCoordinator *)self _dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:v13 inCollection:collectionCopy];
  }
}

- (void)_dispatchPresenceUpdatesIfNeededForTabGroupsWithRecordNames:(id)names inCollection:(id)collection
{
  namesCopy = names;
  collectionCopy = collection;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = namesCopy;
    v9 = namesCopy;
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
            v15 = [collectionCopy bookmarkWithServerID:v14 excludeDeletedBookmarks:1];
            v16 = v15;
            if (v15)
            {
              uUID = [v15 UUID];
              [WeakRetained cloudTabGroupSyncCoordinator:self activeParticipantsDidUpdateInTabGroupWithUUID:uUID];

              [(NSMutableSet *)self->_tabGroupRecordNamesWithPendingPresenceUpdate removeObject:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    namesCopy = v18;
  }
}

- (void)_dispatchPresenceUpdatesIfNeededForTabsWithRecordNames:(id)names inCollection:(id)collection
{
  namesCopy = names;
  collectionCopy = collection;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = namesCopy;
    v9 = namesCopy;
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
            v15 = [collectionCopy bookmarkWithServerID:v14 excludeDeletedBookmarks:1];
            v16 = v15;
            if (v15)
            {
              uUID = [v15 UUID];
              [WeakRetained cloudTabGroupSyncCoordinator:self activeParticipantsDidUpdateInTabWithUUID:uUID];

              [(NSMutableSet *)self->_tabRecordNamesWithPendingPresenceUpdate removeObject:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    namesCopy = v18;
  }
}

- (void)_updateDatabaseContainsCKShareRecordIfNeededInCollection:(id)collection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BEC5C;
  v4[3] = &unk_100136818;
  collectionCopy = collection;
  v3 = collectionCopy;
  [v3 performDatabaseUpdatesWithTransaction:v4 secureDelete:0];
}

- (void)_removeUserSpecificKeysInTabGroupRecordIfNeeded:(id)needed forBookmark:(id)bookmark configuration:(id)configuration inCollection:(id)collection
{
  neededCopy = needed;
  bookmarkCopy = bookmark;
  configurationCopy = configuration;
  collectionCopy = collection;
  if (![neededCopy safari_isInPrivateDatabase] || (objc_msgSend(collectionCopy, "syncDataForBookmark:", bookmarkCopy), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "auxiliaryRecordForKey:", tabGroupParticipantExtrasRecordAuxiliaryRecordKey), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v32 = bookmarkCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    primaryCKRecordKeysToClear = [configurationCopy primaryCKRecordKeysToClear];
    v17 = [primaryCKRecordKeysToClear countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(primaryCKRecordKeysToClear);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = [configurationCopy valueTransformerForAttributeKey:v21];
          attributeRequiresEncryption = [v22 attributeRequiresEncryption];

          if (attributeRequiresEncryption)
          {
            encryptedValues = [neededCopy encryptedValues];
            [encryptedValues setObject:0 forKeyedSubscript:v21];
          }

          else
          {
            [neededCopy setObject:0 forKeyedSubscript:v21];
          }
        }

        v18 = [primaryCKRecordKeysToClear countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v18);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    primaryCKRecordGenerationKeysToClear = [configurationCopy primaryCKRecordGenerationKeysToClear];
    v26 = [primaryCKRecordGenerationKeysToClear countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(primaryCKRecordGenerationKeysToClear);
          }

          v30 = [configurationCopy generationKeyForKey:*(*(&v38 + 1) + 8 * j)];
          [neededCopy safari_setGeneration:0 forKey:v30];
        }

        v27 = [primaryCKRecordGenerationKeysToClear countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v27);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000BEF7C;
    v33[3] = &unk_100136840;
    v34 = configurationCopy;
    v35 = v31;
    v36 = collectionCopy;
    v37 = neededCopy;
    bookmarkCopy = v32;
    [v36 updateSyncDataForBookmark:v32 usingBlock:v33];
  }
}

- (id)_handleUpdatedTabGroupParticipantExtrasRecord:(id)record inCollection:(id)collection shouldGenerateUpdatedRecord:(BOOL)updatedRecord operationGroup:(id)group
{
  updatedRecordCopy = updatedRecord;
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v16 = [zoneID isEqual:bookmarksRecordZoneID];

  if (!v16)
  {
    v26 = 0;
    goto LABEL_22;
  }

  [collectionCopy setHasSharedTabGroups];
  recordName = [recordID recordName];
  v17 = [recordName safari_substringFromPrefix:@"TabGroupExtras_"];
  if (v17)
  {
    oslog = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      recordType = [recordCopy recordType];
      *buf = 138543874;
      *&buf[4] = recordType;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2114;
      v45 = groupCopy;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Handling updated %{public}@ record for tabGroupRecordName %{public}@ with %{public}@", buf, 0x20u);
    }

    if (![(CloudTabGroupSyncCoordinator *)self _handleMinimumAPIVersionChangeForTabGroupParticipantExtrasRecord:recordCopy inCollection:collectionCopy operationGroup:groupCopy])
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
    v33 = collectionCopy;
    v34 = v17;
    v19 = oslog;
    v35 = v19;
    v20 = recordCopy;
    v36 = v20;
    v28 = v33;
    v29 = groupCopy;
    v37 = v29;
    selfCopy = self;
    if ([v33 performDatabaseUpdatesWithTransaction:v32 secureDelete:0])
    {
      if (([*(*&buf[8] + 40) needsSyncUpdate] & updatedRecordCopy) != 1)
      {
        v26 = 0;
        goto LABEL_19;
      }

      v21 = v19;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        recordType2 = [v20 recordType];
        safari_logDescription = [v29 safari_logDescription];
        *v40 = 138543618;
        v41 = recordType2;
        v42 = 2114;
        v43 = safari_logDescription;
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

- (void)_handleDeletedTabGroupParticipantExtrasRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  zoneID = [recordCopy zoneID];
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v13 = [zoneID isEqual:bookmarksRecordZoneID];

  if (v13)
  {
    recordName = [recordCopy recordName];
    v15 = [recordName safari_substringFromPrefix:@"TabGroupExtras_"];
    if (v15)
    {
      _log = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v31 = @"TabGroupParticipantExtras";
        v32 = 2114;
        v33 = v15;
        v34 = 2114;
        v35 = groupCopy;
        _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Handling deleted %{public}@ record for tabGroupRecordName %{public}@ with %{public}@", buf, 0x20u);
      }

      [collectionCopy updateSyncDataForBookmarkWithRecordName:v15 excludeDeletedBookmarks:1 usingBlock:&stru_100136918];
      v17 = [CKRecordZoneID safari_tabGroupSecondaryRecordZoneNameWithRootRecordName:v15];
      v18 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneName:v17 inCollection:collectionCopy operationGroup:groupCopy];
      if ([v18 resetMinimumAPIVersionOfKinds:4 inCollection:collectionCopy])
      {
        recordZoneIDsToMetadatas = self->_recordZoneIDsToMetadatas;
        recordZoneID = [v18 recordZoneID];
        [(NSMutableDictionary *)recordZoneIDsToMetadatas setObject:0 forKeyedSubscript:recordZoneID];

        recordZoneNamesToMetadatas = self->_recordZoneNamesToMetadatas;
        recordZoneID2 = [v18 recordZoneID];
        [recordZoneID2 zoneName];
        v23 = v29 = recordName;
        [(NSMutableDictionary *)recordZoneNamesToMetadatas setObject:0 forKeyedSubscript:v23];

        idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
        recordZoneID3 = [v18 recordZoneID];
        [(NSMutableSet *)idsOfRecordZonesToRefresh addObject:recordZoneID3];

        v26 = self->_idsOfRecordZonesToRefresh;
        bookmarksRecordZoneID2 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
        v28 = v26;
        recordName = v29;
        [(NSMutableSet *)v28 addObject:bookmarksRecordZoneID2];
      }
    }
  }
}

- (BOOL)_handleMinimumAPIVersionChangeForTabGroupParticipantExtrasRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v14 = [recordName safari_substringFromPrefix:@"TabGroupExtras_"];
  if ([v14 length])
  {
    v45 = recordID;
    v43 = [recordCopy objectForKeyedSubscript:@"TabGroup"];
    recordID2 = [v43 recordID];
    zoneID = [recordID2 zoneID];

    zoneName = [zoneID zoneName];
    v18 = zoneName;
    v44 = recordName;
    if (zoneName)
    {
      v19 = zoneName;
    }

    else
    {
      v19 = [CKRecordZoneID safari_tabGroupSecondaryRecordZoneNameWithRootRecordName:v14];
    }

    v47 = v19;

    safari_minimumAPIVersion = [recordCopy safari_minimumAPIVersion];
    v42 = safari_minimumAPIVersion <= 4;
    v46 = _log;
    if (safari_minimumAPIVersion <= 4)
    {
      v22 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:zoneID inCollection:collectionCopy operationGroup:groupCopy];
      if ([(CloudTabGroupRecordZoneMetadata *)v22 resetMinimumAPIVersionOfKinds:4 inCollection:collectionCopy])
      {
        v23 = v46;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          ckShortDescription = [zoneID ckShortDescription];
          [groupCopy safari_logDescription];
          *buf = 138543874;
          v50 = ckShortDescription;
          v51 = 2048;
          v52 = safari_minimumAPIVersion;
          v54 = v53 = 2114;
          v25 = v54;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Will refresh zone with ID %{public}@ because MinimumAPIVersion for the zone changed to %zd with %{public}@", buf, 0x20u);
        }

        [(NSMutableSet *)self->_idsOfRecordZonesToRefresh addObject:zoneID];
        idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
        bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
        [(NSMutableSet *)idsOfRecordZonesToRefresh addObject:bookmarksRecordZoneID];
        goto LABEL_23;
      }
    }

    else
    {
      v28 = _log;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        ckShortDescription2 = [v45 ckShortDescription];
        [groupCopy safari_logDescription];
        v31 = v40 = groupCopy;
        *buf = 134218754;
        v50 = safari_minimumAPIVersion;
        v51 = 2048;
        v52 = 4;
        v53 = 2114;
        v54 = ckShortDescription2;
        v55 = 2114;
        v56 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Record MinimumAPIVersion %zd is higher than the current API version %zd for record ID %{public}@ with %{public}@", buf, 0x2Au);

        groupCopy = v40;
      }

      v22 = [(CloudTabGroupSyncCoordinator *)self _metadataForRecordZoneID:zoneID orRecordZoneName:v47 inCollection:collectionCopy operationGroup:groupCopy];
      if (!v22)
      {
        v32 = [CloudTabGroupRecordZoneMetadata alloc];
        if (zoneID)
        {
          v22 = [(CloudTabGroupRecordZoneMetadata *)v32 initWithRecordZoneID:zoneID];
          recordZoneIDsToMetadatas = self->_recordZoneIDsToMetadatas;
          v34 = v22;
          v35 = zoneID;
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

      if ([(CloudTabGroupRecordZoneMetadata *)v22 setUnsupportMinimumAPIVersion:safari_minimumAPIVersion ofKinds:4 inCollection:collectionCopy, v40])
      {
        v36 = v28;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          ckShortDescription3 = [zoneID ckShortDescription];
          [groupCopy safari_logDescription];
          v38 = v41 = groupCopy;
          *buf = 138543874;
          v50 = ckShortDescription3;
          v51 = 2048;
          v52 = safari_minimumAPIVersion;
          v53 = 2114;
          v54 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Will delete zone with ID %{public}@ locally because MinimumAPIVersion for the zone changed to %zd with %{public}@", buf, 0x20u);

          groupCopy = v41;
        }

        v48 = zoneID;
        bookmarksRecordZoneID = [NSArray arrayWithObjects:&v48 count:1];
        [(CloudTabGroupSyncCoordinator *)self _deleteRecordZoneWithIDs:bookmarksRecordZoneID inCollection:collectionCopy];
LABEL_23:
        recordName = v44;

LABEL_25:
        v20 = v42;

        recordID = v45;
        _log = v46;
        goto LABEL_26;
      }
    }

    recordName = v44;
    goto LABEL_25;
  }

  v20 = 0;
LABEL_26:

  return v20;
}

- (id)_handleUpdatedTabGroupParticipantPositionRecord:(id)record inCollection:(id)collection shouldGenerateUpdatedRecord:(BOOL)updatedRecord operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v15 = [zoneID isEqual:bookmarksRecordZoneID];

  if (v15)
  {
    [collectionCopy setHasSharedTabGroups];
    recordName = [recordID recordName];
    v17 = [recordName safari_substringFromPrefix:@"TabGroupPosition_"];
    if (v17)
    {
      _log = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
      {
        recordType = [recordCopy recordType];
        *buf = 138543874;
        *&buf[4] = recordType;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        *&buf[22] = 2114;
        v32 = groupCopy;
        _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Handling updated %{public}@ record for tabGroupRecordName %{public}@ with %{public}@", buf, 0x20u);
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
      v24 = collectionCopy;
      v25 = v17;
      v26 = recordCopy;
      selfCopy = self;
      v20 = groupCopy;
      v28 = v20;
      v29 = recordID;
      if (([v24 performDatabaseUpdatesWithTransaction:v23 secureDelete:0] & 1) == 0)
      {
        _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(_log2, OS_LOG_TYPE_ERROR))
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

- (void)_handleDeletedTabGroupParticipantPositionRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  zoneID = [recordCopy zoneID];
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v13 = [zoneID isEqual:bookmarksRecordZoneID];

  if (v13)
  {
    recordName = [recordCopy recordName];
    v15 = [recordName safari_substringFromPrefix:@"TabGroupPosition_"];
    if (v15)
    {
      _log = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
      {
        v17 = 138543874;
        v18 = @"TabGroupParticipantPosition";
        v19 = 2114;
        v20 = v15;
        v21 = 2114;
        v22 = groupCopy;
        _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Handling deleted %{public}@ record for tabGroupRecordName %{public}@ with %{public}@", &v17, 0x20u);
      }

      [collectionCopy updateSyncDataForBookmarkWithRecordName:v15 excludeDeletedBookmarks:1 usingBlock:&stru_100136960];
    }
  }
}

- (id)_handleUpdatedTabParticipantStatusRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v14 = [zoneID isEqual:bookmarksRecordZoneID];

  if (v14)
  {
    recordName = [recordID recordName];
    v16 = [recordName safari_substringFromPrefix:@"TabReadStatus_"];
    if (v16)
    {
      v17 = [collectionCopy bookmarkWithServerID:v16 excludeDeletedBookmarks:1];
      v18 = v17;
      if (v17)
      {
        lastReadGeneration = [v17 lastReadGeneration];
        v20 = [recordCopy safari_generationForKey:@"ReadStatus"];
        if ([lastReadGeneration compare:v20] == 1)
        {
          [recordCopy safari_setGeneration:lastReadGeneration forKey:{@"ReadStatus", lastReadGeneration}];
          v21 = recordCopy;
        }

        else
        {
          [v18 setLastReadGeneration:{v20, lastReadGeneration}];
          [collectionCopy saveBookmark:v18 incrementGenerations:0];
          v21 = 0;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000C1370;
        v29[3] = &unk_1001368B0;
        v30 = recordCopy;
        v26 = [collectionCopy updateSyncDataForBookmark:v18 usingBlock:v29];

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
        v23 = [recordCopy objectForKeyedSubscript:@"TabGroupTab"];
        recordID2 = [v23 recordID];
        [(CloudTabGroupSyncCoordinator *)self _addAuxiliaryRecord:recordCopy forUnknownRecordWithID:recordID2 operationGroup:groupCopy];

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

- (void)_handleDeletedTabParticipantStatusRecord:(id)record inCollection:(id)collection
{
  recordCopy = record;
  collectionCopy = collection;
  zoneID = [recordCopy zoneID];
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v9 = [zoneID isEqual:bookmarksRecordZoneID];

  if (v9)
  {
    recordName = [recordCopy recordName];
    v11 = [recordName safari_substringFromPrefix:@"TabReadStatus_"];
    if (v11)
    {
      [collectionCopy updateSyncDataForBookmarkWithRecordName:v11 excludeDeletedBookmarks:1 usingBlock:&stru_100136980];
    }
  }
}

- (id)_handleUpdatedSettingRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  v11 = objc_opt_class();
  v12 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Parent"];
  v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Parent" ofType:v11 fromRecord:recordCopy withTransformer:v12];

  v14 = [collectionCopy bookmarkIDForServerID:v13 excludeDeletedBookmarks:0];
  if (v14 == 0x7FFFFFFF)
  {
    v15 = [recordCopy objectForKeyedSubscript:@"Parent"];
    recordID = [v15 recordID];
    [(CloudTabGroupSyncCoordinator *)self _addAuxiliaryRecord:recordCopy forUnknownRecordWithID:recordID operationGroup:groupCopy];

    v17 = 0;
  }

  else
  {
    v18 = v14;
    v19 = [(CloudTabGroupSyncCoordinator *)self _fieldFromSettingsRecord:recordCopy];
    if ([collectionCopy saveSettings:v19 inParentWithID:v18 parentServerID:v13])
    {
      allKeys = [v19 allKeys];
      firstObject = [allKeys firstObject];

      v22 = [v19 objectForKeyedSubscript:firstObject];
      value = [v22 value];
      [collectionCopy resetModifiedStateForSetting:firstObject withRecord:recordCopy value:value forBookmarkWithID:v18];

      v24 = [collectionCopy settingsForBookmarkWithID:v18];
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
      selfCopy = self;
      v31 = collectionCopy;
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

- (id)_fieldFromSettingsRecord:(id)record
{
  recordCopy = record;
  v5 = objc_opt_class();
  v6 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"SettingName"];
  v7 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"SettingName" ofType:v5 fromRecord:recordCopy withTransformer:v6];

  _supportedSettingsRecordTypes = [(CloudTabGroupSyncCoordinator *)self _supportedSettingsRecordTypes];
  v9 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Value"];
  v10 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Value" ofTypes:_supportedSettingsRecordTypes fromRecord:recordCopy withTransformer:v9];

  v17 = v7;
  v11 = [WBSCRDTField alloc];
  v12 = [recordCopy safari_generationForKey:@"Value"];

  deviceIdentifier = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  v14 = [v11 initWithValue:v10 generation:v12 deviceIdentifier:deviceIdentifier];
  v18 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  return v15;
}

- (id)_settingsTransformerForKey:(id)key
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1B38;
  block[3] = &unk_100131408;
  block[4] = self;
  v3 = qword_100154080;
  keyCopy = key;
  if (v3 != -1)
  {
    dispatch_once(&qword_100154080, block);
  }

  v5 = [qword_100154078 objectForKeyedSubscript:keyCopy];

  return v5;
}

- (void)_handleDeletedSettingRecord:(id)record inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C1D6C;
  v9[3] = &unk_1001369D0;
  collectionCopy = collection;
  v11 = recordCopy;
  v7 = recordCopy;
  v8 = collectionCopy;
  [v8 performDatabaseUpdatesWithTransaction:v9 secureDelete:0];
}

- (BOOL)_isExpiredChangeTokenError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_7;
  }

  if ([errorCopy safari_isCloudKitExpiredChangeTokenError])
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

  userInfo = [v5 userInfo];
  v8 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v10 = [v8 objectForKeyedSubscript:bookmarksRecordZoneID];

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

- (void)_prepareForSyncDownInOperationGroup:(id)group
{
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    v7 = 138543362;
    v8 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Will prepare for sync down with %{public}@", &v7, 0xCu);
  }

  [(CloudTabGroupSyncCoordinator *)self _setUpRecordZoneIDsToPendingServerChangeTokens];
  [(CloudTabGroupSyncCoordinator *)self _setUpUnknownRecordIDsToPendingAuxiliaryRecordSetsInOperationGroup:groupCopy];
}

- (void)_setUpRecordZoneIDsToPendingServerChangeTokens
{
  v3 = +[NSMutableDictionary dictionary];
  recordZoneIDsToPendingServerChangeTokens = self->_recordZoneIDsToPendingServerChangeTokens;
  self->_recordZoneIDsToPendingServerChangeTokens = v3;
}

- (void)_saveRecordZoneServerChangeTokensInCollection:(id)collection operationGroup:(id)group ifSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  collectionCopy = collection;
  groupCopy = group;
  v10 = self->_recordZoneIDsToPendingServerChangeTokens;
  recordZoneIDsToPendingServerChangeTokens = self->_recordZoneIDsToPendingServerChangeTokens;
  self->_recordZoneIDsToPendingServerChangeTokens = 0;

  if (successfulCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C2374;
    v12[3] = &unk_100135DC0;
    v13 = v10;
    selfCopy = self;
    v15 = groupCopy;
    [collectionCopy updateDatabaseSyncDataUsingBlock:v12];
  }
}

- (void)_performSyncDownAfterProcessingChangesInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v28 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Will begin sync down with %{public}@", buf, 0xCu);
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
  v13 = groupCopy;
  v24 = v13;
  v14 = collectionCopy;
  v25 = v14;
  v26 = handlerCopy;
  v15 = handlerCopy;
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

- (void)_continuePostSyncDownHousekeepingInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  if ([(NSMutableSet *)self->_idsOfRecordZonesToRefresh count])
  {
    [(CloudTabGroupSyncCoordinator *)self _fetchRecordZonesToRefreshInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
  }

  else if ([(NSMutableSet *)self->_recordIDsToRefresh count])
  {
    [(CloudTabGroupSyncCoordinator *)self _fetchRecordsToRefreshInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
  }

  else if ([(NSMutableSet *)self->_auxiliaryRecordIDsToDelete count])
  {
    [(CloudTabGroupSyncCoordinator *)self _beginDeletingAuxiliaryRecordsInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
  }

  else
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      v13 = 138543362;
      v14 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Post sync down housekeeping done with %{public}@", &v13, 0xCu);
    }

    [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:0 error:0 inOperationGroup:groupCopy completionHandler:handlerCopy];
  }
}

- (void)_performSyncDownInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  databaseSyncData = [collectionCopy databaseSyncData];
  container = [(CloudBookmarkStore *)self->_bookmarkStore container];
  privateCloudDatabase = [container privateCloudDatabase];

  lastPrivateDatabaseServerChangeToken = [databaseSyncData lastPrivateDatabaseServerChangeToken];
  container2 = [(CloudBookmarkStore *)self->_bookmarkStore container];
  sharedCloudDatabase = [container2 sharedCloudDatabase];

  lastSharedDatabaseServerChangeToken = [databaseSyncData lastSharedDatabaseServerChangeToken];
  v17 = +[NSMutableSet set];
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    [groupCopy safari_logDescription];
    v28 = handlerCopy;
    v19 = databaseSyncData;
    v21 = v20 = privateCloudDatabase;
    *buf = 138543618;
    v39 = lastPrivateDatabaseServerChangeToken;
    v40 = 2114;
    v41 = v21;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Performing sync down with last server change token in private database: %{public}@ with %{public}@", buf, 0x16u);

    privateCloudDatabase = v20;
    databaseSyncData = v19;
    handlerCopy = v28;
  }

  [(CloudTabGroupSyncCoordinator *)self _prepareForSyncDownInOperationGroup:groupCopy];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000C2D38;
  v30[3] = &unk_100136AC0;
  v31 = v17;
  selfCopy = self;
  v33 = collectionCopy;
  v34 = groupCopy;
  v36 = sharedCloudDatabase;
  v37 = handlerCopy;
  v35 = lastSharedDatabaseServerChangeToken;
  v22 = sharedCloudDatabase;
  v23 = lastSharedDatabaseServerChangeToken;
  v24 = handlerCopy;
  v25 = groupCopy;
  v26 = collectionCopy;
  v27 = v17;
  [(CloudTabGroupSyncCoordinator *)self _fetchChangedRecordZonesSinceServerChangeToken:lastPrivateDatabaseServerChangeToken inDatabase:privateCloudDatabase collection:v26 operationGroup:v25 completionHandler:v30];
}

- (void)_fetchChangedRecordZonesSinceServerChangeToken:(id)token inDatabase:(id)database collection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  tokenCopy = token;
  databaseCopy = database;
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  if ([(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled])
  {
    bookmarkStore = self->_bookmarkStore;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000C34F4;
    v21[3] = &unk_100136B88;
    v21[4] = self;
    v22 = groupCopy;
    v25 = handlerCopy;
    v23 = databaseCopy;
    v24 = collectionCopy;
    [(CloudBookmarkStore *)bookmarkStore fetchChangesSinceServerChangeToken:tokenCopy inDatabase:v23 operationGroup:v22 completionHandler:v21];
  }

  else
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v27 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);
    }

    v20 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);
  }
}

- (void)_handleDeletedRecordZoneIDs:(id)ds inCollection:(id)collection
{
  dsCopy = ds;
  collectionCopy = collection;
  [(CloudTabGroupSyncCoordinator *)self _deleteRecordZoneWithIDs:dsCopy inCollection:collectionCopy];
  [CloudTabGroupRecordZoneMetadata removeMetadataForRecordZoneIDs:dsCopy inCollection:collectionCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = dsCopy;
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
        zoneName = [v13 zoneName];
        [(NSMutableDictionary *)recordZoneNamesToMetadatas setObject:0 forKeyedSubscript:zoneName];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)_deleteRecordZoneWithIDs:(id)ds inCollection:(id)collection
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C4158;
  v8[3] = &unk_100135DC0;
  dsCopy = ds;
  selfCopy = self;
  collectionCopy = collection;
  v6 = collectionCopy;
  v7 = dsCopy;
  [v6 updateDatabaseSyncDataUsingBlock:v8];
  [(CloudTabGroupSyncCoordinator *)self _updateDatabaseContainsCKShareRecordIfNeededInCollection:v6];
}

- (void)_performSyncDownForRecordZoneIDs:(id)ds perRecordZoneConfigurations:(id)configurations inDatabase:(id)database collection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  dsCopy = ds;
  configurationsCopy = configurations;
  databaseCopy = database;
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  LOBYTE(group) = [(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled];
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  v16 = _log;
  if (group)
  {
    v17 = [dsCopy count];
    v18 = v16;
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (v19)
      {
        v20 = [dsCopy valueForKey:@"ckShortDescription"];
        v21 = [v20 componentsJoinedByString:{@", "}];
        safari_logDescription = [groupCopy safari_logDescription];
        *buf = 138544130;
        *&buf[4] = v21;
        *&buf[12] = 2114;
        *&buf[14] = databaseCopy;
        *&buf[22] = 2114;
        v67 = configurationsCopy;
        v68 = 2114;
        v69 = safari_logDescription;
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
              [v27 syncCoordinator:self didBeginSyncDownWithConfigurations:configurationsCopy];
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
      v58 = groupCopy;
      selfCopy = self;
      v60 = collectionCopy;
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
      selfCopy2 = self;
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
      v44 = handlerCopy;
      v42 = dsCopy;
      v43 = configurationsCopy;
      [(CloudBookmarkStore *)bookmarkStore fetchRecordZoneChangesInZonesWithIDs:v42 perZoneConfigurations:v43 inDatabase:databaseCopy operationGroup:v41 recordWasChangedBlock:v56 recordWithIDWasDeletedBlock:v53 recordZoneFetchCompletionBlock:v46 completionHandler:v38];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v19)
      {
        safari_logDescription2 = [groupCopy safari_logDescription];
        *buf = 138543618;
        *&buf[4] = databaseCopy;
        *&buf[12] = 2114;
        *&buf[14] = safari_logDescription2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No record zone IDs to update in database %{public}@ with %{public}@", buf, 0x16u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription3 = [groupCopy safari_logDescription];
      *buf = 138543362;
      *&buf[4] = safari_logDescription3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);
    }

    v18 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v18);
  }
}

- (void)_handleExpiredChangeTokenError:(id)error collection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (self->_expiredChangeTokenHandler)
  {
    (*(handlerCopy + 2))(handlerCopy, error);
  }

  else
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v23 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Change token is expired; trying a full sync down with %{public}@", buf, 0xCu);
    }

    v16 = [[CloudTabGroupExpiredChangeTokenHandler alloc] initWithCollection:collectionCopy];
    expiredChangeTokenHandler = self->_expiredChangeTokenHandler;
    self->_expiredChangeTokenHandler = v16;

    [(CloudBookmarkExpiredChangeTokenHandler *)self->_expiredChangeTokenHandler collectAllRecordNames];
    [collectionCopy updateDatabaseSyncDataUsingBlock:&stru_100136D20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C5598;
    v18[3] = &unk_100136A48;
    v18[4] = self;
    v19 = collectionCopy;
    v20 = groupCopy;
    v21 = v13;
    [(CloudTabGroupSyncCoordinator *)self _performSyncDownInCollection:v19 operationGroup:v20 completionHandler:v18];
  }
}

- (void)_didCompleteSyncDownAfterExpiredChangeTokenErrorWithCollection:(id)collection operationGroup:(id)group
{
  collectionCopy = collection;
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v25 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Successfully completed full sync down after expired change token error with %{public}@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  namesOfLocalRecordsToDelete = [(CloudBookmarkExpiredChangeTokenHandler *)self->_expiredChangeTokenHandler namesOfLocalRecordsToDelete];
  v11 = [namesOfLocalRecordsToDelete countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(namesOfLocalRecordsToDelete);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
        if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
        {
          safari_logDescription2 = [groupCopy safari_logDescription];
          *buf = v19;
          v25 = v16;
          v26 = 2114;
          v27 = safari_logDescription2;
          _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "Record %{public}@ was not seen during sync down after expired change token error; marking it for deletion with %{public}@", buf, 0x16u);
        }

        [(CloudTabGroupSyncCoordinator *)self _removeBookmarkWithServerID:v16 inCollection:collectionCopy];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [namesOfLocalRecordsToDelete countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }
}

- (void)_saveAssetsForBookmarkIfPresent:(id)present onRecord:(id)record withConfiguration:(id)configuration inCollection:(id)collection operationGroup:(id)group
{
  presentCopy = present;
  recordCopy = record;
  groupCopy = group;
  configurationCopy = configuration;
  uUID = [presentCopy UUID];
  v16 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"BackgroundImage" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];

  v17 = +[NSFileManager defaultManager];
  v18 = [v17 safari_startPageBackgroundImageFileURLForIdentifier:uUID];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000C59B8;
  v23[3] = &unk_100136D48;
  v23[4] = self;
  v24 = groupCopy;
  v25 = uUID;
  v26 = presentCopy;
  v27 = recordCopy;
  v19 = recordCopy;
  v20 = presentCopy;
  v21 = uUID;
  v22 = groupCopy;
  [(CloudTabGroupSyncCoordinator *)self _saveAssetAtURL:v16 toURL:v18 operationGroup:v22 completionHandler:v23];
}

- (void)_saveAssetAtURL:(id)l toURL:(id)rL operationGroup:(id)group completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  if (rLCopy)
  {
    v12 = +[NSFileManager defaultManager];
    v13 = os_transaction_create();
    assetSavingQueue = self->_assetSavingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C5E9C;
    block[3] = &unk_100133B70;
    v19 = v13;
    v20 = lCopy;
    v21 = v12;
    v22 = rLCopy;
    v23 = handlerCopy;
    v15 = v12;
    v16 = v13;
    dispatch_async(assetSavingQueue, block);
  }

  else
  {
    v17 = [NSError safari_errorWithDomain:CKErrorDomain code:35 privacyPreservingDescription:@"Asset destination URL was not available."];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

- (void)_didFinishSyncingWithResult:(int64_t)result error:(id)error inOperationGroup:(id)group completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v12 = [(CloudTabGroupSyncCoordinator *)self _reportSyncOperationFinishedWithError:errorCopy result:result inOperationGroup:group];
  v15 = handlerCopy;
  v13 = errorCopy;
  v14 = handlerCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (int64_t)_syncResultForError:(id)error
{
  errorCopy = error;
  if ([errorCopy safari_isCloudKitMissingZoneError])
  {
    v5 = 2;
  }

  else if ([errorCopy safari_isMigrationStateRecordChangedError])
  {
    v5 = 1;
  }

  else if ([errorCopy safari_isCloudKitPartialFailureError])
  {
    bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    if ([errorCopy safari_containsCloudKitMissingZoneErrorForRecordZoneID:bookmarksRecordZoneID])
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else if (errorCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didFailToSyncWithError:(id)error inCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  errorCopy = error;
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000D0898();
  }

  if ([errorCopy safari_isOrContainsCloudKitMissingManateeIdentityError])
  {
    [(CloudTabGroupSyncCoordinator *)self _handleICloudKeychainResetInCollection:collectionCopy operationGroup:groupCopy completionHandler:handlerCopy];
  }

  else
  {
    v15 = [(CloudTabGroupSyncCoordinator *)self _syncResultForError:errorCopy];
    localMigrationState = [collectionCopy localMigrationState];
    if ((v15 - 1) <= 1 && (localMigrationState - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      [collectionCopy resetDeviceIdentifier];
      [collectionCopy setLocalMigrationState:0 generateDeviceIdentifierIfNeeded:1];
    }

    [(CloudTabGroupSyncCoordinator *)self _didFinishSyncingWithResult:v15 error:errorCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
  }
}

- (id)_createCollectionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  collectionType = [configurationCopy collectionType];
  if (collectionType)
  {
    if (collectionType != 1)
    {
      goto LABEL_6;
    }

    v6 = WebBookmarkTabCollection_ptr;
  }

  else
  {
    v6 = WebBookmarkCollection_ptr;
  }

  v3 = [objc_alloc(*v6) initWithConfiguration:configurationCopy];
LABEL_6:

  return v3;
}

- (id)_configurationForRecord:(id)record
{
  recordCopy = record;
  itemConfigurations = [(CloudTabGroupSyncCoordinator *)self itemConfigurations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C634C;
  v9[3] = &unk_100133188;
  v10 = recordCopy;
  v6 = recordCopy;
  v7 = [itemConfigurations safari_firstObjectPassingTest:v9];

  return v7;
}

- (id)_configurationForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  itemConfigurations = [(CloudTabGroupSyncCoordinator *)self itemConfigurations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C6428;
  v9[3] = &unk_100133188;
  v10 = bookmarkCopy;
  v6 = bookmarkCopy;
  v7 = [itemConfigurations safari_firstObjectPassingTest:v9];

  return v7;
}

- (id)_hashGeneratorForRecord:(id)record
{
  recordZoneIDsToHashGenerators = self->_recordZoneIDsToHashGenerators;
  recordID = [record recordID];
  zoneID = [recordID zoneID];
  v6 = [(NSDictionary *)recordZoneIDsToHashGenerators objectForKeyedSubscript:zoneID];

  return v6;
}

- (id)_makeRootRecordID
{
  v3 = [CKRecordID alloc];
  v4 = WBSCloudBookmarkListRecordNameTopBookmark;
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v6 = [v3 initWithRecordName:v4 zoneID:bookmarksRecordZoneID];

  return v6;
}

- (id)_recordZoneIDForBookmark:(id)bookmark inCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [collectionCopy bookmarkIdentifierOfFolderAncestorWithSubtype:0 forBookmark:bookmark];
  if (v7 == 0x7FFFFFFF || v7 == BookmarksRootID)
  {
    bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  }

  else
  {
    v10 = [collectionCopy serverIDForBookmarkID:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [(NSDictionary *)self->_secondaryZoneNamesToRecordZoneIDs objectForKeyedSubscript:v10];
      v13 = v12;
      if (v12)
      {
        bookmarksRecordZoneID2 = v12;
      }

      else
      {
        bookmarksRecordZoneID2 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
      }

      bookmarksRecordZoneID = bookmarksRecordZoneID2;
    }

    else
    {
      bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    }
  }

  return bookmarksRecordZoneID;
}

- (BOOL)_saveRecord:(id)record forBookmark:(id)bookmark inCollection:(id)collection
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C66C0;
  v9[3] = &unk_1001368B0;
  recordCopy = record;
  v7 = recordCopy;
  LOBYTE(collection) = [collection updateSyncDataForBookmark:bookmark usingBlock:v9];

  return collection;
}

- (id)_serverIDForBookmarkCreateIfNeeded:(id)needed inCollection:(id)collection
{
  neededCopy = needed;
  collectionCopy = collection;
  serverID = [neededCopy serverID];
  if ([serverID length])
  {
    serverID2 = serverID;
  }

  else
  {
    v9 = [collectionCopy generateNewServerIDForBookmark:neededCopy];
    [collectionCopy setServerID:v9 forBookmark:neededCopy];

    serverID2 = [neededCopy serverID];
  }

  v10 = serverID2;

  return v10;
}

- (id)_valueForKey:(id)key ofType:(Class)type fromRecord:(id)record withConfiguration:(id)configuration
{
  recordCopy = record;
  keyCopy = key;
  v12 = [configuration valueTransformerForAttributeKey:keyCopy record:recordCopy];
  v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:keyCopy ofType:type fromRecord:recordCopy withTransformer:v12];

  return v13;
}

- (id)_valueForKey:(id)key ofType:(Class)type fromRecord:(id)record withTransformer:(id)transformer
{
  typeCopy = type;
  transformerCopy = transformer;
  recordCopy = record;
  keyCopy = key;
  v12 = [NSArray arrayWithObjects:&typeCopy count:1];
  typeCopy = [(CloudTabGroupSyncCoordinator *)self _valueForKey:keyCopy ofTypes:v12 fromRecord:recordCopy withTransformer:transformerCopy, typeCopy];

  return typeCopy;
}

- (id)_valueForKey:(id)key ofTypes:(id)types fromRecord:(id)record withTransformer:(id)transformer
{
  keyCopy = key;
  typesCopy = types;
  recordCopy = record;
  transformerCopy = transformer;
  if (([transformerCopy attributeRequiresEncryption] & 1) == 0)
  {
    v14 = [recordCopy objectForKeyedSubscript:keyCopy];
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_14:
    v23 = 0;
    goto LABEL_18;
  }

  safari_encryptedValues = [recordCopy safari_encryptedValues];
  v14 = [safari_encryptedValues objectForKeyedSubscript:keyCopy];

  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_3:
  v15 = [transformerCopy reverseTransformedValueOrNull:v14];
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
    v17 = typesCopy;
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

- (id)_recordForBookmark:(id)bookmark inCollection:(id)collection changeType:(int)type
{
  bookmarkCopy = bookmark;
  collectionCopy = collection;
  if (bookmarkCopy)
  {
    v10 = [(CloudTabGroupSyncCoordinator *)self _configurationForBookmark:bookmarkCopy];
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
      v14 = bookmarkCopy;
      v15 = v10;
      typeCopy = type;
      v16 = collectionCopy;
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

- (id)_nextBatchItemAfterChangeToken:(int64_t)token inCollection:(id)collection operationGroup:(id)group
{
  collectionCopy = collection;
  groupCopy = group;
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
  v10 = collectionCopy;
  v19 = &v21;
  tokenCopy = token;
  v16 = v10;
  selfCopy = self;
  v11 = groupCopy;
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

- (id)_createSettingCKRecordFromFieldRecord:(id)record
{
  recordCopy = record;
  record = [recordCopy record];
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  if (!record)
  {
    attributes = [recordCopy attributes];
    v8 = [attributes objectForKeyedSubscript:@"SettingServerID"];

    attributes2 = [recordCopy attributes];
    if (v8)
    {
      v10 = [attributes2 objectForKeyedSubscript:@"SettingServerID"];
    }

    else
    {
      v11 = [attributes2 objectForKeyedSubscript:@"SettingName"];
      attributes3 = [recordCopy attributes];
      v13 = [attributes3 objectForKeyedSubscript:@"Parent"];
      v10 = [NSString stringWithFormat:@"%@_%@_%@", @"Setting", v11, v13];
    }

    v14 = [[CKRecordID alloc] initWithRecordName:v10 zoneID:bookmarksRecordZoneID];
    record = [[CKRecord alloc] initWithRecordType:@"Setting" recordID:v14];
  }

  v15 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"SettingName"];
  attributes4 = [recordCopy attributes];
  v17 = [attributes4 objectForKeyedSubscript:@"SettingName"];
  [v15 transformedValueOrNull:v17];
  v18 = v32 = bookmarksRecordZoneID;
  safari_encryptedValues = [record safari_encryptedValues];
  [safari_encryptedValues setObject:v18 forKeyedSubscript:@"SettingName"];

  v20 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Value"];
  attributes5 = [recordCopy attributes];
  v22 = [attributes5 objectForKeyedSubscript:@"Value"];
  v23 = [v20 transformedValueOrNull:v22];
  safari_encryptedValues2 = [record safari_encryptedValues];
  [safari_encryptedValues2 setObject:v23 forKeyedSubscript:@"Value"];

  v25 = [(CloudTabGroupSyncCoordinator *)self _settingsTransformerForKey:@"Parent"];
  attributes6 = [recordCopy attributes];
  v27 = [attributes6 objectForKeyedSubscript:@"Parent"];
  v28 = [v25 transformedValueOrNull:v27];
  [record setObject:v28 forKeyedSubscript:@"Parent"];

  field = [recordCopy field];
  generation = [field generation];
  [record safari_setGeneration:generation forKey:@"Value"];

  [record safari_setMinimumAPIVersion:3];

  return record;
}

- (id)_batchItemForDeleteChange:(id)change inCollection:(id)collection operationGroup:(id)group
{
  changeCopy = change;
  collectionCopy = collection;
  groupCopy = group;
  bookmark = [changeCopy bookmark];
  v12 = [collectionCopy syncDataForBookmark:bookmark];

  record = [v12 record];
  if (!record)
  {
    v33 = [CloudTabGroupBatchItem alloc];
    v34 = +[NSSet set];
    v35 = [(CloudTabGroupBatchItem *)v33 initWithChange:changeCopy updatedRecords:v34];

    goto LABEL_36;
  }

  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  v64 = v12;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    recordType = [record recordType];
    recordID = [record recordID];
    ckShortDescription = [recordID ckShortDescription];
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543874;
    v71 = recordType;
    v72 = 2114;
    v73 = ckShortDescription;
    v74 = 2114;
    v75 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Handling deletion of record of type %{public}@ with ID: %{public}@ with %{public}@", buf, 0x20u);

    v12 = v64;
  }

  v63 = groupCopy;

  v19 = +[NSMutableSet set];
  auxiliaryRecordIDs = [v12 auxiliaryRecordIDs];
  _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
  v62 = auxiliaryRecordIDs;
  if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
  {
    v22 = [auxiliaryRecordIDs count];
    v23 = [auxiliaryRecordIDs valueForKey:@"ckShortDescription"];
    safari_logDescription2 = [groupCopy safari_logDescription];
    *buf = 134218498;
    v71 = v22;
    v12 = v64;
    v72 = 2114;
    v73 = v23;
    v74 = 2114;
    v75 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, _log2, OS_LOG_TYPE_INFO, "Deleting %lu auxiliary records with IDs: %{public}@ with %{public}@", buf, 0x20u);

    auxiliaryRecordIDs = v62;
  }

  [v19 addObjectsFromArray:auxiliaryRecordIDs];
  if (![v12 isDeletingRecordZone])
  {
    _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log3, OS_LOG_TYPE_INFO))
    {
      recordID2 = [record recordID];
      ckShortDescription2 = [recordID2 ckShortDescription];
      safari_logDescription3 = [groupCopy safari_logDescription];
      *buf = 138543618;
      v71 = ckShortDescription2;
      v72 = 2114;
      v73 = safari_logDescription3;
      _os_log_impl(&_mh_execute_header, _log3, OS_LOG_TYPE_INFO, "Marking record as Deleted with ID: %{public}@ with %{public}@", buf, 0x16u);

      v12 = v64;
    }

    [record safari_setState:{objc_msgSend(v12, "state")}];
    v40 = [v12 generationForKey:@"Deleted"];
    [record safari_setGeneration:v40 forKey:@"Deleted"];

    recordType2 = [record recordType];
    LODWORD(v40) = [recordType2 isEqualToString:@"Profile"];

    if (v40)
    {
      v60 = changeCopy;
      settingsChangesForAllDeletedSettings = [collectionCopy settingsChangesForAllDeletedSettings];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v43 = [settingsChangesForAllDeletedSettings countByEnumeratingWithState:&v65 objects:v69 count:16];
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
              objc_enumerationMutation(settingsChangesForAllDeletedSettings);
            }

            v47 = *(*(&v65 + 1) + 8 * i);
            record2 = [v47 record];

            if (record2)
            {
              record3 = [v47 record];
              recordID3 = [record3 recordID];
              [v19 addObject:recordID3];
            }

            else
            {
              [collectionCopy deleteSettingWithIdentifier:{objc_msgSend(v47, "identifier")}];
            }
          }

          v44 = [settingsChangesForAllDeletedSettings countByEnumeratingWithState:&v65 objects:v69 count:16];
        }

        while (v44);
      }

      changeCopy = v60;
      groupCopy = v63;
    }

    v51 = [CloudTabGroupBatchItem alloc];
    v25 = [NSSet setWithObject:record];
    v35 = [(CloudTabGroupBatchItem *)v51 initWithChange:changeCopy updatedRecords:v25 deletedRecordIDs:v19];
    v12 = v64;
    v52 = v62;
    goto LABEL_35;
  }

  v25 = +[NSMutableSet set];
  recordType3 = [record recordType];
  v27 = [recordType3 isEqualToString:@"TabGroup"];

  if (v27)
  {
    recordID4 = [record recordID];
    zoneID = [recordID4 zoneID];

    if ([zoneID safari_isInPrivateDatabase])
    {
      _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log4, OS_LOG_TYPE_INFO))
      {
        ckShortDescription3 = [zoneID ckShortDescription];
        safari_logDescription4 = [groupCopy safari_logDescription];
        *buf = 138543618;
        v71 = ckShortDescription3;
        v72 = 2114;
        v73 = safari_logDescription4;
        _os_log_impl(&_mh_execute_header, _log4, OS_LOG_TYPE_INFO, "Deleting shared private zone with ID %{public}@ with %{public}@", buf, 0x16u);
      }

      [v25 addObject:zoneID];
      goto LABEL_34;
    }

    recordID5 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:zoneID];
    _log5 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log5, OS_LOG_TYPE_INFO))
    {
      [zoneID ckShortDescription];
      v57 = v61 = recordID5;
      safari_logDescription5 = [groupCopy safari_logDescription];
      *buf = 138543618;
      v71 = v57;
      v72 = 2114;
      v73 = safari_logDescription5;
      _os_log_impl(&_mh_execute_header, _log5, OS_LOG_TYPE_INFO, "Leaving share by deleting CKShare in shared zone with ID %{public}@ with %{public}@", buf, 0x16u);

      recordID5 = v61;
    }

    [v19 addObject:recordID5];
    goto LABEL_33;
  }

  zoneID = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(zoneID, OS_LOG_TYPE_INFO))
  {
    recordID5 = [record recordID];
    ckShortDescription4 = [recordID5 ckShortDescription];
    safari_logDescription6 = [groupCopy safari_logDescription];
    *buf = 138543618;
    v71 = ckShortDescription4;
    v72 = 2114;
    v73 = safari_logDescription6;
    _os_log_impl(&_mh_execute_header, zoneID, OS_LOG_TYPE_INFO, "Record with ID %{public}@ is in a zone that will be removed with %{public}@", buf, 0x16u);

LABEL_33:
  }

LABEL_34:
  v12 = v64;
  v52 = v62;

  v35 = [[CloudTabGroupBatchItem alloc] initWithChange:changeCopy deletedRecordZoneIDs:v25 deletedRecordIDs:v19];
LABEL_35:

LABEL_36:

  return v35;
}

- (id)_recordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration changeType:(int)type inCollection:(id)collection
{
  bookmarkCopy = bookmark;
  dataCopy = data;
  configurationCopy = configuration;
  collectionCopy = collection;
  record = [dataCopy record];
  v14 = [record copy];

  if (!v14)
  {
    v15 = [(CloudTabGroupSyncCoordinator *)self _serverIDForBookmarkCreateIfNeeded:bookmarkCopy inCollection:collectionCopy];
    v16 = [(CloudTabGroupSyncCoordinator *)self _recordZoneIDForBookmark:bookmarkCopy inCollection:collectionCopy];
    v17 = [[CKRecordID alloc] initWithRecordName:v15 zoneID:v16];
    v18 = [CKRecord alloc];
    recordType = [configurationCopy recordType];
    v14 = [v18 initWithRecordType:recordType recordID:v17];

    [dataCopy setRecord:v14];
  }

  if (type == 1)
  {
    recordChangeTag = [(__CFString *)v14 recordChangeTag];
    type = [recordChangeTag length] != 0;
  }

  syncPosition = [bookmarkCopy syncPosition];

  if (!syncPosition)
  {
    v22 = [collectionCopy generateSyncPositionForBookmark:bookmarkCopy];
    [bookmarkCopy setSyncPosition:v22];

    syncPosition2 = [bookmarkCopy syncPosition];
    [dataCopy setPosition:syncPosition2];

    [collectionCopy markAttributesAsModified:4 forBookmark:bookmarkCopy];
  }

  if (type == 1)
  {
    [collectionCopy modifiedSyncingAttributesForBookmark:bookmarkCopy];
  }

  else
  {
    [collectionCopy allSyncingAttributesForBookmark:bookmarkCopy];
  }
  v55 = ;
  [(CloudTabGroupSyncCoordinator *)self _knownKeysToSaveForRecord:v14 withConfiguration:configurationCopy];
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
  v61 = configurationCopy;
  v68 = v61;
  v54 = dataCopy;
  v69 = v54;
  v25 = v14;
  v70 = v25;
  v71 = &v77;
  v72 = &v73;
  [v55 enumerateKeysAndObjectsUsingBlock:v66];
  v53 = v24;
  if (v78[3])
  {
    minimumSyncAPIVersion = [bookmarkCopy minimumSyncAPIVersion];
    unsignedIntegerValue = [minimumSyncAPIVersion unsignedIntegerValue];

    v28 = [(CloudTabGroupSyncCoordinator *)self _computeMinimumSyncAPIVersionForRecord:v25 withBookmark:bookmarkCopy inCollection:collectionCopy];
    v29 = v28;
    if (!type || v28 != unsignedIntegerValue || ([(__CFString *)v25 recordChangeTag], v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, v31))
    {
      [(__CFString *)v25 safari_setMinimumAPIVersion:v29];
      v32 = [v54 generationForKey:@"MinimumAPIVersion"];
      deviceIdentifier = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
      v34 = [v32 incrementedGenerationWithDeviceIdentifier:deviceIdentifier];
      [(__CFString *)v25 safari_setGeneration:v34 forKey:@"MinimumAPIVersion"];
    }

    if (v74[3])
    {
      v60 = +[NSMutableArray array];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      identityHashKeys = [v61 identityHashKeys];
      v36 = [identityHashKeys countByEnumeratingWithState:&v62 objects:v81 count:16];
      if (v36)
      {
        v37 = *v63;
        obj = identityHashKeys;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v63 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v62 + 1) + 8 * i);
            changedKeys = [(__CFString *)v25 changedKeys];
            v41 = [changedKeys containsObject:v39];

            if (v41)
            {
              v42 = [v61 valueTransformerForAttributeKey:v39 record:v25];
              if ([v42 attributeRequiresEncryption])
              {
                safari_encryptedValues = [(__CFString *)v25 safari_encryptedValues];
                v44 = [safari_encryptedValues objectForKeyedSubscript:v39];
                v45 = [v42 reverseTransformedValue:v44];
              }

              else
              {
                safari_encryptedValues = [(__CFString *)v25 objectForKeyedSubscript:v39];
                v45 = [v42 reverseTransformedValue:safari_encryptedValues];
              }
            }

            else
            {
              v42 = [collectionCopy allSyncingAttributesForBookmark:bookmarkCopy];
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

          identityHashKeys = obj;
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

- (id)_knownKeysToSaveForRecord:(id)record withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  recordID = [record recordID];
  zoneID = [recordID zoneID];
  bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
  v10 = [zoneID isEqual:bookmarksRecordZoneID];

  if (v10)
  {
    [configurationCopy knownKeys];
  }

  else
  {
    [configurationCopy primaryCKRecordKeysToSave];
  }
  v11 = ;

  return v11;
}

- (unint64_t)_computeMinimumSyncAPIVersionForRecord:(id)record withBookmark:(id)bookmark inCollection:(id)collection
{
  recordCopy = record;
  bookmarkCopy = bookmark;
  collectionCopy = collection;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  safari_isTabGroupSecondaryRecordZoneID = [zoneID safari_isTabGroupSecondaryRecordZoneID];

  if (!safari_isTabGroupSecondaryRecordZoneID)
  {
    goto LABEL_4;
  }

  v13 = [collectionCopy bookmarkWithID:{objc_msgSend(collectionCopy, "bookmarkIdentifierOfFolderAncestorWithSubtype:forBookmark:", 0, bookmarkCopy)}];
  v14 = [collectionCopy syncDataForBookmark:v13];
  shareRecord = [v14 shareRecord];

  if (shareRecord)
  {
    v16 = 2;
  }

  else
  {
LABEL_4:
    recordID2 = [recordCopy recordID];
    recordName = [recordID2 recordName];
    v19 = [recordName isEqualToString:WBSDefaultProfileIdentifier];

    if (v19)
    {
      v16 = 4;
    }

    else
    {
      v16 = 1;
      if ([collectionCopy bookmarkIdentifierOfAncestorWithSubtype:2 forBookmark:bookmarkCopy] != 0x7FFFFFFF)
      {
        v16 = 3;
      }
    }

    if ([recordCopy safari_state] == 2 && v16 <= 2)
    {
      v16 = 2;
    }
  }

  return v16;
}

- (id)_tabGroupParticipantExtrasRecordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration changeType:(int)type inCollection:(id)collection
{
  bookmarkCopy = bookmark;
  dataCopy = data;
  configurationCopy = configuration;
  collectionCopy = collection;
  recordType = [configurationCopy recordType];
  v17 = [recordType isEqualToString:@"TabGroup"];

  if (!v17)
  {
    v23 = 0;
    goto LABEL_30;
  }

  record = [dataCopy record];
  if (record)
  {
    v61 = record;
    recordID = [record recordID];
    zoneID = [recordID zoneID];
    bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    v22 = [zoneID isEqual:bookmarksRecordZoneID];

    if (v22)
    {
      v23 = 0;
LABEL_28:
      record = v61;
      goto LABEL_29;
    }

    if (type)
    {
      modifiedAttributes = [bookmarkCopy modifiedAttributes];
    }

    else
    {
      modifiedAttributes = 580;
    }

    v24 = tabGroupParticipantExtrasRecordAuxiliaryRecordKey;
    v25 = [dataCopy auxiliaryRecordForKey:tabGroupParticipantExtrasRecordAuxiliaryRecordKey];
    v26 = v25;
    if ((modifiedAttributes & 0x244) == 0)
    {
      v23 = 0;
LABEL_27:

      goto LABEL_28;
    }

    if (!v25)
    {
      serverID = [bookmarkCopy serverID];
      v27 = [@"TabGroupExtras_" stringByAppendingString:serverID];
      v28 = [CKRecordID alloc];
      bookmarksRecordZoneID2 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
      v30 = [v28 initWithRecordName:v27 zoneID:bookmarksRecordZoneID2];

      v26 = [[CKRecord alloc] initWithRecordType:@"TabGroupParticipantExtras" recordID:v30];
      v31 = [[CKReference alloc] initWithRecord:v61 action:0];
      [v26 setObject:v31 forKeyedSubscript:@"TabGroup"];

      [dataCopy setAuxiliaryRecord:v26 forKey:v24];
    }

    v32 = [v26 objectForKeyedSubscript:@"ParentFolder"];
    recordID2 = [v32 recordID];

    if (recordID2 && ([recordID2 recordName], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(collectionCopy, "bookmarkWithServerID:excludeDeletedBookmarks:", v34, 0), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, type == 1) && v35)
    {
      v36 = [collectionCopy modifiedSyncingAttributesForBookmark:bookmarkCopy];
      v37 = 1;
      if ((modifiedAttributes & 0x44) == 0)
      {
LABEL_20:
        if (!v37 || (modifiedAttributes & 0x200) != 0)
        {
          v46 = [configurationCopy generationKeyForKey:@"LastSelectedTab"];
          v47 = [dataCopy generationForKey:v46];
          if ([v47 isValid])
          {
            [configurationCopy valueTransformerForAttributeKey:@"LastSelectedTab" record:v61];
            v48 = v58 = v36;
            [v58 objectForKeyedSubscript:@"LastSelectedTab"];
            v49 = v60 = recordID2;
            v50 = [v48 transformedValueOrNull:v49];
            [v26 setObject:v50 forKeyedSubscript:@"LastSelectedTab"];

            recordID2 = v60;
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
      v36 = [collectionCopy allSyncingAttributesForBookmark:bookmarkCopy];
      v37 = 0;
    }

    v55 = v37;
    v57 = v36;
    v54 = [configurationCopy generationKeyForKey:@"Position"];
    v53 = [dataCopy generationForKey:v54];
    v38 = +[CloudBookmarkItemConfiguration encryptedPositionAttributeValueTransformer];
    v39 = [v36 objectForKeyedSubscript:@"Position"];
    [v38 transformedValueOrNull:v39];
    v41 = v40 = recordID2;
    safari_encryptedValues = [v26 safari_encryptedValues];
    [safari_encryptedValues setObject:v41 forKeyedSubscript:@"Position"];

    recordID2 = v40;
    v43 = [configurationCopy valueTransformerForAttributeKey:@"ParentFolder"];
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

- (id)_tabGroupParticipantPositionRecordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration changeType:(int)type inCollection:(id)collection
{
  bookmarkCopy = bookmark;
  dataCopy = data;
  configurationCopy = configuration;
  collectionCopy = collection;
  recordType = [configurationCopy recordType];
  v17 = [recordType isEqualToString:@"TabGroup"];

  if (!v17)
  {
    v20 = 0;
    goto LABEL_14;
  }

  record = [dataCopy record];
  v19 = record;
  if (!record || ([record safari_isInPrivateDatabase] & 1) != 0)
  {
    goto LABEL_4;
  }

  if (!type)
  {
    v22 = 516;
    goto LABEL_11;
  }

  modifiedAttributes = [bookmarkCopy modifiedAttributes];
  if ((modifiedAttributes & 0x204) != 0)
  {
    v22 = modifiedAttributes;
    if (type == 1)
    {
      v23 = [collectionCopy modifiedSyncingAttributesForBookmark:bookmarkCopy];
LABEL_12:
      v24 = v23;
      v20 = [(CloudTabGroupSyncCoordinator *)self _tabGroupParticipantPositionRecordForBookmark:bookmarkCopy syncData:dataCopy configuration:configurationCopy modifiedAttributes:v22 attributes:v23 inCollection:collectionCopy];

      goto LABEL_13;
    }

LABEL_11:
    v23 = [collectionCopy allSyncingAttributesForBookmark:bookmarkCopy];
    goto LABEL_12;
  }

LABEL_4:
  v20 = 0;
LABEL_13:

LABEL_14:

  return v20;
}

- (id)_tabGroupParticipantPositionRecordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration modifiedAttributes:(unint64_t)attributes attributes:(id)a7 inCollection:(id)collection
{
  attributesCopy = attributes;
  bookmarkCopy = bookmark;
  dataCopy = data;
  configurationCopy = configuration;
  v16 = a7;
  record = [dataCopy record];
  v18 = [dataCopy auxiliaryRecordForKey:@"TabGroupPosition"];
  if (v18)
  {
    if ((attributesCopy & 4) != 0)
    {
LABEL_3:
      v42 = [configurationCopy generationKeyForKey:@"Position"];
      v19 = [dataCopy generationForKey:v42];
      v20 = +[CloudBookmarkItemConfiguration encryptedPositionAttributeValueTransformer];
      [v16 objectForKeyedSubscript:@"Position"];
      v43 = record;
      v44 = dataCopy;
      v22 = v21 = bookmarkCopy;
      [v20 transformedValueOrNull:v22];
      v24 = v23 = v16;
      [v18 safari_encryptedValues];
      v25 = attributesCopy;
      v27 = v26 = configurationCopy;
      [v27 setObject:v24 forKeyedSubscript:@"Position"];

      configurationCopy = v26;
      attributesCopy = v25;

      v16 = v23;
      bookmarkCopy = v21;
      record = v43;
      dataCopy = v44;
      [v18 safari_setGeneration:v19 forKey:@"Position"];
    }
  }

  else
  {
    serverID = [bookmarkCopy serverID];
    if (![serverID length])
    {
      v18 = 0;
      goto LABEL_12;
    }

    v36 = [@"TabGroupPosition_" stringByAppendingString:serverID];
    v37 = [CKRecordID alloc];
    [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    v38 = v46 = attributesCopy;
    v39 = [v37 initWithRecordName:v36 zoneID:v38];

    v18 = [[CKRecord alloc] initWithRecordType:@"TabGroupParticipantPosition" recordID:v39];
    v40 = [[CKReference alloc] initWithRecord:record action:0];
    [v18 setObject:v40 forKeyedSubscript:@"TabGroup"];

    attributesCopy = v46;
    [dataCopy setAuxiliaryRecord:v18 forKey:@"TabGroupPosition"];

    if ((v46 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  if ((attributesCopy & 0x200) == 0)
  {
    goto LABEL_13;
  }

  v28 = record;
  serverID = [configurationCopy generationKeyForKey:@"LastSelectedTab"];
  v30 = [dataCopy generationForKey:serverID];
  if ([v30 isValid])
  {
    [configurationCopy valueTransformerForAttributeKey:@"LastSelectedTab" record:v28];
    v31 = v45 = configurationCopy;
    [v16 objectForKeyedSubscript:@"LastSelectedTab"];
    v33 = v32 = v16;
    [v31 transformedValueOrNull:v33];
    v35 = v34 = bookmarkCopy;
    [v18 setObject:v35 forKeyedSubscript:@"LastSelectedTab"];

    bookmarkCopy = v34;
    v16 = v32;
    [v18 safari_setGeneration:v30 forKey:@"LastSelectedTab"];

    configurationCopy = v45;
  }

  record = v28;
LABEL_12:

LABEL_13:

  return v18;
}

- (id)_readStatusRecordForBookmark:(id)bookmark syncData:(id)data configuration:(id)configuration changeType:(int)type inCollection:(id)collection
{
  bookmarkCopy = bookmark;
  dataCopy = data;
  recordType = [configuration recordType];
  v14 = [recordType isEqualToString:@"TabGroupTab"];

  if (!v14)
  {
    v21 = 0;
    goto LABEL_14;
  }

  record = [dataCopy record];
  v16 = record;
  if (record)
  {
    recordID = [record recordID];
    zoneID = [recordID zoneID];
    bookmarksRecordZoneID = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
    v20 = [zoneID isEqual:bookmarksRecordZoneID];

    if ((v20 & 1) == 0 && (!type || ([bookmarkCopy modifiedAttributes] & 0x20000) != 0))
    {
      v21 = [dataCopy auxiliaryRecordForKey:@"ReadStatus"];
      if (!v21)
      {
        serverID = [bookmarkCopy serverID];
        if (![serverID length])
        {
          v21 = 0;
          goto LABEL_12;
        }

        v23 = [@"TabReadStatus_" stringByAppendingString:serverID];
        v24 = [CKRecordID alloc];
        bookmarksRecordZoneID2 = [(CloudTabGroupSyncCoordinator *)self bookmarksRecordZoneID];
        v26 = [v24 initWithRecordName:v23 zoneID:bookmarksRecordZoneID2];

        v21 = [[CKRecord alloc] initWithRecordType:@"TabGroupTabParticipantStatus" recordID:v26];
        v27 = [CKReference alloc];
        record2 = [dataCopy record];
        v29 = [v27 initWithRecord:record2 action:0];
        [v21 setObject:v29 forKeyedSubscript:@"TabGroupTab"];

        [dataCopy setAuxiliaryRecord:v21 forKey:@"ReadStatus"];
      }

      serverID = [bookmarkCopy lastReadGeneration];
      [v21 safari_setGeneration:serverID forKey:@"ReadStatus"];
LABEL_12:

      goto LABEL_13;
    }
  }

  v21 = 0;
LABEL_13:

LABEL_14:

  return v21;
}

- (void)_updateBookmark:(id)bookmark inCollection:(id)collection withRecord:(id)record configuration:(id)configuration
{
  bookmarkCopy = bookmark;
  collectionCopy = collection;
  recordCopy = record;
  configurationCopy = configuration;
  v14 = recordCopy;
  v15 = configurationCopy;
  v16 = [v14 copy];
  safari_recordName = [v14 safari_recordName];
  [bookmarkCopy setServerID:safari_recordName];

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
    [bookmarkCopy setMinimumSyncAPIVersion:v20];
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
    [bookmarkCopy setSyncState:v23];
  }

  configuration = [collectionCopy configuration];
  collectionType = [configuration collectionType];

  if ([bookmarkCopy isFolder])
  {
    v26 = collectionCopy;
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

        if ([bookmarkCopy subtype] == 2)
        {
          v30 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"SymbolImageName" ofType:objc_opt_class() fromRecord:v16 withConfiguration:v15];
          v31 = +[NSNull null];

          if (v30 == v31)
          {
            v32 = bookmarkCopy;
            v33 = 0;
          }

          else
          {
            if (!v30)
            {
              goto LABEL_32;
            }

            v32 = bookmarkCopy;
            v33 = v30;
          }

          [v32 setSymbolImageName:v33];
LABEL_32:

          v38 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"CustomFavoritesFolderServerID" ofType:objc_opt_class() fromRecord:v16 withConfiguration:v15];
          v39 = +[NSNull null];

          if (v38 == v39)
          {
            v40 = bookmarkCopy;
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
                v46 = bookmarkCopy;
                v47 = 0;
                goto LABEL_49;
              }

              if (v44)
              {
                v46 = bookmarkCopy;
                v47 = v44;
LABEL_49:
                [v46 setStartPageSectionsDataRepresentation:v47];
              }

LABEL_50:

              goto LABEL_51;
            }

            v40 = bookmarkCopy;
            v41 = v38;
          }

          [v40 setCustomFavoritesFolderServerID:v41];
          goto LABEL_37;
        }

        if ([bookmarkCopy subtype] != 3 && objc_msgSend(bookmarkCopy, "subtype") != 4)
        {
LABEL_51:
          if (collectionType)
          {
            collectionCopy = v26;
            if (collectionType == 1)
            {
              [(CloudTabGroupSyncCoordinator *)self _updateTabCollectionFolder:bookmarkCopy inCollection:v26 withRecord:v16 configuration:v15];
            }
          }

          else
          {
            collectionCopy = v26;
            [(CloudTabGroupSyncCoordinator *)self _updateBookmarkCollectionFolder:bookmarkCopy inCollection:v26 withRecord:v16 configuration:v15];
          }

          goto LABEL_55;
        }

        v34 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"CreationDeviceIdentifier" ofType:objc_opt_class() fromRecord:v14 withConfiguration:v15];
        v35 = +[NSNull null];

        if (v34 == v35)
        {
          v36 = bookmarkCopy;
          v37 = 0;
        }

        else
        {
          if (!v34)
          {
            goto LABEL_43;
          }

          v36 = bookmarkCopy;
          v37 = v34;
        }

        [v36 setCreationDeviceIdentifier:v37];
LABEL_43:

        v44 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DeviceTypeIdentifier" ofType:objc_opt_class() fromRecord:v14 withConfiguration:v15];
        v48 = +[NSNull null];

        if (v44 == v48)
        {
          v49 = bookmarkCopy;
          v50 = 0;
        }

        else
        {
          if (!v44)
          {
            goto LABEL_50;
          }

          v49 = bookmarkCopy;
          v50 = v44;
        }

        [v49 setDeviceTypeIdentifier:v50];
        goto LABEL_50;
      }
    }

    [bookmarkCopy setTitle:v29];
    goto LABEL_20;
  }

  if (collectionType)
  {
    if (collectionType == 1)
    {
      [(CloudTabGroupSyncCoordinator *)self _updateTabCollectionBookmark:bookmarkCopy inCollection:collectionCopy withRecord:v16 configuration:v15];
    }
  }

  else
  {
    [(CloudTabGroupSyncCoordinator *)self _updateBookmarkCollectionBookmark:bookmarkCopy inCollection:collectionCopy withRecord:v16 configuration:v15];
  }

LABEL_55:
  [bookmarkCopy clearModifiedAttributes];
  v60 = v14;
  v61 = collectionCopy;
  if ([v14 safari_isInPrivateDatabase])
  {
    primaryCKRecordGenerationKeysToClear = 0;
  }

  else
  {
    primaryCKRecordGenerationKeysToClear = [v15 primaryCKRecordGenerationKeysToClear];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  fields = [bookmarkCopy fields];
  v53 = [fields countByEnumeratingWithState:&v63 objects:v67 count:16];
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
          objc_enumerationMutation(fields);
        }

        v57 = *(*(&v63 + 1) + 8 * i);
        v58 = [bookmarkCopy generationKeyForField:v57];
        if (v58 && ([primaryCKRecordGenerationKeysToClear containsObject:v58] & 1) == 0)
        {
          v59 = [v16 safari_generationForKey:v58];
          [v57 setGeneration:v59];
        }
      }

      v54 = [fields countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v54);
  }
}

- (void)_updateTabCollectionFolder:(id)folder inCollection:(id)collection withRecord:(id)record configuration:(id)configuration
{
  folderCopy = folder;
  collectionCopy = collection;
  recordCopy = record;
  configurationCopy = configuration;
  if (![folderCopy subtype] && objc_msgSend(recordCopy, "safari_isInPrivateDatabase"))
  {
    v13 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"LastSelectedTab" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
    v14 = +[NSNull null];

    v15 = 0;
    if (v13 != v14 && v13)
    {
      v15 = v13;
    }

    v16 = [collectionCopy bookmarkIDForServerID:v15 excludeDeletedBookmarks:1];
    if (v16 == 0x7FFFFFFF)
    {
      [recordCopy safari_setGeneration:0 forKey:@"LastSelectedTab"];
    }

    else
    {
      [folderCopy setLastSelectedChildID:v16];
    }
  }
}

- (void)_updateBookmarkCollectionFolder:(id)folder inCollection:(id)collection withRecord:(id)record configuration:(id)configuration
{
  folderCopy = folder;
  collectionCopy = collection;
  recordCopy = record;
  configurationCopy = configuration;
  isSelectedFavoritesFolder = [folderCopy isSelectedFavoritesFolder];
  bOOLValue = [isSelectedFavoritesFolder BOOLValue];

  v15 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"IsSelectedFavoritesFolder" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
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
    [folderCopy setSelectedFavoritesFolder:v17];
  }

  v18 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DateAdded" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
  v19 = +[NSNull null];

  if (v18 == v19)
  {
    v20 = folderCopy;
    v21 = 0;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_11;
    }

    v20 = folderCopy;
    v21 = v18;
  }

  [v20 setDateAdded:v21];
LABEL_11:

  if ([folderCopy isInserted])
  {
    identifier = [folderCopy identifier];
    isSelectedFavoritesFolder2 = [folderCopy isSelectedFavoritesFolder];
    [collectionCopy updateSelectedFavoritesFolderWithBookmarkID:identifier wasFavoritesFolder:bOOLValue isFavoritesFolder:{objc_msgSend(isSelectedFavoritesFolder2, "BOOLValue")}];
  }
}

- (void)_updateTabCollectionBookmark:(id)bookmark inCollection:(id)collection withRecord:(id)record configuration:(id)configuration
{
  bookmarkCopy = bookmark;
  recordCopy = record;
  configurationCopy = configuration;
  v12 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DateLastViewed" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
  v13 = &CPSharedResourcesDirectory_ptr;
  v14 = +[NSNull null];

  if (v12 == v14)
  {
    v15 = bookmarkCopy;
    v16 = 0;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_6;
    }

    v15 = bookmarkCopy;
    v16 = v12;
  }

  [v15 setTabDateLastViewed:v16];
LABEL_6:

  tabDateLastViewed = [bookmarkCopy tabDateLastViewed];

  if (!tabDateLastViewed)
  {
    modificationDate = [recordCopy modificationDate];
    [bookmarkCopy setTabDateLastViewed:modificationDate];
  }

  if ([bookmarkCopy subtype])
  {
    v19 = &__kCFBooleanFalse;
  }

  else
  {
    v20 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"IsPinned" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
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
  v23 = bookmarkCopy;
  v43 = v23;
  v24 = v19;
  v44 = v24;
  [v22 setHandler:&v39];
  if (![v24 BOOLValue] || (objc_msgSend(v23, "isInserted") & 1) == 0)
  {
    v25 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Title" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
    if (v25)
    {
      v26 = +[NSNull null];
      v27 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        title = [v23 title];
        v29 = [title isEqualToString:v25];

        v13 = &CPSharedResourcesDirectory_ptr;
        if ((v29 & 1) == 0)
        {
          [v23 setExtraAttributesValue:0 forKey:WBLocalTitleKey];
        }
      }
    }

    v30 = v25;
    v31 = v13;
    null = [v13[433] null];

    if (v30 == null || v25)
    {
      if (v30 == null)
      {
        v33 = &stru_100137BA8;
      }

      else
      {
        v33 = v30;
      }

      [v23 setTitle:v33];
    }

    v34 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"URL" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
    null2 = [v31[433] null];

    if (v34 == null2)
    {
      [v23 setAddress:&stru_100137BA8];
    }

    else if (v34)
    {
      absoluteString = [v34 absoluteString];
      address = [v23 address];
      v38 = [absoluteString isEqual:address];

      if ((v38 & 1) == 0)
      {
        [v23 setExtraAttributesValue:0 forKey:WBLocalURLKey];
      }

      [v23 setAddress:absoluteString];
    }
  }
}

- (void)_updateBookmarkCollectionBookmark:(id)bookmark inCollection:(id)collection withRecord:(id)record configuration:(id)configuration
{
  bookmarkCopy = bookmark;
  recordCopy = record;
  configurationCopy = configuration;
  v11 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"Title" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
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
    [bookmarkCopy setTitle:v13];
  }

  v14 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"URL" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
  v15 = +[NSNull null];

  if (v14 == v15)
  {
    [bookmarkCopy setAddress:&stru_100137BA8];
  }

  else
  {
    v16 = bookmarkCopy;
    if (!v14)
    {
      goto LABEL_11;
    }

    absoluteString = [v14 absoluteString];
    [bookmarkCopy setAddress:absoluteString];
  }

  v16 = bookmarkCopy;
LABEL_11:
  if (![v16 isReadingListItem])
  {
    goto LABEL_33;
  }

  v18 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DateAdded" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
  v19 = +[NSNull null];

  if (v18 == v19)
  {
    v20 = bookmarkCopy;
    v21 = 0;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_17;
    }

    v20 = bookmarkCopy;
    v21 = v18;
  }

  [v20 setDateAdded:v21];
LABEL_17:

  v22 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"DateLastViewed" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
  v23 = +[NSNull null];

  if (v22 == v23)
  {
    v24 = bookmarkCopy;
    v25 = 0;
  }

  else
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    v24 = bookmarkCopy;
    v25 = v22;
  }

  [v24 setReadingListDateLastViewed:v25];
LABEL_22:

  v26 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"PreviewText" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
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
    [bookmarkCopy setPreviewText:v28];
  }

  v29 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"ImageURL" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
  v30 = +[NSNull null];

  if (v29 == v30)
  {
    v31 = bookmarkCopy;
    v32 = 0;
    goto LABEL_31;
  }

  if (v29)
  {
    v31 = bookmarkCopy;
    v32 = v29;
LABEL_31:
    [v31 setReadingListIconURL:v32];
  }

LABEL_33:
}

- (id)_mergedRecordWithLocalRecord:(id)record remoteRecord:(id)remoteRecord saveError:(int64_t)error successfulMerge:(BOOL *)merge collection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  collectionCopy = collection;
  groupCopy = group;
  *merge = 1;
  recordID = [recordCopy recordID];
  if (error == 2)
  {
    safari_recordName = [recordCopy safari_recordName];
    v24 = [safari_recordName hasPrefix:WBTabGroupTopScopedBookmarkListServerIDPrefix];

    if (v24)
    {
      _log = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
      {
        ckShortDescription = [recordID ckShortDescription];
        safari_logDescription = [groupCopy safari_logDescription];
        v49 = 138543618;
        v50 = ckShortDescription;
        v51 = 2114;
        v52 = safari_logDescription;
        _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Record %{public}@ caused a an Invalid Argument and needs to be replaced on the server, %{public}@", &v49, 0x16u);
      }
    }

    else
    {
      safari_recordName2 = [recordCopy safari_recordName];
      v36 = [safari_recordName2 isEqualToString:WBSDefaultProfileIdentifier];

      if (!v36)
      {
        v43 = 0;
        *merge = 0;
        goto LABEL_33;
      }

      recordType = [recordCopy recordType];
      v38 = [recordType isEqualToString:@"Profile"];

      _log2 = [(CloudTabGroupSyncCoordinator *)self _log];
      v40 = _log2;
      if (!v38)
      {
        if (os_log_type_enabled(_log2, OS_LOG_TYPE_INFO))
        {
          ckShortDescription2 = [recordID ckShortDescription];
          v49 = 138543362;
          v50 = ckShortDescription2;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Record %{public}@ caused an Invalid Argument CKError that required resetting its sync data.", &v49, 0xCu);
        }

        safari_recordName3 = [recordCopy safari_recordName];
        [collectionCopy updateSyncDataForBookmarkWithRecordName:safari_recordName3 excludeDeletedBookmarks:0 usingBlock:&stru_100136E30];

        recordIDsToRefresh = self->_recordIDsToRefresh;
        recordID2 = [recordCopy recordID];
        [(NSMutableSet *)recordIDsToRefresh addObject:recordID2];

        goto LABEL_32;
      }

      if (os_log_type_enabled(_log2, OS_LOG_TYPE_DEFAULT))
      {
        ckShortDescription3 = [recordID ckShortDescription];
        safari_logDescription2 = [groupCopy safari_logDescription];
        v49 = 138543618;
        v50 = ckShortDescription3;
        v51 = 2114;
        v52 = safari_logDescription2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Record %{public}@ has the wrong type and needs to be replaced on the server, %{public}@", &v49, 0x16u);
      }
    }

    v28 = recordCopy;
    goto LABEL_25;
  }

  if (error != 1)
  {
    _log3 = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log3, OS_LOG_TYPE_INFO))
    {
      ckShortDescription4 = [recordID ckShortDescription];
      safari_logDescription3 = [groupCopy safari_logDescription];
      v49 = 138543618;
      v50 = ckShortDescription4;
      v51 = 2114;
      v52 = safari_logDescription3;
      _os_log_impl(&_mh_execute_header, _log3, OS_LOG_TYPE_INFO, "Record %{public}@ was changed remotely with %{public}@", &v49, 0x16u);
    }

    if ([(NSMutableSet *)self->_sourceRecordIDsForRecordsMovedBetweenZones containsObject:recordID])
    {
      _log4 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (os_log_type_enabled(_log4, OS_LOG_TYPE_INFO))
      {
        ckShortDescription5 = [recordID ckShortDescription];
        safari_logDescription4 = [groupCopy safari_logDescription];
        v49 = 138543618;
        v50 = ckShortDescription5;
        v51 = 2114;
        v52 = safari_logDescription4;
        _os_log_impl(&_mh_execute_header, _log4, OS_LOG_TYPE_INFO, "Record with ID %{public}@ locally moved to a different zone was modified by another device, don't attempt to delete it anymore with %{public}@", &v49, 0x16u);
      }

      [(NSMutableSet *)self->_sourceRecordIDsForRecordsMovedBetweenZones removeObject:recordID];
      goto LABEL_32;
    }

    if (!remoteRecordCopy)
    {
      _log5 = [(CloudTabGroupSyncCoordinator *)self _log];
      if (!os_log_type_enabled(_log5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      ckShortDescription6 = [recordID ckShortDescription];
      safari_logDescription5 = [groupCopy safari_logDescription];
      v49 = 138543618;
      v50 = ckShortDescription6;
      v51 = 2114;
      v52 = safari_logDescription5;
      v22 = "No remote record detected for local record %{public}@, skipping merge with %{public}@";
      goto LABEL_5;
    }

    v28 = [(CloudTabGroupSyncCoordinator *)self _didFetchRecord:remoteRecordCopy inCollection:collectionCopy operationGroup:groupCopy shouldGenerateUpdatedRecord:1];
LABEL_25:
    v43 = v28;
    goto LABEL_33;
  }

  _log5 = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log5, OS_LOG_TYPE_INFO))
  {
    ckShortDescription6 = [recordID ckShortDescription];
    safari_logDescription5 = [groupCopy safari_logDescription];
    v49 = 138543618;
    v50 = ckShortDescription6;
    v51 = 2114;
    v52 = safari_logDescription5;
    v22 = "Record %{public}@ was deleted remotely with %{public}@";
LABEL_5:
    _os_log_impl(&_mh_execute_header, _log5, OS_LOG_TYPE_INFO, v22, &v49, 0x16u);
  }

LABEL_6:

LABEL_32:
  v43 = 0;
LABEL_33:

  return v43;
}

- (void)_removeBookmarkWithServerID:(id)d inCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [collectionCopy bookmarkWithServerID:d excludeDeletedBookmarks:0];
  if (v7)
  {
    if ([collectionCopy bookmarkIdentifierOfAncestorWithSubtype:3 forBookmark:v7] == 0x7FFFFFFF)
    {
      auxiliaryRecordIDsToDelete = self->_auxiliaryRecordIDsToDelete;
      v9 = [collectionCopy syncDataForBookmark:v7];
      auxiliaryRecordIDs = [v9 auxiliaryRecordIDs];
      [(NSMutableSet *)auxiliaryRecordIDsToDelete addObjectsFromArray:auxiliaryRecordIDs];

      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000CB5F0;
      v16 = &unk_100136BB0;
      selfCopy = self;
      v11 = collectionCopy;
      v18 = v11;
      [v11 enumerateDescendantsOfBookmark:v7 usingBlock:&v13];
      if ([v7 isReadingListItem])
      {
        uUID = [v7 UUID];
        [v11 clearReadingListArchiveWithUUID:uUID];
      }

      else if ([v7 isReadingListFolder])
      {
        [v11 clearAllReadingListArchives];
      }

      [v11 deleteBookmark:v7 leaveTombstone:0];
    }

    else
    {
      [collectionCopy updateSyncDataForBookmark:v7 usingBlock:&stru_100136E50];
    }
  }
}

- (id)_createBookmarkWithConfiguration:(id)configuration record:(id)record inCollection:(id)collection operationGroup:(id)group
{
  configurationCopy = configuration;
  recordCopy = record;
  collectionCopy = collection;
  groupCopy = group;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v48 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_INFO, "Creating new bookmark with %{public}@", buf, 0xCu);
  }

  configuration = [collectionCopy configuration];
  collectionType = [configuration collectionType];

  itemSubtype = [configurationCopy itemSubtype];
  if (![configurationCopy itemType])
  {
    if (itemSubtype == 2)
    {
      v41 = [WebBookmark alloc];
      deviceIdentifier = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
      v26 = [v41 initWithTitle:&stru_100137BA8 address:&stru_100137BA8 parentID:0 subtype:1 deviceIdentifier:deviceIdentifier collectionType:collectionType];
    }

    else
    {
      if (itemSubtype == 1)
      {
        v23 = [[WebBookmark alloc] initReadingListBookmarkWithTitle:&stru_100137BA8 address:&stru_100137BA8 previewText:&stru_100137BA8];
        goto LABEL_32;
      }

      if (itemSubtype)
      {
        v23 = 0;
        goto LABEL_32;
      }

      v24 = [WebBookmark alloc];
      deviceIdentifier = [collectionCopy configuration];
      v26 = [v24 initWithTitle:&stru_100137BA8 address:&stru_100137BA8 collectionType:{objc_msgSend(deviceIdentifier, "collectionType")}];
    }

    v23 = v26;

    goto LABEL_32;
  }

  if ([configurationCopy itemSubtype] == 4)
  {
    v19 = [WebBookmark alloc];
    v20 = BookmarksRootID;
    [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
    v22 = v21 = recordCopy;
    v23 = [v19 initFolderWithParentID:v20 subtype:1 deviceIdentifier:v22 collectionType:collectionType];

    recordCopy = v21;
  }

  else if ([configurationCopy itemSubtype] == 5)
  {
    v46 = recordCopy;
    v27 = [(CloudTabGroupSyncCoordinator *)self _valueForKey:@"CreationDeviceIdentifier" ofType:objc_opt_class() fromRecord:recordCopy withConfiguration:configurationCopy];
    v28 = +[NSNull null];

    v29 = 0;
    v45 = groupCopy;
    if (v27 != v28 && v27)
    {
      v29 = v27;
    }

    device = [(WBCollectionConfiguration *)self->_collectionConfiguration device];
    userUniqueDeviceIdentifier = [device userUniqueDeviceIdentifier];
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
    deviceIdentifier2 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
    v23 = [v33 initFolderWithParentID:v34 subtype:v32 deviceIdentifier:deviceIdentifier2 collectionType:collectionType];

    groupCopy = v45;
    recordCopy = v46;
  }

  else
  {
    itemSubtype2 = [configurationCopy itemSubtype];
    v37 = [WebBookmark alloc];
    v38 = v37;
    v39 = BookmarksRootID;
    if (itemSubtype2 == 6)
    {
      deviceIdentifier3 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
      v23 = [v38 initFolderWithParentID:v39 subtype:2 deviceIdentifier:deviceIdentifier3 collectionType:collectionType];
    }

    else
    {
      v23 = [v37 initFolderWithParentID:BookmarksRootID collectionType:collectionType];
    }
  }

  if (itemSubtype == 3)
  {
    v42 = &BookmarksReadingListSpecialID;
  }

  else if (itemSubtype == 2)
  {
    v42 = &BookmarksMenuSpecialID;
  }

  else
  {
    if (itemSubtype != 1)
    {
      goto LABEL_32;
    }

    v42 = &BookmarksBarSpecialID;
  }

  [v23 markSpecial:{*v42, v45}];
LABEL_32:
  deviceIdentifier4 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
  [v23 setDeviceIdentifier:deviceIdentifier4];

  return v23;
}

- (void)_resetSyncDataInCollection:(id)collection operationGroup:(id)group
{
  groupCopy = group;
  collectionCopy = collection;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    v10 = 138543362;
    v11 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "=== Resetting sync data with %{public}@", &v10, 0xCu);
  }

  [collectionCopy clearAllSyncData];
}

- (void)_handleICloudKeychainResetInCollection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  collectionCopy = collection;
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v21 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Handling an iCloud Keychain reset with %{public}@", buf, 0xCu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CBD50;
  v16[3] = &unk_100135C18;
  v16[4] = self;
  v17 = groupCopy;
  v18 = collectionCopy;
  v19 = handlerCopy;
  v13 = collectionCopy;
  v14 = handlerCopy;
  v15 = groupCopy;
  [(CloudTabGroupSyncCoordinator *)self _deleteTabGroupZonesInOperationGroup:v15 completionHandler:v16];
}

- (void)_deleteTabGroupZonesInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
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
  [(CloudTabGroupSyncCoordinator *)self _deleteSharedTabGroupZonesInOperationGroup:groupCopy completionHandler:v18];
  dispatch_group_enter(v9);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CC074;
  v15[3] = &unk_100136E78;
  v17 = v21;
  v10 = v9;
  v16 = v10;
  [(CloudTabGroupSyncCoordinator *)self _deletePrivateTabGroupZonesInOperationGroup:groupCopy completionHandler:v15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CC0DC;
  v12[3] = &unk_100136EA0;
  v13 = handlerCopy;
  v14 = v21;
  v11 = handlerCopy;
  dispatch_group_notify(v10, &_dispatch_main_q, v12);

  _Block_object_dispose(v21, 8);
}

- (void)_deletePrivateTabGroupZonesInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v19 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Will begin deleting private tab groups with %{public}@", buf, 0xCu);
  }

  bookmarkStore = self->_bookmarkStore;
  container = [(CloudBookmarkStore *)bookmarkStore container];
  privateCloudDatabase = [container privateCloudDatabase];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CC298;
  v15[3] = &unk_100136F08;
  v15[4] = self;
  v16 = groupCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = groupCopy;
  [(CloudBookmarkStore *)bookmarkStore fetchChangesSinceServerChangeToken:0 inDatabase:privateCloudDatabase operationGroup:0 completionHandler:v15];
}

- (void)_deleteSharedTabGroupZonesInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  _log = [(CloudTabGroupSyncCoordinator *)self _log];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v19 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Will begin leaving shared tab groups with %{public}@", buf, 0xCu);
  }

  bookmarkStore = self->_bookmarkStore;
  container = [(CloudBookmarkStore *)bookmarkStore container];
  sharedCloudDatabase = [container sharedCloudDatabase];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CC6D4;
  v15[3] = &unk_100136F08;
  v15[4] = self;
  v16 = groupCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = groupCopy;
  [(CloudBookmarkStore *)bookmarkStore fetchChangesSinceServerChangeToken:0 inDatabase:sharedCloudDatabase operationGroup:0 completionHandler:v15];
}

- (void)_notifyDelegateAboutIgnoredRecordZoneIDsIfNeeded:(id)needed operationGroup:(id)group
{
  neededCopy = needed;
  groupCopy = group;
  if ([neededCopy count])
  {
    _log = [(CloudTabGroupSyncCoordinator *)self _log];
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [neededCopy valueForKey:@"ckShortDescription"];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, _log, OS_LOG_TYPE_DEFAULT, "Will notify delegate that changes for some record zones were ignored with IDs: %{public}@ with %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v12 = WeakRetained;
      v13 = neededCopy;
      WBSDispatchAsyncToMainQueueWithAutoreleasePool();
    }
  }
}

- (void)_processSavedRecord:(id)record forBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group
{
  recordCopy = record;
  bookmarkCopy = bookmark;
  collectionCopy = collection;
  groupCopy = group;
  v13 = [(CloudTabGroupSyncCoordinator *)self _configurationForRecord:recordCopy];
  if (v13)
  {
    bookmarkStore = self->_bookmarkStore;
    recordID = [recordCopy recordID];
    zoneID = [recordID zoneID];
    v17 = [(CloudBookmarkStore *)bookmarkStore rootRecordNameForSecondaryRecordZoneID:zoneID];

    if (!v17)
    {
      goto LABEL_16;
    }

    recordType = [recordCopy recordType];
    v19 = [recordType isEqual:@"TabGroup"];

    if (v19)
    {
      if ([bookmarkCopy attributesMarkedAsModified:1])
      {
        v58 = v17;
        v20 = [bookmarkCopy fieldForAttribute:1];
        generation = [v20 generation];
        v22 = [bookmarkCopy generationKeyForField:v20];
        v23 = [recordCopy safari_generationForKey:v22];
        v24 = [generation compare:v23];

        if (!v24)
        {
          [(CloudTabGroupSyncCoordinator *)self _postCollaborationRenameEventWithBookmark:bookmarkCopy inCollection:collectionCopy operationGroup:groupCopy];
        }
      }

      else
      {
        if (![bookmarkCopy attributesMarkedAsModified:0x2000])
        {
          if ([recordCopy safari_state] == 1)
          {
            [bookmarkCopy fieldForAttribute:0x4000];
            v43 = v42 = v17;
            generation2 = [v43 generation];
            v45 = [recordCopy safari_generationForKey:@"Deleted"];
            v46 = [generation2 compare:v45];

            v17 = v42;
            if (!v46)
            {
              [(CloudTabGroupSyncCoordinator *)self _postCollaborationDeleteEventWithBookmark:bookmarkCopy inCollection:collectionCopy operationGroup:groupCopy];
            }
          }

          goto LABEL_16;
        }

        v58 = v17;
        v20 = [bookmarkCopy fieldForAttribute:0x2000];
        generation3 = [v20 generation];
        v30 = [bookmarkCopy generationKeyForField:v20];
        v31 = [recordCopy safari_generationForKey:v30];
        v32 = [generation3 compare:v31];

        if (!v32)
        {
          [(CloudTabGroupSyncCoordinator *)self _postCollaborationChangeEventWithBookmark:bookmarkCopy inCollection:collectionCopy operationGroup:groupCopy];
        }
      }

      v17 = v58;
LABEL_16:

      goto LABEL_17;
    }

    recordType2 = [recordCopy recordType];
    if ([recordType2 isEqual:@"TabGroupScopedBookmarkList"])
    {
      goto LABEL_10;
    }

    recordType3 = [recordCopy recordType];
    if ([recordType3 isEqual:@"TabGroupScopedBookmarkLeaf"])
    {

LABEL_10:
LABEL_11:
      [collectionCopy bookmarkWithServerID:v17 excludeDeletedBookmarks:0];
      v28 = v27 = v17;
      [(CloudTabGroupSyncCoordinator *)self _postCollaborationChangeEventWithBookmark:v28 inCollection:collectionCopy operationGroup:groupCopy];

      v17 = v27;
      goto LABEL_16;
    }

    v33 = v17;
    subtype = [bookmarkCopy subtype];

    v35 = subtype == 1;
    v17 = v33;
    if (v35)
    {
      goto LABEL_11;
    }

    recordType4 = [recordCopy recordType];
    v37 = [recordType4 isEqual:@"TabGroupTab"];

    v17 = v33;
    if (!v37)
    {
      goto LABEL_16;
    }

    if ([bookmarkCopy attributesMarkedAsModified:2])
    {
      v38 = [bookmarkCopy fieldForAttribute:2];
      generation4 = [v38 generation];
      v40 = [bookmarkCopy generationKeyForField:v38];
      v41 = [recordCopy safari_generationForKey:v40];
      v59 = [generation4 compare:v41];
    }

    else
    {
      v59 = -1;
    }

    if ([recordCopy safari_state] == 1)
    {
      safari_recordName = [recordCopy safari_recordName];
      serverID = [bookmarkCopy serverID];
      v49 = [safari_recordName isEqualToString:serverID];

      if (!v49)
      {
        v53 = [recordCopy safari_generationForKey:@"Deleted"];
        deviceIdentifier = [v53 deviceIdentifier];
        deviceIdentifier2 = [(CloudTabGroupSyncCoordinator *)self deviceIdentifier];
        v56 = [deviceIdentifier isEqualToString:deviceIdentifier2];

        v17 = v33;
        if (v56)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v50 = [bookmarkCopy fieldForAttribute:0x4000];
      generation5 = [v50 generation];
      v52 = [recordCopy safari_generationForKey:@"Deleted"];
      v60 = [generation5 compare:v52];
    }

    v17 = v33;
LABEL_32:
    if (v60)
    {
      goto LABEL_16;
    }

LABEL_35:
    v57 = [collectionCopy bookmarkWithServerID:v17 excludeDeletedBookmarks:{0, v60}];
    [(CloudTabGroupSyncCoordinator *)self _postCollaborationChangeEventWithBookmark:v57 inCollection:collectionCopy operationGroup:groupCopy];

    v17 = v33;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)_postCollaborationChangeEventWithBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CD26C;
  v5[3] = &unk_100136F98;
  v5[4] = self;
  [(CloudTabGroupSyncCoordinator *)self _postHighlightWithBookmark:bookmark collection:collection operationGroup:group completionHandler:v5];
}

- (void)_postCollaborationRenameEventWithBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CD358;
  v5[3] = &unk_100136F98;
  v5[4] = self;
  [(CloudTabGroupSyncCoordinator *)self _postHighlightWithBookmark:bookmark collection:collection operationGroup:group completionHandler:v5];
}

- (void)_postCollaborationDeleteEventWithBookmark:(id)bookmark inCollection:(id)collection operationGroup:(id)group
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CD444;
  v5[3] = &unk_100136F98;
  v5[4] = self;
  [(CloudTabGroupSyncCoordinator *)self _postHighlightWithBookmark:bookmark collection:collection operationGroup:group completionHandler:v5];
}

- (void)_postHighlightWithBookmark:(id)bookmark collection:(id)collection operationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v12 = [collection syncDataForBookmark:bookmark];
  shareRecord = [v12 shareRecord];
  v14 = [shareRecord copy];

  v15 = [v14 URL];
  highlightCenter = self->_highlightCenter;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000CD600;
  v20[3] = &unk_100136FC0;
  v20[4] = self;
  v21 = v14;
  v22 = groupCopy;
  v23 = handlerCopy;
  v17 = handlerCopy;
  v18 = groupCopy;
  v19 = v14;
  [(SWHighlightCenter *)highlightCenter getCollaborationHighlightForURL:v15 completionHandler:v20];
}

- (id)_reportSyncOperationFinishedWithError:(id)error result:(int64_t)result inOperationGroup:(id)group
{
  errorCopy = error;
  groupCopy = group;
  if (result)
  {
    if (([errorCopy safari_matchesErrorDomain:CKErrorDomain] & 1) == 0)
    {
      result = &__NSArray0__struct;
      goto LABEL_24;
    }

    userInfo = [errorCopy userInfo];
    v11 = +[NSMutableDictionary dictionary];
    name = [groupCopy name];
    [v11 setObject:name forKeyedSubscript:@"operationGroupName"];

    v13 = [NSNumber numberWithInteger:result];
    [v11 setObject:v13 forKeyedSubscript:@"syncResult"];

    [v11 setObject:&off_10013C578 forKeyedSubscript:@"periodicCount"];
    v14 = [userInfo safari_numberForKey:CKErrorRetryAfterKey];
    [v11 setObject:v14 forKeyedSubscript:CKErrorRetryAfterKey];

    v15 = CKUnderlyingFunctionErrorKey;
    v16 = [userInfo objectForKeyedSubscript:CKUnderlyingFunctionErrorKey];

    if (v16)
    {
      v17 = [userInfo objectForKeyedSubscript:v15];
      result = [(CloudTabGroupSyncCoordinator *)self _reportSyncOperationFinishedWithError:v17 result:result inOperationGroup:groupCopy];
LABEL_22:

      goto LABEL_23;
    }

    userInfo2 = [errorCopy userInfo];
    v17 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    domain = [v17 domain];
    v20 = [domain isEqualToString:CKUnderlyingErrorDomain];

    if (v20)
    {
      v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 code]);
      [v11 setObject:v21 forKeyedSubscript:@"underlyingErrorCode"];
    }

    code = [errorCopy code];
    v23 = stringForCKErrorCode();
    [v11 setObject:v23 forKeyedSubscript:@"ckErrorName"];

    v24 = [NSNumber numberWithInteger:code];
    [v11 setObject:v24 forKeyedSubscript:@"ckErrorCode"];

    v25 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
    [v11 setObject:v25 forKeyedSubscript:@"ckErrorDescription"];

    v26 = +[NSMutableArray array];
    if (code == 26)
    {
      v34 = [userInfo safari_numberForKey:CKErrorUserDidResetEncryptedDataKey];
      [v11 setObject:v34 forKeyedSubscript:@"ckErrorUserDidResetEncryptedDataKey"];
    }

    else if (code == 2)
    {
      v37 = v17;
      v38 = v11;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = userInfo;
      v27 = [userInfo safari_dictionaryForKey:CKPartialErrorsByItemIDKey];
      allValues = [v27 allValues];

      v29 = [allValues countByEnumeratingWithState:&v40 objects:v45 count:16];
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
              objc_enumerationMutation(allValues);
            }

            v33 = [(CloudTabGroupSyncCoordinator *)self _reportSyncOperationFinishedWithError:*(*(&v40 + 1) + 8 * i) result:result inOperationGroup:groupCopy];
            [v26 addObjectsFromArray:v33];
          }

          v30 = [allValues countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v30);
      }

      result = v26;
      v11 = v38;
      userInfo = v39;
      v17 = v37;
      goto LABEL_21;
    }

    v35 = +[WBSAnalyticsLogger sharedLogger];
    [v35 reportTabGroupSyncFinishedWithInfo:v11];

    v44 = v11;
    result = [NSArray arrayWithObjects:&v44 count:1];
LABEL_21:

    goto LABEL_22;
  }

  userInfo = +[NSUserDefaults safari_browserDefaults];
  [userInfo safari_incrementNumberForKey:WBSPeriodicSyncSuccessesCount];
LABEL_23:

LABEL_24:

  return result;
}

- (id)deviceIdentifier
{
  v2 = [WebBookmarkCollection deviceIdentifierForCloudKitWithCollectionType:[(WBCollectionConfiguration *)self->_collectionConfiguration collectionType] generateIfNeeded:1];
  uUID = [v2 UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)registerSyncObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (id)_log
{
  collectionType = [(WBCollectionConfiguration *)self->_collectionConfiguration collectionType];
  if (collectionType == 1)
  {
    collectionType = [(CloudTabGroupSyncCoordinator *)self _tabGroupsLog];
  }

  else if (!collectionType)
  {
    collectionType = [(CloudTabGroupSyncCoordinator *)self _bookmarksLog];
  }

  return collectionType;
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