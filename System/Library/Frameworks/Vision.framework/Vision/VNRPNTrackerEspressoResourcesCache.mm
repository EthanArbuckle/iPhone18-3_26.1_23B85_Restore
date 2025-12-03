@interface VNRPNTrackerEspressoResourcesCache
+ (id)cacheKeyFromOptions:(id)options error:(id *)error;
+ (id)cacheOptionsKeys;
- (BOOL)addRPNTrackerResourcesConfiguredForOptions:(id)options resources:(id)resources error:(id *)error;
- (VNRPNTrackerEspressoResourcesCache)init;
- (id)createRPNTrackerResourcesConfiguredWithOptions:(id)options error:(id *)error;
- (id)locateRPNTrackerResourcesConfiguredForOptions:(id)options error:(id *)error;
- (void)releaseCachedResources;
@end

@implementation VNRPNTrackerEspressoResourcesCache

- (void)releaseCachedResources
{
  [(NSLock *)self->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock lock];
  [(NSMutableDictionary *)self->_rpnEspressoResourcesKeyToEspressoResourcesCache removeAllObjects];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
  rpnEspressoResourcesKeyToEspressoResourcesCache = self->_rpnEspressoResourcesKeyToEspressoResourcesCache;
  self->_rpnEspressoResourcesKeyToEspressoResourcesCache = v3;

  [(NSLock *)self->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock unlock];
}

- (id)createRPNTrackerResourcesConfiguredWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  [(NSLock *)self->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock lock];
  v7 = [objc_opt_class() cacheKeyFromOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_rpnEspressoResourcesKeyToEspressoResourcesCache objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = objc_opt_class();
      v11 = [VNValidationUtilities requiredObjectOfClass:v10 forKey:@"VNObjectTrackerRevision2Type_RPNTrackerInitModelName" inOptions:optionsCopy error:error];
      if (v11)
      {
        v12 = [VNValidationUtilities requiredObjectOfClass:v10 forKey:@"VNObjectTrackerRevision2Type_RPNTrackerTrackModelName" inOptions:optionsCopy error:error];
        if (!v12)
        {
          goto LABEL_22;
        }

        v13 = optionsCopy;
        v27 = v11;
        v14 = v12;
        v15 = objc_opt_self();
        v16 = [VNValidationUtilities requiredObjectConformingToProtocol:&unk_1F19ECC98 forKey:@"VNTrackingOption_ComputeDevice" inOptions:v13 error:error];
        if (v16)
        {
          v23 = v15;
          v26 = v16;
          v17 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNDetectorOption_PreferBackgroundProcessing" inOptions:v13 error:error];
          if (v17)
          {
            v25 = v14;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __110__VNRPNTrackerEspressoResources_resourcesForOptions_PRNInitEspressoModelName_RPNTrackEspressoModelName_error___block_invoke;
            aBlock[3] = &unk_1E77B5E08;
            v24 = v13;
            v29 = v13;
            v30 = v26;
            v31 = v17;
            v18 = _Block_copy(aBlock);
            v19 = v18[2](v18, v27, error);
            if (v19)
            {
              v20 = v18[2](v18, v25, error);
              v21 = v20 ? [[v23 alloc] _initWithRPNInitEspressoResources:v19 RPNTrackEspressoResources:v20] : 0;
            }

            else
            {
              v21 = 0;
            }

            v13 = v24;
            v14 = v25;
          }

          else
          {
            v21 = 0;
          }

          v16 = v26;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          [(NSMutableDictionary *)self->_rpnEspressoResourcesKeyToEspressoResourcesCache setValue:v21 forKey:v7];
          v9 = v21;
        }

        else
        {
LABEL_22:
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  [(NSLock *)self->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock unlock];

  return v9;
}

- (id)locateRPNTrackerResourcesConfiguredForOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  [(NSLock *)self->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock lock];
  v7 = [objc_opt_class() cacheKeyFromOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_rpnEspressoResourcesKeyToEspressoResourcesCache objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else if (error)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not locate RPN Tracker resources for '%@'", v7];
      *error = [VNError errorForDataUnavailableWithLocalizedDescription:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  [(NSLock *)self->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock unlock];

  return v9;
}

- (BOOL)addRPNTrackerResourcesConfiguredForOptions:(id)options resources:(id)resources error:(id *)error
{
  optionsCopy = options;
  resourcesCopy = resources;
  [(NSLock *)self->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock lock];
  if (resourcesCopy)
  {
    v10 = [objc_opt_class() cacheKeyFromOptions:optionsCopy error:error];
    v11 = v10 != 0;
    if (v10)
    {
      [(NSMutableDictionary *)self->_rpnEspressoResourcesKeyToEspressoResourcesCache setObject:resourcesCopy forKeyedSubscript:v10];
    }
  }

  else if (error)
  {
    [VNError errorForInvalidArgument:0 named:@"Tracker resources"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  [(NSLock *)self->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock unlock];

  return v11;
}

- (VNRPNTrackerEspressoResourcesCache)init
{
  v9.receiver = self;
  v9.super_class = VNRPNTrackerEspressoResourcesCache;
  v2 = [(VNRPNTrackerEspressoResourcesCache *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    rpnEspressoResourcesKeyToEspressoResourcesCache = v2->_rpnEspressoResourcesKeyToEspressoResourcesCache;
    v2->_rpnEspressoResourcesKeyToEspressoResourcesCache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AD10]);
    rpnEspressoResourcesKeyToEspressoResourcesCacheLock = v2->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock;
    v2->_rpnEspressoResourcesKeyToEspressoResourcesCacheLock = v5;

    v7 = v2;
  }

  return v2;
}

+ (id)cacheKeyFromOptions:(id)options error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  cacheOptionsKeys = [objc_opt_class() cacheOptionsKeys];
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = cacheOptionsKeys;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [optionsCopy objectForKeyedSubscript:v11];
        v13 = v12;
        if (!v12)
        {
          if (error)
          {
            v15 = [VNError errorForInternalErrorWithLocalizedDescription:@"Option value for option key %@ is a mandatory parameter"];
          }

          v14 = 0;
          goto LABEL_13;
        }

        [v6 appendFormat:@":%@=%@", v11, v12];
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v6 copy];
LABEL_13:

  return v14;
}

+ (id)cacheOptionsKeys
{
  if (+[VNRPNTrackerEspressoResourcesCache cacheOptionsKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNRPNTrackerEspressoResourcesCache cacheOptionsKeys]::onceToken, &__block_literal_global_33174);
  }

  v3 = +[VNRPNTrackerEspressoResourcesCache cacheOptionsKeys]::cacheOptionsKeys;

  return v3;
}

void __54__VNRPNTrackerEspressoResourcesCache_cacheOptionsKeys__block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNDetectorOption_PreferBackgroundProcessing";
  v2[1] = @"VNTrackingOption_ComputeDevice";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];
  v1 = +[VNRPNTrackerEspressoResourcesCache cacheOptionsKeys]::cacheOptionsKeys;
  +[VNRPNTrackerEspressoResourcesCache cacheOptionsKeys]::cacheOptionsKeys = v0;
}

@end