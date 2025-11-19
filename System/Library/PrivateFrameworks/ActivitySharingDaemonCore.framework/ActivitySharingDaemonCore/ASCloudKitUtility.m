@interface ASCloudKitUtility
- (ASCloudKitUtility)init;
- (ASCloudKitUtility)initWithContainer:(id)a3;
- (id)_lookupInfoFromIdentifier:(id)a3;
- (void)_acceptShareMetadatas:(id)a3 completion:(id)a4;
- (void)_acceptSharesWithURLs:(id)a3 operation:(id)a4 cloudKitGroup:(id)a5 completion:(id)a6;
- (void)_fetchChangesInDatabase:(id)a3 serverChangeTokenCache:(id)a4 priority:(int64_t)a5 activity:(id)a6 group:(id)a7 additionalZoneIDs:(id)a8 zoneIDsToSkip:(id)a9 fetchConfigurations:(id)a10 completion:(id)a11;
- (void)_fetchChangesInZones:(id)a3 additionalZonesToFetch:(id)a4 fetchConfigurations:(id)a5 inDatabase:(id)a6 serverChangeTokenCache:(id)a7 priority:(int64_t)a8 allowRetry:(BOOL)a9 activity:(id)a10 group:(id)a11 completion:(id)a12;
- (void)_fetchShareParticipantForLookupInfos:(id)a3 group:(id)a4 completion:(id)a5;
- (void)_fetchShareWithShareRecordID:(id)a3 activity:(id)a4 group:(id)a5 completion:(id)a6;
- (void)_retrieveZone:(id)a3 database:(id)a4 completion:(id)a5;
- (void)_saveRecordsIntoPrivateDatabase:(id)a3 recordIDsToDelete:(id)a4 savePolicy:(int64_t)a5 priority:(int64_t)a6 activity:(id)a7 group:(id)a8 completion:(id)a9;
- (void)_saveRecordsIntoPrivateDatabaseCreatingZones:(id)a3 recordIDsToDelete:(id)a4 savePolicy:(int64_t)a5 priority:(int64_t)a6 activity:(id)a7 useZoneWideSharing:(BOOL)a8 group:(id)a9 completion:(id)a10;
- (void)acceptSharesWithInvitationTokensByShareURL:(id)a3 cloudKitGroup:(id)a4 completion:(id)a5;
- (void)acceptSharesWithURLs:(id)a3 cloudKitGroup:(id)a4 completion:(id)a5;
- (void)addParticipant:(id)a3 toShares:(id)a4 group:(id)a5 completion:(id)a6;
- (void)addParticipantWithCloudKitAddress:(id)a3 toShares:(id)a4 group:(id)a5 completion:(id)a6;
- (void)cancelAllExecutingFetches;
- (void)createRecordZonesWithIDs:(id)a3 priority:(int64_t)a4 useZoneWideSharing:(BOOL)a5 group:(id)a6 completion:(id)a7;
- (void)createShareAndAssociatedZoneWithShareRecordID:(id)a3 rootRecord:(id)a4 otherRecordsToSave:(id)a5 completion:(id)a6;
- (void)fetchChangesInPrivateDatabaseWithServerChangeTokenCache:(id)a3 priority:(int64_t)a4 activity:(id)a5 group:(id)a6 additionalZoneIDs:(id)a7 zoneIDsToSkip:(id)a8 fetchConfigurations:(id)a9 completion:(id)a10;
- (void)fetchChangesInSharedDatabaseWithServerChangeTokenCache:(id)a3 priority:(int64_t)a4 activity:(id)a5 group:(id)a6 additionalZoneIDs:(id)a7 zoneIDsToSkip:(id)a8 fetchConfigurations:(id)a9 completion:(id)a10;
- (void)fetchShareParticipantForEmailAddress:(id)a3 group:(id)a4 completion:(id)a5;
- (void)fetchShareParticipantForIdentifier:(id)a3 group:(id)a4 completion:(id)a5;
- (void)fetchShareWithShareRecordID:(id)a3 activity:(id)a4 group:(id)a5 completion:(id)a6;
- (void)removeParticipantWithCloudKitAddress:(id)a3 fromShares:(id)a4 group:(id)a5 completion:(id)a6;
- (void)retrieveZone:(id)a3 completion:(id)a4;
- (void)saveSubscriptions:(id)a3 andDeleteSubscriptionsWithIdentifiers:(id)a4 inDatabase:(id)a5 completion:(id)a6;
@end

@implementation ASCloudKitUtility

- (ASCloudKitUtility)initWithContainer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASCloudKitUtility;
  v5 = [(ASCloudKitUtility *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(ASCloudKitUtility *)v5 setContainer:v4];
    v7 = HKCreateSerialDispatchQueue();
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    queue_executingFetchOperations = v6->_queue_executingFetchOperations;
    v6->_queue_executingFetchOperations = v9;
  }

  return v6;
}

- (ASCloudKitUtility)init
{
  v4.receiver = self;
  v4.super_class = ASCloudKitUtility;
  v2 = [(ASCloudKitUtility *)&v4 init];
  if (v2)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      [ASCloudKitUtility init];
    }
  }

  return v2;
}

- (void)saveSubscriptions:(id)a3 andDeleteSubscriptionsWithIdentifiers:(id)a4 inDatabase:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x277CBC4B0];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [v13 allObjects];

  v16 = [v12 allObjects];

  v17 = [v14 initWithSubscriptionsToSave:v15 subscriptionIDsToDelete:v16];
  v18 = _ASOperationConfigurationForPriority(2, 0);
  [v17 setConfiguration:v18];

  v19 = ASCloudKitGroupInitialSetup();
  [v17 setGroup:v19];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __99__ASCloudKitUtility_saveSubscriptions_andDeleteSubscriptionsWithIdentifiers_inDatabase_completion___block_invoke;
  v21[3] = &unk_278C4E900;
  v22 = v9;
  v20 = v9;
  [v17 setModifySubscriptionsCompletionBlock:v21];
  [v11 addOperation:v17];
}

