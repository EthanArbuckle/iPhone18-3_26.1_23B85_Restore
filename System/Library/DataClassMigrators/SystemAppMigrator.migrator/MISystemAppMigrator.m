@interface MISystemAppMigrator
- (BOOL)_getLSEligiblityKey:(id)a3 appliesTo:(BOOL *)a4 forBundleID:(id)a5 withAppInfo:(id)a6 withEvaluator:(id)a7;
- (BOOL)appInstalledSuccessfullyWithBundleID:(id)a3;
- (BOOL)demoteAppWithBundleID:(id)a3 demotionReason:(unint64_t)a4;
- (BOOL)demoteAppWithBundleID:(id)a3 desiredAppState:(int)a4 isInstalled:(BOOL)a5;
- (BOOL)existsUnusedDataContainerWithBundleID:(id)a3;
- (BOOL)firstTimeEncounteringDeletableSystemAppWithBundleId:(id)a3;
- (BOOL)installDemotedPlaceholderWithBundleID:(id)a3 installType:(unint64_t)a4;
- (BOOL)installOrUpdateAppWithBundleID:(id)a3 appURL:(id)a4 isInstalled:(BOOL)a5;
- (BOOL)isCurrentlyInstalledAppInTrustCacheForBundleID:(id)a3;
- (BOOL)isRegulatedForChina;
- (BOOL)isiPad;
- (BOOL)performMigration;
- (BOOL)setInstallOptionsForCoordinator:(id)a3 bundleID:(id)a4 error:(id *)a5;
- (BOOL)setPlaceholderPromiseForCoordinator:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 error:(id *)a6;
- (BOOL)shouldIgnoreAppsNotInTrustCache;
- (BOOL)waitForSystemAppInstallDispatchGroup;
- (MISystemAppMigrator)init;
- (NSString)previousBuildVersion;
- (NSURL)ignoreAppsNotInTrustCacheSentinelFileURL;
- (id)_removeNotAllowedAppsFromSystemAppState:(id)a3;
- (id)currentlyInstalledSystemAppBundleIdentifiers;
- (id)lookupSystemAppStateWithOptions:(id)a3;
- (void)capturePreferencesToMigrate;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4;
- (void)enterSystemAppInstallDispatchGroupForBundleID:(id)a3;
- (void)finalizePreferencesToMigrate;
- (void)handleAppEligibilityRequirements;
- (void)handleAppFeatureFlagRequirements;
- (void)handleAppsMissingRequiredCapabilities;
- (void)handleAppsNotCompatibleWithDeviceFamily;
- (void)handleDefaultInstall;
- (void)handleForceInstalledApps;
- (void)handleSpecialAppActivity;
- (void)handleSpecialAppNews;
- (void)handleSupersededSystemApps;
- (void)leaveSystemAppInstallDispatchGroupForBundleID:(id)a3;
- (void)markAppAsNotAllowed:(id)a3;
- (void)markAppAsUninstalled:(id)a3;
- (void)markAppSuccessfullyInstalledWithBundleID:(id)a3;
- (void)synchronouslyCancelAllAppStoreRequests;
- (void)usingAppStoreInstallSystemAppAppWithBundleID:(id)a3;
@end

@implementation MISystemAppMigrator

- (MISystemAppMigrator)init
{
  v72.receiver = self;
  v72.super_class = MISystemAppMigrator;
  v2 = [(MISystemAppMigrator *)&v72 init];
  v3 = v2;
  if (v2)
  {
    itemsToInstall = v2->_itemsToInstall;
    v2->_itemsToInstall = 0;

    v5 = dispatch_group_create();
    systemAppInstallGroup = v3->_systemAppInstallGroup;
    v3->_systemAppInstallGroup = v5;

    v7 = objc_opt_new();
    pendingAppInstalls = v3->_pendingAppInstalls;
    v3->_pendingAppInstalls = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MISystemAppMigrator.PendingAppInstallListQueue", v9);
    pendingAppInstallListQueue = v3->_pendingAppInstallListQueue;
    v3->_pendingAppInstallListQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.MISystemAppMigrator.InstalledAppListQueue", v12);
    installedAppListQueue = v3->_installedAppListQueue;
    v3->_installedAppListQueue = v13;

    v15 = MGGetStringAnswer();
    deviceClass = v3->_deviceClass;
    v3->_deviceClass = v15;

    v17 = +[MIFileManager defaultManager];
    v18 = &MISValidateSignature_ptr;
    v19 = +[MIDaemonConfiguration sharedInstance];
    v20 = [v19 systemAppPlaceholdersDirectory];
    v21 = [v17 itemDoesNotExistAtURL:v20];

    if (v21)
    {
      v22 = +[MIDaemonConfiguration sharedInstance];
      v23 = [v22 systemAppPlaceholdersDirectory];
      _DMLogFunc();
LABEL_30:

      return v3;
    }

    v64 = v3;
    v22 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v24 = +[MIDaemonConfiguration sharedInstance];
    v25 = [v24 systemAppPlaceholderBundleIDToInfoMap];
    v26 = [v25 allKeys];

    obj = v26;
    v27 = [v26 countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v27)
    {
      v28 = v27;
      v66 = *v69;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          v30 = v22;
          if (*v69 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v68 + 1) + 8 * i);
          v32 = objc_opt_new();
          v33 = v18;
          v34 = [v18[109] sharedInstance];
          v35 = [v34 stagedSystemAppBundleIDToInfoMap];
          v36 = [v35 objectForKeyedSubscript:v31];
          v37 = [v36 objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];

          if (!v37)
          {
            v38 = [v33[109] sharedInstance];
            v39 = [v38 stagedSystemAppsDirectory];
            v40 = [v39 URLByAppendingPathComponent:v31];

            v41 = +[MIFileManager defaultManager];
            LODWORD(v39) = [v41 itemExistsAtURL:v40];

            if (v39)
            {
              v37 = v40;
            }

            else
            {
              v37 = 0;
            }
          }

          [v32 setObject:v37 forKeyedSubscript:@"com.apple.MobileInstallation.stagedAppURL"];
          v42 = [v32 copy];
          v22 = v30;
          [v30 setObject:v42 forKeyedSubscript:v31];

          v18 = v33;
        }

        v28 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v28);
    }

    v43 = [v22 copy];
    v3 = v64;
    v44 = v64->_itemsToInstall;
    v64->_itemsToInstall = v43;

    v45 = objc_opt_new();
    appBundleIDsRequestingStoreDownload = v64->_appBundleIDsRequestingStoreDownload;
    v64->_appBundleIDsRequestingStoreDownload = v45;

    v47 = objc_opt_new();
    appBundleIDsToUninstall = v64->_appBundleIDsToUninstall;
    v64->_appBundleIDsToUninstall = v47;

    v49 = objc_opt_new();
    appBundleIDsInstalledSuccessfully = v64->_appBundleIDsInstalledSuccessfully;
    v64->_appBundleIDsInstalledSuccessfully = v49;

    v51 = objc_opt_new();
    currentlyInstallingCoordinators = v64->_currentlyInstallingCoordinators;
    v64->_currentlyInstallingCoordinators = v51;

    if ([(NSDictionary *)v64->_itemsToInstall count])
    {
      v63 = [(NSDictionary *)v64->_itemsToInstall count];
      _DMLogFunc();
    }

    else
    {
      _DMLogFunc();
      v53 = v64->_itemsToInstall;
      v64->_itemsToInstall = 0;
    }

    v23 = [NSURL fileURLWithPath:@"/private/var/preferences/com.apple.demo.SADForceInstall.plist", v63];
    v67 = 0;
    v54 = [NSArray arrayWithContentsOfURL:v23 error:&v67];
    v55 = v67;
    v56 = v55;
    if (v54)
    {
      objc_opt_class();
      if (MIArrayContainsOnlyClass(v54))
      {
        v57 = [NSSet setWithArray:v54];
        forceInstallBundleIDs = v64->_forceInstallBundleIDs;
        v64->_forceInstallBundleIDs = v57;
LABEL_28:

LABEL_29:
        preferencesToMigrate = v64->_preferencesToMigrate;
        v64->_preferencesToMigrate = &__NSArray0__struct;

        goto LABEL_30;
      }
    }

    else
    {
      v59 = [v55 domain];
      if ([v59 isEqualToString:NSCocoaErrorDomain])
      {
        v60 = [v56 code];

        if (v60 == &stru_B8.reserved3)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    forceInstallBundleIDs = [v23 path];
    _DMLogFunc();
    goto LABEL_28;
  }

  return v3;
}

