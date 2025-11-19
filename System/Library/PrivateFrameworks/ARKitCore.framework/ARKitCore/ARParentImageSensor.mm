@interface ARParentImageSensor
- (ARParentImageSensor)initWithSettings:(id)a3;
- (ARSensorDelegate)delegate;
- (BOOL)_addSensorForSettings:(id)a3;
- (BOOL)_startWithError:(id *)a3;
- (BOOL)_validateCameraAuthorization;
- (BOOL)_validateMicrophoneAuthorizationWithError:(id *)a3;
- (BOOL)canReconfigure:(id)a3;
- (NSString)description;
- (id)captureDeviceTypeToExtrinsicsMapForImageSensor:(id)a3;
- (unint64_t)providedDataTypes;
- (void)_addSensors;
- (void)_captureSessionStateChanged:(id)a3;
- (void)_configureAudioCapture;
- (void)captureHighResolutionFrameWithPhotoSettings:(id)a3;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureSessionStateChanged:(id)a3;
- (void)dealloc;
- (void)reconfigure:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setInterrupted:(BOOL)a3;
- (void)setPowerUsage:(unint64_t)a3;
- (void)setRecordingMode:(BOOL)a3;
- (void)start;
- (void)stop;
- (void)teardown;
- (void)waitForOutstandingCallbacks;
@end

@implementation ARParentImageSensor

- (ARParentImageSensor)initWithSettings:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ARParentImageSensor;
  v5 = [(ARParentImageSensor *)&v23 init];
  if (v5)
  {
    if (!ARDeviceSupportsMulticamMode() || (ARUserDefaultsMulticamModeEnabled() & 1) == 0)
    {
      ARDeviceSupportsJasper();
    }

    v6 = objc_opt_new();
    v7 = *(v5 + 10);
    *(v5 + 10) = v6;

    v8 = objc_opt_new();
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    v10 = objc_opt_new();
    v11 = *(v5 + 7);
    *(v5 + 7) = v10;

    v12 = [v4 copy];
    v13 = *(v5 + 6);
    *(v5 + 6) = v12;

    *(v5 + 40) = 0;
    *(v5 + 43) = 0;
    if ([v4 allowCameraInMultipleForegroundAppLayout])
    {
      v14 = _ARLogSensor_4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138543618;
        v25 = v16;
        v26 = 2048;
        v27 = v5;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting authorization to use camera in multiple foreground apps.", buf, 0x16u);
      }

      AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
    }

    v17 = ARCreateFixedPriorityDispatchQueueWithPropagatedQOS("com.apple.arkit.capture", QOS_CLASS_USER_INTERACTIVE, 0);
    v18 = *(v5 + 2);
    *(v5 + 2) = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create_with_target_V2("com.apple.arkit.ARParentImageSensor.captureSessionNotificationsQueue", v19, *(v5 + 2));
    v21 = *(v5 + 4);
    *(v5 + 4) = v20;

    *(v5 + 6) = 0;
    [v5 _addSensors];
  }

  return v5;
}

- (void)_addSensors
{
  v3 = [(ARParentImageSensorSettings *)self->_settings settings];
  v6 = [v3 mutableCopy];

  if ([v6 count])
  {
    v4 = 0;
    do
    {
      v5 = [v6 objectAtIndexedSubscript:v4];
      if ([(ARParentImageSensor *)self _addSensorForSettings:v5])
      {
        ++v4;
      }

      else
      {
        [v6 removeObjectAtIndex:v4];
      }
    }

    while (v4 < [v6 count]);
  }

  [(ARParentImageSensorSettings *)self->_settings setSettings:v6];
}

