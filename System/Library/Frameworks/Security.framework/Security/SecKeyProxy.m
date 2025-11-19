@interface SecKeyProxy
+ (__SecIdentity)createIdentityFromEndpoint:(id)a3 error:(id *)a4;
+ (__SecKey)createItemFromEndpoint:(id)a3 certificate:(id *)a4 error:(id *)a5;
+ (id)targetForKey:(__SecKey *)a3 error:(__CFError *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SecKeyProxy)initWithIdentity:(__SecIdentity *)a3;
- (SecKeyProxy)initWithKey:(__SecKey *)a3 certificate:(id)a4;
- (id)clientConnectionHandler;
- (id)clientDisconnectionHandler;
- (void)dealloc;
- (void)setClientConnectionHandler:(id)a3;
- (void)setClientDisconnectionHandler:(id)a3;
@end

@implementation SecKeyProxy

- (void)dealloc
{
  [(SecKeyProxy *)self invalidate];
  v3.receiver = self;
  v3.super_class = SecKeyProxy;
  [(SecKeyProxy *)&v3 dealloc];
}

- (void)setClientDisconnectionHandler:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  v5 = _Block_copy(v4);

  clientDisconnectionHandler = obj->_clientDisconnectionHandler;
  obj->_clientDisconnectionHandler = v5;

  objc_sync_exit(obj);
}

- (id)clientDisconnectionHandler
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _Block_copy(v2->_clientDisconnectionHandler);
  objc_sync_exit(v2);

  return v3;
}

- (void)setClientConnectionHandler:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  v5 = _Block_copy(v4);

  clientConnectionHandler = obj->_clientConnectionHandler;
  obj->_clientConnectionHandler = v5;

  objc_sync_exit(obj);
}

- (id)clientConnectionHandler
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _Block_copy(v2->_clientConnectionHandler);
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFAB73D8];
  [v7 setExportedInterface:v8];

  v9 = [[SecKeyProxyTarget alloc] initWithKey:self->_key certificate:self->_certificate];
  [v7 setExportedObject:v9];

  v10 = [(NSXPCListener *)self->_listener _queue];
  [v7 _setQueue:v10];

  add = atomic_fetch_add(&self->_clientCount, 1uLL);
  v12 = self;
  objc_sync_enter(v12);
  v13 = [(SecKeyProxy *)v12 clientConnectionHandler];

  if (v13)
  {
    v14 = [(SecKeyProxy *)v12 clientConnectionHandler];
    (v14)[2](v14, add == 0);
  }

  objc_sync_exit(v12);

  objc_initWeak(&location, v12);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __50__SecKeyProxy_listener_shouldAcceptNewConnection___block_invoke;
  v19 = &unk_1E70E0AD0;
  objc_copyWeak(&v20, &location);
  [v7 setInvalidationHandler:&v16];
  [v7 resume];
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

- (SecKeyProxy)initWithIdentity:(__SecIdentity *)a3
{
  v5 = *(a3 + 3);
  CFRetain(v5);
  v6 = *(a3 + 2);
  CFRetain(v6);
  if (v5 | v6)
  {
    v8 = SecCertificateCopyData(v6);
    if (v8)
    {
      self = [(SecKeyProxy *)self initWithKey:v5 certificate:v8];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SecKeyProxy)initWithKey:(__SecKey *)a3 certificate:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SecKeyProxy;
  v8 = [(SecKeyProxy *)&v15 init];
  if (v8)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    key = v8->_key;
    v8->_key = a3;

    objc_storeStrong(&v8->_certificate, a4);
    v10 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v8->_listener;
    v8->_listener = v10;

    [(NSXPCListener *)v8->_listener setDelegate:v8];
    v12 = v8->_listener;
    v13 = dispatch_queue_create("SecKeyProxy", 0);
    [(NSXPCListener *)v12 _setQueue:v13];

    [(NSXPCListener *)v8->_listener resume];
  }

  return v8;
}

+ (__SecIdentity)createIdentityFromEndpoint:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v5 = [a1 createItemFromEndpoint:a3 certificate:&v15 error:a4];
  v6 = v15;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E695E638];
      v16 = *MEMORY[0x1E696A578];
      v17[0] = @"Attempt to create remote identity from key-only proxy";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [v11 errorWithDomain:v12 code:-50 userInfo:v9];
      *a4 = v10 = 0;
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

+ (__SecKey)createItemFromEndpoint:(id)a3 certificate:(id *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v7];
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
    if (a5)
    {
      *a5 = v22[5];
    }
  }

  else
  {
    if (a4)
    {
      *a4 = v16[5];
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

+ (id)targetForKey:(__SecKey *)a3 error:(__CFError *)a4
{
  v4 = *(a3 + 3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SecKeyProxy_targetForKey_error___block_invoke;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = a4;
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