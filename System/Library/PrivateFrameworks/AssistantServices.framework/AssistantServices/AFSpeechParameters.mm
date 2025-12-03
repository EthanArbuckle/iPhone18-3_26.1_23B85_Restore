@interface AFSpeechParameters
+ (id)newWithBuilder:(id)builder;
- (AFSpeechParameters)initWithBuilder:(id)builder;
- (AFSpeechParameters)initWithCoder:(id)coder;
- (AFSpeechParameters)initWithLanguage:(id)language interactionIdentifier:(id)identifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)overrides modelOverrideURL:(id)self0 originalAudioFileURL:(id)self1 narrowband:(BOOL)self2 detectUtterances:(BOOL)self3 censorSpeech:(BOOL)self4 farField:(BOOL)self5 secureOfflineOnly:(BOOL)self6 shouldStoreAudioOnDevice:(BOOL)self7 maximumRecognitionDuration:(double)self8 inputOrigin:(id)self9 location:(id)location jitGrammar:(id)grammar;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechParameters

- (void)encodeWithCoder:(id)coder
{
  language = self->_language;
  coderCopy = coder;
  [coderCopy encodeObject:language forKey:@"AFSpeechParameters::language"];
  [coderCopy encodeObject:self->_interactionIdentifier forKey:@"AFSpeechParameters::interactionIdentifier"];
  [coderCopy encodeObject:self->_task forKey:@"AFSpeechParameters::task"];
  [coderCopy encodeObject:self->_loggingContext forKey:@"AFSpeechParameters::loggingContext"];
  [coderCopy encodeObject:self->_applicationName forKey:@"AFSpeechParameters::applicationName"];
  [coderCopy encodeObject:self->_profile forKey:@"AFSpeechParameters::profile"];
  [coderCopy encodeObject:self->_overrides forKey:@"AFSpeechParameters::overrides"];
  [coderCopy encodeObject:self->_modelOverrideURL forKey:@"AFSpeechParameters::modelOverrideURL"];
  [coderCopy encodeObject:self->_originalAudioFileURL forKey:@"AFSpeechParameters::originalAudioFileURL"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_narrowband];
  [coderCopy encodeObject:v5 forKey:@"AFSpeechParameters::narrowband"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_detectUtterances];
  [coderCopy encodeObject:v6 forKey:@"AFSpeechParameters::detectUtterances"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_censorSpeech];
  [coderCopy encodeObject:v7 forKey:@"AFSpeechParameters::censorSpeech"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_farField];
  [coderCopy encodeObject:v8 forKey:@"AFSpeechParameters::farField"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_secureOfflineOnly];
  [coderCopy encodeObject:v9 forKey:@"AFSpeechParameters::secureOfflineOnly"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldStoreAudioOnDevice];
  [coderCopy encodeObject:v10 forKey:@"AFSpeechParameters::shouldStoreAudioOnDevice"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumRecognitionDuration];
  [coderCopy encodeObject:v11 forKey:@"AFSpeechParameters::maximumRecognitionDuration"];

  [coderCopy encodeObject:self->_inputOrigin forKey:@"AFSpeechParameters::inputOrigin"];
  [coderCopy encodeObject:self->_location forKey:@"AFSpeechParameters::location"];
  [coderCopy encodeObject:self->_jitGrammar forKey:@"AFSpeechParameters::jitGrammar"];
}

