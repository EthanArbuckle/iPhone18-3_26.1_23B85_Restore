@interface CMIOExtensionProvider
+ (CMIOExtensionProvider)providerWithSource:(id)source clientQueue:(dispatch_queue_t)clientQueue;
+ (id)internalProperties;
+ (id)proprietaryDefaultsDomainForAuditToken:(id *)token;
+ (id)sharedProvider;
+ (void)ignoreSIGTERM;
+ (void)startServiceWithProvider:(CMIOExtensionProvider *)provider;
+ (void)stopServiceWithProvider:(id)provider;
- (BOOL)addDevice:(CMIOExtensionDevice *)device error:(NSError *)outError;
- (BOOL)registerDevice:(id)device error:(id *)error;
- (BOOL)registerStream:(id)stream withDeviceID:(id)d error:(id *)error;
- (BOOL)removeDevice:(CMIOExtensionDevice *)device error:(NSError *)outError;
- (BOOL)unregisterDevice:(id)device error:(id *)error;
- (BOOL)unregisterStream:(id)stream withDeviceID:(id)d notify:(BOOL)notify error:(id *)error;
- (CMIOExtensionProvider)initWithSource:(id)source clientQueue:(dispatch_queue_t)clientQueue;
- (NSArray)connectedClients;
- (NSArray)devices;
- (id)_clientQueue_internalPropertyStatesForProperties:(id)properties;
- (id)description;
- (int)_clientQueue_pendingStartStreamCountForClient:(id)client streamID:(id)d;
- (void)_addAvailablePropertyStatesForDevice:(id)device toDictionary:(id)dictionary;
- (void)_clientQueue_decrementPendingStreamStartCountForClientID:(id)d streamID:(id)iD;
- (void)_clientQueue_incrementPendingStartStreamCountForClientID:(id)d streamID:(id)iD;
- (void)_clientQueue_notifyDevicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states;
- (void)_clientQueue_notifyIsRunningSomewhereForStream:(id)stream;
- (void)_clientQueue_notifyStreamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states;
- (void)_clientQueue_removePendingStartStreamCountForClient:(id)client streamID:(id)d;
- (void)_clientQueue_sendSampleForStream:(id)stream sample:(id)sample;
- (void)_clientQueue_startStreamForClientID:(id)d streamID:(id)iD requestAudio:(BOOL)audio requestVideo:(BOOL)video reply:(id)reply;
- (void)_performDeferredStreamStartsForClient:(id)client streamID:(id)d requestVideo:(BOOL)video requestAudio:(BOOL)audio;
- (void)availableDevicePropertiesForClientID:(id)d deviceID:(id)iD reply:(id)reply;
- (void)availablePluginPropertiesForClientID:(id)d reply:(id)reply;
- (void)availableStreamPropertiesForClientID:(id)d streamID:(id)iD reply:(id)reply;
- (void)beginProviderContextRegistration:(id)registration;
- (void)captureAsyncStillImageForClientID:(id)d streamID:(id)iD uniqueID:(int64_t)uniqueID options:(id)options reply:(id)reply;
- (void)consumeSampleBufferForStream:(id)stream client:(id)client reply:(id)reply;
- (void)dealloc;
- (void)devicePropertyStatesForClientID:(id)d deviceID:(id)iD properties:(id)properties reply:(id)reply;
- (void)deviceStatesForClientID:(id)d deviceID:(id)iD reply:(id)reply;
- (void)enqueueReactionEffectForClientID:(id)d streamID:(id)iD reactionType:(id)type reply:(id)reply;
- (void)finishProviderContextRegistration:(id)registration;
- (void)notifyAvailableDevicesChanged:(id)changed;
- (void)notifyAvailableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds;
- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates;
- (void)notifyScheduledOutputChangedForStream:(id)stream scheduledOutput:(id)output;
- (void)pluginPropertyStatesForClientID:(id)d properties:(id)properties reply:(id)reply;
- (void)pluginStatesForClientID:(id)d reply:(id)reply;
- (void)removeAllProviderContexts;
- (void)removeProviderContext:(id)context;
- (void)setConnectedClients:(id)clients;
- (void)setDevicePropertyValuesForClientID:(id)d deviceID:(id)iD propertyValues:(id)values reply:(id)reply;
- (void)setPluginPropertyValuesForClientID:(id)d propertyValues:(id)values reply:(id)reply;
- (void)setStreamPropertyValuesForClientID:(id)d streamID:(id)iD propertyValues:(id)values reply:(id)reply;
- (void)startStreamForClientID:(id)d streamID:(id)iD reply:(id)reply;
- (void)stopStreamForClientID:(id)d streamID:(id)iD reply:(id)reply;
- (void)streamPropertyStatesForClientID:(id)d streamID:(id)iD properties:(id)properties reply:(id)reply;
- (void)updateNonStreamingProxyFrontedExtensionPIDs:(id)ds;
@end

@implementation CMIOExtensionProvider

+ (CMIOExtensionProvider)providerWithSource:(id)source clientQueue:(dispatch_queue_t)clientQueue
{
  v4 = [objc_alloc(objc_opt_class()) initWithSource:source clientQueue:clientQueue];

  return v4;
}

- (CMIOExtensionProvider)initWithSource:(id)source clientQueue:(dispatch_queue_t)clientQueue
{
  v32 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = CMIOExtensionProvider;
  v6 = [(CMIOExtensionProvider *)&v19 init];
  if (v6)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *buf = 136316418;
        v21 = v9;
        v22 = 1024;
        v23 = 1693;
        v24 = 2080;
        v25 = "[CMIOExtensionProvider initWithSource:clientQueue:]";
        v26 = 2048;
        v27 = v6;
        v28 = 2048;
        v29 = source;
        v30 = 2048;
        v31 = clientQueue;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s initializing provider %p with source %p : queue %p", buf, 0x3Au);
      }
    }

    objc_storeWeak(&v6->_source, source);
    if (clientQueue)
    {
      TargetingWorkloopWithPriority = clientQueue;
    }

    else
    {
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      TargetingWorkloopWithPriority = FigDispatchQueueCreateTargetingWorkloopWithPriority();
    }

    v6->_clientQueue = TargetingWorkloopWithPriority;
    v6->_contextsMapLock._os_unfair_lock_opaque = 0;
    v6->_contextsRegistration = objc_opt_new();
    v6->_contextsMap = objc_opt_new();
    v6->_pendingCountMap = objc_opt_new();
    v6->_connectedClientsLock._os_unfair_lock_opaque = 0;
    v6->_connectedClients = objc_opt_new();
    v6->_devicesMapLock._os_unfair_lock_opaque = 0;
    v6->_devicesMap = objc_opt_new();
    v6->_streamsMapLock._os_unfair_lock_opaque = 0;
    v6->_streamsMap = objc_opt_new();
    v6->_devicesLock._os_unfair_lock_opaque = 0;
    v6->_devices = objc_opt_new();
    v6->_changedDeviceIDsLock._os_unfair_lock_opaque = 0;
    v6->_changedDeviceIDs = 0;
    v6->_changedStreamIDsLock._os_unfair_lock_opaque = 0;
    v6->_changedStreamIDs = 0;
    v6->_changedPropertiesLock._os_unfair_lock_opaque = 0;
    v6->_changedProperties = objc_opt_new();
    if ([+[CMIOExtensionProviderServer internalDaemon] sharedServer]
    {
      v11 = CMIOLog();
      if (v11)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProvider initWithSource:clientQueue:];
        }
      }
    }

    v6->_nonStreamingProxyFrontedExtensionPIDs = objc_opt_new();
    v6->_nonStreamingProxyFrontedExtensionPIDsHasChanged = 0;
    v6->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProvider>"];
    if (gProvider)
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"There should be only one CMIOProvider per extension."];
      v6 = 0;
    }

    else
    {
      gProvider = v6;
      v14 = CMIOLog();
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v17 = gProvider;
          v18 = [gProvider retainCount];
          *buf = 136316162;
          v21 = v16;
          v22 = 1024;
          v23 = 1753;
          v24 = 2080;
          v25 = "[CMIOExtensionProvider initWithSource:clientQueue:]";
          v26 = 2048;
          v27 = v17;
          v28 = 1024;
          LODWORD(v29) = v18;
          _os_log_impl(&dword_22EA08000, v15, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Retained and set gProvider to %p (retain count %d)", buf, 0x2Cu);
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 1766;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider dealloc]";
      v19 = 2048;
      v20 = gProvider;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s dealloc starting, shared provider reference %p", buf, 0x26u);
    }
  }

  gProvider = 0;

  v5 = CMIOLog();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136315650;
      v14 = v7;
      v15 = 1024;
      v16 = 1787;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider dealloc]";
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s calling [super dealloc]", buf, 0x1Cu);
    }
  }

  v12.receiver = self;
  v12.super_class = CMIOExtensionProvider;
  [(CMIOExtensionProvider *)&v12 dealloc];
  v8 = CMIOLog();
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136315650;
      v14 = v10;
      v15 = 1024;
      v16 = 1790;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider dealloc]";
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s dealloc done", buf, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

+ (id)sharedProvider
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gProviderLock);
  v2 = gProvider;
  os_unfair_lock_unlock(&gProviderLock);
  v3 = CMIOLogLevel(1);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v9 = 1024;
      v10 = 1808;
      v11 = 2080;
      v12 = "+[CMIOExtensionProvider sharedProvider]";
      v13 = 2048;
      v14 = v2;
      v15 = 1024;
      v16 = [v2 retainCount];
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s returning autoreleased global provider %p (its retain count is %d)", &v7, 0x2Cu);
    }
  }

  result = v2;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)internalProperties
{
  if (internalProperties_onceToken_331 != -1)
  {
    +[CMIOExtensionProvider internalProperties];
  }

  return internalProperties_gInternalProviderProperties;
}

uint64_t __43__CMIOExtensionProvider_internalProperties__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{0x284358D78, 0}];
  internalProperties_gInternalProviderProperties = result;
  return result;
}

+ (void)startServiceWithProvider:(CMIOExtensionProvider *)provider
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = +[CMIOExtensionProvider sharedProvider];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = CMIOLog();
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316674;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 1024;
      v19 = 1835;
      v20 = 2080;
      v21 = "+[CMIOExtensionProvider startServiceWithProvider:]";
      v22 = 2048;
      v23 = provider;
      v24 = 2112;
      bundleIdentifier = [mainBundle bundleIdentifier];
      v26 = 2048;
      v27 = v5;
      v28 = 1024;
      v29 = [(CMIOExtensionProvider *)v5 retainCount];
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %p (%@), autoreleased global provider %p (its retain count is %d)", &v16, 0x40u);
    }
  }

  v9 = MEMORY[0x277CBE660];
  if (v5 != provider)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid provider."];
  }

  v10 = [mainBundle objectForInfoDictionaryKey:@"CMIOExtension"];
  if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v11 count])
  {
    [MEMORY[0x277CBEAD8] raise:*v9 format:@"CMIOExtension information dictionary missing from the Info.plist."];
  }

  if (startServiceWithProvider__onceToken != -1)
  {
    +[CMIOExtensionProvider startServiceWithProvider:];
  }

  objc_autoreleasePoolPop(v4);
  v12 = CMIOLog();
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 136315650;
      v17 = v14;
      v18 = 1024;
      v19 = 1865;
      v20 = 2080;
      v21 = "+[CMIOExtensionProvider startServiceWithProvider:]";
      _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_DEFAULT, "%s:%d:%s leaving", &v16, 0x1Cu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __50__CMIOExtensionProvider_startServiceWithProvider___block_invoke()
{
  CMIOPreferences();
  global_queue = dispatch_get_global_queue(21, 0);
  gSignalHandlerSource = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, global_queue);
  dispatch_source_set_event_handler(gSignalHandlerSource, &__block_literal_global_344);
  dispatch_activate(gSignalHandlerSource);
  v1 = +[CMIOExtensionProviderServer sharedServer];

  return [(CMIOExtensionProviderServer *)v1 start];
}

void __50__CMIOExtensionProvider_startServiceWithProvider___block_invoke_2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = gIgnoreSIGTERM;
  v1 = CMIOLog();
  v2 = v1;
  if (v0 != 1)
  {
    if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v6 = 1024;
      v7 = 1856;
      v8 = 2080;
      v9 = "+[CMIOExtensionProvider startServiceWithProvider:]_block_invoke";
      _os_log_impl(&dword_22EA08000, v2, OS_LOG_TYPE_DEFAULT, "%s:%d:%s SIGTERM signal received, exiting", &v4, 0x1Cu);
    }

    exit(0);
  }

  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    v6 = 1024;
    v7 = 1853;
    v8 = 2080;
    v9 = "+[CMIOExtensionProvider startServiceWithProvider:]_block_invoke_2";
    _os_log_impl(&dword_22EA08000, v2, OS_LOG_TYPE_DEFAULT, "%s:%d:%s SIGTERM signal received, but told to ignore", &v4, 0x1Cu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)stopServiceWithProvider:(id)provider
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = +[CMIOExtensionProvider sharedProvider];
  v6 = CMIOLog();
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136316418;
      v31 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v32 = 1024;
      v33 = 1872;
      v34 = 2080;
      v35 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v36 = 2048;
      providerCopy2 = provider;
      v38 = 2048;
      v39 = v5;
      v40 = 1024;
      v41 = [v5 retainCount];
      _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %p, autoreleased global provider %p (its retain count is %d)", &v30, 0x36u);
    }
  }

  if (v5 != provider)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid provider."];
  }

  v8 = CMIOLog();
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v30 = 136315906;
      v31 = v10;
      v32 = 1024;
      v33 = 1877;
      v34 = 2080;
      v35 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v36 = 2112;
      providerCopy2 = provider;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s removing all contexts from %@", &v30, 0x26u);
    }
  }

  [provider removeAllProviderContexts];
  v11 = CMIOLog();
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v14 = +[CMIOExtensionProviderServer sharedServer];
      v30 = 136315906;
      v31 = v13;
      v32 = 1024;
      v33 = 1879;
      v34 = 2080;
      v35 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v36 = 2112;
      providerCopy2 = v14;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s stopping shared server %@", &v30, 0x26u);
    }
  }

  [+[CMIOExtensionProviderServer sharedServer](CMIOExtensionProviderServer stop];
  v15 = CMIOLog();
  if (v15)
  {
    v16 = v15;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = +[CMIOExtensionProviderServer sharedServer];
      v30 = 136315906;
      v31 = v17;
      v32 = 1024;
      v33 = 1881;
      v34 = 2080;
      v35 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v36 = 2112;
      providerCopy2 = v18;
      _os_log_impl(&dword_22EA08000, v16, OS_LOG_TYPE_DEFAULT, "%s:%d:%s shared server %@ has been stopped", &v30, 0x26u);
    }
  }

  v19 = CMIOLog();
  if (v19)
  {
    v20 = v19;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v22 = [v5 retainCount];
      v30 = 136316162;
      v31 = v21;
      v32 = 1024;
      v33 = 1882;
      v34 = 2080;
      v35 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v36 = 2048;
      providerCopy2 = v5;
      v38 = 1024;
      LODWORD(v39) = v22;
      _os_log_impl(&dword_22EA08000, v20, OS_LOG_TYPE_DEFAULT, "%s:%d:%s releasing shared provider reference %p (its retain count is %d)", &v30, 0x2Cu);
    }
  }

  os_unfair_lock_lock(&gProviderLock);

  gProvider = 0;
  os_unfair_lock_unlock(&gProviderLock);
  v23 = CMIOLog();
  if (v23)
  {
    v24 = v23;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v30 = 136315650;
      v31 = v25;
      v32 = 1024;
      v33 = 1890;
      v34 = 2080;
      v35 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      _os_log_impl(&dword_22EA08000, v24, OS_LOG_TYPE_DEFAULT, "%s:%d:%s released and set shared provider reference to nil", &v30, 0x1Cu);
    }
  }

  objc_autoreleasePoolPop(v4);
  v26 = CMIOLog();
  if (v26)
  {
    v27 = v26;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v30 = 136315650;
      v31 = v28;
      v32 = 1024;
      v33 = 1892;
      v34 = 2080;
      v35 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      _os_log_impl(&dword_22EA08000, v27, OS_LOG_TYPE_DEFAULT, "%s:%d:%s leaving", &v30, 0x1Cu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (void)ignoreSIGTERM
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = 1024;
      v8 = 1897;
      v9 = 2080;
      v10 = "+[CMIOExtensionProvider ignoreSIGTERM]";
      _os_log_impl(&dword_22EA08000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d:%s will be ignoring the SIGTERM signal", &v5, 0x1Cu);
    }
  }

  gIgnoreSIGTERM = 1;
  v4 = *MEMORY[0x277D85DE8];
}

- (NSArray)connectedClients
{
  os_unfair_lock_lock(&self->_connectedClientsLock);
  v3 = self->_connectedClients;
  os_unfair_lock_unlock(&self->_connectedClientsLock);

  return v3;
}

