@interface CMAudioAccessoryManager
+ (BOOL)_selectActiveAudioRouteForDeviceMotionWithBTAddress:(id)a3 modelID:(id)a4;
+ (BOOL)_selectDeviceWithBTAddress:(id)a3;
- (BOOL)_isAudioAccessoryAccelerometerAvailable;
- (BOOL)_isAudioAccessoryActivityAvailable;
- (BOOL)_isAudioAccessoryDeviceMotionAvailable;
- (BOOL)_isAudioAccessoryGyroAvailable;
- (BOOL)_isAudioAccessoryHeartRateAvailable;
- (BOOL)_isAudioAccessoryInertialOdometryAvailable;
- (BOOL)_isAudioAccessoryMagnetometerAvailable;
- (BOOL)_isAudioAccessoryPPGAvailable;
- (BOOL)_isAudioAccessorySitStandAvailable;
- (CMAudioAccessoryManager)init;
- (id)_audioAccessoryAccelerometerData;
- (id)_audioAccessoryGyroData;
- (id)_audioAccessoryMagnetometerData;
- (id)initPrivate;
- (void)_setAudioAccessoryAccelerometerUpdateInterval:(double)a3;
- (void)_setAudioAccessoryAccelerometerUpdateIntervalPrivate:(double)a3;
- (void)_setAudioAccessoryActivityUpdateInterval:(double)a3;
- (void)_setAudioAccessoryActivityUpdateIntervalPrivate:(double)a3;
- (void)_setAudioAccessoryDeviceMotionUpdateInterval:(double)a3;
- (void)_setAudioAccessoryDeviceMotionUpdateIntervalPrivate:(double)a3;
- (void)_setAudioAccessoryGyroUpdateInterval:(double)a3;
- (void)_setAudioAccessoryGyroUpdateIntervalPrivate:(double)a3;
- (void)_setAudioAccessoryHeartRateUpdateInterval:(double)a3;
- (void)_setAudioAccessoryHeartRateUpdateIntervalPrivate:(double)a3;
- (void)_setAudioAccessoryInertialOdometryUpdateInterval:(double)a3;
- (void)_setAudioAccessoryInertialOdometryUpdateIntervalPrivate:(double)a3;
- (void)_setAudioAccessoryMagnetometerUpdateInterval:(double)a3;
- (void)_setAudioAccessoryMagnetometerUpdateIntervalPrivate:(double)a3;
- (void)_setAudioAccessorySitStandUpdateInterval:(double)a3;
- (void)_setAudioAccessorySitStandUpdateIntervalPrivate:(double)a3;
- (void)_startAudioAccessoryAccelerometerUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryAccelerometerUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryActivityStatusUpdatesPrivate:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryActivityStatusUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryActivityUpdatesPrivate:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryActivityUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryDeviceMotionStatusUpdatesPrivate:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryDeviceMotionStatusUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryDeviceMotionUpdatesPrivate:(id)a3 lowLatencyMode:(BOOL)a4 withHandler:(id)a5;
- (void)_startAudioAccessoryDeviceMotionUpdatesToQueue:(id)a3 lowLatencyMode:(BOOL)a4 withHandler:(id)a5;
- (void)_startAudioAccessoryGyroUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryGyroUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryHeartRateUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryHeartRateUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryInertialOdometryUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryInertialOdometryUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryMagnetometerUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryMagnetometerUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryPPGUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessoryPPGUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessorySitStandUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)_startAudioAccessorySitStandUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)_stopAudioAccessoryAccelerometerUpdates;
- (void)_stopAudioAccessoryAccelerometerUpdatesPrivate;
- (void)_stopAudioAccessoryActivityStatusUpdates;
- (void)_stopAudioAccessoryActivityStatusUpdatesPrivate;
- (void)_stopAudioAccessoryActivityUpdates;
- (void)_stopAudioAccessoryActivityUpdatesPrivate;
- (void)_stopAudioAccessoryDeviceMotionStatusUpdates;
- (void)_stopAudioAccessoryDeviceMotionStatusUpdatesPrivate;
- (void)_stopAudioAccessoryDeviceMotionUpdates;
- (void)_stopAudioAccessoryDeviceMotionUpdatesPrivate;
- (void)_stopAudioAccessoryGyroUpdates;
- (void)_stopAudioAccessoryGyroUpdatesPrivate;
- (void)_stopAudioAccessoryHeartRateUpdates;
- (void)_stopAudioAccessoryHeartRateUpdatesPrivate;
- (void)_stopAudioAccessoryInertialOdometryUpdates;
- (void)_stopAudioAccessoryInertialOdometryUpdatesPrivate;
- (void)_stopAudioAccessoryMagnetometerUpdates;
- (void)_stopAudioAccessoryMagnetometerUpdatesPrivate;
- (void)_stopAudioAccessoryPPGUpdates;
- (void)_stopAudioAccessoryPPGUpdatesPrivate;
- (void)_stopAudioAccessorySitStandUpdates;
- (void)_stopAudioAccessorySitStandUpdatesPrivate;
- (void)dealloc;
- (void)onAudioAccessoryAccelerometer:(const Sample *)a3;
- (void)onAudioAccessoryActivity:(const ActivityReport *)a3;
- (void)onAudioAccessoryActivityStatus:(const int *)a3;
- (void)onAudioAccessoryDeviceMotion:(const void *)a3;
- (void)onAudioAccessoryDeviceMotionConfig:(const Config *)a3;
- (void)onAudioAccessoryDeviceMotionStatus:(const int *)a3;
- (void)onAudioAccessoryGyro:(const Sample *)a3;
- (void)onAudioAccessoryHeartRate:(const Sample *)a3;
- (void)onAudioAccessoryInertialOdometry:(const InertialOdometryReport *)a3;
- (void)onAudioAccessoryMagnetometer:(const Sample *)a3;
- (void)onAudioAccessoryPPG:(const Sample *)a3;
- (void)onAudioAccessorySitStand:(const SitStandReport *)a3;
@end

