@interface VNFrameworkManager
+ (id)manager;
+ (int)linktimeVersion;
- (NSArray)allSessions;
- (VNFrameworkManager)init;
- (id)_locateDetectorOfClass:(Class)class configuredWithOptions:(id)options inSessions:(id)sessions excludingSession:(id)session;
- (id)_locateResourceObjectForIdentifier:(id)identifier requestingSession:(id)session creationBlock:(id)block error:(id *)error;
- (id)_locateTrackerResourcesConfiguredWithOptions:(id)options inSessions:(id)sessions excludingSession:(id)session;
- (id)detectorOfClass:(Class)class configuredWithOptions:(id)options forSession:(id)session error:(id *)error;
- (id)loadedDetectors;
- (id)trackerResourcesConfiguredWithOptions:(id)options forSession:(id)session error:(id *)error;
- (id)wisdomParameterForMTLDevice:(id)device error:(id *)error;
- (id)wisdomParameterForMTLDeviceWithName:(id)name error:(id *)error;
- (void)legacyForcedCleanupOfFacePipelineWithLevel:(id)level;
- (void)legacyForcedCleanupOfJunkPipelineWithLevel:(id)level;
- (void)legacyForcedCleanupOfScenePipelineWithLevel:(id)level;
- (void)legacyForcedCleanupOfSmartCamPipelineWithLevel:(id)level;
- (void)legacyForcedCleanupWithOptions:(id)options;
@end

@implementation VNFrameworkManager

- (void)legacyForcedCleanupOfJunkPipelineWithLevel:(id)level
{
  v14 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allSessions = [(VNFrameworkManager *)self allSessions];
  v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allSessions);
        }

        [*(*(&v9 + 1) + 8 * v8++) legacyForcedCleanupOfJunkPipelineWithLevel:levelCopy];
      }

      while (v6 != v8);
      v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)legacyForcedCleanupOfSmartCamPipelineWithLevel:(id)level
{
  v14 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allSessions = [(VNFrameworkManager *)self allSessions];
  v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allSessions);
        }

        [*(*(&v9 + 1) + 8 * v8++) legacyForcedCleanupOfSmartCamPipelineWithLevel:levelCopy];
      }

      while (v6 != v8);
      v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)legacyForcedCleanupOfScenePipelineWithLevel:(id)level
{
  v14 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allSessions = [(VNFrameworkManager *)self allSessions];
  v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allSessions);
        }

        [*(*(&v9 + 1) + 8 * v8++) legacyForcedCleanupOfFacePipelineWithLevel:levelCopy];
      }

      while (v6 != v8);
      v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)legacyForcedCleanupOfFacePipelineWithLevel:(id)level
{
  v14 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allSessions = [(VNFrameworkManager *)self allSessions];
  v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allSessions);
        }

        [*(*(&v9 + 1) + 8 * v8++) legacyForcedCleanupOfFacePipelineWithLevel:levelCopy];
      }

      while (v6 != v8);
      v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)legacyForcedCleanupWithOptions:(id)options
{
  v14 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allSessions = [(VNFrameworkManager *)self allSessions];
  v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allSessions);
        }

        [*(*(&v9 + 1) + 8 * v8++) legacyForcedCleanupWithOptions:optionsCopy];
      }

      while (v6 != v8);
      v6 = [allSessions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)wisdomParameterForMTLDeviceWithName:(id)name error:(id *)error
{
  v4 = [(VNMTLDeviceWisdomParameters *)self->_wisdomParameters wisdomParameterForMTLDeviceWithName:name error:error];

  return v4;
}

- (id)wisdomParameterForMTLDevice:(id)device error:(id *)error
{
  v4 = [(VNMTLDeviceWisdomParameters *)self->_wisdomParameters wisdomParameterForMTLDevice:device error:error];

  return v4;
}

- (id)loadedDetectors
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(VNFrameworkManager *)self allSessions];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        loadedDetectors = [*(*(&v12 + 1) + 8 * i) loadedDetectors];
        [v4 addObjectsFromArray:loadedDetectors];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  allObjects = [v4 allObjects];

  objc_autoreleasePoolPop(v3);

  return allObjects;
}

- (id)trackerResourcesConfiguredWithOptions:(id)options forSession:(id)session error:(id *)error
{
  optionsCopy = options;
  sessionCopy = session;
  allSessions = [(VNFrameworkManager *)self allSessions];
  v11 = [(VNFrameworkManager *)self _locateTrackerResourcesConfiguredWithOptions:optionsCopy inSessions:allSessions excludingSession:sessionCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [sessionCopy createRPNTrackerResourcesConfiguredWithOptions:optionsCopy error:error];
  }

  v14 = v13;

  return v14;
}

