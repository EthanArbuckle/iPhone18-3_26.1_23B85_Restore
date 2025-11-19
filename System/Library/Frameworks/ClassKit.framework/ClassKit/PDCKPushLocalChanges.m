@interface PDCKPushLocalChanges
- (id)recordForSyncItem:(id)a3;
- (void)deleteProcessedSyncAssociatedWithRecordID:(id)a3;
- (void)deleteSyncStateForRecordIDs:(id)a3;
- (void)execute;
- (void)populateRecordsToSave:(id)a3 idsToDelete:(id)a4 withSyncItem:(id)a5;
- (void)recordUpdated:(id)a3;
- (void)resolvePartialErrors:(id)a3;
- (void)scheduleRecordsToSave:(id)a3 recordIDsToDelete:(id)a4 savePolicy:(int64_t)a5;
@end

@implementation PDCKPushLocalChanges

- (void)execute
{
  if (![(PDOperation *)self isAborted])
  {
    if ([(PDCKOperation *)self isBootstrapped])
    {
      v3 = +[NSMapTable strongToStrongObjectsMapTable];
      v4 = +[NSMapTable strongToStrongObjectsMapTable];
      [*(&self->super._operations + 4) removeAllObjects];
      v5 = [(PDOperation *)self database];
      v6 = v5;
      if (v5 && (sub_1000717E8(v5) & 2) != 0 && (sub_100169FD0(v6, @"syncTeacherContexts") & 1) == 0)
      {
        v9 = +[CLSContext entityName];
        v31 = v9;
        v7 = [NSArray arrayWithObjects:&v31 count:1];

        CLSInitLog();
        v10 = CLSLogSync;
        if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Syncing contexts not allowed.", buf, 2u);
        }

        v8 = @"entity != ?";
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1000D6E00;
      v23 = &unk_1002049D8;
      v24 = v6;
      v25 = v8;
      v26 = v7;
      v27 = self;
      v11 = v4;
      v28 = v11;
      v12 = v3;
      v29 = v12;
      v13 = v7;
      v14 = v6;
      v15 = v14;
      if (v6)
      {
        [v14 performTransaction:&v20 forWriting:1];
      }

      if ([v12 count] || objc_msgSend(v11, "count"))
      {
        v16 = [v11 objectEnumerator];
        v17 = [v16 allObjects];
        v18 = [v12 objectEnumerator];
        v19 = [v18 allObjects];
        [(PDCKPushLocalChanges *)self scheduleRecordsToSave:v17 recordIDsToDelete:v19 savePolicy:0];
      }

      else
      {
        [(PDAsyncOperation *)self markAsFinished];
      }
    }

    else
    {

      [(PDAsyncOperation *)self markAsFinished];
    }
  }
}

- (id)recordForSyncItem:(id)a3
{
  v4 = a3;
  v5 = [(PDCKOperation *)self recordIDForSyncItem:v4];
  v6 = [(PDCKOperation *)self syncMetadataForRecordID:v5];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24);
    v9 = CKRecordFromMetadata(v8);
  }

  else
  {
    v8 = [objc_msgSend(v4 "entity")];
    v9 = [[CKRecord alloc] initWithRecordType:v8 recordID:v5];
  }

  v10 = v9;

  v11 = [(PDOperation *)self database];
  v12 = [v4 entity];
  v13 = [v4 entityIdentity];
  v14 = [v11 select:v12 identity:v13];

  if (v14)
  {
    [v14 populate:v10];
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)recordUpdated:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D7270;
  v8[3] = &unk_100202140;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    [v5 performTransaction:v8 forWriting:1];
    v7 = v9;
  }
}

- (void)deleteSyncStateForRecordIDs:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D737C;
  v7[3] = &unk_100202140;
  v8 = v4;
  v9 = self;
  v6 = v4;
  if (v5)
  {
    [v5 performTransaction:v7 forWriting:1];
  }
}

- (void)deleteProcessedSyncAssociatedWithRecordID:(id)a3
{
  v4 = a3;
  v5 = [*(&self->super._operations + 4) objectForKeyedSubscript:v4];
  if ([v5 length])
  {
    v6 = [(PDOperation *)self database];
    v7 = [v6 select:objc_opt_class() identity:v5];
    v8 = v7;
    if (v7)
    {
      if ([objc_msgSend(v7 "entity")])
      {
        v9 = objc_alloc_init(PDPendingIngestItem);
        sub_10008121C(v9, [v8 entity]);
        v10 = [v8 entityIdentity];
        sub_10008122C(v9, v10);

        v11 = [v8 state];
        if (v9)
        {
          v9->_wasDeleted = v11 == 3;
        }

        if (([v6 insertOrUpdateObject:v9] & 1) == 0)
        {
          CLSInitLog();
          v12 = CLSLogSync;
          if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
          {
            v14 = 138412290;
            v15 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Failed to insert ingest item %@", &v14, 0xCu);
          }
        }
      }

      if (([v6 deleteObject:v8] & 1) == 0)
      {
        CLSInitLog();
        v13 = CLSLogSync;
        if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
        {
          v14 = 138543362;
          v15 = v4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Failed to delete sync item for record with recordID: %{public}@", &v14, 0xCu);
        }
      }
    }
  }
}

