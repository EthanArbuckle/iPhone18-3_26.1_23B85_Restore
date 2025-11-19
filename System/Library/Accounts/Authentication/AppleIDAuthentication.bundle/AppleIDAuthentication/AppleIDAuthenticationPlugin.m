@interface AppleIDAuthenticationPlugin
+ (id)_grayModeWhitelist;
- (AppleIDAuthenticationPlugin)init;
- (BOOL)_clientHasEntitlement:(id)a3;
- (BOOL)_isProxiedAuthenticationWithContext:(id)a3;
- (id)_accountTypeIDsThatReplacedAppleIDAccountType;
- (id)_authController;
- (id)_findAndRemoveOldFMIPTokenForAccount:(id)a3;
- (id)_findAndRemoveOldiCloudTokenForAccount:(id)a3;
- (id)_frontmostApplicationId;
- (id)_loginDelegatesParameters;
- (id)_parametersForProxiedAuthentication;
- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6;
- (void)_authenticateAccount:(id)a3 inStore:(id)a4 options:(id)a5 errorMessage:(id)a6 completion:(id)a7;
- (void)_beginPETBasedLoginWithAccount:(id)a3 PET:(id)a4 store:(id)a5 completion:(id)a6;
- (void)_convertPasswordToPETForAppleID:(id)a3 altDSID:(id)a4 password:(id)a5 services:(id)a6 completion:(id)a7;
- (void)_fetchTokenForAccount:(id)a3 accountStore:(id)a4 forceFetch:(BOOL)a5 withHandler:(id)a6;
- (void)_getPasswordFromCompanionForAccount:(id)a3 store:(id)a4 options:(id)a5 completion:(id)a6;
- (void)_handleDelegatesResponseForAccount:(id)a3 store:(id)a4 response:(id)a5 error:(id)a6 handler:(id)a7;
- (void)_handleRenewFailure:(id)a3 forAccount:(id)a4 accountStore:(id)a5 options:(id)a6 completion:(id)a7;
- (void)_invokeDelegatesWithAuthenticationResponse:(id)a3 password:(id)a4 store:(id)a5 account:(id)a6 completion:(id)a7;
- (void)_isAccountReallyInGreyMode:(id)a3 accountStore:(id)a4 completion:(id)a5;
- (void)_loginWithAccount:(id)a3 store:(id)a4 companionDevice:(id)a5 options:(id)a6 completion:(id)a7;
- (void)_migrateAppleIDTokensIfNeededForAccount:(id)a3 credential:(id *)a4 store:(id)a5;
- (void)_migrateFMIPTokenIfNeededForAccount:(id)a3 credential:(id)a4;
- (void)_migrateiCloudTokenIfNeededForAccount:(id)a3 credential:(id)a4;
- (void)_performLoginDelegatesRequestForAccount:(id)a3 store:(id)a4 handler:(id)a5;
- (void)_renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 errorMessage:(id)a6 completion:(id)a7;
- (void)_silentlyAuthenticateAppleID:(id)a3 altDSID:(id)a4 companionDevice:(id)a5 services:(id)a6 completion:(id)a7;
- (void)_tryPasswordLoginWithAccount:(id)a3 store:(id)a4 services:(id)a5 completion:(id)a6;
- (void)_updateDSID:(id)a3 withRawPassword:(id)a4 suggestedAccount:(id)a5 store:(id)a6 completion:(id)a7;
- (void)_validateAuthenticationResults:(id)a3 error:(id)a4 forContext:(id)a5 completion:(id)a6;
- (void)discoverPropertiesForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
@end

@implementation AppleIDAuthenticationPlugin

+ (id)_grayModeWhitelist
{
  if (qword_2A1A10998 != -1)
  {
    sub_29C80A0C0();
  }

  v3 = qword_2A1A109A0;

  return v3;
}

- (AppleIDAuthenticationPlugin)init
{
  v8.receiver = self;
  v8.super_class = AppleIDAuthenticationPlugin;
  v2 = [(AppleIDAuthenticationPlugin *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8E20]);
    accountsAwaitingRemotePasswordEntry = v2->_accountsAwaitingRemotePasswordEntry;
    v2->_accountsAwaitingRemotePasswordEntry = v3;

    v5 = objc_alloc_init(MEMORY[0x29EDBE340]);
    followUpController = v2->_followUpController;
    v2->_followUpController = v5;
  }

  return v2;
}

- (BOOL)_clientHasEntitlement:(id)a3
{
  v3 = a3;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_29C80A04C();
  }

  if ([v3 hasEntitlement:*MEMORY[0x29EDB83E0]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 hasEntitlement:*MEMORY[0x29EDB83E8]];
  }

  return v5;
}

- (void)_isAccountReallyInGreyMode:(id)a3 accountStore:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v10, OS_LOG_TYPE_DEFAULT, "Make a quick round-trip to the server to see if we really need to accept new terms", buf, 2u);
  }

  v11 = objc_alloc_init(MEMORY[0x29EDBA088]);
  v12 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, MEMORY[0x29EDCA578]);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3221225472;
  handler[2] = sub_29C7FF828;
  handler[3] = &unk_29F3255B8;
  v13 = v11;
  v37 = v13;
  v14 = v12;
  v38 = v14;
  dispatch_source_set_event_handler(v14, handler);
  v15 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
  *buf = 0;
  v33 = buf;
  v34 = 0x2020000000;
  v35 = 1;
  v16 = [MEMORY[0x29EDBDFF8] credentialForAccount:v7 clientID:0];
  v17 = objc_alloc(MEMORY[0x29EDBE3D0]);
  v18 = [v16 token];
  v19 = [v17 initWithAccount:v7 token:v18];

  v20 = objc_alloc(MEMORY[0x29EDBE388]);
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = sub_29C7FF8A4;
  v26[3] = &unk_29F325608;
  v21 = v9;
  v30 = v21;
  v31 = buf;
  v22 = v7;
  v27 = v22;
  v23 = v8;
  v28 = v23;
  v24 = v14;
  v29 = v24;
  v25 = [v20 initWithRequest:v19 handler:v26];
  [v13 addOperation:v25];
  dispatch_resume(v24);

  _Block_object_dispose(buf, 8);
}

- (id)_findAndRemoveOldiCloudTokenForAccount:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x29EDBE350];
  v5 = [v3 username];
  v6 = [v4 passwordForServiceName:@"com.apple.account.AppleID.appleid-token-icloud" username:v5 accessGroup:0];

  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "Found an Apple ID iCloud token we can use", buf, 2u);
    }

    v8 = MEMORY[0x29EDBE350];
    v9 = [v3 username];
    v10 = @"com.apple.account.AppleID.appleid-token-icloud";
    v11 = v8;
    v12 = v9;
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x29EDBE350];
    v15 = [v3 username];
    v6 = [v14 passwordForServiceName:@"Apple-token-sync" username:v15 accessGroup:@"appleaccount"];

    if (!v6)
    {
      goto LABEL_10;
    }

    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_29C7FE000, v16, OS_LOG_TYPE_DEFAULT, "Found an old iCloud token we can use", v19, 2u);
    }

    v17 = MEMORY[0x29EDBE350];
    v9 = [v3 username];
    v10 = @"Apple-token-sync";
    v13 = @"appleaccount";
    v11 = v17;
    v12 = v9;
  }

  [v11 removePasswordForService:v10 username:v12 accessGroup:v13];

LABEL_10:

  return v6;
}

