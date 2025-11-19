@interface CMDeviceOrientationManagerInternal
- (CMDeviceOrientationManagerInternal)init;
- (void)dealloc;
@end

@implementation CMDeviceOrientationManagerInternal

- (CMDeviceOrientationManagerInternal)init
{
  v3.receiver = self;
  v3.super_class = CMDeviceOrientationManagerInternal;
  result = [(CMDeviceOrientationManagerInternal *)&v3 init];
  if (result)
  {
    result->fSampleLock._os_unfair_lock_opaque = 0;
    *&result->fDeviceOrientationDispatcher = 0u;
    *&result->fDeviceOrientationQueue = 0u;
    result->fDidSignalSemaphore = 1;
    result->fOrientationCallbackMode = -1;
    result->fEnableOrientationNotification = 0;
    result->fLatestDeviceOrientationSample.timestamp = -1.0;
    result->fLatestDeviceOrientationSample.acceleration.x = 0.0;
    *&result->fLatestDeviceOrientationSample.acceleration.z = *&result->fLatestDeviceOrientationSample.timestamp;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMDeviceOrientationManagerInternal;
  [(CMDeviceOrientationManagerInternal *)&v2 dealloc];
}

@end