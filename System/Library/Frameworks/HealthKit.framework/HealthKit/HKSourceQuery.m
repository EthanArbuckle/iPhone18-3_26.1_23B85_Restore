@interface HKSourceQuery
+ (void)configureClientInterface:(id)a3;
+ (void)configureServerInterface:(id)a3;
- (HKSourceQuery)initWithSampleType:(HKSampleType *)sampleType samplePredicate:(NSPredicate *)objectPredicate completionHandler:(void *)completionHandler;
- (void)client_deliverSources:(id)a3 forQuery:(id)a4;
- (void)client_deliverUpdatedSources:(id)a3 added:(id)a4 forQuery:(id)a5;
- (void)queue_deliverError:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
- (void)setUpdateHandler:(id)a3;
@end

@implementation HKSourceQuery

- (HKSourceQuery)initWithSampleType:(HKSampleType *)sampleType samplePredicate:(NSPredicate *)objectPredicate completionHandler:(void *)completionHandler
{
  v8 = completionHandler;
  v13.receiver = self;
  v13.super_class = HKSourceQuery;
  v9 = [(HKQuery *)&v13 _initWithObjectType:sampleType predicate:objectPredicate];
  if (v9)
  {
    v10 = _Block_copy(v8);
    v11 = v9->_completionHandler;
    v9->_completionHandler = v10;
  }

  return v9;
}

- (void)setUpdateHandler:(id)a3
{
  v5 = a3;
  v6 = [(HKQuery *)self queue];
  dispatch_assert_queue_not_V2(v6);

  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  v7 = [(HKQuery *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__HKSourceQuery_setUpdateHandler___block_invoke;
  v9[3] = &unk_1E73765F0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_sync(v7, v9);
}

uint64_t __34__HKSourceQuery_setUpdateHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = _Block_copy(completionHandler);
    v7 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HKSourceQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v11 = v6;
    block[4] = self;
    v10 = v4;
    v8 = v6;
    dispatch_async(v7, block);
  }
}

+ (void)configureClientInterface:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HKSourceQuery;
  v3 = a3;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, v3);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0, v7.receiver, v7.super_class}];
  [v3 setClasses:v6 forSelector:sel_client_deliverSources_forQuery_ argumentIndex:0 ofReply:0];
  [v3 setClasses:v6 forSelector:sel_client_deliverUpdatedSources_added_forQuery_ argumentIndex:0 ofReply:0];
  [v3 setClasses:v6 forSelector:sel_client_deliverUpdatedSources_added_forQuery_ argumentIndex:1 ofReply:0];
}

+ (void)configureServerInterface:(id)a3
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___HKSourceQuery;
  objc_msgSendSuper2(&v3, sel_configureServerInterface_, a3);
}

- (void)queue_validate
{
  v8.receiver = self;
  v8.super_class = HKSourceQuery;
  [(HKQuery *)&v8 queue_validate];
  if (!self->_completionHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ completionHandler cannot be nil", objc_opt_class()}];
  }

  v3 = [(HKQuery *)self objectType];

  if (!v3)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
  }

  v4 = [(HKQuery *)self objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = objc_opt_class();
    [v6 raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be of class %@", v7, objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSourceQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)client_deliverSources:(id)a3 forQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKSourceQuery_client_deliverSources_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __48__HKSourceQuery_client_deliverSources_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 168));
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 152) = 1;
  if (v2)
  {
    v6 = v5 == 0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__HKSourceQuery_client_deliverSources_forQuery___block_invoke_2;
    v11[3] = &unk_1E7376618;
    v9 = v2;
    v10 = *(a1 + 32);
    v13 = v9;
    v11[4] = v10;
    v12 = *(a1 + 48);
    [v7 queue_dispatchToClientForUUID:v8 shouldDeactivate:v6 block:v11];
  }
}

- (void)client_deliverUpdatedSources:(id)a3 added:(id)a4 forQuery:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__HKSourceQuery_client_deliverUpdatedSources_added_forQuery___block_invoke;
  v15[3] = &unk_1E737B738;
  v15[4] = self;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __61__HKSourceQuery_client_deliverUpdatedSources_added_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 176));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__HKSourceQuery_client_deliverUpdatedSources_added_forQuery___block_invoke_2;
  v6[3] = &unk_1E7378F90;
  v9 = v2;
  v6[4] = v4;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v5 = v2;
  [v4 queue_dispatchToClientForUUID:v3 shouldDeactivate:0 block:v6];
}

@end