- (id)_findAndRemoveOldFMIPTokenForAccount:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x29EDBDFF8];
  v5 = [v3 parentAccount];
  v6 = [v4 credentialForAccount:v5 clientID:0];

  v7 = [v6 findMyiPhoneToken];
  if (v7)
  {
    v8 = v7;
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v9, OS_LOG_TYPE_DEFAULT, "Found an old FMIP token we can use, from the iCloud account", buf, 2u);
    }

    [v6 setFindMyiPhoneToken:0];
    v10 = [v3 parentAccount];
    [v10 setCredential:v6];

    v11 = MEMORY[0x29EDBDFF8];
    v12 = [v3 parentAccount];
    [v11 setCredentialForAccount:v12];
  }

  else
  {
    v13 = MEMORY[0x29EDBE350];
    v14 = [v3 username];
    v8 = [v13 passwordForServiceName:@"Apple-token-fmip" username:v14 accessGroup:@"appleaccount"];

    if (!v8)
    {
      goto LABEL_10;
    }

    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_29C7FE000, v15, OS_LOG_TYPE_DEFAULT, "Found an old FMIP token we can use", v18, 2u);
    }

    v16 = MEMORY[0x29EDBE350];
    v12 = [v3 username];
    [v16 removePasswordForService:@"Apple-token-fmip" username:v12 accessGroup:@"appleaccount"];
  }

LABEL_10:

  return v8;
}

- (void)_migrateiCloudTokenIfNeededForAccount:(id)a3 credential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountType];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x29EDB81C8]];

  if (v10)
  {
    v11 = [v7 token];
    if (!v11)
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "Couldn't find the AppleAccount token in our keychain. Looking elsewhere.", v13, 2u);
      }

      v11 = [(AppleIDAuthenticationPlugin *)self _findAndRemoveOldiCloudTokenForAccount:v6];
      if (v11)
      {
        [v7 setToken:v11];
        [v6 setCredential:v7];
        [MEMORY[0x29EDBDFF8] setCredentialForAccount:v6];
      }
    }
  }
}

- (void)_migrateFMIPTokenIfNeededForAccount:(id)a3 credential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountType];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x29EDB8208]];

  if (v10)
  {
    v11 = [v7 token];
    if (!v11)
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "Couldn't find the FMIP token in our keychain. Looking elsewhere.", v13, 2u);
      }

      v11 = [(AppleIDAuthenticationPlugin *)self _findAndRemoveOldFMIPTokenForAccount:v6];
      if (v11)
      {
        [v7 setToken:v11];
        [v6 setCredential:v7];
        [MEMORY[0x29EDBDFF8] setCredentialForAccount:v6 error:0];
        [v6 setAuthenticated:1];
      }
    }
  }
}

- (void)_migrateAppleIDTokensIfNeededForAccount:(id)a3 credential:(id *)a4 store:(id)a5
{
  v29 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a5;
  v10 = [(AppleIDAuthenticationPlugin *)self _accountTypeIDsThatReplacedAppleIDAccountType];
  v11 = [v8 accountType];
  v12 = [v11 identifier];
  v13 = [v10 containsObject:v12];

  if (v13)
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 accountType];
      v16 = [v15 identifier];
      v27 = 138412290;
      v28 = v16;
      _os_log_impl(&dword_29C7FE000, v14, OS_LOG_TYPE_DEFAULT, "The %@ account we're dealing with is a successor of Apple ID accounts. We'll check to see if its credential is still associated with the Apple ID account, and we'll migrate it if necessary.", &v27, 0xCu);
    }

    v17 = *MEMORY[0x29EDBE448];
    v18 = [v8 accountPropertyForKey:*MEMORY[0x29EDBE448]];
    if (v18)
    {
      v19 = objc_opt_new();
      v20 = [v19 migrateAppleIDBasedCredentialForAccount:v8];
      v21 = _AALogSystem();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v22)
        {
          v23 = [v8 shortDebugName];
          v27 = 138412290;
          v28 = v23;
          _os_log_impl(&dword_29C7FE000, v21, OS_LOG_TYPE_DEFAULT, "Success! We managed to find a credential for %@ that was associated with a stale AppleID account.", &v27, 0xCu);
        }

        v24 = v20;
        *a4 = v20;
        [v8 setAccountProperty:0 forKey:v17];
        [v9 saveVerifiedAccount:v8 withCompletionHandler:&unk_2A23C7F10];
      }

      else
      {
        if (v22)
        {
          v25 = [v8 shortDebugName];
          v27 = 138412290;
          v28 = v25;
          _os_log_impl(&dword_29C7FE000, v21, OS_LOG_TYPE_DEFAULT, "Well, that didn't work. I guess the token for %@ really isn't there.", &v27, 0xCu);
        }
      }
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

- (id)_accountTypeIDsThatReplacedAppleIDAccountType
{
  v7[4] = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDB8230];
  v7[0] = *MEMORY[0x29EDB8268];
  v7[1] = v2;
  v3 = *MEMORY[0x29EDB8270];
  v7[2] = *MEMORY[0x29EDB8218];
  v7[3] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:4];
  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6
{
  v64 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v57 = [(AppleIDAuthenticationPlugin *)self _clientHasEntitlement:v11];
  v13 = [v11 bundleID];
  if (v13)
  {
    v14 = +[AppleIDAuthenticationPlugin _grayModeWhitelist];
    v15 = [v14 containsObject:v13];

    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a6)
  {
LABEL_3:
    *a6 = 0;
  }

LABEL_4:
  v16 = [v10 accountType];
  v17 = [v16 identifier];
  v18 = [v17 isEqualToString:*MEMORY[0x29EDB81C8]];

  if (!v18)
  {
    v56 = self;
    v20 = v11;
    v21 = [v10 accountType];
    v22 = [v21 identifier];
    if (([v22 isEqualToString:*MEMORY[0x29EDB81F8]] & 1) == 0)
    {
      v23 = [v10 accountType];
      v24 = [v23 identifier];
      if (([v24 isEqualToString:*MEMORY[0x29EDB8208]] & 1) == 0)
      {
        [v10 accountType];
        v31 = v55 = v13;
        [v31 identifier];
        v32 = v54 = a6;
        v53 = [v32 isEqualToString:*MEMORY[0x29EDB8220]];

        a6 = v54;
        v13 = v55;

        v11 = v20;
        self = v56;
        if ((v53 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_13;
      }
    }

    v11 = v20;
    self = v56;
LABEL_13:
    [v10 parentAccount];
    v26 = v25 = v13;
    v27 = [(AppleIDAuthenticationPlugin *)self _isAccountInGrayMode:v26];

    v13 = v25;
    if (v15 & 1 | !v27)
    {
      goto LABEL_24;
    }

    v28 = _AALogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v11 bundleID];
      *buf = 138412290;
      v61 = v29;
      _os_log_impl(&dword_29C7FE000, v28, OS_LOG_TYPE_DEFAULT, "%@ was denied credential access due to account being in Gray Mode", buf, 0xCu);

      v13 = v25;
    }

    goto LABEL_21;
  }

  if (!v15)
  {
    if (![(AppleIDAuthenticationPlugin *)self _isAccountInGrayMode:v10])
    {
      goto LABEL_24;
    }

    v28 = _AALogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v11 bundleID];
      *buf = 138412290;
      v61 = v30;
      _os_log_impl(&dword_29C7FE000, v28, OS_LOG_TYPE_DEFAULT, "%@ was denied credential access due to account being in Gray Mode", buf, 0xCu);
    }

LABEL_21:

    if (a6)
    {
      *a6 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.appleaccount" code:-10 userInfo:0];
    }

    goto LABEL_30;
  }

  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v19, OS_LOG_TYPE_DEFAULT, "Allowing whitelisted client free access to AppleAccount credential without checking for Gray Mode.", buf, 2u);
  }

