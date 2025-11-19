@interface CloudBookmarkStore
- (BOOL)_canHandleCKRecordZoneWithID:(id)a3;
- (BOOL)_checkMigrationStateOnInternalQueueInRecord:(id)a3 error:(id)a4;
- (BOOL)_isUnrecoverableCloudKitWriteError:(id)a3;
- (BOOL)handlesRecordChangesToRecordZoneWithID:(id)a3;
- (BOOL)includesMigrationRecordInSaveBatch;
- (BOOL)isSecondaryRecordZoneID:(id)a3;
- (CloudBookmarkStore)initWithType:(int64_t)a3 container:(id)a4 localStorage:(id)a5;
- (CloudBookmarkStoreLocalStorage)localStorage;
- (WBSHashGenerator)bookmarkHashGenerator;
- (id)cloudBookmarkItemConfigurationForRecord:(id)a3;
- (id)createSubscriptionRequestOperationGroupWithQualityOfService:(int64_t)a3 xpcActivity:(id)a4;
- (id)operationConfiguration;
- (id)rootRecordNameForSecondaryRecordZoneID:(id)a3;
- (id)secondaryRecordZoneIDWithRootRecordName:(id)a3;
- (void)_cacheEncryptionRecord:(id)a3;
- (void)_createEncryptionRecordForRecordZoneWithID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_fetchRemoteMigrationInfoInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_fetchUserIdentityInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_modifyRecords:(id)a3 andDeleteRecordIDs:(id)a4 inDatabase:(id)a5 operationGroup:(id)a6 previouslySavedRecords:(id)a7 previouslyDeletedRecords:(id)a8 mergeHandler:(id)a9 completionHandler:(id)a10;
- (void)_prepareBookmarksRecordZoneInvalidatingCachedZone:(BOOL)a3 createIfNeeded:(BOOL)a4 inOperationGroup:(id)a5 withCompletionHandler:(id)a6;
- (void)_prepareBookmarksRecordZoneOnInternalQueueAfterExternalCompletionHandlersHaveBeenStashedInvalidatingCachedZone:(BOOL)a3 createIfNeeded:(BOOL)a4 inOperationGroup:(id)a5 withCompletionHandler:(id)a6;
- (void)_saveBookmarksRecordBatch:(id)a3 inOperationGroup:(id)a4 clientChangeTokenData:(id)a5 previouslySavedRecords:(id)a6 previouslyDeletedRecordIDs:(id)a7 mergeHandler:(id)a8 completionHandler:(id)a9;
- (void)_setUpEncryptionInfoInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_setUpRecordZoneInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)acceptCloudKitShareWithMetadata:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)addParticipantsWithEmailAddresses:(id)a3 toShareInRecordZoneWithID:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)clearCachedRecordZone;
- (void)createRecordZoneAndEncryptionInfoWithZoneName:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)deleteBookmarksRecordBatch:(id)a3 inOperationGroup:(id)a4 clientChangeTokenData:(id)a5 completionHandler:(id)a6;
- (void)deleteBookmarksZoneInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)deleteRecordWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)deleteRecordZonesWithIDs:(id)a3 inOperationGroup:(id)a4 perRecordZoneDeleteBlock:(id)a5 completionHandler:(id)a6;
- (void)deleteRecordsWithIDs:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)deleteSubscriptionWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 withCompletionHandler:(id)a6;
- (void)fetchAllBookmarkRecordsWithCompletionHandler:(id)a3;
- (void)fetchBookmarkRecordsWithNames:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchBookmarksRecordChangesSinceServerChangeToken:(id)a3 inOperationGroup:(id)a4 recordChangedBlock:(id)a5 recordWithIDWasDeletedBlock:(id)a6 completionHandler:(id)a7;
- (void)fetchCachedRemoteMigrationInfoWithCompletionHandler:(id)a3;
- (void)fetchChangesSinceServerChangeToken:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)fetchEncryptionInfoWithCompletionHandler:(id)a3;
- (void)fetchEncryptionRecordsForZonesWithIDs:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)fetchMetadataZoneRecordsInOperationGroup:(id)a3 withRecordChangedBlock:(id)a4 recordWithIDWasDeletedBlock:(id)a5 completionHandler:(id)a6;
- (void)fetchMinimumSyncAPIVersionInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchNumberOfDevicesInSyncCircleWithCompletionHandler:(id)a3;
- (void)fetchRecordWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)fetchRecordZoneChangesInZonesWithIDs:(id)a3 perZoneConfigurations:(id)a4 inDatabase:(id)a5 operationGroup:(id)a6 recordWasChangedBlock:(id)a7 recordWithIDWasDeletedBlock:(id)a8 recordZoneFetchCompletionBlock:(id)a9 completionHandler:(id)a10;
- (void)fetchRecordsWithIDs:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 perRecordCompletionBlock:(id)a6 completionHandler:(id)a7;
- (void)fetchRemoteMigrationInfoInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchShareMetadataWithURL:(id)a3 invitationTokenData:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)fetchShareRecordForRecordZoneWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)fetchSubscriptionWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 withCompletionHandler:(id)a6;
- (void)fetchUserIdentityInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)modifyRecords:(id)a3 andDeleteRecordIDs:(id)a4 inDatabase:(id)a5 operationGroup:(id)a6 mergeHandler:(id)a7 completionHandler:(id)a8;
- (void)removeParticipantsWithEmailAddresses:(id)a3 fromShareInRecordZoneWithID:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)saveBookmarksRecordBatch:(id)a3 inOperationGroup:(id)a4 clientChangeTokenData:(id)a5 mergeHandler:(id)a6 completionHandler:(id)a7;
- (void)saveBookmarksZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)saveOrLoadRecord:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (void)saveSubscription:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 withCompletionHandler:(id)a6;
- (void)setIncludesMigrationRecordInSaveBatch:(BOOL)a3;
- (void)setMinimumSyncAPIVersion:(int64_t)a3 completionHandler:(id)a4;
- (void)setRemoteMigrationState:(int64_t)a3 deviceIdentifier:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)setUpSharingForRecordZoneWithID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
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

