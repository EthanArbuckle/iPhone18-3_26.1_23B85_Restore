@interface SOAuthorization
+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4;
+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6;
+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 useInternalExtensions:(BOOL)a5;
+ (void)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6 completion:(id)a7;
+ (void)isExtensionProcessWithAuditToken:(id *)a3 completion:(id)a4;
- (BOOL)isUserInteractionEnabled;
- (NSDictionary)authorizationOptions;
- (OS_dispatch_queue)delegateDispatchQueue;
- (SOAuthorization)init;
- (SOAuthorizationDelegate)delegate;
- (id)kerberosProfiles;
- (id)realms;
- (void)_applicationActivationWithTimeout:(BOOL)a3;
- (void)_cancelAuthorization;
- (void)_extensionCleanup;
- (void)_finishAuthorization:(id)a3 completion:(id)a4;
- (void)_finishAuthorizationWithCredential:(id)a3 error:(id)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)authorization:(id)a3 didCompleteWithCredential:(id)a4 error:(id)a5;
- (void)beginAuthorizationWithOperation:(id)a3 url:(id)a4 httpHeaders:(id)a5 httpBody:(id)a6;
- (void)beginAuthorizationWithParameters:(id)a3;
- (void)beginAuthorizationWithURL:(id)a3 httpHeaders:(id)a4 httpBody:(id)a5;
- (void)cancelAuthorization;
- (void)dealloc;
- (void)debugHintsWithCompletion:(id)a3;
- (void)getAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5;
- (void)presentAuthorizationViewControllerWithHints:(id)a3 requestIdentifier:(id)a4 completion:(id)a5;
- (void)setAuthorizationOptions:(id)a3;
- (void)setDelegateDispatchQueue:(id)a3;
- (void)viewControllerDidCancel:(id)a3;
@end

@implementation SOAuthorization

- (SOAuthorization)init
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[SOAuthorization init]";
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v11.receiver = self;
  v11.super_class = SOAuthorization;
  v4 = [(SOAuthorization *)&v11 init];
  if (v4)
  {
    if (AppSSOCoreLibraryCore())
    {
      v5 = objc_alloc_init(getSOAuthorizationCoreClass());
      authorizationCore = v4->_authorizationCore;
      v4->_authorizationCore = v5;
    }

    *&v4->_enableEmbeddedAuthorizationViewController = 1;
    v7 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    cancelLock = v4->_cancelLock;
    v4->_cancelLock = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOAuthorization;
  [(SOAuthorization *)&v4 dealloc];
}

+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4
{
  v5 = a3;
  if (AppSSOCoreLibraryCore())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    if (_originatorBundleIdentifier)
    {
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 3221225472;
      activity_block[2] = __63__SOAuthorization_canPerformAuthorizationWithURL_responseCode___block_invoke;
      activity_block[3] = &unk_1E813EB00;
      v16 = &v18;
      v15 = v5;
      v17 = a4;
      _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
      v6 = v15;
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __63__SOAuthorization_canPerformAuthorizationWithURL_responseCode___block_invoke_2;
      v10[3] = &unk_1E813EB00;
      v12 = &v18;
      v11 = v5;
      v13 = a4;
      _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v10);
      v6 = v11;
    }

    v8 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v7 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t __63__SOAuthorization_canPerformAuthorizationWithURL_responseCode___block_invoke(void *a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:a1[4] responseCode:a1[6] callerBundleIdentifier:_originatorBundleIdentifier useInternalExtensions:1];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t __63__SOAuthorization_canPerformAuthorizationWithURL_responseCode___block_invoke_2(void *a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:a1[4] responseCode:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 useInternalExtensions:(BOOL)a5
{
  v7 = a3;
  if (AppSSOCoreLibraryCore())
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    if (_originatorBundleIdentifier)
    {
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 3221225472;
      activity_block[2] = __85__SOAuthorization_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke;
      activity_block[3] = &unk_1E813EB00;
      v19 = &v21;
      v18 = v7;
      v20 = a4;
      _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
      v8 = v18;
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __85__SOAuthorization_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke_2;
      v12[3] = &unk_1E813EB28;
      v14 = &v21;
      v13 = v7;
      v15 = a4;
      v16 = a5;
      _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v12);
      v8 = v13;
    }

    v10 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v9 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    v10 = 0;
  }

  return v10 & 1;
}

