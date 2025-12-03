@interface CMMotionManager
+ ($27EAB7405FCF4138B96BF1D57C6DB1C9)gyroCalibrationDatabaseGetBiasFit;
+ ($27EAB7405FCF4138B96BF1D57C6DB1C9)gyroCalibrationDatabaseGetBiasFitAndEstimate:(SEL)estimate atTemperature:(id *)temperature;
+ (BOOL)northAlignedReferenceFrame:(unint64_t)frame;
+ (BOOL)supportsGyroMiniCalibration;
+ (CMAttitudeReferenceFrame)availableAttitudeReferenceFrames;
+ (unint64_t)availableAttitudeReferenceFramesNoSim;
+ (void)dumpDb:(int64_t)db toURL:(id)l onCompletion:(id)completion;
+ (void)initialize;
+ (void)setVirtualAlmondDevice:(id)device;
- (BOOL)isAccelerometerAvailable;
- (BOOL)isAmbientPressureAvailable;
- (BOOL)isMagnetometerAvailable;
- (BOOL)isSidebandSensorFusionAvailable;
- (BOOL)readRawAmbientPressureSamplesFromDB:(id)b toQueue:(id)queue where:(id)where withHandler:(id)handler;
- (BOOL)sendDeviceMotionHostGravityToKeyboard:(id *)keyboard;
- (BOOL)setMotionThreadPriority:(int)priority;
- (BOOL)shouldResetStartingReference;
- (CMAccelerometerData)accelerometerData;
- (CMAmbientPressureData)ambientPressureData;
- (CMAmbientPressureData)compensatedAmbientPressureData;
- (CMDeviceMotion)deviceMotion;
- (CMGyroData)gyroData;
- (CMMagnetometerData)magnetometerData;
- (CMMotionManager)init;
- (id)computeNonlinearPRTTFromDB:(id)b where:(id)where;
- (id)deviceMotionNoSim;
- (id)initPrivate;
- (id)initUsing6AxisSensorFusion;
- (id)initUsingGyroOnlySensorFusion;
- (id)predictedDeviceMotionAtTimestamp:(double)timestamp error:(id *)error;
- (int)gyttNumTemperatures;
- (void)_startDeviceMotionErrorUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)_stopDeviceMotionErrorUpdates;
- (void)applyInitialReference:(Sample *)reference;
- (void)applyNorthReference:(Sample *)reference;
- (void)connect;
- (void)dealloc;
- (void)deallocPrivate;
- (void)didBecomeActive:(id)active;
- (void)didBecomeActivePrivate:(id)private;
- (void)dismissDeviceMovementDisplay;
- (void)onAccelerometer:(const Sample *)accelerometer;
- (void)onAmbientPressure:(const Sample *)pressure;
- (void)onCompensatedAmbientPressure:(const Sample *)pressure;
- (void)onDeviceMotion:(const Sample *)motion;
- (void)onDeviceMotionForKeyboardMotion:(const Sample *)motion;
- (void)onFactoryGyro:(const Sample *)gyro;
- (void)onFactoryGyroTemperature:(const Temperature *)temperature;
- (void)onGyro:(const Sample *)gyro;
- (void)onMagnetometer:(const Sample *)magnetometer;
- (void)rebuildGytt;
- (void)setAccelerometerDataCallback:(void *)callback info:(void *)info interval:(double)interval;
- (void)setAccelerometerUpdateInterval:(NSTimeInterval)accelerometerUpdateInterval;
- (void)setAccelerometerUpdateIntervalPrivate:(double)private;
- (void)setAmbientPressureUpdateInterval:(double)interval;
- (void)setAmbientPressureUpdateIntervalPrivate:(double)private;
- (void)setCompensatedAmbientPressureUpdateInterval:(double)interval;
- (void)setCompensatedAmbientPressureUpdateIntervalPrivate:(double)private;
- (void)setDeviceMotionCallback:(void *)callback info:(void *)info interval:(double)interval fsync:(BOOL)fsync;
- (void)setDeviceMotionUpdateInterval:(NSTimeInterval)deviceMotionUpdateInterval;
- (void)setDeviceMotionUpdateIntervalNoSim:(double)sim;
- (void)setDeviceMotionUpdateIntervalPrivate:(double)private;
- (void)setDisplayGravityHandler:(id)handler interval:(double)interval;
- (void)setGyroDataCallback:(void *)callback info:(void *)info interval:(double)interval;
- (void)setGyroUpdateInterval:(NSTimeInterval)gyroUpdateInterval;
- (void)setGyroUpdateIntervalPrivate:(double)private;
- (void)setMagnetometerDataCallback:(void *)callback info:(void *)info interval:(double)interval;
- (void)setMagnetometerUpdateInterval:(NSTimeInterval)magnetometerUpdateInterval;
- (void)setMagnetometerUpdateIntervalPrivate:(double)private;
- (void)setNotificationCallback:(void *)callback info:(void *)info;
- (void)setPowerConservationMode:(int)mode;
- (void)setShouldResetStartingReference:(BOOL)reference;
- (void)setShowsDeviceMovementDisplay:(BOOL)showsDeviceMovementDisplay;
- (void)setSidebandTimeSyncHandler:(id)handler;
- (void)showDeviceMovementDisplay;
- (void)startAccelerometerUpdates;
- (void)startAccelerometerUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startAccelerometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAccelerometerHandler)handler;
- (void)startAmbientPressureUpdates;
- (void)startAmbientPressureUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startAmbientPressureUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startCompensatedAmbientPressureUpdates;
- (void)startCompensatedAmbientPressureUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startCompensatedAmbientPressureUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionLiteFusedUpdatesForDeviceID:(id)d toQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionLiteUpdatesForDeviceID:(id)d usingConfiguration:(id)configuration toQueue:(id)queue withFusedHandler:(id)handler;
- (void)startDeviceMotionUpdates;
- (void)startDeviceMotionUpdatesForKeyboardMotionPrivateToQueue:(id)queue withGravityDeltaThreshold:(double)threshold notificationFrequency:(double)frequency andHandler:(id)handler;
- (void)startDeviceMotionUpdatesForKeyboardMotionToQueue:(id)queue withGravityDeltaThreshold:(double)threshold sendFrequency:(double)frequency andHandler:(id)handler;
- (void)startDeviceMotionUpdatesNoSim;
- (void)startDeviceMotionUpdatesNoSimToQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionUpdatesNoSimUsingReferenceFrame:(unint64_t)frame;
- (void)startDeviceMotionUpdatesNoSimUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionUpdatesPrivateUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler;
- (void)startDeviceMotionUpdatesUsingReferenceFrame:(CMAttitudeReferenceFrame)referenceFrame;
- (void)startDeviceMotionUpdatesUsingReferenceFrame:(CMAttitudeReferenceFrame)referenceFrame toQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler;
- (void)startFactoryGyroUpdatesPrivateToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler residualHandler:(id)residualHandler;
- (void)startFactoryGyroUpdatesToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler;
- (void)startFactoryGyroUpdatesToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler residualHandler:(id)residualHandler;
- (void)startFactoryGyroUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startGyroUpdates;
- (void)startGyroUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startGyroUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMGyroHandler)handler;
- (void)startMagnetometerUpdates;
- (void)startMagnetometerUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startMagnetometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMMagnetometerHandler)handler;
- (void)stopAccelerometerUpdates;
- (void)stopAccelerometerUpdatesPrivate;
- (void)stopAmbientPressureUpdates;
- (void)stopAmbientPressureUpdatesPrivate;
- (void)stopCompensatedAmbientPressureUpdates;
- (void)stopCompensatedAmbientPressureUpdatesPrivate;
- (void)stopDeviceMotionLiteUpdatesForDeviceID:(id)d;
- (void)stopDeviceMotionUpdates;
- (void)stopDeviceMotionUpdatesForKeyboardMotion;
- (void)stopDeviceMotionUpdatesForKeyboardMotionPrivate;
- (void)stopDeviceMotionUpdatesNoSim;
- (void)stopDeviceMotionUpdatesPrivate;
- (void)stopFactoryGyroUpdates;
- (void)stopFactoryGyroUpdatesPrivate;
- (void)stopGyroUpdates;
- (void)stopGyroUpdatesPrivate;
- (void)stopMagnetometerUpdates;
- (void)stopMagnetometerUpdatesPrivate;
- (void)updateDeviceMotionMode;
- (void)willResignActive:(id)active;
- (void)willResignActivePrivate:(id)private;
@end

@implementation CMMotionManager

+ (CMAttitudeReferenceFrame)availableAttitudeReferenceFrames
{
  sub_19B421798();
  if ((sub_19B423E34() & 4) == 0)
  {
    return 0;
  }

  if ((sub_19B42521C() & 1) == 0 && (sub_19B423E34() & 1) == 0)
  {
    return 1;
  }

  sub_19B421798();
  return 15;
}

- (CMMotionManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428A6C;
  v11 = sub_19B429018;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B428C08;
  v6[3] = &unk_1E7533708;
  v6[4] = self;
  v6[5] = &v7;
  sub_19B420C9C(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)initPrivate
{
  v9.receiver = self;
  v9.super_class = CMMotionManager;
  v2 = [(CMMotionManager *)&v9 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMMotionManagerInternal);
    v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
    objc_msgSend_addObserver_selector_name_object_(v5, v6, v2, sel_willResignActive_, @"UIApplicationWillResignActiveNotification", 0);
    objc_msgSend_addObserver_selector_name_object_(v5, v7, v2, sel_didBecomeActive_, @"UIApplicationDidBecomeActiveNotification", 0);
  }

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v3, v4);
    if (objc_msgSend_isMainThread(v5, v6, v7) && (objc_msgSend_isMultiThreaded(MEMORY[0x1E696AF00], v8, v9) & 1) == 0)
    {
      objc_msgSend_detachNewThreadSelector_toTarget_withObject_(MEMORY[0x1E696AF00], v10, sel_dummySelector_, self, 0);
    }

    if (!qword_1ED71C900)
    {
      Main = CFRunLoopGetMain();

      sub_19B429D10(Main);
    }
  }
}

- (BOOL)isSidebandSensorFusionAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B421620() >> 30) & 1;
  }

  return v2;
}

- (id)initUsingGyroOnlySensorFusion
{
  result = objc_msgSend_init(self, a2, v2);
  if (result)
  {
    v4 = *(result + 1);
    *(v4 + 536) = 0;
    *(v4 + 538) = 1;
  }

  return result;
}

- (BOOL)isAccelerometerAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B423E34() >> 2) & 1;
  }

  return v2;
}

- (void)dismissDeviceMovementDisplay
{
  v8 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal[312] == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "CM: Dismissing Compass Calibration HUD", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager dismissDeviceMovementDisplay]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    sub_19B6F3C6C();
    internal[312] = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (CMDeviceMotion)deviceMotion
{
  v44 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (objc_msgSend_isDeviceMotionActive(self, a2, v2) && internal[74] && (v5 = sub_19B424AE0(), sub_19B71FE3C(v5, internal[74], &v24, v6), objc_msgSend_applyNorthReference_(self, v7, &v24), objc_msgSend_applyInitialReference_(self, v8, &v24), objc_msgSend_deviceMotionInitialized_(CMMotionManager, v9, &v24)))
  {
    v10 = [CMDeviceMotion alloc];
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v43 = v30;
    *buf = v25;
    *&buf[16] = v26;
    LODWORD(v11) = v33;
    LODWORD(v12) = v34;
    v14 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v10, v13, buf, COERCE_DOUBLE(__PAIR64__(DWORD1(v25), v31)), COERCE_DOUBLE(__PAIR64__(DWORD1(v26), v32)), v11, v12, v24);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v15 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v16 = mach_absolute_time();
      v17 = sub_19B41E070(v16);
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "CMDeviceMotion: %@,now,%f", buf, 0x16u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v19 = mach_absolute_time();
      v20 = sub_19B41E070(v19);
      v35 = 138412546;
      v36 = v14;
      v37 = 2048;
      v38 = v20;
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager deviceMotion]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)updateDeviceMotionMode
{
  internal = self->_internal;
  if (*(internal + 536) == 1)
  {
    v3 = internal[38];
    if (v3 == 8)
    {
      v4 = 143;
    }

    else if (v3 == 4)
    {
      v4 = 15;
    }

    else
    {
      v4 = 7;
    }
  }

  else
  {
    v5 = *(internal + 147);
    if (*(internal + 537) == 1)
    {
      if (v5 == 3)
      {
        v4 = 259;
      }

      else if (v5 == 2)
      {
        v4 = 67;
      }

      else
      {
        v4 = 3;
      }
    }

    else if (v5 == 1)
    {
      v4 = 34;
    }

    else
    {
      v4 = 2;
    }
  }

  *(internal + 74) = v4;
}

