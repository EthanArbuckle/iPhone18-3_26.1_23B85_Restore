@interface ARDepthSensor
+ (void)registerSignPostForPointCloudData:(id)a3;
- (BOOL)canReconfigure:(id)a3;
- (NSString)description;
- (id)configureCaptureSession;
- (id)prepareToStart;
- (void)_configureProjectorModeForDevice:(id)a3;
- (void)pointCloudDataOutput:(id)a3 didDropPointCloudData:(id)a4 timestamp:(id *)a5 connection:(id)a6 reason:(int64_t)a7;
- (void)pointCloudDataOutput:(id)a3 didOutputPointCloudData:(id)a4 timestamp:(id *)a5 connection:(id)a6;
- (void)start;
- (void)stop;
@end

@implementation ARDepthSensor

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput setDelegate:0 callbackQueue:0];
  v3 = _ARLogSensor();
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
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARDepthSensor stop complete", &v7, 0x20u);
  }
}

- (void)start
{
  v19 = *MEMORY[0x1E69E9840];
  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARDepthSensor start];
  }

  v3 = ARShouldUseLogTypeError_internalOSVersion;
  v4 = _ARLogSensor();
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
      v9 = "%{public}@ <%p>: %@ start called on a child depth image sensor instead of parent image sensor";
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
    v9 = "Error: %{public}@ <%p>: %@ start called on a child depth image sensor instead of parent image sensor";
    v10 = v5;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (id)prepareToStart
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v30 = v5;
    v31 = 2048;
    v32 = self;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ preparing to start", buf, 0x20u);
  }

  v7 = [(ARImageSensor *)self setActiveFormat];
  if (v7 || ([(ARDepthSensor *)self configureCaptureSession], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    goto LABEL_6;
  }

  v10 = [(ARImageSensor *)self captureDevice];
  v26 = 0;
  v11 = [v10 lockForConfiguration:&v26];
  v8 = v26;
  if (v11)
  {
    [(ARImageSensor *)self configureFrameRateForDevice:v10];
    [(ARDepthSensor *)self _configureProjectorModeForDevice:v10];
    [v10 unlockForConfiguration];
    if (!v8)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARDepthSensorSettings initWithVideoFormat:];
  }

  v12 = ARShouldUseLogTypeError_internalOSVersion;
  v13 = _ARLogSensor();
  v14 = v13;
  if (v12 == 1)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [(ARImageSensor *)self logPrefix];
    v18 = [v8 description];
    *buf = 138544130;
    v30 = v16;
    v31 = 2048;
    v32 = self;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v18;
    v19 = "%{public}@ <%p>: %@ Unable to lock capture device for configuration: %@";
    v20 = v14;
    v21 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v22 = objc_opt_class();
    v16 = NSStringFromClass(v22);
    v17 = [(ARImageSensor *)self logPrefix];
    v18 = [v8 description];
    *buf = 138544130;
    v30 = v16;
    v31 = 2048;
    v32 = self;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v18;
    v19 = "Error: %{public}@ <%p>: %@ Unable to lock capture device for configuration: %@";
    v20 = v14;
    v21 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 0x2Au);

LABEL_20:
  if (v8)
  {
    v27 = *MEMORY[0x1E696AA08];
    v28 = v8;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  }

  else
  {
    v23 = MEMORY[0x1E695E0F8];
  }

  v24 = ARErrorWithCodeAndUserInfo(101, v23);

  if (v8)
  {
  }

  v8 = v24;
  if (!v24)
  {
    goto LABEL_27;
  }

LABEL_26:
  v25 = v8;
LABEL_27:

LABEL_6:

  return v8;
}