- (BOOL)_addSensorForSettings:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 videoFormat];
  if ([v5 captureDevicePosition] == 2)
  {
    goto LABEL_4;
  }

  v6 = [v4 metaData];
  if ([v6 isEqualToString:*MEMORY[0x1E6986FE8]])
  {

LABEL_4:
    goto LABEL_5;
  }

  v9 = [v4 metaData];
  v10 = [v9 isEqualToString:*MEMORY[0x1E6987018]];

  if ((v10 & 1) == 0)
  {
    v11 = [v4 videoFormat];
    v12 = [v11 captureDevicePosition];

    if (v12 == 1)
    {
      v13 = [v4 videoFormat];
      v14 = [v13 captureDeviceType];
      v15 = [v14 isEqualToString:*MEMORY[0x1E6986930]];

      if (v15)
      {
        v16 = ARDepthSensor;
      }

      else
      {
        v16 = ARImageSensor;
      }

      v7 = [[v16 alloc] initWithSettings:v4 captureSession:self->_captureSession captureQueue:self->_captureQueue];
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARParentImageSensor _addSensorForSettings:];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_3;
    v18 = _ARLogGeneral_0();
    v7 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v26 = 138543874;
        v27 = v20;
        v28 = 2048;
        v29 = self;
        v30 = 2114;
        v31 = v4;
        v21 = "%{public}@ <%p>: Failed to create image sensor for settings: %{public}@";
        p_super = &v7->super.super;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_23:
        _os_log_impl(&dword_1C241C000, p_super, v23, v21, &v26, 0x20u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v20 = NSStringFromClass(v25);
      v26 = 138543874;
      v27 = v20;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = v4;
      v21 = "Error: %{public}@ <%p>: Failed to create image sensor for settings: %{public}@";
      p_super = &v7->super.super;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_23;
    }

    v8 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v7 = [[ARFaceTrackingImageSensor alloc] initWithSettings:v4 captureSession:self->_captureSession captureQueue:self->_captureQueue];
  [(ARFaceTrackingImageSensor *)v7 setRecordingMode:self->_recordingMode];
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_6:
  [(ARImageSensor *)v7 setBufferPopulationMonitor:self->_bufferPopulationMonitor];
  [(ARImageSensor *)v7 setDataSource:self];
  [(NSMutableArray *)self->_sensors addObject:v7];
  v8 = 1;
LABEL_7:

LABEL_20:
  return v8;
}

- (void)setDelegate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sensors;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setDelegate:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setPowerUsage:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  self->_powerUsage = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_sensors;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setPowerUsage:{a3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)canReconfigure:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  if ([(ARParentImageSensor *)self unrecoverable])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ARParentImageSensorSettings *)self->_settings copy];
    [v6 setAudioCaptureEnabled:{objc_msgSend(v4, "audioCaptureEnabled")}];
    v7 = [v4 settings];
    v8 = [v7 count];
    v9 = [v6 settings];
    v10 = [v9 count];

    if (v8 == v10 && ([v4 settings], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setSettings:", v11), v11, objc_msgSend(v6, "isEqual:", v4)))
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 1;
      v12 = [v4 settings];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __38__ARParentImageSensor_canReconfigure___block_invoke;
      v14[3] = &unk_1E817BEF0;
      v14[4] = self;
      v14[5] = &v15;
      [v12 enumerateObjectsUsingBlock:v14];

      v5 = *(v16 + 24);
      _Block_object_dispose(&v15, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v5 & 1;
}

void __38__ARParentImageSensor_canReconfigure___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 56);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  LOBYTE(v7) = [v9 canReconfigure:v8];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)reconfigure:(id)a3
{
  v4 = a3;
  if ([(ARParentImageSensor *)self canReconfigure:v4])
  {
    os_unfair_lock_lock(&self->_stateLock);
    v5 = [v4 settings];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35__ARParentImageSensor_reconfigure___block_invoke;
    v13[3] = &unk_1E817BF18;
    v13[4] = self;
    [v5 enumerateObjectsUsingBlock:v13];

    LODWORD(v5) = [v4 audioCaptureEnabled];
    if (v5 == [(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled])
    {
      v8 = [v4 copy];
      settings = self->_settings;
      self->_settings = v8;
    }

    else
    {
      if ([v4 audioCaptureEnabled])
      {
        v12 = 0;
        if (![(ARParentImageSensor *)self _validateMicrophoneAuthorizationWithError:&v12])
        {
          v10 = v12;
          os_unfair_lock_unlock(&self->_stateLock);
          v11 = [(ARParentImageSensor *)self delegate];
          [v11 sensor:self didFailWithError:v10];

          goto LABEL_8;
        }
      }

      v6 = [v4 copy];
      v7 = self->_settings;
      self->_settings = v6;

      [(AVCaptureSession *)self->_captureSession beginConfiguration];
      [(ARParentImageSensor *)self _configureAudioCapture];
      [(AVCaptureSession *)self->_captureSession commitConfiguration];
    }

    os_unfair_lock_unlock(&self->_stateLock);
  }

LABEL_8:
}

void __35__ARParentImageSensor_reconfigure___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 56);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v6 reconfigure:v5];
}

