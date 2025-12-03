@interface PDCKFetchRemoteChanges
- (BOOL)processObject:(id)object andUpdateSyncMetadataForRecord:(id)record;
- (BOOL)processPendingRecord:(id)record;
- (BOOL)processPendingSyncUpdatesWithParentRecordIDs:(id)ds;
- (id)objectForCKRecord:(id)record;
- (id)zoneIDsToFetch;
- (void)execute;
- (void)fetchChangesInZonesWithZoneIDs:(id)ds;
- (void)serverChangedRecord:(id)record;
- (void)serverDeletedRecordWithID:(id)d type:(id)type;
@end

@implementation PDCKFetchRemoteChanges

- (void)execute
{
  if (![(PDOperation *)self isAborted])
  {
    if ([(PDCKOperation *)self isBootstrapped])
    {
      zoneIDsToFetch = [(PDCKFetchRemoteChanges *)self zoneIDsToFetch];
      if ([zoneIDsToFetch count])
      {
        [(PDCKFetchRemoteChanges *)self fetchChangesInZonesWithZoneIDs:zoneIDsToFetch];
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

- (id)zoneIDsToFetch
{
  v3 = *(&self->super._operations + 4);
  if (v3 && [v3 count])
  {
    v4 = *(&self->super._operations + 4);
  }

  else
  {
    v4 = objc_alloc_init(NSMutableArray);
    progressZone = [(PDCKOperation *)self progressZone];
    zoneID = [progressZone zoneID];

    if (zoneID)
    {
      [v4 addObject:zoneID];
    }

    teacherZone = [(PDCKOperation *)self teacherZone];
    zoneID2 = [teacherZone zoneID];

    if (zoneID2)
    {
      [v4 addObject:zoneID2];
    }

    surveyAnswerZone = [(PDCKOperation *)self surveyAnswerZone];
    zoneID3 = [surveyAnswerZone zoneID];

    if (zoneID3)
    {
      [v4 addObject:zoneID3];
    }
  }

  return v4;
}

- (void)fetchChangesInZonesWithZoneIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_alloc_init(NSMutableDictionary);
  database = [(PDOperation *)self database];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000F1AA0;
  v28[3] = &unk_1002031D8;
  v7 = dsCopy;
  v29 = v7;
  v8 = database;
  v30 = v8;
  v9 = v5;
  v31 = v9;
  sub_10010BE68(v8, v28);
  v10 = [[CKFetchRecordZoneChangesOperation alloc] initWithRecordZoneIDs:v7 configurationsByRecordZoneID:v9];
  [v10 setFetchAllChanges:0];
  objc_initWeak(&location, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000F1C50;
  v25[3] = &unk_100203E88;
  objc_copyWeak(&v26, &location);
  [v10 setRecordWasChangedBlock:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000F1D84;
  v23[3] = &unk_100204E08;
  objc_copyWeak(&v24, &location);
  [v10 setRecordWithIDWasDeletedBlock:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000F1E20;
  v21[3] = &unk_100204E30;
  objc_copyWeak(&v22, &location);
  [v10 setRecordZoneChangeTokensUpdatedBlock:v21];
  v11 = objc_opt_new();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000F1F2C;
  v18[3] = &unk_100204E58;
  objc_copyWeak(&v20, &location);
  v12 = v11;
  v19 = v12;
  [v10 setRecordZoneFetchCompletionBlock:v18];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F2094;
  v14[3] = &unk_1002028F8;
  objc_copyWeak(&v17, &location);
  v13 = v12;
  v15 = v13;
  selfCopy = self;
  [v10 setCompletionBlock:v14];
  [(PDCKOperation *)self performCKDatabaseOperation:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)serverChangedRecord:(id)record
{
  recordCopy = record;
  v5 = +[PDCKOperation recordTypeToEntityMap];
  recordType = [recordCopy recordType];
  v7 = [v5 objectForKeyedSubscript:recordType];

  if (v7)
  {
    [(PDOperation *)self database];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v19 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F2334;
    v8 = v12[3] = &unk_100204E80;
    v13 = v8;
    v17 = v7;
    v9 = recordCopy;
    selfCopy = self;
    v16 = v18;
    v14 = v9;
    if (!v8 || ([v8 performTransaction:v12 forWriting:1] & 1) == 0)
    {
      CLSInitLog();
      v10 = CLSLogSync;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        recordID = [v9 recordID];
        *buf = 138412546;
        v21 = v9;
        v22 = 2114;
        v23 = recordID;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to save updated object in replay log; record: %@, recordID: %{public}@", buf, 0x16u);
      }

      [(PDCKOperation *)self abort];
    }

    _Block_object_dispose(v18, 8);
  }
}

- (id)objectForCKRecord:(id)record
{
  recordCopy = record;
  v4 = +[PDCKOperation recordTypeToEntityMap];
  recordType = [recordCopy recordType];
  v6 = [v4 objectForKeyedSubscript:recordType];

  v7 = [[v6 alloc] initWithCKRecord:recordCopy];

  return v7;
}

- (BOOL)processObject:(id)object andUpdateSyncMetadataForRecord:(id)record
{
  objectCopy = object;
  recordCopy = record;
  if (objectCopy)
  {
    database = [(PDOperation *)self database];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![objectCopy shouldInsertInDatabase:database])
    {
      goto LABEL_13;
    }

    if ([database insertOrUpdateObject:objectCopy])
    {
      if (![(PDCKOperation *)self updateSyncMetadataForRecord:recordCopy])
      {
        CLSInitLog();
        v9 = CLSLogSync;
        if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
        {
          v14 = v9;
          recordID = [recordCopy recordID];
          v16 = 138412546;
          v17 = recordCopy;
          v18 = 2114;
          v19 = recordID;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to update metadata for record; %@, recordID: %{public}@;", &v16, 0x16u);
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v10 = objectCopy;
      if ([v10 type]== 3)
      {
        sub_10012E18C(PDFileSyncManager, v10, database);
      }
    }

    else
    {
      CLSInitLog();
      v11 = CLSLogSync;
      if (!os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v10 = v11;
      recordID2 = [recordCopy recordID];
      v16 = 138412546;
      v17 = recordCopy;
      v18 = 2114;
      v19 = recordID2;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to insert/update object for record; %@, recordID: %{public}@;", &v16, 0x16u);
    }

LABEL_13:
  }

  return 1;
}

- (BOOL)processPendingRecord:(id)record
{
  recordCopy = record;
  v5 = [(PDCKFetchRemoteChanges *)self objectForCKRecord:recordCopy];
  if (v5)
  {
    v6 = [(PDCKFetchRemoteChanges *)self processObject:v5 andUpdateSyncMetadataForRecord:recordCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)processPendingSyncUpdatesWithParentRecordIDs:(id)ds
{
  dsCopy = ds;
  v5 = [PDDatabase whereSQLForArray:dsCopy prefix:@"parentRecordID in "];
  v6 = [[NSMutableArray alloc] initWithCapacity:200];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  database = [(PDOperation *)self database];
  v8 = objc_opt_class();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F2D78;
  v15[3] = &unk_100204EA8;
  v17 = &v18;
  v15[4] = self;
  v9 = v6;
  v16 = v9;
  [database selectAll:v8 where:v5 orderBy:0 bindings:dsCopy block:v15];
  if (*(v19 + 24) == 1 && (v10 = [database deleteAll:objc_opt_class() where:v5 bindings:dsCopy], *(v19 + 24) = v10, (v10 & 1) != 0))
  {
    if ([v9 count])
    {
      v11 = [(PDCKFetchRemoteChanges *)self processPendingSyncUpdatesWithParentRecordIDs:v9];
      *(v19 + 24) = v11;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    CLSInitLog();
    v12 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to replay sync log", v14, 2u);
    }

    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v11;
}

- (void)serverDeletedRecordWithID:(id)d type:(id)type
{
  dCopy = d;
  typeCopy = type;
  database = [(PDOperation *)self database];
  recordName = [dCopy recordName];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F2FFC;
  v15[3] = &unk_100204ED0;
  v15[4] = self;
  v10 = dCopy;
  v16 = v10;
  v11 = typeCopy;
  v17 = v11;
  v12 = database;
  v18 = v12;
  v13 = recordName;
  v19 = v13;
  if (!v12 || ([v12 performTransaction:v15 forWriting:1] & 1) == 0)
  {
    CLSInitLog();
    v14 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to delete an object from the local DB that has been deleted in iCloud; recordID: %{public}@;", buf, 0xCu);
    }
  }
}

@end