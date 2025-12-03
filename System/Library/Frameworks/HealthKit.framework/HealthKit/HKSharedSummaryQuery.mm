@interface HKSharedSummaryQuery
+ (void)configureClientInterface:(id)interface;
- (HKSharedSummaryQuery)initWithTransaction:(id)transaction package:(id)package includedIdentifiers:(id)identifiers includedObjectTypes:(id)types resultsHandler:(id)handler;
- (void)client_deliverSummaries:(id)summaries query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation HKSharedSummaryQuery

- (HKSharedSummaryQuery)initWithTransaction:(id)transaction package:(id)package includedIdentifiers:(id)identifiers includedObjectTypes:(id)types resultsHandler:(id)handler
{
  transactionCopy = transaction;
  packageCopy = package;
  identifiersCopy = identifiers;
  typesCopy = types;
  handlerCopy = handler;
  v29.receiver = self;
  v29.super_class = HKSharedSummaryQuery;
  v17 = [(HKQuery *)&v29 _initWithObjectType:0 predicate:0];
  if (v17)
  {
    v18 = [handlerCopy copy];
    resultsHandler = v17->_resultsHandler;
    v17->_resultsHandler = v18;

    v20 = [transactionCopy copy];
    transaction = v17->_transaction;
    v17->_transaction = v20;

    v22 = [packageCopy copy];
    package = v17->_package;
    v17->_package = v22;

    v24 = [identifiersCopy copy];
    includedIdentifiers = v17->_includedIdentifiers;
    v17->_includedIdentifiers = v24;

    v26 = [typesCopy copy];
    includedObjectTypes = v17->_includedObjectTypes;
    v17->_includedObjectTypes = v26;
  }

  return v17;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKSharedSummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSummaries_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKSharedSummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKSharedSummaryQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setTransaction:{self->_transaction, v5.receiver, v5.super_class}];
  [configurationCopy setPackage:self->_package];
  [configurationCopy setIncludedIdentifiers:self->_includedIdentifiers];
  [configurationCopy setIncludedObjectTypes:self->_includedObjectTypes];
}

- (void)client_deliverSummaries:(id)summaries query:(id)query
{
  summariesCopy = summaries;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HKSharedSummaryQuery_client_deliverSummaries_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = summariesCopy;
  v9 = summariesCopy;
  v10 = queryCopy;
  dispatch_sync(queue, block);
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

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultsHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__HKSharedSummaryQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

@end