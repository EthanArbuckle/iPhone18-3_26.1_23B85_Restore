@interface SOExtension
- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForSession;
- (BOOL)hasAssociatedDomainsApproved;
- (BOOL)hasURLApprovedAssociatedDomain:(id)a3 cache:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToExtension:(id)a3;
- (NSArray)authenticationMethods;
- (NSString)containerAppBundleIdentifier;
- (NSString)containerAppPath;
- (NSString)description;
- (NSString)extensionBundleIdentifier;
- (NSString)localizedExtensionDisplayName;
- (NSUUID)sessionID;
- (SOExtension)initWithExtension:(id)a3;
- (id)_contextForSession;
- (id)findDelegateForIdentifier:(id)a3;
- (int)requestCount;
- (int64_t)extensionRequestsMode;
- (void)_beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4;
- (void)_beginAuthorizationWithServiceXPCEndpoint:(id)a3 completion:(id)a4;
- (void)_connectContextToSessionWithRequestIdentifier:(id)a3 completion:(id)a4;
- (void)_finishAuthorization:(id)a3 withCompletion:(id)a4;
- (void)_finishedSettingUpSession:(id)a3;
- (void)_otherVersionError:(id)a3;
- (void)_setupExtension;
- (void)_setupNonUISessionIfNecessaryWithCompletion:(id)a3;
- (void)_setupNonUISessionWithCompletion:(id)a3;
- (void)_setupSessionHelperForIOSWithCompletion:(id)a3;
- (void)_setupSessionIfNecessaryWithCompletion:(id)a3;
- (void)authorization:(id)a3 didCompleteWithCredential:(id)a4 error:(id)a5;
- (void)beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4;
- (void)beginAuthorizationWithServiceXPCEndpoint:(id)a3 completion:(id)a4;
- (void)beginDeviceRegistrationUsingOptions:(int64_t)a3 extensionData:(id)a4 completion:(id)a5;
- (void)beginUserRegistrationUsingUserName:(id)a3 authenticationMethod:(int)a4 options:(int64_t)a5 extensionData:(id)a6 completion:(id)a7;
- (void)canPerformRegistrationCompletion:(id)a3;
- (void)cancelAuthorization:(id)a3 completion:(id)a4;
- (void)checkAssociatedDomainsWithCache:(id)a3;
- (void)checkAssociatedDomainsWithCompletion:(id)a3;
- (void)dealloc;
- (void)decrementRequestCount;
- (void)displayNamesForGroups:(id)a3 extensionData:(id)a4 completion:(id)a5;
- (void)finishAuthorization:(id)a3 completion:(id)a4;
- (void)incrementRequestCount;
- (void)keyWillRotateForKeyType:(int64_t)a3 keyProxyEndpoint:(id)a4 extensionData:(id)a5 completion:(id)a6;
- (void)presentAuthorizationViewControllerWithHints:(id)a3 requestIdentifier:(id)a4 completion:(id)a5;
- (void)presentRegistrationViewControllerWithCompletion:(id)a3;
- (void)profilePictureForUserUsingExtensionData:(id)a3 completion:(id)a4;
- (void)protocolVersionCompletion:(id)a3;
- (void)registrationDidCancelWithCompletion:(id)a3;
- (void)registrationDidCompleteWithCompletion:(id)a3;
- (void)removeDelegateForRequestIdentifier:(id)a3;
- (void)removeExpiredEntriesFromCache:(id)a3;
- (void)requestAuthorizationViewControllerWithCompletion:(id)a3;
- (void)requestReauthenticationWithRequestIdentifier:(id)a3 completion:(id)a4;
- (void)saveDelegate:(id)a3 forRequestIdentifier:(id)a4;
- (void)setupNonUISessionWithCompletion:(id)a3;
- (void)supportedDeviceEncryptionAlgorithmsCompletion:(id)a3;
- (void)supportedDeviceSigningAlgorithmsCompletion:(id)a3;
- (void)supportedGrantTypesCompletion:(id)a3;
- (void)supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:(id)a3;
- (void)unload;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SOExtension