uint64_t __85__SOAuthorization_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke(void *a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:a1[4] responseCode:a1[6] callerBundleIdentifier:_originatorBundleIdentifier useInternalExtensions:1];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t __85__SOAuthorization_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke_2(uint64_t a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 48) useInternalExtensions:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6
{
  v9 = a3;
  v10 = a5;
  if (AppSSOCoreLibraryCore())
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __108__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions___block_invoke;
    activity_block[3] = &unk_1E813EB50;
    v17 = &v20;
    v15 = v9;
    v18 = a4;
    v16 = v10;
    v19 = a6;
    _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

    v11 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v12 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t __108__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions___block_invoke(uint64_t a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 56) callerBundleIdentifier:*(a1 + 40) useInternalExtensions:*(a1 + 64)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

+ (void)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  if (AppSSOCoreLibraryCore())
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __119__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke;
    activity_block[3] = &unk_1E813EBA0;
    v16 = v11;
    v19 = a4;
    v17 = v12;
    v20 = a6;
    v18 = v13;
    _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    v14 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    (*(v13 + 2))(v13, 0);
  }
}

void __119__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke(uint64_t a1)
{
  SOAuthorizationCoreClass = getSOAuthorizationCoreClass();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __119__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2;
  v7[3] = &unk_1E813EB78;
  v6 = *(a1 + 56);
  v8 = *(a1 + 48);
  [SOAuthorizationCoreClass canPerformAuthorizationWithURL:v3 responseCode:v6 callerBundleIdentifier:v4 useInternalExtensions:v5 completion:v7];
}

- (OS_dispatch_queue)delegateDispatchQueue
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SOAuthorizationCore *)v2->_authorizationCore delegateDispatchQueue];
  objc_sync_exit(v2);

  return v3;
}

- (void)setDelegateDispatchQueue:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SOAuthorizationCore *)v4->_authorizationCore setDelegateDispatchQueue:v5];
  objc_sync_exit(v4);
}

- (NSDictionary)authorizationOptions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SOAuthorizationCore *)v2->_authorizationCore authorizationOptions];
  objc_sync_exit(v2);

  return v3;
}

- (void)setAuthorizationOptions:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SOAuthorizationCore *)v4->_authorizationCore setAuthorizationOptions:v5];
  objc_sync_exit(v4);
}

- (BOOL)isUserInteractionEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SOAuthorizationCore *)v2->_authorizationCore isUserInteractionEnabled];
  objc_sync_exit(v2);

  return v3;
}

