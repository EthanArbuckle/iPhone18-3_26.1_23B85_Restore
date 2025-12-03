@interface VNDetectorCache
- (VNDetectorCache)init;
- (VNDetectorCacheDelegate)delegate;
- (id)detectorOfClass:(Class)class configuredWithOptions:(id)options error:(id *)error;
- (id)detectorOfType:(id)type configuredWithOptions:(id)options error:(id *)error;
- (id)loadedDetectors;
- (void)_reportEvictedDetectors:(_BYTE *)detectors;
- (void)cacheDetector:(id)detector;
- (void)evictAllDetectors;
- (void)evictDetectorsPassingTest:(id)test;
- (void)releaseDetectorsThatCanBeReplacedByDetectorOfClass:(Class)class withConfiguration:(id)configuration;
- (void)setDelegate:(id)delegate;
@end

@implementation VNDetectorCache

- (void)releaseDetectorsThatCanBeReplacedByDetectorOfClass:(Class)class withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__VNDetectorCache_releaseDetectorsThatCanBeReplacedByDetectorOfClass_withConfiguration___block_invoke;
  v8[3] = &unk_1E77B4120;
  v9 = configurationCopy;
  classCopy = class;
  v7 = configurationCopy;
  [(VNDetectorCache *)self evictDetectorsPassingTest:v8];
}

- (id)loadedDetectors
{
  allObjects = [(NSMutableSet *)self->_detectors allObjects];
  v3 = [allObjects copy];

  return v3;
}

- (id)detectorOfClass:(Class)class configuredWithOptions:(id)options error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = objc_autoreleasePoolPush();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_detectors;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 canBehaveAsDetectorOfClass:class withConfiguration:optionsCopy])
        {
          v11 = v14;
          v15 = 0;
          goto LABEL_11;
        }
      }

      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  objc_autoreleasePoolPop(v9);
  if (v15)
  {
    if (error)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = NSStringFromClass(class);
      v18 = [v16 stringWithFormat:@"%@ not available", v17];
      *error = [VNError errorForOperationFailedErrorWithLocalizedDescription:v18];
    }

    v11 = 0;
  }

  return v11;
}

- (id)detectorOfType:(id)type configuredWithOptions:(id)options error:(id *)error
{
  typeCopy = type;
  optionsCopy = options;
  v10 = [VNDetector detectorClassAndConfigurationOptions:0 forDetectorType:typeCopy options:optionsCopy error:error];
  if (v10)
  {
    v11 = [(VNDetectorCache *)self detectorOfClass:v10 configuredWithOptions:optionsCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)evictAllDetectors
{
  if ([(NSMutableSet *)self->_detectors count])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [(NSMutableSet *)self->_detectors copy];
    [(NSMutableSet *)self->_detectors removeAllObjects];
    [(VNDetectorCache *)self _reportEvictedDetectors:v4];

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_reportEvictedDetectors:(_BYTE *)detectors
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (detectors && (detectors[16] & 2) != 0)
  {
    delegate = [detectors delegate];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v5);
          }

          [delegate detectorCache:detectors didEvictDetector:{*(*(&v9 + 1) + 8 * v8++), v9}];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)evictDetectorsPassingTest:(id)test
{
  v18 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if ([(NSMutableSet *)self->_detectors count])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_detectors;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = *v13;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (testCopy[2](testCopy, v11, &v16))
        {
          [v6 addObject:{v11, v12}];
        }

        if (v16)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v6 count])
    {
      [(NSMutableSet *)self->_detectors minusSet:v6];
      [(VNDetectorCache *)self _reportEvictedDetectors:v6];
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)cacheDetector:(id)detector
{
  detectorCopy = detector;
  if (([(NSMutableSet *)self->_detectors containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_detectors addObject:detectorCopy];
    if (*&self->_delegateFlags)
    {
      v4 = objc_autoreleasePoolPush();
      delegate = [(VNDetectorCache *)self delegate];
      [delegate detectorCache:self didCacheDetector:detectorCopy];

      objc_autoreleasePoolPop(v4);
    }
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v4;
}

- (VNDetectorCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VNDetectorCache)init
{
  v6.receiver = self;
  v6.super_class = VNDetectorCache;
  v2 = [(VNDetectorCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    detectors = v2->_detectors;
    v2->_detectors = v3;
  }

  return v2;
}

@end