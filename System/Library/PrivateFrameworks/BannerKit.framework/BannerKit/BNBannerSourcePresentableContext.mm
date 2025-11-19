@interface BNBannerSourcePresentableContext
- (BNBannerSourcePresentableContext)initWithPresentableIdentification:(id)a3 contentBehavior:(int64_t)a4 serviceDomain:(id)a5;
- (BNBannerSourcePresentableContextDelegate)delegate;
- (void)__setDraggingDismissalEnabled:(id)a3 error:(id *)a4;
- (void)__setDraggingInteractionEnabled:(id)a3 error:(id *)a4;
- (void)__setTouchOutsideDismissalEnabled:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)handlePresentableWillNotAppearWithReason:(id)a3;
- (void)handleTemplateContentEvent:(int64_t)a3;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)updatePresentableAppearState:(int)a3 reason:(id)a4;
- (void)updateUserInteractionWillBegin:(BOOL)a3;
@end

@implementation BNBannerSourcePresentableContext

- (BNBannerSourcePresentableContext)initWithPresentableIdentification:(id)a3 contentBehavior:(int64_t)a4 serviceDomain:(id)a5
{
  v9 = a3;
  v10 = a5;
  v34.receiver = self;
  v34.super_class = BNBannerSourcePresentableContext;
  v11 = [(BNBannerSourcePresentableContext *)&v34 init];
  if (v11)
  {
    if (!v9)
    {
      [BNBannerSourcePresentableContext initWithPresentableIdentification:a2 contentBehavior:v11 serviceDomain:?];
    }

    v12 = [v9 requesterIdentifier];
    v13 = [v12 copy];
    requesterIdentifier = v11->_requesterIdentifier;
    v11->_requesterIdentifier = v13;

    v15 = [v9 requestIdentifier];
    v16 = [v15 copy];
    requestIdentifier = v11->_requestIdentifier;
    v11->_requestIdentifier = v16;

    v18 = [v9 uniquePresentableIdentifier];
    v19 = [v18 copy];
    uniquePresentableIdentifier = v11->_uniquePresentableIdentifier;
    v11->_uniquePresentableIdentifier = v19;

    v11->_contentBehavior = a4;
    Serial = BSDispatchQueueCreateSerial();
    queue = v11->_queue;
    v11->_queue = Serial;

    v23 = MEMORY[0x1E698F4B8];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __100__BNBannerSourcePresentableContext_initWithPresentableIdentification_contentBehavior_serviceDomain___block_invoke;
    v31 = &unk_1E81E4648;
    v32 = v10;
    v24 = v11;
    v33 = v24;
    v25 = [v23 listenerWithConfigurator:&v28];
    v26 = v24[1];
    v24[1] = v25;

    [v24[1] activate];
  }

  return v11;
}

void __100__BNBannerSourcePresentableContext_initWithPresentableIdentification_contentBehavior_serviceDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setDomain:v3];
  v4 = +[BNPresentableContextSessionSpecification identifier];
  [v6 setService:v4];

  v5 = BNSceneIdentifierForRequest(*(*(a1 + 40) + 40), *(*(a1 + 40) + 48), *(*(a1 + 40) + 56));
  [v6 setInstance:v5];

  [v6 setDelegate:*(a1 + 40)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  v3.receiver = self;
  v3.super_class = BNBannerSourcePresentableContext;
  [(BNBannerSourcePresentableContext *)&v3 dealloc];
}

- (void)handleTemplateContentEvent:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(BSServiceConnectionHost *)self->_connection remoteTarget];
  if (v5)
  {
    if (self->_contentBehavior == 1)
    {
      objc_initWeak(location, self);
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __63__BNBannerSourcePresentableContext_handleTemplateContentEvent___block_invoke;
      v14[3] = &unk_1E81E4670;
      objc_copyWeak(&v15, location);
      [v5 __handleTemplateContentEvent:v6 reply:v14];

      objc_destroyWeak(&v15);
      objc_destroyWeak(location);
    }

    else
    {
      objc_initWeak(&v13, self);
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v12 = 0;
      [v5 __handleTemplateContentEvent:v7 error:&v12];
      v8 = v12;

      if (v8)
      {
        v9 = BNLogContextHost;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_loadWeakRetained(&v13);
          v11 = BNPresentableIdentificationDescription(v10);
          *location = 138543618;
          *&location[4] = v11;
          v17 = 2114;
          v18 = v8;
          _os_log_error_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_ERROR, "Error asking client presentable to handle template content event: presentable: %{public}@; error: %{public}@", location, 0x16u);
        }
      }

      objc_destroyWeak(&v13);
    }
  }

  else if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    [BNBannerSourcePresentableContext handleTemplateContentEvent:];
  }
}

