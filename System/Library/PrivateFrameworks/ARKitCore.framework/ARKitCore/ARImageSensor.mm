@interface ARImageSensor
+ (float)defaultLensPosition;
+ (void)registerSignPostForImageData:(id)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_createCMTimeFractionFromDecimalDuration:(SEL)a3;
- (ARImageSensor)initWithSettings:(id)a3 captureSession:(id)a4 captureQueue:(id)a5;
- (ARImageSensorDataSource)dataSource;
- (ARImageSensorSettings)settings;
- (ARSensorDelegate)delegate;
- (BOOL)canReconfigure:(id)a3;
- (NSArray)outputsForSynchronizer;
- (NSString)description;
- (id)_configurePhotoOutputForCaptureSession:(id)a3;
- (id)_configureVisionDataOutputForSession:(id)a3;
- (id)configureCaptureSession;
- (id)configureCaptureSessionCalibration;
- (id)logPrefix;
- (id)prepareToStart;
- (id)setActiveFormat;
- (void)_configureCameraExposureForDevice:(id)a3;
- (void)_configureCameraFocusForDevice:(id)a3;
- (void)_configureCameraWhiteBalanceForDevice:(id)a3;
- (void)_configureFrameRateForDevice:(id)a3 frameRate:(double)a4;
- (void)_configureImageControlModeForDevice:(id)a3;
- (void)_dispatchImageData:(id)a3;
- (void)_logIfDataIsMissingWithVideoData:(id)a3 visionData:(id)a4 calibrationData:(id)a5;
- (void)cameraCalibrationDataOutput:(id)a3 didDropCameraCalibrationDataAtTimestamp:(id *)a4 connection:(id)a5 reason:(int64_t)a6;
- (void)cameraCalibrationDataOutput:(id)a3 didOutputCameraCalibrationData:(id)a4 timestamp:(id *)a5 connection:(id)a6;
- (void)captureHighResolutionFrameWithPhotoSettings:(id)a3;
- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)configureCaptureDevice;
- (void)configureFrameRateForDevice:(id)a3;
- (void)configureGeometricDistortionCorrectionForDevice:(id)a3;
- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4;
- (void)dealloc;
- (void)enableAutoFocusForDevice:(id)a3;
- (void)enableContinuousAutoFocusIfPossible;
- (void)enableSensor:(BOOL)a3;
- (void)reconfigure:(id)a3;
- (void)setInterrupted:(BOOL)a3;
- (void)setPowerUsage:(unint64_t)a3;
- (void)start;
- (void)stop;
- (void)teardown;
- (void)trackExposureTargetOffsetIfNeededForImageData:(id)a3 shouldDrop:(BOOL *)a4;
- (void)triggerVisionDataBurst;
- (void)updateCaptureDeviceFrameRate:(double)a3;
@end

@implementation ARImageSensor

- (ARImageSensor)initWithSettings:(id)a3 captureSession:(id)a4 captureQueue:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 videoFormat];
  v12 = [v11 device];

  if (v12)
  {
    v38.receiver = self;
    v38.super_class = ARImageSensor;
    v13 = [(ARImageSensor *)&v38 init];
    if (v13)
    {
      v14 = [v8 copy];
      settings = v13->_settings;
      v13->_settings = v14;

      if ([v8 autoFocusEnabled])
      {
        v16 = *MEMORY[0x1E6986998];
      }

      else
      {
        +[ARImageSensor defaultLensPosition];
      }

      v13->_defaultLensPosition = v16;
      objc_storeStrong(&v13->_captureSession, a4);
      v18 = [v8 videoFormat];
      v19 = [v18 device];
      captureDevice = v13->_captureDevice;
      v13->_captureDevice = v19;

      v13->_captureQueue = v10;
      v13->_powerUsage = 0;
      v21 = objc_opt_new();
      connections = v13->_connections;
      v13->_connections = v21;

      v23 = MEMORY[0x1E69E9B10];
      v24 = *(MEMORY[0x1E69E9B10] + 16);
      *v13->_anon_20 = *MEMORY[0x1E69E9B10];
      *&v13->_anon_20[16] = v24;
      v25 = *MEMORY[0x1E695F060];
      *&v13->_anon_20[32] = *(v23 + 32);
      v13->_lastIntrinsicsImageResolution = v25;
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"deviceWhiteBalanceGains", @"exposureTargetOffset", @"ISO", 0}];
      captureDeviceKeysObserved = v13->_captureDeviceKeysObserved;
      v13->_captureDeviceKeysObserved = v26;

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = v13->_captureDeviceKeysObserved;
      v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v35;
        do
        {
          v32 = 0;
          do
          {
            if (*v35 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [(AVCaptureDevice *)v13->_captureDevice addObserver:v13 forKeyPath:*(*(&v34 + 1) + 8 * v32++) options:1 context:v13];
          }

          while (v30 != v32);
          v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v30);
      }
    }

    self = v13;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ dealloc", buf, 0x20u);
  }

  [(ARImageSensor *)self stop];
  [(ARImageSensor *)self teardown];
  v7.receiver = self;
  v7.super_class = ARImageSensor;
  [(ARImageSensor *)&v7 dealloc];
}

- (ARImageSensorSettings)settings
{
  v2 = [(ARImageSensorSettings *)self->_settings copy];

  return v2;
}

- (NSArray)outputsForSynchronizer
{
  if (self->_visionDataOutput || self->_calibrationOutput)
  {
    v3 = objc_opt_new();
    v4 = v3;
    if (self->_videoOutput)
    {
      [v3 addObject:?];
    }

    if (self->_visionDataOutput)
    {
      [v4 addObject:?];
    }

    if (self->_calibrationOutput)
    {
      [v4 addObject:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canReconfigure:(id)a3
{
  settings = self->_settings;
  v4 = a3;
  v5 = [(ARImageSensorSettings *)settings copy];
  [v5 setAutoFocusEnabled:{objc_msgSend(v4, "autoFocusEnabled")}];
  [v5 setEnabled:{objc_msgSend(v4, "isEnabled")}];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (void)reconfigure:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(ARImageSensor *)self canReconfigure:v4])
  {
    goto LABEL_17;
  }

  v5 = [v4 autoFocusEnabled];
  if (v5 != [(ARImageSensorSettings *)self->_settings autoFocusEnabled])
  {
    -[ARImageSensorSettings setAutoFocusEnabled:](self->_settings, "setAutoFocusEnabled:", [v4 autoFocusEnabled]);
    LODWORD(v6) = *MEMORY[0x1E6986998];
    [(ARImageSensor *)self setDefaultLensPosition:v6];
    captureDevice = self->_captureDevice;
    v24 = 0;
    v8 = [(AVCaptureDevice *)captureDevice lockForConfiguration:&v24];
    v9 = v24;
    if (v8)
    {
      [(ARImageSensor *)self _configureCameraFocusForDevice:self->_captureDevice];
      [(AVCaptureDevice *)self->_captureDevice unlockForConfiguration];
LABEL_14:

      goto LABEL_15;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v10 = _MergedGlobals;
    v11 = _ARLogSensor_1();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [(ARImageSensor *)self logPrefix];
        v16 = [v9 description];
        *buf = 138544130;
        v26 = v14;
        v27 = 2048;
        v28 = self;
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = v16;
        v17 = "%{public}@ <%p>: %@ Unable to lock device for configuring focus mode change: %@";
        v18 = v12;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v18, v19, v17, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v14 = NSStringFromClass(v20);
      v15 = [(ARImageSensor *)self logPrefix];
      v16 = [v9 description];
      *buf = 138544130;
      v26 = v14;
      v27 = 2048;
      v28 = self;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v17 = "Error: %{public}@ <%p>: %@ Unable to lock device for configuring focus mode change: %@";
      v18 = v12;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_15:
  v21 = [v4 isEnabled];
  if (v21 != [(ARImageSensorSettings *)self->_settings isEnabled])
  {
    -[ARImageSensorSettings setEnabled:](self->_settings, "setEnabled:", [v4 isEnabled]);
    v22 = [(ARImageSensor *)self captureSession];
    [v22 beginConfiguration];

    [(ARImageSensor *)self enableSensor:[(ARImageSensorSettings *)self->_settings isEnabled]];
    v23 = [(ARImageSensor *)self captureSession];
    [v23 commitConfiguration];
  }

LABEL_17:
}

- (id)logPrefix
{
  v3 = [(ARImageSensor *)self internalSettings];
  v4 = [v3 videoFormat];
  v5 = [v4 captureDeviceType];

  v6 = [(ARImageSensor *)self internalSettings];
  v7 = [v6 videoFormat];
  v8 = NSStringFromAVCaptureDevicePosition([v7 captureDevicePosition]);

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ - %@):", v5, v8];

  return v9;
}

- (void)triggerVisionDataBurst
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ARImageSensor *)self logPrefix];
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Vision data burst triggered", &v7, 0x20u);
  }

  [(AVCaptureVisionDataOutput *)self->_visionDataOutput triggerBurst];
}

- (id)prepareToStart
{
  v81[1] = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v5;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v75 = v6;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ preparing to start", &buf, 0x20u);
  }

  v7 = [(ARImageSensor *)self setActiveFormat];
  if (v7 || ([(ARImageSensor *)self configureCaptureSession], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    goto LABEL_6;
  }

  v10 = [(ARImageSensor *)self outputsForSynchronizer];
  v11 = [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer dataOutputs];
  v12 = [v11 isEqualToArray:v10];

  if ([v10 count] < 2 || (v12 & 1) == 0)
  {
    [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer setDelegate:0 queue:0];
    outputSynchronizer = self->_outputSynchronizer;
    self->_outputSynchronizer = 0;
  }

  if (!(([v10 count] < 2) | v12 & 1))
  {
    v14 = _ARLogSensor_1();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [(ARImageSensor *)self logPrefix];
      v18 = [v10 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v16;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = v17;
      v76 = 2112;
      v77 = *&v18;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Outputs added to synchronizer: %@", &buf, 0x2Au);
    }

    v19 = [objc_alloc(MEMORY[0x1E6987078]) initWithDataOutputs:v10];
    v20 = self->_outputSynchronizer;
    self->_outputSynchronizer = v19;
  }

  [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer setDelegate:self queue:self->_captureQueue];
  v21 = [(ARImageSensor *)self captureDevice];
  v73 = 0;
  v22 = [v21 lockForConfiguration:&v73];
  v23 = v73;

  if (!v22)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v25 = _MergedGlobals;
    v26 = _ARLogSensor_1();
    v27 = v26;
    if (v25 == 1)
    {
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [(ARImageSensor *)self logPrefix];
      v31 = [v23 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v29;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = v30;
      v76 = 2112;
      v77 = *&v31;
      v32 = "%{public}@ <%p>: %@ Unable to lock capture device for configuration: %@";
      v33 = v27;
      v34 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_26;
      }

      v35 = objc_opt_class();
      v29 = NSStringFromClass(v35);
      v30 = [(ARImageSensor *)self logPrefix];
      v31 = [v23 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v29;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = v30;
      v76 = 2112;
      v77 = *&v31;
      v32 = "Error: %{public}@ <%p>: %@ Unable to lock capture device for configuration: %@";
      v33 = v27;
      v34 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v33, v34, v32, &buf, 0x2Au);

LABEL_26:
    if (v23)
    {
      v80 = *MEMORY[0x1E696AA08];
      v81[0] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    }

    else
    {
      v24 = MEMORY[0x1E695E0F8];
    }

    v8 = ARErrorWithCodeAndUserInfo(101, v24);

    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  [(ARImageSensor *)self configureCaptureDevice];
  v24 = [(ARImageSensor *)self captureDevice];
  [v24 unlockForConfiguration];
  v8 = v23;
LABEL_30:

LABEL_31:
  if (v8)
  {
    v36 = v8;
  }

  else
  {
    v37 = [(AVCaptureVideoDataOutput *)self->_videoOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
    v38 = [v37 isCameraIntrinsicMatrixDeliverySupported];
    if (v38)
    {
      [v37 setCameraIntrinsicMatrixDeliveryEnabled:1];
    }

    v39 = _ARLogSensor_1();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = [(ARImageSensor *)self logPrefix];
      v43 = v42;
      v44 = @"unsupported";
      LODWORD(buf.value) = 138544130;
      LOWORD(buf.flags) = 2048;
      *(&buf.value + 4) = v41;
      if (v38)
      {
        v44 = @"supported";
      }

      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = v42;
      v76 = 2112;
      v77 = *&v44;
      _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Intrinsics delivery is %@ by the connection", &buf, 0x2Au);
    }

    v45 = _ARLogSensor_1();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = [(ARImageSensor *)self logPrefix];
      v49 = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v50 = v49;
      if (v49)
      {
        [v49 minExposureDuration];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      Seconds = CMTimeGetSeconds(&buf);
      v52 = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v53 = v52;
      if (v52)
      {
        [v52 maxExposureDuration];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v54 = CMTimeGetSeconds(&buf);
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v47;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = v48;
      v76 = 2048;
      v77 = Seconds;
      v78 = 2048;
      v79 = v54;
      _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Exposure duration supported: %f - %f", &buf, 0x34u);
    }

    v55 = _ARLogSensor_1();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v58 = [(ARImageSensor *)self logPrefix];
      captureDevice = self->_captureDevice;
      if (captureDevice)
      {
        [(AVCaptureDevice *)captureDevice activeVideoMinFrameDuration];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v60 = CMTimeGetSeconds(&buf);
      v61 = self->_captureDevice;
      if (v61)
      {
        [(AVCaptureDevice *)v61 activeVideoMaxFrameDuration];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v62 = CMTimeGetSeconds(&buf);
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v57;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = v58;
      v76 = 2048;
      v77 = v60;
      v78 = 2048;
      v79 = v62;
      _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Video frame duration: %f - %f", &buf, 0x34u);
    }

    v63 = _ARLogSensor_1();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = [(ARImageSensor *)self logPrefix];
      if ([(AVCaptureDevice *)self->_captureDevice isVideoHDREnabled])
      {
        v67 = @"Enabled";
      }

      else
      {
        v67 = @"Disabled";
      }

      if ([(AVCaptureDevice *)self->_captureDevice automaticallyAdjustsVideoHDREnabled])
      {
        *&v68 = COERCE_DOUBLE(@"Enabled");
      }

      else
      {
        *&v68 = COERCE_DOUBLE(@"Disabled");
      }

      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v65;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = v66;
      v76 = 2112;
      v77 = *&v67;
      v78 = 2112;
      v79 = *&v68;
      _os_log_impl(&dword_1C241C000, v63, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Video HDR: %@, Automatically adjusts video HDR: %@", &buf, 0x34u);
    }

    v69 = _ARLogSensor_1();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      v72 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v71;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = v72;
      _os_log_impl(&dword_1C241C000, v69, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ prepare to start complete", &buf, 0x20u);
    }
  }

LABEL_6:

  return v8;
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer setDelegate:0 queue:0];
  [(AVCaptureVideoDataOutput *)self->_videoOutput setSampleBufferDelegate:0 queue:0];
  [(AVCaptureCameraCalibrationDataOutput *)self->_calibrationOutput setDelegate:0 callbackQueue:0];
  [(ARImageSensor *)self resetExposureTracking];
  v3 = _ARLogSensor_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ARImageSensor *)self logPrefix];
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARImageSensor stop complete", &v7, 0x20u);
  }
}

