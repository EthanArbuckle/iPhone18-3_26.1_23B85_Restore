@interface CMIOExtensionSessionDualStream
+ (id)sessionDualStreamWithPrimaryStream:(id)a3 secondaryStream:(id)a4;
- (CMIOExtensionSessionDualStream)initWithPrimaryStream:(id)a3 secondaryStream:(id)a4;
- (CMIOExtensionSessionStream)activeStream;
- (id)cachedPropertyStateForProperty:(id)a3;
- (id)cachedPropertyStatesForProperties:(id)a3;
- (id)copySample:(BOOL *)a3 streamID:(id)a4 error:(id *)a5;
- (id)delegate;
- (id)formats;
- (unint64_t)activeFormatIndex;
- (void)completeTransaction;
- (void)dealloc;
- (void)propertyStatesForProperties:(id)a3 reply:(id)a4;
- (void)receivedSample:(id)a3 streamID:(id)a4;
- (void)receivedScheduledOutput:(id)a3 streamID:(id)a4;
- (void)selectStream:(unint64_t)a3;
- (void)setActiveFormatIndex:(unint64_t)a3;
- (void)setActiveFormatIndex:(unint64_t)a3 reply:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setPropertyValues:(id)a3 reply:(id)a4;
- (void)startStream:(id)a3;
- (void)stopStream:(id)a3;
- (void)updatePropertyStates:(id)a3 streamID:(id)a4;
@end

@implementation CMIOExtensionSessionDualStream

+ (id)sessionDualStreamWithPrimaryStream:(id)a3 secondaryStream:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithPrimaryStream:a3 secondaryStream:a4];

  return v4;
}

- (CMIOExtensionSessionDualStream)initWithPrimaryStream:(id)a3 secondaryStream:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v6 = *(a3 + 3);
    v16.receiver = self;
    v16.super_class = CMIOExtensionSessionDualStream;
    v7 = -[CMIOExtensionSessionStream initWithPropertyStates:provider:](&v16, sel_initWithPropertyStates_provider_, v6, [a3 provider]);
    if (v7)
    {
      v7->_primaryStream = a3;
      v7->_secondaryStream = a4;
      v7->_activeStream = v7->_primaryStream;
      v8 = [CMIOExtensionPropertyState alloc];
      v9 = -[CMIOExtensionPropertyState initWithValue:](v8, "initWithValue:", [MEMORY[0x277CCABB0] numberWithInt:0]);
      v7->_cinematicFramingEnabled = v9;
      [(NSMutableDictionary *)v7->_primaryStream->_propertyStates setObject:v9 forKey:0x284358F38];
      [(NSMutableDictionary *)v7->_secondaryStream->_propertyStates setObject:v7->_cinematicFramingEnabled forKey:0x284358F38];
      v10 = [(NSSet *)v7->super._availableProperties mutableCopy];
      [v10 addObject:0x284358F38];

      v7->super._availableProperties = [v10 copy];
      v7->super._streamID = [MEMORY[0x277CCAD78] UUID];

      v7->super._description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionSessionDualStream: ID %@>", v7->super._streamID];
      if (CMIOModuleLogLevel_once != -1)
      {
        [CMIOExtensionSessionStream initWithPropertyStates:provider:];
      }

      if (CMIOModuleLogLevel_cmioLevel >= 1)
      {
        v11 = CMIOLog();
        if (v11)
        {
          v12 = v11;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
            *buf = 136315906;
            v18 = v13;
            v19 = 1024;
            v20 = 485;
            v21 = 2080;
            v22 = "[CMIOExtensionSessionDualStream initWithPrimaryStream:secondaryStream:]";
            v23 = 2112;
            v24 = v7;
            _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
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

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionSessionDualStream;
  [(CMIOExtensionSessionStream *)&v3 dealloc];
}

- (CMIOExtensionSessionStream)activeStream
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_activeStream;
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)selectStream:(unint64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(CMIOExtensionSessionStream *)self->_activeStream delegate];
  activeStream = self->_activeStream;
  streaming = activeStream->_streaming;
  p_primaryStream = &self->_primaryStream;
  if (a3 && activeStream == *p_primaryStream)
  {
    v9 = activeStream;
    [(CMIOExtensionSessionStream *)v9 setDelegate:0];
    p_primaryStream = &self->_secondaryStream;
    v10 = 1;
LABEL_7:
    v11 = *p_primaryStream;
    self->_activeStream = v11;
    [(CMIOExtensionSessionStream *)v11 setDelegate:v5];
    v12 = self->_activeStream;
    v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12->_propertyStates];

    v14 = [CMIOExtensionPropertyState alloc];
    v15 = -[CMIOExtensionPropertyState initWithValue:](v14, "initWithValue:", [MEMORY[0x277CCABB0] numberWithInt:v10]);
    self->_cinematicFramingEnabled = v15;
    [v13 setObject:v15 forKey:0x284358F38];
    os_unfair_lock_unlock(&self->super._lock);
    if (v9)
    {
      [(CMIOExtensionSessionStream *)v12 updatePropertyStates:v13 streamID:[(NSUUID *)[(CMIOExtensionSessionStream *)v12 streamID] UUIDString]];
      if (streaming)
      {
        [(CMIOExtensionSessionStream *)v12 startStream:&__block_literal_global_1];

        [(CMIOExtensionSessionStream *)v9 stopStream:&__block_literal_global_136_0];
      }
    }

    return;
  }

  if (!a3 && activeStream == self->_secondaryStream)
  {
    v9 = activeStream;
    [(CMIOExtensionSessionStream *)v9 setDelegate:0];
    v10 = 0;
    goto LABEL_7;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

void __47__CMIOExtensionSessionDualStream_selectStream___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = CMIOLog();
    if (v2)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_cold_1();
      }
    }
  }
}

