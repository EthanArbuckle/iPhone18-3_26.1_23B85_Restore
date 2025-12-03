@interface ARCustomTechniquesConfiguration
- (ARWorldMap)initialWorldMap;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLightEstimationEnabled;
- (NSArray)techniques;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageSensorSettings;
- (id)initPrivate;
- (int64_t)worldAlignment;
- (void)_configureRecordingTechniqueIfNeeded;
- (void)_ensureTechniqueAndCustomSensorCompatibilityIfNeeded;
- (void)_updateCaptureSettings;
- (void)configureRecordingTechnique;
- (void)ensureTechniqueAndCustomSensorCompatibility;
- (void)setCameraPosition:(int64_t)position;
- (void)setCustomSensors:(id)sensors;
- (void)setProvidesAudioData:(BOOL)data;
- (void)setTechniques:(id)techniques;
@end

@implementation ARCustomTechniquesConfiguration

- (id)initPrivate
{
  v4.receiver = self;
  v4.super_class = ARCustomTechniquesConfiguration;
  initPrivate = [(ARConfiguration *)&v4 initPrivate];
  if (initPrivate && ARShouldSupport1440pAndAutofocus())
  {
    [initPrivate setAutoFocusEnabled:1];
  }

  return initPrivate;
}

- (id)imageSensorSettings
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = ARCustomTechniquesConfiguration;
  imageSensorSettings = [(ARConfiguration *)&v18 imageSensorSettings];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_techniques;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MEMORY[0x1E6987018];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = MEMORY[0x1E6986FE8];
LABEL_12:
          [imageSensorSettings setMetaData:{*v8, v14}];
          goto LABEL_13;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  templateConfiguration = self->_templateConfiguration;
  if (templateConfiguration)
  {
    imageSensorSettings2 = [(ARConfiguration *)templateConfiguration imageSensorSettings];
    [imageSensorSettings setVisionDataOutputEnabled:{objc_msgSend(imageSensorSettings2, "visionDataOutputEnabled")}];
    visionDataOutputParameters = [imageSensorSettings2 visionDataOutputParameters];
    [imageSensorSettings setVisionDataOutputParameters:visionDataOutputParameters];

    [imageSensorSettings setCalibrationDataOutputEnabled:{objc_msgSend(imageSensorSettings2, "calibrationDataOutputEnabled")}];
  }

  return imageSensorSettings;
}

- (int64_t)worldAlignment
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateConfiguration = self->_templateConfiguration;

    return [(ARConfiguration *)templateConfiguration worldAlignment];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    techniques = [(ARCustomTechniquesConfiguration *)self techniques];
    v6 = [techniques countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(techniques);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            alignment = [v10 alignment];

            return alignment;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [techniques countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    return 2;
  }
}

- (BOOL)isLightEstimationEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(ARCustomTechniquesConfiguration *)self techniques:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v7 = 1;
        goto LABEL_13;
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v7 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (ARWorldMap)initialWorldMap
{
  v3 = objc_opt_class();
  techniques = [(ARCustomTechniquesConfiguration *)self techniques];
  v5 = [ARTechnique techniqueOfClass:v3 inArray:techniques];

  options = [v5 options];
  initialWorldMap = [options initialWorldMap];

  return initialWorldMap;
}

- (void)setCustomSensors:(id)sensors
{
  v4.receiver = self;
  v4.super_class = ARCustomTechniquesConfiguration;
  [(ARConfiguration *)&v4 setCustomSensors:sensors];
  [(ARCustomTechniquesConfiguration *)self _updateCaptureSettings];
  self->_needsEnsureTechniqueAndCustomSensorCompatibility = 1;
}

- (void)setCameraPosition:(int64_t)position
{
  v4.receiver = self;
  v4.super_class = ARCustomTechniquesConfiguration;
  [(ARConfiguration *)&v4 setCameraPosition:position];
  [(ARCustomTechniquesConfiguration *)self _updateCaptureSettings];
  self->_needsEnsureTechniqueAndCustomSensorCompatibility = 1;
}

