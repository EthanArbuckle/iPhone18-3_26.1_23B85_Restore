@interface _HKSampleTypeQuery
+ (void)configureClientInterface:(id)a3;
- (_HKSampleTypeQuery)initWithPredicate:(id)a3 resultsHandler:(id)a4;
- (void)client_deliverSampleTypes:(id)a3 query:(id)a4;
- (void)queue_deliverError:(id)a3;
@end

@implementation _HKSampleTypeQuery

- (_HKSampleTypeQuery)initWithPredicate:(id)a3 resultsHandler:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = _HKSampleTypeQuery;
  v7 = [(HKQuery *)&v11 _initWithObjectType:0 predicate:a3];
  if (v7)
  {
    v8 = [v6 copy];
    resultsHandler = v7->_resultsHandler;
    v7->_resultsHandler = v8;
  }

  return v7;
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS____HKSampleTypeQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSampleTypes_query_ argumentIndex:0 ofReply:0];
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
    block[2] = __41___HKSampleTypeQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)client_deliverSampleTypes:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___HKSampleTypeQuery_client_deliverSampleTypes_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

@end