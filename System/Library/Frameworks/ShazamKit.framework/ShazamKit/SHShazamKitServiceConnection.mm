@interface SHShazamKitServiceConnection
- (NSXPCConnection)connection;
- (SHShazamKitServiceConnection)initWithConnectionProvider:(id)provider;
- (id)delegate;
- (id)matcherDelegateErrorHandlerForSignature:(id)signature;
- (void)_libraryInfoWithCompletionHandler:(id)handler;
- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition;
- (void)attachDefaultConnectionHandlers;
- (void)dealloc;
- (void)hapticsForMediaItems:(id)items completionHandler:(id)handler;
- (void)isHapticTrackAvailableForMediaItem:(id)item completionHandler:(id)handler;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)mediaItemsForShazamIDs:(id)ds completionHandler:(id)handler;
- (void)prepareMatcherForRequestID:(id)d completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
- (void)synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:(id)identifier completionHandler:(id)handler;
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

- (SHShazamKitServiceConnection)initWithConnectionProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = SHShazamKitServiceConnection;
  v6 = [(SHShazamKitServiceConnection *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SHShazamKitServiceConnectionClient);
    shazamKitClient = v6->_shazamKitClient;
    v6->_shazamKitClient = v7;

    objc_storeStrong(&v6->_connectionProvider, provider);
    v6->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (id)delegate
{
  shazamKitClient = [(SHShazamKitServiceConnection *)self shazamKitClient];
  delegate = [shazamKitClient delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  shazamKitClient = [(SHShazamKitServiceConnection *)self shazamKitClient];
  [shazamKitClient setDelegate:delegateCopy];
}

- (NSXPCConnection)connection
{
  os_unfair_lock_lock(&self->_connectionLock);
  if (!self->_connection)
  {
    connectionProvider = [(SHShazamKitServiceConnection *)self connectionProvider];
    shazamKitServiceConnection = [connectionProvider shazamKitServiceConnection];
    connection = self->_connection;
    self->_connection = shazamKitServiceConnection;

    shazamKitClient = [(SHShazamKitServiceConnection *)self shazamKitClient];
    [(NSXPCConnection *)self->_connection setExportedObject:shazamKitClient];

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

- (id)matcherDelegateErrorHandlerForSignature:(id)signature
{
  signatureCopy = signature;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__SHShazamKitServiceConnection_matcherDelegateErrorHandlerForSignature___block_invoke;
  aBlock[3] = &unk_2788F81B8;
  objc_copyWeak(&v10, &location);
  v9 = signatureCopy;
  v5 = signatureCopy;
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

- (void)prepareMatcherForRequestID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(SHShazamKitServiceConnection *)self connection];
  v9 = objc_opt_new();
  v10 = [(SHShazamKitServiceConnection *)self matcherDelegateErrorHandlerForSignature:v9];
  v11 = [connection remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SHShazamKitServiceConnection_prepareMatcherForRequestID_completionHandler___block_invoke;
  v13[3] = &unk_2788F8078;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v11 prepareMatcherForRequestID:dCopy completionHandler:v13];
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

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  connection = [(SHShazamKitServiceConnection *)self connection];
  signature = [requestCopy signature];
  v6 = signature;
  if (!signature)
  {
    v6 = objc_opt_new();
  }

  v7 = [(SHShazamKitServiceConnection *)self matcherDelegateErrorHandlerForSignature:v6];
  v8 = [connection remoteObjectProxyWithErrorHandler:v7];
  [v8 startRecognitionForRequest:requestCopy completionHandler:&__block_literal_global_8];

  if (!signature)
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

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  matcherCopy = matcher;
  connection = [(SHShazamKitServiceConnection *)self connection];
  signature = [responseCopy signature];
  v9 = [(SHShazamKitServiceConnection *)self matcherDelegateErrorHandlerForSignature:signature];
  v10 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v10 matcher:matcherCopy didProduceResponse:responseCopy];
}

- (void)stopRecognition
{
  connection = [(SHShazamKitServiceConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy stopRecognition];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  connection = [(SHShazamKitServiceConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy stopRecognitionForRequestID:dCopy];
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition
{
  snapshotCopy = snapshot;
  conditionCopy = condition;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__SHShazamKitServiceConnection__synchronizeSnapshot_startCondition___block_invoke;
  aBlock[3] = &unk_2788F81B8;
  objc_copyWeak(&v14, &location);
  v8 = snapshotCopy;
  v13 = v8;
  v9 = _Block_copy(aBlock);
  connection = [(SHShazamKitServiceConnection *)self connection];
  v11 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v11 synchronizeSnapshot:v8 startCondition:conditionCopy completionHandler:&__block_literal_global_69];

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

- (void)_libraryInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__SHShazamKitServiceConnection__libraryInfoWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v10 = handlerCopy;
  v5 = handlerCopy;
  v6 = _Block_copy(aBlock);
  connection = [(SHShazamKitServiceConnection *)self connection];
  v8 = [connection remoteObjectProxyWithErrorHandler:v6];
  [v8 _libraryInfoWithCompletionHandler:v5];
}

void __66__SHShazamKitServiceConnection__libraryInfoWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamKit.ShazamLibrary" code:301 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__SHShazamKitServiceConnection__queryLibraryWithParameters_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = handlerCopy;
  v7 = handlerCopy;
  parametersCopy = parameters;
  v9 = _Block_copy(aBlock);
  connection = [(SHShazamKitServiceConnection *)self connection];
  v11 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v11 _queryLibraryWithParameters:parametersCopy completionHandler:v7];
}

void __78__SHShazamKitServiceConnection__queryLibraryWithParameters_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamKit.ShazamLibrary" code:301 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)mediaItemsForShazamIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__SHShazamKitServiceConnection_mediaItemsForShazamIDs_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = handlerCopy;
  v7 = handlerCopy;
  dsCopy = ds;
  v9 = _Block_copy(aBlock);
  connection = [(SHShazamKitServiceConnection *)self connection];
  v11 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v11 mediaItemsForShazamIDs:dsCopy completionHandler:v7];
}

