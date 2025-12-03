@interface ThermalPressureAnalyticsTask
- (MNNavigationService)navigationService;
- (MapsPowerSourceController)powerSourceController;
- (MapsThermalPressureController)thermalPressureController;
- (PlatformController)platformController;
- (ThermalPressureAnalyticsTask)initWithPlatformController:(id)controller thermalPressureController:(id)pressureController navigationService:(id)service powerSourceController:(id)sourceController;
- (int)_chargingState;
- (int)_mapType;
- (void)dealloc;
- (void)didUpdateThermalPressureLevel:(int)level;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)powerSourceController:(id)controller didUpdateChargingState:(int64_t)state;
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

- (void)powerSourceController:(id)controller didUpdateChargingState:(int64_t)state
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  isolationQueue = [(ThermalPressureAnalyticsTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BC8AD8;
  block[3] = &unk_10165FBC0;
  objc_copyWeak(v9, &location);
  v9[1] = state;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  objc_initWeak(&location, self);
  isolationQueue = [(ThermalPressureAnalyticsTask *)self isolationQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BC8DA8;
  v10[3] = &unk_10164CBF8;
  objc_copyWeak(v11, &location);
  v11[1] = state;
  v11[2] = toState;
  dispatch_async(isolationQueue, v10);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)didUpdateThermalPressureLevel:(int)level
{
  objc_initWeak(&location, self);
  isolationQueue = [(ThermalPressureAnalyticsTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BC8FF4;
  block[3] = &unk_10165FB70;
  objc_copyWeak(&v7, &location);
  levelCopy = level;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (int)_chargingState
{
  powerSourceController = [(ThermalPressureAnalyticsTask *)self powerSourceController];
  chargingState = [powerSourceController chargingState];

  if ((chargingState - 1) < 3)
  {
    return chargingState;
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
    selfCopy = self;
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

- (ThermalPressureAnalyticsTask)initWithPlatformController:(id)controller thermalPressureController:(id)pressureController navigationService:(id)service powerSourceController:(id)sourceController
{
  controllerCopy = controller;
  pressureControllerCopy = pressureController;
  serviceCopy = service;
  sourceControllerCopy = sourceController;
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

    objc_storeWeak(&v14->_platformController, controllerCopy);
    objc_storeWeak(&v14->_thermalPressureController, pressureControllerCopy);
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

    v23 = objc_storeWeak(&v14->_navigationService, serviceCopy);
    [serviceCopy registerObserver:v14];

    objc_storeWeak(&v14->_powerSourceController, sourceControllerCopy);
    v24 = objc_loadWeakRetained(&v14->_platformController);
    isPrimary = [v24 isPrimary];

    if (isPrimary)
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