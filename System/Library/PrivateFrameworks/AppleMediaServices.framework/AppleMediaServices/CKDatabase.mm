@interface CKDatabase
+ (id)_changeTokenKeyForDatabaseScope:(int64_t)scope recordZoneName:(id)name;
+ (id)_fetchChangeTokenWithDatabaseScope:(int64_t)scope;
+ (id)_fetchChangeTokenWithDatabaseScope:(int64_t)scope recordZoneName:(id)name;
+ (id)_stringForDatabaseScope:(int64_t)scope;
+ (id)_stringForQualityOfService:(int64_t)service;
- (id)_fetchChangedRecordZonesWithServerChangeToken:(id)token;
- (id)_fetchChangedRecordsInRecordZonesWithWithRecordZoneIDs:(id)ds changeTokens:(id)tokens;
- (id)_subscribeWithIdentifier:(id)identifier attempt:(unint64_t)attempt;
- (id)createRecordWithRecordName:(id)name recordType:(id)type recordZone:(id)zone;
- (id)createRecordZoneWithRecordZoneName:(id)name;
- (id)deleteRecordZonesWithRecordZoneIdentifiers:(id)identifiers;
- (id)fetchChangedRecordZones;
- (id)fetchChangedRecordsInRecordZonesWithRecordZoneIdentifiers:(id)identifiers;
- (id)fetchRecordWithName:(id)name zoneIdentifier:(id)identifier qualityOfService:(int64_t)service;
- (id)fetchRecordWithRecordIdentifier:(id)identifier qualityOfService:(int64_t)service;
- (id)fetchRecordZonesWithQualityOfService:(int64_t)service;
- (id)saveRecord:(id)record;
- (id)saveRecordZone:(id)zone;
- (id)shareForRecordZoneIdentifier:(id)identifier;
- (unint64_t)type;
- (void)_logFaultIfExcessiveChangeTokens:(id)tokens;
- (void)persistChangedRecordZonesChangeToken:(id)token;
- (void)persistChangedRecordsChangeToken:(id)token forRecordZoneIdentifier:(id)identifier;
@end

@implementation CKDatabase

- (unint64_t)type
{
  databaseScope = [(CKDatabase *)self databaseScope];
  if (databaseScope == CKDatabaseScopeShared)
  {
    return 2;
  }

  else
  {
    return databaseScope == CKDatabaseScopePublic;
  }
}

- (id)createRecordWithRecordName:(id)name recordType:(id)type recordZone:(id)zone
{
  zoneCopy = zone;
  typeCopy = type;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = zoneCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = [CKRecordID alloc];
  zoneID = [v10 zoneID];
  v13 = [v11 initWithRecordName:nameCopy zoneID:zoneID];

  v14 = [[CKRecord alloc] initWithRecordType:typeCopy recordID:v13];

  return v14;
}

- (id)createRecordZoneWithRecordZoneName:(id)name
{
  nameCopy = name;
  v4 = [[CKRecordZone alloc] initWithZoneName:nameCopy];

  return v4;
}

- (id)deleteRecordZonesWithRecordZoneIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = identifiersCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(AMSMutablePromise);
  v7 = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:0 recordZoneIDsToDelete:v5];
  [v7 setQualityOfService:17];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100095784;
  v11[3] = &unk_1002B2948;
  v12 = v6;
  v8 = v6;
  [v7 setModifyRecordZonesCompletionBlock:v11];
  [(CKDatabase *)self addOperation:v7];
  v9 = [v8 catchWithBlock:&stru_1002B29A8];

  return v9;
}

- (id)fetchChangedRecordsInRecordZonesWithRecordZoneIdentifiers:(id)identifiers
{
  v4 = [identifiers ams_mapWithTransformIgnoresNil:&stru_1002B29E8];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000959F0;
  v8[3] = &unk_1002B2A10;
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
  v8[2] = sub_100095B78;
  v8[3] = &unk_1002B1530;
  v8[4] = self;
  v5 = [v4 catchWithBlock:v8];

  v6 = [v5 catchWithBlock:&stru_1002B2A30];

  return v6;
}

- (id)fetchRecordWithName:(id)name zoneIdentifier:(id)identifier qualityOfService:(int64_t)service
{
  identifierCopy = identifier;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = identifierCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = [[CKRecordID alloc] initWithRecordName:nameCopy zoneID:v10];
  v12 = [(CKDatabase *)self fetchRecordWithRecordIdentifier:v11 qualityOfService:service];

  return v12;
}