- (void)setRecordingMode:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  self->_recordingMode = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(ARParentImageSensor *)self sensors];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setRecordingMode:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (unint64_t)providedDataTypes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_sensors;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) providedDataTypes];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setInterrupted:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_interrupted != a3)
  {
    self->_interrupted = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_sensors;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setInterrupted:{self->_interrupted, v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)start
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(ARParentImageSensor *)self _validateCameraAuthorization])
  {
    os_unfair_lock_lock(&self->_stateLock);
    if ([(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled]&& (v16 = 0, ![(ARParentImageSensor *)self _validateMicrophoneAuthorizationWithError:&v16]))
    {
      v5 = v16;
      os_unfair_lock_unlock(&self->_stateLock);
      v3 = [(ARParentImageSensor *)self delegate];
      [v3 sensor:self didFailWithError:v5];
    }

    else
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      [v3 addObserver:self selector:sel_captureSessionStateChanged_ name:*MEMORY[0x1E6986B28] object:self->_captureSession];
      [v3 addObserver:self selector:sel_captureSessionStateChanged_ name:*MEMORY[0x1E6986AA8] object:self->_captureSession];
      [v3 addObserver:self selector:sel_captureSessionStateChanged_ name:*MEMORY[0x1E6986B20] object:self->_captureSession];
      v15 = 0;
      v4 = [(ARParentImageSensor *)self _startWithError:&v15];
      v5 = v15;
      os_unfair_lock_unlock(&self->_stateLock);
      v6 = [(ARParentImageSensor *)self delegate];
      v7 = v6;
      if (v4)
      {
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          v9 = [(ARParentImageSensor *)self delegate];
          [v9 sensorDidStart:self];
        }

        if ([(ARParentImageSensor *)self interrupted])
        {
          v10 = [(ARParentImageSensor *)self delegate];
          v11 = objc_opt_respondsToSelector();

          if (v11)
          {
            v12 = [(ARParentImageSensor *)self delegate];
            [v12 sensorDidPause:self];
          }
        }

        v7 = _ARLogSensor_4();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138543618;
          v18 = v14;
          v19 = 2048;
          v20 = self;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: started", buf, 0x16u);
        }
      }

      else
      {
        [v6 sensor:self didFailWithError:v5];
      }
    }
  }
}

- (BOOL)_startWithError:(id *)a3
{
  v46 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  [(AVCaptureSession *)self->_captureSession setSessionPreset:*MEMORY[0x1E6986AF0]];
  [(AVCaptureSession *)self->_captureSession beginConfiguration];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_sensors;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v37 + 1) + 8 * i) prepareToStart];
        if (v10)
        {
          v31 = v10;
          [(AVCaptureSession *)self->_captureSession commitConfiguration];
          if (a3)
          {
            v32 = v31;
            *a3 = v31;
          }

          return 0;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [(ARParentImageSensorSettings *)self->_settings settings];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [(NSMutableArray *)self->_sensors objectAtIndexedSubscript:v13, v37];
      v15 = [(ARParentImageSensorSettings *)self->_settings settings];
      v16 = [v15 objectAtIndexedSubscript:v13];
      [v14 enableSensor:{objc_msgSend(v16, "isEnabled")}];

      ++v13;
      v17 = [(ARParentImageSensorSettings *)self->_settings settings];
      v18 = [v17 count];
    }

    while (v18 > v13);
  }

  [(ARParentImageSensor *)self _configureAudioCapture];
  v19 = [(ARParentImageSensor *)self beforeRunningAVCaptureSession];

  if (v19)
  {
    v20 = [(ARParentImageSensor *)self beforeRunningAVCaptureSession];
    (v20)[2](v20, self->_captureSession);
  }

  [(AVCaptureSession *)self->_captureSession commitConfiguration];
  v21 = _ARLogSensor_4();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    *buf = 138543618;
    v42 = v23;
    v43 = 2048;
    v44 = self;
    _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: startRunning capture session", buf, 0x16u);
  }

  [(AVCaptureSession *)self->_captureSession startRunning];
  if (![(AVCaptureSession *)self->_captureSession isRunning])
  {
    v24 = _ARLogSensor_4();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543618;
      v42 = v26;
      v43 = 2048;
      v44 = self;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: was started but the AVCaptureSession hasn't started running yet", buf, 0x16u);
    }
  }

  [(ARParentImageSensor *)self setRunning:1];
  if ([(AVCaptureSession *)self->_captureSession isInterrupted])
  {
    v27 = _ARLogSensor_4();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543618;
      v42 = v29;
      v43 = 2048;
      v44 = self;
      _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: starting interrupted", buf, 0x16u);
    }

    v30 = 1;
    [(ARParentImageSensor *)self setInterrupted:1];
  }

  else
  {
    if ([(ARParentImageSensor *)self interrupted])
    {
      v33 = _ARLogSensor_4();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138543618;
        v42 = v35;
        v43 = 2048;
        v44 = self;
        _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Starting sensor and forcing interrupted to NO", buf, 0x16u);
      }

      [(ARParentImageSensor *)self setInterrupted:0];
    }

    return 1;
  }

  return v30;
}