- (void)getAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOAuthorization getAuthorizationHintsWithURL:responseCode:completion:]";
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  authorizationCore = self->_authorizationCore;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__SOAuthorization_getAuthorizationHintsWithURL_responseCode_completion___block_invoke;
  v14[3] = &unk_1E813EBC8;
  v15 = v8;
  v12 = v8;
  [(SOAuthorizationCore *)authorizationCore getAuthorizationHintsWithURL:v9 responseCode:a4 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __72__SOAuthorization_getAuthorizationHintsWithURL_responseCode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "hints: %{public}@, error: %{public}@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v5)
    {
      v9 = [[SOAuthorizationHints alloc] initWithAuthorizationHintsCore:v5];
      v8 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    (*(v8 + 16))(v8, v9, v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithURL:(id)a3 httpHeaders:(id)a4 httpBody:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[SOAuthorization beginAuthorizationWithURL:httpHeaders:httpBody:]";
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v14, 0x16u);
  }

  v12 = objc_alloc_init(SOAuthorizationParameters);
  [(SOAuthorizationParameters *)v12 setUrl:v10];

  [(SOAuthorizationParameters *)v12 setHttpHeaders:v9];
  [(SOAuthorizationParameters *)v12 setHttpBody:v8];

  [(SOAuthorizationParameters *)v12 setUseInternalExtensions:1];
  [(SOAuthorization *)self beginAuthorizationWithParameters:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithOperation:(id)a3 url:(id)a4 httpHeaders:(id)a5 httpBody:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[SOAuthorization beginAuthorizationWithOperation:url:httpHeaders:httpBody:]";
    v19 = 2112;
    v20 = self;
    _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v17, 0x16u);
  }

  v15 = objc_alloc_init(SOAuthorizationParameters);
  [(SOAuthorizationParameters *)v15 setOperation:v13];

  [(SOAuthorizationParameters *)v15 setUrl:v12];
  [(SOAuthorizationParameters *)v15 setHttpHeaders:v11];

  [(SOAuthorizationParameters *)v15 setHttpBody:v10];
  [(SOAuthorizationParameters *)v15 setUseInternalExtensions:1];
  [(SOAuthorization *)self beginAuthorizationWithParameters:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithParameters:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v4 identifier];
    v6 = [v4 operation];
    v7 = [v4 url];
    v8 = [v4 httpHeaders];
    v9 = [v4 httpBody];
    v10 = [v4 auditTokenData];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = v4;
    enableEmbeddedAuthorizationViewController = self->_enableEmbeddedAuthorizationViewController;
    *buf = 136317955;
    *&buf[4] = "[SOAuthorization beginAuthorizationWithParameters:]";
    *&buf[12] = 2114;
    *&buf[14] = v32;
    *&buf[22] = 2114;
    v43 = v6;
    strcpy(v44, "p\bhash");
    v44[7] = 0;
    *&v44[8] = 0;
    v45 = 2117;
    v46 = v7;
    v47 = 2113;
    v48 = v8;
    v49 = 2113;
    v50 = v9;
    v51 = 2114;
    v52 = v10;
    v53 = 2114;
    v54 = WeakRetained;
    v55 = 1024;
    v56 = enableEmbeddedAuthorizationViewController;
    v4 = v12;
    v57 = 1024;
    v58 = [(SOAuthorization *)self isUserInteractionEnabled];
    v59 = 2112;
    v60 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@, operation = %{public}@, url = %{sensitive, mask.hash}@, httpHeaders = %{private}@, httpBody = %{private}@, auditToken = %{public}@, delegate = %{public}@, enableEmbeddedAVC = %d, enableUI = %d on %@", buf, 0x72u);
  }

  if (_CFMZEnabled())
  {
    self->_enableEmbeddedAuthorizationViewController = 0;
  }

  if (![(SOAuthorization *)self isUserInteractionEnabled])
  {
    v14 = dispatch_get_global_queue(0, 0);
    [(SOAuthorizationCore *)self->_authorizationCore setDelegateDispatchQueue:v14];
  }

  if (self->_enableEmbeddedAuthorizationViewController && (v15 = objc_loadWeakRetained(&self->_delegate)) != 0 && (v16 = objc_loadWeakRetained(&self->_delegate), v17 = objc_opt_respondsToSelector(), v16, v15, (v17 & 1) != 0))
  {
    v18 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1317000, v18, OS_LOG_TYPE_DEFAULT, "originator will present authorization view controller", buf, 2u);
    }

    v19 = self;
    objc_sync_enter(v19);
    v20 = [(SOAuthorizationCore *)v19->_authorizationCore requestParametersCore];

    if (v20)
    {
      v21 = SO_LOG_SOAuthorization();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_1C1317000, v21, OS_LOG_TYPE_DEFAULT, "%@ is already authorizing => ignoring a new authorization request", buf, 0xCu);
      }

      objc_sync_exit(v19);
    }

    else
    {
      objc_sync_exit(v19);

      v23 = [(SOAuthorization *)v19 cancelLock];
      objc_sync_enter(v23);
      if ([(SOAuthorization *)v19 cancelled])
      {
        v24 = SO_LOG_SOAuthorization();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v4 identifier];
          *buf = 138543362;
          *&buf[4] = v25;
          _os_log_impl(&dword_1C1317000, v24, OS_LOG_TYPE_DEFAULT, "Request was cancelled: identifier = %{public}@", buf, 0xCu);
        }

        v26 = [getSOErrorHelperClass_2() errorWithCode:-4];
        [(SOAuthorization *)v19 _finishAuthorizationWithCredential:0 error:v26];

        objc_sync_exit(v23);
      }

      else
      {
        objc_sync_exit(v23);

        v38 = 0;
        v39 = &v38;
        v40 = 0x2050000000;
        v27 = getSOAuthorizationRequestParametersCoreClass_softClass;
        v41 = getSOAuthorizationRequestParametersCoreClass_softClass;
        if (!getSOAuthorizationRequestParametersCoreClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getSOAuthorizationRequestParametersCoreClass_block_invoke;
          v43 = &unk_1E813E230;
          *v44 = &v38;
          __getSOAuthorizationRequestParametersCoreClass_block_invoke(buf);
          v27 = v39[3];
        }

        v28 = v27;
        _Block_object_dispose(&v38, 8);
        v29 = [[v27 alloc] initWithAuthorizationParameters:v4];
        v30 = [(SOAuthorization *)v19 authorizationOptions];
        [v29 setAuthorizationOptions:v30];

        [v29 setEnableUserInteraction:{-[SOAuthorization isUserInteractionEnabled](v19, "isUserInteractionEnabled")}];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke;
        v35[3] = &unk_1E813E340;
        v35[4] = v19;
        v36 = v29;
        v37 = v4;
        v31 = v29;
        _os_activity_initiate(&dword_1C1317000, "beginAuthorizationWithParametersEmbedded", OS_ACTIVITY_FLAG_DEFAULT, v35);
      }
    }
  }

  else
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_43;
    activity_block[3] = &unk_1E813E390;
    activity_block[4] = self;
    v34 = v4;
    _os_activity_initiate(&dword_1C1317000, "beginAuthorizationWithParameters", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_2;
  v6[3] = &unk_1E813EC68;
  v4 = v2;
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 beginAuthorizationWithRequestParameters:v4 completion:v6];
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[4] identifier];
    *buf = 138544130;
    v29 = v11;
    v30 = 2114;
    v31 = v7;
    v32 = 2114;
    v33 = v8;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "beginAuthorizationWithRequestParameters: identifier = %{public}@, extensionBundleId = %{public}@, endpoint = %{public}@, error = %{public}@", buf, 0x2Au);
  }

  v12 = a1[5];
  if (v7 && v8)
  {
    v13 = [v12 cancelLock];
    objc_sync_enter(v13);
    if ([a1[5] cancelled])
    {
      v14 = SO_LOG_SOAuthorization();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [a1[6] identifier];
        *buf = 138543362;
        v29 = v15;
        _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEFAULT, "Request was cancelled: identifier = %{public}@", buf, 0xCu);
      }

      v16 = a1[5];
      v17 = [getSOErrorHelperClass_2() errorWithCode:-4];
      [v16 _finishAuthorizationWithCredential:0 error:v17];

      objc_sync_exit(v13);
    }

    else
    {
      objc_sync_exit(v13);

      v18 = +[SOExtensionManager sharedInstance];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_33;
      v23[3] = &unk_1E813EC40;
      v19 = a1[4];
      v20 = a1[5];
      v21 = a1[6];
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v8;
      [v18 loadExtensionWithBundleIdentifier:v7 completion:v23];
    }
  }

  else
  {
    [v12 _finishAuthorizationWithCredential:0 error:v9];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_33(id *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a1[4] identifier];
    v10 = [*(a1[5] + 2) localizedExtensionDisplayName];
    *buf = 138543874;
    v31 = v9;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v7;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "loadExtensionWithBundleIdentifier: identifier = %{public}@, extension = %{public}@, error = %{public}@", buf, 0x20u);
  }

  v11 = a1[5];
  if (v6)
  {
    v12 = [v11 cancelLock];
    objc_sync_enter(v12);
    if ([a1[5] cancelled])
    {
      v13 = SO_LOG_SOAuthorization();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [a1[6] identifier];
        *buf = 138543362;
        v31 = v14;
        _os_log_impl(&dword_1C1317000, v13, OS_LOG_TYPE_DEFAULT, "Request was cancelled: identifier = %{public}@", buf, 0xCu);
      }

      v15 = a1[5];
      v16 = [getSOErrorHelperClass_2() errorWithCode:-4];
      [v15 _finishAuthorizationWithCredential:0 error:v16];

      objc_sync_exit(v12);
    }

    else
    {
      objc_sync_exit(v12);

      objc_storeStrong(a1[5] + 2, a2);
      v17 = a1[5];
      v18 = v17[2];
      v19 = [a1[4] identifier];
      [v18 saveDelegate:v17 forRequestIdentifier:v19];

      v20 = *(a1[5] + 2);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_34;
      v27[3] = &unk_1E813EC18;
      *&v21 = a1[4];
      *(&v21 + 1) = a1[5];
      v26 = v21;
      v22 = a1[6];
      v23 = a1[7];
      *&v24 = v22;
      *(&v24 + 1) = v23;
      v28 = v26;
      v29 = v24;
      [v20 requestAuthorizationViewControllerWithCompletion:v27];
    }
  }

  else
  {
    [v11 _finishAuthorizationWithCredential:0 error:v7];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) identifier];
    *buf = 138543874;
    v25 = v9;
    v26 = 2114;
    v27 = v6;
    v28 = 2114;
    v29 = v7;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "requestAuthorizationViewControllerWithCompletion: identifier = %{public}@, remoteViewController = %{public}@, error = %{public}@", buf, 0x20u);
  }

  v10 = *(a1 + 40);
  if (v6)
  {
    v11 = [*(a1 + 40) cancelLock];
    objc_sync_enter(v11);
    if ([*(a1 + 40) cancelled])
    {
      v12 = SO_LOG_SOAuthorization();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 48) identifier];
        *buf = 138543362;
        v25 = v13;
        _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_DEFAULT, "Request was cancelled: identifier = %{public}@", buf, 0xCu);
      }

      v14 = *(a1 + 40);
      v15 = [getSOErrorHelperClass_2() errorWithCode:-4];
      [v14 _finishAuthorizationWithCredential:0 error:v15];

      objc_sync_exit(v11);
    }

    else
    {
      objc_sync_exit(v11);

      objc_storeStrong((*(a1 + 40) + 24), a2);
      v16 = *(*(a1 + 40) + 16);
      v17 = *(a1 + 56);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_38;
      v21[3] = &unk_1E813EBF0;
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v22 = v18;
      v23 = v19;
      [v16 beginAuthorizationWithServiceXPCEndpoint:v17 completion:v21];
      v11 = v22;
    }
  }

  else
  {
    v11 = [getSOErrorHelperClass_2() errorWithCode:-1000 message:@"Missing remote view controller" suberror:v7];
    [v10 _finishAuthorizationWithCredential:0 error:v11];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_38(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) identifier];
    v9 = 138543874;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "beginAuthorizationWithServiceXPCEndpoint: identifier = %{public}@, success = %d, error = %{public}@", &v9, 0x1Cu);
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 40) _finishAuthorizationWithCredential:0 error:v5];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_43(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) authorizationParametersCore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_2_44;
  v4[3] = &unk_1E813EC90;
  v4[4] = *(a1 + 32);
  [v2 beginAuthorizationWithParameters:v3 completion:v4];
}

