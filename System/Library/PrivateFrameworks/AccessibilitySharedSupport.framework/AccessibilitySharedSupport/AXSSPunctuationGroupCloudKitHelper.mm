@interface AXSSPunctuationGroupCloudKitHelper
- (id)createCKRecordFromGroup:(id)a3;
- (id)createCKRecordFromObject:(id)a3;
- (id)testRecordForSchemaCreation:(id)a3;
- (void)beginWatchingForChanges;
- (void)clearRecordsForPurging:(id)a3;
- (void)dealloc;
- (void)processRecordDeletionsFromServer:(id)a3;
- (void)processServerUpdateChanges:(id)a3 moc:(id)a4 recordNameToManagedObject:(id)a5;
- (void)punctuationGroupsChanged:(id)a3;
- (void)retrieveLocalChangesForCloud:(id)a3;
@end

@implementation AXSSPunctuationGroupCloudKitHelper

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXSSPunctuationGroupCloudKitHelper;
  [(AXSSCloudKitHelper *)&v4 dealloc];
}

- (id)testRecordForSchemaCreation:(id)a3
{
  v4 = MEMORY[0x1E695BA60];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(AXSSCloudKitHelper *)self zoneSubscription];
  v8 = [v7 recordType];
  v9 = [v6 initWithRecordType:v8 recordID:v5];

  [v9 setName:@"test"];

  return v9;
}

- (id)createCKRecordFromGroup:(id)a3
{
  v4 = MEMORY[0x1E695BA70];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 uuid];
  v8 = [v7 UUIDString];
  v9 = [(AXSSCloudKitHelper *)self recordZone];
  v10 = [v9 zoneID];
  v11 = [v6 initWithRecordName:v8 zoneID:v10];

  v12 = objc_alloc(MEMORY[0x1E695BA60]);
  v13 = [(AXSSPunctuationGroupCloudKitHelper *)self recordType];
  v14 = [v12 initWithRecordType:v13 recordID:v11];

  v15 = [v5 name];
  [v14 setName:v15];

  v16 = [v5 basePunctuationUUID];
  v17 = [v16 UUIDString];
  [v14 setBasePunctuationGroup:v17];

  v18 = MEMORY[0x1E696AD98];
  v19 = [v5 version];

  v20 = [v18 numberWithUnsignedShort:v19];
  [v14 setVersion:v20];

  return v14;
}

- (id)createCKRecordFromObject:(id)a3
{
  v4 = MEMORY[0x1E695BA70];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 uuid];
  v8 = [v7 UUIDString];
  v9 = [(AXSSCloudKitHelper *)self recordZone];
  v10 = [v9 zoneID];
  v11 = [v6 initWithRecordName:v8 zoneID:v10];

  v12 = objc_alloc(MEMORY[0x1E695BA60]);
  v13 = [(AXSSPunctuationGroupCloudKitHelper *)self recordType];
  v14 = [v12 initWithRecordType:v13 recordID:v11];

  v15 = [v5 name];
  [v14 setName:v15];

  v16 = [v5 basePunctuationUUID];
  v17 = [v16 UUIDString];
  [v14 setBasePunctuationGroup:v17];

  v18 = MEMORY[0x1E696AD98];
  v19 = [v5 version];

  v20 = [v18 numberWithShort:v19];
  [v14 setVersion:v20];

  return v14;
}

