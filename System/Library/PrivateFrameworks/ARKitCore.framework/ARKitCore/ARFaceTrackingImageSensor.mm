@interface ARFaceTrackingImageSensor
- (ARFaceTrackingImageSensor)initWithSettings:(id)settings captureSession:(id)session captureQueue:(id)queue;
- (id)_configureMetaDataOutput;
- (id)configureCaptureSession;
- (id)configureCaptureSessionCalibration;
- (id)outputsForSynchronizer;
- (id)prepareToStart;
- (int64_t)_videoOrientation;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)capturedSynchedOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromVideoConnection:(id)connection metaDataOutput:(id)dataOutput didOutputMetadataObjects:(id)objects didOutputDepthData:(id)data atTime:(id *)time;
- (void)configureCaptureDevice;
- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection;
- (void)dealloc;
- (void)reconfigure:(id)reconfigure;
- (void)stop;
@end

@implementation ARFaceTrackingImageSensor

- (ARFaceTrackingImageSensor)initWithSettings:(id)settings captureSession:(id)session captureQueue:(id)queue
{
  settingsCopy = settings;
  sessionCopy = session;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = ARFaceTrackingImageSensor;
  v11 = [(ARImageSensor *)&v15 initWithSettings:settingsCopy captureSession:sessionCopy captureQueue:queueCopy];
  if (v11)
  {
    v12 = dispatch_semaphore_create(1);
    faceDataSemaphore = v11->_faceDataSemaphore;
    v11->_faceDataSemaphore = v12;

    v11->_usePreviousImageDataUponDataDrop = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.face.previousImageDataOnDrop"];
  }

  return v11;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor();
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

  [(ARFaceTrackingImageSensor *)self stop];
  v7.receiver = self;
  v7.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v7 dealloc];
}

- (id)outputsForSynchronizer
{
  v3 = objc_opt_new();
  videoOutput = [(ARImageSensor *)self videoOutput];

  if (videoOutput)
  {
    videoOutput2 = [(ARImageSensor *)self videoOutput];
    [v3 addObject:videoOutput2];
  }

  if (self->_depthDataOutput)
  {
    [v3 addObject:?];
  }

  if (self->_metaDataOutput)
  {
    internalSettings = [(ARImageSensor *)self internalSettings];
    metaData = [internalSettings metaData];
    v8 = [metaData isEqualToString:*MEMORY[0x1E6987018]];

    if (v8)
    {
      [v3 addObject:self->_metaDataOutput];
    }
  }

  return v3;
}

- (void)reconfigure:(id)reconfigure
{
  v24 = *MEMORY[0x1E69E9840];
  reconfigureCopy = reconfigure;
  v15.receiver = self;
  v15.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v15 reconfigure:reconfigureCopy];
  if ([(ARImageSensor *)self canReconfigure:reconfigureCopy])
  {
    maximumNumberOfTrackedFaces = [reconfigureCopy maximumNumberOfTrackedFaces];
    internalSettings = [(ARImageSensor *)self internalSettings];
    LOBYTE(maximumNumberOfTrackedFaces) = maximumNumberOfTrackedFaces == [internalSettings maximumNumberOfTrackedFaces];

    if ((maximumNumberOfTrackedFaces & 1) == 0)
    {
      if ([(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingSupported]&& [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingMetadataObjectTypesAvailable])
      {
        -[AVCaptureMetadataOutput setFaceTrackingMaxFaces:](self->_metaDataOutput, "setFaceTrackingMaxFaces:", [reconfigureCopy maximumNumberOfTrackedFaces]);
        v7 = _ARLogSensor();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          faceTrackingMaxFaces = [(AVCaptureMetadataOutput *)self->_metaDataOutput faceTrackingMaxFaces];
          isFaceTrackingUsingFaceRecognition = [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingUsingFaceRecognition];
          v12 = @"NO";
          *buf = 138544130;
          v17 = v9;
          v18 = 2048;
          if (isFaceTrackingUsingFaceRecognition)
          {
            v12 = @"YES";
          }

          selfCopy = self;
          v20 = 2048;
          v21 = faceTrackingMaxFaces;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Reconfigured to maxFaces: %li, faceRecognition enabled: %@", buf, 0x2Au);
        }
      }

      maximumNumberOfTrackedFaces2 = [reconfigureCopy maximumNumberOfTrackedFaces];
      internalSettings2 = [(ARImageSensor *)self internalSettings];
      [internalSettings2 setMaximumNumberOfTrackedFaces:maximumNumberOfTrackedFaces2];
    }
  }
}

