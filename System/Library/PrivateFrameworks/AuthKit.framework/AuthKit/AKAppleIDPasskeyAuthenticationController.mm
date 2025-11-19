@interface AKAppleIDPasskeyAuthenticationController
- (AKAppleIDPasskeyAuthenticationController)init;
- (id)_authorizationControllerForAccount:(id)a3;
- (id)_popPasskeyRequestStateForController:(id)a3;
- (void)_onqueue_authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4 error:(id)a5;
- (void)_onqueue_createPasskeyWithContext:(id)a3 completion:(id)a4;
- (void)_pushPasskeyRequestState:(id)a3 forController:(id)a4;
- (void)appleIDPasskeyStatusForAccount:(id)a3 withCompletion:(id)a4;
- (void)appleIDPasskeysForAccount:(id)a3 withCompletion:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4;
- (void)canCreateiCloudKeychainPasskeyForAccount:(id)a3 withCompletion:(id)a4;
- (void)createPasskeyWithContext:(id)a3 completion:(id)a4;
- (void)deleteAllPasskeysForAccount:(id)a3 withCompletion:(id)a4;
@end

@implementation AKAppleIDPasskeyAuthenticationController

- (AKAppleIDPasskeyAuthenticationController)init
{
  v16 = a2;
  v17 = 0;
  v15.receiver = self;
  v15.super_class = AKAppleIDPasskeyAuthenticationController;
  v14 = [(AKAppleIDPasskeyAuthenticationController *)&v15 init];
  v17 = v14;
  objc_storeStrong(&v17, v14);
  if (v14)
  {
    v17->_stateByControllerLock._os_unfair_lock_opaque = 0;
    v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    stateByController = v17->_stateByController;
    v17->_stateByController = v2;
    MEMORY[0x1E69E5920](stateByController);
    v4 = dispatch_group_create();
    serializationGroup = v17->_serializationGroup;
    v17->_serializationGroup = v4;
    MEMORY[0x1E69E5920](serializationGroup);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.passkey-serialization-queue", v12);
    serializationQueue = v17->_serializationQueue;
    v17->_serializationQueue = v6;
    MEMORY[0x1E69E5920](serializationQueue);
    MEMORY[0x1E69E5920](v12);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.authkit.passkey.request.queue", v13);
    passkeyRequestQueue = v17->_passkeyRequestQueue;
    v17->_passkeyRequestQueue = v8;
    MEMORY[0x1E69E5920](passkeyRequestQueue);
    MEMORY[0x1E69E5920](v13);
  }

  v11 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(&v17, 0);
  return v11;
}

- (void)createPasskeyWithContext:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_serializationQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __80__AKAppleIDPasskeyAuthenticationController_createPasskeyWithContext_completion___block_invoke;
  v10 = &unk_1E73D6640;
  v11 = MEMORY[0x1E69E5928](v16);
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = MEMORY[0x1E69E5928](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __80__AKAppleIDPasskeyAuthenticationController_createPasskeyWithContext_completion___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  group = *(a1[4] + 8);
  queue = *(a1[4] + 16);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __80__AKAppleIDPasskeyAuthenticationController_createPasskeyWithContext_completion___block_invoke_2;
  v8 = &unk_1E73D6640;
  v9 = MEMORY[0x1E69E5928](a1[4]);
  v10 = MEMORY[0x1E69E5928](a1[5]);
  v11[0] = MEMORY[0x1E69E5928](a1[6]);
  dispatch_group_notify(group, queue, &v4);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
}

void __80__AKAppleIDPasskeyAuthenticationController_createPasskeyWithContext_completion___block_invoke_2(void *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  dispatch_group_enter(*(a1[4] + 8));
  v3 = a1[4];
  v2 = a1[5];
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __80__AKAppleIDPasskeyAuthenticationController_createPasskeyWithContext_completion___block_invoke_3;
  v8 = &unk_1E73D8D50;
  v9 = MEMORY[0x1E69E5928](a1[4]);
  v10[0] = MEMORY[0x1E69E5928](a1[6]);
  [v3 _onqueue_createPasskeyWithContext:v2 completion:?];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
}

