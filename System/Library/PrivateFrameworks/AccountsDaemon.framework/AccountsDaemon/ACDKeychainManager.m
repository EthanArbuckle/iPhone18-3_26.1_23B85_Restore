@interface ACDKeychainManager
+ (ACDServer)server;
+ (BOOL)_keychainLock_removeItemForService:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7;
+ (BOOL)_removeCredentialItemWithKey:(id)a3 forAccountWithID:(id)a4 username:(id)a5 accountTypeID:(id)a6 clientID:(id)a7 options:(id)a8 error:(id *)a9;
+ (BOOL)_removeItemForService:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7;
+ (BOOL)_shouldSyncCredentialForAccount:(id)a3;
+ (id)_credentialForAccountWithID:(id)a3 accountTypeID:(id)a4 credentialType:(id)a5 clientID:(id)a6 allowAdditionalAccountTypeSegment:(BOOL)a7 options:(id)a8 error:(id *)a9;
+ (id)_fetchOptionsForAccount:(id)a3;
+ (id)_itemForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7;
+ (id)credentialForAccount:(id)a3 clientID:(id)a4 error:(id *)a5;
+ (id)credentialForManagedAccountObject:(id)a3 clientID:(id)a4 error:(id *)a5;
+ (id)keychainServiceNameForClientID:(id)a3 accountTypeIdentifier:(id)a4 additionalAccountTypeSegment:(id)a5 key:(id)a6;
+ (void)_accountTypeIdentifierFromComponents:(id)a3 handler:(id)a4;
+ (void)_createNoSyncOAuthTokens:(id)a3 account:(id)a4 clientID:(id)a5;
+ (void)_fallbackToUnsyncedOAuthTokens:(id)a3;
+ (void)_keychainLock_addItem:(id)a3 forServiceName:(id)a4 username:(id)a5 accessGroup:(id)a6 accessibility:(id)a7 syncable:(BOOL)a8 requiresTouchID:(BOOL)a9 error:(id *)a10;
+ (void)_keychainLock_updateItem:(id)a3 existingPassword:(id)a4 forServiceName:(id)a5 username:(id)a6 accessGroup:(id)a7 accessibility:(id)a8 options:(id)a9 error:(id *)a10;
+ (void)_migrateCredential:(id)a3 forAccount:(id)a4 clientID:(id)a5;
+ (void)_removeCredentialsForAccount:(id)a3 clientID:(id)a4 options:(id)a5 error:(id *)a6;
+ (void)_saveCredential:(id)a3 forAccount:(id)a4 clientID:(id)a5 error:(id *)a6;
+ (void)_setItem:(id)a3 forServiceName:(id)a4 username:(id)a5 accessGroup:(id)a6 accessibility:(id)a7 syncable:(BOOL)a8 requiresTouchID:(BOOL)a9 options:(id)a10 error:(id *)a11;
+ (void)_setNonPersistentCredentialTimerForAccount:(id)a3;
+ (void)componentsFromKeychainServiceName:(id)a3 handler:(id)a4;
+ (void)initialize;
+ (void)notifiyCredentialChangedForAccount:(id)a3;
+ (void)removeCredentialForAccount:(id)a3 clientID:(id)a4 error:(id *)a5;
+ (void)removeCredentialForAccount:(id)a3 error:(id *)a4;
+ (void)removeCredentialForAccount:(id)a3 key:(id)a4 error:(id *)a5;
@end

@implementation ACDKeychainManager

+ (void)initialize
{
  _ac_keychainLock = objc_opt_new();

  MEMORY[0x2821F96F8]();
}

+ (ACDServer)server
{
  WeakRetained = objc_loadWeakRetained(&sServer);

  return WeakRetained;
}

+ (id)_fetchOptionsForAccount:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([a1 _shouldSyncCredentialForAccount:v4])
  {
    [v5 setObject:*MEMORY[0x277CDC148] forKeyedSubscript:*MEMORY[0x277CDC140]];
  }

  v6 = [v4 accountType];
  v7 = [v6 identifier];
  v8 = [v7 isEqual:*MEMORY[0x277CB8BB0]];

  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ICLOUD_STORAGE" value:&stru_2835374D8 table:@"Localizable"];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277CDC5C0]];
  }

  if ([v5 count])
  {
    v11 = [v5 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)credentialForManagedAccountObject:(id)a3 clientID:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CB8F30];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithManagedAccount:v10];

  v12 = [a1 credentialForAccount:v11 clientID:v9 error:a5];

  return v12;
}

+ (id)credentialForAccount:(id)a3 clientID:(id)a4 error:(id *)a5
{
  v45[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 accountType];
  v11 = [v10 identifier];

  v12 = [v8 accountType];
  v13 = [v12 credentialType];

  v14 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager credentialForAccount:clientID:error:];
  }

  v15 = [MEMORY[0x277CB8F38] credentialPolicyIsMixedForAccountTypeIdentifier:v11];
  v16 = [v8 accountType];
  v17 = [v16 credentialProtectionPolicy];
  v18 = [ACDKeychain canAccessPasswordsWithPolicy:v17];

  if ((v18 | v15))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    v36 = 0;
    v37[0] = &v36;
    v37[1] = 0x3032000000;
    v37[2] = __Block_byref_object_copy_;
    v37[3] = __Block_byref_object_dispose_;
    v38 = 0;
    v19 = MEMORY[0x277CB8F98];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke;
    v28[3] = &unk_27848BCA8;
    v29 = v8;
    p_buf = &buf;
    v34 = &v36;
    v35 = a1;
    v30 = v11;
    v31 = v13;
    v32 = v9;
    [v19 performWithinPersonaForAccount:v29 withBlock:v28];
    if (*(*(&buf + 1) + 40))
    {
      v20 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ACDKeychainManager credentialForAccount:? clientID:? error:?];
      }

      if (a5)
      {
        *a5 = *(*(&buf + 1) + 40);
      }
    }

    v21 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ACDKeychainManager credentialForAccount:v37 clientID:? error:?];
    }

    a5 = *(v37[0] + 40);
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v22 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v8 identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_221D2F000, v22, OS_LOG_TYPE_DEFAULT, "Credential for account %@ is not currently available", &buf, 0xCu);
    }

    if (a5)
    {
      v24 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v45[0] = @"Credential data is currently unavailable for Account ";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      *a5 = [v24 errorWithDomain:*MEMORY[0x277CB8DC0] code:10 userInfo:v25];

      a5 = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return a5;
}

