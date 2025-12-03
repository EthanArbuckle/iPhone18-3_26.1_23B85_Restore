@interface CHHapticPattern
+ (id)addHapticsForWheelsOfTime:(id)time;
+ (id)patternForKey:(id)key error:(id *)error;
- (BOOL)doInitWithDictionary:(id)dictionary error:(id *)error;
- (CHHapticPattern)initWithContentsOfURL:(NSURL *)ahapURL error:(NSError *)outError;
- (CHHapticPattern)initWithDictionary:(NSDictionary *)patternDict error:(NSError *)outError;
- (CHHapticPattern)initWithEvents:(NSArray *)events parameterCurves:(NSArray *)parameterCurves error:(NSError *)outError;
- (CHHapticPattern)initWithEvents:(NSArray *)events parameters:(NSArray *)parameters error:(NSError *)outError;
- (NSDictionary)exportDictionaryAndReturnError:(NSError *)outError;
- (NSTimeInterval)duration;
- (id)exportDictionaryWithConfigurationAndReturnError:(id *)error;
- (id)resolveExternalResources:(id)resources error:(id *)error;
@end

@implementation CHHapticPattern

- (NSTimeInterval)duration
{
  v56 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v3 = self->_events;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v4)
  {
    v5 = *v49;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v49 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v48 + 1) + 8 * i);
        [v8 fullDuration];
        v10 = v9;
        [v8 relativeTime];
        if (v10 + v11 > v6)
        {
          [v8 relativeTime];
          v6 = v10 + v12;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = self->_parameters;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v14)
  {
    v15 = *v45;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v44 + 1) + 8 * j);
        [v17 relativeTime];
        if (v18 > v6)
        {
          [v17 relativeTime];
          v6 = v19;
        }
      }

      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v14);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = self->_parameterCurves;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v21)
  {
    v22 = *v41;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v40 + 1) + 8 * k);
        [v24 relativeTime];
        v26 = v25;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        controlPoints = [v24 controlPoints];
        v28 = [controlPoints countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v28)
        {
          v29 = *v37;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v37 != v29)
              {
                objc_enumerationMutation(controlPoints);
              }

              v31 = *(*(&v36 + 1) + 8 * m);
              [v31 relativeTime];
              if (v26 + v32 > v6)
              {
                [v31 relativeTime];
                v6 = v26 + v33;
              }
            }

            v28 = [controlPoints countByEnumeratingWithState:&v36 objects:v52 count:16];
          }

          while (v28);
        }
      }

      v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v21);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CHHapticPattern)initWithEvents:(NSArray *)events parameters:(NSArray *)parameters error:(NSError *)outError
{
  v7 = events;
  v8 = parameters;
  setupHapticLogScopes();
  v15.receiver = self;
  v15.super_class = CHHapticPattern;
  v9 = [(CHHapticPattern *)&v15 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v7];
    v11 = v9->_events;
    v9->_events = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v8];
    v13 = v9->_parameters;
    v9->_parameters = v12;
  }

  return v9;
}

- (CHHapticPattern)initWithEvents:(NSArray *)events parameterCurves:(NSArray *)parameterCurves error:(NSError *)outError
{
  v7 = events;
  v8 = parameterCurves;
  setupHapticLogScopes();
  v15.receiver = self;
  v15.super_class = CHHapticPattern;
  v9 = [(CHHapticPattern *)&v15 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v7];
    v11 = v9->_events;
    v9->_events = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v8];
    v13 = v9->_parameterCurves;
    v9->_parameterCurves = v12;
  }

  return v9;
}

