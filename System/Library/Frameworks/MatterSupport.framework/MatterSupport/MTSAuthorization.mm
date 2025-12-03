@interface MTSAuthorization
+ (BOOL)isDeveloperModeEnabled;
- (BOOL)allowsRestrictedCharacteristicsAccessViaDeveloperModeProfile;
- (BOOL)allowsRestrictedCharacteristicsAccessViaSkipDeveloperModeRestrictionProfile;
- (BOOL)isRestrictedCharacteristicsAccessAllowed;
- (MTSAuthorization)init;
- (MTSAuthorization)initWithServerProxy:(id)proxy;
@end

@implementation MTSAuthorization

- (BOOL)allowsRestrictedCharacteristicsAccessViaSkipDeveloperModeRestrictionProfile
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serverProxy = [(MTSAuthorization *)self serverProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __95__MTSAuthorization_allowsRestrictedCharacteristicsAccessViaSkipDeveloperModeRestrictionProfile__block_invoke;
  v4[3] = &unk_278AA1858;
  v4[4] = &v5;
  [serverProxy checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:v4];

  LOBYTE(serverProxy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return serverProxy;
}

- (BOOL)allowsRestrictedCharacteristicsAccessViaDeveloperModeProfile
{
  v7 = *MEMORY[0x277D85DE8];
  LODWORD(Int64) = [objc_opt_class() isDeveloperModeEnabled];
  if (Int64)
  {
    Int64 = CFPrefs_GetInt64();
    if (Int64)
    {
      serverProxy = [(MTSAuthorization *)self serverProxy];
      [serverProxy showRestrictedCharacteristicsAccessWarningAlert];

      LOBYTE(Int64) = 1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return Int64;
}

- (BOOL)isRestrictedCharacteristicsAccessAllowed
{
  if ([(MTSAuthorization *)self allowsRestrictedCharacteristicsAccessViaDeveloperModeProfile])
  {
    return 1;
  }

  return [(MTSAuthorization *)self allowsRestrictedCharacteristicsAccessViaSkipDeveloperModeRestrictionProfile];
}

- (MTSAuthorization)initWithServerProxy:(id)proxy
{
  proxyCopy = proxy;
  v8.receiver = self;
  v8.super_class = MTSAuthorization;
  v5 = [(MTSAuthorization *)&v8 init];
  serverProxy = v5->_serverProxy;
  v5->_serverProxy = proxyCopy;

  return v5;
}

- (MTSAuthorization)init
{
  v3 = objc_alloc_init(MTSXPCServerProxy);
  v4 = [(MTSAuthorization *)self initWithServerProxy:v3];

  return v4;
}

+ (BOOL)isDeveloperModeEnabled
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 8;
  v12 = 0;
  v3 = sysctlbyname("security.mac.amfi.developer_mode_status", &v12, &v11, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v8;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_239824000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received bad status from sysctl for developer mode check: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v5);
    result = 0;
  }

  else
  {
    result = v12 == 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

@end