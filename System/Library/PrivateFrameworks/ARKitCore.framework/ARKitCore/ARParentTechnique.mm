@interface ARParentTechnique
+ (id)parentTechniqueOfClass:(Class)a3 inArray:(id)a4;
+ (id)techniqueInArray:(id)a3 passingTest:(id)a4;
+ (id)techniquesByForceReplacingTechniques:(id)a3 withMatchingClassTechniques:(id)a4;
+ (id)techniquesByReplacingOriginalTechniques:(id)a3 withReplacementTechniques:(id)a4 passingTest:(id)a5;
- (ARParentTechnique)initWithParallelTechniques:(id)a3;
- (ARParentTechnique)initWithTechniques:(id)a3 delegate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)reconfigurableFrom:(id)a3;
- (NSString)description;
- (double)requiredTimeInterval;
- (id)_fullDescription;
- (id)predictedResultDataAtTimestamp:(double)a3 context:(id)a4;
- (id)processData:(id)a3;
- (id)processData:(id)a3 onTechniques:(id)a4;
- (id)resultDataClasses;
- (id)techniqueConformsToProtocol:(id)a3;
- (id)techniqueMatchingPredicate:(id)a3;
- (id)techniqueOfClass:(Class)a3;
- (id)toJSONWithRootName:(id)a3;
- (unint64_t)requiredSensorDataTypes;
- (void)dotGraphWithLines:(id)a3 rootName:(id)a4;
- (void)prepare:(BOOL)a3;
- (void)reconfigureFrom:(id)a3;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4 onTechniques:(id)a5 withTimeout:(double)a6;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4 withTimeout:(double)a5;
- (void)reuseTechniques:(id)a3;
- (void)setBonusLatency:(double)a3;
- (void)setPowerUsage:(unint64_t)a3;
- (void)setTechniques:(id)a3;
- (void)siblingTechniquesDidChange:(id)a3;
- (void)submitResultsForTimestamp:(double)a3 context:(id)a4;
- (void)technique:(id)a3 didFailWithError:(id)a4;
- (void)technique:(id)a3 didOutputResultData:(id)a4 timestamp:(double)a5 context:(id)a6;
- (void)technique:(id)a3 didOutputResultData:(id)a4 timestamp:(double)a5 context:(id)a6 onTechniques:(id)a7;
@end

@implementation ARParentTechnique

+ (id)parentTechniqueOfClass:(Class)a3 inArray:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v22 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v12 = [v11 _internalTechniques];
          v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
LABEL_9:
            v16 = 0;
            while (1)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if (objc_opt_isKindOfClass())
              {
                goto LABEL_23;
              }

              if (v14 == ++v16)
              {
                v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v14)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }

          v17 = [v11 _internalTechniques];
          v18 = [ARParentTechnique parentTechniqueOfClass:a3 inArray:v17];

          if (v18 || ([v11 splitTechniques], v19 = objc_claimAutoreleasedReturnValue(), +[ARParentTechnique parentTechniqueOfClass:inArray:](ARParentTechnique, "parentTechniqueOfClass:inArray:", a3, v19), v18 = objc_claimAutoreleasedReturnValue(), v19, v18))
          {
            v20 = v18;

            v12 = v11;
            v11 = v20;
LABEL_23:

            goto LABEL_24;
          }

          v8 = v22;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v11 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_24:

  return v11;
}

- (ARParentTechnique)initWithTechniques:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ARParentTechnique;
  v8 = [(ARTechnique *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(ARTechnique *)v8 setDelegate:v7];
    [(ARParentTechnique *)v9 setTechniques:v6];
    v10 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.technique");
    queue = v9->_queue;
    v9->_queue = v10;

    v9->_useLowLatencyPath = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.parenttechnique.enableLowLatencyPath"];
  }

  return v9;
}