- (void)setIncludesMigrationRecordInSaveBatch:(BOOL)a3
{
  internalQueue = self->super._internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100055000;
  v4[3] = &unk_100131D10;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(internalQueue, v4);
}

- (CloudBookmarkStore)initWithType:(int64_t)a3 container:(id)a4 localStorage:(id)a5
{
  v9 = a4;
  v10 = a5;
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

  *(v11 + 20) = a3;
  objc_storeStrong(v11 + 19, a5);
  if (*(v11 + 19))
  {
    v18 = [CKRecord alloc];
    v19 = [*(v11 + 19) migrationStateEncodedRecordData];
    v20 = [v18 safari_initWithEncodedRecordData:v19];
    v21 = *(v11 + 11);
    *(v11 + 11) = v20;
  }

  if (a3 == 1)
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
    if (a3)
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
  objc_storeStrong(v11 + 21, a4);
  v38 = [*(v11 + 21) privateCloudDatabase];
  v39 = *(v11 + 5);
  *(v11 + 5) = v38;

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

- (BOOL)handlesRecordChangesToRecordZoneWithID:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_bookmarksRecordZoneID])
  {
    v5 = 1;
  }

  else if (self->_type == 1)
  {
    v5 = [v4 safari_isTabGroupSecondaryRecordZoneID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isUnrecoverableCloudKitWriteError:(id)a3
{
  v4 = a3;
  v5 = ([v4 safari_isUnrecoverableCloudKitError] & 1) != 0 || objc_msgSend(v4, "safari_isOrContainsCloudKitMissingZoneError") && (objc_msgSend(v4, "safari_containsCloudKitMissingZoneErrorForRecordZoneID:", self->_bookmarksRecordZoneID) & 1) != 0;

  return v5;
}

- (BOOL)isSecondaryRecordZoneID:(id)a3
{
  if (self->_type == 1)
  {
    return [a3 safari_isTabGroupSecondaryRecordZoneID];
  }

  else
  {
    return 0;
  }
}

- (id)secondaryRecordZoneIDWithRootRecordName:(id)a3
{
  if (self->_type == 1)
  {
    v5 = [CKRecordZoneID safari_tabGroupSecondaryRecordZoneIDWithRootRecordName:a3, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)rootRecordNameForSecondaryRecordZoneID:(id)a3
{
  if (self->_type == 1)
  {
    v5 = [a3 safari_tabGroupRootRecordName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createSubscriptionRequestOperationGroupWithQualityOfService:(int64_t)a3 xpcActivity:(id)a4
{
  if (self->_type == 1)
  {
    v6 = @"Tab Groups Subscription Request";
  }

  else
  {
    v6 = @"Cloud Bookmark Subscription Request";
  }

  return [(CloudRemoteStore *)self createOperationGroupWithName:v6 qualityOfService:a3 xpcActivity:a4];
}

- (void)fetchUserIdentityInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  dispatch_async(internalQueue, v13);
}

- (void)_fetchUserIdentityInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = self->_log;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000559F0;
  v10[3] = &unk_100133C50;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  [(CloudBookmarkStore *)self _prepareBookmarksRecordZoneInOperationGroup:a3 withCompletionHandler:v10];
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

- (id)cloudBookmarkItemConfigurationForRecord:(id)a3
{
  v4 = a3;
  cloudBookmarkItemConfigurations = self->_cloudBookmarkItemConfigurations;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100056088;
  v9[3] = &unk_100133188;
  v10 = v4;
  v6 = v4;
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

- (void)createRecordZoneAndEncryptionInfoWithZoneName:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NSString *)self->_secondaryRecordZoneNamePrefix length])
  {
    v11 = [(CloudBookmarkStore *)self secondaryRecordZoneIDWithRootRecordName:v8];
    v12 = [[CKRecordZone alloc] initWithZoneID:v11];
    v13 = [[WBSRetryableCKModifyRecordZonesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
    [v13 setLog:self->_log];
    v14 = [(CloudBookmarkStore *)self operationConfiguration];
    [v13 setConfiguration:v14];

    [v13 setGroup:v9];
    [v13 setDatabase:self->_database];
    v28 = v12;
    v15 = [NSArray arrayWithObjects:&v28 count:1];
    [v13 setRecordZonesToSave:v15];

    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100056440;
    v22 = &unk_100133CA0;
    v23 = v11;
    v25 = v10;
    v24 = v9;
    v16 = v10;
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
    v27 = v10;
    v12 = v10;
    dispatch_async(completionHandlerQueue, block);
    v13 = v27;
  }
}

- (void)_createEncryptionRecordForRecordZoneWithID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 copy];
  v11 = objc_alloc_init(WBSHashGenerator);
  v12 = [v11 encryptionInfoRecordWithZone:v9];

  v13 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v13 setLog:self->_log];
  v14 = [(CloudBookmarkStore *)self operationConfiguration];
  [v13 setConfiguration:v14];

  [v13 setGroup:v8];
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

- (void)deleteRecordZonesWithIDs:(id)a3 inOperationGroup:(id)a4 perRecordZoneDeleteBlock:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [[WBSRetryableCKModifyRecordZonesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v14 setLog:self->_log];
  v15 = [(CloudBookmarkStore *)self operationConfiguration];
  [v14 setConfiguration:v15];

  [v14 setGroup:v12];
  [v14 setDatabase:self->_database];
  [v14 setRecordZoneIDsToDelete:v13];

  if (v10)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100057044;
    v22[3] = &unk_100133D18;
    v23 = v10;
    [v14 setPerRecordZoneDeleteBlock:v22];
  }

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10005705C;
  v20 = &unk_100133D40;
  v21 = v11;
  v16 = v11;
  [v14 setModifyRecordZonesCompletionBlock:&v17];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v14, v17, v18, v19, v20];
}

- (void)fetchEncryptionRecordsForZonesWithIDs:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(NSString *)self->_secondaryRecordZoneNamePrefix length])
  {
    v14 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
    [v14 setLog:self->_log];
    v15 = [(CloudBookmarkStore *)self operationConfiguration];
    [v14 setConfiguration:v15];

    [v14 setGroup:v12];
    [v14 setDatabase:v11];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100057488;
    v26[3] = &unk_100133D68;
    v26[4] = self;
    v16 = [v10 safari_mapAndFilterObjectsUsingBlock:v26];
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
    v23 = v13;
    v18 = v17;
    v19 = v13;
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
    v28 = v13;
    v14 = v13;
    dispatch_async(completionHandlerQueue, block);
    v19 = v28;
  }
}

