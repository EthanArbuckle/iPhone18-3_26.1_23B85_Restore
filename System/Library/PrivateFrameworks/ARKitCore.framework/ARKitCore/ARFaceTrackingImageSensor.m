@interface ARFaceTrackingImageSensor
- (ARFaceTrackingImageSensor)initWithSettings:(id)a3 captureSession:(id)a4 captureQueue:(id)a5;
- (id)_configureMetaDataOutput;
- (id)configureCaptureSession;
- (id)configureCaptureSessionCalibration;
- (id)outputsForSynchronizer;
- (id)prepareToStart;
- (int64_t)_videoOrientation;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)capturedSynchedOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromVideoConnection:(id)a5 metaDataOutput:(id)a6 didOutputMetadataObjects:(id)a7 didOutputDepthData:(id)a8 atTime:(id *)a9;
- (void)configureCaptureDevice;
- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4;
- (void)dealloc;
- (void)reconfigure:(id)a3;
- (void)stop;
@end

@implementation ARFaceTrackingImageSensor

- (ARFaceTrackingImageSensor)initWithSettings:(id)a3 captureSession:(id)a4 captureQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ARFaceTrackingImageSensor;
  v11 = [(ARImageSensor *)&v15 initWithSettings:v8 captureSession:v9 captureQueue:v10];
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
    v6 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v6;
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
  v4 = [(ARImageSensor *)self videoOutput];

  if (v4)
  {
    v5 = [(ARImageSensor *)self videoOutput];
    [v3 addObject:v5];
  }

  if (self->_depthDataOutput)
  {
    [v3 addObject:?];
  }

  if (self->_metaDataOutput)
  {
    v6 = [(ARImageSensor *)self internalSettings];
    v7 = [v6 metaData];
    v8 = [v7 isEqualToString:*MEMORY[0x1E6987018]];

    if (v8)
    {
      [v3 addObject:self->_metaDataOutput];
    }
  }

  return v3;
}

- (void)reconfigure:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v15 reconfigure:v4];
  if ([(ARImageSensor *)self canReconfigure:v4])
  {
    v5 = [v4 maximumNumberOfTrackedFaces];
    v6 = [(ARImageSensor *)self internalSettings];
    LOBYTE(v5) = v5 == [v6 maximumNumberOfTrackedFaces];

    if ((v5 & 1) == 0)
    {
      if ([(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingSupported]&& [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingMetadataObjectTypesAvailable])
      {
        -[AVCaptureMetadataOutput setFaceTrackingMaxFaces:](self->_metaDataOutput, "setFaceTrackingMaxFaces:", [v4 maximumNumberOfTrackedFaces]);
        v7 = _ARLogSensor();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = [(AVCaptureMetadataOutput *)self->_metaDataOutput faceTrackingMaxFaces];
          v11 = [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingUsingFaceRecognition];
          v12 = @"NO";
          *buf = 138544130;
          v17 = v9;
          v18 = 2048;
          if (v11)
          {
            v12 = @"YES";
          }

          v19 = self;
          v20 = 2048;
          v21 = v10;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Reconfigured to maxFaces: %li, faceRecognition enabled: %@", buf, 0x2Au);
        }
      }

      v13 = [v4 maximumNumberOfTrackedFaces];
      v14 = [(ARImageSensor *)self internalSettings];
      [v14 setMaximumNumberOfTrackedFaces:v13];
    }
  }
}