void __99__ASCloudKitUtility_saveSubscriptions_andDeleteSubscriptionsWithIdentifiers_inDatabase_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v15 = 134218240;
    v16 = [v7 count];
    v17 = 2048;
    v18 = [v8 count];
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Saved %lu subscriptions, deleted %lu subscriptions.", &v15, 0x16u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:v7];
    (*(v12 + 16))(v12, v9 == 0, v9, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)createRecordZonesWithIDs:(id)a3 priority:(int64_t)a4 useZoneWideSharing:(BOOL)a5 group:(id)a6 completion:(id)a7
{
  v9 = a5;
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v27 = a7;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    v15 = MEMORY[0x277CBEBF8];
    do
    {
      v16 = 0;
      v17 = v15;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v18 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:*(*(&v34 + 1) + 8 * v16)];
        [v18 setCapabilities:{objc_msgSend(v18, "capabilities") | 1}];
        [v18 setCapabilities:{objc_msgSend(v18, "capabilities") | 2}];
        [v18 setCapabilities:{objc_msgSend(v18, "capabilities") | 4}];
        if (v9)
        {
          [v18 setCapabilities:{objc_msgSend(v18, "capabilities") | 8}];
        }

        v15 = [v17 arrayByAddingObject:v18];

        ++v16;
        v17 = v15;
      }

      while (v13 != v16);
      v13 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v19 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:v15 recordZoneIDsToDelete:0];
  [v19 setGroup:v11];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __91__ASCloudKitUtility_createRecordZonesWithIDs_priority_useZoneWideSharing_group_completion___block_invoke;
  v30[3] = &unk_278C4E928;
  v31 = v10;
  v32 = v11;
  v33 = v27;
  v20 = v27;
  v21 = v11;
  v22 = v10;
  [v19 setModifyRecordZonesCompletionBlock:v30];
  [v19 setQualityOfService:17];
  v23 = _ASOperationConfigurationForPriority(a4, 0);
  [v19 setConfiguration:v23];

  v24 = [(ASCloudKitUtility *)self container];
  v25 = [v24 privateCloudDatabase];
  [v25 addOperation:v19];

  v26 = *MEMORY[0x277D85DE8];
}

void __91__ASCloudKitUtility_createRecordZonesWithIDs_priority_useZoneWideSharing_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD0];
  v11 = *MEMORY[0x277CE8FD0];
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __91__ASCloudKitUtility_createRecordZonesWithIDs_priority_useZoneWideSharing_group_completion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = v10;
    v14 = [v12 name];
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Created record zones in private database: %@, with group %@", &v17, 0x16u);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v9 == 0, v9, v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_saveRecordsIntoPrivateDatabase:(id)a3 recordIDsToDelete:(id)a4 savePolicy:(int64_t)a5 priority:(int64_t)a6 activity:(id)a7 group:(id)a8 completion:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = MEMORY[0x277CBC4A0];
  v19 = a4;
  v20 = a3;
  v21 = [[v18 alloc] initWithRecordsToSave:v20 recordIDsToDelete:v19];

  [v21 setAtomic:1];
  [v21 setSavePolicy:a5];
  [v21 setGroup:v16];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __117__ASCloudKitUtility__saveRecordsIntoPrivateDatabase_recordIDsToDelete_savePolicy_priority_activity_group_completion___block_invoke;
  v31 = &unk_278C4E950;
  v32 = self;
  v33 = v16;
  v34 = v15;
  v35 = v17;
  v22 = v17;
  v23 = v15;
  v24 = v16;
  [v21 setModifyRecordsCompletionBlock:&v28];
  [v21 setQualityOfService:{17, v28, v29, v30, v31, v32}];
  v25 = _ASOperationConfigurationForPriority(a6, v23);
  [v21 setConfiguration:v25];

  v26 = [(ASCloudKitUtility *)self container];
  v27 = [v26 privateCloudDatabase];
  [v27 addOperation:v21];
}

void __117__ASCloudKitUtility__saveRecordsIntoPrivateDatabase_recordIDsToDelete_savePolicy_priority_activity_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD0];
  v11 = os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 32);
    v13 = v10;
    v14 = [v12 container];
    v15 = [v14 containerIdentifier];
    v22 = 138543618;
    v23 = v15;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Failed to save records into private database for container %{public}@ with error: %{public}@", &v22, 0x16u);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v13 = v10;
    v16 = [v7 count];
    v14 = [*(a1 + 32) container];
    v17 = [v14 containerIdentifier];
    v18 = [*(a1 + 40) name];
    v19 = *(a1 + 48);
    v22 = 134218754;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v19;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Saved %lu records into private database: container %{public}@, group %{public}@, activity %{public}@", &v22, 0x2Au);
  }

LABEL_7:
  v20 = *(a1 + 56);
  if (v20)
  {
    (*(v20 + 16))(v20, v9 == 0, v9, v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_saveRecordsIntoPrivateDatabaseCreatingZones:(id)a3 recordIDsToDelete:(id)a4 savePolicy:(int64_t)a5 priority:(int64_t)a6 activity:(id)a7 useZoneWideSharing:(BOOL)a8 group:(id)a9 completion:(id)a10
{
  v52 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v31 = a4;
  v13 = a7;
  v30 = a9;
  v14 = a10;
  v15 = [MEMORY[0x277CBEB98] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v48;
    do
    {
      v20 = 0;
      v21 = v15;
      do
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [*(*(&v47 + 1) + 8 * v20) recordID];
        v23 = [v22 zoneID];
        v15 = [v21 setByAddingObject:v23];

        ++v20;
        v21 = v15;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v18);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __149__ASCloudKitUtility__saveRecordsIntoPrivateDatabaseCreatingZones_recordIDsToDelete_savePolicy_priority_activity_useZoneWideSharing_group_completion___block_invoke;
  v37[3] = &unk_278C4E9A0;
  v37[4] = self;
  v38 = v15;
  v46 = a8;
  v39 = v30;
  v40 = v16;
  v41 = v31;
  v42 = v13;
  v44 = a6;
  v45 = a5;
  v43 = v14;
  v33 = v14;
  v24 = v13;
  v25 = v31;
  v26 = v16;
  v27 = v30;
  v28 = v15;
  [(ASCloudKitUtility *)self _saveRecordsIntoPrivateDatabase:v26 recordIDsToDelete:v25 savePolicy:a5 priority:a6 activity:v24 group:v27 completion:v37];

  v29 = *MEMORY[0x277D85DE8];
}

void __149__ASCloudKitUtility__saveRecordsIntoPrivateDatabaseCreatingZones_recordIDsToDelete_savePolicy_priority_activity_useZoneWideSharing_group_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
LABEL_14:
    (*(*(a1 + 80) + 16))();
    goto LABEL_19;
  }

  v8 = v6;
  if ([v8 code] != 26)
  {
    if ([v8 code] == 2)
    {
      v9 = [v8 userInfo];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = [v10 allValues];
      v12 = [v11 countByEnumeratingWithState:&v30 objects:buf count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v30 + 1) + 8 * v15) code] == 26)
            {

              goto LABEL_16;
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v30 objects:buf count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_14;
  }

LABEL_16:

  ASLoggingInitialize();
  v16 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "Zones not found when saving records, creating zones and re-trying save.", buf, 2u);
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 88);
  v20 = *(a1 + 104);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __149__ASCloudKitUtility__saveRecordsIntoPrivateDatabaseCreatingZones_recordIDsToDelete_savePolicy_priority_activity_useZoneWideSharing_group_completion___block_invoke_304;
  v23[3] = &unk_278C4E978;
  v23[4] = v17;
  v21 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v29 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  v26 = *(a1 + 72);
  v27 = *(a1 + 48);
  v28 = *(a1 + 80);
  [v17 createRecordZonesWithIDs:v18 priority:v19 useZoneWideSharing:v20 group:v21 completion:v23];

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __149__ASCloudKitUtility__saveRecordsIntoPrivateDatabaseCreatingZones_recordIDsToDelete_savePolicy_priority_activity_useZoneWideSharing_group_completion___block_invoke_304(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3 && a2)
  {
    return [*(a1 + 32) _saveRecordsIntoPrivateDatabase:*(a1 + 40) recordIDsToDelete:*(a1 + 48) savePolicy:*(a1 + 80) priority:*(a1 + 88) activity:*(a1 + 56) group:*(a1 + 64) completion:*(a1 + 72)];
  }

  v5 = *(*(a1 + 72) + 16);

  return v5();
}

