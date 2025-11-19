@interface _HKSampleQueryUtility
- (_HKSampleQueryUtility)init;
- (_HKSampleQueryUtility)initWithHealthStore:(id)a3 sampleType:(id)a4 predicate:(id)a5 completionHandler:(id)a6 updateHandler:(id)a7;
- (void)handleAddedObjects:(id)a3 deletedObjects:(id)a4 queryAnchor:(id)a5 error:(id)a6 resultsHandler:(id)a7;
- (void)setUpdateHandler:(id)a3;
- (void)setupQueryWithCompletionHandler:(id)a3;
- (void)stop;
@end

@implementation _HKSampleQueryUtility

- (_HKSampleQueryUtility)initWithHealthStore:(id)a3 sampleType:(id)a4 predicate:(id)a5 completionHandler:(id)a6 updateHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = _HKSampleQueryUtility;
  v18 = [(_HKSampleQueryUtility *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_healthStore, a3);
    objc_storeStrong(&v19->_sampleType, a4);
    objc_storeStrong(&v19->_predicate, a5);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    samples = v19->_samples;
    v19->_samples = v20;

    [(_HKSampleQueryUtility *)v19 setupQueryWithCompletionHandler:v16];
    [(_HKSampleQueryUtility *)v19 setUpdateHandler:v17];
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

- (void)setupQueryWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v11 = v4;
  v16 = v11;
  v12 = [(HKAnchoredObjectQuery *)v6 initWithType:sampleType predicate:predicate anchor:queryAnchor limit:0 resultsHandler:v14];
  query = self->_query;
  self->_query = v12;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)setUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_query)
  {
    v6 = _Block_copy(v4);
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

- (void)handleAddedObjects:(id)a3 deletedObjects:(id)a4 queryAnchor:(id)a5 error:(id)a6 resultsHandler:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v15;
  if (a6)
  {
    (*(v15 + 2))(v15, self, 0, a6);
  }

  else
  {
    obj = a5;
    v31 = v15;
    v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v13;
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
    [(NSMutableArray *)self->_samples addObjectsFromArray:v12];
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