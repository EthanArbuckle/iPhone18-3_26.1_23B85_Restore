@interface AAGrandSlamSigner
- (AAGrandSlamSigner)initWithAccountStore:(id)store grandSlamAccount:(id)account appTokenID:(id)d;
- (AAGrandSlamSigner)initWithAppleAccount:(id)account grandSlamAccount:(id)slamAccount accountStore:(id)store appTokenID:(id)d;
@end

@implementation AAGrandSlamSigner

- (AAGrandSlamSigner)initWithAccountStore:(id)store grandSlamAccount:(id)account appTokenID:(id)d
{
  storeCopy = store;
  accountCopy = account;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = AAGrandSlamSigner;
  v12 = [(AAGrandSlamSigner *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStore, store);
    objc_storeStrong(&v13->_grandSlamAccount, account);
    v14 = [dCopy copy];
    appTokenID = v13->_appTokenID;
    v13->_appTokenID = v14;

    headerFieldKey = v13->_headerFieldKey;
    v13->_headerFieldKey = @"X-Apple-GS-Token";
  }

  return v13;
}

- (AAGrandSlamSigner)initWithAppleAccount:(id)account grandSlamAccount:(id)slamAccount accountStore:(id)store appTokenID:(id)d
{
  accountCopy = account;
  dCopy = d;
  slamAccountCopy = slamAccount;
  accountStore = [slamAccountCopy accountStore];
  v13 = accountStore;
  if (accountStore)
  {
    accountStore2 = accountStore;
  }

  else
  {
    accountStore2 = [accountCopy accountStore];
  }

  v15 = accountStore2;

  v16 = [(AAGrandSlamSigner *)self initWithAccountStore:v15 grandSlamAccount:slamAccountCopy appTokenID:dCopy];
  return v16;
}

void __52__AAGrandSlamSigner_signURLRequest_isUserInitiated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "No way to sign request with GS token because renewal of GS credential failed: %ld, %@", &v11, 0x16u);
    }
  }

  else
  {
    v6 = [*(*(a1 + 32) + 8) credentialForAccount:*(*(a1 + 32) + 16) serviceID:*(*(a1 + 32) + 24)];
    v7 = [v6 token];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v10 = *MEMORY[0x1E69E9840];
}

@end