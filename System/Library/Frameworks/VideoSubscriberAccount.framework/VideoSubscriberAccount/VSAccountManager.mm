@interface VSAccountManager
- (BOOL)viewServiceRequestOperation:(id)a3 shouldAuthenticateAccountProviderWithIdentifier:(id)a4;
- (VSAccountManager)init;
- (VSAccountManagerResult)enqueueAccountMetadataRequest:(VSAccountMetadataRequest *)request completionHandler:(void *)completionHandler;
- (id)_enqueueViewServiceRequest:(id)a3 completionHandler:(id)a4;
- (id)delegate;
- (void)checkAccessStatusWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler;
- (void)viewServiceRequestOperation:(id)a3 dismissViewController:(id)a4;
- (void)viewServiceRequestOperation:(id)a3 presentViewController:(id)a4;
@end

@implementation VSAccountManager

- (VSAccountManager)init
{
  v12.receiver = self;
  v12.super_class = VSAccountManager;
  v2 = [(VSAccountManager *)&v12 init];
  if (v2)
  {
    v3 = +[VSSecurityTask currentSecurityTask];
    securityTask = v2->_securityTask;
    v2->_securityTask = v3;

    v5 = +[VSPrivacyInfoCenter sharedPrivacyInfoCenter];
    privacyInfoCenter = v2->_privacyInfoCenter;
    v2->_privacyInfoCenter = v5;

    v7 = +[VSViewServiceRequestCenter sharedViewServiceRequestCenter];
    requestCenter = v2->_requestCenter;
    v2->_requestCenter = v7;

    v9 = objc_alloc_init(VSLinkedOnOrAfterChecker);
    linkedOnOrAfterChecker = v2->_linkedOnOrAfterChecker;
    v2->_linkedOnOrAfterChecker = v9;
  }

  return v2;
}

- (void)viewServiceRequestOperation:(id)a3 presentViewController:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "VSAccountManagerDelegate";
    v13 = 2080;
    v14 = "accountManager:presentViewController:";
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will call [%s %s]", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__VSAccountManager_viewServiceRequestOperation_presentViewController___block_invoke;
  v9[3] = &unk_278B73708;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  __70__VSAccountManager_viewServiceRequestOperation_presentViewController___block_invoke(v9);
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "VSAccountManagerDelegate";
    v13 = 2080;
    v14 = "accountManager:presentViewController:";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Did call [%s %s]", buf, 0x16u);
  }
}

void __70__VSAccountManager_viewServiceRequestOperation_presentViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accountManager:*(a1 + 32) presentViewController:*(a1 + 40)];
}

- (void)viewServiceRequestOperation:(id)a3 dismissViewController:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "VSAccountManagerDelegate";
    v13 = 2080;
    v14 = "accountManager:dismissViewController:";
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will call [%s %s]", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__VSAccountManager_viewServiceRequestOperation_dismissViewController___block_invoke;
  v9[3] = &unk_278B73708;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  __70__VSAccountManager_viewServiceRequestOperation_dismissViewController___block_invoke(v9);
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "VSAccountManagerDelegate";
    v13 = 2080;
    v14 = "accountManager:dismissViewController:";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Did call [%s %s]", buf, 0x16u);
  }
}

void __70__VSAccountManager_viewServiceRequestOperation_dismissViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accountManager:*(a1 + 32) dismissViewController:*(a1 + 40)];
}