void __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) credentialLocation];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 identifier];

    if (v4)
    {
      v5 = [*(a1 + 32) identifier];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = [v3 qualifiedUsername];
    if (v6)
    {

      v5 = [*(a1 + 32) qualifiedUsername];
LABEL_6:
      v7 = v5;
      v8 = *(a1 + 80);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      v12 = [v8 _fetchOptionsForAccount:*(a1 + 32)];
      v13 = a1 + 64;
      v14 = *(*(a1 + 64) + 8);
      obj = *(v14 + 40);
      v15 = [v8 _credentialForAccountWithID:v7 accountTypeID:v11 credentialType:v9 clientID:v10 allowAdditionalAccountTypeSegment:1 options:v12 error:&obj];
      objc_storeStrong((v14 + 40), obj);
      v16 = *(*(a1 + 72) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v18 = [*(*(*(a1 + 72) + 8) + 40) keysForCredentialItems];
      if ([v18 count])
      {
        v19 = *(*(*v13 + 8) + 40);

        if (!v19)
        {
LABEL_45:
          v69 = [*(*(*(a1 + 72) + 8) + 40) oauthTokenNoSync];

          v70 = *(a1 + 80);
          v71 = *(*(*(a1 + 72) + 8) + 40);
          if (v69)
          {
            [v70 _fallbackToUnsyncedOAuthTokens:v71];
          }

          else
          {
            [v70 _createNoSyncOAuthTokens:v71 account:*(a1 + 32) clientID:*(a1 + 56)];
          }

          goto LABEL_48;
        }
      }

      else
      {
      }

      v24 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke_cold_1((a1 + 64));
      }

      v25 = *(a1 + 32);
      if (v2)
      {
        [v25 qualifiedUsername];
      }

      else
      {
        [v25 identifier];
      }
      v26 = ;
      v27 = v26;
      if (v26 && [v26 length])
      {
        v28 = *(a1 + 80);
        v73 = v7;
        v29 = *(a1 + 48);
        v30 = *(a1 + 56);
        v31 = *(a1 + 40);
        v32 = [v28 _fetchOptionsForAccount:*(a1 + 32)];
        v33 = *(*(a1 + 64) + 8);
        v76 = *(v33 + 40);
        v34 = v29;
        v7 = v73;
        v35 = [v28 _credentialForAccountWithID:v27 accountTypeID:v31 credentialType:v34 clientID:v30 allowAdditionalAccountTypeSegment:0 options:v32 error:&v76];
        objc_storeStrong((v33 + 40), v76);
        v36 = *(*(a1 + 72) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;
      }

      v38 = [*(*(*(a1 + 72) + 8) + 40) keysForCredentialItems];
      if ([v38 count])
      {
        v39 = *(*(*v13 + 8) + 40);

        if (!v39)
        {
          if (v2)
          {
            goto LABEL_44;
          }

          v40 = [*(a1 + 32) qualifiedUsername];

          if (!v40)
          {
            goto LABEL_44;
          }

          v41 = _ACDKeychainLogSystem();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          v42 = *(a1 + 32);
          v43 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412546;
          v79 = v42;
          v80 = 2112;
          v81 = v43;
          v44 = "Found an identifier-based credential for account %@ which isn't set to use them! Migrating to qualifiedUsreName-based credential. Error: %@";
          goto LABEL_37;
        }
      }

      else
      {
      }

      v45 = [*(*(*(a1 + 72) + 8) + 40) keysForCredentialItems];
      if ([v45 count] && !*(*(*v13 + 8) + 40))
      {
      }

      else
      {
        v46 = [*(a1 + 32) username];
        v47 = [v46 length];

        if (v47)
        {
          v74 = v7;
          v48 = v27;
          v49 = _ACDKeychainLogSystem();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke_cold_2((a1 + 64));
          }

          v50 = *(a1 + 80);
          v51 = [*(a1 + 32) username];
          v52 = *(a1 + 48);
          v53 = *(a1 + 56);
          v54 = *(a1 + 40);
          v55 = [*(a1 + 80) _fetchOptionsForAccount:*(a1 + 32)];
          v56 = *(*(a1 + 64) + 8);
          v75 = *(v56 + 40);
          v57 = [v50 _credentialForAccountWithID:v51 accountTypeID:v54 credentialType:v52 clientID:v53 allowAdditionalAccountTypeSegment:0 options:v55 error:&v75];
          objc_storeStrong((v56 + 40), v75);
          v58 = *(*(a1 + 72) + 8);
          v59 = *(v58 + 40);
          *(v58 + 40) = v57;

          v60 = [*(*(*(a1 + 72) + 8) + 40) keysForCredentialItems];
          if (![v60 count])
          {

            v27 = v48;
            v7 = v74;
            goto LABEL_44;
          }

          v61 = *(*(*v13 + 8) + 40);

          v27 = v48;
          v7 = v74;
          if (v61)
          {
LABEL_44:

            goto LABEL_45;
          }

          v41 = _ACDKeychainLogSystem();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
LABEL_38:

            [*(a1 + 80) _migrateCredential:*(*(*(a1 + 72) + 8) + 40) forAccount:*(a1 + 32) clientID:*(a1 + 56)];
            goto LABEL_44;
          }

          v62 = *(a1 + 32);
          v63 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412546;
          v79 = v62;
          v80 = 2112;
          v81 = v63;
          v44 = "Found a legacy username-based credential for account %@! Migrating to QualifiedUsername-based credential. Error: %@";
LABEL_37:
          _os_log_impl(&dword_221D2F000, v41, OS_LOG_TYPE_DEFAULT, v44, buf, 0x16u);
          goto LABEL_38;
        }
      }

      v64 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [*(a1 + 32) identifier];
        *buf = 138412290;
        v79 = v65;
        _os_log_impl(&dword_221D2F000, v64, OS_LOG_TYPE_DEFAULT, "No username for account %@. Can't look up credential", buf, 0xCu);
      }

      v66 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:11 userInfo:0];
      v67 = *(*v13 + 8);
      v68 = *(v67 + 40);
      *(v67 + 40) = v66;

      goto LABEL_44;
    }
  }

  v20 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v79 = v21;
    _os_log_impl(&dword_221D2F000, v20, OS_LOG_TYPE_DEFAULT, "Nil qualifiedUsername for account %@. Can't look up credential", buf, 0xCu);
  }

  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:11 userInfo:0];
  v23 = *(*(a1 + 64) + 8);
  v7 = *(v23 + 40);
  *(v23 + 40) = v22;
