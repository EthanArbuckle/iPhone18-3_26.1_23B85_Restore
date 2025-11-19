@interface CMIOExtensionSessionProvider
+ (CMIOExtensionSessionProvider)sessionProviderWithEndpoint:(id)a3 delegate:(id)a4;
- (BOOL)registerStream:(id)a3 streamID:(id)a4;
- (CMIOExtensionSessionProvider)initWithEndpoint:(id)a3 delegate:(id)a4;
- (NSArray)devices;
- (NSSet)availableProperties;
- (NSString)bundleID;
- (NSString)description;
- (id)cachedPropertyStateForProperty:(id)a3;
- (id)cachedPropertyStatesForProperties:(id)a3;
- (id)unregisterStreamID:(id)a3;
- (void)dealloc;
- (void)extension:(id)a3 availableDevicesChanged:(id)a4;
- (void)extension:(id)a3 availableStreamsChangedWithDeviceID:(id)a4 streamIDs:(id)a5;
- (void)extension:(id)a3 devicePropertiesChangedWithDeviceID:(id)a4 propertyStates:(id)a5;
- (void)extension:(id)a3 didFailWithError:(id)a4;
- (void)extension:(id)a3 pluginPropertiesChanged:(id)a4;
- (void)extension:(id)a3 pullSampleWithStreamID:(id)a4 reply:(id)a5;
- (void)extension:(id)a3 receivedSampleWithStreamID:(id)a4 sample:(id)a5;
- (void)extension:(id)a3 streamPropertiesChangedWithStreamID:(id)a4 propertyStates:(id)a5;
- (void)extension:(id)a3 streamScheduledOutputChangedWithStreamID:(id)a4 scheduledOutput:(id)a5;
- (void)extensionHasBeenInvalidated:(id)a3;
- (void)propertyStatesForProperties:(id)availableProperties reply:(id)a4;
- (void)refreshExtensionConnection;
- (void)setBundleID:(id)a3;
- (void)setPropertyValues:(id)a3 reply:(id)a4;
@end

@implementation CMIOExtensionSessionProvider

+ (CMIOExtensionSessionProvider)sessionProviderWithEndpoint:(id)a3 delegate:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithEndpoint:a3 delegate:a4];

  return v4;
}

