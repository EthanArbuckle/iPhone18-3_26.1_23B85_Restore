@interface ARConfiguration
+ (AVCaptureDevice)configurableCaptureDeviceForPrimaryCamera;
+ (BOOL)shouldProvideNonBinnedVideoFormats;
+ (NSArray)supportedVideoFormats;
+ (id)_querySupportedVideoFormatsForJasper:(int64_t)jasper;
+ (id)_supportedVideoFormatsForJasper:(int64_t)jasper;
+ (void)setShouldProvideNonBinnedVideoFormats:(BOOL)formats;
+ (void)setShouldProvideX420VideoFormat:(BOOL)format;
+ (void)setShouldUse30FPSJasperFormats:(BOOL)formats;
- (ARImageSensorSettings)imageSensorSettings;
- (ARParentImageSensorSettings)parentImageSensorSettings;
- (ARReplaySensorProtocol)replaySensor;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfConfiguration:(Class)configuration;
- (NSString)deviceModel;
- (id)copyWithZone:(_NSZone *)zone;
- (id)depthSensorSettingsForJasper;
- (id)description;
- (id)descriptionWithoutBrackets;
- (id)getAsKindOfConfiguration:(Class)configuration;
- (id)initPrivate;
- (id)techniques;
- (id)techniquesForStillImageGraph;
- (unint64_t)hash;
- (void)_createTechniques:(id)techniques forStillImage:(BOOL)image;
- (void)setCameraPosition:(int64_t)position;
- (void)setCustomSensors:(id)sensors;
- (void)setDepthSensorNumberOfPointsMode:(int64_t)mode;
- (void)setFrameSemantics:(ARFrameSemantics)frameSemantics;
- (void)setJasperFrameRate:(int64_t)rate;
- (void)setTimeOfFlightProjectorMode:(id)mode;
- (void)setVideoFormat:(ARVideoFormat *)videoFormat;
@end

@implementation ARConfiguration

- (id)initPrivate
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = ARConfiguration;
  v2 = [(ARConfiguration *)&v16 init];
  if (v2)
  {
    if ([v2 isMemberOfClass:objc_opt_class()])
    {
LABEL_14:
      v2[35] = 0;
      *(v2 + 6) = 0;
      *(v2 + 72) = xmmword_1C25C8E00;
      *(v2 + 1) = 0;
      objc_storeStrong(v2 + 11, @"ARTimeOfFlightProjectorModeNormalShortHybrid");
      *(v2 + 12) = 0;
      v2[34] = [ARKitUserDefaults integerForKey:@"com.apple.arkit.personOcclusion.optimizationStrategy"]!= 0;
      *(v2 + 3) = 0;
      *(v2 + 13) = -1;
      v2[33] = 0;
      v2[38] = 0;
      v2[41] = 0;
      v2[42] = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.initialFrameDrop.enabled"];
      v2[36] = 0;
      return v2;
    }

    supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
    firstObject = [supportedVideoFormats firstObject];
    v5 = *(v2 + 2);
    *(v2 + 2) = firstObject;

    if (*(v2 + 2))
    {
LABEL_13:

      goto LABEL_14;
    }

    if (ARShouldUseLogTypeError_onceToken_23 != -1)
    {
      [ARConfiguration initPrivate];
    }

    v6 = ARShouldUseLogTypeError_internalOSVersion_23;
    v7 = _ARLogGeneral_11();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138543618;
        v18 = v10;
        v19 = 2048;
        v20 = v2;
        v11 = "%{public}@ <%p>: video format is nil, supportedVideoFormats is empty";
        v12 = v8;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_1C241C000, v12, v13, v11, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v10 = NSStringFromClass(v14);
      *buf = 138543618;
      v18 = v10;
      v19 = 2048;
      v20 = v2;
      v11 = "Error: %{public}@ <%p>: video format is nil, supportedVideoFormats is empty";
      v12 = v8;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  return v2;
}

- (void)setVideoFormat:(ARVideoFormat *)videoFormat
{
  v4 = videoFormat;
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v6 = [supportedVideoFormats indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Video format not supported by this configuration" userInfo:0];
    objc_exception_throw(v8);
  }

  v7 = self->_videoFormat;
  self->_videoFormat = v4;
}

