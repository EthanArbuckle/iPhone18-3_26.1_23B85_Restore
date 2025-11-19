@interface AAUICDPRecoveryKeyHook
+ (id)helperWithPresenter:(id)a3 forceInline:(BOOL)a4;
- (BOOL)_shouldMatchAction:(id)a3;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_deleteRecoveryKey:(id)a3;
- (void)_generateRecoveryKeyWithType:(int64_t)a3 attributes:(id)a4 completion:(id)a5;
- (void)_verifyRecoveryKeyWithType:(int64_t)a3 attributes:(id)a4 completion:(id)a5;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUICDPRecoveryKeyHook

- (BOOL)shouldMatchElement:(id)a3
{
  v4 = [a3 name];
  LOBYTE(self) = [(AAUICDPRecoveryKeyHook *)self _shouldMatchAction:v4];

  return self;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 clientInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(AAUICDPRecoveryKeyHook *)self _shouldMatchAction:v7];
  return v8;
}

- (BOOL)_shouldMatchAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"rk:regenerate"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"rk:enable") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"rk:disable"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"rk:verify"];
  }

  return v4;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v19 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [v19 name];
  v12 = [v11 isEqualToString:@"rk:regenerate"];

  if (v12)
  {
    v13 = self;
    v14 = 4;
LABEL_5:
    [(AAUICDPRecoveryKeyHook *)v13 _generateRecoveryKeyWithType:v14 attributes:v9 completion:v10];
    goto LABEL_6;
  }

  v15 = [v19 name];
  v16 = [v15 isEqualToString:@"rk:enable"];

  if (v16)
  {
    v13 = self;
    v14 = 5;
    goto LABEL_5;
  }

  v17 = [v19 name];
  v18 = [v17 isEqualToString:@"rk:disable"];

  if (v18)
  {
    [(AAUICDPRecoveryKeyHook *)self _deleteRecoveryKey:v10];
  }

LABEL_6:
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [v13 clientInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v9 isEqualToString:@"rk:regenerate"])
  {
    v10 = [v13 clientInfo];
    v11 = self;
    v12 = 4;
LABEL_8:
    [(AAUICDPRecoveryKeyHook *)v11 _generateRecoveryKeyWithType:v12 attributes:v10 completion:v6];
LABEL_9:

    goto LABEL_10;
  }

  if ([v9 isEqualToString:@"rk:enable"])
  {
    v10 = [v13 clientInfo];
    v11 = self;
    v12 = 5;
    goto LABEL_8;
  }

  if ([v9 isEqualToString:@"rk:verify"])
  {
    v10 = [v13 clientInfo];
    [(AAUICDPRecoveryKeyHook *)self _verifyRecoveryKeyWithType:8 attributes:v10 completion:v6];
    goto LABEL_9;
  }

  if ([v9 isEqualToString:@"rk:disable"])
  {
    [(AAUICDPRecoveryKeyHook *)self _deleteRecoveryKey:v6];
  }

LABEL_10:
}

- (void)_deleteRecoveryKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E6997800]);
  v5 = +[AAUICDPHelper cdpContextForPrimaryAccount];
  v6 = [v4 initWithContext:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke;
  v8[3] = &unk_1E820C308;
  v9 = v3;
  v7 = v3;
  [v6 deleteRecoveryKey:v8];
}

void __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_cold_1();
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    v6 = objc_alloc_init(MEMORY[0x1E698B850]);
    [v6 startHealthCheckWithCompletion:&__block_literal_global_6];
  }

LABEL_7:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

void __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_49_cold_1();
    }
  }
}

- (void)_generateRecoveryKeyWithType:(int64_t)a3 attributes:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to generate recovery key", buf, 2u);
  }

  objc_opt_class();
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C7068]];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v13 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained presentationContextForHook:self];
  v27 = [v13 helperWithPresenter:v15 forceInline:{objc_msgSend(v12, "BOOLValue")}];

  v16 = [*(v23 + 5) cdpStateControllerForPrimaryAccount];
  v17 = [v16 context];
  [v17 setType:a3];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__AAUICDPRecoveryKeyHook__generateRecoveryKeyWithType_attributes_completion___block_invoke;
  v19[3] = &unk_1E820C408;
  v18 = v9;
  v20 = v18;
  v21 = buf;
  [v16 generateNewRecoveryKey:v19];

  _Block_object_dispose(buf, 8);
}

void __77__AAUICDPRecoveryKeyHook__generateRecoveryKeyWithType_attributes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __77__AAUICDPRecoveryKeyHook__generateRecoveryKeyWithType_attributes_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    v6 = objc_alloc_init(MEMORY[0x1E698B850]);
    [v6 startHealthCheckWithCompletion:&__block_literal_global_54];
  }

LABEL_7:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void __77__AAUICDPRecoveryKeyHook__generateRecoveryKeyWithType_attributes_completion___block_invoke_52(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_49_cold_1();
    }
  }
}

- (void)_verifyRecoveryKeyWithType:(int64_t)a3 attributes:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to verify recovery key", buf, 2u);
  }

  objc_opt_class();
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C7068]];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *buf = 0;
  v27 = buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v13 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained presentationContextForHook:self];
  v31 = [v13 helperWithPresenter:v15 forceInline:{objc_msgSend(v12, "BOOLValue")}];

  v16 = [*(v27 + 5) cdpStateControllerForPrimaryAccount];
  v25 = 0;
  LOBYTE(v15) = [v16 isRecoveryKeyAvailableWithError:&v25];
  v17 = v25;
  if (v15)
  {
    v18 = [v16 context];
    [v18 setType:a3];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__AAUICDPRecoveryKeyHook__verifyRecoveryKeyWithType_attributes_completion___block_invoke;
    v20[3] = &unk_1E820C430;
    v20[4] = self;
    v21 = v8;
    v22 = v9;
    v23 = buf;
    [v16 verifyRecoveryKey:v20];
  }

  else
  {
    v19 = _AAUILogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "Recovery key missing - returning early, nothing to verify", v24, 2u);
    }

    if (!v17)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69977D8] code:-5211 userInfo:0];
    }

    (*(v9 + 2))(v9, 0, v17);
  }

  _Block_object_dispose(buf, 8);
}

void __75__AAUICDPRecoveryKeyHook__verifyRecoveryKeyWithType_attributes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "_verifyRecoveryKeyWithType completed with: %d, %@", v11, 0x12u);
  }

  if ([v5 cdp_isCDPErrorWithCode:-5308])
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "User reported forgot recovery key in verify recovery flow - will attempt to generate a recovery key", v11, 2u);
    }

    [*(a1 + 32) _generateRecoveryKeyWithType:4 attributes:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, a2, v5);
    }

    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

+ (id)helperWithPresenter:(id)a3 forceInline:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "creating controller with inline forced: %@", &v11, 0xCu);
  }

  v8 = [AAUICDPHelper helperWithPresenter:v5];
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  [v8 setForceInline:isKindOfClass & 1];

  return v8;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end