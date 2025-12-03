@interface RoutingAppsManager
+ (id)defaultManager;
- (RoutingAppLaunchRecord)routingAppLaunchRecord;
- (id)_appIdsStringWithApplicationProxies:(id)proxies;
- (id)_installedApps;
- (void)_updateCoverageFileForAppProxy:(id)proxy libraryItem:(id)item;
- (void)loadRelevantRoutingAppsForSource:(CLLocationCoordinate2D)source destination:(CLLocationCoordinate2D)destination completion:(id)completion;
- (void)recordAppLaunch:(id)launch;
- (void)updateCoverageFiles;
@end

@implementation RoutingAppsManager

- (void)loadRelevantRoutingAppsForSource:(CLLocationCoordinate2D)source destination:(CLLocationCoordinate2D)destination completion:(id)completion
{
  longitude = destination.longitude;
  latitude = destination.latitude;
  v7 = source.longitude;
  v8 = source.latitude;
  completionCopy = completion;
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
  v14 = completionCopy;
  v12 = completionCopy;
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

- (void)_updateCoverageFileForAppProxy:(id)proxy libraryItem:(id)item
{
  proxyCopy = proxy;
  itemCopy = item;
  v14 = [itemCopy valueForProperty:SSSoftwareLibraryItemPropertyTransitDataURL];
  if (v14)
  {
    v15 = [itemCopy ETagForAssetType:SSDownloadAssetTypeTransitMapsData];
    v16 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B9CAB8;
    block[3] = &unk_101656A00;
    v19 = v14;
    v20 = v15;
    v21 = proxyCopy;
    v22 = itemCopy;
    v17 = v15;
    dispatch_async(v16, block);
  }

  else
  {
    sub_100DA10F8(@"Warning: No routing coverage update URL for application: %@.", v7, v8, v9, v10, v11, v12, v13, 0);
  }
}

- (id)_appIdsStringWithApplicationProxies:(id)proxies
{
  proxiesCopy = proxies;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(proxiesCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = proxiesCopy;
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

        bundleIdentifier = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        [v4 addObject:bundleIdentifier];
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
  directionsApplications = [v2 directionsApplications];

  return directionsApplications;
}

- (void)recordAppLaunch:(id)launch
{
  launchCopy = launch;
  routingAppLaunchRecord = [(RoutingAppsManager *)self routingAppLaunchRecord];
  [routingAppLaunchRecord recordAppLaunch:launchCopy];

  v6 = +[PersistenceManager sharedManager];
  v16 = 0;
  v7 = [v6 writeRoutingAppLaunchRecord:routingAppLaunchRecord error:&v16];
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
    readRoutingAppLaunchRecord = [v4 readRoutingAppLaunchRecord];
    v6 = self->_routingAppLaunchRecord;
    self->_routingAppLaunchRecord = readRoutingAppLaunchRecord;

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