- (void)teardown
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_captureDeviceKeysObserved;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AVCaptureDevice *)self->_captureDevice removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:self, v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_captureDeviceKeysObserved removeAllObjects];
  if (self->_videoInput)
  {
    [(AVCaptureSession *)self->_captureSession removeInput:?];
    videoInput = self->_videoInput;
    self->_videoInput = 0;
  }
}

- (void)start
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor start];
  }

  v3 = _MergedGlobals;
  v4 = _ARLogSensor_1();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [(ARImageSensor *)self logPrefix];
      v13 = 138543874;
      v14 = v7;
      v15 = 2048;
      v16 = self;
      v17 = 2112;
      v18 = v8;
      v9 = "%{public}@ <%p>: %@ start called on a child image sensor instead of parent image sensor";
      v10 = v5;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v10, v11, v9, &v13, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v7 = NSStringFromClass(v12);
    v8 = [(ARImageSensor *)self logPrefix];
    v13 = 138543874;
    v14 = v7;
    v15 = 2048;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    v9 = "Error: %{public}@ <%p>: %@ start called on a child image sensor instead of parent image sensor";
    v10 = v5;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)setPowerUsage:(unint64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_powerUsage != a3)
  {
    v5 = _ARLogSensor_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [(ARImageSensor *)self logPrefix];
      powerUsage = self->_powerUsage;
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v7;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v34 = v8;
      v35 = 2048;
      v36 = *&powerUsage;
      v37 = 2048;
      v38 = a3;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Power usage changed from %li to %li", &buf, 0x34u);
    }

    self->_powerUsage = a3;
    captureDevice = self->_captureDevice;
    v32 = 0;
    v11 = [(AVCaptureDevice *)captureDevice lockForConfiguration:&v32];
    v12 = v32;
    if (v11)
    {
      [(ARImageSensor *)self configureFrameRateForDevice:self->_captureDevice];
      v13 = _ARLogSensor_1();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [(ARImageSensor *)self logPrefix];
        v17 = self->_captureDevice;
        if (v17)
        {
          [(AVCaptureDevice *)v17 activeVideoMinFrameDuration];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        Seconds = CMTimeGetSeconds(&buf);
        v30 = self->_captureDevice;
        if (v30)
        {
          [(AVCaptureDevice *)v30 activeVideoMaxFrameDuration];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v31 = CMTimeGetSeconds(&buf);
        LODWORD(buf.value) = 138544386;
        *(&buf.value + 4) = v15;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v34 = v16;
        v35 = 2048;
        v36 = Seconds;
        v37 = 2048;
        v38 = *&v31;
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Power usage changed, video frame duration adjusted to %f-%f", &buf, 0x34u);
      }

      [(AVCaptureDevice *)self->_captureDevice unlockForConfiguration];
      goto LABEL_23;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v18 = _MergedGlobals;
    v19 = _ARLogSensor_1();
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [(ARImageSensor *)self logPrefix];
        v24 = [v12 description];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v22;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v34 = v23;
        v35 = 2112;
        v36 = *&v24;
        v25 = "%{public}@ <%p>: %@ Unable to lock capture device to change frame rate due to power usage: %@";
        v26 = v20;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v26, v27, v25, &buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v22 = NSStringFromClass(v28);
      v23 = [(ARImageSensor *)self logPrefix];
      v24 = [v12 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v22;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = *&v24;
      v25 = "Error: %{public}@ <%p>: %@ Unable to lock capture device to change frame rate due to power usage: %@";
      v26 = v20;
      v27 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

LABEL_23:
  }
}

- (void)enableSensor:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(ARImageSensor *)self connections];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v14.receiver = self;
  v14.super_class = ARImageSensor;
  v4 = [(ARImageSensor *)&v14 description];
  v5 = [v3 stringWithFormat:@"%@ ", v4];

  v6 = [(ARImageSensor *)self captureDevice];
  [v5 appendFormat:@" %@", v6];

  v7 = [(ARImageSensor *)self captureDevice];
  v8 = [v7 deviceType];
  [v5 appendFormat:@" %@", v8];

  v9 = [(ARImageSensor *)self captureDevice];
  v10 = NSStringFromAVCaptureDevicePosition([v9 position]);
  [v5 appendFormat:@" %@", v10];

  [v5 appendFormat:@" (%li fps)\n", -[ARImageSensor captureFramesPerSecond](self, "captureFramesPerSecond")];
  v11 = [(ARImageSensorSettings *)self->_settings description];
  v12 = [v11 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"%@\n", v12];

  return v5;
}

- (id)configureCaptureSession
{
  v172 = *MEMORY[0x1E69E9840];
  videoInput = self->_videoInput;
  if (videoInput)
  {
    v4 = [(AVCaptureDeviceInput *)videoInput device];
    captureDevice = self->_captureDevice;

    if (v4 != captureDevice)
    {
      if (qword_1EBF41CA8 != -1)
      {
        [ARImageSensor start];
      }

      v6 = _MergedGlobals;
      v7 = _ARLogSensor_1();
      v8 = v7;
      if (v6 == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [(ARImageSensor *)self logPrefix];
          [(AVCaptureDeviceInput *)self->_videoInput device];
          v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v10;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = v11;
          v168 = 2112;
          v169 = v12;
          v13 = "%{public}@ <%p>: %@ Unsupported capture device: %@";
          v14 = v8;
          v15 = OS_LOG_TYPE_ERROR;
LABEL_18:
          _os_log_impl(&dword_1C241C000, v14, v15, v13, &buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        v10 = NSStringFromClass(v35);
        v11 = [(ARImageSensor *)self logPrefix];
        [(AVCaptureDeviceInput *)self->_videoInput device];
        v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v10;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = v11;
        v168 = 2112;
        v169 = v12;
        v13 = "Error: %{public}@ <%p>: %@ Unsupported capture device: %@";
        v14 = v8;
        v15 = OS_LOG_TYPE_INFO;
        goto LABEL_18;
      }

LABEL_43:

      v66 = ARErrorWithCodeAndUserInfo(150, 0);
      goto LABEL_147;
    }

    v16 = [(AVCaptureDeviceInput *)self->_videoInput device];
    v17 = [v16 activeFormat];
    MediaSubType = CMFormatDescriptionGetMediaSubType([v17 formatDescription]);

    if (MediaSubType != 875704422)
    {
      if (qword_1EBF41CA8 != -1)
      {
        [ARImageSensor start];
      }

      v47 = _MergedGlobals;
      v48 = _ARLogSensor_1();
      v8 = v48;
      if (v47 == 1)
      {
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v50;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = v51;
        v168 = 1024;
        LODWORD(v169) = MediaSubType;
        v52 = "%{public}@ <%p>: %@ Unsupported pixel format: %d";
        v53 = v8;
        v54 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          goto LABEL_43;
        }

        v65 = objc_opt_class();
        v50 = NSStringFromClass(v65);
        v51 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v50;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = v51;
        v168 = 1024;
        LODWORD(v169) = MediaSubType;
        v52 = "Error: %{public}@ <%p>: %@ Unsupported pixel format: %d";
        v53 = v8;
        v54 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v53, v54, v52, &buf, 0x26u);

      goto LABEL_43;
    }

    if (self->_videoInput)
    {
      v19 = 0;
      goto LABEL_90;
    }
  }

  v20 = objc_alloc(MEMORY[0x1E69870B0]);
  v21 = self->_captureDevice;
  v162 = 0;
  v22 = [v20 initWithDevice:v21 error:&v162];
  v19 = v162;
  v23 = self->_videoInput;
  self->_videoInput = v22;

  v24 = self->_videoInput;
  if (v24)
  {
    [(AVCaptureDeviceInput *)v24 setCenterStageAllowed:0];
    [(AVCaptureDeviceInput *)self->_videoInput setBackgroundBlurAllowed:0];
    if (![(ARImageSensorSettings *)self->_settings visionDataOutputEnabled])
    {
      goto LABEL_48;
    }

    v25 = [(ARImageSensor *)self captureDevice];
    v26 = [v25 activeFormat];
    v27 = [v26 isVisionDataDeliverySupported];

    if (v27)
    {
      [(AVCaptureDeviceInput *)self->_videoInput setVisionDataDeliveryEnabled:1];
      v28 = _ARLogSensor_1();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v30;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = v31;
        v32 = "%{public}@ <%p>: %@ Vision data delivery enabled";
        v33 = v28;
        v34 = OS_LOG_TYPE_DEFAULT;
LABEL_46:
        _os_log_impl(&dword_1C241C000, v33, v34, v32, &buf, 0x20u);
      }
    }

    else
    {
      if (qword_1EBF41CA8 != -1)
      {
        [ARImageSensor reconfigure:];
      }

      v60 = _MergedGlobals;
      v61 = _ARLogSensor_1();
      v28 = v61;
      if (v60 == 1)
      {
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v62 = objc_opt_class();
          v30 = NSStringFromClass(v62);
          v31 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v30;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = v31;
          v32 = "%{public}@ <%p>: %@ Vision data delivery requested but not supported by device format. Sensor will continue with standard outputs.";
          v33 = v28;
          v34 = OS_LOG_TYPE_ERROR;
          goto LABEL_46;
        }
      }

      else if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v67 = objc_opt_class();
        v30 = NSStringFromClass(v67);
        v31 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v30;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = v31;
        v32 = "Error: %{public}@ <%p>: %@ Vision data delivery requested but not supported by device format. Sensor will continue with standard outputs.";
        v33 = v28;
        v34 = OS_LOG_TYPE_INFO;
        goto LABEL_46;
      }
    }

LABEL_48:
    [(ARImageSensorSettings *)self->_settings maxGainOverride];
    if (v68 <= 0.0)
    {
      goto LABEL_62;
    }

    if ([(AVCaptureDeviceInput *)self->_videoInput isMaxGainOverrideSupported])
    {
      [(ARImageSensorSettings *)self->_settings maxGainOverride];
      [(AVCaptureDeviceInput *)self->_videoInput setMaxGainOverride:?];
      v69 = _ARLogSensor_1();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = objc_opt_class();
        v71 = NSStringFromClass(v70);
        v72 = [(ARImageSensor *)self logPrefix];
        [(AVCaptureDeviceInput *)self->_videoInput maxGainOverride];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v71;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = v72;
        v168 = 2048;
        v169 = v73;
        v74 = "%{public}@ <%p>: %@ Camera max gain override set to %f";
        v75 = v69;
        v76 = OS_LOG_TYPE_DEFAULT;
        v77 = 42;
LABEL_60:
        _os_log_impl(&dword_1C241C000, v75, v76, v74, &buf, v77);
      }

LABEL_61:

