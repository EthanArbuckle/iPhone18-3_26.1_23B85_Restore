@interface _HKDateRangeQuery
+ (void)configureClientInterface:(id)interface;
- (_HKDateRangeQuery)initWithDateIntervalHandler:(id)handler;
- (void)client_deliverDateIntervals:(id)intervals forQuery:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation _HKDateRangeQuery

- (_HKDateRangeQuery)initWithDateIntervalHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = _HKDateRangeQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [handlerCopy copy];
    handler = v5->_handler;
    v5->_handler = v6;

    [(HKQuery *)v5 setShouldSuppressDataCollection:1];
  }

  return v5;
}

- (void)client_deliverDateIntervals:(id)intervals forQuery:(id)query
{
  intervalsCopy = intervals;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___HKDateRangeQuery_client_deliverDateIntervals_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = intervalsCopy;
  v9 = intervalsCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = _HKDateRangeQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  handler = self->_handler;
  self->_handler = 0;
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = _HKDateRangeQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_handler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ handler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_deliverError:(id)error
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, self, 0, error);
  }
}

+ (void)configureClientInterface:(id)interface
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS____HKDateRangeQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v8, sel_configureClientInterface_, interfaceCopy);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v7 forSelector:sel_client_deliverDateIntervals_forQuery_ argumentIndex:0 ofReply:0];
}

@end