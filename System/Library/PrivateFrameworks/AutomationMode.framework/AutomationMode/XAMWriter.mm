@interface XAMWriter
+ (XAMWriter)sharedInstance;
+ (void)resetSharedWriter;
- (BOOL)_usingSyncProxy:(id)proxy withError:(id *)error;
- (BOOL)enableAutomationModeWithError:(id *)error;
- (XAMWriter)initWithWriterConnectionFactory:(id)factory authorizationProvider:(id)provider;
- (void)_authenticateAndEnableAutomationModeWithProxy:(id)proxy completion:(id)completion;
- (void)_enableAutomationModeWithProxy:(id)proxy authorization:(id)authorization completion:(id)completion;
- (void)_enableAutomationModeWithProxy:(id)proxy completion:(id)completion;
- (void)_setAutomationModeEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)_usingAsyncProxyEnablePasswordlessAutomation:(BOOL)automation withCompletion:(id)completion;
@end

@implementation XAMWriter

+ (void)resetSharedWriter
{
  obj = self;
  objc_sync_enter(obj);
  v2 = XAMSharedWriter;
  XAMSharedWriter = 0;

  objc_sync_exit(obj);
}

+ (XAMWriter)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!XAMSharedWriter)
  {
    v3 = [XAMWriter alloc];
    v4 = objc_opt_new();
    v5 = [(XAMWriter *)v3 initWithWriterConnectionFactory:&__block_literal_global authorizationProvider:v4];
    v6 = XAMSharedWriter;
    XAMSharedWriter = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = XAMSharedWriter;

  return v7;
}

id __27__XAMWriter_sharedInstance__block_invoke()
{
  v0 = XAMAutomationModeWriterMachServiceName();
  v1 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v0 options:0];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853878F0];
  [v1 setRemoteObjectInterface:v2];

  [v1 resume];

  return v1;
}

- (XAMWriter)initWithWriterConnectionFactory:(id)factory authorizationProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = XAMWriter;
  factoryCopy = factory;
  v8 = [(XAMWriter *)&v13 init];
  v9 = [factoryCopy copy];

  writerConnectionFactory = v8->_writerConnectionFactory;
  v8->_writerConnectionFactory = v9;

  authorizationProvider = v8->_authorizationProvider;
  v8->_authorizationProvider = providerCopy;

  return v8;
}

- (void)_setAutomationModeEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = (*(self->_writerConnectionFactory + 2))();
  v8 = XAMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&dword_241927000, v8, OS_LOG_TYPE_DEFAULT, "Created new connection %@.", buf, 0xCu);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke;
  v22[3] = &unk_278CF9318;
  v9 = v7;
  v23 = v9;
  v10 = completionCopy;
  v24 = v10;
  v11 = MEMORY[0x245CF2E50](v22);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke_14;
  v20[3] = &unk_278CF9340;
  v12 = v11;
  v21 = v12;
  v13 = [v9 remoteObjectProxyWithErrorHandler:v20];
  if (enabledCopy)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke_15;
    v18[3] = &unk_278CF9340;
    v14 = &v19;
    v19 = v12;
    [(XAMWriter *)self _enableAutomationModeWithProxy:v13 completion:v18];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke_2;
    v16[3] = &unk_278CF9340;
    v14 = &v17;
    v17 = v12;
    [v13 disableAutomationModeWithCompletion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = XAMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_241927000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating connection %@.", &v7, 0xCu);
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

void __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = XAMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke_14_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_enableAutomationModeWithProxy:(id)proxy completion:(id)completion
{
  proxyCopy = proxy;
  completionCopy = completion;
  v8 = XAMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241927000, v8, OS_LOG_TYPE_DEFAULT, "Sending enable request to writer daemon.", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__XAMWriter__enableAutomationModeWithProxy_completion___block_invoke;
  v11[3] = &unk_278CF9368;
  v11[4] = self;
  v12 = proxyCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = proxyCopy;
  [v10 enableAutomationModeWithCompletion:v11];
}

void __55__XAMWriter__enableAutomationModeWithProxy_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v7 = XAMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_241927000, v7, OS_LOG_TYPE_DEFAULT, "Writer daemon returned success (no error).", v10, 2u);
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:@"com.apple.dt.AutomationMode.writer.error"])
  {

    goto LABEL_9;
  }

  v6 = [v4 code];

  if (v6 != 1)
  {
LABEL_9:
    v9 = XAMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __55__XAMWriter__enableAutomationModeWithProxy_completion___block_invoke_cold_1();
    }

    v8 = *(*(a1 + 48) + 16);