LABEL_24:
  if (v57)
  {
    v33 = a6;
    v59 = 0;
    v34 = [MEMORY[0x29EDBDFF8] credentialForAccount:v10 clientID:0 error:&v59];
    v35 = v59;
    if (v35)
    {
      v36 = v12;
      v37 = _AALogSystem();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        [v10 accountType];
        v39 = v38 = v13;
        v40 = [v39 accountTypeDescription];
        *buf = 138412546;
        v61 = v40;
        v62 = 2112;
        v63 = v35;
        _os_log_impl(&dword_29C7FE000, v37, OS_LOG_TYPE_DEFAULT, "Unable to get credential for %@ account! Error = %@", buf, 0x16u);

        v13 = v38;
      }

      if (v33)
      {
        v41 = v35;
        *v33 = v35;

        v42 = 0;
      }

      else
      {
        v42 = v34;
      }

      v12 = v36;
    }

    else
    {
      v43 = [v34 token];
      if (v43)
      {

        v42 = v34;
      }

      else
      {
        v46 = v13;
        v47 = [v10 accountType];
        v48 = [v47 identifier];
        v49 = [v48 isEqualToString:*MEMORY[0x29EDB8220]];

        if (v49)
        {
          v42 = v34;
        }

        else
        {
          v50 = _AALogSystem();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_29C7FE000, v50, OS_LOG_TYPE_DEFAULT, "Try to migrate the credential", buf, 2u);
          }

          [(AppleIDAuthenticationPlugin *)self _migrateiCloudTokenIfNeededForAccount:v10 credential:v34];
          [(AppleIDAuthenticationPlugin *)self _migrateFMIPTokenIfNeededForAccount:v10 credential:v34];
          v58 = v34;
          [(AppleIDAuthenticationPlugin *)self _migrateAppleIDTokensIfNeededForAccount:v10 credential:&v58 store:v12];
          v42 = v58;

          v51 = [v42 token];

          if (!v51)
          {
            v52 = _AALogSystem();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_29C7FE000, v52, OS_LOG_TYPE_DEFAULT, "We tried migrating the credentials for this account, it just doesn't exist", buf, 2u);
            }
          }
        }

        v13 = v46;
      }
    }

    goto LABEL_37;
  }

LABEL_30:
  v35 = _ACDLogSystem();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v10;
    _os_log_impl(&dword_29C7FE000, v35, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin is withholding the credential for account %@.", buf, 0xCu);
  }

  v42 = 0;
LABEL_37:

  v44 = *MEMORY[0x29EDCA608];

  return v42;
}

- (void)discoverPropertiesForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
{
  v77 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _AASignpostLogSystem();
  v15 = _AASignpostCreate();
  v17 = v16;

  v18 = _AASignpostLogSystem();
  v19 = v18;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    [v11 client];
    v20 = v54 = v12;
    [v20 bundleID];
    v52 = self;
    v22 = v21 = v10;
    v23 = [v21 accountType];
    v24 = [v23 identifier];
    *buf = 138543618;
    v72 = v22;
    v73 = 2114;
    v74 = v24;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "DiscoverProperties", " Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);

    v10 = v21;
    self = v52;

    v12 = v54;
  }

  v25 = _AASignpostLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    [v11 client];
    v53 = v11;
    v26 = v55 = v12;
    [v26 bundleID];
    v28 = v27 = v17;
    v29 = [v10 accountType];
    [v29 identifier];
    v30 = v13;
    v31 = self;
    v33 = v32 = v10;
    *buf = 134218498;
    v72 = v15;
    v73 = 2114;
    v74 = v28;
    v75 = 2114;
    v76 = v33;
    _os_log_impl(&dword_29C7FE000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DiscoverProperties  Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x20u);

    v10 = v32;
    self = v31;
    v13 = v30;

    v17 = v27;
    v11 = v53;
    v12 = v55;
  }

  v61[0] = MEMORY[0x29EDCA5F8];
  v61[1] = 3221225472;
  v61[2] = sub_29C801148;
  v61[3] = &unk_29F325670;
  v63 = v15;
  v64 = v17;
  v34 = v13;
  v62 = v34;
  v35 = MEMORY[0x29ED447A0](v61);
  v36 = [v11 client];
  v37 = [(AppleIDAuthenticationPlugin *)self _clientHasEntitlement:v36];

  if (!v37)
  {
    v43 = MEMORY[0x29EDB9FA0];
    v44 = *MEMORY[0x29EDB8300];
    v69 = *MEMORY[0x29EDB9ED8];
    v70 = @"The application is not permitted to verify Apple ID accounts";
    v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v46 = v43;
    v47 = v44;
    v48 = 7;
LABEL_11:
    v42 = [v46 errorWithDomain:v47 code:v48 userInfo:v45];

    (v35)[2](v35, 0, v42);
    goto LABEL_12;
  }

  v38 = [v10 accountType];
  v39 = [v38 identifier];
  v40 = [v39 isEqualToString:*MEMORY[0x29EDB81C8]];

  if ((v40 & 1) == 0)
  {
    v49 = MEMORY[0x29EDB9FA0];
    v50 = *MEMORY[0x29EDB8300];
    v67 = *MEMORY[0x29EDB9ED8];
    v68 = @"Unsupported account type provided to -discoverPropertiesForAccount:accountStore:options:completion:";
    v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v46 = v49;
    v47 = v50;
    v48 = 4;
    goto LABEL_11;
  }

  v65 = *MEMORY[0x29EDB8450];
  v66 = MEMORY[0x29EDB8EB0];
  v41 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = 3221225472;
  v56[2] = sub_29C80131C;
  v56[3] = &unk_29F3256C0;
  v57 = v12;
  v60 = v35;
  v58 = v10;
  v59 = v11;
  [v59 aa_updatePropertiesForAppleAccount:v58 options:v41 completion:v56];

  v42 = v57;
LABEL_12:

  v51 = *MEMORY[0x29EDCA608];
}

- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
{
  v68 = *MEMORY[0x29EDCA608];
  v49 = a3;
  v10 = a4;
  v48 = a5;
  v11 = a6;
  v12 = _AASignpostLogSystem();
  v13 = _AASignpostCreate();
  v15 = v14;

  v16 = _AASignpostLogSystem();
  v17 = v16;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [v10 client];
    v19 = [v18 bundleID];
    v20 = [v49 accountType];
    v21 = [v20 identifier];
    *buf = 138543618;
    v63 = v19;
    v64 = 2114;
    v65 = v21;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VerifyCredentials", " Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);
  }

  v22 = _AASignpostLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v10 client];
    v24 = [v23 bundleID];
    v25 = [v49 accountType];
    v26 = [v25 identifier];
    *buf = 134218498;
    v63 = v13;
    v64 = 2114;
    v65 = v24;
    v66 = 2114;
    v67 = v26;
    _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: VerifyCredentials  Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x20u);
  }

  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = 3221225472;
  v56[2] = sub_29C801C74;
  v56[3] = &unk_29F325670;
  v58 = v13;
  v59 = v15;
  v27 = v11;
  v57 = v27;
  v28 = MEMORY[0x29ED447A0](v56);
  v29 = [v10 client];
  v30 = [(AppleIDAuthenticationPlugin *)self _clientHasEntitlement:v29];

  if (v30)
  {
    v31 = +[AppleIDAuthenticationUtil doesRelyOnCompanionAccounts];
    v32 = _AALogSystem();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_29C7FE000, v32, OS_LOG_TYPE_DEFAULT, "Device relies on companion auth, proceeding...", buf, 2u);
      }

      v34 = self;
      objc_sync_enter(v34);
      accountsAwaitingRemotePasswordEntry = v34->_accountsAwaitingRemotePasswordEntry;
      v36 = [v49 identifier];
      LODWORD(accountsAwaitingRemotePasswordEntry) = [(NSMutableSet *)accountsAwaitingRemotePasswordEntry containsObject:v36];

      objc_sync_exit(v34);
      if (accountsAwaitingRemotePasswordEntry)
      {
        v37 = _AALogSystem();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v49;
          _os_log_impl(&dword_29C7FE000, v37, OS_LOG_TYPE_DEFAULT, "Warning! verifyCredentials is ignoring request for account %@ because we are waiting for a password for that account from ACRemoteDeviceProxy", buf, 0xCu);
        }

        v38 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.appleaccount" code:-4 userInfo:0];
        (v28)[2](v28, 0, v38);
      }

      else
      {
        passwordlessToken = v34->_passwordlessToken;
        v34->_passwordlessToken = 0;

        idmsDataToken = v34->_idmsDataToken;
        v34->_idmsDataToken = 0;

        if (v48)
        {
          v43 = _AALogSystem();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_29C7FE000, v43, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin will use provided options for login.", buf, 2u);
          }

          v44 = [v48 objectForKeyedSubscript:*MEMORY[0x29EDBE438]];
          v45 = [v48 objectForKeyedSubscript:*MEMORY[0x29EDBE440]];
          if (v44 | v45)
          {
            v38 = objc_alloc_init(MEMORY[0x29EDBFB60]);
            [v38 setServerFriendlyDescription:v44];
            [v38 setUniqueDeviceIdentifier:v45];
            [v38 setLinkType:2];
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        v46 = _AALogSystem();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v49;
          _os_log_impl(&dword_29C7FE000, v46, OS_LOG_TYPE_DEFAULT, "Logging in with account %@....", buf, 0xCu);
        }

        v53[0] = MEMORY[0x29EDCA5F8];
        v53[1] = 3221225472;
        v53[2] = sub_29C801E48;
        v53[3] = &unk_29F3256E8;
        v55 = v28;
        v54 = v49;
        [(AppleIDAuthenticationPlugin *)v34 _loginWithAccount:v54 store:v10 companionDevice:v38 options:v48 completion:v53];
      }
    }

    else
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_29C7FE000, v32, OS_LOG_TYPE_DEFAULT, "Device suppoprts standalone auth, proceeding...", buf, 2u);
      }

      v50[0] = MEMORY[0x29EDCA5F8];
      v50[1] = 3221225472;
      v50[2] = sub_29C801E6C;
      v50[3] = &unk_29F3256E8;
      v52 = v28;
      v51 = v49;
      [(AppleIDAuthenticationPlugin *)self _fetchTokenForAccount:v51 accountStore:v10 withHandler:v50];

      v38 = v52;
    }
  }

  else
  {
    v39 = MEMORY[0x29EDB9FA0];
    v60 = *MEMORY[0x29EDB9ED8];
    v61 = @"The application is not permitted to verify Apple ID accounts";
    v40 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v38 = [v39 errorWithDomain:*MEMORY[0x29EDB8300] code:7 userInfo:v40];

    (v28)[2](v28, 0, v38);
  }

  v47 = *MEMORY[0x29EDCA608];
}

- (void)_loginWithAccount:(id)a3 store:(id)a4 companionDevice:(id)a5 options:(id)a6 completion:(id)a7
{
  v33 = *MEMORY[0x29EDCA608];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = *MEMORY[0x29EDB8448];
  v16 = a5;
  v17 = [a6 objectForKeyedSubscript:v15];
  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v12;
    _os_log_impl(&dword_29C7FE000, v18, OS_LOG_TYPE_DEFAULT, "Trying password-less login with account %@ with the help of Companion's Anisette data.", buf, 0xCu);
  }

  v19 = [v12 username];
  v20 = [v12 aa_altDSID];
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = sub_29C802084;
  v26[3] = &unk_29F325710;
  v26[4] = self;
  v27 = v12;
  v28 = v13;
  v29 = v17;
  v30 = v14;
  v21 = v14;
  v22 = v17;
  v23 = v13;
  v24 = v12;
  [(AppleIDAuthenticationPlugin *)self _silentlyAuthenticateAppleID:v19 altDSID:v20 companionDevice:v16 services:v22 completion:v26];

  v25 = *MEMORY[0x29EDCA608];
}

- (void)_tryPasswordLoginWithAccount:(id)a3 store:(id)a4 services:(id)a5 completion:(id)a6
{
  v31 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 credential];
  v15 = [v14 credentialItemForKey:*MEMORY[0x29EDB8378]];

  if (v15)
  {
    goto LABEL_5;
  }

  v16 = _AALogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_29C80A240();
  }

  v17 = [v10 credential];
  v15 = [v17 credentialItemForKey:*MEMORY[0x29EDB8340]];

  if (v15)
  {
LABEL_5:
    v18 = _AALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_29C7FE000, v18, OS_LOG_TYPE_DEFAULT, "Trying password-based login for account %@...", buf, 0xCu);
    }

    v19 = [v10 username];
    v20 = [v10 aa_altDSID];
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = sub_29C802600;
    v25[3] = &unk_29F325738;
    v25[4] = self;
    v26 = v10;
    v27 = v11;
    v28 = v13;
    [(AppleIDAuthenticationPlugin *)self _convertPasswordToPETForAppleID:v19 altDSID:v20 password:v15 services:v12 completion:v25];
  }

  else
  {
    v22 = _AALogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, "_tryPasswordLoginWithAccount: we do not have a password for %@. Login has officially failed.", buf, 0xCu);
    }

    v23 = MEMORY[0x29EDB9FA0];
    v15 = [(AppleIDAuthenticationPlugin *)self _parametersForProxiedAuthentication];
    v24 = [v23 errorWithDomain:@"com.apple.appleaccount" code:-7 userInfo:v15];
    (*(v13 + 2))(v13, 0, v24);
  }

  v21 = *MEMORY[0x29EDCA608];
}

- (void)_silentlyAuthenticateAppleID:(id)a3 altDSID:(id)a4 companionDevice:(id)a5 services:(id)a6 completion:(id)a7
{
  v11 = MEMORY[0x29EDBFB48];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v18 = objc_alloc_init(v11);
  [v18 setAltDSID:v15];

  [v18 setCompanionDevice:v14];
  [v18 setIsUsernameEditable:0];
  [v18 setAuthenticationType:1];
  [v18 setShouldUpdatePersistentServiceTokens:1];
  [v18 setServiceIdentifiers:v13];

  [v18 setUsername:v16];
  v17 = objc_alloc_init(MEMORY[0x29EDBFB50]);
  [v17 authenticateWithContext:v18 completion:v12];
}

- (void)_convertPasswordToPETForAppleID:(id)a3 altDSID:(id)a4 password:(id)a5 services:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = MEMORY[0x29EDBFB48];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = objc_alloc_init(v13);
  [v17 setAltDSID:v16];

  [v17 setIsUsernameEditable:0];
  [v17 setServiceIdentifiers:v14];

  [v17 setAuthenticationType:1];
  [v17 setShouldUpdatePersistentServiceTokens:1];
  [v17 setUsername:v11];
  [v17 _setPassword:v15];

  [v17 _setProxyingForApp:1];
  v18 = objc_alloc_init(MEMORY[0x29EDBFB50]);
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = sub_29C802994;
  v21[3] = &unk_29F325760;
  v22 = v11;
  v23 = v12;
  v19 = v11;
  v20 = v12;
  [v18 authenticateWithContext:v17 completion:v21];
}

- (id)_parametersForProxiedAuthentication
{
  v11[1] = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBFB60] currentDevice];
  [v2 setLinkType:2];
  v3 = [v2 serializedData];
  v4 = v3;
  if (v3)
  {
    v10 = *MEMORY[0x29EDBE3F0];
    v11[0] = v3;
    v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "Failed to encode AKDevice! Proxied auth is doomed.", v9, 2u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];

  return v5;
}

