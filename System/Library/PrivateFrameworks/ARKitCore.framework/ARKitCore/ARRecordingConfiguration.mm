@interface ARRecordingConfiguration
- (ARRecordingConfiguration)initWithBaseConfiguration:(id)configuration fileURL:(id)l;
- (ARRecordingConfiguration)initWithBaseConfiguration:(id)configuration recordingTechnique:(id)technique;
- (ARRecordingTechniqueProtocol)recordingTechnique;
- (NSString)description;
- (id)imageSensorSettings;
- (id)initPrivate;
- (id)parentImageSensorSettings;
- (id)secondaryTechniques;
- (id)videoFormat;
- (int64_t)worldAlignment;
- (void)abortRecording;
- (void)finishRecordingWithHandler:(id)handler;
- (void)setVideoFormat:(id)format;
- (void)startRecording;
- (void)technique:(id)technique didFinishWithResult:(id)result;
@end

@implementation ARRecordingConfiguration

- (ARRecordingConfiguration)initWithBaseConfiguration:(id)configuration fileURL:(id)l
{
  v33 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  lCopy = l;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  techniques = [configurationCopy techniques];
  v9 = [techniques countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    v12 = 15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(techniques);
        }

        v12 |= [*(*(&v27 + 1) + 8 * i) requiredSensorDataTypes];
      }

      v10 = [techniques countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 15;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  secondaryTechniques = [configurationCopy secondaryTechniques];
  v15 = [secondaryTechniques countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(secondaryTechniques);
        }

        v12 |= [*(*(&v23 + 1) + 8 * j) requiredSensorDataTypes];
      }

      v16 = [secondaryTechniques countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isCollaborationEnabled = [configurationCopy isCollaborationEnabled];
  }

  else
  {
    isCollaborationEnabled = 0;
  }

  v20 = [[ARRecordingTechniquePublic alloc] initWithFileURL:lCopy recordingSensorDataTypes:v12 startImmediately:0 recordCollaborationData:isCollaborationEnabled];
  v21 = [(ARRecordingConfiguration *)self initWithBaseConfiguration:configurationCopy recordingTechnique:v20];

  return v21;
}

- (ARRecordingConfiguration)initWithBaseConfiguration:(id)configuration recordingTechnique:(id)technique
{
  configurationCopy = configuration;
  techniqueCopy = technique;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateConfiguration = [configurationCopy templateConfiguration];
    v9 = [(ARRecordingConfiguration *)self initWithBaseConfiguration:templateConfiguration recordingTechnique:techniqueCopy];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ARRecordingConfiguration;
    initPrivate = [(ARCustomTechniquesConfiguration *)&v20 initPrivate];
    if (initPrivate)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = techniqueCopy;
        parentImageSensorSettings = [configurationCopy parentImageSensorSettings];
        [v11 setParentImageSensorSettings:parentImageSensorSettings];
      }

      objc_storeStrong(initPrivate + 18, technique);
      outputFileURL = [techniqueCopy outputFileURL];
      v14 = initPrivate[17];
      initPrivate[17] = outputFileURL;

      techniques = [configurationCopy techniques];
      v16 = [techniques mutableCopy];

      [initPrivate setTemplateConfiguration:configurationCopy];
      v17 = [v16 indexOfObjectPassingTest:&__block_literal_global_57];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v16 removeObjectAtIndex:v17];
      }

      [v16 addObject:techniqueCopy];
      [initPrivate setAutoFocusEnabled:{objc_msgSend(configurationCopy, "isAutoFocusEnabled")}];
      [initPrivate setProvidesAudioData:{objc_msgSend(configurationCopy, "providesAudioData")}];
      customSensors = [configurationCopy customSensors];
      [initPrivate setCustomSensors:customSensors];

      [initPrivate setFrameSemantics:{objc_msgSend(configurationCopy, "frameSemantics")}];
      [initPrivate setTechniques:v16];
    }

    v9 = initPrivate;
  }

  return v9;
}

- (id)initPrivate
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[ARRecordingConfiguration initPrivate]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [(ARRecordingConfiguration *)self initWithBaseConfiguration:v6 fileURL:v7];

  return v8;
}

- (ARRecordingTechniqueProtocol)recordingTechnique
{
  [(ARCustomTechniquesConfiguration *)self _configureRecordingTechniqueIfNeeded];
  recordingTechnique = self->_recordingTechnique;

  return recordingTechnique;
}

- (void)startRecording
{
  if ([(ARRecordingConfiguration *)self state])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"You cannot start more than once"];
  }

  [(ARRecordingConfiguration *)self setState:1];
  customUserData = [(ARRecordingConfiguration *)self customUserData];
  [(ARRecordingTechniqueProtocol *)self->_recordingTechnique setCustomUserData:customUserData];

  recordingTechnique = [(ARRecordingConfiguration *)self recordingTechnique];
  [recordingTechnique startRecording];
}

- (void)finishRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(ARRecordingConfiguration *)self state]!= 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"You cannot finish before start or more than once"];
  }

  [(ARRecordingConfiguration *)self setState:2];
  [(ARRecordingConfiguration *)self setFinishBlock:handlerCopy];

  recordingTechnique = [(ARRecordingConfiguration *)self recordingTechnique];
  [recordingTechnique setRecordingTechniqueDelegate:self];

  recordingTechnique2 = [(ARRecordingConfiguration *)self recordingTechnique];
  [recordingTechnique2 finishRecording];
}

- (void)abortRecording
{
  if ([(ARRecordingConfiguration *)self state]== 1)
  {
    [(ARRecordingConfiguration *)self setState:2];
    recordingTechnique = [(ARRecordingConfiguration *)self recordingTechnique];
    [recordingTechnique abortRecording];
  }
}

- (int64_t)worldAlignment
{
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  worldAlignment = [templateConfiguration worldAlignment];

  return worldAlignment;
}

- (void)setVideoFormat:(id)format
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[ARRecordingConfiguration setVideoFormat:]"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%@: Cannot set videoFormat for %@.", v7, v6}];
}

- (id)videoFormat
{
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  videoFormat = [templateConfiguration videoFormat];

  return videoFormat;
}

- (id)imageSensorSettings
{
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  imageSensorSettings = [templateConfiguration imageSensorSettings];

  return imageSensorSettings;
}

- (id)parentImageSensorSettings
{
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  parentImageSensorSettings = [templateConfiguration parentImageSensorSettings];

  return parentImageSensorSettings;
}

- (id)secondaryTechniques
{
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  secondaryTechniques = [templateConfiguration secondaryTechniques];

  return secondaryTechniques;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@" fileURL=%@", self->_fileURL];
  templateConfiguration = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v8 = [templateConfiguration description];
  [v6 appendFormat:@" templateConfiguration=%@", v8];

  [v6 appendString:@">"];

  return v6;
}

- (void)technique:(id)technique didFinishWithResult:(id)result
{
  resultCopy = result;
  finishBlock = [(ARRecordingConfiguration *)self finishBlock];

  if (finishBlock)
  {
    finishBlock2 = [(ARRecordingConfiguration *)self finishBlock];
    (finishBlock2)[2](finishBlock2, resultCopy);

    [(ARRecordingConfiguration *)self setFinishBlock:0];
  }
}

@end