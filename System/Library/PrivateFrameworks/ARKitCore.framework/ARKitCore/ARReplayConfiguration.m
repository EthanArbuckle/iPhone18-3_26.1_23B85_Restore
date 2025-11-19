@interface ARReplayConfiguration
- (ARReplayConfiguration)initWithBaseConfiguration:(id)a3 fileURL:(id)a4 replayMode:(int64_t)a5 outError:(id *)a6;
- (ARReplayConfiguration)initWithBaseConfiguration:(id)a3 replaySensor:(id)a4;
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

- (ARReplayConfiguration)initWithBaseConfiguration:(id)a3 fileURL:(id)a4 replayMode:(int64_t)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = ARReplaySensorClassForMovieURL(v11, a6);
  if (v12)
  {
    v13 = [[v12 alloc] initWithSequenceURL:v11 replayMode:a5];
    [v13 setReplaySensorDelegate:self];
    self = [(ARReplayConfiguration *)self initWithBaseConfiguration:v10 replaySensor:v13];

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (ARReplayConfiguration)initWithBaseConfiguration:(id)a3 replaySensor:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v6 parentImageSensorSettings];
    [v8 setParentImageSensorSettings:v9];
  }

  v22.receiver = self;
  v22.super_class = ARReplayConfiguration;
  v10 = [(ARCustomTechniquesConfiguration *)&v22 initPrivate];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 17, a4);
    v12 = [v7 sequenceURL];
    fileURL = v11->_fileURL;
    v11->_fileURL = v12;

    v14 = [MEMORY[0x1E698BEC0] grabCMSessionID:v11->_fileURL];
    vioSessionID = v11->_vioSessionID;
    v11->_vioSessionID = v14;

    v16 = [v7 replaySensorDelegate];

    if (!v16)
    {
      [v7 setReplaySensorDelegate:v11];
    }

    [(ARCustomTechniquesConfiguration *)v11 setTemplateConfiguration:v6];
    if (v7)
    {
      v23[0] = v7;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [(ARCustomTechniquesConfiguration *)v11 setCustomSensors:v17];
    }

    else
    {
      [(ARCustomTechniquesConfiguration *)v11 setCustomSensors:MEMORY[0x1E695E0F0]];
    }

    [(ARReplayConfiguration *)v11 setAlwaysUsePrimaryCameraForHiResOrX420VideoFormat];
    v18 = [(ARCustomTechniquesConfiguration *)v11 templateConfiguration];
    v19 = [v18 techniques];
    [(ARCustomTechniquesConfiguration *)v11 setTechniques:v19];

    -[ARConfiguration setFrameSemantics:](v11, "setFrameSemantics:", [v6 frameSemantics]);
    -[ARConfiguration setFrameDebugOptions:](v11, "setFrameDebugOptions:", [v6 frameDebugOptions]);
    -[ARConfiguration setPersonMetadataEnabled:](v11, "setPersonMetadataEnabled:", [v6 isPersonMetadataEnabled]);
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
  v2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v3 = [v2 worldAlignment];

  return v3;
}

- (id)parentImageSensorSettings
{
  v2 = self;
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v4 = [v3 parentImageSensorSettings];

  v26 = v4;
  v5 = [v4 settings];
  v6 = [v5 mutableCopy];

  v28 = [MEMORY[0x1E695DF70] array];
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
          v15 = *(&v2->super.super.super.isa + v14);
          v16 = [v13 videoFormat];
          v17 = v16;
          if (!v16)
          {
            goto LABEL_13;
          }

          v18 = [v16 device];

          if (v18)
          {
            v19 = [v17 device];
            v20 = [v19 deviceType];
            [v17 device];
            v21 = v2;
            v23 = v22 = v7;
            v24 = [v15 availableVideoFormatForDeviceType:v20 position:{objc_msgSend(v23, "position")}];

            v7 = v22;
            v2 = v21;
            v10 = v27;
          }

          else
          {
            v19 = [v17 captureDeviceType];
            v24 = [v15 availableVideoFormatForDeviceType:v19 position:{objc_msgSend(v17, "captureDevicePosition")}];
          }

          v11 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
          if (v24)
          {
            [v13 setVideoFormat:v24];
          }

          else
          {
LABEL_13:
            [v28 addObject:v13];
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

  [v7 removeObjectsInArray:v28];
  [v26 setSettings:v7];

  return v26;
}

- (id)imageSensorSettings
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    v4 = [v3 imageSensorSettings];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_replaySensor;
      v6 = [v4 videoFormat];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 device];

        if (v8)
        {
          v9 = [v7 device];
          v10 = [v9 deviceType];
          v11 = [v7 device];
          v12 = -[ARReplaySensorProtocol availableVideoFormatForDeviceType:position:](v5, "availableVideoFormatForDeviceType:position:", v10, [v11 position]);
        }

        else
        {
          v9 = [v7 captureDeviceType];
          v12 = -[ARReplaySensorProtocol availableVideoFormatForDeviceType:position:](v5, "availableVideoFormatForDeviceType:position:", v9, [v7 captureDevicePosition]);
        }

        if (v12)
        {
          [v4 setVideoFormat:v12];
        }
      }
    }

    [v4 setVisionDataOutputEnabled:0];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ARReplayConfiguration;
    v4 = [(ARCustomTechniquesConfiguration *)&v14 imageSensorSettings];
  }

  return v4;
}

