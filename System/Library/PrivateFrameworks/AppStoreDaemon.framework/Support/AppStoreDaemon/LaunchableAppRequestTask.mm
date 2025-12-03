@interface LaunchableAppRequestTask
- (void)main;
@end

@implementation LaunchableAppRequestTask

- (void)main
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    if (self)
    {
      client = self->super._client;
    }

    else
    {
      client = 0;
    }

    v7 = client;
    clientID = [(XPCClient *)v7 clientID];
    if (self)
    {
      options = self->super._options;
    }

    else
    {
      options = 0;
    }

    v10 = options;
    bundleIDs = [(ASDRequestOptions *)v10 bundleIDs];
    v12 = [bundleIDs componentsJoinedByString:{@", "}];
    *buf = 138543874;
    v39 = v4;
    v40 = 2114;
    v41 = clientID;
    v42 = 2114;
    v43 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Launable apps request by client: %{public}@ for bundleIDs: [%{public}@]", buf, 0x20u);
  }

  v13 = objc_opt_new();
  v14 = +[LSDatabaseContext sharedDatabaseContext];
  v30 = [v14 startAccessingReturningError:0];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  v31 = v14;
  if (self)
  {
    v15 = self->super._options;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  bundleIDs2 = [(ASDRequestOptions *)v16 bundleIDs];

  v18 = [bundleIDs2 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(bundleIDs2);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        v23 = objc_autoreleasePoolPush();
        v24 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v22 allowPlaceholder:0 error:0];
        v25 = v24;
        if (v24)
        {
          if ((sub_10040C6AC(v24) & 2) != 0)
          {
            [v13 addObject:v22];
          }

          else
          {
            v26 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = objc_opt_class();
              *buf = 138543618;
              v39 = v27;
              v40 = 2114;
              v41 = v22;
              v28 = v27;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%{public}@]: App: %{public}@ is not launchable", buf, 0x16u);
            }
          }
        }

        objc_autoreleasePoolPop(v23);
      }

      v19 = [bundleIDs2 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  if (v30)
  {
    [v31 stopAccessing];
  }

  v29 = [[ASDLaunchableAppsResponse alloc] initWithBundleIDs:v13];
  sub_10020F258(selfCopy, v29);
  if (selfCopy)
  {
    selfCopy->super.super._success = 1;
  }
}

@end