- (void)setConnectedClients:(id)clients
{
  os_unfair_lock_lock(&self->_connectedClientsLock);
  connectedClients = self->_connectedClients;
  self->_connectedClients = clients;
  os_unfair_lock_unlock(&self->_connectedClientsLock);
}

- (NSArray)devices
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = CMIOLogLevel(1);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v10 = 1024;
      v11 = 1931;
      v12 = 2080;
      v13 = "[CMIOExtensionProvider devices]";
      v14 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v8, 0x26u);
    }
  }

  os_unfair_lock_lock(&self->_devicesLock);
  v5 = [(NSMutableArray *)self->_devices copy];
  os_unfair_lock_unlock(&self->_devicesLock);
  result = v5;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)addDevice:(CMIOExtensionDevice *)device error:(NSError *)outError
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v27 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v28 = 1024;
      v29 = 1945;
      v30 = 2080;
      v31 = "[CMIOExtensionProvider addDevice:error:]";
      v32 = 2112;
      selfCopy2 = self;
      v34 = 2112;
      v35 = device;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  if (!device || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = CMIOLog();
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider addDevice:error:];
      if (!outError)
      {
        goto LABEL_22;
      }
    }

    else if (!outError)
    {
      goto LABEL_22;
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA590];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Invalid device";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v25;
    v14 = &v24;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_devicesLock);
  if (([(NSMutableArray *)self->_devices containsObject:device]& 1) == 0)
  {
    [(NSMutableArray *)self->_devices addObject:device];
    os_unfair_lock_unlock(&self->_devicesLock);
    v18 = CMIOLog();
    if (v18)
    {
      v19 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *buf = 136316162;
        v27 = v20;
        v28 = 1024;
        v29 = 1966;
        v30 = 2080;
        v31 = "[CMIOExtensionProvider addDevice:error:]";
        v32 = 2114;
        selfCopy2 = self;
        v34 = 2114;
        v35 = device;
        _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@", buf, 0x30u);
      }
    }

    if ([(CMIOExtensionProvider *)self registerDevice:device error:outError])
    {
      [(CMIOExtensionDevice *)device setParent:self];
      result = 1;
      goto LABEL_23;
    }

    os_unfair_lock_lock(&self->_devicesLock);
    [(NSMutableArray *)self->_devices removeObject:device];
    os_unfair_lock_unlock(&self->_devicesLock);
    goto LABEL_22;
  }

  os_unfair_lock_unlock(&self->_devicesLock);
  v9 = CMIOLog();
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProvider addDevice:error:];
    if (outError)
    {
      goto LABEL_10;
    }

LABEL_22:
    result = 0;
    goto LABEL_23;
  }

  if (!outError)
  {
    goto LABEL_22;
  }

LABEL_10:
  v10 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA590];
  v22 = *MEMORY[0x277CCA450];
  v23 = @"Device already included";
  v12 = MEMORY[0x277CBEAC0];
  v13 = &v23;
  v14 = &v22;
LABEL_15:
  v16 = [v10 errorWithDomain:v11 code:-50 userInfo:{objc_msgSend(v12, "dictionaryWithObjects:forKeys:count:", v13, v14, 1, v22, v23, v24, v25)}];
  result = 0;
  *outError = v16;
LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)removeDevice:(CMIOExtensionDevice *)device error:(NSError *)outError
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v27 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v28 = 1024;
      v29 = 1990;
      v30 = 2080;
      v31 = "[CMIOExtensionProvider removeDevice:error:]";
      v32 = 2112;
      selfCopy2 = self;
      v34 = 2112;
      v35 = device;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  if (!device || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider removeDevice:error:];
      if (!outError)
      {
        goto LABEL_21;
      }
    }

    else if (!outError)
    {
      goto LABEL_21;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Invalid device";
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v25;
    v18 = &v24;
LABEL_15:
    v19 = [v14 errorWithDomain:v15 code:-50 userInfo:{objc_msgSend(v16, "dictionaryWithObjects:forKeys:count:", v17, v18, 1, v22, v23, v24, v25)}];
    result = 0;
    *outError = v19;
    goto LABEL_22;
  }

  os_unfair_lock_lock(&self->_devicesLock);
  if (([(NSMutableArray *)self->_devices containsObject:device]& 1) == 0)
  {
    os_unfair_lock_unlock(&self->_devicesLock);
    v20 = CMIOLog();
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider removeDevice:error:];
      if (outError)
      {
        goto LABEL_19;
      }
    }

    else if (outError)
    {
LABEL_19:
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA590];
      v22 = *MEMORY[0x277CCA450];
      v23 = @"Device not included";
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v23;
      v18 = &v22;
      goto LABEL_15;
    }

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  [(NSMutableArray *)self->_devices removeObject:device];
  os_unfair_lock_unlock(&self->_devicesLock);
  v9 = CMIOLog();
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136316162;
      v27 = v11;
      v28 = 1024;
      v29 = 2018;
      v30 = 2080;
      v31 = "[CMIOExtensionProvider removeDevice:error:]";
      v32 = 2114;
      selfCopy2 = self;
      v34 = 2114;
      v35 = device;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@", buf, 0x30u);
    }
  }

  [(CMIOExtensionProvider *)self unregisterDevice:device error:outError];
  result = 1;
LABEL_22:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v12 = 1024;
      v13 = 2026;
      v14 = 2080;
      v15 = "[CMIOExtensionProvider notifyPropertiesChanged:]";
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      v19 = propertyStates;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, propertyStates %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_changedPropertiesLock);
  [(NSMutableDictionary *)self->_changedProperties addEntriesFromDictionary:propertyStates];
  os_unfair_lock_unlock(&self->_changedPropertiesLock);
  clientQueue = self->_clientQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CMIOExtensionProvider_notifyPropertiesChanged___block_invoke;
  v9[3] = &unk_27885B938;
  v9[4] = self;
  v9[5] = propertyStates;
  dispatch_async(clientQueue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__CMIOExtensionProvider_notifyPropertiesChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 144));
  v2 = [*(*(a1 + 32) + 152) copy];
  [*(*(a1 + 32) + 152) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 144));
  if ([v2 count])
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    v3 = [*(*(a1 + 32) + 32) allValues];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7++) pluginPropertiesChanged:*(a1 + 40)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeAllProviderContexts
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = CMIOLogLevel(1);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v19 = 1024;
      v20 = 2097;
      v21 = 2080;
      v22 = "[CMIOExtensionProvider removeAllProviderContexts]";
      v23 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  allValues = [(NSMutableDictionary *)self->_contextsMap allValues];
  if ([allValues count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:allValues];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_contextsMapLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CMIOExtensionProvider *)self removeProviderContext:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)proprietaryDefaultsDomainForAuditToken:(id *)token
{
  v93 = *MEMORY[0x277D85DE8];
  v76 = 0;
  if (!SystemStatusLibraryCore())
  {
    v9 = @"unknown";
    goto LABEL_93;
  }

  if (proprietaryDefaultsDomainForAuditToken__onceToken != -1)
  {
    +[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:];
  }

  v4 = *&token->var0[4];
  *atoken = *token->var0;
  *&atoken[16] = v4;
  v71 = audit_token_to_pid(atoken);
  v72 = [MEMORY[0x277CCABB0] numberWithInt:v71];
  v5 = [sProprietaryDefaultsDomainsByPID objectForKeyedSubscript:v72];
  if (!v5)
  {
    v10 = [MEMORY[0x277D46F48] handleForIdentifier:objc_msgSend(MEMORY[0x277CCABB0] error:{"numberWithInt:", v71), &v76}];
    if (v10)
    {
      if ([objc_msgSend(objc_msgSend(v10 "bundle")])
      {
        v11 = CMIOLog();
        v12 = v11;
        if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136315907;
          *&atoken[4] = v13;
          *&atoken[12] = 1024;
          *&atoken[14] = 2187;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v71;
          _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] client is a secure capture extension, looking up containing app", atoken, 0x22u);
        }

        v14 = *&token->var0[4];
        *atoken = *token->var0;
        *&atoken[16] = v14;
        v15 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:atoken error:&v76];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [objc_msgSend(v15 "containingBundleRecord")];
            *atoken = 0;
            *&atoken[8] = atoken;
            *&atoken[16] = 0x3052000000;
            *&atoken[24] = __Block_byref_object_copy_;
            v17 = getSTExecutableIdentityClass_softClass;
            *&atoken[32] = __Block_byref_object_dispose_;
            *&atoken[40] = getSTExecutableIdentityClass_softClass;
            if (!getSTExecutableIdentityClass_softClass)
            {
              *&v77 = MEMORY[0x277D85DD0];
              *(&v77 + 1) = 3221225472;
              *&v78 = __getSTExecutableIdentityClass_block_invoke;
              *(&v78 + 1) = &unk_27885BC18;
              *&v79 = atoken;
              __getSTExecutableIdentityClass_block_invoke(&v77);
              v17 = *(*&atoken[8] + 40);
            }

            _Block_object_dispose(atoken, 8);
            v18 = [[v17 alloc] initWithApplicationBundleIdentifier:v16];
            goto LABEL_25;
          }

          v27 = CMIOLog();
          v22 = v27;
          if (!v27)
          {
            goto LABEL_36;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            +[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:];
          }
        }

        else
        {
          v26 = CMIOLog();
          if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:?];
          }
        }

        goto LABEL_35;
      }
    }

    else
    {
      v19 = CMIOLog();
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:?];
      }
    }

    if (sResponsibleIdentityForAuditTokenIsSupported == 1)
    {
      STExecutableIdentityResolverClass = getSTExecutableIdentityResolverClass();
      v21 = *&token->var0[4];
      *atoken = *token->var0;
      *&atoken[16] = v21;
      v18 = [STExecutableIdentityResolverClass responsibleIdentityForAuditToken:atoken];
LABEL_25:
      v22 = v18;
LABEL_36:
      v28 = CMIOLog();
      v29 = v28;
      if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *atoken = 136316163;
        *&atoken[4] = v30;
        *&atoken[12] = 1024;
        *&atoken[14] = 2220;
        *&atoken[18] = 2080;
        *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
        *&atoken[28] = 1025;
        *&atoken[30] = v71;
        *&atoken[34] = 2113;
        *&atoken[36] = v22;
        _os_log_impl(&dword_22EA08000, v29, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] resolvedIdentity: %{private}@", atoken, 0x2Cu);
      }

      bundleIdentifier = [v22 bundleIdentifier];
      if (!bundleIdentifier)
      {
        executablePath = [v22 executablePath];
        if (!executablePath)
        {
          goto LABEL_45;
        }

        v33 = CMIOLog();
        v34 = v33;
        if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v35 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136316163;
          *&atoken[4] = v35;
          *&atoken[12] = 1024;
          *&atoken[14] = 2225;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v71;
          *&atoken[34] = 2113;
          *&atoken[36] = executablePath;
          _os_log_impl(&dword_22EA08000, v34, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] falling back to using last part of the executable's path %{private}@", atoken, 0x2Cu);
        }

        bundleIdentifier = [objc_msgSend(executablePath componentsSeparatedByString:{@"/", "lastObject"}];
        if (!bundleIdentifier)
        {
LABEL_45:
          v36 = CMIOLog();
          if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            +[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:];
          }

          bundleIdentifier = @"unknown";
        }
      }

      if (([(__CFString *)bundleIdentifier isEqualToString:@"avconferenced"]& 1) != 0 || ([(__CFString *)bundleIdentifier isEqualToString:@"com.apple.avconferenced"]& 1) != 0 || ([(__CFString *)bundleIdentifier isEqualToString:@"com.apple.InCallService"]& 1) != 0 || ([(__CFString *)bundleIdentifier isEqualToString:@"com.apple.FaceTime.FaceTimeNotificationCenterService"]& 1) != 0 || [(__CFString *)bundleIdentifier isEqualToString:@"com.apple.TelephonyUtilities"])
      {
        v37 = CMIOLog();
        v38 = v37;
        if (v37)
        {
          v70 = @"com.apple.FaceTime";
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_60;
          }

          v39 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136316419;
          *&atoken[4] = v39;
          *&atoken[12] = 1024;
          *&atoken[14] = 2242;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v71;
          *&atoken[34] = 2113;
          *&atoken[36] = bundleIdentifier;
          *&atoken[44] = 2113;
          *&atoken[46] = @"com.apple.FaceTime";
          goto LABEL_57;
        }

        v40 = @"com.apple.FaceTime";
        goto LABEL_59;
      }

      if (([(__CFString *)bundleIdentifier isEqualToString:@"com.cisco.webexmeetingsapp"]& 1) != 0 || ([(__CFString *)bundleIdentifier isEqualToString:@"Cisco-Systems-Spark"]& 1) != 0 || [(__CFString *)bundleIdentifier isEqualToString:@"Cisco-Systems.Spark"])
      {
        v68 = CMIOLog();
        v38 = v68;
        if (!v68)
        {
          v40 = @"com.webex.meetingmanager";
LABEL_59:
          v70 = v40;
          goto LABEL_60;
        }

        v70 = @"com.webex.meetingmanager";
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136316419;
          *&atoken[4] = v69;
          *&atoken[12] = 1024;
          *&atoken[14] = 2254;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v71;
          *&atoken[34] = 2113;
          *&atoken[36] = bundleIdentifier;
          *&atoken[44] = 2113;
          *&atoken[46] = @"com.webex.meetingmanager";
LABEL_57:
          _os_log_impl(&dword_22EA08000, v38, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] remapping preference domain %{private}@ to %{private}@", atoken, 0x36u);
        }
      }

      else
      {
        v70 = bundleIdentifier;
      }

LABEL_60:
      v41 = sMostRecentProprietaryDefaultDomainLookupTimeByPID;
      v75 = sPostTerminationTimoutForClearingEntryFromProprietaryDefaultsDomainsByPID;
      v73 = sProprietaryDefaultsDomainsByPID;
      obj = [sProprietaryDefaultsDomainsByPID allKeys];
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v42 = [obj countByEnumeratingWithState:&v77 objects:atoken count:16];
      if (!v42)
      {
LABEL_89:
        [sProprietaryDefaultsDomainsByPID setObject:v70 forKeyedSubscript:v72];
        [sMostRecentProprietaryDefaultDomainLookupTimeByPID setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithLongLong:", FigGetUpTimeNanoseconds()), v72}];
        v63 = CMIOLog();
        v64 = v63;
        if (v63 && os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v65 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136316163;
          *&atoken[4] = v65;
          *&atoken[12] = 1024;
          *&atoken[14] = 2263;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v71;
          *&atoken[34] = 2113;
          v9 = v70;
          *&atoken[36] = v70;
          _os_log_impl(&dword_22EA08000, v64, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] preference domain %{private}@", atoken, 0x2Cu);
        }

        else
        {
          v9 = v70;
        }

        goto LABEL_93;
      }

      UpTimeNanoseconds = 0;
      v44 = *v78;
LABEL_62:
      v45 = 0;
      while (1)
      {
        if (*v78 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v77 + 1) + 8 * v45);
        intValue = [v46 intValue];
        if (intValue < 2)
        {
LABEL_68:
          if (!UpTimeNanoseconds)
          {
            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          }

          v49 = (UpTimeNanoseconds - [objc_msgSend(v41 objectForKeyedSubscript:{v46), "longLongValue"}]) / 0x3B9ACA00uLL;
          v50 = CMIOLog();
          v51 = v50;
          if (v75 >= v49)
          {
            if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v53 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              *buf = 136316163;
              v84 = v53;
              v85 = 1024;
              v86 = 2286;
              v87 = 2080;
              v88 = "cmioep_pruneStalePIDsFromDictionary";
              v89 = 1025;
              v90 = intValue;
              v91 = 2048;
              v92 = v49;
              _os_log_impl(&dword_22EA08000, v51, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] keeping stale pid because it was accessed %lld seconds ago", buf, 0x2Cu);
            }
          }

          else
          {
            if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v52 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              *buf = 136316163;
              v84 = v52;
              v85 = 1024;
              v86 = 2281;
              v87 = 2080;
              v88 = "cmioep_pruneStalePIDsFromDictionary";
              v89 = 1025;
              v90 = intValue;
              v91 = 2048;
              v92 = v49;
              _os_log_impl(&dword_22EA08000, v51, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] dropping stale pid; last accessed %lld seconds ago", buf, 0x2Cu);
            }

            [v73 setObject:0 forKeyedSubscript:v46];
            [v41 setObject:0 forKeyedSubscript:v46];
          }

          goto LABEL_84;
        }

        v81 = 0;
        v48 = [MEMORY[0x277D46F48] handleForIdentifier:objc_msgSend(MEMORY[0x277D46F50] error:{"identifierWithPid:", intValue), &v81}];
        if (!v81)
        {
          break;
        }

        if ([v81 code] == 3)
        {
          goto LABEL_68;
        }

        v59 = CMIOLog();
        v60 = v59;
        if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v61 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *buf = 136316162;
          v84 = v61;
          v85 = 1024;
          v86 = 2307;
          v87 = 2080;
          v88 = "cmioep_pidIsValid";
          v89 = 1024;
          v90 = intValue;
          v91 = 2112;
          v92 = v81;
          v57 = v60;
          v58 = "%s:%d:%s [%d] creating process handle returned error: %@";
