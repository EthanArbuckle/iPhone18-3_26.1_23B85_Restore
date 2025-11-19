@interface ACAccountStore
@end

@implementation ACAccountStore

void __69__ACAccountStore_AppleAccount__aa_primaryAppleAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 aaf_firstObjectPassingTest:&__block_literal_global_34];
  (*(*(a1 + 32) + 16))();
}

uint64_t __60__ACAccountStore_AppleAccount__aa_appleAccountWithUsername___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 username];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 aa_appleIDAliases];
    v5 = [v6 containsObject:*(a1 + 32)];
  }

  return v5;
}

BOOL __60__ACAccountStore_AppleAccount__aa_appleAccountWithPersonID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 aa_personID];
  v4 = 1;
  if (([v3 isEqual:*(a1 + 32)] & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v3 longLongValue] < 1 || (v5 = objc_msgSend(v3, "longLongValue"), v5 != objc_msgSend(*(a1 + 32), "longLongValue")))
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __59__ACAccountStore_AppleAccount__aa_appleAccountWithAltDSID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 aa_altDSID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __97__ACAccountStore_AppleAccount__aa_updatePropertiesForAppleAccount_options_serverInfo_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2 == 1)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:-1 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

  else if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _performUpdateRequestWithAccount:*(a1 + 40) serverInfo:*(a1 + 48) completion:*(a1 + 56)];
  }
}

void __87__ACAccountStore_AppleAccount___performUpdateRequestWithAccount_serverInfo_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v9 = _AASignpostLogSystem();
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = _AAErrorUnderlyingError(v7);
    *buf = 67240192;
    LODWORD(v26) = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "GetAccountSettings", " error=%{public,signpost.telemetry:number2,name=error}d ", buf, 8u);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = *(a1 + 48);
    v16 = _AAErrorUnderlyingError(v7);
    v17 = [v16 code];
    *buf = 134218496;
    v26 = v15;
    v27 = 2048;
    v28 = v14;
    v29 = 1026;
    v30 = v17;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GetAccountSettings  error=%{public,signpost.telemetry:number2,name=error}d ", buf, 0x1Cu);
  }

  v18 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__ACAccountStore_AppleAccount___performUpdateRequestWithAccount_serverInfo_completion___block_invoke_43;
  block[3] = &unk_1E7C9A898;
  v22 = v6;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v19 = v6;
  dispatch_async(v18, block);

  v20 = *MEMORY[0x1E69E9840];
}

void __87__ACAccountStore_AppleAccount___performUpdateRequestWithAccount_serverInfo_completion___block_invoke_43(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 error];
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"localizedError"];
    v7 = [v6 isEqualToString:@"MOBILEME_TERMS_OF_SERVICE_UPDATE"];

    if (v7)
    {
      v8 = _AALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Looks like we need to verify terms for account: %@", buf, 0xCu);
      }

      if (![*(a1 + 40) aa_needsToVerifyTerms])
      {
        [*(a1 + 40) aa_setNeedsToVerifyTerms:1];
        goto LABEL_21;
      }

      v10 = _AALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Checking if we need to repost the CFU", buf, 2u);
      }

      v11 = objc_opt_new();
      v12 = AAFollowUpIdentifierVerifyTerms[0];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __87__ACAccountStore_AppleAccount___performUpdateRequestWithAccount_serverInfo_completion___block_invoke_45;
      v25[3] = &unk_1E7C9B2E0;
      v26 = v11;
      v27 = *(a1 + 40);
      v13 = v11;
      [v13 pendingFollowUpWithIdentifier:v12 completion:v25];
    }

    else
    {
      v17 = [v4 userInfo];
      v18 = [v17 objectForKeyedSubscript:@"localizedError"];
      v19 = [v18 isEqualToString:@"ACCOUNT_IN_SUSPENDED_MODE"];

      if (!v19)
      {
        if (!v4)
        {
          [*(a1 + 40) aa_updateWithProvisioningResponse:v3];
        }

        goto LABEL_21;
      }

      v21 = _AALogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 40);
        *buf = 138412290;
        v29 = v22;
        _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Looks like account: %@ is suspended.", buf, 0xCu);
      }

      v23 = [*(a1 + 32) responseDictionary];
      v13 = [v23 objectForKeyedSubscript:@"userInfo"];

      if (v13)
      {
        [*(a1 + 40) setAccountProperty:v13 forKey:@"suspendedInfo"];
      }
    }

LABEL_21:
    (*(*(a1 + 48) + 16))(*(a1 + 48), v4 == 0, v4, v20);

    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = *(a1 + 48);
  v15 = *(*(a1 + 48) + 16);
  v16 = *MEMORY[0x1E69E9840];

  v15();
}

void __87__ACAccountStore_AppleAccount___performUpdateRequestWithAccount_serverInfo_completion___block_invoke_45(uint64_t a1, uint64_t a2)
{
  v4 = _AALogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "CFU already posted", v6, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Reposting the CFU", buf, 2u);
    }

    [*(a1 + 32) postFollowUpWithIdentifier:AAFollowUpIdentifierVerifyTerms[0] forAccount:*(a1 + 40) userInfo:0 completion:0];
  }
}

void __93__ACAccountStore_AppleAccount__aa_loginAndUpdateiCloudAccount_delegateParams_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v9 = [v8 error];
  }

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"YES";
    if (v11)
    {
      v13 = @"NO";
    }

    v20 = 138412290;
    v21 = v13;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AppleAccount Authenticated: %@", &v20, 0xCu);
  }

  if (v11)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = [v8 convertToProvisioningResponse];
    v15 = [v14 responseDictionary];

    if (v15)
    {
      [*(a1 + 32) aa_updateWithProvisioningResponse:v14];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __93__ACAccountStore_AppleAccount__aa_loginAndUpdateiCloudAccount_delegateParams_withCompletion___block_invoke_cold_1(v8, v16);
      }

      v17 = *(a1 + 40);
      v18 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
      (*(v17 + 16))(v17, 0, v8, v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __60__ACAccountStore_AppleAccount__aa_authKitAccountForAltDSID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 aa_altDSID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __93__ACAccountStore_AppleAccount__aa_loginAndUpdateiCloudAccount_delegateParams_withCompletion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 responseDictionary];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_FAULT, "Cannot convert AALoginAccountResponse to AAProvisioningResponse: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end