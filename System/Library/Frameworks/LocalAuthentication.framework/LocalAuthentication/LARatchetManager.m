@interface LARatchetManager
+ (id)optionsForRatchetArmOptions:(id)a3;
+ (id)ratchetErrorForError:(id)a3;
+ (id)ratchetResultForResult:(id)a3;
+ (id)sharedInstance;
+ (int64_t)_optionForRatchetOption:(int64_t)a3;
- (LARatchetManager)init;
- (LARatchetState)ratchetState;
- (id)createContext;
- (void)addObserver:(id)a3;
- (void)cancelArmRequestWithIdentifier:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)cancelCurrentRatchetWithReason:(id)a3 completion:(id)a4;
- (void)checkCanEnableFeatureWithCompletion:(id)a3;
- (void)currentRatchetWithCompletion:(id)a3;
- (void)disableFeatureStrictModeWithContext:(id)a3 completion:(id)a4;
- (void)disableFeatureWithContext:(id)a3 completion:(id)a4;
- (void)enableFeatureActivatingGracePeriodWithReply:(id)a3;
- (void)enableFeatureStrictModeWithCompletion:(id)a3;
- (void)enableFeatureWithCompletion:(id)a3;
- (void)enableFeatureWithReply:(id)a3;
- (void)performArmRequestWithIdentifier:(id)a3 context:(id)a4 options:(id)a5 completion:(id)a6;
- (void)removeObserver:(id)a3;
- (void)stateInContext:(id)a3 completion:(id)a4;
- (void)stateWithCompletion:(id)a3;
@end

@implementation LARatchetManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LARatchetManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __34__LARatchetManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(LARatchetManager);

  return MEMORY[0x1EEE66BB8]();
}

- (LARatchetManager)init
{
  v6.receiver = self;
  v6.super_class = LARatchetManager;
  v2 = [(LARatchetManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69AD250]) initWithContextProvider:v2];
    coreManager = v2->_coreManager;
    v2->_coreManager = v3;
  }

  return v2;
}

- (LARatchetState)ratchetState
{
  v2 = [(LACDTORatchetManager *)self->_coreManager ratchetState];
  v3 = [[LARatchetState alloc] initWithState:v2];

  return v3;
}

- (void)stateWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__LARatchetManager_stateWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB058;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [(LACDTORatchetManager *)coreManager stateWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__LARatchetManager_stateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 40);
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = [objc_opt_class() ratchetErrorForError:v5];
      (*(v7 + 16))(v7, 0, v9);
    }

    else
    {
      v9 = [[LARatchetState alloc] initWithState:v10];
      (*(v7 + 16))(v7, v9, 0);
    }
  }
}

- (void)checkCanEnableFeatureWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__LARatchetManager_checkCanEnableFeatureWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB080;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [(LACDTORatchetManager *)coreManager checkCanEnableFeatureWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__LARatchetManager_checkCanEnableFeatureWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 40);
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = [objc_opt_class() ratchetErrorForError:v5];
      (*(v7 + 16))(v7, v10, v9);
    }

    else
    {
      (*(v7 + 16))(*(a1 + 40), v10, 0);
    }
  }
}

- (void)enableFeatureWithReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__LARatchetManager_enableFeatureWithReply___block_invoke;
  v7[3] = &unk_1E77CB080;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [(LACDTORatchetManager *)coreManager enableFeatureWithReply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__LARatchetManager_enableFeatureWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 40);
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = [objc_opt_class() ratchetErrorForError:v5];
      (*(v7 + 16))(v7, v10, v9);
    }

    else
    {
      (*(v7 + 16))(*(a1 + 40), v10, 0);
    }
  }
}

- (void)enableFeatureActivatingGracePeriodWithReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__LARatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke;
  v7[3] = &unk_1E77CB080;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [(LACDTORatchetManager *)coreManager enableFeatureActivatingGracePeriodWithReply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__LARatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 40);
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = [objc_opt_class() ratchetErrorForError:v5];
      (*(v7 + 16))(v7, v10, v9);
    }

    else
    {
      (*(v7 + 16))(*(a1 + 40), v10, 0);
    }
  }
}

- (void)disableFeatureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__LARatchetManager_disableFeatureWithContext_completion___block_invoke;
  v10[3] = &unk_1E77CB0A8;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [(LACDTORatchetManager *)coreManager disableFeatureWithContext:v6 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __57__LARatchetManager_disableFeatureWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enableFeatureStrictModeWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__LARatchetManager_enableFeatureStrictModeWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB0D0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [(LACDTORatchetManager *)coreManager enableFeatureStrictModeWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__LARatchetManager_enableFeatureStrictModeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [objc_opt_class() ratchetErrorForError:v7];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)disableFeatureStrictModeWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__LARatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke;
  v10[3] = &unk_1E77CB0D0;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v10[4] = self;
  v11 = v9;
  [(LACDTORatchetManager *)coreManager disableFeatureStrictModeWithContext:v6 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __67__LARatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [objc_opt_class() ratchetErrorForError:v7];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [[LARatchetObserverWrapper alloc] initWithObserver:v4];
  objc_setAssociatedObject(v4, &LARatchetManagerObserverAssociatedObjectKey, v5, 1);

  [(LACDTORatchetManager *)self->_coreManager addObserver:v5];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [[LARatchetObserverWrapper alloc] initWithObserver:v4];
  [(LACDTORatchetManager *)self->_coreManager removeObserver:v5];
  objc_setAssociatedObject(v4, &LARatchetManagerObserverAssociatedObjectKey, 0, 1);
}

- (void)performArmRequestWithIdentifier:(id)a3 context:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v15 = [objc_opt_class() optionsForRatchetArmOptions:v12];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__LARatchetManager_performArmRequestWithIdentifier_context_options_completion___block_invoke;
  v17[3] = &unk_1E77CB080;
  objc_copyWeak(&v19, &location);
  v16 = v13;
  v17[4] = self;
  v18 = v16;
  [(LACDTORatchetManager *)coreManager performArmRequestWithIdentifier:v10 context:v11 options:v15 completion:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __79__LARatchetManager_performArmRequestWithIdentifier_context_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = objc_opt_class();
    if (v5)
    {
      v10 = [v9 ratchetErrorForError:v5];
      (*(v8 + 16))(v8, 0, v10);
    }

    else
    {
      v10 = [v9 ratchetResultForResult:v11];
      (*(v8 + 16))(v8, v10, 0);
    }
  }
}