- (SOExtension)initWithExtension:(id)a3
{
  v5 = a3;
  v31.receiver = self;
  v31.super_class = SOExtension;
  v6 = [(SOExtension *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, a3);
    v7->_requestCount = 0;
    associatedDomains = v7->_associatedDomains;
    v7->_associatedDomains = 0;

    v9 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    sessionIDLock = v7->_sessionIDLock;
    v7->_sessionIDLock = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    requestCountLock = v7->_requestCountLock;
    v7->_requestCountLock = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    associatedDomainLock = v7->_associatedDomainLock;
    v7->_associatedDomainLock = v13;

    v15 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    extensionDelegatesLock = v7->_extensionDelegatesLock;
    v7->_extensionDelegatesLock = v15;

    v17 = MEMORY[0x1E696AEC0];
    v18 = [(SOExtension *)v7 localizedExtensionDisplayName];
    v19 = [v17 stringWithFormat:@"com.apple.AppSSO.extension-queue-(%@)", v18];

    v20 = dispatch_queue_create([v19 cStringUsingEncoding:4], 0);
    queue = v7->_queue;
    v7->_queue = v20;

    v22 = MEMORY[0x1E696AEC0];
    v23 = [(SOExtension *)v7 localizedExtensionDisplayName];
    v24 = [v22 stringWithFormat:@"com.apple.PlatformSSO.extension-queue-(%@)", v23];

    v25 = dispatch_queue_create([v24 cStringUsingEncoding:4], 0);
    pssoQueue = v7->_pssoQueue;
    v7->_pssoQueue = v25;

    v27 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    extensionDelegates = v7->_extensionDelegates;
    v7->_extensionDelegates = v27;

    [(SOExtension *)v7 _setupExtension];
    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v7 selector:sel__otherVersionError_ name:@"com.apple.AppSSO.SOExtension.OtherVersionError" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOExtension;
  [(SOExtension *)&v4 dealloc];
}

- (NSUUID)sessionID
{
  v3 = self->_sessionIDLock;
  objc_sync_enter(v3);
  v4 = self->_sessionID;
  objc_sync_exit(v3);

  return v4;
}

- (int)requestCount
{
  v2 = self;
  v3 = [(SOExtension *)self requestCountLock];
  objc_sync_enter(v3);
  LODWORD(v2) = v2->_requestCount;
  objc_sync_exit(v3);

  return v2;
}

- (void)incrementRequestCount
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(SOExtension *)self requestCountLock];
  objc_sync_enter(v3);
  ++self->_requestCount;
  v4 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_requestCount];
    v7 = 136315650;
    v8 = "[SOExtension incrementRequestCount]";
    v9 = 2114;
    v10 = v5;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s count now %{public}@ on %@", &v7, 0x20u);
  }

  objc_sync_exit(v3);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)decrementRequestCount
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(SOExtension *)self requestCountLock];
  objc_sync_enter(v3);
  requestCount = self->_requestCount;
  if (requestCount <= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = requestCount - 1;
  }

  self->_requestCount = v5;
  v6 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_requestCount];
    v9 = 136315650;
    v10 = "[SOExtension decrementRequestCount]";
    v11 = 2114;
    v12 = v7;
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "%s count now %{public}@ on %@", &v9, 0x20u);
  }

  objc_sync_exit(v3);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setupExtension
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v5, &location);
  v3 = [(SOExtension *)self extension:v4];
  [v3 setRequestInterruptionBlock:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__SOExtension__setupExtension__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__SOExtension__setupExtension__block_invoke_2;
    v7[3] = &unk_1E813E390;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __30__SOExtension__setupExtension__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __30__SOExtension__setupExtension__block_invoke_2_cold_1();
  }

  v3 = [*(a1 + 32) sessionIDLock];
  objc_sync_enter(v3);
  v4 = *(*(a1 + 32) + 8);
  objc_sync_exit(v3);

  if ([v4 isEqual:*(a1 + 40)])
  {
    v5 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __30__SOExtension__setupExtension__block_invoke_2_cold_2();
    }

    v6 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v6);
    if (*(*(a1 + 32) + 8))
    {
      v7 = [*(a1 + 32) extension];
      [v7 cancelExtensionRequestWithIdentifier:*(*(a1 + 32) + 8)];

      v8 = *(a1 + 32);
      v9 = *(v8 + 8);
      *(v8 + 8) = 0;

      v10 = *(*(a1 + 32) + 32);
      *(*(a1 + 32) + 32) = 0;
    }

    objc_sync_exit(v6);

    v11 = [*(a1 + 32) extensionDelegatesLock];
    objc_sync_enter(v11);
    v12 = NSAllMapTableKeys(*(*(a1 + 32) + 40));
    objc_sync_exit(v11);

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = *(a1 + 32);
          v19 = [getSOErrorHelperClass_0() errorWithCode:-3 message:{@"connection to extension interrupted", v21}];
          [v18 authorization:v17 didCompleteWithCredential:0 error:v19];
        }

        v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_otherVersionError:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = [v17 userInfo];
  v4 = [v18 objectForKeyedSubscript:@"bundleIdentifier"];
  v5 = [(SOExtension *)self extensionBundleIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "[SOExtension _otherVersionError:]";
      v26 = 2114;
      v27 = v4;
      v28 = 2112;
      v29 = self;
      _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
    }

    v8 = [(SOExtension *)self extensionDelegatesLock];
    objc_sync_enter(v8);
    v9 = NSAllMapTableKeys(self->_extensionDelegates);
    objc_sync_exit(v8);

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [(SOExtension *)self findDelegateForIdentifier:v14];
          if (objc_opt_respondsToSelector())
          {
            [v15 authorizationDidFailWithOtherVersionError:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)saveDelegate:(id)a3 forRequestIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[SOExtension saveDelegate:forRequestIdentifier:]";
    v15 = 2114;
    v16 = v7;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v13, 0x20u);
  }

  v9 = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(v9);
  [(NSMapTable *)self->_extensionDelegates setObject:v6 forKey:v7];
  v10 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMapTable count](self->_extensionDelegates, "count")}];
    v13 = 136315650;
    v14 = "[SOExtension saveDelegate:forRequestIdentifier:]";
    v15 = 2114;
    v16 = v11;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "%s current delegate: %{public}@ on %@", &v13, 0x20u);
  }

  objc_sync_exit(v9);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)findDelegateForIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SOExtension findDelegateForIdentifier:]";
    v12 = 2114;
    v13 = v4;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v10, 0x20u);
  }

  v6 = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(v6);
  v7 = [(NSMapTable *)self->_extensionDelegates objectForKey:v4];
  objc_sync_exit(v6);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)removeDelegateForRequestIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SOExtension removeDelegateForRequestIdentifier:]";
    v12 = 2114;
    v13 = v4;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v10, 0x20u);
  }

  v6 = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(v6);
  [(NSMapTable *)self->_extensionDelegates removeObjectForKey:v4];
  v7 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMapTable count](self->_extensionDelegates, "count")}];
    v10 = 136315650;
    v11 = "[SOExtension removeDelegateForRequestIdentifier:]";
    v12 = 2114;
    v13 = v8;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s current delegates: %{public}@ on %@", &v10, 0x20u);
  }

  objc_sync_exit(v6);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setupNonUISessionWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension setupNonUISessionWithCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__SOExtension_setupNonUISessionWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestAuthorizationViewControllerWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension requestAuthorizationViewControllerWithCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SOExtension_requestAuthorizationViewControllerWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    *buf = 136315650;
    v18 = "[SOExtension beginAuthorizationWithRequestParameters:completion:]";
    v19 = 2114;
    v20 = v9;
    v21 = 2112;
    v22 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SOExtension_beginAuthorizationWithRequestParameters_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithServiceXPCEndpoint:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOExtension beginAuthorizationWithServiceXPCEndpoint:completion:]";
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SOExtension_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelAuthorization:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[SOExtension cancelAuthorization:completion:]";
    v18 = 2114;
    v19 = v6;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke;
  block[3] = &unk_1E813E4F0;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v16 = 0;
  v3 = [v2 remoteContextWithError:&v16];
  v4 = v16;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_1(a1);
    }

    v7 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke_26;
    v12[3] = &unk_1E813E4C8;
    v8 = v7;
    v9 = *(a1 + 32);
    v13 = v8;
    v14 = v9;
    v15 = *(a1 + 48);
    [v3 cancelAuthorization:v8 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = [getSOErrorHelperClass_0() errorWithCode:-2];
      (*(v10 + 16))(v10, 0, v11);

      [*(a1 + 32) decrementRequestCount];
    }
  }
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke_2;
  block[3] = &unk_1E813E4A0;
  v13 = v5;
  v14 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __46__SOExtension_cancelAuthorization_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__SOExtension_cancelAuthorization_completion___block_invoke_2_cold_1(a1);
  }

  [*(a1 + 56) decrementRequestCount];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  return (*(*(a1 + 64) + 16))();
}