- (void)stop
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if ([(ARParentImageSensor *)self running])
  {
    v3 = _ARLogSensor_4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      *buf = 138543618;
      v20 = v5;
      v21 = 2048;
      v22 = self;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ARImageSensor stopping", buf, 0x16u);
    }

    [(ARParentImageSensor *)self setRunning:0];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x1E6986B28] object:self->_captureSession];
    [v6 removeObserver:self name:*MEMORY[0x1E6986AA8] object:self->_captureSession];
    [v6 removeObserver:self name:*MEMORY[0x1E6986B20] object:self->_captureSession];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_sensors;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11++) stop];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(AVCaptureSession *)self->_captureSession stopRunning];
    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v6 = _ARLogSensor_4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v20 = v13;
      v21 = 2048;
      v22 = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Skipping the request to stop the sensor as it is not running.", buf, 0x16u);
    }
  }
}

- (void)waitForOutstandingCallbacks
{
  dispatch_assert_queue_not_V2(self->_captureQueue);
  captureQueue = self->_captureQueue;

  dispatch_sync(captureQueue, &__block_literal_global_6);
}

- (void)teardown
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  [(AVCaptureSession *)self->_captureSession beginConfiguration];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = self->_sensors;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) teardown];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [(AVCaptureSession *)self->_captureSession commitConfiguration];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)captureHighResolutionFrameWithPhotoSettings:(id)a3
{
  v4 = a3;
  sensors = self->_sensors;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ARParentImageSensor_captureHighResolutionFrameWithPhotoSettings___block_invoke;
  v7[3] = &unk_1E817BF40;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)sensors enumerateObjectsUsingBlock:v7];
}

void __67__ARParentImageSensor_captureHighResolutionFrameWithPhotoSettings___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 settings];
  v7 = [v6 supportsCapturingHighResolutionFrames];

  if (v7)
  {
    [v8 captureHighResolutionFrameWithPhotoSettings:*(a1 + 32)];
    *a4 = 1;
  }
}

