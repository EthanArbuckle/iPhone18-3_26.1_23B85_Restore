@interface NEIPCWrapper
- (void)cancel;
@end

@implementation NEIPCWrapper

void __43__NEIPCWrapper_initWithSession_identifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (v3)
  {
    v5 = objc_alloc_init(NEIPC);
    v6 = *(a1 + 32);
    v7 = objc_initWeak(&location, v6);
    if (v6)
    {
      Property = objc_getProperty(v6, v8, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = Property;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __43__NEIPCWrapper_initWithSession_identifier___block_invoke_2;
    v22[3] = &unk_1E7F0AAC8;
    objc_copyWeak(&v23, &location);
    v11 = v3;
    v12 = v10;
    v13 = v22;
    if (v5)
    {
      v14 = v5;
      objc_sync_enter(v14);
      objc_setProperty_atomic_copy(v14, v15, v13, 8);
      v16 = xpc_connection_create_from_endpoint(v11);
      objc_setProperty_atomic(v14, v17, v16, 16);

      [(NEIPC *)v14 setupMessageHandlingWithQueue:v12];
      objc_sync_exit(v14);
    }

    v18 = *(a1 + 32);
    v19 = *(v18 + 24);
    *(v18 + 24) = v5;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    [(NEIPCWrapper *)*(a1 + 32) cancel];
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v21 = objc_getProperty(v21, v20, 8, 1);
  }

  dispatch_resume(v21);
  objc_sync_exit(v4);
}

void __43__NEIPCWrapper_initWithSession_identifier___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [(NEIPCWrapper *)WeakRetained cancel];
  }
}

- (void)cancel
{
  if (self)
  {
    v2 = wrapperMap;
    objc_sync_enter(v2);
    v3 = wrapperMap;
    v5 = objc_getProperty(self, v4, 32, 1);
    [v3 removeObjectForKey:v5];

    objc_sync_exit(v2);
    obj = self;
    objc_sync_enter(obj);
    v6 = obj[3];
    obj[3] = 0;

    objc_sync_exit(obj);
  }
}

uint64_t __40__NEIPCWrapper_sharedWrapperForSession___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = wrapperMap;
  wrapperMap = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end