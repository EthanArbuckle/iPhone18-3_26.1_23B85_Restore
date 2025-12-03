@interface ARFaceTrackingConfiguration
+ (BOOL)isSupported;
+ (BOOL)supportsFrameSemantics:(unint64_t)semantics;
+ (BOOL)supportsWorldTracking;
+ (id)_querySupportedVideoFormats;
+ (id)_querySupportedVideoFormatsForWorldTracking;
+ (id)fallbackVideoFormat;
+ (id)supportedVideoFormats;
+ (id)supportedVideoFormatsForWorldTracking;
+ (void)setShouldProvideRGBVideoFormats:(BOOL)formats;
- (ARFaceTrackingConfiguration)init;
- (BOOL)_selectedVideoFormatSupportsMulticam;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageSensorSettings;
- (id)imageSensorSettingsForLowPower;
- (id)imageSensorSettingsForWorldTracking;
- (id)parentImageSensorSettings;
- (id)secondaryTechniques;
- (void)createTechniques:(id)techniques;
- (void)setCameraPosition:(int64_t)position;
- (void)setLightEstimationEnabled:(BOOL)enabled;
- (void)setMaximumNumberOfTrackedFaces:(NSInteger)maximumNumberOfTrackedFaces;
@end

@implementation ARFaceTrackingConfiguration

+ (BOOL)supportsWorldTracking
{
  v2 = ARDeviceSupportsMulticamMode();
  if (v2)
  {

    LOBYTE(v2) = ARUserDefaultsMulticamModeEnabled();
  }

  return v2;
}

+ (BOOL)supportsFrameSemantics:(unint64_t)semantics
{
  if (semantics <= 1 && (ARAppleNeuralEngine() & 1) != 0)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___ARFaceTrackingConfiguration;
  return objc_msgSendSuper2(&v6, sel_supportsFrameSemantics_, semantics);
}

+ (void)setShouldProvideRGBVideoFormats:(BOOL)formats
{
  if (s_shouldProvideRGBVideoFormats != formats)
  {
    s_shouldProvideRGBVideoFormats = formats;
    v3 = s_supportedFormatsCache;
    if (s_supportedFormatsCache)
    {
      s_supportedFormatsCache = MEMORY[0x1E695E0F0];
    }
  }
}

- (ARFaceTrackingConfiguration)init
{
  v5.receiver = self;
  v5.super_class = ARFaceTrackingConfiguration;
  initPrivate = [(ARConfiguration *)&v5 initPrivate];
  v3 = initPrivate;
  if (initPrivate)
  {
    [(ARFaceTrackingConfiguration *)initPrivate setLightEstimationEnabled:1];
    [(ARFaceTrackingConfiguration *)v3 setWorldTrackingEnabled:0];
    [(ARFaceTrackingConfiguration *)v3 setMaximumNumberOfTrackedFaces:1];
    [(ARFaceTrackingConfiguration *)v3 setLowPower:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.faceTracking.lowPowerMode.enabled"]];
  }

  return v3;
}

- (void)setLightEstimationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(ARConfiguration *)self setLightEstimation:v3];
}

- (void)setCameraPosition:(int64_t)position
{
  v19 = *MEMORY[0x1E69E9840];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.faceTracking.backCamera.allowed"])
  {
    if (position && (-[ARConfiguration videoFormat](self, "videoFormat"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 captureDevicePosition], v5, v6 != position))
    {
      v14.receiver = self;
      v14.super_class = ARFaceTrackingConfiguration;
      [(ARConfiguration *)&v14 setCameraPosition:position];
    }

    else
    {
      supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49__ARFaceTrackingConfiguration_setCameraPosition___block_invoke;
      v13[3] = &__block_descriptor_40_e30_B32__0__ARVideoFormat_8Q16_B24l;
      v13[4] = position;
      v8 = [supportedVideoFormats ar_firstObjectPassingTest:v13];
      videoFormat = self->super._videoFormat;
      self->super._videoFormat = v8;

      self->super._cameraPosition = position;
    }
  }

  else
  {
    v10 = _ARLogGeneral_12();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: setCameraPosition failed: The camera position for face tracking cannot be changed.", buf, 0x16u);
    }
  }
}

