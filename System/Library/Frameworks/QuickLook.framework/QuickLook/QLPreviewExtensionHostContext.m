@interface QLPreviewExtensionHostContext
- (QLRemoteItemViewController)remoteItemViewController;
- (id)protocolServiceWithErrorHandler:(id)a3;
- (void)generatePreviewForURL:(id)a3 completion:(id)a4;
- (void)getARQLInlineProxy2WithCompletionHandler:(id)a3;
- (void)getARQLInlineProxy3WithCompletionHandler:(id)a3;
- (void)getARQLInlineProxyWithCompletionHandler:(id)a3;
- (void)getPrinterProxyWithCompletionHandler:(id)a3;
- (void)invalidateServiceWithCompletionHandler:(id)a3;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)previewControllerDidUpdatePreferredContentSize:(id)a3;
- (void)previewControllerDidUpdateTitle:(id)a3;
- (void)setHostViewControllerProxy:(id)a3;
@end

@implementation QLPreviewExtensionHostContext

- (id)protocolServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewExtensionHostContext *)self _auxiliaryConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__QLPreviewExtensionHostContext_protocolServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_278B58D18;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __65__QLPreviewExtensionHostContext_protocolServiceWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = [v3 localizedDescription];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_ERROR, "Error calling service: %@ #Remote", &v10, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __66__QLPreviewExtensionHostContext_previewControllerWantsFullScreen___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained previewControllerWantsFullScreen:*(a1 + 40)];
}

- (void)previewControllerDidUpdateTitle:(id)a3
{
  v4 = a3;
  v3 = v4;
  QLRunInMainThread();
}

void __65__QLPreviewExtensionHostContext_previewControllerDidUpdateTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained previewControllerDidUpdateTitle:*(a1 + 40)];
}

- (void)previewControllerDidUpdatePreferredContentSize:(id)a3
{
  v4 = a3;
  v3 = v4;
  QLRunInMainThread();
}

void __80__QLPreviewExtensionHostContext_previewControllerDidUpdatePreferredContentSize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained previewControllerDidUpdatePreferredContentSize:*(a1 + 40)];
}

- (void)setHostViewControllerProxy:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewExtensionHostContext *)self protocolService];
  [v5 setHostViewControllerProxy:v4];
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v8;
  v11 = a4;
  objc_opt_class();
  v12 = v10;
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_alloc(MEMORY[0x277CDAB18]);
    v12 = [v13 initWithURL:v10 sandboxType:*MEMORY[0x277D861B8]];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__QLPreviewExtensionHostContext_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v19[3] = &unk_278B58D18;
  v14 = v9;
  v20 = v14;
  v15 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__QLPreviewExtensionHostContext_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3;
  v17[3] = &unk_278B58D68;
  v18 = v14;
  v16 = v14;
  [v15 loadPreviewControllerWithContents:v12 context:v11 completionHandler:v17];
}

void __93__QLPreviewExtensionHostContext_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  QLRunInMainThread();
}

void __93__QLPreviewExtensionHostContext_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v6 = v8;
  v7 = v5;
  QLRunInMainThread();
}

- (void)getPrinterProxyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__QLPreviewExtensionHostContext_getPrinterProxyWithCompletionHandler___block_invoke;
  v10[3] = &unk_278B58D18;
  v5 = v4;
  v11 = v5;
  v6 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__QLPreviewExtensionHostContext_getPrinterProxyWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_278B58D90;
  v9 = v5;
  v7 = v5;
  [v6 getPrinterProxyWithCompletionHandler:v8];
}

void __70__QLPreviewExtensionHostContext_getPrinterProxyWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  QLRunInMainThread();
}

void __70__QLPreviewExtensionHostContext_getPrinterProxyWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  QLRunInMainThread();
}

- (void)invalidateServiceWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewExtensionHostContext *)self protocolService];
  [v5 invalidateServiceWithCompletionHandler:v4];
}

- (void)generatePreviewForURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__QLPreviewExtensionHostContext_generatePreviewForURL_completion___block_invoke;
  v10[3] = &unk_278B58D18;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v10];
  [v9 generatePreviewForURL:v8 completion:v7];
}

- (void)getARQLInlineProxyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__QLPreviewExtensionHostContext_getARQLInlineProxyWithCompletionHandler___block_invoke;
  v7[3] = &unk_278B58D18;
  v8 = v4;
  v5 = v4;
  v6 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v7];
  [v6 getARQLInlineProxyWithCompletionHandler:v5];
}

- (void)getARQLInlineProxy2WithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__QLPreviewExtensionHostContext_getARQLInlineProxy2WithCompletionHandler___block_invoke;
  v7[3] = &unk_278B58D18;
  v8 = v4;
  v5 = v4;
  v6 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v7];
  [v6 getARQLInlineProxy2WithCompletionHandler:v5];
}

- (void)getARQLInlineProxy3WithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__QLPreviewExtensionHostContext_getARQLInlineProxy3WithCompletionHandler___block_invoke;
  v7[3] = &unk_278B58D18;
  v8 = v4;
  v5 = v4;
  v6 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v7];
  [v6 getARQLInlineProxy3WithCompletionHandler:v5];
}

- (QLRemoteItemViewController)remoteItemViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteItemViewController);

  return WeakRetained;
}

@end