LABEL_48:

  v72 = *MEMORY[0x277D85DE8];
}

+ (id)_credentialForAccountWithID:(id)a3 accountTypeID:(id)a4 credentialType:(id)a5 clientID:(id)a6 allowAdditionalAccountTypeSegment:(BOOL)a7 options:(id)a8 error:(id *)a9
{
  v10 = a7;
  v47 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v14 = a4;
  v15 = a5;
  v39 = a6;
  v38 = a8;
  v16 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager _credentialForAccountWithID:accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:];
  }

  v37 = objc_alloc_init(MEMORY[0x277CB8F38]);
  [v37 setCredentialType:v15];
  v17 = [MEMORY[0x277CB8F38] supportedKeysForAccountTypeIdentifier:v14 credentialType:v15];
  if ([v17 count])
  {
    if (v10)
    {
LABEL_5:
      v18 = [MEMORY[0x277CB8F38] additionalServiceSegmentForAccountTypeIdentifier:v14];
      goto LABEL_10;
    }
  }

  else
  {
    v19 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[ACDKeychainManager _credentialForAccountWithID:accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:];
    }

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v18 = 0;
LABEL_10:
  v36 = [MEMORY[0x277CB8F38] credentialPolicyIsMixedForAccountTypeIdentifier:v14];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v35 = v15;
    v23 = *v43;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v42 + 1) + 8 * i);
        v26 = v14;
        v27 = [ACDKeychainManager keychainServiceNameForClientID:v39 accountTypeIdentifier:v14 additionalAccountTypeSegment:v18 key:v25];
        v41 = 0;
        v28 = [ACDKeychainManager _itemForServiceName:v27 username:v40 accessGroup:0 options:v38 error:&v41];
        v29 = v41;
        v30 = v29;
        if (v29 && !(([v29 code] == 11) | v36 & 1))
        {
          if (a9)
          {
            v31 = v30;
            *a9 = v30;
          }

          v37 = 0;
          v14 = v26;
          goto LABEL_25;
        }

        if (v28)
        {
          [v37 setCredentialItem:v28 forKey:v25];
        }

        v14 = v26;
      }

      v22 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

LABEL_25:
    v15 = v35;
  }

  v32 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager _credentialForAccountWithID:accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v37;
}

uint64_t __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke(void *a1)
{
  v2 = [ACDKeychainManager credentialForAccount:a1[4] clientID:a1[5] error:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v16 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v16)
  {
    v15 = *v20;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        v3 = [*(a1 + 40) identifier];
        v4 = [*(a1 + 40) qualifiedUsername];
        v5 = [*(a1 + 40) accountType];
        v6 = [v5 identifier];
        v7 = *(a1 + 48);
        v8 = [*(a1 + 64) _fetchOptionsForAccount:*(a1 + 40)];
        v9 = *(*(a1 + 56) + 8);
        v18 = *(v9 + 40);
        [ACDKeychainManager _removeCredentialItemWithKey:v17 forAccountWithID:v3 username:v4 accountTypeID:v6 clientID:v7 options:v8 error:&v18];
        objc_storeStrong((v9 + 40), v18);

        if (*(*(*(a1 + 56) + 8) + 40))
        {
          v10 = _ACDKeychainLogSystem();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a1 + 40);
            v12 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138412546;
            v24 = v11;
            v25 = 2112;
            v26 = v12;
            _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Removal from keychain failed for account %@. Error: %@", buf, 0x16u);
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [objc_opt_class() server];
  [v3 credentialsDidChangeForAccount:*(a1 + 32)];
}

+ (void)_saveCredential:(id)a3 forAccount:(id)a4 clientID:(id)a5 error:(id *)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v8 = a4;
  v41 = a5;
  v42 = v8;
  v9 = [v8 accountType];
  v10 = [v9 identifier];

  if (v10)
  {
    v11 = [v40 keysForCredentialItems];
    v12 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v58 = v41;
      _os_log_debug_impl(&dword_221D2F000, v12, OS_LOG_TYPE_DEBUG, "Asked to save credential: %@ for Account - %@ with the clientID - %@", buf, 0x20u);
    }

    v13 = [a1 _shouldSyncCredentialForAccount:v8];
    v14 = MEMORY[0x277CB8F38];
    v15 = [v8 accountType];
    v16 = [v15 identifier];
    v37 = [v14 additionalServiceSegmentForAccountTypeIdentifier:v16];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = __Block_byref_object_copy_;
    v59 = __Block_byref_object_dispose_;
    v60 = 0;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v11;
    v17 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v17)
    {
      v18 = *v53;
      v19 = *MEMORY[0x277CB8E20];
LABEL_6:
      v20 = 0;
      while (1)
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * v20);
        if (![v21 isEqualToString:v19] || (v13 & 1) != 0)
        {
          v22 = [v42 accountType];
          v23 = [v22 identifier];
          v24 = [ACDKeychainManager keychainServiceNameForClientID:v41 accountTypeIdentifier:v23 additionalAccountTypeSegment:v37 key:v21];

          v25 = MEMORY[0x277CB8F38];
          v26 = [v42 accountType];
          v27 = [v26 identifier];
          v28 = [v25 credentialPolicyForAccountTypeIdentifier:v27 key:v21 clientID:v41];

          v29 = MEMORY[0x277CB8F98];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __64__ACDKeychainManager__saveCredential_forAccount_clientID_error___block_invoke;
          v43[3] = &unk_27848BD48;
          v30 = v42;
          v44 = v30;
          v45 = v40;
          v46 = v21;
          v31 = v24;
          v47 = v31;
          v32 = v28;
          v51 = v13;
          v48 = v32;
          v49 = buf;
          v50 = a1;
          [v29 performWithinPersonaForAccount:v30 withBlock:v43];
          LOBYTE(v28) = *(*&buf[8] + 40) == 0;

          if ((v28 & 1) == 0)
          {
            break;
          }
        }

        if (v17 == ++v20)
        {
          v17 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v17)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    if (a6)
    {
      v33 = *(*&buf[8] + 40);
      if (v33)
      {
        *a6 = v33;
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v34 = _ACDLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ACDKeychainManager _saveCredential:v8 forAccount:v34 clientID:? error:?];
    }

    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:0];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __64__ACDKeychainManager__saveCredential_forAccount_clientID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) credentialLocation];
  v3 = [*(a1 + 40) credentialItemForKey:*(a1 + 48)];
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  if (v2)
  {
    [v5 identifier];
  }

  else
  {
    [v5 qualifiedUsername];
  }
  v6 = ;
  v7 = *(a1 + 64);
  if ([*(a1 + 48) isEqualToString:*MEMORY[0x277CB8E20]])
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 88);
  }

  v9 = [*(a1 + 40) requiresTouchID];
  v10 = [*(a1 + 80) _fetchOptionsForAccount:*(a1 + 32)];
  v11 = *(*(a1 + 72) + 8);
  obj = *(v11 + 40);
  LOBYTE(v12) = v9;
  [ACDKeychainManager _setItem:v3 forServiceName:v4 username:v6 accessGroup:0 accessibility:v7 syncable:v8 requiresTouchID:v12 options:v10 error:&obj];
  objc_storeStrong((v11 + 40), obj);
}