void __80__AKAppleIDPasskeyAuthenticationController_createPasskeyWithContext_completion___block_invoke_3(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  dispatch_group_leave(*(a1[4] + 8));
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)appleIDPasskeyStatusForAccount:(id)a3 withCompletion:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = v15;
  v5 = location[0];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __90__AKAppleIDPasskeyAuthenticationController_appleIDPasskeyStatusForAccount_withCompletion___block_invoke;
  v11 = &unk_1E73D8D78;
  v12 = MEMORY[0x1E69E5928](v13);
  [(AKAppleIDPasskeyAuthenticationController *)v6 appleIDPasskeysForAccount:v5 withCompletion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __90__AKAppleIDPasskeyAuthenticationController_appleIDPasskeyStatusForAccount_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  if (a1[4])
  {
    v3 = (a1[4] + 16);
    [location[0] count];
    (*v3)();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)canCreateiCloudKeychainPasskeyForAccount:(id)a3 withCompletion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&v15, v18);
  queue = v18->_passkeyRequestQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __100__AKAppleIDPasskeyAuthenticationController_canCreateiCloudKeychainPasskeyForAccount_withCompletion___block_invoke;
  v10 = &unk_1E73D8DA0;
  objc_copyWeak(&v14, &v15);
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12 = MEMORY[0x1E69E5928](v18);
  v13 = MEMORY[0x1E69E5928](v16);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __100__AKAppleIDPasskeyAuthenticationController_canCreateiCloudKeychainPasskeyForAccount_withCompletion___block_invoke(uint64_t a1)
{
  v32[2] = a1;
  v32[1] = a1;
  v32[0] = objc_loadWeakRetained((a1 + 56));
  if (v32[0])
  {
    v10 = [*(a1 + 32) username];
    MEMORY[0x1E69E5920](v10);
    if (v10)
    {
      v27 = [*(a1 + 40) _authorizationControllerForAccount:*(a1 + 32)];
      if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v9 = v27;
        v20 = MEMORY[0x1E69E9820];
        v21 = -1073741824;
        v22 = 0;
        v23 = __100__AKAppleIDPasskeyAuthenticationController_canCreateiCloudKeychainPasskeyForAccount_withCompletion___block_invoke_50;
        v24 = &unk_1E73D3F20;
        v25 = MEMORY[0x1E69E5928](v27);
        v26 = MEMORY[0x1E69E5928](*(a1 + 48));
        [v9 preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:&v20];
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v25, 0);
      }

      else
      {
        v19 = _AKLogPasskey();
        v18 = 16;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v7 = v19;
          v8 = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_error_impl(&dword_193225000, v7, v8, "We don't have a way to know if passkey can be created in keychain. Failing gracefully.", v17, 2u);
        }

        objc_storeStrong(&v19, 0);
        if (*(a1 + 48))
        {
          v5 = *(a1 + 48);
          v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAppleIDPasskeyError" code:-120020 userInfo:0];
          (*(v5 + 16))(v5, 0);
          MEMORY[0x1E69E5920](v6);
        }
      }

      objc_storeStrong(&v27, 0);
    }

    else
    {
      v16 = _AKLogPasskey();
      v15 = 16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v3 = v16;
        v4 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_193225000, v3, v4, "Failed to fetch user visible keychain sync status. Missing username", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      if (*(a1 + 48))
      {
        v1 = *(a1 + 48);
        v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAppleIDPasskeyError" code:-12002 userInfo:0];
        (*(v1 + 16))(v1, 0);
        MEMORY[0x1E69E5920](v2);
      }
    }

    v28 = 0;
  }

  else
  {
    location = _AKLogPasskey();
    v30 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_debug_impl(&dword_193225000, log, type, "Missing AKAppleIDPasskeyAuthenticationController instance.", v29, 2u);
    }

    objc_storeStrong(&location, 0);
    v28 = 1;
  }

  objc_storeStrong(v32, 0);
}