- (CMIOExtensionSessionProvider)initWithEndpoint:(id)a3 delegate:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a3 || MEMORY[0x2318F1BC0](a3, a2) != MEMORY[0x277D86478])
  {

    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = @"Invalid argument - endpoint";
LABEL_4:
    [v7 raise:v8 format:v9];
    v10 = 0;
    goto LABEL_5;
  }

  v21.receiver = self;
  v21.super_class = CMIOExtensionSessionProvider;
  v13 = [(CMIOExtensionSessionProvider *)&v21 init];
  v10 = v13;
  if (!v13)
  {
    goto LABEL_5;
  }

  v13->_lock._os_unfair_lock_opaque = 0;
  v14 = xpc_connection_create_from_endpoint(a3);
  if (!v14)
  {

    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = @"Invalid connection";
    goto LABEL_4;
  }

  v15 = v14;
  v10->_hostContext = [[CMIOExtensionProviderHostContext alloc] initWithConnection:v14 delegate:v10];
  xpc_release(v15);
  objc_storeWeak(&v10->_delegate, a4);
  v10->_deviceIDs = objc_opt_new();
  v10->_devicesMap = objc_opt_new();
  v10->_streamsMap = objc_opt_new();
  v10->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionSessionProvider> provider bundleID %@ endpoint %p", objc_msgSend(a4, "copyProviderBundleID"), a3];
  hostContext = v10->_hostContext;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke;
  v20[3] = &unk_27885C148;
  v20[4] = v10;
  [(CMIOExtensionProviderHostContext *)hostContext pluginStates:v20];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream initWithPropertyStates:provider:];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v17 = CMIOLog();
    if (v17)
    {
      v18 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        *buf = 136315906;
        v23 = v19;
        v24 = 1024;
        v25 = 1314;
        v26 = 2080;
        v27 = "[CMIOExtensionSessionProvider initWithEndpoint:delegate:]";
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&dword_22EA08000, v18, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke_cold_1();
    }

    *(*(a1 + 32) + 88) = 1;
  }

  else
  {
    v10 = +[CMIOExtensionProvider internalProperties];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke_2;
    v46[3] = &unk_27885C010;
    v46[4] = v10;
    *(*(a1 + 32) + 40) = [a2 keysOfEntriesPassingTest:v46];
    v40 = a2;
    v11 = [a2 objectForKeyedSubscript:0x284358D78];
    v12 = *(*(a1 + 32) + 48);
    *(*(a1 + 32) + 48) = [v11 value];

    v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = *(*(a1 + 32) + 48);
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v41 = a1;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          v20 = [a3 objectForKeyedSubscript:v19];
          if (v20)
          {
            v21 = [[CMIOExtensionSessionDevice alloc] initWithPropertyStates:v20 streamsStates:a4 provider:*(a1 + 32)];
            os_unfair_lock_lock((*(a1 + 32) + 8));
            v22 = [*(*(a1 + 32) + 56) objectForKey:{-[NSUUID UUIDString](-[CMIOExtensionSessionDevice deviceID](v21, "deviceID"), "UUIDString")}];
            if (!v22)
            {
              v23 = *(a1 + 32);
              v24 = v16;
              v25 = v13;
              v26 = v17;
              v27 = a3;
              v28 = v14;
              v29 = a4;
              v30 = *(v23 + 56);
              v31 = [(NSUUID *)[(CMIOExtensionSessionDevice *)v21 deviceID] UUIDString];
              v32 = v30;
              a4 = v29;
              v14 = v28;
              a3 = v27;
              v17 = v26;
              v13 = v25;
              v16 = v24;
              a1 = v41;
              [v32 setObject:v21 forKey:v31];
            }

            v13 = [objc_msgSend(*(*(a1 + 32) + 56) "allValues")];
            os_unfair_lock_unlock((*(a1 + 32) + 8));
            if (v22)
            {
              v33 = CMIOLog();
              if (v33)
              {
                v34 = v33;
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v37 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
                  *buf = 136315906;
                  v48 = v37;
                  v49 = 1024;
                  v50 = 1291;
                  v51 = 2080;
                  v52 = "[CMIOExtensionSessionProvider initWithEndpoint:delegate:]_block_invoke";
                  v53 = 2114;
                  v54 = v21;
                  _os_log_error_impl(&dword_22EA08000, v34, OS_LOG_TYPE_ERROR, "%s:%d:%s Mapping error for %{public}@", buf, 0x26u);
                }
              }
            }
          }

          else
          {
            v35 = CMIOLog();
            if (v35)
            {
              v36 = v35;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v38 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
                *buf = 136315906;
                v48 = v38;
                v49 = 1024;
                v50 = 1273;
                v51 = 2080;
                v52 = "[CMIOExtensionSessionProvider initWithEndpoint:delegate:]_block_invoke";
                v53 = 2114;
                v54 = v19;
                _os_log_error_impl(&dword_22EA08000, v36, OS_LOG_TYPE_ERROR, "%s:%d:%s missing device properties for %{public}@", buf, 0x26u);
              }
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v16);
    }

    *(*(a1 + 32) + 32) = [v40 mutableCopy];
    [objc_loadWeak((*(a1 + 32) + 16)) provider:*(a1 + 32) initializeDevices:v13 properties:*(*(a1 + 32) + 32)];
    if (v13)
    {
      [objc_loadWeak((*(a1 + 32) + 16)) provider:*(a1 + 32) availableDevicesChanged:v13];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
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
        v10 = 1321;
        v11 = 2080;
        v12 = "[CMIOExtensionSessionProvider dealloc]";
        v13 = 2112;
        v14 = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  v6.receiver = self;
  v6.super_class = CMIOExtensionSessionProvider;
  [(CMIOExtensionSessionProvider *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v2 = self->_description;

  return v2;
}

- (NSString)bundleID
{
  v2 = self->_bundleID;

  return v2;
}

- (void)setBundleID:(id)a3
{
  bundleID = self->_bundleID;
  self->_bundleID = a3;
}

- (void)refreshExtensionConnection
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
      v8 = 1024;
      v9 = 1362;
      v10 = 2080;
      v11 = "[CMIOExtensionSessionProvider refreshExtensionConnection]";
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s ", &v6, 0x1Cu);
    }
  }

  [(CMIOExtensionProviderHostContext *)self->_hostContext refreshExtensionConnection];
  self->_invalidated = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (NSArray)devices
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_devicesMap allValues];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSSet)availableProperties
{
  v2 = self->_availableProperties;

  return v2;
}