- (void)_configureAudioCapture
{
  v97[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  if ([(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled]|| self->_audioOutput)
  {
    v3 = [(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled];
    audioOutput = self->_audioOutput;
    if (v3)
    {
      if (audioOutput)
      {
        return;
      }
    }

    else if (audioOutput)
    {
      v5 = _ARLogSensor_4();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138543618;
        v92 = v7;
        v93 = 2048;
        v94 = self;
        _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Removing audio output", buf, 0x16u);
      }

      [(AVCaptureSession *)self->_captureSession removeOutput:self->_audioOutput];
      v8 = self->_audioOutput;
      self->_audioOutput = 0;
    }

    if ([(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled])
    {
      v9 = _ARLogSensor_4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v92 = v11;
        v93 = 2048;
        v94 = self;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Starting audio capture configuration", buf, 0x16u);
      }

      v12 = [(ARParentImageSensorSettings *)self->_settings settings];
      v13 = [v12 firstObject];
      v14 = [v13 videoFormat];
      v15 = [v14 captureDevicePosition];

      if (self->_audioInput)
      {
LABEL_36:
        v45 = objc_opt_new();
        v46 = self->_audioOutput;
        self->_audioOutput = v45;

        [(AVCaptureAudioDataOutput *)self->_audioOutput setSampleBufferDelegate:self queue:self->_captureQueue];
        v47 = [(ARParentImageSensor *)self captureSession];
        v48 = [v47 canAddOutput:self->_audioOutput];

        if (v48)
        {
          v49 = _ARLogSensor_4();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            *buf = 138543618;
            v92 = v51;
            v93 = 2048;
            v94 = self;
            _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Adding audio output", buf, 0x16u);
          }

          v52 = [(ARParentImageSensor *)self captureSession];
          [v52 addOutputWithNoConnections:self->_audioOutput];
        }

        else
        {
          if (ARShouldUseLogTypeError_onceToken_3 != -1)
          {
            [ARParentImageSensor _configureAudioCapture];
          }

          v53 = ARShouldUseLogTypeError_internalOSVersion_3;
          v54 = _ARLogSensor_4();
          v52 = v54;
          if (v53 == 1)
          {
            if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_48;
            }

            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            *buf = 138543618;
            v92 = v56;
            v93 = 2048;
            v94 = self;
            v57 = "%{public}@ <%p>: Error adding audio output";
            v58 = v52;
            v59 = OS_LOG_TYPE_ERROR;
          }

          else
          {
            if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              goto LABEL_48;
            }

            v60 = objc_opt_class();
            v56 = NSStringFromClass(v60);
            *buf = 138543618;
            v92 = v56;
            v93 = 2048;
            v94 = self;
            v57 = "Error: %{public}@ <%p>: Error adding audio output";
            v58 = v52;
            v59 = OS_LOG_TYPE_INFO;
          }

          _os_log_impl(&dword_1C241C000, v58, v59, v57, buf, 0x16u);
        }

LABEL_48:

        if (self->_audioConnection)
        {
          return;
        }

        audioInput = self->_audioInput;
        v62 = *MEMORY[0x1E69875A0];
        v63 = [(AVCaptureDeviceInput *)audioInput device];
        v64 = [v63 deviceType];
        v65 = [(AVCaptureDeviceInput *)audioInput portsWithMediaType:v62 sourceDeviceType:v64 sourceDevicePosition:v15];
        p_super = [v65 firstObject];

        if (p_super)
        {
          goto LABEL_53;
        }

        v66 = self->_audioInput;
        v67 = [(AVCaptureDeviceInput *)v66 device];
        v68 = [v67 deviceType];
        v69 = [(AVCaptureDeviceInput *)v66 portsWithMediaType:v62 sourceDeviceType:v68 sourceDevicePosition:0];
        p_super = [v69 firstObject];

        v70 = _ARLogSensor_4();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = objc_opt_class();
          v72 = NSStringFromClass(v71);
          *buf = 138543618;
          v92 = v72;
          v93 = 2048;
          v94 = self;
          _os_log_impl(&dword_1C241C000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Falling back to AVCaptureDevicePositionUnspecified.", buf, 0x16u);
        }

        if (p_super)
        {
LABEL_53:
          v73 = MEMORY[0x1E6987070];
          v90 = p_super;
          v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
          v75 = [v73 connectionWithInputPorts:v74 output:self->_audioOutput];
          audioConnection = self->_audioConnection;
          self->_audioConnection = v75;

          v77 = _ARLogSensor_4();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v78 = objc_opt_class();
            v79 = NSStringFromClass(v78);
            v80 = NSStringFromAVCaptureDevicePosition([p_super sourceDevicePosition]);
            *buf = 138543874;
            v92 = v79;
            v93 = 2048;
            v94 = self;
            v95 = 2112;
            v96 = v80;
            _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Adding audio connection. Position: %@", buf, 0x20u);
          }

          [(AVCaptureSession *)self->_captureSession addConnection:self->_audioConnection];
          goto LABEL_56;
        }

        if (ARShouldUseLogTypeError_onceToken_3 != -1)
        {
          [ARParentImageSensor _configureAudioCapture];
        }

        v81 = ARShouldUseLogTypeError_internalOSVersion_3;
        v82 = _ARLogSensor_4();
        p_super = v82;
        if (v81 == 1)
        {
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            v83 = objc_opt_class();
            v84 = NSStringFromClass(v83);
            *buf = 138543618;
            v92 = v84;
            v93 = 2048;
            v94 = self;
            v85 = "%{public}@ <%p>: Error finding audio port";
            v86 = p_super;
            v87 = OS_LOG_TYPE_ERROR;
LABEL_65:
            _os_log_impl(&dword_1C241C000, v86, v87, v85, buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v88 = objc_opt_class();
          v84 = NSStringFromClass(v88);
          *buf = 138543618;
          v92 = v84;
          v93 = 2048;
          v94 = self;
          v85 = "Error: %{public}@ <%p>: Error finding audio port";
          v86 = p_super;
          v87 = OS_LOG_TYPE_INFO;
          goto LABEL_65;
        }

LABEL_56:

        return;
      }

      v16 = MEMORY[0x1E69870A8];
      v97[0] = *MEMORY[0x1E6986920];
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:1];
      v18 = *MEMORY[0x1E69875A0];
      v19 = [v16 discoverySessionWithDeviceTypes:v17 mediaType:*MEMORY[0x1E69875A0] position:v15];

      v20 = [v19 devices];
      v21 = [v20 firstObject];

      if (!v21)
      {
        v21 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:v18];
      }

      v89 = 0;
      v22 = [MEMORY[0x1E69870B0] deviceInputWithDevice:v21 error:&v89];
      v23 = v89;
      v24 = self->_audioInput;
      self->_audioInput = v22;

      if (self->_audioInput)
      {
        v25 = [(ARParentImageSensor *)self captureSession];
        v26 = [v25 canAddInput:self->_audioInput];

        if (v26)
        {
          v27 = [(ARParentImageSensor *)self captureSession];
          [v27 addInputWithNoConnections:self->_audioInput];
LABEL_35:

          goto LABEL_36;
        }
      }

      if (ARShouldUseLogTypeError_onceToken_3 != -1)
      {
        [ARParentImageSensor _configureAudioCapture];
      }

      v36 = ARShouldUseLogTypeError_internalOSVersion_3;
      v37 = _ARLogSensor_4();
      v27 = v37;
      if (v36 == 1)
      {
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = [v23 description];
        *buf = 138543874;
        v92 = v39;
        v93 = 2048;
        v94 = self;
        v95 = 2112;
        v96 = v40;
        v41 = "%{public}@ <%p>: Error creating audio input: %@";
        v42 = v27;
        v43 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        v44 = objc_opt_class();
        v39 = NSStringFromClass(v44);
        v40 = [v23 description];
        *buf = 138543874;
        v92 = v39;
        v93 = 2048;
        v94 = self;
        v95 = 2112;
        v96 = v40;
        v41 = "Error: %{public}@ <%p>: Error creating audio input: %@";
        v42 = v27;
        v43 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v42, v43, v41, buf, 0x20u);

      goto LABEL_35;
    }

    if (self->_audioInput)
    {
      v28 = _ARLogSensor_4();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138543618;
        v92 = v30;
        v93 = 2048;
        v94 = self;
        _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Removing audio input", buf, 0x16u);
      }

      [(AVCaptureSession *)self->_captureSession removeInput:self->_audioInput];
      v31 = self->_audioInput;
      self->_audioInput = 0;
    }

    if (self->_audioConnection)
    {
      v32 = _ARLogSensor_4();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138543618;
        v92 = v34;
        v93 = 2048;
        v94 = self;
        _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Removing audio connection", buf, 0x16u);
      }

      p_super = &self->_audioConnection->super;
      self->_audioConnection = 0;
      goto LABEL_56;
    }
  }
}

