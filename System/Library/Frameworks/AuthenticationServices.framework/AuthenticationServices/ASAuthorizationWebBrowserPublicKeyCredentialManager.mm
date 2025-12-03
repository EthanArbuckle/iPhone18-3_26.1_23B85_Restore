@interface ASAuthorizationWebBrowserPublicKeyCredentialManager
- (ASAuthorizationWebBrowserPublicKeyCredentialManager)init;
- (ASAuthorizationWebBrowserPublicKeyCredentialManagerAuthorizationState)authorizationStateForPlatformCredentials;
- (void)corePlatformCredentialsForRelyingParty:(NSString *)party completionHandler:(id)handler;
- (void)platformCredentialsForRelyingParty:(NSString *)relyingParty completionHandler:(void *)completionHandler;
- (void)requestAuthorizationForPublicKeyCredentials:(void *)completionHandler;
@end

@implementation ASAuthorizationWebBrowserPublicKeyCredentialManager

- (ASAuthorizationWebBrowserPublicKeyCredentialManager)init
{
  v7.receiver = self;
  v7.super_class = ASAuthorizationWebBrowserPublicKeyCredentialManager;
  v2 = [(ASAuthorizationWebBrowserPublicKeyCredentialManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698DFA0]);
    agentProxy = v2->_agentProxy;
    v2->_agentProxy = v3;

    v5 = v2;
  }

  return v2;
}

- (void)platformCredentialsForRelyingParty:(NSString *)relyingParty completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__ASAuthorizationWebBrowserPublicKeyCredentialManager_platformCredentialsForRelyingParty_completionHandler___block_invoke;
  v8[3] = &unk_1E7AF8A80;
  v9 = v6;
  v7 = v6;
  [(ASAuthorizationWebBrowserPublicKeyCredentialManager *)self corePlatformCredentialsForRelyingParty:relyingParty completionHandler:v8];
}

void __108__ASAuthorizationWebBrowserPublicKeyCredentialManager_platformCredentialsForRelyingParty_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_20];
  (*(*(a1 + 32) + 16))();
}

ASAuthorizationWebBrowserPlatformPublicKeyCredential *__108__ASAuthorizationWebBrowserPublicKeyCredentialManager_platformCredentialsForRelyingParty_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ASAuthorizationWebBrowserPlatformPublicKeyCredential alloc] initWithCorePasskey:v2];

  return v3;
}

- (void)requestAuthorizationForPublicKeyCredentials:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_INFO, "Requesting TCC access for passkey browser requests.", buf, 2u);
  }

  v5 = *MEMORY[0x1E698DF90];
  v7 = v3;
  v6 = v3;
  TCCAccessRequest();
}

uint64_t __99__ASAuthorizationWebBrowserPublicKeyCredentialManager_requestAuthorizationForPublicKeyCredentials___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_INFO, "TCC access: %{BOOL}d", v7, 8u);
  }

  result = (*(*(a1 + 32) + 16))(*(a1 + 32), a2 == 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (ASAuthorizationWebBrowserPublicKeyCredentialManagerAuthorizationState)authorizationStateForPlatformCredentials
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_1B1C8D000, v2, OS_LOG_TYPE_INFO, "Checking TCC access for passkey browser requests.", v8, 2u);
  }

  v3 = *MEMORY[0x1E698DF90];
  v4 = TCCAccessPreflight();
  v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_1B1C8D000, v5, OS_LOG_TYPE_INFO, "TCC access: %d", v8, 8u);
  }

  if (v4 >= 2)
  {
    result = ASAuthorizationWebBrowserPublicKeyCredentialManagerAuthorizationStateNotDetermined;
  }

  else
  {
    result = v4;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)corePlatformCredentialsForRelyingParty:(NSString *)party completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = party;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B1D7BF4C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B1D88320;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B1D885D0;
  v15[5] = v14;
  partyCopy = party;
  selfCopy = self;
  sub_1B1D22574(0, 0, v10, &unk_1B1D86880, v15);
}

@end