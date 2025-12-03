@interface _HKSampleQueryUtility
- (_HKSampleQueryUtility)init;
- (_HKSampleQueryUtility)initWithHealthStore:(id)store sampleType:(id)type predicate:(id)predicate completionHandler:(id)handler updateHandler:(id)updateHandler;
- (void)handleAddedObjects:(id)objects deletedObjects:(id)deletedObjects queryAnchor:(id)anchor error:(id)error resultsHandler:(id)handler;
- (void)setUpdateHandler:(id)handler;
- (void)setupQueryWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation _HKSampleQueryUtility

- (_HKSampleQueryUtility)initWithHealthStore:(id)store sampleType:(id)type predicate:(id)predicate completionHandler:(id)handler updateHandler:(id)updateHandler
{
  storeCopy = store;
  typeCopy = type;
  predicateCopy = predicate;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  v23.receiver = self;
  v23.super_class = _HKSampleQueryUtility;
  v18 = [(_HKSampleQueryUtility *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_healthStore, store);
    objc_storeStrong(&v19->_sampleType, type);
    objc_storeStrong(&v19->_predicate, predicate);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    samples = v19->_samples;
    v19->_samples = v20;

    [(_HKSampleQueryUtility *)v19 setupQueryWithCompletionHandler:handlerCopy];
    [(_HKSampleQueryUtility *)v19 setUpdateHandler:updateHandlerCopy];
  }

  return v19;
}

- (_HKSampleQueryUtility)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)setupQueryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = [(HKSampleType *)self->_sampleType copy];
  v6 = [HKAnchoredObjectQuery alloc];
  sampleType = self->_sampleType;
  predicate = self->_predicate;
  queryAnchor = self->_queryAnchor;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___HKSampleQueryUtility_setupQueryWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E7385028;
  v10 = v5;
  v15 = v10;
  objc_copyWeak(&v17, &location);
  v11 = handlerCopy;
  v16 = v11;
  v12 = [(HKAnchoredObjectQuery *)v6 initWithType:sampleType predicate:predicate anchor:queryAnchor limit:0 resultsHandler:v14];
  query = self->_query;
  self->_query = v12;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)setUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_query)
  {
    v6 = _Block_copy(handlerCopy);
    updateHandler = self->_updateHandler;
    self->_updateHandler = v6;

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42___HKSampleQueryUtility_setUpdateHandler___block_invoke;
    v8[3] = &unk_1E7385050;
    objc_copyWeak(&v9, &location);
    [(HKAnchoredObjectQuery *)self->_query setUpdateHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)handleAddedObjects:(id)objects deletedObjects:(id)deletedObjects queryAnchor:(id)anchor error:(id)error resultsHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  deletedObjectsCopy = deletedObjects;
  anchorCopy = anchor;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (error)
  {
    (*(handlerCopy + 2))(handlerCopy, self, 0, error);
  }

  else
  {
    obj = anchor;
    v31 = handlerCopy;
    v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = deletedObjectsCopy;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          samples = self->_samples;
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __92___HKSampleQueryUtility_handleAddedObjects_deletedObjects_queryAnchor_error_resultsHandler___block_invoke;
          v32[3] = &unk_1E7385078;
          v32[4] = v23;
          v25 = [(NSMutableArray *)samples indexOfObjectPassingTest:v32, obj];
          if (v25 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v17 addIndex:v25];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v20);
    }

    [(NSMutableArray *)self->_samples removeObjectsAtIndexes:v17];
    [(NSMutableArray *)self->_samples addObjectsFromArray:objectsCopy];
    v26 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:self->_sortStartDateAscending];
    v27 = self->_samples;
    v37 = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    [(NSMutableArray *)v27 sortUsingDescriptors:v28];

    objc_storeStrong(&self->_queryAnchor, obj);
    v16 = v31;
    (*(v31 + 2))(v31, self, self->_samples, 0);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  if (self->_query)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    query = self->_query;
    self->_query = 0;
  }
}

@end