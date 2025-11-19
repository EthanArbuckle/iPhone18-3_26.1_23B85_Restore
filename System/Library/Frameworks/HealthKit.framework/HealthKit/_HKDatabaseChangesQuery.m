@interface _HKDatabaseChangesQuery
+ (void)configureClientInterface:(id)a3;
+ (void)configureServerInterface:(id)a3;
- (_HKDatabaseChangesQuery)initWithTypes:(id)a3 anchor:(id)a4 resultsHandler:(id)a5;
- (void)client_deliverQueryAnchor:(id)a3 sampleTypeChanges:(id)a4 queryUUID:(id)a5;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
@end

@implementation _HKDatabaseChangesQuery

- (_HKDatabaseChangesQuery)initWithTypes:(id)a3 anchor:(id)a4 resultsHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _HKDatabaseChangesQuery;
  v11 = [(HKQuery *)&v19 _initWithObjectType:0 predicate:0];
  if (v11)
  {
    v12 = [v8 copy];
    sampleTypes = v11->_sampleTypes;
    v11->_sampleTypes = v12;

    v14 = [v9 copy];
    anchor = v11->_anchor;
    v11->_anchor = v14;

    v16 = [v10 copy];
    resultsHandler = v11->_resultsHandler;
    v11->_resultsHandler = v16;

    v11->_anchorStrategyChangeCountLimit = 50000;
  }

  return v11;
}

+ (void)configureClientInterface:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS____HKDatabaseChangesQuery;
  v3 = a3;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, v3);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 hk_typesForDictionaryMapping:v5 to:{objc_opt_class(), v7.receiver, v7.super_class}];
  [v3 setClasses:v6 forSelector:sel_client_deliverQueryAnchor_sampleTypeChanges_queryUUID_ argumentIndex:1 ofReply:0];
}

+ (void)configureServerInterface:(id)a3
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS____HKDatabaseChangesQuery;
  objc_msgSendSuper2(&v3, sel_configureServerInterface_, a3);
}

- (void)queue_populateConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = _HKDatabaseChangesQuery;
  v4 = a3;
  [(HKQuery *)&v6 queue_populateConfiguration:v4];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:{self->_sampleTypes, v6.receiver, v6.super_class}];
  [v4 setSampleTypes:v5];

  [v4 setAnchor:self->_anchor];
  [v4 setShouldDeactivateAfterInitialResults:0];
  [v4 setShouldSuppressDataCollection:1];
  [v4 setIncludeChangeDetails:self->_includeChangeDetails];
  [v4 setChangeDetailsQueryStrategy:self->_changeDetailsQueryStrategy];
  [v4 setAnchorStrategyChangeCountLimit:self->_anchorStrategyChangeCountLimit];
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
    block[2] = __46___HKDatabaseChangesQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKDatabaseChangesQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)client_deliverQueryAnchor:(id)a3 sampleTypeChanges:(id)a4 queryUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81___HKDatabaseChangesQuery_client_deliverQueryAnchor_sampleTypeChanges_queryUUID___block_invoke;
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

@end