@implementation CMAudioAccessoryManager

- (CMAudioAccessoryManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428AAC;
  v11 = sub_19B429040;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A268C;
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
  v4.receiver = self;
  v4.super_class = CMAudioAccessoryManager;
  v2 = [(CMAudioAccessoryManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMAudioAccessoryManagerInternal);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428AAC;
  v6[4] = sub_19B429040;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A2874;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMAudioAccessoryManager;
  [(CMAudioAccessoryManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

+ (BOOL)_selectActiveAudioRouteForDeviceMotionWithBTAddress:(id)a3 modelID:(id)a4
{
  v5 = sub_19B7851B0();

  return sub_19B785538(v5, a3);
}

+ (BOOL)_selectDeviceWithBTAddress:(id)a3
{
  v4 = sub_19B7851B0();

  return sub_19B785538(v4, a3);
}

- (void)_setAudioAccessoryAccelerometerUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A2990;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (BOOL)_isAudioAccessoryAccelerometerAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A2A30;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 672);
}

- (id)_audioAccessoryAccelerometerData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 6);
  v4 = *(internal + 14);
  v5 = *(internal + 15);
  v6 = *(internal + 16);
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

- (void)_startAudioAccessoryAccelerometerUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A2B64;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessoryAccelerometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A2BF0;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_setAudioAccessoryAccelerometerUpdateIntervalPrivate:(double)a3
{
  internal = self->_internal;
  if (a3 < 0.005)
  {
    a3 = 0.005;
  }

  *(internal + 3) = a3;
  if (*(internal + 2))
  {
    v4 = sub_19B7170A0();
    v5 = *(internal + 2);

    sub_19B44E2F8(v4, 0, v5, internal + 24);
  }
}

- (void)_startAudioAccessoryAccelerometerUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryAccelerometerAvailable(self, a2, a3) && internal[3] > 0.0)
  {
    v7 = *(internal + 5);
    if (v7 != a3)
    {

      *(internal + 5) = a3;
    }

    v8 = *(internal + 4);
    if (v8 != a4)
    {

      *(internal + 4) = objc_msgSend_copy(a4, v9, v10);
    }

    if (!*(internal + 2))
    {
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryAccelerometerUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryAccelerometerAvailable(self, a2, v2))
  {
    if (internal[2])
    {
      v4 = sub_19B7170A0();
      sub_19B426A14(v4, 0, internal[2]);
      v5 = internal[2];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[2] = 0;
    }

    v6 = internal[5];
    if (v6)
    {

      internal[5] = 0;
    }

    v7 = internal[4];
    if (v7)
    {

      internal[4] = 0;
    }
  }
}

- (void)_setAudioAccessoryGyroUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A2ECC;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (BOOL)_isAudioAccessoryGyroAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A2F6C;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 673);
}

- (id)_audioAccessoryGyroData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 15);
  v4 = *(internal + 32);
  v5 = *(internal + 33);
  v6 = *(internal + 34);
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

- (void)_startAudioAccessoryGyroUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A30A0;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessoryGyroUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A312C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_setAudioAccessoryGyroUpdateIntervalPrivate:(double)a3
{
  internal = self->_internal;
  if (a3 < 0.005)
  {
    a3 = 0.005;
  }

  *(internal + 12) = a3;
  if (*(internal + 11))
  {
    v4 = sub_19B793B00();
    v5 = *(internal + 11);

    sub_19B44E2F8(v4, 0, v5, internal + 96);
  }
}

- (void)_startAudioAccessoryGyroUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryGyroAvailable(self, a2, a3) && internal[12] > 0.0)
  {
    v7 = *(internal + 14);
    if (v7 != a3)
    {

      *(internal + 14) = a3;
    }

    v8 = *(internal + 13);
    if (v8 != a4)
    {

      *(internal + 13) = objc_msgSend_copy(a4, v9, v10);
    }

    if (!*(internal + 11))
    {
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryGyroUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryGyroAvailable(self, a2, v2))
  {
    if (internal[11])
    {
      v4 = sub_19B793B00();
      sub_19B426A14(v4, 0, internal[11]);
      v5 = internal[11];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[11] = 0;
    }

    v6 = internal[14];
    if (v6)
    {

      internal[14] = 0;
    }

    v7 = internal[13];
    if (v7)
    {

      internal[13] = 0;
    }
  }
}

- (void)_setAudioAccessoryMagnetometerUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A3408;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (BOOL)_isAudioAccessoryMagnetometerAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A34A8;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 674);
}

- (id)_audioAccessoryMagnetometerData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 24);
  v4 = *(internal + 50);
  v5 = *(internal + 51);
  v6 = *(internal + 52);
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

- (void)_startAudioAccessoryMagnetometerUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A35DC;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessoryMagnetometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A3668;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_setAudioAccessoryMagnetometerUpdateIntervalPrivate:(double)a3
{
  internal = self->_internal;
  if (a3 < 0.005)
  {
    a3 = 0.005;
  }

  *(internal + 21) = a3;
  if (*(internal + 20))
  {
    if (qword_1EAFE3AE8 != -1)
    {
      dispatch_once(&qword_1EAFE3AE8, &unk_1F0E29400);
    }

    v4 = qword_1EAFE3AE0;
    v5 = *(internal + 20);

    sub_19B44E2F8(v4, 0, v5, internal + 168);
  }
}

- (void)_startAudioAccessoryMagnetometerUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryMagnetometerAvailable(self, a2, a3) && internal[21] > 0.0)
  {
    v7 = *(internal + 23);
    if (v7 != a3)
    {

      *(internal + 23) = a3;
    }

    v8 = *(internal + 22);
    if (v8 != a4)
    {

      *(internal + 22) = objc_msgSend_copy(a4, v9, v10);
    }

    if (!*(internal + 20))
    {
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryMagnetometerUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryMagnetometerAvailable(self, a2, v2))
  {
    if (internal[20])
    {
      if (qword_1EAFE3AE8 != -1)
      {
        dispatch_once(&qword_1EAFE3AE8, &unk_1F0E29400);
      }

      sub_19B426A14(qword_1EAFE3AE0, 0, internal[20]);
      v4 = internal[20];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      internal[20] = 0;
    }

    v5 = internal[23];
    if (v5)
    {

      internal[23] = 0;
    }

    v6 = internal[22];
    if (v6)
    {

      internal[22] = 0;
    }
  }
}

- (BOOL)_isAudioAccessoryDeviceMotionAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A39C0;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 675);
}

- (void)_setAudioAccessoryDeviceMotionUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A3A54;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (void)_startAudioAccessoryDeviceMotionUpdatesToQueue:(id)a3 lowLatencyMode:(BOOL)a4 withHandler:(id)a5
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B6A3B08;
  v10[3] = &unk_1E75340D8;
  v10[4] = self;
  v10[5] = a3;
  v11 = a4;
  v10[6] = a5;
  sub_19B421668(v9, v10);
}

- (void)_stopAudioAccessoryDeviceMotionUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A3B98;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_startAudioAccessoryDeviceMotionStatusUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A3C30;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessoryDeviceMotionStatusUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A3CBC;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_setAudioAccessoryDeviceMotionUpdateIntervalPrivate:(double)a3
{
  internal = self->_internal;
  if (a3 < 0.005)
  {
    a3 = 0.005;
  }

  *(internal + 31) = a3;
  if (*(internal + 29))
  {
    v4 = sub_19B6D6344();
    v5 = *(internal + 29);

    sub_19B44E2F8(v4, 0, v5, internal + 248);
  }
}

- (void)_startAudioAccessoryDeviceMotionUpdatesPrivate:(id)a3 lowLatencyMode:(BOOL)a4 withHandler:(id)a5
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryDeviceMotionAvailable(self, a2, a3) && internal[31] > 0.0)
  {
    v9 = *(internal + 33);
    if (v9 != a3)
    {

      *(internal + 33) = a3;
    }

    v10 = *(internal + 32);
    if (v10 != a5)
    {

      *(internal + 32) = objc_msgSend_copy(a5, v11, v12);
    }

    if (!*(internal + 30))
    {
      operator new();
    }

    if (!*(internal + 29))
    {
      *(sub_19B6D6344() + 28) = a4;
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryDeviceMotionUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryDeviceMotionAvailable(self, a2, v2))
  {
    if (internal[29])
    {
      v4 = sub_19B6D6344();
      sub_19B426A14(v4, 0, internal[29]);
      v5 = internal[29];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[29] = 0;
    }

    if (internal[30])
    {
      v6 = sub_19B6D6344();
      sub_19B426A14(v6, 2, internal[30]);
      v7 = internal[30];
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      internal[30] = 0;
    }

    v8 = internal[33];
    if (v8)
    {

      internal[33] = 0;
    }

    v9 = internal[32];
    if (v9)
    {

      internal[32] = 0;
    }
  }
}

- (void)_startAudioAccessoryDeviceMotionStatusUpdatesPrivate:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryDeviceMotionAvailable(self, a2, a3))
  {
    v8 = internal[38];
    if (v8 != a3)
    {

      internal[38] = a3;
    }

    v9 = internal[37];
    if (v9 != a4)
    {

      internal[37] = objc_msgSend_copy(a4, v10, v11);
    }

    if (!internal[36])
    {
      v12 = sub_19B6D6344();
      v14 = sub_19B74FBF4(v12);
      objc_msgSend_onAudioAccessoryDeviceMotionStatus_(self, v13, &v14);
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryDeviceMotionStatusUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryDeviceMotionAvailable(self, a2, v2))
  {
    if (internal[36])
    {
      v4 = sub_19B6D6344();
      sub_19B426A14(v4, 3, internal[36]);
      v5 = internal[36];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[36] = 0;
    }

    v6 = internal[38];
    if (v6)
    {

      internal[38] = 0;
    }

    v7 = internal[37];
    if (v7)
    {

      internal[37] = 0;
    }
  }
}

- (BOOL)_isAudioAccessoryActivityAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A4248;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 676);
}

- (void)_setAudioAccessoryActivityUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A42DC;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (void)_startAudioAccessoryActivityUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A4388;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B420C9C(v7, v8);
}

- (void)_stopAudioAccessoryActivityUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A4414;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_startAudioAccessoryActivityStatusUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A44AC;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessoryActivityStatusUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A4538;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_setAudioAccessoryActivityUpdateIntervalPrivate:(double)a3
{
  internal = self->_internal;
  if (a3 < 0.005)
  {
    a3 = 0.005;
  }

  *(internal + 40) = a3;
  if (*(internal + 39))
  {
    if (qword_1EAFE3AC8 != -1)
    {
      dispatch_once(&qword_1EAFE3AC8, &unk_1F0E293A0);
    }

    v4 = qword_1EAFE3AC0;
    v5 = *(internal + 39);

    sub_19B44E2F8(v4, 0, v5, internal + 320);
  }
}

