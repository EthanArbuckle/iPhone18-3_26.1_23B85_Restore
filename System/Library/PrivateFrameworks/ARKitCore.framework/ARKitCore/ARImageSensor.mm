@interface ARImageSensor
+ (float)defaultLensPosition;
+ (void)registerSignPostForImageData:(id)data;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_createCMTimeFractionFromDecimalDuration:(SEL)duration;
- (ARImageSensor)initWithSettings:(id)settings captureSession:(id)session captureQueue:(id)queue;
- (ARImageSensorDataSource)dataSource;
- (ARImageSensorSettings)settings;
- (ARSensorDelegate)delegate;
- (BOOL)canReconfigure:(id)reconfigure;
- (NSArray)outputsForSynchronizer;
- (NSString)description;
- (id)_configurePhotoOutputForCaptureSession:(id)session;
- (id)_configureVisionDataOutputForSession:(id)session;
- (id)configureCaptureSession;
- (id)configureCaptureSessionCalibration;
- (id)logPrefix;
- (id)prepareToStart;
- (id)setActiveFormat;
- (void)_configureCameraExposureForDevice:(id)device;
- (void)_configureCameraFocusForDevice:(id)device;
- (void)_configureCameraWhiteBalanceForDevice:(id)device;
- (void)_configureFrameRateForDevice:(id)device frameRate:(double)rate;
- (void)_configureImageControlModeForDevice:(id)device;
- (void)_dispatchImageData:(id)data;
- (void)_logIfDataIsMissingWithVideoData:(id)data visionData:(id)visionData calibrationData:(id)calibrationData;
- (void)cameraCalibrationDataOutput:(id)output didDropCameraCalibrationDataAtTimestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason;
- (void)cameraCalibrationDataOutput:(id)output didOutputCameraCalibrationData:(id)data timestamp:(id *)timestamp connection:(id)connection;
- (void)captureHighResolutionFrameWithPhotoSettings:(id)settings;
- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)configureCaptureDevice;
- (void)configureFrameRateForDevice:(id)device;
- (void)configureGeometricDistortionCorrectionForDevice:(id)device;
- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection;
- (void)dealloc;
- (void)enableAutoFocusForDevice:(id)device;
- (void)enableContinuousAutoFocusIfPossible;
- (void)enableSensor:(BOOL)sensor;
- (void)reconfigure:(id)reconfigure;
- (void)setInterrupted:(BOOL)interrupted;
- (void)setPowerUsage:(unint64_t)usage;
- (void)start;
- (void)stop;
- (void)teardown;
- (void)trackExposureTargetOffsetIfNeededForImageData:(id)data shouldDrop:(BOOL *)drop;
- (void)triggerVisionDataBurst;
- (void)updateCaptureDeviceFrameRate:(double)rate;
@end

@implementation ARImageSensor

