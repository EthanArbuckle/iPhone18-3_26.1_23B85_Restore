@interface AKCAAuthPromptReporter
+ (void)reportPromptByClient:(id)a3 withContext:(id)a4;
@end

@implementation AKCAAuthPromptReporter

+ (void)reportPromptByClient:(id)a3 withContext:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  if (getenv("__OSINSTALL_ENVIRONMENT") || getenv("__AKSYNCBUBBLE"))
  {
    v22 = 1;
  }

  else if ([v23 isFirstTimeLogin])
  {
    v22 = 1;
  }

  else
  {
    v16 = +[AKAccountManager sharedInstance];
    v15 = [v23 authKitAccount:0];
    v17 = [(AKAccountManager *)v16 securityLevelForAccount:?];
    _objc_release(v15);
    _objc_release(v16);
    v21 = v17;
    v20 = +[NSMutableDictionary dictionary];
    v18 = [location[0] bundleID];
    if (v18)
    {
      v14 = v18;
    }

    else
    {
      v14 = @"No Bundle ID";
    }

    [v20 setObject:v14 forKeyedSubscript:@"clientId"];
    _objc_release(v18);
    v13 = [v23 _proxiedAppBundleID];
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v12 = @"No Proxied Client ID";
    }

    [v20 setObject:v12 forKeyedSubscript:@"proxiedClientId"];
    _objc_release(v13);
    v6 = [v23 username];
    if (v6)
    {
      v4 = &__kCFBooleanTrue;
    }

    else
    {
      v4 = &__kCFBooleanFalse;
    }

    [v20 setObject:v4 forKeyedSubscript:@"hasUsername"];
    _objc_release(v6);
    v7 = [v23 proxiedDevice];
    if (v7)
    {
      v5 = &__kCFBooleanTrue;
    }

    else
    {
      v5 = &__kCFBooleanFalse;
    }

    [v20 setObject:v5 forKeyedSubscript:@"proxyingForPairedDevice"];
    _objc_release(v7);
    v8 = [NSNumber numberWithUnsignedInteger:v21];
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(v8);
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 authenticationType]);
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(v9);
    v10 = [v23 reason];
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(v10);
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 _capabilityForUIDisplay]);
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(v11);
    if (&_AnalyticsSendEvent)
    {
      AnalyticsSendEvent();
    }

    objc_storeStrong(&v20, 0);
    v22 = 0;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

@end