- (id)configureCaptureSession
{
  v159 = *MEMORY[0x1E69E9840];
  v3 = [(ARImageSensor *)self videoInput];

  if (v3)
  {
    v4 = [(ARImageSensor *)self videoInput];
    v5 = [v4 device];
    v6 = [(ARImageSensor *)self captureDevice];

    if (v5 != v6)
    {
      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARDepthSensor start];
      }

      v7 = ARShouldUseLogTypeError_internalOSVersion;
      v8 = _ARLogSensor();
      v9 = v8;
      if (v7 == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = [(ARImageSensor *)self logPrefix];
          v13 = [(ARImageSensor *)self videoInput];
          v14 = [v13 device];
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v11;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v155 = v12;
          v156 = 2112;
          *v157 = v14;
          v15 = "%{public}@ <%p>: %@ Unsupported capture device: %@";
          v16 = v9;
          v17 = OS_LOG_TYPE_ERROR;
LABEL_24:
          _os_log_impl(&dword_1C241C000, v16, v17, v15, &buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v11 = NSStringFromClass(v43);
        v12 = [(ARImageSensor *)self logPrefix];
        v13 = [(ARImageSensor *)self videoInput];
        v14 = [v13 device];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v11;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v155 = v12;
        v156 = 2112;
        *v157 = v14;
        v15 = "Error: %{public}@ <%p>: %@ Unsupported capture device: %@";
        v16 = v9;
        v17 = OS_LOG_TYPE_INFO;
        goto LABEL_24;
      }

LABEL_55:

      v120 = 150;
      v121 = 0;
LABEL_56:
      v42 = ARErrorWithCodeAndUserInfo(v120, v121);
      goto LABEL_95;
    }

    v18 = [(ARImageSensor *)self videoInput];
    v19 = [v18 device];
    v20 = [v19 activeFormat];
    MediaSubType = CMFormatDescriptionGetMediaSubType([v20 formatDescription]);

    if (MediaSubType != 1785950320)
    {
      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARDepthSensor start];
      }

      v70 = ARShouldUseLogTypeError_internalOSVersion;
      v71 = _ARLogSensor();
      v9 = v71;
      if (v70 == 1)
      {
        if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        v74 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v73;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v155 = v74;
        v156 = 1024;
        *v157 = MediaSubType;
        v75 = "%{public}@ <%p>: %@ Unsupported data format: %d";
        v76 = v9;
        v77 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          goto LABEL_55;
        }

        v119 = objc_opt_class();
        v73 = NSStringFromClass(v119);
        v74 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v73;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v155 = v74;
        v156 = 1024;
        *v157 = MediaSubType;
        v75 = "Error: %{public}@ <%p>: %@ Unsupported data format: %d";
        v76 = v9;
        v77 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v76, v77, v75, &buf, 0x26u);

      goto LABEL_55;
    }
  }

  v22 = [(ARImageSensor *)self videoInput];

  if (v22)
  {
    v23 = 0;
    goto LABEL_11;
  }

  v44 = objc_alloc(MEMORY[0x1E69870B0]);
  v45 = [(ARImageSensor *)self captureDevice];
  v150 = 0;
  v46 = [v44 initWithDevice:v45 error:&v150];
  v23 = v150;
  [(ARImageSensor *)self setVideoInput:v46];

  v47 = [(ARImageSensor *)self videoInput];

  if (!v47)
  {
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v101 = ARShouldUseLogTypeError_internalOSVersion;
    v102 = _ARLogSensor();
    v103 = v102;
    if (v101 == 1)
    {
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        v104 = objc_opt_class();
        v105 = NSStringFromClass(v104);
        v106 = [(ARImageSensor *)self logPrefix];
        v107 = [v23 description];
        v108 = [(ARImageSensor *)self captureDevice];
        LODWORD(buf.value) = 138544386;
        *(&buf.value + 4) = v105;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v155 = v106;
        v156 = 2112;
        *v157 = v107;
        *&v157[8] = 2112;
        v158 = v108;
        v109 = "%{public}@ <%p>: %@ Error creating capture input for depth sensor: %@ (%@)";
        v110 = v103;
        v111 = OS_LOG_TYPE_ERROR;
LABEL_76:
        _os_log_impl(&dword_1C241C000, v110, v111, v109, &buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      v140 = objc_opt_class();
      v105 = NSStringFromClass(v140);
      v106 = [(ARImageSensor *)self logPrefix];
      v107 = [v23 description];
      v108 = [(ARImageSensor *)self captureDevice];
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v105;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v155 = v106;
      v156 = 2112;
      *v157 = v107;
      *&v157[8] = 2112;
      v158 = v108;
      v109 = "Error: %{public}@ <%p>: %@ Error creating capture input for depth sensor: %@ (%@)";
      v110 = v103;
      v111 = OS_LOG_TYPE_INFO;
      goto LABEL_76;
    }

    if (!v23)
    {
      v121 = MEMORY[0x1E695E0F8];
      v120 = 101;
      goto LABEL_56;
    }

    v152 = *MEMORY[0x1E696AA08];
    v153 = v23;
    v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
    v42 = ARErrorWithCodeAndUserInfo(101, v141);

    goto LABEL_86;
  }

  v48 = [(ARImageSensor *)self captureSession];
  v49 = [(ARImageSensor *)self videoInput];
  v50 = [v48 canAddInput:v49];

  if (!v50)
  {
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v122 = ARShouldUseLogTypeError_internalOSVersion;
    v123 = _ARLogSensor();
    v114 = v123;
    if (v122 == 1)
    {
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        v124 = objc_opt_class();
        v116 = NSStringFromClass(v124);
        v117 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v116;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v155 = v117;
        v118 = "%{public}@ <%p>: %@ Cannot add video data input to the capture session";
        goto LABEL_62;
      }

LABEL_85:

      v42 = ARErrorWithCodeAndUserInfo(102, 0);
LABEL_86:

      goto LABEL_95;
    }

    if (!os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
    {
      goto LABEL_85;
    }

    v143 = objc_opt_class();
    v116 = NSStringFromClass(v143);
    v117 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v116;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v117;
    v118 = "Error: %{public}@ <%p>: %@ Cannot add video data input to the capture session";
LABEL_83:
    v125 = v114;
    v126 = OS_LOG_TYPE_INFO;
    goto LABEL_84;
  }

  v51 = [(ARImageSensor *)self captureSession];
  v52 = [(ARImageSensor *)self videoInput];
  [v51 addInputWithNoConnections:v52];

  v53 = _ARLogSensor();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v55;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v56;
    _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data input to the capture session", &buf, 0x20u);
  }

  v57 = [(ARImageSensor *)self internalSettings];
  v58 = [v57 videoFormat];
  v59 = [v58 frameRatesByPowerUsage];
  v60 = [v59 objectAtIndexedSubscript:0];
  [v60 doubleValue];
  v62 = v61;

  CMTimeMake(&v149, 1, v62);
  v63 = [(ARImageSensor *)self videoInput];
  buf = v149;
  [v63 setVideoMinFrameDurationOverride:&buf];

  v64 = _ARLogSensor();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v67 = [(ARImageSensor *)self logPrefix];
    v68 = [(ARImageSensor *)self videoInput];
    v69 = v68;
    if (v68)
    {
      [v68 videoMinFrameDurationOverride];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    Seconds = CMTimeGetSeconds(&buf);
    LODWORD(buf.value) = 138544130;
    *(&buf.value + 4) = v66;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v67;
    v156 = 2048;
    *v157 = Seconds;
    _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Video min frame duration override set to %f", &buf, 0x2Au);
  }