- (void)setProvidesAudioData:(BOOL)data
{
  v4.receiver = self;
  v4.super_class = ARCustomTechniquesConfiguration;
  [(ARConfiguration *)&v4 setProvidesAudioData:data];
  self->_needsConfigureRecordingTechnique = 1;
}

- (void)setTechniques:(id)techniques
{
  v4 = [techniques copy];
  techniques = self->_techniques;
  self->_techniques = v4;

  [(ARCustomTechniquesConfiguration *)self _updateCaptureSettings];
  self->_needsEnsureTechniqueAndCustomSensorCompatibility = 1;
  self->_needsConfigureRecordingTechnique = 1;
}

- (NSArray)techniques
{
  [(ARCustomTechniquesConfiguration *)self _ensureTechniqueAndCustomSensorCompatibilityIfNeeded];
  [(ARCustomTechniquesConfiguration *)self _configureRecordingTechniqueIfNeeded];
  techniques = self->_techniques;

  return techniques;
}

- (void)_updateCaptureSettings
{
  v38 = *MEMORY[0x1E69E9840];
  customSensors = [(ARConfiguration *)self customSensors];
  if (!customSensors)
  {
    if ([(ARConfiguration *)self cameraPosition])
    {
      return;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__3;
    v26 = __Block_byref_object_dispose__3;
    v27 = *MEMORY[0x1E6986950];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    techniques = self->_techniques;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__ARCustomTechniquesConfiguration__updateCaptureSettings__block_invoke;
    v17[3] = &unk_1E817D038;
    v17[4] = &v28;
    v17[5] = &v22;
    v17[6] = &v18;
    [(NSArray *)techniques enumerateObjectsUsingBlock:v17];
    v5 = v29[3];
    if (v5 == [(ARVideoFormat *)self->super._videoFormat captureDevicePosition])
    {
      v6 = v23[5];
      captureDeviceType = [(ARVideoFormat *)self->super._videoFormat captureDeviceType];
      LOBYTE(v6) = v6 == captureDeviceType;

      if (v6)
      {
        goto LABEL_19;
      }
    }

    if (*(v19 + 24) == 1)
    {
      v8 = +[ARWorldTrackingConfiguration supportedVideoFormats];
      firstObject = [v8 firstObject];
    }

    else
    {
      v8 = [ARVideoFormat supportedVideoFormatsForDevicePosition:v29[3] deviceType:v23[5]];
      firstObject2 = [v8 firstObject];
      videoFormat = self->super._videoFormat;
      self->super._videoFormat = firstObject2;

      if (self->super._videoFormat || !ARRGBFaceTrackingEnabled())
      {
        goto LABEL_14;
      }

      firstObject = +[ARFaceTrackingConfiguration fallbackVideoFormat];
    }

    v10 = self->super._videoFormat;
    self->super._videoFormat = firstObject;

LABEL_14:
    if (_ARLogGeneral_onceToken_12 != -1)
    {
      [ARCustomTechniquesConfiguration _updateCaptureSettings];
    }

    v13 = _ARLogGeneral_logObj_12;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [(ARVideoFormat *)self->super._videoFormat description];
      *buf = 138543874;
      v33 = v15;
      v34 = 2048;
      selfCopy = self;
      v36 = 2114;
      v37 = v16;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Video format updated in custom techniques configurations: %{public}@", buf, 0x20u);
    }

LABEL_19:
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
    return;
  }
}

void __57__ARCustomTechniquesConfiguration__updateCaptureSettings__block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 techniqueOfClass:objc_opt_class()];
  if (v3)
  {

LABEL_4:
    *(*(a1[4] + 8) + 24) = 2;
    v5 = ARFaceTrackingDevice();
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    goto LABEL_5;
  }

  v4 = [v9 techniqueOfClass:objc_opt_class()];

  if (v4)
  {
    goto LABEL_4;
  }

  v8 = [v9 techniqueOfClass:objc_opt_class()];

  if (v8)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