- (ARParentTechnique)initWithParallelTechniques:(id)a3
{
  result = [(ARParentTechnique *)self initWithTechniques:a3 delegate:0];
  if (result)
  {
    result->_parallelExecution = 1;
    result->_isDeterministicMode = 0;
    result->_prepareWasCalled = 0;
    result->_previousContext_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)reuseTechniques:(id)a3
{
  v4 = a3;
  v5 = [(ARParentTechnique *)self techniques];
  v7 = [ARParentTechnique techniquesByReplacingOriginalTechniques:v5 withReplacementTechniques:v4 passingTest:&__block_literal_global_30];

  v6 = v7;
  if (v7)
  {
    [(ARParentTechnique *)self setTechniques:v7];
    v6 = v7;
  }
}

uint64_t __37__ARParentTechnique_reuseTechniques___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 reconfigurableFrom:v4];
  if (v6)
  {
    [v5 reconfigureFrom:v4];
  }

  return v6;
}

- (id)processData:(id)a3
{
  v4 = a3;
  v5 = [(ARParentTechnique *)self techniques];
  v6 = [(ARParentTechnique *)self processData:v4 onTechniques:v5];

  return v6;
}

- (id)processData:(id)a3 onTechniques:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 timestamp];
    v10 = v9;
    v27[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [(ARParentTechnique *)self _logTechniqueState:@"callingProcessData" state:v11 data:v10];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  v14 = v8;
  if (v13)
  {
    v15 = v13;
    v16 = *v23;
    v14 = v8;
    do
    {
      v17 = 0;
      v18 = v14;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v14 = [*(*(&v22 + 1) + 8 * v17) processData:v18];

        ++v17;
        v18 = v14;
      }

      while (v15 != v17);
      v15 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v21.receiver = self;
  v21.super_class = ARParentTechnique;
  v19 = [(ARTechnique *)&v21 processData:v14];

  return v19;
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(ARParentTechnique *)self techniques];
  [(ARParentTechnique *)self requestResultDataAtTimestamp:v6 context:v7 onTechniques:a3 withTimeout:0.0];
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4 withTimeout:(double)a5
{
  v8 = a4;
  v9 = [(ARParentTechnique *)self techniques];
  [(ARParentTechnique *)self requestResultDataAtTimestamp:v8 context:v9 onTechniques:a3 withTimeout:a5];
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4 onTechniques:(id)a5 withTimeout:(double)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if ([v11 count])
  {
    if (self->_parallelExecution)
    {
      v12 = [v11 indexesOfObjectsPassingTest:&__block_literal_global_12];
      v13 = [v11 indexesOfObjectsPassingTest:&__block_literal_global_14];
      os_unfair_lock_lock(&self->_previousContext_lock);
      v43 = v13;
      v44 = v12;
      v14 = [[ARTechniqueParallelGatherContext alloc] initWithParentContext:v10 previousContext:self->_previousContext requiredTechniqueIndices:v12 deterministicTechniqueIndices:v13 techniques:v11];
      [(ARTechniqueParallelGatherContext *)self->_previousContext clearPreviousContext];
      objc_storeStrong(&self->_previousContext, v14);
      v15 = self;
      os_unfair_lock_unlock(&self->_previousContext_lock);
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v45 = v11;
      obj = v11;
      v16 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v56;
        do
        {
          v19 = 0;
          do
          {
            if (*v56 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v55 + 1) + 8 * v19);
            v21 = [v20 traceKey];
            if (ARTechnique_Request_to_Result_onceToken != -1)
            {
              [ARParentTechnique requestResultDataAtTimestamp:context:onTechniques:withTimeout:];
            }

            v22 = [ARTechnique_Request_to_Result_keyToCode objectForKeyedSubscript:v21];
            [v22 intValue];

            kdebug_trace();
            v23 = [v20 traceKey];
            if (ARTechnique_Request_begin_onceToken != -1)
            {
              [ARParentTechnique requestResultDataAtTimestamp:context:onTechniques:withTimeout:];
            }

            v24 = [ARTechnique_Request_begin_keyToCode objectForKeyedSubscript:v23];
            [v24 intValue];

            kdebug_trace();
            v60 = v20;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
            [(ARParentTechnique *)v15 _logTechniqueState:@"requestingResultDataParallel" state:v25 data:a3];

            [v20 requestResultDataAtTimestamp:v14 context:a3];
            ++v19;
          }

          while (v17 != v19);
          v17 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v17);
      }

      if (v15->_useLowLatencyPath)
      {
        v11 = v45;
        v27 = v43;
        v26 = v44;
        if ([(ARTechniqueParallelGatherContext *)v14 isComplete])
        {
          [(ARParentTechnique *)v15 submitResultsForTimestamp:v14 context:a3];
        }
      }

      else
      {
        v26 = v44;
        v11 = v45;
        v27 = v43;
        if (a6 == 0.0)
        {
          [(ARParentTechnique *)v15 requiredTimeInterval];
          v38 = v37;
          [(ARTechnique *)v15 bonusLatency];
          v40 = v38 - v39;
          if (v40 >= 0.0001)
          {
            a6 = v40;
          }

          else
          {
            a6 = 0.0001;
          }
        }

        objc_initWeak(&location, v15);
        v41 = dispatch_time(0, (a6 * 1000000000.0));
        queue = v15->_queue;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __83__ARParentTechnique_requestResultDataAtTimestamp_context_onTechniques_withTimeout___block_invoke_3;
        v50[3] = &unk_1E817C5C8;
        v51 = v14;
        v52 = v15;
        objc_copyWeak(v53, &location);
        v53[1] = *&a3;
        dispatch_after(v41, queue, v50);
        objc_destroyWeak(v53);

        objc_destroyWeak(&location);
      }
    }

    else
    {
      v26 = [v11 firstObject];
      v27 = [[ARTechniqueSequentialGatherContext alloc] initWithParentContext:v10];
      v30 = [v26 traceKey];
      if (ARTechnique_Request_to_Result_onceToken != -1)
      {
        [ARParentTechnique requestResultDataAtTimestamp:context:onTechniques:withTimeout:];
      }

      v31 = [ARTechnique_Request_to_Result_keyToCode objectForKeyedSubscript:v30];
      [v31 intValue];

      kdebug_trace();
      v32 = [v26 traceKey];
      if (ARTechnique_Request_begin_onceToken != -1)
      {
        [ARParentTechnique requestResultDataAtTimestamp:context:onTechniques:withTimeout:];
      }

      v33 = [ARTechnique_Request_begin_keyToCode objectForKeyedSubscript:v32];
      [v33 intValue];

      kdebug_trace();
      v59 = v26;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      [(ARParentTechnique *)self _logTechniqueState:@"requestingResultDataSerial" state:v34 data:a3];

      if (a6 > 0.0 && self->_useLowLatencyPath && !self->_isDeterministicMode)
      {
        objc_initWeak(&location, self);
        v35 = dispatch_time(0, (a6 * 1000000000.0));
        v36 = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __83__ARParentTechnique_requestResultDataAtTimestamp_context_onTechniques_withTimeout___block_invoke_4;
        block[3] = &unk_1E817C5F0;
        v48 = v27;
        objc_copyWeak(v49, &location);
        v49[1] = *&a3;
        dispatch_after(v35, v36, block);
        objc_destroyWeak(v49);

        objc_destroyWeak(&location);
      }

      [v26 requestResultDataAtTimestamp:v27 context:a3];
    }

    goto LABEL_35;
  }

  v28 = [(ARTechnique *)self delegate];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v26 = [(ARTechnique *)self delegate];
    [v26 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:v10 context:a3];
