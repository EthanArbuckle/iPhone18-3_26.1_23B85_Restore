@interface ILClassificationUIExtensionHostContext
- (ILClassificationUIExtensionHostContextDelegate)delegate;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)classificationResponseForRequest:(id)a3 completion:(id)a4;
- (void)prepareForClassificationRequest:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setReadyForClassificationResponse:(BOOL)a3;
@end

@implementation ILClassificationUIExtensionHostContext

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  [(ILClassificationUIExtensionHostContext *)self setDelegate:a3];
  [(ILClassificationUIExtensionHostContext *)self setDelegateQueue:v6];
}

- (void)prepareForClassificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationUIExtensionHostContext *)self remoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  [v5 prepareForClassificationRequest:v4];
}

void __74__ILClassificationUIExtensionHostContext_prepareForClassificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ILDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__ILClassificationUIExtensionHostContext_prepareForClassificationRequest___block_invoke_cold_1(v2, v3);
  }
}

- (void)classificationResponseForRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__ILClassificationUIExtensionHostContext_classificationResponseForRequest_completion___block_invoke;
  v14[3] = &unk_278A5F5B8;
  v14[4] = self;
  v15 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x23EE6F850](v14);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__ILClassificationUIExtensionHostContext_classificationResponseForRequest_completion___block_invoke_3;
  v12[3] = &unk_278A5F5E0;
  v13 = v9;
  v10 = v9;
  v11 = [(ILClassificationUIExtensionHostContext *)self remoteObjectProxyWithErrorHandler:v12];
  [v11 classificationResponseForRequest:v8 completion:v10];
}

void __86__ILClassificationUIExtensionHostContext_classificationResponseForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ILClassificationUIExtensionHostContext_classificationResponseForRequest_completion___block_invoke_2;
  block[3] = &unk_278A5F590;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __86__ILClassificationUIExtensionHostContext_classificationResponseForRequest_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__ILClassificationUIExtensionHostContext_prepareForClassificationRequest___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setReadyForClassificationResponse:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = ILDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v3;
    _os_log_impl(&dword_238A6C000, v5, OS_LOG_TYPE_DEFAULT, "setReadyForClassificationResponse: %d", buf, 8u);
  }

  v6 = [(ILClassificationUIExtensionHostContext *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(ILClassificationUIExtensionHostContext *)self delegateQueue];

    if (v8)
    {
      v9 = [(ILClassificationUIExtensionHostContext *)self delegateQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __76__ILClassificationUIExtensionHostContext_setReadyForClassificationResponse___block_invoke;
      v11[3] = &unk_278A5F608;
      v11[4] = self;
      v12 = v3;
      dispatch_async(v9, v11);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __76__ILClassificationUIExtensionHostContext_setReadyForClassificationResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 context:*(a1 + 32) didBecomeReadyForClassificationResponse:*(a1 + 40)];
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationUIExtensionHostContext *)self _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (ILClassificationUIExtensionHostContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __74__ILClassificationUIExtensionHostContext_prepareForClassificationRequest___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238A6C000, a2, OS_LOG_TYPE_ERROR, "error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end