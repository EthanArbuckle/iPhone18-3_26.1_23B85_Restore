@interface GKAppleIDLoginPlugin
- (id)parametersForIdentityEstablishmentRequest;
- (id)parametersForLoginRequest;
- (void)handleLoginResponse:(id)response completion:(id)completion;
@end

@implementation GKAppleIDLoginPlugin

- (id)parametersForLoginRequest
{
  v3 = +[GKDevice currentDevice];
  udid = [v3 udid];

  _gkAuthenticatedPlayerID = [(GKAppleIDLoginPlugin *)self _gkAuthenticatedPlayerID];
  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (_gkAuthenticatedPlayerID)
  {
    [v6 setObject:_gkAuthenticatedPlayerID forKey:@"player-id"];
  }

  if (udid)
  {
    [v7 setObject:udid forKey:@"device-id"];
  }

  return v7;
}

- (id)parametersForIdentityEstablishmentRequest
{
  v2 = +[GKDaemonProxy daemonProxy];
  authenticatedCredential = [v2 authenticatedCredential];

  if (authenticatedCredential)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"account-exists"];
    authenticationToken = [authenticatedCredential authenticationToken];
    accountName = [authenticatedCredential accountName];
    playerID = [authenticatedCredential playerID];
    if (authenticationToken)
    {
      [v4 setObject:authenticationToken forKeyedSubscript:@"auth-token"];
    }

    if (accountName)
    {
      [v4 setObject:accountName forKeyedSubscript:@"apple-id"];
    }

    if (playerID)
    {
      [v4 setObject:playerID forKeyedSubscript:@"player-id"];
    }
  }

  else
  {
    v4 = &off_41A0;
  }

  return v4;
}

- (void)handleLoginResponse:(id)response completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E14;
  v7[3] = &unk_4090;
  completionCopy = completion;
  v6 = completionCopy;
  [(GKAppleIDLoginPlugin *)self _gkSetupAccountWithParamaters:response completionHandler:v7];
}

@end