@interface VNUniqueObservationClassCompoundRequest
- (VNUniqueObservationClassCompoundRequest)initWithOriginalRequests:(id)a3 requestToObservationClassMap:(id)a4;
- (VNUniqueObservationClassCompoundRequest)initWithSubrequests:(id)a3 uniqueObservationClasses:(id)a4;
- (void)assignOriginalRequestsResultsFromObservations:(id)a3 obtainedInPerformingContext:(id)a4;
@end

@implementation VNUniqueObservationClassCompoundRequest

- (void)assignOriginalRequestsResultsFromObservations:(id)a3 obtainedInPerformingContext:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = objc_opt_class();
        v16 = [v8 objectForKey:v15];
        if (v16)
        {
          v17 = v16;
          [v16 addObject:v14];
        }

        else
        {
          v17 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
          [v8 setObject:v17 forKey:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v27 = v9;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = [(VNCompoundRequest *)self originalRequests];
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    v22 = MEMORY[0x1E695E0F0];
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v29 + 1) + 8 * j);
        v25 = [v8 objectForKey:{-[NSMapTable objectForKey:](self->_requestToObservationClassMap, "objectForKey:", v24, v27)}];
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v22;
        }

        [v24 setResults:v26];
        [v6 cacheObservationsOfRequest:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
  }
}

- (VNUniqueObservationClassCompoundRequest)initWithOriginalRequests:(id)a3 requestToObservationClassMap:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VNUniqueObservationClassCompoundRequest;
  v8 = [(VNCompoundRequest *)&v11 initWithOriginalRequests:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestToObservationClassMap, a4);
  }

  return v9;
}

- (VNUniqueObservationClassCompoundRequest)initWithSubrequests:(id)a3 uniqueObservationClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  +[VNError VNAssert:log:](VNError, "VNAssert:log:", v8 == [v7 count], @"Unexpected number of unique observation classes");
  v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [v7 objectAtIndex:i];
      v12 = [v6 objectAtIndex:i];
      [v9 setObject:v11 forKey:v12];
    }
  }

  v13 = [(VNUniqueObservationClassCompoundRequest *)self initWithOriginalRequests:v6 requestToObservationClassMap:v9];

  return v13;
}

@end