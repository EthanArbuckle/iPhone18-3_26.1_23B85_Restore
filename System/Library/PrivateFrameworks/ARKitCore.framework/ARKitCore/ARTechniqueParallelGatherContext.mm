@interface ARTechniqueParallelGatherContext
- (ARTechniqueParallelGatherContext)initWithParentContext:(id)context previousContext:(id)previousContext requiredTechniqueIndices:(id)indices deterministicTechniqueIndices:(id)techniqueIndices techniques:(id)techniques;
- (BOOL)deterministicResultsCaptured;
- (BOOL)isComplete;
- (id)_allGatheredDataByTechniqueIndex;
- (id)addResultData:(id)data forTechniqueAtIndex:(unint64_t)index;
- (id)captureGatheredData;
- (id)description;
- (id)gatheredData;
- (id)lateResultDataForTechniqueAtIndex:(unint64_t)index;
- (unint64_t)indexForTechnique:(id)technique;
- (void)clearPreviousContext;
@end

@implementation ARTechniqueParallelGatherContext

- (ARTechniqueParallelGatherContext)initWithParentContext:(id)context previousContext:(id)previousContext requiredTechniqueIndices:(id)indices deterministicTechniqueIndices:(id)techniqueIndices techniques:(id)techniques
{
  previousContextCopy = previousContext;
  indicesCopy = indices;
  techniqueIndicesCopy = techniqueIndices;
  techniquesCopy = techniques;
  v30.receiver = self;
  v30.super_class = ARTechniqueParallelGatherContext;
  v17 = [(ARTechniqueGatherContext *)&v30 initWithParentContext:context];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_previousContext, previousContext);
    v19 = [indicesCopy copy];
    requiredTechniqueIndices = v18->_requiredTechniqueIndices;
    v18->_requiredTechniqueIndices = v19;

    v21 = [techniqueIndicesCopy copy];
    deterministicTechniqueIndices = v18->_deterministicTechniqueIndices;
    v18->_deterministicTechniqueIndices = v21;

    v18->_techniqueCount = [techniquesCopy count];
    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v18->_techniqueCount];
    gatheredDataByTechniqueIndex = v18->_gatheredDataByTechniqueIndex;
    v18->_gatheredDataByTechniqueIndex = v23;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    techniquesByIndex = v18->_techniquesByIndex;
    v18->_techniquesByIndex = strongToWeakObjectsMapTable;

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __140__ARTechniqueParallelGatherContext_initWithParentContext_previousContext_requiredTechniqueIndices_deterministicTechniqueIndices_techniques___block_invoke;
    v28[3] = &unk_1E817D800;
    v29 = v18;
    [techniquesCopy enumerateObjectsUsingBlock:v28];
  }

  return v18;
}

void __140__ARTechniqueParallelGatherContext_initWithParentContext_previousContext_requiredTechniqueIndices_deterministicTechniqueIndices_techniques___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 64);
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [v4 setObject:v6 forKey:v7];
}

- (id)gatheredData
{
  v15 = *MEMORY[0x1E69E9840];
  _allGatheredDataByTechniqueIndex = [(ARTechniqueParallelGatherContext *)self _allGatheredDataByTechniqueIndex];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [_allGatheredDataByTechniqueIndex allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [v3 addObjectsFromArray:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)indexForTechnique:(id)technique
{
  techniqueCopy = technique;
  if (self->_techniqueCount)
  {
    v5 = 0;
    while (1)
    {
      techniquesByIndex = self->_techniquesByIndex;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
      v8 = [(NSMapTable *)techniquesByIndex objectForKey:v7];

      if (v8 == techniqueCopy)
      {
        break;
      }

      if (++v5 >= self->_techniqueCount)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)isComplete
{
  os_unfair_lock_lock(&self->super._stateLock);
  v3 = [(NSMutableDictionary *)self->_gatheredDataByTechniqueIndex count]== self->_techniqueCount;
  os_unfair_lock_unlock(&self->super._stateLock);
  return v3;
}

- (void)clearPreviousContext
{
  os_unfair_lock_lock(&self->super._stateLock);
  previousContext = self->_previousContext;
  self->_previousContext = 0;

  os_unfair_lock_unlock(&self->super._stateLock);
}

- (BOOL)deterministicResultsCaptured
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super._stateLock);
  if ([(NSIndexSet *)self->_deterministicTechniqueIndices count])
  {
    v3 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allKeys = [(NSMutableDictionary *)self->_gatheredDataByTechniqueIndex allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          [v3 addIndex:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "integerValue")}];
        }

        v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v8 = [v3 containsIndexes:self->_deterministicTechniqueIndices];
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->super._stateLock);
  return v8;
}