- (void)enterSystemAppInstallDispatchGroupForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MISystemAppMigrator *)self pendingAppInstallListQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1FF4;
  v7[3] = &unk_104A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)leaveSystemAppInstallDispatchGroupForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MISystemAppMigrator *)self pendingAppInstallListQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2114;
  v7[3] = &unk_104A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (BOOL)waitForSystemAppInstallDispatchGroup
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(MISystemAppMigrator *)self pendingAppInstallListQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2304;
  block[3] = &unk_104C8;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(v3, block);

  v4 = [(MISystemAppMigrator *)self systemAppInstallGroup];
  v5 = dispatch_time(0, 1000000000 * v12[3]);
  v6 = dispatch_group_wait(v4, v5);

  if (v6)
  {
    v7 = [(MISystemAppMigrator *)self pendingAppInstallListQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_2368;
    v9[3] = &unk_104F0;
    v9[4] = self;
    v9[5] = &v11;
    dispatch_sync(v7, v9);
  }

  _Block_object_dispose(&v11, 8);
  return v6 == 0;
}

- (BOOL)firstTimeEncounteringDeletableSystemAppWithBundleId:(id)a3
{
  v4 = a3;
  v5 = +[MIDaemonConfiguration sharedInstance];
  v6 = [v5 systemAppPlaceholderBundleIDToInfoMap];
  v7 = [v6 objectForKey:v4];
  if (v7)
  {
    v8 = [(MISystemAppMigrator *)self startingSystemAppState];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)lookupSystemAppStateWithOptions:(id)a3
{
  v3 = MobileInstallationLookupSystemAppState();

  return v3;
}

- (id)_removeNotAllowedAppsFromSystemAppState:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_260C;
    v11 = &unk_10518;
    v12 = self;
    v13 = objc_opt_new();
    v5 = v13;
    [v4 enumerateKeysAndObjectsUsingBlock:&v8];

    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)markAppAsNotAllowed:(id)a3
{
  v4 = a3;
  _DMLogFunc();
  if (![(MISystemAppMigrator *)self setSystemAppState:6 forBundleID:v4, v4])
  {
    _DMLogFunc();
  }
}

- (void)markAppAsUninstalled:(id)a3
{
  v4 = a3;
  _DMLogFunc();
  if (![(MISystemAppMigrator *)self setSystemAppState:2 forBundleID:v4, v4])
  {
    _DMLogFunc();
  }
}

- (BOOL)isRegulatedForChina
{
  v2 = MGGetBoolAnswer();
  _DMLogFunc();
  return v2;
}

- (void)handleSpecialAppNews
{
  if ([(MISystemAppMigrator *)self isRegulatedForChina])
  {

    [(MISystemAppMigrator *)self markAppAsNotAllowed:@"com.apple.news"];
  }
}

- (NSString)previousBuildVersion
{
  v3 = self->_previousBuildVersion;
  if (!v3)
  {
    if ([(MISystemAppMigrator *)self userDataDisposition]== 2)
    {
      DMGetPreviousBuildVersion();
    }

    else
    {
      [(MISystemAppMigrator *)self restoredBackupBuildVersion];
    }
    v3 = ;
    objc_storeStrong(&self->_previousBuildVersion, v3);
  }

  v4 = v3;

  return v4;
}

