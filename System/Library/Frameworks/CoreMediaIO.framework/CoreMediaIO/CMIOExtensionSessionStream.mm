@interface CMIOExtensionSessionStream
+ (id)sessionStreamWithPropertyStates:(id)states provider:(id)provider;
- (CMIOExtensionSessionStream)initWithPropertyStates:(id)states provider:(id)provider;
- (NSArray)formats;
- (NSSet)availableProperties;
- (id)cachedPropertyStateForProperty:(id)property;
- (id)cachedPropertyStatesForProperties:(id)properties;
- (id)copySample:(BOOL *)sample streamID:(id)d error:(id *)error;
- (id)description;
- (void)captureAsyncStillImage:(int64_t)image options:(id)options reply:(id)reply;
- (void)completeTransaction;
- (void)dealloc;
- (void)enqueueReactionEffect:(id)effect reply:(id)reply;
- (void)propertyStatesForProperties:(id)availableProperties reply:(id)reply;
- (void)receivedSample:(id)sample streamID:(id)d;
- (void)receivedScheduledOutput:(id)output streamID:(id)d;
- (void)setActiveFormatIndex:(unint64_t)index reply:(id)reply;
- (void)setPropertyValues:(id)values reply:(id)reply;
- (void)startStream:(id)stream;
- (void)stopStream:(id)stream;
- (void)updatePropertyStates:(id)states streamID:(id)d;
@end

@implementation CMIOExtensionSessionStream

+ (id)sessionStreamWithPropertyStates:(id)states provider:(id)provider
{
  v4 = [objc_alloc(objc_opt_class()) initWithPropertyStates:states provider:provider];

  return v4;
}

- (CMIOExtensionSessionStream)initWithPropertyStates:(id)states provider:(id)provider
{
  v27 = *MEMORY[0x277D85DE8];
  if (states && provider)
  {
    v18.receiver = self;
    v18.super_class = CMIOExtensionSessionStream;
    v6 = [(CMIOExtensionSessionStream *)&v18 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      v8 = +[CMIOExtensionStream internalProperties];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __62__CMIOExtensionSessionStream_initWithPropertyStates_provider___block_invoke;
      v17[3] = &unk_27885C010;
      v17[4] = v8;
      v7->_availableProperties = [states keysOfEntriesPassingTest:v17];
      v7->_localizedName = [objc_msgSend(states objectForKeyedSubscript:{0x284358E78), "value"}];
      v9 = [objc_msgSend(states objectForKeyedSubscript:{0x284358E98), "value"}];
      v7->_streamID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
      v7->_direction = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358EB8), "value"), "integerValue"}];
      v10 = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358ED8), "value"), "integerValue"}];
      v7->_clockType = v10;
      if (v10 == 2)
      {
        v7->_customClockConfiguration = [objc_msgSend(states objectForKeyedSubscript:{0x284358EF8), "value"}];
      }

      v7->_formats = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358F18), "attributes"), "validValues"}];
      v11 = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{@"CMIOExtensionPropertyStreamActiveFormatIndex", "value"), "unsignedIntegerValue"}];
      v7->_activeFormatIndex = v11;
      v7->_activeFormatMediaType = CMFormatDescriptionGetMediaType([-[NSArray objectAtIndexedSubscript:](v7->_formats objectAtIndexedSubscript:{v11), "formatDescription"}]);
      v7->_propertyStates = [states mutableCopy];
      objc_storeWeak(&v7->_provider, provider);
      v7->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionSessionStream: ID %@>", v7->_streamID];
      if (CMIOModuleLogLevel_once != -1)
      {
        [CMIOExtensionSessionStream initWithPropertyStates:provider:];
      }

      if (CMIOModuleLogLevel_cmioLevel >= 1)
      {
        v12 = CMIOLog();
        if (v12)
        {
          v13 = v12;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
            *buf = 136315906;
            v20 = v14;
            v21 = 1024;
            v22 = 163;
            v23 = 2080;
            v24 = "[CMIOExtensionSessionStream initWithPropertyStates:provider:]";
            v25 = 2112;
            v26 = v7;
            _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
          }
        }
      }
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v3 = CMIOLog();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v9 = 1024;
        v10 = 170;
        v11 = 2080;
        v12 = "[CMIOExtensionSessionStream dealloc]";
        v13 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  v6.receiver = self;
  v6.super_class = CMIOExtensionSessionStream;
  [(CMIOExtensionSessionStream *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (void)updatePropertyStates:(id)states streamID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v6 = CMIOLog();
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 190;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionStream updatePropertyStates:streamID:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  if ([states count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_propertyStates addEntriesFromDictionary:states];
    os_unfair_lock_unlock(&self->_lock);
    v8 = [states objectForKeyedSubscript:@"CMIOExtensionPropertyStreamActiveFormatIndex"];
    if (v8)
    {
      v9 = [objc_msgSend(v8 "value")];
      [(CMIOExtensionSessionStream *)self setActiveFormatIndex:v9];
      self->_activeFormatMediaType = CMFormatDescriptionGetMediaType([-[NSArray objectAtIndexedSubscript:](self->_formats objectAtIndexedSubscript:{self->_activeFormatIndex), "formatDescription"}]);
      [objc_loadWeak(&self->_delegate) stream:self activeFormatIndexChanged:v9];
    }

    [objc_loadWeak(&self->_delegate) stream:self propertiesChanged:states];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)receivedSample:(id)sample streamID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v6 = CMIOLog();
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316162;
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v11 = 1024;
        v12 = 215;
        v13 = 2080;
        v14 = "[CMIOExtensionSessionStream receivedSample:streamID:]";
        v15 = 2112;
        selfCopy = self;
        v17 = 2112;
        sampleCopy = sample;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, sample %@", &v9, 0x30u);
      }
    }
  }

  [objc_loadWeak(&self->_delegate) stream:self receivedSampleBuffer:{objc_msgSend(sample, "sampleBuffer")}];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)copySample:(BOOL *)sample streamID:(id)d error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v8 = CMIOLog();
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v17 = 1024;
        v18 = 222;
        v19 = 2080;
        v20 = "[CMIOExtensionSessionStream copySample:streamID:error:]";
        v21 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v15, 0x26u);
      }
    }
  }

  *sample = 0;
  *error = 0;
  v10 = [objc_loadWeak(&self->_delegate) stream:self copySampleBuffer:sample error:error];
  if (v10)
  {
    v11 = v10;
    v12 = [[CMIOExtensionSample alloc] initWithCMSampleBuffer:v10];
    CFRelease(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)receivedScheduledOutput:(id)output streamID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v6 = CMIOLog();
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v11 = 1024;
        v12 = 238;
        v13 = 2080;
        v14 = "[CMIOExtensionSessionStream receivedScheduledOutput:streamID:]";
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v9, 0x26u);
      }
    }
  }

  [objc_loadWeak(&self->_delegate) stream:self scheduledOutputChanged:output];
  v8 = *MEMORY[0x277D85DE8];
}

