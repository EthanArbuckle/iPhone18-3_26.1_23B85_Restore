@interface SBSplashBoardMigrationController
- (SBSplashBoardMigrationController)init;
- (id)launchRequestsForApplication:(id)application withCompatibilityInfo:(id)info defaultLaunchRequests:(id)requests;
- (id)systemAppsNeedingMigrationLaunchImages;
- (void)performCleanupAfterDifferentDeviceMigration;
- (void)performSystemAppMigrationRecreating:(id)recreating;
@end

@implementation SBSplashBoardMigrationController

- (SBSplashBoardMigrationController)init
{
  v14.receiver = self;
  v14.super_class = SBSplashBoardMigrationController;
  v2 = [(SBSplashBoardMigrationController *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(XBDefaultApplicationProvider);
    applicationProvider = v2->_applicationProvider;
    v2->_applicationProvider = v3;

    v5 = [FBSDisplayConfiguration alloc];
    v6 = +[CADisplay mainDisplay];
    v7 = [v5 initWithCADisplay:v6];

    v8 = [SBMainDisplayConfigurationTransformer transformedMainDisplayConfigurationForConfiguration:v7];
    v9 = [[XBApplicationController alloc] initWithMainDisplayConfiguration:v8 applicationProvider:v2->_applicationProvider launchRequestProvider:v2 configureCacheDelete:0];
    splashBoardController = v2->_splashBoardController;
    v2->_splashBoardController = v9;

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v11 userInterfaceIdiom];

      if (userInterfaceIdiom == &dword_0 + 1)
      {
LABEL_7:

        return v2;
      }
    }

    [(XBApplicationController *)v2->_splashBoardController deleteAllSnapshotsIfScreenSizeChanged];
    goto LABEL_7;
  }

  return v2;
}

- (id)systemAppsNeedingMigrationLaunchImages
{
  splashBoardSystemApplications = [(XBApplicationProviding *)self->_applicationProvider splashBoardSystemApplications];
  v4 = [(XBApplicationController *)self->_splashBoardController findRecentlyUsedOfApplications:splashBoardSystemApplications];
  if ([v4 count])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [v4 count];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "migrating some launch images (%lu)", &v8, 0xCu);
    }

    v6 = v4;
  }

  else
  {
    v6 = splashBoardSystemApplications;

    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [v6 count];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "generating all launch images (%lu)", &v8, 0xCu);
    }
  }

  return v6;
}

- (void)performSystemAppMigrationRecreating:(id)recreating
{
  applicationProvider = self->_applicationProvider;
  recreatingCopy = recreating;
  splashBoardSystemApplications = [(XBApplicationProviding *)applicationProvider splashBoardSystemApplications];
  [(XBApplicationController *)self->_splashBoardController removeCachedLaunchImagesForApplications:splashBoardSystemApplications forgettingApps:0];
  v7 = dispatch_semaphore_create(0);
  splashBoardController = self->_splashBoardController;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_6284;
  v12[3] = &unk_18680;
  v13 = v7;
  v9 = v7;
  [(XBApplicationController *)splashBoardController captureOrUpdateLaunchImagesForApplications:recreatingCopy firstImageIsReady:0 completion:v12];

  v10 = dispatch_time(0, 300000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  [v11 setObject:&__kCFBooleanTrue forKey:@"XBCaptureLaunchImagesPostMigration"];
}

- (void)performCleanupAfterDifferentDeviceMigration
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [(XBApplicationProviding *)self->_applicationProvider allInstalledApplications];
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = SBLaunchImageIngestionInfoKey;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        bundleIdentifier = [v7 bundleIdentifier];
        v9 = +[XBApplicationDataStore sharedInstance];
        [v9 _clearCompatibilityInfoForBundleIdentifier:bundleIdentifier];
        v10 = [[XBApplicationSnapshotManifest alloc] initWithApplicationInfo:v7];
        [v10 deleteAllSnapshots];
        v11 = [FBSApplicationDataStore storeForApplication:bundleIdentifier];
        [v11 removeObjectForKey:v5];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

- (id)launchRequestsForApplication:(id)application withCompatibilityInfo:(id)info defaultLaunchRequests:(id)requests
{
  applicationCopy = application;
  requestsCopy = requests;
  v8 = +[NSMutableArray array];
  if ([applicationCopy supportsDeviceFamily:2])
  {
    v9 = SBLayoutSupportsSideLayoutRole();
  }

  else
  {
    v9 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = requestsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        [v8 addObject:{v15, v19}];
        if (v9)
        {
          v16 = SBLayoutDefaultSideLayoutElementWidth([v15 interfaceOrientation]);
          v17 = [v15 copy];
          [v15 naturalSize];
          [v17 setNaturalSize:v16];
          [v8 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return v8;
}

@end