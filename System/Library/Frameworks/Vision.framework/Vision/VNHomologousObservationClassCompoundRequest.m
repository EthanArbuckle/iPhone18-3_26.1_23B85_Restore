@interface VNHomologousObservationClassCompoundRequest
- (VNHomologousObservationClassCompoundRequest)initWithSubrequests:(id)a3;
- (void)assignOriginalRequestsResultsFromObservations:(id)a3 obtainedInPerformingContext:(id)a4;
@end

@implementation VNHomologousObservationClassCompoundRequest

- (void)assignOriginalRequestsResultsFromObservations:(id)a3 obtainedInPerformingContext:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D920];
  v7 = objc_opt_class();
  v9 = NSStringFromClass(v7);
  v8 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"%@ does not override %@", v9, v8}];
}

- (VNHomologousObservationClassCompoundRequest)initWithSubrequests:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = VNHomologousObservationClassCompoundRequest;
  v5 = [(VNCompoundRequest *)&v38 initWithOriginalRequests:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [v12 frameworkClass];
          v14 = [v6 objectForKey:v13];
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v6 setObject:v14 forKey:v13];
          }

          [v14 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }

    v15 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    requestsClassMapping = v5->_requestsClassMapping;
    v17 = v5;
    v5->_requestsClassMapping = v15;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [v6 keyEnumerator];
    v18 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          v23 = [v6 objectForKey:{v22, v28}];
          v24 = v17->_requestsClassMapping;
          v25 = [v23 copy];
          [(NSMapTable *)v24 setObject:v25 forKey:v22];
        }

        v19 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v19);
    }

    v5 = v17;
    v26 = v17;

    v4 = v28;
  }

  return v5;
}

@end