@interface SHShazamKitUIServiceConnection
- (NSXPCConnection)connection;
- (SHShazamKitUIServiceConnection)initWithConnectionProvider:(id)a3;
- (void)attachDefaultConnectionHandlers;
- (void)dealloc;
- (void)presentMediaItem:(id)a3 completionHandler:(id)a4;
- (void)presentMediaItem:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5;
- (void)presentMediaLibraryWithCompletionHandler:(id)a3;
- (void)tearDownConnection;
@end

@implementation SHShazamKitUIServiceConnection

- (void)dealloc
{
  [(SHShazamKitUIServiceConnection *)self tearDownConnection];
  v3.receiver = self;
  v3.super_class = SHShazamKitUIServiceConnection;
  [(SHShazamKitUIServiceConnection *)&v3 dealloc];
}

- (SHShazamKitUIServiceConnection)initWithConnectionProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHShazamKitUIServiceConnection;
  v6 = [(SHShazamKitUIServiceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionProvider, a3);
    v7->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (NSXPCConnection)connection
{
  os_unfair_lock_lock(&self->_connectionLock);
  if (!self->_connection)
  {
    v3 = [(SHShazamKitUIServiceConnection *)self connectionProvider];
    v4 = [v3 shazamKitUIServiceConnection];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    [(SHShazamKitUIServiceConnection *)self attachDefaultConnectionHandlers];
    [(NSXPCConnection *)self->_connection resume];
  }

  os_unfair_lock_unlock(&self->_connectionLock);
  v6 = self->_connection;

  return v6;
}

- (void)attachDefaultConnectionHandlers
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__SHShazamKitUIServiceConnection_attachDefaultConnectionHandlers__block_invoke;
  v5[3] = &unk_2788F7F40;
  objc_copyWeak(&v6, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__SHShazamKitUIServiceConnection_attachDefaultConnectionHandlers__block_invoke_3;
  v3[3] = &unk_2788F7F40;
  objc_copyWeak(&v4, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __65__SHShazamKitUIServiceConnection_attachDefaultConnectionHandlers__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = shcore_log_object();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_230F52000, v2, OS_LOG_TYPE_ERROR, "Fired XPC service interruption handler %@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 tearDownConnection];

  v5 = *MEMORY[0x277D85DE8];
}

void __65__SHShazamKitUIServiceConnection_attachDefaultConnectionHandlers__block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = shcore_log_object();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_230F52000, v2, OS_LOG_TYPE_ERROR, "Fired XPC service invalidation handler %@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 tearDownConnection];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)tearDownConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setExportedObject:0];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
    v4 = self->_connection;
    v5 = self->_connection;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SHShazamKitUIServiceConnection_tearDownConnection__block_invoke;
    v8[3] = &unk_2788F8050;
    v9 = v4;
    v6 = v4;
    [(NSXPCConnection *)v5 scheduleSendBarrierBlock:v8];
    v7 = self->_connection;
    self->_connection = 0;
  }
}

- (void)presentMediaItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__SHShazamKitUIServiceConnection_presentMediaItem_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(SHShazamKitUIServiceConnection *)self connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 presentMediaItem:v8 completionHandler:v7];
}

void __69__SHShazamKitUIServiceConnection_presentMediaItem_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

- (void)presentMediaItem:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __90__SHShazamKitUIServiceConnection_presentMediaItem_presentationSettings_completionHandler___block_invoke;
  v19 = &unk_2788F7E18;
  v20 = v8;
  v21 = v9;
  v10 = v8;
  v11 = v9;
  v12 = a4;
  v13 = _Block_copy(&v16);
  v14 = [(SHShazamKitUIServiceConnection *)self connection:v16];
  v15 = [v14 remoteObjectProxyWithErrorHandler:v13];
  [v15 presentMediaItem:v10 presentationSettings:v12 completionHandler:v11];
}

void __90__SHShazamKitUIServiceConnection_presentMediaItem_presentationSettings_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:a2];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) webURL];
  (*(v3 + 16))(v3, 0, v4, v5);
}

- (void)presentMediaLibraryWithCompletionHandler:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__SHShazamKitUIServiceConnection_presentMediaLibraryWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v10 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = [(SHShazamKitUIServiceConnection *)self connection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 presentMediaLibraryWithCompletionHandler:v5];
}

void __75__SHShazamKitUIServiceConnection_presentMediaLibraryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

@end