- (BOOL)isiPad
{
  v2 = [(MISystemAppMigrator *)self deviceClass];
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (void)handleSpecialAppActivity
{
  v3 = [(MISystemAppMigrator *)self isiPad];
  if ([(MISystemAppMigrator *)self firstTimeEncounteringDeletableSystemAppWithBundleId:@"com.apple.Fitness"])
  {
    if (v3)
    {

      [(MISystemAppMigrator *)self markAppAsUninstalled:@"com.apple.Fitness"];
      return;
    }

LABEL_13:
    _DMLogFunc();
    return;
  }

  v4 = [(MISystemAppMigrator *)self startingSystemAppState];
  v5 = [v4 valueForKey:@"com.apple.Fitness"];
  v6 = [v5 unsignedIntegerValue];

  if (v6 == 1)
  {
    return;
  }

  if (v3)
  {
    if (v6 != 6)
    {
      if (v6 == 2)
      {
LABEL_26:

        _DMLogFunc();
        return;
      }

      if (v6)
      {
        goto LABEL_13;
      }
    }

    if ([(MISystemAppMigrator *)self setSystemAppState:2 forBundleID:@"com.apple.Fitness"])
    {
      return;
    }

    goto LABEL_26;
  }

  if (v6 > 6 || ((1 << v6) & 0x45) == 0)
  {
    goto LABEL_13;
  }

  v7 = [(MISystemAppMigrator *)self previousBuildVersion];
  v8 = v7;
  if (!v7 || [@"20" compare:v7 options:64] == &dword_0 + 1 && !-[MISystemAppMigrator setSystemAppState:forBundleID:](self, "setSystemAppState:forBundleID:", 1, @"com.apple.Fitness"))
  {
    _DMLogFunc();
  }
}

- (void)handleAppsMissingRequiredCapabilities
{
  v3 = [(MISystemAppMigrator *)self lookupSystemAppStateWithOptions:0];
  v4 = +[MIDaemonConfiguration sharedInstance];
  v5 = [v4 systemAppPlaceholderBundleIDToInfoMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2C84;
  v7[3] = &unk_10540;
  v8 = v3;
  v9 = self;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)handleAppsNotCompatibleWithDeviceFamily
{
  v3 = +[MIDaemonConfiguration sharedInstance];
  v4 = [v3 systemAppPlaceholderBundleIDToInfoMap];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2ECC;
  v5[3] = &unk_10568;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

- (void)handleAppFeatureFlagRequirements
{
  v3 = [(MISystemAppMigrator *)self lookupSystemAppStateWithOptions:0];
  v4 = +[MIDaemonConfiguration sharedInstance];
  v5 = [v4 systemAppPlaceholderBundleIDToInfoMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_30B4;
  v7[3] = &unk_10540;
  v8 = v3;
  v9 = self;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)_getLSEligiblityKey:(id)a3 appliesTo:(BOOL *)a4 forBundleID:(id)a5 withAppInfo:(id)a6 withEvaluator:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = [a6 objectForKeyedSubscript:v11];
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v25 = 0;
    v17 = [[LSEligibilityPredicate alloc] initWithDictionary:v16 error:&v25];
    v18 = v25;
    v19 = v18;
    if (v17)
    {
      v24 = v18;
      v20 = [v13 evaluatePredicate:v17 error:&v24];
      v21 = v24;

      if (v20)
      {
        if (a4)
        {
          *a4 = [v20 BOOLValue];
        }

        v22 = 1;
      }

      else
      {
        _DMLogFunc();
        v22 = 0;
      }

      v19 = v21;
    }

    else
    {
      _DMLogFunc();
      v22 = 0;
      v20 = 0;
    }
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v17 = 0;
    v19 = 0;
  }

  return v22;
}

- (void)handleAppEligibilityRequirements
{
  v3 = [LSEligibilityPredicateEvaluator alloc];
  v4 = objc_opt_new();
  v5 = [v3 initWithResolver:v4];

  v6 = [(MISystemAppMigrator *)self lookupSystemAppStateWithOptions:0];
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 systemAppPlaceholderBundleIDToInfoMap];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_3798;
  v11[3] = &unk_105B8;
  v12 = v6;
  v13 = self;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)handleDefaultInstall
{
  v3 = [(MISystemAppMigrator *)self lookupSystemAppStateWithOptions:0];
  v4 = +[MIDaemonConfiguration sharedInstance];
  v5 = [v4 systemAppPlaceholderBundleIDToInfoMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_39F8;
  v7[3] = &unk_10540;
  v8 = v3;
  v9 = self;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)handleForceInstalledApps
{
  v3 = [(MISystemAppMigrator *)self forceInstallBundleIDs];
  v4 = v3;
  if (v3 && [v3 count])
  {
    _DMLogFunc();
    v5 = +[MIDaemonConfiguration sharedInstance];
    v6 = [v5 systemAppPlaceholderBundleIDToInfoMap];
    v7 = [v6 allKeys];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v7 containsObject:{v13, v14}])
          {
            _DMLogFunc();
            if ([(MISystemAppMigrator *)self setSystemAppState:1 forBundleID:v13, v13])
            {
              continue;
            }
          }

          v14 = v13;
          _DMLogFunc();
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)handleSupersededSystemApps
{
  v45[0] = @"com.apple.videos";
  v45[1] = @"com.apple.mobileme.fmf1";
  v46[0] = @"com.apple.tv";
  v3 = +[NSNull null];
  v46[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];

  v5 = [NSSet setWithArray:&__NSArray0__struct];
  v6 = dispatch_group_create();
  v7 = objc_opt_new();
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_414C;
  v40[3] = &unk_10608;
  v40[4] = self;
  v8 = v6;
  v41 = v8;
  v9 = v5;
  v42 = v9;
  v10 = v7;
  v43 = v10;
  [v4 enumerateKeysAndObjectsUsingBlock:v40];
  if ([v10 count])
  {
    v30 = v9;
    v31 = v8;
    v32 = v4;
    _DMLogFunc();
    v29 = self;
    v11 = [(MISystemAppMigrator *)self itemsToInstall];
    v12 = [v11 mutableCopy];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v10;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v34 = *v37;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v37 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = [v12 objectForKeyedSubscript:{v16, v24, v25, v27}];
          v18 = [v17 objectForKeyedSubscript:@"com.apple.MobileInstallation.stagedAppURL"];
          v26 = [v18 path];
          _DMLogFunc();

          [v12 removeObjectForKey:{v16, v16, v26}];
          if (v18)
          {
            v19 = +[MIFileManager defaultManager];
            v35 = 0;
            v20 = [v19 removeItemAtURL:v18 error:&v35];
            v21 = v35;

            if ((v20 & 1) == 0)
            {
              v25 = [v18 path];
              v27 = v21;
              v24 = v16;
              _DMLogFunc();
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v14);
    }

    if ([v12 count])
    {
      v22 = [v12 copy];
      [(MISystemAppMigrator *)v29 setItemsToInstall:v22];
    }

    else
    {
      [(MISystemAppMigrator *)v29 setItemsToInstall:0];
    }

    v8 = v31;
    v4 = v32;
    v9 = v30;
    v10 = v28;
  }

  _DMLogFunc();
  v23 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 30000000000);
  dispatch_group_wait(v8, v23);
  _DMLogFunc();
}

