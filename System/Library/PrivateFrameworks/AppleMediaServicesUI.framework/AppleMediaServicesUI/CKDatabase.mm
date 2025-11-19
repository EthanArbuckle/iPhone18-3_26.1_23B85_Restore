@interface CKDatabase
+ (id)_changeTokenKeyForDatabaseScope:(int64_t)a3 recordZoneName:(id)a4;
+ (id)_fetchChangeTokenWithDatabaseScope:(int64_t)a3;
+ (id)_fetchChangeTokenWithDatabaseScope:(int64_t)a3 recordZoneName:(id)a4;
+ (id)_stringForDatabaseScope:(int64_t)a3;
+ (id)_zoneIdentifiersWithExpiredTokensFrom:(id)a3 andErrors:(id)a4;
- (BOOL)_handleError:(id)a3 andErrors:(id)a4;
- (id)_fetchChangedRecordZonesWithServerChangeToken:(id)a3;
- (id)_fetchChangedRecordsInRecordZonesWithWithRecordZoneIDs:(id)a3 changeTokens:(id)a4;
- (id)_subscribeWithIdentifier:(id)a3 recordZoneIdentifier:(id)a4 attempt:(unint64_t)a5;
- (id)addRecordsToSave:(id)a3 recordIdentifiersToDelete:(id)a4;
- (id)createRecordWithRecordName:(id)a3 recordType:(id)a4 recordZone:(id)a5;
- (id)createRecordZoneWithRecordZoneName:(id)a3;
- (id)deleteRecordZonesWithRecordZoneIdentifiers:(id)a3;
- (id)fetchChangedRecordZones;
- (id)fetchChangedRecordsInRecordZonesWithRecordZoneIdentifiers:(id)a3;
- (id)fetchRecordWithName:(id)a3 zoneIdentifier:(id)a4;
- (id)fetchRecordWithRecordIdentifier:(id)a3;
- (id)fetchRecordZones;
- (id)saveRecord:(id)a3;
- (id)saveRecordZone:(id)a3;
- (id)shareForRecordZoneIdentifier:(id)a3;
- (unint64_t)type;
- (void)persistChangedRecordZonesChangeToken:(id)a3;
- (void)persistChangedRecordsChangeToken:(id)a3 forRecordZoneIdentifier:(id)a4;
@end

@implementation CKDatabase

- (unint64_t)type
{
  v2 = [(CKDatabase *)self databaseScope];
  if (v2 == CKDatabaseScopeShared)
  {
    return 2;
  }

  else
  {
    return v2 == CKDatabaseScopePublic;
  }
}

- (id)addRecordsToSave:(id)a3 recordIdentifiersToDelete:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8 = objc_alloc_init(AMSPromise);
    v9 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v10 recordIDsToDelete:v12];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001D4230;
    v17[3] = &unk_100254990;
    v18 = v8;
    v14 = v8;
    [v13 setModifyRecordsCompletionBlock:v17];
    [v13 setSavePolicy:0];
    [v13 setAtomic:0];
    [(CKDatabase *)self addOperation:v13];
    v15 = [v14 catchWithBlock:&stru_1002549D0];
  }

  else
  {
    v10 = [[AMSCloudDataSavedRecordsResult alloc] initWithSavedRecords:v6 deletedRecords:v7 error:0];
    v15 = [AMSPromise promiseWithResult:v10];
  }

  return v15;
}

- (id)createRecordWithRecordName:(id)a3 recordType:(id)a4 recordZone:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = [CKRecordID alloc];
  v12 = [v10 zoneID];
  v13 = [v11 initWithRecordName:v9 zoneID:v12];

  v14 = [[CKRecord alloc] initWithRecordType:v8 recordID:v13];

  return v14;
}

- (id)createRecordZoneWithRecordZoneName:(id)a3
{
  v3 = a3;
  v4 = [[CKRecordZone alloc] initWithZoneName:v3];

  return v4;
}

- (id)deleteRecordZonesWithRecordZoneIdentifiers:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(AMSPromise);
  v7 = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:0 recordZoneIDsToDelete:v5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D4900;
  v11[3] = &unk_100254990;
  v12 = v6;
  v8 = v6;
  [v7 setModifyRecordZonesCompletionBlock:v11];
  [(CKDatabase *)self addOperation:v7];
  v9 = [v8 catchWithBlock:&stru_100254A10];

  return v9;
}