LABEL_35:
  }
}

void __83__ARParentTechnique_requestResultDataAtTimestamp_context_onTechniques_withTimeout___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setRequiredTimeIntervalComplete:1];
  if ([*(a1 + 32) deterministicResultsCaptured])
  {
    if (([*(a1 + 32) gatheredDataWasAlreadyCaptured] & 1) == 0 && *(*(a1 + 40) + 84) == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained _logTechniqueState:@"parallelTechniqueTimeout" state:MEMORY[0x1E695E0F0] data:*(a1 + 56)];
    }

    v3 = objc_loadWeakRetained((a1 + 48));
    [v3 submitResultsForTimestamp:*(a1 + 32) context:*(a1 + 56)];
  }
}

void __83__ARParentTechnique_requestResultDataAtTimestamp_context_onTechniques_withTimeout___block_invoke_4(uint64_t a1)
{
  if (([*(a1 + 32) gatheredDataWasAlreadyCaptured] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _logTechniqueState:@"sequentialTechniqueTimeout" state:MEMORY[0x1E695E0F0] data:*(a1 + 48)];
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 submitResultsForTimestamp:*(a1 + 32) context:*(a1 + 48)];
}

- (id)predictedResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(ARParentTechnique *)self techniques];
  if ([v7 count])
  {
    v8 = [[ARTechniqueSequentialGatherContext alloc] initWithParentContext:v6];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) predictedResultDataAtTimestamp:v8 context:{a3, v17}];
          [(ARTechniqueSequentialGatherContext *)v8 addResultData:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = [(ARTechniqueSequentialGatherContext *)v8 gatheredData];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (void)setPowerUsage:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = ARParentTechnique;
  [(ARTechnique *)&v14 setPowerUsage:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(ARParentTechnique *)self techniques];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setPowerUsage:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setTechniques:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v9 delegate];
          v13 = [(ARTechnique *)self delegate];
          [v12 setDelegate:v13];
        }

        [v9 setPowerUsage:{-[ARTechnique powerUsage](self, "powerUsage")}];
        [v9 setDelegate:self];
        [v9 setBonusLatency:0.0];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if (!self->_parallelExecution)
  {
    [(ARTechnique *)self bonusLatency];
    v15 = v14;
    v16 = [v4 firstObject];
    [v16 setBonusLatency:v15];
  }

  v17 = [v4 copy];
  [(ARParentTechnique *)self set_internalTechniques:v17];
}

