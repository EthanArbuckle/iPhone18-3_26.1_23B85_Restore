@interface ARMotionSensor
- (ARMotionSensor)initWithMotionManager:(id)manager;
- (ARSensorDelegate)delegate;
- (NSString)description;
- (unint64_t)providedDataTypes;
- (void)accelerometerOutput:(id *)output;
- (void)dealloc;
- (void)gyroscopeOutput:(id *)output;
- (void)magnetometerOutput:(id *)output;
- (void)setInterval:(double)interval;
- (void)start;
- (void)stop;
@end

@implementation ARMotionSensor

- (ARMotionSensor)initWithMotionManager:(id)manager
{
  v30 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (![managerCopy isGyroAvailable] || (objc_msgSend(managerCopy, "isAccelerometerAvailable") & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARMotionSensor initWithMotionManager:];
    }

    v15 = ARShouldUseLogTypeError_internalOSVersion_2;
    v16 = _ARLogSensor_3();
    v17 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138543618;
        v27 = v19;
        v28 = 2048;
        selfCopy2 = self;
        v20 = "%{public}@ <%p>: Unable to initialize ARMotionSensor: accelerometer and/or gyroscope from CMMotionManager not available.";
        v21 = v17;
        v22 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v21, v22, v20, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v19 = NSStringFromClass(v23);
      *buf = 138543618;
      v27 = v19;
      v28 = 2048;
      selfCopy2 = self;
      v20 = "Error: %{public}@ <%p>: Unable to initialize ARMotionSensor: accelerometer and/or gyroscope from CMMotionManager not available.";
      v21 = v17;
      v22 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    selfCopy3 = 0;
    goto LABEL_16;
  }

  v25.receiver = self;
  v25.super_class = ARMotionSensor;
  v6 = [(ARMotionSensor *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_motionManager, manager);
    v7->_requestMagnetometerData = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.motionSensor.magnetometerEnabled"];
    v8 = objc_opt_new();
    currentGyroData = v7->_currentGyroData;
    v7->_currentGyroData = v8;

    v10 = objc_opt_new();
    currentAccelerometerData = v7->_currentAccelerometerData;
    v7->_currentAccelerometerData = v10;

    if (v7->_requestMagnetometerData)
    {
      v12 = objc_opt_new();
      currentMagnetometerData = v7->_currentMagnetometerData;
      v7->_currentMagnetometerData = v12;
    }
  }

  self = v7;
  selfCopy3 = self;
LABEL_16:

  return selfCopy3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  [(ARMotionSensor *)self stop];
  v3 = _ARLogSensor_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    motionManager = self->_motionManager;
    *buf = 138543874;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    v12 = 2048;
    v13 = motionManager;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARMotionSensor dealloc (%p).", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = ARMotionSensor;
  [(ARMotionSensor *)&v7 dealloc];
}

- (unint64_t)providedDataTypes
{
  if (self->_requestMagnetometerData)
  {
    return 1030;
  }

  else
  {
    return 6;
  }
}