- (int64_t)_videoOrientation
{
  internalSettings = [(ARImageSensor *)self internalSettings];
  videoFormat = [internalSettings videoFormat];
  captureDevicePosition = [videoFormat captureDevicePosition];

  internalSettings2 = [(ARImageSensor *)self internalSettings];
  v7 = internalSettings2;
  if (captureDevicePosition == 2)
  {
    if ([internalSettings2 mirrorVideoOutput])
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }
  }

  else if ([internalSettings2 mirrorVideoOutput])
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

- (id)configureCaptureSession
{
  v83[1] = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = ARFaceTrackingImageSensor;
  configureCaptureSession = [(ARImageSensor *)&v74 configureCaptureSession];
  if (!configureCaptureSession)
  {
    if (!ARHasH10())
    {
      videoOutput = [(ARImageSensor *)self videoOutput];
      [videoOutput setAlwaysDiscardsLateVideoFrames:0];
    }

    videoOutput2 = [(ARImageSensor *)self videoOutput];
    v6 = [videoOutput2 connectionWithMediaType:*MEMORY[0x1E6987608]];

    internalSettings = [(ARImageSensor *)self internalSettings];
    [v6 setVideoMirrored:{objc_msgSend(internalSettings, "mirrorVideoOutput")}];

    [v6 setVideoOrientation:{-[ARFaceTrackingImageSensor _videoOrientation](self, "_videoOrientation")}];
    if (!self->_depthDataOutput)
    {
      captureDevice = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice deviceType];
      v10 = deviceType == *MEMORY[0x1E6986940];

      if (v10)
      {
        v13 = objc_opt_new();
        depthDataOutput = self->_depthDataOutput;
        self->_depthDataOutput = v13;

        captureSession = [(ARImageSensor *)self captureSession];
        v16 = [captureSession canAddOutput:self->_depthDataOutput];

        if (!v16)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            [ARFaceTrackingImageSensor configureCaptureSession];
          }

          v47 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v48 = _ARLogSensor();
          v49 = v48;
          if (v47 == 1)
          {
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v50 = objc_opt_class();
              v51 = NSStringFromClass(v50);
              logPrefix = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v76 = v51;
              v77 = 2048;
              selfCopy9 = self;
              v79 = 2112;
              v80 = logPrefix;
              _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add depth data output to the capture session.", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v53 = objc_opt_class();
            v54 = NSStringFromClass(v53);
            logPrefix2 = [(ARImageSensor *)self logPrefix];
            *buf = 138543874;
            v76 = v54;
            v77 = 2048;
            selfCopy9 = self;
            v79 = 2112;
            v80 = logPrefix2;
            _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add depth data output to the capture session.", buf, 0x20u);
          }

          _configureMetaDataOutput = ARErrorWithCodeAndUserInfo(102, 0);
          goto LABEL_7;
        }

        captureSession2 = [(ARImageSensor *)self captureSession];
        [captureSession2 addOutputWithNoConnections:self->_depthDataOutput];

        v18 = _ARLogSensor();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          logPrefix3 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v76 = v20;
          v77 = 2048;
          selfCopy9 = self;
          v79 = 2112;
          v80 = logPrefix3;
          _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Added depth data output to the capture session", buf, 0x20u);
        }

        if (!self->_depthConnection)
        {
          videoInput = [(ARImageSensor *)self videoInput];
          videoInput2 = [(ARImageSensor *)self videoInput];
          device = [videoInput2 device];
          deviceType2 = [device deviceType];
          videoInput3 = [(ARImageSensor *)self videoInput];
          device2 = [videoInput3 device];
          position = [device2 position];
          v29 = [videoInput portsWithMediaType:*MEMORY[0x1E69875C0] sourceDeviceType:deviceType2 sourceDevicePosition:position];
          firstObject = [v29 firstObject];

          if (firstObject)
          {
            v30 = MEMORY[0x1E6987070];
            v83[0] = firstObject;
            v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
            v32 = [v30 connectionWithInputPorts:v31 output:self->_depthDataOutput];
            depthConnection = self->_depthConnection;
            self->_depthConnection = v32;

            captureSession3 = [(ARImageSensor *)self captureSession];
            LOBYTE(v30) = [captureSession3 canAddConnection:self->_depthConnection];

            if (v30)
            {
              connections = [(ARImageSensor *)self connections];
              [connections addObject:self->_depthConnection];

              captureSession4 = [(ARImageSensor *)self captureSession];
              [captureSession4 addConnection:self->_depthConnection];

              v37 = _ARLogSensor();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                v38 = objc_opt_class();
                v39 = NSStringFromClass(v38);
                logPrefix4 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v76 = v39;
                v77 = 2048;
                selfCopy9 = self;
                v79 = 2112;
                v80 = logPrefix4;
                _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added depth data output to the capture session", buf, 0x20u);
              }

              [(AVCaptureDepthDataOutput *)self->_depthDataOutput setAlwaysDiscardsLateDepthData:1];
              [(AVCaptureDepthDataOutput *)self->_depthDataOutput setFilteringEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imageSensor.face.depthDataFiltering"]];
              v41 = _ARLogSensor();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = objc_opt_class();
                v43 = NSStringFromClass(v42);
                logPrefix5 = [(ARImageSensor *)self logPrefix];
                isFilteringEnabled = [(AVCaptureDepthDataOutput *)self->_depthDataOutput isFilteringEnabled];
                v46 = @"disabled";
                *buf = 138544130;
                v76 = v43;
                v77 = 2048;
                if (isFilteringEnabled)
                {
                  v46 = @"enabled";
                }

                selfCopy9 = self;
                v79 = 2112;
                v80 = logPrefix5;
                v81 = 2112;
                v82 = v46;
                _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Depth data filtering is %@.", buf, 0x2Au);
              }

              -[AVCaptureConnection setVideoMirrored:](self->_depthConnection, "setVideoMirrored:", [v6 isVideoMirrored]);
              -[AVCaptureConnection setVideoOrientation:](self->_depthConnection, "setVideoOrientation:", [v6 videoOrientation]);

              goto LABEL_6;
            }

            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARFaceTrackingImageSensor configureCaptureSession];
            }

            v62 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v63 = _ARLogSensor();
            v58 = v63;
            if (v62 == 1)
            {
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                v64 = objc_opt_class();
                v65 = NSStringFromClass(v64);
                logPrefix6 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v76 = v65;
                v77 = 2048;
                selfCopy9 = self;
                v79 = 2112;
                v80 = logPrefix6;
                _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add depth connection to the capture session.", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v70 = objc_opt_class();
              v71 = NSStringFromClass(v70);
              logPrefix7 = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v76 = v71;
              v77 = 2048;
              selfCopy9 = self;
              v79 = 2112;
              v80 = logPrefix7;
              _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add depth connection to the capture session.", buf, 0x20u);
            }
          }

          else
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARFaceTrackingImageSensor configureCaptureSession];
            }

            v56 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v57 = _ARLogSensor();
            v58 = v57;
            if (v56 == 1)
            {
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                v59 = objc_opt_class();
                v60 = NSStringFromClass(v59);
                logPrefix8 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v76 = v60;
                v77 = 2048;
                selfCopy9 = self;
                v79 = 2112;
                v80 = logPrefix8;
                _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find depth data input port on the video input.", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v67 = objc_opt_class();
              v68 = NSStringFromClass(v67);
              logPrefix9 = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v76 = v68;
              v77 = 2048;
              selfCopy9 = self;
              v79 = 2112;
              v80 = logPrefix9;
              _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot find depth data input port on the video input.", buf, 0x20u);
            }
          }

          configureCaptureSession = ARErrorWithCodeAndUserInfo(102, 0);

          goto LABEL_8;
        }
      }
    }

