@interface ARBKSAccelerometer
+ (id)sharedAccelerometerHandle;
+ (id)sharedWeakAccelerometerHandle;
- (id)initPrivate;
- (int64_t)currentOrientation;
- (void)dealloc;
- (void)setPassive:(BOOL)passive;
@end

@implementation ARBKSAccelerometer

+ (id)sharedWeakAccelerometerHandle
{
  WeakRetained = objc_loadWeakRetained(sharedAccelerometer);

  return WeakRetained;
}

+ (id)sharedAccelerometerHandle
{
  if (sharedAccelerometerHandle_onceToken != -1)
  {
    +[ARBKSAccelerometer sharedAccelerometerHandle];
  }

  dispatch_semaphore_wait(sharedAccelerometerHandle_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  WeakRetained = objc_loadWeakRetained(sharedAccelerometer);
  if (!WeakRetained)
  {
    WeakRetained = [[ARBKSAccelerometer alloc] initPrivate];
    objc_storeWeak(sharedAccelerometer, WeakRetained);
  }

  dispatch_semaphore_signal(sharedAccelerometerHandle_semaphore);

  return WeakRetained;
}

void __47__ARBKSAccelerometer_sharedAccelerometerHandle__block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = sharedAccelerometerHandle_semaphore;
  sharedAccelerometerHandle_semaphore = v0;
}

- (id)initPrivate
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = ARBKSAccelerometer;
  v2 = [(ARBKSAccelerometer *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    accelerometer = v2->_accelerometer;
    v2->_accelerometer = v3;

    [(BKSAccelerometer *)v2->_accelerometer setDelegate:v2];
    [(BKSAccelerometer *)v2->_accelerometer setOrientationEventsEnabled:1];
    [(ARBKSAccelerometer *)v2 setPassive:0];
    v2->_lastValidDeviceOrientation = 3;
    v5 = _ARLogGeneral_38();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: init", buf, 0x16u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
  v3 = _ARLogGeneral_38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ARBKSAccelerometer;
  [(ARBKSAccelerometer *)&v6 dealloc];
}

- (int64_t)currentOrientation
{
  rawOrientation = [(ARBKSAccelerometer *)self rawOrientation];
  if ((rawOrientation - 1) > 3)
  {
    kdebug_trace();
    return self->_lastValidDeviceOrientation;
  }

  else
  {
    v4 = rawOrientation;
    self->_lastValidDeviceOrientation = rawOrientation;
    kdebug_trace();
  }

  return v4;
}

- (void)setPassive:(BOOL)passive
{
  passiveCopy = passive;
  self->_passive = passive;
  if (!passive)
  {
    [(ARBKSAccelerometer *)self _pollRawOrientation];
  }

  accelerometer = self->_accelerometer;

  [(BKSAccelerometer *)accelerometer setPassiveOrientationEvents:passiveCopy];
}

@end