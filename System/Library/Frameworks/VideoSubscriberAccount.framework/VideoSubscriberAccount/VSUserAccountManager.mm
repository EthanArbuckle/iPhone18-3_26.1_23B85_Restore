@interface VSUserAccountManager
+ (VSUserAccountManager)sharedUserAccountManager;
- (VSUserAccountManager)init;
- (VSUserAccountServiceConnection)connection;
- (void)_runAutoSignInServiceCallWithSuccessHandler:(id)handler failureHandler:(id)failureHandler;
- (void)deleteAutoSignInTokenWithCompletionHandler:(id)handler;
- (void)deleteUserAccount:(id)account completion:(id)completion;
- (void)fetchUserAccountWithSourceIdentifier:(id)identifier sourceType:(int64_t)type deviceIdentifier:(id)deviceIdentifier withCompletion:(id)completion;
- (void)forceRefreshUserAccount:(id)account withCompletion:(id)completion;
- (void)queryAutoSignInTokenWithCompletionHandler:(id)handler;
- (void)queryUserAccountsWithOptions:(VSUserAccountQueryOptions)options completion:(void *)completion;
- (void)queryUserAccountsWithOptions:(int64_t)options sourceIdentifier:(id)identifier sourceType:(id)type deviceIdentifier:(id)deviceIdentifier completion:(id)completion;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)requestAutoSignInAuthorizationWithCompletionHandler:(id)handler;
- (void)updateAutoSignInToken:(id)token updateContext:(id)context completionHandler:(id)handler;
- (void)updateUserAccount:(VSUserAccount *)account completion:(void *)completion;
@end

@implementation VSUserAccountManager

+ (VSUserAccountManager)sharedUserAccountManager
{
  if (sharedUserAccountManager___vs_lazy_init_predicate != -1)
  {
    +[VSUserAccountManager sharedUserAccountManager];
  }

  v3 = sharedUserAccountManager___vs_lazy_init_variable;

  return v3;
}

uint64_t __48__VSUserAccountManager_sharedUserAccountManager__block_invoke()
{
  sharedUserAccountManager___vs_lazy_init_variable = objc_alloc_init(VSUserAccountManager);

  return MEMORY[0x2821F96F8]();
}

- (VSUserAccountManager)init
{
  v6.receiver = self;
  v6.super_class = VSUserAccountManager;
  v2 = [(VSUserAccountManager *)&v6 init];
  if (v2)
  {
    v3 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSActiveSubscriptionsDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v3;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
  }

  return v2;
}

- (void)updateUserAccount:(VSUserAccount *)account completion:(void *)completion
{
  v6 = account;
  v7 = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE658];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v8 raise:v9 format:{@"Object passed to %s was not of type %@.", "-[VSUserAccountManager updateUserAccount:completion:]", v11}];
  }

  connection = [(VSUserAccountManager *)self connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__VSUserAccountManager_updateUserAccount_completion___block_invoke;
  v15[3] = &unk_278B73910;
  v16 = v7;
  v13 = v7;
  v14 = [connection serviceWithErrorHandler:v15];
  [v14 updateUserAccount:v6 completion:v13];
}

void __53__VSUserAccountManager_updateUserAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__VSUserAccountManager_updateUserAccount_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteUserAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  connection = [(VSUserAccountManager *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__VSUserAccountManager_deleteUserAccount_completion___block_invoke;
  v11[3] = &unk_278B73910;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [connection serviceWithErrorHandler:v11];
  [v10 deleteUserAccount:accountCopy completion:v9];
}

void __53__VSUserAccountManager_deleteUserAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__VSUserAccountManager_updateUserAccount_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)fetchUserAccountWithSourceIdentifier:(id)identifier sourceType:(int64_t)type deviceIdentifier:(id)deviceIdentifier withCompletion:(id)completion
{
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__VSUserAccountManager_fetchUserAccountWithSourceIdentifier_sourceType_deviceIdentifier_withCompletion___block_invoke;
  v16[3] = &unk_278B74A90;
  v17 = identifierCopy;
  v18 = deviceIdentifierCopy;
  v19 = completionCopy;
  typeCopy = type;
  v13 = completionCopy;
  v14 = deviceIdentifierCopy;
  v15 = identifierCopy;
  [(VSUserAccountManager *)self queryUserAccountsWithOptions:1 completion:v16];
}

