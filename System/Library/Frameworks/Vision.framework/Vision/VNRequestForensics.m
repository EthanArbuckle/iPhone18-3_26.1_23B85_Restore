@interface VNRequestForensics
- (VNRequestForensics)initWithOriginalRequests:(id)a3;
- (id)_humanReadableLabelForRequest:(id)a3;
- (void)cachedObservationsWithKey:(id)a3 wereCheckedOnBehalfOfRequest:(id)a4;
- (void)cachedObservationsWithKey:(id)a3 wereLocatedOnBehalfOfRequest:(id)a4;
- (void)performedRequest:(id)a3 withError:(id)a4;
- (void)performingOrderedDependentRequests:(id)a3 onBehalfOfRequest:(id)a4;
- (void)performingRequest:(id)a3;
- (void)request:(id)a3 cachedResultsWithObservationsCacheKey:(id)a4;
- (void)setOrderedRequests:(id)a3;
@end

@implementation VNRequestForensics

- (void)cachedObservationsWithKey:(id)a3 wereLocatedOnBehalfOfRequest:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [[_VNRequestForensicsRequestAndObservationsCacheKeyTuple alloc] initWithRequest:v6 observationsCacheKey:v14];
  v8 = self;
  objc_sync_enter(v8);
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 request];
  v11 = [(VNRequestForensics *)v8 _humanReadableLabelForRequest:v10];
  v12 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 observationsCacheKey];
  v13 = [v9 initWithFormat:@"%@ hit %@", v11, v12];

  [(NSMutableArray *)v8->_locatedCachedResultsOnBehalfOfRequest addObject:v7];
  [(NSMutableArray *)v8->_ledger addObject:v13];

  objc_sync_exit(v8);
}

- (void)cachedObservationsWithKey:(id)a3 wereCheckedOnBehalfOfRequest:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [[_VNRequestForensicsRequestAndObservationsCacheKeyTuple alloc] initWithRequest:v6 observationsCacheKey:v14];
  v8 = self;
  objc_sync_enter(v8);
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 request];
  v11 = [(VNRequestForensics *)v8 _humanReadableLabelForRequest:v10];
  v12 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 observationsCacheKey];
  v13 = [v9 initWithFormat:@"%@ looked up %@", v11, v12];

  [(NSMutableArray *)v8->_checkedCachedResultsOnBehalfOfRequest addObject:v7];
  [(NSMutableArray *)v8->_ledger addObject:v13];

  objc_sync_exit(v8);
}

- (void)request:(id)a3 cachedResultsWithObservationsCacheKey:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [[_VNRequestForensicsRequestAndObservationsCacheKeyTuple alloc] initWithRequest:v15 observationsCacheKey:v6];
  v8 = self;
  objc_sync_enter(v8);
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 request];
  v11 = [(VNRequestForensics *)v8 _humanReadableLabelForRequest:v10];
  v12 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v7 observationsCacheKey];
  v13 = [v9 initWithFormat:@"%@ cached %@", v11, v12];

  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ was already recorded as a cached result", v7];
  [VNError VNAssert:[(NSMutableArray *)v8->_cachedRequestResults containsObject:v7]^ 1 log:v14];
  [(NSMutableArray *)v8->_cachedRequestResults addObject:v7];
  [(NSMutableArray *)v8->_ledger addObject:v13];

  objc_sync_exit(v8);
}

- (void)performedRequest:(id)a3 withError:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [[_VNRequestForensicsRequestAndErrorTuple alloc] initWithRequest:v14 error:v6];
  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9 = self;
  objc_sync_enter(v9);
  v10 = [(_VNRequestForensicsRequestAndErrorTuple *)v7 request];
  v11 = [(VNRequestForensics *)v9 _humanReadableLabelForRequest:v10];
  [v8 appendFormat:@"performed %@", v11];

  v12 = [(_VNRequestForensicsRequestAndErrorTuple *)v7 error];
  v13 = v12;
  if (v12)
  {
    [v8 appendFormat:@", failed with %@", v12];
  }

  [(NSMutableArray *)v9->_performedRequests addObject:v7];
  [(NSMutableArray *)v9->_ledger addObject:v8];

  objc_sync_exit(v9);
}

- (void)performingRequest:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [(VNRequestForensics *)v4 _humanReadableLabelForRequest:v8];
  v7 = [v5 initWithFormat:@"performing %@", v6];

  [(NSMutableArray *)v4->_ledger addObject:v7];
  objc_sync_exit(v4);
}

- (void)performingOrderedDependentRequests:(id)a3 onBehalfOfRequest:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [[_VNRequestForensicsParentChildRequests alloc] initWithParentRequest:v7 orderedChildRequests:v6];
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(VNRequestForensics *)v10 _humanReadableLabelForRequest:v7];
  [v9 appendFormat:@"%@ created", v11];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v6;
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

        v16 = [(VNRequestForensics *)v10 _humanReadableLabelForRequest:*(*(&v17 + 1) + 8 * v15)];
        [v9 appendFormat:@" %@", v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [(NSMutableArray *)v10->_implicitRequests addObject:v8];
  [(NSMutableArray *)v10->_ledger addObject:v9];
  objc_sync_exit(v10);
}

- (void)setOrderedRequests:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [VNError VNAssert:v4->_orderedRequests == 0 log:@"attempting to re-assign ordered requests"];
  v5 = [v7 copy];
  orderedRequests = v4->_orderedRequests;
  v4->_orderedRequests = v5;

  objc_sync_exit(v4);
}

- (VNRequestForensics)initWithOriginalRequests:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = VNRequestForensics;
  v5 = [(VNRequestForensics *)&v34 init];
  if (v5)
  {
    v6 = [v4 copy];
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

    v20 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    requestToHumanReadableLabelMap = v5->_requestToHumanReadableLabelMap;
    v5->_requestToHumanReadableLabelMap = v20;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v4;
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

- (id)_humanReadableLabelForRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_requestToHumanReadableLabelMap objectForKey:v4];
    if (!v5)
    {
      v6 = [(NSMapTable *)self->_requestToHumanReadableLabelMap count]+ 1;
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = VNRequestRevisionString(v8, [v4 resolvedRevision]);
      v5 = [v7 stringWithFormat:@"%@ #%lu (%p)", v9, v6, v4];

      [(NSMapTable *)self->_requestToHumanReadableLabelMap setObject:v5 forKey:v4];
    }

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end