- (id)cachedPropertyStateForProperty:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_propertyStates objectForKey:a3];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)cachedPropertyStatesForProperties:(id)a3
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
        v25 = 1397;
        v26 = 2080;
        v27 = "[CMIOExtensionSessionProvider cachedPropertyStatesForProperties:]";
        v28 = 2112;
        v29 = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (a3)
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(a3);
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

        v9 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)propertyStatesForProperties:(id)availableProperties reply:(id)a4
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
        *buf = 136315906;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v14 = 1024;
        v15 = 1429;
        v16 = 2080;
        v17 = "[CMIOExtensionSessionProvider propertyStatesForProperties:reply:]";
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (!availableProperties)
  {
    availableProperties = self->_availableProperties;
  }

  hostContext = self->_hostContext;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__CMIOExtensionSessionProvider_propertyStatesForProperties_reply___block_invoke;
  v11[3] = &unk_27885C038;
  v11[4] = self;
  v11[5] = a4;
  [(CMIOExtensionProviderHostContext *)hostContext pluginPropertyStatesForProperties:availableProperties reply:v11];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __66__CMIOExtensionSessionProvider_propertyStatesForProperties_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(*(a1 + 32) + 32) addEntriesFromDictionary:a2];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)setPropertyValues:(id)a3 reply:(id)a4
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
        *buf = 136316162;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v14 = 1024;
        v15 = 1446;
        v16 = 2080;
        v17 = "[CMIOExtensionSessionProvider setPropertyValues:reply:]";
        v18 = 2112;
        v19 = self;
        v20 = 2112;
        v21 = a3;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, propertyValues %@", buf, 0x30u);
      }
    }
  }

  hostContext = self->_hostContext;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__CMIOExtensionSessionProvider_setPropertyValues_reply___block_invoke;
  v11[3] = &unk_27885C060;
  v11[4] = a4;
  [(CMIOExtensionProviderHostContext *)hostContext setPluginPropertyValues:a3 reply:v11];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerStream:(id)a3 streamID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
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
        v13 = 136316162;
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v15 = 1024;
        v16 = 1460;
        v17 = 2080;
        v18 = "[CMIOExtensionSessionProvider registerStream:streamID:]";
        v19 = 2112;
        v20 = self;
        v21 = 2112;
        v22 = a3;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, stream %@", &v13, 0x30u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_streamsMap objectForKey:a4];
  if (v9)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSessionProvider registerStream:streamID:];
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_streamsMap setObject:a3 forKey:a4];
    os_unfair_lock_unlock(&self->_lock);
  }

  result = v9 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)unregisterStreamID:(id)a3
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
        v10 = 136316162;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v12 = 1024;
        v13 = 1479;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionProvider unregisterStreamID:]";
        v16 = 2112;
        v17 = self;
        v18 = 2112;
        v19 = a3;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, stream %@", &v10, 0x30u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_streamsMap objectForKey:a3];
  [(NSMutableDictionary *)self->_streamsMap removeObjectForKey:a3];
  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)extension:(id)a3 didFailWithError:(id)a4
{
  v6 = CMIOLog();
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionSessionProvider extension:didFailWithError:];
  }

  [objc_loadWeak(&self->_delegate) provider:self didFailWithError:a4];
}

- (void)extensionHasBeenInvalidated:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v4 = CMIOLog();
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v9 = 1024;
        v10 = 1500;
        v11 = 2080;
        v12 = "[CMIOExtensionSessionProvider extensionHasBeenInvalidated:]";
        v13 = 2112;
        v14 = self;
        _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v7, 0x26u);
      }
    }
  }

  self->_invalidated = 1;
  [objc_loadWeak(&self->_delegate) providerHasBeenInvalidated:self];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)extension:(id)a3 pluginPropertiesChanged:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
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
        v10 = 136315906;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v12 = 1024;
        v13 = 1508;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionProvider extension:pluginPropertiesChanged:]";
        v16 = 2112;
        v17 = self;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v10, 0x26u);
      }
    }
  }

  if ([a4 count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_propertyStates addEntriesFromDictionary:a4];
    os_unfair_lock_unlock(&self->_lock);
    [objc_loadWeak(&self->_delegate) provider:self propertiesChanged:a4];
  }

  else
  {
    v8 = CMIOLog();
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSessionProvider extension:pluginPropertiesChanged:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)extension:(id)a3 availableDevicesChanged:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
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
        *buf = 136315906;
        v43 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v44 = 1024;
        v45 = 1527;
        v46 = 2080;
        v47 = "[CMIOExtensionSessionProvider extension:availableDevicesChanged:]";
        v48 = 2112;
        v49 = self;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (a4)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:a4];
    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->_deviceIDs];
    deviceIDs = self->_deviceIDs;
    self->_deviceIDs = a4;

    v11 = [v9 mutableCopy];
    v30 = v8;
    [v11 minusSet:v8];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          os_unfair_lock_lock(&self->_lock);
          v18 = [(NSMutableDictionary *)self->_devicesMap objectForKey:v17];
          [(NSMutableDictionary *)self->_devicesMap removeObjectForKey:v17];
          os_unfair_lock_unlock(&self->_lock);
          if (v18)
          {
            [v18 unregister];
            v19 = [v18 delegate];
            v14 = 1;
            [v18 setInvalidated:1];
            [v19 deviceHasBeenInvalidated:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
      if (v14)
      {
        os_unfair_lock_lock(&self->_lock);
        v20 = [(NSMutableDictionary *)self->_devicesMap allValues];
        os_unfair_lock_unlock(&self->_lock);
        [objc_loadWeak(&self->_delegate) provider:self availableDevicesChanged:v20];
      }
    }

    v21 = [v30 mutableCopy];
    [v21 minusSet:v9];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v32 + 1) + 8 * j);
          hostContext = self->_hostContext;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke;
          v31[3] = &unk_27885C170;
          v31[4] = self;
          [(CMIOExtensionProviderHostContext *)hostContext deviceStatesWithDeviceID:v26 reply:v31];
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v28 = CMIOLog();
    if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSessionProvider extension:availableDevicesChanged:];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = CMIOLog();
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v6 = [[CMIOExtensionSessionDevice alloc] initWithPropertyStates:a2 streamsStates:a3 provider:*(a1 + 32)];
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v7 = [*(*(a1 + 32) + 56) objectForKey:{-[NSUUID UUIDString](-[CMIOExtensionSessionDevice deviceID](v6, "deviceID"), "UUIDString")}];
    v8 = *(a1 + 32);
    if (v7)
    {
      os_unfair_lock_unlock((v8 + 8));
      v9 = CMIOLog();
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke_cold_2();
      }
    }

    else
    {
      [*(v8 + 56) setObject:v6 forKey:{-[NSUUID UUIDString](-[CMIOExtensionSessionDevice deviceID](v6, "deviceID"), "UUIDString")}];
      v10 = [*(*(a1 + 32) + 56) allValues];
      os_unfair_lock_unlock((*(a1 + 32) + 8));
      [objc_loadWeak((*(a1 + 32) + 16)) provider:*(a1 + 32) availableDevicesChanged:v10];
    }
  }
}