LABEL_62:
      if (![(ARImageSensorSettings *)self->_settings calibrationDataOutputEnabled])
      {
LABEL_74:
        if (![(AVCaptureSession *)self->_captureSession canAddInput:self->_videoInput])
        {
          if (qword_1EBF41CA8 != -1)
          {
            [ARImageSensor reconfigure:];
          }

          v109 = _MergedGlobals;
          v110 = _ARLogSensor_1();
          v111 = v110;
          if (v109 == 1)
          {
            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              v112 = objc_opt_class();
              v113 = NSStringFromClass(v112);
              v114 = [(ARImageSensor *)self logPrefix];
              LODWORD(buf.value) = 138543874;
              *(&buf.value + 4) = v113;
              LOWORD(buf.flags) = 2048;
              *(&buf.flags + 2) = self;
              HIWORD(buf.epoch) = 2112;
              v167 = v114;
              v115 = "%{public}@ <%p>: %@ Cannot add video data input to the capture session";
LABEL_112:
              v143 = v111;
              v144 = OS_LOG_TYPE_ERROR;
LABEL_127:
              _os_log_impl(&dword_1C241C000, v143, v144, v115, &buf, 0x20u);
            }

LABEL_128:

            v64 = 102;
            v63 = 0;
            goto LABEL_129;
          }

          if (!os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
          {
            goto LABEL_128;
          }

          v116 = objc_opt_class();
          v113 = NSStringFromClass(v116);
          v114 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v113;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = v114;
          v115 = "Error: %{public}@ <%p>: %@ Cannot add video data input to the capture session";
LABEL_126:
          v143 = v111;
          v144 = OS_LOG_TYPE_INFO;
          goto LABEL_127;
        }

        [(AVCaptureSession *)self->_captureSession addInputWithNoConnections:self->_videoInput];
        v94 = _ARLogSensor_1();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v95 = objc_opt_class();
          v96 = NSStringFromClass(v95);
          v97 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v96;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = v97;
          _os_log_impl(&dword_1C241C000, v94, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data input to the capture session", &buf, 0x20u);
        }

        v98 = [(ARImageSensorSettings *)self->_settings videoFormat];
        v99 = [v98 frameRatesByPowerUsage];
        v100 = [v99 objectAtIndexedSubscript:0];
        [v100 doubleValue];
        v102 = v101;

        CMTimeMake(&v161, 1, v102);
        v103 = self->_videoInput;
        buf = v161;
        [(AVCaptureDeviceInput *)v103 setVideoMinFrameDurationOverride:&buf];
        v104 = _ARLogSensor_1();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
        {
          v105 = objc_opt_class();
          v106 = NSStringFromClass(v105);
          v107 = [(ARImageSensor *)self logPrefix];
          v108 = self->_videoInput;
          if (v108)
          {
            [(AVCaptureDeviceInput *)v108 videoMinFrameDurationOverride];
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          Seconds = CMTimeGetSeconds(&buf);
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v106;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = v107;
          v168 = 2048;
          v169 = Seconds;
          _os_log_impl(&dword_1C241C000, v104, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Video min frame duration override set to %f", &buf, 0x2Au);
        }

LABEL_90:
        if (self->_videoOutput)
        {
          goto LABEL_95;
        }

        v118 = objc_opt_new();
        videoOutput = self->_videoOutput;
        self->_videoOutput = v118;

        if ([(AVCaptureSession *)self->_captureSession canAddOutput:self->_videoOutput])
        {
          [(AVCaptureSession *)self->_captureSession addOutputWithNoConnections:self->_videoOutput];
          v120 = _ARLogSensor_1();
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
          {
            v121 = objc_opt_class();
            v122 = NSStringFromClass(v121);
            v123 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v122;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v167 = v123;
            _os_log_impl(&dword_1C241C000, v120, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data output to the capture session", &buf, 0x20u);
          }

LABEL_95:
          v124 = self->_videoInput;
          if (self->_videoConnection)
          {
            goto LABEL_96;
          }

          v127 = *MEMORY[0x1E6987608];
          v128 = [(AVCaptureDeviceInput *)self->_videoInput device];
          v129 = [v128 deviceType];
          v130 = [(AVCaptureDeviceInput *)self->_videoInput device];
          v131 = -[AVCaptureDeviceInput portsWithMediaType:sourceDeviceType:sourceDevicePosition:](v124, "portsWithMediaType:sourceDeviceType:sourceDevicePosition:", v127, v129, [v130 position]);
          v57 = [v131 firstObject];

          if (v57)
          {
            v132 = MEMORY[0x1E6987070];
            v163 = v57;
            v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v163 count:1];
            v134 = [v132 connectionWithInputPorts:v133 output:self->_videoOutput];
            videoConnection = self->_videoConnection;
            self->_videoConnection = v134;

            if ([(AVCaptureSession *)self->_captureSession canAddConnection:self->_videoConnection])
            {
              [(NSMutableArray *)self->_connections addObject:self->_videoConnection];
              [(AVCaptureSession *)self->_captureSession addConnection:self->_videoConnection];
              v136 = _ARLogSensor_1();
              if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
              {
                v137 = objc_opt_class();
                v138 = NSStringFromClass(v137);
                v139 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v138;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v167 = v139;
                _os_log_impl(&dword_1C241C000, v136, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data connection to the capture session", &buf, 0x20u);
              }

              v124 = self->_videoInput;
LABEL_96:
              if ([(AVCaptureDeviceInput *)v124 isCameraCalibrationDataDeliveryEnabled])
              {
                v125 = [(ARImageSensor *)self configureCaptureSessionCalibration];

                if (v125)
                {
LABEL_101:
                  v126 = v125;
LABEL_134:
                  v19 = v126;
                  goto LABEL_135;
                }

                v19 = 0;
              }

              [(AVCaptureVideoDataOutput *)self->_videoOutput setAlwaysDiscardsLateVideoFrames:1];
              [(AVCaptureVideoDataOutput *)self->_videoOutput setSampleBufferDelegate:self queue:self->_captureQueue];
              if ([(AVCaptureDeviceInput *)self->_videoInput isVisionDataDeliveryEnabled])
              {
                v125 = [(ARImageSensor *)self _configureVisionDataOutputForSession:self->_captureSession];

                if (v125)
                {
                  goto LABEL_101;
                }

                v19 = 0;
              }

              if (![(ARImageSensorSettings *)self->_settings supportsCapturingHighResolutionFrames])
              {
                v66 = 0;
                goto LABEL_146;
              }

              v66 = [(ARImageSensor *)self _configurePhotoOutputForCaptureSession:self->_captureSession];

              if (!v66)
              {
                v19 = 0;
                goto LABEL_146;
              }

              v126 = v66;
              goto LABEL_134;
            }

            if (qword_1EBF41CA8 != -1)
            {
              [ARImageSensor reconfigure:];
            }

            v152 = _MergedGlobals;
            v153 = _ARLogSensor_1();
            v147 = v153;
            if (v152 == 1)
            {
              if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
              {
                v154 = objc_opt_class();
                v149 = NSStringFromClass(v154);
                v150 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v149;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v167 = v150;
                v151 = "%{public}@ <%p>: %@ Cannot add video connection to capture session";
                goto LABEL_123;
              }

              goto LABEL_144;
            }

            if (!os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
            {
              goto LABEL_144;
            }

            v159 = objc_opt_class();
            v149 = NSStringFromClass(v159);
            v150 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v149;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v167 = v150;
            v151 = "Error: %{public}@ <%p>: %@ Cannot add video connection to capture session";
          }

          else
          {
            if (qword_1EBF41CA8 != -1)
            {
              [ARImageSensor reconfigure:];
            }

            v145 = _MergedGlobals;
            v146 = _ARLogSensor_1();
            v147 = v146;
            if (v145 == 1)
            {
              if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
              {
                v148 = objc_opt_class();
                v149 = NSStringFromClass(v148);
                v150 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v149;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v167 = v150;
                v151 = "%{public}@ <%p>: %@ Cannot find a video port in the input added to the capture session";
LABEL_123:
                v155 = v147;
                v156 = OS_LOG_TYPE_ERROR;
LABEL_143:
                _os_log_impl(&dword_1C241C000, v155, v156, v151, &buf, 0x20u);
              }

LABEL_144:

              v58 = 102;
              v59 = 0;
              goto LABEL_145;
            }

            if (!os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
            {
              goto LABEL_144;
            }

            v158 = objc_opt_class();
            v149 = NSStringFromClass(v158);
            v150 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v149;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v167 = v150;
            v151 = "Error: %{public}@ <%p>: %@ Cannot find a video port in the input added to the capture session";
          }

          v155 = v147;
          v156 = OS_LOG_TYPE_INFO;
          goto LABEL_143;
        }

        if (qword_1EBF41CA8 != -1)
        {
          [ARImageSensor reconfigure:];
        }

        v140 = _MergedGlobals;
        v141 = _ARLogSensor_1();
        v111 = v141;
        if (v140 == 1)
        {
          if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            v142 = objc_opt_class();
            v113 = NSStringFromClass(v142);
            v114 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v113;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v167 = v114;
            v115 = "%{public}@ <%p>: %@ Cannot add video data output to the capture session";
            goto LABEL_112;
          }

          goto LABEL_128;
        }

        if (!os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
        {
          goto LABEL_128;
        }

        v157 = objc_opt_class();
        v113 = NSStringFromClass(v157);
        v114 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v113;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = v114;
        v115 = "Error: %{public}@ <%p>: %@ Cannot add video data output to the capture session";
        goto LABEL_126;
      }

      v82 = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v83 = [v82 isCameraCalibrationDataDeliverySupported];

      if (v83)
      {
        [(AVCaptureDeviceInput *)self->_videoInput setCameraCalibrationDataDeliveryEnabled:1];
        goto LABEL_74;
      }

      if (qword_1EBF41CA8 != -1)
      {
        [ARImageSensor reconfigure:];
      }

      v84 = _MergedGlobals;
      v85 = _ARLogSensor_1();
      v86 = v85;
      if (v84 == 1)
      {
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v87 = objc_opt_class();
          v88 = NSStringFromClass(v87);
          v89 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v88;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = v89;
          v90 = "%{public}@ <%p>: %@ Does not support camera calibration delivery";
          v91 = v86;
          v92 = OS_LOG_TYPE_ERROR;
LABEL_72:
          _os_log_impl(&dword_1C241C000, v91, v92, v90, &buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v93 = objc_opt_class();
        v88 = NSStringFromClass(v93);
        v89 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v88;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = v89;
        v90 = "Error: %{public}@ <%p>: %@ Does not support camera calibration delivery";
        v91 = v86;
        v92 = OS_LOG_TYPE_INFO;
        goto LABEL_72;
      }

      goto LABEL_74;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v78 = _MergedGlobals;
    v79 = _ARLogSensor_1();
    v69 = v79;
    if (v78 == 1)
    {
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      v80 = objc_opt_class();
      v71 = NSStringFromClass(v80);
      v72 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v71;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v167 = v72;
      v74 = "%{public}@ <%p>: %@ Overriding max gain is not supported by the device.";
      v75 = v69;
      v76 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v81 = objc_opt_class();
      v71 = NSStringFromClass(v81);
      v72 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v71;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v167 = v72;
      v74 = "Error: %{public}@ <%p>: %@ Overriding max gain is not supported by the device.";
      v75 = v69;
      v76 = OS_LOG_TYPE_INFO;
    }

    v77 = 32;
    goto LABEL_60;
  }

  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor reconfigure:];
  }

  v36 = _MergedGlobals;
  v37 = _ARLogSensor_1();
  v38 = v37;
  if (v36 == 1)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [(ARImageSensor *)self logPrefix];
      [v19 description];
      v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v43 = self->_captureDevice;
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v40;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v167 = v41;
      v168 = 2112;
      v169 = v42;
      v170 = 2112;
      v171 = v43;
      v44 = "%{public}@ <%p>: %@ Error creating capture input for image sensor: %@ (%@)";
      v45 = v38;
      v46 = OS_LOG_TYPE_ERROR;
LABEL_31:
      _os_log_impl(&dword_1C241C000, v45, v46, v44, &buf, 0x34u);
    }
  }

  else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v55 = objc_opt_class();
    v40 = NSStringFromClass(v55);
    v41 = [(ARImageSensor *)self logPrefix];
    [v19 description];
    v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v56 = self->_captureDevice;
    LODWORD(buf.value) = 138544386;
    *(&buf.value + 4) = v40;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = v41;
    v168 = 2112;
    v169 = v42;
    v170 = 2112;
    v171 = v56;
    v44 = "Error: %{public}@ <%p>: %@ Error creating capture input for image sensor: %@ (%@)";
    v45 = v38;
    v46 = OS_LOG_TYPE_INFO;
    goto LABEL_31;
  }

  if (v19)
  {
    v164 = *MEMORY[0x1E696AA08];
    v165 = v19;
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v58 = 101;
    v59 = v57;
LABEL_145:
    v66 = ARErrorWithCodeAndUserInfo(v58, v59);

    goto LABEL_146;
  }

  v63 = MEMORY[0x1E695E0F8];
  v64 = 101;
LABEL_129:
  v126 = ARErrorWithCodeAndUserInfo(v64, v63);
LABEL_135:
  v66 = v126;
LABEL_146:

LABEL_147:

  return v66;
}

- (id)_configurePhotoOutputForCaptureSession:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_photoOutput)
  {
    v5 = 0;
  }

  else
  {
    if (ARBackWidePhotoQualityPrioritizationOverride())
    {
      v6 = ARBackWidePhotoQualityPrioritizationOverride();
    }

    else
    {
      v7 = [(ARImageSensorSettings *)self->_settings videoFormat];
      v8 = [v7 isRecommendedForHighResolutionFrameCapturing];

      if (v8)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    v9 = _ARLogSensor_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [(ARImageSensor *)self logPrefix];
      v18 = 138544130;
      v19 = v11;
      v20 = 2048;
      v21 = self;
      v22 = 2112;
      v23 = v12;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Configuring photo output for max. photo quality prioritization: %ld", &v18, 0x2Au);
    }

    v13 = objc_opt_new();
    photoOutput = self->_photoOutput;
    self->_photoOutput = v13;

    [(AVCapturePhotoOutput *)self->_photoOutput setMaxPhotoQualityPrioritization:v6];
    if ([v4 canAddOutput:self->_photoOutput])
    {
      [v4 addOutput:self->_photoOutput];
      v15 = [(ARImageSensorSettings *)self->_settings videoFormat];
      -[AVCapturePhotoOutput setMaxPhotoDimensions:](self->_photoOutput, "setMaxPhotoDimensions:", [v15 maxPhotoDimensions]);

      v16 = [(AVCapturePhotoOutput *)self->_photoOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
      [(NSMutableArray *)self->_connections addObject:v16];

      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69874D8] code:-11861 userInfo:0];
    }

    if ([(ARImageSensorSettings *)self->_settings focusPixelBlurScoreDeliveryEnabled]&& [(AVCapturePhotoOutput *)self->_photoOutput isFocusPixelBlurScoreSupported])
    {
      [(AVCapturePhotoOutput *)self->_photoOutput setFocusPixelBlurScoreEnabled:1];
    }
  }

  return v5;
}