void __104__VSUserAccountManager_fetchUserAccountWithSourceIdentifier_sourceType_deviceIdentifier_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 sourceIdentifier];
        if ([v12 isEqualToString:a1[4]] && objc_msgSend(v11, "sourceType") == a1[7])
        {
          v13 = [v11 deviceIdentifier];
          v14 = [v13 isEqualToString:a1[5]];

          if (v14)
          {
            v8 = v11;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

LABEL_13:

  if ([v8 isSignedOut])
  {

    v8 = 0;
  }

  (*(a1[6] + 16))();
}

- (void)forceRefreshUserAccount:(id)account withCompletion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  connection = [(VSUserAccountManager *)self connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__VSUserAccountManager_forceRefreshUserAccount_withCompletion___block_invoke;
  v14[3] = &unk_278B73910;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection serviceWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__VSUserAccountManager_forceRefreshUserAccount_withCompletion___block_invoke_10;
  v12[3] = &unk_278B73910;
  v13 = v9;
  v11 = v9;
  [v10 forceRefreshUserAccount:accountCopy withCompletion:v12];
}

void __63__VSUserAccountManager_forceRefreshUserAccount_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__VSUserAccountManager_updateUserAccount_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)queryUserAccountsWithOptions:(VSUserAccountQueryOptions)options completion:(void *)completion
{
  v6 = completion;
  connection = [(VSUserAccountManager *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__VSUserAccountManager_queryUserAccountsWithOptions_completion___block_invoke;
  v10[3] = &unk_278B73910;
  v11 = v6;
  v8 = v6;
  v9 = [connection serviceWithErrorHandler:v10];
  [v9 queryUserAccountsWithOptions:options completion:v8];
}

void __64__VSUserAccountManager_queryUserAccountsWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__VSUserAccountManager_updateUserAccount_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)queryUserAccountsWithOptions:(int64_t)options sourceIdentifier:(id)identifier sourceType:(id)type deviceIdentifier:(id)deviceIdentifier completion:(id)completion
{
  completionCopy = completion;
  deviceIdentifierCopy = deviceIdentifier;
  typeCopy = type;
  identifierCopy = identifier;
  connection = [(VSUserAccountManager *)self connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __109__VSUserAccountManager_queryUserAccountsWithOptions_sourceIdentifier_sourceType_deviceIdentifier_completion___block_invoke;
  v19[3] = &unk_278B73910;
  v20 = completionCopy;
  v17 = completionCopy;
  v18 = [connection serviceWithErrorHandler:v19];
  [v18 queryUserAccountsWithOptions:options sourceIdentifier:identifierCopy sourceType:typeCopy deviceIdentifier:deviceIdentifierCopy completion:v17];
}

void __109__VSUserAccountManager_queryUserAccountsWithOptions_sourceIdentifier_sourceType_deviceIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__VSUserAccountManager_updateUserAccount_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)queryAutoSignInTokenWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__VSUserAccountManager_queryAutoSignInTokenWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B74AB8;
  v9 = handlerCopy;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__VSUserAccountManager_queryAutoSignInTokenWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_278B73910;
  v7 = v9;
  v5 = v9;
  [(VSUserAccountManager *)self _runAutoSignInServiceCallWithSuccessHandler:v8 failureHandler:v6];
}

uint64_t __66__VSUserAccountManager_queryAutoSignInTokenWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)requestAutoSignInAuthorizationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__VSUserAccountManager_requestAutoSignInAuthorizationWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B74AB8;
  v9 = handlerCopy;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__VSUserAccountManager_requestAutoSignInAuthorizationWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_278B73910;
  v7 = v9;
  v5 = v9;
  [(VSUserAccountManager *)self _runAutoSignInServiceCallWithSuccessHandler:v8 failureHandler:v6];
}

