@interface CMIOExtensionSessionDevice
+ (id)sessionDeviceWithPropertyStates:(id)states streamsStates:(id)streamsStates provider:(id)provider;
- (CMIOExtensionSessionDevice)initWithPropertyStates:(id)states streamsStates:(id)streamsStates provider:(id)provider;
- (NSArray)streams;
- (NSSet)availableProperties;
- (id)cachedPropertyStateForProperty:(id)property;
- (id)cachedPropertyStatesForProperties:(id)properties;
- (id)description;
- (void)completeTransaction;
- (void)dealloc;
- (void)propertyStatesForProperties:(id)availableProperties reply:(id)reply;
- (void)setPropertyValues:(id)values reply:(id)reply;
- (void)unregister;
- (void)updatePropertyStates:(id)states;
- (void)updateStreamIDs:(id)ds;
@end

@implementation CMIOExtensionSessionDevice

+ (id)sessionDeviceWithPropertyStates:(id)states streamsStates:(id)streamsStates provider:(id)provider
{
  v5 = [objc_alloc(objc_opt_class()) initWithPropertyStates:states streamsStates:streamsStates provider:provider];

  return v5;
}

- (CMIOExtensionSessionDevice)initWithPropertyStates:(id)states streamsStates:(id)streamsStates provider:(id)provider
{
  v64 = *MEMORY[0x277D85DE8];
  if (!states || !streamsStates || !provider)
  {

    goto LABEL_9;
  }

  v54.receiver = self;
  v54.super_class = CMIOExtensionSessionDevice;
  v8 = [(CMIOExtensionSessionDevice *)&v54 init];
  if (!v8)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v8->_lock._os_unfair_lock_opaque = 0;
  lock = &v8->_lock;
  v10 = +[CMIOExtensionDevice internalProperties];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __76__CMIOExtensionSessionDevice_initWithPropertyStates_streamsStates_provider___block_invoke;
  v53[3] = &unk_27885C010;
  v53[4] = v10;
  v9->_availableProperties = [states keysOfEntriesPassingTest:v53];
  v9->_localizedName = [objc_msgSend(states objectForKeyedSubscript:{0x284358D98), "value"}];
  v11 = [states objectForKeyedSubscript:0x284358DB8];
  v9->_deviceID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:{objc_msgSend(v11, "value")}];
  v9->_legacyDeviceID = [objc_msgSend(states objectForKeyedSubscript:{0x284358DD8), "value"}];
  v9->_manufacturer = [objc_msgSend(states objectForKeyedSubscript:{@"4cc_lmak_glob_0000", "value"}];
  v9->_modelID = [objc_msgSend(states objectForKeyedSubscript:{@"CMIOExtensionPropertyDeviceModel", "value"}];
  v9->_runningSomewhere = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358E18), "value"), "BOOLValue"}];
  v9->_streamIDs = [objc_msgSend(states objectForKeyedSubscript:{0x284358DF8), "value"}];
  p_streamIDs = &v9->_streamIDs;
  v9->_specialDeviceType = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{@"CMIOExtensionPropertyDeviceSpecialDeviceType", "value"), "intValue"}];
  v9->_deviceControlPID = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358E58), "value"), "intValue"}];
  v13 = [objc_msgSend(states objectForKeyedSubscript:{@"4cc_cfds_glob_0000", "value"}];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v13 length] == 1)
        {
          buf[0] = 0;
          [v13 getBytes:buf length:1];
          LOBYTE(v13) = buf[0];
          goto LABEL_18;
        }

        if ([v13 length] == 4)
        {
          *buf = 0;
          [v13 getBytes:buf length:4];
          LOBYTE(v13) = *buf != 0;
          goto LABEL_18;
        }
      }

      LOBYTE(v13) = 0;
      goto LABEL_18;
    }

    LOBYTE(v13) = [v13 BOOLValue];
  }