- (void)captureHighResolutionFrameWithPhotoSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(ARImageSensorSettings *)self->_settings videoFormat];
    v6 = [v7 defaultPhotoSettings];
  }

  [(AVCapturePhotoOutput *)self->_photoOutput capturePhotoWithSettings:v6 delegate:self];
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 pixelBuffer];
  if (!v7)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v17 = _MergedGlobals;
    v18 = _ARLogSensor_1();
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v45 = v22;
        v23 = "%{public}@ <%p>: %@ Failed to capture a high resolution frame.";
        v24 = v19;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_19:
        _os_log_impl(&dword_1C241C000, v24, v25, v23, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v21 = NSStringFromClass(v39);
      v22 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v45 = v22;
      v23 = "Error: %{public}@ <%p>: %@ Failed to capture a high resolution frame.";
      v24 = v19;
      v25 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    v37 = [(ARImageSensor *)self delegate];
    v28 = ARErrorWithCodeAndUserInfo(107, 0);
    [v37 sensor:self didFailWithError:v28];
    goto LABEL_21;
  }

  v8 = v7;
  Width = CVPixelBufferGetWidth(v7);
  Height = CVPixelBufferGetHeight(v8);
  v11 = self->_lastIntrinsicsImageResolution.width;
  v12 = self->_lastIntrinsicsImageResolution.height;
  if (v11 == Width && v12 == Height)
  {
    v40 = *&self->_anon_20[32];
    v41 = *&self->_anon_20[16];
    v42 = *self->_anon_20;
  }

  else
  {
    *&v14 = ARAdjustIntrinsicsForViewportSize(COERCE_FLOAT(*self->_anon_20), *&self->_anon_20[16], *&self->_anon_20[32], v11, v12, Width, Height);
    v41 = v15;
    v42 = v14;
    *&v40 = v16;
  }

  v26 = [v6 metadata];
  v43 = [v26 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];

  v27 = [v6 metadata];
  v28 = [v27 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];

  [v6 focusPixelBlurScore];
  CVBufferSetAttachment(v8, @"FocusPixelBlurScore", [MEMORY[0x1E696AD98] numberWithFloat:?], kCVAttachmentMode_ShouldPropagate);
  v29 = [v6 metadata];
  v30 = [v29 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

  v31 = ARCaptureLensFromMakerNotesDictionary(v30);
  v32 = [ARImageData alloc];
  v33 = [(ARImageSensor *)self captureFramesPerSecond];
  v34 = [(ARImageSensor *)self captureDevice];
  v35 = [(ARImageSensor *)self captureSession];
  if (v6)
  {
    [v6 timestamp];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v36 = v32;
  v37 = v43;
  v38 = [(ARImageData *)v36 initWithPixelBuffer:v8 captureFramePerSecond:v33 captureDevice:v34 captureSession:v35 timestamp:buf intrinsics:v43 exif:v42 tiff:v41 captureLens:*&v40, v28, v31];

  [(ARImageData *)v38 setHighResolution:1];
  [(ARImageData *)v38 setCalibrationData:self->_cameraCalibrationData];
  [ARImageSensor registerSignPostForImageData:v38];
  [(ARImageSensor *)self _dispatchImageData:v38];

LABEL_21:
}

- (id)configureCaptureSessionCalibration
{
  v57 = *MEMORY[0x1E69E9840];
  if (self->_calibrationOutput)
  {
    goto LABEL_2;
  }

  v5 = objc_alloc_init(MEMORY[0x1E6987068]);
  calibrationOutput = self->_calibrationOutput;
  self->_calibrationOutput = v5;

  if (![(AVCaptureSession *)self->_captureSession canAddOutput:self->_calibrationOutput])
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v11 = _MergedGlobals;
    v12 = _ARLogSensor_1();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v52 = v15;
        v53 = 2048;
        v54 = self;
        v55 = 2112;
        v56 = v16;
        v17 = "%{public}@ <%p>: %@ Cannot add calibration data output to the capture session";
        v18 = v13;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v18, v19, v17, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v15 = NSStringFromClass(v20);
      v16 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v52 = v15;
      v53 = 2048;
      v54 = self;
      v55 = 2112;
      v56 = v16;
      v17 = "Error: %{public}@ <%p>: %@ Cannot add calibration data output to the capture session";
      v18 = v13;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v2 = ARErrorWithCodeAndUserInfo(102, 0);
    goto LABEL_3;
  }

  [(AVCaptureSession *)self->_captureSession addOutputWithNoConnections:self->_calibrationOutput];
  v7 = _ARLogSensor_1();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v52 = v9;
    v53 = 2048;
    v54 = self;
    v55 = 2112;
    v56 = v10;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added calibration data output to the capture session", buf, 0x20u);
  }

  if (self->_calibrationConnection)
  {
    goto LABEL_10;
  }

  videoInput = self->_videoInput;
  v22 = *MEMORY[0x1E6986FA0];
  v23 = [(AVCaptureDeviceInput *)videoInput device];
  v24 = [v23 deviceType];
  v25 = [(AVCaptureDeviceInput *)self->_videoInput device];
  v26 = -[AVCaptureDeviceInput portsWithMediaType:sourceDeviceType:sourceDevicePosition:](videoInput, "portsWithMediaType:sourceDeviceType:sourceDevicePosition:", v22, v24, [v25 position]);
  v27 = [v26 firstObject];

  if (v27)
  {
    v28 = MEMORY[0x1E6987070];
    v50 = v27;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    v30 = [v28 connectionWithInputPorts:v29 output:self->_calibrationOutput];
    calibrationConnection = self->_calibrationConnection;
    self->_calibrationConnection = v30;

    if ([(AVCaptureSession *)self->_captureSession canAddConnection:self->_calibrationConnection])
    {
      [(NSMutableArray *)self->_connections addObject:self->_calibrationConnection];
      [(AVCaptureSession *)self->_captureSession addConnection:self->_calibrationConnection];
      v32 = _ARLogSensor_1();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v52 = v34;
        v53 = 2048;
        v54 = self;
        v55 = 2112;
        v56 = v35;
        _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added calibration data connection to the capture session", buf, 0x20u);
      }

LABEL_10:
      [(AVCaptureCameraCalibrationDataOutput *)self->_calibrationOutput setAlwaysDiscardsLateCameraCalibrationData:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.calibrationData.alwaysDiscardsLateData"]];
      [(AVCaptureCameraCalibrationDataOutput *)self->_calibrationOutput setDelegate:self callbackQueue:self->_captureQueue];
LABEL_2:
      v2 = 0;
      goto LABEL_3;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v43 = _MergedGlobals;
    v44 = _ARLogSensor_1();
    v38 = v44;
    if (v43 == 1)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v40 = NSStringFromClass(v45);
        v41 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v52 = v40;
        v53 = 2048;
        v54 = self;
        v55 = 2112;
        v56 = v41;
        v42 = "%{public}@ <%p>: %@ Cannot add calibration connection to capture session";
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v49 = objc_opt_class();
    v40 = NSStringFromClass(v49);
    v41 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v52 = v40;
    v53 = 2048;
    v54 = self;
    v55 = 2112;
    v56 = v41;
    v42 = "Error: %{public}@ <%p>: %@ Cannot add calibration connection to capture session";
LABEL_40:
    v46 = v38;
    v47 = OS_LOG_TYPE_INFO;
    goto LABEL_41;
  }

  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor reconfigure:];
  }

  v36 = _MergedGlobals;
  v37 = _ARLogSensor_1();
  v38 = v37;
  if (v36 != 1)
  {
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v48 = objc_opt_class();
    v40 = NSStringFromClass(v48);
    v41 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v52 = v40;
    v53 = 2048;
    v54 = self;
    v55 = 2112;
    v56 = v41;
    v42 = "Error: %{public}@ <%p>: %@ Cannot find a calibration port in the input added to the capture session";
    goto LABEL_40;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v52 = v40;
    v53 = 2048;
    v54 = self;
    v55 = 2112;
    v56 = v41;
    v42 = "%{public}@ <%p>: %@ Cannot find a calibration port in the input added to the capture session";
LABEL_35:
    v46 = v38;
    v47 = OS_LOG_TYPE_ERROR;
LABEL_41:
    _os_log_impl(&dword_1C241C000, v46, v47, v42, buf, 0x20u);
  }

LABEL_42:

  v2 = ARErrorWithCodeAndUserInfo(102, 0);

LABEL_3:

  return v2;
}

- (void)configureCaptureDevice
{
  v3 = [(ARImageSensor *)self captureDevice];
  [(ARImageSensor *)self configureFrameRateForDevice:v3];
  [(ARImageSensor *)self _configureCameraExposureForDevice:v3];
  [(ARImageSensor *)self _configureCameraWhiteBalanceForDevice:v3];
  [(ARImageSensor *)self _configureCameraFocusForDevice:v3];
  [(ARImageSensor *)self _configureImageControlModeForDevice:v3];
  [(ARImageSensor *)self configureGeometricDistortionCorrectionForDevice:v3];
}

- (void)updateCaptureDeviceFrameRate:(double)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(ARImageSensor *)self captureDevice];
  v19 = 0;
  v6 = [v5 lockForConfiguration:&v19];
  v7 = v19;

  if (!v6)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v10 = _MergedGlobals;
    v11 = _ARLogSession();
    v9 = v11;
    if (v10 == 1)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v21 = v13;
      v22 = 2048;
      v23 = self;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v7;
      v15 = "%{public}@ <%p>: %@ Encountered error updating capture device frame rate %@";
      v16 = v9;
      v17 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v18 = objc_opt_class();
      v13 = NSStringFromClass(v18);
      v14 = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v21 = v13;
      v22 = 2048;
      v23 = self;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v7;
      v15 = "Error: %{public}@ <%p>: %@ Encountered error updating capture device frame rate %@";
      v16 = v9;
      v17 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x2Au);

    goto LABEL_11;
  }

  v8 = [(ARImageSensor *)self captureDevice];
  [(ARImageSensor *)self _configureFrameRateForDevice:v8 frameRate:a3];

  v9 = [(ARImageSensor *)self captureDevice];
  [v9 unlockForConfiguration];
LABEL_11:
}

- (id)setActiveFormat
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(ARImageSensor *)self captureDevice];
  v31[0] = 0;
  v4 = [v3 lockForConfiguration:v31];
  v5 = v31[0];

  if (v4)
  {
    v6 = [(ARImageSensorSettings *)self->_settings videoFormat];
    v7 = [v6 deviceFormat];
    v8 = [(ARImageSensor *)self captureDevice];
    [v8 setActiveFormat:v7];

    v9 = [(ARImageSensor *)self captureDevice];
    v10 = [v9 deviceType];
    v11 = *MEMORY[0x1E6986940];
    LODWORD(v7) = v10 == *MEMORY[0x1E6986940];

    if (v7)
    {
      v12 = [(ARImageSensorSettings *)self->_settings videoFormat];
      v13 = [v12 depthDataFormat];
      v14 = [(ARImageSensor *)self captureDevice];
      [v14 setActiveDepthDataFormat:v13];
    }

    v15 = _ARLogSensor_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [(ARImageSensor *)self logPrefix];
      v19 = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v20 = [v19 description];
      *buf = 138544130;
      v33 = v17;
      v34 = 2048;
      v35 = self;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Active format selected: %@", buf, 0x2Au);
    }

    v21 = [(AVCaptureDevice *)self->_captureDevice deviceType];
    v22 = v21 == v11;

    if (v22)
    {
      v23 = _ARLogSensor_1();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [(ARImageSensor *)self logPrefix];
        v27 = [(AVCaptureDevice *)self->_captureDevice activeDepthDataFormat];
        v28 = [v27 description];
        *buf = 138544130;
        v33 = v25;
        v34 = 2048;
        v35 = self;
        v36 = 2112;
        v37 = v26;
        v38 = 2112;
        v39 = v28;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Active depth data format selected: %@", buf, 0x2Au);
      }
    }

    v29 = [(ARImageSensor *)self captureDevice];
    [v29 unlockForConfiguration];
  }

  return v5;
}

- (void)configureFrameRateForDevice:(id)a3
{
  settings = self->_settings;
  v10 = a3;
  v5 = [(ARImageSensorSettings *)settings videoFormat];
  v6 = [v5 frameRatesByPowerUsage];
  v7 = [v6 objectAtIndexedSubscript:{-[ARImageSensor powerUsage](self, "powerUsage")}];
  [v7 doubleValue];
  v9 = v8;

  [(ARImageSensor *)self _configureFrameRateForDevice:v10 frameRate:v9];
}

- (void)_configureFrameRateForDevice:(id)a3 frameRate:(double)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  CMTimeMake(&v22, 1, a4);
  v21 = v22;
  [v6 setActiveVideoMinFrameDuration:&v21];
  CMTimeMake(&v20, 1, a4);
  v21 = v20;
  [v6 setActiveVideoMaxFrameDuration:&v21];
  [(ARImageSensor *)self setCaptureFramesPerSecond:a4];
  v7 = _ARLogSensor_1();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(ARImageSensor *)self logPrefix];
    *buf = 138544130;
    v24 = v9;
    v25 = 2048;
    v26 = self;
    v27 = 2112;
    v28 = v10;
    v29 = 2048;
    v30 = a4;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARImageSensor Capture frames per second set to %f", buf, 0x2Au);
  }

  v11 = [v6 deviceType];
  v12 = v11 == *MEMORY[0x1E6986940];

  if (v12)
  {
    CMTimeMake(&v19, 1, (a4 * 0.25));
    v18 = v19;
    [v6 setActiveDepthDataMinFrameDuration:&v18];
    v13 = _ARLogSensor_1();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [(ARImageSensor *)self logPrefix];
      if (v6)
      {
        [v6 activeDepthDataMinFrameDuration];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      Seconds = CMTimeGetSeconds(&v18);
      *buf = 138544130;
      v24 = v15;
      v25 = 2048;
      v26 = self;
      v27 = 2112;
      v28 = v16;
      v29 = 2048;
      v30 = Seconds;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Depth min frame duration changed to: %f", buf, 0x2Au);
    }
  }
}