- (CHHapticPattern)initWithDictionary:(NSDictionary *)patternDict error:(NSError *)outError
{
  v6 = patternDict;
  setupHapticLogScopes();
  v10.receiver = self;
  v10.super_class = CHHapticPattern;
  v7 = [(CHHapticPattern *)&v10 init];
  v8 = v7;
  if (v7 && ![(CHHapticPattern *)v7 doInitWithDictionary:v6 error:outError])
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)doInitWithDictionary:(id)dictionary error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(HapticDictionaryReader);
  v8 = [(HapticDictionaryReader *)v7 readAndVerifyVersion:dictionaryCopy error:error];
  version = self->_version;
  self->_version = v8;

  if (!self->_version)
  {
    v12 = 0;
    goto LABEL_16;
  }

  [(CHHapticPattern *)self version];
  if (v10 > 1.0)
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
LABEL_11:
        v14 = [(HapticDictionaryReader *)v7 parseConfiguration:dictionaryCopy error:error];
        configurationDictionary = self->_configurationDictionary;
        self->_configurationDictionary = v14;

        goto LABEL_12;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *&buf[4] = "CHHapticPattern.mm";
      *&buf[12] = 1024;
      *&buf[14] = 151;
      *&buf[18] = 2080;
      *buf = 136315906;
      *&buf[20] = "[CHHapticPattern doInitWithDictionary:error:]";
      *&buf[28] = 2048;
      *&buf[30] = 0x3FF0000000000000;
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Pattern version > %.1f - looking for config dictionary", buf, 0x26u);
    }

    goto LABEL_11;
  }

LABEL_12:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__2;
  *&buf[32] = __Block_byref_object_dispose__2;
  v24 = 0;
  v16 = [(HapticDictionaryReader *)v7 scanForEmbeddedResources:dictionaryCopy];
  embeddedResourceInfo = self->_embeddedResourceInfo;
  self->_embeddedResourceInfo = v16;

  ahapBaseURL = self->_ahapBaseURL;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__CHHapticPattern_doInitWithDictionary_error___block_invoke;
  v22[3] = &unk_2781C9528;
  v22[4] = self;
  v22[5] = buf;
  [(HapticDictionaryReader *)v7 parseEventsAndParameters:dictionaryCopy withBaseURL:ahapBaseURL reply:v22];
  v19 = *(*&buf[8] + 40);
  v12 = v19 == 0;
  if (error && v19)
  {
    *error = v19;
  }

  _Block_object_dispose(buf, 8);

LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

void __46__CHHapticPattern_doInitWithDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  *(v13 + 48) = v9;
  v23 = v9;

  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = v10;
  v17 = v10;

  v18 = *(a1 + 32);
  v19 = *(v18 + 64);
  *(v18 + 64) = v11;
  v20 = v11;

  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v12;
}