void __63__BNBannerSourcePresentableContext_handleTemplateContentEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    __63__BNBannerSourcePresentableContext_handleTemplateContentEvent___block_invoke_cold_1();
  }
}

- (void)updatePresentableAppearState:(int)a3 reason:(id)a4
{
  v4 = *&a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(BSServiceConnectionHost *)self->_connection remoteTarget];
  if (v7)
  {
    if (self->_contentBehavior == 1)
    {
      objc_initWeak(location, self);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72__BNBannerSourcePresentableContext_updatePresentableAppearState_reason___block_invoke;
      v16[3] = &unk_1E81E4670;
      objc_copyWeak(&v17, location);
      [v7 __setBannerAppearState:v8 reason:v6 reply:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
    }

    else
    {
      objc_initWeak(&v15, self);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      v14 = 0;
      [v7 __setBannerAppearState:v9 reason:v6 error:&v14];
      v10 = v14;

      if (v10)
      {
        v11 = BNLogContextHost;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = objc_loadWeakRetained(&v15);
          v13 = BNPresentableIdentificationDescription(v12);
          *location = 138543618;
          *&location[4] = v13;
          v19 = 2114;
          v20 = v10;
          _os_log_error_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_ERROR, "Error updating client presentable appearance state: presentable: %{public}@; error: %{public}@", location, 0x16u);
        }
      }

      objc_destroyWeak(&v15);
    }
  }

  else if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    [BNBannerSourcePresentableContext handleTemplateContentEvent:];
  }
}

void __72__BNBannerSourcePresentableContext_updatePresentableAppearState_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    __72__BNBannerSourcePresentableContext_updatePresentableAppearState_reason___block_invoke_cold_1();
  }
}

- (void)handlePresentableWillNotAppearWithReason:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BSServiceConnectionHost *)self->_connection remoteTarget];
  if (v5)
  {
    if (self->_contentBehavior == 1)
    {
      objc_initWeak(location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __77__BNBannerSourcePresentableContext_handlePresentableWillNotAppearWithReason___block_invoke;
      v12[3] = &unk_1E81E4670;
      objc_copyWeak(&v13, location);
      [v5 __bannerWillNotAppearWithReason:v4 reply:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    else
    {
      objc_initWeak(&v11, self);
      v10 = 0;
      [v5 __bannerWillNotAppearWithReason:v4 error:&v10];
      v6 = v10;
      if (v6)
      {
        v7 = BNLogContextHost;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = objc_loadWeakRetained(&v11);
          v9 = BNPresentableIdentificationDescription(v8);
          *location = 138543618;
          *&location[4] = v9;
          v15 = 2114;
          v16 = v6;
          _os_log_error_impl(&dword_1C42DC000, v7, OS_LOG_TYPE_ERROR, "Error notifying client presentable will not appear: presentable: %{public}@; error: %{public}@", location, 0x16u);
        }
      }

      objc_destroyWeak(&v11);
    }
  }

  else if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    [BNBannerSourcePresentableContext handleTemplateContentEvent:];
  }
}

void __77__BNBannerSourcePresentableContext_handlePresentableWillNotAppearWithReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    __77__BNBannerSourcePresentableContext_handlePresentableWillNotAppearWithReason___block_invoke_cold_1();
  }
}

- (void)updateUserInteractionWillBegin:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(BSServiceConnectionHost *)self->_connection remoteTarget];
  if (v5)
  {
    if (self->_contentBehavior == 1)
    {
      objc_initWeak(location, self);
      v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __67__BNBannerSourcePresentableContext_updateUserInteractionWillBegin___block_invoke;
      v14[3] = &unk_1E81E4670;
      objc_copyWeak(&v15, location);
      [v5 __setUserInteractionWillBegin:v6 reply:v14];

      objc_destroyWeak(&v15);
      objc_destroyWeak(location);
    }

    else
    {
      objc_initWeak(&v13, self);
      v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v12 = 0;
      [v5 __setUserInteractionWillBegin:v7 error:&v12];
      v8 = v12;

      if (v8)
      {
        v9 = BNLogContextHost;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_loadWeakRetained(&v13);
          v11 = BNPresentableIdentificationDescription(v10);
          *location = 138543618;
          *&location[4] = v11;
          v17 = 2114;
          v18 = v8;
          _os_log_error_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_ERROR, "Error informing client of user interaction change: presentable: %{public}@; error: %{public}@", location, 0x16u);
        }
      }

      objc_destroyWeak(&v13);
    }
  }

  else if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    [BNBannerSourcePresentableContext handleTemplateContentEvent:];
  }
}