void __100__AKAppleIDPasskeyAuthenticationController_canCreateiCloudKeychainPasskeyForAccount_withCompletion___block_invoke_50(NSObject *a1, char a2, id obj)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _AKLogPasskey();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_3_1_8_65(v12, location);
      _os_log_error_impl(&dword_193225000, oslog[0], type, "preflightCanCreateICloudKeychainPasskey failed with error: %{private}@", v12, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    if (a1[5].isa)
    {
      (*(a1[5].isa + 2))();
    }
  }

  else
  {
    v5 = _AKLogPasskey();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      if (v9)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v11, v3);
      _os_log_debug_impl(&dword_193225000, v5, OS_LOG_TYPE_DEBUG, "preflightCanCreateICloudKeychainPasskey : %@", v11, 0xCu);
    }

    objc_storeStrong(&v5, 0);
    if (a1[5].isa)
    {
      (*(a1[5].isa + 2))();
    }
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)appleIDPasskeysForAccount:(id)a3 withCompletion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&v15, v18);
  queue = v18->_passkeyRequestQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __85__AKAppleIDPasskeyAuthenticationController_appleIDPasskeysForAccount_withCompletion___block_invoke;
  v10 = &unk_1E73D8DA0;
  objc_copyWeak(&v14, &v15);
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12 = MEMORY[0x1E69E5928](v18);
  v13 = MEMORY[0x1E69E5928](v16);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __85__AKAppleIDPasskeyAuthenticationController_appleIDPasskeysForAccount_withCompletion___block_invoke(uint64_t a1)
{
  v33[2] = a1;
  v33[1] = a1;
  v33[0] = objc_loadWeakRetained((a1 + 56));
  if (v33[0])
  {
    v10 = [*(a1 + 32) username];
    MEMORY[0x1E69E5920](v10);
    if (v10)
    {
      v28 = [*(a1 + 40) _authorizationControllerForAccount:*(a1 + 32)];
      if (v28 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v9 = v28;
        v20 = MEMORY[0x1E69E9820];
        v21 = -1073741824;
        v22 = 0;
        v23 = __85__AKAppleIDPasskeyAuthenticationController_appleIDPasskeysForAccount_withCompletion___block_invoke_61;
        v24 = &unk_1E73D8DC8;
        v25 = MEMORY[0x1E69E5928](v28);
        v26 = MEMORY[0x1E69E5928](*(a1 + 32));
        v27 = MEMORY[0x1E69E5928](*(a1 + 48));
        [v9 getPasskeysDataForRelyingParty:@"apple.com" withCompletionHandler:&v20];
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v25, 0);
      }

      else
      {
        v19 = _AKLogPasskey();
        v18 = 16;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v7 = v19;
          v8 = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_error_impl(&dword_193225000, v7, v8, "AppleID passkey keychain status failed.", v17, 2u);
        }

        objc_storeStrong(&v19, 0);
        if (*(a1 + 48))
        {
          v5 = *(a1 + 48);
          v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAppleIDPasskeyError" code:-120019 userInfo:?];
          (*(v5 + 16))(v5, 0);
          MEMORY[0x1E69E5920](v6);
        }
      }

      objc_storeStrong(&v28, 0);
    }

    else
    {
      v16 = _AKLogPasskey();
      v15 = 16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v3 = v16;
        v4 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_193225000, v3, v4, "AppleID passkey keychain status failed. Missing username", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      if (*(a1 + 48))
      {
        v1 = *(a1 + 48);
        v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAppleIDPasskeyError" code:-12002 userInfo:?];
        (*(v1 + 16))(v1, 0);
        MEMORY[0x1E69E5920](v2);
      }
    }

    v29 = 0;
  }

  else
  {
    location = _AKLogPasskey();
    v31 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v31;
      __os_log_helper_16_0_0(v30);
      _os_log_debug_impl(&dword_193225000, log, type, "Missing AKAppleIDPasskeyAuthenticationController instance.", v30, 2u);
    }

    objc_storeStrong(&location, 0);
    v29 = 1;
  }

  objc_storeStrong(v33, 0);
}

