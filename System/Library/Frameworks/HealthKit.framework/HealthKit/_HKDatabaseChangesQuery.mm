@interface _HKDatabaseChangesQuery
+ (void)configureClientInterface:(id)interface;
+ (void)configureServerInterface:(id)interface;
- (_HKDatabaseChangesQuery)initWithTypes:(id)types anchor:(id)anchor resultsHandler:(id)handler;
- (void)client_deliverQueryAnchor:(id)anchor sampleTypeChanges:(id)changes queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation _HKDatabaseChangesQuery

- (_HKDatabaseChangesQuery)initWithTypes:(id)types anchor:(id)anchor resultsHandler:(id)handler
{
  typesCopy = types;
  anchorCopy = anchor;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = _HKDatabaseChangesQuery;
  v11 = [(HKQuery *)&v19 _initWithObjectType:0 predicate:0];
  if (v11)
  {
    v12 = [typesCopy copy];
    sampleTypes = v11->_sampleTypes;
    v11->_sampleTypes = v12;

    v14 = [anchorCopy copy];
    anchor = v11->_anchor;
    v11->_anchor = v14;

    v16 = [handlerCopy copy];
    resultsHandler = v11->_resultsHandler;
    v11->_resultsHandler = v16;

    v11->_anchorStrategyChangeCountLimit = 50000;
  }

  return v11;
}

+ (void)configureClientInterface:(id)interface
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS____HKDatabaseChangesQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, interfaceCopy);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 hk_typesForDictionaryMapping:v5 to:{objc_opt_class(), v7.receiver, v7.super_class}];
  [interfaceCopy setClasses:v6 forSelector:sel_client_deliverQueryAnchor_sampleTypeChanges_queryUUID_ argumentIndex:1 ofReply:0];
}

+ (void)configureServerInterface:(id)interface
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____HKDatabaseChangesQuery;
  objc_msgSendSuper2(&v3, sel_configureServerInterface_, interface);
}

- (void)queue_populateConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = _HKDatabaseChangesQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v6 queue_populateConfiguration:configurationCopy];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:{self->_sampleTypes, v6.receiver, v6.super_class}];
  [configurationCopy setSampleTypes:v5];

  [configurationCopy setAnchor:self->_anchor];
  [configurationCopy setShouldDeactivateAfterInitialResults:0];
  [configurationCopy setShouldSuppressDataCollection:1];
  [configurationCopy setIncludeChangeDetails:self->_includeChangeDetails];
  [configurationCopy setChangeDetailsQueryStrategy:self->_changeDetailsQueryStrategy];
  [configurationCopy setAnchorStrategyChangeCountLimit:self->_anchorStrategyChangeCountLimit];
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
    block[2] = __46___HKDatabaseChangesQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = _HKDatabaseChangesQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)client_deliverQueryAnchor:(id)anchor sampleTypeChanges:(id)changes queryUUID:(id)d
{
  anchorCopy = anchor;
  changesCopy = changes;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81___HKDatabaseChangesQuery_client_deliverQueryAnchor_sampleTypeChanges_queryUUID___block_invoke;
  v15[3] = &unk_1E737B738;
  v15[4] = self;
  v16 = dCopy;
  v17 = anchorCopy;
  v18 = changesCopy;
  v12 = changesCopy;
  v13 = anchorCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

@end