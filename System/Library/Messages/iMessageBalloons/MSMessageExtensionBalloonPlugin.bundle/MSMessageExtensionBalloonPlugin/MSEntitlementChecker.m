@interface MSEntitlementChecker
- (BOOL)hasEntitlement:(id)a3;
- (MSEntitlementChecker)initWithDataSource:(id)a3 requestIdentifierProvider:(id)a4;
- (MSRequestIdentifierProviding)requestIdentifierProvider;
- (id)balloonPlugin;
- (id)pluginBundleID;
@end

@implementation MSEntitlementChecker

- (MSEntitlementChecker)initWithDataSource:(id)a3 requestIdentifierProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSEntitlementChecker;
  v9 = [(MSEntitlementChecker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeWeak(&v10->_requestIdentifierProvider, v8);
  }

  return v10;
}

- (id)pluginBundleID
{
  v2 = [(MSEntitlementChecker *)self dataSource];
  v3 = [v2 pluginPayload];
  v4 = [v3 pluginBundleID];

  return v4;
}

- (id)balloonPlugin
{
  v2 = [(MSEntitlementChecker *)self pluginBundleID];
  v3 = +[IMBalloonPluginManager sharedInstance];
  v4 = [v3 balloonPluginForBundleID:v2];

  return v4;
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  if (CKIsRunningInFullCKClient())
  {
    isKindOfClass = 1;
  }

  else
  {
    v6 = [(MSEntitlementChecker *)self balloonPlugin];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 extension], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [(MSEntitlementChecker *)self requestIdentifierProvider];
      v10 = [v9 requestUUID];

      v11 = [v8 _extensionContextForUUID:v10];
      v12 = [v11 _auxiliaryConnection];
      v13 = [v12 valueForEntitlement:v4];

      if (v13)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 1;
    }
  }

  return isKindOfClass & 1;
}

- (MSRequestIdentifierProviding)requestIdentifierProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_requestIdentifierProvider);

  return WeakRetained;
}

@end