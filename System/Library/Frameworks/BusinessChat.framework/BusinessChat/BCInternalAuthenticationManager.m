@interface BCInternalAuthenticationManager
- (BCInternalAuthenticationManager)initWithAuthenticationRequest:(id)a3;
- (BOOL)isUserSignedIn;
- (NSString)action;
- (NSString)firstName;
- (NSString)lastName;
- (NSString)middleName;
- (NSString)subtitle;
- (NSString)title;
- (NSString)username;
- (id)labelCategory;
- (int64_t)state;
- (void)fetchCredentials:(id)a3;
@end

@implementation BCInternalAuthenticationManager

- (BCInternalAuthenticationManager)initWithAuthenticationRequest:(id)a3
{
  v5 = MEMORY[0x277CB8F48];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v7 aa_primaryAppleAccount];
  v9 = v6;
  v10 = v8;
  v11 = v7;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = BCInternalAuthenticationManager;
    v12 = [(BCInternalAuthenticationManager *)&v14 init];
    self = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_accountStore, v7);
      objc_storeStrong(&self->_account, v8);
      objc_storeStrong(&self->_authenticationRequest, a3);
    }
  }

  return self;
}

- (void)fetchCredentials:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CF0188]);
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 initWithIdentifier:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__BCInternalAuthenticationManager_fetchCredentials___block_invoke;
  v10[3] = &unk_278A0E918;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 appleIDHeadersForRequest:0 completion:v10];
}

void __52__BCInternalAuthenticationManager_fetchCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x277CCA9B8]);
      v54 = *MEMORY[0x277CCA450];
      v55[0] = @"Unable to access credentials";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v8 = [v30 initWithDomain:@"com.apple.icloud.messages.business.internalAuthentication" code:0 userInfo:v31];
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_54;
  }

  v8 = objc_opt_new();
  v9 = [*(a1 + 32) authenticationRequest];
  v10 = [v9 retrieve];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = [v5 objectForKey:v16];
        if (v17)
        {
          [v8 setObject:v17 forKey:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v13);
  }

  if ([v11 containsObject:@"X-MMe-Client-Info"])
  {
    v18 = [MEMORY[0x277CCAB70] ak_clientInfoHeader];
    v19 = [v18 objectForKeyedSubscript:@"X-MMe-Client-Info"];

    if (v19)
    {
      [v8 setObject:v19 forKey:@"X-MMe-Client-Info"];
    }
  }

  if ([v11 containsObject:@"X-Mme-Device-Id"])
  {
    v20 = [MEMORY[0x277CCAB70] ak_deviceUDIDHeader];
    v21 = [v20 objectForKeyedSubscript:@"X-Mme-Device-Id"];

    if (v21)
    {
      [v8 setObject:v21 forKey:@"X-Mme-Device-Id"];
    }
  }

  if ([v11 containsObject:@"person-identifier"])
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = [*(v22 + 16) aa_personID];
      if (v23)
      {
        [v8 setObject:v23 forKey:@"person-identifier"];
      }
    }

    else
    {
      v23 = 0;
    }
  }

  if ([v11 containsObject:@"alt-person-identifier"])
  {
    v24 = *(a1 + 32);
    if (v24)
    {
      v25 = [*(v24 + 16) aida_alternateDSID];
      if (v25)
      {
        [v8 setObject:v25 forKey:@"alt-person-identifier"];
      }
    }

    else
    {
      v25 = 0;
    }
  }

  if ([v11 containsObject:@"serial-number"])
  {
    if (!*(a1 + 32))
    {
      v29 = 0;
      goto LABEL_42;
    }

    *buf = 0;
    v26 = MGCopyAnswerWithError();
    v27 = v26;
    if (*buf)
    {
      v28 = LogCategory_Daemon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        _os_log_error_impl(&dword_236EA0000, v28, OS_LOG_TYPE_ERROR, "BCInternalAuthenticationManager: Error fetching serial number", v50, 2u);
      }

      v29 = @"Unknown";
    }

    else
    {
      v29 = v26;

      if (!v29)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    [v8 setObject:v29 forKey:@"serial-number"];
    goto LABEL_42;
  }

LABEL_43:
  if ([v11 containsObject:@"X-Apple-GS-Token"])
  {
    v32 = *(a1 + 32);
    if (v32)
    {
      v33 = *(v32 + 16);
      v34 = *(v32 + 24);
      v35 = [v34 aida_accountForiCloudAccount:v33];

      v36 = [v35 aida_tokenForService:@"com.apple.gs.global.auth"];

      if (v36)
      {
        [v8 setObject:v36 forKey:@"X-Apple-GS-Token"];
      }
    }

    else
    {
      v36 = 0;
    }
  }

  v37 = LogCategory_Daemon();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v52 = v8;
    _os_log_debug_impl(&dword_236EA0000, v37, OS_LOG_TYPE_DEBUG, "BCInternalAuthenticationManager: Retrieved credentials %@", buf, 0xCu);
  }

  v45 = 0;
  v38 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:1 error:&v45];
  v39 = v45;
  if (v39)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v40 = [*(a1 + 32) authenticationRequest];
    v41 = [v40 responseEncryptionKey];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __52__BCInternalAuthenticationManager_fetchCredentials___block_invoke_30;
    v43[3] = &unk_278A0E8F0;
    v44 = *(a1 + 40);
    [BCCryptor encryptData:v38 key:v41 completion:v43];
  }