- (void)_startAudioAccessoryActivityUpdatesPrivate:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryActivityAvailable(self, a2, a3) && internal[40] > 0.0)
  {
    v7 = *(internal + 42);
    if (v7 != a3)
    {

      *(internal + 42) = a3;
    }

    v8 = *(internal + 41);
    if (v8 != a4)
    {

      *(internal + 41) = objc_msgSend_copy(a4, v9, v10);
    }

    if (!*(internal + 39))
    {
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryActivityUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryActivityAvailable(self, a2, v2))
  {
    if (internal[39])
    {
      if (qword_1EAFE3AC8 != -1)
      {
        dispatch_once(&qword_1EAFE3AC8, &unk_1F0E293A0);
      }

      sub_19B426A14(qword_1EAFE3AC0, 0, internal[39]);
      v4 = internal[39];
      internal[39] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    v5 = internal[42];
    if (v5)
    {

      internal[42] = 0;
    }

    v6 = internal[41];
    if (v6)
    {

      internal[41] = 0;
    }
  }
}

- (void)_startAudioAccessoryActivityStatusUpdatesPrivate:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryActivityAvailable(self, a2, a3))
  {
    v8 = internal[45];
    if (v8 != a3)
    {

      internal[45] = a3;
    }

    v9 = internal[44];
    if (v9 != a4)
    {

      internal[44] = objc_msgSend_copy(a4, v10, v11);
    }

    if (!internal[43])
    {
      if (qword_1EAFE3AC8 != -1)
      {
        dispatch_once(&qword_1EAFE3AC8, &unk_1F0E293A0);
      }

      v13 = sub_19B74FBF4(qword_1EAFE3AC0);
      objc_msgSend_onAudioAccessoryActivityStatus_(self, v12, &v13);
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryActivityStatusUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryActivityAvailable(self, a2, v2))
  {
    if (internal[43])
    {
      if (qword_1EAFE3AC8 != -1)
      {
        dispatch_once(&qword_1EAFE3AC8, &unk_1F0E293A0);
      }

      sub_19B426A14(qword_1EAFE3AC0, 2, internal[43]);
      v4 = internal[43];
      internal[43] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    v5 = internal[45];
    if (v5)
    {

      internal[45] = 0;
    }

    v6 = internal[44];
    if (v6)
    {

      internal[44] = 0;
    }
  }
}

- (void)_setAudioAccessorySitStandUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A4B34;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (BOOL)_isAudioAccessorySitStandAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A4BD4;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 677);
}

- (void)_startAudioAccessorySitStandUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A4C6C;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessorySitStandUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A4CF8;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_setAudioAccessorySitStandUpdateIntervalPrivate:(double)a3
{
  internal = self->_internal;
  if (a3 < 1.0)
  {
    a3 = 1.0;
  }

  *(internal + 47) = a3;
  if (*(internal + 46))
  {
    if (qword_1EAFE3AC8 != -1)
    {
      dispatch_once(&qword_1EAFE3AC8, &unk_1F0E293A0);
    }

    v4 = qword_1EAFE3AC0;
    v5 = *(internal + 46);

    sub_19B44E2F8(v4, 1, v5, internal + 376);
  }
}

- (void)_startAudioAccessorySitStandUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessorySitStandAvailable(self, a2, a3) && internal[47] > 0.0)
  {
    v7 = *(internal + 49);
    if (v7 != a3)
    {

      *(internal + 49) = a3;
    }

    v8 = *(internal + 48);
    if (v8 != a4)
    {

      *(internal + 48) = objc_msgSend_copy(a4, v9, v10);
    }

    if (!*(internal + 46))
    {
      operator new();
    }
  }
}

- (void)_stopAudioAccessorySitStandUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessorySitStandAvailable(self, a2, v2))
  {
    if (internal[46])
    {
      if (qword_1EAFE3AC8 != -1)
      {
        dispatch_once(&qword_1EAFE3AC8, &unk_1F0E293A0);
      }

      sub_19B426A14(qword_1EAFE3AC0, 1, internal[46]);
      v4 = internal[46];
      internal[46] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    v5 = internal[49];
    if (v5)
    {

      internal[49] = 0;
    }

    v6 = internal[48];
    if (v6)
    {

      internal[48] = 0;
    }
  }
}

- (void)_setAudioAccessoryHeartRateUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A507C;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (BOOL)_isAudioAccessoryHeartRateAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A511C;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 678);
}

- (void)_startAudioAccessoryHeartRateUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A51B4;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessoryHeartRateUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A5240;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_setAudioAccessoryHeartRateUpdateIntervalPrivate:(double)a3
{
  internal = self->_internal;
  if (a3 < 0.005)
  {
    a3 = 0.005;
  }

  *(internal + 51) = a3;
  if (*(internal + 50))
  {
    if (qword_1EAFE3B08 != -1)
    {
      dispatch_once(&qword_1EAFE3B08, &unk_1F0E29980);
    }

    v4 = qword_1EAFE3B00;
    v5 = *(internal + 50);

    sub_19B44E2F8(v4, 0, v5, internal + 408);
  }
}

- (void)_startAudioAccessoryHeartRateUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryHeartRateAvailable(self, a2, a3) && internal[51] > 0.0)
  {
    v7 = *(internal + 53);
    if (v7 != a3)
    {

      *(internal + 53) = a3;
    }

    v8 = *(internal + 52);
    if (v8 != a4)
    {

      *(internal + 52) = objc_msgSend_copy(a4, v9, v10);
    }

    if (!*(internal + 50))
    {
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryHeartRateUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryHeartRateAvailable(self, a2, v2))
  {
    if (internal[50])
    {
      if (qword_1EAFE3B08 != -1)
      {
        dispatch_once(&qword_1EAFE3B08, &unk_1F0E29980);
      }

      sub_19B426A14(qword_1EAFE3B00, 0, internal[50]);
      v4 = internal[50];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      internal[50] = 0;
    }

    v5 = internal[53];
    if (v5)
    {

      internal[53] = 0;
    }

    v6 = internal[52];
    if (v6)
    {

      internal[52] = 0;
    }
  }
}

- (void)_setAudioAccessoryInertialOdometryUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6A559C;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (BOOL)_isAudioAccessoryInertialOdometryAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A563C;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 679);
}