LABEL_11:
  if (self->_pointCloudOutput)
  {
    goto LABEL_20;
  }

  v24 = objc_opt_new();
  pointCloudOutput = self->_pointCloudOutput;
  self->_pointCloudOutput = v24;

  if ([(AVCapturePointCloudDataOutput *)self->_pointCloudOutput isDeferredStartSupported])
  {
    [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput setDeferredStartEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.pointCloudDataOutput.deferredStartEnabled"]];
  }

  v26 = _ARLogSensor();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [(ARImageSensor *)self logPrefix];
    v30 = [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput isDeferredStartSupported];
    v31 = [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput isDeferredStartEnabled];
    LODWORD(buf.value) = 138544386;
    *(&buf.value + 4) = v28;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v29;
    v156 = 1024;
    *v157 = v30;
    *&v157[4] = 1024;
    *&v157[6] = v31;
    _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ deferred start supported: %u, enabled: %u.", &buf, 0x2Cu);
  }

  v32 = [(ARImageSensor *)self captureSession];
  v33 = [v32 canAddOutput:self->_pointCloudOutput];

  if (!v33)
  {
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v112 = ARShouldUseLogTypeError_internalOSVersion;
    v113 = _ARLogSensor();
    v114 = v113;
    if (v112 == 1)
    {
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        v115 = objc_opt_class();
        v116 = NSStringFromClass(v115);
        v117 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v116;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v155 = v117;
        v118 = "%{public}@ <%p>: %@ Cannot add video data output to the capture session";
LABEL_62:
        v125 = v114;
        v126 = OS_LOG_TYPE_ERROR;
LABEL_84:
        _os_log_impl(&dword_1C241C000, v125, v126, v118, &buf, 0x20u);

        goto LABEL_85;
      }

      goto LABEL_85;
    }

    if (!os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
    {
      goto LABEL_85;
    }

    v142 = objc_opt_class();
    v116 = NSStringFromClass(v142);
    v117 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v116;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v117;
    v118 = "Error: %{public}@ <%p>: %@ Cannot add video data output to the capture session";
    goto LABEL_83;
  }

  v34 = [(ARImageSensor *)self captureSession];
  [v34 addOutputWithNoConnections:self->_pointCloudOutput];

  v35 = _ARLogSensor();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v37;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v38;
    _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data output to the capture session", &buf, 0x20u);
  }