- (void)fetchChangesSinceServerChangeToken:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[WBSRetryableCKFetchDatabaseChangesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v14 setLog:self->_log];
  v15 = [(CloudBookmarkStore *)self operationConfiguration];
  [v14 setConfiguration:v15];

  [v14 setGroup:v11];
  [v14 setDatabase:v12];

  [v14 setPreviousServerChangeToken:v13];
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
  v35 = v10;
  v24 = v22;
  v25 = v21;
  v26 = v19;
  v27 = v10;
  [v14 setFetchDatabaseChangesCompletionBlock:&v28];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v14, v28, v29, v30, v31];
}

- (void)fetchRecordZoneChangesInZonesWithIDs:(id)a3 perZoneConfigurations:(id)a4 inDatabase:(id)a5 operationGroup:(id)a6 recordWasChangedBlock:(id)a7 recordWithIDWasDeletedBlock:(id)a8 recordZoneFetchCompletionBlock:(id)a9 completionHandler:(id)a10
{
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v29 = a10;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v23 setLog:self->_log];
  v24 = [(CloudBookmarkStore *)self operationConfiguration];
  [v23 setConfiguration:v24];

  [v23 setGroup:v19];
  [v23 setDatabase:v20];

  [v23 setRecordZoneIDs:v22];
  [v23 setConfigurationsByRecordZoneID:v21];

  [v23 setFetchAllChanges:1];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100057FA8;
  v36[3] = &unk_100133E58;
  v37 = v16;
  v25 = v16;
  [v23 setRecordWasChangedBlock:v36];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100057FC4;
  v34[3] = &unk_100133E80;
  v35 = v17;
  v26 = v17;
  [v23 setRecordWithIDWasDeletedBlock:v34];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100057FDC;
  v32[3] = &unk_100133EA8;
  v33 = v18;
  v27 = v18;
  [v23 setRecordZoneFetchCompletionBlock:v32];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100058000;
  v30[3] = &unk_100133ED0;
  v31 = v29;
  v28 = v29;
  [v23 setFetchRecordZoneChangesCompletionBlock:v30];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v23];
}