- (void)cancelAuthorization
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SOAuthorization cancelAuthorization]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (self->_extension)
  {
    v4 = [(SOAuthorization *)self cancelLock];
    objc_sync_enter(v4);
    [(SOAuthorization *)self setCancelled:1];
    objc_sync_exit(v4);

    [(SOAuthorization *)self _cancelAuthorization];
  }

  else
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __38__SOAuthorization_cancelAuthorization__block_invoke;
    activity_block[3] = &unk_1E813ECB8;
    activity_block[4] = self;
    _os_activity_initiate(&dword_1C1317000, "cancelAuthorization", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)debugHintsWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOAuthorization debugHintsWithCompletion:]";
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SOAuthorization_debugHintsWithCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  _os_activity_initiate(&dword_1C1317000, "debugHintsWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v8);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_finishAuthorization:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorization _finishAuthorization:? completion:?];
  }

  extension = self->_extension;
  if (extension)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SOAuthorization__finishAuthorization_completion___block_invoke;
    v10[3] = &unk_1E813ECE0;
    v10[4] = self;
    v11 = v7;
    [(SOExtension *)extension finishAuthorization:v6 completion:v10];
  }

  else
  {
    [(SOAuthorizationCore *)self->_authorizationCore finishAuthorization:v6 completion:v7];
  }
}