LABEL_20:
  v39 = [(ARImageSensor *)self videoConnection];

  if (v39)
  {
LABEL_21:
    [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput setAlwaysDiscardsLatePointCloudData:1];
    v40 = self->_pointCloudOutput;
    v41 = [(ARImageSensor *)self captureQueue];
    [(AVCapturePointCloudDataOutput *)v40 setDelegate:self callbackQueue:v41];

    v42 = 0;
    goto LABEL_95;
  }

  v148 = v23;
  v78 = [(ARImageSensor *)self videoInput];
  v79 = *MEMORY[0x1E6986FA8];
  v80 = [(ARImageSensor *)self videoInput];
  v81 = [v80 device];
  v82 = [v81 deviceType];
  v83 = [(ARImageSensor *)self videoInput];
  v84 = [v83 device];
  v85 = [v78 portsWithMediaType:v79 sourceDeviceType:v82 sourceDevicePosition:{objc_msgSend(v84, "position")}];
  v86 = [v85 firstObject];

  if (v86)
  {
    v87 = MEMORY[0x1E6987070];
    v151 = v86;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
    v89 = [v87 connectionWithInputPorts:v88 output:self->_pointCloudOutput];
    [(ARImageSensor *)self setVideoConnection:v89];

    v90 = [(ARImageSensor *)self captureSession];
    v91 = [(ARImageSensor *)self videoConnection];
    v92 = [v90 canAddConnection:v91];

    if (v92)
    {
      v93 = [(ARImageSensor *)self connections];
      v94 = [(ARImageSensor *)self videoConnection];
      [v93 addObject:v94];

      v95 = [(ARImageSensor *)self captureSession];
      v96 = [(ARImageSensor *)self videoConnection];
      [v95 addConnection:v96];

      v97 = _ARLogSensor();
      v23 = v148;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        v98 = objc_opt_class();
        v99 = NSStringFromClass(v98);
        v100 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v99;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v155 = v100;
        _os_log_impl(&dword_1C241C000, v97, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data connection to the capture session", &buf, 0x20u);
      }

      goto LABEL_21;
    }

    v127 = v148;
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v135 = ARShouldUseLogTypeError_internalOSVersion;
    v136 = _ARLogSensor();
    v130 = v136;
    if (v135 == 1)
    {
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        v137 = objc_opt_class();
        v132 = NSStringFromClass(v137);
        v133 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v132;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v155 = v133;
        v134 = "%{public}@ <%p>: %@ Cannot add video connection to capture session";
        goto LABEL_73;
      }

      goto LABEL_94;
    }

    if (!os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
    {
      goto LABEL_94;
    }

    v145 = objc_opt_class();
    v132 = NSStringFromClass(v145);
    v133 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v132;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v133;
    v134 = "Error: %{public}@ <%p>: %@ Cannot add video connection to capture session";
LABEL_92:
    v138 = v130;
    v139 = OS_LOG_TYPE_INFO;
    goto LABEL_93;
  }

  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARDepthSensorSettings initWithVideoFormat:];
  }

  v127 = v148;
  v128 = ARShouldUseLogTypeError_internalOSVersion;
  v129 = _ARLogSensor();
  v130 = v129;
  if (v128 != 1)
  {
    if (!os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
    {
      goto LABEL_94;
    }

    v144 = objc_opt_class();
    v132 = NSStringFromClass(v144);
    v133 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v132;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v133;
    v134 = "Error: %{public}@ <%p>: %@ Cannot find a video port in the input added to the capture session";
    goto LABEL_92;
  }

  if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
  {
    v131 = objc_opt_class();
    v132 = NSStringFromClass(v131);
    v133 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v132;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v155 = v133;
    v134 = "%{public}@ <%p>: %@ Cannot find a video port in the input added to the capture session";
LABEL_73:
    v138 = v130;
    v139 = OS_LOG_TYPE_ERROR;
LABEL_93:
    _os_log_impl(&dword_1C241C000, v138, v139, v134, &buf, 0x20u);
  }

LABEL_94:

  v42 = ARErrorWithCodeAndUserInfo(102, 0);

LABEL_95:

  return v42;
}

