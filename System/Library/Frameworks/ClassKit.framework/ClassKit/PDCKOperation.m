@interface PDCKOperation
+ (NSArray)syncableEntities;
+ (NSDictionary)recordTypeToEntityMap;
- (BOOL)isBootstrapped;
- (BOOL)isNetworkError:(id)a3;
- (BOOL)isServerBusyError:(id)a3;
- (BOOL)updateSyncMetadataForRecord:(id)a3;
- (CKRecordZone)assetZone;
- (CKRecordZone)progressZone;
- (CKRecordZone)surveyAnswerZone;
- (CKRecordZone)teacherZone;
- (PDCKOperation)initWithDatabase:(id)a3 container:(id)a4;
- (double)retryDelayForServerBusyError:(id)a3;
- (id)_zoneWithName:(id)a3;
- (id)recordIDForSyncItem:(id)a3;
- (id)syncMetadataForRecord:(id)a3;
- (id)syncMetadataForRecordID:(id)a3;
- (id)zoneIDForSyncItem:(id)a3;
- (void)abort;
- (void)deleteSyncMetadataAssociatedWithRecordID:(id)a3;
- (void)performCKDatabaseOperation:(id)a3;
- (void)prepare;
- (void)setBootstrapped:(BOOL)a3;
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
  block[4] = a1;
  if (qword_10024DBE8 != -1)
  {
    dispatch_once(&qword_10024DBE8, block);
  }

  v2 = qword_10024DBE0;

  return v2;
}

- (PDCKOperation)initWithDatabase:(id)a3 container:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PDCKOperation;
  v8 = [(PDOperation *)&v11 initWithDatabase:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 74), a4);
  }

  return v9;
}

- (void)performCKDatabaseOperation:(id)a3
{
  v10 = a3;
  if (![(PDOperation *)self isAborted])
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [v10 configuration];
    if (!v5)
    {
      v5 = objc_opt_new();
      [v5 setQualityOfService:17];
      [v10 setConfiguration:v5];
    }

    [v5 setQualityOfService:25];
    [v5 setAllowsCellularAccess:{-[PDOperation mayUseCellularData](v4, "mayUseCellularData")}];
    [(PDOperation *)v4 timeoutIntervalForRequests];
    [v5 setTimeoutIntervalForRequest:?];
    [v5 setLongLived:0];
    v6 = *(&v4->_surveyAnswerZone + 2);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(&v4->_surveyAnswerZone + 2);
      *(&v4->_surveyAnswerZone + 2) = v7;

      v6 = *(&v4->_surveyAnswerZone + 2);
    }

    [v6 addObject:v10];

    objc_sync_exit(v4);
    v9 = [(PDCKOperation *)v4 cloudDatabase];
    [v9 addOperation:v10];
  }
}

- (void)abort
{
  v4.receiver = self;
  v4.super_class = PDCKOperation;
  [(PDOperation *)&v4 abort];
  v3 = self;
  objc_sync_enter(v3);
  [*(&v3->_surveyAnswerZone + 2) makeObjectsPerformSelector:"cancel"];
  objc_sync_exit(v3);
}

- (BOOL)isBootstrapped
{
  v2 = [(PDOperation *)self database];
  v3 = sub_100169FD0(v2, @"PDCK_Bootstrapped");

  return v3;
}

- (void)setBootstrapped:(BOOL)a3
{
  v4 = [(PDOperation *)self database];
  sub_100169F38(v4, a3, @"PDCK_Bootstrapped");
}

- (BOOL)isNetworkError:(id)a3
{
  v3 = a3;
  v4 = [v3 code] == 3 || objc_msgSend(v3, "code") == 4;

  return v4;
}

- (BOOL)isServerBusyError:(id)a3
{
  v3 = a3;
  v4 = [v3 code] == 6 || objc_msgSend(v3, "code") == 7 || objc_msgSend(v3, "code") == 23;

  return v4;
}

- (double)retryDelayForServerBusyError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:CKErrorRetryAfterKey];

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

- (id)_zoneWithName:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = sub_10016A49C(v5, v4);

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
  v6 = self;
  v3 = v5;
  sub_10010BE68(v3, v4);
}

- (id)zoneIDForSyncItem:(id)a3
{
  v5 = [a3 syncableItemType];
  if (v5)
  {
    if (v5 == 2)
    {
      v6 = [(PDCKOperation *)self surveyAnswerZone];
    }

    else
    {
      if (v5 != 1)
      {
        goto LABEL_8;
      }

      v6 = [(PDCKOperation *)self progressZone];
    }
  }

  else
  {
    v6 = [(PDCKOperation *)self teacherZone];
  }

  v7 = v6;
  v3 = [v6 zoneID];

LABEL_8:

  return v3;
}

- (id)recordIDForSyncItem:(id)a3
{
  v4 = a3;
  v5 = [(PDCKOperation *)self zoneIDForSyncItem:v4];
  v6 = [v4 entityIdentity];

  v7 = [v6 description];

  v8 = [[CKRecordID alloc] initWithRecordName:v7 zoneID:v5];

  return v8;
}

- (id)syncMetadataForRecordID:(id)a3
{
  v4 = [a3 recordName];
  v5 = [(PDOperation *)self database];
  v6 = objc_opt_class();
  v10 = v4;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [v5 select:v6 where:@"entityIdentity = ?" bindings:v7];

  return v8;
}

- (id)syncMetadataForRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [(PDCKOperation *)self syncMetadataForRecordID:v5];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = [v4 recordID];
    v8 = [v7 recordName];
    sub_10008121C(v6, v8);

    v9 = [objc_opt_class() recordTypeToEntityMap];
    v10 = [v4 recordType];
    v11 = [v9 objectForKeyedSubscript:v10];

    sub_10008120C(v6, v11);
  }

  return v6;
}

- (BOOL)updateSyncMetadataForRecord:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001444DC;
  v14[3] = &unk_1002038B0;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = v5;
  v8 = v7;
  v16 = v7;
  if (!v7 || (v9 = 1, ([v7 performTransaction:v14 forWriting:1] & 1) == 0))
  {
    CLSInitLog();
    v10 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v6 recordID];
      *buf = 138412546;
      v18 = v6;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Failed to update sync state for record: %@, recordID: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)deleteSyncMetadataAssociatedWithRecordID:(id)a3
{
  v4 = a3;
  v5 = [v4 recordName];
  v11 = v5;
  v6 = [NSArray arrayWithObjects:&v11 count:1];

  v7 = [(PDOperation *)self database];
  LOBYTE(v5) = [v7 deleteAll:objc_opt_class() where:@"entityIdentity = ?" bindings:v6];

  if ((v5 & 1) == 0)
  {
    CLSInitLog();
    v8 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to delete sync state for deleted record with recordID: %{public}@", &v9, 0xCu);
    }
  }
}

@end