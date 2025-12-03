@interface AKCAAuthPromptReporter
+ (void)reportPromptByClient:(id)client withContext:(id)context;
@end

@implementation AKCAAuthPromptReporter

+ (void)reportPromptByClient:(id)client withContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v23 = 0;
  objc_storeStrong(&v23, context);
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
    bundleID = [location[0] bundleID];
    if (bundleID)
    {
      v14 = bundleID;
    }

    else
    {
      v14 = @"No Bundle ID";
    }

    [v20 setObject:v14 forKeyedSubscript:@"clientId"];
    _objc_release(bundleID);
    _proxiedAppBundleID = [v23 _proxiedAppBundleID];
    if (_proxiedAppBundleID)
    {
      v12 = _proxiedAppBundleID;
    }

    else
    {
      v12 = @"No Proxied Client ID";
    }

    [v20 setObject:v12 forKeyedSubscript:@"proxiedClientId"];
    _objc_release(_proxiedAppBundleID);
    username = [v23 username];
    if (username)
    {
      v4 = &__kCFBooleanTrue;
    }

    else
    {
      v4 = &__kCFBooleanFalse;
    }

    [v20 setObject:v4 forKeyedSubscript:@"hasUsername"];
    _objc_release(username);
    proxiedDevice = [v23 proxiedDevice];
    if (proxiedDevice)
    {
      v5 = &__kCFBooleanTrue;
    }

    else
    {
      v5 = &__kCFBooleanFalse;
    }

    [v20 setObject:v5 forKeyedSubscript:@"proxyingForPairedDevice"];
    _objc_release(proxiedDevice);
    v8 = [NSNumber numberWithUnsignedInteger:v21];
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(v8);
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 authenticationType]);
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(v9);
    reason = [v23 reason];
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(reason);
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