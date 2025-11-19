@interface AAAppleIDSettingsRequest
- (AAAppleIDSettingsRequest)initWithGrandSlamAccount:(id)a3 accountStore:(id)a4;
- (id)urlRequest;
@end

@implementation AAAppleIDSettingsRequest

- (AAAppleIDSettingsRequest)initWithGrandSlamAccount:(id)a3 accountStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AAAppleIDSettingsRequest;
  v9 = [(AAAppleIDSettingsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_grandSlamAccount, a3);
    objc_storeStrong(&v10->_store, a4);
    v10->_forceGSToken = 1;
  }

  return v10;
}

- (id)urlRequest
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = AAAppleIDSettingsRequest;
  v3 = [(AARequest *)&v28 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    if ([(AAAppleIDSettingsRequest *)self forceGSToken])
    {
      v6 = _AALogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "GrandSlam signing will fail because no GS account was provided.", buf, 2u);
      }

      goto LABEL_12;
    }

    grandSlamAccount = self->_grandSlamAccount;
  }

  v7 = [(ACAccount *)grandSlamAccount aida_dsid];
  [v4 aa_addDeviceProvisioningInfoHeadersWithDSID:v7];

  v6 = [(ACAccountStore *)self->_store credentialForAccount:self->_grandSlamAccount serviceID:@"com.apple.gs.appleid.auth"];
  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = [v6 token];
  if (!*(v23 + 5) && [(AAAppleIDSettingsRequest *)self forceGSToken])
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Could not get GS auth on first try. Will need to prompt for password", v21, 2u);
    }

    v9 = dispatch_semaphore_create(0);
    store = self->_store;
    v11 = self->_grandSlamAccount;
    v29[0] = @"com.apple.gs.appleid.auth";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __38__AAAppleIDSettingsRequest_urlRequest__block_invoke;
    v18[3] = &unk_1E7C9C508;
    v18[4] = self;
    v20 = buf;
    v13 = v9;
    v19 = v13;
    [(ACAccountStore *)store renewCredentialsForAccount:v11 services:v12 completion:v18];

    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  v14 = [(ACAccount *)self->_grandSlamAccount aida_alternateDSID];
  [v4 aa_addGrandslamAuthorizationHeaderWithAltDSID:v14 grandslamToken:*(v23 + 5)];

  v15 = +[AADeviceInfo udid];
  [v4 addValue:v15 forHTTPHeaderField:@"X-AppleID-Device-Udid"];

  _Block_object_dispose(buf, 8);
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

void __38__AAAppleIDSettingsRequest_urlRequest__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    v6 = [*(*(a1 + 32) + 64) credentialForAccount:*(*(a1 + 32) + 80) serviceID:@"com.apple.gs.appleid.auth"];
    v7 = [v6 token];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v10 = *MEMORY[0x1E69E9840];
}

@end