- (ARImageSensor)initWithSettings:(id)settings captureSession:(id)session captureQueue:(id)queue
{
  v40 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  sessionCopy = session;
  queueCopy = queue;
  videoFormat = [settingsCopy videoFormat];
  device = [videoFormat device];

  if (device)
  {
    v38.receiver = self;
    v38.super_class = ARImageSensor;
    v13 = [(ARImageSensor *)&v38 init];
    if (v13)
    {
      v14 = [settingsCopy copy];
      settings = v13->_settings;
      v13->_settings = v14;

      if ([settingsCopy autoFocusEnabled])
      {
        v16 = *MEMORY[0x1E6986998];
      }

      else
      {
        +[ARImageSensor defaultLensPosition];
      }

      v13->_defaultLensPosition = v16;
      objc_storeStrong(&v13->_captureSession, session);
      videoFormat2 = [settingsCopy videoFormat];
      device2 = [videoFormat2 device];
      captureDevice = v13->_captureDevice;
      v13->_captureDevice = device2;

      v13->_captureQueue = queueCopy;
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = logPrefix;
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

- (BOOL)canReconfigure:(id)reconfigure
{
  settings = self->_settings;
  reconfigureCopy = reconfigure;
  v5 = [(ARImageSensorSettings *)settings copy];
  [v5 setAutoFocusEnabled:{objc_msgSend(reconfigureCopy, "autoFocusEnabled")}];
  [v5 setEnabled:{objc_msgSend(reconfigureCopy, "isEnabled")}];
  v6 = [v5 isEqual:reconfigureCopy];

  return v6;
}

- (void)reconfigure:(id)reconfigure
{
  v33 = *MEMORY[0x1E69E9840];
  reconfigureCopy = reconfigure;
  if (![(ARImageSensor *)self canReconfigure:reconfigureCopy])
  {
    goto LABEL_17;
  }

  autoFocusEnabled = [reconfigureCopy autoFocusEnabled];
  if (autoFocusEnabled != [(ARImageSensorSettings *)self->_settings autoFocusEnabled])
  {
    -[ARImageSensorSettings setAutoFocusEnabled:](self->_settings, "setAutoFocusEnabled:", [reconfigureCopy autoFocusEnabled]);
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
        logPrefix = [(ARImageSensor *)self logPrefix];
        v16 = [v9 description];
        *buf = 138544130;
        v26 = v14;
        v27 = 2048;
        selfCopy2 = self;
        v29 = 2112;
        v30 = logPrefix;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      v16 = [v9 description];
      *buf = 138544130;
      v26 = v14;
      v27 = 2048;
      selfCopy2 = self;
      v29 = 2112;
      v30 = logPrefix;
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
  isEnabled = [reconfigureCopy isEnabled];
  if (isEnabled != [(ARImageSensorSettings *)self->_settings isEnabled])
  {
    -[ARImageSensorSettings setEnabled:](self->_settings, "setEnabled:", [reconfigureCopy isEnabled]);
    captureSession = [(ARImageSensor *)self captureSession];
    [captureSession beginConfiguration];

    [(ARImageSensor *)self enableSensor:[(ARImageSensorSettings *)self->_settings isEnabled]];
    captureSession2 = [(ARImageSensor *)self captureSession];
    [captureSession2 commitConfiguration];
  }

LABEL_17:
}

- (id)logPrefix
{
  internalSettings = [(ARImageSensor *)self internalSettings];
  videoFormat = [internalSettings videoFormat];
  captureDeviceType = [videoFormat captureDeviceType];

  internalSettings2 = [(ARImageSensor *)self internalSettings];
  videoFormat2 = [internalSettings2 videoFormat];
  v8 = NSStringFromAVCaptureDevicePosition([videoFormat2 captureDevicePosition]);

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ - %@):", captureDeviceType, v8];

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
    logPrefix = [(ARImageSensor *)self logPrefix];
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = logPrefix;
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
    logPrefix = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v5;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v75 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ preparing to start", &buf, 0x20u);
  }

  setActiveFormat = [(ARImageSensor *)self setActiveFormat];
  if (setActiveFormat || ([(ARImageSensor *)self configureCaptureSession], (setActiveFormat = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = setActiveFormat;
    goto LABEL_6;
  }

  outputsForSynchronizer = [(ARImageSensor *)self outputsForSynchronizer];
  dataOutputs = [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer dataOutputs];
  v12 = [dataOutputs isEqualToArray:outputsForSynchronizer];

  if ([outputsForSynchronizer count] < 2 || (v12 & 1) == 0)
  {
    [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer setDelegate:0 queue:0];
    outputSynchronizer = self->_outputSynchronizer;
    self->_outputSynchronizer = 0;
  }

  if (!(([outputsForSynchronizer count] < 2) | v12 & 1))
  {
    v14 = _ARLogSensor_1();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      v18 = [outputsForSynchronizer description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v16;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = logPrefix2;
      v76 = 2112;
      v77 = *&v18;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Outputs added to synchronizer: %@", &buf, 0x2Au);
    }

    v19 = [objc_alloc(MEMORY[0x1E6987078]) initWithDataOutputs:outputsForSynchronizer];
    v20 = self->_outputSynchronizer;
    self->_outputSynchronizer = v19;
  }

  [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer setDelegate:self queue:self->_captureQueue];
  captureDevice = [(ARImageSensor *)self captureDevice];
  v73 = 0;
  v22 = [captureDevice lockForConfiguration:&v73];
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
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      v31 = [v23 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v29;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = logPrefix3;
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
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      v31 = [v23 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v29;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = logPrefix3;
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
      captureDevice2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    }

    else
    {
      captureDevice2 = MEMORY[0x1E695E0F8];
    }

    v8 = ARErrorWithCodeAndUserInfo(101, captureDevice2);

    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  [(ARImageSensor *)self configureCaptureDevice];
  captureDevice2 = [(ARImageSensor *)self captureDevice];
  [captureDevice2 unlockForConfiguration];
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
    isCameraIntrinsicMatrixDeliverySupported = [v37 isCameraIntrinsicMatrixDeliverySupported];
    if (isCameraIntrinsicMatrixDeliverySupported)
    {
      [v37 setCameraIntrinsicMatrixDeliveryEnabled:1];
    }

    v39 = _ARLogSensor_1();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      v43 = logPrefix4;
      v44 = @"unsupported";
      LODWORD(buf.value) = 138544130;
      LOWORD(buf.flags) = 2048;
      *(&buf.value + 4) = v41;
      if (isCameraIntrinsicMatrixDeliverySupported)
      {
        v44 = @"supported";
      }

      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = logPrefix4;
      v76 = 2112;
      v77 = *&v44;
      _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Intrinsics delivery is %@ by the connection", &buf, 0x2Au);
    }

    v45 = _ARLogSensor_1();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      logPrefix5 = [(ARImageSensor *)self logPrefix];
      activeFormat = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v50 = activeFormat;
      if (activeFormat)
      {
        [activeFormat minExposureDuration];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      Seconds = CMTimeGetSeconds(&buf);
      activeFormat2 = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v53 = activeFormat2;
      if (activeFormat2)
      {
        [activeFormat2 maxExposureDuration];
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
      v75 = logPrefix5;
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
      logPrefix6 = [(ARImageSensor *)self logPrefix];
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
      v75 = logPrefix6;
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
      logPrefix7 = [(ARImageSensor *)self logPrefix];
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
      v75 = logPrefix7;
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
      logPrefix8 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v71;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v75 = logPrefix8;
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
    logPrefix = [(ARImageSensor *)self logPrefix];
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = logPrefix;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      v13 = 138543874;
      v14 = v7;
      v15 = 2048;
      selfCopy2 = self;
      v17 = 2112;
      v18 = logPrefix;
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
    logPrefix = [(ARImageSensor *)self logPrefix];
    v13 = 138543874;
    v14 = v7;
    v15 = 2048;
    selfCopy2 = self;
    v17 = 2112;
    v18 = logPrefix;
    v9 = "Error: %{public}@ <%p>: %@ start called on a child image sensor instead of parent image sensor";
    v10 = v5;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)setPowerUsage:(unint64_t)usage
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_powerUsage != usage)
  {
    v5 = _ARLogSensor_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      logPrefix = [(ARImageSensor *)self logPrefix];
      powerUsage = self->_powerUsage;
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v7;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v34 = logPrefix;
      v35 = 2048;
      v36 = *&powerUsage;
      v37 = 2048;
      usageCopy = usage;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Power usage changed from %li to %li", &buf, 0x34u);
    }

    self->_powerUsage = usage;
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
        logPrefix2 = [(ARImageSensor *)self logPrefix];
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
        v34 = logPrefix2;
        v35 = 2048;
        v36 = Seconds;
        v37 = 2048;
        usageCopy = *&v31;
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
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        v24 = [v12 description];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v22;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v34 = logPrefix3;
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
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      v24 = [v12 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v22;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v34 = logPrefix3;
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

- (void)enableSensor:(BOOL)sensor
{
  sensorCopy = sensor;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connections = [(ARImageSensor *)self connections];
  v5 = [connections countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(connections);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:sensorCopy];
      }

      while (v6 != v8);
      v6 = [connections countByEnumeratingWithState:&v9 objects:v13 count:16];
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

  captureDevice = [(ARImageSensor *)self captureDevice];
  [v5 appendFormat:@" %@", captureDevice];

  captureDevice2 = [(ARImageSensor *)self captureDevice];
  deviceType = [captureDevice2 deviceType];
  [v5 appendFormat:@" %@", deviceType];

  captureDevice3 = [(ARImageSensor *)self captureDevice];
  v10 = NSStringFromAVCaptureDevicePosition([captureDevice3 position]);
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
    device = [(AVCaptureDeviceInput *)videoInput device];
    captureDevice = self->_captureDevice;

    if (device != captureDevice)
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
          logPrefix = [(ARImageSensor *)self logPrefix];
          [(AVCaptureDeviceInput *)self->_videoInput device];
          v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v10;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = logPrefix;
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
        logPrefix = [(ARImageSensor *)self logPrefix];
        [(AVCaptureDeviceInput *)self->_videoInput device];
        v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v10;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix;
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

    device2 = [(AVCaptureDeviceInput *)self->_videoInput device];
    activeFormat = [device2 activeFormat];
    MediaSubType = CMFormatDescriptionGetMediaSubType([activeFormat formatDescription]);

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
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v50;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix2;
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
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v50;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix2;
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

    captureDevice = [(ARImageSensor *)self captureDevice];
    activeFormat2 = [captureDevice activeFormat];
    isVisionDataDeliverySupported = [activeFormat2 isVisionDataDeliverySupported];

    if (isVisionDataDeliverySupported)
    {
      [(AVCaptureDeviceInput *)self->_videoInput setVisionDataDeliveryEnabled:1];
      v28 = _ARLogSensor_1();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v30;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix3;
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
          logPrefix3 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v30;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = logPrefix3;
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
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v30;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix3;
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
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        [(AVCaptureDeviceInput *)self->_videoInput maxGainOverride];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v71;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix4;
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
              logPrefix5 = [(ARImageSensor *)self logPrefix];
              LODWORD(buf.value) = 138543874;
              *(&buf.value + 4) = v113;
              LOWORD(buf.flags) = 2048;
              *(&buf.flags + 2) = self;
              HIWORD(buf.epoch) = 2112;
              v167 = logPrefix5;
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
          logPrefix5 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v113;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = logPrefix5;
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
          logPrefix6 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v96;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = logPrefix6;
          _os_log_impl(&dword_1C241C000, v94, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data input to the capture session", &buf, 0x20u);
        }

        videoFormat = [(ARImageSensorSettings *)self->_settings videoFormat];
        frameRatesByPowerUsage = [videoFormat frameRatesByPowerUsage];
        v100 = [frameRatesByPowerUsage objectAtIndexedSubscript:0];
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
          logPrefix7 = [(ARImageSensor *)self logPrefix];
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
          v167 = logPrefix7;
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
            logPrefix8 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v122;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v167 = logPrefix8;
            _os_log_impl(&dword_1C241C000, v120, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data output to the capture session", &buf, 0x20u);
          }

LABEL_95:
          v124 = self->_videoInput;
          if (self->_videoConnection)
          {
            goto LABEL_96;
          }

          v127 = *MEMORY[0x1E6987608];
          device3 = [(AVCaptureDeviceInput *)self->_videoInput device];
          deviceType = [device3 deviceType];
          device4 = [(AVCaptureDeviceInput *)self->_videoInput device];
          v131 = -[AVCaptureDeviceInput portsWithMediaType:sourceDeviceType:sourceDevicePosition:](v124, "portsWithMediaType:sourceDeviceType:sourceDevicePosition:", v127, deviceType, [device4 position]);
          firstObject = [v131 firstObject];

          if (firstObject)
          {
            v132 = MEMORY[0x1E6987070];
            v163 = firstObject;
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
                logPrefix9 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v138;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v167 = logPrefix9;
                _os_log_impl(&dword_1C241C000, v136, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data connection to the capture session", &buf, 0x20u);
              }

              v124 = self->_videoInput;
LABEL_96:
              if ([(AVCaptureDeviceInput *)v124 isCameraCalibrationDataDeliveryEnabled])
              {
                configureCaptureSessionCalibration = [(ARImageSensor *)self configureCaptureSessionCalibration];

                if (configureCaptureSessionCalibration)
                {
LABEL_101:
                  v126 = configureCaptureSessionCalibration;
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
                configureCaptureSessionCalibration = [(ARImageSensor *)self _configureVisionDataOutputForSession:self->_captureSession];

                if (configureCaptureSessionCalibration)
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
                logPrefix10 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v149;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v167 = logPrefix10;
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
            logPrefix10 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v149;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v167 = logPrefix10;
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
                logPrefix10 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v149;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v167 = logPrefix10;
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
            logPrefix10 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v149;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v167 = logPrefix10;
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
            logPrefix5 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v113;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v167 = logPrefix5;
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
        logPrefix5 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v113;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix5;
        v115 = "Error: %{public}@ <%p>: %@ Cannot add video data output to the capture session";
        goto LABEL_126;
      }

      activeFormat3 = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      isCameraCalibrationDataDeliverySupported = [activeFormat3 isCameraCalibrationDataDeliverySupported];

      if (isCameraCalibrationDataDeliverySupported)
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
          logPrefix11 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v88;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = logPrefix11;
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
        logPrefix11 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v88;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix11;
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
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v71;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v167 = logPrefix4;
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
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v71;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v167 = logPrefix4;
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
      logPrefix12 = [(ARImageSensor *)self logPrefix];
      [v19 description];
      v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v43 = self->_captureDevice;
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v40;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v167 = logPrefix12;
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
    logPrefix12 = [(ARImageSensor *)self logPrefix];
    [v19 description];
    v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v56 = self->_captureDevice;
    LODWORD(buf.value) = 138544386;
    *(&buf.value + 4) = v40;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix12;
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
    firstObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v58 = 101;
    v59 = firstObject;
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

- (id)_configurePhotoOutputForCaptureSession:(id)session
{
  v26 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
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
      videoFormat = [(ARImageSensorSettings *)self->_settings videoFormat];
      isRecommendedForHighResolutionFrameCapturing = [videoFormat isRecommendedForHighResolutionFrameCapturing];

      if (isRecommendedForHighResolutionFrameCapturing)
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      v18 = 138544130;
      v19 = v11;
      v20 = 2048;
      selfCopy = self;
      v22 = 2112;
      v23 = logPrefix;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Configuring photo output for max. photo quality prioritization: %ld", &v18, 0x2Au);
    }

    v13 = objc_opt_new();
    photoOutput = self->_photoOutput;
    self->_photoOutput = v13;

    [(AVCapturePhotoOutput *)self->_photoOutput setMaxPhotoQualityPrioritization:v6];
    if ([sessionCopy canAddOutput:self->_photoOutput])
    {
      [sessionCopy addOutput:self->_photoOutput];
      videoFormat2 = [(ARImageSensorSettings *)self->_settings videoFormat];
      -[AVCapturePhotoOutput setMaxPhotoDimensions:](self->_photoOutput, "setMaxPhotoDimensions:", [videoFormat2 maxPhotoDimensions]);

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

- (void)captureHighResolutionFrameWithPhotoSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    defaultPhotoSettings = settingsCopy;
  }

  else
  {
    videoFormat = [(ARImageSensorSettings *)self->_settings videoFormat];
    defaultPhotoSettings = [videoFormat defaultPhotoSettings];
  }

  [(AVCapturePhotoOutput *)self->_photoOutput capturePhotoWithSettings:defaultPhotoSettings delegate:self];
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  v46 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  pixelBuffer = [photoCopy pixelBuffer];
  if (!pixelBuffer)
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
        logPrefix = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v45 = logPrefix;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v45 = logPrefix;
      v23 = "Error: %{public}@ <%p>: %@ Failed to capture a high resolution frame.";
      v24 = v19;
      v25 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    delegate = [(ARImageSensor *)self delegate];
    v28 = ARErrorWithCodeAndUserInfo(107, 0);
    [delegate sensor:self didFailWithError:v28];
    goto LABEL_21;
  }

  v8 = pixelBuffer;
  Width = CVPixelBufferGetWidth(pixelBuffer);
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

  metadata = [photoCopy metadata];
  v43 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];

  metadata2 = [photoCopy metadata];
  v28 = [metadata2 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];

  [photoCopy focusPixelBlurScore];
  CVBufferSetAttachment(v8, @"FocusPixelBlurScore", [MEMORY[0x1E696AD98] numberWithFloat:?], kCVAttachmentMode_ShouldPropagate);
  metadata3 = [photoCopy metadata];
  v30 = [metadata3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

  v31 = ARCaptureLensFromMakerNotesDictionary(v30);
  v32 = [ARImageData alloc];
  captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
  captureDevice = [(ARImageSensor *)self captureDevice];
  captureSession = [(ARImageSensor *)self captureSession];
  if (photoCopy)
  {
    [photoCopy timestamp];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v36 = v32;
  delegate = v43;
  v38 = [(ARImageData *)v36 initWithPixelBuffer:v8 captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession timestamp:buf intrinsics:v43 exif:v42 tiff:v41 captureLens:*&v40, v28, v31];

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
        logPrefix = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v52 = v15;
        v53 = 2048;
        selfCopy8 = self;
        v55 = 2112;
        v56 = logPrefix;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v52 = v15;
      v53 = 2048;
      selfCopy8 = self;
      v55 = 2112;
      v56 = logPrefix;
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
    logPrefix2 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v52 = v9;
    v53 = 2048;
    selfCopy8 = self;
    v55 = 2112;
    v56 = logPrefix2;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added calibration data output to the capture session", buf, 0x20u);
  }

  if (self->_calibrationConnection)
  {
    goto LABEL_10;
  }

  videoInput = self->_videoInput;
  v22 = *MEMORY[0x1E6986FA0];
  device = [(AVCaptureDeviceInput *)videoInput device];
  deviceType = [device deviceType];
  device2 = [(AVCaptureDeviceInput *)self->_videoInput device];
  v26 = -[AVCaptureDeviceInput portsWithMediaType:sourceDeviceType:sourceDevicePosition:](videoInput, "portsWithMediaType:sourceDeviceType:sourceDevicePosition:", v22, deviceType, [device2 position]);
  firstObject = [v26 firstObject];

  if (firstObject)
  {
    v28 = MEMORY[0x1E6987070];
    v50 = firstObject;
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
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v52 = v34;
        v53 = 2048;
        selfCopy8 = self;
        v55 = 2112;
        v56 = logPrefix3;
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
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v52 = v40;
        v53 = 2048;
        selfCopy8 = self;
        v55 = 2112;
        v56 = logPrefix4;
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
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v52 = v40;
    v53 = 2048;
    selfCopy8 = self;
    v55 = 2112;
    v56 = logPrefix4;
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
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v52 = v40;
    v53 = 2048;
    selfCopy8 = self;
    v55 = 2112;
    v56 = logPrefix4;
    v42 = "Error: %{public}@ <%p>: %@ Cannot find a calibration port in the input added to the capture session";
    goto LABEL_40;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v52 = v40;
    v53 = 2048;
    selfCopy8 = self;
    v55 = 2112;
    v56 = logPrefix4;
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
  captureDevice = [(ARImageSensor *)self captureDevice];
  [(ARImageSensor *)self configureFrameRateForDevice:captureDevice];
  [(ARImageSensor *)self _configureCameraExposureForDevice:captureDevice];
  [(ARImageSensor *)self _configureCameraWhiteBalanceForDevice:captureDevice];
  [(ARImageSensor *)self _configureCameraFocusForDevice:captureDevice];
  [(ARImageSensor *)self _configureImageControlModeForDevice:captureDevice];
  [(ARImageSensor *)self configureGeometricDistortionCorrectionForDevice:captureDevice];
}

- (void)updateCaptureDeviceFrameRate:(double)rate
{
  v28 = *MEMORY[0x1E69E9840];
  captureDevice = [(ARImageSensor *)self captureDevice];
  v19 = 0;
  v6 = [captureDevice lockForConfiguration:&v19];
  v7 = v19;

  if (!v6)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v10 = _MergedGlobals;
    v11 = _ARLogSession();
    captureDevice3 = v11;
    if (v10 == 1)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v21 = v13;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2112;
      v25 = logPrefix;
      v26 = 2112;
      v27 = v7;
      v15 = "%{public}@ <%p>: %@ Encountered error updating capture device frame rate %@";
      v16 = captureDevice3;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v21 = v13;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2112;
      v25 = logPrefix;
      v26 = 2112;
      v27 = v7;
      v15 = "Error: %{public}@ <%p>: %@ Encountered error updating capture device frame rate %@";
      v16 = captureDevice3;
      v17 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x2Au);

    goto LABEL_11;
  }

  captureDevice2 = [(ARImageSensor *)self captureDevice];
  [(ARImageSensor *)self _configureFrameRateForDevice:captureDevice2 frameRate:rate];

  captureDevice3 = [(ARImageSensor *)self captureDevice];
  [captureDevice3 unlockForConfiguration];
LABEL_11:
}

- (id)setActiveFormat
{
  v40 = *MEMORY[0x1E69E9840];
  captureDevice = [(ARImageSensor *)self captureDevice];
  v31[0] = 0;
  v4 = [captureDevice lockForConfiguration:v31];
  v5 = v31[0];

  if (v4)
  {
    videoFormat = [(ARImageSensorSettings *)self->_settings videoFormat];
    deviceFormat = [videoFormat deviceFormat];
    captureDevice2 = [(ARImageSensor *)self captureDevice];
    [captureDevice2 setActiveFormat:deviceFormat];

    captureDevice3 = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice3 deviceType];
    v11 = *MEMORY[0x1E6986940];
    LODWORD(deviceFormat) = deviceType == *MEMORY[0x1E6986940];

    if (deviceFormat)
    {
      videoFormat2 = [(ARImageSensorSettings *)self->_settings videoFormat];
      depthDataFormat = [videoFormat2 depthDataFormat];
      captureDevice4 = [(ARImageSensor *)self captureDevice];
      [captureDevice4 setActiveDepthDataFormat:depthDataFormat];
    }

    v15 = _ARLogSensor_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      logPrefix = [(ARImageSensor *)self logPrefix];
      activeFormat = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v20 = [activeFormat description];
      *buf = 138544130;
      v33 = v17;
      v34 = 2048;
      selfCopy2 = self;
      v36 = 2112;
      v37 = logPrefix;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Active format selected: %@", buf, 0x2Au);
    }

    deviceType2 = [(AVCaptureDevice *)self->_captureDevice deviceType];
    v22 = deviceType2 == v11;

    if (v22)
    {
      v23 = _ARLogSensor_1();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        activeDepthDataFormat = [(AVCaptureDevice *)self->_captureDevice activeDepthDataFormat];
        v28 = [activeDepthDataFormat description];
        *buf = 138544130;
        v33 = v25;
        v34 = 2048;
        selfCopy2 = self;
        v36 = 2112;
        v37 = logPrefix2;
        v38 = 2112;
        v39 = v28;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Active depth data format selected: %@", buf, 0x2Au);
      }
    }

    captureDevice5 = [(ARImageSensor *)self captureDevice];
    [captureDevice5 unlockForConfiguration];
  }

  return v5;
}

- (void)configureFrameRateForDevice:(id)device
{
  settings = self->_settings;
  deviceCopy = device;
  videoFormat = [(ARImageSensorSettings *)settings videoFormat];
  frameRatesByPowerUsage = [videoFormat frameRatesByPowerUsage];
  v7 = [frameRatesByPowerUsage objectAtIndexedSubscript:{-[ARImageSensor powerUsage](self, "powerUsage")}];
  [v7 doubleValue];
  v9 = v8;

  [(ARImageSensor *)self _configureFrameRateForDevice:deviceCopy frameRate:v9];
}

- (void)_configureFrameRateForDevice:(id)device frameRate:(double)rate
{
  v31 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  CMTimeMake(&v22, 1, rate);
  v21 = v22;
  [deviceCopy setActiveVideoMinFrameDuration:&v21];
  CMTimeMake(&v20, 1, rate);
  v21 = v20;
  [deviceCopy setActiveVideoMaxFrameDuration:&v21];
  [(ARImageSensor *)self setCaptureFramesPerSecond:rate];
  v7 = _ARLogSensor_1();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138544130;
    v24 = v9;
    v25 = 2048;
    selfCopy2 = self;
    v27 = 2112;
    v28 = logPrefix;
    v29 = 2048;
    rateCopy = rate;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARImageSensor Capture frames per second set to %f", buf, 0x2Au);
  }

  deviceType = [deviceCopy deviceType];
  v12 = deviceType == *MEMORY[0x1E6986940];

  if (v12)
  {
    CMTimeMake(&v19, 1, (rate * 0.25));
    v18 = v19;
    [deviceCopy setActiveDepthDataMinFrameDuration:&v18];
    v13 = _ARLogSensor_1();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      if (deviceCopy)
      {
        [deviceCopy activeDepthDataMinFrameDuration];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      Seconds = CMTimeGetSeconds(&v18);
      *buf = 138544130;
      v24 = v15;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2112;
      v28 = logPrefix2;
      v29 = 2048;
      rateCopy = Seconds;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Depth min frame duration changed to: %f", buf, 0x2Au);
    }
  }
}

- (void)_configureCameraExposureForDevice:(id)device
{
  v55 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if ([deviceCopy position] != 1)
  {
    if ([deviceCopy position] == 2)
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

  deviceType = [deviceCopy deviceType];
  v6 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(deviceType);

  if ((v6 & 1) == 0)
  {
    deviceType2 = [deviceCopy deviceType];
    v10 = *MEMORY[0x1E6986948];

    if (deviceType2 == v10)
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

    objc_initWeak(&location, deviceCopy);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __51__ARImageSensor__configureCameraExposureForDevice___block_invoke;
    v46[3] = &unk_1E817BCE0;
    v46[4] = self;
    objc_copyWeak(&v47, &location);
    v45 = v48;
    [deviceCopy setExposureModeCustomWithDuration:&v45 ISO:v46 completionHandler:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v48.value), v15))}];
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  else if ([deviceCopy isExposureModeSupported:2])
  {
    if ([deviceCopy isExposurePointOfInterestSupported])
    {
      [deviceCopy setExposurePointOfInterest:{0.5, 0.5}];
      v16 = _ARLogSensor_1();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        logPrefix = [(ARImageSensor *)self logPrefix];
        [deviceCopy exposurePointOfInterest];
        v21 = v20;
        [deviceCopy exposurePointOfInterest];
        LODWORD(location.value) = 138544386;
        *(&location.value + 4) = v18;
        LOWORD(location.flags) = 2048;
        *(&location.flags + 2) = self;
        HIWORD(location.epoch) = 2112;
        v50 = logPrefix;
        v51 = 2048;
        v52 = v21;
        v53 = 2048;
        v54 = v22;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Exposure point of interest set at %f, %f", &location, 0x34u);
      }
    }

    [deviceCopy setExposureMode:2];
    v23 = _ARLogSensor_1();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      LODWORD(location.value) = 138543874;
      *(&location.value + 4) = v25;
      LOWORD(location.flags) = 2048;
      *(&location.flags + 2) = self;
      HIWORD(location.epoch) = 2112;
      v50 = logPrefix2;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Exposure mode set to AVCaptureExposureModeContinuousAutoExposure", &location, 0x20u);
    }

    memset(&v48, 0, sizeof(v48));
    CMTimeMake(&v48, 1, 60);
    activeFormat = [deviceCopy activeFormat];
    v28 = activeFormat;
    if (activeFormat)
    {
      [activeFormat maxExposureDuration];
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
      [deviceCopy setActiveMaxExposureDuration:&location];
      v30 = _ARLogSensor_1();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        if (deviceCopy)
        {
          [deviceCopy activeMaxExposureDuration];
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
        v50 = logPrefix3;
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
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        location = v48;
        v34 = CMTimeGetSeconds(&location);
        activeFormat2 = [deviceCopy activeFormat];
        v36 = activeFormat2;
        if (activeFormat2)
        {
          [activeFormat2 maxExposureDuration];
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
        v50 = logPrefix4;
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
    [deviceCopy setAutomaticallyAdjustsVideoHDREnabled:1];
  }

  else
  {
    [deviceCopy setAutomaticallyAdjustsVideoHDREnabled:0];
    activeFormat3 = [deviceCopy activeFormat];
    isVideoHDRSupported = [activeFormat3 isVideoHDRSupported];

    if (isVideoHDRSupported)
    {
      [deviceCopy setVideoHDREnabled:0];
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

- (void)_configureCameraWhiteBalanceForDevice:(id)device
{
  v46 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if ([deviceCopy position] == 1)
  {
    deviceType = [deviceCopy deviceType];
    v6 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(deviceType);

    if (v6)
    {
      v7 = &ARBackFacingWideImageSensorWhiteBalanceUserDefaultsKey;
      goto LABEL_9;
    }

    deviceType2 = [deviceCopy deviceType];
    v9 = *MEMORY[0x1E6986948];

    if (deviceType2 != v9)
    {
LABEL_7:
      v10 = 0;
      goto LABEL_21;
    }

    v7 = &ARBackFacingUltraWideImageSensorWhiteBalanceUserDefaultsKey;
  }

  else
  {
    if ([deviceCopy position] != 2)
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

      objc_initWeak(location, deviceCopy);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __55__ARImageSensor__configureCameraWhiteBalanceForDevice___block_invoke;
      v37[3] = &unk_1E817BD08;
      objc_copyWeak(&v38, location);
      v37[4] = self;
      LODWORD(v22) = v15;
      LODWORD(v23) = v18;
      LODWORD(v24) = v21;
      [deviceCopy setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains:v37 completionHandler:{v22, v23, v24}];
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
        logPrefix = [(ARImageSensor *)self logPrefix];
        *location = 138544130;
        *&location[4] = v29;
        v40 = 2048;
        selfCopy3 = self;
        v42 = 2112;
        v43 = logPrefix;
        v44 = 2048;
        v45 = [v12 count];
        _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Custom white balance user defaults does not contain 3 values as expected (number of values found: %tu) ", location, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      *location = 138544130;
      *&location[4] = v32;
      v40 = 2048;
      selfCopy3 = self;
      v42 = 2112;
      v43 = logPrefix2;
      v44 = 2048;
      v45 = [v12 count];
      _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Custom white balance user defaults does not contain 3 values as expected (number of values found: %tu) ", location, 0x2Au);
    }
  }

LABEL_21:
  if ([deviceCopy isWhiteBalanceModeSupported:2])
  {
    [deviceCopy setWhiteBalanceMode:2];
    v12 = _ARLogSensor_1();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *location = 138543874;
      *&location[4] = v35;
      v40 = 2048;
      selfCopy3 = self;
      v42 = 2112;
      v43 = logPrefix3;
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

- (void)_configureCameraFocusForDevice:(id)device
{
  v42 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = _ARLogSensor_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    logPrefix = [(ARImageSensor *)self logPrefix];
    activeFormat = [deviceCopy activeFormat];
    *buf = 138544130;
    v35 = v7;
    v36 = 2048;
    selfCopy4 = self;
    v38 = 2112;
    v39 = logPrefix;
    v40 = 2048;
    v41 = COERCE_DOUBLE([activeFormat autoFocusSystem]);
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Auto focus system: %li", buf, 0x2Au);
  }

  if ([deviceCopy position] != 1)
  {
    v10 = _ARLogSensor_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v35 = v12;
      v36 = 2048;
      selfCopy4 = self;
      v38 = 2112;
      v39 = logPrefix2;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Focus is only configured for back facing image sensor", buf, 0x20u);
    }

    goto LABEL_9;
  }

  if ([(ARImageSensorSettings *)self->_settings autoFocusEnabled])
  {
    if ([deviceCopy isFocusModeSupported:1])
    {
      [deviceCopy setFocusMode:1];
      [(ARImageSensor *)self setRunningSingleShotAutoFocus:1];
    }

    else
    {
      [(ARImageSensor *)self enableAutoFocusForDevice:deviceCopy];
    }

    goto LABEL_23;
  }

  if (![deviceCopy isLockingFocusWithCustomLensPositionSupported])
  {
    v10 = _ARLogSensor_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v35 = v22;
      v36 = 2048;
      selfCopy4 = self;
      v38 = 2112;
      v39 = logPrefix3;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Unable to lock lens position", buf, 0x20u);
    }

LABEL_9:

    goto LABEL_23;
  }

  [(ARImageSensor *)self defaultLensPosition];
  v15 = v14;
  if ([deviceCopy position] == 1 && (objc_msgSend(deviceCopy, "deviceType"), v16 = objc_claimAutoreleasedReturnValue(), v17 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v16), v16, v17))
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

  objc_initWeak(&location, deviceCopy);
  objc_initWeak(&from, self);
  v24 = _ARLogSensor_1();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    *buf = 138544130;
    v35 = v26;
    v36 = 2048;
    selfCopy4 = self;
    v38 = 2112;
    v39 = logPrefix4;
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
  [deviceCopy setFocusModeLockedWithLensPosition:v29 completionHandler:v28];
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

- (void)_configureImageControlModeForDevice:(id)device
{
  v19 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if ([deviceCopy isImageControlModeSupported:1])
  {
    [deviceCopy setAutomaticallyAdjustsImageControlMode:0];
    [deviceCopy setImageControlMode:1];
  }

  v5 = _ARLogSensor_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v9 = 138544386;
    v10 = v7;
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = logPrefix;
    v15 = 1024;
    automaticallyAdjustsImageControlMode = [deviceCopy automaticallyAdjustsImageControlMode];
    v17 = 2048;
    imageControlMode = [deviceCopy imageControlMode];
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Capture device image control mode: %i, %li", &v9, 0x30u);
  }
}

- (void)configureGeometricDistortionCorrectionForDevice:(id)device
{
  v24 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if ([deviceCopy position] == 2)
  {
    v5 = _ARLogSensor_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v16 = 138543874;
      v17 = v7;
      v18 = 2048;
      selfCopy3 = self;
      v20 = 2112;
      v21 = logPrefix;
      v9 = "%{public}@ <%p>: %@ Configuring geometric distortion correction on front facing camera is not supported";
LABEL_11:
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, v9, &v16, 0x20u);
LABEL_12:
    }
  }

  else if ([deviceCopy isGeometricDistortionCorrectionSupported])
  {
    internalSettings = [(ARImageSensor *)self internalSettings];
    [deviceCopy setGeometricDistortionCorrectionEnabled:{objc_msgSend(internalSettings, "backFacingCameraGeometricDistortionCorrectionEnabled")}];

    v5 = _ARLogSensor_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v7 = NSStringFromClass(v11);
      logPrefix = [(ARImageSensor *)self logPrefix];
      internalSettings2 = [(ARImageSensor *)self internalSettings];
      backFacingCameraGeometricDistortionCorrectionEnabled = [internalSettings2 backFacingCameraGeometricDistortionCorrectionEnabled];
      v14 = @"disabled";
      v16 = 138544130;
      v18 = 2048;
      v17 = v7;
      if (backFacingCameraGeometricDistortionCorrectionEnabled)
      {
        v14 = @"enabled";
      }

      selfCopy3 = self;
      v20 = 2112;
      v21 = logPrefix;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      v16 = 138543874;
      v17 = v7;
      v18 = 2048;
      selfCopy3 = self;
      v20 = 2112;
      v21 = logPrefix;
      v9 = "%{public}@ <%p>: %@ Device doesn't support geometric distortion correction";
      goto LABEL_11;
    }
  }
}