- (BOOL)canReconfigure:(id)a3
{
  v4 = a3;
  v5 = [(ARDepthSensor *)self internalDepthSettings];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (void)_configureProjectorModeForDevice:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ARDepthSensor *)self internalDepthSettings];
  v6 = [v5 timeOfFlightProjectorMode];

  v7 = [(ARImageSensor *)self captureDevice];
  v8 = [v7 isTimeOfFlightProjectorModeSupported:ARAVTimeOfFlightProjectorModeFromARTimeOfFlightProjectMode(v6)];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v10 = _ARLogSensor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [(ARImageSensor *)self logPrefix];
      v23 = 138544386;
      v24 = v12;
      v25 = 2048;
      v26 = self;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v6;
      v31 = 2048;
      v32 = [v4 timeOfFlightProjectorMode];
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Requested projector mode %@ is not supported on this device. Current projector mode of the device: %ld.", &v23, 0x34u);
    }

    v9 = @"ARTimeOfFlightProjectorModeNormal";
    v14 = _ARLogSensor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [(ARImageSensor *)self logPrefix];
      v23 = 138544130;
      v24 = v16;
      v25 = 2048;
      v26 = self;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Falling back to projector mode %@.", &v23, 0x2Au);
    }
  }

  [v4 setTimeOfFlightProjectorMode:ARAVTimeOfFlightProjectorModeFromARTimeOfFlightProjectMode(v9)];
  v18 = _ARLogSensor();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [(ARImageSensor *)self logPrefix];
    v22 = [v4 timeOfFlightProjectorMode];
    v23 = 138544386;
    v24 = v20;
    v25 = 2048;
    v26 = self;
    v27 = 2112;
    v28 = v21;
    v29 = 2112;
    v30 = v9;
    v31 = 2048;
    v32 = v22;
    _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARDepthSensor projector mode set to %@(%ld)", &v23, 0x34u);
  }
}

- (void)pointCloudDataOutput:(id)a3 didOutputPointCloudData:(id)a4 timestamp:(id *)a5 connection:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [ARPointCloudSensorData alloc];
  v10 = [(ARImageSensor *)self captureFramesPerSecond];
  v11 = [(ARImageSensor *)self captureDevice];
  v12 = [(ARImageSensor *)self captureSession];
  v13 = [(ARPointCloudSensorData *)v9 initWithPointCloudData:v8 captureFramePerSecond:v10 captureDevice:v11 captureSession:v12];

  if (v13)
  {
    v14 = [(ARImageSensor *)self dataSource];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      extrinsicsMap = self->_extrinsicsMap;
      if (!extrinsicsMap)
      {
        v17 = [(ARImageSensor *)self dataSource];
        v18 = [v17 captureDeviceTypeToExtrinsicsMapForImageSensor:self];
        v19 = self->_extrinsicsMap;
        self->_extrinsicsMap = v18;

        extrinsicsMap = self->_extrinsicsMap;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v20 = [(NSMutableDictionary *)extrinsicsMap allKeys];
      v21 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v47;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v47 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v46 + 1) + 8 * i);
            if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v25))
            {
              v31 = [(NSMutableDictionary *)self->_extrinsicsMap objectForKeyedSubscript:v25];
              *v54.columns[0].i64 = ARMatrix4x3FromNSData(v31);
              [(ARPointCloudSensorData *)v13 setExtrinsicsToWideSensor:ARMatrix4x3Inverse(v54)];

              goto LABEL_17;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    [(ARPointCloudSensorData *)v13 extrinsicsToWideSensor];
    if (ARMatrix4x3IsZero(v32, v33, v34, v35))
    {
      v36 = _ARLogGeneral();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        LODWORD(buf.var0) = 138543618;
        *(&buf.var0 + 4) = v38;
        LOWORD(buf.var2) = 2048;
        *(&buf.var2 + 2) = self;
        _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_FAULT, "%{public}@ <%p>: Did not receive extrinsics from [AVCaptureDevice extrinsicMatrixFromDevice:sensor.captureDevice toDevice:depthSensor.captureDevice];", &buf, 0x16u);
      }
    }

    v39 = [(ARImageSensor *)self bufferPopulationMonitor];
    v40 = [v8 pointCloudDataBuffer];
    v41 = [(ARImageSensor *)self captureDevice];
    v42 = [v41 localizedName];
    buf = *a5;
    Seconds = CMTimeGetSeconds(&buf);
    v44 = [(ARImageSensor *)self captureDevice];
    v45 = [v44 deviceType];
    [v39 trackDataBuffer:v40 withLabel:v42 timestamp:ARBufferPopulationMonitorSignpostTypeForCaptureDevice(v45) signpostType:Seconds];

    [objc_opt_class() registerSignPostForPointCloudData:v13];
    v26 = [(ARImageSensor *)self delegate];
    [v26 sensor:self didOutputSensorData:v13];
  }

  else
  {
    v26 = _ARLogSensor();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [(ARImageSensor *)self captureDevice];
      v30 = [v29 deviceType];
      LODWORD(buf.var0) = 138543874;
      *(&buf.var0 + 4) = v28;
      LOWORD(buf.var2) = 2048;
      *(&buf.var2 + 2) = self;
      HIWORD(buf.var3) = 2112;
      v52 = v30;
      _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropped a pointCloudDataOutput because data is nil: %@", &buf, 0x20u);
    }
  }
}