- (void)capturePreferencesToMigrate
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(MISystemAppMigrator *)self preferencesToMigrate];
  v2 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v30;
    do
    {
      v5 = 0;
      v22 = v3;
      do
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * v5);
        v7 = [v6 sourceBundleID];
        v8 = [v6 destinationBundleID];
        v9 = [LSApplicationRecord alloc];
        v28 = 0;
        v10 = [v9 initWithBundleIdentifier:v7 allowPlaceholder:1 error:&v28];
        v11 = v28;
        if (v10)
        {
          v12 = [v10 dataContainerURL];
          v13 = [v12 path];

          if (v13)
          {
            v14 = v4;
            v15 = objc_opt_new();
            v16 = [v6 keyMappings];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_48C0;
            v24[3] = &unk_10630;
            v25 = v7;
            v26 = v13;
            v17 = v15;
            v27 = v17;
            [v16 enumerateKeysAndObjectsUsingBlock:v24];

            if ([v17 count])
            {
              v18 = [v17 copy];
              [v6 setCapturedPreferences:v18];
            }

            v4 = v14;
            v3 = v22;
          }

          else
          {
            v19 = v7;
            _DMLogFunc();
          }
        }

        else
        {
          v20 = v8;
          v21 = v11;
          v19 = v7;
          _DMLogFunc();
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v3);
  }
}

- (void)finalizePreferencesToMigrate
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = [(MISystemAppMigrator *)self preferencesToMigrate];
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    v23 = v2;
    v24 = *v31;
    do
    {
      v6 = 0;
      v25 = v4;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        v8 = [v7 capturedPreferences];
        if (v8)
        {
          v9 = [v7 sourceBundleID];
          v10 = [v7 destinationBundleID];
          v11 = [LSApplicationRecord alloc];
          v29 = 0;
          v12 = [v11 initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v29];
          v13 = v29;
          if (v12)
          {
            v14 = [v12 dataContainerURL];
            v15 = [v14 path];

            if (v15)
            {
              v26[0] = _NSConcreteStackBlock;
              v26[1] = 3221225472;
              v26[2] = sub_4C6C;
              v26[3] = &unk_10658;
              v16 = v10;
              v27 = v16;
              v17 = v15;
              v28 = v17;
              [v8 enumerateKeysAndObjectsUsingBlock:v26];
              _CFPreferencesAppSynchronizeWithContainer();
              v21 = v16;
              v22 = v17;
              v20 = v9;
              _DMLogFunc();
              v18 = [v7 completion];
              v19 = v18;
              if (v18)
              {
                (*(v18 + 16))(v18);
              }

              v2 = v23;
            }

            else
            {
              v20 = v10;
              _DMLogFunc();
            }

            v5 = v24;

            v4 = v25;
          }

          else
          {
            v21 = v9;
            v22 = v13;
            v20 = v10;
            _DMLogFunc();
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v4);
  }
}

- (void)markAppSuccessfullyInstalledWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MISystemAppMigrator *)self installedAppListQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4DC0;
  v7[3] = &unk_104A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (BOOL)appInstalledSuccessfullyWithBundleID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(MISystemAppMigrator *)self installedAppListQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4F14;
  block[3] = &unk_10680;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [v5 identity];
  v12 = v7;
  v8 = &stru_112E0;
  if (isKindOfClass)
  {
    v8 = @"(placeholder) ";
  }

  v10 = v7;
  v11 = v8;
  _DMLogFunc();
  v9 = [v12 bundleID];
  [(MISystemAppMigrator *)self markAppSuccessfullyInstalledWithBundleID:v9];
  [(MISystemAppMigrator *)self leaveSystemAppInstallDispatchGroupForBundleID:v9];
  [v5 setObserver:0];
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = [v8 identity];
  v10 = [v13 bundleID];
  v11 = &stru_112E0;
  if (isKindOfClass)
  {
    v11 = @"(placeholder) ";
  }

  v12 = v11;
  _DMLogFunc();

  [(MISystemAppMigrator *)self leaveSystemAppInstallDispatchGroupForBundleID:v10, v13, v12, v7];
  [v8 setObserver:0];
}

- (BOOL)demoteAppWithBundleID:(id)a3 demotionReason:(unint64_t)a4
{
  v5 = a3;
  v6 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v5];
  _DMLogFunc();
  v10 = 0;
  v7 = [IXAppInstallCoordinator demoteAppToPlaceholderWithApplicationIdentity:v6 forReason:a4 waitForDeletion:0 ignoreRemovability:1 error:&v10, v5, a4];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    _DMLogFunc();
  }

  return v7;
}

- (BOOL)setPlaceholderPromiseForCoordinator:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v27 = 0;
  v11 = [IXPlaceholder placeholderForRemovableSystemAppWithBundleID:v10 client:10 installType:a5 error:&v27];
  v12 = v27;
  v13 = v12;
  if (!v11)
  {
    _DMLogFunc();
    if (a6)
    {
LABEL_12:
      v20 = v13;
      v17 = 0;
      *a6 = v13;
      goto LABEL_13;
    }

LABEL_6:
    v17 = 0;
    goto LABEL_13;
  }

  v26 = v12;
  v14 = [v9 setPlaceholderPromise:v11 error:&v26];
  v15 = v26;

  if ((v14 & 1) == 0)
  {
    v22 = v10;
    v23 = v15;
    _DMLogFunc();
    v13 = v15;
    goto LABEL_9;
  }

  v25 = v15;
  v16 = [v11 setConfigurationCompleteWithError:&v25];
  v13 = v25;

  if ((v16 & 1) == 0)
  {
    v22 = v10;
    v23 = v13;
    _DMLogFunc();
LABEL_9:
    v24 = 0;
    v18 = [v11 cancelForReason:v13 client:10 error:{&v24, v22, v23}];
    v19 = v24;
    if ((v18 & 1) == 0)
    {
      _DMLogFunc();
    }

    if (a6)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v17 = 1;
LABEL_13:

  return v17;
}

