@interface ARReplayConfiguration
- (ARReplayConfiguration)initWithBaseConfiguration:(id)configuration fileURL:(id)l replayMode:(int64_t)mode outError:(id *)error;
- (ARReplayConfiguration)initWithBaseConfiguration:(id)configuration replaySensor:(id)sensor;
- (ARReplayConfigurationDelegate)delegate;
- (NSNumber)vioSessionID;
- (NSString)description;
- (id)imageSensorSettings;
- (id)imageSensorSettingsForUltraWide;
- (id)initPrivate;
- (id)parentImageSensorSettings;
- (id)secondaryTechniques;
- (int64_t)worldAlignment;
- (void)ensureTechniqueAndCustomSensorCompatibility;
- (void)replaySensorDidFinishReplayingData;
- (void)setAlwaysUsePrimaryCameraForHiResOrX420VideoFormat;
@end

@implementation ARReplayConfiguration

- (ARReplayConfiguration)initWithBaseConfiguration:(id)configuration fileURL:(id)l replayMode:(int64_t)mode outError:(id *)error
{
  configurationCopy = configuration;
  lCopy = l;
  v12 = ARReplaySensorClassForMovieURL(lCopy, error);
  if (v12)
  {
    v13 = [[v12 alloc] initWithSequenceURL:lCopy replayMode:mode];
    [v13 setReplaySensorDelegate:self];
    self = [(ARReplayConfiguration *)self initWithBaseConfiguration:configurationCopy replaySensor:v13];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ARReplayConfiguration)initWithBaseConfiguration:(id)configuration replaySensor:(id)sensor
{
  v23[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  sensorCopy = sensor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = sensorCopy;
    parentImageSensorSettings = [configurationCopy parentImageSensorSettings];
    [v8 setParentImageSensorSettings:parentImageSensorSettings];
  }

  v22.receiver = self;
  v22.super_class = ARReplayConfiguration;
  initPrivate = [(ARCustomTechniquesConfiguration *)&v22 initPrivate];
  v11 = initPrivate;
  if (initPrivate)
  {
    objc_storeStrong(initPrivate + 17, sensor);
    sequenceURL = [sensorCopy sequenceURL];
    fileURL = v11->_fileURL;
    v11->_fileURL = sequenceURL;

    v14 = [MEMORY[0x1E698BEC0] grabCMSessionID:v11->_fileURL];
    vioSessionID = v11->_vioSessionID;
    v11->_vioSessionID = v14;

    replaySensorDelegate = [sensorCopy replaySensorDelegate];

    if (!replaySensorDelegate)
    {
      [sensorCopy setReplaySensorDelegate:v11];
    }

    [(ARCustomTechniquesConfiguration *)v11 setTemplateConfiguration:configurationCopy];
    if (sensorCopy)
    {
      v23[0] = sensorCopy;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [(ARCustomTechniquesConfiguration *)v11 setCustomSensors:v17];
    }

    else
    {
      [(ARCustomTechniquesConfiguration *)v11 setCustomSensors:MEMORY[0x1E695E0F0]];
    }

    [(ARReplayConfiguration *)v11 setAlwaysUsePrimaryCameraForHiResOrX420VideoFormat];
    templateConfiguration = [(ARCustomTechniquesConfiguration *)v11 templateConfiguration];
    techniques = [templateConfiguration techniques];
    [(ARCustomTechniquesConfiguration *)v11 setTechniques:techniques];

    -[ARConfiguration setFrameSemantics:](v11, "setFrameSemantics:", [configurationCopy frameSemantics]);
    -[ARConfiguration setFrameDebugOptions:](v11, "setFrameDebugOptions:", [configurationCopy frameDebugOptions]);
    -[ARConfiguration setPersonMetadataEnabled:](v11, "setPersonMetadataEnabled:", [configurationCopy isPersonMetadataEnabled]);
    v20 = v11;
  }

  return v11;
}

- (id)initPrivate
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[ARReplayConfiguration initPrivate]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [(ARReplayConfiguration *)self initWithBaseConfiguration:v6 fileURL:v7 outError:0];

  return v8;
}

- (int64_t)worldAlignment
{
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  worldAlignment = [templateConfiguration worldAlignment];

  return worldAlignment;
}

