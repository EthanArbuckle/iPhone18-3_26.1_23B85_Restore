@interface ARIOMotionSensor
- (ARIOMotionSensor)init;
- (ARSensorDelegate)delegate;
- (void)accelerometerDidOutputEvent:(__IOHIDEvent *)a3 timestamp:(double)a4;
- (void)dealloc;
- (void)gyroscopeDidOutputEvent:(__IOHIDEvent *)a3 timestamp:(double)a4;
- (void)start;
- (void)stop;
- (void)waitForOutstandingCallbacks;
@end

@implementation ARIOMotionSensor

- (ARIOMotionSensor)init
{
  v18.receiver = self;
  v18.super_class = ARIOMotionSensor;
  v2 = [(ARIOMotionSensor *)&v18 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  location = v2->_location;
  v2->_location = &stru_1F4208A80;

  v5 = objc_opt_new();
  currentGyroData = v3->_currentGyroData;
  v3->_currentGyroData = v5;

  v7 = objc_opt_new();
  currentAccelerometerData = v3->_currentAccelerometerData;
  v3->_currentAccelerometerData = v7;

  v9 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.motion");
  imuDataQueue = v3->_imuDataQueue;
  v3->_imuDataQueue = v9;

  v11 = IOHIDEventSystemClientCreateWithType();
  v3->_accelerometerSystemClient = v11;
  if (v11)
  {
    v3->_accelerometerService = copyHIDServicePlugin(v11, 65280, 3, [(NSString *)v3->_location UTF8String]);
  }

  v12 = IOHIDEventSystemClientCreateWithType();
  v3->_gyroSystemClient = v12;
  if (v12)
  {
    v3->_gyroService = copyHIDServicePlugin(v12, 65280, 9, [(NSString *)v3->_location UTF8String]);
  }

  if (!v3->_accelerometerSystemClient || !v3->_gyroSystemClient)
  {
LABEL_12:
    accelerometerService = 0;
    goto LABEL_13;
  }

  IOHIDEventSystemClientScheduleWithDispatchQueue();
  IOHIDEventSystemClientRegisterEventCallback();
  IOHIDEventSystemClientScheduleWithDispatchQueue();
  IOHIDEventSystemClientRegisterEventCallback();
  accelerometerService = v3->_accelerometerService;
  if (accelerometerService)
  {
    if (v3->_gyroService)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:0];
      IOHIDServiceClientSetProperty(accelerometerService, @"ReportInterval", v14);

      gyroService = v3->_gyroService;
      v16 = [MEMORY[0x1E696AD98] numberWithInt:0];
      IOHIDServiceClientSetProperty(gyroService, @"ReportInterval", v16);

LABEL_11:
      accelerometerService = v3;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:

  return accelerometerService;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  if (_ARLogSensor_onceToken_2 != -1)
  {
    [ARIOMotionSensor dealloc];
  }

  v3 = _ARLogSensor_logObj_2;
  if (os_log_type_enabled(_ARLogSensor_logObj_2, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v13 = v6;
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARIOMotionSensor dealloc", buf, 0x16u);
  }

  [(ARIOMotionSensor *)self stop];
  if (self->_accelerometerSystemClient)
  {
    IOHIDEventSystemClientUnregisterEventCallback();
    MEMORY[0x1C691A050](self->_accelerometerSystemClient, self->_imuDataQueue);
  }

  accelerometerService = self->_accelerometerService;
  if (accelerometerService)
  {
    CFRelease(accelerometerService);
  }

  accelerometerSystemClient = self->_accelerometerSystemClient;
  if (accelerometerSystemClient)
  {
    CFRelease(accelerometerSystemClient);
  }

  if (self->_gyroSystemClient)
  {
    IOHIDEventSystemClientUnregisterEventCallback();
    MEMORY[0x1C691A050](self->_gyroSystemClient, self->_imuDataQueue);
  }

  gyroService = self->_gyroService;
  if (gyroService)
  {
    CFRelease(gyroService);
  }

  gyroSystemClient = self->_gyroSystemClient;
  if (gyroSystemClient)
  {
    CFRelease(gyroSystemClient);
  }

  v11.receiver = self;
  v11.super_class = ARIOMotionSensor;
  [(ARIOMotionSensor *)&v11 dealloc];
}

- (void)start
{
  v3 = [(ARIOMotionSensor *)self preferredSampleRate];
  accelerometerService = self->_accelerometerService;
  if (accelerometerService && self->_gyroService)
  {
    v5 = (1000000.0 / v3);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    IOHIDServiceClientSetProperty(accelerometerService, @"ReportInterval", v6);

    gyroService = self->_gyroService;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    IOHIDServiceClientSetProperty(gyroService, @"ReportInterval", v8);

    v9 = self->_accelerometerService;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:1];
    IOHIDServiceClientSetProperty(v9, @"BatchInterval", v10);

    v11 = self->_gyroService;
    v12 = [MEMORY[0x1E696AD98] numberWithInt:1];
    IOHIDServiceClientSetProperty(v11, @"BatchInterval", v12);
  }
}

- (void)stop
{
  accelerometerService = self->_accelerometerService;
  if (accelerometerService && self->_gyroService)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
    IOHIDServiceClientSetProperty(accelerometerService, @"ReportInterval", v4);

    gyroService = self->_gyroService;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
    IOHIDServiceClientSetProperty(gyroService, @"ReportInterval", v6);

    v7 = self->_accelerometerService;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:0];
    IOHIDServiceClientSetProperty(v7, @"BatchInterval", v8);

    v9 = self->_gyroService;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:0];
    IOHIDServiceClientSetProperty(v9, @"BatchInterval", v10);
  }
}