- (id)fetchChangedRecordsInRecordZonesWithRecordZoneIdentifiers:(id)a3
{
  v4 = [a3 ams_mapWithTransformIgnoresNil:&stru_100254A50];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D4B6C;
  v8[3] = &unk_100254A78;
  v8[4] = self;
  v5 = [v4 ams_invertedDictionaryUsingTransformIgnoresNil:v8];
  v6 = [(CKDatabase *)self _fetchChangedRecordsInRecordZonesWithWithRecordZoneIDs:v4 changeTokens:v5];

  return v6;
}

- (id)fetchChangedRecordZones
{
  v3 = [objc_opt_class() _fetchChangeTokenWithDatabaseScope:{-[CKDatabase scope](self, "scope")}];
  v4 = [(CKDatabase *)self _fetchChangedRecordZonesWithServerChangeToken:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D4CF4;
  v8[3] = &unk_100254AA0;
  v8[4] = self;
  v5 = [v4 catchWithBlock:v8];

  v6 = [v5 catchWithBlock:&stru_100254AC0];

  return v6;
}

- (id)fetchRecordWithName:(id)a3 zoneIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CKRecordID alloc] initWithRecordName:v7 zoneID:v8];
  v10 = [(CKDatabase *)self fetchRecordWithRecordIdentifier:v9];

  return v10;
}

- (id)fetchRecordWithRecordIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(AMSPromise);
  v7 = [CKFetchRecordsOperation alloc];
  v20 = v5;
  v8 = [NSArray arrayWithObjects:&v20 count:1];
  v9 = [v7 initWithRecordIDs:v8];

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001D5054;
  v17 = &unk_100254AE8;
  v18 = v5;
  v19 = v6;
  v10 = v6;
  v11 = v5;
  [v9 setFetchRecordsCompletionBlock:&v14];
  [(CKDatabase *)self addOperation:v9, v14, v15, v16, v17];
  v12 = [v10 catchWithBlock:&stru_100254B08];

  return v12;
}

- (id)fetchRecordZones
{
  v3 = objc_alloc_init(AMSPromise);
  v4 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D5374;
  v9[3] = &unk_100254B30;
  v5 = v3;
  v10 = v5;
  [v4 setFetchRecordZonesCompletionBlock:v9];
  [(CKDatabase *)self addOperation:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D54A4;
  v8[3] = &unk_100254B80;
  v8[4] = self;
  [v5 addSuccessBlock:v8];
  v6 = v5;

  return v5;
}

- (void)persistChangedRecordZonesChangeToken:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSTokenStorage);
  v6 = [(AMSTokenStorage *)v5 loadWithName:@"AMSCloudKitDatabaseChangeTokens"];
  v7 = v6;
  v8 = &__NSDictionary0__struct;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v9 mutableCopy];
  if (v4)
  {
    v22 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v22];
    v12 = v22;
    if (!v11)
    {
      v13 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v20 = AMSLogKey();
        v19 = AMSHashIfNeeded();
        v15 = AMSHashIfNeeded();
        *buf = 138544130;
        v24 = v18;
        v25 = 2114;
        v26 = v20;
        v27 = 2114;
        v28 = v19;
        v29 = 2114;
        v30 = v15;
        v16 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to archive a database change token. database = %{public}@ | error = %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = [objc_opt_class() _stringForDatabaseScope:{-[CKDatabase scope](self, "scope")}];
  [v10 setObject:v11 forKeyedSubscript:v17];

  if (([v9 isEqualToDictionary:v10] & 1) == 0)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001D5810;
    v21[3] = &unk_100254BA8;
    v21[4] = self;
    [(AMSTokenStorage *)v5 save:v10 name:@"AMSCloudKitDatabaseChangeTokens" completionHandler:v21];
  }
}

