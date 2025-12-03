@interface PDCKOperation
+ (NSArray)syncableEntities;
+ (NSDictionary)recordTypeToEntityMap;
- (BOOL)isBootstrapped;
- (BOOL)isNetworkError:(id)error;
- (BOOL)isServerBusyError:(id)error;
- (BOOL)updateSyncMetadataForRecord:(id)record;
- (CKRecordZone)assetZone;
- (CKRecordZone)progressZone;
- (CKRecordZone)surveyAnswerZone;
- (CKRecordZone)teacherZone;
- (PDCKOperation)initWithDatabase:(id)database container:(id)container;
- (double)retryDelayForServerBusyError:(id)error;
- (id)_zoneWithName:(id)name;
- (id)recordIDForSyncItem:(id)item;
- (id)syncMetadataForRecord:(id)record;
- (id)syncMetadataForRecordID:(id)d;
- (id)zoneIDForSyncItem:(id)item;
- (void)abort;
- (void)deleteSyncMetadataAssociatedWithRecordID:(id)d;
- (void)performCKDatabaseOperation:(id)operation;
- (void)prepare;
- (void)setBootstrapped:(BOOL)bootstrapped;
@end

@implementation PDCKOperation

+ (NSArray)syncableEntities
{
  if (qword_10024DBD8 != -1)
  {
    dispatch_once(&qword_10024DBD8, &stru_1002060D0);
  }

  v3 = qword_10024DBD0;

  return v3;
}

+ (NSDictionary)recordTypeToEntityMap
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001436F0;
  block[3] = &unk_100202CA8;
  block[4] = self;
  if (qword_10024DBE8 != -1)
  {
    dispatch_once(&qword_10024DBE8, block);
  }

  v2 = qword_10024DBE0;

  return v2;
}

- (PDCKOperation)initWithDatabase:(id)database container:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = PDCKOperation;
  v8 = [(PDOperation *)&v11 initWithDatabase:database];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 74), container);
  }

  return v9;
}

- (void)performCKDatabaseOperation:(id)operation
{
  operationCopy = operation;
  if (![(PDOperation *)self isAborted])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    configuration = [operationCopy configuration];
    if (!configuration)
    {
      configuration = objc_opt_new();
      [configuration setQualityOfService:17];
      [operationCopy setConfiguration:configuration];
    }

    [configuration setQualityOfService:25];
    [configuration setAllowsCellularAccess:{-[PDOperation mayUseCellularData](selfCopy, "mayUseCellularData")}];
    [(PDOperation *)selfCopy timeoutIntervalForRequests];
    [configuration setTimeoutIntervalForRequest:?];
    [configuration setLongLived:0];
    v6 = *(&selfCopy->_surveyAnswerZone + 2);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(&selfCopy->_surveyAnswerZone + 2);
      *(&selfCopy->_surveyAnswerZone + 2) = v7;

      v6 = *(&selfCopy->_surveyAnswerZone + 2);
    }

    [v6 addObject:operationCopy];

    objc_sync_exit(selfCopy);
    cloudDatabase = [(PDCKOperation *)selfCopy cloudDatabase];
    [cloudDatabase addOperation:operationCopy];
  }
}

- (void)abort
{
  v4.receiver = self;
  v4.super_class = PDCKOperation;
  [(PDOperation *)&v4 abort];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [*(&selfCopy->_surveyAnswerZone + 2) makeObjectsPerformSelector:"cancel"];
  objc_sync_exit(selfCopy);
}

- (BOOL)isBootstrapped
{
  database = [(PDOperation *)self database];
  v3 = sub_100169FD0(database, @"PDCK_Bootstrapped");

  return v3;
}

- (void)setBootstrapped:(BOOL)bootstrapped
{
  database = [(PDOperation *)self database];
  sub_100169F38(database, bootstrapped, @"PDCK_Bootstrapped");
}

- (BOOL)isNetworkError:(id)error
{
  errorCopy = error;
  v4 = [errorCopy code] == 3 || objc_msgSend(errorCopy, "code") == 4;

  return v4;
}

- (BOOL)isServerBusyError:(id)error
{
  errorCopy = error;
  v4 = [errorCopy code] == 6 || objc_msgSend(errorCopy, "code") == 7 || objc_msgSend(errorCopy, "code") == 23;

  return v4;
}

- (double)retryDelayForServerBusyError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo objectForKeyedSubscript:CKErrorRetryAfterKey];

  [v4 doubleValue];
  if (v5 >= 10.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 10.0;
  }

  return v6;
}