- (unint64_t)requiredSensorDataTypes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(ARParentTechnique *)self techniques];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) requiredSensorDataTypes];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)requiredTimeInterval
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(ARParentTechnique *)self techniques];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        parallelExecution = self->_parallelExecution;
        [*(*(&v14 + 1) + 8 * i) requiredTimeInterval];
        if (v10 >= v7)
        {
          v11 = v10;
        }

        else
        {
          v11 = v7;
        }

        v12 = v7 + v10;
        if (parallelExecution)
        {
          v7 = v11;
        }

        else
        {
          v7 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)resultDataClasses
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ARParentTechnique *)self techniques];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) resultDataClasses];
        [v3 unionSet:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (BOOL)reconfigurableFrom:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(ARParentTechnique *)self techniques];
    v7 = [v5 techniques];
    v8 = [v6 count];
    if (v8 == [v7 count])
    {
      if ([v6 count])
      {
        v9 = 0;
        v10 = MEMORY[0x1E69E9820];
        do
        {
          v15[0] = v10;
          v15[1] = 3221225472;
          v15[2] = __40__ARParentTechnique_reconfigurableFrom___block_invoke;
          v15[3] = &unk_1E817C618;
          v11 = v6;
          v16 = v11;
          v17 = v9;
          v12 = [ARParentTechnique techniqueInArray:v7 passingTest:v15];
          v13 = v12 != 0;

          if (!v12)
          {
            break;
          }

          ++v9;
        }

        while (v9 < [v11 count]);
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __40__ARParentTechnique_reconfigurableFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 objectAtIndexedSubscript:v3];
  v6 = [v5 reconfigurableFrom:v4];

  return v6;
}

