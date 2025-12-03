@interface VNRequestForensics
- (VNRequestForensics)initWithOriginalRequests:(id)requests;
- (id)_humanReadableLabelForRequest:(id)request;
- (void)cachedObservationsWithKey:(id)key wereCheckedOnBehalfOfRequest:(id)request;
- (void)cachedObservationsWithKey:(id)key wereLocatedOnBehalfOfRequest:(id)request;
- (void)performedRequest:(id)request withError:(id)error;
- (void)performingOrderedDependentRequests:(id)requests onBehalfOfRequest:(id)request;
- (void)performingRequest:(id)request;
- (void)request:(id)request cachedResultsWithObservationsCacheKey:(id)key;
- (void)setOrderedRequests:(id)requests;
@end

@implementation VNRequestForensics

- (void)cachedObservationsWithKey:(id)key wereLocatedOnBehalfOfRequest:(id)request
{
  keyCopy = key;
  requestCopy = request;
  v7 = [[_VNRequestForensicsRequestAndObservationsCacheKeyTuple alloc] initWithRequest:requestCopy observationsCacheKey:keyCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  request = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 request];
  v11 = [(VNRequestForensics *)selfCopy _humanReadableLabelForRequest:request];
  observationsCacheKey = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 observationsCacheKey];
  v13 = [v9 initWithFormat:@"%@ hit %@", v11, observationsCacheKey];

  [(NSMutableArray *)selfCopy->_locatedCachedResultsOnBehalfOfRequest addObject:v7];
  [(NSMutableArray *)selfCopy->_ledger addObject:v13];

  objc_sync_exit(selfCopy);
}

- (void)cachedObservationsWithKey:(id)key wereCheckedOnBehalfOfRequest:(id)request
{
  keyCopy = key;
  requestCopy = request;
  v7 = [[_VNRequestForensicsRequestAndObservationsCacheKeyTuple alloc] initWithRequest:requestCopy observationsCacheKey:keyCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  request = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 request];
  v11 = [(VNRequestForensics *)selfCopy _humanReadableLabelForRequest:request];
  observationsCacheKey = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 observationsCacheKey];
  v13 = [v9 initWithFormat:@"%@ looked up %@", v11, observationsCacheKey];

  [(NSMutableArray *)selfCopy->_checkedCachedResultsOnBehalfOfRequest addObject:v7];
  [(NSMutableArray *)selfCopy->_ledger addObject:v13];

  objc_sync_exit(selfCopy);
}

- (void)request:(id)request cachedResultsWithObservationsCacheKey:(id)key
{
  requestCopy = request;
  keyCopy = key;
  v7 = [[_VNRequestForensicsRequestAndObservationsCacheKeyTuple alloc] initWithRequest:requestCopy observationsCacheKey:keyCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  request = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 request];
  v11 = [(VNRequestForensics *)selfCopy _humanReadableLabelForRequest:request];
  observationsCacheKey = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 observationsCacheKey];
  v13 = [v9 initWithFormat:@"%@ cached %@", v11, observationsCacheKey];

  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ was already recorded as a cached result", v7];
  [VNError VNAssert:[(NSMutableArray *)selfCopy->_cachedRequestResults containsObject:v7]^ 1 log:v14];
  [(NSMutableArray *)selfCopy->_cachedRequestResults addObject:v7];
  [(NSMutableArray *)selfCopy->_ledger addObject:v13];

  objc_sync_exit(selfCopy);
}

- (void)performedRequest:(id)request withError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v7 = [[_VNRequestForensicsRequestAndErrorTuple alloc] initWithRequest:requestCopy error:errorCopy];
  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  request = [(_VNRequestForensicsRequestAndErrorTuple *)v7 request];
  v11 = [(VNRequestForensics *)selfCopy _humanReadableLabelForRequest:request];
  [v8 appendFormat:@"performed %@", v11];

  error = [(_VNRequestForensicsRequestAndErrorTuple *)v7 error];
  v13 = error;
  if (error)
  {
    [v8 appendFormat:@", failed with %@", error];
  }

  [(NSMutableArray *)selfCopy->_performedRequests addObject:v7];
  [(NSMutableArray *)selfCopy->_ledger addObject:v8];

  objc_sync_exit(selfCopy);
}