- (void)_configureCameraExposureForDevice:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 position] != 1)
  {
    if ([v4 position] == 2)
    {
      v7 = &ARFrontFacingImageSensorISOUserDefaultsKey;
      v8 = &ARFrontFacingImageSensorExposureDurationUserDefaultsKey;
      goto LABEL_9;
    }

LABEL_7:
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v5 = [v4 deviceType];
  v6 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v5);

  if ((v6 & 1) == 0)
  {
    v9 = [v4 deviceType];
    v10 = *MEMORY[0x1E6986948];

    if (v9 == v10)
    {
      v7 = &ARBackFacingUltraWideImageSensorISOUserDefaultsKey;
      v8 = &ARBackFacingUltraWideImageSensorExposureDurationUserDefaultsKey;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = &ARBackFacingWideImageSensorISOUserDefaultsKey;
  v8 = &ARBackFacingWideImageSensorExposureDurationUserDefaultsKey;
LABEL_9:
  v12 = [ARKitUserDefaults numberForKey:*v8];
  v11 = [ARKitUserDefaults numberForKey:*v7];
LABEL_10:
  if (v12 | v11)
  {
    v48 = **&MEMORY[0x1E6986988];
    if (v12)
    {
      [v12 doubleValue];
      CMTimeMake(&v48, (v13 * 1000.0), 1000000);
    }

    if (v11)
    {
      [v11 floatValue];
      v15 = v14;
    }

    else
    {
      v15 = *MEMORY[0x1E6986990];
    }

    objc_initWeak(&location, v4);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __51__ARImageSensor__configureCameraExposureForDevice___block_invoke;
    v46[3] = &unk_1E817BCE0;
    v46[4] = self;
    objc_copyWeak(&v47, &location);
    v45 = v48;
    [v4 setExposureModeCustomWithDuration:&v45 ISO:v46 completionHandler:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v48.value), v15))}];
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  else if ([v4 isExposureModeSupported:2])
  {
    if ([v4 isExposurePointOfInterestSupported])
    {
      [v4 setExposurePointOfInterest:{0.5, 0.5}];
      v16 = _ARLogSensor_1();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [(ARImageSensor *)self logPrefix];
        [v4 exposurePointOfInterest];
        v21 = v20;
        [v4 exposurePointOfInterest];
        LODWORD(location.value) = 138544386;
        *(&location.value + 4) = v18;
        LOWORD(location.flags) = 2048;
        *(&location.flags + 2) = self;
        HIWORD(location.epoch) = 2112;
        v50 = v19;
        v51 = 2048;
        v52 = v21;
        v53 = 2048;
        v54 = v22;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Exposure point of interest set at %f, %f", &location, 0x34u);
      }
    }

    [v4 setExposureMode:2];
    v23 = _ARLogSensor_1();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [(ARImageSensor *)self logPrefix];
      LODWORD(location.value) = 138543874;
      *(&location.value + 4) = v25;
      LOWORD(location.flags) = 2048;
      *(&location.flags + 2) = self;
      HIWORD(location.epoch) = 2112;
      v50 = v26;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Exposure mode set to AVCaptureExposureModeContinuousAutoExposure", &location, 0x20u);
    }

    memset(&v48, 0, sizeof(v48));
    CMTimeMake(&v48, 1, 60);
    v27 = [v4 activeFormat];
    v28 = v27;
    if (v27)
    {
      [v27 maxExposureDuration];
    }

    else
    {
      memset(&location, 0, sizeof(location));
    }

    v44 = v48;
    v29 = CMTimeCompare(&v44, &location) < 1;

    if (v29)
    {
      location = v48;
      [v4 setActiveMaxExposureDuration:&location];
      v30 = _ARLogSensor_1();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = [(ARImageSensor *)self logPrefix];
        if (v4)
        {
          [v4 activeMaxExposureDuration];
        }

        else
        {
          memset(&location, 0, sizeof(location));
        }

        Seconds = CMTimeGetSeconds(&location);
        LODWORD(location.value) = 138544130;
        *(&location.value + 4) = v38;
        LOWORD(location.flags) = 2048;
        *(&location.flags + 2) = self;
        HIWORD(location.epoch) = 2112;
        v50 = v39;
        v51 = 2048;
        v52 = Seconds;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Max exposure set to %f", &location, 0x2Au);
      }
    }

    else
    {
      v30 = _ARLogSensor_1();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = [(ARImageSensor *)self logPrefix];
        location = v48;
        v34 = CMTimeGetSeconds(&location);
        v35 = [v4 activeFormat];
        v36 = v35;
        if (v35)
        {
          [v35 maxExposureDuration];
        }

        else
        {
          memset(&location, 0, sizeof(location));
        }

        v40 = CMTimeGetSeconds(&location);
        LODWORD(location.value) = 138544386;
        *(&location.value + 4) = v32;
        LOWORD(location.flags) = 2048;
        *(&location.flags + 2) = self;
        HIWORD(location.epoch) = 2112;
        v50 = v33;
        v51 = 2048;
        v52 = v34;
        v53 = 2048;
        v54 = v40;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Max exposure out of range: %f > %f", &location, 0x34u);
      }
    }
  }

  if ([(ARImageSensorSettings *)self->_settings videoHDRAllowed])
  {
    [v4 setAutomaticallyAdjustsVideoHDREnabled:1];
  }

  else
  {
    [v4 setAutomaticallyAdjustsVideoHDREnabled:0];
    v42 = [v4 activeFormat];
    v43 = [v42 isVideoHDRSupported];

    if (v43)
    {
      [v4 setVideoHDREnabled:0];
    }
  }
}

void __51__ARImageSensor__configureCameraExposureForDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSensor_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = [v5 logPrefix];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained exposureDuration];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    Seconds = CMTimeGetSeconds(&v12);
    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 ISO];
    LODWORD(v12.value) = 138544386;
    *(&v12.value + 4) = v4;
    LOWORD(v12.flags) = 2048;
    *(&v12.flags + 2) = v5;
    HIWORD(v12.epoch) = 2112;
    v13 = v6;
    v14 = 2048;
    v15 = Seconds;
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Exposure duration set at %f, ISO %f", &v12, 0x34u);
  }
}

- (void)_configureCameraWhiteBalanceForDevice:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 position] == 1)
  {
    v5 = [v4 deviceType];
    v6 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v5);

    if (v6)
    {
      v7 = &ARBackFacingWideImageSensorWhiteBalanceUserDefaultsKey;
      goto LABEL_9;
    }

    v8 = [v4 deviceType];
    v9 = *MEMORY[0x1E6986948];

    if (v8 != v9)
    {
LABEL_7:
      v10 = 0;
      goto LABEL_21;
    }

    v7 = &ARBackFacingUltraWideImageSensorWhiteBalanceUserDefaultsKey;
  }

  else
  {
    if ([v4 position] != 2)
    {
      goto LABEL_7;
    }

    v7 = &ARFrontFacingImageSensorWhiteBalanceUserDefaultsKey;
  }

LABEL_9:
  v11 = [ARKitUserDefaults objectForKey:*v7];
  v10 = v11;
  if (v11)
  {
    v12 = [v11 componentsSeparatedByString:{@", "}];
    if ([v12 count]== 3)
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      [v13 floatValue];
      v15 = v14;

      v16 = [v12 objectAtIndexedSubscript:1];
      [v16 floatValue];
      v18 = v17;

      v19 = [v12 objectAtIndexedSubscript:2];
      [v19 floatValue];
      v21 = v20;

      objc_initWeak(location, v4);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __55__ARImageSensor__configureCameraWhiteBalanceForDevice___block_invoke;
      v37[3] = &unk_1E817BD08;
      objc_copyWeak(&v38, location);
      v37[4] = self;
      LODWORD(v22) = v15;
      LODWORD(v23) = v18;
      LODWORD(v24) = v21;
      [v4 setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains:v37 completionHandler:{v22, v23, v24}];
      objc_destroyWeak(&v38);
      objc_destroyWeak(location);
LABEL_24:

      goto LABEL_25;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v25 = _MergedGlobals;
    v26 = _ARLogSensor_1();
    v27 = v26;
    if (v25 == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [(ARImageSensor *)self logPrefix];
        *location = 138544130;
        *&location[4] = v29;
        v40 = 2048;
        v41 = self;
        v42 = 2112;
        v43 = v30;
        v44 = 2048;
        v45 = [v12 count];
        _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Custom white balance user defaults does not contain 3 values as expected (number of values found: %tu) ", location, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [(ARImageSensor *)self logPrefix];
      *location = 138544130;
      *&location[4] = v32;
      v40 = 2048;
      v41 = self;
      v42 = 2112;
      v43 = v33;
      v44 = 2048;
      v45 = [v12 count];
      _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Custom white balance user defaults does not contain 3 values as expected (number of values found: %tu) ", location, 0x2Au);
    }
  }

LABEL_21:
  if ([v4 isWhiteBalanceModeSupported:2])
  {
    [v4 setWhiteBalanceMode:2];
    v12 = _ARLogSensor_1();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = [(ARImageSensor *)self logPrefix];
      *location = 138543874;
      *&location[4] = v35;
      v40 = 2048;
      v41 = self;
      v42 = 2112;
      v43 = v36;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Continuous auto white balance enabled", location, 0x20u);
    }

    goto LABEL_24;
  }

LABEL_25:
}

void __55__ARImageSensor__configureCameraWhiteBalanceForDevice___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceWhiteBalanceGains];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = _ARLogSensor_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 32);
    v13 = [v12 logPrefix];
    v14 = 138544642;
    v15 = v11;
    v16 = 2048;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2048;
    v21 = v4;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v8;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Custom white balance gains set at %f, %f, %f", &v14, 0x3Eu);
  }
}

- (void)_configureCameraFocusForDevice:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ARLogSensor_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(ARImageSensor *)self logPrefix];
    v9 = [v4 activeFormat];
    *buf = 138544130;
    v35 = v7;
    v36 = 2048;
    v37 = self;
    v38 = 2112;
    v39 = v8;
    v40 = 2048;
    v41 = COERCE_DOUBLE([v9 autoFocusSystem]);
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Auto focus system: %li", buf, 0x2Au);
  }

  if ([v4 position] != 1)
  {
    v10 = _ARLogSensor_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v35 = v12;
      v36 = 2048;
      v37 = self;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Focus is only configured for back facing image sensor", buf, 0x20u);
    }

    goto LABEL_9;
  }

  if ([(ARImageSensorSettings *)self->_settings autoFocusEnabled])
  {
    if ([v4 isFocusModeSupported:1])
    {
      [v4 setFocusMode:1];
      [(ARImageSensor *)self setRunningSingleShotAutoFocus:1];
    }

    else
    {
      [(ARImageSensor *)self enableAutoFocusForDevice:v4];
    }

    goto LABEL_23;
  }

  if (![v4 isLockingFocusWithCustomLensPositionSupported])
  {
    v10 = _ARLogSensor_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v35 = v22;
      v36 = 2048;
      v37 = self;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Unable to lock lens position", buf, 0x20u);
    }

LABEL_9:

    goto LABEL_23;
  }

  [(ARImageSensor *)self defaultLensPosition];
  v15 = v14;
  if ([v4 position] == 1 && (objc_msgSend(v4, "deviceType"), v16 = objc_claimAutoreleasedReturnValue(), v17 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v16), v16, v17))
  {
    v18 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.wide.lensPosition"];
    v19 = v18;
    if (v18)
    {
      [v18 floatValue];
      v15 = v20;
    }
  }

  else
  {
    v19 = 0;
  }

  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v24 = _ARLogSensor_1();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [(ARImageSensor *)self logPrefix];
    *buf = 138544130;
    v35 = v26;
    v36 = 2048;
    v37 = self;
    v38 = 2112;
    v39 = v27;
    v40 = 2048;
    v41 = v15;
    _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Setting lens position to %f", buf, 0x2Au);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __48__ARImageSensor__configureCameraFocusForDevice___block_invoke;
  v29[3] = &unk_1E817BD30;
  v29[4] = self;
  objc_copyWeak(&v30, &from);
  objc_copyWeak(&v31, &location);
  *&v28 = v15;
  [v4 setFocusModeLockedWithLensPosition:v29 completionHandler:v28];
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

LABEL_23:
}

void __48__ARImageSensor__configureCameraFocusForDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSensor_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained logPrefix];
    v8 = objc_loadWeakRetained((a1 + 48));
    [v8 lensPosition];
    v10 = 138544130;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Lens position set at %f", &v10, 0x2Au);
  }
}

- (void)_configureImageControlModeForDevice:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isImageControlModeSupported:1])
  {
    [v4 setAutomaticallyAdjustsImageControlMode:0];
    [v4 setImageControlMode:1];
  }

  v5 = _ARLogSensor_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(ARImageSensor *)self logPrefix];
    v9 = 138544386;
    v10 = v7;
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    v15 = 1024;
    v16 = [v4 automaticallyAdjustsImageControlMode];
    v17 = 2048;
    v18 = [v4 imageControlMode];
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Capture device image control mode: %i, %li", &v9, 0x30u);
  }
}

- (void)configureGeometricDistortionCorrectionForDevice:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 position] == 2)
  {
    v5 = _ARLogSensor_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [(ARImageSensor *)self logPrefix];
      v16 = 138543874;
      v17 = v7;
      v18 = 2048;
      v19 = self;
      v20 = 2112;
      v21 = v8;
      v9 = "%{public}@ <%p>: %@ Configuring geometric distortion correction on front facing camera is not supported";
LABEL_11:
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, v9, &v16, 0x20u);
LABEL_12:
    }
  }

  else if ([v4 isGeometricDistortionCorrectionSupported])
  {
    v10 = [(ARImageSensor *)self internalSettings];
    [v4 setGeometricDistortionCorrectionEnabled:{objc_msgSend(v10, "backFacingCameraGeometricDistortionCorrectionEnabled")}];

    v5 = _ARLogSensor_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v7 = NSStringFromClass(v11);
      v8 = [(ARImageSensor *)self logPrefix];
      v12 = [(ARImageSensor *)self internalSettings];
      v13 = [v12 backFacingCameraGeometricDistortionCorrectionEnabled];
      v14 = @"disabled";
      v16 = 138544130;
      v18 = 2048;
      v17 = v7;
      if (v13)
      {
        v14 = @"enabled";
      }

      v19 = self;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Capture device geometric distortion correction: %@", &v16, 0x2Au);

      goto LABEL_12;
    }
  }

  else
  {
    v5 = _ARLogSensor_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v7 = NSStringFromClass(v15);
      v8 = [(ARImageSensor *)self logPrefix];
      v16 = 138543874;
      v17 = v7;
      v18 = 2048;
      v19 = self;
      v20 = 2112;
      v21 = v8;
      v9 = "%{public}@ <%p>: %@ Device doesn't support geometric distortion correction";
      goto LABEL_11;
    }
  }
}