+ (BOOL)isSupported
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___ARFaceTrackingConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_isSupported);
  if (v2)
  {
    LOBYTE(v2) = +[ARFaceTrackingTechnique isSupported];
  }

  return v2;
}

+ (id)supportedVideoFormats
{
  if (s_supportedFormatsCache && ![s_supportedFormatsCache count])
  {
    _querySupportedVideoFormats = [self _querySupportedVideoFormats];
    v4 = s_supportedFormatsCache;
    s_supportedFormatsCache = _querySupportedVideoFormats;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__ARFaceTrackingConfiguration_supportedVideoFormats__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedVideoFormats_onceToken != -1)
  {
    dispatch_once(&supportedVideoFormats_onceToken, block);
  }

  v5 = s_supportedFormatsCache;

  return v5;
}

void __52__ARFaceTrackingConfiguration_supportedVideoFormats__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormats];
  v2 = s_supportedFormatsCache;
  s_supportedFormatsCache = v1;
}

+ (id)fallbackVideoFormat
{
  v3 = ARFaceTrackingDevice();
  v4 = [self fallbackVideoFormatWithCaptureDeviceType:v3];

  return v4;
}

+ (id)_querySupportedVideoFormats
{
  v79[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.faceTracking.backCamera.allowed"])
  {
    v4 = [ARVideoFormat supportedVideoFormatsForDevicePosition:1 deviceType:*MEMORY[0x1E6986950]];
    [v3 addObjectsFromArray:v4];
  }

  v5 = ARFaceTrackingDevice();
  v6 = [ARVideoFormat supportedVideoFormatsForDevicePosition:2 deviceType:v5];
  [v3 addObjectsFromArray:v6];

  if (ARRGBFaceTrackingEnabled() && ![v3 count])
  {
    fallbackVideoFormat = [self fallbackVideoFormat];
    if (fallbackVideoFormat)
    {
      [v3 addObject:fallbackVideoFormat];
    }
  }

  if ([self shouldProvideRGBVideoFormats])
  {
    v73 = xmmword_1C25C84C0;
    v8 = [MEMORY[0x1E696B098] valueWithBytes:&v73 objCType:"{CGSize=dd}"];
    v79[0] = v8;
    v72 = xmmword_1C25C8E90;
    v9 = [MEMORY[0x1E696B098] valueWithBytes:&v72 objCType:"{CGSize=dd}"];
    v79[1] = v9;
    v71 = xmmword_1C25C8EA0;
    v10 = [MEMORY[0x1E696B098] valueWithBytes:&v71 objCType:"{CGSize=dd}"];
    v79[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v11;
    v46 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
    if (v46)
    {
      v44 = *v68;
      v12 = *MEMORY[0x1E6986950];
      do
      {
        v13 = 0;
        do
        {
          if (*v68 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v13;
          v14 = *(*(&v67 + 1) + 8 * v13);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v15 = [&unk_1F4258EF0 countByEnumeratingWithState:&v63 objects:v77 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v64;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v64 != v17)
                {
                  objc_enumerationMutation(&unk_1F4258EF0);
                }

                v19 = *(*(&v63 + 1) + 8 * i);
                v61 = 0.0;
                v62 = 0.0;
                [v14 getValue:&v61 size:16];
                v20 = v61;
                v21 = v62;
                [v19 floatValue];
                LODWORD(v41) = 875704422;
                v23 = [ARVideoFormat bestVideoFormatForDevicePosition:2 deviceType:v12 resolution:v20 | (v21 << 32) frameRate:1 videoBinned:0 needsHDRSupport:0 needsMultiCamSupport:v22 pixelFormat:v41];
                if (v23)
                {
                  [v3 addObject:v23];
                }
              }

              v16 = [&unk_1F4258EF0 countByEnumeratingWithState:&v63 objects:v77 count:16];
            }

            while (v16);
          }

          v13 = v48 + 1;
        }

        while (v48 + 1 != v46);
        v46 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
      }

      while (v46);
    }

    v60 = vdupq_n_s64(0x409E000000000000uLL);
    v24 = [MEMORY[0x1E696B098] valueWithBytes:&v60 objCType:"{CGSize=dd}"];
    v76[0] = v24;
    v59 = xmmword_1C25C84C0;
    v25 = [MEMORY[0x1E696B098] valueWithBytes:&v59 objCType:"{CGSize=dd}"];
    v76[1] = v25;
    v58 = vdupq_n_s64(0x4094000000000000uLL);
    v26 = [MEMORY[0x1E696B098] valueWithBytes:&v58 objCType:"{CGSize=dd}"];
    v76[2] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = v27;
    v47 = [v42 countByEnumeratingWithState:&v54 objects:v75 count:16];
    if (v47)
    {
      v45 = *v55;
      v28 = *MEMORY[0x1E6986948];
      do
      {
        v29 = 0;
        do
        {
          if (*v55 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v49 = v29;
          v30 = *(*(&v54 + 1) + 8 * v29);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v31 = [&unk_1F4258EF0 countByEnumeratingWithState:&v50 objects:v74 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v51;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v51 != v33)
                {
                  objc_enumerationMutation(&unk_1F4258EF0);
                }

                v35 = *(*(&v50 + 1) + 8 * j);
                v61 = 0.0;
                v62 = 0.0;
                [v30 getValue:&v61 size:16];
                v36 = v61;
                v37 = v62;
                [v35 floatValue];
                LODWORD(v41) = 875704422;
                v39 = [ARVideoFormat bestVideoFormatForDevicePosition:2 deviceType:v28 resolution:v36 | (v37 << 32) frameRate:1 videoBinned:0 needsHDRSupport:0 needsMultiCamSupport:v38 pixelFormat:v41];
                if (v39)
                {
                  [v3 addObject:v39];
                }
              }

              v32 = [&unk_1F4258EF0 countByEnumeratingWithState:&v50 objects:v74 count:16];
            }

            while (v32);
          }

          v29 = v49 + 1;
        }

        while (v49 + 1 != v47);
        v47 = [v42 countByEnumeratingWithState:&v54 objects:v75 count:16];
      }

      while (v47);
    }
  }

  return v3;
}