- (id)parentImageSensorSettings
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  parentImageSensorSettings = [templateConfiguration parentImageSensorSettings];

  v26 = parentImageSensorSettings;
  settings = [parentImageSensorSettings settings];
  v6 = [settings mutableCopy];

  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v11 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
    v27 = *v31;
    do
    {
      v12 = 0;
      v29 = v9;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = v11[768];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = *(&selfCopy->super.super.super.isa + v14);
          videoFormat = [v13 videoFormat];
          v17 = videoFormat;
          if (!videoFormat)
          {
            goto LABEL_13;
          }

          device = [videoFormat device];

          if (device)
          {
            device2 = [v17 device];
            deviceType = [device2 deviceType];
            [v17 device];
            v21 = selfCopy;
            v23 = v22 = v7;
            v24 = [v15 availableVideoFormatForDeviceType:deviceType position:{objc_msgSend(v23, "position")}];

            v7 = v22;
            selfCopy = v21;
            v10 = v27;
          }

          else
          {
            device2 = [v17 captureDeviceType];
            v24 = [v15 availableVideoFormatForDeviceType:device2 position:{objc_msgSend(v17, "captureDevicePosition")}];
          }

          v11 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
          if (v24)
          {
            [v13 setVideoFormat:v24];
          }

          else
          {
LABEL_13:
            [array addObject:v13];
          }

          v9 = v29;
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  [v7 removeObjectsInArray:array];
  [v26 setSettings:v7];

  return v26;
}

- (id)imageSensorSettings
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    imageSensorSettings = [templateConfiguration imageSensorSettings];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_replaySensor;
      videoFormat = [imageSensorSettings videoFormat];
      v7 = videoFormat;
      if (videoFormat)
      {
        device = [videoFormat device];

        if (device)
        {
          device2 = [v7 device];
          deviceType = [device2 deviceType];
          device3 = [v7 device];
          v12 = -[ARReplaySensorProtocol availableVideoFormatForDeviceType:position:](v5, "availableVideoFormatForDeviceType:position:", deviceType, [device3 position]);
        }

        else
        {
          device2 = [v7 captureDeviceType];
          v12 = -[ARReplaySensorProtocol availableVideoFormatForDeviceType:position:](v5, "availableVideoFormatForDeviceType:position:", device2, [v7 captureDevicePosition]);
        }

        if (v12)
        {
          [imageSensorSettings setVideoFormat:v12];
        }
      }
    }

    [imageSensorSettings setVisionDataOutputEnabled:0];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ARReplayConfiguration;
    imageSensorSettings = [(ARCustomTechniquesConfiguration *)&v14 imageSensorSettings];
  }

  return imageSensorSettings;
}

- (id)imageSensorSettingsForUltraWide
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_17;
  }

  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  templateConfiguration2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    templateConfiguration2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    if ((v6 & 1) == 0)
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass();

      if ((v7 & 1) == 0)
      {
        imageSensorSettingsForUltraWide = 0;
        goto LABEL_15;
      }

      templateConfiguration2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    }
  }

  imageSensorSettingsForUltraWide = [templateConfiguration2 imageSensorSettingsForUltraWide];

  if (!imageSensorSettingsForUltraWide)
  {
LABEL_15:
    imageSensorSettingsForUltraWide = imageSensorSettingsForUltraWide;
    v16 = imageSensorSettingsForUltraWide;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:
    [imageSensorSettingsForUltraWide setVisionDataOutputEnabled:0];
    goto LABEL_15;
  }

  v9 = self->_replaySensor;
  videoFormat = [imageSensorSettingsForUltraWide videoFormat];
  if (videoFormat)
  {
    v11 = videoFormat;
    videoFormat2 = [imageSensorSettingsForUltraWide videoFormat];
    captureDeviceType = [videoFormat2 captureDeviceType];
    videoFormat3 = [imageSensorSettingsForUltraWide videoFormat];
    v15 = -[ARReplaySensorProtocol availableVideoFormatForDeviceType:position:](v9, "availableVideoFormatForDeviceType:position:", captureDeviceType, [videoFormat3 captureDevicePosition]);

    if (v15)
    {
      [imageSensorSettingsForUltraWide setVideoFormat:v15];

      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_16:

LABEL_17:

  return v16;
}

- (NSNumber)vioSessionID
{
  vioSessionID = self->_vioSessionID;
  if (!vioSessionID)
  {
    v4 = MEMORY[0x1E698BEC0];
    fileURL = [(ARReplayConfiguration *)self fileURL];
    v6 = [v4 grabCMSessionID:fileURL];
    v7 = [v6 copy];
    v8 = self->_vioSessionID;
    self->_vioSessionID = v7;

    vioSessionID = self->_vioSessionID;
  }

  return vioSessionID;
}

- (void)ensureTechniqueAndCustomSensorCompatibility
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = ARReplayConfiguration;
  [(ARCustomTechniquesConfiguration *)&v13 ensureTechniqueAndCustomSensorCompatibility];
  techniques = [(ARCustomTechniquesConfiguration *)self techniques];
  v4 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniques];
  v5 = v4;
  if (v4)
  {
    options = [v4 options];
    vioSessionID = [(ARReplayConfiguration *)self vioSessionID];
    [options setVioSessionID:vioSessionID];

    mutableOptions = [v5 mutableOptions];
    v9 = [mutableOptions isEqual:options];

    if ((v9 & 1) == 0)
    {
      v10 = [[ARWorldTrackingTechnique alloc] initWithOptions:options];
      v14[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v12 = [ARParentTechnique techniquesByForceReplacingTechniques:techniques withMatchingClassTechniques:v11];
      [(ARCustomTechniquesConfiguration *)self setTechniques:v12];
    }
  }
}