- (void)reconfigureFrom:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v15 = v4;
    v5 = v4;
    v6 = [(ARParentTechnique *)self techniques];
    v7 = [v5 techniques];
    if ([v6 count])
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E9820];
      do
      {
        v16[0] = v9;
        v16[1] = 3221225472;
        v16[2] = __37__ARParentTechnique_reconfigureFrom___block_invoke;
        v16[3] = &unk_1E817C618;
        v10 = v6;
        v17 = v10;
        v18 = v8;
        v11 = [ARParentTechnique techniqueInArray:v7 passingTest:v16];
        v12 = [v10 objectAtIndexedSubscript:v8];
        [v12 reconfigureFrom:v11];

        ++v8;
      }

      while (v8 < [v10 count]);
    }

    v13 = [v5 splitTechniques];
    [(ARTechnique *)self setSplitTechniques:v13];

    v14 = [v5 splitTechniqueFowardingStrategy];
    [(ARTechnique *)self setSplitTechniqueFowardingStrategy:v14];

    v4 = v15;
  }
}

uint64_t __37__ARParentTechnique_reconfigureFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 objectAtIndexedSubscript:v3];
  v6 = [v5 reconfigurableFrom:v4];

  return v6;
}

- (void)siblingTechniquesDidChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(ARParentTechnique *)self techniques];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) siblingTechniquesDidChange:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)techniqueOfClass:(Class)a3
{
  v10.receiver = self;
  v10.super_class = ARParentTechnique;
  v5 = [(ARTechnique *)&v10 techniqueOfClass:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(ARParentTechnique *)self techniques];
    v7 = [ARTechnique techniqueOfClass:a3 inArray:v8];
  }

  return v7;
}

- (id)techniqueConformsToProtocol:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ARParentTechnique;
  v5 = [(ARTechnique *)&v10 techniqueConformsToProtocol:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(ARParentTechnique *)self techniques];
    v7 = [ARTechnique techniqueConformsToProtocol:v4 inArray:v8];
  }

  return v7;
}

- (id)techniqueMatchingPredicate:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ARParentTechnique;
  v5 = [(ARTechnique *)&v19 techniqueMatchingPredicate:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(ARParentTechnique *)self techniques];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) techniqueMatchingPredicate:v4];
          if (v13)
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (void)setBonusLatency:(double)a3
{
  v7.receiver = self;
  v7.super_class = ARParentTechnique;
  [(ARTechnique *)&v7 setBonusLatency:?];
  if (!self->_parallelExecution)
  {
    v5 = [(ARParentTechnique *)self techniques];
    v6 = [v5 firstObject];
    [v6 setBonusLatency:a3];
  }
}

- (void)prepare:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = ARParentTechnique;
  [(ARTechnique *)&v23 prepare:?];
  if (v3)
  {
    self->_parallelExecution = 0;
    self->_isDeterministicMode = 1;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(ARParentTechnique *)self techniques];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * i) prepare:v3];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(ARTechnique *)self splitTechniques];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * j) prepare:v3];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v12);
  }

  self->_prepareWasCalled = 1;
}

- (NSString)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(ARParentTechnique *)self techniques];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) description];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (self->_parallelExecution)
    {
      v13 = @"parallel";
    }

    else
    {
      v13 = @"serial";
    }

    v14 = [v3 componentsJoinedByString:{@", "}];
    v15 = [v10 stringWithFormat:@"<%@(%p) %@ techniques=[%@]>", v12, self, v13, v14];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = ARParentTechnique;
    v15 = [(ARTechnique *)&v17 description];
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ARParentTechnique;
  if ([(ARTechnique *)&v14 isEqual:v4])
  {
    v5 = v4;
    if (self->_parallelExecution)
    {
      if (v5[56])
      {
        v6 = MEMORY[0x1E695DFD8];
        v7 = [(ARParentTechnique *)self techniques];
        v8 = [v6 setWithArray:v7];
        v9 = MEMORY[0x1E695DFD8];
        v10 = [v5 techniques];
        v11 = [v9 setWithArray:v10];
        v12 = [v8 isEqualToSet:v11];

LABEL_9:
        goto LABEL_10;
      }
    }

    else if ((v5[56] & 1) == 0)
    {
      v7 = [(ARParentTechnique *)self techniques];
      v8 = [v5 techniques];
      v12 = [v7 isEqualToArray:v8];
      goto LABEL_9;
    }

    v12 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_fullDescription
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v23.receiver = self;
  v23.super_class = ARParentTechnique;
  v4 = [(ARTechnique *)&v23 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  v6 = [(ARTechniqueParallelGatherContext *)self->_previousContext description];
  v7 = [v6 description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"\tPreviousContext: %@\n", v8];

  [v5 appendFormat:@"\tChild Techniques:\n"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(ARParentTechnique *)self techniques];
  v9 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) _fullDescription];
        v14 = [v13 description];
        v15 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t|\t"];
        [v5 appendFormat:@"\t| - %@\n", v15];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [v5 copy];

  return v16;
}