- (void)_beginPETBasedLoginWithAccount:(id)a3 PET:(id)a4 store:(id)a5 completion:(id)a6
{
  v43 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [v10 aa_setPassword:a4];
  v13 = [v10 accountType];
  v14 = [v13 identifier];
  v15 = [v14 isEqual:*MEMORY[0x29EDB81C8]];

  v16 = _AALogSystem();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v16, OS_LOG_TYPE_DEFAULT, "iCloud account. Will talk to SetupService now...", buf, 2u);
    }

    v18 = [MEMORY[0x29EDBE378] shouldUseUnifiedLoginEndpoint];
    v19 = _AASignpostLogSystem();
    v20 = _AASignpostCreate();
    v22 = v21;

    v23 = _AASignpostLogSystem();
    v24 = v23;
    if (v18)
    {
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29C7FE000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v20, "LoginAndUpdateAccount", " enableTelemetry=YES ", buf, 2u);
      }

      v25 = _AASignpostLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v42 = v20;
        _os_log_impl(&dword_29C7FE000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LoginAndUpdateAccount  enableTelemetry=YES ", buf, 0xCu);
      }

      v26 = [(AppleIDAuthenticationPlugin *)self _loginDelegatesParameters];
      v35[0] = MEMORY[0x29EDCA5F8];
      v35[1] = 3221225472;
      v35[2] = sub_29C803050;
      v35[3] = &unk_29F325788;
      v39 = v20;
      v40 = v22;
      v35[4] = self;
      v36 = v10;
      v37 = v11;
      v38 = v12;
      [v37 aa_loginAndUpdateiCloudAccount:v36 delegateParams:v26 withCompletion:v35];
    }

    else
    {
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29C7FE000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v20, "SignInRegisterAccount", " enableTelemetry=YES ", buf, 2u);
      }

      v27 = _AASignpostLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v42 = v20;
        _os_log_impl(&dword_29C7FE000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInRegisterAccount  enableTelemetry=YES ", buf, 0xCu);
      }

      v29[0] = MEMORY[0x29EDCA5F8];
      v29[1] = 3221225472;
      v29[2] = sub_29C80322C;
      v29[3] = &unk_29F3257B0;
      v33 = v20;
      v34 = v22;
      v29[4] = self;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      [v31 aa_registerAppleAccountWithHSA:v30 completion:v29];
    }
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v16, OS_LOG_TYPE_DEFAULT, "Not an iCloud account. Going straight to delegate login...", buf, 2u);
    }

    [(AppleIDAuthenticationPlugin *)self _fetchTokenForAccount:v10 accountStore:v11 withHandler:v12];
  }

  v28 = *MEMORY[0x29EDCA608];
}

- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
{
  v71 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _AASignpostLogSystem();
  v15 = _AASignpostCreate();
  v17 = v16;

  v18 = _AASignpostLogSystem();
  v19 = v18;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v50 = [v11 client];
    v48 = [v50 bundleID];
    [v10 accountType];
    v20 = v52 = v17;
    [v20 identifier];
    v54 = v13;
    v21 = v12;
    v23 = v22 = self;
    v24 = *MEMORY[0x29EDB8458];
    v25 = v21;
    v26 = [v25 objectForKeyedSubscript:v24];
    [v26 BOOLValue];

    v27 = [v25 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
    [v27 BOOLValue];

    v28 = [v25 objectForKeyedSubscript:@"AARenewShouldForceInteraction"];

    [v28 BOOLValue];
    *buf = 138543874;
    v64 = v48;
    v65 = 2114;
    v66 = v23;
    v67 = 1026;
    LODWORD(v68) = 0;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RenewCredentials", " Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  Options=%{public,signpost.telemetry:number1,name=Options}d  enableTelemetry=YES ", buf, 0x1Cu);

    self = v22;
    v12 = v21;
    v13 = v54;

    v17 = v52;
  }

  v29 = _AASignpostLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [v11 client];
    v49 = [v53 bundleID];
    [v10 accountType];
    v51 = v55 = self;
    v30 = [v51 identifier];
    v31 = v15;
    v32 = v13;
    v33 = v11;
    v34 = v10;
    v35 = *MEMORY[0x29EDB8458];
    v36 = v17;
    v37 = v12;
    v38 = v12;
    v39 = [v38 objectForKeyedSubscript:v35];
    [v39 BOOLValue];

    v40 = [v38 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
    [v40 BOOLValue];

    v41 = [v38 objectForKeyedSubscript:@"AARenewShouldForceInteraction"];

    v12 = v37;
    v17 = v36;
    [v41 BOOLValue];

    v10 = v34;
    v11 = v33;
    v13 = v32;
    v15 = v31;
    *buf = 134218754;
    v64 = v31;
    v65 = 2114;
    v66 = v49;
    v67 = 2114;
    v68 = v30;
    v69 = 1026;
    v70 = 0;
    _os_log_impl(&dword_29C7FE000, v29, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RenewCredentials  Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  Options=%{public,signpost.telemetry:number1,name=Options}d  enableTelemetry=YES ", buf, 0x26u);

    self = v55;
  }

  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = 3221225472;
  v56[2] = sub_29C803878;
  v56[3] = &unk_29F3257D8;
  v61 = v15;
  v62 = v17;
  v56[4] = self;
  v57 = v10;
  v58 = v11;
  v59 = v12;
  v60 = v13;
  v42 = v13;
  v43 = v12;
  v44 = v11;
  v45 = v10;
  v46 = MEMORY[0x29ED447A0](v56);
  [(AppleIDAuthenticationPlugin *)self _renewCredentialsForAccount:v45 accountStore:v44 options:v43 errorMessage:0 completion:v46];

  v47 = *MEMORY[0x29EDCA608];
}

- (void)_handleRenewFailure:(id)a3 forAccount:(id)a4 accountStore:(id)a5 options:(id)a6 completion:(id)a7
{
  v37 = *MEMORY[0x29EDCA608];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!+[AppleIDAuthenticationUtil doesRelyOnCompanionAccounts])
  {
    goto LABEL_10;
  }

  if ([v12 ak_isAuthenticationErrorWithCode:-7026])
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_29C80A2DC();
    }

LABEL_9:

LABEL_10:
    v16[2](v16, 2, v12);
    goto LABEL_11;
  }

  if (([v12 ak_isServiceError] & 1) != 0 || objc_msgSend(v12, "ak_isAuthenticationErrorWithCode:", -7065))
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_29C80A274();
    }

    goto LABEL_9;
  }

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = sub_29C803D4C;
  v31[3] = &unk_29F325828;
  v31[4] = self;
  v19 = v13;
  v32 = v19;
  v24 = v14;
  v33 = v24;
  v20 = v16;
  v34 = v20;
  v21 = MEMORY[0x29ED447A0](v31);
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v19;
    _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: could not silently obtain PET for account %@", buf, 0xCu);
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = sub_29C803E14;
  v25[3] = &unk_29F325878;
  v29 = v20;
  v26 = v15;
  v27 = self;
  v28 = v19;
  v30 = v21;
  v23 = v21;
  [(AppleIDAuthenticationPlugin *)self _getPasswordFromCompanionForAccount:v28 store:v24 options:v26 completion:v25];

LABEL_11:
  v18 = *MEMORY[0x29EDCA608];
}

- (void)_getPasswordFromCompanionForAccount:(id)a3 store:(id)a4 options:(id)a5 completion:(id)a6
{
  v46[4] = *MEMORY[0x29EDCA608];
  v36 = a3;
  v34 = a4;
  v10 = a5;
  v11 = a6;
  v35 = v10;
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  LODWORD(v10) = [v12 BOOLValue];

  if (v10)
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v13, OS_LOG_TYPE_DEFAULT, "Can't get password from companion, told to avoid UI", buf, 2u);
    }

    v14 = [MEMORY[0x29EDB9FA0] aa_errorWithCode:-4405 underlyingError:0];
    v11[2](v11, 0, v14);
    goto LABEL_16;
  }

  v45[0] = *MEMORY[0x29EDB9040];
  v15 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PASSWORD_ENTRY_REQUIRED_TITLE" value:&stru_2A23C8230 table:@"Localizable"];
  v46[0] = v16;
  v45[1] = *MEMORY[0x29EDB9048];
  v17 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"PASSWORD_ENTRY_REQUIRED_MESSAGE" value:&stru_2A23C8230 table:@"Localizable"];
  v46[1] = v18;
  v45[2] = *MEMORY[0x29EDB9060];
  v19 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"PASSWORD_ENTRY_DISMISS_BUTTON" value:&stru_2A23C8230 table:@"Localizable"];
  v46[2] = v20;
  v45[3] = *MEMORY[0x29EDB9050];
  v46[3] = MEMORY[0x29EDB8EB0];
  v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v46 forKeys:v45 count:4];

  v21 = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0, 0, v14);
  v22 = _AALogSystem();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      *buf = 0;
      v24 = "Showing renew-credentials prompt...";
