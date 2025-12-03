@interface AASignInOperationHelper
- (AASignInOperationHelper)init;
- (AASignInOperationHelper)initWithAccountStore:(id)store;
- (void)_refreshEnabledDataclassesForAccount:(id)account;
- (void)signInAccount:(id)account enablingDataclasses:(BOOL)dataclasses completion:(id)completion;
- (void)signInAccount:(id)account withDataclassActions:(id)actions completion:(id)completion;
@end

@implementation AASignInOperationHelper

- (AASignInOperationHelper)init
{
  v6.receiver = self;
  v6.super_class = AASignInOperationHelper;
  v2 = [(AASignInOperationHelper *)&v6 init];
  if (v2)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = defaultStore;
  }

  return v2;
}

- (AASignInOperationHelper)initWithAccountStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = AASignInOperationHelper;
  v6 = [(AASignInOperationHelper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
    v8 = [[AADataclassManager alloc] initWithAccountStore:v7->_accountStore];
    dataclassManager = v7->_dataclassManager;
    v7->_dataclassManager = v8;
  }

  return v7;
}

- (void)signInAccount:(id)account enablingDataclasses:(BOOL)dataclasses completion:(id)completion
{
  dataclassesCopy = dataclasses;
  accountCopy = account;
  completionCopy = completion;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AASignInOperationHelper signInAccount:v10 enablingDataclasses:? completion:?];
  }

  if (dataclassesCopy)
  {
    dataclassManager = self->_dataclassManager;
    if (dataclassManager)
    {
      [(AADataclassManager *)dataclassManager enableDataclassesWithoutLocalDataDataclassActionsForAccount:accountCopy completion:completionCopy];
    }

    else
    {
      v12 = +[AADataclassManager sharedManager];
      [v12 enableDataclassesWithoutLocalDataDataclassActionsForAccount:accountCopy completion:completionCopy];
    }
  }

  else
  {
    [(AASignInOperationHelper *)self _saveAccount:accountCopy completion:completionCopy];
  }
}

- (void)signInAccount:(id)account withDataclassActions:(id)actions completion:(id)completion
{
  accountCopy = account;
  actionsCopy = actions;
  completionCopy = completion;
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AASignInOperationHelper signInAccount:v11 withDataclassActions:? completion:?];
  }

  if (actionsCopy)
  {
    [(ACAccountStore *)self->_accountStore saveAccount:accountCopy withDataclassActions:actionsCopy completion:completionCopy];
  }

  else
  {
    [(AASignInOperationHelper *)self _saveAccount:accountCopy completion:completionCopy];
  }
}

- (void)_refreshEnabledDataclassesForAccount:(id)account
{
  accountCopy = account;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AASignInOperationHelper *)accountCopy _refreshEnabledDataclassesForAccount:v4];
  }

  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v6 = [defaultStore enabledDataclassesForAccount:accountCopy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__AASignInOperationHelper__refreshEnabledDataclassesForAccount___block_invoke;
  v8[3] = &unk_1E7C9AEE8;
  v9 = accountCopy;
  v7 = accountCopy;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)_refreshEnabledDataclassesForAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Refreshing enabled dataclasses for account: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end