@interface ARSplitTechniqueSynchronizerTechnique
- (ARSplitTechniqueSynchronizerTechnique)initWithSynchronizedResultDataClasses:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)_recursivelyGatherData:(id)a3 fromContext:(id)a4;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
- (void)technique:(id)a3 didFailWithError:(id)a4;
- (void)technique:(id)a3 didOutputResultData:(id)a4 timestamp:(double)a5 context:(id)a6;
@end

@implementation ARSplitTechniqueSynchronizerTechnique

- (ARSplitTechniqueSynchronizerTechnique)initWithSynchronizedResultDataClasses:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ARSplitTechniqueSynchronizerTechnique;
  v5 = [(ARTechnique *)&v16 init];
  if (v5)
  {
    v6 = dispatch_semaphore_create(1);
    lastReceivedResultsSemaphore = v5->_lastReceivedResultsSemaphore;
    v5->_lastReceivedResultsSemaphore = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    lastReceivedResults = v5->_lastReceivedResults;
    v5->_lastReceivedResults = v8;

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.qatracing.dumpSemanticSegmantationData"])
    {
      v10 = [v4 mutableCopy];
      [v10 addObject:objc_opt_class()];

      v4 = v10;
    }

    objc_storeStrong(&v5->_synchronizedResultDataClasses, v4);
    v11 = [[ARCircularArray alloc] initWithCapacity:2];
    contextsWaitingForSynchronizationData = v5->_contextsWaitingForSynchronizationData;
    v5->_contextsWaitingForSynchronizationData = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    pendingResults = v5->_pendingResults;
    v5->_pendingResults = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARSplitTechniqueSynchronizerTechnique;
  if ([(ARTechnique *)&v8 isEqual:v4])
  {
    v5 = [v4 synchronizedResultDataClasses];
    v6 = [v5 isEqualToSet:self->_synchronizedResultDataClasses];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_semaphore_wait(self->_lastReceivedResultsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if ([(NSMutableArray *)self->_lastReceivedResults count])
  {
    v19 = v6;
    v7 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = self->_lastReceivedResults;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addObjectsFromArray:v13];
          }

          else
          {
            [v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_lastReceivedResults removeAllObjects];
    dispatch_semaphore_signal(self->_lastReceivedResultsSemaphore);
    v14 = [ARNonSynchronousData alloc];
    v6 = v19;
    v15 = [v19 imageData];
    [v15 timestamp];
    v16 = [(ARNonSynchronousData *)v14 initWithGatheredData:v7 timestamp:?];

    v17 = [(ARTechnique *)self delegate];
    v24 = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [v17 technique:self didOutputResultData:v18 timestamp:v19 context:a3];
  }

  else
  {
    dispatch_semaphore_signal(self->_lastReceivedResultsSemaphore);
    v7 = [(ARTechnique *)self delegate];
    [v7 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:v6 context:a3];
  }
}

- (void)technique:(id)a3 didOutputResultData:(id)a4 timestamp:(double)a5 context:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a6;
  v9 = [MEMORY[0x1E695DF70] arrayWithArray:a4];
  [(ARSplitTechniqueSynchronizerTechnique *)self _recursivelyGatherData:v9 fromContext:v8];
  v10 = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        if ([(NSSet *)self->_synchronizedResultDataClasses containsObject:objc_opt_class()])
        {
          [v10 addObject:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v12);
  }

  if ([(NSSet *)self->_synchronizedResultDataClasses containsObject:objc_opt_class()])
  {
    v16 = [v8 imageData];
    [v10 addObject:v16];
  }

  v38 = v10;
  v40 = v8;
  if ([v10 count])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [v8 imageData];
    [v18 timestamp];
    v19 = [v17 numberWithDouble:?];

    contextsWaitingForSynchronizationData = self->_contextsWaitingForSynchronizationData;
    v21 = MEMORY[0x1E696AD98];
    v22 = [v8 imageData];
    [v22 timestamp];
    v23 = [v21 numberWithDouble:?];
    v24 = [(ARCircularArray *)contextsWaitingForSynchronizationData addObject:v23];

    if (v24)
    {
      [(NSMutableDictionary *)self->_pendingResults removeObjectForKey:v24];
    }

    v25 = [(NSMutableDictionary *)self->_pendingResults objectForKeyedSubscript:v19];
    if (!v25)
    {
      v25 = [MEMORY[0x1E695DF70] array];
    }

    [v25 addObjectsFromArray:v10];
    [(NSMutableDictionary *)self->_pendingResults setObject:v25 forKeyedSubscript:v19];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v41 = [(NSMutableDictionary *)self->_pendingResults allKeys];
  v26 = [v41 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v26)
  {
    v27 = v26;
    v43 = *v49;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v49 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v29 = *(*(&v48 + 1) + 8 * j);
        v30 = [MEMORY[0x1E695DFA8] set];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = [(NSMutableDictionary *)self->_pendingResults objectForKeyedSubscript:v29];
        v32 = [v31 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v45;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v45 != v34)
              {
                objc_enumerationMutation(v31);
              }

              [v30 addObject:objc_opt_class()];
            }

            v33 = [v31 countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v33);
        }

        if ([v30 isEqualToSet:self->_synchronizedResultDataClasses])
        {
          dispatch_semaphore_wait(self->_lastReceivedResultsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
          lastReceivedResults = self->_lastReceivedResults;
          v37 = [(NSMutableDictionary *)self->_pendingResults objectForKeyedSubscript:v29];
          [(NSMutableArray *)lastReceivedResults addObject:v37];

          dispatch_semaphore_signal(self->_lastReceivedResultsSemaphore);
          [(NSMutableDictionary *)self->_pendingResults removeObjectForKey:v29];
        }
      }

      v27 = [v41 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v27);
  }
}

- (void)_recursivelyGatherData:(id)a3 fromContext:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 gatheredData];
      [v10 addObjectsFromArray:v8];

      v9 = [v7 parentContext];

      [(ARSplitTechniqueSynchronizerTechnique *)self _recursivelyGatherData:v10 fromContext:v9];
    }
  }
}

- (void)technique:(id)a3 didFailWithError:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (ARShouldUseLogTypeError_onceToken_18 != -1)
  {
    [ARSplitTechniqueSynchronizerTechnique technique:didFailWithError:];
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_18;
  v9 = _ARLogTechnique_14();
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v7 code];
      v14 = [v7 localizedDescription];
      v20 = 138544130;
      v21 = v12;
      v22 = 2048;
      v23 = self;
      v24 = 2048;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v15 = "%{public}@ <%p>: Split technique pipeline failed with error: %ld - %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v16, v17, v15, &v20, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v12 = NSStringFromClass(v18);
    v19 = [v7 code];
    v14 = [v7 localizedDescription];
    v20 = 138544130;
    v21 = v12;
    v22 = 2048;
    v23 = self;
    v24 = 2048;
    v25 = v19;
    v26 = 2112;
    v27 = v14;
    v15 = "Error: %{public}@ <%p>: Split technique pipeline failed with error: %ld - %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

@end