- (ARParentImageSensorSettings)parentImageSensorSettings
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  imageSensorSettings = [(ARConfiguration *)self imageSensorSettings];
  [imageSensorSettings setDropsInitialFramesOutsideExposureTargetOffsetThreshold:{-[ARConfiguration dropInitialFramesOutsideExposureTarget](self, "dropInitialFramesOutsideExposureTarget")}];
  v7[0] = imageSensorSettings;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setSettings:v5];

  [v3 setAudioCaptureEnabled:{-[ARConfiguration providesAudioData](self, "providesAudioData")}];
  [v3 setAllowCameraInMultipleForegroundAppLayout:{-[ARConfiguration allowCameraInMultipleForegroundAppLayout](self, "allowCameraInMultipleForegroundAppLayout")}];

  return v3;
}

- (ARImageSensorSettings)imageSensorSettings
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [ARImageSensorSettings alloc];
  videoFormat = [(ARConfiguration *)self videoFormat];
  v5 = [(ARImageSensorSettings *)v3 initWithVideoFormat:videoFormat];

  [(ARImageSensorSettings *)v5 setAutoFocusEnabled:[(ARConfiguration *)self isAutoFocusEnabled]];
  [(ARImageSensorSettings *)v5 setVideoHDRAllowed:[(ARConfiguration *)self videoHDRAllowed]];
  [(ARImageSensorSettings *)v5 setSupportsCapturingHighResolutionFrames:1];
  [(ARImageSensorSettings *)v5 setFocusPixelBlurScoreDeliveryEnabled:[(ARConfiguration *)self focusPixelBlurScoreDeliveryEnabled]];
  [(ARImageSensorSettings *)v5 setCalibrationDataOutputEnabled:[(ARConfiguration *)self shouldUseJasper]];
  videoFormat2 = [(ARConfiguration *)self videoFormat];
  captureDevicePosition = [videoFormat2 captureDevicePosition];

  if (captureDevicePosition == 2)
  {
    v8 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.imagesensor.face.mirror"];
    v9 = v8;
    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
      if (_ARLogSensor_onceToken_10 != -1)
      {
        [ARConfiguration imageSensorSettings];
      }

      v11 = _ARLogSensor_logObj_10;
      if (os_log_type_enabled(_ARLogSensor_logObj_10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = "disabled";
        *v17 = 138543874;
        *&v17[4] = v14;
        if (bOOLValue)
        {
          v15 = "enabled";
        }

        *&v17[12] = 2048;
        *&v17[14] = self;
        v18 = 2080;
        v19 = v15;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Face tracking image sensor mirrored video output %s by user defaults", v17, 0x20u);
      }
    }

    else
    {
      bOOLValue = 1;
    }

    [(ARImageSensorSettings *)v5 setMirrorVideoOutput:bOOLValue, *v17];
  }

  return v5;
}

