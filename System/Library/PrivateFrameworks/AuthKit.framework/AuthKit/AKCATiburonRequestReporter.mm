@interface AKCATiburonRequestReporter
- (AKCATiburonRequestReporter)initWithRequestContext:(id)context;
- (void)didCompleteWithAuthorization:(id)authorization error:(id)error;
@end

@implementation AKCATiburonRequestReporter

- (AKCATiburonRequestReporter)initWithRequestContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v23.receiver = v3;
  v23.super_class = AKCATiburonRequestReporter;
  v22 = [(AKCAReporter *)&v23 initWithEvent:@"com.apple.AuthKit.TiburonRequest"];
  selfCopy = v22;
  objc_storeStrong(&selfCopy, v22);
  if (v22)
  {
    requestIdentifier = [location[0] requestIdentifier];
    uUIDString = [requestIdentifier UUIDString];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(uUIDString);
    _objc_release(requestIdentifier);
    authorizationRequest = [location[0] authorizationRequest];
    if (authorizationRequest)
    {
      v4 = &__kCFBooleanTrue;
    }

    else
    {
      v4 = &__kCFBooleanFalse;
    }

    [(AKCAReporter *)selfCopy setObject:v4 forKeyedSubscript:@"includesAuthorizationRequest"];
    _objc_release(authorizationRequest);
    passwordRequest = [location[0] passwordRequest];
    if (passwordRequest)
    {
      v5 = &__kCFBooleanTrue;
    }

    else
    {
      v5 = &__kCFBooleanFalse;
    }

    [(AKCAReporter *)selfCopy setObject:v5 forKeyedSubscript:@"includesPasswordRequest"];
    _objc_release(passwordRequest);
    if ([location[0] _isRapportLogin])
    {
      [(AKCAReporter *)selfCopy setObject:@"tv" forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isFirstPartyLogin] & 1) != 0 && (objc_msgSend(location[0], "_isWebLogin"))
    {
      [(AKCAReporter *)selfCopy setObject:@"appleweb" forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isWebLogin])
    {
      [(AKCAReporter *)selfCopy setObject:@"web" forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isFirstPartyLogin])
    {
      [(AKCAReporter *)selfCopy setObject:@"apple" forKeyedSubscript:@"originClientType"];
    }

    else
    {
      [(AKCAReporter *)selfCopy setObject:@"app" forKeyedSubscript:@"originClientType"];
    }

    authorizationRequest2 = [location[0] authorizationRequest];
    _objc_release(authorizationRequest2);
    if (authorizationRequest2)
    {
      authorizationRequest3 = [location[0] authorizationRequest];
      clientID = [authorizationRequest3 clientID];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(clientID);
      _objc_release(authorizationRequest3);
      _proxiedClientAppID = [location[0] _proxiedClientAppID];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(_proxiedClientAppID);
      authorizationRequest4 = [location[0] authorizationRequest];
      teamID = [authorizationRequest4 teamID];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(teamID);
      _objc_release(authorizationRequest4);
      authorizationRequest5 = [location[0] authorizationRequest];
      v14 = [authorizationRequest5 existingStatus] == 1;
      _objc_release(authorizationRequest5);
      v15 = [NSNumber numberWithInt:!v14];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v15);
      v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [location[0] _isEligibleForUpgradeFromPassword]);
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v16);
    }
  }

  v7 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)didCompleteWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v21 = 0;
  objc_storeStrong(&v21, error);
  authorizedRequest = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(authorizedRequest);
  v20 = isKindOfClass & 1;
  authorizedRequest2 = [location[0] authorizedRequest];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  _objc_release(authorizedRequest2);
  v19 = v13 & 1;
  v14 = [NSNumber numberWithBool:isKindOfClass & 1];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v14);
  v15 = [NSNumber numberWithBool:v13 & 1];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v15);
  domain = [v21 domain];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(domain);
  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 code]);
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v17);
  v18 = AKErrorUnderlyingError();
  if (v18)
  {
    domain2 = [v18 domain];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(domain2);
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 code]);
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(v8);
  }

  if (v20 & 1) != 0 || (v19)
  {
    v6 = [(AKCAReporter *)selfCopy objectForKeyedSubscript:@"clientID"];
    _objc_release(v6);
    if (v6)
    {
      [(AKCAReporter *)selfCopy setObject:@"<akredacted>" forKeyedSubscript:@"clientID"];
    }

    v5 = [(AKCAReporter *)selfCopy objectForKeyedSubscript:@"appID"];
    _objc_release(v5);
    if (v5)
    {
      [(AKCAReporter *)selfCopy setObject:@"<akredacted>" forKeyedSubscript:@"appID"];
    }

    v4 = [(AKCAReporter *)selfCopy objectForKeyedSubscript:@"teamID"];
    _objc_release(v4);
    if (v4)
    {
      [(AKCAReporter *)selfCopy setObject:@"<akredacted>" forKeyedSubscript:@"teamID"];
    }
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

@end