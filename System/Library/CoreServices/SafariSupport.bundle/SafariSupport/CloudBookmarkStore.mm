@interface CloudBookmarkStore
- (BOOL)_canHandleCKRecordZoneWithID:(id)d;
- (BOOL)_checkMigrationStateOnInternalQueueInRecord:(id)record error:(id)error;
- (BOOL)_isUnrecoverableCloudKitWriteError:(id)error;
- (BOOL)handlesRecordChangesToRecordZoneWithID:(id)d;
- (BOOL)includesMigrationRecordInSaveBatch;
- (BOOL)isSecondaryRecordZoneID:(id)d;
- (CloudBookmarkStore)initWithType:(int64_t)type container:(id)container localStorage:(id)storage;
- (CloudBookmarkStoreLocalStorage)localStorage;
- (WBSHashGenerator)bookmarkHashGenerator;
- (id)cloudBookmarkItemConfigurationForRecord:(id)record;
- (id)createSubscriptionRequestOperationGroupWithQualityOfService:(int64_t)service xpcActivity:(id)activity;
- (id)operationConfiguration;
- (id)rootRecordNameForSecondaryRecordZoneID:(id)d;
- (id)secondaryRecordZoneIDWithRootRecordName:(id)name;
- (void)_cacheEncryptionRecord:(id)record;
- (void)_createEncryptionRecordForRecordZoneWithID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_fetchRemoteMigrationInfoInOperationGroup:(id)group completionHandler:(id)handler;
- (void)_fetchUserIdentityInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_modifyRecords:(id)records andDeleteRecordIDs:(id)ds inDatabase:(id)database operationGroup:(id)group previouslySavedRecords:(id)savedRecords previouslyDeletedRecords:(id)deletedRecords mergeHandler:(id)handler completionHandler:(id)self0;
- (void)_prepareBookmarksRecordZoneInvalidatingCachedZone:(BOOL)zone createIfNeeded:(BOOL)needed inOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_prepareBookmarksRecordZoneOnInternalQueueAfterExternalCompletionHandlersHaveBeenStashedInvalidatingCachedZone:(BOOL)zone createIfNeeded:(BOOL)needed inOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_saveBookmarksRecordBatch:(id)batch inOperationGroup:(id)group clientChangeTokenData:(id)data previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_setUpEncryptionInfoInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_setUpRecordZoneInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)acceptCloudKitShareWithMetadata:(id)metadata inOperationGroup:(id)group completionHandler:(id)handler;
- (void)addParticipantsWithEmailAddresses:(id)addresses toShareInRecordZoneWithID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)clearCachedRecordZone;
- (void)createRecordZoneAndEncryptionInfoWithZoneName:(id)name inOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteBookmarksRecordBatch:(id)batch inOperationGroup:(id)group clientChangeTokenData:(id)data completionHandler:(id)handler;
- (void)deleteBookmarksZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteRecordWithID:(id)d inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler;
- (void)deleteRecordZonesWithIDs:(id)ds inOperationGroup:(id)group perRecordZoneDeleteBlock:(id)block completionHandler:(id)handler;
- (void)deleteRecordsWithIDs:(id)ds inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler;
- (void)deleteSubscriptionWithID:(id)d inDatabase:(id)database operationGroup:(id)group withCompletionHandler:(id)handler;
- (void)fetchAllBookmarkRecordsWithCompletionHandler:(id)handler;
- (void)fetchBookmarkRecordsWithNames:(id)names withCompletionHandler:(id)handler;
- (void)fetchBookmarksRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)fetchCachedRemoteMigrationInfoWithCompletionHandler:(id)handler;
- (void)fetchChangesSinceServerChangeToken:(id)token inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler;
- (void)fetchEncryptionInfoWithCompletionHandler:(id)handler;
- (void)fetchEncryptionRecordsForZonesWithIDs:(id)ds inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler;
- (void)fetchMetadataZoneRecordsInOperationGroup:(id)group withRecordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)fetchMinimumSyncAPIVersionInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)fetchNumberOfDevicesInSyncCircleWithCompletionHandler:(id)handler;
- (void)fetchRecordWithID:(id)d inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler;
- (void)fetchRecordZoneChangesInZonesWithIDs:(id)ds perZoneConfigurations:(id)configurations inDatabase:(id)database operationGroup:(id)group recordWasChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock recordZoneFetchCompletionBlock:(id)completionBlock completionHandler:(id)self0;
- (void)fetchRecordsWithIDs:(id)ds inDatabase:(id)database operationGroup:(id)group perRecordCompletionBlock:(id)block completionHandler:(id)handler;
- (void)fetchRemoteMigrationInfoInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)fetchShareMetadataWithURL:(id)l invitationTokenData:(id)data inOperationGroup:(id)group completionHandler:(id)handler;
- (void)fetchShareRecordForRecordZoneWithID:(id)d inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler;
- (void)fetchSubscriptionWithID:(id)d inDatabase:(id)database operationGroup:(id)group withCompletionHandler:(id)handler;
- (void)fetchUserIdentityInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)modifyRecords:(id)records andDeleteRecordIDs:(id)ds inDatabase:(id)database operationGroup:(id)group mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)removeParticipantsWithEmailAddresses:(id)addresses fromShareInRecordZoneWithID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveBookmarksRecordBatch:(id)batch inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)saveBookmarksZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)saveOrLoadRecord:(id)record inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler;
- (void)saveSubscription:(id)subscription inDatabase:(id)database operationGroup:(id)group withCompletionHandler:(id)handler;
- (void)setIncludesMigrationRecordInSaveBatch:(BOOL)batch;
- (void)setMinimumSyncAPIVersion:(int64_t)version completionHandler:(id)handler;
- (void)setRemoteMigrationState:(int64_t)state deviceIdentifier:(id)identifier inOperationGroup:(id)group completionHandler:(id)handler;
- (void)setUpSharingForRecordZoneWithID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
@end

@implementation CloudBookmarkStore

- (CloudBookmarkStoreLocalStorage)localStorage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000014C0;
  v10 = sub_100054E84;
  v11 = 0;
  internalQueue = self->super._internalQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100054E8C;
  v5[3] = &unk_100133C00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)includesMigrationRecordInSaveBatch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->super._internalQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100054F60;
  v5[3] = &unk_100133C00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIncludesMigrationRecordInSaveBatch:(BOOL)batch
{
  internalQueue = self->super._internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100055000;
  v4[3] = &unk_100131D10;
  v4[4] = self;
  batchCopy = batch;
  dispatch_sync(internalQueue, v4);
}

