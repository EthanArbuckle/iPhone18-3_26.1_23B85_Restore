@interface DeviceRecentLocations
+ (id)sharedInstance;
- (DeviceRecentLocations)init;
- (void)updateLocationsWithCompletionHandler:(id)a3;
@end

@implementation DeviceRecentLocations

+ (id)sharedInstance
{
  if (qword_10195F238 != -1)
  {
    dispatch_once(&qword_10195F238, &stru_101655280);
  }

  v3 = qword_10195F230;

  return v3;
}

- (DeviceRecentLocations)init
{
  v7.receiver = self;
  v7.super_class = DeviceRecentLocations;
  v2 = [(DeviceRecentLocations *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    locationsLock = v2->locationsLock;
    v2->locationsLock = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_locationManagerApprovalDidChange" name:MKLocationManagerApprovalDidChangeNotification object:0];

    [(DeviceRecentLocations *)v2 updateLocationsWithCompletionHandler:0];
  }

  return v2;
}

- (void)updateLocationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self->deviceLocations)
  {
    v5 = objc_alloc_init(GEORecentLocations);
    deviceLocations = self->deviceLocations;
    self->deviceLocations = v5;
  }

  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DEFFDC;
  v9[3] = &unk_101661090;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

@end