- (void)clearRecordsForPurging:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(AXSSPunctuationGroupCloudKitHelper *)v19 clearRecordsForPurging:v8, &v20, v9];
        }

        v10 = +[AXSSPunctuationManager sharedDatabase];
        v11 = objc_alloc(MEMORY[0x1E696AFB0]);
        v12 = [v8 recordName];
        v13 = [v11 initWithUUIDString:v12];
        [v10 removeCloudRecordForPurge:v13];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)retrieveLocalChangesForCloud:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v55 = [MEMORY[0x1E695DF70] array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v4 = +[AXSSPunctuationManager sharedDatabase];
  v5 = [v4 punctuationGroups];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v65;
    v56 = *v65;
    do
    {
      v9 = 0;
      do
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v64 + 1) + 8 * v9);
        v11 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v54 = [v10 inCloud];
          v24 = [v10 ckChangeTag];
          v25 = [MEMORY[0x1E695DF00] date];
          [v25 timeIntervalSinceReferenceDate];
          v27 = v26;
          v28 = [v10 ckRecordProcessDate];
          [v28 timeIntervalSinceReferenceDate];
          v30 = v27 - v29;
          v31 = [MEMORY[0x1E695DF00] date];
          [v31 timeIntervalSinceReferenceDate];
          v33 = v32;
          v34 = [v10 ckRecordProcessDate];
          [v34 timeIntervalSinceReferenceDate];
          *buf = 67110402;
          *v70 = v54;
          *&v70[4] = 2112;
          *&v70[6] = v24;
          *&v70[14] = 2112;
          *&v70[16] = v10;
          v71 = 2048;
          v72 = v30;
          v73 = 2048;
          v74 = v33;
          v75 = 2048;
          v76 = v35;
          _os_log_debug_impl(&dword_1C0E8A000, v11, OS_LOG_TYPE_DEBUG, "Is group in icloud? %d, tag: %@: %@, last mod date: %f[%f-%f]", buf, 0x3Au);

          v8 = v56;
        }

        v12 = [v10 inCloud];
        if (v12)
        {
          v13 = [v10 ckChangeTag];
          v3 = v13;
          if (v13)
          {
            goto LABEL_20;
          }
        }

        v14 = [v10 ckRecordProcessDate];
        if (!v14)
        {

          if (v12)
          {
          }

LABEL_17:
          v13 = [(AXSSPunctuationGroupCloudKitHelper *)self createCKRecordFromGroup:v10];
          [v55 addObject:v13];
          v21 = [MEMORY[0x1E695DF00] date];
          [v10 setCkRecordProcessDate:v21];

          v22 = +[AXSSPunctuationManager sharedDatabase];
          [v22 updatePunctuationGroup:v10];

          v23 = AXLogPunctuationStorage();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v70 = v13;
            _os_log_debug_impl(&dword_1C0E8A000, v23, OS_LOG_TYPE_DEBUG, "Adding record: %@", buf, 0xCu);
          }

LABEL_20:
          goto LABEL_21;
        }

        v15 = [MEMORY[0x1E695DF00] date];
        [v15 timeIntervalSinceReferenceDate];
        v17 = v16;
        v18 = [v10 ckRecordProcessDate];
        [v18 timeIntervalSinceReferenceDate];
        v20 = v17 - v19;

        if (v12)
        {
        }

        v8 = v56;
        if (v20 > 60.0)
        {
          goto LABEL_17;
        }

LABEL_21:
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v7);
  }

  v36 = [MEMORY[0x1E695DF70] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v37 = +[AXSSPunctuationManager sharedDatabase];
  v38 = +[AXSSPunctuationGroup description];
  v39 = [v37 cloudRecordsToPurge:v38];

  obja = v39;
  v40 = [v39 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v61;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(obja);
        }

        v44 = *(*(&v60 + 1) + 8 * i);
        v45 = objc_alloc(MEMORY[0x1E695BA70]);
        v46 = [v44 UUIDString];
        v47 = [(AXSSCloudKitHelper *)self recordZone];
        v48 = [v47 zoneID];
        v49 = [v45 initWithRecordName:v46 zoneID:v48];

        [v36 addObject:v49];
        v50 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v70 = v44;
          _os_log_impl(&dword_1C0E8A000, v50, OS_LOG_TYPE_INFO, "Purging group: %@", buf, 0xCu);
        }
      }

      v41 = [obja countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v41);
  }

  v51 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v70 = v55;
    *&v70[8] = 2112;
    *&v70[10] = v36;
    _os_log_impl(&dword_1C0E8A000, v51, OS_LOG_TYPE_INFO, "Group providing data for local server: %@, del: %@", buf, 0x16u);
  }

  v53[2](v53, v55, v36, &__block_literal_global_8);
  v52 = *MEMORY[0x1E69E9840];
}