- (CloudBookmarkStore)initWithType:(int64_t)type container:(id)container localStorage:(id)storage
{
  containerCopy = container;
  storageCopy = storage;
  v51.receiver = self;
  v51.super_class = CloudBookmarkStore;
  v11 = [(CloudRemoteStore *)&v51 init];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkStore.%@.%p.internalQueue", objc_opt_class(), v11];
  v13 = dispatch_queue_create([v12 UTF8String], 0);
  v14 = *(v11 + 1);
  *(v11 + 1) = v13;

  v15 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkStore.%@.%p.completionHandlerQueue", objc_opt_class(), v11];
  v16 = dispatch_queue_create([v15 UTF8String], 0);
  v17 = *(v11 + 2);
  *(v11 + 2) = v16;

  *(v11 + 20) = type;
  objc_storeStrong(v11 + 19, storage);
  if (*(v11 + 19))
  {
    v18 = [CKRecord alloc];
    migrationStateEncodedRecordData = [*(v11 + 19) migrationStateEncodedRecordData];
    v20 = [v18 safari_initWithEncodedRecordData:migrationStateEncodedRecordData];
    v21 = *(v11 + 11);
    *(v11 + 11) = v20;
  }

  if (type == 1)
  {
    v30 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    v31 = *(v11 + 4);
    *(v11 + 4) = v30;

    v32 = +[CKRecordZoneID safari_tabGroupsRecordZoneID];
    v33 = *(v11 + 13);
    *(v11 + 13) = v32;

    v34 = +[CloudBookmarkItemConfiguration cloudTabGroupConfigurations];
    v35 = [v34 copy];
    v36 = *(v11 + 24);
    *(v11 + 24) = v35;

    objc_storeStrong(v11 + 23, WBSCKRecordZoneIDSecondaryZoneNamePrefixTabGroups);
    v37 = WBSCKShareTypeSharedTabGroup;
    v27 = *(v11 + 17);
    *(v11 + 17) = v37;
  }

  else
  {
    if (type)
    {
      goto LABEL_9;
    }

    v22 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v23 = *(v11 + 4);
    *(v11 + 4) = v22;

    v24 = +[CKRecordZoneID safari_bookmarksRecordZoneID];
    v25 = *(v11 + 13);
    *(v11 + 13) = v24;

    v26 = *(v11 + 22);
    *(v11 + 22) = @"ZoneSubscription";

    v27 = +[CloudBookmarkItemConfiguration cloudBookmarkConfigurations];
    v28 = [v27 copy];
    v29 = *(v11 + 24);
    *(v11 + 24) = v28;
  }

LABEL_9:
  objc_storeStrong(v11 + 21, container);
  privateCloudDatabase = [*(v11 + 21) privateCloudDatabase];
  v39 = *(v11 + 5);
  *(v11 + 5) = privateCloudDatabase;

  if (!*(v11 + 5) && os_log_type_enabled(*(v11 + 4), OS_LOG_TYPE_ERROR))
  {
    sub_1000676FC();
  }

  v40 = objc_opt_new();
  v41 = *(v11 + 7);
  *(v11 + 7) = v40;

  [*(v11 + 7) setQualityOfService:17];
  v42 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkStore.%@.%p.operationQueue", objc_opt_class(), v11];
  [*(v11 + 7) setName:v42];

  v43 = [[CKRecordID alloc] initWithRecordName:@"SyncRequirements" zoneID:*(v11 + 13)];
  v44 = *(v11 + 14);
  *(v11 + 14) = v43;

  v45 = [[CKRecordID alloc] initWithRecordName:@"EncryptionInfo" zoneID:*(v11 + 13)];
  v46 = *(v11 + 15);
  *(v11 + 15) = v45;

  v47 = [[CKRecordID alloc] initWithRecordName:@"MigrationState" zoneID:*(v11 + 13)];
  v48 = *(v11 + 16);
  *(v11 + 16) = v47;

  v49 = v11;
LABEL_13:

  return v11;
}

- (BOOL)handlesRecordChangesToRecordZoneWithID:(id)d
{
  dCopy = d;
  if ([dCopy isEqual:self->_bookmarksRecordZoneID])
  {
    safari_isTabGroupSecondaryRecordZoneID = 1;
  }

  else if (self->_type == 1)
  {
    safari_isTabGroupSecondaryRecordZoneID = [dCopy safari_isTabGroupSecondaryRecordZoneID];
  }

  else
  {
    safari_isTabGroupSecondaryRecordZoneID = 0;
  }

  return safari_isTabGroupSecondaryRecordZoneID;
}

- (BOOL)_isUnrecoverableCloudKitWriteError:(id)error
{
  errorCopy = error;
  v5 = ([errorCopy safari_isUnrecoverableCloudKitError] & 1) != 0 || objc_msgSend(errorCopy, "safari_isOrContainsCloudKitMissingZoneError") && (objc_msgSend(errorCopy, "safari_containsCloudKitMissingZoneErrorForRecordZoneID:", self->_bookmarksRecordZoneID) & 1) != 0;

  return v5;
}

- (BOOL)isSecondaryRecordZoneID:(id)d
{
  if (self->_type == 1)
  {
    return [d safari_isTabGroupSecondaryRecordZoneID];
  }

  else
  {
    return 0;
  }
}

- (id)secondaryRecordZoneIDWithRootRecordName:(id)name
{
  if (self->_type == 1)
  {
    v5 = [CKRecordZoneID safari_tabGroupSecondaryRecordZoneIDWithRootRecordName:name, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)rootRecordNameForSecondaryRecordZoneID:(id)d
{
  if (self->_type == 1)
  {
    safari_tabGroupRootRecordName = [d safari_tabGroupRootRecordName];
  }

  else
  {
    safari_tabGroupRootRecordName = 0;
  }

  return safari_tabGroupRootRecordName;
}

- (id)createSubscriptionRequestOperationGroupWithQualityOfService:(int64_t)service xpcActivity:(id)activity
{
  if (self->_type == 1)
  {
    v6 = @"Tab Groups Subscription Request";
  }

  else
  {
    v6 = @"Cloud Bookmark Subscription Request";
  }

  return [(CloudRemoteStore *)self createOperationGroupWithName:v6 qualityOfService:service xpcActivity:activity];
}

- (void)fetchUserIdentityInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetching user identity", buf, 2u);
  }

  internalQueue = self->super._internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000557C0;
  v13[3] = &unk_1001315B0;
  v13[4] = self;
  v14 = v8;
  v15 = groupCopy;
  v16 = handlerCopy;
  v10 = groupCopy;
  v11 = handlerCopy;
  v12 = v8;
  dispatch_async(internalQueue, v13);
}

- (void)_fetchUserIdentityInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = self->_log;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000559F0;
  v10[3] = &unk_100133C50;
  v11 = v7;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = v7;
  [(CloudBookmarkStore *)self _prepareBookmarksRecordZoneInOperationGroup:group withCompletionHandler:v10];
}

- (void)clearCachedRecordZone
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Clearing cached record zone", buf, 2u);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055F58;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (id)cloudBookmarkItemConfigurationForRecord:(id)record
{
  recordCopy = record;
  cloudBookmarkItemConfigurations = self->_cloudBookmarkItemConfigurations;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100056088;
  v9[3] = &unk_100133188;
  v10 = recordCopy;
  v6 = recordCopy;
  v7 = [(NSArray *)cloudBookmarkItemConfigurations safari_firstObjectPassingTest:v9];

  return v7;
}