- (CHHapticPattern)initWithContentsOfURL:(NSURL *)ahapURL error:(NSError *)outError
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = ahapURL;
  setupHapticLogScopes();
  v33.receiver = self;
  v33.super_class = CHHapticPattern;
  v7 = [(CHHapticPattern *)&v33 init];
  if (v7)
  {
    uRLByDeletingLastPathComponent = [(NSURL *)v6 URLByDeletingLastPathComponent];
    ahapBaseURL = v7->_ahapBaseURL;
    v7->_ahapBaseURL = uRLByDeletingLastPathComponent;

    if ([(NSURL *)v6 isFileURL])
    {
      path = [(NSURL *)v6 path];
      pathExtension = [path pathExtension];
      if ([pathExtension isEqualToString:@"json"])
      {

        goto LABEL_9;
      }

      path2 = [(NSURL *)v6 path];
      pathExtension2 = [path2 pathExtension];
      v16 = [pathExtension2 isEqualToString:@"ahap"];

      if (v16)
      {
LABEL_9:
        v17 = MEMORY[0x277CBEA90];
        path3 = [(NSURL *)v6 path];
        v19 = [v17 dataWithContentsOfFile:path3];

        v32 = 0;
        v20 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v19 options:0 error:&v32];
        v21 = v32;

        if (v20)
        {
          v31 = v21;
          v22 = [(CHHapticPattern *)v7 doInitWithDictionary:v20 error:&v31];
          v23 = v31;

          v21 = v23;
          if (v22)
          {
            if (!outError)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

LABEL_27:

          v7 = 0;
          if (!outError)
          {
LABEL_29:

            goto LABEL_30;
          }

LABEL_28:
          v27 = v21;
          *outError = v21;
          goto LABEL_29;
        }

LABEL_19:
        if (kHAPIScope)
        {
          v25 = *kHAPIScope;
          if (!v25)
          {
LABEL_26:
            v20 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          v25 = MEMORY[0x277D86220];
          v26 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v35 = "CHHapticPattern.mm";
          v36 = 1024;
          v37 = 212;
          v38 = 2080;
          v39 = "[CHHapticPattern initWithContentsOfURL:error:]";
          v40 = 2112;
          v41 = v21;
          _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: AHAP dictionary is corrupt: %@", buf, 0x26u);
        }

        goto LABEL_26;
      }

      if (kHAPIScope)
      {
        v12 = *kHAPIScope;
        if (!v12)
        {
          v13 = -4809;
          goto LABEL_18;
        }
      }

      else
      {
        v12 = MEMORY[0x277D86220];
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v35 = "CHHapticPattern.mm";
        v36 = 1024;
        v37 = 197;
        v38 = 2080;
        v39 = "[CHHapticPattern initWithContentsOfURL:error:]";
        _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: File type is not supported", buf, 0x1Cu);
      }

      v13 = -4809;
    }

    else
    {
      if (kHAPIScope)
      {
        v12 = *kHAPIScope;
        if (!v12)
        {
          v13 = -4851;
LABEL_18:
          v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:v13 userInfo:0];

          v7 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        v12 = MEMORY[0x277D86220];
        v24 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v35 = "CHHapticPattern.mm";
        v36 = 1024;
        v37 = 202;
        v38 = 2080;
        v39 = "[CHHapticPattern initWithContentsOfURL:error:]";
        _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Incoming URL not a valid file path", buf, 0x1Cu);
      }

      v13 = -4851;
    }

    goto LABEL_18;
  }

LABEL_30:

  v28 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSDictionary)exportDictionaryAndReturnError:(NSError *)outError
{
  v4 = objc_alloc_init(HapticDictionaryWriter);
  v5 = [(HapticDictionaryWriter *)v4 patternToDictionary:self->_version events:self->_events parameters:self->_parameters parameterCurves:self->_parameterCurves embeddedResourceInfo:self->_embeddedResourceInfo configuration:0];

  return v5;
}

- (id)exportDictionaryWithConfigurationAndReturnError:(id *)error
{
  v4 = objc_alloc_init(HapticDictionaryWriter);
  v5 = [(HapticDictionaryWriter *)v4 patternToDictionary:self->_version events:self->_events parameters:self->_parameters parameterCurves:self->_parameterCurves embeddedResourceInfo:self->_embeddedResourceInfo configuration:self->_configurationDictionary];

  return v5;
}

- (id)resolveExternalResources:(id)resources error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  serverConfig = [resourcesCopy serverConfig];
  supportsAudioPlayback = [serverConfig supportsAudioPlayback];

  v7 = 0;
  *&v8 = 136315650;
  v33 = v8;
  while (1)
  {
    events = [(CHHapticPattern *)self events];
    v10 = v7 < [events count];

    if (!v10)
    {
      v30 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
      goto LABEL_27;
    }

    events2 = [(CHHapticPattern *)self events];
    v12 = [events2 objectAtIndexedSubscript:v7];

    type = [v12 type];
    if ([type isEqualToString:CHHapticEventTypeAudioResourceIndex])
    {
      break;
    }

    if ([type isEqualToString:CHHapticEventTypeAudioCustom])
    {
      v24 = [resourcesCopy doReferenceAudioResourceByID:{objc_msgSend(v12, "audioResID")}];
      v25 = error ? v24 : 1;
      if ((v25 & 1) == 0)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4824 userInfo:0];
        goto LABEL_26;
      }
    }

    [v5 addObject:v12];
