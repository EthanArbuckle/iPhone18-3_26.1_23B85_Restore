@interface ARSplitTechniqueSynchronizerTechnique
- (ARSplitTechniqueSynchronizerTechnique)initWithSynchronizedResultDataClasses:(id)classes;
- (BOOL)isEqual:(id)equal;
- (void)_recursivelyGatherData:(id)data fromContext:(id)context;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (void)technique:(id)technique didFailWithError:(id)error;
- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context;
@end

@implementation ARSplitTechniqueSynchronizerTechnique

- (ARSplitTechniqueSynchronizerTechnique)initWithSynchronizedResultDataClasses:(id)classes
{
  classesCopy = classes;
  v16.receiver = self;
  v16.super_class = ARSplitTechniqueSynchronizerTechnique;
  v5 = [(ARTechnique *)&v16 init];
  if (v5)
  {
    v6 = dispatch_semaphore_create(1);
    lastReceivedResultsSemaphore = v5->_lastReceivedResultsSemaphore;
    v5->_lastReceivedResultsSemaphore = v6;

    array = [MEMORY[0x1E695DF70] array];
    lastReceivedResults = v5->_lastReceivedResults;
    v5->_lastReceivedResults = array;

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.qatracing.dumpSemanticSegmantationData"])
    {
      v10 = [classesCopy mutableCopy];
      [v10 addObject:objc_opt_class()];

      classesCopy = v10;
    }

    objc_storeStrong(&v5->_synchronizedResultDataClasses, classesCopy);
    v11 = [[ARCircularArray alloc] initWithCapacity:2];
    contextsWaitingForSynchronizationData = v5->_contextsWaitingForSynchronizationData;
    v5->_contextsWaitingForSynchronizationData = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pendingResults = v5->_pendingResults;
    v5->_pendingResults = dictionary;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = ARSplitTechniqueSynchronizerTechnique;
  if ([(ARTechnique *)&v8 isEqual:equalCopy])
  {
    synchronizedResultDataClasses = [equalCopy synchronizedResultDataClasses];
    v6 = [synchronizedResultDataClasses isEqualToSet:self->_synchronizedResultDataClasses];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dispatch_semaphore_wait(self->_lastReceivedResultsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if ([(NSMutableArray *)self->_lastReceivedResults count])
  {
    v19 = contextCopy;
    array = [MEMORY[0x1E695DF70] array];
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
            [array addObjectsFromArray:v13];
          }

          else
          {
            [array addObject:v13];
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
    contextCopy = v19;
    imageData = [v19 imageData];
    [imageData timestamp];
    v16 = [(ARNonSynchronousData *)v14 initWithGatheredData:array timestamp:?];

    delegate = [(ARTechnique *)self delegate];
    v24 = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [delegate technique:self didOutputResultData:v18 timestamp:v19 context:timestamp];
  }

  else
  {
    dispatch_semaphore_signal(self->_lastReceivedResultsSemaphore);
    array = [(ARTechnique *)self delegate];
    [array technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:contextCopy context:timestamp];
  }
}

- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  v59 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [MEMORY[0x1E695DF70] arrayWithArray:data];
  [(ARSplitTechniqueSynchronizerTechnique *)self _recursivelyGatherData:v9 fromContext:contextCopy];
  array = [MEMORY[0x1E695DF70] array];
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
          [array addObject:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v12);
  }

  if ([(NSSet *)self->_synchronizedResultDataClasses containsObject:objc_opt_class()])
  {
    imageData = [contextCopy imageData];
    [array addObject:imageData];
  }

  v38 = array;
  v40 = contextCopy;
  if ([array count])
  {
    v17 = MEMORY[0x1E696AD98];
    imageData2 = [contextCopy imageData];
    [imageData2 timestamp];
    v19 = [v17 numberWithDouble:?];

    contextsWaitingForSynchronizationData = self->_contextsWaitingForSynchronizationData;
    v21 = MEMORY[0x1E696AD98];
    imageData3 = [contextCopy imageData];
    [imageData3 timestamp];
    v23 = [v21 numberWithDouble:?];
    v24 = [(ARCircularArray *)contextsWaitingForSynchronizationData addObject:v23];

    if (v24)
    {
      [(NSMutableDictionary *)self->_pendingResults removeObjectForKey:v24];
    }

    array2 = [(NSMutableDictionary *)self->_pendingResults objectForKeyedSubscript:v19];
    if (!array2)
    {
      array2 = [MEMORY[0x1E695DF70] array];
    }

    [array2 addObjectsFromArray:array];
    [(NSMutableDictionary *)self->_pendingResults setObject:array2 forKeyedSubscript:v19];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [(NSMutableDictionary *)self->_pendingResults allKeys];
  v26 = [allKeys countByEnumeratingWithState:&v48 objects:v57 count:16];
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
          objc_enumerationMutation(allKeys);
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

      v27 = [allKeys countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v27);
  }
}

- (void)_recursivelyGatherData:(id)data fromContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = contextCopy;
      gatheredData = [v7 gatheredData];
      [dataCopy addObjectsFromArray:gatheredData];

      parentContext = [v7 parentContext];

      [(ARSplitTechniqueSynchronizerTechnique *)self _recursivelyGatherData:dataCopy fromContext:parentContext];
    }
  }
}

- (void)technique:(id)technique didFailWithError:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  errorCopy = error;
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
      code = [errorCopy code];
      localizedDescription = [errorCopy localizedDescription];
      v20 = 138544130;
      v21 = v12;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2048;
      v25 = code;
      v26 = 2112;
      v27 = localizedDescription;
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
    code2 = [errorCopy code];
    localizedDescription = [errorCopy localizedDescription];
    v20 = 138544130;
    v21 = v12;
    v22 = 2048;
    selfCopy2 = self;
    v24 = 2048;
    v25 = code2;
    v26 = 2112;
    v27 = localizedDescription;
    v15 = "Error: %{public}@ <%p>: Split technique pipeline failed with error: %ld - %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

@end