+ (void)_setNonPersistentCredentialTimerForAccount:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CB8F78] sharedInstance];
  v5 = [v4 valueForManagedDefault:*MEMORY[0x277CB8E08]];
  v6 = [v5 BOOLValue];

  v7 = _ACDKeychainLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_221D2F000, v8, OS_LOG_TYPE_DEFAULT, "NOT setting timer to erase volatile keychain items because of user preference.", v9, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager _setNonPersistentCredentialTimerForAccount:];
    }

    v8 = +[ACDKeychainCleanupActivity sharedActivity];
    [v8 queueNonPersistentCredentialRemoval:v3];
  }
}

+ (void)removeCredentialForAccount:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CB8F30];
  v7 = a3;
  v8 = [[v6 alloc] initWithManagedAccount:v7];

  [a1 removeCredentialForAccount:v8 clientID:0 error:a4];
}

+ (void)removeCredentialForAccount:(id)a3 clientID:(id)a4 error:(id *)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager removeCredentialForAccount:clientID:error:];
  }

  v11 = [v8 accountType];
  v12 = [v11 credentialProtectionPolicy];
  v13 = [ACDKeychain canAccessPasswordsWithPolicy:v12];

  if (v13)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    v14 = MEMORY[0x277CB8F98];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__ACDKeychainManager_removeCredentialForAccount_clientID_error___block_invoke;
    v20[3] = &unk_27848BD70;
    v24 = a1;
    v21 = v8;
    v22 = v9;
    v23 = &v25;
    [v14 performWithinPersonaForAccount:v21 withBlock:v20];
    if (a5)
    {
      v15 = v26[5];
      if (v15)
      {
        *a5 = v15;
      }
    }

    v16 = _ACDLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager removeCredentialForAccount:clientID:error:];
    }

    _Block_object_dispose(&v25, 8);
  }

  else if (a5)
  {
    v17 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"Credential data is currently unavailable.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    *a5 = [v17 errorWithDomain:*MEMORY[0x277CB8DC0] code:10 userInfo:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __64__ACDKeychainManager_removeCredentialForAccount_clientID_error___block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = a1[4];
  v4 = a1[5];
  v5 = [v2 _fetchOptionsForAccount:v3];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  [v2 _removeCredentialsForAccount:v3 clientID:v4 options:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
}

+ (void)_removeCredentialsForAccount:(id)a3 clientID:(id)a4 options:(id)a5 error:(id *)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v35 = a5;
  v11 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager _removeCredentialsForAccount:clientID:options:error:];
  }

  v36 = v10;

  v12 = MEMORY[0x277CB8F38];
  v13 = [v9 accountType];
  v14 = [v13 identifier];
  v15 = [v9 accountType];
  v16 = [v15 credentialType];
  v17 = [v12 supportedKeysForAccountTypeIdentifier:v14 credentialType:v16];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    obj = v18;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        v24 = [v9 identifier];
        v25 = [v9 qualifiedUsername];
        v26 = [v9 accountType];
        v27 = [v26 identifier];
        [a1 _removeCredentialItemWithKey:v23 forAccountWithID:v24 username:v25 accountTypeID:v27 clientID:v36 options:v35 error:a6];

        if (a6 && *a6)
        {
          v28 = _ACDKeychainLogSystem();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v9 identifier];
            v30 = *a6;
            *buf = 138412802;
            v42 = v23;
            v43 = 2112;
            v44 = v29;
            v45 = 2112;
            v46 = v30;
            _os_log_impl(&dword_221D2F000, v28, OS_LOG_TYPE_DEFAULT, "Unable to remove credential %@ from %@. Error: %@", buf, 0x20u);
          }
        }
      }

      v18 = obj;
      v20 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v20);
  }

  if (!v36)
  {
    v31 = [objc_opt_class() server];
    [v31 credentialsDidChangeForAccount:v9];
  }

  v32 = *MEMORY[0x277D85DE8];
}

+ (void)removeCredentialForAccount:(id)a3 key:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Remove credential key: %@ for account: %@", buf, 0x16u);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v11 = MEMORY[0x277CB8F98];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__ACDKeychainManager_removeCredentialForAccount_key_error___block_invoke;
  v16[3] = &unk_27848BD98;
  v19 = v22;
  v21 = a1;
  v12 = v9;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v20 = buf;
  [v11 performWithinPersonaForAccount:v13 withBlock:v16];
  if (a5)
  {
    v14 = *(*&buf[8] + 40);
    if (v14)
    {
      *a5 = v14;
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v22, 8);

  v15 = *MEMORY[0x277D85DE8];
}

void __59__ACDKeychainManager_removeCredentialForAccount_key_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  v5 = [*(a1 + 40) qualifiedUsername];
  v6 = [*(a1 + 40) accountType];
  v7 = [v6 identifier];
  v8 = [*(a1 + 64) _fetchOptionsForAccount:*(a1 + 40)];
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  LOBYTE(v2) = [v2 _removeCredentialItemWithKey:v3 forAccountWithID:v4 username:v5 accountTypeID:v7 clientID:0 options:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v2;

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v10 = *(a1 + 64);
    v11 = [objc_opt_class() server];
    [v11 credentialsDidChangeForAccount:*(a1 + 40)];
  }
}