LABEL_54:
  v42 = *MEMORY[0x277D85DE8];
}

- (NSString)username
{
  if (self)
  {
    self = self->_account;
  }

  return [(BCInternalAuthenticationManager *)self username];
}

- (NSString)firstName
{
  if (self)
  {
    self = self->_account;
  }

  return [(BCInternalAuthenticationManager *)self aa_firstName];
}

- (NSString)middleName
{
  if (self)
  {
    self = self->_account;
  }

  return [(BCInternalAuthenticationManager *)self aa_middleName];
}

- (NSString)lastName
{
  if (self)
  {
    self = self->_account;
  }

  return [(BCInternalAuthenticationManager *)self aa_lastName];
}

- (BOOL)isUserSignedIn
{
  if (self)
  {
    self = self->_account;
  }

  v2 = [(BCInternalAuthenticationManager *)self username];
  v3 = v2 != 0;

  return v3;
}

- (NSString)title
{
  v3 = [(BCInternalAuthenticationManager *)self authenticationRequest];
  v4 = [v3 labels];
  v5 = [(BCInternalAuthenticationManager *)self labelCategory];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [(BCInternalAuthenticationManager *)self state];
  if (v7 == 3)
  {
    v8 = [v6 title];
    if (!v8)
    {
      v9 = +[BCShared classBundle];
      v10 = v9;
      v11 = @"SIGN_IN_REQUIRED";
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v7 != 2)
  {
    v12 = +[BCShared classBundle];
    v13 = [v12 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2849DDCD8 table:0];
    goto LABEL_8;
  }

  v8 = [v6 title];
  if (v8)
  {
LABEL_6:
    v12 = v8;
    v13 = [v6 title];
LABEL_8:
    v14 = v13;
    goto LABEL_11;
  }

  v9 = +[BCShared classBundle];
  v10 = v9;
  v11 = @"CONFIRM_TITLE";
LABEL_10:
  v14 = [v9 localizedStringForKey:v11 value:&stru_2849DDCD8 table:0];

  v12 = 0;
LABEL_11:

  return v14;
}

- (id)labelCategory
{
  if (a1)
  {
    v2 = [a1 state];
    v3 = BCLabelCategoryAuthenticate;
    v4 = BCLabelCategorySignIn;
    if (v2 != 3)
    {
      v4 = BCLabelCategoryFailure;
    }

    if (v2 != 2)
    {
      v3 = v4;
    }

    a1 = *v3;
    v1 = vars8;
  }

  return a1;
}

- (NSString)subtitle
{
  v3 = [(BCInternalAuthenticationManager *)self authenticationRequest];
  v4 = [v3 labels];
  v5 = [(BCInternalAuthenticationManager *)self labelCategory];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [(BCInternalAuthenticationManager *)self state];
  if (v7 == 3)
  {
    v8 = [v6 subtitle];
    if (!v8)
    {
      v15 = +[BCShared classBundle];
      v13 = [v15 localizedStringForKey:@"SIGN_IN_MESSAGE" value:&stru_2849DDCD8 table:0];

      goto LABEL_9;
    }
  }

  else
  {
    if (v7 != 2)
    {
      v13 = 0;
      goto LABEL_11;
    }

    v8 = [v6 subtitle];
    if (!v8)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = +[BCShared classBundle];
      v11 = [v10 localizedStringForKey:@"CONFIRM_SUBTITLE" value:&stru_2849DDCD8 table:0];
      v12 = [(BCInternalAuthenticationManager *)self username];
      v13 = [v9 stringWithFormat:v11, v12];

LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }
  }

  v14 = v8;
  v13 = [v6 subtitle];
LABEL_10:

LABEL_11:

  return v13;
}

- (NSString)action
{
  v3 = [(BCInternalAuthenticationManager *)self authenticationRequest];
  v4 = [v3 labels];
  v5 = [(BCInternalAuthenticationManager *)self labelCategory];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [(BCInternalAuthenticationManager *)self state];
  if (v7 == 3)
  {
    v8 = [v6 action];
    if (!v8)
    {
      v9 = +[BCShared classBundle];
      v10 = v9;
      v11 = @"SIGN_IN_BUTTON";
      goto LABEL_9;
    }
  }

  else
  {
    if (v7 != 2)
    {
      v13 = 0;
      goto LABEL_11;
    }

    v8 = [v6 action];
    if (!v8)
    {
      v9 = +[BCShared classBundle];
      v10 = v9;
      v11 = @"CONFIRM_BUTTON";
LABEL_9:
      v13 = [v9 localizedStringForKey:v11 value:&stru_2849DDCD8 table:0];

      v12 = 0;
      goto LABEL_10;
    }
  }

  v12 = v8;
  v13 = [v6 action];
LABEL_10:

LABEL_11:

  return v13;
}

- (int64_t)state
{
  if ([(BCInternalAuthenticationManager *)self isUserSignedIn])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

@end