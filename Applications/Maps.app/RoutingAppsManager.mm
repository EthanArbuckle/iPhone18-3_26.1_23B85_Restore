@interface RoutingAppsManager
+ (id)defaultManager;
- (RoutingAppLaunchRecord)routingAppLaunchRecord;
- (id)_appIdsStringWithApplicationProxies:(id)a3;
- (id)_installedApps;
- (void)_updateCoverageFileForAppProxy:(id)a3 libraryItem:(id)a4;
- (void)loadRelevantRoutingAppsForSource:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 completion:(id)a5;
- (void)recordAppLaunch:(id)a3;
- (void)updateCoverageFiles;
@end

@implementation RoutingAppsManager

- (void)loadRelevantRoutingAppsForSource:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 completion:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3.longitude;
  v8 = a3.latitude;
  v10 = a5;
  v11 = dispatch_get_global_queue(-32768, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B9C1EC;
  v13[3] = &unk_10163BF30;
  v15 = v8;
  v16 = v7;
  v17 = latitude;
  v18 = longitude;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(v11, v13);
}

- (void)updateCoverageFiles
{
  v3 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B9C5DC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_updateCoverageFileForAppProxy:(id)a3 libraryItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = [v6 valueForProperty:SSSoftwareLibraryItemPropertyTransitDataURL];
  if (v14)
  {
    v15 = [v6 ETagForAssetType:SSDownloadAssetTypeTransitMapsData];
    v16 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B9CAB8;
    block[3] = &unk_101656A00;
    v19 = v14;
    v20 = v15;
    v21 = v5;
    v22 = v6;
    v17 = v15;
    dispatch_async(v16, block);
  }

  else
  {
    sub_100DA10F8(@"Warning: No routing coverage update URL for application: %@.", v7, v8, v9, v10, v11, v12, v13, 0);
  }
}

- (id)_appIdsStringWithApplicationProxies:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_installedApps
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 directionsApplications];

  return v3;
}

- (void)recordAppLaunch:(id)a3
{
  v4 = a3;
  v5 = [(RoutingAppsManager *)self routingAppLaunchRecord];
  [v5 recordAppLaunch:v4];

  v6 = +[PersistenceManager sharedManager];
  v16 = 0;
  v7 = [v6 writeRoutingAppLaunchRecord:v5 error:&v16];
  v8 = v16;

  if ((v7 & 1) == 0)
  {
    sub_100DA10F8(@"Failed to save routing app updates: %@.", v9, v10, v11, v12, v13, v14, v15, v8);
  }
}

- (RoutingAppLaunchRecord)routingAppLaunchRecord
{
  routingAppLaunchRecord = self->_routingAppLaunchRecord;
  if (!routingAppLaunchRecord)
  {
    v4 = +[PersistenceManager sharedManager];
    v5 = [v4 readRoutingAppLaunchRecord];
    v6 = self->_routingAppLaunchRecord;
    self->_routingAppLaunchRecord = v5;

    routingAppLaunchRecord = self->_routingAppLaunchRecord;
  }

  return routingAppLaunchRecord;
}

+ (id)defaultManager
{
  if (qword_10195E8E0 != -1)
  {
    dispatch_once(&qword_10195E8E0, &stru_10163BEE0);
  }

  v3 = qword_10195E8D8;

  return v3;
}

@end