- (void)_startAudioAccessoryInertialOdometryUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A56D4;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessoryInertialOdometryUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A5760;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_setAudioAccessoryInertialOdometryUpdateIntervalPrivate:(double)a3
{
  internal = self->_internal;
  if (a3 < 1.0)
  {
    a3 = 1.0;
  }

  *(internal + 59) = a3;
  if (*(internal + 58))
  {
    if (qword_1EAFE3B18 != -1)
    {
      dispatch_once(&qword_1EAFE3B18, &unk_1F0E29C00);
    }

    v4 = qword_1EAFE3B10;
    v5 = *(internal + 58);

    sub_19B44E2F8(v4, 0, v5, internal + 472);
  }
}

- (void)_startAudioAccessoryInertialOdometryUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryInertialOdometryAvailable(self, a2, a3) && internal[59] > 0.0)
  {
    v7 = *(internal + 61);
    if (v7 != a3)
    {

      *(internal + 61) = a3;
    }

    v8 = *(internal + 60);
    if (v8 != a4)
    {

      *(internal + 60) = objc_msgSend_copy(a4, v9, v10);
    }

    if (!*(internal + 58))
    {
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryInertialOdometryUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryInertialOdometryAvailable(self, a2, v2))
  {
    if (internal[58])
    {
      if (qword_1EAFE3B18 != -1)
      {
        dispatch_once(&qword_1EAFE3B18, &unk_1F0E29C00);
      }

      sub_19B426A14(qword_1EAFE3B10, 0, internal[58]);
      v4 = internal[58];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      internal[58] = 0;
    }

    v5 = internal[61];
    if (v5)
    {

      internal[61] = 0;
    }

    v6 = internal[60];
    if (v6)
    {

      internal[60] = 0;
    }
  }
}

- (BOOL)_isAudioAccessoryPPGAvailable
{
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6A5AB0;
  v5[3] = &unk_1E7532988;
  v5[4] = self;
  sub_19B420C9C(v3, v5);
  return *(self->_internal + 680);
}

- (void)_startAudioAccessoryPPGUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6A5B48;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)_stopAudioAccessoryPPGUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6A5BD4;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)_startAudioAccessoryPPGUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryPPGAvailable(self, a2, a3))
  {
    v7 = internal[78];
    if (v7 != a3)
    {

      internal[78] = a3;
    }

    v8 = internal[77];
    if (v8 != a4)
    {

      internal[77] = objc_msgSend_copy(a4, v9, v10);
    }

    if (!internal[76])
    {
      operator new();
    }
  }
}

- (void)_stopAudioAccessoryPPGUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend__isAudioAccessoryPPGAvailable(self, a2, v2))
  {
    if (internal[76])
    {
      if (qword_1EAFE3AF8 != -1)
      {
        dispatch_once(&qword_1EAFE3AF8, &unk_1F0E29680);
      }

      sub_19B426A14(qword_1EAFE3AF0, 0, internal[76]);
      v4 = internal[76];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      internal[76] = 0;
    }

    v5 = internal[78];
    if (v5)
    {

      internal[78] = 0;
    }

    v6 = internal[77];
    if (v6)
    {

      internal[77] = 0;
    }
  }
}