LABEL_18:
  objc_storeWeak(&v9->_provider, provider);
  v9->_propertyStates = [states mutableCopy];
  v9->_streams = objc_opt_new();
  v9->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionSessionDevice: ID %@, legacy: %@>", v9->_deviceID, v9->_legacyDeviceID];
  if (v13)
  {
    if ([*p_streamIDs count] != 2)
    {
      v45 = CMIOLog();
      if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:];
      }

      goto LABEL_69;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    while (1)
    {
      v21 = v20;
      v22 = [streamsStates objectForKeyedSubscript:{objc_msgSend(*p_streamIDs, "objectAtIndexedSubscript:", v17)}];
      if (!v22)
      {
        v26 = CMIOLog();
        if (v26)
        {
          v27 = v26;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v47 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
            v28 = [*p_streamIDs objectAtIndexedSubscript:v17];
            *buf = 136315906;
            v57 = v47;
            v58 = 1024;
            v59 = 832;
            v60 = 2080;
            v61 = "[CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:]";
            v62 = 2114;
            v63 = v28;
            _os_log_error_impl(&dword_22EA08000, v27, OS_LOG_TYPE_ERROR, "%s:%d:%s missing stream properties for %{public}@", buf, 0x26u);
          }
        }

        goto LABEL_38;
      }

      v23 = v22;
      v24 = [objc_msgSend(v22 objectForKeyedSubscript:{@"4cc_cfac_glob_0000", "value"}];
      if (v24)
      {
        v25 = v24;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v25 BOOLValue] & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_36;
          }

          if ([v25 length] == 1)
          {
            buf[0] = 0;
            [v25 getBytes:buf length:1];
            if ((buf[0] & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else if ([v25 length] != 4 || (*buf = 0, objc_msgSend(v25, "getBytes:length:", buf, 4), !*buf))
          {
LABEL_36:
            if (!v19)
            {
              v19 = [CMIOExtensionSessionStream sessionStreamWithPropertyStates:v23 provider:provider];
            }

            goto LABEL_38;
          }
        }

        if (!v18)
        {
          v18 = [CMIOExtensionSessionStream sessionStreamWithPropertyStates:v23 provider:provider];
        }
      }

LABEL_38:
      v20 = 0;
      v17 = 1;
      if ((v21 & 1) == 0)
      {
        if (v18 && v19)
        {
          v29 = v18;
          v14 = v9;
          v30 = [CMIOExtensionSessionDualStream sessionDualStreamWithPrimaryStream:v19 secondaryStream:v29];
          if ([provider registerStream:v30 streamID:{-[NSUUID UUIDString](-[CMIOExtensionSessionStream streamID](v19, "streamID"), "UUIDString")}] && objc_msgSend(provider, "registerStream:streamID:", v30, -[NSUUID UUIDString](-[CMIOExtensionSessionStream streamID](v29, "streamID"), "UUIDString")))
          {
            os_unfair_lock_lock(lock);
            [(NSMutableArray *)v9->_streams addObject:v30];
            os_unfair_lock_unlock(lock);
          }

          goto LABEL_57;
        }

        v46 = CMIOLog();
        if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:];
        }

LABEL_69:

LABEL_9:
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
        goto LABEL_10;
      }
    }
  }

  v14 = v9;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = *p_streamIDs;
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v50;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v49 + 1) + 8 * i);
        v37 = [streamsStates objectForKeyedSubscript:v36];
        if (v37)
        {
          v38 = [CMIOExtensionSessionStream sessionStreamWithPropertyStates:v37 provider:provider];
          if ([provider registerStream:v38 streamID:v36])
          {
            os_unfair_lock_lock(lock);
            [(NSMutableArray *)v14->_streams addObject:v38];
            os_unfair_lock_unlock(lock);
          }
        }

        else
        {
          v39 = CMIOLog();
          if (v39)
          {
            v40 = v39;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v41 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
              *buf = 136315906;
              v57 = v41;
              v58 = 1024;
              v59 = 894;
              v60 = 2080;
              v61 = "[CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:]";
              v62 = 2114;
              v63 = v36;
              _os_log_error_impl(&dword_22EA08000, v40, OS_LOG_TYPE_ERROR, "%s:%d:%s missing stream properties for %{public}@", buf, 0x26u);
            }
          }
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v33);
  }

