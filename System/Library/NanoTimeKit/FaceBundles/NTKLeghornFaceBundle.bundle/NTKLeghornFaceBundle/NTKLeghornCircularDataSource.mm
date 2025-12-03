@interface NTKLeghornCircularDataSource
+ (double)_visibleHeadingChangeForDevice:(id)device;
+ (id)_waypointsDataSource;
+ (id)sharedInstance;
+ (id)sharedWaypointsDataSource;
- (NTKLeghornCircularDataSource)init;
- (NTKLeghornCircularDataSource)initWithDevice:(id)device;
- (double)value;
- (id)updateHandler;
- (void)_startClockTimer;
- (void)_stopClockTimer;
- (void)setUpdateMode:(unint64_t)mode;
- (void)start;
- (void)stop;
@end

@implementation NTKLeghornCircularDataSource

+ (double)_visibleHeadingChangeForDevice:(id)device
{
  deviceCopy = device;
  objc_msgSend_screenBounds(deviceCopy, v4, v5);
  v7 = v6;
  objc_msgSend_screenScale(deviceCopy, v8, v9);
  v11 = v10;

  return 1.0 / (v11 + v11) / (v7 * 0.5 * 6.28318531 / 360.0);
}

- (NTKLeghornCircularDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v27.receiver = self;
  v27.super_class = NTKLeghornCircularDataSource;
  v5 = [(NTKLeghornCircularDataSource *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_new();
    compass = v5->_compass;
    v5->_compass = v6;

    v8 = objc_opt_new();
    seconds = v5->_seconds;
    v5->_seconds = v8;

    v10 = objc_opt_class();
    v13 = objc_msgSend_sharedWaypointsDataSource(v10, v11, v12);
    waypoints = v5->_waypoints;
    v5->_waypoints = v13;

    v17 = objc_msgSend_sharedInstance(NTKLeghornLocationDataSource, v15, v16);
    location = v5->_location;
    v5->_location = v17;

    clockTimerToken = v5->_clockTimerToken;
    v5->_clockTimerToken = 0;

    objc_msgSend_setUpdateMode_(v5, v20, v21, 2);
    v22 = objc_opt_class();
    objc_msgSend__visibleHeadingChangeForDevice_(v22, v23, v24, deviceCopy);
    v5->_visibleHeadingChange = v25;
  }

  return v5;
}

- (NTKLeghornCircularDataSource)init
{
  v4 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], a2, v2);
  v7 = objc_msgSend_initWithDevice_(self, v5, v6, v4);

  return v7;
}

- (void)_stopClockTimer
{
  if (self->_clockTimerToken)
  {
    v4 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], a2, v2);
    objc_msgSend_stopUpdatesForToken_(v4, v5, v6, self->_clockTimerToken);

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_startClockTimer
{
  updated = objc_msgSend_updateMode(self, a2, v2);
  if (updated > 2)
  {
    v6 = 0;
    v7 = 0;
    v5 = 4;
  }

  else
  {
    v5 = qword_23BEED978[updated];
    v6 = qword_23BEED990[updated];
    v7 = qword_23BEED9A8[updated];
  }

  objc_initWeak(&location, self);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v10 = objc_msgSend_compass(self, v8, v9);
  objc_msgSend_heading(v10, v11, v12);
  v14 = v13;

  v25[3] = v14;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v17 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v15, v16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23BEDF204;
  v22[3] = &unk_278BA1B70;
  objc_copyWeak(v23, &location);
  v22[5] = v25;
  v22[6] = v24;
  v23[1] = 2;
  v23[2] = v5;
  v22[4] = self;
  v23[3] = v7;
  v20 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v17, v18, v19, v6, v22, &unk_284EA8C28);
  clockTimerToken = self->_clockTimerToken;
  self->_clockTimerToken = v20;

  objc_destroyWeak(v23);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  objc_destroyWeak(&location);
}

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF638);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1DF638, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (id)_waypointsDataSource
{
  if (objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], a2, v2))
  {
    v5 = [NTKLeghornDemoPOIDataSource alloc];
    v8 = objc_msgSend_initWithDataSet_(v5, v6, v7, NTKLeghornPOIDataSetInStoreDemo);
  }

  else
  {
    v8 = objc_msgSend_sharedInstance(NTKLeghornWaypointDataSource, v3, v4);
  }

  return v8;
}

+ (id)sharedWaypointsDataSource
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF640);
  if (!WeakRetained)
  {
    WeakRetained = objc_msgSend__waypointsDataSource(selfCopy, v3, v5);
    objc_storeWeak(&qword_27E1DF640, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (double)value
{
  v3 = objc_msgSend_compass(self, a2, v2);
  objc_msgSend_heading(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)stop
{
  v13.receiver = self;
  v13.super_class = NTKLeghornCircularDataSource;
  [(NTKFoghornDataSource *)&v13 stop];
  objc_msgSend__stopClockTimer(self, v3, v4);
  objc_msgSend_stop(self->_compass, v5, v6);
  objc_msgSend_stop(self->_seconds, v7, v8);
  objc_msgSend_stop(self->_waypoints, v9, v10);
  objc_msgSend_stop(self->_location, v11, v12);
}

- (void)start
{
  v13.receiver = self;
  v13.super_class = NTKLeghornCircularDataSource;
  [(NTKFoghornDataSource *)&v13 start];
  objc_msgSend_start(self->_compass, v3, v4);
  objc_msgSend_start(self->_seconds, v5, v6);
  objc_msgSend_start(self->_waypoints, v7, v8);
  objc_msgSend_start(self->_location, v9, v10);
  objc_msgSend__startClockTimer(self, v11, v12);
}

- (id)updateHandler
{
  v4.receiver = self;
  v4.super_class = NTKLeghornCircularDataSource;
  updateHandler = [(NTKFoghornDataSource *)&v4 updateHandler];

  return updateHandler;
}

- (void)setUpdateMode:(unint64_t)mode
{
  updated = objc_msgSend_updateMode(self, a2, v3);
  v16.receiver = self;
  v16.super_class = NTKLeghornCircularDataSource;
  [(NTKFoghornDataSource *)&v16 setUpdateMode:mode];
  objc_msgSend_setUpdateMode_(self->_seconds, v7, v8, 0);
  objc_msgSend_setUpdateMode_(self->_compass, v9, v10, 0);
  if (self->_clockTimerToken)
  {
    v13 = updated == mode;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    objc_msgSend__stopClockTimer(self, v11, v12);
    objc_msgSend__startClockTimer(self, v14, v15);
  }
}

@end