void __85__AKAppleIDPasskeyAuthenticationController_appleIDPasskeysForAccount_withCompletion___block_invoke_61(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17[1] = a1;
  if (location[0])
  {
    v9 = +[AKAccountManager sharedInstance];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(location[0], "count")}];
    v2 = a1[5];
    [AKAccountManager setPasskeysInKeychainCount:v9 forAccount:"setPasskeysInKeychainCount:forAccount:"];
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
    v17[0] = 0;
    v10 = +[AKAccountManager sharedInstance];
    v3 = a1[5];
    v16 = v17[0];
    [(AKAccountManager *)v10 saveAccount:v3 error:&v16];
    objc_storeStrong(v17, v16);
    MEMORY[0x1E69E5920](v10);
    if (v17[0])
    {
      v15 = _AKLogSystem();
      v14 = 17;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_fault_impl(&dword_193225000, log, type, "Failed to save setPasskeyInKeychainCount to account", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
    }

    else
    {
      v12 = _AKLogPasskey();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v19, [location[0] count]);
        _os_log_debug_impl(&dword_193225000, v12, OS_LOG_TYPE_DEBUG, "Saved passkeyInKeychainCount (%lu) to account", v19, 0xCu);
      }

      objc_storeStrong(&v12, 0);
    }

    if (a1[6])
    {
      (*(a1[6] + 16))();
    }

    objc_storeStrong(v17, 0);
  }

  else if (a1[6])
  {
    v4 = a1[6];
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAppleIDPasskeyError" code:-120019 userInfo:?];
    (*(v4 + 16))(v4, 0);
    MEMORY[0x1E69E5920](v5);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)deleteAllPasskeysForAccount:(id)a3 withCompletion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&v15, v18);
  queue = v18->_passkeyRequestQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __87__AKAppleIDPasskeyAuthenticationController_deleteAllPasskeysForAccount_withCompletion___block_invoke;
  v10 = &unk_1E73D8DA0;
  objc_copyWeak(&v14, &v15);
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12 = MEMORY[0x1E69E5928](v18);
  v13 = MEMORY[0x1E69E5928](v16);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __87__AKAppleIDPasskeyAuthenticationController_deleteAllPasskeysForAccount_withCompletion___block_invoke(uint64_t a1)
{
  v32[2] = a1;
  v32[1] = a1;
  v32[0] = objc_loadWeakRetained((a1 + 56));
  if (v32[0])
  {
    v10 = [*(a1 + 32) username];
    MEMORY[0x1E69E5920](v10);
    if (v10)
    {
      v27 = [*(a1 + 40) _authorizationControllerForAccount:*(a1 + 32)];
      if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v9 = v27;
        v20 = MEMORY[0x1E69E9820];
        v21 = -1073741824;
        v22 = 0;
        v23 = __87__AKAppleIDPasskeyAuthenticationController_deleteAllPasskeysForAccount_withCompletion___block_invoke_67;
        v24 = &unk_1E73D3F20;
        v25 = MEMORY[0x1E69E5928](v27);
        v26 = MEMORY[0x1E69E5928](*(a1 + 48));
        [v9 deleteAllPasskeysForRelyingParty:@"apple.com" completionHandler:&v20];
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v25, 0);
      }

      else
      {
        v19 = _AKLogPasskey();
        v18 = 16;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v7 = v19;
          v8 = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_error_impl(&dword_193225000, v7, v8, "Failed to delete AppleID passkeys - Missing implementation", v17, 2u);
        }

        objc_storeStrong(&v19, 0);
        if (*(a1 + 48))
        {
          v5 = *(a1 + 48);
          v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAppleIDPasskeyError" code:-120019 userInfo:0];
          (*(v5 + 16))(v5, 0);
          MEMORY[0x1E69E5920](v6);
        }
      }

      objc_storeStrong(&v27, 0);
    }

    else
    {
      v16 = _AKLogPasskey();
      v15 = 16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v3 = v16;
        v4 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_193225000, v3, v4, "Failed to delete AppleID passkeys - Missing username", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      if (*(a1 + 48))
      {
        v1 = *(a1 + 48);
        v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAppleIDPasskeyError" code:-12002 userInfo:0];
        (*(v1 + 16))(v1, 0);
        MEMORY[0x1E69E5920](v2);
      }
    }

    v28 = 0;
  }

  else
  {
    location = _AKLogPasskey();
    v30 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_debug_impl(&dword_193225000, log, type, "Missing AKAppleIDPasskeyAuthenticationController instance.", v29, 2u);
    }

    objc_storeStrong(&location, 0);
    v28 = 1;
  }

  objc_storeStrong(v32, 0);
}

