@interface SecKeyProxy
+ (__SecIdentity)createIdentityFromEndpoint:(id)endpoint error:(id *)error;
+ (__SecKey)createItemFromEndpoint:(id)endpoint certificate:(id *)certificate error:(id *)error;
+ (id)targetForKey:(__SecKey *)key error:(__CFError *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SecKeyProxy)initWithIdentity:(__SecIdentity *)identity;
- (SecKeyProxy)initWithKey:(__SecKey *)key certificate:(id)certificate;
- (id)clientConnectionHandler;
- (id)clientDisconnectionHandler;
- (void)dealloc;
- (void)setClientConnectionHandler:(id)handler;
- (void)setClientDisconnectionHandler:(id)handler;
@end

@implementation SecKeyProxy

- (void)dealloc
{
  [(SecKeyProxy *)self invalidate];
  v3.receiver = self;
  v3.super_class = SecKeyProxy;
  [(SecKeyProxy *)&v3 dealloc];
}

- (void)setClientDisconnectionHandler:(id)handler
{
  obj = self;
  handlerCopy = handler;
  objc_sync_enter(obj);
  v5 = _Block_copy(handlerCopy);

  clientDisconnectionHandler = obj->_clientDisconnectionHandler;
  obj->_clientDisconnectionHandler = v5;

  objc_sync_exit(obj);
}

- (id)clientDisconnectionHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _Block_copy(selfCopy->_clientDisconnectionHandler);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setClientConnectionHandler:(id)handler
{
  obj = self;
  handlerCopy = handler;
  objc_sync_enter(obj);
  v5 = _Block_copy(handlerCopy);

  clientConnectionHandler = obj->_clientConnectionHandler;
  obj->_clientConnectionHandler = v5;

  objc_sync_exit(obj);
}

- (id)clientConnectionHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _Block_copy(selfCopy->_clientConnectionHandler);
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFAB73D8];
  [connectionCopy setExportedInterface:v8];

  v9 = [[SecKeyProxyTarget alloc] initWithKey:self->_key certificate:self->_certificate];
  [connectionCopy setExportedObject:v9];

  _queue = [(NSXPCListener *)self->_listener _queue];
  [connectionCopy _setQueue:_queue];

  add = atomic_fetch_add(&self->_clientCount, 1uLL);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clientConnectionHandler = [(SecKeyProxy *)selfCopy clientConnectionHandler];

  if (clientConnectionHandler)
  {
    clientConnectionHandler2 = [(SecKeyProxy *)selfCopy clientConnectionHandler];
    (clientConnectionHandler2)[2](clientConnectionHandler2, add == 0);
  }

  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __50__SecKeyProxy_listener_shouldAcceptNewConnection___block_invoke;
  v19 = &unk_1E70E0AD0;
  objc_copyWeak(&v20, &location);
  [connectionCopy setInvalidationHandler:&v16];
  [connectionCopy resume];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return 1;
}

void __50__SecKeyProxy_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    add = atomic_fetch_add(WeakRetained + 4, 0xFFFFFFFFFFFFFFFFLL);
    v6 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [(atomic_ullong *)v3 clientDisconnectionHandler];

    if (v4)
    {
      v5 = [(atomic_ullong *)v3 clientDisconnectionHandler];
      (v5)[2](v5, add == 1);
    }

    objc_sync_exit(v3);

    WeakRetained = v6;
  }
}

- (SecKeyProxy)initWithIdentity:(__SecIdentity *)identity
{
  v5 = *(identity + 3);
  CFRetain(v5);
  v6 = *(identity + 2);
  CFRetain(v6);
  if (v5 | v6)
  {
    v8 = SecCertificateCopyData(v6);
    if (v8)
    {
      self = [(SecKeyProxy *)self initWithKey:v5 certificate:v8];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SecKeyProxy)initWithKey:(__SecKey *)key certificate:(id)certificate
{
  certificateCopy = certificate;
  v15.receiver = self;
  v15.super_class = SecKeyProxy;
  v8 = [(SecKeyProxy *)&v15 init];
  if (v8)
  {
    if (key)
    {
      CFRetain(key);
    }

    key = v8->_key;
    v8->_key = key;

    objc_storeStrong(&v8->_certificate, certificate);
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v8->_listener;
    v8->_listener = anonymousListener;

    [(NSXPCListener *)v8->_listener setDelegate:v8];
    v12 = v8->_listener;
    v13 = dispatch_queue_create("SecKeyProxy", 0);
    [(NSXPCListener *)v12 _setQueue:v13];

    [(NSXPCListener *)v8->_listener resume];
  }

  return v8;
}

+ (__SecIdentity)createIdentityFromEndpoint:(id)endpoint error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v5 = [self createItemFromEndpoint:endpoint certificate:&v15 error:error];
  v6 = v15;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E695E638];
      v16 = *MEMORY[0x1E696A578];
      v17[0] = @"Attempt to create remote identity from key-only proxy";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [v11 errorWithDomain:v12 code:-50 userInfo:v9];
      *error = v10 = 0;
      goto LABEL_6;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v6);
  v10 = SecIdentityCreate(v8, v9, v5);
LABEL_6:

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (__SecKey)createItemFromEndpoint:(id)endpoint certificate:(id *)certificate error:(id *)error
{
  endpointCopy = endpoint;
  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFAB73D8];
  [v8 setRemoteObjectInterface:v9];

  [v8 resume];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12633;
  v25 = __Block_byref_object_dispose__12634;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12633;
  v19 = __Block_byref_object_dispose__12634;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__SecKeyProxy_createItemFromEndpoint_certificate_error___block_invoke;
  v14[3] = &unk_1E70E0B18;
  v14[4] = &v21;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__SecKeyProxy_createItemFromEndpoint_certificate_error___block_invoke_2;
  v13[3] = &unk_1E70E0B40;
  v13[4] = &v15;
  [v10 initializeWithReply:v13];

  if (v22[5])
  {
    [v8 invalidate];
    v11 = 0;
    if (error)
    {
      *error = v22[5];
    }
  }

  else
  {
    if (certificate)
    {
      *certificate = v16[5];
    }

    v11 = SecKeyCreate(*MEMORY[0x1E695E480], &SecRemoteKeyDescriptor, v8, 0, 0);
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __56__SecKeyProxy_createItemFromEndpoint_certificate_error___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E695E638];
  v12 = *MEMORY[0x1E696AA08];
  v13[0] = a2;
  v5 = MEMORY[0x1E695DF20];
  v6 = a2;
  v7 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = [v3 errorWithDomain:v4 code:-25300 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)targetForKey:(__SecKey *)key error:(__CFError *)error
{
  v4 = *(key + 3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SecKeyProxy_targetForKey_error___block_invoke;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = error;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v7];

  return v5;
}

void __34__SecKeyProxy_targetForKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3;
    **(a1 + 32) = v3;
    v3 = v4;
  }
}

@end