- (id)operationConfiguration
{
  if (self->_type == 1)
  {
    v3 = objc_alloc_init(CKOperationConfiguration);
    [v3 setContainer:self->_container];
    [v3 setQualityOfService:17];
    [v3 setTimeoutIntervalForRequest:30.0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)createRecordZoneAndEncryptionInfoWithZoneName:(id)name inOperationGroup:(id)group completionHandler:(id)handler
{
  nameCopy = name;
  groupCopy = group;
  handlerCopy = handler;
  if ([(NSString *)self->_secondaryRecordZoneNamePrefix length])
  {
    v11 = [(CloudBookmarkStore *)self secondaryRecordZoneIDWithRootRecordName:nameCopy];
    v12 = [[CKRecordZone alloc] initWithZoneID:v11];
    v13 = [[WBSRetryableCKModifyRecordZonesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
    [v13 setLog:self->_log];
    operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
    [v13 setConfiguration:operationConfiguration];

    [v13 setGroup:groupCopy];
    [v13 setDatabase:self->_database];
    v28 = v12;
    v15 = [NSArray arrayWithObjects:&v28 count:1];
    [v13 setRecordZonesToSave:v15];

    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100056440;
    v22 = &unk_100133CA0;
    v23 = v11;
    v25 = handlerCopy;
    v24 = groupCopy;
    v16 = handlerCopy;
    v17 = v11;
    [v13 setModifyRecordZonesCompletionBlock:&v19];
    [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v13, v19, v20, v21, v22];
  }

  else
  {
    completionHandlerQueue = self->super._completionHandlerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000563CC;
    block[3] = &unk_100131628;
    v27 = handlerCopy;
    v12 = handlerCopy;
    dispatch_async(completionHandlerQueue, block);
    v13 = v27;
  }
}

- (void)_createEncryptionRecordForRecordZoneWithID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  dCopy = d;
  v10 = [handler copy];
  v11 = objc_alloc_init(WBSHashGenerator);
  v12 = [v11 encryptionInfoRecordWithZone:dCopy];

  v13 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v13 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v13 setConfiguration:operationConfiguration];

  [v13 setGroup:groupCopy];
  [v13 setDatabase:self->_database];
  v24 = v12;
  v15 = [NSArray arrayWithObjects:&v24 count:1];
  [v13 setRecordsToSave:v15];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100056908;
  v22[3] = &unk_100133CC8;
  v16 = v10;
  v23 = v16;
  [v13 setDidExceedRetryTimeout:v22];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100056A54;
  v19[3] = &unk_100133CF0;
  v20 = v11;
  v21 = v16;
  v17 = v11;
  v18 = v16;
  [v13 setModifyRecordsCompletionBlock:v19];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v13];
}

- (void)deleteRecordZonesWithIDs:(id)ds inOperationGroup:(id)group perRecordZoneDeleteBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  groupCopy = group;
  dsCopy = ds;
  v14 = [[WBSRetryableCKModifyRecordZonesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v14 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v14 setConfiguration:operationConfiguration];

  [v14 setGroup:groupCopy];
  [v14 setDatabase:self->_database];
  [v14 setRecordZoneIDsToDelete:dsCopy];

  if (blockCopy)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100057044;
    v22[3] = &unk_100133D18;
    v23 = blockCopy;
    [v14 setPerRecordZoneDeleteBlock:v22];
  }

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10005705C;
  v20 = &unk_100133D40;
  v21 = handlerCopy;
  v16 = handlerCopy;
  [v14 setModifyRecordZonesCompletionBlock:&v17];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v14, v17, v18, v19, v20];
}

- (void)fetchEncryptionRecordsForZonesWithIDs:(id)ds inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler
{
  dsCopy = ds;
  databaseCopy = database;
  groupCopy = group;
  handlerCopy = handler;
  if ([(NSString *)self->_secondaryRecordZoneNamePrefix length])
  {
    v14 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
    [v14 setLog:self->_log];
    operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
    [v14 setConfiguration:operationConfiguration];

    [v14 setGroup:groupCopy];
    [v14 setDatabase:databaseCopy];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100057488;
    v26[3] = &unk_100133D68;
    v26[4] = self;
    v16 = [dsCopy safari_mapAndFilterObjectsUsingBlock:v26];
    [v14 setRecordIDs:v16];
    +[NSMutableDictionary dictionary];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100057504;
    v17 = v24[3] = &unk_100133D90;
    v25 = v17;
    [v14 setPerRecordCompletionBlock:v24];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000575B0;
    v21[3] = &unk_100133DB8;
    v22 = v17;
    v23 = handlerCopy;
    v18 = v17;
    v19 = handlerCopy;
    [v14 setFetchRecordsCompletionBlock:v21];
    [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v14];
  }

  else
  {
    completionHandlerQueue = self->super._completionHandlerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100057418;
    block[3] = &unk_100131628;
    v28 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(completionHandlerQueue, block);
    v19 = v28;
  }
}

- (void)fetchChangesSinceServerChangeToken:(id)token inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  databaseCopy = database;
  tokenCopy = token;
  v14 = [[WBSRetryableCKFetchDatabaseChangesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v14 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v14 setConfiguration:operationConfiguration];

  [v14 setGroup:groupCopy];
  [v14 setDatabase:databaseCopy];

  [v14 setPreviousServerChangeToken:tokenCopy];
  [v14 setFetchAllChanges:1];
  v16 = +[NSMutableArray array];
  v17 = +[NSMutableArray array];
  v18 = +[NSMutableArray array];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100057A8C;
  v39[3] = &unk_100133DE0;
  v19 = v16;
  v40 = v19;
  v20 = v18;
  v41 = v20;
  [v14 setRecordZoneWithIDChangedBlock:v39];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100057AFC;
  v36[3] = &unk_100133DE0;
  v21 = v17;
  v37 = v21;
  v22 = v20;
  v38 = v22;
  v23 = objc_retainBlock(v36);
  [v14 setRecordZoneWithIDWasDeletedBlock:v23];
  [v14 setRecordZoneWithIDWasPurgedBlock:v23];
  [v14 setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v23];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100057B6C;
  v31 = &unk_100133E30;
  v32 = v19;
  v33 = v21;
  v34 = v22;
  v35 = handlerCopy;
  v24 = v22;
  v25 = v21;
  v26 = v19;
  v27 = handlerCopy;
  [v14 setFetchDatabaseChangesCompletionBlock:&v28];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v14, v28, v29, v30, v31];
}

- (void)fetchRecordZoneChangesInZonesWithIDs:(id)ds perZoneConfigurations:(id)configurations inDatabase:(id)database operationGroup:(id)group recordWasChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock recordZoneFetchCompletionBlock:(id)completionBlock completionHandler:(id)self0
{
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  completionBlockCopy = completionBlock;
  handlerCopy = handler;
  groupCopy = group;
  databaseCopy = database;
  configurationsCopy = configurations;
  dsCopy = ds;
  v23 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v23 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v23 setConfiguration:operationConfiguration];

  [v23 setGroup:groupCopy];
  [v23 setDatabase:databaseCopy];

  [v23 setRecordZoneIDs:dsCopy];
  [v23 setConfigurationsByRecordZoneID:configurationsCopy];

  [v23 setFetchAllChanges:1];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100057FA8;
  v36[3] = &unk_100133E58;
  v37 = blockCopy;
  v25 = blockCopy;
  [v23 setRecordWasChangedBlock:v36];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100057FC4;
  v34[3] = &unk_100133E80;
  v35 = deletedBlockCopy;
  v26 = deletedBlockCopy;
  [v23 setRecordWithIDWasDeletedBlock:v34];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100057FDC;
  v32[3] = &unk_100133EA8;
  v33 = completionBlockCopy;
  v27 = completionBlockCopy;
  [v23 setRecordZoneFetchCompletionBlock:v32];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100058000;
  v30[3] = &unk_100133ED0;
  v31 = handlerCopy;
  v28 = handlerCopy;
  [v23 setFetchRecordZoneChangesCompletionBlock:v30];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v23];
}

- (void)modifyRecords:(id)records andDeleteRecordIDs:(id)ds inDatabase:(id)database operationGroup:(id)group mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  recordsCopy = records;
  dsCopy = ds;
  databaseCopy = database;
  groupCopy = group;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005825C;
  block[3] = &unk_100133EF8;
  block[4] = self;
  v28 = recordsCopy;
  v29 = dsCopy;
  v30 = databaseCopy;
  v31 = groupCopy;
  v32 = handlerCopy;
  v33 = completionHandlerCopy;
  v21 = completionHandlerCopy;
  v22 = handlerCopy;
  v23 = groupCopy;
  v24 = databaseCopy;
  v25 = dsCopy;
  v26 = recordsCopy;
  dispatch_async(internalQueue, block);
}