- (void)onAudioAccessoryAccelerometer:(const Sample *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&a3->timestamp;
  v6 = *&a3->acceleration.z;
  *&internal[20]._os_unfair_lock_opaque = *&a3[1].acceleration.x;
  *&internal[12]._os_unfair_lock_opaque = v5;
  *&internal[16]._os_unfair_lock_opaque = v6;
  os_unfair_lock_unlock(internal + 2);
  if (*&internal[10]._os_unfair_lock_opaque && *&internal[8]._os_unfair_lock_opaque)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [CMAccelerometerData alloc];
    *&v9 = a3->acceleration.x;
    *&v10 = a3->acceleration.y;
    *&v11 = a3->acceleration.z;
    v14 = objc_msgSend_initWithAcceleration_andTimestamp_(v8, v12, v13, v9, v10, v11, a3->timestamp);
    v15 = *&internal[8]._os_unfair_lock_opaque;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29820);
    }

    v16 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v17 = mach_absolute_time();
      *buf = 138412546;
      v30 = v14;
      v31 = 2048;
      v32 = sub_19B41E070(v17);
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "Audio Accessory CMAccelerometerData: %@,now,%f", buf, 0x16u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29820);
      }

      v20 = mach_absolute_time();
      v25 = 138412546;
      v26 = v14;
      v27 = 2048;
      v28 = sub_19B41E070(v20);
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryManager onAudioAccessoryAccelerometer:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v22 = *&internal[10]._os_unfair_lock_opaque;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_19B6A60C4;
    v24[3] = &unk_1E7532B90;
    v24[4] = v14;
    v24[5] = v15;
    objc_msgSend_addOperationWithBlock_(v22, v19, v24);

    objc_autoreleasePoolPop(v7);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onAudioAccessoryGyro:(const Sample *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&a3->timestamp;
  v6 = *&a3->acceleration.z;
  *(internal + 19) = *&a3[1].acceleration.x;
  *(internal + 136) = v6;
  *(internal + 120) = v5;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 14) && *(internal + 13))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [CMGyroData alloc];
    *&v9 = a3->acceleration.x;
    *&v10 = a3->acceleration.y;
    *&v11 = a3->acceleration.z;
    v14 = objc_msgSend_initWithRotationRate_andTimestamp_(v8, v12, v13, v9, v10, v11, a3->timestamp);
    v15 = *(internal + 13);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29820);
    }

    v16 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v17 = mach_absolute_time();
      *buf = 138412546;
      v30 = v14;
      v31 = 2048;
      v32 = sub_19B41E070(v17);
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "Audio Accessory CMGyroData: %@,now,%f", buf, 0x16u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29820);
      }

      v20 = mach_absolute_time();
      v25 = 138412546;
      v26 = v14;
      v27 = 2048;
      v28 = sub_19B41E070(v20);
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryManager onAudioAccessoryGyro:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v22 = *(internal + 14);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_19B6A63A0;
    v24[3] = &unk_1E7532B90;
    v24[4] = v14;
    v24[5] = v15;
    objc_msgSend_addOperationWithBlock_(v22, v19, v24);

    objc_autoreleasePoolPop(v7);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onAudioAccessoryMagnetometer:(const Sample *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&a3->timestamp;
  v6 = *&a3->acceleration.z;
  *&internal[56]._os_unfair_lock_opaque = *&a3[1].acceleration.x;
  *&internal[48]._os_unfair_lock_opaque = v5;
  *&internal[52]._os_unfair_lock_opaque = v6;
  os_unfair_lock_unlock(internal + 2);
  if (*&internal[46]._os_unfair_lock_opaque && *&internal[44]._os_unfair_lock_opaque)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [CMMagnetometerData alloc];
    *&v9 = a3->acceleration.x;
    *&v10 = a3->acceleration.y;
    *&v11 = a3->acceleration.z;
    v14 = objc_msgSend_initWithMagneticField_andTimestamp_(v8, v12, v13, v9, v10, v11, a3->timestamp);
    v15 = *&internal[44]._os_unfair_lock_opaque;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29820);
    }

    v16 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v17 = mach_absolute_time();
      *buf = 138412546;
      v30 = v14;
      v31 = 2048;
      v32 = sub_19B41E070(v17);
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "Audio Accessory CMMagnetometerData: %@,now,%f", buf, 0x16u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29820);
      }

      v20 = mach_absolute_time();
      v25 = 138412546;
      v26 = v14;
      v27 = 2048;
      v28 = sub_19B41E070(v20);
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryManager onAudioAccessoryMagnetometer:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v22 = *&internal[46]._os_unfair_lock_opaque;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_19B6A6678;
    v24[3] = &unk_1E7532B90;
    v24[4] = v14;
    v24[5] = v15;
    objc_msgSend_addOperationWithBlock_(v22, v19, v24);

    objc_autoreleasePoolPop(v7);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onAudioAccessoryDeviceMotion:(const void *)a3
{
  v81 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v4 = *(a3 + 9);
  v64 = *(a3 + 8);
  v65 = v4;
  v66 = *(a3 + 20);
  v5 = *(a3 + 5);
  v60 = *(a3 + 4);
  v61 = v5;
  v6 = *(a3 + 7);
  v62 = *(a3 + 6);
  v63 = v6;
  v7 = *(a3 + 1);
  v56 = *a3;
  v57 = v7;
  v8 = *(a3 + 3);
  v58 = *(a3 + 2);
  v59 = v8;
  if (*(internal + 33))
  {
    if (*(internal + 32))
    {
      v51[0] = sub_19B66BF70((internal + 68), &v56, v8);
      v51[1] = v10;
      v51[2] = v11;
      v51[3] = v12;
      v51[4] = sub_19B66C1A4(internal + 68, *(&v58 + 2), *(&v58 + 3), v59.f32[0]);
      v51[5] = v13;
      v51[6] = v14;
      v51[7] = sub_19B66C1A4(internal + 68, *&v57, *(&v57 + 1), *(&v57 + 2));
      v51[8] = v15;
      v51[9] = v16;
      v52 = v59.i8[5] & 1;
      v53 = DWORD2(v62);
      v17.i64[0] = v60;
      v54 = v60;
      v55 = 0;
      ptr = self->_resampleAccessoryDeviceMotion.__ptr_;
      if (ptr)
      {
        if (sub_19B629DA8(ptr, v51, v17))
        {
          v19 = self->_resampleAccessoryDeviceMotion.__ptr_;
          if (*(v19 + 5))
          {
            v46 = self;
            v20 = 0;
            do
            {
              v21 = sub_19B6A6B1C(v19 + 4, v20);
              v22 = *(v21 + 40);
              v23 = *(v21 + 44);
              v24 = *(v21 + 32);
              v49 = *(v21 + 16);
              v47 = vcvtq_f64_f32(*v21);
              v48 = vcvt_hight_f64_f32(*v21);
              v25 = *(sub_19B6A6B1C(v19 + 4, v20) + 48);
              v26 = objc_autoreleasePoolPush();
              v27 = [CMDeviceMotion alloc];
              *buf = vextq_s8(v48, v47, 8uLL);
              *&buf[16] = vextq_s8(v47, v48, 8uLL);
              v72 = v49;
              v73 = v24;
              v74 = 0;
              v75 = 0xFFFFFFFF00000000;
              v76 = 0;
              v77 = v22;
              v78 = 0;
              v79 = 0;
              v80 = v23;
              v29 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v27, v28, buf, COERCE_DOUBLE(__PAIR64__(DWORD1(v49), -1.0)), 0.0, 0.0, 0.0, v25);
              v30 = *(internal + 32);
              if (qword_1ED71C800 != -1)
              {
                dispatch_once(&qword_1ED71C800, &unk_1F0E29820);
              }

              v31 = off_1ED71C808;
              if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
              {
                v32 = mach_absolute_time();
                v33 = sub_19B41E070(v32);
                *buf = 138543618;
                *&buf[4] = v29;
                *&buf[12] = 2050;
                *&buf[14] = v33;
                _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEBUG, "Audio Accessory CMDeviceMotion: %{public}@,now,%{public}f", buf, 0x16u);
              }

              v34 = sub_19B420058();
              if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C800 != -1)
                {
                  dispatch_once(&qword_1ED71C800, &unk_1F0E29820);
                }

                v36 = mach_absolute_time();
                v37 = sub_19B41E070(v36);
                v67 = 138543618;
                v68 = v29;
                v69 = 2050;
                v70 = v37;
                v38 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryManager onAudioAccessoryDeviceMotion:]", "CoreLocation: %s\n", v38);
                if (v38 != buf)
                {
                  free(v38);
                }
              }

              v39 = *(internal + 33);
              v50[0] = MEMORY[0x1E69E9820];
              v50[1] = 3221225472;
              v50[2] = sub_19B6A6D34;
              v50[3] = &unk_1E7532B90;
              v50[4] = v29;
              v50[5] = v30;
              objc_msgSend_addOperationWithBlock_(v39, v35, v50);

              objc_autoreleasePoolPop(v26);
              ++v20;
            }

            while (v20 < *(v19 + 5));
            v40 = v46->_resampleAccessoryDeviceMotion.__ptr_;
            v41 = *(v40 + 5);
            if (v41 >= 2)
            {
              v42 = *(v40 + 4);
              do
              {
                v43 = v42 + 1;
                if (v43 >= *(v40 + 3))
                {
                  v44 = *(v40 + 3);
                }

                else
                {
                  v44 = 0;
                }

                v42 = (v43 - v44);
                --v41;
              }

              while (v41 > 1u);
              *(v40 + 4) = v42;
              *(v40 + 5) = 1;
            }
          }
        }
      }
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)onAudioAccessoryDeviceMotionConfig:(const Config *)a3
{
  internal = self->_internal;
  internal[68] = sub_19B66BFF4(&a3->var5, v3);
  *(internal + 69) = v5;
  *(internal + 70) = v6;
  *(internal + 71) = v7;
}

