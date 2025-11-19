@interface ARPositionalTrackingConfiguration
+ (id)_querySupportedVideoFormats;
+ (id)supportedVideoFormats;
- (ARPositionalTrackingConfiguration)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)imageSensorSettings;
- (id)worldTrackingOptions;
- (void)createTechniques:(id)a3;
@end

@implementation ARPositionalTrackingConfiguration

- (ARPositionalTrackingConfiguration)init
{
  v5.receiver = self;
  v5.super_class = ARPositionalTrackingConfiguration;
  v2 = [(ARConfiguration *)&v5 initPrivate];
  v3 = v2;
  if (v2)
  {
    [(ARConfiguration *)v2 setLightEstimationEnabled:0];
    [(ARConfiguration *)v3 setAutoFocusEnabled:1];
    v3->_relocalizationEnabled = 1;
  }

  return v3;
}

+ (id)supportedVideoFormats
{
  if ([a1 isSupported])
  {
    if (supportedVideoFormats_supportedFormats_0 && ![supportedVideoFormats_supportedFormats_0 count])
    {
      v3 = [a1 _querySupportedVideoFormats];
      v4 = supportedVideoFormats_supportedFormats_0;
      supportedVideoFormats_supportedFormats_0 = v3;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__ARPositionalTrackingConfiguration_supportedVideoFormats__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (supportedVideoFormats_onceToken_1 != -1)
    {
      dispatch_once(&supportedVideoFormats_onceToken_1, block);
    }

    v5 = supportedVideoFormats_supportedFormats_0;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __58__ARPositionalTrackingConfiguration_supportedVideoFormats__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormats];
  v2 = supportedVideoFormats_supportedFormats_0;
  supportedVideoFormats_supportedFormats_0 = v1;
}

+ (id)_querySupportedVideoFormats
{
  v48[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6986950];
  if (ARDeviceSupportsUltraWideCamera())
  {
    v4 = *MEMORY[0x1E6986948];

    v3 = v4;
  }

  v40 = 0x1E000000280;
  v5 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.wide.videoBinned"];
  if ([ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.wide.resolution" resultingDimensions:&v40])
  {
    v6 = _ARLogSensor_8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544130;
      v44 = v8;
      v45 = 2048;
      v46 = a1;
      v47 = 1024;
      LODWORD(v48[0]) = v40;
      WORD2(v48[0]) = 1024;
      *(v48 + 6) = HIDWORD(v40);
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat resolution set to %i, %i by user defaults", buf, 0x22u);
    }
  }

  v9 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.ultrawide.frameRate"];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = v11;
    v13 = _ARLogSensor_8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543874;
      v44 = v15;
      v45 = 2048;
      v46 = a1;
      v47 = 2048;
      *v48 = v12;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARPositionalTrackingConfiguration frame rate set to %f by user defaults", buf, 0x20u);
    }
  }

  else
  {
    v12 = 10.0;
  }

  v16 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:v40 frameRate:v5 videoBinned:v12];
  v17 = v16;
  if (v16)
  {
    [v16 imageResolution];
    if ([ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?])
    {
      v42 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v19 = v17;
      goto LABEL_35;
    }

    v20 = _ARLogGeneral_14();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543874;
      v44 = v22;
      v45 = 2048;
      v46 = a1;
      v47 = 2114;
      v48[0] = v17;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Not returning video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);
    }
  }

  v40 = 0x2D000000500;
  v19 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:0x2D000000500 frameRate:v5 videoBinned:10.0];

  if (!v19)
  {
LABEL_26:
    if (ARShouldUseLogTypeError_onceToken_26 != -1)
    {
      +[ARPositionalTrackingConfiguration _querySupportedVideoFormats];
    }

    v30 = ARShouldUseLogTypeError_internalOSVersion_26;
    v31 = _ARLogGeneral_14();
    v32 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138543618;
        v44 = v34;
        v45 = 2048;
        v46 = a1;
        v35 = "%{public}@ <%p>: Video format not found for positional tracking configuration";
        v36 = v32;
        v37 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v36, v37, v35, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v38 = objc_opt_class();
      v34 = NSStringFromClass(v38);
      *buf = 138543618;
      v44 = v34;
      v45 = 2048;
      v46 = a1;
      v35 = "Error: %{public}@ <%p>: Video format not found for positional tracking configuration";
      v36 = v32;
      v37 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_35;
  }

  [v19 imageResolution];
  v23 = [ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?];
  v24 = _ARLogGeneral_14();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
  if (!v23)
  {
    if (v25)
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543874;
      v44 = v29;
      v45 = 2048;
      v46 = a1;
      v47 = 2114;
      v48[0] = v19;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Not returning video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);
    }

    goto LABEL_26;
  }

  if (v25)
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    *buf = 138543618;
    v44 = v27;
    v45 = 2048;
    v46 = a1;
    _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Falling back to 1280x720 for positional tracking configuration", buf, 0x16u);
  }

  v41 = v19;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
LABEL_35:

  return v18;
}