- (AFSpeechParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::language"];
  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::interactionIdentifier"];
  v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::task"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v39 = [coderCopy decodeObjectOfClasses:v6 forKey:@"AFSpeechParameters::loggingContext"];

  v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::applicationName"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::profile"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v36 = [coderCopy decodeObjectOfClasses:v10 forKey:@"AFSpeechParameters::overrides"];

  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::modelOverrideURL"];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::originalAudioFileURL"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::narrowband"];
  bOOLValue = [v11 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::detectUtterances"];
  bOOLValue2 = [v12 BOOLValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::censorSpeech"];
  bOOLValue3 = [v13 BOOLValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::farField"];
  bOOLValue4 = [v14 BOOLValue];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::secureOfflineOnly"];
  bOOLValue5 = [v16 BOOLValue];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::shouldStoreAudioOnDevice"];
  bOOLValue6 = [v18 BOOLValue];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::maximumRecognitionDuration"];
  [v20 doubleValue];
  v22 = v21;

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::inputOrigin"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::location"];
  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"AFSpeechParameters::jitGrammar"];

  BYTE5(v29) = bOOLValue6;
  BYTE4(v29) = bOOLValue5;
  BYTE3(v29) = bOOLValue4;
  BYTE2(v29) = bOOLValue3;
  BYTE1(v29) = bOOLValue2;
  LOBYTE(v29) = bOOLValue;
  v43 = [AFSpeechParameters initWithLanguage:"initWithLanguage:interactionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:maximumRecognitionDuration:inputOrigin:location:jitGrammar:" interactionIdentifier:v44 task:v41 loggingContext:v40 applicationName:v39 profile:v38 overrides:v37 modelOverrideURL:v22 originalAudioFileURL:v36 narrowband:v35 detectUtterances:v32 censorSpeech:v29 farField:v30 secureOfflineOnly:v23 shouldStoreAudioOnDevice:v27 maximumRecognitionDuration:? inputOrigin:? location:? jitGrammar:?];

  return v43;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      narrowband = self->_narrowband;
      if (narrowband == [(AFSpeechParameters *)v5 narrowband]&& (detectUtterances = self->_detectUtterances, detectUtterances == [(AFSpeechParameters *)v5 detectUtterances]) && (censorSpeech = self->_censorSpeech, censorSpeech == [(AFSpeechParameters *)v5 censorSpeech]) && (farField = self->_farField, farField == [(AFSpeechParameters *)v5 farField]) && (secureOfflineOnly = self->_secureOfflineOnly, secureOfflineOnly == [(AFSpeechParameters *)v5 secureOfflineOnly]) && (shouldStoreAudioOnDevice = self->_shouldStoreAudioOnDevice, shouldStoreAudioOnDevice == [(AFSpeechParameters *)v5 shouldStoreAudioOnDevice]) && (maximumRecognitionDuration = self->_maximumRecognitionDuration, [(AFSpeechParameters *)v5 maximumRecognitionDuration], maximumRecognitionDuration == v13))
      {
        language = [(AFSpeechParameters *)v5 language];
        language = self->_language;
        if (language == language || [(NSString *)language isEqual:language])
        {
          interactionIdentifier = [(AFSpeechParameters *)v5 interactionIdentifier];
          interactionIdentifier = self->_interactionIdentifier;
          if (interactionIdentifier == interactionIdentifier || [(NSString *)interactionIdentifier isEqual:interactionIdentifier])
          {
            task = [(AFSpeechParameters *)v5 task];
            task = self->_task;
            if (task == task || [(NSString *)task isEqual:task])
            {
              loggingContext = [(AFSpeechParameters *)v5 loggingContext];
              loggingContext = self->_loggingContext;
              if (loggingContext == loggingContext || [(NSArray *)loggingContext isEqual:loggingContext])
              {
                applicationName = [(AFSpeechParameters *)v5 applicationName];
                applicationName = self->_applicationName;
                if (applicationName == applicationName || [(NSString *)applicationName isEqual:applicationName])
                {
                  profile = [(AFSpeechParameters *)v5 profile];
                  profile = self->_profile;
                  if (profile == profile || [(NSData *)profile isEqual:profile])
                  {
                    overrides = [(AFSpeechParameters *)v5 overrides];
                    overrides = self->_overrides;
                    if (overrides == overrides || [(NSDictionary *)overrides isEqual:overrides])
                    {
                      modelOverrideURL = [(AFSpeechParameters *)v5 modelOverrideURL];
                      modelOverrideURL = self->_modelOverrideURL;
                      v44 = modelOverrideURL;
                      if (modelOverrideURL == modelOverrideURL || [(NSURL *)modelOverrideURL isEqual:modelOverrideURL])
                      {
                        originalAudioFileURL = [(AFSpeechParameters *)v5 originalAudioFileURL];
                        originalAudioFileURL = self->_originalAudioFileURL;
                        v43 = originalAudioFileURL;
                        if (originalAudioFileURL == originalAudioFileURL || [(NSURL *)originalAudioFileURL isEqual:originalAudioFileURL])
                        {
                          inputOrigin = [(AFSpeechParameters *)v5 inputOrigin];
                          inputOrigin = self->_inputOrigin;
                          v42 = inputOrigin;
                          if (inputOrigin == inputOrigin || [(NSString *)inputOrigin isEqual:inputOrigin])
                          {
                            location = [(AFSpeechParameters *)v5 location];
                            location = self->_location;
                            v41 = location;
                            if (location == location || [(CLLocation *)location isEqual:location])
                            {
                              jitGrammar = [(AFSpeechParameters *)v5 jitGrammar];
                              jitGrammar = self->_jitGrammar;
                              v40 = jitGrammar;
                              v14 = jitGrammar == jitGrammar || [(NSArray *)jitGrammar isEqual:jitGrammar];
                            }

                            else
                            {
                              v14 = 0;
                            }
                          }

                          else
                          {
                            v14 = 0;
                          }
                        }

                        else
                        {
                          v14 = 0;
                        }
                      }

                      else
                      {
                        v14 = 0;
                      }
                    }

                    else
                    {
                      v14 = 0;
                    }
                  }

                  else
                  {
                    v14 = 0;
                  }
                }

                else
                {
                  v14 = 0;
                }
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_language hash];
  v4 = [(NSString *)self->_interactionIdentifier hash]^ v3;
  v5 = [(NSString *)self->_task hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_loggingContext hash];
  v7 = [(NSString *)self->_applicationName hash];
  v8 = v7 ^ [(NSData *)self->_profile hash];
  v9 = v6 ^ v8 ^ [(NSDictionary *)self->_overrides hash];
  v10 = [(NSURL *)self->_modelOverrideURL hash];
  v11 = v10 ^ [(NSURL *)self->_originalAudioFileURL hash];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_narrowband];
  v12 = v9 ^ v11 ^ [v29 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_detectUtterances];
  v14 = [v13 hash];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_censorSpeech];
  v16 = v14 ^ [v15 hash];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_farField];
  v18 = v12 ^ v16 ^ [v17 hash];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_secureOfflineOnly];
  v20 = [v19 hash];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldStoreAudioOnDevice];
  v22 = v20 ^ [v21 hash];
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumRecognitionDuration];
  v24 = v22 ^ [v23 hash];
  v25 = v18 ^ v24 ^ [(NSString *)self->_inputOrigin hash];
  v26 = [(CLLocation *)self->_location hash];
  v27 = v26 ^ [(NSArray *)self->_jitGrammar hash];

  return v25 ^ v27;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18.receiver = self;
  v18.super_class = AFSpeechParameters;
  v5 = [(AFSpeechParameters *)&v18 description];
  v16 = *&self->_task;
  v17 = *&self->_language;
  applicationName = self->_applicationName;
  v7 = [(NSData *)self->_profile length];
  v8 = @"NO";
  if (self->_narrowband)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_detectUtterances)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_censorSpeech)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_farField)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_secureOfflineOnly)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_shouldStoreAudioOnDevice)
  {
    v8 = @"YES";
  }

  v14 = [v4 initWithFormat:@"%@ {language = %@, interactionIdentifier = %@, task = %@, loggingContext = %@, applicationName = %@, profile = (%llu bytes), overrides = %@, modelOverrideURL = %@, originalAudioFileURL = %@, narrowband = %@, detectUtterances = %@, censorSpeech = %@, farField = %@, secureOfflineOnly = %@, shouldStoreAudioOnDevice = %@, maximumRecognitionDuration = %f, inputOrigin = %@, location = %@, jitGrammar = %@}", v5, v17, v16, applicationName, v7, *&self->_overrides, self->_originalAudioFileURL, v9, v10, v11, v12, v13, v8, *&self->_maximumRecognitionDuration, self->_inputOrigin, self->_location, self->_jitGrammar];

  return v14;
}

