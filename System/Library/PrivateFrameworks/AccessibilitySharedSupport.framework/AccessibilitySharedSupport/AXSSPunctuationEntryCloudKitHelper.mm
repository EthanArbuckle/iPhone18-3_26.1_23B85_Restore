@interface AXSSPunctuationEntryCloudKitHelper
- (id)createCKRecordFromEntry:(id)a3;
- (id)createCKRecordFromObject:(id)a3;
- (id)testRecordForSchemaCreation:(id)a3;
- (void)_processPunctuationEntryFromCKRecord:(id)a3;
- (void)beginWatchingForChanges;
- (void)clearRecordsForPurging:(id)a3;
- (void)dealloc;
- (void)processRecordDeletionsFromServer:(id)a3;
- (void)processServerUpdateChanges:(id)a3 moc:(id)a4 recordNameToManagedObject:(id)a5;
- (void)punctuationGroupChanged:(id)a3;
- (void)retrieveLocalChangesForCloud:(id)a3;
@end

@implementation AXSSPunctuationEntryCloudKitHelper

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXSSPunctuationEntryCloudKitHelper;
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

  [v9 setRule:@"Rule"];
  [v9 setVersion:&unk_1F4066FA8];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  [v9 setGroupUUID:v10];

  return v9;
}

- (id)createCKRecordFromEntry:(id)a3
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
  v13 = [(AXSSPunctuationEntryCloudKitHelper *)self recordType];
  v14 = [v12 initWithRecordType:v13 recordID:v11];

  v15 = +[AXSSPunctuationManager sharedDatabase];
  v16 = [v15 ruleToString:{objc_msgSend(v5, "rule")}];
  [v14 setRule:v16];

  v17 = [v5 punctuation];
  [v14 setPunctuation:v17];

  v18 = [v5 replacement];
  [v14 setReplacement:v18];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v5, "version")}];
  [v14 setVersion:v19];

  v20 = [v5 groupUUID];

  [v14 setGroupUUID:v20];

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
  v13 = [(AXSSPunctuationEntryCloudKitHelper *)self recordType];
  v14 = [v12 initWithRecordType:v13 recordID:v11];

  v15 = [v5 rule];
  [v14 setRule:v15];

  v16 = [v5 punctuation];
  [v14 setPunctuation:v16];

  v17 = [v5 replacement];
  [v14 setReplacement:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v5, "version")}];
  [v14 setVersion:v18];

  v19 = [v5 groupUUID];

  [v14 setGroupUUID:v19];

  return v14;
}

- (void)_processPunctuationEntryFromCKRecord:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = [v3 recordID];
  v6 = [v5 recordName];
  v7 = [v4 initWithUUIDString:v6];

  v8 = +[AXSSPunctuationManager sharedDatabase];
  v9 = [v8 punctuationEntryForUUID:v7];

  if (!v9)
  {
    v9 = objc_opt_new();
    [v9 setUuid:v7];
    goto LABEL_10;
  }

  v10 = [v9 ckChangeTag];
  v11 = [v3 recordChangeTag];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    if ([v9 inCloud])
    {
      v13 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = v9;
        v14 = "Entry is same as CK - skipping: %@";
LABEL_12:
        _os_log_impl(&dword_1C0E8A000, v13, OS_LOG_TYPE_INFO, v14, &v29, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_10:
    v21 = +[AXSSPunctuationManager sharedDatabase];
    v22 = [v3 rule];
    [v9 setRule:{objc_msgSend(v21, "stringToRule:", v22)}];

    v23 = [v3 punctuation];
    [v9 setPunctuation:v23];

    v24 = [v3 replacement];
    [v9 setReplacement:v24];

    v25 = [v3 groupUUID];
    [v9 setGroupUUID:v25];

    [v9 setInCloud:1];
    v26 = [v3 recordChangeTag];
    [v9 setCkChangeTag:v26];

    v27 = +[AXSSPunctuationManager sharedDatabase];
    [v27 updateEntry:v9 fromCloudKit:1];

    v13 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v29 = 138412290;
      v30 = v9;
      v14 = "Updating punctuation entry: %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v15 = [v9 lastModifiedDate];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;
  v18 = [v3 modificationDate];
  [v18 timeIntervalSinceReferenceDate];
  v20 = v19;

  if (v17 <= v20)
  {
    goto LABEL_10;
  }

  v13 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v29 = 138412290;
    v30 = v9;
    v14 = "Local entry is newer, we need to update: %@";
    goto LABEL_12;
  }

LABEL_13:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)beginWatchingForChanges
{
  v8.receiver = self;
  v8.super_class = AXSSPunctuationEntryCloudKitHelper;
  [(AXSSCloudKitHelper *)&v8 beginWatchingForChanges];
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 addObserver:self selector:sel_punctuationGroupChanged_ name:@"AXSSVoiceOverPunctuationGroupsChangedNotification" object:0];

  v4 = objc_alloc(MEMORY[0x1E6988780]);
  v5 = [(AXSSCloudKitHelper *)self cloudkitQueue];
  v6 = [v4 initWithTargetSerialQueue:v5];
  changeCoalescer = self->_changeCoalescer;
  self->_changeCoalescer = v6;

  [(AXDispatchTimer *)self->_changeCoalescer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
}

