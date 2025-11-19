@interface AMSDHomeKitHome
- (AMSDHomeKitHome)initWithHome:(id)a3 dataSource:(id)a4;
- (AMSDHomeUser)currentUser;
- (AMSDHomeUser)owner;
- (BOOL)currentUserNeedsTokenRepair;
- (BOOL)isCurrentDeviceAccessory;
- (BOOL)isCurrentUserOwner;
- (BOOL)isCurrentUserRestrictedGuest;
- (BOOL)isMultiUserEnabled;
- (BOOL)isPrimary;
- (BOOL)isRestrictedGuestUserIdentifier:(id)a3;
- (NSArray)users;
- (NSString)hashedDescription;
- (NSString)name;
- (NSUUID)identifier;
- (id)listeningHistoryUpdateEnabledForUser:(id)a3;
- (id)userWithIdentifier:(id)a3;
- (unint64_t)iTunesLibraryEnabledForUser:(id)a3;
- (unint64_t)mediaProfileEnabledForUser:(id)a3;
@end

@implementation AMSDHomeKitHome

- (AMSDHomeKitHome)initWithHome:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSDHomeKitHome;
  v9 = [(AMSDHomeKitHome *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a4);
    objc_storeStrong(&v10->_home, a3);
  }

  return v10;
}

- (NSString)hashedDescription
{
  v16 = objc_opt_class();
  v18 = [(AMSDHomeKitHome *)self name];
  v3 = AMSHashIfNeeded();
  v17 = [(AMSDHomeKitHome *)self identifier];
  v4 = AMSHashIfNeeded();
  if ([(AMSDHomeKitHome *)self isPrimary])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v6 = [(AMSDHomeKitHome *)self owner];
  v7 = [v6 identifier];
  v8 = AMSHashIfNeeded();
  v9 = [(AMSDHomeKitHome *)self currentUser];
  v10 = [v9 identifier];
  v11 = AMSHashIfNeeded();
  v12 = [(AMSDHomeKitHome *)self isCurrentUserOwner];
  v13 = @"true";
  if (!v12)
  {
    v13 = @"false";
  }

  v14 = [NSString stringWithFormat:@"<%@: %p name = %@ | homeIdentifier = %@ | isPrimary = %@ | owner = %@ | currentUser = %@ | isCurrentUserOwner = %@>", v16, self, v3, v4, v5, v8, v11, v13];

  return v14;
}

