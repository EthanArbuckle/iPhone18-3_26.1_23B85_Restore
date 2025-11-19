@interface HKSharedSummaryQuery
+ (void)configureClientInterface:(id)a3;
- (HKSharedSummaryQuery)initWithTransaction:(id)a3 package:(id)a4 includedIdentifiers:(id)a5 includedObjectTypes:(id)a6 resultsHandler:(id)a7;
- (void)client_deliverSummaries:(id)a3 query:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
@end

@implementation HKSharedSummaryQuery

- (HKSharedSummaryQuery)initWithTransaction:(id)a3 package:(id)a4 includedIdentifiers:(id)a5 includedObjectTypes:(id)a6 resultsHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HKSharedSummaryQuery;
  v17 = [(HKQuery *)&v29 _initWithObjectType:0 predicate:0];
  if (v17)
  {
    v18 = [v16 copy];
    resultsHandler = v17->_resultsHandler;
    v17->_resultsHandler = v18;

    v20 = [v12 copy];
    transaction = v17->_transaction;
    v17->_transaction = v20;

    v22 = [v13 copy];
    package = v17->_package;
    v17->_package = v22;

    v24 = [v14 copy];
    includedIdentifiers = v17->_includedIdentifiers;
    v17->_includedIdentifiers = v24;

    v26 = [v15 copy];
    includedObjectTypes = v17->_includedObjectTypes;
    v17->_includedObjectTypes = v26;
  }

  return v17;
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKSharedSummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSummaries_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSharedSummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSharedSummaryQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setTransaction:{self->_transaction, v5.receiver, v5.super_class}];
  [v4 setPackage:self->_package];
  [v4 setIncludedIdentifiers:self->_includedIdentifiers];
  [v4 setIncludedObjectTypes:self->_includedObjectTypes];
}

- (void)client_deliverSummaries:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HKSharedSummaryQuery_client_deliverSummaries_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

void __54__HKSharedSummaryQuery_client_deliverSummaries_query___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue_shouldDeactivateAfterInitialResults];
  v3 = _Block_copy(*(*(a1 + 32) + 184));
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__HKSharedSummaryQuery_client_deliverSummaries_query___block_invoke_2;
    v9[3] = &unk_1E7376618;
    v7 = v3;
    v8 = *(a1 + 32);
    v11 = v7;
    v9[4] = v8;
    v10 = *(a1 + 48);
    [v5 queue_dispatchToClientForUUID:v6 shouldDeactivate:v2 block:v9];
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
    block[2] = __43__HKSharedSummaryQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

@end