- (AFSpeechParameters)initWithLanguage:(id)language interactionIdentifier:(id)identifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)overrides modelOverrideURL:(id)self0 originalAudioFileURL:(id)self1 narrowband:(BOOL)self2 detectUtterances:(BOOL)self3 censorSpeech:(BOOL)self4 farField:(BOOL)self5 secureOfflineOnly:(BOOL)self6 shouldStoreAudioOnDevice:(BOOL)self7 maximumRecognitionDuration:(double)self8 inputOrigin:(id)self9 location:(id)location jitGrammar:(id)grammar
{
  languageCopy = language;
  identifierCopy = identifier;
  taskCopy = task;
  contextCopy = context;
  nameCopy = name;
  profileCopy = profile;
  overridesCopy = overrides;
  lCopy = l;
  rLCopy = rL;
  originCopy = origin;
  locationCopy = location;
  grammarCopy = grammar;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __305__AFSpeechParameters_initWithLanguage_interactionIdentifier_task_loggingContext_applicationName_profile_overrides_modelOverrideURL_originalAudioFileURL_narrowband_detectUtterances_censorSpeech_farField_secureOfflineOnly_shouldStoreAudioOnDevice_maximumRecognitionDuration_inputOrigin_location_jitGrammar___block_invoke;
  v54[3] = &unk_1E7347218;
  v55 = languageCopy;
  v56 = identifierCopy;
  v57 = taskCopy;
  v58 = contextCopy;
  v59 = nameCopy;
  v60 = profileCopy;
  v61 = overridesCopy;
  v62 = lCopy;
  narrowbandCopy = narrowband;
  utterancesCopy = utterances;
  speechCopy = speech;
  fieldCopy = field;
  onlyCopy = only;
  deviceCopy = device;
  durationCopy = duration;
  v63 = rLCopy;
  v64 = originCopy;
  v65 = locationCopy;
  v66 = grammarCopy;
  v51 = grammarCopy;
  v50 = locationCopy;
  v49 = originCopy;
  v48 = rLCopy;
  v47 = lCopy;
  v46 = overridesCopy;
  v38 = profileCopy;
  v39 = nameCopy;
  v40 = contextCopy;
  v41 = taskCopy;
  v42 = identifierCopy;
  v43 = languageCopy;
  v44 = [(AFSpeechParameters *)self initWithBuilder:v54];

  return v44;
}