- (id)depthSensorSettingsForJasper
{
  if ([(ARConfiguration *)self shouldUseJasper])
  {
    v3 = [objc_opt_class() _supportedVideoFormatsForJasper:self->_depthSensorNumberOfPointsMode];
    firstObject = [v3 firstObject];

    if (firstObject)
    {
      v5 = [[ARDepthSensorSettings alloc] initWithVideoFormat:firstObject];
      timeOfFlightProjectorMode = [(ARConfiguration *)self timeOfFlightProjectorMode];

      if (timeOfFlightProjectorMode != @"ARTimeOfFlightProjectorModeNone")
      {
        timeOfFlightProjectorMode2 = [(ARConfiguration *)self timeOfFlightProjectorMode];
        [(ARDepthSensorSettings *)v5 setTimeOfFlightProjectorMode:timeOfFlightProjectorMode2];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_querySupportedVideoFormatsForJasper:(int64_t)jasper
{
  v32[3] = *MEMORY[0x1E69E9840];
  if (s_customJasperFrameRate)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v32[0] = v5;
    v32[1] = &unk_1F4259450;
    v32[2] = &unk_1F4259450;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  }

  else
  {
    v6 = 0;
  }

  v7 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.jasper.framerate"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 componentsSeparatedByString:{@", "}];
    v10 = [v9 mutableCopy];

    if ([v10 count] == 3)
    {
      v11 = v6;
      v6 = v10;
    }

    else
    {
      if (ARShouldUseLogTypeError_onceToken_23 != -1)
      {
        [ARConfiguration initPrivate];
      }

      v17 = ARShouldUseLogTypeError_internalOSVersion_23;
      v18 = _ARLogGeneral_11();
      v11 = v18;
      if (v17 == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138543874;
          v27 = v20;
          v28 = 2048;
          selfCopy2 = self;
          v30 = 2048;
          v31 = [v6 count];
          _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Expected 3 jasper frame rate values: %lu", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138543874;
        v27 = v23;
        v28 = 2048;
        selfCopy2 = self;
        v30 = 2048;
        v31 = [v6 count];
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Expected 3 jasper frame rate values: %lu", buf, 0x20u);
      }
    }
  }

  v12 = [ARVideoFormat bestTimeOfFlightFormatForDevicePosition:1 depthSensorNumberOfPointsMode:jasper frameRates:v6];
  v13 = v12;
  if (v12)
  {
    v25 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  }

  else if (ARDeviceSupportsJasper())
  {
    v15 = [ARVideoFormat alloc];
    v16 = [(ARVideoFormat *)v15 initWithImageResolution:1 captureDevicePosition:*MEMORY[0x1E6986930] captureDeviceType:512.0, 256.0];
    v24 = v16;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

+ (id)_supportedVideoFormatsForJasper:(int64_t)jasper
{
  if ([self isSupported])
  {
    firstObject = [s_supportedJasperFormatsCache firstObject];
    device = [firstObject device];

    if (!device || s_supportedJasperFormatsCache && ![s_supportedJasperFormatsCache count])
    {
      v7 = [self _querySupportedVideoFormatsForJasper:jasper];
      v8 = s_supportedJasperFormatsCache;
      s_supportedJasperFormatsCache = v7;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__ARConfiguration__supportedVideoFormatsForJasper___block_invoke;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = self;
    v11[5] = jasper;
    if (_supportedVideoFormatsForJasper__onceToken != -1)
    {
      dispatch_once(&_supportedVideoFormatsForJasper__onceToken, v11);
    }

    v9 = s_supportedJasperFormatsCache;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

void __51__ARConfiguration__supportedVideoFormatsForJasper___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormatsForJasper:*(a1 + 40)];
  v2 = s_supportedJasperFormatsCache;
  s_supportedJasperFormatsCache = v1;
}

- (void)setCustomSensors:(id)sensors
{
  v51 = *MEMORY[0x1E69E9840];
  sensorsCopy = sensors;
  v6 = sensorsCopy;
  if (sensorsCopy)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    supportedVideoFormats = sensorsCopy;
    v8 = [supportedVideoFormats countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (!v8)
    {
      goto LABEL_24;
    }

    v9 = *v41;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v41 != v9)
      {
        objc_enumerationMutation(supportedVideoFormats);
      }

      v11 = *(*(&v40 + 1) + 8 * v10);
      if ([v11 conformsToProtocol:&unk_1F425D818])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [supportedVideoFormats countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }
    }

    v12 = v11;
    v13 = *MEMORY[0x1E6986950];
    v14 = objc_initWeak(&location, self);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = objc_loadWeakRetained(&location);
      templateConfiguration = [v16 templateConfiguration];
      objc_storeWeak(&location, templateConfiguration);
    }

    v18 = objc_loadWeakRetained(&location);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v24 = objc_loadWeakRetained(&location);
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if ((v25 & 1) == 0)
      {
        v27 = 1;
        goto LABEL_20;
      }
    }

    v26 = *MEMORY[0x1E6986940];

    v27 = 2;
    v13 = v26;
LABEL_20:
    v28 = [ARVideoFormat alloc];
    [v12 imageResolution];
    v29 = [(ARVideoFormat *)v28 initWithImageResolution:v27 captureDevicePosition:v13 captureDeviceType:?];
    videoFormat = self->_videoFormat;
    self->_videoFormat = v29;

    v31 = _ARLogGeneral_11();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [(ARVideoFormat *)self->_videoFormat description];
      *buf = 138543874;
      v46 = v33;
      v47 = 2048;
      selfCopy3 = self;
      v49 = 2114;
      v50 = v34;
      _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Video format updated from replay sensor: %{public}@", buf, 0x20u);
    }

    objc_destroyWeak(&location);
    goto LABEL_23;
  }

  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  firstObject = [supportedVideoFormats firstObject];
  v20 = self->_videoFormat;
  self->_videoFormat = firstObject;

  v12 = _ARLogGeneral_11();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [(ARVideoFormat *)self->_videoFormat description];
    *buf = 138543874;
    v46 = v22;
    v47 = 2048;
    selfCopy3 = self;
    v49 = 2114;
    v50 = v23;
    _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Video format reset to default: %{public}@", buf, 0x20u);
  }

