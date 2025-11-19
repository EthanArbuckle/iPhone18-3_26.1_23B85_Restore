@interface AEAssessmentUIServiceProxy
+ (id)proxyWithEndpoint:(id)a3 queue:(id)a4;
+ (id)proxyWithOrigin:(void *)a3 queue:;
+ (id)serviceProxyWithQueue:(id)a3;
- (id)initWithXPCProxy:(void *)a3 queue:;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (void)_activateWithConfiguration:(void *)a3 completion:;
- (void)_animateInWithCompletion:(uint64_t)a1;
- (void)_animateOutWithCompletion:(uint64_t)a1;
- (void)_deactivateWithCompletion:(uint64_t)a1;
- (void)activateWithConfiguration:(id)a3 completion:(id)a4;
- (void)animateInWithCompletion:(id)a3;
- (void)animateOutWithCompletion:(id)a3;
- (void)deactivateWithCompletion:(id)a3;
- (void)invalidate;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation AEAssessmentUIServiceProxy

- (void)activateWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__AEAssessmentUIServiceProxy_activateWithConfiguration_completion___block_invoke;
  v8[3] = &unk_278BB6D40;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(AEAssessmentUIServiceProxy *)self _activateWithConfiguration:a3 completion:v8];
}

- (void)animateInWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__AEAssessmentUIServiceProxy_animateInWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AEAssessmentUIServiceProxy *)self _animateInWithCompletion:v6];
}

- (void)animateOutWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__AEAssessmentUIServiceProxy_animateOutWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AEAssessmentUIServiceProxy *)self _animateOutWithCompletion:v6];
}

- (void)deactivateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__AEAssessmentUIServiceProxy_deactivateWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AEAssessmentUIServiceProxy *)self _deactivateWithCompletion:v6];
}

- (id)initWithXPCProxy:(void *)a3 queue:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = AEAssessmentUIServiceProxy;
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
  v9 = [[AEAssessmentUIServiceProxy alloc] initWithXPCProxy:v8 queue:v4];

  return v9;
}

+ (id)serviceProxyWithQueue:(id)a3
{
  v4 = a3;
  v5 = [[AEServiceXPCConnectionOrigin alloc] initWithServiceName:?];
  v6 = [(AEAssessmentUIServiceProxy *)a1 proxyWithOrigin:v5 queue:v4];

  return v6;
}

+ (id)proxyWithEndpoint:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:v7];

  v9 = [(AEAssessmentUIServiceProxy *)a1 proxyWithOrigin:v8 queue:v6];

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

- (void)setInterruptionHandler:(id)a3
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AEAssessmentUIServiceProxy *)self setInterruptionHandler:a3];
}

- (void)setInvalidationHandler:(id)a3
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AEAssessmentUIServiceProxy *)self setInvalidationHandler:a3];
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

- (void)_activateWithConfiguration:(void *)a3 completion:
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v11 = __68__AEAssessmentUIServiceProxy__activateWithConfiguration_completion___block_invoke;
    v12 = &unk_278BB6D68;
    v7 = v5;
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

- (void)_animateInWithCompletion:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 8);
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

- (void)_animateOutWithCompletion:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 8);
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

- (void)_deactivateWithCompletion:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v6 = v4;
    v7 = OUTLINED_FUNCTION_2_0();
    v9 = [(AEXPCProxy *)v7 remoteObjectProxyWithErrorHandler:v8];
    [v9 deactivateWithCompletion:v2];
  }
}

@end