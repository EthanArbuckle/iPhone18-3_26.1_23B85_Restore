@interface SWBackgroundSendUtility
- (SLDServiceProxy)serviceProxy;
- (SWBackgroundSendUtility)initWithItemProvider:(id)a3 faceTimeConversation:(id)a4 queue:(id)a5 completion:(id)a6;
- (id)remoteService;
- (void)_addCollaborationRequest:(id)a3;
- (void)_processPendingCollaborationRequest;
- (void)dictionaryDidBecomeAvailable:(id)a3 forProvider:(id)a4;
- (void)sendCollaboration:(id)a3 faceTimeConversationUUID:(id)a4 completionHandler:(id)a5;
- (void)serviceProxyDidConnect:(id)a3;
- (void)serviceProxyDidDisconnect:(id)a3;
@end

@implementation SWBackgroundSendUtility

- (SWBackgroundSendUtility)initWithItemProvider:(id)a3 faceTimeConversation:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = SWBackgroundSendUtility;
  v14 = [(SWBackgroundSendUtility *)&v22 init];
  if (v14)
  {
    v15 = CUTWeakLinkClass();
    if (v15)
    {
      v16 = v15;
      if ([(objc_class *)v15 instancesRespondToSelector:sel_initWithItemProvider_delegate_])
      {
        v17 = [[v16 alloc] initWithItemProvider:v10 delegate:v14];
        compositionDictionaryProvider = v14->_compositionDictionaryProvider;
        v14->_compositionDictionaryProvider = v17;
      }
    }

    objc_storeStrong(&v14->_queue, a5);
    objc_storeStrong(&v14->_faceTimeConversation, a4);
    v19 = _Block_copy(v13);
    completion = v14->_completion;
    v14->_completion = v19;
  }

  return v14;
}

- (void)dictionaryDidBecomeAvailable:(id)a3 forProvider:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v15 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v15];
    v7 = v15;
    v8 = SWFrameworkLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_DEFAULT, "Asking to initiate collaboration for dictionary %@", buf, 0xCu);
      }

      v10 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(SWBackgroundSendUtility *)self faceTimeConversation];
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_1BBC06000, v10, OS_LOG_TYPE_DEFAULT, "Asking to initiate collaboration for tuconversation: %@", buf, 0xCu);
      }

      v8 = [(SWBackgroundSendUtility *)self faceTimeConversation];
      v12 = [v8 UUID];
      v13 = [(SWBackgroundSendUtility *)self completion];
      [(SWBackgroundSendUtility *)self sendCollaboration:v6 faceTimeConversationUUID:v12 completionHandler:v13];
    }

    else if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_DEFAULT, "Info dictionary could not be archived, so not sending collaboration", buf, 2u);
    }
  }

  else
  {
    v7 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BBC06000, v7, OS_LOG_TYPE_DEFAULT, "Received a nil collaboration composition dictionary so cannot send collaboration", buf, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_addCollaborationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SWBackgroundSendUtility *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SWBackgroundSendUtility__addCollaborationRequest___block_invoke;
  v7[3] = &unk_1E7FDDC10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__SWBackgroundSendUtility__addCollaborationRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceProxy];
  v3 = [v2 connectionActive];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "Not currently connected to shareable content service. We'll wait for the connection before servicing this request.", v7, 2u);
    }

    [*(a1 + 32) setPendingCollaborationRequest:*(a1 + 40)];
    v6 = [*(a1 + 32) serviceProxy];
    [v6 connect];
  }
}

- (void)_processPendingCollaborationRequest
{
  v3 = [(SWBackgroundSendUtility *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SWBackgroundSendUtility__processPendingCollaborationRequest__block_invoke;
  block[3] = &unk_1E7FDDC38;
  block[4] = self;
  dispatch_async(v3, block);
}

void __62__SWBackgroundSendUtility__processPendingCollaborationRequest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingCollaborationRequest];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingCollaborationRequest];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setPendingCollaborationRequest:0];
  }
}

- (void)sendCollaboration:(id)a3 faceTimeConversationUUID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __88__SWBackgroundSendUtility_sendCollaboration_faceTimeConversationUUID_completionHandler___block_invoke;
  v18 = &unk_1E7FDDC60;
  v19 = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = _Block_copy(&v15);
  [(SWBackgroundSendUtility *)self _addCollaborationRequest:v14, v15, v16, v17, v18, v19];
}

void __88__SWBackgroundSendUtility_sendCollaboration_faceTimeConversationUUID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteService];
  [v2 shareCollaborationData:*(a1 + 40) faceTimeConversationUUID:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (SLDServiceProxy)serviceProxy
{
  serviceProxy = self->_serviceProxy;
  if (!serviceProxy)
  {
    v4 = MEMORY[0x1E69D3800];
    v5 = objc_opt_class();
    v6 = [(SWBackgroundSendUtility *)self queue];
    v7 = [v4 proxyForServiceClass:v5 targetSerialQueue:v6 delegate:self];
    v8 = self->_serviceProxy;
    self->_serviceProxy = v7;

    serviceProxy = self->_serviceProxy;
  }

  return serviceProxy;
}

- (id)remoteService
{
  v2 = [(SWBackgroundSendUtility *)self serviceProxy];
  v3 = [v2 remoteService];

  return v3;
}

- (void)serviceProxyDidConnect:(id)a3
{
  v4 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_INFO, "Service proxy connected background send utility", v5, 2u);
  }

  [(SWBackgroundSendUtility *)self _processPendingCollaborationRequest];
}

- (void)serviceProxyDidDisconnect:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_INFO, "Service proxy disconnected for background send utility: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end