- (void)stopDeviceMotionUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B449534;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)stopDeviceMotionUpdatesPrivate
{
  internal = self->_internal;
  if (internal[538] == 1)
  {
    if ((objc_msgSend_isDeviceMotionAvailableNoSim(self, a2, v2) & 1) == 0)
    {
      return;
    }
  }

  else if (!objc_msgSend_isDeviceMotionAvailable(self, a2, v2))
  {
    return;
  }

  *(internal + 315) = 0;
  if (*(internal + 32))
  {
    v8 = sub_19B424AE0();
    sub_19B425248(v8, *(internal + 32));
    v9 = *(internal + 32);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(internal + 32) = 0;
    v10 = *(internal + 81);
    if (v10)
    {
      v7 = sub_19B72A398(v10, 4);
    }
  }

  v11 = *(internal + 35);
  if (v11)
  {

    *(internal + 35) = 0;
  }

  v12 = *(internal + 34);
  if (v12)
  {

    *(internal + 34) = 0;
  }

  objc_msgSend_dismissDeviceMovementDisplay(self, v5, v6, v7);
  internal[314] = 0;
}

+ (void)setVirtualAlmondDevice:(id)device
{
  if (sub_19B5F8F74())
  {
    deviceCopy = device;

    qword_1EAFE38C8 = deviceCopy;
  }
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428A6C;
  v6[4] = sub_19B429018;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B62AE88;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMMotionManager;
  [(CMMotionManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  internal = self->_internal;
  v4 = objc_autoreleasePoolPush();

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend_removeObserver_(v7, v8, self);
  objc_msgSend_cancelAllOperations(internal[5], v9, v10);
  objc_msgSend_cancelAllOperations(internal[27], v11, v12);
  objc_msgSend_cancelAllOperations(internal[35], v13, v14);
  objc_msgSend_cancelAllOperations(internal[78], v15, v16);
  objc_msgSend_cancelAllOperations(internal[49], v17, v18);
  objc_msgSend_cancelAllOperations(internal[13], v19, v20);
  objc_msgSend_stopAccelerometerUpdatesPrivate(self, v21, v22);
  objc_msgSend_stopGyroUpdatesPrivate(self, v23, v24);
  objc_msgSend_stopDeviceMotionUpdatesPrivate(self, v25, v26);
  objc_msgSend__stopDeviceMotionErrorUpdates(self, v27, v28);
  objc_msgSend_stopMagnetometerUpdatesPrivate(self, v29, v30);
  objc_msgSend_stopAmbientPressureUpdatesPrivate(self, v31, v32);
  objc_msgSend_teardownPrivate(self->_internal, v33, v34);

  objc_autoreleasePoolPop(v4);
}

- (void)setAccelerometerUpdateInterval:(NSTimeInterval)accelerometerUpdateInterval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62B010;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = accelerometerUpdateInterval;
  sub_19B420C9C(v5, v6);
}

- (CMAccelerometerData)accelerometerData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 7);
  v4 = *(internal + 16);
  v5 = *(internal + 17);
  v6 = *(internal + 18);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v7 = [CMAccelerometerData alloc];
  LODWORD(v8) = v4;
  LODWORD(v9) = v5;
  LODWORD(v10) = v6;
  v13 = objc_msgSend_initWithAcceleration_andTimestamp_(v7, v11, v12, v8, v9, v10, v3);

  return v13;
}

- (void)startAccelerometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62B144;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startAccelerometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAccelerometerHandler)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62B1E4;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopAccelerometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62B270;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setAccelerometerUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 3) = private;
  if (*(internal + 2))
  {
    v4 = sub_19B4249E4();
    v5 = *(internal + 2);

    sub_19B44E2F8(v4, 0, v5, internal + 24);
  }
}

- (void)startAccelerometerUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (objc_msgSend_isAccelerometerAvailable(self, a2, queue) && internal[3] > 0.0)
  {
    v7 = *(internal + 5);
    if (v7 != queue)
    {

      *(internal + 5) = queue;
    }

    v8 = *(internal + 4);
    if (v8 != handler)
    {

      *(internal + 4) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 2))
    {
      operator new();
    }
  }
}

- (void)stopAccelerometerUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend_isAccelerometerAvailable(self, a2, v2))
  {
    if (internal[2])
    {
      v4 = sub_19B4249E4();
      sub_19B426A14(v4, 0, internal[2]);
      v5 = internal[2];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[2] = 0;
      v6 = internal[81];
      if (v6)
      {
        sub_19B72A398(v6, 1);
      }
    }

    v7 = internal[5];
    if (v7)
    {

      internal[5] = 0;
    }

    v8 = internal[4];
    if (v8)
    {

      internal[4] = 0;
    }
  }
}

- (BOOL)isAmbientPressureAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B423E34() >> 4) & 1;
  }

  return v2;
}

- (void)setAmbientPressureUpdateInterval:(double)interval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62B580;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = interval;
  sub_19B420C9C(v5, v6);
}

- (void)startAmbientPressureUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62B62C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startAmbientPressureUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62B6CC;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopAmbientPressureUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62B758;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (CMAmbientPressureData)ambientPressureData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 15);
  v4 = *(internal + 32);
  v5 = *(internal + 33);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v6 = [CMAmbientPressureData alloc];
  LODWORD(v7) = v4;
  LODWORD(v8) = v5;
  v11 = objc_msgSend_initWithPressure_andTimestamp_(v6, v9, v10, v7, v8, v3);

  return v11;
}

- (BOOL)readRawAmbientPressureSamplesFromDB:(id)b toQueue:(id)queue where:(id)where withHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_UTF8String(b, a2, b);
  sub_19B428B50(__p, v10);
  v33 = 0uLL;
  v34 = 0;
  v28 = 0uLL;
  v29 = 0;
  sub_19B668A1C(v30, __p, &v33, &v28);
  if (v32 < 0)
  {
    operator delete(*__p);
  }

  if ((v30[0] & 1) == 0)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3A758);
    }

    v16 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      *__p = 138412290;
      *&__p[4] = b;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "%@ is invalid", __p, 0xCu);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E3A758);
      }

      LODWORD(v33) = 138412290;
      *(&v33 + 4) = b;
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager readRawAmbientPressureSamplesFromDB:toQueue:where:withHandler:]", "CoreLocation: %s\n", v18);
      if (v18 != __p)
      {
        free(v18);
      }
    }

    goto LABEL_21;
  }

  v13 = objc_msgSend_UTF8String(where, v11, v12);
  sub_19B428B50(__p, v13);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_19B62BB88;
  v27[3] = &unk_1E7533758;
  v27[4] = queue;
  v27[5] = handler;
  v14 = sub_19B6697FC(v30, __p, v27);
  v15 = v14;
  if (v32 < 0)
  {
    operator delete(*__p);
    if ((v15 & 1) == 0)
    {
LABEL_21:
      v23 = 0;
      goto LABEL_22;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = objc_msgSend_initWithDomain_code_userInfo_(v19, v20, @"CMErrorDomain", 109, 0);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_19B62BC40;
  v26[3] = &unk_1E7532B90;
  v26[4] = v21;
  v26[5] = handler;
  objc_msgSend_addOperationWithBlock_(queue, v22, v26);

  v23 = 1;
LABEL_22:
  sub_19B66882C(v30);
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)computeNonlinearPRTTFromDB:(id)b where:(id)where
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_UTF8String(b, a2, b);
  sub_19B428B50(buf, v6);
  v9 = objc_msgSend_UTF8String(where, v7, v8);
  sub_19B428B50(v22, v9);
  v11 = sub_19B669D40(buf, v22, v17);
  if (v25 < 0)
  {
    operator delete(*v22);
  }

  if (v21 < 0)
  {
    operator delete(*buf);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (v11)
  {
LABEL_5:
    result = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, v17, 222);
    goto LABEL_19;
  }

  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E3A758);
  }

  v13 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    *&buf[4] = b;
    v19 = 2112;
    whereCopy = where;
    _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Failed to calculate PRTT for %@ WHERE %@", buf, 0x16u);
  }

  v14 = sub_19B420058();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3A758);
    }

    *v22 = 138412546;
    *&v22[4] = b;
    v23 = 2112;
    whereCopy2 = where;
    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager computeNonlinearPRTTFromDB:where:]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  result = 0;
LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCompensatedAmbientPressureUpdateInterval:(double)interval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62BF88;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = interval;
  sub_19B420C9C(v5, v6);
}

- (void)startCompensatedAmbientPressureUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62C034;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startCompensatedAmbientPressureUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62C0D4;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopCompensatedAmbientPressureUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62C160;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (CMAmbientPressureData)compensatedAmbientPressureData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 22);
  v4 = *(internal + 46);
  v5 = *(internal + 47);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v6 = [CMAmbientPressureData alloc];
  LODWORD(v7) = v4;
  LODWORD(v8) = v5;
  v11 = objc_msgSend_initWithPressure_andTimestamp_(v6, v9, v10, v7, v8, v3);

  return v11;
}

- (void)setAmbientPressureUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 11) = private;
  if (*(internal + 10))
  {
    v4 = sub_19B61C754();
    v5 = *(internal + 10);

    sub_19B44E2F8(v4, 0, v5, internal + 88);
  }
}

- (void)startAmbientPressureUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (objc_msgSend_isAmbientPressureAvailable(self, a2, queue) && internal[11] > 0.0)
  {
    v7 = *(internal + 13);
    if (v7 != queue)
    {

      *(internal + 13) = queue;
    }

    v8 = *(internal + 12);
    if (v8 != handler)
    {

      *(internal + 12) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 10))
    {
      operator new();
    }
  }
}

- (void)stopAmbientPressureUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend_isAmbientPressureAvailable(self, a2, v2))
  {
    if (internal[10])
    {
      v4 = sub_19B61C754();
      sub_19B426A14(v4, 0, internal[10]);
      v5 = internal[10];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[10] = 0;
    }

    v6 = internal[13];
    if (v6)
    {

      internal[13] = 0;
    }

    v7 = internal[12];
    if (v7)
    {

      internal[12] = 0;
    }
  }
}

- (void)setCompensatedAmbientPressureUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 18) = private;
  if (*(internal + 17))
  {
    v4 = sub_19B61C754();
    v5 = *(internal + 17);

    sub_19B44E2F8(v4, 0, v5, internal + 144);
  }
}

- (void)startCompensatedAmbientPressureUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (objc_msgSend_isAmbientPressureAvailable(self, a2, queue) && internal[18] > 0.0)
  {
    v7 = *(internal + 20);
    if (v7 != queue)
    {

      *(internal + 20) = queue;
    }

    v8 = *(internal + 19);
    if (v8 != handler)
    {

      *(internal + 19) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 17))
    {
      operator new();
    }
  }
}

- (void)stopCompensatedAmbientPressureUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend_isAmbientPressureAvailable(self, a2, v2))
  {
    if (internal[17])
    {
      v4 = sub_19B61C754();
      sub_19B426A14(v4, 1, internal[17]);
      v5 = internal[17];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[17] = 0;
    }

    v6 = internal[20];
    if (v6)
    {

      internal[20] = 0;
    }

    v7 = internal[19];
    if (v7)
    {

      internal[19] = 0;
    }
  }
}

- (void)setGyroUpdateInterval:(NSTimeInterval)gyroUpdateInterval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62C73C;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = gyroUpdateInterval;
  sub_19B420C9C(v5, v6);
}

