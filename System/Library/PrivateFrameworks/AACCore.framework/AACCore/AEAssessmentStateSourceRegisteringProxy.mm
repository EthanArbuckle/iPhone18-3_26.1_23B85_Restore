@interface AEAssessmentStateSourceRegisteringProxy
+ (id)daemonProxyWithQueue:(id)a3;
+ (id)proxyWithEndpoint:(id)a3 queue:(id)a4;
+ (id)proxyWithOrigin:(void *)a3 queue:;
- (id)initWithXPCProxy:(void *)a3 queue:;
- (void)_registerPublisherWithLifetimeEndpoint:(void *)a3 completion:;
- (void)registerPublisherWithLifetimeEndpoint:(id)a3 completion:(id)a4;
@end

@implementation AEAssessmentStateSourceRegisteringProxy

- (void)registerPublisherWithLifetimeEndpoint:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__AEAssessmentStateSourceRegisteringProxy_registerPublisherWithLifetimeEndpoint_completion___block_invoke;
  v8[3] = &unk_278BB7158;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(AEAssessmentStateSourceRegisteringProxy *)self _registerPublisherWithLifetimeEndpoint:a3 completion:v8];
}

- (id)initWithXPCProxy:(void *)a3 queue:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = AEAssessmentStateSourceRegisteringProxy;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

+ (id)proxyWithOrigin:(void *)a3 queue:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  v7 = [v6 makeInterface];

  v8 = [[AEXPCProxy alloc] initWithOrigin:v5 interface:v7];
  v9 = [[AEAssessmentStateSourceRegisteringProxy alloc] initWithXPCProxy:v8 queue:v4];

  return v9;
}

+ (id)daemonProxyWithQueue:(id)a3
{
  v4 = a3;
  v5 = [[AEMachServiceXPCConnectionOrigin alloc] initWithMachServiceName:4096 options:?];
  v6 = [(AEAssessmentStateSourceRegisteringProxy *)a1 proxyWithOrigin:v5 queue:v4];

  return v6;
}

+ (id)proxyWithEndpoint:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:v7];

  v9 = [(AEAssessmentStateSourceRegisteringProxy *)a1 proxyWithOrigin:v8 queue:v6];

  return v9;
}

void __92__AEAssessmentStateSourceRegisteringProxy_registerPublisherWithLifetimeEndpoint_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_0();
  v13 = 3221225472;
  v14 = __92__AEAssessmentStateSourceRegisteringProxy_registerPublisherWithLifetimeEndpoint_completion___block_invoke_2;
  v15 = &unk_278BB6DB8;
  v9 = *(a1 + 40);
  v17 = v6;
  v18 = v9;
  v16 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)_registerPublisherWithLifetimeEndpoint:(void *)a3 completion:
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    v11 = 3221225472;
    v12 = __93__AEAssessmentStateSourceRegisteringProxy__registerPublisherWithLifetimeEndpoint_completion___block_invoke;
    v13 = &unk_278BB6D68;
    v7 = v5;
    v14 = v7;
    v8 = a2;
    v9 = [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v10];
    [v9 registerPublisherWithLifetimeEndpoint:v8 completion:v7];
  }
}

@end