- (id)detectorOfClass:(Class)class configuredWithOptions:(id)options forSession:(id)session error:(id *)error
{
  optionsCopy = options;
  sessionCopy = session;
  allSessions = [(VNFrameworkManager *)self allSessions];
  v13 = [(VNFrameworkManager *)self _locateDetectorOfClass:class configuredWithOptions:optionsCopy inSessions:allSessions excludingSession:sessionCopy];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    [sessionCopy _releaseDetectorsThatCanBeReplacedByDetectorOfClass:class withConfiguration:optionsCopy];
    [(objc_class *)class VNClassCode];
    kdebug_trace();
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:class forKeyedSubscript:@"VNDetectorNotificationDetectorClass"];
    [v15 setObject:optionsCopy forKeyedSubscript:@"VNDetectorNotificationConfiguration"];
    [(NSNotificationCenter *)self->_notificationCenter postNotificationName:@"VNDetectorWillLoadNotification" object:0 userInfo:v15];
    v14 = [(objc_class *)class detectorWithConfigurationOptions:optionsCopy forSession:sessionCopy error:error];
    [v14 signPostAdditionalParameter];
    kdebug_trace();
    if (v14)
    {
      [v15 setObject:v14 forKeyedSubscript:@"VNDetectorNotificationDetector"];
      [(NSNotificationCenter *)self->_notificationCenter postNotificationName:@"VNDetectorDidLoadNotification" object:v14 userInfo:v15];
      v16 = v14;
    }
  }

  return v14;
}

- (id)_locateResourceObjectForIdentifier:(id)identifier requestingSession:(id)session creationBlock:(id)block error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sessionCopy = session;
  blockCopy = block;
  [(VNFrameworkManager *)self allSessions];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v13 = v22 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (v17 != sessionCopy)
        {
          v18 = [v17 cachedResourceObjectForIdentifier:identifierCopy];
          if (v18)
          {
            identifierCopy = v13;
            goto LABEL_13;
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if (blockCopy)
  {
    v18 = blockCopy[2](blockCopy, error);
  }

  else if (error)
  {
    identifierCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not locate resource object %@", identifierCopy];
    [VNError errorForDataUnavailableWithLocalizedDescription:identifierCopy];
    *error = v18 = 0;
LABEL_13:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (NSArray)allSessions
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(VNWeakTypeWrapperCollection *)self->_sessions allObjectsDroppingWeakZeroedObjects:1];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)_locateTrackerResourcesConfiguredWithOptions:(id)options inSessions:(id)sessions excludingSession:(id)session
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  sessionsCopy = sessions;
  sessionCopy = session;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = sessionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      if (v14 != sessionCopy)
      {
        v15 = [v14 _cachedTrackerResourcesConfiguredWithOptions:{optionsCopy, v17}];
        if (v15)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v15 = 0;
  }

  return v15;
}

- (id)_locateDetectorOfClass:(Class)class configuredWithOptions:(id)options inSessions:(id)sessions excludingSession:(id)session
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  sessionsCopy = sessions;
  sessionCopy = session;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = sessionsCopy;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = *v20;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      if (v16 != sessionCopy)
      {
        v17 = [v16 _cachedDetectorOfClass:class configuredWithOptions:{optionsCopy, v19}];
        if (v17)
        {
          break;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (VNFrameworkManager)init
{
  v18.receiver = self;
  v18.super_class = VNFrameworkManager;
  v2 = [(VNFrameworkManager *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD88]);
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DF950]);
    detectorDescriptorsCache = v2->_detectorDescriptorsCache;
    v2->_detectorDescriptorsCache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AE68]);
    detectorAccessingLock = v2->_detectorAccessingLock;
    v2->_detectorAccessingLock = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AE68]);
    trackerResourcesAccessingLock = v2->_trackerResourcesAccessingLock;
    v2->_trackerResourcesAccessingLock = v9;

    v11 = objc_alloc_init(VNWeakTypeWrapperCollection);
    sessions = v2->_sessions;
    v2->_sessions = v11;

    v13 = objc_alloc_init(VNMTLDeviceWisdomParameters);
    wisdomParameters = v2->_wisdomParameters;
    v2->_wisdomParameters = v13;

    v15 = objc_alloc_init(MEMORY[0x1E696AE68]);
    sessionResourcesAccessingLock = v2->_sessionResourcesAccessingLock;
    v2->_sessionResourcesAccessingLock = v15;
  }

  return v2;
}

+ (id)manager
{
  if (+[VNFrameworkManager manager]::onceToken != -1)
  {
    dispatch_once(&+[VNFrameworkManager manager]::onceToken, &__block_literal_global_5175);
  }

  v3 = +[VNFrameworkManager manager]::ourManager;

  return v3;
}

uint64_t __29__VNFrameworkManager_manager__block_invoke()
{
  +[VNFrameworkManager manager]::ourManager = objc_alloc_init(VNFrameworkManager);

  return MEMORY[0x1EEE66BB8]();
}

+ (int)linktimeVersion
{
  result = +[VNRuntimeUtilities linkTimeVersion];
  if (result == -1)
  {

    return +[VNRuntimeUtilities runTimeVersion];
  }

  return result;
}

@end