- (CMGyroData)gyroData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 29);
  v4 = *(internal + 60);
  v5 = *(internal + 61);
  v6 = *(internal + 62);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v7 = [CMGyroData alloc];
  LODWORD(v8) = v4;
  LODWORD(v9) = v5;
  LODWORD(v10) = v6;
  v13 = objc_msgSend_initWithRotationRate_andTimestamp_(v7, v11, v12, v8, v9, v10, v3);

  return v13;
}

- (void)startGyroUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62C870;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startGyroUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMGyroHandler)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62C910;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopGyroUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62C99C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setGyroUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 25) = private;
  if (*(internal + 24))
  {
    v4 = sub_19B42AD98();
    v5 = *(internal + 24);

    sub_19B44E2F8(v4, 0, v5, internal + 200);
  }
}

- (void)startGyroUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if ((sub_19B4215D8() & 1) == 0 && (sub_19B421620() & 0x200000) == 0 && internal[25] > 0.0)
  {
    v7 = *(internal + 27);
    if (v7 != queue)
    {

      *(internal + 27) = queue;
    }

    v8 = *(internal + 26);
    if (v8 != handler)
    {

      *(internal + 26) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 24))
    {
      operator new();
    }
  }
}

- (void)stopGyroUpdatesPrivate
{
  internal = self->_internal;
  if ((sub_19B4215D8() & 1) == 0 && (sub_19B421620() & 0x200000) == 0)
  {
    if (internal[24])
    {
      v3 = sub_19B42AD98();
      sub_19B426A14(v3, 0, internal[24]);
      v4 = internal[24];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      internal[24] = 0;
      v5 = internal[81];
      if (v5)
      {
        sub_19B72A398(v5, 2);
      }
    }

    v6 = internal[27];
    if (v6)
    {

      internal[27] = 0;
    }

    v7 = internal[26];
    if (v7)
    {

      internal[26] = 0;
    }
  }
}

- (void)setDeviceMotionUpdateInterval:(NSTimeInterval)deviceMotionUpdateInterval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62CC90;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = deviceMotionUpdateInterval;
  sub_19B420C9C(v5, v6);
}

- (void)startDeviceMotionUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62CD1C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startDeviceMotionUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62CDF4;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)startDeviceMotionUpdatesUsingReferenceFrame:(CMAttitudeReferenceFrame)referenceFrame
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62CEBC;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  v6[5] = referenceFrame;
  sub_19B421668(v5, v6);
}

- (void)startDeviceMotionUpdatesUsingReferenceFrame:(CMAttitudeReferenceFrame)referenceFrame toQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B62CF64;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = queue;
  v10[6] = handler;
  v10[7] = referenceFrame;
  sub_19B421668(v9, v10);
}

+ (unint64_t)availableAttitudeReferenceFramesNoSim
{
  sub_19B421798();
  if ((sub_19B423E34() & 4) == 0)
  {
    return 0;
  }

  if ((sub_19B42521C() & 1) == 0 && (sub_19B423E34() & 1) == 0)
  {
    return 1;
  }

  sub_19B421798();
  return 15;
}

- (void)setDeviceMotionUpdateIntervalNoSim:(double)sim
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62D084;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = sim;
  sub_19B420C9C(v5, v6);
}

- (id)deviceMotionNoSim
{
  v48 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (!objc_msgSend_isDeviceMotionActiveNoSim(self, a2, v2) || !internal[74])
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v23 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      v24 = internal[74];
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "CMDeviceMotion not active or unknown, mode, %u", buf, 8u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v26 = internal[74];
    LODWORD(v32) = 67109120;
    HIDWORD(v32) = v26;
    goto LABEL_36;
  }

  v5 = sub_19B424AE0();
  sub_19B71FE3C(v5, internal[74], &v32, v6);
  objc_msgSend_applyNorthReference_(self, v7, &v32);
  objc_msgSend_applyInitialReference_(self, v8, &v32);
  if (!objc_msgSend_deviceMotionInitialized_(CMMotionManager, v9, &v32))
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v30 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "deviceMotionInitialized returned nil", buf, 2u);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_55;
  }

  v10 = [CMDeviceMotion alloc];
  v44 = v35;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  *buf = v33;
  *&buf[16] = v34;
  LODWORD(v11) = v41;
  LODWORD(v12) = v42;
  v14 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v10, v13, buf, COERCE_DOUBLE(__PAIR64__(DWORD1(v33), v39)), COERCE_DOUBLE(__PAIR64__(DWORD1(v34), v40)), v11, v12, v32);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v15 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v16 = mach_absolute_time();
    v17 = sub_19B41E070(v16);
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "CMDeviceMotion: %@,now,%f", buf, 0x16u);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v19 = mach_absolute_time();
    sub_19B41E070(v19);
    v20 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager deviceMotionNoSim]", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  if (!v14)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v21 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "devicemotion object is nil", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 == -1)
    {
LABEL_36:
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager deviceMotionNoSim]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }

LABEL_38:
      v14 = 0;
      goto LABEL_39;
    }

LABEL_55:
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    goto LABEL_36;
  }

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)startDeviceMotionUpdatesNoSim
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62D6F4;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startDeviceMotionUpdatesNoSimToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62D7CC;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)startDeviceMotionUpdatesNoSimUsingReferenceFrame:(unint64_t)frame
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62D894;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  v6[5] = frame;
  sub_19B421668(v5, v6);
}

- (void)startDeviceMotionUpdatesNoSimUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B62D93C;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = queue;
  v10[6] = handler;
  v10[7] = frame;
  sub_19B421668(v9, v10);
}

- (void)stopDeviceMotionUpdatesNoSim
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62D9C8;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setDeviceMotionUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 33) = private;
  if (*(internal + 32))
  {
    v4 = sub_19B424AE0();
    v5 = *(internal + 32);
    v6 = *(internal + 33);

    sub_19B44DE40(v4, v5, v6);
  }
}

- (void)startDeviceMotionUpdatesPrivateUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (internal[538] == 1)
  {
    if (!objc_msgSend_isDeviceMotionAvailableNoSim(self, a2, frame) || *(internal + 33) <= 0.0 || (objc_msgSend_availableAttitudeReferenceFramesNoSim(CMMotionManager, v10, v11) & frame) == 0)
    {
      return;
    }

    if (objc_msgSend_isDeviceMotionActiveNoSim(self, v12, v13) && *(internal + 38) != frame)
    {
      objc_msgSend_stopDeviceMotionUpdatesNoSim(self, v14, v15);
    }
  }

  else
  {
    if (!objc_msgSend_isDeviceMotionAvailable(self, a2, frame) || *(internal + 33) <= 0.0 || (objc_msgSend_availableAttitudeReferenceFrames(CMMotionManager, v16, v17) & frame) == 0)
    {
      return;
    }

    if (objc_msgSend_isDeviceMotionActive(self, v18, v19) && *(internal + 38) != frame)
    {
      objc_msgSend_stopDeviceMotionUpdates(self, v20, v21);
    }
  }

  *(internal + 38) = frame;
  internal[360] = 0;
  v22 = mach_absolute_time();
  *(internal + 40) = sub_19B41E070(v22);
  if ((*(internal + 38) - 1) > 1)
  {
    if ((internal[314] & 1) == 0)
    {
      *(internal + 313) = 257;
    }
  }

  else
  {
    objc_msgSend_dismissDeviceMovementDisplay(self, v23, v24);
  }

  v25 = *(internal + 35);
  if (v25 != queue)
  {

    *(internal + 35) = queue;
  }

  v26 = *(internal + 34);
  if (v26 != handler)
  {

    *(internal + 34) = objc_msgSend_copy(handler, v27, v28);
  }

  if (!*(internal + 32))
  {
    v29 = *(internal + 38);
    if (v29 > 3)
    {
      if (v29 == 4)
      {
        v30 = 15;
      }

      else
      {
        if (v29 != 8)
        {
          goto LABEL_36;
        }

        v30 = 143;
      }
    }

    else if (v29 == 1)
    {
      v31 = *(internal + 147);
      if (internal[537] == 1)
      {
        if (v31 == 3)
        {
          v30 = 259;
        }

        else if (v31 == 2)
        {
          v30 = 67;
        }

        else
        {
          v30 = 3;
        }
      }

      else if (v31 == 1)
      {
        v30 = 34;
      }

      else
      {
        v30 = 2;
      }
    }

    else
    {
      if (v29 != 2)
      {
        goto LABEL_36;
      }

      v30 = 7;
    }

    *(internal + 74) = v30;
LABEL_36:
    v32 = [CLDeviceMotionProperties alloc];
    objc_msgSend_initWithMode_(v32, v33, *(internal + 74));
    operator new();
  }
}

+ (void)dumpDb:(int64_t)db toURL:(id)l onCompletion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, a2, l))
  {
    v12 = @"CMReturnCode";
    v13[0] = MEMORY[0x1E695E110];
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v13, &v12, 1);
    (*(completion + 2))(completion, v8);
  }

  v10 = @"CMDatabaseType";
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, db);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v11, &v10, 1);
  sub_19B5E2E24();
}

- (void)rebuildGytt
{
  internal = self->_internal;
  if (objc_msgSend_isDeviceMotionAvailable(self, a2, v2))
  {
    objc_msgSend_stopDeviceMotionUpdates(self, v5, v6);
    v7 = sub_19B420D84();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B62E06C;
    v8[3] = &unk_1E7532A00;
    v8[4] = internal;
    v8[5] = self;
    sub_19B421668(v7, v8);
  }
}

- (int)gyttNumTemperatures
{
  v2 = sub_19B43D9C4();
  v5 = objc_msgSend_vendor(v2, v3, v4);
  v7 = objc_msgSend_proxyForService_(v5, v6, @"CLGyroCalibrationDatabase");
  if (!v7)
  {
    return -2;
  }

  return MEMORY[0x1EEE66B58](v7, sel_syncgetNumTemperatures, v8);
}

- (BOOL)isMagnetometerAvailable
{
  if (sub_19B4215D8())
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_19B423E34();
  }

  return v2 & 1;
}

- (void)setMagnetometerUpdateInterval:(NSTimeInterval)magnetometerUpdateInterval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62E2E0;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = magnetometerUpdateInterval;
  sub_19B420C9C(v5, v6);
}

- (CMMagnetometerData)magnetometerData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 51);
  v4 = *(internal + 104);
  v5 = *(internal + 105);
  v6 = *(internal + 106);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v7 = [CMMagnetometerData alloc];
  LODWORD(v8) = v4;
  LODWORD(v9) = v5;
  LODWORD(v10) = v6;
  v13 = objc_msgSend_initWithMagneticField_andTimestamp_(v7, v11, v12, v8, v9, v10, v3);

  return v13;
}

- (void)startMagnetometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62E418;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startMagnetometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMMagnetometerHandler)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62E4B8;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopMagnetometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62E544;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setMagnetometerUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 47) = private;
  if (*(internal + 46))
  {
    v4 = sub_19B673618();
    v5 = *(internal + 46);

    sub_19B44E2F8(v4, 0, v5, internal + 376);
  }
}

- (void)startMagnetometerUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if ((sub_19B4215D8() & 1) == 0 && (sub_19B423E34() & 1) != 0 && internal[47] > 0.0)
  {
    v7 = *(internal + 49);
    if (v7 != queue)
    {

      *(internal + 49) = queue;
    }

    v8 = *(internal + 48);
    if (v8 != handler)
    {

      *(internal + 48) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 46))
    {
      operator new();
    }
  }
}

- (void)stopMagnetometerUpdatesPrivate
{
  internal = self->_internal;
  if (sub_19B4215D8() & 1) == 0 && (sub_19B423E34())
  {
    if (internal[46])
    {
      v3 = sub_19B673618();
      sub_19B426A14(v3, 0, internal[46]);
      v4 = internal[46];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      internal[46] = 0;
      v5 = internal[81];
      if (v5)
      {
        sub_19B72A398(v5, 8);
      }
    }

    v6 = internal[49];
    if (v6)
    {

      internal[49] = 0;
    }

    v7 = internal[48];
    if (v7)
    {

      internal[48] = 0;
    }
  }
}