- (void)presentAuthorizationViewControllerWithHints:(id)a3 requestIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke;
  v14[3] = &unk_1E813E518;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findDelegateForIdentifier:*(a1 + 40)];
  v3 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke_cold_1(v2, a1);
  }

  [v2 presentAuthorizationViewControllerWithHints:*(a1 + 48) requestIdentifier:*(a1 + 40) completion:*(a1 + 56)];
}

- (void)authorization:(id)a3 didCompleteWithCredential:(id)a4 error:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SOExtension *)self findDelegateForIdentifier:v8];
  v12 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413059;
    v25 = v11;
    v26 = 2113;
    v27 = v9;
    v28 = 2114;
    v29 = v8;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ that extension has finished with credential: %{private}@, identifier: %{public}@, error: %{public}@", buf, 0x2Au);
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__SOExtension_authorization_didCompleteWithCredential_error___block_invoke;
  v19[3] = &unk_1E813E540;
  v20 = v11;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v11;
  dispatch_async(queue, v19);

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __61__SOExtension_authorization_didCompleteWithCredential_error___block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 authorization:v5 didCompleteWithCredential:v6 error:v7];
  }

  return result;
}

- (void)finishAuthorization:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[SOExtension finishAuthorization:completion:]";
    v18 = 2114;
    v19 = v6;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_finishAuthorization_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_finishAuthorization:(id)a3 withCompletion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "[SOExtension _finishAuthorization:withCompletion:]";
    v26 = 2114;
    v27 = v6;
    v28 = 2112;
    v29 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  v9 = [(SOExtension *)self _contextForSession];
  v23 = 0;
  v10 = [v9 remoteContextWithError:&v23];
  v11 = v23;
  if (v11)
  {
    v12 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    v7[2](v7, 0, v11);
  }

  else
  {
    v13 = [(SOExtension *)self sessionIDLock];
    objc_sync_enter(v13);
    if (self->_sessionID)
    {
      objc_sync_exit(v13);

      v14 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SOExtension _finishAuthorization:withCompletion:];
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke_33;
      v17[3] = &unk_1E813E590;
      v17[4] = self;
      v19 = v7;
      v18 = v6;
      [v10 finishAuthorization:v18 completion:v17];
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke;
      block[3] = &unk_1E813E4F0;
      block[4] = self;
      v22 = v7;
      v21 = v6;
      dispatch_async(queue, block);

      objc_sync_exit(v13);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __51__SOExtension__finishAuthorization_withCompletion___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__SOExtension__finishAuthorization_withCompletion___block_invoke_cold_1();
  }

  [*(a1 + 32) decrementRequestCount];
  v3 = *(a1 + 48);
  v4 = [getSOErrorHelperClass_0() errorWithCode:-1000 message:@"No extension session ID."];
  (*(v3 + 16))(v3, 0, v4);

  return [*(a1 + 32) removeDelegateForRequestIdentifier:*(a1 + 40)];
}

void __51__SOExtension__finishAuthorization_withCompletion___block_invoke_33(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2;
  block[3] = &unk_1E813E568;
  v14 = a2;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 48);
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2_cold_1(a1);
  }

  [*(a1 + 40) decrementRequestCount];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  return [*(a1 + 40) removeDelegateForRequestIdentifier:*(a1 + 48)];
}

- (void)requestReauthenticationWithRequestIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v6 = [(SOExtension *)self findDelegateForIdentifier:a3];
  if (self->_remoteViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 requestReauthenticationWithCompletion:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)presentRegistrationViewControllerWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(SOExtension *)self findDelegateForIdentifier:@"platform sso"];
  if (self->_remoteViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 presentRegistrationViewControllerWithCompletion:v6];
  }

  else
  {
    v5 = [getSOErrorHelperClass_0() errorWithCode:-1000 message:@"Presenting registration view controller not allowed."];
    v6[2](v6, 0, v5);
  }
}

- (void)_setupNonUISessionIfNecessaryWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SOExtension _setupNonUISessionIfNecessaryWithCompletion:]";
    v15 = 2112;
    v16 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  v6 = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(v6);
  sessionID = self->_sessionID;
  objc_sync_exit(v6);

  v8 = SO_LOG_SOExtension();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (sessionID)
  {
    if (v9)
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Using existing session for extension %@", buf, 0xCu);
    }

    v4[2](v4, 1, 0);
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Setting up new session for extension %@", buf, 0xCu);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__SOExtension__setupNonUISessionIfNecessaryWithCompletion___block_invoke;
    v11[3] = &unk_1E813E5B8;
    v11[4] = self;
    v12 = v4;
    [(SOExtension *)self _setupNonUISessionWithCompletion:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __59__SOExtension__setupNonUISessionIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Finished setting up new session for extension %{public}@ with error %{public}@ and session ID %{public}@", &v14, 0x20u);
  }

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    v10 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v10);
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v11 = *(a1 + 32);
    v12 = [v11 _contextForSession];
    [v12 setContextExtension:v11];

    objc_sync_exit(v10);
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSessionIfNecessaryWithCompletion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOExtension _setupSessionIfNecessaryWithCompletion:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  v6 = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(v6);
  v7 = self->_sessionID;
  objc_sync_exit(v6);

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Using existing session for extension %@", buf, 0xCu);
  }

  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    v4[2](v4, remoteViewController, 0);
  }

  else
  {
LABEL_8:
    v10 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "Setting up new session for extension %@", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__SOExtension__setupSessionIfNecessaryWithCompletion___block_invoke;
    v14[3] = &unk_1E813E5E0;
    v14[4] = self;
    v15 = v4;
    v16 = buf;
    [(SOExtension *)self _setupSessionWithCompletion:v14];
    v11 = *(*&buf[8] + 40);
    v12 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v11, v12);

    _Block_object_dispose(buf, 8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__SOExtension__setupSessionIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Finished setting up new session for extension %{public}@ with error %{public}@ and session ID %{public}@", &v15, 0x20u);
  }

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    v10 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v10);
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v11 = *(a1 + 32);
    v12 = [v11 _contextForSession];
    [v12 setContextExtension:v11];

    objc_sync_exit(v10);
    v13 = *(*(a1 + 32) + 32);
    (*(*(a1 + 40) + 16))();
  }

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_finishedSettingUpSession:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SOExtension _finishedSettingUpSession:]";
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  v7 = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(v7);
  objc_storeStrong(&self->_sessionID, a3);
  v8 = [(SOExtension *)self _contextForSession];
  [v8 setContextExtension:self];

  objc_sync_exit(v7);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setupNonUISessionWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SOExtension *)self extension];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "Beginning request for extension %@", buf, 0xCu);
  }

  v7 = [(SOExtension *)self extension];
  v17 = 0;
  v8 = [v7 beginExtensionRequestWithInputItems:0 error:&v17];
  v9 = v17;

  if (v9)
  {
    v10 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SOExtension _setupNonUISessionWithCompletion:?];
    }

    v4[2](v4, 0, v9);
    v11 = [v9 domain];
    if (![v11 isEqualToString:*MEMORY[0x1E69C4AD8]])
    {
      goto LABEL_11;
    }

    v12 = [v9 code];

    if (v12 == 16)
    {
      v13 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C1317000, v13, OS_LOG_TYPE_DEFAULT, "Handling other version error", buf, 2u);
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v18 = @"bundleIdentifier";
      v14 = [(SOExtension *)self extensionBundleIdentifier];
      v19 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [v11 postNotificationName:@"com.apple.AppSSO.SOExtension.OtherVersionError" object:self userInfo:v15];

LABEL_11:
    }
  }

  else if (v4)
  {
    (v4)[2](v4, v8, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_setupSessionHelperForIOSWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SOExtension *)self extension];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "Instantiating view controller %@", buf, 0xCu);
  }

  v7 = [(SOExtension *)self extension];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke;
  v10[3] = &unk_1E813E608;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] listenerEndpoint:0 connectionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 32), a3);
    [*(*(a1 + 32) + 32) setDelegate:?];
    [*(a1 + 32) _connectContextToSessionWithRequestIdentifier:v7 completion:*(a1 + 40)];
  }
}

- (void)_connectContextToSessionWithRequestIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Passing session ID to remote view", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  remoteViewController = self->_remoteViewController;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke;
  v16[3] = &unk_1E813E630;
  v10 = v6;
  v17 = v10;
  v18 = buf;
  v11 = [(_UIRemoteViewController *)remoteViewController serviceViewControllerProxyWithErrorHandler:v16];
  if (v11)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_49;
    v13[3] = &unk_1E813E658;
    v15 = v7;
    v14 = v10;
    [v11 connectToContextWithSessionID:v14 completion:v13];
  }

  else
  {
    v12 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SOExtension _connectContextToSessionWithRequestIdentifier:completion:];
    }

    (*(v7 + 2))(v7, 0, *(v20 + 5));
  }

  _Block_object_dispose(buf, 8);
}

void __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SOExtension *)self _contextForSession];
  v15 = 0;
  v9 = [v8 remoteContextWithError:&v15];
  v10 = v15;
  v11 = SO_LOG_SOExtension();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOExtension _beginAuthorizationWithRequestParameters:completion:];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke;
    v13[3] = &unk_1E813E6A8;
    v14 = v7;
    [v9 beginAuthorizationWithRequestParameters:v6 completion:v13];
  }
}