- (BOOL)setInstallOptionsForCoordinator:(id)a3 bundleID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MIInstallOptions);
  [v9 setInstallTargetType:1];
  [v9 setLsInstallType:6];
  [v9 setSystemAppInstall:1];
  [v9 setPerformAPFSClone:0];
  v14 = 0;
  v10 = [v7 setInstallOptions:v9 error:&v14];
  v11 = v14;
  if ((v10 & 1) == 0)
  {
    _DMLogFunc();
    if (a5)
    {
      v12 = v11;
      *a5 = v11;
    }
  }

  return v10;
}

- (BOOL)installDemotedPlaceholderWithBundleID:(id)a3 installType:(unint64_t)a4
{
  v6 = a3;
  v7 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v6];
  _DMLogFunc();
  v34 = 0;
  v8 = [IXRestoringDemotedAppInstallCoordinator processScopedCoordinatorForAppWithIdentity:v7 withClientID:10 createIfNotExisting:1 created:0 error:&v34, v6, a4];
  v9 = v34;
  if (!v8)
  {
    _DMLogFunc();
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  [(MISystemAppMigrator *)self enterSystemAppInstallDispatchGroupForBundleID:v6];
  [v8 setObserver:self];
  v33 = v9;
  v10 = [v8 setImportance:3 error:&v33];
  v11 = v33;

  if ((v10 & 1) == 0)
  {
    v27 = v6;
    v28 = v11;
    _DMLogFunc();
    v9 = v11;
LABEL_15:
    v29 = 0;
    v23 = [v8 cancelForReason:v9 client:10 error:{&v29, v27, v28}];
    v24 = v29;
    if ((v23 & 1) == 0)
    {
      _DMLogFunc();
    }

    goto LABEL_18;
  }

  v12 = [[IXPromisedOutOfBandTransfer alloc] initWithName:@"User data" client:10 diskSpaceNeeded:0];
  if (!v12)
  {
    v9 = _CreateError("[MISystemAppMigrator installDemotedPlaceholderWithBundleID:installType:]", 1108, MIInstallerErrorDomain, 128, 0, 0, @"Failed to create IXPromisedOutOfBandTransfer for %@", v13, v6);

    v27 = v9;
    _DMLogFunc();
    goto LABEL_15;
  }

  v14 = v12;
  v32 = v11;
  v15 = [v8 setUserDataPromise:v12 error:&v32];
  v9 = v32;

  if ((v15 & 1) == 0)
  {
    v26 = v6;
    v28 = v9;
    _DMLogFunc();
LABEL_12:
    v30 = 0;
    v20 = [v14 cancelForReason:v9 client:10 error:{&v30, v26, v28}];
    v21 = v30;
    v22 = v21;
    if ((v20 & 1) == 0)
    {
      v27 = v6;
      v28 = v21;
      _DMLogFunc();
    }

    goto LABEL_15;
  }

  v31 = v9;
  v16 = [(MISystemAppMigrator *)self setPlaceholderPromiseForCoordinator:v8 bundleID:v6 installType:a4 error:&v31];
  v17 = v31;

  if (!v16)
  {
    v9 = v17;
    goto LABEL_12;
  }

  v18 = [(MISystemAppMigrator *)self currentlyInstallingCoordinators];
  [v18 addObject:v8];

  v19 = 1;
  [v14 setComplete:1];

  v9 = v17;
LABEL_19:

  return v19;
}

- (BOOL)demoteAppWithBundleID:(id)a3 desiredAppState:(int)a4 isInstalled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (!v5)
  {
    v12 = 7;
    if (a4 == 5)
    {
      v12 = 9;
    }

    if (a4 == 4)
    {
      v13 = 8;
    }

    else
    {
      v13 = v12;
    }

    if (![(MISystemAppMigrator *)self installDemotedPlaceholderWithBundleID:v8 installType:v13])
    {
      goto LABEL_8;
    }

LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v9 = 3;
  if (a4 != 5)
  {
    v9 = 1;
  }

  if (a4 == 4)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  if ([(MISystemAppMigrator *)self demoteAppWithBundleID:v8 demotionReason:v10])
  {
    goto LABEL_15;
  }

LABEL_8:
  v11 = 0;
LABEL_16:

  return v11;
}