- (void)setShowsDeviceMovementDisplay:(BOOL)showsDeviceMovementDisplay
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62E82C;
  v6[3] = &unk_1E75337D0;
  v6[4] = self;
  v7 = showsDeviceMovementDisplay;
  sub_19B420C9C(v5, v6);
}

- (void)showDeviceMovementDisplay
{
  v9 = *MEMORY[0x1E69E9840];
  if ((sub_19B421620() & 0x10) == 0)
  {
    internal = self->_internal;
    if (internal[432] == 1 && internal[632] == 1 && (internal[312] & 1) == 0 && (internal[313] & 1) == 0 && internal[314] == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v4 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "CM: Invoking Compass Calibration HUD", buf, 2u);
      }

      v5 = sub_19B420058();
      if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
        }

        v6 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager showDeviceMovementDisplay]", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }

      if (sub_19B6F395C())
      {
        internal[312] = 1;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)initUsing6AxisSensorFusion
{
  result = objc_msgSend_init(self, a2, v2);
  if (result)
  {
    v4 = *(result + 1);
    *(v4 + 536) = 256;
    *(v4 + 538) = 1;
  }

  return result;
}

- (void)setAccelerometerDataCallback:(void *)callback info:(void *)info interval:(double)interval
{
  intervalCopy = interval;
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (objc_msgSend_isAccelerometerAvailable(self, v10, v11))
    {
      internal = self->_internal;
      internal[56] = callback;
      internal[57] = info;
      v14 = internal[55];
      if (interval <= 0.0)
      {
        if (v14)
        {
          v16 = sub_19B4249E4();
          sub_19B426A14(v16, 0, internal[55]);
          v17 = internal[55];
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          internal[55] = 0;
        }
      }

      else
      {
        if (!v14)
        {
          operator new();
        }

        v15 = sub_19B4249E4();
        sub_19B44E2F8(v15, 0, internal[55], &intervalCopy);
      }
    }
  }

  else
  {
    v12 = sub_19B420D84();
    if (interval <= 0.0)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B62ECF8;
      v19[3] = &unk_1E75337F8;
      v19[4] = self;
      v19[5] = callback;
      v19[6] = info;
      *&v19[7] = interval;
      sub_19B420C9C(v12, v19);
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_19B62ED0C;
      v18[3] = &unk_1E75337F8;
      v18[4] = self;
      v18[5] = callback;
      v18[6] = info;
      *&v18[7] = interval;
      sub_19B421668(v12, v18);
    }
  }
}

- (void)setGyroDataCallback:(void *)callback info:(void *)info interval:(double)interval
{
  intervalCopy = interval;
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if ((sub_19B4215D8() & 1) == 0 && (sub_19B421620() & 0x200000) == 0)
    {
      internal = self->_internal;
      internal[59] = callback;
      internal[60] = info;
      v12 = internal[58];
      if (interval <= 0.0)
      {
        if (v12)
        {
          v14 = sub_19B42AD98();
          sub_19B426A14(v14, 0, internal[58]);
          v15 = internal[58];
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          internal[58] = 0;
        }
      }

      else
      {
        if (!v12)
        {
          operator new();
        }

        v13 = sub_19B42AD98();
        sub_19B44E2F8(v13, 0, internal[58], &intervalCopy);
      }
    }
  }

  else
  {
    v10 = sub_19B420D84();
    if (interval <= 0.0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_19B62EF90;
      v17[3] = &unk_1E75337F8;
      v17[4] = self;
      v17[5] = callback;
      v17[6] = info;
      *&v17[7] = interval;
      sub_19B420C9C(v10, v17);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_19B62EFA4;
      v16[3] = &unk_1E75337F8;
      v16[4] = self;
      v16[5] = callback;
      v16[6] = info;
      *&v16[7] = interval;
      sub_19B421668(v10, v16);
    }
  }
}

- (void)setMagnetometerDataCallback:(void *)callback info:(void *)info interval:(double)interval
{
  intervalCopy = interval;
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (sub_19B4215D8() & 1) == 0 && (sub_19B423E34())
    {
      internal = self->_internal;
      internal[62] = callback;
      internal[63] = info;
      v12 = internal[61];
      if (interval <= 0.0)
      {
        if (v12)
        {
          v14 = sub_19B673618();
          sub_19B426A14(v14, 0, internal[61]);
          v15 = internal[61];
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          internal[61] = 0;
        }
      }

      else
      {
        if (!v12)
        {
          operator new();
        }

        v13 = sub_19B673618();
        sub_19B44E2F8(v13, 0, internal[61], &intervalCopy);
      }
    }
  }

  else
  {
    v10 = sub_19B420D84();
    if (interval <= 0.0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_19B62F228;
      v17[3] = &unk_1E75337F8;
      v17[4] = self;
      v17[5] = callback;
      v17[6] = info;
      *&v17[7] = interval;
      sub_19B420C9C(v10, v17);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_19B62F23C;
      v16[3] = &unk_1E75337F8;
      v16[4] = self;
      v16[5] = callback;
      v16[6] = info;
      *&v16[7] = interval;
      sub_19B421668(v10, v16);
    }
  }
}

- (void)setDeviceMotionCallback:(void *)callback info:(void *)info interval:(double)interval fsync:(BOOL)fsync
{
  fsyncCopy = fsync;
  v56 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v14 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      sub_19B420D84();
      v15 = *_CFGetProgname();
      *buf = 136447234;
      v47 = v15;
      v48 = 2050;
      callbackCopy = callback;
      v50 = 2050;
      infoCopy = info;
      v52 = 2050;
      intervalCopy = interval;
      v54 = 1026;
      v55 = fsyncCopy;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "%{public}s calling setDeviceMotionCallback:%{public}p info:%{public}p interval:%{public}f fsync:%{public}d", buf, 0x30u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      sub_19B420D84();
      v17 = *_CFGetProgname();
      v36 = 136447234;
      v37 = v17;
      v38 = 2050;
      callbackCopy2 = callback;
      v40 = 2050;
      infoCopy2 = info;
      v42 = 2050;
      intervalCopy2 = interval;
      v44 = 1026;
      v45 = fsyncCopy;
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setDeviceMotionCallback:info:interval:fsync:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v19 = sub_19B420D84();
    if (interval <= 0.0)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_19B62F730;
      v34[3] = &unk_1E7533820;
      v34[4] = self;
      v34[5] = callback;
      v34[6] = info;
      *&v34[7] = interval;
      v35 = fsyncCopy;
      sub_19B420C9C(v19, v34);
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_19B62F748;
      v32[3] = &unk_1E7533820;
      v32[4] = self;
      v32[5] = callback;
      v32[6] = info;
      *&v32[7] = interval;
      v33 = fsyncCopy;
      sub_19B421668(v19, v32);
    }

    goto LABEL_21;
  }

  if (!objc_msgSend_isDeviceMotionAvailable(self, v12, v13))
  {
LABEL_21:
    v25 = *MEMORY[0x1E69E9840];
    return;
  }

  internal = self->_internal;
  internal[65] = callback;
  internal[66] = info;
  v23 = internal[64];
  if (interval <= 0.0)
  {
    if (v23)
    {
      v26 = sub_19B424AE0();
      sub_19B425248(v26, internal[64]);
      v27 = internal[64];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      internal[64] = 0;
    }
  }

  else
  {
    if (!v23)
    {
      objc_msgSend_updateDeviceMotionMode(self, v20, v21);
      v28 = [CLDeviceMotionProperties alloc];
      objc_msgSend_initWithMode_(v28, v29, *(internal + 74));
      operator new();
    }

    v24 = sub_19B424AE0();
    sub_19B44DE40(v24, internal[64], interval);
  }

  v30 = sub_19B42AD98();
  v31 = *MEMORY[0x1E69E9840];

  sub_19B42A614(v30, fsyncCopy);
}

- (void)setDisplayGravityHandler:(id)handler interval:(double)interval
{
  v30 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isDisplayGravityAvailable(self, a2, handler))
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      sub_19B420D84();
      v8 = *_CFGetProgname();
      *buf = 136446722;
      *v27 = v8;
      *&v27[8] = 2050;
      *&v27[10] = handler;
      v28 = 2050;
      intervalCopy = interval;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "%{public}s calling _setDisplayGravityHandler:%{public}p interval:%{public}f", buf, 0x20u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      sub_19B420D84();
      v10 = *_CFGetProgname();
      *location = 136446722;
      *&location[4] = v10;
      v22 = 2050;
      handlerCopy = handler;
      v24 = 2050;
      intervalCopy2 = interval;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setDisplayGravityHandler:interval:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    objc_initWeak(location, self);
    if (handler && interval > 0.0)
    {
      objc_msgSend_setFDisplayGravityHandler_(self->_internal, v12, handler);
      v13 = sub_19B420D84();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3321888768;
      v17[2] = sub_19B62FBBC;
      v17[3] = &unk_1F0E3A728;
      objc_copyWeak(buf, location);
      v14 = v18;
      *&v27[4] = interval;
      objc_copyWeak(v18, buf);
      v18[1] = *&v27[4];
      sub_19B421668(v13, v17);
      objc_destroyWeak(buf);
    }

    else
    {
      v15 = sub_19B420D84();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3321888768;
      v19[2] = sub_19B62FB1C;
      v19[3] = &unk_1F0E3A6F8;
      objc_copyWeak(buf, location);
      v14 = &v20;
      objc_copyWeak(&v20, buf);
      sub_19B421668(v15, v19);
      objc_destroyWeak(buf);
    }

    objc_destroyWeak(v14);
    objc_destroyWeak(location);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)connect
{
  internal = self->_internal;
  if (!internal[68])
  {
    internal[69] = dispatch_queue_create("com.apple.CoreMotion.CMMotionManager", 0);
    operator new();
  }
}

- (void)setSidebandTimeSyncHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isSidebandSensorFusionAvailable(self, a2, handler))
  {
    internal = self->_internal;
    if (handler)
    {
      v41 = 0;
      v42[0] = &v41;
      v42[1] = 0x2020000000;
      v42[2] = 0;
      v39 = 0;
      v40[0] = &v39;
      v40[1] = 0x2020000000;
      v40[2] = 0;
      if (!*(internal + 136))
      {
        *(internal + 136) = dispatch_semaphore_create(0);
      }

      v6 = sub_19B420D84();
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_19B631C4C;
      v38[3] = &unk_1E7533898;
      v38[4] = internal;
      v38[5] = &v41;
      v38[6] = &v39;
      sub_19B420C9C(v6, v38);
      v7 = dispatch_queue_create("OscarTimeWait", 0);
      v36 = 0;
      v37[0] = &v36;
      v37[1] = 0x2020000000;
      v37[2] = 0;
      v34 = 0;
      v35[0] = &v34;
      v35[1] = 0x2020000000;
      v35[2] = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B631F14;
      block[3] = &unk_1E75338C0;
      block[4] = &v36;
      block[5] = &v34;
      v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      object = v7;
      dispatch_async(v7, v8);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v9 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[MotionManager] setSidebandTimeSyncHandler: Waiting for time sync", buf, 2u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
        }

        LOWORD(v43) = 0;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandTimeSyncHandler:]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      v12 = v42;
      v13 = v40;
      while (dispatch_semaphore_wait(*(internal + 136), 0))
      {
        v14 = dispatch_time(0, 250000000);
        if (!dispatch_block_wait(v8, v14))
        {
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v22 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(v37[0] + 24);
            v24 = *(v35[0] + 24);
            *buf = 134218240;
            v48 = v23;
            v49 = 2048;
            v50 = v24;
            _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[MotionManager] setSidebandTimeSyncHandler: locationd TimeSync machTimestamp,%llu,oscarTimestamp,%llu", buf, 0x16u);
          }

          v25 = sub_19B420058();
          if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v26 = *(v37[0] + 24);
            v27 = *(v35[0] + 24);
            v43 = 134218240;
            v44 = v26;
            v45 = 2048;
            v46 = v27;
            v28 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandTimeSyncHandler:]", "CoreLocation: %s\n", v28);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          v12 = v37;
          v13 = v35;
          goto LABEL_46;
        }

        usleep(0x2710u);
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v15 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v42[0] + 24);
        v17 = *(v40[0] + 24);
        *buf = 134218240;
        v48 = v16;
        v49 = 2048;
        v50 = v17;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[MotionManager] setSidebandTimeSyncHandler: Framework TimeSync machTimestamp,%llu,oscarTimestamp,%llu", buf, 0x16u);
      }

      v18 = sub_19B420058();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
        }

        v19 = *(v42[0] + 24);
        v20 = *(v40[0] + 24);
        v43 = 134218240;
        v44 = v19;
        v45 = 2048;
        v46 = v20;
        v21 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandTimeSyncHandler:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