void __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2;
  block[3] = &unk_1E813E680;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)_beginAuthorizationWithServiceXPCEndpoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SOExtension *)self _contextForSession];
  v15 = 0;
  v9 = [v8 remoteContextWithError:&v15];
  v10 = v15;
  v11 = SO_LOG_SOExtension();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    v7[2](v7, 0, v10);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOExtension _beginAuthorizationWithServiceXPCEndpoint:completion:];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke;
    v13[3] = &unk_1E813E6A8;
    v14 = v7;
    [v9 beginAuthorizationWithServiceXPCEndpoint:v6 completion:v13];
  }
}

void __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2;
  block[3] = &unk_1E813E680;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (id)_contextForSession
{
  v3 = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(v3);
  v4 = [(SOExtension *)self extension];
  v5 = [v4 _extensionContextForUUID:self->_sessionID];

  objc_sync_exit(v3);

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForSession
{
  v7 = [(SOExtension *)self _contextForSession];
  v4 = [v7 _auxiliaryConnection];
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (void)unload
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SOExtension unload]";
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  v4 = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(v4);
  if (self->_sessionID)
  {
    v5 = [(SOExtension *)self extension];
    [v5 cancelExtensionRequestWithIdentifier:self->_sessionID];

    sessionID = self->_sessionID;
    self->_sessionID = 0;

    remoteViewController = self->_remoteViewController;
    self->_remoteViewController = 0;
  }

  objc_sync_exit(v4);

  v8 = *MEMORY[0x1E69E9840];
}

- (NSString)containerAppPath
{
  v2 = [(SOExtension *)self extension];
  v3 = [v2 _plugIn];
  v4 = [v3 containingUrl];
  v5 = [v4 path];

  return v5;
}

- (NSString)localizedExtensionDisplayName
{
  v2 = [(NSExtension *)self->_extension objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
  v3 = [v2 copy];

  return v3;
}

- (NSString)containerAppBundleIdentifier
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = [(SOExtension *)self containerAppPath];
  v4 = [v2 bundleWithPath:v3];
  v5 = [v4 bundleIdentifier];

  return v5;
}

- (NSString)extensionBundleIdentifier
{
  v2 = [(SOExtension *)self extension];
  v3 = [v2 identifier];

  return v3;
}