- (BOOL)installOrUpdateAppWithBundleID:(id)a3 appURL:(id)a4 isInstalled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v8];
  if (v5)
  {
    v11 = @"Updating";
  }

  else
  {
    v11 = @"Initiating";
  }

  v40 = [v9 path];
  _DMLogFunc();

  if (v5)
  {
    v51 = 0;
    v12 = &v51;
    v13 = [IXUpdatingAppInstallCoordinator processScopedCoordinatorForAppWithIdentity:v10 withClientID:10 createIfNotExisting:1 created:0 error:&v51, v11, v10, v40];
    v14 = 5;
  }

  else
  {
    v50 = 0;
    v12 = &v50;
    v13 = [IXInitiatingAppInstallCoordinator processScopedCoordinatorForAppWithIdentity:v10 withClientID:10 createIfNotExisting:1 created:0 error:&v50, v11, v10, v40];
    v14 = 6;
  }

  v16 = *v12;
  if (!v13)
  {
    v18 = _CreateError("[MISystemAppMigrator installOrUpdateAppWithBundleID:appURL:isInstalled:]", 1202, MIInstallerErrorDomain, 128, 0, 0, @"Failed to create AppInstallCoordinator for %@: %@", v15, v8);

    _DMLogFunc();
LABEL_22:
    v31 = 0;
    goto LABEL_23;
  }

  [(MISystemAppMigrator *)self enterSystemAppInstallDispatchGroupForBundleID:v8];
  [v13 setObserver:self];
  v49 = v16;
  v17 = [v13 setImportance:3 error:&v49];
  v18 = v49;

  if ((v17 & 1) == 0)
  {
    v38 = v8;
    v39 = v18;
LABEL_17:
    _DMLogFunc();
    goto LABEL_19;
  }

  v48 = v18;
  v19 = [v13 setInitialODRAssetPromises:&__NSArray0__struct error:&v48];
  v20 = v48;

  if ((v19 & 1) == 0)
  {
    v38 = v8;
    v39 = v20;
    _DMLogFunc();
    v18 = v20;
    goto LABEL_19;
  }

  v47 = v20;
  v21 = [(MISystemAppMigrator *)self setPlaceholderPromiseForCoordinator:v13 bundleID:v8 installType:v14 error:&v47];
  v18 = v47;

  if (!v21)
  {
LABEL_19:
    v42 = 0;
    v32 = [v13 cancelForReason:v18 client:10 error:{&v42, v38, v39}];
    v33 = v42;
    if ((v32 & 1) == 0)
    {
      _DMLogFunc();
    }

    goto LABEL_22;
  }

  v22 = [IXPromisedTransferToPath alloc];
  v23 = [v9 lastPathComponent];
  v24 = [v10 location];
  v46 = v18;
  v25 = [v22 initWithName:v23 client:10 transferPath:v9 diskSpaceNeeded:0 location:v24 error:&v46];
  v41 = v46;

  if (!v25)
  {
    v18 = _CreateError("[MISystemAppMigrator installOrUpdateAppWithBundleID:appURL:isInstalled:]", 1228, MIInstallerErrorDomain, 128, v41, 0, @"Failed to create IXPromisedTransferToPath for %@", v26, v8);

    v38 = v18;
    goto LABEL_17;
  }

  v45 = v41;
  v27 = [v13 setAppAssetPromise:v25 error:&v45];
  v18 = v45;

  if ((v27 & 1) == 0)
  {
    v38 = v8;
    v39 = v18;
    _DMLogFunc();
LABEL_27:
    v43 = 0;
    v35 = [v25 cancelForReason:v18 client:10 error:{&v43, v38, v39}];
    v36 = v43;
    v37 = v36;
    if ((v35 & 1) == 0)
    {
      v38 = v8;
      v39 = v36;
      _DMLogFunc();
    }

    goto LABEL_19;
  }

  v44 = v18;
  v28 = [(MISystemAppMigrator *)self setInstallOptionsForCoordinator:v13 bundleID:v8 error:&v44];
  v29 = v44;

  if (!v28)
  {
    v18 = v29;
    goto LABEL_27;
  }

  v30 = [(MISystemAppMigrator *)self currentlyInstallingCoordinators];
  [v30 addObject:v13];

  v31 = 1;
  [v25 setComplete:1];

  v18 = v29;
LABEL_23:

  return v31;
}

- (void)usingAppStoreInstallSystemAppAppWithBundleID:(id)a3
{
  v3 = a3;
  v5 = [[ASDSystemAppRequest alloc] initWithBundleID:v3];
  _DMLogFunc();

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5E70;
  v6[3] = &unk_106A8;
  v7 = v5;
  v4 = v5;
  [v4 startWithErrorHandler:{v6, v3, v5}];
}

- (void)synchronouslyCancelAllAppStoreRequests
{
  v2 = dispatch_semaphore_create(0);
  _DMLogFunc();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5FD0;
  v5[3] = &unk_106A8;
  v3 = v2;
  v6 = v3;
  [ASDRequest cancelAllRequestsWithErrorHandler:v5];
  v4 = dispatch_time(0, 45000000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_8998();
    }
  }

  else
  {
    _DMLogFunc();
  }
}

- (NSURL)ignoreAppsNotInTrustCacheSentinelFileURL
{
  v2 = +[MIDaemonConfiguration sharedInstance];
  v3 = [v2 installdPath];
  v4 = [v3 URLByAppendingPathComponent:@"SystemAppMigratorIgnoreAppsNotInTrustCache" isDirectory:0];

  return v4;
}

- (BOOL)shouldIgnoreAppsNotInTrustCache
{
  v3 = +[MIDaemonConfiguration sharedInstance];
  v4 = [v3 codeSigningEnforcementIsDisabled];

  if (!v4)
  {
    return 0;
  }

  v5 = +[MIFileManager defaultManager];
  v6 = [(MISystemAppMigrator *)self ignoreAppsNotInTrustCacheSentinelFileURL];
  v7 = [v5 itemExistsAtURL:v6];

  return v7;
}