- (id)fetchRecordWithRecordIdentifier:(id)identifier qualityOfService:(int64_t)service
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = identifierCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    AMSLogKey();
    v25 = identifierCopy;
    v13 = v12 = service;
    v14 = NSStringFromSelector(a2);
    v15 = AMSHashIfNeeded();
    v16 = [objc_opt_class() _stringForQualityOfService:v12];
    *buf = 138544386;
    v31 = v11;
    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = v14;
    v36 = 2114;
    v37 = v15;
    v38 = 2114;
    v39 = v16;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing operation: %{public}@  | database: %{public}@ | Quality of Service: %{public}@", buf, 0x34u);

    service = v12;
    identifierCopy = v25;
  }

  v17 = objc_alloc_init(AMSMutablePromise);
  v18 = [CKFetchRecordsOperation alloc];
  v29 = v8;
  v19 = [NSArray arrayWithObjects:&v29 count:1];
  v20 = [v18 initWithRecordIDs:v19];

  [v20 setQualityOfService:service];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100096028;
  v26[3] = &unk_1002B2A58;
  v27 = v8;
  v28 = v17;
  v21 = v17;
  v22 = v8;
  [v20 setFetchRecordsCompletionBlock:v26];
  [(CKDatabase *)self addOperation:v20];
  v23 = [v21 catchWithBlock:&stru_1002B2A78];

  return v23;
}

- (id)fetchRecordZonesWithQualityOfService:(int64_t)service
{
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = NSStringFromSelector(a2);
    v11 = AMSHashIfNeeded();
    v12 = [objc_opt_class() _stringForQualityOfService:service];
    *buf = 138544386;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing operation: %{public}@  | database: %{public}@ | Quality of Service: %{public}@", buf, 0x34u);
  }

  v13 = objc_alloc_init(AMSMutablePromise);
  v14 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
  [v14 setQualityOfService:service];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000964A8;
  v19[3] = &unk_1002B2AA0;
  v15 = v13;
  v20 = v15;
  [v14 setFetchRecordZonesCompletionBlock:v19];
  [(CKDatabase *)self addOperation:v14];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000965D8;
  v18[3] = &unk_1002B2AF0;
  v18[4] = self;
  [v15 addSuccessBlock:v18];
  v16 = v15;

  return v15;
}

- (void)persistChangedRecordZonesChangeToken:(id)token
{
  tokenCopy = token;
  v5 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  v6 = [AMSStorage _valueForKey:@"AMSDCloudKitDatabaseChangeTokens"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = &__NSDictionary0__struct;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  v10 = [v9 mutableCopy];
  if (tokenCopy)
  {
    v22 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v22];
    v12 = v22;
    if (!v11)
    {
      v13 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = AMSLogKey();
        v15 = AMSHashIfNeeded();
        v16 = AMSHashIfNeeded();
        *buf = 138544130;
        v24 = v20;
        v25 = 2114;
        v26 = v21;
        v27 = 2114;
        v28 = v15;
        v17 = v15;
        v29 = 2114;
        v30 = v16;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to archive a database change token. database = %{public}@ | error = %{public}@", buf, 0x2Au);

        v5 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = [objc_opt_class() _stringForDatabaseScope:{-[CKDatabase scope](self, "scope")}];
  [v10 setObject:v11 forKeyedSubscript:v19];

  if (([v9 isEqualToDictionary:v10] & 1) == 0)
  {
    [v5[116] _setValue:v10 forKey:@"AMSDCloudKitDatabaseChangeTokens"];
  }
}

- (void)persistChangedRecordsChangeToken:(id)token forRecordZoneIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = AMSHashIfNeeded();
    *buf = 138544130;
    v35 = v10;
    v36 = 2114;
    v37 = v11;
    v38 = 2112;
    v39 = tokenCopy;
    v40 = 2114;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting a change token. changeToken = %@ | zoneIdentifier = %{public}@", buf, 0x2Au);
  }

  v13 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  v14 = [AMSStorage _valueForKey:@"AMSDCloudKitRecordZoneChangeTokens"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = &__NSDictionary0__struct;
  if (v15)
  {
    v16 = v15;
  }

  v17 = v16;

  v18 = [v17 mutableCopy];
  v19 = objc_opt_class();
  scope = [(CKDatabase *)self scope];
  name = [identifierCopy name];
  v22 = [v19 _changeTokenKeyForDatabaseScope:scope recordZoneName:name];

  if (tokenCopy)
  {
    v33 = 0;
    v23 = [NSKeyedArchiver archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v33];
    v24 = v33;
    if (!v23)
    {
      v25 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v25)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v25 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v32 = AMSLogKey();
        scope2 = [(CKDatabase *)self scope];
        v31 = AMSHashIfNeeded();
        v28 = AMSHashIfNeeded();
        *buf = 138544386;
        v35 = v30;
        v36 = 2114;
        v37 = v32;
        v38 = 2048;
        v39 = scope2;
        v40 = 2114;
        v41 = v31;
        v42 = 2114;
        v43 = v28;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to archive a record zone change token. databaseScope = %ld | zoneName = %{public}@ | error = %{public}@", buf, 0x34u);
      }

      v13 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    }

    [v18 setObject:v23 forKeyedSubscript:{v22, v28}];
  }

  else
  {
    [v18 removeObjectForKey:v22];
  }

  if (([v17 isEqualToDictionary:v18] & 1) == 0)
  {
    [v13[116] _setValue:v18 forKey:@"AMSDCloudKitRecordZoneChangeTokens"];
    v27 = [v18 copy];
    [(CKDatabase *)self _logFaultIfExcessiveChangeTokens:v27];
  }
}