LABEL_87:
          _os_log_error_impl(&dword_22EA08000, v57, OS_LOG_TYPE_ERROR, v58, buf, 0x2Cu);
        }

LABEL_84:
        if (v42 == ++v45)
        {
          v62 = [obj countByEnumeratingWithState:&v77 objects:atoken count:16];
          v42 = v62;
          if (!v62)
          {
            goto LABEL_89;
          }

          goto LABEL_62;
        }
      }

      if (v48)
      {
        goto LABEL_84;
      }

      v54 = CMIOLog();
      v55 = v54;
      if (!v54 || !os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      v56 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136316162;
      v84 = v56;
      v85 = 1024;
      v86 = 2311;
      v87 = 2080;
      v88 = "cmioep_pidIsValid";
      v89 = 1024;
      v90 = intValue;
      v91 = 2112;
      v92 = v81;
      v57 = v55;
      v58 = "%s:%d:%s [%d] could not create process handle: %@";
      goto LABEL_87;
    }

    v23 = CMIOLog();
    v24 = v23;
    if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *atoken = 136315650;
      *&atoken[4] = v25;
      *&atoken[12] = 1024;
      *&atoken[14] = 2217;
      *&atoken[18] = 2080;
      *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
      _os_log_impl(&dword_22EA08000, v24, OS_LOG_TYPE_DEFAULT, "%s:%d:%s proper version of System Status not present to support this call.", atoken, 0x1Cu);
    }

LABEL_35:
    v22 = 0;
    goto LABEL_36;
  }

  v6 = CMIOLog();
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    *atoken = 136316163;
    *&atoken[4] = v8;
    *&atoken[12] = 1024;
    *&atoken[14] = 2158;
    *&atoken[18] = 2080;
    *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
    *&atoken[28] = 1025;
    *&atoken[30] = v71;
    *&atoken[34] = 2113;
    *&atoken[36] = v5;
    _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] returning cached preference domain %{private}@", atoken, 0x2Cu);
  }

  [sMostRecentProprietaryDefaultDomainLookupTimeByPID setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithLongLong:", FigGetUpTimeNanoseconds()), v72}];
  v9 = v5;
LABEL_93:
  v66 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __64__CMIOExtensionProvider_proprietaryDefaultsDomainForAuditToken___block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  sProprietaryDefaultsDomainsByPID = objc_alloc_init(MEMORY[0x277CBEB38]);
  sMostRecentProprietaryDefaultDomainLookupTimeByPID = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = 0;
  IntegerValue = CMIOPreferencesGetIntegerValue(@"proprietary_default_domain_most_recent_pid_lookup_time_limit", &v7);
  if (v7)
  {
    v1 = IntegerValue;
  }

  else
  {
    v1 = 15;
  }

  sPostTerminationTimoutForClearingEntryFromProprietaryDefaultsDomainsByPID = v1;
  v2 = CMIOLog();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136315906;
      v9 = v4;
      v10 = 1024;
      v11 = 2142;
      v12 = 2080;
      v13 = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]_block_invoke";
      v14 = 1024;
      v15 = sPostTerminationTimoutForClearingEntryFromProprietaryDefaultsDomainsByPID;
      _os_log_impl(&dword_22EA08000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d:%s stale pid timeout: %d seconds", buf, 0x22u);
    }
  }

  getSTExecutableIdentityResolverClass();
  result = objc_opt_respondsToSelector();
  sResponsibleIdentityForAuditTokenIsSupported = result & 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_clientQueue_internalPropertyStatesForProperties:(id)properties
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v24 = 1024;
      v25 = 2334;
      v26 = 2080;
      v27 = "[CMIOExtensionProvider _clientQueue_internalPropertyStatesForProperties:]";
      v28 = 2112;
      selfCopy = self;
      v30 = 2112;
      propertiesCopy = properties;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, properties %@", buf, 0x30u);
    }
  }

  if (properties && ![properties containsObject:0x284358D78])
  {
    v14 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    devices = [(CMIOExtensionProvider *)self devices];
    v9 = [(NSArray *)devices countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(devices);
          }

          [v7 addObject:{objc_msgSend(objc_msgSend(*(*(&v17 + 1) + 8 * v12++), "deviceID"), "UUIDString")}];
        }

        while (v10 != v12);
        v10 = [(NSArray *)devices countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v13 = [[CMIOExtensionPropertyState alloc] initWithValue:v7 attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];

    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:0x284358D78];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)beginProviderContextRegistration:(id)registration
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v12 = 1024;
      v13 = 2353;
      v14 = 2080;
      v15 = "[CMIOExtensionProvider beginProviderContextRegistration:]";
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      registrationCopy = registration;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CMIOExtensionProvider_beginProviderContextRegistration___block_invoke;
  v9[3] = &unk_27885B938;
  v9[4] = self;
  v9[5] = registration;
  dispatch_async(clientQueue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)finishProviderContextRegistration:(id)registration
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v12 = 1024;
      v13 = 2362;
      v14 = 2080;
      v15 = "[CMIOExtensionProvider finishProviderContextRegistration:]";
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      registrationCopy = registration;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke;
  v9[3] = &unk_27885B938;
  v9[4] = self;
  v9[5] = registration;
  dispatch_async(clientQueue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  if (([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v3 = CMIOLog();
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_1();
    }

    v4 = CMIOLog();
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = *v2;
      *buf = 136315906;
      v39 = v6;
      v40 = 1024;
      v41 = 2367;
      v42 = 2080;
      v43 = "[CMIOExtensionProvider finishProviderContextRegistration:]_block_invoke";
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_INFO, "%s:%d:%s Unregistered provider context %@, don't be surprised if things go badly", buf, 0x26u);
    }
  }

  v28 = 0;
  if ([objc_loadWeak((*(a1 + 32) + 176)) connectClient:objc_msgSend(*(a1 + 40) error:{"clientInfo"), &v28}])
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    [*(*(a1 + 32) + 32) setObject:*(a1 + 40) forKey:{objc_msgSend(objc_msgSend(*(a1 + 40), "clientInfo"), "clientID")}];
    v8 = [*(*(a1 + 32) + 32) allValues];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v9 = [MEMORY[0x277CBEB18] array];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v9 addObject:{objc_msgSend(*(*(&v24 + 1) + 8 * v12++), "clientInfo")}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) setConnectedClients:v9];
  }

  else
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_3();
    }

    v14 = CMIOLog();
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v17 = [*v2 clientInfo];
      *v30 = 136315906;
      v31 = v16;
      v32 = 1024;
      v33 = 2382;
      v34 = 2080;
      v35 = "[CMIOExtensionProvider finishProviderContextRegistration:]_block_invoke";
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_22EA08000, v15, OS_LOG_TYPE_INFO, "%s:%d:%s Refusing connection(%@)", v30, 0x26u);
    }
  }

  v18 = CMIOLog();
  v19 = v18;
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    v21 = [*v2 clientInfo];
    *v30 = 136315906;
    v31 = v20;
    v32 = 1024;
    v33 = 2400;
    v34 = 2080;
    v35 = "[CMIOExtensionProvider finishProviderContextRegistration:]_block_invoke";
    v36 = 2112;
    v37 = v21;
    _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_INFO, "%s:%d:%s New connection(%@)", v30, 0x26u);
  }

  result = [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeProviderContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v12 = 1024;
      v13 = 2407;
      v14 = 2080;
      v15 = "[CMIOExtensionProvider removeProviderContext:]";
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      contextCopy = context;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__CMIOExtensionProvider_removeProviderContext___block_invoke;
  v9[3] = &unk_27885B938;
  v9[4] = self;
  v9[5] = context;
  dispatch_async_and_wait(clientQueue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __47__CMIOExtensionProvider_removeProviderContext___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  if (([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v3 = CMIOLog();
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __47__CMIOExtensionProvider_removeProviderContext___block_invoke_cold_1();
    }

    v4 = CMIOLog();
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = *v2;
      *buf = 136315906;
      v53 = v6;
      v54 = 1024;
      v55 = 2413;
      v56 = 2080;
      v57 = "[CMIOExtensionProvider removeProviderContext:]_block_invoke";
      v58 = 2112;
      v59 = v7;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_INFO, "%s:%d:%s Unregistered provider context %@, don't be surprised if things go badly", buf, 0x26u);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [*(a1 + 32) devices];
  v32 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v32)
  {
    v31 = *v46;
    v28 = *MEMORY[0x277CCA450];
    v29 = *MEMORY[0x277CCA590];
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v34 = v8;
        v35 = [v8 streams];
        v9 = [v35 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v9)
        {
          v10 = *v42;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v42 != v10)
              {
                objc_enumerationMutation(v35);
              }

              v12 = *(*(&v41 + 1) + 8 * j);
              v13 = [v12 _clientQueue_streamingClientsMap];
              if ([v13 objectForKey:{objc_msgSend(objc_msgSend(*v2, "clientInfo"), "clientID")}] && objc_msgSend(v13, "count") == 1)
              {
                v40 = 0;
                if (([objc_msgSend(v12 "source")] & 1) == 0)
                {
                  v14 = CMIOLog();
                  v15 = v14;
                  if (v14)
                  {
                    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                    {
                      v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                      *buf = 136315906;
                      v53 = v16;
                      v54 = 1024;
                      v55 = 2431;
                      v56 = 2080;
                      v57 = "[CMIOExtensionProvider removeProviderContext:]_block_invoke";
                      v58 = 2112;
                      v59 = v40;
                      _os_log_error_impl(&dword_22EA08000, v15, OS_LOG_TYPE_ERROR, "%s:%d:%s Could not stop streaming %@", buf, 0x26u);
                    }
                  }
                }

                [v12 _clientQueue_removeStreamingClient:{objc_msgSend(*(a1 + 40), "clientInfo")}];
                [*(a1 + 32) _clientQueue_notifyIsRunningSomewhereForStream:v12];
              }

              else
              {
                [v12 _clientQueue_removeStreamingClient:{objc_msgSend(*v2, "clientInfo")}];
              }

              [*(a1 + 32) _clientQueue_removePendingStartStreamCountForClient:objc_msgSend(objc_msgSend(*(a1 + 40) streamID:{"clientInfo"), "clientID"), objc_msgSend(v12, "streamID")}];
              [*(a1 + 32) removeSystemStatusAttributionsForClient:objc_msgSend(*(a1 + 40) stream:{"clientInfo"), v12}];
            }

            v9 = [v35 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v9);
        }

        v17 = [v34 deviceControlPID];
        if (v17 == [objc_msgSend(*v2 "clientInfo")])
        {
          [v34 setDeviceControlPID:0xFFFFFFFFLL];
          v18 = objc_opt_new();
          v19 = [CMIOExtensionPropertyState alloc];
          v20 = -[CMIOExtensionPropertyState initWithValue:](v19, "initWithValue:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v34, "deviceControlPID")}]);
          [v18 setObject:v20 forKey:0x284358E58];

          [v34 notifyPropertiesChanged:v18];
        }
      }

      v32 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v32);
  }

  [objc_loadWeak((*(a1 + 32) + 176)) disconnectClient:{objc_msgSend(*(a1 + 40), "clientInfo")}];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  [*(*(a1 + 32) + 32) removeObjectForKey:{objc_msgSend(objc_msgSend(*(a1 + 40), "clientInfo"), "clientID")}];
  v21 = [*(*(a1 + 32) + 32) allValues];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v22 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = [v21 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v23)
  {
    v24 = *v37;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [v22 addObject:{objc_msgSend(*(*(&v36 + 1) + 8 * k), "clientInfo")}];
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v23);
  }

  [*(a1 + 32) setConnectedClients:v22];
  result = [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)registerDevice:(id)device error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v19 = 1024;
      v20 = 2482;
      v21 = 2080;
      v22 = "[CMIOExtensionProvider registerDevice:error:]";
      v23 = 2112;
      selfCopy = self;
      v25 = 2112;
      deviceCopy = device;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_devicesMapLock);
  if (!-[NSMutableDictionary objectForKey:](self->_devicesMap, "objectForKey:", [device deviceID]))
  {
    -[NSMutableDictionary setObject:forKey:](self->_devicesMap, "setObject:forKey:", device, [device deviceID]);
    allKeys = [(NSMutableDictionary *)self->_devicesMap allKeys];
    os_unfair_lock_unlock(&self->_devicesMapLock);
    if ([device didRegister:error])
    {
      [(CMIOExtensionProvider *)self notifyAvailableDevicesChanged:allKeys];
      result = 1;
      goto LABEL_13;
    }

    os_unfair_lock_lock(&self->_devicesMapLock);
    -[NSMutableDictionary removeObjectForKey:](self->_devicesMap, "removeObjectForKey:", [device deviceID]);
    os_unfair_lock_unlock(&self->_devicesMapLock);
    goto LABEL_12;
  }

  os_unfair_lock_unlock(&self->_devicesMapLock);
  v9 = CMIOLog();
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProvider registerDevice:error:];
    if (error)
    {
      goto LABEL_8;
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  if (!error)
  {
    goto LABEL_12;
  }

LABEL_8:
  v10 = *MEMORY[0x277CCA590];
  v15 = *MEMORY[0x277CCA450];
  v16 = @"deviceID already included";
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}];
  result = 0;
  *error = v11;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)unregisterDevice:(id)device error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v19 = 1024;
      v20 = 2519;
      v21 = 2080;
      v22 = "[CMIOExtensionProvider unregisterDevice:error:]";
      v23 = 2112;
      selfCopy = self;
      v25 = 2112;
      deviceCopy = device;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_devicesMapLock);
  v9 = -[NSMutableDictionary objectForKey:](self->_devicesMap, "objectForKey:", [device deviceID]);
  if (!v9)
  {
    os_unfair_lock_unlock(&self->_devicesMapLock);
    v11 = CMIOLog();
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider unregisterDevice:error:];
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
      goto LABEL_10;
    }

    v12 = *MEMORY[0x277CCA590];
    v15 = *MEMORY[0x277CCA450];
    v16 = @"deviceID not registered";
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}];
    goto LABEL_10;
  }

  -[NSMutableDictionary removeObjectForKey:](self->_devicesMap, "removeObjectForKey:", [device deviceID]);
  allKeys = [(NSMutableDictionary *)self->_devicesMap allKeys];
  os_unfair_lock_unlock(&self->_devicesMapLock);
  [device didUnregister];
  [(CMIOExtensionProvider *)self notifyAvailableDevicesChanged:allKeys];
LABEL_10:
  result = v9 != 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)registerStream:(id)stream withDeviceID:(id)d error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v21 = 1024;
      v22 = 2549;
      v23 = 2080;
      v24 = "[CMIOExtensionProvider registerStream:withDeviceID:error:]";
      v25 = 2112;
      selfCopy = self;
      v27 = 2112;
      streamCopy = stream;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_streamsMapLock);
  v11 = -[NSMutableDictionary objectForKey:](self->_streamsMap, "objectForKey:", [stream streamID]);
  if (!v11)
  {
    -[NSMutableDictionary setObject:forKey:](self->_streamsMap, "setObject:forKey:", stream, [stream streamID]);
    allKeys = [(NSMutableDictionary *)self->_streamsMap allKeys];
    os_unfair_lock_unlock(&self->_streamsMapLock);
    [(CMIOExtensionProvider *)self notifyAvailableStreamsChangedWithDeviceID:d streamIDs:allKeys];
    goto LABEL_10;
  }

  os_unfair_lock_unlock(&self->_streamsMapLock);
  v12 = CMIOLog();
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProvider registerStream:withDeviceID:error:];
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (error)
  {
LABEL_8:
    v13 = *MEMORY[0x277CCA590];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"streamID already included";
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:v13 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
  }