LABEL_23:

LABEL_24:
  objc_storeStrong(&self->_customSensors, sensors);
  v35 = _ARLogGeneral_11();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    customSensors = self->_customSensors;
    *buf = 138543874;
    v46 = v37;
    v47 = 2048;
    selfCopy3 = self;
    v49 = 2048;
    v50 = customSensors;
    _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Custom sensors set: %p", buf, 0x20u);
  }
}

- (void)setCameraPosition:(int64_t)position
{
  v22 = *MEMORY[0x1E69E9840];
  if (position && (-[ARConfiguration videoFormat](self, "videoFormat"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 captureDevicePosition], v5, v6 != position))
  {
    supportedVideoFormats = [ARVideoFormat supportedVideoFormatsForDevicePosition:position deviceType:*MEMORY[0x1E6986950]];
    firstObject = [supportedVideoFormats firstObject];
    videoFormat = self->_videoFormat;
    self->_videoFormat = firstObject;

    v12 = _ARLogGeneral_11();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [(ARVideoFormat *)self->_videoFormat description];
      v16 = 138543874;
      v17 = v14;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using custom video format for configuration, it may not be supported: %{public}@", &v16, 0x20u);
    }
  }

  else
  {
    supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
    firstObject2 = [supportedVideoFormats firstObject];
    v9 = self->_videoFormat;
    self->_videoFormat = firstObject2;
  }

  self->_cameraPosition = position;
}