void __76__VSUserAccountManager_requestAutoSignInAuthorizationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__VSUserAccountManager_requestAutoSignInAuthorizationWithCompletionHandler___block_invoke_2;
  v5[3] = &unk_278B74AE0;
  v6 = *(a1 + 32);
  [a2 requestAutoSignInAuthorizationWithClientAccountType:a3 completion:v5];
}

uint64_t __76__VSUserAccountManager_requestAutoSignInAuthorizationWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    v9 = v5;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = [[VSAutoSignInTokenUpdateContext alloc] initWithAuthorization:a2];
    }

    (*(*(a1 + 32) + 16))();

    v6 = v9;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

uint64_t __76__VSUserAccountManager_requestAutoSignInAuthorizationWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)updateAutoSignInToken:(id)token updateContext:(id)context completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__VSUserAccountManager_updateAutoSignInToken_updateContext_completionHandler___block_invoke;
  v13[3] = &unk_278B74B08;
  v14 = tokenCopy;
  v15 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__VSUserAccountManager_updateAutoSignInToken_updateContext_completionHandler___block_invoke_2;
  v11[3] = &unk_278B73910;
  v12 = v15;
  v9 = v15;
  v10 = tokenCopy;
  [(VSUserAccountManager *)self _runAutoSignInServiceCallWithSuccessHandler:v13 failureHandler:v11];
}

uint64_t __78__VSUserAccountManager_updateAutoSignInToken_updateContext_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteAutoSignInTokenWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__VSUserAccountManager_deleteAutoSignInTokenWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B74AB8;
  v9 = handlerCopy;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__VSUserAccountManager_deleteAutoSignInTokenWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_278B73910;
  v7 = v9;
  v5 = v9;
  [(VSUserAccountManager *)self _runAutoSignInServiceCallWithSuccessHandler:v8 failureHandler:v6];
}

uint64_t __67__VSUserAccountManager_deleteAutoSignInTokenWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_runAutoSignInServiceCallWithSuccessHandler:(id)handler failureHandler:(id)failureHandler
{
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  connection = [(VSUserAccountManager *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__VSUserAccountManager__runAutoSignInServiceCallWithSuccessHandler_failureHandler___block_invoke;
  v16[3] = &unk_278B73910;
  v9 = failureHandlerCopy;
  v17 = v9;
  v10 = [connection serviceWithErrorHandler:v16];

  if (v10)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v11 = getSKAccountClass_softClass;
    v22 = getSKAccountClass_softClass;
    if (!getSKAccountClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __getSKAccountClass_block_invoke;
      v18[3] = &unk_278B74318;
      v18[4] = &v19;
      __getSKAccountClass_block_invoke(v18);
      v11 = v20[3];
    }

    v12 = v11;
    _Block_object_dispose(&v19, 8);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__VSUserAccountManager__runAutoSignInServiceCallWithSuccessHandler_failureHandler___block_invoke_14;
    v13[3] = &unk_278B74B30;
    v15 = handlerCopy;
    v14 = v10;
    [v11 currentAccountTypeWithCompletionHandler:v13];
  }
}

void __83__VSUserAccountManager__runAutoSignInServiceCallWithSuccessHandler_failureHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__VSUserAccountManager_updateUserAccount_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __83__VSUserAccountManager__runAutoSignInServiceCallWithSuccessHandler_failureHandler___block_invoke_14(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v5 = @"<unknown>";
    }

    else
    {
      v5 = off_278B74B68[a2];
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Current StoreKit account type: %{public}@", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (VSUserAccountServiceConnection)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_connection;
  if (!v3)
  {
    v3 = objc_alloc_init(VSUserAccountServiceConnection);
    objc_storeStrong(&selfCopy->_connection, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"VSActiveSubscriptionsDidChangeNotification" object:self];
}

@end