- (void)punctuationGroupChanged:(id)a3
{
  v4 = a3;
  changeCoalescer = self->_changeCoalescer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AXSSPunctuationEntryCloudKitHelper_punctuationGroupChanged___block_invoke;
  v7[3] = &unk_1E8134950;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(AXDispatchTimer *)changeCoalescer afterDelay:v7 processBlock:0.5];
}

uint64_t __62__AXSSPunctuationEntryCloudKitHelper_punctuationGroupChanged___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1C0E8A000, v2, OS_LOG_TYPE_INFO, "Punctuation group changed locally, consolidating for cloud push: %@", &v8, 0xCu);
  }

  v4 = +[AXSSPunctuationManager sharedDatabase];
  v5 = [v4 managedObjectContext];
  [v5 performBlockAndWait:&__block_literal_global_15];

  result = [*(a1 + 40) processLocalChangesAndPush];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __62__AXSSPunctuationEntryCloudKitHelper_punctuationGroupChanged___block_invoke_17()
{
  v1 = +[AXSSPunctuationManager sharedDatabase];
  v0 = [v1 managedObjectContext];
  [v0 refreshAllObjects];
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
          [(AXSSPunctuationEntryCloudKitHelper *)v19 clearRecordsForPurging:v8, &v20, v9];
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
  v79 = *MEMORY[0x1E69E9840];
  v49 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v5 = +[AXSSPunctuationManager sharedDatabase];
  v6 = [v5 punctuationGroups];

  obj = v6;
  v54 = v4;
  v52 = [v6 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v52)
  {
    v51 = *v67;
    do
    {
      v7 = 0;
      do
      {
        if (*v67 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v7;
        v8 = *(*(&v66 + 1) + 8 * v7);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v56 = [v8 entries];
        v9 = [v56 countByEnumeratingWithState:&v62 objects:v77 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v63;
          do
          {
            v12 = 0;
            do
            {
              if (*v63 != v11)
              {
                objc_enumerationMutation(v56);
              }

              v13 = *(*(&v62 + 1) + 8 * v12);
              v14 = AXLogPunctuationStorage();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                v26 = [v13 inCloud];
                v27 = [v13 ckChangeTag];
                v28 = [MEMORY[0x1E695DF00] date];
                [v28 timeIntervalSinceReferenceDate];
                v30 = v29;
                v31 = [v13 ckRecordProcessDate];
                [v31 timeIntervalSinceReferenceDate];
                *buf = 67109890;
                *v72 = v26;
                *&v72[4] = 2112;
                *&v72[6] = v27;
                v73 = 2112;
                v74 = v13;
                v75 = 2048;
                v76 = v30 - v32;
                _os_log_debug_impl(&dword_1C0E8A000, v14, OS_LOG_TYPE_DEBUG, "Is entry in icloud? %d, tag: %@: %@, last mod date: %f", buf, 0x26u);

                v4 = v54;
              }

              v15 = [v13 inCloud];
              if (v15)
              {
                v16 = [v13 ckChangeTag];
                v3 = v16;
                if (v16)
                {
                  goto LABEL_23;
                }
              }

              v17 = [v13 ckRecordProcessDate];
              if (!v17)
              {

                if (v15)
                {
                }

LABEL_22:
                v24 = [(AXSSPunctuationEntryCloudKitHelper *)self createCKRecordFromEntry:v13];
                [v4 addObject:v24];

                v25 = [MEMORY[0x1E695DF00] date];
                [v13 setCkRecordProcessDate:v25];

                v16 = +[AXSSPunctuationManager sharedDatabase];
                [v16 updateEntry:v13];
LABEL_23:

                goto LABEL_24;
              }

              v18 = [MEMORY[0x1E695DF00] date];
              [v18 timeIntervalSinceReferenceDate];
              v20 = v19;
              v21 = [v13 ckRecordProcessDate];
              [v21 timeIntervalSinceReferenceDate];
              v23 = v20 - v22;

              if (v15)
              {
              }

              if (v23 > 60.0)
              {
                goto LABEL_22;
              }

LABEL_24:
              ++v12;
            }

            while (v10 != v12);
            v10 = [v56 countByEnumeratingWithState:&v62 objects:v77 count:16];
          }

          while (v10);
        }

        v7 = v53 + 1;
      }

      while (v53 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v52);
  }

  v33 = [MEMORY[0x1E695DF70] array];
  v34 = +[AXSSPunctuationManager sharedDatabase];
  v35 = +[AXSSPunctuationEntry description];
  v36 = [v34 cloudRecordsToPurge:v35];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = v36;
  v37 = [v57 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v59;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v59 != v39)
        {
          objc_enumerationMutation(v57);
        }

        v41 = *(*(&v58 + 1) + 8 * i);
        v42 = objc_alloc(MEMORY[0x1E695BA70]);
        v43 = [v41 UUIDString];
        v44 = [(AXSSCloudKitHelper *)self recordZone];
        v45 = [v44 zoneID];
        v46 = [v42 initWithRecordName:v43 zoneID:v45];

        [v33 addObject:v46];
        v47 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v72 = v41;
          _os_log_impl(&dword_1C0E8A000, v47, OS_LOG_TYPE_INFO, "Purging entry: %@", buf, 0xCu);
        }

        v4 = v54;
      }

      v38 = [v57 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v38);
  }

  v49[2](v49, v4, v33, &__block_literal_global_23_0);
  v48 = *MEMORY[0x1E69E9840];
}

