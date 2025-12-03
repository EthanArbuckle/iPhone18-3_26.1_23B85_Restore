@interface VirtualGarageServiceTask
- (VirtualGarageServiceTask)init;
- (void)_mapsTerminated:(id)terminated;
- (void)_setupVirtualGarageIfNeeded;
- (void)_tearDownVirtualGarage;
- (void)dealloc;
- (void)setUsesVirtualGarage:(BOOL)garage;
- (void)valueChangedForMapsFeature:(id)feature enabled:(BOOL)enabled;
@end

@implementation VirtualGarageServiceTask

- (VirtualGarageServiceTask)init
{
  v7.receiver = self;
  v7.super_class = VirtualGarageServiceTask;
  v2 = [(VirtualGarageServiceTask *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Maps.VirtualGarageServiceTask.configDelegate", v3);
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v4;

    [(VirtualGarageServiceTask *)v2 _setupVirtualGarageIfNeeded];
  }

  return v2;
}

- (void)_setupVirtualGarageIfNeeded
{
  serviceQueue = [(VirtualGarageServiceTask *)self serviceQueue];
  MapsFeature_AddDelegateListener();
  MapsFeature_AddDelegateListener();
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100022AE8;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(serviceQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)valueChangedForMapsFeature:(id)feature enabled:(BOOL)enabled
{
  v5 = feature.var0.var0 == MapsFeaturesConfig_EnableEVRouting && feature.var0.var1 == *(&MapsFeaturesConfig_EnableEVRouting + 1);
  if (v5 || (feature.var0.var0 == LODWORD(MapsFeaturesConfig_EnableAlberta[0]) ? (v6 = feature.var0.var1 == MapsFeaturesConfig_EnableAlberta[1]) : (v6 = 0), v6))
  {
    if (MapsFeature_IsEnabled_EVRouting())
    {
      IsEnabled_Alberta = 1;
    }

    else
    {
      IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
    }

    v8 = sub_100022C48();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (IsEnabled_Alberta)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = v9;
      if (MapsFeature_IsEnabled_EVRouting())
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = v11;
      if (MapsFeature_IsEnabled_Alberta())
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = v13;
      v15 = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GEOConfigs changed. VirtualGarageIsEnabled: %@, evRoutingEnabled: %@, albertaEnabled: %@", &v15, 0x20u);
    }

    [(VirtualGarageServiceTask *)self setUsesVirtualGarage:IsEnabled_Alberta];
  }
}

- (void)_mapsTerminated:(id)terminated
{
  terminatedCopy = terminated;
  objc_initWeak(&location, self);
  serviceQueue = [(VirtualGarageServiceTask *)self serviceQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C1AAD4;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  dispatch_sync(serviceQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)setUsesVirtualGarage:(BOOL)garage
{
  if (self->_usesVirtualGarage != garage)
  {
    v14 = v3;
    v15 = v4;
    garageCopy = garage;
    self->_usesVirtualGarage = garage;
    v7 = sub_100022C48();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (garageCopy)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "usesVirtualGarage changed. will open virtual garage connection", buf, 2u);
      }

      v9 = +[VGVirtualGarageService sharedService];
      [v9 openForClient:self];

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:self selector:"_mapsTerminated:" name:UIApplicationWillTerminateNotification object:0];

      serviceQueue = [(VirtualGarageServiceTask *)self serviceQueue];
      dispatch_async(serviceQueue, &stru_10164DE38);
    }

    else
    {
      if (v8)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "usesVirtualGarage changed. will close virtual garage connection", v12, 2u);
      }

      [(VirtualGarageServiceTask *)self _tearDownVirtualGarage];
      serviceQueue = +[NSNotificationCenter defaultCenter];
      [serviceQueue removeObserver:self name:UIApplicationWillTerminateNotification object:0];
    }
  }
}

- (void)_tearDownVirtualGarage
{
  v3 = +[VGVirtualGarageService sharedService];
  [v3 closeForClient:self];
}

- (void)dealloc
{
  MapsFeature_RemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = VirtualGarageServiceTask;
  [(VirtualGarageServiceTask *)&v3 dealloc];
}

@end