- (void)createShareAndAssociatedZoneWithShareRecordID:(id)a3 rootRecord:(id)a4 otherRecordsToSave:(id)a5 completion:(id)a6
{
  v27[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [v10 zoneID];
  v15 = [v11 recordID];
  v16 = [v15 zoneID];
  v17 = [v14 isEqual:v16];

  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CBC680]) initWithRootRecord:v11 shareID:v10];
    [v18 setParticipantVisibility:1];
    v27[0] = v18;
    v27[1] = v11;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v20 = [v19 arrayByAddingObjectsFromArray:v13];

    v21 = ASCloudKitGroupSharingSetup();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __108__ASCloudKitUtility_createShareAndAssociatedZoneWithShareRecordID_rootRecord_otherRecordsToSave_completion___block_invoke;
    v23[3] = &unk_278C4E9C8;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    [(ASCloudKitUtility *)self forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v20 recordIDsToDelete:0 priority:2 activity:0 group:v21 completion:v23];

    v13 = v18;
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      [ASCloudKitUtility createShareAndAssociatedZoneWithShareRecordID:rootRecord:otherRecordsToSave:completion:];
    }

    (*(v12 + 2))(v12, 0, 0, 0, v11, v13);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __108__ASCloudKitUtility_createShareAndAssociatedZoneWithShareRecordID_rootRecord_otherRecordsToSave_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v24 = 0;
    v9 = *v27;
    v10 = MEMORY[0x277CBEBF8];
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 recordID];
        if ([v13 isEqual:*(a1 + 32)])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = v12;
            v16 = v24;
            v24 = v15;
            goto LABEL_13;
          }
        }

        else
        {
        }

        v17 = [v12 recordID];
        v18 = [*(a1 + 40) recordID];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          v20 = v12;
          v16 = v8;
          v8 = v20;
        }

        else
        {
          v21 = [v10 arrayByAddingObject:v12];
          v16 = v10;
          v10 = v21;
        }

LABEL_13:
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v7)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = 0;
  v24 = 0;
  v10 = MEMORY[0x277CBEBF8];
LABEL_17:
  (*(*(a1 + 48) + 16))();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_fetchShareWithShareRecordID:(id)a3 activity:(id)a4 group:(id)a5 completion:(id)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277CBC3E0];
  v13 = a5;
  v14 = a4;
  v15 = [v12 alloc];
  v30[0] = v10;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v17 = [v15 initWithRecordIDs:v16];

  [v17 setGroup:v13];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __76__ASCloudKitUtility__fetchShareWithShareRecordID_activity_group_completion___block_invoke;
  v27 = &unk_278C4E9F0;
  v28 = v10;
  v29 = v11;
  v18 = v11;
  v19 = v10;
  [v17 setFetchRecordsCompletionBlock:&v24];
  [v17 setQualityOfService:{17, v24, v25, v26, v27}];
  v20 = _ASOperationConfigurationForPriority(2, v14);

  [v17 setConfiguration:v20];
  v21 = [(ASCloudKitUtility *)self container];
  v22 = [v21 privateCloudDatabase];
  [v22 addOperation:v17];

  v23 = *MEMORY[0x277D85DE8];
}

void __76__ASCloudKitUtility__fetchShareWithShareRecordID_activity_group_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v7 == 0);
}

- (void)fetchShareWithShareRecordID:(id)a3 activity:(id)a4 group:(id)a5 completion:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  ASLoggingInitialize();
  v14 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Fetching share with ID: %@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__ASCloudKitUtility_fetchShareWithShareRecordID_activity_group_completion___block_invoke;
  v18[3] = &unk_278C4EA18;
  v19 = v10;
  v20 = v11;
  v15 = v11;
  v16 = v10;
  [(ASCloudKitUtility *)self _fetchShareWithShareRecordID:v16 activity:v13 group:v12 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __75__ASCloudKitUtility_fetchShareWithShareRecordID_activity_group_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  if (!v7 && v8 && a2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Found share: %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
  {
    __75__ASCloudKitUtility_fetchShareWithShareRecordID_activity_group_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_acceptShareMetadatas:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBC158]) initWithShareMetadatas:v6];
  v9 = ASCloudKitGroupSharingSetup();
  [v8 setGroup:v9];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__14;
  v17[4] = __Block_byref_object_dispose__14;
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke;
  v16[3] = &unk_278C4EA40;
  v16[4] = v17;
  [v8 setPerShareCompletionBlock:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_314;
  v13[3] = &unk_278C4EA68;
  v10 = v7;
  v14 = v10;
  v15 = v17;
  [v8 setAcceptSharesCompletionBlock:v13];
  [v8 setQualityOfService:17];
  v11 = _ASOperationConfigurationForPriority(2, 0);
  [v8 setConfiguration:v11];

  v12 = [(ASCloudKitUtility *)self container];
  [v12 addOperation:v8];

  _Block_object_dispose(v17, 8);
}