- (void)start
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    motionManager = self->_motionManager;
    v23 = 138543874;
    v24 = v5;
    v25 = 2048;
    selfCopy3 = self;
    v27 = 2048;
    v28 = motionManager;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARMotionSensor start (%p).", &v23, 0x20u);
  }

  [(ARMotionSensor *)self preferredInterval];
  [(ARMotionSensor *)self setInterval:?];
  [(ARMotionSensor *)self interval];
  if (v7 > 0.0)
  {
    delegate = [(ARMotionSensor *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    delegate2 = [(ARMotionSensor *)self delegate];
    [delegate2 sensorDidStart:self];
    goto LABEL_16;
  }

  if (ARShouldUseLogTypeError_onceToken_2 != -1)
  {
    [ARMotionSensor start];
  }

  v11 = ARShouldUseLogTypeError_internalOSVersion_2;
  v12 = _ARLogSensor_3();
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v23 = 138543618;
      v24 = v15;
      v25 = 2048;
      selfCopy3 = self;
      v16 = "%{public}@ <%p>: Accelerometer and/or Gyroscope sensor(s) not available";
      v17 = v13;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_13:
      _os_log_impl(&dword_1C241C000, v17, v18, v16, &v23, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v15 = NSStringFromClass(v19);
    v23 = 138543618;
    v24 = v15;
    v25 = 2048;
    selfCopy3 = self;
    v16 = "Error: %{public}@ <%p>: Accelerometer and/or Gyroscope sensor(s) not available";
    v17 = v13;
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_13;
  }

  delegate3 = [(ARMotionSensor *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if ((v21 & 1) == 0)
  {
    return;
  }

  delegate2 = [(ARMotionSensor *)self delegate];
  v22 = ARErrorWithCodeAndUserInfo(101, 0);
  [delegate2 sensor:self didFailWithError:v22];

LABEL_16:
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    motionManager = self->_motionManager;
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    v11 = 2048;
    v12 = motionManager;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARMotionSensor stop (%p).", &v7, 0x20u);
  }

  [(ARMotionSensor *)self setInterval:0.0];
}

- (void)setInterval:(double)interval
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_interval == interval)
  {
    return;
  }

  motionManager = self->_motionManager;
  if (interval <= 0.0)
  {
    [(CMMotionManager *)motionManager setGyroDataCallback:0 info:0 interval:0.0];
    [(CMMotionManager *)self->_motionManager setAccelerometerDataCallback:0 info:0 interval:0.0];
    if ([(CMMotionManager *)self->_motionManager isMagnetometerAvailable]&& self->_requestMagnetometerData)
    {
      v6 = self->_motionManager;
      intervalCopy = 0.0;
      v7 = 0;
      selfCopy = 0;
      goto LABEL_9;
    }
  }

  else
  {
    [(CMMotionManager *)motionManager setGyroDataCallback:rawGyroscopeCallback info:self interval:interval];
    [(CMMotionManager *)self->_motionManager setAccelerometerDataCallback:rawAccelerometerCallback info:self interval:interval];
    if ([(CMMotionManager *)self->_motionManager isMagnetometerAvailable]&& self->_requestMagnetometerData)
    {
      v6 = self->_motionManager;
      v7 = rawMagnetometerCallback;
      selfCopy = self;
      intervalCopy = interval;
LABEL_9:
      [(CMMotionManager *)v6 setMagnetometerDataCallback:v7 info:selfCopy interval:intervalCopy];
    }
  }

  v10 = _ARLogSensor_3();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138543874;
    v14 = v12;
    v15 = 2048;
    selfCopy2 = self;
    v17 = 2048;
    intervalCopy2 = interval;
    _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Accelerometer and Gyroscope update interval set at %f", &v13, 0x20u);
  }

  self->_interval = interval;
}

- (void)gyroscopeOutput:(id *)output
{
  kdebug_trace();
  [(ARGyroscopeData *)self->_currentGyroData setTimestamp:output->var1];
  [(ARGyroscopeData *)self->_currentGyroData setRotationRate:output->var0.var0, output->var0.var1, output->var0.var2];
  delegate = [(ARMotionSensor *)self delegate];
  [delegate sensor:self didOutputSensorData:self->_currentGyroData];

  kdebug_trace();
}

- (void)accelerometerOutput:(id *)output
{
  kdebug_trace();
  [(ARAccelerometerData *)self->_currentAccelerometerData setTimestamp:output->var1];
  [(ARAccelerometerData *)self->_currentAccelerometerData setAcceleration:output->var0.var0, output->var0.var1, output->var0.var2];
  delegate = [(ARMotionSensor *)self delegate];
  [delegate sensor:self didOutputSensorData:self->_currentAccelerometerData];

  kdebug_trace();
}

- (void)magnetometerOutput:(id *)output
{
  kdebug_trace();
  [(ARMagnetometerData *)self->_currentMagnetometerData setTimestamp:output->var1];
  [(ARMagnetometerData *)self->_currentMagnetometerData setMagneticField:output->var0.var0, output->var0.var1, output->var0.var2];
  delegate = [(ARMotionSensor *)self delegate];
  [delegate sensor:self didOutputSensorData:self->_currentMagnetometerData];

  kdebug_trace();
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@" MotionManager=%@", self->_motionManager];
  [v6 appendFormat:@" Gyroscope=%@", self->_currentGyroData];
  [v6 appendFormat:@" Accelerometer=%@", self->_currentAccelerometerData];
  if (self->_requestMagnetometerData)
  {
    [v6 appendFormat:@" Magnetometer=%@", self->_currentMagnetometerData];
  }

  [v6 appendString:@">"];

  return v6;
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end