LABEL_6:
    _configureMetaDataOutput = [(ARFaceTrackingImageSensor *)self _configureMetaDataOutput];
LABEL_7:
    configureCaptureSession = _configureMetaDataOutput;
LABEL_8:
  }

  return configureCaptureSession;
}

- (void)configureCaptureDevice
{
  v4.receiver = self;
  v4.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v4 configureCaptureDevice];
  captureDevice = [(ARImageSensor *)self captureDevice];
  [captureDevice setFaceDetectionDrivenImageProcessingEnabled:1];
}

- (id)configureCaptureSessionCalibration
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ skipping configuration for camera calibration output", &v8, 0x20u);
  }

  return 0;
}

- (id)prepareToStart
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v17 = v5;
    v18 = 2048;
    selfCopy2 = self;
    v20 = 2112;
    v21 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ preparing to start", buf, 0x20u);
  }

  self->_signpostFirstFrameDone = 0;
  self->_signpostFirstFaceDone = 0;
  kdebug_trace();
  kdebug_trace();
  v15.receiver = self;
  v15.super_class = ARFaceTrackingImageSensor;
  prepareToStart = [(ARImageSensor *)&v15 prepareToStart];
  if (!prepareToStart)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    self->_startTime = v9;

    self->_droppedFramesPerSec = 0;
    v10 = _ARLogSensor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v17 = v12;
      v18 = 2048;
      selfCopy2 = self;
      v20 = 2112;
      v21 = logPrefix2;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ prepare to start complete", buf, 0x20u);
    }
  }

  return prepareToStart;
}