void __51__SOAuthorization__finishAuthorization_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _extensionCleanup];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)_cancelAuthorization
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __39__SOAuthorization__cancelAuthorization__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [objc_alloc(getSOAuthorizationCredentialCoreClass()) initWithAuthorizationCredential:v5];
  }

  [*(a1 + 32) _finishAuthorizationWithCredential:a2 error:v6];
}

- (void)_finishAuthorizationWithCredential:(id)a3 error:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SOAuthorizationCore *)self->_authorizationCore requestParametersCore];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *buf = 136316419;
    *&buf[4] = "[SOAuthorization _finishAuthorizationWithCredential:error:]";
    *&buf[12] = 2113;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v43 = v7;
    *v44 = 2114;
    *&v44[2] = v9;
    v45 = 2114;
    v46 = WeakRetained;
    v47 = 2112;
    v48 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s credentialCore = %{private}@, error = %{public}@, requestParametersCore = %{public}@, delegate = %{public}@ on %@", buf, 0x3Eu);
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = [(SOAuthorizationCore *)v11->_authorizationCore requestParametersCore];
  v13 = v12 == 0;

  if (v13)
  {
    v29 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization _finishAuthorizationWithCredential:error:];
    }

    objc_sync_exit(v11);
  }

  else
  {
    if (v11->_extension || ![(SOAuthorization *)v11 isUserInteractionEnabled])
    {
      v23 = 0;
    }

    else
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2050000000;
      v14 = getSOConfigurationClientClass_softClass;
      v41 = getSOConfigurationClientClass_softClass;
      if (!getSOConfigurationClientClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSOConfigurationClientClass_block_invoke;
        v43 = &unk_1E813E230;
        *v44 = &v38;
        __getSOConfigurationClientClass_block_invoke(buf);
        v14 = v39[3];
      }

      v15 = v14;
      _Block_object_dispose(&v38, 8);
      v16 = [v14 defaultClient];
      v17 = [(SOAuthorizationCore *)v11->_authorizationCore requestParametersCore];
      v18 = [v17 url];
      v19 = [(SOAuthorizationCore *)v11->_authorizationCore requestParametersCore];
      v20 = [v16 profileForURL:v18 responseCode:{objc_msgSend(v19, "responseCode")}];

      if (v20)
      {
        v21 = [v20 extensionBundleIdentifier];
        v22 = [SOExtensionManager isInternalExtensionBundleIdentifier:v21];

        v23 = !v22;
      }

      else
      {
        v23 = 0;
      }

      v31 = SO_LOG_SOAuthorization();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [SOAuthorization _finishAuthorizationWithCredential:error:];
      }
    }

    v24 = [(SOAuthorizationCore *)v11->_authorizationCore requestParametersCore];
    v25 = [v24 identifier];

    [(SOAuthorizationCore *)v11->_authorizationCore setRequestParametersCore:0];
    objc_sync_exit(v11);

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke;
    v34[3] = &unk_1E813E540;
    v34[4] = v11;
    v26 = v25;
    v35 = v26;
    v36 = v7;
    v37 = v6;
    v27 = MEMORY[0x1C68F1C40](v34);
    v28 = v27;
    if (v23)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_67;
      v32[3] = &unk_1E813E450;
      v32[4] = v11;
      v33 = v27;
      dispatch_async(MEMORY[0x1E69E96A0], v32);
    }

    else
    {
      [(SOAuthorizationCore *)v11->_authorizationCore performBlockOnDelegateQueue:v27];
    }

    v11 = v26;
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = (a1 + 48);
    if (*(a1 + 48))
    {
      if ([getSOErrorHelperClass_2() error:*v3 hasCode:-2])
      {
        if (objc_opt_respondsToSelector())
        {
          v4 = SO_LOG_SOAuthorization();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_4(a1);
          }

          [v2 authorizationDidCancel:*(a1 + 32)];
        }

        goto LABEL_53;
      }

      if ([getSOErrorHelperClass_2() error:*v3 hasCode:-5])
      {
        if (objc_opt_respondsToSelector())
        {
          v22 = SO_LOG_SOAuthorization();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_25;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (![getSOErrorHelperClass_2() error:*v3 hasCode:-9])
        {
          if (objc_opt_respondsToSelector())
          {
            v27 = SO_LOG_SOAuthorization();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_1(a1);
            }

            [v2 authorization:*(a1 + 32) didCompleteWithError:*(a1 + 48)];
          }

          goto LABEL_53;
        }

        if (objc_opt_respondsToSelector())
        {
          v22 = SO_LOG_SOAuthorization();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
LABEL_25:
            __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_2(a1);
          }

LABEL_26:

          [v2 authorizationDidNotHandle:*(a1 + 32)];
        }
      }