void __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a2 share];
  v10 = [v9 URL];

  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FD0];
  v12 = *MEMORY[0x277CE8FD0];
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
      v14 = [v7 recordID];
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Accepted share with URL %@ and share ID %@", &v16, 0x16u);
    }

    [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:v10];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_314(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FD0];
  v5 = *MEMORY[0x277CE8FD0];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_314_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Accepted all shares successfully", v7, 2u);
  }

  v6 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
}

- (void)acceptSharesWithURLs:(id)a3 cloudKitGroup:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277CBC3F8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithShareURLs:v11];
  [(ASCloudKitUtility *)self _acceptSharesWithURLs:v11 operation:v12 cloudKitGroup:v10 completion:v9];
}

- (void)_acceptSharesWithURLs:(id)a3 operation:(id)a4 cloudKitGroup:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v11 setGroup:v12];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__14;
  v24[4] = __Block_byref_object_dispose__14;
  v25 = MEMORY[0x277CBEBF8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke;
  v23[3] = &unk_278C4EA90;
  v23[4] = v24;
  [v11 setPerShareMetadataBlock:v23];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318;
  v18[3] = &unk_278C4EAB8;
  v14 = v13;
  v21 = v14;
  v22 = v24;
  v15 = v10;
  v19 = v15;
  v20 = self;
  [v11 setFetchShareMetadataCompletionBlock:v18];
  [v11 setQualityOfService:17];
  v16 = _ASOperationConfigurationForPriority(2, 0);
  [v11 setConfiguration:v16];

  v17 = [(ASCloudKitUtility *)self container];
  [v17 addOperation:v11];

  _Block_object_dispose(v24, 8);
}

void __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD0];
  if (v8 && v7 && !v9)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Fetched share metadata for URL %@ successfully", &v15, 0xCu);
    }

    v11 = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObject:v8];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
  {
    __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_cold_1();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318_cold_1();
    }

    v4 = *(*(a1 + 48) + 16);
LABEL_12:
    v4();
    goto LABEL_13;
  }

  v5 = [*(*(*(a1 + 56) + 8) + 40) count];
  v6 = [*(a1 + 32) count];
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FD0];
  v8 = *MEMORY[0x277CE8FD0];
  if (v5 != v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318_cold_2();
    }

    v4 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = v7;
    v12 = 134217984;
    v13 = [v9 count];
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Accepting shares after fetching metadata (%lu metadatas)", &v12, 0xCu);
  }

  [*(a1 + 40) _acceptShareMetadatas:*(*(*(a1 + 56) + 8) + 40) completion:*(a1 + 48)];
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)acceptSharesWithInvitationTokensByShareURL:(id)a3 cloudKitGroup:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277CBC3F8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = [v11 allKeys];
  v15 = [v12 initWithShareURLs:v13 invitationTokensByShareURL:v11];

  v14 = [v11 allKeys];

  [(ASCloudKitUtility *)self _acceptSharesWithURLs:v14 operation:v15 cloudKitGroup:v10 completion:v9];
}

- (void)fetchShareParticipantForEmailAddress:(id)a3 group:(id)a4 completion:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBC7C8];
  v16 = a3;
  v9 = MEMORY[0x277CBEA60];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 arrayWithObjects:&v16 count:1];
  v14 = [v8 lookupInfosWithEmails:{v13, v16, v17}];

  [(ASCloudKitUtility *)self _fetchShareParticipantForLookupInfos:v14 group:v11 completion:v10];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_fetchShareParticipantForLookupInfos:(id)a3 group:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277CBC410]) initWithUserIdentityLookupInfos:v8];
  [v11 setGroup:v9];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__14;
  v19[4] = __Block_byref_object_dispose__14;
  v20 = [MEMORY[0x277CBEB98] set];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__ASCloudKitUtility__fetchShareParticipantForLookupInfos_group_completion___block_invoke;
  v18[3] = &unk_278C4EAE0;
  v18[4] = v19;
  [v11 setShareParticipantFetchedBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ASCloudKitUtility__fetchShareParticipantForLookupInfos_group_completion___block_invoke_2;
  v15[3] = &unk_278C4EA68;
  v12 = v10;
  v16 = v12;
  v17 = v19;
  [v11 setFetchShareParticipantsCompletionBlock:v15];
  [v11 setQualityOfService:17];
  v13 = _ASOperationConfigurationForPriority(2, 0);
  [v11 setConfiguration:v13];

  v14 = [(ASCloudKitUtility *)self container];
  [v14 addOperation:v11];

  _Block_object_dispose(v19, 8);
}

uint64_t __75__ASCloudKitUtility__fetchShareParticipantForLookupInfos_group_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(*(a1 + 32) + 8) + 40) setByAddingObject:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __75__ASCloudKitUtility__fetchShareParticipantForLookupInfos_group_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2 == 0;
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = a2;
  v6 = [v4 anyObject];
  (*(v3 + 16))(v3, v2, v5, v6);
}

- (void)fetchShareParticipantForIdentifier:(id)a3 group:(id)a4 completion:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ASSanitizedContactDestination();
  v12 = [(ASCloudKitUtility *)self _lookupInfoFromIdentifier:v8];
  v13 = v12;
  if (v12)
  {
    v16[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(ASCloudKitUtility *)self _fetchShareParticipantForLookupInfos:v14 group:v9 completion:v10];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      [ASCloudKitUtility fetchShareParticipantForIdentifier:group:completion:];
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASCloudKitUtilityErrorDomain" code:0 userInfo:0];
    (*(v10 + 2))(v10, 0, v14, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_lookupInfoFromIdentifier:(id)a3
{
  v3 = a3;
  if (ASDestinationIsPhoneNumber())
  {
    v4 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithPhoneNumber:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (ASDestinationIsEmail())
  {
    v4 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithEmailAddress:v3];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)addParticipantWithCloudKitAddress:(id)a3 toShares:(id)a4 group:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  ASLoggingInitialize();
  v14 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Adding participant with address %@ to shares: %@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke;
  v20[3] = &unk_278C4EB08;
  v20[4] = self;
  v21 = v11;
  v22 = v12;
  v23 = v10;
  v24 = v13;
  v15 = v13;
  v16 = v10;
  v17 = v12;
  v18 = v11;
  [(ASCloudKitUtility *)self fetchShareParticipantForEmailAddress:v16 group:v17 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 && a2 && v8)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2;
    v14[3] = &unk_278C4BA08;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    [v10 addParticipant:v9 toShares:v11 group:v12 completion:v14];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_cold_1(a1);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v7);
    }
  }
}

