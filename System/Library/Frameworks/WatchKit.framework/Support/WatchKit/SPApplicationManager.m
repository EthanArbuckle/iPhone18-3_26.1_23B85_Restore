@interface SPApplicationManager
+ (id)sharedInstance;
- (BOOL)applicationContainsWK1Application:(id)a3;
- (BOOL)applicationContainsWK2Application:(id)a3;
- (BOOL)pluginHasFinishedBeginUsing:(id)a3;
- (BOOL)wasExtensionKilledDueToAppDeath:(id)a3;
- (BOOL)willXcodeInstallSockPuppetAppWithCompanionAppID:(id)a3;
- (SPApplicationManager)init;
- (id)gizmoApplicationInfoWithIdentifier:(id)a3;
- (id)gizmoPersistentDomain;
- (id)identifierForPluginProxy:(id)a3;
- (id)pluginIdentifierForProtocolIdentifier:(id)a3;
- (id)savedGizmoBuildVersion;
- (void)beginUsingPlugin:(id)a3 withCompletion:(id)a4;
- (void)callEndUsingCompletionsForPluginWithIdentifier:(id)a3;
- (void)clearXcodeWillInstallSockPuppetAppWithCompanionAppIDState:(id)a3;
- (void)discoverAllPlugIns:(id)a3;
- (void)discoverPlugInForIdentifier:(id)a3 found:(id)a4;
- (void)fetchInstalledApplicationsWithCompletion:(id)a3;
- (void)getOrBeginActivePlugInForApplication:(id)a3 setupBlock:(id)a4 completion:(id)a5;
- (void)handleInstallationsReportedByLaunchServices:(id)a3;
- (void)markPluginWithIdentifierNeedsBeginUsing:(id)a3;
- (void)notifyActiveForPluginWithIdentifier:(id)a3;
- (void)notifyInactiveForPluginWithIdentifier:(id)a3 completion:(id)a4;
- (void)registerForContinuousPluginDiscovery;
- (void)saveGizmoBuildVersion:(id)a3;
- (void)setExtension:(id)a3 wasKilledDueToAppDeath:(BOOL)a4;
- (void)stopUsingPluginIfNecessary:(id)a3;
- (void)updateCoreDuetSession:(id)a3;
- (void)waitForPreviousPluginToFinishEnding:(id)a3 toComplete:(id)a4;
- (void)xcodeWillInstallSockPuppetAppWithCompanionAppID:(id)a3;
@end

@implementation SPApplicationManager

+ (id)sharedInstance
{
  if (qword_100051D48 != -1)
  {
    sub_100029968();
  }

  v3 = qword_100051D50;

  return v3;
}

- (SPApplicationManager)init
{
  v22.receiver = self;
  v22.super_class = SPApplicationManager;
  v2 = [(SPApplicationManager *)&v22 init];
  v2->_installationMode = 0;
  v2->_domainVerified = 0;
  v3 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.companionappd"];
  watchKitAppsDomain = v2->_watchKitAppsDomain;
  v2->_watchKitAppsDomain = v3;

  v5 = +[NSMutableSet set];
  companionAppIDsInstalledViaXcode = v2->_companionAppIDsInstalledViaXcode;
  v2->_companionAppIDsInstalledViaXcode = v5;

  v7 = objc_alloc_init(NSObject);
  companionAppIDsInstalledViaXcodeLock = v2->_companionAppIDsInstalledViaXcodeLock;
  v2->_companionAppIDsInstalledViaXcodeLock = v7;

  v9 = dispatch_queue_create("com.apple.watchkit.pkpluginmanagement", 0);
  pkPluginManagementQueue = v2->_pkPluginManagementQueue;
  v2->_pkPluginManagementQueue = v9;

  v11 = dispatch_queue_create("com.apple.watchkit.pkplugincompletion", &_dispatch_queue_attr_concurrent);
  pkPluginCompletionQueue = v2->_pkPluginCompletionQueue;
  v2->_pkPluginCompletionQueue = v11;

  v13 = dispatch_queue_create("com.apple.watchkit.pkpluginbeginusingcheck", 0);
  pkPluginBeginUsingTimerQueue = v2->_pkPluginBeginUsingTimerQueue;
  v2->_pkPluginBeginUsingTimerQueue = v13;

  v15 = +[NSMutableDictionary dictionary];
  pkPluginBeginUsingTimers = v2->_pkPluginBeginUsingTimers;
  v2->_pkPluginBeginUsingTimers = v15;

  v17 = dispatch_queue_create("com.apple.companionappd.extensionsKilledDueToAppDeathAccessQueue", &_dispatch_queue_attr_concurrent);
  extensionsKilledDueToAppDeathAccessQueue = v2->_extensionsKilledDueToAppDeathAccessQueue;
  v2->_extensionsKilledDueToAppDeathAccessQueue = v17;

  v19 = objc_alloc_init(NSObject);
  domainUpdateLock = v2->_domainUpdateLock;
  v2->_domainUpdateLock = v19;

  [(SPApplicationManager *)v2 registerForContinuousPluginDiscovery];
  return v2;
}

