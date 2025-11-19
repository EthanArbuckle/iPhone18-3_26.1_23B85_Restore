@interface ARWorldTrackingOptions
- (ARWorldTrackingOptions)init;
- (ARWorldTrackingOptions)initWithImageSensorSettings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldUseUltraWide;
- (NSDictionary)activeVideoFormatsMap;
- (id)copyWithZone:(_NSZone *)a3;
- (int)createSLAMCalibration:(CV3DSLAMCalibration *)a3;
- (int)setupCameraCalibration:(CV3DSLAMCalibration *)a3 forImageSensorSettings:(id)a4 deviceModel:(int)a5;
- (unsigned)cameraIdForCaptureDeviceType:(id)a3;
- (void)createSLAMConfig:(CV3DSLAMConfig *)a3 calibration:(CV3DSLAMCalibration *)a4;
- (void)setImageSensorSettings:(id)a3;
- (void)setImageSensorSettingsForUltraWide:(id)a3;
- (void)setSlamConfiguration:(id)a3;
- (void)updateCameraMap;
@end

@implementation ARWorldTrackingOptions

- (ARWorldTrackingOptions)init
{
  v3 = +[ARWorldTrackingConfiguration supportedVideoFormats];
  v4 = [ARImageSensorSettings alloc];
  v5 = [v3 firstObject];
  v6 = [(ARImageSensorSettings *)v4 initWithVideoFormat:v5];

  [(ARImageSensorSettings *)v6 setSupportsCapturingHighResolutionFrames:1];
  v7 = [(ARWorldTrackingOptions *)self initWithImageSensorSettings:v6];

  return v7;
}

- (ARWorldTrackingOptions)initWithImageSensorSettings:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = ARWorldTrackingOptions;
  v6 = [(ARWorldTrackingOptions *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_relocalizationEnabled = 1;
    objc_storeStrong(&v6->_imageSensorSettings, a3);
    [(ARImageSensorSettings *)v7->_imageSensorSettings setAutoFocusEnabled:1];
    v7->_planeDetection = 0;
    slamConfigurationPreset = v7->_slamConfigurationPreset;
    v7->_slamConfigurationPreset = @"ARKitiOS";

    v7->_minVergenceAngle = 1.0;
    imageSensorSettingsForUltraWide = v7->_imageSensorSettingsForUltraWide;
    v7->_imageSensorSettingsForUltraWide = 0;

    v10 = dispatch_semaphore_create(1);
    activeVideoFormatsSemaphore = v7->_activeVideoFormatsSemaphore;
    v7->_activeVideoFormatsSemaphore = v10;

    v12 = objc_opt_new();
    activeVideoFormatsMap = v7->_activeVideoFormatsMap;
    v7->_activeVideoFormatsMap = v12;

    v7->_sceneReconstruction = 0;
    v14 = objc_opt_new();
    sceneReconstructionOptions = v7->_sceneReconstructionOptions;
    v7->_sceneReconstructionOptions = v14;

    v7->_planeEstimationShouldUseJasperData = ARDeviceSupportsJasper();
    v7->_alwaysUsePrimaryCameraForTracking = 0;
    v7->_recordForGeoTracking = 0;
    [(ARWorldTrackingOptions *)v7 updateCameraMap];
  }

  return v7;
}

- (void)setSlamConfiguration:(id)a3
{
  v6 = a3;
  v4 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.worldtracking.slamConfiguration"];
  if ([v4 isEqualToString:&stru_1F4208A80])
  {

    v4 = 0;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v6;
  }

  objc_storeStrong(&self->_slamConfigurationPreset, v5);
}

- (BOOL)shouldUseUltraWide
{
  v2 = [(ARWorldTrackingOptions *)self imageSensorSettingsForUltraWide];
  v3 = v2 != 0;

  return v3;
}

- (void)setImageSensorSettings:(id)a3
{
  objc_storeStrong(&self->_imageSensorSettings, a3);

  [(ARWorldTrackingOptions *)self updateCameraMap];
}

- (void)setImageSensorSettingsForUltraWide:(id)a3
{
  objc_storeStrong(&self->_imageSensorSettingsForUltraWide, a3);

  [(ARWorldTrackingOptions *)self updateCameraMap];
}