- (void)onAudioAccessoryDeviceMotionStatus:(const int *)a3
{
  internal = self->_internal;
  v4 = internal[38];
  if (v4)
  {
    v5 = internal[37];
    if (v5)
    {
      v6 = *a3;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B6A6E0C;
      v7[3] = &unk_1E7532AD8;
      v7[4] = v5;
      v7[5] = v6;
      objc_msgSend_addOperationWithBlock_(v4, a2, v7);
    }
  }
}

- (void)onAudioAccessoryActivity:(const ActivityReport *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal[42])
  {
    v4 = internal[41];
    if (v4)
    {
      v6 = objc_autoreleasePoolPush();
      var0 = a3->var0;
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AC30);
      }

      v8 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v24 = var0;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[CMAudioAccessoryManager] notifying client of activity: %{public}lu", buf, 0xCu);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AC30);
        }

        v21 = 134349056;
        v22 = var0;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryManager onAudioAccessoryActivity:]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      v12 = objc_msgSend_motionActivityForHeadphoneActivity_(CMHeadphoneActivityUtils, v10, var0);
      v13 = *(&a3->var2 + 3);
      v14 = [CMMotionActivity alloc];
      *buf = v12;
      v24 = 0x100000001;
      v25 = 0;
      v27 = 0;
      v26 = 0;
      v28 = 0;
      v29 = v13;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0;
      v16 = objc_msgSend_initWithMotionActivity_(v14, v15, buf);
      v17 = internal[42];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_19B6A70E4;
      v20[3] = &unk_1E7532B90;
      v20[4] = v16;
      v20[5] = v4;
      objc_msgSend_addOperationWithBlock_(v17, v18, v20);

      objc_autoreleasePoolPop(v6);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)onAudioAccessoryActivityStatus:(const int *)a3
{
  internal = self->_internal;
  v4 = internal[45];
  if (v4)
  {
    v5 = internal[44];
    if (v5)
    {
      v6 = *a3;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B6A7184;
      v7[3] = &unk_1E7532AD8;
      v7[4] = v5;
      v7[5] = v6;
      objc_msgSend_addOperationWithBlock_(v4, a2, v7);
    }
  }
}

- (void)onAudioAccessorySitStand:(const SitStandReport *)a3
{
  internal = self->_internal;
  if (internal[49])
  {
    if (internal[48])
    {
      v5 = objc_autoreleasePoolPush();
      var0 = a3->var0;
      var1 = a3->var1;
      v9 = internal[48];
      v8 = internal[49];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_19B6A7250;
      v11[3] = &unk_1E7534100;
      v11[4] = v9;
      v11[5] = var0;
      v11[6] = var1;
      objc_msgSend_addOperationWithBlock_(v8, v10, v11);
      objc_autoreleasePoolPop(v5);
    }
  }
}

- (void)onAudioAccessoryHeartRate:(const Sample *)a3
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&a3->acceleration.z;
  *&internal[108]._os_unfair_lock_opaque = *&a3->timestamp;
  *&internal[112]._os_unfair_lock_opaque = v5;
  os_unfair_lock_unlock(internal + 2);
  if (*&internal[106]._os_unfair_lock_opaque)
  {
    if (*&internal[104]._os_unfair_lock_opaque)
    {
      v6 = objc_autoreleasePoolPush();
      x = a3->acceleration.x;
      y = a3->acceleration.y;
      v10 = *&internal[104]._os_unfair_lock_opaque;
      v9 = *&internal[106]._os_unfair_lock_opaque;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_19B6A733C;
      v12[3] = &unk_1E7532AD8;
      v12[4] = v10;
      v13 = x;
      v14 = y;
      objc_msgSend_addOperationWithBlock_(v9, v11, v12);
      objc_autoreleasePoolPop(v6);
    }
  }
}

