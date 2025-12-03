@interface SWBackgroundSendUtility
- (SLDServiceProxy)serviceProxy;
- (SWBackgroundSendUtility)initWithItemProvider:(id)provider faceTimeConversation:(id)conversation queue:(id)queue completion:(id)completion;
- (id)remoteService;
- (void)_addCollaborationRequest:(id)request;
- (void)_processPendingCollaborationRequest;
- (void)dictionaryDidBecomeAvailable:(id)available forProvider:(id)provider;
- (void)sendCollaboration:(id)collaboration faceTimeConversationUUID:(id)d completionHandler:(id)handler;
- (void)serviceProxyDidConnect:(id)connect;
- (void)serviceProxyDidDisconnect:(id)disconnect;
@end

@implementation SWBackgroundSendUtility

- (SWBackgroundSendUtility)initWithItemProvider:(id)provider faceTimeConversation:(id)conversation queue:(id)queue completion:(id)completion
{
  providerCopy = provider;
  conversationCopy = conversation;
  queueCopy = queue;
  completionCopy = completion;
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
        v17 = [[v16 alloc] initWithItemProvider:providerCopy delegate:v14];
        compositionDictionaryProvider = v14->_compositionDictionaryProvider;
        v14->_compositionDictionaryProvider = v17;
      }
    }

    objc_storeStrong(&v14->_queue, queue);
    objc_storeStrong(&v14->_faceTimeConversation, conversation);
    v19 = _Block_copy(completionCopy);
    completion = v14->_completion;
    v14->_completion = v19;
  }

  return v14;
}

- (void)dictionaryDidBecomeAvailable:(id)available forProvider:(id)provider
{
  v18 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  if (availableCopy)
  {
    v15 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:availableCopy requiringSecureCoding:1 error:&v15];
    v7 = v15;
    faceTimeConversation2 = SWFrameworkLogHandle();
    v9 = os_log_type_enabled(faceTimeConversation2, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        *buf = 138412290;
        v17 = availableCopy;
        _os_log_impl(&dword_1BBC06000, faceTimeConversation2, OS_LOG_TYPE_DEFAULT, "Asking to initiate collaboration for dictionary %@", buf, 0xCu);
      }

      v10 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        faceTimeConversation = [(SWBackgroundSendUtility *)self faceTimeConversation];
        *buf = 138412290;
        v17 = faceTimeConversation;
        _os_log_impl(&dword_1BBC06000, v10, OS_LOG_TYPE_DEFAULT, "Asking to initiate collaboration for tuconversation: %@", buf, 0xCu);
      }

      faceTimeConversation2 = [(SWBackgroundSendUtility *)self faceTimeConversation];
      uUID = [faceTimeConversation2 UUID];
      completion = [(SWBackgroundSendUtility *)self completion];
      [(SWBackgroundSendUtility *)self sendCollaboration:v6 faceTimeConversationUUID:uUID completionHandler:completion];
    }

    else if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1BBC06000, faceTimeConversation2, OS_LOG_TYPE_DEFAULT, "Info dictionary could not be archived, so not sending collaboration", buf, 2u);
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

- (void)_addCollaborationRequest:(id)request
{
  requestCopy = request;
  queue = [(SWBackgroundSendUtility *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SWBackgroundSendUtility__addCollaborationRequest___block_invoke;
  v7[3] = &unk_1E7FDDC10;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
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
  queue = [(SWBackgroundSendUtility *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SWBackgroundSendUtility__processPendingCollaborationRequest__block_invoke;
  block[3] = &unk_1E7FDDC38;
  block[4] = self;
  dispatch_async(queue, block);
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

- (void)sendCollaboration:(id)collaboration faceTimeConversationUUID:(id)d completionHandler:(id)handler
{
  collaborationCopy = collaboration;
  dCopy = d;
  handlerCopy = handler;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __88__SWBackgroundSendUtility_sendCollaboration_faceTimeConversationUUID_completionHandler___block_invoke;
  v18 = &unk_1E7FDDC60;
  selfCopy = self;
  v20 = collaborationCopy;
  v21 = dCopy;
  v22 = handlerCopy;
  v11 = handlerCopy;
  v12 = dCopy;
  v13 = collaborationCopy;
  v14 = _Block_copy(&v15);
  [(SWBackgroundSendUtility *)self _addCollaborationRequest:v14, v15, v16, v17, v18, selfCopy];
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
    queue = [(SWBackgroundSendUtility *)self queue];
    v7 = [v4 proxyForServiceClass:v5 targetSerialQueue:queue delegate:self];
    v8 = self->_serviceProxy;
    self->_serviceProxy = v7;

    serviceProxy = self->_serviceProxy;
  }

  return serviceProxy;
}

- (id)remoteService
{
  serviceProxy = [(SWBackgroundSendUtility *)self serviceProxy];
  remoteService = [serviceProxy remoteService];

  return remoteService;
}

- (void)serviceProxyDidConnect:(id)connect
{
  v4 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_INFO, "Service proxy connected background send utility", v5, 2u);
  }

  [(SWBackgroundSendUtility *)self _processPendingCollaborationRequest];
}

- (void)serviceProxyDidDisconnect:(id)disconnect
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_INFO, "Service proxy disconnected for background send utility: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end