- (void)updateCameraMap
{
  dispatch_semaphore_wait(self->_activeVideoFormatsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableDictionary *)self->_activeVideoFormatsMap removeAllObjects];
  v3 = [(ARImageSensorSettings *)self->_imageSensorSettings videoFormat];

  if (v3)
  {
    v4 = [(ARImageSensorSettings *)self->_imageSensorSettings videoFormat];
    activeVideoFormatsMap = self->_activeVideoFormatsMap;
    v6 = MEMORY[0x1E696AD98];
    v7 = [(ARImageSensorSettings *)self->_imageSensorSettings videoFormat];
    v8 = [v7 captureDeviceType];
    v9 = [v6 numberWithUnsignedInt:{-[ARWorldTrackingOptions cameraIdForCaptureDeviceType:](self, "cameraIdForCaptureDeviceType:", v8)}];
    [(NSMutableDictionary *)activeVideoFormatsMap setObject:v4 forKeyedSubscript:v9];
  }

  v10 = [(ARImageSensorSettings *)self->_imageSensorSettingsForUltraWide videoFormat];

  if (v10)
  {
    v11 = [(ARImageSensorSettings *)self->_imageSensorSettingsForUltraWide videoFormat];
    v12 = self->_activeVideoFormatsMap;
    v13 = MEMORY[0x1E696AD98];
    v14 = [(ARImageSensorSettings *)self->_imageSensorSettingsForUltraWide videoFormat];
    v15 = [v14 captureDeviceType];
    v16 = [v13 numberWithUnsignedInt:{-[ARWorldTrackingOptions cameraIdForCaptureDeviceType:](self, "cameraIdForCaptureDeviceType:", v15)}];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v16];
  }

  activeVideoFormatsSemaphore = self->_activeVideoFormatsSemaphore;

  dispatch_semaphore_signal(activeVideoFormatsSemaphore);
}

- (NSDictionary)activeVideoFormatsMap
{
  dispatch_semaphore_wait(self->_activeVideoFormatsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = [(NSMutableDictionary *)self->_activeVideoFormatsMap copy];
  dispatch_semaphore_signal(self->_activeVideoFormatsSemaphore);

  return v3;
}

- (unsigned)cameraIdForCaptureDeviceType:(id)a3
{
  v4 = a3;
  v5 = -[ARWorldTrackingOptions shouldUseUltraWide](self, "shouldUseUltraWide") && ([v4 isEqualToString:*MEMORY[0x1E6986948]] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E6986950]) & 1) != 0;

  return v5;
}

- (int)createSLAMCalibration:(CV3DSLAMCalibration *)a3
{
  v74 = *MEMORY[0x1E69E9840];
  *a3 = CV3DSLAMCalibrationCreate();
  v5 = [(ARWorldTrackingOptions *)self deviceModel];
  if (v5)
  {
    v6 = [(ARWorldTrackingOptions *)self deviceModel];
    [v6 UTF8String];
    v7 = CV3DSLAMCameraModelTypeFromString();
  }

  else
  {
    v7 = CV3DSLAMCalibrationDetectRuntimeHardware();
  }

  v8 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.worldtracking.calibrationParameters.imu"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = _ARLogGeneral_30();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v68 = 138543618;
        v69 = v12;
        v70 = 2048;
        v71 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Parsing custom imu calibration parameters.", &v68, 0x16u);
      }

      v13 = ARParseAndAddImuCalibrationParameters(v9);
      v14 = _ARLogGeneral_30();
      v15 = v14;
      if (!v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v68 = 138543618;
          v69 = v29;
          v70 = 2048;
          v71 = self;
          _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using custom imu calibration parameters.", &v68, 0x16u);
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v68 = 138543618;
        v69 = v17;
        v70 = 2048;
        v71 = self;
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error parsing custom imu calibration parameters, using default parameters", &v68, 0x16u);
      }
    }
  }

  v18 = SetDefaultImuCalibrationData();
  if (v18)
  {
    v19 = v18;
    if (ARShouldUseLogTypeError_onceToken_38 != -1)
    {
      [ARWorldTrackingOptions createSLAMCalibration:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion_38;
    v21 = _ARLogGeneral_30();
    v22 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromCV3DSLAMCalibrationReturn(v19);
        v68 = 138543874;
        v69 = v24;
        v70 = 2048;
        v71 = self;
        v72 = 2114;
        v73 = v25;
        v26 = "%{public}@ <%p>: Error setting default Imu calibration data: %{public}@";
LABEL_45:
        v42 = v22;
        v43 = OS_LOG_TYPE_ERROR;
LABEL_68:
        _os_log_impl(&dword_1C241C000, v42, v43, v26, &v68, 0x20u);

        goto LABEL_69;
      }

      goto LABEL_69;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_69;
    }

    v27 = objc_opt_class();
    v24 = NSStringFromClass(v27);
    v25 = NSStringFromCV3DSLAMCalibrationReturn(v19);
    v68 = 138543874;
    v69 = v24;
    v70 = 2048;
    v71 = self;
    v72 = 2114;
    v73 = v25;
    v26 = "Error: %{public}@ <%p>: Error setting default Imu calibration data: %{public}@";
LABEL_67:
    v42 = v22;
    v43 = OS_LOG_TYPE_INFO;
    goto LABEL_68;
  }