- (void)waitForOutstandingCallbacks
{
  dispatch_assert_queue_not_V2(self->_imuDataQueue);
  imuDataQueue = self->_imuDataQueue;

  dispatch_sync(imuDataQueue, &__block_literal_global_3);
}

- (void)accelerometerDidOutputEvent:(__IOHIDEvent *)a3 timestamp:(double)a4
{
  if (!IOHIDEventGetIntegerValue())
  {
    kdebug_trace();
    [(ARAccelerometerData *)self->_currentAccelerometerData setTimestamp:a4];
    IOHIDEventGetFloatValue();
    v7 = v6;
    IOHIDEventGetFloatValue();
    v9 = v8;
    IOHIDEventGetFloatValue();
    [(ARAccelerometerData *)self->_currentAccelerometerData setAcceleration:v7, v9, v10];
    v11 = IOHIDServiceClientCopyProperty(self->_accelerometerService, @"AppleVoltageDictionary");
    if (v11)
    {
      v12 = v11;
      Value = CFDictionaryGetValue(v11, @"ACCEL_TEMP");
      if (Value)
      {
        valuePtr = 0;
        CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
        if (valuePtr != 21474836)
        {
          [(ARAccelerometerData *)self->_currentAccelerometerData setTemperature:(valuePtr / 100.0)];
        }
      }

      CFRelease(v12);
    }

    v14 = [(ARIOMotionSensor *)self delegate];
    [v14 sensor:self didOutputSensorData:self->_currentAccelerometerData];

    kdebug_trace();
  }
}

- (void)gyroscopeDidOutputEvent:(__IOHIDEvent *)a3 timestamp:(double)a4
{
  if (!IOHIDEventGetIntegerValue())
  {
    kdebug_trace();
    [(ARGyroscopeData *)self->_currentGyroData setTimestamp:a4];
    IOHIDEventGetFloatValue();
    v7 = v6;
    IOHIDEventGetFloatValue();
    v9 = v8;
    IOHIDEventGetFloatValue();
    [(ARGyroscopeData *)self->_currentGyroData setRotationRate:v7, v9, v10];
    v11 = [(ARIOMotionSensor *)self delegate];
    [v11 sensor:self didOutputSensorData:self->_currentGyroData];

    kdebug_trace();
  }
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end