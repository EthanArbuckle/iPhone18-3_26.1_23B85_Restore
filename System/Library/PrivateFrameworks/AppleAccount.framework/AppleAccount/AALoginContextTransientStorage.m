@interface AALoginContextTransientStorage
+ (id)sharedStorage;
- (AALoginContextTransientStorage)init;
- (id)_keychainItemForUsername:(id)a3 service:(id)a4;
- (id)_readNonsensitiveParameters;
- (id)storedContext;
- (void)_deleteKeychainItemForUsername:(id)a3 service:(id)a4;
- (void)_saveKeychainItem:(id)a3 forUsername:(id)a4 service:(id)a5;
- (void)_saveNonsensitiveParameters:(id)a3;
- (void)clear;
- (void)save:(id)a3;
@end

@implementation AALoginContextTransientStorage

+ (id)sharedStorage
{
  if (sharedStorage_onceToken != -1)
  {
    +[AALoginContextTransientStorage sharedStorage];
  }

  v3 = sharedStorage_storage;

  return v3;
}

uint64_t __47__AALoginContextTransientStorage_sharedStorage__block_invoke()
{
  sharedStorage_storage = objc_alloc_init(AALoginContextTransientStorage);

  return MEMORY[0x1EEE66BB8]();
}

- (AALoginContextTransientStorage)init
{
  v6.receiver = self;
  v6.super_class = AALoginContextTransientStorage;
  v2 = [(AALoginContextTransientStorage *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    clearLock = v2->_clearLock;
    v2->_clearLock = v3;
  }

  return v2;
}

- (void)save:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSLock *)self->_clearLock lock];
  self->_hasBeenCleared = 0;
  [(NSLock *)self->_clearLock unlock];
  v5 = [v4 appleID];
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: saving tokens for Apple ID %@...", buf, 0xCu);
    }

    v26 = @"AKTransientAppleID";
    v27 = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v6 = [v8 mutableCopy];

    v9 = [v4 altDSID];
    if (v9)
    {
      [v6 setObject:v9 forKeyedSubscript:@"AKTransientAltDSID"];
    }

    else
    {
      v10 = _AALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: no altDSID in login context!", buf, 2u);
      }
    }

    v11 = [v4 DSID];

    if (v11)
    {
      v12 = [v4 DSID];
      [v6 setObject:v12 forKeyedSubscript:@"AKTransientDSID"];
    }

    if ([v4 isBeneficiaryLogin])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isBeneficiaryLogin")}];
      [v6 setObject:v13 forKeyedSubscript:@"AKTransientIsBeneficiaryLogin"];
    }

    v14 = [v4 firstName];

    if (v14)
    {
      v15 = [v4 firstName];
      [v6 setObject:v15 forKeyedSubscript:@"AKTransientFirstName"];
    }

    v16 = [v4 middleName];

    if (v16)
    {
      v17 = [v4 middleName];
      [v6 setObject:v17 forKeyedSubscript:@"AKTransientMiddleName"];
    }

    v18 = [v4 lastName];

    if (v18)
    {
      v19 = [v4 lastName];
      [v6 setObject:v19 forKeyedSubscript:@"AKTransientLastName"];
    }

    [(AALoginContextTransientStorage *)self _saveNonsensitiveParameters:v6];
    v20 = _AALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: saving tokens for Apple ID %@...", buf, 0xCu);
    }

    v21 = [v4 rawPassword];
    [(AALoginContextTransientStorage *)self _saveKeychainItem:v21 forUsername:v5 service:@"com.apple.transient.rp"];

    v22 = [v4 continuationKey];
    [(AALoginContextTransientStorage *)self _saveKeychainItem:v22 forUsername:v5 service:@"com.apple.transient.ck"];

    v23 = [v4 passwordResetKey];
    [(AALoginContextTransientStorage *)self _saveKeychainItem:v23 forUsername:v5 service:@"com.apple.transient.prk"];

    v24 = [v4 cloudKitToken];
    [(AALoginContextTransientStorage *)self _saveKeychainItem:v24 forUsername:v5 service:@"com.apple.transient.ckt"];
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: fatal error! No Apple ID in login context!", buf, 2u);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)storedContext
{
  v25 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_clearLock lock];
  hasBeenCleared = self->_hasBeenCleared;
  [(NSLock *)self->_clearLock unlock];
  if (hasBeenCleared)
  {
    v4 = 0;
  }

  else
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: retrieving stored login response parameters...", &v23, 2u);
    }

    v6 = [(AALoginContextTransientStorage *)self _readNonsensitiveParameters];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"AKTransientAppleID"];
      v9 = [v7 objectForKeyedSubscript:@"AKTransientAltDSID"];
      v10 = _AALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v8;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: found stored login response parameters for %@!", &v23, 0xCu);
      }

      v4 = [[AAStorableLoginContext alloc] initWithAppleID:v8 altDSID:v9];
      v11 = [v7 objectForKeyedSubscript:@"AKTransientDSID"];
      [(AAStorableLoginContext *)v4 setDSID:v11];

      v12 = [v7 objectForKeyedSubscript:@"AKTransientIsBeneficiaryLogin"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[AAStorableLoginContext setBeneficiaryLogin:](v4, "setBeneficiaryLogin:", [v12 BOOLValue]);
      }

      v13 = [v7 objectForKeyedSubscript:@"AKTransientFirstName"];
      [(AAStorableLoginContext *)v4 setFirstName:v13];

      v14 = [v7 objectForKeyedSubscript:@"AKTransientMiddleName"];
      [(AAStorableLoginContext *)v4 setMiddleName:v14];

      v15 = [v7 objectForKeyedSubscript:@"AKTransientLastName"];
      [(AAStorableLoginContext *)v4 setLastName:v15];

      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v8;
        _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: retrieving temporary keychain items Apple ID %@!", &v23, 0xCu);
      }

      v17 = [(AALoginContextTransientStorage *)self _keychainItemForUsername:v8 service:@"com.apple.transient.rp"];
      [(AAStorableLoginContext *)v4 setRawPassword:v17];

      v18 = [(AALoginContextTransientStorage *)self _keychainItemForUsername:v8 service:@"com.apple.transient.ck"];
      [(AAStorableLoginContext *)v4 setContinuationKey:v18];

      v19 = [(AALoginContextTransientStorage *)self _keychainItemForUsername:v8 service:@"com.apple.transient.prk"];
      [(AAStorableLoginContext *)v4 setPasswordResetKey:v19];

      v20 = [(AALoginContextTransientStorage *)self _keychainItemForUsername:v8 service:@"com.apple.transient.ckt"];
      [(AAStorableLoginContext *)v4 setCloudKitToken:v20];
    }

    else
    {
      v8 = _AALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: no known stored Apple ID.", &v23, 2u);
      }

      v4 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)clear
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_clearLock lock];
  self->_hasBeenCleared = 1;
  [(NSLock *)self->_clearLock unlock];
  v3 = [(AALoginContextTransientStorage *)self _readNonsensitiveParameters];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"AKTransientAppleID"];
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: removing stored login response parameters for Apple ID %@...", &v9, 0xCu);
    }

    [(AALoginContextTransientStorage *)self _saveNonsensitiveParameters:0];
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: removing temporary keychain items...", &v9, 2u);
    }

    [(AALoginContextTransientStorage *)self _deleteKeychainItemForUsername:v5 service:@"com.apple.transient.rp"];
    [(AALoginContextTransientStorage *)self _deleteKeychainItemForUsername:v5 service:@"com.apple.transient.ck"];
    [(AALoginContextTransientStorage *)self _deleteKeychainItemForUsername:v5 service:@"com.apple.transient.prk"];
    [(AALoginContextTransientStorage *)self _deleteKeychainItemForUsername:v5 service:@"com.apple.transient.ckt"];
  }

  else
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: nothing to clear.", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_saveNonsensitiveParameters:(id)a3
{
  CFPreferencesSetAppValue(@"AAStoredLoginContext", a3, @"com.apple.appleaccount.notbackedup");
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.appleaccount.notbackedup", v3, v4);
}