LABEL_23:
  if (![(ARWorldTrackingOptions *)self shouldUseUltraWide]|| (v30 = [(ARWorldTrackingOptions *)self setupCameraCalibration:a3 forImageSensorSettings:self->_imageSensorSettingsForUltraWide deviceModel:v7]) == 0)
  {
    if (![(ARWorldTrackingOptions *)self shouldUseUltraWide]|| ![(ARWorldTrackingOptions *)self alwaysUsePrimaryCameraForTracking])
    {
      v34 = [(ARWorldTrackingOptions *)self setupCameraCalibration:a3 forImageSensorSettings:self->_imageSensorSettings deviceModel:v7];
      if (v34)
      {
        v19 = v34;
        if (ARShouldUseLogTypeError_onceToken_38 != -1)
        {
          [ARWorldTrackingOptions createSLAMCalibration:];
        }

        v35 = ARShouldUseLogTypeError_internalOSVersion_38;
        v36 = _ARLogGeneral_30();
        v22 = v36;
        if (v35 == 1)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = objc_opt_class();
            v24 = NSStringFromClass(v37);
            v25 = NSStringFromCV3DSLAMCalibrationReturn(v19);
            v68 = 138543874;
            v69 = v24;
            v70 = 2048;
            v71 = self;
            v72 = 2114;
            v73 = v25;
            v26 = "%{public}@ <%p>: Error setting camera calibration for wide camera: %{public}@";
            goto LABEL_45;
          }

          goto LABEL_69;
        }

        if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          goto LABEL_69;
        }

        v55 = objc_opt_class();
        v24 = NSStringFromClass(v55);
        v25 = NSStringFromCV3DSLAMCalibrationReturn(v19);
        v68 = 138543874;
        v69 = v24;
        v70 = 2048;
        v71 = self;
        v72 = 2114;
        v73 = v25;
        v26 = "Error: %{public}@ <%p>: Error setting camera calibration for wide camera: %{public}@";
        goto LABEL_67;
      }
    }

    if (ARDeviceSupportsJasper())
    {
      v38 = SetDefaultJasperCalibrationData();
      if (v38)
      {
        v19 = v38;
        if (ARShouldUseLogTypeError_onceToken_38 != -1)
        {
          [ARWorldTrackingOptions createSLAMCalibration:];
        }

        v39 = ARShouldUseLogTypeError_internalOSVersion_38;
        v40 = _ARLogGeneral_30();
        v22 = v40;
        if (v39 == 1)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = objc_opt_class();
            v24 = NSStringFromClass(v41);
            v25 = NSStringFromCV3DSLAMCalibrationReturn(v19);
            v68 = 138543874;
            v69 = v24;
            v70 = 2048;
            v71 = self;
            v72 = 2114;
            v73 = v25;
            v26 = "%{public}@ <%p>: Error setting jasper calibration data: %{public}@";
            goto LABEL_45;
          }

          goto LABEL_69;
        }

        if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          goto LABEL_69;
        }

        v64 = objc_opt_class();
        v24 = NSStringFromClass(v64);
        v25 = NSStringFromCV3DSLAMCalibrationReturn(v19);
        v68 = 138543874;
        v69 = v24;
        v70 = 2048;
        v71 = self;
        v72 = 2114;
        v73 = v25;
        v26 = "Error: %{public}@ <%p>: Error setting jasper calibration data: %{public}@";
        goto LABEL_67;
      }
    }

    v44 = [(ARWorldTrackingOptions *)self shouldUseUltraWide];
    v45 = [(ARWorldTrackingOptions *)self imageSensorSettings];
    if ([v45 isBravoCameraEnabled])
    {
    }

    else
    {
      if (v44)
      {

LABEL_79:
        v19 = 0;
        goto LABEL_70;
      }

      v59 = [(ARWorldTrackingOptions *)self imageSensorSettings];
      v60 = [v59 videoFormat];
      v61 = [v60 device];
      [v61 maxAvailableVideoZoomFactorOverride];
      v63 = v62;

      if (v63 <= 1.0)
      {
        goto LABEL_79;
      }
    }

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.usePerFrameCameraIntrinsicsForBravo"])
    {
      if (CV3DSLAMCalibrationForceToUsePerFrameCameraIntrinsics())
      {
        if (ARShouldUseLogTypeError_onceToken_38 != -1)
        {
          [ARWorldTrackingOptions createSLAMCalibration:];
        }

        v46 = ARShouldUseLogTypeError_internalOSVersion_38;
        v47 = _ARLogGeneral_30();
        v48 = v47;
        if (v46 == 1)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            v51 = NSStringFromCV3DSLAMCalibrationReturn(0);
            v68 = 138543874;
            v69 = v50;
            v70 = 2048;
            v71 = self;
            v72 = 2112;
            v73 = v51;
            v52 = "%{public}@ <%p>: Error configuring SLAM calibration to use per-frame camera intrinsics: %@";
            v53 = v48;
            v54 = OS_LOG_TYPE_ERROR;
LABEL_76:
            _os_log_impl(&dword_1C241C000, v53, v54, v52, &v68, 0x20u);

            goto LABEL_77;
          }
        }

        else if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v67 = objc_opt_class();
          v50 = NSStringFromClass(v67);
          v51 = NSStringFromCV3DSLAMCalibrationReturn(0);
          v68 = 138543874;
          v69 = v50;
          v70 = 2048;
          v71 = self;
          v72 = 2112;
          v73 = v51;
          v52 = "Error: %{public}@ <%p>: Error configuring SLAM calibration to use per-frame camera intrinsics: %@";
          v53 = v48;
          v54 = OS_LOG_TYPE_INFO;
          goto LABEL_76;
        }

