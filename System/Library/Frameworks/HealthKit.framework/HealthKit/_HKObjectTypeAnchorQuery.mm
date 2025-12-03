@interface _HKObjectTypeAnchorQuery
+ (void)configureClientInterface:(id)interface;
- (_HKObjectTypeAnchorQuery)initWithUpdateHandler:(id)handler;
- (void)client_deliverAnchor:(id)anchor query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation _HKObjectTypeAnchorQuery

- (_HKObjectTypeAnchorQuery)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = _HKObjectTypeAnchorQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [handlerCopy copy];
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;

    [(HKQuery *)v5 setShouldSuppressDataCollection:1];
  }

  return v5;
}

- (void)client_deliverAnchor:(id)anchor query:(id)query
{
  anchorCopy = anchor;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___HKObjectTypeAnchorQuery_client_deliverAnchor_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = anchorCopy;
  v9 = anchorCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = _HKObjectTypeAnchorQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  updateHandler = self->_updateHandler;
  self->_updateHandler = &__block_literal_global_57;
}

- (void)queue_deliverError:(id)error
{
  updateHandler = self->_updateHandler;
  errorCopy = error;
  v6 = _Block_copy(updateHandler);
  v6[2](v6, self, 0, errorCopy);
}

- (void)queue_populateConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = _HKObjectTypeAnchorQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v4 queue_populateConfiguration:configurationCopy];
  [configurationCopy setShouldDeactivateAfterInitialResults:{0, v4.receiver, v4.super_class}];
}

+ (void)configureClientInterface:(id)interface
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____HKObjectTypeAnchorQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v5, sel_configureClientInterface_, interfaceCopy);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:{objc_opt_class(), v5.receiver, v5.super_class}];
  [interfaceCopy setClasses:v4 forSelector:sel_client_deliverAnchor_query_ argumentIndex:0 ofReply:0];
}

@end