- (void)registerForContinuousPluginDiscovery
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 persistentDomainForName:@"com.apple.companionappd"];
  v5 = [v4 objectForKey:@"SPEnableExcessivePluginLoadingLogging"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v18 = "[SPApplicationManager registerForContinuousPluginDiscovery]";
      v19 = 1024;
      v20 = 239;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: PLUGIN_LOADING: SPEnableExcessivePluginLoadingLogging default is set, so logging is on", buf, 0x12u);
    }
  }

  v8 = +[NSMutableDictionary dictionary];
  [(SPApplicationManager *)self setContinuouslyDiscoveredPlugins:v8];

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000171D0;
  v13[3] = &unk_100045D28;
  objc_copyWeak(&v14, buf);
  [(SPApplicationManager *)self setPluginsFoundBlock:v13];
  v9 = +[PKHost defaultHost];
  v15 = @"WKAppBundleIdentifier";
  v16 = @"<>";
  v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v11 = [(SPApplicationManager *)self pluginsFoundBlock];
  v12 = [v9 continuouslyDiscoverPlugInsForAttributes:v10 flags:0 found:v11];
  [(SPApplicationManager *)self setWkContinuousDiscoveryToken:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)callEndUsingCompletionsForPluginWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SPApplicationManager *)self continuouslyDiscoveredPlugins];
  v6 = v4;
  v7 = [v5 objectForKeyedSubscript:v4];

  [v7 removeObjectForKey:@"previousPlugin"];
  v8 = [v7 objectForKeyedSubscript:@"didEndCompletions"];
  if (v8)
  {
    [v7 removeObjectForKey:@"didEndCompletions"];
    v9 = [v7 objectForKeyedSubscript:@"plugin"];
    if (!v9)
    {
      v10 = wk_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100029A84();
      }
    }

    v17 = v8;
    v18 = v7;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [(SPApplicationManager *)self pkPluginCompletionQueue:v17];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100017B9C;
          block[3] = &unk_100045D50;
          v21 = v6;
          v23 = v15;
          v22 = v9;
          dispatch_async(v16, block);
        }

        v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v8 = v17;
    v7 = v18;
  }
}

- (void)waitForPreviousPluginToFinishEnding:(id)a3 toComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPApplicationManager *)self pkPluginManagementQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017F38;
  v11[3] = &unk_100045D98;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  objc_copyWeak(&v14, &location);
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)beginUsingPlugin:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPApplicationManager *)self pkPluginManagementQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001879C;
  block[3] = &unk_100045E38;
  v12 = v6;
  v9 = v6;
  objc_copyWeak(&v15, &location);
  v13 = self;
  v14 = v7;
  v10 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)getOrBeginActivePlugInForApplication:(id)a3 setupBlock:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[SPApplicationManager sharedInstance];
  v12 = [v11 pluginIdentifierForProtocolIdentifier:v8];

  if (v12)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100019898;
    v14[3] = &unk_100045ED8;
    v15 = v12;
    objc_copyWeak(&v20, &location);
    v18 = v10;
    v16 = self;
    v17 = v8;
    v19 = v9;
    [(SPApplicationManager *)self waitForPreviousPluginToFinishEnding:v15 toComplete:v14];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100029BBC();
    }

    (*(v10 + 2))(v10, 0);
  }
}