LABEL_78:

        goto LABEL_79;
      }

      v48 = _ARLogGeneral_30();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        goto LABEL_78;
      }

      v66 = objc_opt_class();
      v50 = NSStringFromClass(v66);
      v68 = 138543618;
      v69 = v50;
      v70 = 2048;
      v71 = self;
      v58 = "%{public}@ <%p>: Configured SLAM calibration to use per-frame camera intrinsics.";
    }

    else
    {
      v48 = _ARLogGeneral_30();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        goto LABEL_78;
      }

      v57 = objc_opt_class();
      v50 = NSStringFromClass(v57);
      v68 = 138543618;
      v69 = v50;
      v70 = 2048;
      v71 = self;
      v58 = "%{public}@ <%p>: Disabled per-frame camera intrinsics through user defaults.";
    }

    _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_INFO, v58, &v68, 0x16u);
LABEL_77:

    goto LABEL_78;
  }

  v19 = v30;
  if (ARShouldUseLogTypeError_onceToken_38 != -1)
  {
    [ARWorldTrackingOptions createSLAMCalibration:];
  }

  v31 = ARShouldUseLogTypeError_internalOSVersion_38;
  v32 = _ARLogGeneral_30();
  v22 = v32;
  if (v31 != 1)
  {
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_69;
    }

    v56 = objc_opt_class();
    v24 = NSStringFromClass(v56);
    v25 = NSStringFromCV3DSLAMCalibrationReturn(v19);
    v68 = 138543874;
    v69 = v24;
    v70 = 2048;
    v71 = self;
    v72 = 2114;
    v73 = v25;
    v26 = "Error: %{public}@ <%p>: Error setting camera calibration for ultra wide camera: %{public}@";
    goto LABEL_67;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = objc_opt_class();
    v24 = NSStringFromClass(v33);
    v25 = NSStringFromCV3DSLAMCalibrationReturn(v19);
    v68 = 138543874;
    v69 = v24;
    v70 = 2048;
    v71 = self;
    v72 = 2114;
    v73 = v25;
    v26 = "%{public}@ <%p>: Error setting camera calibration for ultra wide camera: %{public}@";
    goto LABEL_45;
  }

LABEL_69:

  CV3DSLAMCalibrationRelease();
  *a3 = 0;
LABEL_70:

  return v19;
}