void __67__AXSSPunctuationEntryCloudKitHelper_retrieveLocalChangesForCloud___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [v2 recordID];
  v5 = [v4 recordName];
  v6 = [v3 initWithUUIDString:v5];

  v7 = +[AXSSPunctuationManager sharedDatabase];
  v8 = [v7 punctuationEntryForUUID:v6];

  v9 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = 138412802;
    v17 = v2;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_INFO, "Processing entry cloud retreival: %@ %@ %@", &v16, 0x20u);
  }

  if (v8)
  {
    [v8 setInCloud:1];
    v10 = [v2 groupUUID];
    [v8 setGroupUUID:v10];

    v11 = [v2 recordChangeTag];
    [v8 setCkChangeTag:v11];

    [v8 setCkRecordProcessDate:0];
    v12 = +[AXSSPunctuationManager sharedDatabase];
    [v12 updateEntry:v8 fromCloudKit:1];

    v13 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v8 ckChangeTag];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C0E8A000, v13, OS_LOG_TYPE_INFO, "Marked in icloud with new tag: %@: %@", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)processServerUpdateChanges:(id)a3 moc:(id)a4 recordNameToManagedObject:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_DEFAULT, "Received server updates: %@, %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AXSSPunctuationEntryCloudKitHelper *)self _processPunctuationEntryFromCKRecord:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
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
        v13 = [v12 punctuationEntryForUUID:v11];

        v14 = +[AXSSPunctuationManager sharedDatabase];
        [v14 removeEntry:v13];

        v15 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v22 = v8;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&dword_1C0E8A000, v15, OS_LOG_TYPE_DEFAULT, "Removing entry from server push: %@ %@", buf, 0x16u);
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
  _os_log_debug_impl(&dword_1C0E8A000, a4, OS_LOG_TYPE_DEBUG, "Committing record purge entry: %@", a1, 0xCu);
}

@end