LABEL_53:
      v34 = SO_LOG_SOAuthorization();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_12(a1);
      }

      v7 = *(a1 + 32);
      v35 = *(a1 + 40);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_66;
      v38[3] = &unk_1E813EBF0;
      v38[4] = v7;
      v8 = &v39;
      v9 = v35;
      v39 = v9;
      v10 = v38;
      goto LABEL_56;
    }

    v11 = *(a1 + 56);
    if (!v11)
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = SO_LOG_SOAuthorization();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_11(a1);
        }

        [v2 authorizationDidComplete:*(a1 + 32)];
      }

      goto LABEL_53;
    }

    v12 = [v11 secKeyProxyEndpoints];

    if (v12)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_53;
      }

      v13 = *(*(a1 + 32) + 8);
      v14 = [*(a1 + 56) secKeyProxyEndpoints];
      v40 = 0;
      v15 = [v13 createSecKeysFromSecKeyProxyEndpoints:v14 error:&v40];
      v16 = v40;

      if (v15)
      {
        v17 = objc_alloc_init(SOAuthorizationResult);
        v18 = [*(a1 + 56) httpAuthorizationHeaders];
        [(SOAuthorizationResult *)v17 setHttpAuthorizationHeaders:v18];

        v19 = [*(a1 + 56) httpResponse];
        [(SOAuthorizationResult *)v17 setHttpResponse:v19];

        v20 = [*(a1 + 56) httpBody];
        [(SOAuthorizationResult *)v17 setHttpBody:v20];

        [(SOAuthorizationResult *)v17 setPrivateKeys:v15];
        v21 = SO_LOG_SOAuthorization();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_5(a1);
        }

        [v2 authorization:*(a1 + 32) didCompleteWithAuthorizationResult:v17];
      }

      else
      {
        v32 = SO_LOG_SOAuthorization();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_6(v16, v32);
        }

        if (objc_opt_respondsToSelector())
        {
          v33 = SO_LOG_SOAuthorization();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_7(a1);
          }

          [v2 authorization:*(a1 + 32) didCompleteWithError:v16];
        }
      }
    }

    else
    {
      v24 = [*(a1 + 56) httpAuthorizationHeaders];

      if (v24)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_53;
        }

        v25 = SO_LOG_SOAuthorization();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_8(a1);
        }

        v26 = *(a1 + 32);
        v16 = [*(a1 + 56) httpAuthorizationHeaders];
        [v2 authorization:v26 didCompleteWithHTTPAuthorizationHeaders:v16];
      }

      else
      {
        v28 = [*(a1 + 56) httpResponse];

        if (!v28)
        {
          if (objc_opt_respondsToSelector())
          {
            v36 = [getSOErrorHelperClass_2() errorWithCode:-1000 message:@"Invalid credential"];
            v37 = SO_LOG_SOAuthorization();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_7(a1);
            }

            [v2 authorization:*(a1 + 32) didCompleteWithError:v36];
          }

          goto LABEL_53;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_53;
        }

        v29 = SO_LOG_SOAuthorization();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_9(a1);
        }

        v30 = *(a1 + 32);
        v16 = [*(a1 + 56) httpResponse];
        v31 = [*(a1 + 56) httpBody];
        [v2 authorization:v30 didCompleteWithHTTPResponse:v16 httpBody:v31];
      }
    }

    goto LABEL_53;
  }

  v5 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_13(a1);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47;
  v41[3] = &unk_1E813EBF0;
  v41[4] = v7;
  v8 = &v42;
  v9 = v6;
  v42 = v9;
  v10 = v41;
