@interface AASignInOperationHelper
- (AASignInOperationHelper)init;
- (AASignInOperationHelper)initWithAccountStore:(id)a3;
- (void)_refreshEnabledDataclassesForAccount:(id)a3;
- (void)signInAccount:(id)a3 enablingDataclasses:(BOOL)a4 completion:(id)a5;
- (void)signInAccount:(id)a3 withDataclassActions:(id)a4 completion:(id)a5;
@end

@implementation AASignInOperationHelper

- (AASignInOperationHelper)init
{
  v6.receiver = self;
  v6.super_class = AASignInOperationHelper;
  v2 = [(AASignInOperationHelper *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

- (AASignInOperationHelper)initWithAccountStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AASignInOperationHelper;
  v6 = [(AASignInOperationHelper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = [[AADataclassManager alloc] initWithAccountStore:v7->_accountStore];
    dataclassManager = v7->_dataclassManager;
    v7->_dataclassManager = v8;
  }

  return v7;
}

- (void)signInAccount:(id)a3 enablingDataclasses:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AASignInOperationHelper signInAccount:v10 enablingDataclasses:? completion:?];
  }

  if (v6)
  {
    dataclassManager = self->_dataclassManager;
    if (dataclassManager)
    {
      [(AADataclassManager *)dataclassManager enableDataclassesWithoutLocalDataDataclassActionsForAccount:v8 completion:v9];
    }

    else
    {
      v12 = +[AADataclassManager sharedManager];
      [v12 enableDataclassesWithoutLocalDataDataclassActionsForAccount:v8 completion:v9];
    }
  }

  else
  {
    [(AASignInOperationHelper *)self _saveAccount:v8 completion:v9];
  }
}

- (void)signInAccount:(id)a3 withDataclassActions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AASignInOperationHelper signInAccount:v11 withDataclassActions:? completion:?];
  }

  if (v9)
  {
    [(ACAccountStore *)self->_accountStore saveAccount:v8 withDataclassActions:v9 completion:v10];
  }

  else
  {
    [(AASignInOperationHelper *)self _saveAccount:v8 completion:v10];
  }
}

- (void)_refreshEnabledDataclassesForAccount:(id)a3
{
  v3 = a3;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AASignInOperationHelper *)v3 _refreshEnabledDataclassesForAccount:v4];
  }

  v5 = [MEMORY[0x1E6959A48] defaultStore];
  v6 = [v5 enabledDataclassesForAccount:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__AASignInOperationHelper__refreshEnabledDataclassesForAccount___block_invoke;
  v8[3] = &unk_1E7C9AEE8;
  v9 = v3;
  v7 = v3;
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