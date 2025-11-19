@interface AFSpeechParameters
+ (id)newWithBuilder:(id)a3;
- (AFSpeechParameters)initWithBuilder:(id)a3;
- (AFSpeechParameters)initWithCoder:(id)a3;
- (AFSpeechParameters)initWithLanguage:(id)a3 interactionIdentifier:(id)a4 task:(id)a5 loggingContext:(id)a6 applicationName:(id)a7 profile:(id)a8 overrides:(id)a9 modelOverrideURL:(id)a10 originalAudioFileURL:(id)a11 narrowband:(BOOL)a12 detectUtterances:(BOOL)a13 censorSpeech:(BOOL)a14 farField:(BOOL)a15 secureOfflineOnly:(BOOL)a16 shouldStoreAudioOnDevice:(BOOL)a17 maximumRecognitionDuration:(double)a18 inputOrigin:(id)a19 location:(id)a20 jitGrammar:(id)a21;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechParameters

- (void)encodeWithCoder:(id)a3
{
  language = self->_language;
  v12 = a3;
  [v12 encodeObject:language forKey:@"AFSpeechParameters::language"];
  [v12 encodeObject:self->_interactionIdentifier forKey:@"AFSpeechParameters::interactionIdentifier"];
  [v12 encodeObject:self->_task forKey:@"AFSpeechParameters::task"];
  [v12 encodeObject:self->_loggingContext forKey:@"AFSpeechParameters::loggingContext"];
  [v12 encodeObject:self->_applicationName forKey:@"AFSpeechParameters::applicationName"];
  [v12 encodeObject:self->_profile forKey:@"AFSpeechParameters::profile"];
  [v12 encodeObject:self->_overrides forKey:@"AFSpeechParameters::overrides"];
  [v12 encodeObject:self->_modelOverrideURL forKey:@"AFSpeechParameters::modelOverrideURL"];
  [v12 encodeObject:self->_originalAudioFileURL forKey:@"AFSpeechParameters::originalAudioFileURL"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_narrowband];
  [v12 encodeObject:v5 forKey:@"AFSpeechParameters::narrowband"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_detectUtterances];
  [v12 encodeObject:v6 forKey:@"AFSpeechParameters::detectUtterances"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_censorSpeech];
  [v12 encodeObject:v7 forKey:@"AFSpeechParameters::censorSpeech"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_farField];
  [v12 encodeObject:v8 forKey:@"AFSpeechParameters::farField"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_secureOfflineOnly];
  [v12 encodeObject:v9 forKey:@"AFSpeechParameters::secureOfflineOnly"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldStoreAudioOnDevice];
  [v12 encodeObject:v10 forKey:@"AFSpeechParameters::shouldStoreAudioOnDevice"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumRecognitionDuration];
  [v12 encodeObject:v11 forKey:@"AFSpeechParameters::maximumRecognitionDuration"];

  [v12 encodeObject:self->_inputOrigin forKey:@"AFSpeechParameters::inputOrigin"];
  [v12 encodeObject:self->_location forKey:@"AFSpeechParameters::location"];
  [v12 encodeObject:self->_jitGrammar forKey:@"AFSpeechParameters::jitGrammar"];
}