- (void)pointCloudDataOutput:(id)a3 didDropPointCloudData:(id)a4 timestamp:(id *)a5 connection:(id)a6 reason:(int64_t)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARDepthSensor start];
  }

  v15 = ARShouldUseLogTypeError_internalOSVersion;
  v16 = _ARLogSensor();
  v17 = v16;
  if (v15 == 1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [(ARImageSensor *)self logPrefix];
      v29 = *a5;
      Seconds = CMTimeGetSeconds(&v29);
      if (a7 > 3)
      {
        v22 = @"Undefined";
      }

      else
      {
        v22 = off_1E817BC18[a7];
      }

      LODWORD(v29.var0) = 138544386;
      *(&v29.var0 + 4) = v19;
      LOWORD(v29.var2) = 2048;
      *(&v29.var2 + 2) = self;
      HIWORD(v29.var3) = 2112;
      v30 = v20;
      v31 = 2048;
      v32 = Seconds;
      v33 = 2112;
      v34 = v22;
      v26 = "%{public}@ <%p>: %@ capture session dropped jasper frame: %f, %@";
      v27 = v17;
      v28 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1C241C000, v27, v28, v26, &v29, 0x34u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v23 = objc_opt_class();
    v19 = NSStringFromClass(v23);
    v20 = [(ARImageSensor *)self logPrefix];
    v29 = *a5;
    v24 = CMTimeGetSeconds(&v29);
    if (a7 > 3)
    {
      v25 = @"Undefined";
    }

    else
    {
      v25 = off_1E817BC18[a7];
    }

    LODWORD(v29.var0) = 138544386;
    *(&v29.var0 + 4) = v19;
    LOWORD(v29.var2) = 2048;
    *(&v29.var2 + 2) = self;
    HIWORD(v29.var3) = 2112;
    v30 = v20;
    v31 = 2048;
    v32 = v24;
    v33 = 2112;
    v34 = v25;
    v26 = "Error: %{public}@ <%p>: %@ capture session dropped jasper frame: %f, %@";
    v27 = v17;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  kdebug_trace();
}

+ (void)registerSignPostForPointCloudData:(id)a3
{
  v8 = a3;
  v3 = [v8 pointCloud];
  if (v3)
  {
    v4 = v3;
    v5 = [v8 pointCloud];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v8 pointCloud];
      [v7 bankIds];

      [v8 timestamp];
      kdebug_trace();
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(ARImageSensor *)self captureDevice];
  [v6 appendFormat:@" %@\n", v7];

  v8 = [(ARImageSensor *)self captureDevice];
  v9 = [v8 timeOfFlightProjectorMode];
  if (v9 > 6)
  {
    v10 = @"Undefined";
  }

  else
  {
    v10 = off_1E817BC38[v9];
  }

  [v6 appendFormat:@"ProjectorMode: %@\n", v10];

  v11 = [(ARImageSensor *)self captureDevice];
  [v6 appendFormat:@"BankCount: %li\n", objc_msgSend(v11, "timeOfFlightBankCount")];

  v12 = [(ARImageSensor *)self internalSettings];
  v13 = [v12 description];
  v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v6 appendFormat:@"%@\n", v14];

  return v6;
}

@end