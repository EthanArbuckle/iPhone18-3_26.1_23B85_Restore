@interface VNCompoundRequest
+ (id)compoundRequestsForOriginalRequests:(id)requests withPerformingContext:(id)context error:(id *)error;
+ (id)computeStageDeviceAssignmentsForOriginalRequests:(id)requests;
+ (unint64_t)planPriorityForOriginalRequests:(id)requests;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)usesCPUOnly;
- (CGRect)regionOfInterest;
- (VNCompoundRequest)initWithOriginalRequests:(id)requests;
- (id)compoundResults;
- (id)description;
- (int64_t)dependencyProcessingOrdinality;
- (unint64_t)ioSurfaceMemoryPoolId;
- (void)recordWarningsInOriginalRequests;
@end

@implementation VNCompoundRequest

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  originalRequests = [(VNCompoundRequest *)self originalRequests];
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(originalRequests, "count") << 6}];
  v16.receiver = self;
  v16.super_class = VNCompoundRequest;
  v5 = [(VNRequest *)&v16 description];
  [v4 appendString:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = originalRequests;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 appendFormat:@"\n   +-- %@", *(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  return v4;
}

- (unint64_t)ioSurfaceMemoryPoolId
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  originalRequests = [(VNCompoundRequest *)self originalRequests];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__VNCompoundRequest_ioSurfaceMemoryPoolId__block_invoke;
  v11[3] = &unk_1E77B6510;
  v11[4] = &v16;
  v11[5] = &v12;
  [originalRequests enumerateObjectsUsingBlock:v11];

  if (*(v13 + 24) == 1)
  {
    VNValidatedLog(2, @"Mixed zero and non-zero pool ids in compound request. Returning pool id %llu\n", v3, v4, v5, v6, v7, v8, v17[3]);
  }

  v9 = v17[3];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void __42__VNCompoundRequest_ioSurfaceMemoryPoolId__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = [v18 ioSurfaceMemoryPoolId];
  v8 = *(*(*(a1 + 32) + 8) + 24);
  v9 = v7 == v8;
  v10 = v18;
  if (!v9)
  {
    if (v8)
    {
      if ([v18 ioSurfaceMemoryPoolId])
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *(*(*(a1 + 40) + 8) + 24) = 0;
        VNValidatedLog(4, @"Multiple non-zero pool ids in compound request. Returning pool id 0\n", v11, v12, v13, v14, v15, v16, v17);
        *a4 = 1;
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = a3 != 0;
      *(*(*(a1 + 32) + 8) + 24) = [v18 ioSurfaceMemoryPoolId];
    }

    v10 = v18;
  }
}

- (BOOL)usesCPUOnly
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  originalRequests = [(VNCompoundRequest *)self originalRequests];
  v3 = [originalRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(originalRequests);
        }

        if (![*(*(&v9 + 1) + 8 * i) usesCPUOnly])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [originalRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)recordWarningsInOriginalRequests
{
  originalRequests = [(VNCompoundRequest *)self originalRequests];
  warnings = [(VNRequest *)self warnings];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__VNCompoundRequest_recordWarningsInOriginalRequests__block_invoke;
  v6[3] = &unk_1E77B64E8;
  v7 = originalRequests;
  v5 = originalRequests;
  [warnings enumerateKeysAndObjectsUsingBlock:v6];
}

