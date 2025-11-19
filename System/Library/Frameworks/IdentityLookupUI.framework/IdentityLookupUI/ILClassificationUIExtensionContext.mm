@interface ILClassificationUIExtensionContext
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)classificationResponseForRequest:(id)a3 completion:(id)a4;
- (void)prepareForClassificationRequest:(id)a3;
@end

@implementation ILClassificationUIExtensionContext

void __72__ILClassificationUIExtensionContext_setReadyForClassificationResponse___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ILDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__ILClassificationUIExtensionContext_setReadyForClassificationResponse___block_invoke_cold_1(v2, v3);
  }
}

- (void)prepareForClassificationRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ILDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_238A6C000, v5, OS_LOG_TYPE_DEFAULT, "Asked to prepare view controller for classification request %@", buf, 0xCu);
  }

  v6 = [(ILClassificationUIExtensionContext *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__ILClassificationUIExtensionContext_prepareForClassificationRequest___block_invoke;
    v10[3] = &unk_278A5F520;
    v11 = v4;
    v12 = self;
    dispatch_async(MEMORY[0x277D85CD0], v10);
    v8 = v11;
  }

  else
  {
    v8 = ILDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ILClassificationUIExtensionContext prepareForClassificationRequest:?];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __70__ILClassificationUIExtensionContext_prepareForClassificationRequest___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_238A6C000, v2, OS_LOG_TYPE_DEFAULT, "Asking extension to prepare for classification request: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) viewController];
  [v4 prepareForClassificationRequest:*(a1 + 32)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)classificationResponseForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ILClassificationUIExtensionContext *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__ILClassificationUIExtensionContext_classificationResponseForRequest_completion___block_invoke;
    block[3] = &unk_278A5F568;
    v13 = &v14;
    block[4] = self;
    v12 = v6;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v7[2](v7, v15[5], 0);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = ILDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ILClassificationUIExtensionContext classificationResponseForRequest:? completion:?];
    }
  }
}

void __82__ILClassificationUIExtensionContext_classificationResponseForRequest_completion___block_invoke(uint64_t a1)
{
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238A6C000, v2, OS_LOG_TYPE_DEFAULT, "Asking extension to for classification response...", v7, 2u);
  }

  v3 = [*(a1 + 32) viewController];
  v4 = [v3 classificationResponseForRequest:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationUIExtensionContext *)self _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

void __72__ILClassificationUIExtensionContext_setReadyForClassificationResponse___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238A6C000, a2, OS_LOG_TYPE_ERROR, "remoteObjectProxy error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)prepareForClassificationRequest:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 viewController];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238A6C000, v2, v3, "View controller %@ is not of class %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)classificationResponseForRequest:(void *)a1 completion:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 viewController];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238A6C000, v2, v3, "View controller %@ is not of class %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end