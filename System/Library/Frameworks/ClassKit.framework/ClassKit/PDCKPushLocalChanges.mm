@interface PDCKPushLocalChanges
- (id)recordForSyncItem:(id)item;
- (void)deleteProcessedSyncAssociatedWithRecordID:(id)d;
- (void)deleteSyncStateForRecordIDs:(id)ds;
- (void)execute;
- (void)populateRecordsToSave:(id)save idsToDelete:(id)delete withSyncItem:(id)item;
- (void)recordUpdated:(id)updated;
- (void)resolvePartialErrors:(id)errors;
- (void)scheduleRecordsToSave:(id)save recordIDsToDelete:(id)delete savePolicy:(int64_t)policy;
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
      database = [(PDOperation *)self database];
      v6 = database;
      if (database && (sub_1000717E8(database) & 2) != 0 && (sub_100169FD0(v6, @"syncTeacherContexts") & 1) == 0)
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
      selfCopy = self;
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
        objectEnumerator = [v11 objectEnumerator];
        allObjects = [objectEnumerator allObjects];
        objectEnumerator2 = [v12 objectEnumerator];
        allObjects2 = [objectEnumerator2 allObjects];
        [(PDCKPushLocalChanges *)self scheduleRecordsToSave:allObjects recordIDsToDelete:allObjects2 savePolicy:0];
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

- (id)recordForSyncItem:(id)item
{
  itemCopy = item;
  v5 = [(PDCKOperation *)self recordIDForSyncItem:itemCopy];
  v6 = [(PDCKOperation *)self syncMetadataForRecordID:v5];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24);
    v9 = CKRecordFromMetadata(v8);
  }

  else
  {
    v8 = [objc_msgSend(itemCopy "entity")];
    v9 = [[CKRecord alloc] initWithRecordType:v8 recordID:v5];
  }

  v10 = v9;

  database = [(PDOperation *)self database];
  entity = [itemCopy entity];
  entityIdentity = [itemCopy entityIdentity];
  v14 = [database select:entity identity:entityIdentity];

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

- (void)recordUpdated:(id)updated
{
  updatedCopy = updated;
  database = [(PDOperation *)self database];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D7270;
  v8[3] = &unk_100202140;
  v8[4] = self;
  v9 = updatedCopy;
  v6 = updatedCopy;
  v7 = v6;
  if (database)
  {
    [database performTransaction:v8 forWriting:1];
    v7 = v9;
  }
}

- (void)deleteSyncStateForRecordIDs:(id)ds
{
  dsCopy = ds;
  database = [(PDOperation *)self database];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D737C;
  v7[3] = &unk_100202140;
  v8 = dsCopy;
  selfCopy = self;
  v6 = dsCopy;
  if (database)
  {
    [database performTransaction:v7 forWriting:1];
  }
}

- (void)deleteProcessedSyncAssociatedWithRecordID:(id)d
{
  dCopy = d;
  v5 = [*(&self->super._operations + 4) objectForKeyedSubscript:dCopy];
  if ([v5 length])
  {
    database = [(PDOperation *)self database];
    v7 = [database select:objc_opt_class() identity:v5];
    v8 = v7;
    if (v7)
    {
      if ([objc_msgSend(v7 "entity")])
      {
        v9 = objc_alloc_init(PDPendingIngestItem);
        sub_10008121C(v9, [v8 entity]);
        entityIdentity = [v8 entityIdentity];
        sub_10008122C(v9, entityIdentity);

        state = [v8 state];
        if (v9)
        {
          v9->_wasDeleted = state == 3;
        }

        if (([database insertOrUpdateObject:v9] & 1) == 0)
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

      if (([database deleteObject:v8] & 1) == 0)
      {
        CLSInitLog();
        v13 = CLSLogSync;
        if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
        {
          v14 = 138543362;
          v15 = dCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Failed to delete sync item for record with recordID: %{public}@", &v14, 0xCu);
        }
      }
    }
  }
}

- (void)scheduleRecordsToSave:(id)save recordIDsToDelete:(id)delete savePolicy:(int64_t)policy
{
  saveCopy = save;
  deleteCopy = delete;
  if (![(PDOperation *)self isAborted])
  {
    CLSInitLog();
    v10 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      *buf = 134218496;
      v21 = [saveCopy count];
      v22 = 2048;
      v23 = [deleteCopy count];
      v24 = 2048;
      policyCopy = policy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "scheduling records to save count: %ld, records to delete count: %ld; save policy: %ld", buf, 0x20u);
    }

    v12 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:saveCopy recordIDsToDelete:deleteCopy];
    [v12 setSavePolicy:policy];
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