- (int64_t)_videoOrientation
{
  v3 = [(ARImageSensor *)self internalSettings];
  v4 = [v3 videoFormat];
  v5 = [v4 captureDevicePosition];

  v6 = [(ARImageSensor *)self internalSettings];
  v7 = v6;
  if (v5 == 2)
  {
    if ([v6 mirrorVideoOutput])
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }
  }

  else if ([v6 mirrorVideoOutput])
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
  v3 = [(ARImageSensor *)&v74 configureCaptureSession];
  if (!v3)
  {
    if (!ARHasH10())
    {
      v4 = [(ARImageSensor *)self videoOutput];
      [v4 setAlwaysDiscardsLateVideoFrames:0];
    }

    v5 = [(ARImageSensor *)self videoOutput];
    v6 = [v5 connectionWithMediaType:*MEMORY[0x1E6987608]];

    v7 = [(ARImageSensor *)self internalSettings];
    [v6 setVideoMirrored:{objc_msgSend(v7, "mirrorVideoOutput")}];

    [v6 setVideoOrientation:{-[ARFaceTrackingImageSensor _videoOrientation](self, "_videoOrientation")}];
    if (!self->_depthDataOutput)
    {
      v8 = [(ARImageSensor *)self captureDevice];
      v9 = [v8 deviceType];
      v10 = v9 == *MEMORY[0x1E6986940];

      if (v10)
      {
        v13 = objc_opt_new();
        depthDataOutput = self->_depthDataOutput;
        self->_depthDataOutput = v13;

        v15 = [(ARImageSensor *)self captureSession];
        v16 = [v15 canAddOutput:self->_depthDataOutput];

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
              v52 = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v76 = v51;
              v77 = 2048;
              v78 = self;
              v79 = 2112;
              v80 = v52;
              _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add depth data output to the capture session.", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v53 = objc_opt_class();
            v54 = NSStringFromClass(v53);
            v55 = [(ARImageSensor *)self logPrefix];
            *buf = 138543874;
            v76 = v54;
            v77 = 2048;
            v78 = self;
            v79 = 2112;
            v80 = v55;
            _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add depth data output to the capture session.", buf, 0x20u);
          }

          v11 = ARErrorWithCodeAndUserInfo(102, 0);
          goto LABEL_7;
        }

        v17 = [(ARImageSensor *)self captureSession];
        [v17 addOutputWithNoConnections:self->_depthDataOutput];

        v18 = _ARLogSensor();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v76 = v20;
          v77 = 2048;
          v78 = self;
          v79 = 2112;
          v80 = v21;
          _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Added depth data output to the capture session", buf, 0x20u);
        }

        if (!self->_depthConnection)
        {
          v22 = [(ARImageSensor *)self videoInput];
          v23 = [(ARImageSensor *)self videoInput];
          v24 = [v23 device];
          v25 = [v24 deviceType];
          v26 = [(ARImageSensor *)self videoInput];
          v27 = [v26 device];
          v28 = [v27 position];
          v29 = [v22 portsWithMediaType:*MEMORY[0x1E69875C0] sourceDeviceType:v25 sourceDevicePosition:v28];
          v73 = [v29 firstObject];

          if (v73)
          {
            v30 = MEMORY[0x1E6987070];
            v83[0] = v73;
            v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
            v32 = [v30 connectionWithInputPorts:v31 output:self->_depthDataOutput];
            depthConnection = self->_depthConnection;
            self->_depthConnection = v32;

            v34 = [(ARImageSensor *)self captureSession];
            LOBYTE(v30) = [v34 canAddConnection:self->_depthConnection];

            if (v30)
            {
              v35 = [(ARImageSensor *)self connections];
              [v35 addObject:self->_depthConnection];

              v36 = [(ARImageSensor *)self captureSession];
              [v36 addConnection:self->_depthConnection];

              v37 = _ARLogSensor();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                v38 = objc_opt_class();
                v39 = NSStringFromClass(v38);
                v40 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v76 = v39;
                v77 = 2048;
                v78 = self;
                v79 = 2112;
                v80 = v40;
                _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added depth data output to the capture session", buf, 0x20u);
              }

              [(AVCaptureDepthDataOutput *)self->_depthDataOutput setAlwaysDiscardsLateDepthData:1];
              [(AVCaptureDepthDataOutput *)self->_depthDataOutput setFilteringEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imageSensor.face.depthDataFiltering"]];
              v41 = _ARLogSensor();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = objc_opt_class();
                v43 = NSStringFromClass(v42);
                v44 = [(ARImageSensor *)self logPrefix];
                v45 = [(AVCaptureDepthDataOutput *)self->_depthDataOutput isFilteringEnabled];
                v46 = @"disabled";
                *buf = 138544130;
                v76 = v43;
                v77 = 2048;
                if (v45)
                {
                  v46 = @"enabled";
                }

                v78 = self;
                v79 = 2112;
                v80 = v44;
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
                v66 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v76 = v65;
                v77 = 2048;
                v78 = self;
                v79 = 2112;
                v80 = v66;
                _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add depth connection to the capture session.", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v70 = objc_opt_class();
              v71 = NSStringFromClass(v70);
              v72 = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v76 = v71;
              v77 = 2048;
              v78 = self;
              v79 = 2112;
              v80 = v72;
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
                v61 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v76 = v60;
                v77 = 2048;
                v78 = self;
                v79 = 2112;
                v80 = v61;
                _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find depth data input port on the video input.", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v67 = objc_opt_class();
              v68 = NSStringFromClass(v67);
              v69 = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v76 = v68;
              v77 = 2048;
              v78 = self;
              v79 = 2112;
              v80 = v69;
              _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot find depth data input port on the video input.", buf, 0x20u);
            }
          }

          v3 = ARErrorWithCodeAndUserInfo(102, 0);

          goto LABEL_8;
        }
      }
    }