- (BOOL)isCurrentlyInstalledAppInTrustCacheForBundleID:(id)a3
{
  v3 = a3;
  v14 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v14];
  v5 = v14;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = [v4 URL];
  v7 = [v6 path];
  v15[0] = kMISValidationOptionAllowAdHocSigning;
  v15[1] = kMISValidationOptionValidateSignatureOnly;
  v16[0] = &__kCFBooleanTrue;
  v16[1] = &__kCFBooleanTrue;
  v15[2] = kMISValidationOptionAllowLaunchWarning;
  v15[3] = kMISValidationOptionTrustCacheOnly;
  v16[2] = &__kCFBooleanTrue;
  v16[3] = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v8 = MISValidateSignature();

  if (v8 == -402620377)
  {
LABEL_5:
    _DMLogFunc();
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (v8)
  {
    v10 = [v4 URL];
    v11 = [v10 path];
    v13 = MIErrorStringForMISError();
    _DMLogFunc();

    goto LABEL_7;
  }

  _DMLogFunc();
  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)existsUnusedDataContainerWithBundleID:(id)a3
{
  v3 = a3;
  v4 = +[MIGlobalConfiguration sharedInstance];
  v5 = [v4 primaryPersonaString];
  v17 = 0;
  v6 = [MIMCMContainer containerForIdentifier:v3 contentClass:2 forPersona:v5 create:0 error:&v17];
  v7 = v17;

  if (v6)
  {
    v16 = v7;
    v8 = [v6 infoValueForKey:@"com.apple.MobileContainerManager.SafeHarborInfo" error:&v16];
    v9 = v16;

    if (v8)
    {
      _DMLogFunc();
    }

    else
    {
      v12 = [v9 domain];
      if ([v12 isEqualToString:MIContainerManagerErrorDomain])
      {
        v13 = [v9 code];

        if (v13 == &dword_18)
        {
          v14 = 1;
LABEL_16:
          v7 = v9;
          goto LABEL_17;
        }
      }

      else
      {
      }

      _DMLogFunc();
    }

    v14 = 0;
    goto LABEL_16;
  }

  v10 = [v7 domain];
  if ([v10 isEqualToString:MIContainerManagerErrorDomain])
  {
    v11 = [v7 code];

    if (v11 == &dword_14 + 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  _DMLogFunc();
LABEL_12:
  v14 = 0;
LABEL_17:

  return v14;
}

- (id)currentlyInstalledSystemAppBundleIdentifiers
{
  v15 = objc_opt_new();
  v2 = [LSApplicationRecord enumeratorWithOptions:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = LSSystemApplicationType;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 typeForInstallMachinery];
        if ([v9 isEqualToString:v6])
        {
          v10 = [v8 URL];
          v11 = [v10 path];
          v12 = [v11 containsString:@"/Applications"];

          if (v12)
          {
            continue;
          }

          v9 = [v8 bundleIdentifier];
          [v15 addObject:v9];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v13 = [v15 copy];

  return v13;
}

- (BOOL)performMigration
{
  if (qword_151F0 == -1)
  {
    v2 = self;
  }

  else
  {
    sub_8A60();
    v2 = self;
  }

  v3 = qword_151E8;
  if (os_signpost_enabled(qword_151E8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SystemAppMigration", "Start system app migration", buf, 2u);
  }

  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 1;
  v4 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  v5 = [(MISystemAppMigrator *)v2 itemsToInstall];

  if (v5)
  {
    *buf = 0;
    v125 = buf;
    v126 = 0x3032000000;
    v127 = sub_7A6C;
    v128 = sub_7A7C;
    v129 = 0;
    v6 = self;
    if ([(MISystemAppMigrator *)self didUpgrade])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if ([(MISystemAppMigrator *)self didRestoreFromBackup])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [(MISystemAppMigrator *)self didRestoreFromCloudBackup];
    v10 = [(MISystemAppMigrator *)self didMigrateBackupFromDifferentDevice];
    if (v9)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (v10)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v80 = v11;
    v81 = v12;
    _DMLogFunc();
    if ([(MISystemAppMigrator *)self shouldIgnoreAppsNotInTrustCache:v7])
    {
      v13 = [(MISystemAppMigrator *)self ignoreAppsNotInTrustCacheSentinelFileURL];
      v73 = [v13 path];
      _DMLogFunc();

      v6 = self;
    }

    if ([(MISystemAppMigrator *)v6 didRestoreFromBackup])
    {
      _DMLogFunc();
      v138 = @"RestoreBackupAppState";
      v139 = &__kCFBooleanTrue;
      v14 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
    }

    else
    {
      v14 = 0;
    }

    v85 = v14;
    v16 = [(MISystemAppMigrator *)v6 lookupSystemAppStateWithOptions:?];
    v17 = [(MISystemAppMigrator *)v6 _removeNotAllowedAppsFromSystemAppState:v16];
    [(MISystemAppMigrator *)v6 setStartingSystemAppState:v17];
    v84 = v16;

    v83 = +[MCProfileConnection sharedConnection];
    [v83 removedSystemAppBundleIDs];
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v18 = v121 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v120 objects:v137 count:16];
    if (v19)
    {
      v20 = *v121;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v121 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v120 + 1) + 8 * i);
          if ([(MISystemAppMigrator *)self firstTimeEncounteringDeletableSystemAppWithBundleId:v22])
          {
            [(MISystemAppMigrator *)self markAppAsUninstalled:v22];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v120 objects:v137 count:16];
      }

      while (v19);
    }

    [(MISystemAppMigrator *)self capturePreferencesToMigrate];
    [(MISystemAppMigrator *)self handleSupersededSystemApps];
    [(MISystemAppMigrator *)self handleSpecialAppActivity];
    [(MISystemAppMigrator *)self handleSpecialAppNews];
    [(MISystemAppMigrator *)self handleAppsMissingRequiredCapabilities];
    [(MISystemAppMigrator *)self handleAppsNotCompatibleWithDeviceFamily];
    [(MISystemAppMigrator *)self handleDefaultInstall];
    [(MISystemAppMigrator *)self handleAppFeatureFlagRequirements];
    [(MISystemAppMigrator *)self handleAppEligibilityRequirements];
    [(MISystemAppMigrator *)self handleForceInstalledApps];
    [(MISystemAppMigrator *)self synchronouslyCancelAllAppStoreRequests];
    v23 = [(MISystemAppMigrator *)self currentlyInstalledSystemAppBundleIdentifiers];
    v24 = *(v125 + 5);
    *(v125 + 5) = v23;

    v25 = self;
    v26 = [(MISystemAppMigrator *)self lookupSystemAppStateWithOptions:0];
    if (qword_151F0 != -1)
    {
      sub_8A74();
      v25 = self;
    }

    v27 = qword_151E8;
    if (os_signpost_enabled(qword_151E8))
    {
      *v111 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v27, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SystemAppInstall", "Start installation", v111, 2u);
    }

    v28 = [(MISystemAppMigrator *)v25 itemsToInstall];
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_7A84;
    v115[3] = &unk_106D0;
    v29 = v26;
    v116 = v29;
    v117 = v25;
    v118 = buf;
    v119 = &v130;
    [v28 enumerateKeysAndObjectsUsingBlock:v115];

    v30 = self;
    if ([(MISystemAppMigrator *)self waitForSystemAppInstallDispatchGroup])
    {
      v74 = (clock_gettime_nsec_np(_CLOCK_REALTIME) - v4) / 0x3B9ACA00;
      _DMLogFunc();
    }

    else
    {
      _DMLogFunc();
      *(v131 + 24) = 0;
    }

    if (qword_151F0 != -1)
    {
      sub_8A74();
      v30 = self;
    }

    v31 = qword_151E8;
    if (os_signpost_enabled(qword_151E8))
    {
      *v111 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SystemAppInstall", "End installation", v111, 2u);
    }

    v32 = [(MISystemAppMigrator *)v30 currentlyInstallingCoordinators];
    [v32 removeAllObjects];

    v33 = [(MISystemAppMigrator *)self currentlyInstalledSystemAppBundleIdentifiers];
    v34 = *(v125 + 5);
    *(v125 + 5) = v33;

    _DMLogFunc();
    v35 = self;
    if (qword_151F0 != -1)
    {
      sub_8A74();
      v35 = self;
    }

    v36 = qword_151E8;
    if (os_signpost_enabled(qword_151E8))
    {
      *v111 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v36, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SystemAppValidation", "Start validation", v111, 2u);
    }

    *v111 = 0;
    v112 = v111;
    v113 = 0x2020000000;
    v114 = 0;
    v37 = [(MISystemAppMigrator *)v35 itemsToInstall];
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_7B50;
    v105[3] = &unk_106F8;
    v108 = buf;
    v109 = &v130;
    v110 = v111;
    v82 = v29;
    v106 = v82;
    v107 = v35;
    [v37 enumerateKeysAndObjectsUsingBlock:v105];

    v38 = self;
    if (*(v112 + 3))
    {
      v75 = *(v112 + 3);
      _DMLogFunc();
      if ([(MISystemAppMigrator *)self waitForSystemAppInstallDispatchGroup])
      {
        _DMLogFunc();
      }

      else
      {
        _DMLogFunc();
        *(v131 + 24) = 0;
      }
    }

    if (qword_151F0 != -1)
    {
      sub_8A74();
      v38 = self;
    }

    v39 = qword_151E8;
    if (os_signpost_enabled(qword_151E8))
    {
      *v100 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v39, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SystemAppValidation", "End validation", v100, 2u);
    }

    v40 = [(MISystemAppMigrator *)v38 currentlyInstallingCoordinators];
    [v40 removeAllObjects];

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v41 = [(MISystemAppMigrator *)self appBundleIDsToUninstall];
    v15 = 0;
    v42 = [v41 countByEnumeratingWithState:&v101 objects:v136 count:16];
    if (v42)
    {
      v43 = *v102;
      do
      {
        v44 = 0;
        v45 = v15;
        do
        {
          if (*v102 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:*(*(&v101 + 1) + 8 * v44)];
          _DMLogFunc();
          v47 = objc_opt_new();
          [v47 setIgnoreRemovability:{1, v46}];
          [v47 setIgnoreRestrictions:1];
          [v47 setIgnoreAppProtection:1];
          v99 = v45;
          *v100 = 0;
          v48 = [IXAppInstallCoordinator uninstallAppWithIdentity:v46 options:v47 disposition:v100 error:&v99];
          v15 = v99;

          if (v48)
          {
            if (*v100 == 3)
            {
              goto LABEL_66;
            }

            v72 = IXStringForUninstallDisposition();
            v79 = v46;
            _DMLogFunc();
          }

          else
          {
            v72 = v46;
            v79 = v15;
            _DMLogFunc();
          }

          *(v131 + 24) = 0;
LABEL_66:

          v44 = v44 + 1;
          v45 = v15;
        }

        while (v42 != v44);
        v42 = [v41 countByEnumeratingWithState:&v101 objects:v136 count:16];
      }

      while (v42);
    }

    [(MISystemAppMigrator *)self finalizePreferencesToMigrate];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v49 = [(MISystemAppMigrator *)self appBundleIDsRequestingStoreDownload];
    v50 = [v49 countByEnumeratingWithState:&v95 objects:v135 count:16];
    if (v50)
    {
      v51 = *v96;
      do
      {
        for (j = 0; j != v50; j = j + 1)
        {
          if (*v96 != v51)
          {
            objc_enumerationMutation(v49);
          }

          [(MISystemAppMigrator *)self usingAppStoreInstallSystemAppAppWithBundleID:*(*(&v95 + 1) + 8 * j), v72, v79];
        }

        v50 = [v49 countByEnumeratingWithState:&v95 objects:v135 count:16];
      }

      while (v50);
    }

    _Block_object_dispose(v111, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = 0;
  }

  v53 = +[MIFileManager defaultManager];
  v54 = +[MIDaemonConfiguration sharedInstance];
  v55 = [v54 stagedSystemAppsDirectory];
  v94 = v15;
  v87 = [v53 urlsForItemsInDirectoryAtURL:v55 ignoringSymlinks:1 error:&v94];
  v56 = v94;

  if (v87)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v87;
    v57 = [obj countByEnumeratingWithState:&v90 objects:v134 count:16];
    if (v57)
    {
      v58 = *v91;
      do
      {
        for (k = 0; k != v57; k = k + 1)
        {
          if (*v91 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v90 + 1) + 8 * k);
          v77 = [v60 path];
          _DMLogFunc();

          v61 = +[MIFileManager defaultManager];
          v89 = v56;
          v62 = [v61 removeItemAtURL:v60 error:&v89];
          v63 = v89;

          v56 = v63;
          if ((v62 & 1) == 0)
          {
            v76 = [v60 path];
            v79 = v63;
            _DMLogFunc();
          }
        }

        v57 = [obj countByEnumeratingWithState:&v90 objects:v134 count:16];
      }

      while (v57);
    }

    goto LABEL_92;
  }

  v64 = [v56 domain];
  if (![v64 isEqualToString:NSPOSIXErrorDomain])
  {

    goto LABEL_91;
  }

  v65 = [v56 code] == &dword_0 + 2;

  if (!v65)
  {
LABEL_91:
    obj = +[MIDaemonConfiguration sharedInstance];
    v66 = [obj stagedSystemAppsDirectory];
    v78 = [v66 path];
    _DMLogFunc();

LABEL_92:
  }

  if ((v131[3] & 1) == 0)
  {
    _DMLogFunc();
  }

  v67 = MobileInstallationSetSystemAppMigrationComplete();
  v68 = v56;

  if ((v67 & 1) == 0)
  {
    _DMLogFunc();
    if (*(v131 + 24) == 1)
    {
      _DMLogFunc();
      *(v131 + 24) = 0;
    }
  }

  if (qword_151F0 != -1)
  {
    sub_8A74();
  }

  v69 = qword_151E8;
  if (os_signpost_enabled(qword_151E8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v69, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SystemAppMigration", "End system app migration", buf, 2u);
  }

  v70 = *(v131 + 24);

  _Block_object_dispose(&v130, 8);
  return v70 & 1;
}

@end