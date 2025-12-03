@interface VNFaceAnalyzerFaceObservationGrouping
- (id)addToGroupingsRequest:(id)request withFaceObservations:(id)observations;
@end

@implementation VNFaceAnalyzerFaceObservationGrouping

- (id)addToGroupingsRequest:(id)request withFaceObservations:(id)observations
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  observationsCopy = observations;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = observationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        uuid = [*(*(&v18 + 1) + 8 * i) uuid];
        [v8 addObject:uuid];
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(NSMutableDictionary *)self->_observationGroupsToRequestMapping objectForKey:v8];
  v15 = v14 == 0;

  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v16 addObject:requestCopy];
    [(NSMutableDictionary *)self->_observationGroupsToRequestMapping setObject:v16 forKey:v8];
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_observationGroupsToRequestMapping objectForKey:v8];
    [v16 addObject:requestCopy];
  }

  return v8;
}

@end