@interface VNUniqueObservationClassCompoundRequest
- (VNUniqueObservationClassCompoundRequest)initWithOriginalRequests:(id)requests requestToObservationClassMap:(id)map;
- (VNUniqueObservationClassCompoundRequest)initWithSubrequests:(id)subrequests uniqueObservationClasses:(id)classes;
- (void)assignOriginalRequestsResultsFromObservations:(id)observations obtainedInPerformingContext:(id)context;
@end

@implementation VNUniqueObservationClassCompoundRequest

- (void)assignOriginalRequestsResultsFromObservations:(id)observations obtainedInPerformingContext:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  contextCopy = context;
  v7 = observationsCopy;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
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
        v16 = [strongToStrongObjectsMapTable objectForKey:v15];
        if (v16)
        {
          v17 = v16;
          [v16 addObject:v14];
        }

        else
        {
          v17 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
          [strongToStrongObjectsMapTable setObject:v17 forKey:v15];
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
  originalRequests = [(VNCompoundRequest *)self originalRequests];
  v19 = [originalRequests countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(originalRequests);
        }

        v24 = *(*(&v29 + 1) + 8 * j);
        v25 = [strongToStrongObjectsMapTable objectForKey:{-[NSMapTable objectForKey:](self->_requestToObservationClassMap, "objectForKey:", v24, v27)}];
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v22;
        }

        [v24 setResults:v26];
        [contextCopy cacheObservationsOfRequest:v24];
      }

      v20 = [originalRequests countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
  }
}

- (VNUniqueObservationClassCompoundRequest)initWithOriginalRequests:(id)requests requestToObservationClassMap:(id)map
{
  mapCopy = map;
  v11.receiver = self;
  v11.super_class = VNUniqueObservationClassCompoundRequest;
  v8 = [(VNCompoundRequest *)&v11 initWithOriginalRequests:requests];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestToObservationClassMap, map);
  }

  return v9;
}

- (VNUniqueObservationClassCompoundRequest)initWithSubrequests:(id)subrequests uniqueObservationClasses:(id)classes
{
  subrequestsCopy = subrequests;
  classesCopy = classes;
  v8 = [subrequestsCopy count];
  +[VNError VNAssert:log:](VNError, "VNAssert:log:", v8 == [classesCopy count], @"Unexpected number of unique observation classes");
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [classesCopy objectAtIndex:i];
      v12 = [subrequestsCopy objectAtIndex:i];
      [strongToStrongObjectsMapTable setObject:v11 forKey:v12];
    }
  }

  v13 = [(VNUniqueObservationClassCompoundRequest *)self initWithOriginalRequests:subrequestsCopy requestToObservationClassMap:strongToStrongObjectsMapTable];

  return v13;
}

@end