- (void)_modifyRecords:(id)records andDeleteRecordIDs:(id)ds inDatabase:(id)database operationGroup:(id)group previouslySavedRecords:(id)savedRecords previouslyDeletedRecords:(id)deletedRecords mergeHandler:(id)handler completionHandler:(id)self0
{
  recordsCopy = records;
  dsCopy = ds;
  databaseCopy = database;
  groupCopy = group;
  savedRecordsCopy = savedRecords;
  deletedRecordsCopy = deletedRecords;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v19 = self->_log;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = [recordsCopy count];
    *&buf[12] = 2048;
    *&buf[14] = [dsCopy count];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Saving record batch with %zu records and %zu deletes", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v98 = sub_1000014C0;
  v99 = sub_100054E84;
  v100 = [recordsCopy copy];
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = sub_1000014C0;
  v95 = sub_100054E84;
  v96 = [dsCopy copy];
  v20 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v20 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v20 setConfiguration:operationConfiguration];

  [v20 setGroup:groupCopy];
  [v20 setDatabase:databaseCopy];
  [v20 setRecordsToSave:*(*&buf[8] + 40)];
  [v20 setRecordIDsToDelete:v92[5]];
  [v20 setAtomic:0];
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100058A28;
  v88[3] = &unk_100133F20;
  v22 = v19;
  v89 = v22;
  v23 = completionHandlerCopy;
  v90 = v23;
  [v20 setOwnerDidDeallocateBlock:v88];
  v47 = groupCopy;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x2020000000;
  v87 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x2020000000;
  v85 = 0;
  v24 = [recordsCopy safari_dictionaryByMappingObjectsToKeysUsingBlock:&stru_100133F60];
  selfCopy = self;
  v25 = +[NSMutableArray array];
  v26 = +[NSMutableArray array];
  v27 = +[NSMutableArray array];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100058A8C;
  v76[3] = &unk_100133F88;
  v45 = v24;
  v77 = v45;
  v28 = v22;
  v78 = v28;
  v82 = v86;
  v29 = v25;
  v79 = v29;
  v30 = handlerCopy;
  v81 = v30;
  v31 = v26;
  v80 = v31;
  v83 = v84;
  [v20 setPerRecordSaveBlock:v76];
  v32 = +[NSMutableArray array];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100058F08;
  v71[3] = &unk_100133FB0;
  v33 = v28;
  v72 = v33;
  v75 = v86;
  v34 = v32;
  v73 = v34;
  v35 = v27;
  v74 = v35;
  [v20 setPerRecordDeleteBlock:v71];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000590C4;
  v55[3] = &unk_100134028;
  v36 = v33;
  v56 = v36;
  v44 = v23;
  v65 = v44;
  v49 = savedRecordsCopy;
  v57 = v49;
  v51 = deletedRecordsCopy;
  v58 = v51;
  v67 = v86;
  v37 = v34;
  v59 = v37;
  v68 = v84;
  v38 = v29;
  v60 = v38;
  v39 = v35;
  v61 = v39;
  v40 = v31;
  v62 = v40;
  v41 = databaseCopy;
  v63 = v41;
  v42 = v47;
  v64 = v42;
  v43 = v30;
  v66 = v43;
  v69 = buf;
  v70 = &v91;
  [v20 setModifyRecordsCompletionBlock:v55];
  [(NSOperationQueue *)selfCopy->_bookmarksOperationQueue addOperation:v20];

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v86, 8);

  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(buf, 8);
}

- (void)setUpSharingForRecordZoneWithID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  dCopy = d;
  v10 = [handler copy];
  v11 = [[CKShare alloc] initWithRecordZoneID:dCopy];

  [v11 setObject:self->_shareType forKeyedSubscript:CKShareTypeKey];
  [v11 setParticipantSelfRemovalBehavior:1];
  v12 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v12 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v12 setConfiguration:operationConfiguration];

  [v12 setGroup:groupCopy];
  [v12 setDatabase:self->_database];
  v24 = v11;
  v14 = [NSArray arrayWithObjects:&v24 count:1];
  [v12 setRecordsToSave:v14];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100059EFC;
  v22[3] = &unk_100133E58;
  v15 = v10;
  v23 = v15;
  [v12 setPerRecordSaveBlock:v22];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10005A104;
  v20 = &unk_100134050;
  v21 = v15;
  v16 = v15;
  [v12 setModifyRecordsCompletionBlock:&v17];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v12, v17, v18, v19, v20];
}

- (void)fetchShareRecordForRecordZoneWithID:(id)d inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  databaseCopy = database;
  dCopy = d;
  v13 = [handler copy];
  v14 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:dCopy];

  v15 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:operationConfiguration];

  [v15 setGroup:groupCopy];
  [v15 setDatabase:databaseCopy];

  v27 = v14;
  v17 = [NSArray arrayWithObjects:&v27 count:1];
  [v15 setRecordIDs:v17];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005A4A4;
  v25[3] = &unk_100134078;
  v18 = v13;
  v26 = v18;
  [v15 setPerRecordCompletionBlock:v25];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10005A660;
  v23 = &unk_1001340A0;
  v24 = v18;
  v19 = v18;
  [v15 setFetchRecordsCompletionBlock:&v20];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15, v20, v21, v22, v23];
}

- (void)fetchShareMetadataWithURL:(id)l invitationTokenData:(id)data inOperationGroup:(id)group completionHandler:(id)handler
{
  lCopy = l;
  dataCopy = data;
  groupCopy = group;
  v13 = [handler copy];
  v14 = [[WBSRetryableCKFetchShareMetadataOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v14 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v14 setConfiguration:operationConfiguration];

  [v14 setGroup:groupCopy];
  v29 = lCopy;
  v16 = [NSArray arrayWithObjects:&v29 count:1];
  [v14 setShareURLs:v16];

  if (dataCopy)
  {
    v17 = [[CKDeviceToDeviceShareInvitationToken alloc] initWithSharingInvitationData:dataCopy shareURL:lCopy];
    v27 = lCopy;
    v28 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v14 setShareInvitationTokensByShareURL:v18];
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005AA34;
  v25[3] = &unk_1001340C8;
  v19 = v13;
  v26 = v19;
  [v14 setPerShareMetadataBlock:v25];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10005ABCC;
  v22[3] = &unk_1001340F0;
  v23 = lCopy;
  v24 = v19;
  v20 = lCopy;
  v21 = v19;
  [v14 setFetchShareMetadataCompletionBlock:v22];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v14];
}