+ (BOOL)_removeCredentialItemWithKey:(id)a3 forAccountWithID:(id)a4 username:(id)a5 accountTypeID:(id)a6 clientID:(id)a7 options:(id)a8 error:(id *)a9
{
  v14 = a4;
  v15 = a8;
  v16 = MEMORY[0x277CB8F38];
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = [v16 additionalServiceSegmentForAccountTypeIdentifier:v18];
  v22 = [ACDKeychainManager keychainServiceNameForClientID:v17 accountTypeIdentifier:v18 additionalAccountTypeSegment:v21 key:v20];

  v23 = [ACDKeychainManager _removeItemForService:v22 username:v19 accessGroup:0 options:v15 error:a9];
  v24 = v14 != 0 || v23;
  if (v14 && !v23)
  {
    v24 = [ACDKeychainManager _removeItemForService:v22 username:v14 accessGroup:0 options:v15 error:a9];
  }

  return v24;
}

+ (id)keychainServiceNameForClientID:(id)a3 accountTypeIdentifier:(id)a4 additionalAccountTypeSegment:(id)a5 key:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v14 = v13;
  if (v9)
  {
    [v13 addObject:v9];
  }

  [v14 addObject:v10];
  if (v11)
  {
    [v14 addObject:v11];
  }

  [v14 addObject:v12];
  v15 = [v14 componentsJoinedByString:@"."];

  return v15;
}

+ (void)componentsFromKeychainServiceName:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [a3 componentsSeparatedByString:@"."];
  v8 = [v7 mutableCopy];

  v9 = [v8 lastObject];
  [v8 removeLastObject];
  if ([v9 length] && (objc_msgSend(MEMORY[0x277CB8F38], "allSupportedKeys"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v9), v10, (v11 & 1) != 0))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__ACDKeychainManager_componentsFromKeychainServiceName_handler___block_invoke;
    v12[3] = &unk_27848BDC0;
    v14 = v6;
    v13 = v9;
    [a1 _accountTypeIdentifierFromComponents:v8 handler:v12];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0, 0);
  }
}

void __64__ACDKeychainManager_componentsFromKeychainServiceName_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 length] && (objc_msgSend(MEMORY[0x277CB8F58], "allIdentifiers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v12), v6, (v7 & 1) != 0))
  {
    if ([v5 count])
    {
      v8 = [v5 componentsJoinedByString:@"."];
      v9 = *(a1 + 32);
      (*(*(a1 + 40) + 16))();

      goto LABEL_7;
    }

    v11 = *(a1 + 32);
    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    v10 = *(*(a1 + 40) + 16);
  }

  v10();
LABEL_7:
}

+ (void)_accountTypeIdentifierFromComponents:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ACDKeychainManager__accountTypeIdentifierFromComponents_handler___block_invoke;
  v12[3] = &unk_27848BDE8;
  v8 = v7;
  v13 = v8;
  v14 = v20;
  v15 = &v16;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v12];
  if (v17[3])
  {
    v9 = [v8 componentsJoinedByString:@"."];
    v10 = [v8 count];
    if (v10 == [v5 count])
    {
      v6[2](v6, v9, 0);
    }

    else
    {
      v11 = [v5 subarrayWithRange:{0, objc_msgSend(v5, "count") - objc_msgSend(v8, "count")}];
      (v6)[2](v6, v9, v11);
    }
  }

  else
  {
    v6[2](v6, 0, 0);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

void __67__ACDKeychainManager__accountTypeIdentifierFromComponents_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  [*(a1 + 32) insertObject:? atIndex:?];
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && [v6 isEqualToString:@"com"])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = [v6 isEqualToString:@"apple"];
}

+ (void)_migrateCredential:(id)a3 forAccount:(id)a4 clientID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  [a1 _saveCredential:v8 forAccount:v9 clientID:v10 error:&v18];
  v11 = v18;
  if (!v11)
  {
    v12 = MEMORY[0x277CB8F98];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__ACDKeychainManager__migrateCredential_forAccount_clientID___block_invoke;
    v13[3] = &unk_27848BE10;
    v14 = v8;
    v15 = v10;
    v16 = v9;
    v17 = a1;
    [v12 performWithinPersonaForAccount:v16 withBlock:v13];
  }
}