- (void)technique:(id)a3 didOutputResultData:(id)a4 timestamp:(double)a5 context:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(ARParentTechnique *)self techniques];
  [(ARParentTechnique *)self technique:v12 didOutputResultData:v11 timestamp:v10 context:v13 onTechniques:a5];
}

- (void)technique:(id)a3 didOutputResultData:(id)a4 timestamp:(double)a5 context:(id)a6 onTechniques:(id)a7
{
  v94 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v73 = a6;
  v14 = a7;
  [(ARParentTechnique *)self _logTechniqueState:@"receivedResultData" state:v13 data:a5];
  v15 = [v14 indexOfObject:v12];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v15;
    v17 = [v12 traceKey];
    v69 = self;
    if (ARTechnique_Request_to_ResultEnd_onceToken != -1)
    {
      [ARParentTechnique technique:didOutputResultData:timestamp:context:onTechniques:];
    }

    v18 = [ARTechnique_Request_to_ResultEnd_keyToCode objectForKeyedSubscript:v17];
    [v18 intValue];

    kdebug_trace();
    v19 = [v12 traceKey];
    if (ARTechnique_Request_fulfilled_onceToken != -1)
    {
      [ARParentTechnique technique:didOutputResultData:timestamp:context:onTechniques:];
    }

    v20 = [ARTechnique_Request_fulfilled_keyToCode objectForKeyedSubscript:v19];
    [v20 intValue];

    kdebug_trace();
    [(ARTechnique *)v69 techniqueLevel];
    [v13 count];
    kdebug_trace();
    objc_opt_class();
    v72 = v12;
    if (objc_opt_isKindOfClass())
    {
      v68 = v73;
      obj = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v21 = v13;
      v22 = [v21 countByEnumeratingWithState:&v82 objects:v93 count:16];
      if (v22)
      {
        v23 = v22;
        v67 = v13;
        v24 = *v83;
        v25 = v16 + 1;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v83 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v82 + 1) + 8 * i);
            for (j = v25; j < [v14 count]; v27 = v32)
            {
              v29 = [v14 objectAtIndexedSubscript:j];
              v30 = [v29 processData:v27];

              if (v30)
              {
                v31 = v30;
              }

              else
              {
                v31 = v27;
              }

              v32 = v31;

              ++j;
            }

            if (v27)
            {
              [obj addObject:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v82 objects:v93 count:16];
        }

        while (v23);
        v12 = v72;
        v13 = v67;
      }

      else
      {
        v25 = v16 + 1;
      }

      [v68 addResultData:obj];
      if (v25 >= [v14 count])
      {
        [(ARParentTechnique *)v69 submitResultsForTimestamp:v68 context:a5];
      }

      else
      {
        v41 = [v14 objectAtIndexedSubscript:v25];
        v42 = [v41 traceKey];
        if (ARTechnique_Request_to_Result_onceToken != -1)
        {
          [ARParentTechnique requestResultDataAtTimestamp:context:onTechniques:withTimeout:];
        }

        v43 = [ARTechnique_Request_to_Result_keyToCode objectForKeyedSubscript:v42];
        [v43 intValue];

        kdebug_trace();
        v44 = [v41 traceKey];
        if (ARTechnique_Request_begin_onceToken != -1)
        {
          [ARParentTechnique requestResultDataAtTimestamp:context:onTechniques:withTimeout:];
        }

        v45 = [ARTechnique_Request_begin_keyToCode objectForKeyedSubscript:v44];
        [v45 intValue];

        kdebug_trace();
        v92 = v41;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
        [(ARParentTechnique *)v69 _logTechniqueState:@"requestingResultDataSerial" state:v46 data:a5];

        [v41 requestResultDataAtTimestamp:v68 context:a5];
      }

      goto LABEL_48;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_48:
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v33 = [v12 splitTechniques];
      v48 = [v33 countByEnumeratingWithState:&v78 objects:v87 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = v13;
        v51 = *v79;
        obja = v33;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v79 != v51)
            {
              objc_enumerationMutation(obja);
            }

            v53 = *(*(&v78 + 1) + 8 * k);
            v54 = [v12 splitTechniqueFowardingStrategy];

            if (!v54 || ([v12 splitTechniqueFowardingStrategy], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "shouldRequestResultDataAtTimestamp:context:", v73, a5), v55, v56))
            {
              v57 = [ARTechniqueSequentialGatherContext alloc];
              v58 = [v73 parentContext];
              v59 = [(ARTechniqueSequentialGatherContext *)v57 initWithParentContext:v58];

              v60 = [v73 gatheredData];
              [(ARTechniqueSequentialGatherContext *)v59 addResultData:v60];

              [v53 requestResultDataAtTimestamp:v59 context:a5];
            }

            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v61 = v50;
            v62 = [v61 countByEnumeratingWithState:&v74 objects:v86 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v75;
              do
              {
                for (m = 0; m != v63; ++m)
                {
                  if (*v75 != v64)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v66 = [v53 processData:*(*(&v74 + 1) + 8 * m)];
                }

                v63 = [v61 countByEnumeratingWithState:&v74 objects:v86 count:16];
              }

              while (v63);
            }

            v12 = v72;
          }

          v33 = obja;
          v49 = [obja countByEnumeratingWithState:&v78 objects:v87 count:16];
        }

        while (v49);
        v13 = v50;
      }

