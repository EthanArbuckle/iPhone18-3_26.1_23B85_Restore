@interface AELifecycleEventHandlingProxy
+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue;
- (id)initWithXPCProxy:(void *)proxy queue:;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (void)_handleEventDidBeginWithCompletion:(uint64_t)completion;
- (void)_handleEventDidInvalidateWithError:(void *)error completion:;
- (void)_handleEventWantsBeginSingleAppModeWithCompletion:(uint64_t)completion;
- (void)_handleEventWantsEndSingleAppModeWithCompletion:(uint64_t)completion;
- (void)_handleEventWantsPresentBannerWithTitle:(void *)title duration:(void *)duration completion:;
- (void)_handleEventWantsStartWindowContentCaptureWithCompletion:(uint64_t)completion;
- (void)_handleEventWantsStopWindowContentCaptureWithCompletion:(uint64_t)completion;
- (void)handleEventDidBeginWithCompletion:(id)completion;
- (void)handleEventDidInvalidateWithError:(id)error completion:(id)completion;
- (void)handleEventWantsBeginSingleAppModeWithCompletion:(id)completion;
- (void)handleEventWantsEndSingleAppModeWithCompletion:(id)completion;
- (void)handleEventWantsPresentBannerWithTitle:(id)title duration:(id)duration completion:(id)completion;
- (void)handleEventWantsStartWindowContentCaptureWithCompletion:(id)completion;
- (void)handleEventWantsStopWindowContentCaptureWithCompletion:(id)completion;
- (void)invalidate;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation AELifecycleEventHandlingProxy

- (void)handleEventDidBeginWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__AELifecycleEventHandlingProxy_handleEventDidBeginWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AELifecycleEventHandlingProxy *)self _handleEventDidBeginWithCompletion:v6];
}

- (void)handleEventDidInvalidateWithError:(id)error completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__AELifecycleEventHandlingProxy_handleEventDidInvalidateWithError_completion___block_invoke;
  v8[3] = &unk_278BB6D40;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(AELifecycleEventHandlingProxy *)self _handleEventDidInvalidateWithError:error completion:v8];
}

- (void)handleEventWantsBeginSingleAppModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__AELifecycleEventHandlingProxy_handleEventWantsBeginSingleAppModeWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsBeginSingleAppModeWithCompletion:v6];
}

- (void)handleEventWantsEndSingleAppModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__AELifecycleEventHandlingProxy_handleEventWantsEndSingleAppModeWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsEndSingleAppModeWithCompletion:v6];
}

- (void)handleEventWantsPresentBannerWithTitle:(id)title duration:(id)duration completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__AELifecycleEventHandlingProxy_handleEventWantsPresentBannerWithTitle_duration_completion___block_invoke;
  v10[3] = &unk_278BB6D40;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsPresentBannerWithTitle:title duration:duration completion:v10];
}

- (void)handleEventWantsStartWindowContentCaptureWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__AELifecycleEventHandlingProxy_handleEventWantsStartWindowContentCaptureWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsStartWindowContentCaptureWithCompletion:v6];
}

- (void)handleEventWantsStopWindowContentCaptureWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__AELifecycleEventHandlingProxy_handleEventWantsStopWindowContentCaptureWithCompletion___block_invoke;
  v6[3] = &unk_278BB6D40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AELifecycleEventHandlingProxy *)self _handleEventWantsStopWindowContentCaptureWithCompletion:v6];
}

- (id)initWithXPCProxy:(void *)proxy queue:
{
  v6 = a2;
  proxyCopy = proxy;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = AELifecycleEventHandlingProxy;
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

+ (id)proxyWithEndpoint:(id)endpoint queue:(id)queue
{
  queueCopy = queue;
  endpointCopy = endpoint;
  v7 = [[AEAnonymousXPCConnectionOrigin alloc] initWithEndpoint:endpointCopy];

  v8 = objc_opt_new();
  makeInterface = [v8 makeInterface];

  v10 = [[AEXPCProxy alloc] initWithOrigin:v7 interface:makeInterface];
  v11 = [[AELifecycleEventHandlingProxy alloc] initWithXPCProxy:v10 queue:queueCopy];

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

- (void)setInterruptionHandler:(id)handler
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AELifecycleEventHandlingProxy *)self setInterruptionHandler:handler];
}

- (void)setInvalidationHandler:(id)handler
{
  if (self)
  {
    self = self->_xpcProxy;
  }

  [(AELifecycleEventHandlingProxy *)self setInvalidationHandler:handler];
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

- (void)_handleEventDidBeginWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = *(completion + 8);
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

- (void)_handleEventDidInvalidateWithError:(void *)error completion:
{
  errorCopy = error;
  if (self)
  {
    v6 = *(self + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v11 = __79__AELifecycleEventHandlingProxy__handleEventDidInvalidateWithError_completion___block_invoke;
    v12 = &unk_278BB6D68;
    v7 = errorCopy;
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

- (void)_handleEventWantsBeginSingleAppModeWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = *(completion + 8);
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

- (void)_handleEventWantsEndSingleAppModeWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = *(completion + 8);
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

- (void)_handleEventWantsPresentBannerWithTitle:(void *)title duration:(void *)duration completion:
{
  durationCopy = duration;
  if (self)
  {
    v8 = *(self + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    v14 = __93__AELifecycleEventHandlingProxy__handleEventWantsPresentBannerWithTitle_duration_completion___block_invoke;
    v15 = &unk_278BB6D68;
    v9 = durationCopy;
    v16 = v9;
    titleCopy = title;
    v11 = a2;
    v12 = [(AEXPCProxy *)v8 remoteObjectProxyWithErrorHandler:v13];
    [v12 handleEventWantsPresentBannerWithTitle:v11 duration:titleCopy completion:v9];
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

- (void)_handleEventWantsStartWindowContentCaptureWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = *(completion + 8);
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

- (void)_handleEventWantsStopWindowContentCaptureWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = *(completion + 8);
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