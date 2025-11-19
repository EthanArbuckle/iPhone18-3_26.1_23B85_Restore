@interface CarRouteGeniusVehicleBatteryMonitor
- (CarRouteGeniusVehicleBatteryMonitor)initWithRouteGeniusService:(id)a3 virtualGarageService:(id)a4 callbackQueue:(id)a5;
- (CarRouteGeniusVehicleBatteryMonitorDelegate)delegate;
- (void)_checkBattery;
- (void)_setNeedsCheckBattery;
- (void)_updateState;
- (void)didUpdateRouteGenius:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setCurrentRouteAttributes:(id)a3;
- (void)setCurrentVehicleState:(id)a3;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation CarRouteGeniusVehicleBatteryMonitor

- (CarRouteGeniusVehicleBatteryMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  v5 = sub_100FCD9E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "virtualGarageDidUpdate: %@", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FCDA34;
  v8[3] = &unk_101661A90;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(workQueue, v8);
}

- (void)didUpdateRouteGenius:(id)a3
{
  v4 = a3;
  v5 = sub_100FCD9E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didUpdateRouteGenius: %@", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FCDC00;
  v8[3] = &unk_101661A90;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(workQueue, v8);
}

- (void)_checkBattery
{
  if (self->_needsCheckBattery)
  {
    self->_needsCheckBattery = 0;
    currentRouteAttributes = self->_currentRouteAttributes;
    if (currentRouteAttributes)
    {
      v4 = [(GEORouteAttributes *)currentRouteAttributes automobileOptions];
      v5 = [v4 vehicleSpecifications];
      v6 = [v5 evInfo];

      if (self->_currentVehicleState | v6)
      {
        v12 = [v6 minBatteryCharge];
        v13 = [v6 maxBatteryCharge];
        v14 = [v6 currentBatteryCharge];
        v15 = 0.0;
        v16 = 0.0;
        v17 = v13 - v12;
        if (v13 != v12)
        {
          v18 = fmin(fmax((v14 - v12) / v17, 0.0), 1.0);
          if ((v14 - v12) <= v17)
          {
            v16 = v18;
          }

          else
          {
            v16 = 0.0;
          }
        }

        v19 = [(VGVehicleState *)self->_currentVehicleState minBatteryCapacity];
        v37 = +[NSUnitEnergy kilowattHours];
        v38 = v19;
        v36 = [v19 measurementByConvertingToUnit:?];
        [v36 doubleValue];
        v21 = (v20 * 1000.0);
        v22 = [(VGVehicleState *)self->_currentVehicleState maxBatteryCapacity];
        v23 = +[NSUnitEnergy kilowattHours];
        v24 = [v22 measurementByConvertingToUnit:v23];
        [v24 doubleValue];
        v26 = (v25 * 1000.0);
        v27 = [(VGVehicleState *)self->_currentVehicleState currentBatteryCapacity];
        v28 = +[NSUnitEnergy kilowattHours];
        v29 = [v27 measurementByConvertingToUnit:v28];
        [v29 doubleValue];
        v31 = v26 - v21;
        if (v26 != v21)
        {
          v32 = (v30 * 1000.0) - v21;
          if (v32 <= v31)
          {
            v15 = fmin(fmax(v32 / v31, 0.0), 1.0);
          }
        }

        GEOConfigGetDouble();
        v34 = v33;
        if (vabdd_f64(v16, v15) > v33)
        {
          objc_initWeak(&location, self);
          callbackQueue = self->_callbackQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100FCE020;
          block[3] = &unk_101660490;
          objc_copyWeak(v40, &location);
          v40[1] = *&v16;
          v40[2] = *&v15;
          v40[3] = *&v34;
          dispatch_async(callbackQueue, block);
          objc_destroyWeak(v40);
          objc_destroyWeak(&location);
LABEL_19:

          return;
        }

        v7 = sub_100FCD9E0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          location = 134218496;
          location_4 = v16 * 100.0;
          v43 = 2048;
          v44 = v15 * 100.0;
          v45 = 2048;
          v46 = v34 * 100.0;
          v8 = "_checkBattery: batteryPercentage changed from: %.2lf (RG) to: %.2lf (VG), which is less than threshold: %.2lf -> ignoring";
          v9 = v7;
          v10 = OS_LOG_TYPE_INFO;
          v11 = 32;
          goto LABEL_17;
        }
      }

      else
      {
        v7 = sub_100FCD9E0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(location) = 0;
          v8 = "_checkBattery: user is not driving an EV -> ignoring.";
          v9 = v7;
          v10 = OS_LOG_TYPE_DEBUG;
          v11 = 2;
LABEL_17:
          _os_log_impl(&_mh_execute_header, v9, v10, v8, &location, v11);
        }
      }

      goto LABEL_19;
    }
  }
}

- (void)_setNeedsCheckBattery
{
  if (!self->_needsCheckBattery)
  {
    self->_needsCheckBattery = 1;
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FCE1B0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)_updateState
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FCE25C;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setCurrentRouteAttributes:(id)a3
{
  v5 = a3;
  currentRouteAttributes = self->_currentRouteAttributes;
  v7 = v5;
  v8 = currentRouteAttributes;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = sub_100FCD9E0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = self->_currentRouteAttributes;
        v13 = 138412546;
        v14 = v12;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "setCurrentRouteAttributes: from: %@ to: %@", &v13, 0x16u);
      }

      objc_storeStrong(&self->_currentRouteAttributes, a3);
      [(CarRouteGeniusVehicleBatteryMonitor *)self _setNeedsCheckBattery];
    }
  }
}

- (void)setCurrentVehicleState:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 | self->_currentVehicleState && [v5 isSignificantlyDifferentFromVehicleState:?])
  {
    v7 = sub_100FCD9E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      currentVehicleState = self->_currentVehicleState;
      v9 = 138412546;
      v10 = currentVehicleState;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setCurrentVehicleState: from: %@ to: %@", &v9, 0x16u);
    }

    objc_storeStrong(&self->_currentVehicleState, a3);
    [(CarRouteGeniusVehicleBatteryMonitor *)self _setNeedsCheckBattery];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    routeGeniusService = self->_routeGeniusService;
    if (a3)
    {
      [(CarRouteGeniusService *)routeGeniusService registerObserver:self];
      [(VGVirtualGarageService *)self->_garageService registerObserver:self];
    }

    else
    {
      [(CarRouteGeniusService *)routeGeniusService unregisterObserver:self];
      [(VGVirtualGarageService *)self->_garageService unregisterObserver:self];
    }

    [(CarRouteGeniusVehicleBatteryMonitor *)self _updateState];
  }
}

- (CarRouteGeniusVehicleBatteryMonitor)initWithRouteGeniusService:(id)a3 virtualGarageService:(id)a4 callbackQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CarRouteGeniusVehicleBatteryMonitor;
  v12 = [(CarRouteGeniusVehicleBatteryMonitor *)&v17 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("CarRouteGeniusVehicleBatteryMonitor", v13);
    workQueue = v12->_workQueue;
    v12->_workQueue = v14;

    objc_storeStrong(&v12->_callbackQueue, a5);
    objc_storeStrong(&v12->_routeGeniusService, a3);
    objc_storeStrong(&v12->_garageService, a4);
  }

  return v12;
}

@end