LABEL_66:

      goto LABEL_67;
    }

    v33 = v73;
    v34 = [v14 count];
    if (v34 != [v33 techniqueCount])
    {
      v35 = [v33 indexForTechnique:v12];
      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = _ARLogTechnique_8();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = [v33 imageData];
          [v39 timestamp];
          *buf = 138412546;
          v89 = v38;
          v90 = 2048;
          v91 = v40;
          _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_INFO, "Ignoring result from %@, because it isn't collected by gathering context at timestamp %f.", buf, 0x16u);
        }

        goto LABEL_66;
      }

      v16 = v35;
    }

    v47 = [v33 addResultData:v13 forTechniqueAtIndex:v16];
    if (v47)
    {
      [v12 mergeResultData:v47 intoData:v13 context:v33];
    }

    if ([v12 deterministicMode])
    {
      if (![v33 requiredTimeIntervalComplete] || !objc_msgSend(v33, "deterministicResultsCaptured"))
      {
        goto LABEL_47;
      }
    }

    else if (!v69->_useLowLatencyPath || ![v33 isComplete])
    {
      goto LABEL_47;
    }

    [(ARParentTechnique *)v69 submitResultsForTimestamp:v33 context:a5];
LABEL_47:

    goto LABEL_48;
  }

LABEL_67:
}

- (void)technique:(id)a3 didFailWithError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(ARTechnique *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(ARTechnique *)self delegate];
    [v9 technique:v10 didFailWithError:v6];
  }
}

- (id)toJSONWithRootName:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = ARParentTechnique;
  v4 = [(ARTechnique *)&v27 toJSONWithRootName:a3];
  v5 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(ARParentTechnique *)self techniques];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) toJSONWithRootName:0];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(ARTechnique *)self splitTechniques];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * j) toJSONWithRootName:@"Split"];
        [v5 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v14);
  }

  [v4 setObject:v5 forKeyedSubscript:@"children"];

  return v4;
}