+ (id)supportedVideoFormatsForWorldTracking
{
  if ([objc_opt_class() supportsWorldTracking] && +[ARWorldTrackingConfiguration isSupported](ARWorldTrackingConfiguration, "isSupported"))
  {
    if (supportedVideoFormatsForWorldTracking_supportedFormats && ![supportedVideoFormatsForWorldTracking_supportedFormats count])
    {
      _querySupportedVideoFormatsForWorldTracking = [self _querySupportedVideoFormatsForWorldTracking];
      v4 = supportedVideoFormatsForWorldTracking_supportedFormats;
      supportedVideoFormatsForWorldTracking_supportedFormats = _querySupportedVideoFormatsForWorldTracking;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ARFaceTrackingConfiguration_supportedVideoFormatsForWorldTracking__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (supportedVideoFormatsForWorldTracking_onceToken != -1)
    {
      dispatch_once(&supportedVideoFormatsForWorldTracking_onceToken, block);
    }

    v5 = supportedVideoFormatsForWorldTracking_supportedFormats;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __68__ARFaceTrackingConfiguration_supportedVideoFormatsForWorldTracking__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormatsForWorldTracking];
  v2 = supportedVideoFormatsForWorldTracking_supportedFormats;
  supportedVideoFormatsForWorldTracking_supportedFormats = v1;
}

+ (id)_querySupportedVideoFormatsForWorldTracking
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6986950];
  if (ARDeviceSupportsUltraWideCamera())
  {
    v4 = *MEMORY[0x1E6986948];

    v3 = v4;
  }

  v5 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:0x1E000000280 frameRates:&unk_1F4258F08 videoBinned:1];
  v6 = v5;
  if (v5)
  {
    [v5 imageResolution];
    if ([ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?])
    {
      v7 = v6;
LABEL_11:
      v19 = v6;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
      goto LABEL_18;
    }
  }

  v8 = _ARLogGeneral_12();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543874;
    v21 = v10;
    v22 = 2048;
    selfCopy3 = self;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: The resolution of video format %@ is not supported by the world tracking technique on current device, trying a fallback video format", buf, 0x20u);
  }

  v7 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:0x2D000000500 frameRates:&unk_1F4258F20 videoBinned:1];

  if (v7)
  {
    [v7 imageResolution];
    if ([ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?])
    {
      v6 = v7;
      goto LABEL_11;
    }

    v12 = _ARLogGeneral_12();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543874;
      v21 = v14;
      v22 = 2048;
      selfCopy3 = self;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: The resolution of video format %{public}@ is not supported by the world tracking technique on current device", buf, 0x20u);
    }
  }

  v15 = _ARLogGeneral_12();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v21 = v17;
    v22 = 2048;
    selfCopy3 = self;
    _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not find supported video format for running world tracking in multicam mode.", buf, 0x16u);
  }

  v11 = MEMORY[0x1E695E0F0];
