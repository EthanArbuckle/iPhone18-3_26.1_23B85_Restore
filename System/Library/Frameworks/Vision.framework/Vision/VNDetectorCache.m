@interface VNDetectorCache
- (VNDetectorCache)init;
- (VNDetectorCacheDelegate)delegate;
- (id)detectorOfClass:(Class)a3 configuredWithOptions:(id)a4 error:(id *)a5;
- (id)detectorOfType:(id)a3 configuredWithOptions:(id)a4 error:(id *)a5;
- (id)loadedDetectors;
- (void)_reportEvictedDetectors:(_BYTE *)a1;
- (void)cacheDetector:(id)a3;
- (void)evictAllDetectors;
- (void)evictDetectorsPassingTest:(id)a3;
- (void)releaseDetectorsThatCanBeReplacedByDetectorOfClass:(Class)a3 withConfiguration:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation VNDetectorCache

- (void)releaseDetectorsThatCanBeReplacedByDetectorOfClass:(Class)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__VNDetectorCache_releaseDetectorsThatCanBeReplacedByDetectorOfClass_withConfiguration___block_invoke;
  v8[3] = &unk_1E77B4120;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(VNDetectorCache *)self evictDetectorsPassingTest:v8];
}

- (id)loadedDetectors
{
  v2 = [(NSMutableSet *)self->_detectors allObjects];
  v3 = [v2 copy];

  return v3;
}

- (id)detectorOfClass:(Class)a3 configuredWithOptions:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
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
        if ([v14 canBehaveAsDetectorOfClass:a3 withConfiguration:v8])
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
    if (a5)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = NSStringFromClass(a3);
      v18 = [v16 stringWithFormat:@"%@ not available", v17];
      *a5 = [VNError errorForOperationFailedErrorWithLocalizedDescription:v18];
    }

    v11 = 0;
  }

  return v11;
}

- (id)detectorOfType:(id)a3 configuredWithOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [VNDetector detectorClassAndConfigurationOptions:0 forDetectorType:v8 options:v9 error:a5];
  if (v10)
  {
    v11 = [(VNDetectorCache *)self detectorOfClass:v10 configuredWithOptions:v9 error:a5];
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

- (void)_reportEvictedDetectors:(_BYTE *)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1 && (a1[16] & 2) != 0)
  {
    v4 = [a1 delegate];
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

          [v4 detectorCache:a1 didEvictDetector:{*(*(&v9 + 1) + 8 * v8++), v9}];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)evictDetectorsPassingTest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        if (v4[2](v4, v11, &v16))
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

- (void)cacheDetector:(id)a3
{
  v6 = a3;
  if (([(NSMutableSet *)self->_detectors containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_detectors addObject:v6];
    if (*&self->_delegateFlags)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [(VNDetectorCache *)self delegate];
      [v5 detectorCache:self didCacheDetector:v6];

      objc_autoreleasePoolPop(v4);
    }
  }
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_delegate, v5);
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