- (void)addParticipantsWithEmailAddresses:(id)addresses toShareInRecordZoneWithID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  addressesCopy = addresses;
  dCopy = d;
  groupCopy = group;
  v13 = self->_log;
  v14 = [handler copy];
  v15 = [[WBSRetryableCKFetchShareParticipantsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v13];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:operationConfiguration];

  [v15 setGroup:groupCopy];
  v17 = [CKUserIdentityLookupInfo lookupInfosWithEmails:addressesCopy];
  [v15 setUserIdentityLookupInfos:v17];

  v18 = [NSMutableOrderedSet orderedSetWithArray:addressesCopy];
  v19 = +[NSMutableArray array];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10005AFFC;
  v38[3] = &unk_100134118;
  v20 = v13;
  v39 = v20;
  v21 = v19;
  v40 = v21;
  v22 = v18;
  v41 = v22;
  [v15 setPerShareParticipantCompletionBlock:v38];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10005B178;
  v30[3] = &unk_1001341B8;
  v31 = v21;
  v32 = v20;
  v36 = addressesCopy;
  v37 = v14;
  v33 = v22;
  v34 = dCopy;
  v35 = groupCopy;
  v23 = addressesCopy;
  v24 = groupCopy;
  v25 = dCopy;
  v26 = v22;
  v27 = v14;
  v28 = v20;
  v29 = v21;
  [v15 setFetchShareParticipantsCompletionBlock:v30];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)removeParticipantsWithEmailAddresses:(id)addresses fromShareInRecordZoneWithID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  addressesCopy = addresses;
  dCopy = d;
  groupCopy = group;
  v13 = self->_log;
  v30 = [handler copy];
  v14 = [NSMutableOrderedSet orderedSetWithArray:addressesCopy];
  v15 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:dCopy];
  v16 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v16 setLog:v13];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v16 setConfiguration:operationConfiguration];

  [v16 setGroup:groupCopy];
  container = [(CloudBookmarkStore *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [v16 setDatabase:privateCloudDatabase];

  v43 = v15;
  v20 = v15;
  v21 = [NSArray arrayWithObjects:&v43 count:1];
  [v16 setRecordIDs:v21];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10005C224;
  v35[3] = &unk_100134208;
  v36 = v13;
  v37 = dCopy;
  v41 = groupCopy;
  v42 = v30;
  v38 = addressesCopy;
  v39 = v14;
  selfCopy = self;
  v22 = groupCopy;
  v23 = v14;
  v24 = addressesCopy;
  v25 = v30;
  v26 = dCopy;
  v27 = v13;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10005C814;
  v33[3] = &unk_100134078;
  v28 = [v35 copy];
  v34 = v28;
  [v16 setPerRecordCompletionBlock:v33];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10005C8EC;
  v31[3] = &unk_1001340A0;
  v32 = v28;
  v29 = v28;
  [v16 setFetchRecordsCompletionBlock:v31];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v16];
}

- (void)acceptCloudKitShareWithMetadata:(id)metadata inOperationGroup:(id)group completionHandler:(id)handler
{
  metadataCopy = metadata;
  groupCopy = group;
  v10 = [handler copy];
  v11 = [[WBSRetryableCKAcceptSharesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v11 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v11 setConfiguration:operationConfiguration];

  [v11 setGroup:groupCopy];
  v22 = metadataCopy;
  v13 = [NSArray arrayWithObjects:&v22 count:1];
  [v11 setShareMetadatas:v13];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005CBDC;
  v20[3] = &unk_100134230;
  v14 = v10;
  v21 = v14;
  [v11 setPerShareCompletionBlock:v20];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005CD74;
  v17[3] = &unk_100134258;
  v18 = metadataCopy;
  v19 = v14;
  v15 = metadataCopy;
  v16 = v14;
  [v11 setAcceptSharesCompletionBlock:v17];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v11];
}

- (void)fetchSubscriptionWithID:(id)d inDatabase:(id)database operationGroup:(id)group withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12 = self->_log;
  groupCopy = group;
  databaseCopy = database;
  v15 = [[WBSRetryableCKFetchSubscriptionsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  [v15 setTimeout:0.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:operationConfiguration];

  [v15 setGroup:groupCopy];
  [v15 setDatabase:databaseCopy];

  v31 = dCopy;
  v17 = [NSArray arrayWithObjects:&v31 count:1];
  [v15 setSubscriptionIDs:v17];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10005D144;
  v29[3] = &unk_100134280;
  v18 = v12;
  v30 = v18;
  [v15 setOwnerDidDeallocateBlock:v29];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10005D180;
  v25 = &unk_1001342A8;
  v26 = dCopy;
  v27 = v18;
  v28 = handlerCopy;
  v19 = handlerCopy;
  v20 = v18;
  v21 = dCopy;
  [v15 setFetchSubscriptionCompletionBlock:&v22];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15, v22, v23, v24, v25];
}

- (void)saveSubscription:(id)subscription inDatabase:(id)database operationGroup:(id)group withCompletionHandler:(id)handler
{
  subscriptionCopy = subscription;
  handlerCopy = handler;
  v12 = self->_log;
  groupCopy = group;
  databaseCopy = database;
  v15 = [[WBSRetryableCKModifySubscriptionsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  [v15 setTimeout:0.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:operationConfiguration];

  [v15 setGroup:groupCopy];
  [v15 setDatabase:databaseCopy];

  v26 = subscriptionCopy;
  v17 = [NSArray arrayWithObjects:&v26 count:1];
  [v15 setSubscriptionsToSave:v17];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10005D4E4;
  v24[3] = &unk_1001342D0;
  v25 = v12;
  v18 = v12;
  [v15 setOwnerDidDeallocateBlock:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005D520;
  v21[3] = &unk_1001342F8;
  v22 = subscriptionCopy;
  v23 = handlerCopy;
  v19 = subscriptionCopy;
  v20 = handlerCopy;
  [v15 setModifySubscriptionsCompletionBlock:v21];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)deleteSubscriptionWithID:(id)d inDatabase:(id)database operationGroup:(id)group withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = self->_log;
  groupCopy = group;
  databaseCopy = database;
  dCopy = d;
  v15 = [[WBSRetryableCKModifySubscriptionsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v11];
  [v15 setTimeout:0.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:operationConfiguration];

  [v15 setGroup:groupCopy];
  [v15 setDatabase:databaseCopy];

  v27 = dCopy;
  v17 = [NSArray arrayWithObjects:&v27 count:1];
  [v15 setSubscriptionIDsToDelete:v17];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005D82C;
  v25[3] = &unk_1001342D0;
  v26 = v11;
  v18 = v11;
  [v15 setOwnerDidDeallocateBlock:v25];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10005D868;
  v23 = &unk_100134320;
  v24 = handlerCopy;
  v19 = handlerCopy;
  [v15 setModifySubscriptionsCompletionBlock:&v20];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15, v20, v21, v22, v23];
}

- (void)saveBookmarksZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Saving Bookmarks zone subscription", buf, 2u);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005E1BC;
  v12[3] = &unk_100134398;
  objc_copyWeak(&v16, buf);
  v9 = v8;
  v13 = v9;
  v10 = handlerCopy;
  v15 = v10;
  v11 = groupCopy;
  v14 = v11;
  [(CloudBookmarkStore *)self _prepareBookmarksRecordZoneInOperationGroup:v11 withCompletionHandler:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)fetchBookmarksRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  tokenCopy = token;
  groupCopy = group;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Fetching record changes for Bookmarks zone", buf, 2u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10005E528;
  v24[3] = &unk_1001343E8;
  objc_copyWeak(&v31, &location);
  v18 = v17;
  v25 = v18;
  v19 = handlerCopy;
  v28 = v19;
  v20 = tokenCopy;
  v26 = v20;
  v21 = blockCopy;
  v29 = v21;
  v22 = deletedBlockCopy;
  v30 = v22;
  v23 = groupCopy;
  v27 = v23;
  [(CloudBookmarkStore *)self setUpBookmarksRecordZoneInOperationGroup:v23 withCompletionHandler:v24];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)fetchNumberOfDevicesInSyncCircleWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E9D4;
  v4[3] = &unk_100131A70;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(CloudBookmarkStore *)selfCopy _prepareBookmarksRecordZoneInvalidatingCachedZone:1 createIfNeeded:1 inOperationGroup:0 withCompletionHandler:v4];
}