LABEL_10:
  result = v11 == 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)unregisterStream:(id)stream withDeviceID:(id)d notify:(BOOL)notify error:(id *)error
{
  notifyCopy = notify;
  v64 = *MEMORY[0x277D85DE8];
  v8 = CMIOLogLevel(1);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v52 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v53 = 1024;
      v54 = 2578;
      v55 = 2080;
      v56 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
      v57 = 2112;
      selfCopy4 = self;
      v59 = 2112;
      streamCopy3 = stream;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  os_unfair_lock_lock(&self->_streamsMapLock);
  if ([(NSMutableDictionary *)self->_streamsMap count])
  {
    v38 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:{-[NSMutableDictionary allKeys](self->_streamsMap, "allKeys")}];
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v39 = -[NSMutableDictionary objectForKey:](self->_streamsMap, "objectForKey:", [stream streamID]);
  if (v39)
  {
    v10 = [objc_msgSend(stream "streamingClients")];
    v46[3] = v10;
    if (v10)
    {
      v11 = CMIOLog();
      v12 = v11;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *buf = 136316162;
        v52 = v13;
        v53 = 1024;
        v54 = 2591;
        v55 = 2080;
        v56 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
        v57 = 2114;
        selfCopy4 = self;
        v59 = 2114;
        streamCopy3 = stream;
        _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@ pending stream clients for %{public}@, wait for stream stop before removing it", buf, 0x30u);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      streamingClients = [stream streamingClients];
      v15 = [streamingClients countByEnumeratingWithState:&v41 objects:v63 count:16];
      if (v15)
      {
        v16 = *v42;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v42 != v16)
            {
              objc_enumerationMutation(streamingClients);
            }

            v18 = *(*(&v41 + 1) + 8 * i);
            v19 = CMIOLog();
            v20 = v19;
            if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              v22 = [objc_msgSend(stream "streamID")];
              *buf = 136316419;
              v52 = v21;
              v53 = 1024;
              v54 = 2593;
              v55 = 2080;
              v56 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
              v57 = 2114;
              selfCopy4 = self;
              v59 = 2114;
              streamCopy3 = v22;
              v61 = 2113;
              v62 = v18;
              _os_log_impl(&dword_22EA08000, v20, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@, %{private}@", buf, 0x3Au);
            }

            v23 = +[CMIOExtensionProvider sharedProvider];
            clientID = [v18 clientID];
            streamID = [stream streamID];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __68__CMIOExtensionProvider_unregisterStream_withDeviceID_notify_error___block_invoke;
            v40[3] = &unk_27885B960;
            v40[5] = stream;
            v40[6] = &v45;
            v40[4] = self;
            [v23 stopStreamForClientID:clientID streamID:streamID reply:v40];
            [(CMIOExtensionProvider *)self removeSystemStatusAttributionsForClient:v18 stream:stream];
          }

          v15 = [streamingClients countByEnumeratingWithState:&v41 objects:v63 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v27 = CMIOLog();
      v28 = v27;
      if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *buf = 136316162;
        v52 = v29;
        v53 = 1024;
        v54 = 2606;
        v55 = 2080;
        v56 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
        v57 = 2114;
        selfCopy4 = self;
        v59 = 2114;
        streamCopy3 = stream;
        _os_log_impl(&dword_22EA08000, v28, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@ no active clients for %{public}@ removing it", buf, 0x30u);
      }

      -[NSMutableDictionary removeObjectForKey:](self->_streamsMap, "removeObjectForKey:", [stream streamID]);
    }

    [v38 removeObject:{objc_msgSend(stream, "streamID")}];
    allObjects = [v38 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  os_unfair_lock_unlock(&self->_streamsMapLock);

  if (v39)
  {
    if (notifyCopy)
    {
      [(CMIOExtensionProvider *)self notifyAvailableStreamsChangedWithDeviceID:d streamIDs:allObjects];
    }
  }

  else
  {
    v30 = CMIOLog();
    if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      [stream streamID];
      [CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:];
    }

    if (error)
    {
      v31 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50 = @"streamID not register";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *error = [v31 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v32];
    }
  }

  _Block_object_dispose(&v45, 8);
  v33 = *MEMORY[0x277D85DE8];
  return v39 != 0;
}

uint64_t __68__CMIOExtensionProvider_unregisterStream_withDeviceID_notify_error___block_invoke(uint64_t result)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!--*(*(*(result + 48) + 8) + 24))
  {
    v1 = result;
    v2 = CMIOLog();
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v5 = *(v1 + 32);
        v6 = [*(v1 + 40) streamID];
        v8 = 136316162;
        v9 = v4;
        v10 = 1024;
        v11 = 2598;
        v12 = 2080;
        v13 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]_block_invoke";
        v14 = 2114;
        v15 = v5;
        v16 = 2114;
        v17 = v6;
        _os_log_impl(&dword_22EA08000, v3, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@ stop stream complete, remove %{public}@", &v8, 0x30u);
      }
    }

    result = [*(*(v1 + 32) + 88) removeObjectForKey:{objc_msgSend(*(v1 + 40), "streamID")}];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)availablePluginPropertiesForClientID:(id)d reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v14 = 1024;
      v15 = 2637;
      v16 = 2080;
      v17 = "[CMIOExtensionProvider availablePluginPropertiesForClientID:reply:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__CMIOExtensionProvider_availablePluginPropertiesForClientID_reply___block_invoke;
  v11[3] = &unk_27885B988;
  v11[4] = self;
  v11[5] = reply;
  dispatch_async(clientQueue, v11);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __68__CMIOExtensionProvider_availablePluginPropertiesForClientID_reply___block_invoke(uint64_t a1)
{
  [objc_loadWeak((*(a1 + 32) + 176)) availableProperties];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)pluginStatesForClientID:(id)d reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v14 = 1024;
      v15 = 2648;
      v16 = 2080;
      v17 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke;
  v11[3] = &unk_27885B988;
  v11[4] = self;
  v11[5] = reply;
  dispatch_async(clientQueue, v11);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v48 = a1;
  v53 = (a1 + 32);
  v3 = [*(a1 + 32) _clientQueue_internalPropertyStatesForProperties:0];
  if ([v3 count])
  {
    [v2 addEntriesFromDictionary:v3];
  }

  v49 = v2;
  v4 = [objc_loadWeak(*v53 + 22) availableProperties];
  v5 = CMIOLog();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v8 = *v53;
      *buf = 136316162;
      v69 = v7;
      v70 = 1024;
      v71 = 2658;
      v72 = 2080;
      v73 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
      v74 = 2114;
      v75 = v8;
      v76 = 2114;
      v77 = v4;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, availableProperties %{public}@", buf, 0x30u);
    }
  }

  if ([v4 count])
  {
    v9 = [objc_msgSend(objc_loadWeak(*v53 + 22) providerPropertiesForProperties:v4 error:{&v65), "propertiesDictionary"}];
    if (v65)
    {
      v10 = CMIOLog();
      v11 = v10;
      if (v10)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v42 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v43 = v65;
          v44 = [v65 localizedDescription];
          *buf = 136316162;
          v69 = v42;
          v70 = 1024;
          v71 = 2665;
          v72 = 2080;
          v73 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
          v74 = 2112;
          v75 = v43;
          v76 = 2112;
          v77 = v44;
          _os_log_error_impl(&dword_22EA08000, v11, OS_LOG_TYPE_ERROR, "%s:%d:%s providerPropertiesForProperties error %@ localizedDescription: %@", buf, 0x30u);
        }
      }
    }

    if ([v9 count])
    {
      [v49 addEntriesFromDictionary:v9];
    }

    else
    {
      v41 = CMIOLog();
      if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke_cold_2();
      }
    }
  }

  v52 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [*v53 devices];
  v54 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v54)
  {
    v51 = *v62;
    v14 = *MEMORY[0x277CCA590];
    v46 = *MEMORY[0x277CCA590];
    v47 = *MEMORY[0x277CCA450];
    *&v13 = 136315906;
    v45 = v13;
    do
    {
      v15 = 0;
      do
      {
        if (*v62 != v51)
        {
          v16 = v15;
          objc_enumerationMutation(obj);
          v15 = v16;
        }

        v55 = v15;
        v17 = *(*(&v61 + 1) + 8 * v15);
        v18 = [MEMORY[0x277CBEB38] dictionary];
        v19 = [v17 _clientQueue_internalPropertyStatesForProperties:0];
        if ([v19 count])
        {
          [v18 addEntriesFromDictionary:v19];
        }

        [*v53 _addAvailablePropertyStatesForDevice:v17 toDictionary:v18];
        [v52 addObject:v18];
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v20 = [v17 streams];
        v21 = [v20 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v21)
        {
          v22 = *v58;
          do
          {
            v23 = 0;
            do
            {
              if (*v58 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v57 + 1) + 8 * v23);
              v25 = [MEMORY[0x277CBEB38] dictionary];
              v26 = [v24 _clientQueue_internalPropertyStatesForProperties:0];
              if ([v26 count])
              {
                [v25 addEntriesFromDictionary:v26];
              }

              v27 = [objc_msgSend(v24 "source")];
              v28 = CMIOLog();
              v29 = v28;
              if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v30 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                *buf = 136316162;
                v69 = v30;
                v70 = 1024;
                v71 = 2703;
                v72 = 2080;
                v73 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
                v74 = 2114;
                v75 = v24;
                v76 = 2114;
                v77 = v27;
                _os_log_impl(&dword_22EA08000, v29, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, stream availableProperties %{public}@", buf, 0x30u);
              }

              if ([v27 count])
              {
                v31 = [objc_msgSend(objc_msgSend(v24 "source")];
                if (v65)
                {
                  v32 = CMIOLog();
                  v33 = v32;
                  if (v32)
                  {
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                    {
                      v56 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                      v36 = v65;
                      v37 = [v65 localizedDescription];
                      *buf = 136316162;
                      v69 = v56;
                      v70 = 1024;
                      v71 = 2710;
                      v72 = 2080;
                      v73 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
                      v74 = 2114;
                      v75 = v36;
                      v76 = 2114;
                      v77 = v37;
                      _os_log_error_impl(&dword_22EA08000, v33, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                    }
                  }
                }

                if ([v31 count])
                {
                  [v25 addEntriesFromDictionary:v31];
                }

                else
                {
                  v34 = CMIOLog();
                  v35 = v34;
                  if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    v38 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    *buf = 136316162;
                    v69 = v38;
                    v70 = 1024;
                    v71 = 2721;
                    v72 = 2080;
                    v73 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
                    v74 = 2114;
                    v75 = v65;
                    v76 = 2114;
                    v77 = v24;
                    _os_log_error_impl(&dword_22EA08000, v35, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ for stream %{public}@", buf, 0x30u);
                  }
                }
              }

              [v12 addObject:v25];
              ++v23;
            }

            while (v21 != v23);
            v21 = [v20 countByEnumeratingWithState:&v57 objects:v66 count:16];
          }

          while (v21);
        }

        v15 = v55 + 1;
      }

      while (v55 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v54);
  }

  result = (*(*(v48 + 40) + 16))();
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_addAvailablePropertyStatesForDevice:(id)device toDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v6 = [objc_msgSend(device "source")];
  v7 = CMIOLog();
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v20 = 1024;
      v21 = 2736;
      v22 = 2080;
      v23 = "[CMIOExtensionProvider _addAvailablePropertyStatesForDevice:toDictionary:]";
      v24 = 2114;
      deviceCopy = device;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, device availableProperties %{public}@", buf, 0x30u);
    }
  }

  if ([v6 count])
  {
    v9 = [objc_msgSend(objc_msgSend(device "source")];
    if (v17[0])
    {
      v10 = CMIOLog();
      v11 = v10;
      if (v10)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v15 = v17[0];
          localizedDescription = [v17[0] localizedDescription];
          *buf = 136316162;
          v19 = v14;
          v20 = 1024;
          v21 = 2743;
          v22 = 2080;
          v23 = "[CMIOExtensionProvider _addAvailablePropertyStatesForDevice:toDictionary:]";
          v24 = 2114;
          deviceCopy = v15;
          v26 = 2114;
          v27 = localizedDescription;
          _os_log_error_impl(&dword_22EA08000, v11, OS_LOG_TYPE_ERROR, "%s:%d:%s devicePropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
        }
      }
    }

    if ([v9 count])
    {
      [dictionary addEntriesFromDictionary:v9];
    }

    else
    {
      v13 = CMIOLog();
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProvider _addAvailablePropertyStatesForDevice:toDictionary:];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)pluginPropertyStatesForClientID:(id)d properties:(id)properties reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 1024;
      v17 = 2762;
      v18 = 2080;
      v19 = "[CMIOExtensionProvider pluginPropertyStatesForClientID:properties:reply:]";
      v20 = 2112;
      selfCopy = self;
      v22 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke;
  block[3] = &unk_27885B9B0;
  block[4] = self;
  block[5] = properties;
  block[6] = reply;
  dispatch_async(clientQueue, block);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v19[0] = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = a1 + 32;
  v4 = [*(a1 + 32) _clientQueue_internalPropertyStatesForProperties:*(a1 + 40)];
  if ([v4 count])
  {
    [v2 addEntriesFromDictionary:v4];
  }

  if (*(a1 + 40))
  {
    v5 = [MEMORY[0x277CBEB58] setWithSet:?];
    if (+[CMIOExtensionProvider internalProperties])
    {
      [v5 minusSet:{+[CMIOExtensionProvider internalProperties](CMIOExtensionProvider, "internalProperties")}];
    }
  }

  else
  {
    v5 = [objc_loadWeak((*v3 + 176)) availableProperties];
    v6 = CMIOLog();
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v9 = *v3;
        *buf = 136316162;
        v21 = v8;
        v22 = 1024;
        v23 = 2774;
        v24 = 2080;
        v25 = "[CMIOExtensionProvider pluginPropertyStatesForClientID:properties:reply:]_block_invoke";
        v26 = 2114;
        v27 = v9;
        v28 = 2114;
        v29 = v5;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, availableProperties %{public}@", buf, 0x30u);
      }
    }
  }

  if ([v5 count])
  {
    v10 = [objc_msgSend(objc_loadWeak((*v3 + 176)) providerPropertiesForProperties:v5 error:{v19), "propertiesDictionary"}];
    if (v19[0])
    {
      v11 = CMIOLog();
      v12 = v11;
      if (v11)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v17 = v19[0];
          v18 = [v19[0] localizedDescription];
          *buf = 136316162;
          v21 = v16;
          v22 = 1024;
          v23 = 2788;
          v24 = 2080;
          v25 = "[CMIOExtensionProvider pluginPropertyStatesForClientID:properties:reply:]_block_invoke";
          v26 = 2114;
          v27 = v17;
          v28 = 2114;
          v29 = v18;
          _os_log_error_impl(&dword_22EA08000, v12, OS_LOG_TYPE_ERROR, "%s:%d:%s providerPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
        }
      }
    }

    if ([v10 count])
    {
      [v2 addEntriesFromDictionary:v10];
    }

    else
    {
      v15 = CMIOLog();
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke_cold_2();
      }
    }
  }

  result = (*(*(a1 + 48) + 16))();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setPluginPropertyValuesForClientID:(id)d propertyValues:(id)values reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 1024;
      v17 = 2814;
      v18 = 2080;
      v19 = "[CMIOExtensionProvider setPluginPropertyValuesForClientID:propertyValues:reply:]";
      v20 = 2112;
      selfCopy = self;
      v22 = 2112;
      dCopy = d;
      v24 = 2112;
      valuesCopy = values;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@, propertyValues %@", buf, 0x3Au);
    }
  }

  clientQueue = self->_clientQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke;
  v13[3] = &unk_27885BA00;
  v13[4] = values;
  v13[5] = self;
  v13[6] = d;
  v13[7] = reply;
  dispatch_async(clientQueue, v13);
  v12 = *MEMORY[0x277D85DE8];
}

