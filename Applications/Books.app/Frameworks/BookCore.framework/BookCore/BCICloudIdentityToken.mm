@interface BCICloudIdentityToken
+ (id)tokenForCurrentIdentityIfICloudDriveEnabled;
- (BCICloudIdentityToken)initWithCurrentIdentity;
- (BCICloudIdentityToken)initWithToken:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_hashFor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromArchive:(id)a3;
@end

@implementation BCICloudIdentityToken

+ (id)tokenForCurrentIdentityIfICloudDriveEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isUserSignedInToiCloud];

  if ((v3 & 1) == 0)
  {
    v6 = BCUbiquityEnabledLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 0;
    v7 = "BCICloudIdentityToken: isUserSignedInToiCloud=NO. Returning nil";
    v8 = &v13;
LABEL_13:
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_14;
  }

  if (!+[BCSyncUserDefaults isICloudDriveSyncOptedIn])
  {
    v6 = BCUbiquityEnabledLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = 0;
    v7 = "BCICloudIdentityToken: isICloudDriveSyncOptedIn=NO. Returning nil";
    v8 = &v12;
    goto LABEL_13;
  }

  if (!+[BCSyncUserDefaults isGlobalICloudDriveSyncOptedIn])
  {
    v6 = BCUbiquityEnabledLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "BCICloudIdentityToken: isGlobalICloudDriveSyncOptedIn=NO. Returning nil";
      v8 = buf;
      goto LABEL_13;
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v4 = [[BCICloudIdentityToken alloc] initWithCurrentIdentity];
  v5 = BCUbiquityEnabledLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BCICloudIdentityToken: new token generated", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1E9D10(v6);
  }

LABEL_15:

  return v4;
}

- (BCICloudIdentityToken)initWithToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = BCICloudIdentityToken;
    v5 = [(BCICloudIdentityToken *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      token = v5->_token;
      v5->_token = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initFromArchive:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [(BCICloudIdentityToken *)self initWithToken:v5];
  return v6;
}

- (BCICloudIdentityToken)initWithCurrentIdentity
{
  v3 = +[BUAccountsProvider sharedProvider];
  v4 = [v3 iCloudIdentity];

  v5 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 141558274;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BCICloudIdentityToken: initWithCurrentIdentity: %{mask.hash}@", &v9, 0x16u);
  }

  v6 = [(BCICloudIdentityToken *)self _hashFor:v4];
  v7 = [(BCICloudIdentityToken *)self initWithToken:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(BCICloudIdentityToken *)self token];
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = [v6 token];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(BCICloudIdentityToken *)self token];
  v6 = [v4 initWithToken:v5];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BCICloudIdentityToken *)self token];
  v6 = [NSString stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (id)_hashFor:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 bu_md5UpperCase];

  return v4;
}

@end