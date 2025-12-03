@interface AEAssessmentStateSourceRegisteringProxy
+ (id)daemonProxyWithQueue:(id)queue;
+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue;
+ (id)proxyWithOrigin:(void *)origin queue:;
- (id)initWithXPCProxy:(void *)proxy queue:;
- (void)_registerPublisherWithLifetimeEndpoint:(void *)endpoint completion:;
- (void)registerPublisherWithLifetimeEndpoint:(id)endpoint completion:(id)completion;
@end

@implementation AEAssessmentStateSourceRegisteringProxy

- (void)registerPublisherWithLifetimeEndpoint:(id)endpoint completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__AEAssessmentStateSourceRegisteringProxy_registerPublisherWithLifetimeEndpoint_completion___block_invoke;
  v8[3] = &unk_278BB7158;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(AEAssessmentStateSourceRegisteringProxy *)self _registerPublisherWithLifetimeEndpoint:endpoint completion:v8];
}

- (id)initWithXPCProxy:(void *)proxy queue:
{
  v6 = a2;
  proxyCopy = proxy;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = AEAssessmentStateSourceRegisteringProxy;
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
  v9 = [[AEAssessmentStateSourceRegisteringProxy alloc] initWithXPCProxy:v8 queue:originCopy];

  return v9;
}

+ (id)daemonProxyWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [[AEMachServiceXPCConnectionOrigin alloc] initWithMachServiceName:4096 options:?];
  v6 = [(AEAssessmentStateSourceRegisteringProxy *)self proxyWithOrigin:v5 queue:queueCopy];

  return v6;
}

+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue
{
  queueCopy = queue;
  endpointCopy = endpoint;
  v8 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:endpointCopy];

  v9 = [(AEAssessmentStateSourceRegisteringProxy *)self proxyWithOrigin:v8 queue:queueCopy];

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

- (void)_registerPublisherWithLifetimeEndpoint:(void *)endpoint completion:
{
  endpointCopy = endpoint;
  if (self)
  {
    v6 = *(self + 8);
    OUTLINED_FUNCTION_0();
    v11 = 3221225472;
    v12 = __93__AEAssessmentStateSourceRegisteringProxy__registerPublisherWithLifetimeEndpoint_completion___block_invoke;
    v13 = &unk_278BB6D68;
    v7 = endpointCopy;
    v14 = v7;
    v8 = a2;
    v9 = [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v10];
    [v9 registerPublisherWithLifetimeEndpoint:v8 completion:v7];
  }
}

@end