LABEL_10:
      _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    }
  }

  else if (v23)
  {
    *buf = 0;
    v24 = "CFUserNotificationCreate in renewCredentials!";
    goto LABEL_10;
  }

  v25 = [v35 mutableCopy];
  v26 = [(AppleIDAuthenticationPlugin *)self _parametersForProxiedAuthentication];
  if (v26)
  {
    [v25 addEntriesFromDictionary:v26];
  }

  v27 = self;
  objc_sync_enter(v27);
  accountsAwaitingRemotePasswordEntry = v27->_accountsAwaitingRemotePasswordEntry;
  v29 = [v36 identifier];
  [(NSMutableSet *)accountsAwaitingRemotePasswordEntry addObject:v29];

  objc_sync_exit(v27);
  v30 = _AALogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = v36;
    v43 = 2112;
    v44 = v25;
    _os_log_impl(&dword_29C7FE000, v30, OS_LOG_TYPE_DEFAULT, "Asking ACRemoteDeviceProxy to obtain password for account %@ with options: %@", buf, 0x16u);
  }

  v31 = [v34 remoteDeviceProxy];
  v32 = *MEMORY[0x29EDB8428];
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3221225472;
  v37[2] = sub_29C804544;
  v37[3] = &unk_29F3258A0;
  v40 = v21;
  v37[4] = v27;
  v38 = v36;
  v39 = v11;
  [v31 sendCommand:v32 withAccount:v38 options:v25 completion:v37];

LABEL_16:
  v33 = *MEMORY[0x29EDCA608];
}

- (void)_renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 errorMessage:(id)a6 completion:(id)a7
{
  v47[1] = *MEMORY[0x29EDCA608];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 client];
  v18 = [(AppleIDAuthenticationPlugin *)self _clientHasEntitlement:v17];

  if (v18)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v19 = off_2A1A10988;
    v41 = off_2A1A10988;
    if (!off_2A1A10988)
    {
      v37[0] = MEMORY[0x29EDCA5F8];
      v37[1] = 3221225472;
      v37[2] = sub_29C8091B0;
      v37[3] = &unk_29F325BE8;
      v37[4] = &v38;
      sub_29C8091B0(v37);
      v19 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v19)
    {
      sub_29C80A31C();
    }

    if (v19())
    {
      v20 = MEMORY[0x29EDB9FA0];
      v44 = *MEMORY[0x29EDB9ED8];
      v45 = @"SetupAssistant is running SLT upgrade, force-failing credential renewal.";
      v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x29EDB8300] code:17 userInfo:v21];

      v16[2](v16, 2, v22);
    }

    else if (DMIsMigrationNeeded())
    {
      v26 = MEMORY[0x29EDB9FA0];
      v42 = *MEMORY[0x29EDB9ED8];
      v43 = @"DataMigration is needed, force-failing credential renewal.";
      v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v22 = [v26 errorWithDomain:*MEMORY[0x29EDB8300] code:17 userInfo:v27];

      v16[2](v16, 2, v22);
    }

    else
    {
      v22 = [MEMORY[0x29EDBDFF8] credentialForAccount:v12 clientID:0];
      v28 = [v22 token];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v30 = [v22 password];
        v29 = v30 == 0;
      }

      if (v29 | ![(AppleIDAuthenticationPlugin *)self _isAccountInGrayMode:v12])
      {
        [(AppleIDAuthenticationPlugin *)self _authenticateAccount:v12 inStore:v13 options:v14 errorMessage:v15 completion:v16];
      }

      else
      {
        v31[0] = MEMORY[0x29EDCA5F8];
        v31[1] = 3221225472;
        v31[2] = sub_29C804CBC;
        v31[3] = &unk_29F3258C8;
        v36 = v16;
        v31[4] = self;
        v32 = v12;
        v33 = v13;
        v34 = v14;
        v35 = v15;
        [(AppleIDAuthenticationPlugin *)self _isAccountReallyInGreyMode:v32 accountStore:v33 completion:v31];
      }
    }
  }

  else
  {
    v23 = MEMORY[0x29EDB9FA0];
    v46 = *MEMORY[0x29EDB9ED8];
    v47[0] = @"The application is not permitted to renew Apple ID account credentials.";
    v24 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v22 = [v23 errorWithDomain:*MEMORY[0x29EDB8300] code:7 userInfo:v24];

    v16[2](v16, 2, v22);
  }

  v25 = *MEMORY[0x29EDCA608];
}

- (id)_frontmostApplicationId
{
  v2 = SBSCopyFrontmostApplicationDisplayIdentifier();

  return v2;
}

- (void)_authenticateAccount:(id)a3 inStore:(id)a4 options:(id)a5 errorMessage:(id)a6 completion:(id)a7
{
  v75 = *MEMORY[0x29EDCA608];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v50 = a6;
  v51 = a7;
  v47 = [v13 objectForKeyedSubscript:*MEMORY[0x29EDB8440]];
  v14 = [v13 objectForKeyedSubscript:@"AARenewShouldForceInteraction"];
  v49 = v12;
  if (([v14 BOOLValue] & 1) == 0)
  {

    goto LABEL_7;
  }

  v15 = [v12 client];
  v16 = [v15 name];
  v17 = [v16 isEqualToString:@"findmydeviced"];

  if (!v17)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v12 client];
    v20 = [v19 name];
    *buf = 138412290;
    v72 = v20;
    _os_log_impl(&dword_29C7FE000, v18, OS_LOG_TYPE_DEFAULT, "Allow %@ to force interactive auth.", buf, 0xCu);
  }

  v21 = 1;
LABEL_8:
  v22 = [v13 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  v45 = [v22 BOOLValue];

  v23 = [v13 objectForKeyedSubscript:*MEMORY[0x29EDB8438]];
  v24 = *MEMORY[0x29EDB8430];
  v25 = [v13 objectForKeyedSubscript:*MEMORY[0x29EDB8430]];
  v44 = [v13 objectForKeyedSubscript:*MEMORY[0x29EDB8448]];
  v46 = [v13 objectForKeyedSubscript:*MEMORY[0x29EDBE3F0]];
  v26 = [MEMORY[0x29EDBFB60] deviceWithSerializedData:?];
  v48 = v25;
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v28 = _AALogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v72 = v24;
      v73 = 2112;
      v74 = v25;
      _os_log_impl(&dword_29C7FE000, v28, OS_LOG_TYPE_DEFAULT, "Error! Invalid value type for key %@ in renewCredentials options: %@.", buf, 0x16u);
    }

    v27 = 0;
  }

  else
  {
    v27 = [v25 integerValue];
  }

  v29 = [v11 isAuthenticated];
  v30 = [v11 accountType];
  v31 = [v30 identifier];
  v32 = [v31 isEqualToString:*MEMORY[0x29EDB81C8]];

  v55[0] = MEMORY[0x29EDCA5F8];
  v55[1] = 3221225472;
  v55[2] = sub_29C8053D0;
  v55[3] = &unk_29F3259B8;
  v33 = v11;
  v56 = v33;
  v34 = v47;
  v57 = v34;
  v67 = v21;
  v35 = v49;
  v58 = v35;
  v36 = v23;
  v59 = v36;
  v37 = v26;
  v68 = v45;
  v60 = v37;
  v66 = v27;
  v69 = v32;
  v38 = v44;
  v61 = v38;
  v62 = self;
  v39 = v13;
  v63 = v39;
  v40 = v50;
  v64 = v40;
  v41 = v51;
  v65 = v41;
  v70 = v29;
  v42 = MEMORY[0x29ED447A0](v55);
  if ([v33 isAuthenticated])
  {
    [v33 setAuthenticated:0];
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 3221225472;
    v53[2] = sub_29C806050;
    v53[3] = &unk_29F3259E0;
    v54 = v42;
    [v35 saveAccount:v33 withHandler:v53];
  }

  else
  {
    v42[2](v42);
  }

  v43 = *MEMORY[0x29EDCA608];
}