- (NSSet)availableProperties
{
  v2 = self->_availableProperties;

  return v2;
}

- (id)cachedPropertyStateForProperty:(id)property
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_propertyStates objectForKey:property];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)cachedPropertyStatesForProperties:(id)properties
{
  v30 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v5 = CMIOLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v24 = 1024;
        v25 = 271;
        v26 = 2080;
        v27 = "[CMIOExtensionSessionStream cachedPropertyStatesForProperties:]";
        v28 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (properties)
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [properties countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(properties);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          os_unfair_lock_lock(&self->_lock);
          v13 = [(NSMutableDictionary *)self->_propertyStates objectForKey:v12];
          os_unfair_lock_unlock(&self->_lock);
          if (v13)
          {
            [v7 setObject:v13 forKey:v12];
          }
        }

        v9 = [properties countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_propertyStates];
    os_unfair_lock_unlock(&self->_lock);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)propertyStatesForProperties:(id)availableProperties reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v19 = 1024;
        v20 = 303;
        v21 = 2080;
        v22 = "[CMIOExtensionSessionStream propertyStatesForProperties:reply:]";
        v23 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (!availableProperties)
  {
    availableProperties = self->_availableProperties;
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v10 = hostContext;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__CMIOExtensionSessionStream_propertyStatesForProperties_reply___block_invoke;
    v14[3] = &unk_27885C038;
    v14[4] = self;
    v14[5] = reply;
    [v10 streamPropertyStatesWithStreamID:uUIDString properties:availableProperties reply:v14];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v15 = *MEMORY[0x277CCA450];
    v16 = @"Invalid session";
    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __64__CMIOExtensionSessionStream_propertyStatesForProperties_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(*(a1 + 32) + 24) addEntriesFromDictionary:a2];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)setPropertyValues:(id)values reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v19 = 1024;
        v20 = 325;
        v21 = 2080;
        v22 = "[CMIOExtensionSessionStream setPropertyValues:reply:]";
        v23 = 2112;
        selfCopy = self;
        v25 = 2112;
        valuesCopy = values;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, propertyValues %@", buf, 0x30u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v10 = hostContext;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__CMIOExtensionSessionStream_setPropertyValues_reply___block_invoke;
    v14[3] = &unk_27885C060;
    v14[4] = reply;
    [v10 setStreamPropertyValuesWithStreamID:uUIDString propertyValues:values reply:v14];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v15 = *MEMORY[0x277CCA450];
    v16 = @"Invalid session";
    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)formats
{
  v2 = self->_formats;

  return v2;
}

