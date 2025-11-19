@interface GKAppleIDLoginPlugin
- (id)parametersForIdentityEstablishmentRequest;
- (id)parametersForLoginRequest;
- (void)handleLoginResponse:(id)a3 completion:(id)a4;
@end

@implementation GKAppleIDLoginPlugin

- (id)parametersForLoginRequest
{
  v3 = +[GKDevice currentDevice];
  v4 = [v3 udid];

  v5 = [(GKAppleIDLoginPlugin *)self _gkAuthenticatedPlayerID];
  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (v5)
  {
    [v6 setObject:v5 forKey:@"player-id"];
  }

  if (v4)
  {
    [v7 setObject:v4 forKey:@"device-id"];
  }

  return v7;
}

- (id)parametersForIdentityEstablishmentRequest
{
  v2 = +[GKDaemonProxy daemonProxy];
  v3 = [v2 authenticatedCredential];

  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"account-exists"];
    v5 = [v3 authenticationToken];
    v6 = [v3 accountName];
    v7 = [v3 playerID];
    if (v5)
    {
      [v4 setObject:v5 forKeyedSubscript:@"auth-token"];
    }

    if (v6)
    {
      [v4 setObject:v6 forKeyedSubscript:@"apple-id"];
    }

    if (v7)
    {
      [v4 setObject:v7 forKeyedSubscript:@"player-id"];
    }
  }

  else
  {
    v4 = &off_41A0;
  }

  return v4;
}

- (void)handleLoginResponse:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E14;
  v7[3] = &unk_4090;
  v8 = a4;
  v6 = v8;
  [(GKAppleIDLoginPlugin *)self _gkSetupAccountWithParamaters:a3 completionHandler:v7];
}

@end