- (int64_t)extensionRequestsMode
{
  v14 = *MEMORY[0x1E69E9840];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (!_os_feature_enabled_impl() || ([(SOExtension *)self extensionBundleIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:v5], v5, !v6))
    {
      v7 = [(NSExtension *)self->_extension infoDictionary];
      v8 = [v7 objectForKeyedSubscript:@"NSExtension"];
      v3 = [v8 objectForKeyedSubscript:@"SOExtensionRequestsMode"];

      if (v3)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        if (([v3 isEqualToString:@"Concurrent"]& 1) != 0)
        {
          goto LABEL_9;
        }

        if (([v3 isEqualToString:@"Queue"]& 1) == 0)
        {
LABEL_11:
          v9 = SO_LOG_SOExtension();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v12 = 138543362;
            v13 = v3;
            _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "invalid SOExtensionRequestsMode: %{public}@, using default", &v12, 0xCu);
          }
        }
      }

      v4 = 1;
      goto LABEL_15;
    }
  }

  v3 = SO_LOG_SOExtension();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    v4 = 2;
    goto LABEL_15;
  }

  LOWORD(v12) = 0;
  v4 = 2;
  _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "SOExtensionRequestsModeConcurrent enabled by the feature flag", &v12, 2u);
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (NSArray)authenticationMethods
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(NSExtension *)self->_extension infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"NSExtension"];
  v4 = [v3 objectForKeyedSubscript:@"SOExtensionSSOGrantTypes"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 isEqualToString:@"password"])
          {
            [v5 addObject:&unk_1F408FB20];
          }

          if ([v11 isEqualToString:@"urn:ietf:params:oauth:grant-type:jwt-bearer"])
          {
            [v5 addObject:&unk_1F408FB38];
            [v5 addObject:&unk_1F408FB50];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v4 = v14;
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)removeExpiredEntriesFromCache:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = MEMORY[0x1E695DF00];
          [v11 doubleValue];
          v13 = [v12 dateWithTimeIntervalSince1970:?];
          [v13 timeIntervalSinceNow];
          v15 = v14;
          [&unk_1F408FB08 doubleValue];
          if (v15 < v16 || ([v13 timeIntervalSinceNow], v17 > 0.0))
          {
            [v3 removeObjectForKey:v10];
          }
        }

        else
        {
          [v3 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v54 = a3;
  if (![(SOExtension *)self hasAssociatedDomainsApproved])
  {
    v4 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[SOExtension checkAssociatedDomainsWithCache:]";
      v62 = 2112;
      v63 = self;
      _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
    }

    [(SOExtension *)self removeExpiredEntriesFromCache:v54];
    v5 = [(SOExtension *)self associatedDomainLock];
    objc_sync_enter(v5);
    associatedDomains = self->_associatedDomains;
    self->_associatedDomains = MEMORY[0x1E695E0F0];

    objc_sync_exit(v5);
    v7 = [(SOExtension *)self extension];
    v8 = [v7 _extensionBundle];
    v9 = [v8 bundleURL];

    if (!v9)
    {
      v11 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:?];
      }

      goto LABEL_50;
    }

    v10 = [MEMORY[0x1E6963678] pluginKitProxyForURL:v9];
    v11 = v10;
    if (!v10)
    {
      v12 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      goto LABEL_49;
    }

    v12 = [v10 containingBundle];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      goto LABEL_48;
    }

    v13 = [v12 entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
    if (!v13)
    {
      v15 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:v12];
      }

      goto LABEL_47;
    }

    v14 = objc_alloc(MEMORY[0x1E69CDB30]);
    v15 = [v14 initWithServiceType:*MEMORY[0x1E69CDB40] applicationIdentifier:v13 domain:0];
    v59 = 0;
    v16 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v15 error:&v59];
    v53 = v59;
    if (v16)
    {
      location = &self->_associatedDomains;
      v47 = v15;
      v48 = v13;
      v49 = self;
      v50 = v12;
      v51 = v11;
      v52 = v9;
      v17 = [MEMORY[0x1E695DF70] array];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v45 = v16;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v56;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v56 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v55 + 1) + 8 * i);
            v24 = [v23 serviceSpecifier];
            v25 = [v24 domainHost];

            v26 = [v23 serviceSpecifier];
            v27 = [v26 domainPort];

            if (v27)
            {
              v28 = [v23 serviceSpecifier];
              v29 = [v28 domainPort];
              v30 = [v25 stringByAppendingFormat:@":%@", v29];

              v25 = v30;
            }

            if ([v23 isUpdating])
            {
              v31 = SO_LOG_SOExtension();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v61 = v25;
                _os_log_impl(&dword_1C1317000, v31, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is waiting for an update", buf, 0xCu);
              }
            }

            if ([v23 isApproved])
            {
              v32 = SO_LOG_SOExtension();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v61 = v25;
                _os_log_impl(&dword_1C1317000, v32, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is approved", buf, 0xCu);
              }

              [v17 addObject:v25];
              v33 = MEMORY[0x1E696AD98];
              v34 = [MEMORY[0x1E695DF00] date];
              [v34 timeIntervalSince1970];
              v35 = [v33 numberWithDouble:?];
              [v54 setObject:v35 forKeyedSubscript:v25];
            }

            else
            {
              v36 = [v54 objectForKeyedSubscript:v25];

              v37 = SO_LOG_SOExtension();
              v38 = v37;
              if (v36)
              {
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v61 = v25;
                  _os_log_impl(&dword_1C1317000, v38, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is cached", buf, 0xCu);
                }

                [v17 addObject:v25];
              }

              else
              {
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v61 = v25;
                  _os_log_error_impl(&dword_1C1317000, v38, OS_LOG_TYPE_ERROR, "Associated domain: %{public}@ is not approved", buf, 0xCu);
                }
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v20);
      }

      v39 = [(SOExtension *)v49 associatedDomainLock];
      objc_sync_enter(v39);
      objc_storeStrong(location, v17);
      objc_sync_exit(v39);

      v40 = SO_LOG_SOExtension();
      v11 = v51;
      v13 = v48;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v51 containingBundle];
        v42 = [v41 bundleURL];
        *buf = 138413058;
        v61 = v42;
        v62 = 2112;
        v63 = v17;
        v64 = 2112;
        v65 = v48;
        v66 = 2112;
        v67 = v18;
        _os_log_impl(&dword_1C1317000, v40, OS_LOG_TYPE_INFO, "Associated domain: for app %@: %@, appID: %@, services: %@", buf, 0x2Au);
      }

      v9 = v52;
      v12 = v50;
      v15 = v47;
      v16 = v45;
    }

    else
    {
      v17 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v43 = v53;
        [SOExtension checkAssociatedDomainsWithCache:];
        goto LABEL_46;
      }
    }

    v43 = v53;
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_49:
LABEL_50:
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCompletion:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SOExtension *)self extension];
  v6 = [v5 _extensionBundle];
  v7 = [v6 bundleURL];

  if (v7)
  {
    v8 = [MEMORY[0x1E6963678] pluginKitProxyForURL:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 containingBundle];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
        if (v11)
        {
          if (getuid() == 248)
          {
            v12 = SO_LOG_SOExtension();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_INFO, "Associated domain: Notify swcd", buf, 2u);
            }

            v13 = [MEMORY[0x1E696ABB0] defaultCenter];
            [v13 postNotificationName:@"CP_SharedWebCredentialsDidChangeNotification" object:0 userInfo:0 options:1];
          }

          v35 = v9;
          v36 = v4;
          v14 = objc_alloc(MEMORY[0x1E69CDB30]);
          v34 = v11;
          v15 = [v14 initWithServiceType:*MEMORY[0x1E69CDB40] applicationIdentifier:v11 domain:0];
          v16 = 0;
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = SO_LOG_SOExtension();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [MEMORY[0x1E696AD98] numberWithInt:v16];
              *buf = 138543362;
              v41 = v20;
              _os_log_impl(&dword_1C1317000, v19, OS_LOG_TYPE_INFO, "Associated domain: attempt %{public}@", buf, 0xCu);
            }

            v39 = v18;
            v21 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v15 error:&v39];
            v22 = v39;

            if (![v21 count])
            {
              [MEMORY[0x1E696AF00] sleepForTimeInterval:2.0];
            }

            if ([v21 count])
            {
              break;
            }

            v17 = v21;
            v18 = v22;
            v23 = v16 >= 9;
            v16 = (v16 + 1);
          }

          while (!v23);
          v24 = [v21 count];
          v25 = SO_LOG_SOExtension();
          v26 = v25;
          if (v24)
          {
            v4 = v36;
            v11 = v34;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              [SOExtension checkAssociatedDomainsWithCompletion:];
            }

            v27 = [v21 firstObject];
            if ([v27 isApproved])
            {
              v28 = SO_LOG_SOExtension();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                [SOExtension checkAssociatedDomainsWithCompletion:];
              }

              v36[2](v36, 1, 0);
            }

            else
            {
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke;
              v37[3] = &unk_1E813E6D0;
              v38 = v36;
              [v27 waitForSiteApprovalWithCompletionHandler:v37];
            }
          }

          else
          {
            v4 = v36;
            v11 = v34;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [SOExtension checkAssociatedDomainsWithCache:];
            }

            (v36)[2](v36, 0, v22);
          }

          v9 = v35;
        }

        else
        {
          v32 = SO_LOG_SOExtension();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [SOExtension checkAssociatedDomainsWithCache:v10];
          }

          v15 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find extension appID"];
          (*(v4 + 2))(v4, 0, v15);
        }
      }

      else
      {
        v31 = SO_LOG_SOExtension();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SOExtension checkAssociatedDomainsWithCache:];
        }

        v11 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find app proxy"];
        (*(v4 + 2))(v4, 0, v11);
      }
    }

    else
    {
      v30 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      v10 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find bundle proxy"];
      (*(v4 + 2))(v4, 0, v10);
    }
  }

  else
  {
    v29 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [SOExtension checkAssociatedDomainsWithCache:?];
    }

    v9 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find bundle URL"];
    (*(v4 + 2))(v4, 0, v9);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke_cold_1();
  }

  if ([v5 isApproved])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    SOErrorHelperClass_0 = getSOErrorHelperClass_0();
    if (v6)
    {
      [SOErrorHelperClass_0 errorWithCode:-15 message:@"Associated domain check failed" suberror:v6];
    }

    else
    {
      [SOErrorHelperClass_0 errorWithCode:-15 message:@"Associated domain check failed"];
    }
    v10 = ;
    (*(v8 + 16))(v8, 0, v10);
  }
}