- (void)resolvePartialErrors:(id)errors
{
  errorsCopy = errors;
  v50 = objc_alloc_init(NSMutableArray);
  v48 = objc_alloc_init(NSMutableDictionary);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v4 = errorsCopy;
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
        code = [v11 code];
        if (code == 14)
        {
          userInfo = [v11 userInfo];
          v14 = [userInfo objectForKeyedSubscript:CKRecordChangedErrorAncestorRecordKey];

          userInfo2 = [v11 userInfo];
          v16 = [userInfo2 objectForKeyedSubscript:CKRecordChangedErrorClientRecordKey];

          userInfo3 = [v11 userInfo];
          v18 = [userInfo3 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

          recordType = [v16 recordType];
          v20 = +[PDCKOperation recordTypeToEntityMap];
          v21 = [v20 objectForKeyedSubscript:recordType];
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

        else if (code == 22)
        {
          [v50 addObject:v9];
        }

        else if (code == 31)
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
          recordName = [v28 recordName];
          v31 = [v23 objectForKeyedSubscript:v28];
          [v22 setObject:v31 forKey:recordName];

          objc_autoreleasePoolPop(v29);
        }

        v25 = [v23 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v25);
    }

    database = [(PDOperation *)self database];
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
            v41 = [database select:objc_opt_class() identity:v40];
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

    objectEnumerator = [v22 objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    objectEnumerator2 = [v52 objectEnumerator];
    allObjects2 = [objectEnumerator2 allObjects];
    [(PDCKPushLocalChanges *)self scheduleRecordsToSave:allObjects recordIDsToDelete:allObjects2 savePolicy:1];

    v46 = v48;
    v4 = v49;
  }

  else
  {
    [(PDAsyncOperation *)self markAsFinished];
  }

LABEL_39:
}

- (void)populateRecordsToSave:(id)save idsToDelete:(id)delete withSyncItem:(id)item
{
  saveCopy = save;
  deleteCopy = delete;
  itemCopy = item;
  if (!*(&self->super._operations + 4))
  {
    v11 = +[NSMapTable strongToStrongObjectsMapTable];
    v12 = *(&self->super._operations + 4);
    *(&self->super._operations + 4) = v11;
  }

  if ([itemCopy state] == 3)
  {
    v13 = [(PDCKOperation *)self recordIDForSyncItem:itemCopy];
    recordName = [v13 recordName];
    [deleteCopy setObject:v13 forKey:recordName];
    identityValue = [itemCopy identityValue];
    [*(&self->super._operations + 4) setObject:identityValue forKeyedSubscript:v13];

    recordName2 = [v13 recordName];
    [saveCopy removeObjectForKey:recordName2];
  }

  else
  {
    v17 = [(PDCKPushLocalChanges *)self recordForSyncItem:itemCopy];
    v13 = v17;
    if (v17)
    {
      recordID = [v17 recordID];
      recordName3 = [recordID recordName];

      [saveCopy setObject:v13 forKey:recordName3];
      identityValue2 = [itemCopy identityValue];
      v21 = *(&self->super._operations + 4);
      recordID2 = [v13 recordID];
      [v21 setObject:identityValue2 forKeyedSubscript:recordID2];
    }

    else
    {
      [(PDOperation *)self database];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000D84F0;
      v27 = v26[3] = &unk_100202140;
      v23 = itemCopy;
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