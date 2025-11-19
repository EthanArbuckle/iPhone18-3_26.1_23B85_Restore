@interface LPLinkSnapshotGenerator
- (LPLinkSnapshotGenerator)init;
- (void)connectionWasInvalidated;
- (void)dealloc;
- (void)snapshotForMetadata:(id)a3 configurations:(id)a4 completionHandler:(id)a5;
@end

@implementation LPLinkSnapshotGenerator

- (LPLinkSnapshotGenerator)init
{
  v15.receiver = self;
  v15.super_class = LPLinkSnapshotGenerator;
  v2 = [(LPLinkSnapshotGenerator *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingCompletionHandlers = v2->_pendingCompletionHandlers;
    v2->_pendingCompletionHandlers = v3;

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.LinkPresentation.LinkSnapshotGeneratorService"];
    connectionToService = v2->_connectionToService;
    v2->_connectionToService = v5;

    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F249B130];
    [(NSXPCConnection *)v2->_connectionToService setRemoteObjectInterface:v7];

    v2->_active = 1;
    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __31__LPLinkSnapshotGenerator_init__block_invoke;
    v12[3] = &unk_1E7A35D40;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)v2->_connectionToService setInvalidationHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__LPLinkSnapshotGenerator_init__block_invoke_6;
    v10[3] = &unk_1E7A35D40;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)v2->_connectionToService setInterruptionHandler:v10];
    [(NSXPCConnection *)v2->_connectionToService resume];
    v8 = v2;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__LPLinkSnapshotGenerator_init__block_invoke(uint64_t a1)
{
  v2 = LPLogChannelSnapshotGenerator();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __31__LPLinkSnapshotGenerator_init__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionWasInvalidated];
}

void __31__LPLinkSnapshotGenerator_init__block_invoke_6(uint64_t a1)
{
  v2 = LPLogChannelSnapshotGenerator();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __31__LPLinkSnapshotGenerator_init__block_invoke_6_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionWasInvalidated];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connectionToService invalidate];
  v3.receiver = self;
  v3.super_class = LPLinkSnapshotGenerator;
  [(LPLinkSnapshotGenerator *)&v3 dealloc];
}

- (void)connectionWasInvalidated
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_active)
  {
    self->_active = 0;
    v3 = self->_pendingCompletionHandlers;
    objc_sync_enter(v3);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSMutableDictionary *)self->_pendingCompletionHandlers allValues];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = makeLPError(1, 0);
          (*(v8 + 16))(v8, v9, 0);

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)self->_pendingCompletionHandlers removeAllObjects];
    objc_sync_exit(v3);
  }
}

- (void)snapshotForMetadata:(id)a3 configurations:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_active)
  {
    nextRequestID = self->_nextRequestID;
    self->_nextRequestID = nextRequestID + 1;
    if (+[LPSettings showDebugIndicators])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = *v27;
        do
        {
          v15 = 0;
          do
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v26 + 1) + 8 * v15++) setShowDebugIndicators:1];
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__LPLinkSnapshotGenerator_snapshotForMetadata_configurations_completionHandler___block_invoke;
    aBlock[3] = &unk_1E7A37530;
    aBlock[4] = self;
    v25 = nextRequestID;
    v24 = v10;
    v16 = _Block_copy(aBlock);
    v17 = self->_pendingCompletionHandlers;
    objc_sync_enter(v17);
    pendingCompletionHandlers = self->_pendingCompletionHandlers;
    v19 = _Block_copy(v16);
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:nextRequestID];
    [(NSMutableDictionary *)pendingCompletionHandlers setObject:v19 forKey:v20];

    objc_sync_exit(v17);
    v21 = [(NSXPCConnection *)self->_connectionToService remoteObjectProxy];
    [v21 snapshotForMetadata:v8 configurations:v9 completionHandler:v16];
  }

  else
  {
    v22 = makeLPError(1, 0);
    (*(v10 + 2))(v10, v22, 0);
  }
}

void __80__LPLinkSnapshotGenerator_snapshotForMetadata_configurations_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 32) + 16);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  [v7 removeObjectForKey:v8];

  objc_sync_exit(v6);
  (*(*(a1 + 40) + 16))();
}

@end