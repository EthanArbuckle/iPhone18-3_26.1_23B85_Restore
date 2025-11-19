@interface _HKDataCollectorPendingBatch
- (_HKDataCollectorPendingBatch)init;
- (_HKDataCollectorPendingBatch)initWithIdentifier:(id)a3 data:(id)a4 metadata:(id)a5 device:(id)a6 options:(unint64_t)a7 completion:(id)a8;
- (_HKDataCollectorPendingBatch)initWithIdentifier:(id)a3 data:(id)a4 metadata:(id)a5 device:(id)a6 options:(unint64_t)a7 completions:(id)a8;
- (id)batchByAddingData:(id)a3 completion:(id)a4;
- (id)description;
- (void)callCompletionsWithSuccess:(BOOL)a3 error:(id)a4;
@end

@implementation _HKDataCollectorPendingBatch

- (_HKDataCollectorPendingBatch)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HKDataCollectorPendingBatch)initWithIdentifier:(id)a3 data:(id)a4 metadata:(id)a5 device:(id)a6 options:(unint64_t)a7 completion:(id)a8
{
  v25[1] = *MEMORY[0x1E69E9840];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  if (a8)
  {
    v18 = _Block_copy(a8);
    v25[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v20 = [(_HKDataCollectorPendingBatch *)self initWithIdentifier:v17 data:v16 metadata:v15 device:v14 options:a7 completions:v19];

    v21 = v20;
  }

  else
  {
    v22 = [(_HKDataCollectorPendingBatch *)self initWithIdentifier:v17 data:v16 metadata:v15 device:v14 options:a7 completions:MEMORY[0x1E695E0F0]];

    v21 = v22;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (_HKDataCollectorPendingBatch)initWithIdentifier:(id)a3 data:(id)a4 metadata:(id)a5 device:(id)a6 options:(unint64_t)a7 completions:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = _HKDataCollectorPendingBatch;
  v19 = [(_HKDataCollectorPendingBatch *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    batchUUID = v19->_batchUUID;
    v19->_batchUUID = v20;

    v22 = [v15 copy];
    data = v19->_data;
    v19->_data = v22;

    v24 = [v16 copy];
    metadata = v19->_metadata;
    v19->_metadata = v24;

    v26 = [v17 copy];
    device = v19->_device;
    v19->_device = v26;

    v19->_options = a7;
    v28 = [v18 copy];
    completions = v19->_completions;
    v19->_completions = v28;
  }

  return v19;
}

- (id)batchByAddingData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_HKDataCollectorPendingBatch alloc];
  batchUUID = self->_batchUUID;
  v10 = [(NSArray *)self->_data arrayByAddingObjectsFromArray:v7];

  metadata = self->_metadata;
  device = self->_device;
  options = self->_options;
  completions = self->_completions;
  if (v6)
  {
    v15 = _Block_copy(v6);
    v16 = [(NSArray *)completions arrayByAddingObject:v15];
    v17 = [(_HKDataCollectorPendingBatch *)v8 initWithIdentifier:batchUUID data:v10 metadata:metadata device:device options:options completions:v16];
  }

  else
  {
    v17 = [(_HKDataCollectorPendingBatch *)v8 initWithIdentifier:batchUUID data:v10 metadata:metadata device:device options:options completions:completions];
  }

  return v17;
}

- (void)callCompletionsWithSuccess:(BOOL)a3 error:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(NSArray *)self->_completions count])
  {
    _HKInitializeLogging();
    v6 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_INFO))
    {
      batchUUID = self->_batchUUID;
      v8 = v6;
      v9 = HKDiagnosticStringFromUUID(batchUUID);
      v10 = [(NSArray *)self->_completions count];
      *buf = 138543874;
      v23 = self;
      v24 = 2114;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_INFO, "%{public}@: Batch %{public}@: Calling %ld completions from client.", buf, 0x20u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSArray *)self->_completions copy];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v17 + 1) + 8 * v15++) + 16))();
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = HKDiagnosticStringFromUUID(self->_batchUUID);
  v6 = [v3 stringWithFormat:@"<%@:%p %@ datums={%lu count} metadata={%lu values} device=%@>", v4, self, v5, -[NSArray count](self->_data, "count"), -[NSDictionary count](self->_metadata, "count"), self->_device];

  return v6;
}

@end