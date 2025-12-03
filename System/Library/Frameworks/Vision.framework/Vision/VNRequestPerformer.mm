@interface VNRequestPerformer
+ (id)_requestPerformingQueuePriorityGroup1;
+ (id)_requestPerformingQueuePriorityGroup2;
- (BOOL)_performOrderedRequests:(id)requests inContext:(id)context error:(id *)error;
- (BOOL)_performRequests:(id)requests onBehalfOfRequest:(id)request inContext:(id)context error:(id *)error;
- (BOOL)_validateAndPrepareRequests:(id)requests error:(id *)error;
- (BOOL)performDependentRequests:(id)requests onBehalfOfRequest:(id)request inContext:(id)context error:(id *)error;
- (VNRequestPerformer)init;
- (id)dependencyAnalyzedRequestsForRequests:(id)requests withPerformingContext:(id)context error:(id *)error;
- (id)getCurrentTrackersAndReset;
- (id)orderedRequestsForRequests:(id)requests;
- (id)previousSequencedObservationsForRequest:(id)request;
- (void)_groupOrderedRequests:(id)requests ordinality:(id)ordinality ordinalityAndPriorityGroups:(id)groups;
- (void)_groupsRequestsWithTheSameOrdinality:(id)ordinality priorityGroup1:(id)group1 priorityGroup2:(id)group2;
- (void)cancelAllRequests;
- (void)recordSequencedObservationsForRequest:(id)request;
- (void)recordTracker:(id)tracker;
@end

@implementation VNRequestPerformer

- (void)cancelAllRequests
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_requestLock);
  v4 = [(NSMutableArray *)self->_requestsInFlight copy];
  os_unfair_lock_unlock(&self->_requestLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __39__VNRequestPerformer_cancelAllRequests__block_invoke;
        v10[3] = &unk_1E77B5998;
        v10[4] = v9;
        VNExecuteBlock(v10, 0);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)getCurrentTrackersAndReset
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_trackersInFlightLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_trackersInFlight;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) objectAndReturnError:{0, v10}];
        if (v8)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_trackersInFlight removeAllObjects];
  os_unfair_lock_unlock(&self->_trackersInFlightLock);

  return v3;
}

- (void)recordTracker:(id)tracker
{
  trackerCopy = tracker;
  os_unfair_lock_lock(&self->_trackersInFlightLock);
  v4 = [[VNWeakTypeWrapper alloc] initWithObject:trackerCopy];
  [(NSMutableSet *)self->_trackersInFlight addObject:v4];
  os_unfair_lock_unlock(&self->_trackersInFlightLock);
}

- (id)previousSequencedObservationsForRequest:(id)request
{
  sequencedRequestPreviousObservationsKey = [request sequencedRequestPreviousObservationsKey];
  v5 = [(NSMutableDictionary *)self->_sequencedRequestObservations objectForKey:sequencedRequestPreviousObservationsKey];

  return v5;
}

- (void)recordSequencedObservationsForRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy wantsSequencedRequestObservationsRecording])
  {
    sequencedRequestPreviousObservationsKey = [requestCopy sequencedRequestPreviousObservationsKey];
    if (sequencedRequestPreviousObservationsKey)
    {
      sequencedRequestObservations = self->_sequencedRequestObservations;
      results = [requestCopy results];
      [(NSMutableDictionary *)sequencedRequestObservations setObject:results forKey:sequencedRequestPreviousObservationsKey];
    }
  }
}

- (BOOL)performDependentRequests:(id)requests onBehalfOfRequest:(id)request inContext:(id)context error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  requestCopy = request;
  v19 = requestsCopy;
  v12 = [(VNRequestPerformer *)self _performRequests:requestsCopy onBehalfOfRequest:requestCopy inContext:context error:error];
  if (v12)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = requestsCopy;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          warnings = [*(*(&v22 + 1) + 8 * i) warnings];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __81__VNRequestPerformer_performDependentRequests_onBehalfOfRequest_inContext_error___block_invoke;
          v20[3] = &unk_1E77B64E8;
          v21 = requestCopy;
          [warnings enumerateKeysAndObjectsUsingBlock:v20];
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }

  return v12;
}

- (id)orderedRequestsForRequests:(id)requests
{
  v3 = [requests sortedArrayWithOptions:16 usingComparator:&__block_literal_global_80];

  return v3;
}

uint64_t __49__VNRequestPerformer_orderedRequestsForRequests___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dependencyProcessingOrdinality];
  v7 = [v5 dependencyProcessingOrdinality];
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 != v7;
  }

  return v8;
}

