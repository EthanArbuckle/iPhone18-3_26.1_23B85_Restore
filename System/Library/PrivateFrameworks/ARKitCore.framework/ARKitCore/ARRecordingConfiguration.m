@interface ARRecordingConfiguration
- (ARRecordingConfiguration)initWithBaseConfiguration:(id)a3 fileURL:(id)a4;
- (ARRecordingConfiguration)initWithBaseConfiguration:(id)a3 recordingTechnique:(id)a4;
- (ARRecordingTechniqueProtocol)recordingTechnique;
- (NSString)description;
- (id)imageSensorSettings;
- (id)initPrivate;
- (id)parentImageSensorSettings;
- (id)secondaryTechniques;
- (id)videoFormat;
- (int64_t)worldAlignment;
- (void)abortRecording;
- (void)finishRecordingWithHandler:(id)a3;
- (void)setVideoFormat:(id)a3;
- (void)startRecording;
- (void)technique:(id)a3 didFinishWithResult:(id)a4;
@end

@implementation ARRecordingConfiguration

- (ARRecordingConfiguration)initWithBaseConfiguration:(id)a3 fileURL:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v6 techniques];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v8);
        }

        v12 |= [*(*(&v27 + 1) + 8 * i) requiredSensorDataTypes];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
  v14 = [v6 secondaryTechniques];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v14);
        }

        v12 |= [*(*(&v23 + 1) + 8 * j) requiredSensorDataTypes];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v6 isCollaborationEnabled];
  }

  else
  {
    v19 = 0;
  }

  v20 = [[ARRecordingTechniquePublic alloc] initWithFileURL:v7 recordingSensorDataTypes:v12 startImmediately:0 recordCollaborationData:v19];
  v21 = [(ARRecordingConfiguration *)self initWithBaseConfiguration:v6 recordingTechnique:v20];

  return v21;
}

- (ARRecordingConfiguration)initWithBaseConfiguration:(id)a3 recordingTechnique:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 templateConfiguration];
    v9 = [(ARRecordingConfiguration *)self initWithBaseConfiguration:v8 recordingTechnique:v7];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ARRecordingConfiguration;
    v10 = [(ARCustomTechniquesConfiguration *)&v20 initPrivate];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v7;
        v12 = [v6 parentImageSensorSettings];
        [v11 setParentImageSensorSettings:v12];
      }

      objc_storeStrong(v10 + 18, a4);
      v13 = [v7 outputFileURL];
      v14 = v10[17];
      v10[17] = v13;

      v15 = [v6 techniques];
      v16 = [v15 mutableCopy];

      [v10 setTemplateConfiguration:v6];
      v17 = [v16 indexOfObjectPassingTest:&__block_literal_global_57];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v16 removeObjectAtIndex:v17];
      }

      [v16 addObject:v7];
      [v10 setAutoFocusEnabled:{objc_msgSend(v6, "isAutoFocusEnabled")}];
      [v10 setProvidesAudioData:{objc_msgSend(v6, "providesAudioData")}];
      v18 = [v6 customSensors];
      [v10 setCustomSensors:v18];

      [v10 setFrameSemantics:{objc_msgSend(v6, "frameSemantics")}];
      [v10 setTechniques:v16];
    }

    v9 = v10;
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
  v3 = [(ARRecordingConfiguration *)self customUserData];
  [(ARRecordingTechniqueProtocol *)self->_recordingTechnique setCustomUserData:v3];

  v4 = [(ARRecordingConfiguration *)self recordingTechnique];
  [v4 startRecording];
}

- (void)finishRecordingWithHandler:(id)a3
{
  v4 = a3;
  if ([(ARRecordingConfiguration *)self state]!= 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"You cannot finish before start or more than once"];
  }

  [(ARRecordingConfiguration *)self setState:2];
  [(ARRecordingConfiguration *)self setFinishBlock:v4];

  v5 = [(ARRecordingConfiguration *)self recordingTechnique];
  [v5 setRecordingTechniqueDelegate:self];

  v6 = [(ARRecordingConfiguration *)self recordingTechnique];
  [v6 finishRecording];
}

- (void)abortRecording
{
  if ([(ARRecordingConfiguration *)self state]== 1)
  {
    [(ARRecordingConfiguration *)self setState:2];
    v3 = [(ARRecordingConfiguration *)self recordingTechnique];
    [v3 abortRecording];
  }
}

- (int64_t)worldAlignment
{
  v2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v3 = [v2 worldAlignment];

  return v3;
}

- (void)setVideoFormat:(id)a3
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
  v2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v3 = [v2 videoFormat];

  return v3;
}

- (id)imageSensorSettings
{
  v2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v3 = [v2 imageSensorSettings];

  return v3;
}

- (id)parentImageSensorSettings
{
  v2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v3 = [v2 parentImageSensorSettings];

  return v3;
}

- (id)secondaryTechniques
{
  v2 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v3 = [v2 secondaryTechniques];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@" fileURL=%@", self->_fileURL];
  v7 = [(ARCustomTechniquesConfiguration *)self templateConfiguration];
  v8 = [v7 description];
  [v6 appendFormat:@" templateConfiguration=%@", v8];

  [v6 appendString:@">"];

  return v6;
}

- (void)technique:(id)a3 didFinishWithResult:(id)a4
{
  v7 = a4;
  v5 = [(ARRecordingConfiguration *)self finishBlock];

  if (v5)
  {
    v6 = [(ARRecordingConfiguration *)self finishBlock];
    (v6)[2](v6, v7);

    [(ARRecordingConfiguration *)self setFinishBlock:0];
  }
}

@end