@interface AASetupAssistantService
+ (id)urlConfiguration;
- (AASetupAssistantService)init;
- (AASetupAssistantService)initWithAccount:(id)a3;
- (AASetupAssistantService)initWithAppleID:(id)a3 password:(id)a4;
- (id)_signingSession;
- (void)_doHSADeviceProvisioningSynchronizationWithDSID:(id)a3 data:(id)a4;
- (void)_doHSADeviceProvisioningWithDSID:(id)a3 data:(id)a4;
- (void)_doHSADeviceReprovisioningWithDSID:(id)a3;
- (void)authenticateWithHandler:(id)a3;
- (void)createAppleIDWithParameters:(id)a3 handler:(id)a4;
- (void)createAppleIDWithParameters:(id)a3 handlerWithResponse:(id)a4;
- (void)dealloc;
- (void)downloadURLConfiguration:(id)a3;
- (void)loginDelegatesWithParameters:(id)a3 completion:(id)a4;
- (void)setCookieStorage:(OpaqueCFHTTPCookieStorage *)a3;
- (void)setupDelegateAccountsWithParameters:(id)a3 handler:(id)a4;
- (void)shouldPresentUpgradeFlowWithCompletion:(id)a3;
- (void)updateAppleIDWithParameters:(id)a3 handler:(id)a4;
- (void)upgradeiCloudTermsIfNecessaryWithCustomHeaders:(id)a3 handler:(id)a4;
- (void)upgradeiCloudTermsIfNecessaryWithHandler:(id)a3;
@end

@implementation AASetupAssistantService

+ (id)urlConfiguration
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9;
  v14 = __Block_byref_object_dispose__9;
  v15 = 0;
  v2 = objc_alloc_init(AASetupAssistantConfigRequest);
  [(AARequest *)v2 setFlushCache:__flushURLConfigCache];
  __flushURLConfigCache = 0;
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AASetupAssistantService_urlConfiguration__block_invoke;
  v7[3] = &unk_1E7C9C648;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [(AARequest *)v2 performRequestWithHandler:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __43__AASetupAssistantService_urlConfiguration__block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (AASetupAssistantService)init
{
  v6.receiver = self;
  v6.super_class = AASetupAssistantService;
  v2 = [(AASetupAssistantService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    requesterQueue = v2->_requesterQueue;
    v2->_requesterQueue = v3;
  }

  return v2;
}

- (AASetupAssistantService)initWithAppleID:(id)a3 password:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AASetupAssistantService *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    appleID = v8->_appleID;
    v8->_appleID = v9;

    v11 = [v7 copy];
    password = v8->_password;
    v8->_password = v11;
  }

  return v8;
}