- (BOOL)viewServiceRequestOperation:(id)a3 shouldAuthenticateAccountProviderWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(VSAccountManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 accountManager:self shouldAuthenticateAccountProviderWithIdentifier:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)checkAccessStatusWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = options;
  v7 = completionHandler;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[VSAccountManager checkAccessStatusWithOptions:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  VSRequireUsageInfoPlistKey();
  if (v6)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The options parameter must not be nil."];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
LABEL_5:
  [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_9];
  v9 = [(VSAccountManager *)self securityTask];
  v34 = 0;
  v10 = VSCheckEntitlementForTask(v9, &v34);
  v11 = v34;

  if (v10)
  {
    v12 = [(VSAccountManager *)self privacyInfoCenter];
    v13 = [v12 accountAccessStatus];
    v14 = v13;
    if ((v13 - 1) < 3)
    {
      v15 = [(VSAccountManager *)self requestCenter];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_90;
      v28[3] = &unk_278B73B58;
      v30 = v14;
      v29 = v7;
      v16 = [v15 enqueueCompletionHandlerBlock:v28];

      v17 = v29;
LABEL_15:

      goto LABEL_16;
    }

    if (!v13)
    {
      v17 = objc_alloc_init(VSViewServiceRequest);
      v21 = [(NSDictionary *)v6 objectForKey:@"VSCheckAccessOptionPrompt"];
      v22 = [v21 BOOLValue];

      [(VSViewServiceRequest *)v17 setAllowsPrivacyUI:v22];
      [(VSViewServiceRequest *)v17 setRequiresPrivacyUI:v22];
      v23 = [(VSAccountManager *)self linkedOnOrAfterChecker];
      -[VSViewServiceRequest setShouldReturnErrorOnTVProviderFeatureUnsupportedByStorefront:](v17, "setShouldReturnErrorOnTVProviderFeatureUnsupportedByStorefront:", [v23 shouldPerformBehavior:2]);

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_2;
      v31[3] = &unk_278B73988;
      v32 = v12;
      v33 = v7;
      v24 = [(VSAccountManager *)self _enqueueViewServiceRequest:v17 completionHandler:v31];

      goto LABEL_15;
    }
  }

  else
  {
    v18 = VSErrorLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [VSAccountManager checkAccessStatusWithOptions:v11 completionHandler:v18];
    }

    v19 = [(VSAccountManager *)self requestCenter];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_91;
    v25[3] = &unk_278B737F8;
    v27 = v7;
    v26 = v11;
    v20 = [v19 enqueueCompletionHandlerBlock:v25];

    v12 = v27;
  }

LABEL_16:
}

void __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  if ([@"VSCheckAccessOptionPrompt" isEqual:v7])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = CFGetTypeID(v4), v5 != CFBooleanGetTypeID()))
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported value %@ for %@ option", v4, v7}];
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported option: %@", v7, v6}];
  }
}

void __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VSAccountManager checkAccessStatusWithOptions:completionHandler:]_block_invoke_2";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_84;
  v7[3] = &unk_278B73848;
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 40);
  v5 = v3;
  __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_84(v7);
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VSAccountManager checkAccessStatusWithOptions:completionHandler:]_block_invoke_4";
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
  }
}

void __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_84(uint64_t a1)
{
  v2 = [*(a1 + 32) accountAccessStatus];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_2_85;
  v7[3] = &unk_278B73B08;
  v3 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_3;
  v4[3] = &unk_278B73B30;
  v5 = *(a1 + 48);
  v6 = v2;
  [v3 unwrapObject:v7 error:v4];
}

void __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_90(uint64_t a1)
{
  if (*(a1 + 40) == 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = VSPublicError(0, 0, 0);
  }

  v3 = v2;
  (*(*(a1 + 32) + 16))();
}

- (id)_enqueueViewServiceRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSAccountManager *)self privacyInfoCenter];
  v9 = [(VSAccountManager *)self requestCenter];
  v10 = [v8 accountAccessStatus];
  if ((v10 - 1) < 2)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke;
    v18[3] = &unk_278B73938;
    v12 = &v19;
    v19 = v7;
    v13 = [v9 enqueueCompletionHandlerBlock:v18];