- (void)_validateAuthenticationResults:(id)a3 error:(id)a4 forContext:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x29EDBFB18]];
  v14 = [v11 clientInfo];
  v15 = [v14 objectForKeyedSubscript:@"account"];
  v16 = [v14 objectForKeyedSubscript:@"accountStore"];
  if ([v11 serviceType] == 2)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "AppleIDAuthenticationPlugin: will not try to log in delegates, because this is an iTunes login.";
LABEL_14:
      _os_log_impl(&dword_29C7FE000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v13)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19 || v16 == 0)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "AppleIDAuthenticationPlugin: will not call loginDelegates, because we are missing critical info.";
      goto LABEL_14;
    }

LABEL_15:

LABEL_16:
    v12[2](v12, a4 == 0);
    goto LABEL_17;
  }

  v29 = self;
  v22 = [v11 proxiedDevice];

  v23 = _AALogSystem();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v23, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will not call loginDelegates, because this is a proxied device authentication.", buf, 2u);
    }

    goto LABEL_16;
  }

  if (v24)
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v23, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will attempt loginDelegates...", buf, 2u);
  }

  v25 = [v15 credential];

  if (v25)
  {
    v26 = [v15 credential];
    [v26 setPassword:v13];
  }

  else
  {
    v26 = [MEMORY[0x29EDB83C0] credentialWithPassword:v13];
    [v15 setCredential:v26];
  }

  v27 = [v10 objectForKeyedSubscript:*MEMORY[0x29EDBFB20]];
  v28 = _AALogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v15;
    _os_log_impl(&dword_29C7FE000, v28, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will set raw password for account %@ so that our plugins will be happy.", buf, 0xCu);
  }

  if (v27)
  {
    [v15 _aa_setRawPassword:v27];
  }

  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 3221225472;
  v30[2] = sub_29C806408;
  v30[3] = &unk_29F325A08;
  v31 = v15;
  v32 = v12;
  [(AppleIDAuthenticationPlugin *)v29 _fetchTokenForAccount:v31 accountStore:v16 withHandler:v30];

LABEL_17:
  v21 = *MEMORY[0x29EDCA608];
}

- (void)_updateDSID:(id)a3 withRawPassword:(id)a4 suggestedAccount:(id)a5 store:(id)a6 completion:(id)a7
{
  v33 = *MEMORY[0x29EDCA608];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    v16 = [v13 accountType];
    v17 = [v16 identifier];
    v18 = [v17 isEqualToString:*MEMORY[0x29EDB81C8]];

    if (v18)
    {
      goto LABEL_7;
    }

    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v11;
      _os_log_impl(&dword_29C7FE000, v19, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: Looking for iCloud account with DSID %{mask}@ for raw password update.", buf, 0xCu);
    }

    if (!v11)
    {
LABEL_7:
      v21 = 0;
    }

    else
    {
      v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%llu", objc_msgSend(v11, "longLongValue")];
      v21 = [v14 aa_appleAccountWithPersonID:v20];
    }

    v22 = _AALogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin setting raw password for account %@", buf, 0xCu);
    }

    [v13 _aa_setRawPassword:v12];
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = sub_29C8070B8;
    v26[3] = &unk_29F325AF8;
    v27 = v21;
    v28 = v12;
    v29 = v14;
    v30 = v15;
    v23 = v21;
    [v29 saveVerifiedAccount:v13 withCompletionHandler:v26];
  }

  else
  {
    v24 = _AALogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_29C80A394();
    }

    v15[2](v15);
  }

  v25 = *MEMORY[0x29EDCA608];
}

- (void)_invokeDelegatesWithAuthenticationResponse:(id)a3 password:(id)a4 store:(id)a5 account:(id)a6 completion:(id)a7
{
  v84 = *MEMORY[0x29EDCA608];
  v11 = a3;
  v59 = a4;
  v58 = a5;
  v61 = a6;
  v12 = a7;
  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v13, OS_LOG_TYPE_DEFAULT, "_invokeDelegatesWithAuthenticationResponse start", buf, 2u);
  }

  v56 = v12;
  if (qword_2A1A109B0 != -1)
  {
    sub_29C80A3C8();
  }

  v14 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(qword_2A1A109A8, "count")}];
  v15 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(qword_2A1A109A8, "count")}];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v16 = qword_2A1A109A8;
  v17 = [v16 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v73;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v73 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = objc_alloc_init(*(*(&v72 + 1) + 8 * i));
        [v14 addObject:v21];
        [v15 addObject:objc_opt_class()];
      }

      v18 = [v16 countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v18);
  }

  if ([v14 count])
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v52 = v14;
    obj = v14;
    v22 = v56;
    v60 = [obj countByEnumeratingWithState:&v68 objects:v82 count:16];
    if (v60)
    {
      v57 = *v69;
      v53 = *MEMORY[0x29EDBE418];
      v55 = v11;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v69 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v68 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            v25 = [v24 delegateServiceIdentifier];
            v26 = [v11 responseParametersForServiceIdentifier:v25];
            v27 = [v26 objectForKeyedSubscript:@"service-data"];
            if (v27 || [(__CFString *)v25 isEqualToString:v53]&& (v27 = v26) != 0)
            {
              v28 = v27;
              v29 = _AALogSystem();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = objc_opt_class();
                *buf = 138412546;
                v77 = v30;
                v78 = 2112;
                v79 = v25;
                v31 = v30;
                _os_log_impl(&dword_29C7FE000, v29, OS_LOG_TYPE_DEFAULT, "%@ wants just the dictionary for delegateIdentifier %@", buf, 0x16u);
              }

              v32 = [v28 mutableCopy];
              v33 = [v11 dsid];
              [v32 setObject:v33 forKey:@"dsid"];
            }

            else
            {
              v28 = [v11 responseParameters];
              v32 = [v28 mutableCopy];
            }
          }

          else
          {
            v26 = [v11 responseParameters];
            v32 = [v26 mutableCopy];
            v25 = @"Unknown";
          }

          [v32 setObject:v59 forKey:@"password"];
          v34 = _AALogSystem();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = objc_opt_class();
            *buf = 138412290;
            v77 = v35;
            v36 = v35;
            _os_log_impl(&dword_29C7FE000, v34, OS_LOG_TYPE_DEFAULT, "calling delegate %@", buf, 0xCu);
          }

          v37 = _AASignpostLogSystem();
          v38 = _AASignpostCreate();
          v40 = v39;

          v41 = _AASignpostLogSystem();
          v42 = v41;
          if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
          {
            v43 = [v61 accountType];
            v44 = [v43 identifier];
            *buf = 138543618;
            v77 = v25;
            v78 = 2114;
            v79 = v44;
            _os_signpost_emit_with_name_impl(&dword_29C7FE000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v38, "InvokeDelegateWithAuthResponse", " DelegateIdentifier=%{public,signpost.telemetry:string1,name=DelegateIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);

            v22 = v56;
            v11 = v55;
          }

          v45 = _AASignpostLogSystem();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = [v61 accountType];
            v47 = [v46 identifier];
            *buf = 134218498;
            v77 = v38;
            v78 = 2114;
            v79 = v25;
            v80 = 2114;
            v81 = v47;
            _os_log_impl(&dword_29C7FE000, v45, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: InvokeDelegateWithAuthResponse  DelegateIdentifier=%{public,signpost.telemetry:string1,name=DelegateIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x20u);

            v11 = v55;
            v22 = v56;
          }

          v62[0] = MEMORY[0x29EDCA5F8];
          v62[1] = 3221225472;
          v62[2] = sub_29C807CB4;
          v62[3] = &unk_29F325B20;
          v62[4] = v24;
          v66 = v38;
          v67 = v40;
          v48 = v32;
          v63 = v48;
          v64 = v15;
          v65 = v22;
          v49 = MEMORY[0x29ED447A0](v62);
          if (objc_opt_respondsToSelector())
          {
            [v24 didReceiveAuthenticationResponseParameters:v48 accountStore:v58 account:v61 completion:v49];
          }

          else
          {
            [v24 didReceiveAuthenticationResponseParameters:v48 accountStore:v58 completion:v49];
          }
        }

        v60 = [obj countByEnumeratingWithState:&v68 objects:v82 count:16];
      }

      while (v60);
    }

    v14 = v52;
  }

  else
  {
    v50 = _AALogSystem();
    v22 = v56;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v50, OS_LOG_TYPE_DEFAULT, "_invokeDelegatesWithAuthenticationResponse completing – no delegates to call", buf, 2u);
    }

    v56[2](v56);
  }

  v51 = *MEMORY[0x29EDCA608];
}