LABEL_12:
    v8();
    goto LABEL_13;
  }

  [*(a1 + 32) _authenticateAndEnableAutomationModeWithProxy:*(a1 + 40) completion:*(a1 + 48)];
LABEL_13:
}

- (void)_authenticateAndEnableAutomationModeWithProxy:(id)proxy completion:(id)completion
{
  proxyCopy = proxy;
  completionCopy = completion;
  v8 = XAMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241927000, v8, OS_LOG_TYPE_DEFAULT, "Writer daemon requires authentication to enable automation mode.", buf, 2u);
  }

  authorizationProvider = [(XAMWriter *)self authorizationProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__XAMWriter__authenticateAndEnableAutomationModeWithProxy_completion___block_invoke;
  v12[3] = &unk_278CF9390;
  v12[4] = self;
  v13 = proxyCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = proxyCopy;
  [authorizationProvider requestAuthorizationWithReply:v12];
}

uint64_t __70__XAMWriter__authenticateAndEnableAutomationModeWithProxy_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _enableAutomationModeWithProxy:*(a1 + 40) authorization:a2 completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)_enableAutomationModeWithProxy:(id)proxy authorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  proxyCopy = proxy;
  v10 = XAMLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241927000, v10, OS_LOG_TYPE_DEFAULT, "User authenticated, forwarding authorization to writer daemon.", buf, 2u);
  }

  externalizedContext = [authorizationCopy externalizedContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__XAMWriter__enableAutomationModeWithProxy_authorization_completion___block_invoke;
  v14[3] = &unk_278CF9318;
  v15 = authorizationCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = authorizationCopy;
  [proxyCopy enableAutomationModeWithAuthorization:externalizedContext completion:v14];
}