- (void)saveBookmarksRecordBatch:(id)batch inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  batchCopy = batch;
  groupCopy = group;
  dataCopy = data;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v18 = log;
    *buf = 134217984;
    v32 = [batchCopy count];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Saving record batch of size: %lu", buf, 0xCu);
  }

  internalQueue = self->super._internalQueue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005ED64;
  v25[3] = &unk_100134438;
  v25[4] = self;
  v26 = batchCopy;
  v27 = groupCopy;
  v28 = dataCopy;
  v29 = handlerCopy;
  v30 = completionHandlerCopy;
  v20 = completionHandlerCopy;
  v21 = handlerCopy;
  v22 = dataCopy;
  v23 = groupCopy;
  v24 = batchCopy;
  dispatch_async(internalQueue, v25);
}

- (void)deleteBookmarksRecordBatch:(id)batch inOperationGroup:(id)group clientChangeTokenData:(id)data completionHandler:(id)handler
{
  batchCopy = batch;
  dataCopy = data;
  handlerCopy = handler;
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v29 = [batchCopy count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deleting record batch of size: %lu", buf, 0xCu);
  }

  v13 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v13 setLog:v12];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v13 setConfiguration:operationConfiguration];

  [v13 setDatabase:self->_database];
  [v13 setClientChangeTokenData:dataCopy];
  [v13 setRecordIDsToDelete:batchCopy];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005F07C;
  v25[3] = &unk_100133F20;
  v15 = v12;
  v26 = v15;
  v16 = handlerCopy;
  v27 = v16;
  [v13 setOwnerDidDeallocateBlock:v25];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10005F0D8;
  v22 = &unk_100134460;
  v23 = v15;
  v24 = v16;
  v17 = v16;
  v18 = v15;
  [v13 setModifyRecordsCompletionBlock:&v19];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v13, v19, v20, v21, v22];
}

- (void)deleteBookmarksZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to delete bookmark zone", buf, 2u);
  }

  v9 = self->_bookmarksRecordZoneID;
  v10 = [[WBSRetryableCKModifyRecordZonesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v10 setLog:v8];
  [v10 setTimeout:0.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v10 setConfiguration:operationConfiguration];

  [v10 setGroup:groupCopy];
  [v10 setDatabase:self->_database];
  v21 = v9;
  v12 = [NSArray arrayWithObjects:&v21 count:1];
  [v10 setRecordZoneIDsToDelete:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005F524;
  v16[3] = &unk_100134488;
  v17 = v9;
  v18 = v8;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = v8;
  v15 = v9;
  [v10 setModifyRecordZonesCompletionBlock:v16];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v10];
}

- (void)_prepareBookmarksRecordZoneInvalidatingCachedZone:(BOOL)zone createIfNeeded:(BOOL)needed inOperationGroup:(id)group withCompletionHandler:(id)handler
{
  neededCopy = needed;
  zoneCopy = zone;
  groupCopy = group;
  handlerCopy = handler;
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v24 = zoneCopy;
    v25 = 1024;
    v26 = neededCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Preparing bookmarks record zone, invalidateCachedZone: %d, createIfNeeded: %d", buf, 0xEu);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F880;
  block[3] = &unk_1001344D8;
  v21 = neededCopy;
  v22 = zoneCopy;
  block[4] = self;
  v18 = v12;
  v19 = groupCopy;
  v20 = handlerCopy;
  v14 = groupCopy;
  v15 = v12;
  v16 = handlerCopy;
  dispatch_async(internalQueue, block);
}

- (void)_prepareBookmarksRecordZoneOnInternalQueueAfterExternalCompletionHandlersHaveBeenStashedInvalidatingCachedZone:(BOOL)zone createIfNeeded:(BOOL)needed inOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetching record zone anew from CloudKit", buf, 2u);
  }

  v12 = [[WBSRetryableCKFetchRecordZonesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v12 setLog:v11];
  [v12 setTimeout:150.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v12 setConfiguration:operationConfiguration];

  [v12 setGroup:groupCopy];
  [v12 setDatabase:self->_database];
  v14 = self->_bookmarksRecordZoneID;
  v27 = v14;
  v15 = [NSArray arrayWithObjects:&v27 count:1];
  [v12 setRecordZoneIDs:v15];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005FFA4;
  v20[3] = &unk_100134528;
  v21 = v14;
  v22 = v11;
  neededCopy = needed;
  v23 = groupCopy;
  v24 = handlerCopy;
  v16 = handlerCopy;
  v17 = groupCopy;
  v18 = v11;
  v19 = v14;
  [v12 setFetchRecordZonesCompletionBlock:v20];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v12];
}

- (void)_setUpEncryptionInfoInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100068550();
  }

  v9 = [[CKRecordID alloc] initWithRecordName:@"EncryptionInfo" zoneID:self->_bookmarksRecordZoneID];
  database = self->_database;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000605D4;
  v14[3] = &unk_100134550;
  v14[4] = self;
  v15 = v8;
  v16 = groupCopy;
  v17 = handlerCopy;
  v11 = groupCopy;
  v12 = v8;
  v13 = handlerCopy;
  [(CloudBookmarkStore *)self fetchRecordWithID:v9 inDatabase:database operationGroup:v11 completionHandler:v14];
}

- (void)_cacheEncryptionRecord:(id)record
{
  recordCopy = record;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Successfully setup EncryptionInfo record", v9, 2u);
  }

  v6 = [[WBSHashGenerator alloc] initWithEncryptionInfoRecord:recordCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  threadUnsafeBookmarkHashGenerator = selfCopy->_threadUnsafeBookmarkHashGenerator;
  selfCopy->_threadUnsafeBookmarkHashGenerator = v6;

  objc_sync_exit(selfCopy);
}

- (void)fetchRecordWithID:(id)d inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12 = self->_log;
  groupCopy = group;
  databaseCopy = database;
  v15 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:operationConfiguration];

  [v15 setGroup:groupCopy];
  [v15 setDatabase:databaseCopy];

  v25 = dCopy;
  v17 = [NSArray arrayWithObjects:&v25 count:1];
  [v15 setRecordIDs:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100060A74;
  v21[3] = &unk_100134578;
  v23 = v12;
  v24 = handlerCopy;
  v22 = dCopy;
  v18 = v12;
  v19 = handlerCopy;
  v20 = dCopy;
  [v15 setFetchRecordsCompletionBlock:v21];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)fetchRecordsWithIDs:(id)ds inDatabase:(id)database operationGroup:(id)group perRecordCompletionBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  groupCopy = group;
  databaseCopy = database;
  dsCopy = ds;
  v17 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v17 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v17 setConfiguration:operationConfiguration];

  [v17 setGroup:groupCopy];
  [v17 setDatabase:databaseCopy];

  [v17 setRecordIDs:dsCopy];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100060E90;
  v26[3] = &unk_100134078;
  v27 = blockCopy;
  v19 = blockCopy;
  [v17 setPerRecordCompletionBlock:v26];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100060EAC;
  v24 = &unk_1001340A0;
  v25 = handlerCopy;
  v20 = handlerCopy;
  [v17 setFetchRecordsCompletionBlock:&v21];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v17, v21, v22, v23, v24];
}

- (void)saveOrLoadRecord:(id)record inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler
{
  recordCopy = record;
  handlerCopy = handler;
  v12 = self->_log;
  groupCopy = group;
  databaseCopy = database;
  v15 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:operationConfiguration];

  [v15 setGroup:groupCopy];
  [v15 setDatabase:databaseCopy];

  v25 = recordCopy;
  v17 = [NSArray arrayWithObjects:&v25 count:1];
  [v15 setRecordsToSave:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000611A8;
  v21[3] = &unk_1001345A0;
  v22 = recordCopy;
  v23 = v12;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = v12;
  v20 = recordCopy;
  [v15 setModifyRecordsCompletionBlock:v21];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)deleteRecordWithID:(id)d inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  groupCopy = group;
  databaseCopy = database;
  dCopy2 = d;
  v14 = [NSArray arrayWithObjects:&dCopy count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100061878;
  v16[3] = &unk_1001345C8;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(CloudBookmarkStore *)self deleteRecordsWithIDs:v14 inDatabase:databaseCopy operationGroup:groupCopy completionHandler:v16];
}