- (BOOL)isCurrentDeviceAccessory
{
  v3 = [(AMSDHomeKitHome *)self dataSource];
  v4 = [(AMSDHomeKitHome *)self home];
  v5 = [v3 currentDeviceIsAccessoryForHome:v4];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isCurrentUserOwner
{
  v3 = [(AMSDHomeKitHome *)self currentUser];
  v4 = [v3 identifier];
  v5 = [(AMSDHomeKitHome *)self owner];
  v6 = [v5 identifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

- (AMSDHomeUser)currentUser
{
  v3 = [AMSDHomeKitHomeUser alloc];
  v4 = [(AMSDHomeKitHome *)self home];
  v5 = [v4 currentUser];
  v6 = [(AMSDHomeKitHomeUser *)v3 initWithUser:v5];

  return v6;
}

- (BOOL)currentUserNeedsTokenRepair
{
  v2 = [(AMSDHomeKitHome *)self home];
  v3 = [v2 currentUser];
  v4 = [v3 needsiTunesMultiUserRepair];

  return v4;
}

- (NSUUID)identifier
{
  v2 = [(AMSDHomeKitHome *)self home];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (BOOL)isPrimary
{
  v2 = [(AMSDHomeKitHome *)self home];
  v3 = [v2 isPrimary];

  return v3;
}

- (BOOL)isMultiUserEnabled
{
  v2 = [(AMSDHomeKitHome *)self home];
  v3 = [v2 isMultiUserEnabled];

  return v3;
}

- (NSString)name
{
  v2 = [(AMSDHomeKitHome *)self home];
  v3 = [v2 name];

  return v3;
}

- (AMSDHomeUser)owner
{
  v2 = [(AMSDHomeKitHome *)self home];
  v3 = [v2 owner];

  if (v3)
  {
    v4 = [[AMSDHomeKitHomeUser alloc] initWithUser:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)users
{
  v3 = [(AMSDHomeKitHome *)self dataSource];
  v4 = [(AMSDHomeKitHome *)self home];
  v5 = [v3 allUsersInHome:v4];
  v6 = [v5 ams_mapWithTransform:&stru_1002B0FB0];

  return v6;
}

- (BOOL)isRestrictedGuestUserIdentifier:(id)a3
{
  v4 = [(AMSDHomeKitHome *)self userWithIdentifier:a3];
  v5 = [(AMSDHomeKitHome *)self home];
  v6 = [v4 user];
  v7 = [v5 homeAccessControlForUser:v6];

  LOBYTE(v5) = [v7 isRestrictedGuest];
  return v5;
}

- (BOOL)isCurrentUserRestrictedGuest
{
  v2 = self;
  v3 = [(AMSDHomeKitHome *)self currentUser];
  v4 = [v3 identifier];
  LOBYTE(v2) = [(AMSDHomeKitHome *)v2 isRestrictedGuestUserIdentifier:v4];

  return v2;
}

- (unint64_t)iTunesLibraryEnabledForUser:(id)a3
{
  v4 = a3;
  v5 = [(AMSDHomeKitHome *)self dataSource];
  v6 = [(AMSDHomeKitHome *)self identifier];
  v7 = [v5 homeWithIdentifier:v6];
  v8 = [v7 resultWithError:0];

  v9 = [(AMSDHomeKitHome *)self dataSource];
  v10 = [v9 allUsersInHome:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10006496C;
  v20[3] = &unk_1002B0E90;
  v11 = v4;
  v21 = v11;
  v12 = [v10 ams_firstObjectPassingTest:v20];

  v13 = [(AMSDHomeKitHome *)self dataSource];
  v14 = [v13 iTunesLibraryEnabledForUser:v12 home:v8];

  if (!v14)
  {
    v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine if a user's media profile is enabled.", buf, 0x16u);
    }
  }

  return v14;
}

- (unint64_t)mediaProfileEnabledForUser:(id)a3
{
  v4 = a3;
  v5 = [(AMSDHomeKitHome *)self dataSource];
  v6 = [(AMSDHomeKitHome *)self identifier];
  v7 = [v5 homeWithIdentifier:v6];
  v8 = [v7 resultWithError:0];

  v9 = [(AMSDHomeKitHome *)self dataSource];
  v10 = [v9 allUsersInHome:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100064C08;
  v20[3] = &unk_1002B0E90;
  v11 = v4;
  v21 = v11;
  v12 = [v10 ams_firstObjectPassingTest:v20];

  v13 = [(AMSDHomeKitHome *)self dataSource];
  v14 = [v13 mediaProfileEnabledForUser:v12 home:v8];

  if (!v14)
  {
    v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine if a user's media profile is enabled.", buf, 0x16u);
    }
  }

  return v14;
}

- (id)userWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AMSDHomeKitHome *)self users];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100064E34;
  v9[3] = &unk_1002B0248;
  v10 = v4;
  v6 = v4;
  v7 = [v5 ams_firstObjectPassingTest:v9];

  return v7;
}

- (id)listeningHistoryUpdateEnabledForUser:(id)a3
{
  v4 = a3;
  v5 = [(AMSDHomeKitHome *)self dataSource];
  v6 = [(AMSDHomeKitHome *)self identifier];
  v7 = [v5 homeWithIdentifier:v6];
  v8 = [v7 resultWithError:0];

  v9 = [(AMSDHomeKitHome *)self dataSource];
  v10 = [v9 allUsersInHome:v8];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100064FE4;
  v16[3] = &unk_1002B0E90;
  v17 = v4;
  v11 = v4;
  v12 = [v10 ams_firstObjectPassingTest:v16];

  v13 = [(AMSDHomeKitHome *)self dataSource];
  v14 = [v13 listeningHistoryUpdateEnabledForUser:v12 home:v8];

  return v14;
}

@end