@interface ARDeviceOrientationSensor
- (ARDeviceOrientationSensor)initWithMotionManager:(id)manager alignment:(int64_t)alignment;
- (ARSensorDelegate)delegate;
- (NSString)description;
- (void)changeReferenceFrame:(unint64_t)frame;
- (void)dealloc;
- (void)handleDeviceMotionUpdateWithMotion:(id)motion error:(id)error;
- (void)setInterval:(double)interval;
- (void)start;
- (void)stop;
@end

@implementation ARDeviceOrientationSensor

- (ARDeviceOrientationSensor)initWithMotionManager:(id)manager alignment:(int64_t)alignment
{
  v28 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (([managerCopy isDeviceMotionAvailable] & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_0 != -1)
    {
      [ARDeviceOrientationSensor initWithMotionManager:alignment:];
    }

    v13 = ARShouldUseLogTypeError_internalOSVersion_0;
    v14 = _ARLogSensor_0();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543618;
        v25 = v17;
        v26 = 2048;
        selfCopy2 = self;
        v18 = "%{public}@ <%p>: Unable to initialize ARDeviceOrientationSensor: Device motion from CMMotionManager not available.";
        v19 = v15;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v17 = NSStringFromClass(v21);
      *buf = 138543618;
      v25 = v17;
      v26 = 2048;
      selfCopy2 = self;
      v18 = "Error: %{public}@ <%p>: Unable to initialize ARDeviceOrientationSensor: Device motion from CMMotionManager not available.";
      v19 = v15;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    selfCopy3 = 0;
    goto LABEL_14;
  }

  v23.receiver = self;
  v23.super_class = ARDeviceOrientationSensor;
  v8 = [(ARDeviceOrientationSensor *)&v23 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    v8->_worldAlignment = alignment;
    objc_storeStrong(&v8->_motionManager, manager);
    v10 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v11 = p_isa[2];
    p_isa[2] = v10;

    [p_isa[2] setQualityOfService:33];
    [p_isa[2] setMaxConcurrentOperationCount:1];
  }

  self = p_isa;
  selfCopy3 = self;
LABEL_14:

  return selfCopy3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_0();
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
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc (%p).", buf, 0x20u);
  }

  [(ARDeviceOrientationSensor *)self stop];
  v7.receiver = self;
  v7.super_class = ARDeviceOrientationSensor;
  [(ARDeviceOrientationSensor *)&v7 dealloc];
}

- (void)start
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    motionManager = self->_motionManager;
    *buf = 138543874;
    v38 = v5;
    v39 = 2048;
    selfCopy6 = self;
    v41 = 2048;
    v42 = motionManager;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: start (%p)", buf, 0x20u);
  }

  [(ARDeviceOrientationSensor *)self preferredInterval];
  [(ARDeviceOrientationSensor *)self setInterval:?];
  if (self->_worldAlignment == 1)
  {
    v7 = 8;
  }

  else
  {
    v7 = 1;
  }

  v8 = _ARLogSensor_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromAttitudeReferenceFrame(v7);
    *buf = 138543874;
    v38 = v10;
    v39 = 2048;
    selfCopy6 = self;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: starting with reference frame: %@", buf, 0x20u);
  }

  if (([MEMORY[0x1E69634D0] availableAttitudeReferenceFrames] & v7) != 0)
  {
    objc_initWeak(buf, self);
    v13 = self->_motionManager;
    taskDeviceMotion = self->_taskDeviceMotion;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __34__ARDeviceOrientationSensor_start__block_invoke;
    v35[3] = &unk_1E817BC78;
    objc_copyWeak(&v36, buf);
    [(CMMotionManager *)v13 startDeviceMotionUpdatesUsingReferenceFrame:v7 toQueue:taskDeviceMotion withHandler:v35];
    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
    delegate = [(ARDeviceOrientationSensor *)self delegate];
    LOBYTE(taskDeviceMotion) = objc_opt_respondsToSelector();

    if ((taskDeviceMotion & 1) == 0)
    {
      return;
    }

    delegate2 = [(ARDeviceOrientationSensor *)self delegate];
    [delegate2 sensorDidStart:self];
    goto LABEL_27;
  }

  if (ARShouldUseLogTypeError_onceToken_0 != -1)
  {
    [ARDeviceOrientationSensor start];
  }

  v16 = ARShouldUseLogTypeError_internalOSVersion_0;
  v17 = _ARLogSensor_0();
  v18 = v17;
  if (v16 == 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromAttitudeReferenceFrame(v7);
      *buf = 138543874;
      v38 = v20;
      v39 = 2048;
      selfCopy6 = self;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Device motion is not available for reference frame: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromAttitudeReferenceFrame(v7);
    *buf = 138543874;
    v38 = v23;
    v39 = 2048;
    selfCopy6 = self;
    v41 = 2112;
    v42 = v24;
    _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Device motion is not available for reference frame: %@", buf, 0x20u);
  }

  if (ARShouldUseLogTypeError_onceToken_0 != -1)
  {
    [ARDeviceOrientationSensor start];
  }

  v25 = ARShouldUseLogTypeError_internalOSVersion_0;
  v26 = _ARLogSensor_0();
  v27 = v26;
  if (v25 == 1)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543618;
      v38 = v29;
      v39 = 2048;
      selfCopy6 = self;
      _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to start.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    *buf = 138543618;
    v38 = v31;
    v39 = 2048;
    selfCopy6 = self;
    _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to start.", buf, 0x16u);
  }

  delegate3 = [(ARDeviceOrientationSensor *)self delegate];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    delegate2 = [(ARDeviceOrientationSensor *)self delegate];
    v34 = ARErrorWithCodeAndUserInfo(101, 0);
    [delegate2 sensor:self didFailWithError:v34];

