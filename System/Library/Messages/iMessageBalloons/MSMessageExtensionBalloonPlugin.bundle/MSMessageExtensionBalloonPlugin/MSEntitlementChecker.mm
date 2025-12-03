@interface MSEntitlementChecker
- (BOOL)hasEntitlement:(id)entitlement;
- (MSEntitlementChecker)initWithDataSource:(id)source requestIdentifierProvider:(id)provider;
- (MSRequestIdentifierProviding)requestIdentifierProvider;
- (id)balloonPlugin;
- (id)pluginBundleID;
@end

@implementation MSEntitlementChecker

- (MSEntitlementChecker)initWithDataSource:(id)source requestIdentifierProvider:(id)provider
{
  sourceCopy = source;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = MSEntitlementChecker;
  v9 = [(MSEntitlementChecker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeWeak(&v10->_requestIdentifierProvider, providerCopy);
  }

  return v10;
}

- (id)pluginBundleID
{
  dataSource = [(MSEntitlementChecker *)self dataSource];
  pluginPayload = [dataSource pluginPayload];
  pluginBundleID = [pluginPayload pluginBundleID];

  return pluginBundleID;
}

- (id)balloonPlugin
{
  pluginBundleID = [(MSEntitlementChecker *)self pluginBundleID];
  v3 = +[IMBalloonPluginManager sharedInstance];
  v4 = [v3 balloonPluginForBundleID:pluginBundleID];

  return v4;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (CKIsRunningInFullCKClient())
  {
    isKindOfClass = 1;
  }

  else
  {
    balloonPlugin = [(MSEntitlementChecker *)self balloonPlugin];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([balloonPlugin extension], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      requestIdentifierProvider = [(MSEntitlementChecker *)self requestIdentifierProvider];
      requestUUID = [requestIdentifierProvider requestUUID];

      v11 = [v8 _extensionContextForUUID:requestUUID];
      _auxiliaryConnection = [v11 _auxiliaryConnection];
      v13 = [_auxiliaryConnection valueForEntitlement:entitlementCopy];

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