- (void)setFrameSemantics:(ARFrameSemantics)frameSemantics
{
  if (([objc_opt_class() supportsFrameSemantics:frameSemantics] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This set of frame semantics is not supported on this configuration" userInfo:0];
    objc_exception_throw(v6);
  }

  self->_frameSemantics = frameSemantics;
  v5 = (frameSemantics & 0x18) == 0 && [ARKitUserDefaults integerForKey:@"com.apple.arkit.personOcclusion.optimizationStrategy"]!= 0;
  self->_smartPersonOcclusionEnabled = v5;
}

- (NSString)deviceModel
{
  v3 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.worldtracking.deviceModel"];
  v4 = v3;
  if (v3)
  {
    deviceModel = v3;
  }

  else
  {
    replaySensor = [(ARConfiguration *)self replaySensor];
    deviceModel = [replaySensor deviceModel];
  }

  return deviceModel;
}

- (ARReplaySensorProtocol)replaySensor
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  customSensors = [(ARConfiguration *)self customSensors];
  v3 = [customSensors countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(customSensors);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 conformsToProtocol:&unk_1F425D818])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [customSensors countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setTimeOfFlightProjectorMode:(id)mode
{
  modeCopy = mode;
  if (([modeCopy isEqualToString:@"ARTimeOfFlightProjectorModeNone"] & 1) == 0 && (objc_msgSend(objc_opt_class(), "supportsTimeOfFlightProjectorMode") & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Projector Mode is not supported on this device" userInfo:0];
    objc_exception_throw(v6);
  }

  timeOfFlightProjectorMode = self->_timeOfFlightProjectorMode;
  self->_timeOfFlightProjectorMode = modeCopy;
}

- (id)techniques
{
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  [(ARConfiguration *)self createTechniques:v3];
  objc_autoreleasePoolPop(v4);
  if ([v3 count])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)techniquesForStillImageGraph
{
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  [(ARConfiguration *)self _createTechniques:v3 forStillImage:1];
  objc_autoreleasePoolPop(v4);
  if ([v3 count])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_createTechniques:(id)techniques forStillImage:(BOOL)image
{
  imageCopy = image;
  v66 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  v7 = ~[(ARConfiguration *)self frameSemantics]& 3;
  frameSemantics = [(ARConfiguration *)self frameSemantics];
  v9 = ([(ARConfiguration *)self frameSemantics]& 4) == 0 || imageCopy;
  frameSemantics2 = [(ARConfiguration *)self frameSemantics];
  frameSemantics3 = [(ARConfiguration *)self frameSemantics];
  if (!v7 && [objc_opt_class() supportsFrameSemantics:3])
  {
    if (ARDeviceSupportsJasper())
    {
      v12 = [ARDepthTechnique sceneDepthTechniqueForPrioritization:[(ARConfiguration *)self _depthPrioritization] temporalSmoothing:(frameSemantics3 >> 4) & 1];
    }

    else
    {
      v12 = objc_opt_new();
    }

    v15 = v12;
    v20 = frameSemantics2 & 8 | frameSemantics3 & 0x10;
    _ARAddScalingTechniquesToTechniques(techniquesCopy, !self->_disableOcclusionForPersonSegmentation, 0, 256.0, 192.0);
    v17 = objc_opt_new();
    [v17 setDisableTemporalSegmentation:imageCopy];
    v21 = objc_alloc(MEMORY[0x1E695DF70]);
    v22 = objc_opt_new();
    v23 = [v21 initWithObjects:{v17, v22, 0}];

    if (v20 && ARDeviceSupportsJasper())
    {
      v24 = _ARParentTechniqueForDepthTechnique(v15, imageCopy);
      [techniquesCopy addObject:v24];
    }

    else
    {
      [v23 addObject:v15];
    }

    if (!self->_disableOcclusionForPersonSegmentation)
    {
      v25 = objc_alloc_init(ARMLImageMattingMetadataTechnique);
      [v23 addObject:v25];
    }

    v18 = [(ARParentTechnique *)[ARPersonOcclusionParentTechnique alloc] initWithParallelTechniques:v23];
    smartPersonOcclusionEnabled = [(ARConfiguration *)self smartPersonOcclusionEnabled];
    v27 = 0;
    if (smartPersonOcclusionEnabled && !imageCopy)
    {
      v27 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.personOcclusion.optimizationStrategy"];
    }

    [(ARPersonOcclusionParentTechnique *)v18 setOptimizationStrategy:v27];
    [techniquesCopy addObject:v18];
    v28 = objc_opt_new();
    [techniquesCopy addObject:v28];

    goto LABEL_38;
  }

  if ((frameSemantics & 1) != 0 && [objc_opt_class() supportsFrameSemantics:1])
  {
    v13 = !self->_disableOcclusionForPersonSegmentation;
    v14 = [(ARConfiguration *)self getAsKindOfConfiguration:objc_opt_class()];
    v15 = v14;
    if (v14)
    {
      prepareForPortraitImageData = [v14 prepareForPortraitImageData];
    }

    else
    {
      prepareForPortraitImageData = 0;
    }

    _ARAddScalingTechniquesToTechniques(techniquesCopy, v13, prepareForPortraitImageData, 256.0, 192.0);
    v17 = objc_opt_new();
    [v17 setDisableTemporalSegmentation:imageCopy];
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];
    if (!self->_disableOcclusionForPersonSegmentation)
    {
      v30 = objc_alloc_init(ARMLImageMattingMetadataTechnique);
      [v29 addObject:v30];
    }

    v31 = frameSemantics2 & 8 | frameSemantics3 & 0x10;
    v18 = [(ARParentTechnique *)[ARPersonOcclusionParentTechnique alloc] initWithParallelTechniques:v29];
    if ([(ARConfiguration *)self smartPersonOcclusionEnabled])
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    [(ARPersonOcclusionParentTechnique *)v18 setOptimizationStrategy:v32];
    [techniquesCopy addObject:v18];
    if (v31 && ARDeviceSupportsJasper())
    {
      v33 = [ARDepthTechnique sceneDepthTechniqueForPrioritization:[(ARConfiguration *)self _depthPrioritization] temporalSmoothing:(frameSemantics3 >> 4) & 1];
      v34 = _ARParentTechniqueForDepthTechnique(v33, imageCopy);
      [techniquesCopy addObject:v34];
    }

LABEL_38:
    v19 = 1;
    if (v9)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (frameSemantics2 & 8 | frameSemantics3 & 0x10 && ARDeviceSupportsJasper())
  {
    v15 = [ARDepthTechnique sceneDepthTechniqueForPrioritization:[(ARConfiguration *)self _depthPrioritization] temporalSmoothing:(frameSemantics3 >> 4) & 1];
    v17 = _ARParentTechniqueForDepthTechnique(v15, imageCopy);
    _ARAddScalingTechniquesToTechniques(techniquesCopy, 0, 0, 256.0, 192.0);
    [techniquesCopy addObject:v17];
    v18 = 0;
    goto LABEL_38;
  }

  v18 = 0;
  v19 = 0;
  if (v9)
  {
    goto LABEL_48;
  }

LABEL_39:
  if ([objc_opt_class() supportsFrameSemantics:4])
  {
    if ((v19 & 1) == 0)
    {
      +[AR2DSkeletonDetectionTechnique inputDimensionsForMLModel];
      v36 = v35;
      v38 = v37;
      v39 = _ARLogGeneral_11();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544130;
        v59 = v41;
        v60 = 2048;
        selfCopy = self;
        v62 = 2048;
        v63 = v36;
        v64 = 2048;
        v65 = v38;
        _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ARConfiguration for Body Detection Scaler dimensions: (%f,%f)", buf, 0x2Au);
      }

      _ARAddScalingTechniquesToTechniques(techniquesCopy, 0, 0, v36, v38);
    }

    v42 = objc_opt_new();
    v43 = objc_opt_new();
    v44 = [ARParentTechnique alloc];
    v57[0] = v42;
    v57[1] = v43;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
    v46 = [(ARParentTechnique *)v44 initWithTechniques:v45];

    if (v18)
    {
      techniques = [(ARParentTechnique *)v18 techniques];
      v48 = [(ARParentTechnique *)techniques arrayByAddingObject:v46];
      [(ARPersonOcclusionParentTechnique *)v18 setTechniques:v48];
    }

    else
    {
      v49 = [ARParentTechnique alloc];
      v56 = v46;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      techniques = [(ARParentTechnique *)v49 initWithParallelTechniques:v50];

      [techniquesCopy addObject:techniques];
    }
  }

LABEL_48:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(ARConfiguration *)self isWorldTrackingEnabled]& 1) == 0)
  {
    v51 = [ARWorldAlignmentTechnique alloc];
    worldAlignment = [(ARConfiguration *)self worldAlignment];
    videoFormat = [(ARConfiguration *)self videoFormat];
    v54 = -[ARWorldAlignmentTechnique initWithAlignment:cameraPosition:](v51, "initWithAlignment:cameraPosition:", worldAlignment, [videoFormat captureDevicePosition]);
    [techniquesCopy addObject:v54];
  }

  if ([(ARConfiguration *)self lightEstimation]== 1 || [(ARConfiguration *)self lightEstimation]== 2)
  {
    v55 = objc_opt_new();
    [techniquesCopy addObject:v55];
  }
}