void __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FD0];
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Added participant with address %@ successfully.", &v10, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addParticipant:(id)a3 toShares:(id)a4 group:(id)a5 completion:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v29 = a5;
  v27 = a6;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = v9;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Adding participant %@ to shares: %@", buf, 0x16u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      v16 = 0;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * v16);
        v18 = [v9 userIdentity];
        v19 = [v17 owner];
        v20 = [v19 userIdentity];
        v21 = [v18 isEquivalentToUserIdentity:v20];

        if (v21)
        {
          ASLoggingInitialize();
          v22 = *MEMORY[0x277CE8FD0];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
          {
            [ASCloudKitUtility addParticipant:buf toShares:&buf[1] group:v22 completion:?];
          }
        }

        else
        {
          v23 = [v9 copy];
          [v17 addParticipant:v23];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __62__ASCloudKitUtility_addParticipant_toShares_group_completion___block_invoke;
  v30[3] = &unk_278C4D340;
  v31 = v9;
  v32 = v27;
  v24 = v27;
  v25 = v9;
  [(ASCloudKitUtility *)self saveRecordsIntoPrivateDatabase:v12 priority:2 activity:0 group:v29 completion:v30];

  v26 = *MEMORY[0x277D85DE8];
}

void __62__ASCloudKitUtility_addParticipant_toShares_group_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  if (v7 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Added participant %@ to shares %@ successfully.", &v13, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipantWithCloudKitAddress:(id)a3 fromShares:(id)a4 group:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  ASLoggingInitialize();
  v14 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = _ASRecordIDsForRecords(v11);
    *buf = 138412546;
    v29 = v10;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "Removing participant with address %@ from shares with IDs: %@", buf, 0x16u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke;
  v22[3] = &unk_278C4EB08;
  v23 = v11;
  v24 = self;
  v25 = v12;
  v26 = v10;
  v27 = v13;
  v17 = v13;
  v18 = v10;
  v19 = v12;
  v20 = v11;
  [(ASCloudKitUtility *)self fetchShareParticipantForEmailAddress:v18 group:v19 completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 && a2 && v8)
  {
    v26 = a1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = [v9 userIdentity];
          v17 = [v15 owner];
          v18 = [v17 userIdentity];
          v19 = [v16 isEquivalentToUserIdentity:v18];

          if (v19)
          {
            ASLoggingInitialize();
            v20 = *MEMORY[0x277CE8FD0];
            if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
            {
              __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_cold_2(&buf, v31, v20);
            }
          }

          else
          {
            [v15 removeParticipant:v9];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }

    v22 = *(v26 + 32);
    v21 = *(v26 + 40);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_325;
    v27[3] = &unk_278C4D340;
    v23 = *(v26 + 48);
    v28 = *(v26 + 56);
    v29 = *(v26 + 64);
    [v21 saveRecordsIntoPrivateDatabase:v22 priority:2 activity:0 group:v23 completion:v27];

    v7 = 0;
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_cold_1(a1);
    }

    v24 = *(a1 + 64);
    if (v24)
    {
      (*(v24 + 16))(v24, 0, v7);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_325(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  if (v7 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_325_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = _ASRecordIDsForRecords(v8);
    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Removed participant %@ from shares with IDs %@ successfully.", &v15, 0x16u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllExecutingFetches
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ASCloudKitUtility_cancelAllExecutingFetches__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __46__ASCloudKitUtility_cancelAllExecutingFetches__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          [v8 setRecordZoneWithIDChangedBlock:0];
          [v8 setFetchDatabaseChangesCompletionBlock:0];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v9 = v7;
          [v9 setRecordChangedBlock:{0, v12}];
          [v9 setRecordZoneChangeTokensUpdatedBlock:0];
          [v9 setRecordZoneFetchCompletionBlock:0];
          [v9 setFetchRecordZoneChangesCompletionBlock:0];
        }

LABEL_11:
        [v7 cancel];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 16) removeAllObjects];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_fetchChangesInZones:(id)a3 additionalZonesToFetch:(id)a4 fetchConfigurations:(id)a5 inDatabase:(id)a6 serverChangeTokenCache:(id)a7 priority:(int64_t)a8 allowRetry:(BOOL)a9 activity:(id)a10 group:(id)a11 completion:(id)a12
{
  v116 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v73 = a5;
  v70 = a6;
  v18 = a7;
  v69 = a10;
  v75 = a11;
  v65 = a12;
  v58 = v16;
  v67 = v17;
  v19 = [v16 setByAddingObjectsFromSet:v17];
  ASLoggingInitialize();
  v20 = MEMORY[0x277CE8FD0];
  v21 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [v19 count];
    [v70 databaseScope];
    v24 = CKDatabaseScopeString();
    v25 = [v75 name];
    *buf = 134218754;
    v109 = v23;
    v110 = 2114;
    v111 = v24;
    v112 = 2114;
    v113 = v25;
    v114 = 2114;
    v115 = v69;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Fetching changes in %lu record zones (database %{public}@, group %{public}@, activity %{public}@)", buf, 0x2Au);
  }

  if ([v73 count])
  {
    ASLoggingInitialize();
    v26 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      [v70 databaseScope];
      v28 = CKDatabaseScopeString();
      v29 = [(CKContainer *)self->_container containerIdentifier];
      *buf = 138543874;
      v109 = v73;
      v110 = 2114;
      v111 = v28;
      v112 = 2114;
      v113 = v29;
      _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "Using fetch configurations %{public}@ %{public}@ database in %{public}@", buf, 0x20u);
    }
  }

  v63 = [MEMORY[0x277CBEB18] array];
  v61 = [MEMORY[0x277CBEB18] array];
  v59 = [MEMORY[0x277CBEB58] set];
  v60 = [MEMORY[0x277CBEB38] dictionary];
  v30 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v31 = v19;
  v32 = [v31 countByEnumeratingWithState:&v103 objects:v107 count:16];
  if (v32)
  {
    v33 = *v104;
    do
    {
      v34 = 0;
      do
      {
        if (*v104 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v103 + 1) + 8 * v34);
        v36 = objc_alloc_init(MEMORY[0x277CBC3A0]);
        v37 = [v18 serverChangeTokenForRecordZoneID:v35];
        [v36 setPreviousServerChangeToken:v37];

        [v30 setObject:v36 forKeyedSubscript:v35];
        ++v34;
      }

      while (v32 != v34);
      v32 = [v31 countByEnumeratingWithState:&v103 objects:v107 count:16];
    }

    while (v32);
  }

  v38 = objc_alloc(MEMORY[0x277CBC3B8]);
  v39 = [v31 allObjects];
  v40 = [v38 initWithRecordZoneIDs:v39 configurationsByRecordZoneID:v30];

  [v40 setGroup:v75];
  objc_initWeak(buf, v40);
  [v40 setFetchAllChanges:1];
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke;
  v98[3] = &unk_278C4EB30;
  v41 = v73;
  v99 = v41;
  v42 = v63;
  v100 = v42;
  v43 = v70;
  v101 = v43;
  v74 = v60;
  v102 = v74;
  [v40 setRecordChangedBlock:v98];
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_333;
  v96[3] = &unk_278C4EB58;
  v44 = v61;
  v97 = v44;
  [v40 setRecordWithIDWasDeletedBlock:v96];
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_2;
  v94[3] = &unk_278C4EB80;
  v45 = v18;
  v95 = v45;
  [v40 setRecordZoneChangeTokensUpdatedBlock:v94];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_3;
  v90[3] = &unk_278C4EBA8;
  v46 = v59;
  v91 = v46;
  v47 = v45;
  v92 = v47;
  v64 = v67;
  v93 = v64;
  [v40 setRecordZoneFetchCompletionBlock:v90];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_338;
  v78[3] = &unk_278C4EC20;
  objc_copyWeak(v88, buf);
  v78[4] = self;
  v48 = v43;
  v79 = v48;
  v71 = v42;
  v80 = v71;
  v49 = v46;
  v81 = v49;
  v89 = a9;
  v62 = v41;
  v82 = v62;
  v68 = v47;
  v83 = v68;
  v88[1] = a8;
  v50 = v69;
  v84 = v50;
  v51 = v75;
  v85 = v51;
  v52 = v65;
  v87 = v52;
  v53 = v44;
  v86 = v53;
  [v40 setFetchRecordZoneChangesCompletionBlock:v78];
  [v40 setQualityOfService:17];
  v54 = _ASOperationConfigurationForPriority(a8, v50);
  [v40 setConfiguration:v54];

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_342;
  block[3] = &unk_278C4B250;
  block[4] = self;
  v56 = v40;
  v77 = v56;
  dispatch_async(serialQueue, block);
  [v48 addOperation:v56];

  objc_destroyWeak(v88);
  objc_destroyWeak(buf);

  v57 = *MEMORY[0x277D85DE8];
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 recordType];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
LABEL_13:
    [*(a1 + 40) addObject:v3];
    goto LABEL_19;
  }

  if ([v6 shouldSkip])
  {
    ASLoggingInitialize();
    v7 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v3 recordType];
      v10 = [v3 recordID];
      v11 = [v10 zoneID];
      [*(a1 + 48) databaseScope];
      v12 = CKDatabaseScopeString();
      v33 = 138543874;
      v34 = v9;
      v35 = 2114;
      v36 = v11;
      v37 = 2114;
      v38 = v12;
      v13 = "Skipping %{public}@ from %{public}@ in database: %{public}@)";