- (void)persistChangedRecordsChangeToken:(id)a3 forRecordZoneIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = AMSHashIfNeeded();
    *buf = 138544130;
    v36 = v10;
    v37 = 2114;
    v38 = v11;
    v39 = 2112;
    v40 = v6;
    v41 = 2114;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting a change token. changeToken = %@ | zoneIdentifier = %{public}@", buf, 0x2Au);
  }

  v13 = objc_alloc_init(AMSTokenStorage);
  v14 = [(AMSTokenStorage *)v13 loadWithName:@"AMSCloudKitRecordZoneChangeTokens"];
  v15 = v14;
  v16 = &__NSDictionary0__struct;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [v17 mutableCopy];
  if (v6)
  {
    v34 = 0;
    v19 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v34];
    v20 = v34;
    if (!v19)
    {
      v21 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v31 = AMSLogKey();
        v28 = [(CKDatabase *)self scope];
        v30 = AMSHashIfNeeded();
        v27 = AMSHashIfNeeded();
        *buf = 138544386;
        v36 = v29;
        v37 = 2114;
        v38 = v31;
        v39 = 2048;
        v40 = v28;
        v41 = 2114;
        v42 = v30;
        v43 = 2114;
        v44 = v27;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to archive a record zone change token. databaseScope = %ld | zoneName = %{public}@ | error = %{public}@", buf, 0x34u);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = objc_opt_class();
  v24 = [(CKDatabase *)self scope];
  v25 = [v7 name];
  v26 = [v23 _changeTokenKeyForDatabaseScope:v24 recordZoneName:v25];

  [v18 setObject:v19 forKeyedSubscript:v26];
  if (([v17 isEqualToDictionary:v18] & 1) == 0)
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001D5D54;
    v32[3] = &unk_100254BD0;
    v32[4] = self;
    v33 = v7;
    [(AMSTokenStorage *)v13 save:v18 name:@"AMSCloudKitRecordZoneChangeTokens" completionHandler:v32];
  }
}

- (id)saveRecord:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(AMSPromise);
  v7 = [CKModifyRecordsOperation alloc];
  v15 = v5;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [v7 initWithRecordsToSave:v8 recordIDsToDelete:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D606C;
  v13[3] = &unk_100254990;
  v14 = v6;
  v10 = v6;
  [v9 setModifyRecordsCompletionBlock:v13];
  [(CKDatabase *)self addOperation:v9];
  v11 = [v10 catchWithBlock:&stru_100254BF0];

  return v11;
}

- (id)saveRecordZone:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(AMSPromise);
  v7 = [CKModifyRecordZonesOperation alloc];
  v15 = v5;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [v7 initWithRecordZonesToSave:v8 recordZoneIDsToDelete:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D6344;
  v13[3] = &unk_100254990;
  v14 = v6;
  v10 = v6;
  [v9 setModifyRecordZonesCompletionBlock:v13];
  [(CKDatabase *)self addOperation:v9];
  v11 = [v10 catchWithBlock:&stru_100254C10];

  return v11;
}

- (id)shareForRecordZoneIdentifier:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[CKShare alloc] initWithRecordZoneID:v4];

  return v5;
}

- (id)_subscribeWithIdentifier:(id)a3 recordZoneIdentifier:(id)a4 attempt:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = AMSHashIfNeeded();
    *buf = 138543874;
    v37 = v12;
    v38 = 2114;
    v39 = v13;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting up a database subscription. database = %{public}@", buf, 0x20u);
  }

  v15 = objc_alloc_init(CKNotificationInfo);
  [v15 setShouldSendContentAvailable:1];
  v16 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = [[CKRecordZoneSubscription alloc] initWithZoneID:v17 subscriptionID:v8];
  }

  else
  {
    v18 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:v8];
  }

  v19 = v18;
  [v18 setNotificationInfo:v15];
  v20 = objc_alloc_init(AMSPromise);
  v21 = [CKModifySubscriptionsOperation alloc];
  v35 = v19;
  v22 = [NSArray arrayWithObjects:&v35 count:1];
  v23 = [v21 initWithSubscriptionsToSave:v22 subscriptionIDsToDelete:0];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001D6878;
  v33[3] = &unk_100254990;
  v34 = v20;
  v24 = v20;
  [v23 setModifySubscriptionsCompletionBlock:v33];
  [(CKDatabase *)self addOperation:v23];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001D694C;
  v29[3] = &unk_100254C60;
  v29[4] = self;
  v30 = v8;
  v31 = v16;
  v32 = a5;
  v25 = v16;
  v26 = v8;
  v27 = [v24 continueWithBlock:v29];

  return v27;
}