- (id)_zoneWithName:(id)name
{
  nameCopy = name;
  database = [(PDOperation *)self database];
  v6 = sub_10016A49C(database, nameCopy);

  if ([v6 length])
  {
    v7 = [[CKRecordZone alloc] initWithZoneName:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CKRecordZone)progressZone
{
  v3 = *(&self->_container + 2);
  if (!v3)
  {
    v4 = [(PDCKOperation *)self _zoneWithName:@"PDCK_ClassKitZoneName"];
    v5 = *(&self->_container + 2);
    *(&self->_container + 2) = v4;

    v3 = *(&self->_container + 2);
  }

  return v3;
}

- (CKRecordZone)teacherZone
{
  v3 = *(&self->_progressZone + 2);
  if (!v3)
  {
    v4 = [(PDCKOperation *)self _zoneWithName:@"PDCK_TeacherZoneName"];
    v5 = *(&self->_progressZone + 2);
    *(&self->_progressZone + 2) = v4;

    v3 = *(&self->_progressZone + 2);
  }

  return v3;
}

- (CKRecordZone)assetZone
{
  v3 = *(&self->_teacherZone + 2);
  if (!v3)
  {
    v4 = [(PDCKOperation *)self _zoneWithName:@"PDCK_ClassKitSharedAssetZone"];
    v5 = *(&self->_teacherZone + 2);
    *(&self->_teacherZone + 2) = v4;

    v3 = *(&self->_teacherZone + 2);
  }

  return v3;
}

- (CKRecordZone)surveyAnswerZone
{
  v3 = *(&self->_assetZone + 2);
  if (!v3)
  {
    v4 = [(PDCKOperation *)self _zoneWithName:@"PDCK_StudentZoneName"];
    v5 = *(&self->_assetZone + 2);
    *(&self->_assetZone + 2) = v4;

    v3 = *(&self->_assetZone + 2);
  }

  return v3;
}

- (void)prepare
{
  v7.receiver = self;
  v7.super_class = PDCKOperation;
  [(PDAsyncOperation *)&v7 prepare];
  [(PDOperation *)self database];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100143F64;
  v5 = v4[3] = &unk_1002029E8;
  selfCopy = self;
  v3 = v5;
  sub_10010BE68(v3, v4);
}

- (id)zoneIDForSyncItem:(id)item
{
  syncableItemType = [item syncableItemType];
  if (syncableItemType)
  {
    if (syncableItemType == 2)
    {
      surveyAnswerZone = [(PDCKOperation *)self surveyAnswerZone];
    }

    else
    {
      if (syncableItemType != 1)
      {
        goto LABEL_8;
      }

      surveyAnswerZone = [(PDCKOperation *)self progressZone];
    }
  }

  else
  {
    surveyAnswerZone = [(PDCKOperation *)self teacherZone];
  }

  v7 = surveyAnswerZone;
  zoneID = [surveyAnswerZone zoneID];

LABEL_8:

  return zoneID;
}

- (id)recordIDForSyncItem:(id)item
{
  itemCopy = item;
  v5 = [(PDCKOperation *)self zoneIDForSyncItem:itemCopy];
  entityIdentity = [itemCopy entityIdentity];

  v7 = [entityIdentity description];

  v8 = [[CKRecordID alloc] initWithRecordName:v7 zoneID:v5];

  return v8;
}

- (id)syncMetadataForRecordID:(id)d
{
  recordName = [d recordName];
  database = [(PDOperation *)self database];
  v6 = objc_opt_class();
  v10 = recordName;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [database select:v6 where:@"entityIdentity = ?" bindings:v7];

  return v8;
}

- (id)syncMetadataForRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  v6 = [(PDCKOperation *)self syncMetadataForRecordID:recordID];

  if (!v6)
  {
    v6 = objc_opt_new();
    recordID2 = [recordCopy recordID];
    recordName = [recordID2 recordName];
    sub_10008121C(v6, recordName);

    recordTypeToEntityMap = [objc_opt_class() recordTypeToEntityMap];
    recordType = [recordCopy recordType];
    v11 = [recordTypeToEntityMap objectForKeyedSubscript:recordType];

    sub_10008120C(v6, v11);
  }

  return v6;
}

- (BOOL)updateSyncMetadataForRecord:(id)record
{
  recordCopy = record;
  database = [(PDOperation *)self database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001444DC;
  v14[3] = &unk_1002038B0;
  v14[4] = self;
  v6 = recordCopy;
  v15 = v6;
  v7 = database;
  v8 = v7;
  v16 = v7;
  if (!v7 || (v9 = 1, ([v7 performTransaction:v14 forWriting:1] & 1) == 0))
  {
    CLSInitLog();
    v10 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      recordID = [v6 recordID];
      *buf = 138412546;
      v18 = v6;
      v19 = 2114;
      v20 = recordID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Failed to update sync state for record: %@, recordID: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)deleteSyncMetadataAssociatedWithRecordID:(id)d
{
  dCopy = d;
  recordName = [dCopy recordName];
  v11 = recordName;
  v6 = [NSArray arrayWithObjects:&v11 count:1];

  database = [(PDOperation *)self database];
  LOBYTE(recordName) = [database deleteAll:objc_opt_class() where:@"entityIdentity = ?" bindings:v6];

  if ((recordName & 1) == 0)
  {
    CLSInitLog();
    v8 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v9 = 138543362;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to delete sync state for deleted record with recordID: %{public}@", &v9, 0xCu);
    }
  }
}

@end