@interface AALoginContextManager
+ (AALoginContextManager)sharedManager;
+ (void)stashLoginResponseWithAuthenticationResults:(id)a3 cloudKitToken:(id)a4;
- (AALoginContextManager)init;
- (AAStorableLoginContext)stashedContext;
- (void)persistStashedContext;
- (void)setStashedContext:(id)a3;
@end

@implementation AALoginContextManager

+ (AALoginContextManager)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[AALoginContextManager sharedManager];
  }

  v3 = sharedManager_sharedManager_1;

  return v3;
}

uint64_t __38__AALoginContextManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager_1 = objc_alloc_init(AALoginContextManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AALoginContextManager)init
{
  v6.receiver = self;
  v6.super_class = AALoginContextManager;
  v2 = [(AALoginContextManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    stashedContext = v2->_stashedContext;
    v2->_stashedContext = 0;

    v3->_stashedContextLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (AAStorableLoginContext)stashedContext
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __39__AALoginContextManager_stashedContext__block_invoke;
  v8 = &unk_1E7C9CD58;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_stashedContextLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_stashedContextLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setStashedContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AALoginContextManager_setStashedContext___block_invoke;
  v6[3] = &unk_1E7C9ADE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_lock(&self->_stashedContextLock);
  __43__AALoginContextManager_setStashedContext___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stashedContextLock);
}

- (void)persistStashedContext
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__AALoginContextManager_persistStashedContext__block_invoke;
  v3[3] = &unk_1E7C9A868;
  v3[4] = self;
  os_unfair_lock_lock(&self->_stashedContextLock);
  __46__AALoginContextManager_persistStashedContext__block_invoke(v3);
  os_unfair_lock_unlock(&self->_stashedContextLock);
}

void __46__AALoginContextManager_persistStashedContext__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = +[AALoginContextTransientStorage sharedStorage];
    [v2 save:*(*(a1 + 32) + 8)];

    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }

  else
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__AALoginContextManager_persistStashedContext__block_invoke_cold_1();
    }
  }
}

+ (void)stashLoginResponseWithAuthenticationResults:(id)a3 cloudKitToken:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[AALoginContextManager stashLoginResponseWithAuthenticationResults:cloudKitToken:];
  }

  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  if (!v8)
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[AALoginContextManager stashLoginResponseWithAuthenticationResults:cloudKitToken:];
    }
  }

  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  if (!v10)
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[AALoginContextManager stashLoginResponseWithAuthenticationResults:cloudKitToken:];
    }
  }

  v33 = v8;
  v12 = [[AAStorableLoginContext alloc] initWithAppleID:v8 altDSID:v10];
  v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  v32 = v13;
  if (v13)
  {
    [(AAStorableLoginContext *)v12 setDSID:v13];
  }

  else
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[AALoginContextManager stashLoginResponseWithAuthenticationResults:cloudKitToken:];
    }
  }

  v15 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  if (v15)
  {
    [(AAStorableLoginContext *)v12 setRawPassword:v15];
  }

  else
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[AALoginContextManager stashLoginResponseWithAuthenticationResults:cloudKitToken:];
    }
  }

  v17 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBA0]];

  if (v17)
  {
    v18 = _AALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "AuthResult is indicating that we're dealing with a beneficiary account.", buf, 2u);
    }

    [(AAStorableLoginContext *)v12 setBeneficiaryLogin:1];
  }

  v19 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB90]];
  if (v19)
  {
    [(AAStorableLoginContext *)v12 setFirstName:v19];
  }

  v20 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBB8]];
  if (v20)
  {
    [(AAStorableLoginContext *)v12 setLastName:v20];
  }

  if (v6)
  {
    [(AAStorableLoginContext *)v12 setCloudKitToken:v6];
  }

  else
  {
    v21 = _AALogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[AALoginContextManager stashLoginResponseWithAuthenticationResults:cloudKitToken:];
    }
  }

  v34 = v6;
  v22 = [MEMORY[0x1E6959A48] defaultStore];
  v23 = [v22 aa_authKitAccountForAltDSID:v10];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 credential];
    v26 = _AALogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v24;
      _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "Trying to add CK and PRK for %@ to login context...", buf, 0xCu);
    }

    v27 = [v25 credentialItemForKey:*MEMORY[0x1E6959950]];
    [(AAStorableLoginContext *)v12 setContinuationKey:v27];

    v28 = [v25 credentialItemForKey:*MEMORY[0x1E69599E0]];
    [(AAStorableLoginContext *)v12 setPasswordResetKey:v28];
  }

  else
  {
    v25 = _AALogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v10;
      _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "No AuthKit account to grab CK and PRK from for altDSID: %{mask}@", buf, 0xCu);
    }
  }

  v29 = +[AALoginContextManager sharedManager];
  [v29 setStashedContext:v12];

  v30 = +[AALoginContextManager sharedManager];
  [v30 persistStashedContext];

  v31 = *MEMORY[0x1E69E9840];
}

@end