LABEL_56:
  [v7 _finishAuthorization:v9 completion:v10];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47(uint64_t a1)
{
  v2 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47_cold_1(a1);
  }
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_66(uint64_t a1)
{
  v2 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47_cold_1(a1);
  }
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_67(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 applicationState];

  if (v3)
  {
    v4 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_67_cold_1();
    }

    v5 = MEMORY[0x1C68F1C40](*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:*(a1 + 32) selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v10 = [v9 applicationState];

    if (v10)
    {
      v11 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_71;
      block[3] = &unk_1E813ECB8;
      block[4] = *(a1 + 32);
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [*(a1 + 32) _applicationActivationWithTimeout:0];
    }
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 8);

    [v13 performBlockOnDelegateQueue:v12];
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorization applicationDidBecomeActive:];
  }

  [(SOAuthorization *)self _applicationActivationWithTimeout:0];
}

- (void)_applicationActivationWithTimeout:(BOOL)a3
{
  if (self->_pendingFinishAuthorizationBlock)
  {
    v4 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization _applicationActivationWithTimeout:];
    }

    [(SOAuthorizationCore *)self->_authorizationCore performBlockOnDelegateQueue:self->_pendingFinishAuthorizationBlock];
    pendingFinishAuthorizationBlock = self->_pendingFinishAuthorizationBlock;
    self->_pendingFinishAuthorizationBlock = 0;

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self];
  }
}

- (void)_extensionCleanup
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    extensionViewController = self->_extensionViewController;
    authorizationViewController = self->_authorizationViewController;
    v12 = 136316162;
    v13 = "[SOAuthorization _extensionCleanup]";
    v14 = 2114;
    v15 = extension;
    v16 = 2114;
    v17 = extensionViewController;
    v18 = 2114;
    v19 = authorizationViewController;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@, extensionViewController = %{public}@, authorizationViewController = %{public}@ on %@", &v12, 0x34u);
  }

  v7 = self->_extension;
  if (v7)
  {
    [(SOExtension *)v7 unload];
    v8 = self->_extension;
    self->_extension = 0;
  }

  v9 = self->_extensionViewController;
  self->_extensionViewController = 0;

  v10 = self->_authorizationViewController;
  self->_authorizationViewController = 0;

  v11 = *MEMORY[0x1E69E9840];
}