- (void)enableAutoFocusForDevice:(id)device
{
  v60 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      v28 = [v7 description];
      *buf = 138544130;
      v51 = v26;
      v52 = 2048;
      selfCopy8 = self;
      v54 = 2112;
      v55 = logPrefix;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      v28 = [v7 description];
      *buf = 138544130;
      v51 = v26;
      v52 = 2048;
      selfCopy8 = self;
      v54 = 2112;
      v55 = logPrefix;
      v56 = 2112;
      v57 = v28;
      v29 = "Error: %{public}@ <%p>: %@ Unable to lock capture device to enable auto focus: %@";
      v30 = v24;
      v31 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v30, v31, v29, buf, 0x2Au);

    goto LABEL_41;
  }

  if ([deviceCopy isFocusPointOfInterestSupported])
  {
    [deviceCopy setFocusPointOfInterest:{0.5, 0.5}];
    v8 = _ARLogSensor_1();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      [deviceCopy focusPointOfInterest];
      v13 = v12;
      [deviceCopy focusPointOfInterest];
      *buf = 138544386;
      v51 = v10;
      v52 = 2048;
      selfCopy8 = self;
      v54 = 2112;
      v55 = logPrefix2;
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
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v51 = v17;
      v52 = 2048;
      selfCopy8 = self;
      v54 = 2112;
      v55 = logPrefix3;
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

  if ([deviceCopy isSmoothAutoFocusSupported])
  {
    [deviceCopy setSmoothAutoFocusEnabled:1];
    v15 = _ARLogSensor_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v51 = v17;
      v52 = 2048;
      selfCopy8 = self;
      v54 = 2112;
      v55 = logPrefix3;
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

  deviceType = [deviceCopy deviceType];
  v34 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(deviceType);

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

  if ([deviceCopy isAutoFocusRangeRestrictionSupported])
  {
    [deviceCopy setAutoFocusRangeRestriction:v35];
    v37 = _ARLogSensor_1();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v51 = v39;
      v52 = 2048;
      selfCopy8 = self;
      v54 = 2112;
      v55 = logPrefix4;
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
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v51 = v39;
      v52 = 2048;
      selfCopy8 = self;
      v54 = 2112;
      v55 = logPrefix4;
      v41 = "%{public}@ <%p>: %@ Device does not support auto focus range restriction";
      v42 = v37;
      v43 = 32;
      goto LABEL_34;
    }
  }

LABEL_36:
  if ([deviceCopy isFocusModeSupported:2])
  {
    [deviceCopy setFocusMode:2];
    v45 = _ARLogSensor_1();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      logPrefix5 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v51 = v47;
      v52 = 2048;
      selfCopy8 = self;
      v54 = 2112;
      v55 = logPrefix5;
      _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Continuous auto focus enabled", buf, 0x20u);
    }
  }

  [deviceCopy unlockForConfiguration];