- (AFSpeechParameters)initWithCoder:(id)a3
{
  v3 = a3;
  v44 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::language"];
  v41 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::interactionIdentifier"];
  v40 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::task"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v39 = [v3 decodeObjectOfClasses:v6 forKey:@"AFSpeechParameters::loggingContext"];

  v38 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::applicationName"];
  v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::profile"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v36 = [v3 decodeObjectOfClasses:v10 forKey:@"AFSpeechParameters::overrides"];

  v35 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::modelOverrideURL"];
  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::originalAudioFileURL"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::narrowband"];
  v34 = [v11 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::detectUtterances"];
  v33 = [v12 BOOLValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::censorSpeech"];
  v31 = [v13 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::farField"];
  v15 = [v14 BOOLValue];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::secureOfflineOnly"];
  v17 = [v16 BOOLValue];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::shouldStoreAudioOnDevice"];
  v19 = [v18 BOOLValue];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::maximumRecognitionDuration"];
  [v20 doubleValue];
  v22 = v21;

  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::inputOrigin"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechParameters::location"];
  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v27 = [v3 decodeObjectOfClasses:v26 forKey:@"AFSpeechParameters::jitGrammar"];

  BYTE5(v29) = v19;
  BYTE4(v29) = v17;
  BYTE3(v29) = v15;
  BYTE2(v29) = v31;
  BYTE1(v29) = v33;
  LOBYTE(v29) = v34;
  v43 = [AFSpeechParameters initWithLanguage:"initWithLanguage:interactionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:maximumRecognitionDuration:inputOrigin:location:jitGrammar:" interactionIdentifier:v44 task:v41 loggingContext:v40 applicationName:v39 profile:v38 overrides:v37 modelOverrideURL:v22 originalAudioFileURL:v36 narrowband:v35 detectUtterances:v32 censorSpeech:v29 farField:v30 secureOfflineOnly:v23 shouldStoreAudioOnDevice:v27 maximumRecognitionDuration:? inputOrigin:? location:? jitGrammar:?];

  return v43;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      narrowband = self->_narrowband;
      if (narrowband == [(AFSpeechParameters *)v5 narrowband]&& (detectUtterances = self->_detectUtterances, detectUtterances == [(AFSpeechParameters *)v5 detectUtterances]) && (censorSpeech = self->_censorSpeech, censorSpeech == [(AFSpeechParameters *)v5 censorSpeech]) && (farField = self->_farField, farField == [(AFSpeechParameters *)v5 farField]) && (secureOfflineOnly = self->_secureOfflineOnly, secureOfflineOnly == [(AFSpeechParameters *)v5 secureOfflineOnly]) && (shouldStoreAudioOnDevice = self->_shouldStoreAudioOnDevice, shouldStoreAudioOnDevice == [(AFSpeechParameters *)v5 shouldStoreAudioOnDevice]) && (maximumRecognitionDuration = self->_maximumRecognitionDuration, [(AFSpeechParameters *)v5 maximumRecognitionDuration], maximumRecognitionDuration == v13))
      {
        v16 = [(AFSpeechParameters *)v5 language];
        language = self->_language;
        if (language == v16 || [(NSString *)language isEqual:v16])
        {
          v18 = [(AFSpeechParameters *)v5 interactionIdentifier];
          interactionIdentifier = self->_interactionIdentifier;
          if (interactionIdentifier == v18 || [(NSString *)interactionIdentifier isEqual:v18])
          {
            v20 = [(AFSpeechParameters *)v5 task];
            task = self->_task;
            if (task == v20 || [(NSString *)task isEqual:v20])
            {
              v22 = [(AFSpeechParameters *)v5 loggingContext];
              loggingContext = self->_loggingContext;
              if (loggingContext == v22 || [(NSArray *)loggingContext isEqual:v22])
              {
                v24 = [(AFSpeechParameters *)v5 applicationName];
                applicationName = self->_applicationName;
                if (applicationName == v24 || [(NSString *)applicationName isEqual:v24])
                {
                  v26 = [(AFSpeechParameters *)v5 profile];
                  profile = self->_profile;
                  if (profile == v26 || [(NSData *)profile isEqual:v26])
                  {
                    v28 = [(AFSpeechParameters *)v5 overrides];
                    overrides = self->_overrides;
                    if (overrides == v28 || [(NSDictionary *)overrides isEqual:v28])
                    {
                      v30 = [(AFSpeechParameters *)v5 modelOverrideURL];
                      modelOverrideURL = self->_modelOverrideURL;
                      v44 = v30;
                      if (modelOverrideURL == v30 || [(NSURL *)modelOverrideURL isEqual:v30])
                      {
                        v32 = [(AFSpeechParameters *)v5 originalAudioFileURL];
                        originalAudioFileURL = self->_originalAudioFileURL;
                        v43 = v32;
                        if (originalAudioFileURL == v32 || [(NSURL *)originalAudioFileURL isEqual:v32])
                        {
                          v34 = [(AFSpeechParameters *)v5 inputOrigin];
                          inputOrigin = self->_inputOrigin;
                          v42 = v34;
                          if (inputOrigin == v34 || [(NSString *)inputOrigin isEqual:v34])
                          {
                            v36 = [(AFSpeechParameters *)v5 location];
                            location = self->_location;
                            v41 = v36;
                            if (location == v36 || [(CLLocation *)location isEqual:v36])
                            {
                              v38 = [(AFSpeechParameters *)v5 jitGrammar];
                              jitGrammar = self->_jitGrammar;
                              v40 = v38;
                              v14 = jitGrammar == v38 || [(NSArray *)jitGrammar isEqual:v38];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFSpeechParameters)initWithLanguage:(id)a3 interactionIdentifier:(id)a4 task:(id)a5 loggingContext:(id)a6 applicationName:(id)a7 profile:(id)a8 overrides:(id)a9 modelOverrideURL:(id)a10 originalAudioFileURL:(id)a11 narrowband:(BOOL)a12 detectUtterances:(BOOL)a13 censorSpeech:(BOOL)a14 farField:(BOOL)a15 secureOfflineOnly:(BOOL)a16 shouldStoreAudioOnDevice:(BOOL)a17 maximumRecognitionDuration:(double)a18 inputOrigin:(id)a19 location:(id)a20 jitGrammar:(id)a21
{
  v53 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = a19;
  v36 = a20;
  v37 = a21;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __305__AFSpeechParameters_initWithLanguage_interactionIdentifier_task_loggingContext_applicationName_profile_overrides_modelOverrideURL_originalAudioFileURL_narrowband_detectUtterances_censorSpeech_farField_secureOfflineOnly_shouldStoreAudioOnDevice_maximumRecognitionDuration_inputOrigin_location_jitGrammar___block_invoke;
  v54[3] = &unk_1E7347218;
  v55 = v53;
  v56 = v27;
  v57 = v28;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v61 = v32;
  v62 = v33;
  v68 = a12;
  v69 = a13;
  v70 = a14;
  v71 = a15;
  v72 = a16;
  v73 = a17;
  v67 = a18;
  v63 = v34;
  v64 = v35;
  v65 = v36;
  v66 = v37;
  v51 = v37;
  v50 = v36;
  v49 = v35;
  v48 = v34;
  v47 = v33;
  v46 = v32;
  v38 = v31;
  v39 = v30;
  v40 = v29;
  v41 = v28;
  v42 = v27;
  v43 = v53;
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

- (AFSpeechParameters)initWithBuilder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = AFSpeechParameters;
  v5 = [(AFSpeechParameters *)&v46 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSpeechParametersMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSpeechParametersMutation *)v7 isDirty])
    {
      v8 = [(_AFSpeechParametersMutation *)v7 getLanguage];
      v9 = [v8 copy];
      language = v6->_language;
      v6->_language = v9;

      v11 = [(_AFSpeechParametersMutation *)v7 getInteractionIdentifier];
      v12 = [v11 copy];
      interactionIdentifier = v6->_interactionIdentifier;
      v6->_interactionIdentifier = v12;

      v14 = [(_AFSpeechParametersMutation *)v7 getTask];
      v15 = [v14 copy];
      task = v6->_task;
      v6->_task = v15;

      v17 = [(_AFSpeechParametersMutation *)v7 getLoggingContext];
      v18 = [v17 copy];
      loggingContext = v6->_loggingContext;
      v6->_loggingContext = v18;

      v20 = [(_AFSpeechParametersMutation *)v7 getApplicationName];
      v21 = [v20 copy];
      applicationName = v6->_applicationName;
      v6->_applicationName = v21;

      v23 = [(_AFSpeechParametersMutation *)v7 getProfile];
      v24 = [v23 copy];
      profile = v6->_profile;
      v6->_profile = v24;

      v26 = [(_AFSpeechParametersMutation *)v7 getOverrides];
      v27 = [v26 copy];
      overrides = v6->_overrides;
      v6->_overrides = v27;

      v29 = [(_AFSpeechParametersMutation *)v7 getModelOverrideURL];
      v30 = [v29 copy];
      modelOverrideURL = v6->_modelOverrideURL;
      v6->_modelOverrideURL = v30;

      v32 = [(_AFSpeechParametersMutation *)v7 getOriginalAudioFileURL];
      v33 = [v32 copy];
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
      v36 = [(_AFSpeechParametersMutation *)v7 getInputOrigin];
      v37 = [v36 copy];
      inputOrigin = v6->_inputOrigin;
      v6->_inputOrigin = v37;

      v39 = [(_AFSpeechParametersMutation *)v7 getLocation];
      v40 = [v39 copy];
      location = v6->_location;
      v6->_location = v40;

      v42 = [(_AFSpeechParametersMutation *)v7 getJitGrammar];
      v43 = [v42 copy];
      jitGrammar = v6->_jitGrammar;
      v6->_jitGrammar = v43;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFSpeechParametersMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSpeechParametersMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechParameters);
      v7 = [(_AFSpeechParametersMutation *)v5 getLanguage];
      v8 = [v7 copy];
      language = v6->_language;
      v6->_language = v8;

      v10 = [(_AFSpeechParametersMutation *)v5 getInteractionIdentifier];
      v11 = [v10 copy];
      interactionIdentifier = v6->_interactionIdentifier;
      v6->_interactionIdentifier = v11;

      v13 = [(_AFSpeechParametersMutation *)v5 getTask];
      v14 = [v13 copy];
      task = v6->_task;
      v6->_task = v14;

      v16 = [(_AFSpeechParametersMutation *)v5 getLoggingContext];
      v17 = [v16 copy];
      loggingContext = v6->_loggingContext;
      v6->_loggingContext = v17;

      v19 = [(_AFSpeechParametersMutation *)v5 getApplicationName];
      v20 = [v19 copy];
      applicationName = v6->_applicationName;
      v6->_applicationName = v20;

      v22 = [(_AFSpeechParametersMutation *)v5 getProfile];
      v23 = [v22 copy];
      profile = v6->_profile;
      v6->_profile = v23;

      v25 = [(_AFSpeechParametersMutation *)v5 getOverrides];
      v26 = [v25 copy];
      overrides = v6->_overrides;
      v6->_overrides = v26;

      v28 = [(_AFSpeechParametersMutation *)v5 getModelOverrideURL];
      v29 = [v28 copy];
      modelOverrideURL = v6->_modelOverrideURL;
      v6->_modelOverrideURL = v29;

      v31 = [(_AFSpeechParametersMutation *)v5 getOriginalAudioFileURL];
      v32 = [v31 copy];
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
      v35 = [(_AFSpeechParametersMutation *)v5 getInputOrigin];
      v36 = [v35 copy];
      inputOrigin = v6->_inputOrigin;
      v6->_inputOrigin = v36;

      v38 = [(_AFSpeechParametersMutation *)v5 getLocation];
      v39 = [v38 copy];
      location = v6->_location;
      v6->_location = v39;

      v41 = [(_AFSpeechParametersMutation *)v5 getJitGrammar];
      v42 = [v41 copy];
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