- (void)modifyRecords:(id)a3 andDeleteRecordIDs:(id)a4 inDatabase:(id)a5 operationGroup:(id)a6 mergeHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005825C;
  block[3] = &unk_100133EF8;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  dispatch_async(internalQueue, block);
}

- (void)_modifyRecords:(id)a3 andDeleteRecordIDs:(id)a4 inDatabase:(id)a5 operationGroup:(id)a6 previouslySavedRecords:(id)a7 previouslyDeletedRecords:(id)a8 mergeHandler:(id)a9 completionHandler:(id)a10
{
  v54 = a3;
  v53 = a4;
  v52 = a5;
  v16 = a6;
  v48 = a7;
  v50 = a8;
  v17 = a9;
  v18 = a10;
  v19 = self->_log;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = [v54 count];
    *&buf[12] = 2048;
    *&buf[14] = [v53 count];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Saving record batch with %zu records and %zu deletes", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v98 = sub_1000014C0;
  v99 = sub_100054E84;
  v100 = [v54 copy];
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = sub_1000014C0;
  v95 = sub_100054E84;
  v96 = [v53 copy];
  v20 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v20 setLog:self->_log];
  v21 = [(CloudBookmarkStore *)self operationConfiguration];
  [v20 setConfiguration:v21];

  [v20 setGroup:v16];
  [v20 setDatabase:v52];
  [v20 setRecordsToSave:*(*&buf[8] + 40)];
  [v20 setRecordIDsToDelete:v92[5]];
  [v20 setAtomic:0];
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100058A28;
  v88[3] = &unk_100133F20;
  v22 = v19;
  v89 = v22;
  v23 = v18;
  v90 = v23;
  [v20 setOwnerDidDeallocateBlock:v88];
  v47 = v16;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x2020000000;
  v87 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x2020000000;
  v85 = 0;
  v24 = [v54 safari_dictionaryByMappingObjectsToKeysUsingBlock:&stru_100133F60];
  v46 = self;
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
  v30 = v17;
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
  v49 = v48;
  v57 = v49;
  v51 = v50;
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
  v41 = v52;
  v63 = v41;
  v42 = v47;
  v64 = v42;
  v43 = v30;
  v66 = v43;
  v69 = buf;
  v70 = &v91;
  [v20 setModifyRecordsCompletionBlock:v55];
  [(NSOperationQueue *)v46->_bookmarksOperationQueue addOperation:v20];

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v86, 8);

  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(buf, 8);
}

- (void)setUpSharingForRecordZoneWithID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 copy];
  v11 = [[CKShare alloc] initWithRecordZoneID:v9];

  [v11 setObject:self->_shareType forKeyedSubscript:CKShareTypeKey];
  [v11 setParticipantSelfRemovalBehavior:1];
  v12 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v12 setLog:self->_log];
  v13 = [(CloudBookmarkStore *)self operationConfiguration];
  [v12 setConfiguration:v13];

  [v12 setGroup:v8];
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

- (void)fetchShareRecordForRecordZoneWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a6 copy];
  v14 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:v12];

  v15 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:self->_log];
  v16 = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:v16];

  [v15 setGroup:v10];
  [v15 setDatabase:v11];

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

- (void)fetchShareMetadataWithURL:(id)a3 invitationTokenData:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a6 copy];
  v14 = [[WBSRetryableCKFetchShareMetadataOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v14 setLog:self->_log];
  v15 = [(CloudBookmarkStore *)self operationConfiguration];
  [v14 setConfiguration:v15];

  [v14 setGroup:v12];
  v29 = v10;
  v16 = [NSArray arrayWithObjects:&v29 count:1];
  [v14 setShareURLs:v16];

  if (v11)
  {
    v17 = [[CKDeviceToDeviceShareInvitationToken alloc] initWithSharingInvitationData:v11 shareURL:v10];
    v27 = v10;
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
  v23 = v10;
  v24 = v19;
  v20 = v10;
  v21 = v19;
  [v14 setFetchShareMetadataCompletionBlock:v22];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v14];
}

