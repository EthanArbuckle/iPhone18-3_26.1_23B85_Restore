@interface ASFriendListQuery
- (ASFriendListQuery)initWithUpdateHandler:(id)handler;
- (void)client_deliverFriendList:(id)list queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation ASFriendListQuery

- (ASFriendListQuery)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = ASFriendListQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [handlerCopy copy];
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;
  }

  return v5;
}

- (void)client_deliverFriendList:(id)list queryUUID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  listCopy = list;
  dCopy = d;
  v8 = self->_mostRecentToken + 1;
  self->_mostRecentToken = v8;
  ASLoggingInitialize();
  v9 = ASLogFriendList;
  if (os_log_type_enabled(ASLogFriendList, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v20 = v8;
    _os_log_impl(&dword_23E4FA000, v9, OS_LOG_TYPE_DEFAULT, "Query received deliverFriendListData: %d", buf, 8u);
  }

  queue = [(HKQuery *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__ASFriendListQuery_client_deliverFriendList_queryUUID___block_invoke;
  v14[3] = &unk_278C46A68;
  v15 = listCopy;
  selfCopy = self;
  v17 = dCopy;
  v18 = v8;
  v11 = dCopy;
  v12 = listCopy;
  dispatch_async(queue, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __56__ASFriendListQuery_client_deliverFriendList_queryUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [[ASCodableFriendList alloc] initWithData:*(a1 + 32)];
  v3 = ASFriendsFromCodableFriendList(v2);
  ASLoggingInitialize();
  v4 = ASLogFriendList;
  if (os_log_type_enabled(ASLogFriendList, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 134217984;
    v16 = [v3 count];
    _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Received data for %lu friends", buf, 0xCu);
  }

  v6 = MEMORY[0x23EF0CB70](*(*(a1 + 40) + 152));
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__ASFriendListQuery_client_deliverFriendList_queryUUID___block_invoke_4;
    v11[3] = &unk_278C46A40;
    v14 = *(a1 + 56);
    v11[4] = v8;
    v13 = v6;
    v12 = v3;
    [v8 queue_dispatchToClientForUUID:v9 shouldDeactivate:0 block:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__ASFriendListQuery_client_deliverFriendList_queryUUID___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == *(*(a1 + 32) + 160))
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);
    v5 = *MEMORY[0x277D85DE8];

    v4();
  }

  else
  {
    ASLoggingInitialize();
    v6 = ASLogFriendList;
    if (os_log_type_enabled(ASLogFriendList, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&dword_23E4FA000, v6, OS_LOG_TYPE_DEFAULT, "Dropping this update for stale token: %d", v9, 8u);
    }

    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = ASFriendListQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = ASFriendListQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_updateHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ updateHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x23EF0CB70](self->_updateHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ASFriendListQuery_queue_deliverError___block_invoke;
    block[3] = &unk_278C46A90;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

@end