LABEL_22:

    ++v7;
  }

  if (!supportsAudioPlayback)
  {
    if (kHAPIScope)
    {
      v26 = *kHAPIScope;
      if (!v26)
      {
LABEL_20:
        v28 = [CHHapticEvent alloc];
        v29 = CHHapticEventTypeAudioContinuous;
        eventParameters = [v12 eventParameters];
        [v12 relativeTime];
        options = [CHHapticEvent initWithEventType:v28 parameters:"initWithEventType:parameters:relativeTime:duration:" relativeTime:v29 duration:eventParameters];
        [v5 addObject:options];
        goto LABEL_21;
      }
    }

    else
    {
      v26 = MEMORY[0x277D86220];
      v27 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v33;
      v38 = "CHHapticPattern.mm";
      v39 = 1024;
      v40 = 365;
      v41 = 2080;
      v42 = "[CHHapticPattern resolveExternalResources:error:]";
      _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Skipping Custom Audio event - server does not support audio", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  audioResID = [v12 audioResID];
  v15 = [(NSMutableArray *)self->_embeddedResourceInfo objectAtIndexedSubscript:audioResID];
  v16 = [v15 url];
  eventParameters = FullURLPathFromURL(v16, self->_ahapBaseURL);

  v18 = [(NSMutableArray *)self->_embeddedResourceInfo objectAtIndexedSubscript:audioResID];
  options = [v18 options];

  v20 = [resourcesCopy doRegisterAudioResource:eventParameters options:options fromPattern:1 error:error];
  if (v20)
  {
    v21 = [CHHapticEvent alloc];
    eventParameters2 = [v12 eventParameters];
    [v12 relativeTime];
    v23 = [(CHHapticEvent *)v21 initWithAudioResourceID:v20 parameters:eventParameters2 relativeTime:?];
    [v5 addObject:v23];

LABEL_21:
    goto LABEL_22;
  }

LABEL_26:
  v30 = 0;
LABEL_27:

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)addHapticsForWheelsOfTime:(id)time
{
  v61 = *MEMORY[0x277D85DE8];
  v56 = 0;
  timeCopy = time;
  [CHHapticEvent parameterValuesFromLegacyEventType:26453 sharpness:&v56 + 4 fullness:&v56 error:0];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [timeCopy mutableCopy];
  v4 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v4)
  {
    v45 = *v53;
    do
    {
      v46 = v4;
      for (i = 0; i != v46; ++i)
      {
        if (*v53 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v52 + 1) + 8 * i);
        type = [v6 type];
        v8 = [type isEqualToString:CHHapticEventTypeWheelsOfTime];

        if (v8)
        {
          [v6 relativeTime];
          v10 = v9;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          eventParameters = [v6 eventParameters];
          v12 = [eventParameters countByEnumeratingWithState:&v48 objects:v59 count:16];
          v13 = -1.0;
          if (v12)
          {
            v14 = *v49;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v49 != v14)
                {
                  objc_enumerationMutation(eventParameters);
                }

                v16 = *(*(&v48 + 1) + 8 * j);
                parameterID = [v16 parameterID];
                v18 = [parameterID isEqualToString:CHHapticEventParameterIDHapticIntensity];

                if (v18)
                {
                  [v16 value];
                  v13 = v19;
                  goto LABEL_17;
                }
              }

              v12 = [eventParameters countByEnumeratingWithState:&v48 objects:v59 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          v20 = [CHHapticEvent alloc];
          v21 = CHHapticEventTypeHapticTransient;
          v22 = [CHHapticEventParameter alloc];
          if (v13 < 0.0)
          {
            LODWORD(v23) = HIDWORD(v56);
            v43 = [(CHHapticEventParameter *)v22 initWithParameterID:CHHapticEventParameterIDHapticSharpnessSelect value:v23];
            v57[0] = v43;
            v29 = [CHHapticEventParameter alloc];
            LODWORD(v30) = v56;
            v42 = [(CHHapticEventParameter *)v29 initWithParameterID:CHHapticEventParameterIDHapticFullnessSelect value:v30];
            v57[1] = v42;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
            v3 = v28;
          }

          else
          {
            *&v23 = v13;
            v44 = [(CHHapticEventParameter *)v22 initWithParameterID:CHHapticEventParameterIDHapticIntensity value:v23];
            v58[0] = v44;
            v24 = [CHHapticEventParameter alloc];
            LODWORD(v25) = HIDWORD(v56);
            v41 = [(CHHapticEventParameter *)v24 initWithParameterID:CHHapticEventParameterIDHapticSharpnessSelect value:v25];
            v58[1] = v41;
            v26 = [CHHapticEventParameter alloc];
            LODWORD(v27) = v56;
            v40 = [(CHHapticEventParameter *)v26 initWithParameterID:CHHapticEventParameterIDHapticFullnessSelect value:v27];
            v58[2] = v40;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
            v39 = v28;
          }

          v31 = v10;
          v32 = [(CHHapticEvent *)v20 initWithEventType:v21 parameters:v28 relativeTime:v31];
          v33 = v3;
          v35 = v42;
          v34 = v43;
          if (v13 >= 0.0)
          {

            v33 = v40;
            v35 = v41;
            v34 = v44;
          }

          [obj addObject:v32];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v4);
  }

  v36 = *MEMORY[0x277D85DE8];

  return obj;
}

+ (id)patternForKey:(id)key error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v51 = "CHHapticPattern.mm";
    v52 = 1024;
    v53 = 482;
    v54 = 2080;
    v55 = "+[CHHapticPattern patternForKey:error:]";
    v56 = 2112;
    v57 = keyCopy;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Creating pattern for key '%@'", buf, 0x26u);
  }