- (id)imageSensorSettingsForUltraWide
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v3 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    v5 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    if ((v6 & 1) == 0)
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass();

      if ((v7 & 1) == 0)
      {
        v8 = 0;
        goto LABEL_15;
      }

      v5 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    }
  }

  v8 = [v5 imageSensorSettingsForUltraWide];

  if (!v8)
  {
LABEL_15:
    v8 = v8;
    v16 = v8;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:
    [v8 setVisionDataOutputEnabled:0];
    goto LABEL_15;
  }

  v9 = self->_replaySensor;
  v10 = [v8 videoFormat];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 videoFormat];
    v13 = [v12 captureDeviceType];
    v14 = [v8 videoFormat];
    v15 = -[ARReplaySensorProtocol availableVideoFormatForDeviceType:position:](v9, "availableVideoFormatForDeviceType:position:", v13, [v14 captureDevicePosition]);

    if (v15)
    {
      [v8 setVideoFormat:v15];

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
    v5 = [(ARReplayConfiguration *)self fileURL];
    v6 = [v4 grabCMSessionID:v5];
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
  v3 = [(ARCustomTechniquesConfiguration *)self techniques];
  v4 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 options];
    v7 = [(ARReplayConfiguration *)self vioSessionID];
    [v6 setVioSessionID:v7];

    v8 = [v5 mutableOptions];
    v9 = [v8 isEqual:v6];

    if ((v9 & 1) == 0)
    {
      v10 = [[ARWorldTrackingTechnique alloc] initWithOptions:v6];
      v14[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v12 = [ARParentTechnique techniquesByForceReplacingTechniques:v3 withMatchingClassTechniques:v11];
      [(ARCustomTechniquesConfiguration *)self setTechniques:v12];
    }
  }
}

- (id)secondaryTechniques
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v4 = [v3 secondaryTechniques];

  v5 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 options];
    v8 = [(ARConfiguration *)self deviceModel];
    [v7 setDeviceModel:v8];

    v9 = [(ARConfiguration *)self replaySensor];
    v10 = v9;
    if (v9 && [v9 replayMode])
    {
      [v7 setDeterministicMode:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setVisionDataWillBeReplayed:{objc_msgSend(v10, "shouldReplayVisionData")}];
    }

    if (self->super.super._videoFormat)
    {
      v11 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
        v14 = [v13 imageSensorSettingsForWorldTracking];

        [v14 setVisionDataOutputEnabled:0];
        [v7 setImageSensorSettings:v14];
      }
    }

    v15 = [v6 mutableOptions];
    v16 = [v15 isEqual:v7];

    if (v16)
    {
      v17 = v4;
    }

    else
    {
      v18 = [[ARWorldTrackingTechnique alloc] initWithOptions:v7];
      v21[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v17 = [ARParentTechnique techniquesByForceReplacingTechniques:v4 withMatchingClassTechniques:v19];
    }
  }

  else
  {
    v17 = v4;
  }

  return v17;
}

- (void)setAlwaysUsePrimaryCameraForHiResOrX420VideoFormat
{
  v3 = [(ARConfiguration *)self replaySensor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return;
  }

  v13 = [(ARConfiguration *)self replaySensor];
  v5 = [v13 availableVideoFormatForDeviceType:*MEMORY[0x1E6986950] position:1];
  v6 = v5;
  if (v5 && (([v5 has4KVideoResolution] & 1) != 0 || objc_msgSend(v6, "isX420PixelFormat")))
  {
    v7 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    v8 = [v7 isKindOfConfiguration:objc_opt_class()];

    v9 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    if (v8)
    {
      goto LABEL_9;
    }

    v10 = [v9 isKindOfConfiguration:objc_opt_class()];

    v9 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
    if (v10)
    {
      goto LABEL_9;
    }

    v11 = [v9 isKindOfConfiguration:objc_opt_class()];

    if (v11)
    {
      v9 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
LABEL_9:
      v12 = [v9 getAsKindOfConfiguration:objc_opt_class()];

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
  v3 = [(ARReplayConfiguration *)self delegate];
  [v3 replayConfigurationDidFinishReplaying:self];
}

- (ARReplayConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end