- (BOOL)hasURLApprovedAssociatedDomain:(id)a3 cache:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v26 = "[SOExtension hasURLApprovedAssociatedDomain:cache:]";
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2117;
    v30 = v6;
    v31 = 2112;
    v32 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s url: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  v9 = [v6 host];
  v10 = [v6 port];

  if (v10)
  {
    v11 = [v6 port];
    v12 = [v9 stringByAppendingFormat:@":%@", v11];

    v9 = v12;
  }

  v13 = [(SOExtension *)self associatedDomains];
  v14 = [v13 containsObject:v9];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [v7 objectForKeyedSubscript:v9];
    v17 = v16;
    if (v16)
    {
      v18 = MEMORY[0x1E695DF00];
      [v16 doubleValue];
      v19 = [v18 dateWithTimeIntervalSince1970:?];
      [v19 timeIntervalSinceNow];
      v21 = v20;
      [&unk_1F408FB08 doubleValue];
      v15 = v21 > v22;
    }

    else
    {
      v15 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)hasAssociatedDomainsApproved
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(SOExtension *)self associatedDomainLock];
  objc_sync_enter(v3);
  v4 = [(NSArray *)self->_associatedDomains count];
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(SOExtension *)self extensionBundleIdentifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 1024;
    v12 = v4 != 0;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_INFO, "%{public}@ hasAssociatedDomainsApproved = %d", &v9, 0x12u);
  }

  objc_sync_exit(v3);
  v7 = *MEMORY[0x1E69E9840];
  return v4 != 0;
}

- (BOOL)isEqualToExtension:(id)a3
{
  v4 = a3;
  v5 = [(SOExtension *)self extensionBundleIdentifier];
  v6 = [v4 extensionBundleIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SOExtension *)self isEqualToExtension:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SOExtension *)self extensionBundleIdentifier];
  v6 = [(NSExtension *)self->_extension _extensionBundle];
  v7 = [v6 bundleURL];
  v8 = [v7 path];
  v9 = [v3 stringWithFormat:@"<%@:%p, bundleID=%@, path=%@, associatedDomains=%@>", v4, self, v5, v8, self->_associatedDomains];

  return v9;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SOExtension viewServiceDidTerminateWithError:]";
    v22 = 2112;
    v23 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (v4)
  {
    v6 = [(SOExtension *)self extensionDelegatesLock];
    objc_sync_enter(v6);
    v7 = NSAllMapTableKeys(self->_extensionDelegates);
    objc_sync_exit(v6);

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = [getSOErrorHelperClass_0() errorWithCode:-3 message:{@"connection to extension interrupted", v15}];
          [(SOExtension *)self authorization:v12 didCompleteWithCredential:0 error:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)beginDeviceRegistrationUsingOptions:(int64_t)a3 extensionData:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SOExtension beginDeviceRegistrationUsingOptions:extensionData:completion:]";
    v21 = 2112;
    v22 = self;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke;
  v15[3] = &unk_1E813E748;
  v17 = v9;
  v18 = a3;
  v15[4] = self;
  v16 = v8;
  v12 = v8;
  v13 = v9;
  dispatch_async(pssoQueue, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_120;
    v9[3] = &unk_1E813E720;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v8 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v3 beginDeviceRegistrationUsingOptions:v8 extensionData:v7 completion:v9];
  }
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_120(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2;
  block[3] = &unk_1E813E6F8;
  v7 = a2;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, block);
}

uint64_t __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)beginUserRegistrationUsingUserName:(id)a3 authenticationMethod:(int)a4 options:(int64_t)a5 extensionData:(id)a6 completion:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[SOExtension beginUserRegistrationUsingUserName:authenticationMethod:options:extensionData:completion:]";
    v29 = 2112;
    v30 = self;
    _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke;
  v21[3] = &unk_1E813E770;
  v21[4] = self;
  v22 = v12;
  v26 = a4;
  v24 = v14;
  v25 = a5;
  v23 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v14;
  dispatch_async(pssoQueue, v21);

  v20 = *MEMORY[0x1E69E9840];
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v13 = 0;
  v3 = [v2 remoteContextWithError:&v13];
  v4 = v13;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 72);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_122;
    v11[3] = &unk_1E813E720;
    v11[4] = *(a1 + 32);
    v10 = *(a1 + 64);
    v12 = *(a1 + 56);
    [v3 beginUserRegistrationUsingUserName:v8 authenticationMethod:v7 options:v10 extensionData:v9 completion:v11];
  }
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_122(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2;
  block[3] = &unk_1E813E6F8;
  v7 = a2;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, block);
}