- (void)enableAutoFocusForDevice:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  captureDevice = self->_captureDevice;
  v49 = 0;
  v6 = [(AVCaptureDevice *)captureDevice lockForConfiguration:&v49];
  v7 = v49;
  if (!v6)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v22 = _MergedGlobals;
    v23 = _ARLogSensor_1();
    v24 = v23;
    if (v22 == 1)
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [(ARImageSensor *)self logPrefix];
      v28 = [v7 description];
      *buf = 138544130;
      v51 = v26;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v27;
      v56 = 2112;
      v57 = v28;
      v29 = "%{public}@ <%p>: %@ Unable to lock capture device to enable auto focus: %@";
      v30 = v24;
      v31 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      v36 = objc_opt_class();
      v26 = NSStringFromClass(v36);
      v27 = [(ARImageSensor *)self logPrefix];
      v28 = [v7 description];
      *buf = 138544130;
      v51 = v26;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v27;
      v56 = 2112;
      v57 = v28;
      v29 = "Error: %{public}@ <%p>: %@ Unable to lock capture device to enable auto focus: %@";
      v30 = v24;
      v31 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v30, v31, v29, buf, 0x2Au);

    goto LABEL_41;
  }

  if ([v4 isFocusPointOfInterestSupported])
  {
    [v4 setFocusPointOfInterest:{0.5, 0.5}];
    v8 = _ARLogSensor_1();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [(ARImageSensor *)self logPrefix];
      [v4 focusPointOfInterest];
      v13 = v12;
      [v4 focusPointOfInterest];
      *buf = 138544386;
      v51 = v10;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v11;
      v56 = 2048;
      v57 = v13;
      v58 = 2048;
      v59 = v14;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Focus point of interest at at %f, %f", buf, 0x34u);
    }
  }

  if (![ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.wide.smoothAutoFocus"])
  {
    v15 = _ARLogSensor_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v17 = NSStringFromClass(v32);
      v18 = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v51 = v17;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v18;
      v56 = 2112;
      v57 = @"disabled";
      v19 = "%{public}@ <%p>: %@ Smooth auto focus %@ by user defaults";
      v20 = v15;
      v21 = 42;
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([v4 isSmoothAutoFocusSupported])
  {
    [v4 setSmoothAutoFocusEnabled:1];
    v15 = _ARLogSensor_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v51 = v17;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v18;
      v19 = "%{public}@ <%p>: %@ Smooth auto focus enabled";
      v20 = v15;
      v21 = 32;
LABEL_17:
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

LABEL_19:
  v24 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.imagesensor.back.wide.autoFocusRange"];
  if (!v24)
  {
    goto LABEL_36;
  }

  v33 = [v4 deviceType];
  v34 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v33);

  if (!v34)
  {
    goto LABEL_36;
  }

  if (([(__CFString *)v24 isEqualToString:@"near"]& 1) != 0)
  {
    v35 = 1;
  }

  else if (([(__CFString *)v24 isEqualToString:@"far"]& 1) != 0)
  {
    v35 = 2;
  }

  else
  {

    v35 = 0;
    v24 = @"none";
  }

  if ([v4 isAutoFocusRangeRestrictionSupported])
  {
    [v4 setAutoFocusRangeRestriction:v35];
    v37 = _ARLogSensor_1();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v51 = v39;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v40;
      v56 = 2112;
      v57 = v24;
      v41 = "%{public}@ <%p>: %@ Focus range restriction set to %@";
      v42 = v37;
      v43 = 42;
LABEL_34:
      _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_INFO, v41, buf, v43);
    }
  }

  else
  {
    v37 = _ARLogSensor_1();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v39 = NSStringFromClass(v44);
      v40 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v51 = v39;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v40;
      v41 = "%{public}@ <%p>: %@ Device does not support auto focus range restriction";
      v42 = v37;
      v43 = 32;
      goto LABEL_34;
    }
  }

LABEL_36:
  if ([v4 isFocusModeSupported:2])
  {
    [v4 setFocusMode:2];
    v45 = _ARLogSensor_1();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v51 = v47;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v48;
      _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Continuous auto focus enabled", buf, 0x20u);
    }
  }

  [v4 unlockForConfiguration];
LABEL_41:
}

- (id)_configureVisionDataOutputForSession:(id)a3
{
  v115[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_visionDataOutput)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  v7 = objc_opt_new();
  visionDataOutput = self->_visionDataOutput;
  self->_visionDataOutput = v7;

  if ([v4 canAddOutput:self->_visionDataOutput])
  {
    [v4 addOutputWithNoConnections:self->_visionDataOutput];
  }

  if (self->_visionDataConnection)
  {
LABEL_9:
    v9 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];

    if (v9)
    {
      v10 = _ARLogSensor_1();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [(ARImageSensor *)self logPrefix];
        v14 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v15 = [v14 description];
        *buf = 138544130;
        v108 = v12;
        v109 = 2048;
        v110 = self;
        v111 = 2112;
        v112 = v13;
        v113 = 2112;
        v114 = v15;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Setting vision data output parameters from dictionary: %@", buf, 0x2Au);
      }

      v16 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v17 = [v16 valueForKey:*MEMORY[0x1E698BD90]];
      v18 = [v17 BOOLValue];

      v19 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v20 = [v19 valueForKey:*MEMORY[0x1E698BDA0]];
      [v20 floatValue];
      v22 = v21;

      v23 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v24 = [v23 valueForKey:*MEMORY[0x1E698BDB8]];
      v25 = [v24 BOOLValue];

      v26 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v27 = [v26 valueForKey:*MEMORY[0x1E698BDC0]];
      v28 = [v27 integerValue];

      v29 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v30 = [v29 valueForKey:*MEMORY[0x1E698BDC8]];
      [v30 floatValue];
      v32 = v31;

      v33 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v34 = [v33 valueForKey:*MEMORY[0x1E698BDE0]];
      [v34 floatValue];
      v36 = v35;

      v37 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v38 = [v37 valueForKey:*MEMORY[0x1E698BDE8]];
      v39 = [v38 integerValue];

      v40 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v41 = [v40 valueForKey:*MEMORY[0x1E698BDF0]];
      [v41 floatValue];
      v43 = v42;

      v44 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v45 = [v44 valueForKey:*MEMORY[0x1E698BDF8]];
      [v45 floatValue];
      v47 = v46;

      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setFeatureBinningEnabled:v18];
      LODWORD(v48) = v22;
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setKeypointDetectionThreshold:v48];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setFeatureOrientationAssignmentEnabled:v25];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setGaussianPyramidOctavesCount:v28];
      LODWORD(v49) = v32;
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setGaussianPyramidBaseOctaveDownscalingFactor:v49];
      CMTimeMakeWithSeconds(&v106, v36, 1000);
      v50 = self->_visionDataOutput;
      v105 = v106;
      [(AVCaptureVisionDataOutput *)v50 setMaxBurstDuration:&v105];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setMaxKeypointsCount:v39];
      [(ARImageSensor *)self _createCMTimeFractionFromDecimalDuration:v43];
      v51 = self->_visionDataOutput;
      v105 = v104[1];
      [(AVCaptureVisionDataOutput *)v51 setMinBurstFrameDuration:&v105];
      CMTimeMakeWithSeconds(v104, v47, 1000);
      v52 = self->_visionDataOutput;
      v105 = v104[0];
      [(AVCaptureVisionDataOutput *)v52 setMinFrameDuration:&v105];
      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isDynamicThresholdingSupported])
      {
        v53 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v54 = [v53 valueForKey:*MEMORY[0x1E698BD88]];
        -[AVCaptureVisionDataOutput setDynamicThresholdingEnabled:](self->_visionDataOutput, "setDynamicThresholdingEnabled:", [v54 BOOLValue]);
      }

      v55 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v56 = [v55 valueForKey:*MEMORY[0x1E698BD98]];
      v57 = [v56 integerValue];

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isKeypointDetectionFlowTypeSupported:v57])
      {
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setKeypointDetectionFlowType:v57];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSubPixelThresholdSupported])
      {
        v58 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v59 = [v58 valueForKey:*MEMORY[0x1E698BE18]];
        -[AVCaptureVisionDataOutput setSubPixelThreshold:](self->_visionDataOutput, "setSubPixelThreshold:", [v59 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isFeatureMatchingSupported])
      {
        v60 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v61 = [v60 valueForKey:*MEMORY[0x1E698BDB0]];
        -[AVCaptureVisionDataOutput setFeatureMatchingEnabled:](self->_visionDataOutput, "setFeatureMatchingEnabled:", [v61 BOOLValue]);

        v62 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v63 = [v62 valueForKey:*MEMORY[0x1E698BDA8]];
        -[AVCaptureVisionDataOutput setFeatureMatchingDescriptorSize:](self->_visionDataOutput, "setFeatureMatchingDescriptorSize:", [v63 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isOrientationDistanceThresholdSupported])
      {
        v64 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v65 = [v64 valueForKey:*MEMORY[0x1E698BE00]];
        [v65 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setOrientationDistanceThreshold:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSigmaDistanceThresholdSupported])
      {
        v66 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v67 = [v66 valueForKey:*MEMORY[0x1E698BE08]];
        [v67 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setSigmaDistanceThreshold:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSquareDistanceDisparityFractionSupported])
      {
        v68 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v69 = [v68 valueForKey:*MEMORY[0x1E698BE10]];
        [v69 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setSquareDistanceDisparityFraction:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isHammingDistanceThresholdSupported])
      {
        v70 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v71 = [v70 valueForKey:*MEMORY[0x1E698BDD0]];
        -[AVCaptureVisionDataOutput setHammingDistanceThreshold:](self->_visionDataOutput, "setHammingDistanceThreshold:", [v71 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isLACCConfigAndMetadataSupported])
      {
        v72 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v73 = [v72 valueForKey:*MEMORY[0x1E698BDD8]];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setLaccConfigAndMetadata:v73];
      }
    }

    goto LABEL_2;
  }

  v74 = [(AVCaptureDeviceInput *)self->_videoInput device];
  v75 = [v74 deviceType];

  if (v75 == *MEMORY[0x1E6986908] || v75 == *MEMORY[0x1E6986900] || v75 == *MEMORY[0x1E6986938])
  {
    v78 = *MEMORY[0x1E6986950];

    v75 = v78;
  }

  videoInput = self->_videoInput;
  v80 = [(AVCaptureDeviceInput *)videoInput device];
  v81 = -[AVCaptureDeviceInput portsWithMediaType:sourceDeviceType:sourceDevicePosition:](videoInput, "portsWithMediaType:sourceDeviceType:sourceDevicePosition:", *MEMORY[0x1E6986FB0], v75, [v80 position]);
  v82 = [v81 firstObject];

  if (v82)
  {
    v83 = MEMORY[0x1E6987070];
    v115[0] = v82;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:1];
    v85 = [v83 connectionWithInputPorts:v84 output:self->_visionDataOutput];
    visionDataConnection = self->_visionDataConnection;
    self->_visionDataConnection = v85;

    if ([(AVCaptureSession *)self->_captureSession canAddConnection:self->_visionDataConnection])
    {
      [(NSMutableArray *)self->_connections addObject:self->_visionDataConnection];
      [(AVCaptureSession *)self->_captureSession addConnection:self->_visionDataConnection];

      goto LABEL_9;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v93 = _MergedGlobals;
    v94 = _ARLogSensor_1();
    v89 = v94;
    if (v93 == 1)
    {
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v95 = objc_opt_class();
        v96 = NSStringFromClass(v95);
        v97 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v108 = v96;
        v109 = 2048;
        v110 = self;
        v111 = 2112;
        v112 = v97;
        _os_log_impl(&dword_1C241C000, v89, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add vision data connection to capture session", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      v101 = objc_opt_class();
      v102 = NSStringFromClass(v101);
      v103 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v108 = v102;
      v109 = 2048;
      v110 = self;
      v111 = 2112;
      v112 = v103;
      _os_log_impl(&dword_1C241C000, v89, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add vision data connection to capture session", buf, 0x20u);
    }
  }

  else
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v87 = _MergedGlobals;
    v88 = _ARLogSensor_1();
    v89 = v88;
    if (v87 == 1)
    {
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v90 = objc_opt_class();
        v91 = NSStringFromClass(v90);
        v92 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v108 = v91;
        v109 = 2048;
        v110 = self;
        v111 = 2112;
        v112 = v92;
        _os_log_impl(&dword_1C241C000, v89, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find a vision data port in the input added to the capture session", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v98 = objc_opt_class();
      v99 = NSStringFromClass(v98);
      v100 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v108 = v99;
      v109 = 2048;
      v110 = self;
      v111 = 2112;
      v112 = v100;
      _os_log_impl(&dword_1C241C000, v89, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot find a vision data port in the input added to the capture session", buf, 0x20u);
    }
  }

  v5 = ARErrorWithCodeAndUserInfo(102, 0);

LABEL_3:

  return v5;
}

- (void)enableContinuousAutoFocusIfPossible
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(ARImageSensor *)self runningSingleShotAutoFocus]&& [(AVCaptureDevice *)self->_captureDevice focusMode]== AVCaptureFocusModeLocked)
  {
    [(ARImageSensor *)self setRunningSingleShotAutoFocus:0];
    v3 = _ARLogSensor_1();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = [(ARImageSensor *)self logPrefix];
      v7 = 138543874;
      v8 = v5;
      v9 = 2048;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Enabling continuous auto focus after single shot auto focus is locked.", &v7, 0x20u);
    }

    [(ARImageSensor *)self enableAutoFocusForDevice:self->_captureDevice];
  }
}