- (void)addParticipantsWithEmailAddresses:(id)a3 toShareInRecordZoneWithID:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self->_log;
  v14 = [a6 copy];
  v15 = [[WBSRetryableCKFetchShareParticipantsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v13];
  v16 = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:v16];

  [v15 setGroup:v12];
  v17 = [CKUserIdentityLookupInfo lookupInfosWithEmails:v10];
  [v15 setUserIdentityLookupInfos:v17];

  v18 = [NSMutableOrderedSet orderedSetWithArray:v10];
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
  v36 = v10;
  v37 = v14;
  v33 = v22;
  v34 = v11;
  v35 = v12;
  v23 = v10;
  v24 = v12;
  v25 = v11;
  v26 = v22;
  v27 = v14;
  v28 = v20;
  v29 = v21;
  [v15 setFetchShareParticipantsCompletionBlock:v30];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)removeParticipantsWithEmailAddresses:(id)a3 fromShareInRecordZoneWithID:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self->_log;
  v30 = [a6 copy];
  v14 = [NSMutableOrderedSet orderedSetWithArray:v10];
  v15 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:v11];
  v16 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v16 setLog:v13];
  v17 = [(CloudBookmarkStore *)self operationConfiguration];
  [v16 setConfiguration:v17];

  [v16 setGroup:v12];
  v18 = [(CloudBookmarkStore *)self container];
  v19 = [v18 privateCloudDatabase];
  [v16 setDatabase:v19];

  v43 = v15;
  v20 = v15;
  v21 = [NSArray arrayWithObjects:&v43 count:1];
  [v16 setRecordIDs:v21];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10005C224;
  v35[3] = &unk_100134208;
  v36 = v13;
  v37 = v11;
  v41 = v12;
  v42 = v30;
  v38 = v10;
  v39 = v14;
  v40 = self;
  v22 = v12;
  v23 = v14;
  v24 = v10;
  v25 = v30;
  v26 = v11;
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

- (void)acceptCloudKitShareWithMetadata:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 copy];
  v11 = [[WBSRetryableCKAcceptSharesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v11 setLog:self->_log];
  v12 = [(CloudBookmarkStore *)self operationConfiguration];
  [v11 setConfiguration:v12];

  [v11 setGroup:v9];
  v22 = v8;
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
  v18 = v8;
  v19 = v14;
  v15 = v8;
  v16 = v14;
  [v11 setAcceptSharesCompletionBlock:v17];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v11];
}

- (void)fetchSubscriptionWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self->_log;
  v13 = a5;
  v14 = a4;
  v15 = [[WBSRetryableCKFetchSubscriptionsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  [v15 setTimeout:0.0];
  v16 = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:v16];

  [v15 setGroup:v13];
  [v15 setDatabase:v14];

  v31 = v10;
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
  v26 = v10;
  v27 = v18;
  v28 = v11;
  v19 = v11;
  v20 = v18;
  v21 = v10;
  [v15 setFetchSubscriptionCompletionBlock:&v22];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15, v22, v23, v24, v25];
}

- (void)saveSubscription:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self->_log;
  v13 = a5;
  v14 = a4;
  v15 = [[WBSRetryableCKModifySubscriptionsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  [v15 setTimeout:0.0];
  v16 = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:v16];

  [v15 setGroup:v13];
  [v15 setDatabase:v14];

  v26 = v10;
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
  v22 = v10;
  v23 = v11;
  v19 = v10;
  v20 = v11;
  [v15 setModifySubscriptionsCompletionBlock:v21];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)deleteSubscriptionWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a6;
  v11 = self->_log;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[WBSRetryableCKModifySubscriptionsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v11];
  [v15 setTimeout:0.0];
  v16 = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:v16];

  [v15 setGroup:v12];
  [v15 setDatabase:v13];

  v27 = v14;
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
  v24 = v10;
  v19 = v10;
  [v15 setModifySubscriptionsCompletionBlock:&v20];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15, v20, v21, v22, v23];
}

- (void)saveBookmarksZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v14 = v11;
  [(CloudBookmarkStore *)self _prepareBookmarksRecordZoneInOperationGroup:v11 withCompletionHandler:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)fetchBookmarksRecordChangesSinceServerChangeToken:(id)a3 inOperationGroup:(id)a4 recordChangedBlock:(id)a5 recordWithIDWasDeletedBlock:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
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
  v19 = v16;
  v28 = v19;
  v20 = v12;
  v26 = v20;
  v21 = v14;
  v29 = v21;
  v22 = v15;
  v30 = v22;
  v23 = v13;
  v27 = v23;
  [(CloudBookmarkStore *)self setUpBookmarksRecordZoneInOperationGroup:v23 withCompletionHandler:v24];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)fetchNumberOfDevicesInSyncCircleWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E9D4;
  v4[3] = &unk_100131A70;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CloudBookmarkStore *)v5 _prepareBookmarksRecordZoneInvalidatingCachedZone:1 createIfNeeded:1 inOperationGroup:0 withCompletionHandler:v4];
}

- (void)saveBookmarksRecordBatch:(id)a3 inOperationGroup:(id)a4 clientChangeTokenData:(id)a5 mergeHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v18 = log;
    *buf = 134217984;
    v32 = [v12 count];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Saving record batch of size: %lu", buf, 0xCu);
  }

  internalQueue = self->super._internalQueue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005ED64;
  v25[3] = &unk_100134438;
  v25[4] = self;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  dispatch_async(internalQueue, v25);
}

