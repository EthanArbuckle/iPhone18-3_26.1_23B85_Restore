@interface HKVerifiableClinicalRecordQuery
+ (void)configureClientInterface:(id)a3;
- (HKVerifiableClinicalRecordQuery)initWithRecordTypes:(NSArray *)recordTypes predicate:(NSPredicate *)predicate resultsHandler:(void *)resultsHandler;
- (HKVerifiableClinicalRecordQuery)initWithRecordTypes:(NSArray *)recordTypes sourceTypes:(NSArray *)sourceTypes predicate:(NSPredicate *)predicate resultsHandler:(void *)resultsHandler;
- (void)client_deliverVerifiableClinicalRecords:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKVerifiableClinicalRecordQuery

- (HKVerifiableClinicalRecordQuery)initWithRecordTypes:(NSArray *)recordTypes predicate:(NSPredicate *)predicate resultsHandler:(void *)resultsHandler
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = recordTypes;
  v9 = resultsHandler;
  v19.receiver = self;
  v19.super_class = HKVerifiableClinicalRecordQuery;
  v10 = [(HKQuery *)&v19 _initWithObjectType:0 predicate:predicate];
  if (v10)
  {
    v11 = [(NSArray *)v8 copy];
    v12 = v10->_recordTypes;
    v10->_recordTypes = v11;

    v20[0] = @"SMARTHealthCard";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    sourceTypes = v10->_sourceTypes;
    v10->_sourceTypes = v13;

    v15 = [v9 copy];
    v16 = v10->_resultsHandler;
    v10->_resultsHandler = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (HKVerifiableClinicalRecordQuery)initWithRecordTypes:(NSArray *)recordTypes sourceTypes:(NSArray *)sourceTypes predicate:(NSPredicate *)predicate resultsHandler:(void *)resultsHandler
{
  v10 = recordTypes;
  v11 = sourceTypes;
  v12 = resultsHandler;
  v21.receiver = self;
  v21.super_class = HKVerifiableClinicalRecordQuery;
  v13 = [(HKQuery *)&v21 _initWithObjectType:0 predicate:predicate];
  if (v13)
  {
    v14 = [(NSArray *)v10 copy];
    v15 = v13->_recordTypes;
    v13->_recordTypes = v14;

    v16 = [(NSArray *)v11 copy];
    v17 = v13->_sourceTypes;
    v13->_sourceTypes = v16;

    v18 = [v12 copy];
    v19 = v13->_resultsHandler;
    v13->_resultsHandler = v18;
  }

  return v13;
}

- (void)client_deliverVerifiableClinicalRecords:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__HKVerifiableClinicalRecordQuery_client_deliverVerifiableClinicalRecords_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __85__HKVerifiableClinicalRecordQuery_client_deliverVerifiableClinicalRecords_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__HKVerifiableClinicalRecordQuery_client_deliverVerifiableClinicalRecords_queryUUID___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
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
    block[2] = __54__HKVerifiableClinicalRecordQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKVerifiableClinicalRecordQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverVerifiableClinicalRecords_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKVerifiableClinicalRecordQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ resultsHandler must be non-nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKVerifiableClinicalRecordQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKVerifiableClinicalRecordQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setRecordTypes:{self->_recordTypes, v5.receiver, v5.super_class}];
  [v4 setSourceTypes:self->_sourceTypes];
}

@end