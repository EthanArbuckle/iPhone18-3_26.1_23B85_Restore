@interface HKDeviceQuery
+ (void)configureClientInterface:(id)a3;
- (HKDeviceQuery)initWithObjectType:(id)a3 predicate:(id)a4 resultsHandler:(id)a5;
- (void)clientRemote_deliverDevices:(id)a3 done:(BOOL)a4 reset:(BOOL)a5 query:(id)a6;
- (void)queue_deliverError:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
@end

@implementation HKDeviceQuery

- (HKDeviceQuery)initWithObjectType:(id)a3 predicate:(id)a4 resultsHandler:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = HKDeviceQuery;
  v9 = [(HKQuery *)&v13 _initWithObjectType:a3 predicate:a4];
  if (v9)
  {
    v10 = [v8 copy];
    resultsHandler = v9->_resultsHandler;
    v9->_resultsHandler = v10;

    [(HKQuery *)v9 setShouldSuppressDataCollection:1];
  }

  return v9;
}

- (void)clientRemote_deliverDevices:(id)a3 done:(BOOL)a4 reset:(BOOL)a5 query:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__HKDeviceQuery_clientRemote_deliverDevices_done_reset_query___block_invoke;
  v15[3] = &unk_1E7379FC0;
  v18 = a5;
  v15[4] = self;
  v16 = v10;
  v19 = a4;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, v15);
}

void __62__HKDeviceQuery_clientRemote_deliverDevices_done_reset_query___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (!v2 || *(a1 + 56) == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = v3;

    v2 = *(*(a1 + 32) + 152);
  }

  [v2 addObjectsFromArray:*(a1 + 40)];
  if (*(a1 + 57) == 1)
  {
    v6 = *(*(a1 + 32) + 152);
    v7 = *(a1 + 32);
    v8 = *(v7 + 152);
    *(v7 + 152) = 0;

    v9 = _Block_copy(*(*(a1 + 32) + 160));
    v10 = v9;
    if (v9)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __62__HKDeviceQuery_clientRemote_deliverDevices_done_reset_query___block_invoke_2;
      v15[3] = &unk_1E7376618;
      v13 = v9;
      v14 = *(a1 + 32);
      v17 = v13;
      v15[4] = v14;
      v16 = v6;
      [v11 queue_dispatchToClientForUUID:v12 shouldDeactivate:1 block:v15];
    }
  }
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
    block[2] = __36__HKDeviceQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
  MEMORY[0x1EEE66BB8]();
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKDeviceQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_clientRemote_deliverDevices_done_reset_query_ argumentIndex:0 ofReply:0];
}

@end