- (BOOL)_validateCameraAuthorization
{
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  v3 = *MEMORY[0x1E6987608];
  v4 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E6987608]];
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = [(ARParentImageSensor *)self delegate];
      v8 = ARErrorWithCodeAndUserInfo(103, 0);
      [v5 sensor:self didFailWithError:v8];
      goto LABEL_6;
    }

    if (v4 == 1)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = ARKitCoreBundle();
      v7 = [v6 localizedStringForKey:@"Camera use is restricted on this device." value:&stru_1F4208A80 table:@"Localizable"];
      [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];

      v8 = [(ARParentImageSensor *)self delegate];
      v9 = ARErrorWithCodeAndUserInfo(101, v5);
      [v8 sensor:self didFailWithError:v9];

LABEL_6:
      return 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E69870A0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__ARParentImageSensor__validateCameraAuthorization__block_invoke;
    v12[3] = &unk_1E817BF68;
    objc_copyWeak(&v13, &location);
    [v11 requestAccessForMediaType:v3 completionHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __51__ARParentImageSensor__validateCameraAuthorization__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if ((a2 & 1) == 0)
  {
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v5 = [WeakRetained running];
      v4 = v8;
      if (v5)
      {
        v6 = [v8 delegate];
        v7 = ARErrorWithCodeAndUserInfo(103, 0);
        [v6 sensor:v8 didFailWithError:v7];

        v4 = v8;
      }
    }
  }
}

