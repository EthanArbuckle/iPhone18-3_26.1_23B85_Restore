@interface AAUIProxiedTermsRemoteUI
- (AAUIProxiedTermsRemoteUI)initWithAuthResults:(id)a3 proxiedDevice:(id)a4 anisetteDataProvider:(id)a5 appProvidedContext:(id)a6 termsEntries:(id)a7;
- (id)_authContextForRenewCredentials;
- (id)_sessionConfiguration;
- (void)_addHeadersToRequest:(id)a3;
- (void)_agreeToTermsWithURLString:(id)a3 serverInfo:(id)a4 preferPassword:(BOOL)a5 completion:(id)a6;
- (void)_sendAcceptedTermsInfo:(id)a3;
@end

@implementation AAUIProxiedTermsRemoteUI

- (AAUIProxiedTermsRemoteUI)initWithAuthResults:(id)a3 proxiedDevice:(id)a4 anisetteDataProvider:(id)a5 appProvidedContext:(id)a6 termsEntries:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  proxiedDevice = self->_proxiedDevice;
  self->_proxiedDevice = v12;
  v16 = v12;
  v17 = a7;
  v18 = a3;

  appProvidedContext = self->_appProvidedContext;
  self->_appProvidedContext = v14;
  v20 = v14;

  anisetteDataProvider = self->_anisetteDataProvider;
  self->_anisetteDataProvider = v13;
  v22 = v13;

  v23 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v24 = objc_alloc(MEMORY[0x1E6959A28]);
  v25 = [v23 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  v26 = [v24 initWithAccountType:v25];

  v27 = [v18 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  [v26 setUsername:v27];

  v28 = [v18 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  [v26 setAccountProperty:v28 forKey:@"personID"];

  v29 = [v18 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  [v26 _aa_setAltDSID:v29];

  v30 = [v18 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];

  [v26 aa_setPassword:v30];
  v33.receiver = self;
  v33.super_class = AAUIProxiedTermsRemoteUI;
  v31 = [(AAUIGenericTermsRemoteUI *)&v33 initWithAccount:v26 inStore:v23 termsEntries:v17];

  return v31;
}

- (id)_sessionConfiguration
{
  v3 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
  v4 = objc_alloc_init(MEMORY[0x1E698DCC8]);
  [v4 setPairedDevice:self->_proxiedDevice];
  [v4 setAnisetteDataProvider:self->_anisetteDataProvider];
  [v3 set_appleIDContext:v4];

  return v3;
}

- (id)_authContextForRenewCredentials
{
  v3 = objc_alloc_init(MEMORY[0x1E698DE80]);
  v4 = [(AAUIGenericTermsRemoteUI *)self account];
  v5 = [v4 username];
  [v3 setUsername:v5];

  [v3 setIsUsernameEditable:0];
  v6 = [(AAUIGenericTermsRemoteUI *)self originatingViewController];
  [v3 setPresentingViewController:v6];

  [v3 setShouldOfferSecurityUpgrade:0];
  [v3 setServiceType:1];
  [v3 setProxiedDevice:self->_proxiedDevice];
  [v3 setAppProvidedContext:self->_appProvidedContext];
  [v3 setAuthenticationType:0];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PASSWORD_REQUIRED_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  [v3 setTitle:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"RENEW_FOR_TERMS_AND_CONDITIONS_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  v12 = [(AAUIGenericTermsRemoteUI *)self account];
  v13 = [v12 username];
  v14 = [v9 stringWithFormat:v11, v13];
  [v3 setReason:v14];

  return v3;
}

- (void)_addHeadersToRequest:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 aa_addClientInfoHeaders];
  v5 = [(AAUIGenericTermsRemoteUI *)self account];
  [v4 aa_addProxiedAuthHeaderWithAccount:v5];

  [v4 aa_addAppProvidedContext:self->_appProvidedContext];
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 allHTTPHeaderFields];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Proxied Terms Request Headers: %@", &v8, 0xCu);
  }
}

- (void)_agreeToTermsWithURLString:(id)a3 serverInfo:(id)a4 preferPassword:(BOOL)a5 completion:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x1E698B9E8];
  v11 = a4;
  v12 = a3;
  v13 = [v10 alloc];
  v14 = [(AAUIGenericTermsRemoteUI *)self account];
  v15 = [v13 initWithURLString:v12 account:v14];

  [v15 setPreferPassword:1];
  v16 = objc_alloc_init(MEMORY[0x1E696AD68]);
  [(AAUIProxiedTermsRemoteUI *)self _addHeadersToRequest:v16];
  v17 = [v16 allHTTPHeaderFields];
  [v15 setCustomHeaders:v17];

  [v15 setServerInfo:v11];
  proxiedDevice = self->_proxiedDevice;
  anisetteDataProvider = self->_anisetteDataProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__AAUIProxiedTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke;
  v21[3] = &unk_1E820D0D0;
  v21[4] = self;
  v22 = v9;
  v20 = v9;
  [v15 performRequestForDevice:proxiedDevice anisetteDataProvider:anisetteDataProvider withHandler:v21];
}

void __92__AAUIProxiedTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __92__AAUIProxiedTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_1(v6, v7, v8);
  }

  if (([v6 statusCode] - 200) > 0x63)
  {
    v16 = _AAUILogSystem();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v17)
      {
        __92__AAUIProxiedTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_2(v7, v16);
      }
    }

    else if (v17)
    {
      __92__AAUIProxiedTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_3(v16);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Successfully agreed to iCloud terms!", v18, 2u);
    }

    v10 = *(a1 + 32);
    v11 = v6;
    v12 = [v11 acceptedTermsInfo];
    [v10 _sendAcceptedTermsInfo:v12];

    v13 = *(a1 + 40);
    v14 = [v11 responseDictionary];
    v15 = [v14 objectForKeyedSubscript:@"serverInfo"];
    (*(v13 + 16))(v13, 1, v15);
  }
}

- (void)_sendAcceptedTermsInfo:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(AAUIGenericTermsRemoteUI *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(AAUIGenericTermsRemoteUI *)self delegate];
      [v6 genericTermsRemoteUI:self acceptedTermsInfo:v7];
    }
  }
}

void __92__AAUIProxiedTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "AAiCloudTermsAgreeRequest response: %@. Error: %@", &v3, 0x16u);
}

void __92__AAUIProxiedTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Error agreeing to iCloud terms: %@", &v2, 0xCu);
}

@end