- (void)stop
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v15 = v5;
    v16 = 2048;
    selfCopy2 = self;
    v18 = 2112;
    v19 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ stopping", buf, 0x20u);
  }

  v13.receiver = self;
  v13.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v13 stop];
  [(AVCaptureMetadataOutput *)self->_metaDataOutput setMetadataObjectsDelegate:0 queue:0];
  availableMetadataObjectTypes = self->_availableMetadataObjectTypes;
  self->_availableMetadataObjectTypes = 0;

  latestFaceData = self->_latestFaceData;
  self->_latestFaceData = 0;

  self->_droppedFramesPerSec = 0;
  self->_startTime = 0.0;
  v9 = _ARLogSensor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    logPrefix2 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v15 = v11;
    v16 = 2048;
    selfCopy2 = self;
    v18 = 2112;
    v19 = logPrefix2;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ stop complete", buf, 0x20u);
  }
}

- (id)_configureMetaDataOutput
{
  v121[1] = *MEMORY[0x1E69E9840];
  internalSettings = [(ARImageSensor *)self internalSettings];
  metaData = [internalSettings metaData];

  if (!metaData)
  {
    captureSession = [(ARImageSensor *)self captureSession];
    [captureSession removeOutput:self->_metaDataOutput];

    metaDataOutput = self->_metaDataOutput;
    self->_metaDataOutput = 0;

    availableMetadataObjectTypes = _ARLogSensor();
    if (os_log_type_enabled(availableMetadataObjectTypes, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v114 = v28;
      v115 = 2048;
      selfCopy12 = self;
      v117 = 2112;
      v118 = logPrefix;
      _os_log_impl(&dword_1C241C000, availableMetadataObjectTypes, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Removed metadata output from the capture session", buf, 0x20u);
    }

    goto LABEL_39;
  }

  if (self->_metaDataOutput)
  {
LABEL_3:
    v5 = self->_metaDataOutput;
    captureQueue = [(ARImageSensor *)self captureQueue];
    [(AVCaptureMetadataOutput *)v5 setMetadataObjectsDelegate:self queue:captureQueue];

    captureSession2 = [(ARImageSensor *)self captureSession];
    outputs = [captureSession2 outputs];
    v9 = [outputs containsObject:self->_metaDataOutput];

    if (!v9)
    {
      delegate = [(ARImageSensor *)self delegate];
      v31 = objc_opt_respondsToSelector();

      if (v31)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v33 = ARKitCoreBundle();
        v34 = [v33 localizedStringForKey:@"Could not add metadata output to capture session" value:&stru_1F4208A80 table:@"Localizable"];
        [dictionary setObject:v34 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v35 = ARErrorWithCodeAndUserInfo(102, dictionary);

        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if ([(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingSupported])
    {
      [(AVCaptureMetadataOutput *)self->_metaDataOutput setFaceTrackingMetadataObjectTypesAvailable:1];
      internalSettings2 = [(ARImageSensor *)self internalSettings];
      -[AVCaptureMetadataOutput setFaceTrackingMaxFaces:](self->_metaDataOutput, "setFaceTrackingMaxFaces:", [internalSettings2 maximumNumberOfTrackedFaces]);

      v11 = _ARLogSensor();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        faceTrackingMaxFaces = [(AVCaptureMetadataOutput *)self->_metaDataOutput faceTrackingMaxFaces];
        isFaceTrackingUsingFaceRecognition = [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingUsingFaceRecognition];
        v16 = @"NO";
        *buf = 138544130;
        v114 = v13;
        v115 = 2048;
        if (isFaceTrackingUsingFaceRecognition)
        {
          v16 = @"YES";
        }

        selfCopy12 = self;
        v117 = 2048;
        v118 = faceTrackingMaxFaces;
        v119 = 2112;
        v120 = v16;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: maxFaces: %li, faceRecognition enabled: %@", buf, 0x2Au);
      }
    }

    availableMetadataObjectTypes = [(AVCaptureMetadataOutput *)self->_metaDataOutput availableMetadataObjectTypes];
    internalSettings3 = [(ARImageSensor *)self internalSettings];
    metaData2 = [internalSettings3 metaData];
    v20 = [availableMetadataObjectTypes containsObject:metaData2];

    if (v20)
    {
      v21 = self->_metaDataOutput;
      internalSettings4 = [(ARImageSensor *)self internalSettings];
      metaData3 = [internalSettings4 metaData];
      v112 = metaData3;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
      [(AVCaptureMetadataOutput *)v21 setMetadataObjectTypes:v24];
    }

    else
    {
      captureSession3 = [(ARImageSensor *)self captureSession];
      [captureSession3 removeOutput:self->_metaDataOutput];

      v65 = self->_metaDataOutput;
      self->_metaDataOutput = 0;

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARFaceTrackingImageSensor configureCaptureSession];
      }

      v66 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v67 = _ARLogSensor();
      v68 = v67;
      if (v66 == 1)
      {
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v69 = objc_opt_class();
          v70 = NSStringFromClass(v69);
          internalSettings5 = [(ARImageSensor *)self internalSettings];
          metaData4 = [internalSettings5 metaData];
          *buf = 138544130;
          v114 = v70;
          v115 = 2048;
          selfCopy12 = self;
          v117 = 2112;
          v118 = metaData4;
          v119 = 2112;
          v120 = availableMetadataObjectTypes;
          _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Metadata %@ is not supported. Available metadata types are %@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        internalSettings6 = [(ARImageSensor *)self internalSettings];
        metaData5 = [internalSettings6 metaData];
        *buf = 138544130;
        v114 = v80;
        v115 = 2048;
        selfCopy12 = self;
        v117 = 2112;
        v118 = metaData5;
        v119 = 2112;
        v120 = availableMetadataObjectTypes;
        _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Metadata %@ is not supported. Available metadata types are %@", buf, 0x2Au);
      }

      delegate2 = [(ARImageSensor *)self delegate];
      v84 = objc_opt_respondsToSelector();

      if (v84)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v86 = ARKitCoreBundle();
        v87 = [v86 localizedStringForKey:@"AVFoundation failed to deliver the requested metadata object types." value:&stru_1F4208A80 table:@"Localizable"];
        [dictionary2 setObject:v87 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v35 = ARErrorWithCodeAndUserInfo(102, dictionary2);

        goto LABEL_41;
      }
    }

LABEL_39:

LABEL_40:
    availableMetadataObjectTypes2 = [(AVCaptureMetadataOutput *)self->_metaDataOutput availableMetadataObjectTypes];
    availableMetadataObjectTypes = self->_availableMetadataObjectTypes;
    self->_availableMetadataObjectTypes = availableMetadataObjectTypes2;

    v35 = 0;
    goto LABEL_41;
  }

  v36 = objc_opt_new();
  v37 = self->_metaDataOutput;
  self->_metaDataOutput = v36;

  captureSession4 = [(ARImageSensor *)self captureSession];
  v39 = [captureSession4 canAddOutput:self->_metaDataOutput];

  if (v39)
  {
    captureSession5 = [(ARImageSensor *)self captureSession];
    [captureSession5 addOutputWithNoConnections:self->_metaDataOutput];

    v41 = _ARLogSensor();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v114 = v43;
      v115 = 2048;
      selfCopy12 = self;
      v117 = 2112;
      v118 = logPrefix2;
      _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added metadata output to the capture session", buf, 0x20u);
    }

    if (self->_metadataConnection)
    {
      goto LABEL_3;
    }

    videoInput = [(ARImageSensor *)self videoInput];
    videoInput2 = [(ARImageSensor *)self videoInput];
    device = [videoInput2 device];
    deviceType = [device deviceType];
    videoInput3 = [(ARImageSensor *)self videoInput];
    device2 = [videoInput3 device];
    position = [device2 position];
    v52 = [videoInput portsWithMediaType:*MEMORY[0x1E69875D8] sourceDeviceType:deviceType sourceDevicePosition:position];
    firstObject = [v52 firstObject];

    if (firstObject)
    {
      v53 = MEMORY[0x1E6987070];
      v121[0] = firstObject;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:1];
      v55 = [v53 connectionWithInputPorts:v54 output:self->_metaDataOutput];
      metadataConnection = self->_metadataConnection;
      self->_metadataConnection = v55;

      captureSession6 = [(ARImageSensor *)self captureSession];
      LOBYTE(v53) = [captureSession6 canAddConnection:self->_metadataConnection];

      if (v53)
      {
        connections = [(ARImageSensor *)self connections];
        [connections addObject:self->_metadataConnection];

        captureSession7 = [(ARImageSensor *)self captureSession];
        [captureSession7 addConnection:self->_metadataConnection];

        v60 = _ARLogSensor();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v61 = objc_opt_class();
          v62 = NSStringFromClass(v61);
          logPrefix3 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v114 = v62;
          v115 = 2048;
          selfCopy12 = self;
          v117 = 2112;
          v118 = logPrefix3;
          _os_log_impl(&dword_1C241C000, v60, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added metadata connection to the capture session", buf, 0x20u);
        }

        goto LABEL_3;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARFaceTrackingImageSensor configureCaptureSession];
      }

      v100 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v101 = _ARLogSensor();
      v96 = v101;
      if (v100 == 1)
      {
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v102 = objc_opt_class();
          v103 = NSStringFromClass(v102);
          logPrefix4 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v114 = v103;
          v115 = 2048;
          selfCopy12 = self;
          v117 = 2112;
          v118 = logPrefix4;
          _os_log_impl(&dword_1C241C000, v96, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add meta data connection to capture session.", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v108 = objc_opt_class();
        v109 = NSStringFromClass(v108);
        logPrefix5 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v114 = v109;
        v115 = 2048;
        selfCopy12 = self;
        v117 = 2112;
        v118 = logPrefix5;
        _os_log_impl(&dword_1C241C000, v96, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add meta data connection to capture session.", buf, 0x20u);
      }
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARFaceTrackingImageSensor configureCaptureSession];
      }

      v94 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v95 = _ARLogSensor();
      v96 = v95;
      if (v94 == 1)
      {
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v97 = objc_opt_class();
          v98 = NSStringFromClass(v97);
          logPrefix6 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v114 = v98;
          v115 = 2048;
          selfCopy12 = self;
          v117 = 2112;
          v118 = logPrefix6;
          _os_log_impl(&dword_1C241C000, v96, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find meta data input port on the video input.", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        v105 = objc_opt_class();
        v106 = NSStringFromClass(v105);
        logPrefix7 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v114 = v106;
        v115 = 2048;
        selfCopy12 = self;
        v117 = 2112;
        v118 = logPrefix7;
        _os_log_impl(&dword_1C241C000, v96, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot find meta data input port on the video input.", buf, 0x20u);
      }
    }

    v35 = ARErrorWithCodeAndUserInfo(102, 0);
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARFaceTrackingImageSensor _configureMetaDataOutput];
    }

    v73 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v74 = _ARLogSensor();
    v75 = v74;
    if (v73 == 1)
    {
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v76 = objc_opt_class();
        v77 = NSStringFromClass(v76);
        logPrefix8 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v114 = v77;
        v115 = 2048;
        selfCopy12 = self;
        v117 = 2112;
        v118 = logPrefix8;
        _os_log_impl(&dword_1C241C000, v75, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add mete data output to the capture session.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v91 = objc_opt_class();
      v92 = NSStringFromClass(v91);
      logPrefix9 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v114 = v92;
      v115 = 2048;
      selfCopy12 = self;
      v117 = 2112;
      v118 = logPrefix9;
      _os_log_impl(&dword_1C241C000, v75, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add mete data output to the capture session.", buf, 0x20u);
    }

    v35 = ARErrorWithCodeAndUserInfo(102, 0);
  }

LABEL_41:

  return v35;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  connectionCopy = connection;
  output = [connectionCopy output];
  videoOutput = [(ARImageSensor *)self videoOutput];

  if (output == videoOutput)
  {
    v12 = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    [(ARFaceTrackingImageSensor *)self capturedSynchedOutput:outputCopy didOutputSampleBuffer:buffer fromVideoConnection:connectionCopy metaDataOutput:0 didOutputMetadataObjects:0 didOutputDepthData:0 atTime:&v12];
  }
}

- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection
{
  v51 = *MEMORY[0x1E69E9840];
  synchronizerCopy = synchronizer;
  collectionCopy = collection;
  videoOutput = [(ARImageSensor *)self videoOutput];
  v8 = [collectionCopy objectForKeyedSubscript:videoOutput];

  v43 = [collectionCopy objectForKeyedSubscript:self->_metaDataOutput];
  if (self->_depthDataOutput)
  {
    v42 = [collectionCopy objectForKeyedSubscript:?];
  }

  else
  {
    v42 = 0;
  }

  dataOutputs = [synchronizerCopy dataOutputs];
  if ([dataOutputs containsObject:self->_metaDataOutput])
  {
    metadataObjectTypes = [(AVCaptureMetadataOutput *)self->_metaDataOutput metadataObjectTypes];
    v11 = *MEMORY[0x1E6987018];
    if ([metadataObjectTypes containsObject:*MEMORY[0x1E6987018]])
    {
      v12 = [(NSArray *)self->_availableMetadataObjectTypes containsObject:v11];
      if (v43)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v8;
      videoOutput2 = [(ARImageSensor *)self videoOutput];
      sbuf = [v39 sampleBuffer];
      videoOutput3 = [(ARImageSensor *)self videoOutput];
      v37 = *MEMORY[0x1E6987608];
      v41 = [videoOutput3 connectionWithMediaType:?];

      if (!self->_signpostFirstFrameDone)
      {
        self->_signpostFirstFrameDone = 1;
        kdebug_trace();
        memset(&v46, 0, sizeof(v46));
        CMSampleBufferGetPresentationTimeStamp(&v46, sbuf);
        v15 = _ARLogSensor();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          logPrefix = [(ARImageSensor *)self logPrefix];
          time = v46;
          Seconds = CMTimeGetSeconds(&time);
          *buf = 138544130;
          *&buf[4] = v17;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 2112;
          v48 = logPrefix;
          v49 = 2048;
          v50 = Seconds;
          _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ received first image data with timestamp: %f", buf, 0x2Au);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v43;
        v21 = self->_metaDataOutput;
        metadataObjects = [v20 metadataObjects];
        if ([(NSArray *)self->_availableMetadataObjectTypes containsObject:*MEMORY[0x1E6987018]])
        {
          v23 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_1];
          v24 = [metadataObjects filteredArrayUsingPredicate:v23];

          v25 = [v24 count] == 0;
          v13 |= v25;
        }

        if (!v41)
        {
          videoOutput4 = [(ARImageSensor *)self videoOutput];
          v27 = [videoOutput4 connectionWithMediaType:v37];

          v41 = v27;
        }
      }

      else
      {
        metadataObjects = 0;
        v21 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        depthData = [v42 depthData];
      }

      else
      {
        depthData = 0;
      }

      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v31 = v30;

      if (v31 - self->_startTime > 1.0)
      {
        self->_startTime = v31;
        self->_droppedFramesPerSec = 0;
      }

      if (v13)
      {
        if (self->_previousImageDataValid && self->_usePreviousImageDataUponDataDrop)
        {
          ++self->_droppedFramesPerSec;
          self->_previousImageDataValid = 0;
          kdebug_trace();
LABEL_38:
          kdebug_trace();
LABEL_45:

          goto LABEL_46;
        }

        droppedFramesPerSec = self->_droppedFramesPerSec;
        if (droppedFramesPerSec <= 4)
        {
          self->_droppedFramesPerSec = droppedFramesPerSec + 1;
          v33 = _ARLogSensor();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            logPrefix2 = [(ARImageSensor *)self logPrefix];
            *buf = 138543874;
            *&buf[4] = v35;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2112;
            v48 = logPrefix2;
            _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Image frame was dropped.", buf, 0x20u);
          }

          goto LABEL_38;
        }

        kdebug_trace();
      }

      if (sbuf)
      {
        kdebug_trace();
        if (v42)
        {
          [v42 timestamp];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        [(ARFaceTrackingImageSensor *)self capturedSynchedOutput:videoOutput2 didOutputSampleBuffer:sbuf fromVideoConnection:v41 metaDataOutput:v21 didOutputMetadataObjects:metadataObjects didOutputDepthData:depthData atTime:buf];
      }

      goto LABEL_45;
    }
  }

LABEL_46:
}