- (id)dependencyAnalyzedRequestsForRequests:(id)requests withPerformingContext:(id)context error:(id *)error
{
  requestsCopy = requests;
  contextCopy = context;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __88__VNRequestPerformer_dependencyAnalyzedRequestsForRequests_withPerformingContext_error___block_invoke;
  v29[3] = &unk_1E77B5950;
  v9 = contextCopy;
  v30 = v9;
  v10 = [requestsCopy indexesOfObjectsPassingTest:v29];
  if ([v10 count])
  {
    v11 = [requestsCopy objectsAtIndexes:v10];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = objc_opt_class();
    v14 = v12;
    v15 = [v13 compoundRequestsForOriginalRequests:v11 withPerformingContext:v9 error:error];
    v16 = v14;
    if (v15 && ([v14 addObjectsFromArray:v15], v15, v14, v17 = objc_opt_class(), v16 = v14, objc_msgSend(v17, "compoundRequestsForOriginalRequests:withPerformingContext:error:", v11, v9, error), (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v16, "addObjectsFromArray:", v18), v18, v16, v19 = objc_opt_class(), v16 = v16, objc_msgSend(v19, "compoundRequestsForOriginalRequests:withPerformingContext:error:", v11, v9, error), (v20 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v16, "addObjectsFromArray:", v20), v20, v16, v21 = objc_opt_class(), v16 = v16, objc_msgSend(v21, "compoundRequestsForOriginalRequests:withPerformingContext:error:", v11, v9, error), (v22 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v16, "addObjectsFromArray:", v22), v22, v16, v23 = objc_opt_class(), v16 = v16, objc_msgSend(v23, "compoundRequestsForOriginalRequests:withPerformingContext:error:", v11, v9, error), (v24 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v16, "addObjectsFromArray:", v24), v24, v16, v25 = objc_opt_class(), v16 = v16, objc_msgSend(v25, "compoundRequestsForOriginalRequests:withPerformingContext:error:", v11, v9, error), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [v16 addObjectsFromArray:v26];

      v27 = [requestsCopy arrayByAddingObjectsFromArray:v16];
    }

    else
    {

      v27 = 0;
    }
  }

  else
  {
    v27 = requestsCopy;
  }

  return v27;
}

BOOL __88__VNRequestPerformer_dependencyAnalyzedRequestsForRequests_withPerformingContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) cachedObservationsAcceptedByRequest:a2];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)_performOrderedRequests:(id)requests inContext:(id)context error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  contextCopy = context;
  v44 = contextCopy;
  v45 = requestsCopy;
  [contextCopy qosClass];
  os_unfair_lock_lock(&self->_requestLock);
  [(NSMutableArray *)self->_requestsPending addObjectsFromArray:requestsCopy];
  os_unfair_lock_unlock(&self->_requestLock);
  requestForensics = [contextCopy requestForensics];
  if ([requestsCopy count] == 1)
  {
    firstObject = [requestsCopy firstObject];
    os_unfair_lock_lock(&self->_requestLock);
    [(NSMutableArray *)self->_requestsPending removeObjectIdenticalTo:firstObject];
    [(NSMutableArray *)self->_requestsInFlight addObject:firstObject];
    os_unfair_lock_unlock(&self->_requestLock);
    if (requestForensics)
    {
      [requestForensics performingRequest:firstObject];
    }

    v11 = [firstObject performInContext:contextCopy error:error];
    if (v11)
    {
      os_unfair_lock_lock(&self->_requestLock);
      [(NSMutableArray *)self->_requestsInFlight removeObjectIdenticalTo:firstObject];
      os_unfair_lock_unlock(&self->_requestLock);
      if (requestForensics)
      {
        [requestForensics performedRequest:firstObject withError:*error];
      }
    }

    goto LABEL_44;
  }

  v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(VNRequestPerformer *)self _groupOrderedRequests:requestsCopy ordinality:v50 ordinalityAndPriorityGroups:?];
  allKeys = [v50 allKeys];
  v13 = [allKeys sortedArrayUsingComparator:&__block_literal_global_50];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__VNRequestPerformer__performOrderedRequests_inContext_error___block_invoke_2;
  aBlock[3] = &unk_1E77B5928;
  v52 = contextCopy;
  v71 = v52;
  selfCopy = self;
  v53 = _Block_copy(aBlock);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (!v14)
  {
    v11 = 1;
    goto LABEL_43;
  }

  v11 = 1;
  v48 = *v67;
  while (2)
  {
    v15 = 0;
    v47 = v14;
    do
    {
      if (*v67 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v54 = v15;
      v16 = *(*(&v66 + 1) + 8 * v15);
      v56 = [v50 objectForKey:v16];
      v57 = [v49 objectForKey:v16];
      v59 = [v57 objectForKeyedSubscript:@"VNRequestPerformer_SameOrdinalityRequestsPriorityGroup1Key"];
      [VNError VNAssert:v59 != 0 log:@"Unexpected internal error"];
      v17 = dispatch_group_create();
      _requestPerformingQueuePriorityGroup1 = [objc_opt_class() _requestPerformingQueuePriorityGroup1];
      v53[2](v53, v59, v52);
      LOBYTE(v16) = [_requestPerformingQueuePriorityGroup1 dispatchGroupWait:v17 error:error];

      if ((v16 & 1) == 0)
      {
        VNValidatedLog(4, @"[VNRequestPerformer _performOrderedRequests:] timed out processing group 1 requests: %@", v18, v19, v20, v21, v22, v23, v59);
LABEL_36:
        v42 = 0;
        goto LABEL_37;
      }

      VNValidatedLog(1, @"[VNRequestPerformer _performOrderedRequests:] finished processing group 1 requests: %@", v18, v19, v20, v21, v22, v23, v59);
      v55 = [v57 objectForKeyedSubscript:@"VNRequestPerformer_SameOrdinalityRequestsPriorityGroup2Key"];
      [VNError VNAssert:v55 != 0 log:@"Unexpected internal error"];
      v24 = dispatch_group_create();
      _requestPerformingQueuePriorityGroup2 = [objc_opt_class() _requestPerformingQueuePriorityGroup2];
      v53[2](v53, v55, v52);
      v25 = [_requestPerformingQueuePriorityGroup2 dispatchGroupWait:v24 error:error];

      if ((v25 & 1) == 0)
      {
        VNValidatedLog(4, @"[VNRequestPerformer _performOrderedRequests:] timed out processing group 2 requests: %@", v26, v27, v28, v29, v30, v31, v55);

        goto LABEL_36;
      }

      VNValidatedLog(1, @"[VNRequestPerformer _performOrderedRequests:] finished processing group 2 requests: %@", v26, v27, v28, v29, v30, v31, v55);
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = v56;
      v32 = [v60 countByEnumeratingWithState:&v62 objects:v73 count:16];
      if (v32)
      {
        v33 = *v63;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v63 != v33)
            {
              objc_enumerationMutation(v60);
            }

            v35 = *(*(&v62 + 1) + 8 * i);
            if (requestForensics)
            {
              [requestForensics performingRequest:*(*(&v62 + 1) + 8 * i)];
            }

            os_unfair_lock_lock(&self->_requestLock);
            [(NSMutableArray *)self->_requestsInFlight removeObjectIdenticalTo:v35];
            os_unfair_lock_unlock(&self->_requestLock);
            asyncStatus = [v35 asyncStatus];
            v37 = asyncStatus;
            if (requestForensics)
            {
              completed = [asyncStatus completed];
              if (completed)
              {
                v39 = 0;
              }

              else
              {
                contextCopy = [v37 error];
                v39 = contextCopy;
              }

              [requestForensics performedRequest:v35 withError:v39];
              if ((completed & 1) == 0)
              {
              }
            }

            completed2 = [v37 completed];
            v41 = completed2 | ~v11;
            v11 &= completed2;
            if ((v41 & 1) == 0 && error)
            {
              [v37 error];
              *error = v11 = 0;
            }

            [v35 resetAsyncStatus];
          }

          v32 = [v60 countByEnumeratingWithState:&v62 objects:v73 count:16];
        }

        while (v32);
      }

      v42 = 1;
