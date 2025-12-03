@interface AEActiveRestrictionUUIDFetchingProxy
+ (id)daemonProxyWithQueue:(id)queue;
+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue;
+ (id)proxyWithOrigin:(void *)origin queue:;
- (id)initWithXPCProxy:(void *)proxy queue:;
- (id)setOfActiveRestrictionUUIDs:(id)ds;
@end

@implementation AEActiveRestrictionUUIDFetchingProxy

void __68__AEActiveRestrictionUUIDFetchingProxy_setOfActiveRestrictionUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AECoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__AEActiveRestrictionUUIDFetchingProxy_setOfActiveRestrictionUUIDs___block_invoke_cold_1(a1, v3, v4);
  }
}

void __68__AEActiveRestrictionUUIDFetchingProxy_setOfActiveRestrictionUUIDs___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)initWithXPCProxy:(void *)proxy queue:
{
  v6 = a2;
  proxyCopy = proxy;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = AEActiveRestrictionUUIDFetchingProxy;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, proxy);
    }
  }

  return self;
}

+ (id)proxyWithOrigin:(void *)origin queue:
{
  originCopy = origin;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  makeInterface = [v6 makeInterface];

  v8 = [[AEXPCProxy alloc] initWithOrigin:v5 interface:makeInterface];
  v9 = [[AEActiveRestrictionUUIDFetchingProxy alloc] initWithXPCProxy:v8 queue:originCopy];

  return v9;
}

+ (id)daemonProxyWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [[AEMachServiceXPCConnectionOrigin alloc] initWithMachServiceName:4096 options:?];
  v6 = [(AEActiveRestrictionUUIDFetchingProxy *)self proxyWithOrigin:v5 queue:queueCopy];

  return v6;
}

+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue
{
  queueCopy = queue;
  endpointCopy = endpoint;
  v8 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:endpointCopy];

  v9 = [(AEActiveRestrictionUUIDFetchingProxy *)self proxyWithOrigin:v8 queue:queueCopy];

  return v9;
}

- (id)setOfActiveRestrictionUUIDs:(id)ds
{
  v35 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (self)
  {
    xpcProxy = self->_xpcProxy;
  }

  else
  {
    xpcProxy = 0;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __68__AEActiveRestrictionUUIDFetchingProxy_setOfActiveRestrictionUUIDs___block_invoke;
  v30[3] = &unk_278BB7108;
  v30[4] = self;
  v6 = [(AEXPCProxy *)xpcProxy synchronousRemoteObjectProxyWithErrorHandler:v30];
  v7 = v6;
  if (v6)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__AEActiveRestrictionUUIDFetchingProxy_setOfActiveRestrictionUUIDs___block_invoke_6;
    v17[3] = &unk_278BB7130;
    v17[4] = &v24;
    v17[5] = &v18;
    [v6 fetchSetOfActiveRestrictionUUIDsWithClientType:dsCopy completion:v17];
    v8 = v25[5];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v11 = AECoreLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = v19[5];
        *buf = 138543618;
        v32 = v15;
        v33 = 2114;
        v34 = v16;
        _os_log_error_impl(&dword_23C1AA000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] An error occurred fetching active restriction UUIDs: %{public}@", buf, 0x16u);
      }

      v9 = objc_opt_new();
    }

    v10 = v9;
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v10 = objc_opt_new();
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __68__AEActiveRestrictionUUIDFetchingProxy_setOfActiveRestrictionUUIDs___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138543618;
  v10 = v7;
  v11 = 2114;
  v12 = a2;
  _os_log_error_impl(&dword_23C1AA000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] An error occurred creating synchronous remote object proxy: %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end