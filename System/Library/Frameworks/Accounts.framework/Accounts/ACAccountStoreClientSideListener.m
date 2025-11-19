@interface ACAccountStoreClientSideListener
- (ACAccountStoreClientSideListener)init;
- (void)accountCredentialsDidChangeForAccountWithIdentifier:(id)a3;
@end

@implementation ACAccountStoreClientSideListener

- (ACAccountStoreClientSideListener)init
{
  v3.receiver = self;
  v3.super_class = ACAccountStoreClientSideListener;
  return [(ACAccountStoreClientSideListener *)&v3 init];
}

- (void)accountCredentialsDidChangeForAccountWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__ACAccountStoreClientSideListener_accountCredentialsDidChangeForAccountWithIdentifier___block_invoke;
    block[3] = &unk_1E7975AD8;
    v5 = v3;
    v12 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = +[ACAccountStore defaultStore];
    v7 = [v6 _cache];
    v8 = [v7 credentialCache];
    [v8 clearCachedCredentialsForAccountID:v5];

    v9 = v12;
  }

  else
  {
    v9 = _ACLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      _os_log_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_DEFAULT, "ACAccountStoreClientSideListener is ignoring credential change notification because no account ID was provided.", &v10, 2u);
    }
  }
}

void __88__ACAccountStoreClientSideListener_accountCredentialsDidChangeForAccountWithIdentifier___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);
  v6[0] = @"ACAccountIdentifierKey";
  v6[1] = @"AccountIdentifier";
  v7[0] = v3;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 postNotificationName:@"ACAccountCredentialsDidChangeNotification" object:0 userInfo:v4];

  v5 = *MEMORY[0x1E69E9840];
}

@end