- (BOOL)_validateMicrophoneAuthorizationWithError:(id *)a3
{
  v5 = *MEMORY[0x1E69875A0];
  v6 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E69875A0]];
  if (v6)
  {
    if (v6 == 2)
    {
      if (a3)
      {
        v10 = ARErrorWithCodeAndUserInfo(104, 0);
        v11 = v10;
        result = 0;
        *a3 = v10;
        return result;
      }

      return 0;
    }

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v8 = ARKitCoreBundle();
      v9 = [v8 localizedStringForKey:@"Microphone use is restricted on this device." value:&stru_1F4208A80 table:@"Localizable"];
      [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A588]];

      if (a3)
      {
        *a3 = ARErrorWithCodeAndUserInfo(101, v7);
      }

      return 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69870A0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__ARParentImageSensor__validateMicrophoneAuthorizationWithError___block_invoke;
    v14[3] = &unk_1E817BF68;
    objc_copyWeak(&v15, &location);
    [v13 requestAccessForMediaType:v5 completionHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __65__ARParentImageSensor__validateMicrophoneAuthorizationWithError___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if ((a2 & 1) == 0)
  {
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v5 = [WeakRetained running];
      v4 = v8;
      if (v5)
      {
        v6 = [v8 delegate];
        v7 = ARErrorWithCodeAndUserInfo(104, 0);
        [v6 sensor:v8 didFailWithError:v7];

        v4 = v8;
      }
    }
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  [(ARParentImageSensor *)self stop];
  [(ARParentImageSensor *)self teardown];
  v6.receiver = self;
  v6.super_class = ARParentImageSensor;
  [(ARParentImageSensor *)&v6 dealloc];
}

- (NSString)description
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD60];
  v22.receiver = self;
  v22.super_class = ARParentImageSensor;
  v3 = [(ARParentImageSensor *)&v22 description];
  v4 = [v2 stringWithFormat:@"%@", v3];

  os_unfair_lock_lock(&self->_stateLock);
  if (self->_running)
  {
    v5 = @"Running";
  }

  else
  {
    v5 = @"Stopped";
  }

  [v4 appendFormat:@" %@ ", v5];
  if (self->_interrupted)
  {
    [v4 appendFormat:@"Interrupted "];
  }

  if (self->_unrecoverable)
  {
    [v4 appendFormat:@"Unrecoverable "];
  }

  v6 = [(ARParentImageSensorSettings *)self->_settings description];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v4 appendFormat:@"\n\tImageSensorSettings: %@\n", v7];

  [v4 appendFormat:@"\tSensors:\n"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_sensors;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) description];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t|\t"];
        [v4 appendFormat:@"\t| - %@\n", v13];
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  bufferPopulationMonitor = self->_bufferPopulationMonitor;
  if (bufferPopulationMonitor)
  {
    v15 = [(ARBufferPopulationMonitor *)bufferPopulationMonitor description];
    [v4 appendString:v15];
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v4;
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v7 = a5;
  os_unfair_lock_lock(&self->_stateLock);
  v8 = [v7 output];

  audioOutput = self->_audioOutput;
  os_unfair_lock_unlock(&self->_stateLock);
  if (v8 == audioOutput)
  {
    v11 = [(ARParentImageSensor *)self delegate];
    v10 = [[ARAudioData alloc] initWithSampleBuffer:a4];
    [v11 sensor:self didOutputSensorData:v10];
  }
}

- (void)_captureSessionStateChanged:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  if (![(ARParentImageSensor *)self running])
  {
LABEL_11:
    os_unfair_lock_unlock(&self->_stateLock);
    goto LABEL_23;
  }

  v5 = _ARLogSensor_4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    v40 = v7;
    v41 = 2048;
    v42 = self;
    v43 = 2114;
    v44 = v4;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: capture state changed (%{public}@)", buf, 0x20u);
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:*MEMORY[0x1E6986B20]];

  if (v9)
  {
    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6986AA0]];

    if ([v11 code] == -11873)
    {
      [(ARParentImageSensor *)self setUnrecoverable:1];
      goto LABEL_7;
    }

    v16 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.attemptfailurerecovery"];
    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.attemptfailurerecoveryafterbackground"])
    {
      if (![(ARParentImageSensor *)self interrupted]&& !v16)
      {
        goto LABEL_7;
      }
    }

    else if (!v16)
    {
      goto LABEL_7;
    }

    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARParentImageSensor _configureAudioCapture];
    }

    v25 = ARShouldUseLogTypeError_internalOSVersion_3;
    v26 = _ARLogSensor_4();
    v27 = v26;
    if (v25 == 1)
    {
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543874;
      v40 = v29;
      v41 = 2048;
      v42 = self;
      v43 = 2112;
      v44 = v11;
      v30 = "%{public}@ <%p>: Recovering capture session due to AVCaptureSessionRuntimeErrorNotification. (%@)";
      v31 = v27;
      v32 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v33 = objc_opt_class();
      v29 = NSStringFromClass(v33);
      *buf = 138543874;
      v40 = v29;
      v41 = 2048;
      v42 = self;
      v43 = 2112;
      v44 = v11;
      v30 = "Error: %{public}@ <%p>: Recovering capture session due to AVCaptureSessionRuntimeErrorNotification. (%@)";
      v31 = v27;
      v32 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v31, v32, v30, buf, 0x20u);

