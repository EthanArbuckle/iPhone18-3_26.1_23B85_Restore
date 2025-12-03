@interface SPApplicationManager
+ (id)sharedInstance;
- (BOOL)applicationContainsWK1Application:(id)application;
- (BOOL)applicationContainsWK2Application:(id)application;
- (BOOL)pluginHasFinishedBeginUsing:(id)using;
- (BOOL)wasExtensionKilledDueToAppDeath:(id)death;
- (BOOL)willXcodeInstallSockPuppetAppWithCompanionAppID:(id)d;
- (SPApplicationManager)init;
- (id)gizmoApplicationInfoWithIdentifier:(id)identifier;
- (id)gizmoPersistentDomain;
- (id)identifierForPluginProxy:(id)proxy;
- (id)pluginIdentifierForProtocolIdentifier:(id)identifier;
- (id)savedGizmoBuildVersion;
- (void)beginUsingPlugin:(id)plugin withCompletion:(id)completion;
- (void)callEndUsingCompletionsForPluginWithIdentifier:(id)identifier;
- (void)clearXcodeWillInstallSockPuppetAppWithCompanionAppIDState:(id)state;
- (void)discoverAllPlugIns:(id)ins;
- (void)discoverPlugInForIdentifier:(id)identifier found:(id)found;
- (void)fetchInstalledApplicationsWithCompletion:(id)completion;
- (void)getOrBeginActivePlugInForApplication:(id)application setupBlock:(id)block completion:(id)completion;
- (void)handleInstallationsReportedByLaunchServices:(id)services;
- (void)markPluginWithIdentifierNeedsBeginUsing:(id)using;
- (void)notifyActiveForPluginWithIdentifier:(id)identifier;
- (void)notifyInactiveForPluginWithIdentifier:(id)identifier completion:(id)completion;
- (void)registerForContinuousPluginDiscovery;
- (void)saveGizmoBuildVersion:(id)version;
- (void)setExtension:(id)extension wasKilledDueToAppDeath:(BOOL)death;
- (void)stopUsingPluginIfNecessary:(id)necessary;
- (void)updateCoreDuetSession:(id)session;
- (void)waitForPreviousPluginToFinishEnding:(id)ending toComplete:(id)complete;
- (void)xcodeWillInstallSockPuppetAppWithCompanionAppID:(id)d;
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
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
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
  pluginsFoundBlock = [(SPApplicationManager *)self pluginsFoundBlock];
  v12 = [v9 continuouslyDiscoverPlugInsForAttributes:v10 flags:0 found:pluginsFoundBlock];
  [(SPApplicationManager *)self setWkContinuousDiscoveryToken:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)callEndUsingCompletionsForPluginWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  continuouslyDiscoveredPlugins = [(SPApplicationManager *)self continuouslyDiscoveredPlugins];
  v6 = identifierCopy;
  v7 = [continuouslyDiscoveredPlugins objectForKeyedSubscript:identifierCopy];

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

