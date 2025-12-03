@interface _HKSampleTypeQuery
+ (void)configureClientInterface:(id)interface;
- (_HKSampleTypeQuery)initWithPredicate:(id)predicate resultsHandler:(id)handler;
- (void)client_deliverSampleTypes:(id)types query:(id)query;
- (void)queue_deliverError:(id)error;
@end

@implementation _HKSampleTypeQuery

- (_HKSampleTypeQuery)initWithPredicate:(id)predicate resultsHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = _HKSampleTypeQuery;
  v7 = [(HKQuery *)&v11 _initWithObjectType:0 predicate:predicate];
  if (v7)
  {
    v8 = [handlerCopy copy];
    resultsHandler = v7->_resultsHandler;
    v7->_resultsHandler = v8;
  }

  return v7;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____HKSampleTypeQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSampleTypes_query_ argumentIndex:0 ofReply:0];
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
    block[2] = __41___HKSampleTypeQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)client_deliverSampleTypes:(id)types query:(id)query
{
  typesCopy = types;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___HKSampleTypeQuery_client_deliverSampleTypes_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = typesCopy;
  v9 = typesCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

@end