+ (NSArray)supportedVideoFormats
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Supported video formats should be called on individual configuration class." userInfo:0];
  objc_exception_throw(v2);
}

+ (void)setShouldUse30FPSJasperFormats:(BOOL)formats
{
  if (s_customJasperFrameRate != 30)
  {
    s_customJasperFrameRate = 30;
    v3 = s_supportedJasperFormatsCache;
    if (s_supportedJasperFormatsCache)
    {
      s_supportedJasperFormatsCache = MEMORY[0x1E695E0F0];
    }
  }
}

- (void)setJasperFrameRate:(int64_t)rate
{
  if (self->_jasperFrameRate != rate)
  {
    self->_jasperFrameRate = rate;
    s_customJasperFrameRate = rate;
    v3 = s_supportedJasperFormatsCache;
    if (s_supportedJasperFormatsCache)
    {
      s_supportedJasperFormatsCache = MEMORY[0x1E695E0F0];
    }
  }
}

- (void)setDepthSensorNumberOfPointsMode:(int64_t)mode
{
  if (self->_depthSensorNumberOfPointsMode != mode || s_customNumberOfPointsMode != mode)
  {
    self->_depthSensorNumberOfPointsMode = mode;
    s_customNumberOfPointsMode = mode;
    v4 = s_supportedJasperFormatsCache;
    if (s_supportedJasperFormatsCache)
    {
      s_supportedJasperFormatsCache = MEMORY[0x1E695E0F0];
    }
  }
}