- (void)scheduleRecordsToSave:(id)a3 recordIDsToDelete:(id)a4 savePolicy:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (![(PDOperation *)self isAborted])
  {
    CLSInitLog();
    v10 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      *buf = 134218496;
      v21 = [v8 count];
      v22 = 2048;
      v23 = [v9 count];
      v24 = 2048;
      v25 = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "scheduling records to save count: %ld, records to delete count: %ld; save policy: %ld", buf, 0x20u);
    }

    v12 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v8 recordIDsToDelete:v9];
    [v12 setSavePolicy:a5];
    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000D7914;
    v18[3] = &unk_100203E88;
    objc_copyWeak(&v19, buf);
    [v12 setPerRecordSaveBlock:v18];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000D7A4C;
    v16 = &unk_100203EB0;
    objc_copyWeak(&v17, buf);
    [v12 setModifyRecordsCompletionBlock:&v13];
    [(PDCKOperation *)self performCKDatabaseOperation:v12, v13, v14, v15, v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (void)resolvePartialErrors:(id)a3
{
  v3 = a3;
  v50 = objc_alloc_init(NSMutableArray);
  v48 = objc_alloc_init(NSMutableDictionary);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v64 objects:v70 count:16];
  v49 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *v65;
    v51 = *v65;
    do
    {
      v8 = 0;
      v47 = "resolveConflictForLocalRecord:serverRecord:commonAncestorRecord:";
      v53 = v6;
      do
      {
        if (*v65 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v64 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v4 objectForKeyedSubscript:v9];
        v12 = [v11 code];
        if (v12 == 14)
        {
          v13 = [v11 userInfo];
          v14 = [v13 objectForKeyedSubscript:CKRecordChangedErrorAncestorRecordKey];

          v15 = [v11 userInfo];
          v16 = [v15 objectForKeyedSubscript:CKRecordChangedErrorClientRecordKey];

          v17 = [v11 userInfo];
          v18 = [v17 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

          v19 = [v16 recordType];
          v20 = +[PDCKOperation recordTypeToEntityMap];
          v21 = [v20 objectForKeyedSubscript:v19];
          if (v21)
          {
            if (objc_opt_respondsToSelector())
            {
              [v21 resolveConflictForLocalRecord:v16 serverRecord:v18 commonAncestorRecord:v14];
            }

            [v48 setObject:v18 forKeyedSubscript:{v9, v47}];
          }

          v4 = v49;
          v7 = v51;
          v6 = v53;
        }

        else if (v12 == 22)
        {
          [v50 addObject:v9];
        }

        else if (v12 == 31)
        {
          [(PDCKOperation *)self abort];

          objc_autoreleasePoolPop(v10);
          v46 = v48;
          goto LABEL_39;
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v6);
  }

  v46 = v48;
  if ([v48 count] || objc_msgSend(v50, "count"))
  {
    v52 = +[NSMapTable strongToStrongObjectsMapTable];
    v22 = +[NSMapTable strongToStrongObjectsMapTable];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v23 = v48;
    v24 = [v23 countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v61;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v61 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v60 + 1) + 8 * i);
          v29 = objc_autoreleasePoolPush();
          v30 = [v28 recordName];
          v31 = [v23 objectForKeyedSubscript:v28];
          [v22 setObject:v31 forKey:v30];

          objc_autoreleasePoolPop(v29);
        }

        v25 = [v23 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v25);
    }

    v54 = [(PDOperation *)self database];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v32 = v50;
    v33 = [v32 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v57;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v56 + 1) + 8 * j);
          v38 = objc_autoreleasePoolPush();
          v39 = [v23 objectForKeyedSubscript:v37];

          if (!v39)
          {
            v40 = [*(&self->super._operations + 4) objectForKeyedSubscript:v37];
            v41 = [v54 select:objc_opt_class() identity:v40];
            if (v41)
            {
              [(PDCKPushLocalChanges *)self populateRecordsToSave:v22 idsToDelete:v52 withSyncItem:v41];
            }
          }

          objc_autoreleasePoolPop(v38);
        }

        v34 = [v32 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v34);
    }

    v42 = [v22 objectEnumerator];
    v43 = [v42 allObjects];
    v44 = [v52 objectEnumerator];
    v45 = [v44 allObjects];
    [(PDCKPushLocalChanges *)self scheduleRecordsToSave:v43 recordIDsToDelete:v45 savePolicy:1];

    v46 = v48;
    v4 = v49;
  }

  else
  {
    [(PDAsyncOperation *)self markAsFinished];
  }

LABEL_39:
}

- (void)populateRecordsToSave:(id)a3 idsToDelete:(id)a4 withSyncItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!*(&self->super._operations + 4))
  {
    v11 = +[NSMapTable strongToStrongObjectsMapTable];
    v12 = *(&self->super._operations + 4);
    *(&self->super._operations + 4) = v11;
  }

  if ([v10 state] == 3)
  {
    v13 = [(PDCKOperation *)self recordIDForSyncItem:v10];
    v14 = [v13 recordName];
    [v9 setObject:v13 forKey:v14];
    v15 = [v10 identityValue];
    [*(&self->super._operations + 4) setObject:v15 forKeyedSubscript:v13];

    v16 = [v13 recordName];
    [v8 removeObjectForKey:v16];
  }

  else
  {
    v17 = [(PDCKPushLocalChanges *)self recordForSyncItem:v10];
    v13 = v17;
    if (v17)
    {
      v18 = [v17 recordID];
      v19 = [v18 recordName];

      [v8 setObject:v13 forKey:v19];
      v20 = [v10 identityValue];
      v21 = *(&self->super._operations + 4);
      v22 = [v13 recordID];
      [v21 setObject:v20 forKeyedSubscript:v22];
    }

    else
    {
      [(PDOperation *)self database];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000D84F0;
      v27 = v26[3] = &unk_100202140;
      v23 = v10;
      v28 = v23;
      v24 = v27;
      v25 = v24;
      if (v24)
      {
        [v24 performTransaction:v26 forWriting:1];
        v23 = v28;
      }
    }
  }
}

@end