LABEL_6:
    v11 = [(ARFaceTrackingImageSensor *)self _configureMetaDataOutput];
LABEL_7:
    v3 = v11;
LABEL_8:
  }

  return v3;
}

- (void)configureCaptureDevice
{
  v4.receiver = self;
  v4.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v4 configureCaptureDevice];
  v3 = [(ARImageSensor *)self captureDevice];
  [v3 setFaceDetectionDrivenImageProcessingEnabled:1];
}

- (id)configureCaptureSessionCalibration
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ARImageSensor *)self logPrefix];
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v6;
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
    v6 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v17 = v5;
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ preparing to start", buf, 0x20u);
  }

  self->_signpostFirstFrameDone = 0;
  self->_signpostFirstFaceDone = 0;
  kdebug_trace();
  kdebug_trace();
  v15.receiver = self;
  v15.super_class = ARFaceTrackingImageSensor;
  v7 = [(ARImageSensor *)&v15 prepareToStart];
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [v8 timeIntervalSince1970];
    self->_startTime = v9;

    self->_droppedFramesPerSec = 0;
    v10 = _ARLogSensor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ prepare to start complete", buf, 0x20u);
    }
  }

  return v7;
}

- (void)stop
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v15 = v5;
    v16 = 2048;
    v17 = self;
    v18 = 2112;
    v19 = v6;
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
    v12 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v15 = v11;
    v16 = 2048;
    v17 = self;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ stop complete", buf, 0x20u);
  }
}