LABEL_46:
      (*(handler + 2))(handler, *(*v12 + 24), *(*v13 + 24));
      dispatch_release(object);
      _Block_release(v8);
      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v41, 8);
    }

    if (*(internal + 71))
    {
      v29 = sub_19B420D84();
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_19B631F2C;
      v32[3] = &unk_1E7532B68;
      v32[4] = internal;
      v32[5] = handler;
      sub_19B420C9C(v29, v32);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldResetStartingReference
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B632094;
  v5[3] = &unk_1E75338E8;
  v5[4] = self;
  v5[5] = &v6;
  sub_19B420C9C(v3, v5);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (void)setShouldResetStartingReference:(BOOL)reference
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6321A4;
  v7[3] = &unk_1E7533910;
  v7[4] = self;
  v7[5] = &v9;
  referenceCopy = reference;
  sub_19B420C9C(v5, v7);
  if (*(v10 + 24) == 1)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v6, *MEMORY[0x1E695D940], @"Changing starting reference reset policy is only supported when device motion isn't active.");
  }

  _Block_object_dispose(&v9, 8);
}

- (void)setPowerConservationMode:(int)mode
{
  internal = self->_internal;
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B632288;
  v7[3] = &unk_1E7533938;
  v7[4] = self;
  v7[5] = internal;
  modeCopy = mode;
  sub_19B421668(v6, v7);
}

- (void)setNotificationCallback:(void *)callback info:(void *)info
{
  if ((callback != 0) != (info != 0))
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, callback);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMMotionManager.mm", 2887, @"[CMMotionManager setNotificationCallback:info:] won't take these parameters.");
  }

  if (objc_msgSend_isDeviceMotionAvailable(self, a2, callback))
  {
    Current = CFRunLoopGetCurrent();
    sub_19B420D84();
    if (Current == *qword_1ED71C908)
    {
      internal = self->_internal;
      v10 = internal[74];
      if (v10 != callback || internal[75] != info)
      {
        if (v10 || internal[75])
        {
          v11 = sub_19B424AE0();
          sub_19B426A14(v11, 6, internal[76]);
          v12 = internal[76];
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          internal[76] = 0;
        }

        internal[74] = callback;
        internal[75] = info;
        if (callback)
        {
          operator new();
        }
      }
    }

    else
    {
      v8 = sub_19B420D84();
      if (callback)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = sub_19B6326DC;
        v17[3] = &unk_1E7533448;
        v17[4] = self;
        v17[5] = callback;
        v17[6] = info;
        sub_19B421668(v8, v17);
      }

      else
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = sub_19B6326EC;
        v16[3] = &unk_1E7532988;
        v16[4] = self;
        sub_19B420C9C(v8, v16);
      }
    }
  }
}

- (BOOL)setMotionThreadPriority:(int)priority
{
  v4 = sub_19B420D84();

  return sub_19B6780E0(v4, priority);
}

- (void)_startDeviceMotionErrorUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v8 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B6327C8;
  v9[3] = &unk_1E7533780;
  v9[4] = queue;
  v9[5] = self;
  v9[6] = handler;
  v9[7] = a2;
  sub_19B420C9C(v8, v9);
}

- (void)_stopDeviceMotionErrorUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B632974;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (id)predictedDeviceMotionAtTimestamp:(double)timestamp error:(id *)error
{
  errorCopy = error;
  v79 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isPredictedDeviceMotionAvailable(self, a2, error) & 1) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v52 = off_1ED71C808;
    p_vtable = "";
    internal = "assert";
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "[self isPredictedDeviceMotionAvailable]";
      _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Predicted device motion is not available! Check [CMMotionManager isPredictedDeviceMotionAvailable] before making this call, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }
    }

    v53 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "[self isPredictedDeviceMotionAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Predicted device motion is not available! Check [CMMotionManager isPredictedDeviceMotionAvailable] before making this call", "{msg%{public}.0s:Predicted device motion is not available! Check [CMMotionManager isPredictedDeviceMotionAvailable] before making this call, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }
    }

    errorCopy = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "[self isPredictedDeviceMotionAvailable]";
      _os_log_impl(&dword_19B41C000, errorCopy, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Predicted device motion is not available! Check [CMMotionManager isPredictedDeviceMotionAvailable] before making this call, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_80;
  }

  internal = self->_internal;
  if (!*(internal + 74))
  {
    errorCopy->isa = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v7, 109);
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C800 == -1)
    {
LABEL_45:
      v39 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        v40.isa = errorCopy->isa;
        v41 = *(internal + 74);
        *buf = 138412546;
        *&buf[4] = v40;
        *&buf[12] = 1024;
        *&buf[14] = v41;
        _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@,mode,%d", buf, 0x12u);
      }

      v42 = sub_19B420058();
      if (*(v42 + 160) <= 1 && *(v42 + 164) <= 1 && *(v42 + 168) <= 1 && !*(v42 + 152))
      {
        goto LABEL_67;
      }

      bzero(buf, 0x65CuLL);
      if (p_vtable[256] != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v43.isa = errorCopy->isa;
      v44 = *(internal + 74);
      *v64 = 138412546;
      *&v64[4] = v43;
      *&v64[12] = 1024;
      *&v64[14] = v44;
      goto LABEL_65;
    }

LABEL_80:
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    goto LABEL_45;
  }

  v74 = 0;
  v55 = 100;
  v54 = 0xBFF0000000000000;
  v9 = sub_19B424AE0();
  *v10.i64 = timestamp;
  sub_19B7201A0(v9, *(internal + 74), v64, &v55, &v54, v10);
  objc_msgSend_applyNorthReference_(self, v11, v64);
  if (*(internal + 38) == 8 && *(sub_19B424AE0() + 96) < 0.0)
  {
    errorCopy->isa = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v12, 102);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v13 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v14.isa = errorCopy->isa;
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@", buf, 0xCu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) <= 1 && *(v15 + 164) <= 1 && *(v15 + 168) <= 1 && !*(v15 + 152))
    {
      goto LABEL_67;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v16.isa = errorCopy->isa;
    v56 = 138412290;
    isa = v16.isa;
LABEL_65:
    v49 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager predictedDeviceMotionAtTimestamp:error:]", "CoreLocation: %s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }

LABEL_67:
    v28 = 0;
    goto LABEL_68;
  }

  if ((objc_msgSend_deviceMotionInitialized_(CMMotionManager, v12, v64) & 1) == 0)
  {
    errorCopy->isa = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v17, 109);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v45 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v46.isa = errorCopy->isa;
      *buf = 138413058;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = v54;
      *&buf[22] = 2048;
      *&buf[24] = timestamp;
      *&buf[32] = 1024;
      *&buf[34] = v74;
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f,timestamp,%f,status,%#02x", buf, 0x26u);
    }

    v47 = sub_19B420058();
    if (*(v47 + 160) <= 1 && *(v47 + 164) <= 1 && *(v47 + 168) <= 1 && !*(v47 + 152))
    {
      goto LABEL_67;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v48.isa = errorCopy->isa;
    v56 = 138413058;
    isa = v48.isa;
    v58 = 2048;
    v59 = v54;
    v60 = 2048;
    timestampCopy = timestamp;
    v62 = 1024;
    v63 = v74;
    goto LABEL_65;
  }

  if (objc_msgSend_northAlignedReferenceFrame_(CMMotionManager, v17, *(internal + 38)) && DWORD1(v68) != -1 && SDWORD1(v68) <= 0)
  {
    errorCopy->isa = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v18, 101);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v19 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v20.isa = errorCopy->isa;
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = v54;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f", buf, 0x16u);
    }

    v21 = sub_19B420058();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v22.isa = errorCopy->isa;
      v56 = 138412546;
      isa = v22.isa;
      v58 = 2048;
      v59 = v54;
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager predictedDeviceMotionAtTimestamp:error:]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  v24 = [CMDeviceMotion alloc];
  *&buf[32] = v66;
  v76 = v67;
  v77 = v68;
  v78 = v69;
  *buf = *&v64[8];
  *&buf[16] = v65;
  LODWORD(v25) = v72;
  LODWORD(v26) = v73;
  v28 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v24, v27, buf, COERCE_DOUBLE(__PAIR64__(*&v64[12], v70)), COERCE_DOUBLE(__PAIR64__(DWORD1(v65), v71)), v25, v26, *v64);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v29 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v30 = v54;
    v31 = mach_absolute_time();
    v32 = sub_19B41E070(v31);
    *buf = 138412802;
    *&buf[4] = v28;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    *&buf[22] = 2048;
    *&buf[24] = v32;
    _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f,now,%f", buf, 0x20u);
  }

  v33 = sub_19B420058();
  if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v34 = v54;
    v35 = mach_absolute_time();
    v36 = sub_19B41E070(v35);
    v56 = 138412802;
    isa = v28;
    v58 = 2048;
    v59 = v34;
    v60 = 2048;
    timestampCopy = v36;
    v37 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager predictedDeviceMotionAtTimestamp:error:]", "CoreLocation: %s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

