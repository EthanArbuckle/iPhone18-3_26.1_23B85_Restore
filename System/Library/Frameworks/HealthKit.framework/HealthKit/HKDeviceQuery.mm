@interface HKDeviceQuery
+ (void)configureClientInterface:(id)interface;
- (HKDeviceQuery)initWithObjectType:(id)type predicate:(id)predicate resultsHandler:(id)handler;
- (void)clientRemote_deliverDevices:(id)devices done:(BOOL)done reset:(BOOL)reset query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation HKDeviceQuery

- (HKDeviceQuery)initWithObjectType:(id)type predicate:(id)predicate resultsHandler:(id)handler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = HKDeviceQuery;
  v9 = [(HKQuery *)&v13 _initWithObjectType:type predicate:predicate];
  if (v9)
  {
    v10 = [handlerCopy copy];
    resultsHandler = v9->_resultsHandler;
    v9->_resultsHandler = v10;

    [(HKQuery *)v9 setShouldSuppressDataCollection:1];
  }

  return v9;
}

- (void)clientRemote_deliverDevices:(id)devices done:(BOOL)done reset:(BOOL)reset query:(id)query
{
  devicesCopy = devices;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__HKDeviceQuery_clientRemote_deliverDevices_done_reset_query___block_invoke;
  v15[3] = &unk_1E7379FC0;
  resetCopy = reset;
  v15[4] = self;
  v16 = devicesCopy;
  doneCopy = done;
  v17 = queryCopy;
  v13 = queryCopy;
  v14 = devicesCopy;
  dispatch_async(queue, v15);
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

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultsHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HKDeviceQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
  MEMORY[0x1EEE66BB8]();
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKDeviceQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_clientRemote_deliverDevices_done_reset_query_ argumentIndex:0 ofReply:0];
}

@end