- (int)setupCameraCalibration:(CV3DSLAMCalibration *)a3 forImageSensorSettings:(id)a4 deviceModel:(int)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [v7 videoFormat];

  if (v8)
  {
    v9 = [v7 videoFormat];
    v10 = [v9 captureDeviceType];

    if (v10 == *MEMORY[0x1E6986950])
    {
      v13 = &ARWorldTrackingBackWideCalibrationParametersUserDefaultsKey;
    }

    else
    {
      if (v10 != *MEMORY[0x1E6986948])
      {
        v11 = 0;
LABEL_9:
        v14 = [(ARWorldTrackingOptions *)self cameraIdForCaptureDeviceType:v10];
        v15 = [v7 videoFormat];
        [v15 imageResolution];
        v17 = v16;
        v19 = v18;

        v20 = CV3DSLAMCameraVideoModeForResolutionAndDeviceType(v10, v17, v19);
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
LABEL_28:
          v12 = SetDefaultCameraCalibrationData();
          if (!v12)
          {
LABEL_46:

            goto LABEL_47;
          }

          v61 = v20;
          if (ARShouldUseLogTypeError_onceToken_38 != -1)
          {
            [ARWorldTrackingOptions createSLAMCalibration:];
          }

          v40 = ARShouldUseLogTypeError_internalOSVersion_38;
          v41 = _ARLogGeneral_30();
          v42 = v41;
          if (v40 == 1)
          {
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_37;
            }

            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            NSStringFromCV3DSLAMCalibrationReturn(v12);
            v46 = v45 = a5;
            *buf = 138543874;
            v63 = v44;
            v64 = 2048;
            v65 = self;
            v66 = 2114;
            *v67 = v46;
            v47 = "%{public}@ <%p>: Error setting default camera calibration data: %{public}@";
            v48 = v42;
            v49 = OS_LOG_TYPE_ERROR;
          }

          else
          {
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              goto LABEL_37;
            }

            v50 = objc_opt_class();
            v44 = NSStringFromClass(v50);
            NSStringFromCV3DSLAMCalibrationReturn(v12);
            v46 = v45 = a5;
            *buf = 138543874;
            v63 = v44;
            v64 = 2048;
            v65 = self;
            v66 = 2114;
            *v67 = v46;
            v47 = "Error: %{public}@ <%p>: Error setting default camera calibration data: %{public}@";
            v48 = v42;
            v49 = OS_LOG_TYPE_INFO;
          }

          _os_log_impl(&dword_1C241C000, v48, v49, v47, buf, 0x20u);

          a5 = v45;
LABEL_37:

          if (ARShouldUseLogTypeError_onceToken_38 != -1)
          {
            [ARWorldTrackingOptions createSLAMCalibration:];
          }

          v51 = ARShouldUseLogTypeError_internalOSVersion_38;
          v52 = _ARLogGeneral_30();
          v21 = v52;
          if (v51 == 1)
          {
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v53 = objc_opt_class();
              v54 = NSStringFromClass(v53);
              *buf = 138544899;
              v63 = v54;
              v64 = 2048;
              v65 = self;
              v66 = 1025;
              *v67 = a5;
              *&v67[4] = 1025;
              *&v67[6] = v61;
              v68 = 1025;
              v69 = 0;
              v70 = 1025;
              v71 = v14;
              v72 = 1025;
              v73 = 0;
              v55 = "%{public}@ <%p>: Input values of failing call to SetDefaultCameraCalibrationData: deviceModel: %{private}d, videoMode: %{private}d, cameraMode: %{private}d, cameraID: %{private}d, cameraStreamId: %{private}d";
              v56 = v21;
              v57 = OS_LOG_TYPE_ERROR;
LABEL_44:
              _os_log_impl(&dword_1C241C000, v56, v57, v55, buf, 0x34u);
            }
          }

          else if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v58 = objc_opt_class();
            v54 = NSStringFromClass(v58);
            *buf = 138544899;
            v63 = v54;
            v64 = 2048;
            v65 = self;
            v66 = 1025;
            *v67 = a5;
            *&v67[4] = 1025;
            *&v67[6] = v61;
            v68 = 1025;
            v69 = 0;
            v70 = 1025;
            v71 = v14;
            v72 = 1025;
            v73 = 0;
            v55 = "Error: %{public}@ <%p>: Input values of failing call to SetDefaultCameraCalibrationData: deviceModel: %{private}d, videoMode: %{private}d, cameraMode: %{private}d, cameraID: %{private}d, cameraStreamId: %{private}d";
            v56 = v21;
            v57 = OS_LOG_TYPE_INFO;
            goto LABEL_44;
          }

