@interface SHShazamKitServiceConnection
- (NSXPCConnection)connection;
- (SHShazamKitServiceConnection)initWithConnectionProvider:(id)a3;
- (id)delegate;
- (id)matcherDelegateErrorHandlerForSignature:(id)a3;
- (void)_libraryInfoWithCompletionHandler:(id)a3;
- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4;
- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4;
- (void)attachDefaultConnectionHandlers;
- (void)dealloc;
- (void)hapticsForMediaItems:(id)a3 completionHandler:(id)a4;
- (void)isHapticTrackAvailableForMediaItem:(id)a3 completionHandler:(id)a4;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)mediaItemsForShazamIDs:(id)a3 completionHandler:(id)a4;
- (void)prepareMatcherForRequestID:(id)a3 completionHandler:(id)a4;
- (void)setDelegate:(id)a3;
- (void)startRecognitionForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
- (void)synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:(id)a3 completionHandler:(id)a4;
- (void)tearDownConnection;
@end

@implementation SHShazamKitServiceConnection

- (void)dealloc
{
  [(SHShazamKitServiceConnection *)self tearDownConnection];
  v3.receiver = self;
  v3.super_class = SHShazamKitServiceConnection;
  [(SHShazamKitServiceConnection *)&v3 dealloc];
}

- (SHShazamKitServiceConnection)initWithConnectionProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SHShazamKitServiceConnection;
  v6 = [(SHShazamKitServiceConnection *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SHShazamKitServiceConnectionClient);
    shazamKitClient = v6->_shazamKitClient;
    v6->_shazamKitClient = v7;

    objc_storeStrong(&v6->_connectionProvider, a3);
    v6->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (id)delegate
{
  v2 = [(SHShazamKitServiceConnection *)self shazamKitClient];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SHShazamKitServiceConnection *)self shazamKitClient];
  [v5 setDelegate:v4];
}

- (NSXPCConnection)connection
{
  os_unfair_lock_lock(&self->_connectionLock);
  if (!self->_connection)
  {
    v3 = [(SHShazamKitServiceConnection *)self connectionProvider];
    v4 = [v3 shazamKitServiceConnection];
    connection = self->_connection;
    self->_connection = v4;

    v6 = [(SHShazamKitServiceConnection *)self shazamKitClient];
    [(NSXPCConnection *)self->_connection setExportedObject:v6];

    [(SHShazamKitServiceConnection *)self attachDefaultConnectionHandlers];
    [(NSXPCConnection *)self->_connection resume];
  }

  os_unfair_lock_unlock(&self->_connectionLock);
  v7 = self->_connection;

  return v7;
}

- (void)attachDefaultConnectionHandlers
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SHShazamKitServiceConnection_attachDefaultConnectionHandlers__block_invoke;
  v5[3] = &unk_2788F7F40;
  objc_copyWeak(&v6, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SHShazamKitServiceConnection_attachDefaultConnectionHandlers__block_invoke_3;
  v3[3] = &unk_2788F7F40;
  objc_copyWeak(&v4, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__SHShazamKitServiceConnection_attachDefaultConnectionHandlers__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sh_log_object();
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

void __63__SHShazamKitServiceConnection_attachDefaultConnectionHandlers__block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sh_log_object();
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
    v8[2] = __50__SHShazamKitServiceConnection_tearDownConnection__block_invoke;
    v8[3] = &unk_2788F8050;
    v9 = v4;
    v6 = v4;
    [(NSXPCConnection *)v5 scheduleSendBarrierBlock:v8];
    v7 = self->_connection;
    self->_connection = 0;
  }
}

- (id)matcherDelegateErrorHandlerForSignature:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__SHShazamKitServiceConnection_matcherDelegateErrorHandlerForSignature___block_invoke;
  aBlock[3] = &unk_2788F81B8;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __72__SHShazamKitServiceConnection_matcherDelegateErrorHandlerForSignature___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);
  v5 = [v4 delegate];
  v6 = [v5 conformsToProtocol:&unk_2845D2D90];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 delegate];

    v9 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:v3];
    v10 = objc_loadWeakRetained(&to);
    v11 = [SHMatcherResponse errorResponseForSignature:*(a1 + 32) error:v9];
    [v8 matcher:v10 didProduceResponse:v11];
  }

  objc_destroyWeak(&to);
}

- (void)prepareMatcherForRequestID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHShazamKitServiceConnection *)self connection];
  v9 = objc_opt_new();
  v10 = [(SHShazamKitServiceConnection *)self matcherDelegateErrorHandlerForSignature:v9];
  v11 = [v8 remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SHShazamKitServiceConnection_prepareMatcherForRequestID_completionHandler___block_invoke;
  v13[3] = &unk_2788F8078;
  v14 = v6;
  v12 = v6;
  [v11 prepareMatcherForRequestID:v7 completionHandler:v13];
}

