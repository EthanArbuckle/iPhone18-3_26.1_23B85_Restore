@interface NSURLSessionConfiguration
+ (id)_asset_configurationIdentifierUsingProperties:(id)properties;
+ (id)asset_backgroundSessionConfigurationUsingProperties:(id)properties;
+ (id)asset_ephemeralSessionConfigurationUsingProperties:(id)properties;
+ (void)_asset_initializeConnectionPools;
- (void)_asset_setConfigurationDefaults;
- (void)_asset_setConfigurationUsingProperties:(id)properties;
@end

@implementation NSURLSessionConfiguration

+ (id)asset_backgroundSessionConfigurationUsingProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];

  v6 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:uUIDString];
  [v6 _asset_setConfigurationDefaults];
  [v6 _asset_setConfigurationUsingProperties:propertiesCopy];

  return v6;
}

+ (id)asset_ephemeralSessionConfigurationUsingProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [v4 _asset_setConfigurationDefaults];
  [v4 _asset_setConfigurationUsingProperties:propertiesCopy];

  [v4 set_connectionCachePurgeTimeout:1.0];
  [v4 set_longLivedConnectionCachePurgeTimeout:1.0];
  [v4 set_preventsIdleSleepOnceConnected:1];

  return v4;
}

+ (id)_asset_configurationIdentifierUsingProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [NSMutableArray arrayWithObject:@"com.apple.storekit"];
  networkBudgetingIdentifier = [propertiesCopy networkBudgetingIdentifier];

  if (networkBudgetingIdentifier)
  {
    networkBudgetingIdentifier2 = [propertiesCopy networkBudgetingIdentifier];
    [v4 addObject:networkBudgetingIdentifier2];
  }

  duetBudgetingIdentifier = [propertiesCopy duetBudgetingIdentifier];

  if (duetBudgetingIdentifier)
  {
    duetBudgetingIdentifier2 = [propertiesCopy duetBudgetingIdentifier];
    [v4 addObject:duetBudgetingIdentifier2];
  }

  if ([propertiesCopy enforceATS])
  {
    [v4 addObject:@"ats"];
  }

  if ([propertiesCopy discretionaryType])
  {
    discretionaryType = [propertiesCopy discretionaryType];
    if (discretionaryType == 2)
    {
      v10 = @"discretionary-always";
    }

    else
    {
      if (discretionaryType != 1)
      {
        goto LABEL_13;
      }

      v10 = @"discretionary-inferred";
    }

    [v4 addObject:v10];
  }

LABEL_13:
  if (([propertiesCopy allowsExpensiveNetworkAccess] & 1) == 0)
  {
    [v4 addObject:@"inexpensive"];
  }

  if ([propertiesCopy allowsCellularAccess])
  {
    if ([propertiesCopy allowsWatchCellularAccess])
    {
      goto LABEL_20;
    }

    v11 = @"phone";
  }

  else
  {
    v11 = @"wifi";
  }

  [v4 addObject:v11];
LABEL_20:
  if (([propertiesCopy allowsConstrainedNetworkAccess] & 1) == 0)
  {
    [v4 addObject:@"nolowdata"];
  }

  if ([propertiesCopy requiresPowerPluggedIn])
  {
    [v4 addObject:@"power"];
  }

  v12 = [v4 componentsJoinedByString:@"."];

  return v12;
}

+ (void)_asset_initializeConnectionPools
{
  if (qword_1003D3D88 != -1)
  {
    sub_1002C8FFC();
  }
}

- (void)_asset_setConfigurationDefaults
{
  [(NSURLSessionConfiguration *)self setHTTPCookieAcceptPolicy:1];
  [(NSURLSessionConfiguration *)self setHTTPShouldSetCookies:0];
  [(NSURLSessionConfiguration *)self setHTTPShouldUsePipelining:1];
  [(NSURLSessionConfiguration *)self setRequestCachePolicy:1];

  [(NSURLSessionConfiguration *)self set_timingDataOptions:69];
}

- (void)_asset_setConfigurationUsingProperties:(id)properties
{
  propertiesCopy = properties;
  networkBudgetingIdentifier = [propertiesCopy networkBudgetingIdentifier];
  [(NSURLSessionConfiguration *)self set_sourceApplicationBundleIdentifier:networkBudgetingIdentifier];

  duetBudgetingIdentifier = [propertiesCopy duetBudgetingIdentifier];
  [(NSURLSessionConfiguration *)self set_sourceApplicationSecondaryIdentifier:duetBudgetingIdentifier];

  if ([propertiesCopy enforceATS])
  {
    v18 = @"NSAllowsArbitraryLoads";
    v19 = &__kCFBooleanFalse;
    v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v17 = 0;
    v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:&v17];
    v9 = v17;

    if (v8)
    {
      [(NSURLSessionConfiguration *)self set_atsContext:v8];
    }

    else
    {
      if (qword_1003D3DF0 != -1)
      {
        sub_1002C9010();
      }

      v10 = qword_1003D3DA8;
      if (os_log_type_enabled(qword_1003D3DA8, OS_LOG_TYPE_ERROR))
      {
        sub_1002C9038(v10, propertiesCopy, v9);
      }
    }
  }

  -[NSURLSessionConfiguration set_requiresPowerPluggedIn:](self, "set_requiresPowerPluggedIn:", [propertiesCopy requiresPowerPluggedIn]);
  -[NSURLSessionConfiguration setAllowsCellularAccess:](self, "setAllowsCellularAccess:", [propertiesCopy allowsCellularAccess]);
  -[NSURLSessionConfiguration setAllowsConstrainedNetworkAccess:](self, "setAllowsConstrainedNetworkAccess:", [propertiesCopy allowsConstrainedNetworkAccess]);
  -[NSURLSessionConfiguration setAllowsExpensiveNetworkAccess:](self, "setAllowsExpensiveNetworkAccess:", [propertiesCopy allowsExpensiveNetworkAccess]);
  discretionaryType = [propertiesCopy discretionaryType];
  if (discretionaryType <= 2)
  {
    v12 = discretionaryType;
    [(NSURLSessionConfiguration *)self setDiscretionary:(4u >> (discretionaryType & 7)) & 1];
    [(NSURLSessionConfiguration *)self set_infersDiscretionaryFromOriginatingClient:v12 & 1];
  }

  protocolClasses = [propertiesCopy protocolClasses];

  if (protocolClasses)
  {
    protocolClasses2 = [propertiesCopy protocolClasses];
    [(NSURLSessionConfiguration *)self setProtocolClasses:protocolClasses2];
  }

  if ([propertiesCopy connectionPool])
  {
    +[NSURLSessionConfiguration _asset_initializeConnectionPools];
    connectionPool = [propertiesCopy connectionPool];
    if (connectionPool == 1)
    {
      v16 = @"com.apple.storekit.connectionPool.apps";
      goto LABEL_18;
    }

    if (connectionPool == 2)
    {
      v16 = @"com.apple.storekit.connectionPool.odr";
LABEL_18:
      [(NSURLSessionConfiguration *)self set_connectionPoolName:v16];
    }
  }
}

@end