LABEL_8:
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v51 = "CHHapticPattern.mm";
    v52 = 1024;
    v53 = 484;
    v54 = 2080;
    v55 = "+[CHHapticPattern patternForKey:error:]";
    v56 = 2112;
    v57 = @"/Library/Audio/Tunings/Generic/Haptics/Library/hapticpatternlibrary.plist";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern library path: %@", buf, 0x26u);
  }

LABEL_15:
  v49 = 0;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/Library/Audio/Tunings/Generic/Haptics/Library/hapticpatternlibrary.plist" options:0 error:&v49];
  v12 = v49;
  if (v12)
  {
    v13 = v12;
    if (kHAPIScope)
    {
      v14 = *kHAPIScope;
      if (!v14)
      {
LABEL_26:
        v17 = v13;
        v18 = 0;
        *error = v13;
        goto LABEL_102;
      }
    }

    else
    {
      v14 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v51 = "CHHapticPattern.mm";
      v52 = 1024;
      v53 = 487;
      v54 = 2080;
      v55 = "+[CHHapticPattern patternForKey:error:]";
      v56 = 2112;
      v57 = v13;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to read pattern library data: %@", buf, 0x26u);
    }

    goto LABEL_26;
  }

  if (kHAPIScope)
  {
    v15 = *kHAPIScope;
    if (!v15)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v51 = "CHHapticPattern.mm";
    v52 = 1024;
    v53 = 491;
    v54 = 2080;
    v55 = "+[CHHapticPattern patternForKey:error:]";
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Read pattern library data", buf, 0x1Cu);
  }