void __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  if ([*(a1 + 32) count])
  {
    v2 = [MEMORY[0x277CBEB98] setWithArray:{objc_msgSend(*(a1 + 32), "allKeys")}];
    os_unfair_lock_lock((*(a1 + 40) + 16));
    v3 = [*(*(a1 + 40) + 32) objectForKey:*(a1 + 48)];
    os_unfair_lock_unlock((*(a1 + 40) + 16));
    v4 = -[CMIOExtensionProviderProperties initWithPropertyValues:client:]([CMIOExtensionProviderProperties alloc], "initWithPropertyValues:client:", *(a1 + 32), [v3 clientInfo]);
    [objc_loadWeak((*(a1 + 40) + 176)) setProviderProperties:v4 error:v25];

    if (v25[0])
    {
      v5 = CMIOLog();
      v6 = v5;
      if (v5)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v21 = v25[0];
          v22 = [v25[0] localizedDescription];
          *buf = 136316162;
          v27 = v20;
          v28 = 1024;
          v29 = 2840;
          v30 = 2080;
          v31 = "[CMIOExtensionProvider setPluginPropertyValuesForClientID:propertyValues:reply:]_block_invoke";
          v32 = 2112;
          v33 = v21;
          v34 = 2112;
          v35 = v22;
          _os_log_error_impl(&dword_22EA08000, v6, OS_LOG_TYPE_ERROR, "%s:%d:%s setProviderProperties error %@ localizedDescription: %@", buf, 0x30u);
        }
      }
    }

    v24 = 0;
    v7 = [objc_msgSend(objc_loadWeak((*(a1 + 40) + 176)) providerPropertiesForProperties:v2 error:{&v24), "propertiesDictionary"}];
    if (v24)
    {
      v8 = CMIOLog();
      v9 = v8;
      if (v8)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v18 = v24;
          v19 = [v24 localizedDescription];
          *buf = 136316162;
          v27 = v17;
          v28 = 1024;
          v29 = 2855;
          v30 = 2080;
          v31 = "[CMIOExtensionProvider setPluginPropertyValuesForClientID:propertyValues:reply:]_block_invoke";
          v32 = 2114;
          v33 = v18;
          v34 = 2114;
          v35 = v19;
          _os_log_error_impl(&dword_22EA08000, v9, OS_LOG_TYPE_ERROR, "%s:%d:%s providerPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
        }
      }
    }

    [*(a1 + 40) notifyPropertiesChanged:v7];
    v10 = *(*(a1 + 40) + 8);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_422;
    v23[3] = &unk_27885B9D8;
    v11 = *(a1 + 56);
    v23[4] = v25[0];
    v23[5] = v11;
    dispatch_async(v10, v23);
  }

  else
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_3();
    }

    v13 = *(a1 + 56);
    v14 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"Invalid property value";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    (*(v13 + 16))(v13, [v14 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v15]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)availableDevicePropertiesForClientID:(id)d deviceID:(id)iD reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 1024;
      v17 = 2872;
      v18 = 2080;
      v19 = "[CMIOExtensionProvider availableDevicePropertiesForClientID:deviceID:reply:]";
      v20 = 2112;
      selfCopy = self;
      v22 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CMIOExtensionProvider_availableDevicePropertiesForClientID_deviceID_reply___block_invoke;
  block[3] = &unk_27885B9B0;
  block[4] = self;
  block[5] = iD;
  block[6] = reply;
  dispatch_async(clientQueue, block);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __77__CMIOExtensionProvider_availableDevicePropertiesForClientID_deviceID_reply___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 64));
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 64));
  if (v2)
  {
    [objc_msgSend(v2 "source")];
    v3 = *(a1[6] + 16);
    v4 = *MEMORY[0x277D85DE8];

    return v3();
  }

  else
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __77__CMIOExtensionProvider_availableDevicePropertiesForClientID_deviceID_reply___block_invoke_cold_1();
    }

    v7 = a1[6];
    v8 = *MEMORY[0x277CCA590];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Invalid deviceID";
    result = (*(v7 + 16))(v7, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)deviceStatesForClientID:(id)d deviceID:(id)iD reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 1024;
      v17 = 2895;
      v18 = 2080;
      v19 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]";
      v20 = 2112;
      selfCopy = self;
      v22 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke;
  block[3] = &unk_27885B9B0;
  block[4] = self;
  block[5] = iD;
  block[6] = reply;
  dispatch_async(clientQueue, block);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke(void *a1)
{
  v65[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 64));
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 64));
  if (v2)
  {
    v52 = 0;
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [v2 _clientQueue_internalPropertyStatesForProperties:0];
    if ([v4 count])
    {
      [v3 addEntriesFromDictionary:v4];
    }

    v45 = a1;
    v46 = v3;
    v5 = [objc_msgSend(v2 "source")];
    v6 = CMIOLog();
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136316162;
        v55 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v56 = 1024;
        v57 = 2918;
        v58 = 2080;
        v59 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
        v60 = 2114;
        v61 = v2;
        v62 = 2114;
        v63 = v5;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, device availableProperties %{public}@", buf, 0x30u);
      }
    }

    if ([v5 count])
    {
      v8 = [objc_msgSend(objc_msgSend(v2 "source")];
      if (v52)
      {
        v9 = CMIOLog();
        v10 = v9;
        if (v9)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v39 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v40 = v52;
            v41 = [v52 localizedDescription];
            *buf = 136316162;
            v55 = v39;
            v56 = 1024;
            v57 = 2925;
            v58 = 2080;
            v59 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
            v60 = 2114;
            v61 = v40;
            v62 = 2114;
            v63 = v41;
            _os_log_error_impl(&dword_22EA08000, v10, OS_LOG_TYPE_ERROR, "%s:%d:%s devicePropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
          }
        }
      }

      if ([v8 count])
      {
        [v46 addEntriesFromDictionary:v8];
      }

      else
      {
        v38 = CMIOLog();
        if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_2();
        }
      }
    }

    v11 = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v12 = [v2 streams];
    v13 = [v12 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v13)
    {
      v15 = *v49;
      v43 = *MEMORY[0x277CCA450];
      v44 = *MEMORY[0x277CCA590];
      *&v14 = 136315906;
      v42 = v14;
      do
      {
        v16 = 0;
        do
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v48 + 1) + 8 * v16);
          v18 = [MEMORY[0x277CBEB38] dictionary];
          v19 = [v17 _clientQueue_internalPropertyStatesForProperties:0];
          if ([v19 count])
          {
            [v18 addEntriesFromDictionary:v19];
          }

          v20 = [objc_msgSend(v17 "source")];
          v21 = CMIOLog();
          v22 = v21;
          if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            *buf = 136316162;
            v55 = v23;
            v56 = 1024;
            v57 = 2949;
            v58 = 2080;
            v59 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
            v60 = 2114;
            v61 = v17;
            v62 = 2114;
            v63 = v20;
            _os_log_impl(&dword_22EA08000, v22, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, stream availableProperties %{public}@", buf, 0x30u);
          }

          if ([v20 count])
          {
            v24 = [objc_msgSend(objc_msgSend(v17 "source")];
            if (v52)
            {
              v25 = CMIOLog();
              v26 = v25;
              if (v25)
              {
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v47 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                  v29 = v52;
                  v30 = [v52 localizedDescription];
                  *buf = 136316162;
                  v55 = v47;
                  v56 = 1024;
                  v57 = 2956;
                  v58 = 2080;
                  v59 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
                  v60 = 2114;
                  v61 = v29;
                  v62 = 2114;
                  v63 = v30;
                  _os_log_error_impl(&dword_22EA08000, v26, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                }
              }
            }

            if ([v24 count])
            {
              [v18 addEntriesFromDictionary:v24];
            }

            else
            {
              v27 = CMIOLog();
              v28 = v27;
              if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v31 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                *buf = 136316162;
                v55 = v31;
                v56 = 1024;
                v57 = 2967;
                v58 = 2080;
                v59 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
                v60 = 2114;
                v61 = v52;
                v62 = 2114;
                v63 = v17;
                _os_log_error_impl(&dword_22EA08000, v28, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ for stream %{public}@", buf, 0x30u);
              }
            }
          }

          [v11 addObject:v18];
          ++v16;
        }

        while (v13 != v16);
        v13 = [v12 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v13);
    }

    result = (*(v45[6] + 16))();
  }

  else
  {
    v33 = CMIOLog();
    if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_3();
    }

    v34 = a1[6];
    v35 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v65[0] = @"Invalid deviceID";
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    result = (*(v34 + 16))(v34, 0, 0, [v35 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v36]);
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)devicePropertyStatesForClientID:(id)d deviceID:(id)iD properties:(id)properties reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = CMIOLogLevel(1);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 1024;
      v19 = 2978;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider devicePropertyStatesForClientID:deviceID:properties:reply:]";
      v22 = 2112;
      selfCopy = self;
      v24 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke;
  v15[3] = &unk_27885BA28;
  v15[4] = self;
  v15[5] = iD;
  v15[6] = properties;
  v15[7] = reply;
  dispatch_async(clientQueue, v15);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 64));
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 64));
  if (v2)
  {
    v21[0] = 0;
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [v2 _clientQueue_internalPropertyStatesForProperties:a1[6]];
    if ([v4 count])
    {
      [v3 addEntriesFromDictionary:v4];
    }

    if (a1[6])
    {
      v5 = [MEMORY[0x277CBEB58] setWithSet:?];
      if (+[CMIOExtensionDevice internalProperties])
      {
        [v5 minusSet:{+[CMIOExtensionDevice internalProperties](CMIOExtensionDevice, "internalProperties")}];
      }
    }

    else
    {
      v5 = [objc_msgSend(v2 "source")];
      v11 = CMIOLog();
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136316162;
          v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v24 = 1024;
          v25 = 3003;
          v26 = 2080;
          v27 = "[CMIOExtensionProvider devicePropertyStatesForClientID:deviceID:properties:reply:]_block_invoke";
          v28 = 2114;
          v29 = v2;
          v30 = 2114;
          v31 = v5;
          _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, device availableProperties %{public}@", buf, 0x30u);
        }
      }
    }

    if ([v5 count])
    {
      v13 = [objc_msgSend(objc_msgSend(v2 "source")];
      if (v21[0])
      {
        v14 = CMIOLog();
        v15 = v14;
        if (v14)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v19 = v21[0];
            v20 = [v21[0] localizedDescription];
            *buf = 136316162;
            v23 = v18;
            v24 = 1024;
            v25 = 3017;
            v26 = 2080;
            v27 = "[CMIOExtensionProvider devicePropertyStatesForClientID:deviceID:properties:reply:]_block_invoke";
            v28 = 2114;
            v29 = v19;
            v30 = 2114;
            v31 = v20;
            _os_log_error_impl(&dword_22EA08000, v15, OS_LOG_TYPE_ERROR, "%s:%d:%s devicePropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
          }
        }
      }

      if ([v13 count])
      {
        [v3 addEntriesFromDictionary:v13];
      }

      else
      {
        v17 = CMIOLog();
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_2();
        }
      }
    }

    result = (*(a1[7] + 16))();
  }

  else
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_3();
    }

    v7 = a1[7];
    v8 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"Invalid deviceID";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    result = (*(v7 + 16))(v7, 0, [v8 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v9]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setDevicePropertyValuesForClientID:(id)d deviceID:(id)iD propertyValues:(id)values reply:(id)reply
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = CMIOLog();
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136316163;
      v39 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v40 = 1024;
      v41 = 3043;
      v42 = 2080;
      v43 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]";
      v44 = 2114;
      selfCopy = self;
      v46 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{private}@", buf, 0x30u);
    }
  }

  dCopy2 = d;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [values allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [(CMIOExtensionProvider *)v16 isEqualToString:0x284358E58];
        v18 = CMIOLog();
        v19 = v18;
        if (v17)
        {
          if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v21 = [values objectForKeyedSubscript:v16];
            *buf = 136316163;
            v39 = v20;
            v40 = 1024;
            v41 = 3046;
            v42 = 2080;
            v43 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]";
            v44 = 2113;
            selfCopy = v16;
            v46 = 2113;
            dCopy = v21;
            v22 = v19;
            v23 = "%s:%d:%s %{private}@ : %{private}@";
LABEL_16:
            _os_log_impl(&dword_22EA08000, v22, OS_LOG_TYPE_INFO, v23, buf, 0x30u);
            continue;
          }
        }

        else if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v24 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v25 = [values objectForKeyedSubscript:v16];
          *buf = 136316162;
          v39 = v24;
          v40 = 1024;
          v41 = 3049;
          v42 = 2080;
          v43 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]";
          v44 = 2114;
          selfCopy = v16;
          v46 = 2114;
          dCopy = v25;
          v22 = v19;
          v23 = "%s:%d:%s %{public}@ : %{public}@";
          goto LABEL_16;
        }
      }

      v13 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = *(v28 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke;
  block[3] = &unk_27885BA50;
  block[4] = v28;
  block[5] = iD;
  block[7] = dCopy2;
  block[8] = reply;
  block[6] = values;
  dispatch_async(v26, block);
  v27 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke(uint64_t a1)
{
  v58[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v2 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 64));
  if (v2)
  {
    if ([*(a1 + 48) count])
    {
      os_unfair_lock_lock((*(a1 + 32) + 16));
      v3 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 56)];
      os_unfair_lock_unlock((*(a1 + 32) + 16));
      if (v3)
      {
        if ([v2 deviceControlPID] < 1 || (v4 = objc_msgSend(v2, "deviceControlPID"), v4 == objc_msgSend(objc_msgSend(v3, "clientInfo"), "pid")))
        {
          v40[0] = 0;
          v5 = [v2 _clientQueue_setAndRemoveInternalPropertyValuesForClient:objc_msgSend(v3 propertyValues:"clientInfo") error:{*(a1 + 48), v40}];
          if (!v40[0])
          {
            v6 = v5;
            if ([v5 count])
            {
              v7 = [[CMIOExtensionDeviceProperties alloc] initWithPropertyValues:v6];
              [objc_msgSend(v2 "source")];

              if (v40[0])
              {
                v8 = CMIOLog();
                v9 = v8;
                if (v8)
                {
                  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                  {
                    v32 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    v33 = v40[0];
                    v34 = [v40[0] localizedDescription];
                    *buf = 136316162;
                    v42 = v32;
                    v43 = 1024;
                    v44 = 3101;
                    v45 = 2080;
                    v46 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]_block_invoke";
                    v47 = 2114;
                    v48 = v33;
                    v49 = 2114;
                    v50 = v34;
                    _os_log_error_impl(&dword_22EA08000, v9, OS_LOG_TYPE_ERROR, "%s:%d:%s setDeviceProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                  }
                }
              }

              v39 = 0;
              v10 = [objc_msgSend(objc_msgSend(v2 "source")];
              if (v39)
              {
                v11 = CMIOLog();
                v12 = v11;
                if (v11)
                {
                  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                  {
                    v35 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    v36 = v39;
                    v37 = [v39 localizedDescription];
                    *buf = 136316162;
                    v42 = v35;
                    v43 = 1024;
                    v44 = 3117;
                    v45 = 2080;
                    v46 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]_block_invoke";
                    v47 = 2114;
                    v48 = v36;
                    v49 = 2114;
                    v50 = v37;
                    _os_log_error_impl(&dword_22EA08000, v12, OS_LOG_TYPE_ERROR, "%s:%d:%s devicePropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                  }
                }
              }

              [v2 notifyPropertiesChanged:v10];
            }
          }

          v13 = *(*(a1 + 32) + 8);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_433;
          v38[3] = &unk_27885B9D8;
          v14 = *(a1 + 64);
          v38[4] = v40[0];
          v38[5] = v14;
          dispatch_async(v13, v38);
        }

        else
        {
          v27 = CMIOLog();
          if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_1();
          }

          v28 = *(a1 + 64);
          v29 = MEMORY[0x277CCA9B8];
          v51 = *MEMORY[0x277CCA450];
          v52 = @"Invalid deviceControlPID";
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          (*(v28 + 16))(v28, [v29 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v30]);
        }
      }

      else
      {
        v23 = CMIOLog();
        if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_4();
        }

        v24 = *(a1 + 64);
        v25 = MEMORY[0x277CCA9B8];
        v53 = *MEMORY[0x277CCA450];
        v54 = @"Invalid clientID";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        (*(v24 + 16))(v24, [v25 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v26]);
      }
    }

    else
    {
      v19 = CMIOLog();
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_5();
      }

      v20 = *(a1 + 64);
      v21 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA450];
      v56 = @"Invalid property value";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      (*(v20 + 16))(v20, [v21 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v22]);
    }
  }

  else
  {
    v15 = CMIOLog();
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_6();
    }

    v16 = *(a1 + 64);
    v17 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA450];
    v58[0] = @"Invalid deviceID";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    (*(v16 + 16))(v16, [v17 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v18]);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamPropertiesForClientID:(id)d streamID:(id)iD reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 1024;
      v17 = 3135;
      v18 = 2080;
      v19 = "[CMIOExtensionProvider availableStreamPropertiesForClientID:streamID:reply:]";
      v20 = 2112;
      selfCopy = self;
      v22 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CMIOExtensionProvider_availableStreamPropertiesForClientID_streamID_reply___block_invoke;
  block[3] = &unk_27885B9B0;
  block[4] = self;
  block[5] = iD;
  block[6] = reply;
  dispatch_async(clientQueue, block);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __77__CMIOExtensionProvider_availableStreamPropertiesForClientID_streamID_reply___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 80));
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 80));
  if (v2)
  {
    [objc_msgSend(v2 "source")];
    v3 = *(a1[6] + 16);
    v4 = *MEMORY[0x277D85DE8];

    return v3();
  }

  else
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __77__CMIOExtensionProvider_availableStreamPropertiesForClientID_streamID_reply___block_invoke_cold_1();
    }

    v7 = a1[6];
    v8 = *MEMORY[0x277CCA590];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Invalid streamID";
    result = (*(v7 + 16))(v7, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)streamPropertyStatesForClientID:(id)d streamID:(id)iD properties:(id)properties reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = CMIOLogLevel(1);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 1024;
      v19 = 3158;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider streamPropertyStatesForClientID:streamID:properties:reply:]";
      v22 = 2112;
      selfCopy = self;
      v24 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke;
  v15[3] = &unk_27885BA28;
  v15[4] = self;
  v15[5] = iD;
  v15[6] = properties;
  v15[7] = reply;
  dispatch_async(clientQueue, v15);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 80));
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 80));
  if (v2)
  {
    v21[0] = 0;
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [v2 _clientQueue_internalPropertyStatesForProperties:a1[6]];
    if ([v4 count])
    {
      [v3 addEntriesFromDictionary:v4];
    }

    if (a1[6])
    {
      v5 = [MEMORY[0x277CBEB58] setWithSet:?];
      if (+[CMIOExtensionStream internalProperties])
      {
        [v5 minusSet:{+[CMIOExtensionStream internalProperties](CMIOExtensionStream, "internalProperties")}];
      }
    }

    else
    {
      v5 = [objc_msgSend(v2 "source")];
      v11 = CMIOLog();
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136316162;
          v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v24 = 1024;
          v25 = 3183;
          v26 = 2080;
          v27 = "[CMIOExtensionProvider streamPropertyStatesForClientID:streamID:properties:reply:]_block_invoke";
          v28 = 2114;
          v29 = v2;
          v30 = 2114;
          v31 = v5;
          _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, stream availableProperties %{public}@", buf, 0x30u);
        }
      }
    }

    if ([v5 count])
    {
      v13 = [objc_msgSend(objc_msgSend(v2 "source")];
      if (v21[0])
      {
        v14 = CMIOLog();
        v15 = v14;
        if (v14)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v19 = v21[0];
            v20 = [v21[0] localizedDescription];
            *buf = 136316162;
            v23 = v18;
            v24 = 1024;
            v25 = 3197;
            v26 = 2080;
            v27 = "[CMIOExtensionProvider streamPropertyStatesForClientID:streamID:properties:reply:]_block_invoke";
            v28 = 2114;
            v29 = v19;
            v30 = 2114;
            v31 = v20;
            _os_log_error_impl(&dword_22EA08000, v15, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
          }
        }
      }

      if ([v13 count])
      {
        [v3 addEntriesFromDictionary:v13];
      }

      else
      {
        v17 = CMIOLog();
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_2();
        }
      }
    }

    result = (*(a1[7] + 16))();
  }

  else
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_3();
    }

    v7 = a1[7];
    v8 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"Invalid streamID";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    result = (*(v7 + 16))(v7, 0, [v8 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v9]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setStreamPropertyValuesForClientID:(id)d streamID:(id)iD propertyValues:(id)values reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = CMIOLog();
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316419;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 1024;
      v19 = 3223;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider setStreamPropertyValuesForClientID:streamID:propertyValues:reply:]";
      v22 = 2114;
      selfCopy = self;
      v24 = 2113;
      dCopy = d;
      v26 = 2114;
      valuesCopy = values;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@, propertyValues %{public}@", buf, 0x3Au);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke;
  block[3] = &unk_27885BA50;
  block[4] = self;
  block[5] = iD;
  block[7] = d;
  block[8] = reply;
  block[6] = values;
  dispatch_async(clientQueue, block);
  v14 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke(uint64_t a1)
{
  v58[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 80));
  v2 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 80));
  if (v2)
  {
    if ([*(a1 + 48) count])
    {
      os_unfair_lock_lock((*(a1 + 32) + 16));
      v3 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 56)];
      os_unfair_lock_unlock((*(a1 + 32) + 16));
      if (v3)
      {
        if ([objc_msgSend(v2 "parent")] < 1 || (v4 = objc_msgSend(objc_msgSend(v2, "parent"), "deviceControlPID"), v4 == objc_msgSend(objc_msgSend(v3, "clientInfo"), "pid")))
        {
          v40[0] = 0;
          v5 = [v2 _clientQueue_setAndRemoveInternalPropertyValuesForClient:objc_msgSend(v3 propertyValues:"clientInfo") error:{*(a1 + 48), v40}];
          if (!v40[0])
          {
            v6 = v5;
            if ([v5 count])
            {
              v7 = -[CMIOExtensionStreamProperties initWithPropertyValues:client:]([CMIOExtensionStreamProperties alloc], "initWithPropertyValues:client:", v6, [v3 clientInfo]);
              [objc_msgSend(v2 "source")];

              if (v40[0])
              {
                v8 = CMIOLog();
                v9 = v8;
                if (v8)
                {
                  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                  {
                    v35 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    v36 = v40[0];
                    v37 = [v40[0] localizedDescription];
                    *buf = 136316162;
                    v42 = v35;
                    v43 = 1024;
                    v44 = 3273;
                    v45 = 2080;
                    v46 = "[CMIOExtensionProvider setStreamPropertyValuesForClientID:streamID:propertyValues:reply:]_block_invoke";
                    v47 = 2114;
                    v48 = v36;
                    v49 = 2114;
                    v50 = v37;
                    _os_log_error_impl(&dword_22EA08000, v9, OS_LOG_TYPE_ERROR, "%s:%d:%s setStreamProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                  }
                }
              }

              v39 = 0;
              v10 = [objc_msgSend(objc_msgSend(v2 "source")];
              if (v39)
              {
                v11 = CMIOLog();
                v12 = v11;
                if (v11)
                {
                  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                  {
                    v32 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    v33 = v39;
                    v34 = [v39 localizedDescription];
                    *buf = 136316162;
                    v42 = v32;
                    v43 = 1024;
                    v44 = 3289;
                    v45 = 2080;
                    v46 = "[CMIOExtensionProvider setStreamPropertyValuesForClientID:streamID:propertyValues:reply:]_block_invoke";
                    v47 = 2114;
                    v48 = v33;
                    v49 = 2114;
                    v50 = v34;
                    _os_log_error_impl(&dword_22EA08000, v12, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                  }
                }
              }

              [v2 notifyPropertiesChanged:v10];
            }
          }

          v13 = *(*(a1 + 32) + 8);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_437;
          v38[3] = &unk_27885B9D8;
          v14 = *(a1 + 64);
          v38[4] = v40[0];
          v38[5] = v14;
          dispatch_async(v13, v38);
        }

        else
        {
          v27 = CMIOLog();
          if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_1();
          }

          v28 = *(a1 + 64);
          v29 = MEMORY[0x277CCA9B8];
          v51 = *MEMORY[0x277CCA450];
          v52 = @"Invalid deviceControlPID";
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          (*(v28 + 16))(v28, [v29 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v30]);
        }
      }

      else
      {
        v23 = CMIOLog();
        if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_4();
        }

        v24 = *(a1 + 64);
        v25 = MEMORY[0x277CCA9B8];
        v53 = *MEMORY[0x277CCA450];
        v54 = @"Invalid clientID";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        (*(v24 + 16))(v24, [v25 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v26]);
      }
    }

    else
    {
      v19 = CMIOLog();
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_5();
      }

      v20 = *(a1 + 64);
      v21 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA450];
      v56 = @"Invalid property value";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      (*(v20 + 16))(v20, [v21 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v22]);
    }
  }

  else
  {
    v15 = CMIOLog();
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_6();
    }

    v16 = *(a1 + 64);
    v17 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA450];
    v58[0] = @"Invalid streamID";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    (*(v16 + 16))(v16, [v17 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v18]);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_incrementPendingStartStreamCountForClientID:(id)d streamID:(id)iD
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:start-stream", objc_msgSend(d, "UUIDString"), objc_msgSend(iD, "UUIDString")];
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_pendingCountMap objectForKeyedSubscript:{v5), "intValue"}];
  v7 = CMIOLog();
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316675;
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v12 = 1024;
      v13 = 3316;
      v14 = 2080;
      v15 = "[CMIOExtensionProvider _clientQueue_incrementPendingStartStreamCountForClientID:streamID:]";
      v16 = 2114;
      selfCopy = self;
      v18 = 2113;
      v19 = v5;
      v20 = 1025;
      v21 = v6;
      v22 = 1025;
      v23 = v6 + 1;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@ : %{private}d => %{private}d", buf, 0x3Cu);
    }
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_pendingCountMap, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithInt:(v6 + 1)], v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_decrementPendingStreamStartCountForClientID:(id)d streamID:(id)iD
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:start-stream", objc_msgSend(d, "UUIDString"), objc_msgSend(iD, "UUIDString")];
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_pendingCountMap objectForKeyedSubscript:{v5), "intValue"}];
  v7 = CMIOLog();
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316675;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 3325;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider _clientQueue_decrementPendingStreamStartCountForClientID:streamID:]";
      v19 = 2114;
      selfCopy = self;
      v21 = 2113;
      v22 = v5;
      v23 = 1025;
      v24 = v6;
      v25 = 1025;
      v26 = v6 - 1;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@ : %{private}d => %{private}d", buf, 0x3Cu);
    }
  }

  if (v6 >= 2)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:(v6 - 1)];
    pendingCountMap = self->_pendingCountMap;