void __61__ACDKeychainManager__migrateCredential_forAccount_clientID___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [*(a1 + 32) keysForCredentialItems];
  v2 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v23;
    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v8 = [*(a1 + 48) accountType];
        v9 = [v8 identifier];
        v10 = [ACDKeychainManager keychainServiceNameForClientID:v7 accountTypeIdentifier:v9 additionalAccountTypeSegment:0 key:v6];

        if (![*(a1 + 48) credentialLocation])
        {
          v11 = [*(a1 + 48) identifier];
          v12 = [*(a1 + 56) _fetchOptionsForAccount:*(a1 + 48)];
          [ACDKeychainManager _removeItemForService:v10 username:v11 accessGroup:0 options:v12 error:0];
        }

        v13 = [*(a1 + 48) username];
        if (v13)
        {
          v14 = v13;
          v15 = [*(a1 + 48) username];
          v16 = [*(a1 + 48) qualifiedUsername];
          v17 = [v15 isEqualToString:v16];

          if ((v17 & 1) == 0)
          {
            v18 = [*(a1 + 48) username];
            v19 = [*(a1 + 56) _fetchOptionsForAccount:*(a1 + 48)];
            [ACDKeychainManager _removeItemForService:v10 username:v18 accessGroup:0 options:v19 error:0];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v3);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)_itemForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v15 = _ac_keychainLock;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke;
  v22[3] = &unk_27848BE38;
  v27 = &v35;
  v16 = v11;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  v18 = v13;
  v25 = v18;
  v19 = v14;
  v26 = v19;
  v28 = &v29;
  [v15 lockPerformForService:v16 username:v17 block:v22];
  if (a7)
  {
    *a7 = v30[5];
  }

  v20 = v36[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v20;
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke(uint64_t *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1 + 4;
  v2 = a1[4];
  v5 = a1 + 5;
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v28 = 0;
  v8 = [ACDKeychain passwordForServiceName:v2 username:v4 accessGroup:v6 options:v7 error:&v28];
  v9 = v28;
  v10 = *(a1[8] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (*(*(a1[8] + 8) + 40))
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v17 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_4(a1 + 4, (a1 + 5));
    }
  }

  else if (v9)
  {
    v13 = [v9 code];
    v14 = _ACDKeychainLogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v13 == -25308)
    {
      if (v15)
      {
        __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_1(a1 + 4, (a1 + 5));
      }

      v16 = 10;
    }

    else if (v13 == -25300)
    {
      if (v15)
      {
        __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_2(a1 + 4, (a1 + 5));
      }

      v16 = 11;
    }

    else
    {
      if (v15)
      {
        v25 = *v3;
        v26 = *v5;
        v27 = ACHashedString();
        *buf = 138412802;
        v32 = v9;
        v33 = 2112;
        v34 = v25;
        v35 = 2112;
        v36 = v27;
        _os_log_debug_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEBUG, "Keychain fetch failed with error: %@ for item: %@.%@", buf, 0x20u);
      }

      v16 = 12;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CB8DC0];
    v29[0] = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to fetch credential from keychain (%ld)", objc_msgSend(v9, "code")];
    v29[1] = *MEMORY[0x277CCA7E8];
    v30[0] = v17;
    v30[1] = v9;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v21 = [v18 errorWithDomain:v19 code:v16 userInfo:v20];
    v22 = *(a1[9] + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  else
  {
    v17 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_3(a1 + 4, (a1 + 5));
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_shouldSyncCredentialForAccount:(id)a3
{
  v24[25] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CB8D30];
  v24[0] = *MEMORY[0x277CB8C30];
  v24[1] = v4;
  v5 = *MEMORY[0x277CB8D20];
  v24[2] = *MEMORY[0x277CB8D50];
  v24[3] = v5;
  v6 = *MEMORY[0x277CB8D28];
  v24[4] = *MEMORY[0x277CB8C18];
  v24[5] = v6;
  v24[6] = *MEMORY[0x277CB8D00];
  v24[7] = @"com.apple.linkedin";
  v7 = *MEMORY[0x277CB8D10];
  v24[8] = *MEMORY[0x277CB8D18];
  v24[9] = v7;
  v8 = *MEMORY[0x277CB8BD8];
  v24[10] = *MEMORY[0x277CB8BC8];
  v24[11] = v8;
  v9 = *MEMORY[0x277CB8C60];
  v24[12] = *MEMORY[0x277CB8BC0];
  v24[13] = v9;
  v10 = *MEMORY[0x277CB8CF8];
  v24[14] = *MEMORY[0x277CB8CD8];
  v24[15] = v10;
  v11 = *MEMORY[0x277CB8D38];
  v24[16] = *MEMORY[0x277CB8C98];
  v24[17] = v11;
  v12 = *MEMORY[0x277CB8C68];
  v24[18] = *MEMORY[0x277CB8C70];
  v24[19] = v12;
  v13 = *MEMORY[0x277CB8B80];
  v24[20] = *MEMORY[0x277CB8B98];
  v24[21] = v13;
  v14 = *MEMORY[0x277CB8CE8];
  v24[22] = *MEMORY[0x277CB8B88];
  v24[23] = v14;
  v24[24] = *MEMORY[0x277CB8CC8];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:25];
  v16 = [v3 accountType];
  v17 = [v16 identifier];
  if ([v15 containsObject:v17])
  {
    v18 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8A90]];
    if (v18)
    {
      LOBYTE(v19) = 0;
    }

    else
    {
      v20 = [v3 accountPropertyForKey:@"mcPayloadUUID"];
      if (v20)
      {
        LOBYTE(v19) = 0;
      }

      else
      {
        v21 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8B68]];
        v19 = [v21 BOOLValue] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (void)_setItem:(id)a3 forServiceName:(id)a4 username:(id)a5 accessGroup:(id)a6 accessibility:(id)a7 syncable:(BOOL)a8 requiresTouchID:(BOOL)a9 options:(id)a10 error:(id *)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v22 = _ac_keychainLock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __120__ACDKeychainManager__setItem_forServiceName_username_accessGroup_accessibility_syncable_requiresTouchID_options_error___block_invoke;
  v30[3] = &unk_27848BE60;
  v23 = v17;
  v31 = v23;
  v24 = v16;
  v32 = v24;
  v25 = v18;
  v33 = v25;
  v26 = v19;
  v34 = v26;
  v27 = v21;
  v35 = v27;
  v37 = &v41;
  v38 = a1;
  v28 = v20;
  v36 = v28;
  v39 = a8;
  v40 = a9;
  [v22 lockPerformForService:v23 username:v25 block:v30];
  if (a11)
  {
    *a11 = v42[5];
  }

  _Block_object_dispose(&v41, 8);
}