- (void)deleteBookmarksRecordBatch:(id)a3 inOperationGroup:(id)a4 clientChangeTokenData:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v29 = [v9 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deleting record batch of size: %lu", buf, 0xCu);
  }

  v13 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v13 setLog:v12];
  v14 = [(CloudBookmarkStore *)self operationConfiguration];
  [v13 setConfiguration:v14];

  [v13 setDatabase:self->_database];
  [v13 setClientChangeTokenData:v10];
  [v13 setRecordIDsToDelete:v9];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005F07C;
  v25[3] = &unk_100133F20;
  v15 = v12;
  v26 = v15;
  v16 = v11;
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

- (void)deleteBookmarksZoneInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v11 = [(CloudBookmarkStore *)self operationConfiguration];
  [v10 setConfiguration:v11];

  [v10 setGroup:v6];
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
  v19 = v7;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  [v10 setModifyRecordZonesCompletionBlock:v16];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v10];
}

- (void)_prepareBookmarksRecordZoneInvalidatingCachedZone:(BOOL)a3 createIfNeeded:(BOOL)a4 inOperationGroup:(id)a5 withCompletionHandler:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v24 = v8;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Preparing bookmarks record zone, invalidateCachedZone: %d, createIfNeeded: %d", buf, 0xEu);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F880;
  block[3] = &unk_1001344D8;
  v21 = v7;
  v22 = v8;
  block[4] = self;
  v18 = v12;
  v19 = v10;
  v20 = v11;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  dispatch_async(internalQueue, block);
}

- (void)_prepareBookmarksRecordZoneOnInternalQueueAfterExternalCompletionHandlersHaveBeenStashedInvalidatingCachedZone:(BOOL)a3 createIfNeeded:(BOOL)a4 inOperationGroup:(id)a5 withCompletionHandler:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetching record zone anew from CloudKit", buf, 2u);
  }

  v12 = [[WBSRetryableCKFetchRecordZonesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v12 setLog:v11];
  [v12 setTimeout:150.0];
  v13 = [(CloudBookmarkStore *)self operationConfiguration];
  [v12 setConfiguration:v13];

  [v12 setGroup:v9];
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
  v25 = a4;
  v23 = v9;
  v24 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v11;
  v19 = v14;
  [v12 setFetchRecordZonesCompletionBlock:v20];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v12];
}

- (void)_setUpEncryptionInfoInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v16 = v6;
  v17 = v7;
  v11 = v6;
  v12 = v8;
  v13 = v7;
  [(CloudBookmarkStore *)self fetchRecordWithID:v9 inDatabase:database operationGroup:v11 completionHandler:v14];
}

- (void)_cacheEncryptionRecord:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Successfully setup EncryptionInfo record", v9, 2u);
  }

  v6 = [[WBSHashGenerator alloc] initWithEncryptionInfoRecord:v4];
  v7 = self;
  objc_sync_enter(v7);
  threadUnsafeBookmarkHashGenerator = v7->_threadUnsafeBookmarkHashGenerator;
  v7->_threadUnsafeBookmarkHashGenerator = v6;

  objc_sync_exit(v7);
}

- (void)fetchRecordWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self->_log;
  v13 = a5;
  v14 = a4;
  v15 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  v16 = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:v16];

  [v15 setGroup:v13];
  [v15 setDatabase:v14];

  v25 = v10;
  v17 = [NSArray arrayWithObjects:&v25 count:1];
  [v15 setRecordIDs:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100060A74;
  v21[3] = &unk_100134578;
  v23 = v12;
  v24 = v11;
  v22 = v10;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  [v15 setFetchRecordsCompletionBlock:v21];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)fetchRecordsWithIDs:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 perRecordCompletionBlock:(id)a6 completionHandler:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v17 setLog:self->_log];
  v18 = [(CloudBookmarkStore *)self operationConfiguration];
  [v17 setConfiguration:v18];

  [v17 setGroup:v14];
  [v17 setDatabase:v15];

  [v17 setRecordIDs:v16];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100060E90;
  v26[3] = &unk_100134078;
  v27 = v12;
  v19 = v12;
  [v17 setPerRecordCompletionBlock:v26];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100060EAC;
  v24 = &unk_1001340A0;
  v25 = v13;
  v20 = v13;
  [v17 setFetchRecordsCompletionBlock:&v21];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v17, v21, v22, v23, v24];
}

- (void)saveOrLoadRecord:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self->_log;
  v13 = a5;
  v14 = a4;
  v15 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  v16 = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:v16];

  [v15 setGroup:v13];
  [v15 setDatabase:v14];

  v25 = v10;
  v17 = [NSArray arrayWithObjects:&v25 count:1];
  [v15 setRecordsToSave:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000611A8;
  v21[3] = &unk_1001345A0;
  v22 = v10;
  v23 = v12;
  v24 = v11;
  v18 = v11;
  v19 = v12;
  v20 = v10;
  [v15 setModifyRecordsCompletionBlock:v21];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)deleteRecordWithID:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v18 = a3;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [NSArray arrayWithObjects:&v18 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100061878;
  v16[3] = &unk_1001345C8;
  v17 = v10;
  v15 = v10;
  [(CloudBookmarkStore *)self deleteRecordsWithIDs:v14 inDatabase:v12 operationGroup:v11 completionHandler:v16];
}