+ (id)_changeTokenKeyForDatabaseScope:(int64_t)a3 recordZoneName:(id)a4
{
  v6 = a4;
  v7 = [a1 _stringForDatabaseScope:a3];
  v8 = [NSString stringWithFormat:@"%@:%@", v7, v6];

  return v8;
}

- (id)_fetchChangedRecordZonesWithServerChangeToken:(id)a3
{
  v4 = a3;
  v5 = [[CKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:v4];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001D70CC;
  v22[3] = &unk_100254C88;
  v8 = v6;
  v23 = v8;
  [v5 setRecordZoneWithIDChangedBlock:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001D70D8;
  v20[3] = &unk_100254C88;
  v9 = v7;
  v21 = v9;
  [v5 setRecordZoneWithIDWasDeletedBlock:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D70E4;
  v16[3] = &unk_100254CB0;
  v10 = objc_alloc_init(AMSPromise);
  v17 = v10;
  v18 = v8;
  v19 = v9;
  v11 = v9;
  v12 = v8;
  [v5 setFetchDatabaseChangesCompletionBlock:v16];
  [(CKDatabase *)self addOperation:v5];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (id)_fetchChangedRecordsInRecordZonesWithWithRecordZoneIDs:(id)a3 changeTokens:(id)a4
{
  v6 = a3;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1001D7570;
  v48[3] = &unk_100254A78;
  v29 = a4;
  v49 = v29;
  v28 = [v6 ams_invertedDictionaryUsingTransform:v48];
  v7 = [[CKFetchRecordZoneChangesOperation alloc] initWithRecordZoneIDs:v6 configurationsByRecordZoneID:v28];
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = objc_alloc_init(NSMutableDictionary);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001D75F0;
  v46[3] = &unk_100254CD8;
  v12 = v8;
  v47 = v12;
  [v7 setRecordChangedBlock:v46];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1001D76D0;
  v44[3] = &unk_100254D00;
  v13 = v9;
  v45 = v13;
  [v7 setRecordWithIDWasDeletedBlock:v44];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001D7790;
  v39[3] = &unk_100254D28;
  v14 = v11;
  v40 = v14;
  v15 = v12;
  v41 = v15;
  v16 = v13;
  v42 = v16;
  v17 = v10;
  v43 = v17;
  [v7 setRecordZoneFetchCompletionBlock:v39];
  v18 = objc_alloc_init(AMSPromise);
  v19 = AMSLogKey();
  objc_initWeak(&location, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001D7840;
  v30[3] = &unk_100254D90;
  v20 = v19;
  v31 = v20;
  v21 = v15;
  v32 = v21;
  v22 = v16;
  v33 = v22;
  v23 = v17;
  v34 = v23;
  v24 = v14;
  v35 = v24;
  objc_copyWeak(&v37, &location);
  v25 = v18;
  v36 = v25;
  [v7 setFetchRecordZoneChangesCompletionBlock:v30];
  [(CKDatabase *)self addOperation:v7];
  v26 = [v25 catchWithBlock:&stru_100254DB0];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  return v26;
}

- (BOOL)_handleError:(id)a3 andErrors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self;
  v29 = v6;
  v9 = [objc_opt_class() _zoneIdentifiersWithExpiredTokensFrom:v6 andErrors:v7];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v42 count:16];
  v11 = v10;
  if (v10)
  {
    v26 = v7;
    v12 = *v31;
    v13 = &AMSAccountMediaTypeAppStore_ptr;
    v25 = v10;
    v28 = v8;
    v27 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = [v13[51] sharedAccountsDaemonConfig];
        if (!v16)
        {
          v16 = [v13[51] sharedConfig];
        }

        v17 = [v16 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v11;
          v19 = v9;
          v20 = objc_opt_class();
          v21 = AMSLogKey();
          AMSHashIfNeeded();
          v23 = v22 = v13;
          *buf = 138544130;
          v35 = v20;
          v9 = v19;
          v11 = v18;
          v36 = 2114;
          v37 = v21;
          v38 = 2114;
          v39 = v15;
          v40 = 2114;
          v41 = v23;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Change Token Expired for zone %{public}@, removing. error = %{public}@", buf, 0x2Au);

          v13 = v22;
          v12 = v27;
          v8 = v28;
        }

        [(CKDatabase *)v8 persistChangedRecordsChangeToken:0 forRecordZoneIdentifier:v15];
        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v11);

    [(CKDatabase *)v8 persistChangedRecordZonesChangeToken:0];
    v11 = v25;
    v7 = v26;
  }

  else
  {
  }

  return v11 != 0;
}

+ (id)_zoneIdentifiersWithExpiredTokensFrom:(id)a3 andErrors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet set];
  v30 = v7;
  v9 = [v7 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v12 = v11;

  if (v6)
  {
    v13 = [[CKRecordZoneID alloc] initWithZoneName:@"not_a_real_zone_name" ownerName:@"fake_owner"];
    [v12 setObject:v6 forKeyedSubscript:v13];
  }

  v31 = v6;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v12 allKeys];
  v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v34)
  {
    v33 = *v40;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = v12;
        v17 = [v12 objectForKeyedSubscript:v15];
        if ([v17 amsd_isCKChangeTokenExpiredError])
        {
          [v8 addObject:v15];
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v18 = [v17 underlyingErrors];
        v19 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v36;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v36 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [a1 _zoneIdentifiersWithExpiredTokensFrom:*(*(&v35 + 1) + 8 * j) andErrors:0];
              [v8 unionSet:v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v20);
        }

        if ([v17 amsd_isCKPartialFailureError])
        {
          v24 = [v17 userInfo];
          v25 = [v24 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v27 = [v26 ams_filterUsingTest:&stru_100254DF0];

          v28 = [a1 _zoneIdentifiersWithExpiredTokensFrom:0 andErrors:v27];
          [v8 unionSet:v28];
        }

        v12 = v16;
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v34);
  }

  return v8;
}