LABEL_37:

      if (!v42)
      {
        v11 = 0;
        goto LABEL_43;
      }

      v15 = v54 + 1;
    }

    while (v54 + 1 != v47);
    v14 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_43:

LABEL_44:
  return v11 & 1;
}

void __62__VNRequestPerformer__performOrderedRequests_inContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  [*(a1 + 32) qosClass];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v11;
  v21 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v21)
  {
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v26 + 1) + 8 * v23);
        if ((a6 & 1) == 0)
        {
          [*(*(&v26 + 1) + 8 * v23) cancel];
        }

        VNValidatedLog(1, @"[VNRequestPerformer -performRequestsAsync]: scheduling processing of request: %@", v15, v16, v17, v18, v19, v20, v24);
        os_unfair_lock_lock((*(a1 + 40) + 8));
        [*(*(a1 + 40) + 24) removeObjectIdenticalTo:v24];
        [*(*(a1 + 40) + 16) addObject:v24];
        os_unfair_lock_unlock((*(a1 + 40) + 8));
        [v24 performInContextAsync:v12 asyncDispatchQueue:v13 asyncDispatchGroup:v14];
        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }
}

uint64_t __62__VNRequestPerformer__performOrderedRequests_inContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 >= [v5 integerValue])
  {
    v8 = [v5 integerValue];
    v7 = v8 < [v4 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)_groupsRequestsWithTheSameOrdinality:(id)ordinality priorityGroup1:(id)group1 priorityGroup2:(id)group2
{
  v30 = *MEMORY[0x1E69E9840];
  ordinalityCopy = ordinality;
  group1Copy = group1;
  group2Copy = group2;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = ordinalityCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v9 objectForKey:v16];
        if (!v17)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v17 addObject:v14];
        [v9 setObject:v17 forKey:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89__VNRequestPerformer__groupsRequestsWithTheSameOrdinality_priorityGroup1_priorityGroup2___block_invoke_3;
  v21[3] = &unk_1E77B58E0;
  v24 = &__block_literal_global_30873;
  v18 = group1Copy;
  v22 = v18;
  v19 = group2Copy;
  v23 = v19;
  [v9 enumerateKeysAndObjectsUsingBlock:v21];
}