void __67__AXSSPunctuationGroupCloudKitHelper_retrieveLocalChangesForCloud___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [v2 recordID];
  v5 = [v4 recordName];
  v6 = [v3 initWithUUIDString:v5];

  v7 = +[AXSSPunctuationManager sharedDatabase];
  v8 = [v7 punctuationGroupForUUID:v6];

  v9 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138412802;
    v15 = v2;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_INFO, "Processing group cloud retreival: %@ %@ %@", &v14, 0x20u);
  }

  [v8 setInCloud:1];
  v10 = [v2 recordChangeTag];
  [v8 setCkChangeTag:v10];

  [v8 setCkRecordProcessDate:0];
  v11 = +[AXSSPunctuationManager sharedDatabase];
  [v11 updatePunctuationGroup:v8 fromCloudKit:1];

  v12 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_1C0E8A000, v12, OS_LOG_TYPE_INFO, "Marked in icloud: %@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)beginWatchingForChanges
{
  v8.receiver = self;
  v8.super_class = AXSSPunctuationGroupCloudKitHelper;
  [(AXSSCloudKitHelper *)&v8 beginWatchingForChanges];
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 addObserver:self selector:sel_punctuationGroupsChanged_ name:@"AXSSVoiceOverPunctuationGroupsChangedNotification" object:0];

  v4 = objc_alloc(MEMORY[0x1E6988780]);
  v5 = [(AXSSCloudKitHelper *)self cloudkitQueue];
  v6 = [v4 initWithTargetSerialQueue:v5];
  changeCoalescer = self->_changeCoalescer;
  self->_changeCoalescer = v6;

  [(AXDispatchTimer *)self->_changeCoalescer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
}

- (void)punctuationGroupsChanged:(id)a3
{
  v4 = a3;
  changeCoalescer = self->_changeCoalescer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AXSSPunctuationGroupCloudKitHelper_punctuationGroupsChanged___block_invoke;
  v7[3] = &unk_1E8134950;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(AXDispatchTimer *)changeCoalescer afterDelay:v7 processBlock:0.5];
}

uint64_t __63__AXSSPunctuationGroupCloudKitHelper_punctuationGroupsChanged___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[AXSSPunctuationManager sharedDatabase];
  v3 = [v2 managedObjectContext];
  [v3 performBlockAndWait:&__block_literal_global_21_0];

  v4 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C0E8A000, v4, OS_LOG_TYPE_INFO, "Punctuation groups changed locally, consolidating for cloud push: %@", &v8, 0xCu);
  }

  result = [*(a1 + 40) processLocalChangesAndPush];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __63__AXSSPunctuationGroupCloudKitHelper_punctuationGroupsChanged___block_invoke_2()
{
  v1 = +[AXSSPunctuationManager sharedDatabase];
  v0 = [v1 managedObjectContext];
  [v0 refreshAllObjects];
}

- (void)processServerUpdateChanges:(id)a3 moc:(id)a4 recordNameToManagedObject:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    *&v7 = 138412290;
    v28 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x1E696AFB0]);
        v13 = [v11 recordID];
        v14 = [v13 recordName];
        v15 = [v12 initWithUUIDString:v14];

        v16 = +[AXSSPunctuationManager sharedDatabase];
        v17 = [v16 punctuationGroupForUUID:v15];

        if (v17)
        {
          v18 = [v17 ckChangeTag];

          if (!v18)
          {
            v19 = AXLogPunctuationStorage();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              goto LABEL_14;
            }

            *buf = v28;
            v34 = v17;
            v20 = v19;
            v21 = "Local group is newer than cloud group, ditching cloud group: %@";
            goto LABEL_13;
          }
        }

        else
        {
          v17 = objc_opt_new();
          [v17 setUuid:v15];
        }

        v22 = [v11 name];
        [v17 setName:v22];

        v23 = objc_alloc(MEMORY[0x1E696AFB0]);
        v24 = [v11 basePunctuationGroup];
        v25 = [v23 initWithUUIDString:v24];
        [v17 setBasePunctuationUUID:v25];

        v26 = +[AXSSPunctuationManager sharedDatabase];
        [v26 updatePunctuationGroup:v17 fromCloudKit:1];

        v19 = AXLogPunctuationStorage();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        *buf = v28;
        v34 = v17;
        v20 = v19;
        v21 = "Handling punctuation group: %@";
LABEL_13:
        _os_log_impl(&dword_1C0E8A000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
LABEL_14:
      }

      v8 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)processRecordDeletionsFromServer:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x1E696AFB0]);
        v10 = [v8 recordName];
        v11 = [v9 initWithUUIDString:v10];

        v12 = +[AXSSPunctuationManager sharedDatabase];
        v13 = [v12 punctuationGroupForUUID:v11];

        v14 = +[AXSSPunctuationManager sharedDatabase];
        [v14 removePunctuationGroup:v13];

        v15 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v22 = v8;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&dword_1C0E8A000, v15, OS_LOG_TYPE_DEFAULT, "Removing group from server push: %@ %@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)clearRecordsForPurging:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 recordName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1C0E8A000, a4, OS_LOG_TYPE_DEBUG, "Committing record purge group: %@", a1, 0xCu);
}

@end