LABEL_68:
  v50 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)onAccelerometer:(const Sample *)accelerometer
{
  v33 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&accelerometer->timestamp;
  *(internal + 9) = *&accelerometer->acceleration.z;
  *(internal + 56) = v5;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 5))
  {
    if (*(internal + 4))
    {
      if (accelerometer->timestamp > 0.0)
      {
        v6 = *(internal + 6);
        if (v6 <= 0.0 || accelerometer->timestamp - v6 - *(internal + 3) >= *(internal + 3) * -0.1)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = [CMAccelerometerData alloc];
          *&v9 = accelerometer->acceleration.x;
          *&v10 = accelerometer->acceleration.y;
          *&v11 = accelerometer->acceleration.z;
          v14 = objc_msgSend_initWithAcceleration_andTimestamp_(v8, v12, v13, v9, v10, v11, accelerometer->timestamp);
          v15 = *(internal + 4);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v16 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v17 = mach_absolute_time();
            *buf = 138412546;
            v30 = v14;
            v31 = 2048;
            v32 = sub_19B41E070(v17);
            _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "CMAccelerometerData: %@,now,%f", buf, 0x16u);
          }

          v18 = sub_19B420058();
          if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v20 = mach_absolute_time();
            v25 = 138412546;
            v26 = v14;
            v27 = 2048;
            v28 = sub_19B41E070(v20);
            v21 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onAccelerometer:]", "CoreLocation: %s\n", v21);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          v22 = *(internal + 5);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = sub_19B6337B0;
          v24[3] = &unk_1E7532B90;
          v24[4] = v14;
          v24[5] = v15;
          objc_msgSend_addOperationWithBlock_(v22, v19, v24);

          objc_autoreleasePoolPop(v7);
          *(internal + 6) = *&accelerometer->timestamp;
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onGyro:(const Sample *)gyro
{
  v33 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&gyro->timestamp;
  *(internal + 31) = *&gyro->acceleration.z;
  *(internal + 232) = v5;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 27))
  {
    if (*(internal + 26))
    {
      if (gyro->timestamp > 0.0)
      {
        v6 = *(internal + 28);
        if (v6 <= 0.0 || gyro->timestamp - v6 - *(internal + 25) >= *(internal + 25) * -0.1)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = [CMGyroData alloc];
          *&v9 = gyro->acceleration.x;
          *&v10 = gyro->acceleration.y;
          *&v11 = gyro->acceleration.z;
          v14 = objc_msgSend_initWithRotationRate_andTimestamp_(v8, v12, v13, v9, v10, v11, gyro->timestamp);
          v15 = *(internal + 26);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v16 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v17 = mach_absolute_time();
            *buf = 138412546;
            v30 = v14;
            v31 = 2048;
            v32 = sub_19B41E070(v17);
            _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "CMGyroData: %@,now,%f", buf, 0x16u);
          }

          v18 = sub_19B420058();
          if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v20 = mach_absolute_time();
            v25 = 138412546;
            v26 = v14;
            v27 = 2048;
            v28 = sub_19B41E070(v20);
            v21 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onGyro:]", "CoreLocation: %s\n", v21);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          v22 = *(internal + 27);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = sub_19B633AC8;
          v24[3] = &unk_1E7532B90;
          v24[4] = v14;
          v24[5] = v15;
          objc_msgSend_addOperationWithBlock_(v22, v19, v24);

          objc_autoreleasePoolPop(v7);
          *(internal + 28) = *&gyro->timestamp;
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onFactoryGyro:(const Sample *)gyro
{
  v97[1] = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (!*(internal + 87))
  {
    goto LABEL_81;
  }

  if (!*(internal + 86))
  {
    goto LABEL_81;
  }

  if (gyro->timestamp <= 0.0)
  {
    goto LABEL_81;
  }

  v5 = *(internal + 88);
  if (v5 > 0.0 && gyro->timestamp - v5 - *(internal + 83) < *(internal + 83) * -0.1)
  {
    goto LABEL_81;
  }

  context = objc_autoreleasePoolPush();
  v7 = *(internal + 86);
  v8 = *(internal + 178);
  v9 = v8 < 21475000.0 && v8 > 0.0;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v96 = *MEMORY[0x1E696A578];
    v97[0] = @"Invalid gyro temperature value.";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v97, &v96, 1);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"CMErrorDomainFactory", 8, v12);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v14 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
    {
      v15 = *(internal + 178);
      v16 = mach_absolute_time();
      *buf = 134218240;
      v91 = v15;
      v92 = 2048;
      v93 = sub_19B41E070(v16);
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Invalid gyro temperature value: %f,now,%f", buf, 0x16u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v18 = *(internal + 178);
      v19 = mach_absolute_time();
      v84 = 134218240;
      v85 = v18;
      v86 = 2048;
      v87 = sub_19B41E070(v19);
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  if ((internal[716] & 1) == 0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v21 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
    {
      v22 = mach_absolute_time();
      v23 = sub_19B41E070(v22);
      *buf = 134217984;
      v91 = v23;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "Fit not computed,now,%f", buf, 0xCu);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v25 = mach_absolute_time();
      v84 = 134217984;
      v85 = sub_19B41E070(v25);
      v26 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  if ((v9 & internal[716]) != 1)
  {
    goto LABEL_38;
  }

  x = gyro->acceleration.x;
  y = gyro->acceleration.y;
  z = gyro->acceleration.z;
  if ((sub_19B421620() & 0x40000) != 0)
  {
    sub_19B71B784((internal + 717), *(internal + 178));
    v32 = v31 * 57.296;
    v34 = v33 * 57.296;
    v36 = v35 * 57.296;
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v37 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v91 = v32;
      v92 = 2048;
      v93 = v34;
      v94 = 2048;
      v95 = v36;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "Fit bias: %f,%f,%f deg/s", buf, 0x20u);
    }

    v38 = sub_19B420058();
    if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v84 = 134218496;
      v85 = v32;
      v86 = 2048;
      v87 = v34;
      v88 = 2048;
      v89 = v36;
      v39 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    v40 = x - v32;
    v41 = y - v34;
    v42 = z - v36;
    goto LABEL_67;
  }

  if ((sub_19B421620() & 0x20000) != 0)
  {
    v43 = *(internal + 178);
    v44 = (internal + 1012);
    for (i = 250; i != 253; ++i)
    {
      v46 = *(v44 - 3);
      v47 = *v44++;
      *&v83[i - 250] = v47 + (v43 * v46);
    }

    v48 = *v83;
    v49 = *&v83[1];
    v50 = *&v83[2];
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v51 = qword_1ED71C818;
    v79 = v48;
    v52 = v48;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v91 = v52;
      v92 = 2048;
      v93 = v49;
      v94 = 2048;
      v95 = v50;
      _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_DEBUG, "Fit bias: %f,%f,%f deg/s", buf, 0x20u);
    }

    v53 = sub_19B420058();
    if (*(v53 + 160) > 1 || *(v53 + 164) > 1 || *(v53 + 168) > 1 || *(v53 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v84 = 134218496;
      v85 = v52;
      v86 = 2048;
      v87 = v49;
      v88 = 2048;
      v89 = v50;
      v54 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v54);
      if (v54 != buf)
      {
        free(v54);
      }
    }

    v40 = x - v79;
    v41 = y - v49;
    v42 = z - v50;
LABEL_67:
    v55 = [CMRotationRateData alloc];
    *&v56 = v40;
    *&v57 = v41;
    *&v58 = v42;
    v30 = objc_msgSend_initWithRotationRate_andTimestamp_(v55, v59, v60, v56, v57, v58, gyro->timestamp);
    goto LABEL_68;
  }

LABEL_38:
  v30 = 0;
LABEL_68:
  v61 = [CMGyroData alloc];
  *&v62 = gyro->acceleration.x;
  *&v63 = gyro->acceleration.y;
  *&v64 = gyro->acceleration.z;
  v67 = objc_msgSend_initWithRotationRate_andTimestamp_(v61, v65, v66, v62, v63, v64, gyro->timestamp);
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v68 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
  {
    v69 = mach_absolute_time();
    v70 = sub_19B41E070(v69);
    *buf = 138412802;
    v91 = *&v30;
    v92 = 2112;
    v93 = *&v67;
    v94 = 2048;
    v95 = v70;
    _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEBUG, "CMFactoryGyroData: %@,%@,now,%f", buf, 0x20u);
  }

  v71 = sub_19B420058();
  if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v73 = mach_absolute_time();
    v74 = sub_19B41E070(v73);
    v84 = 138412802;
    v85 = *&v30;
    v86 = 2112;
    v87 = *&v67;
    v88 = 2048;
    v89 = v74;
    v75 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v75);
    if (v75 != buf)
    {
      free(v75);
    }
  }

  v76 = *(internal + 178);
  v77 = *(internal + 87);
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = sub_19B634584;
  v81[3] = &unk_1E7533960;
  v81[4] = v30;
  v81[5] = v67;
  v82 = v76;
  v81[6] = v10;
  v81[7] = v7;
  objc_msgSend_addOperationWithBlock_(v77, v72, v81);

  objc_autoreleasePoolPop(context);
  *(internal + 28) = *&gyro->timestamp;
LABEL_81:
  v78 = *MEMORY[0x1E69E9840];
}

- (void)onFactoryGyroTemperature:(const Temperature *)temperature
{
  v21 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  internal[178]._os_unfair_lock_opaque = LODWORD(temperature->var1);
  os_unfair_lock_unlock(internal + 2);
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v5 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
  {
    var1 = temperature->var1;
    var0 = temperature->var0;
    v8 = mach_absolute_time();
    *buf = 134218496;
    v16 = var1;
    v17 = 2048;
    v18 = var0;
    v19 = 2048;
    v20 = sub_19B41E070(v8);
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "Factory gyro temp sample: %f,timestamp,%f,now,%f", buf, 0x20u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v10 = temperature->var1;
    v11 = temperature->var0;
    v12 = mach_absolute_time();
    sub_19B41E070(v12);
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyroTemperature:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)onMagnetometer:(const Sample *)magnetometer
{
  v33 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&magnetometer->timestamp;
  *(internal + 53) = *&magnetometer->acceleration.z;
  *(internal + 408) = v5;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 49))
  {
    if (*(internal + 48))
    {
      if (magnetometer->timestamp > 0.0)
      {
        v6 = *(internal + 50);
        if (v6 <= 0.0 || magnetometer->timestamp - v6 - *(internal + 47) >= *(internal + 47) * -0.1)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = [CMMagnetometerData alloc];
          *&v9 = magnetometer->acceleration.x;
          *&v10 = magnetometer->acceleration.y;
          *&v11 = magnetometer->acceleration.z;
          v14 = objc_msgSend_initWithMagneticField_andTimestamp_(v8, v12, v13, v9, v10, v11, magnetometer->timestamp);
          v15 = *(internal + 48);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v16 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v17 = mach_absolute_time();
            *buf = 138412546;
            v30 = v14;
            v31 = 2048;
            v32 = sub_19B41E070(v17);
            _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "CMMagnetometerData: %@,now,%f", buf, 0x16u);
          }

          v18 = sub_19B420058();
          if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v20 = mach_absolute_time();
            v25 = 138412546;
            v26 = v14;
            v27 = 2048;
            v28 = sub_19B41E070(v20);
            v21 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onMagnetometer:]", "CoreLocation: %s\n", v21);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          v22 = *(internal + 49);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = sub_19B634AE8;
          v24[3] = &unk_1E7532B90;
          v24[4] = v14;
          v24[5] = v15;
          objc_msgSend_addOperationWithBlock_(v22, v19, v24);

          objc_autoreleasePoolPop(v7);
          *(internal + 50) = *&magnetometer->timestamp;
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

