@interface QLPreviewExtensionHostContext
- (QLRemoteItemViewController)remoteItemViewController;
- (id)protocolServiceWithErrorHandler:(id)handler;
- (void)generatePreviewForURL:(id)l completion:(id)completion;
- (void)getARQLInlineProxy2WithCompletionHandler:(id)handler;
- (void)getARQLInlineProxy3WithCompletionHandler:(id)handler;
- (void)getARQLInlineProxyWithCompletionHandler:(id)handler;
- (void)getPrinterProxyWithCompletionHandler:(id)handler;
- (void)invalidateServiceWithCompletionHandler:(id)handler;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)previewControllerDidUpdatePreferredContentSize:(id)size;
- (void)previewControllerDidUpdateTitle:(id)title;
- (void)setHostViewControllerProxy:(id)proxy;
@end

@implementation QLPreviewExtensionHostContext

- (id)protocolServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(QLPreviewExtensionHostContext *)self _auxiliaryConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__QLPreviewExtensionHostContext_protocolServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_278B58D18;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:v9];

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

- (void)previewControllerDidUpdateTitle:(id)title
{
  titleCopy = title;
  v3 = titleCopy;
  QLRunInMainThread();
}

void __65__QLPreviewExtensionHostContext_previewControllerDidUpdateTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained previewControllerDidUpdateTitle:*(a1 + 40)];
}

- (void)previewControllerDidUpdatePreferredContentSize:(id)size
{
  sizeCopy = size;
  v3 = sizeCopy;
  QLRunInMainThread();
}

void __80__QLPreviewExtensionHostContext_previewControllerDidUpdatePreferredContentSize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained previewControllerDidUpdatePreferredContentSize:*(a1 + 40)];
}

- (void)setHostViewControllerProxy:(id)proxy
{
  proxyCopy = proxy;
  protocolService = [(QLPreviewExtensionHostContext *)self protocolService];
  [protocolService setHostViewControllerProxy:proxyCopy];
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  v10 = contentsCopy;
  contextCopy = context;
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
  v14 = handlerCopy;
  v20 = v14;
  v15 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__QLPreviewExtensionHostContext_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3;
  v17[3] = &unk_278B58D68;
  v18 = v14;
  v16 = v14;
  [v15 loadPreviewControllerWithContents:v12 context:contextCopy completionHandler:v17];
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

- (void)getPrinterProxyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__QLPreviewExtensionHostContext_getPrinterProxyWithCompletionHandler___block_invoke;
  v10[3] = &unk_278B58D18;
  v5 = handlerCopy;
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

- (void)invalidateServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  protocolService = [(QLPreviewExtensionHostContext *)self protocolService];
  [protocolService invalidateServiceWithCompletionHandler:handlerCopy];
}

- (void)generatePreviewForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__QLPreviewExtensionHostContext_generatePreviewForURL_completion___block_invoke;
  v10[3] = &unk_278B58D18;
  v11 = completionCopy;
  v7 = completionCopy;
  lCopy = l;
  v9 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v10];
  [v9 generatePreviewForURL:lCopy completion:v7];
}

- (void)getARQLInlineProxyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__QLPreviewExtensionHostContext_getARQLInlineProxyWithCompletionHandler___block_invoke;
  v7[3] = &unk_278B58D18;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v7];
  [v6 getARQLInlineProxyWithCompletionHandler:v5];
}

- (void)getARQLInlineProxy2WithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__QLPreviewExtensionHostContext_getARQLInlineProxy2WithCompletionHandler___block_invoke;
  v7[3] = &unk_278B58D18;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v7];
  [v6 getARQLInlineProxy2WithCompletionHandler:v5];
}

- (void)getARQLInlineProxy3WithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__QLPreviewExtensionHostContext_getARQLInlineProxy3WithCompletionHandler___block_invoke;
  v7[3] = &unk_278B58D18;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(QLPreviewExtensionHostContext *)self protocolServiceWithErrorHandler:v7];
  [v6 getARQLInlineProxy3WithCompletionHandler:v5];
}

- (QLRemoteItemViewController)remoteItemViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteItemViewController);

  return WeakRetained;
}

@end