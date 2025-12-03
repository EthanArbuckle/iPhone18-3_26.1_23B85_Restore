@interface AMSDHomeManager
+ (id)homeIdentifierForRecord:(id)record;
+ (id)homeIdentifierForRecordZone:(id)zone inDatabase:(id)database;
+ (id)homeUserIdentifierForRecord:(id)record;
+ (id)homeUserIdentifierForRecordZone:(id)zone inDatabase:(id)database;
+ (id)identifiersForRecord:(id)record;
+ (id)identifiersForRecordZone:(id)zone inDatabase:(id)database;
+ (id)identifiersForRecordZone:(id)zone inDatabase:(id)database qualityOfService:(int64_t)service;
+ (unint64_t)multiUserStatusForHomeUser:(id)user inHome:(id)home;
- (AMSDHomeManager)initWithDataSource:(id)source;
- (AMSPromise)allHomes;
- (id)homeForRecord:(id)record;
- (id)homeForRecordZone:(id)zone inDatabase:(id)database;
- (id)homeWithHomeIdentifier:(id)identifier;
- (id)sendCloudShare:(id)share inContainer:(id)container toOwnerOfHome:(id)home;
- (id)settingForKeyPath:(id)path;
- (id)settingForKeyPath:(id)path user:(id)user home:(id)home;
- (void)registerToAcceptCloudSharesForContainers:(id)containers;
- (void)teardownMultiUser;
@end

@implementation AMSDHomeManager

- (id)homeForRecord:(id)record
{
  recordCopy = record;
  type = [recordCopy type];
  v6 = [type isEqualToString:@"AMSHomeParticipant"];

  if ((v6 & 1) == 0)
  {
    v7 = AMSError();
    v8 = [AMSPromise promiseWithError:v7];
    goto LABEL_5;
  }

  v7 = [objc_opt_class() homeIdentifierForRecord:recordCopy];
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

- (id)homeForRecordZone:(id)zone inDatabase:(id)database
{
  databaseCopy = database;
  identifier = [zone identifier];
  v8 = [databaseCopy fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:identifier];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000659B0;
  v11[3] = &unk_1002B0C28;
  v11[4] = self;
  v9 = [v8 thenWithBlock:v11];

  return v9;
}

+ (id)homeIdentifierForRecord:(id)record
{
  v3 = [record fieldForKey:@"AMSHomeParticipant_HomeIdentifier"];
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

+ (id)homeIdentifierForRecordZone:(id)zone inDatabase:(id)database
{
  databaseCopy = database;
  identifier = [zone identifier];
  v8 = [databaseCopy fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:identifier];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100065B4C;
  v11[3] = &unk_1002B0FD0;
  v11[4] = self;
  v9 = [v8 thenWithBlock:v11];

  return v9;
}

+ (id)homeUserIdentifierForRecord:(id)record
{
  v3 = [record fieldForKey:@"AMSHomeParticipant_HomeUserIdentifier"];
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

+ (id)homeUserIdentifierForRecordZone:(id)zone inDatabase:(id)database
{
  databaseCopy = database;
  identifier = [zone identifier];
  v8 = [databaseCopy fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:identifier];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100065DC0;
  v11[3] = &unk_1002B0FD0;
  v11[4] = self;
  v9 = [v8 thenWithBlock:v11];

  return v9;
}

+ (id)identifiersForRecord:(id)record
{
  recordCopy = record;
  v5 = [self homeIdentifierForRecord:recordCopy];
  v6 = [self homeUserIdentifierForRecord:recordCopy];

  v7 = 0;
  if (v5 && v6)
  {
    v7 = [[AMSPair alloc] initWithFirst:v5 second:v6];
  }

  return v7;
}

+ (id)identifiersForRecordZone:(id)zone inDatabase:(id)database
{
  databaseCopy = database;
  zoneCopy = zone;
  v7 = [objc_opt_class() identifiersForRecordZone:zoneCopy inDatabase:databaseCopy qualityOfService:9];

  return v7;
}

+ (id)identifiersForRecordZone:(id)zone inDatabase:(id)database qualityOfService:(int64_t)service
{
  databaseCopy = database;
  identifier = [zone identifier];
  v10 = [databaseCopy fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:identifier qualityOfService:service];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000660B8;
  v13[3] = &unk_1002B0FD0;
  v13[4] = self;
  v11 = [v10 thenWithBlock:v13];

  return v11;
}

+ (unint64_t)multiUserStatusForHomeUser:(id)user inHome:(id)home
{
  userCopy = user;
  homeCopy = home;
  if (([homeCopy isMultiUserEnabled] & 1) == 0)
  {
    v12 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Multi-user isn't enabled. home = %{public}@ | user = %{public}@", &v19, 0x2Au);
    }

    goto LABEL_13;
  }

  identifier = [userCopy identifier];
  v8 = [homeCopy isRestrictedGuestUserIdentifier:identifier];

  if (v8)
  {
LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  v9 = [homeCopy mediaProfileEnabledForUser:userCopy];
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

- (AMSDHomeManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = AMSDHomeManager;
  v6 = [(AMSDHomeManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (void)teardownMultiUser
{
  dataSource = [(AMSDHomeManager *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dataSource2 = [(AMSDHomeManager *)self dataSource];
    [dataSource2 teardownMultiUser];
  }

  [(AMSDHomeManager *)self setDataSource:0];
}

- (AMSPromise)allHomes
{
  dataSource = [(AMSDHomeManager *)self dataSource];
  allHomes = [dataSource allHomes];
  v4 = [allHomes thenWithBlock:&stru_1002B1010];

  return v4;
}

- (id)homeWithHomeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allHomes = [(AMSDHomeManager *)self allHomes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000665A8;
  v9[3] = &unk_1002B0310;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [allHomes thenWithBlock:v9];

  return v7;
}

- (void)registerToAcceptCloudSharesForContainers:(id)containers
{
  containersCopy = containers;
  dataSource = [(AMSDHomeManager *)self dataSource];
  [dataSource registerToAcceptCloudSharesForContainers:containersCopy];
}

- (id)sendCloudShare:(id)share inContainer:(id)container toOwnerOfHome:(id)home
{
  homeCopy = home;
  containerCopy = container;
  shareCopy = share;
  dataSource = [(AMSDHomeManager *)self dataSource];
  v12 = [dataSource sendCloudShare:shareCopy inContainer:containerCopy toOwnerOfHome:homeCopy];

  return v12;
}

- (id)settingForKeyPath:(id)path
{
  pathCopy = path;
  dataSource = [(AMSDHomeManager *)self dataSource];
  v6 = [dataSource settingForKeyPath:pathCopy];

  return v6;
}

- (id)settingForKeyPath:(id)path user:(id)user home:(id)home
{
  homeCopy = home;
  userCopy = user;
  pathCopy = path;
  dataSource = [(AMSDHomeManager *)self dataSource];
  v12 = [dataSource settingForKeyPath:pathCopy user:userCopy home:homeCopy];

  return v12;
}

@end