@interface AAGrandSlamSigner
- (AAGrandSlamSigner)initWithAccountStore:(id)a3 grandSlamAccount:(id)a4 appTokenID:(id)a5;
- (AAGrandSlamSigner)initWithAppleAccount:(id)a3 grandSlamAccount:(id)a4 accountStore:(id)a5 appTokenID:(id)a6;
@end

@implementation AAGrandSlamSigner

- (AAGrandSlamSigner)initWithAccountStore:(id)a3 grandSlamAccount:(id)a4 appTokenID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = AAGrandSlamSigner;
  v12 = [(AAGrandSlamSigner *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStore, a3);
    objc_storeStrong(&v13->_grandSlamAccount, a4);
    v14 = [v11 copy];
    appTokenID = v13->_appTokenID;
    v13->_appTokenID = v14;

    headerFieldKey = v13->_headerFieldKey;
    v13->_headerFieldKey = @"X-Apple-GS-Token";
  }

  return v13;
}

- (AAGrandSlamSigner)initWithAppleAccount:(id)a3 grandSlamAccount:(id)a4 accountStore:(id)a5 appTokenID:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a4;
  v12 = [v11 accountStore];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v9 accountStore];
  }

  v15 = v14;

  v16 = [(AAGrandSlamSigner *)self initWithAccountStore:v15 grandSlamAccount:v11 appTokenID:v10];
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