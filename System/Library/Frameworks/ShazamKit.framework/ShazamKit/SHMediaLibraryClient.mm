@interface SHMediaLibraryClient
- (BOOL)isBundleIdentifierValid;
- (BOOL)isEntitledForSPI;
- (BOOL)isTeamIdentifierValid;
- (SHMediaLibraryClient)initWithCredentials:(id)credentials;
- (int64_t)type;
@end

@implementation SHMediaLibraryClient

- (SHMediaLibraryClient)initWithCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v9.receiver = self;
  v9.super_class = SHMediaLibraryClient;
  v6 = [(SHMediaLibraryClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_credentials, credentials);
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
    isTeamIdentifierValid = [(SHMediaLibraryClient *)self isTeamIdentifierValid];
    v3 = sh_log_object();
    v9 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (isTeamIdentifierValid)
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
  credentials = [(SHMediaLibraryClient *)self credentials];
  v4 = [credentials clientType] == 1;

  credentials2 = [(SHMediaLibraryClient *)self credentials];
  attribution = [credentials2 attribution];
  containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
  LOBYTE(credentials) = [SHAttribution requiresMediaLibraryAttributionForBundleIdentifier:containingAppBundleIdentifier];

  return v4 || (credentials & 1) == 0;
}

- (BOOL)isBundleIdentifierValid
{
  credentials = [(SHMediaLibraryClient *)self credentials];
  attribution = [credentials attribution];
  containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
  v5 = [containingAppBundleIdentifier length] != 0;

  return v5;
}

- (BOOL)isTeamIdentifierValid
{
  credentials = [(SHMediaLibraryClient *)self credentials];
  attribution = [credentials attribution];
  teamIdentifier = [attribution teamIdentifier];
  v5 = [teamIdentifier length] != 0;

  return v5;
}

@end