LABEL_18:

  return v11;
}

- (void)createTechniques:(id)techniques
{
  v11[1] = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  if ([(ARFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces]< 1)
  {
    goto LABEL_4;
  }

  v5 = [[ARFaceTrackingTechnique alloc] initWithMaximumNumberOfTrackedFaces:[(ARFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces]];
  if (v5)
  {
    v6 = v5;
    v7 = [ARParentTechnique alloc];
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(ARParentTechnique *)v7 initWithParallelTechniques:v8];

    [techniquesCopy addObject:v9];
LABEL_4:
    v10.receiver = self;
    v10.super_class = ARFaceTrackingConfiguration;
    [(ARConfiguration *)&v10 createTechniques:techniquesCopy];
  }
}

- (id)secondaryTechniques
{
  v14[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if ([objc_opt_class() supportsWorldTracking] && -[ARFaceTrackingConfiguration _selectedVideoFormatSupportsMulticam](self, "_selectedVideoFormatSupportsMulticam") && -[ARFaceTrackingConfiguration isWorldTrackingEnabled](self, "isWorldTrackingEnabled"))
  {
    imageSensorSettingsForWorldTracking = [(ARFaceTrackingConfiguration *)self imageSensorSettingsForWorldTracking];
    v5 = [[ARWorldTrackingOptions alloc] initWithImageSensorSettings:imageSensorSettingsForWorldTracking];
    [(ARWorldTrackingOptions *)v5 setPlaneEstimationShouldUseJasperData:0];
    replaySensor = [(ARConfiguration *)self replaySensor];
    v7 = replaySensor;
    if (replaySensor && [replaySensor replayMode])
    {
      [(ARWorldTrackingOptions *)v5 setDeterministicMode:1];
    }

    v8 = [[ARWorldTrackingTechnique alloc] initWithOptions:v5];
    if (v8)
    {
      v9 = [ARParentTechnique alloc];
      v14[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v11 = [(ARParentTechnique *)v9 initWithParallelTechniques:v10];
      [array addObject:v11];
    }

    v12 = [[ARWorldAlignmentTechnique alloc] initWithAlignment:[(ARConfiguration *)self worldAlignment] cameraPosition:1];
    [array addObject:v12];
  }

  return array;
}

- (id)parentImageSensorSettings
{
  v21.receiver = self;
  v21.super_class = ARFaceTrackingConfiguration;
  parentImageSensorSettings = [(ARConfiguration *)&v21 parentImageSensorSettings];
  settings = [parentImageSensorSettings settings];
  v5 = [settings mutableCopy];

  if ([objc_opt_class() supportsWorldTracking] && -[ARFaceTrackingConfiguration _selectedVideoFormatSupportsMulticam](self, "_selectedVideoFormatSupportsMulticam"))
  {
    imageSensorSettingsForWorldTracking = [(ARFaceTrackingConfiguration *)self imageSensorSettingsForWorldTracking];
    videoFormat = [imageSensorSettingsForWorldTracking videoFormat];
    if (videoFormat)
    {
      v8 = videoFormat;
      videoFormat2 = [(ARConfiguration *)self videoFormat];
      if (videoFormat2)
      {
        v10 = videoFormat2;
        videoFormat3 = [imageSensorSettingsForWorldTracking videoFormat];
        captureDevicePosition = [videoFormat3 captureDevicePosition];
        videoFormat4 = [(ARConfiguration *)self videoFormat];
        if (captureDevicePosition == [videoFormat4 captureDevicePosition])
        {
          videoFormat5 = [imageSensorSettingsForWorldTracking videoFormat];
          [videoFormat5 captureDeviceType];
          v14 = v18 = videoFormat3;
          videoFormat6 = [(ARConfiguration *)self videoFormat];
          captureDeviceType = [videoFormat6 captureDeviceType];
          v19 = [v14 isEqualToString:captureDeviceType];

          if (v19)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        [imageSensorSettingsForWorldTracking setEnabled:{-[ARFaceTrackingConfiguration isWorldTrackingEnabled](self, "isWorldTrackingEnabled")}];
        [v5 addObject:imageSensorSettingsForWorldTracking];
      }

      else
      {
      }
    }

LABEL_11:
  }

  [parentImageSensorSettings setSettings:v5];

  return parentImageSensorSettings;
}

- (id)imageSensorSettingsForLowPower
{
  v22 = *MEMORY[0x1E69E9840];
  [(ARVideoFormat *)self->super._videoFormat imageResolution];
  v4 = v3;
  [(ARVideoFormat *)self->super._videoFormat imageResolution];
  v6 = v5;
  captureDevicePosition = [(ARVideoFormat *)self->super._videoFormat captureDevicePosition];
  v8 = [ARVideoFormat bestVideoFormatForDevicePosition:captureDevicePosition deviceType:*MEMORY[0x1E6986950] resolution:v4 | (v6 << 32) frameRate:1 videoBinned:[(ARVideoFormat *)self->super._videoFormat framesPerSecond]];
  v9 = [[ARImageSensorSettings alloc] initWithVideoFormat:v8];
  [(ARImageSensorSettings *)v9 setAutoFocusEnabled:[(ARConfiguration *)self isAutoFocusEnabled]];
  [(ARImageSensorSettings *)v9 setSupportsCapturingHighResolutionFrames:1];
  if ([(ARVideoFormat *)self->super._videoFormat captureDevicePosition]== AVCaptureDevicePositionFront)
  {
    v10 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.imagesensor.face.mirror"];
    v11 = v10;
    if (v10)
    {
      bOOLValue = [v10 BOOLValue];
      if (_ARLogSensor_onceToken_11 != -1)
      {
        [ARFaceTrackingConfiguration imageSensorSettingsForLowPower];
      }

      v13 = _ARLogSensor_logObj_11;
      if (os_log_type_enabled(_ARLogSensor_logObj_11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = "disabled";
        *v19 = 138543874;
        *&v19[4] = v16;
        if (bOOLValue)
        {
          v17 = "enabled";
        }

        *&v19[12] = 2048;
        *&v19[14] = self;
        v20 = 2080;
        v21 = v17;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Face tracking image sensor mirrored video output %s by user defaults", v19, 0x20u);
      }
    }

    else
    {
      bOOLValue = 1;
    }

    [(ARImageSensorSettings *)v9 setMirrorVideoOutput:bOOLValue, *v19];
  }

  return v9;
}

- (id)imageSensorSettings
{
  if (self->_lowPower)
  {
    imageSensorSettingsForLowPower = [(ARFaceTrackingConfiguration *)self imageSensorSettingsForLowPower];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ARFaceTrackingConfiguration;
    imageSensorSettingsForLowPower = [(ARConfiguration *)&v8 imageSensorSettings];
  }

  v4 = imageSensorSettingsForLowPower;
  maximumNumberOfTrackedFaces = [(ARFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces];
  v6 = MEMORY[0x1E6987018];
  if (maximumNumberOfTrackedFaces <= 0)
  {
    v6 = MEMORY[0x1E6986FE8];
  }

  [v4 setMetaData:*v6];
  [v4 setMaximumNumberOfTrackedFaces:{-[ARFaceTrackingConfiguration maximumNumberOfTrackedFaces](self, "maximumNumberOfTrackedFaces")}];
  [v4 setCalibrationDataOutputEnabled:0];

  return v4;
}

- (id)imageSensorSettingsForWorldTracking
{
  v23 = *MEMORY[0x1E69E9840];
  supportedVideoFormatsForWorldTracking = [objc_opt_class() supportedVideoFormatsForWorldTracking];
  firstObject = [supportedVideoFormatsForWorldTracking firstObject];

  if (!firstObject)
  {
    v5 = 0;
    goto LABEL_19;
  }

  v5 = [[ARImageSensorSettings alloc] initWithVideoFormat:firstObject];
  [(ARImageSensorSettings *)v5 setAutoFocusEnabled:[(ARConfiguration *)self isAutoFocusEnabled]];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.visionData"])
  {
    v6 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"]^ 1;
  }

  else
  {
    v6 = 0;
  }

  [(ARImageSensorSettings *)v5 setVisionDataOutputEnabled:v6];
  if (![(ARImageSensorSettings *)v5 visionDataOutputEnabled])
  {
    goto LABEL_19;
  }

  v7 = [[ARWorldTrackingOptions alloc] initWithImageSensorSettings:v5];
  [(ARWorldTrackingOptions *)v7 setImageSensorSettings:v5];
  v8 = ARVisionDataParametersForWorldTrackingOptions(v7);
  if (!v8)
  {
    if (ARShouldUseLogTypeError_onceToken_24 != -1)
    {
      [ARFaceTrackingConfiguration imageSensorSettingsForWorldTracking];
    }

    v9 = ARShouldUseLogTypeError_internalOSVersion_24;
    v10 = _ARLogGeneral_12();
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v19 = 138543618;
        v20 = v13;
        v21 = 2048;
        selfCopy2 = self;
        v14 = "%{public}@ <%p>: Error reading vision data output parameters.";
        v15 = v11;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_16:
        _os_log_impl(&dword_1C241C000, v15, v16, v14, &v19, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v13 = NSStringFromClass(v17);
      v19 = 138543618;
      v20 = v13;
      v21 = 2048;
      selfCopy2 = self;
      v14 = "Error: %{public}@ <%p>: Error reading vision data output parameters.";
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  [(ARImageSensorSettings *)v5 setVisionDataOutputParameters:v8];
LABEL_18:

LABEL_19:

  return v5;
}

- (BOOL)_selectedVideoFormatSupportsMulticam
{
  videoFormat = [(ARConfiguration *)self videoFormat];
  deviceFormat = [videoFormat deviceFormat];
  isMultiCamSupported = [deviceFormat isMultiCamSupported];

  return isMultiCamSupported;
}

- (void)setMaximumNumberOfTrackedFaces:(NSInteger)maximumNumberOfTrackedFaces
{
  if (ARLinkedOnOrAfterYukon())
  {
    v5 = +[ARFaceTrackingConfiguration supportedNumberOfTrackedFaces];
    if ((maximumNumberOfTrackedFaces & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    self->_maximumNumberOfTrackedFaces = 0;
    return;
  }

  v5 = 1;
  if (maximumNumberOfTrackedFaces < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5 >= maximumNumberOfTrackedFaces)
  {
    self->_maximumNumberOfTrackedFaces = maximumNumberOfTrackedFaces;
  }

  else
  {
    self->_maximumNumberOfTrackedFaces = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = ARFaceTrackingConfiguration;
  if ([(ARConfiguration *)&v12 isEqual:equalCopy])
  {
    v5 = equalCopy;
    isWorldTrackingEnabled = [(ARFaceTrackingConfiguration *)self isWorldTrackingEnabled];
    if (isWorldTrackingEnabled == [v5 isWorldTrackingEnabled] && (v7 = -[ARFaceTrackingConfiguration maximumNumberOfTrackedFaces](self, "maximumNumberOfTrackedFaces"), v7 == objc_msgSend(v5, "maximumNumberOfTrackedFaces")) && (v8 = -[ARFaceTrackingConfiguration lowPower](self, "lowPower"), v8 == objc_msgSend(v5, "lowPower")))
    {
      prepareForPortraitImageData = [(ARFaceTrackingConfiguration *)self prepareForPortraitImageData];
      v9 = prepareForPortraitImageData ^ [v5 prepareForPortraitImageData] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = ARFaceTrackingConfiguration;
  v4 = [(ARConfiguration *)&v6 copyWithZone:zone];
  v4[112] = [(ARFaceTrackingConfiguration *)self isWorldTrackingEnabled];
  *(v4 + 15) = [(ARFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces];
  v4[113] = [(ARFaceTrackingConfiguration *)self lowPower];
  v4[114] = [(ARFaceTrackingConfiguration *)self prepareForPortraitImageData];
  return v4;
}

@end