- (void)setActiveFormatIndex:(unint64_t)index reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v26 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v27 = 1024;
        v28 = 344;
        v29 = 2080;
        v30 = "[CMIOExtensionSessionStream setActiveFormatIndex:reply:]";
        v31 = 2112;
        selfCopy = self;
        v33 = 1024;
        indexCopy = index;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %d", buf, 0x2Cu);
      }
    }
  }

  if ([(NSArray *)self->_formats count]<= index)
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSessionStream setActiveFormatIndex:reply:];
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"Invalid format value";
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v24;
    v18 = &v23;
    goto LABEL_15;
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (!hostContext)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v21 = *MEMORY[0x277CCA450];
    v22 = @"Invalid session";
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v22;
    v18 = &v21;
LABEL_15:
    (*(reply + 2))(reply, [v14 errorWithDomain:v15 code:-50 userInfo:{objc_msgSend(v16, "dictionaryWithObjects:forKeys:count:", v17, v18, 1)}]);
    goto LABEL_16;
  }

  v10 = hostContext;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", index), @"CMIOExtensionPropertyStreamActiveFormatIndex"}];
  uUIDString = [(NSUUID *)self->_streamID UUIDString];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__CMIOExtensionSessionStream_setActiveFormatIndex_reply___block_invoke;
  v20[3] = &unk_27885C088;
  v20[5] = reply;
  v20[6] = index;
  v20[4] = self;
  [v10 setStreamPropertyValuesWithStreamID:uUIDString propertyValues:v11 reply:v20];
LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __57__CMIOExtensionSessionStream_setActiveFormatIndex_reply___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMIOLog();
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__CMIOExtensionSessionStream_setActiveFormatIndex_reply___block_invoke_cold_1();
    }
  }

  else
  {
    *(a1[4] + 112) = a1[6];
  }

  return (*(a1[5] + 16))();
}

- (void)startStream:(id)stream
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v5 = CMIOLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v17 = 1024;
        v18 = 372;
        v19 = 2080;
        v20 = "[CMIOExtensionSessionStream startStream:]";
        v21 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v8 = hostContext;
    self->_streaming = 1;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__CMIOExtensionSessionStream_startStream___block_invoke;
    v12[3] = &unk_27885C0B0;
    v12[4] = self;
    v12[5] = stream;
    [v8 startStreamWithStreamID:uUIDString reply:v12];
  }

  else
  {
    v10 = *MEMORY[0x277CCA590];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"Invalid session";
    (*(stream + 2))(stream, [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __42__CMIOExtensionSessionStream_startStream___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMIOLog();
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__CMIOExtensionSessionStream_startStream___block_invoke_cold_1();
    }

    *(*(a1 + 32) + 56) = 0;
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)stopStream:(id)stream
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v5 = CMIOLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v17 = 1024;
        v18 = 391;
        v19 = 2080;
        v20 = "[CMIOExtensionSessionStream stopStream:]";
        v21 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v8 = hostContext;
    self->_streaming = 0;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__CMIOExtensionSessionStream_stopStream___block_invoke;
    v12[3] = &unk_27885C060;
    v12[4] = stream;
    [v8 stopStreamWithStreamID:uUIDString reply:v12];
  }

  else
  {
    v10 = *MEMORY[0x277CCA590];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"Invalid session";
    (*(stream + 2))(stream, [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __41__CMIOExtensionSessionStream_stopStream___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMIOLog();
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __41__CMIOExtensionSessionStream_stopStream___block_invoke_cold_1();
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)captureAsyncStillImage:(int64_t)image options:(id)options reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v9 = CMIOLog();
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v21 = 1024;
        v22 = 409;
        v23 = 2080;
        v24 = "[CMIOExtensionSessionStream captureAsyncStillImage:options:reply:]";
        v25 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v12 = hostContext;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__CMIOExtensionSessionStream_captureAsyncStillImage_options_reply___block_invoke;
    v16[3] = &unk_27885C0D8;
    v16[4] = reply;
    [v12 captureAsyncStillImageWithStreamID:uUIDString uniqueID:image options:options reply:v16];
  }

  else
  {
    v14 = *MEMORY[0x277CCA590];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"Invalid session";
    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v14 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __67__CMIOExtensionSessionStream_captureAsyncStillImage_options_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = CMIOLog();
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __67__CMIOExtensionSessionStream_captureAsyncStillImage_options_reply___block_invoke_cold_1();
      }
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);

    return v7();
  }
}

- (void)enqueueReactionEffect:(id)effect reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v16 = 1024;
        v17 = 429;
        v18 = 2080;
        v19 = "[CMIOExtensionSessionStream enqueueReactionEffect:reply:]";
        v20 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    [hostContext enqueueReactionEffect:-[NSUUID UUIDString](self->_streamID reactionType:"UUIDString") reply:{effect, reply}];
  }

  else
  {
    v10 = *MEMORY[0x277CCA590];
    v12 = *MEMORY[0x277CCA450];
    v13 = @"Invalid session";
    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)completeTransaction
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setActiveFormatIndex:reply:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__CMIOExtensionSessionStream_setActiveFormatIndex_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__CMIOExtensionSessionStream_startStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__CMIOExtensionSessionStream_stopStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__CMIOExtensionSessionStream_captureAsyncStillImage_options_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

@end