- (void)stateInContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__LARatchetManager_stateInContext_completion___block_invoke;
  v10[3] = &unk_1E77CB058;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v10[4] = self;
  v11 = v9;
  [(LACDTORatchetManager *)coreManager stateInContext:v6 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __46__LARatchetManager_stateInContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 40);
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = [objc_opt_class() ratchetErrorForError:v5];
      (*(v7 + 16))(v7, 0, v9);
    }

    else
    {
      v9 = [[LARatchetState alloc] initWithState:v10];
      (*(v7 + 16))(v7, v9, 0);
    }
  }
}

- (void)cancelArmRequestWithIdentifier:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  coreManager = self->_coreManager;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__LARatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke;
  v13[3] = &unk_1E77CB0A8;
  objc_copyWeak(&v15, &location);
  v12 = v10;
  v14 = v12;
  [(LACDTORatchetManager *)coreManager cancelArmRequestWithIdentifier:v8 reason:v9 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __69__LARatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)ratchetResultForResult:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v4 = [LARatchetState alloc];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69AD1F8]];
    v6 = [v3 objectForKeyedSubscript:v5];
    v7 = [(LARatchetState *)v4 initWithState:v6];

    v21[0] = &unk_1F1A6FB48;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69AD1E0]];
    v9 = [v3 objectForKeyedSubscript:v8];
    v22[0] = v9;
    v22[1] = v7;
    v21[1] = &unk_1F1A6FB60;
    v21[2] = &unk_1F1A6FB78;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69AD1E8]];
    v11 = [v3 objectForKeyedSubscript:v10];
    v12 = v11;
    v13 = MEMORY[0x1E695E110];
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x1E695E110];
    }

    v22[2] = v14;
    v21[3] = &unk_1F1A6FB90;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69AD1F0]];
    v16 = [v3 objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v13;
    }

    v22[3] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)ratchetErrorForError:(id)a3
{
  if (a3)
  {
    v4 = [LARatchetErrorBuilder ratchetErrorWithError:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)optionsForRatchetArmOptions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v3 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [objc_opt_class() _optionForRatchetOption:{objc_msgSend(v10, "integerValue")}];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = v11;
            v13 = [v3 objectForKeyedSubscript:v10];
            v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
            [v4 setObject:v13 forKeyedSubscript:v14];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (int64_t)_optionForRatchetOption:(int64_t)a3
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  switch(a3)
  {
    case 0:
      v4 = MEMORY[0x1E69AD178];
      goto LABEL_19;
    case 1:
      v4 = MEMORY[0x1E69AD168];
      goto LABEL_19;
    case 2:
      v4 = MEMORY[0x1E69AD170];
      goto LABEL_19;
    case 4:
      v4 = MEMORY[0x1E69AD1B8];
      goto LABEL_19;
    case 5:
      v4 = MEMORY[0x1E69AD1D8];
      goto LABEL_19;
    case 7:
      v4 = MEMORY[0x1E69AD1D0];
      goto LABEL_19;
    case 8:
      v4 = MEMORY[0x1E69AD188];
      goto LABEL_19;
    case 9:
      v4 = MEMORY[0x1E69AD180];
      goto LABEL_19;
    case 10:
      v4 = MEMORY[0x1E69AD190];
      goto LABEL_19;
    case 11:
      v4 = MEMORY[0x1E69AD1A8];
      goto LABEL_19;
    case 12:
      v4 = MEMORY[0x1E69AD1C0];
      goto LABEL_19;
    case 13:
      v4 = MEMORY[0x1E69AD1A0];
      goto LABEL_19;
    case 14:
      v4 = MEMORY[0x1E69AD1B0];
      goto LABEL_19;
    case 15:
      v4 = MEMORY[0x1E69AD158];
      goto LABEL_19;
    case 17:
      v4 = MEMORY[0x1E69AD1C8];
      goto LABEL_19;
    case 18:
      v4 = MEMORY[0x1E69AD160];
      goto LABEL_19;
    case 19:
      v4 = MEMORY[0x1E69AD198];
LABEL_19:
      result = *v4;
      break;
    default:
      return result;
  }

  return result;
}

- (void)enableFeatureWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__LARatchetManager_enableFeatureWithCompletion___block_invoke;
  v6[3] = &unk_1E77CB0F8;
  v7 = v4;
  v5 = v4;
  [(LARatchetManager *)self enableFeatureWithReply:v6];
}

- (void)currentRatchetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [LARatchetErrorBuilder genericErrorWithDebugDescription:@"This method has been deprecated"];
  (*(a3 + 2))(v4, 0, v5);
}

- (void)cancelCurrentRatchetWithReason:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [LARatchetErrorBuilder genericErrorWithDebugDescription:@"This method has been deprecated"];
  (*(a4 + 2))(v5, v6);
}

- (id)createContext
{
  v2 = objc_alloc_init(LAContext);

  return v2;
}

@end