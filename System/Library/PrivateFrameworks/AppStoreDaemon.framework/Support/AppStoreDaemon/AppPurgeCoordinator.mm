@interface AppPurgeCoordinator
- (AppPurgeCoordinator)init;
- (id)allPurgeablesForVolume:(id)volume reason:(id)reason client:(id)client;
- (int64_t)purgeForVolume:(id)volume urgency:(int64_t)urgency desiredPurge:(id)purge client:(id)client;
- (void)cacheInvalidated;
@end

@implementation AppPurgeCoordinator

- (AppPurgeCoordinator)init
{
  v5.receiver = self;
  v5.super_class = AppPurgeCoordinator;
  v2 = [(AppPurgeCoordinator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AppPurgeCoordinator *)v2 cacheInvalidated];
  }

  return v3;
}

- (id)allPurgeablesForVolume:(id)volume reason:(id)reason client:(id)client
{
  clientCopy = client;
  reasonCopy = reason;
  volumeCopy = volume;
  v11 = objc_alloc_init(_TtC9appstored6LogKey);
  sub_1001E9E5C(self, v11);
  v12 = sub_1001ED230(self, volumeCopy, 1, reasonCopy, clientCopy);
  v13 = sub_1001ED230(self, volumeCopy, 2, reasonCopy, clientCopy);
  v14 = sub_1001ED230(self, volumeCopy, 3, reasonCopy, clientCopy);
  v15 = sub_1001ED230(self, volumeCopy, 4, reasonCopy, clientCopy);

  v22[0] = &off_100546F48;
  v16 = [NSNumber numberWithLongLong:v12];
  v23[0] = v16;
  v22[1] = &off_100546F60;
  v17 = [NSNumber numberWithLongLong:v13];
  v23[1] = v17;
  v22[2] = &off_100546F78;
  v18 = [NSNumber numberWithLongLong:v14];
  v23[2] = v18;
  v22[3] = &off_100546F90;
  v19 = [NSNumber numberWithLongLong:v15];
  v23[3] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];

  return v20;
}

- (void)cacheInvalidated
{
  v3 = objc_alloc_init(_TtC9appstored6LogKey);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v85 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] cacheInvalidated ", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v58 = v3;
  v64 = selfCopy;
  if (selfCopy)
  {
    v59 = +[NSMutableArray array];
    sub_10033643C();
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    obj = v68 = 0u;
    v6 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
    if (!v6)
    {
      goto LABEL_41;
    }

    v62 = *v68;
    *&v7 = 138412802;
    v57 = v7;
    while (1)
    {
      v65 = v6;
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v68 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v67 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if (sub_1001E9C7C(v64, v9))
        {
          vPNPlugins = [v9 VPNPlugins];
          v12 = [vPNPlugins count] == 0;

          if (!v12)
          {
            v13 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              bundleIdentifier = [v9 bundleIdentifier];
              *v71 = 138412546;
              v72 = v58;
              v73 = 2114;
              v74 = bundleIdentifier;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Added deny listed app with VPN plugin", v71, 0x16u);
            }

            goto LABEL_13;
          }

          driverExtensionPaths = [v9 driverExtensionPaths];
          v17 = [driverExtensionPaths count] == 0;

          if (v17)
          {
            entitlements = [v9 entitlements];
            v82 = 0u;
            v83 = 0u;
            memset(v81, 0, sizeof(v81));
            v19 = [&off_1005492C0 countByEnumeratingWithState:v81 objects:&v77 count:16];
            if (v19)
            {
              v20 = **&v81[16];
              while (2)
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (**&v81[16] != v20)
                  {
                    objc_enumerationMutation(&off_1005492C0);
                  }

                  v22 = *(*&v81[8] + 8 * j);
                  bundleIdentifier2 = [v9 bundleIdentifier];
                  v24 = [bundleIdentifier2 length] == 0;

                  if (!v24)
                  {
                    v25 = [entitlements objectForKey:v22 ofClass:objc_opt_class()];
                    v26 = v25;
                    if (v25 && [v25 BOOLValue])
                    {
                      bundleIdentifier3 = [v9 bundleIdentifier];
                      [(NSArray *)v59 addObject:bundleIdentifier3];

                      v28 = ASDLogHandleForCategory();
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                      {
                        bundleIdentifier4 = [v9 bundleIdentifier];
                        *v71 = v57;
                        v72 = v58;
                        v73 = 2114;
                        v74 = bundleIdentifier4;
                        v75 = 2114;
                        v76 = v22;
                        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Added to deny listed because of entitlement: %{public}@", v71, 0x20u);
                      }

                      goto LABEL_37;
                    }

                    v27 = [entitlements objectForKey:v22 ofClass:objc_opt_class()];
                    v28 = v27;
                    if (v27 && [v27 count])
                    {
                      bundleIdentifier5 = [v9 bundleIdentifier];
                      [(NSArray *)v59 addObject:bundleIdentifier5];

                      v32 = ASDLogHandleForCategory();
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                      {
                        bundleIdentifier6 = [v9 bundleIdentifier];
                        *v71 = v57;
                        v72 = v58;
                        v73 = 2114;
                        v74 = bundleIdentifier6;
                        v75 = 2114;
                        v76 = v22;
                        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Added to deny listed because of entitlement: %{public}@", v71, 0x20u);
                      }

LABEL_37:
                      goto LABEL_38;
                    }
                  }
                }

                v19 = [&off_1005492C0 countByEnumeratingWithState:v81 objects:&v77 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }
          }

          else
          {
            v13 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              bundleIdentifier7 = [v9 bundleIdentifier];
              *v71 = 138412546;
              v72 = v58;
              v73 = 2114;
              v74 = bundleIdentifier7;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Added deny listed app with DriverKit extension", v71, 0x16u);
            }

LABEL_13:

            entitlements = [v9 bundleIdentifier];
            [(NSArray *)v59 addObject:entitlements];
          }

LABEL_38:
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
      if (!v6)
      {
LABEL_41:

        goto LABEL_42;
      }
    }
  }

  v59 = 0;