void __73__SHShazamKitServiceConnection_mediaItemsForShazamIDs_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

- (void)synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__SHShazamKitServiceConnection_synchronouslyFetchRawSongResponseDataForMediaItemIdentifier_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = handlerCopy;
  v7 = handlerCopy;
  identifierCopy = identifier;
  v9 = _Block_copy(aBlock);
  connection = [(SHShazamKitServiceConnection *)self connection];
  v11 = [connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v11 synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:identifierCopy completionHandler:v7];
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

- (void)hapticsForMediaItems:(id)items completionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__SHShazamKitServiceConnection_hapticsForMediaItems_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = handlerCopy;
  v7 = handlerCopy;
  itemsCopy = items;
  v9 = _Block_copy(aBlock);
  connection = [(SHShazamKitServiceConnection *)self connection];
  v11 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v11 hapticsForMediaItems:itemsCopy completionHandler:v7];
}

void __71__SHShazamKitServiceConnection_hapticsForMediaItems_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

- (void)isHapticTrackAvailableForMediaItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__SHShazamKitServiceConnection_isHapticTrackAvailableForMediaItem_completionHandler___block_invoke;
  aBlock[3] = &unk_2788F8078;
  v13 = handlerCopy;
  v7 = handlerCopy;
  itemCopy = item;
  v9 = _Block_copy(aBlock);
  connection = [(SHShazamKitServiceConnection *)self connection];
  v11 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v11 isHapticTrackAvailableForMediaItem:itemCopy completionHandler:v7];
}

void __85__SHShazamKitServiceConnection_isHapticTrackAvailableForMediaItem_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D54E10] errorWithCode:100 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

@end