- (id)_allGatheredDataByTechniqueIndex
{
  os_unfair_lock_lock(&self->super._stateLock);
  v3 = self->_previousContext;
  v4 = [(NSMutableDictionary *)self->_gatheredDataByTechniqueIndex copy];
  os_unfair_lock_unlock(&self->super._stateLock);
  if (v3)
  {
    _allGatheredDataByTechniqueIndex = [(ARTechniqueParallelGatherContext *)v3 _allGatheredDataByTechniqueIndex];
    v6 = [_allGatheredDataByTechniqueIndex mutableCopy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  [v6 addEntriesFromDictionary:v4];

  return v6;
}

- (id)captureGatheredData
{
  v53 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super._stateLock);
  v3 = self->_previousContext;
  v35 = [(NSMutableDictionary *)self->_gatheredDataByTechniqueIndex mutableCopy];
  v36 = self->_requiredTechniqueIndices;
  v32 = self->_techniquesByIndex;
  selfCopy = self;
  os_unfair_lock_unlock(&self->super._stateLock);
  v31 = v3;
  if (v3)
  {
    _allGatheredDataByTechniqueIndex = [(ARTechniqueParallelGatherContext *)v3 _allGatheredDataByTechniqueIndex];
    v5 = [_allGatheredDataByTechniqueIndex mutableCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  [v5 addEntriesFromDictionary:v35];
  v37 = objc_opt_new();
  v34 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v5;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v7)
  {
    v8 = *v39;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v10];
        [v37 addObjectsFromArray:v11];

        if (-[NSIndexSet containsIndex:](v36, "containsIndex:", [v10 integerValue]))
        {
          v12 = [v35 objectForKeyedSubscript:v10];
          v13 = v12 == 0;

          if (v13)
          {
            if (_ARLogTechnique_onceToken_19 != -1)
            {
              [ARTechniqueParallelGatherContext captureGatheredData];
            }

            v14 = _ARLogTechnique_logObj_19;
            if (os_log_type_enabled(_ARLogTechnique_logObj_19, OS_LOG_TYPE_INFO))
            {
              v15 = v14;
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              integerValue = [v10 integerValue];
              v19 = [(NSMapTable *)v32 objectForKey:v10];
              imageData = [(ARTechniqueGatherContext *)selfCopy imageData];
              [imageData timestamp];
              *buf = 138544386;
              v43 = v17;
              v44 = 2048;
              v45 = selfCopy;
              v46 = 2048;
              v47 = integerValue;
              v48 = 2112;
              v49 = v19;
              v50 = 2048;
              v51 = v21;
              _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Technique %ld (%@) result data missed frame %f", buf, 0x34u);
            }

            imageData2 = [(ARTechniqueGatherContext *)selfCopy imageData];
            [imageData2 timestamp];

            [v10 integerValue];
            kdebug_trace();
            v23 = [(NSMapTable *)v32 objectForKey:v10];
            v24 = v23;
            if (v23)
            {
              traceKey = [v23 traceKey];
              if (ARTechnique_Result_Drop_onceToken != -1)
              {
                [ARTechniqueParallelGatherContext captureGatheredData];
              }

              v26 = [ARTechnique_Result_Drop_keyToCode objectForKeyedSubscript:traceKey];
              [v26 intValue];

              kdebug_trace();
            }
          }
        }

        else
        {
          [v34 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)v6 removeObjectsForKeys:v34];
  os_unfair_lock_lock(&selfCopy->super._stateLock);
  gatheredDataByTechniqueIndex = selfCopy->_gatheredDataByTechniqueIndex;
  selfCopy->_gatheredDataByTechniqueIndex = v6;
  v28 = v6;

  selfCopy->super._resultsCaptured = 1;
  previousContext = selfCopy->_previousContext;
  selfCopy->_previousContext = 0;

  os_unfair_lock_unlock(&selfCopy->super._stateLock);

  return v37;
}

- (id)addResultData:(id)data forTechniqueAtIndex:(unint64_t)index
{
  dataCopy = data;
  os_unfair_lock_lock(&self->super._stateLock);
  gatheredDataByTechniqueIndex = self->_gatheredDataByTechniqueIndex;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [(NSMutableDictionary *)gatheredDataByTechniqueIndex setObject:dataCopy forKeyedSubscript:v8];

  if (self->super._resultsCaptured)
  {
    lateResultTechniqueIndices = self->_lateResultTechniqueIndices;
    if (!lateResultTechniqueIndices)
    {
      v10 = objc_opt_new();
      v11 = self->_lateResultTechniqueIndices;
      self->_lateResultTechniqueIndices = v10;

      lateResultTechniqueIndices = self->_lateResultTechniqueIndices;
    }

    [(NSMutableIndexSet *)lateResultTechniqueIndices addIndex:index];
  }

  v12 = self->_previousContext;
  os_unfair_lock_unlock(&self->super._stateLock);
  v13 = [(ARTechniqueParallelGatherContext *)v12 lateResultDataForTechniqueAtIndex:index];

  return v13;
}

- (id)lateResultDataForTechniqueAtIndex:(unint64_t)index
{
  os_unfair_lock_lock(&self->super._stateLock);
  if ([(NSMutableIndexSet *)self->_lateResultTechniqueIndices containsIndex:index])
  {
    gatheredDataByTechniqueIndex = self->_gatheredDataByTechniqueIndex;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v7 = [(NSMutableDictionary *)gatheredDataByTechniqueIndex objectForKeyedSubscript:v6];

    os_unfair_lock_unlock(&self->super._stateLock);
    if (v7)
    {
      goto LABEL_6;
    }

    v8 = 0;
  }

  else
  {
    v8 = self->_previousContext;
    os_unfair_lock_unlock(&self->super._stateLock);
  }

  v7 = [(ARTechniqueParallelGatherContext *)v8 lateResultDataForTechniqueAtIndex:index];

LABEL_6:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v12.receiver = self;
  v12.super_class = ARTechniqueParallelGatherContext;
  v4 = [(ARTechniqueGatherContext *)&v12 description];
  v5 = [v3 stringWithFormat:@"%@\r", v4];

  if ([(ARTechniqueParallelGatherContext *)self requiredTimeIntervalComplete])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"RequiredTimeIntervalComplete: %@\r", v6];
  if ([(ARTechniqueParallelGatherContext *)self deterministicResultsCaptured])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v5 appendFormat:@"DeterministicResultsCaptured: %@\r", v7];
  if ([(ARTechniqueParallelGatherContext *)self isComplete])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 appendFormat:@"Is Complete: %@\r", v8];
  imageData = [(ARTechniqueGatherContext *)self imageData];
  [imageData timestamp];
  [v5 appendFormat:@"ImageData timestamp: %f\r", v10];

  os_unfair_lock_lock(&self->super._stateLock);
  [v5 appendFormat:@"Techniques ByIndex: %@\r", self->_techniquesByIndex];
  [v5 appendFormat:@"Late Results ByIndex: %@\r", self->_lateResultTechniqueIndices];
  [v5 appendFormat:@"GatheredData ByIndex: %@\r", self->_gatheredDataByTechniqueIndex];
  os_unfair_lock_unlock(&self->super._stateLock);

  return v5;
}

@end