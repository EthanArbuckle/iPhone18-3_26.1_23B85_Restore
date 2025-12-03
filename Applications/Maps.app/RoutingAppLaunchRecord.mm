@interface RoutingAppLaunchRecord
- (NSMutableArray)recentlyLaunchedApps;
- (RoutingAppLaunchRecord)initWithCoder:(id)coder;
- (RoutingAppLaunchRecord)initWithRecentlyLaunchedApps:(id)apps;
- (id)appIDsSortedByMostRecentLaunch:(id)launch;
- (id)rankedRoutingAppProxiesWithProxies:(id)proxies;
- (void)recordAppLaunch:(id)launch;
@end

@implementation RoutingAppLaunchRecord

- (id)rankedRoutingAppProxiesWithProxies:(id)proxies
{
  proxiesCopy = proxies;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(proxiesCopy, "count")}];
  v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(proxiesCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = proxiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        bundleIdentifier = [v12 bundleIdentifier];
        [v5 addObject:bundleIdentifier];
        [v6 setObject:v12 forKeyedSubscript:bundleIdentifier];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v14 = [(RoutingAppLaunchRecord *)self appIDsSortedByMostRecentLaunch:v5];
  v15 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v6 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * j), v23}];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  return v15;
}

- (RoutingAppLaunchRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_recentlyLaunchedApps"];

  v6 = &__NSArray0__struct;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  v8 = [(RoutingAppLaunchRecord *)self initWithRecentlyLaunchedApps:v7];
  return v8;
}

- (NSMutableArray)recentlyLaunchedApps
{
  v2 = [(NSMutableArray *)self->_recentlyLaunchedApps copy];

  return v2;
}

- (void)recordAppLaunch:(id)launch
{
  launchCopy = launch;
  recentlyLaunchedApps = self->_recentlyLaunchedApps;
  v8 = launchCopy;
  if (!recentlyLaunchedApps)
  {
    v6 = [NSMutableArray arrayWithCapacity:1];
    v7 = self->_recentlyLaunchedApps;
    self->_recentlyLaunchedApps = v6;

    launchCopy = v8;
    recentlyLaunchedApps = self->_recentlyLaunchedApps;
  }

  [(NSMutableArray *)recentlyLaunchedApps removeObject:launchCopy];
  [(NSMutableArray *)self->_recentlyLaunchedApps insertObject:v8 atIndex:0];
}

- (id)appIDsSortedByMostRecentLaunch:(id)launch
{
  launchCopy = launch;
  v5 = malloc_type_malloc(8 * [launchCopy count], 0x100004000313F17uLL);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = launchCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(NSMutableArray *)self->_recentlyLaunchedApps indexOfObject:*(*(&v20 + 1) + 8 * i)];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = -1;
        }

        else
        {
          v13 = v12;
        }

        v5[v9++] = v13;
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100D26B44;
  v17[3] = &unk_1016518A0;
  v18 = v6;
  v19 = v5;
  v14 = v6;
  v15 = [v14 sortedArrayUsingComparator:v17];
  free(v5);

  return v15;
}

- (RoutingAppLaunchRecord)initWithRecentlyLaunchedApps:(id)apps
{
  appsCopy = apps;
  v9.receiver = self;
  v9.super_class = RoutingAppLaunchRecord;
  v5 = [(RoutingAppLaunchRecord *)&v9 init];
  if (v5)
  {
    v6 = [appsCopy mutableCopy];
    [(RoutingAppLaunchRecord *)v5 setRecentlyLaunchedApps:v6];
    v7 = v5;
  }

  return v5;
}

@end