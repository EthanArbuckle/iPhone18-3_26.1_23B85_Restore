uint64_t sub_29C8130C8(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = _AIDALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_29C812000, v3, OS_LOG_TYPE_DEFAULT, "No luck with silent renewal. Trying interactive renewal for services: %@", &v10, 0xCu);
    }

    result = [*(a1 + 40) _attemptInteractiveCredentialRenewalForAccount:*(a1 + 48) store:*(a1 + 56) options:*(a1 + 64) completion:*(a1 + 72)];
    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = *(*(a1 + 72) + 16);
    v9 = *MEMORY[0x29EDCA608];

    return v8();
  }

  return result;
}

void sub_29C8133CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AIDALogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29C813CD8(v4, v6);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_29C812000, v6, OS_LOG_TYPE_DEFAULT, "Silent renewal succeeded!", v8, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_29C81358C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _AIDALogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29C813D50(v6, v8);
    }

    v9 = [v6 domain];
    if ([v9 isEqual:*MEMORY[0x29EDBFAF8]])
    {
      v10 = [v6 code];

      if (v10 == -7003)
      {
        v11 = *(*(a1 + 32) + 16);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v11 = *(*(a1 + 32) + 16);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_29C812000, v8, OS_LOG_TYPE_DEFAULT, "Renewal succeeded!", v12, 2u);
  }

  v11 = *(*(a1 + 32) + 16);
LABEL_12:
  v11();
}

uint64_t sub_29C813900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v6 = [*(a1 + 32) credential];
    [v6 setPassword:0];

    v7 = *(a1 + 32);
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_29C813C40(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = [a1 name];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_29C812000, a2, OS_LOG_TYPE_ERROR, "Client - %@ does not have the correct entitlements to get the master token", &v5, 0xCu);

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29C813CD8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C812000, a2, OS_LOG_TYPE_ERROR, "Silent renewal failed! Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C813D50(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C812000, a2, OS_LOG_TYPE_ERROR, "Renew failed! Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

;
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = sub_29C8133CC;
    v22[3] = &unk_29F326500;
    v23 = v13;
    [v19 authenticateWithContext:v18 completion:v22];
  }

  else
  {
    v20 = _AIDALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_29C812000, v20, OS_LOG_TYPE_DEFAULT, "No matching iCloud account for GS account: %@", buf, 0xCu);
    }

    (*(v13 + 2))(v13, 2, 0);
  }

  v21 = *MEMORY[0x29EDCA608];
}

- (void)_attemptInteractiveCredentialRenewalForAccount:(id)a3 store:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(AppleIDSSOAuthenticationPlugin *)self _standardAuthContextForAccount:a3 store:a4 options:a5];
  v12 = [(AppleIDSSOAuthenticationPlugin *)self _authController];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = sub_29C81358C;
  v14[3] = &unk_29F326500;
  v15 = v10;
  v13 = v10;
  [v12 authenticateWithContext:v11 completion:v14];
}

- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 username];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  v13 = [v8 credential];
  v14 = [v13 password];

  if (v14)
  {
    v15 = [v8 credential];
    v16 = [v15 password];
    v17 = [(AppleIDSSOAuthenticationPlugin *)self _silentAuthContextForAccount:v8 rawPassword:v16 store:v9 options:0];

    v18 = [(AppleIDSSOAuthenticationPlugin *)self _authController];
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = sub_29C813900;
    v23[3] = &unk_29F326528;
    v24 = v8;
    v25 = v10;
    [v18 authenticateWithContext:v17 completion:v23];
  }

  else
  {
LABEL_4:
    v19 = _AIDALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_29C812000, v19, OS_LOG_TYPE_DEFAULT, "ERROR: Account missing username/password", v22, 2u);
    }

    v20 = MEMORY[0x29EDB9FA0];
    v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:@"Account missing username/password" forKey:*MEMORY[0x29EDB9ED8]];
    v17 = [v20 errorWithDomain:@"com.apple.appleaccount" code:0 userInfo:v21];

    (*(v10 + 2))(v10, v8, v17);
  }
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBFB50]);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

- (id)_standardAuthContextForAccount:(id)a3 store:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x29EDBFB48];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = [v7 aida_alternateDSID];
  [v11 setAltDSID:v12];

  v13 = [v7 aida_dsid];
  [v11 setDSID:v13];

  [v11 setIsUsernameEditable:0];
  [v11 setServiceType:1];
  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    [v11 setAuthenticationType:1];
  }

  [v11 setShouldUpdatePersistentServiceTokens:1];
  v16 = [v7 username];
  [v11 setUsername:v16];

  v17 = [v10 client];
  v18 = [v17 bundleID];
  [v11 _setProxiedAppBundleID:v18];

  v19 = [v10 client];

  v20 = [v19 name];
  [v11 _setProxiedAppName:v20];

  [v11 _setProxyingForApp:1];
  v21 = [v8 objectForKeyedSubscript:*MEMORY[0x29EDB8448]];
  if ([v21 count])
  {
    [v11 setServiceIdentifiers:v21];
  }

  return v11;
}

- (id)_silentAuthContextForAccount:(id)a3 rawPassword:(id)a4 store:(id)a5 options:(id)a6
{
  v10 = a4;
  v11 = [(AppleIDSSOAuthenticationPlugin *)self _standardAuthContextForAccount:a3 store:a5 options:a6];
  [v11 setAuthenticationType:1];
  [v11 _setPassword:v10];

  return v11;
}

@end