void __120__ACDKeychainManager__setItem_forServiceName_username_accessGroup_accessibility_syncable_requiresTouchID_options_error___block_invoke(uint64_t a1)
{
  v37[2] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) length] && objc_msgSend(*(a1 + 40), "length") && objc_msgSend(*(a1 + 48), "length"))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v35 = 0;
    v6 = [ACDKeychain passwordForServiceName:v2 username:v3 accessGroup:v4 options:v5 error:&v35];
    v7 = v35;
    v8 = v7;
    if (v7 && [v7 code] != -25300)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
      v20 = [v18 stringWithFormat:@"Unable to fetch existing credential due to error %@", v19];

      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CB8DC0];
      v23 = *MEMORY[0x277CCA7E8];
      v36[0] = *MEMORY[0x277CCA450];
      v36[1] = v23;
      v37[0] = v20;
      v37[1] = v8;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
      v25 = [v21 errorWithDomain:v22 code:13 userInfo:v24];
      v26 = *(*(a1 + 80) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

    else
    {
      v9 = *(a1 + 88);
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 72);
      if (v6)
      {
        v15 = *(a1 + 64);
        v16 = *(*(a1 + 80) + 8);
        v34 = *(v16 + 40);
        [v9 _keychainLock_updateItem:v10 existingPassword:v6 forServiceName:v11 username:v12 accessGroup:v13 accessibility:v14 options:v15 error:&v34];
        v17 = v34;
      }

      else
      {
        v28 = *(a1 + 96);
        v29 = *(a1 + 97);
        v16 = *(*(a1 + 80) + 8);
        v33 = *(v16 + 40);
        LOBYTE(v32) = v29;
        [v9 _keychainLock_addItem:v10 forServiceName:v11 username:v12 accessGroup:v13 accessibility:v14 syncable:v28 requiresTouchID:v32 error:&v33];
        v17 = v33;
      }

      v30 = v17;
      v20 = *(v16 + 40);
      *(v16 + 40) = v30;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_updateItem:(id)a3 existingPassword:(id)a4 forServiceName:(id)a5 username:(id)a6 accessGroup:(id)a7 accessibility:(id)a8 options:(id)a9 error:(id *)a10
{
  v37[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (([a4 isEqualToString:v15] & 1) == 0)
  {
    v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v22 = [v15 dataUsingEncoding:4];
    [v21 setObject:v22 forKey:*MEMORY[0x277CDC5E8]];
    if (v19)
    {
      v23 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
      }

      [v21 setObject:v19 forKey:*MEMORY[0x277CDBED8]];
    }

    v35 = 0;
    [ACDKeychain updateItemForServiceName:v16 username:v17 accessGroup:v18 newValues:v21 options:v20 error:&v35];
    v24 = v35;
    v25 = _ACDKeychainLogSystem();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
      }

      if (!a10)
      {
        goto LABEL_16;
      }

      v27 = MEMORY[0x277CCACA8];
      v34 = v22;
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "code")}];
      v26 = [v27 stringWithFormat:@"Unable to store credential due to error %@", v28];

      v33 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CB8DC0];
      v29 = *MEMORY[0x277CCA7E8];
      v36[0] = *MEMORY[0x277CCA450];
      v36[1] = v29;
      v37[0] = v26;
      v37[1] = v24;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
      *a10 = [v33 errorWithDomain:v32 code:13 userInfo:v30];

      v22 = v34;
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
    }

LABEL_16:
    goto LABEL_17;
  }

  v21 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
  }

LABEL_17:

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_addItem:(id)a3 forServiceName:(id)a4 username:(id)a5 accessGroup:(id)a6 accessibility:(id)a7 syncable:(BOOL)a8 requiresTouchID:(BOOL)a9 error:(id *)a10
{
  v10 = a8;
  v49[1] = *MEMORY[0x277D85DE8];
  v43 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  if (v18 && !a9)
  {
    v20 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
    }

    [v19 setObject:v18 forKey:*MEMORY[0x277CDBED8]];
  }

  v21 = MEMORY[0x277CBED10];
  if (v10)
  {
    v21 = MEMORY[0x277CBED28];
  }

  [v19 setObject:*v21 forKey:*MEMORY[0x277CDC140]];
  if (!a9)
  {
LABEL_20:
    v27 = [v43 dataUsingEncoding:4];
    v44 = 0;
    [ACDKeychain addItemWithServiceName:v15 username:v16 accessGroup:v17 passwordData:v27 options:v19 error:&v44];
    v29 = v44;
    v30 = _ACDKeychainLogSystem();
    v31 = v30;
    if (v29)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        +[ACDKeychainManager _keychainLock_addItem:forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:];
      }

      if (!a10)
      {
        goto LABEL_28;
      }

      v42 = v15;
      v32 = MEMORY[0x277CCACA8];
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v29, "code")}];
      v31 = [v32 stringWithFormat:@"Unable to store credential due to error %@", v33];

      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CB8DC0];
      v36 = *MEMORY[0x277CCA7E8];
      v46[0] = *MEMORY[0x277CCA450];
      v46[1] = v36;
      v47[0] = v31;
      v47[1] = v29;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
      v37 = v17;
      v39 = v38 = v16;
      v40 = v34;
      v15 = v42;
      *a10 = [v40 errorWithDomain:v35 code:13 userInfo:v39];

      v16 = v38;
      v17 = v37;
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager _keychainLock_addItem:forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:];
    }

LABEL_28:
    goto LABEL_29;
  }

  error = 0;
  v22 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBF10], 1uLL, &error);
  if (v22)
  {
    v23 = error == 0;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v28 = v22;
    [v19 setObject:v22 forKeyedSubscript:*MEMORY[0x277CDBEC0]];

    goto LABEL_20;
  }

  v24 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [ACDKeychainManager _keychainLock_addItem:? forServiceName:? username:? accessGroup:? accessibility:? syncable:? requiresTouchID:? error:?];
  }

  if (error)
  {
    CFRelease(error);
  }

  if (a10)
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CB8DC0];
    v48 = *MEMORY[0x277CCA450];
    v49[0] = @"Unable to store credential due to error with SecAccessControlRef";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    *a10 = [v25 errorWithDomain:v26 code:13 userInfo:v27];
LABEL_29:
  }

  v41 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_removeItemForService:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v16 = _ac_keychainLock;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__ACDKeychainManager__removeItemForService_username_accessGroup_options_error___block_invoke;
  v24[3] = &unk_27848BE88;
  v29 = &v38;
  v31 = a1;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v14;
  v27 = v19;
  v20 = v15;
  v28 = v20;
  v30 = &v32;
  [v16 lockPerformForService:v17 username:v18 block:v24];
  v21 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychainManager _removeItemForService:v21 username:? accessGroup:? options:? error:?];
  }

  if (a7)
  {
    *a7 = v33[5];
  }

  v22 = *(v39 + 24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v22;
}

void __79__ACDKeychainManager__removeItemForService_username_accessGroup_options_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [v6 _keychainLock_removeItemForService:v2 username:v3 accessGroup:v4 options:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[8] + 8) + 24) = v8;
}