LABEL_45:

          goto LABEL_46;
        }

        v21 = v11;
        v60 = a5;
        if (_ARLogTechnique_onceToken_20 != -1)
        {
          [ARWorldTrackingOptions setupCameraCalibration:forImageSensorSettings:deviceModel:];
        }

        v22 = _ARLogTechnique_logObj_20;
        if (os_log_type_enabled(_ARLogTechnique_logObj_20, OS_LOG_TYPE_DEBUG))
        {
          v23 = v22;
          v24 = objc_opt_class();
          NSStringFromClass(v24);
          v26 = v25 = v20;
          *buf = 138543874;
          v63 = v26;
          v64 = 2048;
          v65 = self;
          v66 = 2112;
          *v67 = v10;
          _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Parsing custom camera calibration parameters for device type %@.", buf, 0x20u);

          v20 = v25;
        }

        if (!ARParseAndAddCameraCalibrationParameters(v21))
        {
          v36 = _ARLogGeneral_30();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            *buf = 138543618;
            v63 = v38;
            v64 = 2048;
            v65 = self;
            _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using custom camera calibration parameters.", buf, 0x16u);
          }

          v12 = 0;
          goto LABEL_45;
        }

        if (ARShouldUseLogTypeError_onceToken_38 != -1)
        {
          [ARWorldTrackingOptions createSLAMCalibration:];
        }

        v27 = ARShouldUseLogTypeError_internalOSVersion_38;
        v28 = _ARLogGeneral_30();
        v29 = v28;
        if (v27 == 1)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = objc_opt_class();
            NSStringFromClass(v30);
            v32 = v31 = v20;
            *buf = 138543618;
            v63 = v32;
            v64 = 2048;
            v65 = self;
            v33 = "%{public}@ <%p>: Error parsing custom camera calibration parameters, using default parameters";
            v34 = v29;
            v35 = OS_LOG_TYPE_ERROR;
LABEL_26:
            _os_log_impl(&dword_1C241C000, v34, v35, v33, buf, 0x16u);

            v20 = v31;
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          NSStringFromClass(v39);
          v32 = v31 = v20;
          *buf = 138543618;
          v63 = v32;
          v64 = 2048;
          v65 = self;
          v33 = "Error: %{public}@ <%p>: Error parsing custom camera calibration parameters, using default parameters";
          v34 = v29;
          v35 = OS_LOG_TYPE_INFO;
          goto LABEL_26;
        }

        a5 = v60;
        goto LABEL_28;
      }

      v13 = &ARWorldTrackingBackUltraWideCalibrationParametersUserDefaultsKey;
    }

    v11 = [ARKitUserDefaults objectForKey:*v13];
    goto LABEL_9;
  }

  v12 = 1;
LABEL_47:

  return v12;
}