LABEL_27:
  }
}

void __34__ARDeviceOrientationSensor_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeviceMotionUpdateWithMotion:v6 error:v5];
}

- (void)changeReferenceFrame:(unint64_t)frame
{
  if ([(CMMotionManager *)self->_motionManager isDeviceMotionActive])
  {
    [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
    objc_initWeak(&location, self);
    motionManager = self->_motionManager;
    taskDeviceMotion = self->_taskDeviceMotion;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__ARDeviceOrientationSensor_changeReferenceFrame___block_invoke;
    v7[3] = &unk_1E817BC78;
    objc_copyWeak(&v8, &location);
    [(CMMotionManager *)motionManager startDeviceMotionUpdatesUsingReferenceFrame:frame toQueue:taskDeviceMotion withHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __50__ARDeviceOrientationSensor_changeReferenceFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeviceMotionUpdateWithMotion:v6 error:v5];
}

- (void)handleDeviceMotionUpdateWithMotion:(id)motion error:(id)error
{
  v44 = *MEMORY[0x1E69E9840];
  motionCopy = motion;
  errorCopy = error;
  kdebug_trace();
  if (errorCopy && [errorCopy code] != 101)
  {
    if (ARShouldUseLogTypeError_onceToken_0 != -1)
    {
      [ARDeviceOrientationSensor initWithMotionManager:alignment:];
    }

    v13 = ARShouldUseLogTypeError_internalOSVersion_0;
    v14 = _ARLogSensor_0();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [errorCopy description];
        *buf = 138543874;
        v39 = v17;
        v40 = 2048;
        selfCopy5 = self;
        v42 = 2112;
        v43 = v18;
        v19 = "%{public}@ <%p>: error received from motion manager: %@";
        v20 = v15;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      v17 = NSStringFromClass(v30);
      v18 = [errorCopy description];
      *buf = 138543874;
      v39 = v17;
      v40 = 2048;
      selfCopy5 = self;
      v42 = 2112;
      v43 = v18;
      v19 = "Error: %{public}@ <%p>: error received from motion manager: %@";
      v20 = v15;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

    delegate = [(ARDeviceOrientationSensor *)self delegate];
    v36 = *MEMORY[0x1E696AA08];
    v37 = errorCopy;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v31 = ARErrorWithCodeAndUserInfo(102, v24);
    [delegate sensor:self didFailWithError:v31];

    goto LABEL_24;
  }

  if (!motionCopy)
  {
    delegate = _ARLogSensor_0();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      motionManager = self->_motionManager;
      *buf = 138543874;
      v39 = v24;
      v40 = 2048;
      selfCopy5 = self;
      v42 = 2048;
      v43 = motionManager;
      v26 = "%{public}@ <%p>: Failed to get device motion from motion manager (%p)";
      v27 = delegate;
      v28 = 32;
LABEL_19:
      _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
LABEL_24:
    }

LABEL_25:

    goto LABEL_30;
  }

  [motionCopy timestamp];
  if (v8 <= self->_previousCaptureEndingTimestamp)
  {
    delegate = _ARLogSensor_0();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_opt_class();
      v24 = NSStringFromClass(v29);
      *buf = 138543618;
      v39 = v24;
      v40 = 2048;
      selfCopy5 = self;
      v26 = "%{public}@ <%p>: Rejected stale device motion data";
      v27 = delegate;
      v28 = 22;
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (self->_worldAlignment == 1)
  {
    [motionCopy magneticField];
    if (v35 != 2)
    {
      v9 = _ARLogSensor_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        [motionCopy magneticField];
        if ((v34 + 1) > 3)
        {
          v12 = &stru_1F4208A80;
        }

        else
        {
          v12 = off_1E817BC98[v34 + 1];
        }

        *buf = 138543874;
        v39 = v11;
        v40 = 2048;
        selfCopy5 = self;
        v42 = 2112;
        v43 = v12;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Warning: Magnetic calibration accuracy is %@", buf, 0x20u);
      }
    }
  }

  delegate2 = [(ARDeviceOrientationSensor *)self delegate];
  v33 = [[ARDeviceOrientationData alloc] initWithMotionData:motionCopy];
  [delegate2 sensor:self didOutputSensorData:v33];

  [motionCopy timestamp];
  kdebug_trace();
LABEL_30:
}

- (void)setInterval:(double)interval
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(CMMotionManager *)self->_motionManager isDeviceMotionAvailable])
  {
    interval = 0.0;
  }

  if (self->_interval != interval)
  {
    [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:fmax(interval, 0.0)];
    v5 = _ARLogSensor_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138543874;
      v9 = v7;
      v10 = 2048;
      selfCopy = self;
      v12 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CMDeviceMotion update interval set at %f", &v8, 0x20u);
    }

    self->_interval = interval;
  }
}

- (void)stop
{
  v16 = *MEMORY[0x1E69E9840];
  deviceMotion = [(CMMotionManager *)self->_motionManager deviceMotion];
  v4 = deviceMotion;
  if (deviceMotion)
  {
    [deviceMotion timestamp];
    self->_previousCaptureEndingTimestamp = v5;
  }

  [(ARDeviceOrientationSensor *)self setInterval:0.0];
  v6 = _ARLogSensor_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    motionManager = self->_motionManager;
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    selfCopy = self;
    v14 = 2048;
    v15 = motionManager;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: stop (%p).", &v10, 0x20u);
  }

  [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@" MotionManager=%@", self->_motionManager];
  [v6 appendString:@">"];

  return v6;
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end