LABEL_31:
  v48 = 0;
  v20 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:&v48];
  v21 = v48;
  if (!v21)
  {
    if (kHAPIScope)
    {
      v23 = *kHAPIScope;
      if (!v23)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v23 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v51 = "CHHapticPattern.mm";
      v52 = 1024;
      v53 = 499;
      v54 = 2080;
      v55 = "+[CHHapticPattern patternForKey:error:]";
      v56 = 2112;
      v57 = v20;
      _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Loaded pattern library dict:\n%@", buf, 0x26u);
    }

LABEL_47:
    v27 = [(__CFString *)v20 objectForKeyedSubscript:keyCopy];
    if (v27)
    {
      if (kHAPIScope)
      {
        v28 = *kHAPIScope;
        if (!v28)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v28 = MEMORY[0x277D86220];
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v51 = "CHHapticPattern.mm";
        v52 = 1024;
        v53 = 507;
        v54 = 2080;
        v55 = "+[CHHapticPattern patternForKey:error:]";
        v56 = 2112;
        v57 = keyCopy;
        v58 = 2112;
        v59 = v27;
        _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: '%@' path: %@", buf, 0x30u);
      }

LABEL_58:
      v47 = 0;
      v31 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v27 options:0 error:&v47];
      v13 = v47;
      if (!v13 && v31)
      {
        if (kHAPIScope)
        {
          v32 = *kHAPIScope;
          if (!v32)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v32 = MEMORY[0x277D86220];
          v37 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v51 = "CHHapticPattern.mm";
          v52 = 1024;
          v53 = 515;
          v54 = 2080;
          v55 = "+[CHHapticPattern patternForKey:error:]";
          v56 = 2112;
          v57 = keyCopy;
          _os_log_impl(&dword_21569A000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Read '%@' pattern data", buf, 0x26u);
        }

LABEL_80:
        v46 = 0;
        v38 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v31 options:0 error:&v46];
        v13 = v46;
        if (!v13 && v38)
        {
          if (kHAPIScope)
          {
            v39 = *kHAPIScope;
            if (!v39)
            {
LABEL_97:
              v18 = [[CHHapticPattern alloc] initWithDictionary:v38 error:error];
              objc_storeStrong(&v18->_patternID, key);
              goto LABEL_98;
            }
          }

          else
          {
            v39 = MEMORY[0x277D86220];
            v43 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v51 = "CHHapticPattern.mm";
            v52 = 1024;
            v53 = 523;
            v54 = 2080;
            v55 = "+[CHHapticPattern patternForKey:error:]";
            v56 = 2112;
            v57 = keyCopy;
            _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Serialized '%@' pattern dict", buf, 0x26u);
          }

          goto LABEL_97;
        }

        if (kHAPIScope)
        {
          v40 = *kHAPIScope;
          if (!v40)
          {
LABEL_92:
            v42 = v13;
            v18 = 0;
            *error = v13;
LABEL_98:

            goto LABEL_99;
          }
        }

        else
        {
          v40 = MEMORY[0x277D86220];
          v41 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v51 = "CHHapticPattern.mm";
          v52 = 1024;
          v53 = 519;
          v54 = 2080;
          v55 = "+[CHHapticPattern patternForKey:error:]";
          v56 = 2112;
          v57 = v13;
          _os_log_impl(&dword_21569A000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to serialize pattern data: %@", buf, 0x26u);
        }

        goto LABEL_92;
      }

      if (kHAPIScope)
      {
        v33 = *kHAPIScope;
        if (!v33)
        {
LABEL_75:
          v36 = v13;
          v18 = 0;
          *error = v13;
LABEL_99:

          goto LABEL_100;
        }
      }

      else
      {
        v33 = MEMORY[0x277D86220];
        v35 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v51 = "CHHapticPattern.mm";
        v52 = 1024;
        v53 = 511;
        v54 = 2080;
        v55 = "+[CHHapticPattern patternForKey:error:]";
        v56 = 2112;
        v57 = v13;
        _os_log_impl(&dword_21569A000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to read pattern data: %@", buf, 0x26u);
      }

      goto LABEL_75;
    }

    if (kHAPIScope)
    {
      v29 = *kHAPIScope;
      if (!v29)
      {
LABEL_70:
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4851 userInfo:0];
        v13 = 0;
        *error = v18 = 0;
LABEL_100:

        goto LABEL_101;
      }
    }

    else
    {
      v29 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v51 = "CHHapticPattern.mm";
      v52 = 1024;
      v53 = 503;
      v54 = 2080;
      v55 = "+[CHHapticPattern patternForKey:error:]";
      v56 = 2112;
      v57 = keyCopy;
      _os_log_impl(&dword_21569A000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Haptic pattern with key '%@' not found", buf, 0x26u);
    }

    goto LABEL_70;
  }

  v13 = v21;
  if (!kHAPIScope)
  {
    v22 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
    goto LABEL_39;
  }

  v22 = *kHAPIScope;
  if (v22)
  {
LABEL_39:
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v51 = "CHHapticPattern.mm";
      v52 = 1024;
      v53 = 495;
      v54 = 2080;
      v55 = "+[CHHapticPattern patternForKey:error:]";
      v56 = 2112;
      v57 = v13;
      _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to load pattern library: %@", buf, 0x26u);
    }
  }

  v25 = v13;
  v18 = 0;
  *error = v13;
LABEL_101:

LABEL_102:
  v44 = *MEMORY[0x277D85DE8];

  return v18;
}

@end