uint64_t __77__SHShazamKitServiceConnection_prepareMatcherForRequestID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = sh_log_object();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_230F52000, v2, OS_LOG_TYPE_DEBUG, "Prepare recognition request completion handler called", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)startRecognitionForRequest:(id)a3
{
  v9 = a3;
  v4 = [(SHShazamKitServiceConnection *)self connection];
  v5 = [v9 signature];
  v6 = v5;
  if (!v5)
  {
    v6 = objc_opt_new();
  }

  v7 = [(SHShazamKitServiceConnection *)self matcherDelegateErrorHandlerForSignature:v6];
  v8 = [v4 remoteObjectProxyWithErrorHandler:v7];
  [v8 startRecognitionForRequest:v9 completionHandler:&__block_literal_global_8];

  if (!v5)
  {
  }
}

void __59__SHShazamKitServiceConnection_startRecognitionForRequest___block_invoke()
{
  v0 = sh_log_object();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_230F52000, v0, OS_LOG_TYPE_DEBUG, "Recognition request completion handler called", v1, 2u);
  }
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(SHShazamKitServiceConnection *)self connection];
  v8 = [v6 signature];
  v9 = [(SHShazamKitServiceConnection *)self matcherDelegateErrorHandlerForSignature:v8];
  v10 = [v11 remoteObjectProxyWithErrorHandler:v9];
  [v10 matcher:v7 didProduceResponse:v6];
}

- (void)stopRecognition
{
  v3 = [(SHShazamKitServiceConnection *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 stopRecognition];
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v6 = [(SHShazamKitServiceConnection *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 stopRecognitionForRequestID:v4];
}

- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__SHShazamKitServiceConnection__synchronizeSnapshot_startCondition___block_invoke;
  aBlock[3] = &unk_2788F81B8;
  objc_copyWeak(&v14, &location);
  v8 = v6;
  v13 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(SHShazamKitServiceConnection *)self connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 synchronizeSnapshot:v8 startCondition:v7 completionHandler:&__block_literal_global_69];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __68__SHShazamKitServiceConnection__synchronizeSnapshot_startCondition___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];
  v6 = [v5 conformsToProtocol:&unk_2845D3588];

  if (v6)
  {
    v7 = [WeakRetained delegate];
    v8 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA7E8];
    v14[0] = v3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.ShazamKit.ShazamLibrary" code:301 userInfo:v9];

    v11 = [*(a1 + 32) allItemIdentifiers];
    [v7 _library:WeakRetained didProduceError:v10 failedItemIdentifiers:v11];

    [v7 _libraryDidCompleteSync:WeakRetained];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __68__SHShazamKitServiceConnection__synchronizeSnapshot_startCondition___block_invoke_2()
{
  v0 = sh_log_object();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_230F52000, v0, OS_LOG_TYPE_DEFAULT, "Synchronize difference completion handler called", v1, 2u);
  }
}

- (void)_libraryInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__SHShazamKitServiceConnection__libraryInfoWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v10 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = [(SHShazamKitServiceConnection *)self connection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 _libraryInfoWithCompletionHandler:v5];
}

void __66__SHShazamKitServiceConnection__libraryInfoWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamKit.ShazamLibrary" code:301 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__SHShazamKitServiceConnection__queryLibraryWithParameters_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(SHShazamKitServiceConnection *)self connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 _queryLibraryWithParameters:v8 completionHandler:v7];
}

void __78__SHShazamKitServiceConnection__queryLibraryWithParameters_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamKit.ShazamLibrary" code:301 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)mediaItemsForShazamIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__SHShazamKitServiceConnection_mediaItemsForShazamIDs_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(SHShazamKitServiceConnection *)self connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 mediaItemsForShazamIDs:v8 completionHandler:v7];
}

void __73__SHShazamKitServiceConnection_mediaItemsForShazamIDs_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

- (void)synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__SHShazamKitServiceConnection_synchronouslyFetchRawSongResponseDataForMediaItemIdentifier_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(SHShazamKitServiceConnection *)self connection];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v11 synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:v8 completionHandler:v7];
}

void __110__SHShazamKitServiceConnection_synchronouslyFetchRawSongResponseDataForMediaItemIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_230F52000, v3, OS_LOG_TYPE_ERROR, "Error fetching raw response data: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
}

- (void)hapticsForMediaItems:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__SHShazamKitServiceConnection_hapticsForMediaItems_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(SHShazamKitServiceConnection *)self connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 hapticsForMediaItems:v8 completionHandler:v7];
}

void __71__SHShazamKitServiceConnection_hapticsForMediaItems_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

- (void)isHapticTrackAvailableForMediaItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__SHShazamKitServiceConnection_isHapticTrackAvailableForMediaItem_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(SHShazamKitServiceConnection *)self connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 isHapticTrackAvailableForMediaItem:v8 completionHandler:v7];
}

void __85__SHShazamKitServiceConnection_isHapticTrackAvailableForMediaItem_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

@end