- (void)deleteRecordsWithIDs:(id)ds inDatabase:(id)database operationGroup:(id)group completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v12 = self->_log;
  groupCopy = group;
  databaseCopy = database;
  v15 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:operationConfiguration];

  [v15 setGroup:groupCopy];
  [v15 setDatabase:databaseCopy];

  [v15 setRecordIDsToDelete:dsCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100061AA0;
  v20[3] = &unk_1001345F0;
  v22 = dsCopy;
  v23 = handlerCopy;
  v21 = v12;
  v17 = dsCopy;
  v18 = handlerCopy;
  v19 = v12;
  [v15 setModifyRecordsCompletionBlock:v20];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)_saveBookmarksRecordBatch:(id)batch inOperationGroup:(id)group clientChangeTokenData:(id)data previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  batchCopy = batch;
  groupCopy = group;
  dataCopy = data;
  recordsCopy = records;
  dsCopy = ds;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [batchCopy count];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Saving record batch with %lu records", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v82 = 0x3032000000;
  v83 = sub_1000014C0;
  v84 = sub_100054E84;
  v85 = [batchCopy copy];
  v43 = [dataCopy copy];
  threadUnsafeIncludesMigrationRecordInSaveBatch = self->_threadUnsafeIncludesMigrationRecordInSaveBatch;
  if (!threadUnsafeIncludesMigrationRecordInSaveBatch)
  {
    goto LABEL_7;
  }

  if (self->_threadUnsafeMigrationStateRecord)
  {
    firstObject = [*(*(&buf + 1) + 40) firstObject];
    recordType = [firstObject recordType];
    v21 = [recordType isEqualToString:@"MigrationState"];

    if ((v21 & 1) == 0)
    {
      threadUnsafeMigrationStateRecord = self->_threadUnsafeMigrationStateRecord;
      v22 = [NSArray arrayWithObjects:&threadUnsafeMigrationStateRecord count:1];
      v23 = [v22 arrayByAddingObjectsFromArray:*(*(&buf + 1) + 40)];
      v24 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v23;
    }

LABEL_7:
    v25 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
    [v25 setLog:v18];
    operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
    [v25 setConfiguration:operationConfiguration];

    [v25 setGroup:groupCopy];
    [v25 setDatabase:self->_database];
    [v25 setClientChangeTokenData:v43];
    [v25 setRecordsToSave:*(*(&buf + 1) + 40)];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10006248C;
    v73[3] = &unk_100133F20;
    v27 = v18;
    v74 = v27;
    v28 = completionHandlerCopy;
    v75 = v28;
    [v25 setOwnerDidDeallocateBlock:v73];
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x2020000000;
    v72 = 0;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x2020000000;
    v70 = 0;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 0;
    v37 = batchCopy;
    v29 = [batchCopy safari_dictionaryByMappingObjectsToKeysUsingBlock:&stru_100134610];
    v30 = +[NSMutableArray array];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000624F0;
    v58[3] = &unk_100134638;
    v31 = v27;
    v59 = v31;
    v63 = v71;
    v32 = v30;
    v60 = v32;
    v36 = v29;
    v61 = v36;
    v33 = handlerCopy;
    v66 = threadUnsafeIncludesMigrationRecordInSaveBatch;
    v62 = v33;
    v64 = v69;
    v65 = v67;
    [v25 setPerRecordSaveBlock:v58];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000629C8;
    v44[3] = &unk_1001346D8;
    v45 = v31;
    v51 = v28;
    v46 = recordsCopy;
    v47 = dsCopy;
    v53 = v71;
    v54 = v67;
    v57 = threadUnsafeIncludesMigrationRecordInSaveBatch;
    v55 = v69;
    v34 = v32;
    v48 = v34;
    v49 = groupCopy;
    v50 = v43;
    v52 = v33;
    p_buf = &buf;
    [v25 setModifyRecordsCompletionBlock:v44];
    [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v25];

    batchCopy = v37;
    _Block_object_dispose(v67, 8);
    _Block_object_dispose(v69, 8);
    _Block_object_dispose(v71, 8);

    goto LABEL_8;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1000689A0();
  }

  completionHandlerQueue = self->super._completionHandlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006240C;
  block[3] = &unk_100130E00;
  v79 = completionHandlerCopy;
  v77 = recordsCopy;
  v78 = dsCopy;
  dispatch_async(completionHandlerQueue, block);

  v25 = v79;
LABEL_8:

  _Block_object_dispose(&buf, 8);
}

- (void)fetchBookmarkRecordsWithNames:(id)names withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  namesCopy = names;
  v8 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v8 setLog:self->_log];
  [v8 setTimeout:150.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v8 setConfiguration:operationConfiguration];

  [v8 setDatabase:self->_database];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006372C;
  v17[3] = &unk_100134700;
  v17[4] = self;
  v10 = [namesCopy safari_mapObjectsUsingBlock:v17];

  [v8 setRecordIDs:v10];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000637A0;
  v15 = &unk_1001340A0;
  v16 = handlerCopy;
  v11 = handlerCopy;
  [v8 setFetchRecordsCompletionBlock:&v12];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v8, v12, v13, v14, v15];
}

- (WBSHashGenerator)bookmarkHashGenerator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_threadUnsafeBookmarkHashGenerator;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)fetchEncryptionInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_bookmarkEncryptionInfoRecordID;
  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to fetch encryption record from CloudKit", buf, 2u);
  }

  v7 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v7 setLog:v6];
  [v7 setTimeout:150.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v7 setConfiguration:operationConfiguration];

  [v7 setDatabase:self->_database];
  v18 = v5;
  v9 = [NSArray arrayWithObjects:&v18 count:1];
  [v7 setRecordIDs:v9];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100063B40;
  v13[3] = &unk_100134768;
  v14 = v5;
  v15 = v6;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = v6;
  v12 = v5;
  [v7 setFetchRecordsCompletionBlock:v13];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v7];
}

- (void)fetchMetadataZoneRecordsInOperationGroup:(id)group withRecordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  groupCopy = group;
  v13 = [handler copy];
  v14 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v14 setLog:self->_log];
  [v14 setTimeout:150.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v14 setConfiguration:operationConfiguration];

  [v14 setGroup:groupCopy];
  [v14 setDatabase:self->_database];
  v16 = [[CKRecordZoneID alloc] initWithZoneName:@"metadata_zone" ownerName:CKCurrentUserDefaultName];
  v31 = v16;
  v17 = [NSArray arrayWithObjects:&v31 count:1];
  [v14 setRecordZoneIDs:v17];

  if (blockCopy)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100064058;
    v29[3] = &unk_100133E58;
    v30 = blockCopy;
    [v14 setRecordWasChangedBlock:v29];
  }

  if (deletedBlockCopy)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10006406C;
    v27[3] = &unk_100133E80;
    v28 = deletedBlockCopy;
    [v14 setRecordWithIDWasDeletedBlock:v27];
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100064080;
  v25[3] = &unk_100133EA8;
  v18 = v13;
  v26 = v18;
  [v14 setRecordZoneFetchCompletionBlock:v25];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100064330;
  v23 = &unk_100133ED0;
  v24 = v18;
  v19 = v18;
  [v14 setFetchRecordZoneChangesCompletionBlock:&v20];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v14, v20, v21, v22, v23];
}

- (void)fetchCachedRemoteMigrationInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->super._internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006449C;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

- (void)fetchRemoteMigrationInfoInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000646C8;
  block[3] = &unk_100131A20;
  block[4] = self;
  v12 = groupCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = groupCopy;
  dispatch_async(internalQueue, block);
}

- (void)_fetchRemoteMigrationInfoInOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  threadUnsafeMigrationStateRecord = self->_threadUnsafeMigrationStateRecord;
  self->_threadUnsafeMigrationStateRecord = 0;
  groupCopy = group;

  [(CloudBookmarkStoreLocalStorage *)self->_threadUnsafeLocalStorage setMigrationStateEncodedRecordData:0];
  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Starting fetch of remote migration state", buf, 2u);
  }

  v10 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v10 setLog:v9];
  [v10 setTimeout:150.0];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v10 setConfiguration:operationConfiguration];

  [v10 setGroup:groupCopy];
  [v10 setDatabase:self->_database];
  v12 = self->_migrationStateRecordID;
  v22 = v12;
  v13 = [NSArray arrayWithObjects:&v22 count:1];
  [v10 setRecordIDs:v13];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100064934;
  v17[3] = &unk_100134578;
  v19 = v9;
  v20 = handlerCopy;
  v18 = v12;
  v14 = v9;
  v15 = handlerCopy;
  v16 = v12;
  [v10 setFetchRecordsCompletionBlock:v17];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v10];
}

- (void)setRemoteMigrationState:(int64_t)state deviceIdentifier:(id)identifier inOperationGroup:(id)group completionHandler:(id)handler
{
  identifierCopy = identifier;
  groupCopy = group;
  handlerCopy = handler;
  v13 = self->_log;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100065098;
  v18[3] = &unk_1001347E0;
  v19 = v13;
  selfCopy = self;
  v23 = handlerCopy;
  stateCopy = state;
  v21 = identifierCopy;
  v22 = groupCopy;
  v14 = groupCopy;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v17 = v13;
  [(CloudBookmarkStore *)self _prepareBookmarksRecordZoneInOperationGroup:v14 withCompletionHandler:v18];
}

- (void)fetchMinimumSyncAPIVersionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = self->_log;
  v8 = self->_syncRequirementsRecordID;
  groupCopy = group;
  v10 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v10 setLog:v7];
  [v10 setTimeout:150.0];
  v20 = v8;
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  [v10 setRecordIDs:v11];

  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v10 setConfiguration:operationConfiguration];

  [v10 setGroup:groupCopy];
  [v10 setDatabase:self->_database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100065A24;
  v16[3] = &unk_100134768;
  v17 = v8;
  v18 = v7;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = v7;
  v15 = v8;
  [v10 setFetchRecordsCompletionBlock:v16];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v10];
}

- (void)setMinimumSyncAPIVersion:(int64_t)version completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = self->_log;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100065F2C;
  v10[3] = &unk_100134808;
  v11 = v7;
  selfCopy = self;
  v13 = handlerCopy;
  versionCopy = version;
  v8 = handlerCopy;
  v9 = v7;
  [(CloudBookmarkStore *)self _prepareBookmarksRecordZoneInOperationGroup:0 withCompletionHandler:v10];
}

- (BOOL)_canHandleCKRecordZoneWithID:(id)d
{
  dCopy = d;
  if ([dCopy isEqual:self->_bookmarksRecordZoneID])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CloudBookmarkStore *)self isSecondaryRecordZoneID:dCopy];
  }

  return v5;
}

- (void)_setUpRecordZoneInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = self->_log;
  v9 = self->_bookmarksRecordZoneID;
  v10 = [[CKRecordZone alloc] initWithZoneID:v9];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to save new record zone", buf, 2u);
  }

  v11 = [[WBSRetryableCKModifyRecordZonesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v11 setLog:v8];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v11 setConfiguration:operationConfiguration];

  [v11 setGroup:groupCopy];
  [v11 setDatabase:self->_database];
  v27 = v10;
  v13 = [NSArray arrayWithObjects:&v27 count:1];
  [v11 setRecordZonesToSave:v13];

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000668C8;
  v21 = &unk_100134830;
  v22 = v9;
  v23 = v8;
  v24 = groupCopy;
  v25 = handlerCopy;
  v14 = groupCopy;
  v15 = handlerCopy;
  v16 = v8;
  v17 = v9;
  [v11 setModifyRecordZonesCompletionBlock:&v18];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v11, v18, v19, v20, v21];
}

- (BOOL)_checkMigrationStateOnInternalQueueInRecord:(id)record error:(id)error
{
  recordCopy = record;
  errorCopy = error;
  v8 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_5;
  }

  if ([errorCopy code] != 14)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000691DC(log);
    }

    goto LABEL_14;
  }

  safari_migratorDeviceIdentifier = [recordCopy safari_migratorDeviceIdentifier];
  safari_migratorDeviceIdentifier2 = [(CKRecord *)self->_threadUnsafeMigrationStateRecord safari_migratorDeviceIdentifier];
  v11 = [safari_migratorDeviceIdentifier isEqualToString:safari_migratorDeviceIdentifier2];

  if ((v11 & 1) == 0)
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Migrator device identifier changed", &v22, 2u);
    }

    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100069274(v16, recordCopy, &self->_threadUnsafeMigrationStateRecord);
    }

    goto LABEL_14;
  }

  safari_migrationState = [recordCopy safari_migrationState];
  if (safari_migrationState != [(CKRecord *)self->_threadUnsafeMigrationStateRecord safari_migrationState])
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      safari_migrationState2 = [recordCopy safari_migrationState];
      safari_migrationState3 = [(CKRecord *)self->_threadUnsafeMigrationStateRecord safari_migrationState];
      v22 = 134218240;
      v23 = safari_migrationState2;
      v24 = 2048;
      v25 = safari_migrationState3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Migration state changed from %ld to %ld", &v22, 0x16u);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_5:
  v13 = 1;
LABEL_15:

  return v13;
}

- (void)fetchAllBookmarkRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Internal-only -fetchAllBookmarkRecordsWithCompletionHandler: called!", buf, 2u);
  }

  v6 = objc_alloc_init(CloudBookmarksFetchResult);
  [(CloudBookmarksFetchResult *)v6 setItemConfigurations:self->_cloudBookmarkItemConfigurations];
  v7 = [handlerCopy copy];

  v8 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v8 setLog:self->_log];
  operationConfiguration = [(CloudBookmarkStore *)self operationConfiguration];
  [v8 setConfiguration:operationConfiguration];

  [v8 setDatabase:self->_database];
  v10 = self->_bookmarksRecordZoneID;
  v11 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  v31 = v10;
  v12 = [NSArray arrayWithObjects:&v31 count:1];
  [v8 setRecordZoneIDs:v12];

  v29 = v10;
  v30 = v11;
  v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v8 setConfigurationsByRecordZoneID:v13];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10006701C;
  v26[3] = &unk_100134858;
  v14 = v6;
  v27 = v14;
  [v8 setRecordWasChangedBlock:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100067030;
  v24[3] = &unk_100134880;
  v15 = v14;
  v25 = v15;
  [v8 setRecordWithIDWasDeletedBlock:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100067038;
  v21[3] = &unk_1001348A8;
  v16 = v7;
  v22 = v15;
  v23 = v16;
  v17 = v15;
  [v8 setRecordZoneFetchCompletionBlock:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100067310;
  v19[3] = &unk_100133ED0;
  v20 = v16;
  v18 = v16;
  [v8 setFetchRecordZoneChangesCompletionBlock:v19];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v8];
}

@end