LABEL_42:

  cachedBundleIDDenyList = v64->_cachedBundleIDDenyList;
  v64->_cachedBundleIDDenyList = v59;

  v66 = v58;
  obja = objc_opt_new();
  v35 = +[NRPairedDeviceRegistry sharedInstance];
  getPairedDevices = [v35 getPairedDevices];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v63 = getPairedDevices;
  v37 = [v63 countByEnumeratingWithState:&v77 objects:buf count:16];
  if (v37)
  {
    v38 = *v78;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v78 != v38)
        {
          objc_enumerationMutation(v63);
        }

        v40 = *(*(&v77 + 1) + 8 * k);
        v41 = objc_opt_new();
        v42 = dispatch_semaphore_create(0);
        v43 = +[ACXDeviceConnection sharedDeviceConnection];
        *&v67 = _NSConcreteStackBlock;
        *(&v67 + 1) = 3221225472;
        *&v68 = sub_1001EFF9C;
        *(&v68 + 1) = &unk_10051C628;
        *&v69 = v66;
        v44 = v42;
        *(&v69 + 1) = v44;
        v45 = v41;
        *&v70 = v45;
        [v43 enumerateInstalledApplicationsOnPairedDevice:v40 withBlock:&v67];

        v46 = dispatch_time(0, 5000000000);
        if (dispatch_semaphore_wait(v44, v46))
        {
          v47 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            pairingID = [v40 pairingID];
            *v81 = 138412546;
            *&v81[4] = v66;
            *&v81[12] = 2114;
            *&v81[14] = pairingID;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[%@] Timed out getting watch apps for %{public}@", v81, 0x16u);
          }
        }

        else
        {
          [(NSArray *)obja addObjectsFromArray:v45];
        }
      }

      v37 = [v63 countByEnumeratingWithState:&v77 objects:buf count:16];
    }

    while (v37);
  }

  if ([(NSArray *)obja count])
  {
    v49 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v56 = [(NSArray *)obja componentsJoinedByString:@", "];
      *v81 = 138412546;
      *&v81[4] = v66;
      *&v81[12] = 2114;
      *&v81[14] = v56;
      _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "[%@] Active app bundles with watch apps are: [%{public}@]", v81, 0x16u);
    }
  }

  watchAppList = v64->_watchAppList;
  v64->_watchAppList = obja;

  v51 = +[MCProfileConnection sharedConnection];
  managedAppBundleIDs = [v51 managedAppBundleIDs];
  managedBundleIDs = v64->_managedBundleIDs;
  v64->_managedBundleIDs = managedAppBundleIDs;

  if ([(NSArray *)v64->_managedBundleIDs count])
  {
    v54 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = [(NSArray *)v64->_managedBundleIDs componentsJoinedByString:@", "];
      *buf = 138412546;
      v85 = v66;
      v86 = 2114;
      v87 = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "[%@] Device has the following managed apps: %{public}@", buf, 0x16u);
    }
  }

  objc_sync_exit(v64);
}

- (int64_t)purgeForVolume:(id)volume urgency:(int64_t)urgency desiredPurge:(id)purge client:(id)client
{
  volumeCopy = volume;
  purgeCopy = purge;
  clientCopy = client;
  objc_opt_class();
  objc_opt_self();
  if (sub_1003D3E2C(AppDefaultsManager, @"OffloadUnusedApps", 0) && (sub_1003BBF50(), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isHRNMode], v13, (v14 & 1) == 0))
  {
    v16 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.purge"];
    v17 = objc_alloc_init(_TtC9appstored6LogKey);
    longLongValue = [purgeCopy longLongValue];
    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v33 = v17;
      v34 = 2048;
      v35 = longLongValue;
      v36 = 2048;
      urgencyCopy = urgency;
      v38 = 2114;
      v39 = clientCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Offload started with desired purged: %{bytes}ld urgency: %ld for client: %{public}@", buf, 0x2Au);
    }

    v20 = [[ASDPurgeAppsRequestOptions alloc] initWithVolume:volumeCopy urgency:urgency];
    [v20 setApps:0];
    [v20 setDesiredPurgeAmount:purgeCopy];
    [v20 setOffloadOnly:1];
    v21 = sub_1001EC7EC(self, v20, v17, clientCopy);
    purgedApps = [v21 purgedApps];
    v23 = [purgedApps count];

    if (v23)
    {
      purgedApps2 = [v21 purgedApps];
      [purgedApps2 count];
      [purgeCopy longValue];
      [v21 purgedSize];
      ASDDebugLog();
    }

    v25 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      purgedApps3 = [v21 purgedApps];
      v26 = [purgedApps3 count];
      v27 = v16;
      longValue = [purgeCopy longValue];
      purgedSize = [v21 purgedSize];
      *buf = 138413314;
      v33 = v17;
      v34 = 2048;
      v35 = v26;
      v36 = 2048;
      urgencyCopy = longValue;
      v16 = v27;
      v38 = 2048;
      v39 = purgedSize;
      v40 = 2114;
      v41 = clientCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] Offload complete with offloaded apps: %ld desired purged: %{bytes}ld total purged: %{bytes}ld for client: %{public}@", buf, 0x34u);
    }

    purgedSize2 = [v21 purgedSize];
  }

  else
  {
    purgedSize2 = 0;
  }

  return purgedSize2;
}

@end