+ (BOOL)northAlignedReferenceFrame:(unint64_t)frame
{
  LOBYTE(v3) = 1;
  if (frame != 8 && frame != 4)
  {
    if (frame == 2)
    {
      return (sub_19B421620() >> 4) & 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)applyNorthReference:(Sample *)reference
{
  internal = self->_internal;
  if (*(internal + 38) == 8 && *(sub_19B424AE0() + 96) < 0.0)
  {
    if ((*(internal + 316) & 1) == 0 && reference->timestamp - internal[40] > 1.0)
    {
      *(internal + 316) = objc_msgSend_sendDeviceMotionError_(self, v6, 102);
    }

    reference->timestamp = -1.0;
  }

  if ((*(internal + 38) - 1) > 1)
  {
    if (reference[3].acceleration.y < 0.0)
    {
      reference[3].acceleration.y = 0.0;
      *&reference[4].timestamp = xmmword_19B7B9BB0;
    }
  }

  else
  {
    reference[3].acceleration.y = -1.0;
    LODWORD(reference[4].timestamp) = -1082130432;
  }
}

- (void)applyInitialReference:(Sample *)reference
{
  internal = self->_internal;
  if ((*&internal[19].f64[0] - 1) <= 1 && LOBYTE(internal[36].f64[1]) == 1 && objc_msgSend_deviceMotionInitialized_(CMMotionManager, a2, reference))
  {
    if ((LOBYTE(internal[22].f64[1]) & 1) == 0)
    {
      sub_19B43F0AC(v6, &reference->acceleration.x);
      internal[21] = vnegq_f64(*&v6[8]);
      internal[22].f64[0] = -*&v6[24];
      internal[20].f64[1] = *v6;
      LOBYTE(internal[22].f64[1]) = 1;
    }

    sub_19B43F1C8(v6, &reference->acceleration.x, &internal[20].f64[1]);
    v5 = *&v6[16];
    *&reference->acceleration.x = *v6;
    *&reference[1].timestamp = v5;
  }
}

- (void)onDeviceMotion:(const Sample *)motion
{
  v44 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = *&motion[3].acceleration.x;
  *&v32[64] = *&motion[2].acceleration.z;
  *&v32[80] = v6;
  v7 = *&motion[4].acceleration.z;
  v33 = *&motion[4].timestamp;
  v34 = v7;
  v8 = *&motion->acceleration.z;
  *v32 = *&motion->timestamp;
  *&v32[16] = v8;
  v9 = *&motion[2].timestamp;
  *&v32[32] = *&motion[1].acceleration.x;
  *&v32[48] = v9;
  if (objc_msgSend_northAlignedReferenceFrame_(CMMotionManager, a2, *(internal + 38)))
  {
    if (*&v32[76] < 1)
    {
      if (*&v32[76] != -1)
      {
        *(internal + 313) = 0;
        objc_msgSend_showDeviceMovementDisplay(self, v10, v11);
        if ((*(internal + 315) & 1) == 0)
        {
          *(internal + 315) = objc_msgSend_sendDeviceMotionError_(self, v10, 101);
        }
      }
    }

    else
    {
      *(internal + 315) = 0;
      *(internal + 313) = 1;
      objc_msgSend_dismissDeviceMovementDisplay(self, v10, v11);
    }
  }

  objc_msgSend_applyNorthReference_(self, v10, v32);
  objc_msgSend_applyInitialReference_(self, v12, v32);
  if (*(internal + 35))
  {
    if (*(internal + 34))
    {
      if ((WORD5(v34) & 0x100) != 0 && *v32 > 0.0)
      {
        v13 = *(internal + 36);
        if (v13 <= 0.0 || *v32 - v13 - *(internal + 33) >= *(internal + 33) * -0.1)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = [CMDeviceMotion alloc];
          v40 = *&v32[40];
          v41 = *&v32[56];
          v42 = *&v32[72];
          v43 = *&v32[88];
          *buf = *&v32[8];
          *&buf[16] = *&v32[24];
          LODWORD(v17) = HIDWORD(v33);
          LODWORD(v16) = DWORD2(v33);
          v19 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v15, v18, buf, COERCE_DOUBLE(__PAIR64__(*&v32[12], v33)), COERCE_DOUBLE(__PAIR64__(*&v32[28], DWORD1(v33))), v16, v17, *v32);
          v20 = *(internal + 34);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v21 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v22 = mach_absolute_time();
            v23 = sub_19B41E070(v22);
            *buf = 138412546;
            *&buf[4] = v19;
            *&buf[12] = 2048;
            *&buf[14] = v23;
            _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "CMDeviceMotion: %@,now,%f", buf, 0x16u);
          }

          v24 = sub_19B420058();
          if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v26 = mach_absolute_time();
            v27 = sub_19B41E070(v26);
            v35 = 138412546;
            v36 = v19;
            v37 = 2048;
            v38 = v27;
            v28 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onDeviceMotion:]", "CoreLocation: %s\n", v28);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          v29 = *(internal + 35);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = sub_19B63538C;
          v31[3] = &unk_1E7532B90;
          v31[4] = v19;
          v31[5] = v20;
          objc_msgSend_addOperationWithBlock_(v29, v25, v31);

          objc_autoreleasePoolPop(v14);
          *(internal + 36) = *&motion->timestamp;
        }
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)onAmbientPressure:(const Sample *)pressure
{
  v31 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  *(internal + 120) = *&pressure->timestamp;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 13))
  {
    if (*(internal + 12))
    {
      if (pressure->timestamp > 0.0)
      {
        v5 = *(internal + 14);
        if (v5 <= 0.0 || pressure->timestamp - v5 - *(internal + 11) >= *(internal + 11) * -0.1)
        {
          v6 = objc_autoreleasePoolPush();
          v7 = [CMAmbientPressureData alloc];
          *&v8 = pressure->acceleration.x;
          *&v9 = pressure->acceleration.y;
          v12 = objc_msgSend_initWithPressure_andTimestamp_(v7, v10, v11, v8, v9, pressure->timestamp);
          v13 = *(internal + 12);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v14 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v15 = mach_absolute_time();
            *buf = 138412546;
            v28 = v12;
            v29 = 2048;
            v30 = sub_19B41E070(v15);
            _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "CMAmbientPressureData: %@,now,%f", buf, 0x16u);
          }

          v16 = sub_19B420058();
          if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v18 = mach_absolute_time();
            v23 = 138412546;
            v24 = v12;
            v25 = 2048;
            v26 = sub_19B41E070(v18);
            v19 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onAmbientPressure:]", "CoreLocation: %s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }

          v20 = *(internal + 13);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = sub_19B635698;
          v22[3] = &unk_1E7532B90;
          v22[4] = v12;
          v22[5] = v13;
          objc_msgSend_addOperationWithBlock_(v20, v17, v22);

          objc_autoreleasePoolPop(v6);
          *(internal + 14) = *&pressure->timestamp;
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)onCompensatedAmbientPressure:(const Sample *)pressure
{
  v31 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  *(internal + 11) = *&pressure->timestamp;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 20))
  {
    if (*(internal + 19))
    {
      if (pressure->timestamp > 0.0)
      {
        v5 = *(internal + 21);
        if (v5 <= 0.0 || pressure->timestamp - v5 - *(internal + 18) >= *(internal + 18) * -0.1)
        {
          v6 = objc_autoreleasePoolPush();
          v7 = [CMAmbientPressureData alloc];
          *&v8 = pressure->acceleration.x;
          *&v9 = pressure->acceleration.y;
          v12 = objc_msgSend_initWithPressure_andTimestamp_(v7, v10, v11, v8, v9, pressure->timestamp);
          v13 = *(internal + 19);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v14 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v15 = mach_absolute_time();
            *buf = 138412546;
            v28 = v12;
            v29 = 2048;
            v30 = sub_19B41E070(v15);
            _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "CMCompensatedAmbientPressureData: %@,now,%f", buf, 0x16u);
          }

          v16 = sub_19B420058();
          if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v18 = mach_absolute_time();
            v23 = 138412546;
            v24 = v12;
            v25 = 2048;
            v26 = sub_19B41E070(v18);
            v19 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onCompensatedAmbientPressure:]", "CoreLocation: %s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }

          v20 = *(internal + 20);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = sub_19B6359A4;
          v22[3] = &unk_1E7532B90;
          v22[4] = v12;
          v22[5] = v13;
          objc_msgSend_addOperationWithBlock_(v20, v17, v22);

          objc_autoreleasePoolPop(v6);
          *(internal + 21) = *&pressure->timestamp;
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)willResignActive:(id)active
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B635A3C;
  v6[3] = &unk_1E7532A00;
  v6[4] = self;
  v6[5] = active;
  sub_19B421668(v5, v6);
}

- (void)didBecomeActive:(id)active
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B635AC8;
  v6[3] = &unk_1E7532A00;
  v6[4] = self;
  v6[5] = active;
  sub_19B421668(v5, v6);
}

- (void)willResignActivePrivate:(id)private
{
  internal = self->_internal;
  v4 = sub_19B424AE0();
  if (v4)
  {
    sub_19B445ACC(v4, 0);
  }

  v5 = internal[81];
  if (v5)
  {
    *(v5 + 16) = CFAbsoluteTimeGetCurrent();
    sub_19B454944(v5);
    *(v5 + 8) = CFAbsoluteTimeGetCurrent();
  }

  *(internal + 632) = 0;
}

- (void)didBecomeActivePrivate:(id)private
{
  internal = self->_internal;
  v5 = sub_19B424AE0();
  if (v5)
  {
    sub_19B445ACC(v5, 1);
  }

  v8 = internal[81];
  if (v8)
  {
    *(v8 + 8) = CFAbsoluteTimeGetCurrent();
  }

  *(internal + 632) = 1;
  if (*(internal + 314) == 1 && (*(internal + 313) & 1) == 0)
  {

    objc_msgSend_showDeviceMovementDisplay(self, v6, v7);
  }
}

+ (BOOL)supportsGyroMiniCalibration
{
  v2 = sub_19B42AD98();
  if (v2)
  {
    v3 = sub_19B43D9C4();
    v6 = objc_msgSend_vendor(v3, v4, v5);
    v8 = objc_msgSend_proxyForService_(v6, v7, @"CLGyroCalibrationDatabase");

    LOBYTE(v2) = MEMORY[0x1EEE66B58](v8, sel_syncgetSupportsMiniCalibration, v9);
  }

  return v2;
}

+ ($27EAB7405FCF4138B96BF1D57C6DB1C9)gyroCalibrationDatabaseGetBiasFit
{
  v4 = sub_19B43D9C4();
  v7 = objc_msgSend_vendor(v4, v5, v6);
  v9 = objc_msgSend_proxyForService_(v7, v8, @"CLGyroCalibrationDatabase");
  result = objc_msgSend_syncgetBiasFit_(v9, v10, retstr);
  if ((result & 1) == 0)
  {
    bzero(retstr, 0x140uLL);
    retstr->var0 = 1;
    retstr->var1 = -1.79769313e308;
  }

  return result;
}

+ ($27EAB7405FCF4138B96BF1D57C6DB1C9)gyroCalibrationDatabaseGetBiasFitAndEstimate:(SEL)estimate atTemperature:(id *)temperature
{
  *&retstr->var5.var1.var1[255] = 0u;
  *&retstr->var5.var1.var1[271] = 0u;
  *&retstr->var5.var1.var1[223] = 0u;
  *&retstr->var5.var1.var1[239] = 0u;
  *&retstr->var5.var1.var1[191] = 0u;
  *&retstr->var5.var1.var1[207] = 0u;
  *&retstr->var5.var1.var1[159] = 0u;
  *&retstr->var5.var1.var1[175] = 0u;
  *&retstr->var5.var1.var1[127] = 0u;
  *&retstr->var5.var1.var1[143] = 0u;
  *&retstr->var5.var1.var1[95] = 0u;
  *&retstr->var5.var1.var1[111] = 0u;
  *&retstr->var5.var1.var1[63] = 0u;
  *&retstr->var5.var1.var1[79] = 0u;
  *&retstr->var5.var1.var1[31] = 0u;
  *&retstr->var5.var1.var1[47] = 0u;
  *&retstr->var5.var0.var0.var0 = 0u;
  *&retstr->var5.var1.var1[15] = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = objc_msgSend_gyroCalibrationDatabaseGetBiasFit(CMMotionManager, estimate, temperature);
  if (temperature)
  {
    if (retstr->var0 == 2)
    {
      memcpy(__dst, &retstr->var5.var0.var0.var0 + 1, sizeof(__dst));
      result = sub_19B71B784(__dst, a5);
      v10.i32[1] = v9;
      *&temperature->var0 = vcvtq_f64_f32(vmul_f32(v10, vdup_n_s32(0x42652EE1u)));
      v8 = v11 * 57.296;
      goto LABEL_6;
    }

    if (retstr->var0 == 1)
    {
      *&temperature->var0 = vcvtq_f64_f32(vmla_n_f32(*&retstr->var5.var1.var1[11], *&retstr->var5.var0.var0.var0, a5));
      v8 = retstr->var5.var0.var1.var2 + (retstr->var5.var0.var0.var2 * a5);
LABEL_6:
      temperature->var2 = v8;
      return result;
    }

    temperature->var0 = 0.0;
    temperature->var1 = 0.0;
    temperature->var2 = 0.0;
  }

  return result;
}

- (void)startDeviceMotionLiteUpdatesForDeviceID:(id)d usingConfiguration:(id)configuration toQueue:(id)queue withFusedHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v6 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "0";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Motion manager can not start device motion lite updates, use isDeviceMotionLiteAvailable before using this API, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }
    }

    v7 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Motion manager can not start device motion lite updates, use isDeviceMotionLiteAvailable before using this API", "{msg%{public}.0s:Motion manager can not start device motion lite updates, use isDeviceMotionLiteAvailable before using this API, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }
    }

    v8 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "0";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Motion manager can not start device motion lite updates, use isDeviceMotionLiteAvailable before using this API, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }
}

- (void)startDeviceMotionLiteFusedUpdatesForDeviceID:(id)d toQueue:(id)queue withHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v6 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dCopy = d;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Motion manager asked to start device motion lite updates for device id %@", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager startDeviceMotionLiteFusedUpdatesForDeviceID:toQueue:withHandler:]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stopDeviceMotionLiteUpdatesForDeviceID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dCopy = d;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Motion manager asked to stop device motion lite updates for device id %@", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager stopDeviceMotionLiteUpdatesForDeviceID:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)startFactoryGyroUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6367A8;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)startFactoryGyroUpdatesToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B636864;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = queue;
  *&v10[7] = interval;
  v10[6] = handler;
  sub_19B421668(v9, v10);
}

- (void)startFactoryGyroUpdatesToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler residualHandler:(id)residualHandler
{
  v11 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B636920;
  v12[3] = &unk_1E7533988;
  v12[4] = self;
  v12[5] = queue;
  *&v12[8] = interval;
  v12[6] = handler;
  v12[7] = residualHandler;
  sub_19B421668(v11, v12);
}

