@interface ThermalPressureAnalyticsTask
- (MNNavigationService)navigationService;
- (MapsPowerSourceController)powerSourceController;
- (MapsThermalPressureController)thermalPressureController;
- (PlatformController)platformController;
- (ThermalPressureAnalyticsTask)initWithPlatformController:(id)a3 thermalPressureController:(id)a4 navigationService:(id)a5 powerSourceController:(id)a6;
- (int)_chargingState;
- (int)_mapType;
- (void)dealloc;
- (void)didUpdateThermalPressureLevel:(int)a3;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)powerSourceController:(id)a3 didUpdateChargingState:(int64_t)a4;
@end

@implementation ThermalPressureAnalyticsTask

- (MapsPowerSourceController)powerSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_powerSourceController);

  return WeakRetained;
}

- (MNNavigationService)navigationService
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationService);

  return WeakRetained;
}

- (MapsThermalPressureController)thermalPressureController
{
  WeakRetained = objc_loadWeakRetained(&self->_thermalPressureController);

  return WeakRetained;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)powerSourceController:(id)a3 didUpdateChargingState:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(ThermalPressureAnalyticsTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BC8AD8;
  block[3] = &unk_10165FBC0;
  objc_copyWeak(v9, &location);
  v9[1] = a4;
  dispatch_async(v7, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v9 = [(ThermalPressureAnalyticsTask *)self isolationQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BC8DA8;
  v10[3] = &unk_10164CBF8;
  objc_copyWeak(v11, &location);
  v11[1] = a4;
  v11[2] = a5;
  dispatch_async(v9, v10);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)didUpdateThermalPressureLevel:(int)a3
{
  objc_initWeak(&location, self);
  v5 = [(ThermalPressureAnalyticsTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BC8FF4;
  block[3] = &unk_10165FB70;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (int)_chargingState
{
  v2 = [(ThermalPressureAnalyticsTask *)self powerSourceController];
  v3 = [v2 chargingState];

  if ((v3 - 1) < 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int)_mapType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BC9204;
  v4[3] = &unk_101661600;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(&_dispatch_main_q, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)dealloc
{
  v3 = sub_100BC8C20();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_thermalPressureController);
  [WeakRetained removeThermalPressureObserver:self];

  v5 = objc_loadWeakRetained(&self->_navigationService);
  [v5 unregisterObserver:self];

  v6 = objc_loadWeakRetained(&self->_powerSourceController);
  [v6 unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = ThermalPressureAnalyticsTask;
  [(ThermalPressureAnalyticsTask *)&v7 dealloc];
}

- (ThermalPressureAnalyticsTask)initWithPlatformController:(id)a3 thermalPressureController:(id)a4 navigationService:(id)a5 powerSourceController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29.receiver = self;
  v29.super_class = ThermalPressureAnalyticsTask;
  v14 = [(ThermalPressureAnalyticsTask *)&v29 init];
  if (v14)
  {
    v15 = sub_100BC8C20();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_UTILITY, 0);
    v18 = dispatch_queue_create("com.apple.Maps.ThermalPressureAnalyticsTask.isolation", v17);
    isolationQueue = v14->_isolationQueue;
    v14->_isolationQueue = v18;

    objc_storeWeak(&v14->_platformController, v10);
    objc_storeWeak(&v14->_thermalPressureController, v11);
    WeakRetained = objc_loadWeakRetained(&v14->_platformController);
    LODWORD(v17) = [WeakRetained isPrimary];

    if (v17)
    {
      v21 = sub_100BC8C20();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Observing thermal pressure changes", buf, 0xCu);
      }

      v22 = objc_loadWeakRetained(&v14->_thermalPressureController);
      [v22 addThermalPressureObserver:v14];
    }

    v23 = objc_storeWeak(&v14->_navigationService, v12);
    [v12 registerObserver:v14];

    objc_storeWeak(&v14->_powerSourceController, v13);
    v24 = objc_loadWeakRetained(&v14->_platformController);
    v25 = [v24 isPrimary];

    if (v25)
    {
      v26 = sub_100BC8C20();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Observing power source changes", buf, 0xCu);
      }

      v27 = objc_loadWeakRetained(&v14->_powerSourceController);
      [v27 registerObserver:v14];
    }
  }

  return v14;
}

@end