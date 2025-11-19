@interface VehicleMonitoringTask
- (VehicleMonitoringTask)init;
- (void)_checkBatteryStateWithGarage:(id)a3;
- (void)_loadGarageWithCompletion:(id)a3;
- (void)_syncSelectedVehicleStateWithGarage:(id)a3;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setRoutePlanningSession:(id)a3;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation VehicleMonitoringTask

- (void)_checkBatteryStateWithGarage:(id)a3
{
  v4 = [a3 selectedVehicle];
  v25 = [v4 currentVehicleState];

  v5 = v25;
  if (self->_hasReportedBatteryState || !v25)
  {
    v24 = +[VGVirtualGarageService sharedService];
    [v24 unregisterObserver:self];

    v5 = v25;
  }

  else if (self->_isNavigating)
  {
    v6 = [v25 maxBatteryCapacity];
    [v6 doubleValue];
    v8 = v7;
    v9 = [v25 minBatteryCapacity];
    [v9 doubleValue];
    v11 = vabdd_f64(v8, v10);

    v5 = v25;
    if (v11 > 2.22044605e-16)
    {
      v12 = [v25 currentBatteryCapacity];
      [v12 doubleValue];
      v14 = v13;
      v15 = [v25 maxBatteryCapacity];
      [v15 doubleValue];
      v17 = v16;
      v18 = [v25 minBatteryCapacity];
      [v18 doubleValue];
      v20 = v14 / (v17 - v19);

      GEOConfigGetDouble();
      v5 = v25;
      if (v20 < v21)
      {
        v22 = +[MKMapService sharedService];
        [v22 captureUserAction:6091 onTarget:0 eventValue:0];

        v23 = +[NavigationFeedbackCollector sharedFeedbackCollector];
        [v23 vehicleBatteryDied];

        v5 = v25;
        self->_hasReportedBatteryState = 1;
      }
    }
  }
}

- (void)_syncSelectedVehicleStateWithGarage:(id)a3
{
  if (a3)
  {
    v3 = [a3 selectedVehicle];
    sub_1008083B0(v3, v3);
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100808350;
    v4[3] = &unk_10162B1F8;
    v5 = &stru_10162B190;
    [(VehicleMonitoringTask *)self _loadGarageWithCompletion:v4];
  }
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100808608;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_loadGarageWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[VGVirtualGarageService sharedService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100808760;
  v7[3] = &unk_10162B150;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 virtualGarageGetGarageWithReply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5 == 1 && !self->_hasReportedRoutePlanningSession)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100808AF8;
    v23 = sub_100808B08;
    v24 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100808B10;
    v18[3] = &unk_10165E5B8;
    v18[4] = &v19;
    [v9 withValue:v18 orError:&stru_10162B100];
    v11 = [v20[5] currentRoute];
    if ([v11 isEVRoute])
    {
      v12 = +[VGVirtualGarageService sharedService];
      v13 = [v12 activeVehicleIdentifier];

      if (v13)
      {
        objc_initWeak(&location, self);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100808B20;
        v14[3] = &unk_10162B128;
        objc_copyWeak(&v16, &location);
        v15 = v13;
        [(VehicleMonitoringTask *)self _loadGarageWithCompletion:v14];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100808DF0;
  v12[3] = &unk_101661480;
  objc_copyWeak(&v15, &location);
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)setRoutePlanningSession:(id)a3
{
  v5 = a3;
  routePlanningSession = self->_routePlanningSession;
  v7 = v5;
  if (routePlanningSession != v5)
  {
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, a3);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
    self->_hasReportedRoutePlanningSession = 0;
    if (self->_routePlanningSession)
    {
      [(VehicleMonitoringTask *)self _syncSelectedVehicleStateWithGarage:0];
    }
  }
}

- (VehicleMonitoringTask)init
{
  v7.receiver = self;
  v7.super_class = VehicleMonitoringTask;
  v2 = [(VehicleMonitoringTask *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("VehicleMonitoringTask", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

@end