- (void)stopFactoryGyroUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6369B0;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)startDeviceMotionUpdatesForKeyboardMotionToQueue:(id)queue withGravityDeltaThreshold:(double)threshold sendFrequency:(double)frequency andHandler:(id)handler
{
  v11 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B636A5C;
  v12[3] = &unk_1E75339B0;
  v12[4] = self;
  v12[5] = queue;
  *&v12[7] = threshold;
  *&v12[8] = frequency;
  v12[6] = handler;
  sub_19B421668(v11, v12);
}

- (void)stopDeviceMotionUpdatesForKeyboardMotion
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B636AEC;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startFactoryGyroUpdatesPrivateToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler residualHandler:(id)residualHandler
{
  v82 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v10 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
  {
    buf = 134349056;
    buf_4 = interval;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Starting factory gyro updates at rate: %{public}f", &buf, 0xCu);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v66 = 134349056;
    intervalCopy2 = interval;
    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v12);
    if (v12 != &buf)
    {
      free(v12);
    }
  }

  if (interval <= 0.0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v23 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
    {
      buf = 134349056;
      buf_4 = interval;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "Invalid update interval: %{public}f", &buf, 0xCu);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v66 = 134349056;
      intervalCopy2 = interval;
      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v25);
      if (v25 != &buf)
      {
        free(v25);
      }
    }
  }

  else
  {
    internal[83] = interval;
    v13 = *(internal + 87);
    if (v13 != queue)
    {

      *(internal + 87) = queue;
    }

    v14 = *(internal + 86);
    if (v14 != handler)
    {

      *(internal + 86) = objc_msgSend_copy(handler, v15, v16);
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0.0;
    sub_19B747A9C(&v59, &v58);
    if (v58 == 0.0)
    {
      v26 = v59;
      v27 = v60;
      if (v59 == v60)
      {
        v28 = 0;
        __src = 0;
      }

      else
      {
        v28 = 0;
        __src = 0;
        do
        {
          v30 = *v26;
          v29 = v26[1];
          v32 = v26[2];
          v31 = v26[3];
          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
          }

          v33 = qword_1ED71C818;
          if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
          {
            buf = 134218752;
            buf_4 = v30;
            buf_12 = 2048;
            buf_14 = v29;
            v78 = 2048;
            v79 = v32;
            v80 = 2048;
            v81 = v31;
            _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "GYTT temperature,%f,bias.x,%f,bias.y,%f,bias.z,%f", &buf, 0x2Au);
          }

          v34 = sub_19B420058();
          if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
            }

            v66 = 134218752;
            intervalCopy2 = v30;
            v68 = 2048;
            v69 = v29;
            v70 = 2048;
            v71 = v32;
            v72 = 2048;
            v73 = v31;
            v35 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v35);
            if (v35 != &buf)
            {
              free(v35);
            }
          }

          v36 = v28 - __src;
          v37 = 0xAAAAAAAAAAAAAAABLL * ((v28 - __src) >> 3);
          v38 = v37 + 1;
          if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_19B5BE690();
          }

          if (0x5555555555555556 * (-__src >> 3) > v38)
          {
            v38 = 0x5555555555555556 * (-__src >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 3) >= 0x555555555555555)
          {
            v39 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_19B639B7C(v39);
          }

          v40 = 8 * ((v28 - __src) >> 3);
          *v40 = v30;
          *(v40 + 4) = v29;
          *(v40 + 8) = v32;
          *(v40 + 12) = v31;
          *(v40 + 16) = 0;
          v28 = v40 + 24;
          v41 = 24 * v37 + 24 * (v36 / -24);
          memcpy((v40 + 24 * (v36 / -24)), __src, v36);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v41;
          v26 += 4;
        }

        while (v26 != v27);
      }

      if ((sub_19B421620() & 0x40000) != 0)
      {
        operator new();
      }

      if ((sub_19B421620() & 0x20000) != 0)
      {
        __p[0] = 0;
        __p[1] = 0;
        v65 = 0;
        sub_19B73A8BC(__src, v28, 0, 0, __p);
      }

      v43 = COERCE_DOUBLE(objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v42, @"Missing gyro linearity information. Please file a radar against CoreMotion Factory | All to add support for this device."));
      v44 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = *MEMORY[0x1E696A578];
      v63 = v43;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v45, &v63, &v62, 1);
      v58 = COERCE_DOUBLE(objc_msgSend_initWithDomain_code_userInfo_(v44, v47, @"CMErrorDomainFactory", 2, v46));
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v48 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
      {
        buf = 138543362;
        buf_4 = v43;
        _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      v49 = sub_19B420058();
      if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
        }

        v66 = 138543362;
        intervalCopy2 = v43;
        v51 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v51);
        if (v51 != &buf)
        {
          free(v51);
        }
      }

      v52 = *(internal + 87);
      if (v52)
      {
        v53 = *(internal + 86);
        if (v53)
        {
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = sub_19B6386FC;
          v56[3] = &unk_1E7532B90;
          *&v56[4] = v58;
          v56[5] = v53;
          objc_msgSend_addOperationWithBlock_(v52, v50, v56);
        }
      }

      if (__src)
      {
        operator delete(__src);
      }
    }

    else
    {
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v17 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
      {
        buf = 138412290;
        buf_4 = v58;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Error found while reading GYTT: %@", &buf, 0xCu);
      }

      v18 = sub_19B420058();
      if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
        }

        v66 = 138412290;
        intervalCopy2 = v58;
        v20 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v20);
        if (v20 != &buf)
        {
          free(v20);
        }
      }

      v21 = *(internal + 87);
      if (v21)
      {
        v22 = *(internal + 86);
        if (v22)
        {
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = sub_19B6386DC;
          v57[3] = &unk_1E7532B90;
          *&v57[4] = v58;
          v57[5] = v22;
          objc_msgSend_addOperationWithBlock_(v21, v19, v57);
        }
      }
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (void)stopFactoryGyroUpdatesPrivate
{
  v15 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v3 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping factory gyro updates.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager stopFactoryGyroUpdatesPrivate]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  *(internal + 983) = 0u;
  *(internal + 956) = 0u;
  *(internal + 972) = 0u;
  *(internal + 924) = 0u;
  *(internal + 940) = 0u;
  *(internal + 892) = 0u;
  *(internal + 908) = 0u;
  *(internal + 860) = 0u;
  *(internal + 876) = 0u;
  *(internal + 828) = 0u;
  *(internal + 844) = 0u;
  *(internal + 796) = 0u;
  *(internal + 812) = 0u;
  *(internal + 764) = 0u;
  *(internal + 780) = 0u;
  *(internal + 732) = 0u;
  *(internal + 748) = 0u;
  *(internal + 716) = 0u;
  if (*(internal + 82))
  {
    v6 = sub_19B42AD98();
    sub_19B426A14(v6, 0, *(internal + 82));
    v7 = *(internal + 82);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    *(internal + 82) = 0;
    v8 = *(internal + 81);
    if (v8)
    {
      sub_19B72A398(v8, 2);
    }
  }

  if (*(internal + 84))
  {
    v9 = sub_19B42AD98();
    sub_19B426A14(v9, 1, *(internal + 84));
    v10 = *(internal + 84);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(internal + 84) = 0;
  }

  v11 = *(internal + 87);
  if (v11)
  {

    *(internal + 87) = 0;
  }

  v12 = *(internal + 86);
  if (v12)
  {

    *(internal + 86) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)startDeviceMotionUpdatesForKeyboardMotionPrivateToQueue:(id)queue withGravityDeltaThreshold:(double)threshold notificationFrequency:(double)frequency andHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v11 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "Starting keyboard motion updates.", buf, 2u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    LOWORD(v26[0]) = 0;
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager startDeviceMotionUpdatesForKeyboardMotionPrivateToQueue:withGravityDeltaThreshold:notificationFrequency:andHandler:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (sub_19B4426E4())
  {
    v14 = *(internal + 129);
    if (v14 != queue)
    {

      *(internal + 129) = queue;
    }

    v15 = *(internal + 128);
    if (v15 != handler)
    {

      *(internal + 128) = handler;
    }

    sub_19B4315C8(buf, @"com.apple.CoreMotion", 1);
    v26[0] = 0;
    v16 = sub_19B43D4DC(buf, @"KeyboardMotionGravityThreshold", v26);
    v17 = *v26;
    v26[0] = 0;
    v18 = sub_19B43D4DC(buf, @"KeyboardMotionGravitySendFrequency", v26);
    if (v16)
    {
      thresholdCopy = v17;
    }

    else
    {
      thresholdCopy = threshold;
    }

    frequencyCopy = *v26;
    if (!v18)
    {
      frequencyCopy = frequency;
    }

    v21 = thresholdCopy;
    v22 = frequencyCopy;
    internal[267] = v21;
    internal[268] = v22;
    if (!*(internal + 130))
    {
      v23 = [CLDeviceMotionProperties alloc];
      objc_msgSend_initWithMode_(v23, v24, 3);
      operator new();
    }

    sub_19B421798();
    if (sub_19B4426E4() && !*(internal + 135))
    {
      operator new();
    }

    sub_19B60DA60(buf);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)stopDeviceMotionUpdatesForKeyboardMotionPrivate
{
  v14 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v3 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping keyboard motion updates.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager stopDeviceMotionUpdatesForKeyboardMotionPrivate]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (sub_19B4426E4())
  {
    if (internal[130])
    {
      v6 = sub_19B424AE0();
      sub_19B425248(v6, internal[130]);
      v7 = internal[130];
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      internal[130] = 0;
    }

    if (internal[135])
    {
      v8 = sub_19B677074();
      sub_19B426A14(v8, 0, internal[135]);
      v9 = internal[135];
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      internal[135] = 0;
    }

    v10 = internal[129];
    if (v10)
    {

      internal[129] = 0;
    }

    v11 = internal[128];
    if (v11)
    {

      internal[128] = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendDeviceMotionHostGravityToKeyboard:(id *)keyboard
{
  v4 = *(sub_19B677074() + 48);
  if (v4)
  {
    var2 = keyboard->var2;
    v8 = 114;
    v9 = *keyboard->var0;
    v10 = var2;
    LOBYTE(v4) = objc_msgSend_setReport_payload_length_(v4, v5, 114, &v8, 6);
  }

  return v4;
}

- (void)onDeviceMotionForKeyboardMotion:(const Sample *)motion
{
  internal = self->_internal;
  v5 = sub_19B420740(&motion->acceleration.x);
  v7 = v6;
  v9 = v8;
  v10 = sub_19B639268(v5, v6, v8, *(internal + 264), *(internal + 265), *(internal + 266));
  v11 = *(internal + 267);
  timestamp = motion->timestamp;
  v13 = *(internal + 131);
  if (v13 < 0.0 || ((v11 * 0.017453) > 0.0 ? (v14 = *&v10 <= (v11 * 0.017453)) : (v14 = 1), !v14 || timestamp - v13 > (1.0 / *(internal + 268))))
  {
    v15 = v11 > 0.0;
    v16 = v11 >= 255.0;
    if (v11 < 255.0)
    {
      v15 = 0;
    }

    v17 = *(internal + 268);
    if (v11 <= 0.0)
    {
      v16 = 1;
    }

    v18 = v17 > 0.0;
    v19 = v17 >= 255.0;
    if (v17 < 255.0)
    {
      v18 = 0;
    }

    v20 = vcvts_n_s32_f32(v5 + 1.0, 7uLL);
    v21 = vcvts_n_s32_f32(v7 + 1.0, 7uLL);
    v22 = vcvts_n_s32_f32(v9 + 1.0, 7uLL);
    v23 = *(internal + 128);
    v24 = *(internal + 129);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    if (v17 <= 0.0)
    {
      v19 = 1;
    }

    v27[2] = sub_19B6394F4;
    v27[3] = &unk_1E75339D8;
    v25 = v18 << 31 >> 31;
    if (!v19)
    {
      LOBYTE(v25) = v17;
    }

    v26 = v15 << 31 >> 31;
    v27[4] = v23;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    if (!v16)
    {
      LOBYTE(v26) = v11;
    }

    v31 = v25;
    v32 = v26;
    objc_msgSend_addOperationWithBlock_(v24, v23, v27, v11);
    *(internal + 264) = v5;
    *(internal + 265) = v7;
    *(internal + 266) = v9;
    *(internal + 131) = timestamp;
  }
}

@end