LABEL_11:
    [(NSMutableDictionary *)pendingCountMap setObject:v9 forKeyedSubscript:v5];
    goto LABEL_12;
  }

  if (v6 == 1)
  {
    pendingCountMap = self->_pendingCountMap;
    v9 = 0;
    goto LABEL_11;
  }

  v11 = CMIOLog();
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProvider _clientQueue_decrementPendingStreamStartCountForClientID:streamID:];
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
}

- (int)_clientQueue_pendingStartStreamCountForClient:(id)client streamID:(id)d
{
  v4 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pendingCountMap, "objectForKeyedSubscript:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:start-stream", objc_msgSend(client, "UUIDString"), objc_msgSend(d, "UUIDString")]);

  return [v4 intValue];
}

- (void)_clientQueue_removePendingStartStreamCountForClient:(id)client streamID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:start-stream", objc_msgSend(client, "UUIDString"), objc_msgSend(d, "UUIDString")];
  v6 = [(NSMutableDictionary *)self->_pendingCountMap objectForKeyedSubscript:v5];
  v7 = CMIOLog();
  v8 = v7;
  if (v6)
  {
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_pendingCountMap objectForKeyedSubscript:{v5), "intValue"}];
      *buf = 136316419;
      v13 = v9;
      v14 = 1024;
      v15 = 3347;
      v16 = 2080;
      v17 = "[CMIOExtensionProvider _clientQueue_removePendingStartStreamCountForClient:streamID:]";
      v18 = 2112;
      selfCopy2 = self;
      v20 = 2113;
      v21 = v5;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@{public}, %{private}@: forcing pending stream start count %d => 0", buf, 0x36u);
    }

    [(NSMutableDictionary *)self->_pendingCountMap setObject:0 forKeyedSubscript:v5];
  }

  else if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316163;
    v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    v14 = 1024;
    v15 = 3351;
    v16 = 2080;
    v17 = "[CMIOExtensionProvider _clientQueue_removePendingStartStreamCountForClient:streamID:]";
    v18 = 2112;
    selfCopy2 = self;
    v20 = 2113;
    v21 = v5;
    _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@{public}, %{private}@: no pending stream starts", buf, 0x30u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startStreamForClientID:(id)d streamID:(id)iD reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = CMIOLog();
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316163;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 1024;
      v17 = 3357;
      v18 = 2080;
      v19 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]";
      v20 = 2114;
      selfCopy = self;
      v22 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke;
  v13[3] = &unk_27885BA28;
  v13[4] = self;
  v13[5] = iD;
  v13[6] = d;
  v13[7] = reply;
  dispatch_async(clientQueue, v13);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke(uint64_t a1)
{
  v75[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 80));
  v2 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 80));
  if (!v2)
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_3();
    }

    v11 = *(a1 + 56);
    v12 = MEMORY[0x277CCA9B8];
    v74 = *MEMORY[0x277CCA450];
    v75[0] = @"Invalid streamID";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    result = (*(v11 + 16))(v11, [v12 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v13]);
    goto LABEL_70;
  }

  os_unfair_lock_lock((*(a1 + 32) + 16));
  v3 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  if (!v3)
  {
    v14 = CMIOLog();
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_2();
    }

    v15 = *(a1 + 56);
    v16 = MEMORY[0x277CCA9B8];
    v72 = *MEMORY[0x277CCA450];
    v73 = @"Invalid clientID";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    result = (*(v15 + 16))(v15, [v16 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v17]);
    goto LABEL_70;
  }

  v4 = [v3 clientInfo];
  if (([objc_msgSend(v2 "source")] & 1) == 0)
  {
    v34 = CMIOLog();
    v35 = v34;
    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v37 = *(a1 + 32);
      v38 = *(a1 + 48);
      *buf = 136316163;
      v56 = v36;
      v57 = 1024;
      v58 = 3394;
      v59 = 2080;
      v60 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]_block_invoke";
      v61 = 2114;
      v62 = v37;
      v63 = 2113;
      *v64 = v38;
      _os_log_impl(&dword_22EA08000, v35, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: refusing streaming for clientID %{private}@", buf, 0x30u);
    }

    v39 = *(a1 + 56);
    v40 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA450];
    v71 = @"Refusing streaming request";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    result = (*(v39 + 16))(v39, [v40 errorWithDomain:*MEMORY[0x277CCA590] code:-4 userInfo:v41]);
    goto LABEL_70;
  }

  if ([v2 direction])
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = [objc_msgSend(v2 "source")];
  v6 = [v26 countByEnumeratingWithState:&v51 objects:v69 count:16];
  if (!v6)
  {
    v5 = 0;
LABEL_6:
    v7 = 0;
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v27 = 0;
  v28 = 0;
  v29 = *v52;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v52 != v29)
      {
        objc_enumerationMutation(v26);
      }

      MediaType = CMFormatDescriptionGetMediaType([*(*(&v51 + 1) + 8 * i) formatDescription]);
      if (MediaType == 1836415096)
      {
        v27 = 1;
LABEL_44:
        v28 = 1;
        if ((v27 & 1) == 0)
        {
          continue;
        }

        goto LABEL_45;
      }

      if (MediaType != 1936684398)
      {
        goto LABEL_44;
      }

      v27 = 1;
LABEL_45:
      if (v28)
      {
        v28 = 1;
        goto LABEL_51;
      }
    }

    v6 = [v26 countByEnumeratingWithState:&v51 objects:v69 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  if ((v27 & 1) == 0)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_57;
  }

LABEL_51:
  if (![v4 microphoneAuthorizationStatus])
  {
    [v4 authorizationStatusForMediaType:1936684398];
  }

  v7 = [v4 microphoneAuthorizationStatus] != 3;
  if ([v4 microphoneAuthorizationStatus])
  {
    v5 = 1;
    goto LABEL_57;
  }

  v5 = 1;
  if ([v4 hasPendingMicrophoneAuthorizationRequest])
  {
LABEL_57:
    if (v28)
    {
      goto LABEL_58;
    }

LABEL_65:
    v6 = 0;
    goto LABEL_7;
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_441;
  v47[3] = &unk_27885BA78;
  v33 = *(a1 + 32);
  v49 = v28 & 1;
  v47[4] = v33;
  v47[5] = v4;
  v48 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v50 = 1;
  [v4 requestAccessForMediaType:1936684398 performPreFlightTest:0 reply:v47];
  if ((v28 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_58:
  if (![v4 cameraAuthorizationStatus])
  {
    [v4 authorizationStatusForMediaType:1986618469];
  }

  v8 = [v4 cameraAuthorizationStatus] != 3;
  if ([v4 cameraAuthorizationStatus])
  {
    v6 = 1;
  }

  else
  {
    v6 = 1;
    if (([v4 hasPendingCameraAuthorizationRequest] & 1) == 0)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_443;
      v43[3] = &unk_27885BA78;
      v32 = *(a1 + 32);
      v45 = v5;
      v43[4] = v32;
      v43[5] = v4;
      v44 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v46 = 1;
      [v4 requestAccessForMediaType:1986618469 performPreFlightTest:0 reply:v43];
    }
  }

LABEL_8:
  if (v7 || v8)
  {
    v18 = CMIOLog();
    v19 = v18;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v21 = *(a1 + 32);
      if (v7)
      {
        v22 = 84;
      }

      else
      {
        v22 = 70;
      }

      *buf = 136316930;
      if (v8)
      {
        v23 = 84;
      }

      else
      {
        v23 = 70;
      }

      v56 = v20;
      v58 = 3469;
      if (v5)
      {
        v24 = 84;
      }

      else
      {
        v24 = 70;
      }

      v57 = 1024;
      v59 = 2080;
      v60 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]_block_invoke";
      if (v6)
      {
        v25 = 84;
      }

      else
      {
        v25 = 70;
      }

      v61 = 2114;
      v62 = v21;
      v63 = 1024;
      *v64 = v22;
      *&v64[4] = 1024;
      *&v64[6] = v23;
      v65 = 1024;
      v66 = v24;
      v67 = 1024;
      v68 = v25;
      _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: waiting for authorization (audio %c, video %c), requesting audio %c, video %c... returning no error so we don't jam up the caller", buf, 0x3Eu);
    }

    [*(a1 + 32) _clientQueue_incrementPendingStartStreamCountForClientID:*(a1 + 48) streamID:*(a1 + 40)];
    result = (*(*(a1 + 56) + 16))();
  }

  else
  {
    result = [*(a1 + 32) _clientQueue_startStreamForClientID:*(a1 + 48) streamID:*(a1 + 40) requestAudio:v5 requestVideo:v6 reply:*(a1 + 56)];
  }

