@interface CMAudioAccessoryManagerInternal
- (CMAudioAccessoryManagerInternal)init;
- (id).cxx_construct;
@end

@implementation CMAudioAccessoryManagerInternal

- (CMAudioAccessoryManagerInternal)init
{
  v8.receiver = self;
  v8.super_class = CMAudioAccessoryManagerInternal;
  v2 = [(CMAudioAccessoryManagerInternal *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->fSampleLock._os_unfair_lock_opaque = 0;
    v2->fAudioAccessoryAccelerometerDispatcher = 0;
    v2->fAudioAccessoryAccelerometerUpdateInterval = 0.02;
    v2->fAudioAccessoryAccelerometerHandler = 0;
    v2->fAudioAccessoryAccelerometerQueue = 0;
    v2->fLatestAudioAccessoryAccelerometerSample.timestamp = -1.0;
    v2->fAudioAccessoryGyroDispatcher = 0;
    v2->fAudioAccessoryGyroUpdateInterval = 0.02;
    v2->fAudioAccessoryGyroHandler = 0;
    v2->fAudioAccessoryGyroQueue = 0;
    v2->fLatestAudioAccessoryGyroSample.timestamp = -1.0;
    v2->fAudioAccessoryMagnetometerDispatcher = 0;
    v2->fAudioAccessoryMagnetometerUpdateInterval = 0.02;
    v2->fAudioAccessoryMagnetometerHandler = 0;
    v2->fAudioAccessoryMagnetometerQueue = 0;
    v2->fLatestAudioAccessoryMagnetometerSample.timestamp = -1.0;
    v2->fAudioAccessoryDeviceMotionDispatcher = 0;
    v2->fAudioAccessoryDeviceMotionConfigDispatcher = 0;
    v2->fAudioAccessoryDeviceMotionHandler = 0;
    v2->fAudioAccessoryDeviceMotionQueue = 0;
    v2->fAudioAccessoryDeviceMotionUpdateInterval = 0.02;
    v2->fAudioAccessoryDeviceMotionStatusDispatcher = 0;
    v2->fAudioAccessoryDeviceMotionStatusHandler = 0;
    ptr = v2->fAudioAccessoryActivityDispatcher.__ptr_;
    v3->fAudioAccessoryDeviceMotionStatusQueue = 0;
    v3->fAudioAccessoryActivityDispatcher.__ptr_ = 0;
    if (ptr)
    {
      (*(ptr->var0 + 1))(ptr);
    }

    v3->fAudioAccessoryActivityUpdateInterval = 0.2;
    v3->fAudioAccessoryActivityHandler = 0;
    v5 = v3->fAudioAccessoryActivityStatusDispatcher.__ptr_;
    v3->fAudioAccessoryActivityQueue = 0;
    v3->fAudioAccessoryActivityStatusDispatcher.__ptr_ = 0;
    if (v5)
    {
      (*(v5->var0 + 1))(v5);
    }

    v3->fAudioAccessoryActivityStatusHandler = 0;
    v3->fAudioAccessoryActivityStatusQueue = 0;
    v6 = v3->fAudioAccessorySitStandDispatcher.__ptr_;
    v3->fAudioAccessorySitStandDispatcher.__ptr_ = 0;
    if (v6)
    {
      (*(v6->var0 + 1))(v6);
    }

    *&v3->fAudioAccessorySitStandQueue = 0u;
    *&v3->fAudioAccessoryHeartRateUpdateInterval = 0u;
    *&v3->fAudioAccessorySitStandUpdateInterval = 0u;
    v3->fAudioAccessoryHeartRateQueue = 0;
    v3->fLatestAudioAccessoryHeartRateSample.timestamp = -1.0;
    *&v3->fAudioAccessoryInertialOdometryDispatcher = 0u;
    *&v3->fAudioAccessoryInertialOdometryHandler = 0u;
    v3->fAudioAccessoryPPGDispatcher = 0;
    v3->fAudioAccessoryPPGQueue = 0;
    v3->fAudioAccessoryPPGHandler = 0;
    v3->fLatestAudioAccessoryPPGSample.timestamp = -1.0;
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 34) = 0;
  *(self + 35) = 0x3F80000000000000;
  *(self + 39) = 0;
  *(self + 43) = 0;
  *(self + 46) = 0;
  return self;
}

@end