- (AASetupAssistantService)initWithAccount:(id)a3
{
  v5 = a3;
  v6 = [(AASetupAssistantService *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [v5 username];
    v9 = [v8 copy];
    appleID = v7->_appleID;
    v7->_appleID = v9;

    v11 = [(ACAccount *)v7->_account credential];
    v12 = [v11 password];
    v13 = [v12 copy];
    password = v7->_password;
    v7->_password = v13;
  }

  return v7;
}

- (void)dealloc
{
  cookieStorage = self->_cookieStorage;
  if (cookieStorage)
  {
    CFRelease(cookieStorage);
  }

  v4.receiver = self;
  v4.super_class = AASetupAssistantService;
  [(AASetupAssistantService *)&v4 dealloc];
}

- (void)setCookieStorage:(OpaqueCFHTTPCookieStorage *)a3
{
  cookieStorage = self->_cookieStorage;
  if (cookieStorage != a3)
  {
    if (cookieStorage)
    {
      CFRelease(cookieStorage);
    }

    self->_cookieStorage = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)downloadURLConfiguration:(id)a3
{
  v3 = a3;
  v4 = dispatch_queue_create("urlConfigurationQueue", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AASetupAssistantService_downloadURLConfiguration___block_invoke;
  block[3] = &unk_1E7C9AE38;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __52__AASetupAssistantService_downloadURLConfiguration___block_invoke(uint64_t a1)
{
  v2 = +[AASetupAssistantService urlConfiguration];
  (*(*(a1 + 32) + 16))();
}

- (void)authenticateWithHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_queue_create("authenticationRequestQueue", 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AASetupAssistantService_authenticateWithHandler___block_invoke;
  v7[3] = &unk_1E7C9BC78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __51__AASetupAssistantService_authenticateWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [AASetupAssistantAuthenticateRequest alloc];
  v4 = *(a1 + 32);
  if (v2)
  {
    v5 = [(AAAuthenticateRequest *)v3 initWithAccount:v4[5]];
    v6 = [[AADeviceProvisioningSession alloc] initWithAccount:*(*(a1 + 32) + 40)];
    [(AADeviceProvisioningSession *)v6 addProvisioningInfoToAARequest:v5];
  }

  else
  {
    v6 = [v4 appleID];
    v7 = [*(a1 + 32) password];
    v5 = [(AAAuthenticateRequest *)v3 initWithUsername:v6 password:v7];
  }

  [(AARequest *)v5 setCookieStorage:*(*(a1 + 32) + 48)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__AASetupAssistantService_authenticateWithHandler___block_invoke_2;
  v8[3] = &unk_1E7C9BDB8;
  v9 = *(a1 + 40);
  [(AARequest *)v5 performRequestWithHandler:v8];
}

void __51__AASetupAssistantService_authenticateWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AASetupAssistantService_authenticateWithHandler___block_invoke_3;
  v6[3] = &unk_1E7C9BC78;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __51__AASetupAssistantService_authenticateWithHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 error];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

- (void)createAppleIDWithParameters:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__AASetupAssistantService_createAppleIDWithParameters_handler___block_invoke;
  v8[3] = &unk_1E7C9C670;
  v9 = v6;
  v7 = v6;
  [(AASetupAssistantService *)self createAppleIDWithParameters:a3 handlerWithResponse:v8];
}

uint64_t __63__AASetupAssistantService_createAppleIDWithParameters_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a4, a6);
  }

  return result;
}

- (void)createAppleIDWithParameters:(id)a3 handlerWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "createAppleIDWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("createAppleIDQueue", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AASetupAssistantService_createAppleIDWithParameters_handlerWithResponse___block_invoke;
  block[3] = &unk_1E7C9A898;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __75__AASetupAssistantService_createAppleIDWithParameters_handlerWithResponse___block_invoke(id *a1)
{
  v2 = [a1[4] mutableCopy];
  v3 = [a1[5] appleID];
  [v2 setValue:v3 forKey:@"apple-id"];

  v4 = [a1[5] password];
  [v2 setValue:v4 forKey:@"password"];

  v5 = +[AADeviceInfo appleIDClientIdentifier];
  [v2 setValue:v5 forKey:@"client-id"];

  v6 = [AASetupAssistantCreateRequest alloc];
  v7 = a1[5];
  v8 = v7[5];
  v9 = [v7 _signingSession];
  v10 = [(AASetupAssistantCreateRequest *)v6 initWithAccount:v8 withAppleIDParameters:v2 signingSession:v9];

  v11 = *(a1[5] + 5);
  if (v11)
  {
    v12 = [v11 aa_personID];

    if (v12)
    {
      v13 = [[AADeviceProvisioningSession alloc] initWithAccount:*(a1[5] + 5)];
      [(AADeviceProvisioningSession *)v13 addProvisioningInfoToAARequest:v10];
    }
  }

  [(AARequest *)v10 setCookieStorage:*(a1[5] + 6)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__AASetupAssistantService_createAppleIDWithParameters_handlerWithResponse___block_invoke_2;
  v14[3] = &unk_1E7C9BDB8;
  v15 = a1[6];
  [(AARequest *)v10 performRequestWithHandler:v14];
}

void __75__AASetupAssistantService_createAppleIDWithParameters_handlerWithResponse___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 statusCode] != 401)
  {
    if (!v6)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v8 = v7;
      goto LABEL_13;
    }

    v12 = v6;
    v13 = [v12 status];
    if (v13 && (v14 = v13, [v12 status], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, v14, !v16))
    {
      v10 = [v12 personID];
      v9 = [v12 appleID];
      v11 = 1;
    }

    else
    {
      v10 = [v12 statusMessage];

      if (v10)
      {
        v17 = [MEMORY[0x1E695DF90] dictionary];
        v18 = [v12 statusMessage];
        [v17 setObject:v18 forKey:*MEMORY[0x1E696A578]];

        v19 = MEMORY[0x1E696ABC0];
        v20 = [v12 status];
        v8 = [v19 errorWithDomain:@"com.apple.appleaccount" code:objc_msgSend(v20 userInfo:{"intValue"), v17}];

        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_12;
      }

      v9 = 0;
      v11 = 0;
    }

    v8 = v7;
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:401 userInfo:0];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7;
LABEL_12:

LABEL_13:
  v21 = _AALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 67109378;
    v23[1] = v11;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "createAppleIDWithParameters calling handler with success %d error %@", v23, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

- (void)updateAppleIDWithParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "updateAppleIDWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("updateAppleIDQueue", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AASetupAssistantService_updateAppleIDWithParameters_handler___block_invoke;
  block[3] = &unk_1E7C9A898;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __63__AASetupAssistantService_updateAppleIDWithParameters_handler___block_invoke(id *a1)
{
  v2 = [a1[4] mutableCopy];
  v3 = [a1[5] appleID];
  [v2 setValue:v3 forKey:@"apple-id"];

  v4 = [a1[5] password];
  [v2 setValue:v4 forKey:@"password"];

  v5 = +[AADeviceInfo appleIDClientIdentifier];
  [v2 setValue:v5 forKey:@"client-id"];

  v6 = [AASetupAssistantUpdateRequest alloc];
  v7 = a1[5];
  v8 = v7[5];
  v9 = [v7 _signingSession];
  v10 = [(AASetupAssistantCreateRequest *)v6 initWithAccount:v8 withAppleIDParameters:v2 signingSession:v9];

  v11 = a1[5];
  if (v11[5])
  {
    v12 = [[AADeviceProvisioningSession alloc] initWithAccount:*(a1[5] + 5)];
    [(AADeviceProvisioningSession *)v12 addProvisioningInfoToAARequest:v10];

    v11 = a1[5];
  }

  [(AARequest *)v10 setCookieStorage:v11[6]];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__AASetupAssistantService_updateAppleIDWithParameters_handler___block_invoke_2;
  v13[3] = &unk_1E7C9BDB8;
  v14 = a1[6];
  [(AARequest *)v10 performRequestWithHandler:v13];
}

void __63__AASetupAssistantService_updateAppleIDWithParameters_handler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v22 = 0;
    v16 = 0;
    v23 = 0;
    v21 = v9;
    goto LABEL_11;
  }

  v11 = v8;
  v12 = [v11 status];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 status];
    v15 = [v14 intValue];

    if (!v15)
    {
      v16 = [v11 personID];
      v22 = [v11 appleID];
      v23 = 1;
      goto LABEL_9;
    }
  }

  v16 = [v11 statusMessage];

  if (!v16)
  {
    v22 = 0;
    v23 = 0;
LABEL_9:
    v21 = v10;
    goto LABEL_10;
  }

  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = [v11 statusMessage];
  [v17 setObject:v18 forKey:*MEMORY[0x1E696A578]];

  v19 = MEMORY[0x1E696ABC0];
  v20 = [v11 status];
  v21 = [v19 errorWithDomain:@"com.apple.appleaccount" code:objc_msgSend(v20 userInfo:{"intValue"), v17}];

  v22 = 0;
  v16 = 0;
  v23 = 0;
LABEL_10:

LABEL_11:
  v24 = _AALogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v26[0] = 67109378;
    v26[1] = v23;
    v27 = 2112;
    v28 = v21;
    _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "updateAppleIDWithParameters calling handler with success %d error %@", v26, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v25 = *MEMORY[0x1E69E9840];
}

- (void)setupDelegateAccountsWithParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "setupDelegateAccountsWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("setupDelegateAccountsQueue", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AASetupAssistantService_setupDelegateAccountsWithParameters_handler___block_invoke;
  block[3] = &unk_1E7C9A898;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __71__AASetupAssistantService_setupDelegateAccountsWithParameters_handler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setValue:*(a1 + 32) forKey:@"delegates"];
  v3 = [*(a1 + 40) appleID];
  [v2 setValue:v3 forKey:@"apple-id"];

  v4 = [*(a1 + 40) password];
  [v2 setValue:v4 forKey:@"password"];

  v5 = [*(a1 + 40) emailChoice];
  [v2 setValue:v5 forKey:@"email-choice"];

  v6 = +[AADeviceInfo appleIDClientIdentifier];
  [v2 setValue:v6 forKey:@"client-id"];

  v7 = [AASetupAssistantSetupDelegatesRequest alloc];
  v8 = *(a1 + 40);
  v9 = v8[5];
  v10 = [v8 _signingSession];
  v11 = [(AASetupAssistantSetupDelegatesRequest *)v7 initWithAccount:v9 withSetupParameters:v2 signingSession:v10];

  v12 = *(a1 + 40);
  if (*(v12 + 40))
  {
    v13 = [[AADeviceProvisioningSession alloc] initWithAccount:*(*(a1 + 40) + 40)];
    [(AADeviceProvisioningSession *)v13 addProvisioningInfoToAARequest:v11];

    v12 = *(a1 + 40);
  }

  [(AARequest *)v11 setCookieStorage:*(v12 + 48)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__AASetupAssistantService_setupDelegateAccountsWithParameters_handler___block_invoke_2;
  v14[3] = &unk_1E7C9BDB8;
  v15 = *(a1 + 48);
  [(AARequest *)v11 performRequestWithHandler:v14];
}

void __71__AASetupAssistantService_setupDelegateAccountsWithParameters_handler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v22 = 0;
    v21 = v9;
    goto LABEL_11;
  }

  v11 = v8;
  v12 = [v11 status];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 status];
    v15 = [v14 intValue];

    if (!v15)
    {
      v22 = [v11 responseParameters];
      goto LABEL_9;
    }
  }

  v16 = [v11 statusMessage];

  if (!v16)
  {
    v22 = 0;
LABEL_9:
    v21 = v10;
    goto LABEL_10;
  }

  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = [v11 statusMessage];
  [v17 setObject:v18 forKey:*MEMORY[0x1E696A578]];

  v19 = MEMORY[0x1E696ABC0];
  v20 = [v11 status];
  v21 = [v19 errorWithDomain:@"com.apple.appleaccount" code:objc_msgSend(v20 userInfo:{"intValue"), v17}];

  v22 = 0;
LABEL_10:

LABEL_11:
  v23 = _AALogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v21;
    _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "setupDelegateAccountsWithParameters calling handler with error %@", &v25, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v24 = *MEMORY[0x1E69E9840];
}

- (void)loginDelegatesWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "loginDelegatesWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("loginDelegatesQueue", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AASetupAssistantService_loginDelegatesWithParameters_completion___block_invoke;
  block[3] = &unk_1E7C9A898;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __67__AASetupAssistantService_loginDelegatesWithParameters_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setValue:*(a1 + 32) forKey:@"delegates"];
  v3 = [*(a1 + 40) appleID];
  [v2 setValue:v3 forKey:@"apple-id"];

  v4 = [*(a1 + 40) password];
  [v2 setValue:v4 forKey:@"password"];

  v5 = [*(a1 + 40) emailChoice];
  [v2 setValue:v5 forKey:@"email-choice"];

  v6 = +[AADeviceInfo appleIDClientIdentifier];
  [v2 setValue:v6 forKey:@"client-id"];

  v7 = [AALoginOrCreateDelegatesRequest alloc];
  v8 = *(a1 + 40);
  v9 = v8[5];
  v10 = [v8 _signingSession];
  v11 = [(AALoginOrCreateDelegatesRequest *)v7 initWithAccount:v9 parameters:v2 signingSession:v10];

  v12 = *(a1 + 40);
  if (*(v12 + 40))
  {
    v13 = [[AADeviceProvisioningSession alloc] initWithAccount:*(*(a1 + 40) + 40)];
    [(AADeviceProvisioningSession *)v13 addProvisioningInfoToAARequest:v11];

    v12 = *(a1 + 40);
  }

  [(AARequest *)v11 setCookieStorage:*(v12 + 48)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__AASetupAssistantService_loginDelegatesWithParameters_completion___block_invoke_2;
  v14[3] = &unk_1E7C9BDB8;
  v15 = *(a1 + 48);
  [(AARequest *)v11 performRequestWithHandler:v14];
}