- (void)waitForPreviousPluginToFinishEnding:(id)ending toComplete:(id)complete
{
  endingCopy = ending;
  completeCopy = complete;
  objc_initWeak(&location, self);
  pkPluginManagementQueue = [(SPApplicationManager *)self pkPluginManagementQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017F38;
  v11[3] = &unk_100045D98;
  v12 = endingCopy;
  v13 = completeCopy;
  v9 = endingCopy;
  v10 = completeCopy;
  objc_copyWeak(&v14, &location);
  dispatch_async(pkPluginManagementQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)beginUsingPlugin:(id)plugin withCompletion:(id)completion
{
  pluginCopy = plugin;
  completionCopy = completion;
  objc_initWeak(&location, self);
  pkPluginManagementQueue = [(SPApplicationManager *)self pkPluginManagementQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001879C;
  block[3] = &unk_100045E38;
  v12 = pluginCopy;
  v9 = pluginCopy;
  objc_copyWeak(&v15, &location);
  selfCopy = self;
  v14 = completionCopy;
  v10 = completionCopy;
  dispatch_async(pkPluginManagementQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)getOrBeginActivePlugInForApplication:(id)application setupBlock:(id)block completion:(id)completion
{
  applicationCopy = application;
  blockCopy = block;
  completionCopy = completion;
  v11 = +[SPApplicationManager sharedInstance];
  v12 = [v11 pluginIdentifierForProtocolIdentifier:applicationCopy];

  if (v12)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100019898;
    v14[3] = &unk_100045ED8;
    v15 = v12;
    objc_copyWeak(&v20, &location);
    v18 = completionCopy;
    selfCopy = self;
    v17 = applicationCopy;
    v19 = blockCopy;
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

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)setExtension:(id)extension wasKilledDueToAppDeath:(BOOL)death
{
  deathCopy = death;
  extensionCopy = extension;
  v7 = wk_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v14 = "[SPApplicationManager setExtension:wasKilledDueToAppDeath:]";
    v15 = 1024;
    v16 = 506;
    v17 = 2114;
    v18 = extensionCopy;
    v19 = 1024;
    v20 = deathCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: app %{public}@ wasKilledDueToAppDeath=%d", buf, 0x22u);
  }

  extensionsKilledDueToAppDeathAccessQueue = self->_extensionsKilledDueToAppDeathAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019FE8;
  block[3] = &unk_100045A88;
  v12 = deathCopy;
  block[4] = self;
  v11 = extensionCopy;
  v9 = extensionCopy;
  dispatch_barrier_sync(extensionsKilledDueToAppDeathAccessQueue, block);
}

- (BOOL)wasExtensionKilledDueToAppDeath:(id)death
{
  deathCopy = death;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  extensionsKilledDueToAppDeathAccessQueue = self->_extensionsKilledDueToAppDeathAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A14C;
  block[3] = &unk_100045A40;
  v9 = deathCopy;
  v10 = &v11;
  block[4] = self;
  v6 = deathCopy;
  dispatch_sync(extensionsKilledDueToAppDeathAccessQueue, block);
  LOBYTE(extensionsKilledDueToAppDeathAccessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return extensionsKilledDueToAppDeathAccessQueue;
}

- (void)handleInstallationsReportedByLaunchServices:(id)services
{
  servicesCopy = services;
  v5 = [servicesCopy objectForKeyedSubscript:@"isPlaceholder"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v25 = servicesCopy;
    [servicesCopy objectForKeyedSubscript:@"bundleIDs"];
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
            plugInKitPlugins = [v15 plugInKitPlugins];
            v17 = [plugInKitPlugins countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                    objc_enumerationMutation(plugInKitPlugins);
                  }

                  v21 = *(*(&v31 + 1) + 8 * i);
                  protocol = [v21 protocol];
                  v23 = [protocol isEqualToString:@"com.apple.watchkit"];

                  if (v23)
                  {
                    v24 = [(SPApplicationManager *)self identifierForPluginProxy:v21];
                    if (v24)
                    {
                      [(SPApplicationManager *)self stopUsingPluginIfNecessary:v24];
                    }
                  }
                }

                v18 = [plugInKitPlugins countByEnumeratingWithState:&v31 objects:v39 count:16];
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

    servicesCopy = v25;
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

- (id)gizmoApplicationInfoWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  gizmoPersistentDomain = [(SPApplicationManager *)self gizmoPersistentDomain];
  DeepCopy = [gizmoPersistentDomain objectForKeyedSubscript:identifierCopy];

  if (DeepCopy)
  {
    v8 = [gizmoPersistentDomain objectForKeyedSubscript:identifierCopy];
    DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v8, 0);
  }

  objc_autoreleasePoolPop(v5);

  return DeepCopy;
}

- (id)pluginIdentifierForProtocolIdentifier:(id)identifier
{
  identifierCopy = identifier;
  gizmoPersistentDomain = [(SPApplicationManager *)self gizmoPersistentDomain];
  v6 = [gizmoPersistentDomain objectForKeyedSubscript:identifierCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"SPPluginBundleIdKey"];
    v9 = [v7 objectForKeyedSubscript:@"s"];
    intValue = [v9 intValue];

    if (intValue - 4 > 0xFFFFFFFD)
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
        v19 = identifierCopy;
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

- (id)identifierForPluginProxy:(id)proxy
{
  pluginKitDictionary = [proxy pluginKitDictionary];
  v4 = [pluginKitDictionary objectForKeyedSubscript:@"NSExtensionAttributes"];
  v5 = [v4 objectForKeyedSubscript:@"WKAppBundleIdentifier"];

  return v5;
}

- (void)stopUsingPluginIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = [(SPApplicationManager *)self gizmoApplicationInfoWithIdentifier:necessaryCopy];
  v6 = [v5 objectForKeyedSubscript:@"SPPluginBundleIdKey"];
  if (v6)
  {
    objc_initWeak(&location, self);
    pkPluginManagementQueue = [(SPApplicationManager *)self pkPluginManagementQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A9C8;
    block[3] = &unk_100045D00;
    v9 = v6;
    objc_copyWeak(&v10, &location);
    dispatch_async(pkPluginManagementQueue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (BOOL)applicationContainsWK2Application:(id)application
{
  v9 = 0;
  bundleURL = [application bundleURL];
  path = [bundleURL path];
  v5 = [path stringByAppendingPathComponent:@"Watch"];

  v6 = +[NSFileManager defaultManager];
  LOBYTE(path) = [v6 fileExistsAtPath:v5 isDirectory:&v9];
  v7 = v9;

  return path & v7;
}

- (BOOL)applicationContainsWK1Application:(id)application
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  plugInKitPlugins = [application plugInKitPlugins];
  v4 = [plugInKitPlugins countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(plugInKitPlugins);
        }

        protocol = [*(*(&v12 + 1) + 8 * i) protocol];
        v9 = [protocol isEqualToString:@"com.apple.watchkit"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [plugInKitPlugins countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)fetchInstalledApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ACXDeviceConnection sharedDeviceConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001AFB0;
  v6[3] = &unk_100045F50;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 fetchInstalledApplicationsForPairedDevice:0 completion:v6];
}

- (void)xcodeWillInstallSockPuppetAppWithCompanionAppID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v7 = dCopy;
    companionAppIDsInstalledViaXcodeLock = [(SPApplicationManager *)self companionAppIDsInstalledViaXcodeLock];
    objc_sync_enter(companionAppIDsInstalledViaXcodeLock);
    companionAppIDsInstalledViaXcode = [(SPApplicationManager *)self companionAppIDsInstalledViaXcode];
    [companionAppIDsInstalledViaXcode addObject:v7];

    objc_sync_exit(companionAppIDsInstalledViaXcodeLock);
    dCopy = v7;
  }
}

- (BOOL)willXcodeInstallSockPuppetAppWithCompanionAppID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    companionAppIDsInstalledViaXcodeLock = [(SPApplicationManager *)self companionAppIDsInstalledViaXcodeLock];
    objc_sync_enter(companionAppIDsInstalledViaXcodeLock);
    companionAppIDsInstalledViaXcode = [(SPApplicationManager *)self companionAppIDsInstalledViaXcode];
    v7 = [companionAppIDsInstalledViaXcode containsObject:dCopy];

    objc_sync_exit(companionAppIDsInstalledViaXcodeLock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)clearXcodeWillInstallSockPuppetAppWithCompanionAppIDState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v7 = stateCopy;
    companionAppIDsInstalledViaXcodeLock = [(SPApplicationManager *)self companionAppIDsInstalledViaXcodeLock];
    objc_sync_enter(companionAppIDsInstalledViaXcodeLock);
    companionAppIDsInstalledViaXcode = [(SPApplicationManager *)self companionAppIDsInstalledViaXcode];
    [companionAppIDsInstalledViaXcode removeObject:v7];

    objc_sync_exit(companionAppIDsInstalledViaXcodeLock);
    stateCopy = v7;
  }
}

- (void)updateCoreDuetSession:(id)session
{
  sessionCopy = session;
  v5 = [sessionCopy objectForKeyedSubscript:@"i"];
  v6 = [sessionCopy objectForKeyedSubscript:@"cda"];

  gizmoPersistentDomain = [(SPApplicationManager *)self gizmoPersistentDomain];
  v8 = [gizmoPersistentDomain objectForKeyedSubscript:v5];

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

      userContext = [sub_10001B538() userContext];
      v21 = [sub_10001B618(userContext v14];
      [userContext addObjects:v11 toArrayAtKeyPath:v21];
    }

    else
    {
      v22 = [v6 isEqualToString:@"d"];
      v23 = wk_default_log();
      userContext = v23;
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
        _os_log_impl(&_mh_execute_header, userContext, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: calling [_CDClientContext removeObjects:] with %{public}@", &v31, 0x1Cu);
      }

      userContext = [sub_10001B538() userContext];
      v21 = [sub_10001B618(userContext v24];
      [userContext removeObjects:v11 fromArrayAtKeyPath:v21];
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

- (void)discoverAllPlugIns:(id)ins
{
  insCopy = ins;
  v5 = +[PKHost defaultHost];
  v10 = @"WKAppBundleIdentifier";
  v11 = @"<>";
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B824;
  v8[3] = &unk_100045F78;
  v8[4] = self;
  v9 = insCopy;
  v7 = insCopy;
  [v5 discoverPlugInsForAttributes:v6 flags:0 found:v8];
}

- (void)discoverPlugInForIdentifier:(id)identifier found:(id)found
{
  foundCopy = found;
  v13 = @"WKAppBundleIdentifier";
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  v8 = [NSDictionary dictionaryWithObjects:&identifierCopy forKeys:&v13 count:1];
  v9 = +[PKHost defaultHost];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001BA00;
  v11[3] = &unk_100045F78;
  v11[4] = self;
  v12 = foundCopy;
  v10 = foundCopy;
  [v9 discoverPlugInsForAttributes:v8 flags:0 found:v11];
}

- (void)markPluginWithIdentifierNeedsBeginUsing:(id)using
{
  usingCopy = using;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[SPApplicationManager markPluginWithIdentifierNeedsBeginUsing:]";
    v13 = 1024;
    v14 = 768;
    v15 = 2114;
    v16 = usingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: pluginIdentifier is %{public}@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  pkPluginManagementQueue = [(SPApplicationManager *)self pkPluginManagementQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BD54;
  v8[3] = &unk_1000459C8;
  objc_copyWeak(&v10, buf);
  v9 = usingCopy;
  v7 = usingCopy;
  dispatch_async(pkPluginManagementQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (BOOL)pluginHasFinishedBeginUsing:(id)using
{
  usingCopy = using;
  continuouslyDiscoveredPlugins = [(SPApplicationManager *)self continuouslyDiscoveredPlugins];
  v6 = [continuouslyDiscoveredPlugins objectForKeyedSubscript:usingCopy];

  v7 = [v6 objectForKeyedSubscript:@"finishedBeginUsing"];
  LOBYTE(usingCopy) = [v7 BOOLValue];

  return usingCopy;
}

- (void)notifyActiveForPluginWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[SPApplicationManager notifyActiveForPluginWithIdentifier:]";
    v13 = 1024;
    v14 = 785;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: notifyActiveForPluginWithIdentifier:%{public}@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  pkPluginManagementQueue = [(SPApplicationManager *)self pkPluginManagementQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C004;
  v8[3] = &unk_1000459C8;
  objc_copyWeak(&v10, buf);
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(pkPluginManagementQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)notifyInactiveForPluginWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[SPApplicationManager notifyInactiveForPluginWithIdentifier:completion:]";
    v18 = 1024;
    v19 = 796;
    v20 = 2114;
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: notifyInactiveForPluginWithIdentifier:%{public}@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  pkPluginManagementQueue = [(SPApplicationManager *)self pkPluginManagementQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C250;
  block[3] = &unk_100045FC8;
  objc_copyWeak(&v15, buf);
  v13 = identifierCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(pkPluginManagementQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (id)savedGizmoBuildVersion
{
  domainUpdateLock = [(SPApplicationManager *)self domainUpdateLock];
  objc_sync_enter(domainUpdateLock);
  synchronize = [(NPSDomainAccessor *)self->_watchKitAppsDomain synchronize];
  v5 = [(NPSDomainAccessor *)self->_watchKitAppsDomain objectForKey:@"SPGizmoBuildVersion"];
  objc_sync_exit(domainUpdateLock);

  return v5;
}

- (void)saveGizmoBuildVersion:(id)version
{
  versionCopy = version;
  domainUpdateLock = [(SPApplicationManager *)self domainUpdateLock];
  objc_sync_enter(domainUpdateLock);
  [(NPSDomainAccessor *)self->_watchKitAppsDomain setObject:versionCopy forKey:@"SPGizmoBuildVersion"];
  synchronize = [(NPSDomainAccessor *)self->_watchKitAppsDomain synchronize];
  objc_sync_exit(domainUpdateLock);
}

@end