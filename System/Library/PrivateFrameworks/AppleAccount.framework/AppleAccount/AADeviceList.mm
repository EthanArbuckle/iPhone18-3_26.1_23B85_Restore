@interface AADeviceList
- (AADeviceList)initWithAccountManager:(id)manager;
- (AADeviceListDelegate)delegate;
- (id)_aidaAccount;
- (id)_appleAccount;
- (id)_authController;
- (void)_createRequestForAccount:(id)account requestHandler:(id)handler;
- (void)_loadDeviceList;
- (void)_loadRequest:(id)request responseHandler:(id)handler;
- (void)_renewCredentials;
- (void)_setDeviceList:(id)list loadError:(id)error;
- (void)refreshDeviceList;
@end

@implementation AADeviceList

- (AADeviceList)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = AADeviceList;
  v6 = [(AADeviceList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
    [(AADeviceList *)v7 refreshDeviceList];
  }

  return v7;
}

- (void)refreshDeviceList
{
  v3 = _AADeviceListLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Refreshing the device list", v7, 2u);
  }

  [(AADeviceList *)self _setDeviceList:0 loadError:0];
  _appleAccount = [(AADeviceList *)self _appleAccount];

  if (_appleAccount)
  {
    [(AADeviceList *)self _loadDeviceList];
  }

  else
  {
    v5 = _AADeviceListLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AADeviceList refreshDeviceList];
    }

    v6 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4404];
    [(AADeviceList *)self _setDeviceList:0 loadError:v6];
  }
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  return v3;
}

- (id)_aidaAccount
{
  _accountStore = [(AADeviceList *)self _accountStore];
  _appleAccount = [(AADeviceList *)self _appleAccount];
  v5 = [_accountStore aida_accountForiCloudAccount:_appleAccount];

  return v5;
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

- (void)_loadDeviceList
{
  _appleAccount = [(AADeviceList *)self _appleAccount];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__AADeviceList__loadDeviceList__block_invoke;
  v4[3] = &unk_1E7C9CA50;
  v4[4] = self;
  [(AADeviceList *)self _createRequestForAccount:_appleAccount requestHandler:v4];
}

uint64_t __31__AADeviceList__loadDeviceList__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {

    return [v5 _setDeviceList:0 loadError:a3];
  }

  else
  {
    v7[5] = v3;
    v7[6] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __31__AADeviceList__loadDeviceList__block_invoke_2;
    v7[3] = &unk_1E7C9CA28;
    v7[4] = v5;
    return [v5 _loadRequest:a2 responseHandler:v7];
  }
}

void __31__AADeviceList__loadDeviceList__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) _setDeviceList:0 loadError:v5];
  }

  else if (v8)
  {
    v6 = *(a1 + 32);
    v7 = [v8 devices];
    [v6 _setDeviceList:v7 loadError:0];
  }
}

- (void)_setDeviceList:(id)list loadError:(id)error
{
  listCopy = list;
  errorCopy = error;
  v8 = self->_devices;
  objc_storeStrong(&self->_devices, list);
  objc_storeStrong(&self->_loadError, error);
  if (listCopy || !v8)
  {
    delegate = [(AADeviceList *)self delegate];
    [delegate deviceListModified:listCopy];
  }
}

- (void)_createRequestForAccount:(id)account requestHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  v8 = _AADeviceListLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Fetching the URL bag", buf, 2u);
  }

  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke;
  v12[3] = &unk_1E7C9AFD8;
  v13 = accountCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = accountCopy;
  [mEMORY[0x1E698DDF8] requestNewURLBagIfNecessaryWithCompletion:v12];
}

void __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke(id *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AADeviceListLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Successfully fetched the URL bag", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_cold_1();
  }

  v8 = [MEMORY[0x1E698DDF8] sharedBag];
  v9 = [v8 trustedDevicesSummaryURL];

  v10 = [MEMORY[0x1E695AC18] requestWithURL:v9];
  v11 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  v12 = [a1[4] aida_alternateDSID];
  [v11 setAltDSID:v12];

  v13 = _AADeviceListLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Fetching the server resource load delegate", buf, 2u);
  }

  v14 = [a1[5] _authController];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_37;
  v17[3] = &unk_1E7C9CA78;
  v15 = a1[6];
  v18 = v10;
  v19 = v15;
  v16 = v10;
  [v14 getServerUILoadDelegateWithContext:v11 completion:v17];
}