- (void)setExtension:(id)a3 wasKilledDueToAppDeath:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = wk_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v14 = "[SPApplicationManager setExtension:wasKilledDueToAppDeath:]";
    v15 = 1024;
    v16 = 506;
    v17 = 2114;
    v18 = v6;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: app %{public}@ wasKilledDueToAppDeath=%d", buf, 0x22u);
  }

  extensionsKilledDueToAppDeathAccessQueue = self->_extensionsKilledDueToAppDeathAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019FE8;
  block[3] = &unk_100045A88;
  v12 = v4;
  block[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_barrier_sync(extensionsKilledDueToAppDeathAccessQueue, block);
}

- (BOOL)wasExtensionKilledDueToAppDeath:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  extensionsKilledDueToAppDeathAccessQueue = self->_extensionsKilledDueToAppDeathAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A14C;
  block[3] = &unk_100045A40;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(extensionsKilledDueToAppDeathAccessQueue, block);
  LOBYTE(extensionsKilledDueToAppDeathAccessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return extensionsKilledDueToAppDeathAccessQueue;
}

- (void)handleInstallationsReportedByLaunchServices:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"isPlaceholder"];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {
    v25 = v4;
    [v4 objectForKeyedSubscript:@"bundleIDs"];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v38 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      v11 = &PLLogRegisteredEvent_ptr;
      v26 = *v36;
      v27 = v7;
      do
      {
        v12 = 0;
        v28 = v9;
        do
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v35 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [v11[228] applicationProxyForIdentifier:v13];
          if (![(SPApplicationManager *)self applicationContainsWK2Application:v15]&& [(SPApplicationManager *)self applicationContainsWK1Application:v15])
          {
            v29 = v15;
            v30 = v14;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v16 = [v15 plugInKitPlugins];
            v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v32;
              do
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v32 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v31 + 1) + 8 * i);
                  v22 = [v21 protocol];
                  v23 = [v22 isEqualToString:@"com.apple.watchkit"];

                  if (v23)
                  {
                    v24 = [(SPApplicationManager *)self identifierForPluginProxy:v21];
                    if (v24)
                    {
                      [(SPApplicationManager *)self stopUsingPluginIfNecessary:v24];
                    }
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v18);
            }

            v10 = v26;
            v7 = v27;
            v9 = v28;
            v15 = v29;
            v11 = &PLLogRegisteredEvent_ptr;
            v14 = v30;
          }

          objc_autoreleasePoolPop(v14);
          v12 = v12 + 1;
        }

        while (v12 != v9);
        v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v9);
    }

    v4 = v25;
  }
}

- (id)gizmoPersistentDomain
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100016BB0;
  v14 = sub_100016BC0;
  v15 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[ACXDeviceConnection sharedDeviceConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A570;
  v7[3] = &unk_100045F00;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [v3 fetchInstalledApplicationsForPairedDevice:0 completion:v7];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)gizmoApplicationInfoWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(SPApplicationManager *)self gizmoPersistentDomain];
  DeepCopy = [v6 objectForKeyedSubscript:v4];

  if (DeepCopy)
  {
    v8 = [v6 objectForKeyedSubscript:v4];
    DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v8, 0);
  }

  objc_autoreleasePoolPop(v5);

  return DeepCopy;
}

- (id)pluginIdentifierForProtocolIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SPApplicationManager *)self gizmoPersistentDomain];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"SPPluginBundleIdKey"];
    v9 = [v7 objectForKeyedSubscript:@"s"];
    v10 = [v9 intValue];

    if (v10 - 4 > 0xFFFFFFFD)
    {
      v12 = [v8 copy];
    }

    else
    {
      v11 = wk_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136446978;
        v15 = "[SPApplicationManager pluginIdentifierForProtocolIdentifier:]";
        v16 = 1024;
        v17 = 588;
        v18 = 2114;
        v19 = v4;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Asked for plugin for %{public}@. Answer is %{public}@, but status is not installed, so returning nil.", &v14, 0x26u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)identifierForPluginProxy:(id)a3
{
  v3 = [a3 pluginKitDictionary];
  v4 = [v3 objectForKeyedSubscript:@"NSExtensionAttributes"];
  v5 = [v4 objectForKeyedSubscript:@"WKAppBundleIdentifier"];

  return v5;
}

- (void)stopUsingPluginIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(SPApplicationManager *)self gizmoApplicationInfoWithIdentifier:v4];
  v6 = [v5 objectForKeyedSubscript:@"SPPluginBundleIdKey"];
  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(SPApplicationManager *)self pkPluginManagementQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A9C8;
    block[3] = &unk_100045D00;
    v9 = v6;
    objc_copyWeak(&v10, &location);
    dispatch_async(v7, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (BOOL)applicationContainsWK2Application:(id)a3
{
  v9 = 0;
  v3 = [a3 bundleURL];
  v4 = [v3 path];
  v5 = [v4 stringByAppendingPathComponent:@"Watch"];

  v6 = +[NSFileManager defaultManager];
  LOBYTE(v4) = [v6 fileExistsAtPath:v5 isDirectory:&v9];
  v7 = v9;

  return v4 & v7;
}

- (BOOL)applicationContainsWK1Application:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 plugInKitPlugins];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) protocol];
        v9 = [v8 isEqualToString:@"com.apple.watchkit"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)fetchInstalledApplicationsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ACXDeviceConnection sharedDeviceConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001AFB0;
  v6[3] = &unk_100045F50;
  v7 = v3;
  v5 = v3;
  [v4 fetchInstalledApplicationsForPairedDevice:0 completion:v6];
}

- (void)xcodeWillInstallSockPuppetAppWithCompanionAppID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(SPApplicationManager *)self companionAppIDsInstalledViaXcodeLock];
    objc_sync_enter(v5);
    v6 = [(SPApplicationManager *)self companionAppIDsInstalledViaXcode];
    [v6 addObject:v7];

    objc_sync_exit(v5);
    v4 = v7;
  }
}

- (BOOL)willXcodeInstallSockPuppetAppWithCompanionAppID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SPApplicationManager *)self companionAppIDsInstalledViaXcodeLock];
    objc_sync_enter(v5);
    v6 = [(SPApplicationManager *)self companionAppIDsInstalledViaXcode];
    v7 = [v6 containsObject:v4];

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)clearXcodeWillInstallSockPuppetAppWithCompanionAppIDState:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(SPApplicationManager *)self companionAppIDsInstalledViaXcodeLock];
    objc_sync_enter(v5);
    v6 = [(SPApplicationManager *)self companionAppIDsInstalledViaXcode];
    [v6 removeObject:v7];

    objc_sync_exit(v5);
    v4 = v7;
  }
}

- (void)updateCoreDuetSession:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"i"];
  v6 = [v4 objectForKeyedSubscript:@"cda"];

  v7 = [(SPApplicationManager *)self gizmoPersistentDomain];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"SPContainerAppBundleId"];
    v10 = [v8 objectForKeyedSubscript:@"SPPluginBundleIdKey"];
    v11 = [NSMutableArray arrayWithCapacity:3];
    [v11 addObject:v5];
    if (v9)
    {
      [v11 addObject:v9];
    }

    if (v10)
    {
      [v11 addObject:v10];
    }

    if ([v6 isEqualToString:@"a"])
    {
      v12 = wk_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136446722;
        v32 = "[SPApplicationManager updateCoreDuetSession:]";
        v33 = 1024;
        v34 = 719;
        v35 = 2114;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: calling [_CDClientContext addObjects:] with %{public}@", &v31, 0x1Cu);
      }

      v13 = [sub_10001B538() userContext];
      v21 = [sub_10001B618(v13 v14];
      [v13 addObjects:v11 toArrayAtKeyPath:v21];
    }

    else
    {
      v22 = [v6 isEqualToString:@"d"];
      v23 = wk_default_log();
      v13 = v23;
      if (!v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100029E30();
        }

        goto LABEL_19;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136446722;
        v32 = "[SPApplicationManager updateCoreDuetSession:]";
        v33 = 1024;
        v34 = 723;
        v35 = 2114;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: calling [_CDClientContext removeObjects:] with %{public}@", &v31, 0x1Cu);
      }

      v13 = [sub_10001B538() userContext];
      v21 = [sub_10001B618(v13 v24];
      [v13 removeObjects:v11 fromArrayAtKeyPath:v21];
    }

