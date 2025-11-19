@interface AKCATiburonRequestReporter
- (AKCATiburonRequestReporter)initWithRequestContext:(id)a3;
- (void)didCompleteWithAuthorization:(id)a3 error:(id)a4;
@end

@implementation AKCATiburonRequestReporter

- (AKCATiburonRequestReporter)initWithRequestContext:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v25;
  v25 = 0;
  v23.receiver = v3;
  v23.super_class = AKCATiburonRequestReporter;
  v22 = [(AKCAReporter *)&v23 initWithEvent:@"com.apple.AuthKit.TiburonRequest"];
  v25 = v22;
  objc_storeStrong(&v25, v22);
  if (v22)
  {
    v19 = [location[0] requestIdentifier];
    v18 = [v19 UUIDString];
    [AKCAReporter setObject:v25 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(v18);
    _objc_release(v19);
    v20 = [location[0] authorizationRequest];
    if (v20)
    {
      v4 = &__kCFBooleanTrue;
    }

    else
    {
      v4 = &__kCFBooleanFalse;
    }

    [(AKCAReporter *)v25 setObject:v4 forKeyedSubscript:@"includesAuthorizationRequest"];
    _objc_release(v20);
    v21 = [location[0] passwordRequest];
    if (v21)
    {
      v5 = &__kCFBooleanTrue;
    }

    else
    {
      v5 = &__kCFBooleanFalse;
    }

    [(AKCAReporter *)v25 setObject:v5 forKeyedSubscript:@"includesPasswordRequest"];
    _objc_release(v21);
    if ([location[0] _isRapportLogin])
    {
      [(AKCAReporter *)v25 setObject:@"tv" forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isFirstPartyLogin] & 1) != 0 && (objc_msgSend(location[0], "_isWebLogin"))
    {
      [(AKCAReporter *)v25 setObject:@"appleweb" forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isWebLogin])
    {
      [(AKCAReporter *)v25 setObject:@"web" forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isFirstPartyLogin])
    {
      [(AKCAReporter *)v25 setObject:@"apple" forKeyedSubscript:@"originClientType"];
    }

    else
    {
      [(AKCAReporter *)v25 setObject:@"app" forKeyedSubscript:@"originClientType"];
    }

    v17 = [location[0] authorizationRequest];
    _objc_release(v17);
    if (v17)
    {
      v9 = [location[0] authorizationRequest];
      v8 = [v9 clientID];
      [AKCAReporter setObject:v25 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v8);
      _objc_release(v9);
      v10 = [location[0] _proxiedClientAppID];
      [AKCAReporter setObject:v25 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v10);
      v12 = [location[0] authorizationRequest];
      v11 = [v12 teamID];
      [AKCAReporter setObject:v25 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v11);
      _objc_release(v12);
      v13 = [location[0] authorizationRequest];
      v14 = [v13 existingStatus] == 1;
      _objc_release(v13);
      v15 = [NSNumber numberWithInt:!v14];
      [AKCAReporter setObject:v25 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v15);
      v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [location[0] _isEligibleForUpgradeFromPassword]);
      [AKCAReporter setObject:v25 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v16);
    }
  }

  v7 = _objc_retain(v25);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v25, 0);
  return v7;
}

- (void)didCompleteWithAuthorization:(id)a3 error:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v10 = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(v10);
  v20 = isKindOfClass & 1;
  v12 = [location[0] authorizedRequest];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  _objc_release(v12);
  v19 = v13 & 1;
  v14 = [NSNumber numberWithBool:isKindOfClass & 1];
  [AKCAReporter setObject:v23 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v14);
  v15 = [NSNumber numberWithBool:v13 & 1];
  [AKCAReporter setObject:v23 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v15);
  v16 = [v21 domain];
  [AKCAReporter setObject:v23 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v16);
  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 code]);
  [AKCAReporter setObject:v23 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v17);
  v18 = AKErrorUnderlyingError();
  if (v18)
  {
    v7 = [v18 domain];
    [AKCAReporter setObject:v23 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(v7);
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 code]);
    [AKCAReporter setObject:v23 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(v8);
  }

  if (v20 & 1) != 0 || (v19)
  {
    v6 = [(AKCAReporter *)v23 objectForKeyedSubscript:@"clientID"];
    _objc_release(v6);
    if (v6)
    {
      [(AKCAReporter *)v23 setObject:@"<akredacted>" forKeyedSubscript:@"clientID"];
    }

    v5 = [(AKCAReporter *)v23 objectForKeyedSubscript:@"appID"];
    _objc_release(v5);
    if (v5)
    {
      [(AKCAReporter *)v23 setObject:@"<akredacted>" forKeyedSubscript:@"appID"];
    }

    v4 = [(AKCAReporter *)v23 objectForKeyedSubscript:@"teamID"];
    _objc_release(v4);
    if (v4)
    {
      [(AKCAReporter *)v23 setObject:@"<akredacted>" forKeyedSubscript:@"teamID"];
    }
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

@end