void __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _AADeviceListLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched the server resource load delegate", buf, 2u);
    }

    v9 = _AADeviceListLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Signing the device list request", buf, 2u);
    }

    v10 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_38;
    v12[3] = &unk_1E7C9AC08;
    v13 = v10;
    v14 = *(a1 + 40);
    [v5 signRequest:v13 withCompletionHandler:v12];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_37_cold_1();
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v6);
    }
  }
}

void __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_38(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AADeviceListLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Successfully signed the device list request", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_38_cold_1();
  }

  v8 = [*(a1 + 32) allHTTPHeaderFields];
  [v8 setValue:@"application/json" forKey:@"Accept"];
  [*(a1 + 32) setAllHTTPHeaderFields:v8];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 32), 0);
  }
}

- (void)_loadRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__AADeviceList__loadRequest_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C9CAA0;
  aBlock[4] = self;
  v15 = handlerCopy;
  v8 = handlerCopy;
  v9 = _Block_copy(aBlock);
  v10 = _AADeviceListLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Fetching the device list from the server", v13, 2u);
  }

  mEMORY[0x1E698DE00] = [MEMORY[0x1E698DE00] sharedAnisetteFreeURLSession];
  v12 = [mEMORY[0x1E698DE00] beginDataTaskWithRequest:requestCopy completionHandler:v9];
}

void __45__AADeviceList__loadRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = _AADeviceListLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __45__AADeviceList__loadRequest_responseHandler___block_invoke_cold_1();
    }

    goto LABEL_17;
  }

  v10 = v8;
  v11 = [v10 statusCode];
  if (v11 == 401)
  {
    v15 = _AADeviceListLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Failed to fetch the device list from the server - need to renew credentials", v19, 2u);
    }

    [*(a1 + 32) _renewCredentials];
    goto LABEL_17;
  }

  if (v11 != 200)
  {
    v16 = _AADeviceListLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __45__AADeviceList__loadRequest_responseHandler___block_invoke_cold_3(v10);
    }

    if (!v9)
    {
      v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402];
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = [[AATrustedDeviceListResponse alloc] initWithHTTPResponse:v10 data:v7];
  v13 = _AADeviceListLogSystem();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Successfully fetched the device list from the server", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __45__AADeviceList__loadRequest_responseHandler___block_invoke_cold_2();
    }

    v18 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402];

    v12 = 0;
    v9 = v18;
  }

LABEL_18:

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v12, v9);
  }
}

- (void)_renewCredentials
{
  v16[2] = *MEMORY[0x1E69E9840];
  _aidaAccount = [(AADeviceList *)self _aidaAccount];
  if (_aidaAccount)
  {
    v4 = *MEMORY[0x1E6959AA8];
    v16[0] = MEMORY[0x1E695E118];
    v5 = *MEMORY[0x1E6959A90];
    v15[0] = v4;
    v15[1] = v5;
    v14 = @"com.apple.gs.appleid.auth";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v16[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v8 = _AADeviceListLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Renewing credentials for AIDA account", buf, 2u);
    }

    _accountStore = [(AADeviceList *)self _accountStore];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__AADeviceList__renewCredentials__block_invoke;
    v12[3] = &unk_1E7C9CAC8;
    v12[4] = self;
    [_accountStore renewCredentialsForAccount:_aidaAccount options:v7 completion:v12];
  }

  else
  {
    v10 = _AADeviceListLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(AADeviceList *)v10 _renewCredentials];
    }

    v7 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3 underlyingError:0];
    [(AADeviceList *)self _setDeviceList:0 loadError:v7];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __33__AADeviceList__renewCredentials__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _AADeviceListLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __33__AADeviceList__renewCredentials__block_invoke_cold_1();
    }

    v8 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3 underlyingError:v5];
    [*(a1 + 32) _setDeviceList:0 loadError:v8];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Successfully renewed credentials for AIDA account", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__AADeviceList__renewCredentials__block_invoke_50;
    block[3] = &unk_1E7C9A868;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (AADeviceListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_37_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__AADeviceList__createRequestForAccount_requestHandler___block_invoke_38_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __45__AADeviceList__loadRequest_responseHandler___block_invoke_cold_1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "Failed to fetch the device list from the server - unexpected response class: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __45__AADeviceList__loadRequest_responseHandler___block_invoke_cold_3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 statusCode];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v1, v2, "Failed to fetch the device list from the server - unexpected status code: %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __33__AADeviceList__renewCredentials__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end