- (void)performingRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [(VNRequestForensics *)selfCopy _humanReadableLabelForRequest:requestCopy];
  v7 = [v5 initWithFormat:@"performing %@", v6];

  [(NSMutableArray *)selfCopy->_ledger addObject:v7];
  objc_sync_exit(selfCopy);
}

- (void)performingOrderedDependentRequests:(id)requests onBehalfOfRequest:(id)request
{
  v22 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  requestCopy = request;
  v8 = [[_VNRequestForensicsParentChildRequests alloc] initWithParentRequest:requestCopy orderedChildRequests:requestsCopy];
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(VNRequestForensics *)selfCopy _humanReadableLabelForRequest:requestCopy];
  [v9 appendFormat:@"%@ created", v11];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = requestsCopy;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [(VNRequestForensics *)selfCopy _humanReadableLabelForRequest:*(*(&v17 + 1) + 8 * v15)];
        [v9 appendFormat:@" %@", v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [(NSMutableArray *)selfCopy->_implicitRequests addObject:v8];
  [(NSMutableArray *)selfCopy->_ledger addObject:v9];
  objc_sync_exit(selfCopy);
}

- (void)setOrderedRequests:(id)requests
{
  requestsCopy = requests;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [VNError VNAssert:selfCopy->_orderedRequests == 0 log:@"attempting to re-assign ordered requests"];
  v5 = [requestsCopy copy];
  orderedRequests = selfCopy->_orderedRequests;
  selfCopy->_orderedRequests = v5;

  objc_sync_exit(selfCopy);
}

- (VNRequestForensics)initWithOriginalRequests:(id)requests
{
  v36 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v34.receiver = self;
  v34.super_class = VNRequestForensics;
  v5 = [(VNRequestForensics *)&v34 init];
  if (v5)
  {
    v6 = [requestsCopy copy];
    originalRequests = v5->_originalRequests;
    v5->_originalRequests = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    implicitRequests = v5->_implicitRequests;
    v5->_implicitRequests = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    performedRequests = v5->_performedRequests;
    v5->_performedRequests = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cachedRequestResults = v5->_cachedRequestResults;
    v5->_cachedRequestResults = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    checkedCachedResultsOnBehalfOfRequest = v5->_checkedCachedResultsOnBehalfOfRequest;
    v5->_checkedCachedResultsOnBehalfOfRequest = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    locatedCachedResultsOnBehalfOfRequest = v5->_locatedCachedResultsOnBehalfOfRequest;
    v5->_locatedCachedResultsOnBehalfOfRequest = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    ledger = v5->_ledger;
    v5->_ledger = v18;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    requestToHumanReadableLabelMap = v5->_requestToHumanReadableLabelMap;
    v5->_requestToHumanReadableLabelMap = strongToStrongObjectsMapTable;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = requestsCopy;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        v26 = 0;
        do
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(VNRequestForensics *)v5 _humanReadableLabelForRequest:*(*(&v30 + 1) + 8 * v26++), v30];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

    v28 = v5;
  }

  return v5;
}

- (id)_humanReadableLabelForRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    requestCopy = [(NSMapTable *)self->_requestToHumanReadableLabelMap objectForKey:requestCopy];
    if (!requestCopy)
    {
      v6 = [(NSMapTable *)self->_requestToHumanReadableLabelMap count]+ 1;
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = VNRequestRevisionString(v8, [requestCopy resolvedRevision]);
      requestCopy = [v7 stringWithFormat:@"%@ #%lu (%p)", v9, v6, requestCopy];

      [(NSMapTable *)self->_requestToHumanReadableLabelMap setObject:requestCopy forKey:requestCopy];
    }

    v10 = requestCopy;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end