- (void)_logFaultIfExcessiveChangeTokens:(id)tokens
{
  allValues = [tokens allValues];
  v4 = [allValues count];

  if (v4 >= 0xC9)
  {
    v5 = +[AMSUnitTests isRunningUnitTests];
    v6 = +[AMSLogConfig sharedConfig];
    v7 = v6;
    if (v5)
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543362;
        v11 = objc_opt_class();
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: AMSStorage database grown too big when inserting record zone change tokens.", &v10, 0xCu);
      }

      v7 = +[NSNotificationCenter defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedConfig];
      [v7 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v10 = 138543362;
        v11 = objc_opt_class();
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@: AMSStorage database grown too big when inserting record zone change tokens.", &v10, 0xCu);
      }
    }
  }
}

- (id)saveRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = recordCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(AMSMutablePromise);
  v7 = [CKModifyRecordsOperation alloc];
  v15 = v5;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [v7 initWithRecordsToSave:v8 recordIDsToDelete:0];

  [v9 setQualityOfService:17];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100097074;
  v13[3] = &unk_1002B2948;
  v14 = v6;
  v10 = v6;
  [v9 setModifyRecordsCompletionBlock:v13];
  [(CKDatabase *)self addOperation:v9];
  v11 = [v10 catchWithBlock:&stru_1002B2B10];

  return v11;
}

- (id)saveRecordZone:(id)zone
{
  zoneCopy = zone;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = zoneCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(AMSMutablePromise);
  v7 = [CKModifyRecordZonesOperation alloc];
  v15 = v5;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [v7 initWithRecordZonesToSave:v8 recordZoneIDsToDelete:0];

  [v9 setQualityOfService:17];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100097358;
  v13[3] = &unk_1002B2948;
  v14 = v6;
  v10 = v6;
  [v9 setModifyRecordZonesCompletionBlock:v13];
  [(CKDatabase *)self addOperation:v9];
  v11 = [v10 catchWithBlock:&stru_1002B2B30];

  return v11;
}

- (id)shareForRecordZoneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = identifierCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[CKShare alloc] initWithRecordZoneID:v4];

  return v5;
}

- (id)_subscribeWithIdentifier:(id)identifier attempt:(unint64_t)attempt
{
  identifierCopy = identifier;
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = AMSHashIfNeeded();
    *buf = 138543874;
    v29 = v9;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting up a database subscription. database = %{public}@", buf, 0x20u);
  }

  v12 = objc_alloc_init(CKNotificationInfo);
  [v12 setShouldSendContentAvailable:1];
  v13 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:identifierCopy];
  [v13 setNotificationInfo:v12];
  v14 = objc_alloc_init(AMSMutablePromise);
  v15 = [CKModifySubscriptionsOperation alloc];
  v27 = v13;
  v16 = [NSArray arrayWithObjects:&v27 count:1];
  v17 = [v15 initWithSubscriptionsToSave:v16 subscriptionIDsToDelete:0];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100097804;
  v25[3] = &unk_1002B2948;
  v26 = v14;
  v18 = v14;
  [v17 setModifySubscriptionsCompletionBlock:v25];
  [(CKDatabase *)self addOperation:v17];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000978D8;
  v22[3] = &unk_1002B02C0;
  v23 = identifierCopy;
  attemptCopy = attempt;
  v22[4] = self;
  v19 = identifierCopy;
  v20 = [v18 continueWithBlock:v22];

  return v20;
}