+ (AVCaptureDevice)configurableCaptureDeviceForPrimaryCamera
{
  v2 = NSSelectorFromString(&cfstr_Supportedvideo.isa);
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v3 = [objc_opt_class() performSelector:v2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [v3 firstObject];

      if (firstObject)
      {
        firstObject = [MEMORY[0x1E69870A0] defaultDeviceWithDeviceType:*MEMORY[0x1E6986950] mediaType:*MEMORY[0x1E6987608] position:1];
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (void)setShouldProvideX420VideoFormat:(BOOL)format
{
  if (s_provideX420VideoFormat != format)
  {
    s_provideX420VideoFormat = format;
  }
}

+ (void)setShouldProvideNonBinnedVideoFormats:(BOOL)formats
{
  if (s_provideNonBinnedVideoFormats != formats)
  {
    s_provideNonBinnedVideoFormats = formats;
  }
}

+ (BOOL)shouldProvideNonBinnedVideoFormats
{
  if (ARLinkedOnOrAfterLuck() & 1) != 0 || (s_provideNonBinnedVideoFormats & 1) != 0 || (ARDeviceSupportsUltraWideCamera())
  {
    return 1;
  }

  return ARDeviceSupportsJasper();
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v38.receiver = self;
  v38.super_class = ARConfiguration;
  if (![(ARConfiguration *)&v38 isEqual:equalCopy])
  {
    if (![equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = 0;
      goto LABEL_38;
    }

    v8 = equalCopy;
    customSensors = [(ARConfiguration *)self customSensors];
    customSensors2 = [v8 customSensors];
    v11 = customSensors2;
    if (customSensors == customSensors2)
    {
    }

    else
    {
      customSensors3 = [(ARConfiguration *)self customSensors];
      customSensors4 = [v8 customSensors];
      v12 = [customSensors3 isEqualToArray:customSensors4];

      if (!v12)
      {
        v7 = 0;
LABEL_37:

        goto LABEL_38;
      }
    }

    videoFormat = [(ARConfiguration *)self videoFormat];
    videoFormat2 = [v8 videoFormat];
    if (videoFormat != videoFormat2)
    {
      customSensors3 = [(ARConfiguration *)self videoFormat];
      customSensors4 = [v8 videoFormat];
      if (![customSensors3 isEqual:customSensors4])
      {
        LOBYTE(v15) = 0;
        goto LABEL_35;
      }
    }

    isAutoFocusEnabled = [(ARConfiguration *)self isAutoFocusEnabled];
    if (isAutoFocusEnabled == [v8 isAutoFocusEnabled])
    {
      worldAlignment = [(ARConfiguration *)self worldAlignment];
      if (worldAlignment == [v8 worldAlignment])
      {
        lightEstimation = [(ARConfiguration *)self lightEstimation];
        if (lightEstimation == [v8 lightEstimation])
        {
          providesAudioData = [(ARConfiguration *)self providesAudioData];
          if (providesAudioData == [v8 providesAudioData])
          {
            frameDebugOptions = [(ARConfiguration *)self frameDebugOptions];
            if (frameDebugOptions == [v8 frameDebugOptions])
            {
              cameraPosition = [(ARConfiguration *)self cameraPosition];
              if (cameraPosition == [v8 cameraPosition])
              {
                isPersonMetadataEnabled = [(ARConfiguration *)self isPersonMetadataEnabled];
                if (isPersonMetadataEnabled == [v8 isPersonMetadataEnabled])
                {
                  allowCameraInMultipleForegroundAppLayout = [(ARConfiguration *)self allowCameraInMultipleForegroundAppLayout];
                  if (allowCameraInMultipleForegroundAppLayout == [v8 allowCameraInMultipleForegroundAppLayout])
                  {
                    disableOcclusionForPersonSegmentation = [(ARConfiguration *)self disableOcclusionForPersonSegmentation];
                    if (disableOcclusionForPersonSegmentation == [v8 disableOcclusionForPersonSegmentation])
                    {
                      disableMLRelocalization = [(ARConfiguration *)self disableMLRelocalization];
                      if (disableMLRelocalization == [v8 disableMLRelocalization])
                      {
                        disableRenderSyncScheduling = [(ARConfiguration *)self disableRenderSyncScheduling];
                        if (disableRenderSyncScheduling == [v8 disableRenderSyncScheduling])
                        {
                          dropInitialFramesOutsideExposureTarget = [(ARConfiguration *)self dropInitialFramesOutsideExposureTarget];
                          if (dropInitialFramesOutsideExposureTarget == [v8 dropInitialFramesOutsideExposureTarget])
                          {
                            frameSemantics = [(ARConfiguration *)self frameSemantics];
                            if (frameSemantics == [v8 frameSemantics])
                            {
                              timeOfFlightProjectorMode = [(ARConfiguration *)self timeOfFlightProjectorMode];
                              timeOfFlightProjectorMode2 = [v8 timeOfFlightProjectorMode];
                              if (timeOfFlightProjectorMode == timeOfFlightProjectorMode2)
                              {
                                depthSensorNumberOfPointsMode = [(ARConfiguration *)self depthSensorNumberOfPointsMode];
                                if (depthSensorNumberOfPointsMode == [v8 depthSensorNumberOfPointsMode])
                                {
                                  smartPersonOcclusionEnabled = [(ARConfiguration *)self smartPersonOcclusionEnabled];
                                  if (smartPersonOcclusionEnabled == [v8 smartPersonOcclusionEnabled])
                                  {
                                    jasperFrameRate = [(ARConfiguration *)self jasperFrameRate];
                                    if (jasperFrameRate == [v8 jasperFrameRate])
                                    {
                                      videoHDRAllowed = [(ARConfiguration *)self videoHDRAllowed];
                                      if (videoHDRAllowed == [v8 videoHDRAllowed])
                                      {
                                        maxUltrawideImageForwardingFrameRate = [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate];
                                        if (maxUltrawideImageForwardingFrameRate == [v8 maxUltrawideImageForwardingFrameRate])
                                        {
                                          focusPixelBlurScoreDeliveryEnabled = [(ARConfiguration *)self focusPixelBlurScoreDeliveryEnabled];
                                          v15 = focusPixelBlurScoreDeliveryEnabled ^ [v8 focusPixelBlurScoreDeliveryEnabled] ^ 1;

                                          v7 = v15;
                                          goto LABEL_34;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    LOBYTE(v15) = 0;
    v7 = 0;
LABEL_34:
    if (videoFormat == videoFormat2)
    {
LABEL_36:

      goto LABEL_37;
    }

LABEL_35:

    v7 = v15;
    goto LABEL_36;
  }

  v7 = 1;
LABEL_38:

  return v7;
}

- (id)descriptionWithoutBrackets
{
  v3 = objc_opt_new();
  v4 = v3;
  worldAlignment = self->_worldAlignment;
  if (worldAlignment > 2)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E817D018[worldAlignment];
  }

  [v3 appendFormat:@" worldAlignment=%@", v6];
  lightEstimation = [(ARConfiguration *)self lightEstimation];
  v8 = @"Enabled";
  if (!lightEstimation)
  {
    v8 = @"Disabled";
  }

  [v4 appendFormat:@" lightEstimation=%@", v8];
  v9 = NSStringFromARFrameSemantics([(ARConfiguration *)self frameSemantics]);
  [v4 appendFormat:@" frameSemantics=%@", v9];

  videoFormat = [(ARConfiguration *)self videoFormat];
  [v4 appendFormat:@" videoFormat=%@", videoFormat];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  descriptionWithoutBrackets = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:descriptionWithoutBrackets];

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isKindOfConfiguration:(Class)configuration
{
  v3 = [(ARConfiguration *)self getAsKindOfConfiguration:configuration];
  v4 = v3 != 0;

  return v4;
}

- (id)getAsKindOfConfiguration:(Class)configuration
{
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    templateConfiguration = [(ARConfiguration *)selfCopy2 templateConfiguration];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      selfCopy = [(ARConfiguration *)selfCopy2 templateConfiguration];

      goto LABEL_8;
    }
  }

  selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initPrivate"}];
  objc_storeStrong((v5 + 16), self->_videoFormat);
  *(v5 + 35) = [(ARConfiguration *)self isAutoFocusEnabled];
  *(v5 + 48) = self->_worldAlignment;
  *(v5 + 72) = self->_lightEstimation;
  *(v5 + 32) = self->_providesAudioData;
  v6 = [(NSArray *)self->_customSensors copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  *(v5 + 80) = self->_frameDebugOptions;
  *(v5 + 37) = self->_personMetadataEnabled;
  *(v5 + 8) = self->_cameraPosition;
  *(v5 + 38) = self->_allowCameraInMultipleForegroundAppLayout;
  *(v5 + 39) = self->_disableOcclusionForPersonSegmentation;
  *(v5 + 40) = self->_disableMLRelocalization;
  *(v5 + 41) = self->_disableRenderSyncScheduling;
  *(v5 + 42) = self->_dropInitialFramesOutsideExposureTarget;
  *(v5 + 56) = self->_frameSemantics;
  objc_storeStrong((v5 + 88), self->_timeOfFlightProjectorMode);
  *(v5 + 96) = self->_depthSensorNumberOfPointsMode;
  *(v5 + 34) = self->_smartPersonOcclusionEnabled;
  *(v5 + 24) = self->_jasperFrameRate;
  *(v5 + 33) = self->_videoHDRAllowed;
  *(v5 + 104) = self->_maxUltrawideImageForwardingFrameRate;
  *(v5 + 36) = self->_focusPixelBlurScoreDeliveryEnabled;
  return v5;
}

@end