void __67__AASetupAssistantService_loginDelegatesWithParameters_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 status];
    if (!v13 || (v14 = v13, [v10 status], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, v14, v12 = v11, v16))
    {
      v17 = [v10 statusMessage];

      v12 = v11;
      if (v17)
      {
        v26 = *MEMORY[0x1E696A578];
        v18 = [v10 statusMessage];
        v27[0] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

        v20 = MEMORY[0x1E696ABC0];
        v21 = [v10 status];
        v12 = [v20 errorWithDomain:@"com.apple.appleaccount" code:objc_msgSend(v21 userInfo:{"intValue"), v19}];
      }
    }
  }

  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v12;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "loginDelegatesWithParameters calling completion handler with error %@", &v24, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v23 = *MEMORY[0x1E69E9840];
}

- (void)upgradeiCloudTermsIfNecessaryWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__AASetupAssistantService_upgradeiCloudTermsIfNecessaryWithHandler___block_invoke;
  v6[3] = &unk_1E7C9C698;
  v7 = v4;
  v5 = v4;
  [(AASetupAssistantService *)self upgradeiCloudTermsIfNecessaryWithCustomHeaders:0 handler:v6];
}

- (void)upgradeiCloudTermsIfNecessaryWithCustomHeaders:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_account)
  {
    v8 = dispatch_queue_create("upgradeTermsQueue", 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AASetupAssistantService_upgradeiCloudTermsIfNecessaryWithCustomHeaders_handler___block_invoke;
    block[3] = &unk_1E7C9A898;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Error: No AppleAccount set on AASetupAssistant Service", v10, 2u);
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:0 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v8);
  }
}

void __82__AASetupAssistantService_upgradeiCloudTermsIfNecessaryWithCustomHeaders_handler___block_invoke(uint64_t a1)
{
  v2 = [[AASetupAssistantTermsFetchRequest alloc] initWithAccount:*(*(a1 + 32) + 40)];
  if (*(*(a1 + 32) + 40))
  {
    v3 = [[AADeviceProvisioningSession alloc] initWithAccount:*(*(a1 + 32) + 40)];
    [(AADeviceProvisioningSession *)v3 addProvisioningInfoToAARequest:v2];
  }

  if (*(a1 + 40))
  {
    [(AARequest *)v2 setCustomHeaders:?];
  }

  [(AARequest *)v2 setCookieStorage:*(*(a1 + 32) + 48)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__AASetupAssistantService_upgradeiCloudTermsIfNecessaryWithCustomHeaders_handler___block_invoke_2;
  v4[3] = &unk_1E7C9BDB8;
  v5 = *(a1 + 48);
  [(AARequest *)v2 performRequestWithHandler:v4];
}

void __82__AASetupAssistantService_upgradeiCloudTermsIfNecessaryWithCustomHeaders_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 xmlUIData];
    v9 = _AALogSystem();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "We got the new iCloud Terms from the server", &v13, 2u);
      }
    }

    else if (v10)
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Fetching iCloud Terms failed with error: %@", &v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Fetching iCloud Terms failed with error: %@", &v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)shouldPresentUpgradeFlowWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "shouldPresentUpgradeFlowWithCompletion start", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(AASetupAssistantService *)self appleID];
  [v6 setValue:v7 forKey:@"apple-id"];

  v8 = [(AASetupAssistantService *)self password];
  [v6 setValue:v8 forKey:@"password"];

  v9 = +[AADeviceInfo appleIDClientIdentifier];
  [v6 setValue:v9 forKey:@"client-id"];

  v10 = [[AASetupAssistantUpgradeStatusRequest alloc] initWithAccount:self->_account];
  if (self->_account)
  {
    v11 = [[AADeviceProvisioningSession alloc] initWithAccount:self->_account];
    [(AADeviceProvisioningSession *)v11 addProvisioningInfoToAARequest:v10];
  }

  [(AARequest *)v10 setCookieStorage:self->_cookieStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__AASetupAssistantService_shouldPresentUpgradeFlowWithCompletion___block_invoke;
  v13[3] = &unk_1E7C9BDB8;
  v14 = v4;
  v12 = v4;
  [(AARequest *)v10 performRequestWithHandler:v13];
}

