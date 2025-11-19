@interface ASFriendListQuery
- (ASFriendListQuery)initWithUpdateHandler:(id)a3;
- (void)client_deliverFriendList:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation ASFriendListQuery

- (ASFriendListQuery)initWithUpdateHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASFriendListQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [v4 copy];
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;
  }

  return v5;
}

- (void)client_deliverFriendList:(id)a3 queryUUID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

  v10 = [(HKQuery *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__ASFriendListQuery_client_deliverFriendList_queryUUID___block_invoke;
  v14[3] = &unk_278C46A68;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v18 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, v14);

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

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = ASFriendListQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
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

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x23EF0CB70](self->_updateHandler);
  if (v5)
  {
    v6 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ASFriendListQuery_queue_deliverError___block_invoke;
    block[3] = &unk_278C46A90;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

@end