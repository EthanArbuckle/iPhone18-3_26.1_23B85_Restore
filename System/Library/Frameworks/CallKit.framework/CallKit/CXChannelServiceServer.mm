@interface CXChannelServiceServer
- (CXChannelServiceServer)init;
- (CXChannelServiceServerDelegate)delegate;
- (NSArray)clients;
- (id)clientForIdentifier:(id)a3;
- (void)activate;
- (void)addAction:(id)a3 toUncommittedTransactionForServiceClient:(id)a4;
- (void)addClient:(id)a3;
- (void)commitUncommittedTransactions;
- (void)dealloc;
- (void)failOutstandingActionsForChannelWithUUID:(id)a3;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)removeClient:(id)a3;
- (void)serviceClient:(id)a3 actionCompleted:(id)a4;
- (void)serviceClient:(id)a3 registeredWithConfiguration:(id)a4;
- (void)serviceClient:(id)a3 reportedAudioFinishedForChannelWithUUID:(id)a4;
- (void)serviceClient:(id)a3 reportedChannelWithUUID:(id)a4 connectedAtDate:(id)a5;
- (void)serviceClient:(id)a3 reportedChannelWithUUID:(id)a4 disconnectedAtDate:(id)a5 disconnectedReason:(int64_t)a6;
- (void)serviceClient:(id)a3 reportedChannelWithUUID:(id)a4 startedConnectingAtDate:(id)a5;
- (void)serviceClient:(id)a3 reportedChannelWithUUID:(id)a4 updated:(id)a5;
- (void)serviceClient:(id)a3 reportedIncomingTransmissionEndedForChannelWithUUID:(id)a4 reason:(int64_t)a5 completionHandler:(id)a6;
- (void)serviceClient:(id)a3 requestedTransaction:(id)a4 completionHandler:(id)a5;
@end

@implementation CXChannelServiceServer

- (CXChannelServiceServer)init
{
  v25.receiver = self;
  v25.super_class = CXChannelServiceServer;
  v2 = [(CXChannelServiceServer *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identifierToClient = v3->_identifierToClient;
    v3->_identifierToClient = v4;

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.callkit.queue.%@.%p", objc_opt_class(), v3];
    v7 = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    queue = v3->_queue;
    v3->_queue = v9;

    v11 = [[CXTransactionManager alloc] initWithQueue:v3->_queue];
    transactionManager = v3->_transactionManager;
    v3->_transactionManager = v11;

    v13 = objc_alloc_init(CXTransactionGroup);
    uncommittedTransactionGroup = v3->_uncommittedTransactionGroup;
    v3->_uncommittedTransactionGroup = v13;

    v15 = objc_alloc_init(CXChannelServiceDefinition);
    objc_storeStrong(&v3->_definition, v15);
    v16 = MEMORY[0x1E698F4B8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __30__CXChannelServiceServer_init__block_invoke;
    v22[3] = &unk_1E7C06C08;
    v23 = v15;
    v17 = v3;
    v24 = v17;
    v18 = v15;
    v19 = [v16 listenerWithConfigurator:v22];
    listener = v17->_listener;
    v17->_listener = v19;
  }

  return v3;
}

void __30__CXChannelServiceServer_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 domain];
  v5 = [v4 name];
  [v7 setDomain:v5];

  v6 = [*(a1 + 32) name];
  [v7 setService:v6];

  [v7 setDelegate:*(a1 + 40)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = CXChannelServiceServer;
  [(CXChannelServiceServer *)&v3 dealloc];
}

- (void)activate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(CXChannelServiceServer *)self listener];
  [v3 activate];

  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CXChannelServiceServer *)self listener];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Activated listener %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v2 = [(CXChannelServiceServer *)self listener];
  [v2 invalidate];
}

- (void)addClient:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  [v7 setDelegate:self];
  v4 = [(CXChannelServiceServer *)self identifierToClient];
  v5 = [v7 identifier];
  [v4 setObject:v7 forKeyedSubscript:v5];

  v6 = [(CXChannelServiceServer *)self delegate];
  [v6 serviceServer:self didAddClient:v7];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)clientForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(CXChannelServiceServer *)self identifierToClient];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v6;
}

- (NSArray)clients
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = [(CXChannelServiceServer *)self identifierToClient];
  v4 = [v3 allValues];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v4;
}

- (void)removeClient:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v4 = [v10 identifier];
  v5 = [(CXChannelServiceServer *)self identifierToClient];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 isEqual:v10];

  if (v7)
  {
    v8 = [(CXChannelServiceServer *)self identifierToClient];
    [v8 setObject:0 forKeyedSubscript:v4];

    v9 = [(CXChannelServiceServer *)self delegate];
    [v9 serviceServer:self didRemoveClient:v10];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [[CXChannelServiceClient alloc] initWithConnection:v6];
  v8 = [(CXChannelServiceServer *)self definition];
  v9 = MEMORY[0x1E698F470];
  v10 = [v8 name];
  v11 = [v9 interfaceWithIdentifier:v10];

  v12 = MEMORY[0x1E698E710];
  v13 = [v8 clientXPCInterface];
  v14 = [v12 protocolForProtocol:v13];
  [v11 setClient:v14];

  v15 = MEMORY[0x1E698E710];
  v16 = [v8 serverXPCInterface];
  v17 = [v15 protocolForProtocol:v16];
  [v11 setServer:v17];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__CXChannelServiceServer_listener_didReceiveConnection_withContext___block_invoke;
  v22[3] = &unk_1E7C06C58;
  v23 = v11;
  v18 = v7;
  v24 = v18;
  v25 = self;
  v19 = v11;
  [v6 configureConnection:v22];
  v20 = CXDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_1B47F3000, v20, OS_LOG_TYPE_DEFAULT, "Activating connection %@", buf, 0xCu);
  }

  [v6 activate];
  if (v18)
  {
    [(CXChannelServiceServer *)self addClient:v18];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __68__CXChannelServiceServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInterface:v3];
  [v4 setInterfaceTarget:*(a1 + 40)];
  v5 = [MEMORY[0x1E698F500] utility];
  [v4 setServiceQuality:v5];

  v6 = [*(a1 + 48) queue];
  [v4 setTargetQueue:v6];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CXChannelServiceServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v13[3] = &unk_1E7C06C30;
  v9 = *(a1 + 40);
  v7 = v9.i64[0];
  v14 = vextq_s8(v9, v9, 8uLL);
  [v4 setInterruptionHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CXChannelServiceServer_listener_didReceiveConnection_withContext___block_invoke_14;
  v11[3] = &unk_1E7C06C30;
  v10 = *(a1 + 40);
  v8 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  [v4 setInvalidationHandler:v11];
}

