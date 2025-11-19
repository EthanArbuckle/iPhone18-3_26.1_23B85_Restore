@interface AMSDHomeManager
+ (id)homeIdentifierForRecord:(id)a3;
+ (id)homeIdentifierForRecordZone:(id)a3 inDatabase:(id)a4;
+ (id)homeUserIdentifierForRecord:(id)a3;
+ (id)homeUserIdentifierForRecordZone:(id)a3 inDatabase:(id)a4;
+ (id)identifiersForRecord:(id)a3;
+ (id)identifiersForRecordZone:(id)a3 inDatabase:(id)a4;
+ (id)identifiersForRecordZone:(id)a3 inDatabase:(id)a4 qualityOfService:(int64_t)a5;
+ (unint64_t)multiUserStatusForHomeUser:(id)a3 inHome:(id)a4;
- (AMSDHomeManager)initWithDataSource:(id)a3;
- (AMSPromise)allHomes;
- (id)homeForRecord:(id)a3;
- (id)homeForRecordZone:(id)a3 inDatabase:(id)a4;
- (id)homeWithHomeIdentifier:(id)a3;
- (id)sendCloudShare:(id)a3 inContainer:(id)a4 toOwnerOfHome:(id)a5;
- (id)settingForKeyPath:(id)a3;
- (id)settingForKeyPath:(id)a3 user:(id)a4 home:(id)a5;
- (void)registerToAcceptCloudSharesForContainers:(id)a3;
- (void)teardownMultiUser;
@end

@implementation AMSDHomeManager

- (id)homeForRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"AMSHomeParticipant"];

  if ((v6 & 1) == 0)
  {
    v7 = AMSError();
    v8 = [AMSPromise promiseWithError:v7];
    goto LABEL_5;
  }

  v7 = [objc_opt_class() homeIdentifierForRecord:v4];
  if (v7)
  {
    v8 = [(AMSDHomeManager *)self homeWithHomeIdentifier:v7];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v11 = AMSError();
  v9 = [AMSPromise promiseWithError:v11];

LABEL_6:

  return v9;
}

- (id)homeForRecordZone:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [v6 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000659B0;
  v11[3] = &unk_1002B0C28;
  v11[4] = self;
  v9 = [v8 thenWithBlock:v11];

  return v9;
}

+ (id)homeIdentifierForRecord:(id)a3
{
  v3 = [a3 fieldForKey:@"AMSHomeParticipant_HomeIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [[NSUUID alloc] initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)homeIdentifierForRecordZone:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [v6 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100065B4C;
  v11[3] = &unk_1002B0FD0;
  v11[4] = a1;
  v9 = [v8 thenWithBlock:v11];

  return v9;
}

+ (id)homeUserIdentifierForRecord:(id)a3
{
  v3 = [a3 fieldForKey:@"AMSHomeParticipant_HomeUserIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [[NSUUID alloc] initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)homeUserIdentifierForRecordZone:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [v6 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100065DC0;
  v11[3] = &unk_1002B0FD0;
  v11[4] = a1;
  v9 = [v8 thenWithBlock:v11];

  return v9;
}

+ (id)identifiersForRecord:(id)a3
{
  v4 = a3;
  v5 = [a1 homeIdentifierForRecord:v4];
  v6 = [a1 homeUserIdentifierForRecord:v4];

  v7 = 0;
  if (v5 && v6)
  {
    v7 = [[AMSPair alloc] initWithFirst:v5 second:v6];
  }

  return v7;
}

+ (id)identifiersForRecordZone:(id)a3 inDatabase:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() identifiersForRecordZone:v6 inDatabase:v5 qualityOfService:9];

  return v7;
}

+ (id)identifiersForRecordZone:(id)a3 inDatabase:(id)a4 qualityOfService:(int64_t)a5
{
  v8 = a4;
  v9 = [a3 identifier];
  v10 = [v8 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v9 qualityOfService:a5];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000660B8;
  v13[3] = &unk_1002B0FD0;
  v13[4] = a1;
  v11 = [v10 thenWithBlock:v13];

  return v11;
}

+ (unint64_t)multiUserStatusForHomeUser:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isMultiUserEnabled] & 1) == 0)
  {
    v12 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSHashIfNeeded();
      v17 = AMSHashIfNeeded();
      v19 = 138544130;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Multi-user isn't enabled. home = %{public}@ | user = %{public}@", &v19, 0x2Au);
    }

    goto LABEL_13;
  }

  v7 = [v5 identifier];
  v8 = [v6 isRestrictedGuestUserIdentifier:v7];

  if (v8)
  {
LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  v9 = [v6 mediaProfileEnabledForUser:v5];
  v10 = 1;
  if (v9 == 2)
  {
    v10 = 2;
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (AMSDHomeManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSDHomeManager;
  v6 = [(AMSDHomeManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (void)teardownMultiUser
{
  v3 = [(AMSDHomeManager *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(AMSDHomeManager *)self dataSource];
    [v5 teardownMultiUser];
  }

  [(AMSDHomeManager *)self setDataSource:0];
}

- (AMSPromise)allHomes
{
  v2 = [(AMSDHomeManager *)self dataSource];
  v3 = [v2 allHomes];
  v4 = [v3 thenWithBlock:&stru_1002B1010];

  return v4;
}

- (id)homeWithHomeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AMSDHomeManager *)self allHomes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000665A8;
  v9[3] = &unk_1002B0310;
  v10 = v4;
  v6 = v4;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

- (void)registerToAcceptCloudSharesForContainers:(id)a3
{
  v4 = a3;
  v5 = [(AMSDHomeManager *)self dataSource];
  [v5 registerToAcceptCloudSharesForContainers:v4];
}

- (id)sendCloudShare:(id)a3 inContainer:(id)a4 toOwnerOfHome:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSDHomeManager *)self dataSource];
  v12 = [v11 sendCloudShare:v10 inContainer:v9 toOwnerOfHome:v8];

  return v12;
}

- (id)settingForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(AMSDHomeManager *)self dataSource];
  v6 = [v5 settingForKeyPath:v4];

  return v6;
}

- (id)settingForKeyPath:(id)a3 user:(id)a4 home:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSDHomeManager *)self dataSource];
  v12 = [v11 settingForKeyPath:v10 user:v9 home:v8];

  return v12;
}

@end