void __89__VNRequestPerformer__groupsRequestsWithTheSameOrdinality_priorityGroup1_priorityGroup2___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v5 = a3;
  while ([v5 count])
  {
    v6 = (*(*(a1 + 48) + 16))();
    v7 = [v5 objectAtIndexedSubscript:v6];
    [*(a1 + 32) addObject:v7];
    [v5 removeObjectAtIndex:v6];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [v7 configuration];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 willAcceptCachedResultsFromRequestWithConfiguration:v9])
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [*(a1 + 40) addObjectsFromArray:v8];
    [v10 removeObjectsInArray:v8];
  }
}

uint64_t __89__VNRequestPerformer__groupsRequestsWithTheSameOrdinality_priorityGroup1_priorityGroup2___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [v2 firstObject];
  v4 = [objc_opt_class() defaultRevision];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__VNRequestPerformer__groupsRequestsWithTheSameOrdinality_priorityGroup1_priorityGroup2___block_invoke_2;
  v9[3] = &unk_1E77B58B8;
  v9[4] = &v18;
  v9[5] = &v14;
  v9[6] = &v10;
  v9[7] = v4;
  [v2 enumerateObjectsUsingBlock:v9];
  if (v19[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v15[3];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v11[3];
    }

    v19[3] = v5;
    v6 = v5 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  [VNError VNAssert:v6 log:@"Internal error while sorting requests"];
  v7 = v19[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

void __89__VNRequestPerformer__groupsRequestsWithTheSameOrdinality_priorityGroup1_priorityGroup2___block_invoke_2(void *a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 resolvedRevision];
  if (v7 == a1[7])
  {
    *(*(a1[4] + 8) + 24) = a3;
    *a4 = 1;
  }

  else
  {
    if (v7 <= 0xDECAEFFF)
    {
      v8 = a1[5];
    }

    else
    {
      v8 = a1[6];
    }

    v9 = *(v8 + 8);
    v10 = *(v9 + 24);
    if (v10 <= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = *(v9 + 24);
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = a3;
    }

    else
    {
      v12 = v11;
    }

    *(v9 + 24) = v12;
  }
}

- (void)_groupOrderedRequests:(id)requests ordinality:(id)ordinality ordinalityAndPriorityGroups:(id)groups
{
  v32 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  ordinalityCopy = ordinality;
  groupsCopy = groups;
  firstObject = [requestsCopy firstObject];
  dependencyProcessingOrdinality = [firstObject dependencyProcessingOrdinality];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = [requestsCopy count];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v25];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v25];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__VNRequestPerformer__groupOrderedRequests_ordinality_ordinalityAndPriorityGroups___block_invoke;
  aBlock[3] = &unk_1E77B5870;
  aBlock[4] = self;
  v21 = _Block_copy(aBlock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = requestsCopy;
  v14 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v14)
  {
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ([v17 dependencyProcessingOrdinality] == dependencyProcessingOrdinality)
        {
          [v11 addObject:v17];
        }

        else
        {
          v21[2](v21, v11, ordinalityCopy, groupsCopy, v12, v13, dependencyProcessingOrdinality);
          dependencyProcessingOrdinality = [v17 dependencyProcessingOrdinality];
          v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];

          v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v25];
          v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v25];

          v11 = v18;
          v12 = v19;
          v13 = v20;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v14);
  }

  v21[2](v21, v11, ordinalityCopy, groupsCopy, v12, v13, dependencyProcessingOrdinality);
}