LABEL_70:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_441(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = CMIOLog();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = *(a1 + 32);
      *v11 = 136316162;
      if (a2 == 3)
      {
        v8 = 89;
      }

      else
      {
        v8 = 78;
      }

      *&v11[4] = v6;
      v12 = 1024;
      v13 = 3433;
      v14 = 2080;
      v15 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]_block_invoke";
      v16 = 2114;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: authorized for microphone %c", v11, 0x2Cu);
    }
  }

  if (a2 == 3)
  {
    if (*(a1 + 64) != 1)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ([*(a1 + 40) cameraAuthorizationStatus] == 3)
    {
      v9 = *(a1 + 64);
LABEL_12:
      [*(a1 + 32) _performDeferredStreamStartsForClient:*(a1 + 48) streamID:*(a1 + 56) requestVideo:v9 & 1 requestAudio:{*(a1 + 65), *v11}];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_443(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = CMIOLog();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = *(a1 + 32);
      *v11 = 136316162;
      if (a2 == 3)
      {
        v8 = 89;
      }

      else
      {
        v8 = 78;
      }

      *&v11[4] = v6;
      v12 = 1024;
      v13 = 3456;
      v14 = 2080;
      v15 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]_block_invoke";
      v16 = 2114;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: authorized for camera %c", v11, 0x2Cu);
    }
  }

  if (a2 == 3)
  {
    if (*(a1 + 64) != 1)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ([*(a1 + 40) microphoneAuthorizationStatus] == 3)
    {
      v9 = *(a1 + 64);
LABEL_12:
      [*(a1 + 32) _performDeferredStreamStartsForClient:*(a1 + 48) streamID:*(a1 + 56) requestVideo:*(a1 + 65) requestAudio:{v9 & 1, *v11}];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_startStreamForClientID:(id)d streamID:(id)iD requestAudio:(BOOL)audio requestVideo:(BOOL)video reply:(id)reply
{
  v48[1] = *MEMORY[0x277D85DE8];
  v11 = CMIOLog();
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316163;
      v37 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v38 = 1024;
      v39 = 3509;
      v40 = 2080;
      v41 = "[CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:]";
      v42 = 2114;
      *v43 = self;
      *&v43[8] = 2113;
      v44[0] = d;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_streamsMapLock);
  v13 = [(NSMutableDictionary *)self->_streamsMap objectForKey:iD];
  os_unfair_lock_unlock(&self->_streamsMapLock);
  if (v13)
  {
    os_unfair_lock_lock(&self->_contextsMapLock);
    v14 = [(NSMutableDictionary *)self->_contextsMap objectForKey:d];
    os_unfair_lock_unlock(&self->_contextsMapLock);
    if (v14)
    {
      clientInfo = [v14 clientInfo];
      v35[0] = 0;
      if ([objc_msgSend(v13 "_clientQueue_streamingClientsMap")])
      {
        v16 = CMIOLog();
        v17 = v16;
        if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *buf = 136316163;
          v37 = v18;
          v38 = 1024;
          v39 = 3560;
          v40 = 2080;
          v41 = "[CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:]";
          v42 = 2114;
          *v43 = self;
          *&v43[8] = 2113;
          v44[0] = clientInfo;
          _os_log_impl(&dword_22EA08000, v17, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: add streaming client %{private}@", buf, 0x30u);
        }

        [v13 _clientQueue_addStreamingClient:clientInfo];
      }

      else
      {
        [v14 setClientSourcedByNonStreamingProxyFrontedExtension:{-[NSArray containsObject:](self->_nonStreamingProxyFrontedExtensionPIDs, "containsObject:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(clientInfo, "pid")))}];
        v25 = CMIOLog();
        v26 = v25;
        if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v28 = [clientInfo pid];
          isClientSourcedByNonStreamingProxyFrontedExtension = [v14 isClientSourcedByNonStreamingProxyFrontedExtension];
          *buf = 136316419;
          if (isClientSourcedByNonStreamingProxyFrontedExtension)
          {
            v30 = 84;
          }

          else
          {
            v30 = 70;
          }

          v37 = v27;
          v38 = 1024;
          v39 = 3543;
          v40 = 2080;
          v41 = "[CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:]";
          v42 = 1025;
          *v43 = v28;
          *&v43[4] = 1024;
          *&v43[6] = v30;
          LOWORD(v44[0]) = 2112;
          *(v44 + 2) = v14;
          _os_log_impl(&dword_22EA08000, v26, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] set proxy streaming status to %c for %@", buf, 0x32u);
        }

        if ([objc_msgSend(v13 "source")])
        {
          v31 = CMIOLog();
          v32 = v31;
          if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            *buf = 136316163;
            v37 = v33;
            v38 = 1024;
            v39 = 3553;
            v40 = 2080;
            v41 = "[CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:]";
            v42 = 2114;
            *v43 = self;
            *&v43[8] = 2113;
            v44[0] = clientInfo;
            _os_log_impl(&dword_22EA08000, v32, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: start streaming for client %{private}@", buf, 0x30u);
          }

          [v13 _clientQueue_addStreamingClient:clientInfo];
          [(CMIOExtensionProvider *)self _clientQueue_notifyIsRunningSomewhereForStream:v13];
        }
      }

      (*(reply + 2))(reply, v35[0]);
    }

    else
    {
      v22 = CMIOLog();
      if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:];
      }

      v23 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46 = @"Invalid clientID";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      (*(reply + 2))(reply, [v23 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v24]);
    }
  }

  else
  {
    v19 = CMIOLog();
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:];
    }

    v20 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA450];
    v48[0] = @"Invalid streamID";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    (*(reply + 2))(reply, [v20 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v21]);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_performDeferredStreamStartsForClient:(id)client streamID:(id)d requestVideo:(BOOL)video requestAudio:(BOOL)audio
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = CMIOLog();
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v20 = 1024;
      v21 = 3606;
      v22 = 2080;
      v23 = "[CMIOExtensionProvider _performDeferredStreamStartsForClient:streamID:requestVideo:requestAudio:]";
      v24 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: dispatching pending stream starting to client queue", buf, 0x26u);
    }
  }

  clientQueue = self->_clientQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke;
  v15[3] = &unk_27885BAC8;
  v15[4] = self;
  v15[5] = client;
  v15[6] = d;
  audioCopy = audio;
  videoCopy = video;
  dispatch_async(clientQueue, v15);
  v14 = *MEMORY[0x277D85DE8];
}

void __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _clientQueue_pendingStartStreamCountForClient:*(a1 + 40) streamID:*(a1 + 48)];
  [*(a1 + 32) _clientQueue_removePendingStartStreamCountForClient:*(a1 + 40) streamID:*(a1 + 48)];
  v3 = CMIOLog();
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = *(a1 + 32);
      *buf = 136316162;
      v24 = v6;
      v25 = 1024;
      v26 = 3610;
      v27 = 2080;
      v28 = "[CMIOExtensionProvider _performDeferredStreamStartsForClient:streamID:requestVideo:requestAudio:]_block_invoke";
      v29 = 2114;
      v30 = v7;
      v31 = 1024;
      v32 = v2;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: %d stream starts are pending", buf, 0x2Cu);
    }
  }

  if (v2 >= 1)
  {
    v8 = 1;
    *&v4 = 136316162;
    v19 = v4;
    do
    {
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v22 = v8;
      v9 = CMIOLog();
      v10 = v9;
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v12 = *(a1 + 32);
        *buf = v19;
        v24 = v11;
        v25 = 1024;
        v26 = 3614;
        v27 = 2080;
        v28 = "[CMIOExtensionProvider _performDeferredStreamStartsForClient:streamID:requestVideo:requestAudio:]_block_invoke";
        v29 = 2114;
        v30 = v12;
        v31 = 1024;
        v32 = v8;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: attempting deferred stream start %d", buf, 0x2Cu);
      }

      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 57);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke_444;
      v20[3] = &unk_27885BAA0;
      v20[4] = v13;
      v20[5] = v21;
      [v13 _clientQueue_startStreamForClientID:v14 streamID:v15 requestAudio:v16 requestVideo:v17 reply:{v20, v19}];
      _Block_object_dispose(v21, 8);
      ++v8;
      --v2;
    }

    while (v2);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke_444(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = CMIOLog();
  v5 = v4;
  if (a2)
  {
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke_444_cold_1();
    }
  }

  else if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    v7 = *(a1 + 32);
    v8 = *(*(*(a1 + 40) + 8) + 24);
    v10 = 136316162;
    v11 = v6;
    v12 = 1024;
    v13 = 3620;
    v14 = 2080;
    v15 = "[CMIOExtensionProvider _performDeferredStreamStartsForClient:streamID:requestVideo:requestAudio:]_block_invoke";
    v16 = 2114;
    v17 = v7;
    v18 = 1026;
    v19 = v8;
    _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: startStream %{public}d succeeded", &v10, 0x2Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopStreamForClientID:(id)d streamID:(id)iD reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = CMIOLog();
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316163;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 1024;
      v17 = 3630;
      v18 = 2080;
      v19 = "[CMIOExtensionProvider stopStreamForClientID:streamID:reply:]";
      v20 = 2114;
      selfCopy = self;
      v22 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke;
  v13[3] = &unk_27885BAF0;
  v13[4] = self;
  v13[5] = d;
  v13[6] = iD;
  v13[7] = reply;
  dispatch_async(clientQueue, v13);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke(uint64_t a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _clientQueue_pendingStartStreamCountForClient:*(a1 + 40) streamID:*(a1 + 48)];
  if (v3 < 1)
  {
    os_unfair_lock_lock((*(a1 + 32) + 80));
    v11 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 48)];
    os_unfair_lock_unlock((*(a1 + 32) + 80));
    if (v11)
    {
      os_unfair_lock_lock((*(a1 + 32) + 16));
      v12 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
      os_unfair_lock_unlock((*(a1 + 32) + 16));
      if (v12)
      {
        v13 = [v12 clientInfo];
        v32 = 0;
        v14 = [v11 _clientQueue_streamingClientsMap];
        if ([v14 objectForKey:*v2] && objc_msgSend(v14, "count") == 1)
        {
          if (([objc_msgSend(v11 "source")] & 1) == 0)
          {
            v15 = CMIOLog();
            if (v15)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_2();
              }
            }
          }

          [v11 _clientQueue_removeStreamingClient:v13];
          v16 = CMIOLog();
          v17 = v16;
          if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v19 = *(a1 + 32);
            *buf = 136316163;
            v34 = v18;
            v35 = 1024;
            v36 = 3684;
            v37 = 2080;
            v38 = "[CMIOExtensionProvider stopStreamForClientID:streamID:reply:]_block_invoke";
            v39 = 2114;
            v40 = v19;
            v41 = 2113;
            v42 = v13;
            _os_log_impl(&dword_22EA08000, v17, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, stop streaming for client %{private}@", buf, 0x30u);
          }

          [*(a1 + 32) _clientQueue_notifyIsRunningSomewhereForStream:v11];
        }

        else
        {
          [v11 _clientQueue_removeStreamingClient:v13];
          v24 = CMIOLog();
          if (v24)
          {
            v25 = v24;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v26 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              v27 = *(a1 + 32);
              *buf = 136316163;
              v34 = v26;
              v35 = 1024;
              v36 = 3691;
              v37 = 2080;
              v38 = "[CMIOExtensionProvider stopStreamForClientID:streamID:reply:]_block_invoke";
              v39 = 2114;
              v40 = v27;
              v41 = 2113;
              v42 = v13;
              _os_log_impl(&dword_22EA08000, v25, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, removed streaming client %{private}@", buf, 0x30u);
            }
          }
        }

        if (![v11 direction])
        {
          [*(a1 + 32) removeSystemStatusAttributionsForClient:v13 stream:v11];
        }

        result = (*(*(a1 + 56) + 16))();
      }

      else
      {
        v28 = CMIOLog();
        if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_3();
        }

        v29 = *(a1 + 56);
        v30 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277CCA450];
        v44 = @"Invalid clientID";
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        result = (*(v29 + 16))(v29, [v30 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v31]);
      }
    }

    else
    {
      v20 = CMIOLog();
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_4();
      }

      v21 = *(a1 + 56);
      v22 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = @"Invalid streamID";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      result = (*(v21 + 16))(v21, [v22 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v23]);
    }
  }

  else
  {
    v4 = v3;
    v5 = CMIOLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v8 = *(a1 + 32);
        *buf = 136316162;
        v34 = v7;
        v35 = 1024;
        v36 = 3636;
        v37 = 2080;
        v38 = "[CMIOExtensionProvider stopStreamForClientID:streamID:reply:]_block_invoke";
        v39 = 2114;
        v40 = v8;
        v41 = 1024;
        LODWORD(v42) = v4;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: stop called for pending deferred start %d... just returning", buf, 0x2Cu);
      }
    }

    [*(a1 + 32) _clientQueue_decrementPendingStreamStartCountForClientID:*(a1 + 40) streamID:*(a1 + 48)];
    result = (*(*(a1 + 56) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)notifyAvailableDevicesChanged:(id)changed
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v23 = 1024;
      v24 = 3704;
      v25 = 2080;
      v26 = "[CMIOExtensionProvider notifyAvailableDevicesChanged:]";
      v27 = 2112;
      selfCopy = self;
      v29 = 2112;
      changedCopy = changed;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [changed countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(changed);
        }

        -[NSArray addObject:](v7, "addObject:", [*(*(&v16 + 1) + 8 * v11++) UUIDString]);
      }

      while (v9 != v11);
      v9 = [changed countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  os_unfair_lock_lock(&self->_changedDeviceIDsLock);
  changedDeviceIDs = self->_changedDeviceIDs;
  self->_changedDeviceIDs = v7;
  os_unfair_lock_unlock(&self->_changedDeviceIDsLock);

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CMIOExtensionProvider_notifyAvailableDevicesChanged___block_invoke;
  block[3] = &unk_27885B8E8;
  block[4] = self;
  dispatch_async(clientQueue, block);
  v14 = *MEMORY[0x277D85DE8];
}

void __55__CMIOExtensionProvider_notifyAvailableDevicesChanged___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 112));
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 112));
  if (v3)
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    v4 = [*(*(a1 + 32) + 32) allValues];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) availableDevicesChanged:v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyAvailableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v24 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v25 = 1024;
      v26 = 3747;
      v27 = 2080;
      v28 = "[CMIOExtensionProvider notifyAvailableStreamsChangedWithDeviceID:streamIDs:]";
      v29 = 2112;
      selfCopy = self;
      v31 = 2112;
      dCopy = d;
      v33 = 2112;
      dsCopy = ds;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@, %@", buf, 0x3Au);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [ds countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(ds);
        }

        -[NSArray addObject:](v9, "addObject:", [*(*(&v18 + 1) + 8 * v13++) UUIDString]);
      }

      while (v11 != v13);
      v11 = [ds countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  os_unfair_lock_lock(&self->_changedStreamIDsLock);
  changedStreamIDs = self->_changedStreamIDs;
  self->_changedStreamIDs = v9;
  os_unfair_lock_unlock(&self->_changedStreamIDsLock);

  clientQueue = self->_clientQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__CMIOExtensionProvider_notifyAvailableStreamsChangedWithDeviceID_streamIDs___block_invoke;
  v17[3] = &unk_27885B938;
  v17[4] = self;
  v17[5] = d;
  dispatch_async(clientQueue, v17);
  v16 = *MEMORY[0x277D85DE8];
}