LABEL_19:
    goto LABEL_20;
  }

  v9 = wk_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100029EC0();
  }

LABEL_20:
}

- (void)discoverAllPlugIns:(id)a3
{
  v4 = a3;
  v5 = +[PKHost defaultHost];
  v10 = @"WKAppBundleIdentifier";
  v11 = @"<>";
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B824;
  v8[3] = &unk_100045F78;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 discoverPlugInsForAttributes:v6 flags:0 found:v8];
}

- (void)discoverPlugInForIdentifier:(id)a3 found:(id)a4
{
  v6 = a4;
  v13 = @"WKAppBundleIdentifier";
  v14 = a3;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = +[PKHost defaultHost];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001BA00;
  v11[3] = &unk_100045F78;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 discoverPlugInsForAttributes:v8 flags:0 found:v11];
}

- (void)markPluginWithIdentifierNeedsBeginUsing:(id)a3
{
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[SPApplicationManager markPluginWithIdentifierNeedsBeginUsing:]";
    v13 = 1024;
    v14 = 768;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: pluginIdentifier is %{public}@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v6 = [(SPApplicationManager *)self pkPluginManagementQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BD54;
  v8[3] = &unk_1000459C8;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (BOOL)pluginHasFinishedBeginUsing:(id)a3
{
  v4 = a3;
  v5 = [(SPApplicationManager *)self continuouslyDiscoveredPlugins];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"finishedBeginUsing"];
  LOBYTE(v4) = [v7 BOOLValue];

  return v4;
}

- (void)notifyActiveForPluginWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[SPApplicationManager notifyActiveForPluginWithIdentifier:]";
    v13 = 1024;
    v14 = 785;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: notifyActiveForPluginWithIdentifier:%{public}@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v6 = [(SPApplicationManager *)self pkPluginManagementQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C004;
  v8[3] = &unk_1000459C8;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)notifyInactiveForPluginWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[SPApplicationManager notifyInactiveForPluginWithIdentifier:completion:]";
    v18 = 1024;
    v19 = 796;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: notifyInactiveForPluginWithIdentifier:%{public}@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v9 = [(SPApplicationManager *)self pkPluginManagementQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C250;
  block[3] = &unk_100045FC8;
  objc_copyWeak(&v15, buf);
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (id)savedGizmoBuildVersion
{
  v3 = [(SPApplicationManager *)self domainUpdateLock];
  objc_sync_enter(v3);
  v4 = [(NPSDomainAccessor *)self->_watchKitAppsDomain synchronize];
  v5 = [(NPSDomainAccessor *)self->_watchKitAppsDomain objectForKey:@"SPGizmoBuildVersion"];
  objc_sync_exit(v3);

  return v5;
}

- (void)saveGizmoBuildVersion:(id)a3
{
  v6 = a3;
  v4 = [(SPApplicationManager *)self domainUpdateLock];
  objc_sync_enter(v4);
  [(NPSDomainAccessor *)self->_watchKitAppsDomain setObject:v6 forKey:@"SPGizmoBuildVersion"];
  v5 = [(NPSDomainAccessor *)self->_watchKitAppsDomain synchronize];
  objc_sync_exit(v4);
}

@end