- (id)imageSensorSettings
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = ARPositionalTrackingConfiguration;
  v3 = [(ARConfiguration *)&v17 imageSensorSettings];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.visionData"])
  {
    v4 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [v3 setVisionDataOutputEnabled:v4];
  if ([v3 visionDataOutputEnabled])
  {
    v5 = [(ARPositionalTrackingConfiguration *)self worldTrackingOptions];
    [v5 setImageSensorSettings:v3];
    v6 = ARVisionDataParametersForWorldTrackingOptions(v5);
    if (v6)
    {
      [v3 setVisionDataOutputParameters:v6];
LABEL_16:

      goto LABEL_17;
    }

    if (ARShouldUseLogTypeError_onceToken_26 != -1)
    {
      +[ARPositionalTrackingConfiguration _querySupportedVideoFormats];
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_26;
    v8 = _ARLogGeneral_14();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v19 = v11;
        v20 = 2048;
        v21 = self;
        v12 = "%{public}@ <%p>: Error reading vision data output parameters.";
        v13 = v9;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      *buf = 138543618;
      v19 = v11;
      v20 = 2048;
      v21 = self;
      v12 = "Error: %{public}@ <%p>: Error reading vision data output parameters.";
      v13 = v9;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_17:

  return v3;
}

- (id)worldTrackingOptions
{
  v3 = objc_opt_new();
  v4 = [(ARConfiguration *)self deviceModel];
  [v3 setDeviceModel:v4];

  [v3 setRelocalizationEnabled:{-[ARPositionalTrackingConfiguration isRelocalizationEnabled](self, "isRelocalizationEnabled")}];
  [v3 setPlaneDetection:{-[ARPositionalTrackingConfiguration planeDetection](self, "planeDetection")}];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.mlOnANEDevices"])
  {
    v5 = ARAppleNeuralEngine();
  }

  else
  {
    v5 = 0;
  }

  [v3 setMlModelEnabled:v5];
  v6 = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
  [v3 setInitialWorldMap:v6];

  v7 = [(ARConfiguration *)self replaySensor];
  v8 = v7;
  if (v7 && [v7 replayMode])
  {
    [v3 setDeterministicMode:1];
  }

  if (self->_vioFusionEnabled)
  {
    [v3 setSlamConfiguration:@"CoreLocationIntegration"];
  }

  [v3 setPlaneEstimationShouldUseJasperData:0];

  return v3;
}

- (void)createTechniques:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ARPositionalTrackingConfiguration *)self worldTrackingOptions];
  v6 = [(ARPositionalTrackingConfiguration *)self imageSensorSettings];
  [v5 setImageSensorSettings:v6];

  if ([v5 planeDetection])
  {
    v7 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.accuratePlaneExtentCheck"];
    v8 = _ARLogGeneral_14();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = @"disabled";
      *buf = 138543874;
      v22 = v10;
      if (v7)
      {
        v11 = @"enabled";
      }

      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Ray-cast accurate extent check: %{public}@", buf, 0x20u);
    }

    if (v7)
    {
      [v5 setPlaneDetection:{objc_msgSend(v5, "planeDetection") | 0x200}];
    }
  }

  v12 = [[ARWorldTrackingTechnique alloc] initWithOptions:v5];
  if (v12)
  {
    v13 = [ARParentTechnique alloc];
    v20 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v15 = [(ARParentTechnique *)v13 initWithParallelTechniques:v14];

    [v4 addObject:v15];
    v16 = [(ARWorldTrackingTechnique *)v12 options];
    v17 = [v16 planeDetection];

    if (v17)
    {
      v18 = [[ARPlaneEstimationTechnique alloc] initWithTrackingTechnique:v12];
      [v4 addObject:v18];
    }

    v19.receiver = self;
    v19.super_class = ARPositionalTrackingConfiguration;
    [(ARConfiguration *)&v19 createTechniques:v4];
    if ([(ARPositionalTrackingConfiguration *)self planeDetection])
    {
      ARAddNonJasperSemanticsToParent(v15, v4, [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate], 0);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ARPositionalTrackingConfiguration;
  if ([(ARConfiguration *)&v12 isEqual:v4])
  {
    v5 = v4;
    if (self->_planeDetection == *(v5 + 15))
    {
      v6 = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
      v7 = [v5 initialWorldMap];
      if (v6 == v7)
      {
        v10 = self->_relocalizationEnabled == v5[112] && self->_vioFusionEnabled == v5[113];
      }

      else
      {
        v8 = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
        v9 = [v5 initialWorldMap];
        v10 = ([v8 isEqual:v9] & 1) != 0 && self->_relocalizationEnabled == v5[112] && self->_vioFusionEnabled == v5[113];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = ARPositionalTrackingConfiguration;
  v4 = [(ARConfiguration *)&v7 copyWithZone:a3];
  v4[15] = self->_planeDetection;
  v5 = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
  [v4 setInitialWorldMap:v5];

  *(v4 + 112) = self->_relocalizationEnabled;
  *(v4 + 113) = self->_vioFusionEnabled;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(ARConfiguration *)self isAutoFocusEnabled];
  v8 = @"Disabled";
  if (v7)
  {
    v8 = @"Enabled";
  }

  [v6 appendFormat:@" autoFocus=%@", v8];
  v9 = NSStringFromARPlaneDetection(self->_planeDetection);
  [v6 appendFormat:@" planeDetection=%@", v9];

  v10 = [(ARPositionalTrackingConfiguration *)self initialWorldMap];

  if (v10)
  {
    v11 = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
    [v6 appendFormat:@" initialWorldMap=%@", v11];
  }

  v12 = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:v12];

  [v6 appendString:@">"];

  return v6;
}

@end