- (void)trackExposureTargetOffsetIfNeededForImageData:(id)a3 shouldDrop:(BOOL *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(ARImageSensorSettings *)self->_settings dropsInitialFramesOutsideExposureTargetOffsetThreshold]|| self->_reachedExposureTargetOffsetThreshold)
  {
    goto LABEL_9;
  }

  [v6 timestamp];
  [v6 exposureTargetOffset];
  kdebug_trace();
  ++self->_initialImageDatasCounter;
  [v6 exposureTargetOffset];
  v8 = v7;
  [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
  if (v8 < v9 || ([v6 exposureTargetOffset], v11 = v10, -[ARImageSensorSettings positiveExposureTargetOffsetThreshold](self->_settings, "positiveExposureTargetOffsetThreshold"), v11 > v12))
  {
    initialImageDatasCounter = self->_initialImageDatasCounter;
    if (initialImageDatasCounter <= [(ARImageSensorSettings *)self->_settings maximumNumberOfInitialFramesDropped])
    {
      [v6 exposureTargetOffset];
      v25 = v24;
      [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
      if (v25 >= v26)
      {
        [v6 exposureTargetOffset];
        v35 = v34;
        [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
        if (v35 <= v36)
        {
LABEL_21:
          if (!a4)
          {
            goto LABEL_12;
          }

          v23 = 1;
          goto LABEL_11;
        }

        v27 = _ARLogSensor_1();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v37 = objc_opt_class();
          v29 = NSStringFromClass(v37);
          [v6 exposureTargetOffset];
          v39 = v38;
          [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
          v41 = 138544130;
          v42 = v29;
          v43 = 2048;
          v44 = self;
          v45 = 2048;
          v46 = v39;
          v47 = 2048;
          v48 = v40;
          v33 = "%{public}@ <%p>: Dropping initial frame due to absolute exposureTargetOffset value being above positive threshold: exposureTargetOffset=%f, positiveExposureTargetOffsetThreshold=%f";
          goto LABEL_19;
        }
      }

      else
      {
        v27 = _ARLogSensor_1();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          [v6 exposureTargetOffset];
          v31 = v30;
          [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
          v41 = 138544130;
          v42 = v29;
          v43 = 2048;
          v44 = self;
          v45 = 2048;
          v46 = v31;
          v47 = 2048;
          v48 = v32;
          v33 = "%{public}@ <%p>: Dropping initial frame due to absolute exposureTargetOffset value being below negative threshold: exposureTargetOffset=%f, negativeExposureTargetOffsetThreshold=%f";
LABEL_19:
          _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_INFO, v33, &v41, 0x2Au);
        }
      }

      goto LABEL_21;
    }
  }

  v14 = _ARLogSensor_1();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = self->_initialImageDatasCounter;
    [v6 exposureTargetOffset];
    v19 = v18;
    [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
    v21 = v20;
    [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
    v41 = 138544642;
    v42 = v16;
    v43 = 2048;
    v44 = self;
    v45 = 2048;
    v46 = *&v17;
    v47 = 2048;
    v48 = v19;
    v49 = 2048;
    v50 = v21;
    v51 = 2048;
    v52 = v22;
    _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Finished dropping initial frames after %lu frames due to absolute exposureTargetOffset value being below or above threshold: exposureTargetOffset=%f, negativeExposureTargetOffsetThreshold=%f, positiveExposureTargetOffsetThreshold=%f", &v41, 0x3Eu);
  }

  self->_reachedExposureTargetOffsetThreshold = 1;
LABEL_9:
  if (a4)
  {
    v23 = 0;
LABEL_11:
    *a4 = v23;
  }

LABEL_12:
}

- (void)setInterrupted:(BOOL)a3
{
  if (self->_interrupted != a3)
  {
    self->_interrupted = a3;
    if (a3)
    {
      [(ARImageSensor *)self resetExposureTracking];
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_createCMTimeFractionFromDecimalDuration:(SEL)a3
{
  [&unk_1F4255BF0 doubleValue];
  if (fabs(a4 + -1.0 / v6) >= 0.00001)
  {

    return CMTimeMakeWithSeconds(retstr, a4, 1000);
  }

  else
  {
    v7 = [&unk_1F4255BF0 intValue];

    return CMTimeMake(retstr, 1, v7);
  }
}

+ (float)defaultLensPosition
{
  if (defaultLensPosition_onceToken != -1)
  {
    +[ARImageSensor defaultLensPosition];
  }

  return *&defaultLensPosition_lensPosition;
}

uint64_t __36__ARImageSensor_defaultLensPosition__block_invoke()
{
  result = MGIsDeviceOneOfType();
  if (result)
  {
    v1 = 1062836634;
  }

  else
  {
    result = MGIsDeviceOneOfType();
    if (!result)
    {
      return result;
    }

    v1 = 1061997773;
  }

  defaultLensPosition_lensPosition = v1;
  return result;
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v7 = [a5 output];
  videoOutput = self->_videoOutput;

  if (v7 == videoOutput)
  {
    v9 = [ARImageData alloc];
    v10 = [(ARImageSensor *)self captureFramesPerSecond];
    v11 = [(ARImageSensor *)self captureDevice];
    v12 = [(ARImageSensor *)self captureSession];
    v21 = [(ARImageData *)v9 initWithSampleBuffer:a4 captureFramePerSecond:v10 captureDevice:v11 captureSession:v12];

    [(ARImageData *)v21 cameraIntrinsics];
    *&self->_anon_20[8] = v13;
    *&self->_anon_20[24] = v14;
    *self->_anon_20 = v15;
    *&self->_anon_20[16] = v16;
    *&self->_anon_20[40] = v17;
    *&self->_anon_20[32] = v18;
    [(ARImageData *)v21 imageResolution];
    self->_lastIntrinsicsImageResolution.width = v19;
    self->_lastIntrinsicsImageResolution.height = v20;
    [ARImageSensor registerSignPostForImageData:v21];
    [(ARImageSensor *)self _dispatchImageData:v21];
  }
}

- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = CMGetAttachment(a4, *MEMORY[0x1E6960498], 0);
  CMSampleBufferGetPresentationTimeStamp(&v13, a4);
  Seconds = CMTimeGetSeconds(&v13);
  v9 = _ARLogSensor_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [(ARImageSensor *)self logPrefix];
    LODWORD(v13.value) = 138544386;
    *(&v13.value + 4) = v11;
    LOWORD(v13.flags) = 2048;
    *(&v13.flags + 2) = self;
    HIWORD(v13.epoch) = 2112;
    v14 = v12;
    v15 = 2048;
    v16 = Seconds;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ capture session dropped video frame: %f, %@", &v13, 0x34u);
  }
}

- (void)_logIfDataIsMissingWithVideoData:(id)a3 visionData:(id)a4 calibrationData:(id)a5
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v20 = _MergedGlobals;
    v21 = _ARLogSensor_1();
    v13 = v21;
    if (v20 == 1)
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v22 = objc_opt_class();
      v15 = NSStringFromClass(v22);
      v16 = [(ARImageSensor *)self captureDevice];
      v17 = [v16 deviceType];
      v80 = 138543874;
      v81 = v15;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v17;
      v23 = "%{public}@ <%p>: %@: No video frame received. Dropping frame!";
      goto LABEL_20;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    v29 = objc_opt_class();
    v15 = NSStringFromClass(v29);
    v16 = [(ARImageSensor *)self captureDevice];
    v17 = [v16 deviceType];
    v80 = 138543874;
    v81 = v15;
    v82 = 2048;
    v83 = self;
    v84 = 2112;
    v85 = v17;
    v23 = "Error: %{public}@ <%p>: %@: No video frame received. Dropping frame!";
LABEL_28:
    v27 = v13;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_29;
  }

  if (![v8 sampleBufferWasDropped])
  {
    if ([v8 sampleBuffer])
    {
      goto LABEL_37;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v24 = _MergedGlobals;
    v25 = _ARLogSensor_1();
    v13 = v25;
    if (v24 == 1)
    {
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v26 = objc_opt_class();
      v15 = NSStringFromClass(v26);
      v16 = [(ARImageSensor *)self captureDevice];
      v17 = [v16 deviceType];
      v80 = 138543874;
      v81 = v15;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v17;
      v23 = "%{public}@ <%p>: %@: No video frame received. Dropping frame! No reason provided";
LABEL_20:
      v27 = v13;
      v28 = OS_LOG_TYPE_ERROR;
LABEL_29:
      v34 = 32;
LABEL_35:
      _os_log_impl(&dword_1C241C000, v27, v28, v23, &v80, v34);

      goto LABEL_36;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    v33 = objc_opt_class();
    v15 = NSStringFromClass(v33);
    v16 = [(ARImageSensor *)self captureDevice];
    v17 = [v16 deviceType];
    v80 = 138543874;
    v81 = v15;
    v82 = 2048;
    v83 = self;
    v84 = 2112;
    v85 = v17;
    v23 = "Error: %{public}@ <%p>: %@: No video frame received. Dropping frame! No reason provided";
    goto LABEL_28;
  }

  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor start];
  }

  v11 = _MergedGlobals;
  v12 = _ARLogSensor_1();
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [(ARImageSensor *)self captureDevice];
      v17 = [v16 deviceType];
      v18 = [v8 droppedReason];
      if (v18 > 3)
      {
        v19 = @"Undefined";
      }

      else
      {
        v19 = *(&off_1E817BD50 + v18);
      }

      v80 = 138544130;
      v81 = v15;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v17;
      v86 = 2112;
      v87 = v19;
      v23 = "%{public}@ <%p>: %@: No video frame received. Dropping frame! Reason: %@";
      v27 = v13;
      v28 = OS_LOG_TYPE_ERROR;
LABEL_34:
      v34 = 42;
      goto LABEL_35;
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v30 = objc_opt_class();
    v15 = NSStringFromClass(v30);
    v16 = [(ARImageSensor *)self captureDevice];
    v17 = [v16 deviceType];
    v31 = [v8 droppedReason];
    if (v31 > 3)
    {
      v32 = @"Undefined";
    }

    else
    {
      v32 = *(&off_1E817BD50 + v31);
    }

    v80 = 138544130;
    v81 = v15;
    v82 = 2048;
    v83 = self;
    v84 = 2112;
    v85 = v17;
    v86 = 2112;
    v87 = v32;
    v23 = "Error: %{public}@ <%p>: %@: No video frame received. Dropping frame! Reason: %@";
    v27 = v13;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_34;
  }

LABEL_36:

LABEL_37:
  if (!v9)
  {
    goto LABEL_64;
  }

  if (![v9 visionDataWasDropped])
  {
    if ([v9 visionDataPixelBuffer])
    {
      goto LABEL_64;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v44 = _MergedGlobals;
    v45 = _ARLogSensor_1();
    v37 = v45;
    if (v44 == 1)
    {
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      v46 = objc_opt_class();
      v39 = NSStringFromClass(v46);
      v40 = [(ARImageSensor *)self captureDevice];
      v41 = [v40 deviceType];
      v80 = 138543874;
      v81 = v39;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v41;
      v47 = "%{public}@ <%p>: %@: Video frame received without vision data. No reason provided";
      v48 = v37;
      v49 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        goto LABEL_63;
      }

      v53 = objc_opt_class();
      v39 = NSStringFromClass(v53);
      v40 = [(ARImageSensor *)self captureDevice];
      v41 = [v40 deviceType];
      v80 = 138543874;
      v81 = v39;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v41;
      v47 = "Error: %{public}@ <%p>: %@: Video frame received without vision data. No reason provided";
      v48 = v37;
      v49 = OS_LOG_TYPE_INFO;
    }

    v54 = 32;
LABEL_62:
    _os_log_impl(&dword_1C241C000, v48, v49, v47, &v80, v54);

    goto LABEL_63;
  }

  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor reconfigure:];
  }

  v35 = _MergedGlobals;
  v36 = _ARLogSensor_1();
  v37 = v36;
  if (v35 == 1)
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = [(ARImageSensor *)self captureDevice];
      v41 = [v40 deviceType];
      v42 = [v9 droppedReason];
      if (v42 > 3)
      {
        v43 = @"Undefined";
      }

      else
      {
        v43 = *(&off_1E817BD50 + v42);
      }

      v80 = 138544130;
      v81 = v39;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v41;
      v86 = 2112;
      v87 = v43;
      v47 = "%{public}@ <%p>: %@: Video frame received without vision data. Reason: %@";
      v48 = v37;
      v49 = OS_LOG_TYPE_ERROR;
LABEL_61:
      v54 = 42;
      goto LABEL_62;
    }
  }

  else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v50 = objc_opt_class();
    v39 = NSStringFromClass(v50);
    v40 = [(ARImageSensor *)self captureDevice];
    v41 = [v40 deviceType];
    v51 = [v9 droppedReason];
    if (v51 > 3)
    {
      v52 = @"Undefined";
    }

    else
    {
      v52 = *(&off_1E817BD50 + v51);
    }

    v80 = 138544130;
    v81 = v39;
    v82 = 2048;
    v83 = self;
    v84 = 2112;
    v85 = v41;
    v86 = 2112;
    v87 = v52;
    v47 = "Error: %{public}@ <%p>: %@: Video frame received without vision data. Reason: %@";
    v48 = v37;
    v49 = OS_LOG_TYPE_INFO;
    goto LABEL_61;
  }

LABEL_63:

LABEL_64:
  if (!v10)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v64 = _MergedGlobals;
    v65 = _ARLogSensor_1();
    v57 = v65;
    if (v64 == 1)
    {
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      v66 = objc_opt_class();
      v59 = NSStringFromClass(v66);
      v60 = [(ARImageSensor *)self captureDevice];
      v61 = [v60 deviceType];
      v80 = 138543874;
      v81 = v59;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v61;
      v67 = "%{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame!";
      goto LABEL_83;
    }

    if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      goto LABEL_99;
    }

    v74 = objc_opt_class();
    v59 = NSStringFromClass(v74);
    v60 = [(ARImageSensor *)self captureDevice];
    v61 = [v60 deviceType];
    v80 = 138543874;
    v81 = v59;
    v82 = 2048;
    v83 = self;
    v84 = 2112;
    v85 = v61;
    v67 = "Error: %{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame!";