LABEL_41:
}

- (id)_configureVisionDataOutputForSession:(id)session
{
  v115[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (self->_visionDataOutput)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  v7 = objc_opt_new();
  visionDataOutput = self->_visionDataOutput;
  self->_visionDataOutput = v7;

  if ([sessionCopy canAddOutput:self->_visionDataOutput])
  {
    [sessionCopy addOutputWithNoConnections:self->_visionDataOutput];
  }

  if (self->_visionDataConnection)
  {
LABEL_9:
    visionDataOutputParameters = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];

    if (visionDataOutputParameters)
    {
      v10 = _ARLogSensor_1();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        logPrefix = [(ARImageSensor *)self logPrefix];
        visionDataOutputParameters2 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v15 = [visionDataOutputParameters2 description];
        *buf = 138544130;
        v108 = v12;
        v109 = 2048;
        selfCopy5 = self;
        v111 = 2112;
        v112 = logPrefix;
        v113 = 2112;
        v114 = v15;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Setting vision data output parameters from dictionary: %@", buf, 0x2Au);
      }

      visionDataOutputParameters3 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v17 = [visionDataOutputParameters3 valueForKey:*MEMORY[0x1E698BD90]];
      bOOLValue = [v17 BOOLValue];

      visionDataOutputParameters4 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v20 = [visionDataOutputParameters4 valueForKey:*MEMORY[0x1E698BDA0]];
      [v20 floatValue];
      v22 = v21;

      visionDataOutputParameters5 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v24 = [visionDataOutputParameters5 valueForKey:*MEMORY[0x1E698BDB8]];
      bOOLValue2 = [v24 BOOLValue];

      visionDataOutputParameters6 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v27 = [visionDataOutputParameters6 valueForKey:*MEMORY[0x1E698BDC0]];
      integerValue = [v27 integerValue];

      visionDataOutputParameters7 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v30 = [visionDataOutputParameters7 valueForKey:*MEMORY[0x1E698BDC8]];
      [v30 floatValue];
      v32 = v31;

      visionDataOutputParameters8 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v34 = [visionDataOutputParameters8 valueForKey:*MEMORY[0x1E698BDE0]];
      [v34 floatValue];
      v36 = v35;

      visionDataOutputParameters9 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v38 = [visionDataOutputParameters9 valueForKey:*MEMORY[0x1E698BDE8]];
      integerValue2 = [v38 integerValue];

      visionDataOutputParameters10 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v41 = [visionDataOutputParameters10 valueForKey:*MEMORY[0x1E698BDF0]];
      [v41 floatValue];
      v43 = v42;

      visionDataOutputParameters11 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v45 = [visionDataOutputParameters11 valueForKey:*MEMORY[0x1E698BDF8]];
      [v45 floatValue];
      v47 = v46;

      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setFeatureBinningEnabled:bOOLValue];
      LODWORD(v48) = v22;
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setKeypointDetectionThreshold:v48];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setFeatureOrientationAssignmentEnabled:bOOLValue2];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setGaussianPyramidOctavesCount:integerValue];
      LODWORD(v49) = v32;
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setGaussianPyramidBaseOctaveDownscalingFactor:v49];
      CMTimeMakeWithSeconds(&v106, v36, 1000);
      v50 = self->_visionDataOutput;
      v105 = v106;
      [(AVCaptureVisionDataOutput *)v50 setMaxBurstDuration:&v105];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setMaxKeypointsCount:integerValue2];
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
        visionDataOutputParameters12 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v54 = [visionDataOutputParameters12 valueForKey:*MEMORY[0x1E698BD88]];
        -[AVCaptureVisionDataOutput setDynamicThresholdingEnabled:](self->_visionDataOutput, "setDynamicThresholdingEnabled:", [v54 BOOLValue]);
      }

      visionDataOutputParameters13 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v56 = [visionDataOutputParameters13 valueForKey:*MEMORY[0x1E698BD98]];
      integerValue3 = [v56 integerValue];

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isKeypointDetectionFlowTypeSupported:integerValue3])
      {
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setKeypointDetectionFlowType:integerValue3];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSubPixelThresholdSupported])
      {
        visionDataOutputParameters14 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v59 = [visionDataOutputParameters14 valueForKey:*MEMORY[0x1E698BE18]];
        -[AVCaptureVisionDataOutput setSubPixelThreshold:](self->_visionDataOutput, "setSubPixelThreshold:", [v59 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isFeatureMatchingSupported])
      {
        visionDataOutputParameters15 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v61 = [visionDataOutputParameters15 valueForKey:*MEMORY[0x1E698BDB0]];
        -[AVCaptureVisionDataOutput setFeatureMatchingEnabled:](self->_visionDataOutput, "setFeatureMatchingEnabled:", [v61 BOOLValue]);

        visionDataOutputParameters16 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v63 = [visionDataOutputParameters16 valueForKey:*MEMORY[0x1E698BDA8]];
        -[AVCaptureVisionDataOutput setFeatureMatchingDescriptorSize:](self->_visionDataOutput, "setFeatureMatchingDescriptorSize:", [v63 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isOrientationDistanceThresholdSupported])
      {
        visionDataOutputParameters17 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v65 = [visionDataOutputParameters17 valueForKey:*MEMORY[0x1E698BE00]];
        [v65 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setOrientationDistanceThreshold:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSigmaDistanceThresholdSupported])
      {
        visionDataOutputParameters18 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v67 = [visionDataOutputParameters18 valueForKey:*MEMORY[0x1E698BE08]];
        [v67 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setSigmaDistanceThreshold:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSquareDistanceDisparityFractionSupported])
      {
        visionDataOutputParameters19 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v69 = [visionDataOutputParameters19 valueForKey:*MEMORY[0x1E698BE10]];
        [v69 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setSquareDistanceDisparityFraction:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isHammingDistanceThresholdSupported])
      {
        visionDataOutputParameters20 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v71 = [visionDataOutputParameters20 valueForKey:*MEMORY[0x1E698BDD0]];
        -[AVCaptureVisionDataOutput setHammingDistanceThreshold:](self->_visionDataOutput, "setHammingDistanceThreshold:", [v71 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isLACCConfigAndMetadataSupported])
      {
        visionDataOutputParameters21 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v73 = [visionDataOutputParameters21 valueForKey:*MEMORY[0x1E698BDD8]];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setLaccConfigAndMetadata:v73];
      }
    }

    goto LABEL_2;
  }

  device = [(AVCaptureDeviceInput *)self->_videoInput device];
  deviceType = [device deviceType];

  if (deviceType == *MEMORY[0x1E6986908] || deviceType == *MEMORY[0x1E6986900] || deviceType == *MEMORY[0x1E6986938])
  {
    v78 = *MEMORY[0x1E6986950];

    deviceType = v78;
  }

  videoInput = self->_videoInput;
  device2 = [(AVCaptureDeviceInput *)videoInput device];
  v81 = -[AVCaptureDeviceInput portsWithMediaType:sourceDeviceType:sourceDevicePosition:](videoInput, "portsWithMediaType:sourceDeviceType:sourceDevicePosition:", *MEMORY[0x1E6986FB0], deviceType, [device2 position]);
  firstObject = [v81 firstObject];

  if (firstObject)
  {
    v83 = MEMORY[0x1E6987070];
    v115[0] = firstObject;
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
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v108 = v96;
        v109 = 2048;
        selfCopy5 = self;
        v111 = 2112;
        v112 = logPrefix2;
        _os_log_impl(&dword_1C241C000, v89, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add vision data connection to capture session", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      v101 = objc_opt_class();
      v102 = NSStringFromClass(v101);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v108 = v102;
      v109 = 2048;
      selfCopy5 = self;
      v111 = 2112;
      v112 = logPrefix3;
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
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v108 = v91;
        v109 = 2048;
        selfCopy5 = self;
        v111 = 2112;
        v112 = logPrefix4;
        _os_log_impl(&dword_1C241C000, v89, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find a vision data port in the input added to the capture session", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v98 = objc_opt_class();
      v99 = NSStringFromClass(v98);
      logPrefix5 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v108 = v99;
      v109 = 2048;
      selfCopy5 = self;
      v111 = 2112;
      v112 = logPrefix5;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      v7 = 138543874;
      v8 = v5;
      v9 = 2048;
      selfCopy = self;
      v11 = 2112;
      v12 = logPrefix;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Enabling continuous auto focus after single shot auto focus is locked.", &v7, 0x20u);
    }

    [(ARImageSensor *)self enableAutoFocusForDevice:self->_captureDevice];
  }
}

