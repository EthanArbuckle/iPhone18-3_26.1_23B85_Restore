@interface SOClient
+ (id)_queue;
- (SOClient)init;
- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)cancelAuthorization:(id)authorization completion:(id)completion;
- (void)configurationWithCompletion:(id)completion;
- (void)debugHintsWithCompletion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion;
- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion;
- (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion;
- (void)performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)profilesWithExtensionBundleIdentifier:(id)identifier completion:(id)completion;
- (void)realmsWithCompletion:(id)completion;
@end

@implementation SOClient

- (SOClient)init
{
  v8.receiver = self;
  v8.super_class = SOClient;
  v2 = [(SOClient *)&v8 init];
  if (v2)
  {
    v3 = [SOServiceConnection alloc];
    v4 = +[SOClient _queue];
    v5 = [(SOServiceConnection *)v3 initWithQueue:v4];
    serviceConnection = v2->_serviceConnection;
    v2->_serviceConnection = v5;
  }

  return v2;
}

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[SOClient _queue];
  }

  v3 = _queue_queue;

  return v3;
}

uint64_t __18__SOClient__queue__block_invoke()
{
  _queue_queue = dispatch_queue_create("com.apple.AppSSO.client-queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  v10 = SO_LOG_SOClient();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316163;
    v17 = "[SOClient getAuthorizationHintsWithURL:responseCode:completion:]";
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2117;
    v21 = lCopy;
    v22 = 1024;
    codeCopy = code;
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v10, OS_LOG_TYPE_DEFAULT, "%s url: %{sensitive, mask.hash}@, responseCode: %d on %@", buf, 0x30u);
  }

  serviceConnection = self->_serviceConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__SOClient_getAuthorizationHintsWithURL_responseCode_completion___block_invoke;
  v14[3] = &unk_1E836CBE0;
  v15 = completionCopy;
  v12 = completionCopy;
  [(SOServiceConnection *)serviceConnection getAuthorizationHintsWithURL:lCopy responseCode:code completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __65__SOClient_getAuthorizationHintsWithURL_responseCode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "SOClient authorization hints: %{public}@, error: %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = SO_LOG_SOClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[SOClient performAuthorizationWithRequestParameters:completion:]";
    v16 = 2114;
    v17 = parametersCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__SOClient_performAuthorizationWithRequestParameters_completion___block_invoke;
  v12[3] = &unk_1E836CC08;
  v13 = completionCopy;
  v10 = completionCopy;
  [(SOServiceConnection *)serviceConnection performAuthorizationWithRequestParameters:parametersCopy completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __65__SOClient_performAuthorizationWithRequestParameters_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138478083;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "SOClient credential: %{private}@, error: %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = SO_LOG_SOClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[SOClient beginAuthorizationWithRequestParameters:completion:]";
    v16 = 2114;
    v17 = parametersCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__SOClient_beginAuthorizationWithRequestParameters_completion___block_invoke;
  v12[3] = &unk_1E836CC30;
  v13 = completionCopy;
  v10 = completionCopy;
  [(SOServiceConnection *)serviceConnection beginAuthorizationWithRequestParameters:parametersCopy completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __63__SOClient_beginAuthorizationWithRequestParameters_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SO_LOG_SOClient();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1CA238000, v10, OS_LOG_TYPE_DEFAULT, "SOClient extension id: %{public}@, endpoint: %{public}@, error: %{public}@", &v13, 0x20u);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v8, v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelAuthorization:(id)authorization completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  authorizationCopy = authorization;
  v8 = SO_LOG_SOClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[SOClient cancelAuthorization:completion:]";
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__SOClient_cancelAuthorization_completion___block_invoke;
  v12[3] = &unk_1E836CC58;
  v13 = completionCopy;
  v10 = completionCopy;
  [(SOServiceConnection *)serviceConnection cancelAuthorization:authorizationCopy completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __43__SOClient_cancelAuthorization_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "cancelAuthorizationWithCompletion: success = %{public}@, error = %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)configurationWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOClient configurationWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__SOClient_configurationWithCompletion___block_invoke;
  v9[3] = &unk_1E836CC80;
  v10 = completionCopy;
  v7 = completionCopy;
  [(SOServiceConnection *)serviceConnection configurationWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __40__SOClient_configurationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"YES";
    if (!v5)
    {
      v8 = @"NO";
    }

    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "configurationWithCompletion: success = %{public}@, error = %{public}@", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)realmsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOClient realmsWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__SOClient_realmsWithCompletion___block_invoke;
  v9[3] = &unk_1E836CCA8;
  v10 = completionCopy;
  v7 = completionCopy;
  [(SOServiceConnection *)serviceConnection realmsWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __33__SOClient_realmsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "realmsWithCompletion: realms = %{public}@, error = %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)debugHintsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOClient debugHintsWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__SOClient_debugHintsWithCompletion___block_invoke;
  v9[3] = &unk_1E836CCD0;
  v10 = completionCopy;
  v7 = completionCopy;
  [(SOServiceConnection *)serviceConnection debugHintsWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __37__SOClient_debugHintsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "debugHintsWithCompletion: hints = %@, error = %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  authorizationCopy = authorization;
  v8 = SO_LOG_SOClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[SOClient finishAuthorization:completion:]";
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__SOClient_finishAuthorization_completion___block_invoke;
  v12[3] = &unk_1E836CC58;
  v13 = completionCopy;
  v10 = completionCopy;
  [(SOServiceConnection *)serviceConnection finishAuthorization:authorizationCopy completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __43__SOClient_finishAuthorization_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "finishAuthorizationWithCompletion: success = %d, error = %{public}@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = SO_LOG_SOClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOClient isExtensionProcessWithAuditToken:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__SOClient_isExtensionProcessWithAuditToken_completion___block_invoke;
  v12[3] = &unk_1E836CC58;
  v13 = completionCopy;
  v9 = *&token->var0[4];
  *buf = *token->var0;
  *&buf[16] = v9;
  v10 = completionCopy;
  [(SOServiceConnection *)serviceConnection isExtensionProcessWithAuditToken:buf completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __56__SOClient_isExtensionProcessWithAuditToken_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)profilesWithExtensionBundleIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOClient profilesWithExtensionBundleIdentifier:completion:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__SOClient_profilesWithExtensionBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E836CCF8;
  v14 = identifierCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  [(SOServiceConnection *)serviceConnection profilesWithExtensionBundleIdentifier:v11 completion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __61__SOClient_profilesWithExtensionBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "profilesWithExtensionBundleIdentifier: extension = %{public}@, profiles = %{public}@, error = %{public}@", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOClient isConfigurationActiveForExtensionIdentifier:completion:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__SOClient_isConfigurationActiveForExtensionIdentifier_completion___block_invoke;
  v13[3] = &unk_1E836CD20;
  v14 = identifierCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  [(SOServiceConnection *)serviceConnection isConfigurationActiveForExtensionIdentifier:v11 completion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __67__SOClient_isConfigurationActiveForExtensionIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "isConfigurationActiveForExtensionIdentifier: extension = %{public}@, ready = %{public}@, error = %{public}@", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end