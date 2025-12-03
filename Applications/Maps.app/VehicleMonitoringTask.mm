@interface VehicleMonitoringTask
- (VehicleMonitoringTask)init;
- (void)_checkBatteryStateWithGarage:(id)garage;
- (void)_loadGarageWithCompletion:(id)completion;
- (void)_syncSelectedVehicleStateWithGarage:(id)garage;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setRoutePlanningSession:(id)session;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation VehicleMonitoringTask

- (void)_checkBatteryStateWithGarage:(id)garage
{
  selectedVehicle = [garage selectedVehicle];
  currentVehicleState = [selectedVehicle currentVehicleState];

  v5 = currentVehicleState;
  if (self->_hasReportedBatteryState || !currentVehicleState)
  {
    v24 = +[VGVirtualGarageService sharedService];
    [v24 unregisterObserver:self];

    v5 = currentVehicleState;
  }

  else if (self->_isNavigating)
  {
    maxBatteryCapacity = [currentVehicleState maxBatteryCapacity];
    [maxBatteryCapacity doubleValue];
    v8 = v7;
    minBatteryCapacity = [currentVehicleState minBatteryCapacity];
    [minBatteryCapacity doubleValue];
    v11 = vabdd_f64(v8, v10);

    v5 = currentVehicleState;
    if (v11 > 2.22044605e-16)
    {
      currentBatteryCapacity = [currentVehicleState currentBatteryCapacity];
      [currentBatteryCapacity doubleValue];
      v14 = v13;
      maxBatteryCapacity2 = [currentVehicleState maxBatteryCapacity];
      [maxBatteryCapacity2 doubleValue];
      v17 = v16;
      minBatteryCapacity2 = [currentVehicleState minBatteryCapacity];
      [minBatteryCapacity2 doubleValue];
      v20 = v14 / (v17 - v19);

      GEOConfigGetDouble();
      v5 = currentVehicleState;
      if (v20 < v21)
      {
        v22 = +[MKMapService sharedService];
        [v22 captureUserAction:6091 onTarget:0 eventValue:0];

        v23 = +[NavigationFeedbackCollector sharedFeedbackCollector];
        [v23 vehicleBatteryDied];

        v5 = currentVehicleState;
        self->_hasReportedBatteryState = 1;
      }
    }
  }
}

- (void)_syncSelectedVehicleStateWithGarage:(id)garage
{
  if (garage)
  {
    selectedVehicle = [garage selectedVehicle];
    sub_1008083B0(selectedVehicle, selectedVehicle);
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

- (void)virtualGarageDidUpdate:(id)update
{
  updateCopy = update;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100808608;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_loadGarageWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = +[VGVirtualGarageService sharedService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100808760;
  v7[3] = &unk_10162B150;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [v5 virtualGarageGetGarageWithReply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  sessionCopy = session;
  resultCopy = result;
  v10 = resultCopy;
  if (type == 1 && !self->_hasReportedRoutePlanningSession)
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
    [resultCopy withValue:v18 orError:&stru_10162B100];
    currentRoute = [v20[5] currentRoute];
    if ([currentRoute isEVRoute])
    {
      v12 = +[VGVirtualGarageService sharedService];
      activeVehicleIdentifier = [v12 activeVehicleIdentifier];

      if (activeVehicleIdentifier)
      {
        objc_initWeak(&location, self);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100808B20;
        v14[3] = &unk_10162B128;
        objc_copyWeak(&v16, &location);
        v15 = activeVehicleIdentifier;
        [(VehicleMonitoringTask *)self _loadGarageWithCompletion:v14];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100808DF0;
  v12[3] = &unk_101661480;
  objc_copyWeak(&v15, &location);
  v13 = toSessionCopy;
  v14 = sessionCopy;
  v10 = sessionCopy;
  v11 = toSessionCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  routePlanningSession = self->_routePlanningSession;
  v7 = sessionCopy;
  if (routePlanningSession != sessionCopy)
  {
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, session);
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