+ (id)_changeTokenKeyForDatabaseScope:(int64_t)scope recordZoneName:(id)name
{
  nameCopy = name;
  v7 = [self _stringForDatabaseScope:scope];
  nameCopy = [NSString stringWithFormat:@"%@:%@", v7, nameCopy];

  return nameCopy;
}

- (id)_fetchChangedRecordZonesWithServerChangeToken:(id)token
{
  tokenCopy = token;
  v5 = [[CKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:tokenCopy];

  [v5 setQualityOfService:17];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10009804C;
  v22[3] = &unk_1002B2B58;
  v8 = v6;
  v23 = v8;
  [v5 setRecordZoneWithIDChangedBlock:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100098058;
  v20[3] = &unk_1002B2B58;
  v9 = v7;
  v21 = v9;
  [v5 setRecordZoneWithIDWasDeletedBlock:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100098064;
  v16[3] = &unk_1002B2B80;
  v10 = objc_alloc_init(AMSMutablePromise);
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

- (id)_fetchChangedRecordsInRecordZonesWithWithRecordZoneIDs:(id)ds changeTokens:(id)tokens
{
  dsCopy = ds;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000984FC;
  v48[3] = &unk_1002B2A10;
  tokensCopy = tokens;
  v49 = tokensCopy;
  v28 = [dsCopy ams_invertedDictionaryUsingTransform:v48];
  v7 = [[CKFetchRecordZoneChangesOperation alloc] initWithRecordZoneIDs:dsCopy configurationsByRecordZoneID:v28];
  [v7 setQualityOfService:17];
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = objc_alloc_init(NSMutableDictionary);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10009857C;
  v46[3] = &unk_1002B2BA8;
  v46[4] = self;
  v12 = v8;
  v47 = v12;
  [v7 setRecordWasChangedBlock:v46];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000987BC;
  v44[3] = &unk_1002B2BD0;
  v13 = v9;
  v45 = v13;
  [v7 setRecordWithIDWasDeletedBlock:v44];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10009887C;
  v39[3] = &unk_1002B2BF8;
  v14 = v11;
  v40 = v14;
  v15 = v12;
  v41 = v15;
  v16 = v13;
  v42 = v16;
  v17 = v10;
  v43 = v17;
  [v7 setRecordZoneFetchCompletionBlock:v39];
  v18 = objc_alloc_init(AMSMutablePromise);
  v19 = AMSLogKey();
  objc_initWeak(&location, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10009892C;
  v30[3] = &unk_1002B2C60;
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
  v26 = [v25 catchWithBlock:&stru_1002B2C80];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  return v26;
}

+ (id)_fetchChangeTokenWithDatabaseScope:(int64_t)scope
{
  v5 = [AMSStorage _valueForKey:@"AMSDCloudKitDatabaseChangeTokens"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [self _stringForDatabaseScope:scope];
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

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v15 = AMSHashIfNeeded();
        *buf = 138544130;
        v19 = v13;
        v20 = 2114;
        v21 = v14;
        v22 = 2048;
        scopeCopy = scope;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to unarchive a database change token. databaseScope = %ld | error = %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_fetchChangeTokenWithDatabaseScope:(int64_t)scope recordZoneName:(id)name
{
  nameCopy = name;
  v7 = [AMSStorage _valueForKey:@"AMSDCloudKitRecordZoneChangeTokens"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [self _changeTokenKeyForDatabaseScope:scope recordZoneName:nameCopy];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v20 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v20];
    v12 = v20;
    if (!v11)
    {
      v13 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v15 = AMSLogKey();
        v18 = AMSHashIfNeeded();
        v16 = AMSHashIfNeeded();
        *buf = 138544386;
        v22 = v19;
        v23 = 2114;
        v24 = v15;
        v25 = 2048;
        scopeCopy = scope;
        v27 = 2114;
        v28 = v18;
        v29 = 2114;
        v30 = v16;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to unarchive a record zone change token. databaseScope = %ld | zoneName = %{public}@ | error = %{public}@", buf, 0x34u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_stringForDatabaseScope:(int64_t)scope
{
  v3 = @"private";
  if (scope == 1)
  {
    v3 = @"public";
  }

  if (scope == 3)
  {
    return @"shared";
  }

  else
  {
    return v3;
  }
}

+ (id)_stringForQualityOfService:(int64_t)service
{
  if (service <= 16)
  {
    if (service == -1)
    {
      return @"Default";
    }

    if (service == 9)
    {
      return @"Background";
    }
  }

  else
  {
    switch(service)
    {
      case 17:
        return @"Utility";
      case 25:
        return @"User Initiated";
      case 33:
        return @"User Interactive";
    }
  }

  return @"Unknown";
}

@end