- (void)submitResultsForTimestamp:(double)a3 context:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (([v6 gatheredDataWasAlreadyCaptured] & 1) == 0)
  {
    kdebug_trace();
    v7 = [v6 captureGatheredData];
    [(ARParentTechnique *)self _logTechniqueState:@"submittedResultData" state:v7 data:a3];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(ARParentTechnique *)self techniques];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        v13 = v7;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v7 = [*(*(&v18 + 1) + 8 * v12) processResultData:v13 timestamp:v6 context:a3];

          ++v12;
          v13 = v7;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = [(ARTechnique *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(ARTechnique *)self delegate];
      v17 = [v6 parentContext];
      [v16 technique:self didOutputResultData:v7 timestamp:v17 context:a3];
    }

    kdebug_trace();
  }
}

+ (id)techniqueInArray:(id)a3 passingTest:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v7[2](v7, v13))
        {
          v15 = v13;
          goto LABEL_13;
        }

        v14 = [v13 techniques];
        v15 = [a1 techniqueInArray:v14 passingTest:v7];

        if (v15)
        {
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_13:

  return v15;
}

+ (id)techniquesByReplacingOriginalTechniques:(id)a3 withReplacementTechniques:(id)a4 passingTest:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v37 = a4;
  v36 = a5;
  v7 = [a3 mutableCopy];
  v8 = [v7 count];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = 0x1E817A000uLL;
  do
  {
    v13 = [v7 objectAtIndexedSubscript:v11];
    v14 = *(v12 + 2576);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __99__ARParentTechnique_techniquesByReplacingOriginalTechniques_withReplacementTechniques_passingTest___block_invoke;
    v42[3] = &unk_1E817C640;
    v15 = v36;
    v44 = v15;
    v16 = v13;
    v43 = v16;
    v17 = [v14 techniqueInArray:v37 passingTest:v42];
    if (v17)
    {
      v18 = _ARLogTechnique_8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138413058;
        v47 = v20;
        v48 = 2048;
        v49 = v16;
        v50 = 2112;
        v51 = v22;
        v52 = 2048;
        v53 = v17;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Replacing %@(%p) with %@(%p)", buf, 0x2Au);
      }

      [v7 setObject:v17 atIndexedSubscript:v11];
      v10 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v16;
        v24 = [v23 techniques];
        v25 = [a1 techniquesByReplacingOriginalTechniques:v24 withReplacementTechniques:v37 passingTest:v15];

        if (v25)
        {
          [v23 setTechniques:v25];
          v10 = 1;
        }
      }
    }

    ++v11;
    v12 = 0x1E817A000;
  }

  while (v9 != v11);
  if (v10)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = v7;
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v38 + 1) + 8 * i);
          v32 = [v26 mutableCopy];
          [v32 removeObject:v31];
          [v31 siblingTechniquesDidChange:v32];
        }

        v28 = [v26 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v28);
    }

    v33 = v26;
  }

  else
  {
LABEL_21:
    v33 = 0;
  }

  return v33;
}

+ (id)techniquesByForceReplacingTechniques:(id)a3 withMatchingClassTechniques:(id)a4
{
  v6 = a3;
  v7 = [a1 techniquesByReplacingOriginalTechniques:v6 withReplacementTechniques:a4 passingTest:&__block_literal_global_105];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

BOOL __86__ARParentTechnique_techniquesByForceReplacingTechniques_withMatchingClassTechniques___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_class();
    v6 = v7 == objc_opt_class();
  }

  return v6;
}

- (void)dotGraphWithLines:(id)a3 rootName:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23.receiver = self;
  v23.super_class = ARParentTechnique;
  [(ARTechnique *)&v23 dotGraphWithLines:v6 rootName:a4];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"subgraph cluster_%p {", self];
  [v6 addObject:v7];

  v8 = [(ARParentTechnique *)self isParallel];
  v9 = @"orange";
  if (v8)
  {
    v9 = @"blue";
  }

  v10 = v9;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(ARParentTechnique *)self techniques];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) -> (%p)[style=bold color=%@]", self, v16, v10];
        [v6 addObject:v17];

        [v16 dotGraphWithLines:v6 rootName:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"}"];
  [v6 addObject:v18];
}

@end