- (void)extension:(id)a3 devicePropertiesChangedWithDeviceID:(id)a4 propertyStates:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
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
        v12 = 136315906;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v14 = 1024;
        v15 = 1621;
        v16 = 2080;
        v17 = "[CMIOExtensionSessionProvider extension:devicePropertiesChangedWithDeviceID:propertyStates:]";
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v12, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_devicesMap objectForKey:a4];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 updatePropertyStates:a5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)extension:(id)a3 availableStreamsChangedWithDeviceID:(id)a4 streamIDs:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
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
        v12 = 136315906;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v14 = 1024;
        v15 = 1637;
        v16 = 2080;
        v17 = "[CMIOExtensionSessionProvider extension:availableStreamsChangedWithDeviceID:streamIDs:]";
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v12, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_devicesMap objectForKey:a4];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 updateStreamIDs:a5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)extension:(id)a3 streamPropertiesChangedWithStreamID:(id)a4 propertyStates:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
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
        v12 = 136315906;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v14 = 1024;
        v15 = 1653;
        v16 = 2080;
        v17 = "[CMIOExtensionSessionProvider extension:streamPropertiesChangedWithStreamID:propertyStates:]";
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v12, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_streamsMap objectForKey:a4];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 updatePropertyStates:a5 streamID:a4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)extension:(id)a3 receivedSampleWithStreamID:(id)a4 sample:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
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
        v12 = 136315906;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v14 = 1024;
        v15 = 1669;
        v16 = 2080;
        v17 = "[CMIOExtensionSessionProvider extension:receivedSampleWithStreamID:sample:]";
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v12, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_streamsMap objectForKey:a4];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 receivedSample:a5 streamID:a4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)extension:(id)a3 pullSampleWithStreamID:(id)a4 reply:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
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
        *buf = 136315906;
        *&buf[4] = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v18 = 1024;
        v19 = 1685;
        v20 = 2080;
        v21 = "[CMIOExtensionSessionProvider extension:pullSampleWithStreamID:reply:]";
        v22 = 2112;
        v23 = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_streamsMap objectForKey:a4];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    *buf = 0;
    v14 = 0;
    v11 = [v10 copySample:&v14 streamID:a4 error:buf];
    (*(a5 + 2))(a5, v11, v14, *buf);
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v15 = *MEMORY[0x277CCA450];
    v16 = @"Invalid stream";
    (*(a5 + 2))(a5, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)extension:(id)a3 streamScheduledOutputChangedWithStreamID:(id)a4 scheduledOutput:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
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
        v12 = 136315906;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v14 = 1024;
        v15 = 1709;
        v16 = 2080;
        v17 = "[CMIOExtensionSessionProvider extension:streamScheduledOutputChangedWithStreamID:scheduledOutput:]";
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v12, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_streamsMap objectForKey:a4];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 receivedScheduledOutput:a5 streamID:a4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke_cold_1()
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

- (void)registerStream:streamID:.cold.2()
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

- (void)extension:didFailWithError:.cold.1()
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

- (void)extension:pluginPropertiesChanged:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)extension:availableDevicesChanged:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke_cold_1()
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

void __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke_cold_2()
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