@interface _HKObjectTypeAnchorQuery
+ (void)configureClientInterface:(id)a3;
- (_HKObjectTypeAnchorQuery)initWithUpdateHandler:(id)a3;
- (void)client_deliverAnchor:(id)a3 query:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
@end

@implementation _HKObjectTypeAnchorQuery

- (_HKObjectTypeAnchorQuery)initWithUpdateHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKObjectTypeAnchorQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [v4 copy];
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;

    [(HKQuery *)v5 setShouldSuppressDataCollection:1];
  }

  return v5;
}

- (void)client_deliverAnchor:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___HKObjectTypeAnchorQuery_client_deliverAnchor_query___block_invoke;
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
  v5.super_class = _HKObjectTypeAnchorQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  updateHandler = self->_updateHandler;
  self->_updateHandler = &__block_literal_global_57;
}

- (void)queue_deliverError:(id)a3
{
  updateHandler = self->_updateHandler;
  v5 = a3;
  v6 = _Block_copy(updateHandler);
  v6[2](v6, self, 0, v5);
}

- (void)queue_populateConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = _HKObjectTypeAnchorQuery;
  v3 = a3;
  [(HKQuery *)&v4 queue_populateConfiguration:v3];
  [v3 setShouldDeactivateAfterInitialResults:{0, v4.receiver, v4.super_class}];
}

+ (void)configureClientInterface:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____HKObjectTypeAnchorQuery;
  v3 = a3;
  objc_msgSendSuper2(&v5, sel_configureClientInterface_, v3);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:{objc_opt_class(), v5.receiver, v5.super_class}];
  [v3 setClasses:v4 forSelector:sel_client_deliverAnchor_query_ argumentIndex:0 ofReply:0];
}

@end