- (id)_readNonsensitiveParameters
{
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.appleaccount.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesCopyValue(@"AAStoredLoginContext", @"com.apple.appleaccount.notbackedup", v2, v3);

  return v4;
}

- (void)_saveKeychainItem:(id)a3 forUsername:(id)a4 service:(id)a5
{
  v38[7] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      v11 = [v7 dataUsingEncoding:4];
      v12 = v11;
      if (v11)
      {
        v13 = *MEMORY[0x1E697ABE8];
        v14 = *MEMORY[0x1E697AC30];
        v37[0] = *MEMORY[0x1E697ABD8];
        v37[1] = v14;
        v38[0] = v13;
        v38[1] = v8;
        v15 = *MEMORY[0x1E697AFF8];
        v37[2] = *MEMORY[0x1E697AE88];
        v37[3] = v15;
        v16 = *MEMORY[0x1E697B008];
        v38[2] = v10;
        v38[3] = v16;
        v17 = *MEMORY[0x1E697AEB0];
        v37[4] = *MEMORY[0x1E697AEC0];
        v37[5] = v17;
        v38[4] = &unk_1F2F24B98;
        v38[5] = MEMORY[0x1E695E110];
        v18 = *MEMORY[0x1E697B3C0];
        v37[6] = *MEMORY[0x1E697B3C0];
        v38[6] = v11;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:7];
        v20 = SecItemAdd(v19, 0);
        v21 = _AALogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [MEMORY[0x1E696AD98] numberWithInt:v20];
          *buf = 138412802;
          v32 = v8;
          v33 = 2112;
          v34 = v10;
          v35 = 2112;
          v36 = v22;
          _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemAdd (u: %@, s: %@) result: %@", buf, 0x20u);
        }

        if (v20 == -25299)
        {
          v30 = v18;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
          v24 = [(__CFDictionary *)v19 dictionaryWithValuesForKeys:v23];

          v25 = [(__CFDictionary *)v19 mutableCopy];
          [v25 removeObjectForKey:v18];
          v26 = SecItemUpdate(v25, v24);
          v27 = _AALogSystem();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [MEMORY[0x1E696AD98] numberWithInt:v26];
            *buf = 138412802;
            v32 = v8;
            v33 = 2112;
            v34 = v10;
            v35 = 2112;
            v36 = v28;
            _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemUpdate (u: %@, s: %@) result: %@", buf, 0x20u);
          }
        }
      }

      else
      {
        v19 = _AALogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: save error - could not encode item data", buf, 2u);
        }
      }
    }

    else
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: save error - given nil service!", buf, 2u);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)_keychainItemForUsername:(id)a3 service:(id)a4
{
  v30[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "AALoginContextTransientStorage: fetch error - given nil service!";
LABEL_12:
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  if (!v5)
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "AALoginContextTransientStorage: fetch error - given nil username!";
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v8 = *MEMORY[0x1E697AE88];
  v29[0] = *MEMORY[0x1E697AC30];
  v29[1] = v8;
  v30[0] = v5;
  v30[1] = v6;
  v9 = *MEMORY[0x1E697B008];
  v10 = *MEMORY[0x1E697B318];
  v29[2] = *MEMORY[0x1E697AFF8];
  v29[3] = v10;
  v30[2] = v9;
  v30[3] = MEMORY[0x1E695E118];
  v29[4] = *MEMORY[0x1E697B380];
  v30[4] = *MEMORY[0x1E697B388];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];
  result = 0;
  v12 = SecItemCopyMatching(v11, &result);
  v13 = result;
  v14 = _AALogSystem();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v12 || !v13)
  {
    if (v12)
    {
      if (v15)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithInt:v12];
        *buf = 138412802;
        v24 = v5;
        v25 = 2112;
        v26 = v7;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemCopyMatching (u: %@, s: %@) failed: %@", buf, 0x20u);
      }
    }

    else if (v15)
    {
      *buf = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemCopyMatching (u: %@, s: %@) returned noErr and nil data!", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (v15)
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: successfully read keychain item %@", buf, 0xCu);
  }

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [v16 initWithData:result encoding:4];
  CFRelease(result);
LABEL_20:

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)_deleteKeychainItemForUsername:(id)a3 service:(id)a4
{
  v23[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    v10 = _AALogSystem();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v16) = 0;
    v14 = "AALoginContextTransientStorage: delete error - given nil service!";
LABEL_10:
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, v14, &v16, 2u);
    goto LABEL_11;
  }

  if (!v5)
  {
    v10 = _AALogSystem();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v16) = 0;
    v14 = "AALoginContextTransientStorage: delete error - given nil username!";
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E697B008];
  v9 = *MEMORY[0x1E697AC30];
  v22[0] = *MEMORY[0x1E697AFF8];
  v22[1] = v9;
  v23[0] = v8;
  v23[1] = v5;
  v22[2] = *MEMORY[0x1E697AE88];
  v23[2] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v11 = SecItemDelete(v10);
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v16 = 138412802;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AALoginContextTransientStorage: SecItemDelete (u: %@, s: %@) result: %@", &v16, 0x20u);
  }

LABEL_11:
  v15 = *MEMORY[0x1E69E9840];
}

@end