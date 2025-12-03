@interface AMSDHomeKitHome
- (AMSDHomeKitHome)initWithHome:(id)home dataSource:(id)source;
- (AMSDHomeUser)currentUser;
- (AMSDHomeUser)owner;
- (BOOL)currentUserNeedsTokenRepair;
- (BOOL)isCurrentDeviceAccessory;
- (BOOL)isCurrentUserOwner;
- (BOOL)isCurrentUserRestrictedGuest;
- (BOOL)isMultiUserEnabled;
- (BOOL)isPrimary;
- (BOOL)isRestrictedGuestUserIdentifier:(id)identifier;
- (NSArray)users;
- (NSString)hashedDescription;
- (NSString)name;
- (NSUUID)identifier;
- (id)listeningHistoryUpdateEnabledForUser:(id)user;
- (id)userWithIdentifier:(id)identifier;
- (unint64_t)iTunesLibraryEnabledForUser:(id)user;
- (unint64_t)mediaProfileEnabledForUser:(id)user;
@end

@implementation AMSDHomeKitHome

- (AMSDHomeKitHome)initWithHome:(id)home dataSource:(id)source
{
  homeCopy = home;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = AMSDHomeKitHome;
  v9 = [(AMSDHomeKitHome *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v10->_home, home);
  }

  return v10;
}

- (NSString)hashedDescription
{
  v16 = objc_opt_class();
  name = [(AMSDHomeKitHome *)self name];
  v3 = AMSHashIfNeeded();
  identifier = [(AMSDHomeKitHome *)self identifier];
  v4 = AMSHashIfNeeded();
  if ([(AMSDHomeKitHome *)self isPrimary])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  owner = [(AMSDHomeKitHome *)self owner];
  identifier2 = [owner identifier];
  v8 = AMSHashIfNeeded();
  currentUser = [(AMSDHomeKitHome *)self currentUser];
  identifier3 = [currentUser identifier];
  v11 = AMSHashIfNeeded();
  isCurrentUserOwner = [(AMSDHomeKitHome *)self isCurrentUserOwner];
  v13 = @"true";
  if (!isCurrentUserOwner)
  {
    v13 = @"false";
  }

  v14 = [NSString stringWithFormat:@"<%@: %p name = %@ | homeIdentifier = %@ | isPrimary = %@ | owner = %@ | currentUser = %@ | isCurrentUserOwner = %@>", v16, self, v3, v4, v5, v8, v11, v13];

  return v14;
}

