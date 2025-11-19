@interface _HKDateRangeQuery
+ (void)configureClientInterface:(id)a3;
- (_HKDateRangeQuery)initWithDateIntervalHandler:(id)a3;
- (void)client_deliverDateIntervals:(id)a3 forQuery:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation _HKDateRangeQuery

- (_HKDateRangeQuery)initWithDateIntervalHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKDateRangeQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [v4 copy];
    handler = v5->_handler;
    v5->_handler = v6;

    [(HKQuery *)v5 setShouldSuppressDataCollection:1];
  }

  return v5;
}

- (void)client_deliverDateIntervals:(id)a3 forQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___HKDateRangeQuery_client_deliverDateIntervals_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKDateRangeQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
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

- (void)queue_deliverError:(id)a3
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, self, 0, a3);
  }
}

+ (void)configureClientInterface:(id)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS____HKDateRangeQuery;
  v3 = a3;
  objc_msgSendSuper2(&v8, sel_configureClientInterface_, v3);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v3 setClasses:v7 forSelector:sel_client_deliverDateIntervals_forQuery_ argumentIndex:0 ofReply:0];
}

@end