- (void)trackExposureTargetOffsetIfNeededForImageData:(id)data shouldDrop:(BOOL *)drop
{
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(ARImageSensorSettings *)self->_settings dropsInitialFramesOutsideExposureTargetOffsetThreshold]|| self->_reachedExposureTargetOffsetThreshold)
  {
    goto LABEL_9;
  }

  [dataCopy timestamp];
  [dataCopy exposureTargetOffset];
  kdebug_trace();
  ++self->_initialImageDatasCounter;
  [dataCopy exposureTargetOffset];
  v8 = v7;
  [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
  if (v8 < v9 || ([dataCopy exposureTargetOffset], v11 = v10, -[ARImageSensorSettings positiveExposureTargetOffsetThreshold](self->_settings, "positiveExposureTargetOffsetThreshold"), v11 > v12))
  {
    initialImageDatasCounter = self->_initialImageDatasCounter;
    if (initialImageDatasCounter <= [(ARImageSensorSettings *)self->_settings maximumNumberOfInitialFramesDropped])
    {
      [dataCopy exposureTargetOffset];
      v25 = v24;
      [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
      if (v25 >= v26)
      {
        [dataCopy exposureTargetOffset];
        v35 = v34;
        [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
        if (v35 <= v36)
        {
LABEL_21:
          if (!drop)
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
          [dataCopy exposureTargetOffset];
          v39 = v38;
          [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
          v41 = 138544130;
          v42 = v29;
          v43 = 2048;
          selfCopy3 = self;
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
          [dataCopy exposureTargetOffset];
          v31 = v30;
          [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
          v41 = 138544130;
          v42 = v29;
          v43 = 2048;
          selfCopy3 = self;
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
    [dataCopy exposureTargetOffset];
    v19 = v18;
    [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
    v21 = v20;
    [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
    v41 = 138544642;
    v42 = v16;
    v43 = 2048;
    selfCopy3 = self;
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
  if (drop)
  {
    v23 = 0;
LABEL_11:
    *drop = v23;
  }

LABEL_12:
}

- (void)setInterrupted:(BOOL)interrupted
{
  if (self->_interrupted != interrupted)
  {
    self->_interrupted = interrupted;
    if (interrupted)
    {
      [(ARImageSensor *)self resetExposureTracking];
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_createCMTimeFractionFromDecimalDuration:(SEL)duration
{
  [&unk_1F4255BF0 doubleValue];
  if (fabs(a4 + -1.0 / v6) >= 0.00001)
  {

    return CMTimeMakeWithSeconds(retstr, a4, 1000);
  }

  else
  {
    intValue = [&unk_1F4255BF0 intValue];

    return CMTimeMake(retstr, 1, intValue);
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

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  output = [connection output];
  videoOutput = self->_videoOutput;

  if (output == videoOutput)
  {
    v9 = [ARImageData alloc];
    captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
    captureDevice = [(ARImageSensor *)self captureDevice];
    captureSession = [(ARImageSensor *)self captureSession];
    v21 = [(ARImageData *)v9 initWithSampleBuffer:buffer captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession];

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

- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = CMGetAttachment(buffer, *MEMORY[0x1E6960498], 0);
  CMSampleBufferGetPresentationTimeStamp(&v13, buffer);
  Seconds = CMTimeGetSeconds(&v13);
  v9 = _ARLogSensor_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    logPrefix = [(ARImageSensor *)self logPrefix];
    LODWORD(v13.value) = 138544386;
    *(&v13.value + 4) = v11;
    LOWORD(v13.flags) = 2048;
    *(&v13.flags + 2) = self;
    HIWORD(v13.epoch) = 2112;
    v14 = logPrefix;
    v15 = 2048;
    v16 = Seconds;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ capture session dropped video frame: %f, %@", &v13, 0x34u);
  }
}

- (void)_logIfDataIsMissingWithVideoData:(id)data visionData:(id)visionData calibrationData:(id)calibrationData
{
  v88 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  visionDataCopy = visionData;
  calibrationDataCopy = calibrationData;
  if (!dataCopy)
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
      captureDevice = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice deviceType];
      v80 = 138543874;
      v81 = v15;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType;
      v23 = "%{public}@ <%p>: %@: No video frame received. Dropping frame!";
      goto LABEL_20;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    v29 = objc_opt_class();
    v15 = NSStringFromClass(v29);
    captureDevice = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice deviceType];
    v80 = 138543874;
    v81 = v15;
    v82 = 2048;
    selfCopy16 = self;
    v84 = 2112;
    v85 = deviceType;
    v23 = "Error: %{public}@ <%p>: %@: No video frame received. Dropping frame!";
LABEL_28:
    v27 = v13;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_29;
  }

  if (![dataCopy sampleBufferWasDropped])
  {
    if ([dataCopy sampleBuffer])
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
      captureDevice = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice deviceType];
      v80 = 138543874;
      v81 = v15;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType;
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
    captureDevice = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice deviceType];
    v80 = 138543874;
    v81 = v15;
    v82 = 2048;
    selfCopy16 = self;
    v84 = 2112;
    v85 = deviceType;
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
      captureDevice = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice deviceType];
      droppedReason = [dataCopy droppedReason];
      if (droppedReason > 3)
      {
        v19 = @"Undefined";
      }

      else
      {
        v19 = *(&off_1E817BD50 + droppedReason);
      }

      v80 = 138544130;
      v81 = v15;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType;
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
    captureDevice = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice deviceType];
    droppedReason2 = [dataCopy droppedReason];
    if (droppedReason2 > 3)
    {
      v32 = @"Undefined";
    }

    else
    {
      v32 = *(&off_1E817BD50 + droppedReason2);
    }

    v80 = 138544130;
    v81 = v15;
    v82 = 2048;
    selfCopy16 = self;
    v84 = 2112;
    v85 = deviceType;
    v86 = 2112;
    v87 = v32;
    v23 = "Error: %{public}@ <%p>: %@: No video frame received. Dropping frame! Reason: %@";
    v27 = v13;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_34;
  }

LABEL_36:

LABEL_37:
  if (!visionDataCopy)
  {
    goto LABEL_64;
  }

  if (![visionDataCopy visionDataWasDropped])
  {
    if ([visionDataCopy visionDataPixelBuffer])
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
      captureDevice2 = [(ARImageSensor *)self captureDevice];
      deviceType2 = [captureDevice2 deviceType];
      v80 = 138543874;
      v81 = v39;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType2;
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
      captureDevice2 = [(ARImageSensor *)self captureDevice];
      deviceType2 = [captureDevice2 deviceType];
      v80 = 138543874;
      v81 = v39;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType2;
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
      captureDevice2 = [(ARImageSensor *)self captureDevice];
      deviceType2 = [captureDevice2 deviceType];
      droppedReason3 = [visionDataCopy droppedReason];
      if (droppedReason3 > 3)
      {
        v43 = @"Undefined";
      }

      else
      {
        v43 = *(&off_1E817BD50 + droppedReason3);
      }

      v80 = 138544130;
      v81 = v39;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType2;
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
    captureDevice2 = [(ARImageSensor *)self captureDevice];
    deviceType2 = [captureDevice2 deviceType];
    droppedReason4 = [visionDataCopy droppedReason];
    if (droppedReason4 > 3)
    {
      v52 = @"Undefined";
    }

    else
    {
      v52 = *(&off_1E817BD50 + droppedReason4);
    }

    v80 = 138544130;
    v81 = v39;
    v82 = 2048;
    selfCopy16 = self;
    v84 = 2112;
    v85 = deviceType2;
    v86 = 2112;
    v87 = v52;
    v47 = "Error: %{public}@ <%p>: %@: Video frame received without vision data. Reason: %@";
    v48 = v37;
    v49 = OS_LOG_TYPE_INFO;
    goto LABEL_61;
  }

LABEL_63:

LABEL_64:
  if (!calibrationDataCopy)
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
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      deviceType3 = [captureDevice3 deviceType];
      v80 = 138543874;
      v81 = v59;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType3;
      v67 = "%{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame!";
      goto LABEL_83;
    }

    if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      goto LABEL_99;
    }

    v74 = objc_opt_class();
    v59 = NSStringFromClass(v74);
    captureDevice3 = [(ARImageSensor *)self captureDevice];
    deviceType3 = [captureDevice3 deviceType];
    v80 = 138543874;
    v81 = v59;
    v82 = 2048;
    selfCopy16 = self;
    v84 = 2112;
    v85 = deviceType3;
    v67 = "Error: %{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame!";
LABEL_91:
    v72 = v57;
    v73 = OS_LOG_TYPE_INFO;
    goto LABEL_92;
  }

  if ([calibrationDataCopy cameraCalibrationDataWasDropped])
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
        captureDevice3 = [(ARImageSensor *)self captureDevice];
        deviceType3 = [captureDevice3 deviceType];
        droppedReason5 = [calibrationDataCopy droppedReason];
        if (droppedReason5 > 3)
        {
          v63 = @"Undefined";
        }

        else
        {
          v63 = *(&off_1E817BD50 + droppedReason5);
        }

        v80 = 138544130;
        v81 = v59;
        v82 = 2048;
        selfCopy16 = self;
        v84 = 2112;
        v85 = deviceType3;
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
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      deviceType3 = [captureDevice3 deviceType];
      droppedReason6 = [calibrationDataCopy droppedReason];
      if (droppedReason6 > 3)
      {
        v77 = @"Undefined";
      }

      else
      {
        v77 = *(&off_1E817BD50 + droppedReason6);
      }

      v80 = 138544130;
      v81 = v59;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType3;
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

  cameraCalibrationData = [calibrationDataCopy cameraCalibrationData];

  if (!cameraCalibrationData)
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
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      deviceType3 = [captureDevice3 deviceType];
      v80 = 138543874;
      v81 = v59;
      v82 = 2048;
      selfCopy16 = self;
      v84 = 2112;
      v85 = deviceType3;
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
    captureDevice3 = [(ARImageSensor *)self captureDevice];
    deviceType3 = [captureDevice3 deviceType];
    v80 = 138543874;
    v81 = v59;
    v82 = 2048;
    selfCopy16 = self;
    v84 = 2112;
    v85 = deviceType3;
    v67 = "Error: %{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! No reason provided";
    goto LABEL_91;
  }

LABEL_100:
}

- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection
{
  collectionCopy = collection;
  [collectionCopy count];
  kdebug_trace();
  v6 = [collectionCopy synchronizedDataForCaptureOutput:self->_videoOutput];
  v7 = [collectionCopy synchronizedDataForCaptureOutput:self->_visionDataOutput];
  v8 = [collectionCopy synchronizedDataForCaptureOutput:self->_calibrationOutput];

  if (!self->_calibrationOutput || (-[ARImageSensor _logIfDataIsMissingWithVideoData:visionData:calibrationData:](self, "_logIfDataIsMissingWithVideoData:visionData:calibrationData:", v6, v7, v8), v8) && ![v8 cameraCalibrationDataWasDropped] && (objc_msgSend(v8, "cameraCalibrationData"), v9 = objc_claimAutoreleasedReturnValue(), v9, v6) && v9)
  {
    cameraCalibrationData = [v8 cameraCalibrationData];
    cameraCalibrationData = self->_cameraCalibrationData;
    self->_cameraCalibrationData = cameraCalibrationData;

    v12 = [ARImageData alloc];
    sampleBuffer = [v6 sampleBuffer];
    captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
    captureDevice = [(ARImageSensor *)self captureDevice];
    captureSession = [(ARImageSensor *)self captureSession];
    v17 = [(ARImageData *)v12 initWithSampleBuffer:sampleBuffer captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession];

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

- (void)cameraCalibrationDataOutput:(id)output didOutputCameraCalibrationData:(id)data timestamp:(id *)timestamp connection:(id)connection
{
  v28 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  dataCopy = data;
  connectionCopy = connection;
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      v22 = 138543874;
      v23 = v16;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2112;
      v27 = logPrefix;
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
    logPrefix = [(ARImageSensor *)self logPrefix];
    v22 = 138543874;
    v23 = v16;
    v24 = 2048;
    selfCopy2 = self;
    v26 = 2112;
    v27 = logPrefix;
    v18 = "Error: %{public}@ <%p>: %@ cameraCalibrationDataOutput:didOutputCameraCalibrationData called without an AVCaptureDataOutputSynchronizer, not supported.";
    v19 = v14;
    v20 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)cameraCalibrationDataOutput:(id)output didDropCameraCalibrationDataAtTimestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = _ARLogSensor_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v15 = *timestamp;
    Seconds = CMTimeGetSeconds(&v15);
    if (reason > 3)
    {
      v14 = @"Undefined";
    }

    else
    {
      v14 = *(&off_1E817BD50 + reason);
    }

    LODWORD(v15.var0) = 138544386;
    *(&v15.var0 + 4) = v11;
    LOWORD(v15.var2) = 2048;
    *(&v15.var2 + 2) = self;
    HIWORD(v15.var3) = 2112;
    v16 = logPrefix;
    v17 = 2048;
    v18 = Seconds;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ capture session dropped calibration data: %lf, %@", &v15, 0x34u);
  }
}

- (void)_dispatchImageData:(id)data
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
LABEL_22:
    kdebug_trace();
    goto LABEL_23;
  }

  if ([dataCopy isHighResolution])
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
      logPrefix = [(ARImageSensor *)self logPrefix];
      [v5 timestamp];
      *buf = 138544386;
      v58 = v8;
      v59 = 2048;
      selfCopy = self;
      v61 = 2112;
      v62 = logPrefix;
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
      allKeys = [(NSMutableDictionary *)extrinsicsMap allKeys];
      v18 = [allKeys countByEnumeratingWithState:&v52 objects:v56 count:16];
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
              objc_enumerationMutation(allKeys);
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

          v19 = [allKeys countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v19);
      }
    }

    bufferPopulationMonitor = [(ARImageSensor *)self bufferPopulationMonitor];
    pixelBuffer = [v5 pixelBuffer];
    captureDevice = [(ARImageSensor *)self captureDevice];
    localizedName = [captureDevice localizedName];
    [v5 timestamp];
    v37 = v36;
    captureDevice2 = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice2 deviceType];
    [bufferPopulationMonitor trackPixelBuffer:pixelBuffer withLabel:localizedName timestamp:ARBufferPopulationMonitorSignpostTypeForCaptureDevice(deviceType) signpostType:v37];

    if ([v5 visionData])
    {
      bufferPopulationMonitor2 = [(ARImageSensor *)self bufferPopulationMonitor];
      visionData = [v5 visionData];
      v42 = MEMORY[0x1E696AEC0];
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      localizedName2 = [captureDevice3 localizedName];
      v45 = [v42 stringWithFormat:@"%@ Vision Data", localizedName2];
      [v5 timestamp];
      [bufferPopulationMonitor2 trackPixelBuffer:visionData withLabel:v45 timestamp:3 signpostType:?];
    }

    [v5 timestamp];
    captureDate = [v5 captureDate];
    [captureDate timeIntervalSinceNow];
    kdebug_trace();

    [v5 timestamp];
    kdebug_trace();
    delegate = [(ARImageSensor *)self delegate];
    [delegate sensor:self didOutputSensorData:v5];

    [v5 timestamp];
    kdebug_trace();
    [v5 timestamp];
    goto LABEL_22;
  }