- (id)secondaryTechniques
{
  v21[1] = *MEMORY[0x1E69E9840];
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  secondaryTechniques = [templateConfiguration secondaryTechniques];

  v5 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:secondaryTechniques];
  v6 = v5;
  if (v5)
  {
    options = [v5 options];
    deviceModel = [(ARConfiguration *)self deviceModel];
    [options setDeviceModel:deviceModel];

    replaySensor = [(ARConfiguration *)self replaySensor];
    v10 = replaySensor;
    if (replaySensor && [replaySensor replayMode])
    {
      [options setDeterministicMode:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [options setVisionDataWillBeReplayed:{objc_msgSend(v10, "shouldReplayVisionData")}];
    }

    if (self->super.super._videoFormat)
    {
      templateConfiguration2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        templateConfiguration3 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
        imageSensorSettingsForWorldTracking = [templateConfiguration3 imageSensorSettingsForWorldTracking];

        [imageSensorSettingsForWorldTracking setVisionDataOutputEnabled:0];
        [options setImageSensorSettings:imageSensorSettingsForWorldTracking];
      }
    }

    mutableOptions = [v6 mutableOptions];
    v16 = [mutableOptions isEqual:options];

    if (v16)
    {
      v17 = secondaryTechniques;
    }

    else
    {
      v18 = [[ARWorldTrackingTechnique alloc] initWithOptions:options];
      v21[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v17 = [ARParentTechnique techniquesByForceReplacingTechniques:secondaryTechniques withMatchingClassTechniques:v19];
    }
  }

  else
  {
    v17 = secondaryTechniques;
  }

  return v17;
}

- (void)setAlwaysUsePrimaryCameraForHiResOrX420VideoFormat
{
  replaySensor = [(ARConfiguration *)self replaySensor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return;
  }

  replaySensor2 = [(ARConfiguration *)self replaySensor];
  v5 = [replaySensor2 availableVideoFormatForDeviceType:*MEMORY[0x1E6986950] position:1];
  v6 = v5;
  if (v5 && (([v5 has4KVideoResolution] & 1) != 0 || objc_msgSend(v6, "isX420PixelFormat")))
  {
    templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    v8 = [templateConfiguration isKindOfConfiguration:objc_opt_class()];

    templateConfiguration2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    if (v8)
    {
      goto LABEL_9;
    }

    v10 = [templateConfiguration2 isKindOfConfiguration:objc_opt_class()];

    templateConfiguration2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    if (v10)
    {
      goto LABEL_9;
    }

    v11 = [templateConfiguration2 isKindOfConfiguration:objc_opt_class()];

    if (v11)
    {
      templateConfiguration2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
LABEL_9:
      v12 = [templateConfiguration2 getAsKindOfConfiguration:objc_opt_class()];

      [v12 setAlwaysUsePrimaryCameraForTracking:1];
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@" fileURL=%@", self->_fileURL];
  [v6 appendString:@">"];

  return v6;
}

- (void)replaySensorDidFinishReplayingData
{
  delegate = [(ARReplayConfiguration *)self delegate];
  [delegate replayConfigurationDidFinishReplaying:self];
}

- (ARReplayConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end