LABEL_57:
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream initWithPropertyStates:provider:];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v42 = CMIOLog();
    if (v42)
    {
      v43 = v42;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        *buf = 136315906;
        v57 = v44;
        v58 = 1024;
        v59 = 910;
        v60 = 2080;
        v61 = "[CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:]";
        v62 = 2112;
        v63 = v14;
        _os_log_impl(&dword_22EA08000, v43, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
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
        v10 = 917;
        v11 = 2080;
        v12 = "[CMIOExtensionSessionDevice dealloc]";
        v13 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  v6.receiver = self;
  v6.super_class = CMIOExtensionSessionDevice;
  [(CMIOExtensionSessionDevice *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (void)updatePropertyStates:(id)states
{
  v20 = *MEMORY[0x277D85DE8];
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
        v12 = 136315906;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v14 = 1024;
        v15 = 940;
        v16 = 2080;
        v17 = "[CMIOExtensionSessionDevice updatePropertyStates:]";
        v18 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v12, 0x26u);
      }
    }
  }

  if ([states count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_propertyStates addEntriesFromDictionary:states];
    os_unfair_lock_unlock(&self->_lock);
    v7 = [states objectForKeyedSubscript:0x284358E18];
    if (v7)
    {
      v8 = [objc_msgSend(v7 "value")];
      [(CMIOExtensionSessionDevice *)self setRunningSomewhere:v8];
      [objc_loadWeak(&self->_delegate) device:self runningSomewhereChanged:v8];
    }

    v9 = [states objectForKeyedSubscript:0x284358E58];
    if (v9)
    {
      v10 = [objc_msgSend(v9 "value")];
      [(CMIOExtensionSessionDevice *)self setDeviceControlPID:v10];
      [objc_loadWeak(&self->_delegate) device:self deviceControlPIDChanged:v10];
    }

    [objc_loadWeak(&self->_delegate) device:self propertiesChanged:states];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateStreamIDs:(id)ds
{
  v53 = *MEMORY[0x277D85DE8];
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
        *buf = 136316162;
        v44 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v45 = 1024;
        v46 = 973;
        v47 = 2080;
        v48 = "[CMIOExtensionSessionDevice updateStreamIDs:]";
        v49 = 2112;
        selfCopy = self;
        v51 = 2112;
        dsCopy = ds;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, streamIDs %@", buf, 0x30u);
      }
    }
  }

  if (ds)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:ds];
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->_streamIDs];
    streamIDs = self->_streamIDs;
    self->_streamIDs = ds;

    v31 = v8;
    v10 = [v8 mutableCopy];
    [v10 minusSet:v7];
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v37 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [objc_loadWeak(&self->_provider) unregisterStreamID:*(*(&v37 + 1) + 8 * i)];
          if (v16)
          {
            v17 = v16;
            os_unfair_lock_lock(&self->_lock);
            [(NSMutableArray *)self->_streams removeObject:v17];
            os_unfair_lock_unlock(&self->_lock);
            delegate = [v17 delegate];
            v13 = 1;
            [v17 setInvalidated:1];
            [delegate streamHasBeenInvalidated:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v12);
      if (v13)
      {
        os_unfair_lock_lock(&self->_lock);
        v19 = [(NSMutableArray *)self->_streams copy];
        os_unfair_lock_unlock(&self->_lock);
        [objc_loadWeak(&self->_delegate) device:self availableStreamsChanged:v19];
      }
    }

    v20 = [v7 mutableCopy];
    [v20 minusSet:v31];
    Weak = objc_loadWeak(&self->_provider);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v33 + 1) + 8 * j);
          hostContext = [Weak hostContext];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __46__CMIOExtensionSessionDevice_updateStreamIDs___block_invoke;
          v32[3] = &unk_27885C120;
          v32[4] = Weak;
          v32[5] = v26;
          v32[6] = self;
          [hostContext streamPropertyStatesWithStreamID:v26 properties:0 reply:v32];
        }

        v23 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v28 = CMIOLog();
    if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSessionDevice updateStreamIDs:];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __46__CMIOExtensionSessionDevice_updateStreamIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = CMIOLog();
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __46__CMIOExtensionSessionDevice_updateStreamIDs___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = [CMIOExtensionSessionStream sessionStreamWithPropertyStates:a2 provider:*(a1 + 32)];
    if ([*(a1 + 32) registerStream:v5 streamID:*(a1 + 40)])
    {
      os_unfair_lock_lock((*(a1 + 48) + 8));
      [*(*(a1 + 48) + 40) addObject:v5];
      v6 = [*(*(a1 + 48) + 40) copy];
      os_unfair_lock_unlock((*(a1 + 48) + 8));
      if (v6)
      {
        [objc_loadWeak((*(a1 + 48) + 16)) device:*(a1 + 48) availableStreamsChanged:v6];
      }
    }
  }
}

- (void)unregister
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  streams = [(CMIOExtensionSessionDevice *)self streams];
  v4 = [(NSArray *)streams countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(streams);
        }

        [objc_loadWeak(&self->_provider) unregisterStreamID:{objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * v7++), "streamID"), "UUIDString")}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)streams countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSArray)streams
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_streams copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
        v25 = 1111;
        v26 = 2080;
        v27 = "[CMIOExtensionSessionDevice cachedPropertyStatesForProperties:]";
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
        v20 = 1143;
        v21 = 2080;
        v22 = "[CMIOExtensionSessionDevice propertyStatesForProperties:reply:]";
        v23 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v10 = hostContext;
    if (!availableProperties)
    {
      availableProperties = self->_availableProperties;
    }

    uUIDString = [(NSUUID *)self->_deviceID UUIDString];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__CMIOExtensionSessionDevice_propertyStatesForProperties_reply___block_invoke;
    v14[3] = &unk_27885C038;
    v14[4] = self;
    v14[5] = reply;
    [v10 devicePropertyStatesWithDeviceID:uUIDString properties:availableProperties reply:v14];
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

uint64_t __64__CMIOExtensionSessionDevice_propertyStatesForProperties_reply___block_invoke(uint64_t a1, uint64_t a2)
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
        v20 = 1165;
        v21 = 2080;
        v22 = "[CMIOExtensionSessionDevice setPropertyValues:reply:]";
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
    uUIDString = [(NSUUID *)self->_deviceID UUIDString];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__CMIOExtensionSessionDevice_setPropertyValues_reply___block_invoke;
    v14[3] = &unk_27885C060;
    v14[4] = reply;
    [v10 setDevicePropertyValuesWithDeviceID:uUIDString propertyValues:values reply:v14];
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

uint64_t __56__CMIOExtensionSessionDevice_setDeviceControlPID_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMIOLog();
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __56__CMIOExtensionSessionDevice_setDeviceControlPID_reply___block_invoke_cold_1();
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
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

- (void)initWithPropertyStates:streamsStates:provider:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  v7 = *v0;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyStates:streamsStates:provider:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateStreamIDs:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__CMIOExtensionSessionDevice_updateStreamIDs___block_invoke_cold_1()
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

void __56__CMIOExtensionSessionDevice_setDeviceControlPID_reply___block_invoke_cold_1()
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