LABEL_35:
    v34 = [(ARParentImageSensor *)self interrupted];
    if ([(ARParentImageSensor *)self _startWithError:0])
    {
      [(ARParentImageSensor *)self setInterrupted:0];
      os_unfair_lock_unlock(&self->_stateLock);
      if (!v34)
      {
        goto LABEL_22;
      }

      v35 = [(ARParentImageSensor *)self delegate];
      v36 = objc_opt_respondsToSelector();

      if ((v36 & 1) == 0)
      {
        goto LABEL_22;
      }

      v13 = [(ARParentImageSensor *)self delegate];
      [v13 sensorDidRestart:self];
      goto LABEL_21;
    }

LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
    if (v11)
    {
      v37 = *MEMORY[0x1E696AA08];
      v38 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v13 = ARErrorWithCodeAndUserInfo(102, v12);
    }

    else
    {
      v13 = ARErrorWithCodeAndUserInfo(102, MEMORY[0x1E695E0F8]);
    }

    v22 = [(ARParentImageSensor *)self delegate];
    [v22 sensor:self didFailWithError:v13];

LABEL_21:
    goto LABEL_22;
  }

  v14 = [v4 name];
  v15 = [v14 isEqualToString:*MEMORY[0x1E6986B28]];

  if (v15)
  {
    if (![(ARParentImageSensor *)self interrupted])
    {
      [(ARParentImageSensor *)self setInterrupted:1];
      os_unfair_lock_unlock(&self->_stateLock);
      v23 = [(ARParentImageSensor *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if ((v24 & 1) == 0)
      {
        goto LABEL_23;
      }

      v11 = [(ARParentImageSensor *)self delegate];
      [v11 sensorDidPause:self];
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  v17 = [v4 name];
  v18 = [v17 isEqualToString:*MEMORY[0x1E6986AA8]];

  if (v18)
  {
    v19 = [(ARParentImageSensor *)self interrupted];
    [(ARParentImageSensor *)self setInterrupted:0];
    os_unfair_lock_unlock(&self->_stateLock);
    if (v19)
    {
      v20 = [(ARParentImageSensor *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v11 = [(ARParentImageSensor *)self delegate];
        [v11 sensorDidRestart:self];
LABEL_22:
      }
    }
  }

LABEL_23:
}

- (void)captureSessionStateChanged:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  captureSessionNotificationsQueue = self->_captureSessionNotificationsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ARParentImageSensor_captureSessionStateChanged___block_invoke;
  block[3] = &unk_1E817BDB0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(captureSessionNotificationsQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__ARParentImageSensor_captureSessionStateChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _captureSessionStateChanged:*(a1 + 32)];
}

- (id)captureDeviceTypeToExtrinsicsMapForImageSensor:(id)a3
{
  v4 = a3;
  v5 = [v4 internalSettings];
  v6 = [v5 isBravoCameraEnabled];

  v7 = [v4 captureDevice];

  if (v6)
  {
    v8 = [v7 constituentDevices];

    v9 = [v8 ar_firstObjectPassingTest:&__block_literal_global_84];
    v10 = ComputeExtrinsicsMap(v8, v9);
    v7 = v8;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_sensors ar_map:&__block_literal_global_87];
    v10 = ComputeExtrinsicsMap(v9, v7);
  }

  return v10;
}

uint64_t __70__ARParentImageSensor_captureDeviceTypeToExtrinsicsMapForImageSensor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6986950]];

  return v3;
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end