void __53__VNCompoundRequest_recordWarningsInOriginalRequests__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) recordWarning:v5 value:{v6, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (CGRect)regionOfInterest
{
  v21 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  originalRequests = [(VNCompoundRequest *)self originalRequests];
  v7 = [originalRequests countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(originalRequests);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 regionOfInterest];
          v26.origin.x = v12;
          v26.origin.y = v13;
          v26.size.width = v14;
          v26.size.height = v15;
          v22.origin.x = x;
          v22.origin.y = y;
          v22.size.width = width;
          v22.size.height = height;
          v23 = CGRectUnion(v22, v26);
          x = v23.origin.x;
          y = v23.origin.y;
          width = v23.size.width;
          height = v23.size.height;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [originalRequests countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = 1.0;
  v27.size.height = 1.0;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  return CGRectIntersection(v24, v27);
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v8 = [contextCopy requestPerformerAndReturnError:error];
  if (v8)
  {
    originalRequests = [(VNCompoundRequest *)self originalRequests];
    v10 = [v8 performDependentRequests:originalRequests onBehalfOfRequest:self inContext:contextCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)dependencyProcessingOrdinality
{
  v20 = *MEMORY[0x1E69E9840];
  cachedDependencyProcessingOrdinality = self->_cachedDependencyProcessingOrdinality;
  if (!cachedDependencyProcessingOrdinality)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    originalRequests = [(VNCompoundRequest *)self originalRequests];
    v5 = [originalRequests countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(originalRequests);
          }

          dependencyProcessingOrdinality = [*(*(&v15 + 1) + 8 * i) dependencyProcessingOrdinality];
          if (dependencyProcessingOrdinality < v8)
          {
            v8 = dependencyProcessingOrdinality;
          }
        }

        v6 = [originalRequests countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);

      if (v8 == 0x8000000000000000)
      {
        v11 = 0x8000000000000000;
      }

      else
      {
        v11 = v8 - 1;
      }
    }

    else
    {

      v11 = 0x7FFFFFFFFFFFFFFELL;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v13 = self->_cachedDependencyProcessingOrdinality;
    self->_cachedDependencyProcessingOrdinality = v12;

    cachedDependencyProcessingOrdinality = self->_cachedDependencyProcessingOrdinality;
  }

  return [(NSNumber *)cachedDependencyProcessingOrdinality integerValue];
}

- (id)compoundResults
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  originalRequests = [(VNCompoundRequest *)self originalRequests];
  v5 = [originalRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(originalRequests);
        }

        results = [*(*(&v11 + 1) + 8 * i) results];
        if (results)
        {
          [v3 addObjectsFromArray:results];
        }
      }

      v6 = [originalRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (VNCompoundRequest)initWithOriginalRequests:(id)requests
{
  v23 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v21.receiver = self;
  v21.super_class = VNCompoundRequest;
  v5 = [(VNRequest *)&v21 init];
  if (v5)
  {
    v6 = [requestsCopy copy];
    originalRequests = v5->_originalRequests;
    v5->_originalRequests = v6;

    configuration = [(VNRequest *)v5 configuration];
    v9 = [objc_opt_class() computeStageDeviceAssignmentsForOriginalRequests:v5->_originalRequests];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          [configuration setComputeDevice:v15 forComputeStage:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }

    [configuration setModelExecutionPriority:{objc_msgSend(objc_opt_class(), "planPriorityForOriginalRequests:", v5->_originalRequests)}];
  }

  return v5;
}

+ (id)computeStageDeviceAssignmentsForOriginalRequests:(id)requests
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = requests;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        resolvedComputeStageDeviceAssignments = [*(*(&v23 + 1) + 8 * i) resolvedComputeStageDeviceAssignments];
        v9 = resolvedComputeStageDeviceAssignments;
        if (v5)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = [resolvedComputeStageDeviceAssignments countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v20;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v20 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v19 + 1) + 8 * j);
                v15 = [v5 objectForKeyedSubscript:v14];

                if (!v15)
                {
                  v16 = [v9 objectForKeyedSubscript:v14];
                  [v5 setObject:v16 forKeyedSubscript:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v11);
          }
        }

        else
        {
          v5 = [resolvedComputeStageDeviceAssignments mutableCopy];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)compoundRequestsForOriginalRequests:(id)requests withPerformingContext:(id)context error:(id *)error
{
  if (error)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v7 stringWithFormat:@"%@ must implement %@", v9, v10];

    *error = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v11];
  }

  return 0;
}

+ (unint64_t)planPriorityForOriginalRequests:(id)requests
{
  v16 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [requestsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(requestsCopy);
        }

        modelExecutionPriority = [*(*(&v11 + 1) + 8 * i) modelExecutionPriority];
        if (modelExecutionPriority - 1 < v6 - 1)
        {
          v6 = modelExecutionPriority;
        }
      }

      v5 = [requestsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end