void __77__CMIOExtensionProvider_notifyAvailableStreamsChangedWithDeviceID_streamIDs___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 128));
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 128));
  if (v3)
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    v4 = [*(*(a1 + 32) + 32) allValues];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) availableStreamsChangedWithDeviceID:objc_msgSend(*(a1 + 40) streamIDs:{"UUIDString"), v3}];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImageForClientID:(id)d streamID:(id)iD uniqueID:(int64_t)uniqueID options:(id)options reply:(id)reply
{
  v30 = *MEMORY[0x277D85DE8];
  v13 = CMIOLogLevel(1);
  if (v13)
  {
    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v20 = 1024;
      v21 = 3790;
      v22 = 2080;
      v23 = "[CMIOExtensionProvider captureAsyncStillImageForClientID:streamID:uniqueID:options:reply:]";
      v24 = 2112;
      selfCopy = self;
      v26 = 2112;
      dCopy = d;
      v28 = 2112;
      iDCopy = iD;
      _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@, %@", buf, 0x3Au);
    }
  }

  clientQueue = self->_clientQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke;
  v17[3] = &unk_27885BB40;
  v17[4] = self;
  v17[5] = iD;
  v17[8] = reply;
  v17[9] = uniqueID;
  v17[6] = d;
  v17[7] = options;
  dispatch_async(clientQueue, v17);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke(void *a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 80));
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 80));
  if (v2)
  {
    os_unfair_lock_lock((a1[4] + 16));
    v3 = [*(a1[4] + 32) objectForKey:a1[6]];
    [v3 setClientSourcedByNonStreamingProxyFrontedExtension:{objc_msgSend(*(a1[4] + 160), "containsObject:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(objc_msgSend(v3, "clientInfo"), "pid")))}];
    os_unfair_lock_unlock((a1[4] + 16));
    if (v3)
    {
      if ([v3 isClientSourcedByNonStreamingProxyFrontedExtension])
      {
        v4 = CMIOLog();
        if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_2();
        }

        v5 = a1[8];
        v6 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277CCA450];
        v22 = @"Client is fronted by proxy that is not streaming";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        result = (*(v5 + 16))(v5, 0, [v6 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v7]);
      }

      else
      {
        v17 = a1[7];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_448;
        v20[3] = &unk_27885BB18;
        v18 = a1[9];
        v20[4] = a1[8];
        result = [v2 captureAsyncStillImage:v18 options:v17 completionHandler:v20];
      }
    }

    else
    {
      v13 = CMIOLog();
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_3();
      }

      v14 = a1[8];
      v15 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"Invalid clientID";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      result = (*(v14 + 16))(v14, 0, [v15 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v16]);
    }
  }

  else
  {
    v9 = CMIOLog();
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_4();
    }

    v10 = a1[8];
    v11 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"Invalid streamID";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    result = (*(v10 + 16))(v10, 0, [v11 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v12]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_448(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a3 userInfo:0];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)enqueueReactionEffectForClientID:(id)d streamID:(id)iD reactionType:(id)type reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = CMIOLogLevel(1);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 1024;
      v19 = 3842;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider enqueueReactionEffectForClientID:streamID:reactionType:reply:]";
      v22 = 2112;
      selfCopy = self;
      v24 = 2112;
      dCopy = d;
      v26 = 2112;
      iDCopy = iD;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@, %@", buf, 0x3Au);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke;
  block[3] = &unk_27885BA50;
  block[4] = self;
  block[5] = iD;
  block[7] = type;
  block[8] = reply;
  block[6] = d;
  dispatch_async(clientQueue, block);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 80));
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 80));
  if (v2)
  {
    os_unfair_lock_lock((a1[4] + 16));
    v3 = [*(a1[4] + 32) objectForKey:a1[6]];
    os_unfair_lock_unlock((a1[4] + 16));
    if (v3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_451;
      v15[3] = &unk_27885BB68;
      v4 = a1[7];
      v15[4] = a1[8];
      result = [v2 enqueueReactionEffect:v4 completionHandler:v15];
    }

    else
    {
      v10 = CMIOLog();
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_2();
      }

      v11 = a1[8];
      v12 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA450];
      v17 = @"Invalid clientID";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      result = (*(v11 + 16))(v11, [v12 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v13]);
    }
  }

  else
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_3();
    }

    v7 = a1[8];
    v8 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Invalid streamID";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    result = (*(v7 + 16))(v7, [v8 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v9]);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_451(uint64_t a1, int a2)
{
  if (a2)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_clientQueue_notifyDevicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v22 = 1024;
      v23 = 3888;
      v24 = 2080;
      v25 = "[CMIOExtensionProvider _clientQueue_notifyDevicePropertiesChangedWithDeviceID:propertyStates:]";
      v26 = 2112;
      selfCopy = self;
      v28 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  allValues = [(NSMutableDictionary *)self->_contextsMap allValues];
  os_unfair_lock_unlock(&self->_contextsMapLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v15 + 1) + 8 * v13++) devicePropertiesChangedWithDeviceID:objc_msgSend(d propertyStates:{"UUIDString"), states}];
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_notifyStreamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v22 = 1024;
      v23 = 3904;
      v24 = 2080;
      v25 = "[CMIOExtensionProvider _clientQueue_notifyStreamPropertiesChangedWithStreamID:propertyStates:]";
      v26 = 2112;
      selfCopy = self;
      v28 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  allValues = [(NSMutableDictionary *)self->_contextsMap allValues];
  os_unfair_lock_unlock(&self->_contextsMapLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v15 + 1) + 8 * v13++) streamPropertiesChangedWithStreamID:objc_msgSend(d propertyStates:{"UUIDString"), states}];
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_notifyIsRunningSomewhereForStream:(id)stream
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v30 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v31 = 1024;
      v32 = 3920;
      v33 = 2080;
      v34 = "[CMIOExtensionProvider _clientQueue_notifyIsRunningSomewhereForStream:]";
      v35 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
    }
  }

  parent = [stream parent];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  streams = [parent streams];
  v9 = [streams countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v9)
  {
    if (([parent isRunningSomewhere] & 1) == 0)
    {
      goto LABEL_22;
    }

    v11 = 0;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v23;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(streams);
      }

      v11 |= [objc_msgSend(*(*(&v22 + 1) + 8 * i) "_clientQueue_streamingClientsMap")] != 0;
    }

    v10 = [streams countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v10);
  if ((v11 & 1) != [parent isRunningSomewhere])
  {
LABEL_15:
    [parent setRunningSomewhere:v11 & 1];
    v14 = [CMIOExtensionPropertyState alloc];
    v15 = -[CMIOExtensionPropertyState initWithValue:attributes:](v14, "initWithValue:attributes:", [MEMORY[0x277CCABB0] numberWithBool:v11 & 1], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    v16 = -[CMIOExtensionPropertyState initWithValue:attributes:]([CMIOExtensionPropertyState alloc], "initWithValue:attributes:", [objc_msgSend(stream "streamID")], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    v17 = -[CMIOExtensionPropertyState initWithValue:attributes:]([CMIOExtensionPropertyState alloc], "initWithValue:attributes:", [objc_msgSend(parent "deviceID")], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    if ([parent legacyDeviceID] && (objc_msgSend(objc_msgSend(parent, "legacyDeviceID"), "isEqualToString:", objc_msgSend(objc_msgSend(parent, "deviceID"), "UUIDString")) & 1) == 0)
    {
      v18 = -[CMIOExtensionPropertyState initWithValue:attributes:]([CMIOExtensionPropertyState alloc], "initWithValue:attributes:", [parent legacyDeviceID], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    }

    else
    {
      v18 = 0;
    }

    v26[0] = 0x284358E18;
    v26[1] = 0x284358E38;
    v27[0] = v15;
    v27[1] = v16;
    v26[2] = 0x284358DB8;
    v27[2] = v17;
    v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v27, v26, 3)}];
    v20 = v19;
    if (v18)
    {
      [v19 setObject:v18 forKeyedSubscript:0x284358DD8];
    }

    [parent notifyPropertiesChanged:v20];
  }

LABEL_22:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_sendSampleForStream:(id)stream sample:(id)sample
{
  sampleCopy = sample;
  v64 = *MEMORY[0x277D85DE8];
  FormatDescription = CMSampleBufferGetFormatDescription([sample sampleBuffer]);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v8 = CMIOLogLevel(3);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136317186;
      v47 = v10;
      v48 = 1024;
      v49 = 3960;
      v50 = 2080;
      v51 = "[CMIOExtensionProvider _clientQueue_sendSampleForStream:sample:]";
      v52 = 2112;
      selfCopy = self;
      v54 = 2112;
      streamCopy2 = stream;
      v56 = 1024;
      v57 = HIBYTE(MediaType);
      v58 = 1024;
      v59 = BYTE2(MediaType);
      v60 = 1024;
      v61 = BYTE1(MediaType);
      v62 = 1024;
      v63 = MediaType;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@ %c%c%c%c", buf, 0x48u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  allValues = [(NSMutableDictionary *)self->_contextsMap allValues];
  v12 = allValues;
  if (self->_nonStreamingProxyFrontedExtensionPIDsHasChanged)
  {
    selfCopy2 = self;
    v33 = sampleCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = [allValues countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v40 + 1) + 8 * i) setClientSourcedByNonStreamingProxyFrontedExtension:{-[NSArray containsObject:](selfCopy2->_nonStreamingProxyFrontedExtensionPIDs, "containsObject:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(objc_msgSend(*(*(&v40 + 1) + 8 * i), "clientInfo"), "pid")))}];
        }

        v15 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v15);
    }

    self = selfCopy2;
    selfCopy2->_nonStreamingProxyFrontedExtensionPIDsHasChanged = 0;
    sampleCopy = v33;
  }

  selfCopy3 = self;
  os_unfair_lock_unlock(&self->_contextsMapLock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v37;
    LODWORD(v32) = BYTE2(MediaType);
    HIDWORD(v32) = HIBYTE(MediaType);
    LODWORD(v31) = MediaType;
    HIDWORD(v31) = BYTE1(MediaType);
    *&v19 = 136317186;
    v30 = v19;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v36 + 1) + 8 * j);
        if ([objc_msgSend(stream _clientQueue_streamingClientsMap])
        {
          clientInfo = [v23 clientInfo];
          if (MediaType == 1936684398)
          {
            microphoneAuthorizationStatus = [clientInfo microphoneAuthorizationStatus];
          }

          else
          {
            microphoneAuthorizationStatus = [clientInfo cameraAuthorizationStatus];
          }

          if (microphoneAuthorizationStatus == 3)
          {
            if (([v23 isClientSourcedByNonStreamingProxyFrontedExtension] & 1) == 0)
            {
              [v23 receivedSampleWithStreamID:objc_msgSend(objc_msgSend(stream sample:{"streamID"), "UUIDString"), sampleCopy}];
            }
          }

          else
          {
            v26 = CMIOLogLevel(3);
            if (v26)
            {
              v27 = v26;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v28 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                *buf = v30;
                v47 = v28;
                v48 = 1024;
                v49 = 3991;
                v50 = 2080;
                v51 = "[CMIOExtensionProvider _clientQueue_sendSampleForStream:sample:]";
                v52 = 2112;
                selfCopy = selfCopy3;
                v54 = 2112;
                streamCopy2 = stream;
                v56 = 1024;
                v57 = HIDWORD(v32);
                v58 = 1024;
                v59 = v32;
                v60 = 1024;
                v61 = HIDWORD(v31);
                v62 = 1024;
                v63 = v31;
                _os_log_impl(&dword_22EA08000, v27, OS_LOG_TYPE_DEFAULT, "%s:%d:%s not authorized %@, %@ %c%c%c%c", buf, 0x48u);
              }
            }
          }
        }
      }

      v20 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)consumeSampleBufferForStream:(id)stream client:(id)client reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(3);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v16 = 1024;
      v17 = 3999;
      v18 = 2080;
      v19 = "[CMIOExtensionProvider consumeSampleBufferForStream:client:reply:]";
      v20 = 2112;
      selfCopy = self;
      v22 = 2112;
      streamCopy = stream;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke;
  v13[3] = &unk_27885BA28;
  v13[4] = stream;
  v13[5] = client;
  v13[6] = self;
  v13[7] = reply;
  dispatch_async(clientQueue, v13);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (![objc_msgSend(*(a1 + 32) "_clientQueue_streamingClientsMap")])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_cold_2();
    }

    v7 = *(a1 + 56);
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA590];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Invalid not streaming";
    v10 = MEMORY[0x277CBEAC0];
    v11 = v19;
    v12 = &v18;
    goto LABEL_12;
  }

  os_unfair_lock_lock((*(a1 + 48) + 80));
  v2 = [*(*(a1 + 48) + 32) objectForKey:{objc_msgSend(*(a1 + 40), "clientID")}];
  os_unfair_lock_unlock((*(a1 + 48) + 80));
  if (!v2)
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_cold_1();
    }

    v7 = *(a1 + 56);
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA590];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Invalid clientID";
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v17;
    v12 = &v16;
LABEL_12:
    result = (*(v7 + 16))(v7, 0, 0, 0, 0, [v8 errorWithDomain:v9 code:-50 userInfo:{objc_msgSend(v10, "dictionaryWithObjects:forKeys:count:", v11, v12, 1)}]);
    goto LABEL_13;
  }

  v3 = [objc_msgSend(*(a1 + 32) "streamID")];
  v4 = *(*(a1 + 48) + 8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_457;
  v15[3] = &unk_27885BB90;
  v15[4] = *(a1 + 56);
  result = [v2 pullSampleBufferForStreamID:v3 replyq:v4 reply:v15];
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_457(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    valuePtr = 0;
    v21 = 0;
    v8 = [a2 sampleBuffer];
    v9 = CMGetAttachment(v8, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, 0);
    if (v9)
    {
      v10 = v9;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v10) && !CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = 0;
      }
    }

    v12 = [a2 sampleBuffer];
    v13 = CMGetAttachment(v12, kCMIOSampleBufferAttachmentKey_SequenceNumber, 0);
    if (v13)
    {
      v14 = v13;
      v15 = CFNumberGetTypeID();
      if (v15 == CFGetTypeID(v14) && !CFNumberGetValue(v14, kCFNumberSInt64Type, &v21))
      {
        v21 = 0;
      }
    }

    v16 = *(a1 + 32);
    v17 = [a2 sampleBuffer];
    return (*(v16 + 16))(v16, v17, v21, valuePtr, a3, a4);
  }

  else
  {
    v19 = *(a1 + 32);
    v20 = *(*(a1 + 32) + 16);

    return v20();
  }
}

- (void)notifyScheduledOutputChangedForStream:(id)stream scheduledOutput:(id)output
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v14 = 1024;
      v15 = 4052;
      v16 = 2080;
      v17 = "[CMIOExtensionProvider notifyScheduledOutputChangedForStream:scheduledOutput:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      streamCopy = stream;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CMIOExtensionProvider_notifyScheduledOutputChangedForStream_scheduledOutput___block_invoke;
  block[3] = &unk_27885BBB8;
  block[4] = self;
  block[5] = stream;
  block[6] = output;
  dispatch_async(clientQueue, block);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __79__CMIOExtensionProvider_notifyScheduledOutputChangedForStream_scheduledOutput___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = [*(*(a1 + 32) + 32) allValues];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([objc_msgSend(*(a1 + 40) "_clientQueue_streamingClientsMap")])
        {
          [v7 streamScheduledOutputChangedWithStreamID:objc_msgSend(objc_msgSend(*(a1 + 40) scheduledOutput:{"streamID"), "UUIDString"), *(a1 + 48)}];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateNonStreamingProxyFrontedExtensionPIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = CMIOLog();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      nonStreamingProxyFrontedExtensionPIDs = self->_nonStreamingProxyFrontedExtensionPIDs;
      v11 = 136316163;
      v12 = v7;
      v13 = 1024;
      v14 = 4157;
      v15 = 2080;
      v16 = "[CMIOExtensionProvider updateNonStreamingProxyFrontedExtensionPIDs:]";
      v17 = 2113;
      v18 = nonStreamingProxyFrontedExtensionPIDs;
      v19 = 2113;
      dsCopy = ds;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s updating %{private}@ to %{private}@", &v11, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  v9 = self->_nonStreamingProxyFrontedExtensionPIDs;
  self->_nonStreamingProxyFrontedExtensionPIDs = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:ds];

  self->_nonStreamingProxyFrontedExtensionPIDsHasChanged = 1;
  os_unfair_lock_unlock(&self->_contextsMapLock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:clientQueue:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addDevice:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addDevice:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeDevice:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeDevice:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)proprietaryDefaultsDomainForAuditToken:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)proprietaryDefaultsDomainForAuditToken:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v2 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)proprietaryDefaultsDomainForAuditToken:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v2 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)proprietaryDefaultsDomainForAuditToken:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __47__CMIOExtensionProvider_removeProviderContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __47__CMIOExtensionProvider_removeProviderContext___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)registerDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [v0 deviceID];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unregisterDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [v0 deviceID];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerStream:withDeviceID:error:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [v0 streamID];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unregisterStream:withDeviceID:notify:error:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  *(v6 + 20) = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
  *(v6 + 28) = 2114;
  *(v6 + 30) = v7;
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s streamID not register %{public}@", v8, v9);
}

void __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v2 = *v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addAvailablePropertyStatesForDevice:toDictionary:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)_addAvailablePropertyStatesForDevice:toDictionary:.cold.2()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

void __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v2 = *v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
  v9 = *MEMORY[0x277D85DE8];
}

void __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__CMIOExtensionProvider_availableDevicePropertiesForClientID_deviceID_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

void __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [v1 deviceControlPID];
  [objc_msgSend(v0 "clientInfo")];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
  v7 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__CMIOExtensionProvider_availableStreamPropertiesForClientID_streamID_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

void __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [objc_msgSend(v1 "parent")];
  [objc_msgSend(v0 "clientInfo")];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
  v7 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_decrementPendingStreamStartCountForClientID:streamID:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)_clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke_444_cold_1()
{
  OUTLINED_FUNCTION_9();
  v9 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *(v0 + 32);
  v2 = *(*(*(v0 + 40) + 8) + 24);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x36u);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

@end