void __69__XAMWriter__enableAutomationModeWithProxy_authorization_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = XAMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241927000, v4, OS_LOG_TYPE_DEFAULT, "Writer daemon finished, invalidating authorization.", v5, 2u);
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)_usingAsyncProxyEnablePasswordlessAutomation:(BOOL)automation withCompletion:(id)completion
{
  automationCopy = automation;
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = (*(self->_writerConnectionFactory + 2))();
  v8 = XAMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_241927000, v8, OS_LOG_TYPE_DEFAULT, "Created new connection %@.", buf, 0xCu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__XAMWriter__usingAsyncProxyEnablePasswordlessAutomation_withCompletion___block_invoke;
  v18[3] = &unk_278CF9318;
  v9 = v7;
  v19 = v9;
  v20 = completionCopy;
  v10 = completionCopy;
  v11 = MEMORY[0x245CF2E50](v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__XAMWriter__usingAsyncProxyEnablePasswordlessAutomation_withCompletion___block_invoke_17;
  v16[3] = &unk_278CF9340;
  v12 = v11;
  v17 = v12;
  v13 = [v9 remoteObjectProxyWithErrorHandler:v16];
  v14 = v13;
  if (automationCopy)
  {
    [v13 createNoAuthenticationRequiredCookieWithCompletion:v12];
  }

  else
  {
    [v13 removeNoAuthenticationRequiredCookieWithCompletion:v12];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __73__XAMWriter__usingAsyncProxyEnablePasswordlessAutomation_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = XAMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_241927000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating connection %@.", &v7, 0xCu);
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

void __73__XAMWriter__usingAsyncProxyEnablePasswordlessAutomation_withCompletion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = XAMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke_14_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_usingSyncProxy:(id)proxy withError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  v7 = (*(self->_writerConnectionFactory + 2))();
  v8 = XAMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_241927000, v8, OS_LOG_TYPE_DEFAULT, "Created new connection %@.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__XAMWriter__usingSyncProxy_withError___block_invoke;
  v17[3] = &unk_278CF93B8;
  v17[4] = &buf;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v10 = proxyCopy[2](proxyCopy, v9);
  v11 = v10;
  if (!v10)
  {
    v11 = *(*(&buf + 1) + 40);
  }

  v12 = v11;

  v13 = XAMLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 138412290;
    v19 = v7;
    _os_log_impl(&dword_241927000, v13, OS_LOG_TYPE_DEFAULT, "Invalidating connection %@.", v18, 0xCu);
  }

  [v7 invalidate];
  if (error)
  {
    v14 = v12;
    *error = v12;
  }

  _Block_object_dispose(&buf, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

void __39__XAMWriter__usingSyncProxy_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = XAMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke_14_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

id __44__XAMWriter_disableAutomationModeWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__XAMWriter_disableAutomationModeWithError___block_invoke_2;
  v5[3] = &unk_278CF93B8;
  v5[4] = &v6;
  [v2 disableAutomationModeWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)enableAutomationModeWithError:(id *)error
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__XAMWriter_enableAutomationModeWithError___block_invoke;
  v4[3] = &unk_278CF9400;
  v4[4] = self;
  return [(XAMWriter *)self _usingSyncProxy:v4 withError:error];
}

id __43__XAMWriter_enableAutomationModeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__XAMWriter_enableAutomationModeWithError___block_invoke_2;
  v16[3] = &unk_278CF93B8;
  v16[4] = &v17;
  [v3 enableAutomationModeWithCompletion:v16];
  v4 = v18[5];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [v4 domain];
  if (![v5 isEqualToString:@"com.apple.dt.AutomationMode.writer.error"])
  {
    goto LABEL_8;
  }

  v6 = [v18[5] code];

  if (v6 != 1)
  {
LABEL_9:
    v5 = v18[5];
    goto LABEL_10;
  }

  v7 = XAMLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241927000, v7, OS_LOG_TYPE_DEFAULT, "Writer daemon requires authentication to enable automation mode.", buf, 2u);
  }

  v8 = v18[5];
  v18[5] = 0;

  v9 = [*(a1 + 32) authorizationProvider];
  v14 = 0;
  v10 = [v9 authorizationWithError:&v14];
  v5 = v14;

  if (v10)
  {
    v11 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__XAMWriter_enableAutomationModeWithError___block_invoke_21;
    v13[3] = &unk_278CF93B8;
    v13[4] = &v17;
    [v11 _enableAutomationModeWithProxy:v3 authorization:v10 completion:v13];

LABEL_8:
    goto LABEL_9;
  }

LABEL_10:
  _Block_object_dispose(&v17, 8);

  return v5;
}

id __59__XAMWriter_createNoAuthenticationRequiredCookieWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__XAMWriter_createNoAuthenticationRequiredCookieWithError___block_invoke_2;
  v5[3] = &unk_278CF93B8;
  v5[4] = &v6;
  [v2 createNoAuthenticationRequiredCookieWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

id __59__XAMWriter_removeNoAuthenticationRequiredCookieWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__XAMWriter_removeNoAuthenticationRequiredCookieWithError___block_invoke_2;
  v5[3] = &unk_278CF93B8;
  v5[4] = &v6;
  [v2 removeNoAuthenticationRequiredCookieWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__XAMWriter__setAutomationModeEnabled_withCompletion___block_invoke_14_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_241927000, v0, v1, "XPC Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__XAMWriter__enableAutomationModeWithProxy_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_241927000, v0, v1, "Writer returned error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end