void __68__CXChannelServiceServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Interrupted connection %@", &v6, 0xCu);
  }

  [*(a1 + 32) removeClient:*(a1 + 40)];
  v5 = *MEMORY[0x1E69E9840];
}

void __68__CXChannelServiceServer_listener_didReceiveConnection_withContext___block_invoke_14(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Invalidated connection %@", &v6, 0xCu);
  }

  [*(a1 + 32) removeClient:*(a1 + 40)];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)serviceClient:(id)a3 actionCompleted:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXChannelServiceServer *)self delegate];
  [v8 serviceServer:self client:v7 actionCompleted:v6];
}

- (void)serviceClient:(id)a3 registeredWithConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXChannelServiceServer *)self delegate];
  [v8 serviceServer:self client:v7 registeredWithConfiguration:v6];
}

- (void)serviceClient:(id)a3 reportedAudioFinishedForChannelWithUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXChannelServiceServer *)self delegate];
  [v8 serviceServer:self client:v7 reportedAudioFinishedForChannelWithUUID:v6];
}

- (void)serviceClient:(id)a3 reportedChannelWithUUID:(id)a4 connectedAtDate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXChannelServiceServer *)self delegate];
  [v11 serviceServer:self client:v10 reportedChannelWithUUID:v9 connectedAtDate:v8];
}

- (void)serviceClient:(id)a3 reportedChannelWithUUID:(id)a4 disconnectedAtDate:(id)a5 disconnectedReason:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(CXChannelServiceServer *)self delegate];
  [v13 serviceServer:self client:v12 reportedChannelWithUUID:v11 disconnectedAtDate:v10 disconnectedReason:a6];
}

- (void)serviceClient:(id)a3 reportedChannelWithUUID:(id)a4 startedConnectingAtDate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXChannelServiceServer *)self delegate];
  [v11 serviceServer:self client:v10 reportedChannelWithUUID:v9 startedConnectingAtDate:v8];
}

- (void)serviceClient:(id)a3 reportedChannelWithUUID:(id)a4 updated:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXChannelServiceServer *)self delegate];
  [v11 serviceServer:self client:v10 reportedChannelWithUUID:v9 updated:v8];
}

- (void)serviceClient:(id)a3 reportedIncomingTransmissionEndedForChannelWithUUID:(id)a4 reason:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(CXChannelServiceServer *)self delegate];
  [v13 serviceServer:self client:v12 reportedIncomingTransmissionEndedForChannelWithUUID:v11 reason:a5 completionHandler:v10];
}

- (void)serviceClient:(id)a3 requestedTransaction:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXChannelServiceServer *)self delegate];
  [v11 serviceServer:self client:v10 requestedTransaction:v9 completionHandler:v8];
}

- (void)addAction:(id)a3 toUncommittedTransactionForServiceClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXChannelServiceServer *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CXChannelServiceServer_addAction_toUncommittedTransactionForServiceClient___block_invoke;
  block[3] = &unk_1E7C06C80;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __77__CXChannelServiceServer_addAction_toUncommittedTransactionForServiceClient___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Asked to add action %@ to uncommitted transaction for service client %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) uncommittedTransactionGroup];
  [v5 addAction:*(a1 + 32) forServiceClient:*(a1 + 40)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)failOutstandingActionsForChannelWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelServiceServer *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CXChannelServiceServer_failOutstandingActionsForChannelWithUUID___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__CXChannelServiceServer_failOutstandingActionsForChannelWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionManager];
  [v2 failOutstandingActionsForChannelWithUUID:*(a1 + 40)];
}

- (void)commitUncommittedTransactions
{
  v3 = [(CXChannelServiceServer *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CXChannelServiceServer_commitUncommittedTransactions__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __55__CXChannelServiceServer_commitUncommittedTransactions__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uncommittedTransactionGroup];
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Asked to commit uncommitted transactions: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) transactionManager];
  v5 = [*(a1 + 32) uncommittedTransactionGroup];
  [v4 addOutstandingTransactionGroup:v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(a1 + 32) uncommittedTransactionGroup];
  v7 = [v6 serviceClients];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [*(a1 + 32) uncommittedTransactionGroup];
        v14 = [v13 transactionForServiceClient:v12];

        [v12 commitTransaction:v14];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = objc_alloc_init(CXTransactionGroup);
  [*(a1 + 32) setUncommittedTransactionGroup:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (CXChannelServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end