void __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_134(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = CMIOLog();
    if (v2)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_134_cold_1();
      }
    }
  }
}

- (void)updatePropertyStates:(id)a3 streamID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
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
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 579;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionDualStream updatePropertyStates:streamID:]";
        v17 = 2112;
        v18 = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  p_primaryStream = &self->_primaryStream;
  if (([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_primaryStream streamID] UUIDString] isEqual:a4]& 1) != 0 || (p_primaryStream = &self->_secondaryStream, [(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_secondaryStream streamID] UUIDString] isEqual:a4]))
  {
    [(CMIOExtensionSessionStream *)*p_primaryStream updatePropertyStates:a3 streamID:a4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)receivedSample:(id)a3 streamID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
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
        v11 = 136316162;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 591;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionDualStream receivedSample:streamID:]";
        v17 = 2112;
        v18 = self;
        v19 = 2112;
        v20 = a3;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, sample %@", &v11, 0x30u);
      }
    }
  }

  p_primaryStream = &self->_primaryStream;
  if (([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_primaryStream streamID] UUIDString] isEqual:a4]& 1) != 0 || (p_primaryStream = &self->_secondaryStream, [(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_secondaryStream streamID] UUIDString] isEqual:a4]))
  {
    [(CMIOExtensionSessionStream *)*p_primaryStream receivedSample:a3 streamID:a4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)copySample:(BOOL *)a3 streamID:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
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
        v14 = 136315906;
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v16 = 1024;
        v17 = 603;
        v18 = 2080;
        v19 = "[CMIOExtensionSessionDualStream copySample:streamID:error:]";
        v20 = 2112;
        v21 = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v14, 0x26u);
      }
    }
  }

  *a3 = 0;
  *a5 = 0;
  p_primaryStream = &self->_primaryStream;
  if (([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_primaryStream streamID] UUIDString] isEqual:a4]& 1) != 0 || (p_primaryStream = &self->_secondaryStream, [(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_secondaryStream streamID] UUIDString] isEqual:a4]))
  {
    result = [(CMIOExtensionSessionStream *)*p_primaryStream copySample:a3 streamID:a4 error:a5];
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)receivedScheduledOutput:(id)a3 streamID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
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
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 619;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionDualStream receivedScheduledOutput:streamID:]";
        v17 = 2112;
        v18 = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  p_primaryStream = &self->_primaryStream;
  if (([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_primaryStream streamID] UUIDString] isEqual:a4]& 1) != 0 || (p_primaryStream = &self->_secondaryStream, [(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_secondaryStream streamID] UUIDString] isEqual:a4]))
  {
    [(CMIOExtensionSessionStream *)*p_primaryStream receivedScheduledOutput:a3 streamID:a4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)delegate
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = [(CMIOExtensionSessionStream *)self->_activeStream delegate];
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setDelegate:(id)a3
{
  os_unfair_lock_lock(&self->super._lock);
  [(CMIOExtensionSessionStream *)self->_activeStream setDelegate:a3];

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)cachedPropertyStateForProperty:(id)a3
{
  v4 = [(CMIOExtensionSessionDualStream *)self activeStream];

  return [(CMIOExtensionSessionStream *)v4 cachedPropertyStateForProperty:a3];
}

- (id)cachedPropertyStatesForProperties:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
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
        v9 = 136315906;
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v11 = 1024;
        v12 = 656;
        v13 = 2080;
        v14 = "[CMIOExtensionSessionDualStream cachedPropertyStatesForProperties:]";
        v15 = 2112;
        v16 = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v9, 0x26u);
      }
    }
  }

  result = [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] cachedPropertyStatesForProperties:a3];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)propertyStatesForProperties:(id)a3 reply:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
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
        v10 = 136315906;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v12 = 1024;
        v13 = 663;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionDualStream propertyStatesForProperties:reply:]";
        v16 = 2112;
        v17 = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v10, 0x26u);
      }
    }
  }

  [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] propertyStatesForProperties:a3 reply:a4];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPropertyValues:(id)a3 reply:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
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
        v14 = 136316162;
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v16 = 1024;
        v17 = 670;
        v18 = 2080;
        v19 = "[CMIOExtensionSessionDualStream setPropertyValues:reply:]";
        v20 = 2112;
        v21 = self;
        v22 = 2112;
        v23 = a3;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, propertyValues %@", &v14, 0x30u);
      }
    }
  }

  v9 = [(CMIOExtensionSessionDualStream *)self activeStream];
  v10 = [a3 objectForKeyedSubscript:0x284358F38];
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 unsignedIntegerValue];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    if ([v11 length] == 1)
    {
      LOBYTE(v14) = 0;
      [v11 getBytes:&v14 length:1];
      v12 = v14;
      goto LABEL_16;
    }

    if ([v11 length] == 4)
    {
      v14 = 0;
      [v11 getBytes:&v14 length:4];
      v12 = v14;
    }

    else
    {
LABEL_15:
      v12 = 0;
    }