void __67__BNBannerSourcePresentableContext_updateUserInteractionWillBegin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    __67__BNBannerSourcePresentableContext_updateUserInteractionWillBegin___block_invoke_cold_1();
  }
}

- (void)invalidate
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  connectionListener = self->_connectionListener;
  self->_connectionListener = 0;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v12 = [v9 remoteProcess];
    v18 = 0;
    v13 = [WeakRetained bannerSourcePresentableContext:self isConnectingProcessAuthorized:v12 error:&v18];
    v14 = v18;

    if (v13)
    {
      v15 = self;
      objc_sync_enter(v15);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __78__BNBannerSourcePresentableContext_listener_didReceiveConnection_withContext___block_invoke;
      v17[3] = &unk_1E81E44F0;
      v17[4] = v15;
      [v9 configureConnection:v17];
      objc_storeStrong(&v15->_connection, a4);
      [(BSServiceConnectionHost *)v15->_connection activate];
      objc_sync_exit(v15);

      goto LABEL_8;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_ERROR))
  {
    [BNBannerSourcePresentableContext listener:v16 didReceiveConnection:self withContext:v14];
  }

  [v9 invalidate];
LABEL_8:
}

void __78__BNBannerSourcePresentableContext_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BNPresentableContextSessionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[BNPresentableContextSessionSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __78__BNBannerSourcePresentableContext_listener_didReceiveConnection_withContext___block_invoke_2;
  v9 = &unk_1E81E4698;
  objc_copyWeak(&v10, &location);
  [v3 setInvalidationHandler:&v6];
  [v3 setTargetQueue:{*(*(a1 + 32) + 16), v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __78__BNBannerSourcePresentableContext_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = BNLogContextHost;
    if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1C42DC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ (host-side) connection invalidated", &v7, 0xCu);
    }

    v6 = WeakRetained[3];
    WeakRetained[3] = 0;

    if (WeakRetained[9] == 1)
    {
      *(WeakRetained + 32) = 1;
    }
  }
}

- (void)__setDraggingDismissalEnabled:(id)a3 error:(id *)a4
{
  self->_draggingDismissalEnabled = [a3 integerValue] != 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bannerSourcePresentableContextDraggingDismissalEnabledDidChange:self];
  }
}

- (void)__setDraggingInteractionEnabled:(id)a3 error:(id *)a4
{
  self->_draggingInteractionEnabled = [a3 integerValue] != 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bannerSourcePresentableContextDraggingInteractionEnabledDidChange:self];
  }
}

- (void)__setTouchOutsideDismissalEnabled:(id)a3 error:(id *)a4
{
  self->_touchOutsideDismissalEnabled = [a3 integerValue] != 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bannerSourcePresentableContextTouchOutsideDismissalEnabledDidChange:self];
  }
}

- (BNBannerSourcePresentableContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithPresentableIdentification:(uint64_t)a1 contentBehavior:(uint64_t)a2 serviceDomain:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNBannerSourcePresentableContext.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"presentableIdentification"}];
}

void __63__BNBannerSourcePresentableContext_handleTemplateContentEvent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = BNPresentableIdentificationDescription(v3);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C42DC000, v5, v6, "Error asking client presentable to handle template content event: presentable: %{public}@; error: %{public}@", v7, v8, v9, v10, v11);
}

void __72__BNBannerSourcePresentableContext_updatePresentableAppearState_reason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = BNPresentableIdentificationDescription(v3);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C42DC000, v5, v6, "Error updating client presentable appearance state: presentable: %{public}@; error: %{public}@", v7, v8, v9, v10, v11);
}

void __77__BNBannerSourcePresentableContext_handlePresentableWillNotAppearWithReason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = BNPresentableIdentificationDescription(v3);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C42DC000, v5, v6, "Error notifying client presentable will not appear: presentable: %{public}@; error: %{public}@", v7, v8, v9, v10, v11);
}

void __67__BNBannerSourcePresentableContext_updateUserInteractionWillBegin___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = BNPresentableIdentificationDescription(v3);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C42DC000, v5, v6, "Error informing client of user interaction change: presentable: %{public}@; error: %{public}@", v7, v8, v9, v10, v11);
}

- (void)listener:(void *)a1 didReceiveConnection:(uint64_t)a2 withContext:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a3 localizedDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_1C42DC000, v4, OS_LOG_TYPE_ERROR, "%{public}@ (host-side) connection failed to authenticate: %{public}@", &v8, 0x16u);
}

@end