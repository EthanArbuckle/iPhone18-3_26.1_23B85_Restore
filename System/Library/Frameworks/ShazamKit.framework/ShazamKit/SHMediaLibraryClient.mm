@interface SHMediaLibraryClient
- (BOOL)isBundleIdentifierValid;
- (BOOL)isEntitledForSPI;
- (BOOL)isTeamIdentifierValid;
- (SHMediaLibraryClient)initWithCredentials:(id)a3;
- (int64_t)type;
@end

@implementation SHMediaLibraryClient

- (SHMediaLibraryClient)initWithCredentials:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHMediaLibraryClient;
  v6 = [(SHMediaLibraryClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_credentials, a3);
  }

  return v7;
}

- (int64_t)type
{
  if (![(SHMediaLibraryClient *)self isBundleIdentifierValid])
  {
    v3 = sh_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      v5 = "Invalid Media Library client, bundle id is not valid";
      v6 = v13;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (![(SHMediaLibraryClient *)self isEntitledForSPI])
  {
    v8 = [(SHMediaLibraryClient *)self isTeamIdentifierValid];
    v3 = sh_log_object();
    v9 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        *v10 = 0;
        v4 = 2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Public Media Library client", v10, 2u);
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_10;
    }

    if (v9)
    {
      v11 = 0;
      v5 = "Invalid Media Library client, team id is not valid";
      v6 = &v11;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Entitled Media Library client", buf, 2u);
  }

  v4 = 1;
LABEL_10:

  return v4;
}

- (BOOL)isEntitledForSPI
{
  v3 = [(SHMediaLibraryClient *)self credentials];
  v4 = [v3 clientType] == 1;

  v5 = [(SHMediaLibraryClient *)self credentials];
  v6 = [v5 attribution];
  v7 = [v6 containingAppBundleIdentifier];
  LOBYTE(v3) = [SHAttribution requiresMediaLibraryAttributionForBundleIdentifier:v7];

  return v4 || (v3 & 1) == 0;
}

- (BOOL)isBundleIdentifierValid
{
  v2 = [(SHMediaLibraryClient *)self credentials];
  v3 = [v2 attribution];
  v4 = [v3 containingAppBundleIdentifier];
  v5 = [v4 length] != 0;

  return v5;
}

- (BOOL)isTeamIdentifierValid
{
  v2 = [(SHMediaLibraryClient *)self credentials];
  v3 = [v2 attribution];
  v4 = [v3 teamIdentifier];
  v5 = [v4 length] != 0;

  return v5;
}

@end