- (void)_fetchTokenForAccount:(id)a3 accountStore:(id)a4 forceFetch:(BOOL)a5 withHandler:(id)a6
{
  v7 = a5;
  v31 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21 = MEMORY[0x29EDCA5F8];
  v22 = 3221225472;
  v23 = sub_29C808168;
  v24 = &unk_29F325B70;
  v25 = self;
  v13 = v10;
  v26 = v13;
  v14 = v11;
  v27 = v14;
  v15 = v12;
  v28 = v15;
  v16 = MEMORY[0x29ED447A0](&v21);
  v17 = _AALogSystem();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v18)
    {
      *buf = 138412290;
      v30 = v13;
      _os_log_impl(&dword_29C7FE000, v17, OS_LOG_TYPE_DEFAULT, "Being forced to skip cached login for account (%@)", buf, 0xCu);
    }

    v16[2](v16, 0, 0);
  }

  else
  {
    if (v18)
    {
      *buf = 138412290;
      v30 = v13;
      _os_log_impl(&dword_29C7FE000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to fetch cached login response for account (%@)", buf, 0xCu);
    }

    v19 = objc_alloc_init(MEMORY[0x29EDBE320]);
    [v19 fetchCachedLoginResponseForAccount:v13 completion:{v16, v21, v22, v23, v24, v25, v26, v27}];
  }

  v20 = *MEMORY[0x29EDCA608];
}

- (void)_performLoginDelegatesRequestForAccount:(id)a3 store:(id)a4 handler:(id)a5
{
  v57 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AppleIDAuthenticationPlugin *)self _loginDelegatesParameters];
  v12 = [objc_alloc(MEMORY[0x29EDBE358]) initWithAccount:v8 parameters:v11];
  v13 = [v8 aa_personID];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x29EDBE338]);
    v15 = [v8 aa_personID];
    v16 = [v14 initWithDSID:v15];

    [v16 addProvisioningInfoToAARequest:v12];
  }

  v17 = _AASignpostLogSystem();
  v18 = _AASignpostCreate();
  v20 = v19;

  v21 = _AASignpostLogSystem();
  v22 = v21;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v39 = [v9 client];
    [v39 bundleID];
    v23 = v43 = v10;
    [v8 accountType];
    v41 = v20;
    v25 = v24 = v11;
    v26 = [v25 identifier];
    *buf = 138543618;
    v52 = v23;
    v53 = 2114;
    v54 = v26;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v18, "LoginDelegates", " Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);

    v11 = v24;
    v20 = v41;

    v10 = v43;
  }

  v27 = _AASignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    [v9 client];
    v42 = self;
    v44 = v12;
    v28 = v40 = v11;
    [v28 bundleID];
    v29 = v9;
    v31 = v30 = v10;
    v32 = [v8 accountType];
    [v32 identifier];
    v34 = v33 = v20;
    *buf = 134218498;
    v52 = v18;
    v53 = 2114;
    v54 = v31;
    v55 = 2114;
    v56 = v34;
    _os_log_impl(&dword_29C7FE000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LoginDelegates  Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x20u);

    v20 = v33;
    v10 = v30;
    v9 = v29;

    v11 = v40;
    self = v42;
    v12 = v44;
  }

  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v45[2] = sub_29C808884;
  v45[3] = &unk_29F325B98;
  v49 = v18;
  v50 = v20;
  v45[4] = self;
  v46 = v8;
  v47 = v9;
  v48 = v10;
  v35 = v10;
  v36 = v9;
  v37 = v8;
  [v12 performRequestWithHandler:v45];

  v38 = *MEMORY[0x29EDCA608];
}

- (void)_handleDelegatesResponseForAccount:(id)a3 store:(id)a4 response:(id)a5 error:(id)a6 handler:(id)a7
{
  v36[1] = *MEMORY[0x29EDCA608];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v14 status];
  v18 = [v17 integerValue];

  if (v15 || v18)
  {
    v22 = [v14 statusMessage];
    v21 = v22;
    if (v22)
    {
      v23 = MEMORY[0x29EDB9FA0];
      v35 = *MEMORY[0x29EDB9ED8];
      v36[0] = v22;
      v24 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v25 = [v23 errorWithDomain:@"com.apple.appleaccount" code:v18 userInfo:v24];

      v15 = v25;
    }

    v26 = [v12 credential];
    [v26 setPassword:0];

    v16[2](v16, 0, v15);
  }

  else
  {
    v19 = [v12 credential];
    v20 = [v19 password];

    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 3221225472;
    v28[2] = sub_29C808CBC;
    v28[3] = &unk_29F325BC0;
    v29 = v12;
    v30 = v20;
    v31 = self;
    v32 = v14;
    v33 = 0;
    v34 = v16;
    v15 = v20;
    [(AppleIDAuthenticationPlugin *)self _invokeDelegatesWithAuthenticationResponse:v32 password:v15 store:v13 account:v29 completion:v28];

    v21 = v29;
  }

  v27 = *MEMORY[0x29EDCA608];
}

- (id)_loginDelegatesParameters
{
  v13[3] = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDC1130] sharedInstance];
  v3 = [v2 needsLostModeExitAuth];

  v4 = MEMORY[0x29EDB8EA0];
  v5 = MEMORY[0x29EDB8EA0];
  if (v3)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "FMDFMIPManager says we need a lost-mode exit token.", v11, 2u);
    }

    v5 = &unk_2A23C8A00;
  }

  v7 = *MEMORY[0x29EDBE418];
  v12[0] = *MEMORY[0x29EDBE408];
  v12[1] = v7;
  v13[0] = v4;
  v13[1] = v5;
  v12[2] = *MEMORY[0x29EDBE410];
  v13[2] = &unk_2A23C8A28;
  v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (BOOL)_isProxiedAuthenticationWithContext:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = v3;
  v5 = v3 != 0;
  if (v3)
  {
    v6 = [v3 proxiedDevice];

    if (!v6)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 proxiedDevice];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "Proxied authentication detected: proxiedDevice = %@", &v11, 0xCu);
    }
  }

  else
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "Missing Authentication Context.", &v11, 2u);
    }
  }

LABEL_9:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
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

@end