void __305__AFSpeechParameters_initWithLanguage_interactionIdentifier_task_loggingContext_applicationName_profile_overrides_modelOverrideURL_originalAudioFileURL_narrowband_detectUtterances_censorSpeech_farField_secureOfflineOnly_shouldStoreAudioOnDevice_maximumRecognitionDuration_inputOrigin_location_jitGrammar___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLanguage:v3];
  [v4 setInteractionIdentifier:*(a1 + 40)];
  [v4 setTask:*(a1 + 48)];
  [v4 setLoggingContext:*(a1 + 56)];
  [v4 setApplicationName:*(a1 + 64)];
  [v4 setProfile:*(a1 + 72)];
  [v4 setOverrides:*(a1 + 80)];
  [v4 setModelOverrideURL:*(a1 + 88)];
  [v4 setOriginalAudioFileURL:*(a1 + 96)];
  [v4 setNarrowband:*(a1 + 136)];
  [v4 setDetectUtterances:*(a1 + 137)];
  [v4 setCensorSpeech:*(a1 + 138)];
  [v4 setFarField:*(a1 + 139)];
  [v4 setSecureOfflineOnly:*(a1 + 140)];
  [v4 setShouldStoreAudioOnDevice:*(a1 + 141)];
  [v4 setMaximumRecognitionDuration:*(a1 + 128)];
  [v4 setInputOrigin:*(a1 + 104)];
  [v4 setLocation:*(a1 + 112)];
  [v4 setJitGrammar:*(a1 + 120)];
}