LABEL_16:
    [(CMIOExtensionSessionDualStream *)self selectStream:v12];
    if ([a3 count] >= 2)
    {
      a3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
      [a3 removeObjectForKey:0x284358F38];
    }
  }

  [(CMIOExtensionSessionStream *)v9 setPropertyValues:a3 reply:a4];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)formats
{
  v2 = [(CMIOExtensionSessionDualStream *)self activeStream];

  return [(CMIOExtensionSessionStream *)v2 formats];
}

- (unint64_t)activeFormatIndex
{
  v2 = [(CMIOExtensionSessionDualStream *)self activeStream];

  return [(CMIOExtensionSessionStream *)v2 activeFormatIndex];
}

- (void)setActiveFormatIndex:(unint64_t)a3
{
  v4 = [(CMIOExtensionSessionDualStream *)self activeStream];

  [(CMIOExtensionSessionStream *)v4 setActiveFormatIndex:a3];
}

- (void)setActiveFormatIndex:(unint64_t)a3 reply:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
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
        v10 = 136316162;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v12 = 1024;
        v13 = 722;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionDualStream setActiveFormatIndex:reply:]";
        v16 = 2112;
        v17 = self;
        v18 = 1024;
        v19 = a3;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %d", &v10, 0x2Cu);
      }
    }
  }

  [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] setActiveFormatIndex:a3 reply:a4];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)startStream:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
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
        v8 = 136315906;
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v10 = 1024;
        v11 = 729;
        v12 = 2080;
        v13 = "[CMIOExtensionSessionDualStream startStream:]";
        v14 = 2112;
        v15 = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v8, 0x26u);
      }
    }
  }

  [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] startStream:a3];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopStream:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
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
        v8 = 136315906;
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v10 = 1024;
        v11 = 736;
        v12 = 2080;
        v13 = "[CMIOExtensionSessionDualStream stopStream:]";
        v14 = 2112;
        v15 = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v8, 0x26u);
      }
    }
  }

  [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] stopStream:a3];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)completeTransaction
{
  v2 = [(CMIOExtensionSessionDualStream *)self activeStream];

  [(CMIOExtensionSessionStream *)v2 completeTransaction];
}

void __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_cold_1()
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

void __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_134_cold_1()
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