LABEL_6:

    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!v10 || v10 == 3)
  {
    v11 = [(VSAccountManager *)self delegate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_2;
    v15[3] = &unk_278B73988;
    v12 = &v16;
    v16 = v8;
    v17 = v7;
    v13 = [v9 enqueueRequest:v6 withAccountManagerDelegate:v11 operationDelegate:self completionHandler:v15];

    goto LABEL_6;
  }

LABEL_7:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  v13 = 0;
LABEL_8:

  return v13;
}

void __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke(uint64_t a1)
{
  v4 = VSPublicError(0, 0, 0);
  v2 = *(a1 + 32);
  v3 = [VSFailable failableWithError:v4];
  (*(v2 + 16))(v2, v3);
}

void __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_3;
  v9[3] = &unk_278B73B80;
  v10 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = v3;
  v12 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_4;
  v6[3] = &unk_278B73BA8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v5 unwrapObject:v9 error:v6];
}

uint64_t __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) updateAccountAccessStatusWithResponse:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) updateAccountAccessStatusWithError:a2];
  v3 = *(a1 + 40);
  v4 = [VSFailable failableWithError:v5];
  (*(v3 + 16))(v3, v4);
}

- (VSAccountManagerResult)enqueueAccountMetadataRequest:(VSAccountMetadataRequest *)request completionHandler:(void *)completionHandler
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = request;
  v7 = completionHandler;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[VSAccountManager enqueueAccountMetadataRequest:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  VSRequireUsageInfoPlistKey();
  if (v6)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
LABEL_5:
  v9 = [(VSAccountManager *)self securityTask];
  v24 = 0;
  v10 = VSCheckEntitlementForTask(v9, &v24);
  v11 = v24;

  if (v10)
  {
    v12 = objc_alloc_init(VSViewServiceRequest);
    [(VSViewServiceRequest *)v12 setAccountMetadataRequest:v6];
    v13 = [(VSAccountManager *)self linkedOnOrAfterChecker];
    -[VSViewServiceRequest setShouldInferFeaturedProviders:](v12, "setShouldInferFeaturedProviders:", [v13 shouldPerformBehavior:1] ^ 1);

    [(VSViewServiceRequest *)v12 setAllowsPrivacyUI:[(VSAccountMetadataRequest *)v6 isInterruptionAllowed]];
    [(VSViewServiceRequest *)v12 setRequiresPrivacyUI:0];
    v14 = [(VSAccountManager *)self delegate];
    [(VSViewServiceRequest *)v12 setCanVetoAuthentication:objc_opt_respondsToSelector() & 1];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke;
    v22[3] = &unk_278B73BF8;
    v23 = v7;
    v15 = [(VSAccountManager *)self _enqueueViewServiceRequest:v12 completionHandler:v22];
  }

  else
  {
    v16 = VSErrorLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VSAccountManager enqueueAccountMetadataRequest:v11 completionHandler:v16];
    }

    v17 = [(VSAccountManager *)self requestCenter];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_101;
    v19[3] = &unk_278B737F8;
    v21 = v7;
    v20 = v11;
    v15 = [v17 enqueueCompletionHandlerBlock:v19];

    v12 = v21;
  }

  if (!v15)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The managerResult parameter must not be nil."];
  }

  return v15;
}

void __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VSAccountManager enqueueAccountMetadataRequest:completionHandler:]_block_invoke";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_99;
  v7[3] = &unk_278B73758;
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_99(v7);
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VSAccountManager enqueueAccountMetadataRequest:completionHandler:]_block_invoke_4";
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
  }
}

void __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_99(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_2;
  v5[3] = &unk_278B73BD0;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_3;
  v3[3] = &unk_278B73910;
  v4 = *(a1 + 40);
  [v2 unwrapObject:v5 error:v3];
}

void __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accountMetadata];
  (*(*(a1 + 32) + 16))();
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)checkAccessStatusWithOptions:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Check access caller process lacks entitlement: %@", &v2, 0xCu);
}

- (void)enqueueAccountMetadataRequest:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Metadata request caller process lacks entitlement: %@", &v2, 0xCu);
}

@end