uint64_t __88__ARFaceTrackingImageSensor_dataOutputSynchronizer_didOutputSynchronizedDataCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)capturedSynchedOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromVideoConnection:(id)connection metaDataOutput:(id)dataOutput didOutputMetadataObjects:(id)objects didOutputDepthData:(id)data atTime:(id *)time
{
  connectionCopy = connection;
  objectsCopy = objects;
  dataCopy = data;
  memset(&v47, 0, sizeof(v47));
  CMSampleBufferGetPresentationTimeStamp(&v47, buffer);
  time = v47;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  v15 = [ARImageData alloc];
  captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
  captureDevice = [(ARImageSensor *)self captureDevice];
  captureSession = [(ARImageSensor *)self captureSession];
  v19 = [(ARImageData *)v15 initWithSampleBuffer:buffer captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession];

  -[ARImageData setMirrored:](v19, "setMirrored:", [connectionCopy isVideoMirrored]);
  if (v19)
  {
    [(ARImageSensor *)self enableContinuousAutoFocusIfPossible];
    v42 = objectsCopy;
    v45 = 0;
    [(ARImageSensor *)self trackExposureTargetOffsetIfNeededForImageData:v19 shouldDrop:&v45];
    if ((v45 & 1) == 0)
    {
      bufferPopulationMonitor = [(ARImageSensor *)self bufferPopulationMonitor];
      pixelBuffer = [(ARImageData *)v19 pixelBuffer];
      captureDevice2 = [(ARImageSensor *)self captureDevice];
      localizedName = [captureDevice2 localizedName];
      [(ARImageData *)v19 timestamp];
      v25 = v24;
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice3 deviceType];
      [bufferPopulationMonitor trackPixelBuffer:pixelBuffer withLabel:localizedName timestamp:ARBufferPopulationMonitorSignpostTypeForCaptureDevice(deviceType) signpostType:v25];

      time = *time;
      time2 = **&MEMORY[0x1E6960C70];
      if (CMTimeCompare(&time, &time2))
      {
        time = *time;
        captureSession2 = [(ARImageSensor *)self captureSession];
        captureDate2 = [ARImageData captureDateFromPresentationTimestamp:&time session:captureSession2];

        [(ARImageData *)v19 timestamp];
        captureDate = [(ARImageData *)v19 captureDate];
        [captureDate timeIntervalSinceNow];
        [captureDate2 timeIntervalSinceNow];
        kdebug_trace();
      }

      else
      {
        [(ARImageData *)v19 timestamp];
        captureDate2 = [(ARImageData *)v19 captureDate];
        [captureDate2 timeIntervalSinceNow];
        kdebug_trace();
      }

      outputSynchronizer = [(ARImageSensor *)self outputSynchronizer];
      if (outputSynchronizer && (-[ARImageSensor outputSynchronizer](self, "outputSynchronizer"), v32 = objc_claimAutoreleasedReturnValue(), [v32 dataOutputs], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "containsObject:", self->_metaDataOutput), v33, v32, outputSynchronizer, v34))
      {
        v35 = -[ARFaceData initWithMetadataObjects:mirroredVideoInput:stripDetectionData:]([ARFaceData alloc], "initWithMetadataObjects:mirroredVideoInput:stripDetectionData:", v42, [connectionCopy isVideoMirrored], -[ARFaceTrackingImageSensor recordingMode](self, "recordingMode") ^ 1);
        [(ARImageData *)v19 setFaceData:v35];
      }

      else
      {
        dispatch_semaphore_wait(self->_faceDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        [(ARImageData *)v19 setFaceData:self->_latestFaceData];
        dispatch_semaphore_signal(self->_faceDataSemaphore);
      }

      if (self->_depthDataOutput)
      {
        [(ARImageData *)v19 setDepthData:dataCopy];
        time = *time;
        [(ARImageData *)v19 setDepthDataTimestamp:CMTimeGetSeconds(&time)];
      }

      else
      {
        [(ARImageData *)v19 setDepthData:0];
      }

      self->_previousImageDataValid = 1;
      if (!self->_signpostFirstFaceDone)
      {
        faceData = [(ARImageData *)v19 faceData];
        faceMeshPayload = [faceData faceMeshPayload];
        v38 = [faceMeshPayload objectForKeyedSubscript:*MEMORY[0x1E698C0C0]];
        v39 = [v38 count];

        if (v39)
        {
          self->_signpostFirstFaceDone = 1;
          kdebug_trace();
        }
      }

      [ARImageSensor registerSignPostForImageData:v19];
      [(ARImageData *)v19 timestamp];
      kdebug_trace();
      delegate = [(ARImageSensor *)self delegate];
      [delegate sensor:self didOutputSensorData:v19];

      [(ARImageData *)v19 timestamp];
      kdebug_trace();
      [(ARImageData *)v19 timestamp];
      cameraType = [(ARImageData *)v19 cameraType];
      kdebug_trace();
    }

    objectsCopy = v42;
  }

  else
  {
    kdebug_trace();
  }
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  objectsCopy = objects;
  dispatch_semaphore_wait(self->_faceDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [ARFaceData alloc];
  internalSettings = [(ARImageSensor *)self internalSettings];
  v8 = -[ARFaceData initWithMetadataObjects:mirroredVideoInput:stripDetectionData:](v6, "initWithMetadataObjects:mirroredVideoInput:stripDetectionData:", objectsCopy, [internalSettings mirrorVideoOutput], -[ARFaceTrackingImageSensor recordingMode](self, "recordingMode") ^ 1);
  latestFaceData = self->_latestFaceData;
  self->_latestFaceData = v8;

  dispatch_semaphore_signal(self->_faceDataSemaphore);
}

@end