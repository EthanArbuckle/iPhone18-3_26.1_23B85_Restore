@interface AATermsUserActionReporter
- (AATermsUserActionReporter)initWithAccount:(id)a3 parameters:(id)a4;
- (AATermsUserActionReporter)initWithAccount:(id)a3 parameters:(id)a4 remoteServer:(id)a5;
- (id)_authController;
- (void)_createRequestForAccount:(id)a3 requestHandler:(id)a4;
- (void)reportEvent;
@end

@implementation AATermsUserActionReporter

- (AATermsUserActionReporter)initWithAccount:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AARemoteServer sharedServer];
  v9 = [(AATermsUserActionReporter *)self initWithAccount:v7 parameters:v6 remoteServer:v8];

  return v9;
}

- (AATermsUserActionReporter)initWithAccount:(id)a3 parameters:(id)a4 remoteServer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AATermsUserActionReporter;
  v12 = [(AATermsUserActionReporter *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a3);
    v14 = [v10 copy];
    requestDictionary = v13->_requestDictionary;
    v13->_requestDictionary = v14;

    v13->_requestCount = 0;
    objc_storeStrong(&v13->_remoteServer, a5);
  }

  return v13;
}

- (void)reportEvent
{
  account = self->_account;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__AATermsUserActionReporter_reportEvent__block_invoke;
  v3[3] = &unk_1E7C9CA50;
  v3[4] = self;
  [(AATermsUserActionReporter *)self _createRequestForAccount:account requestHandler:v3];
}

void __40__AATermsUserActionReporter_reportEvent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [AATermsReportUserActionRequest alloc];
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    v7 = [(AATermsReportUserActionRequest *)v4 initWithAccount:*(v6 + 8) urlRequest:v3 parameters:*(v6 + 16)];
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __40__AATermsUserActionReporter_reportEvent__block_invoke_cold_1(v5);
    }

    ++*(*v5 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__AATermsUserActionReporter_reportEvent__block_invoke_32;
    v9[3] = &unk_1E7C9D768;
    v9[4] = *v5;
    [v7 performRequestWithHandler:v9];
  }

  else
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __40__AATermsUserActionReporter_reportEvent__block_invoke_cold_2();
    }
  }
}

void __40__AATermsUserActionReporter_reportEvent__block_invoke_32(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__AATermsUserActionReporter_reportEvent__block_invoke_32_cold_1(v4);
  }

  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __40__AATermsUserActionReporter_reportEvent__block_invoke_32_cold_2(v4);
  }

  v7 = [v4 httpResponse];
  v8 = [v7 statusCode];

  if (v8 != 200)
  {
    v9 = [v4 httpResponse];
    v10 = [v9 statusCode];

    if (v10 != 400)
    {
      v11 = [v4 httpResponse];
      v12 = [v11 statusCode];

      if (v12 == 401)
      {
        v13 = objc_alloc_init(MEMORY[0x1E698DCB8]);
        v14 = [*(*(a1 + 32) + 8) aa_altDSID];
        [v13 setAltDSID:v14];

        v15 = [*(*(a1 + 32) + 8) username];
        [v13 setUsername:v15];

        [v13 setAuthenticationType:1];
        [v13 setIsUsernameEditable:0];
        v16 = [*(a1 + 32) _authController];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __40__AATermsUserActionReporter_reportEvent__block_invoke_34;
        v19[3] = &unk_1E7C9D740;
        v19[4] = *(a1 + 32);
        [v16 authenticateWithContext:v13 completion:v19];

LABEL_11:
        goto LABEL_12;
      }

      v17 = [v4 httpResponse];
      v18 = [v17 statusCode];

      if (v18 != 500)
      {
        v13 = [v4 httpResponse];
        [v13 statusCode];
        goto LABEL_11;
      }
    }
  }

LABEL_12:
}

void __40__AATermsUserActionReporter_reportEvent__block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __40__AATermsUserActionReporter_reportEvent__block_invoke_34_cold_1();
  }

  if (v6 || (v8 = *(a1 + 32), v8[4] > 2uLL))
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __40__AATermsUserActionReporter_reportEvent__block_invoke_34_cold_2();
    }
  }

  else
  {
    [v8 reportEvent];
  }
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

- (void)_createRequestForAccount:(id)a3 requestHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  remoteServer = self->_remoteServer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke;
  v11[3] = &unk_1E7C9D790;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  [(AARemoteServerProtocol *)remoteServer configurationWithCompletion:v11];
}

void __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke(id *a1, void *a2)
{
  v3 = [a2 termsReportUserActionURL];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_cold_1(v4);
    }

    v6 = [MEMORY[0x1E695AC18] requestWithURL:v4];
    v7 = objc_alloc_init(MEMORY[0x1E698DCB8]);
    v8 = [a1[4] aida_alternateDSID];
    [v7 setAltDSID:v8];

    v9 = [a1[5] _authController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_45;
    v14[3] = &unk_1E7C9CA78;
    v10 = a1[6];
    v15 = v6;
    v16 = v10;
    v11 = v6;
    [v9 getServerUILoadDelegateWithContext:v7 completion:v14];
  }

  else
  {
    v12 = a1[6];
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:-2 userInfo:0];
    v12[2](v12, 0, v13);
  }
}

void __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_46;
    v9[3] = &unk_1E7C9AC08;
    v10 = v6;
    v11 = *(a1 + 40);
    [a2 signRequest:v10 withCompletionHandler:v9];
  }

  else
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_45_cold_1();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v5);
    }
  }
}

void __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_46(uint64_t a1)
{
  v2 = [*(a1 + 32) allHTTPHeaderFields];
  v3 = [v2 mutableCopy];

  [v3 setValue:@"application/json" forKey:@"Accept"];
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_46_cold_1();
  }

  [*(a1 + 32) setAllHTTPHeaderFields:v3];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 32), 0);
  }
}

void __40__AATermsUserActionReporter_reportEvent__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*a1 + 16);
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __40__AATermsUserActionReporter_reportEvent__block_invoke_32_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 statusCode];
  v8 = [a1 responseParameters];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __40__AATermsUserActionReporter_reportEvent__block_invoke_32_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 httpResponse];
  [v1 statusCode];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __40__AATermsUserActionReporter_reportEvent__block_invoke_34_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1B6F6A000, v1, OS_LOG_TYPE_DEBUG, "TermsQFA: AATermsUserActionReporter reporting event after reauth with authResults %{private}@ and error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 absoluteString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_45_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __69__AATermsUserActionReporter__createRequestForAccount_requestHandler___block_invoke_46_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end