- (void)authorization:(id)a3 didCompleteWithCredential:(id)a4 error:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315907;
    v13 = "[SOAuthorization authorization:didCompleteWithCredential:error:]";
    v14 = 2113;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "%s %{private}@, %{public}@ on %@", &v12, 0x2Au);
  }

  if (v7)
  {
    v10 = [objc_alloc(getSOAuthorizationCredentialCoreClass()) initWithAuthorizationCredential:v7];
  }

  else
  {
    v10 = 0;
  }

  [(SOAuthorization *)self _finishAuthorizationWithCredential:v10 error:v8];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)presentAuthorizationViewControllerWithHints:(id)a3 requestIdentifier:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOAuthorization presentAuthorizationViewControllerWithHints:requestIdentifier:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v13 = getSOUIAuthorizationViewControllerClass_softClass;
    v28 = getSOUIAuthorizationViewControllerClass_softClass;
    if (!getSOUIAuthorizationViewControllerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSOUIAuthorizationViewControllerClass_block_invoke;
      v30 = &unk_1E813E230;
      v31 = &v25;
      __getSOUIAuthorizationViewControllerClass_block_invoke(buf);
      v13 = v26[3];
    }

    v14 = v13;
    _Block_object_dispose(&v25, 8);
    v15 = [[v13 alloc] initWithExtensionViewController:self->_extensionViewController hints:v8];
    authorizationViewController = self->_authorizationViewController;
    self->_authorizationViewController = v15;

    [(SOUIAuthorizationViewController *)self->_authorizationViewController setDelegate:self];
    v17 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization presentAuthorizationViewControllerWithHints:&self->_authorizationViewController requestIdentifier:? completion:?];
    }

    v18 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization presentAuthorizationViewControllerWithHints:requestIdentifier:completion:];
    }

    v19 = self->_authorizationViewController;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __92__SOAuthorization_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke;
    v23[3] = &unk_1E813E6A8;
    v24 = v10;
    [WeakRetained authorization:self presentViewController:v19 withCompletion:v23];
    v20 = v24;
    goto LABEL_15;
  }

  v21 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [SOAuthorization presentAuthorizationViewControllerWithHints:requestIdentifier:completion:];
  }

  if (v10)
  {
    v20 = [getSOErrorHelperClass_2() internalErrorWithMessage:@"no authorization delegate"];
    (*(v10 + 2))(v10, 0, v20);
LABEL_15:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __92__SOAuthorization_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __92__SOAuthorization_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke_cold_1();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)viewControllerDidCancel:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    authorizationViewController = self->_authorizationViewController;
    v8 = 136315906;
    v9 = "[SOAuthorization viewControllerDidCancel:]";
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = authorizationViewController;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s viewController = %{public}@, authorizationViewController = %{public}@ on %@", &v8, 0x2Au);
  }

  if (self->_authorizationViewController == v4)
  {
    [(SOAuthorization *)self _cancelAuthorization];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (SOAuthorizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)isExtensionProcessWithAuditToken:(id *)a3 completion:(id)a4
{
  v5 = a4;
  if (AppSSOCoreLibraryCore())
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    v6 = *&a3->var0[4];
    v10 = *a3->var0;
    v11 = v6;
    activity_block[2] = __72__SOAuthorization_Process__isExtensionProcessWithAuditToken_completion___block_invoke;
    activity_block[3] = &unk_1E813ED30;
    v9 = v5;
    _os_activity_initiate(&dword_1C1317000, "isExtensionProcessWithAuditToken", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    v7 = SO_LOG_SOAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    if (v5)
    {
      (*(v5 + 2))(v5, 0, 0);
    }
  }
}

uint64_t __72__SOAuthorization_Process__isExtensionProcessWithAuditToken_completion___block_invoke(uint64_t a1)
{
  SOAuthorizationCoreClass = getSOAuthorizationCoreClass();
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  return [SOAuthorizationCoreClass isExtensionProcessWithAuditToken:v6 completion:v3];
}

- (id)realms
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOAuthorization(Kerberos) realms]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v4 = [(SOAuthorizationCore *)self->_authorizationCore realms];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)kerberosProfiles
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOAuthorization(Kerberos) kerberosProfiles]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v4 = [(SOAuthorizationCore *)self->_authorizationCore kerberosProfiles];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_finishAuthorization:(uint64_t)a1 completion:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_finishAuthorizationWithCredential:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_finishAuthorizationWithCredential:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_6(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "failed to create SecKeys from SecKeyProxyEndpoints: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_7(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_9(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_11(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_12(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_13(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(&dword_1C1317000, v1, OS_LOG_TYPE_ERROR, "no SPI authorization delegate, identifier = %{public}@", v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_67_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)applicationDidBecomeActive:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_applicationActivationWithTimeout:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)presentAuthorizationViewControllerWithHints:(uint64_t *)a1 requestIdentifier:(uint64_t *)a2 completion:.cold.1(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)presentAuthorizationViewControllerWithHints:requestIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __92__SOAuthorization_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end