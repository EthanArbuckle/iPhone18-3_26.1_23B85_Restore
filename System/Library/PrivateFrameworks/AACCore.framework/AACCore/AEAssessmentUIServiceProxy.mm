@interface AEAssessmentUIServiceProxy
+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue;
+ (id)proxyWithOrigin:(void *)origin queue:;
+ (id)serviceProxyWithQueue:(id)queue;
- (id)initWithXPCProxy:(void *)proxy queue:;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (void)_activateWithConfiguration:(void *)configuration completion:;
- (void)_animateInWithCompletion:(uint64_t)completion;
- (void)_animateOutWithCompletion:(uint64_t)completion;
- (void)_deactivateWithCompletion:(uint64_t)completion;
- (void)activateWithConfiguration:(id)configuration completion:(id)completion;
- (void)animateInWithCompletion:(id)completion;
- (void)animateOutWithCompletion:(id)completion;
- (void)deactivateWithCompletion:(id)completion;
- (void)invalidate;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation AEAssessmentUIServiceProxy

- (void)activateWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__AEAssessmentUIServiceProxy_activateWithConfiguration_completion___block_invoke;
  v8[3] = &unk_278BB6D40;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(AEAssessmentUIServiceProxy *)self _activateWithConfiguration:configuration completion:v8];
}

- (void)animateInWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__AEAssessmentUIServiceProxy_animateInWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AEAssessmentUIServiceProxy *)self _animateInWithCompletion:v6];
}

- (void)animateOutWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__AEAssessmentUIServiceProxy_animateOutWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AEAssessmentUIServiceProxy *)self _animateOutWithCompletion:v6];
}

- (void)deactivateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__AEAssessmentUIServiceProxy_deactivateWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AEAssessmentUIServiceProxy *)self _deactivateWithCompletion:v6];
}

- (id)initWithXPCProxy:(void *)proxy queue:
{
  v6 = a2;
  proxyCopy = proxy;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = AEAssessmentUIServiceProxy;
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
  v9 = [[AEAssessmentUIServiceProxy alloc] initWithXPCProxy:v8 queue:originCopy];

  return v9;
}

+ (id)serviceProxyWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [[AEServiceXPCConnectionOrigin alloc] initWithServiceName:?];
  v6 = [(AEAssessmentUIServiceProxy *)self proxyWithOrigin:v5 queue:queueCopy];

  return v6;
}

+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue
{
  queueCopy = queue;
  endpointCopy = endpoint;
  v8 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:endpointCopy];

  v9 = [(AEAssessmentUIServiceProxy *)self proxyWithOrigin:v8 queue:queueCopy];

  return v9;
}

- (id)interruptionHandler
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  return [(AEAssessmentUIServiceProxy *)self interruptionHandler];
}

- (id)invalidationHandler
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  return [(AEAssessmentUIServiceProxy *)self invalidationHandler];
}

- (void)setInterruptionHandler:(id)handler
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AEAssessmentUIServiceProxy *)self setInterruptionHandler:handler];
}

- (void)setInvalidationHandler:(id)handler
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AEAssessmentUIServiceProxy *)self setInvalidationHandler:handler];
}

- (void)invalidate
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AEAssessmentUIServiceProxy *)self invalidate];
}

void __67__AEAssessmentUIServiceProxy_activateWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  OUTLINED_FUNCTION_5();
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v16 = *(a1 + 40);
  v7 = v2;
  OUTLINED_FUNCTION_3_0(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

- (void)_activateWithConfiguration:(void *)configuration completion:
{
  configurationCopy = configuration;
  if (self)
  {
    v6 = *(self + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v11 = __68__AEAssessmentUIServiceProxy__activateWithConfiguration_completion___block_invoke;
    v12 = &unk_278BB6D68;
    v7 = configurationCopy;
    v13 = v7;
    v8 = a2;
    v9 = [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v10];
    [v9 activateWithConfiguration:v8 completion:v7];
  }
}

void __54__AEAssessmentUIServiceProxy_animateInWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  OUTLINED_FUNCTION_5();
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v16 = *(a1 + 40);
  v7 = v2;
  OUTLINED_FUNCTION_3_0(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

- (void)_animateInWithCompletion:(uint64_t)completion
{
  v4 = a2;
  if (completion)
  {
    v5 = *(completion + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v6 = v4;
    v7 = OUTLINED_FUNCTION_2_0();
    v9 = [(AEXPCProxy *)v7 remoteObjectProxyWithErrorHandler:v8];
    [v9 animateInWithCompletion:v2];
  }
}

void __55__AEAssessmentUIServiceProxy_animateOutWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  OUTLINED_FUNCTION_5();
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v16 = *(a1 + 40);
  v7 = v2;
  OUTLINED_FUNCTION_3_0(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

- (void)_animateOutWithCompletion:(uint64_t)completion
{
  v4 = a2;
  if (completion)
  {
    v5 = *(completion + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v6 = v4;
    v7 = OUTLINED_FUNCTION_2_0();
    v9 = [(AEXPCProxy *)v7 remoteObjectProxyWithErrorHandler:v8];
    [v9 animateOutWithCompletion:v2];
  }
}

void __55__AEAssessmentUIServiceProxy_deactivateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  OUTLINED_FUNCTION_5();
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v16 = *(a1 + 40);
  v7 = v2;
  OUTLINED_FUNCTION_3_0(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

- (void)_deactivateWithCompletion:(uint64_t)completion
{
  v4 = a2;
  if (completion)
  {
    v5 = *(completion + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v6 = v4;
    v7 = OUTLINED_FUNCTION_2_0();
    v9 = [(AEXPCProxy *)v7 remoteObjectProxyWithErrorHandler:v8];
    [v9 deactivateWithCompletion:v2];
  }
}

@end