- (id)_configureMetaDataOutput
{
  v121[1] = *MEMORY[0x1E69E9840];
  v3 = [(ARImageSensor *)self internalSettings];
  v4 = [v3 metaData];

  if (!v4)
  {
    v25 = [(ARImageSensor *)self captureSession];
    [v25 removeOutput:self->_metaDataOutput];

    metaDataOutput = self->_metaDataOutput;
    self->_metaDataOutput = 0;

    v17 = _ARLogSensor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v114 = v28;
      v115 = 2048;
      v116 = self;
      v117 = 2112;
      v118 = v29;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Removed metadata output from the capture session", buf, 0x20u);
    }

    goto LABEL_39;
  }

  if (self->_metaDataOutput)
  {
LABEL_3:
    v5 = self->_metaDataOutput;
    v6 = [(ARImageSensor *)self captureQueue];
    [(AVCaptureMetadataOutput *)v5 setMetadataObjectsDelegate:self queue:v6];

    v7 = [(ARImageSensor *)self captureSession];
    v8 = [v7 outputs];
    v9 = [v8 containsObject:self->_metaDataOutput];

    if (!v9)
    {
      v30 = [(ARImageSensor *)self delegate];
      v31 = objc_opt_respondsToSelector();

      if (v31)
      {
        v32 = [MEMORY[0x1E695DF90] dictionary];
        v33 = ARKitCoreBundle();
        v34 = [v33 localizedStringForKey:@"Could not add metadata output to capture session" value:&stru_1F4208A80 table:@"Localizable"];
        [v32 setObject:v34 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v35 = ARErrorWithCodeAndUserInfo(102, v32);

        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if ([(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingSupported])
    {
      [(AVCaptureMetadataOutput *)self->_metaDataOutput setFaceTrackingMetadataObjectTypesAvailable:1];
      v10 = [(ARImageSensor *)self internalSettings];
      -[AVCaptureMetadataOutput setFaceTrackingMaxFaces:](self->_metaDataOutput, "setFaceTrackingMaxFaces:", [v10 maximumNumberOfTrackedFaces]);

      v11 = _ARLogSensor();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [(AVCaptureMetadataOutput *)self->_metaDataOutput faceTrackingMaxFaces];
        v15 = [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingUsingFaceRecognition];
        v16 = @"NO";
        *buf = 138544130;
        v114 = v13;
        v115 = 2048;
        if (v15)
        {
          v16 = @"YES";
        }

        v116 = self;
        v117 = 2048;
        v118 = v14;
        v119 = 2112;
        v120 = v16;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: maxFaces: %li, faceRecognition enabled: %@", buf, 0x2Au);
      }
    }

    v17 = [(AVCaptureMetadataOutput *)self->_metaDataOutput availableMetadataObjectTypes];
    v18 = [(ARImageSensor *)self internalSettings];
    v19 = [v18 metaData];
    v20 = [v17 containsObject:v19];

    if (v20)
    {
      v21 = self->_metaDataOutput;
      v22 = [(ARImageSensor *)self internalSettings];
      v23 = [v22 metaData];
      v112 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
      [(AVCaptureMetadataOutput *)v21 setMetadataObjectTypes:v24];
    }

    else
    {
      v64 = [(ARImageSensor *)self captureSession];
      [v64 removeOutput:self->_metaDataOutput];

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
          v71 = [(ARImageSensor *)self internalSettings];
          v72 = [v71 metaData];
          *buf = 138544130;
          v114 = v70;
          v115 = 2048;
          v116 = self;
          v117 = 2112;
          v118 = v72;
          v119 = 2112;
          v120 = v17;
          _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Metadata %@ is not supported. Available metadata types are %@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        v81 = [(ARImageSensor *)self internalSettings];
        v82 = [v81 metaData];
        *buf = 138544130;
        v114 = v80;
        v115 = 2048;
        v116 = self;
        v117 = 2112;
        v118 = v82;
        v119 = 2112;
        v120 = v17;
        _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Metadata %@ is not supported. Available metadata types are %@", buf, 0x2Au);
      }

      v83 = [(ARImageSensor *)self delegate];
      v84 = objc_opt_respondsToSelector();

      if (v84)
      {
        v85 = [MEMORY[0x1E695DF90] dictionary];
        v86 = ARKitCoreBundle();
        v87 = [v86 localizedStringForKey:@"AVFoundation failed to deliver the requested metadata object types." value:&stru_1F4208A80 table:@"Localizable"];
        [v85 setObject:v87 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v35 = ARErrorWithCodeAndUserInfo(102, v85);

        goto LABEL_41;
      }
    }

LABEL_39:

LABEL_40:
    v88 = [(AVCaptureMetadataOutput *)self->_metaDataOutput availableMetadataObjectTypes];
    availableMetadataObjectTypes = self->_availableMetadataObjectTypes;
    self->_availableMetadataObjectTypes = v88;

    v35 = 0;
    goto LABEL_41;
  }

  v36 = objc_opt_new();
  v37 = self->_metaDataOutput;
  self->_metaDataOutput = v36;

  v38 = [(ARImageSensor *)self captureSession];
  v39 = [v38 canAddOutput:self->_metaDataOutput];

  if (v39)
  {
    v40 = [(ARImageSensor *)self captureSession];
    [v40 addOutputWithNoConnections:self->_metaDataOutput];

    v41 = _ARLogSensor();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v114 = v43;
      v115 = 2048;
      v116 = self;
      v117 = 2112;
      v118 = v44;
      _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added metadata output to the capture session", buf, 0x20u);
    }

    if (self->_metadataConnection)
    {
      goto LABEL_3;
    }

    v45 = [(ARImageSensor *)self videoInput];
    v46 = [(ARImageSensor *)self videoInput];
    v47 = [v46 device];
    v48 = [v47 deviceType];
    v49 = [(ARImageSensor *)self videoInput];
    v50 = [v49 device];
    v51 = [v50 position];
    v52 = [v45 portsWithMediaType:*MEMORY[0x1E69875D8] sourceDeviceType:v48 sourceDevicePosition:v51];
    v111 = [v52 firstObject];

    if (v111)
    {
      v53 = MEMORY[0x1E6987070];
      v121[0] = v111;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:1];
      v55 = [v53 connectionWithInputPorts:v54 output:self->_metaDataOutput];
      metadataConnection = self->_metadataConnection;
      self->_metadataConnection = v55;

      v57 = [(ARImageSensor *)self captureSession];
      LOBYTE(v53) = [v57 canAddConnection:self->_metadataConnection];

      if (v53)
      {
        v58 = [(ARImageSensor *)self connections];
        [v58 addObject:self->_metadataConnection];

        v59 = [(ARImageSensor *)self captureSession];
        [v59 addConnection:self->_metadataConnection];

        v60 = _ARLogSensor();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v61 = objc_opt_class();
          v62 = NSStringFromClass(v61);
          v63 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v114 = v62;
          v115 = 2048;
          v116 = self;
          v117 = 2112;
          v118 = v63;
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
          v104 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v114 = v103;
          v115 = 2048;
          v116 = self;
          v117 = 2112;
          v118 = v104;
          _os_log_impl(&dword_1C241C000, v96, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add meta data connection to capture session.", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v108 = objc_opt_class();
        v109 = NSStringFromClass(v108);
        v110 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v114 = v109;
        v115 = 2048;
        v116 = self;
        v117 = 2112;
        v118 = v110;
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
          v99 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v114 = v98;
          v115 = 2048;
          v116 = self;
          v117 = 2112;
          v118 = v99;
          _os_log_impl(&dword_1C241C000, v96, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find meta data input port on the video input.", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        v105 = objc_opt_class();
        v106 = NSStringFromClass(v105);
        v107 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v114 = v106;
        v115 = 2048;
        v116 = self;
        v117 = 2112;
        v118 = v107;
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
        v78 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v114 = v77;
        v115 = 2048;
        v116 = self;
        v117 = 2112;
        v118 = v78;
        _os_log_impl(&dword_1C241C000, v75, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add mete data output to the capture session.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v91 = objc_opt_class();
      v92 = NSStringFromClass(v91);
      v93 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v114 = v92;
      v115 = 2048;
      v116 = self;
      v117 = 2112;
      v118 = v93;
      _os_log_impl(&dword_1C241C000, v75, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add mete data output to the capture session.", buf, 0x20u);
    }

    v35 = ARErrorWithCodeAndUserInfo(102, 0);
  }

LABEL_41:

  return v35;
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 output];
  v11 = [(ARImageSensor *)self videoOutput];

  if (v10 == v11)
  {
    v12 = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    [(ARFaceTrackingImageSensor *)self capturedSynchedOutput:v8 didOutputSampleBuffer:a4 fromVideoConnection:v9 metaDataOutput:0 didOutputMetadataObjects:0 didOutputDepthData:0 atTime:&v12];
  }
}

- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v6 = a4;
  v7 = [(ARImageSensor *)self videoOutput];
  v8 = [v6 objectForKeyedSubscript:v7];

  v43 = [v6 objectForKeyedSubscript:self->_metaDataOutput];
  if (self->_depthDataOutput)
  {
    v42 = [v6 objectForKeyedSubscript:?];
  }

  else
  {
    v42 = 0;
  }

  v9 = [v44 dataOutputs];
  if ([v9 containsObject:self->_metaDataOutput])
  {
    v10 = [(AVCaptureMetadataOutput *)self->_metaDataOutput metadataObjectTypes];
    v11 = *MEMORY[0x1E6987018];
    if ([v10 containsObject:*MEMORY[0x1E6987018]])
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
      v40 = [(ARImageSensor *)self videoOutput];
      sbuf = [v39 sampleBuffer];
      v14 = [(ARImageSensor *)self videoOutput];
      v37 = *MEMORY[0x1E6987608];
      v41 = [v14 connectionWithMediaType:?];

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
          v18 = [(ARImageSensor *)self logPrefix];
          time = v46;
          Seconds = CMTimeGetSeconds(&time);
          *buf = 138544130;
          *&buf[4] = v17;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 2112;
          v48 = v18;
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
        v22 = [v20 metadataObjects];
        if ([(NSArray *)self->_availableMetadataObjectTypes containsObject:*MEMORY[0x1E6987018]])
        {
          v23 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_1];
          v24 = [v22 filteredArrayUsingPredicate:v23];

          v25 = [v24 count] == 0;
          v13 |= v25;
        }

        if (!v41)
        {
          v26 = [(ARImageSensor *)self videoOutput];
          v27 = [v26 connectionWithMediaType:v37];

          v41 = v27;
        }
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [v42 depthData];
      }

      else
      {
        v28 = 0;
      }

      v29 = [MEMORY[0x1E695DF00] date];
      [v29 timeIntervalSince1970];
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
            v36 = [(ARImageSensor *)self logPrefix];
            *buf = 138543874;
            *&buf[4] = v35;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2112;
            v48 = v36;
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

        [(ARFaceTrackingImageSensor *)self capturedSynchedOutput:v40 didOutputSampleBuffer:sbuf fromVideoConnection:v41 metaDataOutput:v21 didOutputMetadataObjects:v22 didOutputDepthData:v28 atTime:buf];
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

- (void)capturedSynchedOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromVideoConnection:(id)a5 metaDataOutput:(id)a6 didOutputMetadataObjects:(id)a7 didOutputDepthData:(id)a8 atTime:(id *)a9
{
  v13 = a5;
  v14 = a7;
  v43 = a8;
  memset(&v47, 0, sizeof(v47));
  CMSampleBufferGetPresentationTimeStamp(&v47, a4);
  time = v47;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  v15 = [ARImageData alloc];
  v16 = [(ARImageSensor *)self captureFramesPerSecond];
  v17 = [(ARImageSensor *)self captureDevice];
  v18 = [(ARImageSensor *)self captureSession];
  v19 = [(ARImageData *)v15 initWithSampleBuffer:a4 captureFramePerSecond:v16 captureDevice:v17 captureSession:v18];

  -[ARImageData setMirrored:](v19, "setMirrored:", [v13 isVideoMirrored]);
  if (v19)
  {
    [(ARImageSensor *)self enableContinuousAutoFocusIfPossible];
    v42 = v14;
    v45 = 0;
    [(ARImageSensor *)self trackExposureTargetOffsetIfNeededForImageData:v19 shouldDrop:&v45];
    if ((v45 & 1) == 0)
    {
      v20 = [(ARImageSensor *)self bufferPopulationMonitor];
      v21 = [(ARImageData *)v19 pixelBuffer];
      v22 = [(ARImageSensor *)self captureDevice];
      v23 = [v22 localizedName];
      [(ARImageData *)v19 timestamp];
      v25 = v24;
      v26 = [(ARImageSensor *)self captureDevice];
      v27 = [v26 deviceType];
      [v20 trackPixelBuffer:v21 withLabel:v23 timestamp:ARBufferPopulationMonitorSignpostTypeForCaptureDevice(v27) signpostType:v25];

      time = *a9;
      time2 = **&MEMORY[0x1E6960C70];
      if (CMTimeCompare(&time, &time2))
      {
        time = *a9;
        v28 = [(ARImageSensor *)self captureSession];
        v29 = [ARImageData captureDateFromPresentationTimestamp:&time session:v28];

        [(ARImageData *)v19 timestamp];
        v30 = [(ARImageData *)v19 captureDate];
        [v30 timeIntervalSinceNow];
        [v29 timeIntervalSinceNow];
        kdebug_trace();
      }

      else
      {
        [(ARImageData *)v19 timestamp];
        v29 = [(ARImageData *)v19 captureDate];
        [v29 timeIntervalSinceNow];
        kdebug_trace();
      }

      v31 = [(ARImageSensor *)self outputSynchronizer];
      if (v31 && (-[ARImageSensor outputSynchronizer](self, "outputSynchronizer"), v32 = objc_claimAutoreleasedReturnValue(), [v32 dataOutputs], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "containsObject:", self->_metaDataOutput), v33, v32, v31, v34))
      {
        v35 = -[ARFaceData initWithMetadataObjects:mirroredVideoInput:stripDetectionData:]([ARFaceData alloc], "initWithMetadataObjects:mirroredVideoInput:stripDetectionData:", v42, [v13 isVideoMirrored], -[ARFaceTrackingImageSensor recordingMode](self, "recordingMode") ^ 1);
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
        [(ARImageData *)v19 setDepthData:v43];
        time = *a9;
        [(ARImageData *)v19 setDepthDataTimestamp:CMTimeGetSeconds(&time)];
      }

      else
      {
        [(ARImageData *)v19 setDepthData:0];
      }

      self->_previousImageDataValid = 1;
      if (!self->_signpostFirstFaceDone)
      {
        v36 = [(ARImageData *)v19 faceData];
        v37 = [v36 faceMeshPayload];
        v38 = [v37 objectForKeyedSubscript:*MEMORY[0x1E698C0C0]];
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
      v40 = [(ARImageSensor *)self delegate];
      [v40 sensor:self didOutputSensorData:v19];

      [(ARImageData *)v19 timestamp];
      kdebug_trace();
      [(ARImageData *)v19 timestamp];
      v41 = [(ARImageData *)v19 cameraType];
      kdebug_trace();
    }

    v14 = v42;
  }

  else
  {
    kdebug_trace();
  }
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v10 = a4;
  dispatch_semaphore_wait(self->_faceDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [ARFaceData alloc];
  v7 = [(ARImageSensor *)self internalSettings];
  v8 = -[ARFaceData initWithMetadataObjects:mirroredVideoInput:stripDetectionData:](v6, "initWithMetadataObjects:mirroredVideoInput:stripDetectionData:", v10, [v7 mirrorVideoOutput], -[ARFaceTrackingImageSensor recordingMode](self, "recordingMode") ^ 1);
  latestFaceData = self->_latestFaceData;
  self->_latestFaceData = v8;

  dispatch_semaphore_signal(self->_faceDataSemaphore);
}

@end