- (void)deleteRecordsWithIDs:(id)a3 inDatabase:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self->_log;
  v13 = a5;
  v14 = a4;
  v15 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v15 setLog:v12];
  v16 = [(CloudBookmarkStore *)self operationConfiguration];
  [v15 setConfiguration:v16];

  [v15 setGroup:v13];
  [v15 setDatabase:v14];

  [v15 setRecordIDsToDelete:v10];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100061AA0;
  v20[3] = &unk_1001345F0;
  v22 = v10;
  v23 = v11;
  v21 = v12;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  [v15 setModifyRecordsCompletionBlock:v20];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v15];
}

- (void)_saveBookmarksRecordBatch:(id)a3 inOperationGroup:(id)a4 clientChangeTokenData:(id)a5 previouslySavedRecords:(id)a6 previouslyDeletedRecordIDs:(id)a7 mergeHandler:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v40 = a6;
  v41 = a7;
  v39 = a8;
  v42 = a9;
  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v15 count];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Saving record batch with %lu records", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v82 = 0x3032000000;
  v83 = sub_1000014C0;
  v84 = sub_100054E84;
  v85 = [v15 copy];
  v43 = [v17 copy];
  threadUnsafeIncludesMigrationRecordInSaveBatch = self->_threadUnsafeIncludesMigrationRecordInSaveBatch;
  if (!threadUnsafeIncludesMigrationRecordInSaveBatch)
  {
    goto LABEL_7;
  }

  if (self->_threadUnsafeMigrationStateRecord)
  {
    v19 = [*(*(&buf + 1) + 40) firstObject];
    v20 = [v19 recordType];
    v21 = [v20 isEqualToString:@"MigrationState"];

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
    v26 = [(CloudBookmarkStore *)self operationConfiguration];
    [v25 setConfiguration:v26];

    [v25 setGroup:v16];
    [v25 setDatabase:self->_database];
    [v25 setClientChangeTokenData:v43];
    [v25 setRecordsToSave:*(*(&buf + 1) + 40)];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10006248C;
    v73[3] = &unk_100133F20;
    v27 = v18;
    v74 = v27;
    v28 = v42;
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
    v37 = v15;
    v29 = [v15 safari_dictionaryByMappingObjectsToKeysUsingBlock:&stru_100134610];
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
    v33 = v39;
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
    v46 = v40;
    v47 = v41;
    v53 = v71;
    v54 = v67;
    v57 = threadUnsafeIncludesMigrationRecordInSaveBatch;
    v55 = v69;
    v34 = v32;
    v48 = v34;
    v49 = v16;
    v50 = v43;
    v52 = v33;
    p_buf = &buf;
    [v25 setModifyRecordsCompletionBlock:v44];
    [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v25];

    v15 = v37;
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
  v79 = v42;
  v77 = v40;
  v78 = v41;
  dispatch_async(completionHandlerQueue, block);

  v25 = v79;
LABEL_8:

  _Block_object_dispose(&buf, 8);
}

- (void)fetchBookmarkRecordsWithNames:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v8 setLog:self->_log];
  [v8 setTimeout:150.0];
  v9 = [(CloudBookmarkStore *)self operationConfiguration];
  [v8 setConfiguration:v9];

  [v8 setDatabase:self->_database];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006372C;
  v17[3] = &unk_100134700;
  v17[4] = self;
  v10 = [v7 safari_mapObjectsUsingBlock:v17];

  [v8 setRecordIDs:v10];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000637A0;
  v15 = &unk_1001340A0;
  v16 = v6;
  v11 = v6;
  [v8 setFetchRecordsCompletionBlock:&v12];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v8, v12, v13, v14, v15];
}

- (WBSHashGenerator)bookmarkHashGenerator
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_threadUnsafeBookmarkHashGenerator;
  objc_sync_exit(v2);

  return v3;
}

- (void)fetchEncryptionInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v8 = [(CloudBookmarkStore *)self operationConfiguration];
  [v7 setConfiguration:v8];

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
  v16 = v4;
  v10 = v4;
  v11 = v6;
  v12 = v5;
  [v7 setFetchRecordsCompletionBlock:v13];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v7];
}

- (void)fetchMetadataZoneRecordsInOperationGroup:(id)a3 withRecordChangedBlock:(id)a4 recordWithIDWasDeletedBlock:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [a6 copy];
  v14 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v14 setLog:self->_log];
  [v14 setTimeout:150.0];
  v15 = [(CloudBookmarkStore *)self operationConfiguration];
  [v14 setConfiguration:v15];

  [v14 setGroup:v12];
  [v14 setDatabase:self->_database];
  v16 = [[CKRecordZoneID alloc] initWithZoneName:@"metadata_zone" ownerName:CKCurrentUserDefaultName];
  v31 = v16;
  v17 = [NSArray arrayWithObjects:&v31 count:1];
  [v14 setRecordZoneIDs:v17];

  if (v10)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100064058;
    v29[3] = &unk_100133E58;
    v30 = v10;
    [v14 setRecordWasChangedBlock:v29];
  }

  if (v11)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10006406C;
    v27[3] = &unk_100133E80;
    v28 = v11;
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

- (void)fetchCachedRemoteMigrationInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  internalQueue = self->super._internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006449C;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)fetchRemoteMigrationInfoInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000646C8;
  block[3] = &unk_100131A20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)_fetchRemoteMigrationInfoInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  threadUnsafeMigrationStateRecord = self->_threadUnsafeMigrationStateRecord;
  self->_threadUnsafeMigrationStateRecord = 0;
  v8 = a3;

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
  v11 = [(CloudBookmarkStore *)self operationConfiguration];
  [v10 setConfiguration:v11];

  [v10 setGroup:v8];
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
  v20 = v6;
  v18 = v12;
  v14 = v9;
  v15 = v6;
  v16 = v12;
  [v10 setFetchRecordsCompletionBlock:v17];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v10];
}

- (void)setRemoteMigrationState:(int64_t)a3 deviceIdentifier:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self->_log;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100065098;
  v18[3] = &unk_1001347E0;
  v19 = v13;
  v20 = self;
  v23 = v12;
  v24 = a3;
  v21 = v10;
  v22 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  v17 = v13;
  [(CloudBookmarkStore *)self _prepareBookmarksRecordZoneInOperationGroup:v14 withCompletionHandler:v18];
}

- (void)fetchMinimumSyncAPIVersionInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = self->_log;
  v8 = self->_syncRequirementsRecordID;
  v9 = a3;
  v10 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v10 setLog:v7];
  [v10 setTimeout:150.0];
  v20 = v8;
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  [v10 setRecordIDs:v11];

  v12 = [(CloudBookmarkStore *)self operationConfiguration];
  [v10 setConfiguration:v12];

  [v10 setGroup:v9];
  [v10 setDatabase:self->_database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100065A24;
  v16[3] = &unk_100134768;
  v17 = v8;
  v18 = v7;
  v19 = v6;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  [v10 setFetchRecordsCompletionBlock:v16];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v10];
}

- (void)setMinimumSyncAPIVersion:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = self->_log;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100065F2C;
  v10[3] = &unk_100134808;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v14 = a3;
  v8 = v6;
  v9 = v7;
  [(CloudBookmarkStore *)self _prepareBookmarksRecordZoneInOperationGroup:0 withCompletionHandler:v10];
}

- (BOOL)_canHandleCKRecordZoneWithID:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_bookmarksRecordZoneID])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CloudBookmarkStore *)self isSecondaryRecordZoneID:v4];
  }

  return v5;
}

- (void)_setUpRecordZoneInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = [(CloudBookmarkStore *)self operationConfiguration];
  [v11 setConfiguration:v12];

  [v11 setGroup:v6];
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
  v24 = v6;
  v25 = v7;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  [v11 setModifyRecordZonesCompletionBlock:&v18];
  [(NSOperationQueue *)self->_bookmarksOperationQueue addOperation:v11, v18, v19, v20, v21];
}

- (BOOL)_checkMigrationStateOnInternalQueueInRecord:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  if ([v7 code] != 14)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000691DC(log);
    }

    goto LABEL_14;
  }

  v9 = [v6 safari_migratorDeviceIdentifier];
  v10 = [(CKRecord *)self->_threadUnsafeMigrationStateRecord safari_migratorDeviceIdentifier];
  v11 = [v9 isEqualToString:v10];

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
      sub_100069274(v16, v6, &self->_threadUnsafeMigrationStateRecord);
    }

    goto LABEL_14;
  }

  v12 = [v6 safari_migrationState];
  if (v12 != [(CKRecord *)self->_threadUnsafeMigrationStateRecord safari_migrationState])
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [v6 safari_migrationState];
      v20 = [(CKRecord *)self->_threadUnsafeMigrationStateRecord safari_migrationState];
      v22 = 134218240;
      v23 = v19;
      v24 = 2048;
      v25 = v20;
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

- (void)fetchAllBookmarkRecordsWithCompletionHandler:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Internal-only -fetchAllBookmarkRecordsWithCompletionHandler: called!", buf, 2u);
  }

  v6 = objc_alloc_init(CloudBookmarksFetchResult);
  [(CloudBookmarksFetchResult *)v6 setItemConfigurations:self->_cloudBookmarkItemConfigurations];
  v7 = [v4 copy];

  v8 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->super._internalQueue];
  [v8 setLog:self->_log];
  v9 = [(CloudBookmarkStore *)self operationConfiguration];
  [v8 setConfiguration:v9];

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