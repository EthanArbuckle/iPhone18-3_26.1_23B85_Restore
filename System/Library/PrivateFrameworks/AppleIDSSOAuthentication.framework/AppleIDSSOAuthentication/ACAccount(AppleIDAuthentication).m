@interface ACAccount(AppleIDAuthentication)
- (id)_expirationCheckedTokenForCredential:()AppleIDAuthentication;
- (id)aida_alternateDSID;
- (id)aida_deviceProvisioningInfo;
- (id)aida_dsid;
- (id)aida_tokenForService:()AppleIDAuthentication;
- (id)aida_tokenWithExpirationCheck;
- (id)aida_tokenWithExpiryCheckForService:()AppleIDAuthentication;
- (void)_performSilentReauthForAccount:()AppleIDAuthentication completionHandler:;
- (void)aida_tokenForService:()AppleIDAuthentication completionHandler:;
@end

@implementation ACAccount(AppleIDAuthentication)

- (id)aida_tokenForService:()AppleIDAuthentication
{
  v4 = a3;
  v5 = [a1 accountStore];
  v6 = [v5 credentialForAccount:a1 serviceID:v4];

  v7 = [v6 token];

  return v7;
}

- (id)aida_tokenWithExpiryCheckForService:()AppleIDAuthentication
{
  v4 = a3;
  v5 = [a1 accountStore];
  v6 = [v5 credentialForAccount:a1 serviceID:v4];

  v7 = [a1 _expirationCheckedTokenForCredential:v6];

  return v7;
}

- (void)aida_tokenForService:()AppleIDAuthentication completionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 aida_tokenWithExpiryCheckForService:v6];
  if (v8)
  {
    if (v7)
    {
      v7[2](v7, v8, 0);
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__ACAccount_AppleIDAuthentication__aida_tokenForService_completionHandler___block_invoke;
    v9[3] = &unk_1E8683278;
    v11 = v7;
    v10 = v6;
    [a1 _performSilentReauthForAccount:a1 completionHandler:v9];
  }
}

- (id)aida_tokenWithExpirationCheck
{
  v2 = [a1 credential];
  v3 = [a1 _expirationCheckedTokenForCredential:v2];

  return v3;
}

- (id)aida_alternateDSID
{
  v2 = [a1 accountPropertyForKey:@"altDSID"];
  if (!v2)
  {
    v2 = [a1 accountPropertyForKey:@"adsid"];
  }

  return v2;
}

- (id)aida_dsid
{
  v1 = [a1 accountPropertyForKey:@"dsid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 stringValue];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

- (id)aida_deviceProvisioningInfo
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [a1 aida_dsid];
  v3 = MEMORY[0x1E696AE88];
  v4 = [a1 aida_dsid];
  v5 = [v3 scannerWithString:v4];

  v24 = 0;
  [v5 scanUnsignedLongLong:&v24];
  v22 = 0;
  v23 = 0;
  v21 = 0;
  qi864985u0(v24, &v23, &v21 + 4, &v22, &v21);
  if (v6)
  {
    v7 = v6;
    if (v6 == -45061)
    {
      v8 = _AIDALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "Account not provisioned";
        v10 = v8;
        v11 = 2;
LABEL_14:
        _os_log_impl(&dword_1DEB1B000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else
    {
      v8 = _AIDALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v28) = v7;
        v9 = "ADIOTPRequest failed. ERROR: %d";
        v10 = v8;
        v11 = 8;
        goto LABEL_14;
      }
    }

    v18 = 0;
    goto LABEL_16;
  }

  v12 = objc_alloc(MEMORY[0x1E695DEF0]);
  v8 = [v12 initWithBytesNoCopy:v23 length:HIDWORD(v21) freeWhenDone:0];
  v13 = objc_alloc(MEMORY[0x1E695DEF0]);
  v14 = [v13 initWithBytesNoCopy:v22 length:v21 freeWhenDone:0];
  v15 = [v8 base64EncodedStringWithOptions:0];
  v16 = [v14 base64EncodedStringWithOptions:0];
  v17 = _AIDALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_1DEB1B000, v17, OS_LOG_TYPE_DEFAULT, "Provisioning Info: mid - %@ otp - %@", buf, 0x16u);
  }

  v25[0] = @"mid";
  v25[1] = @"otp";
  v26[0] = v15;
  v26[1] = v16;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  if (v23)
  {
    jk24uiwqrg(v23);
  }

  if (v22)
  {
    jk24uiwqrg(v22);
  }

LABEL_16:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_expirationCheckedTokenForCredential:()AppleIDAuthentication
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [v3 tokenExpiryDate];
  v6 = v5;
  if (v5 && [v5 compare:v4] != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 token];
  }

  return v7;
}

- (void)_performSilentReauthForAccount:()AppleIDAuthentication completionHandler:
{
  v5 = a4;
  v6 = MEMORY[0x1E698DCB8];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setAuthenticationType:1];
  [v8 setIsUsernameEditable:0];
  [v8 setServiceType:1];
  [v8 setShouldUpdatePersistentServiceTokens:1];
  v9 = [v7 aida_alternateDSID];

  if (v9 && [v9 length])
  {
    [v8 setAltDSID:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__ACAccount_AppleIDAuthentication___performSilentReauthForAccount_completionHandler___block_invoke;
  v12[3] = &unk_1E86832A0;
  v13 = v5;
  v11 = v5;
  [v10 authenticateWithContext:v8 completion:v12];
}

@end