- (void)createSLAMConfig:(CV3DSLAMConfig *)a3 calibration:(CV3DSLAMCalibration *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = [(ARWorldTrackingOptions *)self imageSensorSettings];
  if ([(ARWorldTrackingOptions *)self shouldUseUltraWide])
  {
    v7 = [(ARWorldTrackingOptions *)self imageSensorSettingsForUltraWide];

    v6 = v7;
  }

  v8 = [v6 videoFormat];

  if (!v8)
  {
    *a3 = 0;
    goto LABEL_58;
  }

  v9 = [v6 videoFormat];
  [v9 imageResolution];
  v11 = v10;
  v13 = v12;

  v14 = [v6 videoFormat];
  v15 = [v14 captureDeviceType];
  CV3DSLAMCameraVideoModeForResolutionAndDeviceType(v15, v11, v13);

  v16 = [(ARWorldTrackingOptions *)self slamConfiguration];
  [v16 UTF8String];
  CV3DSLAMConfigPresetFromString();

  [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"];
  [v6 visionDataOutputEnabled];
  CV3DSLAMConfigCalcFeaturePointDetectionResolution();
  CV3DSLAMConfigCalcLineDetectionResolution();
  *a3 = CV3DSLAMConfigCreate2();
  [(ARWorldTrackingOptions *)self relocalizationEnabled];
  CV3DSLAMConfigSetRelocalizationEnabled();
  CV3DSLAMConfigUseSWProxyFeaturePoints();
  v17 = CV3DSLAMConfigUseHWFeaturePoints();
  v18 = MEMORY[0x1C6919710](v17);
  if (v18 && [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.useLACCIfAvailable"])
  {
    CV3DSLAMConfigEnableLacc();
  }

  if ([(ARWorldTrackingOptions *)self isCollaborationEnabled])
  {
    CV3DSLAMConfigEnableCollaborativeMapping();
    [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.collaborativeMappingStatistics"];
    CV3DSLAMConfigOutputCollaborativeMappingStatistics();
  }

  [(ARWorldTrackingOptions *)self deterministicMode];
  CV3DSLAMConfigUseDeterministicMode();
  if (self->_disableMLRelocalization)
  {
    v19 = _ARLogGeneral_30();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *v48 = 138543618;
      *&v48[4] = v21;
      *&v48[12] = 2048;
      *&v48[14] = self;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Force disabling relocalization mode. The user default has no effect.", v48, 0x16u);
    }

    goto LABEL_15;
  }

  v22 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.worldTracking.mlRelocalizationMode"];
  if (v22 == 2)
  {
    goto LABEL_20;
  }

  if (v22 == 1)
  {
LABEL_15:
    CV3DSLAMConfigDisableMLRelocalization();
    goto LABEL_21;
  }

  if (!v22 && CV3DSLAMConfigIsMLRelocalizationSupported())
  {
LABEL_20:
    CV3DSLAMConfigEnableMLRelocalization();
  }

LABEL_21:
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.enableTempMappingDirectory"]&& !self->_disableMLRelocalization)
  {
    v23 = NSTemporaryDirectory();
    [v23 fileSystemRepresentation];
    v24 = CV3DSLAMConfigSetMappingDirectory();
    if (!v24)
    {
LABEL_33:

      goto LABEL_34;
    }

    v25 = v24;
    if (ARShouldUseLogTypeError_onceToken_38 != -1)
    {
      [ARWorldTrackingOptions createSLAMCalibration:];
    }

    v26 = ARShouldUseLogTypeError_internalOSVersion_38;
    v27 = _ARLogGeneral_30();
    v28 = v27;
    if (v26 == 1)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromCV3DSLAMConfigReturn(v25);
        *v48 = 138543874;
        *&v48[4] = v30;
        *&v48[12] = 2048;
        *&v48[14] = self;
        *&v48[22] = 2114;
        v49 = v31;
        v32 = "%{public}@ <%p>: Error setting SLAM mapping directory: %{public}@";
        v33 = v28;
        v34 = OS_LOG_TYPE_ERROR;
LABEL_31:
        _os_log_impl(&dword_1C241C000, v33, v34, v32, v48, 0x20u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v30 = NSStringFromClass(v35);
      v31 = NSStringFromCV3DSLAMConfigReturn(v25);
      *v48 = 138543874;
      *&v48[4] = v30;
      *&v48[12] = 2048;
      *&v48[14] = self;
      *&v48[22] = 2114;
      v49 = v31;
      v32 = "Error: %{public}@ <%p>: Error setting SLAM mapping directory: %{public}@";
      v33 = v28;
      v34 = OS_LOG_TYPE_INFO;
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_34:
  v36 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.lineFeatures", *v48, *&v48[16], v49];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 BOOLValue];
  }

  else
  {
    v38 = 0;
  }

  v39 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.lineFeaturesAlwaysOn"];
  v40 = v39;
  if (v39 && [v39 BOOLValue])
  {
    CV3DSLAMConfigEnableLineTrackingAlways();
  }

  else if (v38)
  {
    CV3DSLAMConfigEnableLineTracking();
  }

  else
  {
    CV3DSLAMConfigDisableLineTracking();
  }

  if (self->_sceneReconstruction)
  {
    CV3DSLAMConfigAnchorStrategy();
  }

  if (ARDeviceSupportsJasper() && [(ARWorldTrackingOptions *)self planeEstimationShouldUseJasperData])
  {
    CV3DSLAMConfigEnablePlaneTracking();
  }

  else
  {
    CV3DSLAMConfigDisablePlaneTracking();
  }

  v41 = [(ARWorldTrackingOptions *)self initialWorldMap];

  if (v41)
  {
    v42 = [(ARWorldTrackingOptions *)self initialWorldMap];
    v43 = [v42 trackingData];
    CV3DSLAMConfigSetMapFromCFData();
  }

  if ([(ARWorldTrackingOptions *)self alwaysUsePrimaryCameraForTracking])
  {
    CV3DSLAMConfigDisableCameraSwitchingAndUsePrimaryCamera();
  }

  v44 = [(ARWorldTrackingOptions *)self vioSessionID];

  if (v44)
  {
    v45 = [(ARWorldTrackingOptions *)self vioSessionID];
    [v45 unsignedIntegerValue];
    CV3DSLAMConfigOverrideSessionID();
  }

  v46 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.transformToExternalSubmap"];
  v47 = v46;
  if (v46)
  {
    [v46 BOOLValue];
    CV3DSLAMConfigEnableTransformToExternalSubmap();
  }

LABEL_58:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ARImageSensorSettings *)self->_imageSensorSettings copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(ARImageSensorSettings *)self->_imageSensorSettingsForUltraWide copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_deviceModel copyWithZone:a3];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  *(v5 + 32) = self->_relocalizationEnabled;
  v12 = [(ARWorldMap *)self->_initialWorldMap copyWithZone:a3];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v14 = [(NSString *)self->_slamConfigurationPreset copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  *(v5 + 33) = self->_deterministicMode;
  *(v5 + 34) = self->_lowQosSchedulingEnabled;
  *(v5 + 80) = self->_planeDetection;
  *(v5 + 88) = self->_minVergenceAngle;
  *(v5 + 35) = self->_mlModelEnabled;
  *(v5 + 36) = self->_collaborationEnabled;
  objc_storeStrong((v5 + 112), self->_vioSessionID);
  *(v5 + 37) = self->_depthBuffersWillBeProvided;
  *(v5 + 38) = self->_visionDataWillBeReplayed;
  *(v5 + 96) = self->_sceneReconstruction;
  v16 = [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions copyWithZone:a3];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  *(v5 + 39) = self->_planeEstimationShouldUseJasperData;
  *(v5 + 40) = self->_alwaysUsePrimaryCameraForTracking;
  *(v5 + 41) = self->_disableMLRelocalization;
  *(v5 + 42) = self->_recordForGeoTracking;
  *(v5 + 43) = self->_planeBundleAdjustmentEnabled;
  v18 = MEMORY[0x1C691B4C0](self->_singleShotPlaneCallback);
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  v20 = MEMORY[0x1C691B4C0](self->_trackedPlaneCallback);
  v21 = *(v5 + 128);
  *(v5 + 128) = v20;

  v22 = MEMORY[0x1C691B4C0](self->_planeDetectionVIOPoseCallback);
  v23 = *(v5 + 136);
  *(v5 + 136) = v22;

  v24 = MEMORY[0x1C691B4C0](self->_planeDetectionPoseUpdateCallback);
  v25 = *(v5 + 144);
  *(v5 + 144) = v24;

  [v5 updateCameraMap];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    imageSensorSettings = self->_imageSensorSettings;
    v12 = (imageSensorSettings == v5[6] || [(ARImageSensorSettings *)imageSensorSettings isEqual:?]) && ((imageSensorSettingsForUltraWide = self->_imageSensorSettingsForUltraWide, imageSensorSettingsForUltraWide == v5[7]) || [(ARImageSensorSettings *)imageSensorSettingsForUltraWide isEqual:?]) && ((deviceModel = self->_deviceModel, deviceModel == v5[8]) || [(NSString *)deviceModel isEqualToString:?]) && self->_relocalizationEnabled == *(v5 + 32) && ((initialWorldMap = self->_initialWorldMap, initialWorldMap == v5[9]) || [(ARWorldMap *)initialWorldMap isEqual:?]) && ((slamConfigurationPreset = self->_slamConfigurationPreset, slamConfigurationPreset == v5[3]) || [(NSString *)slamConfigurationPreset isEqual:?]) && self->_deterministicMode == *(v5 + 33) && self->_planeDetection == v5[10] && self->_lowQosSchedulingEnabled == *(v5 + 34) && self->_minVergenceAngle == *(v5 + 11) && self->_mlModelEnabled == *(v5 + 35) && self->_collaborationEnabled == *(v5 + 36) && self->_vioSessionID == v5[14] && self->_depthBuffersWillBeProvided == *(v5 + 37) && self->_visionDataWillBeReplayed == *(v5 + 38) && self->_sceneReconstruction == v5[12] && ((sceneReconstructionOptions = self->_sceneReconstructionOptions, sceneReconstructionOptions == v5[13]) || [(ARSceneReconstructionOptions *)sceneReconstructionOptions isEqual:?]) && self->_planeEstimationShouldUseJasperData == *(v5 + 39) && self->_alwaysUsePrimaryCameraForTracking == *(v5 + 40) && self->_disableMLRelocalization == *(v5 + 41) && self->_recordForGeoTracking == *(v5 + 42) && self->_planeBundleAdjustmentEnabled == *(v5 + 43) && self->_singleShotPlaneCallback == v5[15] && self->_trackedPlaneCallback == v5[16] && self->_planeDetectionVIOPoseCallback == v5[17] && self->_planeDetectionPoseUpdateCallback == v5[18];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end