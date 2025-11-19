@interface AELifecycleEventHandlingProxy
+ (id)proxyWithEndpoint:(id)a3 queue:(id)a4;
- (id)initWithXPCProxy:(void *)a3 queue:;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (void)_handleEventDidBeginWithCompletion:(uint64_t)a1;
- (void)_handleEventDidInvalidateWithError:(void *)a3 completion:;
- (void)_handleEventWantsBeginSingleAppModeWithCompletion:(uint64_t)a1;
- (void)_handleEventWantsEndSingleAppModeWithCompletion:(uint64_t)a1;
- (void)_handleEventWantsPresentBannerWithTitle:(void *)a3 duration:(void *)a4 completion:;
- (void)_handleEventWantsStartWindowContentCaptureWithCompletion:(uint64_t)a1;
- (void)_handleEventWantsStopWindowContentCaptureWithCompletion:(uint64_t)a1;
- (void)handleEventDidBeginWithCompletion:(id)a3;
- (void)handleEventDidInvalidateWithError:(id)a3 completion:(id)a4;
- (void)handleEventWantsBeginSingleAppModeWithCompletion:(id)a3;
- (void)handleEventWantsEndSingleAppModeWithCompletion:(id)a3;
- (void)handleEventWantsPresentBannerWithTitle:(id)a3 duration:(id)a4 completion:(id)a5;
- (void)handleEventWantsStartWindowContentCaptureWithCompletion:(id)a3;
- (void)handleEventWantsStopWindowContentCaptureWithCompletion:(id)a3;
- (void)invalidate;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation AELifecycleEventHandlingProxy

- (void)handleEventDidBeginWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__AELifecycleEventHandlingProxy_handleEventDidBeginWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AELifecycleEventHandlingProxy *)self _handleEventDidBeginWithCompletion:v6];
}

- (void)handleEventDidInvalidateWithError:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__AELifecycleEventHandlingProxy_handleEventDidInvalidateWithError_completion___block_invoke;
  v8[3] = &unk_278BB6D40;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(AELifecycleEventHandlingProxy *)self _handleEventDidInvalidateWithError:a3 completion:v8];
}

- (void)handleEventWantsBeginSingleAppModeWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__AELifecycleEventHandlingProxy_handleEventWantsBeginSingleAppModeWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsBeginSingleAppModeWithCompletion:v6];
}

- (void)handleEventWantsEndSingleAppModeWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__AELifecycleEventHandlingProxy_handleEventWantsEndSingleAppModeWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsEndSingleAppModeWithCompletion:v6];
}

- (void)handleEventWantsPresentBannerWithTitle:(id)a3 duration:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__AELifecycleEventHandlingProxy_handleEventWantsPresentBannerWithTitle_duration_completion___block_invoke;
  v10[3] = &unk_278BB6D40;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsPresentBannerWithTitle:a3 duration:a4 completion:v10];
}

- (void)handleEventWantsStartWindowContentCaptureWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__AELifecycleEventHandlingProxy_handleEventWantsStartWindowContentCaptureWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsStartWindowContentCaptureWithCompletion:v6];
}

- (void)handleEventWantsStopWindowContentCaptureWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__AELifecycleEventHandlingProxy_handleEventWantsStopWindowContentCaptureWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsStopWindowContentCaptureWithCompletion:v6];
}

- (id)initWithXPCProxy:(void *)a3 queue:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = AELifecycleEventHandlingProxy;
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

+ (id)proxyWithEndpoint:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:v6];

  v8 = objc_opt_new();
  v9 = [v8 makeInterface];

  v10 = [[AEXPCProxy alloc] initWithOrigin:v7 interface:v9];
  v11 = [[AELifecycleEventHandlingProxy alloc] initWithXPCProxy:v10 queue:v5];

  return v11;
}

- (id)interruptionHandler
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  return [(AELifecycleEventHandlingProxy *)self interruptionHandler];
}

- (id)invalidationHandler
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  return [(AELifecycleEventHandlingProxy *)self invalidationHandler];
}

- (void)setInterruptionHandler:(id)a3
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AELifecycleEventHandlingProxy *)self setInterruptionHandler:a3];
}

- (void)setInvalidationHandler:(id)a3
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AELifecycleEventHandlingProxy *)self setInvalidationHandler:a3];
}

- (void)invalidate
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AELifecycleEventHandlingProxy *)self invalidate];
}

void __67__AELifecycleEventHandlingProxy_handleEventDidBeginWithCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)_handleEventDidBeginWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v5 = v3;
    v6 = OUTLINED_FUNCTION_2_0();
    [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v7];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v8 handleEventDidBeginWithCompletion:?];
  }
}

void __78__AELifecycleEventHandlingProxy_handleEventDidInvalidateWithError_completion___block_invoke(uint64_t a1, void *a2)
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

- (void)_handleEventDidInvalidateWithError:(void *)a3 completion:
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v11 = __79__AELifecycleEventHandlingProxy__handleEventDidInvalidateWithError_completion___block_invoke;
    v12 = &unk_278BB6D68;
    v7 = v5;
    v13 = v7;
    v8 = a2;
    v9 = [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v10];
    [v9 handleEventDidInvalidateWithError:v8 completion:v7];
  }
}

void __82__AELifecycleEventHandlingProxy_handleEventWantsBeginSingleAppModeWithCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)_handleEventWantsBeginSingleAppModeWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v5 = v3;
    v6 = OUTLINED_FUNCTION_2_0();
    [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v7];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v8 handleEventWantsBeginSingleAppModeWithCompletion:?];
  }
}

void __80__AELifecycleEventHandlingProxy_handleEventWantsEndSingleAppModeWithCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)_handleEventWantsEndSingleAppModeWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v5 = v3;
    v6 = OUTLINED_FUNCTION_2_0();
    [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v7];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v8 handleEventWantsEndSingleAppModeWithCompletion:?];
  }
}

void __92__AELifecycleEventHandlingProxy_handleEventWantsPresentBannerWithTitle_duration_completion___block_invoke(uint64_t a1, void *a2)
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

- (void)_handleEventWantsPresentBannerWithTitle:(void *)a3 duration:(void *)a4 completion:
{
  v7 = a4;
  if (a1)
  {
    v8 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v14 = __93__AELifecycleEventHandlingProxy__handleEventWantsPresentBannerWithTitle_duration_completion___block_invoke;
    v15 = &unk_278BB6D68;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = a2;
    v12 = [(AEXPCProxy *)v8 remoteObjectProxyWithErrorHandler:v13];
    [v12 handleEventWantsPresentBannerWithTitle:v11 duration:v10 completion:v9];
  }
}

void __89__AELifecycleEventHandlingProxy_handleEventWantsStartWindowContentCaptureWithCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)_handleEventWantsStartWindowContentCaptureWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v5 = v3;
    v6 = OUTLINED_FUNCTION_2_0();
    [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v7];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v8 handleEventWantsStartWindowContentCaptureWithCompletion:?];
  }
}

void __88__AELifecycleEventHandlingProxy_handleEventWantsStopWindowContentCaptureWithCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)_handleEventWantsStopWindowContentCaptureWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v5 = v3;
    v6 = OUTLINED_FUNCTION_2_0();
    [(AEXPCProxy *)v6 remoteObjectProxyWithErrorHandler:v7];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    [v8 handleEventWantsStopWindowContentCaptureWithCompletion:?];
  }
}

@end