LABEL_91:
    v72 = v57;
    v73 = OS_LOG_TYPE_INFO;
    goto LABEL_92;
  }

  if ([v10 cameraCalibrationDataWasDropped])
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v55 = _MergedGlobals;
    v56 = _ARLogSensor_1();
    v57 = v56;
    if (v55 == 1)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = [(ARImageSensor *)self captureDevice];
        v61 = [v60 deviceType];
        v62 = [v10 droppedReason];
        if (v62 > 3)
        {
          v63 = @"Undefined";
        }

        else
        {
          v63 = *(&off_1E817BD50 + v62);
        }

        v80 = 138544130;
        v81 = v59;
        v82 = 2048;
        v83 = self;
        v84 = 2112;
        v85 = v61;
        v86 = 2112;
        v87 = v63;
        v67 = "%{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! Reason: %@";
        v72 = v57;
        v73 = OS_LOG_TYPE_ERROR;
LABEL_97:
        v79 = 42;
        goto LABEL_98;
      }
    }

    else if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v75 = objc_opt_class();
      v59 = NSStringFromClass(v75);
      v60 = [(ARImageSensor *)self captureDevice];
      v61 = [v60 deviceType];
      v76 = [v10 droppedReason];
      if (v76 > 3)
      {
        v77 = @"Undefined";
      }

      else
      {
        v77 = *(&off_1E817BD50 + v76);
      }

      v80 = 138544130;
      v81 = v59;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v61;
      v86 = 2112;
      v87 = v77;
      v67 = "Error: %{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! Reason: %@";
      v72 = v57;
      v73 = OS_LOG_TYPE_INFO;
      goto LABEL_97;
    }

LABEL_99:

    goto LABEL_100;
  }

  v68 = [v10 cameraCalibrationData];

  if (!v68)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v69 = _MergedGlobals;
    v70 = _ARLogSensor_1();
    v57 = v70;
    if (v69 == 1)
    {
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      v71 = objc_opt_class();
      v59 = NSStringFromClass(v71);
      v60 = [(ARImageSensor *)self captureDevice];
      v61 = [v60 deviceType];
      v80 = 138543874;
      v81 = v59;
      v82 = 2048;
      v83 = self;
      v84 = 2112;
      v85 = v61;
      v67 = "%{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! No reason provided";
LABEL_83:
      v72 = v57;
      v73 = OS_LOG_TYPE_ERROR;
LABEL_92:
      v79 = 32;
LABEL_98:
      _os_log_impl(&dword_1C241C000, v72, v73, v67, &v80, v79);

      goto LABEL_99;
    }

    if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      goto LABEL_99;
    }

    v78 = objc_opt_class();
    v59 = NSStringFromClass(v78);
    v60 = [(ARImageSensor *)self captureDevice];
    v61 = [v60 deviceType];
    v80 = 138543874;
    v81 = v59;
    v82 = 2048;
    v83 = self;
    v84 = 2112;
    v85 = v61;
    v67 = "Error: %{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! No reason provided";
    goto LABEL_91;
  }

LABEL_100:
}

- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4
{
  v5 = a4;
  [v5 count];
  kdebug_trace();
  v6 = [v5 synchronizedDataForCaptureOutput:self->_videoOutput];
  v7 = [v5 synchronizedDataForCaptureOutput:self->_visionDataOutput];
  v8 = [v5 synchronizedDataForCaptureOutput:self->_calibrationOutput];

  if (!self->_calibrationOutput || (-[ARImageSensor _logIfDataIsMissingWithVideoData:visionData:calibrationData:](self, "_logIfDataIsMissingWithVideoData:visionData:calibrationData:", v6, v7, v8), v8) && ![v8 cameraCalibrationDataWasDropped] && (objc_msgSend(v8, "cameraCalibrationData"), v9 = objc_claimAutoreleasedReturnValue(), v9, v6) && v9)
  {
    v10 = [v8 cameraCalibrationData];
    cameraCalibrationData = self->_cameraCalibrationData;
    self->_cameraCalibrationData = v10;

    v12 = [ARImageData alloc];
    v13 = [v6 sampleBuffer];
    v14 = [(ARImageSensor *)self captureFramesPerSecond];
    v15 = [(ARImageSensor *)self captureDevice];
    v16 = [(ARImageSensor *)self captureSession];
    v17 = [(ARImageData *)v12 initWithSampleBuffer:v13 captureFramePerSecond:v14 captureDevice:v15 captureSession:v16];

    [(ARImageData *)v17 cameraIntrinsics];
    *&self->_anon_20[8] = v18;
    *&self->_anon_20[24] = v19;
    *self->_anon_20 = v20;
    *&self->_anon_20[16] = v21;
    *&self->_anon_20[40] = v22;
    *&self->_anon_20[32] = v23;
    [(ARImageData *)v17 imageResolution];
    self->_lastIntrinsicsImageResolution.width = v24;
    self->_lastIntrinsicsImageResolution.height = v25;
    -[ARImageData setVisionData:](v17, "setVisionData:", [v7 visionDataPixelBuffer]);
    [(ARImageData *)v17 setCalibrationData:self->_cameraCalibrationData];
    [ARImageSensor registerSignPostForImageData:v17];
    [(ARImageSensor *)self _dispatchImageData:v17];
    [(ARImageData *)v17 timestamp];
    if (v7)
    {
      [v7 timestamp];
      CMTimeGetSeconds(&time);
    }

    kdebug_trace();
  }

  else
  {
    kdebug_trace();
  }
}

- (void)cameraCalibrationDataOutput:(id)a3 didOutputCameraCalibrationData:(id)a4 timestamp:(id *)a5 connection:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor start];
  }

  v12 = _MergedGlobals;
  v13 = _ARLogSensor_1();
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [(ARImageSensor *)self logPrefix];
      v22 = 138543874;
      v23 = v16;
      v24 = 2048;
      v25 = self;
      v26 = 2112;
      v27 = v17;
      v18 = "%{public}@ <%p>: %@ cameraCalibrationDataOutput:didOutputCameraCalibrationData called without an AVCaptureDataOutputSynchronizer, not supported.";
      v19 = v14;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v19, v20, v18, &v22, 0x20u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v21 = objc_opt_class();
    v16 = NSStringFromClass(v21);
    v17 = [(ARImageSensor *)self logPrefix];
    v22 = 138543874;
    v23 = v16;
    v24 = 2048;
    v25 = self;
    v26 = 2112;
    v27 = v17;
    v18 = "Error: %{public}@ <%p>: %@ cameraCalibrationDataOutput:didOutputCameraCalibrationData called without an AVCaptureDataOutputSynchronizer, not supported.";
    v19 = v14;
    v20 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)cameraCalibrationDataOutput:(id)a3 didDropCameraCalibrationDataAtTimestamp:(id *)a4 connection:(id)a5 reason:(int64_t)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = _ARLogSensor_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [(ARImageSensor *)self logPrefix];
    v15 = *a4;
    Seconds = CMTimeGetSeconds(&v15);
    if (a6 > 3)
    {
      v14 = @"Undefined";
    }

    else
    {
      v14 = *(&off_1E817BD50 + a6);
    }

    LODWORD(v15.var0) = 138544386;
    *(&v15.var0 + 4) = v11;
    LOWORD(v15.var2) = 2048;
    *(&v15.var2 + 2) = self;
    HIWORD(v15.var3) = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = Seconds;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ capture session dropped calibration data: %lf, %@", &v15, 0x34u);
  }
}

- (void)_dispatchImageData:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_22:
    kdebug_trace();
    goto LABEL_23;
  }

  if ([v4 isHighResolution])
  {
    goto LABEL_8;
  }

  [(ARImageSensor *)self enableContinuousAutoFocusIfPossible];
  if (!self->_sensorHasReceivedImageData)
  {
    self->_sensorHasReceivedImageData = 1;
    v6 = _ARLogSensor_1();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [(ARImageSensor *)self logPrefix];
      [v5 timestamp];
      *buf = 138544386;
      v58 = v8;
      v59 = 2048;
      v60 = self;
      v61 = 2112;
      v62 = v9;
      v63 = 2048;
      v64 = v10;
      v65 = 1024;
      v66 = [v5 visionData] != 0;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ received first image data with timestamp: %f, has vision data: %d", buf, 0x30u);
    }
  }

  buf[0] = 0;
  [(ARImageSensor *)self trackExposureTargetOffsetIfNeededForImageData:v5 shouldDrop:buf];
  if ((buf[0] & 1) == 0)
  {
LABEL_8:
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      extrinsicsMap = self->_extrinsicsMap;
      if (!extrinsicsMap)
      {
        v14 = objc_loadWeakRetained(&self->_dataSource);
        v15 = [v14 captureDeviceTypeToExtrinsicsMapForImageSensor:self];
        v16 = self->_extrinsicsMap;
        self->_extrinsicsMap = v15;

        extrinsicsMap = self->_extrinsicsMap;
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v17 = [(NSMutableDictionary *)extrinsicsMap allKeys];
      v18 = [v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v53;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v53 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v52 + 1) + 8 * i);
            v23 = [(NSMutableDictionary *)self->_extrinsicsMap objectForKeyedSubscript:v22];
            *v24.i64 = ARMatrix4x3FromNSData(v23);
            v24.i32[3] = 0;
            v25.i32[3] = 0;
            v50 = v25;
            v51 = v24;
            v26.i32[3] = 0;
            v27.i32[3] = 0;
            v48 = v27;
            v49 = v26;

            v68.columns[1] = v50;
            v68.columns[0] = v51;
            v68.columns[3] = v48;
            v68.columns[2] = v49;
            v28 = ARMatrix4x3Inverse(v68);
            [v5 addExtrinsicMatrix:v22 toDeviceType:{v28, v29, v30, v31}];
          }

          v19 = [v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v19);
      }
    }

    v32 = [(ARImageSensor *)self bufferPopulationMonitor];
    v33 = [v5 pixelBuffer];
    v34 = [(ARImageSensor *)self captureDevice];
    v35 = [v34 localizedName];
    [v5 timestamp];
    v37 = v36;
    v38 = [(ARImageSensor *)self captureDevice];
    v39 = [v38 deviceType];
    [v32 trackPixelBuffer:v33 withLabel:v35 timestamp:ARBufferPopulationMonitorSignpostTypeForCaptureDevice(v39) signpostType:v37];

    if ([v5 visionData])
    {
      v40 = [(ARImageSensor *)self bufferPopulationMonitor];
      v41 = [v5 visionData];
      v42 = MEMORY[0x1E696AEC0];
      v43 = [(ARImageSensor *)self captureDevice];
      v44 = [v43 localizedName];
      v45 = [v42 stringWithFormat:@"%@ Vision Data", v44];
      [v5 timestamp];
      [v40 trackPixelBuffer:v41 withLabel:v45 timestamp:3 signpostType:?];
    }

    [v5 timestamp];
    v46 = [v5 captureDate];
    [v46 timeIntervalSinceNow];
    kdebug_trace();

    [v5 timestamp];
    kdebug_trace();
    v47 = [(ARImageSensor *)self delegate];
    [v47 sensor:self didOutputSensorData:v5];

    [v5 timestamp];
    kdebug_trace();
    [v5 timestamp];
    goto LABEL_22;
  }

LABEL_23:
}

+ (void)registerSignPostForImageData:(id)a3
{
  v18 = a3;
  [v18 isHighResolution];
  v3 = [v18 cameraType];
  v4 = [v3 isEqualToString:*MEMORY[0x1E6986950]];

  if (v4)
  {
    v5 = [v18 cameraPosition];
    if (v5 == 2)
    {
      [v18 timestamp];
      goto LABEL_29;
    }

    if (v5 != 1)
    {
      v6 = v18;
      if (v5)
      {
        goto LABEL_30;
      }

      v7 = v18;
      goto LABEL_15;
    }

    v12 = v18;
LABEL_17:
    [v12 timestamp];
    [v18 imageResolution];
    [v18 imageResolution];
    goto LABEL_29;
  }

  v8 = [v18 cameraType];
  if ([v8 isEqualToString:*MEMORY[0x1E6986908]])
  {

LABEL_9:
    if ([v18 cameraPosition] != 1)
    {
      goto LABEL_14;
    }

    v11 = [v18 captureLens];
    if (v11 <= 1)
    {
      if (v11)
      {
        v6 = v18;
        if (v11 != 1)
        {
          goto LABEL_30;
        }

        v12 = v18;
        goto LABEL_17;
      }

LABEL_14:
      v7 = v18;
LABEL_15:
      [v7 timestamp];
      goto LABEL_29;
    }

    if (v11 != 2)
    {
      v6 = v18;
      if (v11 != 3)
      {
        goto LABEL_30;
      }

      [v18 timestamp];
      [v18 imageResolution];
      [v18 imageResolution];
      goto LABEL_29;
    }

    [v18 timestamp];
LABEL_28:
    [v18 imageResolution];
    [v18 imageResolution];
    goto LABEL_29;
  }

  v9 = [v18 cameraType];
  v10 = [v9 isEqualToString:*MEMORY[0x1E6986938]];

  if (v10)
  {
    goto LABEL_9;
  }

  v13 = [v18 cameraType];
  v14 = [v13 isEqualToString:*MEMORY[0x1E6986940]];

  if (v14)
  {
    [v18 cameraPosition];
    [v18 timestamp];
    goto LABEL_29;
  }

  v15 = [v18 cameraType];
  v16 = [v15 isEqualToString:*MEMORY[0x1E6986948]];

  v6 = v18;
  if (!v16)
  {
    goto LABEL_30;
  }

  v17 = [v18 cameraPosition];
  [v18 timestamp];
  if (v17 == 1)
  {
    goto LABEL_28;
  }

LABEL_29:
  kdebug_trace();
  v6 = v18;
LABEL_30:
  if ([v6 visionData])
  {
    [v18 timestamp];
    kdebug_trace();
  }
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ARImageSensorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (uint64_t)captureHighResolutionFrameWithPhotoSettings:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3, NSObject **a4)
{
  v6 = objc_begin_catch(a1);
  *a3 = v6;
  v7 = v6;
  if (qword_1EBF41CA8 != -1)
  {
    dispatch_once(&qword_1EBF41CA8, &__block_literal_global_521);
  }

  v8 = _MergedGlobals;
  v9 = _ARLogSensor_1();
  *a4 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    return 2;
  }

  return 1;
}

@end