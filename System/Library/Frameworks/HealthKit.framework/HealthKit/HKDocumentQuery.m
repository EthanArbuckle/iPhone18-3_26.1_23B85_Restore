@interface HKDocumentQuery
- (HKDocumentQuery)initWithDocumentType:(HKDocumentType *)documentType predicate:(NSPredicate *)predicate limit:(NSUInteger)limit sortDescriptors:(NSArray *)sortDescriptors includeDocumentData:(BOOL)includeDocumentData resultsHandler:(void *)resultsHandler;
- (void)client_deliverDocument:(id)a3 query:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKDocumentQuery

- (HKDocumentQuery)initWithDocumentType:(HKDocumentType *)documentType predicate:(NSPredicate *)predicate limit:(NSUInteger)limit sortDescriptors:(NSArray *)sortDescriptors includeDocumentData:(BOOL)includeDocumentData resultsHandler:(void *)resultsHandler
{
  v14 = sortDescriptors;
  v15 = resultsHandler;
  v23.receiver = self;
  v23.super_class = HKDocumentQuery;
  v16 = [(HKQuery *)&v23 _initWithObjectType:documentType predicate:predicate];
  v17 = v16;
  if (v16)
  {
    v16->_limit = limit;
    v18 = [(NSArray *)v14 copy];
    v19 = v17->_sortDescriptors;
    v17->_sortDescriptors = v18;

    v17->_includeDocumentData = includeDocumentData;
    v20 = _Block_copy(v15);
    v21 = v17->_resultsHandler;
    v17->_resultsHandler = v20;
  }

  return v17;
}

- (void)client_deliverDocument:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKDocumentQuery_client_deliverDocument_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __48__HKDocumentQuery_client_deliverDocument_query___block_invoke(void *a1)
{
  v2 = _Block_copy(*(a1[4] + 176));
  v3 = v2;
  if (v2)
  {
    v4 = a1[4];
    v5 = a1[5] == 0;
    v6 = a1[6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__HKDocumentQuery_client_deliverDocument_query___block_invoke_2;
    v10[3] = &unk_1E737D7A0;
    v13 = v5;
    v7 = v2;
    v8 = a1[4];
    v9 = a1[5];
    v12 = v7;
    v10[4] = v8;
    v11 = v9;
    [v4 queue_dispatchToClientForUUID:v6 shouldDeactivate:v5 block:v10];
  }
}

void __48__HKDocumentQuery_client_deliverDocument_query___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 48) + 16);
    v5 = *MEMORY[0x1E69E9840];

    v4();
  }

  else
  {
    v6 = *(a1 + 40);
    v13 = 0;
    v7 = [v6 prepareForDelivery:&v13];
    v8 = v13;
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    if (v7)
    {
      v14[0] = *(a1 + 40);
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      (*(v9 + 16))(v9, v10, v11, 0, 0);
    }

    else
    {
      (*(v9 + 16))(*(a1 + 48), *(a1 + 32), 0, 0, v8);
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKDocumentQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setSortDescriptors:{self->_sortDescriptors, v5.receiver, v5.super_class}];
  [v4 setLimit:self->_limit];
  [v4 setIncludeDocumentData:self->_includeDocumentData];
}

- (void)queue_validate
{
  v8.receiver = self;
  v8.super_class = HKDocumentQuery;
  [(HKQuery *)&v8 queue_validate];
  v3 = [(HKQuery *)self objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = [(HKQuery *)self objectType];
    [v5 raise:v6 format:{@"%@ is not an instance of %@", v7, objc_opt_class()}];
  }

  if (!self->_resultsHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ resultsHandler cannot be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKDocumentQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(self->_resultsHandler);
  if (v5)
  {
    v6 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__HKDocumentQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

@end