uint64_t __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)registrationDidCompleteWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension registrationDidCompleteWithCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(pssoQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123;
    v8[3] = &unk_1E813E658;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 registrationDidCompleteWithCompletion:v8];
  }
}

uint64_t __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)registrationDidCancelWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension registrationDidCancelWithCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__SOExtension_registrationDidCancelWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __51__SOExtension_registrationDidCancelWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124;
    v8[3] = &unk_1E813E658;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 registrationDidCancelWithCompletion:v8];
  }
}

uint64_t __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)supportedGrantTypesCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension supportedGrantTypesCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SOExtension_supportedGrantTypesCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __45__SOExtension_supportedGrantTypesCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __45__SOExtension_supportedGrantTypesCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125;
    v8[3] = &unk_1E813E798;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedGrantTypesCompletion:v8];
  }
}

void __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125_cold_1();
  }
}

- (void)protocolVersionCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension protocolVersionCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__SOExtension_protocolVersionCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __41__SOExtension_protocolVersionCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __41__SOExtension_protocolVersionCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__SOExtension_protocolVersionCompletion___block_invoke_126;
    v8[3] = &unk_1E813E798;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 protocolVersionCompletion:v8];
  }
}

void __41__SOExtension_protocolVersionCompletion___block_invoke_126(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __41__SOExtension_protocolVersionCompletion___block_invoke_126_cold_1();
  }
}

- (void)canPerformRegistrationCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension canPerformRegistrationCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SOExtension_canPerformRegistrationCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __48__SOExtension_canPerformRegistrationCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __48__SOExtension_canPerformRegistrationCompletion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__SOExtension_canPerformRegistrationCompletion___block_invoke_127;
    v9[3] = &unk_1E813E7C0;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    [v3 canPerformRegistrationCompletion:v9];
    v8 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __48__SOExtension_canPerformRegistrationCompletion___block_invoke_cold_3();
    }
  }
}

uint64_t __48__SOExtension_canPerformRegistrationCompletion___block_invoke_127(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 decrementRequestCount];
}

- (void)supportedDeviceSigningAlgorithmsCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension supportedDeviceSigningAlgorithmsCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedDeviceSigningAlgorithmsCompletion:v8];
  }
}

void __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129_cold_1();
  }
}

- (void)supportedDeviceEncryptionAlgorithmsCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension supportedDeviceEncryptionAlgorithmsCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedDeviceEncryptionAlgorithmsCompletion:v8];
  }
}

void __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131_cold_1();
  }
}

- (void)supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:v8];
  }
}

void __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132_cold_1();
  }
}

- (void)keyWillRotateForKeyType:(int64_t)a3 keyProxyEndpoint:(id)a4 extensionData:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke;
  block[3] = &unk_1E813E810;
  v20 = v12;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  dispatch_async(v13, block);
}

void __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v13 = 0;
  v3 = [v2 remoteContextWithError:&v13];
  v4 = v13;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133;
    v11[3] = &unk_1E813E798;
    v9 = *(a1 + 64);
    v10 = *(a1 + 56);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v3 keyWillRotateForKeyType:v9 keyProxyEndpoint:v7 extensionData:v8 completion:v11];
  }
}

void __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133_cold_1();
  }
}

- (void)displayNamesForGroups:(id)a3 extensionData:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SOExtension displayNamesForGroups:extensionData:completion:]";
    v23 = 2112;
    v24 = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v12 = dispatch_get_global_queue(0, 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke;
  v17[3] = &unk_1E813E860;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(v12, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v12 = 0;
  v3 = [v2 remoteContextWithError:&v12];
  v4 = v12;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134;
    v10[3] = &unk_1E813E838;
    v9 = *(a1 + 56);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v3 displayNamesForGroups:v7 extensionData:v8 completion:v10];
  }
}

void __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134_cold_1();
  }
}

- (void)profilePictureForUserUsingExtensionData:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOExtension profilePictureForUserUsingExtensionData:completion:]";
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke;
  block[3] = &unk_1E813E4F0;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(v9, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136;
    v9[3] = &unk_1E813E888;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v3 profilePictureForUserUsingExtensionData:v7 completion:v9];
  }
}

void __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136_cold_1();
  }
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Failed to get remote context with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10(&dword_1C1317000, v3, v4, "Notifying delegate %{public}@ that extension wants to show UI, hints = %{private}@");
  v5 = *MEMORY[0x1E69E9840];
}

void __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setupNonUISessionWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 extension];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Failed to instantiate view controller because of %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_connectContextToSessionWithRequestIdentifier:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Session with ID %{public}@ was unable to get remote view service", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v1, v2, "Session with ID %{public}@ was unable to communicate with the remote service because of %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

void __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Associated domain: failed to get app proxy for extension: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "Associated domain: failed to get service details for the appID: %{public}@ with error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 bundleURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Associated domain: failed to get extension bundle proxy at path: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:(void *)a1 .cold.5(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 extension];
  v2 = [v1 _extensionBundle];
  v3 = [v2 bundleURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCompletion:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(&dword_1C1317000, v0, v1, "Associated domains response: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_1C1317000, v2, v3, "Finished beginDeviceRegistrationUsingLoginManager, result = %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_1C1317000, v2, v3, "Finished beginUserRegistrationUsingLoginManager, result = %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end