+ (id)_fetchChangeTokenWithDatabaseScope:(int64_t)a3
{
  v5 = objc_alloc_init(AMSTokenStorage);
  v6 = [(AMSTokenStorage *)v5 loadWithName:@"AMSCloudKitDatabaseChangeTokens"];
  v7 = [a1 _stringForDatabaseScope:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v17 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v17];
    v10 = v17;
    if (!v9)
    {
      v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v13 = AMSLogKey();
        v14 = AMSHashIfNeeded();
        *buf = 138544130;
        v19 = v16;
        v20 = 2114;
        v21 = v13;
        v22 = 2048;
        v23 = a3;
        v24 = 2114;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to unarchive a database change token. databaseScope = %ld | error = %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_fetchChangeTokenWithDatabaseScope:(int64_t)a3 recordZoneName:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(AMSTokenStorage);
  v8 = [(AMSTokenStorage *)v7 loadWithName:@"AMSCloudKitRecordZoneChangeTokens"];
  v9 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1;
    v12 = a3;
    v13 = v7;
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    AMSHashIfNeeded();
    v16 = v30 = v6;
    v17 = AMSHashIfNeeded();
    *buf = 138544386;
    v34 = v14;
    v7 = v13;
    a3 = v12;
    a1 = v11;
    v35 = 2114;
    v36 = v15;
    v37 = 2048;
    v38 = a3;
    v39 = 2114;
    v40 = v16;
    v41 = 2114;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found change token. databaseScope = %ld | zoneName = %{public}@ | changeTokens = %{public}@", buf, 0x34u);

    v6 = v30;
  }

  v18 = [a1 _changeTokenKeyForDatabaseScope:a3 recordZoneName:v6];
  v19 = [v8 objectForKeyedSubscript:v18];

  if (v19)
  {
    v32 = 0;
    v20 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v19 error:&v32];
    v21 = v32;
    if (!v20)
    {
      v29 = v7;
      v31 = v6;
      v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v24 = AMSLogKey();
        v25 = AMSHashIfNeeded();
        v26 = AMSHashIfNeeded();
        *buf = 138544386;
        v34 = v28;
        v35 = 2114;
        v36 = v24;
        v37 = 2048;
        v38 = a3;
        v39 = 2114;
        v40 = v25;
        v41 = 2114;
        v42 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to unarchive a record zone change token. databaseScope = %ld | zoneName = %{public}@ | error = %{public}@", buf, 0x34u);
      }

      v7 = v29;
      v6 = v31;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)_stringForDatabaseScope:(int64_t)a3
{
  v3 = @"private";
  if (a3 == 1)
  {
    v3 = @"public";
  }

  if (a3 == 3)
  {
    return @"shared";
  }

  else
  {
    return v3;
  }
}

@end