void __83__VNRequestPerformer__groupOrderedRequests_ordinality_ordinalityAndPriorityGroups___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  [*(a1 + 32) _groupsRequestsWithTheSameOrdinality:v13 priorityGroup1:v16 priorityGroup2:v17];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  [v14 setObject:v13 forKey:v18];

  v21[0] = @"VNRequestPerformer_SameOrdinalityRequestsPriorityGroup1Key";
  v21[1] = @"VNRequestPerformer_SameOrdinalityRequestsPriorityGroup2Key";
  v22[0] = v16;
  v22[1] = v17;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  [v15 setObject:v19 forKey:v20];
}

- (BOOL)_performRequests:(id)requests onBehalfOfRequest:(id)request inContext:(id)context error:(id *)error
{
  requestsCopy = requests;
  requestCopy = request;
  contextCopy = context;
  [contextCopy qosClass];
  if ([requestsCopy count])
  {
    [contextCopy serialNumber];
    if (requestCopy)
    {
      [objc_opt_class() VNClassCode];
    }

    kdebug_trace();
    v14 = [(VNRequestPerformer *)self dependencyAnalyzedRequestsForRequests:requestsCopy withPerformingContext:contextCopy error:error];
    if (v14 && [(VNRequestPerformer *)self _validateAndPrepareRequests:v14 error:error])
    {
      v19 = [(VNRequestPerformer *)self orderedRequestsForRequests:v14];
      requestForensics = [contextCopy requestForensics];
      v16 = requestForensics;
      v17 = v19;
      if (requestForensics)
      {
        v17 = v19;
        if (requestCopy)
        {
          [requestForensics performingOrderedDependentRequests:v19 onBehalfOfRequest:requestCopy];
        }

        else
        {
          [requestForensics setOrderedRequests:v19];
        }
      }

      v13 = [(VNRequestPerformer *)self _performOrderedRequests:v17 inContext:contextCopy error:error];
    }

    else
    {
      v13 = 0;
    }

    kdebug_trace();
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)_validateAndPrepareRequests:(id)requests error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  requestsCopy = requests;
  v6 = [requestsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 setResults:{0, v12}];
        if (([v9 validateConfigurationAndReturnError:error] & 1) == 0)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [requestsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (VNRequestPerformer)init
{
  v14.receiver = self;
  v14.super_class = VNRequestPerformer;
  v2 = [(VNRequestPerformer *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_requestLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestsPending = v3->_requestsPending;
    v3->_requestsPending = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestsInFlight = v3->_requestsInFlight;
    v3->_requestsInFlight = v6;

    v3->_trackersInFlightLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trackersInFlight = v3->_trackersInFlight;
    v3->_trackersInFlight = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sequencedRequestObservations = v3->_sequencedRequestObservations;
    v3->_sequencedRequestObservations = v10;

    v12 = v3;
  }

  return v3;
}

+ (id)_requestPerformingQueuePriorityGroup2
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VNRequestPerformer__requestPerformingQueuePriorityGroup2__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNRequestPerformer _requestPerformingQueuePriorityGroup2]::onceToken != -1)
  {
    dispatch_once(&+[VNRequestPerformer _requestPerformingQueuePriorityGroup2]::onceToken, block);
  }

  v2 = +[VNRequestPerformingPriorityGroup2AsyncTasksQueueCache sharedCache];
  v3 = [v2 queueWithUniqueAppendix:+[VNRequestPerformer _requestPerformingQueuePriorityGroup2]::className];

  return v3;
}

uint64_t __59__VNRequestPerformer__requestPerformingQueuePriorityGroup2__block_invoke(uint64_t a1)
{
  +[VNRequestPerformer _requestPerformingQueuePriorityGroup2]::className = NSStringFromClass(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_requestPerformingQueuePriorityGroup1
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VNRequestPerformer__requestPerformingQueuePriorityGroup1__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNRequestPerformer _requestPerformingQueuePriorityGroup1]::onceToken != -1)
  {
    dispatch_once(&+[VNRequestPerformer _requestPerformingQueuePriorityGroup1]::onceToken, block);
  }

  v2 = +[VNRequestPerformingPriorityGroup1AsyncTasksQueueCache sharedCache];
  v3 = [v2 queueWithUniqueAppendix:+[VNRequestPerformer _requestPerformingQueuePriorityGroup1]::className];

  return v3;
}

uint64_t __59__VNRequestPerformer__requestPerformingQueuePriorityGroup1__block_invoke(uint64_t a1)
{
  +[VNRequestPerformer _requestPerformingQueuePriorityGroup1]::className = NSStringFromClass(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end