void __87__AKAppleIDPasskeyAuthenticationController_deleteAllPasskeysForAccount_withCompletion___block_invoke_67(void *a1, char a2, id obj)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  if (v11)
  {
    v9[0] = _AKLogPasskey();
    v8 = 2;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_193225000, log, type, "Successfully deleted all AppleID passkeys", v7, 2u);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogPasskey();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_3_1_8_65(v13, location);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to delete AppleID passkeys with error:%{private}@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_onqueue_createPasskeyWithContext:(id)a3 completion:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = 0;
  objc_storeStrong(&v49, a4);
  v48 = [location[0] relyingPartyIdentifier];
  v47 = [location[0] credentialName];
  v46 = [location[0] challenge];
  v45 = [location[0] userID];
  if (v48 && v47 && v46 && v45)
  {
    if (AuthenticationServicesLibraryCore(0))
    {
      v4 = objc_alloc(getASAuthorizationPlatformPublicKeyCredentialProviderClass());
    }

    else
    {
      v4 = [0 alloc];
    }

    v41 = [v4 initWithRelyingPartyIdentifier:v48];
    v40 = [v41 createCredentialRegistrationRequestWithChallenge:v46 name:v47 userID:v45];
    if (v40)
    {
      v55 = v40;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      if (AuthenticationServicesLibraryCore(0))
      {
        v5 = objc_alloc(getASAuthorizationControllerClass());
      }

      else
      {
        v5 = [0 alloc];
      }

      v33 = [v5 initWithAuthorizationRequests:v34];
      if (v33)
      {
        [v33 setDelegate:v51];
        v53 = v48;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
        [v33 setProxiedAssociatedDomains:?];
        MEMORY[0x1E69E5920](v10);
        if (objc_opt_respondsToSelector())
        {
          v27 = _AKLogPasskey();
          v26 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_1_8_64(v52, location[0]);
            _os_log_debug_impl(&dword_193225000, v27, v26, "Creating credential with context: %@", v52, 0xCu);
          }

          objc_storeStrong(&v27, 0);
          v25 = [_AKAppleIDPasskeyRequestState stateWithContext:location[0] completion:v49];
          [(AKAppleIDPasskeyAuthenticationController *)v51 _pushPasskeyRequestState:v25 forController:v33];
          [v33 performSilentRequests];
          objc_storeStrong(&v25, 0);
        }

        else
        {
          v24 = _AKLogSystem();
          v23 = OS_LOG_TYPE_FAULT;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            v8 = v24;
            v9 = v23;
            __os_log_helper_16_0_0(v22);
            _os_log_fault_impl(&dword_193225000, v8, v9, "Authorization controller unexpectedly does not respond to selector: 'performSilentRequests'", v22, 2u);
          }

          objc_storeStrong(&v24, 0);
          if (v49)
          {
            v6 = v49;
            v7 = [MEMORY[0x1E696ABC0] ak_passkeyErrorWithCode:-12002];
            v6[2](v6, 0);
            MEMORY[0x1E69E5920](v7);
          }
        }

        v42 = 0;
      }

      else
      {
        v32 = _AKLogPasskey();
        v31 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_3_8_64_8_64_8_64(v54, v51, v40, location[0]);
          _os_log_error_impl(&dword_193225000, v32, v31, "%@: Failed to create authorization controller with request (%@) for context (%@)", v54, 0x20u);
        }

        objc_storeStrong(&v32, 0);
        v30 = _AKLogSystem();
        v29 = OS_LOG_TYPE_FAULT;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          v13 = v30;
          v14 = v29;
          __os_log_helper_16_0_0(v28);
          _os_log_fault_impl(&dword_193225000, v13, v14, "Unexpectedly failed creating authorization controller (nil return)", v28, 2u);
        }

        objc_storeStrong(&v30, 0);
        if (v49)
        {
          v11 = v49;
          v12 = [MEMORY[0x1E696ABC0] ak_passkeyErrorWithCode:-12001];
          v11[2](v11, 0);
          MEMORY[0x1E69E5920](v12);
        }

        v42 = 1;
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    else
    {
      oslog = _AKLogPasskey();
      v38 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_3_8_64_8_64_8_64(v56, v51, location[0], v41);
        _os_log_error_impl(&dword_193225000, oslog, v38, "%@: Failed to create passkey request with context (%@) using provider (%@)", v56, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v37 = _AKLogSystem();
      v36 = OS_LOG_TYPE_FAULT;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        v17 = v37;
        v18 = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_fault_impl(&dword_193225000, v17, v18, "Unexpectedly failed creating passkey registration request (nil return)", v35, 2u);
      }

      objc_storeStrong(&v37, 0);
      if (v49)
      {
        v15 = v49;
        v16 = [MEMORY[0x1E696ABC0] ak_passkeyErrorWithCode:-12001];
        v15[2](v15, 0);
        MEMORY[0x1E69E5920](v16);
      }

      v42 = 1;
    }

    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v41, 0);
  }

  else
  {
    v44 = _AKLogPasskey();
    v43 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v57, v51, location[0]);
      _os_log_error_impl(&dword_193225000, v44, v43, "%@: Unable to create passkey with invalid context (%@) missing required parameters", v57, 0x16u);
    }

    objc_storeStrong(&v44, 0);
    if (v49)
    {
      v19 = v49;
      v20 = [MEMORY[0x1E696ABC0] ak_passkeyErrorWithCode:-120012];
      v19[2](v19, 0);
      MEMORY[0x1E69E5920](v20);
    }

    v42 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_pushPasskeyRequestState:(id)a3 forController:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  if (v10)
  {
    os_unfair_lock_lock(&v12->_stateByControllerLock);
    [(NSMapTable *)v12->_stateByController setObject:location[0] forKey:v10];
    os_unfair_lock_unlock(&v12->_stateByControllerLock);
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 17;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_fault_impl(&dword_193225000, log, type, "Unexpectedly passed nil authorization controller as key for passkey request state", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_popPasskeyRequestStateForController:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    os_unfair_lock_lock(&v13->_stateByControllerLock);
    v7 = [(NSMapTable *)v13->_stateByController objectForKey:location[0]];
    [NSMapTable setObject:"setObject:forKey:" forKey:?];
    os_unfair_lock_unlock(&v13->_stateByControllerLock);
    v14 = MEMORY[0x1E69E5928](v7);
    v8 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_fault_impl(&dword_193225000, log, type, "Unexpectedly passed nil authorization controller as key for passkey request state", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v14 = 0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v14;

  return v3;
}

- (void)_onqueue_authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4 error:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = 0;
  objc_storeStrong(&v53, a4);
  v52 = 0;
  objc_storeStrong(&v52, a5);
  dispatch_assert_queue_V2(v55[2]);
  v51 = [(dispatch_queue_t *)v55 _popPasskeyRequestStateForController:location[0]];
  if (v51)
  {
    v44 = 0;
    if (AuthenticationServicesLibraryCore(0))
    {
      getASAuthorizationPlatformPublicKeyCredentialRegistrationClass();
    }

    v28 = objc_opt_class();
    v29 = [v53 credential];
    v43 = _AKSafeCast_24(v28, v29);
    MEMORY[0x1E69E5920](v29);
    if (v43)
    {
      v42 = _AKLogPasskey();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v60, v43);
        _os_log_impl(&dword_193225000, v42, v41, "Successfully obtained passkey credential: %@", v60, 0xCu);
      }

      objc_storeStrong(&v42, 0);
      v16 = [AKAppleIDPasskeyCredential alloc];
      v27 = [v51 context];
      v26 = [v27 relyingPartyIdentifier];
      v25 = [v43 rawAttestationObject];
      v24 = [v43 rawClientDataJSON];
      v23 = [v43 credentialID];
      v22 = [v51 context];
      v21 = [v22 originalChallenge];
      v20 = [v51 context];
      v19 = [v20 userID];
      v18 = [v51 context];
      v17 = [v18 credentialName];
      v5 = [(AKAppleIDPasskeyCredential *)v16 initWithRelyingPartyIdentifier:v26 attestationData:v25 clientData:v24 credentialID:v23 originalChallenge:v21 userID:v19 credentialName:v17];
      v6 = v44;
      v44 = v5;
      MEMORY[0x1E69E5920](v6);
      MEMORY[0x1E69E5920](v17);
      MEMORY[0x1E69E5920](v18);
      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](v20);
      MEMORY[0x1E69E5920](v21);
      MEMORY[0x1E69E5920](v22);
      MEMORY[0x1E69E5920](v23);
      MEMORY[0x1E69E5920](v24);
      MEMORY[0x1E69E5920](v25);
      MEMORY[0x1E69E5920](v26);
      MEMORY[0x1E69E5920](v27);
      v40 = _AKLogPasskey();
      v39 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v51 context];
        __os_log_helper_16_2_1_8_64(v59, v15);
        _os_log_debug_impl(&dword_193225000, v40, v39, "AppleID passkey was created successfully with context: %@", v59, 0xCu);
        MEMORY[0x1E69E5920](v15);
      }

      objc_storeStrong(&v40, 0);
    }

    else if (v53)
    {
      v38 = _AKLogPasskey();
      v37 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v13 = v53;
        v14 = [v53 credential];
        __os_log_helper_16_2_2_8_64_8_64(v58, v13, v14);
        _os_log_error_impl(&dword_193225000, v38, v37, "Authorization (%@) is not of desired credential type: %@", v58, 0x16u);
        MEMORY[0x1E69E5920](v14);
      }

      objc_storeStrong(&v38, 0);
      v7 = [MEMORY[0x1E696ABC0] ak_passkeyErrorWithCode:-12009];
      v8 = v52;
      v52 = v7;
      MEMORY[0x1E69E5920](v8);
    }

    else
    {
      v36 = _AKLogPasskey();
      v35 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v57, location[0], v52);
        _os_log_error_impl(&dword_193225000, v36, v35, "Failed to create passkey using controller (%@) with error: %@", v57, 0x16u);
      }

      objc_storeStrong(&v36, 0);
    }

    v34 = _AKLogPasskey();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v51 completion];
      v11 = MEMORY[0x193B165F0]();
      __os_log_helper_16_2_3_8_64_8_64_8_64(v56, v11, v44, v52);
      _os_log_debug_impl(&dword_193225000, v34, OS_LOG_TYPE_DEBUG, "Calling completion block (%@) with passkey (%@) and error (%@)", v56, 0x20u);
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](v12);
    }

    objc_storeStrong(&v34, 0);
    v10 = [v51 completion];
    MEMORY[0x1E69E5920](v10);
    if (v10)
    {
      v9 = [v51 completion];
      v9[2](v9, v44, v52);
      MEMORY[0x1E69E5920](v9);
    }

    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v44, 0);
    v45 = 0;
  }

  else
  {
    v50 = _AKLogSystem();
    v49 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_64_8_64_8_64(v61, v53, v52, location[0]);
      _os_log_error_impl(&dword_193225000, v50, v49, "Unable to resolve passkey authorization (%@) with error (%@) due to missing entry for controller (%@) in table", v61, 0x20u);
    }

    objc_storeStrong(&v50, 0);
    oslog = _AKLogSystem();
    v47 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      v30 = oslog;
      v31 = v47;
      __os_log_helper_16_0_0(v46);
      _os_log_fault_impl(&dword_193225000, v30, v31, "Unexpected nil passkey request state found for authorization controller", v46, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v45 = 1;
  }

  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_authorizationControllerForAccount:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc(getASAuthorizationPlatformPublicKeyCredentialProviderClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v17 = [v3 initWithRelyingPartyIdentifier:@"apple.com"];
  v11 = objc_opt_new();
  v10 = [location[0] username];
  v9 = objc_opt_new();
  v16 = [v17 createCredentialRegistrationRequestWithChallenge:v11 name:v10 userID:?];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  if (v16)
  {
    if (AuthenticationServicesLibraryCore(0))
    {
      v4 = objc_alloc(getASAuthorizationControllerClass());
    }

    else
    {
      v4 = [0 alloc];
    }

    v7 = v4;
    v20 = v16;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v12 = [v7 initWithAuthorizationRequests:?];
    MEMORY[0x1E69E5920](v8);
    v19 = MEMORY[0x1E69E5928](v12);
    v13 = 1;
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v21, "[AKAppleIDPasskeyAuthenticationController _authorizationControllerForAccount:]", v17);
      _os_log_fault_impl(&dword_193225000, v15, v14, "%s: Skipping status check - registrationRequest is nil for passkeyProvider: %@", v21, 0x16u);
    }

    objc_storeStrong(&v15, 0);
    v19 = 0;
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v5 = v19;

  return v5;
}

- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_serializationQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __97__AKAppleIDPasskeyAuthenticationController_authorizationController_didCompleteWithAuthorization___block_invoke;
  v10 = &unk_1E73D60B0;
  v11 = MEMORY[0x1E69E5928](v16);
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = MEMORY[0x1E69E5928](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_serializationQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __89__AKAppleIDPasskeyAuthenticationController_authorizationController_didCompleteWithError___block_invoke;
  v10 = &unk_1E73D60B0;
  v11 = MEMORY[0x1E69E5928](v16);
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = MEMORY[0x1E69E5928](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

@end