LABEL_9:
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, v13, &v33, 0x20u);

LABEL_18:
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v14 = [v6 oldestAllowedModificationDate];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v6 oldestAllowedModificationDate];
  v17 = [v3 modificationDate];
  v18 = [v16 hk_isAfterDate:v17];

  if (!v18)
  {
LABEL_10:
    if ([v6 shouldCoalesce])
    {
      v20 = *(a1 + 56);
      v21 = [v3 recordType];
      v22 = [v20 objectForKeyedSubscript:v21];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = [MEMORY[0x277CBEB18] array];
      }

      v8 = v24;

      v25 = [v3 recordID];
      v26 = [v25 recordName];

      v27 = [v3 recordID];
      v28 = [v27 recordName];
      v29 = [v8 containsObject:v28];

      if ((v29 & 1) == 0)
      {
        [v8 addObject:v26];
        v30 = *(a1 + 56);
        v31 = [v3 recordType];
        [v30 setObject:v8 forKeyedSubscript:v31];
      }

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  ASLoggingInitialize();
  v19 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v19;
    v9 = [v3 recordType];
    v10 = [v3 recordID];
    v11 = [v10 zoneID];
    [*(a1 + 48) databaseScope];
    v12 = CKDatabaseScopeString();
    v33 = 138543874;
    v34 = v9;
    v35 = 2114;
    v36 = v11;
    v37 = 2114;
    v38 = v12;
    v13 = "Record too old: %{public}@ from %{public}@ in database: %{public}@";
    goto LABEL_9;
  }

LABEL_19:

  v32 = *MEMORY[0x277D85DE8];
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_3(id *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 code];
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FD0];
    v15 = *MEMORY[0x277CE8FD0];
    if (v13 == 21)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v9;
        _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Change token expired for zone %@", &v22, 0xCu);
      }

      [a1[4] addObject:v9];
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_3_cold_1();
    }

    v18 = a1[5];
    v19 = 0;