LABEL_5:
}

- (void)ensureTechniqueAndCustomSensorCompatibility
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:self->_techniques];
  v4 = v3;
  if (v3)
  {
    options = [v3 options];
    v6 = [options copy];
    deviceModel = [(ARConfiguration *)self deviceModel];
    [v6 setDeviceModel:deviceModel];

    replaySensor = [(ARConfiguration *)self replaySensor];
    v9 = replaySensor;
    if (replaySensor && [replaySensor replayMode])
    {
      [v6 setDeterministicMode:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setVisionDataWillBeReplayed:{objc_msgSend(v9, "shouldReplayVisionData")}];
    }

    if (self->super._videoFormat)
    {
      imageSensorSettings = [(ARCustomTechniquesConfiguration *)self imageSensorSettings];
      [v6 setImageSensorSettings:imageSensorSettings];

      imageSensorSettingsForUltraWide = [(ARCustomTechniquesConfiguration *)self imageSensorSettingsForUltraWide];
      [v6 setImageSensorSettingsForUltraWide:imageSensorSettingsForUltraWide];
    }

    if (([options isEqual:v6] & 1) == 0)
    {
      v12 = [[ARWorldTrackingTechnique alloc] initWithOptions:v6];
      context = objc_autoreleasePoolPush();
      v18[0] = v12;
      techniques = self->_techniques;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v15 = [ARParentTechnique techniquesByForceReplacingTechniques:techniques withMatchingClassTechniques:v14];
      v16 = self->_techniques;
      self->_techniques = v15;

      objc_autoreleasePoolPop(context);
    }
  }
}

- (void)configureRecordingTechnique
{
  techniques = self->_techniques;
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_51];
  v9 = [(NSArray *)techniques filteredArrayUsingPredicate:v4];

  firstObject = [v9 firstObject];
  if (firstObject)
  {
    [firstObject setExpectAudioData:{-[ARConfiguration providesAudioData](self, "providesAudioData")}];
    v6 = self->_techniques;
    v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_120_0];
    v8 = [(NSArray *)v6 filteredArrayUsingPredicate:v7];

    [firstObject setExpectDepthData:{objc_msgSend(v8, "count") != 0}];
  }
}

- (void)_ensureTechniqueAndCustomSensorCompatibilityIfNeeded
{
  if (self->_needsEnsureTechniqueAndCustomSensorCompatibility)
  {
    self->_needsEnsureTechniqueAndCustomSensorCompatibility = 0;
    [(ARCustomTechniquesConfiguration *)self ensureTechniqueAndCustomSensorCompatibility];
  }
}

- (void)_configureRecordingTechniqueIfNeeded
{
  if (self->_needsConfigureRecordingTechnique)
  {
    self->_needsConfigureRecordingTechnique = 0;
    [(ARCustomTechniquesConfiguration *)self configureRecordingTechnique];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = ARCustomTechniquesConfiguration;
  if ([(ARConfiguration *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    techniques = [(ARCustomTechniquesConfiguration *)self techniques];
    techniques2 = [v5 techniques];

    v8 = [techniques isEqualToArray:techniques2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = ARCustomTechniquesConfiguration;
  v4 = [(ARConfiguration *)&v11 copyWithZone:zone];
  techniques = [(ARCustomTechniquesConfiguration *)self techniques];
  v6 = [techniques copy];
  v7 = v4[15];
  v4[15] = v6;

  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v9 = v4[16];
  v4[16] = templateConfiguration;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  techniques = [(ARCustomTechniquesConfiguration *)self techniques];
  v8 = [techniques valueForKey:@"description"];
  v9 = [v8 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@" techniques=[%@]", v9];

  [v6 appendString:@">"];

  return v6;
}

@end