void __66__AASetupAssistantService_shouldPresentUpgradeFlowWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
    v9 = [v8 upgradeStatus];
    v10 = _AALogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "We got the upgrade status from the server", &v15, 2u);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 BOOLValue], v7);
    }

    else
    {
      if (v11)
      {
        v13 = [v8 responseDictionary];
        v15 = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Fetching upgrade status failed with error: %@ response: %@", &v15, 0x16u);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), 1, v7);
    }
  }

  else
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Fetching upgrade status got no response and error: %@", &v15, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_signingSession
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_signingSession)
  {
    goto LABEL_7;
  }

  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:self->_signingSessionCreationDate];
  v5 = v4;

  if (v5 > 540.0)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "shared signing session expired. creating a new signing session.", buf, 2u);
    }

    signingSession = self->_signingSession;
    self->_signingSession = 0;
  }

  if (!self->_signingSession)
  {
LABEL_7:
    v8 = [MEMORY[0x1E695DF00] date];
    signingSessionCreationDate = self->_signingSessionCreationDate;
    self->_signingSessionCreationDate = v8;

    v10 = +[AASetupAssistantService urlConfiguration];
    v11 = [v10 signingSessionCertURL];
    v12 = +[AASetupAssistantService urlConfiguration];
    v13 = [v12 signingSessionURL];
    v23 = 0;
    v14 = [AASigningSession establishedSessionWithCertURL:v11 sessionURL:v13 error:&v23];
    v15 = v23;
    v16 = self->_signingSession;
    self->_signingSession = v14;

    if (v15)
    {
      v17 = _AALogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v15;
        _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Failed to create a shared signing session: %@", buf, 0xCu);
      }
    }
  }

  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_signingSession;
    *buf = 138412290;
    v25 = v19;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "using shared signing session %@", buf, 0xCu);
  }

  v20 = self->_signingSession;
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)_doHSADeviceProvisioningWithDSID:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AASetupAssistantService _doHSADeviceProvisioningWithDSID:data:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AASetupAssistantService _doHSADeviceProvisioningWithDSID:data:];
LABEL_3:
  v9 = [[AADeviceProvisioningSession alloc] initWithDSID:v6];
  [(AADeviceProvisioningSession *)v9 setCookieStorageRef:self->_cookieStorage];
  v10 = [(AADeviceProvisioningSession *)v9 provisionDeviceWithData:v8];
  v11 = _AALogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v16 = 0;
      v13 = "Device provisioning failed";
      v14 = &v16;
LABEL_8:
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    }
  }

  else if (v12)
  {
    v15 = 0;
    v13 = "Device provisioning completed sucessfully";
    v14 = &v15;
    goto LABEL_8;
  }
}

- (void)_doHSADeviceProvisioningSynchronizationWithDSID:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AASetupAssistantService _doHSADeviceProvisioningSynchronizationWithDSID:data:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AASetupAssistantService _doHSADeviceProvisioningSynchronizationWithDSID:data:];
LABEL_3:
  v9 = [[AADeviceProvisioningSession alloc] initWithDSID:v6];
  [(AADeviceProvisioningSession *)v9 setCookieStorageRef:self->_cookieStorage];
  v10 = [(AADeviceProvisioningSession *)v9 synchronizeProvisioningWithData:v8];
  v11 = _AALogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v16 = 0;
      v13 = "Device provisioning sync failed";
      v14 = &v16;
LABEL_8:
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    }
  }

  else if (v12)
  {
    v15 = 0;
    v13 = "Device provisioning sync completed successfully";
    v14 = &v15;
    goto LABEL_8;
  }
}

- (void)_doHSADeviceReprovisioningWithDSID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    [AASetupAssistantService _doHSADeviceReprovisioningWithDSID:];
  }

  v4 = [[AADeviceProvisioningSession alloc] initWithDSID:v3];
  v5 = [(AADeviceProvisioningSession *)v4 eraseProvisioning];
  if (v5)
  {
    v6 = v5;
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Something went wrong when trying to erase the device provisioning: %d", v9, 8u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_doHSADeviceProvisioningWithDSID:data:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_doHSADeviceProvisioningWithDSID:data:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_doHSADeviceProvisioningSynchronizationWithDSID:data:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_doHSADeviceProvisioningSynchronizationWithDSID:data:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_doHSADeviceReprovisioningWithDSID:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end