LABEL_16:
    [v18 setServerChangeToken:v19 forRecordZoneID:v9];
    goto LABEL_17;
  }

  if (![a1[6] containsObject:v9])
  {
    ASLoggingInitialize();
    v20 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "Fetched changes successfully in zone %@, serverChangeToken %@", &v22, 0x16u);
    }

    v18 = a1[5];
    v19 = v10;
    goto LABEL_16;
  }

  v16 = [MEMORY[0x277CBEAA8] date];
  ASLoggingInitialize();
  v17 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Fetched additional records successfully in zone %@, for date %@", &v22, 0x16u);
  }

  [a1[5] setFetchDate:v16 forRecordZoneID:v9];

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_338(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 112));

  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_2_339;
    block[3] = &unk_278C4EBD0;
    block[4] = v5;
    objc_copyWeak(&v59, (a1 + 112));
    dispatch_async(v6, block);
    objc_destroyWeak(&v59);
  }

  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FD0];
  v8 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = v8;
    [v9 databaseScope];
    v11 = CKDatabaseScopeString();
    v12 = [*(a1 + 48) count];
    v13 = [*(*(a1 + 32) + 24) containerIdentifier];
    *buf = 138543874;
    v65 = v11;
    v66 = 2048;
    v67 = v12;
    v68 = 2114;
    v69 = v13;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Finished fetching changes in database %{public}@, %lu records, %{public}@", buf, 0x20u);
  }

  if (![*(a1 + 56) count] || *(a1 + 128) != 1)
  {
    ASLoggingInitialize();
    v24 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 48);
      v26 = v24;
      v27 = [v25 count];
      *buf = 134217984;
      v65 = v27;
      _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "Calling completion with %lu changed records", buf, 0xCu);
    }

    v28 = [*(a1 + 40) databaseScope];
    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v29 addObject:&unk_2850F5168];
    if (v28 == 3)
    {
      [v29 addObject:&unk_2850F5180];
    }

    v30 = [v29 copy];

    v31 = v3;
    v23 = v30;
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v31, "code")}];
    v33 = [v23 containsObject:v32];

    if (v33)
    {
    }

    else
    {
      if ([v31 code] != 2)
      {

LABEL_29:
        v46 = *(a1 + 48);
        v47 = *(a1 + 96);
        v36 = *(*(a1 + 104) + 16);
        goto LABEL_30;
      }

      v53 = v3;
      v37 = [v31 userInfo];
      v38 = [v37 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v51 = v38;
      v39 = [v38 allValues];
      v40 = [v39 countByEnumeratingWithState:&v60 objects:buf count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v61;
        while (2)
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v61 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v60 + 1) + 8 * i), "code")}];
            v45 = [v23 containsObject:v44];

            if (!v45)
            {

              v3 = v53;
              goto LABEL_29;
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v60 objects:buf count:16];
          if (v41)
          {
            continue;
          }

          break;
        }
      }

      v3 = v53;
    }

    v34 = *(a1 + 48);
    v35 = *(a1 + 96);
    v36 = *(*(a1 + 104) + 16);
LABEL_30:
    v36();
    goto LABEL_31;
  }

  v52 = v3;
  ASLoggingInitialize();
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Some change tokens have expired, fetching again.", buf, 2u);
  }

  v50 = *(a1 + 32);
  v15 = *(a1 + 56);
  v16 = [MEMORY[0x277CBEB98] set];
  v17 = *(a1 + 40);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 120);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_340;
  v54[3] = &unk_278C4EBF8;
  v57 = *(a1 + 104);
  v55 = *(a1 + 48);
  v56 = *(a1 + 96);
  LOBYTE(v49) = 0;
  [v50 _fetchChangesInZones:v15 additionalZonesToFetch:v16 fetchConfigurations:v18 inDatabase:v17 serverChangeTokenCache:v19 priority:v20 allowRetry:v49 activity:v21 group:v22 completion:v54];

  v23 = v57;
  v3 = v52;
LABEL_31:

  v48 = *MEMORY[0x277D85DE8];
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_2_339(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_340(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = a5;
  v12 = a3;
  v14 = [v10 arrayByAddingObjectsFromArray:a4];
  v13 = [*(a1 + 40) arrayByAddingObjectsFromArray:v11];

  (*(v9 + 16))(v9, a2, v12, v14, v13);
}

- (void)_fetchChangesInDatabase:(id)a3 serverChangeTokenCache:(id)a4 priority:(int64_t)a5 activity:(id)a6 group:(id)a7 additionalZoneIDs:(id)a8 zoneIDsToSkip:(id)a9 fetchConfigurations:(id)a10 completion:(id)a11
{
  v65 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v44 = a4;
  v42 = a6;
  v17 = a7;
  v41 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  ASLoggingInitialize();
  v21 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    [v16 databaseScope];
    v23 = CKDatabaseScopeString();
    v24 = [(CKContainer *)self->_container containerIdentifier];
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = v24;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Fetching changes in database %{public}@, %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v62 = __Block_byref_object_copy__14;
  v63 = __Block_byref_object_dispose__14;
  v64 = [MEMORY[0x277CBEB98] set];
  v25 = objc_alloc(MEMORY[0x277CBC388]);
  v26 = [v44 serverChangeTokenForDatabase:v16];
  v27 = [v25 initWithPreviousServerChangeToken:v26];

  objc_initWeak(&location, v27);
  [v27 setFetchAllChanges:1];
  [v27 setGroup:v17];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke;
  v57[3] = &unk_278C4EC48;
  v40 = v18;
  v58 = v40;
  v59 = buf;
  [v27 setRecordZoneWithIDChangedBlock:v57];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_344;
  v47[3] = &unk_278C4EC70;
  objc_copyWeak(v56, &location);
  v47[4] = self;
  v28 = v20;
  v29 = v44;
  v48 = v29;
  v30 = v16;
  v49 = v30;
  v55 = buf;
  v31 = v41;
  v50 = v31;
  v32 = v19;
  v51 = v32;
  v56[1] = a5;
  v33 = v42;
  v52 = v33;
  v34 = v17;
  v53 = v34;
  v35 = v28;
  v54 = v35;
  [v27 setFetchDatabaseChangesCompletionBlock:v47];
  [v27 setQualityOfService:17];
  v36 = _ASOperationConfigurationForPriority(a5, v33);
  [v27 setConfiguration:v36];

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_346;
  block[3] = &unk_278C4B250;
  block[4] = self;
  v38 = v27;
  v46 = v38;
  dispatch_async(serialQueue, block);
  [v30 addOperation:v38];

  objc_destroyWeak(v56);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  v39 = *MEMORY[0x277D85DE8];
}

void __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 zoneName];
  v5 = [v4 isEqualToString:@"ActivityDataZone"];

  if (v5 & 1) != 0 || ([v3 zoneName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"RelationshipZone"), v6, (v7))
  {

    goto LABEL_4;
  }

  if (ASSecureCloudEnabled())
  {
    v16 = [v3 zoneName];
    v17 = [v16 hasPrefix:@"RelationshipZone"];

    if (v17)
    {
LABEL_4:
      if ([*(a1 + 32) containsObject:v3])
      {
        ASLoggingInitialize();
        v8 = *MEMORY[0x277CE8FD0];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v20 = 138412546;
          v21 = v3;
          v22 = 2112;
          v23 = v9;
          v10 = "Skipping zone with changes %@, full list of zone IDs to skip %@";
          v11 = v8;
          v12 = 22;
LABEL_14:
          _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, v10, &v20, v12);
          goto LABEL_15;
        }
      }

      else
      {
        v13 = [*(*(*(a1 + 40) + 8) + 40) setByAddingObject:v3];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  ASLoggingInitialize();
  v18 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = v3;
    v10 = "Ignoring changes in zone with ID: %{public}@";
    v11 = v18;
    v12 = 12;
    goto LABEL_14;
  }

LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
}

void __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_344(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  if (WeakRetained)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_2;
    block[3] = &unk_278C4EBD0;
    block[4] = v9;
    objc_copyWeak(&v24, (a1 + 104));
    dispatch_async(v10, block);
    objc_destroyWeak(&v24);
  }

  if (v7)
  {
    ASLoggingInitialize();
    v11 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_344_cold_1(a1, v11, v7);
    }

    [*(a1 + 40) setServerChangeToken:0 forDatabase:*(a1 + 48)];
    v12 = *(*(a1 + 88) + 16);
  }

  else
  {
    [*(a1 + 40) setServerChangeToken:v6 forDatabase:*(a1 + 48)];
    if ([*(*(*(a1 + 96) + 8) + 40) count] || objc_msgSend(*(a1 + 56), "count"))
    {
      v13 = *(a1 + 32);
      v14 = *(*(*(a1 + 96) + 8) + 40);
      v15 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 56)];
      LOBYTE(v22) = 1;
      [v13 _fetchChangesInZones:v14 additionalZonesToFetch:v15 fetchConfigurations:*(a1 + 64) inDatabase:*(a1 + 48) serverChangeTokenCache:*(a1 + 40) priority:*(a1 + 112) allowRetry:v22 activity:*(a1 + 72) group:*(a1 + 80) completion:*(a1 + 88)];

      goto LABEL_11;
    }

    ASLoggingInitialize();
    v17 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 48);
      v19 = v17;
      [v18 databaseScope];
      v20 = CKDatabaseScopeString();
      v21 = [*(*(a1 + 32) + 24) containerIdentifier];
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "No changes in database %{public}@, not fetching. %{public}@", buf, 0x16u);
    }

    v12 = *(*(a1 + 88) + 16);
  }

  v12();
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

void __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

- (void)_retrieveZone:(id)a3 database:(id)a4 completion:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CBC3D0];
  v10 = a4;
  v11 = [v9 alloc];
  v24[0] = v7;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v13 = [v11 initWithRecordZoneIDs:v12];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke;
  v21 = &unk_278C4E9F0;
  v22 = v7;
  v23 = v8;
  v14 = v8;
  v15 = v7;
  [v13 setFetchRecordZonesCompletionBlock:&v18];
  [v13 setQualityOfService:{17, v18, v19, v20, v21}];
  v16 = _ASOperationConfigurationForPriority(2, 0);
  [v13 setConfiguration:v16];

  [v10 addOperation:v13];
  v17 = *MEMORY[0x277D85DE8];
}

void __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v7)
    {
      __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke_cold_1(a1);
    }
  }

  else if (v7)
  {
    __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)retrieveZone:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(ASCloudKitUtility *)self container];
  v8 = [v9 privateCloudDatabase];
  [(ASCloudKitUtility *)self _retrieveZone:v7 database:v8 completion:v6];
}

- (void)fetchChangesInPrivateDatabaseWithServerChangeTokenCache:(id)a3 priority:(int64_t)a4 activity:(id)a5 group:(id)a6 additionalZoneIDs:(id)a7 zoneIDsToSkip:(id)a8 fetchConfigurations:(id)a9 completion:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v25 = [(ASCloudKitUtility *)self container];
  v24 = [v25 privateCloudDatabase];
  [(ASCloudKitUtility *)self _fetchChangesInDatabase:v24 serverChangeTokenCache:v23 priority:a4 activity:v22 group:v21 additionalZoneIDs:v20 zoneIDsToSkip:v19 fetchConfigurations:v18 completion:v17];
}

- (void)fetchChangesInSharedDatabaseWithServerChangeTokenCache:(id)a3 priority:(int64_t)a4 activity:(id)a5 group:(id)a6 additionalZoneIDs:(id)a7 zoneIDsToSkip:(id)a8 fetchConfigurations:(id)a9 completion:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v25 = [(ASCloudKitUtility *)self container];
  v24 = [v25 sharedCloudDatabase];
  [(ASCloudKitUtility *)self _fetchChangesInDatabase:v24 serverChangeTokenCache:v23 priority:a4 activity:v22 group:v21 additionalZoneIDs:v20 zoneIDsToSkip:v19 fetchConfigurations:v18 completion:v17];
}

void __91__ASCloudKitUtility_createRecordZonesWithIDs_priority_useZoneWideSharing_group_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v1, v2, "Failed to create record zones with IDs %@ with error: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __75__ASCloudKitUtility_fetchShareWithShareRecordID_activity_group_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v1, v2, "Failed to fetch share with ID %@, error: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Failed to accept share with URL %@ with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __54__ASCloudKitUtility__acceptShareMetadatas_completion___block_invoke_314_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__ASCloudKitUtility__acceptSharesWithURLs_operation_cloudKitGroup_completion___block_invoke_318_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchShareParticipantForIdentifier:group:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v2, v3, "Adding participant %@ failed: failed to fetch user identity with error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __81__ASCloudKitUtility_addParticipantWithCloudKitAddress_toShares_group_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v1, v2, "Adding participant %@ failed: saving shares failed with error: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)addParticipant:(os_log_t)log toShares:group:completion:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "Trying to add owner of the share, skipping.", buf, 2u);
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v2, v3, "Removing participant %@ failed: failed to fetch user identity with error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "Trying to remove owner of the share, skipping.", buf, 2u);
}

void __86__ASCloudKitUtility_removeParticipantWithCloudKitAddress_fromShares_group_completion___block_invoke_325_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v1, v2, "Removing participant %@ failed: saving shares failed with error: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __165__ASCloudKitUtility__fetchChangesInZones_additionalZonesToFetch_fetchConfigurations_inDatabase_serverChangeTokenCache_priority_allowRetry_activity_group_completion___block_invoke_3_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Failed to fetch changes in zone %@ with error %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __155__ASCloudKitUtility__fetchChangesInDatabase_serverChangeTokenCache_priority_activity_group_additionalZoneIDs_zoneIDsToSkip_fetchConfigurations_completion___block_invoke_344_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = a2;
  [v4 databaseScope];
  v6 = CKDatabaseScopeString();
  OUTLINED_FUNCTION_2_1();
  v9 = a3;
  _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch changed record zones in database %{public}@ with error %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v1, v2, "Failed to retrieve zone %@{public} with error %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __55__ASCloudKitUtility__retrieveZone_database_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end