- (BOOL)isCurrentDeviceAccessory
{
  dataSource = [(AMSDHomeKitHome *)self dataSource];
  home = [(AMSDHomeKitHome *)self home];
  v5 = [dataSource currentDeviceIsAccessoryForHome:home];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCurrentUserOwner
{
  currentUser = [(AMSDHomeKitHome *)self currentUser];
  identifier = [currentUser identifier];
  owner = [(AMSDHomeKitHome *)self owner];
  identifier2 = [owner identifier];
  v7 = [identifier isEqual:identifier2];

  return v7;
}

- (AMSDHomeUser)currentUser
{
  v3 = [AMSDHomeKitHomeUser alloc];
  home = [(AMSDHomeKitHome *)self home];
  currentUser = [home currentUser];
  v6 = [(AMSDHomeKitHomeUser *)v3 initWithUser:currentUser];

  return v6;
}

- (BOOL)currentUserNeedsTokenRepair
{
  home = [(AMSDHomeKitHome *)self home];
  currentUser = [home currentUser];
  needsiTunesMultiUserRepair = [currentUser needsiTunesMultiUserRepair];

  return needsiTunesMultiUserRepair;
}

- (NSUUID)identifier
{
  home = [(AMSDHomeKitHome *)self home];
  uniqueIdentifier = [home uniqueIdentifier];

  return uniqueIdentifier;
}

- (BOOL)isPrimary
{
  home = [(AMSDHomeKitHome *)self home];
  isPrimary = [home isPrimary];

  return isPrimary;
}

- (BOOL)isMultiUserEnabled
{
  home = [(AMSDHomeKitHome *)self home];
  isMultiUserEnabled = [home isMultiUserEnabled];

  return isMultiUserEnabled;
}

- (NSString)name
{
  home = [(AMSDHomeKitHome *)self home];
  name = [home name];

  return name;
}

- (AMSDHomeUser)owner
{
  home = [(AMSDHomeKitHome *)self home];
  owner = [home owner];

  if (owner)
  {
    v4 = [[AMSDHomeKitHomeUser alloc] initWithUser:owner];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)users
{
  dataSource = [(AMSDHomeKitHome *)self dataSource];
  home = [(AMSDHomeKitHome *)self home];
  v5 = [dataSource allUsersInHome:home];
  v6 = [v5 ams_mapWithTransform:&stru_1002B0FB0];

  return v6;
}

- (BOOL)isRestrictedGuestUserIdentifier:(id)identifier
{
  v4 = [(AMSDHomeKitHome *)self userWithIdentifier:identifier];
  home = [(AMSDHomeKitHome *)self home];
  user = [v4 user];
  v7 = [home homeAccessControlForUser:user];

  LOBYTE(home) = [v7 isRestrictedGuest];
  return home;
}

- (BOOL)isCurrentUserRestrictedGuest
{
  selfCopy = self;
  currentUser = [(AMSDHomeKitHome *)self currentUser];
  identifier = [currentUser identifier];
  LOBYTE(selfCopy) = [(AMSDHomeKitHome *)selfCopy isRestrictedGuestUserIdentifier:identifier];

  return selfCopy;
}

- (unint64_t)iTunesLibraryEnabledForUser:(id)user
{
  userCopy = user;
  dataSource = [(AMSDHomeKitHome *)self dataSource];
  identifier = [(AMSDHomeKitHome *)self identifier];
  v7 = [dataSource homeWithIdentifier:identifier];
  v8 = [v7 resultWithError:0];

  dataSource2 = [(AMSDHomeKitHome *)self dataSource];
  v10 = [dataSource2 allUsersInHome:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10006496C;
  v20[3] = &unk_1002B0E90;
  v11 = userCopy;
  v21 = v11;
  v12 = [v10 ams_firstObjectPassingTest:v20];

  dataSource3 = [(AMSDHomeKitHome *)self dataSource];
  v14 = [dataSource3 iTunesLibraryEnabledForUser:v12 home:v8];

  if (!v14)
  {
    v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine if a user's media profile is enabled.", buf, 0x16u);
    }
  }

  return v14;
}

- (unint64_t)mediaProfileEnabledForUser:(id)user
{
  userCopy = user;
  dataSource = [(AMSDHomeKitHome *)self dataSource];
  identifier = [(AMSDHomeKitHome *)self identifier];
  v7 = [dataSource homeWithIdentifier:identifier];
  v8 = [v7 resultWithError:0];

  dataSource2 = [(AMSDHomeKitHome *)self dataSource];
  v10 = [dataSource2 allUsersInHome:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100064C08;
  v20[3] = &unk_1002B0E90;
  v11 = userCopy;
  v21 = v11;
  v12 = [v10 ams_firstObjectPassingTest:v20];

  dataSource3 = [(AMSDHomeKitHome *)self dataSource];
  v14 = [dataSource3 mediaProfileEnabledForUser:v12 home:v8];

  if (!v14)
  {
    v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine if a user's media profile is enabled.", buf, 0x16u);
    }
  }

  return v14;
}

- (id)userWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  users = [(AMSDHomeKitHome *)self users];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100064E34;
  v9[3] = &unk_1002B0248;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [users ams_firstObjectPassingTest:v9];

  return v7;
}

- (id)listeningHistoryUpdateEnabledForUser:(id)user
{
  userCopy = user;
  dataSource = [(AMSDHomeKitHome *)self dataSource];
  identifier = [(AMSDHomeKitHome *)self identifier];
  v7 = [dataSource homeWithIdentifier:identifier];
  v8 = [v7 resultWithError:0];

  dataSource2 = [(AMSDHomeKitHome *)self dataSource];
  v10 = [dataSource2 allUsersInHome:v8];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100064FE4;
  v16[3] = &unk_1002B0E90;
  v17 = userCopy;
  v11 = userCopy;
  v12 = [v10 ams_firstObjectPassingTest:v16];

  dataSource3 = [(AMSDHomeKitHome *)self dataSource];
  v14 = [dataSource3 listeningHistoryUpdateEnabledForUser:v12 home:v8];

  return v14;
}

@end