- (void)onAudioAccessoryInertialOdometry:(const InertialOdometryReport *)a3
{
  v79[1] = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (!*(internal + 61) || !*(internal + 60))
  {
LABEL_45:
    os_unfair_lock_lock(internal + 2);
    v63 = *&a3->timestamp;
    v64 = *&a3->timestampPositionRollOver;
    *(internal + 32) = *&a3->position[2];
    *(internal + 33) = v64;
    *(internal + 31) = v63;
    v65 = *a3->timestampDeltaPositionUnavailable;
    v66 = *&a3->timestampDeltaPositionUnavailable[2];
    v67 = *a3->attitude;
    *(internal + 589) = *(&a3->attitude[3] + 1);
    *(internal + 35) = v66;
    *(internal + 36) = v67;
    *(internal + 34) = v65;
    os_unfair_lock_unlock(internal + 2);
    goto LABEL_46;
  }

  v5 = objc_autoreleasePoolPush();
  v9 = *(&a3->displacingState + 1);
  if (v9 == 0.0)
  {
    __assert_rtn("[CMAudioAccessoryManager onAudioAccessoryInertialOdometry:]", "CMAudioAccessoryManager.mm", 2034, "timestampSecs != 0.");
  }

  v10 = v5;
  v11 = *(internal + 60);
  v12 = (internal + 496);
  v13 = *(internal + 62);
  if (v13 >= a3->timestampUninitialized)
  {
    if (v13 >= a3->timestampPositionRollOver)
    {
      if (a3->timestampDeltaPositionUnavailable[0] <= v13)
      {
        *&v8 = a3->position[0] - *(internal + 126);
        v71 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8);
        v13 = *(internal + 62);
      }

      else
      {
        v71 = 0;
      }

      if (a3->timestampDeltaPositionUnavailable[1] <= v13)
      {
        *&v8 = a3->position[1] - *(internal + 127);
        v70 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8);
        v13 = *(internal + 62);
      }

      else
      {
        v70 = 0;
      }

      if (a3->timestampDeltaPositionUnavailable[2] <= v13)
      {
        *&v8 = a3->position[2] - *(internal + 128);
        v69 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8);
      }

      else
      {
        v69 = 0;
      }
    }

    else
    {
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E3AC50);
      }

      v26 = qword_1EAFE2A90;
      if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_INFO, "Position rollover", buf, 2u);
      }

      v27 = sub_19B420058();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E3AC50);
        }

        v75 = 0;
        v28 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryManager onAudioAccessoryInertialOdometry:]", "CoreLocation: %s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
    }

    v72 = v11;
    context = v10;
    if (*v12 >= a3->timestampVelocityRollOver)
    {
      *&v8 = a3->deltaVelocityCumSum[0] - *(internal + 129);
      v34 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8);
      *&v35 = a3->deltaVelocityCumSum[1] - *(internal + 130);
      v33 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v36, v37, v35);
      *&v38 = a3->deltaVelocityCumSum[2] - *(internal + 131);
      v32 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v39, v40, v38);
    }

    else
    {
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E3AC50);
      }

      v29 = qword_1EAFE2A90;
      if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_INFO, "Velocity rollover", buf, 2u);
      }

      v30 = sub_19B420058();
      if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E3AC50);
        }

        v75 = 0;
        v31 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryManager onAudioAccessoryInertialOdometry:]", "CoreLocation: %s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v32 = 0;
      v33 = 0;
      v34 = 0;
    }

    v41 = [CMOdometry alloc];
    *&v42 = a3->attitude[0];
    v45 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v43, v44, v42);
    *&v46 = a3->attitude[1];
    v49 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v47, v48, v46);
    *&v50 = a3->attitude[2];
    v53 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v51, v52, v50);
    *&v54 = a3->attitude[3];
    v57 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v55, v56, v54);
    *&v58 = a3->rotationArbitraryToMagneticNorth;
    v60 = objc_msgSend_initWithDeltaPositionX_deltaPositionY_deltaPositionZ_deltaVelocityX_deltaVelocityY_deltaVelocityZ_quaternionX_quaternionY_quaternionZ_quaternionW_rotationArbitraryToTrueNorth_staticFlag_timestamp_(v41, v59, v71, v70, v69, v34, v33, v32, v58, v9, v45, v49, v53, v57, 0);
    v61 = *(internal + 61);
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = sub_19B6A7A6C;
    v74[3] = &unk_1E7532B90;
    v74[4] = v60;
    v74[5] = v72;
    objc_msgSend_addOperationWithBlock_(v61, v62, v74);

    objc_autoreleasePoolPop(context);
    goto LABEL_45;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v78 = *MEMORY[0x1E696A578];
  v79[0] = @"Reference frame has changed for the incoming delta position updates due to unexpected DeviceMotion reinitialization.";
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v79, &v78, 1);
  v18 = objc_msgSend_initWithDomain_code_userInfo_(v14, v17, @"CMErrorDomainPrivate", 103, v16);
  v19 = *(internal + 61);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = sub_19B6A7A54;
  v76[3] = &unk_1E7532B90;
  v76[4] = v18;
  v76[5] = v11;
  objc_msgSend_addOperationWithBlock_(v19, v20, v76);

  os_unfair_lock_lock(internal + 2);
  v21 = *&a3->timestamp;
  v22 = *&a3->timestampPositionRollOver;
  *(internal + 32) = *&a3->position[2];
  *(internal + 33) = v22;
  *v12 = v21;
  v23 = *a3->timestampDeltaPositionUnavailable;
  v24 = *&a3->timestampDeltaPositionUnavailable[2];
  v25 = *a3->attitude;
  *(internal + 589) = *(&a3->attitude[3] + 1);
  *(internal + 35) = v24;
  *(internal + 36) = v25;
  *(internal + 34) = v23;
  os_unfair_lock_unlock(internal + 2);
  objc_autoreleasePoolPop(v10);
LABEL_46:
  v68 = *MEMORY[0x1E69E9840];
}

- (void)onAudioAccessoryPPG:(const Sample *)a3
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&a3->timestamp;
  v6 = *&a3->acceleration.z;
  *(internal + 83) = *&a3[1].acceleration.x;
  *(internal + 632) = v5;
  *(internal + 648) = v6;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 78))
  {
    if (*(internal + 77))
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(internal + 77);
      z_low = LOBYTE(a3->acceleration.z);
      v10 = *&a3->acceleration.x;
      v11 = *(internal + 78);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_19B6A7B60;
      v13[3] = &unk_1E7534128;
      v14 = z_low;
      v13[4] = v8;
      v13[5] = v10;
      objc_msgSend_addOperationWithBlock_(v11, v12, v13);
      objc_autoreleasePoolPop(v7);
    }
  }
}

@end