- (AFSpeechParameters)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v46.receiver = self;
  v46.super_class = AFSpeechParameters;
  v5 = [(AFSpeechParameters *)&v46 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSpeechParametersMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSpeechParametersMutation *)v7 isDirty])
    {
      getLanguage = [(_AFSpeechParametersMutation *)v7 getLanguage];
      v9 = [getLanguage copy];
      language = v6->_language;
      v6->_language = v9;

      getInteractionIdentifier = [(_AFSpeechParametersMutation *)v7 getInteractionIdentifier];
      v12 = [getInteractionIdentifier copy];
      interactionIdentifier = v6->_interactionIdentifier;
      v6->_interactionIdentifier = v12;

      getTask = [(_AFSpeechParametersMutation *)v7 getTask];
      v15 = [getTask copy];
      task = v6->_task;
      v6->_task = v15;

      getLoggingContext = [(_AFSpeechParametersMutation *)v7 getLoggingContext];
      v18 = [getLoggingContext copy];
      loggingContext = v6->_loggingContext;
      v6->_loggingContext = v18;

      getApplicationName = [(_AFSpeechParametersMutation *)v7 getApplicationName];
      v21 = [getApplicationName copy];
      applicationName = v6->_applicationName;
      v6->_applicationName = v21;

      getProfile = [(_AFSpeechParametersMutation *)v7 getProfile];
      v24 = [getProfile copy];
      profile = v6->_profile;
      v6->_profile = v24;

      getOverrides = [(_AFSpeechParametersMutation *)v7 getOverrides];
      v27 = [getOverrides copy];
      overrides = v6->_overrides;
      v6->_overrides = v27;

      getModelOverrideURL = [(_AFSpeechParametersMutation *)v7 getModelOverrideURL];
      v30 = [getModelOverrideURL copy];
      modelOverrideURL = v6->_modelOverrideURL;
      v6->_modelOverrideURL = v30;

      getOriginalAudioFileURL = [(_AFSpeechParametersMutation *)v7 getOriginalAudioFileURL];
      v33 = [getOriginalAudioFileURL copy];
      originalAudioFileURL = v6->_originalAudioFileURL;
      v6->_originalAudioFileURL = v33;

      v6->_narrowband = [(_AFSpeechParametersMutation *)v7 getNarrowband];
      v6->_detectUtterances = [(_AFSpeechParametersMutation *)v7 getDetectUtterances];
      v6->_censorSpeech = [(_AFSpeechParametersMutation *)v7 getCensorSpeech];
      v6->_farField = [(_AFSpeechParametersMutation *)v7 getFarField];
      v6->_secureOfflineOnly = [(_AFSpeechParametersMutation *)v7 getSecureOfflineOnly];
      v6->_shouldStoreAudioOnDevice = [(_AFSpeechParametersMutation *)v7 getShouldStoreAudioOnDevice];
      [(_AFSpeechParametersMutation *)v7 getMaximumRecognitionDuration];
      v6->_maximumRecognitionDuration = v35;
      getInputOrigin = [(_AFSpeechParametersMutation *)v7 getInputOrigin];
      v37 = [getInputOrigin copy];
      inputOrigin = v6->_inputOrigin;
      v6->_inputOrigin = v37;

      getLocation = [(_AFSpeechParametersMutation *)v7 getLocation];
      v40 = [getLocation copy];
      location = v6->_location;
      v6->_location = v40;

      getJitGrammar = [(_AFSpeechParametersMutation *)v7 getJitGrammar];
      v43 = [getJitGrammar copy];
      jitGrammar = v6->_jitGrammar;
      v6->_jitGrammar = v43;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFSpeechParametersMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSpeechParametersMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechParameters);
      getLanguage = [(_AFSpeechParametersMutation *)v5 getLanguage];
      v8 = [getLanguage copy];
      language = v6->_language;
      v6->_language = v8;

      getInteractionIdentifier = [(_AFSpeechParametersMutation *)v5 getInteractionIdentifier];
      v11 = [getInteractionIdentifier copy];
      interactionIdentifier = v6->_interactionIdentifier;
      v6->_interactionIdentifier = v11;

      getTask = [(_AFSpeechParametersMutation *)v5 getTask];
      v14 = [getTask copy];
      task = v6->_task;
      v6->_task = v14;

      getLoggingContext = [(_AFSpeechParametersMutation *)v5 getLoggingContext];
      v17 = [getLoggingContext copy];
      loggingContext = v6->_loggingContext;
      v6->_loggingContext = v17;

      getApplicationName = [(_AFSpeechParametersMutation *)v5 getApplicationName];
      v20 = [getApplicationName copy];
      applicationName = v6->_applicationName;
      v6->_applicationName = v20;

      getProfile = [(_AFSpeechParametersMutation *)v5 getProfile];
      v23 = [getProfile copy];
      profile = v6->_profile;
      v6->_profile = v23;

      getOverrides = [(_AFSpeechParametersMutation *)v5 getOverrides];
      v26 = [getOverrides copy];
      overrides = v6->_overrides;
      v6->_overrides = v26;

      getModelOverrideURL = [(_AFSpeechParametersMutation *)v5 getModelOverrideURL];
      v29 = [getModelOverrideURL copy];
      modelOverrideURL = v6->_modelOverrideURL;
      v6->_modelOverrideURL = v29;

      getOriginalAudioFileURL = [(_AFSpeechParametersMutation *)v5 getOriginalAudioFileURL];
      v32 = [getOriginalAudioFileURL copy];
      originalAudioFileURL = v6->_originalAudioFileURL;
      v6->_originalAudioFileURL = v32;

      v6->_narrowband = [(_AFSpeechParametersMutation *)v5 getNarrowband];
      v6->_detectUtterances = [(_AFSpeechParametersMutation *)v5 getDetectUtterances];
      v6->_censorSpeech = [(_AFSpeechParametersMutation *)v5 getCensorSpeech];
      v6->_farField = [(_AFSpeechParametersMutation *)v5 getFarField];
      v6->_secureOfflineOnly = [(_AFSpeechParametersMutation *)v5 getSecureOfflineOnly];
      v6->_shouldStoreAudioOnDevice = [(_AFSpeechParametersMutation *)v5 getShouldStoreAudioOnDevice];
      [(_AFSpeechParametersMutation *)v5 getMaximumRecognitionDuration];
      v6->_maximumRecognitionDuration = v34;
      getInputOrigin = [(_AFSpeechParametersMutation *)v5 getInputOrigin];
      v36 = [getInputOrigin copy];
      inputOrigin = v6->_inputOrigin;
      v6->_inputOrigin = v36;

      getLocation = [(_AFSpeechParametersMutation *)v5 getLocation];
      v39 = [getLocation copy];
      location = v6->_location;
      v6->_location = v39;

      getJitGrammar = [(_AFSpeechParametersMutation *)v5 getJitGrammar];
      v42 = [getJitGrammar copy];
      jitGrammar = v6->_jitGrammar;
      v6->_jitGrammar = v42;
    }

    else
    {
      v6 = [(AFSpeechParameters *)self copy];
    }
  }

  else
  {
    v6 = [(AFSpeechParameters *)self copy];
  }

  return v6;
}

@end