LABEL_23:
}

+ (void)registerSignPostForImageData:(id)data
{
  dataCopy = data;
  [dataCopy isHighResolution];
  cameraType = [dataCopy cameraType];
  v4 = [cameraType isEqualToString:*MEMORY[0x1E6986950]];

  if (v4)
  {
    cameraPosition = [dataCopy cameraPosition];
    if (cameraPosition == 2)
    {
      [dataCopy timestamp];
      goto LABEL_29;
    }

    if (cameraPosition != 1)
    {
      v6 = dataCopy;
      if (cameraPosition)
      {
        goto LABEL_30;
      }

      v7 = dataCopy;
      goto LABEL_15;
    }

    v12 = dataCopy;
LABEL_17:
    [v12 timestamp];
    [dataCopy imageResolution];
    [dataCopy imageResolution];
    goto LABEL_29;
  }

  cameraType2 = [dataCopy cameraType];
  if ([cameraType2 isEqualToString:*MEMORY[0x1E6986908]])
  {

LABEL_9:
    if ([dataCopy cameraPosition] != 1)
    {
      goto LABEL_14;
    }

    captureLens = [dataCopy captureLens];
    if (captureLens <= 1)
    {
      if (captureLens)
      {
        v6 = dataCopy;
        if (captureLens != 1)
        {
          goto LABEL_30;
        }

        v12 = dataCopy;
        goto LABEL_17;
      }

LABEL_14:
      v7 = dataCopy;
LABEL_15:
      [v7 timestamp];
      goto LABEL_29;
    }

    if (captureLens != 2)
    {
      v6 = dataCopy;
      if (captureLens != 3)
      {
        goto LABEL_30;
      }

      [dataCopy timestamp];
      [dataCopy imageResolution];
      [dataCopy imageResolution];
      goto LABEL_29;
    }

    [dataCopy timestamp];
LABEL_28:
    [dataCopy imageResolution];
    [dataCopy imageResolution];
    goto LABEL_29;
  }

  cameraType3 = [dataCopy cameraType];
  v10 = [cameraType3 isEqualToString:*MEMORY[0x1E6986938]];

  if (v10)
  {
    goto LABEL_9;
  }

  cameraType4 = [dataCopy cameraType];
  v14 = [cameraType4 isEqualToString:*MEMORY[0x1E6986940]];

  if (v14)
  {
    [dataCopy cameraPosition];
    [dataCopy timestamp];
    goto LABEL_29;
  }

  cameraType5 = [dataCopy cameraType];
  v16 = [cameraType5 isEqualToString:*MEMORY[0x1E6986948]];

  v6 = dataCopy;
  if (!v16)
  {
    goto LABEL_30;
  }

  cameraPosition2 = [dataCopy cameraPosition];
  [dataCopy timestamp];
  if (cameraPosition2 == 1)
  {
    goto LABEL_28;
  }

LABEL_29:
  kdebug_trace();
  v6 = dataCopy;
LABEL_30:
  if ([v6 visionData])
  {
    [dataCopy timestamp];
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