+ (BOOL)_keychainLock_removeItemForService:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 length] && objc_msgSend(v12, "length"))
  {
    if (a7)
    {
      *a7 = 0;
    }

    v28 = 0;
    [ACDKeychain removeItemForServiceName:v11 username:v12 accessGroup:v13 options:v14 error:&v28];
    v15 = v28;
    v16 = v15 == 0;
    v17 = _ACDKeychainLogSystem();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (v18)
      {
        +[ACDKeychainManager _keychainLock_removeItemForService:username:accessGroup:options:error:];
      }

      if (!a7)
      {
        goto LABEL_14;
      }

      v19 = MEMORY[0x277CCACA8];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}];
      v17 = [v19 stringWithFormat:@"Unable to remove credential due to error %@", v20];

      v27 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CB8DC0];
      v22 = *MEMORY[0x277CCA7E8];
      v29[0] = *MEMORY[0x277CCA450];
      v29[1] = v22;
      v30[0] = v17;
      v30[1] = v15;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      *a7 = [v27 errorWithDomain:v21 code:14 userInfo:v23];
    }

    else if (v18)
    {
      v26 = ACHashedString();
      *buf = 138412802;
      v32 = v11;
      v33 = 2112;
      v34 = v26;
      v35 = 2112;
      v36 = v13;
      _os_log_debug_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEBUG, "Keychain item removal succeeded for item service:%@ username:%@ group:%@", buf, 0x20u);
    }

LABEL_14:
    goto LABEL_15;
  }

  v16 = 0;
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (void)_createNoSyncOAuthTokens:(id)a3 account:(id)a4 clientID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 credentialType];
  if ([v11 isEqualToString:*MEMORY[0x277CB8D98]])
  {
    v12 = [v8 oauthToken];

    if (v12)
    {
      v13 = [v8 oauthToken];
      [v8 setOauthTokenNoSync:v13];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v13 = [v8 credentialType];
  if ([v13 isEqualToString:*MEMORY[0x277CB8D90]])
  {
    v14 = [v8 oauthToken];
    if (v14)
    {
      v15 = v14;
      v16 = [v8 oauthTokenSecret];

      if (!v16)
      {
        goto LABEL_10;
      }

      v17 = MEMORY[0x277CCACA8];
      v13 = [v8 oauthToken];
      v18 = *MEMORY[0x277CB8E28];
      v19 = [v8 oauthTokenSecret];
      v20 = [v17 stringWithFormat:@"%@%@%@", v13, v18, v19];
      [v8 setOauthTokenNoSync:v20];
    }
  }

LABEL_9:

LABEL_10:
  v21 = [v8 oauthTokenNoSync];

  if (v21)
  {
    v22 = 0;
    [a1 _saveCredential:v8 forAccount:v9 clientID:v10 error:&v22];
  }
}

+ (void)_fallbackToUnsyncedOAuthTokens:(id)a3
{
  v14 = a3;
  v5 = [v14 oauthTokenNoSync];
  if (v5)
  {
    v6 = [v14 credentialType];
    if ([v6 isEqualToString:*MEMORY[0x277CB8D98]])
    {
      v7 = [v14 oauthToken];

      if (!v7)
      {
        [v14 setOauthToken:v5];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v8 = [v14 credentialType];
    if ([v8 isEqualToString:*MEMORY[0x277CB8D90]])
    {
      v9 = [v14 oauthToken];
      if (v9)
      {
        v10 = v9;
        v11 = [v14 oauthTokenSecret];

        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v8 = [v5 componentsSeparatedByString:*MEMORY[0x277CB8E28]];
      if ([v8 count] != 2)
      {
        [(ACDKeychainManager *)a2 _fallbackToUnsyncedOAuthTokens:a1];
      }

      v12 = [v8 objectAtIndexedSubscript:0];
      [v14 setOauthToken:v12];

      v13 = [v8 objectAtIndexedSubscript:1];
      [v14 setOauthTokenSecret:v13];
    }
  }

LABEL_15:
}

+ (void)notifiyCredentialChangedForAccount:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() server];
  [v4 credentialsDidChangeForAccount:v3];
}

+ (void)credentialForAccount:clientID:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)credentialForAccount:(uint64_t *)a1 clientID:error:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(&dword_221D2F000, v3, OS_LOG_TYPE_ERROR, "credentialForAccount encountered an error: %@", v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)credentialForAccount:(uint64_t *)a1 clientID:error:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v3, v4, "credentialForAccount is returning %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v3, v4, "Credential fetch failed with primary id. Will try again with secondary id. Error: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v3, v4, "Credential fetch failed for UUID. Will try again with username instead of qualifiedUserName or UUID. Error: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_credentialForAccountWithID:accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = ACHashedString();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v1, v2, "ACDKeychainManager is fetching credential for account %@ and client ID %@.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_credentialForAccountWithID:accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0(&dword_221D2F000, v0, v1, "No supported credential item keys for accountType: %@ credentialType: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_credentialForAccountWithID:accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDKeychainManager credentialForAccountWithID is returning %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_saveCredential:(uint64_t)a1 forAccount:(NSObject *)a2 clientID:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446467;
  v4 = "+[ACDKeychainManager _saveCredential:forAccount:clientID:error:]";
  v5 = 2113;
  v6 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "%{public}s error, account %{private}@ lacks an account type identifier", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_setNonPersistentCredentialTimerForAccount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Queuing non-persistent credential removal, account: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)removeCredentialForAccount:clientID:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)removeCredentialForAccount:clientID:error:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  v3 = 1026;
  v4 = 461;
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d is returning", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_removeCredentialsForAccount:clientID:options:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Removing account credential for client: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(a1, a2);
  v3 = ACHashedString();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v4, v5, "Keychain fetch denied for item: %@.%@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_2(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(a1, a2);
  v3 = ACHashedString();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v4, v5, "Keychain fetch found no match for item: %@.%@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_3(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(a1, a2);
  v3 = ACHashedString();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v4, v5, "Keychain fetch succeeded with empty results for item: %@.%@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_4(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(a1, a2);
  v3 = ACHashedString();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v4, v5, "Keychain fetch succeeded for item: %@.%@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0(&dword_221D2F000, v0, v1, "Keychain update failed with error: %@ for item: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Keychain update succeeded for item %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Password/Token hasn't changed. Not updating keychain for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_addItem:forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0(&dword_221D2F000, v0, v1, "Keychain add failed with error: %@ for item: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_addItem:forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Keychain add succeeded for item %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_addItem:(uint64_t *)a1 forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:.cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(&dword_221D2F000, v1, OS_LOG_TYPE_ERROR, "Unable to create SecAccessControlRef on item that requires Touch ID. Error: %@", v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_keychainLock_removeItemForService:username:accessGroup:options:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_fallbackToUnsyncedOAuthTokens:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACDKeychainManager.m" lineNumber:947 description:@"*** _fallbackToUnsyncedOAuthTokens: bad format"];
}

@end